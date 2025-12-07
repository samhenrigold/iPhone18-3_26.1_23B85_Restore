void __swift_store_extra_inhabitant_index_23Tm_0()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1B964C2B0();
    v5 = OUTLINED_FUNCTION_61_0(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

void sub_1B9060FB0(uint64_t a1)
{
  sub_1B9060DA4(319, &qword_1EBAC3288, type metadata accessor for Apple_Parsec_Multimodal_V1_RegionInfo, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B906108C(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B9060DA4(319, &qword_1EBAC32A0, type metadata accessor for Apple_Parsec_Multimodal_V1_VisualQuery, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t Apple_Parsec_Rendering_V2_RenderStyle.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 9;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B9061220@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Rendering_V2_RenderStyle.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9061254(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90626D8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Apple_Parsec_Rendering_V2_RenderStyle.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBAC32D8 = a1;
}

uint64_t sub_1B906139C@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Rendering_V2_RenderStyle.allCases.getter();
  *a1 = result;
  return result;
}

void Apple_Parsec_Rendering_V2_Rendering.style.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Apple_Parsec_Rendering_V2_Rendering.style.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Apple_Parsec_Rendering_V2_Rendering.cardData.getter()
{
  v0 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v0, v1);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Rendering_V2_Rendering.cardData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B8D538A0(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Apple_Parsec_Rendering_V2_Rendering.feedback.getter()
{
  v0 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v0, v1);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Rendering_V2_Rendering.feedback.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B8D538A0(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t Apple_Parsec_Rendering_V2_Rendering.cardDataDebug.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_11_24();
  sub_1B8E203A8(v1 + *(v6 + 32), v2);
  v7 = sub_1B964C1C0();
  OUTLINED_FUNCTION_178(v2, 1, v7);
  if (!v8)
  {
    return (*(*(v7 - 8) + 32))(a1, v2, v7);
  }

  sub_1B964C1B0();
  result = OUTLINED_FUNCTION_178(v2, 1, v7);
  if (!v8)
  {
    return sub_1B8D9207C(v2, &qword_1EBAB8F20, &qword_1B964D720);
  }

  return result;
}

uint64_t type metadata accessor for Apple_Parsec_Rendering_V2_Rendering(uint64_t a1)
{
  result = qword_1EBAC3360;
  if (!qword_1EBAC3360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B9061664(uint64_t a1)
{
  v2 = sub_1B964C1C0();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return Apple_Parsec_Rendering_V2_Rendering.cardDataDebug.setter(v4);
}

uint64_t Apple_Parsec_Rendering_V2_Rendering.cardDataDebug.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Parsec_Rendering_V2_Rendering(0) + 32);
  sub_1B8D9207C(v1 + v3, &qword_1EBAB8F20, &qword_1B964D720);
  v4 = sub_1B964C1C0();
  OUTLINED_FUNCTION_59_1();
  (*(v5 + 32))(v1 + v3, a1, v4);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Apple_Parsec_Rendering_V2_Rendering.cardDataDebug.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = sub_1B964C1C0();
  v3[2] = v7;
  OUTLINED_FUNCTION_30_1();
  v9 = v8;
  v3[3] = v8;
  v11 = *(v10 + 64);
  v3[4] = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  v3[5] = v12;
  v13 = *(type metadata accessor for Apple_Parsec_Rendering_V2_Rendering(0) + 32);
  *(v3 + 12) = v13;
  sub_1B8E203A8(v1 + v13, v6);
  OUTLINED_FUNCTION_178(v6, 1, v7);
  if (v14)
  {
    sub_1B964C1B0();
    OUTLINED_FUNCTION_178(v6, 1, v7);
    if (!v14)
    {
      sub_1B8D9207C(v6, &qword_1EBAB8F20, &qword_1B964D720);
    }
  }

  else
  {
    (*(v9 + 32))(v12, v6, v7);
  }

  return sub_1B8E20AB0;
}

uint64_t Apple_Parsec_Rendering_V2_Rendering.hasCardDataDebug.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_11_24();
  sub_1B8E203A8(v0 + *(v4 + 32), v1);
  v5 = sub_1B964C1C0();
  OUTLINED_FUNCTION_178(v1, 1, v5);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  sub_1B8D9207C(v1, &qword_1EBAB8F20, &qword_1B964D720);
  return v7;
}

Swift::Void __swiftcall Apple_Parsec_Rendering_V2_Rendering.clearCardDataDebug()()
{
  v1 = *(type metadata accessor for Apple_Parsec_Rendering_V2_Rendering(0) + 32);
  sub_1B8D9207C(v0 + v1, &qword_1EBAB8F20, &qword_1B964D720);
  v2 = sub_1B964C1C0();

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Parsec_Rendering_V2_Rendering.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Rendering_V2_Rendering(0) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Apple_Parsec_Rendering_V2_Rendering.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Parsec_Rendering_V2_Rendering(0) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, a1);
}

uint64_t Apple_Parsec_Rendering_V2_Rendering.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = xmmword_1B9652FE0;
  *(a1 + 32) = xmmword_1B9652FE0;
  v2 = type metadata accessor for Apple_Parsec_Rendering_V2_Rendering(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v3 = *(v2 + 32);
  v4 = sub_1B964C1C0();

  return __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v4);
}

uint64_t sub_1B9061C24()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC32E0);
  __swift_project_value_buffer(v0, qword_1EBAC32E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1B964EE80;
  v4 = v24 + v3 + v1[14];
  *(v24 + v3) = 0;
  *v4 = "UNSPECIFIED";
  *(v4 + 8) = 11;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v24 + v3 + v2 + v1[14];
  *(v24 + v3 + v2) = 1;
  *v8 = "ROW";
  *(v8 + 8) = 3;
  *(v8 + 16) = 2;
  v7();
  v9 = (v24 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "DESCRIPTIVE";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v7();
  v11 = (v24 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "FULLDETAIL";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v7();
  v13 = (v24 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "COMPACT";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v7();
  v15 = (v24 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "DATA";
  *(v16 + 1) = 4;
  v16[16] = 2;
  v7();
  v17 = (v24 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "COMPACT_TOPHIT";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v7();
  v19 = (v24 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "ZKW_ROW";
  *(v20 + 1) = 7;
  v20[16] = 2;
  v7();
  v21 = (v24 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "TOPHIT";
  *(v22 + 1) = 6;
  v22[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B9061FC8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC32F8);
  __swift_project_value_buffer(v0, qword_1EBAC32F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "style";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "cardData";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "feedback";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "cardDataDebug";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Rendering_V2_Rendering.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v6 = OUTLINED_FUNCTION_9();
        sub_1B90622DC(v6, v7, v8, v9);
        break;
      case 2:
      case 3:
        sub_1B964C470();
        break;
      case 4:
        v10 = OUTLINED_FUNCTION_9();
        sub_1B9062344(v10, v11, v12, v13);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9062344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Rendering_V2_Rendering(0);
  sub_1B964C1C0();
  sub_1B90630BC(&qword_1ED9CF6F8, MEMORY[0x1E69AAB10], MEMORY[0x1E69AAB08]);
  return sub_1B964C580();
}

uint64_t Apple_Parsec_Rendering_V2_Rendering.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  v12 = sub_1B964C1C0();
  OUTLINED_FUNCTION_30_1();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*v6 || (v18 = *(v6 + 8), v34 = *v6, v35 = v18, sub_1B90626D8(), result = sub_1B964C680(), !v4))
  {
    v33 = v14;
    v36 = a1;
    v20 = OUTLINED_FUNCTION_113_0();
    if (sub_1B8D99EA8(v20, v21) || (v22 = OUTLINED_FUNCTION_113_0(), result = OUTLINED_FUNCTION_10_19(v22, v23, 2), (v5 = v4) == 0))
    {
      v24 = OUTLINED_FUNCTION_113_0();
      if (sub_1B8D99EA8(v24, v25) || (v26 = OUTLINED_FUNCTION_113_0(), result = OUTLINED_FUNCTION_10_19(v26, v27, 3), (v5 = v4) == 0))
      {
        v28 = type metadata accessor for Apple_Parsec_Rendering_V2_Rendering(0);
        sub_1B8E203A8(v6 + *(v28 + 32), v11);
        if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
        {
          sub_1B8D9207C(v11, &qword_1EBAB8F20, &qword_1B964D720);
        }

        else
        {
          v32 = v28;
          v29 = v33;
          (*(v33 + 32))(v17, v11, v12);
          OUTLINED_FUNCTION_1_42();
          sub_1B90630BC(v30, v31, MEMORY[0x1E69AAB08]);
          sub_1B964C740();
          if (v5)
          {
            return (*(v29 + 8))(v17, v12);
          }

          (*(v29 + 8))(v17, v12);
        }

        return sub_1B964C290();
      }
    }
  }

  return result;
}

unint64_t sub_1B90626D8()
{
  result = qword_1EBAC3310;
  if (!qword_1EBAC3310)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Rendering_V2_RenderStyle, &type metadata for Apple_Parsec_Rendering_V2_RenderStyle, v0, v1);
    atomic_store(result, &qword_1EBAC3310);
  }

  return result;
}

uint64_t static Apple_Parsec_Rendering_V2_Rendering.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1B964C1C0();
  OUTLINED_FUNCTION_30_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_183(v10);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F28, &unk_1B9683B20);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - v16;
  v18 = *a1;
  v19 = *a2;
  if (*(a2 + 8) == 1)
  {
    switch(v19)
    {
      case 1:
        if (v18 != 1)
        {
          goto LABEL_35;
        }

        goto LABEL_6;
      case 2:
        if (v18 != 2)
        {
          goto LABEL_35;
        }

        goto LABEL_6;
      case 3:
        if (v18 != 3)
        {
          goto LABEL_35;
        }

        goto LABEL_6;
      case 4:
        if (v18 != 4)
        {
          goto LABEL_35;
        }

        goto LABEL_6;
      case 5:
        if (v18 != 5)
        {
          goto LABEL_35;
        }

        goto LABEL_6;
      case 6:
        if (v18 != 6)
        {
          goto LABEL_35;
        }

        goto LABEL_6;
      case 7:
        if (v18 != 7)
        {
          goto LABEL_35;
        }

        goto LABEL_6;
      case 8:
        if (v18 != 8)
        {
          goto LABEL_35;
        }

        goto LABEL_6;
      default:
        if (!v18)
        {
          goto LABEL_6;
        }

        goto LABEL_35;
    }
  }

  if (v18 != v19)
  {
    goto LABEL_35;
  }

LABEL_6:
  if ((MEMORY[0x1BFADC060](a1[2], a1[3], a2[2], a2[3]) & 1) == 0 || (MEMORY[0x1BFADC060](a1[4], a1[5], a2[4], a2[5]) & 1) == 0)
  {
LABEL_35:
    v27 = 0;
    return v27 & 1;
  }

  v20 = *(type metadata accessor for Apple_Parsec_Rendering_V2_Rendering(0) + 32);
  v21 = *(v14 + 48);
  sub_1B8E203A8(a1 + v20, v17);
  sub_1B8E203A8(a2 + v20, &v17[v21]);
  OUTLINED_FUNCTION_178(v17, 1, v4);
  if (!v22)
  {
    sub_1B8E203A8(v17, v13);
    OUTLINED_FUNCTION_178(&v17[v21], 1, v4);
    if (!v22)
    {
      (*(v6 + 32))(v9, &v17[v21], v4);
      OUTLINED_FUNCTION_1_42();
      sub_1B90630BC(v23, v24, MEMORY[0x1E69AAB20]);
      v25 = sub_1B964C850();
      v26 = *(v6 + 8);
      v26(v9, v4);
      v26(v13, v4);
      sub_1B8D9207C(v17, &qword_1EBAB8F20, &qword_1B964D720);
      if (v25)
      {
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    (*(v6 + 8))(v13, v4);
LABEL_16:
    sub_1B8D9207C(v17, &qword_1EBAB8F28, &unk_1B9683B20);
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_178(&v17[v21], 1, v4);
  if (!v22)
  {
    goto LABEL_16;
  }

  sub_1B8D9207C(v17, &qword_1EBAB8F20, &qword_1B964D720);
LABEL_34:
  sub_1B964C2B0();
  sub_1B90630BC(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v27 = sub_1B964C850();
  return v27 & 1;
}

uint64_t Apple_Parsec_Rendering_V2_Rendering.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Apple_Parsec_Rendering_V2_Rendering(0);
  sub_1B90630BC(&qword_1EBAC3318, type metadata accessor for Apple_Parsec_Rendering_V2_Rendering, protocol conformance descriptor for Apple_Parsec_Rendering_V2_Rendering);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9062BE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90630BC(&qword_1EBAC3370, type metadata accessor for Apple_Parsec_Rendering_V2_Rendering, protocol conformance descriptor for Apple_Parsec_Rendering_V2_Rendering);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9062C60(uint64_t a1)
{
  v2 = sub_1B90630BC(&qword_1EBAC3350, type metadata accessor for Apple_Parsec_Rendering_V2_Rendering, protocol conformance descriptor for Apple_Parsec_Rendering_V2_Rendering);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9062CD0(uint64_t a1, uint64_t a2)
{
  sub_1B90630BC(&qword_1EBAC3350, type metadata accessor for Apple_Parsec_Rendering_V2_Rendering, protocol conformance descriptor for Apple_Parsec_Rendering_V2_Rendering);

  return sub_1B964C5D0();
}

unint64_t sub_1B9062D50()
{
  result = qword_1EBAC3320;
  if (!qword_1EBAC3320)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Rendering_V2_RenderStyle, &type metadata for Apple_Parsec_Rendering_V2_RenderStyle, v0, v1);
    atomic_store(result, &qword_1EBAC3320);
  }

  return result;
}

unint64_t sub_1B9062DA8()
{
  result = qword_1EBAC3328;
  if (!qword_1EBAC3328)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Rendering_V2_RenderStyle, &type metadata for Apple_Parsec_Rendering_V2_RenderStyle, v0, v1);
    atomic_store(result, &qword_1EBAC3328);
  }

  return result;
}

unint64_t sub_1B9062E00()
{
  result = qword_1EBAC3330;
  if (!qword_1EBAC3330)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Rendering_V2_RenderStyle, &type metadata for Apple_Parsec_Rendering_V2_RenderStyle, v0, v1);
    atomic_store(result, &qword_1EBAC3330);
  }

  return result;
}

unint64_t sub_1B9062E58()
{
  result = qword_1EBAC3338;
  if (!qword_1EBAC3338)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAC3340, &qword_1B9685368);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EBAC3338);
  }

  return result;
}

void sub_1B9063018(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B8E244A0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B90630BC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_19(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1B964C6A0();
}

uint64_t OUTLINED_FUNCTION_11_24()
{

  return type metadata accessor for Apple_Parsec_Rendering_V2_Rendering(0);
}

unint64_t Apple_Parsec_Responseframework_Engagement_EngagementType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 4;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B90631A0@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Responseframework_Engagement_EngagementType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B90631D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9065A38();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Apple_Parsec_Responseframework_Engagement_EngagementType.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBAC3378 = a1;
}

uint64_t sub_1B906331C@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Responseframework_Engagement_EngagementType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_Responseframework_Engagement_EngagementData.nextCardURL.setter()
{
  OUTLINED_FUNCTION_16();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_Responseframework_Engagement_EngagementData.engagementContext.getter()
{
  v0 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v0, v1);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Responseframework_Engagement_EngagementData.engagementContext.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Responseframework_Engagement_EngagementData.queryContext.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_88();
  v6 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_EngagementData(0);
  sub_1B9063584(v1 + *(v6 + 28), v2);
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v8 = OUTLINED_FUNCTION_493();
  if (__swift_getEnumTagSinglePayload(v8, v9, Context) != 1)
  {
    return sub_1B9065910(v2, a1);
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v10 = *(Context + 20);
  if (qword_1ED9D38C0 != -1)
  {
    OUTLINED_FUNCTION_12_0(&qword_1ED9D38C0);
  }

  *(a1 + v10) = qword_1ED9D38C8;
  v11 = OUTLINED_FUNCTION_493();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, v12, Context);

  if (EnumTagSinglePayload != 1)
  {
    return sub_1B8D9207C(v2, &qword_1EBABED40, &qword_1B96809F0);
  }

  return result;
}

uint64_t sub_1B9063584(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B90635F4(uint64_t a1)
{
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  MEMORY[0x1EEE9AC00](Context - 8);
  sub_1B8D5383C(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return Apple_Parsec_Responseframework_Engagement_EngagementData.queryContext.setter();
}

uint64_t Apple_Parsec_Responseframework_Engagement_EngagementData.queryContext.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Responseframework_Engagement_EngagementData(v2) + 28);
  sub_1B8D9207C(v1 + v3, &qword_1EBABED40, &qword_1B96809F0);
  sub_1B9065910(v0, v1 + v3);
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, Context);
}

void (*Apple_Parsec_Responseframework_Engagement_EngagementData.queryContext.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v3[2] = Context;
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Apple_Parsec_Responseframework_Engagement_EngagementData(0) + 28);
  *(v3 + 10) = v11;
  sub_1B9063584(v1 + v11, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, Context) == 1)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v12 = *(Context + 20);
    if (qword_1ED9D38C0 != -1)
    {
      OUTLINED_FUNCTION_12_0(&qword_1ED9D38C0);
    }

    *&v10[v12] = qword_1ED9D38C8;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, Context);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v6, &qword_1EBABED40, &qword_1B96809F0);
    }
  }

  else
  {
    sub_1B9065910(v6, v10);
  }

  return sub_1B906388C;
}

void sub_1B906388C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = **a1;
  if (a2)
  {
    sub_1B8D5383C((*a1)[4], v4);
    sub_1B8D9207C(v7 + v3, &qword_1EBABED40, &qword_1B96809F0);
    sub_1B9065910(v4, v7 + v3);
    OUTLINED_FUNCTION_30_2();
    sub_1B9065974(v5);
  }

  else
  {
    sub_1B8D9207C(v7 + v3, &qword_1EBABED40, &qword_1B96809F0);
    sub_1B9065910(v5, v7 + v3);
    OUTLINED_FUNCTION_30_2();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

BOOL Apple_Parsec_Responseframework_Engagement_EngagementData.hasQueryContext.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_88();
  v4 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_EngagementData(0);
  sub_1B9063584(v0 + *(v4 + 28), v1);
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v5 = OUTLINED_FUNCTION_493();
  v8 = __swift_getEnumTagSinglePayload(v5, v6, v7) != 1;
  sub_1B8D9207C(v1, &qword_1EBABED40, &qword_1B96809F0);
  return v8;
}

Swift::Void __swiftcall Apple_Parsec_Responseframework_Engagement_EngagementData.clearQueryContext()()
{
  v1 = *(type metadata accessor for Apple_Parsec_Responseframework_Engagement_EngagementData(0) + 28);
  sub_1B8D9207C(v0 + v1, &qword_1EBABED40, &qword_1B96809F0);
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, Context);
}

uint64_t Apple_Parsec_Responseframework_Engagement_EngagementData.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Responseframework_Engagement_EngagementData(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Apple_Parsec_Responseframework_Engagement_EngagementData.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Responseframework_Engagement_EngagementData(v2) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Apple_Parsec_Responseframework_Engagement_EngagementData.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Responseframework_Engagement_EngagementData(v0);
  return nullsub_1;
}

uint64_t Apple_Parsec_Responseframework_Engagement_EngagementData.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = xmmword_1B9652FE0;
  v2 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_EngagementData(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v3 = *(v2 + 28);
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);

  return __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, Context);
}

uint64_t Apple_Parsec_Responseframework_Engagement_Context.domain.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Responseframework_Engagement_Context.searchQueryForAllDomains.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t Apple_Parsec_Responseframework_Engagement_Context.customFields.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t Apple_Parsec_Responseframework_Engagement_Context.nextCardURL.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Apple_Parsec_Responseframework_Engagement_Context.magicFlags.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

void Apple_Parsec_Responseframework_Engagement_Context.engagementType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  *a1 = *(v1 + 96);
  *(a1 + 8) = v2;
}

uint64_t Apple_Parsec_Responseframework_Engagement_Context.engagementType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 96) = *result;
  *(v1 + 104) = v2;
  return result;
}

uint64_t Apple_Parsec_Responseframework_Engagement_Context.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Responseframework_Engagement_Context(0) + 48);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Apple_Parsec_Responseframework_Engagement_Context.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Responseframework_Engagement_Context(v2) + 48);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Apple_Parsec_Responseframework_Engagement_Context.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Responseframework_Engagement_Context(v0);
  return nullsub_1;
}

uint64_t Apple_Parsec_Responseframework_Engagement_Context.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  *(a1 + 56) = sub_1B964C7B0();
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0xE000000000000000;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  type metadata accessor for Apple_Parsec_Responseframework_Engagement_Context(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B90640B0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC3380);
  __swift_project_value_buffer(v0, qword_1EBAC3380);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "ENGAGEMENT_TYPE_UNKNOWN";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ENGAGEMENT_TYPE_SEARCH";
  *(v10 + 8) = 22;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ENGAGEMENT_TYPE_CARD_ID_LOOKUP";
  *(v12 + 1) = 30;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ENGAGEMENT_TYPE_ENTITY_EXPERIENCE";
  *(v14 + 1) = 33;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9064334()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC3398);
  __swift_project_value_buffer(v0, qword_1EBAC3398);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "next_card_url";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "engagement_context";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "query_context";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Responseframework_Engagement_EngagementData.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B90645E8(v3, v4, v5, v6);
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C470();
        break;
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
    }
  }

  return result;
}

uint64_t sub_1B90645E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Responseframework_Engagement_EngagementData(0);
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  sub_1B90659F0(&qword_1ED9CF498, type metadata accessor for Apple_Parsec_Search_PegasusQueryContext, protocol conformance descriptor for Apple_Parsec_Search_PegasusQueryContext);
  return sub_1B964C580();
}

