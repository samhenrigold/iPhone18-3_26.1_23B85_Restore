uint64_t ToolKitToolDisplayRepresentation.DisplayValue.DisplayValueEnum.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_2_9();
  }

  if (*v0)
  {
    return 0x74786554746C41;
  }

  return 0x656C746974627553;
}

void ToolKitToolDisplayRepresentation.DisplayValue.DisplayValueEnum.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x656C746974627553 && v0 == 0xE800000000000000;
    if (v6 || (OUTLINED_FUNCTION_29_2(0x656C746974627553) & 1) != 0)
    {

      v5 = 0;
    }

    else if (v1 == 0x74786554746C41 && v0 == 0xE700000000000000)
    {

      v5 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_22_7(0x74786554746C41);
      OUTLINED_FUNCTION_89();
      v5 = v1 & 1;
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t sub_1936DE0D8()
{
  OUTLINED_FUNCTION_92_10();
  if (v0 < 0)
  {
    if (v1 < 0)
    {
      v2 = v3;
      OUTLINED_FUNCTION_89_15();

      v21 = OUTLINED_FUNCTION_87_2(v13, v14, v15, v16, v17, v18, v19, v20, v23, v24, v25);
      v2(v21);
      goto LABEL_7;
    }
  }

  else if ((v1 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_89_15();

    v12 = OUTLINED_FUNCTION_87_2(v4, v5, v6, v7, v8, v9, v10, v11, v23, v24, v25);
    static ToolKitToolDisplayRepresentation.Storage.== infix(_:_:)(v12);
LABEL_7:
    OUTLINED_FUNCTION_61_0();

    return v2 & 1;
  }

  LOBYTE(v2) = 0;
  return v2 & 1;
}

uint64_t sub_1936DE194()
{
  OUTLINED_FUNCTION_71_19();
  if ((v0 & 0x8000000000000000) != 0)
  {
    v1 = OUTLINED_FUNCTION_303((v0 & 0x7FFFFFFFFFFFFFFFLL));
    v2(v1);
  }

  else
  {
    OUTLINED_FUNCTION_303(v0);
    sub_1936E1D58();
  }

  OUTLINED_FUNCTION_39_20();
  return sub_19393C540();
}

uint64_t static ToolKitToolDisplayRepresentation.Image.== infix(_:_:)()
{
  OUTLINED_FUNCTION_92_10();
  if (v0 < 0)
  {
    if (v1 < 0)
    {
      OUTLINED_FUNCTION_42_28();

      v20 = OUTLINED_FUNCTION_87_2(v12, v13, v14, v15, v16, v17, v18, v19, v23, v24, v25);
      static ToolKitToolDisplayRepresentation.Image.Static.== infix(_:_:)(v20, v21);
      goto LABEL_7;
    }
  }

  else if ((v1 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_89_15();

    v11 = OUTLINED_FUNCTION_87_2(v3, v4, v5, v6, v7, v8, v9, v10, v23, v24, v25);
    static ToolKitToolDisplayRepresentation.Storage.== infix(_:_:)(v11);
LABEL_7:
    OUTLINED_FUNCTION_61_0();

    return v2 & 1;
  }

  v2 = 0;
  return v2 & 1;
}

uint64_t static ToolKitToolDisplayRepresentation.Image.Static.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 62;
  if (!v4)
  {
    if (!(v3 >> 62))
    {
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      v7 = *(v3 + 16);
      v8 = *(v3 + 24);

      sub_193450688(v7, v8);
      LOBYTE(v5) = MEMORY[0x193B172A0](v6, v5, v7, v8);
      sub_193446A6C(v7, v8);

      return v5 & 1;
    }

    goto LABEL_16;
  }

  if (v4 == 1)
  {
    if (v3 >> 62 == 1)
    {
      OUTLINED_FUNCTION_97_8();

      static ToolKitToolDisplayRepresentation.Image.Static.Symbol.== infix(_:_:)();
      OUTLINED_FUNCTION_120_7();

      return v3 & 1;
    }

LABEL_16:
    LOBYTE(v3) = 0;
    return v3 & 1;
  }

  OUTLINED_FUNCTION_112_8();
  if (!v12)
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_181_6();
  v12 = v12 && v10 == v11;
  if (v12)
  {
    LOBYTE(v3) = 1;
    return v3 & 1;
  }

  return sub_19393CA30();
}

uint64_t ToolKitToolDisplayRepresentation.Image.hash(into:)()
{
  OUTLINED_FUNCTION_71_19();
  if ((v0 & 0x8000000000000000) != 0)
  {
    OUTLINED_FUNCTION_65_18();
    sub_1936E1E00();
  }

  else
  {
    OUTLINED_FUNCTION_303(v0);
    sub_1936E1D58();
  }

  OUTLINED_FUNCTION_39_20();
  return sub_19393C540();
}

uint64_t ToolKitToolDisplayRepresentation.Image.Static.hash(into:)()
{
  OUTLINED_FUNCTION_71_19();
  v1 = v0 >> 62;
  if (v0 >> 62)
  {
    v2 = (v0 & 0x3FFFFFFFFFFFFFFFLL);
    if (v1 == 1)
    {
      OUTLINED_FUNCTION_101_13(v2);
      sub_1936E1E54();
      OUTLINED_FUNCTION_39_20();
      return sub_19393C540();
    }

    else
    {
      OUTLINED_FUNCTION_147_7();
      OUTLINED_FUNCTION_33_25();
      sub_19393C640();
    }
  }

  else
  {
    v4 = OUTLINED_FUNCTION_225();
    sub_193450688(v4, v5);
    OUTLINED_FUNCTION_33_25();
    sub_19393BD50();
    v6 = OUTLINED_FUNCTION_225();

    return sub_193446A6C(v6, v7);
  }
}

uint64_t ToolKitToolCoercionDefinition.CoercionDirection.description.getter()
{
  if (*(v0 + 8))
  {
    return 0x74726F707845;
  }

  else
  {
    return 0x6E776F6E6B6E55;
  }
}

void ToolKitToolCoercionDefinition.CoercionDirection.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0 || (v1 == 0x74726F707845 ? (v5 = v0 == 0xE600000000000000) : (v5 = 0), v5))
  {
  }

  else
  {
    OUTLINED_FUNCTION_21_38(0x74726F707845);
    OUTLINED_FUNCTION_61_0();
  }

  OUTLINED_FUNCTION_53_22();
}

void ToolKitToolTriggerDefinition.Version1.Flag.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
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

  if (a2 != 4)
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

uint64_t ToolKitToolTriggerDefinition.Version1.Flag.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_19397F8D8[result];
  }

  return result;
}

unint64_t ToolKitToolTriggerDefinition.Version1.Flag.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0x6E49726573557349;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

void ToolKitToolTriggerDefinition.Version1.Flag.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_164_6();
    v8 = v4 && v7 == v0;
    if (v8 || (OUTLINED_FUNCTION_0_9(v6, v7) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_26_4();
      v10 = v4 && v9 == v0;
      if (v10 || (OUTLINED_FUNCTION_25_7(20, v9) & 1) != 0)
      {

        v5 = 1;
      }

      else if (v1 == 0x6E49726573557349 && v0 == 0xEF64657461697469)
      {

        OUTLINED_FUNCTION_55_0();
      }

      else
      {
        OUTLINED_FUNCTION_0_9(0x6E49726573557349, 0xEF64657461697469);
        OUTLINED_FUNCTION_61_0();

        OUTLINED_FUNCTION_152_0();
        if (v4)
        {
          v5 = 0;
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t ToolKitToolToolInvocationOptions.InteractionMode.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x4679616C70736944;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_150_8();
      break;
    case 2:
      result = 0x6C6E4F6563696F56;
      break;
    case 3:
      result = OUTLINED_FUNCTION_157_8();
      break;
    default:
      return result;
  }

  return result;
}

void ToolKitToolToolInvocationOptions.InteractionMode.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x4679616C70736944 && v0 == 0xEE0064726177726FLL;
    if (v6 || (OUTLINED_FUNCTION_0_9(0x4679616C70736944, 0xEE0064726177726FLL) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_150_8();
      v9 = v1 == v7 && v0 == v8;
      if (v9 || (OUTLINED_FUNCTION_0_9(v7, v8) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v10 = v1 == 0x6C6E4F6563696F56 && v0 == 0xE900000000000079;
        if (v10 || (OUTLINED_FUNCTION_30_22(0x6C6E4F6563696F56, 121) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v11 = OUTLINED_FUNCTION_157_8();
          if (v1 == v11 && v0 == v12)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            OUTLINED_FUNCTION_0_9(v11, v12);
            OUTLINED_FUNCTION_61_0();

            OUTLINED_FUNCTION_102_0();
            if (v4)
            {
              v5 = 0;
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t ToolKitToolToolInvocationOptions.InterfaceIdiom.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    case 9:
      v3 = 9;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static ToolKitToolToolInvocationOptions.InterfaceIdiom.allCases.getter()
{
  v0 = OUTLINED_FUNCTION_95_0();
  sub_1934B0FCC(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_16_0();
  if (!(!v12 & v11))
  {
    OUTLINED_FUNCTION_39(v10);
    OUTLINED_FUNCTION_31_17();
    sub_1934B0FCC(v72, v73, v74, v75, v76, v77);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v6, v7, v8, v9);
  if (v18 != v19)
  {
    v78 = OUTLINED_FUNCTION_39(v17);
    OUTLINED_FUNCTION_85(v78, v79, v80, v81, &qword_1EAE40D50, &qword_19397F780);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v13, v14, v15, v16);
  if (v18 != v19)
  {
    OUTLINED_FUNCTION_39(v24);
    OUTLINED_FUNCTION_57();
    v20 = sub_1934B0FCC(v82, v83, v84, v85, v86, v87);
    v23 = v20;
  }

  OUTLINED_FUNCTION_9_7(v20, v21, v22, v23);
  if (!(v18 ^ v19 | v12))
  {
    OUTLINED_FUNCTION_39(v29);
    OUTLINED_FUNCTION_31_17();
    v25 = sub_1934B0FCC(v88, v89, v90, v91, v92, v93);
    v28 = v25;
  }

  OUTLINED_FUNCTION_3_7(v25, v26, v27, v28);
  if (!(v18 ^ v19 | v12))
  {
    v94 = OUTLINED_FUNCTION_39(v34);
    v30 = OUTLINED_FUNCTION_85(v94, v95, v96, v97, &qword_1EAE40D50, &qword_19397F780);
    v33 = v30;
  }

  OUTLINED_FUNCTION_5_11(v30, v31, v32, v33);
  if (!(v18 ^ v19 | v12))
  {
    OUTLINED_FUNCTION_39(v39);
    OUTLINED_FUNCTION_31_17();
    v35 = sub_1934B0FCC(v98, v99, v100, v101, v102, v103);
    v38 = v35;
  }

  OUTLINED_FUNCTION_7_3(v35, v36, v37, v38);
  if (!(v18 ^ v19 | v12))
  {
    v104 = OUTLINED_FUNCTION_39(v44);
    v40 = OUTLINED_FUNCTION_85(v104, v105, v106, v107, &qword_1EAE40D50, &qword_19397F780);
    v43 = v40;
  }

  OUTLINED_FUNCTION_47_5(v40, v41, v42, v43);
  OUTLINED_FUNCTION_4(v45);
  OUTLINED_FUNCTION_171_4();
  if (!(v18 ^ v19 | v12))
  {
    OUTLINED_FUNCTION_39(v50);
    OUTLINED_FUNCTION_31_17();
    v46 = sub_1934B0FCC(v108, v109, v110, v111, v112, v113);
    v49 = v46;
  }

  OUTLINED_FUNCTION_50(v46, v47, v48, v49);
  OUTLINED_FUNCTION_4(v51);
  OUTLINED_FUNCTION_170_5();
  if (!(v18 ^ v19 | v12))
  {
    v114 = OUTLINED_FUNCTION_39(v56);
    v52 = OUTLINED_FUNCTION_85(v114, v115, v116, v117, &qword_1EAE40D50, &qword_19397F780);
    v55 = v52;
  }

  OUTLINED_FUNCTION_47_5(v52, v53, v54, v55);
  OUTLINED_FUNCTION_4(v57);
  OUTLINED_FUNCTION_169_7();
  if (!(v18 ^ v19 | v12))
  {
    OUTLINED_FUNCTION_39(v62);
    OUTLINED_FUNCTION_31_17();
    v58 = sub_1934B0FCC(v118, v119, v120, v121, v122, v123);
    v61 = v58;
  }

  OUTLINED_FUNCTION_50(v58, v59, v60, v61);
  OUTLINED_FUNCTION_4(v63);
  OUTLINED_FUNCTION_99_3();
  if (!(v18 ^ v19 | v12))
  {
    v124 = OUTLINED_FUNCTION_39(v68);
    v64 = OUTLINED_FUNCTION_85(v124, v125, v126, v127, &qword_1EAE40D50, &qword_19397F780);
    v67 = v64;
  }

  OUTLINED_FUNCTION_47_5(v64, v65, v66, v67);
  return OUTLINED_FUNCTION_89_3(v69, v70);
}

uint64_t ToolKitToolToolInvocationOptions.InterfaceIdiom.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x79616C50726143;
  switch(*v0)
  {
    case 1:
      result = 0x6565724673657945;
      break;
    case 2:
      result = 0x646F50656D6F48;
      break;
    case 3:
      result = 6512973;
      break;
    case 4:
      result = 0x73646F50726941;
      break;
    case 5:
      result = OUTLINED_FUNCTION_88_15();
      break;
    case 6:
      result = OUTLINED_FUNCTION_106_14();
      break;
    case 7:
      result = OUTLINED_FUNCTION_112_13();
      break;
    case 8:
      result = OUTLINED_FUNCTION_146_9();
      break;
    case 9:
      result = 0x6E6F69736956;
      break;
    default:
      return result;
  }

  return result;
}

void ToolKitToolToolInvocationOptions.InterfaceIdiom.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x79616C50726143 && v0 == 0xE700000000000000;
    if (v6 || (OUTLINED_FUNCTION_22_7(0x79616C50726143) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = v1 == 0x6565724673657945 && v0 == 0xE800000000000000;
      if (v7 || (OUTLINED_FUNCTION_29_2(0x6565724673657945) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v8 = v1 == 0x646F50656D6F48 && v0 == 0xE700000000000000;
        if (v8 || (OUTLINED_FUNCTION_22_7(0x646F50656D6F48) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v9 = v1 == 6512973 && v0 == 0xE300000000000000;
          if (v9 || (OUTLINED_FUNCTION_0_9(6512973, 0xE300000000000000) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v10 = v1 == 0x73646F50726941 && v0 == 0xE700000000000000;
            if (v10 || (OUTLINED_FUNCTION_22_7(0x73646F50726941) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              v11 = OUTLINED_FUNCTION_80_16();
              v12 = v4 && v0 == 0xE500000000000000;
              if (v12 || (OUTLINED_FUNCTION_15_14(v11) & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                v13 = v1 == 6578512 && v0 == 0xE300000000000000;
                if (v13 || (OUTLINED_FUNCTION_0_9(6578512, 0xE300000000000000) & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else
                {
                  v14 = OUTLINED_FUNCTION_177_4();
                  v15 = v4 && v0 == 0xE500000000000000;
                  if (v15 || (OUTLINED_FUNCTION_15_14(v14) & 1) != 0)
                  {

                    OUTLINED_FUNCTION_91_3();
                  }

                  else
                  {
                    v16 = v1 == 30292 && v0 == 0xE200000000000000;
                    if (v16 || (OUTLINED_FUNCTION_0_9(30292, 0xE200000000000000) & 1) != 0)
                    {

                      OUTLINED_FUNCTION_94_3();
                    }

                    else
                    {
                      v17 = OUTLINED_FUNCTION_161_6(1769171286);
                      if (v4 && v0 == 0xE600000000000000)
                      {

                        OUTLINED_FUNCTION_103_1();
                      }

                      else
                      {
                        OUTLINED_FUNCTION_21_38(v17);
                        OUTLINED_FUNCTION_61_0();

                        v5 = 9;
                        if ((v1 & 1) == 0)
                        {
                          v5 = 0;
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

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t ToolKitTranscript.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for ToolKitTranscript();
  v3 = v2[5];
  sub_19343DAD8();
  v4 = a1 + v2[6];
  sub_1935A74B0(v4);
  v5 = v2[7];
  sub_19344B7DC();
  v6 = v2[8];
  sub_193735738(a1 + v6);
  *a1 = *sub_1937354EC();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v7 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v7);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  sub_193442B60(a1 + v5, &qword_1EAE3AA88, &qword_19394F9C0);
  v8 = sub_19393BE60();
  __swift_storeEnumTagSinglePayload(a1 + v5, 1, 1, v8);
  sub_1936D3290(v10);
  memcpy(__dst, a1 + v6, sizeof(__dst));
  sub_193442B60(__dst, &qword_1EAE408D0, &qword_193980840);
  memcpy(a1 + v6, v10, 0x278uLL);
  result = sub_19393C510();
  *(a1 + v2[9]) = result;
  return result;
}

uint64_t static ToolKitTranscript.== infix(_:_:)(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  v5 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v45 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B4E8, &unk_193952CF0);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v41 - v14;
  v42 = type metadata accessor for ToolKitTranscript();
  v43 = v4;
  v16 = *(v13 + 56);
  sub_1936E1EFC();
  v44 = v3;
  sub_1936E1EFC();
  OUTLINED_FUNCTION_31(v15);
  if (v17)
  {
    OUTLINED_FUNCTION_31(&v15[v16]);
    if (v17)
    {
      sub_193442B60(v15, &qword_1EAE3AA88, &qword_19394F9C0);
      goto LABEL_11;
    }

LABEL_9:
    v18 = &qword_1EAE3B4E8;
    v19 = &unk_193952CF0;
    v20 = v15;
LABEL_18:
    sub_193442B60(v20, v18, v19);
    goto LABEL_19;
  }

  sub_1936E1EFC();
  OUTLINED_FUNCTION_31(&v15[v16]);
  if (v17)
  {
    (*(v45 + 8))(v11, v5);
    goto LABEL_9;
  }

  v21 = v45;
  v22 = v41;
  (*(v45 + 32))(v41, &v15[v16], v5);
  sub_193678F88(&qword_1ED5029B8, MEMORY[0x1E69695C8]);
  v23 = sub_19393C550();
  v24 = *(v21 + 8);
  v24(v22, v5);
  v24(v11, v5);
  sub_193442B60(v15, &qword_1EAE3AA88, &qword_19394F9C0);
  if ((v23 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_11:
  v26 = v42;
  v25 = v43;
  v27 = *(v42 + 32);
  v28 = OUTLINED_FUNCTION_122_9();
  memcpy(v28, (v25 + v27), 0x278uLL);
  v29 = *(v26 + 32);
  v30 = OUTLINED_FUNCTION_123_12();
  v31 = v44;
  memcpy(v30, (v44 + v29), 0x278uLL);
  memcpy(v52, (v25 + v27), 0x278uLL);
  memcpy(&v52[632], (v31 + v29), 0x278uLL);
  memcpy(v53, (v25 + v27), 0x278uLL);
  if (sub_1936D3298(v53) == 1)
  {
    memcpy(v50, &v52[632], 0x278uLL);
    if (sub_1936D3298(v50) == 1)
    {
      OUTLINED_FUNCTION_105_13(v51);
      v32 = OUTLINED_FUNCTION_122_9();
      OUTLINED_FUNCTION_132_8(v32, v49);
      v33 = OUTLINED_FUNCTION_123_12();
      OUTLINED_FUNCTION_132_8(v33, v49);
      sub_193442B60(v51, &qword_1EAE408D0, &qword_193980840);
LABEL_22:
      v38 = sub_1936DFF20(*(v25 + *(v26 + 36)), *(v31 + *(v26 + 36)));
      return v38 & 1;
    }

    v36 = OUTLINED_FUNCTION_122_9();
    OUTLINED_FUNCTION_132_8(v36, v51);
    v37 = OUTLINED_FUNCTION_123_12();
    OUTLINED_FUNCTION_132_8(v37, v51);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_105_13(v51);
  OUTLINED_FUNCTION_105_13(v49);
  memcpy(v50, &v52[632], 0x278uLL);
  if (sub_1936D3298(v50) == 1)
  {
    memcpy(v48, v49, sizeof(v48));
    v34 = OUTLINED_FUNCTION_122_9();
    OUTLINED_FUNCTION_132_8(v34, v47);
    v35 = OUTLINED_FUNCTION_123_12();
    OUTLINED_FUNCTION_132_8(v35, v47);
    OUTLINED_FUNCTION_132_8(v51, v47);
    sub_1936E1F5C(v48);
LABEL_17:
    memcpy(v50, v52, sizeof(v50));
    v18 = &unk_1EAE40BF8;
    v19 = &unk_19397EAA8;
    v20 = v50;
    goto LABEL_18;
  }

  memcpy(v48, &v52[632], sizeof(v48));
  OUTLINED_FUNCTION_122_9();
  OUTLINED_FUNCTION_141_7();
  OUTLINED_FUNCTION_123_12();
  OUTLINED_FUNCTION_141_7();
  OUTLINED_FUNCTION_141_7();
  sub_1936E1FB0();
  v40 = sub_19393C550();
  memcpy(v46, v48, sizeof(v46));
  sub_1936E1F5C(v46);
  memcpy(v47, v49, sizeof(v47));
  sub_1936E1F5C(v47);
  OUTLINED_FUNCTION_105_13(v48);
  sub_193442B60(v48, &qword_1EAE408D0, &qword_193980840);
  if (v40)
  {
    goto LABEL_22;
  }

LABEL_19:
  v38 = 0;
  return v38 & 1;
}

uint64_t ToolKitTranscript.hash(into:)(const void *a1)
{
  v2 = v1;
  v4 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v16[-v11];
  v13 = type metadata accessor for ToolKitTranscript();
  sub_1936E1EFC();
  if (__swift_getEnumTagSinglePayload(v12, 1, v4) == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    (*(v6 + 32))(v9, v12, v4);
    sub_19393CAD0();
    sub_193678F88(&qword_1EAE3AD68, MEMORY[0x1E69695B8]);
    sub_19393C540();
    (*(v6 + 8))(v9, v4);
  }

  v14 = *(v13 + 32);
  memcpy(v19, (v2 + v14), sizeof(v19));
  memcpy(v20, (v2 + v14), 0x278uLL);
  if (sub_1936D3298(v20) == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    memcpy(v16, v19, sizeof(v16));
    sub_19393CAD0();
    memcpy(v17, v19, sizeof(v17));
    sub_19349D51C(v17, v18);
    sub_1936E2004();
    sub_19393C540();
    memcpy(v18, v16, sizeof(v18));
    sub_1936E1F5C(v18);
  }

  return sub_1936E2158(a1, *(v2 + *(v13 + 36)));
}

uint64_t _s27IntelligencePlatformLibrary07ToolKitD20TypedValueResolvableO2eeoiySbAC_ACtFZ_0()
{
  OUTLINED_FUNCTION_92_10();
  if (v0 < 0)
  {
    if (v1 < 0)
    {
      OUTLINED_FUNCTION_96_14();

      static ToolKitToolTypedValue.ID.== infix(_:_:)();
      goto LABEL_7;
    }
  }

  else if ((v1 & 0x8000000000000000) == 0)
  {

    static ToolKitToolTypedValue.== infix(_:_:)();
LABEL_7:
    OUTLINED_FUNCTION_61_0();

    return v2 & 1;
  }

  v2 = 0;
  return v2 & 1;
}

uint64_t _s27IntelligencePlatformLibrary07ToolKitD20TypedValueResolvableO4hash4intoys6HasherVz_tF_0()
{
  OUTLINED_FUNCTION_71_19();
  if (v0 < 0)
  {
    OUTLINED_FUNCTION_101_13((v0 & 0x7FFFFFFFFFFFFFFFLL));
    sub_1936E1EA8();
  }

  else
  {
    OUTLINED_FUNCTION_65_18();
    sub_1936E1134();
  }

  OUTLINED_FUNCTION_39_20();
  return sub_19393C540();
}

uint64_t ToolKitToolNullValue.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

char *static ToolKitToolNullValue.allCases.getter()
{
  v0 = OUTLINED_FUNCTION_95_0();
  v4 = sub_1936E2058(v0, v1, v2, v3);
  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    OUTLINED_FUNCTION_39(v5);
    OUTLINED_FUNCTION_31_17();
    v4 = sub_1936E2058(v8, v9, v10, v11);
  }

  *(v4 + 2) = v6 + 1;
  *&v4[8 * v6 + 32] = 0;
  return v4;
}

uint64_t ToolKitToolNullValue.init(_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_2_9();
  if (v4 != v2 || v3 != 0xE700000000000000)
  {
    sub_19393CA30();
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  return result;
}

uint64_t _s27IntelligencePlatformLibrary07ToolKitD10TypedValueO09PrimitiveG0O13PaymentMethodV4TypeO03rawG0AISgSi_tcfC_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t ToolKitToolRuntimePlatform.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x656E6F6850;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_106_14();
      break;
    case 2:
      result = 0x736F746E6963614DLL;
      break;
    case 3:
      result = OUTLINED_FUNCTION_112_13();
      break;
    case 4:
      result = OUTLINED_FUNCTION_146_9();
      break;
    case 5:
      result = 0x6E6F69736956;
      break;
    case 6:
      result = OUTLINED_FUNCTION_138_7();
      break;
    case 7:
      result = 0x726568746FLL;
      break;
    default:
      return result;
  }

  return result;
}

void ToolKitToolRuntimePlatform.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_80_16();
    v7 = v4 && v0 == 0xE500000000000000;
    if (v7 || (OUTLINED_FUNCTION_15_14(v6) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v8 = v1 == 6578512 && v0 == 0xE300000000000000;
      if (v8 || (OUTLINED_FUNCTION_0_9(6578512, 0xE300000000000000) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v9 = v1 == 0x736F746E6963614DLL && v0 == 0xE900000000000068;
        if (v9 || (OUTLINED_FUNCTION_30_22(0x736F746E6963614DLL, 104) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v10 = OUTLINED_FUNCTION_177_4();
          v11 = v4 && v0 == 0xE500000000000000;
          if (v11 || (OUTLINED_FUNCTION_15_14(v10) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v12 = v1 == 30292 && v0 == 0xE200000000000000;
            if (v12 || (OUTLINED_FUNCTION_0_9(30292, 0xE200000000000000) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              v13 = OUTLINED_FUNCTION_161_6(1769171286);
              v14 = v4 && v0 == 0xE600000000000000;
              if (v14 || (OUTLINED_FUNCTION_21_38(v13) & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                v15 = OUTLINED_FUNCTION_138_7();
                v17 = v1 == v15 && v0 == v16;
                if (v17 || (OUTLINED_FUNCTION_0_9(v15, v16) & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else if (v1 == 0x726568746FLL && v0 == 0xE500000000000000)
                {

                  OUTLINED_FUNCTION_91_3();
                }

                else
                {
                  OUTLINED_FUNCTION_15_14(0x726568746FLL);
                  OUTLINED_FUNCTION_61_0();

                  v5 = 7;
                  if ((v1 & 1) == 0)
                  {
                    v5 = 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t sub_1936DFF20(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
LABEL_13:
    v11 = (*(v2 + 48) + 16 * (v8 | (v3 << 6)));
    v12 = *v11;
    v13 = v11[1];

    if (!v13)
    {
      return 1;
    }

    sub_193485250(v12, v13);
    v15 = v14;

    if ((v15 & 1) == 0)
    {

      return 0;
    }

    sub_1936E2FD4();

    v16 = sub_19393C550();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v2 + 64 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v6 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1936E00CC()
{
  result = qword_1EAE40918;
  if (!qword_1EAE40918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40918);
  }

  return result;
}

unint64_t sub_1936E0120()
{
  result = qword_1EAE40920;
  if (!qword_1EAE40920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40920);
  }

  return result;
}

unint64_t sub_1936E0174()
{
  result = qword_1EAE40928;
  if (!qword_1EAE40928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40928);
  }

  return result;
}

unint64_t sub_1936E01C8()
{
  result = qword_1EAE40930;
  if (!qword_1EAE40930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40930);
  }

  return result;
}

unint64_t sub_1936E021C()
{
  result = qword_1EAE40938;
  if (!qword_1EAE40938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40938);
  }

  return result;
}

unint64_t sub_1936E0270()
{
  result = qword_1EAE40940;
  if (!qword_1EAE40940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40940);
  }

  return result;
}

unint64_t sub_1936E02C4()
{
  result = qword_1EAE40948;
  if (!qword_1EAE40948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40948);
  }

  return result;
}

unint64_t sub_1936E0318()
{
  result = qword_1EAE40950;
  if (!qword_1EAE40950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40950);
  }

  return result;
}

unint64_t sub_1936E036C()
{
  result = qword_1EAE40958;
  if (!qword_1EAE40958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40958);
  }

  return result;
}

unint64_t sub_1936E03C0()
{
  result = qword_1EAE40960;
  if (!qword_1EAE40960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40960);
  }

  return result;
}

unint64_t sub_1936E0414()
{
  result = qword_1EAE40968;
  if (!qword_1EAE40968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40968);
  }

  return result;
}

unint64_t sub_1936E0468()
{
  result = qword_1EAE40970;
  if (!qword_1EAE40970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40970);
  }

  return result;
}

unint64_t sub_1936E04BC()
{
  result = qword_1EAE40978;
  if (!qword_1EAE40978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40978);
  }

  return result;
}

unint64_t sub_1936E0510()
{
  result = qword_1EAE40980;
  if (!qword_1EAE40980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40980);
  }

  return result;
}

unint64_t sub_1936E0564()
{
  result = qword_1EAE40988;
  if (!qword_1EAE40988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40988);
  }

  return result;
}

unint64_t sub_1936E05B8()
{
  result = qword_1EAE40990;
  if (!qword_1EAE40990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40990);
  }

  return result;
}

unint64_t sub_1936E060C()
{
  result = qword_1EAE40998;
  if (!qword_1EAE40998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40998);
  }

  return result;
}

unint64_t sub_1936E0660()
{
  result = qword_1EAE409A0;
  if (!qword_1EAE409A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE409A0);
  }

  return result;
}

unint64_t sub_1936E06B4()
{
  result = qword_1EAE409A8;
  if (!qword_1EAE409A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE409A8);
  }

  return result;
}

unint64_t sub_1936E0708()
{
  result = qword_1EAE409B0;
  if (!qword_1EAE409B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE409B0);
  }

  return result;
}

unint64_t sub_1936E075C()
{
  result = qword_1EAE409B8;
  if (!qword_1EAE409B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE409B8);
  }

  return result;
}

unint64_t sub_1936E07B0()
{
  result = qword_1EAE409C0;
  if (!qword_1EAE409C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE409C0);
  }

  return result;
}

unint64_t sub_1936E0804()
{
  result = qword_1EAE409C8;
  if (!qword_1EAE409C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE409C8);
  }

  return result;
}

unint64_t sub_1936E0858()
{
  result = qword_1EAE409D0;
  if (!qword_1EAE409D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE409D0);
  }

  return result;
}

unint64_t sub_1936E08AC()
{
  result = qword_1EAE409D8;
  if (!qword_1EAE409D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE409D8);
  }

  return result;
}

unint64_t sub_1936E0900()
{
  result = qword_1EAE409E0;
  if (!qword_1EAE409E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE409E0);
  }

  return result;
}

unint64_t sub_1936E0954()
{
  result = qword_1EAE409E8;
  if (!qword_1EAE409E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE409E8);
  }

  return result;
}

unint64_t sub_1936E09A8()
{
  result = qword_1EAE409F0;
  if (!qword_1EAE409F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE409F0);
  }

  return result;
}

unint64_t sub_1936E09FC()
{
  result = qword_1EAE409F8;
  if (!qword_1EAE409F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE409F8);
  }

  return result;
}

unint64_t sub_1936E0A50()
{
  result = qword_1EAE40A00;
  if (!qword_1EAE40A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40A00);
  }

  return result;
}

unint64_t sub_1936E0AA4()
{
  result = qword_1EAE40A08;
  if (!qword_1EAE40A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40A08);
  }

  return result;
}

unint64_t sub_1936E0AF8()
{
  result = qword_1EAE40A10;
  if (!qword_1EAE40A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40A10);
  }

  return result;
}

unint64_t sub_1936E0B4C()
{
  result = qword_1EAE40A18;
  if (!qword_1EAE40A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40A18);
  }

  return result;
}

unint64_t sub_1936E0BA0()
{
  result = qword_1EAE40A20;
  if (!qword_1EAE40A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40A20);
  }

  return result;
}

unint64_t sub_1936E0BF4()
{
  result = qword_1EAE40A28;
  if (!qword_1EAE40A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40A28);
  }

  return result;
}

unint64_t sub_1936E0C48()
{
  result = qword_1EAE40A30;
  if (!qword_1EAE40A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40A30);
  }

  return result;
}

unint64_t sub_1936E0C9C()
{
  result = qword_1EAE40A38;
  if (!qword_1EAE40A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40A38);
  }

  return result;
}

unint64_t sub_1936E0CF0()
{
  result = qword_1EAE40A40;
  if (!qword_1EAE40A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40A40);
  }

  return result;
}

unint64_t sub_1936E0D44()
{
  result = qword_1EAE40A48;
  if (!qword_1EAE40A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40A48);
  }

  return result;
}

unint64_t sub_1936E0D98()
{
  result = qword_1EAE40A50;
  if (!qword_1EAE40A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40A50);
  }

  return result;
}

unint64_t sub_1936E0DEC()
{
  result = qword_1EAE40A58;
  if (!qword_1EAE40A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40A58);
  }

  return result;
}

unint64_t sub_1936E0E40()
{
  result = qword_1EAE40A60;
  if (!qword_1EAE40A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40A60);
  }

  return result;
}

unint64_t sub_1936E0E94()
{
  result = qword_1EAE40A68;
  if (!qword_1EAE40A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40A68);
  }

  return result;
}

