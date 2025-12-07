void sub_221B00364(_BYTE *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB890, &qword_221BE0AF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17[-v6];
  v8 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = a2;
  sub_221AE8904(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  sub_221BCCB58();
  v11 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse(0) + 24);
  sub_2219A1CC8(&a1[v11], &qword_27CFB9988, &qword_221BDAE20);
  sub_221B229DC(v10, &a1[v11], type metadata accessor for AppIntentsProtobuf_UUID);
  __swift_storeEnumTagSinglePayload(&a1[v11], 0, 1, v8);
  v12 = *(a2 + *(type metadata accessor for AppIntentsProtocol.PerformAction.ContinueInAppResponse(0) + 20));
  if (v12)
  {
    v13 = type metadata accessor for AppIntentsProtobuf_Error(0);
    MEMORY[0x28223BE20](v13);
    *&v17[-16] = v12;
    sub_221AE8904(&qword_27CFB97C0, type metadata accessor for AppIntentsProtobuf_Error, &unk_221BD9C18);
    v14 = v12;
    sub_221BCCB58();

    if (!v2)
    {
      v15 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse.OneOf_Response(0);
      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(v7, 0, 1, v15);
      sub_221B22A38(v7, a1, &unk_27CFBB890, &qword_221BE0AF0);
    }
  }

  else
  {
    sub_2219A1CC8(a1, &unk_27CFBB890, &qword_221BE0AF0);
    *a1 = 1;
    v16 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse.OneOf_Response(0);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(a1, 0, 1, v16);
  }
}

void sub_221B0071C()
{
  OUTLINED_FUNCTION_55_4();
  v4 = v3;
  v66 = v5;
  v6 = type metadata accessor for AppIntentsProtobuf_Error(0);
  v7 = OUTLINED_FUNCTION_8_1(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_30_8();
  v8 = OUTLINED_FUNCTION_133_3();
  v9 = type metadata accessor for AppIntentsProtobuf_Value(v8);
  v10 = OUTLINED_FUNCTION_8_1(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_30_8();
  OUTLINED_FUNCTION_181_1(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB880, &unk_221BE4FA0);
  v13 = OUTLINED_FUNCTION_8_1(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_51_4();
  v64 = v14;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_132_2();
  v65 = v16;
  v17 = OUTLINED_FUNCTION_131_3();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
  OUTLINED_FUNCTION_8_1(v19);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v20);
  v21 = OUTLINED_FUNCTION_79_2();
  type metadata accessor for AppIntentsProtobuf_UUID(v21);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_45_9();
  sub_221BCC558();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_147_2();
  type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse(0);
  v24 = v4;
  OUTLINED_FUNCTION_237_1();
  sub_2219A02E8(v25, v26, v27, v28);
  OUTLINED_FUNCTION_20_8(v0);
  if (v29)
  {
    *v2 = 0;
    v2[1] = 0;
    sub_221BCC8C8();
    OUTLINED_FUNCTION_20_8(v0);
    if (!v29)
    {
      sub_2219A1CC8(v0, &qword_27CFB9988, &qword_221BDAE20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_20();
    sub_221B229DC(v0, v2, v30);
  }

  v31 = OUTLINED_FUNCTION_236_0();
  sub_221AE9E30(v31);
  if (v1)
  {
    OUTLINED_FUNCTION_13_13();
    sub_221B22C2C(v4, v32);
    OUTLINED_FUNCTION_0_43();
    sub_221B22C2C(v2, v33);
  }

  else
  {
    OUTLINED_FUNCTION_0_43();
    sub_221B22C2C(v2, v34);
    v35 = OUTLINED_FUNCTION_343();
    v36(v35);
    sub_2219A02E8(v4, v65, &unk_27CFBB880, &unk_221BE4FA0);
    type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse.OneOf_Response(0);
    OUTLINED_FUNCTION_39_8(v65);
    if (v29)
    {
      v37 = type metadata accessor for AppIntentsProtocol.PerformAction.DisambiguationResponse(0);
      sub_221A00FEC(v37, v38, v39);
      OUTLINED_FUNCTION_15_0();
      v40 = swift_allocError();
      OUTLINED_FUNCTION_117_5(v40, v41);
      *(v42 + 16) = 0x8000000221BF0740;
      *(v42 + 24) = 0;
      *(v42 + 32) = 1;
      swift_willThrow();
      OUTLINED_FUNCTION_13_13();
      sub_221B22C2C(v24, v43);
      sub_2219A1CC8(v65, &unk_27CFBB880, &unk_221BE4FA0);
      v44 = OUTLINED_FUNCTION_214_1();
      v45(v44);
    }

    else
    {
      sub_2219A02E8(v65, v64, &unk_27CFBB880, &unk_221BE4FA0);
      OUTLINED_FUNCTION_55_3();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          OUTLINED_FUNCTION_13_13();
          sub_221B22C2C(v4, v47);
          v48 = 0;
          v49 = *v64;
        }

        else
        {
          OUTLINED_FUNCTION_7_16();
          OUTLINED_FUNCTION_244_2();
          sub_221B229DC(v54, v55, v56);
          sub_221B14BC4(MEMORY[1], MEMORY[9], &qword_27CFBB680, 0x277D23958);
          v49 = v60;
          OUTLINED_FUNCTION_13_13();
          sub_221B22C2C(v4, v61);
          OUTLINED_FUNCTION_4_20();
          sub_221B22C2C(1, v62);
          v48 = 1;
        }
      }

      else
      {
        OUTLINED_FUNCTION_6_19();
        OUTLINED_FUNCTION_213_3();
        sub_221B229DC(v50, v51, v52);
        sub_2219A1D20(0, &qword_27CFBAF28, 0x277CCA9B8);
        v53 = OUTLINED_FUNCTION_164_1();
        sub_221AEE828(v53);
        v49 = v57;
        OUTLINED_FUNCTION_13_13();
        sub_221B22C2C(v4, v58);
        OUTLINED_FUNCTION_2_32();
        sub_221B22C2C(v64, v59);
        v48 = 2;
      }

      v63 = v66 + *(type metadata accessor for AppIntentsProtocol.PerformAction.DisambiguationResponse(0) + 20);
      *v63 = v49;
      *(v63 + 8) = v48;
      sub_2219A1CC8(v65, &unk_27CFBB880, &unk_221BE4FA0);
    }
  }

  OUTLINED_FUNCTION_175_1();
  OUTLINED_FUNCTION_53_5();
}

void sub_221B00BFC(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB880, &unk_221BE4FA0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v26[-v9];
  v11 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = a2;
  sub_221AE8904(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  sub_221BCCB58();
  v14 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse(0) + 24);
  sub_2219A1CC8(a1 + v14, &qword_27CFB9988, &qword_221BDAE20);
  sub_221B229DC(v13, a1 + v14, type metadata accessor for AppIntentsProtobuf_UUID);
  __swift_storeEnumTagSinglePayload(a1 + v14, 0, 1, v11);
  v15 = a2 + *(type metadata accessor for AppIntentsProtocol.PerformAction.DisambiguationResponse(0) + 20);
  v16 = *v15;
  v17 = *(v15 + 8);
  if (!v17)
  {
    sub_2219A1CC8(a1, &unk_27CFBB880, &unk_221BE4FA0);
    *a1 = v16;
    v22 = type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse.OneOf_Response(0);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(a1, 0, 1, v22);
    return;
  }

  if (v17 == 1)
  {
    v18 = type metadata accessor for AppIntentsProtobuf_Value(0);
    MEMORY[0x28223BE20](v18);
    *&v26[-16] = v16;
    sub_221AE8904(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value, &unk_221BD8F70);
    v19 = v16;
    sub_221BCCB58();
    sub_221A587E8(v16, 1u);
    if (v2)
    {
      return;
    }

    v20 = type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse.OneOf_Response(0);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v20);
    v21 = v10;
  }

  else
  {
    v23 = type metadata accessor for AppIntentsProtobuf_Error(0);
    MEMORY[0x28223BE20](v23);
    *&v26[-16] = v16;
    sub_221AE8904(&qword_27CFB97C0, type metadata accessor for AppIntentsProtobuf_Error, &unk_221BD9C18);
    v24 = v16;
    sub_221BCCB58();
    sub_221A587E8(v16, 2u);
    if (v2)
    {
      return;
    }

    v25 = type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse.OneOf_Response(0);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v25);
    v21 = v7;
  }

  sub_221B22A38(v21, a1, &unk_27CFBB880, &unk_221BE4FA0);
}

