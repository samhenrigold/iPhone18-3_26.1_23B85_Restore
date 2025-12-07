uint64_t sub_1C8F7FD68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D730, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F7FDE8(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31C9D0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F7FE58(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31C9D0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F7FED8()
{
  if (qword_1EC3117C8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31A9B0;
  v2 = *algn_1EC31A9B8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x746E656D7961502ELL, 0xEE00646F6874654DLL);

  qword_1EC31AA78 = v1;
  unk_1EC31AA80 = v2;
  return result;
}

uint64_t sub_1C8F7FFA8()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AA88);
  __swift_project_value_buffer(v0, qword_1EC31AA88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "identificationHint";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "displayRepresentation";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v7 = OUTLINED_FUNCTION_5_39();
        sub_1C8F802CC(v7, v8, v9, v10);
        break;
      case 2:
        OUTLINED_FUNCTION_124_6();
        sub_1C90639FC();
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_5_39();
        sub_1C8F80264(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_1C8F802CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(0);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_1C8CD1B00(qword_1EDA641A8, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  return sub_1C9063A4C();
}

void ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_363_1();
  OUTLINED_FUNCTION_4_36();
  if (!*v21 || (sub_1C8DC0DAC(v23, v24, v25), OUTLINED_FUNCTION_29_23(), sub_1C9063B1C(), !v22))
  {
    v26 = OUTLINED_FUNCTION_2_55();
    sub_1C8CE2CE8(v26);
    if (!v22)
    {
      v27 = OUTLINED_FUNCTION_2_55();
      sub_1C8F80418(v27, v28, v29, v30);
      type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(0);
      OUTLINED_FUNCTION_53_15();
    }
  }

  OUTLINED_FUNCTION_364_1();
}

uint64_t sub_1C8F80418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC312A48, &unk_1C9072A10);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA641A8, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

uint64_t sub_1C8F80674(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D728, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F806F4(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31C9E8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F80764(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31C9E8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F807E4()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AAA0);
  __swift_project_value_buffer(v0, qword_1EC31AAA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C909C460;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "TypeUnspecified";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "TypeChecking";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "TypeSavings";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "TypeBrokerage";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "TypeDebit";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "TypeCredit";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "TypePrepaid";
  *(v20 + 1) = 11;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "TypeStore";
  *(v22 + 1) = 9;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "TypeApplePay";
  *(v24 + 1) = 12;
  v24[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8F80BA4()
{
  if (qword_1EC3117C8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31A9B0;
  v2 = *algn_1EC31A9B8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x616D6563616C502ELL, 0xEA00000000006B72);

  qword_1EC31AAB8 = v1;
  unk_1EC31AAC0 = v2;
  return result;
}

uint64_t sub_1C8F80C6C()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AAC8);
  __swift_project_value_buffer(v0, qword_1EC31AAC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "placemark";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "displayRepresentation";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "type";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Placemark.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v7 = OUTLINED_FUNCTION_5_39();
        sub_1C8F80FDC(v7, v8, v9, v10);
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_5_39();
        sub_1C8F80F28(v3, v4, v5, v6);
        break;
      case 1:
        OUTLINED_FUNCTION_124_6();
        sub_1C906396C();
        break;
    }
  }

  return result;
}

uint64_t sub_1C8F80F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark(0);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_1C8CD1B00(qword_1EDA641A8, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  return sub_1C9063A4C();
}

void ToolKitProtoTypedValue.PrimitiveValue.Placemark.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_363_1();
  v23 = OUTLINED_FUNCTION_7_48();
  sub_1C8F810D8(v23);
  if (!v21)
  {
    v24 = OUTLINED_FUNCTION_2_55();
    v28 = sub_1C8F8116C(v24, v25, v26, v27);
    if (*v22)
    {
      sub_1C8DC0D58(v28, v29, v30);
      OUTLINED_FUNCTION_29_23();
      sub_1C9063B1C();
    }

    type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark(0);
    OUTLINED_FUNCTION_53_15();
  }

  OUTLINED_FUNCTION_364_1();
}

uint64_t sub_1C8F810D8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 >> 60 != 15)
  {
    v2 = *(result + 8);
    sub_1C8CE9144(v2, v1);
    sub_1C9063B3C();
    return sub_1C8CE7BD0(v2, v1);
  }

  return result;
}

uint64_t sub_1C8F8116C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC312A48, &unk_1C9072A10);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA641A8, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

uint64_t sub_1C8F813C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D720, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F81448(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CA08, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F814B8(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31CA08, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F81538()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AAE0);
  __swift_project_value_buffer(v0, qword_1EC31AAE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "TypeUnknown";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "TypePlacemark";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "TypeCurrentLocation";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8F81784()
{
  if (qword_1EC3117C8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31A9B0;
  v2 = *algn_1EC31A9B8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x6E6F737265502ELL, 0xE700000000000000);

  qword_1EC31AAF8 = v1;
  unk_1EC31AB00 = v2;
  return result;
}

uint64_t sub_1C8F81848()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AB08);
  __swift_project_value_buffer(v0, qword_1EC31AB08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1C90ABEE0;
  v4 = v29 + v3;
  v5 = v29 + v3 + v1[14];
  *(v29 + v3) = 1;
  *v5 = "person";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C9063BDC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "displayRepresentation";
  *(v9 + 8) = 21;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "handle";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "nameComponents";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "displayName";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "image";
  *(v17 + 1) = 5;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "contactIdentifier";
  *(v19 + 1) = 17;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "customIdentifier";
  *(v21 + 1) = 16;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "relationship";
  *(v23 + 1) = 12;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "contactSuggestion";
  *(v25 + 1) = 17;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "isMe";
  *(v27 + 1) = 4;
  v27[16] = 2;
  v8();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_22_0();
        sub_1C906396C();
        break;
      case 2:
        v19 = OUTLINED_FUNCTION_5_39();
        sub_1C8F81D80(v19, v20, v21, v22);
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_5_39();
        sub_1C8F81E34(v7, v8, v9, v10);
        break;
      case 4:
        v11 = OUTLINED_FUNCTION_5_39();
        sub_1C8F81EE8(v11, v12, v13, v14);
        break;
      case 5:
        OUTLINED_FUNCTION_20_22();
        sub_1C9063A0C();
        break;
      case 6:
        v23 = OUTLINED_FUNCTION_5_39();
        sub_1C8F81F9C(v23, v24, v25, v26);
        break;
      case 7:
        v27 = OUTLINED_FUNCTION_5_39();
        sub_1C8F82000(v27, v28, v29, v30);
        break;
      case 8:
        v15 = OUTLINED_FUNCTION_5_39();
        sub_1C8F82064(v15, v16, v17, v18);
        break;
      case 9:
        v31 = OUTLINED_FUNCTION_5_39();
        sub_1C8F820C8(v31, v32, v33, v34);
        break;
      case 10:
        v3 = OUTLINED_FUNCTION_5_39();
        sub_1C8F8212C(v3, v4, v5, v6);
        break;
      case 11:
        OUTLINED_FUNCTION_22_0();
        sub_1C906391C();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8F81D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_1C8CD1B00(qword_1EDA641A8, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  return sub_1C9063A4C();
}

uint64_t sub_1C8F81E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0);
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.Handle(0);
  sub_1C8CD1B00(&qword_1EC31CA40, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.Handle, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Person.Handle);
  return sub_1C9063A4C();
}

uint64_t sub_1C8F81EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0);
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents(0);
  sub_1C8CD1B00(&qword_1EC31CA60, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents);
  return sub_1C9063A4C();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_349_1();
  OUTLINED_FUNCTION_136();
  OUTLINED_FUNCTION_170_7();
  result = sub_1C8F822B4(v2);
  if (!v1)
  {
    v4 = OUTLINED_FUNCTION_92_7();
    sub_1C8F82348(v4, v5, v6, v7);
    v8 = OUTLINED_FUNCTION_92_7();
    sub_1C8F8251C(v8, v9, v10, v11);
    v12 = OUTLINED_FUNCTION_92_7();
    sub_1C8F826F0(v12, v13, v14, v15);
    OUTLINED_FUNCTION_36_21();
    if (v16)
    {
      sub_1C9063B8C();
    }

    v17 = OUTLINED_FUNCTION_92_7();
    sub_1C8F828C4(v17);
    v18 = OUTLINED_FUNCTION_92_7();
    sub_1C8F82964(v18);
    v19 = OUTLINED_FUNCTION_92_7();
    sub_1C8F829DC(v19);
    v20 = OUTLINED_FUNCTION_92_7();
    sub_1C8F82A54(v20);
    v21 = OUTLINED_FUNCTION_92_7();
    sub_1C8F82ACC(v21);
    if (*(v0 + 16) == 1)
    {
      OUTLINED_FUNCTION_170_7();
      sub_1C9063B0C();
    }

    type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0);
    OUTLINED_FUNCTION_150_1();
    return sub_1C90637CC();
  }

  return result;
}

uint64_t sub_1C8F822B4(uint64_t result)
{
  v1 = *(result + 32);
  if (v1 >> 60 != 15)
  {
    v2 = *(result + 24);
    sub_1C8CE9144(v2, v1);
    sub_1C9063B3C();
    return sub_1C8CE7BD0(v2, v1);
  }

  return result;
}

uint64_t sub_1C8F82348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC312A48, &unk_1C9072A10);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA641A8, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

uint64_t sub_1C8F8251C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313A58, &qword_1C906F560);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.Handle(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC313A58, &qword_1C906F560);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EC31CA40, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.Handle, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Person.Handle);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.Handle);
}

uint64_t sub_1C8F826F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313A50, &unk_1C9074CF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC313A50, &unk_1C9074CF0);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EC31CA60, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents);
}

uint64_t sub_1C8F828C4(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0);
  v3 = a1 + *(result + 40);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    sub_1C8CE9144(*v3, *(v3 + 8));
    sub_1C9063B3C();
    return sub_1C8CE7BD0(v5, v4);
  }

  return result;
}

uint64_t sub_1C8F82964(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0);
  if (*(a1 + *(result + 44) + 8))
  {
    return sub_1C9063B8C();
  }

  return result;
}

uint64_t sub_1C8F829DC(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0);
  if (*(a1 + *(result + 48) + 8))
  {
    return sub_1C9063B8C();
  }

  return result;
}

uint64_t sub_1C8F82A54(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0);
  if (*(a1 + *(result + 52) + 8))
  {
    return sub_1C9063B8C();
  }

  return result;
}

uint64_t sub_1C8F82ACC(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0);
  if (*(a1 + *(result + 56)) != 2)
  {
    return sub_1C9063B0C();
  }

  return result;
}

uint64_t sub_1C8F82BF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D718, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Person);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F82C70(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CA28, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Person);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F82CE0(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31CA28, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Person);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F82D60()
{
  if (qword_1EC311850 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31AAF8;
  v2 = unk_1EC31AB00;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x656C646E61482ELL, 0xE700000000000000);

  qword_1EC31AB20 = v1;
  *algn_1EC31AB28 = v2;
  return result;
}

uint64_t sub_1C8F82E24()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AB30);
  __swift_project_value_buffer(v0, qword_1EC31AB30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "label";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.Handle.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        goto LABEL_9;
      case 2:
        v3 = OUTLINED_FUNCTION_5_39();
        sub_1C8F830DC(v3, v4, v5, v6);
        break;
      case 1:
LABEL_9:
        OUTLINED_FUNCTION_22_0();
        sub_1C90639FC();
        break;
    }
  }
}

void ToolKitProtoTypedValue.PrimitiveValue.Person.Handle.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_363_1();
  v23 = OUTLINED_FUNCTION_7_48();
  v24 = sub_1C8CE2D4C(v23);
  if (!v21)
  {
    if (*v22)
    {
      sub_1C8DC0D04(v24, v25, v26);
      OUTLINED_FUNCTION_29_23();
      sub_1C9063B1C();
    }

    v27 = OUTLINED_FUNCTION_2_55();
    sub_1C8CE2D84(v27);
    type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.Handle(0);
    OUTLINED_FUNCTION_53_15();
  }

  OUTLINED_FUNCTION_364_1();
}