uint64_t Apple_Parsec_Responseframework_Engagement_EngagementData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v18 - v9;
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_1();
  if (!v15 || (result = sub_1B964C700(), !v4))
  {
    v18[1] = a1;
    if (sub_1B8D99EA8(*(v5 + 16), *(v5 + 24)) || (result = sub_1B964C6A0(), !v4))
    {
      v17 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_EngagementData(0);
      sub_1B9063584(v5 + *(v17 + 28), v10);
      if (__swift_getEnumTagSinglePayload(v10, 1, Context) == 1)
      {
        sub_1B8D9207C(v10, &qword_1EBABED40, &qword_1B96809F0);
      }

      else
      {
        sub_1B9065910(v10, v14);
        sub_1B90659F0(&qword_1ED9CF498, type metadata accessor for Apple_Parsec_Search_PegasusQueryContext, protocol conformance descriptor for Apple_Parsec_Search_PegasusQueryContext);
        sub_1B964C740();
        result = sub_1B9065974(v14);
        if (v4)
        {
          return result;
        }
      }

      return sub_1B964C290();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Responseframework_Engagement_EngagementData.== infix(_:_:)()
{
  OUTLINED_FUNCTION_16();
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED68, &qword_1B9680A10);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_88();
  v13 = *v1 == *v0 && v1[1] == v0[1];
  if (!v13 && (sub_1B964C9F0() & 1) == 0 || (MEMORY[0x1BFADC060](v1[2], v1[3], v0[2], v0[3]) & 1) == 0)
  {
    goto LABEL_14;
  }

  v14 = *(type metadata accessor for Apple_Parsec_Responseframework_Engagement_EngagementData(0) + 28);
  v15 = *(v11 + 48);
  sub_1B9063584(v1 + v14, v2);
  sub_1B9063584(v0 + v14, v2 + v15);
  v16 = OUTLINED_FUNCTION_493();
  if (__swift_getEnumTagSinglePayload(v16, v17, Context) == 1)
  {
    if (__swift_getEnumTagSinglePayload(v2 + v15, 1, Context) == 1)
    {
      sub_1B8D9207C(v2, &qword_1EBABED40, &qword_1B96809F0);
LABEL_19:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_48();
      sub_1B90659F0(v29, v30, MEMORY[0x1E69AAC10]);
      v20 = sub_1B964C850();
      return v20 & 1;
    }

    goto LABEL_12;
  }

  sub_1B9063584(v2, v10);
  if (__swift_getEnumTagSinglePayload(v2 + v15, 1, Context) == 1)
  {
    sub_1B9065974(v10);
LABEL_12:
    v18 = &qword_1EBABED68;
    v19 = &qword_1B9680A10;
LABEL_13:
    sub_1B8D9207C(v2, v18, v19);
    goto LABEL_14;
  }

  sub_1B9065910(v2 + v15, v6);
  v22 = *(Context + 20);
  v23 = *&v10[v22];
  v24 = *&v6[v22];
  if (v23 != v24)
  {

    v25 = sub_1B9090820(v23, v24);

    if (!v25)
    {
      sub_1B9065974(v6);
      sub_1B9065974(v10);
      v18 = &qword_1EBABED40;
      v19 = &qword_1B96809F0;
      goto LABEL_13;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_48();
  sub_1B90659F0(v26, v27, MEMORY[0x1E69AAC10]);
  v28 = sub_1B964C850();
  sub_1B9065974(v6);
  sub_1B9065974(v10);
  sub_1B8D9207C(v2, &qword_1EBABED40, &qword_1B96809F0);
  if (v28)
  {
    goto LABEL_19;
  }

LABEL_14:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1B9064CA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90659F0(&qword_1EBAC3440, type metadata accessor for Apple_Parsec_Responseframework_Engagement_EngagementData, protocol conformance descriptor for Apple_Parsec_Responseframework_Engagement_EngagementData);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9064D20(uint64_t a1)
{
  v2 = sub_1B90659F0(&qword_1EBAC3410, type metadata accessor for Apple_Parsec_Responseframework_Engagement_EngagementData, protocol conformance descriptor for Apple_Parsec_Responseframework_Engagement_EngagementData);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9064D90(uint64_t a1, uint64_t a2)
{
  sub_1B90659F0(&qword_1EBAC3410, type metadata accessor for Apple_Parsec_Responseframework_Engagement_EngagementData, protocol conformance descriptor for Apple_Parsec_Responseframework_Engagement_EngagementData);

  return sub_1B964C5D0();
}

uint64_t sub_1B9064E2C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC33B0);
  __swift_project_value_buffer(v0, qword_1EBAC33B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1B96511B0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "card_id";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "domain";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "should_query_all_domains";
  *(v11 + 1) = 24;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "search_query_for_all_domains";
  *(v13 + 1) = 28;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "custom_fields";
  *(v15 + 1) = 13;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "next_card_url";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "magic_flags";
  *(v19 + 1) = 11;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "engagement_type";
  *(v21 + 1) = 15;
  v21[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Responseframework_Engagement_Context.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 4:
      case 6:
      case 7:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B9065268(v3, v4, v5, v6);
        break;
      case 8:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B90652E0(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Responseframework_Engagement_Context.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  OUTLINED_FUNCTION_1();
  if (!v8 || (result = OUTLINED_FUNCTION_3(v6, v7, 1), (v5 = v4) == 0))
  {
    OUTLINED_FUNCTION_1();
    if (!v12 || (result = OUTLINED_FUNCTION_3(v10, v11, 2), (v5 = v4) == 0))
    {
      if (*(v3 + 32) != 1 || (v4 = v5, result = sub_1B964C670(), !v5))
      {
        OUTLINED_FUNCTION_1();
        if (!v15 || (result = OUTLINED_FUNCTION_3(v13, v14, 4), (v5 = v4) == 0))
        {
          if (!*(*(v3 + 56) + 16) || (sub_1B964C280(), v4 = v5, result = sub_1B964C5F0(), !v5))
          {
            OUTLINED_FUNCTION_1();
            if (!v18 || (result = OUTLINED_FUNCTION_3(v16, v17, 6), (v5 = v4) == 0))
            {
              OUTLINED_FUNCTION_1();
              if (!v21 || (result = OUTLINED_FUNCTION_3(v19, v20, 7), (v5 = v4) == 0))
              {
                if (!*(v3 + 96) || (sub_1B9065A38(), result = sub_1B964C680(), !v5))
                {
                  type metadata accessor for Apple_Parsec_Responseframework_Engagement_Context(0);
                  OUTLINED_FUNCTION_12();
                  return sub_1B964C290();
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

uint64_t static Apple_Parsec_Responseframework_Engagement_Context.== infix(_:_:)(uint64_t *a1, uint64_t a2)
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

  if (*(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v6 = a1[5] == *(a2 + 40) && a1[6] == *(a2 + 48);
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  sub_1B8DB02F8(a1[7], *(a2 + 56));
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = a1[8] == *(a2 + 64) && a1[9] == *(a2 + 72);
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v9 = a1[10] == *(a2 + 80) && a1[11] == *(a2 + 88);
  if (!v9 && (sub_1B964C9F0() & 1) == 0 || !sub_1B8D92198(a1[12], *(a1 + 104), *(a2 + 96)))
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Responseframework_Engagement_Context(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_48();
  sub_1B90659F0(v10, v11, MEMORY[0x1E69AAC10]);
  return sub_1B964C850() & 1;
}

uint64_t sub_1B90656BC(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  sub_1B964CA70();
  a1(0);
  sub_1B90659F0(a2, a3, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B90657A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90659F0(&qword_1EBAC3438, type metadata accessor for Apple_Parsec_Responseframework_Engagement_Context, protocol conformance descriptor for Apple_Parsec_Responseframework_Engagement_Context);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9065820(uint64_t a1)
{
  v2 = sub_1B90659F0(&qword_1EBAC3428, type metadata accessor for Apple_Parsec_Responseframework_Engagement_Context, protocol conformance descriptor for Apple_Parsec_Responseframework_Engagement_Context);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9065890(uint64_t a1, uint64_t a2)
{
  sub_1B90659F0(&qword_1EBAC3428, type metadata accessor for Apple_Parsec_Responseframework_Engagement_Context, protocol conformance descriptor for Apple_Parsec_Responseframework_Engagement_Context);

  return sub_1B964C5D0();
}

uint64_t sub_1B9065910(uint64_t a1, uint64_t a2)
{
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  (*(*(Context - 8) + 32))(a2, a1, Context);
  return a2;
}

uint64_t sub_1B9065974(uint64_t a1)
{
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  (*(*(Context - 8) + 8))(a1, Context);
  return a1;
}

uint64_t sub_1B90659F0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B9065A38()
{
  result = qword_1EBAC33D0;
  if (!qword_1EBAC33D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Responseframework_Engagement_EngagementType, &type metadata for Apple_Parsec_Responseframework_Engagement_EngagementType, v0, v1);
    atomic_store(result, &qword_1EBAC33D0);
  }

  return result;
}

unint64_t sub_1B9065A90()
{
  result = qword_1EBAC33E0;
  if (!qword_1EBAC33E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Responseframework_Engagement_EngagementType, &type metadata for Apple_Parsec_Responseframework_Engagement_EngagementType, v0, v1);
    atomic_store(result, &qword_1EBAC33E0);
  }

  return result;
}

unint64_t sub_1B9065AE8()
{
  result = qword_1EBAC33E8;
  if (!qword_1EBAC33E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Responseframework_Engagement_EngagementType, &type metadata for Apple_Parsec_Responseframework_Engagement_EngagementType, v0, v1);
    atomic_store(result, &qword_1EBAC33E8);
  }

  return result;
}

unint64_t sub_1B9065B40()
{
  result = qword_1EBAC33F0;
  if (!qword_1EBAC33F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Responseframework_Engagement_EngagementType, &type metadata for Apple_Parsec_Responseframework_Engagement_EngagementType, v0, v1);
    atomic_store(result, &qword_1EBAC33F0);
  }

  return result;
}

unint64_t sub_1B9065B98()
{
  result = qword_1EBAC33F8;
  if (!qword_1EBAC33F8)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAC3400, &qword_1B96856B8);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EBAC33F8);
  }

  return result;
}

void sub_1B9065E74(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B9065F10(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B9065F10(uint64_t a1)
{
  if (!qword_1EDA04118)
  {
    type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(255);
    v1 = sub_1B964C930();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDA04118);
    }
  }
}

void sub_1B9065F90(uint64_t a1)
{
  sub_1B901FE74();
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest.queryContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest(v7);
  OUTLINED_FUNCTION_62_2(*(v8 + 20));
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v11 = *(Context + 20);
    if (qword_1ED9D38C0 != -1)
    {
      OUTLINED_FUNCTION_12_0(&qword_1ED9D38C0);
    }

    *(a1 + v11) = qword_1ED9D38C8;
    v12 = OUTLINED_FUNCTION_493();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, v13, Context);

    if (EnumTagSinglePayload != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBABED40, &qword_1B96809F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_43();
    v15 = OUTLINED_FUNCTION_182();
    return sub_1B906CE08(v15, v16);
  }

  return result;
}

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest.queryContext.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest(v1);
  sub_1B8D9207C(v0 + *(v2 + 20), &qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_1_43();
  v3 = OUTLINED_FUNCTION_122_0();
  sub_1B906CE08(v3, v4);
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest.queryContext.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v3[2] = Context;
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest(0);
  OUTLINED_FUNCTION_52_5(*(v11 + 20));
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v13 = *(Context + 20);
    if (qword_1ED9D38C0 != -1)
    {
      OUTLINED_FUNCTION_12_0(&qword_1ED9D38C0);
    }

    *&v10[v13] = qword_1ED9D38C8;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, Context);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v6, &qword_1EBABED40, &qword_1B96809F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_43();
    sub_1B906CE08(v6, v10);
  }

  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest.hasQueryContext.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest(v5);
  OUTLINED_FUNCTION_53_7(v0 + *(v6 + 20));
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v7 = OUTLINED_FUNCTION_493();
  __swift_getEnumTagSinglePayload(v7, v8, v9);
  OUTLINED_FUNCTION_32_12();
  return v0;
}

Swift::Void __swiftcall Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest.clearQueryContext()()
{
  v1 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest(0);
  sub_1B8D9207C(v0 + *(v1 + 20), &qword_1EBABED40, &qword_1B96809F0);
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest.requestMetadata.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest(v7);
  OUTLINED_FUNCTION_62_2(*(v8 + 24));
  v9 = type metadata accessor for Searchfoundation_DrillDownMetadata(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    v11 = MEMORY[0x1E69E7CC0];
    a1[2] = MEMORY[0x1E69E7CC0];
    a1[3] = v11;
    a1[4] = 0;
    a1[5] = 0xE000000000000000;
    a1[6] = 0;
    a1[7] = 0xE000000000000000;
    type metadata accessor for Searchfoundation_DrillDownMetadata.OneOf_Metadata(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
    v16 = (a1 + *(v9 + 40));
    *v16 = 0;
    v16[1] = 0xE000000000000000;
    v17 = (a1 + *(v9 + 44));
    *v17 = 0;
    v17[1] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC3480, &unk_1B9685AF8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_25();
    v18 = OUTLINED_FUNCTION_182();
    return sub_1B906CE08(v18, v19);
  }

  return result;
}

uint64_t sub_1B90665E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  v12 = OUTLINED_FUNCTION_177_1();
  sub_1B906CE60(v12, v13);
  return a7(v11);
}

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest.requestMetadata.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBAC3480, &unk_1B9685AF8);
  OUTLINED_FUNCTION_2_25();
  v3 = OUTLINED_FUNCTION_122_0();
  sub_1B906CE08(v3, v4);
  type metadata accessor for Searchfoundation_DrillDownMetadata(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest.requestMetadata.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3480, &unk_1B9685AF8);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_DrillDownMetadata(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest(0);
  OUTLINED_FUNCTION_52_5(*(v11 + 24));
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v13 = MEMORY[0x1E69E7CC0];
    v10[2] = MEMORY[0x1E69E7CC0];
    v10[3] = v13;
    v10[4] = 0;
    v10[5] = 0xE000000000000000;
    v10[6] = 0;
    v10[7] = 0xE000000000000000;
    type metadata accessor for Searchfoundation_DrillDownMetadata.OneOf_Metadata(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    v18 = (v10 + *(v7 + 40));
    *v18 = 0;
    v18[1] = 0xE000000000000000;
    v19 = (v10 + *(v7 + 44));
    *v19 = 0;
    v19[1] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v6, &qword_1EBAC3480, &unk_1B9685AF8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_25();
    sub_1B906CE08(v6, v10);
  }

  OUTLINED_FUNCTION_242();
}

void sub_1B90668B8(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *a1;
  v7 = *(*a1 + 10);
  v8 = (*a1)[3];
  v9 = (*a1)[4];
  v10 = (*a1)[1];
  v11 = (*a1)[2];
  v12 = **a1;
  if (a2)
  {
    v13 = OUTLINED_FUNCTION_128();
    sub_1B906CE60(v13, v14);
    sub_1B8D9207C(v12 + v7, a3, a4);
    sub_1B906CE08(v8, v12 + v7);
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v11);
    sub_1B906CEB8();
  }

  else
  {
    sub_1B8D9207C(v12 + v7, a3, a4);
    sub_1B906CE08(v9, v12 + v7);
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v11);
  }

  free(v9);
  free(v8);
  free(v10);

  free(v6);
}

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest.hasRequestMetadata.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest(v5);
  OUTLINED_FUNCTION_53_7(v0 + *(v6 + 24));
  type metadata accessor for Searchfoundation_DrillDownMetadata(0);
  v7 = OUTLINED_FUNCTION_493();
  __swift_getEnumTagSinglePayload(v7, v8, v9);
  OUTLINED_FUNCTION_32_12();
  return v0;
}

Swift::Void __swiftcall Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest.clearRequestMetadata()()
{
  v1 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest(0);
  sub_1B8D9207C(v0 + *(v1 + 24), &qword_1EBAC3480, &unk_1B9685AF8);
  type metadata accessor for Searchfoundation_DrillDownMetadata(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest.init()(uint64_t a1)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest(0);
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  type metadata accessor for Searchfoundation_DrillDownMetadata(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.status.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_6_16();
  result = OUTLINED_FUNCTION_521(v1 + 16, v5);
  v4 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1B9066BB0@<X0>(uint64_t a1@<X8>)
{
  result = Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.status.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_1B9066BF4(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.status.setter(&v3);
}

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.status.setter(uint64_t *a1)
{
  v3 = v1;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = OUTLINED_FUNCTION_56_4();
  v7 = *(v1 + v2);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_16();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B9069CE8(v8);
    *(v3 + v2) = v7;
  }

  result = OUTLINED_FUNCTION_18(v7 + 16, v10);
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  return result;
}

void (*Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.status.modify())()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_14_14();
  *(v1 + 84) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_521(v4 + 16, v1);
  v5 = *(v4 + 24);
  *(v1 + 72) = *(v4 + 16);
  *(v1 + 80) = v5;
  return sub_1B9066D28;
}

void sub_1B9066D28()
{
  OUTLINED_FUNCTION_243();
  v1 = v0;
  v3 = *v2;
  v4 = *(*v2 + 72);
  v5 = *(*v2 + 84);
  v6 = *(*v2 + 88);
  v7 = *(*v2 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v3 + 84);
    v11 = *(v3 + 88);
    OUTLINED_FUNCTION_16_16();
    v12 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B9069CE8(v12);
    *(v11 + v10) = v9;
  }

  v13 = 48;
  if (v1)
  {
    v13 = 24;
  }

  OUTLINED_FUNCTION_18(v9 + 16, v3 + v13);
  *(v9 + 16) = v4;
  *(v9 + 24) = v7;
  OUTLINED_FUNCTION_242();

  free(v14);
}

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.error.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_17_14(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_29_17();
  type metadata accessor for Apple_Parsec_Search_Error(0);
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = -1;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v8)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB9188, &qword_1B964D970);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_25();
    v9 = OUTLINED_FUNCTION_182();
    return sub_1B906CE08(v9, v10);
  }

  return result;
}

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.error.setter(uint64_t a1)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_139();
  v8 = OUTLINED_FUNCTION_56_4();
  v9 = *(v2 + v3);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_16();
    v10 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B9069CE8(v10);
    *(v4 + v3) = v9;
  }

  OUTLINED_FUNCTION_11_25();
  sub_1B906CE08(a1, v1);
  type metadata accessor for Apple_Parsec_Search_Error(0);
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_55_4(v9 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__error, v20);
  v15 = OUTLINED_FUNCTION_122_0();
  sub_1B906CF4C(v15, v16, v17, v18);
  return swift_endAccess();
}

void Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.error.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v1[4] = v6;
  type metadata accessor for Apple_Parsec_Search_Error(0);
  OUTLINED_FUNCTION_59_1();
  v8 = *(v7 + 64);
  v1[5] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v1[6] = v9;
  OUTLINED_FUNCTION_6_16();
  v10 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__error;
  OUTLINED_FUNCTION_74();
  sub_1B906D5EC(v0 + v10, v6, &qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_17_2();
  if (v11)
  {
    *v9 = 0;
    v9[1] = 0;
    *(v9 + 16) = -1;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v11)
    {
      sub_1B8D9207C(v6, &qword_1EBAB9188, &qword_1B964D970);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_25();
    sub_1B906CE08(v6, v9);
  }

  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.hasError.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_17_14(v5);
  v6 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__error;
  OUTLINED_FUNCTION_521(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__error, v11);
  OUTLINED_FUNCTION_53_7(v0 + v6);
  type metadata accessor for Apple_Parsec_Search_Error(0);
  v7 = OUTLINED_FUNCTION_493();
  __swift_getEnumTagSinglePayload(v7, v8, v9);
  OUTLINED_FUNCTION_32_12();
  return v0;
}

Swift::Void __swiftcall Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.clearError()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_139();
  v4 = *(type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_16_16();
    v7 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B9069CE8(v7);
    *(v1 + v4) = v6;
  }

  type metadata accessor for Apple_Parsec_Search_Error(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_55_4(v6 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__error, v16);
  v12 = OUTLINED_FUNCTION_122_0();
  sub_1B906CF4C(v12, v13, v14, v15);
  swift_endAccess();
}

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.traceID.getter()
{
  OUTLINED_FUNCTION_14_14();
  OUTLINED_FUNCTION_521(*(v0 + v1) + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__traceID, v3);

  return OUTLINED_FUNCTION_288();
}

uint64_t sub_1B9067320(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.traceID.setter(v1, v2);
}

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.traceID.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = OUTLINED_FUNCTION_56_4();
  v8 = *(v2 + v3);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_16();
    v9 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B9069CE8(v9);
    *(v4 + v3) = v8;
  }

  v10 = (v8 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__traceID);
  OUTLINED_FUNCTION_18(v10, v12);
  *v10 = a1;
  v10[1] = a2;
}

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.traceID.modify()
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_99(v2) + 64) = v0;
  OUTLINED_FUNCTION_14_14();
  *(v1 + 72) = v3;
  v4 = (*(v0 + v3) + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__traceID);
  OUTLINED_FUNCTION_521(v4, v1);
  v5 = v4[1];
  *(v1 + 48) = *v4;
  *(v1 + 56) = v5;

  return OUTLINED_FUNCTION_514();
}

void sub_1B906746C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {

    v5 = OUTLINED_FUNCTION_461();
    Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.traceID.setter(v5, v6);
  }

  else
  {
    v7 = *(v2 + 72);
    v8 = *(v2 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v8 + v7);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 72);
      v12 = *(v2 + 64);
      OUTLINED_FUNCTION_16_16();
      v13 = OUTLINED_FUNCTION_40_0();
      v10 = sub_1B9069CE8(v13);
      *(v12 + v11) = v10;
    }

    v14 = (v10 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__traceID);
    OUTLINED_FUNCTION_18(v14, v2 + 24);
    *v14 = v3;
    v14[1] = v4;
  }

  free(v2);
}

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.appSpecificResults.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_6_16();
  v3 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__appSpecificResults;
  OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__appSpecificResults, v5);
  return sub_1B906D5EC(v1 + v3, a1, &qword_1EBAC34A0, &qword_1B9685B08);
}

uint64_t sub_1B9067598(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC34A0, &qword_1B9685B08);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1B906D5EC(a1, &v5 - v3, &qword_1EBAC34A0, &qword_1B9685B08);
  return Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.appSpecificResults.setter();
}

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.appSpecificResults.setter()
{
  v1 = v0;
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse(v2) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_16_16();
    v6 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B9069CE8(v6);
    *(v1 + v3) = v5;
  }

  OUTLINED_FUNCTION_55_4(v5 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__appSpecificResults, v12);
  v7 = OUTLINED_FUNCTION_122_0();
  sub_1B906CF4C(v7, v8, v9, v10);
  return swift_endAccess();
}

void Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.appSpecificResults.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_99(v2) + 48) = v0;
  v3 = OUTLINED_FUNCTION_177_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  *(v1 + 56) = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  *(v1 + 64) = v8;
  OUTLINED_FUNCTION_14_14();
  *(v1 + 72) = v9;
  v10 = *(v0 + v9);
  v11 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__appSpecificResults;
  OUTLINED_FUNCTION_521(v10 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__appSpecificResults, v1);
  sub_1B906D5EC(v10 + v11, v8, &qword_1EBAC34A0, &qword_1B9685B08);
  OUTLINED_FUNCTION_242();
}