void sub_221B010E4()
{
  OUTLINED_FUNCTION_55_4();
  v4 = OUTLINED_FUNCTION_185_2(v3);
  v5 = OUTLINED_FUNCTION_8_1(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_30_8();
  OUTLINED_FUNCTION_150_3(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA448, &qword_221BE0AA8);
  v8 = OUTLINED_FUNCTION_8_1(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_51_4();
  v61 = v9;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_132_2();
  OUTLINED_FUNCTION_174_3(v11);
  v12 = OUTLINED_FUNCTION_169_2();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_8_1(v14);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v15);
  v16 = OUTLINED_FUNCTION_45_9();
  v17 = type metadata accessor for AppIntentsProtobuf_UUID(v16);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_21_10();
  sub_221BCC558();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_4_0();
  v20 = OUTLINED_FUNCTION_79_2();
  v21 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse(v20);
  v22 = OUTLINED_FUNCTION_198_2(v21);
  sub_2219A02E8(v22, v2, &qword_27CFB9988, &qword_221BDAE20);
  v23 = OUTLINED_FUNCTION_226_1();
  OUTLINED_FUNCTION_49_4(v23, v24, v17);
  if (v47)
  {
    *v1 = 0;
    v1[1] = 0;
    sub_221BCC8C8();
    v25 = OUTLINED_FUNCTION_226_1();
    OUTLINED_FUNCTION_49_4(v25, v26, v17);
    if (!v47)
    {
      sub_2219A1CC8(v2, &qword_27CFB9988, &qword_221BDAE20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_20();
    v27 = OUTLINED_FUNCTION_235_1();
    sub_221B229DC(v27, v28, v29);
  }

  v30 = OUTLINED_FUNCTION_208_2();
  sub_221AE9E30(v30);
  if (v0)
  {
    v31 = OUTLINED_FUNCTION_18_11();
    sub_221B22C2C(v31, v32);
    OUTLINED_FUNCTION_0_43();
    sub_221B22C2C(v1, v33);
  }

  else
  {
    OUTLINED_FUNCTION_0_43();
    sub_221B22C2C(v1, v34);
    v35 = OUTLINED_FUNCTION_95_5();
    v37 = v36(v35);
    OUTLINED_FUNCTION_223_3(v37, v38, &qword_27CFBA448, &qword_221BE0AA8);
    type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse.OneOf_Response(0);
    OUTLINED_FUNCTION_39_8(&qword_221BDAE20);
    if (v47)
    {
      type metadata accessor for AppIntentsProtocol.PerformAction.ChoiceResponse(0);
      OUTLINED_FUNCTION_153_3();
      sub_221A00FEC(v39, v40, v41);
      OUTLINED_FUNCTION_15_0();
      v42 = swift_allocError();
      OUTLINED_FUNCTION_117_5(v42, v43);
      OUTLINED_FUNCTION_187_2(v44, v45);
      v46 = OUTLINED_FUNCTION_18_11();
      sub_221B22C2C(v46, v52);
      sub_2219A1CC8(&qword_221BDAE20, &qword_27CFBA448, &qword_221BE0AA8);
      v53 = OUTLINED_FUNCTION_214_1();
      v54(v53);
    }

    else
    {
      sub_2219A02E8(&qword_221BDAE20, v61, &qword_27CFBA448, &qword_221BE0AA8);
      OUTLINED_FUNCTION_70();
      swift_getEnumCaseMultiPayload();
      OUTLINED_FUNCTION_230_1();
      if (v47)
      {
        v55 = OUTLINED_FUNCTION_18_11();
        sub_221B22C2C(v55, v56);
      }

      else
      {
        OUTLINED_FUNCTION_6_19();
        OUTLINED_FUNCTION_213_3();
        sub_221B229DC(v48, v49, v50);
        sub_2219A1D20(0, &qword_27CFBAF28, 0x277CCA9B8);
        v51 = OUTLINED_FUNCTION_164_1();
        sub_221AEE828(v51);
        v57 = OUTLINED_FUNCTION_18_11();
        sub_221B22C2C(v57, v58);
        OUTLINED_FUNCTION_2_32();
        sub_221B22C2C(1, v59);
      }

      v60 = type metadata accessor for AppIntentsProtocol.PerformAction.ChoiceResponse(0);
      OUTLINED_FUNCTION_233_1(v60);
      sub_2219A1CC8(&qword_221BDAE20, &qword_27CFBA448, &qword_221BE0AA8);
    }
  }

  OUTLINED_FUNCTION_177_3();
  OUTLINED_FUNCTION_53_5();
}

void sub_221B014B0(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA448, &qword_221BE0AA8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18[-v6];
  v8 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = a2;
  sub_221AE8904(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  sub_221BCCB58();
  v11 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse(0) + 24);
  sub_2219A1CC8(a1 + v11, &qword_27CFB9988, &qword_221BDAE20);
  sub_221B229DC(v10, a1 + v11, type metadata accessor for AppIntentsProtobuf_UUID);
  __swift_storeEnumTagSinglePayload(a1 + v11, 0, 1, v8);
  v12 = a2 + *(type metadata accessor for AppIntentsProtocol.PerformAction.ChoiceResponse(0) + 20);
  v13 = *v12;
  if (*(v12 + 8) == 1)
  {
    v14 = type metadata accessor for AppIntentsProtobuf_Error(0);
    MEMORY[0x28223BE20](v14);
    *&v18[-16] = v13;
    sub_221AE8904(&qword_27CFB97C0, type metadata accessor for AppIntentsProtobuf_Error, &unk_221BD9C18);
    v15 = v13;
    sub_221BCCB58();
    sub_22198EA78(v13, 1);
    if (!v2)
    {
      v16 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse.OneOf_Response(0);
      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(v7, 0, 1, v16);
      sub_221B22A38(v7, a1, &qword_27CFBA448, &qword_221BE0AA8);
    }
  }

  else
  {
    sub_2219A1CC8(a1, &qword_27CFBA448, &qword_221BE0AA8);
    *a1 = v13;
    v17 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse.OneOf_Response(0);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(a1, 0, 1, v17);
  }
}

void sub_221B01874()
{
  OUTLINED_FUNCTION_55_4();
  v6 = OUTLINED_FUNCTION_185_2(v5);
  v7 = OUTLINED_FUNCTION_8_1(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_30_8();
  v8 = OUTLINED_FUNCTION_133_3();
  v9 = type metadata accessor for AppIntentsProtobuf_Value(v8);
  v10 = OUTLINED_FUNCTION_8_1(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_30_8();
  OUTLINED_FUNCTION_181_1(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA468, &qword_221BE0AC0);
  v13 = OUTLINED_FUNCTION_8_1(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_51_4();
  v61 = v14;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_132_2();
  v62 = v16;
  v17 = OUTLINED_FUNCTION_131_3();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
  OUTLINED_FUNCTION_8_1(v19);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v20);
  v21 = OUTLINED_FUNCTION_79_2();
  type metadata accessor for AppIntentsProtobuf_UUID(v21);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_45_9();
  v23 = sub_221BCC558();
  OUTLINED_FUNCTION_0_2();
  v63 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_16_12();
  v26 = type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse(0);
  OUTLINED_FUNCTION_198_2(v26);
  OUTLINED_FUNCTION_237_1();
  sub_2219A02E8(v27, v28, v29, v30);
  OUTLINED_FUNCTION_20_8(v0);
  if (v31)
  {
    *v4 = 0;
    v4[1] = 0;
    sub_221BCC8C8();
    OUTLINED_FUNCTION_20_8(v0);
    if (!v31)
    {
      sub_2219A1CC8(v0, &qword_27CFB9988, &qword_221BDAE20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_20();
    sub_221B229DC(v0, v4, v32);
  }

  v33 = OUTLINED_FUNCTION_236_0();
  sub_221AE9E30(v33);
  if (v1)
  {
    OUTLINED_FUNCTION_12_10();
    sub_221B22C2C(v2, v34);
    OUTLINED_FUNCTION_0_43();
    sub_221B22C2C(v4, v35);
  }

  else
  {
    OUTLINED_FUNCTION_0_43();
    sub_221B22C2C(v4, v36);
    (*(v63 + 32))(v64, v3, v23);
    sub_2219A02E8(v2, v62, &qword_27CFBA468, &qword_221BE0AC0);
    type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse.OneOf_Response(0);
    OUTLINED_FUNCTION_39_8(v62);
    if (v31)
    {
      v37 = type metadata accessor for AppIntentsProtocol.PerformAction.NeedsValueResponse(0);
      sub_221A00FEC(v37, v38, v39);
      OUTLINED_FUNCTION_15_0();
      v40 = swift_allocError();
      OUTLINED_FUNCTION_117_5(v40, v41);
      *(v42 + 16) = 0x8000000221BF0740;
      *(v42 + 24) = 0;
      *(v42 + 32) = 1;
      swift_willThrow();
      OUTLINED_FUNCTION_12_10();
      sub_221B22C2C(v2, v52);
      sub_2219A1CC8(v62, &qword_27CFBA468, &qword_221BE0AC0);
      (*(v63 + 8))(v64, v23);
    }

    else
    {
      sub_2219A02E8(v62, v61, &qword_27CFBA468, &qword_221BE0AC0);
      OUTLINED_FUNCTION_70();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v44 = EnumCaseMultiPayload;
      if (EnumCaseMultiPayload == 1)
      {
        OUTLINED_FUNCTION_7_16();
        OUTLINED_FUNCTION_244_2();
        sub_221B229DC(v49, v50, v51);
        sub_221B14BC4(*v61, v61[1], &qword_27CFBB680, 0x277D23958);
        v54 = v58;
        OUTLINED_FUNCTION_12_10();
        sub_221B22C2C(v2, v59);
        OUTLINED_FUNCTION_4_20();
        v57 = v61;
      }

      else
      {
        OUTLINED_FUNCTION_6_19();
        OUTLINED_FUNCTION_213_3();
        sub_221B229DC(v45, v46, v47);
        sub_2219A1D20(0, &qword_27CFBAF28, 0x277CCA9B8);
        v48 = OUTLINED_FUNCTION_164_1();
        sub_221AEE828(v48);
        v54 = v53;
        OUTLINED_FUNCTION_12_10();
        sub_221B22C2C(v2, v55);
        OUTLINED_FUNCTION_2_32();
        v57 = &qword_27CFB9988;
      }

      sub_221B22C2C(v57, v56);
      v60 = v64 + *(type metadata accessor for AppIntentsProtocol.PerformAction.NeedsValueResponse(0) + 20);
      *v60 = v54;
      *(v60 + 8) = v44 != 1;
      sub_2219A1CC8(v62, &qword_27CFBA468, &qword_221BE0AC0);
    }
  }

  OUTLINED_FUNCTION_177_3();
  OUTLINED_FUNCTION_53_5();
}

void sub_221B01D20(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA468, &qword_221BE0AC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v23[-v9];
  v11 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = a2;
  sub_221AE8904(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  sub_221BCCB58();
  v14 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse(0) + 24);
  sub_2219A1CC8(a1 + v14, &qword_27CFB9988, &qword_221BDAE20);
  sub_221B229DC(v13, a1 + v14, type metadata accessor for AppIntentsProtobuf_UUID);
  __swift_storeEnumTagSinglePayload(a1 + v14, 0, 1, v11);
  v15 = a2 + *(type metadata accessor for AppIntentsProtocol.PerformAction.NeedsValueResponse(0) + 20);
  v16 = *v15;
  if (*(v15 + 8))
  {
    v17 = type metadata accessor for AppIntentsProtobuf_Error(0);
    MEMORY[0x28223BE20](v17);
    *&v23[-16] = v16;
    sub_221AE8904(&qword_27CFB97C0, type metadata accessor for AppIntentsProtobuf_Error, &unk_221BD9C18);
    v18 = v16;
    sub_221BCCB58();

    if (v2)
    {
      return;
    }

    v19 = type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse.OneOf_Response(0);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v19);
    v10 = v7;
  }

  else
  {
    v20 = type metadata accessor for AppIntentsProtobuf_Value(0);
    MEMORY[0x28223BE20](v20);
    *&v23[-16] = v16;
    sub_221AE8904(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value, &unk_221BD8F70);
    v21 = v16;
    sub_221BCCB58();

    if (v2)
    {
      return;
    }

    v22 = type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse.OneOf_Response(0);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v22);
  }

  sub_221B22A38(v10, a1, &qword_27CFBA468, &qword_221BE0AC0);
}

void sub_221B02198()
{
  OUTLINED_FUNCTION_55_4();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  OUTLINED_FUNCTION_8_1(v5);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_156();
  v7 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_57_7();
  sub_221BCC558();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_16_12();
  v10 = type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse(0);
  OUTLINED_FUNCTION_250_2(*(v10 + 24));
  v11 = OUTLINED_FUNCTION_141_3();
  OUTLINED_FUNCTION_49_4(v11, v12, v7);
  if (v13)
  {
    *v1 = 0;
    v1[1] = 0;
    sub_221BCC8C8();
    v14 = OUTLINED_FUNCTION_141_3();
    OUTLINED_FUNCTION_49_4(v14, v15, v7);
    if (!v13)
    {
      sub_2219A1CC8(v2, &qword_27CFB9988, &qword_221BDAE20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_20();
    v16 = OUTLINED_FUNCTION_151_3();
    sub_221B229DC(v16, v17, v18);
  }

  sub_221AE9E30(v1);
  OUTLINED_FUNCTION_12_10();
  sub_221B22C2C(v4, v19);
  OUTLINED_FUNCTION_0_43();
  sub_221B22C2C(v1, v20);
  if (!v0)
  {
    v21 = OUTLINED_FUNCTION_232_1();
    v22(v21);
  }

  OUTLINED_FUNCTION_180_2();
  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221B02354(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = a2;
  sub_221AE8904(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  sub_221BCCB58();
  v7 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse(0) + 24);
  sub_2219A1CC8(a1 + v7, &qword_27CFB9988, &qword_221BDAE20);
  sub_221B229DC(v6, a1 + v7, type metadata accessor for AppIntentsProtobuf_UUID);
  return __swift_storeEnumTagSinglePayload(a1 + v7, 0, 1, v4);
}

void sub_221B02554()
{
  OUTLINED_FUNCTION_55_4();
  v526 = v0;
  v3 = v2;
  v498 = v4;
  v484 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity(0);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_30_8();
  *&v494 = v6;
  v7 = OUTLINED_FUNCTION_133_3();
  v483 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities(v7);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_30_8();
  *&v493 = v9;
  v10 = OUTLINED_FUNCTION_133_3();
  v491 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString(v10);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_30_8();
  *&v492 = v12;
  v13 = OUTLINED_FUNCTION_133_3();
  v14 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.SortingOptions(v13);
  v15 = OUTLINED_FUNCTION_18_4(v14);
  v477 = v16;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_51_4();
  v488 = v17;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_132_2();
  *&v496 = v19;
  v20 = OUTLINED_FUNCTION_133_3();
  v21 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery(v20);
  v22 = OUTLINED_FUNCTION_8_1(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_30_8();
  v475 = v23;
  v24 = OUTLINED_FUNCTION_133_3();
  v487 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties(v24);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_30_8();
  v486 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  OUTLINED_FUNCTION_8_1(v27);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_104_2();
  v476 = v29;
  v30 = OUTLINED_FUNCTION_133_3();
  v474 = type metadata accessor for AppIntentsProtobuf_Value(v30);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_30_8();
  v464 = v32;
  v33 = OUTLINED_FUNCTION_133_3();
  v490 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue(v33);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_30_8();
  v497 = v35;
  v36 = OUTLINED_FUNCTION_133_3();
  v37 = type metadata accessor for AppIntentsProtobuf_EntityIdentifier(v36);
  v38 = OUTLINED_FUNCTION_18_4(v37);
  v485 = v39;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_4_0();
  v42 = (v41 - v40);
  v43 = OUTLINED_FUNCTION_149_2();
  v480 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers(v43);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_30_8();
  *&v495 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  v47 = OUTLINED_FUNCTION_8_1(v46);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_51_4();
  v473 = v48;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_91_6();
  v472 = v50;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_91_6();
  v463 = v52;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_91_6();
  v462 = v54;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_91_6();
  v461 = v56;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_91_6();
  v482 = v58;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_132_2();
  v471 = v60;
  v61 = OUTLINED_FUNCTION_133_3();
  v499 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(v61);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_51_4();
  v460 = v63;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_91_6();
  v459 = v65;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_91_6();
  v458 = v67;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_91_6();
  v457 = v69;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_91_6();
  v456 = v71;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_91_6();
  v481 = v73;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_132_2();
  v455 = v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8A0, &qword_221BE0B10);
  v77 = OUTLINED_FUNCTION_8_1(v76);
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_51_4();
  v470 = v78;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_91_6();
  v469 = v80;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_91_6();
  v468 = v82;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_91_6();
  v467 = v84;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_91_6();
  v466 = v86;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_91_6();
  v479 = v88;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_132_2();
  v465 = v90;
  v91 = OUTLINED_FUNCTION_133_3();
  v500 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.Options(v91);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_51_4();
  v454 = v93;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_91_6();
  v453 = v95;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_91_6();
  v452 = v97;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_91_6();
  v451 = v99;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_91_6();
  v450 = v101;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_91_6();
  v478 = v103;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_201_2();
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities(0);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_30_8();
  v489 = v106;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA4C8, &qword_221BE0B08);
  v108 = OUTLINED_FUNCTION_8_1(v107);
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_9_5();
  v111 = v109 - v110;
  MEMORY[0x28223BE20](v112);
  v114 = &v448 - v113;
  v115 = OUTLINED_FUNCTION_151_3();
  sub_2219A02E8(v115, v116, &qword_27CFBA4C8, &qword_221BE0B08);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.OneOf_Query(0);
  OUTLINED_FUNCTION_43_9(v114);
  if (v117)
  {
    OUTLINED_FUNCTION_153_3();
    sub_221A00FEC(v118, v119, v120);
    OUTLINED_FUNCTION_15_0();
    swift_allocError();
    OUTLINED_FUNCTION_188_3(v121, &type metadata for AppIntentsProtocol.PerformQuery.Request);
    *(v122 + 16) = v111;
    *(v122 + 24) = 0;
    *(v122 + 32) = 1;
    swift_willThrow();
    v123 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest;
LABEL_4:
    v124 = v123;
    v125 = v3;
LABEL_22:
    sub_221B22C2C(v125, v124);
LABEL_23:
    sub_2219A1CC8(v114, &qword_27CFBA4C8, &qword_221BE0B08);
    OUTLINED_FUNCTION_175_1();
    OUTLINED_FUNCTION_53_5();
  }

  else
  {
    v501 = v3;
    sub_2219A02E8(v114, v111, &qword_27CFBA4C8, &qword_221BE0B08);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v151 = OUTLINED_FUNCTION_97_5();
        v137 = v492;
        sub_221B229DC(v151, v492, v152);
        v153 = OUTLINED_FUNCTION_209_1();
        sub_221B056C4(v154, v153);
        if (v0)
        {
          OUTLINED_FUNCTION_3_24();
          sub_221B22C2C(v501, v155);
          v142 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString;
          goto LABEL_21;
        }

        v495 = v518;
        v496 = v517;
        LODWORD(v494) = v519;
        v193 = v137[1];
        v194 = OUTLINED_FUNCTION_191_3(*v137);
        Request = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest(v194);
        v196 = v501;
        v197 = v468;
        sub_2219A02E8(v501 + *(Request + 24), v468, &unk_27CFBB8A0, &qword_221BE0B10);
        v198 = OUTLINED_FUNCTION_226_1();
        v199 = v500;
        OUTLINED_FUNCTION_72_6(v198, v200);
        v449 = v114;
        v497 = v193;
        if (v117)
        {

          v323 = v452;
          sub_221BCC8C8();
          OUTLINED_FUNCTION_196_1(*(v199 + 20));
          OUTLINED_FUNCTION_216_2(*(v199 + 24));
          OUTLINED_FUNCTION_48_8(v197);
          v326 = v463;
          if (!v117)
          {
            sub_2219A1CC8(v197, &unk_27CFBB8A0, &qword_221BE0B10);
          }
        }

        else
        {
          OUTLINED_FUNCTION_11_15();
          v323 = v452;
          sub_221B229DC(v197, v452, v324);

          v326 = v463;
        }

        LODWORD(v493) = sub_221B06378(v323, v325);
        v328 = v327;
        v500 = v329;
        OUTLINED_FUNCTION_10_15();
        sub_221B22C2C(v323, v330);
        sub_2219A02E8(v196 + *(Request + 28), v326, &unk_27CFBB600, &qword_221BE44B0);
        v331 = OUTLINED_FUNCTION_276();
        v332 = v499;
        OUTLINED_FUNCTION_49_4(v331, v333, v499);
        if (v117)
        {
          v334 = v458;
          sub_221BCC8C8();
          OUTLINED_FUNCTION_194_2(v332[5]);
          v335 = v334 + v332[6];
          *v335 = 0;
          *(v335 + 4) = 1;
          OUTLINED_FUNCTION_215_1(v332[7]);
          OUTLINED_FUNCTION_43_9(v326);
          if (!v117)
          {
            sub_2219A1CC8(v326, &unk_27CFBB600, &qword_221BE44B0);
          }
        }

        else
        {
          OUTLINED_FUNCTION_1_37();
          sub_221B229DC(v326, v458, v336);
        }

        sub_221AE9D08();
        OUTLINED_FUNCTION_3_24();
        sub_221B22C2C(v196, v337);
        v338 = v503[0];
        v339 = v503[1];
        v340 = BYTE1(v503[1]);
        v341 = v492;
        v342 = (v492 + *(v491 + 24));
        v343 = *v342;
        v344 = v342[1];

        sub_221B22C2C(v341, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString);
        v345 = v498;
        v498[10] = v343;
        v345[11] = v344;
        v346 = v495;
        *(v345 + 6) = v496;
        *(v345 + 7) = v346;
        *(v345 + 128) = v494;
        *(v345 + 209) = 3;
        v347 = v497;
        *v345 = v526;
        v345[1] = v347;
        *(v345 + 1) = xmmword_221BD0800;
        *(v345 + 32) = v493 & 1;
        v348 = v500;
        v345[5] = v328;
        v345[6] = v348;
        *(v345 + 7) = v338;
        *(v345 + 72) = v339;
        *(v345 + 73) = v340;
        goto LABEL_93;
      case 2:
        v143 = OUTLINED_FUNCTION_97_5();
        v3 = v486;
        sub_221B229DC(v143, v486, v144);
        sub_221B05288(v515, v3 + v487[5]);
        if (v0)
        {
          OUTLINED_FUNCTION_3_24();
          sub_221B22C2C(v501, v145);
          v123 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties;
          goto LABEL_4;
        }

        v174 = v3[1];
        *&v493 = *v3;
        v527 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest(0);
        v175 = OUTLINED_FUNCTION_207_3(*(v527 + 24));
        v176 = v467;
        sub_2219A02E8(v175, v467, v177, v178);
        v179 = OUTLINED_FUNCTION_226_1();
        v180 = v500;
        OUTLINED_FUNCTION_72_6(v179, v181);
        *&v495 = v174;
        if (v117)
        {

          v285 = v451;
          sub_221BCC8C8();
          OUTLINED_FUNCTION_229_1(*(v180 + 20));
          *(v285 + *(v180 + 24)) = 2;
          OUTLINED_FUNCTION_48_8(v176);
          v288 = v499;
          v289 = v462;
          if (!v117)
          {
            sub_2219A1CC8(v176, &unk_27CFBB8A0, &qword_221BE0B10);
          }
        }

        else
        {
          OUTLINED_FUNCTION_11_15();
          v285 = v451;
          sub_221B229DC(v176, v451, v286);

          v288 = v499;
          v289 = v462;
        }

        LODWORD(v491) = sub_221B06378(v285, v287);
        *&v492 = v290;
        *&v494 = v291;
        OUTLINED_FUNCTION_10_15();
        sub_221B22C2C(v285, v292);
        v293 = OUTLINED_FUNCTION_207_3(*(v527 + 28));
        sub_2219A02E8(v293, v289, v294, v295);
        OUTLINED_FUNCTION_48_8(v289);
        if (v117)
        {
          v296 = v457;
          sub_221BCC8C8();
          OUTLINED_FUNCTION_229_1(v288[5]);
          v297 = v296 + v288[6];
          *v297 = 0;
          *(v297 + 4) = 1;
          *(v296 + v288[7]) = 2;
          OUTLINED_FUNCTION_48_8(v289);
          v299 = v488;
          if (!v117)
          {
            sub_2219A1CC8(v289, &unk_27CFBB600, &qword_221BE44B0);
          }
        }

        else
        {
          OUTLINED_FUNCTION_1_37();
          sub_221B229DC(v289, v457, v298);
          v299 = v488;
        }

        sub_221AE9D08();
        v300 = *(&v504 + 1);
        v490 = v504;
        LODWORD(v489) = v505;
        LODWORD(v485) = v506;
        v301 = v475;
        sub_221A8A240();
        sub_221B06438(v301, v503);
        v484 = v300;
        v393 = v3 + v487[9];
        v394 = *v393;
        v395 = v393[8];
        if (v395)
        {
          v394 = 0;
        }

        *(&v503[4] + 1) = v394;
        LOBYTE(v503[5]) = v395;
        v396 = *(v3 + v487[6]);
        v397 = *(v396 + 16);
        if (!v397)
        {
          OUTLINED_FUNCTION_3_24();
          sub_221B22C2C(v501, v419);
          OUTLINED_FUNCTION_58_8();
          sub_221B22C2C(v3, v420);
          v399 = MEMORY[0x277D84F90];
LABEL_125:
          v439 = v492;
          v440 = v491;
          v441 = v490;
          v442 = v489;
          v443 = v485;
          *(&v503[5] + 1) = v399;
          v503[6] = v515[0];
          v503[7] = v515[1];
          LOBYTE(v503[8]) = v516;
          BYTE1(v503[8]) = 4;
          v444 = v498;
          v445 = v495;
          *v498 = v493;
          v444[1] = v445;
          *(v444 + 1) = xmmword_221BD0800;
          *(v444 + 32) = v440 & 1;
          v446 = v494;
          v444[5] = v439;
          v444[6] = v446;
          v447 = v484;
          v444[7] = v441;
          v444[8] = v447;
          *(v444 + 72) = v442;
          *(v444 + 73) = v443;
          memcpy(v444 + 10, v503, 0x82uLL);
          goto LABEL_23;
        }

        v497 = 0;
        v502 = MEMORY[0x277D84F90];
        v499 = v397;
        sub_2219A31CC(0, v397, 0);
        v398 = 0;
        v399 = v502;
        OUTLINED_FUNCTION_176_2();
        v530 = v396 + v400;
        v449 = v114;
        v500 = v396;
        while (v398 < *(v396 + 16))
        {
          v401 = v496;
          sub_221B22BD0(v530 + *(v477 + 72) * v398, v496, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.SortingOptions);
          sub_221B22BD0(v401, v299, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.SortingOptions);
          v402 = *(v299 + 32);
          if (v402 == 255)
          {
            v421 = v114;

            v427 = sub_2219ACA1C(v515);
            v430 = 0xEE00746567726174;
            v431 = 0x20676E697373694DLL;
            v432 = &type metadata for PropertyQuery.SortingOption;
            goto LABEL_124;
          }

          v403 = *(v299 + 16);
          if (*(v299 + 8) != 1)
          {
            goto LABEL_122;
          }

          if (*v299 == 1)
          {
            v404 = 0;
          }

          else
          {
            if (*v299 != 2)
            {
LABEL_122:
              v421 = v114;
              v422 = OUTLINED_FUNCTION_120();
              sub_2219980F0(v422, v423, v424);

              sub_2219ACA1C(v515);
              v425 = OUTLINED_FUNCTION_120();
              v427 = sub_221AE00C4(v425, v426, v402);
              v430 = 0x8000000221BF0780;
              v431 = 0xD000000000000016;
              v432 = &type metadata for PropertyQuery.SortOrder;
LABEL_124:
              sub_221A00FEC(v427, v428, v429);
              OUTLINED_FUNCTION_15_0();
              v433 = swift_allocError();
              *v434 = v432;
              v434[1] = v431;
              v434[2] = v430;
              v434[3] = 0;
              OUTLINED_FUNCTION_193_3(v433, v434);

              OUTLINED_FUNCTION_225_1();
              OUTLINED_FUNCTION_3_24();
              sub_221B22C2C(v501, v435);
              sub_221B22C2C(v488, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.SortingOptions);
              sub_221B22C2C(v496, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.SortingOptions);
              OUTLINED_FUNCTION_58_8();
              sub_221B22C2C(v486, v436);

              sub_2219ACB30(v503);
              v114 = v421;
              goto LABEL_23;
            }

            v404 = 1;
          }

          if (v402)
          {
            v405 = *(v299 + 24);
          }

          else
          {
            v405 = 0;
          }

          v406 = OUTLINED_FUNCTION_120();
          sub_2219980F0(v406, v407, v408);
          sub_221B22C2C(v299, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.SortingOptions);
          sub_221B22C2C(v496, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.SortingOptions);
          v502 = v399;
          v410 = *(v399 + 16);
          v409 = *(v399 + 24);
          if (v410 >= v409 >> 1)
          {
            v412 = OUTLINED_FUNCTION_90_3(v409);
            sub_2219A31CC(v412, v410 + 1, 1);
            v399 = v502;
          }

          v398 = (v398 + 1);
          *(v399 + 16) = v410 + 1;
          v411 = v399 + 32 * v410;
          *(v411 + 32) = v404;
          *(v411 + 40) = v403;
          *(v411 + 48) = v405;
          *(v411 + 56) = v402 & 1;
          v396 = v500;
          v114 = v449;
          v299 = v488;
          if (v499 == v398)
          {
            OUTLINED_FUNCTION_3_24();
            sub_221B22C2C(v501, v437);
            OUTLINED_FUNCTION_58_8();
            sub_221B22C2C(v486, v438);
            goto LABEL_125;
          }
        }

        __break(1u);
        break;
      case 3:
        v146 = OUTLINED_FUNCTION_97_5();
        v137 = v489;
        sub_221B229DC(v146, v489, v147);
        v148 = OUTLINED_FUNCTION_209_1();
        sub_221B045D4(v149, v148);
        if (v0)
        {
          OUTLINED_FUNCTION_3_24();
          sub_221B22C2C(v501, v150);
          v142 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities;
          goto LABEL_21;
        }

        v495 = v508;
        v496 = v507;
        LODWORD(v494) = v509;
        v182 = *v137;
        v183 = v137[1];
        v184 = OUTLINED_FUNCTION_191_3(v182);
        v185 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest(v184);
        v186 = OUTLINED_FUNCTION_207_3(*(v185 + 24));
        v187 = v465;
        sub_2219A02E8(v186, v465, v188, v189);
        v190 = OUTLINED_FUNCTION_276();
        OUTLINED_FUNCTION_44_5(v190, v191);
        v449 = v114;
        v497 = 0;
        if (v117)
        {

          sub_221BCC8C8();
          OUTLINED_FUNCTION_100_4();
          OUTLINED_FUNCTION_195_3(v192);
          OUTLINED_FUNCTION_13_8(v187);
          if (!v117)
          {
            sub_2219A1CC8(v187, &unk_27CFBB8A0, &qword_221BE0B10);
          }
        }

        else
        {
          OUTLINED_FUNCTION_11_15();
          sub_221B229DC(v187, v1, v302);
        }

        v304 = sub_221B06378(v1, v303);
        v306 = v305;
        v308 = v307;
        OUTLINED_FUNCTION_10_15();
        sub_221B22C2C(v1, v309);
        v310 = OUTLINED_FUNCTION_207_3(*(v185 + 28));
        v311 = v471;
        sub_2219A02E8(v310, v471, v312, v313);
        v314 = OUTLINED_FUNCTION_276();
        v315 = v499;
        OUTLINED_FUNCTION_42_9(v314, v316);
        if (v117)
        {
          v317 = v455;
          sub_221BCC8C8();
          v318 = (v317 + v315[5]);
          *v318 = 0;
          v318[1] = 0;
          OUTLINED_FUNCTION_212_2(v315[6]);
          *(v319 + 4) = 1;
          OUTLINED_FUNCTION_195_3(v315[7]);
          OUTLINED_FUNCTION_25_10(v311);
          if (!v117)
          {
            sub_2219A1CC8(v311, &unk_27CFBB600, &qword_221BE44B0);
          }
        }

        else
        {
          OUTLINED_FUNCTION_1_37();
          sub_221B229DC(v311, v455, v320);
        }

        sub_221AE9D08();
        OUTLINED_FUNCTION_3_24();
        sub_221B22C2C(v501, v321);
        sub_221B22C2C(v489, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities);
        OUTLINED_FUNCTION_203_1();
        v322 = v495;
        *(v284 + 80) = v496;
        *(v284 + 96) = v322;
        *(v284 + 112) = v494;
        *(v284 + 209) = 0;
        *v284 = v0;
        *(v284 + 8) = v183;
        *(v284 + 16) = xmmword_221BD0800;
        *(v284 + 32) = v304 & 1;
        *(v284 + 40) = v306;
        *(v284 + 48) = v308;
        goto LABEL_92;
      case 4:
        v136 = OUTLINED_FUNCTION_97_5();
        v137 = v493;
        sub_221B229DC(v136, v493, v138);
        v139 = OUTLINED_FUNCTION_209_1();
        sub_221B05B00(v140, v139);
        if (v0)
        {
          OUTLINED_FUNCTION_3_24();
          sub_221B22C2C(v501, v141);
          v142 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities;
          goto LABEL_21;
        }

        v497 = 0;
        v494 = v521;
        v495 = v520;
        LODWORD(v492) = v522;
        v166 = v137[1];
        v167 = OUTLINED_FUNCTION_191_3(*v137);
        v168 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest(v167);
        v169 = v501;
        v170 = v469;
        sub_2219A02E8(v501 + *(v168 + 24), v469, &unk_27CFBB8A0, &qword_221BE0B10);
        v171 = OUTLINED_FUNCTION_56_6();
        v172 = v500;
        OUTLINED_FUNCTION_73_6(v171, v173);
        v449 = v114;
        *&v496 = v166;
        if (v117)
        {

          v265 = v453;
          sub_221BCC8C8();
          OUTLINED_FUNCTION_194_2(*(v172 + 20));
          OUTLINED_FUNCTION_215_1(*(v172 + 24));
          OUTLINED_FUNCTION_20_8(v170);
          if (!v117)
          {
            sub_2219A1CC8(v170, &unk_27CFBB8A0, &qword_221BE0B10);
          }
        }

        else
        {
          OUTLINED_FUNCTION_11_15();
          v265 = v453;
          sub_221B229DC(v170, v453, v266);
        }

        v268 = sub_221B06378(v265, v267);
        v270 = v269;
        v272 = v271;
        OUTLINED_FUNCTION_10_15();
        sub_221B22C2C(v265, v273);
        v274 = v472;
        sub_2219A02E8(v169 + *(v168 + 28), v472, &unk_27CFBB600, &qword_221BE44B0);
        v275 = OUTLINED_FUNCTION_276();
        OUTLINED_FUNCTION_42_9(v275, v276);
        if (v117)
        {
          sub_221BCC8C8();
          OUTLINED_FUNCTION_37_5();
          *(v277 + 4) = 1;
          OUTLINED_FUNCTION_115_3();
          OUTLINED_FUNCTION_25_10(v274);
          if (!v117)
          {
            sub_2219A1CC8(v274, &unk_27CFBB600, &qword_221BE44B0);
          }
        }

        else
        {
          OUTLINED_FUNCTION_1_37();
          sub_221B229DC(v274, v459, v278);
        }

        sub_221AE9D08();
        OUTLINED_FUNCTION_3_24();
        sub_221B22C2C(v169, v279);
        sub_221B22C2C(v493, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities);
        OUTLINED_FUNCTION_203_1();
        v280 = v494;
        *(v281 + 80) = v495;
        *(v281 + 96) = v280;
        *(v281 + 112) = v492;
        OUTLINED_FUNCTION_219_3();
        *(v284 + 16) = xmmword_221BD0800;
        *(v284 + 32) = v268 & 1;
        *(v284 + 40) = v270;
        goto LABEL_91;
      case 5:
        v156 = OUTLINED_FUNCTION_97_5();
        v137 = v494;
        sub_221B229DC(v156, v494, v157);
        v158 = OUTLINED_FUNCTION_209_1();
        sub_221B05F3C(v159, v158);
        if (v0)
        {
          OUTLINED_FUNCTION_3_24();
          sub_221B22C2C(v501, v160);
          v142 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity;
          goto LABEL_21;
        }

        v497 = 0;
        v493 = v524;
        v495 = v523;
        LODWORD(v492) = v525;
        v201 = v137[1];
        v202 = OUTLINED_FUNCTION_191_3(*v137);
        v203 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest(v202);
        v204 = v501;
        v205 = v470;
        sub_2219A02E8(v501 + *(v203 + 24), v470, &unk_27CFBB8A0, &qword_221BE0B10);
        v206 = OUTLINED_FUNCTION_9_1();
        v207 = v500;
        OUTLINED_FUNCTION_44_5(v206, v208);
        v449 = v114;
        *&v496 = v201;
        if (v117)
        {

          v349 = v454;
          sub_221BCC8C8();
          OUTLINED_FUNCTION_194_2(*(v207 + 20));
          OUTLINED_FUNCTION_215_1(*(v207 + 24));
          OUTLINED_FUNCTION_13_8(v205);
          if (!v117)
          {
            sub_2219A1CC8(v205, &unk_27CFBB8A0, &qword_221BE0B10);
          }
        }

        else
        {
          OUTLINED_FUNCTION_11_15();
          v349 = v454;
          sub_221B229DC(v205, v454, v350);
        }

        v352 = sub_221B06378(v349, v351);
        v354 = v353;
        v272 = v355;
        OUTLINED_FUNCTION_10_15();
        sub_221B22C2C(v349, v356);
        v357 = v473;
        sub_2219A02E8(v204 + *(v203 + 28), v473, &unk_27CFBB600, &qword_221BE44B0);
        v358 = OUTLINED_FUNCTION_276();
        OUTLINED_FUNCTION_42_9(v358, v359);
        if (v117)
        {
          sub_221BCC8C8();
          OUTLINED_FUNCTION_37_5();
          *(v360 + 4) = 1;
          OUTLINED_FUNCTION_115_3();
          OUTLINED_FUNCTION_25_10(v357);
          if (!v117)
          {
            sub_2219A1CC8(v357, &unk_27CFBB600, &qword_221BE44B0);
          }
        }

        else
        {
          OUTLINED_FUNCTION_1_37();
          sub_221B229DC(v357, v460, v361);
        }

        sub_221AE9D08();
        OUTLINED_FUNCTION_3_24();
        sub_221B22C2C(v204, v362);
        sub_221B22C2C(v494, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity);
        OUTLINED_FUNCTION_203_1();
        v363 = v493;
        *(v364 + 80) = v495;
        *(v364 + 96) = v363;
        *(v364 + 112) = v492;
        OUTLINED_FUNCTION_219_3();
        *(v284 + 16) = xmmword_221BD0800;
        *(v284 + 32) = v352 & 1;
        *(v284 + 40) = v354;
LABEL_91:
        *(v284 + 48) = v272;
LABEL_92:
        *(v284 + 56) = v503[0];
        *(v284 + 72) = v282;
        *(v284 + 73) = v283;
LABEL_93:
        v114 = v449;
        goto LABEL_23;
      case 6:
        v161 = OUTLINED_FUNCTION_97_5();
        v137 = v497;
        sub_221B229DC(v161, v497, v162);
        v163 = OUTLINED_FUNCTION_209_1();
        sub_221B04E4C(v164, v163);
        if (!v0)
        {
          v495 = v513;
          v496 = v512;
          LODWORD(v494) = v514;
          v209 = *v137;
          v210 = v137[1];
          *&v493 = v209;
          v211 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest(0);
          v212 = v501;
          v213 = v466;
          sub_2219A02E8(v501 + *(v211 + 24), v466, &unk_27CFBB8A0, &qword_221BE0B10);
          v214 = OUTLINED_FUNCTION_226_1();
          v215 = v500;
          OUTLINED_FUNCTION_44_5(v214, v216);
          v449 = v114;
          v528 = v210;
          if (v117)
          {

            v365 = v450;
            sub_221BCC8C8();
            OUTLINED_FUNCTION_196_1(*(v215 + 20));
            OUTLINED_FUNCTION_216_2(*(v215 + 24));
            OUTLINED_FUNCTION_13_8(v213);
            v368 = v461;
            v217 = v213;
            v369 = v456;
            if (!v117)
            {
              sub_2219A1CC8(v217, &unk_27CFBB8A0, &qword_221BE0B10);
            }
          }

          else
          {
            OUTLINED_FUNCTION_11_15();
            v365 = v450;
            sub_221B229DC(v213, v450, v366);

            v368 = v461;
            v369 = v456;
          }

          LODWORD(v492) = sub_221B06378(v365, v367);
          v500 = v370;
          v372 = v371;
          OUTLINED_FUNCTION_10_15();
          sub_221B22C2C(v365, v373);
          sub_2219A02E8(v212 + *(v211 + 28), v368, &unk_27CFBB600, &qword_221BE44B0);
          v374 = OUTLINED_FUNCTION_141_3();
          v375 = v499;
          OUTLINED_FUNCTION_49_4(v374, v376, v499);
          v377 = v497;
          if (v117)
          {
            sub_221BCC8C8();
            v378 = (v369 + v375[5]);
            *v378 = 0;
            v378[1] = 0;
            v379 = v369 + v375[6];
            *v379 = 0;
            *(v379 + 4) = 1;
            *(v369 + v375[7]) = 2;
            v380 = OUTLINED_FUNCTION_141_3();
            OUTLINED_FUNCTION_49_4(v380, v381, v375);
            v383 = v464;
            if (!v117)
            {
              sub_2219A1CC8(v368, &unk_27CFBB600, &qword_221BE44B0);
            }
          }

          else
          {
            OUTLINED_FUNCTION_1_37();
            sub_221B229DC(v368, v369, v382);
            v383 = v464;
          }

          sub_221AE9D08();
          v384 = v503[0];
          v385 = v503[1];
          LODWORD(v499) = BYTE1(v503[1]);
          v386 = v377 + *(v490 + 28);
          v387 = v476;
          sub_2219A02E8(v386, v476, &unk_27CFBB660, &qword_221BE4610);
          v388 = OUTLINED_FUNCTION_56_6();
          OUTLINED_FUNCTION_72_6(v388, v389);
          if (v117)
          {
            *v383 = xmmword_221BD8630;
            sub_221BCC8C8();
            OUTLINED_FUNCTION_48_8(v387);
            if (!v117)
            {
              sub_2219A1CC8(v387, &unk_27CFBB660, &qword_221BE4610);
            }
          }

          else
          {
            OUTLINED_FUNCTION_7_16();
            v390 = OUTLINED_FUNCTION_169_2();
            sub_221B229DC(v390, v391, v392);
          }

          sub_221B14BC4(*v383, v383[1], &qword_27CFBB680, 0x277D23958);
          v414 = v413;
          OUTLINED_FUNCTION_3_24();
          sub_221B22C2C(v501, v415);
          OUTLINED_FUNCTION_152_4();
          OUTLINED_FUNCTION_4_20();
          sub_221B22C2C(v383, v416);
          v417 = v498;
          *v498 = v493;
          v417[1] = v528;
          *(v417 + 1) = xmmword_221BD0800;
          *(v417 + 32) = v492 & 1;
          v417[5] = v500;
          v417[6] = v372;
          *(v417 + 7) = v384;
          *(v417 + 72) = v385;
          *(v417 + 73) = v499;
          v417[10] = v414;
          v418 = v496;
          *(v417 + 13) = v495;
          *(v417 + 11) = v418;
          *(v417 + 120) = v494;
          *(v417 + 209) = 2;
          v114 = v449;
          goto LABEL_23;
        }

        OUTLINED_FUNCTION_3_24();
        sub_221B22C2C(v501, v165);
        v142 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue;
LABEL_21:
        v124 = v142;
        v125 = v137;
        goto LABEL_22;
      default:
        v449 = v114;
        v127 = OUTLINED_FUNCTION_97_5();
        v128 = v495;
        sub_221B229DC(v127, v495, v129);
        sub_221B04A10(v510, v128 + *(v480 + 24));
        if (v0)
        {

          v130 = v128[2];
          v132 = v500;
          v131 = v501;
          v133 = v499;
          if (*(v130 + 16))
          {
            v134 = (v130 + ((*(v485 + 80) + 32) & ~*(v485 + 80)));
            v135 = *v134;
            v490 = v134[1];

            v488 = 0;
            v489 = 0;
            LODWORD(v487) = 0;
          }

          else
          {
            v135 = 0;
            v488 = 0;
            v489 = 0;
            LODWORD(v487) = 0;
            v490 = 0xE000000000000000;
          }
        }

        else
        {
          v135 = v510[0];
          v489 = v510[2];
          v490 = v510[1];
          v488 = v510[3];
          LODWORD(v487) = v511;
          v132 = v500;
          v131 = v501;
          v133 = v499;
        }

        v218 = v128[1];
        v499 = *v128;
        v219 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest(0);
        v220 = v131 + *(v219 + 24);
        v221 = v479;
        sub_2219A02E8(v220, v479, &unk_27CFBB8A0, &qword_221BE0B10);
        OUTLINED_FUNCTION_145(v221);
        v500 = v135;
        if (v117)
        {

          v223 = v478;
          sub_221BCC8C8();
          OUTLINED_FUNCTION_194_2(*(v132 + 20));
          OUTLINED_FUNCTION_215_1(*(v132 + 24));
          OUTLINED_FUNCTION_145(v221);
          v222 = v221;
          v226 = v218;
          if (!v117)
          {
            sub_2219A1CC8(v222, &unk_27CFBB8A0, &qword_221BE0B10);
          }
        }

        else
        {
          OUTLINED_FUNCTION_11_15();
          v223 = v478;
          sub_221B229DC(v221, v478, v224);

          v226 = v218;
        }

        LODWORD(v493) = sub_221B06378(v223, v225);
        *&v496 = v227;
        *&v494 = v228;
        OUTLINED_FUNCTION_10_15();
        sub_221B22C2C(v223, v229);
        v230 = OUTLINED_FUNCTION_207_3(*(v219 + 28));
        v231 = v482;
        sub_2219A02E8(v230, v482, v232, v233);
        OUTLINED_FUNCTION_43_9(v231);
        if (v117)
        {
          v234 = v481;
          sub_221BCC8C8();
          v235 = (v234 + v133[5]);
          *v235 = 0;
          v235[1] = 0;
          OUTLINED_FUNCTION_212_2(v133[6]);
          *(v236 + 4) = 1;
          OUTLINED_FUNCTION_195_3(v133[7]);
          OUTLINED_FUNCTION_43_9(v231);
          if (!v117)
          {
            sub_2219A1CC8(v231, &unk_27CFBB600, &qword_221BE44B0);
          }
        }

        else
        {
          OUTLINED_FUNCTION_1_37();
          sub_221B229DC(v231, v481, v237);
        }

        sub_221AE9D08();
        v492 = v504;
        v238 = v505;
        LODWORD(v491) = v506;
        v239 = v128[2];
        v240 = *(v239 + 16);
        if (v240)
        {
          LODWORD(v484) = v505;
          v486 = v226;
          v497 = 0;
          v502 = MEMORY[0x277D84F90];
          sub_2219A3014(0, v240, 0);
          v241 = v502;
          OUTLINED_FUNCTION_176_2();
          v243 = v239 + v242;
          v529 = *(v244 + 72);
          do
          {
            v245 = OUTLINED_FUNCTION_109_3();
            sub_221B22BD0(v245, v42, v246);
            v247 = *v42;
            v248 = v42[1];
            v250 = v42[2];
            v249 = v42[3];
            objc_allocWithZone(MEMORY[0x277D23800]);

            v251 = sub_2219A0230(v247, v248, v250, v249);
            v252 = OUTLINED_FUNCTION_93_3();
            sub_221B22C2C(v252, v253);
            v502 = v241;
            v255 = *(v241 + 16);
            v254 = *(v241 + 24);
            if (v255 >= v254 >> 1)
            {
              v256 = OUTLINED_FUNCTION_90_3(v254);
              sub_2219A3014(v256, v255 + 1, 1);
              v241 = v502;
            }

            *(&v503[1] + 1) = sub_2219A1D20(0, &qword_27CFBB8B0, 0x277D23800);
            *&v503[2] = sub_2219A0334();
            *&v503[0] = v251;
            *(v241 + 16) = v255 + 1;
            sub_22198B358(v503, v241 + 40 * v255 + 32);
            v243 += v529;
            --v240;
          }

          while (v240);
          OUTLINED_FUNCTION_3_24();
          sub_221B22C2C(v501, v257);
          OUTLINED_FUNCTION_132_4();
          sub_221B22C2C(v495, v258);
          v226 = v486;
          v238 = v484;
        }

        else
        {
          OUTLINED_FUNCTION_3_24();
          sub_221B22C2C(v501, v259);
          OUTLINED_FUNCTION_132_4();
          sub_221B22C2C(v128, v260);
          v241 = MEMORY[0x277D84F90];
        }

        v261 = v498;
        *v498 = v499;
        v261[1] = v226;
        *(v261 + 1) = xmmword_221BD0800;
        *(v261 + 32) = v493 & 1;
        v262 = v494;
        v261[5] = v496;
        v261[6] = v262;
        *(v261 + 7) = v492;
        *(v261 + 72) = v238;
        *(v261 + 73) = v491;
        v263 = v500;
        v261[10] = v241;
        v261[11] = v263;
        v264 = v489;
        v261[12] = v490;
        v261[13] = v264;
        v261[14] = v488;
        *(v261 + 120) = v487;
        memcpy(v261 + 121, v503, 0x58uLL);
        *(v261 + 209) = 1;
        goto LABEL_93;
    }
  }
}

uint64_t sub_221B045D4@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v29 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8C0, &unk_221BE4FB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v28 - v4;
  v28 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  MEMORY[0x28223BE20](v28);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA570, &qword_221BE0BD8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities.OneOf_Target(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  sub_2219A02E8(a2, v10, &qword_27CFBA570, &qword_221BE0BD8);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_2219A1CC8(v10, &qword_27CFBA570, &qword_221BE0BD8);
LABEL_3:
    sub_221A00FEC(result, v18, v19);
    swift_allocError();
    *v20 = 0xD000000000000019;
    *(v20 + 8) = 0x8000000221BF07A0;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    *(v20 + 32) = 3;
    return swift_willThrow();
  }

  sub_221B229DC(v10, v16, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities.OneOf_Target);
  sub_221B22BD0(v16, v13, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities.OneOf_Target);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_221B22C2C(v13, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities.OneOf_Target);
    sub_221B166AC(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities.OneOf_Target, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities.OneOf_Target, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities.OneOf_Target);
    if (__swift_getEnumTagSinglePayload(v5, 1, v28) == 1)
    {
      sub_2219A1CC8(v5, &unk_27CFBB8C0, &unk_221BE4FB0);
      v21 = sub_221B16794(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities.OneOf_Target, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities.OneOf_Target);
      v23 = v22;
      result = sub_221B22C2C(v16, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities.OneOf_Target);
      if (!v23)
      {
        goto LABEL_3;
      }

      v24 = 0;
      v25 = 0;
      v26 = 2;
    }

    else
    {
      sub_221B22C2C(v16, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities.OneOf_Target);
      sub_221B229DC(v5, v7, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
      v21 = *v7;
      v23 = v7[1];
      v24 = v7[2];
      v25 = v7[3];

      result = sub_221B22C2C(v7, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
      v26 = 1;
    }
  }

  else
  {
    v21 = *v13;
    v23 = v13[1];
    result = sub_221B22C2C(v16, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities.OneOf_Target);
    v24 = 0;
    v25 = 0;
    v26 = 0;
  }

  v27 = v29;
  *v29 = v21;
  v27[1] = v23;
  v27[2] = v24;
  v27[3] = v25;
  *(v27 + 32) = v26;
  return result;
}

uint64_t sub_221B04A10@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v29 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8C0, &unk_221BE4FB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v28 - v4;
  v28 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  MEMORY[0x28223BE20](v28);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8D0, &unk_221BE4FC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers.OneOf_Target(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  sub_2219A02E8(a2, v10, &unk_27CFBB8D0, &unk_221BE4FC0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_2219A1CC8(v10, &unk_27CFBB8D0, &unk_221BE4FC0);
LABEL_3:
    sub_221A00FEC(result, v18, v19);
    swift_allocError();
    *v20 = 0xD000000000000019;
    *(v20 + 8) = 0x8000000221BF07A0;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    *(v20 + 32) = 3;
    return swift_willThrow();
  }

  sub_221B229DC(v10, v16, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers.OneOf_Target);
  sub_221B22BD0(v16, v13, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers.OneOf_Target);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_221B22C2C(v13, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers.OneOf_Target);
    sub_221B166AC(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers.OneOf_Target, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers.OneOf_Target, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers.OneOf_Target);
    if (__swift_getEnumTagSinglePayload(v5, 1, v28) == 1)
    {
      sub_2219A1CC8(v5, &unk_27CFBB8C0, &unk_221BE4FB0);
      v21 = sub_221B16794(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers.OneOf_Target, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers.OneOf_Target);
      v23 = v22;
      result = sub_221B22C2C(v16, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers.OneOf_Target);
      if (!v23)
      {
        goto LABEL_3;
      }

      v24 = 0;
      v25 = 0;
      v26 = 2;
    }

    else
    {
      sub_221B22C2C(v16, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers.OneOf_Target);
      sub_221B229DC(v5, v7, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
      v21 = *v7;
      v23 = v7[1];
      v24 = v7[2];
      v25 = v7[3];

      result = sub_221B22C2C(v7, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
      v26 = 1;
    }
  }

  else
  {
    v21 = *v13;
    v23 = v13[1];
    result = sub_221B22C2C(v16, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers.OneOf_Target);
    v24 = 0;
    v25 = 0;
    v26 = 0;
  }

  v27 = v29;
  *v29 = v21;
  v27[1] = v23;
  v27[2] = v24;
  v27[3] = v25;
  *(v27 + 32) = v26;
  return result;
}

uint64_t sub_221B04E4C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v29 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8C0, &unk_221BE4FB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v28 - v4;
  v28 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  MEMORY[0x28223BE20](v28);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA5B0, &qword_221BE0C20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue.OneOf_Target(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  sub_2219A02E8(a2, v10, &qword_27CFBA5B0, &qword_221BE0C20);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_2219A1CC8(v10, &qword_27CFBA5B0, &qword_221BE0C20);
LABEL_3:
    sub_221A00FEC(result, v18, v19);
    swift_allocError();
    *v20 = 0xD000000000000019;
    *(v20 + 8) = 0x8000000221BF07A0;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    *(v20 + 32) = 3;
    return swift_willThrow();
  }

  sub_221B229DC(v10, v16, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue.OneOf_Target);
  sub_221B22BD0(v16, v13, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue.OneOf_Target);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_221B22C2C(v13, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue.OneOf_Target);
    sub_221B166AC(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue.OneOf_Target, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue.OneOf_Target, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue.OneOf_Target);
    if (__swift_getEnumTagSinglePayload(v5, 1, v28) == 1)
    {
      sub_2219A1CC8(v5, &unk_27CFBB8C0, &unk_221BE4FB0);
      v21 = sub_221B16794(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue.OneOf_Target, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue.OneOf_Target);
      v23 = v22;
      result = sub_221B22C2C(v16, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue.OneOf_Target);
      if (!v23)
      {
        goto LABEL_3;
      }

      v24 = 0;
      v25 = 0;
      v26 = 2;
    }

    else
    {
      sub_221B22C2C(v16, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue.OneOf_Target);
      sub_221B229DC(v5, v7, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
      v21 = *v7;
      v23 = v7[1];
      v24 = v7[2];
      v25 = v7[3];

      result = sub_221B22C2C(v7, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
      v26 = 1;
    }
  }

  else
  {
    v21 = *v13;
    v23 = v13[1];
    result = sub_221B22C2C(v16, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue.OneOf_Target);
    v24 = 0;
    v25 = 0;
    v26 = 0;
  }

  v27 = v29;
  *v29 = v21;
  v27[1] = v23;
  v27[2] = v24;
  v27[3] = v25;
  *(v27 + 32) = v26;
  return result;
}

uint64_t sub_221B05288@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v29 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8C0, &unk_221BE4FB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v28 - v4;
  v28 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  MEMORY[0x28223BE20](v28);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA548, &qword_221BE0BA0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.OneOf_Target(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  sub_2219A02E8(a2, v10, &qword_27CFBA548, &qword_221BE0BA0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_2219A1CC8(v10, &qword_27CFBA548, &qword_221BE0BA0);
LABEL_3:
    sub_221A00FEC(result, v18, v19);
    swift_allocError();
    *v20 = 0xD000000000000019;
    *(v20 + 8) = 0x8000000221BF07A0;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    *(v20 + 32) = 3;
    return swift_willThrow();
  }

  sub_221B229DC(v10, v16, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.OneOf_Target);
  sub_221B22BD0(v16, v13, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.OneOf_Target);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_221B22C2C(v13, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.OneOf_Target);
    sub_221B166AC(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.OneOf_Target, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.OneOf_Target, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.OneOf_Target);
    if (__swift_getEnumTagSinglePayload(v5, 1, v28) == 1)
    {
      sub_2219A1CC8(v5, &unk_27CFBB8C0, &unk_221BE4FB0);
      v21 = sub_221B16794(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.OneOf_Target, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.OneOf_Target);
      v23 = v22;
      result = sub_221B22C2C(v16, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.OneOf_Target);
      if (!v23)
      {
        goto LABEL_3;
      }

      v24 = 0;
      v25 = 0;
      v26 = 2;
    }

    else
    {
      sub_221B22C2C(v16, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.OneOf_Target);
      sub_221B229DC(v5, v7, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
      v21 = *v7;
      v23 = v7[1];
      v24 = v7[2];
      v25 = v7[3];

      result = sub_221B22C2C(v7, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
      v26 = 1;
    }
  }

  else
  {
    v21 = *v13;
    v23 = v13[1];
    result = sub_221B22C2C(v16, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.OneOf_Target);
    v24 = 0;
    v25 = 0;
    v26 = 0;
  }

  v27 = v29;
  *v29 = v21;
  v27[1] = v23;
  v27[2] = v24;
  v27[3] = v25;
  *(v27 + 32) = v26;
  return result;
}

uint64_t sub_221B056C4@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v29 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8C0, &unk_221BE4FB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v28 - v4;
  v28 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  MEMORY[0x28223BE20](v28);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8F0, &qword_221BE0B80);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString.OneOf_Target(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  sub_2219A02E8(a2, v10, &unk_27CFBB8F0, &qword_221BE0B80);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_2219A1CC8(v10, &unk_27CFBB8F0, &qword_221BE0B80);
LABEL_3:
    sub_221A00FEC(result, v18, v19);
    swift_allocError();
    *v20 = 0xD000000000000019;
    *(v20 + 8) = 0x8000000221BF07A0;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    *(v20 + 32) = 3;
    return swift_willThrow();
  }

  sub_221B229DC(v10, v16, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString.OneOf_Target);
  sub_221B22BD0(v16, v13, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString.OneOf_Target);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_221B22C2C(v13, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString.OneOf_Target);
    sub_221B166AC(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString.OneOf_Target, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString.OneOf_Target, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString.OneOf_Target);
    if (__swift_getEnumTagSinglePayload(v5, 1, v28) == 1)
    {
      sub_2219A1CC8(v5, &unk_27CFBB8C0, &unk_221BE4FB0);
      v21 = sub_221B16794(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString.OneOf_Target, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString.OneOf_Target);
      v23 = v22;
      result = sub_221B22C2C(v16, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString.OneOf_Target);
      if (!v23)
      {
        goto LABEL_3;
      }

      v24 = 0;
      v25 = 0;
      v26 = 2;
    }

    else
    {
      sub_221B22C2C(v16, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString.OneOf_Target);
      sub_221B229DC(v5, v7, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
      v21 = *v7;
      v23 = v7[1];
      v24 = v7[2];
      v25 = v7[3];

      result = sub_221B22C2C(v7, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
      v26 = 1;
    }
  }

  else
  {
    v21 = *v13;
    v23 = v13[1];
    result = sub_221B22C2C(v16, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString.OneOf_Target);
    v24 = 0;
    v25 = 0;
    v26 = 0;
  }

  v27 = v29;
  *v29 = v21;
  v27[1] = v23;
  v27[2] = v24;
  v27[3] = v25;
  *(v27 + 32) = v26;
  return result;
}

uint64_t sub_221B05B00@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v29 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8C0, &unk_221BE4FB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v28 - v4;
  v28 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  MEMORY[0x28223BE20](v28);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA588, &qword_221BE0BF0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities.OneOf_Target(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  sub_2219A02E8(a2, v10, &qword_27CFBA588, &qword_221BE0BF0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_2219A1CC8(v10, &qword_27CFBA588, &qword_221BE0BF0);
LABEL_3:
    sub_221A00FEC(result, v18, v19);
    swift_allocError();
    *v20 = 0xD000000000000019;
    *(v20 + 8) = 0x8000000221BF07A0;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    *(v20 + 32) = 3;
    return swift_willThrow();
  }

  sub_221B229DC(v10, v16, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities.OneOf_Target);
  sub_221B22BD0(v16, v13, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities.OneOf_Target);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_221B22C2C(v13, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities.OneOf_Target);
    sub_221B166AC(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities.OneOf_Target, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities.OneOf_Target, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities.OneOf_Target);
    if (__swift_getEnumTagSinglePayload(v5, 1, v28) == 1)
    {
      sub_2219A1CC8(v5, &unk_27CFBB8C0, &unk_221BE4FB0);
      v21 = sub_221B16794(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities.OneOf_Target, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities.OneOf_Target);
      v23 = v22;
      result = sub_221B22C2C(v16, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities.OneOf_Target);
      if (!v23)
      {
        goto LABEL_3;
      }

      v24 = 0;
      v25 = 0;
      v26 = 2;
    }

    else
    {
      sub_221B22C2C(v16, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities.OneOf_Target);
      sub_221B229DC(v5, v7, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
      v21 = *v7;
      v23 = v7[1];
      v24 = v7[2];
      v25 = v7[3];

      result = sub_221B22C2C(v7, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
      v26 = 1;
    }
  }

  else
  {
    v21 = *v13;
    v23 = v13[1];
    result = sub_221B22C2C(v16, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities.OneOf_Target);
    v24 = 0;
    v25 = 0;
    v26 = 0;
  }

  v27 = v29;
  *v29 = v21;
  v27[1] = v23;
  v27[2] = v24;
  v27[3] = v25;
  *(v27 + 32) = v26;
  return result;
}

uint64_t sub_221B05F3C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v29 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8C0, &unk_221BE4FB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v28 - v4;
  v28 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  MEMORY[0x28223BE20](v28);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB900, &unk_221BE5080);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity.OneOf_Target(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  sub_2219A02E8(a2, v10, &unk_27CFBB900, &unk_221BE5080);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_2219A1CC8(v10, &unk_27CFBB900, &unk_221BE5080);
LABEL_3:
    sub_221A00FEC(result, v18, v19);
    swift_allocError();
    *v20 = 0xD000000000000019;
    *(v20 + 8) = 0x8000000221BF07A0;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    *(v20 + 32) = 3;
    return swift_willThrow();
  }

  sub_221B229DC(v10, v16, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity.OneOf_Target);
  sub_221B22BD0(v16, v13, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity.OneOf_Target);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_221B22C2C(v13, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity.OneOf_Target);
    sub_221B166AC(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity.OneOf_Target, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity.OneOf_Target, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity.OneOf_Target);
    if (__swift_getEnumTagSinglePayload(v5, 1, v28) == 1)
    {
      sub_2219A1CC8(v5, &unk_27CFBB8C0, &unk_221BE4FB0);
      v21 = sub_221B16794(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity.OneOf_Target, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity.OneOf_Target);
      v23 = v22;
      result = sub_221B22C2C(v16, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity.OneOf_Target);
      if (!v23)
      {
        goto LABEL_3;
      }

      v24 = 0;
      v25 = 0;
      v26 = 2;
    }

    else
    {
      sub_221B22C2C(v16, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity.OneOf_Target);
      sub_221B229DC(v5, v7, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
      v21 = *v7;
      v23 = v7[1];
      v24 = v7[2];
      v25 = v7[3];

      result = sub_221B22C2C(v7, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
      v26 = 1;
    }
  }

  else
  {
    v21 = *v13;
    v23 = v13[1];
    result = sub_221B22C2C(v16, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity.OneOf_Target);
    v24 = 0;
    v25 = 0;
    v26 = 0;
  }

  v27 = v29;
  *v29 = v21;
  v27[1] = v23;
  v27[2] = v24;
  v27[3] = v25;
  *(v27 + 32) = v26;
  return result;
}

uint64_t sub_221B06378(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  v4 = sub_221AE9B04(KeyPath, v3);

  v5 = swift_getKeyPath();
  v6 = swift_getKeyPath();
  sub_221AE9C28(v5, v6);

  return v4 & 1;
}

char *sub_221B06438@<X0>(char *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v67 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v65 - v6;
  v76 = type metadata accessor for AppIntentsProtobuf_Value(0);
  MEMORY[0x28223BE20](v76);
  v74 = (&v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Compound(0);
  MEMORY[0x28223BE20](v9 - 8);
  v68 = (&v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v75 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison(0);
  v77 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v79 = (&v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v90 = &v65 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = (&v65 - v15);
  MEMORY[0x28223BE20](v17);
  v19 = &v65 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8E0, &unk_221BE4FD0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v65 - v24;
  sub_2219A02E8(a1, &v65 - v24, &unk_27CFBB8E0, &unk_221BE4FD0);
  v26 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.OneOf_Content(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v25, 1, v26);
  if (EnumTagSinglePayload == 1)
  {
    sub_221A00FEC(EnumTagSinglePayload, v28, v29);
    swift_allocError();
    *v30 = &type metadata for PropertyQuery;
    *(v30 + 8) = 0xD00000000000001ALL;
    *(v30 + 16) = 0x8000000221BF07C0;
    *(v30 + 24) = 0;
    *(v30 + 32) = 1;
    swift_willThrow();
    sub_221B22C2C(a1, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery);
    v31 = v25;
    return sub_2219A1CC8(v31, &unk_27CFBB8E0, &unk_221BE4FD0);
  }

  v72 = a1;
  v66 = v25;
  sub_2219A02E8(v25, v22, &unk_27CFBB8E0, &unk_221BE4FD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_221B229DC(v22, v19, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison);
    sub_221B22BD0(v19, v16, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison);
    sub_221B15AD8(v16, &v85);
    sub_221B22C2C(v72, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery);
    sub_221B22C2C(v19, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison);
    if (!v2)
    {
      v32 = v86;
      v33 = v67;
      *v67 = v85;
      v33[1] = v32;
      v34 = v88;
      v33[2] = v87;
      v33[3] = v34;
      *(v33 + 64) = 0;
    }

LABEL_21:
    v31 = v66;
    return sub_2219A1CC8(v31, &unk_27CFBB8E0, &unk_221BE4FD0);
  }

  v73 = v7;
  v35 = v68;
  sub_221B229DC(v22, v68, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Compound);
  v36 = *v35;
  v37 = v35[1];
  v38 = *(v37 + 16);
  if (!v38)
  {
    sub_221B22C2C(v72, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery);
    sub_221B22C2C(v35, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Compound);
    v41 = MEMORY[0x277D84F90];
LABEL_20:
    v64 = v67;
    *v67 = v41;
    *(v64 + 1) = v36;
    *(v64 + 64) = 1;
    goto LABEL_21;
  }

  v65 = *v35;
  v89 = MEMORY[0x277D84F90];
  result = sub_2219A31AC(0, v38, 0);
  v40 = 0;
  v41 = v89;
  v71 = v37 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
  v69 = xmmword_221BD8630;
  v42 = 0x277D23958;
  v70 = v38;
  while (v40 < *(v37 + 16))
  {
    v78 = v3;
    v43 = v90;
    sub_221B22BD0(v71 + *(v77 + 72) * v40, v90, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison);
    v44 = v79;
    sub_221B22BD0(v43, v79, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison);
    v45 = *v44;
    v46 = v44[2];
    *&v83 = v44[1];
    *(&v83 + 1) = v46;
    *&v84[0] = v45;
    v47 = v73;
    sub_2219A02E8(v44 + *(v75 + 28), v73, &unk_27CFBB660, &qword_221BE4610);
    v48 = v76;
    if (__swift_getEnumTagSinglePayload(v47, 1, v76) == 1)
    {
      v49 = v41;
      v50 = v74;
      *v74 = v69;

      sub_221BCC8C8();
      v51 = v48;
      v52 = v50;
      v41 = v49;
      if (__swift_getEnumTagSinglePayload(v47, 1, v51) != 1)
      {
        sub_2219A1CC8(v73, &unk_27CFBB660, &qword_221BE4610);
      }
    }

    else
    {
      v52 = v74;
      sub_221B229DC(v47, v74, type metadata accessor for AppIntentsProtobuf_Value);
    }

    v53 = v78;
    sub_221B14BC4(*v52, v52[1], &qword_27CFBB680, v42);
    v55 = v42;
    v56 = v52;
    if (v53)
    {
      sub_221B22C2C(v72, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery);
      sub_221B22C2C(v79, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison);
      sub_221B22C2C(v90, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison);
      sub_221B22C2C(v52, type metadata accessor for AppIntentsProtobuf_Value);

      sub_221B22C2C(v68, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Compound);

      v31 = v66;
      return sub_2219A1CC8(v31, &unk_27CFBB8E0, &unk_221BE4FD0);
    }

    v57 = v54;
    sub_221B22C2C(v56, type metadata accessor for AppIntentsProtobuf_Value);
    v81 = sub_2219A1D20(0, &qword_27CFBB680, v55);
    v82 = &protocol witness table for LNValue;
    *&v80 = v57;
    sub_221B22C2C(v79, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison);
    sub_221B22C2C(v90, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison);
    sub_22198B358(&v80, v84 + 8);
    v85 = v83;
    v86 = v84[0];
    v87 = v84[1];
    v88 = v84[2];
    v89 = v41;
    v59 = *(v41 + 16);
    v58 = *(v41 + 24);
    v42 = v55;
    if (v59 >= v58 >> 1)
    {
      sub_2219A31AC((v58 > 1), v59 + 1, 1);
      v41 = v89;
    }

    ++v40;
    *(v41 + 16) = v59 + 1;
    v60 = (v41 + (v59 << 6));
    v61 = v85;
    v62 = v86;
    v63 = v88;
    v60[4] = v87;
    v60[5] = v63;
    v60[2] = v61;
    v60[3] = v62;
    result = v72;
    v3 = 0;
    if (v70 == v40)
    {
      sub_221B22C2C(v72, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery);
      sub_221B22C2C(v68, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Compound);
      v36 = v65;
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

void sub_221B06D58()
{
  OUTLINED_FUNCTION_55_4();
  v4 = v0;
  v5 = v68;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA4C8, &qword_221BE0B08);
  v7 = OUTLINED_FUNCTION_8_1(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_28_7();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_164();
  MEMORY[0x28223BE20](v9);
  v11 = &v65 - v10;
  sub_2219AC930(v4 + 80, v68);
  switch(v75)
  {
    case 1:
      v2 = *v68;
      v78[0] = *&v68[8];
      v78[1] = *&v68[24];
      v79 = v68[40];
      v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers(0);
      MEMORY[0x28223BE20](v5);
      *(&v65 - 4) = v4;
      *(&v65 - 3) = v2;
      *(&v65 - 2) = v78;
      v38 = sub_221AE8904(&unk_27CFBB930, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers, &unk_221BDF898);
      OUTLINED_FUNCTION_220_3(sub_221B2269C, (&v65 - 6), v39, v38);

      sub_2219ACA1C(v78);
      type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.OneOf_Query(0);
      OUTLINED_FUNCTION_119_5();
      goto LABEL_12;
    case 2:
      v21 = *v68;
      v80[0] = *&v68[8];
      v80[1] = *&v68[24];
      v81 = v68[40];
      type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue(0);
      OUTLINED_FUNCTION_178_3();
      MEMORY[0x28223BE20](v22);
      v2 = &v65 - 6;
      *(&v65 - 4) = v4;
      *(&v65 - 3) = v80;
      *(&v65 - 2) = v21;
      v23 = sub_221AE8904(&qword_27CFBA260, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue, &unk_221BDF730);
      OUTLINED_FUNCTION_220_3(sub_221B22680, (&v65 - 6), v24, v23);
      sub_2219ACA1C(v80);

      if (v1)
      {
        goto LABEL_14;
      }

      v25 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.OneOf_Query(0);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_122();
      __swift_storeEnumTagSinglePayload(v26, v27, v28, v25);
      sub_2219A182C(v3, v11, &qword_27CFBA4C8, &qword_221BE0B08);
      goto LABEL_13;
    case 3:
      v29 = *v68;
      v2 = *&v68[8];
      v82[0] = *&v68[16];
      v82[1] = *&v68[32];
      v83 = v68[48];
      v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString(0);
      MEMORY[0x28223BE20](v5);
      *(&v65 - 4) = v4;
      *(&v65 - 3) = v29;
      *(&v65 - 2) = v2;
      *(&v65 - 1) = v82;
      v30 = sub_221AE8904(&unk_27CFBB920, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString, &unk_221BDEE98);
      OUTLINED_FUNCTION_220_3(sub_221B22664, (&v65 - 6), v31, v30);

      sub_2219ACA1C(v82);
      type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.OneOf_Query(0);
      OUTLINED_FUNCTION_119_5();
      goto LABEL_12;
    case 4:
      v66 = v1;
      v16 = v69;
      v17 = v70;
      v18 = v71;
      v84[0] = v72;
      v84[1] = v73;
      v85 = v74;
      memcpy(v67, v68, 0x41uLL);
      v19 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties(0);
      v65 = &v65;
      MEMORY[0x28223BE20](v19);
      *(&v65 - 6) = v4;
      *(&v65 - 5) = v16;
      *(&v65 - 32) = v17;
      *(&v65 - 3) = v67;
      *(&v65 - 2) = v18;
      *(&v65 - 1) = v84;
      sub_221AE8904(&qword_27CFBA240, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties, &unk_221BDF5C8);
      v20 = v66;
      sub_221BCCB58();

      sub_2219ACA1C(v84);
      if (v20)
      {
        sub_2219ACB30(v67);
      }

      else
      {
        type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.OneOf_Query(0);
        OUTLINED_FUNCTION_171_0();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_122();
        __swift_storeEnumTagSinglePayload(v58, v59, v60, v19);
        v61 = OUTLINED_FUNCTION_151_3();
        sub_2219A182C(v61, v62, v63, v64);
        sub_2219ACB30(v67);
LABEL_13:
        type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest(0);
        OUTLINED_FUNCTION_178_3();
        MEMORY[0x28223BE20](v54);
        OUTLINED_FUNCTION_81_6();
        *(v55 - 16) = v4;
        *(v55 - 8) = v11;
        v56 = sub_221AE8904(&unk_27CFBB180, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest, &unk_221BDFB68);
        OUTLINED_FUNCTION_220_3(sub_221B22604, v2, v57, v56);
        sub_2219A1CC8(v11, &qword_27CFBA4C8, &qword_221BE0B08);
      }

LABEL_14:
      OUTLINED_FUNCTION_175_1();
      OUTLINED_FUNCTION_53_5();
      return;
    case 5:
      sub_2219AC98C(v68);
      OUTLINED_FUNCTION_153_3();
      sub_221A00FEC(v40, v41, v42);
      OUTLINED_FUNCTION_15_0();
      swift_allocError();
      OUTLINED_FUNCTION_188_3(v43, &type metadata for AppIntentsProtocol.PerformQuery.Request);
      *(v44 + 16) = v68;
      *(v44 + 24) = 0;
      *(v44 + 32) = 2;
      swift_willThrow();
      goto LABEL_14;
    case 6:
      v86[0] = *v68;
      v86[1] = *&v68[16];
      v87 = v68[32];
      type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities(0);
      OUTLINED_FUNCTION_178_3();
      MEMORY[0x28223BE20](v45);
      OUTLINED_FUNCTION_81_6();
      *(v46 - 16) = v4;
      *(v46 - 8) = v86;
      v47 = sub_221AE8904(&unk_27CFBB910, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities, &unk_221BDED30);
      OUTLINED_FUNCTION_155_1(v47, v48, v49, v47);
      sub_2219ACA1C(v86);
      v50 = OUTLINED_FUNCTION_149_2();
      type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.OneOf_Query(v50);
      OUTLINED_FUNCTION_119_5();
      goto LABEL_12;
    case 7:
      v88[0] = *v68;
      v88[1] = *&v68[16];
      v89 = v68[32];
      type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity(0);
      OUTLINED_FUNCTION_178_3();
      MEMORY[0x28223BE20](v32);
      OUTLINED_FUNCTION_81_6();
      *(v33 - 16) = v4;
      *(v33 - 8) = v88;
      v34 = sub_221AE8904(&qword_27CFBA188, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity, &unk_221BDEBC8);
      OUTLINED_FUNCTION_155_1(v34, v35, v36, v34);
      sub_2219ACA1C(v88);
      v37 = OUTLINED_FUNCTION_149_2();
      type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.OneOf_Query(v37);
      OUTLINED_FUNCTION_119_5();
      goto LABEL_12;
    default:
      v76[0] = *v68;
      v76[1] = *&v68[16];
      v77 = v68[32];
      v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities(0);
      MEMORY[0x28223BE20](v5);
      OUTLINED_FUNCTION_81_6();
      *(v12 - 16) = v4;
      *(v12 - 8) = v76;
      v13 = sub_221AE8904(&qword_27CFBA298, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities, &unk_221BDFA00);
      OUTLINED_FUNCTION_155_1(v13, v14, v15, v13);
      sub_2219ACA1C(v76);
      type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.OneOf_Query(0);
      OUTLINED_FUNCTION_119_5();
LABEL_12:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_122();
      __swift_storeEnumTagSinglePayload(v51, v52, v53, v5);
      goto LABEL_13;
  }
}

uint64_t sub_221B07578(void *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  MEMORY[0x28223BE20](v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA570, &qword_221BE0BD8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (v22 - v11);
  v14 = *a2;
  v13 = a2[1];

  *a1 = v14;
  a1[1] = v13;
  if (*(a3 + 32) && *(a3 + 32) == 1)
  {
    MEMORY[0x28223BE20](v15);
    v22[-4] = v16;
    v22[-3] = v6;
    v22[-2] = v18;
    v22[-1] = v17;
    sub_221AE8904(&unk_27CFBB940, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget, &unk_221BDE8F8);
    sub_221BCCB58();
    sub_221B229DC(v9, v12, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
    v19 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities.OneOf_Target(0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    *v12 = *a3;
    v12[1] = v6;
    v19 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities.OneOf_Target(0);
    swift_storeEnumTagMultiPayload();
  }

  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities.OneOf_Target(0);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v19);
  v20 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities(0);
  return sub_221B22A38(v12, a1 + *(v20 + 20), &qword_27CFBA570, &qword_221BE0BD8);
}

double sub_221B07800@<D0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, void *a4@<X8>)
{
  v7 = *(a1 + 8);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_0();
  if (*(a1 + 32) && *(a1 + 32) == 1)
  {
    MEMORY[0x28223BE20](v9);
    *&v16[-32] = v10;
    *&v16[-24] = v7;
    *&v16[-16] = v12;
    *&v16[-8] = v11;
    sub_221AE8904(&unk_27CFBB940, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget, &unk_221BDE8F8);
    sub_221BCCB58();
    v13 = OUTLINED_FUNCTION_109_3();
    sub_221B229DC(v13, a4, v14);
    a2(0);
    OUTLINED_FUNCTION_284();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    *a4 = *a1;
    a4[1] = v7;
    a2(0);
    OUTLINED_FUNCTION_284();
    swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_221B079C4(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v29 = a4;
  v8 = type metadata accessor for AppIntentsProtobuf_EntityIdentifier(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8D0, &unk_221BE4FC0);
  MEMORY[0x28223BE20](v12 - 8);
  v28 = (&v27 - v13);
  v15 = *a2;
  v14 = a2[1];

  *a1 = v15;
  a1[1] = v14;
  v16 = *(a3 + 16);
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v27 = v4;
    v33 = MEMORY[0x277D84F90];
    sub_2219A330C(0, v16, 0);
    v17 = v33;
    v18 = a3 + 32;
    do
    {
      sub_2219A1B08(v18, v30);
      v19 = v31;
      v20 = v32;
      __swift_project_boxed_opaque_existential_0(v30, v31);
      sub_221AF02CC(v19, v20);
      __swift_destroy_boxed_opaque_existential_0(v30);
      v33 = v17;
      v22 = *(v17 + 16);
      v21 = *(v17 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_2219A330C(v21 > 1, v22 + 1, 1);
        v17 = v33;
      }

      *(v17 + 16) = v22 + 1;
      sub_221B229DC(v11, v17 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v22, type metadata accessor for AppIntentsProtobuf_EntityIdentifier);
      v18 += 40;
      --v16;
    }

    while (v16);
  }

  a1[2] = v17;
  v23 = v28;
  sub_221B07800(v29, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers.OneOf_Target, v28);
  v24 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers.OneOf_Target(0);
  __swift_storeEnumTagSinglePayload(v23, 0, 1, v24);
  v25 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers(0);
  return sub_221B22A38(v23, a1 + *(v25 + 24), &unk_27CFBB8D0, &unk_221BE4FC0);
}

uint64_t sub_221B07C70(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for AppIntentsProtobuf_Value(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA5B0, &qword_221BE0C20);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21[-v12];
  v14 = *a2;
  v15 = a2[1];

  *a1 = v14;
  a1[1] = v15;
  sub_221B07800(a3, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue.OneOf_Target, v13);
  v16 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue.OneOf_Target(0);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v16);
  v17 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue(0);
  sub_221B22A38(v13, a1 + *(v17 + 20), &qword_27CFBA5B0, &qword_221BE0C20);
  v22 = a4;
  sub_221AE8904(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value, &unk_221BD8F70);
  v18 = v23;
  result = sub_221BCCB58();
  if (!v18)
  {
    v20 = *(v17 + 28);
    sub_2219A1CC8(a1 + v20, &unk_27CFBB660, &qword_221BE4610);
    sub_221B229DC(v10, a1 + v20, type metadata accessor for AppIntentsProtobuf_Value);
    return __swift_storeEnumTagSinglePayload(a1 + v20, 0, 1, v8);
  }

  return result;
}

uint64_t sub_221B07EB8(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = *(a5 + 8);
  v10 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8F0, &qword_221BE0B80);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = (&v27 - v14);
  v16 = *a2;
  v17 = a2[1];

  *a1 = v16;
  a1[1] = v17;
  v18 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString(0);
  v19 = (a1 + *(v18 + 24));

  *v19 = a3;
  v19[1] = a4;
  if (*(a5 + 32) && *(a5 + 32) == 1)
  {
    MEMORY[0x28223BE20](v20);
    *(&v27 - 4) = v21;
    *(&v27 - 3) = v28;
    *(&v27 - 2) = v22;
    *(&v27 - 1) = v23;
    sub_221AE8904(&unk_27CFBB940, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget, &unk_221BDE8F8);
    sub_221BCCB58();
    sub_221B229DC(v12, v15, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
    v24 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString.OneOf_Target(0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v25 = v28;
    *v15 = *a5;
    v15[1] = v25;
    v24 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString.OneOf_Target(0);
    swift_storeEnumTagMultiPayload();
  }

  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString.OneOf_Target(0);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v24);
  return sub_221B22A38(v15, a1 + *(v18 + 20), &unk_27CFBB8F0, &qword_221BE0B80);
}

uint64_t sub_221B08188(void *a1, uint64_t *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a7;
  v28 = a6;
  v29 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA548, &qword_221BE0BA0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v26 - v13;
  v15 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a2;
  v19 = a2[1];

  *a1 = v18;
  a1[1] = v19;
  sub_221AE925C(a3, a4 & 1, a1);
  v30 = v29;
  sub_221AE8904(&unk_27CFBB950, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery, &unk_221BDF460);
  result = sub_221BCCB58();
  if (!v7)
  {
    v21 = v27;
    v22 = v14;
    v23 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties(0);
    v24 = *(v23 + 32);
    sub_2219A1CC8(a1 + v24, &qword_27CFBA3D0, &qword_221BE0A18);
    sub_221B229DC(v17, a1 + v24, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery);
    __swift_storeEnumTagSinglePayload(a1 + v24, 0, 1, v15);
    if (v28)
    {
      v31 = v28;
      sub_221B0841C(&v31, a1);
    }

    sub_221B07800(v21, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.OneOf_Target, v22);
    v25 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.OneOf_Target(0);
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v25);
    return sub_221B22A38(v22, a1 + *(v23 + 20), &qword_27CFBA548, &qword_221BE0BA0);
  }

  return result;
}

uint64_t sub_221B0841C(uint64_t *a1, uint64_t a2)
{
  v21 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.SortingOptions(0);
  v4 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = *(*a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v19 = a2;
    v22 = MEMORY[0x277D84F90];
    sub_2219A3364(0, v8, 0);
    v9 = v22;
    v10 = sub_221AE8904(&unk_27CFBB960, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.SortingOptions, &unk_221BDF028);
    v20 = v10;
    v11 = v7 + 56;
    do
    {
      *&v12 = MEMORY[0x28223BE20](v10);
      *(&v18 - 32) = v13;
      *(&v18 - 3) = v12;
      *(&v18 - 8) = v14;
      sub_221BCCB58();
      v22 = v9;
      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_2219A3364(v15 > 1, v16 + 1, 1);
        v9 = v22;
      }

      *(v9 + 16) = v16 + 1;
      v10 = sub_221B229DC(v6, v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v16, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.SortingOptions);
      v11 += 32;
      --v8;
    }

    while (v8);
    a2 = v19;
  }

  *(a2 + *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties(0) + 24)) = v9;
}

uint64_t sub_221B0865C(void *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  MEMORY[0x28223BE20](v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA588, &qword_221BE0BF0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (v22 - v11);
  v14 = *a2;
  v13 = a2[1];

  *a1 = v14;
  a1[1] = v13;
  if (*(a3 + 32) && *(a3 + 32) == 1)
  {
    MEMORY[0x28223BE20](v15);
    v22[-4] = v16;
    v22[-3] = v6;
    v22[-2] = v18;
    v22[-1] = v17;
    sub_221AE8904(&unk_27CFBB940, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget, &unk_221BDE8F8);
    sub_221BCCB58();
    sub_221B229DC(v9, v12, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
    v19 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities.OneOf_Target(0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    *v12 = *a3;
    v12[1] = v6;
    v19 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities.OneOf_Target(0);
    swift_storeEnumTagMultiPayload();
  }

  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities.OneOf_Target(0);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v19);
  v20 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities(0);
  return sub_221B22A38(v12, a1 + *(v20 + 20), &qword_27CFBA588, &qword_221BE0BF0);
}

uint64_t sub_221B088E4(void *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  MEMORY[0x28223BE20](v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB900, &unk_221BE5080);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (v22 - v11);
  v14 = *a2;
  v13 = a2[1];

  *a1 = v14;
  a1[1] = v13;
  if (*(a3 + 32) && *(a3 + 32) == 1)
  {
    MEMORY[0x28223BE20](v15);
    v22[-4] = v16;
    v22[-3] = v6;
    v22[-2] = v18;
    v22[-1] = v17;
    sub_221AE8904(&unk_27CFBB940, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget, &unk_221BDE8F8);
    sub_221BCCB58();
    sub_221B229DC(v9, v12, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
    v19 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity.OneOf_Target(0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    *v12 = *a3;
    v12[1] = v6;
    v19 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity.OneOf_Target(0);
    swift_storeEnumTagMultiPayload();
  }

  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity.OneOf_Target(0);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v19);
  v20 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity(0);
  return sub_221B22A38(v12, a1 + *(v20 + 20), &unk_27CFBB900, &unk_221BE5080);
}

uint64_t sub_221B08B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.Options(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LOBYTE(v9) = *(a2 + 72);
  v11 = *(a2 + 73);
  v18 = *(a2 + 56);
  v19 = v9;
  v20 = v11;
  sub_221AE8904(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata, &unk_221BDD980);
  sub_221BCCB58();
  Request = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest(0);
  v13 = *(Request + 28);
  sub_2219A1CC8(a1 + v13, &unk_27CFBB600, &qword_221BE44B0);
  sub_221B229DC(v10, a1 + v13, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
  __swift_storeEnumTagSinglePayload(a1 + v13, 0, 1, v8);
  sub_221B22AD8(v21, a1, &qword_27CFBA4C8, &qword_221BE0B08);
  v16[16] = *(a2 + 32);
  v17 = *(a2 + 40);
  sub_221AE8904(&qword_27CFBA168, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.Options, &unk_221BDEA60);
  sub_221BCCB58();
  v14 = *(Request + 24);
  sub_2219A1CC8(a1 + v14, &unk_27CFBB8A0, &qword_221BE0B10);
  sub_221B229DC(v7, a1 + v14, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.Options);
  return __swift_storeEnumTagSinglePayload(a1 + v14, 0, 1, v5);
}

void sub_221B08E78()
{
  OUTLINED_FUNCTION_55_4();
  v4 = v3;
  v93 = v5;
  v6 = type metadata accessor for AppIntentsProtobuf_Error(0);
  v7 = OUTLINED_FUNCTION_8_1(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_30_8();
  v94 = v8;
  v9 = OUTLINED_FUNCTION_133_3();
  v91 = type metadata accessor for AppIntentsProtobuf_AsyncSequenceElementPage(v9);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_51_4();
  v88 = v11;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_132_2();
  v89 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB980, &unk_221BE0A20);
  v15 = OUTLINED_FUNCTION_8_1(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_51_4();
  v90 = v16;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_132_2();
  v92 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  OUTLINED_FUNCTION_8_1(v19);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v20);
  v21 = OUTLINED_FUNCTION_79_2();
  type metadata accessor for AppIntentsProtobuf_Value(v21);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_16_12();
  v23 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.Success(0);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_30_8();
  v95 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA790, &qword_221BE0CE8);
  v27 = OUTLINED_FUNCTION_8_1(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_9_5();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v88 - v32;
  sub_2219A02E8(v4, &v88 - v32, &qword_27CFBA790, &qword_221BE0CE8);
  v34 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.OneOf_Payload(0);
  v35 = OUTLINED_FUNCTION_9_1();
  v37 = OUTLINED_FUNCTION_49_4(v35, v36, v34);
  if (v40)
  {
    sub_221A00FEC(v37, v38, v39);
    OUTLINED_FUNCTION_15_0();
    swift_allocError();
    OUTLINED_FUNCTION_188_3(v41, &type metadata for AppIntentsProtocol.PerformQuery.Response);
    *(v42 + 16) = 0x8000000221BF0820;
    *(v42 + 24) = 0;
    *(v42 + 32) = 1;
    swift_willThrow();
    v43 = OUTLINED_FUNCTION_14_15();
LABEL_13:
    sub_221B22C2C(v43, v44);
    goto LABEL_14;
  }

  sub_2219A02E8(v33, v30, &qword_27CFBA790, &qword_221BE0CE8);
  OUTLINED_FUNCTION_235_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v46 = EnumCaseMultiPayload;
  if (EnumCaseMultiPayload != 1)
  {
    LODWORD(v94) = EnumCaseMultiPayload;
    v58 = v95;
    sub_221B229DC(v30, v95, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.Success);
    sub_2219A02E8(v58 + *(v23 + 20), v0, &unk_27CFBB660, &qword_221BE4610);
    OUTLINED_FUNCTION_25_10(v0);
    if (v40)
    {
      *v2 = xmmword_221BD8630;
      sub_221BCC8C8();
      OUTLINED_FUNCTION_25_10(v0);
      if (!v40)
      {
        sub_2219A1CC8(v0, &unk_27CFBB660, &qword_221BE4610);
      }
    }

    else
    {
      OUTLINED_FUNCTION_7_16();
      sub_221B229DC(v0, v2, v59);
    }

    sub_221B14BC4(*v2, v2[1], &qword_27CFBB680, 0x277D23958);
    if (!v1)
    {
      v51 = v60;
      v49 = v33;
      OUTLINED_FUNCTION_4_20();
      sub_221B22C2C(v2, v63);
      KeyPath = swift_getKeyPath();
      v65 = swift_getKeyPath();
      v66 = v92;
      sub_221AE9C84(KeyPath, v65, type metadata accessor for AppIntentsProtobuf_AsyncSequenceElementPage);

      OUTLINED_FUNCTION_244_2();
      sub_2219A02E8(v67, v68, v69, v70);
      v71 = OUTLINED_FUNCTION_9_1();
      OUTLINED_FUNCTION_49_4(v71, v72, v91);
      if (v40)
      {
        v73 = OUTLINED_FUNCTION_14_15();
        sub_221B22C2C(v73, v74);
        sub_2219A1CC8(v66, &unk_27CFBB980, &unk_221BE0A20);
        OUTLINED_FUNCTION_39_9();
        v55 = 0;
        v56 = 0;
        v57 = 0;
      }

      else
      {
        v75 = OUTLINED_FUNCTION_97_5();
        sub_221B229DC(v75, v89, v76);
        v77 = OUTLINED_FUNCTION_97_5();
        v78 = v88;
        sub_221B22BD0(v77, v88, v79);
        v80 = sub_221B094E0(v78);
        v56 = v81;
        v57 = v82;
        v83 = OUTLINED_FUNCTION_14_15();
        sub_221B22C2C(v83, v84);
        v85 = OUTLINED_FUNCTION_53_3();
        sub_221B22C2C(v85, v86);
        sub_2219A1CC8(v92, &unk_27CFBB980, &unk_221BE0A20);
        OUTLINED_FUNCTION_39_9();
        v55 = v80 & 1;
      }

      v46 = v94;
      goto LABEL_20;
    }

    v61 = OUTLINED_FUNCTION_14_15();
    sub_221B22C2C(v61, v62);
    OUTLINED_FUNCTION_39_9();
    OUTLINED_FUNCTION_4_20();
    v43 = v2;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_6_19();
  v47 = v94;
  sub_221B229DC(v30, v94, v48);
  sub_2219A1D20(0, &qword_27CFBAF28, 0x277CCA9B8);
  v49 = v33;
  sub_221AEE828(v47);
  v51 = v50;
  v52 = OUTLINED_FUNCTION_14_15();
  sub_221B22C2C(v52, v53);
  OUTLINED_FUNCTION_2_32();
  sub_221B22C2C(v47, v54);
  if (!v1)
  {
    v55 = 0;
    v56 = 0;
    v57 = 0;
LABEL_20:
    sub_2219A1CC8(v49, &qword_27CFBA790, &qword_221BE0CE8);
    v87 = v93;
    *v93 = v51;
    v87[1] = v55;
    v87[2] = v56;
    v87[3] = v57;
    *(v87 + 32) = v46 == 1;
    goto LABEL_15;
  }

LABEL_14:
  sub_2219A1CC8(v33, &qword_27CFBA790, &qword_221BE0CE8);
LABEL_15:
  OUTLINED_FUNCTION_180_2();
  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221B094E0(void *a1)
{
  v3 = type metadata accessor for AppIntentsProtobuf_Value(0);
  v30 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - v7;
  v9 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_221BCC558();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AppIntentsProtobuf_AsyncSequenceElementPage(0);
  v16 = *(v15 + 28);
  v28 = *(a1 + *(v15 + 32));
  v29 = a1;
  sub_2219A02E8(a1 + v16, v8, &qword_27CFB9988, &qword_221BDAE20);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    *v11 = 0;
    v11[1] = 0;
    sub_221BCC8C8();
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
    {
      sub_2219A1CC8(v8, &qword_27CFB9988, &qword_221BDAE20);
    }
  }

  else
  {
    sub_221B229DC(v8, v11, type metadata accessor for AppIntentsProtobuf_UUID);
  }

  sub_221AE9E30(v11);
  sub_221B22C2C(v11, type metadata accessor for AppIntentsProtobuf_UUID);
  v17 = v29;
  if (v1)
  {
    sub_221B22C2C(v29, type metadata accessor for AppIntentsProtobuf_AsyncSequenceElementPage);
    return v18 & 1;
  }

  v19 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
  v20 = objc_allocWithZone(MEMORY[0x277D23B40]);
  v21 = sub_221B21A08(v14, v19);
  v22 = v17[1];
  v23 = *(v22 + 16);
  if (!v23)
  {
    sub_221B22C2C(v17, type metadata accessor for AppIntentsProtobuf_AsyncSequenceElementPage);
LABEL_13:
    v18 = v28;
    return v18 & 1;
  }

  v27 = v21;
  v31 = MEMORY[0x277D84F90];
  result = sub_221BCDF28();
  v25 = 0;
  v26 = v22 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
  while (v25 < *(v22 + 16))
  {
    sub_221B22BD0(v26 + *(v30 + 72) * v25, v5, type metadata accessor for AppIntentsProtobuf_Value);
    sub_221B14BC4(*v5, v5[1], &qword_27CFBB680, 0x277D23958);
    ++v25;
    sub_221B22C2C(v5, type metadata accessor for AppIntentsProtobuf_Value);
    sub_221BCDEF8();
    sub_221BCDF38();
    sub_221BCDF48();
    result = sub_221BCDF08();
    if (v23 == v25)
    {
      sub_221B22C2C(v29, type metadata accessor for AppIntentsProtobuf_AsyncSequenceElementPage);
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_221B0996C()
{
  OUTLINED_FUNCTION_55_4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA790, &qword_221BE0CE8);
  v5 = OUTLINED_FUNCTION_8_1(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_28_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_75_7();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_82_5();
  v8 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.OneOf_Payload(0);
  OUTLINED_FUNCTION_76_3(v8);
  v9 = *v0;
  if (v0[4])
  {
    type metadata accessor for AppIntentsProtobuf_Error(0);
    OUTLINED_FUNCTION_74_6();
    MEMORY[0x28223BE20](v10);
    OUTLINED_FUNCTION_63_7();
    *(v11 - 16) = v9;
    OUTLINED_FUNCTION_8_15();
    v14 = sub_221AE8904(v12, v13, &unk_221BD9C18);
    OUTLINED_FUNCTION_143_3(sub_221B22CCC, v15, v16, v14);
    OUTLINED_FUNCTION_157_2();
    if (!v1)
    {
      OUTLINED_FUNCTION_151_3();
      swift_storeEnumTagMultiPayload();
LABEL_7:
      v21 = OUTLINED_FUNCTION_80_5();
      __swift_storeEnumTagSinglePayload(v21, v22, v23, v3);
      OUTLINED_FUNCTION_105_5();
      type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse(0);
      OUTLINED_FUNCTION_74_6();
      MEMORY[0x28223BE20](v24);
      OUTLINED_FUNCTION_60_7();
      v25 = sub_221AE8904(&unk_27CFBB150, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse, &unk_221BDC710);
      OUTLINED_FUNCTION_143_3(sub_221B227AC, v26, v27, v25);
      OUTLINED_FUNCTION_157_2();
      v20 = OUTLINED_FUNCTION_96_6();
      goto LABEL_8;
    }
  }

  else
  {
    v17 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.Success(0);
    MEMORY[0x28223BE20](v17);
    sub_221AE8904(&unk_27CFBB990, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.Success, &unk_221BDC5A8);
    OUTLINED_FUNCTION_156_1();
    sub_221BCCB58();
    OUTLINED_FUNCTION_157_2();
    if (!v1)
    {
      OUTLINED_FUNCTION_14();
      swift_storeEnumTagMultiPayload();
      goto LABEL_7;
    }
  }

  v18 = &qword_27CFBA790;
  v19 = &qword_221BE0CE8;
  v20 = v2;
LABEL_8:
  sub_2219A1CC8(v20, v18, v19);
  OUTLINED_FUNCTION_133_4();
  OUTLINED_FUNCTION_53_5();
}

void sub_221B09C1C(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5)
{
  v25 = a4;
  v10 = type metadata accessor for AppIntentsProtobuf_AsyncSequenceElementPage(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AppIntentsProtobuf_Value(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a2;
  sub_221AE8904(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value, &unk_221BD8F70);
  sub_221BCCB58();
  if (!v5)
  {
    v23 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.Success(0);
    v16 = *(v23 + 20);
    sub_2219A1CC8(a1 + v16, &unk_27CFBB660, &qword_221BE4610);
    sub_221B229DC(v15, a1 + v16, type metadata accessor for AppIntentsProtobuf_Value);
    v17 = __swift_storeEnumTagSinglePayload(a1 + v16, 0, 1, v13);
    if (v25)
    {
      v22 = a1;
      MEMORY[0x28223BE20](v17);
      *(&v22 - 32) = a3 & 1;
      v18 = v25;
      *(&v22 - 3) = v25;
      *(&v22 - 2) = a5;
      sub_221AE8904(&qword_27CFB98D8, type metadata accessor for AppIntentsProtobuf_AsyncSequenceElementPage, &unk_221BDAA50);
      v19 = v18;

      sub_221BCCB58();

      v20 = v22;
      v21 = *(v23 + 24);
      sub_2219A1CC8(v22 + v21, &unk_27CFBB980, &unk_221BE0A20);
      sub_221B229DC(v12, v20 + v21, type metadata accessor for AppIntentsProtobuf_AsyncSequenceElementPage);
      __swift_storeEnumTagSinglePayload(v20 + v21, 0, 1, v10);
    }
  }
}

double sub_221B09F04@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_221AEB83C(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

double sub_221B09F9C@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>)
{
  result = sub_221AECC48(v7, a2, a3);
  if (!v3)
  {
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    *(a1 + 32) = v8;
  }

  return result;
}

void sub_221B0A020()
{
  OUTLINED_FUNCTION_55_4();
  v4 = v3;
  v33 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  OUTLINED_FUNCTION_8_1(v6);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_40_8();
  v34 = type metadata accessor for AppIntentsProtobuf_UUID(v8);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_30_8();
  v36 = v10;
  OUTLINED_FUNCTION_133_3();
  v11 = sub_221BCC558();
  v12 = OUTLINED_FUNCTION_8_1(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_30_8();
  OUTLINED_FUNCTION_181_1(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_8_1(v14);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v15);
  v16 = OUTLINED_FUNCTION_51_6();
  v17 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(v16);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_4_0();
  v21 = v20 - v19;
  v22 = OUTLINED_FUNCTION_149_2();
  v23 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ReleaseAsyncSequenceRequest(v22);
  sub_2219A02E8(v4 + *(v23 + 24), v2, &unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_25_10(v2);
  if (v24)
  {
    sub_221BCC8C8();
    v25 = (v21 + v17[5]);
    *v25 = 0;
    v25[1] = 0;
    OUTLINED_FUNCTION_217_3(v21 + v17[6]);
    *(v21 + v17[7]) = 2;
    OUTLINED_FUNCTION_25_10(v2);
    if (!v24)
    {
      sub_2219A1CC8(v2, &unk_27CFBB600, &qword_221BE44B0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_37();
    sub_221B229DC(v2, v21, v26);
  }

  sub_221AE9D08();
  if (v0)
  {
    OUTLINED_FUNCTION_50_6();
    sub_221B22C2C(v4, v27);
  }

  else
  {
    sub_2219A02E8(v4 + *(v23 + 20), v1, &qword_27CFB9988, &qword_221BDAE20);
    OUTLINED_FUNCTION_49_4(v1, 1, v34);
    if (v24)
    {
      v28 = v36;
      *v36 = 0;
      v36[1] = 0;
      sub_221BCC8C8();
      OUTLINED_FUNCTION_39_8(v1);
      if (!v24)
      {
        sub_2219A1CC8(v1, &qword_27CFB9988, &qword_221BDAE20);
      }
    }

    else
    {
      OUTLINED_FUNCTION_5_20();
      v28 = v36;
      sub_221B229DC(v1, v36, v29);
    }

    sub_221AE9E30(v28);
    sub_2219A1D20(0, &unk_27CFBB9D0, 0x277D23780);
    OUTLINED_FUNCTION_0_43();
    sub_221B22C2C(v28, v30);
    v31 = sub_221AEA118(v35);
    OUTLINED_FUNCTION_50_6();
    sub_221B22C2C(v4, v32);
    *v33 = v37;
    *(v33 + 8) = v38;
    *(v33 + 16) = v39;
    *(v33 + 17) = v40;
    *(v33 + 24) = v31;
  }

  OUTLINED_FUNCTION_177_3();
  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221B0A37C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v21 = a5;
  v8 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  MEMORY[0x28223BE20](v8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_221BCC558();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v20[0] = a2;
    v20[1] = a3;
    sub_221AF6468();
  }

  v16 = [v21 identifier];
  sub_221BCC528();

  MEMORY[0x28223BE20](v17);
  v20[-2] = v15;
  sub_221AE8904(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  sub_221BCCB58();
  (*(v12 + 8))(v15, v11);
  v18 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.ReleaseAsyncSequenceRequest(0) + 20);
  sub_2219A1CC8(a1 + v18, &qword_27CFB9988, &qword_221BDAE20);
  sub_221B229DC(v10, a1 + v18, type metadata accessor for AppIntentsProtobuf_UUID);
  return __swift_storeEnumTagSinglePayload(a1 + v18, 0, 1, v8);
}

uint64_t sub_221B0A60C(void *a1)
{
  if (*(v1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_221AEC60C(a1, *v1, *(v1 + 8), v2 | *(v1 + 16), *(v1 + 24));
}

uint64_t sub_221B0A65C()
{
  if (*(v0 + 17))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_221AEE168(*v0, *(v0 + 8), v1 | *(v0 + 16), *(v0 + 24));
}

double sub_221B0A714@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9560, &qword_221BE49F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21[-v5];
  v7 = type metadata accessor for AppIntentsProtobuf_Size(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for AppIntentsProtobuf_SnippetEnvironment(0);
  sub_2219A02E8(a1 + *(v10 + 64), v6, &qword_27CFB9560, &qword_221BE49F0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    *v9 = 0;
    v9[1] = 0;
    sub_221BCC8C8();
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
    {
      sub_2219A1CC8(v6, &qword_27CFB9560, &qword_221BE49F0);
    }
  }

  else
  {
    sub_221B229DC(v6, v9, type metadata accessor for AppIntentsProtobuf_Size);
  }

  v11 = *v9;
  v12 = v9[1];
  sub_221B22C2C(v9, type metadata accessor for AppIntentsProtobuf_Size);
  v13 = *(a1 + 32);
  result = *(a1 + 40);
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v17 = *(a1 + 57);
  v18 = *(a1 + 58);
  v19 = *(a1 + 59);
  v21[8] = 1;
  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  v20 = *(a1 + 16);
  *(a2 + 40) = *a1;
  *(a2 + 56) = v20;
  *(a2 + 72) = v13;
  *(a2 + 80) = result;
  *(a2 + 88) = v15;
  *(a2 + 96) = v16;
  *(a2 + 97) = v17;
  *(a2 + 98) = v18;
  *(a2 + 99) = v19;
  return result;
}

void sub_221B0A914(uint64_t a1, unsigned __int8 *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB740, &qword_221BE09F8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v64[-v5];
  v7 = *a2;
  if (v7 != 2)
  {
    v8 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options(0) + 20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(a1 + v8);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options._StorageClass(0);
      swift_allocObject();
      sub_221A91E70();
      v10 = v11;
      *(a1 + v8) = v11;
    }

    swift_beginAccess();
    *(v10 + 121) = v7;
  }

  v12 = a2[1];
  if (v12 != 2)
  {
    v13 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options(0) + 20);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(a1 + v13);
    if ((v14 & 1) == 0)
    {
      type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options._StorageClass(0);
      swift_allocObject();
      sub_221A91E70();
      v15 = v16;
      *(a1 + v13) = v16;
    }

    swift_beginAccess();
    *(v15 + 59) = v12;
  }

  if ((a2[16] & 1) == 0)
  {
    v17 = *(a2 + 1);
    if (v17 < 0)
    {
      __break(1u);
      goto LABEL_53;
    }

    v18 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options(0) + 20);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(a1 + v18);
    if ((v19 & 1) == 0)
    {
      type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options._StorageClass(0);
      swift_allocObject();
      sub_221A91E70();
      v20 = v21;
      *(a1 + v18) = v21;
    }

    swift_beginAccess();
    *(v20 + 128) = v17;
    *(v20 + 136) = 0;
  }

  v22 = a2[32];
  if ((v22 & 1) == 0)
  {
    v23 = *(a2 + 3);
    v24 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options(0) + 20);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(a1 + v24);
    if ((v25 & 1) == 0)
    {
      type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options._StorageClass(0);
      swift_allocObject();
      sub_221A91E70();
      v26 = v27;
      *(a1 + v24) = v27;
    }

    swift_beginAccess();
    *(v26 + 64) = v23;
    *(v26 + 72) = v22;
  }

  v28 = a2[33];
  if (v28 != 2)
  {
    v29 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options(0) + 20);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v31 = *(a1 + v29);
    if ((v30 & 1) == 0)
    {
      type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options._StorageClass(0);
      swift_allocObject();
      sub_221A91E70();
      v31 = v32;
      *(a1 + v29) = v32;
    }

    swift_beginAccess();
    *(v31 + 112) = v28;
  }

  v33 = a2[34];
  if (v33 != 2)
  {
    v34 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options(0) + 20);
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v36 = *(a1 + v34);
    if ((v35 & 1) == 0)
    {
      type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options._StorageClass(0);
      swift_allocObject();
      sub_221A91E70();
      v36 = v37;
      *(a1 + v34) = v37;
    }

    swift_beginAccess();
    *(v36 + 57) = v33;
  }

  if (*(a2 + 6))
  {

    sub_221A87C98();
  }

  if ((a2[64] & 1) == 0)
  {
    v38 = *(a2 + 7);
    if ((v38 & 0x8000000000000000) == 0)
    {
      v39 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options(0) + 20);
      v40 = swift_isUniquelyReferenced_nonNull_native();
      v41 = *(a1 + v39);
      if ((v40 & 1) == 0)
      {
        type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options._StorageClass(0);
        swift_allocObject();
        sub_221A91E70();
        v41 = v42;
        *(a1 + v39) = v42;
      }

      swift_beginAccess();
      *(v41 + 48) = v38;
      *(v41 + 56) = 0;
      goto LABEL_33;
    }

LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

LABEL_33:
  if ((a2[80] & 1) == 0)
  {
    v43 = *(a2 + 9);
    if ((v43 & 0x8000000000000000) == 0)
    {
      v44 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options(0) + 20);
      v45 = swift_isUniquelyReferenced_nonNull_native();
      v46 = *(a1 + v44);
      if ((v45 & 1) == 0)
      {
        type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options._StorageClass(0);
        swift_allocObject();
        sub_221A91E70();
        v46 = v47;
        *(a1 + v44) = v47;
      }

      swift_beginAccess();
      *(v46 + 32) = v43;
      *(v46 + 40) = 0;
      goto LABEL_38;
    }

LABEL_54:
    __break(1u);
    return;
  }

LABEL_38:
  if (*(a2 + 12))
  {

    sub_221A87B90();
  }

  v48 = a2[104];
  if (v48 != 2)
  {
    v49 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options(0) + 20);
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v51 = *(a1 + v49);
    if ((v50 & 1) == 0)
    {
      type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options._StorageClass(0);
      swift_allocObject();
      sub_221A91E70();
      v51 = v52;
      *(a1 + v49) = v52;
    }

    swift_beginAccess();
    *(v51 + 58) = v48;
  }

  KeyPath = swift_getKeyPath();
  v54 = *(a2 + 52);
  if (v54 == 2)
  {
    v55 = type metadata accessor for AppIntentsProtobuf_SnippetEnvironment(0);
    v56 = v6;
    v57 = 1;
  }

  else
  {
    memcpy(__dst, a2 + 112, sizeof(__dst));
    v66 = v54;
    v58 = type metadata accessor for AppIntentsProtobuf_SnippetEnvironment(0);
    MEMORY[0x28223BE20](v58);
    *&v64[-16] = __dst;
    sub_221AE8904(&qword_27CFB9720, type metadata accessor for AppIntentsProtobuf_SnippetEnvironment, &unk_221BD93A8);
    sub_221BCCB58();
    v56 = v6;
    v57 = 0;
    v55 = v58;
  }

  __swift_storeEnumTagSinglePayload(v56, v57, 1, v55);
  sub_221B0AF98(KeyPath, v6);

  sub_2219A1CC8(v6, &unk_27CFBB740, &qword_221BE09F8);
  if ((a2[214] & 1) == 0)
  {
    v59 = *(a2 + 106);
    v60 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options(0) + 20);
    v61 = swift_isUniquelyReferenced_nonNull_native();
    v62 = *(a1 + v60);
    if ((v61 & 1) == 0)
    {
      type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options._StorageClass(0);
      swift_allocObject();
      sub_221A91E70();
      v62 = v63;
      *(a1 + v60) = v63;
    }

    swift_beginAccess();
    *(v62 + 16) = v59;
    *(v62 + 24) = 0;
  }
}

uint64_t sub_221B0AF98(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB740, &qword_221BE09F8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for AppIntentsProtobuf_SnippetEnvironment(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v13 - v10;
  sub_2219A02E8(a2, v5, &unk_27CFBB740, &qword_221BE09F8);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return sub_2219A1CC8(v5, &unk_27CFBB740, &qword_221BE09F8);
  }

  sub_221B229DC(v5, v11, type metadata accessor for AppIntentsProtobuf_SnippetEnvironment);
  sub_221B22BD0(v11, v8, type metadata accessor for AppIntentsProtobuf_SnippetEnvironment);
  swift_setAtWritableKeyPath();
  return sub_221B22C2C(v11, type metadata accessor for AppIntentsProtobuf_SnippetEnvironment);
}

uint64_t sub_221B0B154(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for AppIntentsProtobuf_Value(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v13 - v10;
  sub_2219A02E8(a2, v5, &unk_27CFBB660, &qword_221BE4610);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return sub_2219A1CC8(v5, &unk_27CFBB660, &qword_221BE4610);
  }

  sub_221B229DC(v5, v11, type metadata accessor for AppIntentsProtobuf_Value);
  sub_221B22BD0(v11, v8, type metadata accessor for AppIntentsProtobuf_Value);
  swift_setAtWritableKeyPath();
  return sub_221B22C2C(v11, type metadata accessor for AppIntentsProtobuf_Value);
}

uint64_t sub_221B0B310(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9920, &unk_221BDADC0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v13 - v10;
  sub_2219A02E8(a2, v5, &qword_27CFB9920, &unk_221BDADC0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return sub_2219A1CC8(v5, &qword_27CFB9920, &unk_221BDADC0);
  }

  sub_221B229DC(v5, v11, type metadata accessor for AppIntentsProtobuf_ViewSnippet);
  sub_221B22BD0(v11, v8, type metadata accessor for AppIntentsProtobuf_ViewSnippet);
  swift_setAtWritableKeyPath();
  return sub_221B22C2C(v11, type metadata accessor for AppIntentsProtobuf_ViewSnippet);
}

uint64_t sub_221B0B4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(void), uint64_t (*a7)(uint64_t))
{
  v11 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_8_1(v11);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_165_0();
  sub_221B22BD0(a1, v7, a6);
  return a7(v7);
}

uint64_t sub_221B0B564(uint64_t result, char a2)
{
  v2 = 0xE700000000000000;
  v3 = 0x73646F50726961;
  switch(a2)
  {
    case 1:
      v3 = 0x79616C50726163;
      goto LABEL_11;
    case 2:
      v2 = 0xE800000000000000;
      v3 = 0x6565724673657965;
      goto LABEL_11;
    case 3:
      v3 = 0x646F50656D6F68;
      goto LABEL_11;
    case 4:
      v2 = 0xE300000000000000;
      v3 = 6513005;
      goto LABEL_11;
    case 5:
      v2 = 0xE500000000000000;
      v3 = 0x656E6F6870;
      goto LABEL_11;
    case 6:
      v2 = 0xE300000000000000;
      v3 = 6578544;
      goto LABEL_11;
    case 7:
      v2 = 0xE200000000000000;
      v3 = 30324;
      goto LABEL_11;
    case 8:
      v2 = 0xE600000000000000;
      v3 = 0x6E6F69736976;
      goto LABEL_11;
    case 9:
      v2 = 0xE500000000000000;
      v3 = 0x6863746177;
      goto LABEL_11;
    case 10:
      return result;
    default:
LABEL_11:
      v4 = (result + *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.SystemContext(0) + 20));

      *v4 = v3;
      v4[1] = v2;
      return result;
  }
}

uint64_t sub_221B0B68C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for AppIntentsProtobuf_ActionOutput(0);
  MEMORY[0x28223BE20](v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  MEMORY[0x28223BE20](v8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[6] = a2;
  sub_221AE8904(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  sub_221BCCB58();
  v28 = v2;
  v11 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ActionConfirmationRequest(0);
  v12 = *(v11 + 20);
  sub_2219A1CC8(a1 + v12, &qword_27CFB9988, &qword_221BDAE20);
  sub_221B229DC(v10, a1 + v12, type metadata accessor for AppIntentsProtobuf_UUID);
  __swift_storeEnumTagSinglePayload(a1 + v12, 0, 1, v8);
  v13 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8348, &qword_221BD2E18) + 28);
  sub_2219A02E8(v13 + 40, v18, &unk_27CFBB7B0, &unk_221BE4C10);
  sub_2219A02E8(v13, v19, &qword_27CFB8320, &unk_221BD1D60);
  *&v19[40] = 0u;
  v20 = 0u;
  v21 = 0;
  LOBYTE(v12) = *(v13 + 120);
  v23 = 0u;
  v24 = 0u;
  v25 = 0;
  sub_2219A02E8(v13 + 80, v27, &unk_27CFB93B0, &qword_221BD1D70);
  v22 = v12;
  v27[5] = 0;
  v26 = 0;
  v17[2] = v18;
  sub_221AE8904(&unk_27CFBB820, type metadata accessor for AppIntentsProtobuf_ActionOutput, &unk_221BDABB8);
  v14 = v28;
  sub_221BCCB58();
  result = sub_2219A1CC8(v18, &unk_27CFBB7A0, &qword_221BD2930);
  if (!v14)
  {
    v16 = *(v11 + 24);
    sub_2219A1CC8(a1 + v16, &qword_27CFB9D00, &unk_221BDB1B0);
    sub_221B229DC(v7, a1 + v16, type metadata accessor for AppIntentsProtobuf_ActionOutput);
    return __swift_storeEnumTagSinglePayload(a1 + v16, 0, 1, v5);
  }

  return result;
}

id sub_221B0B9B8(uint64_t a1)
{
  v2 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_221B22BD0(a1, v4, type metadata accessor for AppIntentsProtobuf_Dialog);
  v5 = objc_allocWithZone(_s18RemoteDialogResultCMa());
  v6 = sub_221B10A10(v4);
  KeyPath = swift_getKeyPath();
  v8 = swift_getKeyPath();
  sub_221AE9C28(KeyPath, v8);

  sub_221B22C2C(a1, type metadata accessor for AppIntentsProtobuf_Dialog);
  return v6;
}

void *sub_221B0BAF0@<X0>(void *a1@<X8>, uint64_t a2@<X0>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9C78, &qword_221BDB0F8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = __src - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentation(0);
  MEMORY[0x28223BE20](v8);
  v10 = (__src - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest.Value(0);
  sub_2219A02E8(a2 + *(v11 + 20), v7, &qword_27CFB9C78, &qword_221BDB0F8);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v10[2] = MEMORY[0x277D84F90];
    sub_221BCC8C8();
    v12 = (v10 + *(v8 + 28));
    *v12 = 0;
    v12[1] = 0;
    v13 = *(v8 + 32);
    v14 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
    __swift_storeEnumTagSinglePayload(v10 + v13, 1, 1, v14);
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
    {
      sub_2219A1CC8(v7, &qword_27CFB9C78, &qword_221BDB0F8);
    }
  }

  else
  {
    sub_221B229DC(v7, v10, type metadata accessor for AppIntentsProtobuf_DisplayRepresentation);
  }

  sub_221B0C7D0();
  result = sub_221B22C2C(a2, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest.Value);
  if (!v2)
  {
    return memcpy(a1, __src, 0x50uLL);
  }

  return result;
}

BOOL sub_221B0BCF8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
  MEMORY[0x28223BE20](v3 - 8);
  v4 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  MEMORY[0x28223BE20](v4);
  sub_221AE8904(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  sub_221BCCB58();
  sub_221A8D918();
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93D0, &qword_221BD2E10) + 28));
  sub_221AE8AF8(v5);
  v6 = v5[8];
  v7 = v5[9];
  __swift_project_boxed_opaque_existential_0(v5 + 5, v6);
  sub_221B0BF68(v6, v7);
  sub_221A8DAE8();
  return sub_221AE92B4((v5 + 10));
}

uint64_t sub_221B0BEB0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AppIntentsProtobuf_Dialog(0);
  sub_221AE8904(&qword_27CFBB830, type metadata accessor for AppIntentsProtobuf_Dialog, &unk_221BDA780);
  return sub_221BCCB58();
}

uint64_t sub_221B0BF68(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
  sub_221AE8904(&unk_27CFBB860, type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata, &unk_221BD9948);
  return sub_221BCCB58();
}

uint64_t sub_221B0C020(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest.Value(0);
  return sub_221BCCB58();
}

uint64_t sub_221B0C0D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  MEMORY[0x28223BE20](v4 - 8);
  v5 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  MEMORY[0x28223BE20](v5);
  sub_221AE8904(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  sub_221BCCB58();
  sub_221A8DD28();
  v6 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93A0, &unk_221BE4F60) + 28);
  sub_221B22358(v6, &v28);
  v26[0] = v28;
  v26[1] = v29;
  v27 = v30;
  if (*(&v29 + 1))
  {
    sub_22198B358(v26, v31);
    v7 = v32;
    v8 = v33;
    __swift_project_boxed_opaque_existential_0(v31, v32);
    sub_221B0BEB0(v7, v8);
    sub_221A8DE14();
    __swift_destroy_boxed_opaque_existential_0(v31);
  }

  else
  {
    sub_2219A1CC8(v26, &qword_27CFB8320, &unk_221BD1D60);
  }

  v9 = *(v6 + 40);
  v10 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ContinueInAppRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a1 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ContinueInAppRequest._StorageClass(0);
    swift_allocObject();
    sub_221ACC164();
    v12 = v13;
    *(a1 + v10) = v13;
  }

  v14 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__isThrowing;
  swift_beginAccess();
  *(v12 + v14) = v9;
  v15 = *(v6 + 41);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(a1 + v10);
  if ((v16 & 1) == 0)
  {
    type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ContinueInAppRequest._StorageClass(0);
    swift_allocObject();
    sub_221ACC164();
    v17 = v18;
    *(a1 + v10) = v18;
  }

  v19 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__requestConfirmation;
  result = swift_beginAccess();
  *(v17 + v19) = v15;
  v21 = *(v6 + 48);
  if (v21 < 0)
  {
    __break(1u);
  }

  else
  {
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(a1 + v10);
    if ((v22 & 1) == 0)
    {
      type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ContinueInAppRequest._StorageClass(0);
      swift_allocObject();
      sub_221ACC164();
      v23 = v24;
      *(a1 + v10) = v24;
    }

    v25 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__type;
    result = swift_beginAccess();
    *(v23 + v25) = v21;
  }

  return result;
}

void sub_221B0C400(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest.ProvidedValue(0);
  v21 = *(v5 - 8);
  v22 = v5;
  MEMORY[0x28223BE20](v5);
  v23 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  MEMORY[0x28223BE20](v8);
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8340, &unk_221BE57E0) + 28));
  sub_221AE8BF4(v9);
  v24 = a2;
  sub_221AE8904(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  sub_221BCCB58();
  sub_221A8C850();
  v10 = v9[8];
  v11 = v9[9];
  __swift_project_boxed_opaque_existential_0(v9 + 5, v10);
  sub_221B0BF68(v10, v11);
  v20 = a1;
  sub_221A8C93C();
  v12 = v9[10];
  v13 = *(v12 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v26 = MEMORY[0x277D84F90];
    sub_2219A33BC(0, v13, 0);
    v15 = 0;
    v14 = v26;
    v16 = v12 + 32;
    while (v15 < *(v12 + 16))
    {
      v17 = sub_221B223B4(v16, v25);
      MEMORY[0x28223BE20](v17);
      *(&v20 - 2) = v25;
      sub_221AE8904(&qword_27CFB9FB0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest.ProvidedValue, &unk_221BDD278);
      sub_221BCCB58();
      if (v2)
      {
        sub_221B2242C(v25);

        return;
      }

      sub_221B2242C(v25);
      v26 = v14;
      v19 = *(v14 + 16);
      v18 = *(v14 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_2219A33BC(v18 > 1, v19 + 1, 1);
        v14 = v26;
      }

      ++v15;
      *(v14 + 16) = v19 + 1;
      sub_221B229DC(v23, v14 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v19, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest.ProvidedValue);
      v16 += 96;
      if (v13 == v15)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    sub_221A8CB04(v14);
  }
}

void sub_221B0C7D0()
{
  OUTLINED_FUNCTION_55_4();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85E8, &unk_221BD86E0);
  OUTLINED_FUNCTION_8_1(v4);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = v1[1];
  v24 = *v1;
  KeyPath = swift_getKeyPath();
  v10 = swift_getKeyPath();

  v11 = sub_221AE9C28(KeyPath, v10);
  v22 = v12;
  v23 = v11;

  v13 = v1[2];
  v14 = sub_2219A1D20(0, &unk_27CFBB6E0, 0x277D23860);
  v15 = swift_getKeyPath();
  v16 = swift_getKeyPath();

  sub_221AE9C84(v15, v16, type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage);

  v17 = sub_221B0F228(v7);
  sub_2219A1CC8(v7, &qword_27CFB85E8, &unk_221BD86E0);
  v18 = v23;
  *v3 = v24;
  v3[1] = v8;
  v19 = v22;
  v3[2] = v18;
  v3[3] = v19;
  v3[4] = v13;
  if (v17)
  {
    v20 = &protocol witness table for LNImage;
  }

  else
  {
    v14 = 0;
    v20 = 0;
  }

  sub_221B22C2C(v1, type metadata accessor for AppIntentsProtobuf_DisplayRepresentation);
  v3[5] = v17;
  v3[6] = 0;
  v3[7] = 0;
  v3[8] = v14;
  v3[9] = v20;
  OUTLINED_FUNCTION_239_2();
  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221B0C99C(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19[-v6];
  v8 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentation(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = a2;
  sub_221AE8904(&qword_27CFB9870, type metadata accessor for AppIntentsProtobuf_DisplayRepresentation, &unk_221BDA488);
  sub_221BCCB58();
  v11 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest.ProvidedValue(0) + 24);
  sub_2219A1CC8(a1 + v11, &qword_27CFB9C78, &qword_221BDB0F8);
  sub_221B229DC(v10, a1 + v11, type metadata accessor for AppIntentsProtobuf_DisplayRepresentation);
  __swift_storeEnumTagSinglePayload(a1 + v11, 0, 1, v8);
  KeyPath = swift_getKeyPath();
  v13 = *(a2 + 80);
  if (v13)
  {
    v14 = type metadata accessor for AppIntentsProtobuf_Value(0);
    MEMORY[0x28223BE20](v14);
    *&v19[-16] = v13;
    sub_221AE8904(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value, &unk_221BD8F70);
    sub_221BCCB58();
    if (v2)
    {
    }

    v17 = v7;
    v18 = 0;
    v16 = v14;
  }

  else
  {
    v16 = type metadata accessor for AppIntentsProtobuf_Value(0);
    v17 = v7;
    v18 = 1;
  }

  __swift_storeEnumTagSinglePayload(v17, v18, 1, v16);
  sub_221B0B154(KeyPath, v7);

  result = sub_2219A1CC8(v7, &unk_27CFBB660, &qword_221BE4610);
  *a1 = *(a2 + 88);
  return result;
}

id sub_221B0CC78(uint64_t *a1)
{
  v2 = (a1 + *(type metadata accessor for AppIntentsProtobuf_ViewSnippet(0) + 36));
  v3 = v2[1];
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  v6 = sub_221AE9C28(KeyPath, v5);
  v8 = v7;

  v9 = swift_getKeyPath();
  v10 = swift_getKeyPath();
  v11 = sub_221AE9C28(v9, v10);
  v13 = v12;

  if (v3 >> 60 == 15)
  {
    v14 = *a1;
    v15 = a1[1];
    objc_allocWithZone(MEMORY[0x277D23CE8]);
    sub_2219EBFC8(v14, v15);
    return sub_221B21BB4(v6, v8, v11, v13, v14, v15);
  }

  else
  {
    v17 = *v2;
    v18 = v2[1];
    if (v18 >> 60 == 15)
    {
      v19 = 0;
    }

    else
    {
      v19 = *v2;
    }

    v20 = 0xC000000000000000;
    if (v18 >> 60 != 15)
    {
      v20 = v2[1];
    }

    v27 = v20;
    v28 = v19;
    v21 = swift_getKeyPath();
    v22 = swift_getKeyPath();
    sub_2219EBFB4(v17, v18);
    v23 = sub_221AE9C28(v21, v22);
    v25 = v24;

    v26 = objc_allocWithZone(MEMORY[0x277D23CE8]);
    return sub_221B21AA0(v6, v8, v11, v13, v28, v27, v23, v25);
  }
}

uint64_t sub_221B0CE4C(uint64_t a1, uint64_t a2)
{
  v36 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest.ProvidedOption(0);
  v31 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9920, &unk_221BDADC0);
  MEMORY[0x28223BE20](v7 - 8);
  v30 = &v28 - v8;
  v9 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  MEMORY[0x28223BE20](v9);
  v10 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93F0, &unk_221BD2E00) + 28);
  sub_221AE8CF0(v10);
  v32 = a2;
  sub_221AE8904(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  sub_221BCCB58();
  sub_221A8CD4C();
  v29 = v10;
  v11 = *(v10 + 40);
  v12 = *(v11 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v28 = a1;
    v33[0] = MEMORY[0x277D84F90];
    sub_2219A3414(0, v12, 0);
    v13 = v33[0];
    v14 = sub_221AE8904(&unk_27CFBB870, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest.ProvidedOption, &unk_221BDCFA8);
    v15 = v11 + 56;
    do
    {
      v16 = *(v15 - 8);
      *&v17 = MEMORY[0x28223BE20](v14);
      *(&v28 - 2) = v17;
      *(&v28 - 2) = v16;
      *(&v28 - 8) = v18;

      sub_221BCCB58();

      v33[0] = v13;
      v20 = *(v13 + 16);
      v19 = *(v13 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_2219A3414(v19 > 1, v20 + 1, 1);
        v13 = v33[0];
      }

      *(v13 + 16) = v20 + 1;
      v14 = sub_221B229DC(v6, v13 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v20, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest.ProvidedOption);
      v15 += 32;
      --v12;
    }

    while (v12);
  }

  sub_221A8D210(v13);
  KeyPath = swift_getKeyPath();
  sub_2219A02E8(v29 + 48, v33, &unk_27CFB93B0, &qword_221BD1D70);
  v22 = v34;
  v23 = v30;
  if (v34)
  {
    v24 = v35;
    __swift_project_boxed_opaque_existential_0(v33, v34);
    sub_221B0D2F4(v22, v24);
    if (v2)
    {

      return __swift_destroy_boxed_opaque_existential_0(v33);
    }

    v27 = type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
    __swift_storeEnumTagSinglePayload(v23, 0, 1, v27);
    __swift_destroy_boxed_opaque_existential_0(v33);
  }

  else
  {
    sub_2219A1CC8(v33, &unk_27CFB93B0, &qword_221BD1D70);
    v26 = type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
    __swift_storeEnumTagSinglePayload(v23, 1, 1, v26);
  }

  sub_221B0B310(KeyPath, v23);

  return sub_2219A1CC8(v23, &qword_27CFB9920, &unk_221BDADC0);
}

uint64_t sub_221B0D2F4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
  sub_221AE8904(&qword_27CFB9698, type metadata accessor for AppIntentsProtobuf_ViewSnippet, &unk_221BD8CA0);
  return sub_221BCCB58();
}

uint64_t sub_221B0D3B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v8 = a5;

  v9 = sub_221BCD578();
  v11 = v10;

  *a1 = a2;
  *(a1 + 8) = v9;
  if (a5)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  if (v8 == 2)
  {
    v13 = 0;
  }

  *(a1 + 16) = v11;
  *(a1 + 24) = v13;
  *(a1 + 32) = 1;
  return result;
}

uint64_t sub_221B0D460(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppIntentsProtobuf_ValueType(0);
  MEMORY[0x28223BE20](v4);
  v20 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
  MEMORY[0x28223BE20](v6 - 8);
  v7 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  MEMORY[0x28223BE20](v7);
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93E0, &unk_221BD2DF0) + 28));
  sub_221AE8DEC((v8 + 2));
  v9 = v2;
  v11 = v8[13];
  v10 = v8[14];

  sub_221A8D874(v11, v10);
  v19 = a2;
  sub_221AE8904(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  sub_221BCCB58();
  sub_221A8D4C0();
  v12 = v8[10];
  v13 = v8[11];
  __swift_project_boxed_opaque_existential_0(v8 + 7, v12);
  sub_221B0BF68(v12, v13);
  sub_221A8D69C();
  v15 = *v8;
  v14 = v8[1];

  sub_221A8D5AC(v15, v14);
  v18 = v8[12];
  sub_221AE8904(&qword_27CFB96B8, type metadata accessor for AppIntentsProtobuf_ValueType, &unk_221BD8E08);
  result = sub_221BCCB58();
  if (!v9)
  {
    return sub_221A8D780();
  }

  return result;
}

uint64_t sub_221B0D72C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_221A8BAF8(v1, v2);
}

uint64_t sub_221B0D76C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a3)
  {
    v8 = (a1 + *(type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0) + 20));

    *v8 = a2;
    v8[1] = a3;
  }

  result = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  v10 = a1 + *(result + 24);
  *v10 = a4 << 23 >> 31;
  *(v10 + 4) = 0;
  if (a4 != 2)
  {
    *(a1 + *(result + 28)) = a4;
  }

  return result;
}