uint64_t static ToolKitProtoTypedValue.PrimitiveValue.Person.Handle.== infix(_:_:)()
{
  OUTLINED_FUNCTION_223();
  v2 = *(v0 + 16);
  if (*(v1 + 16))
  {
    if (!v2)
    {
      return 0;
    }

    OUTLINED_FUNCTION_201_2();
    v5 = v5 && v3 == v4;
    if (!v5 && (sub_1C9064C2C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_154_5();
  if (!v5)
  {
    return 0;
  }

  OUTLINED_FUNCTION_373_0();
  if (v7)
  {
    if (!v6)
    {
      return 0;
    }

    OUTLINED_FUNCTION_275_2();
    v10 = v5 && v8 == v9;
    if (!v10 && (sub_1C9064C2C() & 1) == 0)
    {
      return 0;
    }

LABEL_19:
    type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.Handle(0);
    OUTLINED_FUNCTION_327_1();
    OUTLINED_FUNCTION_1_76();
    v13 = sub_1C8CD1B00(v11, v12, MEMORY[0x1E69AAC10]);
    return OUTLINED_FUNCTION_12_28(v13) & 1;
  }

  if (!v6)
  {
    goto LABEL_19;
  }

  return 0;
}

uint64_t sub_1C8F83330(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D710, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.Handle, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Person.Handle);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F833B0(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CA40, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.Handle, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Person.Handle);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F83420(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31CA40, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.Handle, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Person.Handle);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F834A0()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AB48);
  __swift_project_value_buffer(v0, qword_1EC31AB48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "TypeUnknown";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "TypeEmailAddress";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "TypePhoneNumber";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8F836EC()
{
  if (qword_1EC311850 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31AAF8;
  v2 = unk_1EC31AB00;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x6D6F43656D614E2ELL, 0xEF73746E656E6F70);

  qword_1EC31AB60 = v1;
  *algn_1EC31AB68 = v2;
  return result;
}

uint64_t sub_1C8F837BC()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AB70);
  __swift_project_value_buffer(v0, qword_1EC31AB70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C90ABEF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "namePrefix";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "givenName";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "middleName";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "familyName";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "nameSuffix";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "nickname";
  *(v18 + 1) = 8;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "phoneticRepresentation";
  *(v20 + 1) = 22;
  v20[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
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
        OUTLINED_FUNCTION_22_0();
        sub_1C90639FC();
        break;
      case 7:
        v3 = OUTLINED_FUNCTION_5_39();
        sub_1C8F83B9C(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8F83B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents(0);
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation(0);
  sub_1C8CD1B00(&qword_1EC31CA78, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation);
  return sub_1C9063A4C();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_83_8();
  v1 = OUTLINED_FUNCTION_22_33();
  result = sub_1C8CE2DF0(v1);
  if (!v0)
  {
    v3 = OUTLINED_FUNCTION_3_4();
    sub_1C8CE2E28(v3);
    v4 = OUTLINED_FUNCTION_3_4();
    sub_1C8CE2E60(v4);
    v5 = OUTLINED_FUNCTION_3_4();
    sub_1C8CE2E98(v5);
    v6 = OUTLINED_FUNCTION_3_4();
    sub_1C8CE2ED0(v6);
    v7 = OUTLINED_FUNCTION_3_4();
    sub_1C8CE2F08(v7);
    v8 = OUTLINED_FUNCTION_3_4();
    sub_1C8F83D08(v8, v9, v10, v11);
    type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents(0);
    return OUTLINED_FUNCTION_69_10();
  }

  return result;
}

uint64_t sub_1C8F83D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139A8, &unk_1C9074CE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC3139A8, &unk_1C9074CE0);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EC31CA78, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation);
}

uint64_t sub_1C8F83F88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D708, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F84008(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CA60, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F84078(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31CA60, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F840F8()
{
  if (qword_1EC311878 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31AB60;
  v2 = *algn_1EC31AB68;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0xD000000000000017, 0x80000001C90CFD80);

  qword_1EC31AB88 = v1;
  unk_1EC31AB90 = v2;
  return result;
}

uint64_t sub_1C8F841C0()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AB98);
  __swift_project_value_buffer(v0, qword_1EC31AB98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C90ABEB0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "namePrefix";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "givenName";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "middleName";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "familyName";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "nameSuffix";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "nickname";
  *(v18 + 1) = 8;
  v18[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
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
        OUTLINED_FUNCTION_22_0();
        sub_1C90639FC();
        break;
      default:
        continue;
    }
  }
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_83_8();
  v1 = OUTLINED_FUNCTION_22_33();
  result = sub_1C8CE2DF0(v1);
  if (!v0)
  {
    v3 = OUTLINED_FUNCTION_3_4();
    sub_1C8CE2E28(v3);
    v4 = OUTLINED_FUNCTION_3_4();
    sub_1C8CE2E60(v4);
    v5 = OUTLINED_FUNCTION_3_4();
    sub_1C8CE2E98(v5);
    v6 = OUTLINED_FUNCTION_3_4();
    sub_1C8CE2ED0(v6);
    v7 = OUTLINED_FUNCTION_3_4();
    sub_1C8CE2F08(v7);
    type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation(0);
    return OUTLINED_FUNCTION_69_10();
  }

  return result;
}

uint64_t static ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_223();
  v3 = *(v2 + 8);
  v4 = v0[1];
  if (v3)
  {
    if (!v4)
    {
      return 0;
    }

    v5 = *v1 == *v0 && v3 == v4;
    if (!v5 && (sub_1C9064C2C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  OUTLINED_FUNCTION_371_0();
  if (v7)
  {
    if (!v6)
    {
      return 0;
    }

    OUTLINED_FUNCTION_272_1();
    v10 = v5 && v8 == v9;
    if (!v10 && (sub_1C9064C2C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v11 = v1[5];
  v12 = v0[5];
  if (v11)
  {
    if (!v12)
    {
      return 0;
    }

    v13 = v1[4] == v0[4] && v11 == v12;
    if (!v13 && (sub_1C9064C2C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  v14 = v0[7];
  if (v1[7])
  {
    if (!v14)
    {
      return 0;
    }

    OUTLINED_FUNCTION_332_1();
    v17 = v5 && v15 == v16;
    if (!v17 && (sub_1C9064C2C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v18 = v0[9];
  if (v1[9])
  {
    if (!v18)
    {
      return 0;
    }

    OUTLINED_FUNCTION_331_1();
    v21 = v5 && v19 == v20;
    if (!v21 && (sub_1C9064C2C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  v22 = v1[11];
  v23 = v0[11];
  if (v22)
  {
    if (v23)
    {
      v24 = v1[10] == v0[10] && v22 == v23;
      if (v24 || (sub_1C9064C2C() & 1) != 0)
      {
        goto LABEL_53;
      }
    }
  }

  else if (!v23)
  {
LABEL_53:
    type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation(0);
    sub_1C90637EC();
    OUTLINED_FUNCTION_1_76();
    v27 = sub_1C8CD1B00(v25, v26, MEMORY[0x1E69AAC10]);
    return OUTLINED_FUNCTION_12_28(v27) & 1;
  }

  return 0;
}

uint64_t sub_1C8F84828(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D700, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F848A8(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CA78, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F84918(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31CA78, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F84998()
{
  if (qword_1EC3117C8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31A9B0;
  v2 = *algn_1EC31A9B8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x656C69462ELL, 0xE500000000000000);

  qword_1EC31ABB0 = v1;
  *algn_1EC31ABB8 = v2;
  return result;
}

uint64_t sub_1C8F84A58()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31ABC0);
  __swift_project_value_buffer(v0, qword_1EC31ABC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "file";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "displayRepresentation";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "url";
  *(v12 + 1) = 3;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.File.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v7 = OUTLINED_FUNCTION_5_39();
        sub_1C8F84DC4(v7, v8, v9, v10);
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_5_39();
        sub_1C8F84D10(v3, v4, v5, v6);
        break;
      case 1:
        OUTLINED_FUNCTION_20_22();
        sub_1C906397C();
        break;
    }
  }

  return result;
}

uint64_t sub_1C8F84D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File(0);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_1C8CD1B00(qword_1EDA641A8, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  return sub_1C9063A4C();
}

void ToolKitProtoTypedValue.PrimitiveValue.File.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_340_2();
  OUTLINED_FUNCTION_4_36();
  v4 = OUTLINED_FUNCTION_181_1();
  if (sub_1C8EB7FAC(v4, v5) || (OUTLINED_FUNCTION_181_1(), OUTLINED_FUNCTION_23_29(), sub_1C9063B3C(), !v3))
  {
    v6 = OUTLINED_FUNCTION_2_55();
    sub_1C8F84EB4(v6, v7, v8, v9);
    if (!v3)
    {
      v10 = OUTLINED_FUNCTION_2_55();
      sub_1C8F85088(v10);
      type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File(0);
      OUTLINED_FUNCTION_53_15();
    }
  }

  OUTLINED_FUNCTION_341_2();
}

uint64_t sub_1C8F84EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC312A48, &unk_1C9072A10);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA641A8, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

uint64_t sub_1C8F85088(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File(0);
  if (*(a1 + *(result + 24) + 8))
  {
    return sub_1C9063B8C();
  }

  return result;
}

uint64_t sub_1C8F85188(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D6F8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.File);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F85208(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CA90, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.File);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F85278(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31CA90, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.File);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F852F8()
{
  if (qword_1EC3117C8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31A9B0;
  v2 = *algn_1EC31A9B8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](1886404910, 0xE400000000000000);

  qword_1EC31ABD8 = v1;
  unk_1EC31ABE0 = v2;
  return result;
}

uint64_t sub_1C8F853B4()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31ABE8);
  __swift_project_value_buffer(v0, qword_1EC31ABE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "displayRepresentation";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8F855E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App(0);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_1C8CD1B00(qword_1EDA641A8, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  return sub_1C9063A4C();
}

uint64_t sub_1C8F856D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC312A48, &unk_1C9072A10);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA641A8, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

uint64_t sub_1C8F85930(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D6F0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.App);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F859B0(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CAA8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.App);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F85A20(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31CAA8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.App);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F85AA0()
{
  if (qword_1EC3117C8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31A9B0;
  v2 = *algn_1EC31A9B8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x756374726F68532ELL, 0xE900000000000074);

  qword_1EC31AC00 = v1;
  *algn_1EC31AC08 = v2;
  return result;
}

uint64_t sub_1C8F85B68()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AC10);
  __swift_project_value_buffer(v0, qword_1EC31AC10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "displayRepresentation";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8F85D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Shortcut(0);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_1C8CD1B00(qword_1EDA641A8, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  return sub_1C9063A4C();
}

uint64_t sub_1C8F85E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Shortcut(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC312A48, &unk_1C9072A10);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA641A8, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

uint64_t sub_1C8F860E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D6E8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Shortcut, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Shortcut);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F86164(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CAC0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Shortcut, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Shortcut);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F861D4(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31CAC0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Shortcut, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Shortcut);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F86254()
{
  if (qword_1EC3117C8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31A9B0;
  v2 = *algn_1EC31A9B8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x6D6F43657461442ELL, 0xEF73746E656E6F70);

  qword_1EC31AC28 = v1;
  unk_1EC31AC30 = v2;
  return result;
}

uint64_t sub_1C8F86324()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AC38);
  __swift_project_value_buffer(v0, qword_1EC31AC38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1C90ABF00;
  v4 = v39 + v3;
  v5 = v39 + v3 + v1[14];
  *(v39 + v3) = 1;
  *v5 = "calendar";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C9063BDC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "timeZoneIdentifier";
  *(v9 + 8) = 18;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "era";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "year";
  *(v13 + 1) = 4;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "month";
  *(v15 + 1) = 5;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "day";
  *(v17 + 1) = 3;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "hour";
  *(v19 + 1) = 4;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "minute";
  *(v21 + 1) = 6;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "second";
  *(v23 + 1) = 6;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "nanosecond";
  *(v25 + 1) = 10;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "weekday";
  *(v27 + 1) = 7;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "weekdayOrdinal";
  *(v29 + 1) = 14;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "quarter";
  *(v31 + 1) = 7;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "weekOfMonth";
  *(v33 + 1) = 11;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 15;
  *v35 = "weekOfYear";
  *(v35 + 1) = 10;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 16;
  *v37 = "yearForWeekOfYear";
  *(v37 + 1) = 17;
  v37[16] = 2;
  v8();
  return sub_1C9063BEC();
}

void ToolKitProtoTypedValue.PrimitiveValue.DateComponents.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    v1 = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_17_34();
        sub_1C8F6D810();
        break;
      case 2:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F9BFFC();
        break;
      case 3:
        v23 = OUTLINED_FUNCTION_5_39();
        sub_1C8FB8618(v23, v24, v25, v26, v27, v28);
        break;
      case 4:
        v33 = OUTLINED_FUNCTION_5_39();
        sub_1C8F86A5C(v33, v34, v35, v36);
        break;
      case 5:
        v11 = OUTLINED_FUNCTION_5_39();
        sub_1C8F86AC0(v11, v12, v13, v14);
        break;
      case 6:
        v41 = OUTLINED_FUNCTION_5_39();
        sub_1C8F86B24(v41, v42, v43, v44);
        break;
      case 7:
        v49 = OUTLINED_FUNCTION_5_39();
        sub_1C8F86B88(v49, v50, v51, v52);
        break;
      case 8:
        v37 = OUTLINED_FUNCTION_5_39();
        sub_1C8F86BEC(v37, v38, v39, v40);
        break;
      case 9:
        v57 = OUTLINED_FUNCTION_5_39();
        sub_1C8F86C50(v57, v58, v59, v60);
        break;
      case 10:
        v19 = OUTLINED_FUNCTION_5_39();
        sub_1C8F86CB4(v19, v20, v21, v22);
        break;
      case 11:
        v53 = OUTLINED_FUNCTION_5_39();
        sub_1C8F86D18(v53, v54, v55, v56);
        break;
      case 12:
        v7 = OUTLINED_FUNCTION_5_39();
        sub_1C8F86D7C(v7, v8, v9, v10);
        break;
      case 13:
        v15 = OUTLINED_FUNCTION_5_39();
        sub_1C8F86DE0(v15, v16, v17, v18);
        break;
      case 14:
        v45 = OUTLINED_FUNCTION_5_39();
        sub_1C8F86E44(v45, v46, v47, v48);
        break;
      case 15:
        v3 = OUTLINED_FUNCTION_5_39();
        sub_1C8F86EA8(v3, v4, v5, v6);
        break;
      case 16:
        v29 = OUTLINED_FUNCTION_5_39();
        sub_1C8F86F0C(v29, v30, v31, v32);
        break;
      default:
        continue;
    }
  }
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_349_1();
  v1 = OUTLINED_FUNCTION_46_15();
  result = sub_1C8F870BC(v1, v2, v3, v4);
  if (!v0)
  {
    OUTLINED_FUNCTION_46_15();
    sub_1C8F9DC68();
    OUTLINED_FUNCTION_46_15();
    sub_1C8FB8900();
    v6 = OUTLINED_FUNCTION_46_15();
    sub_1C8F87284(v6, v7, v8, v9);
    v10 = OUTLINED_FUNCTION_46_15();
    sub_1C8F872FC(v10, v11, v12, v13);
    v14 = OUTLINED_FUNCTION_46_15();
    sub_1C8F87374(v14, v15, v16, v17);
    v18 = OUTLINED_FUNCTION_46_15();
    sub_1C8F873EC(v18, v19, v20, v21);
    v22 = OUTLINED_FUNCTION_46_15();
    sub_1C8F87464(v22, v23, v24, v25);
    v26 = OUTLINED_FUNCTION_46_15();
    sub_1C8F874DC(v26, v27, v28, v29);
    v30 = OUTLINED_FUNCTION_46_15();
    sub_1C8F87554(v30, v31, v32, v33);
    v34 = OUTLINED_FUNCTION_46_15();
    sub_1C8F875CC(v34, v35, v36, v37);
    v38 = OUTLINED_FUNCTION_46_15();
    sub_1C8F87644(v38, v39, v40, v41);
    v42 = OUTLINED_FUNCTION_46_15();
    sub_1C8F876BC(v42, v43, v44, v45);
    v46 = OUTLINED_FUNCTION_46_15();
    sub_1C8F87734(v46, v47, v48, v49);
    v50 = OUTLINED_FUNCTION_46_15();
    sub_1C8F877AC(v50, v51, v52, v53);
    v54 = OUTLINED_FUNCTION_46_15();
    sub_1C8F87824(v54, v55, v56, v57);
    type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
    OUTLINED_FUNCTION_112();
    return sub_1C90637CC();
  }

  return result;
}

uint64_t sub_1C8F870BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AB0, &qword_1C906F588);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC313AB0, &qword_1C906F588);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EC31CAF8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);
}

uint64_t sub_1C8F87284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  if ((*(a1 + *(result + 28) + 8) & 1) == 0)
  {
    return sub_1C9063B5C();
  }

  return result;
}

uint64_t sub_1C8F872FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  if ((*(a1 + *(result + 32) + 8) & 1) == 0)
  {
    return sub_1C9063B5C();
  }

  return result;
}

uint64_t sub_1C8F87374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  if ((*(a1 + *(result + 36) + 8) & 1) == 0)
  {
    return sub_1C9063B5C();
  }

  return result;
}

uint64_t sub_1C8F873EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  if ((*(a1 + *(result + 40) + 8) & 1) == 0)
  {
    return sub_1C9063B5C();
  }

  return result;
}

uint64_t sub_1C8F87464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  if ((*(a1 + *(result + 44) + 8) & 1) == 0)
  {
    return sub_1C9063B5C();
  }

  return result;
}

uint64_t sub_1C8F874DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  if ((*(a1 + *(result + 48) + 8) & 1) == 0)
  {
    return sub_1C9063B5C();
  }

  return result;
}

uint64_t sub_1C8F87554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  if ((*(a1 + *(result + 52) + 8) & 1) == 0)
  {
    return sub_1C9063B5C();
  }

  return result;
}

uint64_t sub_1C8F875CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  if ((*(a1 + *(result + 56) + 8) & 1) == 0)
  {
    return sub_1C9063B5C();
  }

  return result;
}

uint64_t sub_1C8F87644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  if ((*(a1 + *(result + 60) + 8) & 1) == 0)
  {
    return sub_1C9063B5C();
  }

  return result;
}

uint64_t sub_1C8F876BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  if ((*(a1 + *(result + 64) + 8) & 1) == 0)
  {
    return sub_1C9063B5C();
  }

  return result;
}

uint64_t sub_1C8F87734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  if ((*(a1 + *(result + 68) + 8) & 1) == 0)
  {
    return sub_1C9063B5C();
  }

  return result;
}

uint64_t sub_1C8F877AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  if ((*(a1 + *(result + 72) + 8) & 1) == 0)
  {
    return sub_1C9063B5C();
  }

  return result;
}

uint64_t sub_1C8F87824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  if ((*(a1 + *(result + 76) + 8) & 1) == 0)
  {
    return sub_1C9063B5C();
  }

  return result;
}