void sub_1B90677B4(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(v2 + 56);
    v3 = *(v2 + 64);
    sub_1B906D5EC(v3, v4, &qword_1EBAC34A0, &qword_1B9685B08);
    Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.appSpecificResults.setter();
    v5 = OUTLINED_FUNCTION_236();
    sub_1B8D9207C(v5, v6, &qword_1B9685B08);
  }

  else
  {
    v7 = *(v2 + 72);
    v8 = *(v2 + 48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v8 + v7);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 72);
      v12 = *(v2 + 48);
      OUTLINED_FUNCTION_16_16();
      v13 = OUTLINED_FUNCTION_40_0();
      v10 = sub_1B9069CE8(v13);
      *(v12 + v11) = v10;
    }

    v4 = *(v2 + 56);
    v3 = *(v2 + 64);
    v14 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__appSpecificResults;
    OUTLINED_FUNCTION_55_4(v10 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__appSpecificResults, v2 + 24);
    sub_1B906CF4C(v3, v10 + v14, &qword_1EBAC34A0, &qword_1B9685B08);
    swift_endAccess();
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.spotlightSearchResults.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_17_14(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_29_17();
  type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.OneOf_AppSpecificResults(0);
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAC34A0, &qword_1B9685B08);
    return Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults.init()(a1);
  }

  OUTLINED_FUNCTION_461();
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_0_49();
    sub_1B906CEB8();
    return Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults.init()(a1);
  }

  OUTLINED_FUNCTION_13_15();
  v11 = OUTLINED_FUNCTION_182();
  return sub_1B906CE08(v11, v12);
}

void Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.spotlightSearchResults.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_3(v6);
  type metadata accessor for Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  *(v1 + 40) = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  *(v1 + 48) = v10;
  OUTLINED_FUNCTION_6_16();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_37_6();
  type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.OneOf_AppSpecificResults(0);
  OUTLINED_FUNCTION_37_0(v0);
  if (v11)
  {
    sub_1B8D9207C(v0, &qword_1EBAC34A0, &qword_1B9685B08);
  }

  else
  {
    OUTLINED_FUNCTION_128();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_13_15();
      v23 = OUTLINED_FUNCTION_177_1();
      sub_1B906CE08(v23, v24);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_0_49();
    sub_1B906CEB8();
  }

  OUTLINED_FUNCTION_77_2();
  v10[4] = 0;
  v10[5] = v13;
  *(v10 + 3) = xmmword_1B9652FE0;
  v10[8] = 0;
  *(v10 + 72) = 0;
  v10[10] = 0;
  v10[11] = v13;
  v14 = MEMORY[0x1E69E7CC0];
  v10[12] = sub_1B964C7B0();
  v10[13] = v14;
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  sub_1B964C150();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  type metadata accessor for Searchfoundation_EngagementSignal(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
LABEL_7:
  OUTLINED_FUNCTION_283();
}

void sub_1B9067BCC()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 32);
  if (v6)
  {
    sub_1B906CE60(*(*v0 + 48), v3);
    v2(v3);
    sub_1B906CEB8();
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

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.lookupSearchResults.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_17_14(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_29_17();
  type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.OneOf_AppSpecificResults(0);
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAC34A0, &qword_1B9685B08);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_10_20();
      v10 = OUTLINED_FUNCTION_182();
      return sub_1B906CE08(v10, v11);
    }

    OUTLINED_FUNCTION_0_49();
    sub_1B906CEB8();
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = xmmword_1B9652FE0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  sub_1B964C150();
  OUTLINED_FUNCTION_83();
  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

void Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.lookupSearchResults.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_3(v6);
  type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  *(v1 + 40) = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  *(v1 + 48) = v10;
  OUTLINED_FUNCTION_6_16();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_37_6();
  type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.OneOf_AppSpecificResults(0);
  OUTLINED_FUNCTION_37_0(v0);
  if (v11)
  {
    sub_1B8D9207C(v0, &qword_1EBAC34A0, &qword_1B9685B08);
LABEL_7:
    OUTLINED_FUNCTION_77_2();
    v10[2] = xmmword_1B9652FE0;
    *(v10 + 6) = 0;
    *(v10 + 56) = 0;
    *(v10 + 8) = MEMORY[0x1E69E7CC0];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    sub_1B964C150();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_128();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_0_49();
    sub_1B906CEB8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_10_20();
  v13 = OUTLINED_FUNCTION_177_1();
  sub_1B906CE08(v13, v14);
LABEL_8:
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.safariSearchResults.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_17_14(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_29_17();
  type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.OneOf_AppSpecificResults(0);
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAC34A0, &qword_1B9685B08);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_9_20();
      v10 = OUTLINED_FUNCTION_182();
      return sub_1B906CE08(v10, v11);
    }

    OUTLINED_FUNCTION_0_49();
    sub_1B906CEB8();
  }

  return Apple_Parsec_Safari_V1alpha_SafariSearchResults.init()(a1);
}

void sub_1B90680A8()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC34A0, &qword_1B9685B08);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_139();
  v7 = *(type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_16_16();
    v10 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B9069CE8(v10);
    *(v2 + v7) = v9;
  }

  sub_1B906CE08(v4, v0);
  v11 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.OneOf_AppSpecificResults(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
  OUTLINED_FUNCTION_55_4(v9 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__appSpecificResults, &v19);
  v15 = OUTLINED_FUNCTION_122_0();
  sub_1B906CF4C(v15, v16, v17, v18);
  swift_endAccess();
  OUTLINED_FUNCTION_242();
}

void Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.safariSearchResults.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_3(v6);
  type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  *(v1 + 40) = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  *(v1 + 48) = v10;
  OUTLINED_FUNCTION_6_16();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_37_6();
  type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.OneOf_AppSpecificResults(0);
  OUTLINED_FUNCTION_37_0(v0);
  if (v11)
  {
    sub_1B8D9207C(v0, &qword_1EBAC34A0, &qword_1B9685B08);
LABEL_7:
    OUTLINED_FUNCTION_77_2();
    v10[2] = xmmword_1B9652FE0;
    *(v10 + 48) = 0;
    *(v10 + 7) = 0;
    *(v10 + 8) = v15;
    *(v10 + 36) = 0;
    v16 = MEMORY[0x1E69E7CC0];
    *(v10 + 10) = MEMORY[0x1E69E7CC0];
    *(v10 + 11) = v16;
    *(v10 + 12) = v16;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    sub_1B964C150();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_128();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    OUTLINED_FUNCTION_0_49();
    sub_1B906CEB8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_9_20();
  v13 = OUTLINED_FUNCTION_177_1();
  sub_1B906CE08(v13, v14);
LABEL_8:
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.serviceDebug.getter()
{
  OUTLINED_FUNCTION_14_14();
  OUTLINED_FUNCTION_521(*(v0 + v1) + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__serviceDebug, v3);
}

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.serviceDebug.setter()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_313();
  v4 = *(type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse(v3) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_16_16();
    v7 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B9069CE8(v7);
    *(v2 + v4) = v6;
  }

  v8 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__serviceDebug;
  OUTLINED_FUNCTION_18(v6 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__serviceDebug, v10);
  *(v6 + v8) = v0;
}

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.serviceDebug.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_99(v2) + 56) = v0;
  OUTLINED_FUNCTION_14_14();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__serviceDebug;
  OUTLINED_FUNCTION_521(v4 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__serviceDebug, v1);
  *(v1 + 48) = *(v4 + v5);

  return OUTLINED_FUNCTION_514();
}

void sub_1B906850C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {

    Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.serviceDebug.setter();
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
      OUTLINED_FUNCTION_16_16();
      v10 = OUTLINED_FUNCTION_40_0();
      v7 = sub_1B9069CE8(v10);
      *(v9 + v8) = v7;
    }

    v11 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__serviceDebug;
    OUTLINED_FUNCTION_18(v7 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__serviceDebug, v2 + 24);
    *(v7 + v11) = v3;
  }

  free(v2);
}

void static Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.OneOf_AppSpecificResults.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v36 = v1;
  v3 = v2;
  v4 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults(0);
  v5 = OUTLINED_FUNCTION_183(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  v7 = OUTLINED_FUNCTION_59_6(v6);
  v8 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults(v7);
  v9 = OUTLINED_FUNCTION_183(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  v12 = v11 - v10;
  v13 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults(0);
  v14 = OUTLINED_FUNCTION_183(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_62();
  v17 = v16 - v15;
  type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.OneOf_AppSpecificResults(0);
  OUTLINED_FUNCTION_59_1();
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v35 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v35 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC34B0, &qword_1B9685B10);
  OUTLINED_FUNCTION_183(v27);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_139();
  v30 = *(v29 + 56);
  sub_1B906CE60(v3, v0);
  sub_1B906CE60(v36, v0 + v30);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v32 = OUTLINED_FUNCTION_7_25();
      sub_1B906CE60(v32, v24);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_10_20();
        sub_1B906CE08(v0 + v30, v12);
        static Apple_Parsec_Lookup_V1alpha_LookupSearchResults.== infix(_:_:)();
        sub_1B906CEB8();
LABEL_11:
        sub_1B906CEB8();
        OUTLINED_FUNCTION_0_49();
        sub_1B906CEB8();
        goto LABEL_12;
      }
    }

    else
    {
      v34 = OUTLINED_FUNCTION_7_25();
      sub_1B906CE60(v34, v21);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        OUTLINED_FUNCTION_9_20();
        sub_1B906CE08(v0 + v30, v35);
        static Apple_Parsec_Safari_V1alpha_SafariSearchResults.== infix(_:_:)();
        sub_1B906CEB8();
        goto LABEL_11;
      }
    }
  }

  else
  {
    v33 = OUTLINED_FUNCTION_7_25();
    sub_1B906CE60(v33, v26);
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_13_15();
      sub_1B906CE08(v0 + v30, v17);
      static Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults.== infix(_:_:)();
      sub_1B906CEB8();
      goto LABEL_11;
    }
  }

  sub_1B906CEB8();
  sub_1B8D9207C(v0, &qword_1EBAC34B0, &qword_1B9685B10);
LABEL_12:
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.init()@<X0>(uint64_t a2@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v3 = *(type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse(0) + 20);
  if (qword_1EBAB70A0 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_1EBAC3478;
}

uint64_t sub_1B9068A30()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC3448);
  __swift_project_value_buffer(v0, qword_1EBAC3448);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "query_context";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 5;
  *v10 = "request_metadata";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v3 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 5)
    {
      v10 = OUTLINED_FUNCTION_288();
      sub_1B9068D58(v10, v11, a2, a3);
    }

    else if (result == 1)
    {
      v8 = OUTLINED_FUNCTION_288();
      sub_1B9068CA4(v8, v9, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1B9068CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest(0);
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  sub_1B906CFB8(&qword_1ED9CF498, type metadata accessor for Apple_Parsec_Search_PegasusQueryContext, protocol conformance descriptor for Apple_Parsec_Search_PegasusQueryContext);
  return sub_1B964C580();
}

uint64_t sub_1B9068D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest(0);
  type metadata accessor for Searchfoundation_DrillDownMetadata(0);
  sub_1B906CFB8(&qword_1EBAB4E18, type metadata accessor for Searchfoundation_DrillDownMetadata, protocol conformance descriptor for Searchfoundation_DrillDownMetadata);
  return sub_1B964C580();
}

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v31 = a3;
  v29 = a1;
  v30 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3480, &unk_1B9685AF8);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_156();
  v27 = type metadata accessor for Searchfoundation_DrillDownMetadata(v9);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  v26 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v13);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_62();
  v21 = v20 - v19;
  v22 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest(0);
  v23 = *(v22 + 20);
  v28 = v6;
  sub_1B906D5EC(v6 + v23, v16, &qword_1EBABED40, &qword_1B96809F0);
  if (__swift_getEnumTagSinglePayload(v16, 1, Context) == 1)
  {
    sub_1B8D9207C(v16, &qword_1EBABED40, &qword_1B96809F0);
  }

  else
  {
    OUTLINED_FUNCTION_1_43();
    sub_1B906CE08(v16, v21);
    sub_1B906CFB8(&qword_1ED9CF498, type metadata accessor for Apple_Parsec_Search_PegasusQueryContext, protocol conformance descriptor for Apple_Parsec_Search_PegasusQueryContext);
    sub_1B964C740();
    OUTLINED_FUNCTION_26_13();
    result = sub_1B906CEB8();
    if (v4)
    {
      return result;
    }
  }

  sub_1B906D5EC(v28 + *(v22 + 24), v5, &qword_1EBAC3480, &unk_1B9685AF8);
  if (__swift_getEnumTagSinglePayload(v5, 1, v27) == 1)
  {
    sub_1B8D9207C(v5, &qword_1EBAC3480, &unk_1B9685AF8);
  }

  else
  {
    OUTLINED_FUNCTION_2_25();
    sub_1B906CE08(v5, v26);
    sub_1B906CFB8(&qword_1EBAB4E18, type metadata accessor for Searchfoundation_DrillDownMetadata, protocol conformance descriptor for Searchfoundation_DrillDownMetadata);
    sub_1B964C740();
    OUTLINED_FUNCTION_25_12();
    result = sub_1B906CEB8();
    if (v4)
    {
      return result;
    }
  }

  return sub_1B964C290();
}

void static Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = v2;
  v5 = v4;
  v51 = type metadata accessor for Searchfoundation_DrillDownMetadata(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  v47 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3480, &unk_1B9685AF8);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  v48 = &v46 - v11;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC34B8, &qword_1B96CA750);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v14 = OUTLINED_FUNCTION_59_6(v13);
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(v14);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_62();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v20);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_139();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED68, &qword_1B9680A10) - 8;
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v23);
  v24 = OUTLINED_FUNCTION_156();
  v49 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest(v24);
  v25 = *(v49 + 20);
  v26 = *(v22 + 56);
  v53 = v5;
  sub_1B906D5EC(v5 + v25, v1, &qword_1EBABED40, &qword_1B96809F0);
  sub_1B906D5EC(v3 + v25, v1 + v26, &qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_37_0(v1);
  if (!v27)
  {
    sub_1B906D5EC(v1, v0, &qword_1EBABED40, &qword_1B96809F0);
    OUTLINED_FUNCTION_37_0(v1 + v26);
    if (!v27)
    {
      OUTLINED_FUNCTION_1_43();
      sub_1B906CE08(v1 + v26, v19);
      v31 = *(Context + 20);
      v32 = *(v0 + v31);
      v33 = *(v19 + v31);
      if (v32 == v33 || (, , v34 = sub_1B9090820(v32, v33), , , v34))
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_12_19();
        sub_1B906CFB8(v35, v36, MEMORY[0x1E69AAC10]);
        v37 = sub_1B964C850();
        sub_1B906CEB8();
        sub_1B906CEB8();
        sub_1B8D9207C(v1, &qword_1EBABED40, &qword_1B96809F0);
        if ((v37 & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_14;
      }

      sub_1B906CEB8();
      OUTLINED_FUNCTION_432();
      sub_1B906CEB8();
      v28 = &qword_1EBABED40;
      v29 = &qword_1B96809F0;
LABEL_10:
      v30 = v1;
LABEL_20:
      sub_1B8D9207C(v30, v28, v29);
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_26_13();
    sub_1B906CEB8();
LABEL_9:
    v28 = &qword_1EBABED68;
    v29 = &qword_1B9680A10;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_37_0(v1 + v26);
  if (!v27)
  {
    goto LABEL_9;
  }

  sub_1B8D9207C(v1, &qword_1EBABED40, &qword_1B96809F0);
LABEL_14:
  v38 = *(v49 + 24);
  v39 = *(v50 + 48);
  v40 = v52;
  sub_1B906D5EC(v53 + v38, v52, &qword_1EBAC3480, &unk_1B9685AF8);
  sub_1B906D5EC(v3 + v38, v40 + v39, &qword_1EBAC3480, &unk_1B9685AF8);
  v41 = v51;
  if (__swift_getEnumTagSinglePayload(v40, 1, v51) == 1)
  {
    if (__swift_getEnumTagSinglePayload(v40 + v39, 1, v41) == 1)
    {
      sub_1B8D9207C(v40, &qword_1EBAC3480, &unk_1B9685AF8);
LABEL_23:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_12_19();
      sub_1B906CFB8(v44, v45, MEMORY[0x1E69AAC10]);
      sub_1B964C850();
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  sub_1B906D5EC(v40, v48, &qword_1EBAC3480, &unk_1B9685AF8);
  if (__swift_getEnumTagSinglePayload(v40 + v39, 1, v41) == 1)
  {
    OUTLINED_FUNCTION_25_12();
    sub_1B906CEB8();
LABEL_19:
    v28 = &qword_1EBAC34B8;
    v29 = &qword_1B96CA750;
    v30 = v40;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_2_25();
  sub_1B906CE08(v40 + v39, v47);
  OUTLINED_FUNCTION_461();
  static Searchfoundation_DrillDownMetadata.== infix(_:_:)();
  v43 = v42;
  sub_1B906CEB8();
  OUTLINED_FUNCTION_128();
  sub_1B906CEB8();
  sub_1B8D9207C(v40, &qword_1EBAC3480, &unk_1B9685AF8);
  if (v43)
  {
    goto LABEL_23;
  }

LABEL_21:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9069730(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B906CFB8(&qword_1EBAC3550, type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest, protocol conformance descriptor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90697B0(uint64_t a1)
{
  v2 = sub_1B906CFB8(&qword_1EBAC34D8, type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest, protocol conformance descriptor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9069820(uint64_t a1, uint64_t a2)
{
  sub_1B906CFB8(&qword_1EBAC34D8, type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest, protocol conformance descriptor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest);

  return sub_1B964C5D0();
}

uint64_t sub_1B90698BC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC3460);
  __swift_project_value_buffer(v0, qword_1EBAC3460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9650810;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "status";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "error";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "trace_id";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 50;
  *v14 = "spotlight_search_results";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 51;
  *v16 = "lookup_search_results";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 52;
  *v18 = "safari_search_results";
  *(v18 + 1) = 21;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 100;
  *v20 = "service_debug";
  *(v20 + 1) = 13;
  v20[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9069BEC()
{
  type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse._StorageClass(0);
  swift_allocObject();
  result = sub_1B9069C2C();
  qword_1EBAC3478 = result;
  return result;
}

uint64_t sub_1B9069C2C()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  v1 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__error;
  v2 = type metadata accessor for Apple_Parsec_Search_Error(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__traceID);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__appSpecificResults;
  v5 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.OneOf_AppSpecificResults(0);
  __swift_storeEnumTagSinglePayload(v0 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__serviceDebug;
  type metadata accessor for Debuglevelspb_AnyArray(0);
  *(v0 + v6) = sub_1B964C7B0();
  return v0;
}

uint64_t sub_1B9069CE8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC34A0, &qword_1B9685B08);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v25 = &v25 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v25 - v6;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v8 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__error;
  v9 = type metadata accessor for Apple_Parsec_Search_Error(0);
  __swift_storeEnumTagSinglePayload(v1 + v8, 1, 1, v9);
  v10 = (v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__traceID);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__appSpecificResults;
  v12 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.OneOf_AppSpecificResults(0);
  __swift_storeEnumTagSinglePayload(v1 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__serviceDebug;
  type metadata accessor for Debuglevelspb_AnyArray(0);
  *(v1 + v13) = sub_1B964C7B0();
  swift_beginAccess();
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v14;
  *(v1 + 24) = v15;
  v16 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__error;
  swift_beginAccess();
  sub_1B906D5EC(a1 + v16, v7, &qword_1EBAB9188, &qword_1B964D970);
  swift_beginAccess();
  sub_1B906CF4C(v7, v1 + v8, &qword_1EBAB9188, &qword_1B964D970);
  swift_endAccess();
  v17 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__traceID);
  swift_beginAccess();
  v18 = *v17;
  v19 = v17[1];
  swift_beginAccess();
  *v10 = v18;
  v10[1] = v19;

  v20 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__appSpecificResults;
  swift_beginAccess();
  v21 = v25;
  sub_1B906D5EC(a1 + v20, v25, &qword_1EBAC34A0, &qword_1B9685B08);
  swift_beginAccess();
  sub_1B906CF4C(v21, v1 + v11, &qword_1EBAC34A0, &qword_1B9685B08);
  swift_endAccess();
  v22 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__serviceDebug;
  swift_beginAccess();
  v23 = *(a1 + v22);

  swift_beginAccess();
  *(v1 + v13) = v23;

  return v1;
}

uint64_t sub_1B906A034()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__error, &qword_1EBAB9188, &qword_1B964D970);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__appSpecificResults, &qword_1EBAC34A0, &qword_1B9685B08);

  return v0;
}

uint64_t sub_1B906A0B0()
{
  v0 = sub_1B906A034();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse._StorageClass(0);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B9069CE8(v11);
    *(v4 + v8) = v10;
  }

  return sub_1B906A1A4(v10, a1, a2, a3);
}

uint64_t sub_1B906A1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 100:
        sub_1B906B514(a2, a1, a3, a4);
        break;
      case 2:
        sub_1B906A378(a2, a1, a3, a4);
        break;
      case 3:
        sub_1B906A454(a2, a1);
        break;
      case 50:
        sub_1B906A4E0(a1, a2, a3, a4);
        break;
      case 51:
        sub_1B906AA34(a1, a2, a3, a4);
        break;
      case 52:
        sub_1B906AFA4(a1, a2, a3, a4);
        break;
      case 1:
        sub_1B906A2E4(a2, a1, a3, a4);
        break;
    }
  }

  return result;
}

uint64_t sub_1B906A2E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B8F2116C();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B906A378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Search_Error(0);
  sub_1B906CFB8(&qword_1ED9CCC78, type metadata accessor for Apple_Parsec_Search_Error, protocol conformance descriptor for Apple_Parsec_Search_Error);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B906A454(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B906A4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v44 = a3;
  v43 = a2;
  v5 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v40 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v39 = &v36 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC34A0, &qword_1B9685B08);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v37 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - v12;
  v14 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.OneOf_AppSpecificResults(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v36 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3568, &unk_1B9685F50);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v36 - v24;
  __swift_storeEnumTagSinglePayload(&v36 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__appSpecificResults;
  swift_beginAccess();
  v38 = a1;
  v36 = v26;
  sub_1B906D5EC(a1 + v26, v13, &qword_1EBAC34A0, &qword_1B9685B08);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v13, &qword_1EBAC34A0, &qword_1B9685B08);
  }

  else
  {
    sub_1B906CE08(v13, v19);
    sub_1B906CE08(v19, v17);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B906CEB8();
    }

    else
    {
      sub_1B8D9207C(v25, &qword_1EBAC3568, &unk_1B9685F50);
      v28 = v39;
      sub_1B906CE08(v17, v39);
      sub_1B906CE08(v28, v25);
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }
  }

  sub_1B906CFB8(&qword_1EBAC3560, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults, protocol conformance descriptor for Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults);
  v29 = v41;
  sub_1B964C580();
  if (v29)
  {
    v30 = v25;
    return sub_1B8D9207C(v30, &qword_1EBAC3568, &unk_1B9685F50);
  }

  sub_1B906D5EC(v25, v23, &qword_1EBAC3568, &unk_1B9685F50);
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBAC3568, &unk_1B9685F50);
    v30 = v23;
    return sub_1B8D9207C(v30, &qword_1EBAC3568, &unk_1B9685F50);
  }

  v32 = v40;
  sub_1B906CE08(v23, v40);
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  sub_1B8D9207C(v25, &qword_1EBAC3568, &unk_1B9685F50);
  v33 = v37;
  sub_1B906CE08(v32, v37);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v33, 0, 1, v14);
  v34 = v38;
  v35 = v36;
  swift_beginAccess();
  sub_1B906CF4C(v33, v34 + v35, &qword_1EBAC34A0, &qword_1B9685B08);
  return swift_endAccess();
}