unint64_t sub_1936E0EE8()
{
  result = qword_1EAE40A70;
  if (!qword_1EAE40A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40A70);
  }

  return result;
}

unint64_t sub_1936E0F3C()
{
  result = qword_1EAE40A78;
  if (!qword_1EAE40A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40A78);
  }

  return result;
}

unint64_t sub_1936E0F90()
{
  result = qword_1EAE40A80;
  if (!qword_1EAE40A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40A80);
  }

  return result;
}

unint64_t sub_1936E0FE4()
{
  result = qword_1EAE40A88;
  if (!qword_1EAE40A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40A88);
  }

  return result;
}

unint64_t sub_1936E1038()
{
  result = qword_1EAE40A90;
  if (!qword_1EAE40A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40A90);
  }

  return result;
}

unint64_t sub_1936E108C()
{
  result = qword_1EAE40A98;
  if (!qword_1EAE40A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40A98);
  }

  return result;
}

unint64_t sub_1936E10E0()
{
  result = qword_1EAE40AA0;
  if (!qword_1EAE40AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40AA0);
  }

  return result;
}

unint64_t sub_1936E1134()
{
  result = qword_1EAE40AA8;
  if (!qword_1EAE40AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40AA8);
  }

  return result;
}

unint64_t sub_1936E1188()
{
  result = qword_1EAE40AB0;
  if (!qword_1EAE40AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40AB0);
  }

  return result;
}

unint64_t sub_1936E11DC()
{
  result = qword_1EAE40AB8;
  if (!qword_1EAE40AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40AB8);
  }

  return result;
}

unint64_t sub_1936E1230()
{
  result = qword_1EAE40AC0;
  if (!qword_1EAE40AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40AC0);
  }

  return result;
}

unint64_t sub_1936E1284()
{
  result = qword_1EAE40AC8;
  if (!qword_1EAE40AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40AC8);
  }

  return result;
}

unint64_t sub_1936E12D8()
{
  result = qword_1EAE40AD0;
  if (!qword_1EAE40AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40AD0);
  }

  return result;
}

unint64_t sub_1936E132C()
{
  result = qword_1EAE40AD8;
  if (!qword_1EAE40AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40AD8);
  }

  return result;
}

unint64_t sub_1936E1380()
{
  result = qword_1EAE40AE0;
  if (!qword_1EAE40AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40AE0);
  }

  return result;
}

unint64_t sub_1936E13D4()
{
  result = qword_1EAE40AE8;
  if (!qword_1EAE40AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40AE8);
  }

  return result;
}

unint64_t sub_1936E1428()
{
  result = qword_1EAE40AF0;
  if (!qword_1EAE40AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40AF0);
  }

  return result;
}

unint64_t sub_1936E147C()
{
  result = qword_1EAE40AF8;
  if (!qword_1EAE40AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40AF8);
  }

  return result;
}

unint64_t sub_1936E14D0()
{
  result = qword_1EAE40B00;
  if (!qword_1EAE40B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40B00);
  }

  return result;
}

unint64_t sub_1936E1524()
{
  result = qword_1EAE40B08;
  if (!qword_1EAE40B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40B08);
  }

  return result;
}

unint64_t sub_1936E1578()
{
  result = qword_1EAE40B10;
  if (!qword_1EAE40B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40B10);
  }

  return result;
}

unint64_t sub_1936E15CC()
{
  result = qword_1EAE40B18;
  if (!qword_1EAE40B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40B18);
  }

  return result;
}

unint64_t sub_1936E1620()
{
  result = qword_1EAE40B20;
  if (!qword_1EAE40B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40B20);
  }

  return result;
}

unint64_t sub_1936E1674()
{
  result = qword_1EAE40B28;
  if (!qword_1EAE40B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40B28);
  }

  return result;
}

unint64_t sub_1936E16C8()
{
  result = qword_1EAE40B30;
  if (!qword_1EAE40B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40B30);
  }

  return result;
}

unint64_t sub_1936E171C()
{
  result = qword_1EAE40B38;
  if (!qword_1EAE40B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40B38);
  }

  return result;
}

unint64_t sub_1936E1770()
{
  result = qword_1EAE40B40;
  if (!qword_1EAE40B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40B40);
  }

  return result;
}

unint64_t sub_1936E17C4()
{
  result = qword_1EAE40B48;
  if (!qword_1EAE40B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40B48);
  }

  return result;
}

unint64_t sub_1936E1818()
{
  result = qword_1EAE40B50;
  if (!qword_1EAE40B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40B50);
  }

  return result;
}

unint64_t sub_1936E186C()
{
  result = qword_1EAE40B58;
  if (!qword_1EAE40B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40B58);
  }

  return result;
}

unint64_t sub_1936E18C0()
{
  result = qword_1EAE40B60;
  if (!qword_1EAE40B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40B60);
  }

  return result;
}

unint64_t sub_1936E1914()
{
  result = qword_1EAE40B68;
  if (!qword_1EAE40B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40B68);
  }

  return result;
}

unint64_t sub_1936E1968()
{
  result = qword_1EAE40B70;
  if (!qword_1EAE40B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40B70);
  }

  return result;
}

unint64_t sub_1936E19BC()
{
  result = qword_1EAE40B78;
  if (!qword_1EAE40B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40B78);
  }

  return result;
}

unint64_t sub_1936E1A10()
{
  result = qword_1EAE40B80;
  if (!qword_1EAE40B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40B80);
  }

  return result;
}

unint64_t sub_1936E1A64()
{
  result = qword_1EAE40B88;
  if (!qword_1EAE40B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40B88);
  }

  return result;
}

unint64_t sub_1936E1AB8()
{
  result = qword_1EAE40B90;
  if (!qword_1EAE40B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40B90);
  }

  return result;
}

unint64_t sub_1936E1B0C()
{
  result = qword_1EAE40B98;
  if (!qword_1EAE40B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40B98);
  }

  return result;
}

unint64_t sub_1936E1B60()
{
  result = qword_1EAE40BA0;
  if (!qword_1EAE40BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40BA0);
  }

  return result;
}

unint64_t sub_1936E1BB4()
{
  result = qword_1EAE40BA8;
  if (!qword_1EAE40BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40BA8);
  }

  return result;
}

unint64_t sub_1936E1C08()
{
  result = qword_1EAE40BB0;
  if (!qword_1EAE40BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40BB0);
  }

  return result;
}

unint64_t sub_1936E1C5C()
{
  result = qword_1EAE40BB8;
  if (!qword_1EAE40BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40BB8);
  }

  return result;
}

unint64_t sub_1936E1CB0()
{
  result = qword_1EAE40BC0;
  if (!qword_1EAE40BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40BC0);
  }

  return result;
}

unint64_t sub_1936E1D04()
{
  result = qword_1EAE40BC8;
  if (!qword_1EAE40BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40BC8);
  }

  return result;
}

unint64_t sub_1936E1D58()
{
  result = qword_1EAE40BD0;
  if (!qword_1EAE40BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40BD0);
  }

  return result;
}

unint64_t sub_1936E1DAC()
{
  result = qword_1EAE40BD8;
  if (!qword_1EAE40BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40BD8);
  }

  return result;
}

unint64_t sub_1936E1E00()
{
  result = qword_1EAE40BE0;
  if (!qword_1EAE40BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40BE0);
  }

  return result;
}

unint64_t sub_1936E1E54()
{
  result = qword_1EAE40BE8;
  if (!qword_1EAE40BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40BE8);
  }

  return result;
}

unint64_t sub_1936E1EA8()
{
  result = qword_1EAE40BF0;
  if (!qword_1EAE40BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40BF0);
  }

  return result;
}

uint64_t sub_1936E1EFC()
{
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  v3 = OUTLINED_FUNCTION_13_0();
  v4(v3);
  return v0;
}

unint64_t sub_1936E1FB0()
{
  result = qword_1EAE40C00;
  if (!qword_1EAE40C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40C00);
  }

  return result;
}

unint64_t sub_1936E2004()
{
  result = qword_1EAE40C08;
  if (!qword_1EAE40C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40C08);
  }

  return result;
}

char *sub_1936E2058(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40D40, &qword_19397F778);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

uint64_t sub_1936E2158(const void *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  if (v7)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = __clz(__rbit64(v7)) | (v12 << 6);
      v14 = *(*(a2 + 48) + 16 * v13 + 8);
      v15 = *(*(a2 + 56) + 8 * v13);

      if (!v14)
      {
        break;
      }

      v7 &= v7 - 1;
      v17 = v15;
      memcpy(v16, a1, sizeof(v16));
      sub_19393C640();

      sub_1936E2F80();
      sub_19393C540();

      result = sub_19393CB00();
      v10 ^= result;
      v11 = v12;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return MEMORY[0x193B18030](v10);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v12);
      ++v11;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1936E22CC()
{
  result = qword_1EAE40C10;
  if (!qword_1EAE40C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40C10);
  }

  return result;
}

unint64_t sub_1936E2324()
{
  result = qword_1EAE40C18;
  if (!qword_1EAE40C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40C18);
  }

  return result;
}

unint64_t sub_1936E237C()
{
  result = qword_1EAE40C20;
  if (!qword_1EAE40C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40C20);
  }

  return result;
}

unint64_t sub_1936E23D4()
{
  result = qword_1EAE40C28;
  if (!qword_1EAE40C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40C28);
  }

  return result;
}

unint64_t sub_1936E242C()
{
  result = qword_1EAE40C30;
  if (!qword_1EAE40C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40C30);
  }

  return result;
}

unint64_t sub_1936E2484()
{
  result = qword_1EAE40C38;
  if (!qword_1EAE40C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40C38);
  }

  return result;
}

unint64_t sub_1936E24DC()
{
  result = qword_1EAE40C40;
  if (!qword_1EAE40C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40C40);
  }

  return result;
}

unint64_t sub_1936E2534()
{
  result = qword_1EAE40C48;
  if (!qword_1EAE40C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40C48);
  }

  return result;
}

unint64_t sub_1936E258C()
{
  result = qword_1EAE40C50;
  if (!qword_1EAE40C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40C50);
  }

  return result;
}

unint64_t sub_1936E25E4()
{
  result = qword_1EAE40C58;
  if (!qword_1EAE40C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40C58);
  }

  return result;
}

unint64_t sub_1936E263C()
{
  result = qword_1EAE40C60;
  if (!qword_1EAE40C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40C60);
  }

  return result;
}

unint64_t sub_1936E2694()
{
  result = qword_1EAE40C68;
  if (!qword_1EAE40C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40C68);
  }

  return result;
}

unint64_t sub_1936E26EC()
{
  result = qword_1EAE40C70;
  if (!qword_1EAE40C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40C70);
  }

  return result;
}

unint64_t sub_1936E2744()
{
  result = qword_1EAE40C78;
  if (!qword_1EAE40C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40C78);
  }

  return result;
}

unint64_t sub_1936E279C()
{
  result = qword_1EAE40C80;
  if (!qword_1EAE40C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40C80);
  }

  return result;
}

unint64_t sub_1936E27F4()
{
  result = qword_1EAE40C88;
  if (!qword_1EAE40C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40C88);
  }

  return result;
}

unint64_t sub_1936E284C()
{
  result = qword_1EAE40C90;
  if (!qword_1EAE40C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40C90);
  }

  return result;
}

unint64_t sub_1936E28A4()
{
  result = qword_1EAE40C98;
  if (!qword_1EAE40C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40C98);
  }

  return result;
}

unint64_t sub_1936E28FC()
{
  result = qword_1EAE40CA0;
  if (!qword_1EAE40CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40CA0);
  }

  return result;
}

unint64_t sub_1936E2954()
{
  result = qword_1EAE40CA8;
  if (!qword_1EAE40CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40CA8);
  }

  return result;
}

unint64_t sub_1936E29AC()
{
  result = qword_1EAE40CB0;
  if (!qword_1EAE40CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40CB0);
  }

  return result;
}

unint64_t sub_1936E2A04()
{
  result = qword_1EAE40CB8;
  if (!qword_1EAE40CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40CB8);
  }

  return result;
}

unint64_t sub_1936E2A5C()
{
  result = qword_1EAE40CC0;
  if (!qword_1EAE40CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40CC0);
  }

  return result;
}

unint64_t sub_1936E2AB4()
{
  result = qword_1EAE40CC8;
  if (!qword_1EAE40CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40CC8);
  }

  return result;
}

unint64_t sub_1936E2B0C()
{
  result = qword_1EAE40CD0;
  if (!qword_1EAE40CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40CD0);
  }

  return result;
}

unint64_t sub_1936E2B64()
{
  result = qword_1EAE40CD8;
  if (!qword_1EAE40CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40CD8);
  }

  return result;
}

unint64_t sub_1936E2BBC()
{
  result = qword_1EAE40CE0;
  if (!qword_1EAE40CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40CE0);
  }

  return result;
}

unint64_t sub_1936E2C14()
{
  result = qword_1EAE40CE8;
  if (!qword_1EAE40CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40CE8);
  }

  return result;
}

unint64_t sub_1936E2C6C()
{
  result = qword_1EAE40CF0;
  if (!qword_1EAE40CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40CF0);
  }

  return result;
}

unint64_t sub_1936E2CC4()
{
  result = qword_1EAE40CF8;
  if (!qword_1EAE40CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40CF8);
  }

  return result;
}

unint64_t sub_1936E2D1C()
{
  result = qword_1EAE40D00;
  if (!qword_1EAE40D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40D00);
  }

  return result;
}

unint64_t sub_1936E2D74()
{
  result = qword_1EAE40D08;
  if (!qword_1EAE40D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40D08);
  }

  return result;
}

unint64_t sub_1936E2DCC()
{
  result = qword_1EAE40D10;
  if (!qword_1EAE40D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40D10);
  }

  return result;
}

unint64_t sub_1936E2E24()
{
  result = qword_1EAE40D18;
  if (!qword_1EAE40D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40D18);
  }

  return result;
}

unint64_t sub_1936E2E7C()
{
  result = qword_1EAE40D20;
  if (!qword_1EAE40D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40D20);
  }

  return result;
}

unint64_t sub_1936E2ED4()
{
  result = qword_1EAE40D28;
  if (!qword_1EAE40D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40D28);
  }

  return result;
}

unint64_t sub_1936E2F2C()
{
  result = qword_1EAE40D30;
  if (!qword_1EAE40D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40D30);
  }

  return result;
}

unint64_t sub_1936E2F80()
{
  result = qword_1EAE40D48;
  if (!qword_1EAE40D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40D48);
  }

  return result;
}

unint64_t sub_1936E2FD4()
{
  result = qword_1EAE3A7B8;
  if (!qword_1EAE3A7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A7B8);
  }

  return result;
}

unint64_t sub_1936E3028()
{
  result = qword_1EAE40DD0;
  if (!qword_1EAE40DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40DD0);
  }

  return result;
}

unint64_t sub_1936E307C()
{
  result = qword_1EAE40DD8;
  if (!qword_1EAE40DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40DD8);
  }

  return result;
}

unint64_t sub_1936E30D0()
{
  result = qword_1EAE40E18;
  if (!qword_1EAE40E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40E18);
  }

  return result;
}

unint64_t sub_1936E3124()
{
  result = qword_1EAE40E20;
  if (!qword_1EAE40E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40E20);
  }

  return result;
}

unint64_t sub_1936E3178()
{
  result = qword_1EAE40E88;
  if (!qword_1EAE40E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40E88);
  }

  return result;
}

unint64_t sub_1936E31CC()
{
  result = qword_1EAE40E90;
  if (!qword_1EAE40E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40E90);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_21_38(uint64_t a1)
{

  return sub_19393CA30();
}

uint64_t OUTLINED_FUNCTION_60_19()
{
}

uint64_t OUTLINED_FUNCTION_120_7()
{
}

uint64_t OUTLINED_FUNCTION_140_8()
{
}

uint64_t OUTLINED_FUNCTION_141_7()
{

  return sub_1936E1EFC();
}

uint64_t OUTLINED_FUNCTION_142_8()
{
}

void sub_1936E365C()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC1B8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("seconds");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "nanos");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1936E378C()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    result = sub_19393C0E0();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C170();
      *(v0 + 8) = 0;
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C190();
      OUTLINED_FUNCTION_92_11();
      if (!v5)
      {
        v4 = 0;
      }

      *v0 = v4;
    }
  }

  return result;
}

uint64_t sub_1936E3840()
{
  OUTLINED_FUNCTION_96_3();
  result = *v0;
  v3 = *(v0 + 8);
  if (*v0)
  {
    OUTLINED_FUNCTION_62_6();
    result = sub_19393C360();
  }

  if (!v1)
  {
    if (v3)
    {
      OUTLINED_FUNCTION_62_6();
      return sub_19393C350();
    }
  }

  return result;
}

void sub_1936E3904()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC1D0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("typeUrl");
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

void sub_1936E3A34()
{
  OUTLINED_FUNCTION_241_1();
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
      OUTLINED_FUNCTION_113();
      sub_19393C140();
      OUTLINED_FUNCTION_29_7();
      if (!v5 & v4)
      {
        v8 = 0;
      }

      else
      {
        v8 = v6;
      }

      if (!v5 & v4)
      {
        v9 = 0xC000000000000000;
      }

      else
      {
        v9 = v7;
      }

      sub_193446A6C(v1[2], v1[3]);
      v1[2] = v8;
      v1[3] = v9;
    }

    else if (v2 == 1)
    {
      OUTLINED_FUNCTION_113();
      sub_19393C200();

      *v1 = 0;
      v1[1] = 0xE000000000000000;
    }
  }

  OUTLINED_FUNCTION_71_17();
}

void sub_1936E3B20()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  OUTLINED_FUNCTION_103();
  v3 = v0[2];
  v4 = v0[3];
  if (*v0)
  {
    v5 = 0;
  }

  else
  {
    v5 = v0[1] == 0xE000000000000000;
  }

  if (!v5)
  {
    v6 = OUTLINED_FUNCTION_286();
    if ((OUTLINED_FUNCTION_272(v6, v7) & 1) == 0)
    {
      OUTLINED_FUNCTION_286();
      OUTLINED_FUNCTION_24_2();
      sub_19393C3C0();
      v2 = v1;
    }
  }

  if (v2)
  {
    goto LABEL_17;
  }

  v8 = v4 >> 62;
  if (v4 >> 62 == 3)
  {
    goto LABEL_17;
  }

  if (!v8)
  {
    v9 = BYTE6(v4);
    goto LABEL_15;
  }

  if (v8 != 1)
  {
    v11 = *(v3 + 16);
    v10 = *(v3 + 24);
    v12 = __OFSUB__(v10, v11);
    v9 = v10 - v11;
    if (v12)
    {
      goto LABEL_19;
    }

LABEL_15:
    if (v9)
    {
      OUTLINED_FUNCTION_193_1();
      OUTLINED_FUNCTION_24_2();
      sub_19393C330();
    }

LABEL_17:
    OUTLINED_FUNCTION_27();
    return;
  }

  LODWORD(v9) = HIDWORD(v3) - v3;
  if (!__OFSUB__(HIDWORD(v3), v3))
  {
    v9 = v9;
    goto LABEL_15;
  }

  __break(1u);
LABEL_19:
  __break(1u);
}