uint64_t sub_1C8F87948(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D6E0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F879C8(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CAD8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F87A38(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31CAD8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F87AB8()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AC50);
  __swift_project_value_buffer(v0, qword_1EC31AC50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_1C90ABF10;
  v4 = v62 + v3 + v1[14];
  *(v62 + v3) = 0;
  *v4 = "CalendarIdentifierUnspecified";
  *(v4 + 8) = 29;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C9063BDC();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v62 + v3 + v2 + v1[14];
  *(v62 + v3 + v2) = 1;
  *v8 = "CalendarIdentifierGregorian";
  *(v8 + 8) = 27;
  *(v8 + 16) = 2;
  v7();
  v9 = (v62 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "CalendarIdentifierBuddhist";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v7();
  v11 = (v62 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "CalendarIdentifierChinese";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v7();
  v13 = (v62 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "CalendarIdentifierCoptic";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v7();
  v15 = (v62 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "CalendarIdentifierEthiopicAmeteMihret";
  *(v16 + 1) = 37;
  v16[16] = 2;
  v7();
  v17 = (v62 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "CalendarIdentifierEthiopicAmeteAlem";
  *(v18 + 1) = 35;
  v18[16] = 2;
  v7();
  v19 = (v62 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "CalendarIdentifierHebrew";
  *(v20 + 1) = 24;
  v20[16] = 2;
  v7();
  v21 = (v62 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "CalendarIdentifierIso8601";
  *(v22 + 1) = 25;
  v22[16] = 2;
  v7();
  v23 = (v62 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "CalendarIdentifierIndian";
  *(v24 + 1) = 24;
  v24[16] = 2;
  v7();
  v25 = (v62 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "CalendarIdentifierIslamic";
  *(v26 + 1) = 25;
  v26[16] = 2;
  v7();
  v27 = (v62 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "CalendarIdentifierIslamicCivil";
  *(v28 + 1) = 30;
  v28[16] = 2;
  v7();
  v29 = (v62 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "CalendarIdentifierJapanese";
  *(v30 + 1) = 26;
  v30[16] = 2;
  v7();
  v31 = (v62 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "CalendarIdentifierPersian";
  *(v32 + 1) = 25;
  v32[16] = 2;
  v7();
  v33 = (v62 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "CalendarIdentifierRepublicOfChina";
  *(v34 + 1) = 33;
  v34[16] = 2;
  v7();
  v35 = (v62 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "CalendarIdentifierIslamicTabular";
  *(v36 + 1) = 32;
  v36[16] = 2;
  v7();
  v37 = (v62 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "CalendarIdentifierIslamicUmmAlQura";
  *(v38 + 1) = 34;
  v38[16] = 2;
  v7();
  v39 = (v62 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "CalendarIdentifierBangla";
  *(v40 + 1) = 24;
  v40[16] = 2;
  v7();
  v41 = (v62 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 18;
  *v42 = "CalendarIdentifierGujarati";
  *(v42 + 1) = 26;
  v42[16] = 2;
  v7();
  v43 = (v62 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 19;
  *v44 = "CalendarIdentifierKannada";
  *(v44 + 1) = 25;
  v44[16] = 2;
  v7();
  v45 = (v62 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 20;
  *v46 = "CalendarIdentifierMalayalam";
  *(v46 + 1) = 27;
  v46[16] = 2;
  v7();
  v47 = (v62 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 21;
  *v48 = "CalendarIdentifierMarathi";
  *(v48 + 1) = 25;
  v48[16] = 2;
  v7();
  v49 = (v62 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 22;
  *v50 = "CalendarIdentifierOdia";
  *(v50 + 1) = 22;
  v50[16] = 2;
  v7();
  v51 = (v62 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 23;
  *v52 = "CalendarIdentifierTamil";
  *(v52 + 1) = 23;
  v52[16] = 2;
  v7();
  v53 = (v62 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 24;
  *v54 = "CalendarIdentifierTelugu";
  *(v54 + 1) = 24;
  v54[16] = 2;
  v7();
  v55 = (v62 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 25;
  *v56 = "CalendarIdentifierVikram";
  *(v56 + 1) = 24;
  v56[16] = 2;
  v7();
  v57 = (v62 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 26;
  *v58 = "CalendarIdentifierDangi";
  *(v58 + 1) = 23;
  v58[16] = 2;
  v7();
  v59 = (v62 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 27;
  *v60 = "CalendarIdentifierVietnamese";
  *(v60 + 1) = 28;
  v60[16] = 2;
  v7();
  return sub_1C9063BEC();
}

uint64_t sub_1C8F882C4()
{
  if (qword_1EC3118C8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31AC28;
  v2 = unk_1EC31AC30;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x61646E656C61432ELL, 0xE900000000000072);

  qword_1EC31AC68 = v1;
  unk_1EC31AC70 = v2;
  return result;
}

uint64_t sub_1C8F8838C()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AC78);
  __swift_project_value_buffer(v0, qword_1EC31AC78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C909C450;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "timeZoneIdentifier";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "localeIdentifier";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "firstWeekday";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "minimumDaysInFirstWeek";
  *(v16 + 1) = 22;
  v16[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_5_39();
        sub_1C8F886F8(v3, v4, v5, v6);
        break;
      case 2:
        OUTLINED_FUNCTION_124_6();
        sub_1C9063A0C();
        break;
      case 3:
        OUTLINED_FUNCTION_22_0();
        sub_1C90639FC();
        break;
      case 4:
      case 5:
        OUTLINED_FUNCTION_22_0();
        sub_1C90639BC();
        break;
      default:
        continue;
    }
  }
}

void ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_363_1();
  OUTLINED_FUNCTION_4_36();
  if (!*v21 || (sub_1C8DC0CB0(v24, v25, v26), OUTLINED_FUNCTION_29_23(), sub_1C9063B1C(), !v22))
  {
    OUTLINED_FUNCTION_36_21();
    if (!v27 || (OUTLINED_FUNCTION_10_33(), sub_1C9063B8C(), !v22))
    {
      v28 = OUTLINED_FUNCTION_2_55();
      sub_1C8F88848(v28);
      if (!v22)
      {
        if (*(v23 + 24))
        {
          OUTLINED_FUNCTION_17_25();
          sub_1C9063B5C();
        }

        if (*(v23 + 32))
        {
          OUTLINED_FUNCTION_17_25();
          sub_1C9063B5C();
        }

        type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(0);
        OUTLINED_FUNCTION_13_23();
      }
    }
  }

  OUTLINED_FUNCTION_364_1();
}

uint64_t sub_1C8F88848(uint64_t result)
{
  if (*(result + 48))
  {
    return sub_1C9063B8C();
  }

  return result;
}

uint64_t static ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar.== infix(_:_:)()
{
  OUTLINED_FUNCTION_309_0();
  if (!v3)
  {
    return 0;
  }

  OUTLINED_FUNCTION_223();
  v3 = *(v2 + 8) == v0[1] && v1[2] == v0[2];
  if (!v3 && (sub_1C9064C2C() & 1) == 0)
  {
    return 0;
  }

  v4 = v1[6];
  v5 = v0[6];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = v1[5] == v0[5] && v4 == v5;
    if (!v6 && (sub_1C9064C2C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (v1[3] == v0[3] && v1[4] == v0[4])
  {
    type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(0);
    sub_1C90637EC();
    OUTLINED_FUNCTION_1_76();
    v9 = sub_1C8CD1B00(v7, v8, MEMORY[0x1E69AAC10]);
    return OUTLINED_FUNCTION_12_28(v9) & 1;
  }

  return 0;
}

uint64_t sub_1C8F88A04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D6D8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F88A84(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CAF8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F88AF4(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31CAF8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F88B74()
{
  if (qword_1EC3117C8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31A9B0;
  v2 = *algn_1EC31A9B8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x657272756365522ELL, 0xEF656C755265636ELL);

  qword_1EC31AC90 = v1;
  *algn_1EC31AC98 = v2;
  return result;
}

uint64_t sub_1C8F88C44()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31ACA0);
  __swift_project_value_buffer(v0, qword_1EC31ACA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1C90ABF20;
  v4 = v36 + v3 + v1[14];
  *(v36 + v3) = 1;
  *v4 = "calendar";
  *(v4 + 8) = 8;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C9063BDC();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v36 + v3 + v2 + v1[14];
  *(v36 + v3 + v2) = 2;
  *v8 = "frequency";
  *(v8 + 8) = 9;
  *(v8 + 16) = 2;
  v7();
  v9 = (v36 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "interval";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v7();
  v11 = (v36 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "end";
  *(v12 + 1) = 3;
  v12[16] = 2;
  v7();
  v13 = (v36 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "matchingPolicy";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v7();
  v15 = (v36 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "repeatedTimePolicy";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v7();
  v17 = (v36 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "months";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v7();
  v19 = (v36 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "daysOfTheYear";
  *(v20 + 1) = 13;
  v20[16] = 2;
  v7();
  v21 = (v36 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "daysOfTheMonth";
  *(v22 + 1) = 14;
  v22[16] = 2;
  v7();
  v23 = (v36 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "weeks";
  *(v24 + 1) = 5;
  v24[16] = 2;
  v7();
  v25 = (v36 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "weekdays";
  *(v26 + 1) = 8;
  v26[16] = 2;
  v7();
  v27 = (v36 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "hours";
  *(v28 + 1) = 5;
  v28[16] = 2;
  v7();
  v29 = (v36 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "minutes";
  *(v30 + 1) = 7;
  v30[16] = 2;
  v7();
  v31 = (v36 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "seconds";
  *(v32 + 1) = 7;
  v32[16] = 2;
  v7();
  v33 = (v36 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "setPositions";
  *(v34 + 1) = 12;
  v34[16] = 2;
  v7();
  return sub_1C9063BEC();
}

void ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    v1 = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_5_39();
        sub_1C8F892C8(v3, v4, v5, v6);
        break;
      case 2:
        v15 = OUTLINED_FUNCTION_5_39();
        sub_1C8F8937C(v15, v16, v17, v18);
        break;
      case 3:
        OUTLINED_FUNCTION_124_6();
        sub_1C90639BC();
        break;
      case 4:
        v11 = OUTLINED_FUNCTION_5_39();
        sub_1C8F893E4(v11, v12, v13, v14);
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_5_39();
        sub_1C8F89498(v7, v8, v9, v10);
        break;
      case 6:
        v19 = OUTLINED_FUNCTION_5_39();
        sub_1C8F89500(v19, v20, v21, v22);
        break;
      case 7:
        OUTLINED_FUNCTION_17_34();
        sub_1C8F6C148();
        break;
      case 8:
      case 9:
      case 10:
      case 12:
      case 13:
      case 14:
      case 15:
        OUTLINED_FUNCTION_22_0();
        sub_1C906395C();
        break;
      case 11:
        v23 = OUTLINED_FUNCTION_5_39();
        sub_1C8F89568(v23, v24, v25, v26);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8F892C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule(0);
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(0);
  sub_1C8CD1B00(&qword_1EC31CAF8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);
  return sub_1C9063A4C();
}

uint64_t sub_1C8F893E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule(0);
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd(0);
  sub_1C8CD1B00(&qword_1EC31CB48, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd);
  return sub_1C9063A4C();
}

uint64_t sub_1C8F89568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday(0);
  sub_1C8CD1B00(&qword_1EC31C358, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday);
  return sub_1C9063A3C();
}

void ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_340_2();
  OUTLINED_FUNCTION_349_1();
  OUTLINED_FUNCTION_170_7();
  v28 = sub_1C8F89904(v24, v25, v26, v27);
  if (!v23)
  {
    if (*v22)
    {
      sub_1C8DC0B60(v28, v29, v30);
      OUTLINED_FUNCTION_137_3();
      sub_1C9063B1C();
    }

    if (*(v22 + 8))
    {
      OUTLINED_FUNCTION_94_8();
      sub_1C9063B5C();
    }

    OUTLINED_FUNCTION_177_5();
    OUTLINED_FUNCTION_170_7();
    v35 = sub_1C8F89AD8(v31, v32, v33, v34);
    if (*(v22 + 16))
    {
      sub_1C8DC0C5C(v35, v36, v37);
      OUTLINED_FUNCTION_137_3();
      v35 = sub_1C9063B1C();
    }

    if (*(v22 + 17))
    {
      sub_1C8DC0C08(v35, v36, v37);
      OUTLINED_FUNCTION_137_3();
      sub_1C9063B1C();
    }

    if (*(*(v22 + 24) + 16))
    {
      type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleMonth(0);
      sub_1C8CD1B00(&qword_1EC31C350, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleMonth, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleMonth);
      OUTLINED_FUNCTION_227_0();
      OUTLINED_FUNCTION_137_3();
      sub_1C9063BBC();
    }

    if (*(*(v22 + 32) + 16))
    {
      OUTLINED_FUNCTION_94_8();
      sub_1C9063AFC();
    }

    if (*(*(v22 + 40) + 16))
    {
      OUTLINED_FUNCTION_94_8();
      sub_1C9063AFC();
    }

    if (*(*(v22 + 48) + 16))
    {
      OUTLINED_FUNCTION_94_8();
      sub_1C9063AFC();
    }

    if (*(*(v22 + 56) + 16))
    {
      type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday(0);
      sub_1C8CD1B00(&qword_1EC31C358, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday);
      OUTLINED_FUNCTION_227_0();
      OUTLINED_FUNCTION_137_3();
      sub_1C9063BBC();
    }

    if (*(*(v22 + 64) + 16))
    {
      OUTLINED_FUNCTION_94_8();
      sub_1C9063AFC();
    }

    if (*(*(v22 + 72) + 16))
    {
      OUTLINED_FUNCTION_94_8();
      sub_1C9063AFC();
    }

    if (*(*(v22 + 80) + 16))
    {
      OUTLINED_FUNCTION_94_8();
      sub_1C9063AFC();
    }

    if (*(*(v22 + 88) + 16))
    {
      OUTLINED_FUNCTION_94_8();
      sub_1C9063AFC();
    }

    type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule(0);
    OUTLINED_FUNCTION_49();
    sub_1C90637CC();
  }

  OUTLINED_FUNCTION_341_2();
}

uint64_t sub_1C8F89904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AB0, &qword_1C906F588);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC313AB0, &qword_1C906F588);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EC31CAF8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);
}

uint64_t sub_1C8F89AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AF8, &qword_1C906F5B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC313AF8, &qword_1C906F5B0);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EC31CB48, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd);
}

uint64_t sub_1C8F89D58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D6D0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F89DD8(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CB10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F89E48(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31CB10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F89EC8()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31ACB8);
  __swift_project_value_buffer(v0, qword_1EC31ACB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C909C450;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "CalendarMatchingPolicyUnspecified";
  *(v6 + 8) = 33;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CalendarMatchingPolicyNextTime";
  *(v10 + 8) = 30;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "CalendarMatchingPolicyNextTimePreservingSmallerComponents";
  *(v12 + 1) = 57;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "CalendarMatchingPolicyPreviousTimePreservingSmallerComponents";
  *(v14 + 1) = 61;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "CalendarMatchingPolicyStrict";
  *(v16 + 1) = 28;
  v16[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8F8A190()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31ACD0);
  __swift_project_value_buffer(v0, qword_1EC31ACD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "CalendarRepeatedTimePolicyUnspecified";
  *(v6 + 8) = 37;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CalendarRepeatedTimePolicyFirst";
  *(v10 + 1) = 31;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "CalendarRepeatedTimePolicyLast";
  *(v12 + 1) = 30;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8F8A3DC()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31ACE8);
  __swift_project_value_buffer(v0, qword_1EC31ACE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1C90ABEA0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 0;
  *v5 = "LocaleWeekdayUnspecified";
  *(v5 + 8) = 24;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C9063BDC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "LocaleWeekdayMonday";
  *(v9 + 8) = 19;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "LocaleWeekdayTuesday";
  *(v11 + 1) = 20;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "LocaleWeekdayWednesday";
  *(v13 + 1) = 22;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "LocaleWeekdayThursday";
  *(v15 + 1) = 21;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "LocaleWeekdayFriday";
  *(v17 + 1) = 19;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "LocaleWeekdaySaturday";
  *(v19 + 1) = 21;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "LocaleWeekdaySunday";
  *(v21 + 1) = 19;
  v21[16] = 2;
  v8();
  return sub_1C9063BEC();
}

uint64_t sub_1C8F8A760()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AD00);
  __swift_project_value_buffer(v0, qword_1EC31AD00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C90ABEF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "RecurrenceRuleFrequencyUnspecified";
  *(v6 + 8) = 34;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RecurrenceRuleFrequencyMinutely";
  *(v10 + 8) = 31;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "RecurrenceRuleFrequencyHourly";
  *(v12 + 1) = 29;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "RecurrenceRuleFrequencyDaily";
  *(v14 + 1) = 28;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "RecurrenceRuleFrequencyWeekly";
  *(v16 + 1) = 29;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "RecurrenceRuleFrequencyMonthly";
  *(v18 + 1) = 30;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "RecurrenceRuleFrequencyYearly";
  *(v20 + 1) = 29;
  v20[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8F8AA9C()
{
  if (qword_1EC3118F0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31AC90;
  v2 = *algn_1EC31AC98;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0xD000000000000012, 0x80000001C90CF480);

  qword_1EC31AD18 = v1;
  unk_1EC31AD20 = v2;
  return result;
}

uint64_t sub_1C8F8AB64()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AD28);
  __swift_project_value_buffer(v0, qword_1EC31AD28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "occurences";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "date";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "never";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v7 = OUTLINED_FUNCTION_5_39();
        sub_1C8F8AED4(v7, v8, v9, v10);
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_5_39();
        sub_1C8F8AE20(v3, v4, v5, v6);
        break;
      case 1:
        OUTLINED_FUNCTION_20_22();
        sub_1C90639AC();
        break;
    }
  }

  return result;
}

uint64_t sub_1C8F8AE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd(0);
  sub_1C906378C();
  sub_1C8CD1B00(&qword_1EC31D9F8, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
  return sub_1C9063A4C();
}

uint64_t sub_1C8F8AF90(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(result + 8) & 1) == 0)
  {
    return sub_1C9063B5C();
  }

  return result;
}

uint64_t sub_1C8F8AFC8(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd(0);
  if (*(a1 + *(result + 24)) != 2)
  {
    return sub_1C9063B0C();
  }

  return result;
}

void static ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_55_3();
  v5 = sub_1C906378C();
  OUTLINED_FUNCTION_11();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_50_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AD0, &unk_1C9074D00);
  OUTLINED_FUNCTION_9(v9);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C158, &qword_1C90ABFB8);
  OUTLINED_FUNCTION_44_22();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_38();
  v12 = *(v0 + 8);
  if (*(v1 + 8))
  {
    if (!*(v0 + 8))
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (*v1 != *v0)
    {
      v12 = 1;
    }

    if (v12)
    {
      goto LABEL_16;
    }
  }

  v31 = v7;
  v30 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd(0);
  v13 = *(v4 + 48);
  OUTLINED_FUNCTION_44_18();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_44_18();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_191(v3);
  if (!v14)
  {
    OUTLINED_FUNCTION_177_5();
    sub_1C8D63FCC();
    OUTLINED_FUNCTION_191(v3 + v13);
    if (!v14)
    {
      (*(v31 + 32))(v2, v3 + v13, v5);
      OUTLINED_FUNCTION_72_8();
      sub_1C8CD1B00(v18, v19, MEMORY[0x1E69AA908]);
      OUTLINED_FUNCTION_49();
      v20 = sub_1C9063EAC();
      v21 = *(v31 + 8);
      v22 = OUTLINED_FUNCTION_119();
      v21(v22);
      v23 = OUTLINED_FUNCTION_378();
      v21(v23);
      sub_1C8D16D78(v3, &qword_1EC313AD0, &unk_1C9074D00);
      if ((v20 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    v15 = OUTLINED_FUNCTION_378();
    v16(v15);
LABEL_15:
    sub_1C8D16D78(v3, &qword_1EC31C158, &qword_1C90ABFB8);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_191(v3 + v13);
  if (!v14)
  {
    goto LABEL_15;
  }

  sub_1C8D16D78(v3, &qword_1EC313AD0, &unk_1C9074D00);
LABEL_19:
  v24 = *(v30 + 24);
  v25 = *(v1 + v24);
  v26 = *(v0 + v24);
  if (v25 != 2)
  {
    if (v26 == 2 || ((v25 ^ v26) & 1) != 0)
    {
      goto LABEL_16;
    }

LABEL_24:
    sub_1C90637EC();
    OUTLINED_FUNCTION_1_76();
    v29 = sub_1C8CD1B00(v27, v28, MEMORY[0x1E69AAC10]);
    v17 = OUTLINED_FUNCTION_265_2(v29);
    goto LABEL_17;
  }

  if (v26 == 2)
  {
    goto LABEL_24;
  }

LABEL_16:
  v17 = 0;
LABEL_17:
  OUTLINED_FUNCTION_50_0(v17);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8F8B3DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D6C8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F8B45C(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CB48, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F8B4CC(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31CB48, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F8B54C()
{
  if (qword_1EC3118F0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31AC90;
  v2 = *algn_1EC31AC98;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0xD000000000000016, 0x80000001C90CF450);

  qword_1EC31AD40 = v1;
  *algn_1EC31AD48 = v2;
  return result;
}

uint64_t sub_1C8F8B614()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AD50);
  __swift_project_value_buffer(v0, qword_1EC31AD50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "RecurrenceRuleWeekdayWeekday";
  *(v6 + 8) = 28;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "RecurrenceRuleWeekdayEvery";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "RecurrenceRuleWeekdayNth";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_124_6();
        sub_1C90639AC();
        break;
      case 2:
        OUTLINED_FUNCTION_22_0();
        sub_1C906390C();
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_5_39();
        sub_1C8F8B8D4(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

void ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_363_1();
  OUTLINED_FUNCTION_4_36();
  if (!*v21 || (sub_1C8DC0BB4(v23, v24, v25), OUTLINED_FUNCTION_29_23(), sub_1C9063B1C(), !v22))
  {
    v26 = OUTLINED_FUNCTION_2_55();
    sub_1C8F8B9D4(v26);
    if (!v22)
    {
      v27 = OUTLINED_FUNCTION_2_55();
      sub_1C8F8BA10(v27, v28, v29, v30);
      type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday(0);
      OUTLINED_FUNCTION_53_15();
    }
  }

  OUTLINED_FUNCTION_364_1();
}

uint64_t sub_1C8F8B9D4(uint64_t result)
{
  if (*(result + 1) != 2)
  {
    return sub_1C9063B0C();
  }

  return result;
}

uint64_t sub_1C8F8BA10(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(result + 16) & 1) == 0)
  {
    return sub_1C9063B5C();
  }

  return result;
}

uint64_t static ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday.== infix(_:_:)()
{
  OUTLINED_FUNCTION_309_0();
  if (!v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_223();
  v4 = *(v3 + 1);
  v6 = *(v5 + 1);
  if (v4 == 2)
  {
    if (v6 != 2)
    {
      return 0;
    }
  }

  else if (v6 == 2 || ((v4 ^ v6) & 1) != 0)
  {
    return 0;
  }

  v7 = *(v0 + 16);
  if (*(v1 + 16))
  {
    if (!*(v0 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (*(v1 + 8) != *(v0 + 8))
    {
      v7 = 1;
    }

    if (v7)
    {
      return 0;
    }
  }

  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday(0);
  OUTLINED_FUNCTION_327_1();
  OUTLINED_FUNCTION_1_76();
  v11 = sub_1C8CD1B00(v9, v10, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_12_28(v11) & 1;
}

uint64_t sub_1C8F8BB94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D6C0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F8BC14(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31C358, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F8BC84(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31C358, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F8BD04()
{
  if (qword_1EC3118F0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31AC90;
  v2 = *algn_1EC31AC98;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0xD000000000000014, 0x80000001C90CF3D0);

  qword_1EC31AD68 = v1;
  unk_1EC31AD70 = v2;
  return result;
}

uint64_t sub_1C8F8BDCC()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AD78);
  __swift_project_value_buffer(v0, qword_1EC31AD78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "index";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isLeap";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleMonth.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_124_6();
      sub_1C906391C();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_20_22();
      sub_1C90639BC();
    }
  }

  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleMonth.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_4_36();
  if (!*v0 || (OUTLINED_FUNCTION_17_25(), result = sub_1C9063B5C(), !v1))
  {
    if (*(v2 + 8) != 1 || (OUTLINED_FUNCTION_17_25(), result = sub_1C9063B0C(), !v1))
    {
      type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleMonth(0);
      return OUTLINED_FUNCTION_13_23();
    }
  }

  return result;
}

uint64_t static ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleMonth.== infix(_:_:)()
{
  OUTLINED_FUNCTION_330_2();
  if (!v0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_223();
  if (*(v1 + 8) != *(v2 + 8))
  {
    return 0;
  }

  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleMonth(0);
  OUTLINED_FUNCTION_64_7();
  OUTLINED_FUNCTION_1_76();
  v6 = sub_1C8CD1B00(v4, v5, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_12_28(v6) & 1;
}

uint64_t sub_1C8F8C1C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D6B8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleMonth, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleMonth);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F8C244(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31C350, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleMonth, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleMonth);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F8C2B4(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31C350, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleMonth, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleMonth);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F8C334()
{
  if (qword_1EC3117C8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31A9B0;
  v2 = *algn_1EC31A9B8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x746E49657461442ELL, 0xED00006C61767265);

  qword_1EC31AD90 = v1;
  *algn_1EC31AD98 = v2;
  return result;
}

uint64_t sub_1C8F8C404()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31ADA0);
  __swift_project_value_buffer(v0, qword_1EC31ADA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "start";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "end";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "duration";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

void ToolKitProtoTypedValue.PrimitiveValue.DateInterval.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    v1 = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        v7 = OUTLINED_FUNCTION_5_39();
        sub_1C8FB8618(v7, v8, v9, v10, v11, v12);
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_5_39();
        sub_1C8F8C730(v3, v4, v5, v6);
        break;
      case 1:
        OUTLINED_FUNCTION_17_34();
        sub_1C8F6D810();
        break;
    }
  }
}

uint64_t sub_1C8F8C730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateInterval(0);
  sub_1C906378C();
  sub_1C8CD1B00(&qword_1EC31D9F8, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
  return sub_1C9063A4C();
}

void sub_1C8F8C83C()
{
  OUTLINED_FUNCTION_300_0();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_83_8();
  v5 = OUTLINED_FUNCTION_22_33();
  v6(v5);
  if (!v0)
  {
    OUTLINED_FUNCTION_3_4();
    sub_1C8F8CAD4();
    v7 = OUTLINED_FUNCTION_3_4();
    v4(v7);
    v2(0);
    OUTLINED_FUNCTION_69_10();
  }

  OUTLINED_FUNCTION_301_1();
}

uint64_t sub_1C8F8C8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[3] = a4;
  v12[1] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AD0, &unk_1C9074D00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = sub_1C906378C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC313AD0, &unk_1C9074D00);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_1C8CD1B00(&qword_1EC31D9F8, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
  sub_1C9063BCC();
  return (*(v8 + 8))(v10, v7);
}

void sub_1C8F8CAD4()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_276();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_9(v5);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_16_5();
  sub_1C906378C();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_94_1();
  v2(0);
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_66_10();
  if (__swift_getEnumTagSinglePayload(v8, v9, v10) == 1)
  {
    sub_1C8D16D78(v0, &qword_1EC313AD0, &unk_1C9074D00);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_124();
    v12(v11);
    OUTLINED_FUNCTION_72_8();
    sub_1C8CD1B00(v13, v14, MEMORY[0x1E69AA8F8]);
    sub_1C9063BCC();
    v15 = OUTLINED_FUNCTION_203();
    v16(v15);
  }

  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8F8CC84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateInterval(0);
  if ((*(a1 + *(result + 24) + 8) & 1) == 0)
  {
    return sub_1C9063B7C();
  }

  return result;
}

uint64_t sub_1C8F8CD84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D6B0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateInterval, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.DateInterval);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F8CE04(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CB80, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateInterval, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.DateInterval);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F8CE74(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31CB80, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateInterval, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.DateInterval);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F8CEF4()
{
  if (qword_1EC3117C8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31A9B0;
  v2 = *algn_1EC31A9B8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x6F6974617275442ELL, 0xE90000000000006ELL);

  qword_1EC31ADB8 = v1;
  unk_1EC31ADC0 = v2;
  return result;
}

uint64_t sub_1C8F8CFBC()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31ADC8);
  __swift_project_value_buffer(v0, qword_1EC31ADC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "seconds";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "attoSeconds";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Duration.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_22_0();
      sub_1C90639BC();
    }
  }

  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Duration.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_4_36();
  if (!*v0 || (OUTLINED_FUNCTION_17_25(), result = sub_1C9063B5C(), !v1))
  {
    if (!*(v2 + 8) || (OUTLINED_FUNCTION_17_25(), result = sub_1C9063B5C(), !v1))
    {
      type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Duration(0);
      return OUTLINED_FUNCTION_13_23();
    }
  }

  return result;
}

uint64_t sub_1C8F8D324(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D6A8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Duration, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Duration);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F8D3A4(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CB98, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Duration, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Duration);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F8D414(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31CB98, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Duration, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Duration);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F8D494()
{
  result = MEMORY[0x1CCA81A90](0xD000000000000011, 0x80000001C90CF380);
  qword_1EC31ADE0 = 0xD000000000000012;
  *algn_1EC31ADE8 = 0x80000001C90CD320;
  return result;
}

uint64_t sub_1C8F8D528()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31ADF0);
  __swift_project_value_buffer(v0, qword_1EC31ADF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "caseValue";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "displayRepresentation";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8F8D7A8()
{
  OUTLINED_FUNCTION_89_1();
  while (1)
  {
    OUTLINED_FUNCTION_203();
    result = sub_1C90638DC();
    if (v1 || (v4 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_276();
        OUTLINED_FUNCTION_305_1();
        v0();
        break;
      case 2:
        OUTLINED_FUNCTION_177_5();
        sub_1C9063A0C();
        break;
      case 1:
        OUTLINED_FUNCTION_276();
        OUTLINED_FUNCTION_305_1();
        v2();
        break;
    }
  }

  return result;
}

uint64_t sub_1C8F8D840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(0);
  type metadata accessor for ToolKitProtoTypeIdentifier(0);
  sub_1C8CD1B00(&qword_1EDA6C508, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
  return sub_1C9063A4C();
}

uint64_t sub_1C8F8D8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(0);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_1C8CD1B00(qword_1EDA641A8, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  return sub_1C9063A4C();
}

void sub_1C8F8D9FC()
{
  OUTLINED_FUNCTION_300_0();
  v2 = v1;
  v4 = v3;
  v5 = OUTLINED_FUNCTION_7_48();
  v6(v5);
  if (!v0)
  {
    OUTLINED_FUNCTION_36_21();
    if (v7)
    {
      OUTLINED_FUNCTION_10_33();
      sub_1C9063B8C();
    }

    v8 = OUTLINED_FUNCTION_2_55();
    v4(v8);
    v2(0);
    OUTLINED_FUNCTION_53_15();
  }

  OUTLINED_FUNCTION_301_1();
}

uint64_t sub_1C8F8DA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139D8, &qword_1C9072A40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC3139D8, &qword_1C9072A40);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EDA6C508, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoTypeIdentifier);
}

uint64_t sub_1C8F8DC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC312A48, &unk_1C9072A10);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA641A8, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

uint64_t sub_1C8F8DEC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D6A0, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue, &protocol conformance descriptor for ToolKitProtoTypedValue.EnumerationValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F8DF48(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA65E18, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue, &protocol conformance descriptor for ToolKitProtoTypedValue.EnumerationValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F8DFB8(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(qword_1EDA65E18, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue, &protocol conformance descriptor for ToolKitProtoTypedValue.EnumerationValue);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F8E084()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AE18);
  __swift_project_value_buffer(v0, qword_1EC31AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C90ABEB0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "identifier";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "properties";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "displayRepresentation";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "hydratedAppEntity";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "siriKitEntity";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoTypedValue.EntityValue.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_5_39();
        sub_1C8F8E464(v3, v4, v5, v6);
        break;
      case 2:
        OUTLINED_FUNCTION_20_22();
        sub_1C9063A0C();
        break;
      case 3:
        v13 = OUTLINED_FUNCTION_5_39();
        sub_1C8F8E518(v13, v14, v15, v16);
        break;
      case 4:
        v17 = OUTLINED_FUNCTION_5_39();
        sub_1C8F8E610(v17, v18, v19, v20);
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_5_39();
        sub_1C8FC661C(v7, v8, v9, v10, v11, v12);
        break;
      case 6:
        v21 = OUTLINED_FUNCTION_5_39();
        sub_1C8F8E6C4(v21, v22, v23, v24);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8F8E464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  type metadata accessor for ToolKitProtoTypeIdentifier(0);
  sub_1C8CD1B00(&qword_1EDA6C508, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
  return sub_1C9063A4C();
}

uint64_t sub_1C8F8E518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C90637BC();
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  sub_1C8CD1B00(&qword_1EC31C2C0, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  return sub_1C90638CC();
}

uint64_t sub_1C8F8E610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_1C8CD1B00(qword_1EDA641A8, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  return sub_1C9063A4C();
}

void ToolKitProtoTypedValue.EntityValue.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_17_5();
  v1 = OUTLINED_FUNCTION_7_48();
  sub_1C8F8E888(v1, v2, v3, v4);
  if (!v0)
  {
    OUTLINED_FUNCTION_36_21();
    if (v5)
    {
      OUTLINED_FUNCTION_10_33();
      sub_1C9063B8C();
    }

    OUTLINED_FUNCTION_346_2();
    if (v6)
    {
      sub_1C90637BC();
      type metadata accessor for ToolKitProtoTypedValue(0);
      sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
      sub_1C8CD1B00(&qword_1EC31C2C0, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
      OUTLINED_FUNCTION_146_6();
      sub_1C9063ADC();
    }

    v7 = OUTLINED_FUNCTION_2_55();
    sub_1C8F8EA5C(v7, v8, v9, v10);
    v11 = OUTLINED_FUNCTION_2_55();
    sub_1C8F8EC30(v11);
    v12 = OUTLINED_FUNCTION_2_55();
    sub_1C8F8ECD0(v12);
    type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
    OUTLINED_FUNCTION_13_23();
  }

  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C8F8E888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139D8, &qword_1C9072A40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC3139D8, &qword_1C9072A40);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EDA6C508, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoTypeIdentifier);
}

uint64_t sub_1C8F8EA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC312A48, &unk_1C9072A10);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA641A8, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

uint64_t sub_1C8F8EC30(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  v3 = a1 + *(result + 32);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    sub_1C8CE9144(*v3, *(v3 + 8));
    sub_1C9063B3C();
    return sub_1C8CE7BD0(v5, v4);
  }

  return result;
}

uint64_t sub_1C8F8ECD0(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  v3 = a1 + *(result + 36);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    sub_1C8CE9144(*v3, *(v3 + 8));
    sub_1C9063B3C();
    return sub_1C8CE7BD0(v5, v4);
  }

  return result;
}

uint64_t sub_1C8F8EDF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D698, type metadata accessor for ToolKitProtoTypedValue.EntityValue, &protocol conformance descriptor for ToolKitProtoTypedValue.EntityValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F8EE78(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CBB8, type metadata accessor for ToolKitProtoTypedValue.EntityValue, &protocol conformance descriptor for ToolKitProtoTypedValue.EntityValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F8EEE8(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31CBB8, type metadata accessor for ToolKitProtoTypedValue.EntityValue, &protocol conformance descriptor for ToolKitProtoTypedValue.EntityValue);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F8EFB8()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AE40);
  __swift_project_value_buffer(v0, qword_1EC31AE40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "data";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "displayRepresentation";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8F8F238()
{
  OUTLINED_FUNCTION_89_1();
  while (1)
  {
    OUTLINED_FUNCTION_203();
    result = sub_1C90638DC();
    if (v1 || (v4 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_276();
        OUTLINED_FUNCTION_305_1();
        v0();
        break;
      case 2:
        OUTLINED_FUNCTION_278_3();
        v2();
        break;
      case 1:
        OUTLINED_FUNCTION_177_5();
        sub_1C9063A0C();
        break;
    }
  }

  return result;
}

uint64_t sub_1C8F8F2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.CodableValue(0);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_1C8CD1B00(qword_1EDA641A8, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  return sub_1C9063A4C();
}

void ToolKitProtoTypedValue.CodableValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_340_2();
  OUTLINED_FUNCTION_1_6();
  if (!v4 || (OUTLINED_FUNCTION_23_29(), sub_1C9063B8C(), !v3))
  {
    v5 = OUTLINED_FUNCTION_181_1();
    if (sub_1C8EB7FAC(v5, v6) || (OUTLINED_FUNCTION_181_1(), OUTLINED_FUNCTION_10_33(), sub_1C9063B3C(), !v3))
    {
      v7 = OUTLINED_FUNCTION_2_55();
      sub_1C8F8F414(v7, v8, v9, v10);
      if (!v3)
      {
        type metadata accessor for ToolKitProtoTypedValue.CodableValue(0);
        OUTLINED_FUNCTION_53_15();
      }
    }
  }

  OUTLINED_FUNCTION_341_2();
}

uint64_t sub_1C8F8F414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoTypedValue.CodableValue(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC312A48, &unk_1C9072A10);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA641A8, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

uint64_t sub_1C8F8F670(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D690, type metadata accessor for ToolKitProtoTypedValue.CodableValue, &protocol conformance descriptor for ToolKitProtoTypedValue.CodableValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F8F6F0(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CBD0, type metadata accessor for ToolKitProtoTypedValue.CodableValue, &protocol conformance descriptor for ToolKitProtoTypedValue.CodableValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F8F760(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31CBD0, type metadata accessor for ToolKitProtoTypedValue.CodableValue, &protocol conformance descriptor for ToolKitProtoTypedValue.CodableValue);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F8F7E0()
{
  result = MEMORY[0x1CCA81A90](0xD000000000000010, 0x80000001C90CF350);
  qword_1EC31AE58 = 0xD000000000000012;
  unk_1EC31AE60 = 0x80000001C90CD320;
  return result;
}

uint64_t sub_1C8F8F874()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AE68);
  __swift_project_value_buffer(v0, qword_1EC31AE68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "values";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "typeInstance";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

void ToolKitProtoTypedValue.CollectionValue.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    v1 = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        v7 = OUTLINED_FUNCTION_5_39();
        sub_1C8F8FC20(v7, v8, v9, v10);
        break;
      case 2:
        OUTLINED_FUNCTION_233_4();
        OUTLINED_FUNCTION_17_34();
        sub_1C8F6BF94();
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_5_39();
        sub_1C8F8FB6C(v3, v4, v5, v6);
        break;
    }
  }
}

uint64_t sub_1C8F8FB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.CollectionValue(0);
  type metadata accessor for ToolKitProtoTypeIdentifier(0);
  sub_1C8CD1B00(&qword_1EDA6C508, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
  return sub_1C9063A4C();
}

uint64_t sub_1C8F8FC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.CollectionValue(0);
  type metadata accessor for ToolKitProtoTypeInstance(0);
  sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  return sub_1C9063A4C();
}

void ToolKitProtoTypedValue.CollectionValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_340_2();
  v4 = OUTLINED_FUNCTION_7_48();
  sub_1C8F8FD88(v4, v5, v6, v7);
  if (!v3)
  {
    OUTLINED_FUNCTION_271_1();
    if (v8)
    {
      type metadata accessor for ToolKitProtoTypedValue(0);
      OUTLINED_FUNCTION_19_31();
      sub_1C8CD1B00(v9, v10, &protocol conformance descriptor for ToolKitProtoTypedValue);
      OUTLINED_FUNCTION_126_4();
      OUTLINED_FUNCTION_29_23();
      sub_1C9063BBC();
    }

    v11 = OUTLINED_FUNCTION_2_55();
    sub_1C8F8FF5C(v11, v12, v13, v14);
    type metadata accessor for ToolKitProtoTypedValue.CollectionValue(0);
    OUTLINED_FUNCTION_53_15();
  }

  OUTLINED_FUNCTION_341_2();
}

uint64_t sub_1C8F8FD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139D8, &qword_1C9072A40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoTypedValue.CollectionValue(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC3139D8, &qword_1C9072A40);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EDA6C508, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoTypeIdentifier);
}

uint64_t sub_1C8F8FF5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoTypedValue.CollectionValue(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoTypeInstance);
}

uint64_t sub_1C8F901B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D688, type metadata accessor for ToolKitProtoTypedValue.CollectionValue, &protocol conformance descriptor for ToolKitProtoTypedValue.CollectionValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F90238(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA62298, type metadata accessor for ToolKitProtoTypedValue.CollectionValue, &protocol conformance descriptor for ToolKitProtoTypedValue.CollectionValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F902A8(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(qword_1EDA62298, type metadata accessor for ToolKitProtoTypedValue.CollectionValue, &protocol conformance descriptor for ToolKitProtoTypedValue.CollectionValue);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F90374()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AE90);
  __swift_project_value_buffer(v0, qword_1EC31AE90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "query";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

void sub_1C8F905A0()
{
  OUTLINED_FUNCTION_57_1();
  while (1)
  {
    OUTLINED_FUNCTION_125();
    v2 = sub_1C90638DC();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (v2 == 2)
    {
      v4 = OUTLINED_FUNCTION_101_7();
      v0(v4);
    }

    else if (v2 == 1)
    {
      OUTLINED_FUNCTION_101_7();
      sub_1C8F6D810();
    }
  }
}

uint64_t sub_1C8F90658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.QueryValue(0);
  type metadata accessor for ToolKitProtoQuery(0);
  sub_1C8CD1B00(&qword_1EC31CE98, type metadata accessor for ToolKitProtoQuery, &protocol conformance descriptor for ToolKitProtoQuery);
  return sub_1C9063A4C();
}

void sub_1C8F90760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_340_2();
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_83_8();
  v9 = OUTLINED_FUNCTION_22_33();
  v10(v9);
  if (!v4)
  {
    v11 = OUTLINED_FUNCTION_3_4();
    v8(v11);
    v6(0);
    OUTLINED_FUNCTION_69_10();
  }

  OUTLINED_FUNCTION_341_2();
}

uint64_t sub_1C8F907E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139E0, &qword_1C906F538);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoQuery(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoTypedValue.QueryValue(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC3139E0, &qword_1C906F538);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EC31CE98, type metadata accessor for ToolKitProtoQuery, &protocol conformance descriptor for ToolKitProtoQuery);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoQuery);
}

uint64_t sub_1C8F90A3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D680, type metadata accessor for ToolKitProtoTypedValue.QueryValue, &protocol conformance descriptor for ToolKitProtoTypedValue.QueryValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F90ABC(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CBF0, type metadata accessor for ToolKitProtoTypedValue.QueryValue, &protocol conformance descriptor for ToolKitProtoTypedValue.QueryValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F90B2C(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31CBF0, type metadata accessor for ToolKitProtoTypedValue.QueryValue, &protocol conformance descriptor for ToolKitProtoTypedValue.QueryValue);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F90BAC()
{
  result = MEMORY[0x1CCA81A90](0xD000000000000016, 0x80000001C90CF330);
  qword_1EC31AEA8 = 0xD000000000000012;
  unk_1EC31AEB0 = 0x80000001C90CD320;
  return result;
}

uint64_t sub_1C8F90C38()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AEB8);
  __swift_project_value_buffer(v0, qword_1EC31AEB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "identifier";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "displayRepresentation";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8F90EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue(0);
  type metadata accessor for ToolKitProtoTypeIdentifier(0);
  sub_1C8CD1B00(&qword_1EDA6C508, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
  return sub_1C9063A4C();
}

uint64_t sub_1C8F90F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue(0);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_1C8CD1B00(qword_1EDA641A8, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  return sub_1C9063A4C();
}

uint64_t sub_1C8F91074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139D8, &qword_1C9072A40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC3139D8, &qword_1C9072A40);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EDA6C508, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoTypeIdentifier);
}

uint64_t sub_1C8F91248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC312A48, &unk_1C9072A10);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA641A8, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

uint64_t sub_1C8F914A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D678, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue, &protocol conformance descriptor for ToolKitProtoTypedValue.EntityIdentifierValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F91524(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CC08, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue, &protocol conformance descriptor for ToolKitProtoTypedValue.EntityIdentifierValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F91594(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31CC08, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue, &protocol conformance descriptor for ToolKitProtoTypedValue.EntityIdentifierValue);

  return sub_1C9063ABC();
}

void sub_1C8F91644(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_132_4(a1, a2);
  OUTLINED_FUNCTION_97_5();
  OUTLINED_FUNCTION_68_6();
  OUTLINED_FUNCTION_131_5(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1C8F916AC()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AEE0);
  __swift_project_value_buffer(v0, qword_1EC31AEE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "expectedTypeInstance";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "storage";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

void ToolKitProtoTypedValue.DeferredValue.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    v1 = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        v7 = OUTLINED_FUNCTION_5_39();
        sub_1C8F91A68(v7, v8, v9, v10);
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_5_39();
        sub_1C8F919B4(v3, v4, v5, v6);
        break;
      case 1:
        OUTLINED_FUNCTION_17_34();
        sub_1C8F6D810();
        break;
    }
  }
}

uint64_t sub_1C8F919B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0);
  type metadata accessor for ToolKitProtoTypeInstance(0);
  sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  return sub_1C9063A4C();
}

uint64_t sub_1C8F91A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0);
  type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage(0);
  sub_1C8CD1B00(&qword_1EC313A10, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage, &protocol conformance descriptor for ToolKitProtoTypedValue.DeferredValue.Storage);
  return sub_1C9063A4C();
}

void ToolKitProtoTypedValue.DeferredValue.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_83_8();
  OUTLINED_FUNCTION_22_33();
  sub_1C8CE2FE8();
  if (!v0)
  {
    v1 = OUTLINED_FUNCTION_3_4();
    sub_1C8F91B94(v1, v2, v3, v4);
    v5 = OUTLINED_FUNCTION_3_4();
    sub_1C8F91D68(v5, v6, v7, v8);
    type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0);
    OUTLINED_FUNCTION_69_10();
  }
}

uint64_t sub_1C8F91B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoTypeInstance);
}