uint64_t sub_1B906AA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a4;
  v46 = a3;
  v45 = a2;
  v5 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v41 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v42 = &v36 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC34A0, &qword_1B9685B08);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v38 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - v12;
  v14 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.OneOf_AppSpecificResults(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v36 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2D30, &unk_1B96E8F80);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v36 - v24;
  __swift_storeEnumTagSinglePayload(&v36 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__appSpecificResults;
  swift_beginAccess();
  v37 = v26;
  sub_1B906D5EC(a1 + v26, v13, &qword_1EBAC34A0, &qword_1B9685B08);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v40 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v13, &qword_1EBAC34A0, &qword_1B9685B08);
  }

  else
  {
    v36 = a1;
    sub_1B906CE08(v13, v19);
    sub_1B906CE08(v19, v17);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v25, &qword_1EBAC2D30, &unk_1B96E8F80);
      v27 = v42;
      sub_1B906CE08(v17, v42);
      sub_1B906CE08(v27, v25);
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B906CEB8();
    }

    a1 = v36;
  }

  sub_1B906CFB8(&qword_1EBAC2CD8, type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults, protocol conformance descriptor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults);
  v28 = v43;
  sub_1B964C580();
  if (v28)
  {
    v29 = v25;
    return sub_1B8D9207C(v29, &qword_1EBAC2D30, &unk_1B96E8F80);
  }

  sub_1B906D5EC(v25, v23, &qword_1EBAC2D30, &unk_1B96E8F80);
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBAC2D30, &unk_1B96E8F80);
    v29 = v23;
    return sub_1B8D9207C(v29, &qword_1EBAC2D30, &unk_1B96E8F80);
  }

  v31 = v41;
  sub_1B906CE08(v23, v41);
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v32 = v40;
  sub_1B8D9207C(v25, &qword_1EBAC2D30, &unk_1B96E8F80);
  v33 = v31;
  v34 = v38;
  sub_1B906CE08(v33, v38);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v34, 0, 1, v32);
  v35 = v37;
  swift_beginAccess();
  sub_1B906CF4C(v34, a1 + v35, &qword_1EBAC34A0, &qword_1B9685B08);
  return swift_endAccess();
}

uint64_t sub_1B906AFA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a4;
  v46 = a3;
  v45 = a2;
  v5 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v41 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v42 = &v36 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC34A0, &qword_1B9685B08);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v38 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - v12;
  v14 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.OneOf_AppSpecificResults(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v36 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3570, &unk_1B9685F60);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v36 - v24;
  __swift_storeEnumTagSinglePayload(&v36 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__appSpecificResults;
  swift_beginAccess();
  v37 = v26;
  sub_1B906D5EC(a1 + v26, v13, &qword_1EBAC34A0, &qword_1B9685B08);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v40 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v13, &qword_1EBAC34A0, &qword_1B9685B08);
  }

  else
  {
    v36 = a1;
    sub_1B906CE08(v13, v19);
    sub_1B906CE08(v19, v17);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B8D9207C(v25, &qword_1EBAC3570, &unk_1B9685F60);
      v27 = v42;
      sub_1B906CE08(v17, v42);
      sub_1B906CE08(v27, v25);
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B906CEB8();
    }

    a1 = v36;
  }

  sub_1B906CFB8(&qword_1ED9CF110, type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults, protocol conformance descriptor for Apple_Parsec_Safari_V1alpha_SafariSearchResults);
  v28 = v43;
  sub_1B964C580();
  if (v28)
  {
    v29 = v25;
    return sub_1B8D9207C(v29, &qword_1EBAC3570, &unk_1B9685F60);
  }

  sub_1B906D5EC(v25, v23, &qword_1EBAC3570, &unk_1B9685F60);
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBAC3570, &unk_1B9685F60);
    v29 = v23;
    return sub_1B8D9207C(v29, &qword_1EBAC3570, &unk_1B9685F60);
  }

  v31 = v41;
  sub_1B906CE08(v23, v41);
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v32 = v40;
  sub_1B8D9207C(v25, &qword_1EBAC3570, &unk_1B9685F60);
  v33 = v31;
  v34 = v38;
  sub_1B906CE08(v33, v38);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v34, 0, 1, v32);
  v35 = v37;
  swift_beginAccess();
  sub_1B906CF4C(v34, a1 + v35, &qword_1EBAC34A0, &qword_1B9685B08);
  return swift_endAccess();
}

uint64_t sub_1B906B514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C280();
  type metadata accessor for Debuglevelspb_AnyArray(0);
  sub_1B906CFB8(&qword_1EBABAE10, type metadata accessor for Debuglevelspb_AnyArray, protocol conformance descriptor for Debuglevelspb_AnyArray);
  sub_1B906CFB8(&qword_1EBABAE08, type metadata accessor for Debuglevelspb_AnyArray, protocol conformance descriptor for Debuglevelspb_AnyArray);
  sub_1B964C3A0();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse(0);
  result = sub_1B906B6A8(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B906B6A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC34A0, &qword_1B9685B08);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v36 - v14;
  v16 = type metadata accessor for Apple_Parsec_Search_Error(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (!*(a1 + 16) || (v19 = *(a1 + 24), v36[10] = *(a1 + 16), v37 = v19, sub_1B8F2116C(), result = sub_1B964C680(), !v4))
  {
    v38 = v12;
    v21 = a4;
    v22 = a3;
    v23 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__error;
    swift_beginAccess();
    sub_1B906D5EC(a1 + v23, v15, &qword_1EBAB9188, &qword_1B964D970);
    if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
    {
      sub_1B8D9207C(v15, &qword_1EBAB9188, &qword_1B964D970);
      v24 = v22;
      v25 = v21;
    }

    else
    {
      sub_1B906CE08(v15, v18);
      sub_1B906CFB8(&qword_1ED9CCC78, type metadata accessor for Apple_Parsec_Search_Error, protocol conformance descriptor for Apple_Parsec_Search_Error);
      v24 = v22;
      v25 = v21;
      sub_1B964C740();
      result = sub_1B906CEB8();
      if (v4)
      {
        return result;
      }
    }

    v26 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__traceID);
    swift_beginAccess();
    v27 = *v26;
    v28 = v26[1];
    v29 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v29 = v27 & 0xFFFFFFFFFFFFLL;
    }

    v30 = v38;
    if (!v29 || (, sub_1B964C700(), result = , !v5))
    {
      v36[0] = v24;
      v31 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__appSpecificResults;
      swift_beginAccess();
      sub_1B906D5EC(a1 + v31, v30, &qword_1EBAC34A0, &qword_1B9685B08);
      v32 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.OneOf_AppSpecificResults(0);
      if (__swift_getEnumTagSinglePayload(v30, 1, v32) == 1)
      {
        goto LABEL_17;
      }

      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        v34 = v5;
        if (EnumCaseMultiPayload == 1)
        {
          sub_1B906BDC0(a1, a2, v36[0], v25);
        }

        else
        {
          sub_1B906BFF4(a1, a2, v36[0], v25);
        }
      }

      else
      {
        v34 = v5;
        sub_1B906BB90(a1, a2, v36[0], v25);
      }

      result = sub_1B906CEB8();
      if (!v34)
      {
LABEL_17:
        v35 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__serviceDebug;
        result = swift_beginAccess();
        if (*(*(a1 + v35) + 16))
        {
          sub_1B964C280();
          type metadata accessor for Debuglevelspb_AnyArray(0);
          sub_1B906CFB8(&qword_1EBABAE10, type metadata accessor for Debuglevelspb_AnyArray, protocol conformance descriptor for Debuglevelspb_AnyArray);
          sub_1B906CFB8(&qword_1EBABAE08, type metadata accessor for Debuglevelspb_AnyArray, protocol conformance descriptor for Debuglevelspb_AnyArray);

          sub_1B964C5E0();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B906BB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC34A0, &qword_1B9685B08);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__appSpecificResults;
  swift_beginAccess();
  sub_1B906D5EC(a1 + v11, v7, &qword_1EBAC34A0, &qword_1B9685B08);
  v12 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.OneOf_AppSpecificResults(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAC34A0, &qword_1B9685B08);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B906CE08(v7, v10);
      sub_1B906CFB8(&qword_1EBAC3560, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults, protocol conformance descriptor for Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults);
      sub_1B964C740();
      return sub_1B906CEB8();
    }

    result = sub_1B906CEB8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B906BDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC34A0, &qword_1B9685B08);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__appSpecificResults;
  swift_beginAccess();
  sub_1B906D5EC(a1 + v11, v7, &qword_1EBAC34A0, &qword_1B9685B08);
  v12 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.OneOf_AppSpecificResults(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAC34A0, &qword_1B9685B08);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B906CE08(v7, v10);
      sub_1B906CFB8(&qword_1EBAC2CD8, type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults, protocol conformance descriptor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults);
      sub_1B964C740();
      return sub_1B906CEB8();
    }

    result = sub_1B906CEB8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B906BFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC34A0, &qword_1B9685B08);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__appSpecificResults;
  swift_beginAccess();
  sub_1B906D5EC(a1 + v11, v7, &qword_1EBAC34A0, &qword_1B9685B08);
  v12 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.OneOf_AppSpecificResults(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAC34A0, &qword_1B9685B08);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B906CE08(v7, v10);
      sub_1B906CFB8(&qword_1ED9CF110, type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults, protocol conformance descriptor for Apple_Parsec_Safari_V1alpha_SafariSearchResults);
      sub_1B964C740();
      return sub_1B906CEB8();
    }

    result = sub_1B906CEB8();
  }

  __break(1u);
  return result;
}

uint64_t static Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_14();
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {

    v7 = sub_1B906C2F4(v5, v6);

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_12_19();
  sub_1B906CFB8(v8, v9, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

uint64_t sub_1B906C2F4(uint64_t a1, uint64_t a2)
{
  v61 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.OneOf_AppSpecificResults(0);
  MEMORY[0x1EEE9AC00](v61);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3558, &unk_1B9685F40);
  MEMORY[0x1EEE9AC00](v59);
  v7 = &v53 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC34A0, &qword_1B9685B08);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v56 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v60 = &v53 - v11;
  v12 = type metadata accessor for Apple_Parsec_Search_Error(0);
  MEMORY[0x1EEE9AC00](v12);
  v58 = (&v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9190, &qword_1B964D978);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v53 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v53 - v21;
  swift_beginAccess();
  v23 = *(a1 + 16);
  swift_beginAccess();
  v24 = *(a2 + 16);
  if (*(a2 + 24) != 1)
  {
    if (v23 != v24)
    {
      goto LABEL_31;
    }

    goto LABEL_11;
  }

  if (v24)
  {
    if (v24 == 1)
    {
      if (v23 != 1)
      {
        goto LABEL_31;
      }

LABEL_11:
      v54 = v5;
      v55 = v7;
      v57 = a2;
      v25 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__error;
      swift_beginAccess();
      sub_1B906D5EC(a1 + v25, v22, &qword_1EBAB9188, &qword_1B964D970);
      v26 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__error;
      v27 = v57;
      swift_beginAccess();
      v28 = *(v14 + 48);
      sub_1B906D5EC(v22, v16, &qword_1EBAB9188, &qword_1B964D970);
      sub_1B906D5EC(v27 + v26, &v16[v28], &qword_1EBAB9188, &qword_1B964D970);
      if (__swift_getEnumTagSinglePayload(v16, 1, v12) == 1)
      {

        sub_1B8D9207C(v22, &qword_1EBAB9188, &qword_1B964D970);
        if (__swift_getEnumTagSinglePayload(&v16[v28], 1, v12) == 1)
        {
          sub_1B8D9207C(v16, &qword_1EBAB9188, &qword_1B964D970);
LABEL_18:
          v35 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__traceID);
          swift_beginAccess();
          v36 = *v35;
          v37 = v35[1];
          v38 = (v27 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__traceID);
          swift_beginAccess();
          v39 = v36 == *v38 && v37 == v38[1];
          if (!v39 && (sub_1B964C9F0() & 1) == 0)
          {
            goto LABEL_30;
          }

          v40 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__appSpecificResults;
          swift_beginAccess();
          v41 = a1 + v40;
          v42 = v57;
          v43 = v60;
          sub_1B906D5EC(v41, v60, &qword_1EBAC34A0, &qword_1B9685B08);
          v44 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__appSpecificResults;
          swift_beginAccess();
          v45 = *(v59 + 48);
          v46 = v55;
          sub_1B906D5EC(v43, v55, &qword_1EBAC34A0, &qword_1B9685B08);
          sub_1B906D5EC(v42 + v44, v46 + v45, &qword_1EBAC34A0, &qword_1B9685B08);
          v47 = v61;
          if (__swift_getEnumTagSinglePayload(v46, 1, v61) == 1)
          {
            sub_1B8D9207C(v43, &qword_1EBAC34A0, &qword_1B9685B08);
            if (__swift_getEnumTagSinglePayload(v46 + v45, 1, v47) == 1)
            {
              sub_1B8D9207C(v46, &qword_1EBAC34A0, &qword_1B9685B08);
LABEL_34:
              swift_beginAccess();
              swift_beginAccess();

              sub_1B8DAFA20();
              v48 = v52;

              return v48 & 1;
            }
          }

          else
          {
            sub_1B906D5EC(v46, v56, &qword_1EBAC34A0, &qword_1B9685B08);
            if (__swift_getEnumTagSinglePayload(v46 + v45, 1, v47) != 1)
            {
              sub_1B906CE08(v46 + v45, v54);
              static Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.OneOf_AppSpecificResults.== infix(_:_:)();
              v51 = v50;
              sub_1B906CEB8();
              sub_1B8D9207C(v43, &qword_1EBAC34A0, &qword_1B9685B08);
              sub_1B906CEB8();
              sub_1B8D9207C(v46, &qword_1EBAC34A0, &qword_1B9685B08);
              if (v51)
              {
                goto LABEL_34;
              }

              goto LABEL_30;
            }

            sub_1B8D9207C(v43, &qword_1EBAC34A0, &qword_1B9685B08);
            sub_1B906CEB8();
          }

          v29 = &qword_1EBAC3558;
          v30 = &unk_1B9685F40;
          v31 = v46;
          goto LABEL_29;
        }
      }

      else
      {
        sub_1B906D5EC(v16, v20, &qword_1EBAB9188, &qword_1B964D970);
        if (__swift_getEnumTagSinglePayload(&v16[v28], 1, v12) != 1)
        {
          v32 = &v16[v28];
          v33 = v58;
          sub_1B906CE08(v32, v58);

          v34 = static Apple_Parsec_Search_Error.== infix(_:_:)(v20, v33);
          sub_1B906CEB8();
          sub_1B8D9207C(v22, &qword_1EBAB9188, &qword_1B964D970);
          sub_1B906CEB8();
          sub_1B8D9207C(v16, &qword_1EBAB9188, &qword_1B964D970);
          if ((v34 & 1) == 0)
          {
LABEL_30:

            goto LABEL_31;
          }

          goto LABEL_18;
        }

        sub_1B8D9207C(v22, &qword_1EBAB9188, &qword_1B964D970);
        sub_1B906CEB8();
      }

      v29 = &qword_1EBAB9190;
      v30 = &qword_1B964D978;
      v31 = v16;
LABEL_29:
      sub_1B8D9207C(v31, v29, v30);
      goto LABEL_30;
    }

    if (v23 == 2)
    {
      goto LABEL_11;
    }
  }

  else if (!v23)
  {
    goto LABEL_11;
  }

LABEL_31:
  v48 = 0;
  return v48 & 1;
}

