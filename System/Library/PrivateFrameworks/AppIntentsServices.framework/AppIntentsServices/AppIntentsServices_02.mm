uint64_t sub_2219B1FB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7D60, &qword_221BD1870);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2219B2020(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7D60, &qword_221BD1870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_2219B2088(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, unsigned __int16 a5)
{
  v29 = *a4;
  v8 = *v5;
  v9 = v5[1];
  v10 = *(v5 + 1);
  v11 = v5[16];
  v12 = *(v5 + 3);
  v13 = v5[32];
  v14 = *(v5 + 6);
  v22 = *(v5 + 5);
  v24 = *(v5 + 7);
  v25 = *(v5 + 8);
  v26 = v5[88];
  v27 = v5[89];
  v15 = [objc_allocWithZone(MEMORY[0x277D23AF8]) init];
  [v15 setAllowLiveActivities_];
  [v15 setAllowsPrepareBeforePerform_];
  if (v11)
  {
    v16 = 0;
  }

  else
  {
    v16 = v10;
  }

  [v15 setAssistantDismissalPolicy_];
  sub_2219B2D48(a1, a2, v15);
  [v15 setConnectionOperationTimeout_];
  [v15 setDonateToTranscript_];
  [v15 setEnvironment_];
  if (v14)
  {
    sub_2219A1D20(0, &qword_27CFB7D68, 0x277D237C8);

    v17 = sub_221AE94F4(v22, v14);
    v18 = [objc_allocWithZone(MEMORY[0x277D23C18]) initWithContentType:v17 preferredExtractionType:1];

    [v15 setExportedContentConfiguration_];
  }

  [v15 setInteractionMode_];
  [v15 setKind_];
  [v15 setPreferNoticePresentation_];
  [v15 setRequestUnlockIfNeeded_];
  [v15 setSource_];
  v19 = [objc_allocWithZone(MEMORY[0x277D23CB0]) init];
  v20 = 0;
  switch(v29)
  {
    case 10:
      break;
    default:
      v20 = sub_221BCD358();

      break;
  }

  [v19 setInterfaceIdiom_];

  [v15 setSystemContext_];
  return v15;
}

id sub_2219B23F4(uint64_t a1, void *a2)
{
  v5 = *(v2 + 80);
  v6 = [objc_allocWithZone(MEMORY[0x277D23BC8]) init];
  if (!v5)
  {
    v8 = [a2 systemProtocols];
    sub_2219A1D20(0, &qword_27CFB7D70, 0x277D23938);
    v9 = sub_221BCD668();

    v10 = [objc_opt_self() systemFrameworkProtocol];
    v37 = v10;
    MEMORY[0x28223BE20](v10);
    v36[2] = &v37;
    sub_221A14814(sub_2219B2E28, v36, v9);
    v12 = v11;

    if (v12)
    {
      v13 = a1 + 64;
      v14 = *(a1 + 16) + 1;
      do
      {
        if (!--v14)
        {
          v19 = 0;
          v16 = 0;
          v15 = 0;
          v17 = 0;
          goto LABEL_15;
        }

        v16 = *(v13 - 32);
        v15 = *(v13 - 24);
        v17 = *(v13 - 16);
        if (v16 == 7368801 && v15 == 0xE300000000000000)
        {
          break;
        }

        v13 += 40;
      }

      while ((sub_221BCE1B8() & 1) == 0);

      if (v17)
      {
        v19 = [v17 valueType];
      }

      else
      {
        v19 = 0;
      }

LABEL_15:
      v20 = [objc_opt_self() applicationValueType];
      if (v19)
      {
        sub_2219A1D20(0, &unk_27CFBB670, 0x277D23960);
        v21 = sub_221BCDC58();

        if ((v21 & 1) == 0)
        {
          v29 = OUTLINED_FUNCTION_3_6();
LABEL_23:
          OUTLINED_FUNCTION_11_0(v29, v30, v31);
          goto LABEL_24;
        }

        if (v15)
        {
          if (v17)
          {
            v22 = [v17 value];
            sub_221BCDCF8();
            swift_unknownObjectRelease();
            if (swift_dynamicCast())
            {
              sub_2219B2DA0(v36[5], v36[6], v6);
              v23 = OUTLINED_FUNCTION_3_6();
              OUTLINED_FUNCTION_11_0(v23, v24, v25);
              return v6;
            }

            v33 = OUTLINED_FUNCTION_3_6();
            OUTLINED_FUNCTION_11_0(v33, v34, v35);
            return 0;
          }

          v29 = v16;
          v30 = v15;
          v31 = 0;
          goto LABEL_23;
        }
      }

      else
      {
        v26 = OUTLINED_FUNCTION_3_6();
        OUTLINED_FUNCTION_11_0(v26, v27, v28);
      }
    }

LABEL_24:

    return 0;
  }

  v7 = sub_221BCD358();
  [v6 setPreferredBundleIdentifier_];

  return v6;
}

void AppIntentPerformOptions.init(allowLiveActivities:allowsPrepareBeforePerform:assistantDismissalPolicy:connectionOperationTimeout:donateToTranscript:exportedContentType:interactionMode:kind:preferredBundleIdentifier:preferNoticePresentation:requestUnlockIfNeeded:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, unsigned __int8 a26)
{
  OUTLINED_FUNCTION_4_4();
  v65 = v27;
  v66 = v28;
  v30 = v29;
  v64 = v31;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v60 = a26;
  v63 = a24;
  v61 = v42;
  v62 = a23;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7D60, &qword_221BD1870);
  v44 = OUTLINED_FUNCTION_8_1(v43);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_1_11();
  MEMORY[0x28223BE20](v45);
  v47 = &v59[-v46];
  sub_2219B1FB0(v30, &v59[-v46]);
  v67 = v35 & 1;
  sub_2219B1FB0(v47, v26);
  v48 = sub_221BCCC98();
  v49 = OUTLINED_FUNCTION_9_1();
  if (__swift_getEnumTagSinglePayload(v49, v50, v48) == 1)
  {
    sub_2219B2020(v30);
    sub_2219B2020(v47);
    sub_2219B2020(v26);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v51 = sub_221BCCC88();
    v52 = v53;
    sub_2219B2020(v30);
    sub_2219B2020(v47);
    OUTLINED_FUNCTION_0_6();
    (*(v54 + 8))(v26, v48);
  }

  v55 = v67;
  *v41 = v39 & 1;
  v56 = v60 & 1;
  *(v41 + 1) = v37 & 1;
  *(v41 + 8) = v61;
  *(v41 + 16) = v55;
  *(v41 + 24) = v33;
  *(v41 + 32) = v64;
  *(v41 + 40) = v51;
  *(v41 + 48) = v52;
  v57 = v66;
  *(v41 + 56) = v65;
  *(v41 + 64) = v57;
  v58 = v63;
  *(v41 + 72) = v62;
  *(v41 + 80) = v58;
  *(v41 + 88) = a25 & 1;
  *(v41 + 89) = v56;
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_5_3();
}

void AppIntentPerformOptions.init(allowsPrepareBeforePerform:connectionOperationTimeout:donateToTranscript:exportedContentType:interactionMode:kind:preferredBundleIdentifier:preferNoticePresentation:requestUnlockIfNeeded:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_4_4();
  v19 = v18;
  HIDWORD(v41) = v20;
  v22 = v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7D60, &qword_221BD1870);
  v24 = OUTLINED_FUNCTION_8_1(v23);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1_11();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_6_2(v26, v27, v28, v29, v30, v31, v32, v33, v41);
  sub_2219B1FB0(v17, v16);
  v34 = sub_221BCCC98();
  v35 = OUTLINED_FUNCTION_9_1();
  if (__swift_getEnumTagSinglePayload(v35, v36, v34) == 1)
  {
    sub_2219B2020(v19);
    sub_2219B2020(v17);
    sub_2219B2020(v16);
  }

  else
  {
    sub_221BCCC88();
    sub_2219B2020(v19);
    sub_2219B2020(v17);
    OUTLINED_FUNCTION_0_6();
    (*(v37 + 8))(v16, v34);
  }

  OUTLINED_FUNCTION_10_0();
  *v22 = 0;
  OUTLINED_FUNCTION_2_7(v38);
  v22[88] = v39;
  v22[89] = v40;
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_5_3();
}

void AppIntentPerformOptions.init(allowLiveActivities:allowsPrepareBeforePerform:connectionOperationTimeout:donateToTranscript:exportedContentType:interactionMode:kind:preferredBundleIdentifier:preferNoticePresentation:requestUnlockIfNeeded:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, unsigned __int8 a24)
{
  OUTLINED_FUNCTION_4_4();
  v27 = v26;
  v29 = v28;
  LODWORD(v50) = a24;
  HIDWORD(v50) = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7D60, &qword_221BD1870);
  v32 = OUTLINED_FUNCTION_8_1(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1_11();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_6_2(v34, v35, v36, v37, v38, v39, v40, v41, v50);
  sub_2219B1FB0(v25, v24);
  v42 = sub_221BCCC98();
  v43 = OUTLINED_FUNCTION_9_1();
  if (__swift_getEnumTagSinglePayload(v43, v44, v42) == 1)
  {
    sub_2219B2020(v27);
    sub_2219B2020(v25);
    sub_2219B2020(v24);
  }

  else
  {
    sub_221BCCC88();
    sub_2219B2020(v27);
    sub_2219B2020(v25);
    OUTLINED_FUNCTION_0_6();
    (*(v45 + 8))(v24, v42);
  }

  OUTLINED_FUNCTION_10_0();
  *v29 = v46;
  OUTLINED_FUNCTION_2_7(v47);
  v29[88] = v48;
  v29[89] = v49;
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_5_3();
}

uint64_t sub_2219B2BB4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 196))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 48);
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

uint64_t sub_2219B2C08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 192) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 196) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 196) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t sub_2219B2D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_221BCE1B8() & 1;
  }
}

void sub_2219B2D48(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_221BCD358();
  [a3 setClientLabel_];
}

void sub_2219B2DA0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_221BCD358();

  [a3 setPreferredBundleIdentifier_];
}

void sub_2219B2E48(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}

double OUTLINED_FUNCTION_0_11()
{
  result = 0.0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 2;
  return result;
}

void OUTLINED_FUNCTION_2_7(char a1@<W8>)
{
  *(v2 + 1) = a1;
  *(v2 + 8) = 0;
  *(v2 + 16) = v1;
  *(v2 + 24) = v6;
  *(v2 + 32) = *(v5 - 140);
  *(v2 + 40) = v3;
  *(v2 + 48) = v4;
  v7 = *(v5 - 128);
  *(v2 + 56) = *(v5 - 136);
  *(v2 + 64) = v7;
  v8 = *(v5 - 112);
  *(v2 + 72) = *(v5 - 120);
  *(v2 + 80) = v8;
}

uint64_t OUTLINED_FUNCTION_6_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_2219B1FB0(v10, &a9 - v9);
}

void OUTLINED_FUNCTION_11_0(uint64_t a1, uint64_t a2, void *a3)
{

  sub_2219B2E48(a1, a2, a3);
}

uint64_t AppIntentRepresentation.exportToSpecification()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v38 = a2;
  v40 = a3;
  v5 = sub_221BCE388();
  v41 = *(v5 - 8);
  v42 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v55 + 1) = a1;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v54);
  v9 = *(*(a1 - 8) + 16);
  v37 = a1;
  v9(boxed_opaque_existential_1, v3, a1);
  sub_221BCE368();
  v39 = v7;
  v36[1] = sub_221BCE378();
  sub_221BCDFE8();
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_221BCE098();
    if (!*(&v56 + 1))
    {
      break;
    }

    v52 = v54;
    v53[0] = v55;
    v53[1] = v56;
    v11 = *(&v54 + 1);
    if (!*(&v54 + 1))
    {
      goto LABEL_7;
    }

    v12 = v52;
    sub_22199B650(v53, &v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7D78, &qword_221BD18E8);
    if (!swift_dynamicCast())
    {
      v44 = 0;
      memset(v43, 0, sizeof(v43));
      sub_2219A6860(v43, &qword_27CFB7D80, &qword_221BD18F0);
LABEL_7:
      v17 = 0;
      v51 = 0;
      v49 = 0u;
      v50 = 0u;
      goto LABEL_8;
    }

    sub_22198B358(v43, v46);
    v13 = v47;
    v14 = v48;
    __swift_project_boxed_opaque_existential_0(v46, v47);
    (*(v14 + 32))(v12, v11, v13, v14);
    v15 = v47;
    v16 = v48;
    __swift_project_boxed_opaque_existential_0(v46, v47);
    (*(v16 + 16))(&v49, v15, v16);
    __swift_destroy_boxed_opaque_existential_0(v46);
    v17 = *(&v49 + 1);
LABEL_8:
    sub_2219A6860(&v52, &qword_27CFB77C8, &unk_221BD0D30);
    v18 = v49;
    v19 = v50;
    v20 = v51;
    if (v17)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_10_1();
        sub_2219B3BE4();
        v10 = v23;
      }

      v21 = *(v10 + 16);
      if (v21 >= *(v10 + 24) >> 1)
      {
        sub_2219B3BE4();
        v10 = v24;
      }

      *(v10 + 16) = v21 + 1;
      v22 = v10 + 40 * v21;
      *(v22 + 32) = v18;
      *(v22 + 40) = v17;
      *(v22 + 48) = v19;
      *(v22 + 64) = v20;
    }

    else
    {
      sub_2219B2E48(v49, 0, v50);
    }
  }

  v25 = v37;
  v26 = v38;
  v27 = (*(v38 + 16))(v37, v38);
  v29 = v28;
  v30 = (*(v26 + 24))(v25, v26);
  v32 = v31;
  v33 = v40;
  v40[3] = &type metadata for AnyAppIntentSpecification;
  v33[4] = &off_283513928;
  v34 = swift_allocObject();
  *v33 = v34;
  *(v34 + 16) = v27;
  *(v34 + 24) = v29;
  *(v34 + 32) = xmmword_221BD0800;
  *(v34 + 48) = v30;
  *(v34 + 56) = v32;
  *(v34 + 64) = v10;
  return (*(v41 + 8))(v39, v42);
}

uint64_t AppIntentRepresentation.options<A>(for:searchTerm:dispatcher:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[18] = a7;
  v8[19] = v7;
  v8[16] = a5;
  v8[17] = a6;
  v8[14] = a3;
  v8[15] = a4;
  v8[12] = a1;
  v8[13] = a2;
  v8[20] = *a2;
  return MEMORY[0x2822009F8](sub_2219B3434, 0, 0);
}

uint64_t sub_2219B3434()
{
  v1 = *(v0[20] + *MEMORY[0x277D84DE8]);
  (*(v0[18] + 32))(v1);
  swift_getAtKeyPath();
  v2 = v0[10];
  v0[21] = v2;
  v3 = v2 + *(*v2 + 112);
  swift_beginAccess();
  v4 = *(v3 + 8);
  v0[22] = v4;
  if (v4)
  {
    v19 = v0[17];
    swift_getObjectType();
    v5 = *(v19 + 24);

    v18 = v5 + *v5;
    v6 = swift_task_alloc();
    v0[23] = v6;
    *v6 = v0;
    v6[1] = sub_2219B3740;

    __asm { BRAA            X8, X16 }
  }

  v7 = v0[13];
  v8 = (*(v0[18] + 24))(v1);
  v10 = v9;
  v0[11] = v7;
  sub_221BCE3E8();

  v11 = sub_221BCD3D8();
  v13 = v12;
  sub_2219A1218(v11, v12, v14);
  swift_allocError();
  *v15 = v8;
  *(v15 + 8) = v10;
  *(v15 + 16) = v11;
  *(v15 + 24) = v13;
  *(v15 + 32) = 3;
  swift_willThrow();

  sub_2219B397C((v0 + 2));
  v16 = v0[1];

  return v16();
}

