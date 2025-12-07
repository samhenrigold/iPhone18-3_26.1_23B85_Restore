uint64_t sub_1C8FEAD64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D3A0, type metadata accessor for ToolKitProtoAppDefinition, &protocol conformance descriptor for ToolKitProtoAppDefinition);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FEADE4(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA65300, type metadata accessor for ToolKitProtoAppDefinition, &protocol conformance descriptor for ToolKitProtoAppDefinition);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FEAE54(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(qword_1EDA65300, type metadata accessor for ToolKitProtoAppDefinition, &protocol conformance descriptor for ToolKitProtoAppDefinition);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FEAED4()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31BCE0);
  __swift_project_value_buffer(v0, qword_1EC31BCE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "OriginUnspecified";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "OriginFirstParty";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "OriginThirdParty";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FEB11C()
{
  result = MEMORY[0x1CCA81A90](0x6563697665442ELL, 0xE700000000000000);
  qword_1EC31BCF8 = 0xD000000000000015;
  unk_1EC31BD00 = 0x80000001C90CD670;
  return result;
}

uint64_t sub_1C8FEB1A8()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31BD08);
  __swift_project_value_buffer(v0, qword_1EC31BD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "local";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "remote";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

void sub_1C8FEB3D4()
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
      sub_1C8FECE20(v4, v5, v6, v7, v0, v8, v9, v10);
    }

    else if (v2 == 1)
    {
      OUTLINED_FUNCTION_101_7();
      sub_1C8FECC98();
    }
  }
}

uint64_t sub_1C8FEB550(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D398, type metadata accessor for ToolKitProtoAppDefinition.Device, &protocol conformance descriptor for ToolKitProtoAppDefinition.Device);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FEB5D0(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA65338, type metadata accessor for ToolKitProtoAppDefinition.Device, &protocol conformance descriptor for ToolKitProtoAppDefinition.Device);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FEB640(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EDA65338, type metadata accessor for ToolKitProtoAppDefinition.Device, &protocol conformance descriptor for ToolKitProtoAppDefinition.Device);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FEB6D8()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31BD20);
  __swift_project_value_buffer(v0, qword_1EC31BD20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1C90ABEA0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 2;
  *v5 = "name";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C9063BDC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 3;
  *v9 = "containerId";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 4;
  *v11 = "bundleVersion";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 5;
  *v13 = "containerType";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 6;
  *v15 = "teamId";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 7;
  *v17 = "device";
  *(v17 + 1) = 6;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 8;
  *v19 = "origin";
  *(v19 + 1) = 6;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 9;
  *v21 = "synonyms";
  *(v21 + 1) = 8;
  v21[16] = 2;
  v8();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoContainerDefinition.decodeMessage<A>(decoder:)()
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
      case 2:
      case 3:
        OUTLINED_FUNCTION_22_0();
        sub_1C9063A0C();
        break;
      case 4:
      case 6:
        OUTLINED_FUNCTION_22_0();
        sub_1C90639FC();
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_5_39();
        sub_1C8FEBB18(v3, v4, v5, v6);
        break;
      case 7:
        v7 = OUTLINED_FUNCTION_5_39();
        sub_1C8FEBB80(v7, v8, v9, v10);
        break;
      case 8:
        v11 = OUTLINED_FUNCTION_5_39();
        sub_1C8FEBC34(v11, v12, v13, v14);
        break;
      case 9:
        OUTLINED_FUNCTION_22_0();
        sub_1C90639CC();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8FEBB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoContainerDefinition(0);
  type metadata accessor for ToolKitProtoContainerDefinition.Device(0);
  sub_1C8CD1B00(qword_1EDA64538, type metadata accessor for ToolKitProtoContainerDefinition.Device, &protocol conformance descriptor for ToolKitProtoContainerDefinition.Device);
  return sub_1C9063A4C();
}

void ToolKitProtoContainerDefinition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_363_1();
  OUTLINED_FUNCTION_1_6();
  if (!v23 || (OUTLINED_FUNCTION_10_33(), sub_1C9063B8C(), !v21))
  {
    OUTLINED_FUNCTION_36_21();
    if (!v24 || (OUTLINED_FUNCTION_10_33(), sub_1C9063B8C(), !v21))
    {
      v25 = OUTLINED_FUNCTION_2_55();
      v26 = sub_1C8CE2E98(v25);
      if (!v21)
      {
        if (*(v22 + 32))
        {
          sub_1C8DC0578(v26, v27, v28);
          OUTLINED_FUNCTION_29_23();
          sub_1C9063B1C();
        }

        v29 = OUTLINED_FUNCTION_2_55();
        sub_1C8FEBDD8(v29);
        v30 = OUTLINED_FUNCTION_2_55();
        v34 = sub_1C8FEBE14(v30, v31, v32, v33);
        if (*(v22 + 33))
        {
          sub_1C8DC05CC(v34, v35, v36);
          OUTLINED_FUNCTION_29_23();
          sub_1C9063B1C();
        }

        if (*(*(v22 + 40) + 16))
        {
          OUTLINED_FUNCTION_17_25();
          sub_1C9063B6C();
        }

        type metadata accessor for ToolKitProtoContainerDefinition(0);
        OUTLINED_FUNCTION_13_23();
      }
    }
  }

  OUTLINED_FUNCTION_364_1();
}

uint64_t sub_1C8FEBDD8(uint64_t result)
{
  if (*(result + 72))
  {
    return sub_1C9063B8C();
  }

  return result;
}

uint64_t sub_1C8FEBE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3142B8, &qword_1C90730B8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoContainerDefinition.Device(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoContainerDefinition(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC3142B8, &qword_1C90730B8);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA64538, type metadata accessor for ToolKitProtoContainerDefinition.Device, &protocol conformance descriptor for ToolKitProtoContainerDefinition.Device);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoContainerDefinition.Device);
}

void static ToolKitProtoContainerDefinition.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v4 = OUTLINED_FUNCTION_24_2();
  type metadata accessor for ToolKitProtoContainerDefinition.Device(v4);
  OUTLINED_FUNCTION_39_19();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_18_23();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3142B8, &qword_1C90730B8);
  OUTLINED_FUNCTION_9(v6);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_73();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C738, &qword_1C90AC0F0);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_41_19();
  v11 = v11 && v9 == v10;
  if (!v11 && (sub_1C9064C2C() & 1) == 0)
  {
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_123_6();
  v14 = v11 && v12 == v13;
  if (!v14 && (sub_1C9064C2C() & 1) == 0)
  {
    goto LABEL_43;
  }

  v15 = *(v0 + 56);
  if (*(v1 + 56))
  {
    if (!v15)
    {
      goto LABEL_43;
    }

    OUTLINED_FUNCTION_332_1();
    v18 = v11 && v16 == v17;
    if (!v18 && (sub_1C9064C2C() & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else if (v15)
  {
    goto LABEL_43;
  }

  if (*(v1 + 32) != *(v0 + 32))
  {
    goto LABEL_43;
  }

  v19 = *(v0 + 72);
  if (!*(v1 + 72))
  {
    if (!v19)
    {
      goto LABEL_30;
    }

LABEL_43:
    v36 = 0;
    goto LABEL_44;
  }

  if (!v19)
  {
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_331_1();
  v22 = v11 && v20 == v21;
  if (!v22 && (sub_1C9064C2C() & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_30:
  type metadata accessor for ToolKitProtoContainerDefinition(0);
  OUTLINED_FUNCTION_182_6();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_310_1();
  OUTLINED_FUNCTION_18_32();
  if (v11)
  {
    OUTLINED_FUNCTION_24_28();
    if (v11)
    {
      sub_1C8D16D78(v2, &qword_1EC3142B8, &qword_1C90730B8);
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  OUTLINED_FUNCTION_287();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_24_28();
  if (v23)
  {
    OUTLINED_FUNCTION_259_2();
    sub_1C8CD20B4(v3, v24);
LABEL_38:
    sub_1C8D16D78(v2, &qword_1EC31C738, &qword_1C90AC0F0);
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_258_3();
  sub_1C900BE74();
  v25 = OUTLINED_FUNCTION_398();
  v27 = static ToolKitProtoContainerDefinition.Device.== infix(_:_:)(v25, v26);
  v28 = OUTLINED_FUNCTION_181_0();
  sub_1C8CD20B4(v28, v29);
  v30 = OUTLINED_FUNCTION_125();
  sub_1C8CD20B4(v30, v31);
  sub_1C8D16D78(v2, &qword_1EC3142B8, &qword_1C90730B8);
  if ((v27 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_40:
  if (*(v1 + 33) != *(v0 + 33))
  {
    goto LABEL_43;
  }

  sub_1C8CEB10C(*(v1 + 40), *(v0 + 40));
  if ((v32 & 1) == 0)
  {
    goto LABEL_43;
  }

  sub_1C90637EC();
  OUTLINED_FUNCTION_1_76();
  v35 = sub_1C8CD1B00(v33, v34, MEMORY[0x1E69AAC10]);
  v36 = OUTLINED_FUNCTION_12_28(v35);
LABEL_44:
  OUTLINED_FUNCTION_50_0(v36);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8FEC364(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D390, type metadata accessor for ToolKitProtoContainerDefinition, &protocol conformance descriptor for ToolKitProtoContainerDefinition);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FEC3E4(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA64508, type metadata accessor for ToolKitProtoContainerDefinition, &protocol conformance descriptor for ToolKitProtoContainerDefinition);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FEC454(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EDA64508, type metadata accessor for ToolKitProtoContainerDefinition, &protocol conformance descriptor for ToolKitProtoContainerDefinition);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FEC4D4()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31BD38);
  __swift_project_value_buffer(v0, qword_1EC31BD38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "OriginUnspecified";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "OriginFirstParty";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "OriginThirdParty";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FEC71C()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31BD50);
  __swift_project_value_buffer(v0, qword_1EC31BD50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C909C450;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "TypeApp";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "TypeDaemon";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "TypeExtension";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "TypeFramework";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "TypeUnknown";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FEC9E0()
{
  result = MEMORY[0x1CCA81A90](0x6563697665442ELL, 0xE700000000000000);
  qword_1EC31BD68 = 0xD00000000000001BLL;
  unk_1EC31BD70 = 0x80000001C90CD690;
  return result;
}

uint64_t sub_1C8FECA6C()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31BD78);
  __swift_project_value_buffer(v0, qword_1EC31BD78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "local";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "remote";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

void sub_1C8FECC98()
{
  OUTLINED_FUNCTION_196();
  v4 = v3;
  OUTLINED_FUNCTION_206_4();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3191B0, &qword_1C909DFA0);
  v6 = OUTLINED_FUNCTION_9(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_307();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_66();
  sub_1C906373C();
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_353_1();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_32_20();
  v14 = sub_1C8CD1B00(v12, v13, MEMORY[0x1E69AA8E0]);
  OUTLINED_FUNCTION_171_6(v14);
  if (v0 || (OUTLINED_FUNCTION_311_1(), v15 = OUTLINED_FUNCTION_125_7(), EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, v16, v17), v19 = OUTLINED_FUNCTION_130_1(), sub_1C8D16D78(v19, v20, &qword_1C909DFA0), EnumTagSinglePayload == 1))
  {
    sub_1C8D16D78(v2, &qword_1EC3191B0, &qword_1C909DFA0);
  }

  else
  {
    if (v1[1] != 1)
    {
      OUTLINED_FUNCTION_203();
      sub_1C90638EC();
    }

    sub_1C8D16D78(v2, &qword_1EC3191B0, &qword_1C909DFA0);
    v21 = *v1;
    v22 = v1[1];
    *v1 = 0;
    v1[1] = 0;
    v4(v21, v22);
  }

  OUTLINED_FUNCTION_372_0();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8FECE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = OUTLINED_FUNCTION_308_1(a1, a2, a3, a4, a5, a6, a7, a8, v14, v16);
  if (v8)
  {
  }

  if (v17)
  {
    if (v9[1] == 1)
    {
      v12 = 1;
    }

    else
    {
      sub_1C90638EC();
      v12 = v9[1];
    }

    v13 = *v9;
    *v9 = v15;
    v9[1] = v17;
    return a5(v13, v12);
  }

  return result;
}

void sub_1C8FECEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_43_15();
  if (*(v4 + 8) == 1)
  {
    goto LABEL_6;
  }

  v7 = OUTLINED_FUNCTION_3_4();
  if (v8)
  {
    sub_1C8FED084(v7);
  }

  else
  {
    sub_1C8FECF70();
  }

  if (!v5)
  {
LABEL_6:
    a4(0);
    OUTLINED_FUNCTION_52_17();
  }
}

void sub_1C8FECF70()
{
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_323_2();
  sub_1C906373C();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_94_1();
  if (*(v0 + 8))
  {
    __break(1u);
  }

  else
  {
    sub_1C906372C();
    OUTLINED_FUNCTION_32_20();
    sub_1C8CD1B00(v2, v3, MEMORY[0x1E69AA8E0]);
    sub_1C9063B1C();
    v4 = OUTLINED_FUNCTION_274_0();
    v5(v4);
    OUTLINED_FUNCTION_301_1();
  }
}

uint64_t sub_1C8FED084(uint64_t result)
{
  if (*(result + 8) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_219_2();
    return sub_1C9063B8C();
  }

  return result;
}

uint64_t sub_1C8FED118(void *a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(void *, void *), void (*a5)(uint64_t, uint64_t), void (*a6)(void))
{
  v9 = *a1;
  v10 = a1[1];
  v11 = *a2;
  v12 = a2[1];
  if (v10 != 1)
  {
    v28[0] = *a1;
    v28[1] = v10;
    if (v12 != 1)
    {
      v27[0] = v11;
      v27[1] = v12;
      v20 = OUTLINED_FUNCTION_288();
      (a3)(v20);
      v21 = OUTLINED_FUNCTION_114_0();
      (a3)(v21);
      v22 = OUTLINED_FUNCTION_288();
      (a3)(v22);
      v23 = a4(v28, v27);

      v24 = OUTLINED_FUNCTION_288();
      (a5)(v24);
      if (v23)
      {
        goto LABEL_10;
      }

      return 0;
    }

    v13 = OUTLINED_FUNCTION_288();
    (a3)(v13);
    a3(v11, 1);
    v14 = OUTLINED_FUNCTION_288();
    (a3)(v14);

LABEL_7:
    v16 = OUTLINED_FUNCTION_288();
    (a5)(v16);
    v17 = OUTLINED_FUNCTION_114_0();
    (a5)(v17);
    return 0;
  }

  (a3)(*a1, 1, a3, a4);
  if (v12 != 1)
  {
    v15 = OUTLINED_FUNCTION_114_0();
    (a3)(v15);
    goto LABEL_7;
  }

  a3(v11, 1);
  a5(v9, 1);
LABEL_10:
  a6(0);
  OUTLINED_FUNCTION_63_10();
  OUTLINED_FUNCTION_1_76();
  sub_1C8CD1B00(v25, v26, MEMORY[0x1E69AAC10]);
  return sub_1C9063EAC() & 1;
}

uint64_t sub_1C8FED364(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D388, type metadata accessor for ToolKitProtoContainerDefinition.Device, &protocol conformance descriptor for ToolKitProtoContainerDefinition.Device);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FED3E4(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA64538, type metadata accessor for ToolKitProtoContainerDefinition.Device, &protocol conformance descriptor for ToolKitProtoContainerDefinition.Device);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FED454(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(qword_1EDA64538, type metadata accessor for ToolKitProtoContainerDefinition.Device, &protocol conformance descriptor for ToolKitProtoContainerDefinition.Device);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FED4EC()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31BD90);
  __swift_project_value_buffer(v0, qword_1EC31BD90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "numericFormat";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "synonyms";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoTypeDisplayRepresentation.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_22_0();
        sub_1C90639CC();
        break;
      case 2:
        OUTLINED_FUNCTION_22_0();
        sub_1C90639FC();
        break;
      case 1:
        OUTLINED_FUNCTION_20_22();
        sub_1C9063A0C();
        break;
    }
  }

  return result;
}

uint64_t ToolKitProtoTypeDisplayRepresentation.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_6();
  if (!v2 || (OUTLINED_FUNCTION_23_29(), result = sub_1C9063B8C(), !v0))
  {
    v4 = OUTLINED_FUNCTION_2_55();
    result = sub_1C8CE38D0(v4);
    if (!v0)
    {
      if (*(*(v1 + 16) + 16))
      {
        OUTLINED_FUNCTION_17_25();
        sub_1C9063B6C();
      }

      type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
      return OUTLINED_FUNCTION_53_15();
    }
  }

  return result;
}

uint64_t static ToolKitProtoTypeDisplayRepresentation.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_6_33(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1C9064C2C() & 1) == 0)
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
  }

  else if (v6)
  {
    return 0;
  }

  sub_1C8CEB10C(*(v2 + 16), *(v1 + 16));
  if (v11)
  {
    type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
    OUTLINED_FUNCTION_327_1();
    OUTLINED_FUNCTION_1_76();
    v14 = sub_1C8CD1B00(v12, v13, MEMORY[0x1E69AAC10]);
    return OUTLINED_FUNCTION_12_28(v14) & 1;
  }

  return 0;
}

uint64_t sub_1C8FED998(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D380, type metadata accessor for ToolKitProtoTypeDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoTypeDisplayRepresentation);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FEDA18(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA63E58, type metadata accessor for ToolKitProtoTypeDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoTypeDisplayRepresentation);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FEDA88(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(qword_1EDA63E58, type metadata accessor for ToolKitProtoTypeDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoTypeDisplayRepresentation);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FEDB20()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31BDA8);
  __swift_project_value_buffer(v0, qword_1EC31BDA8);
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
  *v10 = "bundleIdentifier";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

void sub_1C8FEDD4C()
{
  OUTLINED_FUNCTION_300_0();
  v2 = v1;
  OUTLINED_FUNCTION_4_36();
  v3 = OUTLINED_FUNCTION_226_1();
  if (sub_1C8EB7FAC(v3, v4) || (OUTLINED_FUNCTION_226_1(), OUTLINED_FUNCTION_23_29(), sub_1C9063B3C(), !v0))
  {
    OUTLINED_FUNCTION_36_21();
    if (!v5 || (OUTLINED_FUNCTION_10_33(), sub_1C9063B8C(), !v0))
    {
      v2(0);
      OUTLINED_FUNCTION_13_23();
    }
  }

  OUTLINED_FUNCTION_301_1();
}

uint64_t sub_1C8FEDDFC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = OUTLINED_FUNCTION_42_14(a1);
  if ((MEMORY[0x1CCA7F9A0](v4) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_123_6();
  v7 = v7 && v5 == v6;
  if (!v7 && (sub_1C9064C2C() & 1) == 0)
  {
    return 0;
  }

  a3(0);
  OUTLINED_FUNCTION_64_7();
  OUTLINED_FUNCTION_1_76();
  v10 = sub_1C8CD1B00(v8, v9, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_12_28(v10) & 1;
}

uint64_t sub_1C8FEDF1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D378, type metadata accessor for ToolKitProtoPluginModelData, &protocol conformance descriptor for ToolKitProtoPluginModelData);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FEDF9C(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31D150, type metadata accessor for ToolKitProtoPluginModelData, &protocol conformance descriptor for ToolKitProtoPluginModelData);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FEE00C(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31D150, type metadata accessor for ToolKitProtoPluginModelData, &protocol conformance descriptor for ToolKitProtoPluginModelData);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FEE098()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31BDC0);
  __swift_project_value_buffer(v0, qword_1EC31BDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C90ABEB0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "subtitle";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "altText";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "image";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "synonyms";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "snippetPluginModel";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoDisplayRepresentation.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_20_22();
        sub_1C9063A0C();
        break;
      case 2:
        v11 = OUTLINED_FUNCTION_5_39();
        sub_1C8FEE454(v11, v12, v13, v14);
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_5_39();
        sub_1C8FEE508(v3, v4, v5, v6);
        break;
      case 4:
        v7 = OUTLINED_FUNCTION_5_39();
        sub_1C8FEE5BC(v7, v8, v9, v10);
        break;
      case 5:
        OUTLINED_FUNCTION_22_0();
        sub_1C90639CC();
        break;
      case 6:
        v15 = OUTLINED_FUNCTION_5_39();
        sub_1C8FEE670(v15, v16, v17, v18);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8FEE454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle(0);
  sub_1C8CD1B00(qword_1EDA641E0, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Subtitle);
  return sub_1C9063A4C();
}

uint64_t sub_1C8FEE508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  type metadata accessor for ToolKitProtoDisplayRepresentation.AltText(0);
  sub_1C8CD1B00(&qword_1EC3126F8, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.AltText);
  return sub_1C9063A4C();
}

uint64_t sub_1C8FEE5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  type metadata accessor for ToolKitProtoDisplayRepresentation.Image(0);
  sub_1C8CD1B00(qword_1EDA642C8, type metadata accessor for ToolKitProtoDisplayRepresentation.Image, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Image);
  return sub_1C9063A4C();
}

uint64_t sub_1C8FEE670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  type metadata accessor for ToolKitProtoPluginModelData(0);
  sub_1C8CD1B00(&qword_1EC31D150, type metadata accessor for ToolKitProtoPluginModelData, &protocol conformance descriptor for ToolKitProtoPluginModelData);
  return sub_1C9063A4C();
}

uint64_t ToolKitProtoDisplayRepresentation.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_6();
  if (!v2 || (OUTLINED_FUNCTION_23_29(), result = sub_1C9063B8C(), !v0))
  {
    v4 = OUTLINED_FUNCTION_2_55();
    result = sub_1C8FEE7E4(v4, v5, v6, v7);
    if (!v0)
    {
      v8 = OUTLINED_FUNCTION_2_55();
      sub_1C8FEE9B8(v8, v9, v10, v11);
      v12 = OUTLINED_FUNCTION_2_55();
      sub_1C8FEEB8C(v12, v13, v14, v15);
      if (*(*(v1 + 16) + 16))
      {
        OUTLINED_FUNCTION_17_25();
        sub_1C9063B6C();
      }

      v16 = OUTLINED_FUNCTION_2_55();
      sub_1C8FEED60(v16, v17, v18, v19);
      type metadata accessor for ToolKitProtoDisplayRepresentation(0);
      return OUTLINED_FUNCTION_13_23();
    }
  }

  return result;
}