uint64_t sub_1B906CBC0(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, const char *a4)
{
  sub_1B964CA70();
  a1(0);
  v6 = OUTLINED_FUNCTION_461();
  sub_1B906CFB8(v6, v7, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B906CC98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B906CFB8(&qword_1EBAC3548, type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse, protocol conformance descriptor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B906CD18(uint64_t a1)
{
  v2 = sub_1B906CFB8(&qword_1EBAC34F0, type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse, protocol conformance descriptor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B906CD88(uint64_t a1, uint64_t a2)
{
  sub_1B906CFB8(&qword_1EBAC34F0, type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse, protocol conformance descriptor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse);

  return sub_1B964C5D0();
}

uint64_t sub_1B906CE08(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_28_1();
  v4(v3);
  OUTLINED_FUNCTION_59_1();
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return a2;
}

uint64_t sub_1B906CE60(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_28_1();
  v4(v3);
  OUTLINED_FUNCTION_59_1();
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return a2;
}

uint64_t sub_1B906CEB8()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1B906CF4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_61_4(a1, a2, a3, a4);
  OUTLINED_FUNCTION_59_1();
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v4;
}

uint64_t sub_1B906CFB8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void sub_1B906D268(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B906D33C(319, &qword_1EDA04118, type metadata accessor for Apple_Parsec_Search_PegasusQueryContext);
    if (v2 <= 0x3F)
    {
      sub_1B906D33C(319, &qword_1ED9ED410, type metadata accessor for Searchfoundation_DrillDownMetadata);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B906D33C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B964C930();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B906D3B8(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B906D43C(uint64_t a1)
{
  result = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1B906D4CC(uint64_t a1)
{
  sub_1B906D33C(319, &qword_1ED9EDE88, type metadata accessor for Apple_Parsec_Search_Error);
  if (v1 <= 0x3F)
  {
    sub_1B906D33C(319, &qword_1EBAC3540, type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.OneOf_AppSpecificResults);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1B906D5EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_61_4(a1, a2, a3, a4);
  OUTLINED_FUNCTION_59_1();
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_16_16()
{
  type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_29_17()
{

  return sub_1B906D5EC(v0 + v4, v2, v1, v3);
}

uint64_t OUTLINED_FUNCTION_32_12()
{

  return sub_1B8D9207C(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_37_6()
{

  return sub_1B906D5EC(v0 + v4, v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_52_5@<X0>(uint64_t a1@<X8>)
{
  *(v3 + 40) = a1;

  return sub_1B906D5EC(v1 + a1, v2, v4, v5);
}

uint64_t OUTLINED_FUNCTION_53_7(uint64_t a1)
{

  return sub_1B906D5EC(a1, v3, v1, v2);
}

uint64_t OUTLINED_FUNCTION_55_4(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_56_4()
{
  type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_61_4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_62_2@<X0>(uint64_t a1@<X8>)
{

  return sub_1B906D5EC(v1 + a1, v3, v2, v4);
}

uint64_t Apple_Parsec_Responseframework_PatternDrivenExperience.patternComponents.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Apple_Parsec_Responseframework_PatternDrivenExperience.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Apple_Parsec_Responseframework_PatternDrivenExperience(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Apple_Parsec_Responseframework_PatternDrivenExperience.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Responseframework_PatternDrivenExperience(v2) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Apple_Parsec_Responseframework_PatternDrivenExperience.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Responseframework_PatternDrivenExperience(v0);
  return nullsub_1;
}

uint64_t Apple_Parsec_Responseframework_PatternDrivenExperience.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Parsec_Responseframework_PatternDrivenExperience(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B906DB44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90B0, &unk_1B964D8A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Apple_Parsec_Responseframework_PatternComponent.patternModel.getter@<X0>(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90B0, &unk_1B964D8A0);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - v4;
  sub_1B8D92024();
  v6 = type metadata accessor for Apple_Parsec_Responseframework_PatternComponent.OneOf_Component(0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_1B8D9207C(v5, &qword_1EBAB90B0, &unk_1B964D8A0);
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    return OUTLINED_FUNCTION_19_12(0xE000000000000000, xmmword_1B9652FE0);
  }

  else
  {
    OUTLINED_FUNCTION_0_50();
    return sub_1B9070290();
  }
}

uint64_t sub_1B906DCCC(uint64_t a1)
{
  v1 = type metadata accessor for Apple_Parsec_Responseframework_PatternModel(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1B906E33C();
  return Apple_Parsec_Responseframework_PatternComponent.patternModel.setter();
}

uint64_t Apple_Parsec_Responseframework_PatternComponent.patternModel.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB90B0, &unk_1B964D8A0);
  OUTLINED_FUNCTION_0_50();
  OUTLINED_FUNCTION_432();
  sub_1B9070290();
  v1 = type metadata accessor for Apple_Parsec_Responseframework_PatternComponent.OneOf_Component(0);

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t Apple_Parsec_Responseframework_PatternModel.init()@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return OUTLINED_FUNCTION_19_12(0xE000000000000000, xmmword_1B9652FE0);
}

void (*Apple_Parsec_Responseframework_PatternComponent.patternModel.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90B0, &unk_1B964D8A0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  type metadata accessor for Apple_Parsec_Responseframework_PatternModel(0);
  OUTLINED_FUNCTION_59_1();
  v8 = *(v7 + 64);
  v3[2] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v3[3] = v9;
  OUTLINED_FUNCTION_186();
  sub_1B8D92024();
  v10 = type metadata accessor for Apple_Parsec_Responseframework_PatternComponent.OneOf_Component(0);
  v3[4] = v10;
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    sub_1B8D9207C(v6, &qword_1EBAB90B0, &unk_1B964D8A0);
    *v9 = 0;
    v9[1] = 0xE000000000000000;
    *(v9 + 1) = xmmword_1B9652FE0;
    v9[4] = 0;
    v9[5] = 0xE000000000000000;
    v9[6] = 0;
    v9[7] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  }

  else
  {
    OUTLINED_FUNCTION_0_50();
    sub_1B9070290();
  }

  return sub_1B906DFBC;
}

void sub_1B906DFBC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = **a1;
  if (a2)
  {
    sub_1B906E33C();
    sub_1B8D9207C(v6, &qword_1EBAB90B0, &unk_1B964D8A0);
    sub_1B9070290();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_5_20();
    sub_1B906E0BC();
  }

  else
  {
    sub_1B8D9207C(**a1, &qword_1EBAB90B0, &unk_1B964D8A0);
    OUTLINED_FUNCTION_0_50();
    sub_1B9070290();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v5);
  free(v4);

  free(v2);
}

uint64_t sub_1B906E0BC()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t Apple_Parsec_Responseframework_PatternComponent.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Apple_Parsec_Responseframework_PatternComponent(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Apple_Parsec_Responseframework_PatternComponent.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Responseframework_PatternComponent(v2) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Apple_Parsec_Responseframework_PatternComponent.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Responseframework_PatternComponent(v0);
  return nullsub_1;
}

uint64_t static Apple_Parsec_Responseframework_PatternComponent.OneOf_Component.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90A8, &qword_1B964D898);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  sub_1B906E33C();
  sub_1B906E33C();
  v2 = static Apple_Parsec_Responseframework_PatternModel.== infix(_:_:)();
  sub_1B906E0BC();
  sub_1B906E0BC();
  return v2 & 1;
}

uint64_t sub_1B906E33C()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t static Apple_Parsec_Responseframework_PatternModel.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_37(v2);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if ((MEMORY[0x1BFADC060](v1[2], v1[3], v0[2], v0[3]) & 1) == 0)
  {
    return 0;
  }

  v6 = v1[4] == v0[4] && v1[5] == v0[5];
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = v1[6] == v0[6] && v1[7] == v0[7];
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Responseframework_PatternModel(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_26();
  v10 = sub_1B8CD2570(v8, v9, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v10) & 1;
}

uint64_t Apple_Parsec_Responseframework_PatternComponent.init()()
{
  v1 = OUTLINED_FUNCTION_27();
  v2 = type metadata accessor for Apple_Parsec_Responseframework_PatternComponent.OneOf_Component(v1);
  __swift_storeEnumTagSinglePayload(v0, 1, 1, v2);
  type metadata accessor for Apple_Parsec_Responseframework_PatternComponent(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Responseframework_PatternModel.patternID.setter()
{
  OUTLINED_FUNCTION_16();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_Responseframework_PatternModel.patternParameters.getter()
{
  v0 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v0, v1);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Responseframework_PatternModel.patternParameters.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Responseframework_PatternModel.patternBundleID.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Apple_Parsec_Responseframework_PatternModel.patternTemplateDirectory.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Apple_Parsec_Responseframework_PatternModel.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Apple_Parsec_Responseframework_PatternModel(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Apple_Parsec_Responseframework_PatternModel.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Responseframework_PatternModel(v2) + 32);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Apple_Parsec_Responseframework_PatternModel.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Responseframework_PatternModel(v0);
  return nullsub_1;
}

uint64_t sub_1B906E7EC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC3578);
  __swift_project_value_buffer(v0, qword_1EBAC3578);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "pattern_siri_plugin_identifier";
  *(v6 + 8) = 30;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "pattern_components";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Responseframework_PatternDrivenExperience.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v2 || (v6 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_1B906EA4C(v1, v0, v4, v3);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t sub_1B906EA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Responseframework_PatternComponent(0);
  sub_1B8CD2570(&qword_1EBAC35C0, type metadata accessor for Apple_Parsec_Responseframework_PatternComponent, protocol conformance descriptor for Apple_Parsec_Responseframework_PatternComponent);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Responseframework_PatternDrivenExperience.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  OUTLINED_FUNCTION_1();
  if (!v6 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), (v5 = v4) == 0))
  {
    if (!*(*(v3 + 16) + 16) || (type metadata accessor for Apple_Parsec_Responseframework_PatternComponent(0), sub_1B8CD2570(&qword_1EBAC35C0, type metadata accessor for Apple_Parsec_Responseframework_PatternComponent, protocol conformance descriptor for Apple_Parsec_Responseframework_PatternComponent), result = sub_1B964C730(), !v5))
    {
      type metadata accessor for Apple_Parsec_Responseframework_PatternDrivenExperience(0);
      OUTLINED_FUNCTION_12();
      return sub_1B964C290();
    }
  }

  return result;
}

uint64_t sub_1B906ED34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2570(&qword_1EBAC3638, type metadata accessor for Apple_Parsec_Responseframework_PatternDrivenExperience, protocol conformance descriptor for Apple_Parsec_Responseframework_PatternDrivenExperience);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B906EDB4(uint64_t a1)
{
  v2 = sub_1B8CD2570(&qword_1EBAC35F0, type metadata accessor for Apple_Parsec_Responseframework_PatternDrivenExperience, protocol conformance descriptor for Apple_Parsec_Responseframework_PatternDrivenExperience);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B906EE24(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2570(&qword_1EBAC35F0, type metadata accessor for Apple_Parsec_Responseframework_PatternDrivenExperience, protocol conformance descriptor for Apple_Parsec_Responseframework_PatternDrivenExperience);

  return sub_1B964C5D0();
}

uint64_t sub_1B906EEBC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC3590);
  __swift_project_value_buffer(v0, qword_1EBAC3590);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B964D050;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "pattern_model";
  *(v4 + 8) = 13;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Responseframework_PatternComponent.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v5 = OUTLINED_FUNCTION_432();
      sub_1B906F0A0(v5, v6, v2, v1);
    }
  }

  return result;
}

uint64_t sub_1B906F0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v30 = a2;
  v5 = type metadata accessor for Apple_Parsec_Responseframework_PatternModel(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v26 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90B0, &unk_1B964D8A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Responseframework_PatternComponent.OneOf_Component(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3640, &unk_1B96864E0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8D92024();
  v24 = v11;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB90B0, &unk_1B964D8A0);
  }

  else
  {
    sub_1B9070290();
    sub_1B9070290();
    sub_1B8D9207C(v18, &qword_1EBAC3640, &unk_1B96864E0);
    sub_1B9070290();
    sub_1B9070290();
    __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
  }

  sub_1B8CD2570(&qword_1EBAC35D0, type metadata accessor for Apple_Parsec_Responseframework_PatternModel, protocol conformance descriptor for Apple_Parsec_Responseframework_PatternModel);
  v20 = v27;
  sub_1B964C580();
  if (v20)
  {
    v21 = v18;
    return sub_1B8D9207C(v21, &qword_1EBAC3640, &unk_1B96864E0);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC3640, &unk_1B96864E0);
    v21 = v16;
    return sub_1B8D9207C(v21, &qword_1EBAC3640, &unk_1B96864E0);
  }

  sub_1B9070290();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  sub_1B8D9207C(v18, &qword_1EBAC3640, &unk_1B96864E0);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB90B0, &unk_1B964D8A0);
  sub_1B9070290();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v24);
}

uint64_t Apple_Parsec_Responseframework_PatternComponent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90B0, &unk_1B964D8A0);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  type metadata accessor for Apple_Parsec_Responseframework_PatternModel(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v9);
  v13 = v3;
  sub_1B8D92024();
  v10 = type metadata accessor for Apple_Parsec_Responseframework_PatternComponent.OneOf_Component(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v10) == 1)
  {
    sub_1B8D9207C(v8, &qword_1EBAB90B0, &unk_1B964D8A0);
  }

  else
  {
    OUTLINED_FUNCTION_0_50();
    sub_1B9070290();
    sub_1B8CD2570(&qword_1EBAC35D0, type metadata accessor for Apple_Parsec_Responseframework_PatternModel, protocol conformance descriptor for Apple_Parsec_Responseframework_PatternModel);
    sub_1B964C740();
    OUTLINED_FUNCTION_5_20();
    result = sub_1B906E0BC();
    if (v4)
    {
      return result;
    }
  }

  type metadata accessor for Apple_Parsec_Responseframework_PatternComponent(0);
  return sub_1B964C290();
}

uint64_t static Apple_Parsec_Responseframework_PatternComponent.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  type metadata accessor for Apple_Parsec_Responseframework_PatternComponent.OneOf_Component(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90B0, &unk_1B964D8A0);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90B8, &qword_1B9685F70);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - v6;
  v8 = *(v5 + 56);
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_50(v7);
  if (v9)
  {
    OUTLINED_FUNCTION_50(&v7[v8]);
    if (v9)
    {
      sub_1B8D9207C(v7, &qword_1EBAB90B0, &unk_1B964D8A0);
LABEL_12:
      type metadata accessor for Apple_Parsec_Responseframework_PatternComponent(0);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_2_26();
      v14 = sub_1B8CD2570(v12, v13, MEMORY[0x1E69AAC10]);
      v10 = OUTLINED_FUNCTION_634(v14);
      return v10 & 1;
    }

    goto LABEL_9;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_50(&v7[v8]);
  if (v9)
  {
    sub_1B906E0BC();
LABEL_9:
    sub_1B8D9207C(v7, &qword_1EBAB90B8, &qword_1B9685F70);
    goto LABEL_10;
  }

  sub_1B9070290();
  v11 = static Apple_Parsec_Responseframework_PatternComponent.OneOf_Component.== infix(_:_:)();
  sub_1B906E0BC();
  sub_1B906E0BC();
  sub_1B8D9207C(v7, &qword_1EBAB90B0, &unk_1B964D8A0);
  if (v11)
  {
    goto LABEL_12;
  }

LABEL_10:
  v10 = 0;
  return v10 & 1;
}