uint64_t sub_1C8F91D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139F0, &unk_1C9074D10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC3139F0, &unk_1C9074D10);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EC313A10, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage, &protocol conformance descriptor for ToolKitProtoTypedValue.DeferredValue.Storage);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage);
}

uint64_t sub_1C8F91FC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D670, type metadata accessor for ToolKitProtoTypedValue.DeferredValue, &protocol conformance descriptor for ToolKitProtoTypedValue.DeferredValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F92044(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CC20, type metadata accessor for ToolKitProtoTypedValue.DeferredValue, &protocol conformance descriptor for ToolKitProtoTypedValue.DeferredValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F920B4(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31CC20, type metadata accessor for ToolKitProtoTypedValue.DeferredValue, &protocol conformance descriptor for ToolKitProtoTypedValue.DeferredValue);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F92134()
{
  if (qword_1EC3119D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31AED0;
  v2 = *algn_1EC31AED8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x656761726F74532ELL, 0xE800000000000000);

  qword_1EC31AEF8 = v1;
  unk_1EC31AF00 = v2;
  return result;
}

uint64_t sub_1C8F921F8()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AF08);
  __swift_project_value_buffer(v0, qword_1EC31AF08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "contentItemProperty";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "defaultValue";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8F92438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313B30, &qword_1C9074DE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D9E8, &qword_1C90BBDD0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v10, &qword_1EC313B30, &qword_1C9074DE0);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind);
    }

    else
    {
      sub_1C8D16D78(v20, &qword_1EC31D9E8, &qword_1C90BBDD0);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }
  }

  sub_1C8CD1B00(&qword_1EC31CC48, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage, &protocol conformance descriptor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC31D9E8, &qword_1C90BBDD0);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC31D9E8, &qword_1C90BBDD0);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC31D9E8, &qword_1C90BBDD0);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC31D9E8, &qword_1C90BBDD0);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC313B30, &qword_1C9074DE0);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8F92930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ActionParameterDefaultValueStorage(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313B30, &qword_1C9074DE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D9F0, &qword_1C90BBDD8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v10, &qword_1EC313B30, &qword_1C9074DE0);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8D16D78(v20, &qword_1EC31D9F0, &qword_1C90BBDD8);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind);
    }
  }

  sub_1C8CD1B00(&qword_1EC31CC60, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ActionParameterDefaultValueStorage, &protocol conformance descriptor for ToolKitProtoTypedValue.DeferredValue.Storage.ActionParameterDefaultValueStorage);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC31D9F0, &qword_1C90BBDD8);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC31D9F0, &qword_1C90BBDD8);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC31D9F0, &qword_1C90BBDD8);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC31D9F0, &qword_1C90BBDD8);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC313B30, &qword_1C9074DE0);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8F92F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313B30, &qword_1C9074DE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC313B30, &qword_1C9074DE0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31CC48, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage, &protocol conformance descriptor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8F93108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313B30, &qword_1C9074DE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ActionParameterDefaultValueStorage(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC313B30, &qword_1C9074DE0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31CC60, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ActionParameterDefaultValueStorage, &protocol conformance descriptor for ToolKitProtoTypedValue.DeferredValue.Storage.ActionParameterDefaultValueStorage);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ActionParameterDefaultValueStorage);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8F9358C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D668, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage, &protocol conformance descriptor for ToolKitProtoTypedValue.DeferredValue.Storage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F9360C(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC313A10, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage, &protocol conformance descriptor for ToolKitProtoTypedValue.DeferredValue.Storage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F9367C(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC313A10, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage, &protocol conformance descriptor for ToolKitProtoTypedValue.DeferredValue.Storage);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F936FC()
{
  if (qword_1EC3119E0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31AEF8;
  v2 = unk_1EC31AF00;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0xD00000000000001BLL, 0x80000001C90CF2F0);

  qword_1EC31AF20 = v1;
  *algn_1EC31AF28 = v2;
  return result;
}

uint64_t sub_1C8F937C4()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AF30);
  __swift_project_value_buffer(v0, qword_1EC31AF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "data";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "propertyKey";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8F93AA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D660, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage, &protocol conformance descriptor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F93B20(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CC48, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage, &protocol conformance descriptor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F93B90(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31CC48, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage, &protocol conformance descriptor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F93C10()
{
  if (qword_1EC3119E0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31AEF8;
  v2 = unk_1EC31AF00;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0xD000000000000023, 0x80000001C90CF2C0);

  qword_1EC31AF48 = v1;
  unk_1EC31AF50 = v2;
  return result;
}

uint64_t sub_1C8F93CD8()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AF58);
  __swift_project_value_buffer(v0, qword_1EC31AF58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "actionIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parameterKey";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8F93FA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D658, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ActionParameterDefaultValueStorage, &protocol conformance descriptor for ToolKitProtoTypedValue.DeferredValue.Storage.ActionParameterDefaultValueStorage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F94020(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CC60, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ActionParameterDefaultValueStorage, &protocol conformance descriptor for ToolKitProtoTypedValue.DeferredValue.Storage.ActionParameterDefaultValueStorage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F94090(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31CC60, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ActionParameterDefaultValueStorage, &protocol conformance descriptor for ToolKitProtoTypedValue.DeferredValue.Storage.ActionParameterDefaultValueStorage);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F94128()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AF70);
  __swift_project_value_buffer(v0, qword_1EC31AF70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C90ABEF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "collection";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "optionalVariant";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "union";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "restricted";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "deferred";
  *(v18 + 1) = 8;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "constrained";
  *(v20 + 1) = 11;
  v20[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoTypeInstance.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_8_32();
        sub_1C8F9452C(v3, v4, v5, v6);
        break;
      case 2:
        v19 = OUTLINED_FUNCTION_8_32();
        sub_1C8F948B4(v19, v20, v21, v22);
        break;
      case 3:
        v11 = OUTLINED_FUNCTION_8_32();
        sub_1C8F94C44(v11, v12, v13, v14);
        break;
      case 4:
        v15 = OUTLINED_FUNCTION_8_32();
        sub_1C8F94FD4(v15, v16, v17, v18);
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_8_32();
        sub_1C8F95364(v7, v8, v9, v10);
        break;
      case 6:
        v23 = OUTLINED_FUNCTION_8_32();
        sub_1C8F956F4(v23, v24, v25, v26);
        break;
      case 7:
        v27 = OUTLINED_FUNCTION_8_32();
        sub_1C8F95A88(v27, v28, v29, v30);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8F9452C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[3] = a4;
  v6 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  MEMORY[0x1EEE9AC00](v6);
  v21[1] = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139D8, &qword_1C9072A40);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v21 - v13;
  __swift_storeEnumTagSinglePayload(v21 - v13, 1, 1, v6);
  v21[0] = a1;
  v15 = *a1;
  v16 = v15 & 0xF000000000000007;
  if (!(v15 >> 61) && v16 != 0xF000000000000007)
  {

    sub_1C8D16D78(v14, &qword_1EC3139D8, &qword_1C9072A40);
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD0FB0(v15);
    sub_1C900BE74();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v6);
  }

  sub_1C8CD1B00(&qword_1EDA6C508, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
  sub_1C9063A4C();
  if (v4)
  {
    v17 = v14;
    return sub_1C8D16D78(v17, &qword_1EC3139D8, &qword_1C9072A40);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v11, 1, v6) == 1)
  {
    sub_1C8D16D78(v14, &qword_1EC3139D8, &qword_1C9072A40);
    v17 = v11;
    return sub_1C8D16D78(v17, &qword_1EC3139D8, &qword_1C9072A40);
  }

  sub_1C900BE74();
  if (v16 != 0xF000000000000007)
  {
    sub_1C90638EC();
  }

  sub_1C8D16D78(v14, &qword_1EC3139D8, &qword_1C9072A40);
  v19 = swift_allocBox();
  sub_1C900BE74();
  v20 = *v21[0];
  *v21[0] = v19;
  return sub_1C8CD0FB0(v20);
}

uint64_t sub_1C8F948B4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[3] = a4;
  v6 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x1EEE9AC00](v6);
  v21[1] = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v21 - v13;
  __swift_storeEnumTagSinglePayload(v21 - v13, 1, 1, v6);
  v21[0] = a1;
  v15 = *a1;
  if ((v15 & 0xF000000000000007) != 0xF000000000000007 && (v15 & 0xE000000000000000) == 0x2000000000000000)
  {

    sub_1C8D16D78(v14, &qword_1EC312A58, &unk_1C9074CC0);
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD0FB0(v15);
    sub_1C900BE74();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v6);
  }

  sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  sub_1C9063A4C();
  if (v4)
  {
    v17 = v14;
    return sub_1C8D16D78(v17, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v11, 1, v6) == 1)
  {
    sub_1C8D16D78(v14, &qword_1EC312A58, &unk_1C9074CC0);
    v17 = v11;
    return sub_1C8D16D78(v17, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C900BE74();
  if ((v15 & 0xF000000000000007) != 0xF000000000000007)
  {
    sub_1C90638EC();
  }

  sub_1C8D16D78(v14, &qword_1EC312A58, &unk_1C9074CC0);
  v19 = swift_allocBox();
  sub_1C900BE74();
  v20 = *v21[0];
  *v21[0] = v19 | 0x2000000000000000;
  return sub_1C8CD0FB0(v20);
}

uint64_t sub_1C8F94C44(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[3] = a4;
  v6 = type metadata accessor for ToolKitProtoTypeInstance.Optional(0);
  MEMORY[0x1EEE9AC00](v6);
  v21[1] = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D9C0, &qword_1C90BBDA8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v21 - v13;
  __swift_storeEnumTagSinglePayload(v21 - v13, 1, 1, v6);
  v21[0] = a1;
  v15 = *a1;
  if ((v15 & 0xF000000000000007) != 0xF000000000000007 && (v15 & 0xE000000000000000) == 0x4000000000000000)
  {

    sub_1C8D16D78(v14, &qword_1EC31D9C0, &qword_1C90BBDA8);
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD0FB0(v15);
    sub_1C900BE74();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v6);
  }

  sub_1C8CD1B00(qword_1EDA6AF50, type metadata accessor for ToolKitProtoTypeInstance.Optional, &protocol conformance descriptor for ToolKitProtoTypeInstance.Optional);
  sub_1C9063A4C();
  if (v4)
  {
    v17 = v14;
    return sub_1C8D16D78(v17, &qword_1EC31D9C0, &qword_1C90BBDA8);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v11, 1, v6) == 1)
  {
    sub_1C8D16D78(v14, &qword_1EC31D9C0, &qword_1C90BBDA8);
    v17 = v11;
    return sub_1C8D16D78(v17, &qword_1EC31D9C0, &qword_1C90BBDA8);
  }

  sub_1C900BE74();
  if ((v15 & 0xF000000000000007) != 0xF000000000000007)
  {
    sub_1C90638EC();
  }

  sub_1C8D16D78(v14, &qword_1EC31D9C0, &qword_1C90BBDA8);
  v19 = swift_allocBox();
  sub_1C900BE74();
  v20 = *v21[0];
  *v21[0] = v19 | 0x4000000000000000;
  return sub_1C8CD0FB0(v20);
}