uint64_t sub_1C8FEE7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3126A0, &unk_1C9066A80);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC3126A0, &unk_1C9066A80);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA641E0, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Subtitle);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle);
}

uint64_t sub_1C8FEE9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312698, &qword_1C9066A78);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC312698, &qword_1C9066A78);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EC3126F8, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.AltText);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText);
}

uint64_t sub_1C8FEEB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3126A8, &unk_1C9074CA0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC3126A8, &unk_1C9074CA0);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA642C8, type metadata accessor for ToolKitProtoDisplayRepresentation.Image, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Image);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoDisplayRepresentation.Image);
}

uint64_t sub_1C8FEED60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312690, &qword_1C9066A70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoPluginModelData(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC312690, &qword_1C9066A70);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EC31D150, type metadata accessor for ToolKitProtoPluginModelData, &protocol conformance descriptor for ToolKitProtoPluginModelData);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoPluginModelData);
}

void static ToolKitProtoDisplayRepresentation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v4 = v3;
  v6 = v5;
  type metadata accessor for ToolKitProtoPluginModelData(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7_0();
  v78 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312690, &qword_1C9066A70);
  OUTLINED_FUNCTION_9(v9);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_369_0(v11);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C760, &qword_1C90AC0F8);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_16_5();
  type metadata accessor for ToolKitProtoDisplayRepresentation.Image(v13);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_51_15();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3126A8, &unk_1C9074CA0);
  OUTLINED_FUNCTION_9(v15);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_314_2(v17);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C768, &qword_1C90AC100);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_134_3(v19);
  type metadata accessor for ToolKitProtoDisplayRepresentation.AltText(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_320(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312698, &qword_1C9066A78);
  OUTLINED_FUNCTION_9(v22);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_120_7(v24, v77);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C770, &qword_1C90AC108);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_15_0();
  type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_15();
  v29 = v28 - v27;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3126A0, &unk_1C9066A80);
  OUTLINED_FUNCTION_9(v30);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_72();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C778, &qword_1C90AC110);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_142();
  v34 = *v6 == *v4 && v6[1] == v4[1];
  if (!v34 && (sub_1C9064C2C() & 1) == 0)
  {
    goto LABEL_37;
  }

  v35 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v36 = *(v32 + 48);
  v81 = v35;
  v82 = v6;
  sub_1C8D63FCC();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_54_15(v0);
  if (v34)
  {
    OUTLINED_FUNCTION_54_15(v0 + v36);
    if (v34)
    {
      sub_1C8D16D78(v0, &qword_1EC3126A0, &unk_1C9066A80);
      goto LABEL_16;
    }

LABEL_14:
    v38 = &qword_1EC31C778;
    v39 = &qword_1C90AC110;
    v40 = v0;
LABEL_36:
    sub_1C8D16D78(v40, v38, v39);
    goto LABEL_37;
  }

  sub_1C8D63FCC();
  OUTLINED_FUNCTION_54_15(v0 + v36);
  if (v37)
  {
    OUTLINED_FUNCTION_313_2();
    goto LABEL_14;
  }

  sub_1C900BE74();
  v41 = OUTLINED_FUNCTION_288();
  v42 = static ToolKitProtoDisplayRepresentation.Subtitle.== infix(_:_:)(v41);
  sub_1C8CD20B4(v29, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle);
  v43 = OUTLINED_FUNCTION_119();
  sub_1C8CD20B4(v43, v44);
  sub_1C8D16D78(v0, &qword_1EC3126A0, &unk_1C9066A80);
  if ((v42 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_16:
  v45 = *(v81 + 28);
  v46 = *(v85 + 48);
  OUTLINED_FUNCTION_193_5(v6 + v45);
  OUTLINED_FUNCTION_202_5(v4 + v45);
  v47 = OUTLINED_FUNCTION_175_5();
  OUTLINED_FUNCTION_65_13(v47, v48);
  if (v34)
  {
    OUTLINED_FUNCTION_34_17(v1 + v46);
    if (v34)
    {
      sub_1C8D16D78(v1, &qword_1EC312698, &qword_1C9066A78);
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  sub_1C8D63FCC();
  OUTLINED_FUNCTION_34_17(v1 + v46);
  if (v49)
  {
    OUTLINED_FUNCTION_313_2();
LABEL_24:
    v38 = &qword_1EC31C770;
    v39 = &qword_1C90AC108;
    v40 = v1;
    goto LABEL_36;
  }

  sub_1C900BE74();
  v50 = OUTLINED_FUNCTION_100();
  static ToolKitProtoDisplayRepresentation.AltText.== infix(_:_:)(v50);
  OUTLINED_FUNCTION_163_7();
  v51 = OUTLINED_FUNCTION_93();
  sub_1C8CD20B4(v51, v52);
  sub_1C8D16D78(v1, &qword_1EC312698, &qword_1C9066A78);
  if ((&qword_1C9066A78 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_26:
  v53 = *(v83 + 48);
  v54 = v84;
  OUTLINED_FUNCTION_290_2();
  OUTLINED_FUNCTION_290_2();
  OUTLINED_FUNCTION_65_13(v84, 1);
  if (v34)
  {
    OUTLINED_FUNCTION_34_17(v84 + v53);
    if (v34)
    {
      sub_1C8D16D78(v84, &qword_1EC3126A8, &unk_1C9074CA0);
      goto LABEL_40;
    }

LABEL_34:
    v38 = &qword_1EC31C768;
    v39 = &qword_1C90AC100;
LABEL_35:
    v40 = v54;
    goto LABEL_36;
  }

  sub_1C8D63FCC();
  OUTLINED_FUNCTION_34_17(v84 + v53);
  if (v55)
  {
    OUTLINED_FUNCTION_313_2();
    goto LABEL_34;
  }

  sub_1C900BE74();
  v57 = OUTLINED_FUNCTION_100();
  static ToolKitProtoDisplayRepresentation.Image.== infix(_:_:)(v57);
  OUTLINED_FUNCTION_163_7();
  v58 = OUTLINED_FUNCTION_93();
  sub_1C8CD20B4(v58, v59);
  sub_1C8D16D78(v84, &qword_1EC3126A8, &unk_1C9074CA0);
  if ((&unk_1C9074CA0 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_40:
  sub_1C8CEB10C(v82[2], v4[2]);
  if ((v60 & 1) == 0)
  {
    goto LABEL_37;
  }

  v61 = *(v80 + 48);
  v54 = v2;
  OUTLINED_FUNCTION_290_2();
  OUTLINED_FUNCTION_290_2();
  OUTLINED_FUNCTION_65_13(v2, 1);
  if (v34)
  {
    OUTLINED_FUNCTION_34_17(v2 + v61);
    if (v34)
    {
      sub_1C8D16D78(v2, &qword_1EC312690, &qword_1C9066A70);
LABEL_46:
      sub_1C90637EC();
      OUTLINED_FUNCTION_1_76();
      sub_1C8CD1B00(v62, v63, MEMORY[0x1E69AAC10]);
      v56 = sub_1C9063EAC();
      goto LABEL_38;
    }

    goto LABEL_50;
  }

  sub_1C8D63FCC();
  OUTLINED_FUNCTION_34_17(v2 + v61);
  if (v64)
  {
    OUTLINED_FUNCTION_313_2();
LABEL_50:
    v38 = &qword_1EC31C760;
    v39 = &qword_1C90AC0F8;
    goto LABEL_35;
  }

  sub_1C900BE74();
  if ((MEMORY[0x1CCA7F9A0](*v79, v79[1], *v78, v78[1]) & 1) == 0 || (v79[2] == v78[2] ? (v65 = v79[3] == v78[3]) : (v65 = 0), !v65 && (sub_1C9064C2C() & 1) == 0))
  {
    sub_1C8CD20B4(v78, type metadata accessor for ToolKitProtoPluginModelData);
    v75 = OUTLINED_FUNCTION_93();
    sub_1C8CD20B4(v75, v76);
    v38 = &qword_1EC312690;
    v39 = &qword_1C9066A70;
    v40 = v2;
    goto LABEL_36;
  }

  sub_1C90637EC();
  OUTLINED_FUNCTION_1_76();
  sub_1C8CD1B00(v66, v67, MEMORY[0x1E69AAC10]);
  v68 = OUTLINED_FUNCTION_256_1();
  v72 = OUTLINED_FUNCTION_358_1(v68, v69, v70, v71);
  sub_1C8CD20B4(v78, type metadata accessor for ToolKitProtoPluginModelData);
  v73 = OUTLINED_FUNCTION_119();
  sub_1C8CD20B4(v73, v74);
  sub_1C8D16D78(v2, &qword_1EC312690, &qword_1C9066A70);
  if (v72)
  {
    goto LABEL_46;
  }

LABEL_37:
  v56 = 0;
LABEL_38:
  OUTLINED_FUNCTION_50_0(v56);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8FEF8CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D370, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FEF94C(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA641A8, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FEF9BC(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(qword_1EDA641A8, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);

  return sub_1C9063ABC();
}

void sub_1C8FEFB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_340_2();
  OUTLINED_FUNCTION_152_5();
  v6 = *v4;
  v7 = v4[1];
  v9 = v8;
  switch(v7 >> 62)
  {
    case 1uLL:
      v10 = v6;
      v11 = v6 >> 32;
      goto LABEL_6;
    case 2uLL:
      v10 = *(v6 + 16);
      v11 = *(v6 + 24);
LABEL_6:
      if (v10 != v11)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    case 3uLL:
      goto LABEL_8;
    default:
      if ((v7 & 0xFF000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_7:
      OUTLINED_FUNCTION_23_29();
      sub_1C9063B3C();
      if (!v5)
      {
LABEL_8:
        v9(0);
        OUTLINED_FUNCTION_13_23();
      }

      OUTLINED_FUNCTION_341_2();
      return;
  }
}

uint64_t sub_1C8FEFC54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D368, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Storage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FEFCD4(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31D170, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Storage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FEFD44(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31D170, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Storage);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FEFE14()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31BE10);
  __swift_project_value_buffer(v0, qword_1EC31BE10);
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
  *v10 = "lazy";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "static";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoDisplayRepresentation.DisplayValue.decodeMessage<A>(decoder:)()
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
        v11 = OUTLINED_FUNCTION_8_32();
        sub_1C8FF063C(v11, v12, v13, v14);
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_8_32();
        sub_1C8FF0138(v7, v8, v9, v10);
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_5_39();
        sub_1C8FF00D0(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_1C8FF0138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v35 = a2;
  v5 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0);
  MEMORY[0x1EEE9AC00](v5);
  v31 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312728, &qword_1C9066AE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoDisplayValueKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D828, &qword_1C90BBC18);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v27 - v19;
  __swift_storeEnumTagSinglePayload(&v27 - v19, 1, 1, v5);
  v27 = *(type metadata accessor for ToolKitProtoDisplayRepresentation.DisplayValue(0) + 20);
  v28 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v30 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v10, &qword_1EC312728, &qword_1C9066AE0);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoDisplayValueKind);
    }

    else
    {
      sub_1C8D16D78(v20, &qword_1EC31D828, &qword_1C90BBC18);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }
  }

  sub_1C8CD1B00(&qword_1EC31D170, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Storage);
  v21 = v32;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC31D828, &qword_1C90BBC18);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC31D828, &qword_1C90BBC18);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC31D828, &qword_1C90BBC18);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v30;
  sub_1C8D16D78(v20, &qword_1EC31D828, &qword_1C90BBC18);
  v26 = v27;
  v25 = v28;
  sub_1C8D16D78(v28 + v27, &qword_1EC312728, &qword_1C9066AE0);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25 + v26, 0, 1, v24);
}

uint64_t sub_1C8FF063C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v35 = a2;
  v5 = type metadata accessor for ToolKitProtoDisplayRepresentation.DisplayValue.Static(0);
  MEMORY[0x1EEE9AC00](v5);
  v31 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312728, &qword_1C9066AE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoDisplayValueKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D850, &qword_1C90BBC38);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v27 - v19;
  __swift_storeEnumTagSinglePayload(&v27 - v19, 1, 1, v5);
  v27 = *(type metadata accessor for ToolKitProtoDisplayRepresentation.DisplayValue(0) + 20);
  v28 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v30 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v10, &qword_1EC312728, &qword_1C9066AE0);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8D16D78(v20, &qword_1EC31D850, &qword_1C90BBC38);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoDisplayValueKind);
    }
  }

  sub_1C8CD1B00(&qword_1EC31D1A0, type metadata accessor for ToolKitProtoDisplayRepresentation.DisplayValue.Static, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.DisplayValue.Static);
  v21 = v32;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC31D850, &qword_1C90BBC38);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC31D850, &qword_1C90BBC38);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC31D850, &qword_1C90BBC38);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v30;
  sub_1C8D16D78(v20, &qword_1EC31D850, &qword_1C90BBC38);
  v26 = v27;
  v25 = v28;
  sub_1C8D16D78(v28 + v27, &qword_1EC312728, &qword_1C9066AE0);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25 + v26, 0, 1, v24);
}

void ToolKitProtoDisplayRepresentation.DisplayValue.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_4_36();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312728, &qword_1C9066AE0);
  OUTLINED_FUNCTION_9(v3);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_251();
  if (!*v0 || (sub_1C8DC0524(v5, v6, v7), OUTLINED_FUNCTION_29_23(), sub_1C9063B1C(), !v1))
  {
    type metadata accessor for ToolKitProtoDisplayRepresentation.DisplayValue(0);
    sub_1C8D63FCC();
    v8 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoDisplayValueKind(0);
    v9 = OUTLINED_FUNCTION_19_1();
    if (__swift_getEnumTagSinglePayload(v9, v10, v8) == 1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_245();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v11 = OUTLINED_FUNCTION_2_55();
      sub_1C8FF0E90(v11, v12, v13, v14);
    }

    else
    {
      v15 = OUTLINED_FUNCTION_2_55();
      sub_1C8FF0C7C(v15, v16, v17, v18);
    }

    OUTLINED_FUNCTION_255_2();
    sub_1C8CD20B4(v2, v19);
    if (!v1)
    {
LABEL_8:
      OUTLINED_FUNCTION_13_23();
    }
  }

  OUTLINED_FUNCTION_190_8();
  OUTLINED_FUNCTION_301_1();
}

uint64_t sub_1C8FF0C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312728, &qword_1C9066AE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoDisplayRepresentation.DisplayValue(0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoDisplayValueKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC312728, &qword_1C9066AE0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31D170, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Storage);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoDisplayValueKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FF0E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312728, &qword_1C9066AE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoDisplayRepresentation.DisplayValue.Static(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoDisplayRepresentation.DisplayValue(0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoDisplayValueKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC312728, &qword_1C9066AE0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31D1A0, type metadata accessor for ToolKitProtoDisplayRepresentation.DisplayValue.Static, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.DisplayValue.Static);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoDisplayRepresentation.DisplayValue.Static);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoDisplayValueKind);
  }

  __break(1u);
  return result;
}