void sub_1936E3C60()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAC1E8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_31_13();
  OUTLINED_FUNCTION_11_3(v4, xmmword_19394FBD0);
  OUTLINED_FUNCTION_63("primitive");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_29_1();
  v9 = OUTLINED_FUNCTION_0_0(v8, "custom");
  v6(v9);
  v10 = OUTLINED_FUNCTION_13_12();
  v11 = OUTLINED_FUNCTION_16_6(v10, "builtin");
  v6(v11);
  v12 = OUTLINED_FUNCTION_14_6();
  v13 = OUTLINED_FUNCTION_0_0(v12, "attributed");
  v6(v13);
  v14 = OUTLINED_FUNCTION_19_2((v0 + 4 * v3));
  *v14 = "codable";
  *(v14 + 1) = 7;
  v15 = OUTLINED_FUNCTION_1_3(v14);
  v6(v15);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936E3DF4()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v3 = OUTLINED_FUNCTION_124();
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    switch(v3)
    {
      case 1:
        *&__src[0] = 0xF000000000000007;
        OUTLINED_FUNCTION_638();
        sub_193498018();
        OUTLINED_FUNCTION_171();
        v2 = *&__src[0];
        if ((~*&__src[0] & 0xF000000000000007) == 0)
        {
          OUTLINED_FUNCTION_173_0();
          v5 = swift_allocObject();
          OUTLINED_FUNCTION_642(v5);
        }

        OUTLINED_FUNCTION_173_0();
        v6 = swift_allocObject();
        *(v6 + 16) = v2;
        *v1 = v6;
        break;
      case 2:
        __src[0] = xmmword_1939526A0;
        __src[1] = 0uLL;
        OUTLINED_FUNCTION_638();
        sub_193498018();
        OUTLINED_FUNCTION_171();
        v2 = *(&__src[0] + 1);
        if (*(&__src[0] + 1) == 1)
        {
          ToolKitToolTypeIdentifier.Custom.init()();
          v2 = *(&__dst[0] + 1);
        }

        OUTLINED_FUNCTION_386();
        OUTLINED_FUNCTION_95();
        v14 = swift_allocObject();
        OUTLINED_FUNCTION_292_0(v14, v15, v16, v17, v18, v19, v20, v21, v22);
        OUTLINED_FUNCTION_257_0(v23);
        break;
      case 3:
        *&__src[0] = 0xF000000000000007;
        OUTLINED_FUNCTION_638();
        sub_193498018();
        OUTLINED_FUNCTION_171();
        v2 = *&__src[0];
        if ((~*&__src[0] & 0xF000000000000007) == 0)
        {
          OUTLINED_FUNCTION_173_0();
          v8 = swift_allocObject();
          OUTLINED_FUNCTION_642(v8);
        }

        OUTLINED_FUNCTION_173_0();
        v9 = swift_allocObject();
        *(v9 + 16) = v2;
        OUTLINED_FUNCTION_277(v9);
        break;
      case 4:
        sub_1936E41B8(__src);
        memcpy(__dst, __src, sizeof(__dst));
        sub_193498018();
        OUTLINED_FUNCTION_171();
        OUTLINED_FUNCTION_605(v28);
        OUTLINED_FUNCTION_605(v29);
        if (sub_19346CD80(v29) == 1)
        {
          ToolKitToolTypeIdentifier.Attributed.init()();
          OUTLINED_FUNCTION_605(v26);
          sub_19344E6DC(v26, &qword_1EAE41948, &qword_19397F950);
        }

        else
        {
          OUTLINED_FUNCTION_605(v25);
          memcpy(v26, v28, sizeof(v26));
          sub_1936C02B4(v26, v24);
          sub_19344E6DC(v25, &qword_1EAE41948, &qword_19397F950);
          memcpy(v27, v28, sizeof(v27));
        }

        v12 = swift_allocObject();
        v13 = OUTLINED_FUNCTION_151_1(v12);
        memcpy(v13, v27, 0xF0uLL);
        *v1 = v2 | 0x6000000000000000;
        break;
      case 5:
        __src[0] = xmmword_1939526A0;
        OUTLINED_FUNCTION_638();
        sub_193498018();
        OUTLINED_FUNCTION_171();
        v2 = *(&__src[0] + 1);
        if (*(&__src[0] + 1) == 1)
        {
          v7 = __dst;
          ToolKitToolTypeIdentifier.Codable.init()();
          v2 = *(&__dst[0] + 1);
        }

        else
        {
          v7 = __src;
        }

        v10 = *v7;
        OUTLINED_FUNCTION_123_1();
        v11 = swift_allocObject();
        *(v11 + 16) = v10;
        *(v11 + 24) = v2;
        OUTLINED_FUNCTION_285(v11);
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

double sub_1936E41B8(uint64_t a1)
{
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  return result;
}

void sub_1936E41E4()
{
  OUTLINED_FUNCTION_103_10();
  switch(v1)
  {
    case 1:
      v8 = v0 & 0x1FFFFFFFFFFFFFFFLL;
      v9 = *(v8 + 32);
      __dst[0] = *(v8 + 16);
      __dst[1] = v9;
      break;
    case 2:
      *&__dst[0] = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      break;
    case 3:
      memcpy(__dst, ((v0 & 0x1FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));
      v2 = memcpy(v10, __dst, sizeof(v10));
      OUTLINED_FUNCTION_174(v2, v3, v4, &type metadata for ToolKitToolTypeIdentifier.Attributed, v5, &off_1F07E2A60, v6, v7, v10[0]);
      break;
    case 4:
      __dst[0] = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      break;
    default:
      *&__dst[0] = *(v0 + 16);
      break;
  }

  OUTLINED_FUNCTION_23_3();
  sub_193447600();
}

void sub_1936E4388()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC200);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = *(v1 + 72);
  OUTLINED_FUNCTION_49_0();
  v73 = OUTLINED_FUNCTION_108_2();
  *(v73 + 16) = xmmword_1939775A0;
  v3 = v73 + v0 + dword_1EAEAC238;
  *(v73 + v0) = 1;
  *v3 = "none_p";
  *(v3 + 8) = 6;
  *(v3 + 16) = 2;
  *(v3 + 24) = "noneP";
  *(v3 + 32) = 5;
  *(v3 + 40) = 2;
  v4 = *MEMORY[0x1E69AADD8];
  v5 = sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  (v7)(v3, v4, v5);
  v8 = OUTLINED_FUNCTION_58_18();
  *v8 = "BOOLType";
  *(v8 + 8) = 8;
  *(v8 + 16) = 2;
  v7();
  v9 = OUTLINED_FUNCTION_9_4((v73 + v0 + 2 * v2));
  *v9 = "intType";
  *(v9 + 1) = 7;
  v10 = OUTLINED_FUNCTION_114_11(v9);
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_9_64();
  *v11 = "number";
  *(v11 + 1) = 6;
  v12 = OUTLINED_FUNCTION_114_11(v11);
  (v7)(v12);
  v13 = OUTLINED_FUNCTION_21_39();
  *v13 = "decimal";
  *(v13 + 1) = 7;
  v14 = OUTLINED_FUNCTION_114_11(v13);
  (v7)(v14);
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_270_1(v15);
  *v16 = "string";
  v16[1] = v17;
  v18 = OUTLINED_FUNCTION_114_11(v16);
  (v7)(v18);
  v19 = OUTLINED_FUNCTION_52_0();
  *v20 = 7;
  v21 = OUTLINED_FUNCTION_103_11(v19, 4);
  (v7)(v21);
  OUTLINED_FUNCTION_33_0(8 * v2);
  OUTLINED_FUNCTION_121_1(v22);
  *v23 = "dateComponents";
  v23[1] = 14;
  v24 = OUTLINED_FUNCTION_114_11(v23);
  (v7)(v24);
  v25 = OUTLINED_FUNCTION_55_2((v73 + v0 + 8 * v2));
  v26 = OUTLINED_FUNCTION_103_11(v25, 3);
  (v7)(v26);
  v27 = OUTLINED_FUNCTION_44(9 * v2);
  *v28 = 10;
  *v27 = "dictionary";
  v27[1] = 10;
  v29 = OUTLINED_FUNCTION_114_11(v27);
  (v7)(v29);
  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_377_0(v30);
  *v31 = "attributedString";
  v31[1] = 16;
  v32 = OUTLINED_FUNCTION_114_11(v31);
  (v7)(v32);
  v33 = OUTLINED_FUNCTION_3_1(v73 + v0 + 11 * v2);
  *v34 = 12;
  *v33 = "measurement";
  v33[1] = v35;
  v36 = OUTLINED_FUNCTION_114_11(v33);
  (v7)(v36);
  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_631(v37);
  *v38 = "currencyAmount";
  v38[1] = 14;
  v39 = OUTLINED_FUNCTION_114_11(v38);
  (v7)(v39);
  v40 = OUTLINED_FUNCTION_52_0();
  *v41 = 14;
  *v40 = "paymentMethod";
  v40[1] = 12;
  v42 = OUTLINED_FUNCTION_114_11(v40);
  (v7)(v42);
  v43 = OUTLINED_FUNCTION_105_14((v73 + v0 + 14 * v2));
  v44 = OUTLINED_FUNCTION_103_11(v43, 9);
  (v7)(v44);
  OUTLINED_FUNCTION_33_0(16 * v2);
  OUTLINED_FUNCTION_256_1(v45);
  v47 = OUTLINED_FUNCTION_103_11(v46, 6);
  (v7)(v47);
  v48 = OUTLINED_FUNCTION_131_1((v73 + v0 + 16 * v2));
  v49 = OUTLINED_FUNCTION_103_11(v48, 4);
  (v7)(v49);
  v50 = OUTLINED_FUNCTION_44(17 * v2);
  *v51 = 18;
  v52 = OUTLINED_FUNCTION_103_11(v50, 3);
  (v7)(v52);
  v53 = OUTLINED_FUNCTION_52_0();
  *v54 = 19;
  *v53 = "searchableItem";
  v53[1] = 14;
  v55 = OUTLINED_FUNCTION_114_11(v53);
  (v7)(v55);
  v56 = OUTLINED_FUNCTION_52_0();
  *v57 = 20;
  v58 = OUTLINED_FUNCTION_103_11(v56, 11);
  (v7)(v58);
  v59 = OUTLINED_FUNCTION_72();
  *v60 = 21;
  v61 = OUTLINED_FUNCTION_103_11(v59, 8);
  (v7)(v61);
  v62 = OUTLINED_FUNCTION_52_0();
  *v63 = 22;
  v64 = OUTLINED_FUNCTION_103_11(v62, 14);
  (v7)(v64);
  v65 = OUTLINED_FUNCTION_52_0();
  *v66 = 23;
  v67 = OUTLINED_FUNCTION_103_11(v65, 12);
  (v7)(v67);
  v68 = OUTLINED_FUNCTION_52_0();
  *v69 = 24;
  *v68 = "personNameComponents";
  v68[1] = 20;
  v70 = OUTLINED_FUNCTION_114_11(v68);
  (v7)(v70);
  v71 = OUTLINED_FUNCTION_52_0();
  *v72 = 25;
  *v71 = "duration";
  *(v71 + 8) = 8;
  *(v71 + 16) = 2;
  v7();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1936E48B8()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v3 = OUTLINED_FUNCTION_124();
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    switch(v3)
    {
      case 1:
        OUTLINED_FUNCTION_97_9();
        OUTLINED_FUNCTION_78_16();
        sub_1934982A8();
        OUTLINED_FUNCTION_320();
        OUTLINED_FUNCTION_47_23();
        OUTLINED_FUNCTION_173_0();
        v5 = swift_allocObject();
        *(v5 + 16) = v2;
        *v1 = v5;
        continue;
      case 2:
        OUTLINED_FUNCTION_97_9();
        OUTLINED_FUNCTION_78_16();
        sub_1934982A8();
        OUTLINED_FUNCTION_320();
        OUTLINED_FUNCTION_47_23();
        OUTLINED_FUNCTION_173_0();
        v20 = swift_allocObject();
        *(v20 + 16) = v2;
        OUTLINED_FUNCTION_629(v20);
        continue;
      case 3:
        OUTLINED_FUNCTION_97_9();
        OUTLINED_FUNCTION_78_16();
        sub_1934982A8();
        OUTLINED_FUNCTION_320();
        OUTLINED_FUNCTION_47_23();
        OUTLINED_FUNCTION_173_0();
        v15 = swift_allocObject();
        *(v15 + 16) = v2;
        OUTLINED_FUNCTION_347(v15);
        continue;
      case 4:
        OUTLINED_FUNCTION_97_9();
        OUTLINED_FUNCTION_78_16();
        sub_1934982A8();
        OUTLINED_FUNCTION_320();
        OUTLINED_FUNCTION_47_23();
        OUTLINED_FUNCTION_173_0();
        v8 = swift_allocObject();
        *(v8 + 16) = v2;
        v9 = 0x1000000000000004;
        goto LABEL_30;
      case 5:
        OUTLINED_FUNCTION_97_9();
        OUTLINED_FUNCTION_78_16();
        sub_1934982A8();
        OUTLINED_FUNCTION_320();
        OUTLINED_FUNCTION_47_23();
        OUTLINED_FUNCTION_173_0();
        v10 = swift_allocObject();
        *(v10 + 16) = v2;
        OUTLINED_FUNCTION_257_0(v10);
        continue;
      case 6:
        OUTLINED_FUNCTION_97_9();
        OUTLINED_FUNCTION_78_16();
        sub_1934982A8();
        OUTLINED_FUNCTION_320();
        OUTLINED_FUNCTION_47_23();
        OUTLINED_FUNCTION_173_0();
        v23 = swift_allocObject();
        v8 = OUTLINED_FUNCTION_286_1(v23);
        v9 = v24 & 0xFFFFFFFFFFFFLL | 0x2000000000000000;
        goto LABEL_30;
      case 7:
        OUTLINED_FUNCTION_97_9();
        OUTLINED_FUNCTION_78_16();
        sub_1934982A8();
        OUTLINED_FUNCTION_320();
        OUTLINED_FUNCTION_47_23();
        OUTLINED_FUNCTION_173_0();
        v29 = swift_allocObject();
        *(v29 + 16) = v2;
        OUTLINED_FUNCTION_330(v29);
        continue;
      case 8:
        OUTLINED_FUNCTION_97_9();
        OUTLINED_FUNCTION_78_16();
        sub_1934982A8();
        OUTLINED_FUNCTION_320();
        OUTLINED_FUNCTION_47_23();
        OUTLINED_FUNCTION_173_0();
        v18 = swift_allocObject();
        v8 = OUTLINED_FUNCTION_286_1(v18);
        v9 = v19 & 0xFFFFFFFFFFFFLL | 0x3000000000000000;
        goto LABEL_30;
      case 9:
        OUTLINED_FUNCTION_97_9();
        OUTLINED_FUNCTION_78_16();
        sub_1934982A8();
        OUTLINED_FUNCTION_320();
        OUTLINED_FUNCTION_47_23();
        OUTLINED_FUNCTION_173_0();
        v30 = swift_allocObject();
        *(v30 + 16) = v2;
        OUTLINED_FUNCTION_277(v30);
        continue;
      case 10:
        OUTLINED_FUNCTION_97_9();
        OUTLINED_FUNCTION_78_16();
        sub_1934982A8();
        OUTLINED_FUNCTION_320();
        OUTLINED_FUNCTION_47_23();
        OUTLINED_FUNCTION_173_0();
        v12 = swift_allocObject();
        v8 = OUTLINED_FUNCTION_286_1(v12);
        v9 = v13 & 0xFFFFFFFFFFFFLL | 0x4000000000000000;
        goto LABEL_30;
      case 11:
        OUTLINED_FUNCTION_97_9();
        OUTLINED_FUNCTION_78_16();
        sub_1934982A8();
        OUTLINED_FUNCTION_320();
        OUTLINED_FUNCTION_47_23();
        OUTLINED_FUNCTION_173_0();
        v8 = swift_allocObject();
        *(v8 + 16) = v2;
        v9 = 0x5000000000000000;
        goto LABEL_30;
      case 12:
        OUTLINED_FUNCTION_78_16();
        sub_1934982A8();
        OUTLINED_FUNCTION_320();
        v2 = 0;
        OUTLINED_FUNCTION_123_1();
        v8 = swift_allocObject();
        *(v8 + 16) = 0;
        *(v8 + 24) = 0;
        v9 = 0x5000000000000004;
        goto LABEL_30;
      case 13:
        OUTLINED_FUNCTION_97_9();
        OUTLINED_FUNCTION_78_16();
        sub_1934982A8();
        OUTLINED_FUNCTION_320();
        OUTLINED_FUNCTION_47_23();
        OUTLINED_FUNCTION_173_0();
        v11 = swift_allocObject();
        *(v11 + 16) = v2;
        OUTLINED_FUNCTION_285_1(v11);
        continue;
      case 14:
        OUTLINED_FUNCTION_97_9();
        OUTLINED_FUNCTION_78_16();
        sub_1934982A8();
        OUTLINED_FUNCTION_320();
        OUTLINED_FUNCTION_47_23();
        OUTLINED_FUNCTION_173_0();
        v27 = swift_allocObject();
        v8 = OUTLINED_FUNCTION_286_1(v27);
        v9 = v28 & 0xFFFFFFFFFFFFLL | 0x6000000000000000;
        goto LABEL_30;
      case 15:
        OUTLINED_FUNCTION_97_9();
        OUTLINED_FUNCTION_78_16();
        sub_1934982A8();
        OUTLINED_FUNCTION_320();
        OUTLINED_FUNCTION_47_23();
        OUTLINED_FUNCTION_173_0();
        v7 = swift_allocObject();
        *(v7 + 16) = v2;
        OUTLINED_FUNCTION_332(v7);
        continue;
      case 16:
        OUTLINED_FUNCTION_97_9();
        OUTLINED_FUNCTION_78_16();
        sub_1934982A8();
        OUTLINED_FUNCTION_320();
        OUTLINED_FUNCTION_47_23();
        OUTLINED_FUNCTION_173_0();
        v16 = swift_allocObject();
        v8 = OUTLINED_FUNCTION_286_1(v16);
        v9 = v17 & 0xFFFFFFFFFFFFLL | 0x7000000000000000;
        goto LABEL_30;
      case 17:
        OUTLINED_FUNCTION_97_9();
        OUTLINED_FUNCTION_78_16();
        sub_1934982A8();
        OUTLINED_FUNCTION_320();
        OUTLINED_FUNCTION_47_23();
        OUTLINED_FUNCTION_173_0();
        v6 = swift_allocObject();
        *(v6 + 16) = v2;
        OUTLINED_FUNCTION_285(v6);
        continue;
      case 18:
        OUTLINED_FUNCTION_97_9();
        OUTLINED_FUNCTION_78_16();
        sub_1934982A8();
        OUTLINED_FUNCTION_320();
        OUTLINED_FUNCTION_47_23();
        OUTLINED_FUNCTION_173_0();
        v21 = swift_allocObject();
        v8 = OUTLINED_FUNCTION_286_1(v21);
        v9 = v22 & 0xFFFFFFFFFFFFLL | 0x8000000000000000;
        goto LABEL_30;
      case 19:
        OUTLINED_FUNCTION_97_9();
        OUTLINED_FUNCTION_78_16();
        sub_1934982A8();
        OUTLINED_FUNCTION_320();
        OUTLINED_FUNCTION_47_23();
        OUTLINED_FUNCTION_173_0();
        v8 = swift_allocObject();
        *(v8 + 16) = v2;
        v9 = 0x9000000000000000;
        goto LABEL_30;
      case 20:
        OUTLINED_FUNCTION_97_9();
        OUTLINED_FUNCTION_78_16();
        sub_1934982A8();
        OUTLINED_FUNCTION_320();
        OUTLINED_FUNCTION_47_23();
        OUTLINED_FUNCTION_173_0();
        v31 = swift_allocObject();
        v8 = OUTLINED_FUNCTION_286_1(v31);
        v9 = v32 & 0xFFFFFFFFFFFFLL | 0x9000000000000000;
        goto LABEL_30;
      case 21:
        OUTLINED_FUNCTION_97_9();
        OUTLINED_FUNCTION_78_16();
        sub_1934982A8();
        OUTLINED_FUNCTION_320();
        OUTLINED_FUNCTION_47_23();
        OUTLINED_FUNCTION_173_0();
        v8 = swift_allocObject();
        *(v8 + 16) = v2;
        v9 = 0xA000000000000000;
        goto LABEL_30;
      case 22:
        OUTLINED_FUNCTION_97_9();
        OUTLINED_FUNCTION_78_16();
        sub_1934982A8();
        OUTLINED_FUNCTION_320();
        OUTLINED_FUNCTION_47_23();
        OUTLINED_FUNCTION_173_0();
        v25 = swift_allocObject();
        v8 = OUTLINED_FUNCTION_286_1(v25);
        v9 = v26 & 0xFFFFFFFFFFFFLL | 0xA000000000000000;
        goto LABEL_30;
      case 23:
        OUTLINED_FUNCTION_97_9();
        OUTLINED_FUNCTION_78_16();
        sub_1934982A8();
        OUTLINED_FUNCTION_320();
        OUTLINED_FUNCTION_47_23();
        OUTLINED_FUNCTION_173_0();
        v8 = swift_allocObject();
        *(v8 + 16) = v2;
        v9 = 0xB000000000000000;
        goto LABEL_30;
      case 24:
        OUTLINED_FUNCTION_97_9();
        OUTLINED_FUNCTION_78_16();
        sub_1934982A8();
        OUTLINED_FUNCTION_320();
        OUTLINED_FUNCTION_47_23();
        OUTLINED_FUNCTION_173_0();
        v33 = swift_allocObject();
        v8 = OUTLINED_FUNCTION_286_1(v33);
        v9 = v34 & 0xFFFFFFFFFFFFLL | 0xB000000000000000;
LABEL_30:
        OUTLINED_FUNCTION_266_1(v8, v9);
        break;
      case 25:
        OUTLINED_FUNCTION_97_9();
        OUTLINED_FUNCTION_78_16();
        sub_1934982A8();
        OUTLINED_FUNCTION_320();
        OUTLINED_FUNCTION_47_23();
        OUTLINED_FUNCTION_173_0();
        v14 = swift_allocObject();
        *(v14 + 16) = v2;
        OUTLINED_FUNCTION_331(v14);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1936E50D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch((*v8 >> 59) & 0x1E | (*v8 >> 2) & 1)
  {
    case 1:
      OUTLINED_FUNCTION_49_20();
      v9 = OUTLINED_FUNCTION_182_0(v41, v42, v43, &type metadata for ToolKitToolNullValue, v44, &off_1F07E4EA0, v45, v46, v66);
      break;
    case 2:
      OUTLINED_FUNCTION_49_20();
      v9 = OUTLINED_FUNCTION_135_1(v23, v24, v25, &type metadata for ToolKitToolNullValue, v26, &off_1F07E4EA0, v27, v28, v66);
      break;
    case 3:
      OUTLINED_FUNCTION_49_20();
      v9 = OUTLINED_FUNCTION_174(v29, v30, v31, &type metadata for ToolKitToolNullValue, v32, &off_1F07E4EA0, v33, v34, v66);
      break;
    case 4:
      OUTLINED_FUNCTION_49_20();
      v9 = OUTLINED_FUNCTION_302_1(v17, v18, v19, &type metadata for ToolKitToolNullValue, v20, &off_1F07E4EA0, v21, v22, v66);
      break;
    case 5:
      OUTLINED_FUNCTION_49_20();
      v9 = OUTLINED_FUNCTION_303_0(v47, v48, v49, &type metadata for ToolKitToolNullValue, v50, &off_1F07E4EA0, v51, v52, v66);
      break;
    case 6:
      OUTLINED_FUNCTION_49_20();
      v9 = OUTLINED_FUNCTION_653(v59, v60, v61, &type metadata for ToolKitToolNullValue, v62, &off_1F07E4EA0, v63, v64, v66);
      break;
    case 7:
      OUTLINED_FUNCTION_49_20();
      v9 = OUTLINED_FUNCTION_654(v35, v36, v37, &type metadata for ToolKitToolNullValue, v38, &off_1F07E4EA0, v39, v40, v66);
      break;
    case 8:
      OUTLINED_FUNCTION_49_20();
      v12 = &type metadata for ToolKitToolNullValue;
      v14 = &off_1F07E4EA0;
      v9 = &v66;
      v10 = 9;
      break;
    case 9:
      OUTLINED_FUNCTION_49_20();
      v12 = &type metadata for ToolKitToolNullValue;
      v14 = &off_1F07E4EA0;
      v9 = &v66;
      v10 = 10;
      break;
    case 0xALL:
      OUTLINED_FUNCTION_49_20();
      v12 = &type metadata for ToolKitToolNullValue;
      v14 = &off_1F07E4EA0;
      v9 = &v66;
      v10 = 11;
      break;
    case 0xBLL:
      OUTLINED_FUNCTION_49_19();
      v16 = *(v15 + 16);
      LOBYTE(v15) = *(v15 + 24);
      v66 = v16;
      v67 = v15;
      v12 = &type metadata for ToolKitToolTypeIdentifier.Primitive.MeasurementUnitType;
      v14 = &off_1F07E29D8;
      v9 = &v66;
      v10 = 12;
      break;
    case 0xCLL:
      OUTLINED_FUNCTION_49_20();
      v12 = &type metadata for ToolKitToolNullValue;
      v14 = &off_1F07E4EA0;
      v9 = &v66;
      v10 = 13;
      break;
    case 0xDLL:
      OUTLINED_FUNCTION_49_20();
      v9 = OUTLINED_FUNCTION_655(v53, v54, v55, &type metadata for ToolKitToolNullValue, v56, &off_1F07E4EA0, v57, v58, v66);
      break;
    case 0xELL:
      OUTLINED_FUNCTION_49_20();
      v12 = &type metadata for ToolKitToolNullValue;
      v14 = &off_1F07E4EA0;
      v9 = &v66;
      v10 = 15;
      break;
    case 0xFLL:
      OUTLINED_FUNCTION_49_20();
      v12 = &type metadata for ToolKitToolNullValue;
      v14 = &off_1F07E4EA0;
      v9 = &v66;
      v10 = 16;
      break;
    case 0x10:
      OUTLINED_FUNCTION_49_20();
      v12 = &type metadata for ToolKitToolNullValue;
      v14 = &off_1F07E4EA0;
      v9 = &v66;
      v10 = 17;
      break;
    case 0x11:
      OUTLINED_FUNCTION_49_20();
      v12 = &type metadata for ToolKitToolNullValue;
      v14 = &off_1F07E4EA0;
      v9 = &v66;
      v10 = 18;
      break;
    case 0x12:
      OUTLINED_FUNCTION_49_20();
      v12 = &type metadata for ToolKitToolNullValue;
      v14 = &off_1F07E4EA0;
      v9 = &v66;
      v10 = 19;
      break;
    case 0x13:
      OUTLINED_FUNCTION_49_20();
      v12 = &type metadata for ToolKitToolNullValue;
      v14 = &off_1F07E4EA0;
      v9 = &v66;
      v10 = 20;
      break;
    case 0x14:
      OUTLINED_FUNCTION_49_20();
      v12 = &type metadata for ToolKitToolNullValue;
      v14 = &off_1F07E4EA0;
      v9 = &v66;
      v10 = 21;
      break;
    case 0x15:
      OUTLINED_FUNCTION_49_20();
      v12 = &type metadata for ToolKitToolNullValue;
      v14 = &off_1F07E4EA0;
      v9 = &v66;
      v10 = 22;
      break;
    case 0x16:
      OUTLINED_FUNCTION_49_20();
      v12 = &type metadata for ToolKitToolNullValue;
      v14 = &off_1F07E4EA0;
      v9 = &v66;
      v10 = 23;
      break;
    case 0x17:
      OUTLINED_FUNCTION_49_20();
      v12 = &type metadata for ToolKitToolNullValue;
      v14 = &off_1F07E4EA0;
      v9 = &v66;
      v10 = 24;
      break;
    case 0x18:
      OUTLINED_FUNCTION_49_20();
      v12 = &type metadata for ToolKitToolNullValue;
      v14 = &off_1F07E4EA0;
      v9 = &v66;
      v10 = 25;
      break;
    default:
      v9 = OUTLINED_FUNCTION_134(a1, a2, a2, &type metadata for ToolKitToolNullValue, a3, &off_1F07E4EA0, a7, a8, *(*v8 + 16));
      break;
  }

  return sub_193447324(v9, v10, v11, v12, v13, v14);
}

void sub_1936E54A8()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAC218);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v54 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_9_8(v54, xmmword_19397F8F0);
  *v0 = 0;
  OUTLINED_FUNCTION_63("MeasurementUnitTypeUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v5 = *(v4 + 104);
  v6 = OUTLINED_FUNCTION_50_1();
  v5(v6);
  v7 = OUTLINED_FUNCTION_4_9();
  v8 = OUTLINED_FUNCTION_16_6(v7, "MeasurementUnitTypeLength");
  v5(v8);
  v9 = OUTLINED_FUNCTION_35_4();
  v10 = OUTLINED_FUNCTION_28_4(v9, 23);
  v5(v10);
  v11 = OUTLINED_FUNCTION_9_4((v0 + 3 * v3));
  v12 = OUTLINED_FUNCTION_0_0(v11, "MeasurementUnitTypeTemperature");
  v5(v12);
  v13 = OUTLINED_FUNCTION_13((v0 + 4 * v3));
  v14 = OUTLINED_FUNCTION_16_6(v13, "MeasurementUnitTypeVolume");
  v5(v14);
  v15 = OUTLINED_FUNCTION_19_2((v0 + 5 * v3));
  *v15 = "MeasurementUnitTypeSpeed";
  *(v15 + 1) = 24;
  v16 = OUTLINED_FUNCTION_1_3(v15);
  v5(v16);
  v17 = OUTLINED_FUNCTION_14_4(6);
  v18 = OUTLINED_FUNCTION_16_6(v17, "MeasurementUnitTypeEnergy");
  v5(v18);
  OUTLINED_FUNCTION_120();
  v20 = OUTLINED_FUNCTION_30_0((v0 + v19));
  v21 = OUTLINED_FUNCTION_0_0(v20, "MeasurementUnitTypeDuration");
  v5(v21);
  v22 = OUTLINED_FUNCTION_39_3(&v0[v3]);
  v23 = OUTLINED_FUNCTION_0_0(v22, "MeasurementUnitTypeAcceleration");
  v5(v23);
  v24 = OUTLINED_FUNCTION_55_2((v0 + 9 * v3));
  v25 = OUTLINED_FUNCTION_18_1(v24, "MeasurementUnitTypeAngle");
  v5(v25);
  v26 = OUTLINED_FUNCTION_14_4(10);
  v27 = OUTLINED_FUNCTION_28_4(v26, 23);
  v5(v27);
  v28 = OUTLINED_FUNCTION_14_4(11);
  v29 = OUTLINED_FUNCTION_0_0(v28, "MeasurementUnitTypeConcentrationMass");
  v5(v29);
  v30 = OUTLINED_FUNCTION_14_4(12);
  v31 = OUTLINED_FUNCTION_0_0(v30, "MeasurementUnitTypeDispersion");
  v5(v31);
  v32 = OUTLINED_FUNCTION_14_4(13);
  v33 = OUTLINED_FUNCTION_16_6(v32, "MeasurementUnitTypeElectricCharge");
  v5(v33);
  v34 = OUTLINED_FUNCTION_14_4(14);
  v35 = OUTLINED_FUNCTION_0_0(v34, "MeasurementUnitTypeElectricCurrent");
  v5(v35);
  OUTLINED_FUNCTION_45_2(15 * v3);
  OUTLINED_FUNCTION_180_0(v36);
  v38 = OUTLINED_FUNCTION_0_0(v37, "MeasurementUnitTypeElectricPotentialDifference");
  v5(v38);
  v39 = OUTLINED_FUNCTION_98_14(&v0[2 * v3]);
  v40 = OUTLINED_FUNCTION_18_1(v39, "MeasurementUnitTypeElectricResistance");
  v5(v40);
  v41 = OUTLINED_FUNCTION_45_2(17 * v3);
  *v42 = 17;
  v43 = OUTLINED_FUNCTION_0_0(v41, "MeasurementUnitTypeFrequency");
  v5(v43);
  v44 = OUTLINED_FUNCTION_14_4(18);
  v45 = OUTLINED_FUNCTION_16_6(v44, "MeasurementUnitTypeFuelEfficiency");
  v5(v45);
  v46 = OUTLINED_FUNCTION_14_4(19);
  v47 = OUTLINED_FUNCTION_28_4(v46, 30);
  v5(v47);
  v48 = OUTLINED_FUNCTION_14_4(20);
  v49 = OUTLINED_FUNCTION_18_1(v48, "MeasurementUnitTypeInformationStorage");
  v5(v49);
  v50 = OUTLINED_FUNCTION_14_4(21);
  v51 = OUTLINED_FUNCTION_28_4(v50, 24);
  v5(v51);
  v52 = OUTLINED_FUNCTION_14_4(22);
  *v52 = "MeasurementUnitTypePressure";
  *(v52 + 1) = 27;
  v53 = OUTLINED_FUNCTION_1_3(v52);
  v5(v53);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1936E591C()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, &qword_1EAEAC230);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("bundleIdentifier");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "typeName");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936E5A80()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAC248);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v48 = OUTLINED_FUNCTION_188_1();
  OUTLINED_FUNCTION_11_3(v48, xmmword_193969E40);
  *v0 = "app";
  v0[1] = 3;
  OUTLINED_FUNCTION_107_3();
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_29_1();
  v9 = OUTLINED_FUNCTION_0_0(v8, "boundNumber");
  v6(v9);
  v10 = OUTLINED_FUNCTION_46_10();
  *v11 = 3;
  v12 = OUTLINED_FUNCTION_0_0(v10, "calendar");
  v6(v12);
  v13 = OUTLINED_FUNCTION_22_3();
  *v14 = 4;
  *v13 = "color";
  v13[1] = 5;
  v15 = OUTLINED_FUNCTION_1_3(v13);
  v6(v15);
  v16 = OUTLINED_FUNCTION_67_1((v1 + 4 * v4));
  v17 = OUTLINED_FUNCTION_28_4(v16, 8);
  v6(v17);
  OUTLINED_FUNCTION_45_2(5 * v4);
  OUTLINED_FUNCTION_270_1(v18);
  v20 = OUTLINED_FUNCTION_16_6(v19, "file");
  v6(v20);
  v21 = OUTLINED_FUNCTION_30_0((v1 + 6 * v4));
  v22 = OUTLINED_FUNCTION_28_4(v21, 8);
  v6(v22);
  OUTLINED_FUNCTION_120();
  v24 = OUTLINED_FUNCTION_39_3((v1 + v23));
  v25 = OUTLINED_FUNCTION_18_1(v24, "mediaRoute");
  v6(v25);
  v26 = OUTLINED_FUNCTION_55_2((v1 + 8 * v4));
  v27 = OUTLINED_FUNCTION_16_6(v26, "paymentMethod");
  v6(v27);
  v28 = OUTLINED_FUNCTION_45_2(9 * v4);
  *v29 = 10;
  v30 = OUTLINED_FUNCTION_28_4(v28, 7);
  v6(v30);
  v31 = OUTLINED_FUNCTION_3_1(v1 + 10 * v4);
  *v32 = 11;
  v33 = OUTLINED_FUNCTION_28_4(v31, 6);
  v6(v33);
  OUTLINED_FUNCTION_3_1(v1 + 11 * v4);
  OUTLINED_FUNCTION_632(v34);
  v36 = OUTLINED_FUNCTION_28_4(v35, 9);
  v6(v36);
  v37 = OUTLINED_FUNCTION_60_1((v1 + 11 * v4));
  v38 = OUTLINED_FUNCTION_18_1(v37, "rideshareOption");
  v6(v38);
  v39 = OUTLINED_FUNCTION_157_9((v1 + 13 * v4));
  v40 = OUTLINED_FUNCTION_28_4(v39, 3);
  v6(v40);
  v41 = OUTLINED_FUNCTION_67_1((v1 + 13 * v4));
  v42 = OUTLINED_FUNCTION_28_4(v41, 8);
  v6(v42);
  OUTLINED_FUNCTION_45_2(15 * v4);
  OUTLINED_FUNCTION_256_1(v43);
  v45 = OUTLINED_FUNCTION_28_4(v44, 5);
  v6(v45);
  v46 = OUTLINED_FUNCTION_131_1((v1 + 16 * v4));
  *v46 = "measurement";
  *(v46 + 1) = 11;
  v47 = OUTLINED_FUNCTION_1_3(v46);
  v6(v47);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1936E6248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  switch((*v4 >> 59) & 0x1E | (*v4 >> 2) & 1)
  {
    case 1:
      OUTLINED_FUNCTION_62_19();
      v11 = OUTLINED_FUNCTION_165_4(v17, v18, v19, &type metadata for ToolKitToolNullValue, v20, &off_1F07E4EA0, v21, v22, v23, v24);
      goto LABEL_19;
    case 2:
      OUTLINED_FUNCTION_62_19();
      v14 = &type metadata for ToolKitToolNullValue;
      v16 = &off_1F07E4EA0;
      v11 = &v24;
      v12 = 3;
      goto LABEL_19;
    case 3:
      OUTLINED_FUNCTION_62_19();
      v14 = &type metadata for ToolKitToolNullValue;
      v16 = &off_1F07E4EA0;
      v11 = &v24;
      v12 = 4;
      goto LABEL_19;
    case 4:
      OUTLINED_FUNCTION_62_19();
      v14 = &type metadata for ToolKitToolNullValue;
      v16 = &off_1F07E4EA0;
      v11 = &v24;
      v12 = 5;
      goto LABEL_19;
    case 5:
      OUTLINED_FUNCTION_62_19();
      v14 = &type metadata for ToolKitToolNullValue;
      v16 = &off_1F07E4EA0;
      v11 = &v24;
      v12 = 6;
      goto LABEL_19;
    case 6:
      OUTLINED_FUNCTION_62_19();
      v14 = &type metadata for ToolKitToolNullValue;
      v16 = &off_1F07E4EA0;
      v11 = &v24;
      v12 = 7;
      goto LABEL_19;
    case 7:
      OUTLINED_FUNCTION_62_19();
      v14 = &type metadata for ToolKitToolNullValue;
      v16 = &off_1F07E4EA0;
      v11 = &v24;
      v12 = 8;
      goto LABEL_19;
    case 8:
      OUTLINED_FUNCTION_62_19();
      v14 = &type metadata for ToolKitToolNullValue;
      v16 = &off_1F07E4EA0;
      v11 = &v24;
      v12 = 9;
      goto LABEL_19;
    case 9:
      OUTLINED_FUNCTION_62_19();
      v14 = &type metadata for ToolKitToolNullValue;
      v16 = &off_1F07E4EA0;
      v11 = &v24;
      v12 = 10;
      goto LABEL_19;
    case 0xALL:
      OUTLINED_FUNCTION_62_19();
      v14 = &type metadata for ToolKitToolNullValue;
      v16 = &off_1F07E4EA0;
      v11 = &v24;
      v12 = 11;
      goto LABEL_19;
    case 0xBLL:
      OUTLINED_FUNCTION_62_19();
      v14 = &type metadata for ToolKitToolNullValue;
      v16 = &off_1F07E4EA0;
      v11 = &v24;
      v12 = 12;
      goto LABEL_19;
    case 0xCLL:
      OUTLINED_FUNCTION_62_19();
      v14 = &type metadata for ToolKitToolNullValue;
      v16 = &off_1F07E4EA0;
      v11 = &v24;
      v12 = 13;
      goto LABEL_19;
    case 0xDLL:
      OUTLINED_FUNCTION_62_19();
      v14 = &type metadata for ToolKitToolNullValue;
      v16 = &off_1F07E4EA0;
      v11 = &v24;
      v12 = 14;
      goto LABEL_19;
    case 0xELL:
      OUTLINED_FUNCTION_62_19();
      v14 = &type metadata for ToolKitToolNullValue;
      v16 = &off_1F07E4EA0;
      v11 = &v24;
      v12 = 15;
      goto LABEL_19;
    case 0xFLL:
      OUTLINED_FUNCTION_62_19();
      sub_193447600();
      return;
    case 0x10:
      OUTLINED_FUNCTION_62_19();
      v14 = &type metadata for ToolKitToolNullValue;
      v16 = &off_1F07E4EA0;
      v11 = &v24;
      v12 = 17;
      goto LABEL_19;
    default:
      OUTLINED_FUNCTION_185_5();
      v11 = OUTLINED_FUNCTION_153(v5, v6, v7, &type metadata for ToolKitToolNullValue, v8, &off_1F07E4EA0, v9, v10, v23, v24);
LABEL_19:
      sub_193447324(v11, v12, v13, v14, v15, v16);
      return;
  }
}