uint64_t sub_1C8F94FD4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[3] = a4;
  v6 = type metadata accessor for ToolKitProtoTypeInstance.Union(0);
  MEMORY[0x1EEE9AC00](v6);
  v21[1] = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D9C8, &qword_1C90BBDB0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v21 - v13;
  __swift_storeEnumTagSinglePayload(v21 - v13, 1, 1, v6);
  v21[0] = a1;
  v15 = *a1;
  if ((v15 & 0xF000000000000007) != 0xF000000000000007 && (v15 & 0xE000000000000000) == 0x6000000000000000)
  {

    sub_1C8D16D78(v14, &qword_1EC31D9C8, &qword_1C90BBDB0);
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD0FB0(v15);
    sub_1C900BE74();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v6);
  }

  sub_1C8CD1B00(qword_1EDA65360, type metadata accessor for ToolKitProtoTypeInstance.Union, &protocol conformance descriptor for ToolKitProtoTypeInstance.Union);
  sub_1C9063A4C();
  if (v4)
  {
    v17 = v14;
    return sub_1C8D16D78(v17, &qword_1EC31D9C8, &qword_1C90BBDB0);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v11, 1, v6) == 1)
  {
    sub_1C8D16D78(v14, &qword_1EC31D9C8, &qword_1C90BBDB0);
    v17 = v11;
    return sub_1C8D16D78(v17, &qword_1EC31D9C8, &qword_1C90BBDB0);
  }

  sub_1C900BE74();
  if ((v15 & 0xF000000000000007) != 0xF000000000000007)
  {
    sub_1C90638EC();
  }

  sub_1C8D16D78(v14, &qword_1EC31D9C8, &qword_1C90BBDB0);
  v19 = swift_allocBox();
  sub_1C900BE74();
  v20 = *v21[0];
  *v21[0] = v19 | 0x6000000000000000;
  return sub_1C8CD0FB0(v20);
}

uint64_t sub_1C8F95364(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[3] = a4;
  v6 = type metadata accessor for ToolKitProtoTypeInstance.Restricted(0);
  MEMORY[0x1EEE9AC00](v6);
  v21[1] = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D9D0, &qword_1C90BBDB8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v21 - v13;
  __swift_storeEnumTagSinglePayload(v21 - v13, 1, 1, v6);
  v21[0] = a1;
  v15 = *a1;
  if ((v15 & 0xF000000000000007) != 0xF000000000000007 && (v15 & 0xE000000000000000) == 0x8000000000000000)
  {

    sub_1C8D16D78(v14, &qword_1EC31D9D0, &qword_1C90BBDB8);
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD0FB0(v15);
    sub_1C900BE74();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v6);
  }

  sub_1C8CD1B00(&qword_1EDA685B0, type metadata accessor for ToolKitProtoTypeInstance.Restricted, &protocol conformance descriptor for ToolKitProtoTypeInstance.Restricted);
  sub_1C9063A4C();
  if (v4)
  {
    v17 = v14;
    return sub_1C8D16D78(v17, &qword_1EC31D9D0, &qword_1C90BBDB8);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v11, 1, v6) == 1)
  {
    sub_1C8D16D78(v14, &qword_1EC31D9D0, &qword_1C90BBDB8);
    v17 = v11;
    return sub_1C8D16D78(v17, &qword_1EC31D9D0, &qword_1C90BBDB8);
  }

  sub_1C900BE74();
  if ((v15 & 0xF000000000000007) != 0xF000000000000007)
  {
    sub_1C90638EC();
  }

  sub_1C8D16D78(v14, &qword_1EC31D9D0, &qword_1C90BBDB8);
  v19 = swift_allocBox();
  sub_1C900BE74();
  v20 = *v21[0];
  *v21[0] = v19 | 0x8000000000000000;
  return sub_1C8CD0FB0(v20);
}