uint64_t sub_221B0D828(void *a1)
{
  if (*(v1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_221AEC6EC(a1, *v1, *(v1 + 8), v2 | *(v1 + 16));
}

uint64_t sub_221B0D874()
{
  if (*(v0 + 17))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_221AEE2C8(*v0, *(v0 + 8), v1 | *(v0 + 16));
}

uint64_t sub_221B0D8A8(void *a1, uint64_t *a2)
{
  AppDescription = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success.ProtectionState(0);
  MEMORY[0x28223BE20](AppDescription);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *a2;
  v7 = a2[1];

  *a1 = v8;
  a1[1] = v7;
  v9 = *(a2 + 33);
  v12[16] = *(a2 + 32);
  v12[17] = v9;
  sub_221AE8904(&qword_27CFB9D90, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success.ProtectionState, &unk_221BDB4C8);
  sub_221BCCB58();
  v10 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success(0) + 24);
  sub_2219A1CC8(a1 + v10, &qword_27CFBB620, &qword_221BE0DC0);
  sub_221B229DC(v6, a1 + v10, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success.ProtectionState);
  return __swift_storeEnumTagSinglePayload(a1 + v10, 0, 1, AppDescription);
}

uint64_t sub_221B0DA68@<X0>(uint64_t *a1@<X8>)
{
  v17 = a1;
  v2 = type metadata accessor for AppIntentsProtobuf_ValueType(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB95E0, &qword_221BE0A10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  KeyPath = swift_getKeyPath();
  v12 = swift_getKeyPath();
  sub_221AE9C84(KeyPath, v12, type metadata accessor for AppIntentsProtobuf_ValueType);

  sub_2219A02E8(v10, v7, &qword_27CFB95E0, &qword_221BE0A10);
  if (__swift_getEnumTagSinglePayload(v7, 1, v2) == 1)
  {
    result = sub_2219A1CC8(v10, &qword_27CFB95E0, &qword_221BE0A10);
    v14 = 0;
  }

  else
  {
    sub_221B229DC(v7, v4, type metadata accessor for AppIntentsProtobuf_ValueType);
    sub_221B14BC4(*v4, v4[1], &unk_27CFBB670, 0x277D23960);
    v14 = v15;
    sub_2219A1CC8(v10, &qword_27CFB95E0, &qword_221BE0A10);
    result = sub_221B22C2C(v4, type metadata accessor for AppIntentsProtobuf_ValueType);
    if (v1)
    {
      return result;
    }
  }

  *v17 = v14;
  return result;
}

id sub_221B0DE28(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = sub_221BCD358();
  v6 = [objc_opt_self() protocolOrNilWithIdentifier_];
  if (!v6)
  {
    sub_2219A1218(0, v4, v5);
    swift_allocError();
    *v7 = v2;
    *(v7 + 8) = v1;
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    *(v7 + 32) = 4;
    swift_willThrow();
  }

  return v6;
}

void sub_221B0DEE4(uint64_t *a1, void *a2)
{
  v3 = v2;
  v74 = type metadata accessor for AppIntentsProtobuf_SystemProtocol(0);
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v72 = v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppIntentsProtobuf_ValueType(0);
  MEMORY[0x28223BE20](v7);
  v9 = v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for AppIntentsProtobuf_Property(0);
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v94 = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2[3];
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, v11);
  (*(v12 + 8))(&v79, v11, v12);
  v13 = v79;
  v14 = v80;
  sub_2219982C4(v81, v82);

  a1[3] = v13;
  a1[4] = v14;
  v15 = a2[3];
  v16 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, v15);
  v17 = (*(v16 + 16))(v15, v16);
  v19 = v18;

  *a1 = v17;
  a1[1] = v19;
  v20 = a2[3];
  v21 = a2[4];
  v71 = a2;
  __swift_project_boxed_opaque_existential_0(a2, v20);
  v22 = (*(v21 + 24))(v20, v21);
  v23 = *(v22 + 16);
  if (v23)
  {
    v69 = v7;
    v70 = a1;
    v91[0] = MEMORY[0x277D84F90];
    v75 = v23;
    sub_2219A32B4(0, v23, 0);
    v25 = 0;
    v26 = 32;
    v27 = v91[0];
    while (v25 < *(v22 + 16))
    {
      v28 = *(v22 + v26);
      v29 = *(v22 + v26 + 16);
      v93 = *(v22 + v26 + 32);
      v92[0] = v28;
      v92[1] = v29;
      MEMORY[0x28223BE20](v24);
      v66[-2] = v30;
      sub_221B21DAC(v92, &v79);
      sub_221AE8904(&unk_27CFBB6A0, type metadata accessor for AppIntentsProtobuf_Property, &unk_221BD9678);
      sub_221BCCB58();
      if (v3)
      {

        sub_221B21E08(v92);

        return;
      }

      sub_221B21E08(v92);
      v91[0] = v27;
      v32 = *(v27 + 16);
      v31 = *(v27 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_2219A32B4(v31 > 1, v32 + 1, 1);
        v27 = v91[0];
      }

      ++v25;
      *(v27 + 16) = v32 + 1;
      v24 = sub_221B229DC(v94, v27 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + v76[9] * v32, type metadata accessor for AppIntentsProtobuf_Property);
      v26 += 40;
      v3 = 0;
      if (v75 == v25)
      {

        a1 = v70;
        v7 = v69;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

  v27 = MEMORY[0x277D84F90];
LABEL_11:

  a1[2] = v27;
  sub_2219A1B08(v71, v91);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8098, qword_221BD38F0);
  if (swift_dynamicCast())
  {
    v33 = v81;
    v34 = v82;

    sub_2219982C4(v33, v34);

    v35 = a1 + *(type metadata accessor for AppIntentsProtobuf_Action(0) + 36);
    *v35 = 0;
    *(v35 + 4) = 1;
LABEL_35:
    __swift_destroy_boxed_opaque_existential_0(v91);
    return;
  }

  v36 = swift_dynamicCast();
  if (!v36)
  {
    sub_221A00FEC(v36, v37, v38);
    swift_allocError();
    *v50 = 0u;
    *(v50 + 16) = 0u;
    *(v50 + 32) = 4;
    swift_willThrow();
    goto LABEL_35;
  }

  v66[1] = v80;
  v67 = v81;
  v68 = v82;
  v71 = v83;
  v69 = v84;
  v39 = v85;
  v40 = v86;
  v41 = v87;
  v75 = v88;
  v76 = v89;
  v42 = v90;
  v43 = type metadata accessor for AppIntentsProtobuf_Action(0);
  v44 = v43;
  v45 = a1 + *(v43 + 36);
  *v45 = 1;
  *(v45 + 4) = 1;
  v77 = v40;
  if (v40)
  {
    v46 = (a1 + *(v43 + 40));

    v47 = v77;
    *v46 = v39;
    v46[1] = v47;
  }

  *(a1 + v44[11]) = v41;
  v48 = v76;
  v94 = v42;
  if (v76)
  {
    MEMORY[0x28223BE20](v43);
    v66[-2] = v48;
    sub_221AE8904(&qword_27CFB96B8, type metadata accessor for AppIntentsProtobuf_ValueType, &unk_221BD8E08);
    v49 = v48;
    sub_221BCCB58();
    if (v3)
    {

      sub_2219982C4(v67, v68);

      goto LABEL_35;
    }

    v51 = v44[13];
    sub_2219A1CC8(a1 + v51, &qword_27CFB95E0, &qword_221BE0A10);
    sub_221B229DC(v9, a1 + v51, type metadata accessor for AppIntentsProtobuf_ValueType);
    __swift_storeEnumTagSinglePayload(a1 + v51, 0, 1, v7);

    v42 = v94;
  }

  v52 = v75;
  if (v75)
  {
    v53 = sub_221BCE2D8();
    v54 = a1 + v44[12];
    *v54 = v53;
    v54[8] = 0;
  }

  v55 = sub_2219A69A0();
  if (!v55)
  {

    sub_2219982C4(v67, v68);

    v58 = MEMORY[0x277D84F90];
LABEL_34:

    a1[5] = v58;
    goto LABEL_35;
  }

  v56 = v55;
  v70 = a1;
  v78 = MEMORY[0x277D84F90];
  sub_2219A346C(0, v55 & ~(v55 >> 63), 0);
  if ((v56 & 0x8000000000000000) == 0)
  {
    v57 = 0;
    v58 = v78;
    v59 = v42 & 0xC000000000000001;
    do
    {
      if (v59)
      {
        v60 = MEMORY[0x223DA3BF0](v57, v42);
      }

      else
      {
        v60 = *(v42 + 8 * v57 + 32);
      }

      v61 = v60;
      MEMORY[0x28223BE20](v60);
      v66[-2] = v62;
      sub_221AE8904(&unk_27CFBB6B0, type metadata accessor for AppIntentsProtobuf_SystemProtocol, &unk_221BD9240);
      v63 = v72;
      sub_221BCCB58();

      v78 = v58;
      v65 = *(v58 + 16);
      v64 = *(v58 + 24);
      if (v65 >= v64 >> 1)
      {
        sub_2219A346C(v64 > 1, v65 + 1, 1);
        v58 = v78;
      }

      ++v57;
      *(v58 + 16) = v65 + 1;
      sub_221B229DC(v63, v58 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v65, type metadata accessor for AppIntentsProtobuf_SystemProtocol);
      v42 = v94;
    }

    while (v56 != v57);

    sub_2219982C4(v67, v68);

    a1 = v70;
    goto LABEL_34;
  }

LABEL_37:
  __break(1u);
}

void sub_221B0EA2C(void *a1, char a2, void *a3, uint64_t a4)
{
  v37 = a4;
  v7 = type metadata accessor for AppIntentsProtobuf_Value(0);
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x28223BE20](v7);
  v38 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_221BCC558();
  v12 = *(v33 - 1);
  MEMORY[0x28223BE20](v33);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AppIntentsProtobuf_AsyncSequenceElementPage(0);
  *(a1 + *(v15 + 32)) = a2;
  v16 = a3;
  v17 = [a3 iteratorIdentifier];
  v18 = [v17 longLongValue];

  *a1 = v18;
  v19 = [v16 sequenceIdentifier];
  sub_221BCC528();

  v39 = v14;
  sub_221AE8904(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  v20 = v34;
  sub_221BCCB58();
  (*(v12 + 8))(v14, v33);
  v21 = *(v15 + 28);
  sub_2219A1CC8(a1 + v21, &qword_27CFB9988, &qword_221BDAE20);
  sub_221B229DC(v11, a1 + v21, type metadata accessor for AppIntentsProtobuf_UUID);
  __swift_storeEnumTagSinglePayload(a1 + v21, 0, 1, v9);
  v22 = sub_2219A69A0();
  v23 = MEMORY[0x277D84F90];
  if (v22)
  {
    v24 = v22;
    v40 = MEMORY[0x277D84F90];
    sub_2219A325C(0, v22 & ~(v22 >> 63), 0);
    if ((v24 & 0x8000000000000000) == 0)
    {
      v33 = a1;
      v25 = 0;
      v23 = v40;
      v26 = v37 & 0xC000000000000001;
      v34 = v37 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v27 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v26)
        {
          v28 = MEMORY[0x223DA3BF0](v25, v37);
        }

        else
        {
          if (v25 >= *(v34 + 16))
          {
            goto LABEL_17;
          }

          v28 = *(v37 + 8 * v25 + 32);
        }

        v29 = v28;
        MEMORY[0x28223BE20](v28);
        *(&v33 - 2) = v30;
        sub_221AE8904(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value, &unk_221BD8F70);
        sub_221BCCB58();
        if (v20)
        {

          return;
        }

        v40 = v23;
        v32 = *(v23 + 16);
        v31 = *(v23 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_2219A325C(v31 > 1, v32 + 1, 1);
          v23 = v40;
        }

        *(v23 + 16) = v32 + 1;
        sub_221B229DC(v38, v23 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v32, type metadata accessor for AppIntentsProtobuf_Value);
        ++v25;
        if (v27 == v24)
        {
          a1 = v33;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    a1[1] = v23;
  }
}

uint64_t sub_221B0EEE4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_221A70974(v1, v2);
}

uint64_t sub_221B0EF24(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for AppIntentsProtobuf_DynamicOptionsSection(0);
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  if (*a2)
  {

    *a1 = v9;
  }

  v10 = a2[2];
  if (v10)
  {
    v11 = a2[1];
    v12 = (a1 + *(type metadata accessor for AppIntentsProtobuf_DynamicOptionsResult(0) + 28));

    *v12 = v11;
    v12[1] = v10;
  }

  v26 = a2;
  v27 = a1;
  v13 = a2[3];
  v14 = *(v13 + 16);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v32 = MEMORY[0x277D84F90];
    sub_2219A34C4(0, v14, 0);
    v15 = v32;
    v16 = &qword_27CFB7808;
    v17 = v13 + 32;
    while (1)
    {
      v18 = sub_2219A02E8(v17, v31, v16, &qword_221BD1840);
      MEMORY[0x28223BE20](v18);
      *(&v25 - 2) = v31;
      sub_221AE8904(&unk_27CFBB700, type metadata accessor for AppIntentsProtobuf_DynamicOptionsSection, &unk_221BDA050);
      sub_221BCCB58();
      if (v3)
      {
        break;
      }

      v30 = 0;
      v19 = v16;
      sub_2219A1CC8(v31, v16, &qword_221BD1840);
      v32 = v15;
      v21 = *(v15 + 16);
      v20 = *(v15 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_2219A34C4(v20 > 1, v21 + 1, 1);
        v15 = v32;
      }

      *(v15 + 16) = v21 + 1;
      sub_221B229DC(v8, v15 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v21, type metadata accessor for AppIntentsProtobuf_DynamicOptionsSection);
      v17 += 80;
      --v14;
      v16 = v19;
      v3 = v30;
      if (!v14)
      {
        goto LABEL_11;
      }
    }

    sub_2219A1CC8(v31, &qword_27CFB7808, &qword_221BD1840);
  }

  else
  {
LABEL_11:
    v22 = v27;

    v22[1] = v15;
    v23 = *(v26 + 32);
    result = type metadata accessor for AppIntentsProtobuf_DynamicOptionsResult(0);
    *(v22 + *(result + 32)) = v23;
  }

  return result;
}

id sub_221B0F228(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85E8, &unk_221BD86E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25 - v3;
  v5 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2219A02E8(a1, v4, &qword_27CFB85E8, &unk_221BD86E0);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_2219A1CC8(v4, &qword_27CFB85E8, &unk_221BD86E0);
    return 0;
  }

  result = sub_221B229DC(v4, v7, type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage);
  v10 = &v7[v5[6]];
  if (v10[8])
  {
    v11 = 0;
  }

  else
  {
    v11 = *v10;
    if ((*v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_25;
    }
  }

  v12 = &v7[v5[7]];
  if (v12[8])
  {
    v13 = &v7[v5[5]];
    v14 = *v13;
    v15 = v13[1];
    if (v15 >> 60 == 15)
    {
      v16 = 0;
    }

    else
    {
      v16 = *v13;
    }

    if (v15 >> 60 == 15)
    {
      v17 = 0xC000000000000000;
    }

    else
    {
      v17 = v13[1];
    }

    sub_2219A1D20(0, &unk_27CFBB6E0, 0x277D23860);
    sub_2219EBFB4(v14, v15);
    v18 = sub_221B148E8(v16, v17, v11);
LABEL_22:
    v8 = v18;
    sub_221B22C2C(v7, type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage);
    return v8;
  }

  v19 = *v12;
  if ((*v12 & 0x8000000000000000) == 0)
  {
    v20 = &v7[v5[5]];
    v21 = *v20;
    v22 = v20[1];
    if (v22 >> 60 == 15)
    {
      v23 = 0;
    }

    else
    {
      v23 = *v20;
    }

    if (v22 >> 60 == 15)
    {
      v24 = 0xC000000000000000;
    }

    else
    {
      v24 = v20[1];
    }

    sub_2219A1D20(0, &unk_27CFBB6E0, 0x277D23860);
    sub_2219EBFB4(v21, v22);
    v18 = sub_221B14858(v23, v24, v11, v19);
    goto LABEL_22;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_221B0F494(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for AppIntentsProtobuf_DynamicOption(0);
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x28223BE20](v6);
  v43 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2219A02E8(a2, &v41, &qword_27CFB7B20, &qword_221BD15C0);
  if (v42)
  {
    sub_22198B358(&v41, v38);
    v11 = a2;
    v12 = v39;
    v13 = v40;
    __swift_project_boxed_opaque_existential_0(v38, v39);
    v14 = v13;
    a2 = v11;
    sub_221B0F918(v12, v14);
    v15 = *(type metadata accessor for AppIntentsProtobuf_DynamicOptionsSection(0) + 24);
    sub_2219A1CC8(a1 + v15, &qword_27CFB85E8, &unk_221BD86E0);
    sub_221B229DC(v10, a1 + v15, type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage);
    __swift_storeEnumTagSinglePayload(a1 + v15, 0, 1, v8);
    __swift_destroy_boxed_opaque_existential_0(v38);
  }

  else
  {
    sub_2219A1CC8(&v41, &qword_27CFB7B20, &qword_221BD15C0);
  }

  v32 = a2;
  v16 = *(a2 + 40);
  v17 = *(v16 + 16);
  v18 = MEMORY[0x277D84F90];
  if (v17)
  {
    v31 = a1;
    *&v41 = MEMORY[0x277D84F90];
    sub_2219A351C(0, v17, 0);
    v19 = 0;
    v18 = v41;
    v20 = v16 + 32;
    v33 = v17;
    v34 = v16;
    while (v19 < *(v16 + 16))
    {
      v21 = sub_2219A02E8(v20, v38, &unk_27CFBB710, &qword_221BD1850);
      MEMORY[0x28223BE20](v21);
      *(&v31 - 2) = v38;
      sub_221AE8904(&qword_27CFB9838, type metadata accessor for AppIntentsProtobuf_DynamicOption, &unk_221BDA1B8);
      sub_221BCCB58();
      if (v3)
      {
        sub_2219A1CC8(v38, &unk_27CFBB710, &qword_221BD1850);

        return;
      }

      v37 = 0;
      sub_2219A1CC8(v38, &unk_27CFBB710, &qword_221BD1850);
      *&v41 = v18;
      v23 = *(v18 + 16);
      v22 = *(v18 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_2219A351C(v22 > 1, v23 + 1, 1);
        v18 = v41;
      }

      ++v19;
      *(v18 + 16) = v23 + 1;
      sub_221B229DC(v43, v18 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v23, type metadata accessor for AppIntentsProtobuf_DynamicOption);
      v20 += 88;
      v16 = v34;
      v3 = v37;
      if (v33 == v19)
      {
        a1 = v31;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = v2;
LABEL_14:

    *a1 = v18;
    v24 = v32;
    v25 = *(v32 + 56);
    if (v25)
    {
      v26 = *(v32 + 48);
      v27 = (a1 + *(type metadata accessor for AppIntentsProtobuf_DynamicOptionsSection(0) + 28));

      *v27 = v26;
      v27[1] = v25;
    }

    v28 = *(v24 + 72);
    if (v28)
    {
      v29 = *(v24 + 64);
      v30 = (a1 + *(type metadata accessor for AppIntentsProtobuf_DynamicOptionsSection(0) + 32));

      *v30 = v29;
      v30[1] = v28;
    }
  }
}

uint64_t sub_221B0F918(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
  sub_221AE8904(&unk_27CFBB720, type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage, &unk_221BDA5F0);
  return sub_221BCCB58();
}

uint64_t sub_221B0F9D0(void *a1, void *a2)
{
  v5 = type metadata accessor for AppIntentsProtobuf_Value(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2219A02E8(a2, &v23, &qword_27CFB7B20, &qword_221BD15C0);
  if (v24)
  {
    sub_22198B358(&v23, v25);
    v11 = v26;
    v12 = v27;
    __swift_project_boxed_opaque_existential_0(v25, v26);
    sub_221B0F918(v11, v12);
    v13 = *(type metadata accessor for AppIntentsProtobuf_DynamicOption(0) + 28);
    sub_2219A1CC8(a1 + v13, &qword_27CFB85E8, &unk_221BD86E0);
    sub_221B229DC(v10, a1 + v13, type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage);
    __swift_storeEnumTagSinglePayload(a1 + v13, 0, 1, v8);
    __swift_destroy_boxed_opaque_existential_0(v25);
  }

  else
  {
    sub_2219A1CC8(&v23, &qword_27CFB7B20, &qword_221BD15C0);
  }

  *a1 = a2[5];
  v14 = a2[7];
  if (v14)
  {
    v15 = a2[6];
    v16 = (a1 + *(type metadata accessor for AppIntentsProtobuf_DynamicOption(0) + 32));

    *v16 = v15;
    v16[1] = v14;
  }

  v18 = a2[8];
  v17 = a2[9];

  a1[1] = v18;
  a1[2] = v17;
  MEMORY[0x28223BE20](v19);
  *(&v23 - 2) = v20;
  sub_221AE8904(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value, &unk_221BD8F70);
  result = sub_221BCCB58();
  if (!v2)
  {
    v22 = *(type metadata accessor for AppIntentsProtobuf_DynamicOption(0) + 36);
    sub_2219A1CC8(a1 + v22, &unk_27CFBB660, &qword_221BE4610);
    sub_221B229DC(v7, a1 + v22, type metadata accessor for AppIntentsProtobuf_Value);
    return __swift_storeEnumTagSinglePayload(a1 + v22, 0, 1, v5);
  }

  return result;
}

uint64_t sub_221B0FCDC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AppIntentsProtobuf_ConfirmationActionName(0);
  sub_221AE8904(&unk_27CFBB840, type metadata accessor for AppIntentsProtobuf_ConfirmationActionName, &unk_221BDA8E8);
  return sub_221BCCB58();
}

uint64_t sub_221B0FD94(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(void, void))
{
  v7 = a4[2](a3, a4);

  *a1 = v7;
  v8 = a4[1](a3, a4);
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    v12 = (a1 + *(type metadata accessor for AppIntentsProtobuf_ConfirmationActionName(0) + 28));

    *v12 = v10;
    v12[1] = v11;
  }

  v13 = a4[4](a3, a4);

  a1[1] = v13;
  result = a4[3](a3, a4);
  if (v15)
  {
    v16 = result;
    v17 = v15;
    v18 = (a1 + *(type metadata accessor for AppIntentsProtobuf_ConfirmationActionName(0) + 32));

    *v18 = v16;
    v18[1] = v17;
  }

  return result;
}

uint64_t sub_221B0FF0C()
{
  v1 = *(v0 + OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_catId);

  return v1;
}

uint64_t sub_221B0FFB8(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_catId);
  *v3 = a1;
  v3[1] = a2;
}

id sub_221B103E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3();
  v3 = sub_221BCD658();

  return v3;
}

id sub_221B104E0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  sub_2219A1D20(0, &qword_27CFBB838, 0x277CCABB0);
  OUTLINED_FUNCTION_284();
  v3 = sub_221BCD658();

  return v3;
}