void sub_1936E6524()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC260);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("sourceContainer");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "attributionContainer");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_48(v7, "typeName");
  v3(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936E6674()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 3)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C200();
    }

    else if (v1 == 2 || v1 == 1)
    {
      OUTLINED_FUNCTION_62();
      sub_193498018();
    }
  }
}

uint64_t sub_1936E6860(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 8))
  {
    OUTLINED_FUNCTION_318_0();
    return sub_19393C3C0();
  }

  return v4;
}

void sub_1936E6900()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAC290);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v53 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_8_18(v53, xmmword_193969E30);
  OUTLINED_FUNCTION_171_5("unk");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v5 = *(v4 + 104);
  v6 = OUTLINED_FUNCTION_50_1();
  v5(v6);
  v7 = OUTLINED_FUNCTION_58_18();
  *v7 = "mailAccount";
  v7[1] = 11;
  v8 = OUTLINED_FUNCTION_41(v7);
  v5(v8);
  v9 = OUTLINED_FUNCTION_59_5();
  *v10 = 3;
  v11 = OUTLINED_FUNCTION_5_4(v9, "mailAddressee");
  v5(v11);
  v12 = OUTLINED_FUNCTION_9_64();
  v13 = OUTLINED_FUNCTION_23_7(v12, "mailMessage");
  v5(v13);
  v14 = OUTLINED_FUNCTION_21_39();
  v15 = OUTLINED_FUNCTION_36_0(v14, "mailbox");
  v5(v15);
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_140_0(v16);
  v18 = OUTLINED_FUNCTION_15(v17, 13);
  v5(v18);
  v19 = OUTLINED_FUNCTION_72();
  *v20 = 7;
  v21 = OUTLINED_FUNCTION_36_0(v19, "messageGroup");
  v5(v21);
  OUTLINED_FUNCTION_33_0(8 * v3);
  OUTLINED_FUNCTION_121_1(v22);
  v24 = OUTLINED_FUNCTION_5_4(v23, "messageParticipants");
  v5(v24);
  v25 = OUTLINED_FUNCTION_55_2((v0 + 8 * v3));
  v26 = OUTLINED_FUNCTION_36_0(v25, "uniqueEntity");
  v5(v26);
  v27 = OUTLINED_FUNCTION_44(9 * v3);
  *v28 = 10;
  v29 = OUTLINED_FUNCTION_5_4(v27, "intentUpdatableEntity");
  v5(v29);
  v30 = OUTLINED_FUNCTION_72();
  *v31 = 11;
  v32 = OUTLINED_FUNCTION_5_4(v30, "urlRepresentable");
  v5(v32);
  v33 = OUTLINED_FUNCTION_72();
  *v34 = 12;
  v35 = OUTLINED_FUNCTION_36_0(v33, "visualSearch");
  v5(v35);
  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_625(v36);
  v38 = OUTLINED_FUNCTION_36_0(v37, "visualSearchOcr");
  v5(v38);
  v39 = OUTLINED_FUNCTION_72();
  *v40 = 14;
  v41 = OUTLINED_FUNCTION_36_0(v39, "assistantSchema");
  v5(v41);
  v42 = OUTLINED_FUNCTION_72();
  *v43 = 15;
  v44 = OUTLINED_FUNCTION_36_0(v42, "updatableEntity");
  v5(v44);
  OUTLINED_FUNCTION_33_0(16 * v3);
  OUTLINED_FUNCTION_256_1(v45);
  v47 = OUTLINED_FUNCTION_5_4(v46, "persistentFileIdentifiable");
  v5(v47);
  v48 = OUTLINED_FUNCTION_131_1((v0 + 16 * v3));
  v49 = OUTLINED_FUNCTION_36_0(v48, "transientEntity");
  v5(v49);
  v50 = OUTLINED_FUNCTION_44(17 * v3);
  *v51 = 18;
  *v50 = "indexedEntity";
  v50[1] = 13;
  v52 = OUTLINED_FUNCTION_41(v50);
  v5(v52);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1936E6C88()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v3 = OUTLINED_FUNCTION_124();
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    switch(v3)
    {
      case 1:
        *&v37[0] = 0;
        BYTE8(v37[0]) = 1;
        OUTLINED_FUNCTION_7_43();
        sub_1934982A8();
        OUTLINED_FUNCTION_340();
        OUTLINED_FUNCTION_64_16();
        OUTLINED_FUNCTION_173_0();
        v5 = swift_allocObject();
        *(v5 + 16) = v2;
        *v1 = v5;
        continue;
      case 2:
        *&v37[0] = 0;
        BYTE8(v37[0]) = 1;
        OUTLINED_FUNCTION_7_43();
        sub_1934982A8();
        OUTLINED_FUNCTION_340();
        OUTLINED_FUNCTION_64_16();
        OUTLINED_FUNCTION_173_0();
        v22 = swift_allocObject();
        *(v22 + 16) = v2;
        OUTLINED_FUNCTION_629(v22);
        continue;
      case 3:
        *&v37[0] = 0;
        BYTE8(v37[0]) = 1;
        OUTLINED_FUNCTION_7_43();
        sub_1934982A8();
        OUTLINED_FUNCTION_340();
        OUTLINED_FUNCTION_64_16();
        OUTLINED_FUNCTION_173_0();
        v16 = swift_allocObject();
        *(v16 + 16) = v2;
        OUTLINED_FUNCTION_347(v16);
        continue;
      case 4:
        *&v37[0] = 0;
        BYTE8(v37[0]) = 1;
        OUTLINED_FUNCTION_7_43();
        sub_1934982A8();
        OUTLINED_FUNCTION_340();
        OUTLINED_FUNCTION_64_16();
        OUTLINED_FUNCTION_173_0();
        v9 = swift_allocObject();
        *(v9 + 16) = v2;
        v11 = 0x1000000000000004;
        goto LABEL_26;
      case 5:
        *&v37[0] = 0;
        BYTE8(v37[0]) = 1;
        OUTLINED_FUNCTION_7_43();
        sub_1934982A8();
        OUTLINED_FUNCTION_340();
        OUTLINED_FUNCTION_64_16();
        OUTLINED_FUNCTION_173_0();
        v12 = swift_allocObject();
        *(v12 + 16) = v2;
        OUTLINED_FUNCTION_257_0(v12);
        continue;
      case 6:
        *&v37[0] = 0;
        BYTE8(v37[0]) = 1;
        OUTLINED_FUNCTION_7_43();
        sub_1934982A8();
        OUTLINED_FUNCTION_340();
        OUTLINED_FUNCTION_64_16();
        OUTLINED_FUNCTION_173_0();
        v25 = swift_allocObject();
        v9 = OUTLINED_FUNCTION_620(v25);
        v11 = v26 & 0xFFFFFFFFFFFFLL | 0x2000000000000000;
        goto LABEL_26;
      case 7:
        *&v37[0] = 0;
        BYTE8(v37[0]) = 1;
        OUTLINED_FUNCTION_7_43();
        sub_1934982A8();
        OUTLINED_FUNCTION_340();
        OUTLINED_FUNCTION_64_16();
        OUTLINED_FUNCTION_173_0();
        v30 = swift_allocObject();
        *(v30 + 16) = v2;
        OUTLINED_FUNCTION_330(v30);
        continue;
      case 8:
        *&v37[0] = 0;
        BYTE8(v37[0]) = 1;
        OUTLINED_FUNCTION_7_43();
        sub_1934982A8();
        OUTLINED_FUNCTION_340();
        OUTLINED_FUNCTION_64_16();
        OUTLINED_FUNCTION_173_0();
        v20 = swift_allocObject();
        v9 = OUTLINED_FUNCTION_620(v20);
        v11 = v21 & 0xFFFFFFFFFFFFLL | 0x3000000000000000;
        goto LABEL_26;
      case 9:
        *&v37[0] = 0;
        BYTE8(v37[0]) = 1;
        OUTLINED_FUNCTION_7_43();
        sub_1934982A8();
        OUTLINED_FUNCTION_340();
        OUTLINED_FUNCTION_64_16();
        OUTLINED_FUNCTION_173_0();
        v31 = swift_allocObject();
        *(v31 + 16) = v2;
        OUTLINED_FUNCTION_277(v31);
        continue;
      case 10:
        v37[0] = xmmword_1939526A0;
        sub_193498018();
        OUTLINED_FUNCTION_340();
        v14 = *(&v37[0] + 1);
        if (*(&v37[0] + 1) == 1)
        {
          v15 = __dst;
          ToolKitToolSystemTypeProtocol.IntentUpdatableEntity.init()();
          v14 = __dst[1];
        }

        else
        {
          v15 = v37;
        }

        v2 = *v15;
        OUTLINED_FUNCTION_123_1();
        v18 = swift_allocObject();
        *(v18 + 16) = v2;
        *(v18 + 24) = v14;
        v19 = 0x4000000000000004;
        goto LABEL_30;
      case 11:
        *&v37[0] = 0;
        BYTE8(v37[0]) = 1;
        OUTLINED_FUNCTION_7_43();
        sub_1934982A8();
        OUTLINED_FUNCTION_340();
        OUTLINED_FUNCTION_64_16();
        OUTLINED_FUNCTION_173_0();
        v9 = swift_allocObject();
        *(v9 + 16) = v2;
        v11 = 0x5000000000000000;
        goto LABEL_26;
      case 12:
        *&v37[0] = 0;
        BYTE8(v37[0]) = 1;
        OUTLINED_FUNCTION_7_43();
        sub_1934982A8();
        OUTLINED_FUNCTION_340();
        OUTLINED_FUNCTION_64_16();
        OUTLINED_FUNCTION_173_0();
        v8 = swift_allocObject();
        v9 = OUTLINED_FUNCTION_620(v8);
        v11 = v10 & 0xFFFFFFFFFFFFLL | 0x5000000000000000;
        goto LABEL_26;
      case 13:
        *&v37[0] = 0;
        BYTE8(v37[0]) = 1;
        OUTLINED_FUNCTION_7_43();
        sub_1934982A8();
        OUTLINED_FUNCTION_340();
        OUTLINED_FUNCTION_64_16();
        OUTLINED_FUNCTION_173_0();
        v13 = swift_allocObject();
        *(v13 + 16) = v2;
        OUTLINED_FUNCTION_285_1(v13);
        continue;
      case 14:
        v37[0] = xmmword_19395BB80;
        *&v27 = OUTLINED_FUNCTION_619(v37);
        *(v28 + 48) = v27;
        *(v28 + 64) = v27;
        sub_193498018();
        OUTLINED_FUNCTION_340();
        if (*(&v37[0] + 1) == 2)
        {
          ToolKitToolSystemTypeProtocol.AssistantSchema.init()(v29);
        }

        else
        {
          __src[1] = v37[1];
          __src[2] = v37[2];
          __src[3] = v37[3];
          __src[4] = v37[4];
          __src[0] = v37[0];
        }

        OUTLINED_FUNCTION_137_7();
        v33 = swift_allocObject();
        v34 = OUTLINED_FUNCTION_151_1(v33);
        memcpy(v34, __src, 0x50uLL);
        v32 = 0x60000001F07ECA94uLL;
        goto LABEL_33;
      case 15:
        *&v37[0] = 0;
        BYTE8(v37[0]) = 1;
        OUTLINED_FUNCTION_7_43();
        sub_1934982A8();
        OUTLINED_FUNCTION_340();
        OUTLINED_FUNCTION_64_16();
        OUTLINED_FUNCTION_173_0();
        v7 = swift_allocObject();
        *(v7 + 16) = v2;
        OUTLINED_FUNCTION_332(v7);
        continue;
      case 16:
        *&v37[0] = 0;
        sub_193498018();
        OUTLINED_FUNCTION_340();
        v17 = *&v37[0];
        if (!*&v37[0])
        {
          ToolKitToolSystemTypeProtocol.PersistentFileIdentifiable.init()();
          v17 = __dst[0];
        }

        OUTLINED_FUNCTION_173_0();
        v18 = swift_allocObject();
        *(v18 + 16) = v17;
        v19 = 0x7000000000000004;
LABEL_30:
        v32 = v18 | v19;
LABEL_33:
        *v1 = v32;
        break;
      case 17:
        *&v37[0] = 0;
        BYTE8(v37[0]) = 1;
        OUTLINED_FUNCTION_7_43();
        sub_1934982A8();
        OUTLINED_FUNCTION_340();
        OUTLINED_FUNCTION_64_16();
        OUTLINED_FUNCTION_173_0();
        v6 = swift_allocObject();
        *(v6 + 16) = v2;
        OUTLINED_FUNCTION_285(v6);
        break;
      case 18:
        *&v37[0] = 0;
        BYTE8(v37[0]) = 1;
        OUTLINED_FUNCTION_7_43();
        sub_1934982A8();
        OUTLINED_FUNCTION_340();
        OUTLINED_FUNCTION_64_16();
        OUTLINED_FUNCTION_173_0();
        v23 = swift_allocObject();
        v9 = OUTLINED_FUNCTION_620(v23);
        v11 = v24 & 0xFFFFFFFFFFFFLL | 0x8000000000000000;
LABEL_26:
        OUTLINED_FUNCTION_266_1(v9, v11);
        break;
      default:
        continue;
    }
  }
}

void sub_1936E7324()
{
  switch((*v0 >> 59) & 0x1E | (*v0 >> 2) & 1)
  {
    case 1:
      OUTLINED_FUNCTION_65_19();
      OUTLINED_FUNCTION_617(v8, v9, v10, &type metadata for ToolKitToolNullValue, v11, &off_1F07E4EA0, v12, v13, v27[0], v27[1], v27[2], v27[3], v27[4], v27[5], v27[6], v27[7], v27[8], v27[9], __dst[0]);
      goto LABEL_10;
    case 2:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 0xALL:
    case 0xBLL:
    case 0xCLL:
    case 0xELL:
    case 0x10:
    case 0x11:
      OUTLINED_FUNCTION_65_19();
      goto LABEL_10;
    case 3:
      OUTLINED_FUNCTION_65_19();
      OUTLINED_FUNCTION_618(v2, v3, v4, &type metadata for ToolKitToolNullValue, v5, &off_1F07E4EA0, v6, v7, v27[0], v27[1], v27[2], v27[3], v27[4], v27[5], v27[6], v27[7], v27[8], v27[9], __dst[0]);
      goto LABEL_10;
    case 9:
      OUTLINED_FUNCTION_49_19();
      OUTLINED_FUNCTION_93_10(v1);
      goto LABEL_8;
    case 0xDLL:
      OUTLINED_FUNCTION_49_19();
      memcpy(__dst, (v14 + 16), sizeof(__dst));
      v15 = memcpy(v27, __dst, sizeof(v27));
      OUTLINED_FUNCTION_655(v15, v16, v17, &type metadata for ToolKitToolSystemTypeProtocol.AssistantSchema, v18, &off_1F07E2B20, v19, v20, v27[0]);
      goto LABEL_8;
    case 0xFLL:
      OUTLINED_FUNCTION_65_19();
LABEL_8:
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
      break;
    default:
      *__dst = *(*v0 + 16);
LABEL_10:
      OUTLINED_FUNCTION_78_1();
      sub_193447324(v21, v22, v23, v24, v25, v26);
      break;
  }
}

void sub_1936E77AC()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAC308);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_31_13();
  OUTLINED_FUNCTION_11_3(v4, xmmword_19394FBD0);
  OUTLINED_FUNCTION_63("primitive");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_29_1();
  v9 = OUTLINED_FUNCTION_0_0(v8, "entity");
  v6(v9);
  v10 = OUTLINED_FUNCTION_13_12();
  v11 = OUTLINED_FUNCTION_0_0(v10, "enumeration");
  v6(v11);
  v12 = OUTLINED_FUNCTION_14_6();
  v13 = OUTLINED_FUNCTION_16_6(v12, "query");
  v6(v13);
  v14 = OUTLINED_FUNCTION_60_1((v0 + 4 * v3));
  v15 = OUTLINED_FUNCTION_0_0(v14, "codable");
  v6(v15);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936E7940()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  v41 = xmmword_1939526A0;
  while (1)
  {
    v3 = OUTLINED_FUNCTION_124();
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    switch(v3)
    {
      case 1:
        *&__src[0] = 0xF000000000000007;
        OUTLINED_FUNCTION_382();
        sub_193498018();
        OUTLINED_FUNCTION_171();
        v2 = *&__src[0];
        if ((~*&__src[0] & 0xF000000000000007) == 0)
        {
          OUTLINED_FUNCTION_173_0();
          v11 = swift_allocObject();
          OUTLINED_FUNCTION_642(v11);
        }

        OUTLINED_FUNCTION_173_0();
        v12 = swift_allocObject();
        *(v12 + 16) = v2;
        *v1 = v12;
        break;
      case 2:
        memset(__src, 0, sizeof(__src));
        OUTLINED_FUNCTION_382();
        sub_193498018();
        OUTLINED_FUNCTION_171();
        OUTLINED_FUNCTION_615();
        memcpy(v29, v30, 0x50uLL);
        memcpy(__dst, __src, sizeof(__dst));
        *&v46 = v2;
        *(&v46 + 1) = 0xF000000000000007;
        memcpy(v47, &__src[1], sizeof(v47));
        sub_1936C1000(&v46, v42);
        sub_19344E6DC(__dst, &qword_1EAE41968, &qword_19397F970);
        memcpy(&v44[2], v45, 0x50uLL);
        v44[0] = v2;
        v44[1] = 0xF000000000000007;
        OUTLINED_FUNCTION_209_0();
        v37 = swift_allocObject();
        v38 = OUTLINED_FUNCTION_151_1(v37);
        memcpy(v38, v44, 0x60uLL);
        *v1 = v2 | 0x2000000000000000;
        break;
      case 3:
        memset(__src, 0, 88);
        OUTLINED_FUNCTION_382();
        sub_193498018();
        OUTLINED_FUNCTION_171();
        OUTLINED_FUNCTION_615();
        memcpy(v15, v16, 0x48uLL);
        memcpy(__dst, __src, 0x58uLL);
        *&v46 = v2;
        *(&v46 + 1) = 0xF000000000000007;
        memcpy(v47, &__src[1], 0x48uLL);
        sub_1936C1448(&v46, v42);
        sub_19344E6DC(__dst, &qword_1EAE41960, &qword_19397F968);
        memcpy(&v49[2], v45, 0x48uLL);
        v49[0] = v2;
        v49[1] = 0xF000000000000007;
        v35 = swift_allocObject();
        v36 = OUTLINED_FUNCTION_151_1(v35);
        memcpy(v36, v49, 0x58uLL);
        *v1 = v2 | 0x4000000000000000;
        break;
      case 4:
        *&v17 = OUTLINED_FUNCTION_613(v3, v4, v5, v6, v7, v8, v9, v10, v39, *(&v39 + 1), v40, *(&v40 + 1), v41);
        __src[3] = v17;
        __src[4] = v17;
        OUTLINED_FUNCTION_382();
        sub_193498018();
        OUTLINED_FUNCTION_171();
        v2 = *(&__src[0] + 1);
        v18 = *&__src[0];
        v45[0] = __src[1];
        v45[1] = __src[2];
        v45[2] = __src[3];
        v45[3] = __src[4];
        if (*(&__src[0] + 1) == 1)
        {
          ToolKitToolTypeDefinition.Version1.Query.init()();
          v27 = OUTLINED_FUNCTION_346(v19, v20, v21, v22, v23, v24, v25, v26, v39, *(&v39 + 1), v40, *(&v40 + 1), v41, *(&v41 + 1), v42[0], v42[1], v42[2], v42[3], v42[4], v42[5], v42[6], v42[7], v42[8], v42[9], v42[10], v42[11], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v44[0], v44[1], v44[2], v44[3], v44[4], v44[5], v44[6], v44[7], v44[8], v44[9], v44[10], v44[11], *&v45[0], *(&v45[0] + 1), *&v45[1], *(&v45[1] + 1), *&v45[2], *(&v45[2] + 1), *&v45[3], *(&v45[3] + 1), *&v45[4], *(&v45[4] + 1), v46);
          memcpy(v27, v28, 0x50uLL);
          sub_19344E6DC(&v46, &qword_1EAE41958, &qword_19397F960);
        }

        else
        {
          memcpy(__dst, __src, 0x50uLL);
          v46 = __src[0];
          v47[0] = __src[1];
          v47[1] = __src[2];
          v47[2] = __src[3];
          v47[3] = __src[4];
          sub_1936C17FC(&v46, v42);
          sub_19344E6DC(__dst, &qword_1EAE41958, &qword_19397F960);
          v50[1] = v45[0];
          v50[2] = v45[1];
          v50[3] = v45[2];
          v50[4] = v45[3];
          v50[0] = __PAIR128__(v2, v18);
        }

        OUTLINED_FUNCTION_137_7();
        v33 = swift_allocObject();
        v34 = OUTLINED_FUNCTION_151_1(v33);
        memcpy(v34, v50, 0x50uLL);
        *v1 = v2 | 0x6000000000000000;
        break;
      case 5:
        OUTLINED_FUNCTION_613(v3, v4, v5, v6, v7, v8, v9, v10, v39, *(&v39 + 1), v40, *(&v40 + 1), v41);
        *&__src[3] = 0;
        OUTLINED_FUNCTION_382();
        sub_193498018();
        OUTLINED_FUNCTION_171();
        v13 = *(&__src[0] + 1);
        if (*(&__src[0] + 1) == 1)
        {
          v14 = &v46;
          ToolKitToolTypeDefinition.Version1.Codable.init()(&v46);
          v13 = *(&v46 + 1);
          v39 = v47[0];
          v40 = v47[1];
          v2 = *&v47[2];
        }

        else
        {
          v2 = *&__src[3];
          v14 = __src;
          v39 = __src[1];
          v40 = __src[2];
        }

        v31 = *v14;
        v32 = swift_allocObject();
        *(v32 + 16) = v31;
        *(v32 + 24) = v13;
        *(v32 + 32) = v39;
        *(v32 + 48) = v40;
        *(v32 + 64) = v2;
        OUTLINED_FUNCTION_285(v32);
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1936E7EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 != 1)
  {

    sub_193613BF4(a3, a4, a5, a6, a7);
  }
}