void static ToolKitProtoDisplayRepresentation.DisplayValue.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v2 = OUTLINED_FUNCTION_24_2();
  type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoDisplayValueKind(v2);
  OUTLINED_FUNCTION_39_19();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_23();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312728, &qword_1C9066AE0);
  OUTLINED_FUNCTION_9(v4);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_73();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C790, &qword_1C90AC118);
  OUTLINED_FUNCTION_44_22();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_154_5();
  if (!v8)
  {
    goto LABEL_12;
  }

  v7 = type metadata accessor for ToolKitProtoDisplayRepresentation.DisplayValue(0);
  OUTLINED_FUNCTION_155_4(v7);
  OUTLINED_FUNCTION_127_4();
  OUTLINED_FUNCTION_122_8();
  OUTLINED_FUNCTION_18_32();
  if (v8)
  {
    OUTLINED_FUNCTION_24_28();
    if (v8)
    {
      sub_1C8D16D78(v0, &qword_1EC312728, &qword_1C9066AE0);
LABEL_15:
      OUTLINED_FUNCTION_261_1();
      OUTLINED_FUNCTION_1_76();
      v19 = sub_1C8CD1B00(v17, v18, MEMORY[0x1E69AAC10]);
      v10 = OUTLINED_FUNCTION_12_28(v19);
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  OUTLINED_FUNCTION_287();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_24_28();
  if (v8)
  {
    OUTLINED_FUNCTION_255_2();
    sub_1C8CD20B4(v1, v9);
LABEL_11:
    sub_1C8D16D78(v0, &qword_1EC31C790, &qword_1C90AC118);
    goto LABEL_12;
  }

  sub_1C900BE74();
  OUTLINED_FUNCTION_398();
  static ToolKitProtoDisplayRepresentation.ToolKitProtoDisplayValueKind.== infix(_:_:)();
  v12 = v11;
  v13 = OUTLINED_FUNCTION_181_0();
  sub_1C8CD20B4(v13, v14);
  v15 = OUTLINED_FUNCTION_125();
  sub_1C8CD20B4(v15, v16);
  sub_1C8D16D78(v0, &qword_1EC312728, &qword_1C9066AE0);
  if (v12)
  {
    goto LABEL_15;
  }

LABEL_12:
  v10 = 0;
LABEL_13:
  OUTLINED_FUNCTION_50_0(v10);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8FF1338(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D360, type metadata accessor for ToolKitProtoDisplayRepresentation.DisplayValue, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.DisplayValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FF13B8(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC312768, type metadata accessor for ToolKitProtoDisplayRepresentation.DisplayValue, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.DisplayValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FF1428(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC312768, type metadata accessor for ToolKitProtoDisplayRepresentation.DisplayValue, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.DisplayValue);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FF14A8()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31BE28);
  __swift_project_value_buffer(v0, qword_1EC31BE28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "DisplayValueEnumImage";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "DisplayValueEnumSubtitle";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "DisplayValueEnumAltText";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FF16F4()
{
  if (qword_1EC311F98 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31BE00;
  v2 = *algn_1EC31BE08;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x6369746174532ELL, 0xE700000000000000);

  qword_1EC31BE40 = v1;
  *algn_1EC31BE48 = v2;
  return result;
}

void ToolKitProtoDisplayRepresentation.DisplayValue.Static.decodeMessage<A>(decoder:)()
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
      sub_1C8F6D810();
    }
  }
}

uint64_t sub_1C8FF18E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[3] = a4;
  v12[1] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312720, &unk_1C9074CB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = sub_1C90637AC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC312720, &unk_1C9074CB0);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_1C8CD1B00(&qword_1EC31D848, MEMORY[0x1E69AAB10], MEMORY[0x1E69AAB08]);
  sub_1C9063BCC();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1C8FF1B6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D358, type metadata accessor for ToolKitProtoDisplayRepresentation.DisplayValue.Static, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.DisplayValue.Static);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FF1BEC(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31D1A0, type metadata accessor for ToolKitProtoDisplayRepresentation.DisplayValue.Static, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.DisplayValue.Static);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FF1C5C(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31D1A0, type metadata accessor for ToolKitProtoDisplayRepresentation.DisplayValue.Static, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.DisplayValue.Static);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FF1D24()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31BE78);
  __swift_project_value_buffer(v0, qword_1EC31BE78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "lazy";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "static";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FF1F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3126C8, &qword_1C9066AA0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D828, &qword_1C90BBC18);
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
    sub_1C8D16D78(v10, &qword_1EC3126C8, &qword_1C9066AA0);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
    }

    else
    {
      sub_1C8D16D78(v20, &qword_1EC31D828, &qword_1C90BBC18);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }
  }

  sub_1C8CD1B00(&qword_1EC31D170, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Storage);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC31D828, &qword_1C90BBC18);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC31D828, &qword_1C90BBC18);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC31D828, &qword_1C90BBC18);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC31D828, &qword_1C90BBC18);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC3126C8, &qword_1C9066AA0);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FF245C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3126C8, &qword_1C9066AA0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D840, &qword_1C90BBC30);
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
    sub_1C8D16D78(v10, &qword_1EC3126C8, &qword_1C9066AA0);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8D16D78(v20, &qword_1EC31D840, &qword_1C90BBC30);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
    }
  }

  sub_1C8CD1B00(qword_1EDA64218, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Subtitle.Static);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC31D840, &qword_1C90BBC30);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC31D840, &qword_1C90BBC30);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC31D840, &qword_1C90BBC30);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC31D840, &qword_1C90BBC30);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC3126C8, &qword_1C9066AA0);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FF2A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3126C8, &qword_1C9066AA0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC3126C8, &qword_1C9066AA0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31D170, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Storage);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FF2C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3126C8, &qword_1C9066AA0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC3126C8, &qword_1C9066AA0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(qword_1EDA64218, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Subtitle.Static);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FF30B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D350, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Subtitle);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FF3138(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA641E0, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Subtitle);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FF31A8(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(qword_1EDA641E0, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Subtitle);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FF3228()
{
  if (qword_1EC311FC0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31BE68;
  v2 = unk_1EC31BE70;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x6369746174532ELL, 0xE700000000000000);

  qword_1EC31BE90 = v1;
  *algn_1EC31BE98 = v2;
  return result;
}

uint64_t sub_1C8FF33D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D348, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Subtitle.Static);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FF3458(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA64218, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Subtitle.Static);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FF34C8(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(qword_1EDA64218, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Subtitle.Static);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FF358C()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31BEC8);
  __swift_project_value_buffer(v0, qword_1EC31BEC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "lazy";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "static";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FF37CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3126E0, &qword_1C9066AB0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D828, &qword_1C90BBC18);
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
    sub_1C8D16D78(v10, &qword_1EC3126E0, &qword_1C9066AB0);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
    }

    else
    {
      sub_1C8D16D78(v20, &qword_1EC31D828, &qword_1C90BBC18);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }
  }

  sub_1C8CD1B00(&qword_1EC31D170, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Storage);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC31D828, &qword_1C90BBC18);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC31D828, &qword_1C90BBC18);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC31D828, &qword_1C90BBC18);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC31D828, &qword_1C90BBC18);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC3126E0, &qword_1C9066AB0);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FF3CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3126E0, &qword_1C9066AB0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D838, &qword_1C90BBC28);
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
    sub_1C8D16D78(v10, &qword_1EC3126E0, &qword_1C9066AB0);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8D16D78(v20, &qword_1EC31D838, &qword_1C90BBC28);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
    }
  }

  sub_1C8CD1B00(&qword_1EC312740, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.AltText.Static);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC31D838, &qword_1C90BBC28);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC31D838, &qword_1C90BBC28);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC31D838, &qword_1C90BBC28);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC31D838, &qword_1C90BBC28);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC3126E0, &qword_1C9066AB0);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FF4294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3126E0, &qword_1C9066AB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC3126E0, &qword_1C9066AB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31D170, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Storage);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FF449C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3126E0, &qword_1C9066AB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC3126E0, &qword_1C9066AB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC312740, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.AltText.Static);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FF4920(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D340, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.AltText);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FF49A0(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC3126F8, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.AltText);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FF4A10(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC3126F8, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.AltText);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FF4A90()
{
  if (qword_1EC311FE0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31BEB8;
  v2 = unk_1EC31BEC0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x6369746174532ELL, 0xE700000000000000);

  qword_1EC31BEE0 = v1;
  *algn_1EC31BEE8 = v2;
  return result;
}

uint64_t sub_1C8FF4B70(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v9, a2);
  v10 = OUTLINED_FUNCTION_148();
  __swift_project_value_buffer(v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v12 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v13 = (*(*v12 + 80) + 32) & ~*(*v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C906A950;
  v15 = v14 + v13 + v12[14];
  *(v14 + v13) = a3;
  *v15 = a4;
  *(v15 + 8) = a5;
  *(v15 + 16) = 2;
  v16 = *MEMORY[0x1E69AADC8];
  sub_1C9063BDC();
  OUTLINED_FUNCTION_13_1();
  (*(v17 + 104))(v15, v16);
  return sub_1C9063BEC();
}

uint64_t sub_1C8FF4D10()
{
  OUTLINED_FUNCTION_57_1();
  while (1)
  {
    OUTLINED_FUNCTION_125();
    result = sub_1C90638DC();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_29_18();
      v0();
    }
  }

  return result;
}

void sub_1C8FF4D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_340_2();
  v6 = v5;
  OUTLINED_FUNCTION_1_6();
  if (!v7 || (OUTLINED_FUNCTION_10_33(), sub_1C9063B8C(), !v4))
  {
    v6(0);
    OUTLINED_FUNCTION_13_23();
  }

  OUTLINED_FUNCTION_341_2();
}

uint64_t sub_1C8FF4E6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D338, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.AltText.Static);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FF4EEC(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC312740, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.AltText.Static);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FF4F5C(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC312740, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.AltText.Static);

  return sub_1C9063ABC();
}

void sub_1C8FF4FFC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_132_4(a1, a2);
  OUTLINED_FUNCTION_97_5();
  OUTLINED_FUNCTION_68_6();
  OUTLINED_FUNCTION_131_5(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1C8FF5064()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31BF18);
  __swift_project_value_buffer(v0, qword_1EC31BF18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "lazy";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "static";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FF52A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3126B0, &qword_1C9066A90);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D828, &qword_1C90BBC18);
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
    sub_1C8D16D78(v10, &qword_1EC3126B0, &qword_1C9066A90);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
    }

    else
    {
      sub_1C8D16D78(v20, &qword_1EC31D828, &qword_1C90BBC18);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }
  }

  sub_1C8CD1B00(&qword_1EC31D170, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Storage);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC31D828, &qword_1C90BBC18);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC31D828, &qword_1C90BBC18);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC31D828, &qword_1C90BBC18);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC31D828, &qword_1C90BBC18);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC3126B0, &qword_1C9066A90);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FF579C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3126B0, &qword_1C9066A90);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D830, &qword_1C90BBC20);
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
    sub_1C8D16D78(v10, &qword_1EC3126B0, &qword_1C9066A90);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8D16D78(v20, &qword_1EC31D830, &qword_1C90BBC20);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
    }
  }

  sub_1C8CD1B00(qword_1EDA64300, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Image.Static);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC31D830, &qword_1C90BBC20);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC31D830, &qword_1C90BBC20);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC31D830, &qword_1C90BBC20);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC31D830, &qword_1C90BBC20);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC3126B0, &qword_1C9066A90);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FF5D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3126B0, &qword_1C9066A90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC3126B0, &qword_1C9066A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31D170, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Storage);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FF5F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3126B0, &qword_1C9066A90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC3126B0, &qword_1C9066A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(qword_1EDA64300, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Image.Static);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FF63F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D330, type metadata accessor for ToolKitProtoDisplayRepresentation.Image, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Image);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FF6478(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA642C8, type metadata accessor for ToolKitProtoDisplayRepresentation.Image, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Image);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FF64E8(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(qword_1EDA642C8, type metadata accessor for ToolKitProtoDisplayRepresentation.Image, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Image);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FF6568()
{
  if (qword_1EC312000 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31BF08;
  v2 = unk_1EC31BF10;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x6369746174532ELL, 0xE700000000000000);

  qword_1EC31BF30 = v1;
  *algn_1EC31BF38 = v2;
  return result;
}

uint64_t sub_1C8FF662C()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31BF40);
  __swift_project_value_buffer(v0, qword_1EC31BF40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
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
  *v10 = "symbol";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "file";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

void ToolKitProtoDisplayRepresentation.Image.Static.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_6_44();
        sub_1C8F7677C();
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_8_32();
        sub_1C8FF6928(v3, v4, v5, v6);
        break;
      case 1:
        OUTLINED_FUNCTION_6_44();
        sub_1C8F768E8();
        break;
    }
  }
}

uint64_t sub_1C8FF6928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312708, &qword_1C9066AC8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D820, &qword_1C90BBC10);
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
    sub_1C8D16D78(v10, &qword_1EC312708, &qword_1C9066AC8);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8D16D78(v20, &qword_1EC31D820, &qword_1C90BBC10);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
    }
  }

  sub_1C8CD1B00(qword_1EDA64340, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC31D820, &qword_1C90BBC10);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC31D820, &qword_1C90BBC10);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC31D820, &qword_1C90BBC10);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC31D820, &qword_1C90BBC10);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC312708, &qword_1C9066AC8);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FF6F20()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312708, &qword_1C9066AC8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = (&v7 - v1);
  sub_1C8D63FCC();
  v3 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind(0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    result = sub_1C8D16D78(v2, &qword_1EC312708, &qword_1C9066AC8);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      v5 = *v2;
      v4 = v2[1];
      sub_1C9063B3C();
      return sub_1C8CE7B78(v5, v4);
    }

    result = sub_1C8CD20B4(v2, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FF7078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312708, &qword_1C9066AC8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC312708, &qword_1C9066AC8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(qword_1EDA64340, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FF7280()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312708, &qword_1C9066AC8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v5 - v1;
  sub_1C8D63FCC();
  v3 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind(0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    result = sub_1C8D16D78(v2, &qword_1EC312708, &qword_1C9066AC8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C9063B8C();
    }

    result = sub_1C8CD20B4(v2, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FF745C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D328, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Image.Static);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FF74DC(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA64300, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Image.Static);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FF754C(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(qword_1EDA64300, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Image.Static);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FF75CC()
{
  if (qword_1EC312010 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31BF30;
  v2 = *algn_1EC31BF38;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x6C6F626D79532ELL, 0xE700000000000000);

  qword_1EC31BF58 = v1;
  unk_1EC31BF60 = v2;
  return result;
}

uint64_t sub_1C8FF7690()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31BF68);
  __swift_project_value_buffer(v0, qword_1EC31BF68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "tintColorData";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "configurationData";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoDisplayRepresentation.Image.Static.Symbol.decodeMessage<A>(decoder:)()
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
      sub_1C906396C();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_20_22();
      sub_1C9063A0C();
    }
  }

  return result;
}

uint64_t ToolKitProtoDisplayRepresentation.Image.Static.Symbol.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_6();
  if (!v1 || (OUTLINED_FUNCTION_23_29(), result = sub_1C9063B8C(), !v0))
  {
    v3 = OUTLINED_FUNCTION_2_55();
    result = sub_1C8FF79C0(v3);
    if (!v0)
    {
      v4 = OUTLINED_FUNCTION_2_55();
      sub_1C8FF7A54(v4);
      type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol(0);
      return OUTLINED_FUNCTION_53_15();
    }
  }

  return result;
}

uint64_t sub_1C8FF79C0(uint64_t result)
{
  v1 = *(result + 24);
  if (v1 >> 60 != 15)
  {
    v2 = *(result + 16);
    sub_1C8CE9144(v2, v1);
    sub_1C9063B3C();
    return sub_1C8CE7BD0(v2, v1);
  }

  return result;
}

uint64_t sub_1C8FF7A54(uint64_t result)
{
  v1 = *(result + 40);
  if (v1 >> 60 != 15)
  {
    v2 = *(result + 32);
    sub_1C8CE9144(v2, v1);
    sub_1C9063B3C();
    return sub_1C8CE7BD0(v2, v1);
  }

  return result;
}