void sub_221B10574(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  sub_2219A1D20(0, &qword_27CFBB838, 0x277CCABB0);
  v6 = sub_221BCD668();
  v7 = a1;
  a4(v6);
}

uint64_t sub_221B106CC()
{
  v1 = *(v0 + OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_visualId);

  return v1;
}

uint64_t sub_221B10788(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_visualId);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_221B10928()
{
  v1 = *(v0 + OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_visualResponse);
  sub_2219EBFB4(v1, *(v0 + OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_visualResponse + 8));
  return v1;
}

uint64_t sub_221B109F0(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_visualResponse);
  v4 = *(v2 + OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_visualResponse);
  v5 = *(v2 + OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_visualResponse + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_2219EC02C(v4, v5);
}

id sub_221B10A10(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v71 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  MEMORY[0x28223BE20](v71);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v67 - v8;
  v10 = &v1[OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_visualId];
  *v10 = 0;
  v10[1] = 0;
  v11 = OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_visualParameters;
  *&v1[OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_visualParameters] = 0;
  v12 = &v1[OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_visualResponse];
  *&v1[OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_visualResponse] = xmmword_221BD8640;
  if (*(a1 + 8) == 1 && *a1)
  {
    v68 = v10;
    v69 = v11;
    v67 = v12;
    v70 = ObjectType;
    KeyPath = swift_getKeyPath();
    v14 = swift_getKeyPath();
    v15 = sub_221AE9C28(KeyPath, v14);
    v17 = v16;

    if (v17)
    {
      v18 = v15;
    }

    else
    {
      v18 = 0;
    }

    v19 = 0xE000000000000000;
    if (v17)
    {
      v19 = v17;
    }

    v20 = &v2[OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_catId];
    *v20 = v18;
    v20[1] = v19;
    v21 = *(a1 + 16);
    *&v2[OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_captionPrint] = *(a1 + 24);
    *&v2[OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_captionSpeak] = *(a1 + 48);
    v22 = *(a1 + 88);
    *&v2[OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_dialogId] = *(a1 + 80);
    *&v2[OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_meta] = v22;
    *&v2[OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_print] = v21;
    v23 = *(a1 + 32);
    v24 = *(v23 + 16);
    if (v24)
    {
      v73 = MEMORY[0x277D84F90];

      sub_221BCDF28();
      v25 = (v23 + 32);
      do
      {
        v26 = *v25++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
        sub_221BCDEF8();
        sub_221BCDF38();
        sub_221BCDF48();
        sub_221BCDF08();
        --v24;
      }

      while (v24);
      v27 = v73;
    }

    else
    {

      v27 = MEMORY[0x277D84F90];
    }

    *&v2[OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_printOnly] = v27;
    *&v2[OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_speak] = *(a1 + 40);
    v43 = *(a1 + 56);
    v44 = *(v43 + 16);
    if (v44)
    {
      v73 = MEMORY[0x277D84F90];

      sub_221BCDF28();
      v45 = (v43 + 32);
      do
      {
        v46 = *v45++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
        sub_221BCDEF8();
        sub_221BCDF38();
        sub_221BCDF48();
        sub_221BCDF08();
        --v44;
      }

      while (v44);
      v47 = v73;
    }

    else
    {

      v47 = MEMORY[0x277D84F90];
    }

    *&v2[OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_spokenOnly] = v47;
    v48 = *(a1 + 64);
    v49 = *(v48 + 16);
    v50 = MEMORY[0x277D84F90];
    if (v49)
    {
      v73 = MEMORY[0x277D84F90];
      sub_221BCDF28();
      v51 = (v48 + 32);
      do
      {
        v52 = *v51++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
        sub_221BCDEF8();
        sub_221BCDF38();
        sub_221BCDF48();
        sub_221BCDF08();
        --v49;
      }

      while (v49);
      v50 = v73;
    }

    *&v2[OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_spokenOnlyDefined] = v50;
    v53 = swift_getKeyPath();
    v54 = swift_getKeyPath();
    v55 = sub_221AE9C28(v53, v54);
    v57 = v56;

    v58 = v68;
    *v68 = v55;
    v58[1] = v57;

    *&v2[v69] = *(a1 + 72);

    v59 = v70;
    v60 = a1 + *(v71 + 68);
    v61 = *(v60 + 8);
    if (v61 >> 60 == 15)
    {
      v62 = 0;
      v61 = 0xF000000000000000;
    }

    else
    {
      v62 = *v60;
      sub_2219EBFB4(*v60, *(v60 + 8));
    }

    v63 = v67;
    v64 = *v67;
    v65 = v67[1];
    *v67 = v62;
    v63[1] = v61;
    sub_2219EC02C(v64, v65);
    v72.receiver = v2;
    v72.super_class = v59;
    v42 = objc_msgSendSuper2(&v72, sel_init);
    sub_221B22C2C(a1, type metadata accessor for AppIntentsProtobuf_Dialog);
  }

  else
  {
    if (qword_27CFB73D0 != -1)
    {
      swift_once();
    }

    v28 = sub_221BCCD88();
    __swift_project_value_buffer(v28, qword_27CFDEEB8);
    sub_221B22BD0(a1, v9, type metadata accessor for AppIntentsProtobuf_Dialog);
    v29 = sub_221BCCD68();
    v30 = sub_221BCDA78();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v69 = v11;
      v32 = v31;
      v33 = swift_slowAlloc();
      v68 = v10;
      v34 = v33;
      v73 = v33;
      *v32 = 136315138;
      sub_221B22BD0(v9, v6, type metadata accessor for AppIntentsProtobuf_Dialog);
      v35 = sub_221BCD3D8();
      v70 = ObjectType;
      v71 = a1;
      v36 = v12;
      v37 = v35;
      v39 = v38;
      sub_221B22C2C(v9, type metadata accessor for AppIntentsProtobuf_Dialog);
      v40 = sub_2219A6360(v37, v39, &v73);

      *(v32 + 4) = v40;
      v12 = v36;
      _os_log_impl(&dword_221989000, v29, v30, "Could not deserialize unknown dialog type: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x223DA4C00](v34, -1, -1);
      MEMORY[0x223DA4C00](v32, -1, -1);

      v41 = v71;
    }

    else
    {

      sub_221B22C2C(v9, type metadata accessor for AppIntentsProtobuf_Dialog);
      v41 = a1;
    }

    sub_221B22C2C(v41, type metadata accessor for AppIntentsProtobuf_Dialog);

    sub_2219EC02C(*v12, *(v12 + 1));
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v42;
}

unint64_t sub_221B112E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBB0E0;
  if (!qword_27CFBB0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB0E0);
  }

  return result;
}