void sub_1936E7F24()
{
  OUTLINED_FUNCTION_103_10();
  switch(v9)
  {
    case 1:
      v30 = OUTLINED_FUNCTION_116_12(v0, v1, v2, v3, v4, v5, v6, v7, v38[0], v38[1], v38[2], v38[3], v38[4], v38[5], v38[6], v38[7], v38[8], v38[9], v38[10], v38[11], __src[0]);
      memcpy(v30, v31, 0x60uLL);
      v32 = memcpy(v38, __src, sizeof(v38));
      OUTLINED_FUNCTION_182_0(v32, v33, v34, &type metadata for ToolKitToolTypeDefinition.Version1.Entity, v35, &off_1F07E2BE0, v36, v37, v38[0]);
      break;
    case 2:
      v14 = OUTLINED_FUNCTION_116_12(v0, v1, v2, v3, v4, v5, v6, v7, v38[0], v38[1], v38[2], v38[3], v38[4], v38[5], v38[6], v38[7], v38[8], v38[9], v38[10], v38[11], __src[0]);
      memcpy(v14, v15, 0x58uLL);
      v16 = memcpy(v38, __src, 0x58uLL);
      OUTLINED_FUNCTION_135_1(v16, v17, v18, &type metadata for ToolKitToolTypeDefinition.Version1.Enumeration, v19, &off_1F07E2C68, v20, v21, v38[0]);
      break;
    case 3:
      v22 = OUTLINED_FUNCTION_116_12(v0, v1, v2, v3, v4, v5, v6, v7, v38[0], v38[1], v38[2], v38[3], v38[4], v38[5], v38[6], v38[7], v38[8], v38[9], v38[10], v38[11], __src[0]);
      memcpy(v22, v23, 0x50uLL);
      v24 = memcpy(v38, __src, 0x50uLL);
      OUTLINED_FUNCTION_174(v24, v25, v26, &type metadata for ToolKitToolTypeDefinition.Version1.Query, v27, &off_1F07E2CF0, v28, v29, v38[0]);
      break;
    case 4:
      v10 = v8 & 0x1FFFFFFFFFFFFFFFLL;
      v11 = *(v10 + 64);
      v12 = *(v10 + 32);
      v13 = *(v10 + 48);
      __src[0] = *(v10 + 16);
      __src[1] = v12;
      __src[2] = v13;
      *&__src[3] = v11;
      break;
    default:
      *&__src[0] = *(v8 + 16);
      break;
  }

  OUTLINED_FUNCTION_23_3();
  sub_193447600();
}

void sub_1936E8108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_108_0();
  v11 = sub_19393C420();
  __swift_allocate_value_buffer(v11, qword_1EAEAC320);
  OUTLINED_FUNCTION_136_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v13 = *(v12 + 72);
  OUTLINED_FUNCTION_49_0();
  v33 = OUTLINED_FUNCTION_152_10();
  OUTLINED_FUNCTION_8_18(v33, xmmword_1939526B0);
  OUTLINED_FUNCTION_171_5("identifier");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v15 = *(v14 + 104);
  v16 = OUTLINED_FUNCTION_50_1();
  v15(v16);
  v17 = OUTLINED_FUNCTION_58_18();
  v18 = OUTLINED_FUNCTION_36_0(v17, "properties");
  v15(v18);
  v19 = OUTLINED_FUNCTION_9_4((v10 + 2 * v13));
  v20 = OUTLINED_FUNCTION_5_4(v19, "runtimeRequirements");
  v15(v20);
  v21 = OUTLINED_FUNCTION_9_64();
  v22 = OUTLINED_FUNCTION_5_4(v21, "displayRepresentation");
  v15(v22);
  v23 = OUTLINED_FUNCTION_21_39();
  v24 = OUTLINED_FUNCTION_5_4(v23, "sampleInvocations");
  v15(v24);
  v25 = OUTLINED_FUNCTION_38_2();
  *v26 = 6;
  v27 = OUTLINED_FUNCTION_5_4(v25, "systemProtocols");
  v15(v27);
  v28 = OUTLINED_FUNCTION_30_0((v10 + 6 * v13));
  v29 = OUTLINED_FUNCTION_5_4(v28, "runtimeFlags");
  v15(v29);
  OUTLINED_FUNCTION_33_0(a10);
  OUTLINED_FUNCTION_121_1(v30);
  *v31 = "coercions";
  v31[1] = 9;
  v32 = OUTLINED_FUNCTION_41(v31);
  v15(v32);
  sub_19393C410();
  OUTLINED_FUNCTION_107();
}

void sub_1936E8318()
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
        OUTLINED_FUNCTION_125();
        goto LABEL_9;
      case 2:
        v6 = OUTLINED_FUNCTION_242_2();
        v8 = &type metadata for ToolKitToolTypeDefinition.Version1.Entity.Property;
        v9 = v2;
        v10 = &off_1F07E2C38;
        goto LABEL_13;
      case 3:
        v6 = OUTLINED_FUNCTION_196_3();
        v8 = &type metadata for ToolKitToolRuntimeRequirement;
        v9 = v2;
        v10 = &off_1F07E3E70;
        goto LABEL_13;
      case 4:
        OUTLINED_FUNCTION_319_0();
LABEL_9:
        sub_193498018();
        continue;
      case 5:
        v6 = v0 + 64;
        v7 = v3;
        v8 = &type metadata for ToolKitToolSampleInvocationDefinition;
        v9 = v2;
        v10 = &off_1F07E40A0;
        goto LABEL_13;
      case 6:
        OUTLINED_FUNCTION_180_6();
        goto LABEL_13;
      case 7:
        OUTLINED_FUNCTION_89_2();
        sub_1934984D4(v11, v12, v13, v14, v15);
        continue;
      case 8:
        OUTLINED_FUNCTION_147_0();
LABEL_13:
        sub_193498238(v6, v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1936E8480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_307();
  OUTLINED_FUNCTION_75_3();
  v28 = v26[1];
  v29 = v26[2];
  v30 = v26[7];
  v31 = v26[8];
  v32 = v26[9];
  v70 = v26[10];
  v71 = v26[11];
  OUTLINED_FUNCTION_66_21();
  if (!v33)
  {
    OUTLINED_FUNCTION_108_1();
    sub_193447600();
  }

  if (!v27)
  {
    if (*(v28 + 16))
    {
      OUTLINED_FUNCTION_129_4();
      sub_193451CFC(v34, v35, v36, v37, v38, v39);
    }

    if (*(v29 + 16))
    {
      OUTLINED_FUNCTION_134_11();
      sub_193451CFC(v40, v41, v42, v43, v44, v45);
    }

    if (v30)
    {
      OUTLINED_FUNCTION_145_8();
      sub_193447600();
    }

    if (*(v31 + 16))
    {
      OUTLINED_FUNCTION_106();
      sub_193451CFC(v46, v47, v48, v49, v50, v51);
    }

    if (*(v32 + 16))
    {
      OUTLINED_FUNCTION_154_8();
      sub_193451CFC(v52, v53, v54, v55, v56, v57);
    }

    if (*(v70 + 16))
    {
      OUTLINED_FUNCTION_106();
      sub_193498B44(v58, v59, v60, v61, v62, v63);
    }

    if (*(v71 + 16))
    {
      OUTLINED_FUNCTION_106();
      sub_193451CFC(v64, v65, v66, v67, v68, v69);
    }
  }

  OUTLINED_FUNCTION_17_0();
}

void sub_1936E8694()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAC338);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_34_5(v2, xmmword_19394FBE0);
  *v0 = 0;
  OUTLINED_FUNCTION_69_0("RuntimeFlagsUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v4 = *(v3 + 104);
  v5 = OUTLINED_FUNCTION_65();
  v4(v5);
  v6 = OUTLINED_FUNCTION_4_9();
  v7 = OUTLINED_FUNCTION_48(v6, "RuntimeFlagsTransientAppEntity");
  v4(v7);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936E87F4()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAC350);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v2, xmmword_19394FBB0);
  *v0 = "id";
  *(v0 + 8) = 2;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v4 = *(v3 + 104);
  v5 = OUTLINED_FUNCTION_65();
  v4(v5);
  v6 = OUTLINED_FUNCTION_29_1();
  v7 = OUTLINED_FUNCTION_48(v6, "displayName");
  v4(v7);
  v8 = OUTLINED_FUNCTION_13_12();
  v9 = OUTLINED_FUNCTION_48(v8, "type");
  v4(v9);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936E8948()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 3)
    {
      OUTLINED_FUNCTION_62();
      sub_193498018();
    }

    else if (v1 == 2 || v1 == 1)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C200();
    }
  }
}

void sub_1936E89DC()
{
  OUTLINED_FUNCTION_134_7();
  OUTLINED_FUNCTION_110();
  v2 = v0[3];
  v3 = v0[4];
  if (v0[1])
  {
    v4 = OUTLINED_FUNCTION_318_0();
    OUTLINED_FUNCTION_181(v4, v5, v6);
  }

  if (!v1)
  {
    if (v2)
    {
      v7 = OUTLINED_FUNCTION_32_4();
      OUTLINED_FUNCTION_181(v7, v8, 2);
    }

    if ((~v3 & 0xF000000000000007) != 0)
    {
      OUTLINED_FUNCTION_134_11();
      sub_193447600();
    }
  }

  OUTLINED_FUNCTION_135_4();
}

void sub_1936E8ADC()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAC368);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_8_18(v4, xmmword_1939526E0);
  OUTLINED_FUNCTION_83_0("identifier");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_58_18();
  v9 = OUTLINED_FUNCTION_5_4(v8, "cases");
  v6(v9);
  v10 = OUTLINED_FUNCTION_9_4((v0 + 2 * v3));
  v11 = OUTLINED_FUNCTION_5_4(v10, "runtimeRequirements");
  v6(v11);
  v12 = OUTLINED_FUNCTION_26_5();
  *v13 = 4;
  v14 = OUTLINED_FUNCTION_5_4(v12, "displayRepresentation");
  v6(v14);
  v15 = OUTLINED_FUNCTION_21_39();
  v16 = OUTLINED_FUNCTION_23_7(v15, "kind");
  v6(v16);
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_270_1(v17);
  *v18 = "systemProtocols";
  v18[1] = 15;
  v19 = OUTLINED_FUNCTION_41(v18);
  v6(v19);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936E8CA4()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v2 = sub_19393C0E0();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    switch(v2)
    {
      case 1:
        OUTLINED_FUNCTION_125();
        goto LABEL_9;
      case 2:
        v4 = OUTLINED_FUNCTION_242_2();
        v6 = &type metadata for ToolKitToolTypeDefinition.Version1.Enumeration.Case;
        v7 = v1;
        v8 = &off_1F07E2CC0;
        goto LABEL_12;
      case 3:
        v4 = OUTLINED_FUNCTION_196_3();
        v6 = &type metadata for ToolKitToolRuntimeRequirement;
        v7 = v1;
        v8 = &off_1F07E3E70;
        goto LABEL_12;
      case 4:
        OUTLINED_FUNCTION_319_0();
LABEL_9:
        sub_193498018();
        continue;
      case 5:
        OUTLINED_FUNCTION_301_0();
        sub_1934982A8();
        continue;
      case 6:
        OUTLINED_FUNCTION_62();
LABEL_12:
        sub_193498238(v4, v5, v6, v7, v8);
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1936E8F84()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAC380);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_43_2(v5, xmmword_19394FBC0);
  OUTLINED_FUNCTION_102("KindUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_50_1();
  (v7)(v8);
  v9 = OUTLINED_FUNCTION_17_8((v1 + v4));
  *v9 = "KindAppEnum";
  *(v9 + 1) = 11;
  v9[16] = v0;
  OUTLINED_FUNCTION_2_0();
  v7();
  v10 = OUTLINED_FUNCTION_69();
  v11 = OUTLINED_FUNCTION_25(v10, "KindActionEnum");
  (v7)(v11);
  v12 = OUTLINED_FUNCTION_9_4((v1 + 3 * v4));
  v13 = OUTLINED_FUNCTION_25(v12, "KindTriggerEnum");
  (v7)(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936E9138()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAC398);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v2, xmmword_19394FBE0);
  *v0 = "id";
  *(v0 + 8) = 2;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v4 = *(v3 + 104);
  v5 = OUTLINED_FUNCTION_65();
  v4(v5);
  v6 = OUTLINED_FUNCTION_29_1();
  v7 = OUTLINED_FUNCTION_48(v6, "displayRepresentation");
  v4(v7);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936E92A0()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC3B0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("identifier");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "templates");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936E93D0()
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
LABEL_8:
      sub_193498018();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_89_2();
      goto LABEL_8;
    }
  }

  OUTLINED_FUNCTION_355();
}

void sub_1936E945C()
{
  OUTLINED_FUNCTION_50_13();
  v2 = *(v1 + 8);
  OUTLINED_FUNCTION_66_21();
  if (!v3)
  {
    OUTLINED_FUNCTION_108_1();
    sub_193447600();
  }

  if (!v0)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_651();
      OUTLINED_FUNCTION_129_4();
      sub_193447600();
    }
  }
}

void sub_1936E9550()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAC3C8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_8_18(v5, xmmword_193952660);
  *v0 = "comparison";
  *(v0 + 8) = 10;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_50_1();
  v7(v8);
  v9 = OUTLINED_FUNCTION_58_18();
  v10 = OUTLINED_FUNCTION_5_4(v9, "stringSearch");
  v7(v10);
  v11 = OUTLINED_FUNCTION_59_5();
  *v12 = 3;
  v13 = OUTLINED_FUNCTION_5_4(v11, "idSearch");
  v7(v13);
  v14 = OUTLINED_FUNCTION_9_64();
  v15 = OUTLINED_FUNCTION_23_7(v14, "all");
  v7(v15);
  v16 = OUTLINED_FUNCTION_21_39();
  v17 = OUTLINED_FUNCTION_5_4(v16, "suggested");
  v7(v17);
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_140_0(v18);
  v20 = OUTLINED_FUNCTION_5_4(v19, "sampleInvocations");
  v7(v20);
  v21 = OUTLINED_FUNCTION_30_0((v1 + 3 * v4));
  v22 = OUTLINED_FUNCTION_5_4(v21, "searchableItem");
  v7(v22);
  v23 = OUTLINED_FUNCTION_33_0(8 * v4);
  *v24 = 8;
  v25 = OUTLINED_FUNCTION_15(v23, 5);
  v7(v25);
  OUTLINED_FUNCTION_3_1(v1 + 8 * v4);
  OUTLINED_FUNCTION_384(v26);
  v28 = OUTLINED_FUNCTION_5_4(v27, "valueSearch");
  v7(v28);
  v29 = OUTLINED_FUNCTION_55_2((v1 + 9 * v4));
  *v29 = "metadata";
  *(v29 + 1) = 8;
  v30 = OUTLINED_FUNCTION_41(v29);
  v7(v30);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936E97BC()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    v2 = sub_19393C0E0();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    switch(v2)
    {
      case 1:
        v4 = OUTLINED_FUNCTION_125();
        v6 = &type metadata for ToolKitToolComparisonPredicate.Template;
        v7 = v1;
        v8 = &off_1F07E3B20;
        goto LABEL_9;
      case 2:
        OUTLINED_FUNCTION_242_2();
        goto LABEL_12;
      case 3:
      case 4:
      case 5:
      case 8:
        goto LABEL_12;
      case 6:
        v4 = OUTLINED_FUNCTION_196_3();
        v6 = &type metadata for ToolKitToolSampleInvocationDefinition;
        v7 = v1;
        v8 = &off_1F07E40A0;
LABEL_9:
        sub_193498238(v4, v5, v6, v7, v8);
        continue;
      case 7:
        OUTLINED_FUNCTION_319_0();
        goto LABEL_12;
      case 9:
        OUTLINED_FUNCTION_146_0();
        goto LABEL_12;
      case 10:
        OUTLINED_FUNCTION_301_0();
LABEL_12:
        sub_193498018();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1936E9960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_307();
  OUTLINED_FUNCTION_50_13();
  v5 = *(v4 + 8);
  v6 = *(v4 + 9);
  v7 = *(v4 + 10);
  v8 = *(v4 + 11);
  v9 = *(v4 + 16);
  v23 = *(v4 + 25);
  v24 = *(v4 + 24);
  v25 = *(v4 + 32);
  v22 = *(v4 + 48);
  if (*(*v4 + 16))
  {
    OUTLINED_FUNCTION_108_1();
    sub_193451CFC(v10, v11, v12, v13, v14, v15);
  }

  if (!v3)
  {
    if ((v5 & 1) == 0)
    {
      OUTLINED_FUNCTION_129_4();
      sub_193447600();
    }

    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_134_11();
      sub_193447600();
    }

    if ((v7 & 1) == 0)
    {
      OUTLINED_FUNCTION_145_8();
      sub_193447600();
    }

    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_106();
      sub_193447600();
    }

    if (*(v9 + 16))
    {
      OUTLINED_FUNCTION_154_8();
      sub_193451CFC(v16, v17, v18, v19, v20, v21);
    }

    if ((v24 & 1) == 0)
    {
      OUTLINED_FUNCTION_106();
      sub_193447600();
    }

    if ((v23 & 1) == 0)
    {
      OUTLINED_FUNCTION_106();
      sub_193447600();
    }

    if ((v25 & 0xF000000000000007) != 0xD000000000000007)
    {
      OUTLINED_FUNCTION_106();
      sub_193447600();
    }

    if (v22 != 1)
    {
      OUTLINED_FUNCTION_106();
      sub_193447600();
    }
  }

  OUTLINED_FUNCTION_17_0();
}

void sub_1936E9BC8()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC3E0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("queryIdentifier");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "bundleIdentifier");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936E9D2C()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC3F8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("identifier");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "displayRepresentation");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936E9E5C()
{
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
      OUTLINED_FUNCTION_84_9();
      sub_19393C200();
    }
  }
}

void sub_1936E9EDC()
{
  OUTLINED_FUNCTION_50_13();
  v7 = v1[1];
  v8 = v1[6];
  if (v7)
  {
    v2 = OUTLINED_FUNCTION_224_0();
  }

  if (!v0)
  {
    if (v8)
    {
      OUTLINED_FUNCTION_104_11(v2, v7, v3, &type metadata for ToolKitToolTypeDisplayRepresentation, v4, &off_1F07E4988, v5, v6, v1[2]);
      sub_193447600();
    }
  }
}

uint64_t sub_1936E9FC4@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_173_0();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_173_0();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(v2 + 16) = result;
  *a1 = v2;
  return result;
}

uint64_t objectdestroyTm_2()
{

  OUTLINED_FUNCTION_173_0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1936EA048@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_173_0();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

void sub_1936EA080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_108_0();
  v11 = sub_19393C420();
  __swift_allocate_value_buffer(v11, qword_1EAEAC410);
  OUTLINED_FUNCTION_136_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v13 = *(v12 + 72);
  OUTLINED_FUNCTION_49_0();
  v34 = OUTLINED_FUNCTION_152_10();
  OUTLINED_FUNCTION_8_18(v34, xmmword_1939526B0);
  OUTLINED_FUNCTION_83_0("primitive");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v15 = *(v14 + 104);
  v16 = OUTLINED_FUNCTION_50_1();
  v15(v16);
  v17 = OUTLINED_FUNCTION_58_18();
  v18 = OUTLINED_FUNCTION_5_4(v17, "enumeration");
  v15(v18);
  v19 = OUTLINED_FUNCTION_9_4((v10 + 2 * v13));
  v20 = OUTLINED_FUNCTION_23_7(v19, "entity");
  v15(v20);
  v21 = OUTLINED_FUNCTION_9_64();
  v22 = OUTLINED_FUNCTION_5_4(v21, "collection");
  v15(v22);
  v23 = OUTLINED_FUNCTION_21_39();
  v24 = OUTLINED_FUNCTION_5_4(v23, "query");
  v15(v24);
  v25 = OUTLINED_FUNCTION_38_2();
  *v26 = 6;
  v27 = OUTLINED_FUNCTION_5_4(v25, "entityIdentifier");
  v15(v27);
  v28 = OUTLINED_FUNCTION_72();
  *v29 = 7;
  v30 = OUTLINED_FUNCTION_36_0(v28, "deferred");
  v15(v30);
  v31 = OUTLINED_FUNCTION_33_0(a10);
  *v32 = 8;
  *v31 = "codable";
  v31[1] = 7;
  v33 = OUTLINED_FUNCTION_41(v31);
  v15(v33);
  sub_19393C410();
  OUTLINED_FUNCTION_107();
}

void sub_1936EA28C()
{
  OUTLINED_FUNCTION_26();
  v4 = v0;
  v6 = v5;
  v8 = v7;
  *v78 = xmmword_1939526A0;
  while (1)
  {
    OUTLINED_FUNCTION_32_4();
    v9 = sub_19393C0E0();
    if (v1 || (v10 & 1) != 0)
    {
      break;
    }

    switch(v9)
    {
      case 1:
        *&v104[0] = 0xF000000000000007;
        OUTLINED_FUNCTION_337();
        sub_193498018();
        OUTLINED_FUNCTION_369();
        v3 = *&v104[0];
        if ((~*&v104[0] & 0xF000000000000007) == 0)
        {
          OUTLINED_FUNCTION_173_0();
          v3 = swift_allocObject();
          *(v3 + 16) = 0;
        }

        OUTLINED_FUNCTION_173_0();
        v11 = swift_allocObject();
        *(v11 + 16) = v3;
        *v4 = v11;
        break;
      case 2:
        OUTLINED_FUNCTION_641();
        *&v104[1] = 1;
        *&v25 = OUTLINED_FUNCTION_216_2();
        *(&v104[5] + 8) = v25;
        OUTLINED_FUNCTION_337();
        sub_193498018();
        v26 = OUTLINED_FUNCTION_369();
        v34 = OUTLINED_FUNCTION_367_0(v26, v27, v28, v29, v30, v31, v32, v33, v76, v77, v78[0], v78[1], v79, *(&v79 + 1), v80, *(&v80 + 1), *v81, *&v81[8], *&v81[16], *&v81[24], *&v81[32], *&v81[40], *&v81[48], *&v81[56], *&v81[64], *&v81[72], *&v81[80], *&v81[88], *&v81[96], v82, *v83, *&v83[8], *&v83[16], *&v83[24], *&v83[32], *&v83[40], *&v83[48], *&v83[56], *&v83[64], *&v83[72], *&v83[80], *&v83[88], *&v83[96], *&v83[104], *&v83[112], *&v83[120], *&v83[128], *&v83[136], v84, *(&v84 + 1), v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97);
        if (v2 == 1)
        {
          ToolKitToolTypedValue.EnumerationValue.init()(v81, v34);
          v35 = OUTLINED_FUNCTION_335();
          memcpy(v35, v36, 0x68uLL);
          sub_19344E6DC(&v102, &qword_1EAE41988, &qword_19397F990);
        }

        else
        {
          memcpy(v101, v104, 0x68uLL);
          OUTLINED_FUNCTION_349();
          sub_1936C6124(&v102, __src);
          sub_19344E6DC(v101, &qword_1EAE41988, &qword_19397F990);
          *v81 = v84;
          memcpy(&v81[24], __dst, 0x50uLL);
          *&v81[16] = v2;
        }

        v66 = swift_allocObject();
        v67 = OUTLINED_FUNCTION_232_3(v66);
        memcpy(v67, v81, 0x68uLL);
        *v4 = v3 | 0x2000000000000000;
        break;
      case 3:
        sub_1936EACA0(v104);
        v17 = OUTLINED_FUNCTION_335();
        memcpy(v17, v18, 0x90uLL);
        sub_193498018();
        OUTLINED_FUNCTION_369();
        OUTLINED_FUNCTION_606(__src);
        OUTLINED_FUNCTION_606(v101);
        if (sub_1936EACA8(v101) == 1)
        {
          ToolKitToolTypedValue.EntityValue.init()(v99);
          OUTLINED_FUNCTION_606(__dst);
          sub_19344E6DC(__dst, &qword_1EAE41980, &qword_19397F988);
        }

        else
        {
          OUTLINED_FUNCTION_606(&v84);
          memcpy(__dst, __src, sizeof(__dst));
          sub_1936C6424(__dst, v83);
          sub_19344E6DC(&v84, &qword_1EAE41980, &qword_19397F988);
          memcpy(v99, __src, sizeof(v99));
        }

        v64 = swift_allocObject();
        v65 = OUTLINED_FUNCTION_232_3(v64);
        memcpy(v65, v99, 0x90uLL);
        *v4 = v3 | 0x4000000000000000;
        break;
      case 4:
        OUTLINED_FUNCTION_641();
        *&v104[1] = 0;
        OUTLINED_FUNCTION_337();
        sub_193498018();
        OUTLINED_FUNCTION_369();
        v3 = *(&v104[0] + 1);
        if (*(&v104[0] + 1))
        {
          v19 = *&v104[1];
          v20 = *&v104[0];
          sub_193437C90(*&v104[0]);

          sub_193437C90(v19);
          sub_1936EAC54(v20, v3, v19);
        }

        else
        {
          ToolKitToolTypedValue.CollectionValue.init()();
          v72 = OUTLINED_FUNCTION_192_1();
          sub_1936EAC54(v72, v73, v74);
          v3 = *(&v102 + 1);
          v20 = v102;
          v19 = *&v103[0];
        }

        OUTLINED_FUNCTION_97_6();
        v75 = swift_allocObject();
        *(v75 + 16) = v20;
        *(v75 + 24) = v3;
        *(v75 + 32) = v19;
        v71 = v75 | 0x6000000000000000;
        goto LABEL_36;
      case 5:
        v2 = 0xD000000000000007;
        *&v104[0] = 0xD000000000000007;
        *(v104 + 8) = 0u;
        *(&v104[1] + 8) = 0u;
        BYTE8(v104[2]) = 0;
        OUTLINED_FUNCTION_337();
        sub_193498018();
        OUTLINED_FUNCTION_369();
        v12 = *&v104[0];
        if ((*&v104[0] & 0xF000000000000007) == 0xD000000000000007)
        {
          ToolKitToolTypedValue.QueryValue.init()(&v102);
          v13 = OUTLINED_FUNCTION_192_1();
          sub_1936EABBC(v13, v14, v15, *(&v104[1] + 1), *&v104[2], BYTE8(v104[2]));
          v79 = v102;
          v80 = v103[0];
          v3 = *&v103[1];
          LOBYTE(v16) = BYTE8(v103[1]);
        }

        else
        {
          v16 = BYTE8(v104[2]);
          v3 = *&v104[2];
          v54 = v6;
          v55 = v4;
          v56 = *(&v104[1] + 1);
          v2 = *&v104[1];
          v77 = v8;
          v57 = *(&v104[0] + 1);
          sub_193437C90(*&v104[0]);
          v58 = OUTLINED_FUNCTION_55();
          sub_1936C6B18(v58);
          OUTLINED_FUNCTION_98();
          sub_1936EABBC(v59, v60, v61, v56, v3, v16);
          *&v62 = v2;
          *(&v62 + 1) = v56;
          v80 = v62;
          v4 = v55;
          v6 = v54;
          *&v62 = v12;
          *(&v62 + 1) = v57;
          v79 = v62;
          v8 = v77;
        }

        v63 = swift_allocObject();
        *(v63 + 16) = v79;
        *(v63 + 32) = v80;
        *(v63 + 48) = v3;
        *(v63 + 56) = v16;
        *v4 = v63 | 0x8000000000000000;
        break;
      case 6:
        OUTLINED_FUNCTION_641();
        *&v104[1] = 1;
        *&v37 = OUTLINED_FUNCTION_216_2();
        *(&v104[5] + 8) = v37;
        OUTLINED_FUNCTION_337();
        sub_193498018();
        v38 = OUTLINED_FUNCTION_369();
        v46 = OUTLINED_FUNCTION_367_0(v38, v39, v40, v41, v42, v43, v44, v45, v76, v77, v78[0], v78[1], v79, *(&v79 + 1), v80, *(&v80 + 1), *v81, *&v81[8], *&v81[16], *&v81[24], *&v81[32], *&v81[40], *&v81[48], *&v81[56], *&v81[64], *&v81[72], *&v81[80], *&v81[88], *&v81[96], v82, *v83, *&v83[8], *&v83[16], *&v83[24], *&v83[32], *&v83[40], *&v83[48], *&v83[56], *&v83[64], *&v83[72], *&v83[80], *&v83[88], *&v83[96], *&v83[104], *&v83[112], *&v83[120], *&v83[128], *&v83[136], v84, *(&v84 + 1), v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97);
        if (v2 == 1)
        {
          ToolKitToolTypedValue.EntityIdentifierValue.init()(v105, v46);
          v47 = OUTLINED_FUNCTION_335();
          memcpy(v47, v48, 0x68uLL);
          sub_19344E6DC(&v102, &qword_1EAE41978, &qword_19397F980);
        }

        else
        {
          memcpy(v101, v104, 0x68uLL);
          OUTLINED_FUNCTION_349();
          sub_1936C6D94(&v102, __src);
          sub_19344E6DC(v101, &qword_1EAE41978, &qword_19397F980);
          *v105 = v84;
          memcpy(&v105[24], __dst, 0x50uLL);
          *&v105[16] = v2;
        }

        v2 = swift_allocObject();
        memcpy((v2 + 16), v105, 0x68uLL);
        *v4 = v2 | 0xA000000000000000;
        break;
      case 7:
        OUTLINED_FUNCTION_641();
        v2 = 0x7000000000000007;
        *&v104[1] = 0x7000000000000007;
        OUTLINED_FUNCTION_337();
        sub_193498018();
        OUTLINED_FUNCTION_369();
        v3 = *&v104[1];
        if ((*&v104[1] & 0xF000000000000007) == 0x7000000000000007)
        {
          ToolKitToolTypedValue.DeferredValue.init()();
          v49 = OUTLINED_FUNCTION_192_1();
          sub_1936EAB60(v49, v50, v51);
          v52 = *(&v102 + 1);
          v53 = v102;
          v3 = *&v103[0];
        }

        else
        {
          v52 = *(&v104[0] + 1);
          v53 = *&v104[0];
          sub_193437C90(*&v104[0]);
          sub_193437C90(v52);
          sub_193438D88(v3);
          v68 = OUTLINED_FUNCTION_19_3();
          sub_1936EAB60(v68, v69, v3);
        }

        OUTLINED_FUNCTION_97_6();
        v70 = swift_allocObject();
        *(v70 + 16) = v53;
        *(v70 + 24) = v52;
        *(v70 + 32) = v3;
        v71 = v70 | 0xC000000000000000;
LABEL_36:
        *v4 = v71;
        break;
      case 8:
        v104[0] = *v78;
        *&v21 = OUTLINED_FUNCTION_358_0();
        v104[5] = v21;
        v104[6] = v21;
        OUTLINED_FUNCTION_337();
        sub_193498018();
        v3 = v8;
        OUTLINED_FUNCTION_369();
        v22 = v104[0];
        memcpy(__dst, &v104[1], 0x60uLL);
        if (*(&v104[0] + 1) == 1)
        {
          ToolKitToolTypedValue.CodableValue.init()(v106);
          v23 = OUTLINED_FUNCTION_335();
          memcpy(v23, v24, 0x70uLL);
          sub_19344E6DC(&v102, &qword_1EAE41970, &qword_19397F978);
        }

        else
        {
          memcpy(v101, v104, 0x70uLL);
          v102 = v104[0];
          memcpy(v103, &v104[1], sizeof(v103));
          sub_1936C673C(&v102, __src);
          sub_19344E6DC(v101, &qword_1EAE41970, &qword_19397F978);
          memcpy(&v106[1], __dst, 0x60uLL);
          v106[0] = v22;
        }

        OUTLINED_FUNCTION_136_6();
        v2 = swift_allocObject();
        memcpy((v2 + 16), v106, 0x70uLL);
        *v4 = v2 | 0xE000000000000000;
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_1936EAB60(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0xF000000000000007) != 0x7000000000000007)
  {
    sub_193444060(result);
    sub_193444060(a2);

    return sub_19347549C(a3);
  }

  return result;
}

uint64_t sub_1936EABBC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((result & 0xF000000000000007) != 0xD000000000000007)
  {
    sub_193444060(result);

    return sub_1936EAC3C(a2);
  }

  return result;
}