uint64_t sub_1C8FF7B70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D320, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FF7BF0(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA64340, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FF7C60(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(qword_1EDA64340, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FF7CEC()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31BF80);
  __swift_project_value_buffer(v0, qword_1EC31BF80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "direction";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "typeInstance";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoCoercionDefinition.decodeMessage<A>(decoder:)()
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
      v7 = OUTLINED_FUNCTION_5_39();
      sub_1C8FF7FB8(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_5_39();
      sub_1C8FF7F50(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1C8FF7FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoCoercionDefinition(0);
  type metadata accessor for ToolKitProtoTypeInstance(0);
  sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  return sub_1C9063A4C();
}

void ToolKitProtoCoercionDefinition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_363_1();
  OUTLINED_FUNCTION_4_36();
  if (*v21 != 1 || (sub_1C8DC04D0(v23, v24, v25), OUTLINED_FUNCTION_29_23(), sub_1C9063B1C(), !v22))
  {
    v26 = OUTLINED_FUNCTION_2_55();
    sub_1C8FF8100(v26, v27, v28, v29);
    if (!v22)
    {
      type metadata accessor for ToolKitProtoCoercionDefinition(0);
      OUTLINED_FUNCTION_13_23();
    }
  }

  OUTLINED_FUNCTION_364_1();
}

uint64_t sub_1C8FF8100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoCoercionDefinition(0);
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

void static ToolKitProtoCoercionDefinition.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v2 = OUTLINED_FUNCTION_24_2();
  type metadata accessor for ToolKitProtoTypeInstance(v2);
  OUTLINED_FUNCTION_39_19();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_23();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  OUTLINED_FUNCTION_9(v4);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_73();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A60, &unk_1C9068E40);
  OUTLINED_FUNCTION_44_22();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_154_5();
  if (!v8)
  {
    goto LABEL_12;
  }

  v7 = type metadata accessor for ToolKitProtoCoercionDefinition(0);
  OUTLINED_FUNCTION_155_4(v7);
  OUTLINED_FUNCTION_127_4();
  OUTLINED_FUNCTION_122_8();
  OUTLINED_FUNCTION_18_32();
  if (v8)
  {
    OUTLINED_FUNCTION_24_28();
    if (v8)
    {
      sub_1C8D16D78(v0, &qword_1EC312A58, &unk_1C9074CC0);
LABEL_15:
      OUTLINED_FUNCTION_261_1();
      OUTLINED_FUNCTION_1_76();
      v20 = sub_1C8CD1B00(v18, v19, MEMORY[0x1E69AAC10]);
      v10 = OUTLINED_FUNCTION_12_28(v20);
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  OUTLINED_FUNCTION_287();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_24_28();
  if (v8)
  {
    OUTLINED_FUNCTION_5_52();
    sub_1C8CD20B4(v1, v9);
LABEL_11:
    sub_1C8D16D78(v0, &qword_1EC312A60, &unk_1C9068E40);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_48_16();
  sub_1C900BE74();
  v11 = OUTLINED_FUNCTION_398();
  v13 = static ToolKitProtoTypeInstance.== infix(_:_:)(v11, v12);
  v14 = OUTLINED_FUNCTION_181_0();
  sub_1C8CD20B4(v14, v15);
  v16 = OUTLINED_FUNCTION_125();
  sub_1C8CD20B4(v16, v17);
  sub_1C8D16D78(v0, &qword_1EC312A58, &unk_1C9074CC0);
  if (v13)
  {
    goto LABEL_15;
  }

LABEL_12:
  v10 = 0;
LABEL_13:
  OUTLINED_FUNCTION_50_0(v10);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8FF8574(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D318, type metadata accessor for ToolKitProtoCoercionDefinition, &protocol conformance descriptor for ToolKitProtoCoercionDefinition);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FF85F4(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA64AC8, type metadata accessor for ToolKitProtoCoercionDefinition, &protocol conformance descriptor for ToolKitProtoCoercionDefinition);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FF8664(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EDA64AC8, type metadata accessor for ToolKitProtoCoercionDefinition, &protocol conformance descriptor for ToolKitProtoCoercionDefinition);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FF86E4()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31BF98);
  __swift_project_value_buffer(v0, qword_1EC31BF98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "CoercionDirectionImport";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CoercionDirectionExport";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FF89B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D310, type metadata accessor for ToolKitProtoTriggerDefinition, &protocol conformance descriptor for ToolKitProtoTriggerDefinition);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FF8A38(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31D208, type metadata accessor for ToolKitProtoTriggerDefinition, &protocol conformance descriptor for ToolKitProtoTriggerDefinition);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FF8AA8(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31D208, type metadata accessor for ToolKitProtoTriggerDefinition, &protocol conformance descriptor for ToolKitProtoTriggerDefinition);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FF8B24()
{
  result = MEMORY[0x1CCA81A90](0x6E6F69737265562ELL, 0xE900000000000031);
  qword_1EC31BFC8 = 0xD000000000000019;
  unk_1EC31BFD0 = 0x80000001C90CD740;
  return result;
}

uint64_t sub_1C8FF8BB4()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31BFD8);
  __swift_project_value_buffer(v0, qword_1EC31BFD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C90ABEF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "name";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "description";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "parameters";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "outputType";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "requirements";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "flags";
  *(v20 + 1) = 5;
  v20[16] = 2;
  v9();
  return sub_1C9063BEC();
}

void ToolKitProtoTriggerDefinition.Version1.decodeMessage<A>(decoder:)()
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
      case 2:
        OUTLINED_FUNCTION_22_0();
        sub_1C9063A0C();
        break;
      case 3:
        OUTLINED_FUNCTION_22_0();
        sub_1C90639FC();
        break;
      case 4:
        OUTLINED_FUNCTION_17_34();
        sub_1C8FF9044();
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_5_39();
        sub_1C8FF9090(v3, v4, v5, v6);
        break;
      case 6:
        OUTLINED_FUNCTION_5_39();
        sub_1C8FDB440();
        break;
      case 7:
        v7 = OUTLINED_FUNCTION_5_39();
        sub_1C8FF9144(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

void sub_1C8FF9044()
{
  OUTLINED_FUNCTION_196();
  v0 = OUTLINED_FUNCTION_31_22();
  v1(v0);
  OUTLINED_FUNCTION_178_4();
  OUTLINED_FUNCTION_84_6();
  sub_1C9063A3C();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8FF9090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTriggerDefinition.Version1(0);
  type metadata accessor for ToolKitProtoTypeInstance(0);
  sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  return sub_1C9063A4C();
}

void ToolKitProtoTriggerDefinition.Version1.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_340_2();
  OUTLINED_FUNCTION_1_6();
  if (!v5 || (OUTLINED_FUNCTION_23_29(), sub_1C9063B8C(), !v3))
  {
    OUTLINED_FUNCTION_36_21();
    if (!v6 || (OUTLINED_FUNCTION_10_33(), sub_1C9063B8C(), !v3))
    {
      v7 = OUTLINED_FUNCTION_2_55();
      sub_1C8CE3964(v7);
      if (!v3)
      {
        if (*(*(v4 + 32) + 16))
        {
          type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
          OUTLINED_FUNCTION_74_5();
          sub_1C8CD1B00(v8, v9, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter);
          OUTLINED_FUNCTION_227_0();
          OUTLINED_FUNCTION_29_23();
          sub_1C9063BBC();
        }

        v10 = OUTLINED_FUNCTION_2_55();
        sub_1C8FF932C(v10, v11, v12, v13);
        OUTLINED_FUNCTION_366_1();
        if (v17)
        {
          type metadata accessor for ToolKitProtoRuntimeRequirement(0);
          OUTLINED_FUNCTION_71_9();
          sub_1C8CD1B00(v18, v19, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement);
          OUTLINED_FUNCTION_227_0();
          OUTLINED_FUNCTION_29_23();
          v14 = sub_1C9063BBC();
        }

        if (*(*(v4 + 48) + 16))
        {
          sub_1C8DC047C(v14, v15, v16);
          OUTLINED_FUNCTION_29_23();
          sub_1C9063AEC();
        }

        type metadata accessor for ToolKitProtoTriggerDefinition.Version1(0);
        OUTLINED_FUNCTION_13_23();
      }
    }
  }

  OUTLINED_FUNCTION_341_2();
}

uint64_t sub_1C8FF932C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoTriggerDefinition.Version1(0);
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

void static ToolKitProtoTriggerDefinition.Version1.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v4 = OUTLINED_FUNCTION_24_2();
  type metadata accessor for ToolKitProtoTypeInstance(v4);
  OUTLINED_FUNCTION_39_19();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_18_23();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  OUTLINED_FUNCTION_9(v6);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_73();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A60, &unk_1C9068E40);
  OUTLINED_FUNCTION_44_22();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_41_19();
  v11 = v11 && v9 == v10;
  if (!v11 && (sub_1C9064C2C() & 1) == 0)
  {
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_123_6();
  v14 = v11 && v12 == v13;
  if (!v14 && (sub_1C9064C2C() & 1) == 0)
  {
    goto LABEL_34;
  }

  v15 = v1[8];
  v16 = v0[8];
  if (v15)
  {
    if (!v16)
    {
      goto LABEL_34;
    }

    v17 = v1[7] == v0[7] && v15 == v16;
    if (!v17 && (sub_1C9064C2C() & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (v16)
  {
LABEL_34:
    v32 = 0;
    goto LABEL_35;
  }

  sub_1C8CED650(v1[4], v0[4]);
  if ((v18 & 1) == 0)
  {
    goto LABEL_34;
  }

  type metadata accessor for ToolKitProtoTriggerDefinition.Version1(0);
  OUTLINED_FUNCTION_127_4();
  OUTLINED_FUNCTION_122_8();
  OUTLINED_FUNCTION_18_32();
  if (v11)
  {
    OUTLINED_FUNCTION_24_28();
    if (v11)
    {
      sub_1C8D16D78(v2, &qword_1EC312A58, &unk_1C9074CC0);
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  OUTLINED_FUNCTION_287();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_24_28();
  if (v19)
  {
    OUTLINED_FUNCTION_5_52();
    sub_1C8CD20B4(v3, v20);
LABEL_29:
    sub_1C8D16D78(v2, &qword_1EC312A60, &unk_1C9068E40);
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_48_16();
  sub_1C900BE74();
  v21 = OUTLINED_FUNCTION_398();
  v23 = static ToolKitProtoTypeInstance.== infix(_:_:)(v21, v22);
  v24 = OUTLINED_FUNCTION_181_0();
  sub_1C8CD20B4(v24, v25);
  v26 = OUTLINED_FUNCTION_125();
  sub_1C8CD20B4(v26, v27);
  sub_1C8D16D78(v2, &qword_1EC312A58, &unk_1C9074CC0);
  if ((v23 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_31:
  sub_1C8CED86C();
  if ((v28 & 1) == 0 || (sub_1C8D076F4(v1[6], v0[6]) & 1) == 0)
  {
    goto LABEL_34;
  }

  sub_1C90637EC();
  OUTLINED_FUNCTION_1_76();
  v31 = sub_1C8CD1B00(v29, v30, MEMORY[0x1E69AAC10]);
  v32 = OUTLINED_FUNCTION_12_28(v31);
LABEL_35:
  OUTLINED_FUNCTION_50_0(v32);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8FF9828(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D308, type metadata accessor for ToolKitProtoTriggerDefinition.Version1, &protocol conformance descriptor for ToolKitProtoTriggerDefinition.Version1);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FF98A8(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31C850, type metadata accessor for ToolKitProtoTriggerDefinition.Version1, &protocol conformance descriptor for ToolKitProtoTriggerDefinition.Version1);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FF9918(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31C850, type metadata accessor for ToolKitProtoTriggerDefinition.Version1, &protocol conformance descriptor for ToolKitProtoTriggerDefinition.Version1);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FF9998()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31BFF0);
  __swift_project_value_buffer(v0, qword_1EC31BFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C909C3B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "FlagUnspecified";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "FlagIsAllowedToRunAutomatically";
  *(v10 + 8) = 31;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "FlagRequiresNotification";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "FlagIsUserInitiated";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FF9C38()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31C008);
  __swift_project_value_buffer(v0, qword_1EC31C008);
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
  *v10 = "reference";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FF9E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3142F0, &qword_1C9074F30);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoTypedValueResolvableKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314368, &unk_1C9074D90);
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
    sub_1C8D16D78(v10, &qword_1EC3142F0, &qword_1C9074F30);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoTypedValueResolvableKind);
    }

    else
    {
      sub_1C8D16D78(v20, &qword_1EC314368, &unk_1C9074D90);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }
  }

  sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC314368, &unk_1C9074D90);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC314368, &unk_1C9074D90);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC3142F0, &qword_1C9074F30);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FFA370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoTypedValue.ID(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3142F0, &qword_1C9074F30);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoTypedValueResolvableKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D818, &qword_1C90BBC08);
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
    sub_1C8D16D78(v10, &qword_1EC3142F0, &qword_1C9074F30);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8D16D78(v20, &qword_1EC31D818, &qword_1C90BBC08);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoTypedValueResolvableKind);
    }
  }

  sub_1C8CD1B00(&qword_1EC31C960, type metadata accessor for ToolKitProtoTypedValue.ID, &protocol conformance descriptor for ToolKitProtoTypedValue.ID);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC31D818, &qword_1C90BBC08);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC31D818, &qword_1C90BBC08);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC31D818, &qword_1C90BBC08);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC31D818, &qword_1C90BBC08);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC3142F0, &qword_1C9074F30);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FFA940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3142F0, &qword_1C9074F30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoTypedValueResolvableKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC3142F0, &qword_1C9074F30);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoTypedValue);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoTypedValueResolvableKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FFAB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3142F0, &qword_1C9074F30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoTypedValue.ID(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoTypedValueResolvableKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC3142F0, &qword_1C9074F30);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31C960, type metadata accessor for ToolKitProtoTypedValue.ID, &protocol conformance descriptor for ToolKitProtoTypedValue.ID);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoTypedValue.ID);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoTypedValueResolvableKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FFAFE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D300, type metadata accessor for ToolKitProtoTypedValueResolvable, &protocol conformance descriptor for ToolKitProtoTypedValueResolvable);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FFB068(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC314308, type metadata accessor for ToolKitProtoTypedValueResolvable, &protocol conformance descriptor for ToolKitProtoTypedValueResolvable);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FFB0D8(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC314308, type metadata accessor for ToolKitProtoTypedValueResolvable, &protocol conformance descriptor for ToolKitProtoTypedValueResolvable);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FFB164()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31C020);
  __swift_project_value_buffer(v0, qword_1EC31C020);
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
  *v10 = "toolIdentifier";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "target";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "parameterValues";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "options";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoToolInvocation.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_22_0();
        sub_1C90639FC();
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_5_39();
        sub_1C8FFB4CC(v7, v8, v9, v10);
        break;
      case 4:
        v11 = OUTLINED_FUNCTION_5_39();
        sub_1C8FFB580(v11, v12, v13, v14);
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_5_39();
        sub_1C8FFB678(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8FFB4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoToolInvocation(0);
  type metadata accessor for ToolKitProtoContainerDefinition.Device(0);
  sub_1C8CD1B00(qword_1EDA64538, type metadata accessor for ToolKitProtoContainerDefinition.Device, &protocol conformance descriptor for ToolKitProtoContainerDefinition.Device);
  return sub_1C9063A4C();
}

uint64_t sub_1C8FFB580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C90637BC();
  type metadata accessor for ToolKitProtoTypedValueResolvable(0);
  sub_1C8CD1B00(&qword_1EC314308, type metadata accessor for ToolKitProtoTypedValueResolvable, &protocol conformance descriptor for ToolKitProtoTypedValueResolvable);
  sub_1C8CD1B00(&qword_1EC31C818, type metadata accessor for ToolKitProtoTypedValueResolvable, &protocol conformance descriptor for ToolKitProtoTypedValueResolvable);
  return sub_1C90638CC();
}

uint64_t sub_1C8FFB678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoToolInvocation(0);
  type metadata accessor for ToolKitProtoToolInvocationOptions(0);
  sub_1C8CD1B00(&qword_1EC31D258, type metadata accessor for ToolKitProtoToolInvocationOptions, &protocol conformance descriptor for ToolKitProtoToolInvocationOptions);
  return sub_1C9063A4C();
}

void ToolKitProtoToolInvocation.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_17_5();
  v1 = OUTLINED_FUNCTION_7_48();
  sub_1C8CE2D4C(v1);
  if (!v0)
  {
    v2 = OUTLINED_FUNCTION_2_55();
    sub_1C8CE38D0(v2);
    v3 = OUTLINED_FUNCTION_2_55();
    sub_1C8FFB86C(v3, v4, v5, v6);
    OUTLINED_FUNCTION_271_1();
    if (v7)
    {
      sub_1C90637BC();
      type metadata accessor for ToolKitProtoTypedValueResolvable(0);
      sub_1C8CD1B00(&qword_1EC314308, type metadata accessor for ToolKitProtoTypedValueResolvable, &protocol conformance descriptor for ToolKitProtoTypedValueResolvable);
      sub_1C8CD1B00(&qword_1EC31C818, type metadata accessor for ToolKitProtoTypedValueResolvable, &protocol conformance descriptor for ToolKitProtoTypedValueResolvable);
      OUTLINED_FUNCTION_146_6();
      sub_1C9063ADC();
    }

    v8 = OUTLINED_FUNCTION_2_55();
    sub_1C8FFBA40(v8, v9, v10, v11);
    type metadata accessor for ToolKitProtoToolInvocation(0);
    OUTLINED_FUNCTION_13_23();
  }

  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C8FFB86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3142B8, &qword_1C90730B8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoContainerDefinition.Device(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoToolInvocation(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC3142B8, &qword_1C90730B8);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA64538, type metadata accessor for ToolKitProtoContainerDefinition.Device, &protocol conformance descriptor for ToolKitProtoContainerDefinition.Device);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoContainerDefinition.Device);
}

uint64_t sub_1C8FFBA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3142B0, &unk_1C9074D80);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoToolInvocationOptions(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoToolInvocation(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC3142B0, &unk_1C9074D80);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EC31D258, type metadata accessor for ToolKitProtoToolInvocationOptions, &protocol conformance descriptor for ToolKitProtoToolInvocationOptions);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoToolInvocationOptions);
}