unint64_t sub_221B1133C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBB0E8;
  if (!qword_27CFBB0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB0E8);
  }

  return result;
}

unint64_t sub_221B1144C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBB100;
  if (!qword_27CFBB100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB100);
  }

  return result;
}

unint64_t sub_221B114A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBB108;
  if (!qword_27CFBB108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB108);
  }

  return result;
}

unint64_t sub_221B115B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBB130;
  if (!qword_27CFBB130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB130);
  }

  return result;
}

unint64_t sub_221B1160C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBB138;
  if (!qword_27CFBB138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB138);
  }

  return result;
}

unint64_t sub_221B11724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBB160;
  if (!qword_27CFBB160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB160);
  }

  return result;
}

unint64_t sub_221B11778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBB168;
  if (!qword_27CFBB168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB168);
  }

  return result;
}

unint64_t sub_221B11890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBB190;
  if (!qword_27CFBB190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB190);
  }

  return result;
}

unint64_t sub_221B118E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBB198;
  if (!qword_27CFBB198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB198);
  }

  return result;
}

uint64_t sub_221B119C8(uint64_t a1)
{
  *(a1 + 8) = sub_221AE8904(&qword_27CFBB1C0, type metadata accessor for AppIntentsProtocol.PerformAction.UnknownRequestResponse, &unk_221BE3140);
  result = sub_221AE8904(&qword_27CFBB1C8, type metadata accessor for AppIntentsProtocol.PerformAction.UnknownRequestResponse, &unk_221BE3100);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_221B11ADC(uint64_t a1)
{
  *(a1 + 8) = sub_221AE8904(&qword_27CFBB1E0, type metadata accessor for AppIntentsProtocol.PerformAction.NeedsValueResponse, &unk_221BE31B8);
  result = sub_221AE8904(&qword_27CFBB1E8, type metadata accessor for AppIntentsProtocol.PerformAction.NeedsValueResponse, &unk_221BE3178);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_221B11C80(uint64_t a1)
{
  *(a1 + 8) = sub_221AE8904(&qword_27CFBB210, type metadata accessor for AppIntentsProtocol.PerformAction.ChoiceResponse, &unk_221BE3230);
  result = sub_221AE8904(&qword_27CFBB218, type metadata accessor for AppIntentsProtocol.PerformAction.ChoiceResponse, &unk_221BE31F0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_221B11E24(uint64_t a1)
{
  *(a1 + 8) = sub_221AE8904(&qword_27CFBB240, type metadata accessor for AppIntentsProtocol.PerformAction.DisambiguationResponse, &unk_221BE32A8);
  result = sub_221AE8904(&qword_27CFBB248, type metadata accessor for AppIntentsProtocol.PerformAction.DisambiguationResponse, &unk_221BE3268);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_221B11FC8(uint64_t a1)
{
  *(a1 + 8) = sub_221AE8904(&qword_27CFBB270, type metadata accessor for AppIntentsProtocol.PerformAction.ContinueInAppResponse, &unk_221BE3320);
  result = sub_221AE8904(&qword_27CFBB278, type metadata accessor for AppIntentsProtocol.PerformAction.ContinueInAppResponse, &unk_221BE32E0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_221B120DC(uint64_t a1)
{
  *(a1 + 8) = sub_221AE8904(&qword_27CFBB2A0, type metadata accessor for AppIntentsProtocol.PerformAction.ConfirmationResponse, &unk_221BE3398);
  result = sub_221AE8904(&qword_27CFBB2A8, type metadata accessor for AppIntentsProtocol.PerformAction.ConfirmationResponse, &unk_221BE3358);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_221B121F0(uint64_t a1)
{
  *(a1 + 8) = sub_221AE8904(&qword_27CFBB2C0, type metadata accessor for AppIntentsProtocol.PerformAction.ActionConfirmationResponse, &unk_221BE3410);
  result = sub_221AE8904(&qword_27CFBB2C8, type metadata accessor for AppIntentsProtocol.PerformAction.ActionConfirmationResponse, &unk_221BE33D0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_221B12394(uint64_t a1)
{
  *(a1 + 8) = sub_221AE8904(&qword_27CFBB2F0, type metadata accessor for AppIntentsProtocol.PerformAction.Response, &unk_221BE3488);
  result = sub_221AE8904(&qword_27CFBB2F8, type metadata accessor for AppIntentsProtocol.PerformAction.Response, &unk_221BE3448);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_221B12538(uint64_t a1)
{
  *(a1 + 8) = sub_221AE8904(&qword_27CFBB320, type metadata accessor for AppIntentsProtocol.PerformAction.Request, &unk_221BE3500);
  result = sub_221AE8904(&qword_27CFBB328, type metadata accessor for AppIntentsProtocol.PerformAction.Request, &unk_221BE34C0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_221B126DC(uint64_t a1)
{
  *(a1 + 8) = sub_221AE8904(&qword_27CFBB350, type metadata accessor for AppIntentsProtocol.Notifications.StopObservingRequest, &unk_221BE3578);
  result = sub_221AE8904(&qword_27CFBB358, type metadata accessor for AppIntentsProtocol.Notifications.StopObservingRequest, &unk_221BE3538);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_221B12880(uint64_t a1)
{
  *(a1 + 8) = sub_221AE8904(&qword_27CFBB380, type metadata accessor for AppIntentsProtocol.Notifications.StartObservingResponse, &unk_221BE35F0);
  result = sub_221AE8904(&qword_27CFBB388, type metadata accessor for AppIntentsProtocol.Notifications.StartObservingResponse, &unk_221BE35B0);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_221B129C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBB3B0;
  if (!qword_27CFBB3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB3B0);
  }

  return result;
}

unint64_t sub_221B12A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBB3B8;
  if (!qword_27CFBB3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB3B8);
  }

  return result;
}

uint64_t sub_221B12B90(uint64_t a1)
{
  *(a1 + 8) = sub_221AE8904(&qword_27CFBB3E0, type metadata accessor for AppIntentsProtocol.Notifications.RestartObservingRequest, &unk_221BE36E0);
  result = sub_221AE8904(&qword_27CFBB3E8, type metadata accessor for AppIntentsProtocol.Notifications.RestartObservingRequest, &unk_221BE36A0);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_221B12CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBB410;
  if (!qword_27CFBB410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB410);
  }

  return result;
}

unint64_t sub_221B12D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBB418;
  if (!qword_27CFBB418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB418);
  }

  return result;
}

unint64_t sub_221B12E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBB440;
  if (!qword_27CFBB440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB440);
  }

  return result;
}

unint64_t sub_221B12E98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBB448;
  if (!qword_27CFBB448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB448);
  }

  return result;
}

unint64_t sub_221B12FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBB470;
  if (!qword_27CFBB470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB470);
  }

  return result;
}

unint64_t sub_221B13004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBB478;
  if (!qword_27CFBB478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB478);
  }

  return result;
}