uint64_t sub_1936EAC3C(uint64_t result)
{
  if ((result & 0xF000000000000007) != 0xE000000000000007)
  {
    return sub_193444048(result);
  }

  return result;
}

uint64_t sub_1936EAC54(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    sub_193444060(result);

    return sub_193444060(a3);
  }

  return result;
}

uint64_t sub_1936EACA8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1936EACC0()
{
  OUTLINED_FUNCTION_103_10();
  switch(v8)
  {
    case 1:
      v45 = OUTLINED_FUNCTION_77_14(v0, v1, v2, v3, v4, v5, v6, v7, v81, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107);
      v47 = memcpy(v45, v46, 0x68uLL);
      v55 = OUTLINED_FUNCTION_313(v47, v48, v49, v50, v51, v52, v53, v54, v86);
      v57 = memcpy(v55, v56, 0x68uLL);
      OUTLINED_FUNCTION_182_0(v57, v58, v59, &type metadata for ToolKitToolTypedValue.EnumerationValue, v60, &off_1F07E3398, v61, v62, v87);
      break;
    case 2:
      v9 = OUTLINED_FUNCTION_77_14(v0, v1, v2, v3, v4, v5, v6, v7, v81, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107);
      v11 = memcpy(v9, v10, 0x90uLL);
      v19 = OUTLINED_FUNCTION_313(v11, v12, v13, v14, v15, v16, v17, v18, v82);
      v21 = memcpy(v19, v20, 0x90uLL);
      OUTLINED_FUNCTION_135_1(v21, v22, v23, &type metadata for ToolKitToolTypedValue.EntityValue, v24, &off_1F07E33C8, v25, v26, v83);
      break;
    case 5:
      v63 = OUTLINED_FUNCTION_77_14(v0, v1, v2, v3, v4, v5, v6, v7, v81, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107);
      v65 = memcpy(v63, v64, 0x68uLL);
      v73 = OUTLINED_FUNCTION_313(v65, v66, v67, v68, v69, v70, v71, v72, v88);
      v75 = memcpy(v73, v74, 0x68uLL);
      OUTLINED_FUNCTION_303_0(v75, v76, v77, &type metadata for ToolKitToolTypedValue.EntityIdentifierValue, v78, &off_1F07E34B8, v79, v80, v89);
      break;
    case 7:
      v27 = OUTLINED_FUNCTION_77_14(v0, v1, v2, v3, v4, v5, v6, v7, v81, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107);
      v29 = memcpy(v27, v28, 0x70uLL);
      v37 = OUTLINED_FUNCTION_313(v29, v30, v31, v32, v33, v34, v35, v36, v84);
      v39 = memcpy(v37, v38, 0x70uLL);
      OUTLINED_FUNCTION_654(v39, v40, v41, &type metadata for ToolKitToolTypedValue.CodableValue, v42, &off_1F07E3428, v43, v44, v85);
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_23_3();
  sub_193447600();
}

void sub_1936EAF28()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC428);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("serializedVariable");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "typeInstance");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_48(v7, "identifier");
  v3(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936EB078()
{
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
      case 3:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 2:
        OUTLINED_FUNCTION_62();
        sub_193498018();
        break;
      case 1:
        OUTLINED_FUNCTION_84_9();
        sub_19393C140();
        break;
    }
  }
}

void sub_1936EB114()
{
  OUTLINED_FUNCTION_62_3();
  v2 = v1;
  OUTLINED_FUNCTION_103();
  v3 = v0[1];
  v4 = v0[4];
  OUTLINED_FUNCTION_634();
  if (!(!v6 & v5))
  {
    v7 = *v0;
    v8 = OUTLINED_FUNCTION_216();
    sub_193450688(v8, v9);
    OUTLINED_FUNCTION_216();
    OUTLINED_FUNCTION_24_2();
    sub_19393C330();
    v2 = v1;
    sub_19345012C(v7, v3);
  }

  if (!v2)
  {
    OUTLINED_FUNCTION_380();
    if (!v6)
    {
      sub_193447600();
    }

    if (v4)
    {
      OUTLINED_FUNCTION_334();
      OUTLINED_FUNCTION_24_2();
      sub_19393C3C0();
    }
  }

  OUTLINED_FUNCTION_54_0();
}

void sub_1936EB264()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAC440);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v70 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_8_18(v70, xmmword_19397F900);
  OUTLINED_FUNCTION_83_0("noneVariant");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v5 = *(v4 + 104);
  v6 = OUTLINED_FUNCTION_50_1();
  v5(v6);
  v7 = OUTLINED_FUNCTION_58_18();
  v8 = OUTLINED_FUNCTION_5_4(v7, "BOOLType");
  v5(v8);
  v9 = OUTLINED_FUNCTION_9_4((v0 + 2 * v3));
  v10 = OUTLINED_FUNCTION_23_7(v9, "intType");
  v5(v10);
  v11 = OUTLINED_FUNCTION_9_64();
  v12 = OUTLINED_FUNCTION_36_0(v11, "number");
  v5(v12);
  v13 = OUTLINED_FUNCTION_21_39();
  v14 = OUTLINED_FUNCTION_23_7(v13, "decimal");
  v5(v14);
  v15 = OUTLINED_FUNCTION_38_2();
  *v16 = 6;
  v17 = OUTLINED_FUNCTION_36_0(v15, "string");
  v5(v17);
  v18 = OUTLINED_FUNCTION_52_0();
  *v19 = 7;
  v20 = OUTLINED_FUNCTION_15(v18, 4);
  v5(v20);
  OUTLINED_FUNCTION_33_0(8 * v3);
  OUTLINED_FUNCTION_121_1(v21);
  v23 = OUTLINED_FUNCTION_5_4(v22, "dateComponents");
  v5(v23);
  v24 = OUTLINED_FUNCTION_55_2((v0 + 8 * v3));
  v25 = OUTLINED_FUNCTION_15(v24, 3);
  v5(v25);
  v26 = OUTLINED_FUNCTION_44(9 * v3);
  *v27 = 10;
  v28 = OUTLINED_FUNCTION_5_4(v26, "attributedString");
  v5(v28);
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_377_0(v29);
  *v30 = "measurement";
  v30[1] = v31;
  v32 = OUTLINED_FUNCTION_41(v30);
  v5(v32);
  v33 = OUTLINED_FUNCTION_72();
  *v34 = 12;
  v35 = OUTLINED_FUNCTION_15(v33, 14);
  v5(v35);
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_625(v36);
  v38 = OUTLINED_FUNCTION_23_7(v37, "paymentMethod");
  v5(v38);
  v39 = OUTLINED_FUNCTION_72();
  *v40 = 14;
  v41 = OUTLINED_FUNCTION_15(v39, 9);
  v5(v41);
  v42 = OUTLINED_FUNCTION_105_14((v0 + 14 * v3));
  v43 = OUTLINED_FUNCTION_36_0(v42, "person");
  v5(v43);
  OUTLINED_FUNCTION_33_0(16 * v3);
  OUTLINED_FUNCTION_256_1(v44);
  v46 = OUTLINED_FUNCTION_15(v45, 4);
  v5(v46);
  v47 = OUTLINED_FUNCTION_131_1((v0 + 16 * v3));
  v48 = OUTLINED_FUNCTION_15(v47, 3);
  v5(v48);
  v49 = OUTLINED_FUNCTION_44(17 * v3);
  *v50 = 18;
  v51 = OUTLINED_FUNCTION_23_7(v49, "searchableItem");
  v5(v51);
  v52 = OUTLINED_FUNCTION_52_0();
  *v53 = 19;
  v54 = OUTLINED_FUNCTION_5_4(v52, "encodedDateComponents");
  v5(v54);
  v55 = OUTLINED_FUNCTION_52_0();
  *v56 = 20;
  v57 = OUTLINED_FUNCTION_15(v55, 8);
  v5(v57);
  v58 = OUTLINED_FUNCTION_52_0();
  *v59 = 22;
  v60 = OUTLINED_FUNCTION_15(v58, 14);
  v5(v60);
  v61 = OUTLINED_FUNCTION_3_1(v0 + 21 * v3);
  *v62 = 23;
  v63 = OUTLINED_FUNCTION_15(v61, 12);
  v5(v63);
  v64 = OUTLINED_FUNCTION_72();
  *v65 = 24;
  v66 = OUTLINED_FUNCTION_15(v64, 20);
  v5(v66);
  v67 = OUTLINED_FUNCTION_52_0();
  *v68 = 25;
  *v67 = "duration";
  v67[1] = 8;
  v69 = OUTLINED_FUNCTION_41(v67);
  v5(v69);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1936EB6EC(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v4 = v2;
  v5 = v1;
  v7 = v6;
  v9 = v8;
LABEL_2:
  v10 = v136;
  while (1)
  {
    v11 = sub_19393C0E0();
    if (v4 || (v12 & 1) != 0)
    {
      break;
    }

    switch(v11)
    {
      case 1:
        OUTLINED_FUNCTION_362_0();
        OUTLINED_FUNCTION_94_13();
        sub_1934982A8();
        v4 = 0;
        OUTLINED_FUNCTION_326();
        OUTLINED_FUNCTION_633();
        OUTLINED_FUNCTION_173_0();
        v13 = swift_allocObject();
        *(v13 + 16) = v3;
        *v5 = v13;
        continue;
      case 2:
        LOBYTE(v142) = 2;
        OUTLINED_FUNCTION_123_13();
        sub_19393C0F0();
        v4 = 0;
        OUTLINED_FUNCTION_326();
        v3 = v142;
        v26 = swift_allocObject();
        *(v26 + 16) = v3 & 1;
        *v5 = v26 | 4;
        continue;
      case 3:
        OUTLINED_FUNCTION_362_0();
        OUTLINED_FUNCTION_123_13();
        sub_19393C190();
        v4 = 0;
        OUTLINED_FUNCTION_326();
        OUTLINED_FUNCTION_633();
        OUTLINED_FUNCTION_173_0();
        v21 = swift_allocObject();
        *(v21 + 16) = v3;
        *v5 = v21 | 0x1000000000000000;
        continue;
      case 4:
        OUTLINED_FUNCTION_362_0();
        OUTLINED_FUNCTION_123_13();
        sub_19393C1E0();
        v4 = 0;
        OUTLINED_FUNCTION_326();
        if (BYTE8(v142))
        {
          v22 = 0.0;
        }

        else
        {
          v22 = *&v142;
        }

        OUTLINED_FUNCTION_173_0();
        v18 = swift_allocObject();
        *(v18 + 16) = v22;
        v20 = 0x1000000000000004;
        goto LABEL_39;
      case 5:
        OUTLINED_FUNCTION_376_0();
        *&v143[0] = 768;
        OUTLINED_FUNCTION_216_2();
        WORD4(v143[4]) = 0;
        OUTLINED_FUNCTION_94_13();
        sub_193498018();
        v4 = 0;
        OUTLINED_FUNCTION_326();
        v3 = *&v143[0];
        if ((v143[0] & 0xFF00) == 0x300)
        {
          ToolKitToolTypedValue.PrimitiveValue.Decimal.init()(v131);
        }

        else
        {
          v131[0] = v142;
          memcpy(&v131[1] + 8, v143 + 8, 0x42uLL);
          *&v131[1] = *&v143[0];
        }

        OUTLINED_FUNCTION_209_0();
        v88 = swift_allocObject();
        v89 = OUTLINED_FUNCTION_232_3(v88);
        memcpy(v89, v131, 0x5AuLL);
        v83 = 0x2FFFFFFFFFFFFFFBLL;
        goto LABEL_76;
      case 6:
        OUTLINED_FUNCTION_376_0();
        OUTLINED_FUNCTION_123_13();
        sub_19393C200();
        v4 = 0;
        OUTLINED_FUNCTION_326();
        OUTLINED_FUNCTION_630();
        if (v16)
        {
          v10 = 0xE000000000000000;
        }

        else
        {
          v10 = v30;
        }

        OUTLINED_FUNCTION_123_1();
        v31 = swift_allocObject();
        v18 = OUTLINED_FUNCTION_288_1(v31);
        v20 = v32 & 0xFFFFFFFFFFFFLL | 0x2000000000000000;
        goto LABEL_39;
      case 7:
        *&v142 = 0;
        DWORD2(v142) = 0;
        BYTE12(v142) = 1;
        OUTLINED_FUNCTION_94_13();
        sub_193498018();
        v4 = 0;
        OUTLINED_FUNCTION_326();
        if (BYTE12(v142) == 1)
        {
          v33 = __src;
          ToolKitToolTimestamp.init()(__src);
        }

        else
        {
          v33 = &v142;
        }

        v38 = *(v33 + 2);
        v3 = *v33;
        OUTLINED_FUNCTION_123_1();
        v39 = swift_allocObject();
        *(v39 + 16) = v3;
        *(v39 + 24) = v38;
        *v5 = v39 | 0x3000000000000000;
        v10 = v136;
        continue;
      case 8:
        v142 = xmmword_193950B20;
        OUTLINED_FUNCTION_123_13();
        sub_19393C140();
        v4 = 0;
        OUTLINED_FUNCTION_326();
        OUTLINED_FUNCTION_220_3();
        if (!v16 & v15)
        {
          v10 = 0xC000000000000000;
        }

        else
        {
          v10 = v23;
        }

        OUTLINED_FUNCTION_123_1();
        v24 = swift_allocObject();
        v18 = OUTLINED_FUNCTION_288_1(v24);
        v20 = v25 & 0xFFFFFFFFFFFFLL | 0x3000000000000000;
        goto LABEL_39;
      case 9:
        OUTLINED_FUNCTION_376_0();
        OUTLINED_FUNCTION_123_13();
        sub_19393C200();
        v4 = 0;
        OUTLINED_FUNCTION_326();
        OUTLINED_FUNCTION_630();
        if (v16)
        {
          v35 = 0xE000000000000000;
        }

        else
        {
          v35 = v34;
        }

        OUTLINED_FUNCTION_123_1();
        v36 = swift_allocObject();
        *(v36 + 16) = v3;
        *(v36 + 24) = v35;
        v10 = v136;
        *v5 = v36 | 0x4000000000000000;
        continue;
      case 10:
        v142 = xmmword_193950B20;
        OUTLINED_FUNCTION_123_13();
        sub_19393C140();
        v4 = 0;
        OUTLINED_FUNCTION_326();
        OUTLINED_FUNCTION_220_3();
        if (!v16 & v15)
        {
          v10 = 0xC000000000000000;
        }

        else
        {
          v10 = v14;
        }

        OUTLINED_FUNCTION_123_1();
        v17 = swift_allocObject();
        v18 = OUTLINED_FUNCTION_288_1(v17);
        v20 = v19 & 0xFFFFFFFFFFFFLL | 0x4000000000000000;
        goto LABEL_39;
      case 11:
        v142 = xmmword_1939526A0;
        memset(v143, 0, 26);
        OUTLINED_FUNCTION_94_13();
        sub_193498018();
        v4 = 0;
        v128 = v9;
        v129 = v7;
        v130 = v5;
        OUTLINED_FUNCTION_326();
        v118 = *(&v142 + 1);
        if (*(&v142 + 1) == 1)
        {
          v119 = __src;
          ToolKitToolTypedValue.PrimitiveValue.Measurement.init()(__src);
          v118 = *(&__src[0] + 1);
          v120 = *&__src[1];
          v121 = BYTE8(__src[1]);
          v122 = *&__src[2];
          v3 = BYTE8(__src[2]);
          LOBYTE(v123) = BYTE9(__src[2]);
        }

        else
        {
          v122 = *&v143[1];
          v121 = BYTE8(v143[0]);
          v120 = *&v143[0];
          v3 = BYTE8(v143[1]);
          v123 = HIBYTE(WORD4(v143[1])) & 1;
          v119 = &v142;
        }

        v126 = *v119;
        v127 = swift_allocObject();
        *(v127 + 16) = v126;
        *(v127 + 24) = v118;
        *(v127 + 32) = v120;
        *(v127 + 40) = v121 & 1;
        *(v127 + 48) = v122;
        *(v127 + 56) = v3;
        *(v127 + 57) = v123;
        v7 = v129;
        v5 = v130;
        *v130 = v127 | 0x5000000000000000;
        v9 = v128;
        goto LABEL_2;
      case 12:
        sub_1936ECA10(&v142);
        v57 = OUTLINED_FUNCTION_219_1();
        memcpy(v57, v58, 0xC0uLL);
        OUTLINED_FUNCTION_126_8();
        sub_193498018();
        v4 = 0;
        OUTLINED_FUNCTION_326();
        OUTLINED_FUNCTION_368_0(v139);
        v59 = OUTLINED_FUNCTION_267_1();
        memcpy(v59, v60, 0xC0uLL);
        if (sub_19346CD80(v140) == 1)
        {
          ToolKitToolTypedValue.PrimitiveValue.CurrencyAmount.init()(v132);
          OUTLINED_FUNCTION_368_0(__dst);
          sub_19344E6DC(__dst, &qword_1EAE419D8, &qword_19397F9E0);
        }

        else
        {
          OUTLINED_FUNCTION_368_0(v136);
          memcpy(__dst, v139, 0xC0uLL);
          sub_1936C35DC(__dst, v135);
          sub_19344E6DC(v136, &qword_1EAE419D8, &qword_19397F9E0);
          memcpy(v132, v139, sizeof(v132));
        }

        OUTLINED_FUNCTION_287_0();
        v97 = swift_allocObject();
        v98 = OUTLINED_FUNCTION_232_3(v97);
        memcpy(v98, v132, 0xC0uLL);
        v76 = 0x5000000000000004;
        goto LABEL_75;
      case 13:
        OUTLINED_FUNCTION_376_0();
        *&v143[0] = 0;
        *(&v143[0] + 1) = 1;
        memset(&v143[1], 0, 80);
        OUTLINED_FUNCTION_94_13();
        sub_193498018();
        v4 = 0;
        OUTLINED_FUNCTION_326();
        v136[0] = v142;
        v45 = *(&v143[0] + 1);
        *&v136[1] = *&v143[0];
        memcpy(__dst, &v143[1], 0x50uLL);
        if (*(&v143[0] + 1) == 1)
        {
          ToolKitToolTypedValue.PrimitiveValue.PaymentMethod.init()(v133);
          v46 = OUTLINED_FUNCTION_219_1();
          memcpy(v46, v47, 0x70uLL);
          sub_19344E6DC(__src, &qword_1EAE419D0, &qword_19397F9D8);
        }

        else
        {
          v77 = OUTLINED_FUNCTION_374();
          memcpy(v77, v78, 0x70uLL);
          __src[0] = v142;
          *&__src[1] = *&v143[0];
          *(&__src[1] + 1) = v45;
          memcpy(&__src[2], &v143[1], 0x50uLL);
          v79 = OUTLINED_FUNCTION_375();
          sub_1936C37E0(v79, v80);
          sub_19344E6DC(v140, &qword_1EAE419D0, &qword_19397F9D8);
          v133[0] = v136[0];
          *&v133[1] = *&v136[1];
          memcpy(&v133[2], __dst, 0x50uLL);
          *(&v133[1] + 1) = v45;
        }

        OUTLINED_FUNCTION_136_6();
        v81 = swift_allocObject();
        v82 = OUTLINED_FUNCTION_232_3(v81);
        memcpy(v82, v133, 0x70uLL);
        v83 = v45 | 0x6000000000000000;
        goto LABEL_76;
      case 14:
        *&v61 = OUTLINED_FUNCTION_313_0();
        *(&v143[4] + 10) = v61;
        OUTLINED_FUNCTION_94_13();
        sub_193498018();
        v4 = 0;
        OUTLINED_FUNCTION_326();
        OUTLINED_FUNCTION_255_1();
        *(v10 + 26) = *(&v143[4] + 10);
        v99 = OUTLINED_FUNCTION_374();
        memcpy(v99, v100, 0x6AuLL);
        OUTLINED_FUNCTION_247_1();
        *(v101 + 90) = *(&v143[4] + 10);
        v102 = OUTLINED_FUNCTION_375();
        sub_1936C39F0(v102, v103);
        sub_19344E6DC(v140, &qword_1EAE419C8, &qword_19397F9D0);
        v134[0] = *__dst;
        v134[1] = *&__dst[16];
        v134[2] = *&__dst[32];
        v134[4] = v136[0];
        v134[5] = v136[1];
        *(&v134[5] + 10) = *(v10 + 26);
        *&v134[3] = *&__dst[48];
        *(&v134[3] + 1) = 0xFFFFFFFFFFFFFFBLL;
        v104 = swift_allocObject();
        v105 = OUTLINED_FUNCTION_232_3(v104);
        memcpy(v105, v134, 0x6AuLL);
        v76 = 0x6000000000000004;
        goto LABEL_75;
      case 15:
        sub_1936EC9CC(&v142);
        v48 = OUTLINED_FUNCTION_219_1();
        memcpy(v48, v49, 0x1A2uLL);
        OUTLINED_FUNCTION_126_8();
        sub_193498018();
        v4 = 0;
        OUTLINED_FUNCTION_326();
        memcpy(v139, __src, 0x1A2uLL);
        v50 = OUTLINED_FUNCTION_267_1();
        memcpy(v50, v51, 0x1A2uLL);
        if (sub_1936EC9EC(v140) == 1)
        {
          ToolKitToolTypedValue.PrimitiveValue.Person.init()(v138);
          memcpy(__dst, __src, sizeof(__dst));
          sub_19344E6DC(__dst, &qword_1EAE419C0, &qword_19397F9C8);
        }

        else
        {
          memcpy(v136, __src, 0x1A2uLL);
          memcpy(__dst, v139, sizeof(__dst));
          sub_1936C3E24(__dst, v135);
          sub_19344E6DC(v136, &qword_1EAE419C0, &qword_19397F9C8);
          memcpy(v138, v139, 0x1A2uLL);
        }

        v84 = swift_allocObject();
        v85 = OUTLINED_FUNCTION_232_3(v84);
        memcpy(v85, v138, 0x1A2uLL);
        v83 = 0x7FFFFFFFFFFFFFFBLL;
        goto LABEL_76;
      case 16:
        *&v44 = OUTLINED_FUNCTION_313_0();
        v143[5] = v44;
        OUTLINED_FUNCTION_94_13();
        sub_193498018();
        v4 = 0;
        OUTLINED_FUNCTION_326();
        OUTLINED_FUNCTION_255_1();
        v136[2] = v143[5];
        v69 = OUTLINED_FUNCTION_374();
        memcpy(v69, v70, 0x70uLL);
        OUTLINED_FUNCTION_247_1();
        *(v71 + 96) = v143[5];
        v72 = OUTLINED_FUNCTION_375();
        sub_1936C46CC(v72, v73);
        sub_19344E6DC(v140, &qword_1EAE419B8, &qword_19397F9C0);
        v144[0] = *__dst;
        v144[1] = *&__dst[16];
        v144[2] = *&__dst[32];
        v144[4] = v136[0];
        v144[5] = v136[1];
        v144[6] = v136[2];
        *&v144[3] = *&__dst[48];
        *(&v144[3] + 1) = 0xFFFFFFFFFFFFFFBLL;
        OUTLINED_FUNCTION_136_6();
        v74 = swift_allocObject();
        v75 = OUTLINED_FUNCTION_232_3(v74);
        memcpy(v75, v144, 0x70uLL);
        v76 = 0x7000000000000004;
        goto LABEL_75;
      case 17:
        v142 = xmmword_1939526A0;
        *&v62 = OUTLINED_FUNCTION_358_0();
        v143[4] = v62;
        OUTLINED_FUNCTION_94_13();
        sub_193498018();
        v4 = 0;
        OUTLINED_FUNCTION_326();
        OUTLINED_FUNCTION_366_0();
        v106 = OUTLINED_FUNCTION_374();
        memcpy(v106, v107, 0x60uLL);
        OUTLINED_FUNCTION_365_0();
        v108 = OUTLINED_FUNCTION_375();
        sub_1936C4880(v108, v109);
        sub_19344E6DC(v140, &qword_1EAE419B0, &qword_19397F9B8);
        memcpy(&v145[2], __dst, 0x50uLL);
        v145[0] = &v142;
        v145[1] = 0xFFFFFFFFFFFFFFBLL;
        OUTLINED_FUNCTION_209_0();
        v110 = swift_allocObject();
        v111 = OUTLINED_FUNCTION_232_3(v110);
        memcpy(v111, v145, 0x60uLL);
        v96 = 0x8FFFFFFFFFFFFFFBLL;
        goto LABEL_72;
      case 18:
        v142 = xmmword_193950B20;
        OUTLINED_FUNCTION_123_13();
        sub_19393C140();
        v4 = 0;
        OUTLINED_FUNCTION_326();
        OUTLINED_FUNCTION_220_3();
        if (!v16 & v15)
        {
          v10 = 0xC000000000000000;
        }

        else
        {
          v10 = v27;
        }

        OUTLINED_FUNCTION_123_1();
        v28 = swift_allocObject();
        v18 = OUTLINED_FUNCTION_288_1(v28);
        v20 = v29 & 0xFFFFFFFFFFFFLL | 0x8000000000000000;
        goto LABEL_39;
      case 19:
        sub_1936EC8D4(&v142);
        v52 = OUTLINED_FUNCTION_219_1();
        memcpy(v52, v53, 0x139uLL);
        OUTLINED_FUNCTION_126_8();
        sub_193498018();
        v4 = 0;
        OUTLINED_FUNCTION_326();
        memcpy(v139, __src, 0x139uLL);
        v54 = OUTLINED_FUNCTION_267_1();
        memcpy(v54, v55, 0x139uLL);
        if (sub_1936EC8F8(v140) == 1)
        {
          ToolKitToolTypedValue.PrimitiveValue.DateComponents.init()(v146);
        }

        else
        {
          memcpy(v146, v139, 0x139uLL);
        }

        v86 = swift_allocObject();
        v87 = OUTLINED_FUNCTION_232_3(v86);
        memcpy(v87, v146, 0x139uLL);
        v76 = 0x9000000000000000;
        goto LABEL_75;
      case 20:
        v142 = xmmword_1939526A0;
        *&v56 = OUTLINED_FUNCTION_358_0();
        v143[4] = v56;
        OUTLINED_FUNCTION_94_13();
        sub_193498018();
        v4 = 0;
        OUTLINED_FUNCTION_326();
        OUTLINED_FUNCTION_366_0();
        v90 = OUTLINED_FUNCTION_374();
        memcpy(v90, v91, 0x60uLL);
        OUTLINED_FUNCTION_365_0();
        v92 = OUTLINED_FUNCTION_375();
        sub_1936C4AE4(v92, v93);
        sub_19344E6DC(v140, &qword_1EAE419A0, &qword_19397F9A8);
        memcpy(&v147[2], __dst, 0x50uLL);
        v147[0] = &v142;
        v147[1] = 0xFFFFFFFFFFFFFFBLL;
        OUTLINED_FUNCTION_209_0();
        v94 = swift_allocObject();
        v95 = OUTLINED_FUNCTION_232_3(v94);
        memcpy(v95, v147, 0x60uLL);
        v96 = 0x9FFFFFFFFFFFFFFFLL;
LABEL_72:
        *v5 = v96;
        continue;
      case 22:
        sub_193665964(&v142);
        v63 = OUTLINED_FUNCTION_219_1();
        memcpy(v63, v64, 0xF8uLL);
        OUTLINED_FUNCTION_126_8();
        sub_193498018();
        v4 = 0;
        OUTLINED_FUNCTION_326();
        memcpy(v139, __src, 0xF8uLL);
        v65 = OUTLINED_FUNCTION_267_1();
        memcpy(v65, v66, 0xF8uLL);
        if (sub_1936EC8BC(v140) == 1)
        {
          ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.init()(v148);
        }

        else
        {
          memcpy(v148, v139, sizeof(v148));
        }

        v112 = swift_allocObject();
        v113 = OUTLINED_FUNCTION_232_3(v112);
        memcpy(v113, v148, 0xF8uLL);
        v76 = 0xA000000000000000;
        goto LABEL_75;
      case 23:
        memset(v143, 0, 25);
        v142 = 0u;
        BYTE9(v143[1]) = 1;
        OUTLINED_FUNCTION_94_13();
        sub_193498018();
        v4 = 0;
        OUTLINED_FUNCTION_326();
        if (BYTE9(v143[1]))
        {
          ToolKitToolTypedValue.PrimitiveValue.DateInterval.init()(&v149);
        }

        else
        {
          v149 = v142;
          *v150 = v143[0];
          *&v150[16] = *&v143[1];
          v150[24] = BYTE8(v143[1]);
        }

        v18 = swift_allocObject();
        v37 = *v150;
        *(v18 + 16) = v149;
        *(v18 + 32) = v37;
        *(v18 + 41) = *&v150[9];
        v20 = 0xA000000000000004;
LABEL_39:
        *v5 = v18 | v20;
        continue;
      case 24:
        sub_1936EC8A8(&v142);
        v40 = OUTLINED_FUNCTION_219_1();
        memcpy(v40, v41, 0xC0uLL);
        OUTLINED_FUNCTION_126_8();
        sub_193498018();
        v4 = 0;
        OUTLINED_FUNCTION_326();
        OUTLINED_FUNCTION_368_0(v139);
        v42 = OUTLINED_FUNCTION_267_1();
        memcpy(v42, v43, 0xC0uLL);
        if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v140) == 1)
        {
          ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents.init()(&v151);
        }

        else
        {
          memcpy(&v151, v139, 0xC0uLL);
        }

        OUTLINED_FUNCTION_287_0();
        v67 = swift_allocObject();
        v68 = OUTLINED_FUNCTION_232_3(v67);
        memcpy(v68, &v151, 0xC0uLL);
        v76 = 0xB000000000000000;
LABEL_75:
        v83 = v76 | 0xFFFFFFFFFFFFFFBLL;
LABEL_76:
        *v5 = v83;
        break;
      case 25:
        OUTLINED_FUNCTION_376_0();
        *&v143[0] = 0;
        WORD4(v143[0]) = 256;
        OUTLINED_FUNCTION_94_13();
        sub_193498018();
        v4 = 0;
        v114 = v9;
        OUTLINED_FUNCTION_326();
        if (BYTE9(v143[0]))
        {
          v115 = __src;
          ToolKitToolTypedValue.PrimitiveValue.Duration.init()(__src);
          v116 = BYTE8(__src[0]);
          v3 = *&__src[1];
          v117 = BYTE8(__src[1]);
        }

        else
        {
          v3 = *&v143[0];
          v116 = BYTE8(v142);
          v115 = &v142;
          v117 = BYTE8(v143[0]);
        }

        v124 = *v115;
        OUTLINED_FUNCTION_95();
        v125 = swift_allocObject();
        *(v125 + 16) = v124;
        *(v125 + 24) = v116 & 1;
        *(v125 + 32) = v3;
        *(v125 + 40) = v117 & 1;
        *v5 = v125 | 0xB000000000000004;
        v9 = v114;
        goto LABEL_2;
      default:
        continue;
    }
  }
}