uint64_t sub_1C8F956F4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[3] = a4;
  v6 = type metadata accessor for ToolKitProtoTypeInstance.Deferred(0);
  MEMORY[0x1EEE9AC00](v6);
  v21[1] = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D9D8, &qword_1C90BBDC0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v21 - v13;
  __swift_storeEnumTagSinglePayload(v21 - v13, 1, 1, v6);
  v21[0] = a1;
  v15 = *a1;
  if ((v15 & 0xF000000000000007) != 0xF000000000000007 && (v15 & 0xE000000000000000) == 0xA000000000000000)
  {

    sub_1C8D16D78(v14, &qword_1EC31D9D8, &qword_1C90BBDC0);
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD0FB0(v15);
    sub_1C900BE74();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v6);
  }

  sub_1C8CD1B00(&qword_1EDA65350, type metadata accessor for ToolKitProtoTypeInstance.Deferred, &protocol conformance descriptor for ToolKitProtoTypeInstance.Deferred);
  sub_1C9063A4C();
  if (v4)
  {
    v17 = v14;
    return sub_1C8D16D78(v17, &qword_1EC31D9D8, &qword_1C90BBDC0);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v11, 1, v6) == 1)
  {
    sub_1C8D16D78(v14, &qword_1EC31D9D8, &qword_1C90BBDC0);
    v17 = v11;
    return sub_1C8D16D78(v17, &qword_1EC31D9D8, &qword_1C90BBDC0);
  }

  sub_1C900BE74();
  if ((v15 & 0xF000000000000007) != 0xF000000000000007)
  {
    sub_1C90638EC();
  }

  sub_1C8D16D78(v14, &qword_1EC31D9D8, &qword_1C90BBDC0);
  v19 = swift_allocBox();
  sub_1C900BE74();
  v20 = *v21[0];
  *v21[0] = v19 | 0xA000000000000000;
  return sub_1C8CD0FB0(v20);
}

uint64_t sub_1C8F95A88(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[3] = a4;
  v6 = type metadata accessor for ToolKitProtoTypeInstance.Constrained(0);
  MEMORY[0x1EEE9AC00](v6);
  v21[1] = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D9E0, &qword_1C90BBDC8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v21 - v13;
  __swift_storeEnumTagSinglePayload(v21 - v13, 1, 1, v6);
  v21[0] = a1;
  v15 = *a1;
  if ((v15 & 0xF000000000000007) != 0xF000000000000007 && (v15 & 0xE000000000000000) == 0xC000000000000000)
  {

    sub_1C8D16D78(v14, &qword_1EC31D9E0, &qword_1C90BBDC8);
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD0FB0(v15);
    sub_1C900BE74();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v6);
  }

  sub_1C8CD1B00(&qword_1EC31CCA0, type metadata accessor for ToolKitProtoTypeInstance.Constrained, &protocol conformance descriptor for ToolKitProtoTypeInstance.Constrained);
  sub_1C9063A4C();
  if (v4)
  {
    v17 = v14;
    return sub_1C8D16D78(v17, &qword_1EC31D9E0, &qword_1C90BBDC8);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v11, 1, v6) == 1)
  {
    sub_1C8D16D78(v14, &qword_1EC31D9E0, &qword_1C90BBDC8);
    v17 = v11;
    return sub_1C8D16D78(v17, &qword_1EC31D9E0, &qword_1C90BBDC8);
  }

  sub_1C900BE74();
  if ((v15 & 0xF000000000000007) != 0xF000000000000007)
  {
    sub_1C90638EC();
  }

  sub_1C8D16D78(v14, &qword_1EC31D9E0, &qword_1C90BBDC8);
  v19 = swift_allocBox();
  sub_1C900BE74();
  v20 = *v21[0];
  *v21[0] = v19 | 0xC000000000000000;
  return sub_1C8CD0FB0(v20);
}

void ToolKitProtoTypeInstance.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_43_15();
  OUTLINED_FUNCTION_273_2();
  if (v2)
  {
    goto LABEL_11;
  }

  switch(v1 >> 61)
  {
    case 1uLL:
      v19 = OUTLINED_FUNCTION_3_4();
      sub_1C8F96030(v19, v20, v21, v22);
      break;
    case 2uLL:
      v11 = OUTLINED_FUNCTION_3_4();
      sub_1C8F96188(v11, v12, v13, v14);
      break;
    case 3uLL:
      v15 = OUTLINED_FUNCTION_3_4();
      sub_1C8F962E0(v15, v16, v17, v18);
      break;
    case 4uLL:
      v7 = OUTLINED_FUNCTION_3_4();
      sub_1C8F96438(v7, v8, v9, v10);
      break;
    case 5uLL:
      v23 = OUTLINED_FUNCTION_3_4();
      sub_1C8F96590(v23, v24, v25, v26);
      break;
    case 6uLL:
      v27 = OUTLINED_FUNCTION_3_4();
      sub_1C8F966E8(v27, v28, v29, v30);
      break;
    default:
      v3 = OUTLINED_FUNCTION_3_4();
      sub_1C8F95EE0(v3, v4, v5, v6);
      break;
  }

  if (!v0)
  {
LABEL_11:
    type metadata accessor for ToolKitProtoTypeInstance(0);
    OUTLINED_FUNCTION_52_17();
  }
}

uint64_t sub_1C8F95EE0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *a1;
  if (*a1 >> 61)
  {
    v9 = 1;
  }

  else
  {
    v9 = (*a1 & 0xF000000000000007) == 0xF000000000000007;
  }

  if (v9)
  {
    __break(1u);
  }

  else
  {
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD1B00(&qword_1EDA6C508, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
    sub_1C9063BCC();
    return sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoTypeIdentifier);
  }

  return result;
}

void sub_1C8F96030(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x2000000000000000)
  {
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
    sub_1C9063BCC();
    sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoTypeInstance);
  }

  else
  {
    __break(1u);
  }
}

void sub_1C8F96188(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ToolKitProtoTypeInstance.Optional(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x4000000000000000)
  {
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD1B00(qword_1EDA6AF50, type metadata accessor for ToolKitProtoTypeInstance.Optional, &protocol conformance descriptor for ToolKitProtoTypeInstance.Optional);
    sub_1C9063BCC();
    sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoTypeInstance.Optional);
  }

  else
  {
    __break(1u);
  }
}

void sub_1C8F962E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ToolKitProtoTypeInstance.Union(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x6000000000000000)
  {
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD1B00(qword_1EDA65360, type metadata accessor for ToolKitProtoTypeInstance.Union, &protocol conformance descriptor for ToolKitProtoTypeInstance.Union);
    sub_1C9063BCC();
    sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoTypeInstance.Union);
  }

  else
  {
    __break(1u);
  }
}

void sub_1C8F96438(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ToolKitProtoTypeInstance.Restricted(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x8000000000000000)
  {
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD1B00(&qword_1EDA685B0, type metadata accessor for ToolKitProtoTypeInstance.Restricted, &protocol conformance descriptor for ToolKitProtoTypeInstance.Restricted);
    sub_1C9063BCC();
    sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoTypeInstance.Restricted);
  }

  else
  {
    __break(1u);
  }
}

void sub_1C8F96590(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ToolKitProtoTypeInstance.Deferred(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0xA000000000000000)
  {
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD1B00(&qword_1EDA65350, type metadata accessor for ToolKitProtoTypeInstance.Deferred, &protocol conformance descriptor for ToolKitProtoTypeInstance.Deferred);
    sub_1C9063BCC();
    sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoTypeInstance.Deferred);
  }

  else
  {
    __break(1u);
  }
}

void sub_1C8F966E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ToolKitProtoTypeInstance.Constrained(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0xC000000000000000)
  {
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD1B00(&qword_1EC31CCA0, type metadata accessor for ToolKitProtoTypeInstance.Constrained, &protocol conformance descriptor for ToolKitProtoTypeInstance.Constrained);
    sub_1C9063BCC();
    sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoTypeInstance.Constrained);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C8F968E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D650, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F96964(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F969D4(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F96A9C()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AF98);
  __swift_project_value_buffer(v0, qword_1EC31AF98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "defaultValue";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

void ToolKitProtoTypeInstance.Optional.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    v1 = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      v3 = OUTLINED_FUNCTION_5_39();
      sub_1C8F96D3C(v3, v4, v5, v6);
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_230_3();
      OUTLINED_FUNCTION_17_34();
      sub_1C8F6D810();
    }
  }
}

uint64_t sub_1C8F96D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypeInstance.Optional(0);
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  return sub_1C9063A4C();
}

uint64_t sub_1C8F96E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314368, &unk_1C9074D90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoTypeInstance.Optional(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoTypedValue);
}

uint64_t sub_1C8F970A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D648, type metadata accessor for ToolKitProtoTypeInstance.Optional, &protocol conformance descriptor for ToolKitProtoTypeInstance.Optional);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F97120(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA6AF50, type metadata accessor for ToolKitProtoTypeInstance.Optional, &protocol conformance descriptor for ToolKitProtoTypeInstance.Optional);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F97190(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(qword_1EDA6AF50, type metadata accessor for ToolKitProtoTypeInstance.Optional, &protocol conformance descriptor for ToolKitProtoTypeInstance.Optional);

  return sub_1C9063ABC();
}

void ToolKitProtoTypeInstance.Union.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    v1 = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      OUTLINED_FUNCTION_17_34();
      sub_1C8F6BF94();
    }
  }
}

void ToolKitProtoTypeInstance.Union.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_340_2();
  OUTLINED_FUNCTION_4_36();
  OUTLINED_FUNCTION_264_3();
  if (!v4 || (type metadata accessor for ToolKitProtoTypeInstance(0), OUTLINED_FUNCTION_229_4(), sub_1C8CD1B00(v5, v6, &protocol conformance descriptor for ToolKitProtoTypeInstance), OUTLINED_FUNCTION_121_5(), OUTLINED_FUNCTION_29_23(), sub_1C9063BBC(), !v3))
  {
    type metadata accessor for ToolKitProtoTypeInstance.Union(0);
    OUTLINED_FUNCTION_13_23();
  }

  OUTLINED_FUNCTION_341_2();
}

uint64_t sub_1C8F9745C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D640, type metadata accessor for ToolKitProtoTypeInstance.Union, &protocol conformance descriptor for ToolKitProtoTypeInstance.Union);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F974DC(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA65360, type metadata accessor for ToolKitProtoTypeInstance.Union, &protocol conformance descriptor for ToolKitProtoTypeInstance.Union);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F9754C(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(qword_1EDA65360, type metadata accessor for ToolKitProtoTypeInstance.Union, &protocol conformance descriptor for ToolKitProtoTypeInstance.Union);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F97618()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AFE8);
  __swift_project_value_buffer(v0, qword_1EC31AFE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "context";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8F97844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypeInstance.Restricted(0);
  type metadata accessor for ToolKitProtoTypeIdentifier(0);
  sub_1C8CD1B00(&qword_1EDA6C508, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
  return sub_1C9063A4C();
}

uint64_t sub_1C8F97938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139D8, &qword_1C9072A40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoTypeInstance.Restricted(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC3139D8, &qword_1C9072A40);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EDA6C508, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoTypeIdentifier);
}

uint64_t sub_1C8F97B94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D638, type metadata accessor for ToolKitProtoTypeInstance.Restricted, &protocol conformance descriptor for ToolKitProtoTypeInstance.Restricted);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F97C14(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA685B0, type metadata accessor for ToolKitProtoTypeInstance.Restricted, &protocol conformance descriptor for ToolKitProtoTypeInstance.Restricted);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F97C84(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EDA685B0, type metadata accessor for ToolKitProtoTypeInstance.Restricted, &protocol conformance descriptor for ToolKitProtoTypeInstance.Restricted);

  return sub_1C9063ABC();
}

void ToolKitProtoTypeInstance.Deferred.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    v1 = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      OUTLINED_FUNCTION_230_3();
      OUTLINED_FUNCTION_17_34();
      sub_1C8F6D810();
    }
  }
}

uint64_t sub_1C8F97E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  OUTLINED_FUNCTION_83_8();
  v7 = OUTLINED_FUNCTION_22_33();
  result = v8(v7);
  if (!v5)
  {
    a5(0);
    return OUTLINED_FUNCTION_52_17();
  }

  return result;
}

uint64_t sub_1C8F97F3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D630, type metadata accessor for ToolKitProtoTypeInstance.Deferred, &protocol conformance descriptor for ToolKitProtoTypeInstance.Deferred);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F97FBC(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA65350, type metadata accessor for ToolKitProtoTypeInstance.Deferred, &protocol conformance descriptor for ToolKitProtoTypeInstance.Deferred);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F9802C(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EDA65350, type metadata accessor for ToolKitProtoTypeInstance.Deferred, &protocol conformance descriptor for ToolKitProtoTypeInstance.Deferred);

  return sub_1C9063ABC();
}

void sub_1C8F980D8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_132_4(a1, a2);
  OUTLINED_FUNCTION_97_5();
  OUTLINED_FUNCTION_68_6();
  OUTLINED_FUNCTION_131_5(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1C8F98140()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B038);
  __swift_project_value_buffer(v0, qword_1EC31B038);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "instance";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "context";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

void sub_1C8F9836C()
{
  OUTLINED_FUNCTION_57_1();
  while (1)
  {
    OUTLINED_FUNCTION_125();
    v2 = sub_1C90638DC();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (v2 == 2)
    {
      OUTLINED_FUNCTION_101_7();
      sub_1C8F6BF94();
    }

    else if (v2 == 1)
    {
      v4 = OUTLINED_FUNCTION_101_7();
      v0(v4);
    }
  }
}

uint64_t sub_1C8F98424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypeInstance.Constrained(0);
  type metadata accessor for ToolKitProtoTypeInstance(0);
  sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  return sub_1C9063A4C();
}

void sub_1C8F98518()
{
  OUTLINED_FUNCTION_300_0();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_7_48();
  v4(v3);
  if (!v0)
  {
    OUTLINED_FUNCTION_271_1();
    if (v5)
    {
      type metadata accessor for ToolKitProtoRestrictionContext(0);
      sub_1C8CD1B00(qword_1EDA67CE0, type metadata accessor for ToolKitProtoRestrictionContext, &protocol conformance descriptor for ToolKitProtoRestrictionContext);
      OUTLINED_FUNCTION_126_4();
      OUTLINED_FUNCTION_29_23();
      sub_1C9063BBC();
    }

    v2(0);
    OUTLINED_FUNCTION_13_23();
  }

  OUTLINED_FUNCTION_301_1();
}

uint64_t sub_1C8F985DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoTypeInstance.Constrained(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoTypeInstance);
}

uint64_t sub_1C8F98838(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D628, type metadata accessor for ToolKitProtoTypeInstance.Constrained, &protocol conformance descriptor for ToolKitProtoTypeInstance.Constrained);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F988B8(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CCA0, type metadata accessor for ToolKitProtoTypeInstance.Constrained, &protocol conformance descriptor for ToolKitProtoTypeInstance.Constrained);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F98928(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31CCA0, type metadata accessor for ToolKitProtoTypeInstance.Constrained, &protocol conformance descriptor for ToolKitProtoTypeInstance.Constrained);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F989B4()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B050);
  __swift_project_value_buffer(v0, qword_1EC31B050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C90ABEF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "inSet";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "representableAs";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "personReachableAs";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "dateExpressibleAs";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "textTypedWith";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "measurementExpressibleAs";
  *(v18 + 1) = 24;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "inInclusiveRange";
  *(v20 + 1) = 16;
  v20[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoRestrictionContext.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_8_32();
        sub_1C8F98DB8(v3, v4, v5, v6);
        break;
      case 2:
        v19 = OUTLINED_FUNCTION_8_32();
        sub_1C8F99140(v19, v20, v21, v22);
        break;
      case 3:
        v11 = OUTLINED_FUNCTION_5_39();
        sub_1C8F994D0(v11, v12, v13, v14);
        break;
      case 4:
        v15 = OUTLINED_FUNCTION_5_39();
        sub_1C8F995AC(v15, v16, v17, v18);
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_8_32();
        sub_1C8F99688(v7, v8, v9, v10);
        break;
      case 6:
        v23 = OUTLINED_FUNCTION_8_32();
        sub_1C8F99A18(v23, v24, v25, v26);
        break;
      case 7:
        v27 = OUTLINED_FUNCTION_8_32();
        sub_1C8F99DAC(v27, v28, v29, v30);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8F98DB8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[3] = a4;
  v6 = type metadata accessor for ToolKitProtoRestrictionContext.InSet(0);
  MEMORY[0x1EEE9AC00](v6);
  v21[1] = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D998, &qword_1C90BBD80);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v21 - v13;
  __swift_storeEnumTagSinglePayload(v21 - v13, 1, 1, v6);
  v21[0] = a1;
  v15 = *a1;
  v16 = v15 & 0xF000000000000007;
  if (!(v15 >> 61) && v16 != 0xF000000000000007)
  {

    sub_1C8D16D78(v14, &qword_1EC31D998, &qword_1C90BBD80);
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD0FB0(v15);
    sub_1C900BE74();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v6);
  }

  sub_1C8CD1B00(qword_1EDA647E8, type metadata accessor for ToolKitProtoRestrictionContext.InSet, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet);
  sub_1C9063A4C();
  if (v4)
  {
    v17 = v14;
    return sub_1C8D16D78(v17, &qword_1EC31D998, &qword_1C90BBD80);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v11, 1, v6) == 1)
  {
    sub_1C8D16D78(v14, &qword_1EC31D998, &qword_1C90BBD80);
    v17 = v11;
    return sub_1C8D16D78(v17, &qword_1EC31D998, &qword_1C90BBD80);
  }

  sub_1C900BE74();
  if (v16 != 0xF000000000000007)
  {
    sub_1C90638EC();
  }

  sub_1C8D16D78(v14, &qword_1EC31D998, &qword_1C90BBD80);
  v19 = swift_allocBox();
  sub_1C900BE74();
  v20 = *v21[0];
  *v21[0] = v19;
  return sub_1C8CD0FB0(v20);
}