unint64_t sub_221B1311C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBB4A0;
  if (!qword_27CFBB4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB4A0);
  }

  return result;
}

unint64_t sub_221B13170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBB4A8;
  if (!qword_27CFBB4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB4A8);
  }

  return result;
}

uint64_t sub_221B132E4(uint64_t a1)
{
  *(a1 + 8) = sub_221AE8904(&qword_27CFBB4D0, type metadata accessor for AppIntentsProtocol.FetchFileChunk.Request, &unk_221BE3938);
  result = sub_221AE8904(&qword_27CFBB4D8, type metadata accessor for AppIntentsProtocol.FetchFileChunk.Request, &unk_221BE38F8);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_221B1342C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBB500;
  if (!qword_27CFBB500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB500);
  }

  return result;
}

unint64_t sub_221B13480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBB508;
  if (!qword_27CFBB508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB508);
  }

  return result;
}

unint64_t sub_221B13598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBB530;
  if (!qword_27CFBB530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB530);
  }

  return result;
}

unint64_t sub_221B135EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBB538;
  if (!qword_27CFBB538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB538);
  }

  return result;
}

unint64_t sub_221B13704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBB560;
  if (!qword_27CFBB560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB560);
  }

  return result;
}

unint64_t sub_221B13758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBB568;
  if (!qword_27CFBB568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB568);
  }

  return result;
}

unint64_t sub_221B13870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBB590;
  if (!qword_27CFBB590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB590);
  }

  return result;
}

unint64_t sub_221B138C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBB598;
  if (!qword_27CFBB598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB598);
  }

  return result;
}

unint64_t sub_221B139DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBB5C0;
  if (!qword_27CFBB5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB5C0);
  }

  return result;
}

unint64_t sub_221B13A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBB5C8;
  if (!qword_27CFBB5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB5C8);
  }

  return result;
}

uint64_t sub_221B13B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_221B13B84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBB5F0;
  if (!qword_27CFBB5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB5F0);
  }

  return result;
}

unint64_t sub_221B13BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBB5F8;
  if (!qword_27CFBB5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB5F8);
  }

  return result;
}

uint64_t sub_221B13C6C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v11 = 1;
  *(v11 + 8) = 1;
  v14 = (*(v12 + 24))(v13, v12, v8);
  v16 = v15;
  v95 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  v17 = (a1 + v95[19]);

  *v17 = v14;
  v17[1] = v16;
  (*(v7 + 16))(v10, a2, a3);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  v19 = v93;
  if (!v93)
  {
  }

  v90[0] = v94;
  v90[1] = v3;
  v20 = [swift_unknownObjectRetain() catId];
  v21 = sub_221BCD388();
  v23 = v22;

  v24 = (a1 + v95[18]);

  *v24 = v21;
  v24[1] = v23;
  v25 = [v19 captionPrint];
  v26 = sub_221BCD668();

  a1[3] = v26;
  v27 = [v19 captionSpeak];
  v28 = sub_221BCD668();

  a1[6] = v28;
  v29 = [v19 dialogId];
  v30 = sub_221BCD668();

  a1[10] = v30;
  v31 = [v19 meta];
  v32 = sub_221BCD298();

  a1[11] = v32;
  v33 = [v19 print];
  v34 = sub_221BCD668();

  v92 = a1;
  a1[2] = v34;
  v35 = [v19 printOnly];
  v90[2] = sub_2219A1D20(0, &qword_27CFBB838, 0x277CCABB0);
  v36 = sub_221BCD668();

  v37 = sub_2219A69A0();
  v38 = MEMORY[0x277D84F90];
  v91 = v19;
  if (v37)
  {
    v39 = v37;
    v93 = MEMORY[0x277D84F90];
    result = sub_2219A3574(0, v37 & ~(v37 >> 63), 0);
    if (v39 < 0)
    {
      __break(1u);
      goto LABEL_47;
    }

    v40 = 0;
    v41 = v93;
    do
    {
      if ((v36 & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x223DA3BF0](v40, v36);
      }

      else
      {
        v42 = *(v36 + 8 * v40 + 32);
      }

      v43 = v42;
      v44 = [v42 intValue];

      v93 = v41;
      v46 = v41[2];
      v45 = v41[3];
      if (v46 >= v45 >> 1)
      {
        sub_2219A3574((v45 > 1), v46 + 1, 1);
        v41 = v93;
      }

      ++v40;
      v41[2] = v46 + 1;
      *(v41 + v46 + 8) = v44;
    }

    while (v39 != v40);

    v38 = MEMORY[0x277D84F90];
  }

  else
  {

    v41 = MEMORY[0x277D84F90];
  }

  v47 = v92;

  v47[4] = v41;
  v48 = v91;
  v49 = [v91 speak];
  v50 = sub_221BCD668();

  v47[5] = v50;
  v51 = [v48 spokenOnly];
  v52 = sub_221BCD668();

  v53 = sub_2219A69A0();
  if (!v53)
  {

    v56 = MEMORY[0x277D84F90];
    goto LABEL_26;
  }

  v54 = v53;
  v93 = v38;
  result = sub_2219A3574(0, v53 & ~(v53 >> 63), 0);
  if (v54 < 0)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v55 = 0;
  v56 = v93;
  do
  {
    if ((v52 & 0xC000000000000001) != 0)
    {
      v57 = MEMORY[0x223DA3BF0](v55, v52);
    }

    else
    {
      v57 = *(v52 + 8 * v55 + 32);
    }

    v58 = v57;
    v59 = [v57 intValue];

    v93 = v56;
    v61 = v56[2];
    v60 = v56[3];
    if (v61 >= v60 >> 1)
    {
      sub_2219A3574((v60 > 1), v61 + 1, 1);
      v56 = v93;
    }

    ++v55;
    v56[2] = v61 + 1;
    *(v56 + v61 + 8) = v59;
  }

  while (v54 != v55);

  v38 = MEMORY[0x277D84F90];
LABEL_26:
  v62 = v92;

  v62[7] = v56;
  v63 = [v91 spokenOnlyDefined];
  v64 = sub_221BCD668();

  v65 = sub_2219A69A0();
  if (v65)
  {
    v66 = v65;
    v93 = v38;
    result = sub_2219A3574(0, v65 & ~(v65 >> 63), 0);
    if ((v66 & 0x8000000000000000) == 0)
    {
      v67 = 0;
      v68 = v93;
      do
      {
        if ((v64 & 0xC000000000000001) != 0)
        {
          v69 = MEMORY[0x223DA3BF0](v67, v64);
        }

        else
        {
          v69 = *(v64 + 8 * v67 + 32);
        }

        v70 = v69;
        v71 = [v69 intValue];

        v93 = v68;
        v73 = v68[2];
        v72 = v68[3];
        if (v73 >= v72 >> 1)
        {
          sub_2219A3574((v72 > 1), v73 + 1, 1);
          v68 = v93;
        }

        ++v67;
        v68[2] = v73 + 1;
        *(v68 + v73 + 8) = v71;
      }

      while (v66 != v67);

      goto LABEL_37;
    }

LABEL_48:
    __break(1u);
    return result;
  }

  v68 = MEMORY[0x277D84F90];
LABEL_37:
  v74 = v92;

  *(v74 + 64) = v68;
  v75 = v91;
  v76 = [v91 visualId];
  if (v76)
  {
    v77 = v76;
    v78 = sub_221BCD388();
    v80 = v79;

    v81 = (v74 + v95[16]);

    *v81 = v78;
    v81[1] = v80;
  }

  v82 = [v75 visualParameters];
  if (v82)
  {
    v83 = v82;
    v84 = sub_221BCD298();

    *(v74 + 72) = v84;
  }

  v85 = [v75 visualResponse];
  if (v85)
  {
    v86 = v85;
    v87 = sub_221BCC468();
    v89 = v88;
  }

  else
  {
    v87 = 0;
    v89 = 0xF000000000000000;
  }

  sub_221AE93B0(v87, v89, v74);

  swift_unknownObjectRelease_n();
  return sub_2219EC02C(v87, v89);
}

uint64_t sub_221B1442C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_221A70654(v1, v2);
}

BOOL sub_221B1446C@<W0>(_BYTE *a1@<X8>)
{
  result = sub_221A7066C();
  *a1 = result;
  return result;
}

uint64_t sub_221B144C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_221A707FC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_221B144F0(void *a1, uint64_t *a2)
{
  v4 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2[3];
  if (v7)
  {
    v8 = a2[2];
    v9 = (a1 + *(type metadata accessor for AppIntentsProtobuf_DisplayRepresentation(0) + 28));

    *v9 = v8;
    v9[1] = v7;
  }

  v10 = a2[4];

  a1[2] = v10;
  v12 = *a2;
  v11 = a2[1];

  *a1 = v12;
  a1[1] = v11;
  sub_2219A02E8((a2 + 5), &v17, &qword_27CFB7B20, &qword_221BD15C0);
  if (!v18)
  {
    return sub_2219A1CC8(&v17, &qword_27CFB7B20, &qword_221BD15C0);
  }

  sub_22198B358(&v17, v19);
  v13 = v20;
  v14 = v21;
  __swift_project_boxed_opaque_existential_0(v19, v20);
  sub_221B0F918(v13, v14);
  v15 = *(type metadata accessor for AppIntentsProtobuf_DisplayRepresentation(0) + 32);
  sub_2219A1CC8(a1 + v15, &qword_27CFB85E8, &unk_221BD86E0);
  sub_221B229DC(v6, a1 + v15, type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage);
  __swift_storeEnumTagSinglePayload(a1 + v15, 0, 1, v4);
  return __swift_destroy_boxed_opaque_existential_0(v19);
}

uint64_t sub_221B146C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentation(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(a4 + 8))(v15, a3, a4, v8);
  v14 = v15;
  sub_221AE8904(&qword_27CFB9870, type metadata accessor for AppIntentsProtobuf_DisplayRepresentation, &unk_221BDA488);
  sub_221BCCB58();
  sub_221B220F4(v15);
  v11 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest.Value(0) + 20);
  sub_2219A1CC8(a1 + v11, &qword_27CFB9C78, &qword_221BDB0F8);
  sub_221B229DC(v10, a1 + v11, type metadata accessor for AppIntentsProtobuf_DisplayRepresentation);
  return __swift_storeEnumTagSinglePayload(a1 + v11, 0, 1, v7);
}

id sub_221B14858(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = sub_221BCC448();
  v10 = [v8 initWithData:v9 renderingMode:a3 displayStyle:a4];

  sub_2219EC040(a1, a2);
  return v10;
}

id sub_221B148E8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_221BCC448();
  v8 = [v6 initWithData:v7 renderingMode:a3];

  sub_2219EC040(a1, a2);
  return v8;
}

void sub_221B14970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = *(a4 + 8);
  v7 = v19(a3, a4);
  v8 = [v7 _imageData];

  if (v8)
  {
    v9 = sub_221BCC468();
    v11 = v10;

    v12 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
    v13 = a1 + v12[5];
    sub_2219EC02C(*v13, *(v13 + 8));
    *v13 = v9;
    *(v13 + 8) = v11;
    v14 = (*(a4 + 16))(a3, a4);
    if ((v14 & 0x8000000000000000) == 0)
    {
      v15 = a1 + v12[7];
      *v15 = v14;
      *(v15 + 8) = 0;
      v16 = v19(a3, a4);
      v17 = [v16 _renderingMode];

      v18 = a1 + v12[6];
      *v18 = v17;
      *(v18 + 8) = 0;
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_221B14AB4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(a4 + 16))(a3, a4);
  v9 = v8;

  *a1 = v7;
  a1[1] = v9;
  v10 = (*(a4 + 24))(a3, a4);
  v12 = v11;

  a1[2] = v10;
  a1[3] = v12;
  return result;
}

uint64_t sub_221B14B60(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(a4 + 24))(a3, a4);
  v7 = v6;

  *a1 = v5;
  a1[1] = v7;
  return result;
}

void sub_221B14BC4(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = sub_2219A1D20(0, a3, a4);
  sub_2219A1D20(0, &qword_27CFBB628, 0x277CCAAC8);
  v6 = sub_221BCDAD8();
  if (v4)
  {
    v7 = v4;
LABEL_3:
    v8 = sub_221BCC448();
    v9 = [v8 description];

    v10 = sub_221BCD388();
    v12 = v11;

    sub_221BCDE68();

    OUTLINED_FUNCTION_226_2();
    v33 = v14;
    v35 = v13;
    v15 = OUTLINED_FUNCTION_70_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
    v17 = sub_221BCD3D8();
    MEMORY[0x223DA31F0](v17);

    MEMORY[0x223DA31F0](0x206D6F726620, 0xE600000000000000);
    MEMORY[0x223DA31F0](v10, v12);

    MEMORY[0x223DA31F0](2108704, 0xE300000000000000);
    swift_getErrorValue();
    v18 = sub_221BCE288();
    MEMORY[0x223DA31F0](v18);

    MEMORY[0x223DA31F0](34, 0xE100000000000000);
    v19 = sub_221BCC328();
    sub_221A00FEC(v19, v20, v21);
    OUTLINED_FUNCTION_15_0();
    v22 = swift_allocError();
    *v23 = v5;
    v23[1] = v33;
    v23[2] = v35;
    v23[3] = v19;
    OUTLINED_FUNCTION_193_3(v22, v23);

    return;
  }

  if (!v6)
  {
    sub_221BCDE68();

    OUTLINED_FUNCTION_226_2();
    v34 = v25 | 4;
    v36 = v24;
    v26 = OUTLINED_FUNCTION_70_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
    v28 = sub_221BCD3D8();
    MEMORY[0x223DA31F0](v28);

    sub_221A00FEC(v29, v30, v31);
    OUTLINED_FUNCTION_15_0();
    v7 = swift_allocError();
    *v32 = v5;
    v32[1] = v34;
    v32[2] = v36;
    v32[3] = 0;
    OUTLINED_FUNCTION_193_3(v7, v32);
    goto LABEL_3;
  }
}