void static ToolKitProtoToolInvocation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v6 = OUTLINED_FUNCTION_24_2();
  v7 = type metadata accessor for ToolKitProtoToolInvocationOptions(v6);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_50_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3142B0, &unk_1C9074D80);
  OUTLINED_FUNCTION_9(v9);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_97();
  v66 = v11;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C820, &qword_1C90AC140);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_35();
  type metadata accessor for ToolKitProtoContainerDefinition.Device(v13);
  OUTLINED_FUNCTION_44_22();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_51_15();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3142B8, &qword_1C90730B8);
  OUTLINED_FUNCTION_9(v15);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  v18 = (v63 - v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C738, &qword_1C90AC0F0);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_110();
  v20 = v0[2];
  if (v1[2])
  {
    if (!v20)
    {
      goto LABEL_42;
    }

    OUTLINED_FUNCTION_201_2();
    v23 = v23 && v21 == v22;
    if (!v23 && (sub_1C9064C2C() & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else if (v20)
  {
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_373_0();
  if (v25)
  {
    if (!v24)
    {
      goto LABEL_42;
    }

    OUTLINED_FUNCTION_275_2();
    v28 = v23 && v26 == v27;
    if (!v28 && (sub_1C9064C2C() & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else if (v24)
  {
    goto LABEL_42;
  }

  v64 = v7;
  v65 = v3;
  v63[0] = v2;
  v63[1] = type metadata accessor for ToolKitProtoToolInvocation(0);
  OUTLINED_FUNCTION_52_1();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_52_1();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_185_6();
  OUTLINED_FUNCTION_108_2(v29, v30, v31);
  if (v23)
  {
    OUTLINED_FUNCTION_185_6();
    OUTLINED_FUNCTION_108_2(v32, v33, v34);
    if (v23)
    {
      sub_1C8D16D78(v5, &qword_1EC3142B8, &qword_1C90730B8);
      goto LABEL_30;
    }

LABEL_27:
    v40 = &qword_1EC31C738;
    v41 = &qword_1C90AC0F0;
    v42 = v5;
LABEL_28:
    sub_1C8D16D78(v42, v40, v41);
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_207_2();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_185_6();
  OUTLINED_FUNCTION_108_2(v35, v36, v37);
  if (v38)
  {
    OUTLINED_FUNCTION_259_2();
    sub_1C8CD20B4(v18, v39);
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_258_3();
  sub_1C900BE74();
  v43 = static ToolKitProtoContainerDefinition.Device.== infix(_:_:)(v18, v4);
  sub_1C8CD20B4(v4, &qword_1C90730B8);
  v44 = OUTLINED_FUNCTION_181_0();
  sub_1C8CD20B4(v44, v45);
  sub_1C8D16D78(v5, &qword_1EC3142B8, &qword_1C90730B8);
  if ((v43 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_30:
  sub_1C8F565D4(*v1, *v0);
  if ((v46 & 1) == 0)
  {
    goto LABEL_42;
  }

  v47 = *(v67 + 48);
  v48 = v65;
  sub_1C8D63FCC();
  sub_1C8D63FCC();
  v49 = OUTLINED_FUNCTION_175_5();
  OUTLINED_FUNCTION_108_2(v49, v50, v64);
  if (!v23)
  {
    sub_1C8D63FCC();
    OUTLINED_FUNCTION_54_15(v48 + v47);
    if (!v51)
    {
      sub_1C900BE74();
      OUTLINED_FUNCTION_49();
      v54 = static ToolKitProtoToolInvocationOptions.== infix(_:_:)();
      v55 = OUTLINED_FUNCTION_100();
      sub_1C8CD20B4(v55, v56);
      v57 = OUTLINED_FUNCTION_347();
      sub_1C8CD20B4(v57, v58);
      sub_1C8D16D78(v48, &qword_1EC3142B0, &unk_1C9074D80);
      if (v54)
      {
        goto LABEL_41;
      }

LABEL_42:
      v62 = 0;
      goto LABEL_43;
    }

    v52 = OUTLINED_FUNCTION_273();
    sub_1C8CD20B4(v52, v53);
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_54_15(v48 + v47);
  if (!v23)
  {
LABEL_39:
    v40 = &qword_1EC31C820;
    v41 = &qword_1C90AC140;
    v42 = v48;
    goto LABEL_28;
  }

  sub_1C8D16D78(v48, &qword_1EC3142B0, &unk_1C9074D80);
LABEL_41:
  sub_1C90637EC();
  OUTLINED_FUNCTION_1_76();
  v61 = sub_1C8CD1B00(v59, v60, MEMORY[0x1E69AAC10]);
  v62 = OUTLINED_FUNCTION_12_28(v61);
LABEL_43:
  OUTLINED_FUNCTION_50_0(v62);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8FFC178(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D2F8, type metadata accessor for ToolKitProtoToolInvocation, &protocol conformance descriptor for ToolKitProtoToolInvocation);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FFC1F8(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC317A10, type metadata accessor for ToolKitProtoToolInvocation, &protocol conformance descriptor for ToolKitProtoToolInvocation);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FFC268(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC317A10, type metadata accessor for ToolKitProtoToolInvocation, &protocol conformance descriptor for ToolKitProtoToolInvocation);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FFC2F4()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31C038);
  __swift_project_value_buffer(v0, qword_1EC31C038);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C909C450;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "interactionMode";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "locale";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "requestIdentifier";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "interfaceIdiom";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "shortcutOutput";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoToolInvocationOptions.decodeMessage<A>(decoder:)()
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
        sub_1C8FFC65C(v3, v4, v5, v6);
        break;
      case 2:
      case 3:
        OUTLINED_FUNCTION_22_0();
        sub_1C90639FC();
        break;
      case 4:
        v7 = OUTLINED_FUNCTION_5_39();
        sub_1C8FFC6C4(v7, v8, v9, v10);
        break;
      case 5:
        OUTLINED_FUNCTION_22_0();
        sub_1C906390C();
        break;
      default:
        continue;
    }
  }
}

char *ToolKitProtoToolInvocationOptions.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_83_8();
  v1 = OUTLINED_FUNCTION_22_33();
  result = sub_1C8FFC7C4(v1, v2, v3, v4);
  if (!v0)
  {
    v6 = OUTLINED_FUNCTION_3_4();
    sub_1C8CE2CE8(v6);
    v7 = OUTLINED_FUNCTION_3_4();
    sub_1C8CE2D84(v7);
    v8 = OUTLINED_FUNCTION_3_4();
    sub_1C8FFC840(v8, v9, v10, v11);
    v12 = OUTLINED_FUNCTION_3_4();
    sub_1C8FFC8BC(v12);
    type metadata accessor for ToolKitProtoToolInvocationOptions(0);
    return OUTLINED_FUNCTION_69_10();
  }

  return result;
}

char *sub_1C8FFC7C4(char *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*result != 5)
  {
    sub_1C8DC0428(result, a2, a3);
    return sub_1C9063B1C();
  }

  return result;
}

uint64_t sub_1C8FFC840(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 40) != 11)
  {
    sub_1C8DC03D4(result, a2, a3);
    return sub_1C9063B1C();
  }

  return result;
}

uint64_t sub_1C8FFC8BC(uint64_t result)
{
  if (*(result + 41) != 2)
  {
    return sub_1C9063B0C();
  }

  return result;
}

uint64_t static ToolKitProtoToolInvocationOptions.== infix(_:_:)()
{
  OUTLINED_FUNCTION_223();
  v3 = *v2;
  v5 = *v4;
  if (v3 == 5)
  {
    if (v5 != 5)
    {
      return 0;
    }
  }

  else if (v3 != v5)
  {
    return 0;
  }

  v6 = *(v0 + 16);
  if (*(v1 + 16))
  {
    if (!v6)
    {
      return 0;
    }

    OUTLINED_FUNCTION_201_2();
    v9 = v9 && v7 == v8;
    if (!v9 && (sub_1C9064C2C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  OUTLINED_FUNCTION_373_0();
  if (v11)
  {
    if (!v10)
    {
      return 0;
    }

    OUTLINED_FUNCTION_275_2();
    v14 = v9 && v12 == v13;
    if (!v14 && (sub_1C9064C2C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v15 = *(v1 + 40);
  v16 = *(v0 + 40);
  if (v15 == 11)
  {
    if (v16 != 11)
    {
      return 0;
    }
  }

  else if (v15 != v16)
  {
    return 0;
  }

  v17 = *(v1 + 41);
  v18 = *(v0 + 41);
  if (v17 == 2)
  {
    if (v18 == 2)
    {
      goto LABEL_33;
    }

    return 0;
  }

  if (v18 == 2 || ((v17 ^ v18) & 1) != 0)
  {
    return 0;
  }

LABEL_33:
  type metadata accessor for ToolKitProtoToolInvocationOptions(0);
  sub_1C90637EC();
  OUTLINED_FUNCTION_1_76();
  v22 = sub_1C8CD1B00(v20, v21, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_12_28(v22) & 1;
}

uint64_t sub_1C8FFCAE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D2F0, type metadata accessor for ToolKitProtoToolInvocationOptions, &protocol conformance descriptor for ToolKitProtoToolInvocationOptions);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FFCB60(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31D258, type metadata accessor for ToolKitProtoToolInvocationOptions, &protocol conformance descriptor for ToolKitProtoToolInvocationOptions);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FFCBD0(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31D258, type metadata accessor for ToolKitProtoToolInvocationOptions, &protocol conformance descriptor for ToolKitProtoToolInvocationOptions);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FFCC50()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31C050);
  __swift_project_value_buffer(v0, qword_1EC31C050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C909C450;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "InteractionModeUnspecified";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "InteractionModeDisplayForward";
  *(v10 + 8) = 29;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "InteractionModeDisplayOnly";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "InteractionModeVoiceOnly";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "InteractionModeVoiceForward";
  *(v16 + 1) = 27;
  v16[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FFCF18()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31C068);
  __swift_project_value_buffer(v0, qword_1EC31C068);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1C90ABEE0;
  v4 = v28 + v3 + v1[14];
  *(v28 + v3) = 0;
  *v4 = "InterfaceIdiomUnspecified";
  *(v4 + 8) = 25;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C9063BDC();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v28 + v3 + v2 + v1[14];
  *(v28 + v3 + v2) = 1;
  *v8 = "InterfaceIdiomCarPlay";
  *(v8 + 8) = 21;
  *(v8 + 16) = 2;
  v7();
  v9 = (v28 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "InterfaceIdiomEyesFree";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v7();
  v11 = (v28 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "InterfaceIdiomHomePod";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v7();
  v13 = (v28 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "InterfaceIdiomMac";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v7();
  v15 = (v28 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "InterfaceIdiomAirPods";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v7();
  v17 = (v28 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "InterfaceIdiomPhone";
  *(v18 + 1) = 19;
  v18[16] = 2;
  v7();
  v19 = (v28 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "InterfaceIdiomPad";
  *(v20 + 1) = 17;
  v20[16] = 2;
  v7();
  v21 = (v28 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "InterfaceIdiomWatch";
  *(v22 + 1) = 19;
  v22[16] = 2;
  v7();
  v23 = (v28 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "InterfaceIdiomTv";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v7();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "InterfaceIdiomVision";
  *(v26 + 1) = 20;
  v26[16] = 2;
  v7();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FFD35C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v3, a2);
  v4 = OUTLINED_FUNCTION_95_0();
  __swift_project_value_buffer(v4, v5);
  return sub_1C9063BFC();
}

uint64_t sub_1C8FFD44C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D2E8, type metadata accessor for ToolKitProtoToolDefinitionClosure, &protocol conformance descriptor for ToolKitProtoToolDefinitionClosure);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FFD4CC(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31D280, type metadata accessor for ToolKitProtoToolDefinitionClosure, &protocol conformance descriptor for ToolKitProtoToolDefinitionClosure);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FFD53C(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31D280, type metadata accessor for ToolKitProtoToolDefinitionClosure, &protocol conformance descriptor for ToolKitProtoToolDefinitionClosure);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FFD5B8()
{
  result = MEMORY[0x1CCA81A90](0x6E6F69737265562ELL, 0xE900000000000031);
  qword_1EC31C098 = 0xD00000000000001DLL;
  unk_1EC31C0A0 = 0x80000001C90CD7C0;
  return result;
}

uint64_t sub_1C8FFD648()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31C0A8);
  __swift_project_value_buffer(v0, qword_1EC31C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "toolDefinition";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "typeDefinitions";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

void ToolKitProtoToolDefinitionClosure.Version1.decodeMessage<A>(decoder:)()
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
      OUTLINED_FUNCTION_17_34();
      sub_1C8F6BF94();
    }

    else if (v1 == 1)
    {
      v3 = OUTLINED_FUNCTION_5_39();
      sub_1C8FFD8F8(v3, v4, v5, v6);
    }
  }
}

uint64_t sub_1C8FFD8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoToolDefinitionClosure.Version1(0);
  type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  sub_1C8CD1B00(qword_1EDA60EE0, type metadata accessor for ToolKitProtoToolDefinition.Version1, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1);
  return sub_1C9063A4C();
}

void ToolKitProtoToolDefinitionClosure.Version1.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_340_2();
  v4 = OUTLINED_FUNCTION_7_48();
  sub_1C8FFDA50(v4, v5, v6, v7);
  if (!v3)
  {
    OUTLINED_FUNCTION_271_1();
    if (v8)
    {
      type metadata accessor for ToolKitProtoTypeDefinition.Version1(0);
      OUTLINED_FUNCTION_245_1();
      sub_1C8CD1B00(v9, v10, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1);
      OUTLINED_FUNCTION_126_4();
      OUTLINED_FUNCTION_29_23();
      sub_1C9063BBC();
    }

    type metadata accessor for ToolKitProtoToolDefinitionClosure.Version1(0);
    OUTLINED_FUNCTION_13_23();
  }

  OUTLINED_FUNCTION_341_2();
}

uint64_t sub_1C8FFDA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314838, &qword_1C9074F40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoToolDefinitionClosure.Version1(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC314838, &qword_1C9074F40);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA60EE0, type metadata accessor for ToolKitProtoToolDefinition.Version1, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoToolDefinition.Version1);
}

void static ToolKitProtoToolDefinitionClosure.Version1.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v2 = OUTLINED_FUNCTION_143();
  type metadata accessor for ToolKitProtoToolDefinition.Version1(v2);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_23();
  v4 = OUTLINED_FUNCTION_245();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_9(v6);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C840, &qword_1C90AC148);
  OUTLINED_FUNCTION_184_6();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_35();
  type metadata accessor for ToolKitProtoToolDefinitionClosure.Version1(v9);
  OUTLINED_FUNCTION_348_2();
  OUTLINED_FUNCTION_44_18();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_44_18();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_78_4(v0);
  if (v10)
  {
    OUTLINED_FUNCTION_78_4(v0 + v1);
    if (v10)
    {
      sub_1C8D16D78(v0, &qword_1EC314838, &qword_1C9074F40);
      goto LABEL_11;
    }

LABEL_9:
    sub_1C8D16D78(v0, &qword_1EC31C840, &qword_1C90AC148);
LABEL_13:
    v20 = 0;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_177_5();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_78_4(v0 + v1);
  if (v10)
  {
    v11 = OUTLINED_FUNCTION_273();
    sub_1C8CD20B4(v11, v12);
    goto LABEL_9;
  }

  sub_1C900BE74();
  OUTLINED_FUNCTION_347();
  static ToolKitProtoToolDefinition.Version1.== infix(_:_:)();
  v13 = OUTLINED_FUNCTION_196_6();
  sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  v14 = OUTLINED_FUNCTION_203();
  sub_1C8CD20B4(v14, v15);
  sub_1C8D16D78(v0, &qword_1EC314838, &qword_1C9074F40);
  if ((&qword_1EC314838 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  OUTLINED_FUNCTION_333_2();
  sub_1C8CECF90();
  if ((v16 & 1) == 0)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_357_1();
  OUTLINED_FUNCTION_1_76();
  v19 = sub_1C8CD1B00(v17, v18, MEMORY[0x1E69AAC10]);
  v20 = OUTLINED_FUNCTION_169_5(v19);
LABEL_14:
  OUTLINED_FUNCTION_50_0(v20);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8FFDEF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D2E0, type metadata accessor for ToolKitProtoToolDefinitionClosure.Version1, &protocol conformance descriptor for ToolKitProtoToolDefinitionClosure.Version1);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FFDF70(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31D290, type metadata accessor for ToolKitProtoToolDefinitionClosure.Version1, &protocol conformance descriptor for ToolKitProtoToolDefinitionClosure.Version1);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FFDFE0(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31D290, type metadata accessor for ToolKitProtoToolDefinitionClosure.Version1, &protocol conformance descriptor for ToolKitProtoToolDefinitionClosure.Version1);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FFE078()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31C0C0);
  __swift_project_value_buffer(v0, qword_1EC31C0C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C909C450;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "metadata";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "tools";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "types";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "visibleTools";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "triggers";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v9();
  return sub_1C9063BEC();
}

void ToolKitProtoToolboxDump.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_340_2();
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    v4 = sub_1C90638DC();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    switch(v4)
    {
      case 1:
        v6 = OUTLINED_FUNCTION_5_39();
        sub_1C8FFE4F4(v6, v7, v8, v9);
        break;
      case 2:
        OUTLINED_FUNCTION_17_34();
        sub_1C8F6BF94();
        break;
      case 3:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F6BFE0();
        break;
      case 4:
        OUTLINED_FUNCTION_17_34();
        sub_1C8FC6684();
        break;
      case 5:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F6C148();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_341_2();
}

uint64_t sub_1C8FFE4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoToolboxDump(0);
  type metadata accessor for ToolKitProtoToolboxDump.Metadata(0);
  sub_1C8CD1B00(&qword_1EC31D2C0, type metadata accessor for ToolKitProtoToolboxDump.Metadata, &protocol conformance descriptor for ToolKitProtoToolboxDump.Metadata);
  return sub_1C9063A4C();
}

void ToolKitProtoToolboxDump.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_340_2();
  v4 = OUTLINED_FUNCTION_7_48();
  sub_1C8FFE75C(v4, v5, v6, v7);
  if (!v3)
  {
    OUTLINED_FUNCTION_271_1();
    if (v8)
    {
      type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
      OUTLINED_FUNCTION_242_3();
      sub_1C8CD1B00(v9, v10, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1);
      OUTLINED_FUNCTION_126_4();
      OUTLINED_FUNCTION_29_23();
      sub_1C9063BBC();
    }

    OUTLINED_FUNCTION_347_2();
    if (v11)
    {
      type metadata accessor for ToolKitProtoTypeDefinition.Version1(0);
      OUTLINED_FUNCTION_245_1();
      sub_1C8CD1B00(v12, v13, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1);
      OUTLINED_FUNCTION_227_0();
      OUTLINED_FUNCTION_29_23();
      sub_1C9063BBC();
    }

    OUTLINED_FUNCTION_346_2();
    if (v14)
    {
      type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
      OUTLINED_FUNCTION_242_3();
      sub_1C8CD1B00(v15, v16, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1);
      OUTLINED_FUNCTION_227_0();
      OUTLINED_FUNCTION_29_23();
      sub_1C9063BBC();
    }

    OUTLINED_FUNCTION_367_0();
    if (v17)
    {
      type metadata accessor for ToolKitProtoTriggerDefinition.Version1(0);
      sub_1C8CD1B00(&qword_1EC31C850, type metadata accessor for ToolKitProtoTriggerDefinition.Version1, &protocol conformance descriptor for ToolKitProtoTriggerDefinition.Version1);
      OUTLINED_FUNCTION_227_0();
      OUTLINED_FUNCTION_29_23();
      sub_1C9063BBC();
    }

    type metadata accessor for ToolKitProtoToolboxDump(0);
    OUTLINED_FUNCTION_13_23();
  }

  OUTLINED_FUNCTION_341_2();
}

uint64_t sub_1C8FFE75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314840, &qword_1C9074F48);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoToolboxDump.Metadata(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoToolboxDump(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC314840, &qword_1C9074F48);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EC31D2C0, type metadata accessor for ToolKitProtoToolboxDump.Metadata, &protocol conformance descriptor for ToolKitProtoToolboxDump.Metadata);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoToolboxDump.Metadata);
}

void static ToolKitProtoToolboxDump.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_143();
  type metadata accessor for ToolKitProtoToolboxDump.Metadata(v6);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  v10 = (v9 - v8);
  v11 = OUTLINED_FUNCTION_245();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  OUTLINED_FUNCTION_9(v13);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_15_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C858, &qword_1C90AC150);
  OUTLINED_FUNCTION_184_6();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  v16 = OUTLINED_FUNCTION_35();
  type metadata accessor for ToolKitProtoToolboxDump(v16);
  v17 = *(v3 + 56);
  OUTLINED_FUNCTION_44_18();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_44_18();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_191(v1);
  if (!v18)
  {
    OUTLINED_FUNCTION_177_5();
    sub_1C8D63FCC();
    OUTLINED_FUNCTION_191(v1 + v17);
    if (!v18)
    {
      sub_1C900BE74();
      v23 = *v2 == *v10 && v2[1] == v10[1];
      if (v23 || (sub_1C9064C2C() & 1) != 0)
      {
        v24 = v2[2] == v10[2] && v2[3] == v10[3];
        if (v24 || (sub_1C9064C2C() & 1) != 0)
        {
          sub_1C90637EC();
          OUTLINED_FUNCTION_1_76();
          v27 = sub_1C8CD1B00(v25, v26, MEMORY[0x1E69AAC10]);
          v28 = OUTLINED_FUNCTION_386_0(v27);
          sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoToolboxDump.Metadata);
          v29 = OUTLINED_FUNCTION_124();
          sub_1C8CD20B4(v29, v30);
          sub_1C8D16D78(v1, &qword_1EC314840, &qword_1C9074F48);
          if (v28)
          {
            goto LABEL_22;
          }

LABEL_27:
          v41 = 0;
          goto LABEL_28;
        }
      }

      sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoToolboxDump.Metadata);
      v42 = OUTLINED_FUNCTION_274_0();
      sub_1C8CD20B4(v42, v43);
      v21 = &qword_1EC314840;
      v22 = &qword_1C9074F48;
LABEL_10:
      sub_1C8D16D78(v1, v21, v22);
      goto LABEL_27;
    }

    v19 = OUTLINED_FUNCTION_273();
    sub_1C8CD20B4(v19, v20);
LABEL_9:
    v21 = &qword_1EC31C858;
    v22 = &qword_1C90AC150;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_191(v1 + v17);
  if (!v18)
  {
    goto LABEL_9;
  }

  sub_1C8D16D78(v1, &qword_1EC314840, &qword_1C9074F48);
LABEL_22:
  sub_1C8CF03D0(*v0, *v5);
  if ((v31 & 1) == 0)
  {
    goto LABEL_27;
  }

  sub_1C8CECF90();
  if ((v32 & 1) == 0)
  {
    goto LABEL_27;
  }

  sub_1C8CF03D0(v0[2], v5[2]);
  if ((v33 & 1) == 0)
  {
    goto LABEL_27;
  }

  sub_1C8CF0424(v0[3], v5[3]);
  if ((v34 & 1) == 0)
  {
    goto LABEL_27;
  }

  sub_1C90637EC();
  OUTLINED_FUNCTION_1_76();
  sub_1C8CD1B00(v35, v36, MEMORY[0x1E69AAC10]);
  v37 = OUTLINED_FUNCTION_256_1();
  v41 = OUTLINED_FUNCTION_358_1(v37, v38, v39, v40);
LABEL_28:
  OUTLINED_FUNCTION_50_0(v41);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8FFED2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D2D8, type metadata accessor for ToolKitProtoToolboxDump, &protocol conformance descriptor for ToolKitProtoToolboxDump);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FFEDAC(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31D2A8, type metadata accessor for ToolKitProtoToolboxDump, &protocol conformance descriptor for ToolKitProtoToolboxDump);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FFEE1C(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31D2A8, type metadata accessor for ToolKitProtoToolboxDump, &protocol conformance descriptor for ToolKitProtoToolboxDump);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FFEE9C()
{
  result = MEMORY[0x1CCA81A90](0x7461646174654D2ELL, 0xE900000000000061);
  qword_1EC31C0D8 = 0xD000000000000013;
  unk_1EC31C0E0 = 0x80000001C90CD7E0;
  return result;
}

uint64_t sub_1C8FFEF2C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return OUTLINED_FUNCTION_95_0();
}

uint64_t sub_1C8FFEF7C()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31C0E8);
  __swift_project_value_buffer(v0, qword_1EC31C0E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "build";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "os";
  *(v10 + 1) = 2;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FFF178@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v8 = a2(0);
  v9 = __swift_project_value_buffer(v8, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_1C8FFF218()
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

    if (result == 2)
    {
      OUTLINED_FUNCTION_278_3();
      v0();
    }

    else if (result == 1)
    {
      v5 = OUTLINED_FUNCTION_177_5();
      v2(v5);
    }
  }

  return result;
}

void sub_1C8FFF2BC()
{
  OUTLINED_FUNCTION_300_0();
  v2 = v1;
  OUTLINED_FUNCTION_1_6();
  if (!v3 || (OUTLINED_FUNCTION_10_33(), sub_1C9063B8C(), !v0))
  {
    OUTLINED_FUNCTION_36_21();
    if (!v4 || (OUTLINED_FUNCTION_10_33(), sub_1C9063B8C(), !v0))
    {
      v2(0);
      OUTLINED_FUNCTION_13_23();
    }
  }

  OUTLINED_FUNCTION_301_1();
}

uint64_t sub_1C8FFF3D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D2D0, type metadata accessor for ToolKitProtoToolboxDump.Metadata, &protocol conformance descriptor for ToolKitProtoToolboxDump.Metadata);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FFF450(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31D2C0, type metadata accessor for ToolKitProtoToolboxDump.Metadata, &protocol conformance descriptor for ToolKitProtoToolboxDump.Metadata);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FFF4C0(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31D2C0, type metadata accessor for ToolKitProtoToolboxDump.Metadata, &protocol conformance descriptor for ToolKitProtoToolboxDump.Metadata);

  return sub_1C9063ABC();
}

unint64_t sub_1C8FFF544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA68128;
  if (!qword_1EDA68128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA68128);
  }

  return result;
}

unint64_t sub_1C8FFF7E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA64D10;
  if (!qword_1EDA64D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA64D10);
  }

  return result;
}

unint64_t sub_1C900049C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA64E28;
  if (!qword_1EDA64E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA64E28);
  }

  return result;
}

unint64_t sub_1C9000738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA65038;
  if (!qword_1EDA65038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA65038);
  }

  return result;
}

unint64_t sub_1C90011B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31C990;
  if (!qword_1EC31C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31C990);
  }

  return result;
}

unint64_t sub_1C9001690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31C9F8;
  if (!qword_1EC31C9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31C9F8);
  }

  return result;
}

unint64_t sub_1C900180C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31CA18;
  if (!qword_1EC31CA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31CA18);
  }

  return result;
}

unint64_t sub_1C9001AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31CA50;
  if (!qword_1EC31CA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31CA50);
  }

  return result;
}

unint64_t sub_1C90021C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31CAE8;
  if (!qword_1EC31CAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31CAE8);
  }

  return result;
}

unint64_t sub_1C9002460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31CB20;
  if (!qword_1EC31CB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31CB20);
  }

  return result;
}

unint64_t sub_1C90024BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31CB28;
  if (!qword_1EC31CB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31CB28);
  }

  return result;
}

unint64_t sub_1C9002518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31CB30;
  if (!qword_1EC31CB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31CB30);
  }

  return result;
}

unint64_t sub_1C9002574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31CB38;
  if (!qword_1EC31CB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31CB38);
  }

  return result;
}

unint64_t sub_1C9003E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA64908;
  if (!qword_1EDA64908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA64908);
  }

  return result;
}

unint64_t sub_1C9003EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA615B8;
  if (!qword_1EDA615B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA615B8);
  }

  return result;
}

unint64_t sub_1C9004A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA64A18;
  if (!qword_1EDA64A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA64A18);
  }

  return result;
}

unint64_t sub_1C9004AE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA64A38;
  if (!qword_1EDA64A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA64A38);
  }

  return result;
}

unint64_t sub_1C9004B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA615D8;
  if (!qword_1EDA615D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA615D8);
  }

  return result;
}

unint64_t sub_1C90056DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31CDE0;
  if (!qword_1EC31CDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31CDE0);
  }

  return result;
}

unint64_t sub_1C90064B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31CEA8;
  if (!qword_1EC31CEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31CEA8);
  }

  return result;
}

unint64_t sub_1C9006874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA67C90;
  if (!qword_1EDA67C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA67C90);
  }

  return result;
}

unint64_t sub_1C9006B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA64790;
  if (!qword_1EDA64790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA64790);
  }

  return result;
}

unint64_t sub_1C90088AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63CC8;
  if (!qword_1EDA63CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63CC8);
  }

  return result;
}

unint64_t sub_1C9008908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60FC0;
  if (!qword_1EDA60FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60FC0);
  }

  return result;
}

unint64_t sub_1C9008964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60FE0;
  if (!qword_1EDA60FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60FE0);
  }

  return result;
}

unint64_t sub_1C90089C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63C78;
  if (!qword_1EDA63C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63C78);
  }

  return result;
}

unint64_t sub_1C9008B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60F90;
  if (!qword_1EDA60F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60F90);
  }

  return result;
}

unint64_t sub_1C9009918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA66D80;
  if (!qword_1EDA66D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66D80);
  }

  return result;
}