uint64_t sub_1C8F99140(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[3] = a4;
  v6 = type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs(0);
  MEMORY[0x1EEE9AC00](v6);
  v21[1] = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D9A0, &qword_1C90BBD88);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v21 - v13;
  __swift_storeEnumTagSinglePayload(v21 - v13, 1, 1, v6);
  v21[0] = a1;
  v15 = *a1;
  if ((v15 & 0xF000000000000007) != 0xF000000000000007 && (v15 & 0xE000000000000000) == 0x2000000000000000)
  {

    sub_1C8D16D78(v14, &qword_1EC31D9A0, &qword_1C90BBD88);
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD0FB0(v15);
    sub_1C900BE74();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v6);
  }

  sub_1C8CD1B00(qword_1EDA64958, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs, &protocol conformance descriptor for ToolKitProtoRestrictionContext.RepresentableAs);
  sub_1C9063A4C();
  if (v4)
  {
    v17 = v14;
    return sub_1C8D16D78(v17, &qword_1EC31D9A0, &qword_1C90BBD88);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v11, 1, v6) == 1)
  {
    sub_1C8D16D78(v14, &qword_1EC31D9A0, &qword_1C90BBD88);
    v17 = v11;
    return sub_1C8D16D78(v17, &qword_1EC31D9A0, &qword_1C90BBD88);
  }

  sub_1C900BE74();
  if ((v15 & 0xF000000000000007) != 0xF000000000000007)
  {
    sub_1C90638EC();
  }

  sub_1C8D16D78(v14, &qword_1EC31D9A0, &qword_1C90BBD88);
  v19 = swift_allocBox();
  sub_1C900BE74();
  v20 = *v21[0];
  *v21[0] = v19 | 0x2000000000000000;
  return sub_1C8CD0FB0(v20);
}

uint64_t sub_1C8F99688(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[3] = a4;
  v6 = type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith(0);
  MEMORY[0x1EEE9AC00](v6);
  v21[1] = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D9A8, &qword_1C90BBD90);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v21 - v13;
  __swift_storeEnumTagSinglePayload(v21 - v13, 1, 1, v6);
  v21[0] = a1;
  v15 = *a1;
  if ((v15 & 0xF000000000000007) != 0xF000000000000007 && (v15 & 0xE000000000000000) == 0x8000000000000000)
  {

    sub_1C8D16D78(v14, &qword_1EC31D9A8, &qword_1C90BBD90);
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD0FB0(v15);
    sub_1C900BE74();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v6);
  }

  sub_1C8CD1B00(&qword_1EDA64A10, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith, &protocol conformance descriptor for ToolKitProtoRestrictionContext.TextTypedWith);
  sub_1C9063A4C();
  if (v4)
  {
    v17 = v14;
    return sub_1C8D16D78(v17, &qword_1EC31D9A8, &qword_1C90BBD90);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v11, 1, v6) == 1)
  {
    sub_1C8D16D78(v14, &qword_1EC31D9A8, &qword_1C90BBD90);
    v17 = v11;
    return sub_1C8D16D78(v17, &qword_1EC31D9A8, &qword_1C90BBD90);
  }

  sub_1C900BE74();
  if ((v15 & 0xF000000000000007) != 0xF000000000000007)
  {
    sub_1C90638EC();
  }

  sub_1C8D16D78(v14, &qword_1EC31D9A8, &qword_1C90BBD90);
  v19 = swift_allocBox();
  sub_1C900BE74();
  v20 = *v21[0];
  *v21[0] = v19 | 0x8000000000000000;
  return sub_1C8CD0FB0(v20);
}

uint64_t sub_1C8F99A18(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[3] = a4;
  v6 = type metadata accessor for ToolKitProtoRestrictionContext.MeasurementExpressibleAs(0);
  MEMORY[0x1EEE9AC00](v6);
  v21[1] = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D9B0, &qword_1C90BBD98);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v21 - v13;
  __swift_storeEnumTagSinglePayload(v21 - v13, 1, 1, v6);
  v21[0] = a1;
  v15 = *a1;
  if ((v15 & 0xF000000000000007) != 0xF000000000000007 && (v15 & 0xE000000000000000) == 0xA000000000000000)
  {

    sub_1C8D16D78(v14, &qword_1EC31D9B0, &qword_1C90BBD98);
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD0FB0(v15);
    sub_1C900BE74();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v6);
  }

  sub_1C8CD1B00(&qword_1EC31CD20, type metadata accessor for ToolKitProtoRestrictionContext.MeasurementExpressibleAs, &protocol conformance descriptor for ToolKitProtoRestrictionContext.MeasurementExpressibleAs);
  sub_1C9063A4C();
  if (v4)
  {
    v17 = v14;
    return sub_1C8D16D78(v17, &qword_1EC31D9B0, &qword_1C90BBD98);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v11, 1, v6) == 1)
  {
    sub_1C8D16D78(v14, &qword_1EC31D9B0, &qword_1C90BBD98);
    v17 = v11;
    return sub_1C8D16D78(v17, &qword_1EC31D9B0, &qword_1C90BBD98);
  }

  sub_1C900BE74();
  if ((v15 & 0xF000000000000007) != 0xF000000000000007)
  {
    sub_1C90638EC();
  }

  sub_1C8D16D78(v14, &qword_1EC31D9B0, &qword_1C90BBD98);
  v19 = swift_allocBox();
  sub_1C900BE74();
  v20 = *v21[0];
  *v21[0] = v19 | 0xA000000000000000;
  return sub_1C8CD0FB0(v20);
}

uint64_t sub_1C8F99DAC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[3] = a4;
  v6 = type metadata accessor for ToolKitProtoRestrictionContext.InInclusiveRange(0);
  MEMORY[0x1EEE9AC00](v6);
  v21[1] = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D9B8, &qword_1C90BBDA0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v21 - v13;
  __swift_storeEnumTagSinglePayload(v21 - v13, 1, 1, v6);
  v21[0] = a1;
  v15 = *a1;
  if ((v15 & 0xF000000000000007) != 0xF000000000000007 && (v15 & 0xE000000000000000) == 0xC000000000000000)
  {

    sub_1C8D16D78(v14, &qword_1EC31D9B8, &qword_1C90BBDA0);
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD0FB0(v15);
    sub_1C900BE74();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v6);
  }

  sub_1C8CD1B00(&qword_1EC31CD00, type metadata accessor for ToolKitProtoRestrictionContext.InInclusiveRange, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InInclusiveRange);
  sub_1C9063A4C();
  if (v4)
  {
    v17 = v14;
    return sub_1C8D16D78(v17, &qword_1EC31D9B8, &qword_1C90BBDA0);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v11, 1, v6) == 1)
  {
    sub_1C8D16D78(v14, &qword_1EC31D9B8, &qword_1C90BBDA0);
    v17 = v11;
    return sub_1C8D16D78(v17, &qword_1EC31D9B8, &qword_1C90BBDA0);
  }

  sub_1C900BE74();
  if ((v15 & 0xF000000000000007) != 0xF000000000000007)
  {
    sub_1C90638EC();
  }

  sub_1C8D16D78(v14, &qword_1EC31D9B8, &qword_1C90BBDA0);
  v19 = swift_allocBox();
  sub_1C900BE74();
  v20 = *v21[0];
  *v21[0] = v19 | 0xC000000000000000;
  return sub_1C8CD0FB0(v20);
}

void ToolKitProtoRestrictionContext.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_43_15();
  OUTLINED_FUNCTION_273_2();
  if (v2)
  {
    goto LABEL_11;
  }

  switch(v1 >> 61)
  {
    case 1uLL:
      v19 = OUTLINED_FUNCTION_3_4();
      sub_1C8F9A354(v19, v20, v21, v22);
      break;
    case 2uLL:
      v11 = OUTLINED_FUNCTION_3_4();
      sub_1C8F9A4AC(v11, v12, v13, v14);
      break;
    case 3uLL:
      v15 = OUTLINED_FUNCTION_3_4();
      sub_1C8F9A540(v15, v16, v17, v18);
      break;
    case 4uLL:
      v7 = OUTLINED_FUNCTION_3_4();
      sub_1C8F9A5D4(v7, v8, v9, v10);
      break;
    case 5uLL:
      v23 = OUTLINED_FUNCTION_3_4();
      sub_1C8F9A72C(v23, v24, v25, v26);
      break;
    case 6uLL:
      v27 = OUTLINED_FUNCTION_3_4();
      sub_1C8F9A884(v27, v28, v29, v30);
      break;
    default:
      v3 = OUTLINED_FUNCTION_3_4();
      sub_1C8F9A204(v3, v4, v5, v6);
      break;
  }

  if (!v0)
  {
LABEL_11:
    type metadata accessor for ToolKitProtoRestrictionContext(0);
    OUTLINED_FUNCTION_52_17();
  }
}

uint64_t sub_1C8F9A204(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ToolKitProtoRestrictionContext.InSet(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *a1;
  if (*a1 >> 61)
  {
    v9 = 1;
  }

  else
  {
    v9 = (*a1 & 0xF000000000000007) == 0xF000000000000007;
  }

  if (v9)
  {
    __break(1u);
  }

  else
  {
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD1B00(qword_1EDA647E8, type metadata accessor for ToolKitProtoRestrictionContext.InSet, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet);
    sub_1C9063BCC();
    return sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoRestrictionContext.InSet);
  }

  return result;
}

void sub_1C8F9A354(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x2000000000000000)
  {
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD1B00(qword_1EDA64958, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs, &protocol conformance descriptor for ToolKitProtoRestrictionContext.RepresentableAs);
    sub_1C9063BCC();
    sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);
  }

  else
  {
    __break(1u);
  }
}

uint64_t *sub_1C8F9A4AC(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((~*result & 0xF000000000000007) != 0 && (*result & 0xE000000000000000) == 0x4000000000000000)
  {
    sub_1C8DC0B0C(result, a2, a3);
    return sub_1C9063B1C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_1C8F9A540(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((~*result & 0xF000000000000007) != 0 && (*result & 0xE000000000000000) == 0x6000000000000000)
  {
    sub_1C8DC0AB8(result, a2, a3);
    return sub_1C9063B1C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C8F9A5D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x8000000000000000)
  {
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD1B00(&qword_1EDA64A10, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith, &protocol conformance descriptor for ToolKitProtoRestrictionContext.TextTypedWith);
    sub_1C9063BCC();
    sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);
  }

  else
  {
    __break(1u);
  }
}

void sub_1C8F9A72C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ToolKitProtoRestrictionContext.MeasurementExpressibleAs(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0xA000000000000000)
  {
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD1B00(&qword_1EC31CD20, type metadata accessor for ToolKitProtoRestrictionContext.MeasurementExpressibleAs, &protocol conformance descriptor for ToolKitProtoRestrictionContext.MeasurementExpressibleAs);
    sub_1C9063BCC();
    sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoRestrictionContext.MeasurementExpressibleAs);
  }

  else
  {
    __break(1u);
  }
}

void sub_1C8F9A884(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ToolKitProtoRestrictionContext.InInclusiveRange(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0xC000000000000000)
  {
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD1B00(&qword_1EC31CD00, type metadata accessor for ToolKitProtoRestrictionContext.InInclusiveRange, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InInclusiveRange);
    sub_1C9063BCC();
    sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoRestrictionContext.InInclusiveRange);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C8F9AAD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D620, type metadata accessor for ToolKitProtoRestrictionContext, &protocol conformance descriptor for ToolKitProtoRestrictionContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F9AB54(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA67CE0, type metadata accessor for ToolKitProtoRestrictionContext, &protocol conformance descriptor for ToolKitProtoRestrictionContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F9ABC4(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(qword_1EDA67CE0, type metadata accessor for ToolKitProtoRestrictionContext, &protocol conformance descriptor for ToolKitProtoRestrictionContext);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F9AC44()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B068);
  __swift_project_value_buffer(v0, qword_1EC31B068);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C909C450;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "PersonReachableAsUnspecified";
  *(v6 + 8) = 28;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PersonReachableAsContact";
  *(v10 + 8) = 24;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PersonReachableAsPhone";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "PersonReachableAsEmail";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "PersonReachableAsEmailOrPhone";
  *(v16 + 1) = 29;
  v16[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8F9AF08()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B080);
  __swift_project_value_buffer(v0, qword_1EC31B080);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C909C3B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "DateExpressibleAsUnspecified";
  *(v6 + 8) = 28;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "DateExpressibleAsDate";
  *(v10 + 8) = 21;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "DateExpressibleAsTime";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "DateExpressibleAsDateAndTime";
  *(v14 + 1) = 28;
  v14[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8F9B1CC()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B0A8);
  __swift_project_value_buffer(v0, qword_1EC31B0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "definition";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "templates";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

void ToolKitProtoRestrictionContext.InSet.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    v1 = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      v3 = OUTLINED_FUNCTION_5_39();
      sub_1C8F9B47C(v3, v4, v5, v6);
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_17_34();
      sub_1C8F6D810();
    }
  }
}

uint64_t sub_1C8F9B47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoRestrictionContext.InSet(0);
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  sub_1C8CD1B00(qword_1EDA64F18, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
  return sub_1C9063A4C();
}

uint64_t sub_1C8F9B584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314548, &qword_1C9074338);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC314548, &qword_1C9074338);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA64850, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet);
}

uint64_t sub_1C8F9B74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314208, &unk_1C9074D30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoRestrictionContext.InSet(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC314208, &unk_1C9074D30);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA64F18, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
}

uint64_t sub_1C8F9B9A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D618, type metadata accessor for ToolKitProtoRestrictionContext.InSet, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F9BA28(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA647E8, type metadata accessor for ToolKitProtoRestrictionContext.InSet, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F9BA98(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(qword_1EDA647E8, type metadata accessor for ToolKitProtoRestrictionContext.InSet, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F9BB18()
{
  if (qword_1EC311A80 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31B098;
  v2 = unk_1EC31B0A0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x655365756C61562ELL, 0xE900000000000074);

  qword_1EC31B0C0 = v1;
  *algn_1EC31B0C8 = v2;
  return result;
}

uint64_t sub_1C8F9BBE0()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B0D0);
  __swift_project_value_buffer(v0, qword_1EC31B0D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C90ABEF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "dynamicEnumeration";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "contentPropertyPossibleValues";
  *(v12 + 1) = 29;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "linkQuery";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "standaloneLinkQuery";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "linkQueryOnParameter";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "dynamicEnumerationOnTrigger";
  *(v20 + 1) = 27;
  v20[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F9BFFC();
        break;
      case 2:
        v15 = OUTLINED_FUNCTION_8_32();
        sub_1C8F9C04C(v15, v16, v17, v18);
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_8_32();
        sub_1C8F9C544(v7, v8, v9, v10);
        break;
      case 4:
        v11 = OUTLINED_FUNCTION_8_32();
        sub_1C8F9CA3C(v11, v12, v13, v14);
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_5_39();
        sub_1C8F9CF34(v3, v4, v5, v6);
        break;
      case 6:
        v19 = OUTLINED_FUNCTION_8_32();
        sub_1C8F9D0D8(v19, v20, v21, v22);
        break;
      case 7:
        v23 = OUTLINED_FUNCTION_8_32();
        sub_1C8F9D5D0(v23, v24, v25, v26);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8F9BFFC()
{
  v0 = OUTLINED_FUNCTION_325_2();
  v1(v0);
  OUTLINED_FUNCTION_22_0();
  return sub_1C90639FC();
}

uint64_t sub_1C8F9C04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314588, &qword_1C9074DF0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D978, &qword_1C90BBD60);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v10, &qword_1EC314588, &qword_1C9074DF0);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
    }

    else
    {
      sub_1C8D16D78(v20, &qword_1EC31D978, &qword_1C90BBD60);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }
  }

  sub_1C8CD1B00(&qword_1EDA64900, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC31D978, &qword_1C90BBD60);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC31D978, &qword_1C90BBD60);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC31D978, &qword_1C90BBD60);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC31D978, &qword_1C90BBD60);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC314588, &qword_1C9074DF0);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8F9C544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314588, &qword_1C9074DF0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D980, &qword_1C90BBD68);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v10, &qword_1EC314588, &qword_1C9074DF0);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8D16D78(v20, &qword_1EC31D980, &qword_1C90BBD68);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
    }
  }

  sub_1C8CD1B00(&qword_1EDA615B0, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC31D980, &qword_1C90BBD68);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC31D980, &qword_1C90BBD68);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC31D980, &qword_1C90BBD68);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC31D980, &qword_1C90BBD68);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC314588, &qword_1C9074DF0);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8F9CA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314588, &qword_1C9074DF0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D988, &qword_1C90BBD70);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v10, &qword_1EC314588, &qword_1C9074DF0);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C8D16D78(v20, &qword_1EC31D988, &qword_1C90BBD70);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
    }
  }

  sub_1C8CD1B00(qword_1EDA64890, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC31D988, &qword_1C90BBD70);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC31D988, &qword_1C90BBD70);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC31D988, &qword_1C90BBD70);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC31D988, &qword_1C90BBD70);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC314588, &qword_1C9074DF0);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8F9CF34(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314588, &qword_1C9074DF0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  v13 = 0;
  v14 = 0;
  result = sub_1C90639FC();
  if (v4)
  {
  }

  v10 = v14;
  if (v14)
  {
    v15 = v13;
    sub_1C8D63FCC();
    v11 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v11);
    sub_1C8D16D78(v8, &qword_1EC314588, &qword_1C9074DF0);
    if (EnumTagSinglePayload != 1)
    {
      sub_1C90638EC();
    }

    sub_1C8D16D78(a2, &qword_1EC314588, &qword_1C9074DF0);
    *a2 = v15;
    a2[1] = v10;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v11);
  }

  return result;
}

uint64_t sub_1C8F9D0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314588, &qword_1C9074DF0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D988, &qword_1C90BBD70);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v10, &qword_1EC314588, &qword_1C9074DF0);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C8D16D78(v20, &qword_1EC31D988, &qword_1C90BBD70);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
    }
  }

  sub_1C8CD1B00(qword_1EDA64890, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC31D988, &qword_1C90BBD70);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC31D988, &qword_1C90BBD70);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC31D988, &qword_1C90BBD70);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC31D988, &qword_1C90BBD70);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC314588, &qword_1C9074DF0);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8F9D5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicTriggerEnumeration(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314588, &qword_1C9074DF0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D990, &qword_1C90BBD78);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v10, &qword_1EC314588, &qword_1C9074DF0);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C8D16D78(v20, &qword_1EC31D990, &qword_1C90BBD78);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
    }
  }

  sub_1C8CD1B00(&qword_1EC31CCD8, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicTriggerEnumeration, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicTriggerEnumeration);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC31D990, &qword_1C90BBD78);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC31D990, &qword_1C90BBD78);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC31D990, &qword_1C90BBD78);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC31D990, &qword_1C90BBD78);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC314588, &qword_1C9074DF0);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