uint64_t sub_1936EC8BC(uint64_t a1)
{
  v1 = *(a1 + 176);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1936EC8D4(uint64_t a1)
{
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  bzero((a1 + 96), 0xD9uLL);
}

uint64_t sub_1936EC8F8(uint64_t a1)
{
  v1 = *(a1 + 88);
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

uint64_t objectdestroy_151Tm()
{

  if (*(v0 + 72))
  {

    OUTLINED_FUNCTION_130_9();
    if (!v1)
    {
    }

    OUTLINED_FUNCTION_289_0();
    if (!v1)
    {
    }

    OUTLINED_FUNCTION_66_21();
    if (!v1)
    {
    }

    OUTLINED_FUNCTION_298_0();
    if (!v1)
    {
      OUTLINED_FUNCTION_29_7();
      if (!(!v1 & v3))
      {
        sub_193446A6C(*(v0 + 80), v2);
      }
    }
  }

  OUTLINED_FUNCTION_209_0();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

void sub_1936EC9CC(uint64_t a1)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  bzero((a1 + 64), 0x162uLL);
}

uint64_t sub_1936EC9EC(uint64_t a1)
{
  v1 = *(a1 + 56);
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

double sub_1936ECA10(uint64_t a1)
{
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  return result;
}

void sub_1936ECA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch((*v8 >> 59) & 0x1E | (*v8 >> 2) & 1)
  {
    case 1:
      OUTLINED_FUNCTION_49_19();
      OUTLINED_FUNCTION_15_11();
      sub_19393C2E0();
      return;
    case 2:
      OUTLINED_FUNCTION_49_19();
      OUTLINED_FUNCTION_15_11();
      sub_19393C360();
      return;
    case 3:
      OUTLINED_FUNCTION_49_19();
      OUTLINED_FUNCTION_98();
      sub_19393C3B0();
      return;
    case 4:
      v51 = OUTLINED_FUNCTION_8_0(a1, a2, a3, a4, a5, a6, a7, a8, v129, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193);
      v53 = memcpy(v51, v52, 0x5AuLL);
      v61 = OUTLINED_FUNCTION_135_6(v53, v54, v55, v56, v57, v58, v59, v60, v133);
      v63 = memcpy(v61, v62, 0x5AuLL);
      OUTLINED_FUNCTION_302_1(v63, v64, v65, &type metadata for ToolKitToolTypedValue.PrimitiveValue.Decimal, v66, &off_1F07E2E40, v67, v68, v134);
      goto LABEL_19;
    case 5:
    case 8:
      OUTLINED_FUNCTION_49_19();

      OUTLINED_FUNCTION_24_2();
      sub_19393C3C0();
      OUTLINED_FUNCTION_258_1();

      return;
    case 6:
    case 0xALL:
      OUTLINED_FUNCTION_49_19();
      goto LABEL_19;
    case 7:
    case 9:
    case 0x11:
      OUTLINED_FUNCTION_49_19();
      v81 = OUTLINED_FUNCTION_25_2();
      sub_193450688(v81, v82);
      OUTLINED_FUNCTION_25_2();
      OUTLINED_FUNCTION_24_2();
      sub_19393C330();
      v83 = OUTLINED_FUNCTION_25_2();
      sub_193446A6C(v83, v84);
      return;
    case 0xBLL:
    case 0x16:
      v39 = OUTLINED_FUNCTION_8_0(a1, a2, a3, a4, a5, a6, a7, a8, v129, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193);
      v41 = memcpy(v39, v40, 0xC0uLL);
      v49 = OUTLINED_FUNCTION_135_6(v41, v42, v43, v44, v45, v46, v47, v48, v132);
      memcpy(v49, v50, 0xC0uLL);
      goto LABEL_19;
    case 0xCLL:
    case 0xFLL:
      v69 = OUTLINED_FUNCTION_8_0(a1, a2, a3, a4, a5, a6, a7, a8, v129, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193);
      v71 = memcpy(v69, v70, 0x70uLL);
      v79 = OUTLINED_FUNCTION_135_6(v71, v72, v73, v74, v75, v76, v77, v78, v135);
      memcpy(v79, v80, 0x70uLL);
      goto LABEL_19;
    case 0xDLL:
      v99 = OUTLINED_FUNCTION_8_0(a1, a2, a3, a4, a5, a6, a7, a8, v129, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193);
      v101 = memcpy(v99, v100, 0x6AuLL);
      v109 = OUTLINED_FUNCTION_135_6(v101, v102, v103, v104, v105, v106, v107, v108, v137);
      v111 = memcpy(v109, v110, 0x6AuLL);
      OUTLINED_FUNCTION_655(v111, v112, v113, &type metadata for ToolKitToolTypedValue.PrimitiveValue.Placemark, v114, &off_1F07E2F80, v115, v116, v138);
      goto LABEL_19;
    case 0xELL:
      v27 = OUTLINED_FUNCTION_8_0(a1, a2, a3, a4, a5, a6, a7, a8, v129, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193);
      v29 = memcpy(v27, v28, 0x1A2uLL);
      v37 = OUTLINED_FUNCTION_135_6(v29, v30, v31, v32, v33, v34, v35, v36, v131);
      memcpy(v37, v38, 0x1A2uLL);
      goto LABEL_19;
    case 0x10:
    case 0x13:
      v15 = OUTLINED_FUNCTION_8_0(a1, a2, a3, a4, a5, a6, a7, a8, v129, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193);
      v17 = memcpy(v15, v16, 0x60uLL);
      v25 = OUTLINED_FUNCTION_135_6(v17, v18, v19, v20, v21, v22, v23, v24, v130);
      memcpy(v25, v26, 0x60uLL);
      goto LABEL_19;
    case 0x12:
      v117 = OUTLINED_FUNCTION_8_0(a1, a2, a3, a4, a5, a6, a7, a8, v129, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193);
      v119 = memcpy(v117, v118, 0x139uLL);
      v127 = OUTLINED_FUNCTION_135_6(v119, v120, v121, v122, v123, v124, v125, v126, v139);
      memcpy(v127, v128, 0x139uLL);
      goto LABEL_19;
    case 0x14:
      v85 = OUTLINED_FUNCTION_8_0(a1, a2, a3, a4, a5, a6, a7, a8, v129, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193);
      v87 = memcpy(v85, v86, 0xF8uLL);
      v95 = OUTLINED_FUNCTION_135_6(v87, v88, v89, v90, v91, v92, v93, v94, v136);
      memcpy(v95, v96, 0xF8uLL);
      goto LABEL_19;
    case 0x15:
      OUTLINED_FUNCTION_49_19();
      *(v98 + 25) = *(v97 + 41);
      goto LABEL_19;
    case 0x17:
      OUTLINED_FUNCTION_49_19();
      OUTLINED_FUNCTION_294_1();
LABEL_19:
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
      break;
    default:
      OUTLINED_FUNCTION_78_1();
      sub_193447324(v9, v10, v11, v12, v13, v14);
      break;
  }
}

void sub_1936ECF88()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAC458);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_31_13();
  OUTLINED_FUNCTION_11_3(v4, xmmword_19394FBD0);
  OUTLINED_FUNCTION_63("sign");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_29_1();
  v9 = OUTLINED_FUNCTION_0_0(v8, "exponent");
  v6(v9);
  v10 = OUTLINED_FUNCTION_13((v0 + 2 * v3));
  v11 = OUTLINED_FUNCTION_0_0(v10, "isCompact");
  v6(v11);
  v12 = OUTLINED_FUNCTION_19_2((v0 + 3 * v3));
  v13 = OUTLINED_FUNCTION_16_6(v12, "length");
  v6(v13);
  v14 = OUTLINED_FUNCTION_60_1((v0 + 4 * v3));
  *v14 = "mantissa";
  *(v14 + 1) = 8;
  v15 = OUTLINED_FUNCTION_1_3(v14);
  v6(v15);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936ED12C()
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
        sub_1934982A8();
        break;
      case 2:
        OUTLINED_FUNCTION_98();
        sub_19393C170();
        break;
      case 4:
        OUTLINED_FUNCTION_98();
        sub_19393C0F0();
        break;
      case 5:
        OUTLINED_FUNCTION_98();
        sub_19393C220();
        break;
      case 6:
        OUTLINED_FUNCTION_89_2();
        sub_193498018();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_355();
}

void sub_1936ED380()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAC470);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v2, xmmword_19394FBB0);
  *v0 = 0;
  OUTLINED_FUNCTION_69_0("SignUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v4 = *(v3 + 104);
  v5 = OUTLINED_FUNCTION_65();
  v4(v5);
  v6 = OUTLINED_FUNCTION_4_9();
  v7 = OUTLINED_FUNCTION_48(v6, "SignMinus");
  v4(v7);
  v8 = OUTLINED_FUNCTION_35_4();
  v9 = OUTLINED_FUNCTION_48(v8, "SignPlus");
  v4(v9);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936ED500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_108_0();
  v10 = sub_19393C420();
  __swift_allocate_value_buffer(v10, qword_1EAEAC488);
  OUTLINED_FUNCTION_136_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v12 = *(v11 + 72);
  OUTLINED_FUNCTION_49_0();
  v41 = OUTLINED_FUNCTION_152_10();
  *(v41 + 16) = xmmword_1939526B0;
  v13 = (v41 + v10);
  v14 = v13 + dword_1EAEAC4C0;
  *v13 = 1;
  *v14 = "_0";
  *(v14 + 1) = 2;
  v14[16] = 2;
  *(v14 + 3) = "0";
  *(v14 + 4) = 1;
  v14[40] = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v16 = *(v15 + 104);
  v17 = OUTLINED_FUNCTION_50_1();
  (v16)(v17);
  v18 = OUTLINED_FUNCTION_3_1(v13 + v12);
  *v19 = 2;
  v20 = OUTLINED_FUNCTION_329(v18, "_1");
  v21 = OUTLINED_FUNCTION_140_9(v20, "1");
  (v16)(v21);
  v22 = OUTLINED_FUNCTION_612(dword_1EAEAC4C0);
  v23 = OUTLINED_FUNCTION_329(v22, "_2");
  v24 = OUTLINED_FUNCTION_140_9(v23, "2");
  (v16)(v24);
  v25 = OUTLINED_FUNCTION_612(dword_1EAEAC4C0);
  v26 = OUTLINED_FUNCTION_329(v25, "_3");
  v27 = OUTLINED_FUNCTION_140_9(v26, "3");
  (v16)(v27);
  v28 = OUTLINED_FUNCTION_612(dword_1EAEAC4C0);
  v29 = OUTLINED_FUNCTION_329(v28, "_4");
  v30 = OUTLINED_FUNCTION_140_9(v29, "4");
  (v16)(v30);
  v31 = dword_1EAEAC4C0;
  v32 = (v13 + 5 * v12);
  *v32 = 6;
  v33 = OUTLINED_FUNCTION_329(v32 + v31, "_5");
  v34 = OUTLINED_FUNCTION_140_9(v33, "5");
  (v16)(v34);
  v35 = OUTLINED_FUNCTION_612(dword_1EAEAC4C0);
  v36 = OUTLINED_FUNCTION_329(v35, "_6");
  v37 = OUTLINED_FUNCTION_140_9(v36, "6");
  (v16)(v37);
  v38 = dword_1EAEAC4C0;
  v39 = (v13 + a10 - v12);
  *v39 = 8;
  v40 = OUTLINED_FUNCTION_329(v39 + v38, "_7");
  *(v40 + 24) = "7";
  *(v40 + 32) = 1;
  *(v40 + 40) = 2;
  OUTLINED_FUNCTION_2_0();
  v16();
  sub_19393C410();
  OUTLINED_FUNCTION_107();
}

uint64_t sub_1936ED7C8()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    result = sub_19393C0E0();
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
      case 7:
      case 8:
        OUTLINED_FUNCTION_98();
        sub_19393C220();
        break;
      default:
        continue;
    }
  }
}

void sub_1936ED874()
{
  OUTLINED_FUNCTION_241_1();
  OUTLINED_FUNCTION_75_3();
  v2 = v1[12];
  v3 = v1[20];
  v4 = v1[28];
  v8 = v1[36];
  v7 = v1[44];
  v6 = v1[52];
  v5 = v1[60];
  if ((v1[4] & 1) == 0)
  {
    OUTLINED_FUNCTION_95_3();
    sub_19393C3D0();
  }

  if (!v0)
  {
    if ((v2 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3D0();
    }

    if ((v3 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3D0();
    }

    if ((v4 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3D0();
    }

    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3D0();
    }

    if ((v7 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3D0();
    }

    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3D0();
    }

    if ((v5 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3D0();
    }
  }

  OUTLINED_FUNCTION_71_17();
}

void sub_1936EDA34()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC4A0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBB0);
  OUTLINED_FUNCTION_56_18("unit");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "value");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_48(v7, "unitType");
  v3(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936EDB80()
{
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
      case 3:
        OUTLINED_FUNCTION_62();
        sub_1934982A8();
        break;
      case 2:
        OUTLINED_FUNCTION_98();
        sub_19393C1E0();
        break;
      case 1:
        OUTLINED_FUNCTION_84_9();
        sub_19393C200();
        break;
    }
  }
}

void sub_1936EDC1C()
{
  OUTLINED_FUNCTION_50_13();
  v2 = *(v1 + 24);
  v3 = *(v1 + 41);
  if (*(v1 + 8))
  {
    OUTLINED_FUNCTION_224_0();
  }

  if (!v0)
  {
    if ((v2 & 1) == 0)
    {
      OUTLINED_FUNCTION_667();
    }

    if ((v3 & 1) == 0)
    {
      OUTLINED_FUNCTION_134_11();
      sub_193447324(v4, v5, v6, v7, v8, v9);
    }
  }
}

void sub_1936EDD28()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, &qword_1EAEAC4B8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("amount");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "currencyIdentifier");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_48(v7, "displayRepresentation");
  v3(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936EDE78()
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
      case 3:
        OUTLINED_FUNCTION_62();
LABEL_10:
        sub_193498018();
        break;
      case 2:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 1:
        OUTLINED_FUNCTION_89_2();
        goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_355();
}

void sub_1936EDF20()
{
  OUTLINED_FUNCTION_146_5();
  OUTLINED_FUNCTION_22_0();
  v9 = *(v2 + 13);
  v10 = *(v2 + 19);
  if ((v2[1] & 0xFF00) != 0x300)
  {
    v19 = *v2;
    v11 = memcpy(v21 + 8, v2 + 24, 0x42uLL);
    OUTLINED_FUNCTION_134(v11, v12, v13, &type metadata for ToolKitToolTypedValue.PrimitiveValue.Decimal, v14, &off_1F07E2E40, v15, v16, v19);
    OUTLINED_FUNCTION_78_1();
    sub_193447600();
    v0 = v1;
  }

  if (!v0)
  {
    if (!v9 || (OUTLINED_FUNCTION_165_1(), OUTLINED_FUNCTION_24_2(), v3 = sub_19393C3C0(), !v1))
    {
      if (v10)
      {
        v20 = v2[7];
        v21[0] = v2[8];
        v17 = *(v2 + 18);
        v18 = v2[11];
        v21[2] = v2[10];
        v21[3] = v18;
        *&v21[1] = v17;
        *(&v21[1] + 1) = v10;
        OUTLINED_FUNCTION_135_1(v3, v4, v5, &type metadata for ToolKitToolDisplayRepresentation, v6, &off_1F07E49E8, v7, v8, v20);
        OUTLINED_FUNCTION_78_1();
        sub_193447600();
      }
    }
  }
}

void sub_1936EE08C()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC4D0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBB0);
  OUTLINED_FUNCTION_56_18("type");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "identificationHint");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_48(v7, "displayRepresentation");
  v3(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936EE1D8()
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
      case 3:
        OUTLINED_FUNCTION_62();
        sub_193498018();
        break;
      case 2:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 1:
        OUTLINED_FUNCTION_89_2();
        sub_1934982A8();
        break;
    }
  }

  OUTLINED_FUNCTION_355();
}

void sub_1936EE288()
{
  OUTLINED_FUNCTION_50_13();
  v2 = *(v1 + 24);
  v3 = *(v1 + 72);
  if ((*(v1 + 9) & 1) == 0)
  {
    OUTLINED_FUNCTION_133_0();
    v10 = OUTLINED_FUNCTION_85_3(v4, v5, v6, &type metadata for ToolKitToolTypedValue.PrimitiveValue.PaymentMethod.Type, v7, &off_1F07E2F58, v8, v9, v19);
    sub_193447324(v10, v11, v12, v13, v14, v15);
  }

  if (!v0)
  {
    if (v2)
    {
      v16 = OUTLINED_FUNCTION_193_1();
      OUTLINED_FUNCTION_181(v16, v17, v18);
    }

    if (v3)
    {
      OUTLINED_FUNCTION_134_11();
      sub_193447600();
    }
  }
}

void sub_1936EE3A8()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAC4E8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_188_1();
  OUTLINED_FUNCTION_9_8(v4, xmmword_193951270);
  *v0 = 0;
  OUTLINED_FUNCTION_63("TypeUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_4_9();
  v9 = OUTLINED_FUNCTION_0_0(v8, "TypeChecking");
  v6(v9);
  v10 = OUTLINED_FUNCTION_35_4();
  v11 = OUTLINED_FUNCTION_28_4(v10, 11);
  v6(v11);
  v12 = OUTLINED_FUNCTION_9_4((v0 + 3 * v3));
  v13 = OUTLINED_FUNCTION_0_0(v12, "TypeBrokerage");
  v6(v13);
  v14 = OUTLINED_FUNCTION_13((v0 + 4 * v3));
  v15 = OUTLINED_FUNCTION_16_6(v14, "TypeDebit");
  v6(v15);
  v16 = OUTLINED_FUNCTION_19_2((v0 + 5 * v3));
  v17 = OUTLINED_FUNCTION_0_0(v16, "TypeCredit");
  v6(v17);
  v18 = OUTLINED_FUNCTION_14_4(6);
  v19 = OUTLINED_FUNCTION_28_4(v18, 11);
  v6(v19);
  OUTLINED_FUNCTION_120();
  v21 = OUTLINED_FUNCTION_30_0((v0 + v20));
  v22 = OUTLINED_FUNCTION_16_6(v21, "TypeStore");
  v6(v22);
  v23 = OUTLINED_FUNCTION_39_3(&v0[v3]);
  *v23 = "TypeApplePay";
  *(v23 + 1) = 12;
  v24 = OUTLINED_FUNCTION_1_3(v23);
  v6(v24);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936EE614()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC500);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("placemark");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "displayRepresentation");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_48(v7, "type");
  v3(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936EE764()
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
      case 3:
        OUTLINED_FUNCTION_62();
        sub_1934982A8();
        break;
      case 2:
        OUTLINED_FUNCTION_89_2();
        sub_193498018();
        break;
      case 1:
        OUTLINED_FUNCTION_84_9();
        sub_19393C140();
        break;
    }
  }

  OUTLINED_FUNCTION_355();
}

void sub_1936EE968()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAC518);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v2, xmmword_19394FBB0);
  *v0 = 0;
  OUTLINED_FUNCTION_69_0("TypeUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v4 = *(v3 + 104);
  v5 = OUTLINED_FUNCTION_65();
  v4(v5);
  v6 = OUTLINED_FUNCTION_4_9();
  v7 = OUTLINED_FUNCTION_48(v6, "TypePlacemark");
  v4(v7);
  v8 = OUTLINED_FUNCTION_35_4();
  v9 = OUTLINED_FUNCTION_48(v8, "TypeCurrentLocation");
  v4(v9);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936EEAE8()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAC530);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v32 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_8_18(v32, xmmword_1939526F0);
  OUTLINED_FUNCTION_171_5("person");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v5 = *(v4 + 104);
  v6 = OUTLINED_FUNCTION_50_1();
  v5(v6);
  v7 = OUTLINED_FUNCTION_58_18();
  v8 = OUTLINED_FUNCTION_5_4(v7, "displayRepresentation");
  v5(v8);
  v9 = OUTLINED_FUNCTION_9_4((v0 + 2 * v3));
  v10 = OUTLINED_FUNCTION_36_0(v9, "handle");
  v5(v10);
  v11 = OUTLINED_FUNCTION_9_64();
  v12 = OUTLINED_FUNCTION_5_4(v11, "nameComponents");
  v5(v12);
  v13 = OUTLINED_FUNCTION_3_1(v0 + 4 * v3);
  *v14 = 5;
  v15 = OUTLINED_FUNCTION_15(v13, 11);
  v5(v15);
  v16 = OUTLINED_FUNCTION_38_2();
  *v17 = 6;
  v18 = OUTLINED_FUNCTION_23_7(v16, "image");
  v5(v18);
  v19 = OUTLINED_FUNCTION_30_0((v0 + 6 * v3));
  v20 = OUTLINED_FUNCTION_36_0(v19, "contactIdentifier");
  v5(v20);
  OUTLINED_FUNCTION_33_0(8 * v3);
  OUTLINED_FUNCTION_121_1(v21);
  v23 = OUTLINED_FUNCTION_5_4(v22, "customIdentifier");
  v5(v23);
  v24 = OUTLINED_FUNCTION_55_2((v0 + 8 * v3));
  v25 = OUTLINED_FUNCTION_5_4(v24, "relationship");
  v5(v25);
  v26 = OUTLINED_FUNCTION_44(9 * v3);
  *v27 = 10;
  v28 = OUTLINED_FUNCTION_36_0(v26, "contactSuggestion");
  v5(v28);
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_377_0(v29);
  *v30 = "isMe";
  v30[1] = 4;
  v31 = OUTLINED_FUNCTION_41(v30);
  v5(v31);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1936EED70()
{
  OUTLINED_FUNCTION_26();
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
      case 6:
        OUTLINED_FUNCTION_98();
        sub_19393C140();
        continue;
      case 2:
        OUTLINED_FUNCTION_196_3();
        OUTLINED_FUNCTION_180_6();
        goto LABEL_8;
      case 3:
        OUTLINED_FUNCTION_89_2();
        goto LABEL_8;
      case 4:
        OUTLINED_FUNCTION_147_0();
LABEL_8:
        sub_193498018();
        break;
      case 5:
      case 7:
      case 8:
      case 9:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 10:
      case 11:
        OUTLINED_FUNCTION_98();
        sub_19393C0F0();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1936EEE98()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_146_5();
  v3 = *(v2 + 8);
  v4 = *(v2 + 56);
  v5 = *(v2 + 104);
  v26 = *(v2 + 96);
  v20 = *(v2 + 392);
  v19 = *(v2 + 408);
  v18 = *(v2 + 416);
  v17 = *(v2 + 417);
  v21 = *(v2 + 376);
  v22 = *(v2 + 360);
  v23 = *(v2 + 344);
  if (v3 >> 60 != 15)
  {
    v6 = *v2;
    v7 = OUTLINED_FUNCTION_82();
    sub_193450688(v7, v8);
    OUTLINED_FUNCTION_82();
    v1 = v0;
    sub_19393C330();
    sub_19345012C(v6, v3);
  }

  if (!v0)
  {
    if (!v4 || (v9 = *(v2 + 32), __dst[0] = *(v2 + 16), __dst[1] = v9, v10 = *(v2 + 48), v11 = *(v2 + 80), __dst[3] = *(v2 + 64), __dst[4] = v11, *&__dst[2] = v10, *(&__dst[2] + 1) = v4, OUTLINED_FUNCTION_601(), (v0 = v1) == 0))
    {
      if (v5 == 1 || (v12 = *(v2 + 128), __dst[1] = *(v2 + 112), __dst[2] = v12, *&__dst[0] = v26, *(&__dst[0] + 1) = v5, OUTLINED_FUNCTION_601(), (v0 = v1) == 0))
      {
        memcpy(__dst, (v2 + 144), 0xC0uLL);
        if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(__dst) == 1 || (memcpy(v24, __dst, sizeof(v24)), OUTLINED_FUNCTION_601(), (v0 = v1) == 0))
        {
          if (!v23 || (OUTLINED_FUNCTION_226_2(), sub_19393C3C0(), (v0 = v1) == 0))
          {
            if (v22 >> 60 == 15 || (v13 = OUTLINED_FUNCTION_25_2(), sub_193450688(v13, v14), OUTLINED_FUNCTION_25_2(), OUTLINED_FUNCTION_226_2(), sub_19393C330(), v0 = v1, v15 = OUTLINED_FUNCTION_25_2(), sub_19345012C(v15, v16), !v1))
            {
              if (!v21 || (OUTLINED_FUNCTION_226_2(), sub_19393C3C0(), (v0 = v1) == 0))
              {
                if (!v20 || (OUTLINED_FUNCTION_226_2(), sub_19393C3C0(), (v0 = v1) == 0))
                {
                  if (!v19 || (OUTLINED_FUNCTION_226_2(), sub_19393C3C0(), (v0 = v1) == 0))
                  {
                    if (v18 == 2 || (sub_19393C2E0(), !v0))
                    {
                      if (v17 != 2)
                      {
                        sub_19393C2E0();
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

  OUTLINED_FUNCTION_27();
}

void sub_1936EF1E0()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAC548);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v2, xmmword_19394FBB0);
  OUTLINED_FUNCTION_141_1("value");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v4 = *(v3 + 104);
  v5 = OUTLINED_FUNCTION_65();
  v4(v5);
  v6 = OUTLINED_FUNCTION_52();
  *v7 = v0;
  *v6 = "type";
  v6[1] = 4;
  v8 = OUTLINED_FUNCTION_143_6(v6);
  v4(v8);
  v9 = OUTLINED_FUNCTION_13_12();
  *v9 = "label";
  *(v9 + 1) = 5;
  v10 = OUTLINED_FUNCTION_143_6(v9);
  v4(v10);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936EF33C()
{
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
      case 3:
        goto LABEL_9;
      case 2:
        OUTLINED_FUNCTION_62();
        sub_1934982A8();
        break;
      case 1:
LABEL_9:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
    }
  }
}

void sub_1936EF3D0()
{
  OUTLINED_FUNCTION_75_3();
  v7 = *(v0 + 8);
  v8 = *(v0 + 25);
  v9 = *(v0 + 40);
  if (v7)
  {
    v2 = OUTLINED_FUNCTION_224_0();
  }

  if (!v1)
  {
    if ((v8 & 1) == 0)
    {
      v10 = OUTLINED_FUNCTION_104_11(v2, v7, v3, &type metadata for ToolKitToolTypedValue.PrimitiveValue.Person.Handle.Type, v4, &off_1F07E3038, v5, v6, *(v0 + 16));
      sub_193447324(v10, v11, v12, v13, v14, v15);
    }

    if (v9)
    {
      v16 = OUTLINED_FUNCTION_228_3();
      OUTLINED_FUNCTION_181(v16, v17, v18);
    }
  }
}

void sub_1936EF4D0()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAC560);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v2, xmmword_19394FBB0);
  *v0 = 0;
  OUTLINED_FUNCTION_69_0("TypeUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v4 = *(v3 + 104);
  v5 = OUTLINED_FUNCTION_65();
  v4(v5);
  v6 = OUTLINED_FUNCTION_4_9();
  v7 = OUTLINED_FUNCTION_48(v6, "TypeEmailAddress");
  v4(v7);
  v8 = OUTLINED_FUNCTION_35_4();
  v9 = OUTLINED_FUNCTION_48(v8, "TypePhoneNumber");
  v4(v9);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936EF650()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAC578);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_202_2();
  OUTLINED_FUNCTION_11_3(v4, xmmword_193952700);
  OUTLINED_FUNCTION_63("namePrefix");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_29_1();
  v9 = OUTLINED_FUNCTION_0_0(v8, "givenName");
  v6(v9);
  v10 = OUTLINED_FUNCTION_13_12();
  v11 = OUTLINED_FUNCTION_16_6(v10, "middleName");
  v6(v11);
  v12 = OUTLINED_FUNCTION_14_6();
  *v12 = "familyName";
  *(v12 + 1) = 10;
  v13 = OUTLINED_FUNCTION_1_3(v12);
  v6(v13);
  v14 = OUTLINED_FUNCTION_19_2((v0 + 4 * v3));
  v15 = OUTLINED_FUNCTION_16_6(v14, "nameSuffix");
  v6(v15);
  v16 = OUTLINED_FUNCTION_66_22();
  v17 = OUTLINED_FUNCTION_0_0(v16, "nickname");
  v6(v17);
  v18 = OUTLINED_FUNCTION_30_0((v0 + 10 * v3));
  v19 = OUTLINED_FUNCTION_0_0(v18, "phoneticRepresentation");
  v6(v19);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936EF82C()
{
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
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 7:
        OUTLINED_FUNCTION_62();
        sub_193498018();
        break;
      default:
        continue;
    }
  }
}

void sub_1936EF8F4()
{
  OUTLINED_FUNCTION_146_5();
  OUTLINED_FUNCTION_364_1();
  v3 = v2[1];
  v4 = v2[3];
  v5 = v2[5];
  v10 = v2[7];
  v8 = v2[9];
  v7 = v2[11];
  v6 = v2[13];
  if (v3)
  {
    OUTLINED_FUNCTION_645();
    v1 = v0;
    sub_19393C3C0();
    if (v0)
    {
      return;
    }
  }

  else if (v0)
  {
    return;
  }

  if (!v4 || (OUTLINED_FUNCTION_325_0(), !v1))
  {
    if (!v5 || (OUTLINED_FUNCTION_125_3(), OUTLINED_FUNCTION_325_0(), !v1))
    {
      if (!v10 || (OUTLINED_FUNCTION_325_0(), !v1))
      {
        if (!v8 || (OUTLINED_FUNCTION_325_0(), !v1))
        {
          if (!v7 || (OUTLINED_FUNCTION_325_0(), !v1))
          {
            if (v6 != 1)
            {
              memcpy(v9, v2 + 14, sizeof(v9));
              OUTLINED_FUNCTION_203_2();
              sub_193447600();
            }
          }
        }
      }
    }
  }
}

void sub_1936EFAEC()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAC590);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_8_18(v4, xmmword_1939526E0);
  OUTLINED_FUNCTION_83_0("namePrefix");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_58_18();
  v9 = OUTLINED_FUNCTION_5_4(v8, "givenName");
  v6(v9);
  v10 = OUTLINED_FUNCTION_9_4((v0 + 2 * v3));
  v11 = OUTLINED_FUNCTION_23_7(v10, "middleName");
  v6(v11);
  v12 = OUTLINED_FUNCTION_9_64();
  *v12 = "familyName";
  *(v12 + 1) = 10;
  v13 = OUTLINED_FUNCTION_41(v12);
  v6(v13);
  v14 = OUTLINED_FUNCTION_21_39();
  v15 = OUTLINED_FUNCTION_23_7(v14, "nameSuffix");
  v6(v15);
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_270_1(v16);
  *v17 = "nickname";
  v17[1] = 8;
  v18 = OUTLINED_FUNCTION_41(v17);
  v6(v18);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1936EFCB0()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    OUTLINED_FUNCTION_55();
    result = sub_19393C0E0();
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
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      default:
        continue;
    }
  }
}