uint64_t sub_221B14E5C(void *a1, unint64_t *a2, void *a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v49 = 0;
  v6 = [objc_opt_self() archivedDataWithRootObject:a1 requiringSecureCoding:1 error:&v49];
  v7 = v49;
  v8 = off_278482000;
  if (!v6)
  {
    v30 = v7;
    v26 = sub_221BCC338();

    swift_willThrow();
LABEL_9:
    v31 = sub_2219A1D20(0, a2, a3);
    v49 = 0;
    v50 = 0xE000000000000000;
    sub_221BCDE68();

    v49 = 0xD00000000000001ALL;
    v50 = 0x8000000221BF0600;
    v32 = a1;
    v33 = [v32 v8[467]];
    v34 = sub_221BCD388();
    v36 = v35;

    MEMORY[0x223DA31F0](v34, v36);

    MEMORY[0x223DA31F0](2108704, 0xE300000000000000);
    swift_getErrorValue();
    v37 = sub_221BCE288();
    MEMORY[0x223DA31F0](v37);

    v38 = v49;
    v39 = v50;
    v40 = sub_221BCC328();
    sub_221A00FEC(v40, v41, v42);
    OUTLINED_FUNCTION_15_0();
    swift_allocError();
    *v43 = v31;
    *(v43 + 8) = v38;
    *(v43 + 16) = v39;
    *(v43 + 24) = v40;
    *(v43 + 32) = 2;
    swift_willThrow();

    return OUTLINED_FUNCTION_69_0();
  }

  sub_221BCC468();

  v9 = OUTLINED_FUNCTION_69_0();
  if (sub_221AE9494(v9, v10))
  {
    if (qword_27CFB73D0 != -1)
    {
      OUTLINED_FUNCTION_22_11();
      swift_once();
    }

    v11 = sub_221BCCD88();
    __swift_project_value_buffer(v11, qword_27CFDEEB8);
    v12 = a1;
    v13 = sub_221BCCD68();
    v14 = sub_221BCDA78();

    if (os_log_type_enabled(v13, v14))
    {
      OUTLINED_FUNCTION_288();
      v48 = a3;
      buf = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v49 = v47;
      *buf = 136315138;
      v15 = v12;
      v16 = [v15 description];
      v17 = a2;
      v18 = sub_221BCD388();
      v45 = v14;
      v20 = v19;

      v21 = v18;
      a2 = v17;
      v22 = sub_2219A6360(v21, v20, &v49);

      *(buf + 4) = v22;
      _os_log_impl(&dword_221989000, v13, v45, "Archiving %s returned 0 bytes", buf, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      a3 = v48;
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
    }

    OUTLINED_FUNCTION_153_3();
    sub_2219ACB94(v23, v24, v25);
    OUTLINED_FUNCTION_15_0();
    v26 = swift_allocError();
    *v27 = 0xD000000000000020;
    *(v27 + 8) = v13;
    *(v27 + 16) = 3;
    swift_willThrow();
    v28 = OUTLINED_FUNCTION_69_0();
    sub_2219EC040(v28, v29);
    v8 = off_278482000;
    goto LABEL_9;
  }

  return OUTLINED_FUNCTION_69_0();
}

uint64_t sub_221B15230(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(void, void))
{
  v7 = a4[1](a3, a4);
  v9 = v8;

  *a1 = v7;
  a1[1] = v9;
  v10 = a4[3](a3, a4);
  if (v11)
  {
    v12 = v10;
    v13 = v11;
    v14 = (a1 + *(type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0) + 28));

    *v14 = v12;
    v14[1] = v13;
  }

  result = a4[2](a3, a4);
  if (v16)
  {
    v17 = result;
    v18 = v16;
    v19 = (a1 + *(type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0) + 24));

    *v19 = v17;
    v19[1] = v18;
  }

  return result;
}

uint64_t sub_221B15334@<X0>(uint64_t *a1@<X8>)
{
  v19 = a1;
  v1 = type metadata accessor for AppIntentsProtobuf_Value(0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  KeyPath = swift_getKeyPath();
  v11 = swift_getKeyPath();
  sub_221AE9C84(KeyPath, v11, type metadata accessor for AppIntentsProtobuf_Value);

  sub_2219A02E8(v9, v6, &unk_27CFBB660, &qword_221BE4610);
  if (__swift_getEnumTagSinglePayload(v6, 1, v1) == 1)
  {
    result = sub_2219A1CC8(v9, &unk_27CFBB660, &qword_221BE4610);
    v13 = 0;
  }

  else
  {
    sub_221B229DC(v6, v3, type metadata accessor for AppIntentsProtobuf_Value);
    v14 = v20;
    sub_221B14BC4(*v3, v3[1], &qword_27CFBB680, 0x277D23958);
    if (v14)
    {
      sub_221B22C2C(v3, type metadata accessor for AppIntentsProtobuf_Value);
      return sub_2219A1CC8(v9, &unk_27CFBB660, &qword_221BE4610);
    }

    v16 = v15;
    v17 = objc_allocWithZone(type metadata accessor for RemoteLNValue());
    v13 = sub_221B8267C(v16);
    sub_221B22C2C(v3, type metadata accessor for AppIntentsProtobuf_Value);
    result = sub_2219A1CC8(v9, &unk_27CFBB660, &qword_221BE4610);
  }

  *v19 = v13;
  return result;
}

void sub_221B155DC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for AppIntentsProtobuf_Value(0);
  MEMORY[0x28223BE20](v5);
  sub_221AE89FC(a2);
  sub_221AE8EE8(a2 + 40);
  sub_221AE8FE4();
  if (!v2)
  {
    v6 = *(a2 + 120);
    v7 = *(type metadata accessor for AppIntentsProtobuf_ActionOutput(0) + 20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(a1 + v7);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      type metadata accessor for AppIntentsProtobuf_ActionOutput._StorageClass(0);
      swift_allocObject();
      sub_221A72A60();
      v9 = v10;
      *(a1 + v7) = v10;
    }

    v11 = OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__shouldShowPrompt;
    swift_beginAccess();
    *(v9 + v11) = v6;
    sub_221AE8FE4();
    v12 = *(a2 + 168);
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(a1 + v7);
    if ((v13 & 1) == 0)
    {
      type metadata accessor for AppIntentsProtobuf_ActionOutput._StorageClass(0);
      swift_allocObject();
      sub_221A72A60();
      v14 = v15;
      *(a1 + v7) = v15;
    }

    v16 = v14 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__showOutputActionOptions;
    v17 = swift_beginAccess();
    *v16 = v12;
    *(v16 + 8) = 0;
    if (*(a2 + 216))
    {
      MEMORY[0x28223BE20](v17);
      v19[-2] = v18;
      sub_221AE8904(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value, &unk_221BD8F70);
      sub_221BCCB58();
      sub_221A6FB40();
    }

    sub_221AE9148(a2 + 176);
  }
}

uint64_t sub_221B158A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  *a1 = a2;
  a1[1] = a3;
  if (a5)
  {
    v11 = (a1 + *(type metadata accessor for AppIntentsProtobuf_NotificationTopic(0) + 24));

    *v11 = a4;
    v11[1] = a5;
  }

  return result;
}

uint64_t sub_221B15934(void *a1, uint64_t *a2)
{
  v5 = type metadata accessor for AppIntentsProtobuf_Value(0);
  MEMORY[0x28223BE20](v5);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  v8 = a2[1];

  *a1 = v9;
  a1[1] = v8;
  if (a2[2])
  {
    MEMORY[0x28223BE20](result);
    v13[-2] = v11;
    sub_221AE8904(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value, &unk_221BD8F70);
    result = sub_221BCCB58();
    if (!v2)
    {
      v12 = *(type metadata accessor for AppIntentsProtobuf_Property(0) + 24);
      sub_2219A1CC8(a1 + v12, &unk_27CFBB660, &qword_221BE4610);
      sub_221B229DC(v7, a1 + v12, type metadata accessor for AppIntentsProtobuf_Value);
      return __swift_storeEnumTagSinglePayload(a1 + v12, 0, 1, v5);
    }
  }

  return result;
}

uint64_t sub_221B15AD8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_Value(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *a1;
  v12 = a1[2];
  *a2 = a1[1];
  a2[1] = v12;
  a2[2] = v11;
  v13 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison(0);
  sub_2219A02E8(a1 + *(v13 + 28), v7, &unk_27CFBB660, &qword_221BE4610);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    *v10 = xmmword_221BD8630;

    sub_221BCC8C8();
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
    {
      sub_2219A1CC8(v7, &unk_27CFBB660, &qword_221BE4610);
    }
  }

  else
  {
    sub_221B229DC(v7, v10, type metadata accessor for AppIntentsProtobuf_Value);
  }

  sub_221B14BC4(*v10, v10[1], &qword_27CFBB680, 0x277D23958);
  if (v2)
  {
    sub_221B22C2C(a1, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison);
    sub_221B22C2C(v10, type metadata accessor for AppIntentsProtobuf_Value);
  }

  else
  {
    v16 = v14;
    sub_221B22C2C(v10, type metadata accessor for AppIntentsProtobuf_Value);
    v19 = sub_2219A1D20(0, &qword_27CFBB680, 0x277D23958);
    v20 = &protocol witness table for LNValue;
    *&v18 = v16;
    sub_221B22C2C(a1, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison);
    return sub_22198B358(&v18, (a2 + 3));
  }
}

uint64_t sub_221B15D78(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8E0, &unk_221BE4FD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v17 - v9;
  sub_221A20F50(a2, v18);
  if (v19)
  {
    v11 = v18[0];
    v12 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Compound(0);
    MEMORY[0x28223BE20](v12);
    *&v17[-1] = *(&v11 + 1);
    *(&v17[-1] + 1) = v11;
    sub_221AE8904(&qword_27CFBA208, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Compound, &unk_221BDF2F8);
    sub_221BCCB58();

    if (v2)
    {
      return result;
    }

    v14 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.OneOf_Content(0);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v14);
    v15 = v7;
  }

  else
  {
    v17[0] = v18[0];
    v17[1] = v18[1];
    v17[2] = v18[2];
    v17[3] = v18[3];
    sub_221B15FC0();
    result = sub_221A1C798(v17);
    if (v2)
    {
      return result;
    }

    v16 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.OneOf_Content(0);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v16);
    v15 = v10;
  }

  return sub_221B22A38(v15, a1, &unk_27CFBB8E0, &unk_221BE4FD0);
}

void sub_221B15FC0()
{
  v1 = v0[6];
  v2 = v0[7];
  __swift_project_boxed_opaque_existential_0(v0 + 3, v1);
  v3 = (*(v2 + 16))(v1, v2);
  if (v3)
  {
    v6 = v3;
    v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison(0);
    MEMORY[0x28223BE20](v7);
    sub_221AE8904(&unk_27CFBB970, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison, &unk_221BDF190);
    sub_221BCCB58();
  }

  else
  {
    sub_221A00FEC(0, v4, v5);
    swift_allocError();
    *v8 = &type metadata for PropertyQuery.Comparison;
    *(v8 + 8) = xmmword_221BE2BA0;
    *(v8 + 24) = 0;
    *(v8 + 32) = 2;
    swift_willThrow();
  }
}

uint64_t sub_221B16130(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison(0);
  v26 = *(v7 - 8);
  v27 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = a2;
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v25 = a1;
    v32 = MEMORY[0x277D84F90];
    sub_2219A3594(0, v10, 0);
    v11 = v32;
    v12 = a3 + 32;
    while (1)
    {
      sub_221A1C73C(v12, v28);
      v13 = v30;
      v14 = v31;
      __swift_project_boxed_opaque_existential_0(v29, v30);
      v15 = (*(v14 + 16))(v13, v14);
      if (!v15)
      {
        sub_221A00FEC(0, v16, v17);
        swift_allocError();
        *v22 = &type metadata for PropertyQuery.Comparison;
        *(v22 + 8) = xmmword_221BE2BA0;
        *(v22 + 24) = 0;
        *(v22 + 32) = 2;
        swift_willThrow();
        goto LABEL_11;
      }

      v18 = v15;
      MEMORY[0x28223BE20](v15);
      *(&v24 - 2) = v28;
      *(&v24 - 1) = v19;
      sub_221AE8904(&unk_27CFBB970, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison, &unk_221BDF190);
      sub_221BCCB58();
      if (v3)
      {
        break;
      }

      sub_221A1C798(v28);
      v32 = v11;
      v21 = *(v11 + 16);
      v20 = *(v11 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_2219A3594(v20 > 1, v21 + 1, 1);
        v11 = v32;
      }

      *(v11 + 16) = v21 + 1;
      sub_221B229DC(v9, v11 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v21, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison);
      v12 += 64;
      if (!--v10)
      {
        a1 = v25;
        goto LABEL_12;
      }
    }

LABEL_11:
    sub_221A1C798(v28);
  }

  else
  {
LABEL_12:

    a1[1] = v11;
  }

  return result;
}

uint64_t sub_221B16424(void *a1, uint64_t *a2, uint64_t a3)
{
  v7 = type metadata accessor for AppIntentsProtobuf_Value(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *a2;
  v10 = a2[1];

  a1[1] = v11;
  a1[2] = v10;
  *a1 = a2[2];
  v15 = a3;
  sub_221AE8904(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value, &unk_221BD8F70);
  result = sub_221BCCB58();
  if (!v3)
  {
    v13 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison(0) + 28);
    sub_2219A1CC8(a1 + v13, &unk_27CFBB660, &qword_221BE4610);
    sub_221B229DC(v9, a1 + v13, type metadata accessor for AppIntentsProtobuf_Value);
    return __swift_storeEnumTagSinglePayload(a1 + v13, 0, 1, v7);
  }

  return result;
}

uint64_t sub_221B165A8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a2)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  *a1 = v8;
  *(a1 + 8) = 1;
  if (a5)
  {
    v9 = a4;
    sub_2219980F0(a3, a4, 1);
  }

  else
  {
    v9 = 0;
  }

  result = sub_221AE00C4(*(a1 + 16), *(a1 + 24), *(a1 + 32));
  *(a1 + 16) = a3;
  *(a1 + 24) = v9;
  *(a1 + 32) = a5 & 1;
  return result;
}

uint64_t sub_221B16634(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  *a1 = a2;
  a1[1] = a3;

  a1[2] = a4;
  a1[3] = a5;
  return result;
}

uint64_t sub_221B166AC(void (*a1)(void), void (*a2)(void), void (*a3)(void))
{
  a1(0);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_83_6();
  sub_221B22BD0(v3, v3, a2);
  OUTLINED_FUNCTION_91();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = OUTLINED_FUNCTION_70();
    sub_221B229DC(v7, v8, v9);
  }

  else
  {
    sub_221B22C2C(v3, a3);
  }

  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  OUTLINED_FUNCTION_211_3();
  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t sub_221B16794(uint64_t (*a1)(void), void (*a2)(void))
{
  a1(0);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_83_6();
  sub_221B22BD0(v2, v2, a2);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    return *v2;
  }

  v6 = OUTLINED_FUNCTION_70();
  sub_221B22C2C(v6, v7);
  return 0;
}

uint64_t sub_221B16848(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_221A8B3A4(v1, v2);
}

uint64_t sub_221B16888(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.Options(0);
  *(a1 + *(result + 24)) = a2;
  if (a4)
  {
    v9 = (a1 + *(result + 20));

    *v9 = a3;
    v9[1] = a4;
  }

  return result;
}

void sub_221B16900(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v63 = type metadata accessor for AppIntentsProtobuf_Error(0);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_30_8();
  OUTLINED_FUNCTION_150_3(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA10, &qword_221BE0A90);
  v8 = OUTLINED_FUNCTION_8_1(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_51_4();
  v60 = v9;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v10);
  v12 = &v60 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7DD0, &unk_221BD19F0);
  OUTLINED_FUNCTION_8_1(v13);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_45_9();
  sub_221BCC418();
  OUTLINED_FUNCTION_0_2();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_21_10();
  v18 = *a1;
  v19 = a1[1];
  v62 = type metadata accessor for RemoteFileDescriptor(0);
  v20 = *(v62 + 20);
  v64 = a2;
  v21 = (a2 + v20);
  *v21 = v18;
  v21[1] = v19;
  v22 = type metadata accessor for AppIntentsProtobuf_FileDescriptor(0);
  if (!*(a1 + v22[6] + 8))
  {

    goto LABEL_5;
  }

  sub_221BCC3F8();

  OUTLINED_FUNCTION_98_4();
  if (__swift_getEnumTagSinglePayload(v23, v24, v25) == 1)
  {
    sub_2219A1CC8(v2, &qword_27CFB7DD0, &unk_221BD19F0);
LABEL_5:
    v27 = v22[9];
    OUTLINED_FUNCTION_192_3(v26);
    sub_2219A02E8(v28, v29, v30, &qword_221BE0A90);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v63);
    sub_2219A1CC8(v12, &qword_27CFBBA10, &qword_221BE0A90);
    if (EnumTagSinglePayload == 1)
    {
      OUTLINED_FUNCTION_153_3();
      sub_221A00FEC(v46, v47, v48);
      OUTLINED_FUNCTION_15_0();
      v49 = swift_allocError();
      *v50 = v62;
      *(v50 + 8) = 0xD000000000000024;
      *(v50 + 16) = v27;
      *(v50 + 24) = 0;
      *(v50 + 32) = 1;
      v51 = sub_221BCC328();
      OUTLINED_FUNCTION_67_5();
      *v64 = v51;
      type metadata accessor for RemoteFileDescriptor.Content(0);
      swift_storeEnumTagMultiPayload();

      return;
    }

    v32 = v60;
    sub_2219A02E8(a1 + v27, v60, &qword_27CFBBA10, &qword_221BE0A90);
    OUTLINED_FUNCTION_98_4();
    if (__swift_getEnumTagSinglePayload(v33, v34, v35) == 1)
    {
      v36 = v61;
      *v61 = xmmword_221BD8630;
      sub_221BCC8C8();
      OUTLINED_FUNCTION_98_4();
      if (__swift_getEnumTagSinglePayload(v37, v38, v39) != 1)
      {
        sub_2219A1CC8(v32, &qword_27CFBBA10, &qword_221BE0A90);
      }
    }

    else
    {
      OUTLINED_FUNCTION_6_19();
      v36 = v61;
      sub_221B229DC(v32, v61, v45);
    }

    sub_2219A1D20(0, &qword_27CFBAF28, 0x277CCA9B8);
    sub_221AEE828(v36);
    v58 = v57;
    OUTLINED_FUNCTION_2_32();
    sub_221B22C2C(v36, v59);
    OUTLINED_FUNCTION_67_5();
    *v64 = v58;
    type metadata accessor for RemoteFileDescriptor.Content(0);
    goto LABEL_16;
  }

  v40 = *(v16 + 32);
  v41 = OUTLINED_FUNCTION_64_0();
  (v40)(v41);
  v42 = a1 + v22[7];
  v43 = v42[8];
  if (v43)
  {
    v44 = 0;
  }

  else
  {
    v44 = *v42;
    if ((*v42 & 0x8000000000000000) != 0)
    {
      __break(1u);
      return;
    }
  }

  v52 = (a1 + v22[8]);
  v53 = v52[1];
  v63 = *v52;

  OUTLINED_FUNCTION_67_5();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9310, &qword_221BE73E0);
  v55 = v64 + *(v54 + 48);
  v56 = (v64 + *(v54 + 64));
  OUTLINED_FUNCTION_159_1();
  v40();
  *v55 = v44;
  v55[8] = v43;
  *v56 = v63;
  v56[1] = v53;
  type metadata accessor for RemoteFileDescriptor.Content(0);
LABEL_16:
  swift_storeEnumTagMultiPayload();
}

void sub_221B16DB0()
{
  OUTLINED_FUNCTION_55_4();
  v4 = v3;
  v6 = v5;
  v44 = type metadata accessor for AppIntentsProtobuf_Error(0);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_30_8();
  v42 = v8;
  OUTLINED_FUNCTION_133_3();
  v9 = sub_221BCC418();
  OUTLINED_FUNCTION_0_2();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_16_12();
  type metadata accessor for RemoteFileDescriptor.Content(0);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_21_10();
  v14 = (v4 + *(type metadata accessor for RemoteFileDescriptor(0) + 20));
  v15 = *v14;
  v16 = v14[1];

  *v6 = v15;
  v6[1] = v16;
  v17 = OUTLINED_FUNCTION_3_4();
  sub_221B22BD0(v17, v18, v19);
  OUTLINED_FUNCTION_64_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v21 = *v2;
    MEMORY[0x28223BE20](EnumCaseMultiPayload);
    OUTLINED_FUNCTION_8_15();
    sub_221AE8904(v22, v23, &unk_221BD9C18);
    sub_221BCCB58();

    if (!v0)
    {
      v24 = *(type metadata accessor for AppIntentsProtobuf_FileDescriptor(0) + 36);
      sub_2219A1CC8(v6 + v24, &qword_27CFBBA10, &qword_221BE0A90);
      OUTLINED_FUNCTION_6_19();
      sub_221B229DC(v42, v6 + v24, v25);
      OUTLINED_FUNCTION_122();
      __swift_storeEnumTagSinglePayload(v26, v27, v28, v44);
    }
  }

  else
  {
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9310, &qword_221BE73E0);
    v30 = v2 + *(v29 + 48);
    v45 = *v30;
    v43 = v30[8];
    v31 = (v2 + *(v29 + 64));
    v32 = v31[1];
    v41 = *v31;
    (*(v11 + 32))(v1, v2, v9);
    v33 = sub_221BCC368();
    v35 = v34;
    v36 = type metadata accessor for AppIntentsProtobuf_FileDescriptor(0);
    v37 = (v6 + *(v36 + 24));

    *v37 = v33;
    v37[1] = v35;
    sub_221AE9434(v45, v43, v6);
    if (v32)
    {
      v38 = (v6 + *(v36 + 32));

      *v38 = v41;
      v38[1] = v32;
    }

    v39 = OUTLINED_FUNCTION_14();
    v40(v39);
  }

  OUTLINED_FUNCTION_231_1();
  OUTLINED_FUNCTION_53_5();
}

double sub_221B170C0(uint64_t a1, __int128 *a2)
{
  v4 = type metadata accessor for AppIntentsProtobuf_Size(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *a2;
  sub_221AE8904(&unk_27CFBB770, type metadata accessor for AppIntentsProtobuf_Size, &unk_221BD9510);
  sub_221BCCB58();
  v7 = *(type metadata accessor for AppIntentsProtobuf_SnippetEnvironment(0) + 64);
  sub_2219A1CC8(a1 + v7, &qword_27CFB9560, &qword_221BE49F0);
  sub_221B229DC(v6, a1 + v7, type metadata accessor for AppIntentsProtobuf_Size);
  __swift_storeEnumTagSinglePayload(a1 + v7, 0, 1, v4);
  v8 = *(a2 + 56);
  *a1 = *(a2 + 40);
  *(a1 + 16) = v8;
  *(a1 + 32) = *(a2 + 9);
  result = *(a2 + 10);
  *(a1 + 40) = result;
  *(a1 + 48) = *(a2 + 11);
  *(a1 + 56) = *(a2 + 24);
  return result;
}

uint64_t sub_221B17240(uint64_t *a1, id a2)
{
  v3 = [a2 identifier];
  v4 = sub_221BCD388();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
  return result;
}

void sub_221B172B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CCAD78]) initWithUUIDBytes_];
    sub_221BCC528();
  }

  else
  {
    sub_221A00FEC(0, a2, a3);
    swift_allocError();
    *v4 = 0xD000000000000027;
    *(v4 + 8) = 0x8000000221BF0680;
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    *(v4 + 32) = 0;
    swift_willThrow();
  }
}

uint64_t sub_221B17368(void *a1)
{
  v2 = sub_221BCC538();
  v3 = sub_221BCC538() & 0xFF00 | (v2 << 16);
  v4 = sub_221BCC538();
  v5 = (v3 << 16) & 0xFFFFFFFFFF000000 | *&v4 & 0xFF0000 | (sub_221BCC538() >> 16);
  v6 = v5 & 0xFFFFFFFFFFFFFF00 | (sub_221BCC538() >> 32);
  v7 = (sub_221BCC538() >> 32) & 0xFF00 | (v6 << 16);
  *(&v9 + 1) = v7 & 0xFFFFFFFFFFFFFF00 | (sub_221BCC538() >> 48);
  *&v9 = sub_221BCC538();
  v8 = v9 >> 56;
  sub_221BCC538();
  LOBYTE(v7) = v10;
  sub_221BCC538();
  v12 = v11 & 0xFF00 | (v7 << 16);
  sub_221BCC538();
  LODWORD(v7) = v13;
  sub_221BCC538();
  v15 = (v12 << 16) & 0xFFFFFFFFFF000000 | v7 & 0xFF0000 | v14;
  sub_221BCC538();
  v17 = v15 & 0xFFFFFFFFFFFFFF00 | v16;
  sub_221BCC538();
  v19 = HIDWORD(v18) & 0xFF00 | (v17 << 16);
  sub_221BCC538();
  v21 = v19 & 0xFFFFFFFFFFFFFF00 | v20;
  result = sub_221BCC538();
  *(&v9 + 1) = v21;
  *&v9 = v23;
  *a1 = v8;
  a1[1] = v9 >> 56;
  return result;
}

uint64_t sub_221B17450(uint64_t a1, void *a2, unint64_t *a3, void *a4)
{
  result = sub_221B14E5C(a2, a3, a4);
  if (!v4)
  {
    v8 = result;
    v9 = v7;
    result = sub_2219EC040(*a1, *(a1 + 8));
    *a1 = v8;
    *(a1 + 8) = v9;
  }

  return result;
}

uint64_t sub_221B17568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(void, void))
{
  v7 = a4[1](a3, a4);
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    v11 = (a1 + *(type metadata accessor for AppIntentsProtobuf_ViewSnippet(0) + 24));

    *v11 = v9;
    v11[1] = v10;
  }

  v12 = a4[2](a3, a4);
  if (v13)
  {
    v14 = v12;
    v15 = v13;
    v16 = (a1 + *(type metadata accessor for AppIntentsProtobuf_ViewSnippet(0) + 32));

    *v16 = v14;
    v16[1] = v15;
  }

  v17 = a4[3](a3, a4);
  if (v18 >> 60 != 15)
  {
    v19 = v17;
    v20 = v18;
    v21 = a1 + *(type metadata accessor for AppIntentsProtobuf_ViewSnippet(0) + 36);
    sub_2219EC02C(*v21, *(v21 + 8));
    *v21 = v19;
    *(v21 + 8) = v20;
  }

  v22 = a4[4](a3, a4);
  if (v23)
  {
    v24 = v22;
    v25 = v23;
    v26 = (a1 + *(type metadata accessor for AppIntentsProtobuf_ViewSnippet(0) + 28));

    *v26 = v24;
    v26[1] = v25;
  }

  v27 = a4[5](a3, a4);
  v29 = v28;
  result = sub_2219EC040(*a1, *(a1 + 8));
  *a1 = v27;
  *(a1 + 8) = v29;
  return result;
}

uint64_t sub_221B1770C()
{
  AppDescriptionResponse = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse(0);
  MEMORY[0x28223BE20](AppDescriptionResponse);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_221AEF8AC();
  if (!v1)
  {
    sub_221AE8904(&unk_27CFBB550, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse, &unk_221BDB798);
    v0 = sub_221BCCB18();
    sub_221B22C2C(v4, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse);
  }

  return v0;
}

uint64_t sub_221B1781C()
{
  OptionsForActionRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest(0);
  MEMORY[0x28223BE20](OptionsForActionRequest);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v0;
  sub_221AE8904(&unk_27CFBB430, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest, &unk_221BDE088);
  v5 = OptionsForActionRequest;
  sub_221BCCB58();
  if (!v1)
  {
    v5 = sub_221BCCB18();
    sub_221B22C2C(v4, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest);
  }

  return v5;
}

uint64_t sub_221B17964()
{
  OptionsForActionResponse = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse(0);
  MEMORY[0x28223BE20](OptionsForActionResponse);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_221AF5110();
  if (!v1)
  {
    sub_221AE8904(&unk_27CFBB400, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse, &unk_221BDC170);
    v0 = sub_221BCCB18();
    sub_221B22C2C(v4, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse);
  }

  return v0;
}

uint64_t sub_221B17A74()
{
  v2 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v0;
  sub_221AE8904(&unk_27CFBB310, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest, &unk_221BE0810);
  v5 = v2;
  sub_221BCCB58();
  if (!v1)
  {
    v5 = sub_221BCCB18();
    sub_221B22C2C(v4, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest);
  }

  return v5;
}

uint64_t sub_221B17BBC()
{
  v2 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v0;
  sub_221AE8904(&unk_27CFBB290, type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse, &unk_221BDFFA0);
  v5 = v2;
  sub_221BCCB58();
  if (!v1)
  {
    v5 = sub_221BCCB18();
    sub_221B22C2C(v4, type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse);
  }

  return v5;
}

uint64_t sub_221B17D04()
{
  v2 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v0;
  sub_221AE8904(&unk_27CFBB290, type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse, &unk_221BDFFA0);
  v5 = v2;
  sub_221BCCB58();
  if (!v1)
  {
    v5 = sub_221BCCB18();
    sub_221B22C2C(v4, type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse);
  }

  return v5;
}

uint64_t sub_221B17E4C()
{
  v2 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v0;
  sub_221AE8904(&unk_27CFBB260, type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse, &unk_221BDFE38);
  v5 = v2;
  sub_221BCCB58();
  if (!v1)
  {
    v5 = sub_221BCCB18();
    sub_221B22C2C(v4, type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse);
  }

  return v5;
}

uint64_t sub_221B17F94()
{
  v2 = type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v0;
  sub_221AE8904(&unk_27CFBB230, type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse, &unk_221BE03D8);
  v5 = v2;
  sub_221BCCB58();
  if (!v1)
  {
    v5 = sub_221BCCB18();
    sub_221B22C2C(v4, type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse);
  }

  return v5;
}

uint64_t sub_221B180DC()
{
  v2 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v0;
  sub_221AE8904(&unk_27CFBB200, type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse, &unk_221BE0270);
  v5 = v2;
  sub_221BCCB58();
  if (!v1)
  {
    v5 = sub_221BCCB18();
    sub_221B22C2C(v4, type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse);
  }

  return v5;
}

uint64_t sub_221B18224()
{
  v2 = type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v0;
  sub_221AE8904(&unk_27CFBB1B0, type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse, &unk_221BE0108);
  v5 = v2;
  sub_221BCCB58();
  if (!v1)
  {
    v5 = sub_221BCCB18();
    sub_221B22C2C(v4, type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse);
  }

  return v5;
}