unint64_t sub_1C9009DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA61B50;
  if (!qword_1EDA61B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA61B50);
  }

  return result;
}

unint64_t sub_1C900A090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA61340;
  if (!qword_1EDA61340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA61340);
  }

  return result;
}

unint64_t sub_1C900A0EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA64510;
  if (!qword_1EDA64510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA64510);
  }

  return result;
}

unint64_t sub_1C900A808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31D190;
  if (!qword_1EC31D190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31D190);
  }

  return result;
}

unint64_t sub_1C900B284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA64AD0;
  if (!qword_1EDA64AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA64AD0);
  }

  return result;
}

unint64_t sub_1C900B520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31D228;
  if (!qword_1EC31D228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31D228);
  }

  return result;
}

unint64_t sub_1C900B8DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31D268;
  if (!qword_1EC31D268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31D268);
  }

  return result;
}

unint64_t sub_1C900B938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31D270;
  if (!qword_1EC31D270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31D270);
  }

  return result;
}

unint64_t sub_1C900BE10()
{
  result = qword_1EC31DB10;
  if (!qword_1EC31DB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC31DB08, &qword_1C90BBEE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31DB10);
  }

  return result;
}

uint64_t sub_1C900BE74()
{
  v1 = OUTLINED_FUNCTION_24_2();
  v2(v1);
  OUTLINED_FUNCTION_13_1();
  v3 = OUTLINED_FUNCTION_94();
  v4(v3);
  return v0;
}

uint64_t sub_1C900BEC8()
{
  v1 = OUTLINED_FUNCTION_24_2();
  v2(v1);
  OUTLINED_FUNCTION_13_1();
  v3 = OUTLINED_FUNCTION_94();
  v4(v3);
  return v0;
}

uint64_t OUTLINED_FUNCTION_52_17()
{

  return sub_1C90637CC();
}

uint64_t OUTLINED_FUNCTION_53_15()
{

  return sub_1C90637CC();
}

uint64_t OUTLINED_FUNCTION_56_13(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_99_8()
{
  sub_1C8D04F90(v1, v0);
  sub_1C8D04F90(v3, v2);
  return v1;
}

uint64_t OUTLINED_FUNCTION_127_4()
{

  return sub_1C8D63FCC();
}

uint64_t OUTLINED_FUNCTION_128_4()
{

  return sub_1C8CD20B4(v0, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
}

uint64_t OUTLINED_FUNCTION_166_4()
{

  return sub_1C8D63FCC();
}

uint64_t OUTLINED_FUNCTION_169_5(uint64_t a1)
{

  return sub_1C9063EAC();
}

uint64_t OUTLINED_FUNCTION_171_6(uint64_t a1)
{

  return sub_1C906392C();
}

uint64_t OUTLINED_FUNCTION_178_4()
{

  return sub_1C8CD1B00(v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_194_6()
{

  return sub_1C8D63FCC();
}

uint64_t OUTLINED_FUNCTION_195_3(uint64_t a1)
{

  return sub_1C9063BCC();
}

uint64_t OUTLINED_FUNCTION_205_4(uint64_t a1)
{

  return sub_1C9063EAC();
}

void OUTLINED_FUNCTION_211_3()
{

  sub_1C8FFF2BC();
}

uint64_t OUTLINED_FUNCTION_217_1(char a1, char a2, size_t a3, char a4, char a5, char a6, char a7, char a8)
{
  *(v15 - 134) = v13;
  *(v15 - 133) = a8;
  *(v15 - 132) = a7;
  *(v15 - 131) = a6;
  *(v15 - 130) = v8;
  *(v15 - 129) = a5;
  *(v15 - 128) = a4;
  *(v15 - 127) = a2;
  *(v15 - 126) = v14;
  *(v15 - 125) = a1;
  *(v15 - 124) = v12;
  *(v15 - 123) = v11;
  *(v15 - 122) = v10;
  *(v15 - 121) = v9;

  return memcmp((v15 - 120), (v15 - 134), a3);
}

uint64_t OUTLINED_FUNCTION_221_3()
{
  sub_1C8D04F90(v2, v1);
  sub_1C8D04F90(v0, v3);
  return v2;
}

uint64_t OUTLINED_FUNCTION_261_1()
{

  return sub_1C90637EC();
}

uint64_t OUTLINED_FUNCTION_265_2(uint64_t a1)
{

  return sub_1C9063EAC();
}

uint64_t OUTLINED_FUNCTION_267_2()
{

  return sub_1C8CD20B4(v0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
}

uint64_t OUTLINED_FUNCTION_268_2()
{

  return sub_1C8CD20B4(v0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
}

uint64_t OUTLINED_FUNCTION_280_2()
{

  return sub_1C8D63FCC();
}

uint64_t OUTLINED_FUNCTION_290_2()
{

  return sub_1C8D63FCC();
}

uint64_t OUTLINED_FUNCTION_292_2()
{

  return sub_1C8CD20B4(v1, v0);
}

void OUTLINED_FUNCTION_295_1()
{
  *(v3 - 114) = v1;
  *(v3 - 113) = HIBYTE(v0);
  *(v3 - 112) = v2;
}

uint64_t OUTLINED_FUNCTION_303_2()
{

  return sub_1C90637EC();
}

uint64_t OUTLINED_FUNCTION_311_1()
{

  return sub_1C8D63FCC();
}

uint64_t OUTLINED_FUNCTION_312_1()
{

  return sub_1C8D63FCC();
}

uint64_t OUTLINED_FUNCTION_313_2()
{

  return sub_1C8CD20B4(v1, v0);
}

uint64_t OUTLINED_FUNCTION_326_1()
{

  return sub_1C8D63FCC();
}

uint64_t OUTLINED_FUNCTION_327_1()
{

  return sub_1C90637EC();
}

uint64_t OUTLINED_FUNCTION_335_1()
{

  return sub_1C8CD20B4(v1, v0);
}

void OUTLINED_FUNCTION_342_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_1C8FF4D94(a1, a2, a3, 1);
}

uint64_t OUTLINED_FUNCTION_343_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C9063EAC();
}

uint64_t OUTLINED_FUNCTION_359_1()
{

  return sub_1C8CD20B4(v1, v0);
}

uint64_t OUTLINED_FUNCTION_360_1()
{

  return sub_1C8D63FCC();
}

uint64_t OUTLINED_FUNCTION_361_1()
{

  return sub_1C8D63FCC();
}

uint64_t OUTLINED_FUNCTION_362_1()
{

  return sub_1C8D63FCC();
}

uint64_t OUTLINED_FUNCTION_365_1()
{

  return sub_1C8D63FCC();
}

uint64_t OUTLINED_FUNCTION_385_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1C8DC8514(v9, a9, 1, a4, a5);
}

uint64_t OUTLINED_FUNCTION_386_0(uint64_t a1)
{

  return sub_1C9063EAC();
}

uint64_t OUTLINED_FUNCTION_387_0(uint64_t a1)
{

  return sub_1C9063EAC();
}

uint64_t OUTLINED_FUNCTION_389_0()
{

  return sub_1C90637EC();
}

uint64_t OUTLINED_FUNCTION_390_0()
{

  return sub_1C90637EC();
}

uint64_t OUTLINED_FUNCTION_391_0()
{

  return sub_1C8D63FCC();
}

uint64_t OUTLINED_FUNCTION_393_0()
{

  return sub_1C8D63FCC();
}

uint64_t ToolDatabase.Environment.debugDescription.getter()
{
  if (*v0)
  {
    return 7170419;
  }

  else
  {
    return 1685025392;
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ToolDatabase.insertPrimitiveTypes()()
{
  v1 = ToolDatabase.environment.getter(__dst);
  if (__dst[0] == 1)
  {
    if (qword_1EC3120B8 != -1)
    {
      goto LABEL_12;
    }

    while (1)
    {
      memcpy(__dst, &qword_1EC31DB48, 0x61uLL);
      memcpy(v9, &qword_1EC31DB48, 0x61uLL);
      ToolDatabase.insert(container:)(v9);
      if (v0)
      {
        break;
      }

      v4 = static TypeIdentifier.PrimitiveTypeIdentifier.allCases.getter();
      v5 = 0;
      v6 = v4[2];
      while (1)
      {
        if (v6 == v5)
        {

          return;
        }

        if (v5 >= v4[2])
        {
          break;
        }

        v9[0] = *(v4 + v5 + 32);
        v9[96] = 0;
        memcpy(v8, __dst, 0x61uLL);
        ToolDatabase.insert(type:sourceContainer:)(v9, v8);
        ++v5;
      }

      __break(1u);
LABEL_12:
      OUTLINED_FUNCTION_4_57();
      swift_once();
    }
  }

  else
  {
    sub_1C8D5D868(v1, v2, v3);
    swift_allocError();
    *v7 = 0;
    *(v7 + 56) = 0;
    *(v7 + 96) = 0;
    swift_willThrow();
  }
}

uint64_t ToolDatabase.environment.getter@<X0>(char *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313058, &qword_1C9071D80);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v10 - v4;
  sub_1C8CBA654(v1 + OBJC_IVAR____TtC7ToolKit12ToolDatabase_file, &v10 - v4);
  v6 = type metadata accessor for ToolDatabase.DatabaseFile(0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    result = sub_1C900E730(v5);
    v8 = 0;
  }

  else
  {
    v8 = v5[*(v6 + 20)];
    OUTLINED_FUNCTION_5_53();
    result = sub_1C8CBA8BC(v5, v9);
  }

  *a1 = v8;
  return result;
}

double sub_1C900D534()
{
  qword_1EC31DB48 = 0x776F6C666B726F57;
  unk_1EC31DB50 = 0xEB0000000074694BLL;
  qword_1EC31DB68 = 0x80000001C90CA220;
  unk_1EC31DB70 = 0xD000000000000011;
  qword_1EC31DB78 = 0x80000001C90D0760;
  byte_1EC31DB80 = 4;
  result = 0.0;
  xmmword_1EC31DB88 = 0u;
  unk_1EC31DB98 = 0u;
  byte_1EC31DBA8 = 1;
  qword_1EC31DB58 = MEMORY[0x1E69E7CC0];
  unk_1EC31DB60 = 0xD000000000000015;
  return result;
}

uint64_t static ToolDatabase.workflowKitContainer.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC3120B8 != -1)
  {
    OUTLINED_FUNCTION_4_57();
    swift_once();
  }

  memcpy(__dst, &qword_1EC31DB48, 0x61uLL);
  memcpy(a1, &qword_1EC31DB48, 0x61uLL);
  return sub_1C8CC1340(__dst, &v3);
}

void static ToolDatabase.Environment.current.getter(_BYTE *a1@<X8>)
{
  v36 = a1;
  v37[4] = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313058, &qword_1C9071D80);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v35 - v2;
  v4 = type metadata accessor for ToolDatabase.DatabaseFile(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  v35 = v7 - v6;
  v8 = sub_1C9061EBC();
  OUTLINED_FUNCTION_11();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15();
  v14 = v13 - v12;
  v15 = type metadata accessor for ToolDatabase.Pager(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_15();
  v19 = v18 - v17;
  if (qword_1EDA6D908 != -1)
  {
    OUTLINED_FUNCTION_3_58();
    swift_once();
  }

  v20 = __swift_project_value_buffer(v8, qword_1EDA6D910);
  swift_beginAccess();
  v21 = *(v10 + 16);
  v21(v14, v20, v8);
  if ((sub_1C9061D8C() & 1) == 0)
  {
    __break(1u);
  }

  v21(v19, v14, v8);
  *(v19 + *(v15 + 20)) = 63;
  *(v19 + *(v15 + 24)) = 1;
  v22 = [objc_opt_self() defaultManager];
  v23 = sub_1C9061DDC();
  v37[0] = 0;
  v24 = [v22 createDirectoryAtURL:v23 withIntermediateDirectories:1 attributes:0 error:v37];

  if (v24)
  {
    v25 = *(v10 + 8);
    v26 = v37[0];
    v25(v14, v8);
    sub_1C8CBAA48();
    OUTLINED_FUNCTION_0_81();
    sub_1C8CBA8BC(v19, v30);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, 1, v4);
    if (EnumTagSinglePayload != 1)
    {
      v33 = v35;
      sub_1C900E798(v3, v35);
      v32 = *(v33 + *(v4 + 20));
      OUTLINED_FUNCTION_5_53();
      sub_1C8CBA8BC(v33, v34);
      goto LABEL_10;
    }

    sub_1C900E730(v3);
  }

  else
  {
    v27 = v37[0];
    v28 = sub_1C9061D7C();

    swift_willThrow();
    (*(v10 + 8))(v14, v8);
    OUTLINED_FUNCTION_0_81();
    sub_1C8CBA8BC(v19, v29);
  }

  v32 = 0;
LABEL_10:
  *v36 = v32;
}

uint64_t static ToolDatabase.Environment.activate(environment:)(char *a1)
{
  v25[4] = *MEMORY[0x1E69E9840];
  v2 = sub_1C9061EBC();
  OUTLINED_FUNCTION_11();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  v8 = v7 - v6;
  v9 = type metadata accessor for ToolDatabase.Pager(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  v13 = v12 - v11;
  v14 = *a1;
  if (qword_1EDA6D908 != -1)
  {
    OUTLINED_FUNCTION_3_58();
    swift_once();
  }

  v15 = __swift_project_value_buffer(v2, qword_1EDA6D910);
  swift_beginAccess();
  v16 = *(v4 + 16);
  v16(v8, v15, v2);
  if ((sub_1C9061D8C() & 1) == 0)
  {
    __break(1u);
  }

  v16(v13, v8, v2);
  *(v13 + *(v9 + 20)) = 63;
  *(v13 + *(v9 + 24)) = 1;
  v17 = [objc_opt_self() defaultManager];
  v18 = sub_1C9061DDC();
  v25[0] = 0;
  v19 = [v17 createDirectoryAtURL:v18 withIntermediateDirectories:1 attributes:0 error:v25];

  if (v19)
  {
    v20 = *(v4 + 8);
    v21 = v25[0];
    v20(v8, v2);
    LOBYTE(v25[0]) = v14;
    ToolDatabase.Pager.switchActiveEnvironment(to:)(v25);
  }

  else
  {
    v22 = v25[0];
    sub_1C9061D7C();

    swift_willThrow();
    (*(v4 + 8))(v8, v2);
  }

  OUTLINED_FUNCTION_0_81();
  return sub_1C8CBA8BC(v13, v23);
}

uint64_t sub_1C900DC8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69746375646F7270 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974616C756D6973 && a2 == 0xEA00000000006E6FLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C900DD64(char a1)
{
  if (a1)
  {
    return 0x6974616C756D6973;
  }

  else
  {
    return 0x69746375646F7270;
  }
}

uint64_t sub_1C900DDA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C900DC8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C900DDC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C900E7FC(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C900DE04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C900E7FC(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C900DE40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C900E8A4(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C900DE7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C900E8A4(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C900DEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C900E850(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C900DEF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C900E850(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t ToolDatabase.Environment.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DBB0, &qword_1C90BBF28);
  OUTLINED_FUNCTION_11();
  v31 = v4;
  v32 = v3;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v28 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DBB8, &qword_1C90BBF30);
  OUTLINED_FUNCTION_11();
  v28 = v8;
  v29 = v7;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DBC0, &qword_1C90BBF38);
  OUTLINED_FUNCTION_11();
  v14 = v13;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - v16;
  v18 = *v1;
  v19 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C900E7FC(v19, v20, v21);
  v22 = sub_1C9064E1C();
  v25 = (v14 + 8);
  if (v18)
  {
    v34 = 1;
    sub_1C900E850(v22, v23, v24);
    v26 = v30;
    sub_1C9064ACC();
    (*(v31 + 8))(v26, v32);
  }

  else
  {
    v33 = 0;
    sub_1C900E8A4(v22, v23, v24);
    sub_1C9064ACC();
    (*(v28 + 8))(v11, v29);
  }

  return (*v25)(v17, v12);
}

uint64_t ToolDatabase.Environment.hashValue.getter()
{
  v1 = *v0;
  sub_1C9064D7C();
  MEMORY[0x1CCA82810](v1);
  return sub_1C9064DBC();
}

uint64_t ToolDatabase.Environment.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v48 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DBE0, &qword_1C90BBF40);
  OUTLINED_FUNCTION_11();
  v47 = v3;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v43 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DBE8, &qword_1C90BBF48);
  OUTLINED_FUNCTION_11();
  v46 = v8;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DBF0, &unk_1C90BBF50);
  OUTLINED_FUNCTION_11();
  v49 = v13;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v43 - v15;
  v17 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C900E7FC(v17, v18, v19);
  v20 = v51;
  sub_1C9064DEC();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v44 = v7;
  v45 = v11;
  v51 = a1;
  v21 = v50;
  v22 = sub_1C9064A9C();
  result = sub_1C8CB8914(v22, 0);
  if (v25 == v26 >> 1)
  {
    v50 = result;
LABEL_9:
    v39 = sub_1C90647DC();
    swift_allocError();
    v41 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0);
    *v41 = &type metadata for ToolDatabase.Environment;
    sub_1C906499C();
    sub_1C90647CC();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x1E69E6AF8], v39);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v49 + 8))(v16, v12);
    a1 = v51;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v43[1] = 0;
  if (v25 >= (v26 >> 1))
  {
    __break(1u);
  }

  else
  {
    v27 = *(v24 + v25);
    v28 = sub_1C8CB891C(v25 + 1, v26 >> 1, result, v24, v25, v26);
    v30 = v29;
    v32 = v31;
    v33 = swift_unknownObjectRelease();
    if (v30 != v32 >> 1)
    {
      v50 = v28;
      goto LABEL_9;
    }

    v52 = v27;
    if (v27)
    {
      v54 = 1;
      sub_1C900E850(v33, v34, v35);
      v36 = v6;
      OUTLINED_FUNCTION_191_0(&_s11EnvironmentO20SimulationCodingKeysON, &v54);
      v37 = v48;
      v38 = v49;
      swift_unknownObjectRelease();
      (*(v47 + 8))(v36, v21);
    }

    else
    {
      v53 = 0;
      sub_1C900E8A4(v33, v34, v35);
      v42 = v45;
      OUTLINED_FUNCTION_191_0(&_s11EnvironmentO20ProductionCodingKeysON, &v53);
      v37 = v48;
      v38 = v49;
      swift_unknownObjectRelease();
      (*(v46 + 8))(v42, v44);
    }

    (*(v38 + 8))(v16, v30);
    *v37 = v52;
    return __swift_destroy_boxed_opaque_existential_1(v51);
  }

  return result;
}

void sub_1C900E704()
{
  sub_1C903A7D8();
  if (!v0)
  {
    sub_1C8E5DF24(v1);
  }
}

uint64_t sub_1C900E730(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313058, &qword_1C9071D80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C900E798(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolDatabase.DatabaseFile(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C900E7FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31DBC8;
  if (!qword_1EC31DBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31DBC8);
  }

  return result;
}

unint64_t sub_1C900E850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31DBD0;
  if (!qword_1EC31DBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31DBD0);
  }

  return result;
}

unint64_t sub_1C900E8A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31DBD8;
  if (!qword_1EC31DBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31DBD8);
  }

  return result;
}

unint64_t sub_1C900E900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31DBF8;
  if (!qword_1EC31DBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31DBF8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7ToolKit0A8DatabaseC5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 96) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1C900E980(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 97))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56) >> 3;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1C900E9C8(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 88) = 0;
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 96) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 97) = 1;
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

LABEL_8:
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = 0;
      *(a1 + 56) = 8 * -a2;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0;
      return result;
    }

    *(a1 + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C900EA4C(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    v2 = *(result + 96) & 3 | (a2 << 6);
    *(result + 56) &= 7uLL;
    *(result + 96) = v2;
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0;
    *(result + 96) = -64;
  }

  return result;
}

_BYTE *sub_1C900EAB0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C900EBB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31DC00;
  if (!qword_1EC31DC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31DC00);
  }

  return result;
}

unint64_t sub_1C900EC08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31DC08;
  if (!qword_1EC31DC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31DC08);
  }

  return result;
}

unint64_t sub_1C900EC60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31DC10;
  if (!qword_1EC31DC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31DC10);
  }

  return result;
}

unint64_t sub_1C900ECB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31DC18;
  if (!qword_1EC31DC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31DC18);
  }

  return result;
}

