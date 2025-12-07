double sub_19370C760@<D0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_123_1();
  v2 = swift_allocObject();
  result = 0.0;
  *(v2 + 16) = xmmword_193950F80;
  *a1 = v2;
  return result;
}

void sub_19370C7A0()
{
  OUTLINED_FUNCTION_279();
  if (v0 < 0)
  {
    OUTLINED_FUNCTION_190_2();
    OUTLINED_FUNCTION_182_0(v7, v8, v9, &type metadata for ToolKitToolDisplayRepresentation.Image.Static, v10, &off_1F07E4BC0, v11, v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_357();
    OUTLINED_FUNCTION_134(v1, v2, v3, &type metadata for ToolKitToolDisplayRepresentation.Storage, v4, &off_1F07E4A18, v5, v6, v13);
  }

  sub_193447600();
}

void sub_19370C870()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAD388);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v2, xmmword_19394FBB0);
  OUTLINED_FUNCTION_141_1("data");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v4 = *(v3 + 104);
  v5 = OUTLINED_FUNCTION_65();
  v4(v5);
  v6 = OUTLINED_FUNCTION_52();
  *v7 = v0;
  *v6 = "symbol";
  v6[1] = 6;
  v8 = OUTLINED_FUNCTION_143_6(v6);
  v4(v8);
  v9 = OUTLINED_FUNCTION_13_12();
  *v9 = "file";
  *(v9 + 1) = 4;
  v10 = OUTLINED_FUNCTION_143_6(v9);
  v4(v10);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19370C9CC()
{
  OUTLINED_FUNCTION_351_0();
  v30 = xmmword_1939526A0;
  v29 = xmmword_193950B20;
  v28 = v1;
  v42 = v2;
  while (1)
  {
    v3 = sub_19393C0E0();
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    switch(v3)
    {
      case 3:
        v37 = 0uLL;
        OUTLINED_FUNCTION_206_1();
        sub_19393C200();
        v0 = 0;

        if (*(&v37 + 1))
        {
          v19 = v37;
        }

        else
        {
          v19 = 0;
        }

        if (*(&v37 + 1))
        {
          v20 = *(&v37 + 1);
        }

        else
        {
          v20 = 0xE000000000000000;
        }

        OUTLINED_FUNCTION_123_1();
        v21 = swift_allocObject();
        *(v21 + 16) = v19;
        *(v21 + 24) = v20;
        *v1 = v21 | 0x8000000000000000;
        break;
      case 2:
        v37 = v30;
        OUTLINED_FUNCTION_619(&v37);
        OUTLINED_FUNCTION_373_0(v8, v9, v10, v11, v12, v13, v14, v15, v27, v28, v29, *(&v29 + 1), v30, *(&v30 + 1), v31, *(&v31 + 1), v32, *(&v32 + 1), v33, *(&v33 + 1), v34, *(&v34 + 1), v35, v36, v37);
        sub_193498018();

        v16 = *(&v37 + 1);
        if (*(&v37 + 1) == 1)
        {
          ToolKitToolDisplayRepresentation.Image.Static.Symbol.init()(&v33);
          sub_193710380(v37, *(&v37 + 1), v38, v39, v40, v41);
          v31 = v33;
          v32 = v34;
          v17 = v35;
          v18 = v36;
        }

        else
        {
          v17 = v40;
          v18 = v41;
          v22 = v38;
          v23 = v39;
          v24 = v37;

          sub_193450268(v22, v23);
          sub_193450268(v17, v18);
          sub_193710380(v24, v16, v22, v23, v17, v18);
          *&v25 = v22;
          *(&v25 + 1) = v23;
          v32 = v25;
          v1 = v28;
          *&v25 = v24;
          *(&v25 + 1) = v16;
          v31 = v25;
        }

        v26 = swift_allocObject();
        *(v26 + 16) = v31;
        *(v26 + 32) = v32;
        *(v26 + 48) = v17;
        *(v26 + 56) = v18;
        *v1 = v26 | 0x4000000000000000;
        break;
      case 1:
        v37 = v29;
        OUTLINED_FUNCTION_206_1();
        sub_19393C140();
        v0 = 0;

        if (*(&v37 + 1) >> 60 == 15)
        {
          v5 = 0;
        }

        else
        {
          v5 = v37;
        }

        if (*(&v37 + 1) >> 60 == 15)
        {
          v6 = 0xC000000000000000;
        }

        else
        {
          v6 = *(&v37 + 1);
        }

        OUTLINED_FUNCTION_123_1();
        v7 = swift_allocObject();
        *(v7 + 16) = v5;
        *(v7 + 24) = v6;
        *v1 = v7;
        break;
    }
  }
}

void sub_19370CC68()
{
  OUTLINED_FUNCTION_103();
  v7 = *v0 >> 62;
  if (v7)
  {
    if (v7 == 1)
    {
      OUTLINED_FUNCTION_182_0(v1, v2, v3, &type metadata for ToolKitToolDisplayRepresentation.Image.Static.Symbol, v4, &off_1F07E4BF0, v5, v6, *((*v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x10));
      OUTLINED_FUNCTION_23_3();
      sub_193447600();
    }

    else
    {

      OUTLINED_FUNCTION_334();
      OUTLINED_FUNCTION_24_2();
      sub_19393C3C0();
    }
  }

  else
  {
    v8 = OUTLINED_FUNCTION_165_1();
    sub_193450688(v8, v9);
    OUTLINED_FUNCTION_165_1();
    OUTLINED_FUNCTION_24_2();
    sub_19393C330();
    v10 = OUTLINED_FUNCTION_165_1();
    sub_193446A6C(v10, v11);
  }
}

void sub_19370CDC0()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAD3A0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBB0);
  OUTLINED_FUNCTION_56_18("name");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "tintColorData");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_48(v7, "configurationData");
  v3(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_19370CF0C()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    result = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C140();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_84_9();
      sub_19393C200();
    }
  }

  return result;
}

void sub_19370CF84()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v3 = v0[3];
  v4 = v0[5];
  if (v0[1])
  {
    OUTLINED_FUNCTION_318_0();
    OUTLINED_FUNCTION_294_2();
    sub_19393C3C0();
    v2 = v1;
  }

  if (!v2)
  {
    if (v3 >> 60 == 15 || (v5 = OUTLINED_FUNCTION_286(), sub_193450688(v5, v6), OUTLINED_FUNCTION_286(), OUTLINED_FUNCTION_294_2(), sub_19393C330(), v7 = OUTLINED_FUNCTION_286(), sub_19345012C(v7, v8), !v1))
    {
      if (v4 >> 60 != 15)
      {
        v9 = OUTLINED_FUNCTION_32_4();
        sub_193450688(v9, v10);
        OUTLINED_FUNCTION_228_3();
        OUTLINED_FUNCTION_294_2();
        sub_19393C330();
        v11 = OUTLINED_FUNCTION_32_4();
        sub_19345012C(v11, v12);
      }
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_19370D0B0()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAD3B8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("direction");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "typeInstance");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19370D1E0()
{
  OUTLINED_FUNCTION_356();
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_62();
      sub_193498018();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_89_2();
      sub_1934982A8();
    }
  }

  OUTLINED_FUNCTION_355();
}

void sub_19370D274()
{
  OUTLINED_FUNCTION_129_10();
  v2 = *(v0 + 16);
  if ((*(v0 + 9) & 1) == 0)
  {
    OUTLINED_FUNCTION_221_1();
    v9 = OUTLINED_FUNCTION_85_3(v3, v4, v5, &type metadata for ToolKitToolCoercionDefinition.CoercionDirection, v6, &off_1F07E4C50, v7, v8, v22);
    sub_193447324(v9, v10, v11, v12, v13, v14);
  }

  if (!v1)
  {
    OUTLINED_FUNCTION_380();
    if (!v21)
    {
      OUTLINED_FUNCTION_104_11(v15, v16, v17, &type metadata for ToolKitToolTypeInstance, v18, &off_1F07E35A8, v19, v20, v2);
      sub_193447600();
    }
  }
}

void sub_19370D368()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAD3D0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_34_5(v2, xmmword_19394FBE0);
  *v0 = 0;
  OUTLINED_FUNCTION_69_0("CoercionDirectionUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v4 = *(v3 + 104);
  v5 = OUTLINED_FUNCTION_65();
  v4(v5);
  v6 = OUTLINED_FUNCTION_4_9();
  v7 = OUTLINED_FUNCTION_48(v6, "CoercionDirectionExport");
  v4(v7);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_19370D4D4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_19393C420();
  __swift_allocate_value_buffer(v3, a2);
  v4 = OUTLINED_FUNCTION_13_5();
  __swift_project_value_buffer(v4, v5);
  return sub_19393C410();
}

void sub_19370D558()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAD400);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_202_2();
  OUTLINED_FUNCTION_8_18(v5, xmmword_193952700);
  *v0 = "id";
  *(v0 + 8) = 2;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_50_1();
  (v7)(v8);
  v9 = OUTLINED_FUNCTION_3_1(v1 + v4);
  *v10 = 2;
  v11 = OUTLINED_FUNCTION_63_1(v9, "name");
  (v7)(v11);
  v12 = OUTLINED_FUNCTION_9_4((v1 + 2 * v4));
  v13 = OUTLINED_FUNCTION_25(v12, "description");
  (v7)(v13);
  v14 = OUTLINED_FUNCTION_26_5();
  *v15 = 4;
  v16 = OUTLINED_FUNCTION_63_1(v14, "parameters");
  (v7)(v16);
  v17 = OUTLINED_FUNCTION_21_39();
  v18 = OUTLINED_FUNCTION_63_1(v17, "outputType");
  (v7)(v18);
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_140_0(v19);
  v21 = OUTLINED_FUNCTION_25(v20, "requirements");
  (v7)(v21);
  v22 = OUTLINED_FUNCTION_30_0((v1 + 10 * v4));
  *v22 = "flags";
  *(v22 + 1) = 5;
  v22[16] = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19370D74C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v4 = sub_19393C0E0();
    if (v1 || (v5 & 1) != 0)
    {
      break;
    }

    switch(v4)
    {
      case 1:
      case 2:
      case 3:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 4:
        v6 = v0 + 48;
        v7 = v3;
        v8 = &type metadata for ToolKitToolToolDefinition.Version1.Parameter;
        v9 = v2;
        v10 = &off_1F07E4500;
        goto LABEL_9;
      case 5:
        sub_193498018();
        break;
      case 6:
        OUTLINED_FUNCTION_147_0();
LABEL_9:
        sub_193498238(v6, v7, v8, v9, v10);
        break;
      case 7:
        OUTLINED_FUNCTION_146_0();
        sub_1934984D4(v11, v12, v13, v14, v15);
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_19370D86C()
{
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_75_3();
  v2 = v1[3];
  v4 = v1[5];
  v3 = v1[6];
  v24 = v1[8];
  v25 = v1[9];
  if (v1[1])
  {
    OUTLINED_FUNCTION_224_0();
  }

  if (!v0)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_234_2();
    }

    if (v4)
    {
      OUTLINED_FUNCTION_286();
      OUTLINED_FUNCTION_246_1();
    }

    if (*(v3 + 16))
    {
      OUTLINED_FUNCTION_145_8();
      sub_193451CFC(v5, v6, v7, v8, v9, v10);
    }

    OUTLINED_FUNCTION_380();
    if (!v11)
    {
      OUTLINED_FUNCTION_106();
      sub_193447600();
    }

    if (*(v24 + 16))
    {
      OUTLINED_FUNCTION_154_8();
      sub_193451CFC(v12, v13, v14, v15, v16, v17);
    }

    if (*(v25 + 16))
    {
      OUTLINED_FUNCTION_106();
      sub_193498B44(v18, v19, v20, v21, v22, v23);
    }
  }

  OUTLINED_FUNCTION_54_0();
}

void sub_19370D9FC()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAD418);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_43_2(v4, xmmword_19394FBC0);
  OUTLINED_FUNCTION_102("FlagUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_17_8((v0 + v3));
  v9 = OUTLINED_FUNCTION_25(v8, "FlagIsAllowedToRunAutomatically");
  v6(v9);
  v10 = OUTLINED_FUNCTION_69();
  v11 = OUTLINED_FUNCTION_25(v10, "FlagRequiresNotification");
  v6(v11);
  v12 = OUTLINED_FUNCTION_9_64();
  v13 = OUTLINED_FUNCTION_25(v12, "FlagIsUserInitiated");
  v6(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19370DBA0()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAD430);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("value");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "reference");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19370DD30()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAD448);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_31_13();
  OUTLINED_FUNCTION_11_3(v4, xmmword_19394FBD0);
  OUTLINED_FUNCTION_63("identifier");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_29_1();
  v9 = OUTLINED_FUNCTION_0_0(v8, "toolIdentifier");
  v6(v9);
  v10 = OUTLINED_FUNCTION_13_12();
  v11 = OUTLINED_FUNCTION_0_0(v10, "target");
  v6(v11);
  v12 = OUTLINED_FUNCTION_14_6();
  v13 = OUTLINED_FUNCTION_0_0(v12, "parameterValues");
  v6(v13);
  v14 = OUTLINED_FUNCTION_19_2((v0 + 4 * v3));
  v15 = OUTLINED_FUNCTION_0_0(v14, "options");
  v6(v15);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19370E324()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAD460);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("key");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "value");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19370E4D8()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAD478);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_31_13();
  OUTLINED_FUNCTION_11_3(v4, xmmword_19394FBD0);
  OUTLINED_FUNCTION_63("interactionMode");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_29_1();
  v9 = OUTLINED_FUNCTION_0_0(v8, "locale");
  v6(v9);
  v10 = OUTLINED_FUNCTION_13_12();
  v11 = OUTLINED_FUNCTION_0_0(v10, "requestIdentifier");
  v6(v11);
  v12 = OUTLINED_FUNCTION_14_6();
  v13 = OUTLINED_FUNCTION_16_6(v12, "interfaceIdiom");
  v6(v13);
  v14 = OUTLINED_FUNCTION_19_2((v0 + 4 * v3));
  *v14 = "shortcutOutput";
  *(v14 + 1) = 14;
  v15 = OUTLINED_FUNCTION_1_3(v14);
  v6(v15);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19370E66C()
{
  OUTLINED_FUNCTION_356();
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_62();
        goto LABEL_8;
      case 2:
      case 3:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 4:
        OUTLINED_FUNCTION_89_2();
LABEL_8:
        sub_1934982A8();
        break;
      case 5:
        OUTLINED_FUNCTION_98();
        sub_19393C0F0();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_355();
}

void sub_19370E888()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAD490);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_31_13();
  OUTLINED_FUNCTION_43_2(v4, xmmword_19394FBD0);
  OUTLINED_FUNCTION_102("InteractionModeUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_17_8((v0 + v3));
  v9 = OUTLINED_FUNCTION_25(v8, "InteractionModeDisplayForward");
  v6(v9);
  v10 = OUTLINED_FUNCTION_69();
  v11 = OUTLINED_FUNCTION_25(v10, "InteractionModeDisplayOnly");
  v6(v11);
  v12 = OUTLINED_FUNCTION_9_4((v0 + 3 * v3));
  v13 = OUTLINED_FUNCTION_25(v12, "InteractionModeVoiceOnly");
  v6(v13);
  v14 = OUTLINED_FUNCTION_13((v0 + 4 * v3));
  v15 = OUTLINED_FUNCTION_25(v14, "InteractionModeVoiceForward");
  v6(v15);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19370EA54()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAD4A8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v29 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_9_8(v29, xmmword_1939526F0);
  *v1 = 0;
  *v0 = "InterfaceIdiomUnknown";
  v0[1] = 21;
  OUTLINED_FUNCTION_107_3();
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_4_9();
  v9 = OUTLINED_FUNCTION_18_1(v8, "InterfaceIdiomCarPlay");
  v6(v9);
  v10 = OUTLINED_FUNCTION_35_4();
  v11 = OUTLINED_FUNCTION_0_0(v10, "InterfaceIdiomEyesFree");
  v6(v11);
  v12 = OUTLINED_FUNCTION_9_4((v1 + 3 * v4));
  v13 = OUTLINED_FUNCTION_18_1(v12, "InterfaceIdiomHomePod");
  v6(v13);
  v14 = OUTLINED_FUNCTION_13((v1 + 4 * v4));
  v15 = OUTLINED_FUNCTION_16_6(v14, "InterfaceIdiomMac");
  v6(v15);
  v16 = OUTLINED_FUNCTION_19_2((v1 + 5 * v4));
  v17 = OUTLINED_FUNCTION_18_1(v16, "InterfaceIdiomAirPods");
  v6(v17);
  v18 = OUTLINED_FUNCTION_14_4(6);
  v19 = OUTLINED_FUNCTION_18_1(v18, "InterfaceIdiomPhone");
  v6(v19);
  OUTLINED_FUNCTION_120();
  v21 = OUTLINED_FUNCTION_30_0((v1 + v20));
  v22 = OUTLINED_FUNCTION_16_6(v21, "InterfaceIdiomPad");
  v6(v22);
  v23 = OUTLINED_FUNCTION_39_3(&v1[v4]);
  v24 = OUTLINED_FUNCTION_18_1(v23, "InterfaceIdiomWatch");
  v6(v24);
  v25 = OUTLINED_FUNCTION_55_2((v1 + 9 * v4));
  v26 = OUTLINED_FUNCTION_0_0(v25, "InterfaceIdiomTv");
  v6(v26);
  v27 = OUTLINED_FUNCTION_14_4(10);
  v28 = OUTLINED_FUNCTION_0_0(v27, "InterfaceIdiomVision");
  v6(v28);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_19370ED00()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAD4C0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBB0);
  OUTLINED_FUNCTION_56_18("uuid");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "toolDefinition");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_48(v7, "parameterValues");
  v3(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19370EE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_296();
  OUTLINED_FUNCTION_351_0();
  OUTLINED_FUNCTION_22_0();
  v51 = v23;
  v49 = v24;
  v50 = v25;
  while (1)
  {
    while (1)
    {
      OUTLINED_FUNCTION_55();
      v26 = sub_19393C0E0();
      if (v20 || (v27 & 1) != 0)
      {
        OUTLINED_FUNCTION_295();
        return;
      }

      if (v26 == 3)
      {
        break;
      }

      if (v26 == 2)
      {
        type metadata accessor for ToolKitTranscript();
        sub_193498018();
LABEL_9:
        v20 = 0;
      }

      else if (v26 == 1)
      {
        type metadata accessor for ToolKitTranscript();
        OUTLINED_FUNCTION_98();
        sub_193497890(v28);
        goto LABEL_9;
      }
    }

    v29 = OUTLINED_FUNCTION_658(MEMORY[0x1E69E7CC0]);
    sub_193498238(v29, v22, &type metadata for ToolKitTranscript.ParameterValuesEntry, v21, &off_1F07E4E70);
    v30 = a20;
    v53 = *(a20 + 16);
    if (v53)
    {
      break;
    }

LABEL_22:

    v21 = v50;
    v20 = 0;
    v22 = v49;
  }

  v31 = 0;
  v32 = *(type metadata accessor for ToolKitTranscript() + 36);
  v33 = (a20 + 48);
  v52 = v32;
  while (v31 < *(v30 + 16))
  {
    v35 = *(v33 - 2);
    v34 = *(v33 - 1);
    v36 = *v33;
    swift_retain_n();

    swift_isUniquelyReferenced_nonNull_native();
    v54 = v35;
    v55 = *(v23 + v32);
    sub_193485250(v35, v34);
    OUTLINED_FUNCTION_275_2();
    if (__OFADD__(v39, v40))
    {
      goto LABEL_25;
    }

    v41 = v37;
    v42 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE41A28, &qword_19397FA30);
    OUTLINED_FUNCTION_623();
    if (sub_19393C980())
    {
      v43 = sub_193485250(v54, v34);
      if ((v42 & 1) != (v44 & 1))
      {
        goto LABEL_27;
      }

      v41 = v43;
    }

    if (v42)
    {
      *(v55[7] + 8 * v41) = v36;
    }

    else
    {
      v55[(v41 >> 6) + 8] |= 1 << v41;
      v45 = (v55[6] + 16 * v41);
      *v45 = v54;
      v45[1] = v34;
      *(v55[7] + 8 * v41) = v36;

      v46 = v55[2];
      v47 = __OFADD__(v46, 1);
      v48 = v46 + 1;
      if (v47)
      {
        goto LABEL_26;
      }

      v55[2] = v48;
    }

    ++v31;
    v23 = v51;
    *(v51 + v52) = v55;
    v32 = v52;
    v33 += 3;
    v30 = a20;
    if (v53 == v31)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_19393CA50();
  __break(1u);
}

void sub_19370F0F8()
{
  OUTLINED_FUNCTION_660();
  sub_19370F234(v4, v1, v3, v0, v5, v6, v7, v8, v20[0], v20[1], v20[2], v20[3], v20[4], v20[5], v20[6], v20[7], v20[8], v20[9], v20[10], v20[11]);
  if (!v2)
  {
    v9 = type metadata accessor for ToolKitTranscript();
    memcpy(__dst, (v4 + *(v9 + 32)), sizeof(__dst));
    if (sub_1936D3298(__dst) != 1)
    {
      v10 = memcpy(v20, __dst, sizeof(v20));
      OUTLINED_FUNCTION_182_0(v10, v11, v12, &type metadata for ToolKitToolToolDefinition.Version1, v13, &off_1F07E4430, v14, v15, v20[0]);
      OUTLINED_FUNCTION_602();
    }

    if (*(*(v4 + *(v9 + 36)) + 16))
    {
      sub_1936F425C();
      OUTLINED_FUNCTION_314_0();
      sub_193451CFC(v16, v17, v18, &type metadata for ToolKitTranscript.ParameterValuesEntry, v0, v19);
    }
  }
}

void sub_19370F234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &a9 - v25;
  v27 = sub_19393BE60();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &a9 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for ToolKitTranscript();
  sub_193458F7C(v23 + *(v31 + 28), v26);
  if (__swift_getEnumTagSinglePayload(v26, 1, v27) == 1)
  {
    sub_19344E6DC(v26, &qword_1EAE3AA88, &qword_19394F9C0);
  }

  else
  {
    v32 = OUTLINED_FUNCTION_82();
    v33(v32);
    OUTLINED_FUNCTION_32_20();
    sub_19344652C();
    (*(v28 + 8))(v30, v27);
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_19370F440@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_173_0();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_173_0();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_173_0();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(v3 + 16) = result;
  *(v2 + 16) = v3;
  *a1 = v2;
  return result;
}

void sub_19370F4A8()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAD4D8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("value");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "reference");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_19370F5D8()
{
  OUTLINED_FUNCTION_351_0();
  OUTLINED_FUNCTION_184_6();
  while (1)
  {
    result = OUTLINED_FUNCTION_124();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_150_9();
      sub_193498018();

      v7 = ToolKitToolTypedValue.ID.init()();
      v15 = OUTLINED_FUNCTION_215_0(v7, v8, v9, v10, v11, v12, v13, v14, v20, *(&v20 + 1), v21, *(&v21 + 1), v22, v23, *(&v23 + 1), v24, *(&v24 + 1), v25, 0);
      sub_1937103EC(v15, v16, v17, v18, 1);
      v20 = v23;
      v21 = v24;
      v19 = swift_allocObject();
      *(v19 + 16) = v23;
      *(v19 + 32) = v24;
      *(v19 + 48) = v25;
      *v1 = v19 | 0x8000000000000000;
    }

    else if (result == 1)
    {
      sub_193498018();

      OUTLINED_FUNCTION_173_0();
      v4 = swift_allocObject();
      OUTLINED_FUNCTION_173_0();
      v5 = swift_allocObject();
      *(v5 + 16) = 0;
      *(v4 + 16) = v5;
      OUTLINED_FUNCTION_173_0();
      v6 = swift_allocObject();
      *(v6 + 16) = v4;
      *v1 = v6;
    }
  }

  return result;
}

void sub_19370F828()
{
  OUTLINED_FUNCTION_279();
  if (v6 < 0)
  {
    OUTLINED_FUNCTION_182_0(v0, v1, v2, &type metadata for ToolKitToolTypedValue.ID, v3, &off_1F07E2DE0, v4, v5, *((v6 & 0x7FFFFFFFFFFFFFFFLL) + 0x10));
  }

  else
  {
    OUTLINED_FUNCTION_190_2();
    OUTLINED_FUNCTION_134(v7, v8, v9, &type metadata for ToolKitToolTypedValue, v10, &off_1F07E2DB0, v11, v12, v13);
  }

  sub_193447600();
}

void sub_19370F8D0()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAD4F0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("key");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "value");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19370FA00()
{
  OUTLINED_FUNCTION_351_0();
  while (1)
  {
    OUTLINED_FUNCTION_19_3();
    v2 = sub_19393C0E0();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    if (v2 == 2)
    {
      sub_193498018();
      OUTLINED_FUNCTION_173_0();
      v4 = swift_allocObject();
      OUTLINED_FUNCTION_173_0();
      v5 = swift_allocObject();
      OUTLINED_FUNCTION_173_0();
      v6 = swift_allocObject();
      *(v6 + 16) = 0;
      *(v5 + 16) = v6;
      *(v4 + 16) = v5;

      v1[2] = v4;
    }

    else if (v2 == 1)
    {
      v7 = sub_19393C200();
      v15 = OUTLINED_FUNCTION_50_2(v7, v8, v9, v10, v11, v12, v13, v14, 0, 0);
      if (v15)
      {
        v16 = v18;
      }

      else
      {
        v16 = 0;
      }

      if (v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = 0xE000000000000000;
      }

      *v1 = v16;
      v1[1] = v17;
    }
  }

  OUTLINED_FUNCTION_54_0();
}

void sub_19370FB70()
{
  OUTLINED_FUNCTION_241_1();
  v3 = v2;
  if (*v0)
  {
    v4 = 0;
  }

  else
  {
    v4 = v0[1] == 0xE000000000000000;
  }

  if (!v4 && (OUTLINED_FUNCTION_272(*v0, v0[1]) & 1) == 0)
  {
    sub_19393C3C0();
  }

  if (!v1)
  {
    OUTLINED_FUNCTION_173_0();
    v5 = swift_allocObject();
    OUTLINED_FUNCTION_173_0();
    v6 = swift_allocObject();
    OUTLINED_FUNCTION_173_0();
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    *(v6 + 16) = v7;
    *(v5 + 16) = v6;
    v3();
    swift_retain_n();
    LOBYTE(v5) = sub_19393C550();

    if ((v5 & 1) == 0)
    {
      sub_193447600();
    }
  }

  OUTLINED_FUNCTION_71_17();
}