void sub_1936EFD4C()
{
  OUTLINED_FUNCTION_241_1();
  OUTLINED_FUNCTION_75_3();
  v2 = v1[3];
  v3 = v1[5];
  v4 = v1[7];
  v13 = v1[9];
  v10 = v1[10];
  v11 = v1[11];
  v12 = v1[8];
  if (v1[1])
  {
    OUTLINED_FUNCTION_224_0();
  }

  if (!v0)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_165_1();
      OUTLINED_FUNCTION_234_2();
    }

    if (v3)
    {
      v5 = OUTLINED_FUNCTION_228_3();
      OUTLINED_FUNCTION_181(v5, v6, v7);
    }

    if (v4)
    {
      v8 = OUTLINED_FUNCTION_125_3();
      OUTLINED_FUNCTION_181(v8, v9, 4);
    }

    if (v13)
    {
      OUTLINED_FUNCTION_181(v12, v13, 5);
    }

    if (v11)
    {
      OUTLINED_FUNCTION_181(v10, v11, 6);
    }
  }

  OUTLINED_FUNCTION_71_17();
}

void sub_1936EFE7C()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC5A8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBB0);
  OUTLINED_FUNCTION_56_18("file");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "displayRepresentation");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_48(v7, "url");
  v3(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936EFFC4()
{
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
      case 3:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 2:
        OUTLINED_FUNCTION_62();
        sub_193498018();
        break;
      case 1:
        OUTLINED_FUNCTION_84_9();
        sub_19393C140();
        break;
    }
  }
}

void sub_1936F01B4()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC5C0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("bundleIdentifier");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "displayRepresentation");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936F0348()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC5D8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("identifier");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "displayRepresentation");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936F0478()
{
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
      OUTLINED_FUNCTION_84_9();
      sub_19393C200();
    }
  }
}

void sub_1936F04F8()
{
  OUTLINED_FUNCTION_50_13();
  v7 = v1[1];
  v8 = v1[7];
  if (v7)
  {
    v2 = OUTLINED_FUNCTION_224_0();
  }

  if (!v0)
  {
    if (v8)
    {
      OUTLINED_FUNCTION_104_11(v2, v7, v3, &type metadata for ToolKitToolDisplayRepresentation, v4, &off_1F07E49E8, v5, v6, v1[2]);
      sub_193447600();
    }
  }
}

void sub_1936F05B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_108_0();
  v11 = sub_19393C420();
  __swift_allocate_value_buffer(v11, qword_1EAEAC5F0);
  OUTLINED_FUNCTION_136_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v13 = *(v12 + 72);
  OUTLINED_FUNCTION_49_0();
  v57 = OUTLINED_FUNCTION_293_2();
  OUTLINED_FUNCTION_8_18(v57, xmmword_193952750);
  OUTLINED_FUNCTION_83_0("calendar");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v15 = *(v14 + 104);
  v16 = OUTLINED_FUNCTION_50_1();
  v15(v16);
  v17 = OUTLINED_FUNCTION_58_18();
  v18 = OUTLINED_FUNCTION_5_4(v17, "timeZoneIdentifier");
  v15(v18);
  v19 = OUTLINED_FUNCTION_9_4((v10 + 2 * v13));
  v20 = OUTLINED_FUNCTION_5_4(v19, "era");
  v15(v20);
  v21 = OUTLINED_FUNCTION_26_5();
  *v22 = 4;
  v23 = OUTLINED_FUNCTION_23_7(v21, "year");
  v15(v23);
  v24 = OUTLINED_FUNCTION_21_39();
  v25 = OUTLINED_FUNCTION_5_4(v24, "month");
  v15(v25);
  v26 = OUTLINED_FUNCTION_38_2();
  *v27 = 6;
  v28 = OUTLINED_FUNCTION_15(v26, 3);
  v15(v28);
  v29 = OUTLINED_FUNCTION_30_0((v10 + 6 * v13));
  v30 = OUTLINED_FUNCTION_23_7(v29, "hour");
  v15(v30);
  OUTLINED_FUNCTION_33_0(8 * v13);
  OUTLINED_FUNCTION_121_1(v31);
  v33 = OUTLINED_FUNCTION_36_0(v32, "minute");
  v15(v33);
  v34 = OUTLINED_FUNCTION_55_2((v10 + 8 * v13));
  v35 = OUTLINED_FUNCTION_36_0(v34, "second");
  v15(v35);
  OUTLINED_FUNCTION_44(9 * v13);
  OUTLINED_FUNCTION_384(v36);
  *v37 = "nanosecond";
  v37[1] = v38;
  v39 = OUTLINED_FUNCTION_41(v37);
  v15(v39);
  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_377_0(v40);
  v42 = OUTLINED_FUNCTION_15(v41, 7);
  v15(v42);
  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_632(v43);
  v45 = OUTLINED_FUNCTION_23_7(v44, "weekdayOrdinal");
  v15(v45);
  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_631(v46);
  v48 = OUTLINED_FUNCTION_15(v47, 7);
  v15(v48);
  v49 = OUTLINED_FUNCTION_52_0();
  *v50 = 14;
  v51 = OUTLINED_FUNCTION_15(v49, 11);
  v15(v51);
  v52 = OUTLINED_FUNCTION_105_14((v10 + 14 * v13));
  v53 = OUTLINED_FUNCTION_15(v52, 10);
  v15(v53);
  OUTLINED_FUNCTION_33_0(a10);
  OUTLINED_FUNCTION_256_1(v54);
  *v55 = "yearForWeekOfYear";
  v55[1] = 17;
  v56 = OUTLINED_FUNCTION_41(v55);
  v15(v56);
  sub_19393C410();
  OUTLINED_FUNCTION_107();
}

void sub_1936F08E4()
{
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
        sub_193498018();
        break;
      case 2:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
      case 16:
        OUTLINED_FUNCTION_98();
        sub_19393C190();
        break;
      default:
        continue;
    }
  }
}

void sub_1936F0A00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_664();
  v5 = *(v3 + 88);
  v19 = *(v3 + 104);
  v18 = *(v3 + 120);
  v17 = *(v3 + 136);
  v16 = *(v3 + 152);
  v15 = *(v3 + 168);
  v14 = *(v3 + 184);
  v13 = *(v3 + 200);
  v12 = *(v3 + 216);
  v11 = *(v3 + 232);
  v10 = *(v3 + 248);
  v9 = *(v3 + 264);
  v6 = *(v3 + 280);
  v7 = *(v3 + 296);
  v8 = *(v3 + 312);
  if (*(v3 + 24) != 1)
  {
    sub_193447600();
  }

  if (!v4)
  {
    if (v5)
    {
      sub_19393C3C0();
    }

    if ((v19 & 1) == 0)
    {
      OUTLINED_FUNCTION_118_12();
      sub_19393C360();
    }

    if ((v18 & 1) == 0)
    {
      OUTLINED_FUNCTION_118_12();
      sub_19393C360();
    }

    if ((v17 & 1) == 0)
    {
      OUTLINED_FUNCTION_118_12();
      sub_19393C360();
    }

    if ((v16 & 1) == 0)
    {
      OUTLINED_FUNCTION_118_12();
      sub_19393C360();
    }

    if ((v15 & 1) == 0)
    {
      OUTLINED_FUNCTION_118_12();
      sub_19393C360();
    }

    if ((v14 & 1) == 0)
    {
      OUTLINED_FUNCTION_118_12();
      sub_19393C360();
    }

    if ((v13 & 1) == 0)
    {
      OUTLINED_FUNCTION_118_12();
      sub_19393C360();
    }

    if ((v12 & 1) == 0)
    {
      OUTLINED_FUNCTION_118_12();
      sub_19393C360();
    }

    if ((v11 & 1) == 0)
    {
      OUTLINED_FUNCTION_118_12();
      sub_19393C360();
    }

    if ((v10 & 1) == 0)
    {
      OUTLINED_FUNCTION_118_12();
      sub_19393C360();
    }

    if ((v9 & 1) == 0)
    {
      OUTLINED_FUNCTION_118_12();
      sub_19393C360();
    }

    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_118_12();
      sub_19393C360();
    }

    if ((v7 & 1) == 0)
    {
      OUTLINED_FUNCTION_118_12();
      sub_19393C360();
    }

    if ((v8 & 1) == 0)
    {
      sub_19393C360();
    }
  }

  OUTLINED_FUNCTION_663();
}

void sub_1936F0DE0()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAC608);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v72 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_43_2(v72, xmmword_1939526D0);
  OUTLINED_FUNCTION_171_5("CalendarIdentifierUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_17_8((v0 + v4));
  v9 = OUTLINED_FUNCTION_5_4(v8, "CalendarIdentifierGregorian");
  v6(v9);
  v10 = OUTLINED_FUNCTION_3_1(v0 + 2 * v4);
  *v11 = v1;
  v12 = OUTLINED_FUNCTION_5_4(v10, "CalendarIdentifierBuddhist");
  v6(v12);
  v13 = OUTLINED_FUNCTION_9_4((v0 + 3 * v4));
  v14 = OUTLINED_FUNCTION_36_0(v13, "CalendarIdentifierChinese");
  v6(v14);
  v15 = OUTLINED_FUNCTION_13((v0 + 4 * v4));
  v16 = OUTLINED_FUNCTION_23_7(v15, "CalendarIdentifierCoptic");
  v6(v16);
  v17 = OUTLINED_FUNCTION_19_2((v0 + 5 * v4));
  v18 = OUTLINED_FUNCTION_5_4(v17, "CalendarIdentifierEthiopicAmeteMihret");
  v6(v18);
  v19 = OUTLINED_FUNCTION_95_13(6);
  v20 = OUTLINED_FUNCTION_5_4(v19, "CalendarIdentifierEthiopicAmeteAlem");
  v6(v20);
  v21 = OUTLINED_FUNCTION_30_0((v0 + 7 * v4));
  v22 = OUTLINED_FUNCTION_23_7(v21, "CalendarIdentifierHebrew");
  v6(v22);
  v23 = OUTLINED_FUNCTION_39_3((v0 + 8 * v4));
  v24 = OUTLINED_FUNCTION_36_0(v23, "CalendarIdentifierIso8601");
  v6(v24);
  v25 = OUTLINED_FUNCTION_55_2((v0 + 9 * v4));
  v26 = OUTLINED_FUNCTION_23_7(v25, "CalendarIdentifierIndian");
  v6(v26);
  v27 = OUTLINED_FUNCTION_95_13(10);
  v28 = OUTLINED_FUNCTION_36_0(v27, "CalendarIdentifierIslamic");
  v6(v28);
  v29 = OUTLINED_FUNCTION_95_13(11);
  v30 = OUTLINED_FUNCTION_5_4(v29, "CalendarIdentifierIslamicCivil");
  v6(v30);
  v31 = OUTLINED_FUNCTION_95_13(12);
  v32 = OUTLINED_FUNCTION_15(v31, 26);
  v6(v32);
  v33 = OUTLINED_FUNCTION_95_13(13);
  v34 = OUTLINED_FUNCTION_36_0(v33, "CalendarIdentifierPersian");
  v6(v34);
  v35 = OUTLINED_FUNCTION_95_13(14);
  v36 = OUTLINED_FUNCTION_5_4(v35, "CalendarIdentifierRepublicOfChina");
  v6(v36);
  OUTLINED_FUNCTION_44(15 * v4);
  OUTLINED_FUNCTION_180_0(v37);
  v39 = OUTLINED_FUNCTION_5_4(v38, "CalendarIdentifierIslamicTabular");
  v6(v39);
  v40 = OUTLINED_FUNCTION_98_14((v0 + 16 * v4));
  v41 = OUTLINED_FUNCTION_5_4(v40, "CalendarIdentifierIslamicUmmAlQura");
  v6(v41);
  v42 = OUTLINED_FUNCTION_44(17 * v4);
  *v43 = 17;
  v44 = OUTLINED_FUNCTION_23_7(v42, "CalendarIdentifierBangla");
  v6(v44);
  v45 = OUTLINED_FUNCTION_95_13(18);
  v46 = OUTLINED_FUNCTION_15(v45, 26);
  v6(v46);
  v47 = OUTLINED_FUNCTION_95_13(19);
  v48 = OUTLINED_FUNCTION_36_0(v47, "CalendarIdentifierKannada");
  v6(v48);
  v49 = OUTLINED_FUNCTION_95_13(20);
  v50 = OUTLINED_FUNCTION_15(v49, 27);
  v6(v50);
  v51 = OUTLINED_FUNCTION_95_13(21);
  v52 = OUTLINED_FUNCTION_36_0(v51, "CalendarIdentifierMarathi");
  v6(v52);
  v53 = OUTLINED_FUNCTION_95_13(22);
  v55 = OUTLINED_FUNCTION_15(v53, v54);
  v6(v55);
  v56 = OUTLINED_FUNCTION_67_1((v0 + 23 * v4));
  v57 = OUTLINED_FUNCTION_36_0(v56, "CalendarIdentifierTamil");
  v6(v57);
  v58 = OUTLINED_FUNCTION_60_1((v0 + 24 * v4));
  v59 = OUTLINED_FUNCTION_23_7(v58, "CalendarIdentifierTelugu");
  v6(v59);
  v60 = OUTLINED_FUNCTION_3_1(v0 + 25 * v4);
  *v61 = v62;
  v63 = OUTLINED_FUNCTION_23_7(v60, "CalendarIdentifierVikram");
  v6(v63);
  v64 = OUTLINED_FUNCTION_3_1(v0 + 26 * v4);
  *v65 = v66;
  v67 = OUTLINED_FUNCTION_36_0(v64, "CalendarIdentifierDangi");
  v6(v67);
  v68 = OUTLINED_FUNCTION_3_1(v0 + 27 * v4);
  *v69 = v70;
  *v68 = "CalendarIdentifierVietnamese";
  v68[1] = 28;
  v71 = OUTLINED_FUNCTION_41(v68);
  v6(v71);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1936F1308()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAC620);
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
  v9 = OUTLINED_FUNCTION_0_0(v8, "timeZoneIdentifier");
  v6(v9);
  v10 = OUTLINED_FUNCTION_13_12();
  v11 = OUTLINED_FUNCTION_0_0(v10, "localeIdentifier");
  v6(v11);
  v12 = OUTLINED_FUNCTION_14_6();
  v13 = OUTLINED_FUNCTION_0_0(v12, "firstWeekday");
  v6(v13);
  v14 = OUTLINED_FUNCTION_19_2((v0 + 4 * v3));
  v15 = OUTLINED_FUNCTION_0_0(v14, "minimumDaysInFirstWeek");
  v6(v15);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936F149C()
{
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
        sub_1934982A8();
        break;
      case 2:
      case 3:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 4:
      case 5:
        OUTLINED_FUNCTION_98();
        sub_19393C190();
        break;
      default:
        continue;
    }
  }
}

void sub_1936F1560()
{
  OUTLINED_FUNCTION_241_1();
  OUTLINED_FUNCTION_129_10();
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = *(v0 + 56);
  v11 = *(v0 + 72);
  if ((*(v0 + 9) & 1) == 0)
  {
    OUTLINED_FUNCTION_108_1();
    sub_193447324(v5, v6, v7, v8, v9, v10);
  }

  if (!v1)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_125_3();
      OUTLINED_FUNCTION_233_2();
    }

    if (v3)
    {
      OUTLINED_FUNCTION_165_1();
      OUTLINED_FUNCTION_233_2();
    }

    if ((v4 & 1) == 0)
    {
      OUTLINED_FUNCTION_144_7();
      sub_19393C360();
    }

    if ((v11 & 1) == 0)
    {
      OUTLINED_FUNCTION_144_7();
      sub_19393C360();
    }
  }

  OUTLINED_FUNCTION_71_17();
}

void sub_1936F16AC()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAC638);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v42 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_11_3(v42, xmmword_193952670);
  OUTLINED_FUNCTION_63("calendar");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_29_1();
  v9 = OUTLINED_FUNCTION_0_0(v8, "frequency");
  v6(v9);
  v10 = OUTLINED_FUNCTION_46_10();
  *v11 = 3;
  v12 = OUTLINED_FUNCTION_28_4(v10, 8);
  v6(v12);
  v13 = OUTLINED_FUNCTION_14_6();
  v14 = OUTLINED_FUNCTION_18_1(v13, "end");
  v6(v14);
  v15 = OUTLINED_FUNCTION_19_2((v1 + 4 * v4));
  *v15 = "matchingPolicy";
  *(v15 + 1) = 14;
  v16 = OUTLINED_FUNCTION_1_3(v15);
  v6(v16);
  v17 = OUTLINED_FUNCTION_66_22();
  v18 = OUTLINED_FUNCTION_0_0(v17, "repeatedTimePolicy");
  v6(v18);
  v19 = OUTLINED_FUNCTION_30_0((v1 + v4 * v0));
  v20 = OUTLINED_FUNCTION_16_6(v19, "months");
  v6(v20);
  OUTLINED_FUNCTION_120();
  v22 = OUTLINED_FUNCTION_39_3((v1 + v21));
  v23 = OUTLINED_FUNCTION_0_0(v22, "daysOfTheYear");
  v6(v23);
  v24 = OUTLINED_FUNCTION_55_2((v1 + 8 * v4));
  v25 = OUTLINED_FUNCTION_18_1(v24, "daysOfTheMonth");
  v6(v25);
  v26 = OUTLINED_FUNCTION_45_2(9 * v4);
  *v27 = 10;
  v28 = OUTLINED_FUNCTION_16_6(v26, "weeks");
  v6(v28);
  v29 = OUTLINED_FUNCTION_3_1(v1 + 10 * v4);
  *v30 = 11;
  v31 = OUTLINED_FUNCTION_28_4(v29, 8);
  v6(v31);
  v32 = OUTLINED_FUNCTION_3_1(v1 + 11 * v4);
  *v33 = 12;
  v34 = OUTLINED_FUNCTION_16_6(v32, "hours");
  v6(v34);
  OUTLINED_FUNCTION_3_1(v1 + 12 * v4);
  OUTLINED_FUNCTION_625(v35);
  v37 = OUTLINED_FUNCTION_18_1(v36, "minutes");
  v6(v37);
  v38 = OUTLINED_FUNCTION_157_9((v1 + 5 * v4));
  v39 = OUTLINED_FUNCTION_18_1(v38, "seconds");
  v6(v39);
  v40 = OUTLINED_FUNCTION_105_14((v1 + 5 * v4));
  *v40 = "setPositions";
  *(v40 + 1) = 12;
  v41 = OUTLINED_FUNCTION_1_3(v40);
  v6(v41);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1936F19D8()
{
  OUTLINED_FUNCTION_26();
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
        OUTLINED_FUNCTION_125();
        goto LABEL_7;
      case 2:
      case 5:
      case 6:
        sub_1934982A8();
        continue;
      case 3:
        OUTLINED_FUNCTION_98();
        sub_19393C190();
        continue;
      case 4:
LABEL_7:
        sub_193498018();
        continue;
      case 7:
        OUTLINED_FUNCTION_62();
        goto LABEL_11;
      case 8:
      case 9:
      case 10:
      case 12:
      case 13:
      case 14:
      case 15:
        OUTLINED_FUNCTION_98();
        sub_19393C130();
        continue;
      case 11:
        OUTLINED_FUNCTION_89_2();
LABEL_11:
        sub_193498238(v3, v4, v5, v6, v7);
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1936F1B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(v8 + 89);
  v58 = *(v8 + 104);
  v56 = *(v8 + 140);
  v55 = *(v8 + 136);
  v57 = *(v8 + 153);
  HIDWORD(v52) = *(v8 + 169);
  v53 = *(v8 + 176);
  v54 = *(v8 + 192);
  v49 = *(v8 + 184);
  v50 = *(v8 + 200);
  v12 = *(v8 + 216);
  v51 = *(v8 + 208);
  v14 = *(v8 + 224);
  v13 = *(v8 + 232);
  v15 = *(v8 + 240);
  if (*(v8 + 24) != 1)
  {
    v48 = *(v8 + 96);
    sub_193447600();
  }

  if (!v9)
  {
    if ((v11 & 1) == 0)
    {
      v16 = OUTLINED_FUNCTION_617(a1, a2, a3, &type metadata for ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleFrequency, a5, &off_1F07E3280, a7, a8, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, *(v8 + 80));
      a1 = sub_193447324(v16, v17, a2, v18, v20, v19);
    }

    if ((v58 & 1) == 0)
    {
      OUTLINED_FUNCTION_118_12();
      a1 = sub_19393C360();
    }

    if (((v55 | (v56 << 32)) & 0xFF0000000000) != 0x30000000000)
    {
      OUTLINED_FUNCTION_618(a1, a2, a3, &type metadata for ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd, a5, &off_1F07E32A8, a7, a8, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, *(v8 + 112));
      OUTLINED_FUNCTION_217_2();
      sub_193447600();
    }

    if ((v57 & 1) == 0)
    {
      OUTLINED_FUNCTION_217_2();
      sub_193447324(v21, v22, v23, v24, v25, v26);
    }

    v28 = v53;
    v27 = v54;
    if ((v52 & 0x100000000) == 0)
    {
      OUTLINED_FUNCTION_217_2();
      sub_193447324(v29, v30, v31, v32, v33, v34);
      v28 = v53;
      v27 = v54;
    }

    if (*(v28 + 16))
    {
      OUTLINED_FUNCTION_217_2();
      sub_193451CFC(v35, v36, v37, v38, v39, v40);
      v27 = v54;
    }

    if (*(v49 + 16))
    {
      OUTLINED_FUNCTION_118_12();
      sub_19393C320();
      v27 = v54;
    }

    if (*(v27 + 16))
    {
      OUTLINED_FUNCTION_118_12();
      sub_19393C320();
    }

    if (*(v50 + 16))
    {
      OUTLINED_FUNCTION_118_12();
      sub_19393C320();
    }

    if (*(v51 + 16))
    {
      OUTLINED_FUNCTION_217_2();
      sub_193451CFC(v41, v42, v43, v44, v45, v46);
    }

    if (*(v12 + 16))
    {
      OUTLINED_FUNCTION_118_12();
      sub_19393C320();
    }

    if (*(v14 + 16))
    {
      OUTLINED_FUNCTION_118_12();
      sub_19393C320();
    }

    if (*(v13 + 16))
    {
      OUTLINED_FUNCTION_118_12();
      sub_19393C320();
    }

    if (*(v15 + 16))
    {
      sub_19393C320();
    }
  }
}

void sub_1936F1FB0()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAC650);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_31_13();
  OUTLINED_FUNCTION_43_2(v4, xmmword_19394FBD0);
  OUTLINED_FUNCTION_102("CalendarMatchingPolicyUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_17_8((v0 + v3));
  v9 = OUTLINED_FUNCTION_25(v8, "CalendarMatchingPolicyNextTime");
  v6(v9);
  v10 = OUTLINED_FUNCTION_69();
  v11 = OUTLINED_FUNCTION_25(v10, "CalendarMatchingPolicyNextTimePreservingSmallerComponents");
  v6(v11);
  v12 = OUTLINED_FUNCTION_9_4((v0 + 3 * v3));
  v13 = OUTLINED_FUNCTION_25(v12, "CalendarMatchingPolicyPreviousTimePreservingSmallerComponents");
  v6(v13);
  v14 = OUTLINED_FUNCTION_13((v0 + 4 * v3));
  v15 = OUTLINED_FUNCTION_25(v14, "CalendarMatchingPolicyStrict");
  v6(v15);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}