unint64_t sub_1C900ED10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31DC20;
  if (!qword_1EC31DC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31DC20);
  }

  return result;
}

unint64_t sub_1C900ED68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31DC28;
  if (!qword_1EC31DC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31DC28);
  }

  return result;
}

unint64_t sub_1C900EDC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31DC30;
  if (!qword_1EC31DC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31DC30);
  }

  return result;
}

uint64_t sub_1C900EE28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64496C6F6F74 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C900EEF4(char a1)
{
  if (a1)
  {
    return 0x64496C6F6F74;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1C900EF2C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DC70, &qword_1C90BC6A0);
  OUTLINED_FUNCTION_11();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v16 - v10;
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C900F8A4(v12, v13, v14);
  sub_1C9064E1C();
  v18 = 0;
  sub_1C9064B2C();
  if (!v4)
  {
    v17 = 1;
    sub_1C9064B9C();
  }

  return (*(v8 + 8))(v11, v6);
}

uint64_t sub_1C900F098(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DC68, &qword_1C90BC698);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C900F8A4(v5, v6, v7);
  sub_1C9064DEC();
  if (!v1)
  {
    v4 = sub_1C9064A0C();
    sub_1C9064A7C();
    v9 = OUTLINED_FUNCTION_0_5();
    v10(v9);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t sub_1C900F254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C900EE28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C900F27C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C900F8A4(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C900F2B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C900F8A4(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C900F2F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C900F098(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1C900F344@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1C900F370(a2);
  *a1 = result;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t sub_1C900F370(uint64_t a1)
{
  if (qword_1EDA62F90 != -1)
  {
    OUTLINED_FUNCTION_1_77(&qword_1EDA62F90);
  }

  v1 = sub_1C9062E6C();
  __swift_project_value_buffer(v1, qword_1EDA6E808);
  sub_1C9062E5C();
  sub_1C8E2B294();
  v3 = v2;

  if (qword_1EDA62F88 != -1)
  {
    OUTLINED_FUNCTION_0_82(&qword_1EDA62F88);
  }

  __swift_project_value_buffer(v1, qword_1EDA6E7F0);
  sub_1C9062E5C();
  sub_1C8E2B4F8();

  return v3;
}

uint64_t sub_1C900F49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C900F7A4(a1, a2, a3);

  return sub_1C9062B4C();
}

uint64_t sub_1C900F59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EDA62F90 != -1)
  {
    OUTLINED_FUNCTION_1_77(&qword_1EDA62F90);
  }

  v4 = sub_1C9062E6C();
  __swift_project_value_buffer(v4, qword_1EDA6E808);
  sub_1C9062E5C();

  sub_1C9062BFC();
  if (qword_1EDA62F88 != -1)
  {
    OUTLINED_FUNCTION_0_82(&qword_1EDA62F88);
  }

  __swift_project_value_buffer(v4, qword_1EDA6E7F0);
  sub_1C9062E5C();
  return sub_1C9062BFC();
}

uint64_t sub_1C900F6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = qword_1EC31DC38;

  return v5;
}

unint64_t sub_1C900F70C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31DC48;
  if (!qword_1EC31DC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31DC48);
  }

  return result;
}

unint64_t sub_1C900F764(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EFF63C(a1, a2, a3);
  a1[1] = v4;
  v7 = sub_1C900F7A4(v4, v5, v6);
  a1[2] = v7;
  v10 = sub_1C8EFF5E8(v7, v8, v9);
  a1[3] = v10;
  result = sub_1C900F7F8(v10, v11, v12);
  a1[4] = result;
  return result;
}

unint64_t sub_1C900F7A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31DC50;
  if (!qword_1EC31DC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31DC50);
  }

  return result;
}

unint64_t sub_1C900F7F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31DC58;
  if (!qword_1EC31DC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31DC58);
  }

  return result;
}

unint64_t sub_1C900F850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31DC60;
  if (!qword_1EC31DC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31DC60);
  }

  return result;
}

unint64_t sub_1C900F8A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62FA8;
  if (!qword_1EDA62FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62FA8);
  }

  return result;
}

uint64_t sub_1C900F918(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = sub_1C9062E6C();
  __swift_allocate_value_buffer(v4, a2);
  v5 = __swift_project_value_buffer(v4, a2);
  sub_1C900F8A4(v5, v6, v7);
  return sub_1C9062E8C();
}

_BYTE *storeEnumTagSinglePayload for LinkActionIdentifierRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C900FA74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31DC78;
  if (!qword_1EC31DC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31DC78);
  }

  return result;
}

unint64_t sub_1C900FACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62F98;
  if (!qword_1EDA62F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62F98);
  }

  return result;
}

unint64_t sub_1C900FB24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62FA0;
  if (!qword_1EDA62FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62FA0);
  }

  return result;
}

uint64_t TypeIdentifier.debugDescription.getter()
{
  v1 = *v0;
  switch(*v0 >> 61)
  {
    case 1uLL:
      v34 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A40, &unk_1C9068E20);
      v36 = OUTLINED_FUNCTION_92_8(v35);
      *(v36 + 16) = xmmword_1C906BAE0;
      *(v36 + 32) = 0x6E69746C697542;
      *(v36 + 40) = 0xE700000000000000;
      sub_1C8D3F120(v34);
      *(v36 + 48) = TypeIdentifier.BuiltInTypeIdentifier.debugDescription.getter();
      *(v36 + 56) = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
      OUTLINED_FUNCTION_0_0();
      sub_1C8D28184(v38, &qword_1EC312558, &qword_1C9066990, v39);
      OUTLINED_FUNCTION_34_18();
      v21 = sub_1C9063E9C();
      sub_1C8D3F130(v34);
      goto LABEL_14;
    case 2uLL:
      v10 = (v1 & 0x1FFFFFFFFFFFFFFFLL);
      v12 = v10[2];
      v11 = v10[3];
      v14 = v10[4];
      v13 = v10[5];
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A40, &unk_1C9068E20);
      v16 = OUTLINED_FUNCTION_92_8(v15);
      *(v16 + 16) = xmmword_1C906BAE0;
      *(v16 + 32) = v12;
      *(v16 + 40) = v11;
      *(v16 + 48) = v14;
      *(v16 + 56) = v13;

      goto LABEL_5;
    case 3uLL:
      v22 = (v1 & 0x1FFFFFFFFFFFFFFFLL);
      v24 = v22[5];
      v23 = v22[6];
      v26 = v22[12];
      v25 = v22[13];
      v28 = v22[28];
      v27 = v22[29];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A40, &unk_1C9068E20);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1C909C3B0;
      *(v29 + 32) = 0x7475626972747441;
      *(v29 + 40) = 0xEA00000000006465;
      *(v29 + 48) = v24;
      *(v29 + 56) = v23;
      if (v25)
      {
        v30 = v26;
      }

      else
      {
        v30 = 0;
      }

      v31 = 0xE000000000000000;
      if (v25)
      {
        v31 = v25;
      }

      *(v29 + 64) = v30;
      *(v29 + 72) = v31;
      *(v29 + 80) = v28;
      *(v29 + 88) = v27;

      goto LABEL_12;
    case 4uLL:
      v5 = v1 & 0x1FFFFFFFFFFFFFFFLL;
      v7 = *(v5 + 16);
      v6 = *(v5 + 24);
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A40, &unk_1C9068E20);
      v9 = OUTLINED_FUNCTION_92_8(v8);
      *(v9 + 16) = xmmword_1C906BAE0;
      *(v9 + 32) = 0x656C6261646F43;
      *(v9 + 40) = 0xE700000000000000;
      *(v9 + 48) = v7;
      *(v9 + 56) = v6;
LABEL_5:

      v17 = OUTLINED_FUNCTION_94();
      __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
      OUTLINED_FUNCTION_0_0();
      sub_1C8D28184(v19, &qword_1EC312558, &qword_1C9066990, v20);
      OUTLINED_FUNCTION_34_18();
      v21 = sub_1C9063E9C();
      goto LABEL_14;
    default:
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A40, &unk_1C9068E20);
      v3 = OUTLINED_FUNCTION_92_8(v2);
      *(v3 + 16) = xmmword_1C906BAE0;
      *(v3 + 32) = 0x766974696D697250;
      *(v3 + 40) = 0xE900000000000065;
      *(v3 + 48) = TypeIdentifier.PrimitiveTypeIdentifier.debugDescription.getter();
      *(v3 + 56) = v4;
LABEL_12:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
      OUTLINED_FUNCTION_0_0();
      sub_1C8D28184(v32, &qword_1EC312558, &qword_1C9066990, v33);
      OUTLINED_FUNCTION_34_18();
      v21 = sub_1C9063E9C();
LABEL_14:

      return v21;
  }
}

unint64_t TypeIdentifier.MeasurementUnitType.debugDescription.getter(char a1)
{
  result = 0x6874676E654CLL;
  switch(a1)
  {
    case 1:
      result = 1936941389;
      break;
    case 2:
      result = 0x74617265706D6554;
      break;
    case 3:
      result = 0x656D756C6F56;
      break;
    case 4:
      result = 0x6465657053;
      break;
    case 5:
      result = 0x796772656E45;
      break;
    case 6:
      result = 0x6E6F697461727544;
      break;
    case 7:
      result = 0x6172656C65636341;
      break;
    case 8:
      result = 0x656C676E41;
      break;
    case 9:
      result = 1634038337;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0x6973726570736944;
      break;
    case 12:
      result = 0x6369727463656C45;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0xD00000000000001DLL;
      break;
    case 15:
      result = 0xD000000000000013;
      break;
    case 16:
      result = 0x636E657571657246;
      break;
    case 17:
      result = 0x666645206C657546;
      break;
    case 18:
      result = 0x616E696D756C6C49;
      break;
    case 19:
      result = 0xD000000000000013;
      break;
    case 20:
      result = 0x7265776F50;
      break;
    case 21:
      result = 0x6572757373657250;
      break;
    default:
      return result;
  }

  return result;
}

void *TypeIdentifier.AttributedTypeIdentifier.init(sourceContainer:attributionContainer:typeName:)@<X0>(void *__src@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  memcpy(a5, __src, 0x61uLL);
  result = memcpy(a5 + 13, a2, 0x61uLL);
  a5[26] = a3;
  a5[27] = a4;
  return result;
}

uint64_t TypeIdentifier.PrimitiveTypeIdentifier.debugDescription.getter()
{
  result = 1701736270;
  switch(*v0)
  {
    case 0x17:
      return result;
    case 0x18:
      result = 1819242306;
      break;
    case 0x19:
      result = 7630409;
      break;
    case 0x1A:
      result = 0x7265626D754ELL;
      break;
    case 0x1B:
      result = 0x6C616D69636544;
      break;
    case 0x1C:
      result = 0x676E69727453;
      break;
    case 0x1D:
      result = 1702125892;
      break;
    case 0x1E:
      result = 0x706D6F4365746144;
      break;
    case 0x1F:
      result = 5001813;
      break;
    case 0x20:
      result = 0x616E6F6974636944;
      break;
    case 0x21:
      result = 0xD000000000000010;
      break;
    case 0x22:
      result = OUTLINED_FUNCTION_89_2();
      break;
    case 0x23:
      result = 0x4D746E656D796150;
      break;
    case 0x24:
      result = 0x72616D6563616C50;
      break;
    case 0x25:
      result = OUTLINED_FUNCTION_79_10();
      break;
    case 0x26:
      result = 1701603654;
      break;
    case 0x27:
      result = 7368769;
      break;
    case 0x28:
      result = 0x6261686372616553;
      break;
    case 0x29:
      result = 0x6E65727275636552;
      break;
    case 0x2A:
      result = 0x4673746E65746E49;
      break;
    case 0x2B:
      result = 0x74756374726F6853;
      break;
    case 0x2C:
      result = 0x65746E4965746144;
      break;
    case 0x2D:
      result = 0x6E6F697461727544;
      break;
    case 0x2E:
      result = 0xD000000000000014;
      break;
    default:
      strcpy(v4, "Measurement<");
      v2 = TypeIdentifier.MeasurementUnitType.debugDescription.getter(78);
      MEMORY[0x1CCA81A90](v2, v3);

      MEMORY[0x1CCA81A90](62, 0xE100000000000000);
      result = v4[0];
      break;
  }

  return result;
}

void *static TypeIdentifier.PrimitiveTypeIdentifier.allCases.getter()
{
  v6 = MEMORY[0x1E69E7CC0];
  sub_1C8D0997C(0, 22, 0);
  v0 = 0;
  v1 = v6;
  v2 = *(v6 + 16);
  do
  {
    v3 = byte_1F489AA40[v0 + 32];
    v7 = v1;
    v4 = *(v1 + 24);
    if (v2 >= v4 >> 1)
    {
      sub_1C8D0997C((v4 > 1), v2 + 1, 1);
      v1 = v7;
    }

    ++v0;
    *(v1 + 16) = v2 + 1;
    *(v1 + v2++ + 32) = v3;
  }

  while (v0 != 22);
  sub_1C8D3784C(v1);
  return &unk_1F489AA78;
}

uint64_t TypeIdentifier.bundleIdentifier.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  switch(*v5 >> 61)
  {
    case 2:
    case 3:

      break;
    case 4:
      return OUTLINED_FUNCTION_94();
    default:
      sub_1C9063EEC();
      break;
  }

  return OUTLINED_FUNCTION_94();
}

uint64_t TypeIdentifier.AttributedTypeIdentifier.sourceContainer.getter()
{
  OUTLINED_FUNCTION_69_11();
  memcpy(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_94();
  memcpy(v3, v4, 0x61uLL);
  return sub_1C8CC1340(v7, &v6);
}

uint64_t TypeIdentifier.AttributedTypeIdentifier.attributionContainer.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 104), 0x61uLL);
  memcpy(a1, (v1 + 104), 0x61uLL);
  return sub_1C9018F50(__dst, &v4);
}

uint64_t static TypeIdentifier.AttributedTypeIdentifier.== infix(_:_:)(char *__src, void *a2)
{
  memcpy(__dst, __src, 0x61uLL);
  memcpy(v34, __src + 104, 0x61uLL);
  v4 = *(__src + 26);
  v5 = *(__src + 27);
  memcpy(v35, a2, 0x61uLL);
  memcpy(v36, a2 + 13, 0x61uLL);
  v6 = a2[26];
  v7 = a2[27];
  memcpy(v28, __src, 0x61uLL);
  memcpy(__srca, a2, 0x61uLL);
  sub_1C8CC1340(__dst, v38);
  sub_1C8CC1340(v35, v38);
  LOBYTE(a2) = static ContainerDefinition.== infix(_:_:)(v28);
  memcpy(v37, __srca, 0x61uLL);
  sub_1C8CC15FC(v37);
  memcpy(v38, v28, 0x61uLL);
  sub_1C8CC15FC(v38);
  if ((a2 & 1) == 0)
  {
    goto LABEL_10;
  }

  v8 = v34[0];
  v9 = v34[1];
  memcpy(v31, &v34[2], sizeof(v31));
  v10 = v36[0];
  v11 = v36[1];
  v12 = memcpy(v30, &v36[2], sizeof(v30));
  if (v34[1])
  {
    OUTLINED_FUNCTION_91_7(v12, v13, v14, v15, v16, v17, v18, v19, v24, v25[0], v25[1], v25[2], v25[3], v25[4], v25[5], v25[6], v25[7], v25[8], v25[9], v25[10], v25[11], v25[12], v26[0], v26[1], v26[2], v26[3], v26[4], v26[5], v26[6], v26[7], v26[8], v26[9], v26[10], v26[11], v26[12], *v27, *&v27[8], *&v27[16], *&v27[24], *&v27[32], *&v27[40], *&v27[48], *&v27[56], *&v27[64], *&v27[72], *&v27[80], *&v27[88], *&v27[96], v34[0], v34[1], v28[2]);
    memcpy(__srca, v28, 0x61uLL);
    if (v11)
    {
      memcpy(&v27[16], &v36[2], 0x51uLL);
      *v27 = v10;
      *&v27[8] = v11;
      sub_1C9018F50(v34, v26);
      sub_1C9018F50(v36, v26);
      sub_1C9018F50(v28, v26);
      v20 = static ContainerDefinition.== infix(_:_:)(__srca);
      memcpy(v25, v27, 0x61uLL);
      sub_1C8CC15FC(v25);
      memcpy(v26, __srca, 0x61uLL);
      sub_1C8CC15FC(v26);
      *v27 = v8;
      *&v27[8] = v9;
      memcpy(&v27[16], v31, 0x51uLL);
      sub_1C8D14208(v27, &qword_1EC312EF8, &unk_1C90839D0);
      if (v20)
      {
        goto LABEL_13;
      }

LABEL_10:
      v21 = 0;
      return v21 & 1;
    }

    memcpy(v27, v28, 0x61uLL);
    sub_1C9018F50(v34, v26);
    sub_1C9018F50(v36, v26);
    sub_1C9018F50(v28, v26);
    sub_1C8CC15FC(v27);
LABEL_9:
    v28[0] = v8;
    v28[1] = v9;
    memcpy(&v28[2], v31, 0x51uLL);
    v28[13] = v10;
    v28[14] = v11;
    memcpy(v29, v30, sizeof(v29));
    sub_1C8D14208(v28, &qword_1EC313988, &qword_1C906F410);
    goto LABEL_10;
  }

  if (v36[1])
  {
    sub_1C9018F50(v34, v28);
    sub_1C9018F50(v36, v28);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_91_7(v12, v13, v14, v15, v16, v17, v18, v19, v24, v25[0], v25[1], v25[2], v25[3], v25[4], v25[5], v25[6], v25[7], v25[8], v25[9], v25[10], v25[11], v25[12], v26[0], v26[1], v26[2], v26[3], v26[4], v26[5], v26[6], v26[7], v26[8], v26[9], v26[10], v26[11], v26[12], *v27, *&v27[8], *&v27[16], *&v27[24], *&v27[32], *&v27[40], *&v27[48], *&v27[56], *&v27[64], *&v27[72], *&v27[80], *&v27[88], *&v27[96], v34[0], 0, v28[2]);
  sub_1C9018F50(v34, __srca);
  sub_1C9018F50(v36, __srca);
  sub_1C8D14208(v28, &qword_1EC312EF8, &unk_1C90839D0);
LABEL_13:
  if (v4 == v6 && v5 == v7)
  {
    v21 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_94();
    v21 = sub_1C9064C2C();
  }

  return v21 & 1;
}

uint64_t sub_1C90109D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F43656372756F73 && a2 == 0xEF72656E6961746ELL;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x80000001C90CA2A0 == a2;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656D614E65707974 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9064C2C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C9010AF4(char a1)
{
  if (!a1)
  {
    return 0x6F43656372756F73;
  }

  if (a1 == 1)
  {
    return 0xD000000000000014;
  }

  return 0x656D614E65707974;
}

uint64_t sub_1C9010B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C90109D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9010B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9018FC0(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9010BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9018FC0(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void TypeIdentifier.AttributedTypeIdentifier.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_196();
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DC80, &qword_1C90BC7C0);
  OUTLINED_FUNCTION_11();
  v30 = v29;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v31);
  v33 = v44 - v32;
  OUTLINED_FUNCTION_69_11();
  memcpy(v34, v35, v36);
  memcpy(v50, v24 + 13, 0x61uLL);
  v37 = v24[26];
  v44[1] = v24[27];
  v44[2] = v37;
  OUTLINED_FUNCTION_217(v27, v27[3]);
  v38 = sub_1C8CC1340(v49, v48);
  sub_1C9018FC0(v38, v39, v40);
  sub_1C9064E1C();
  v41 = memcpy(v48, v49, 0x61uLL);
  sub_1C8E95790(v41, v42, v43);
  OUTLINED_FUNCTION_85_6();
  sub_1C9064B8C();
  memcpy(v47, v48, 0x61uLL);
  sub_1C8CC15FC(v47);
  if (!v25)
  {
    memcpy(v46, v50, sizeof(v46));
    sub_1C9018F50(v50, v45);
    OUTLINED_FUNCTION_85_6();
    sub_1C9064B0C();
    memcpy(v45, v46, 0x61uLL);
    sub_1C8D14208(v45, &qword_1EC312EF8, &unk_1C90839D0);
    sub_1C9064B2C();
  }

  (*(v30 + 8))(v33, v28);
  OUTLINED_FUNCTION_250_0();
  OUTLINED_FUNCTION_198();
}