void sub_19370FDA8()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAD520);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_188_1();
  OUTLINED_FUNCTION_9_8(v4, xmmword_193951270);
  *v0 = 0;
  OUTLINED_FUNCTION_63("ToolKitToolRuntimePlatformUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_4_9();
  v9 = OUTLINED_FUNCTION_16_6(v8, "ToolKitToolRuntimePlatformPhone");
  v6(v9);
  v10 = OUTLINED_FUNCTION_35_4();
  v11 = OUTLINED_FUNCTION_0_0(v10, "ToolKitToolRuntimePlatformPad");
  v6(v11);
  v12 = OUTLINED_FUNCTION_9_4((v0 + 3 * v3));
  v13 = OUTLINED_FUNCTION_0_0(v12, "ToolKitToolRuntimePlatformMacintosh");
  v6(v13);
  v14 = OUTLINED_FUNCTION_13((v0 + 4 * v3));
  v15 = OUTLINED_FUNCTION_16_6(v14, "ToolKitToolRuntimePlatformWatch");
  v6(v15);
  v16 = OUTLINED_FUNCTION_19_2((v0 + 5 * v3));
  v17 = OUTLINED_FUNCTION_0_0(v16, "ToolKitToolRuntimePlatformTv");
  v6(v17);
  v18 = OUTLINED_FUNCTION_14_4(6);
  v19 = OUTLINED_FUNCTION_0_0(v18, "ToolKitToolRuntimePlatformVision");
  v6(v19);
  OUTLINED_FUNCTION_120();
  v21 = OUTLINED_FUNCTION_30_0((v0 + v20));
  v22 = OUTLINED_FUNCTION_0_0(v21, "ToolKitToolRuntimePlatformaudioAccessory");
  v6(v22);
  v23 = OUTLINED_FUNCTION_39_3(&v0[v3]);
  *v23 = "ToolKitToolRuntimePlatformother";
  *(v23 + 1) = 31;
  v24 = OUTLINED_FUNCTION_1_3(v23);
  v6(v24);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_193710010(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    sub_19345012C(result, a2);
  }

  return result;
}

uint64_t sub_193710054(uint64_t result)
{
  if ((result & 0xF000000000000007) != 0xD000000000000007)
  {
    return sub_193444060(result);
  }

  return result;
}

uint64_t sub_193710070(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (a2)
  {
    a3();
  }

  return result;
}

uint64_t objectdestroy_209Tm()
{
  OUTLINED_FUNCTION_60_18();
  if (!v0)
  {
  }

  OUTLINED_FUNCTION_123_1();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

void sub_1937100F8(uint64_t a1)
{
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 1;
  bzero((a1 + 136), 0x98uLL);
}

uint64_t sub_193710124(uint64_t a1)
{
  v1 = *(a1 + 128);
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

uint64_t sub_193710148(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
    sub_1934354B4(result);
  }

  return result;
}

uint64_t sub_19371018C(uint64_t result, uint64_t a2, void (*a3)(void))
{
  if ((result & 0xF000000000000007) != 0xD000000000000007)
  {
    a3();

    return sub_193444060(a2);
  }

  return result;
}

uint64_t objectdestroy_221Tm()
{
  OUTLINED_FUNCTION_130_9();
  if (!v2)
  {
  }

  if ((v0 & ~*(v1 + 24)) != 0)
  {
  }

  OUTLINED_FUNCTION_123_1();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t objectdestroy_405Tm()
{
  if (*(v0 + 24) != 1)
  {
  }

  if (*(v0 + 136))
  {
  }

  OUTLINED_FUNCTION_609();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t objectdestroy_77Tm()
{
  if (*(v0 + 24) != 1)
  {
  }

  OUTLINED_FUNCTION_137_7();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t objectdestroy_16Tm()
{

  v0 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x1EEE6BDD0](v0, v1, 7);
}

void sub_193710334(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 != 1)
  {
    sub_1936D10D0(a1, a2, a3, a4);
  }
}

uint64_t objectdestroy_372Tm()
{
  OUTLINED_FUNCTION_189_1();
  if (!(!v3 & v2))
  {
    sub_193446A6C(*(v0 + 16), v1);
  }

  OUTLINED_FUNCTION_123_1();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

void sub_193710380(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a2 != 1)
  {

    sub_19345012C(a3, a4);

    sub_19345012C(a5, a6);
  }
}

uint64_t sub_1937103EC(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 != 1)
  {
    sub_19345012C(result, a2);
    sub_193444060(a3);
  }

  return result;
}

char *sub_19371043C(char *a1, int64_t a2, char a3)
{
  result = sub_19371061C(a1, a2, a3, *v3, &qword_1EAE41A90, &unk_193980750);
  *v3 = result;
  return result;
}

char *sub_193710474(char *a1, int64_t a2, char a3)
{
  result = sub_193710504(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_193710494(char *a1, int64_t a2, char a3)
{
  result = sub_19371061C(a1, a2, a3, *v3, &qword_1EAE41A40, &qword_193980740);
  *v3 = result;
  return result;
}

char *sub_1937104CC(char *a1, int64_t a2, char a3)
{
  result = sub_19371061C(a1, a2, a3, *v3, &qword_1EAE41A30, &qword_193980738);
  *v3 = result;
  return result;
}

char *sub_193710504(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE41A60, &qword_193980748);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_19371061C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || &v15[24 * v10] <= v14)
    {
      memmove(v14, v15, 24 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

uint64_t sub_19371076C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_193710778()
{
  result = qword_1EAE41A38;
  if (!qword_1EAE41A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41A38);
  }

  return result;
}

uint64_t sub_1937107E4()
{
  OUTLINED_FUNCTION_245_2();

  *v1 = v3;
  v1[1] = v2;

  v1[2] = v0;
  return result;
}

unint64_t sub_193710898()
{
  result = qword_1EAE41A48;
  if (!qword_1EAE41A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41A48);
  }

  return result;
}

unint64_t sub_19371099C()
{
  result = qword_1EAE41A50;
  if (!qword_1EAE41A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41A50);
  }

  return result;
}

unint64_t sub_193710A44()
{
  result = qword_1EAE41A58;
  if (!qword_1EAE41A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41A58);
  }

  return result;
}

uint64_t sub_193710A98()
{
  OUTLINED_FUNCTION_245_2();

  *v1 = v3;
  v1[1] = v2;

  v1[2] = v0;
  return result;
}

unint64_t sub_193710B4C()
{
  result = qword_1EAE41A68;
  if (!qword_1EAE41A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41A68);
  }

  return result;
}

unint64_t sub_193710C50()
{
  result = qword_1EAE41A70;
  if (!qword_1EAE41A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41A70);
  }

  return result;
}

unint64_t sub_193710D54()
{
  result = qword_1EAE41A78;
  if (!qword_1EAE41A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41A78);
  }

  return result;
}

unint64_t sub_193710E58()
{
  result = qword_1EAE41A80;
  if (!qword_1EAE41A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41A80);
  }

  return result;
}

unint64_t sub_193710F00()
{
  result = qword_1EAE41A88;
  if (!qword_1EAE41A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41A88);
  }

  return result;
}

uint64_t sub_193710F54()
{
  OUTLINED_FUNCTION_245_2();

  *v1 = v3;
  v1[1] = v2;

  v1[2] = v0;
  return result;
}

char *OUTLINED_FUNCTION_21_39()
{
  v3 = (v2 + 4 * v1);
  result = v3 + *(v0 + 56);
  *v3 = 5;
  return result;
}

uint64_t OUTLINED_FUNCTION_54_17()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_58_18()
{
  result = v2 + v1 + *(v0 + 56);
  *(v2 + v1) = v3;
  return result;
}

char *OUTLINED_FUNCTION_66_22()
{
  v3 = (v2 + 5 * v1);
  result = v3 + *(v0 + 56);
  *v3 = 6;
  return result;
}

char *OUTLINED_FUNCTION_75_16@<X0>(void *a1@<X8>)
{
  result = a1 + *(v1 + 56);
  *a1 = 6;
  return result;
}

uint64_t OUTLINED_FUNCTION_103_11@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *result = v2;
  *(result + 8) = a2;
  *(result + 16) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_140_9@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 24) = a2;
  *(result + 32) = v2;
  *(result + 40) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_152_10()
{

  return swift_allocObject();
}

char *OUTLINED_FUNCTION_157_9@<X0>(void *a1@<X8>)
{
  result = a1 + *(v1 + 56);
  *a1 = 14;
  return result;
}

uint64_t OUTLINED_FUNCTION_202_2()
{

  return swift_allocObject();
}

double OUTLINED_FUNCTION_216_2()
{
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_224_0()
{

  return sub_19393C3C0();
}

uint64_t OUTLINED_FUNCTION_225_2()
{

  return sub_19393C3C0();
}

uint64_t OUTLINED_FUNCTION_233_2()
{

  return sub_19393C3C0();
}

uint64_t OUTLINED_FUNCTION_234_2()
{

  return sub_19393C3C0();
}

void OUTLINED_FUNCTION_238_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *(v17 + 8 * (v18 >> 6) + 64) |= 1 << v18;
  v21 = (*(v17 + 48) + 16 * v18);
  *v21 = a17;
  v21[1] = v19;
  *(*(v17 + 56) + 8 * v18) = v20;
}

uint64_t OUTLINED_FUNCTION_240_1(uint64_t result)
{
  *(result + 16) = 0;
  *(v1 + 16) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_245_2()
{
}

uint64_t OUTLINED_FUNCTION_246_1()
{

  return sub_19393C3C0();
}

__n128 OUTLINED_FUNCTION_247_1()
{
  v2 = *&STACK[0xDE0];
  *&STACK[0xC20] = *&STACK[0xDD0];
  *&STACK[0xC30] = v2;
  *&STACK[0xC40] = *&STACK[0xDF0];
  STACK[0xC50] = STACK[0xE00];
  STACK[0xC58] = v0;
  result = *(v1 + 64);
  v4 = *(v1 + 80);
  *&STACK[0xC60] = result;
  *&STACK[0xC70] = v4;
  return result;
}

__n128 OUTLINED_FUNCTION_255_1()
{
  STACK[0x5B0] = STACK[0xE00];
  v1 = *&STACK[0xDE0];
  *&STACK[0x580] = *&STACK[0xDD0];
  *&STACK[0x590] = v1;
  *&STACK[0x5A0] = *&STACK[0xDF0];
  result = *(v0 + 64);
  v3 = *(v0 + 80);
  *&STACK[0x3D0] = result;
  *&STACK[0x3E0] = v3;
  return result;
}

void OUTLINED_FUNCTION_277_2()
{

  sub_19370FB70();
}

void OUTLINED_FUNCTION_278_2()
{

  sub_19370FA00();
}

uint64_t OUTLINED_FUNCTION_281_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69AACD8];

  return sub_19370C3D0(a1, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_282_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69AAC70];

  return sub_19370C3D0(a1, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_283_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69AACA0];

  return sub_1936F9410(a1, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_288_1(uint64_t result)
{
  *(result + 16) = v1;
  *(result + 24) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_291_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69AACC8];

  return sub_1936F9410(a1, a2, a3, v4);
}

__n128 OUTLINED_FUNCTION_292_0(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  a1[1].n128_u64[0] = v9;
  a1[1].n128_u64[1] = v10;
  result = a9;
  a1[2] = a9;
  return result;
}

uint64_t OUTLINED_FUNCTION_293_2()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_305_0()
{

  sub_19370FB70();
}

uint64_t OUTLINED_FUNCTION_311_0()
{
}

double OUTLINED_FUNCTION_313_0()
{
  result = 0.0;
  *&STACK[0xDF0] = 0u;
  *&STACK[0xDE0] = 0u;
  *&STACK[0xDD0] = 0u;
  STACK[0xE00] = 0;
  STACK[0xE08] = 1;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_320()
{
}

uint64_t OUTLINED_FUNCTION_321_0()
{
}

uint64_t OUTLINED_FUNCTION_325_0()
{

  return sub_19393C3C0();
}

uint64_t OUTLINED_FUNCTION_326()
{
}

uint64_t OUTLINED_FUNCTION_329@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *result = a2;
  *(result + 8) = v2;
  *(result + 16) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_340()
{
}

uint64_t OUTLINED_FUNCTION_341()
{
}

void *OUTLINED_FUNCTION_349()
{
  *&STACK[0x410] = *&STACK[0x4A0];
  STACK[0x420] = v0;

  return memcpy(&STACK[0x428], (v1 + 24), 0x50uLL);
}

void *OUTLINED_FUNCTION_356_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t __dst)
{

  return memcpy(&__dst, &STACK[0x208], 0x80uLL);
}

double OUTLINED_FUNCTION_358_0()
{
  result = 0.0;
  v0[1] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_359_0(uint64_t result)
{
  *(result + 16) = v1;
  *(result + 24) = v2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_361_0(uint64_t result)
{
  *(result + 16) = v2;
  *v1 = result | 0xE000000000000000;
  return result;
}

void *OUTLINED_FUNCTION_365_0()
{
  STACK[0xC20] = v2;
  STACK[0xC28] = v1;

  return memcpy(&STACK[0xC30], (v0 + 16), 0x50uLL);
}

void *OUTLINED_FUNCTION_366_0()
{

  return memcpy(&STACK[0x580], &STACK[0xDE0], 0x50uLL);
}

void *OUTLINED_FUNCTION_367_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return memcpy(&__dst, (v67 + 24), 0x50uLL);
}

void *OUTLINED_FUNCTION_368_0(void *a1)
{

  return memcpy(a1, &STACK[0xC20], 0xC0uLL);
}

uint64_t OUTLINED_FUNCTION_369()
{
}

__n128 OUTLINED_FUNCTION_383(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __n128 a11)
{
  result = a11;
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  return result;
}

void OUTLINED_FUNCTION_601()
{

  sub_193447600();
}

void OUTLINED_FUNCTION_602()
{

  sub_193447600();
}

uint64_t OUTLINED_FUNCTION_604()
{
}

void *OUTLINED_FUNCTION_605(void *a1)
{

  return memcpy(a1, &STACK[0x5C0], 0xF0uLL);
}

void *OUTLINED_FUNCTION_606(void *a1)
{

  return memcpy(a1, &STACK[0x410], 0x90uLL);
}

uint64_t OUTLINED_FUNCTION_607()
{

  return sub_19393C0E0();
}

void *OUTLINED_FUNCTION_608(void *a1)
{

  return memcpy(a1, &STACK[0x6D0], 0x120uLL);
}

double OUTLINED_FUNCTION_613(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13)
{
  *&STACK[0x200] = a13;
  result = 0.0;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0u;
  return result;
}

double OUTLINED_FUNCTION_619@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_627@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *result = a2;
  *(result + 8) = v2;
  *(result + 16) = v3;
  return result;
}

__n128 OUTLINED_FUNCTION_637()
{
  result = *(v0 - 144);
  v2 = *(v0 - 128);
  *(v0 - 192) = result;
  *(v0 - 176) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_665()
{

  return sub_19393C3C0();
}

uint64_t OUTLINED_FUNCTION_666()
{

  return sub_19393C3C0();
}

uint64_t OUTLINED_FUNCTION_667()
{

  return sub_19393C3B0();
}

uint64_t ToolKitToolTimestamp.hash(into:)()
{
  v0 = OUTLINED_FUNCTION_301_1();
  MEMORY[0x193B18060](v0);
  return sub_19393CAE0();
}

uint64_t ToolKitToolTimestamp.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  v0 = OUTLINED_FUNCTION_161();
  MEMORY[0x193B18060](v0);
  sub_19393CAE0();
  return sub_19393CB00();
}

uint64_t sub_1937123FC()
{
  sub_19393CAB0();
  v0 = OUTLINED_FUNCTION_161();
  MEMORY[0x193B18060](v0);
  sub_19393CAE0();
  return sub_19393CB00();
}

uint64_t ToolKitToolAny.typeUrl.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ToolKitToolAny.value.getter()
{
  v0 = OUTLINED_FUNCTION_13_0();
  sub_193450688(v0, v1);
  return OUTLINED_FUNCTION_13_0();
}

uint64_t ToolKitToolAny.value.setter()
{
  OUTLINED_FUNCTION_50_0();
  result = sub_193446A6C(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

double ToolKitToolAny.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  result = 0.0;
  *(a1 + 16) = xmmword_193950F80;
  return result;
}

uint64_t static ToolKitToolAny.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_13_20(a1);
  v4 = v1 == *v2 && *(v3 + 8) == v2[1];
  if (v4 || (sub_19393CA30() & 1) != 0)
  {
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_9_12();

    JUMPOUT(0x193B172A0);
  }

  return 0;
}

uint64_t ToolKitToolAny.hash(into:)()
{
  sub_19393C640();
  OUTLINED_FUNCTION_187();

  return sub_19393BD50();
}

uint64_t ToolKitToolAny.hashValue.getter()
{
  v0 = OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_38_30(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_19393C640();
  sub_19393BD50();
  return sub_19393CB00();
}

uint64_t sub_19371268C()
{
  v0 = sub_19393CAB0();
  OUTLINED_FUNCTION_38_30(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_19393C640();
  sub_19393BD50();
  return sub_19393CB00();
}

uint64_t sub_1937126F8@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolTypeIdentifier.Primitive.MeasurementUnitType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193712720@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolTypeIdentifier.Primitive.MeasurementUnitType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193712778()
{
  sub_19393CAB0();
  v0 = ToolKitToolNullValue.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

uint64_t sub_1937127C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_193712894()
{
  OUTLINED_FUNCTION_179_0();
  v2 = v1(v0);
  return MEMORY[0x193B18030](v2);
}

uint64_t sub_193712908()
{
  sub_19393CAB0();
  v0 = ToolKitToolNullValue.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

uint64_t sub_193712954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t ToolKitToolTypeIdentifier.Attributed.sourceContainer.getter()
{
  OUTLINED_FUNCTION_342();
  memcpy(v1, v0, 0x70uLL);
  v2 = OUTLINED_FUNCTION_13_0();
  v4 = memcpy(v2, v3, 0x70uLL);
  return OUTLINED_FUNCTION_394(v4, v5, &qword_1EAE41A98, &qword_193980798, v6);
}

void *ToolKitToolTypeIdentifier.Attributed.sourceContainer.setter()
{
  OUTLINED_FUNCTION_59_19();
  memcpy(v0, v1, 0x70uLL);
  sub_19344E6DC(&v5, &qword_1EAE41A98, &qword_193980798);
  v2 = OUTLINED_FUNCTION_13_5();
  return memcpy(v2, v3, 0x70uLL);
}

uint64_t ToolKitToolTypeIdentifier.Attributed.attributionContainer.getter()
{
  OUTLINED_FUNCTION_342();
  v2 = memcpy(v1, (v0 + 112), 0x70uLL);
  v3 = OUTLINED_FUNCTION_455(v2, (v0 + 112));
  return OUTLINED_FUNCTION_394(v3, v4, &qword_1EAE41A98, &qword_193980798, v5);
}

void *ToolKitToolTypeIdentifier.Attributed.attributionContainer.setter()
{
  OUTLINED_FUNCTION_108_13();
  memcpy(v1, (v0 + 112), 0x70uLL);
  sub_19344E6DC(&v3, &qword_1EAE41A98, &qword_193980798);
  return OUTLINED_FUNCTION_395((v0 + 112));
}

uint64_t ToolKitToolTypeIdentifier.Attributed.typeName.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 224) = v2;
  *(v1 + 232) = v0;
  return result;
}

double ToolKitToolTypeIdentifier.Attributed.init()()
{
  *&v1 = OUTLINED_FUNCTION_227_3();
  v2[12] = v1;
  v2[13] = v1;
  v2[10] = v1;
  v2[11] = v1;
  v2[8] = v1;
  v2[9] = v1;
  v2[7] = v1;
  v3 = v2 + 7;
  OUTLINED_FUNCTION_175();
  sub_19344E6DC(v4, v5, v6);
  *v0 = 0u;
  v0[1] = 0u;
  OUTLINED_FUNCTION_139_10(0);
  memcpy(__dst, v3, sizeof(__dst));
  OUTLINED_FUNCTION_175();
  sub_19344E6DC(v7, v8, v9);
  result = 0.0;
  *v3 = 0u;
  v0[8] = 0u;
  v0[9] = 0u;
  v0[10] = 0u;
  v0[11] = 0u;
  v0[12] = 0u;
  v0[13] = 0u;
  v0[14] = 0u;
  return result;
}

void static ToolKitToolTypeIdentifier.Attributed.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  memcpy(__dst, v2, sizeof(__dst));
  memcpy(v110, v3 + 14, sizeof(v110));
  v4 = v3[28];
  v5 = v3[29];
  memcpy(v111, v1, sizeof(v111));
  memcpy(v112, v1 + 14, sizeof(v112));
  v7 = v1[28];
  v6 = v1[29];
  v8 = __dst[13];
  v9 = v111[13];
  if (!__dst[13])
  {
    if (!v111[13])
    {
      OUTLINED_FUNCTION_369_0();
      v106 = 0;
      OUTLINED_FUNCTION_28_23();
      sub_193448804(v37, v38, v39, v40);
      OUTLINED_FUNCTION_28_23();
      sub_193448804(v41, v42, v43, v44);
      OUTLINED_FUNCTION_10_0();
      sub_19344E6DC(v45, v46, v47);
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_75_0();
    sub_193448804(v17, v18, v19, v20);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v21, v22, v23, v24);
LABEL_8:
    OUTLINED_FUNCTION_369_0();
    v106 = v8;
    memcpy(v107, v1, sizeof(v107));
    v108 = v9;
LABEL_24:
    sub_19344E6DC(v105, &qword_1EAE41AA0, &qword_1939807A0);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_369_0();
  v106 = v8;
  OUTLINED_FUNCTION_450(v104);
  if (!v9)
  {
    OUTLINED_FUNCTION_450(__src);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v25, v26, v27, v28);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v29, v30, v31, v32);
    OUTLINED_FUNCTION_421();
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v33, v34, v35, v36);
    sub_193713244(__src);
    goto LABEL_8;
  }

  memcpy(__src, v1, 0x68uLL);
  __src[13] = v9;
  OUTLINED_FUNCTION_90_10(__dst, v100);
  OUTLINED_FUNCTION_90_10(v111, v100);
  v10 = OUTLINED_FUNCTION_421();
  OUTLINED_FUNCTION_90_10(v10, v11);
  static ToolKitToolContainerDefinition.== infix(_:_:)();
  v13 = v12;
  memcpy(v99, __src, sizeof(v99));
  sub_193713244(v99);
  memcpy(v100, v104, sizeof(v100));
  sub_193713244(v100);
  memcpy(__src, v3, 0x68uLL);
  __src[13] = v8;
  OUTLINED_FUNCTION_146();
  sub_19344E6DC(v14, v15, v16);
  if ((v13 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_10:
  memcpy(v103, v110, sizeof(v103));
  v48 = v110[13];
  OUTLINED_FUNCTION_448(v102);
  v49 = v112[13];
  if (v48)
  {
    memcpy(v105, v110, sizeof(v105));
    v106 = v48;
    OUTLINED_FUNCTION_450(v104);
    if (v49)
    {
      OUTLINED_FUNCTION_448(__src);
      __src[13] = v49;
      OUTLINED_FUNCTION_28_23();
      sub_193448804(v50, v51, v52, v53);
      OUTLINED_FUNCTION_28_23();
      sub_193448804(v54, v55, v56, v57);
      OUTLINED_FUNCTION_421();
      OUTLINED_FUNCTION_28_23();
      sub_193448804(v58, v59, v60, v61);
      static ToolKitToolContainerDefinition.== infix(_:_:)();
      v63 = v62;
      memcpy(v99, __src, sizeof(v99));
      sub_193713244(v99);
      memcpy(v100, v104, sizeof(v100));
      sub_193713244(v100);
      memcpy(__src, v103, 0x68uLL);
      __src[13] = v48;
      OUTLINED_FUNCTION_10_0();
      sub_19344E6DC(v64, v65, v66);
      if ((v63 & 1) == 0 || !v5)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    OUTLINED_FUNCTION_450(__src);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v76, v77, v78, v79);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v80, v81, v82, v83);
    OUTLINED_FUNCTION_421();
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v84, v85, v86, v87);
    sub_193713244(__src);
    goto LABEL_23;
  }

  if (v112[13])
  {
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v68, v69, v70, v71);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v72, v73, v74, v75);
LABEL_23:
    memcpy(v105, v103, sizeof(v105));
    v106 = v48;
    memcpy(v107, v102, sizeof(v107));
    v108 = v49;
    goto LABEL_24;
  }

  memcpy(v105, v110, sizeof(v105));
  v106 = 0;
  OUTLINED_FUNCTION_28_23();
  sub_193448804(v88, v89, v90, v91);
  OUTLINED_FUNCTION_28_23();
  sub_193448804(v92, v93, v94, v95);
  OUTLINED_FUNCTION_10_0();
  sub_19344E6DC(v96, v97, v98);
  if (!v5)
  {
    goto LABEL_25;
  }

LABEL_14:
  if (v6)
  {
    if (v4 != v7 || v5 != v6)
    {
      OUTLINED_FUNCTION_13_0();
      OUTLINED_FUNCTION_46_14();
      sub_19393CA30();
    }
  }

LABEL_25:
  OUTLINED_FUNCTION_116();
}