uint64_t sub_2219B3740()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_2219B38E0;
  }

  else
  {
    v2 = sub_2219B3874;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2219B3874()
{

  sub_2219B397C(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2219B38E0()
{

  sub_2219B397C(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

void sub_2219B3A0C()
{
  OUTLINED_FUNCTION_9_2();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_4_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_2_8();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7820, &unk_221BD1970);
      v7 = OUTLINED_FUNCTION_11_1(v6);
      v8 = _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_5_4(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_4_5();
        sub_2219A2C2C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_3_7();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_8_2();
  if (!v4)
  {
    OUTLINED_FUNCTION_2_2();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2219B3AFC()
{
  OUTLINED_FUNCTION_9_2();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_4_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_2_8();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7518, &unk_221BCFFB0);
      v6 = OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_6_3(v6);
      OUTLINED_FUNCTION_7_1(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_4_5();
        sub_2219A2C0C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_3_7();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_8_2();
  if (!v4)
  {
    OUTLINED_FUNCTION_2_2();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2219B3BE4()
{
  OUTLINED_FUNCTION_13_0();
  if ((v6 & 1) == 0)
  {
    v7 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_4_1();
  if (v8 == v9)
  {
LABEL_7:
    v10 = *(v0 + 16);
    if (v7 <= v10)
    {
      v11 = *(v0 + 16);
    }

    else
    {
      v11 = v7;
    }

    if (v11)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
      v12 = swift_allocObject();
      v13 = _swift_stdlib_malloc_size(v12);
      v12[2] = v10;
      v12[3] = 2 * ((v13 - 32) / 40);
      if (v2)
      {
LABEL_12:
        v1(v0 + 32, v10, v12 + 4);
        *(v0 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
      if (v2)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_14_1();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_8_2();
  if (!v8)
  {
    OUTLINED_FUNCTION_2_2();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2219B3CC4()
{
  OUTLINED_FUNCTION_9_2();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_4_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_2_8();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7D88, &unk_221BD1920);
      v6 = swift_allocObject();
      OUTLINED_FUNCTION_6_3(v6);
      OUTLINED_FUNCTION_7_1(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_4_5();
        sub_2219A2C74(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_3_7();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_8_2();
  if (!v4)
  {
    OUTLINED_FUNCTION_2_2();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2219B3D84()
{
  OUTLINED_FUNCTION_9_2();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_4_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_2_8();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7878, &unk_221BD1980);
      v7 = OUTLINED_FUNCTION_11_1(v6);
      v8 = _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_5_4(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_4_5();
        sub_2219A2BE4(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7880, &qword_221BD0DC8);
    OUTLINED_FUNCTION_3_7();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_8_2();
  if (!v4)
  {
    OUTLINED_FUNCTION_2_2();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2219B3E54()
{
  OUTLINED_FUNCTION_9_2();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_4_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_2_8();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7888, &qword_221BD0DD0);
      v7 = OUTLINED_FUNCTION_11_1(v6);
      v8 = _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_5_4(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_4_5();
        sub_2219A2C94(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_3_7();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_8_2();
  if (!v4)
  {
    OUTLINED_FUNCTION_2_2();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2219B3F14()
{
  OUTLINED_FUNCTION_9_2();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_4_1(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_2_8();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7DC8, &unk_221BD19C0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v2;
      v7[3] = 2 * v8 - 64;
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_4_5();
        sub_2219A2CB8(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = OUTLINED_FUNCTION_3_7();
    memcpy(v12, v13, v14);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_8_2();
  if (!v5)
  {
    OUTLINED_FUNCTION_2_2();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2219B3FD0()
{
  OUTLINED_FUNCTION_9_2();
  if (v3)
  {
    OUTLINED_FUNCTION_4_1();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_8_2();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_2();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  v8 = sub_221BB9B00(v7, v4);
  v9 = *(type metadata accessor for AppNotificationEventRegistry.AppNotificationEventListener.TopicObserver(0) - 8);
  if (v1)
  {
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    sub_2219A2CE0(v0 + v10, v7, v8 + v10);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2219B4104()
{
  OUTLINED_FUNCTION_13_0();
  if ((v6 & 1) == 0)
  {
    v7 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_4_1();
  if (v8 == v9)
  {
LABEL_7:
    v10 = *(v0 + 16);
    if (v7 <= v10)
    {
      v11 = *(v0 + 16);
    }

    else
    {
      v11 = v7;
    }

    if (v11)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
      v12 = OUTLINED_FUNCTION_12_0();
      v13 = _swift_stdlib_malloc_size(v12);
      v12[2] = v10;
      v12[3] = 2 * ((v13 - 32) / 32);
      if (v2)
      {
LABEL_12:
        v1(v0 + 32, v10, v12 + 4);
        *(v0 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
      if (v2)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_14_1();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_8_2();
  if (!v8)
  {
    OUTLINED_FUNCTION_2_2();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2219B41D4()
{
  OUTLINED_FUNCTION_9_2();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_4_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_2_8();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78D0, &unk_221BD1990);
      v6 = OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_6_3(v6);
      OUTLINED_FUNCTION_7_1(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_4_5();
        sub_2219A2CF8();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78D8, &unk_221BE94B0);
    OUTLINED_FUNCTION_3_7();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_8_2();
  if (!v4)
  {
    OUTLINED_FUNCTION_2_2();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2219B429C()
{
  OUTLINED_FUNCTION_9_2();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_4_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_2_8();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7D90, &qword_221BD1938);
      v6 = OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_6_3(v6);
      OUTLINED_FUNCTION_7_1(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_4_5();
        sub_2219A2C0C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7D98, &qword_221BD1940);
    OUTLINED_FUNCTION_3_7();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_8_2();
  if (!v4)
  {
    OUTLINED_FUNCTION_2_2();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2219B4454(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t *a6, uint64_t *a7, void (*a8)(unint64_t, uint64_t, unint64_t))
{
  if (a3)
  {
    OUTLINED_FUNCTION_4_1();
    if (v14 != v15)
    {
      OUTLINED_FUNCTION_8_2();
      if (v14)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_2();
    }
  }

  else
  {
    v13 = a2;
  }

  v16 = *(a4 + 16);
  v17 = a5(v16, v13);
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a6, a7) - 8);
  if (a1)
  {
    v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    a8(a4 + v19, v16, v17 + v19);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2219B4554()
{
  OUTLINED_FUNCTION_9_2();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_4_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_2_8();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7DB8, &unk_221BD1960);
      v7 = OUTLINED_FUNCTION_11_1(v6);
      v8 = _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_5_4(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_4_5();
        sub_2219A2ECC(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_3_7();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_8_2();
  if (!v4)
  {
    OUTLINED_FUNCTION_2_2();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2219B4614()
{
  OUTLINED_FUNCTION_9_2();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_4_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_2_8();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7DA8, &unk_221BD1950);
      v6 = OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_6_3(v6);
      OUTLINED_FUNCTION_7_1(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_4_5();
        sub_2219A2C54(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7DB0, &qword_221BE8EC0);
    OUTLINED_FUNCTION_3_7();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_8_2();
  if (!v4)
  {
    OUTLINED_FUNCTION_2_2();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t OUTLINED_FUNCTION_5_4(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_1(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_12_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_14_1()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_2219B47E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7DD0, &unk_221BD19F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v18 - v9;
  sub_2219B68B8(a3, v18 - v9, &qword_27CFB7DD0, &unk_221BD19F0);
  v11 = sub_221BCC418();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_2219A6860(a3, &qword_27CFB7DD0, &unk_221BD19F0);
    result = sub_2219A6860(v10, &qword_27CFB7DD0, &unk_221BD19F0);
    v13 = 0;
  }

  else
  {
    v18[3] = v11;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
    v15 = *(v11 - 8);
    (*(v15 + 16))(boxed_opaque_existential_1, v10, v11);
    v16 = [objc_opt_self() URLValueType];
    v17 = objc_allocWithZone(MEMORY[0x277D23958]);
    v13 = sub_2219A6260(v18, v16);
    sub_2219A6860(a3, &qword_27CFB7DD0, &unk_221BD19F0);
    result = (*(v15 + 8))(v10, v11);
  }

  *a4 = a1;
  a4[1] = a2;
  a4[2] = v13;
  a4[3] = v11;
  a4[4] = &protocol witness table for URL;
  return result;
}

uint64_t sub_2219B49E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_2219B68B8(a3, v10, &qword_27CFB7920, &qword_221BD0E60);
  if (v11)
  {
    v8 = AppEntitySpecification.lnValue.getter();
    sub_2219A6860(a3, &qword_27CFB7920, &qword_221BD0E60);
    result = sub_2219A1BD4(v10);
  }

  else
  {
    sub_2219A6860(a3, &qword_27CFB7920, &qword_221BD0E60);
    result = sub_2219A6860(v10, &qword_27CFB7920, &qword_221BD0E60);
    v8 = 0;
  }

  *a4 = a1;
  a4[1] = a2;
  a4[2] = v8;
  a4[3] = &type metadata for AppEntitySpecification;
  a4[4] = &protocol witness table for AppEntitySpecification;
  return result;
}

__n128 AppIntentSpecification.init(app:actionIdentifier:parameters:)@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v13 = *a1;
  v9 = a1[1].n128_u64[0];
  v10 = a1[1].n128_u64[1];
  a5[3] = &type metadata for AnyAppIntentSpecification;
  a5[4] = &off_283513928;
  v11 = swift_allocObject();
  *a5 = v11;
  result = v13;
  *(v11 + 16) = v13;
  *(v11 + 32) = v9;
  *(v11 + 40) = v10;
  *(v11 + 48) = a2;
  *(v11 + 56) = a3;
  *(v11 + 64) = a4;
  return result;
}

uint64_t AppIntentSpecification.app.getter()
{
  __swift_project_boxed_opaque_existential_0(v0, v0[3]);
  v1 = OUTLINED_FUNCTION_1_0();
  return v2(v1);
}

uint64_t AppIntentSpecification.actionIdentifier.getter()
{
  __swift_project_boxed_opaque_existential_0(v0, v0[3]);
  v1 = OUTLINED_FUNCTION_4();
  return v2(v1);
}

uint64_t AppIntentSpecification.parameters.getter()
{
  __swift_project_boxed_opaque_existential_0(v0, v0[3]);
  v1 = OUTLINED_FUNCTION_4();
  return v2(v1);
}

uint64_t AppIntentSpecification.parameters.setter()
{
  v0 = OUTLINED_FUNCTION_16();
  __swift_mutable_project_boxed_opaque_existential_1(v0, v1);
  v2 = OUTLINED_FUNCTION_4();
  return v3(v2);
}

uint64_t (*AppIntentSpecification.parameters.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = OUTLINED_FUNCTION_16();
  __swift_project_boxed_opaque_existential_0(v3, v4);
  v5 = OUTLINED_FUNCTION_1_0();
  *a1 = v6(v5);
  return sub_2219B4D44;
}

uint64_t sub_2219B4D44(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  v6 = *(v5 + 32);
  if (a2)
  {

    v6(v7, v4, v5);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_4();
    return (v6)(v9);
  }
}

uint64_t static AppIntentSpecification.openURL(app:url:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7DD0, &unk_221BD19F0);
  MEMORY[0x28223BE20](v6 - 8);
  v26 = &v25 - v7;
  v8 = sub_221BCC418();
  OUTLINED_FUNCTION_0_2();
  v10 = v9;
  v25 = v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = a1[1];
  v18 = a1[2];
  v17 = a1[3];
  v19 = *(v10 + 16);
  v19(v14, a2, v8, v12);
  a3[3] = &type metadata for OpenURLIntentSpecification;
  a3[4] = &off_2835138F8;
  v20 = swift_allocObject();
  *a3 = v20;
  *(v20 + 16) = v15;
  *(v20 + 24) = v16;
  *(v20 + 32) = v18;
  *(v20 + 40) = v17;
  strcpy((v20 + 48), "OpenURLIntent");
  *(v20 + 62) = -4864;
  *(v20 + 72) = 0;
  *(v20 + 80) = 0;
  *(v20 + 88) = 1;
  *(v20 + 96) = 0;
  *(v20 + 104) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7908, &unk_221BD19D0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_221BD19E0;
  v22 = v26;
  v23 = OUTLINED_FUNCTION_4();
  (v19)(v23);
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v8);

  sub_221998178(v18, v17);
  sub_2219B47E4(7107189, 0xE300000000000000, v22, (v21 + 32));
  *(v20 + 64) = v21;
  result = (*(v25 + 8))(v14, v8);
  *(v20 + 112) = MEMORY[0x277D84F90];
  return result;
}

uint64_t static AppIntentSpecification.== infix(_:_:)(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v3 = OUTLINED_FUNCTION_0_12();
  v4(v3);
  v34[0] = v36;
  v34[1] = v37;
  v35 = v38;
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v5 = OUTLINED_FUNCTION_0_12();
  v6(v5);
  v29[0] = v31;
  v29[1] = v32;
  v30 = v33;
  v7 = static AppIdentifier.== infix(_:_:)(v34, v29);
  v8 = v30;

  sub_2219982C4(v8, *(&v8 + 1));
  v9 = v35;

  sub_2219982C4(v9, *(&v9 + 1));
  if (!v7)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1_12();
  v10 = OUTLINED_FUNCTION_0_12();
  v12 = v11(v10);
  v14 = v13;
  v15 = a2[3];
  v16 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, v15);
  if (v12 == (*(v16 + 16))(v15, v16) && v14 == v17)
  {
  }

  else
  {
    v19 = sub_221BCE1B8();

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_1_12();
  v21 = OUTLINED_FUNCTION_0_12();
  v23 = v22(v21);
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v24 = OUTLINED_FUNCTION_0_12();
  v26 = v25(v24);
  sub_2219B5260(v23, v26);
  v28 = v27;

  return v28 & 1;
}

void sub_2219B5260(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v52 = MEMORY[0x277D84F90];
    sub_2219A2FD4(0, v3, 0);
    v4 = v52;
    v6 = (a1 + 48);
    do
    {
      v8 = *(v6 - 2);
      v7 = *(v6 - 1);
      v9 = *v6;
      v11 = *(v52 + 16);
      v10 = *(v52 + 24);

      v12 = v9;
      if (v11 >= v10 >> 1)
      {
        sub_2219A2FD4((v10 > 1), v11 + 1, 1);
      }

      v6 += 5;
      *(v52 + 16) = v11 + 1;
      v13 = (v52 + 24 * v11);
      v13[4] = v8;
      v13[5] = v7;
      v13[6] = v9;
      --v3;
    }

    while (v3);
    v2 = a2;
  }

  v14 = sub_22199F118(v4);
  v15 = v14;
  v16 = *(v2 + 16);
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v50 = v14;
    v53 = MEMORY[0x277D84F90];
    sub_2219A2FD4(0, v16, 0);
    v17 = v53;
    v18 = (v2 + 48);
    do
    {
      v20 = *(v18 - 2);
      v19 = *(v18 - 1);
      v21 = *v18;
      v22 = *(v53 + 16);
      v23 = *(v53 + 24);

      v24 = v21;
      if (v22 >= v23 >> 1)
      {
        sub_2219A2FD4((v23 > 1), v22 + 1, 1);
      }

      v18 += 5;
      *(v53 + 16) = v22 + 1;
      v25 = (v53 + 24 * v22);
      v25[4] = v20;
      v25[5] = v19;
      v25[6] = v21;
      --v16;
    }

    while (v16);
    v15 = v50;
  }

  v26 = sub_22199F118(v17);
  v27 = v26;
  if (*(v15 + 16) != *(v26 + 16))
  {

    return;
  }

  v28 = 0;
  v29 = v15 + 64;
  v30 = 1 << *(v15 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(v15 + 64);
  v33 = (v30 + 63) >> 6;
  v48 = v26;
  do
  {
    while (1)
    {
      if (!v32)
      {
        while (1)
        {
          v34 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            break;
          }

          if (v34 >= v33)
          {

            return;
          }

          v32 = *(v29 + 8 * v34);
          ++v28;
          if (v32)
          {
            v28 = v34;
            goto LABEL_22;
          }
        }

        __break(1u);
        return;
      }

LABEL_22:
      v35 = __clz(__rbit64(v32)) | (v28 << 6);
      v36 = *(*(v15 + 56) + 8 * v35);
      if (!*(v27 + 16))
      {
        v47 = v36;
LABEL_34:

        return;
      }

      v37 = v15;
      v38 = (*(v15 + 48) + 16 * v35);
      v39 = *v38;
      v40 = v38[1];
      v51 = v36;

      v41 = sub_221B9E9B8(v39, v40);
      v43 = v42;

      if ((v43 & 1) == 0)
      {
        v47 = v51;
        goto LABEL_34;
      }

      v32 &= v32 - 1;
      v44 = *(*(v27 + 56) + 8 * v41);
      if (!v44)
      {
        break;
      }

      v15 = v37;
      if (v36)
      {
        sub_2219A1D20(0, &qword_27CFBB680, 0x277D23958);
        v45 = v44;
        v46 = sub_221BCDC58();

        v27 = v48;
        if (v46)
        {
          continue;
        }
      }

      goto LABEL_35;
    }

    v15 = v37;
    v27 = v48;
  }

  while (!v36);

LABEL_35:
}

void sub_2219B55C4(id a1@<X1>, uint64_t *a2@<X0>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v5 = a2[1];
  v42 = a2[3];
  v43 = a2[2];
  v7 = [a1 identifier];
  v8 = sub_221BCD388();
  v39 = v9;
  v40 = v8;

  v10 = sub_2219B6920(a1);
  v37 = v11;
  v38 = v10;
  v36 = [a1 openAppWhenRun];
  v35 = [a1 outputFlags];
  v34 = [a1 outputType];
  v41 = a1;
  v12 = [a1 parameters];
  sub_2219A1D20(0, &qword_27CFB77D8, 0x277D238D8);
  v13 = sub_221BCD668();

  v14 = sub_2219A69A0();
  v44 = v5;
  if (!v14)
  {

    v17 = MEMORY[0x277D84F90];
LABEL_12:
    v30 = [v41 systemProtocols];
    sub_2219A1D20(0, &qword_27CFB7D70, 0x277D23938);
    v31 = sub_221BCD668();

    *a3 = v6;
    *(a3 + 8) = v44;
    *(a3 + 16) = v43;
    *(a3 + 24) = v42;
    *(a3 + 32) = v40;
    *(a3 + 40) = v39;
    *(a3 + 48) = v17;
    *(a3 + 56) = v38;
    *(a3 + 64) = v37;
    *(a3 + 72) = v36;
    *(a3 + 80) = v35;
    *(a3 + 88) = v34;
    *(a3 + 96) = v31;
    return;
  }

  v15 = v14;
  v46 = MEMORY[0x277D84F90];
  sub_2219A2FF4(0, v14 & ~(v14 >> 63), 0);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v32 = v6;
    v33 = a3;
    v16 = 0;
    v17 = v46;
    v45 = v13 & 0xC000000000000001;
    v18 = v13;
    v19 = v15;
    do
    {
      if (v45)
      {
        v20 = MEMORY[0x223DA3BF0](v16, v13);
      }

      else
      {
        v20 = *(v13 + 8 * v16 + 32);
      }

      v21 = v20;
      v22 = [v20 identifier];
      v23 = sub_221BCD388();
      v25 = v24;

      v26 = [v21 value];
      v28 = *(v46 + 16);
      v27 = *(v46 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_2219A2FF4((v27 > 1), v28 + 1, 1);
      }

      ++v16;
      *(v46 + 16) = v28 + 1;
      v29 = (v46 + 40 * v28);
      v29[4] = v23;
      v29[5] = v25;
      v29[7] = 0;
      v29[8] = 0;
      v29[6] = v26;
      v13 = v18;
    }

    while (v19 != v16);

    v6 = v32;
    a3 = v33;
    goto LABEL_12;
  }

  __break(1u);
}

uint64_t sub_2219B58B8@<X0>(id a1@<X1>, uint64_t *a2@<X0>, void *a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = [a1 identifier];
  v10 = sub_221BCD388();
  v36 = v11;

  v12 = [a1 parameters];
  sub_2219A1D20(0, &qword_27CFB77D8, 0x277D238D8);
  v13 = sub_221BCD668();

  v14 = sub_2219A69A0();
  v37 = v10;
  if (!v14)
  {

    v18 = MEMORY[0x277D84F90];
LABEL_12:
    *a3 = v5;
    a3[1] = v6;
    a3[2] = v7;
    a3[3] = v8;
    a3[4] = v37;
    a3[5] = v36;
    a3[6] = v18;
    return result;
  }

  v15 = v14;
  v40 = MEMORY[0x277D84F90];
  result = sub_2219A2FF4(0, v14 & ~(v14 >> 63), 0);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v31 = v8;
    v32 = v7;
    v33 = v6;
    v34 = v5;
    v35 = a3;
    v17 = 0;
    v18 = v40;
    v38 = v13 & 0xC000000000000001;
    v39 = v15;
    v19 = a1;
    v20 = v13;
    do
    {
      if (v38)
      {
        v21 = MEMORY[0x223DA3BF0](v17, v13);
      }

      else
      {
        v21 = *(v13 + 8 * v17 + 32);
      }

      v22 = v21;
      v23 = [v21 identifier];
      v24 = sub_221BCD388();
      v26 = v25;

      v27 = [v22 value];
      v29 = *(v40 + 16);
      v28 = *(v40 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_2219A2FF4((v28 > 1), v29 + 1, 1);
      }

      ++v17;
      *(v40 + 16) = v29 + 1;
      v30 = (v40 + 40 * v29);
      v30[4] = v24;
      v30[5] = v26;
      v30[7] = 0;
      v30[8] = 0;
      v30[6] = v27;
      v13 = v20;
    }

    while (v39 != v17);

    v5 = v34;
    a3 = v35;
    v7 = v32;
    v6 = v33;
    v8 = v31;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_2219B5AFC(char *a1)
{
  v1 = *a1;
  v15[1] = 0xE000000000000000;
  sub_221BCDE68();
  v18 = 0;
  v19 = 0xE000000000000000;
  MEMORY[0x223DA31F0](0xD00000000000001CLL, 0x8000000221BEC750);
  v2 = OUTLINED_FUNCTION_1_0();
  __swift_project_boxed_opaque_existential_0(v2, v3);
  v4 = OUTLINED_FUNCTION_0_12();
  v5(v4);
  sub_2219982C4(v15[2], v16);
  MEMORY[0x223DA31F0](0, 0xE000000000000000);

  MEMORY[0x223DA31F0](0x3A6E6F6974636120, 0xE900000000000020);
  OUTLINED_FUNCTION_1_12();
  v6 = OUTLINED_FUNCTION_0_12();
  v8 = v7(v6);
  MEMORY[0x223DA31F0](v8);

  MEMORY[0x223DA31F0](0x74656D6172617020, 0xED0000203A737265);
  OUTLINED_FUNCTION_1_12();
  v9 = OUTLINED_FUNCTION_0_12();
  v11 = v10(v9);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7750, &unk_221BD0CC0);
  v17 = sub_2219A19D8();
  v15[0] = v11;
  v12 = __swift_project_boxed_opaque_existential_0(v15, v16);
  sub_2219B6438(v1, *v12);
  __swift_destroy_boxed_opaque_existential_0(v15);
  v13 = OUTLINED_FUNCTION_4();
  MEMORY[0x223DA31F0](v13);

  MEMORY[0x223DA31F0](41, 0xE100000000000000);
  return v18;
}

unint64_t sub_2219B5CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2219B5CF8(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2219B5CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB7DD8;
  if (!qword_27CFB7DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB7DD8);
  }

  return result;
}

uint64_t sub_2219B5D4C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2219B5D8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2219B5DEC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2219B5E2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2219B5E94(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2219B5ED4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2219B5F30@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;

  return sub_221998178(v4, v5);
}

uint64_t sub_2219B5F78()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_2219B5FB0(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

char *sub_2219B5FDC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7DD0, &unk_221BD19F0);
  MEMORY[0x28223BE20](v1 - 8);
  v59 = &v49 - v2;
  v60 = sub_221BCC418();
  OUTLINED_FUNCTION_0_2();
  v51 = v3;
  MEMORY[0x28223BE20](v4);
  v50 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  v9 = *(v0 + 56);
  v10 = *(v0 + 64);
  v58 = *(v0 + 72);
  v12 = *(v0 + 80);
  v11 = *(v0 + 88);
  v13 = *(v0 + 96);
  v14 = *(v8 + 16);
  v57 = v8;
  if (v14)
  {
    v54 = v9;
    v56 = v6;
    v61 = MEMORY[0x277D84F90];
    v52 = v11;
    v15 = v11;
    v16 = v13;

    v55 = v7;

    v53 = v10;

    v17 = v12;
    v18 = v12;
    sub_221BCDF28();
    v19 = (v8 + 48);
    do
    {
      v20 = *(v19 - 2);
      v21 = *(v19 - 1);
      v22 = *v19;
      v19 += 5;
      v23 = objc_allocWithZone(MEMORY[0x277D238D8]);
      v24 = v22;

      sub_2219A62D8(v20, v21, v22);
      sub_221BCDEF8();
      sub_221BCDF38();
      sub_221BCDF48();
      sub_221BCDF08();
      --v14;
    }

    while (v14);
    v25 = v61;
    v7 = v55;
    v6 = v56;
    v10 = v53;
    v9 = v54;
    v26 = v52;
  }

  else
  {
    v26 = v11;
    v27 = v11;

    v28 = v12;
    v25 = MEMORY[0x277D84F90];
    v17 = v12;
    v16 = v13;
  }

  v29 = objc_allocWithZone(MEMORY[0x277D23720]);
  v30 = sub_2219B6770(v6, v7, v9, v10, v58, v17, v26, v16, v25);
  v31 = v57 + 64;
  v32 = *(v57 + 16) + 1;
  do
  {
    if (!--v32)
    {
      v38 = v59;
      v39 = v60;
      goto LABEL_20;
    }

    v34 = *(v31 - 32);
    v33 = *(v31 - 24);
    v35 = *(v31 - 16);
    if (v34 == 7107189 && v33 == 0xE300000000000000)
    {
      v42 = v35;

      v33 = 0xE300000000000000;
      v38 = v59;
      v39 = v60;
      if (v35)
      {
        goto LABEL_15;
      }

LABEL_19:
      sub_2219B2E48(v34, v33, 0);
LABEL_20:
      __swift_storeEnumTagSinglePayload(v38, 1, 1, v39);
LABEL_21:
      sub_2219A6860(v38, &qword_27CFB7DD0, &unk_221BD19F0);
      return v30;
    }

    v31 += 40;
  }

  while ((sub_221BCE1B8() & 1) == 0);
  v37 = v35;

  v38 = v59;
  v39 = v60;
  if (!v33)
  {
    goto LABEL_20;
  }

  if (!v35)
  {
    goto LABEL_19;
  }

LABEL_15:
  v40 = [v35 value];
  sub_221BCDCF8();
  swift_unknownObjectRelease();
  v41 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v38, v41 ^ 1u, 1, v39);
  if (__swift_getEnumTagSinglePayload(v38, 1, v39) == 1)
  {
    OUTLINED_FUNCTION_4_6();
    goto LABEL_21;
  }

  v44 = v51;
  v45 = *(v51 + 32);
  v59 = v30;
  v46 = v50;
  v45(v50, v38, v39);
  v47 = sub_221BCC388();
  v48 = v59;
  v60 = [v59 actionWithURL_];

  OUTLINED_FUNCTION_4_6();
  (*(v44 + 8))(v46, v39);
  return v60;
}

uint64_t sub_2219B6438(char a1, uint64_t a2)
{
  v47 = 91;
  v48 = 0xE100000000000000;
  v2 = *(a2 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v46 = MEMORY[0x277D84F90];
    v5 = sub_2219A2FB4(0, v2, 0);
    v3 = v46;
    v43 = sub_2219A1A5C(v5, v6, v7);
    v8 = (a2 + 64);
    do
    {
      v9 = *(v8 - 4);
      v10 = *(v8 - 3);
      v11 = *(v8 - 2);
      v12 = *(v8 - 1);
      v13 = *v8;
      v45[3] = &type metadata for NamedProperty;
      v45[4] = v43;
      v14 = swift_allocObject();
      v45[0] = v14;
      v14[2] = v9;
      v14[3] = v10;
      v14[4] = v11;
      v14[5] = v12;
      v14[6] = v13;
      v15 = __swift_project_boxed_opaque_existential_0(v45, &type metadata for NamedProperty);
      v16 = *v15;
      v17 = v15[1];
      v18 = v15[2];
      if (a1)
      {
        if (!v18)
        {
          goto LABEL_8;
        }

        v19 = v11;

        v42 = v19;

        v20 = OUTLINED_FUNCTION_16();
        v22 = [v20 v21];
        v23 = [v22 description];

        v24 = sub_221BCD388();
        v25 = v16;
        v27 = v26;

        MEMORY[0x223DA31F0](v24, v27);
        MEMORY[0x223DA31F0](41, 0xE100000000000000);
        v16 = v25;
        v28 = v42;

        v29 = 0x20656D6F7328;
        v30 = 0xE600000000000000;
      }

      else
      {
        if (!v18)
        {
LABEL_8:
          v36 = v11;
          swift_bridgeObjectRetain_n();
          v28 = v36;
          v30 = 0xE300000000000000;
          v29 = 7104878;
          goto LABEL_9;
        }

        v31 = v11;

        v28 = v31;

        v32 = OUTLINED_FUNCTION_16();
        v34 = [v32 v33];
        v29 = sub_221BCD388();
        v30 = v35;
      }

LABEL_9:

      MEMORY[0x223DA31F0](8250, 0xE200000000000000);
      MEMORY[0x223DA31F0](v29, v30);

      __swift_destroy_boxed_opaque_existential_0(v45);

      v46 = v3;
      v38 = *(v3 + 16);
      v37 = *(v3 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_2219A2FB4((v37 > 1), v38 + 1, 1);
        v3 = v46;
      }

      v8 += 5;
      *(v3 + 16) = v38 + 1;
      v39 = v3 + 16 * v38;
      *(v39 + 32) = v16;
      *(v39 + 40) = v17;
      --v2;
    }

    while (v2);
  }

  v45[0] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
  sub_2219998AC();
  sub_221BCD328();

  v40 = OUTLINED_FUNCTION_1_0();
  MEMORY[0x223DA31F0](v40);

  MEMORY[0x223DA31F0](93, 0xE100000000000000);
  return v47;
}

id sub_2219B6770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, void *a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v15 = sub_221BCD358();

  if (a4)
  {
    v16 = sub_221BCD358();
  }

  else
  {
    v16 = 0;
  }

  sub_2219A1D20(0, &qword_27CFB7D70, 0x277D23938);
  v17 = sub_221BCD658();

  sub_2219A1D20(0, &qword_27CFB77D8, 0x277D238D8);
  v18 = sub_221BCD658();

  v19 = [v10 initWithIdentifier:v15 mangledTypeName:v16 openAppWhenRun:a5 & 1 outputFlags:a6 outputType:a7 systemProtocols:v17 parameters:v18];

  return v19;
}

uint64_t sub_2219B68B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2219B6920(void *a1)
{
  v1 = [a1 mangledTypeName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_221BCD388();

  return v3;
}

void OUTLINED_FUNCTION_4_6()
{

  sub_2219B2E48(v2, v1, v0);
}

uint64_t AppIntentSuccessResult.origin.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_0(v0, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t AppIntentSuccessResult.output.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v5 = *(a1 + 36);
  v6 = type metadata accessor for IntentOutput(0, *(a1 + 16), *(a1 + 24), a3);
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v3 + v5, v6);
}

uint64_t AppIntentSuccessResult.init(output:context:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_22198B358(a2, a3);
  v5 = OUTLINED_FUNCTION_0_13();
  v9 = *(type metadata accessor for AppIntentSuccessResult(v5, v6, v7, v8) + 36);
  v10 = OUTLINED_FUNCTION_0_13();
  v14 = type metadata accessor for IntentOutput(v10, v11, v12, v13);
  v15 = *(*(v14 - 8) + 32);

  return v15(a3 + v9, a1, v14);
}

uint64_t AppIntentSuccessResult.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v25 = a6;
  v11 = type metadata accessor for IntentOutput(0, a3, a5, a4);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - v13;
  v15 = OUTLINED_FUNCTION_0_13();
  v19 = type metadata accessor for IntentOutput(v15, v16, v17, v18);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v25 - v20;
  v23 = type metadata accessor for AppIntentSuccessResult(0, a3, a5, v22);
  (*(v12 + 16))(v14, a1 + *(v23 + 36), v11);
  sub_2219A1B08(a1, v26);
  IntentOutput.init<A>(_:context:)(v14, v26, a2, a3, a4, a5, v21);
  sub_2219A1B08(a1, v26);
  (*(*(v23 - 8) + 8))(a1, v23);
  return AppIntentSuccessResult.init(output:context:)(v21, v26, v25);
}

uint64_t sub_2219B6D34(char *a1, uint64_t a2)
{
  v3 = *a1;
  swift_getMetatypeMetadata();
  v10 = sub_221BCD3D8();
  v11 = v4;
  MEMORY[0x223DA31F0](0x3A74757074756F28, 0xE900000000000020);
  v9 = v3;
  v6 = type metadata accessor for IntentOutput(0, *(a2 + 16), *(a2 + 24), v5);
  v7 = sub_2219BA4FC(&v9, v6);
  MEMORY[0x223DA31F0](v7);

  return v10;
}

uint64_t sub_2219B6DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_221A1E060(a1, WitnessTable);
}

uint64_t sub_2219B6E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2219B6E80(uint64_t a1)
{
  result = sub_2219B74B8();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for IntentOutput(319, *(a1 + 16), *(a1 + 24), v3);
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2219B6F08(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v5 + 80);
  if (v6)
  {
    v10 = -2;
  }

  else
  {
    v10 = -1;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = v9 | 7;
  v12 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_29;
  }

  v13 = v10 + *(*(v4 - 8) + 64) - (((-217 - v9) | v9) + ((-41 - v9) | v11));
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_29;
      }

      goto LABEL_21;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_29;
      }

      goto LABEL_21;
    }

    if (v17 < 2)
    {
LABEL_29:
      if ((v7 & 0x80000000) != 0)
      {
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v9 + ((((((((((a1 + v11 + 40) & ~v11) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 40) & ~v9, v6, v4);
        if (EnumTagSinglePayload >= 2)
        {
          return EnumTagSinglePayload - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v19 = *(a1 + 3);
        if (v19 >= 0xFFFFFFFF)
        {
          LODWORD(v19) = -1;
        }

        return (v19 + 1);
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_29;
  }

LABEL_21:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    switch(v13)
    {
      case 2:
        LODWORD(v13) = *a1;
        break;
      case 3:
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v13) = *a1;
        break;
      default:
        LODWORD(v13) = *a1;
        break;
    }
  }

  return v8 + (v13 | v18) + 1;
}

void sub_2219B710C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFE)
  {
    v11 = 2147483646;
  }

  else
  {
    v11 = v10;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v10;
  }

  v13 = *(v8 + 80);
  v14 = (v13 + 216) & ~v13;
  v15 = *(*(v7 - 8) + 64);
  if (!v9)
  {
    ++v15;
  }

  v16 = v14 + v15;
  v17 = v14 + v15 + ((v13 + 40) & ~(v13 | 7));
  v18 = 8 * v17;
  v19 = a3 >= v12;
  v20 = a3 - v12;
  if (v20 != 0 && v19)
  {
    if (v17 <= 3)
    {
      v21 = ((v20 + ~(-1 << v18)) >> v18) + 1;
      if (HIWORD(v21))
      {
        v6 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v6 = v22;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v12 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v17] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 2:
        *&a1[v17] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 3:
LABEL_73:
        __break(1u);
        break;
      case 4:
        *&a1[v17] = 0;
        goto LABEL_34;
      default:
LABEL_34:
        if (a2)
        {
LABEL_35:
          if ((v10 & 0x80000000) != 0)
          {
            v26 = (&a1[(v13 | 7) + 40] & ~(v13 | 7));
            if (v11 >= a2)
            {
              v26 = ((v13 + 40 + ((((((((v26 + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v13);
              if (v10 >= a2)
              {
                v32 = a2 + 1;

                __swift_storeEnumTagSinglePayload(v26, v32, v9, v7);
              }

              else
              {
                if (v15 <= 3)
                {
                  v30 = ~(-1 << (8 * v15));
                }

                else
                {
                  v30 = -1;
                }

                if (v15)
                {
                  v28 = v30 & (~v10 + a2);
                  if (v15 <= 3)
                  {
                    v31 = v15;
                  }

                  else
                  {
                    v31 = 4;
                  }

                  bzero(v26, v15);
                  switch(v31)
                  {
                    case 2:
LABEL_72:
                      *v26 = v28;
                      break;
                    case 3:
LABEL_70:
                      *v26 = v28;
                      v26[2] = BYTE2(v28);
                      break;
                    case 4:
LABEL_71:
                      *v26 = v28;
                      break;
                    default:
LABEL_59:
                      *v26 = v28;
                      break;
                  }
                }
              }
            }

            else
            {
              if (v16 <= 3)
              {
                v27 = ~(-1 << (8 * v16));
              }

              else
              {
                v27 = -1;
              }

              if (v16)
              {
                v28 = v27 & (~v11 + a2);
                if (v16 <= 3)
                {
                  v29 = v16;
                }

                else
                {
                  v29 = 4;
                }

                bzero(v26, v16);
                switch(v29)
                {
                  case 2:
                    goto LABEL_72;
                  case 3:
                    goto LABEL_70;
                  case 4:
                    goto LABEL_71;
                  default:
                    goto LABEL_59;
                }
              }
            }
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *(a1 + 8) = 0u;
            *(a1 + 24) = 0u;
            *a1 = a2 & 0x7FFFFFFF;
          }

          else
          {
            *(a1 + 3) = a2 - 1;
          }
        }

        break;
    }
  }

  else
  {
    v23 = ~v12 + a2;
    if (v17 < 4)
    {
      v24 = (v23 >> v18) + 1;
      if (v17)
      {
        v25 = v23 & ~(-1 << v18);
        bzero(a1, v17);
        if (v17 == 3)
        {
          *a1 = v25;
          a1[2] = BYTE2(v25);
        }

        else if (v17 == 2)
        {
          *a1 = v25;
        }

        else
        {
          *a1 = v23;
        }
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v23;
      v24 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v17] = v24;
        break;
      case 2:
        *&a1[v17] = v24;
        break;
      case 3:
        goto LABEL_73;
      case 4:
        *&a1[v17] = v24;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_2219B74B8()
{
  result = qword_280FA8DD0;
  if (!qword_280FA8DD0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280FA8DD0);
  }

  return result;
}

uint64_t sub_2219B7574(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2219B75B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2219B7610()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_2219B7648()
{
  v1 = *(v0 + 24);

  return v1;
}

void sub_2219B7680(void *a1@<X0>, unint64_t a2@<X8>)
{
  v4 = [a1 acceptLabel];
  v5 = off_278482000;
  v56 = a2;
  if (v4)
  {
    v6 = v4;
    v7 = OUTLINED_FUNCTION_2_9();
    v8 = OUTLINED_FUNCTION_1_13(v7);

    v9 = sub_221BCD388();
    v54 = v10;
    v55 = v9;
  }

  else
  {
    v54 = 0;
    v55 = 0;
  }

  v11 = [a1 acceptAlternatives];
  sub_2219B7A68();
  v12 = sub_221BCD668();

  v13 = sub_2219A69A0();
  v14 = 0;
  v15 = MEMORY[0x277D84F90];
  while (v13 != v14)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x223DA3BF0](v14, v12);
    }

    else
    {
      if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v16 = *(v12 + 8 * v14 + 32);
    }

    v17 = v16;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      return;
    }

    v18 = OUTLINED_FUNCTION_2_9();
    v19 = [v17 v5[510]];

    v20 = sub_221BCD388();
    v22 = v21;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2219B3AFC();
      v15 = v25;
    }

    a2 = *(v15 + 16);
    v23 = *(v15 + 24);
    if (a2 >= v23 >> 1)
    {
      OUTLINED_FUNCTION_0_14(v23);
      sub_2219B3AFC();
      v15 = v26;
    }

    *(v15 + 16) = a2 + 1;
    v24 = v15 + 16 * a2;
    *(v24 + 32) = v20;
    *(v24 + 40) = v22;
    ++v14;
    v5 = off_278482000;
  }

  v27 = [a1 denyLabel];
  if (v27)
  {
    v28 = v27;
    v29 = OUTLINED_FUNCTION_2_9();
    v30 = OUTLINED_FUNCTION_1_13(v29);

    v31 = sub_221BCD388();
    v50 = v32;
    v52 = v31;
  }

  else
  {
    v50 = 0;
    v52 = 0;
  }

  v33 = [a1 denyAlternatives];
  v34 = sub_221BCD668();

  v35 = sub_2219A69A0();
  v36 = 0;
  v37 = MEMORY[0x277D84F90];
  while (v35 != v36)
  {
    if ((v34 & 0xC000000000000001) != 0)
    {
      v38 = MEMORY[0x223DA3BF0](v36, v34);
    }

    else
    {
      if (v36 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v38 = *(v34 + 8 * v36 + 32);
    }

    v39 = v38;
    if (__OFADD__(v36, 1))
    {
      goto LABEL_34;
    }

    v40 = OUTLINED_FUNCTION_2_9();
    v41 = [v39 localizedStringForLocaleIdentifier_];

    v42 = sub_221BCD388();
    v44 = v43;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2219B3AFC();
      v37 = v48;
    }

    v46 = *(v37 + 16);
    v45 = *(v37 + 24);
    if (v46 >= v45 >> 1)
    {
      OUTLINED_FUNCTION_0_14(v45);
      sub_2219B3AFC();
      v37 = v49;
    }

    *(v37 + 16) = v46 + 1;
    v47 = v37 + 16 * v46;
    *(v47 + 32) = v42;
    *(v47 + 40) = v44;
    ++v36;
  }

  *v56 = v55;
  v56[1] = v54;
  v56[2] = v15;
  v56[3] = v53;
  v56[4] = v51;
  v56[5] = v37;
}

unint64_t sub_2219B7A68()
{
  result = qword_27CFB7DE0;
  if (!qword_27CFB7DE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CFB7DE0);
  }

  return result;
}

id OUTLINED_FUNCTION_1_13(uint64_t a1)
{

  return [v1 (v2 + 4070)];
}

uint64_t OUTLINED_FUNCTION_2_9()
{

  return sub_221BCD358();
}

uint64_t sub_2219B7AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 80) = a4;
  *(v5 + 88) = a5;
  *(v5 + 64) = a1;
  *(v5 + 72) = a2;
  v6 = *(a3 + 8);
  *(v5 + 96) = *a3;
  *(v5 + 104) = v6;
  *(v5 + 112) = *(a3 + 16);
  return OUTLINED_FUNCTION_6_1();
}

char *sub_2219B7B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_39();
  v27 = [*(v24 + 72) confirmationActionName];
  if (v27)
  {
    v22 = *(v24 + 80);
    OUTLINED_FUNCTION_36_0(v27);
    OUTLINED_FUNCTION_49();
    v28 = swift_allocObject();

    OUTLINED_FUNCTION_31_0();
    v29 = &off_283513A88;
  }

  else
  {

    v28 = 0;
    OUTLINED_FUNCTION_27_1();
  }

  v30 = [OUTLINED_FUNCTION_30_0(v29) dialog];
  *(v24 + 128) = v30;
  if (v30)
  {
    v31 = swift_task_alloc();
    *(v24 + 136) = v31;
    *v31 = v24;
    v31[1] = sub_2219B8100;
    OUTLINED_FUNCTION_26_1();

    return sub_22199B0DC();
  }

  v34 = OUTLINED_FUNCTION_22_1();
  v36 = [v35 nextAction];
  if (v36)
  {
    v22 = *(v24 + 112);
    v28 = *(v24 + 120);
    v37 = v36;
    OUTLINED_FUNCTION_52();
    v38 = OUTLINED_FUNCTION_0_0();
    if (OUTLINED_FUNCTION_63(v38, v39))
    {
      OUTLINED_FUNCTION_14_2();
      OUTLINED_FUNCTION_21_1();
      swift_allocObject();
      OUTLINED_FUNCTION_6_4();
      sub_2219B55C4(v25, v40, v41);

      v42 = &type metadata for OpenURLIntentSpecification;
    }

    else
    {
      OUTLINED_FUNCTION_20_0();
      v43 = swift_allocObject();
      v44 = [v25 identifier];
      v45 = sub_221BCD388();
      v26 = v46;

      v28 = OUTLINED_FUNCTION_51();
      sub_2219A1D20(0, &qword_27CFB77D8, 0x277D238D8);
      OUTLINED_FUNCTION_25_1();
      sub_221BCD668();

      v47 = sub_2219A69A0();
      if (v47)
      {
        v22 = v47;
        a10 = v26;
        a11 = v45;
        a12 = v25;
        a13 = v43;
        result = OUTLINED_FUNCTION_3_8(v47);
        a15 = v22;
        if (v22 < 0)
        {
          __break(1u);
          goto LABEL_48;
        }

        OUTLINED_FUNCTION_23_1();
        do
        {
          if (a14)
          {
            OUTLINED_FUNCTION_56();
          }

          else
          {
            v48 = OUTLINED_FUNCTION_55();
          }

          v49 = v48;
          v43 = [v48 identifier];
          sub_221BCD388();
          OUTLINED_FUNCTION_40();
          [v49 value];

          OUTLINED_FUNCTION_10_2();
          if (v51)
          {
            OUTLINED_FUNCTION_2_10(v50);
            v22 = a16;
          }

          OUTLINED_FUNCTION_0_15();
          OUTLINED_FUNCTION_45();
        }

        while (!v52);
        v28 = v25;

        OUTLINED_FUNCTION_42();
      }

      else
      {

        v22 = MEMORY[0x277D84F90];
      }

      OUTLINED_FUNCTION_15_1();
      v43[6] = v45;
      v43[7] = v26;
      v43[8] = v22;
      v42 = &type metadata for AnyAppIntentSpecification;
    }
  }

  else
  {
    OUTLINED_FUNCTION_13_1();
  }

  OUTLINED_FUNCTION_8_3(v42);
  *(v22 + 120) = [v28 shouldShowPrompt];
  v53 = [v28 showOutputAction];
  if (!v53)
  {
    v22 = *(v24 + 112);
    v28 = *(v24 + 120);

    OUTLINED_FUNCTION_4_7();
    goto LABEL_41;
  }

  if ((OUTLINED_FUNCTION_58(v53) & 1) == 0)
  {
    OUTLINED_FUNCTION_20_0();
    v57 = swift_allocObject();
    v58 = [v22 identifier];
    v59 = sub_221BCD388();
    v61 = v60;

    v28 = OUTLINED_FUNCTION_50();
    sub_2219A1D20(0, &qword_27CFB77D8, 0x277D238D8);
    OUTLINED_FUNCTION_25_1();
    v62 = sub_221BCD668();

    v63 = sub_2219A69A0();
    if (!v63)
    {

      v22 = MEMORY[0x277D84F90];
LABEL_40:
      OUTLINED_FUNCTION_15_1();
      v57[6] = v59;
      v57[7] = v61;
      v57[8] = v22;
      v56 = &off_283513928;
      goto LABEL_41;
    }

    v64 = v63;
    a10 = v24;
    a11 = v61;
    a12 = v59;
    a13 = v22;
    a14 = v57;
    result = OUTLINED_FUNCTION_3_8(v63);
    if ((v64 & 0x8000000000000000) == 0)
    {
      OUTLINED_FUNCTION_11_2();
      v24 = v62;
      v59 = v64;
      do
      {
        if (a15)
        {
          OUTLINED_FUNCTION_57();
        }

        else
        {
          v65 = OUTLINED_FUNCTION_53();
        }

        v66 = v65;
        v57 = [v65 identifier];
        sub_221BCD388();
        OUTLINED_FUNCTION_40();
        v67 = [v66 value];

        OUTLINED_FUNCTION_10_2();
        if (v51)
        {
          OUTLINED_FUNCTION_2_10(v68);
          v22 = a16;
        }

        OUTLINED_FUNCTION_0_15();
      }

      while (v64 != v26);
      v28 = a13;

      OUTLINED_FUNCTION_44();
      goto LABEL_40;
    }

LABEL_48:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_21_1();
  swift_allocObject();
  OUTLINED_FUNCTION_6_4();
  sub_2219B55C4(v22, v54, v55);

  v56 = &off_2835138F8;
LABEL_41:
  OUTLINED_FUNCTION_9_3(v56);
  *(v22 + 168) = [v28 showOutputActionOptions];
  v69 = [v28 viewSnippet];
  if (v69)
  {
    v69 = sub_2219A1D20(0, &qword_27CFB7DE8, 0x277D23CE8);
    v70 = &protocol witness table for LNViewSnippet;
  }

  else
  {
    v70 = 0;
  }

  v72 = *(v24 + 64);
  v71 = *(v24 + 72);
  OUTLINED_FUNCTION_41(v69, v70);
  v73 = [v71 value];

  *(v72 + 216) = v73;
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_26_1();

  return v75(v74, v75, v76, v77, v78, v79, v80, v81, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_2219B8100()
{
  OUTLINED_FUNCTION_9_0();
  *v2 = v1;
  v4 = *(v3 + 128);
  v5 = *v0;
  OUTLINED_FUNCTION_9_0();
  *v6 = v5;
  v9[18] = v7;
  v9[19] = v8;
  v9[20] = v10;

  v11 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2219B8730(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 80) = a4;
  *(v6 + 88) = a5;
  *(v6 + 64) = a1;
  *(v6 + 72) = a2;
  v7 = *a3;
  v8 = a3[1];
  *(v6 + 96) = a6;
  *(v6 + 104) = v7;
  *(v6 + 112) = v8;
  *(v6 + 120) = *(a3 + 1);
  return OUTLINED_FUNCTION_6_1();
}

char *sub_2219B875C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_39();
  v27 = [*(v24 + 9) confirmationActionName];
  if (v27)
  {
    v22 = *(v24 + 10);
    OUTLINED_FUNCTION_36_0(v27);
    OUTLINED_FUNCTION_49();
    v28 = swift_allocObject();

    OUTLINED_FUNCTION_31_0();
    v29 = &off_283513A88;
  }

  else
  {

    v28 = 0;
    OUTLINED_FUNCTION_27_1();
  }

  v30 = [OUTLINED_FUNCTION_30_0(v29) dialog];
  *(v24 + 17) = v30;
  if (v30)
  {
    v31 = swift_task_alloc();
    *(v24 + 18) = v31;
    *v31 = v24;
    v31[1] = sub_2219B8D54;
    OUTLINED_FUNCTION_26_1();

    return sub_22199B0DC();
  }

  v34 = OUTLINED_FUNCTION_22_1();
  v36 = [v35 nextAction];
  v37 = 0x1FB06B000;
  if (v36)
  {
    v22 = *(v24 + 15);
    v28 = *(v24 + 16);
    v23 = *(v24 + 14);
    v38 = v36;
    OUTLINED_FUNCTION_52();
    v39 = OUTLINED_FUNCTION_0_0();
    if (OUTLINED_FUNCTION_63(v39, v40))
    {
      OUTLINED_FUNCTION_18_0();
      OUTLINED_FUNCTION_21_1();
      swift_allocObject();
      OUTLINED_FUNCTION_6_4();
      sub_2219B55C4(v25, v41, v42);

      v43 = &type metadata for OpenURLIntentSpecification;
    }

    else
    {
      OUTLINED_FUNCTION_20_0();
      v23 = swift_allocObject();
      v44 = [v25 identifier];
      v45 = sub_221BCD388();
      v26 = v46;

      v28 = OUTLINED_FUNCTION_51();
      sub_2219A1D20(0, &qword_27CFB77D8, 0x277D238D8);
      OUTLINED_FUNCTION_25_1();
      sub_221BCD668();

      v47 = sub_2219A69A0();
      if (v47)
      {
        v22 = v47;
        a10 = v26;
        a11 = v45;
        a12 = v25;
        a13 = v23;
        result = OUTLINED_FUNCTION_3_8(v47);
        a15 = v22;
        if (v22 < 0)
        {
          __break(1u);
          goto LABEL_48;
        }

        OUTLINED_FUNCTION_23_1();
        do
        {
          if (a14)
          {
            OUTLINED_FUNCTION_56();
          }

          else
          {
            v48 = OUTLINED_FUNCTION_55();
          }

          v49 = v48;
          v23 = [v48 identifier];
          sub_221BCD388();
          OUTLINED_FUNCTION_40();
          v37 = [v49 value];

          OUTLINED_FUNCTION_10_2();
          if (v51)
          {
            OUTLINED_FUNCTION_2_10(v50);
            v22 = a16;
          }

          OUTLINED_FUNCTION_0_15();
          OUTLINED_FUNCTION_45();
        }

        while (!v52);
        v28 = v25;

        OUTLINED_FUNCTION_42();
      }

      else
      {

        v22 = MEMORY[0x277D84F90];
      }

      OUTLINED_FUNCTION_19_1();
      v23[6] = v45;
      v23[7] = v26;
      v23[8] = v22;
      v43 = &type metadata for AnyAppIntentSpecification;
    }
  }

  else
  {
    OUTLINED_FUNCTION_13_1();
  }

  OUTLINED_FUNCTION_8_3(v43);
  *(v22 + 120) = [v28 shouldShowPrompt];
  v53 = [v28 showOutputAction];
  if (!v53)
  {
    v22 = *(v24 + 15);
    v28 = *(v24 + 16);

    OUTLINED_FUNCTION_4_7();
    goto LABEL_41;
  }

  if ((OUTLINED_FUNCTION_58(v53) & 1) == 0)
  {
    OUTLINED_FUNCTION_20_0();
    v23 = swift_allocObject();
    v57 = [v22 identifier];
    v58 = sub_221BCD388();
    v60 = v59;

    v28 = OUTLINED_FUNCTION_50();
    sub_2219A1D20(0, &qword_27CFB77D8, 0x277D238D8);
    OUTLINED_FUNCTION_25_1();
    v37 = sub_221BCD668();

    v61 = sub_2219A69A0();
    if (!v61)
    {

      v22 = MEMORY[0x277D84F90];
LABEL_40:
      OUTLINED_FUNCTION_19_1();
      v23[6] = v58;
      v23[7] = v60;
      v23[8] = v22;
      v56 = &off_283513928;
      goto LABEL_41;
    }

    v62 = v61;
    a10 = v24;
    a11 = v60;
    a12 = v58;
    a13 = v22;
    a14 = v23;
    result = OUTLINED_FUNCTION_3_8(v61);
    if ((v62 & 0x8000000000000000) == 0)
    {
      OUTLINED_FUNCTION_11_2();
      v24 = v37;
      v58 = v62;
      do
      {
        if (a15)
        {
          OUTLINED_FUNCTION_57();
        }

        else
        {
          v63 = OUTLINED_FUNCTION_53();
        }

        v64 = v63;
        v23 = [v63 identifier];
        sub_221BCD388();
        OUTLINED_FUNCTION_40();
        v65 = [v64 value];

        OUTLINED_FUNCTION_10_2();
        if (v51)
        {
          OUTLINED_FUNCTION_2_10(v66);
          v22 = a16;
        }

        OUTLINED_FUNCTION_0_15();
        v37 = v24;
      }

      while (v62 != v26);
      v28 = a13;

      OUTLINED_FUNCTION_44();
      goto LABEL_40;
    }

LABEL_48:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_21_1();
  swift_allocObject();
  OUTLINED_FUNCTION_6_4();
  sub_2219B55C4(v22, v54, v55);

  v56 = &off_2835138F8;
LABEL_41:
  OUTLINED_FUNCTION_9_3(v56);
  *(v22 + 168) = [v28 showOutputActionOptions];
  v67 = [v28 viewSnippet];
  if (v67)
  {
    v67 = sub_2219A1D20(0, &qword_27CFB7DE8, 0x277D23CE8);
    v68 = &protocol witness table for LNViewSnippet;
  }

  else
  {
    v68 = 0;
  }

  v69 = *(v24 + 12);
  OUTLINED_FUNCTION_32_0(v67, v68);
  v70 = [v23 value];
  v71 = sub_2219C5E20(v70, v69);

  v37[27] = v71;
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_26_1();

  return v73(v72, v73, v74, v75, v76, v77, v78, v79, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_2219B8D54()
{
  OUTLINED_FUNCTION_9_0();
  *v2 = v1;
  v4 = *(v3 + 136);
  v5 = *v0;
  OUTLINED_FUNCTION_9_0();
  *v6 = v5;
  v9[19] = v7;
  v9[20] = v8;
  v9[21] = v10;

  v11 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t IntentOutput<>.init(_:origin:localeIdentifier:valueTransform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 96) = a6;
  *(v7 + 104) = a7;
  *(v7 + 80) = a4;
  *(v7 + 88) = a5;
  *(v7 + 64) = a1;
  *(v7 + 72) = a2;
  v8 = *(a3 + 8);
  *(v7 + 112) = *a3;
  *(v7 + 120) = v8;
  *(v7 + 128) = *(a3 + 16);
  return OUTLINED_FUNCTION_6_1();
}

char *sub_2219B93C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_39();
  v27 = [*(v24 + 72) confirmationActionName];
  if (v27)
  {
    v22 = *(v24 + 80);
    OUTLINED_FUNCTION_36_0(v27);
    OUTLINED_FUNCTION_49();
    v28 = swift_allocObject();

    OUTLINED_FUNCTION_31_0();
    v29 = &off_283513A88;
  }

  else
  {

    v28 = 0;
    OUTLINED_FUNCTION_27_1();
  }

  v30 = [OUTLINED_FUNCTION_30_0(v29) dialog];
  *(v24 + 144) = v30;
  if (v30)
  {
    v31 = swift_task_alloc();
    *(v24 + 152) = v31;
    *v31 = v24;
    v31[1] = sub_2219B99D0;
    OUTLINED_FUNCTION_26_1();

    return sub_22199B0DC();
  }

  v34 = OUTLINED_FUNCTION_22_1();
  v36 = [v35 nextAction];
  if (v36)
  {
    v22 = *(v24 + 128);
    v28 = *(v24 + 136);
    v37 = v36;
    OUTLINED_FUNCTION_52();
    v38 = OUTLINED_FUNCTION_0_0();
    if (OUTLINED_FUNCTION_63(v38, v39))
    {
      OUTLINED_FUNCTION_16_1();
      OUTLINED_FUNCTION_21_1();
      swift_allocObject();
      OUTLINED_FUNCTION_6_4();
      sub_2219B55C4(v25, v40, v41);

      v42 = &type metadata for OpenURLIntentSpecification;
    }

    else
    {
      OUTLINED_FUNCTION_20_0();
      v43 = swift_allocObject();
      v44 = [v25 identifier];
      v45 = sub_221BCD388();
      v26 = v46;

      v28 = OUTLINED_FUNCTION_51();
      sub_2219A1D20(0, &qword_27CFB77D8, 0x277D238D8);
      OUTLINED_FUNCTION_25_1();
      sub_221BCD668();

      v47 = sub_2219A69A0();
      if (v47)
      {
        v22 = v47;
        a10 = v26;
        a11 = v45;
        a12 = v25;
        a13 = v43;
        result = OUTLINED_FUNCTION_3_8(v47);
        a15 = v22;
        if (v22 < 0)
        {
          __break(1u);
          goto LABEL_48;
        }

        OUTLINED_FUNCTION_23_1();
        do
        {
          if (a14)
          {
            OUTLINED_FUNCTION_56();
          }

          else
          {
            v48 = OUTLINED_FUNCTION_55();
          }

          v49 = v48;
          v43 = [v48 identifier];
          sub_221BCD388();
          OUTLINED_FUNCTION_40();
          v50 = [v49 value];

          OUTLINED_FUNCTION_10_2();
          if (v52)
          {
            OUTLINED_FUNCTION_2_10(v51);
            v22 = a16;
          }

          OUTLINED_FUNCTION_0_15();
          OUTLINED_FUNCTION_45();
        }

        while (!v53);
        v28 = v25;

        OUTLINED_FUNCTION_42();
      }

      else
      {

        v22 = MEMORY[0x277D84F90];
      }

      OUTLINED_FUNCTION_17_1();
      v43[6] = v45;
      v43[7] = v26;
      v43[8] = v22;
      v42 = &type metadata for AnyAppIntentSpecification;
    }
  }

  else
  {
    OUTLINED_FUNCTION_13_1();
  }

  OUTLINED_FUNCTION_8_3(v42);
  *(v22 + 120) = [v28 shouldShowPrompt];
  v54 = [v28 showOutputAction];
  if (!v54)
  {
    v22 = *(v24 + 128);
    v28 = *(v24 + 136);

    OUTLINED_FUNCTION_4_7();
    goto LABEL_41;
  }

  if ((OUTLINED_FUNCTION_58(v54) & 1) == 0)
  {
    OUTLINED_FUNCTION_20_0();
    v58 = swift_allocObject();
    v59 = [v22 identifier];
    v60 = sub_221BCD388();
    v62 = v61;

    v28 = OUTLINED_FUNCTION_50();
    sub_2219A1D20(0, &qword_27CFB77D8, 0x277D238D8);
    OUTLINED_FUNCTION_25_1();
    v63 = sub_221BCD668();

    v64 = sub_2219A69A0();
    if (!v64)
    {

      v22 = MEMORY[0x277D84F90];
LABEL_40:
      OUTLINED_FUNCTION_17_1();
      v58[6] = v60;
      v58[7] = v62;
      v58[8] = v22;
      v57 = &off_283513928;
      goto LABEL_41;
    }

    v65 = v64;
    a10 = v24;
    a11 = v62;
    a12 = v60;
    a13 = v22;
    a14 = v58;
    result = OUTLINED_FUNCTION_3_8(v64);
    if ((v65 & 0x8000000000000000) == 0)
    {
      OUTLINED_FUNCTION_11_2();
      v24 = v63;
      v60 = v65;
      do
      {
        if (a15)
        {
          OUTLINED_FUNCTION_57();
        }

        else
        {
          v66 = OUTLINED_FUNCTION_53();
        }

        v67 = v66;
        v58 = [v66 identifier];
        sub_221BCD388();
        OUTLINED_FUNCTION_40();
        v68 = [v67 value];

        OUTLINED_FUNCTION_10_2();
        if (v52)
        {
          OUTLINED_FUNCTION_2_10(v69);
          v22 = a16;
        }

        OUTLINED_FUNCTION_0_15();
      }

      while (v65 != v26);
      v28 = a13;

      OUTLINED_FUNCTION_44();
      goto LABEL_40;
    }

LABEL_48:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_21_1();
  swift_allocObject();
  OUTLINED_FUNCTION_6_4();
  sub_2219B55C4(v22, v55, v56);

  v57 = &off_2835138F8;
LABEL_41:
  OUTLINED_FUNCTION_9_3(v57);
  *(v22 + 168) = [v28 showOutputActionOptions];
  v70 = [v28 viewSnippet];
  v71 = v70;
  if (v70)
  {
    v70 = sub_2219A1D20(0, &qword_27CFB7DE8, 0x277D23CE8);
    v72 = &protocol witness table for LNViewSnippet;
  }

  else
  {
    v72 = 0;
  }

  v73 = *(v24 + 96);
  v75 = *(v24 + 64);
  v74 = *(v24 + 72);
  v75[22] = v71;
  v75[23] = 0;
  v75[24] = 0;
  v75[25] = v70;
  v75[26] = v72;
  v76 = [v74 value];
  v77 = v73();

  v75[27] = v77;
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_26_1();

  return v79(v78, v79, v80, v81, v82, v83, v84, v85, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_2219B99D0()
{
  OUTLINED_FUNCTION_9_0();
  *v2 = v1;
  v4 = *(v3 + 144);
  v5 = *v0;
  OUTLINED_FUNCTION_9_0();
  *v6 = v5;
  v9[20] = v7;
  v9[21] = v8;
  v9[22] = v10;

  v11 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t IntentOutput.init<A>(_:context:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v54 = a5;
  v53 = a7;
  v12 = sub_221BCDC98();
  OUTLINED_FUNCTION_0_7();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v47 - v16;
  OUTLINED_FUNCTION_0_7();
  v51 = v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_221BCDC98();
  OUTLINED_FUNCTION_0_7();
  v49 = v22;
  MEMORY[0x28223BE20](v23);
  v48 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v52 = &v47 - v26;
  __swift_storeEnumTagSinglePayload(&v47 - v26, 1, 1, a3);
  v27 = a6;
  v29 = type metadata accessor for IntentOutput(0, a4, a6, v28);
  (*(v14 + 16))(v17, a1 + *(v29 + 60), v12);
  if (__swift_getEnumTagSinglePayload(v17, 1, a4) == 1)
  {
    __swift_destroy_boxed_opaque_existential_0(a2);
    (*(v14 + 8))(v17, v12);
LABEL_6:
    v36 = v54;
    v40 = v52;
    goto LABEL_7;
  }

  v47 = a2;
  (*(v51 + 32))(v21, v17, a4);
  v30 = *(v27 + 16);
  v31 = v30(a4, v27);
  v32 = (*(v54 + 24))(v31, a3);

  if ((v32 & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v47);
    v42 = OUTLINED_FUNCTION_48();
    v43(v42);
    goto LABEL_6;
  }

  v33 = v30(a4, v27);
  v34 = v48;
  v35 = v47;
  v36 = v54;
  sub_221B8BC18(v33, a3, v54, v48);

  __swift_destroy_boxed_opaque_existential_0(v35);
  v37 = OUTLINED_FUNCTION_48();
  v38(v37);
  v39 = v49;
  v40 = v52;
  v41 = v50;
  (*(v49 + 8))(v52, v50);
  (*(v39 + 32))(v40, v34, v41);
LABEL_7:
  sub_2219BAF0C(a1, v59, &unk_27CFBB7B0, &unk_221BE4C10);
  sub_2219BAF0C(a1 + 40, v58, &qword_27CFB8320, &unk_221BD1D60);
  sub_2219BAF0C(a1 + 80, v57, &unk_27CFBB7C0, &qword_221BE4C20);
  v44 = *(a1 + 120);
  sub_2219BAF0C(a1 + 128, v56, &unk_27CFBB7C0, &qword_221BE4C20);
  v45 = *(a1 + 168);
  sub_2219BAF0C(a1 + 176, v55, &unk_27CFB93B0, &qword_221BD1D70);
  (*(*(v29 - 8) + 8))(a1, v29);
  return IntentOutput.init(confirmationActionName:dialog:nextAction:shouldShowPrompt:showOutputAction:showOutputActionOptions:viewSnippet:value:)(v59, v58, v57, v44, v56, v45, v55, v40, v53, a3, v36);
}

uint64_t sub_2219BA4FC(char *a1, uint64_t a2)
{
  v4 = *a1;
  sub_221BCDE68();
  swift_getMetatypeMetadata();
  v5 = sub_221BCD3D8();
  MEMORY[0x223DA31F0](v5);

  MEMORY[0x223DA31F0](0x203A65756C617628, 0xE800000000000000);
  sub_221A1E0A0(v2 + *(a2 + 60), *(a2 + 16));
  OUTLINED_FUNCTION_59();

  MEMORY[0x223DA31F0](0xD000000000000019, 0x8000000221BEC770);
  sub_2219C2154(v2, v4);
  OUTLINED_FUNCTION_59();

  MEMORY[0x223DA31F0](0x3A676F6C61696420, 0xE900000000000020);
  sub_2219C21E4(v2 + 40, v4);
  OUTLINED_FUNCTION_59();

  MEMORY[0x223DA31F0](0x7463417478656E20, 0xED0000203A6E6F69);
  sub_2219C2274(v2 + 80, v4);
  OUTLINED_FUNCTION_59();

  OUTLINED_FUNCTION_54();
  if (*(v2 + 120))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v2 + 120))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x223DA31F0](v6, v7);

  OUTLINED_FUNCTION_54();
  sub_2219C2274(v2 + 128, v4);
  OUTLINED_FUNCTION_59();

  MEMORY[0x223DA31F0](0xD00000000000001ALL, 0x8000000221BEC7D0);
  type metadata accessor for LNShowOutputActionOptions(0);
  sub_221BCE018();
  MEMORY[0x223DA31F0](0x696E537765697620, 0xEE00203A74657070);
  v8 = sub_2219C234C(v2 + 176, v4);
  MEMORY[0x223DA31F0](v8);

  MEMORY[0x223DA31F0](41, 0xE100000000000000);
  return 0;
}

uint64_t IntentOutput.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 60);
  sub_221BCDC98();
  OUTLINED_FUNCTION_2_1();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t IntentOutput.init(confirmationActionName:dialog:nextAction:shouldShowPrompt:showOutputAction:showOutputActionOptions:viewSnippet:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v13 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v13;
  *(a9 + 32) = *(a1 + 32);
  v14 = *(a2 + 16);
  *(a9 + 40) = *a2;
  *(a9 + 56) = v14;
  *(a9 + 72) = *(a2 + 32);
  *(a9 + 112) = *(a3 + 32);
  v15 = *(a3 + 16);
  *(a9 + 80) = *a3;
  *(a9 + 96) = v15;
  *(a9 + 120) = a4;
  v16 = *(a5 + 32);
  v17 = *(a5 + 16);
  *(a9 + 128) = *a5;
  *(a9 + 144) = v17;
  *(a9 + 160) = v16;
  *(a9 + 168) = a6;
  *(a9 + 208) = *(a7 + 32);
  v18 = *(a7 + 16);
  *(a9 + 176) = *a7;
  *(a9 + 192) = v18;
  v19 = *(type metadata accessor for IntentOutput(0, a10, a11, a4) + 60);
  sub_221BCDC98();
  OUTLINED_FUNCTION_2_1();
  v21 = *(v20 + 32);

  return v21(a9 + v19, a8);
}

uint64_t IntentOutput.init(confirmationActionName:dialog:nextAction:shouldShowPrompt:showOutputAction:showOutputActionOptions:viewSnippet:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_2219BAF0C(a1, v25, &unk_27CFBB7B0, &unk_221BE4C10);
  sub_2219BAF0C(a2, v24, &qword_27CFB8320, &unk_221BD1D60);
  sub_2219BAF0C(a3, v23, &unk_27CFBB7C0, &qword_221BE4C20);
  sub_2219BAF0C(a5, v22, &unk_27CFBB7C0, &qword_221BE4C20);
  if (a7)
  {
    a6 = 0;
  }

  sub_2219A1CC8(a5, &unk_27CFBB7C0, &qword_221BE4C20);
  sub_2219A1CC8(a3, &unk_27CFBB7C0, &qword_221BE4C20);
  sub_2219A1CC8(a2, &qword_27CFB8320, &unk_221BD1D60);
  sub_2219A1CC8(a1, &unk_27CFBB7B0, &unk_221BE4C10);
  return IntentOutput.init(confirmationActionName:dialog:nextAction:shouldShowPrompt:showOutputAction:showOutputActionOptions:viewSnippet:value:)(v25, v24, v23, a4 & 1, v22, a6, a8, a10, a9, a11, a12);
}

uint64_t sub_2219BAB54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_221A1E060(a1, WitnessTable);
}

uint64_t IntentOutput<>.init(_:origin:localeIdentifier:valueTransform:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t (*a3)(void)@<X4>, uint64_t a5@<X8>)
{
  v71 = a3;
  v8 = a2[2];
  v7 = a2[3];
  v9 = [a1 confirmationActionName];
  if (v9)
  {
    v10 = v9;
    sub_2219B7680(v10, v73);
    OUTLINED_FUNCTION_49();
    v11 = swift_allocObject();

    v12 = v73[1];
    v11[1] = v73[0];
    v11[2] = v12;
    v11[3] = v73[2];
    v13 = &off_283513A88;
    v14 = &type metadata for AnyConfirmationActionName;
  }

  else
  {

    v11 = 0;
    OUTLINED_FUNCTION_27_1();
  }

  *a5 = v11;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *(a5 + 24) = v14;
  *(a5 + 32) = v13;
  *(a5 + 40) = 0u;
  *(a5 + 56) = 0u;
  *(a5 + 72) = 0;
  v15 = [a1 nextAction];
  if (v15)
  {
    v16 = v15;

    sub_221998178(v8, v7);
    if (sub_221BBEDE4())
    {
      OUTLINED_FUNCTION_60();
      OUTLINED_FUNCTION_21_1();
      v17 = swift_allocObject();
      v25 = OUTLINED_FUNCTION_29_0(v17, v18, v19, v20, v21, v22, v23, v24, v70, v71, v72);
      sub_2219B55C4(v26, v25, v27);

      v28 = &type metadata for OpenURLIntentSpecification;
      v29 = &off_2835138F8;
    }

    else
    {
      OUTLINED_FUNCTION_60();
      OUTLINED_FUNCTION_20_0();
      v17 = swift_allocObject();
      v37 = OUTLINED_FUNCTION_29_0(v17, v30, v31, v32, v33, v34, v35, v36, v70, v71, v72);
      sub_2219B58B8(v38, v37, v39);

      v28 = &type metadata for AnyAppIntentSpecification;
      v29 = &off_283513928;
    }
  }

  else
  {
    v28 = 0;
    v17 = 0;
    v29 = 0;
  }

  *(a5 + 80) = v17;
  *(a5 + 88) = 0;
  *(a5 + 96) = 0;
  *(a5 + 104) = v28;
  *(a5 + 112) = v29;
  *(a5 + 120) = [a1 shouldShowPrompt];
  v40 = [a1 showOutputAction];
  if (v40)
  {
    v41 = v40;
    if (sub_221BBEDE4())
    {
      OUTLINED_FUNCTION_60();
      OUTLINED_FUNCTION_21_1();
      v42 = swift_allocObject();
      v50 = OUTLINED_FUNCTION_29_0(v42, v43, v44, v45, v46, v47, v48, v49, v70, v71, v72);
      sub_2219B55C4(v51, v50, v52);

      v53 = &type metadata for OpenURLIntentSpecification;
      v54 = &off_2835138F8;
    }

    else
    {
      OUTLINED_FUNCTION_60();
      OUTLINED_FUNCTION_20_0();
      v42 = swift_allocObject();
      v62 = OUTLINED_FUNCTION_29_0(v42, v55, v56, v57, v58, v59, v60, v61, v70, v71, v72);
      sub_2219B58B8(v63, v62, v64);

      v53 = &type metadata for AnyAppIntentSpecification;
      v54 = &off_283513928;
    }
  }

  else
  {

    sub_2219982C4(v8, v7);
    OUTLINED_FUNCTION_27_1();
    v42 = 0;
  }

  *(a5 + 128) = v42;
  *(a5 + 136) = 0;
  *(a5 + 144) = 0;
  *(a5 + 152) = v53;
  *(a5 + 160) = v54;
  *(a5 + 168) = [a1 showOutputActionOptions];
  v65 = [a1 viewSnippet];
  if (v65)
  {
    v65 = sub_2219A1D20(0, &qword_27CFB7DE8, 0x277D23CE8);
    v66 = &protocol witness table for LNViewSnippet;
  }

  else
  {
    v66 = 0;
  }

  OUTLINED_FUNCTION_41(v65, v66);
  v67 = [a1 value];
  v68 = v71();

  *(a5 + 216) = v68;
  return result;
}

uint64_t sub_2219BAF0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_2_1();
  v5 = OUTLINED_FUNCTION_0_0();
  v6(v5);
  return a2;
}

uint64_t sub_2219BAF68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_2219BAFAC(uint64_t a1)
{
  sub_2219BB64C(319, qword_280FA8DD8, &qword_27CFB7DF0, &qword_221BD1DF0);
  if (v1 <= 0x3F)
  {
    sub_2219BB64C(319, &qword_280FA8DC8, &qword_27CFB7DF8, &qword_221BD1DF8);
    if (v2 <= 0x3F)
    {
      sub_2219BB5FC();
      if (v3 <= 0x3F)
      {
        type metadata accessor for LNShowOutputActionOptions(319);
        if (v4 <= 0x3F)
        {
          sub_2219BB64C(319, qword_280FA8E60, &qword_27CFB7E00, qword_221BD1E00);
          if (v5 <= 0x3F)
          {
            sub_221BCDC98();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2219BB0EC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v5 + 80);
  v10 = *(*(v4 - 8) + 64);
  if (!v6)
  {
    ++v10;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_28;
  }

  v12 = v10 + ((v9 + 216) & ~v9);
  v13 = 8 * (v10 + ((v9 - 40) & ~v9));
  if (v12 <= 3)
  {
    v16 = ((v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v16 < 2)
    {
LABEL_28:
      if (v7 > 0x7FFFFFFE)
      {
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload((((((((((a1 + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v9 + 40) & ~v9, v6, v4);
        if (EnumTagSinglePayload >= 2)
        {
          return EnumTagSinglePayload - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v18 = *(a1 + 3);
        if (v18 >= 0xFFFFFFFF)
        {
          LODWORD(v18) = -1;
        }

        if ((v18 + 1) >= 2)
        {
          return v18;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_28;
  }

LABEL_20:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    switch(v12)
    {
      case 2:
        LODWORD(v12) = *a1;
        break;
      case 3:
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v12) = *a1;
        break;
      default:
        LODWORD(v12) = *a1;
        break;
    }
  }

  return v8 + (v12 | v17) + 1;
}

void sub_2219BB2D0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFE)
  {
    v11 = 2147483646;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v8 + 80);
  v13 = *(*(v7 - 8) + 64);
  if (!v9)
  {
    ++v13;
  }

  v14 = ((v12 + 216) & ~v12) + v13;
  v15 = 8 * (((v12 - 40) & ~v12) + v13);
  v16 = a3 >= v11;
  v17 = a3 - v11;
  if (v17 != 0 && v16)
  {
    if (v14 <= 3)
    {
      v18 = ((v17 + ~(-1 << v15)) >> v15) + 1;
      if (HIWORD(v18))
      {
        v6 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v6 = v19;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v11 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v14] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v14] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_61:
        __break(1u);
        break;
      case 4:
        *&a1[v14] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v10 > 0x7FFFFFFE)
          {
            v23 = ((((((((((a1 + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v12 + 40) & ~v12);
            if (v10 >= a2)
            {
              v27 = a2 + 1;
              v28 = (((((((((a1 + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v12 + 40) & ~v12;

              __swift_storeEnumTagSinglePayload(v28, v27, v9, v7);
            }

            else
            {
              if (v13 <= 3)
              {
                v24 = ~(-1 << (8 * v13));
              }

              else
              {
                v24 = -1;
              }

              if (v13)
              {
                v25 = v24 & (~v10 + a2);
                if (v13 <= 3)
                {
                  v26 = v13;
                }

                else
                {
                  v26 = 4;
                }

                bzero(v23, v13);
                switch(v26)
                {
                  case 2:
                    *v23 = v25;
                    break;
                  case 3:
                    *v23 = v25;
                    v23[2] = BYTE2(v25);
                    break;
                  case 4:
                    *v23 = v25;
                    break;
                  default:
                    *v23 = v25;
                    break;
                }
              }
            }
          }

          else if (a2 > 0x7FFFFFFE)
          {
            *(a1 + 4) = 0;
            *a1 = 0u;
            *(a1 + 1) = 0u;
            *a1 = a2 - 0x7FFFFFFF;
          }

          else
          {
            *(a1 + 3) = a2;
          }
        }

        break;
    }
  }

  else
  {
    v20 = ~v11 + a2;
    if (v14 < 4)
    {
      v21 = (v20 >> v15) + 1;
      if (v14)
      {
        v22 = v20 & ~(-1 << v15);
        bzero(a1, v14);
        if (v14 == 3)
        {
          *a1 = v22;
          a1[2] = BYTE2(v22);
        }

        else if (v14 == 2)
        {
          *a1 = v22;
        }

        else
        {
          *a1 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v14);
      *a1 = v20;
      v21 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v14] = v21;
        break;
      case 2:
        *&a1[v14] = v21;
        break;
      case 3:
        goto LABEL_61;
      case 4:
        *&a1[v14] = v21;
        break;
      default:
        return;
    }
  }
}

void sub_2219BB5FC()
{
  if (!qword_280FA8EE8)
  {
    v0 = sub_221BCDC98();
    if (!v1)
    {
      atomic_store(v0, &qword_280FA8EE8);
    }
  }
}

void sub_2219BB64C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    OUTLINED_FUNCTION_25_1();
    v5 = sub_221BCDC98();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void OUTLINED_FUNCTION_0_15()
{
  *(v0 + 16) = v1;
  v6 = (v0 + 40 * v4);
  v6[4] = v5;
  v6[5] = v2;
  v6[7] = 0;
  v6[8] = 0;
  v6[6] = v3;
}

void OUTLINED_FUNCTION_1_14(void *a1@<X8>)
{
  a1[4] = v3;
  a1[5] = v1;
  a1[7] = 0;
  a1[8] = 0;
  a1[6] = v2;
}

char *OUTLINED_FUNCTION_2_10@<X0>(unint64_t a1@<X8>)
{

  return sub_2219A2FF4((a1 > 1), v1, 1);
}

char *OUTLINED_FUNCTION_3_8(uint64_t a1)
{

  return sub_2219A2FF4(0, a1 & ~(a1 >> 63), 0);
}

void OUTLINED_FUNCTION_5_5(void *a1@<X8>)
{
  a1[4] = v3;
  a1[5] = v1;
  a1[7] = 0;
  a1[8] = 0;
  a1[6] = v2;
}

void OUTLINED_FUNCTION_8_3(uint64_t a1@<X8>)
{
  v4 = *(v3 + 64);
  v4[10] = v2;
  v4[11] = 0;
  v4[12] = 0;
  v4[13] = a1;
  v4[14] = v1;
}

void OUTLINED_FUNCTION_9_3(uint64_t a1@<X8>)
{
  v4 = *(v3 + 64);
  v4[16] = v2;
  v4[17] = 0;
  v4[18] = 0;
  v4[19] = v1;
  v4[20] = a1;
}

__n128 OUTLINED_FUNCTION_15_1()
{
  v2 = v1[6].n128_u64[1];
  v0[1].n128_u64[0] = v1[6].n128_u64[0];
  v0[1].n128_u64[1] = v2;
  result = v1[7];
  v0[2] = result;
  return result;
}

__n128 OUTLINED_FUNCTION_17_1()
{
  v2 = v1[7].n128_u64[1];
  v0[1].n128_u64[0] = v1[7].n128_u64[0];
  v0[1].n128_u64[1] = v2;
  result = v1[8];
  v0[2] = result;
  return result;
}

__n128 OUTLINED_FUNCTION_19_1()
{
  v2 = *(v1 + 112);
  v0[1].n128_u64[0] = *(v1 + 104);
  v0[1].n128_u64[1] = v2;
  result = *(v1 + 120);
  v0[2] = result;
  return result;
}

double OUTLINED_FUNCTION_22_1()
{
  v1 = *(v0 + 64);
  *(v1 + 72) = 0;
  result = 0.0;
  *(v1 + 56) = 0u;
  *(v1 + 40) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_30_0@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v3 + 64);
  result = *(v3 + 72);
  *v5 = v2;
  v5[1] = 0;
  v5[2] = 0;
  v5[3] = v1;
  v5[4] = a1;
  return result;
}

__n128 OUTLINED_FUNCTION_31_0()
{
  v2 = *(v1 + 32);
  *(v0 + 16) = *(v1 + 16);
  *(v0 + 32) = v2;
  result = *(v1 + 48);
  *(v0 + 48) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_32_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v3 + 64);
  v4[22] = v2;
  v4[23] = 0;
  v4[24] = 0;
  v4[25] = result;
  v4[26] = a2;
  return result;
}

void OUTLINED_FUNCTION_36_0(void *a1)
{

  sub_2219B7680(a1, v1 + 16);
}

void OUTLINED_FUNCTION_40()
{
}

uint64_t OUTLINED_FUNCTION_41@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3[22] = v2;
  v3[23] = 0;
  v3[24] = 0;
  v3[25] = result;
  v3[26] = a2;
  return result;
}

void OUTLINED_FUNCTION_46(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14[6] = v15;
  v14[7] = a13;
  v14[8] = v13;
}

id OUTLINED_FUNCTION_50()
{

  return [v0 (v1 + 248)];
}

id OUTLINED_FUNCTION_51()
{

  return [v1 (v0 + 248)];
}

uint64_t OUTLINED_FUNCTION_52()
{
}

id OUTLINED_FUNCTION_53()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

void OUTLINED_FUNCTION_54()
{

  JUMPOUT(0x223DA31F0);
}

id OUTLINED_FUNCTION_55()
{
  v3 = *(v1 + 8 * v0 + 32);

  return v3;
}

void OUTLINED_FUNCTION_56()
{

  JUMPOUT(0x223DA3BF0);
}

void OUTLINED_FUNCTION_57()
{

  JUMPOUT(0x223DA3BF0);
}

uint64_t OUTLINED_FUNCTION_58(uint64_t a1)
{

  return sub_221BBEDE4();
}

void OUTLINED_FUNCTION_59()
{

  JUMPOUT(0x223DA31F0);
}

uint64_t OUTLINED_FUNCTION_63(uint64_t a1, uint64_t a2)
{
  sub_221998178(a1, a2);

  return sub_221BBEDE4();
}

unint64_t sub_2219BBB74(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_221BCD478();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      sub_221BCD588();
      OUTLINED_FUNCTION_5_6();
      return OUTLINED_FUNCTION_1_15();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2219BBC2C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_2219BCD08(0, result, v3);
    if (v4)
    {
      result = v3;
    }

    if (v3 >= result)
    {
      sub_2219BCC9C(result, v3, a2);
      OUTLINED_FUNCTION_5_6();
      return OUTLINED_FUNCTION_1_15();
    }
  }

  __break(1u);
  return result;
}

uint64_t IntentParameter.identifier.getter()
{
  OUTLINED_FUNCTION_1_6();
  v2 = (v0 + *(v1 + 112));
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t IntentParameter.identifier.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_3_9(v5);
  *v2 = a1;
  v2[1] = a2;
}

uint64_t (*IntentParameter.identifier.modify(uint64_t a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_1_6();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t IntentParameter.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_2_4();
  v4 = *(v3 + 104);
  swift_beginAccess();
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0_6();
  return (*(v5 + 16))(a1, v1 + v4);
}

uint64_t sub_2219BBE64(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = &v6 - v2;
  (*(v4 + 16))(&v6 - v2, v1);
  return IntentParameter.wrappedValue.setter(v3);
}

uint64_t IntentParameter.wrappedValue.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_2_4();
  v4 = *(v3 + 104);
  swift_beginAccess();
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0_6();
  (*(v5 + 40))(v1 + v4, a1);
  result = swift_endAccess();
  *(v1 + 16) = 0;
  return result;
}

void (*IntentParameter.wrappedValue.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  OUTLINED_FUNCTION_1_6();
  v5 = *(v4 + 80);
  *(v6 + 8) = v5;
  v7 = *(v5 - 8);
  *(v6 + 16) = v7;
  v8 = *(v7 + 64);
  v3[3] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v3[4] = v9;
  IntentParameter.wrappedValue.getter(v9);
  return sub_2219BC0A0;
}

void sub_2219BC0A0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    IntentParameter.wrappedValue.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    IntentParameter.wrappedValue.setter(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t IntentParameter.__allocating_init(wrappedValue:)(uint64_t a1)
{
  v2 = swift_allocObject();
  IntentParameter.init(wrappedValue:)(a1);
  return v2;
}

_BYTE *IntentParameter.init(wrappedValue:)(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_2_11();
  v5 = *(v4 + 80);
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v1[*(v9 + 112)];
  *v10 = 0;
  v10[1] = 0;
  v11 = *(v6 + 16);
  (v11)(&v2[*(*v2 + 104)], a1, v5, v8);
  v12 = OUTLINED_FUNCTION_1_15();
  v11(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7E08, &qword_221BD1E30);
  if (swift_dynamicCast())
  {
    sub_22198B358(v17, v19);
    v13 = v20;
    v14 = v21;
    __swift_project_boxed_opaque_existential_0(v19, v20);
    v15 = (*(v14 + 8))(v13, v14);
    (*(v6 + 8))(a1, v5);
    v2[16] = v15 & 1;
    __swift_destroy_boxed_opaque_existential_0(v19);
  }

  else
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    (*(v6 + 8))(a1, v5);
    sub_2219BC380(v17);
    v1[16] = 0;
  }

  return v2;
}

uint64_t sub_2219BC380(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7E10, &qword_221BD1E38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t IntentParameter.deinit()
{
  OUTLINED_FUNCTION_2_11();
  OUTLINED_FUNCTION_0_6();
  (*(v1 + 8))(v0 + v2);
  OUTLINED_FUNCTION_1_6();

  return v0;
}

uint64_t IntentParameter.__deallocating_deinit()
{
  IntentParameter.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2219BC4F8(char a1)
{
  sub_221BCE308();
  MEMORY[0x223DA4060](a1 & 1);
  return sub_221BCE358();
}

uint64_t sub_2219BC55C(uint64_t a1)
{
  sub_221BCE308();
  sub_2219BC4D0(v3, *v1);
  return sub_221BCE358();
}

uint64_t IntentParameter.asProperty()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  OUTLINED_FUNCTION_2_11();
  v5 = v4;
  v7 = *(v6 + 80);
  v8 = sub_221BCDC98();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v28 - v9;
  OUTLINED_FUNCTION_0_6();
  MEMORY[0x28223BE20](v11);
  IntentParameter.wrappedValue.getter(v28 - v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7E08, &qword_221BD1E30);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v29 = 0;
    memset(v28, 0, sizeof(v28));
    sub_2219BC380(v28);
LABEL_7:
    result = OUTLINED_FUNCTION_4_8();
    v16 = v1[1];
    if (v16)
    {
      v17 = *v1;
      IntentParameter.wrappedValue.getter(v10);
      __swift_storeEnumTagSinglePayload(v10, 0, 1, v7);
      v18 = *(v5 + 88);

      result = NamedProperty.init<A>(identifier:value:)(v17, v16, v10, v7, v18, v30);
      v19 = v30[1];
      v20 = v32;
      *a1 = v30[0];
      *(a1 + 8) = v19;
      *(a1 + 16) = v31;
      *(a1 + 32) = v20;
      return result;
    }

    __break(1u);
    goto LABEL_17;
  }

  sub_22198B358(v28, v30);
  v13 = *(&v31 + 1);
  v14 = v32;
  v1 = __swift_project_boxed_opaque_existential_0(v30, *(&v31 + 1));
  if (((*(v14 + 8))(v13, v14) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v30);
    goto LABEL_7;
  }

  if ((v2[2] & 1) == 0)
  {
    result = OUTLINED_FUNCTION_4_8();
    v21 = v1[1];
    if (v21)
    {
      v22 = *v1;
      v23 = objc_allocWithZone(MEMORY[0x277CBEB68]);

      v24 = [v23 init];
      if (v24)
      {
        v25 = v24;
        v26 = NSNull.lnValue.getter();
      }

      else
      {
        v26 = 0;
      }

      v27 = sub_2219BC97C();
      *a1 = v22;
      *(a1 + 8) = v21;
      *(a1 + 16) = v26;
      *(a1 + 24) = v27;
      *(a1 + 32) = &protocol witness table for NSNull;
      return __swift_destroy_boxed_opaque_existential_0(v30);
    }

LABEL_17:
    __break(1u);
    return result;
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return __swift_destroy_boxed_opaque_existential_0(v30);
}

Swift::Void __swiftcall IntentParameter.setIdentifier(mirrorLabel:)(Swift::String mirrorLabel)
{
  object = mirrorLabel._object;
  countAndFlagsBits = mirrorLabel._countAndFlagsBits;
  v4 = sub_221BCD528();

  if (v4)
  {
    v5 = sub_2219BBB74(1uLL, countAndFlagsBits, object);
    countAndFlagsBits = MEMORY[0x223DA3160](v5);
    object = v6;
  }

  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_3_9(v7);
  *v1 = countAndFlagsBits;
  v1[1] = object;
}

unint64_t sub_2219BC97C()
{
  result = qword_27CFB7E18[0];
  if (!qword_27CFB7E18[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27CFB7E18);
  }

  return result;
}

uint64_t sub_2219BC9C0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t _s14PayloadPrivacyOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_2219BCB90(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2219BCC9C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2219BCD08(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_9(uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_4_8()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_5_6()
{
}

void sub_2219BCDE0(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a6@<X8>)
{
  v10 = [a1 title];
  if (v10)
  {
    v11 = sub_221BCD358();
    v12 = [v10 localizedStringForLocaleIdentifier_];

    v10 = sub_221BCD388();
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = [a1 parameterDescription];
  if (v15)
  {
    v16 = v15;
    v17 = sub_221BCD358();

    v18 = [v16 localizedStringForLocaleIdentifier_];

    v19 = sub_221BCD388();
    v21 = v20;
  }

  else
  {

    v19 = 0;
    v21 = 0;
  }

  *a6 = a2;
  a6[1] = a3;
  a6[2] = v10;
  a6[3] = v14;
  a6[4] = v19;
  a6[5] = v21;
}

uint64_t AnyIntentParameterMetadata.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AnyIntentParameterMetadata.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AnyIntentParameterMetadata.parameterDescription.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_2219BD014(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2219BD054(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t PerformAppIntent.ChoiceRequest.Option.Style.hashValue.getter()
{
  v1 = *v0;
  sub_221BCE308();
  MEMORY[0x223DA4060](v1);
  return sub_221BCE358();
}

uint64_t sub_2219BD320(uint64_t a1)
{
  v2 = *v1;
  sub_221BCE308();
  MEMORY[0x223DA4060](v2);
  return sub_221BCE358();
}

uint64_t PerformAppIntent.ChoiceRequest.Option.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PerformAppIntent.ChoiceRequest.Option.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

unint64_t sub_2219BD428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB7F28;
  if (!qword_27CFB7F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB7F28);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PerformAppIntent(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for PerformAppIntent(_BYTE *result, int a2, int a3)
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

uint64_t sub_2219BD588(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 121))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
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

uint64_t sub_2219BD5DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 121) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 121) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_2219BD664(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 160))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 64);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2219BD6A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2219BD718(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 56))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
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

uint64_t sub_2219BD76C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_2219BD7D8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 64);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2219BD818(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2219BD878(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2219BD8B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2219BD92C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2219BD96C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PerformAppIntent.ChoiceRequest.Option.Style(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2219BDAC4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2219BF710;

  return PerformAppIntentDelegate.needsContinueInApp(_:)();
}

uint64_t sub_2219BDB50()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2219BF714;

  return PerformAppIntentDelegate.needsChoice(_:)();
}

uint64_t sub_2219BDBF0()
{
  OUTLINED_FUNCTION_8_0();
  v0 = sub_221BCD388();
  v2 = v1;
  v3 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  sub_2219BEA6C(v0, v2, 3072, 0);
  swift_willThrow();
  OUTLINED_FUNCTION_25();

  return v4();
}

uint64_t sub_2219BDC94()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2219BF710;

  return PerformAppIntentDelegate.needsContinueInApp(_:)();
}

uint64_t sub_2219BDD50()
{
  OUTLINED_FUNCTION_8_0();
  v3 = sub_2219A1218(v0, v1, v2);
  v4 = OUTLINED_FUNCTION_17_2(&type metadata for IntentsServices.ExecutionError, v3);
  *v5 = 0xD00000000000005CLL;
  v5[1] = 0x8000000221BEC7F0;
  OUTLINED_FUNCTION_9_4(v4, v5);
  v6 = OUTLINED_FUNCTION_13_2();

  return v7(v6);
}

uint64_t sub_2219BDDF8()
{
  OUTLINED_FUNCTION_18_1();
  sub_221BCDE68();
  MEMORY[0x223DA31F0](0xD000000000000035, 0x8000000221BEC850);
  __swift_project_boxed_opaque_existential_0((v0 + 40), *(v0 + 64));
  v1 = OUTLINED_FUNCTION_15_2();
  v3 = v2(v1);
  MEMORY[0x223DA31F0](v3);

  OUTLINED_FUNCTION_16_2();
  v7 = sub_2219A1218(v4, v5, v6);
  v8 = OUTLINED_FUNCTION_17_2(&type metadata for IntentsServices.ExecutionError, v7);
  *v9 = v13;
  v9[1] = v14;
  OUTLINED_FUNCTION_9_4(v8, v9);
  v10 = OUTLINED_FUNCTION_13_2();

  return v11(v10);
}

uint64_t sub_2219BDF0C()
{
  OUTLINED_FUNCTION_8_0();
  v3 = sub_2219A1218(v0, v1, v2);
  v4 = OUTLINED_FUNCTION_17_2(&type metadata for IntentsServices.ExecutionError, v3);
  *v5 = 0xD00000000000005ALL;
  v5[1] = 0x8000000221BEC8D0;
  OUTLINED_FUNCTION_9_4(v4, v5);
  v6 = OUTLINED_FUNCTION_13_2();

  return v7(v6);
}

uint64_t sub_2219BDFB0()
{
  OUTLINED_FUNCTION_8_0();
  v3 = sub_2219A1218(v0, v1, v2);
  v4 = OUTLINED_FUNCTION_17_2(&type metadata for IntentsServices.ExecutionError, v3);
  *v5 = 0xD00000000000004FLL;
  v5[1] = 0x8000000221BEC930;
  OUTLINED_FUNCTION_9_4(v4, v5);
  OUTLINED_FUNCTION_25();

  return v6();
}

uint64_t sub_2219BE058()
{
  OUTLINED_FUNCTION_18_1();
  sub_221BCDE68();
  MEMORY[0x223DA31F0](0xD000000000000037, 0x8000000221BEC980);
  __swift_project_boxed_opaque_existential_0((v0 + 40), *(v0 + 64));
  v1 = OUTLINED_FUNCTION_15_2();
  v3 = v2(v1);
  MEMORY[0x223DA31F0](v3);

  OUTLINED_FUNCTION_16_2();
  v7 = sub_2219A1218(v4, v5, v6);
  v8 = OUTLINED_FUNCTION_17_2(&type metadata for IntentsServices.ExecutionError, v7);
  *v9 = v12;
  v9[1] = v13;
  OUTLINED_FUNCTION_9_4(v8, v9);
  OUTLINED_FUNCTION_25();

  return v10();
}

double sub_2219BE158(uint64_t a1, uint64_t a2)
{
  sub_2219A1B08(a2, v6);
  v2 = swift_allocObject();
  sub_22198B358(v6, v2 + 16);
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_221BD2428;
  *(v3 + 24) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78A8, &qword_221BD2440);
  v4 = swift_allocObject();
  *&result = 1;
  *(v4 + 16) = xmmword_221BD19E0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 56) = &unk_221BD25E0;
  *(v4 + 64) = v3;
  return result;
}

uint64_t sub_2219BE240()
{
  v1 = *(v0 + 16);
  sub_221BCDE68();
  MEMORY[0x223DA31F0](0xD00000000000002ELL, 0x8000000221BECA00);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v2);
  v4 = (*(v3 + 8))(v2, v3);
  MEMORY[0x223DA31F0](v4);

  v5 = MEMORY[0x223DA31F0](0xD000000000000031, 0x8000000221BEC890);
  v8 = sub_2219A1218(v5, v6, v7);
  v9 = OUTLINED_FUNCTION_17_2(&type metadata for IntentsServices.ExecutionError, v8);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_9_4(v9, v10);
  OUTLINED_FUNCTION_25();

  return v11();
}

uint64_t sub_2219BE3A0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2219BF710;

  return sub_2219BDDE0(a1);
}

uint64_t sub_2219BE434(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2219BF714;

  return sub_2219BE040(a1);
}

uint64_t sub_2219BE4E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2219BF710;

  return sub_2219BDD3C();
}

uint64_t sub_2219BE56C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2219BE5F8;

  return sub_2219BDF9C();
}

uint64_t sub_2219BE5F8()
{
  OUTLINED_FUNCTION_1_5();
  v3 = v2;
  OUTLINED_FUNCTION_21_0();
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_2219BE6E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2219BE774;

  return sub_2219BDEF8();
}

uint64_t sub_2219BE774()
{
  OUTLINED_FUNCTION_1_5();
  v3 = v2;
  OUTLINED_FUNCTION_21_0();
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;

  v6 = *(v4 + 8);
  if (v0)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3 & 1;
  }

  return v6(v7);
}

uint64_t sub_2219BE86C()
{
  OUTLINED_FUNCTION_1_5();
  *(v0 + 16) = v1;
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_2219BE954;

  return v5();
}

uint64_t sub_2219BE954()
{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_21_0();
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;

  if (!v0)
  {
    v9 = *(v5 + 16);
    v9[3] = sub_2219A8E5C();
    v9[4] = &protocol witness table for LNValue;
    *v9 = v3;
  }

  OUTLINED_FUNCTION_25();

  return v8();
}

id sub_2219BEA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_221BCD358();

  if (a4)
  {
    v8 = sub_221BCD278();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

uint64_t sub_2219BEB1C()
{
  OUTLINED_FUNCTION_1_5();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_7_3(v1);
  *v2 = v3;
  v2[1] = sub_2219BEBA8;

  return sub_2219BE220(v0 + 16);
}

uint64_t sub_2219BEBA8()
{
  OUTLINED_FUNCTION_1_5();
  v2 = v1;
  OUTLINED_FUNCTION_21_0();
  v3 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t dispatch thunk of PerformAppIntentDelegate.needsConfirmation(_:)()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_2_13(v0, v1, v2);
  OUTLINED_FUNCTION_6_5();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_7_3(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_1_17(v4);

  return v7(v6);
}

uint64_t dispatch thunk of PerformAppIntentDelegate.needsDisambiguation(_:)()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_2_13(v0, v1, v2);
  OUTLINED_FUNCTION_6_5();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_7_3(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_1_17(v4);

  return v7(v6);
}

uint64_t dispatch thunk of PerformAppIntentDelegate.needsActionConfirmation(_:)()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_2_13(v0, v1, v2);
  OUTLINED_FUNCTION_6_5();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_7_3(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_1_17(v4);

  return v7(v6);
}

uint64_t dispatch thunk of PerformAppIntentDelegate.needsChoice(_:)()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_2_13(v0, v1, v2);
  OUTLINED_FUNCTION_6_5();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_7_3(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_1_17(v4);

  return v7(v6);
}

uint64_t dispatch thunk of PerformAppIntentDelegate.needsContinueInApp(_:)()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_2_13(v0, v1, v2);
  OUTLINED_FUNCTION_6_5();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_7_3(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_1_17(v4);

  return v7(v6);
}

uint64_t dispatch thunk of DefaultPerformAppIntentDelegate.needsActionConfirmation(_:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_5_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_7_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_10(v1);

  return v4(v3);
}

uint64_t dispatch thunk of DefaultPerformAppIntentDelegate.needsConfirmation(_:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_5_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_7_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_10(v1);

  return v4(v3);
}

uint64_t dispatch thunk of DefaultPerformAppIntentDelegate.needsContinueInApp(_:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_5_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_7_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_10(v1);

  return v4(v3);
}

uint64_t dispatch thunk of DefaultPerformAppIntentDelegate.needsChoice(_:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_5_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_7_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_10(v1);

  return v4(v3);
}

uint64_t dispatch thunk of DefaultPerformAppIntentDelegate.needsDisambiguation(_:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_5_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_7_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_10(v1);

  return v4(v3);
}

uint64_t OUTLINED_FUNCTION_9_4(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_16_2()
{

  JUMPOUT(0x223DA31F0);
}

uint64_t OUTLINED_FUNCTION_17_2(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t SnippetEnvironment.preferredContentSize.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 16) = result;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3 & 1;
  return result;
}

uint64_t SnippetEnvironment.init(size:preferredContentSize:dynamicTypeSize:legibilityWeight:layoutDirection:colorScheme:colorSchemeContrast:displayScale:displayGamut:accessibilityDifferentiateWithoutColor:accessibilityInvertColors:accessibilityReduceMotion:accessibilityReduceTransparency:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, uint64_t a13, char a14, char a15, char a16, char a17)
{
  *a9 = a10;
  *(a9 + 8) = a11;
  *(a9 + 16) = result;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3 & 1;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13;
  *(a9 + 96) = a14;
  *(a9 + 97) = a15;
  *(a9 + 98) = a16;
  *(a9 + 99) = a17;
  return result;
}

uint64_t SnippetEnvironment.description.getter()
{
  sub_221BCDE68();
  OUTLINED_FUNCTION_1_18();
  MEMORY[0x223DA31F0]();
  type metadata accessor for CGSize(0);
  sub_221BCE018();
  OUTLINED_FUNCTION_1_18();
  MEMORY[0x223DA31F0]();
  type metadata accessor for LNSnippetEnvironmentDynamicTypeSize(0);
  OUTLINED_FUNCTION_0_17(v0, v1, v2);
  OUTLINED_FUNCTION_1_18();
  MEMORY[0x223DA31F0]();
  type metadata accessor for LNSnippetEnvironmentLegibilityWeight(0);
  OUTLINED_FUNCTION_0_17(v3, v4, v5);
  OUTLINED_FUNCTION_1_18();
  MEMORY[0x223DA31F0]();
  type metadata accessor for LNSnippetEnvironmentLayoutDirection(0);
  OUTLINED_FUNCTION_0_17(v6, v7, v8);
  MEMORY[0x223DA31F0](0x53726F6C6F63202CLL, 0xEF203A656D656863);
  type metadata accessor for LNSnippetEnvironmentColorScheme(0);
  OUTLINED_FUNCTION_0_17(v9, v10, v11);
  OUTLINED_FUNCTION_1_18();
  MEMORY[0x223DA31F0]();
  type metadata accessor for LNSnippetEnvironmentColorSchemeContrast(0);
  OUTLINED_FUNCTION_0_17(v12, v13, v14);
  OUTLINED_FUNCTION_1_18();
  MEMORY[0x223DA31F0](0xD000000000000010);
  v15 = sub_221BCD968();
  MEMORY[0x223DA31F0](v15);

  OUTLINED_FUNCTION_1_18();
  MEMORY[0x223DA31F0](0xD000000000000010);
  type metadata accessor for LNSnippetEnvironmentDisplayGamut(0);
  OUTLINED_FUNCTION_0_17(v16, v17, v18);
  OUTLINED_FUNCTION_1_18();
  MEMORY[0x223DA31F0]();
  OUTLINED_FUNCTION_2_14();

  OUTLINED_FUNCTION_1_18();
  MEMORY[0x223DA31F0]();
  OUTLINED_FUNCTION_2_14();

  OUTLINED_FUNCTION_1_18();
  MEMORY[0x223DA31F0]();
  OUTLINED_FUNCTION_2_14();

  OUTLINED_FUNCTION_1_18();
  MEMORY[0x223DA31F0]();
  OUTLINED_FUNCTION_2_14();

  MEMORY[0x223DA31F0](10528, 0xE200000000000000);
  return 0;
}

uint64_t sub_2219BFE40(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 100))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 96);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t sub_2219BFE8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 100) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 100) = 0;
    }

    if (a2)
    {
      *(result + 96) = a2 + 1;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_17(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_221BCE018();
}

void OUTLINED_FUNCTION_2_14()
{

  JUMPOUT(0x223DA31F0);
}

void sub_2219BFF44(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *(a1 + 16);
  for (i = (a1 + 64); v6; --v6)
  {
    v9 = *(i - 4);
    v8 = *(i - 3);
    v37 = *(i - 16);
    v10 = *i;
    v36 = *(i - 1);
    if (!v9)
    {
      v18 = *a4;
      swift_retain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a4 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2219B3BB4(0, *(v18 + 16) + 1, 1, v18);
        v18 = v29;
        *a4 = v29;
      }

      v21 = *(v18 + 16);
      v20 = *(v18 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_2219B3BB4(v20 > 1, v21 + 1, 1, v18);
        v18 = v30;
        *a4 = v30;
      }

      *(v18 + 16) = v21 + 1;
      v22 = v18 + 40 * v21;
      *(v22 + 32) = 0;
      *(v22 + 40) = v8;
      *(v22 + 48) = v37;
      *(v22 + 56) = v36;
      *(v22 + 64) = v10;

      goto LABEL_22;
    }

    v35 = v6;
    v11 = *(v8 + 16);

    v12 = v11(v9, v8);
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      if (v37)
      {
        v14 = v13;
        sub_2219C0CD8();
        v34 = a2;
        v15 = a4;
        v16 = a2;
        v17 = [v14 memberValueType];
        LOBYTE(v14) = sub_221BCDC58();

        a2 = v16;
        a4 = v15;

        if (v14)
        {
          goto LABEL_15;
        }

        goto LABEL_20;
      }
    }

    else if ((v37 & 1) == 0)
    {
      sub_2219C0CD8();
      v23 = sub_221BCDC58();

      if (v23)
      {
LABEL_15:
        v24 = *a3;

        v25 = swift_isUniquelyReferenced_nonNull_native();
        *a3 = v24;
        if ((v25 & 1) == 0)
        {
          sub_2219B3BB4(0, *(v24 + 16) + 1, 1, v24);
          v24 = v31;
          *a3 = v31;
        }

        v27 = *(v24 + 16);
        v26 = *(v24 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_2219B3BB4(v26 > 1, v27 + 1, 1, v24);
          v24 = v32;
          *a3 = v32;
        }

        *(v24 + 16) = v27 + 1;
        v28 = v24 + 40 * v27;
        *(v28 + 32) = v9;
        *(v28 + 40) = v8;
        *(v28 + 48) = v37;
        *(v28 + 56) = v36;
        *(v28 + 64) = v10;
      }

LABEL_20:

      goto LABEL_21;
    }

LABEL_21:
    v6 = v35;
LABEL_22:
    i += 5;
  }
}

uint64_t ValueProvider.init(valueProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(a3 + 24) = &unk_221BD25E0;
  *(a3 + 32) = result;
  return result;
}

uint64_t static ValueProviderBuilder.buildExpression(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 24) = v4;
  *(a2 + 32) = v3;
}

void *ValueProvider.init<A>(_:valueProvider:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  *a5 = a3;
  *(a5 + 8) = a4;
  *(a5 + 16) = 0;
  result = swift_allocObject();
  result[2] = a3;
  result[3] = a4;
  result[4] = a1;
  result[5] = a2;
  *(a5 + 24) = &unk_221BD25F0;
  *(a5 + 32) = result;
  return result;
}

uint64_t sub_2219C031C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = *(a4 - 8);
  v7 = swift_task_alloc();
  v5[6] = v7;
  v10 = (a2 + *a2);
  v8 = swift_task_alloc();
  v5[7] = v8;
  *v8 = v5;
  v8[1] = sub_2219C0474;

  return v10(v7);
}

uint64_t sub_2219C0474()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v4 = v3;

  if (!v0)
  {
    v7 = v2[5];
    v6 = v2[6];
    v9 = v2[3];
    v8 = v2[4];
    v10 = v2[2];
    v10[3] = v9;
    v10[4] = *(*(v8 + 8) + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
    (*(v7 + 32))(boxed_opaque_existential_1, v6, v9);
  }

  v5 = v3[1];

  return v5();
}

void *ValueProvider.init<A>(_:valueProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a3;
  *(a5 + 8) = a4;
  *(a5 + 16) = 1;
  result = swift_allocObject();
  result[2] = a3;
  result[3] = a4;
  result[4] = a1;
  result[5] = a2;
  *(a5 + 24) = &unk_221BD2600;
  *(a5 + 32) = result;
  return result;
}

uint64_t sub_2219C0640(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;
  v8 = (a2 + *a2);
  v6 = swift_task_alloc();
  v5[6] = v6;
  *v6 = v5;
  v6[1] = sub_2219C0730;

  return v8();
}

uint64_t sub_2219C0730(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;

  if (!v1)
  {
    v8 = v4[5];
    v9 = v4[3];
    v9[3] = sub_221BCD748();
    v4[2] = *(v8 + 8);
    v9[4] = swift_getWitnessTable();
    *v9 = a1;
  }

  v7 = v5[1];

  return v7();
}

uint64_t sub_2219C0888()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  v1[1] = sub_2219C0D1C;

  return sub_2219BE86C();
}

uint64_t sub_2219C0938()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_18(v1);

  return v4(v3);
}

uint64_t sub_2219C09DC()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_18(v1);

  return v4(v3);
}

uint64_t sub_2219C0A80()
{
  v1 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

_BYTE *storeEnumTagSinglePayload for ValueProviderBuilder(_BYTE *result, int a2, int a3)
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

uint64_t sub_2219C0C28@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = MEMORY[0x277D84F90];
  v8 = MEMORY[0x277D84F90];
  sub_2219BFF44(a2, a1, &v8, &v7);
  v6 = v8;

  sub_221BC398C(v4);
  sub_2219A28EC(v6, a3);
}

unint64_t sub_2219C0CD8()
{
  result = qword_27CFB7670;
  if (!qword_27CFB7670)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CFB7670);
  }

  return result;
}

uint64_t sub_2219C0D58(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    OUTLINED_FUNCTION_19_2();
    v6 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FA8, &qword_221BD2830);
    v4 = sub_221BCD3F8();
    MEMORY[0x223DA31F0](v4);

    OUTLINED_FUNCTION_171();
    return v6;
  }

  else
  {

    return sub_221BCD3D8();
  }
}

uint64_t sub_2219C0DF4(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_19_2();
    v6[0] = v2;
    v6[1] = v3;
    v6[9] = &type metadata for PropertyQuery;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8020, &qword_221BD28D0);
    v4 = sub_221BCD3F8();
    MEMORY[0x223DA31F0](v4);

    OUTLINED_FUNCTION_171();
    return v6[0];
  }

  else
  {
    sub_2219EB67C(a1, v6);
    return sub_221BCD3D8();
  }
}

uint64_t sub_2219C0E8C(void *a1, char a2)
{
  v14 = a1;
  v4 = sub_2219A1D20(0, &qword_27CFBB680, 0x277D23958);
  v5 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F78, &unk_221BD43A0);
  if (swift_dynamicCast())
  {
    sub_22198B358(v12, v15);
    OUTLINED_FUNCTION_23_2(v15);
    LOBYTE(v12[0]) = a2 & 1;
    OUTLINED_FUNCTION_56_0();
    v6();
    OUTLINED_FUNCTION_183();
    __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_2219EC58C(v12, &qword_27CFB7F80);
    if (a2)
    {
      OUTLINED_FUNCTION_19_2();
      v15[0] = v7;
      v15[1] = v8;
      *&v12[0] = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F88, &qword_221BD2818);
      v9 = sub_221BCD3F8();
      MEMORY[0x223DA31F0](v9);

      OUTLINED_FUNCTION_171();
    }

    else
    {
      v15[0] = v5;
      v10 = v5;
      sub_221BCD3D8();
      OUTLINED_FUNCTION_183();
    }
  }

  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_2219C0FF8(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  sub_2219A1B08(a1, v20);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F78, &unk_221BD43A0);
  if (swift_dynamicCast())
  {
    sub_22198B358(v18, v21);
    OUTLINED_FUNCTION_23_2(v21);
    LOBYTE(v20[0]) = a2 & 1;
    OUTLINED_FUNCTION_56_0();
    v13();
    OUTLINED_FUNCTION_183();
    __swift_destroy_boxed_opaque_existential_0(v21);
  }

  else
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_2219EC58C(v18, &qword_27CFB7F80);
    if (a2)
    {
      OUTLINED_FUNCTION_19_2();
      v21[0] = v14;
      v21[1] = v15;
      v20[0] = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v16 = sub_221BCD3F8();
      MEMORY[0x223DA31F0](v16);

      OUTLINED_FUNCTION_171();
    }

    else
    {
      sub_2219A1B08(a1, v21);
      sub_221BCD3D8();
      OUTLINED_FUNCTION_183();
    }
  }

  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_2219C1168(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v9[3] = &type metadata for AnyQueryOutput;
  v9[4] = sub_2219EBC40(a1, a2, a3);
  v9[0] = a1;
  v5 = *__swift_project_boxed_opaque_existential_0(v9, &type metadata for AnyQueryOutput);
  v6 = a1;
  sub_221BCDE68();

  v7 = sub_2219C0E8C(v5, v3 & 1);
  MEMORY[0x223DA31F0](v7);

  OUTLINED_FUNCTION_171();
  __swift_destroy_boxed_opaque_existential_0(v9);
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_2219C1238(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F78, &unk_221BD43A0);
  v2 = MEMORY[0x277D84F78];
  if (swift_dynamicCast())
  {
    sub_22198B358(v8, v10);
    v3 = v11;
    v4 = v12;
    __swift_project_boxed_opaque_existential_0(v10, v11);
    LOBYTE(v8[0]) = a1 & 1;
    v5 = (*(v4 + 16))(v8, v3, v4);
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_2219EC58C(v8, &qword_27CFB7F80);
    if (a1)
    {
      v10[0] = 0x20656D6F7328;
      v10[1] = 0xE600000000000000;
      *&v8[0] = v2 + 8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB80F0, &qword_221BD2A00);
      v6 = sub_221BCD3F8();
      MEMORY[0x223DA31F0](v6);

      MEMORY[0x223DA31F0](41, 0xE100000000000000);
      return v10[0];
    }

    else
    {
      return sub_221BCD3D8();
    }
  }

  return v5;
}

uint64_t sub_2219C13A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v22[3] = &type metadata for AppIntentsProtocol.PerformQuery.Response;
  v22[4] = sub_2219EC4DC(a1, a2, a3);
  v5 = swift_allocObject();
  v22[0] = v5;
  v6 = *(a1 + 16);
  *(v5 + 16) = *a1;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(a1 + 32);
  v7 = __swift_project_boxed_opaque_existential_0(v22, &type metadata for AppIntentsProtocol.PerformQuery.Response);
  if (v7[4])
  {
    sub_2219EC530(a1, v21);
    v8 = 0x726F7272652ELL;
  }

  else
  {
    v9 = v7[2];
    v10 = v7[3];
    v11 = *v7;
    v12 = v7[1];
    v20[0] = 0;
    v20[1] = 0xE000000000000000;
    sub_2219EC530(a1, v21);
    sub_221BCDE68();

    v21[0] = 0x737365636375732ELL;
    v21[1] = 0xE900000000000028;
    v13 = v3 & 1;
    v15 = sub_2219C1168(v11, v13, v14);
    MEMORY[0x223DA31F0](v15);

    MEMORY[0x223DA31F0](0xD000000000000014, 0x8000000221BEC6D0);
    if (v9)
    {
      LOBYTE(v20[0]) = v13;
      v16 = sub_221AE7580(v20, v12 & 1, v9, v10);
      v18 = v17;
    }

    else
    {
      v18 = 0xE300000000000000;
      v16 = 7104878;
    }

    MEMORY[0x223DA31F0](v16, v18);

    MEMORY[0x223DA31F0](41, 0xE100000000000000);
    v8 = v21[0];
  }

  __swift_destroy_boxed_opaque_existential_0(v22);
  return v8;
}

uint64_t sub_2219C1544(uint64_t a1, char a2)
{
  started = type metadata accessor for AppIntentsProtocol.Notifications.StartObservingResponse(0);
  MEMORY[0x28223BE20](started);
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  if (a2)
  {
    v9[3] = 0xE600000000000000;
    v9[1] = started;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8190, &qword_221BD2AE0);
    v7 = sub_221BCD3F8();
    MEMORY[0x223DA31F0](v7);

    MEMORY[0x223DA31F0](41, 0xE100000000000000);
    return 0x20656D6F7328;
  }

  else
  {
    sub_2219EC27C(a1, v9 - v6, type metadata accessor for AppIntentsProtocol.Notifications.StartObservingResponse);
    return sub_221BCD3D8();
  }
}

uint64_t sub_2219C1654(__int128 *a1, char a2)
{
  if (a2)
  {
    *(&v6 + 1) = 0xE600000000000000;
    v5 = &type metadata for AppIntentsProtocol.FetchAppDescription.Response;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8178, &qword_221BD2AC8);
    v2 = sub_221BCD3F8();
    MEMORY[0x223DA31F0](v2);

    MEMORY[0x223DA31F0](41, 0xE100000000000000);
    return 0x20656D6F7328;
  }

  else
  {
    v4 = a1[1];
    v6 = *a1;
    v7 = v4;
    v8 = *(a1 + 16);
    sub_2219EC220(a1, &v5);
    return sub_221BCD3D8();
  }
}

uint64_t sub_2219C1710(__int128 *a1, char a2)
{
  if (a2)
  {
    *(&v6 + 1) = 0xE600000000000000;
    v5 = &type metadata for AppIntentsProtocol.FetchOptionsForAction.Response;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8158, &qword_221BD2AA0);
    v2 = sub_221BCD3F8();
    MEMORY[0x223DA31F0](v2);

    MEMORY[0x223DA31F0](41, 0xE100000000000000);
    return 0x20656D6F7328;
  }

  else
  {
    v4 = a1[1];
    v6 = *a1;
    v7 = v4;
    v8 = *(a1 + 32);
    sub_2219EC178(a1, &v5);
    return sub_221BCD3D8();
  }
}

uint64_t sub_2219C17CC(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8140, &qword_221BD2A80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8148, &qword_221BD2A88);
    v3 = sub_221BCD3F8();
    MEMORY[0x223DA31F0](v3);

    MEMORY[0x223DA31F0](41, 0xE100000000000000);
    return 0x20656D6F7328;
  }

  else
  {
    sub_2219EBFB4(a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8140, &qword_221BD2A80);
    return sub_221BCD3D8();
  }
}

uint64_t sub_2219C1894(void *a1, char a2, char a3)
{
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8138, &qword_221BD2A78);
    v3 = sub_221BCD3F8();
    MEMORY[0x223DA31F0](v3);

    MEMORY[0x223DA31F0](41, 0xE100000000000000);
    return 0x20656D6F7328;
  }

  else
  {
    v5 = a1;
    return sub_221BCD3D8();
  }
}

uint64_t sub_2219C1948(uint64_t a1, char a2, char a3, void (*a4)(void), uint64_t a5)
{
  if (a3)
  {
    OUTLINED_FUNCTION_19_2();
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
    v8 = sub_221BCD3F8();
    MEMORY[0x223DA31F0](v8);

    OUTLINED_FUNCTION_171();
    return v10;
  }

  else
  {
    a4();
    return sub_221BCD3D8();
  }
}

uint64_t sub_2219C19DC(uint64_t a1, unint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return sub_221BCD3D8();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8130, &qword_221BD2A58);
  v3 = sub_221BCD3F8();
  MEMORY[0x223DA31F0](v3);

  MEMORY[0x223DA31F0](41, 0xE100000000000000);
  return 0x20656D6F7328;
}

uint64_t sub_2219C1A84(__int128 *a1, char a2)
{
  if (a2)
  {
    *(&v6 + 1) = 0xE600000000000000;
    v5 = &type metadata for AppDescription;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8118, &qword_221BD2A38);
    v2 = sub_221BCD3F8();
    MEMORY[0x223DA31F0](v2);

    MEMORY[0x223DA31F0](41, 0xE100000000000000);
    return 0x20656D6F7328;
  }

  else
  {
    v4 = a1[1];
    v6 = *a1;
    v7 = v4;
    v8 = *(a1 + 16);
    sub_2219EBE1C(a1, &v5);
    return sub_221BCD3D8();
  }
}

uint64_t sub_2219C1B40(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB80D0, &qword_221BD29D8);
    v4 = sub_221BCD3F8();
    MEMORY[0x223DA31F0](v4);

    MEMORY[0x223DA31F0](41, 0xE100000000000000);
    return 0x20656D6F7328;
  }

  else
  {

    return sub_221BCD3D8();
  }
}

uint64_t sub_2219C1C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    OUTLINED_FUNCTION_19_2();
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8128, &qword_221BD2A48);
    v6 = sub_221BCD3F8();
    MEMORY[0x223DA31F0](v6);

    OUTLINED_FUNCTION_171();
    return v10;
  }

  else
  {

    v8 = OUTLINED_FUNCTION_70();
    sub_221998178(v8, v9);
    return sub_221BCD3D8();
  }
}

uint64_t sub_2219C1CB0(uint64_t a1, char a2)
{
  v4 = sub_221BCC558();
  v7 = MEMORY[0x28223BE20](v4);
  if (a2)
  {
    v11 = 0x20656D6F7328;
    v12 = 0xE600000000000000;
    v10[1] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8100, &qword_221BD2A18);
    v8 = sub_221BCD3F8();
    MEMORY[0x223DA31F0](v8);

    MEMORY[0x223DA31F0](41, 0xE100000000000000);
    return v11;
  }

  else
  {
    (*(v6 + 16))(v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4, v7);
    return sub_221BCD3D8();
  }
}

uint64_t sub_2219C1DE8(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8048, &qword_221BE5700);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8060, &qword_221BD2928);
  v4 = sub_221BCD3D8();
  MEMORY[0x223DA31F0](0x3A74757074756F28, 0xE900000000000020);
  v2 = sub_2219C1E9C(a1 & 1);
  MEMORY[0x223DA31F0](v2);

  return v4;
}

uint64_t sub_2219C1E9C(char a1)
{
  sub_221BCDE68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB7A0, &qword_221BD2930);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8068, &qword_221BD2938);
  sub_221BCD3D8();
  OUTLINED_FUNCTION_59();

  MEMORY[0x223DA31F0](0x203A65756C617628, 0xE800000000000000);
  v3 = *(v1 + 216);
  v4 = a1 & 1;
  if (v3)
  {
    v5 = sub_2219C0E8C(v3, v4);
    v7 = v6;
  }

  else
  {
    v7 = 0xE300000000000000;
    v5 = 7104878;
  }

  MEMORY[0x223DA31F0](v5, v7);

  MEMORY[0x223DA31F0](0xD000000000000019, 0x8000000221BEC770);
  v8 = OUTLINED_FUNCTION_4();
  sub_2219C2154(v8, v9);
  OUTLINED_FUNCTION_59();

  MEMORY[0x223DA31F0](0x3A676F6C61696420, 0xE900000000000020);
  sub_2219C21E4(v1 + 40, v4);
  OUTLINED_FUNCTION_59();

  MEMORY[0x223DA31F0](0x7463417478656E20, 0xED0000203A6E6F69);
  sub_2219C2274(v1 + 80, v4);
  OUTLINED_FUNCTION_59();

  OUTLINED_FUNCTION_54();
  if (*(v1 + 120))
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (*(v1 + 120))
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x223DA31F0](v10, v11);

  OUTLINED_FUNCTION_54();
  sub_2219C2274(v1 + 128, v4);
  OUTLINED_FUNCTION_59();

  MEMORY[0x223DA31F0](0xD00000000000001ALL, 0x8000000221BEC7D0);
  type metadata accessor for LNShowOutputActionOptions(0);
  sub_221BCE018();
  MEMORY[0x223DA31F0](0x696E537765697620, 0xEE00203A74657070);
  v12 = sub_2219C234C(v1 + 176, v4);
  MEMORY[0x223DA31F0](v12);

  OUTLINED_FUNCTION_171();
  return 0;
}

uint64_t sub_2219C2154(uint64_t a1, char a2)
{
  sub_2219BAF0C(a1, &v13, &unk_27CFBB7B0, &unk_221BE4C10);
  if (v14)
  {
    sub_22198B358(&v13, v12);
    v3 = sub_2219C0FF8(v12, a2 & 1, &qword_27CFB7DF0, &qword_221BD1DF0, &qword_27CFB8088, &qword_221BD2958);
    OUTLINED_FUNCTION_203(v3, v4, v5, v6, v7, v8, v9, v10, v12[0]);
  }

  else
  {
    OUTLINED_FUNCTION_88();
  }

  return OUTLINED_FUNCTION_70();
}

uint64_t sub_2219C21E4(uint64_t a1, char a2)
{
  sub_2219BAF0C(a1, &v13, &qword_27CFB8320, &unk_221BD1D60);
  if (v14)
  {
    sub_22198B358(&v13, v12);
    v3 = sub_2219C0FF8(v12, a2 & 1, &qword_27CFB7DF8, &qword_221BD1DF8, &qword_27CFB8080, &qword_221BD2950);
    OUTLINED_FUNCTION_203(v3, v4, v5, v6, v7, v8, v9, v10, v12[0]);
  }

  else
  {
    OUTLINED_FUNCTION_88();
  }

  return OUTLINED_FUNCTION_70();
}

uint64_t sub_2219C2274(uint64_t a1, char a2)
{
  v3 = sub_2219BAF0C(a1, &v11, &unk_27CFBB7C0, &qword_221BE4C20);
  if (*(&v12 + 1))
  {
    v9[0] = v11;
    v9[1] = v12;
    v10 = v13;
    v8[3] = &type metadata for AppIntentSpecification;
    v8[4] = sub_2219EB9A8(v3, v4, v5);
    v8[0] = swift_allocObject();
    sub_2219EB748(v9, v8[0] + 16);
    OUTLINED_FUNCTION_62_0(v8, &type metadata for AppIntentSpecification);
    v7 = a2 & 1;
    sub_2219B5AFC(&v7);
    sub_2219B397C(v9);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {
    OUTLINED_FUNCTION_88();
  }

  return OUTLINED_FUNCTION_70();
}

uint64_t sub_2219C234C(uint64_t a1, char a2)
{
  sub_2219BAF0C(a1, &v13, &unk_27CFB93B0, &qword_221BD1D70);
  if (v14)
  {
    sub_22198B358(&v13, v12);
    v3 = sub_2219C0FF8(v12, a2 & 1, &qword_27CFB7E00, qword_221BD1E00, &qword_27CFB8070, &unk_221BD2940);
    OUTLINED_FUNCTION_203(v3, v4, v5, v6, v7, v8, v9, v10, v12[0]);
  }

  else
  {
    OUTLINED_FUNCTION_88();
  }

  return OUTLINED_FUNCTION_70();
}

void sub_2219C23DC()
{
  OUTLINED_FUNCTION_21();
  v1 = v0;
  v29 = v3;
  v30 = v2;
  v28 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_221BCCD88();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_0();
  v15 = v14 - v13;
  v16 = *v6;
  v17 = v6[1];
  if (qword_280FA8FE0 != -1)
  {
    OUTLINED_FUNCTION_2_16(&qword_280FA8FE0);
  }

  __swift_project_value_buffer(v11, qword_280FA9008);
  v18 = OUTLINED_FUNCTION_3_4();
  v19(v18);
  sub_221BCCCE8();
  v20 = (v1 + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id);
  *v20 = sub_221BC5570(6);
  v20[1] = v21;
  *(v1 + 16) = v10;
  *(v1 + 24) = v8;
  sub_2219A1B08(v30, v1 + 32);
  *(v1 + 72) = v16;
  *(v1 + 73) = v17;
  *(v1 + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_source) = v28;
  sub_2219EBEE4(v29, v1 + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_user);

  v22 = sub_221BCCD68();
  sub_221BCDA98();
  OUTLINED_FUNCTION_246();
  if (os_log_type_enabled(v22, v15))
  {
    v23 = OUTLINED_FUNCTION_103();
    v31 = OUTLINED_FUNCTION_105();
    *v23 = 136315394;
    v25 = *(v1 + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id);
    v24 = *(v1 + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id + 8);

    v26 = sub_2219A6360(v25, v24, &v31);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2080;
    v27 = sub_2219A6360(v10, v8, &v31);

    *(v23 + 14) = v27;
    _os_log_impl(&dword_221989000, v22, v15, "[%s] Initialized dispatcher for %s", v23, 0x16u);
    OUTLINED_FUNCTION_136();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();

    sub_2219EBE90(v29);
  }

  else
  {

    sub_2219EBE90(v29);
  }

  __swift_destroy_boxed_opaque_existential_0(v30);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_2219C267C()
{
  v1 = v0;
  if (qword_280FA8FE0 != -1)
  {
    OUTLINED_FUNCTION_2_16(&qword_280FA8FE0);
  }

  v2 = sub_221BCCD88();
  OUTLINED_FUNCTION_178(v2, qword_280FA9008);

  v3 = sub_221BCCD68();
  v4 = sub_221BCDA68();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_2219A6360(*(v1 + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id), *(v1 + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id + 8), &v10);
    _os_log_impl(&dword_221989000, v3, v4, "[%s] Deinit", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
  }

  __swift_destroy_boxed_opaque_existential_0((v1 + 32));
  v7 = OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_signposter;
  sub_221BCCD08();
  OUTLINED_FUNCTION_2_1();
  (*(v8 + 8))(v1 + v7);
  sub_2219EBE90(v1 + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_user);

  return v1;
}

uint64_t sub_2219C2818()
{
  sub_2219C267C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for InProcessDispatcher(uint64_t a1)
{
  result = qword_280FA8FC8;
  if (!qword_280FA8FC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2219C28C4(uint64_t a1)
{
  result = sub_221BCCD08();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2219C298C()
{
  OUTLINED_FUNCTION_1_5();
  v2 = v0;
  v4 = v3;
  v1[88] = v2;
  v1[87] = v5;
  v1[86] = v6;
  v1[85] = v7;
  v1[84] = v8;
  v1[89] = *v2;
  v9 = sub_221BCCD88();
  v1[90] = v9;
  v1[91] = *(v9 - 8);
  v1[92] = OUTLINED_FUNCTION_210();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  OUTLINED_FUNCTION_8_1(v10);
  v1[93] = swift_task_alloc();
  v1[94] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  OUTLINED_FUNCTION_8_1(v11);
  v1[95] = swift_task_alloc();
  v1[96] = swift_task_alloc();
  memcpy(v1 + 2, v4, 0xC4uLL);
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2219C2B08()
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_104();
  v1 = *(*(v0 + 704) + 73);
  *(v0 + 212) = v1;
  if (qword_280FA8FE0 != -1)
  {
    OUTLINED_FUNCTION_2_16(&qword_280FA8FE0);
  }

  *(v0 + 776) = __swift_project_value_buffer(*(v0 + 720), qword_280FA9008);
  if (qword_27CFB6CA0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 768);
  v3 = *(v0 + 712);
  v4 = *(v0 + 704);
  v5 = *(v0 + 680);
  memcpy((v0 + 416), &qword_27CFDD048, 0x59uLL);
  v6 = v4 + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id;
  *(v0 + 784) = *(v4 + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id);
  *(v0 + 792) = *(v6 + 8);
  *(v0 + 800) = *(v4 + 16);
  *(v0 + 808) = *(v4 + 24);
  v25 = *(v0 + 688);
  sub_2219EB748(v5, v0 + 512);
  v7 = swift_allocObject();
  *(v0 + 816) = v7;
  *(v7 + 16) = v1;
  v8 = *(v0 + 528);
  *(v7 + 24) = *(v0 + 512);
  *(v7 + 40) = v8;
  *(v7 + 56) = *(v0 + 544);
  memcpy((v7 + 64), (v0 + 16), 0xC4uLL);
  *(v0 + 552) = 0u;
  *(v0 + 568) = 0u;
  *(v0 + 584) = 0;
  v9 = OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_signposter;
  v10 = sub_221BCCD08();
  OUTLINED_FUNCTION_2_1();
  (*(v11 + 16))(v2, v4 + v9, v10);
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v10);
  sub_221BCCCD8();
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  v19 = swift_task_alloc();
  *(v0 + 824) = v19;
  *(v19 + 16) = v4;
  *(v19 + 24) = v5;
  *(v19 + 32) = v0 + 16;
  *(v19 + 40) = v25;
  *(v19 + 56) = v3;
  sub_2219EB864(v0 + 16, v0 + 216);
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_238();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_2219C2D28()
{
  v26 = v0[102];
  v27 = v0[100];
  v28 = v0[98];
  v1 = v0[96];
  v2 = v0[95];
  v3 = v0[94];
  v4 = v0[93];
  (*(v0[91] + 16))(v0[92], v0[97], v0[90]);
  sub_2219BAF0C((v0 + 69), (v0 + 74), qword_27CFB7A80, &unk_221BD2800);
  sub_2219BAF0C(v1, v2, &qword_27CFB7F60, &qword_221BD6680);
  sub_2219BAF0C(v3, v4, &qword_27CFB7F58, &unk_221BD27E0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8040, &qword_221BD2900);
  swift_allocObject();

  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_141(v6, v7, (v0 + 52), v8, sub_2219EB7A4, v9, v10, v11, 0, 0, v19, v20, v21, v22, v23, v4, sub_2219EC604, v24, v25, (v0 + 74), v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
  v13 = v12;
  v0[104] = v12;
  if (qword_27CFB7338 != -1)
  {
    OUTLINED_FUNCTION_93(&qword_27CFB7338);
  }

  v14 = v0[103];
  v0[82] = v5;
  v0[83] = &off_28351D968;
  v0[79] = v13;
  v15 = swift_task_alloc();
  v0[105] = v15;
  v15[2] = v13;
  v15[3] = &unk_221BD28F8;
  v15[4] = v14;

  v16 = swift_task_alloc();
  v0[106] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8048, &qword_221BE5700);
  *v16 = v0;
  v16[1] = sub_2219C2FDC;
  v17 = OUTLINED_FUNCTION_106(v0[84]);

  return MEMORY[0x282200908](v17);
}

uint64_t sub_2219C2FDC()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 856) = v0;

  if (!v0)
  {
    sub_2219EC58C(v3 + 632, qword_27CFB7A80);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2219C3110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_224();
  v12 = *(v11 + 752);

  sub_2219EC58C(v12, &qword_27CFB7F58);
  sub_2219EC58C(v10, &qword_27CFB7F60);
  sub_2219EC58C(v11 + 552, qword_27CFB7A80);

  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_152();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_2219C3200()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_224();
  v2 = *(v1 + 752);

  sub_2219EC58C(v2, &qword_27CFB7F58);
  sub_2219EC58C(v0, &qword_27CFB7F60);
  OUTLINED_FUNCTION_182();
  sub_2219EC58C(v3, v4);
  OUTLINED_FUNCTION_182();
  sub_2219EC58C(v5, v6);

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2219C32D4()
{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_2219C3368(char a1, uint64_t a2, const void *a3)
{
  __dst[1] = 0xE000000000000000;
  sub_221BCDE68();

  v16 = 0x696D726F66726550;
  v17 = 0xEB0000000020676ELL;
  __dst[3] = &type metadata for AppIntentSpecification;
  __dst[4] = sub_2219EB9A8(v6, v7, v8);
  __dst[0] = swift_allocObject();
  sub_2219EB748(a2, __dst[0] + 16);
  __swift_project_boxed_opaque_existential_0(__dst, &type metadata for AppIntentSpecification);
  v14[0] = a1 & 1;
  v9 = sub_2219B5AFC(v14);
  v11 = v10;
  __swift_destroy_boxed_opaque_existential_0(__dst);
  MEMORY[0x223DA31F0](v9, v11);

  MEMORY[0x223DA31F0](0x736E6F6974706F20, 0xEA0000000000203ALL);
  memcpy(__dst, a3, 0xC4uLL);
  sub_2219EB864(a3, v14);
  v12 = sub_221BCD3D8();
  MEMORY[0x223DA31F0](v12);

  return v16;
}

uint64_t sub_2219C34C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[101] = a7;
  v7[100] = a6;
  v7[99] = a5;
  v7[98] = a4;
  v7[97] = a3;
  v7[96] = a2;
  v7[95] = a1;
  return MEMORY[0x2822009F8](sub_2219C34F8, 0, 0);
}

uint64_t sub_2219C34F8()
{
  OUTLINED_FUNCTION_104();
  v46 = v0;
  if (qword_27CFB6C98 != -1)
  {
    OUTLINED_FUNCTION_12_1(&qword_27CFB6C98);
  }

  v2 = type metadata accessor for Entitlement.Validator(0);
  OUTLINED_FUNCTION_178(v2, qword_27CFB7F40);
  Entitlement.Validator.validate()();
  if (v3)
  {
    v4 = v3;
    if (qword_27CFB7360 != -1)
    {
      OUTLINED_FUNCTION_11_3(&qword_27CFB7360);
    }

    OUTLINED_FUNCTION_223();
    if (v5 & 1) != 0 || (OUTLINED_FUNCTION_89(), *(v0 + 664) = &type metadata for FeatureFlags.Flag, *(v0 + 672) = sub_2219EB100(v6, v7, v8), OUTLINED_FUNCTION_49(), v9 = swift_allocObject(), *(v0 + 640) = v9, OUTLINED_FUNCTION_52_0(v9), v10 = sub_221BCC6F8(), __swift_destroy_boxed_opaque_existential_0((v0 + 640)), (v10))
    {
      swift_willThrow();
      goto LABEL_23;
    }

    if (qword_280FA8FE0 != -1)
    {
      OUTLINED_FUNCTION_2_16(&qword_280FA8FE0);
    }

    v11 = *(v0 + 776);
    v12 = sub_221BCCD88();
    __swift_project_value_buffer(v12, qword_280FA9008);
    OUTLINED_FUNCTION_75();

    v13 = v4;
    v14 = sub_221BCCD68();
    v15 = sub_221BCDA78();

    if (os_log_type_enabled(v14, v15))
    {
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_204();
      v16 = OUTLINED_FUNCTION_138();
      v45 = v16;
      *v11 = 136315394;
      v17 = OUTLINED_FUNCTION_236(OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id);
      v19 = sub_2219A6360(v17, v18, &v45);
      OUTLINED_FUNCTION_132(v19);
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v20;
      *v1 = v20;
      OUTLINED_FUNCTION_131(&dword_221989000, v21, v22, "[%s] Failed to validate entitlements: %@");
      sub_2219EC58C(v1, &unk_27CFB7630);
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      __swift_destroy_boxed_opaque_existential_0(v16);
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
    }

    else
    {
    }
  }

  sub_2219A1B08(*(v0 + 784), v0 + 680);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8098, qword_221BD38F0);
  if (swift_dynamicCast())
  {
    v23 = *(v0 + 792);
    v24 = *(v0 + 768);
    v25 = *(v0 + 528);
    v26 = *(v0 + 536);
    *(v0 + 816) = v26;
    v27 = *(v0 + 544);
    *(v0 + 824) = v27;
    v28 = *(v0 + 568);
    *(v0 + 840) = v28;
    v29 = *(v0 + 576);
    *(v0 + 848) = v29;
    *(v0 + 584) = v25;
    *(v0 + 592) = v26;
    *(v0 + 600) = v27;
    v30 = *(v0 + 552);
    *(v0 + 832) = v30;
    *(v0 + 608) = v30;
    *(v0 + 624) = v28;
    *(v0 + 632) = v29;
    memcpy((v0 + 16), v23, 0xC4uLL);
    *(v0 + 744) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8040, &qword_221BD2900);
    *(v0 + 752) = &off_28351D968;
    *(v0 + 720) = v24;

    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v0 + 856) = v31;
    *v31 = v32;
    v31[1] = sub_2219C39A4;
    OUTLINED_FUNCTION_206();

    return sub_2219C3DA0();
  }

  else
  {
    v35 = swift_dynamicCast();
    if (!v35)
    {
      v41 = sub_2219A1218(v35, v36, v37);
      OUTLINED_FUNCTION_17_2(&type metadata for IntentsServices.ExecutionError, v41);
      *v42 = 8;
      *(v42 + 8) = 0;
      *(v42 + 16) = 0;
      *(v42 + 24) = 0;
      *(v42 + 32) = 5;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_0((v0 + 680));
LABEL_23:
      OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_206();

      __asm { BRAA            X1, X16 }
    }

    memcpy((v0 + 320), (v0 + 216), 0x68uLL);
    memcpy((v0 + 424), (v0 + 216), 0x68uLL);
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v0 + 872) = v38;
    *v38 = v39;
    v38[1] = sub_2219C3B44;
    OUTLINED_FUNCTION_206();

    return sub_2219C4E54();
  }
}

uint64_t sub_2219C39A4()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  v3[108] = v0;

  if (!v0)
  {
    v7 = v3[104];
    v8 = v3[103];
    __swift_destroy_boxed_opaque_existential_0(v3 + 90);

    sub_2219982C4(v8, v7);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2219C3AEC()
{
  OUTLINED_FUNCTION_1_5();
  __swift_destroy_boxed_opaque_existential_0((v0 + 680));
  OUTLINED_FUNCTION_4_3();

  return v1();
}

uint64_t sub_2219C3B44()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 880) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2219C3C3C()
{
  OUTLINED_FUNCTION_1_5();
  sub_2219EB9FC(v0 + 320);
  __swift_destroy_boxed_opaque_existential_0((v0 + 680));
  OUTLINED_FUNCTION_4_3();

  return v1();
}

uint64_t sub_2219C3C9C()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  __swift_destroy_boxed_opaque_existential_0((v0 + 720));

  v1 = OUTLINED_FUNCTION_118();
  sub_2219982C4(v1, v2);

  __swift_destroy_boxed_opaque_existential_0((v0 + 680));
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_253();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2219C3D3C()
{
  OUTLINED_FUNCTION_1_5();
  sub_2219EB9FC(v0 + 320);
  __swift_destroy_boxed_opaque_existential_0((v0 + 680));
  OUTLINED_FUNCTION_25();

  return v1();
}

uint64_t sub_2219C3DA0()
{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  v5 = v4;
  *(v1 + 568) = v0;
  *(v1 + 560) = v6;
  *(v1 + 552) = v7;
  *(v1 + 544) = v8;
  *(v1 + 536) = v9;
  v10 = sub_221BCCCD8();
  *(v1 + 576) = v10;
  *(v1 + 584) = *(v10 - 8);
  *(v1 + 592) = swift_task_alloc();
  *(v1 + 600) = swift_task_alloc();
  *(v1 + 608) = swift_task_alloc();
  *(v1 + 616) = swift_task_alloc();
  *(v1 + 624) = swift_task_alloc();
  *(v1 + 632) = *v5;
  *(v1 + 648) = *(v5 + 32);
  *(v1 + 656) = *(v5 + 40);
  memcpy((v1 + 240), v3, 0xC4uLL);
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2219C3F00()
{
  v67 = v0;
  __dst[25] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 560);
  *(v0 + 672) = OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_signposter;
  __swift_project_boxed_opaque_existential_0(v1, v1[3]);
  OUTLINED_FUNCTION_82();
  v2 = OUTLINED_FUNCTION_4();
  v3(v2);
  v4 = sub_221BCCCF8();
  v5 = sub_221BCDBD8();
  if (sub_221BCDC78())
  {
    OUTLINED_FUNCTION_117();
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_221BCCCC8();
    _os_signpost_emit_with_name_impl(&dword_221989000, v4, v5, v7, "performIntent:loadActionMetadata", "", v6, 2u);
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
  }

  v8 = *(v0 + 584);

  v9 = *(v8 + 8);
  *(v0 + 680) = v9;
  v10 = OUTLINED_FUNCTION_16();
  v9(v10);
  if (qword_27CFB7348 != -1)
  {
    OUTLINED_FUNCTION_98(&qword_27CFB7348);
  }

  v11 = sub_221BB8738(qword_27CFDED38, *(v0 + 632), *(v0 + 640), *(v0 + 648), *(v0 + 656));
  *(v0 + 688) = v11;
  __src = (v0 + 240);
  v65 = v11;
  v14 = *(v0 + 664);
  v15 = *(v14 + 16);
  if (v15)
  {
    __dst[0] = MEMORY[0x277D84F90];
    sub_221BCDF28();
    v16 = (v14 + 48);
    do
    {
      v17 = *v16;
      v16 += 5;
      objc_allocWithZone(MEMORY[0x277D238D8]);
      v18 = v17;

      v19 = OUTLINED_FUNCTION_91();
      sub_2219A62D8(v19, v20, v17);
      sub_221BCDEF8();
      sub_221BCDF38();
      sub_221BCDF48();
      sub_221BCDF08();
      --v15;
    }

    while (v15);
  }

  __swift_project_boxed_opaque_existential_0(*(v0 + 560), v1[3]);
  OUTLINED_FUNCTION_82();
  v21 = OUTLINED_FUNCTION_120();
  v22(v21);
  v23 = sub_221BCCCF8();
  v24 = sub_221BCDBD8();
  if (sub_221BCDC78())
  {
    OUTLINED_FUNCTION_117();
    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = sub_221BCCCC8();
    _os_signpost_emit_with_name_impl(&dword_221989000, v23, v24, v26, "performIntent:createPolicy", "", v25, 2u);
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
  }

  v27 = *(v0 + 664);
  v28 = *(v0 + 560);

  v29 = OUTLINED_FUNCTION_16();
  v9(v29);
  v30 = objc_opt_self();
  memcpy(__dst, __src, 0xC4uLL);
  v31 = sub_2219B23F4(v27, v65);
  v32 = [v30 policyWithActionMetadata:v65 signals:v31];
  *(v0 + 696) = v32;

  sub_2219A1D20(0, &qword_27CFB77D8, 0x277D238D8);
  sub_221BCD658();
  OUTLINED_FUNCTION_97();

  v61 = [v32 actionWithParameters_];
  *(v0 + 704) = v61;

  v33 = v1[3];
  v34 = v1[4];
  __swift_project_boxed_opaque_existential_0(v28, v33);
  v35 = OUTLINED_FUNCTION_75();
  v36(v35, v34);
  v37 = sub_221BCCCF8();
  v38 = sub_221BCDBD8();
  if (sub_221BCDC78())
  {
    OUTLINED_FUNCTION_117();
    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = sub_221BCCCC8();
    _os_signpost_emit_with_name_impl(&dword_221989000, v37, v38, v40, "performIntent:createConnection", "", v39, 2u);
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
  }

  v41 = *(v0 + 608);
  v42 = *(v0 + 576);

  (v9)(v41, v42);
  v43 = sub_2219C52F0();
  *(v0 + 520) = 0;
  v44 = [v32 connectionWithUserIdentity:v43 error:v0 + 520];
  *(v0 + 712) = v44;

  v45 = *(v0 + 520);
  if (v44)
  {
    v46 = *(v0 + 568);
    v63 = *(v0 + 560);
    memcpy(__dst, __src, 0xC4uLL);
    v62 = *(v0 + 544);
    __swift_project_boxed_opaque_existential_0((v46 + 32), *(v46 + 56));
    v47 = v45;
    v48 = OUTLINED_FUNCTION_3_4();
    v49 = sub_2219AD2F4(v48);
    v50 = OUTLINED_FUNCTION_72();
    v54 = sub_2219B2088(v50, v51, v49, v52, v53);
    *(v0 + 720) = v54;

    v55 = swift_task_alloc();
    *(v0 + 728) = v55;
    *(v55 + 16) = v46;
    *(v55 + 24) = v65;
    *(v55 + 32) = v62;
    *(v55 + 48) = v44;
    *(v55 + 56) = __src;
    *(v55 + 64) = v61;
    *(v55 + 72) = v54;
    *(v55 + 80) = v63;
    v56 = swift_task_alloc();
    *(v0 + 736) = v56;
    sub_2219A1D20(0, &qword_27CFB80A0, 0x277D23CA8);
    OUTLINED_FUNCTION_229();
    *v56 = v58;
    v56[1] = sub_2219C461C;
    v59 = *(v0 + 568);

    return MEMORY[0x282200830](v0 + 528, &unk_221BD2988, v55, sub_2219EBB28, v59, 0, 0, v57);
  }

  else
  {
    v60 = v45;
    OUTLINED_FUNCTION_107();
    sub_221BCC338();

    swift_willThrow();
    OUTLINED_FUNCTION_193();

    OUTLINED_FUNCTION_25();

    return v12();
  }
}

uint64_t sub_2219C461C()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_17_3();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 744) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2219C476C()
{
  v31 = v0;
  v30 = *MEMORY[0x277D85DE8];
  v1 = v0[70];
  v2 = v0[66];
  v0[94] = v2;
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v1[3]);
  v4 = OUTLINED_FUNCTION_75();
  v5(v4, v3);
  v6 = sub_221BCCCF8();
  v7 = sub_221BCDBD8();
  if (sub_221BCDC78())
  {
    OUTLINED_FUNCTION_117();
    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_221BCCCC8();
    _os_signpost_emit_with_name_impl(&dword_221989000, v6, v7, v9, "performIntent:actionExecutor:completed", "", v8, 2u);
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
  }

  v10 = v0[85];
  v11 = v0[80];
  v12 = v0[79];
  v13 = v0[75];
  v14 = v0[72];
  v15 = v0[71];

  v10(v13, v14);
  *&v29[0] = v12;
  *(&v29[0] + 1) = v11;
  v29[1] = xmmword_221BD04D0;

  _IntentValueConversionContext.init(origin:dispatcher:)(v29, v15, &off_283514488, (v0 + 55));
  v28 = [v2 output];
  v16 = v0[56];
  v17 = v0[57];
  v18 = v0[58];
  v0[61] = v0[55];
  v0[62] = v16;
  v0[63] = v17;
  v0[64] = v18;
  v19 = v15[8];
  __swift_project_boxed_opaque_existential_0(v15 + 4, v15[7]);
  v20 = *(v19 + 24);

  sub_221998178(v17, v18);
  v21 = OUTLINED_FUNCTION_120();
  v22 = v20(v21);
  v24 = v23;

  v25 = swift_task_alloc();
  v0[95] = v25;
  *v25 = v0;
  v25[1] = sub_2219C4A18;
  v26 = v0[71];

  return sub_2219B8730((v0 + 2), v28, v0 + 61, v22, v24, v26);
}

uint64_t sub_2219C4A18()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v2 = v1;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2219C4B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_230();
  v51 = *MEMORY[0x277D85DE8];
  __swift_project_boxed_opaque_existential_0(*(v20 + 560), *(*(v20 + 560) + 24));
  OUTLINED_FUNCTION_82();
  v21 = OUTLINED_FUNCTION_4();
  v22(v21);
  v23 = sub_221BCCCF8();
  v24 = sub_221BCDBD8();
  if (sub_221BCDC78())
  {
    OUTLINED_FUNCTION_117();
    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = sub_221BCCCC8();
    _os_signpost_emit_with_name_impl(&dword_221989000, v23, v24, v26, "performIntent:outputGenerated", "", v25, 2u);
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
  }

  v27 = *(v20 + 720);
  v28 = *(v20 + 712);
  v29 = *(v20 + 704);
  v44 = *(v20 + 696);
  v45 = *(v20 + 752);
  v30 = *(v20 + 680);
  v46 = *(v20 + 688);
  v47 = *(v20 + 624);
  v48 = *(v20 + 616);
  v49 = *(v20 + 608);
  v50 = *(v20 + 600);
  v31 = *(v20 + 592);
  v32 = *(v20 + 576);
  v33 = *(v20 + 536);

  v30(v31, v32);
  sub_2219BAF0C(v20 + 16, (v33 + 5), &unk_27CFBB7A0, &qword_221BD2930);
  v33[3] = &type metadata for _IntentValueConversionContext;
  v33[4] = &protocol witness table for _IntentValueConversionContext;
  OUTLINED_FUNCTION_49();
  v34 = swift_allocObject();
  *v33 = v34;
  sub_22199C218(v20 + 440, v34 + 16);

  sub_2219EC58C(v20 + 16, &unk_27CFBB7A0);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_109();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, v44, v45, v46, v47, v48, v49, v50, v51, a18, a19, a20);
}

uint64_t sub_2219C4D80()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  v1 = *(v0 + 720);
  v2 = *(v0 + 712);
  v3 = *(v0 + 704);
  v4 = *(v0 + 696);

  OUTLINED_FUNCTION_193();

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_253();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_2219C4E54()
{
  OUTLINED_FUNCTION_1_5();
  v1[23] = v2;
  v1[24] = v0;
  v4 = v3[1];
  v1[25] = *v3;
  v1[26] = v4;
  memcpy(v1 + 12, v3 + 2, 0x58uLL);
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2219C4EC4()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[26];
  v0[10] = v0[25];
  v0[11] = v1;
  v2 = sub_2219B5FDC();
  v3 = [objc_allocWithZone(MEMORY[0x277D23CC8]) initWithAction_];
  v0[27] = v3;

  v0[2] = v0;
  v0[3] = sub_2219C500C;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB80B8, &qword_221BD29A0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2219C5280;
  v0[13] = &block_descriptor_123;
  v0[14] = v4;
  [v3 performWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2219C500C()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 224) = *(v3 + 48);
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2219C5108()
{
  OUTLINED_FUNCTION_104();
  v10 = v0;
  v1 = v0[26];
  v2 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[23];
  *(v5 + 145) = 0u;
  *(v5 + 136) = 0u;
  *(v5 + 120) = 0u;
  *(v5 + 104) = 0u;
  *(v5 + 88) = 0u;
  *(v5 + 72) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 168) = 0u;
  *(v5 + 184) = 0u;
  *(v5 + 200) = 0u;
  *(v5 + 216) = 0u;
  *(v5 + 232) = 0u;
  *(v5 + 248) = 0u;
  *&v9[0] = v3;
  *(&v9[0] + 1) = v1;
  v9[1] = xmmword_221BD04D0;
  *(v5 + 24) = &type metadata for _IntentValueConversionContext;
  *(v5 + 32) = &protocol witness table for _IntentValueConversionContext;
  OUTLINED_FUNCTION_49();
  v6 = swift_allocObject();
  *v5 = v6;

  _IntentValueConversionContext.init(origin:dispatcher:)(v9, v4, &off_283514488, v6 + 16);

  OUTLINED_FUNCTION_4_3();

  return v7();
}

uint64_t sub_2219C5218()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 216);
  swift_willThrow();

  OUTLINED_FUNCTION_25();

  return v2();
}

uint64_t sub_2219C5280(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;

    return sub_2219B1AB0();
  }

  else
  {

    return j__swift_continuation_throwingResume();
  }
}

id sub_2219C52F0()
{
  v1 = (v0 + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_user);
  v2 = *(v0 + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_user + 56);
  if (!v2)
  {
    return 0;
  }

  v3 = v1[6];
  sub_2219A1D20(0, &qword_27CFB80B0, 0x277D23CD0);
  v4 = *v1;

  return sub_2219CA5F0(v3, v2, v4);
}

uint64_t sub_2219C5370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = v10;
  v8[11] = v11;
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x2822009F8](sub_2219C53A8, 0, 0);
}

uint64_t sub_2219C53A8()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 88);
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  v3 = *(v0 + 40);
  v4 = *(v0 + 56);
  v5 = *(v0 + 72);
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v3;
  *(v2 + 48) = v4;
  *(v2 + 64) = v5;
  *(v2 + 80) = v1;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  sub_2219A1D20(0, &qword_27CFB80A0, 0x277D23CA8);
  OUTLINED_FUNCTION_229();
  *v6 = v7;
  v6[1] = sub_2219C54BC;
  OUTLINED_FUNCTION_99();

  return MEMORY[0x2822008A0](v8);
}

uint64_t sub_2219C54BC()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_27_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_25();

    return v10();
  }
}

uint64_t sub_2219C55D8()
{
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_25();

  return v0();
}

void sub_2219C5634(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v64 = a8;
  v60 = a7;
  v61 = a5;
  v65 = a10;
  v62 = a9;
  v63 = sub_221BCC558();
  v58 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v57 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_221BCCCD8();
  v66 = *(v16 - 1);
  v67 = v16;
  MEMORY[0x28223BE20](v16);
  v59 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82B0, &unk_221BD2990);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v57 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB80A8, &qword_221BD2BF0);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v57 - v23;
  (*(v25 + 16))(&v57 - v23, a1, v22);
  v26 = [a6 bundleIdentifier];
  v27 = sub_221BCD388();
  v29 = v28;

  sub_2219A1B08(a2 + 32, v70);
  v69 = *(a2 + 73);
  memcpy(__dst, (v60 + 96), sizeof(__dst));
  v30 = objc_allocWithZone(_s14descr283510D89C29PerformActionExecutorDelegateCMa(0));

  v31 = a3;
  swift_unknownObjectRetain();
  sub_2219EDEF8(a2, v31, a4, v61, v24, v27, v29, v70, &v69, __dst, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, *__dst);
  v33 = v32;
  v34 = a6;
  v35 = v59;
  v36 = [v34 executorForAction:v64 options:v62 delegate:v33];
  v37 = [v36 identifier];
  sub_221BCC528();

  v38 = v63;
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v63);
  sub_2219EDDBC(v20);
  v39 = v65[3];
  v40 = v65[4];
  __swift_project_boxed_opaque_existential_0(v65, v39);
  (*(v40 + 40))(v39, v40);
  v41 = sub_221BCCCF8();
  v42 = sub_221BCDBD8();
  if (sub_221BCDC78())
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    v44 = sub_221BCCCC8();
    _os_signpost_emit_with_name_impl(&dword_221989000, v41, v42, v44, "performIntent:actionExecutor:start", "", v43, 2u);
    MEMORY[0x223DA4C00](v43, -1, -1);
  }

  (*(v66 + 8))(v35, v67);
  [v36 perform];
  if (qword_280FA8FE0 != -1)
  {
    swift_once();
  }

  v45 = sub_221BCCD88();
  __swift_project_value_buffer(v45, qword_280FA9008);

  v46 = v36;
  v47 = sub_221BCCD68();
  v48 = sub_221BCDA98();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *__dst = v50;
    *v49 = 136315394;
    *(v49 + 4) = sub_2219A6360(*(a2 + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id), *(a2 + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id + 8), __dst);
    *(v49 + 12) = 2080;
    v51 = [v46 identifier];
    v52 = v57;
    sub_221BCC528();

    sub_2219EBDBC(&qword_27CFB7A60, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v53 = sub_221BCE168();
    v55 = v54;
    (*(v58 + 8))(v52, v38);
    v56 = sub_2219A6360(v53, v55, __dst);

    *(v49 + 14) = v56;
    _os_log_impl(&dword_221989000, v47, v48, "[%s] Started executor with identifier: %s", v49, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DA4C00](v50, -1, -1);
    MEMORY[0x223DA4C00](v49, -1, -1);
  }

  else
  {
  }
}