uint64_t TypeIdentifier.AttributedTypeIdentifier.hash(into:)(uint64_t a1)
{
  OUTLINED_FUNCTION_69_11();
  memcpy(v3, v4, v5);
  v6 = v1[13];
  v7 = v1[14];
  ContainerDefinition.hash(into:)(a1);
  if (v7)
  {
    memcpy(&__src[2], v1 + 15, 0x51uLL);
    __src[0] = v6;
    __src[1] = v7;
    sub_1C9064D9C();
    v10[0] = v6;
    v10[1] = v7;
    memcpy(v11, v1 + 15, sizeof(v11));
    sub_1C8CC1340(v10, __dst);
    ContainerDefinition.hash(into:)(a1);
    memcpy(__dst, __src, 0x61uLL);
    sub_1C8CC15FC(__dst);
  }

  else
  {
    sub_1C9064D9C();
  }

  OUTLINED_FUNCTION_37_21();
  return sub_1C9063FBC();
}

uint64_t TypeIdentifier.AttributedTypeIdentifier.hashValue.getter()
{
  OUTLINED_FUNCTION_69_11();
  memcpy(v1, v2, v3);
  v4 = v0[13];
  v5 = v0[14];
  sub_1C9064D7C();
  ContainerDefinition.hash(into:)(v10);
  if (v5)
  {
    __src[0] = v4;
    __src[1] = v5;
    memcpy(&__src[2], v0 + 15, 0x51uLL);
    memcpy(v7, __src, sizeof(v7));
    sub_1C9064D9C();
    sub_1C8CC1340(__src, __dst);
    ContainerDefinition.hash(into:)(v10);
    memcpy(__dst, v7, 0x61uLL);
    sub_1C8CC15FC(__dst);
  }

  else
  {
    sub_1C9064D9C();
  }

  sub_1C9063FBC();
  return sub_1C9064DBC();
}

void TypeIdentifier.AttributedTypeIdentifier.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_196();
  v27 = v26;
  v29 = v28;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DC90, &qword_1C90BC7C8);
  OUTLINED_FUNCTION_11();
  v31 = v30;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_233();
  v33 = OUTLINED_FUNCTION_217(v27, v27[3]);
  sub_1C9018FC0(v33, v34, v35);
  v36 = sub_1C9064DEC();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    sub_1C8E95D4C(v36, v37, v38);
    OUTLINED_FUNCTION_86_8();
    sub_1C9064A6C();
    memcpy(v50, v49, 0x61uLL);
    OUTLINED_FUNCTION_86_8();
    sub_1C90649EC();
    memcpy(&v50[104], v48, 0x61uLL);
    v39 = sub_1C9064A0C();
    v40 = v25;
    v42 = v41;
    (*(v31 + 8))(v40, v43);
    memcpy(v44, v50, 0xD0uLL);
    v44[26] = v39;
    v44[27] = v42;
    memcpy(v29, v44, 0xE0uLL);
    sub_1C8D3EFB8(v44, v45);
    __swift_destroy_boxed_opaque_existential_1(v27);
    memcpy(v45, v50, sizeof(v45));
    v46 = v39;
    v47 = v42;
    sub_1C8D3F014(v45);
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C901133C(uint64_t a1)
{
  sub_1C9064D7C();
  TypeIdentifier.AttributedTypeIdentifier.hash(into:)(v2);
  return sub_1C9064DBC();
}

uint64_t static TypeIdentifier.BuiltInTypeIdentifier.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(*a1)
  {
    case 0uLL:
      if (v3)
      {
        goto LABEL_36;
      }

      sub_1C8D3F130(0);
      v4 = 0;
      goto LABEL_34;
    case 1uLL:
      if (v3 != 1)
      {
        goto LABEL_36;
      }

      v5 = 1;
      sub_1C8D3F130(1uLL);
      v6 = 1;
      goto LABEL_39;
    case 2uLL:
      if (v3 != 2)
      {
        goto LABEL_36;
      }

      sub_1C8D3F130(2uLL);
      v4 = 2;
      goto LABEL_34;
    case 3uLL:
      if (v3 != 3)
      {
        goto LABEL_36;
      }

      sub_1C8D3F130(3uLL);
      v4 = 3;
      goto LABEL_34;
    case 4uLL:
      if (v3 != 4)
      {
        goto LABEL_36;
      }

      sub_1C8D3F130(4uLL);
      v4 = 4;
      goto LABEL_34;
    case 5uLL:
      if (v3 != 5)
      {
        goto LABEL_36;
      }

      sub_1C8D3F130(5uLL);
      v4 = 5;
      goto LABEL_34;
    case 6uLL:
      if (v3 != 6)
      {
        goto LABEL_36;
      }

      sub_1C8D3F130(6uLL);
      v4 = 6;
      goto LABEL_34;
    case 7uLL:
      if (v3 != 7)
      {
        goto LABEL_36;
      }

      sub_1C8D3F130(7uLL);
      v4 = 7;
      goto LABEL_34;
    case 8uLL:
      if (v3 != 8)
      {
        goto LABEL_36;
      }

      sub_1C8D3F130(8uLL);
      v4 = 8;
      goto LABEL_34;
    case 9uLL:
      if (v3 != 9)
      {
        goto LABEL_36;
      }

      sub_1C8D3F130(9uLL);
      v4 = 9;
      goto LABEL_34;
    case 0xAuLL:
      if (v3 != 10)
      {
        goto LABEL_36;
      }

      sub_1C8D3F130(0xAuLL);
      v4 = 10;
      goto LABEL_34;
    case 0xBuLL:
      if (v3 != 11)
      {
        goto LABEL_36;
      }

      sub_1C8D3F130(0xBuLL);
      v4 = 11;
      goto LABEL_34;
    case 0xCuLL:
      if (v3 != 12)
      {
        goto LABEL_36;
      }

      sub_1C8D3F130(0xCuLL);
      v4 = 12;
      goto LABEL_34;
    case 0xDuLL:
      if (v3 != 13)
      {
        goto LABEL_36;
      }

      sub_1C8D3F130(0xDuLL);
      v4 = 13;
      goto LABEL_34;
    case 0xEuLL:
      if (v3 != 14)
      {
        goto LABEL_36;
      }

      sub_1C8D3F130(0xEuLL);
      v4 = 14;
      goto LABEL_34;
    case 0xFuLL:
      if (v3 != 15)
      {
        goto LABEL_36;
      }

      sub_1C8D3F130(0xFuLL);
      v4 = 15;
LABEL_34:
      sub_1C8D3F130(v4);
      v5 = 1;
      break;
    default:
      if (v3 >= 0x10)
      {
        v8 = *(v2 + 16);
        v9 = *(v3 + 16);
        v10 = v8;
        sub_1C8D3F120(v3);
        sub_1C8D3F120(v2);
        v5 = static TypeIdentifier.== infix(_:_:)(&v10, &v9);
        sub_1C8D3F130(v2);
        v6 = v3;
LABEL_39:
        sub_1C8D3F130(v6);
      }

      else
      {
LABEL_36:
        sub_1C8D3F120(*a2);
        sub_1C8D3F120(v2);
        sub_1C8D3F130(v2);
        sub_1C8D3F130(v3);
        v5 = 0;
      }

      break;
  }

  return v5 & 1;
}

uint64_t sub_1C90115D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C90C96C0 == a2;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E65707974 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C90116A0(char a1)
{
  if (a1)
  {
    return 0x656D614E65707974;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1C90116DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019068(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9011718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019068(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9011754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019164(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9011790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019164(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C90117CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019014(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9011808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019014(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9011844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8CA2A24(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9011880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8CA2A24(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C90118C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C90115D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C90118EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019110(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9011928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019110(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9011964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8CA0D3C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C90119A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8CA0D3C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C90119F4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7368801 && a2 == 0xE300000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D754E646E756F62 && a2 == 0xEB00000000726562;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7261646E656C6163 && a2 == 0xE800000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x726F6C6F63 && a2 == 0xE500000000000000;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x79636E6572727563 && a2 == 0xE800000000000000;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1701603686 && a2 == 0xE400000000000000;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x61657241656D6F68 && a2 == 0xE800000000000000;
              if (v11 || (sub_1C9064C2C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x756F52616964656DLL && a2 == 0xEA00000000006574;
                if (v12 || (sub_1C9064C2C() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x4D746E656D796170 && a2 == 0xED0000646F687465;
                  if (v13 || (sub_1C9064C2C() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x74736163646F70 && a2 == 0xE700000000000000;
                    if (v14 || (sub_1C9064C2C() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6E6F73726570 && a2 == 0xE600000000000000;
                      if (v15 || (sub_1C9064C2C() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x72616D6563616C70 && a2 == 0xE90000000000006BLL;
                        if (v16 || (sub_1C9064C2C() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x7261687365646972 && a2 == 0xEF6E6F6974704F65;
                          if (v17 || (sub_1C9064C2C() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 7237750 && a2 == 0xE300000000000000;
                            if (v18 || (sub_1C9064C2C() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000;
                              if (v19 || (sub_1C9064C2C() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
                                if (v20 || (sub_1C9064C2C() & 1) != 0)
                                {

                                  return 15;
                                }

                                else if (a1 == 0x6D6572757361656DLL && a2 == 0xEB00000000746E65)
                                {

                                  return 16;
                                }

                                else
                                {
                                  v22 = sub_1C9064C2C();

                                  if (v22)
                                  {
                                    return 16;
                                  }

                                  else
                                  {
                                    return 17;
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

uint64_t sub_1C9011F18(char a1)
{
  result = 7368801;
  switch(a1)
  {
    case 1:
      return 0x6D754E646E756F62;
    case 2:
      v3 = 0x646E656C6163;
      goto LABEL_10;
    case 3:
      return 0x726F6C6F63;
    case 4:
      return 0x79636E6572727563;
    case 5:
      return 1701603686;
    case 6:
      return 0x61657241656D6F68;
    case 7:
      return 0x756F52616964656DLL;
    case 8:
      return 0x4D746E656D796170;
    case 9:
      return 0x74736163646F70;
    case 10:
      return 0x6E6F73726570;
    case 11:
      v3 = 0x6D6563616C70;
      goto LABEL_10;
    case 12:
      v3 = 0x687365646972;
LABEL_10:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7261000000000000;
      break;
    case 13:
      result = 7237750;
      break;
    case 14:
      result = 0x656E6F5A656D6974;
      break;
    case 15:
      result = 0x7972657571;
      break;
    case 16:
      result = 0x6D6572757361656DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C90120F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019848(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9012134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019848(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9012170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C90197F4(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C90121AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C90197F4(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C90121E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C90197A0(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9012224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C90197A0(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9012268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C90119F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9012290@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C9011F10();
  *a1 = result;
  return result;
}

uint64_t sub_1C90122B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C90192B4(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C90122F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C90192B4(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9012330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C901974C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C901236C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C901974C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C90123A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C90196F8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C90123E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C90196F8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9012420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C90196A4(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C901245C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C90196A4(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9012498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019650(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C90124D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019650(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9012510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019308(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C901254C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019308(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9012588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C90195FC(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C90125C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C90195FC(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9012600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C90195A8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C901263C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C90195A8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9012678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019500(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C90126B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019500(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C90126F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C90194AC(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C901272C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C90194AC(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9012768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019554(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C90127A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019554(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C90127E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C901935C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C901281C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C901935C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9012858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019458(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9012894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019458(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C90128D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C90193B0(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C901290C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C90193B0(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9012948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019404(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9012984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019404(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void TypeIdentifier.BuiltInTypeIdentifier.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v22;
  a20 = v23;
  v131 = v21;
  v24 = v20;
  v26 = v25;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DD18, &qword_1C90BC838);
  OUTLINED_FUNCTION_11();
  v126 = v27;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_87_8(v29);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DD20, &qword_1C90BC840);
  OUTLINED_FUNCTION_11();
  v125 = v30;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_17_35(v32, v121[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DD28, &qword_1C90BC848);
  OUTLINED_FUNCTION_11();
  v123[0] = v34;
  v123[1] = v33;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_19_32(v36, v121[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DD30, &qword_1C90BC850);
  OUTLINED_FUNCTION_11();
  v122[0] = v38;
  v122[1] = v37;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_16_32(v40, v121[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DD38, &qword_1C90BC858);
  OUTLINED_FUNCTION_11();
  v121[33] = v42;
  v121[34] = v41;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_18_33(v44, v121[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DD40, &qword_1C90BC860);
  OUTLINED_FUNCTION_11();
  v121[30] = v46;
  v121[31] = v45;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_13_34(v48, v121[0]);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DD48, &qword_1C90BC868);
  OUTLINED_FUNCTION_4_22(v49, &a17);
  v121[27] = v50;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_21_28(v52, v121[0]);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DD50, &qword_1C90BC870);
  OUTLINED_FUNCTION_4_22(v53, &a14);
  v121[24] = v54;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DD58, &qword_1C90BC878);
  OUTLINED_FUNCTION_4_22(v57, &a11);
  v121[21] = v58;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DD60, &qword_1C90BC880);
  OUTLINED_FUNCTION_4_22(v61, &v132);
  v121[18] = v62;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DD68, &qword_1C90BC888);
  OUTLINED_FUNCTION_4_22(v65, v130);
  v121[15] = v66;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v68);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DD70, &qword_1C90BC890);
  OUTLINED_FUNCTION_4_22(v69, &v127);
  v121[12] = v70;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v72);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DD78, &qword_1C90BC898);
  OUTLINED_FUNCTION_4_22(v73, &v124);
  v121[9] = v74;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v76);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DD80, &qword_1C90BC8A0);
  OUTLINED_FUNCTION_4_22(v77, v123);
  v121[6] = v78;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v80);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DD88, &qword_1C90BC8A8);
  OUTLINED_FUNCTION_4_22(v81, v122);
  v121[3] = v82;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v84);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DD90, &qword_1C90BC8B0);
  OUTLINED_FUNCTION_11();
  v121[1] = v86;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v87);
  v89 = v121 - v88;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DD98, &qword_1C90BC8B8);
  OUTLINED_FUNCTION_11();
  v121[0] = v90;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_233();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DDA0, &qword_1C90BC8C0);
  OUTLINED_FUNCTION_11();
  v130[0] = v92;
  v130[1] = v93;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v94);
  v96 = v121 - v95;
  v97 = *v24;
  v98 = OUTLINED_FUNCTION_217(v26, v26[3]);
  sub_1C90192B4(v98, v99, v100);
  v129 = v96;
  v101 = sub_1C9064E1C();
  switch(v97)
  {
    case 0:
      sub_1C9019848(v101, v102, v103);
      OUTLINED_FUNCTION_25_23(&type metadata for TypeIdentifier.BuiltInTypeIdentifier.AppCodingKeys);
      OUTLINED_FUNCTION_296();
      v104 = OUTLINED_FUNCTION_114();
      goto LABEL_20;
    case 1:
      sub_1C90197F4(v101, v102, v103);
      OUTLINED_FUNCTION_25_23(&type metadata for TypeIdentifier.BuiltInTypeIdentifier.BoundNumberCodingKeys);
      OUTLINED_FUNCTION_296();
      v104 = v89;
      v105 = v85;
      goto LABEL_20;
    case 2:
      sub_1C90197A0(v101, v102, v103);
      v108 = v130[0];
      OUTLINED_FUNCTION_41_4();
      sub_1C9064ACC();
      v109 = OUTLINED_FUNCTION_23();
      v110(v109, v121[4]);
      v111 = OUTLINED_FUNCTION_33_18();
      v113 = v108;
      goto LABEL_21;
    case 3:
      sub_1C901974C(v101, v102, v103);
      OUTLINED_FUNCTION_99(&type metadata for TypeIdentifier.BuiltInTypeIdentifier.ColorCodingKeys);
      v104 = OUTLINED_FUNCTION_6_26();
      v107 = v123;
      goto LABEL_19;
    case 4:
      sub_1C90196F8(v101, v102, v103);
      OUTLINED_FUNCTION_99(&type metadata for TypeIdentifier.BuiltInTypeIdentifier.CurrencyCodingKeys);
      v104 = OUTLINED_FUNCTION_6_26();
      v107 = &v124;
      goto LABEL_19;
    case 5:
      sub_1C90196A4(v101, v102, v103);
      OUTLINED_FUNCTION_99(&type metadata for TypeIdentifier.BuiltInTypeIdentifier.FileCodingKeys);
      v104 = OUTLINED_FUNCTION_6_26();
      v107 = &v127;
      goto LABEL_19;
    case 6:
      sub_1C9019650(v101, v102, v103);
      OUTLINED_FUNCTION_99(&type metadata for TypeIdentifier.BuiltInTypeIdentifier.HomeAreaCodingKeys);
      v104 = OUTLINED_FUNCTION_6_26();
      v107 = v130;
      goto LABEL_19;
    case 7:
      sub_1C90195FC(v101, v102, v103);
      OUTLINED_FUNCTION_99(&type metadata for TypeIdentifier.BuiltInTypeIdentifier.MediaRouteCodingKeys);
      v104 = OUTLINED_FUNCTION_6_26();
      v107 = &v132;
      goto LABEL_19;
    case 8:
      sub_1C90195A8(v101, v102, v103);
      OUTLINED_FUNCTION_99(&type metadata for TypeIdentifier.BuiltInTypeIdentifier.PaymentMethodCodingKeys);
      v104 = OUTLINED_FUNCTION_6_26();
      v107 = &a11;
      goto LABEL_19;
    case 9:
      sub_1C9019554(v101, v102, v103);
      OUTLINED_FUNCTION_99(&type metadata for TypeIdentifier.BuiltInTypeIdentifier.PodcastCodingKeys);
      v104 = OUTLINED_FUNCTION_6_26();
      v107 = &a14;
      goto LABEL_19;
    case 10:
      sub_1C9019500(v101, v102, v103);
      OUTLINED_FUNCTION_99(&type metadata for TypeIdentifier.BuiltInTypeIdentifier.PersonCodingKeys);
      v104 = OUTLINED_FUNCTION_6_26();
      v107 = &a17;
LABEL_19:
      v105 = *(v107 - 32);
      goto LABEL_20;
    case 11:
      sub_1C90194AC(v101, v102, v103);
      OUTLINED_FUNCTION_99(&type metadata for TypeIdentifier.BuiltInTypeIdentifier.PlacemarkCodingKeys);
      goto LABEL_15;
    case 12:
      sub_1C9019458(v101, v102, v103);
      OUTLINED_FUNCTION_12_38(&type metadata for TypeIdentifier.BuiltInTypeIdentifier.RideshareOptionCodingKeys);
      goto LABEL_15;
    case 13:
      sub_1C9019404(v101, v102, v103);
      OUTLINED_FUNCTION_12_38(&type metadata for TypeIdentifier.BuiltInTypeIdentifier.VpnCodingKeys);
      goto LABEL_15;
    case 14:
      sub_1C90193B0(v101, v102, v103);
      OUTLINED_FUNCTION_12_38(&type metadata for TypeIdentifier.BuiltInTypeIdentifier.TimeZoneCodingKeys);
LABEL_15:
      v104 = OUTLINED_FUNCTION_30();
      goto LABEL_20;
    case 15:
      sub_1C9019308(v101, v102, v103);
      OUTLINED_FUNCTION_12_38(&type metadata for TypeIdentifier.BuiltInTypeIdentifier.MeasurementCodingKeys);
      v104 = OUTLINED_FUNCTION_30();
      v105 = v128;
LABEL_20:
      v106(v104, v105);
      v111 = OUTLINED_FUNCTION_33_18();
      v113 = v96;
LABEL_21:
      v112(v111, v113);
      break;
    default:
      sub_1C901935C(v101, v102, v103);

      v114 = v123[2];
      OUTLINED_FUNCTION_41_4();
      v115 = sub_1C9064ACC();
      sub_1C8C9FB9C(v115, v116, v117);
      v118 = v127;
      sub_1C9064B8C();
      (*(v125 + 8))(v114, v118);
      v119 = OUTLINED_FUNCTION_17_3();
      v120(v119);

      break;
  }

  OUTLINED_FUNCTION_198();
}