uint64_t ToolKitToolTypeIdentifier.Attributed.hash(into:)()
{
  v1 = v0[13];
  v2 = v0[27];
  v3 = v0[29];
  if (v1)
  {
    memcpy(v21, v0, 0x68uLL);
    v21[13] = v1;
    OUTLINED_FUNCTION_103_0();
    memcpy(__dst, v0, sizeof(__dst));
    v23 = v1;
    sub_1936D0610(__dst, v24);
    v4 = OUTLINED_FUNCTION_39_20();
    ToolKitToolContainerDefinition.hash(into:)(v4, v5, v6, v7, v8, v9, v10, v11, v21[0], v21[1], v21[2], v21[3], v21[4], v21[5], v21[6], SHIDWORD(v21[6]));
    memcpy(v24, v21, sizeof(v24));
    sub_193713244(v24);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_6:
    OUTLINED_FUNCTION_104_0();
    if (v3)
    {
      goto LABEL_4;
    }

    return OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_104_0();
  if (!v2)
  {
    goto LABEL_6;
  }

LABEL_3:
  memcpy(v21, v0 + 14, 0x68uLL);
  v21[13] = v2;
  OUTLINED_FUNCTION_103_0();
  memcpy(__dst, v0 + 14, sizeof(__dst));
  v23 = v2;
  sub_1936D0610(__dst, v24);
  v12 = OUTLINED_FUNCTION_39_20();
  ToolKitToolContainerDefinition.hash(into:)(v12, v13, v14, v15, v16, v17, v18, v19, v21[0], v21[1], v21[2], v21[3], v21[4], v21[5], v21[6], SHIDWORD(v21[6]));
  memcpy(v24, v21, sizeof(v24));
  sub_193713244(v24);
  if (v3)
  {
LABEL_4:
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_58_19();
    return sub_19393C640();
  }

  return OUTLINED_FUNCTION_104_0();
}

uint64_t ToolKitToolTypeIdentifier.Attributed.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  ToolKitToolTypeIdentifier.Attributed.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1937133E4()
{
  sub_19393CAB0();
  ToolKitToolTypeIdentifier.Attributed.hash(into:)();
  return sub_19393CB00();
}

uint64_t ToolKitToolTypeIdentifier.Codable.identifier.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

IntelligencePlatformLibrary::ToolKitToolTypeIdentifier::Codable __swiftcall ToolKitToolTypeIdentifier.Codable.init()()
{
  OUTLINED_FUNCTION_8_4();

  *v0 = 0;
  v0[1] = 0;
  result.identifier.value._object = v2;
  result.identifier.value._countAndFlagsBits = v1;
  return result;
}

uint64_t ToolKitToolSystemTypeProtocol.AssistantSchema.identifier.getter()
{
  OUTLINED_FUNCTION_142_10();
  memcpy(v0, v1, 0x50uLL);
  v2 = OUTLINED_FUNCTION_13_0();
  v4 = memcpy(v2, v3, 0x50uLL);
  return OUTLINED_FUNCTION_278_3(v4, v5, &qword_1EAE41AA8, &qword_1939807A8, v6, v7, v8, v9, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
}

void *ToolKitToolSystemTypeProtocol.AssistantSchema.identifier.setter()
{
  OUTLINED_FUNCTION_59_19();
  memcpy(v0, v1, 0x50uLL);
  sub_193731648(&v5);
  v2 = OUTLINED_FUNCTION_13_5();
  return memcpy(v2, v3, 0x50uLL);
}

uint64_t ToolKitToolSystemTypeProtocol.AssistantSchema.hash(into:)()
{
  OUTLINED_FUNCTION_108_13();
  memcpy(v0, v1, 0x50uLL);
  OUTLINED_FUNCTION_39_20();
  return sub_193737464();
}

uint64_t sub_193713688(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v7 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = *v3++;
        v10 = v5;
        v6 = *v4++;
        v9 = v6;

        v7 = static ToolKitToolToolSummaryString.Component.== infix(_:_:)(&v10, &v9);

        --v2;
      }

      while ((v7 & 1) != 0 && v2);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_193713748(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 136)
    {
      memcpy(__dst, v3, sizeof(__dst));
      memcpy(v17, v3, sizeof(v17));
      memcpy(v19, i, sizeof(v19));
      memcpy(__src, i, sizeof(__src));
      sub_1936CEFA0(__dst, v15);
      sub_1936CEFA0(v19, v15);
      static ToolKitToolToolDefinition.Version1.Parameter.== infix(_:_:)(v17, __src, v5, v6, v7, v8, v9, v10, v14, v15[0], v15[1], v15[2], v15[3], v15[4], v15[5], v15[6], v15[7], v15[8], v15[9], v15[10], v15[11], v15[12], v15[13], v15[14], v15[15], v15[16], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __src[16], v17[0], v17[1], v17[2], v17[3], v17[4], v17[5], v17[6]);
      v12 = v11;
      memcpy(v20, __src, sizeof(v20));
      sub_193740704(v20);
      memcpy(v21, v17, sizeof(v21));
      sub_193740704(v21);
      if ((v12 & 1) == 0)
      {
        break;
      }

      v3 += 136;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_193713858(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *v4;
      if (*v3)
      {
        if (!v5)
        {
          return 0;
        }

        v6 = *(v3 - 1) == *(v4 - 1) && *v3 == v5;
        if (!v6 && (sub_19393CA30() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {

        if (v5)
        {
          return 0;
        }
      }

      v3 += 2;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_193713908(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v7 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = *v3++;
        v10 = v5;
        v6 = *v4++;
        v9 = v6;

        v7 = static ToolKitToolRuntimeRequirement.== infix(_:_:)(&v10, &v9);

        --v2;
      }

      while ((v7 & 1) != 0 && v2);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1937139C8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && result != a2)
  {
    v3 = 0;
    v23 = a2 + 32;
    v24 = result + 32;
    while (1)
    {
      if (v3 == v2)
      {
        goto LABEL_43;
      }

      v4 = (v24 + 32 * v3);
      v5 = *v4;
      v6 = (v23 + 32 * v3);
      v7 = *v6;
      v8 = *(*v4 + 16);
      if (v8 != *(*v6 + 16))
      {
        return 0;
      }

      v9 = v4[2];
      v25 = v4[1];
      v10 = v4[3];
      v12 = v6[1];
      v11 = v6[2];
      if (v8)
      {
        v13 = v5 == v7;
      }

      else
      {
        v13 = 1;
      }

      v14 = v6[3];
      if (!v13)
      {
        v15 = (v5 + 40);
        v16 = (v7 + 40);
        while (v8)
        {
          result = *(v15 - 1);
          if (result != *(v16 - 1) || *v15 != *v16)
          {
            result = sub_19393CA30();
            if ((result & 1) == 0)
            {
              return 0;
            }
          }

          v15 += 2;
          v16 += 2;
          if (!--v8)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
        __break(1u);
LABEL_43:
        __break(1u);
        return result;
      }

LABEL_19:
      if (v9)
      {
        if (!v11)
        {
          return 0;
        }

        v18 = v25 == v12 && v9 == v11;
        if (!v18 && (sub_19393CA30() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v11)
      {
        return 0;
      }

      v19 = *(v10 + 16);
      if (v19 != *(v14 + 16))
      {
        return 0;
      }

      if (v19 && v10 != v14)
      {
        break;
      }

LABEL_38:
      ++v3;
      result = 1;
      if (v3 == v2)
      {
        return result;
      }
    }

    v20 = (v10 + 40);
    v21 = (v14 + 40);
    while (1)
    {
      v22 = *(v20 - 1) == *(v21 - 1) && *v20 == *v21;
      if (!v22 && (sub_19393CA30() & 1) == 0)
      {
        return 0;
      }

      v20 += 2;
      v21 += 2;
      if (!--v19)
      {
        goto LABEL_38;
      }
    }
  }

  return 1;
}

BOOL sub_193713B7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = *v3++;
        v10 = v5;
        v6 = *v4++;
        v9 = v6;

        v7 = static ToolKitToolSystemToolProtocol.== infix(_:_:)(&v10, &v9);

        --v2;
      }

      while (v7 && v2);
    }
  }

  else
  {
    return 0;
  }

  return v7;
}

uint64_t sub_193713C3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 112)
    {
      memcpy(__dst, v3, sizeof(__dst));
      memcpy(v10, v3, sizeof(v10));
      memcpy(v12, i, sizeof(v12));
      memcpy(__src, i, sizeof(__src));
      sub_1936D0610(__dst, v8);
      sub_1936D0610(v12, v8);
      static ToolKitToolContainerDefinition.== infix(_:_:)();
      v6 = v5;
      memcpy(v13, __src, sizeof(v13));
      sub_193713244(v13);
      memcpy(v14, v10, sizeof(v14));
      sub_193713244(v14);
      if ((v6 & 1) == 0)
      {
        break;
      }

      v3 += 112;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_193713D4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 48);
  for (i = (a2 + 48); ; i += 3)
  {
    v6 = *(v3 - 1);
    v5 = *v3;
    v8 = *(i - 1);
    v7 = *i;
    if (v6)
    {
      if (!v8)
      {
        return 0;
      }

      v9 = *(v3 - 2) == *(i - 2) && v6 == v8;
      if (!v9 && (sub_19393CA30() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v8)
    {
      return 0;
    }

    if ((~v5 & 0xF000000000000007) == 0)
    {
      break;
    }

    v13 = v5;
    if ((~v7 & 0xF000000000000007) == 0)
    {

      sub_193437C90(v5);

      sub_193437C90(v7);
      sub_193437C90(v5);
      sub_193437C90(v7);
      sub_193437C90(v5);

      goto LABEL_23;
    }

    v12 = v7;

    sub_193437C90(v5);

    sub_193437C90(v7);
    sub_193437C90(v5);
    sub_193437C90(v7);
    sub_193437C90(v5);
    v10 = static ToolKitToolToolDefinition.Version1.Parameter.Relationship.Relation.== infix(_:_:)(&v13, &v12);

    sub_193444060(v5);

    sub_193444060(v7);

    sub_193444060(v5);
    if (!v10)
    {
      return 0;
    }

LABEL_19:
    v3 += 3;
    if (!--v2)
    {
      return 1;
    }
  }

  if ((~v7 & 0xF000000000000007) == 0)
  {
    sub_193437C90(v5);
    sub_193437C90(v7);
    sub_193444060(v5);
    goto LABEL_19;
  }

  sub_193437C90(v5);

  sub_193437C90(v7);
  sub_193437C90(v5);
  sub_193437C90(v7);
LABEL_23:
  sub_193444060(v5);
  sub_193444060(v7);

  sub_193444060(v7);

  sub_193444060(v5);
  return 0;
}

uint64_t sub_193713F88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v9 = 1;
    }

    else
    {
      v4 = 0;
      do
      {
        v6 = *(a1 + v4 + 56);
        v5 = *(a1 + v4 + 64);
        v16 = *(a1 + v4 + 32);
        v17 = *(a1 + v4 + 40);
        v18 = v6;
        v19 = v5;
        v7 = *(a2 + v4 + 56);
        v8 = *(a2 + v4 + 64);
        v12 = *(a2 + v4 + 32);
        v13 = *(a2 + v4 + 40);
        v14 = v7;
        v15 = v8;

        sub_193437C90(v5);

        sub_193437C90(v8);
        v9 = static ToolKitToolTypeDefinition.Version1.Entity.Property.== infix(_:_:)(&v16, &v12);

        sub_193444060(v8);

        sub_193444060(v5);
        if ((v9 & 1) == 0)
        {
          break;
        }

        v4 += 40;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_1937140E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  for (i = (a2 + 32); ; i += 96)
  {
    memcpy(__dst, v3, sizeof(__dst));
    memcpy(v31, i, sizeof(v31));
    if (*(&__dst[0] + 1))
    {
      if (!*(&v31[0] + 1))
      {
        return 0;
      }

      v5 = *&__dst[0] == *&v31[0] && *(&__dst[0] + 1) == *(&v31[0] + 1);
      if (!v5 && (sub_19393CA30() & 1) == 0)
      {
        return 0;
      }
    }

    else if (*(&v31[0] + 1))
    {
      return 0;
    }

    v27 = __dst[1];
    v28 = __dst[2];
    v6 = *(&__dst[3] + 1);
    v29 = *&__dst[3];
    v25 = __dst[4];
    v26 = __dst[5];
    v22 = v31[1];
    v23 = v31[2];
    v7 = *(&v31[3] + 1);
    v24 = *&v31[3];
    v20 = v31[4];
    v21 = v31[5];
    if (!*(&__dst[3] + 1))
    {
      break;
    }

    __src[0] = __dst[1];
    __src[1] = __dst[2];
    __src[2] = __dst[3];
    __src[3] = __dst[4];
    __src[4] = __dst[5];
    memcpy(v13, __src, sizeof(v13));
    if (!*(&v31[3] + 1))
    {
      memcpy(v12, __src, sizeof(v12));
      sub_1936C15F8(__dst, v15);
      sub_1936C15F8(v31, v15);
      sub_193448804(&__dst[1], v15, &qword_1EAE41AB8, &qword_1939807B8);
      sub_193448804(&v31[1], v15, &qword_1EAE41AB8, &qword_1939807B8);
      sub_193448804(__src, v15, &qword_1EAE41AB8, &qword_1939807B8);
      sub_1937375CC(v12);
      goto LABEL_24;
    }

    v10[0] = v31[1];
    v10[1] = v31[2];
    v10[3] = v31[4];
    v10[4] = v31[5];
    v10[2] = v31[3];
    sub_1936C15F8(__dst, v15);
    sub_1936C15F8(v31, v15);
    sub_193448804(&__dst[1], v15, &qword_1EAE41AB8, &qword_1939807B8);
    sub_193448804(&v31[1], v15, &qword_1EAE41AB8, &qword_1939807B8);
    sub_193448804(__src, v15, &qword_1EAE41AB8, &qword_1939807B8);
    v8 = static ToolKitToolDisplayRepresentation.== infix(_:_:)(v13, v10);
    memcpy(v11, v10, sizeof(v11));
    sub_1937375CC(v11);
    memcpy(v15, v13, 0x50uLL);
    sub_1937375CC(v15);
    v12[0] = v27;
    v12[1] = v28;
    *&v12[2] = v29;
    *(&v12[2] + 1) = v6;
    v12[3] = v25;
    v12[4] = v26;
    sub_19344E6DC(v12, &qword_1EAE41AB8, &qword_1939807B8);
    sub_193740794(v31);
    sub_193740794(__dst);
    if (!v8)
    {
      return 0;
    }

LABEL_20:
    v3 += 96;
    if (!--v2)
    {
      return 1;
    }
  }

  if (!*(&v31[3] + 1))
  {
    v15[0] = __dst[1];
    v15[1] = __dst[2];
    v15[2] = *&__dst[3];
    v15[3] = __dst[4];
    v15[4] = __dst[5];
    sub_193448804(&__dst[1], __src, &qword_1EAE41AB8, &qword_1939807B8);
    sub_193448804(&v31[1], __src, &qword_1EAE41AB8, &qword_1939807B8);
    sub_19344E6DC(v15, &qword_1EAE41AB8, &qword_1939807B8);
    goto LABEL_20;
  }

  sub_1936C15F8(__dst, v15);
  sub_1936C15F8(v31, v15);
  sub_193448804(&__dst[1], v15, &qword_1EAE41AB8, &qword_1939807B8);
  sub_193448804(&v31[1], v15, &qword_1EAE41AB8, &qword_1939807B8);
LABEL_24:
  v15[0] = v27;
  v15[1] = v28;
  *&v15[2] = v29;
  *(&v15[2] + 1) = v6;
  v15[3] = v25;
  v15[4] = v26;
  v15[5] = v22;
  v15[6] = v23;
  v16 = v24;
  v17 = v7;
  v18 = v20;
  v19 = v21;
  sub_19344E6DC(v15, &qword_1EAE41AC0, &qword_1939807C0);
  sub_193740794(v31);
  sub_193740794(__dst);
  return 0;
}

BOOL sub_1937144C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      do
      {
        v3 += 8;
        v4 += 8;

        v5 = static ToolKitToolSystemTypeProtocol.== infix(_:_:)();

        --v2;
      }

      while (v5 && v2);
    }
  }

  else
  {
    return 0;
  }

  return v5;
}

uint64_t sub_193714598(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v4 = *(result + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || result == a2)
  {
    return 1;
  }

  v6 = result + 40;
  v7 = a2 + 40;
  while (v4)
  {
    v7 += 16;
    v8 = (a3)(result, a2, a3, a4);
    v9 = v8 == a3();
    result = v9;
    v9 = !v9 || v4-- == 1;
    v6 += 16;
    if (v9)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_193714660(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    else
    {
      v5 = 0;
      do
      {
        v6 = *(a1 + v5 + 48);
        v7 = *(a2 + v5 + 48);
        sub_193437C90(v6);
        sub_193437C90(v7);
        v8 = static ToolKitToolCoercionDefinition.== infix(_:_:)();
        sub_193444060(v7);
        sub_193444060(v6);
        if (!v8)
        {
          break;
        }

        v5 += 24;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    return 0;
  }

  return v8;
}

void sub_193714770()
{
  OUTLINED_FUNCTION_237();
  v5 = *(v0 + 16);
  if (v5 == *(v1 + 16) && v5 && v0 != v1)
  {
    v6 = v4;
    v7 = v3;
    v8 = v2;
    v9 = (v0 + 32);
    v10 = (v1 + 32);
    do
    {
      memcpy(__dst, v9, sizeof(__dst));
      memcpy(v14, v9, sizeof(v14));
      memcpy(v16, v10, sizeof(v16));
      memcpy(__src, v10, sizeof(__src));
      v8(__dst, v12);
      v8(v16, v12);
      v11 = v7(v14, __src);
      memcpy(v17, __src, sizeof(v17));
      v6(v17);
      memcpy(v18, v14, sizeof(v18));
      v6(v18);
      if ((v11 & 1) == 0)
      {
        break;
      }

      v9 += 72;
      v10 += 72;
      --v5;
    }

    while (v5);
  }

  OUTLINED_FUNCTION_236();
}

uint64_t sub_19371495C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 41);
    v4 = (a2 + 41);
    do
    {
      v5 = *v3;
      v6 = *(v4 - 1);
      v7 = *v4;
      if (*(v3 - 1))
      {
        if (!*(v4 - 1))
        {
          return 0;
        }
      }

      else
      {
        if (*(v3 - 9) != *(v4 - 9))
        {
          v6 = 1;
        }

        if (v6)
        {
          return 0;
        }
      }

      if (v5 == 2)
      {
        if (v7 != 2)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (v7 == 2 || ((v7 ^ v5) & 1) != 0)
        {
          return result;
        }
      }

      v3 += 16;
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_193714A00(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v5 = 0;
    do
    {
      v6 = *(a1 + v5 + 42);
      v7 = *(a1 + v5 + 48);
      v8 = *(a1 + v5 + 56);
      v9 = *(a2 + v5 + 42);
      v10 = *(a2 + v5 + 48);
      v11 = *(a2 + v5 + 56);
      if (*(a1 + v5 + 41))
      {
        if ((*(a2 + v5 + 41) & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (*(a2 + v5 + 41))
        {
          return 0;
        }

        v16 = *(a1 + v5 + 48);
        v15 = ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.LocaleWeekday.rawValue.getter();
        v12 = ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.LocaleWeekday.rawValue.getter();
        v7 = v16;
        if (v15 != v12)
        {
          return 0;
        }
      }

      if (v6 == 2)
      {
        if (v9 != 2)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (v9 == 2 || ((v9 ^ v6) & 1) != 0)
        {
          return result;
        }
      }

      if (v8)
      {
        if (!v11)
        {
          return 0;
        }
      }

      else
      {
        if (v7 == v10)
        {
          v14 = v11;
        }

        else
        {
          v14 = 1;
        }

        if (v14)
        {
          return 0;
        }
      }

      v5 += 32;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t ToolKitToolTypeDefinition.Version1.Entity.properties.setter()
{
  result = OUTLINED_FUNCTION_458();
  *(v1 + 8) = v0;
  return result;
}

uint64_t ToolKitToolTypeDefinition.Version1.Entity.runtimeRequirements.setter()
{
  result = OUTLINED_FUNCTION_457();
  *(v1 + 16) = v0;
  return result;
}

double ToolKitToolTypeDefinition.Version1.Entity.displayRepresentation.setter()
{
  OUTLINED_FUNCTION_346_0();
  sub_193613BF4(v0[3], v0[4], v0[5], v0[6], v0[7]);
  *&result = OUTLINED_FUNCTION_415().n128_u64[0];
  return result;
}

uint64_t ToolKitToolTypeDefinition.Version1.Entity.sampleInvocations.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t ToolKitToolTypeDefinition.Version1.Entity.systemProtocols.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t ToolKitToolTypeDefinition.Version1.Entity.runtimeFlags.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t ToolKitToolTypeDefinition.Version1.Entity.coercions.setter(uint64_t a1)
{

  *(v1 + 88) = a1;
  return result;
}

double ToolKitToolTypeDefinition.Version1.Entity.init()()
{
  v2 = OUTLINED_FUNCTION_53_23();
  sub_193444060(v2);
  v3 = MEMORY[0x1E69E7CC0];
  *v0 = v1;
  *(v0 + 8) = v3;
  *(v0 + 16) = v3;
  v4 = OUTLINED_FUNCTION_169_3();
  sub_193613BF4(v4, v5, v6, v7, 0);
  result = 0.0;
  *(v0 + 40) = 0u;
  *(v0 + 24) = 0u;
  *(v0 + 56) = 0;
  *(v0 + 64) = v3;
  *(v0 + 72) = v3;
  *(v0 + 80) = v3;
  *(v0 + 88) = v3;
  return result;
}

uint64_t sub_193714E44@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolTypeDefinition.Version1.Entity.RuntimeFlags.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193714E6C@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolTypeDefinition.Version1.Entity.RuntimeFlags.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t ToolKitToolTypeDefinition.Version1.Entity.Property.id.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ToolKitToolTypeDefinition.Version1.Entity.Property.displayName.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t ToolKitToolTypeDefinition.Version1.Entity.Property.type.setter()
{
  v2 = OUTLINED_FUNCTION_416();
  result = sub_193444060(v2);
  *(v1 + 32) = v0;
  return result;
}

uint64_t ToolKitToolTypeDefinition.Version1.Entity.Property.init()()
{
  *&v2 = OUTLINED_FUNCTION_227_3();
  *v3 = v2;
  v3[1] = v2;
  v4 = OUTLINED_FUNCTION_114_12();
  result = sub_193444060(v4);
  *(v0 + 32) = v1;
  return result;
}

uint64_t ToolKitToolTypeDefinition.Version1.Entity.Property.hashValue.getter()
{
  OUTLINED_FUNCTION_43_18();
  v0 = sub_19393CAB0();
  v8 = OUTLINED_FUNCTION_149_5(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11);
  ToolKitToolTypeDefinition.Version1.Entity.Property.hash(into:)(v8);
  return sub_19393CB00();
}

uint64_t sub_1937152C8()
{
  OUTLINED_FUNCTION_43_18();
  v0 = sub_19393CAB0();
  v8 = OUTLINED_FUNCTION_149_5(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11);
  ToolKitToolTypeDefinition.Version1.Entity.Property.hash(into:)(v8);
  return sub_19393CB00();
}

void static ToolKitToolTypeDefinition.Version1.Entity.== infix(_:_:)()
{
  OUTLINED_FUNCTION_327();
  v2 = *v0;
  v3 = v0[7];
  v4 = v0[10];
  v5 = *v1;
  if ((~*v0 & 0xF000000000000007) != 0)
  {
    if ((~v5 & 0xF000000000000007) != 0)
    {
      v73 = v1[1];
      v74 = v0[1];
      v70 = v1[2];
      v71 = v0[2];
      v68 = v1[3];
      v69 = v1[7];
      v65 = v0[8];
      v66 = v1[5];
      v63 = v0[9];
      v64 = v1[8];
      v61 = v1[10];
      v62 = v1[9];
      v67 = v1[4];
      v72 = v1[6];
      OUTLINED_FUNCTION_199_2();
      OUTLINED_FUNCTION_407();
      v8 = static ToolKitToolTypeIdentifier.== infix(_:_:)();

      sub_193444060(v2);
      if (v8)
      {
        goto LABEL_8;
      }

LABEL_25:
      OUTLINED_FUNCTION_232_4();
      return;
    }

    OUTLINED_FUNCTION_199_2();

LABEL_6:
    sub_193444060(v2);
    sub_193444060(v5);
    goto LABEL_25;
  }

  v73 = v1[1];
  v74 = v0[1];
  v70 = v1[2];
  v71 = v0[2];
  v68 = v1[3];
  v69 = v1[7];
  v65 = v0[8];
  v66 = v1[5];
  v63 = v0[9];
  v64 = v1[8];
  v61 = v1[10];
  v62 = v1[9];
  v67 = v1[4];
  v72 = v1[6];
  v6 = v0[10];
  v7 = v0[7];
  sub_193437C90(v2);
  sub_193437C90(v5);
  if ((~v5 & 0xF000000000000007) != 0)
  {
    goto LABEL_6;
  }

  sub_193444060(v2);
  v3 = v7;
  v4 = v6;
LABEL_8:
  if ((sub_193713F88(v74, v73) & 1) == 0 || (sub_193713908(v71, v70) & 1) == 0)
  {
    goto LABEL_25;
  }

  if (!v3)
  {
    v23 = OUTLINED_FUNCTION_33_26();
    sub_1936161E4(v23, v24, v25, v26, 0);
    v27 = v69;
    if (!v69)
    {
      sub_1936161E4(v68, v67, v66, v72, 0);
      v53 = OUTLINED_FUNCTION_33_26();
      sub_193613BF4(v53, v54, v55, v56, 0);
      goto LABEL_19;
    }

    v28 = OUTLINED_FUNCTION_289_2();
    sub_1936161E4(v28, v29, v30, v31, v69);
    goto LABEL_17;
  }

  if (!v69)
  {
    v32 = OUTLINED_FUNCTION_33_26();
    v27 = v33;
    sub_1936161E4(v32, v34, v35, v36, v3);
    v37 = OUTLINED_FUNCTION_289_2();
    sub_1936161E4(v37, v38, v39, v40, 0);
    v41 = OUTLINED_FUNCTION_33_26();
    sub_1936161E4(v41, v42, v43, v44, v3);

LABEL_17:
    v45 = OUTLINED_FUNCTION_33_26();
    sub_193613BF4(v45, v46, v47, v48, v3);
    OUTLINED_FUNCTION_420();
    sub_193613BF4(v49, v50, v51, v52, v27);
    goto LABEL_25;
  }

  v9 = OUTLINED_FUNCTION_407();
  v75 = static ToolKitToolTypeDisplayRepresentation.== infix(_:_:)(v9, v10);
  v11 = OUTLINED_FUNCTION_33_26();
  sub_1936161E4(v11, v12, v13, v14, v3);
  sub_1936161E4(v68, v67, v66, v72, v69);
  v15 = OUTLINED_FUNCTION_33_26();
  sub_1936161E4(v15, v16, v17, v18, v3);

  v19 = OUTLINED_FUNCTION_33_26();
  sub_193613BF4(v19, v20, v21, v22, v3);
  if ((v75 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_19:
  if ((sub_1937139C8(v65, v64) & 1) == 0 || !sub_1937144C8(v63, v62) || (sub_193714598(v4, v61, ToolKitToolTypeDefinition.Version1.Entity.RuntimeFlags.rawValue.getter, v57) & 1) == 0)
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_232_4();

  sub_193714660(v58, v59);
}

uint64_t ToolKitToolTypeDefinition.Version1.Entity.hash(into:)()
{
  OUTLINED_FUNCTION_195();
  v1 = v0[4];
  v3 = v0[6];
  v2 = v0[7];
  OUTLINED_FUNCTION_148_8();
  if (v4)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();

    OUTLINED_FUNCTION_334_0();
    ToolKitToolTypeIdentifier.hash(into:)();
  }

  v5 = OUTLINED_FUNCTION_188_0();
  sub_193736944(v5, v6);
  v7 = OUTLINED_FUNCTION_187();
  sub_193736658(v7, v8);
  if (!v2)
  {
    OUTLINED_FUNCTION_104_0();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_103_0();
  if (!v1)
  {
    OUTLINED_FUNCTION_104_0();
    if (v3)
    {
      goto LABEL_7;
    }

LABEL_10:
    OUTLINED_FUNCTION_104_0();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_113_3();
  sub_19393C640();
  if (!v3)
  {
    goto LABEL_10;
  }

LABEL_7:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_186_3();
  sub_19393C640();
LABEL_11:
  v9 = OUTLINED_FUNCTION_102_4();
  sub_1934D11C8(v9, v10);
LABEL_12:
  v11 = OUTLINED_FUNCTION_30_15();
  sub_1937364D0(v11, v12);
  v13 = OUTLINED_FUNCTION_259_1();
  sub_193736F38(v13, v14);
  OUTLINED_FUNCTION_54_15();
  sub_193736ED4();
  OUTLINED_FUNCTION_261_0();
  OUTLINED_FUNCTION_194();

  return sub_193736DB8(v15, v16);
}

uint64_t ToolKitToolTypeDefinition.Version1.Enumeration.cases.setter()
{
  result = OUTLINED_FUNCTION_458();
  *(v1 + 8) = v0;
  return result;
}

uint64_t ToolKitToolTypeDefinition.Version1.Enumeration.runtimeRequirements.setter()
{
  result = OUTLINED_FUNCTION_457();
  *(v1 + 16) = v0;
  return result;
}

double ToolKitToolTypeDefinition.Version1.Enumeration.displayRepresentation.setter()
{
  OUTLINED_FUNCTION_346_0();
  sub_193613BF4(v0[3], v0[4], v0[5], v0[6], v0[7]);
  *&result = OUTLINED_FUNCTION_415().n128_u64[0];
  return result;
}

uint64_t ToolKitToolTypeDefinition.Version1.Enumeration.kind.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 64) = *result;
  *(v1 + 72) = v2;
  *(v1 + 73) = v3;
  return result;
}

uint64_t ToolKitToolTypeDefinition.Version1.Enumeration.systemProtocols.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

double ToolKitToolTypeDefinition.Version1.Enumeration.init()()
{
  v2 = OUTLINED_FUNCTION_53_23();
  sub_193444060(v2);
  v3 = MEMORY[0x1E69E7CC0];
  *v0 = v1;
  *(v0 + 8) = v3;
  *(v0 + 16) = v3;
  v4 = OUTLINED_FUNCTION_169_3();
  sub_193613BF4(v4, v5, v6, v7, 0);
  result = 0.0;
  *(v0 + 56) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 24) = 0u;
  *(v0 + 72) = 256;
  *(v0 + 80) = v3;
  return result;
}

uint64_t sub_1937159F4@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolTypeDefinition.Version1.Enumeration.Kind.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193715A1C@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolTypeDefinition.Version1.Enumeration.Kind.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193715B54()
{
  OUTLINED_FUNCTION_320_0();
  v0(v2);
  return sub_19393CB00();
}

void static ToolKitToolTypeDefinition.Version1.Enumeration.== infix(_:_:)()
{
  OUTLINED_FUNCTION_327();
  v2 = *v0;
  v3 = *(v0 + 56);
  v4 = *v1;
  v5 = *(v1 + 32);
  v6 = *(v1 + 48);
  if ((~*v0 & 0xF000000000000007) == 0)
  {
    v69 = *(v1 + 8);
    v70 = *(v0 + 8);
    v67 = *(v1 + 16);
    v68 = *(v0 + 16);
    v65 = *(v1 + 56);
    v66 = *(v1 + 24);
    v64 = *(v1 + 40);
    v62 = *(v1 + 73);
    v63 = *(v0 + 73);
    v7 = *(v1 + 32);
    v8 = *(v1 + 48);
    v9 = *(v0 + 56);
    sub_193437C90(v2);
    sub_193437C90(v4);
    if ((~v4 & 0xF000000000000007) == 0)
    {
      sub_193444060(v2);
      v3 = v9;
      v6 = v8;
      v5 = v7;
      goto LABEL_8;
    }

LABEL_6:
    sub_193444060(v2);
    sub_193444060(v4);
    goto LABEL_18;
  }

  if ((~v4 & 0xF000000000000007) == 0)
  {
    OUTLINED_FUNCTION_199_2();

    goto LABEL_6;
  }

  v69 = *(v1 + 8);
  v70 = *(v0 + 8);
  v67 = *(v1 + 16);
  v68 = *(v0 + 16);
  v65 = *(v1 + 56);
  v66 = *(v1 + 24);
  v64 = *(v1 + 40);
  v62 = *(v1 + 73);
  v63 = *(v0 + 73);
  OUTLINED_FUNCTION_199_2();
  OUTLINED_FUNCTION_407();
  v10 = static ToolKitToolTypeIdentifier.== infix(_:_:)();

  sub_193444060(v2);
  if ((v10 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((sub_1937140E8(v70, v69) & 1) == 0 || (sub_193713908(v68, v67) & 1) == 0)
  {
    goto LABEL_18;
  }

  if (!v3)
  {
    v25 = OUTLINED_FUNCTION_34_33();
    sub_1936161E4(v25, v26, v27, v28, 0);
    v29 = v65;
    if (!v65)
    {
      sub_1936161E4(v66, v5, v64, v6, 0);
      v54 = OUTLINED_FUNCTION_34_33();
      sub_193613BF4(v54, v55, v56, v57, 0);
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_95_3();
    sub_1936161E4(v30, v31, v32, v33, v65);
LABEL_17:
    v46 = OUTLINED_FUNCTION_34_33();
    sub_193613BF4(v46, v47, v48, v49, v3);
    OUTLINED_FUNCTION_95_3();
    sub_193613BF4(v50, v51, v52, v53, v29);
    goto LABEL_18;
  }

  if (!v65)
  {
    v34 = OUTLINED_FUNCTION_34_33();
    v29 = 0;
    sub_1936161E4(v34, v35, v36, v37, v3);
    OUTLINED_FUNCTION_95_3();
    sub_1936161E4(v38, v39, v40, v41, 0);
    v42 = OUTLINED_FUNCTION_34_33();
    sub_1936161E4(v42, v43, v44, v45, v3);

    goto LABEL_17;
  }

  v11 = OUTLINED_FUNCTION_407();
  v71 = static ToolKitToolTypeDisplayRepresentation.== infix(_:_:)(v11, v12);
  v13 = OUTLINED_FUNCTION_34_33();
  sub_1936161E4(v13, v14, v15, v16, v3);
  sub_1936161E4(v66, v5, v64, v6, v65);
  v17 = OUTLINED_FUNCTION_34_33();
  sub_1936161E4(v17, v18, v19, v20, v3);

  v21 = OUTLINED_FUNCTION_34_33();
  sub_193613BF4(v21, v22, v23, v24, v3);
  if ((v71 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_20:
  if (v63)
  {
    if (v62)
    {
      goto LABEL_25;
    }

LABEL_18:
    OUTLINED_FUNCTION_232_4();
    return;
  }

  if (v62)
  {
    goto LABEL_18;
  }

  v58 = ToolKitToolTypeDefinition.Version1.Enumeration.Kind.rawValue.getter();
  if (v58 != ToolKitToolTypeDefinition.Version1.Enumeration.Kind.rawValue.getter())
  {
    goto LABEL_18;
  }

LABEL_25:
  OUTLINED_FUNCTION_232_4();

  sub_1937144C8(v59, v60);
}

uint64_t ToolKitToolTypeDefinition.Version1.Enumeration.hash(into:)()
{
  OUTLINED_FUNCTION_195();
  v1 = *(v0 + 32);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 73);
  OUTLINED_FUNCTION_148_8();
  if (v5)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();

    ToolKitToolTypeIdentifier.hash(into:)();
  }

  v6 = OUTLINED_FUNCTION_113_3();
  sub_193736AC4(v6, v7);
  v8 = OUTLINED_FUNCTION_114_0();
  sub_193736658(v8, v9);
  if (v2)
  {
    OUTLINED_FUNCTION_103_0();
    if (v1)
    {
      OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_196_4();
      sub_19393C640();
      if (v3)
      {
LABEL_7:
        OUTLINED_FUNCTION_103_0();
        OUTLINED_FUNCTION_345_0();
        sub_19393C640();
        goto LABEL_12;
      }
    }

    else
    {
      OUTLINED_FUNCTION_104_0();
      if (v3)
      {
        goto LABEL_7;
      }
    }

    OUTLINED_FUNCTION_104_0();
LABEL_12:
    v11 = OUTLINED_FUNCTION_188_0();
    sub_1934D11C8(v11, v12);
    if (v4)
    {
      goto LABEL_13;
    }

LABEL_9:
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_312_0();
    v10 = ToolKitToolTypeDefinition.Version1.Enumeration.Kind.rawValue.getter();
    MEMORY[0x193B18030](v10);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_104_0();
  if ((v4 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_13:
  OUTLINED_FUNCTION_104_0();
LABEL_14:
  OUTLINED_FUNCTION_263_1();
  OUTLINED_FUNCTION_194();

  return sub_193736F38(v13, v14);
}

uint64_t ToolKitToolTypeDefinition.Version1.Enumeration.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  ToolKitToolTypeDefinition.Version1.Enumeration.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1937160AC()
{
  sub_19393CAB0();
  ToolKitToolTypeDefinition.Version1.Enumeration.hash(into:)();
  return sub_19393CB00();
}

uint64_t ToolKitToolTypeDefinition.Version1.Query.templates.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 8), sizeof(__dst));
  memcpy(a1, (v1 + 8), 0x48uLL);
  return sub_193448804(__dst, &v4, &qword_1EAE41AC8, &qword_1939807C8);
}

void *ToolKitToolTypeDefinition.Version1.Query.templates.setter(const void *a1)
{
  memcpy(__dst, (v1 + 8), sizeof(__dst));
  sub_19344E6DC(__dst, &qword_1EAE41AC8, &qword_1939807C8);
  return memcpy((v1 + 8), a1, 0x48uLL);
}

void ToolKitToolTypeDefinition.Version1.Query.init()()
{
  v2 = OUTLINED_FUNCTION_53_23();
  sub_193444060(v2);
  *v0 = v1;
  memset(v3, 0, sizeof(v3));
  v4 = 0;
  sub_19344E6DC(v3, &qword_1EAE41AC8, &qword_1939807C8);
  *(v0 + 8) = 0u;
  OUTLINED_FUNCTION_315_0(0);
  *(v0 + 72) = 0;
}

uint64_t ToolKitToolTypeDefinition.Version1.Query.PredicateTemplates.comparison.setter()
{
  OUTLINED_FUNCTION_301_1();

  *v1 = v0;
  return result;
}

uint64_t ToolKitToolTypeDefinition.Version1.Query.PredicateTemplates.sampleInvocations.setter()
{
  result = OUTLINED_FUNCTION_457();
  *(v1 + 16) = v0;
  return result;
}

uint64_t ToolKitToolTypeDefinition.Version1.Query.PredicateTemplates.valueSearch.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = v2;
  return sub_1937375FC(v2);
}

uint64_t ToolKitToolTypeDefinition.Version1.Query.PredicateTemplates.valueSearch.setter()
{
  v2 = OUTLINED_FUNCTION_416();
  result = sub_193710054(v2);
  *(v1 + 32) = v0;
  return result;
}

void ToolKitToolTypeDefinition.Version1.Query.PredicateTemplates.metadata.getter(uint64_t *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_1934D1694(v2, v3, v4, v5);
}

__n128 ToolKitToolTypeDefinition.Version1.Query.PredicateTemplates.metadata.setter(uint64_t a1)
{
  sub_1934D16DC(v1[5], v1[6], v1[7], v1[8]);
  result = *a1;
  *(v1 + 7) = *(a1 + 16);
  *(v1 + 5) = result;
  return result;
}

double ToolKitToolTypeDefinition.Version1.Query.PredicateTemplates.init()@<D0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 16843009;
  *(a1 + 16) = v2;
  *(a1 + 24) = 257;
  sub_193710054(0xD000000000000007);
  v3 = OUTLINED_FUNCTION_107_13();
  sub_1934D16DC(v3, v4, v5, v6);
  result = -2.31584178e77;
  *(a1 + 32) = xmmword_19397F910;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 1;
  return result;
}

uint64_t sub_1937165A0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v5 = sub_19393CAB0();
  v13 = OUTLINED_FUNCTION_134_0(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16);
  a4(v13);
  return sub_19393CB00();
}

void static ToolKitToolTypeDefinition.Version1.Query.PredicateTemplates.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_234_3();
  a41 = v42;
  a42 = v43;
  v45 = *(v44 + 8);
  v46 = *(v44 + 9);
  v112 = *(v44 + 11);
  v113 = *(v44 + 10);
  v111 = *(v44 + 16);
  v109 = *(v44 + 24);
  v105 = *(v44 + 40);
  v103 = *(v44 + 32);
  v104 = *(v44 + 48);
  v100 = *(v44 + 56);
  v101 = *(v44 + 64);
  v48 = *(v47 + 8);
  v49 = *(v47 + 9);
  v50 = *(v47 + 10);
  v51 = *(v47 + 11);
  v110 = *(v47 + 16);
  v107 = *(v44 + 25);
  v108 = *(v47 + 24);
  v106 = *(v47 + 25);
  v102 = *(v47 + 32);
  v52 = *(v47 + 56);
  v99 = *(v47 + 48);
  v53 = *(v47 + 64);
  OUTLINED_FUNCTION_102_8(*v44);
  sub_193714770();
  if ((v54 & 1) != 0 && ((v45 ^ v48) & 1) == 0 && ((v46 ^ v49) & 1) == 0 && ((v113 ^ v50) & 1) == 0 && ((v112 ^ v51) & 1) == 0)
  {
    v55 = v53;
    v56 = v52;
    if ((sub_1937139C8(v111, v110) & 1) != 0 && ((v109 ^ v108) & 1) == 0 && ((v107 ^ v106) & 1) == 0)
    {
      if ((v103 & 0xF000000000000007) == 0xD000000000000007)
      {
        sub_1937375FC(v103);
        sub_1937375FC(v102);
        v57 = v102;
        v59 = v104;
        v58 = v105;
        if ((v102 & 0xF000000000000007) == 0xD000000000000007)
        {
          sub_193710054(v103);
          goto LABEL_16;
        }

        goto LABEL_14;
      }

      a26 = v103;
      v57 = v102;
      v59 = v104;
      v58 = v105;
      if ((v102 & 0xF000000000000007) == 0xD000000000000007)
      {
        sub_1937375FC(v103);
        sub_1937375FC(v102);
        sub_1937375FC(v103);
        sub_193444060(v103);
LABEL_14:
        sub_193710054(v103);
        sub_193710054(v57);
        goto LABEL_23;
      }

      sub_1937375FC(v103);
      sub_1937375FC(v102);
      sub_1937375FC(v103);
      v60 = static ToolKitToolTypeInstance.Deferred.== infix(_:_:)(&a26);
      sub_193444060(v102);
      sub_193444060(v103);
      sub_193710054(v103);
      if (v60)
      {
LABEL_16:
        if (v59 == 1)
        {
          OUTLINED_FUNCTION_69_1();
          sub_1934D1694(v61, v62, v63, v64);
          if (v99 == 1)
          {
            v65 = OUTLINED_FUNCTION_37_7();
            sub_1934D1694(v65, v66, v56, v55);
            sub_1934D16DC(v58, 1, v100, v101);
            goto LABEL_23;
          }

          OUTLINED_FUNCTION_196_4();
          sub_1934D1694(v77, v78, v79, v55);
        }

        else
        {
          a26 = v58;
          a27 = v59;
          a28 = v100;
          a29 = v101;
          if (v99 != 1)
          {
            static ToolKitToolTypedValue.DeferredValue.Storage.ActionParameterDefaultValueStorage.== infix(_:_:)(&a26);
            v87 = OUTLINED_FUNCTION_1_55();
            sub_1934D1694(v87, v88, v89, v101);
            OUTLINED_FUNCTION_196_4();
            sub_1934D1694(v90, v91, v92, v55);
            v93 = OUTLINED_FUNCTION_1_55();
            sub_1934D1694(v93, v94, v95, v101);

            v96 = OUTLINED_FUNCTION_1_55();
            sub_1934D16DC(v96, v97, v98, v101);
            goto LABEL_23;
          }

          OUTLINED_FUNCTION_24_1();
          OUTLINED_FUNCTION_69_1();
          sub_1934D1694(v67, v68, v69, v70);
          v71 = OUTLINED_FUNCTION_37_7();
          sub_1934D1694(v71, v72, v56, v55);
          OUTLINED_FUNCTION_24_1();
          OUTLINED_FUNCTION_69_1();
          sub_1934D1694(v73, v74, v75, v76);
        }

        OUTLINED_FUNCTION_24_1();
        OUTLINED_FUNCTION_69_1();
        sub_1934D16DC(v80, v81, v82, v83);
        OUTLINED_FUNCTION_196_4();
        sub_1934D16DC(v84, v85, v86, v55);
      }
    }
  }

LABEL_23:
  OUTLINED_FUNCTION_160_8();
}

void ToolKitToolTypeDefinition.Version1.Query.PredicateTemplates.hash(into:)()
{
  OUTLINED_FUNCTION_195();
  v1 = v0[4];
  v5 = v0[6];
  v6 = v0[8];
  sub_193736FC4();
  sub_19393CAD0();
  sub_19393CAD0();
  sub_19393CAD0();
  sub_19393CAD0();
  v2 = OUTLINED_FUNCTION_262_0();
  sub_1937364D0(v2, v3);
  sub_19393CAD0();
  sub_19393CAD0();
  if ((v1 & 0xF000000000000007) == 0xD000000000000007)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    if ((v1 & 0xF000000000000007) == 0xF000000000000007)
    {
      OUTLINED_FUNCTION_104_0();
    }

    else
    {
      OUTLINED_FUNCTION_103_0();
      sub_193437C90(v1);

      OUTLINED_FUNCTION_334_0();
      ToolKitToolTypeInstance.hash(into:)();
    }

    sub_193710054(v1);
  }

  if (v5 == 1)
  {
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_103_0();
  if (!v5)
  {
    OUTLINED_FUNCTION_104_0();
    if (v6)
    {
      goto LABEL_10;
    }

LABEL_14:
    OUTLINED_FUNCTION_104_0();
    OUTLINED_FUNCTION_194();
    return;
  }

  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_345_0();
  sub_19393C640();
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_10:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_186_3();
  OUTLINED_FUNCTION_194();

  sub_19393C640();
}

uint64_t static ToolKitToolTypeDefinition.Version1.Query.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  memcpy(__dst, a1 + 1, sizeof(__dst));
  v4 = *a2;
  memcpy(v79, a2 + 1, sizeof(v79));
  OUTLINED_FUNCTION_147_8();
  if (v6)
  {
    v7 = v5 & ~v4;
    OUTLINED_FUNCTION_120_8();
    if (v7)
    {
LABEL_7:
      v8 = OUTLINED_FUNCTION_267_2();
      sub_193444060(v8);
LABEL_16:
      v31 = 0;
      return v31 & 1;
    }

    sub_193444060(v3);
  }

  else
  {
    __src[0] = v3;
    if ((v5 & ~v4) == 0)
    {
      OUTLINED_FUNCTION_44_22();

      goto LABEL_7;
    }

    v64[0] = v4;
    OUTLINED_FUNCTION_44_22();
    v9 = static ToolKitToolTypeIdentifier.== infix(_:_:)();

    sub_193444060(v3);
    if ((v9 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v10 = __dst[0];
  v74 = *&__dst[1];
  v75 = *&__dst[3];
  v76 = *&__dst[5];
  v77 = *&__dst[7];
  v11 = v79[0];
  v70 = *&v79[1];
  v71 = *&v79[3];
  v72 = *&v79[5];
  v73 = *&v79[7];
  if (!__dst[0])
  {
    if (!v79[0])
    {
      __src[0] = 0;
      OUTLINED_FUNCTION_230_3(__dst);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v53, v54, v55, v56);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v57, v58, v59, v60);
      OUTLINED_FUNCTION_247_2(__src);
      v31 = 1;
      return v31 & 1;
    }

    OUTLINED_FUNCTION_75_0();
    sub_193448804(v32, v33, v34, v35);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v36, v37, v38, v39);
    goto LABEL_15;
  }

  __src[0] = __dst[0];
  OUTLINED_FUNCTION_230_3(__dst);
  memcpy(v64, __src, sizeof(v64));
  if (!v11)
  {
    memcpy(v63, __src, sizeof(v63));
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v40, v41, v42, v43);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v44, v45, v46, v47);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v48, v49, v50, v51);
    sub_193737618(v63);
LABEL_15:
    *&__src[1] = v74;
    *&__src[3] = v75;
    *&__src[5] = v76;
    *&__src[7] = v77;
    __src[0] = v10;
    __src[9] = v11;
    v66 = v70;
    v67 = v71;
    v68 = v72;
    v69 = v73;
    sub_19344E6DC(__src, &qword_1EAE41AD0, &unk_1939807D0);
    goto LABEL_16;
  }

  *&v63[1] = *&v79[1];
  *&v63[3] = *&v79[3];
  *&v63[5] = *&v79[5];
  *&v63[7] = *&v79[7];
  OUTLINED_FUNCTION_75_0();
  sub_193448804(v12, v13, v14, v15);
  OUTLINED_FUNCTION_75_0();
  sub_193448804(v16, v17, v18, v19);
  OUTLINED_FUNCTION_75_0();
  sub_193448804(v20, v21, v22, v23);
  static ToolKitToolTypeDefinition.Version1.Query.PredicateTemplates.== infix(_:_:)(v64, v63, v24, v25, v26, v27, v28, v29, v61[0], v61[1], v61[2], v61[3], v61[4], v61[5], v61[6], v61[7], v61[8], v62[0], v62[1], v62[2], v62[3], v62[4], v62[5], v62[6], v62[7], v62[8], v11, v63[1], v63[2], v63[3], v63[4], v63[5], v63[6], v63[7], v63[8], v64[0], v64[1], v64[2], v64[3], v64[4], v64[5], v64[6]);
  v31 = v30;
  memcpy(v61, v63, sizeof(v61));
  sub_193737618(v61);
  memcpy(v62, v64, sizeof(v62));
  sub_193737618(v62);
  v63[0] = v10;
  *&v63[1] = v74;
  *&v63[3] = v75;
  *&v63[5] = v76;
  *&v63[7] = v77;
  OUTLINED_FUNCTION_247_2(v63);
  return v31 & 1;
}

uint64_t ToolKitToolTypeDefinition.Version1.Query.hash(into:)()
{
  OUTLINED_FUNCTION_168_5();
  v3 = *v0;
  v2 = v0[1];
  OUTLINED_FUNCTION_148_8();
  if (!v4)
  {
    __dst[0] = v3;
    OUTLINED_FUNCTION_103_0();

    ToolKitToolTypeIdentifier.hash(into:)();

    if (!v2)
    {
      return OUTLINED_FUNCTION_104_0();
    }

LABEL_4:
    v5 = v1[2];
    *&__src[1] = v1[1];
    *&__src[3] = v5;
    v6 = v1[4];
    *&__src[5] = v1[3];
    *&__src[7] = v6;
    __src[0] = v2;
    OUTLINED_FUNCTION_103_0();
    v11 = v2;
    v7 = v1[2];
    v12 = v1[1];
    v13 = v7;
    v8 = v1[4];
    v14 = v1[3];
    v15 = v8;
    sub_1936C1BDC(&v11, __dst);
    OUTLINED_FUNCTION_161();
    ToolKitToolTypeDefinition.Version1.Query.PredicateTemplates.hash(into:)();
    memcpy(__dst, __src, sizeof(__dst));
    return sub_193737618(__dst);
  }

  OUTLINED_FUNCTION_104_0();
  if (v2)
  {
    goto LABEL_4;
  }

  return OUTLINED_FUNCTION_104_0();
}

uint64_t ToolKitToolTypeDefinition.Version1.Codable.identifier.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

__n128 ToolKitToolTypeDefinition.Version1.Codable.displayRepresentation.setter()
{
  OUTLINED_FUNCTION_346_0();
  sub_193613BF4(v1[2], v1[3], v1[4], v1[5], v1[6]);
  result = *v0;
  v4 = *(v0 + 16);
  *(v1 + 1) = *v0;
  *(v1 + 2) = v4;
  v1[6] = v2;
  return result;
}

void __swiftcall ToolKitToolTypeDefinition.Version1.Codable.init()(IntelligencePlatformLibrary::ToolKitToolTypeDefinition::Version1::Codable *__return_ptr retstr)
{
  OUTLINED_FUNCTION_228_4(retstr);
  v2 = OUTLINED_FUNCTION_169_3();
  sub_193613BF4(v2, v3, v4, v5, 0);
  *(v1 + 48) = 0;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
}

void static ToolKitToolTypeDefinition.Version1.Codable.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_273_1();
  a31 = v32;
  a32 = v34;
  v35 = v33[2];
  v37 = v33[3];
  v36 = v33[4];
  v38 = v33[5];
  v39 = v33[6];
  v41 = v40[1];
  v42 = v40[2];
  v43 = v40[3];
  v44 = v40[4];
  v45 = v40[5];
  v46 = v40[6];
  if (!v33[1])
  {
    if (v41)
    {
      goto LABEL_17;
    }

LABEL_10:
    if (v39)
    {
      a16 = v35;
      a17 = v37;
      a18 = v36;
      a19 = v38;
      a20 = v39;
      if (v46)
      {
        a11 = v42;
        a12 = v43;
        a13 = v44;
        a14 = v45;
        a15 = v46;
        static ToolKitToolTypeDisplayRepresentation.== infix(_:_:)(&a16, &a11);
        v50 = OUTLINED_FUNCTION_30_23();
        sub_1936161E4(v50, v51, v52, v53, v54);
        v55 = OUTLINED_FUNCTION_63_15();
        sub_1936161E4(v55, v56, v57, v58, v46);
        v59 = OUTLINED_FUNCTION_30_23();
        sub_1936161E4(v59, v60, v61, v62, v63);

        v64 = OUTLINED_FUNCTION_30_23();
        sub_193613BF4(v64, v65, v66, v67, v68);
        goto LABEL_17;
      }

      v77 = OUTLINED_FUNCTION_30_23();
      sub_1936161E4(v77, v78, v79, v80, v81);
      v82 = OUTLINED_FUNCTION_63_15();
      sub_1936161E4(v82, v83, v84, v85, 0);
      v86 = OUTLINED_FUNCTION_30_23();
      sub_1936161E4(v86, v87, v88, v89, v90);
    }

    else
    {
      v69 = OUTLINED_FUNCTION_35_30();
      sub_1936161E4(v69, v70, v71, v72, 0);
      if (!v46)
      {
        v100 = OUTLINED_FUNCTION_63_15();
        sub_1936161E4(v100, v101, v102, v103, 0);
        v104 = OUTLINED_FUNCTION_35_30();
        sub_193613BF4(v104, v105, v106, v107, 0);
        goto LABEL_17;
      }

      v73 = OUTLINED_FUNCTION_63_15();
      sub_1936161E4(v73, v74, v75, v76, v46);
    }

    v91 = OUTLINED_FUNCTION_30_23();
    sub_193613BF4(v91, v92, v93, v94, v95);
    v96 = OUTLINED_FUNCTION_63_15();
    sub_193613BF4(v96, v97, v98, v99, v46);
    goto LABEL_17;
  }

  if (v41)
  {
    OUTLINED_FUNCTION_155(v33);
    v49 = v49 && v47 == v48;
    if (v49 || (sub_19393CA30() & 1) != 0)
    {
      goto LABEL_10;
    }
  }

LABEL_17:
  OUTLINED_FUNCTION_270();
}

void ToolKitToolTypeDefinition.Version1.Codable.hash(into:)()
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_77_1();
  v1 = v0[3];
  v3 = v0[5];
  v2 = v0[6];
  if (v0[1])
  {
    sub_19393CAD0();
    OUTLINED_FUNCTION_2_14();
    sub_19393C640();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_19393CAD0();
    OUTLINED_FUNCTION_236();
    return;
  }

  sub_19393CAD0();
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_19393CAD0();
  if (!v1)
  {
    sub_19393CAD0();
    if (v3)
    {
      goto LABEL_5;
    }

LABEL_9:
    sub_19393CAD0();
    goto LABEL_10;
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_10_0();
  sub_19393C640();
  if (!v3)
  {
    goto LABEL_9;
  }

LABEL_5:
  sub_19393CAD0();
  OUTLINED_FUNCTION_175();
  sub_19393C640();
LABEL_10:
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_236();

  sub_1934D11C8(v4, v5);
}

uint64_t ToolKitToolTypeDefinition.Version1.Codable.hashValue.getter()
{
  v0 = OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_433(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  ToolKitToolTypeDefinition.Version1.Codable.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1937173B4()
{
  v0 = sub_19393CAB0();
  OUTLINED_FUNCTION_433(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  ToolKitToolTypeDefinition.Version1.Codable.hash(into:)();
  return sub_19393CB00();
}

uint64_t ToolKitToolTypedValue.ID.typeInstance.setter()
{
  v2 = OUTLINED_FUNCTION_339();
  result = sub_193444060(v2);
  *(v1 + 16) = v0;
  return result;
}

uint64_t ToolKitToolTypedValue.ID.identifier.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t ToolKitToolTypedValue.ID.init()()
{
  v2 = OUTLINED_FUNCTION_8_4();
  sub_19345012C(v2, 0xF000000000000000);
  *v0 = xmmword_193950B20;
  v3 = OUTLINED_FUNCTION_114_12();
  result = sub_193444060(v3);
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 16) = v1;
  return result;
}

void static ToolKitToolTypedValue.ID.== infix(_:_:)()
{
  OUTLINED_FUNCTION_108_0();
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v5 = v3[2];
  v4 = v3[3];
  v6 = v3[4];
  OUTLINED_FUNCTION_296_1();
  if (!(!v11 & v10))
  {
    OUTLINED_FUNCTION_340_0();
    if (!(!v11 & v10))
    {
      v27 = v12;
      v17 = OUTLINED_FUNCTION_17_36();
      v18 = MEMORY[0x193B172A0](v17);
      v19 = OUTLINED_FUNCTION_33_7();
      sub_19345012C(v19, v20);
      v21 = OUTLINED_FUNCTION_82();
      sub_19345012C(v21, v22);
      if ((v18 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_10;
    }

LABEL_8:
    v13 = OUTLINED_FUNCTION_17_36();
    sub_19345012C(v13, v14);
    v15 = OUTLINED_FUNCTION_33_7();
    sub_19345012C(v15, v16);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_340_0();
  if (!(!v11 & v10))
  {
    goto LABEL_8;
  }

  v27 = v7;
  v8 = OUTLINED_FUNCTION_17_36();
  sub_19345012C(v8, v9);
LABEL_10:
  OUTLINED_FUNCTION_179_5();
  if (v11)
  {
    v24 = v23 & ~v5;
    OUTLINED_FUNCTION_348(v1);
    if (v24)
    {
LABEL_16:
      sub_193444060(v1);
      sub_193444060(v5);
      goto LABEL_17;
    }

    sub_193444060(v1);
  }

  else
  {
    if ((v23 & ~v5) == 0)
    {
      OUTLINED_FUNCTION_95_14();

      goto LABEL_16;
    }

    OUTLINED_FUNCTION_95_14();
    v25 = static ToolKitToolTypeInstance.== infix(_:_:)();

    sub_193444060(v1);
    if ((v25 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (v2 && v6 && (v27 != v4 || v2 != v6))
  {
    OUTLINED_FUNCTION_5_5(v27, v2);
  }

LABEL_17:
  OUTLINED_FUNCTION_107();
}

uint64_t ToolKitToolTypedValue.ID.hashValue.getter()
{
  OUTLINED_FUNCTION_43_18();
  v0 = sub_19393CAB0();
  v8 = OUTLINED_FUNCTION_149_5(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11);
  ToolKitToolTypedValue.ID.hash(into:)(v8);
  return sub_19393CB00();
}

uint64_t sub_193717840()
{
  OUTLINED_FUNCTION_43_18();
  v0 = sub_19393CAB0();
  v8 = OUTLINED_FUNCTION_149_5(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11);
  ToolKitToolTypedValue.ID.hash(into:)(v8);
  return sub_19393CB00();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Decimal.exponent.setter(uint64_t result)
{
  *(v1 + 12) = result;
  *(v1 + 16) = BYTE4(result) & 1;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Decimal.length.setter(uint64_t result)
{
  *(v1 + 20) = result;
  *(v1 + 24) = BYTE4(result) & 1;
  return result;
}

__n128 ToolKitToolTypedValue.PrimitiveValue.Decimal.mantissa.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 44);
  *a1 = *(v1 + 28);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 60);
  result = *(v1 + 74);
  *(a1 + 46) = result;
  return result;
}

__n128 ToolKitToolTypedValue.PrimitiveValue.Decimal.mantissa.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 28) = *a1;
  *(v1 + 44) = v2;
  *(v1 + 60) = *(a1 + 32);
  result = *(a1 + 46);
  *(v1 + 74) = result;
  return result;
}

void ToolKitToolTypedValue.PrimitiveValue.Decimal.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  *(a1 + 12) = 0;
  *(a1 + 16) = 513;
  *(a1 + 20) = 0;
  *(a1 + 24) = 1;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0u;
  *(a1 + 73) = 0u;
  *(a1 + 89) = 1;
  OUTLINED_FUNCTION_123_2();
}

uint64_t sub_193717A04@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolTypedValue.PrimitiveValue.Decimal.Sign.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193717A2C@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolTypedValue.PrimitiveValue.Decimal.Sign.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Decimal.Mantissa._3.setter(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 28) = BYTE4(result) & 1;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Decimal.Mantissa._4.setter(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 36) = BYTE4(result) & 1;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Decimal.Mantissa._5.setter(uint64_t result)
{
  *(v1 + 40) = result;
  *(v1 + 44) = BYTE4(result) & 1;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Decimal.Mantissa._6.setter(uint64_t result)
{
  *(v1 + 48) = result;
  *(v1 + 52) = BYTE4(result) & 1;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Decimal.Mantissa._7.setter(uint64_t result)
{
  *(v1 + 56) = result;
  *(v1 + 60) = BYTE4(result) & 1;
  return result;
}

void ToolKitToolTypedValue.PrimitiveValue.Decimal.Mantissa.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 1;
  *(a1 + 8) = 0;
  *(a1 + 12) = 1;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1;
  *(a1 + 24) = 0;
  *(a1 + 28) = 1;
  *(a1 + 32) = 0;
  *(a1 + 36) = 1;
  *(a1 + 40) = 0;
  *(a1 + 44) = 1;
  *(a1 + 48) = 0;
  *(a1 + 52) = 1;
  *(a1 + 56) = 0;
  *(a1 + 60) = 1;
}

void ToolKitToolTypedValue.PrimitiveValue.Decimal.Mantissa.hash(into:)()
{
  OUTLINED_FUNCTION_108_0();
  OUTLINED_FUNCTION_77_1();
  v1 = v0[12];
  v6 = v0[20];
  v7 = v0[28];
  v2 = v0[36];
  v3 = v0[44];
  v4 = v0[52];
  v5 = v0[60];
  if (v0[4] == 1)
  {
    sub_19393CAD0();
    if (!v1)
    {
LABEL_3:
      sub_19393CAD0();
      sub_19393CAE0();
      goto LABEL_6;
    }
  }

  else
  {
    sub_19393CAD0();
    sub_19393CAE0();
    if (!v1)
    {
      goto LABEL_3;
    }
  }

  sub_19393CAD0();
LABEL_6:
  sub_19393CAD0();
  if (!v6)
  {
    sub_19393CAE0();
  }

  if (v7)
  {
    sub_19393CAD0();
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    sub_19393CAD0();
    sub_19393CAE0();
    if (!v2)
    {
LABEL_10:
      sub_19393CAD0();
      sub_19393CAE0();
      if (!v3)
      {
        goto LABEL_11;
      }

      goto LABEL_16;
    }
  }

  sub_19393CAD0();
  if (!v3)
  {
LABEL_11:
    sub_19393CAD0();
    sub_19393CAE0();
    if (!v4)
    {
      goto LABEL_12;
    }

LABEL_17:
    sub_19393CAD0();
    if (!v5)
    {
      goto LABEL_13;
    }

LABEL_18:
    sub_19393CAD0();
    goto LABEL_19;
  }

LABEL_16:
  sub_19393CAD0();
  if (v4)
  {
    goto LABEL_17;
  }

LABEL_12:
  sub_19393CAD0();
  sub_19393CAE0();
  if (v5)
  {
    goto LABEL_18;
  }

LABEL_13:
  sub_19393CAD0();
  sub_19393CAE0();
LABEL_19:
  OUTLINED_FUNCTION_107();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Decimal.Mantissa.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  ToolKitToolTypedValue.PrimitiveValue.Decimal.Mantissa.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1937180B4()
{
  sub_19393CAB0();
  ToolKitToolTypedValue.PrimitiveValue.Decimal.Mantissa.hash(into:)();
  return sub_19393CB00();
}

uint64_t static ToolKitToolTypedValue.PrimitiveValue.Decimal.== infix(_:_:)()
{
  OUTLINED_FUNCTION_50_0();
  v2 = *(v0 + 12);
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = *(v0 + 20);
  v6 = *(v0 + 24);
  v7 = *(v0 + 89);
  v8 = *(v1 + 12);
  v9 = *(v1 + 16);
  v10 = *(v1 + 17);
  v11 = *(v1 + 20);
  v12 = *(v1 + 24);
  v13 = *(v1 + 89);
  if (*(v0 + 9))
  {
    if ((*(v1 + 9) & 1) == 0)
    {
LABEL_28:
      v19 = 0;
      return v19 & 1;
    }
  }

  else
  {
    if (*(v1 + 9))
    {
      goto LABEL_28;
    }

    v26 = *(v1 + 89);
    v27 = *(v0 + 89);
    OUTLINED_FUNCTION_331_0();
    v24 = v15;
    v25 = v14;
    v23 = v16;
    v22 = ToolKitToolTypedValue.PrimitiveValue.Decimal.Sign.rawValue.getter();
    v17 = ToolKitToolTypedValue.PrimitiveValue.Decimal.Sign.rawValue.getter();
    v12 = v23;
    v6 = v24;
    v5 = v25;
    v13 = v26;
    v7 = v27;
    if (v22 != v17)
    {
      goto LABEL_28;
    }
  }

  if (v3)
  {
    if (!v9)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (v2 == v8)
    {
      v18 = v9;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      goto LABEL_28;
    }
  }

  if (v4 == 2)
  {
    if (v10 != 2)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v19 = 0;
    if (v10 == 2 || ((v10 ^ v4) & 1) != 0)
    {
      return v19 & 1;
    }
  }

  if (v6)
  {
    if (!v12)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (v5 == v11)
    {
      v20 = v12;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      goto LABEL_28;
    }
  }

  if ((v7 & 1) == 0)
  {
    if ((v13 & 1) == 0)
    {
      static ToolKitToolTypedValue.PrimitiveValue.Decimal.Mantissa.== infix(_:_:)();
      return v19 & 1;
    }

    goto LABEL_28;
  }

  v19 = v13;
  return v19 & 1;
}

void ToolKitToolTypedValue.PrimitiveValue.Decimal.hash(into:)()
{
  OUTLINED_FUNCTION_108_0();
  OUTLINED_FUNCTION_168_5();
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[24];
  v4 = v0[89];
  if (v0[9] == 1)
  {
    OUTLINED_FUNCTION_104_0();
    if (!v1)
    {
LABEL_3:
      OUTLINED_FUNCTION_103_0();
      sub_19393CAE0();
      goto LABEL_6;
    }
  }

  else
  {
    v5 = v0[24];
    v6 = v0[89];
    OUTLINED_FUNCTION_103_0();
    v4 = v6;
    v3 = v5;
    OUTLINED_FUNCTION_177_1();
    v7 = ToolKitToolTypedValue.PrimitiveValue.Decimal.Sign.rawValue.getter();
    MEMORY[0x193B18030](v7);
    if (!v1)
    {
      goto LABEL_3;
    }
  }

  OUTLINED_FUNCTION_104_0();
LABEL_6:
  if (v2 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (!v3)
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393CAE0();
    if ((v4 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_12:
    OUTLINED_FUNCTION_104_0();
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_104_0();
  if (v4)
  {
    goto LABEL_12;
  }

LABEL_10:
  OUTLINED_FUNCTION_103_0();
  ToolKitToolTypedValue.PrimitiveValue.Decimal.Mantissa.hash(into:)();
LABEL_13:
  OUTLINED_FUNCTION_107();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Decimal.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  ToolKitToolTypedValue.PrimitiveValue.Decimal.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1937183D4()
{
  sub_19393CAB0();
  ToolKitToolTypedValue.PrimitiveValue.Decimal.hash(into:)();
  return sub_19393CB00();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Measurement.unit.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

void ToolKitToolTypedValue.PrimitiveValue.Measurement.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 256;
}

uint64_t static ToolKitToolTypedValue.PrimitiveValue.Measurement.== infix(_:_:)()
{
  OUTLINED_FUNCTION_454();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 41);
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(v4 + 41);
  if (v9)
  {
    if (!v5)
    {
      return 0;
    }

    OUTLINED_FUNCTION_155(v0);
    v12 = v12 && v10 == v11;
    if (!v12 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }

LABEL_10:
    if (v2)
    {
      if (!v7)
      {
        return 0;
      }
    }

    else
    {
      if (v1 == v6)
      {
        v13 = v7;
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
        return 0;
      }
    }

    if (v3)
    {
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v8)
      {
        return 0;
      }

      v14 = ToolKitToolTypeIdentifier.Primitive.MeasurementUnitType.rawValue.getter();
      if (v14 != ToolKitToolTypeIdentifier.Primitive.MeasurementUnitType.rawValue.getter())
      {
        return 0;
      }
    }

    return 1;
  }

  if (!v5)
  {
    goto LABEL_10;
  }

  return 0;
}

void ToolKitToolTypedValue.PrimitiveValue.Measurement.hash(into:)()
{
  OUTLINED_FUNCTION_115();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 41);
  if (*(v0 + 8))
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_188_0();
    sub_19393C640();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_6:
    OUTLINED_FUNCTION_103_0();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v1;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x193B18060](v5);
    if (!v3)
    {
      goto LABEL_4;
    }

LABEL_10:
    OUTLINED_FUNCTION_104_0();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_104_0();
  if (!v2)
  {
    goto LABEL_6;
  }

LABEL_3:
  OUTLINED_FUNCTION_104_0();
  if (v3)
  {
    goto LABEL_10;
  }

LABEL_4:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_179_0();
  v4 = ToolKitToolTypeIdentifier.Primitive.MeasurementUnitType.rawValue.getter();
  MEMORY[0x193B18030](v4);
LABEL_11:
  OUTLINED_FUNCTION_114();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Measurement.hashValue.getter()
{
  OUTLINED_FUNCTION_406();
  OUTLINED_FUNCTION_93_11(v0);
  v1 = OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_149_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  ToolKitToolTypedValue.PrimitiveValue.Measurement.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19371870C()
{
  OUTLINED_FUNCTION_406();
  OUTLINED_FUNCTION_93_11(v0);
  v1 = sub_19393CAB0();
  OUTLINED_FUNCTION_149_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  ToolKitToolTypedValue.PrimitiveValue.Measurement.hash(into:)();
  return sub_19393CB00();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.CurrencyAmount.currencyIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.CurrencyAmount.displayRepresentation.getter()
{
  OUTLINED_FUNCTION_153_9();
  v2 = OUTLINED_FUNCTION_451(v1);
  v3 = OUTLINED_FUNCTION_330_0(v2, (v0 + 112));
  return OUTLINED_FUNCTION_278_3(v3, v4, &qword_1EAE41AB8, &qword_1939807B8, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
}

void *ToolKitToolTypedValue.PrimitiveValue.CurrencyAmount.displayRepresentation.setter()
{
  OUTLINED_FUNCTION_108_13();
  OUTLINED_FUNCTION_451(v1);
  sub_19344E6DC(&v3, &qword_1EAE41AB8, &qword_1939807B8);
  return OUTLINED_FUNCTION_276_3((v0 + 112));
}

void ToolKitToolTypedValue.PrimitiveValue.CurrencyAmount.init()(void *a1@<X8>)
{
  OUTLINED_FUNCTION_228_4(a1);
  *(v1 + 16) = 768;
  OUTLINED_FUNCTION_315_0(0);
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  *(v1 + 104) = 0;
  v3[0] = v2;
  v3[1] = v2;
  v3[2] = v2;
  v3[3] = v2;
  v3[4] = v2;
  sub_19344E6DC(v3, &qword_1EAE41AB8, &qword_1939807B8);
  OUTLINED_FUNCTION_314_1(0);
}

void static ToolKitToolTypedValue.PrimitiveValue.CurrencyAmount.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  v4 = v2[2];
  v5 = v2[12];
  v6 = v2[13];
  memcpy(v110, v2 + 14, sizeof(v110));
  v7 = *(v1 + 16);
  v9 = *(v1 + 96);
  v8 = *(v1 + 104);
  memcpy(v111, (v1 + 112), sizeof(v111));
  if ((v4 & 0xFF00) == 0x300)
  {
    if ((v7 & 0xFF00) != 0x300)
    {
      goto LABEL_22;
    }
  }

  else
  {
    __src[0] = *v3;
    memcpy(&__src[1] + 8, v3 + 24, 0x42uLL);
    *&__src[1] = v4;
    if ((v7 & 0xFF00) == 0x300)
    {
      goto LABEL_22;
    }

    *v76 = *v1;
    memcpy(&v76[24], (v1 + 24), 0x42uLL);
    *&v76[16] = v7;
    if ((static ToolKitToolTypedValue.PrimitiveValue.Decimal.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  if (!v6)
  {
    if (v8)
    {
      goto LABEL_22;
    }

LABEL_15:
    v107 = v110[0];
    v108 = v110[1];
    v11 = v110[2].n128_u64[1];
    v109 = v110[2].n128_u64[0];
    v12 = *(&v111[2] + 1);
    v104 = *&v111[2];
    v105 = v110[3];
    v106 = v110[4];
    __src[12] = v111[0];
    __src[13] = v111[1];
    __src[10] = v111[3];
    __src[11] = v111[4];
    if (v110[2].n128_u64[1])
    {
      __src[0] = v110[0];
      __src[1] = v110[1];
      __src[2] = v110[2];
      OUTLINED_FUNCTION_403(v110);
      v13 = memcpy(v76, __src, 0x50uLL);
      if (v12)
      {
        *v97 = v111[0];
        v98 = v111[1];
        v101 = v111[3];
        v102 = v111[4];
        v99 = *&v111[2];
        v100 = v12;
        OUTLINED_FUNCTION_75_0();
        sub_193448804(v21, v22, v23, v24);
        OUTLINED_FUNCTION_75_0();
        sub_193448804(v25, v26, v27, v28);
        OUTLINED_FUNCTION_75_0();
        sub_193448804(v29, v30, v31, v32);
        v33 = static ToolKitToolDisplayRepresentation.== infix(_:_:)(v76, v97);
        OUTLINED_FUNCTION_363_0(v33, v34, v35, v36, v37, v38, v39, v40, *v76, *&v76[8], *&v76[16], *&v76[24], *&v76[32], *&v76[40], *&v76[48], *&v76[56], *&v76[64], *&v76[72], *&v76[80], *&v76[88], v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97[0]);
        sub_1937375CC(&v77);
        OUTLINED_FUNCTION_316_1(&v87, v41, v42, v43, v44, v45, v46, v47, *v76);
        sub_1937375CC(&v87);
        *v97 = v107;
        v98 = v108;
        v99 = v109;
        v100 = v11;
        v101 = v105;
        v102 = v106;
        OUTLINED_FUNCTION_247_2(v97);
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_361_1(v13, v14, v15, v16, v17, v18, v19, v20, *v76, *&v76[8], *&v76[16], *&v76[24], *&v76[32], *&v76[40], *&v76[48], *&v76[56], *&v76[64], *&v76[72], *&v76[80], *&v76[88], v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97[0], *&v97[8], v98.n128_i64[0], v98.n128_i64[1], v99, v100, v101.n128_i64[0], v101.n128_i64[1], v102.n128_i64[0], v102.n128_i64[1], __src[0]);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v56, v57, v58, v59);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v60, v61, v62, v63);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v64, v65, v66, v67);
      sub_1937375CC(v97);
    }

    else
    {
      if (!*(&v111[2] + 1))
      {
        __src[0] = v110[0];
        __src[1] = v110[1];
        __src[2] = v110[2].n128_u64[0];
        OUTLINED_FUNCTION_403(v110);
        OUTLINED_FUNCTION_75_0();
        sub_193448804(v68, v69, v70, v71);
        OUTLINED_FUNCTION_75_0();
        sub_193448804(v72, v73, v74, v75);
        OUTLINED_FUNCTION_247_2(__src);
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_75_0();
      sub_193448804(v48, v49, v50, v51);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v52, v53, v54, v55);
    }

    OUTLINED_FUNCTION_157_10();
    sub_19344E6DC(__src, &qword_1EAE41AC0, &qword_1939807C0);
    goto LABEL_22;
  }

  if (v8)
  {
    if (v5 == v9 && v6 == v8)
    {
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_46_14();
    if (sub_19393CA30())
    {
      goto LABEL_15;
    }
  }

LABEL_22:
  OUTLINED_FUNCTION_116();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.CurrencyAmount.hash(into:)()
{
  OUTLINED_FUNCTION_168_5();
  v2 = *(v0 + 16);
  v3 = v1[6].n128_i64[1];
  v4 = v1[9].n128_i64[1];
  if ((v2 & 0xFF00) == 0x300)
  {
    OUTLINED_FUNCTION_104_0();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_6:
    OUTLINED_FUNCTION_104_0();
    if (v4)
    {
      goto LABEL_4;
    }

    return OUTLINED_FUNCTION_104_0();
  }

  v53 = *v1;
  memcpy(v55, &v1[1].n128_i8[8], sizeof(v55));
  v54 = v2;
  OUTLINED_FUNCTION_103_0();
  ToolKitToolTypedValue.PrimitiveValue.Decimal.hash(into:)();
  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_3:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_97_10();
  sub_19393C640();
  if (v4)
  {
LABEL_4:
    *v24 = v1[7];
    v27 = v1[8];
    v5 = OUTLINED_FUNCTION_182_6();
    OUTLINED_FUNCTION_238_3(v1[10], v1[11], v5, v6, v7, v8, v9, v10, v11, v12, v24[0], v24[1], v27.n128_i64[0], v27.n128_i64[1], v30, v32, v34, v36, v38, v40, *&v1[7], v1[7].n128_i64[1], v1[8].n128_i64[0], v1[8].n128_i64[1], v1[9].n128_i64[0], v4, v13, v14, v48);
    OUTLINED_FUNCTION_39_20();
    ToolKitToolDisplayRepresentation.hash(into:)();
    OUTLINED_FUNCTION_236_2(v15, v16, v17, v18, v19, v20, v21, v22, v25, v26, v28, v29, v31, v33, v35, v37, v39, v41, v42, v43, v44, v45, v46, v47, v49, v50, v51, v52, v53.n128_i8[0]);
    return sub_1937375CC(&v53);
  }

  return OUTLINED_FUNCTION_104_0();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.PaymentMethod.identificationHint.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

void ToolKitToolTypedValue.PrimitiveValue.PaymentMethod.init()(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_430(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  OUTLINED_FUNCTION_64_17();
  sub_19344E6DC(&v2, &qword_1EAE41AB8, &qword_1939807B8);
  OUTLINED_FUNCTION_139_10(0);
}

uint64_t sub_193718E90@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolTypedValue.PrimitiveValue.PaymentMethod.Type.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193718EB8@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolTypedValue.PrimitiveValue.PaymentMethod.Type.allCases.getter();
  *a1 = result;
  return result;
}

void static ToolKitToolTypedValue.PrimitiveValue.PaymentMethod.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 9);
  v6 = v2[3];
  v100 = v2[2];
  memcpy(v136, v2 + 4, sizeof(v136));
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 9);
  v11 = v1[2];
  v10 = v1[3];
  OUTLINED_FUNCTION_368_1(&v137);
  if (v5)
  {
    if ((v9 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (v9)
    {
      goto LABEL_22;
    }

    *v125 = v3;
    v125[8] = v4 & 1;
    *v115 = v7;
    LOBYTE(v116) = v8 & 1;
    v12 = ToolKitToolTypedValue.PrimitiveValue.PaymentMethod.Type.rawValue.getter();
    if (v12 != ToolKitToolTypedValue.PrimitiveValue.PaymentMethod.Type.rawValue.getter())
    {
      goto LABEL_22;
    }
  }

  if (!v6)
  {
    if (v10)
    {
      goto LABEL_22;
    }

LABEL_15:
    v133 = OUTLINED_FUNCTION_283_1();
    v134 = v14;
    v15 = *(&v136[2] + 1);
    v135 = *&v136[2];
    v16 = v139;
    v130 = v138;
    v131 = v136[3];
    v132 = v136[4];
    v128 = OUTLINED_FUNCTION_399();
    v129 = v17;
    v126 = v140;
    v127 = v141;
    if (v15)
    {
      *v125 = OUTLINED_FUNCTION_283_1();
      *&v125[16] = v18;
      *&v125[32] = *&v136[2];
      *&v125[40] = v15;
      OUTLINED_FUNCTION_403(v19);
      OUTLINED_FUNCTION_361_1(v20, v21, v22, v23, v24, v25, v26, v27, v97, v100, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), v115[0], v116, v117, v118, v119, v120, v121, v122, v123, v124, v125[0]);
      if (v16)
      {
        __src[0] = OUTLINED_FUNCTION_399();
        __src[1] = v28;
        v30 = *(v29 + 64);
        __src[3] = *(v29 + 48);
        __src[4] = v30;
        *&__src[2] = v138;
        OUTLINED_FUNCTION_401();
        OUTLINED_FUNCTION_75_0();
        sub_193448804(v31, v32, v33, v34);
        OUTLINED_FUNCTION_400();
        OUTLINED_FUNCTION_75_0();
        v39 = sub_193448804(v35, v36, v37, v38);
        OUTLINED_FUNCTION_419(v39, v40, v41, v42, v43, v44, v45, v46, v98, v101, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], v16, *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), *v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125[0]);
        OUTLINED_FUNCTION_75_0();
        sub_193448804(v47, v48, v49, v50);
        static ToolKitToolDisplayRepresentation.== infix(_:_:)(v115, __src);
        memcpy(__dst, __src, sizeof(__dst));
        v51 = sub_1937375CC(__dst);
        OUTLINED_FUNCTION_363_0(v51, v52, v53, v54, v55, v56, v57, v58, v99, v102, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), v115[0]);
        sub_1937375CC(&v104);
        __src[0] = v133;
        __src[1] = v134;
        *&__src[2] = v135;
        *(&__src[2] + 1) = v15;
        __src[3] = v131;
        __src[4] = v132;
        OUTLINED_FUNCTION_247_2(__src);
        goto LABEL_22;
      }

      memcpy(__src, v125, sizeof(__src));
      OUTLINED_FUNCTION_401();
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v67, v68, v69, v70);
      OUTLINED_FUNCTION_400();
      OUTLINED_FUNCTION_75_0();
      v75 = sub_193448804(v71, v72, v73, v74);
      OUTLINED_FUNCTION_419(v75, v76, v77, v78, v79, v80, v81, v82, v98, v101, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), *v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125[0]);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v83, v84, v85, v86);
      sub_1937375CC(__src);
    }

    else
    {
      if (!v16)
      {
        *v125 = OUTLINED_FUNCTION_283_1();
        *&v125[16] = v87;
        *&v125[32] = *&v136[2];
        *&v125[40] = 0;
        OUTLINED_FUNCTION_403(v88);
        OUTLINED_FUNCTION_75_0();
        sub_193448804(v89, v90, v91, v92);
        OUTLINED_FUNCTION_75_0();
        sub_193448804(v93, v94, v95, v96);
        OUTLINED_FUNCTION_247_2(v125);
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_75_0();
      sub_193448804(v59, v60, v61, v62);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v63, v64, v65, v66);
    }

    OUTLINED_FUNCTION_157_10();
    sub_19344E6DC(v125, &qword_1EAE41AC0, &qword_1939807C0);
    goto LABEL_22;
  }

  if (v10)
  {
    v13 = v100 == v11 && v6 == v10;
    if (v13 || (OUTLINED_FUNCTION_184_7(v100) & 1) != 0)
    {
      goto LABEL_15;
    }
  }

LABEL_22:
  OUTLINED_FUNCTION_116();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Placemark.displayRepresentation.getter()
{
  OUTLINED_FUNCTION_153_9();
  OUTLINED_FUNCTION_304_1(v0);
  v1 = OUTLINED_FUNCTION_299_1();
  return OUTLINED_FUNCTION_278_3(v1, v2, &qword_1EAE41AB8, &qword_1939807B8, v3, v4, v5, v6, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18);
}

void *ToolKitToolTypedValue.PrimitiveValue.Placemark.displayRepresentation.setter()
{
  OUTLINED_FUNCTION_108_13();
  OUTLINED_FUNCTION_304_1(v1);
  sub_19344E6DC(&v3, &qword_1EAE41AB8, &qword_1939807B8);
  return OUTLINED_FUNCTION_276_3((v0 + 16));
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Placemark.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 96) = *result;
  *(v1 + 104) = v2;
  *(v1 + 105) = v3;
  return result;
}

void ToolKitToolTypedValue.PrimitiveValue.Placemark.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  sub_19345012C(v1, 0xF000000000000000);
  *v0 = xmmword_193950B20;
  OUTLINED_FUNCTION_64_17();
  sub_19344E6DC(&v3, &qword_1EAE41AB8, &qword_1939807B8);
  *&v2 = OUTLINED_FUNCTION_319_1();
  *(v0 + 80) = v2;
  *(v0 + 89) = v2;
  *(v0 + 105) = 1;
}

uint64_t sub_193719564@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolTypedValue.PrimitiveValue.Placemark.Type.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19371958C@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolTypedValue.PrimitiveValue.Placemark.Type.allCases.getter();
  *a1 = result;
  return result;
}

void static ToolKitToolTypedValue.PrimitiveValue.Placemark.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_284_2();
  memcpy(v78, (v0 + 16), sizeof(v78));
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = *(v0 + 105);
  OUTLINED_FUNCTION_304_1(v79);
  v5 = *(v1 + 105);
  OUTLINED_FUNCTION_282_2();
  if (!v11 & v10)
  {
    OUTLINED_FUNCTION_295_2();
    if (!v11 & v10)
    {
      v66 = v7;
      v67 = v6;
      v68 = v3;
      v8 = OUTLINED_FUNCTION_18_41();
      sub_19345012C(v8, v9);
      goto LABEL_10;
    }

LABEL_8:
    v14 = OUTLINED_FUNCTION_18_41();
    sub_19345012C(v14, v15);
    v16 = OUTLINED_FUNCTION_107_5();
    sub_19345012C(v16, v17);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_295_2();
  if (!v11 & v10)
  {
    goto LABEL_8;
  }

  v66 = v13;
  v67 = v12;
  v68 = v3;
  OUTLINED_FUNCTION_18_41();
  OUTLINED_FUNCTION_284();
  v18 = MEMORY[0x193B172A0]();
  v19 = OUTLINED_FUNCTION_107_5();
  sub_19345012C(v19, v20);
  v21 = OUTLINED_FUNCTION_175_0();
  sub_19345012C(v21, v22);
  if ((v18 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_10:
  v23 = v78[5];
  v24 = v80;
  if (v78[5])
  {
    OUTLINED_FUNCTION_281_1();
    memcpy(__dst, __src, sizeof(__dst));
    if (v24)
    {
      v25 = *(v1 + 32);
      v71[0] = *(v1 + 16);
      v71[1] = v25;
      v26 = *(v1 + 48);
      v27 = *(v1 + 80);
      v71[3] = *(v1 + 64);
      v71[4] = v27;
      *&v71[2] = v26;
      *(&v71[2] + 1) = v24;
      OUTLINED_FUNCTION_27_7(v78, v70);
      OUTLINED_FUNCTION_27_7(v79, v70);
      OUTLINED_FUNCTION_27_7(__src, v70);
      v28 = static ToolKitToolDisplayRepresentation.== infix(_:_:)(__dst, v71);
      memcpy(v69, v71, sizeof(v69));
      sub_1937375CC(v69);
      memcpy(v70, __dst, sizeof(v70));
      sub_1937375CC(v70);
      v29 = *(v0 + 32);
      v71[0] = *(v0 + 16);
      v71[1] = v29;
      *&v71[2] = *(v0 + 48);
      *(&v71[2] + 1) = v23;
      v30 = *(v0 + 80);
      v71[3] = *(v0 + 64);
      v71[4] = v30;
      OUTLINED_FUNCTION_188_4();
      sub_19344E6DC(v31, v32, v33);
      if (!v28 || (v4 & 1) != 0)
      {
        goto LABEL_19;
      }

      goto LABEL_21;
    }

    memcpy(v71, __src, sizeof(v71));
    OUTLINED_FUNCTION_9_12();
    sub_193448804(v42, v43, v44, v45);
    OUTLINED_FUNCTION_9_12();
    sub_193448804(v46, v47, v48, v49);
    OUTLINED_FUNCTION_9_12();
    sub_193448804(v50, v51, v52, v53);
    sub_1937375CC(v71);
LABEL_18:
    OUTLINED_FUNCTION_281_1();
    v54 = *(v1 + 32);
    __src[5] = *(v1 + 16);
    __src[6] = v54;
    v74 = *(v1 + 48);
    v75 = v24;
    v55 = *(v1 + 80);
    v76 = *(v1 + 64);
    v77 = v55;
    sub_19344E6DC(__src, &qword_1EAE41AC0, &qword_1939807C0);
    goto LABEL_19;
  }

  if (v80)
  {
    OUTLINED_FUNCTION_9_12();
    sub_193448804(v34, v35, v36, v37);
    OUTLINED_FUNCTION_9_12();
    sub_193448804(v38, v39, v40, v41);
    goto LABEL_18;
  }

  v56 = *(v0 + 32);
  __src[0] = *(v0 + 16);
  __src[1] = v56;
  __src[2] = *(v0 + 48);
  v57 = *(v0 + 80);
  __src[3] = *(v0 + 64);
  __src[4] = v57;
  OUTLINED_FUNCTION_75_0();
  sub_193448804(v58, v59, v60, v61);
  OUTLINED_FUNCTION_75_0();
  sub_193448804(v62, v63, v64, v65);
  OUTLINED_FUNCTION_247_2(__src);
  if (v4)
  {
    goto LABEL_19;
  }

LABEL_21:
  if ((v5 & 1) == 0)
  {
    *&__src[0] = v2;
    BYTE8(__src[0]) = v68 & 1;
    __dst[0] = v67;
    LOBYTE(__dst[1]) = v66 & 1;
    ToolKitToolTypedValue.PrimitiveValue.Placemark.Type.rawValue.getter();
    ToolKitToolTypedValue.PrimitiveValue.Placemark.Type.rawValue.getter();
  }

LABEL_19:
  OUTLINED_FUNCTION_116();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Placemark.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  ToolKitToolTypedValue.PrimitiveValue.Placemark.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_193719AD0()
{
  sub_19393CAB0();
  ToolKitToolTypedValue.PrimitiveValue.Placemark.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.displayRepresentation.getter()
{
  OUTLINED_FUNCTION_153_9();
  OUTLINED_FUNCTION_304_1(v0);
  v1 = OUTLINED_FUNCTION_299_1();
  return OUTLINED_FUNCTION_278_3(v1, v2, &qword_1EAE41AB8, &qword_1939807B8, v3, v4, v5, v6, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18);
}

void *ToolKitToolTypedValue.PrimitiveValue.Person.displayRepresentation.setter()
{
  OUTLINED_FUNCTION_108_13();
  OUTLINED_FUNCTION_304_1(v1);
  sub_19344E6DC(&v3, &qword_1EAE41AB8, &qword_1939807B8);
  return OUTLINED_FUNCTION_276_3((v0 + 16));
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.handle.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[12];
  v3 = v1[13];
  v4 = v1[14];
  v5 = v1[15];
  v6 = v1[16];
  v7 = v1[17];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_193737648(v2, v3);
}

__n128 ToolKitToolTypedValue.PrimitiveValue.Person.handle.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_193737690(*(v1 + 96), *(v1 + 104));
  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 96) = *a1;
  *(v1 + 112) = v6;
  *(v1 + 128) = v3;
  *(v1 + 136) = v4;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.nameComponents.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 144), 0xC0uLL);
  memcpy(a1, (v1 + 144), 0xC0uLL);
  return sub_193448804(__dst, v4, &qword_1EAE41990, &qword_19397F998);
}

void *ToolKitToolTypedValue.PrimitiveValue.Person.nameComponents.setter()
{
  OUTLINED_FUNCTION_108_13();
  memcpy(v2, (v1 + 144), 0xC0uLL);
  sub_19344E6DC(&v4, &qword_1EAE41990, &qword_19397F998);
  return memcpy((v1 + 144), v0, 0xC0uLL);
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.displayName.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 336) = v2;
  *(v1 + 344) = v0;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.image.setter()
{
  OUTLINED_FUNCTION_50_0();
  result = sub_19345012C(*(v1 + 352), *(v1 + 360));
  *(v1 + 352) = v2;
  *(v1 + 360) = v0;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.contactIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 368) = v2;
  *(v1 + 376) = v0;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.customIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 384) = v2;
  *(v1 + 392) = v0;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.relationship.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 400) = v2;
  *(v1 + 408) = v0;
  return result;
}

double ToolKitToolTypedValue.PrimitiveValue.Person.init()@<D0>(uint64_t a1@<X8>)
{
  sub_1936EC8A8(__src);
  memcpy((a1 + 144), __src, 0xC0uLL);
  OUTLINED_FUNCTION_300_1();
  *a1 = xmmword_193950B20;
  memset(v7, 0, sizeof(v7));
  sub_19344E6DC(v7, &qword_1EAE41AB8, &qword_1939807B8);
  *&v2 = OUTLINED_FUNCTION_319_1();
  *(a1 + 80) = v2;
  v3 = OUTLINED_FUNCTION_107_13();
  sub_193737690(v3, v4);
  *(a1 + 96) = xmmword_1939526A0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  memcpy(__dst, (a1 + 144), sizeof(__dst));
  sub_19344E6DC(__dst, &qword_1EAE41990, &qword_19397F998);
  memcpy((a1 + 144), __src, 0xC0uLL);
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  OUTLINED_FUNCTION_300_1();
  result = 0.0;
  *(a1 + 352) = xmmword_193950B20;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 514;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.Handle.value.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.Handle.label.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

void ToolKitToolTypedValue.PrimitiveValue.Person.Handle.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 256;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
}

uint64_t sub_19371A284@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolTypedValue.PrimitiveValue.Person.Handle.Type.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19371A2AC@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolTypedValue.PrimitiveValue.Person.Handle.Type.allCases.getter();
  *a1 = result;
  return result;
}

void static ToolKitToolTypedValue.PrimitiveValue.Person.Handle.== infix(_:_:)()
{
  OUTLINED_FUNCTION_108_0();
  v1 = *(v0 + 25);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v4 + 8);
  v6 = *(v4 + 25);
  v8 = *(v4 + 32);
  v7 = *(v4 + 40);
  if (*(v0 + 8))
  {
    if (!v5)
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_155(v0);
    v11 = v11 && v9 == v10;
    if (!v11 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (v5)
  {
    goto LABEL_22;
  }

  if (v1)
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (v6)
    {
      goto LABEL_22;
    }

    v12 = ToolKitToolTypedValue.PrimitiveValue.Person.Handle.Type.rawValue.getter();
    if (v12 != ToolKitToolTypedValue.PrimitiveValue.Person.Handle.Type.rawValue.getter())
    {
      goto LABEL_22;
    }
  }

  if (v3 && v7 && (v2 != v8 || v3 != v7))
  {
    v14 = OUTLINED_FUNCTION_187();
    OUTLINED_FUNCTION_5_5(v14, v15);
  }

LABEL_22:
  OUTLINED_FUNCTION_107();
}

void ToolKitToolTypedValue.PrimitiveValue.Person.Handle.hash(into:)()
{
  OUTLINED_FUNCTION_115();
  v1 = *(v0 + 25);
  v2 = *(v0 + 40);
  if (*(v0 + 8))
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_30_15();
    sub_19393C640();
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_8:
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_179_0();
    v4 = ToolKitToolTypedValue.PrimitiveValue.Person.Handle.Type.rawValue.getter();
    MEMORY[0x193B18030](v4);
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_9:
    OUTLINED_FUNCTION_104_0();
    OUTLINED_FUNCTION_114();
    return;
  }

  OUTLINED_FUNCTION_104_0();
  if (!v1)
  {
    goto LABEL_8;
  }

LABEL_3:
  OUTLINED_FUNCTION_104_0();
  if (!v2)
  {
    goto LABEL_9;
  }

LABEL_4:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_58_19();
  OUTLINED_FUNCTION_114();

  sub_19393C640();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.Handle.hashValue.getter()
{
  OUTLINED_FUNCTION_406();
  OUTLINED_FUNCTION_103_12(v0);
  v1 = OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_149_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  ToolKitToolTypedValue.PrimitiveValue.Person.Handle.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19371A594()
{
  OUTLINED_FUNCTION_406();
  OUTLINED_FUNCTION_103_12(v0);
  v1 = sub_19393CAB0();
  OUTLINED_FUNCTION_149_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  ToolKitToolTypedValue.PrimitiveValue.Person.Handle.hash(into:)();
  return sub_19393CB00();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents.namePrefix.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents.givenName.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents.middleName.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents.familyName.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents.nameSuffix.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents.nickname.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents.phoneticRepresentation.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 96), sizeof(__dst));
  memcpy(a1, (v1 + 96), 0x60uLL);
  return sub_193448804(__dst, &v4, &qword_1EAE41AD8, &qword_1939807E0);
}