uint64_t sub_221B1836C()
{
  v2 = type metadata accessor for AppIntentsProtobuf_Action(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v0;
  sub_221AE8904(&unk_27CFBB050, type metadata accessor for AppIntentsProtobuf_Action, &unk_221BDAD48);
  v5 = v2;
  sub_221BCCB58();
  if (!v1)
  {
    v5 = sub_221BCCB18();
    sub_221B22C2C(v4, type metadata accessor for AppIntentsProtobuf_Action);
  }

  return v5;
}

uint64_t sub_221B184B4()
{
  v1 = sub_221BCC928();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AsyncIteratorRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest(0);
  MEMORY[0x28223BE20](AsyncIteratorRequest);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = v0;
  sub_221AE8904(&unk_27CFBB5E0, type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest, &unk_221BDE628);
  sub_221BCCB58();
  sub_221BCC918();
  v8 = sub_221BCCAE8();
  (*(v2 + 8))(v4, v1);
  sub_221B22C2C(v7, type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest);
  return v8;
}

uint64_t sub_221B18694()
{
  v1 = sub_221BCC928();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  AsyncIteratorResponse = type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse(0);
  MEMORY[0x28223BE20](AsyncIteratorResponse);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_221AEEA04();
  if (!v0)
  {
    sub_221BCC918();
    sub_221AE8904(&unk_27CFBB5B0, type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse, &unk_221BDBEA0);
    AsyncIteratorResponse = sub_221BCCAE8();
    (*(v2 + 8))(v4, v1);
    sub_221B22C2C(v7, type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse);
  }

  return AsyncIteratorResponse;
}

uint64_t sub_221B18890()
{
  v1 = sub_221BCC928();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AppDescriptionRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchAppDescriptionRequest(0);
  MEMORY[0x28223BE20](AppDescriptionRequest);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = v0;
  sub_221AE8904(&unk_27CFBB580, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchAppDescriptionRequest, &unk_221BDDAE8);
  sub_221BCCB58();
  sub_221BCC918();
  v8 = sub_221BCCAE8();
  (*(v2 + 8))(v4, v1);
  sub_221B22C2C(v7, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchAppDescriptionRequest);
  return v8;
}

uint64_t sub_221B18A8C()
{
  v2 = sub_221BCC928();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  AppDescriptionResponse = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse(0);
  MEMORY[0x28223BE20](AppDescriptionResponse);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_221AEF8AC();
  if (!v1)
  {
    sub_221BCC918();
    sub_221AE8904(&unk_27CFBB550, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse, &unk_221BDB798);
    v0 = sub_221BCCAE8();
    (*(v3 + 8))(v5, v2);
    sub_221B22C2C(v8, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse);
  }

  return v0;
}

uint64_t sub_221B18C7C()
{
  v1 = sub_221BCC928();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  DeferredPropertyValueRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchDeferredPropertyValueRequest(0);
  MEMORY[0x28223BE20](DeferredPropertyValueRequest);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = v0;
  sub_221AE8904(&unk_27CFBB520, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchDeferredPropertyValueRequest, &unk_221BDE790);
  sub_221BCCB58();
  sub_221BCC918();
  v8 = sub_221BCCAE8();
  (*(v2 + 8))(v4, v1);
  sub_221B22C2C(v7, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchDeferredPropertyValueRequest);
  return v8;
}

uint64_t sub_221B18E5C()
{
  v1 = sub_221BCC928();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  DeferredPropertyValueResponse = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse(0);
  MEMORY[0x28223BE20](DeferredPropertyValueResponse);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_221AF0948();
  if (!v0)
  {
    sub_221BCC918();
    sub_221AE8904(&unk_27CFBB4F0, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse, &unk_221BDC440);
    DeferredPropertyValueResponse = sub_221BCCAE8();
    (*(v2 + 8))(v4, v1);
    sub_221B22C2C(v7, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse);
  }

  return DeferredPropertyValueResponse;
}

uint64_t sub_221B19058()
{
  v1 = sub_221BCC928();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  FileChunkRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchFileChunkRequest(0);
  MEMORY[0x28223BE20](FileChunkRequest);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = v0;
  sub_221AE8904(&unk_27CFBB4C0, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchFileChunkRequest, &unk_221BDE1F0);
  sub_221BCCB58();
  sub_221BCC918();
  v8 = sub_221BCCAE8();
  (*(v2 + 8))(v4, v1);
  sub_221B22C2C(v7, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchFileChunkRequest);
  return v8;
}

uint64_t sub_221B19238(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v21 = sub_221BCC928();
  v8 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  NextAsyncIteratorResultsRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchNextAsyncIteratorResultsRequest(0);
  MEMORY[0x28223BE20](NextAsyncIteratorResultsRequest);
  v13 = &v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4 & 0x1FF;
  sub_221AE8904(&unk_27CFBB490, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchNextAsyncIteratorResultsRequest, &unk_221BDE4C0);
  sub_221BCCB58();
  sub_221BCC918();
  v14 = sub_221BCCAE8();
  (*(v8 + 8))(v10, v21);
  sub_221B22C2C(v13, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchNextAsyncIteratorResultsRequest);
  return v14;
}

uint64_t sub_221B1943C()
{
  v1 = sub_221BCC928();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  NextAsyncIteratorResultsResponse = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse(0);
  MEMORY[0x28223BE20](NextAsyncIteratorResultsResponse);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_221AF1F04();
  if (!v0)
  {
    sub_221BCC918();
    sub_221AE8904(&unk_27CFBB460, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse, &unk_221BDBBD0);
    NextAsyncIteratorResultsResponse = sub_221BCCAE8();
    (*(v2 + 8))(v4, v1);
    sub_221B22C2C(v7, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse);
  }

  return NextAsyncIteratorResultsResponse;
}

uint64_t sub_221B19638()
{
  v2 = sub_221BCC928();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  OptionsForActionRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest(0);
  MEMORY[0x28223BE20](OptionsForActionRequest);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = v0;
  sub_221AE8904(&unk_27CFBB430, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest, &unk_221BDE088);
  v9 = OptionsForActionRequest;
  sub_221BCCB58();
  if (!v1)
  {
    sub_221BCC918();
    v9 = sub_221BCCAE8();
    (*(v3 + 8))(v5, v2);
    sub_221B22C2C(v8, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest);
  }

  return v9;
}

uint64_t sub_221B19858()
{
  v2 = sub_221BCC928();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  OptionsForActionResponse = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse(0);
  MEMORY[0x28223BE20](OptionsForActionResponse);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_221AF5110();
  if (!v1)
  {
    sub_221BCC918();
    sub_221AE8904(&unk_27CFBB400, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse, &unk_221BDC170);
    v0 = sub_221BCCAE8();
    (*(v3 + 8))(v5, v2);
    sub_221B22C2C(v8, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse);
  }

  return v0;
}

uint64_t sub_221B19A48()
{
  v1 = sub_221BCC928();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  restarted = type metadata accessor for AppIntentsProtobuf_ClientMessages.RestartObservingEventRequest(0);
  MEMORY[0x28223BE20](restarted);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = v0;
  sub_221AE8904(&unk_27CFBB3D0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RestartObservingEventRequest, &unk_221BDDC50);
  sub_221BCCB58();
  sub_221BCC918();
  v8 = sub_221BCCAE8();
  (*(v2 + 8))(v4, v1);
  sub_221B22C2C(v7, type metadata accessor for AppIntentsProtobuf_ClientMessages.RestartObservingEventRequest);
  return v8;
}

uint64_t sub_221B19C28()
{
  v1 = sub_221BCC928();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  started = type metadata accessor for AppIntentsProtobuf_ClientMessages.StartObservingEventRequest(0);
  MEMORY[0x28223BE20](started);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = v0;
  sub_221AE8904(&unk_27CFBB3A0, type metadata accessor for AppIntentsProtobuf_ClientMessages.StartObservingEventRequest, &unk_221BDDF20);
  sub_221BCCB58();
  sub_221BCC918();
  v8 = sub_221BCCAE8();
  (*(v2 + 8))(v4, v1);
  sub_221B22C2C(v7, type metadata accessor for AppIntentsProtobuf_ClientMessages.StartObservingEventRequest);
  return v8;
}

uint64_t sub_221B19E08()
{
  v1 = sub_221BCC928();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  started = type metadata accessor for AppIntentsProtobuf_HostMessages.StartObservingEventResponse(0);
  MEMORY[0x28223BE20](started);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = v0;
  sub_221AE8904(&unk_27CFBB370, type metadata accessor for AppIntentsProtobuf_HostMessages.StartObservingEventResponse, &unk_221BDB900);
  sub_221BCCB58();
  sub_221BCC918();
  v8 = sub_221BCCAE8();
  (*(v2 + 8))(v4, v1);
  sub_221B22C2C(v7, type metadata accessor for AppIntentsProtobuf_HostMessages.StartObservingEventResponse);
  return v8;
}

uint64_t sub_221B19FE8()
{
  v1 = sub_221BCC928();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.StopObservingEventRequest(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = v0;
  sub_221AE8904(&unk_27CFBB340, type metadata accessor for AppIntentsProtobuf_ClientMessages.StopObservingEventRequest, &unk_221BDDDB8);
  sub_221BCCB58();
  sub_221BCC918();
  v8 = sub_221BCCAE8();
  (*(v2 + 8))(v4, v1);
  sub_221B22C2C(v7, type metadata accessor for AppIntentsProtobuf_ClientMessages.StopObservingEventRequest);
  return v8;
}

uint64_t sub_221B1A1C8()
{
  v2 = sub_221BCC928();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = v0;
  sub_221AE8904(&unk_27CFBB310, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest, &unk_221BE0810);
  v9 = v6;
  sub_221BCCB58();
  if (!v1)
  {
    sub_221BCC918();
    v9 = sub_221BCCAE8();
    (*(v3 + 8))(v5, v2);
    sub_221B22C2C(v8, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest);
  }

  return v9;
}

uint64_t sub_221B1A3E8()
{
  v2 = sub_221BCC928();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse(0);
  MEMORY[0x28223BE20](v6);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_221AFE910();
  if (!v1)
  {
    sub_221BCC918();
    sub_221AE8904(&unk_27CFBB2E0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse, &unk_221BDD6B0);
    v0 = sub_221BCCAE8();
    (*(v3 + 8))(v5, v2);
    sub_221B22C2C(v8, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse);
  }

  return v0;
}

uint64_t sub_221B1A5D8()
{
  v2 = sub_221BCC928();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = v0;
  sub_221AE8904(&unk_27CFBB290, type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse, &unk_221BDFFA0);
  v9 = v6;
  sub_221BCCB58();
  if (!v1)
  {
    sub_221BCC918();
    v9 = sub_221BCCAE8();
    (*(v3 + 8))(v5, v2);
    sub_221B22C2C(v8, type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse);
  }

  return v9;
}

uint64_t sub_221B1A7F8()
{
  v2 = sub_221BCC928();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = v0;
  sub_221AE8904(&unk_27CFBB290, type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse, &unk_221BDFFA0);
  v9 = v6;
  sub_221BCCB58();
  if (!v1)
  {
    sub_221BCC918();
    v9 = sub_221BCCAE8();
    (*(v3 + 8))(v5, v2);
    sub_221B22C2C(v8, type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse);
  }

  return v9;
}

uint64_t sub_221B1AA18()
{
  v2 = sub_221BCC928();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = v0;
  sub_221AE8904(&unk_27CFBB260, type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse, &unk_221BDFE38);
  v9 = v6;
  sub_221BCCB58();
  if (!v1)
  {
    sub_221BCC918();
    v9 = sub_221BCCAE8();
    (*(v3 + 8))(v5, v2);
    sub_221B22C2C(v8, type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse);
  }

  return v9;
}

uint64_t sub_221B1AC38()
{
  v2 = sub_221BCC928();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = v0;
  sub_221AE8904(&unk_27CFBB230, type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse, &unk_221BE03D8);
  v9 = v6;
  sub_221BCCB58();
  if (!v1)
  {
    sub_221BCC918();
    v9 = sub_221BCCAE8();
    (*(v3 + 8))(v5, v2);
    sub_221B22C2C(v8, type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse);
  }

  return v9;
}

uint64_t sub_221B1AE58()
{
  v2 = sub_221BCC928();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = v0;
  sub_221AE8904(&unk_27CFBB200, type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse, &unk_221BE0270);
  v9 = v6;
  sub_221BCCB58();
  if (!v1)
  {
    sub_221BCC918();
    v9 = sub_221BCCAE8();
    (*(v3 + 8))(v5, v2);
    sub_221B22C2C(v8, type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse);
  }

  return v9;
}

uint64_t sub_221B1B078()
{
  v2 = sub_221BCC928();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = v0;
  sub_221AE8904(&unk_27CFBB1B0, type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse, &unk_221BE0108);
  v9 = v6;
  sub_221BCCB58();
  if (!v1)
  {
    sub_221BCC918();
    v9 = sub_221BCCAE8();
    (*(v3 + 8))(v5, v2);
    sub_221B22C2C(v8, type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse);
  }

  return v9;
}

uint64_t sub_221B1B298()
{
  v1 = sub_221BCC928();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = v0;
  sub_221AE8904(&unk_27CFBB1B0, type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse, &unk_221BE0108);
  sub_221BCCB58();
  sub_221BCC918();
  v8 = sub_221BCCAE8();
  (*(v2 + 8))(v4, v1);
  sub_221B22C2C(v7, type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse);
  return v8;
}

uint64_t sub_221B1B478()
{
  v2 = sub_221BCC928();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Request = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest(0);
  MEMORY[0x28223BE20](Request);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_221B06D58();
  if (!v1)
  {
    sub_221BCC918();
    sub_221AE8904(&unk_27CFBB180, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest, &unk_221BDFB68);
    v0 = sub_221BCCAE8();
    (*(v3 + 8))(v5, v2);
    sub_221B22C2C(v8, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest);
  }

  return v0;
}

uint64_t sub_221B1B668()
{
  v2 = sub_221BCC928();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Response = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse(0);
  MEMORY[0x28223BE20](Response);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_221B0996C();
  if (!v1)
  {
    sub_221BCC918();
    sub_221AE8904(&unk_27CFBB150, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse, &unk_221BDC710);
    v0 = sub_221BCCAE8();
    (*(v3 + 8))(v5, v2);
    sub_221B22C2C(v8, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse);
  }

  return v0;
}

uint64_t sub_221B1B858(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  v21 = sub_221BCC928();
  v8 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ReleaseAsyncSequenceRequest(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = a1;
  v18 = a2;
  v19 = a3 & 0x1FF;
  v20 = a4;
  sub_221AE8904(&unk_27CFBB120, type metadata accessor for AppIntentsProtobuf_ClientMessages.ReleaseAsyncSequenceRequest, &unk_221BDE358);
  sub_221BCCB58();
  sub_221BCC918();
  v14 = sub_221BCCAE8();
  (*(v8 + 8))(v10, v21);
  sub_221B22C2C(v13, type metadata accessor for AppIntentsProtobuf_ClientMessages.ReleaseAsyncSequenceRequest);
  return v14;
}

uint64_t sub_221B1BA5C(uint64_t a1, uint64_t a2, __int16 a3)
{
  v6 = sub_221BCC928();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = a1;
  v17 = a2;
  v18 = a3 & 0x1FF;
  sub_221AE8904(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata, &unk_221BDD980);
  sub_221BCCB58();
  sub_221BCC918();
  v13 = sub_221BCCAE8();
  (*(v7 + 8))(v9, v6);
  sub_221B22C2C(v12, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
  return v13;
}

uint64_t sub_221B1BC58()
{
  v2 = sub_221BCC928();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for AppIntentsProtobuf_Action(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = v0;
  sub_221AE8904(&unk_27CFBB050, type metadata accessor for AppIntentsProtobuf_Action, &unk_221BDAD48);
  v9 = v6;
  sub_221BCCB58();
  if (!v1)
  {
    sub_221BCC918();
    v9 = sub_221BCCAE8();
    (*(v3 + 8))(v5, v2);
    sub_221B22C2C(v8, type metadata accessor for AppIntentsProtobuf_Action);
  }

  return v9;
}

uint64_t sub_221B1BE78@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_221BCC948();
  MEMORY[0x28223BE20](v7 - 8);
  AsyncIteratorRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest(0);
  MEMORY[0x28223BE20](AsyncIteratorRequest);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v17 - v12;
  v18 = a1;
  v19 = a2;
  memset(v17, 0, 40);
  sub_2219EBFC8(a1, a2);
  sub_221BCC938();
  sub_221AE8904(&unk_27CFBB5E0, type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest, &unk_221BDE628);
  sub_221BCCB28();
  if (v3)
  {
    return sub_2219EC040(a1, a2);
  }

  sub_221B22BD0(v13, v10, type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest);
  sub_221AE9570();
  sub_221B22C2C(v13, type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest);
  result = sub_2219EC040(a1, a2);
  v15 = v17[1];
  v16 = BYTE1(v17[1]);
  *a3 = v17[0];
  *(a3 + 16) = v15;
  *(a3 + 17) = v16;
  *(a3 + 24) = *(&v17[1] + 8);
  return result;
}

uint64_t sub_221B1C0A0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_221BCC948();
  MEMORY[0x28223BE20](v6 - 8);
  AsyncIteratorResponse = type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse(0);
  MEMORY[0x28223BE20](AsyncIteratorResponse);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  v26 = a1;
  v27 = a2;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  sub_2219EBFC8(a1, a2);
  sub_221BCC938();
  sub_221AE8904(&unk_27CFBB5B0, type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse, &unk_221BDBEA0);
  sub_221BCCB28();
  if (!v2)
  {
    sub_221B22BD0(v12, v9, type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse);
    sub_221AEE430(v9, v13, v14, v15, v16, v17, v18, v19, v22, *(&v22 + 1), v23, *(&v23 + 1), v24, v25, v26, v27, v28, v29, v30, v31);
    v3 = v21;
    sub_221B22C2C(v12, type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse);
  }

  sub_2219EC040(a1, a2);
  return v3;
}

uint64_t sub_221B1C2CC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_221BCC948();
  MEMORY[0x28223BE20](v7 - 8);
  AppDescriptionRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchAppDescriptionRequest(0);
  MEMORY[0x28223BE20](AppDescriptionRequest);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  v31 = a1;
  v32 = a2;
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  sub_2219EBFC8(a1, a2);
  sub_221BCC938();
  sub_221AE8904(&unk_27CFBB580, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchAppDescriptionRequest, &unk_221BDDAE8);
  sub_221BCCB28();
  if (v3)
  {
    return sub_2219EC040(a1, a2);
  }

  sub_221B22BD0(v13, v10, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchAppDescriptionRequest);
  sub_221AEEF64(v10, v15, v16, v17, v18, v19, v20, v21, v23, v24);
  sub_221B22C2C(v13, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchAppDescriptionRequest);
  result = sub_2219EC040(a1, a2);
  v22 = v25;
  *a3 = v24;
  *(a3 + 16) = v22;
  *(a3 + 32) = v26;
  *(a3 + 48) = v27;
  return result;
}

uint64_t sub_221B1C4F0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_221BCC948();
  MEMORY[0x28223BE20](v7 - 8);
  AppDescriptionResponse = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse(0);
  MEMORY[0x28223BE20](AppDescriptionResponse);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  v27 = a1;
  v28 = a2;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  sub_2219EBFC8(a1, a2);
  sub_221BCC938();
  sub_221AE8904(&unk_27CFBB550, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse, &unk_221BDB798);
  sub_221BCCB28();
  if (v3)
  {
    return sub_2219EC040(a1, a2);
  }

  sub_221B22BD0(v13, v10, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse);
  sub_221AEF428(v10, v15, v16, v17, v18, v19, v20, v21, v24, *(&v24 + 1));
  sub_221B22C2C(v13, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse);
  result = sub_2219EC040(a1, a2);
  v22 = v26;
  v23 = v25;
  *a3 = v24;
  *(a3 + 16) = v23;
  *(a3 + 32) = v22;
  return result;
}

uint64_t sub_221B1C708(uint64_t a1, unint64_t a2)
{
  v5 = sub_221BCC948();
  MEMORY[0x28223BE20](v5 - 8);
  DeferredPropertyValueRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchDeferredPropertyValueRequest(0);
  MEMORY[0x28223BE20](DeferredPropertyValueRequest);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v15 = a1;
  v16 = a2;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_2219EBFC8(a1, a2);
  sub_221BCC938();
  sub_221AE8904(&unk_27CFBB520, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchDeferredPropertyValueRequest, &unk_221BDE790);
  sub_221BCCB28();
  if (!v2)
  {
    sub_221B22BD0(v11, v8, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchDeferredPropertyValueRequest);
    sub_221AEFBF4();
    sub_221B22C2C(v11, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchDeferredPropertyValueRequest);
  }

  return sub_2219EC040(a1, a2);
}

uint64_t sub_221B1C8FC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_221BCC948();
  MEMORY[0x28223BE20](v6 - 8);
  DeferredPropertyValueResponse = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse(0);
  MEMORY[0x28223BE20](DeferredPropertyValueResponse);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v15 - v11;
  v17 = a1;
  v18 = a2;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_2219EBFC8(a1, a2);
  sub_221BCC938();
  sub_221AE8904(&unk_27CFBB4F0, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse, &unk_221BDC440);
  sub_221BCCB28();
  if (!v2)
  {
    sub_221B22BD0(v12, v9, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse);
    sub_221AF0564();
    v3 = v14;
    sub_221B22C2C(v12, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse);
  }

  sub_2219EC040(a1, a2);
  return v3;
}

uint64_t sub_221B1CB28(uint64_t a1, unint64_t a2)
{
  v5 = sub_221BCC948();
  MEMORY[0x28223BE20](v5 - 8);
  FileChunkRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchFileChunkRequest(0);
  MEMORY[0x28223BE20](FileChunkRequest);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v15 = a1;
  v16 = a2;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_2219EBFC8(a1, a2);
  sub_221BCC938();
  sub_221AE8904(&unk_27CFBB4C0, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchFileChunkRequest, &unk_221BDE1F0);
  sub_221BCCB28();
  if (!v2)
  {
    sub_221B22BD0(v11, v8, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchFileChunkRequest);
    sub_221AF0E1C();
    sub_221B22C2C(v11, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchFileChunkRequest);
  }

  return sub_2219EC040(a1, a2);
}

uint64_t sub_221B1CD1C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_221BCC948();
  MEMORY[0x28223BE20](v7 - 8);
  NextAsyncIteratorResultsRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchNextAsyncIteratorResultsRequest(0);
  MEMORY[0x28223BE20](NextAsyncIteratorResultsRequest);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v17 - v12;
  v19 = a1;
  v20 = a2;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  sub_2219EBFC8(a1, a2);
  sub_221BCC938();
  sub_221AE8904(&unk_27CFBB490, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchNextAsyncIteratorResultsRequest, &unk_221BDE4C0);
  sub_221BCCB28();
  if (v3)
  {
    return sub_2219EC040(a1, a2);
  }

  sub_221B22BD0(v13, v10, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchNextAsyncIteratorResultsRequest);
  sub_221AF12B0();
  sub_221B22C2C(v13, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchNextAsyncIteratorResultsRequest);
  result = sub_2219EC040(a1, a2);
  v15 = BYTE8(v17[1]);
  v16 = BYTE9(v17[1]);
  *a3 = *&v17[0];
  *(a3 + 8) = *(v17 + 8);
  *(a3 + 24) = v15;
  *(a3 + 25) = v16;
  return result;
}

uint64_t sub_221B1CF44(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_221BCC948();
  MEMORY[0x28223BE20](v6 - 8);
  NextAsyncIteratorResultsResponse = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse(0);
  MEMORY[0x28223BE20](NextAsyncIteratorResultsResponse);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  v26 = a1;
  v27 = a2;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  sub_2219EBFC8(a1, a2);
  sub_221BCC938();
  sub_221AE8904(&unk_27CFBB460, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse, &unk_221BDBBD0);
  sub_221BCCB28();
  if (!v2)
  {
    sub_221B22BD0(v12, v9, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse);
    sub_221AF1B28(v9, v13, v14, v15, v16, v17, v18, v19, v22, *(&v22 + 1), v23, *(&v23 + 1), v24, v25, v26, v27, v28, v29, v30, v31);
    v3 = v21;
    sub_221B22C2C(v12, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse);
  }

  sub_2219EC040(a1, a2);
  return v3;
}

uint64_t sub_221B1D170(uint64_t a1, unint64_t a2)
{
  v5 = sub_221BCC948();
  MEMORY[0x28223BE20](v5 - 8);
  OptionsForActionRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest(0);
  MEMORY[0x28223BE20](OptionsForActionRequest);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v15 = a1;
  v16 = a2;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_2219EBFC8(a1, a2);
  sub_221BCC938();
  sub_221AE8904(&unk_27CFBB430, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest, &unk_221BDE088);
  sub_221BCCB28();
  if (!v2)
  {
    sub_221B22BD0(v11, v8, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest);
    sub_221AF250C();
    sub_221B22C2C(v11, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest);
  }

  return sub_2219EC040(a1, a2);
}

uint64_t sub_221B1D364@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_221BCC948();
  MEMORY[0x28223BE20](v7 - 8);
  OptionsForActionResponse = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse(0);
  MEMORY[0x28223BE20](OptionsForActionResponse);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  v20 = a1;
  v21 = a2;
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  sub_2219EBFC8(a1, a2);
  sub_221BCC938();
  sub_221AE8904(&unk_27CFBB400, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse, &unk_221BDC170);
  sub_221BCCB28();
  if (v3)
  {
    return sub_2219EC040(a1, a2);
  }

  sub_221B22BD0(v13, v10, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse);
  sub_221AF40A4();
  sub_221B22C2C(v13, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse);
  result = sub_2219EC040(a1, a2);
  v15 = v19;
  v16 = v18;
  *a3 = v17;
  *(a3 + 16) = v16;
  *(a3 + 32) = v15;
  return result;
}

uint64_t sub_221B1D57C(uint64_t a1, unint64_t a2)
{
  v5 = sub_221BCC948();
  MEMORY[0x28223BE20](v5 - 8);
  restarted = type metadata accessor for AppIntentsProtobuf_ClientMessages.RestartObservingEventRequest(0);
  MEMORY[0x28223BE20](restarted);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v15 = a1;
  v16 = a2;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_2219EBFC8(a1, a2);
  sub_221BCC938();
  sub_221AE8904(&unk_27CFBB3D0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RestartObservingEventRequest, &unk_221BDDC50);
  sub_221BCCB28();
  if (!v2)
  {
    sub_221B22BD0(v11, v8, type metadata accessor for AppIntentsProtobuf_ClientMessages.RestartObservingEventRequest);
    sub_221AF55AC();
    sub_221B22C2C(v11, type metadata accessor for AppIntentsProtobuf_ClientMessages.RestartObservingEventRequest);
  }

  return sub_2219EC040(a1, a2);
}

uint64_t sub_221B1D770@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_221BCC948();
  MEMORY[0x28223BE20](v7 - 8);
  started = type metadata accessor for AppIntentsProtobuf_ClientMessages.StartObservingEventRequest(0);
  MEMORY[0x28223BE20](started);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v16[-v12];
  v23 = a1;
  v24 = a2;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  sub_2219EBFC8(a1, a2);
  sub_221BCC938();
  sub_221AE8904(&unk_27CFBB3A0, type metadata accessor for AppIntentsProtobuf_ClientMessages.StartObservingEventRequest, &unk_221BDDF20);
  sub_221BCCB28();
  if (v3)
  {
    return sub_2219EC040(a1, a2);
  }

  sub_221B22BD0(v13, v10, type metadata accessor for AppIntentsProtobuf_ClientMessages.StartObservingEventRequest);
  sub_221AF5FDC();
  sub_221B22C2C(v13, type metadata accessor for AppIntentsProtobuf_ClientMessages.StartObservingEventRequest);
  result = sub_2219EC040(a1, a2);
  v15 = v17;
  *a3 = *&v16[8];
  *(a3 + 16) = v15;
  *(a3 + 32) = v18;
  *(a3 + 48) = v19;
  return result;
}

uint64_t sub_221B1D994(uint64_t a1, unint64_t a2)
{
  v5 = sub_221BCC948();
  MEMORY[0x28223BE20](v5 - 8);
  started = type metadata accessor for AppIntentsProtobuf_HostMessages.StartObservingEventResponse(0);
  MEMORY[0x28223BE20](started);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v15 = a1;
  v16 = a2;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_2219EBFC8(a1, a2);
  sub_221BCC938();
  sub_221AE8904(&unk_27CFBB370, type metadata accessor for AppIntentsProtobuf_HostMessages.StartObservingEventResponse, &unk_221BDB900);
  sub_221BCCB28();
  if (!v2)
  {
    sub_221B22BD0(v11, v8, type metadata accessor for AppIntentsProtobuf_HostMessages.StartObservingEventResponse);
    sub_221AF66A0();
    sub_221B22C2C(v11, type metadata accessor for AppIntentsProtobuf_HostMessages.StartObservingEventResponse);
  }

  return sub_2219EC040(a1, a2);
}

uint64_t sub_221B1DB88(uint64_t a1, unint64_t a2)
{
  v5 = sub_221BCC948();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for AppIntentsProtobuf_ClientMessages.StopObservingEventRequest(0);
  MEMORY[0x28223BE20](v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v15 = a1;
  v16 = a2;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_2219EBFC8(a1, a2);
  sub_221BCC938();
  sub_221AE8904(&unk_27CFBB340, type metadata accessor for AppIntentsProtobuf_ClientMessages.StopObservingEventRequest, &unk_221BDDDB8);
  sub_221BCCB28();
  if (!v2)
  {
    sub_221B22BD0(v11, v8, type metadata accessor for AppIntentsProtobuf_ClientMessages.StopObservingEventRequest);
    sub_221AF6A68();
    sub_221B22C2C(v11, type metadata accessor for AppIntentsProtobuf_ClientMessages.StopObservingEventRequest);
  }

  return sub_2219EC040(a1, a2);
}

uint64_t sub_221B1DD7C(uint64_t a1, unint64_t a2)
{
  v5 = sub_221BCC948();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest(0);
  MEMORY[0x28223BE20](v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v15 = a1;
  v16 = a2;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_2219EBFC8(a1, a2);
  sub_221BCC938();
  sub_221AE8904(&unk_27CFBB310, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest, &unk_221BE0810);
  sub_221BCCB28();
  if (!v2)
  {
    sub_221B22BD0(v11, v8, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest);
    sub_221AF7CB8();
    sub_221B22C2C(v11, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest);
  }

  return sub_2219EC040(a1, a2);
}

uint64_t sub_221B1DF70(uint64_t a1, unint64_t a2)
{
  v5 = sub_221BCC948();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse(0);
  MEMORY[0x28223BE20](v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v15 = a1;
  v16 = a2;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_2219EBFC8(a1, a2);
  sub_221BCC938();
  sub_221AE8904(&unk_27CFBB2E0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse, &unk_221BDD6B0);
  sub_221BCCB28();
  if (!v2)
  {
    sub_221B22BD0(v11, v8, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse);
    sub_221AF9560();
    sub_221B22C2C(v11, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse);
  }

  return sub_2219EC040(a1, a2);
}

void sub_221B1E164()
{
  OUTLINED_FUNCTION_55_4();
  v2 = v1;
  v4 = v3;
  v5 = sub_221BCC948();
  v6 = OUTLINED_FUNCTION_8_1(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_0();
  v7 = OUTLINED_FUNCTION_85_3();
  type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse(v7);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_164();
  MEMORY[0x28223BE20](v9);
  v11 = &v22[-v10];
  v24 = v4;
  v25 = v2;
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  v12 = OUTLINED_FUNCTION_55_3();
  sub_2219EBFC8(v12, v13);
  sub_221BCC938();
  OUTLINED_FUNCTION_29_9();
  sub_221AE8904(v14, v15, &unk_221BDFFA0);
  sub_221BCCB28();
  if (!v0)
  {
    v16 = OUTLINED_FUNCTION_3_4();
    sub_221B22BD0(v16, v17, v18);
    sub_221AFF7DC();
    OUTLINED_FUNCTION_32_9();
    sub_221B22C2C(v11, v19);
  }

  v20 = OUTLINED_FUNCTION_55_3();
  sub_2219EC040(v20, v21);
  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221B1E300(uint64_t a1, unint64_t a2)
{
  v5 = sub_221BCC948();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse(0);
  MEMORY[0x28223BE20](v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v15 = a1;
  v16 = a2;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_2219EBFC8(a1, a2);
  sub_221BCC938();
  sub_221AE8904(&unk_27CFBB260, type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse, &unk_221BDFE38);
  sub_221BCCB28();
  if (!v2)
  {
    sub_221B22BD0(v11, v8, type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse);
    sub_221AFFF9C();
    sub_221B22C2C(v11, type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse);
  }

  return sub_2219EC040(a1, a2);
}

uint64_t sub_221B1E4F4(uint64_t a1, unint64_t a2)
{
  v5 = sub_221BCC948();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse(0);
  MEMORY[0x28223BE20](v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v15 = a1;
  v16 = a2;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_2219EBFC8(a1, a2);
  sub_221BCC938();
  sub_221AE8904(&unk_27CFBB230, type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse, &unk_221BE03D8);
  sub_221BCCB28();
  if (!v2)
  {
    sub_221B22BD0(v11, v8, type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse);
    sub_221B0071C();
    sub_221B22C2C(v11, type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse);
  }

  return sub_2219EC040(a1, a2);
}

uint64_t sub_221B1E6E8(uint64_t a1, unint64_t a2)
{
  v5 = sub_221BCC948();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse(0);
  MEMORY[0x28223BE20](v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v15 = a1;
  v16 = a2;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_2219EBFC8(a1, a2);
  sub_221BCC938();
  sub_221AE8904(&unk_27CFBB200, type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse, &unk_221BE0270);
  sub_221BCCB28();
  if (!v2)
  {
    sub_221B22BD0(v11, v8, type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse);
    sub_221B010E4();
    sub_221B22C2C(v11, type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse);
  }

  return sub_2219EC040(a1, a2);
}

uint64_t sub_221B1E8DC(uint64_t a1, unint64_t a2)
{
  v5 = sub_221BCC948();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse(0);
  MEMORY[0x28223BE20](v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v15 = a1;
  v16 = a2;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_2219EBFC8(a1, a2);
  sub_221BCC938();
  sub_221AE8904(&unk_27CFBB1B0, type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse, &unk_221BE0108);
  sub_221BCCB28();
  if (!v2)
  {
    sub_221B22BD0(v11, v8, type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse);
    sub_221B01874();
    sub_221B22C2C(v11, type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse);
  }

  return sub_2219EC040(a1, a2);
}

uint64_t sub_221B1EAD0(uint64_t a1, unint64_t a2)
{
  v5 = sub_221BCC948();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse(0);
  MEMORY[0x28223BE20](v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v15 = a1;
  v16 = a2;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_2219EBFC8(a1, a2);
  sub_221BCC938();
  sub_221AE8904(&unk_27CFBB1B0, type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse, &unk_221BE0108);
  sub_221BCCB28();
  if (!v2)
  {
    sub_221B22BD0(v11, v8, type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse);
    sub_221B02198();
    sub_221B22C2C(v11, type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse);
  }

  return sub_2219EC040(a1, a2);
}

uint64_t sub_221B1ECC4(uint64_t a1, unint64_t a2)
{
  v5 = sub_221BCC948();
  MEMORY[0x28223BE20](v5 - 8);
  Request = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest(0);
  MEMORY[0x28223BE20](Request);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v15 = a1;
  v16 = a2;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_2219EBFC8(a1, a2);
  sub_221BCC938();
  sub_221AE8904(&unk_27CFBB180, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest, &unk_221BDFB68);
  sub_221BCCB28();
  if (!v2)
  {
    sub_221B22BD0(v11, v8, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest);
    sub_221B02554();
    sub_221B22C2C(v11, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest);
  }

  return sub_2219EC040(a1, a2);
}