uint64_t sub_1B906FA6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2570(&qword_1EBAC3630, type metadata accessor for Apple_Parsec_Responseframework_PatternComponent, protocol conformance descriptor for Apple_Parsec_Responseframework_PatternComponent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B906FAEC(uint64_t a1)
{
  v2 = sub_1B8CD2570(&qword_1EBAC35C0, type metadata accessor for Apple_Parsec_Responseframework_PatternComponent, protocol conformance descriptor for Apple_Parsec_Responseframework_PatternComponent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B906FB5C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2570(&qword_1EBAC35C0, type metadata accessor for Apple_Parsec_Responseframework_PatternComponent, protocol conformance descriptor for Apple_Parsec_Responseframework_PatternComponent);

  return sub_1B964C5D0();
}

uint64_t sub_1B906FBF4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC35A8);
  __swift_project_value_buffer(v0, qword_1EBAC35A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "pattern_id";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "pattern_parameters";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "pattern_bundle_id";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "pattern_template_directory";
  *(v14 + 1) = 26;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Responseframework_PatternModel.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C470();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Responseframework_PatternModel.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1();
  if (!v2 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
  {
    if (sub_1B8D99EA8(*(v0 + 16), *(v0 + 24)) || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C6A0(), !v1))
    {
      OUTLINED_FUNCTION_1();
      if (!v4 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
      {
        OUTLINED_FUNCTION_1();
        if (!v5 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
        {
          type metadata accessor for Apple_Parsec_Responseframework_PatternModel(0);
          OUTLINED_FUNCTION_12();
          return sub_1B964C290();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B907003C(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  sub_1B964CA70();
  a1(0);
  sub_1B8CD2570(a2, a3, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9070120(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2570(&qword_1EBAC3628, type metadata accessor for Apple_Parsec_Responseframework_PatternModel, protocol conformance descriptor for Apple_Parsec_Responseframework_PatternModel);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90701A0(uint64_t a1)
{
  v2 = sub_1B8CD2570(&qword_1EBAC35D0, type metadata accessor for Apple_Parsec_Responseframework_PatternModel, protocol conformance descriptor for Apple_Parsec_Responseframework_PatternModel);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9070210(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2570(&qword_1EBAC35D0, type metadata accessor for Apple_Parsec_Responseframework_PatternModel, protocol conformance descriptor for Apple_Parsec_Responseframework_PatternModel);

  return sub_1B964C5D0();
}

uint64_t sub_1B9070290()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

void sub_1B9070670(uint64_t a1)
{
  sub_1B9070810(319, &qword_1EBAC3620, type metadata accessor for Apple_Parsec_Responseframework_PatternComponent, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B907075C(uint64_t a1)
{
  sub_1B9070810(319, &qword_1EBAB4100, type metadata accessor for Apple_Parsec_Responseframework_PatternComponent.OneOf_Component, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B9070810(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B9070874(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Responseframework_PatternModel(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, j____swift_get_extra_inhabitant_index_19Tm);
}

uint64_t sub_1B90708CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Apple_Parsec_Responseframework_PatternModel(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, j____swift_store_extra_inhabitant_index_20Tm);
}

uint64_t sub_1B9070934(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Responseframework_PatternModel(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

uint64_t __swift_get_extra_inhabitant_index_19Tm(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_699(*(a3 + 32));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void __swift_store_extra_inhabitant_index_20Tm()
{
  OUTLINED_FUNCTION_468();
  if (v3 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1B964C2B0();
    v5 = OUTLINED_FUNCTION_699(*(v4 + 32));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1B9070AF0(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_19_12@<X0>(unint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v2[1] = a2;
  v2[2].n128_u64[0] = 0;
  v2[2].n128_u64[1] = a1;
  v2[3].n128_u64[0] = 0;
  v2[3].n128_u64[1] = a1;
  type metadata accessor for Apple_Parsec_Responseframework_PatternModel(0);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResults.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = xmmword_1B9652FE0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0xE000000000000000;
  *(a1 + 72) = 0;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 80) = MEMORY[0x1E69E7CC0];
  *(a1 + 88) = v2;
  *(a1 + 96) = v2;
  v3 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(v3 + 60);
  v5 = sub_1B964C150();

  return __swift_storeEnumTagSinglePayload(a1 + v4, 1, 1, v5);
}

uint64_t type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults(uint64_t a1)
{
  result = qword_1ED9CF0F8;
  if (!qword_1ED9CF0F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static Apple_Parsec_Safari_V1alpha_SafariSearchResults.== infix(_:_:)()
{
  OUTLINED_FUNCTION_16();
  v2 = sub_1B964C150();
  OUTLINED_FUNCTION_30_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2CB0, &qword_1B96835C0);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2CB8, &qword_1B96835C8);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  v16 = *v1 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v16 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_34;
  }

  v17 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
  if (!v17 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_34;
  }

  v18 = *(type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults(0) + 60);
  v19 = *(v12 + 48);
  sub_1B904BDB4(v1 + v18, v15);
  sub_1B904BDB4(v0 + v18, &v15[v19]);
  OUTLINED_FUNCTION_178(v15, 1, v2);
  if (!v16)
  {
    sub_1B904BDB4(v15, v11);
    OUTLINED_FUNCTION_178(&v15[v19], 1, v2);
    if (!v20)
    {
      (*(v4 + 32))(v7, &v15[v19], v2);
      OUTLINED_FUNCTION_2_27();
      sub_1B8CD25B8(v21, v22, MEMORY[0x1E69AA968]);
      v23 = sub_1B964C850();
      v24 = *(v4 + 8);
      v24(v7, v2);
      v24(v11, v2);
      sub_1B8D9207C(v15, &qword_1EBAC2CB0, &qword_1B96835C0);
      if (v23)
      {
        goto LABEL_21;
      }

LABEL_34:
      v29 = 0;
      return v29 & 1;
    }

    (*(v4 + 8))(v11, v2);
LABEL_19:
    sub_1B8D9207C(v15, &qword_1EBAC2CB8, &qword_1B96835C8);
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_178(&v15[v19], 1, v2);
  if (!v16)
  {
    goto LABEL_19;
  }

  sub_1B8D9207C(v15, &qword_1EBAC2CB0, &qword_1B96835C0);
LABEL_21:
  if ((MEMORY[0x1BFADC060](*(v1 + 32), *(v1 + 40), *(v0 + 32), *(v0 + 40)) & 1) == 0 || *(v1 + 48) != *(v0 + 48))
  {
    goto LABEL_34;
  }

  v25 = *(v1 + 56) == *(v0 + 56) && *(v1 + 64) == *(v0 + 64);
  if (!v25 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_34;
  }

  if (*(v1 + 72) != *(v0 + 72))
  {
    goto LABEL_34;
  }

  if (*(v1 + 73) != *(v0 + 73))
  {
    goto LABEL_34;
  }

  sub_1B8D75E98(*(v1 + 80), *(v0 + 80));
  if ((v26 & 1) == 0)
  {
    goto LABEL_34;
  }

  sub_1B8D75E98(*(v1 + 88), *(v0 + 88));
  if ((v27 & 1) == 0)
  {
    goto LABEL_34;
  }

  sub_1B8D61678(*(v1 + 96), *(v0 + 96));
  if ((v28 & 1) == 0)
  {
    goto LABEL_34;
  }

  sub_1B964C2B0();
  sub_1B8CD25B8(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v29 = sub_1B964C850();
  return v29 & 1;
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResults.prefix.setter()
{
  OUTLINED_FUNCTION_16();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResults.query.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResults.completionScore.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2CB0, &qword_1B96835C0);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_15_16();
  sub_1B904BDB4(v1 + *(v6 + 60), v2);
  v7 = sub_1B964C150();
  v8 = OUTLINED_FUNCTION_178(v2, 1, v7);
  if (!v9)
  {
    return (*(*(v7 - 8) + 32))(a1, v2, v7);
  }

  MEMORY[0x1BFADC0D0](v8);
  result = OUTLINED_FUNCTION_178(v2, 1, v7);
  if (!v9)
  {
    return sub_1B8D9207C(v2, &qword_1EBAC2CB0, &qword_1B96835C0);
  }

  return result;
}

uint64_t sub_1B90712C4(uint64_t a1)
{
  v2 = sub_1B964C150();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return Apple_Parsec_Safari_V1alpha_SafariSearchResults.completionScore.setter(v4);
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResults.completionScore.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults(0) + 60);
  sub_1B8D9207C(v1 + v3, &qword_1EBAC2CB0, &qword_1B96835C0);
  v4 = sub_1B964C150();
  OUTLINED_FUNCTION_59_1();
  (*(v5 + 32))(v1 + v3, a1, v4);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Apple_Parsec_Safari_V1alpha_SafariSearchResults.completionScore.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2CB0, &qword_1B96835C0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = sub_1B964C150();
  v3[2] = v7;
  OUTLINED_FUNCTION_30_1();
  v9 = v8;
  v3[3] = v8;
  v11 = *(v10 + 64);
  v3[4] = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  v3[5] = v12;
  v13 = *(type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults(0) + 60);
  *(v3 + 12) = v13;
  sub_1B904BDB4(v1 + v13, v6);
  v14 = OUTLINED_FUNCTION_178(v6, 1, v7);
  if (v15)
  {
    MEMORY[0x1BFADC0D0](v14);
    OUTLINED_FUNCTION_178(v6, 1, v7);
    if (!v15)
    {
      sub_1B8D9207C(v6, &qword_1EBAC2CB0, &qword_1B96835C0);
    }
  }

  else
  {
    (*(v9 + 32))(v12, v6, v7);
  }

  return sub_1B904C124;
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResults.hasCompletionScore.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2CB0, &qword_1B96835C0);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_15_16();
  sub_1B904BDB4(v0 + *(v4 + 60), v1);
  v5 = sub_1B964C150();
  OUTLINED_FUNCTION_178(v1, 1, v5);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  sub_1B8D9207C(v1, &qword_1EBAC2CB0, &qword_1B96835C0);
  return v7;
}

Swift::Void __swiftcall Apple_Parsec_Safari_V1alpha_SafariSearchResults.clearCompletionScore()()
{
  v1 = *(type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults(0) + 60);
  sub_1B8D9207C(v0 + v1, &qword_1EBAC2CB0, &qword_1B96835C0);
  v2 = sub_1B964C150();

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResults.feedbackQuery.getter()
{
  v0 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v0, v1);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResults.feedbackQuery.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 32), *(v1 + 40));
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResults.serverCompletion.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResults.suggestions.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResults.clientCorrections.setter(uint64_t a1)
{

  *(v1 + 88) = a1;
  return result;
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResults.results.setter(uint64_t a1)
{

  *(v1 + 96) = a1;
  return result;
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResults.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults(0) + 56);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResults.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults(0) + 56);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, a1);
}

uint64_t sub_1B9071AB0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC3648);
  __swift_project_value_buffer(v0, qword_1EBAC3648);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1B96511C0;
  v4 = v30 + v3;
  v5 = v30 + v3 + v1[14];
  *(v30 + v3) = 1;
  *v5 = "prefix";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "query";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "completion_score";
  *(v11 + 1) = 16;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "feedback_query";
  *(v13 + 1) = 14;
  v13[16] = 2;
  *(v13 + 3) = "fbq";
  *(v13 + 4) = 3;
  v13[40] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "suggestions_are_blended";
  *(v15 + 1) = 23;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "server_completion";
  *(v17 + 1) = 17;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "corrected";
  *(v19 + 1) = 9;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "online_corrected";
  *(v21 + 1) = 16;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 11;
  *v23 = "suggestions";
  *(v23 + 1) = 11;
  v23[16] = 2;
  v8();
  v24 = v1[14];
  v25 = (v4 + 9 * v2);
  *v25 = 12;
  v26 = v25 + v24;
  *v26 = "client_corrections";
  *(v26 + 1) = 18;
  v26[16] = 2;
  *(v26 + 3) = "corrections";
  *(v26 + 4) = 11;
  v26[40] = 2;
  v8();
  v27 = (v4 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 51;
  *v28 = "results";
  *(v28 + 1) = 7;
  v28[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t static Apple_Parsec_Safari_V1alpha_SafariSearchResults._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB70C0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAC3648);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResults.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v2 || (v4 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
        v13 = OUTLINED_FUNCTION_9();
        sub_1B9072090(v13, v14, v15, v16);
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C470();
        break;
      case 5:
      case 7:
      case 8:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 9:
      case 10:
        continue;
      case 11:
        v17 = OUTLINED_FUNCTION_9();
        sub_1B9072144(v17, v18, v19, v20);
        break;
      case 12:
        v9 = OUTLINED_FUNCTION_9();
        sub_1B90721E4(v9, v10, v11, v12);
        break;
      default:
        if (result == 51)
        {
          v5 = OUTLINED_FUNCTION_9();
          sub_1B9072284(v5, v6, v7, v8);
        }

        break;
    }
  }
}

uint64_t sub_1B9072090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults(0);
  sub_1B964C150();
  sub_1B8CD25B8(&qword_1ED9C8FD8, MEMORY[0x1E69AA960], MEMORY[0x1E69AA958]);
  return sub_1B964C580();
}

uint64_t sub_1B9072144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_SearchSuggestion(0);
  sub_1B8CD25B8(&qword_1EBAC3660, type metadata accessor for Searchfoundation_SearchSuggestion, protocol conformance descriptor for Searchfoundation_SearchSuggestion);
  return sub_1B964C570();
}

uint64_t sub_1B90721E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_SearchSuggestion(0);
  sub_1B8CD25B8(&qword_1EBAC3660, type metadata accessor for Searchfoundation_SearchSuggestion, protocol conformance descriptor for Searchfoundation_SearchSuggestion);
  return sub_1B964C570();
}

uint64_t sub_1B9072284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Search_V1alpha_SearchResult(0);
  sub_1B8CD25B8(qword_1ED9CE220, type metadata accessor for Apple_Parsec_Search_V1alpha_SearchResult, protocol conformance descriptor for Apple_Parsec_Search_V1alpha_SearchResult);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResults.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2CB0, &qword_1B96835C0);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - v9;
  v11 = sub_1B964C150();
  OUTLINED_FUNCTION_30_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_1();
  if (!v17 || (result = sub_1B964C700(), !v4))
  {
    OUTLINED_FUNCTION_1();
    if (!v19 || (result = sub_1B964C700(), !v4))
    {
      v37 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults(0);
      sub_1B904BDB4(v3 + *(v37 + 60), v10);
      if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
      {
        sub_1B8D9207C(v10, &qword_1EBAC2CB0, &qword_1B96835C0);
      }

      else
      {
        (*(v13 + 32))(v16, v10, v11);
        OUTLINED_FUNCTION_2_27();
        sub_1B8CD25B8(v20, v21, MEMORY[0x1E69AA958]);
        sub_1B964C740();
        if (v4)
        {
          return (*(v13 + 8))(v16, v11);
        }

        (*(v13 + 8))(v16, v11);
      }

      if (sub_1B8D99EA8(*(v3 + 32), *(v3 + 40)) || (result = sub_1B964C6A0(), !v4))
      {
        if (*(v3 + 48) != 1 || (result = OUTLINED_FUNCTION_11_26(1, 5), (v5 = v4) == 0))
        {
          OUTLINED_FUNCTION_1();
          if (!v22 || (v4 = v5, result = sub_1B964C700(), !v5))
          {
            if (*(v3 + 72) != 1 || (result = OUTLINED_FUNCTION_11_26(1, 7), !v4))
            {
              if (*(v3 + 73) != 1 || (result = OUTLINED_FUNCTION_11_26(1, 8), !v4))
              {
                v23 = *(v3 + 80);
                if (!*(v23 + 16) || (type metadata accessor for Searchfoundation_SearchSuggestion(0), OUTLINED_FUNCTION_3_27(), v26 = sub_1B8CD25B8(v24, v25, protocol conformance descriptor for Searchfoundation_SearchSuggestion), result = OUTLINED_FUNCTION_11_9(v23, 11, v27, v26), !v4))
                {
                  v28 = *(v6 + 88);
                  if (!*(v28 + 16) || (type metadata accessor for Searchfoundation_SearchSuggestion(0), OUTLINED_FUNCTION_3_27(), v31 = sub_1B8CD25B8(v29, v30, protocol conformance descriptor for Searchfoundation_SearchSuggestion), result = OUTLINED_FUNCTION_11_9(v28, 12, v32, v31), !v4))
                  {
                    v33 = *(v6 + 96);
                    if (!*(v33 + 16) || (type metadata accessor for Apple_Parsec_Search_V1alpha_SearchResult(0), v34 = sub_1B8CD25B8(qword_1ED9CE220, type metadata accessor for Apple_Parsec_Search_V1alpha_SearchResult, protocol conformance descriptor for Apple_Parsec_Search_V1alpha_SearchResult), result = OUTLINED_FUNCTION_11_9(v33, 51, v35, v34), !v4))
                    {
                      OUTLINED_FUNCTION_12();
                      return sub_1B964C290();
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

  return result;
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResults.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults(0);
  sub_1B8CD25B8(&qword_1EBAC3668, type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults, protocol conformance descriptor for Apple_Parsec_Safari_V1alpha_SafariSearchResults);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9072844(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD25B8(&qword_1EBAC3680, type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults, protocol conformance descriptor for Apple_Parsec_Safari_V1alpha_SafariSearchResults);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90728C4(uint64_t a1)
{
  v2 = sub_1B8CD25B8(&qword_1ED9CF110, type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults, protocol conformance descriptor for Apple_Parsec_Safari_V1alpha_SafariSearchResults);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9072934(uint64_t a1, uint64_t a2)
{
  sub_1B8CD25B8(&qword_1ED9CF110, type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults, protocol conformance descriptor for Apple_Parsec_Safari_V1alpha_SafariSearchResults);

  return sub_1B964C5D0();
}

void sub_1B9072AFC(uint64_t a1)
{
  sub_1B9072C74(319, &qword_1EBAC3678, type metadata accessor for Searchfoundation_SearchSuggestion, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B9072C74(319, &qword_1ED9C8FA8, type metadata accessor for Apple_Parsec_Search_V1alpha_SearchResult, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v3 <= 0x3F)
      {
        sub_1B9072C74(319, &qword_1ED9C8FD0, MEMORY[0x1E69AA960], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B9072C74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t OUTLINED_FUNCTION_11_26(uint64_t a1, uint64_t a2)
{

  return sub_1B964C670();
}

uint64_t OUTLINED_FUNCTION_15_16()
{

  return type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults(0);
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariQueryContext.previousQuery.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariQueryContext.suggestQueryArg.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariQueryContext.localCompletionInfo.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  Context = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariQueryContext(v7);
  OUTLINED_FUNCTION_32_11(*(Context + 28));
  type metadata accessor for Apple_Parsec_Search_LocalCompletionInfo(0);
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    v10 = MEMORY[0x1E69E7CC0];
    *a1 = MEMORY[0x1E69E7CC0];
    a1[1] = v10;
    a1[2] = v10;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC36A0, &qword_1B96866C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_44();
    OUTLINED_FUNCTION_182();
    return sub_1B907341C();
  }

  return result;
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariQueryContext.localCompletionInfo.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  Context = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariQueryContext(v1);
  sub_1B8D9207C(v0 + *(Context + 28), &qword_1EBAC36A0, &qword_1B96866C0);
  OUTLINED_FUNCTION_1_44();
  OUTLINED_FUNCTION_47_6();
  type metadata accessor for Apple_Parsec_Search_LocalCompletionInfo(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Safari_V1alpha_SafariQueryContext.localCompletionInfo.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_145_1(v5);
  *(v0 + 16) = type metadata accessor for Apple_Parsec_Search_LocalCompletionInfo(v6);
  OUTLINED_FUNCTION_59_1();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = *(type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariQueryContext(v12) + 28);
  *(v0 + 40) = v13;
  v14 = OUTLINED_FUNCTION_115(v13);
  sub_1B8DD9078(v14, v15, &qword_1EBAC36A0, &qword_1B96866C0);
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    v17 = MEMORY[0x1E69E7CC0];
    *v8 = MEMORY[0x1E69E7CC0];
    v8[1] = v17;
    v8[2] = v17;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v5, &qword_1EBAC36A0, &qword_1B96866C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_44();
    OUTLINED_FUNCTION_461();
    sub_1B907341C();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariQueryContext.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariQueryContext(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariQueryContext.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariQueryContext(v2) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Apple_Parsec_Safari_V1alpha_SafariQueryContext.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariQueryContext(v0);
  return nullsub_1;
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariQueryContext.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariQueryContext(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Apple_Parsec_Search_LocalCompletionInfo(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchRequest.searchQuery.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchRequest(v7);
  OUTLINED_FUNCTION_32_11(*(v8 + 20));
  type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery(0);
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    *a1 = 0;
    *(a1 + 8) = 0xE000000000000000;
    *(a1 + 16) = 0;
    *(a1 + 24) = 1;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC2228, &unk_1B967FDC0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_28();
    OUTLINED_FUNCTION_182();
    return sub_1B907341C();
  }

  return result;
}

uint64_t sub_1B907341C()
{
  v1 = OUTLINED_FUNCTION_280();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  v3 = OUTLINED_FUNCTION_432();
  v4(v3);
  return v0;
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchRequest.searchQuery.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchRequest(v1);
  sub_1B8D9207C(v0 + *(v2 + 20), &qword_1EBAC2228, &unk_1B967FDC0);
  OUTLINED_FUNCTION_3_28();
  OUTLINED_FUNCTION_47_6();
  type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Safari_V1alpha_SafariSearchRequest.searchQuery.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_145_1(v5);
  *(v0 + 16) = type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery(v6);
  OUTLINED_FUNCTION_59_1();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = *(type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchRequest(v12) + 20);
  *(v0 + 40) = v13;
  v14 = OUTLINED_FUNCTION_115(v13);
  sub_1B8DD9078(v14, v15, &qword_1EBAC2228, &unk_1B967FDC0);
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    *v8 = 0;
    *(v8 + 8) = 0xE000000000000000;
    *(v8 + 16) = 0;
    *(v8 + 24) = 1;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v5, &qword_1EBAC2228, &unk_1B967FDC0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_28();
    OUTLINED_FUNCTION_461();
    sub_1B907341C();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B907363C()
{
  v1 = OUTLINED_FUNCTION_280();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  v3 = OUTLINED_FUNCTION_432();
  v4(v3);
  return v0;
}

uint64_t sub_1B9073690()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchRequest.hasSearchQuery.getter()
{
  v0 = OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_22_3();
  v3 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchRequest(v2);
  v4 = OUTLINED_FUNCTION_115(*(v3 + 20));
  OUTLINED_FUNCTION_63_4(v4, v5);
  v6 = type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery(0);
  OUTLINED_FUNCTION_11(v6);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Apple_Parsec_Safari_V1alpha_SafariSearchRequest.clearSearchQuery()()
{
  v1 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchRequest(0);
  sub_1B8D9207C(v0 + *(v1 + 20), &qword_1EBAC2228, &unk_1B967FDC0);
  type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchRequest.queryContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchRequest(v7);
  OUTLINED_FUNCTION_32_11(*(v8 + 24));
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v11 = *(Context + 20);
    if (qword_1ED9D38C0 != -1)
    {
      OUTLINED_FUNCTION_12_0(&qword_1ED9D38C0);
    }

    *(a1 + v11) = qword_1ED9D38C8;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, Context);

    if (EnumTagSinglePayload != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBABED40, &qword_1B96809F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_28();
    OUTLINED_FUNCTION_182();
    return sub_1B907341C();
  }

  return result;
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchRequest.queryContext.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchRequest(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_2_28();
  OUTLINED_FUNCTION_47_6();
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Safari_V1alpha_SafariSearchRequest.queryContext.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_145_1(v5);
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(v6);
  *(v0 + 16) = Context;
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_202_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_89_0(v12);
  v14 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchRequest(v13);
  OUTLINED_FUNCTION_16_4(*(v14 + 24));
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = *(Context + 20);
    if (qword_1ED9D38C0 != -1)
    {
      OUTLINED_FUNCTION_12_0(&qword_1ED9D38C0);
    }

    *(v9 + v16) = qword_1ED9D38C8;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, Context);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v5, &qword_1EBABED40, &qword_1B96809F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_28();
    OUTLINED_FUNCTION_246();
    sub_1B907341C();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchRequest.hasQueryContext.getter()
{
  v0 = OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_22_3();
  v3 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchRequest(v2);
  v4 = OUTLINED_FUNCTION_115(*(v3 + 24));
  OUTLINED_FUNCTION_63_4(v4, v5);
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_11(Context);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Apple_Parsec_Safari_V1alpha_SafariSearchRequest.clearQueryContext()()
{
  v1 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchRequest(0);
  sub_1B8D9207C(v0 + *(v1 + 24), &qword_1EBABED40, &qword_1B96809F0);
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchRequest.safariQueryContext.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchRequest(0);
  sub_1B8DD9078(v1 + *(v9 + 28), v8, &qword_1EBAC36A8, &qword_1B96866C8);
  type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariQueryContext(0);
  OUTLINED_FUNCTION_57(v8);
  if (v10)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    a1[2] = 0;
    a1[3] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    type metadata accessor for Apple_Parsec_Search_LocalCompletionInfo(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
    result = OUTLINED_FUNCTION_57(v8);
    if (!v10)
    {
      return sub_1B8D9207C(v8, &qword_1EBAC36A8, &qword_1B96866C8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_21();
    return sub_1B907341C();
  }

  return result;
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchRequest.safariQueryContext.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchRequest(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBAC36A8, &qword_1B96866C8);
  OUTLINED_FUNCTION_10_21();
  OUTLINED_FUNCTION_47_6();
  type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariQueryContext(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Safari_V1alpha_SafariSearchRequest.safariQueryContext.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_145_1(v5);
  *(v0 + 16) = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariQueryContext(v6);
  OUTLINED_FUNCTION_59_1();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchRequest(v12);
  OUTLINED_FUNCTION_16_4(*(v13 + 28));
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    *v8 = 0;
    v8[1] = 0xE000000000000000;
    v8[2] = 0;
    v8[3] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    type metadata accessor for Apple_Parsec_Search_LocalCompletionInfo(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v5, &qword_1EBAC36A8, &qword_1B96866C8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_21();
    OUTLINED_FUNCTION_246();
    sub_1B907341C();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B9073ED0()
{
  OUTLINED_FUNCTION_111_0();
  v6 = v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v7);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_137();
  v10 = v2(0);
  sub_1B8DD9078(v1 + *(v10 + 28), v4, v6, v3);
  v0(0);
  v11 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_178(v11, v12, v13);
  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  OUTLINED_FUNCTION_12();
  sub_1B8D9207C(v16, v17, v18);
  return v15;
}

uint64_t sub_1B9073FC0()
{
  OUTLINED_FUNCTION_111_0();
  v5 = v4(0);
  sub_1B8D9207C(v1 + *(v5 + 28), v3, v2);
  v0(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchRequest.unknownFields.getter()
{
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_432();

  return v1(v0);
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchRequest.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchRequest.init()(uint64_t a1)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchRequest(0);
  type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariQueryContext(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

void Apple_Parsec_Safari_V1alpha_SafariSearchResponse.status.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResponse.status.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResponse.error.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse(v7);
  OUTLINED_FUNCTION_32_11(*(v8 + 32));
  type metadata accessor for Apple_Parsec_Search_Error(0);
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = -1;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB9188, &qword_1B964D970);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_20();
    OUTLINED_FUNCTION_182();
    return sub_1B907341C();
  }

  return result;
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResponse.error.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse(v1);
  sub_1B8D9207C(v0 + *(v2 + 32), &qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_12_20();
  OUTLINED_FUNCTION_47_6();
  type metadata accessor for Apple_Parsec_Search_Error(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Safari_V1alpha_SafariSearchResponse.error.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_145_1(v5);
  *(v0 + 16) = type metadata accessor for Apple_Parsec_Search_Error(v6);
  OUTLINED_FUNCTION_59_1();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = *(type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse(v12) + 32);
  *(v0 + 40) = v13;
  v14 = OUTLINED_FUNCTION_115(v13);
  sub_1B8DD9078(v14, v15, &qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = -1;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v5, &qword_1EBAB9188, &qword_1B964D970);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_20();
    OUTLINED_FUNCTION_461();
    sub_1B907341C();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResponse.hasError.getter()
{
  v0 = OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_22_3();
  v3 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse(v2);
  v4 = OUTLINED_FUNCTION_115(*(v3 + 32));
  OUTLINED_FUNCTION_63_4(v4, v5);
  v6 = type metadata accessor for Apple_Parsec_Search_Error(0);
  OUTLINED_FUNCTION_11(v6);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Apple_Parsec_Safari_V1alpha_SafariSearchResponse.clearError()()
{
  v1 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse(0);
  sub_1B8D9207C(v0 + *(v1 + 32), &qword_1EBAB9188, &qword_1B964D970);
  type metadata accessor for Apple_Parsec_Search_Error(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResponse.searchResults.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse(v7);
  OUTLINED_FUNCTION_32_11(*(v8 + 36));
  type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults(0);
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    Apple_Parsec_Safari_V1alpha_SafariSearchResults.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC3570, &unk_1B9685F60);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_27();
    OUTLINED_FUNCTION_182();
    return sub_1B907341C();
  }

  return result;
}

uint64_t sub_1B9074654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_79();
  sub_1B907363C();
  return a7(v7);
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResponse.searchResults.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse(v1);
  sub_1B8D9207C(v0 + *(v2 + 36), &qword_1EBAC3570, &unk_1B9685F60);
  OUTLINED_FUNCTION_11_27();
  OUTLINED_FUNCTION_47_6();
  type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Safari_V1alpha_SafariSearchResponse.searchResults.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_145_1(v5);
  *(v0 + 16) = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults(v6);
  OUTLINED_FUNCTION_59_1();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse(v12);
  OUTLINED_FUNCTION_16_4(*(v13 + 36));
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    *v8 = 0;
    *(v8 + 8) = 0xE000000000000000;
    *(v8 + 16) = 0;
    *(v8 + 24) = 0xE000000000000000;
    *(v8 + 32) = xmmword_1B9652FE0;
    *(v8 + 48) = 0;
    *(v8 + 56) = 0;
    *(v8 + 64) = 0xE000000000000000;
    *(v8 + 72) = 0;
    v15 = MEMORY[0x1E69E7CC0];
    *(v8 + 80) = MEMORY[0x1E69E7CC0];
    *(v8 + 88) = v15;
    *(v8 + 96) = v15;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    sub_1B964C150();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v5, &qword_1EBAC3570, &unk_1B9685F60);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_27();
    OUTLINED_FUNCTION_246();
    sub_1B907341C();
  }

  OUTLINED_FUNCTION_242();
}

void sub_1B90748E0()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  v3 = v0;
  v5 = *(*v4 + 10);
  v6 = (*v4)[3];
  v7 = (*v4)[4];
  v8 = (*v4)[1];
  v9 = **v4;
  if (v10)
  {
    sub_1B907363C();
    sub_1B8D9207C(v9 + v5, v3, v2);
    sub_1B907341C();
    OUTLINED_FUNCTION_187_1();
    sub_1B9073690();
  }

  else
  {
    sub_1B8D9207C(v9 + v5, v0, v1);
    sub_1B907341C();
    OUTLINED_FUNCTION_187_1();
  }

  free(v7);
  free(v6);
  free(v8);
  OUTLINED_FUNCTION_283();

  free(v11);
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResponse.hasSearchResults.getter()
{
  v0 = OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_22_3();
  v3 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse(v2);
  v4 = OUTLINED_FUNCTION_115(*(v3 + 36));
  OUTLINED_FUNCTION_63_4(v4, v5);
  v6 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults(0);
  OUTLINED_FUNCTION_11(v6);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Apple_Parsec_Safari_V1alpha_SafariSearchResponse.clearSearchResults()()
{
  v1 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse(0);
  sub_1B8D9207C(v0 + *(v1 + 36), &qword_1EBAC3570, &unk_1B9685F60);
  type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResponse.serviceDebug.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResponse.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse(0) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResponse.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse(v2) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Apple_Parsec_Safari_V1alpha_SafariSearchResponse.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse(v0);
  return nullsub_1;
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResponse.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  type metadata accessor for Debuglevelspb_AnyArray(0);
  *(a1 + 32) = sub_1B964C7B0();
  type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Apple_Parsec_Search_Error(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_1B9074CF8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5A58);
  __swift_project_value_buffer(v0, qword_1EBAB5A58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "previous_query";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "suggest_query_arg";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "local_completion_info";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariQueryContext.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B9074FA0(v3, v4, v5, v6);
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t sub_1B9074FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariQueryContext(0);
  type metadata accessor for Apple_Parsec_Search_LocalCompletionInfo(0);
  sub_1B9077E98(&qword_1EBAB46D8, type metadata accessor for Apple_Parsec_Search_LocalCompletionInfo, protocol conformance descriptor for Apple_Parsec_Search_LocalCompletionInfo);
  return sub_1B964C580();
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariQueryContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC36A0, &qword_1B96866C0);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v21 - v9;
  v11 = type metadata accessor for Apple_Parsec_Search_LocalCompletionInfo(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_1();
  if (!v15 || (result = OUTLINED_FUNCTION_3(v13, v14, 1), (v5 = v4) == 0))
  {
    OUTLINED_FUNCTION_1();
    if (!v19 || (result = OUTLINED_FUNCTION_3(v17, v18, 2), (v5 = v4) == 0))
    {
      Context = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariQueryContext(0);
      sub_1B8DD9078(v6 + *(Context + 28), v10, &qword_1EBAC36A0, &qword_1B96866C0);
      if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
      {
        sub_1B8D9207C(v10, &qword_1EBAC36A0, &qword_1B96866C0);
      }

      else
      {
        v21[1] = Context;
        OUTLINED_FUNCTION_1_44();
        sub_1B907341C();
        sub_1B9077E98(&qword_1EBAB46D8, type metadata accessor for Apple_Parsec_Search_LocalCompletionInfo, protocol conformance descriptor for Apple_Parsec_Search_LocalCompletionInfo);
        sub_1B964C740();
        result = sub_1B9073690();
        if (v5)
        {
          return result;
        }
      }

      OUTLINED_FUNCTION_12();
      return sub_1B964C290();
    }
  }

  return result;
}

void static Apple_Parsec_Safari_V1alpha_SafariQueryContext.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  v4 = v3;
  type metadata accessor for Apple_Parsec_Search_LocalCompletionInfo(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  v8 = (v7 - v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC36A0, &qword_1B96866C0);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_137();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC36B0, &qword_1B96866D0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - v13;
  v15 = *v4 == *v2 && v4[1] == v2[1];
  if (v15 || (sub_1B964C9F0() & 1) != 0)
  {
    v16 = v4[2] == v2[2] && v4[3] == v2[3];
    if (v16 || (sub_1B964C9F0() & 1) != 0)
    {
      Context = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariQueryContext(0);
      v17 = *(Context + 28);
      v18 = *(v11 + 48);
      sub_1B8DD9078(v4 + v17, v14, &qword_1EBAC36A0, &qword_1B96866C0);
      sub_1B8DD9078(v2 + v17, &v14[v18], &qword_1EBAC36A0, &qword_1B96866C0);
      OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_178(v19, v20, v21);
      if (v15)
      {
        OUTLINED_FUNCTION_38_1();
        OUTLINED_FUNCTION_178(v22, v23, v24);
        if (v15)
        {
          sub_1B8D9207C(v14, &qword_1EBAC36A0, &qword_1B96866C0);
LABEL_16:
          sub_1B964C2B0();
          OUTLINED_FUNCTION_0_51();
          sub_1B9077E98(v25, v26, MEMORY[0x1E69AAC10]);
          sub_1B964C850();
          goto LABEL_28;
        }
      }

      else
      {
        sub_1B8DD9078(v14, v0, &qword_1EBAC36A0, &qword_1B96866C0);
        OUTLINED_FUNCTION_38_1();
        OUTLINED_FUNCTION_178(v27, v28, v29);
        if (!v30)
        {
          OUTLINED_FUNCTION_1_44();
          sub_1B907341C();
          v33 = sub_1B8D6123C(*v0, *v8);
          if (v33 & 1) != 0 && (sub_1B8D6123C(v0[1], v8[1]) & 1) != 0 && (sub_1B8D6123C(v0[2], v8[2]))
          {
            sub_1B964C2B0();
            OUTLINED_FUNCTION_0_51();
            sub_1B9077E98(v34, v35, MEMORY[0x1E69AAC10]);
            v36 = sub_1B964C850();
            sub_1B9073690();
            sub_1B9073690();
            sub_1B8D9207C(v14, &qword_1EBAC36A0, &qword_1B96866C0);
            if ((v36 & 1) == 0)
            {
              goto LABEL_28;
            }

            goto LABEL_16;
          }

          sub_1B9073690();
          sub_1B9073690();
          v31 = &qword_1EBAC36A0;
          v32 = &qword_1B96866C0;
LABEL_27:
          sub_1B8D9207C(v14, v31, v32);
          goto LABEL_28;
        }

        sub_1B9073690();
      }

      v31 = &qword_1EBAC36B0;
      v32 = &qword_1B96866D0;
      goto LABEL_27;
    }
  }

LABEL_28:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B907569C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9077E98(&qword_1EBAC3718, type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariQueryContext, protocol conformance descriptor for Apple_Parsec_Safari_V1alpha_SafariQueryContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B907571C(uint64_t a1)
{
  v2 = sub_1B9077E98(&qword_1EBAB5A48, type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariQueryContext, protocol conformance descriptor for Apple_Parsec_Safari_V1alpha_SafariQueryContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B907578C(uint64_t a1, uint64_t a2)
{
  sub_1B9077E98(&qword_1EBAB5A48, type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariQueryContext, protocol conformance descriptor for Apple_Parsec_Safari_V1alpha_SafariQueryContext);

  return sub_1B964C5D0();
}

uint64_t sub_1B9075824()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5A10);
  __swift_project_value_buffer(v0, qword_1EBAB5A10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "search_query";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "query_context";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "safari_query_context";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchRequest.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v11 = OUTLINED_FUNCTION_9();
        sub_1B9075C38(v11, v12, v13, v14);
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B9075B84(v7, v8, v9, v10);
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B9075AD0(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_1B9075AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchRequest(0);
  type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery(0);
  sub_1B9077E98(&qword_1EBAB5D10, type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery, protocol conformance descriptor for Apple_Parsec_Search_PegasusSearchQuery);
  return sub_1B964C580();
}

uint64_t sub_1B9075B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchRequest(0);
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  sub_1B9077E98(&qword_1ED9CF498, type metadata accessor for Apple_Parsec_Search_PegasusQueryContext, protocol conformance descriptor for Apple_Parsec_Search_PegasusQueryContext);
  return sub_1B964C580();
}

uint64_t sub_1B9075C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchRequest(0);
  type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariQueryContext(0);
  sub_1B9077E98(&qword_1EBAB5A48, type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariQueryContext, protocol conformance descriptor for Apple_Parsec_Safari_V1alpha_SafariQueryContext);
  return sub_1B964C580();
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC36A8, &qword_1B96866C8);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_185();
  v28 = v8;
  v9 = OUTLINED_FUNCTION_201();
  Context = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariQueryContext(v9);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v11);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_137();
  v30 = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_62();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2228, &unk_1B967FDC0);
  OUTLINED_FUNCTION_183(v14);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  v16 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery(v16);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_62();
  v18 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchRequest(0);
  sub_1B8DD9078(v3 + v18[5], v4, &qword_1EBAC2228, &unk_1B967FDC0);
  OUTLINED_FUNCTION_38_1();
  if (__swift_getEnumTagSinglePayload(v19, v20, v21) == 1)
  {
    sub_1B8D9207C(v4, &qword_1EBAC2228, &unk_1B967FDC0);
    v22 = v31;
  }

  else
  {
    sub_1B907341C();
    sub_1B9077E98(&qword_1EBAB5D10, type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery, protocol conformance descriptor for Apple_Parsec_Search_PegasusSearchQuery);
    sub_1B964C740();
    v22 = v31;
    result = sub_1B9073690();
    if (v31)
    {
      return result;
    }
  }

  sub_1B8DD9078(v3 + v18[6], v5, &qword_1EBABED40, &qword_1B96809F0);
  v24 = OUTLINED_FUNCTION_602();
  if (__swift_getEnumTagSinglePayload(v24, v25, v30) == 1)
  {
    sub_1B8D9207C(v5, &qword_1EBABED40, &qword_1B96809F0);
  }

  else
  {
    sub_1B907341C();
    sub_1B9077E98(&qword_1ED9CF498, type metadata accessor for Apple_Parsec_Search_PegasusQueryContext, protocol conformance descriptor for Apple_Parsec_Search_PegasusQueryContext);
    OUTLINED_FUNCTION_58_5();
    sub_1B964C740();
    result = sub_1B9073690();
    if (v22)
    {
      return result;
    }
  }

  sub_1B8DD9078(v3 + v18[7], v28, &qword_1EBAC36A8, &qword_1B96866C8);
  v26 = OUTLINED_FUNCTION_602();
  if (__swift_getEnumTagSinglePayload(v26, v27, Context) == 1)
  {
    sub_1B8D9207C(v28, &qword_1EBAC36A8, &qword_1B96866C8);
  }

  else
  {
    sub_1B907341C();
    sub_1B9077E98(&qword_1EBAB5A48, type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariQueryContext, protocol conformance descriptor for Apple_Parsec_Safari_V1alpha_SafariQueryContext);
    OUTLINED_FUNCTION_58_5();
    sub_1B964C740();
    result = sub_1B9073690();
    if (v22)
    {
      return result;
    }
  }

  return sub_1B964C290();
}

void static Apple_Parsec_Safari_V1alpha_SafariSearchRequest.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = v2;
  v5 = v4;
  Context = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariQueryContext(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC36A8, &qword_1B96866C8);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_185();
  v69 = v9;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC36C0, &qword_1B96866D8);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_185();
  v73 = v11;
  v12 = OUTLINED_FUNCTION_201();
  v77 = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(v12);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_62();
  v70 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v16);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_185();
  v74 = v18;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED68, &qword_1B9680A10);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_185();
  v78 = v20;
  v21 = OUTLINED_FUNCTION_201();
  type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery(v21);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_62();
  v25 = (v24 - v23);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2228, &unk_1B967FDC0);
  OUTLINED_FUNCTION_183(v26);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_79();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2250, &unk_1B967FDF0) - 8;
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_137();
  v76 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchRequest(0);
  v30 = v76[5];
  v31 = *(v28 + 56);
  sub_1B8DD9078(v5 + v30, v1, &qword_1EBAC2228, &unk_1B967FDC0);
  sub_1B8DD9078(v3 + v30, v1 + v31, &qword_1EBAC2228, &unk_1B967FDC0);
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_178(v32, v33, v34);
  if (v45)
  {
    OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_178(v35, v36, v37);
    if (v45)
    {
      sub_1B8D9207C(v1, &qword_1EBAC2228, &unk_1B967FDC0);
      goto LABEL_6;
    }

    goto LABEL_14;
  }

  sub_1B8DD9078(v1, v0, &qword_1EBAC2228, &unk_1B967FDC0);
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_178(v42, v43, v44);
  if (v45)
  {
    sub_1B9073690();
LABEL_14:
    v46 = &qword_1EBAC2250;
    v47 = &unk_1B967FDF0;
LABEL_24:
    v52 = v1;
LABEL_42:
    sub_1B8D9207C(v52, v46, v47);
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_3_28();
  sub_1B907341C();
  v48 = *v0 == *v25 && *(v0 + 8) == v25[1];
  if (!v48 && (sub_1B964C9F0() & 1) == 0 || !sub_1B8D92198(*(v0 + 16), *(v0 + 24), v25[2]))
  {
    sub_1B9073690();
    sub_1B9073690();
    v46 = &qword_1EBAC2228;
    v47 = &unk_1B967FDC0;
    goto LABEL_24;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_51();
  sub_1B9077E98(v49, v50, MEMORY[0x1E69AAC10]);
  v51 = sub_1B964C850();
  sub_1B9073690();
  OUTLINED_FUNCTION_246();
  sub_1B9073690();
  sub_1B8D9207C(v1, &qword_1EBAC2228, &unk_1B967FDC0);
  if ((v51 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_6:
  v38 = v76[6];
  v39 = *(v75 + 48);
  sub_1B8DD9078(v5 + v38, v78, &qword_1EBABED40, &qword_1B96809F0);
  sub_1B8DD9078(v3 + v38, v78 + v39, &qword_1EBABED40, &qword_1B96809F0);
  v40 = OUTLINED_FUNCTION_538();
  OUTLINED_FUNCTION_178(v40, v41, v77);
  if (v45)
  {
    OUTLINED_FUNCTION_178(v78 + v39, 1, v77);
    if (v45)
    {
      sub_1B8D9207C(v78, &qword_1EBABED40, &qword_1B96809F0);
      goto LABEL_33;
    }

    goto LABEL_28;
  }

  sub_1B8DD9078(v78, v74, &qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_178(v78 + v39, 1, v77);
  if (v53)
  {
    sub_1B9073690();
LABEL_28:
    v46 = &qword_1EBABED68;
    v47 = &qword_1B9680A10;
LABEL_29:
    v52 = v78;
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_2_28();
  sub_1B907341C();
  if (*(v74 + *(v77 + 20)) != *(v70 + *(v77 + 20)))
  {

    v54 = OUTLINED_FUNCTION_432();
    v56 = sub_1B9090820(v54, v55);

    if (!v56)
    {
      sub_1B9073690();
      sub_1B9073690();
      v46 = &qword_1EBABED40;
      v47 = &qword_1B96809F0;
      goto LABEL_29;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_51();
  sub_1B9077E98(v57, v58, MEMORY[0x1E69AAC10]);
  v59 = sub_1B964C850();
  sub_1B9073690();
  sub_1B9073690();
  sub_1B8D9207C(v78, &qword_1EBABED40, &qword_1B96809F0);
  if ((v59 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_33:
  v60 = v76[7];
  v61 = *(v71 + 48);
  sub_1B8DD9078(v5 + v60, v73, &qword_1EBAC36A8, &qword_1B96866C8);
  sub_1B8DD9078(v3 + v60, v73 + v61, &qword_1EBAC36A8, &qword_1B96866C8);
  v62 = OUTLINED_FUNCTION_538();
  OUTLINED_FUNCTION_178(v62, v63, Context);
  if (v45)
  {
    OUTLINED_FUNCTION_178(v73 + v61, 1, Context);
    if (v45)
    {
      sub_1B8D9207C(v73, &qword_1EBAC36A8, &qword_1B96866C8);
LABEL_45:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_51();
      sub_1B9077E98(v67, v68, MEMORY[0x1E69AAC10]);
      sub_1B964C850();
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  sub_1B8DD9078(v73, v69, &qword_1EBAC36A8, &qword_1B96866C8);
  OUTLINED_FUNCTION_178(v73 + v61, 1, Context);
  if (v64)
  {
    sub_1B9073690();
LABEL_41:
    v46 = &qword_1EBAC36C0;
    v47 = &qword_1B96866D8;
    v52 = v73;
    goto LABEL_42;
  }

  sub_1B907341C();
  static Apple_Parsec_Safari_V1alpha_SafariQueryContext.== infix(_:_:)();
  v66 = v65;
  sub_1B9073690();
  sub_1B9073690();
  sub_1B8D9207C(v73, &qword_1EBAC36A8, &qword_1B96866C8);
  if (v66)
  {
    goto LABEL_45;
  }

LABEL_43:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9076AA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9077E98(&qword_1EBAC3710, type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchRequest, protocol conformance descriptor for Apple_Parsec_Safari_V1alpha_SafariSearchRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9076B20(uint64_t a1)
{
  v2 = sub_1B9077E98(&qword_1EBAC36E8, type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchRequest, protocol conformance descriptor for Apple_Parsec_Safari_V1alpha_SafariSearchRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9076B90(uint64_t a1, uint64_t a2)
{
  sub_1B9077E98(&qword_1EBAC36E8, type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchRequest, protocol conformance descriptor for Apple_Parsec_Safari_V1alpha_SafariSearchRequest);

  return sub_1B964C5D0();
}

uint64_t sub_1B9076C28()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC3688);
  __swift_project_value_buffer(v0, qword_1EBAC3688);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "status";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "error";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "trace_id";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 50;
  *v14 = "search_results";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 100;
  *v16 = "service_debug";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResponse.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 100:
        v15 = OUTLINED_FUNCTION_9();
        sub_1B90770F8(v15, v16, v17, v18);
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B9076F90(v7, v8, v9, v10);
        break;
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 50:
        v11 = OUTLINED_FUNCTION_9();
        sub_1B9077044(v11, v12, v13, v14);
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8F283B0(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_1B9076F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse(0);
  type metadata accessor for Apple_Parsec_Search_Error(0);
  sub_1B9077E98(&qword_1ED9CCC78, type metadata accessor for Apple_Parsec_Search_Error, protocol conformance descriptor for Apple_Parsec_Search_Error);
  return sub_1B964C580();
}

uint64_t sub_1B9077044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse(0);
  type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults(0);
  sub_1B9077E98(&qword_1ED9CF110, type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults, protocol conformance descriptor for Apple_Parsec_Safari_V1alpha_SafariSearchResults);
  return sub_1B964C580();
}

uint64_t sub_1B90770F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B964C280();
  type metadata accessor for Debuglevelspb_AnyArray(0);
  sub_1B9077E98(&qword_1EBABAE10, type metadata accessor for Debuglevelspb_AnyArray, protocol conformance descriptor for Debuglevelspb_AnyArray);
  sub_1B9077E98(&qword_1EBABAE08, type metadata accessor for Debuglevelspb_AnyArray, protocol conformance descriptor for Debuglevelspb_AnyArray);
  return sub_1B964C3A0();
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3570, &unk_1B9685F60);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_185();
  v33 = v7;
  v8 = OUTLINED_FUNCTION_201();
  v9 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults(v8);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  v30 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_183(v13);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  v17 = type metadata accessor for Apple_Parsec_Search_Error(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_62();
  if (!*v3 || (v19 = *(v3 + 8), v31 = *v3, v32 = v19, sub_1B8F2116C(), OUTLINED_FUNCTION_58_5(), result = sub_1B964C680(), !v4))
  {
    v28 = v9;
    v29 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse(0);
    sub_1B8DD9078(v3 + *(v29 + 32), v16, &qword_1EBAB9188, &qword_1B964D970);
    v21 = OUTLINED_FUNCTION_538();
    if (__swift_getEnumTagSinglePayload(v21, v22, v17) == 1)
    {
      sub_1B8D9207C(v16, &qword_1EBAB9188, &qword_1B964D970);
    }

    else
    {
      sub_1B907341C();
      sub_1B9077E98(&qword_1ED9CCC78, type metadata accessor for Apple_Parsec_Search_Error, protocol conformance descriptor for Apple_Parsec_Search_Error);
      sub_1B964C740();
      result = sub_1B9073690();
      if (v4)
      {
        return result;
      }
    }

    OUTLINED_FUNCTION_1();
    v23 = v33;
    if (!v24 || (result = sub_1B964C700(), !v4))
    {
      sub_1B8DD9078(v3 + *(v29 + 36), v23, &qword_1EBAC3570, &unk_1B9685F60);
      v25 = OUTLINED_FUNCTION_538();
      if (__swift_getEnumTagSinglePayload(v25, v26, v28) == 1)
      {
        sub_1B8D9207C(v23, &qword_1EBAC3570, &unk_1B9685F60);
      }

      else
      {
        sub_1B907341C();
        sub_1B9077E98(&qword_1ED9CF110, type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults, protocol conformance descriptor for Apple_Parsec_Safari_V1alpha_SafariSearchResults);
        OUTLINED_FUNCTION_58_5();
        sub_1B964C740();
        result = sub_1B9073690();
        if (v4)
        {
          return result;
        }
      }

      if (!*(v3[4] + 16))
      {
        return sub_1B964C290();
      }

      v33 = sub_1B964C280();
      type metadata accessor for Debuglevelspb_AnyArray(0);
      sub_1B9077E98(&qword_1EBABAE10, type metadata accessor for Debuglevelspb_AnyArray, protocol conformance descriptor for Debuglevelspb_AnyArray);
      sub_1B9077E98(&qword_1EBABAE08, type metadata accessor for Debuglevelspb_AnyArray, protocol conformance descriptor for Debuglevelspb_AnyArray);
      result = sub_1B964C5E0();
      if (!v4)
      {
        return sub_1B964C290();
      }
    }
  }

  return result;
}

void static Apple_Parsec_Safari_V1alpha_SafariSearchResponse.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_280();
  v55 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults(v3);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3570, &unk_1B9685F60);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_185();
  v54 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC36D0, &unk_1B96866E0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_79();
  v13 = type metadata accessor for Apple_Parsec_Search_Error(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_62();
  v17 = (v16 - v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_183(v18);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v50 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9190, &qword_1B964D978);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v50 - v24;
  v26 = *v1;
  v27 = *v0;
  if (*(v0 + 8) == 1)
  {
    if (v27)
    {
      if (v27 == 1)
      {
        if (v26 != 1)
        {
          goto LABEL_36;
        }
      }

      else if (v26 != 2)
      {
        goto LABEL_36;
      }
    }

    else if (v26)
    {
      goto LABEL_36;
    }
  }

  else if (v26 != v27)
  {
    goto LABEL_36;
  }

  v52 = v2;
  v50 = v7;
  v28 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse(0);
  v29 = v1;
  v51 = v28;
  v30 = *(v28 + 32);
  v31 = *(v22 + 48);
  v53 = v29;
  sub_1B8DD9078(v29 + v30, v25, &qword_1EBAB9188, &qword_1B964D970);
  sub_1B8DD9078(v0 + v30, &v25[v31], &qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_178(v25, 1, v13);
  if (v32)
  {
    OUTLINED_FUNCTION_178(&v25[v31], 1, v13);
    if (v32)
    {
      sub_1B8D9207C(v25, &qword_1EBAB9188, &qword_1B964D970);
      goto LABEL_21;
    }

LABEL_19:
    v33 = &qword_1EBAB9190;
    v34 = &qword_1B964D978;
    v35 = v25;
    goto LABEL_35;
  }

  sub_1B8DD9078(v25, v21, &qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_178(&v25[v31], 1, v13);
  if (v32)
  {
    sub_1B9073690();
    goto LABEL_19;
  }

  sub_1B907341C();
  v36 = static Apple_Parsec_Search_Error.== infix(_:_:)(v21, v17);
  sub_1B9073690();
  OUTLINED_FUNCTION_236();
  sub_1B9073690();
  sub_1B8D9207C(v25, &qword_1EBAB9188, &qword_1B964D970);
  if ((v36 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_21:
  v37 = v53;
  v38 = v53[2] == v0[2] && v53[3] == v0[3];
  if (v38 || (sub_1B964C9F0() & 1) != 0)
  {
    v39 = v37;
    v40 = v52;
    v41 = *(v51 + 36);
    v42 = *(v11 + 48);
    sub_1B8DD9078(v39 + v41, v52, &qword_1EBAC3570, &unk_1B9685F60);
    sub_1B8DD9078(v0 + v41, v40 + v42, &qword_1EBAC3570, &unk_1B9685F60);
    v43 = OUTLINED_FUNCTION_602();
    OUTLINED_FUNCTION_178(v43, v44, v55);
    if (v32)
    {
      OUTLINED_FUNCTION_57(v40 + v42);
      if (v32)
      {
        sub_1B8D9207C(v40, &qword_1EBAC3570, &unk_1B9685F60);
LABEL_38:
        sub_1B8DAFA20();
        if (v47)
        {
          sub_1B964C2B0();
          OUTLINED_FUNCTION_0_51();
          sub_1B9077E98(v48, v49, MEMORY[0x1E69AAC10]);
          sub_1B964C850();
        }

        goto LABEL_36;
      }
    }

    else
    {
      sub_1B8DD9078(v40, v54, &qword_1EBAC3570, &unk_1B9685F60);
      OUTLINED_FUNCTION_57(v40 + v42);
      if (!v45)
      {
        sub_1B907341C();
        v46 = static Apple_Parsec_Safari_V1alpha_SafariSearchResults.== infix(_:_:)();
        sub_1B9073690();
        sub_1B9073690();
        sub_1B8D9207C(v40, &qword_1EBAC3570, &unk_1B9685F60);
        if ((v46 & 1) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_38;
      }

      sub_1B9073690();
    }

    v33 = &qword_1EBAC36D0;
    v34 = &unk_1B96866E0;
    v35 = v40;
LABEL_35:
    sub_1B8D9207C(v35, v33, v34);
  }

LABEL_36:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9077C30()
{
  OUTLINED_FUNCTION_111_0();
  v2 = v1;
  sub_1B964CA70();
  v2(0);
  v3 = OUTLINED_FUNCTION_461();
  sub_1B9077E98(v3, v4, v0);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9077D08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9077E98(&qword_1EBAC3708, type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse, protocol conformance descriptor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9077D88(uint64_t a1)
{
  v2 = sub_1B9077E98(&qword_1EBAC36F8, type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse, protocol conformance descriptor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9077DF8(uint64_t a1, uint64_t a2)
{
  sub_1B9077E98(&qword_1EBAC36F8, type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse, protocol conformance descriptor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse);

  return sub_1B964C5D0();
}

uint64_t sub_1B9077E98(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void sub_1B9078268(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B9078448(319, &qword_1EBAB46B8, type metadata accessor for Apple_Parsec_Search_LocalCompletionInfo);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B9078340(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B9078448(319, &qword_1EBAB5CF0, type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery);
    if (v2 <= 0x3F)
    {
      sub_1B9078448(319, &qword_1EDA04118, type metadata accessor for Apple_Parsec_Search_PegasusQueryContext);
      if (v3 <= 0x3F)
      {
        sub_1B9078448(319, &qword_1EBAB5A28, type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariQueryContext);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B9078448(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B964C930();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B90784C4(uint64_t a1)
{
  sub_1B8E00BFC(319);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      sub_1B9078448(319, &qword_1ED9EDE88, type metadata accessor for Apple_Parsec_Search_Error);
      if (v3 <= 0x3F)
      {
        sub_1B9078448(319, qword_1ED9CF0A0, type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_47_6()
{

  return sub_1B907341C();
}

uint64_t OUTLINED_FUNCTION_63_4(uint64_t a1, uint64_t a2)
{

  return sub_1B8DD9078(a1, a2, v2, v3);
}

void (*Apple_Parsec_Sba_V1_SafariAssistantPrefetchRequest.queryContext.modify())(uint64_t a1, uint64_t a2)
{
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_145_1(v7);
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(v8);
  *(v0 + 16) = Context;
  OUTLINED_FUNCTION_59_1();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantPrefetchRequest(v15);
  OUTLINED_FUNCTION_59_7(v16);
  v17 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_178(v17, v18, Context);
  if (v19)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v20 = *(Context + 20);
    if (qword_1ED9D38C0 != -1)
    {
      OUTLINED_FUNCTION_12_0(&qword_1ED9D38C0);
    }

    *(v11 + v20) = qword_1ED9D38C8;
    v21 = OUTLINED_FUNCTION_207();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, v22, Context);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v7, &qword_1EBABED40, &qword_1B96809F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_45();
    OUTLINED_FUNCTION_246();
    sub_1B907E6DC();
  }

  return sub_1B907886C;
}

uint64_t Apple_Parsec_Sba_V1_SafariAssistantPrefetchRequest.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantPrefetchRequest(v0);
  return OUTLINED_FUNCTION_25();
}

void Apple_Parsec_Sba_V1_SafariAssistantPrefetchResponse.status.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Apple_Parsec_Sba_V1_SafariAssistantPrefetchResponse.status.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

void (*Apple_Parsec_Sba_V1_SafariAssistantPrefetchResponse.error.modify())(uint64_t a1, uint64_t a2)
{
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_145_1(v7);
  v9 = type metadata accessor for Apple_Parsec_Search_Error(v8);
  *(v0 + 16) = v9;
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantPrefetchResponse(v14);
  OUTLINED_FUNCTION_58_6(v15);
  v16 = OUTLINED_FUNCTION_493();
  v18 = OUTLINED_FUNCTION_178(v16, v17, v9);
  if (v19)
  {
    OUTLINED_FUNCTION_68_5(v18);
    v20 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v20, v21, v9);
    if (!v19)
    {
      sub_1B8D9207C(v7, &qword_1EBAB9188, &qword_1B964D970);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_17();
    sub_1B907E6DC();
  }

  return sub_1B9078B0C;
}

void sub_1B9078B34()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  v3 = v0;
  v5 = *(*v4 + 10);
  v6 = (*v4)[3];
  v7 = (*v4)[4];
  v8 = (*v4)[1];
  v9 = **v4;
  if (v10)
  {
    sub_1B907E734();
    sub_1B8D9207C(v9 + v5, v3, v2);
    sub_1B907E6DC();
    OUTLINED_FUNCTION_187_1();
    sub_1B907E78C();
  }

  else
  {
    sub_1B8D9207C(v9 + v5, v0, v1);
    sub_1B907E6DC();
    OUTLINED_FUNCTION_187_1();
  }

  free(v7);
  free(v6);
  free(v8);
  OUTLINED_FUNCTION_283();

  free(v11);
}

uint64_t Apple_Parsec_Sba_V1_SafariAssistantPrefetchResponse.traceID.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Sba_V1_SafariAssistantPrefetchResponse.hashBuckets.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t Apple_Parsec_Sba_V1_SafariAssistantPrefetchResponse.serviceDebug.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t Apple_Parsec_Sba_V1_SafariAssistantPrefetchResponse.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantPrefetchResponse(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Sba_V1_HashBucketDetail.hashDetails.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Apple_Parsec_Sba_V1_HashBucketDetail.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail.fullHash.setter()
{
  OUTLINED_FUNCTION_16();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail.sbaEntityTypes.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail.matchedURLVariant.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail.unknownFields.getter()
{
  type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_18_1();

  return v1(v0);
}

uint64_t Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail(v0);
  return OUTLINED_FUNCTION_25();
}

unint64_t Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail.SBAEntityType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 8;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B90791B4@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail.SBAEntityType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B90791E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B907E8C8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t static Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail.SBAEntityType.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBAC3720 = a1;
}

uint64_t sub_1B90793AC@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail.SBAEntityType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B907940C@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_88();
  a1(0);
  OUTLINED_FUNCTION_77_7();
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v8 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v8, v9, Context);
  if (!v10)
  {
    return sub_1B907E6DC();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v11 = *(Context + 20);
  if (qword_1ED9D38C0 != -1)
  {
    OUTLINED_FUNCTION_12_0(&qword_1ED9D38C0);
  }

  *(a2 + v11) = qword_1ED9D38C8;
  v12 = OUTLINED_FUNCTION_493();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, v13, Context);

  if (EnumTagSinglePayload != 1)
  {
    return sub_1B8D9207C(v2, &qword_1EBABED40, &qword_1B96809F0);
  }

  return result;
}

uint64_t sub_1B9079564()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  sub_1B8D9207C(v0 + *(v3 + 24), &qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_1_45();
  sub_1B907E6DC();
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v4 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t (*Apple_Parsec_Sba_V1_SafariAssistantSummarizeRequest.queryContext.modify())(uint64_t, uint64_t)
{
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_145_1(v7);
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(v8);
  *(v0 + 16) = Context;
  OUTLINED_FUNCTION_59_1();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantSummarizeRequest(v15);
  OUTLINED_FUNCTION_59_7(v16);
  v17 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_178(v17, v18, Context);
  if (v19)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v20 = *(Context + 20);
    if (qword_1ED9D38C0 != -1)
    {
      OUTLINED_FUNCTION_12_0(&qword_1ED9D38C0);
    }

    *(v11 + v20) = qword_1ED9D38C8;
    v21 = OUTLINED_FUNCTION_207();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, v22, Context);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v7, &qword_1EBABED40, &qword_1B96809F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_45();
    OUTLINED_FUNCTION_246();
    sub_1B907E6DC();
  }

  return sub_1B907FBA0;
}

uint64_t sub_1B907975C(void (*a1)(void))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_79();
  a1(0);
  OUTLINED_FUNCTION_78_4();
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v4 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_178(v4, v5, v6);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = OUTLINED_FUNCTION_246();
  sub_1B8D9207C(v9, v10, &qword_1B96809F0);
  return v8;
}

uint64_t sub_1B9079828(uint64_t (*a1)(void))
{
  v2 = a1(0);
  sub_1B8D9207C(v1 + *(v2 + 24), &qword_1EBABED40, &qword_1B96809F0);
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v3 = OUTLINED_FUNCTION_59_2();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_1B90798A4()
{
  v0 = OUTLINED_FUNCTION_338_0();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B9079928()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Apple_Parsec_Sba_V1_SafariAssistantSummarizeRequest.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantSummarizeRequest(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B90799F0@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v3 = a1(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(v3 + 24);
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);

  return __swift_storeEnumTagSinglePayload(a2 + v4, 1, 1, Context);
}

uint64_t sub_1B9079A9C@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_88();
  a1(0);
  OUTLINED_FUNCTION_77_7();
  v7 = type metadata accessor for Apple_Parsec_Search_Error(0);
  v8 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v8, v9, v7);
  if (!v10)
  {
    return sub_1B907E6DC();
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = -1;
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v11 = OUTLINED_FUNCTION_493();
  result = OUTLINED_FUNCTION_178(v11, v12, v7);
  if (!v10)
  {
    return sub_1B8D9207C(v2, &qword_1EBAB9188, &qword_1B964D970);
  }

  return result;
}

uint64_t sub_1B9079BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_79();
  sub_1B907E734();
  return a7(v7);
}

uint64_t sub_1B9079C58()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  sub_1B8D9207C(v0 + *(v3 + 36), &qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_6_17();
  sub_1B907E6DC();
  type metadata accessor for Apple_Parsec_Search_Error(0);
  v4 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t (*Apple_Parsec_Sba_V1_SafariAssistantSummarizeResponse.error.modify())(uint64_t, uint64_t)
{
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_145_1(v7);
  v9 = type metadata accessor for Apple_Parsec_Search_Error(v8);
  *(v0 + 16) = v9;
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantSummarizeResponse(v14);
  OUTLINED_FUNCTION_58_6(v15);
  v16 = OUTLINED_FUNCTION_493();
  v18 = OUTLINED_FUNCTION_178(v16, v17, v9);
  if (v19)
  {
    OUTLINED_FUNCTION_68_5(v18);
    v20 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v20, v21, v9);
    if (!v19)
    {
      sub_1B8D9207C(v7, &qword_1EBAB9188, &qword_1B964D970);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_17();
    sub_1B907E6DC();
  }

  return sub_1B907FBA4;
}

uint64_t sub_1B9079E10(void (*a1)(void))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_79();
  a1(0);
  OUTLINED_FUNCTION_78_4();
  type metadata accessor for Apple_Parsec_Search_Error(0);
  v4 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_178(v4, v5, v6);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = OUTLINED_FUNCTION_246();
  sub_1B8D9207C(v9, v10, &qword_1B964D970);
  return v8;
}

uint64_t sub_1B9079EDC(uint64_t (*a1)(void))
{
  v2 = a1(0);
  sub_1B8D9207C(v1 + *(v2 + 36), &qword_1EBAB9188, &qword_1B964D970);
  type metadata accessor for Apple_Parsec_Search_Error(0);
  v3 = OUTLINED_FUNCTION_59_2();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_1B9079FA0()
{
  v0 = OUTLINED_FUNCTION_338_0();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B907A024()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Apple_Parsec_Sba_V1_SafariAssistantSummarizeResponse.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantSummarizeResponse(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B907A0EC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = MEMORY[0x1E69E7CC0];
  type metadata accessor for Debuglevelspb_AnyArray(0);
  *(a2 + 40) = sub_1B964C7B0();
  a1(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Apple_Parsec_Search_Error(0);
  v4 = OUTLINED_FUNCTION_59_2();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t Apple_Parsec_Sba_V1_SafariAssistantSummaryResult.results.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Apple_Parsec_Sba_V1_SafariAssistantSummaryResult.url.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t sub_1B907A288()
{
  v0 = OUTLINED_FUNCTION_338_0();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B907A30C()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Apple_Parsec_Sba_V1_SafariAssistantSummaryResult.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantSummaryResult(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B907A3E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a4(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B907A43C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB3DB8);
  __swift_project_value_buffer(v0, qword_1EBAB3DB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "query_context";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "hash_prefix";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Sba_V1_SafariAssistantPrefetchRequest.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B907C9B4();
    }
  }

  return result;
}

void Apple_Parsec_Sba_V1_SafariAssistantPrefetchRequest.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_95_4();
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantPrefetchRequest(0);
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v1, 1, Context) == 1)
  {
    sub_1B8D9207C(v1, &qword_1EBABED40, &qword_1B96809F0);
  }

  else
  {
    sub_1B907E6DC();
    OUTLINED_FUNCTION_9_21();
    sub_1B907E880(v6, v7, protocol conformance descriptor for Apple_Parsec_Search_PegasusQueryContext);
    sub_1B964C740();
    sub_1B907E78C();
    if (v0)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_1();
  if (!v8 || (sub_1B964C700(), !v0))
  {
    OUTLINED_FUNCTION_186();
    sub_1B964C290();
  }

LABEL_7:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Sba_V1_SafariAssistantPrefetchRequest.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  v4 = v3;
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v10);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED68, &qword_1B9680A10) - 8;
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_88();
  v30[1] = type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantPrefetchRequest(0);
  v31 = v4;
  v16 = *(v14 + 56);
  OUTLINED_FUNCTION_162_1();
  v32 = v2;
  OUTLINED_FUNCTION_162_1();
  OUTLINED_FUNCTION_37_0(v0);
  if (!v17)
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(v0 + v16);
    if (!v17)
    {
      OUTLINED_FUNCTION_1_45();
      sub_1B907E6DC();
      v20 = *(Context + 20);
      v21 = *&v13[v20];
      v22 = *(v9 + v20);
      if (v21 == v22 || (, , v23 = sub_1B9090820(v21, v22), , , v23))
      {
        v24 = sub_1B964C2B0();
        OUTLINED_FUNCTION_0_52();
        sub_1B907E880(v25, v26, MEMORY[0x1E69AAC10]);
        sub_1B964C850();
        OUTLINED_FUNCTION_28_14();
        sub_1B907E78C();
        OUTLINED_FUNCTION_686();
        sub_1B907E78C();
        sub_1B8D9207C(v0, &qword_1EBABED40, &qword_1B96809F0);
        if ((v24 & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_15;
      }

      OUTLINED_FUNCTION_33_9();
      sub_1B907E78C();
      sub_1B907E78C();
      v18 = &qword_1EBABED40;
      v19 = &qword_1B96809F0;
LABEL_10:
      sub_1B8D9207C(v0, v18, v19);
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_32_13();
    sub_1B907E78C();
LABEL_9:
    v18 = &qword_1EBABED68;
    v19 = &qword_1B9680A10;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_37_0(v0 + v16);
  if (!v17)
  {
    goto LABEL_9;
  }

  sub_1B8D9207C(v0, &qword_1EBABED40, &qword_1B96809F0);
LABEL_15:
  v27 = *v31 == *v32 && v31[1] == v32[1];
  if (v27 || (sub_1B964C9F0() & 1) != 0)
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_52();
    sub_1B907E880(v28, v29, MEMORY[0x1E69AAC10]);
    sub_1B964C850();
  }

LABEL_21:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B907AC7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B907E880(&qword_1EBAC3898, type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantPrefetchRequest, protocol conformance descriptor for Apple_Parsec_Sba_V1_SafariAssistantPrefetchRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B907ACFC(uint64_t a1)
{
  v2 = sub_1B907E880(&qword_1EBAC3810, type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantPrefetchRequest, protocol conformance descriptor for Apple_Parsec_Sba_V1_SafariAssistantPrefetchRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B907AD6C(uint64_t a1, uint64_t a2)
{
  sub_1B907E880(&qword_1EBAC3810, type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantPrefetchRequest, protocol conformance descriptor for Apple_Parsec_Sba_V1_SafariAssistantPrefetchRequest);

  return sub_1B964C5D0();
}

void Apple_Parsec_Sba_V1_SafariAssistantPrefetchResponse.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 100:
        OUTLINED_FUNCTION_9();
        sub_1B907D65C();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B907D540();
        break;
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 50:
        OUTLINED_FUNCTION_9();
        sub_1B907D5D0();
        break;
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B8CFB0F8();
        break;
    }
  }
}

void Apple_Parsec_Sba_V1_SafariAssistantPrefetchResponse.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_26_14();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_164();
  v5 = type metadata accessor for Apple_Parsec_Search_Error(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_95_4();
  if (!*v1 || (sub_1B8F2116C(), OUTLINED_FUNCTION_17_15(), sub_1B964C680(), !v0))
  {
    type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantPrefetchResponse(0);
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v2, 1, v5) == 1)
    {
      sub_1B8D9207C(v2, &qword_1EBAB9188, &qword_1B964D970);
    }

    else
    {
      OUTLINED_FUNCTION_29_18();
      sub_1B907E6DC();
      OUTLINED_FUNCTION_8_26();
      sub_1B907E880(v7, v8, protocol conformance descriptor for Apple_Parsec_Search_Error);
      OUTLINED_FUNCTION_17_15();
      sub_1B964C740();
      sub_1B907E78C();
      if (v0)
      {
        goto LABEL_13;
      }
    }

    OUTLINED_FUNCTION_1();
    if (!v9 || (OUTLINED_FUNCTION_45_6(), sub_1B964C700(), !v0))
    {
      if (!*(v1[4] + 16) || (type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail(0), sub_1B907E880(qword_1ED9CA828, type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail, protocol conformance descriptor for Apple_Parsec_Sba_V1_HashBucketDetail), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_17_15(), sub_1B964C730(), !v0))
      {
        if (!*(v1[5] + 16) || (sub_1B964C280(), type metadata accessor for Debuglevelspb_AnyArray(0), OUTLINED_FUNCTION_7_26(), sub_1B907E880(v10, v5, protocol conformance descriptor for Debuglevelspb_AnyArray), OUTLINED_FUNCTION_10_22(&qword_1EBABAE08), OUTLINED_FUNCTION_45_6(), sub_1B964C5E0(), !v0))
        {
          OUTLINED_FUNCTION_43_8();
        }
      }
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B907B314(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B907E880(&qword_1EBAC3890, type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantPrefetchResponse, protocol conformance descriptor for Apple_Parsec_Sba_V1_SafariAssistantPrefetchResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B907B394(uint64_t a1)
{
  v2 = sub_1B907E880(&qword_1EBAC3820, type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantPrefetchResponse, protocol conformance descriptor for Apple_Parsec_Sba_V1_SafariAssistantPrefetchResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B907B404(uint64_t a1, uint64_t a2)
{
  sub_1B907E880(&qword_1EBAC3820, type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantPrefetchResponse, protocol conformance descriptor for Apple_Parsec_Sba_V1_SafariAssistantPrefetchResponse);

  return sub_1B964C5D0();
}

uint64_t sub_1B907B49C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC3740);
  __swift_project_value_buffer(v0, qword_1EBAC3740);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "hash_prefix";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "hash_details";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Sba_V1_HashBucketDetail.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B907B6F0(v3, v4, v5, v6);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t sub_1B907B6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail(0);
  sub_1B907E880(&qword_1ED9CA8D8, type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail, protocol conformance descriptor for Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Sba_V1_HashBucketDetail.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v2 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
  {
    if (!*(*(v1 + 16) + 16) || (type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail(0), sub_1B907E880(&qword_1ED9CA8D8, type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail, protocol conformance descriptor for Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_79_0(), result = sub_1B964C730(), !v0))
    {
      type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail(0);
      OUTLINED_FUNCTION_12();
      return sub_1B964C290();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Sba_V1_HashBucketDetail.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_37(v2);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  sub_1B8D63518(*(v1 + 16), *(v0 + 16));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_52();
  v9 = sub_1B907E880(v7, v8, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v9) & 1;
}

uint64_t sub_1B907B9C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B907E880(&qword_1EBAC3888, type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail, protocol conformance descriptor for Apple_Parsec_Sba_V1_HashBucketDetail);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B907BA44(uint64_t a1)
{
  v2 = sub_1B907E880(qword_1ED9CA828, type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail, protocol conformance descriptor for Apple_Parsec_Sba_V1_HashBucketDetail);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B907BAB4(uint64_t a1, uint64_t a2)
{
  sub_1B907E880(qword_1ED9CA828, type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail, protocol conformance descriptor for Apple_Parsec_Sba_V1_HashBucketDetail);

  return sub_1B964C5D0();
}

uint64_t sub_1B907BB34()
{
  result = MEMORY[0x1BFADC850](0x746544687361482ELL, 0xEB000000006C6961);
  qword_1EBAC3758 = 0xD000000000000024;
  unk_1EBAC3760 = 0x80000001B9703A80;
  return result;
}

uint64_t static Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail.protoMessageName.getter()
{
  if (qword_1EBAB70E0 != -1)
  {
    swift_once();
  }

  return OUTLINED_FUNCTION_432();
}

uint64_t sub_1B907BC0C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC3768);
  __swift_project_value_buffer(v0, qword_1EBAC3768);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "full_hash";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "has_summary";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "sba_entity_types";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "has_table_of_contents";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "matched_url_variant";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B907BF5C(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v2 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
  {
    if (*(v1 + 16) != 1 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C670(), !v0))
    {
      if (!*(*(v1 + 24) + 16) || (sub_1B907E8C8(), OUTLINED_FUNCTION_79_0(), result = sub_1B964C600(), !v0))
      {
        if (*(v1 + 32) != 1 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C670(), !v0))
        {
          OUTLINED_FUNCTION_1();
          if (!v4 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
          {
            type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail(0);
            OUTLINED_FUNCTION_12();
            return sub_1B964C290();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_37(v2);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if (*(v1 + 16) != *(v0 + 16) || (sub_1B8D6379C(*(v1 + 24), *(v0 + 24)) & 1) == 0 || *(v1 + 32) != *(v0 + 32))
  {
    return 0;
  }

  v7 = *(v1 + 40) == *(v0 + 40) && *(v1 + 48) == *(v0 + 48);
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_52();
  v10 = sub_1B907E880(v8, v9, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v10) & 1;
}

uint64_t sub_1B907C25C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B907E880(&qword_1EBAC3880, type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail, protocol conformance descriptor for Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B907C2DC(uint64_t a1)
{
  v2 = sub_1B907E880(&qword_1ED9CA8D8, type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail, protocol conformance descriptor for Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B907C34C(uint64_t a1, uint64_t a2)
{
  sub_1B907E880(&qword_1ED9CA8D8, type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail, protocol conformance descriptor for Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail);

  return sub_1B964C5D0();
}

uint64_t sub_1B907C3CC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC3780);
  __swift_project_value_buffer(v0, qword_1EBAC3780);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B96511B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "SBA_ENTITY_TYPE_UNKNOWN";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SBA_ENTITY_TYPE_MAPS";
  *(v10 + 8) = 20;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SBA_ENTITY_TYPE_PERSON";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "SBA_ENTITY_TYPE_MUSIC";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "SBA_ENTITY_TYPE_MEDIA";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "SBA_ENTITY_TYPE_SPORT";
  *(v18 + 1) = 21;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "SBA_ENTITY_TYPE_MOVIE";
  *(v20 + 1) = 21;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "SBA_ENTITY_TYPE_TVSHOW";
  *(v22 + 1) = 22;
  v22[16] = 2;
  v9();
  return sub_1B964C760();
}