void *ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents.phoneticRepresentation.setter()
{
  OUTLINED_FUNCTION_108_13();
  memcpy(v2, (v1 + 96), 0x60uLL);
  sub_19344E6DC(&v4, &qword_1EAE41AD8, &qword_1939807E0);
  return memcpy((v1 + 96), v0, 0x60uLL);
}

void __swiftcall ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents.init()(IntelligencePlatformLibrary::ToolKitToolTypedValue::PrimitiveValue::Person::NameComponents *__return_ptr retstr)
{
  retstr->phoneticRepresentation.value.namePrefix = xmmword_1939526A0;
  p_phoneticRepresentation = &retstr->phoneticRepresentation;
  retstr->namePrefix = 0u;
  retstr->givenName = 0u;
  retstr->middleName = 0u;
  retstr->familyName = 0u;
  retstr->nameSuffix = 0u;
  retstr->nickname = 0u;
  OUTLINED_FUNCTION_314_1(0);
  memcpy(__dst, &retstr->phoneticRepresentation, sizeof(__dst));
  sub_19344E6DC(__dst, &qword_1EAE41AD8, &qword_1939807E0);
  p_phoneticRepresentation->value.namePrefix = xmmword_1939526A0;
  OUTLINED_FUNCTION_314_1(0);
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation.givenName.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation.middleName.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation.familyName.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation.nameSuffix.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation.nickname.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

void __swiftcall ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation.init()(IntelligencePlatformLibrary::ToolKitToolTypedValue::PrimitiveValue::Person::NameComponents::PhoneticRepresentation *__return_ptr retstr)
{
  retstr->nameSuffix = 0u;
  retstr->nickname = 0u;
  OUTLINED_FUNCTION_354_0(retstr, 0);
}

void static ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_231_3();
  v2 = v1;
  v3 = v0[1];
  v4 = v0[2];
  v6 = v0[3];
  v5 = v0[4];
  v8 = v0[5];
  v7 = v0[6];
  v9 = v0[7];
  v10 = v0[8];
  v12 = v0[9];
  v11 = v0[10];
  v13 = v0[11];
  v14 = v2[1];
  v15 = v2[2];
  v17 = v2[3];
  v16 = v2[4];
  v19 = v2[5];
  v18 = v2[6];
  v21 = v2[7];
  v20 = v2[8];
  v23 = v2[9];
  v22 = v2[10];
  v24 = v2[11];
  if (v3)
  {
    if (!v14)
    {
      goto LABEL_53;
    }

    if (*v0 != *v2 || v3 != v14)
    {
      v58 = v2[9];
      v61 = v2[4];
      v54 = v0[8];
      v55 = v0[9];
      v52 = v2[11];
      v53 = v2[10];
      v51 = v0[11];
      v26 = v0[10];
      v27 = v2[8];
      v65 = v0[6];
      v67 = v0[5];
      v28 = v0[7];
      v29 = v2[7];
      v30 = v2[6];
      v31 = v0[4];
      v63 = v2[5];
      v32 = v0[2];
      v33 = sub_19393CA30();
      v4 = v32;
      v16 = v61;
      v19 = v63;
      v5 = v31;
      v7 = v65;
      v8 = v67;
      v18 = v30;
      v21 = v29;
      v9 = v28;
      v20 = v27;
      v11 = v26;
      v13 = v51;
      v24 = v52;
      v22 = v53;
      v10 = v54;
      v12 = v55;
      v23 = v58;
      if ((v33 & 1) == 0)
      {
        goto LABEL_53;
      }
    }
  }

  else if (v14)
  {
    goto LABEL_53;
  }

  if (v6)
  {
    if (!v17)
    {
      goto LABEL_53;
    }

    if (v4 != v15 || v6 != v17)
    {
      v59 = v21;
      v62 = v16;
      v56 = v11;
      v35 = v20;
      v66 = v7;
      v68 = v8;
      v36 = v9;
      v15 = v18;
      v37 = v5;
      v64 = v19;
      v38 = sub_19393CA30();
      v16 = v62;
      v19 = v64;
      v5 = v37;
      v7 = v66;
      v8 = v68;
      v18 = v15;
      v11 = v56;
      v21 = v59;
      v9 = v36;
      v20 = v35;
      if ((v38 & 1) == 0)
      {
        goto LABEL_53;
      }
    }
  }

  else if (v17)
  {
    goto LABEL_53;
  }

  if (v8)
  {
    if (!v19)
    {
      goto LABEL_53;
    }

    if (v5 != v16 || v8 != v19)
    {
      v57 = v11;
      v60 = v21;
      v40 = v20;
      v41 = v7;
      v42 = v9;
      v15 = v18;
      v43 = sub_19393CA30();
      v18 = v15;
      v11 = v57;
      v21 = v60;
      v9 = v42;
      v7 = v41;
      v20 = v40;
      if ((v43 & 1) == 0)
      {
        goto LABEL_53;
      }
    }
  }

  else if (v19)
  {
    goto LABEL_53;
  }

  if (v9)
  {
    if (!v21)
    {
      goto LABEL_53;
    }

    if (v7 != v18 || v9 != v21)
    {
      OUTLINED_FUNCTION_322_0();
      v46 = v45;
      v47 = sub_19393CA30();
      v20 = v46;
      v11 = v24;
      v24 = v15;
      if ((v47 & 1) == 0)
      {
        goto LABEL_53;
      }
    }
  }

  else if (v21)
  {
    goto LABEL_53;
  }

  if (v12)
  {
    if (!v23)
    {
      goto LABEL_53;
    }

    if (v10 != v20 || v12 != v23)
    {
      OUTLINED_FUNCTION_322_0();
      v49 = sub_19393CA30();
      v11 = v24;
      v24 = v15;
      if ((v49 & 1) == 0)
      {
        goto LABEL_53;
      }
    }
  }

  else if (v23)
  {
    goto LABEL_53;
  }

  if (v13 && v24 && (v11 != v22 || v13 != v24))
  {
    OUTLINED_FUNCTION_95_3();
    sub_19393CA30();
  }

LABEL_53:
  OUTLINED_FUNCTION_196();
}

void ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation.hash(into:)()
{
  OUTLINED_FUNCTION_108_0();
  OUTLINED_FUNCTION_77_1();
  v1 = v0[3];
  v2 = v0[5];
  v3 = v0[7];
  v4 = v0[9];
  v5 = v0[11];
  if (v0[1])
  {
    sub_19393CAD0();
    sub_19393C640();
    if (v1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_19393CAD0();
    if (v1)
    {
LABEL_3:
      sub_19393CAD0();
      sub_19393C640();
      if (v2)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  sub_19393CAD0();
  if (v2)
  {
LABEL_4:
    sub_19393CAD0();
    OUTLINED_FUNCTION_2_14();
    sub_19393C640();
    if (v3)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  sub_19393CAD0();
  if (v3)
  {
LABEL_5:
    sub_19393CAD0();
    sub_19393C640();
    if (v4)
    {
      goto LABEL_6;
    }

LABEL_14:
    sub_19393CAD0();
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_15:
    sub_19393CAD0();
    OUTLINED_FUNCTION_107();
    return;
  }

LABEL_13:
  sub_19393CAD0();
  if (!v4)
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_19393CAD0();
  sub_19393C640();
  if (!v5)
  {
    goto LABEL_15;
  }

LABEL_7:
  sub_19393CAD0();
  OUTLINED_FUNCTION_107();

  sub_19393C640();
}

uint64_t sub_19371B050()
{
  OUTLINED_FUNCTION_149_9();
  v0(v2);
  return sub_19393CB00();
}

void static ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_284_2();
  v3 = *v2;
  v4 = v2[1];
  v72 = v2[2];
  v77 = v2[3];
  v78 = v2[5];
  v75 = v2[7];
  v69 = v2[9];
  v70 = v2[4];
  v63 = v2[10];
  v64 = v2[8];
  v66 = v2[11];
  v67 = v2[6];
  memcpy(__dst, (v0 + 96), sizeof(__dst));
  v6 = *v1;
  v5 = v1[1];
  v7 = v1[3];
  v71 = v1[2];
  v9 = v1[4];
  v8 = v1[5];
  v10 = v1[6];
  v76 = v1[8];
  v68 = v1[9];
  v73 = v1[10];
  v74 = v1[7];
  v65 = v1[11];
  memcpy(v86, v1 + 12, 0x60uLL);
  if (!v4)
  {
    if (v5)
    {
      goto LABEL_62;
    }

LABEL_10:
    if (v77)
    {
      v12 = v78;
      if (!v7)
      {
        goto LABEL_62;
      }

      v13 = v8;
      v14 = v9;
      v15 = v72 == v71 && v77 == v7;
      if (!v15 && (sub_19393CA30() & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v12 = v78;
      v13 = v8;
      v14 = v9;
      if (v7)
      {
        goto LABEL_62;
      }
    }

    if (v12)
    {
      v16 = v73;
      v17 = v74;
      v19 = v75;
      v18 = v76;
      if (!v13)
      {
        goto LABEL_62;
      }

      v20 = v70 == v14 && v12 == v13;
      if (!v20 && (OUTLINED_FUNCTION_270_2() & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v16 = v73;
      v17 = v74;
      v19 = v75;
      v18 = v76;
      if (v13)
      {
        goto LABEL_62;
      }
    }

    if (v19)
    {
      if (!v17)
      {
        goto LABEL_62;
      }

      v21 = v67 == v10 && v19 == v17;
      if (!v21 && (OUTLINED_FUNCTION_444() & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    else if (v17)
    {
      goto LABEL_62;
    }

    if (v69)
    {
      if (!v68)
      {
        goto LABEL_62;
      }

      v22 = v64 == v18 && v69 == v68;
      if (!v22 && (sub_19393CA30() & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    else if (v68)
    {
      goto LABEL_62;
    }

    if (v66)
    {
      if (!v65)
      {
        goto LABEL_62;
      }

      v23 = v63 == v16 && v66 == v65;
      if (!v23 && (sub_19393CA30() & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    else if (v65)
    {
      goto LABEL_62;
    }

    v24 = __dst[0];
    v25 = __dst[1];
    v27 = v86[0];
    v26 = v86[1];
    if (__dst[1] == 1)
    {
      if (v86[1] == 1)
      {
        __src[0] = __dst[0];
        __src[1] = 1;
        OUTLINED_FUNCTION_445();
        OUTLINED_FUNCTION_294(__dst, v82);
        OUTLINED_FUNCTION_294(v86, v82);
        OUTLINED_FUNCTION_15_1();
LABEL_64:
        sub_19344E6DC(v28, v29, v30);
        goto LABEL_62;
      }

      OUTLINED_FUNCTION_9_12();
      sub_193448804(v43, v44, v45, v46);
      OUTLINED_FUNCTION_9_12();
      sub_193448804(v47, v48, v49, v50);
    }

    else
    {
      __src[0] = __dst[0];
      __src[1] = __dst[1];
      OUTLINED_FUNCTION_445();
      memcpy(v82, __src, sizeof(v82));
      if (v26 != 1)
      {
        OUTLINED_FUNCTION_451(&v81[2]);
        v81[0] = v27;
        v81[1] = v26;
        static ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation.== infix(_:_:)();
        memcpy(v79, v81, sizeof(v79));
        OUTLINED_FUNCTION_9_12();
        sub_193448804(v51, v52, v53, v54);
        OUTLINED_FUNCTION_9_12();
        sub_193448804(v55, v56, v57, v58);
        OUTLINED_FUNCTION_9_12();
        sub_193448804(v59, v60, v61, v62);
        sub_1937376D8(v79);
        memcpy(v80, v82, sizeof(v80));
        sub_1937376D8(v80);
        v81[0] = v24;
        v81[1] = v25;
        memcpy(&v81[2], (v0 + 112), 0x50uLL);
        OUTLINED_FUNCTION_175();
        goto LABEL_64;
      }

      memcpy(v81, __src, sizeof(v81));
      OUTLINED_FUNCTION_9_12();
      sub_193448804(v31, v32, v33, v34);
      OUTLINED_FUNCTION_9_12();
      sub_193448804(v35, v36, v37, v38);
      OUTLINED_FUNCTION_9_12();
      sub_193448804(v39, v40, v41, v42);
      sub_1937376D8(v81);
    }

    __src[0] = v24;
    __src[1] = v25;
    memcpy(&__src[2], (v0 + 112), 0x50uLL);
    __src[12] = v27;
    __src[13] = v26;
    OUTLINED_FUNCTION_451(&v84);
    sub_19344E6DC(__src, &qword_1EAE41AE0, &qword_1939807E8);
    goto LABEL_62;
  }

  if (v5)
  {
    v11 = v3 == v6 && v4 == v5;
    if (v11 || (OUTLINED_FUNCTION_270_2() & 1) != 0)
    {
      goto LABEL_10;
    }
  }

LABEL_62:
  OUTLINED_FUNCTION_116();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents.hash(into:)()
{
  OUTLINED_FUNCTION_168_5();
  v2 = v0[3];
  v3 = v0[5];
  v4 = v0[9];
  v8 = v0[7];
  v9 = v0[11];
  v7 = v0[12];
  v5 = v0[13];
  if (v0[1])
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_113_3();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v2)
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_145_9();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v3)
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_186_3();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v8)
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_259_1();
    sub_19393C640();
    if (v4)
    {
      goto LABEL_12;
    }

LABEL_15:
    OUTLINED_FUNCTION_104_0();
    if (v9)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_104_0();
  if (!v4)
  {
    goto LABEL_15;
  }

LABEL_12:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_263_1();
  sub_19393C640();
  if (v9)
  {
LABEL_13:
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_261_0();
    sub_19393C640();
    goto LABEL_17;
  }

LABEL_16:
  OUTLINED_FUNCTION_104_0();
LABEL_17:
  if (v5 == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  memcpy(&__src[2], (v1 + 112), 0x50uLL);
  __src[0] = v7;
  __src[1] = v5;
  OUTLINED_FUNCTION_103_0();
  v11[0] = v7;
  v11[1] = v5;
  memcpy(v12, (v1 + 112), sizeof(v12));
  sub_1936C44D4(v11, __dst);
  ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation.hash(into:)();
  memcpy(__dst, __src, 0x60uLL);
  return sub_1937376D8(__dst);
}

uint64_t sub_19371B67C()
{
  OUTLINED_FUNCTION_149_9();
  v0(v2);
  return sub_19393CB00();
}

uint64_t sub_19371B6D8()
{
  OUTLINED_FUNCTION_320_0();
  v0(v2);
  return sub_19393CB00();
}

void static ToolKitToolTypedValue.PrimitiveValue.Person.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  v4 = *(v2 + 8);
  memcpy(__dst, (v2 + 16), sizeof(__dst));
  v192 = *(v3 + 104);
  v193 = *(v3 + 96);
  v195 = *(v3 + 112);
  v197 = *(v3 + 120);
  v198 = *(v3 + 128);
  memcpy(v208, (v3 + 144), sizeof(v208));
  v187 = *(v3 + 352);
  v188 = *(v3 + 336);
  v189 = *(v3 + 360);
  v190 = *(v3 + 344);
  v185 = *(v3 + 368);
  v186 = *(v3 + 376);
  v183 = *(v3 + 384);
  v184 = *(v3 + 392);
  v181 = *(v3 + 400);
  v182 = *(v3 + 408);
  HIDWORD(v180) = *(v3 + 416);
  v5 = *(v3 + 417);
  v6 = *(v1 + 8);
  memcpy(v209, (v1 + 16), sizeof(v209));
  v7 = *(v1 + 96);
  v8 = *(v1 + 104);
  v9 = *(v1 + 120);
  v199 = *(v1 + 112);
  v194 = *(v1 + 128);
  v196 = *(v1 + 136);
  memcpy(v210, (v1 + 144), sizeof(v210));
  if (v4 >> 60 == 15)
  {
    if (v6 >> 60 == 15)
    {
      v178 = *(v1 + 336);
      v179 = *(v1 + 344);
      v175 = *(v1 + 360);
      v176 = *(v1 + 352);
      v173 = *(v1 + 368);
      v174 = *(v1 + 376);
      v171 = *(v1 + 384);
      v172 = *(v1 + 392);
      v169 = *(v1 + 400);
      v170 = *(v1 + 408);
      LODWORD(v168) = v5;
      HIDWORD(v168) = *(v1 + 416);
      HIDWORD(v167) = *(v1 + 417);
      v10 = OUTLINED_FUNCTION_159_8();
      sub_19345012C(v10, v11);
      goto LABEL_8;
    }

LABEL_5:
    v12 = OUTLINED_FUNCTION_159_8();
    sub_19345012C(v12, v13);
    v14 = OUTLINED_FUNCTION_113_3();
LABEL_6:
    sub_19345012C(v14, v15);
    goto LABEL_25;
  }

  if (v6 >> 60 == 15)
  {
    goto LABEL_5;
  }

  v178 = *(v1 + 336);
  v179 = *(v1 + 344);
  v175 = *(v1 + 360);
  v176 = *(v1 + 352);
  v173 = *(v1 + 368);
  v174 = *(v1 + 376);
  v171 = *(v1 + 384);
  v172 = *(v1 + 392);
  v169 = *(v1 + 400);
  v170 = *(v1 + 408);
  LODWORD(v168) = v5;
  HIDWORD(v168) = *(v1 + 416);
  HIDWORD(v167) = *(v1 + 417);
  v16 = OUTLINED_FUNCTION_159_8();
  v17 = MEMORY[0x193B172A0](v16);
  v18 = OUTLINED_FUNCTION_113_3();
  sub_19345012C(v18, v19);
  v20 = OUTLINED_FUNCTION_185();
  sub_19345012C(v20, v21);
  if ((v17 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_8:
  v22 = __dst[5];
  v23 = v209[5];
  if (!__dst[5])
  {
    if (!v209[5])
    {
      v24 = v7;
      OUTLINED_FUNCTION_141_8();
      *(&__src[2] + 1) = 0;
      OUTLINED_FUNCTION_308_1();
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v68, v69, v70, v71);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v72, v73, v74, v75);
      OUTLINED_FUNCTION_247_2(__src);
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_75_0();
    sub_193448804(v43, v44, v45, v46);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v47, v48, v49, v50);
LABEL_15:
    OUTLINED_FUNCTION_141_8();
    *(&__src[2] + 1) = v22;
    OUTLINED_FUNCTION_308_1();
    v63 = *(v1 + 32);
    __src[5] = *(v1 + 16);
    __src[6] = v63;
    *&__src[7] = *(v1 + 48);
    *(&__src[7] + 1) = v23;
    v64 = *(v1 + 64);
    __src[9] = *(v1 + 80);
    __src[8] = v64;
    v65 = &qword_1EAE41AC0;
    v66 = &qword_1939807C0;
    v67 = __src;
LABEL_16:
    sub_19344E6DC(v67, v65, v66);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_141_8();
  *(&__src[2] + 1) = v22;
  OUTLINED_FUNCTION_308_1();
  memcpy(v203, __src, 0x50uLL);
  if (!v23)
  {
    memcpy(v206, __src, 0x50uLL);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v51, v52, v53, v54);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v55, v56, v57, v58);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v59, v60, v61, v62);
    sub_1937375CC(v206);
    goto LABEL_15;
  }

  v24 = v7;
  v25 = *(v1 + 32);
  v206[0] = *(v1 + 16);
  v206[1] = v25;
  v26 = *(v1 + 48);
  v27 = *(v1 + 80);
  v206[3] = *(v1 + 64);
  v206[4] = v27;
  *&v206[2] = v26;
  *(&v206[2] + 1) = v23;
  OUTLINED_FUNCTION_75_0();
  sub_193448804(v28, v29, v30, v31);
  OUTLINED_FUNCTION_75_0();
  sub_193448804(v32, v33, v34, v35);
  OUTLINED_FUNCTION_75_0();
  sub_193448804(v36, v37, v38, v39);
  v40 = static ToolKitToolDisplayRepresentation.== infix(_:_:)(v203, v206);
  memcpy(v202, v206, 0x50uLL);
  sub_1937375CC(v202);
  memcpy(v204, v203, 0x50uLL);
  sub_1937375CC(v204);
  v41 = *(v3 + 32);
  v206[0] = *(v3 + 16);
  v206[1] = v41;
  *&v206[2] = *(v3 + 48);
  *(&v206[2] + 1) = v22;
  v42 = *(v3 + 80);
  v206[3] = *(v3 + 64);
  v206[4] = v42;
  OUTLINED_FUNCTION_247_2(v206);
  if (!v40)
  {
    goto LABEL_25;
  }

LABEL_18:
  if (v192 == 1)
  {
    sub_193737648(v193, 1);
    if (v8 == 1)
    {
      sub_193737648(v24, 1);
      OUTLINED_FUNCTION_41_23();
      sub_193737690(v76, v77);
      goto LABEL_27;
    }

    v84 = OUTLINED_FUNCTION_33_7();
    v191 = v24;
    sub_193737648(v84, v85);
LABEL_24:
    v86 = OUTLINED_FUNCTION_28_27();
    sub_193737690(v86, v87);
    sub_193737690(v191, v8);
    goto LABEL_25;
  }

  *&__src[0] = v193;
  *(&__src[0] + 1) = v192;
  *&__src[1] = v195;
  *(&__src[1] + 1) = v197;
  __src[2] = v198;
  v166 = v9;
  if (v8 == 1)
  {
    v78 = OUTLINED_FUNCTION_28_27();
    sub_193737648(v78, v79);
    v191 = v7;
    v80 = OUTLINED_FUNCTION_173();
    sub_193737648(v80, v81);
    v82 = OUTLINED_FUNCTION_28_27();
    sub_193737648(v82, v83);

    goto LABEL_24;
  }

  v203[0] = v7;
  v203[1] = v8;
  v203[2] = v199;
  LOWORD(v203[3]) = v9 & 0x1FF;
  v203[4] = v194;
  v203[5] = v196;
  v88 = OUTLINED_FUNCTION_28_27();
  sub_193737648(v88, v89);
  sub_193737648(v7, v8);
  v90 = OUTLINED_FUNCTION_28_27();
  sub_193737648(v90, v91);
  static ToolKitToolTypedValue.PrimitiveValue.Person.Handle.== infix(_:_:)();
  v93 = v92;

  OUTLINED_FUNCTION_41_23();
  sub_193737690(v94, v95);
  if ((v93 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_27:
  memcpy(__src, v208, 0xC0uLL);
  memcpy(&__src[12], v210, 0xC0uLL);
  memcpy(v206, v208, sizeof(v206));
  if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v206) == 1)
  {
    memcpy(v203, &__src[12], 0xC0uLL);
    if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v203) == 1)
    {
      OUTLINED_FUNCTION_392(v204);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v96, v97, v98, v99);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v100, v101, v102, v103);
      v104 = OUTLINED_FUNCTION_247_2(v204);
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_75_0();
    sub_193448804(v123, v124, v125, v126);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v127, v128, v129, v130);
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_392(v204);
  memcpy(v203, &__src[12], 0xC0uLL);
  if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v203) == 1)
  {
    OUTLINED_FUNCTION_392(v202);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v111, v112, v113, v114);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v115, v116, v117, v118);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v119, v120, v121, v122);
    sub_193737708(v202);
LABEL_33:
    memcpy(v203, __src, sizeof(v203));
    v65 = &unk_1EAE41AE8;
    v66 = &unk_1939807F0;
    v67 = v203;
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_75_0();
  sub_193448804(v131, v132, v133, v134);
  OUTLINED_FUNCTION_75_0();
  sub_193448804(v135, v136, v137, v138);
  OUTLINED_FUNCTION_75_0();
  sub_193448804(v139, v140, v141, v142);
  static ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents.== infix(_:_:)();
  v144 = v143;
  memcpy(v200, &__src[12], sizeof(v200));
  sub_193737708(v200);
  OUTLINED_FUNCTION_392(v201);
  sub_193737708(v201);
  OUTLINED_FUNCTION_392(v202);
  v104 = OUTLINED_FUNCTION_247_2(v202);
  if ((v144 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_35:
  v145 = v190;
  if (v190)
  {
    v105 = v178;
    v106 = v179;
    if (!v179)
    {
      goto LABEL_25;
    }

    if (v188 != v178 || v190 != v179)
    {
      v104 = sub_19393CA30();
      if ((v104 & 1) == 0)
      {
        goto LABEL_25;
      }
    }
  }

  else if (v179)
  {
    goto LABEL_25;
  }

  v147 = v175;
  if (v189 >> 60 != 15)
  {
    if (v175 >> 60 != 15)
    {
      sub_193450268(v187, v189);
      v154 = OUTLINED_FUNCTION_55();
      sub_193450268(v154, v155);
      v156 = OUTLINED_FUNCTION_127();
      v157 = MEMORY[0x193B172A0](v156);
      v158 = OUTLINED_FUNCTION_55();
      sub_19345012C(v158, v159);
      v160 = OUTLINED_FUNCTION_127();
      sub_19345012C(v160, v161);
      if ((v157 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_50;
    }

    goto LABEL_48;
  }

  if (v175 >> 60 != 15)
  {
LABEL_48:
    OUTLINED_FUNCTION_443(v104, v145, v105, v106, v107, v108, v109, v110, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189);
    v150 = OUTLINED_FUNCTION_115_0();
    sub_193450268(v150, v151);
    v152 = OUTLINED_FUNCTION_13_5();
    sub_19345012C(v152, v153);
    v14 = OUTLINED_FUNCTION_115_0();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_443(v104, v145, v105, v106, v107, v108, v109, v110, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189);
  sub_193450268(v177, v147);
  v148 = OUTLINED_FUNCTION_13_5();
  sub_19345012C(v148, v149);
LABEL_50:
  if (v186)
  {
    if (!v174)
    {
      goto LABEL_25;
    }

    v162 = v185 == v173 && v186 == v174;
    if (!v162 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v174)
  {
    goto LABEL_25;
  }

  if (v184)
  {
    if (!v172)
    {
      goto LABEL_25;
    }

    v163 = v183 == v171 && v184 == v172;
    if (!v163 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v172)
  {
    goto LABEL_25;
  }

  if (v182 && v170 && (v181 != v169 || v182 != v170))
  {
    sub_19393CA30();
  }

LABEL_25:
  OUTLINED_FUNCTION_116();
}

void ToolKitToolTypedValue.PrimitiveValue.Person.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  v1 = *(v0 + 56);
  v18 = *(v0 + 104);
  v2 = *(v0 + 120);
  v12 = *(v0 + 112);
  v13 = *(v0 + 136);
  v14 = *(v0 + 344);
  v15 = *(v0 + 360);
  v3 = *(v0 + 376);
  v16 = *(v0 + 392);
  v4 = *(v0 + 408);
  v5 = *(v0 + 416);
  v17 = *(v0 + 417);
  if (*(v0 + 8) >> 60 == 15)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_262_0();
    sub_19393BD50();
  }

  if (v1)
  {
    v6 = *(v0 + 32);
    __src[0] = *(v0 + 16);
    __src[1] = v6;
    v7 = *(v0 + 48);
    v8 = *(v0 + 80);
    __src[3] = *(v0 + 64);
    __src[4] = v8;
    *&__src[2] = v7;
    *(&__src[2] + 1) = v1;
    OUTLINED_FUNCTION_103_0();
    v9 = *(v0 + 32);
    v20[0] = *(v0 + 16);
    v20[1] = v9;
    *&v20[2] = *(v0 + 48);
    *(&v20[2] + 1) = v1;
    v10 = *(v0 + 80);
    v20[3] = *(v0 + 64);
    v20[4] = v10;
    sub_1936D0D2C(v20, __dst);
    ToolKitToolDisplayRepresentation.hash(into:)();
    memcpy(__dst, __src, 0x50uLL);
    sub_1937375CC(__dst);
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v18 == 1)
  {
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_103_0();
  if (v18)
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_263_1();
    sub_19393C640();
    if ((v2 & 0x100) == 0)
    {
LABEL_10:
      OUTLINED_FUNCTION_103_0();
      __dst[0] = v12;
      LOBYTE(__dst[1]) = v2 & 1;
      v11 = ToolKitToolTypedValue.PrimitiveValue.Person.Handle.Type.rawValue.getter();
      MEMORY[0x193B18030](v11);
      goto LABEL_13;
    }
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_104_0();
LABEL_13:
  if (v13)
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_261_0();
    sub_19393C640();
    goto LABEL_16;
  }

LABEL_15:
  OUTLINED_FUNCTION_104_0();
LABEL_16:
  memcpy(__dst, (v0 + 144), 0xC0uLL);
  if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(__dst) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    memcpy(__src, (v0 + 144), sizeof(__src));
    sub_1936C4288(__src, v20);
    ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents.hash(into:)();
    memcpy(v20, (v0 + 144), sizeof(v20));
    sub_193737708(v20);
  }

  if (v14)
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_344();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v15 >> 60 == 15)
  {
    OUTLINED_FUNCTION_104_0();
    if (v3)
    {
      goto LABEL_24;
    }
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393BD50();
    if (v3)
    {
LABEL_24:
      OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_438();
      sub_19393C640();
      if (v16)
      {
        goto LABEL_25;
      }

LABEL_29:
      OUTLINED_FUNCTION_104_0();
      if (v4)
      {
        goto LABEL_26;
      }

      goto LABEL_30;
    }
  }

  OUTLINED_FUNCTION_104_0();
  if (!v16)
  {
    goto LABEL_29;
  }

LABEL_25:
  OUTLINED_FUNCTION_103_0();
  sub_19393C640();
  if (v4)
  {
LABEL_26:
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
    goto LABEL_31;
  }

LABEL_30:
  OUTLINED_FUNCTION_104_0();
LABEL_31:
  if (v5 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v17 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_116();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  ToolKitToolTypedValue.PrimitiveValue.Person.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19371C440()
{
  sub_19393CAB0();
  ToolKitToolTypedValue.PrimitiveValue.Person.hash(into:)();
  return sub_19393CB00();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.File.displayRepresentation.getter()
{
  OUTLINED_FUNCTION_153_9();
  OUTLINED_FUNCTION_304_1(v0);
  v1 = OUTLINED_FUNCTION_299_1();
  return OUTLINED_FUNCTION_278_3(v1, v2, &qword_1EAE41AB8, &qword_1939807B8, v3, v4, v5, v6, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18);
}

void *ToolKitToolTypedValue.PrimitiveValue.File.displayRepresentation.setter()
{
  OUTLINED_FUNCTION_108_13();
  OUTLINED_FUNCTION_304_1(v1);
  sub_19344E6DC(&v3, &qword_1EAE41AB8, &qword_1939807B8);
  return OUTLINED_FUNCTION_276_3((v0 + 16));
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.File.url.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

void ToolKitToolTypedValue.PrimitiveValue.File.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  sub_19345012C(v1, 0xF000000000000000);
  *v0 = xmmword_193950B20;
  OUTLINED_FUNCTION_64_17();
  sub_19344E6DC(&v3, &qword_1EAE41AB8, &qword_1939807B8);
  *&v2 = OUTLINED_FUNCTION_319_1();
  v0[5] = v2;
  v0[6] = v2;
}

void static ToolKitToolTypedValue.PrimitiveValue.File.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  memcpy(v122, (v2 + 16), sizeof(v122));
  v4 = *(v3 + 96);
  v5 = *(v3 + 104);
  memcpy(v123, (v1 + 16), 0x50uLL);
  v7 = *(v1 + 96);
  v6 = *(v1 + 104);
  OUTLINED_FUNCTION_296_1();
  if (!v11 & v10)
  {
    OUTLINED_FUNCTION_340_0();
    if (!v11 & v10)
    {
      v92 = v4;
      v8 = OUTLINED_FUNCTION_17_36();
      sub_19345012C(v8, v9);
      goto LABEL_10;
    }

LABEL_8:
    v12 = OUTLINED_FUNCTION_17_36();
    sub_19345012C(v12, v13);
    v14 = OUTLINED_FUNCTION_33_7();
    sub_19345012C(v14, v15);
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_340_0();
  if (!v11 & v10)
  {
    goto LABEL_8;
  }

  v92 = v4;
  v16 = OUTLINED_FUNCTION_17_36();
  v17 = MEMORY[0x193B172A0](v16);
  v18 = OUTLINED_FUNCTION_33_7();
  sub_19345012C(v18, v19);
  v20 = OUTLINED_FUNCTION_82();
  sub_19345012C(v20, v21);
  if ((v17 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_10:
  v22 = v122[5];
  v23 = v123[5];
  if (v122[5])
  {
    OUTLINED_FUNCTION_280_1();
    OUTLINED_FUNCTION_398();
    OUTLINED_FUNCTION_361_1(v24, v25, v26, v27, v28, v29, v30, v31, v89, v92, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117[0]);
    if (v23)
    {
      v32 = *(v1 + 32);
      __src[0] = *(v1 + 16);
      __src[1] = v32;
      v33 = *(v1 + 48);
      v34 = *(v1 + 80);
      __src[3] = *(v1 + 64);
      __src[4] = v34;
      *&__src[2] = v33;
      *(&__src[2] + 1) = v23;
      v35 = OUTLINED_FUNCTION_401();
      OUTLINED_FUNCTION_90_10(v35, v36);
      v37 = OUTLINED_FUNCTION_400();
      v39 = OUTLINED_FUNCTION_90_10(v37, v38);
      v47 = OUTLINED_FUNCTION_419(v39, v40, v41, v42, v43, v44, v45, v46, v90, v93, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], v23, *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117[0]);
      OUTLINED_FUNCTION_90_10(v47, v48);
      v49 = static ToolKitToolDisplayRepresentation.== infix(_:_:)(&v107, __src);
      memcpy(__dst, __src, sizeof(__dst));
      v50 = sub_1937375CC(__dst);
      OUTLINED_FUNCTION_363_0(v50, v51, v52, v53, v54, v55, v56, v57, v91, v94, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), v107);
      sub_1937375CC(&v96);
      v58 = *(v3 + 32);
      __src[0] = *(v3 + 16);
      __src[1] = v58;
      *&__src[2] = *(v3 + 48);
      *(&__src[2] + 1) = v22;
      v59 = *(v3 + 80);
      __src[3] = *(v3 + 64);
      __src[4] = v59;
      OUTLINED_FUNCTION_146();
      sub_19344E6DC(v60, v61, v62);
      if (!v49 || !v5)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    memcpy(__src, v117, sizeof(__src));
    v64 = OUTLINED_FUNCTION_401();
    OUTLINED_FUNCTION_27_7(v64, v65);
    v66 = OUTLINED_FUNCTION_400();
    v68 = OUTLINED_FUNCTION_27_7(v66, v67);
    v76 = OUTLINED_FUNCTION_419(v68, v69, v70, v71, v72, v73, v74, v75, v90, v93, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117[0]);
    OUTLINED_FUNCTION_27_7(v76, v77);
    sub_1937375CC(__src);
LABEL_23:
    OUTLINED_FUNCTION_280_1();
    OUTLINED_FUNCTION_398();
    v78 = *(v1 + 32);
    v117[5] = *(v1 + 16);
    v117[6] = v78;
    v118 = *(v1 + 48);
    v119 = v23;
    v79 = *(v1 + 80);
    v120 = *(v1 + 64);
    v121 = v79;
    sub_19344E6DC(v117, &qword_1EAE41AC0, &qword_1939807C0);
    goto LABEL_24;
  }

  if (v123[5])
  {
    OUTLINED_FUNCTION_27_7(v122, v117);
    OUTLINED_FUNCTION_27_7(v123, v117);
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_280_1();
  v117[2] = *(v3 + 48);
  v80 = *(v3 + 80);
  v117[3] = *(v3 + 64);
  v117[4] = v80;
  OUTLINED_FUNCTION_75_0();
  sub_193448804(v81, v82, v83, v84);
  OUTLINED_FUNCTION_75_0();
  sub_193448804(v85, v86, v87, v88);
  OUTLINED_FUNCTION_247_2(v117);
  if (!v5)
  {
    goto LABEL_24;
  }

LABEL_14:
  if (v6)
  {
    if (v92 != v7 || v5 != v6)
    {
      OUTLINED_FUNCTION_184_7(v92);
    }
  }

LABEL_24:
  OUTLINED_FUNCTION_116();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.App.bundleIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_19371CAB0()
{
  OUTLINED_FUNCTION_153_9();
  OUTLINED_FUNCTION_304_1(v0);
  v1 = OUTLINED_FUNCTION_299_1();
  return OUTLINED_FUNCTION_278_3(v1, v2, &qword_1EAE41AB8, &qword_1939807B8, v3, v4, v5, v6, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18);
}

void *ToolKitToolTypedValue.PrimitiveValue.App.displayRepresentation.setter()
{
  OUTLINED_FUNCTION_108_13();
  OUTLINED_FUNCTION_304_1(v1);
  sub_19344E6DC(&v3, &qword_1EAE41AB8, &qword_1939807B8);
  return OUTLINED_FUNCTION_276_3((v0 + 16));
}

double ToolKitToolTypedValue.PrimitiveValue.App.init()()
{
  *&v1 = OUTLINED_FUNCTION_227_3();
  v2[4] = v1;
  v2[5] = v1;
  v2[2] = v1;
  v2[3] = v1;
  *v2 = v1;
  v2[1] = v1;
  v3 = v2 + 1;
  OUTLINED_FUNCTION_268_1(v5);
  sub_19344E6DC(v5, &qword_1EAE41AB8, &qword_1939807B8);
  result = 0.0;
  *v3 = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  v0[5] = 0u;
  return result;
}

uint64_t sub_19371CBC8()
{
  OUTLINED_FUNCTION_284_2();
  v3 = *v2;
  v4 = v2[1];
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  v6 = *v1;
  v5 = v1[1];
  OUTLINED_FUNCTION_304_1(v169);
  if (v4)
  {
    if (!v5)
    {
      goto LABEL_17;
    }

    if (v3 != v6 || v4 != v5)
    {
      OUTLINED_FUNCTION_115_0();
      OUTLINED_FUNCTION_284();
      if ((sub_19393CA30() & 1) == 0)
      {
        goto LABEL_17;
      }
    }
  }

  else if (v5)
  {
LABEL_17:
    v55 = 0;
    return v55 & 1;
  }

  v8 = __dst[5];
  v9 = v170;
  if (!__dst[5])
  {
    if (!v170)
    {
      OUTLINED_FUNCTION_309_0();
      v158 = v108;
      v159 = 0;
      v109 = *(v0 + 80);
      v160 = *(v0 + 64);
      v161 = v109;
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v110, v111, v112, v113);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v114, v115, v116, v117);
      OUTLINED_FUNCTION_247_2(v154);
      v55 = 1;
      return v55 & 1;
    }

    OUTLINED_FUNCTION_9_12();
    sub_193448804(v75, v76, v77, v78);
    OUTLINED_FUNCTION_9_12();
    sub_193448804(v79, v80, v81, v82);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_309_0();
  v19 = OUTLINED_FUNCTION_183_3(v10, v11, v12, v13, v14, v15, v16, v17, *(v0 + 64), *(v0 + 80), v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, *__src, *&__src[8], v139, *(&v139 + 1), v140, v141, v142[0], v142[1], v143, *(&v143 + 1), v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154[0], v155, v156, v157, v18, v8, v160, v161);
  if (!v9)
  {
    OUTLINED_FUNCTION_285_2(v19, v20, v21, v22, v23, v24, v25, v26, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, __src[0], *&__src[8], v139, *(&v139 + 1), v140, v141, v142[0], v142[1], v143, *(&v143 + 1), v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154[0]);
    OUTLINED_FUNCTION_9_12();
    sub_193448804(v83, v84, v85, v86);
    OUTLINED_FUNCTION_9_12();
    v91 = sub_193448804(v87, v88, v89, v90);
    OUTLINED_FUNCTION_225_3(v91, v92, v93, v94, v95, v96, v97, v98, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, *__src, *&__src[8], v139, *(&v139 + 1), v140, v141, v142[0], v142[1], v143, *(&v143 + 1), v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154[0]);
    OUTLINED_FUNCTION_9_12();
    sub_193448804(v99, v100, v101, v102);
    sub_1937375CC(__src);
LABEL_16:
    OUTLINED_FUNCTION_309_0();
    v158 = v103;
    v159 = v8;
    v104 = *(v0 + 80);
    v160 = *(v0 + 64);
    v161 = v104;
    v105 = *(v1 + 2);
    v162 = *(v1 + 1);
    v163 = v105;
    v164 = v1[6];
    v165 = v9;
    v106 = *(v1 + 5);
    v166 = *(v1 + 4);
    v167 = v106;
    sub_19344E6DC(v154, &qword_1EAE41AC0, &qword_1939807C0);
    goto LABEL_17;
  }

  v27 = *(v1 + 2);
  *__src = *(v1 + 1);
  v139 = v27;
  v28 = v1[6];
  v29 = *(v1 + 5);
  *v142 = *(v1 + 4);
  v143 = v29;
  v140 = v28;
  OUTLINED_FUNCTION_202_3(__dst, v20, v21, v22, v23, v24, v25, v26, v118, v119, v120);
  OUTLINED_FUNCTION_202_3(v169, v30, v31, v32, v33, v34, v35, v36, v118, v119, v120);
  v44 = OUTLINED_FUNCTION_202_3(v154, v37, v38, v39, v40, v41, v42, v43, v118, v119, v120);
  v52 = OUTLINED_FUNCTION_410(v44, v45, v46, v47, v48, v49, v50, v51, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, *__src, *&__src[8], v139, *(&v139 + 1), v140, v9, v142[0], v142[1], v143, *(&v143 + 1), v144);
  v54 = static ToolKitToolDisplayRepresentation.== infix(_:_:)(v52, v53);
  v55 = v54;
  OUTLINED_FUNCTION_297_2(v54, v56, v57, v58, v59, v60, v61, v62, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, __src[0]);
  v63 = sub_1937375CC(&v118);
  OUTLINED_FUNCTION_290_1(v63, v64, v65, v66, v67, v68, v69, v70, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, *__src, *&__src[8], v139, *(&v139 + 1), v140, v141, v142[0], v142[1], v143, *(&v143 + 1));
  sub_1937375CC(&v128);
  v71 = *(v0 + 32);
  *__src = *(v0 + 16);
  v139 = v71;
  v140 = *(v0 + 48);
  v141 = v8;
  OUTLINED_FUNCTION_409();
  OUTLINED_FUNCTION_188_4();
  sub_19344E6DC(v72, v73, v74);
  return v55 & 1;
}

uint64_t _s27IntelligencePlatformLibrary07ToolKitD10TypedValueO09PrimitiveG0O3AppV4hash4intoys6HasherVz_tF_0()
{
  OUTLINED_FUNCTION_168_5();
  v2 = *(v0 + 56);
  if (*(v0 + 8))
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_125();
    sub_19393C640();
    if (v2)
    {
LABEL_3:
      v13 = *(v1 + 16);
      OUTLINED_FUNCTION_182_6();
      v3 = *(v1 + 32);
      v14[0] = *(v1 + 16);
      v14[1] = v3;
      v15 = *(v1 + 48);
      v16 = v2;
      v4 = *(v1 + 80);
      v17 = *(v1 + 64);
      v18 = v4;
      sub_1936D0D2C(v14, v19);
      OUTLINED_FUNCTION_39_20();
      ToolKitToolDisplayRepresentation.hash(into:)();
      OUTLINED_FUNCTION_316_1(v19, v5, v6, v7, v8, v9, v10, v11, v13);
      return sub_1937375CC(v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  return OUTLINED_FUNCTION_104_0();
}

uint64_t _s27IntelligencePlatformLibrary07ToolKitD10TypedValueO09PrimitiveG0O3AppV04hashG0Sivg_0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 56);
  sub_19393CAB0();
  if (!v1)
  {
    sub_19393CAD0();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_19393CAD0();
    return sub_19393CB00();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_175();
  sub_19393C640();
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = *(v0 + 32);
  __src[0] = *(v0 + 16);
  __src[1] = v3;
  *&__src[2] = *(v0 + 48);
  *(&__src[2] + 1) = v2;
  v4 = *(v0 + 80);
  __src[3] = *(v0 + 64);
  __src[4] = v4;
  memcpy(v13, __src, sizeof(v13));
  sub_19393CAD0();
  sub_1936D0D2C(__src, v15);
  ToolKitToolDisplayRepresentation.hash(into:)();
  OUTLINED_FUNCTION_316_1(v15, v5, v6, v7, v8, v9, v10, v11, v13[0]);
  sub_1937375CC(v15);
  return sub_19393CB00();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.calendar.getter()
{
  OUTLINED_FUNCTION_142_10();
  memcpy(v0, v1, 0x49uLL);
  v2 = OUTLINED_FUNCTION_13_0();
  v4 = memcpy(v2, v3, 0x49uLL);
  return OUTLINED_FUNCTION_278_3(v4, v5, &qword_1EAE41AF0, &qword_1939807F8, v6, v7, v8, v9, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
}

void *ToolKitToolTypedValue.PrimitiveValue.DateComponents.calendar.setter()
{
  OUTLINED_FUNCTION_59_19();
  memcpy(v0, v1, 0x49uLL);
  sub_19344E6DC(&v5, &qword_1EAE41AF0, &qword_1939807F8);
  v2 = OUTLINED_FUNCTION_13_5();
  return memcpy(v2, v3, 0x49uLL);
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.timeZoneIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.year.setter(uint64_t result, char a2)
{
  *(v2 + 112) = result;
  *(v2 + 120) = a2 & 1;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.month.setter(uint64_t result, char a2)
{
  *(v2 + 128) = result;
  *(v2 + 136) = a2 & 1;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.day.setter(uint64_t result, char a2)
{
  *(v2 + 144) = result;
  *(v2 + 152) = a2 & 1;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.hour.setter(uint64_t result, char a2)
{
  *(v2 + 160) = result;
  *(v2 + 168) = a2 & 1;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.minute.setter(uint64_t result, char a2)
{
  *(v2 + 176) = result;
  *(v2 + 184) = a2 & 1;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.second.setter(uint64_t result, char a2)
{
  *(v2 + 192) = result;
  *(v2 + 200) = a2 & 1;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.nanosecond.setter(uint64_t result, char a2)
{
  *(v2 + 208) = result;
  *(v2 + 216) = a2 & 1;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.weekday.setter(uint64_t result, char a2)
{
  *(v2 + 224) = result;
  *(v2 + 232) = a2 & 1;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.weekdayOrdinal.setter(uint64_t result, char a2)
{
  *(v2 + 240) = result;
  *(v2 + 248) = a2 & 1;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.quarter.setter(uint64_t result, char a2)
{
  *(v2 + 256) = result;
  *(v2 + 264) = a2 & 1;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.weekOfMonth.setter(uint64_t result, char a2)
{
  *(v2 + 272) = result;
  *(v2 + 280) = a2 & 1;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.weekOfYear.setter(uint64_t result, char a2)
{
  *(v2 + 288) = result;
  *(v2 + 296) = a2 & 1;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.yearForWeekOfYear.setter(uint64_t result, char a2)
{
  *(v2 + 304) = result;
  *(v2 + 312) = a2 & 1;
  return result;
}

double ToolKitToolTypedValue.PrimitiveValue.DateComponents.init()@<D0>(char *a1@<X8>)
{
  OUTLINED_FUNCTION_224_1(a1, v4[0]);
  sub_19344E6DC(v4, &qword_1EAE41AF0, &qword_1939807F8);
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  result = 0.0;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 57) = 0u;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  *(v1 + 80) = 0;
  *(v1 + 104) = v2;
  *(v1 + 112) = 0;
  *(v1 + 120) = v2;
  *(v1 + 128) = 0;
  *(v1 + 136) = v2;
  *(v1 + 144) = 0;
  *(v1 + 152) = v2;
  *(v1 + 160) = 0;
  *(v1 + 168) = v2;
  *(v1 + 176) = 0;
  *(v1 + 184) = v2;
  *(v1 + 192) = 0;
  *(v1 + 200) = v2;
  *(v1 + 208) = 0;
  *(v1 + 216) = v2;
  *(v1 + 224) = 0;
  *(v1 + 232) = v2;
  *(v1 + 240) = 0;
  *(v1 + 248) = v2;
  *(v1 + 256) = 0;
  *(v1 + 264) = v2;
  *(v1 + 272) = 0;
  *(v1 + 280) = v2;
  *(v1 + 288) = 0;
  *(v1 + 296) = v2;
  *(v1 + 304) = 0;
  *(v1 + 312) = v2;
  return result;
}

uint64_t sub_19371D504@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolTypedValue.PrimitiveValue.DateComponents.CalendarIdentifier.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19371D52C@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolTypedValue.PrimitiveValue.DateComponents.CalendarIdentifier.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.Calendar.timeZoneIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.Calendar.localeIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.Calendar.firstWeekday.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.Calendar.minimumDaysInFirstWeek.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

double ToolKitToolTypedValue.PrimitiveValue.DateComponents.Calendar.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  return result;
}

void static ToolKitToolTypedValue.PrimitiveValue.DateComponents.Calendar.== infix(_:_:)()
{
  OUTLINED_FUNCTION_273_1();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v9 = *(v1 + 32);
  v8 = *(v1 + 40);
  if (*(v0 + 9))
  {
    if ((*(v1 + 9) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (*(v1 + 9))
    {
      goto LABEL_23;
    }

    v13 = *(v0 + 16);
    OUTLINED_FUNCTION_250_1();
    v10 = ToolKitToolTypedValue.PrimitiveValue.DateComponents.CalendarIdentifier.rawValue.getter();
    v11 = v10 == ToolKitToolTypedValue.PrimitiveValue.DateComponents.CalendarIdentifier.rawValue.getter();
    v2 = v13;
    if (!v11)
    {
      goto LABEL_23;
    }
  }

  if (v3)
  {
    if (!v6)
    {
      goto LABEL_23;
    }

    v11 = v2 == v7 && v3 == v6;
    if (!v11)
    {
      OUTLINED_FUNCTION_177_5();
      if ((sub_19393CA30() & 1) == 0)
      {
        goto LABEL_23;
      }
    }
  }

  else if (v6)
  {
    goto LABEL_23;
  }

  if (v5 && v8 && (v4 != v9 || v5 != v8))
  {
    OUTLINED_FUNCTION_125();
    OUTLINED_FUNCTION_46_14();
    sub_19393CA30();
  }

LABEL_23:
  OUTLINED_FUNCTION_270();
}

void ToolKitToolTypedValue.PrimitiveValue.DateComponents.Calendar.hash(into:)()
{
  OUTLINED_FUNCTION_108_0();
  OUTLINED_FUNCTION_148_2();
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  if (v7 == 1)
  {
    OUTLINED_FUNCTION_104_0();
    if (v1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = *(v0 + 40);
    v8 = *(v0 + 48);
    v9 = *(v0 + 72);
    OUTLINED_FUNCTION_103_0();
    v6 = v9;
    v3 = v8;
    v2 = v11;
    OUTLINED_FUNCTION_177_1();
    v10 = ToolKitToolTypedValue.PrimitiveValue.DateComponents.CalendarIdentifier.rawValue.getter();
    MEMORY[0x193B18030](v10);
    if (v1)
    {
LABEL_3:
      OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_113_3();
      sub_19393C640();
      if (v2)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_104_0();
  if (v2)
  {
LABEL_4:
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_102_4();
    sub_19393C640();
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_10:
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v3);
    if (!v6)
    {
      goto LABEL_6;
    }

LABEL_11:
    OUTLINED_FUNCTION_104_0();
    goto LABEL_12;
  }

LABEL_9:
  OUTLINED_FUNCTION_104_0();
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_5:
  OUTLINED_FUNCTION_104_0();
  if (v6)
  {
    goto LABEL_11;
  }

LABEL_6:
  OUTLINED_FUNCTION_103_0();
  MEMORY[0x193B18060](v5);
LABEL_12:
  OUTLINED_FUNCTION_107();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.Calendar.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  ToolKitToolTypedValue.PrimitiveValue.DateComponents.Calendar.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19371DA9C()
{
  sub_19393CAB0();
  ToolKitToolTypedValue.PrimitiveValue.DateComponents.Calendar.hash(into:)();
  return sub_19393CB00();
}

void static ToolKitToolTypedValue.PrimitiveValue.DateComponents.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  memcpy(v32, v2, 0x49uLL);
  v4 = *(v3 + 11);
  v21 = *(v3 + 10);
  memcpy(v33, v1, 0x49uLL);
  v6 = *(v1 + 10);
  v5 = *(v1 + 11);
  *&v31[23] = *(v1 + 2);
  v7 = v32[3];
  *&v31[7] = *v1;
  v8 = v33[3];
  if (v32[3] != 1)
  {
    OUTLINED_FUNCTION_192_2();
    memcpy(__dst, __src, 0x49uLL);
    if (v8 != 1)
    {
      v24[0] = *v1;
      v12 = *(v1 + 2);
      v13 = v1[3];
      v24[2] = v1[2];
      v24[3] = v13;
      *(&v24[3] + 9) = *(v1 + 57);
      *&v24[1] = v12;
      *(&v24[1] + 1) = v8;
      OUTLINED_FUNCTION_90_10(v32, v23);
      OUTLINED_FUNCTION_90_10(v33, v23);
      OUTLINED_FUNCTION_90_10(__src, v23);
      static ToolKitToolTypedValue.PrimitiveValue.DateComponents.Calendar.== infix(_:_:)();
      v15 = v14;
      memcpy(v22, v24, 0x49uLL);
      sub_193737738(v22);
      memcpy(v23, __dst, 0x49uLL);
      sub_193737738(v23);
      v24[0] = *v3;
      *&v24[1] = *(v3 + 2);
      *(&v24[1] + 1) = v7;
      v16 = *(v3 + 3);
      v24[2] = *(v3 + 2);
      v24[3] = v16;
      *(&v24[3] + 9) = *(v3 + 57);
      OUTLINED_FUNCTION_146();
      sub_19344E6DC(v17, v18, v19);
      if ((v15 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_10;
    }

    memcpy(v24, __src, 0x49uLL);
    OUTLINED_FUNCTION_27_7(v32, v23);
    OUTLINED_FUNCTION_27_7(v33, v23);
    OUTLINED_FUNCTION_27_7(__src, v23);
    sub_193737738(v24);
LABEL_7:
    OUTLINED_FUNCTION_192_2();
    *v27 = *v31;
    *&v27[15] = *&v31[15];
    v28 = v8;
    v10 = v1[2];
    v11 = v1[3];
    *(v30 + 9) = *(v1 + 57);
    v29 = v10;
    v30[0] = v11;
    sub_19344E6DC(__src, &qword_1EAE41AF8, &qword_193980800);
    goto LABEL_8;
  }

  if (v33[3] != 1)
  {
    OUTLINED_FUNCTION_27_7(v32, __src);
    OUTLINED_FUNCTION_27_7(v33, __src);
    goto LABEL_7;
  }

  *__src = *v3;
  *&__src[16] = *(v3 + 2);
  *&__src[24] = 1;
  v9 = *(v3 + 3);
  *&__src[32] = *(v3 + 2);
  *&__src[48] = v9;
  *&__src[57] = *(v3 + 57);
  OUTLINED_FUNCTION_449(v32, __dst);
  OUTLINED_FUNCTION_449(v33, __dst);
  sub_19344E6DC(__src, &qword_1EAE41AF0, &qword_1939807F8);
LABEL_10:
  if (v4 && v5 && (v21 != v6 || v4 != v5))
  {
    OUTLINED_FUNCTION_184_7(v21);
  }

LABEL_8:
  OUTLINED_FUNCTION_116();
}

void ToolKitToolTypedValue.PrimitiveValue.DateComponents.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  v1 = *(v0 + 3);
  v2 = *(v0 + 11);
  v3 = *(v0 + 12);
  v4 = *(v0 + 104);
  v5 = *(v0 + 120);
  v10 = *(v0 + 14);
  v11 = *(v0 + 16);
  v6 = *(v0 + 136);
  v12 = *(v0 + 18);
  v13 = *(v0 + 20);
  v23 = *(v0 + 152);
  v24 = *(v0 + 168);
  v14 = *(v0 + 22);
  v15 = *(v0 + 24);
  v25 = *(v0 + 184);
  v26 = *(v0 + 200);
  v16 = *(v0 + 26);
  v17 = *(v0 + 28);
  v27 = *(v0 + 216);
  v28 = *(v0 + 232);
  v18 = *(v0 + 30);
  v19 = *(v0 + 32);
  v29 = *(v0 + 248);
  v30 = *(v0 + 264);
  v20 = *(v0 + 34);
  v21 = *(v0 + 36);
  v31 = *(v0 + 280);
  v32 = *(v0 + 296);
  v22 = *(v0 + 38);
  v33 = *(v0 + 312);
  if (v1 == 1)
  {
    OUTLINED_FUNCTION_104_0();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __src[0] = *v0;
    v7 = *(v0 + 2);
    v8 = v0[3];
    __src[2] = v0[2];
    __src[3] = v8;
    *(&__src[3] + 9) = *(v0 + 57);
    *&__src[1] = v7;
    *(&__src[1] + 1) = v1;
    OUTLINED_FUNCTION_103_0();
    v35 = *v0;
    v36 = *(v0 + 2);
    v37 = v1;
    v9 = v0[3];
    v38 = v0[2];
    v39[0] = v9;
    *(v39 + 9) = *(v0 + 57);
    sub_1936C521C(&v35, v40);
    ToolKitToolTypedValue.PrimitiveValue.DateComponents.Calendar.hash(into:)();
    memcpy(v40, __src, 0x49uLL);
    sub_193737738(v40);
    if (v2)
    {
LABEL_3:
      OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_114_0();
      sub_19393C640();
      if (v4)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_104_0();
  if (v4)
  {
LABEL_4:
    OUTLINED_FUNCTION_104_0();
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_10:
    OUTLINED_FUNCTION_104_0();
    if (!v6)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  OUTLINED_FUNCTION_103_0();
  MEMORY[0x193B18060](v3);
  if (v5)
  {
    goto LABEL_10;
  }

LABEL_5:
  OUTLINED_FUNCTION_103_0();
  MEMORY[0x193B18060](v10);
  if (!v6)
  {
LABEL_6:
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v11);
    goto LABEL_12;
  }

LABEL_11:
  OUTLINED_FUNCTION_104_0();
LABEL_12:
  if (v23)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v12);
  }

  if (v24)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v13);
  }

  if (v25)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v14);
  }

  if (v26)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v15);
  }

  if (v27)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v16);
  }

  if (v28)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v17);
  }

  if (v29)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v18);
  }

  if (v30)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v19);
  }

  if (v31)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v20);
  }

  if (v32)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v21);
  }

  if (v33)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v22);
  }

  OUTLINED_FUNCTION_116();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  ToolKitToolTypedValue.PrimitiveValue.DateComponents.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19371E51C()
{
  sub_19393CAB0();
  ToolKitToolTypedValue.PrimitiveValue.DateComponents.hash(into:)();
  return sub_19393CB00();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.calendar.getter()
{
  OUTLINED_FUNCTION_142_10();
  memcpy(v0, v1, 0x49uLL);
  v2 = OUTLINED_FUNCTION_13_0();
  v4 = memcpy(v2, v3, 0x49uLL);
  return OUTLINED_FUNCTION_278_3(v4, v5, &qword_1EAE41AF0, &qword_1939807F8, v6, v7, v8, v9, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
}

void *ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.calendar.setter()
{
  OUTLINED_FUNCTION_59_19();
  memcpy(v0, v1, 0x49uLL);
  sub_19344E6DC(&v5, &qword_1EAE41AF0, &qword_1939807F8);
  v2 = OUTLINED_FUNCTION_13_5();
  return memcpy(v2, v3, 0x49uLL);
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.frequency.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 80) = *result;
  *(v1 + 88) = v2;
  *(v1 + 89) = v3;
  return result;
}

__n128 ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.end.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[8].n128_u64[0];
  v3 = v1[8].n128_u32[2];
  v4 = v1[8].n128_u16[6];
  result = v1[7];
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u16[6] = v4;
  a1[1].n128_u32[2] = v3;
  return result;
}

__n128 ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.end.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u32[2];
  v4 = a1[1].n128_u16[6];
  result = *a1;
  v1[7] = *a1;
  v1[8].n128_u64[0] = v2;
  v1[8].n128_u16[6] = v4;
  v1[8].n128_u32[2] = v3;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.matchingPolicy.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 144) = *result;
  *(v1 + 152) = v2;
  *(v1 + 153) = v3;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.repeatedTimePolicy.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 160) = *result;
  *(v1 + 168) = v2;
  *(v1 + 169) = v3;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.months.setter(uint64_t a1)
{

  *(v1 + 176) = a1;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.daysOfTheYear.setter(uint64_t a1)
{

  *(v1 + 184) = a1;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.daysOfTheMonth.setter(uint64_t a1)
{

  *(v1 + 192) = a1;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.weeks.setter(uint64_t a1)
{

  *(v1 + 200) = a1;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.weekdays.setter(uint64_t a1)
{

  *(v1 + 208) = a1;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.hours.setter(uint64_t a1)
{

  *(v1 + 216) = a1;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.minutes.setter(uint64_t a1)
{

  *(v1 + 224) = a1;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.seconds.setter(uint64_t a1)
{

  *(v1 + 232) = a1;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.setPositions.setter(uint64_t a1)
{

  *(v1 + 240) = a1;
  return result;
}

double ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.init()@<D0>(char *a1@<X8>)
{
  OUTLINED_FUNCTION_224_1(a1, v5[0]);
  sub_19344E6DC(v5, &qword_1EAE41AF0, &qword_1939807F8);
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  *(v1 + 80) = 0;
  *(v1 + 88) = 256;
  result = 0.0;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 57) = 0u;
  *(v1 + 96) = 0;
  *(v1 + 104) = v2;
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  *(v1 + 112) = 0;
  *(v1 + 140) = 768;
  *(v1 + 136) = 0;
  *(v1 + 144) = 0;
  *(v1 + 152) = 256;
  *(v1 + 160) = 0;
  *(v1 + 168) = 256;
  v4 = MEMORY[0x1E69E7CC0];
  *(v1 + 176) = MEMORY[0x1E69E7CC0];
  *(v1 + 184) = v4;
  *(v1 + 192) = v4;
  *(v1 + 200) = v4;
  *(v1 + 208) = v4;
  *(v1 + 216) = v4;
  *(v1 + 224) = v4;
  *(v1 + 232) = v4;
  *(v1 + 240) = v4;
  return result;
}