void ToolKitProtoRestrictionContext.InSet.ValueSet.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_340_2();
  OUTLINED_FUNCTION_349_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314588, &qword_1C9074DF0);
  OUTLINED_FUNCTION_9(v4);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_46_15();
  sub_1C8F9DC68();
  if (!v3)
  {
    sub_1C8D63FCC();
    v6 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
    OUTLINED_FUNCTION_20_31(v6);
    if (!v7)
    {
      OUTLINED_FUNCTION_124();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          v22 = OUTLINED_FUNCTION_46_15();
          sub_1C8F9DEEC(v22, v23, v24, v25);
          goto LABEL_10;
        case 2u:
          v16 = OUTLINED_FUNCTION_46_15();
          sub_1C8F9E0F4(v16, v17, v18, v19);
          goto LABEL_10;
        case 3u:
          v20 = OUTLINED_FUNCTION_109_5();
          sub_1C8CD20B4(v20, v21);
          OUTLINED_FUNCTION_46_15();
          sub_1C8F9E2FC();
          break;
        case 4u:
          v12 = OUTLINED_FUNCTION_46_15();
          sub_1C8F9E450(v12, v13, v14, v15);
          goto LABEL_10;
        case 5u:
          v26 = OUTLINED_FUNCTION_46_15();
          sub_1C8F9E658(v26, v27, v28, v29);
          goto LABEL_10;
        default:
          v8 = OUTLINED_FUNCTION_46_15();
          sub_1C8F9DCE8(v8, v9, v10, v11);
LABEL_10:
          v30 = OUTLINED_FUNCTION_109_5();
          sub_1C8CD20B4(v30, v31);
          break;
      }
    }

    type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(0);
    OUTLINED_FUNCTION_112();
    sub_1C90637CC();
  }

  OUTLINED_FUNCTION_341_2();
}

uint64_t sub_1C8F9DC68()
{
  v1 = OUTLINED_FUNCTION_41_15();
  result = v2(v1);
  if (*(v0 + *(result + 20) + 8))
  {
    return sub_1C9063B8C();
  }

  return result;
}

uint64_t sub_1C8F9DCE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314588, &qword_1C9074DF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC314588, &qword_1C9074DF0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EDA64900, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8F9DEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314588, &qword_1C9074DF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC314588, &qword_1C9074DF0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EDA615B0, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8F9E0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314588, &qword_1C9074DF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC314588, &qword_1C9074DF0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(qword_1EDA64890, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8F9E2FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314588, &qword_1C9074DF0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v5 - v1;
  sub_1C8D63FCC();
  v3 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    result = sub_1C8D16D78(v2, &qword_1EC314588, &qword_1C9074DF0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C9063B8C();
    }

    result = sub_1C8CD20B4(v2, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8F9E450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314588, &qword_1C9074DF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC314588, &qword_1C9074DF0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(qword_1EDA64890, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8F9E658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314588, &qword_1C9074DF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicTriggerEnumeration(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC314588, &qword_1C9074DF0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31CCD8, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicTriggerEnumeration, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicTriggerEnumeration);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicTriggerEnumeration);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  }

  __break(1u);
  return result;
}

void static ToolKitProtoRestrictionContext.InSet.ValueSet.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v2 = OUTLINED_FUNCTION_24_2();
  type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(v2);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_23();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314588, &qword_1C9074DF0);
  OUTLINED_FUNCTION_9(v4);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C428, &qword_1C90AC070);
  OUTLINED_FUNCTION_44_22();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_72();
  type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(0);
  OUTLINED_FUNCTION_274_3();
  if (v9)
  {
    if (!v7)
    {
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_105_5(v8);
    v12 = v12 && v10 == v11;
    if (!v12 && (sub_1C9064C2C() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v7)
  {
    goto LABEL_19;
  }

  v13 = *(v1 + 48);
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_44_18();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_44_18();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_78_4(v0);
  if (v12)
  {
    OUTLINED_FUNCTION_78_4(v0 + v13);
    if (v12)
    {
      sub_1C8D16D78(v0, &qword_1EC314588, &qword_1C9074DF0);
LABEL_22:
      sub_1C90637EC();
      OUTLINED_FUNCTION_1_76();
      v23 = sub_1C8CD1B00(v21, v22, MEMORY[0x1E69AAC10]);
      v17 = OUTLINED_FUNCTION_12_28(v23);
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  sub_1C8D63FCC();
  OUTLINED_FUNCTION_78_4(v0 + v13);
  if (v14)
  {
    v15 = OUTLINED_FUNCTION_109_5();
    sub_1C8CD20B4(v15, v16);
LABEL_18:
    sub_1C8D16D78(v0, &qword_1EC31C428, &qword_1C90AC070);
    goto LABEL_19;
  }

  sub_1C900BE74();
  OUTLINED_FUNCTION_347();
  static ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind.== infix(_:_:)();
  v18 = OUTLINED_FUNCTION_196_6();
  sub_1C8CD20B4(v18, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  v19 = OUTLINED_FUNCTION_203();
  sub_1C8CD20B4(v19, v20);
  sub_1C8D16D78(v0, &qword_1EC314588, &qword_1C9074DF0);
  if (&qword_1EC314588)
  {
    goto LABEL_22;
  }

LABEL_19:
  v17 = 0;
LABEL_20:
  OUTLINED_FUNCTION_50_0(v17);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8F9EB48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D610, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F9EBC8(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA64850, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F9EC38(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(qword_1EDA64850, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F9ECB8()
{
  if (qword_1EC311A90 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31B0C0;
  v2 = *algn_1EC31B0C8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0xD000000000000013, 0x80000001C90CF090);

  qword_1EC31B0E8 = v1;
  unk_1EC31B0F0 = v2;
  return result;
}

uint64_t sub_1C8F9ED80()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B0F8);
  __swift_project_value_buffer(v0, qword_1EC31B0F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "toolIdentifier";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parameterKey";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8F9F018(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D608, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F9F098(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA64900, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F9F108(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EDA64900, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F9F188()
{
  if (qword_1EC311A90 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31B0C0;
  v2 = *algn_1EC31B0C8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0xD00000000000001ALL, 0x80000001C90CF070);

  qword_1EC31B110 = v1;
  *algn_1EC31B118 = v2;
  return result;
}

uint64_t sub_1C8F9F250()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B120);
  __swift_project_value_buffer(v0, qword_1EC31B120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "triggerIdentifier";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parameterKey";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8F9F4E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D600, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicTriggerEnumeration, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicTriggerEnumeration);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F9F568(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CCD8, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicTriggerEnumeration, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicTriggerEnumeration);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F9F5D8(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31CCD8, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicTriggerEnumeration, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicTriggerEnumeration);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F9F658()
{
  if (qword_1EC311A90 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31B0C0;
  v2 = *algn_1EC31B0C8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0xD00000000000001ELL, 0x80000001C90CF050);

  qword_1EC31B138 = v1;
  unk_1EC31B140 = v2;
  return result;
}

uint64_t sub_1C8F9F720()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B148);
  __swift_project_value_buffer(v0, qword_1EC31B148);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "contentItemClass";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "propertyName";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_20_22();
      sub_1C9063A0C();
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_5_39();
      sub_1C8F9F984(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1C8F9F984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(0);
  type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  sub_1C8CD1B00(qword_1EDA63D38, type metadata accessor for ToolKitProtoContentItemClassDescriptor, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor);
  return sub_1C9063A4C();
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.traverse<A>(visitor:)()
{
  v1 = OUTLINED_FUNCTION_7_48();
  result = sub_1C8F9FAAC(v1, v2, v3, v4);
  if (!v0)
  {
    OUTLINED_FUNCTION_36_21();
    if (v6)
    {
      OUTLINED_FUNCTION_10_33();
      sub_1C9063B8C();
    }

    type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(0);
    return OUTLINED_FUNCTION_13_23();
  }

  return result;
}

uint64_t sub_1C8F9FAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314580, &qword_1C9074DA0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC314580, &qword_1C9074DA0);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA63D38, type metadata accessor for ToolKitProtoContentItemClassDescriptor, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
}

uint64_t sub_1C8F9FD08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D5F8, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F9FD88(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA615B0, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F9FDF8(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EDA615B0, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F9FE78()
{
  if (qword_1EC311A90 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31B0C0;
  v2 = *algn_1EC31B0C8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x6575516B6E694C2ELL, 0xEA00000000007972);

  qword_1EC31B160 = v1;
  *algn_1EC31B168 = v2;
  return result;
}

uint64_t sub_1C8F9FF40()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B170);
  __swift_project_value_buffer(v0, qword_1EC31B170);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 4;
  *v6 = "parameterKey";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 5;
  *v10 = "queryIdentifier";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 6;
  *v12 = "actionIdentifier";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 6 || result == 5 || result == 4)
    {
      OUTLINED_FUNCTION_22_0();
      sub_1C9063A0C();
    }
  }

  return result;
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_6();
  if (!v1 || (OUTLINED_FUNCTION_10_33(), result = sub_1C9063B8C(), !v0))
  {
    OUTLINED_FUNCTION_36_21();
    if (!v3 || (OUTLINED_FUNCTION_10_33(), result = sub_1C9063B8C(), !v0))
    {
      OUTLINED_FUNCTION_36_21();
      if (!v4 || (OUTLINED_FUNCTION_10_33(), result = sub_1C9063B8C(), !v0))
      {
        type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(0);
        return OUTLINED_FUNCTION_53_15();
      }
    }
  }

  return result;
}

uint64_t sub_1C8FA0318(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D5F0, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FA0398(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA64890, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FA0408(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(qword_1EDA64890, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FA0488()
{
  result = MEMORY[0x1CCA81A90](0xD000000000000011, 0x80000001C90CF010);
  qword_1EC31B188 = 0xD00000000000001ALL;
  unk_1EC31B190 = 0x80000001C90CD360;
  return result;
}

uint64_t sub_1C8FA051C()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B198);
  __swift_project_value_buffer(v0, qword_1EC31B198);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "lowerBound";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "upperBound";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoRestrictionContext.InInclusiveRange.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_22_0();
      sub_1C90639DC();
    }
  }

  return result;
}

uint64_t sub_1C8FA07D0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(result + 8) & 1) == 0)
  {
    return sub_1C9063B7C();
  }

  return result;
}

uint64_t sub_1C8FA0810(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(result + 24) & 1) == 0)
  {
    return sub_1C9063B7C();
  }

  return result;
}

uint64_t sub_1C8FA08D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D5E8, type metadata accessor for ToolKitProtoRestrictionContext.InInclusiveRange, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InInclusiveRange);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FA0958(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CD00, type metadata accessor for ToolKitProtoRestrictionContext.InInclusiveRange, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InInclusiveRange);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FA09C8(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31CD00, type metadata accessor for ToolKitProtoRestrictionContext.InInclusiveRange, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InInclusiveRange);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FA0A48()
{
  result = MEMORY[0x1CCA81A90](0xD000000000000010, 0x80000001C90CEFE0);
  qword_1EC31B1B0 = 0xD00000000000001ALL;
  *algn_1EC31B1B8 = 0x80000001C90CD360;
  return result;
}

uint64_t sub_1C8FA0BE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D5E0, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs, &protocol conformance descriptor for ToolKitProtoRestrictionContext.RepresentableAs);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FA0C68(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA64958, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs, &protocol conformance descriptor for ToolKitProtoRestrictionContext.RepresentableAs);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FA0CD8(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(qword_1EDA64958, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs, &protocol conformance descriptor for ToolKitProtoRestrictionContext.RepresentableAs);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FA0D58()
{
  result = MEMORY[0x1CCA81A90](0xD000000000000019, 0x80000001C90CEFB0);
  qword_1EC31B1D8 = 0xD00000000000001ALL;
  unk_1EC31B1E0 = 0x80000001C90CD360;
  return result;
}

uint64_t sub_1C8FA0DEC()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B1E8);
  __swift_project_value_buffer(v0, qword_1EC31B1E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "unit";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "unitAdjustForLocale";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "supportsNegativeNumbers";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoRestrictionContext.MeasurementExpressibleAs.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      OUTLINED_FUNCTION_22_0();
      sub_1C906391C();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_124_6();
      sub_1C90639FC();
    }
  }

  return result;
}

uint64_t ToolKitProtoRestrictionContext.MeasurementExpressibleAs.traverse<A>(visitor:)()
{
  v2 = OUTLINED_FUNCTION_7_48();
  result = sub_1C8CE2D4C(v2);
  if (!v0)
  {
    if (*v1 == 1)
    {
      OUTLINED_FUNCTION_17_25();
      sub_1C9063B0C();
    }

    if (v1[1] == 1)
    {
      OUTLINED_FUNCTION_17_25();
      sub_1C9063B0C();
    }

    type metadata accessor for ToolKitProtoRestrictionContext.MeasurementExpressibleAs(0);
    return OUTLINED_FUNCTION_53_15();
  }

  return result;
}

uint64_t sub_1C8FA11C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D5D8, type metadata accessor for ToolKitProtoRestrictionContext.MeasurementExpressibleAs, &protocol conformance descriptor for ToolKitProtoRestrictionContext.MeasurementExpressibleAs);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FA1244(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CD20, type metadata accessor for ToolKitProtoRestrictionContext.MeasurementExpressibleAs, &protocol conformance descriptor for ToolKitProtoRestrictionContext.MeasurementExpressibleAs);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FA12B4(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31CD20, type metadata accessor for ToolKitProtoRestrictionContext.MeasurementExpressibleAs, &protocol conformance descriptor for ToolKitProtoRestrictionContext.MeasurementExpressibleAs);

  return sub_1C9063ABC();
}

void sub_1C8FA1364(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_132_4(a1, a2);
  OUTLINED_FUNCTION_97_5();
  OUTLINED_FUNCTION_68_6();
  OUTLINED_FUNCTION_131_5(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1C8FA13CC()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B210);
  __swift_project_value_buffer(v0, qword_1EC31B210);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C90ABEB0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "multilineAllowed";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "smartQuotesEnabled";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "smartDashesEnabled";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "keyboardType";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "autocorrectionType";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "capitalizationType";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoRestrictionContext.TextTypedWith.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
        OUTLINED_FUNCTION_22_0();
        sub_1C906391C();
        break;
      case 4:
        v7 = OUTLINED_FUNCTION_5_39();
        sub_1C8FA1770(v7, v8, v9, v10);
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_5_39();
        sub_1C8FA17D8(v3, v4, v5, v6);
        break;
      case 6:
        v11 = OUTLINED_FUNCTION_5_39();
        sub_1C8FA1840(v11, v12, v13, v14);
        break;
      default:
        continue;
    }
  }
}

void ToolKitProtoRestrictionContext.TextTypedWith.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_363_1();
  OUTLINED_FUNCTION_4_36();
  if (*v22 != 1 || (OUTLINED_FUNCTION_17_25(), v25 = sub_1C9063B0C(), !v23))
  {
    if (v24[1] != 1 || (OUTLINED_FUNCTION_17_25(), v25 = sub_1C9063B0C(), !v23))
    {
      if (v24[2] != 1 || (OUTLINED_FUNCTION_17_25(), v25 = sub_1C9063B0C(), !v23))
      {
        if (!v24[3] || (sub_1C8DC0A10(v25, v26, v27), OUTLINED_FUNCTION_29_23(), v25 = sub_1C9063B1C(), !v23))
        {
          if (!v24[4] || (sub_1C8DC0A64(v25, v26, v27), OUTLINED_FUNCTION_29_23(), v25 = sub_1C9063B1C(), !v23))
          {
            if (!v24[5] || (sub_1C8DC09BC(v25, v26, v27), OUTLINED_FUNCTION_29_23(), sub_1C9063B1C(), !v23))
            {
              type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith(0);
              OUTLINED_FUNCTION_13_23();
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_364_1();
}

uint64_t sub_1C8FA1A80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D5D0, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith, &protocol conformance descriptor for ToolKitProtoRestrictionContext.TextTypedWith);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FA1B00(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA64A10, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith, &protocol conformance descriptor for ToolKitProtoRestrictionContext.TextTypedWith);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FA1B70(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EDA64A10, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith, &protocol conformance descriptor for ToolKitProtoRestrictionContext.TextTypedWith);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FA1BF0()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B228);
  __swift_project_value_buffer(v0, qword_1EC31B228);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "AutocorrectionTypeDefault";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AutocorrectionTypeOn";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "AutocorrectionTypeOff";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FA1E3C()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B240);
  __swift_project_value_buffer(v0, qword_1EC31B240);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C90ABF30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "KeyboardTypeDefault";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "KeyboardTypeAsciiCapable";
  *(v10 + 8) = 24;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "KeyboardTypeNumbersAndPunctuation";
  *(v12 + 1) = 33;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "KeyboardTypeUrl";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "KeyboardTypeNumberPad";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "KeyboardTypePhonePad";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "KeyboardTypeNamePhonePad";
  *(v20 + 1) = 24;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "KeyboardTypeEmailAddress";
  *(v22 + 1) = 24;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "KeyboardTypeDecimalPad";
  *(v24 + 1) = 22;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "KeyboardTypeTwitter";
  *(v26 + 1) = 19;
  v26[16] = 2;
  v9();
  v27 = (v5 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 10;
  *v28 = "KeyboardTypeWebSearch";
  *(v28 + 1) = 21;
  v28[16] = 2;
  v9();
  v29 = (v5 + 11 * v2);
  v30 = v29 + v1[14];
  *v29 = 11;
  *v30 = "KeyboardTypeAsciiCapableNumberPad";
  *(v30 + 1) = 33;
  v30[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FA22B0()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B258);
  __swift_project_value_buffer(v0, qword_1EC31B258);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C909C3B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "CapitalizationTypeNone";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CapitalizationTypeWords";
  *(v10 + 8) = 23;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "CapitalizationTypeSentences";
  *(v12 + 1) = 27;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "CapitalizationTypeAllCharacters";
  *(v14 + 1) = 31;
  v14[16] = 2;
  v9();
  return sub_1C9063BEC();
}