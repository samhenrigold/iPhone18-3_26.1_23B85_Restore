void sub_1AC642B94(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AC61C24C();
  v4 = 0;
  while (v3 != v4)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1B26E95B0](v4, a2);
    }

    else
    {
      if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }

      v5 = *(a2 + 8 * v4 + 32);
    }

    v6 = v5;
    sub_1AC5CF764(0, &qword_1EB56AB10, 0x1E69CE8B8);
    v7 = sub_1AC7A0758();

    if (v7)
    {
      return;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_14;
    }
  }
}

void sub_1AC642C90(int a1, uint64_t a2, uint64_t a3, void *a4)
{
  v98 = a4;
  v97 = a2;
  v99 = a1;
  v5 = sub_1AC79F958();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v87 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E7CC0];
  v104 = MEMORY[0x1E69E7CC0];
  v8 = sub_1AC5CF764(0, &unk_1EB56ABB0, 0x1E695DFB8);
  v9 = sub_1AC608694(a3);
  v88 = v8;
  v91 = sub_1AC643A70(v9);
  v10 = [v91 array];
  v11 = sub_1AC7A0158();

  v12 = *(v11 + 16);
  if (v12)
  {
    v103 = v7;
    sub_1AC6314D8(0, v12, 0);
    v13 = v103;
    v14 = v11 + 32;
    do
    {
      sub_1AC5CFF64(v14, v101);
      sub_1AC5C3968(v101, v100);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C650, &unk_1AC7AB400);
      swift_dynamicCast();
      v15 = v102;
      v103 = v13;
      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1AC6314D8(v16 > 1, v17 + 1, 1);
        v13 = v103;
      }

      *(v13 + 16) = v17 + 1;
      *(v13 + 8 * v17 + 32) = v15;
      v14 += 32;
      --v12;
    }

    while (v12);
  }

  else
  {

    v13 = MEMORY[0x1E69E7CC0];
  }

  v18 = 0;
  v19 = MEMORY[0x1E69E7CC0];
  v20 = *(v13 + 16);
  for (i = &selRef_initWithText_confidence_startTime_duration_; ; i = &selRef_initWithText_confidence_startTime_duration_)
  {
    if (v20 == v18)
    {
      v25 = 0;
      v26 = 0;
      v103 = MEMORY[0x1E69E7CC0];
      v27 = v97 + 32;
      v95 = v19 & 0xC000000000000001;
      v28 = *(v97 + 16);
      v97 = -v20;
      v29 = 0x1E69CE000uLL;
      v30 = MEMORY[0x1E69E7CC0];
      v86 = MEMORY[0x1E69E7CC0];
      v93 = v19;
      v85 = v27;
      v84 = v28;
      while (1)
      {
        v31 = v26;
        v94 = v25;
        while (2)
        {
          if (v31 == v28)
          {

            if (sub_1AC61C24C() < 1)
            {
              goto LABEL_80;
            }

            v20 = v30;
            v73 = sub_1AC608794(v19);
            v74 = sub_1AC643A70(v73);
            v75 = [v74 array];

            v76 = sub_1AC7A0158();
            v77 = *(v76 + 16);
            if (v77)
            {
              v102 = MEMORY[0x1E69E7CC0];
              sub_1AC7A0A88();
              v78 = v76 + 32;
              do
              {
                sub_1AC5CFF64(v78, v101);
                sub_1AC5C3968(v101, v100);
                sub_1AC5CF764(0, &qword_1EB56AB30, 0x1E69CE8C0);
                swift_dynamicCast();
                sub_1AC7A0A68();
                sub_1AC7A0A98();
                sub_1AC7A0AA8();
                sub_1AC7A0A78();
                v78 += 32;
                --v77;
              }

              while (v77);
            }

            goto LABEL_79;
          }

          if (v31 >= v28)
          {
            __break(1u);
LABEL_89:
            __break(1u);
            goto LABEL_90;
          }

          if (__OFADD__(v31, 1))
          {
            goto LABEL_89;
          }

          v89 = v31 + 1;
          v32 = *(v27 + 8 * v31);
          v33 = objc_allocWithZone(*(v29 + 2128));

          v34 = [v33 i[316]];
          if (!v34)
          {

            if (off_1ED937D60 != -1)
            {
              swift_once();
            }

            v79 = sub_1AC79FDE8();
            __swift_project_value_buffer(v79, qword_1ED9386C8);
            v69 = sub_1AC79FDC8();
            v70 = sub_1AC7A05F8();
            if (os_log_type_enabled(v69, v70))
            {
              v71 = swift_slowAlloc();
              *v71 = 0;
              v72 = "SELF: Failed to initialize ASRSchemaASRPhrase";
              goto LABEL_65;
            }

            goto LABEL_66;
          }

          v90 = v34;
          v92 = [objc_allocWithZone(MEMORY[0x1E695DFA0]) i[316]];
          v96 = v32 + 32;
          for (j = 4; v97 + j != 4; ++j)
          {
            if ((j - 4) >= *(v13 + 16))
            {
              __break(1u);
LABEL_85:
              __break(1u);
LABEL_86:
              __break(1u);
              goto LABEL_87;
            }

            v36 = v95;
            v37 = *(v13 + 8 * j);
            sub_1AC61C25C();
            if (v36)
            {

              v39 = MEMORY[0x1B26E95B0](j - 4, v19);
            }

            else
            {
              v38 = *(v19 + 8 * j);

              v39 = v38;
            }

            v40 = v39;
            sub_1AC61C25C();
            if ((v37 & 0xC000000000000001) != 0)
            {
              v41 = MEMORY[0x1B26E95B0](v25, v37);
            }

            else
            {
              v41 = *(v37 + 8 * v25 + 32);
            }

            v42 = v41;
            v43 = [v41 integerValue];

            if ((v43 & 0x8000000000000000) != 0)
            {
              goto LABEL_85;
            }

            if (v43 >= *(v32 + 16))
            {
              goto LABEL_86;
            }

            v44 = *(v96 + 8 * v43);

            sub_1AC642510(v99 & 1, v44, v30, v98);
            v46 = v45;
            v48 = v47;

            if (!v46)
            {

              return;
            }

            v30 = v48;
            if (sub_1AC61C24C() < 1)
            {

LABEL_41:

              goto LABEL_47;
            }

            v49 = objc_allocWithZone(MEMORY[0x1E69CE800]);

            v50 = [v49 init];
            if (!v50)
            {

              if (off_1ED937D60 != -1)
              {
                swift_once();
              }

              v55 = sub_1AC79FDE8();
              __swift_project_value_buffer(v55, qword_1ED9386C8);
              v56 = sub_1AC79FDC8();
              v57 = sub_1AC7A05F8();
              v58 = os_log_type_enabled(v56, v57);
              v19 = v93;
              if (v58)
              {
                v59 = swift_slowAlloc();
                *v59 = 0;
                _os_log_impl(&dword_1AC5BC000, v56, v57, "SELF: Failed to initalize ASRSchemaASRInterpretation", v59, 2u);
                MEMORY[0x1B26EAB10](v59, -1, -1);
              }

              goto LABEL_41;
            }

            v51 = v50;

            sub_1AC649870(v52, v51, &qword_1EB56AB98, 0x1E69CE8B0, &selRef_setTokens_);
            v53 = v92;
            if ([v53 containsObject_])
            {

              v54 = [v53 indexOfObject_];
            }

            else
            {
              v54 = [v53 count];

              [v53 addObject_];
            }

            v60 = sub_1AC6498F0(v40, &selRef_interpretationIndices);
            if (!v60)
            {
              goto LABEL_91;
            }

            v61 = v60;

            *&v101[0] = v61;
            [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
            MEMORY[0x1B26E8CF0]();
            if (*((*&v101[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v101[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1AC7A0178();
            }

            sub_1AC7A0198();
            sub_1AC649870(*&v101[0], v40, &qword_1EB56AAA0, 0x1E696AD98, &selRef_setInterpretationIndices_);

            v19 = v93;
LABEL_47:
            v25 = v94;
          }

          v96 = v30;

          v62 = v92;
          if ([v62 count] < 1)
          {

            v31 = v89;
            i = &selRef_initWithText_confidence_startTime_duration_;
            v27 = v85;
            v28 = v84;
            v29 = 0x1E69CE000;
            v30 = v96;
            continue;
          }

          break;
        }

        v63 = [v62 array];

        v64 = sub_1AC7A0158();
        v65 = *(v64 + 16);
        if (v65)
        {
          v102 = MEMORY[0x1E69E7CC0];
          sub_1AC7A0A88();
          v66 = v64 + 32;
          do
          {
            sub_1AC5CFF64(v66, v101);
            sub_1AC5C3968(v101, v100);
            sub_1AC5CF764(0, &unk_1EB56AAE8, 0x1E69CE800);
            swift_dynamicCast();
            sub_1AC7A0A68();
            sub_1AC7A0A98();
            sub_1AC7A0AA8();
            sub_1AC7A0A78();
            v66 += 32;
            --v65;
          }

          while (v65);

          v67 = v102;
          v19 = v93;
        }

        else
        {

          v67 = MEMORY[0x1E69E7CC0];
        }

        sub_1AC649870(v67, v90, &unk_1EB56AAE8, 0x1E69CE800, &selRef_setInterpretations_);
        MEMORY[0x1B26E8CF0]();
        i = &selRef_initWithText_confidence_startTime_duration_;
        if (*((v103 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v103 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1AC7A0178();
        }

        sub_1AC7A0198();
        v86 = v103;

        v25 = v94 + 1;
        v27 = v85;
        v28 = v84;
        v29 = 0x1E69CE000;
        v26 = v89;
        v30 = v96;
        if (__OFADD__(v94, 1))
        {
          __break(1u);
LABEL_91:
          __break(1u);
          return;
        }
      }
    }

    if (v18 >= *(v13 + 16))
    {
      __break(1u);
LABEL_79:

      i = &selRef_initWithText_confidence_startTime_duration_;
      v30 = v20;
LABEL_80:
      if ((v99 & 1) != 0 && (v80 = [objc_allocWithZone(MEMORY[0x1E69CE880]) i[316]]) != 0)
      {
        sub_1AC649870(v30, v80, &qword_1EB56AB10, 0x1E69CE8B8, &selRef_setTokens_);
        sub_1AC5CF764(0, &qword_1EB56ABA8, 0x1E69CF640);
        v81 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) i[316]];
        v82 = v87;
        sub_1AC79F938();

        v83 = sub_1AC6BB39C(v82);
        [v80 setLinkId_];
      }

      else
      {
LABEL_87:
      }

      return;
    }

    v22 = [objc_allocWithZone(MEMORY[0x1E69CE8C0]) i[316]];
    if (!v22)
    {
      break;
    }

    v23 = v22;
    sub_1AC649870(MEMORY[0x1E69E7CC0], v22, &qword_1EB56AAA0, 0x1E696AD98, &selRef_setInterpretationIndices_);
    v24 = v23;
    MEMORY[0x1B26E8CF0]();
    if (*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1AC7A0178();
    }

    sub_1AC7A0198();

    v19 = v104;
    ++v18;
  }

  if (off_1ED937D60 != -1)
  {
LABEL_90:
    swift_once();
  }

  v68 = sub_1AC79FDE8();
  __swift_project_value_buffer(v68, qword_1ED9386C8);
  v69 = sub_1AC79FDC8();
  v70 = sub_1AC7A05F8();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 0;
    v72 = "SELF: Failed to initialize ASRSchemaASRUtterance";
LABEL_65:
    _os_log_impl(&dword_1AC5BC000, v69, v70, v72, v71, 2u);
    MEMORY[0x1B26EAB10](v71, -1, -1);
  }

LABEL_66:
}

id sub_1AC643A70(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_1AC7A0148();

  v3 = [v1 initWithArray_];

  return v3;
}

uint64_t sub_1AC643AE8(int a1, id a2, void *a3)
{
  v6 = [a2 tokenSausage];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C450, &qword_1AC7A90C0);
  v7 = sub_1AC7A0158();

  v8 = [a2 interpretationIndices];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C650, &unk_1AC7AB400);
  v9 = sub_1AC7A0158();

  sub_1AC642C90(a1, v7, v9, a3);
  v11 = v10;
  v13 = v12;
  v15 = v14;

  if (!v11)
  {
    return 1;
  }

  v16 = objc_allocWithZone(MEMORY[0x1E69CE878]);
  v17 = v15;

  v18 = [v16 init];
  if (!v18)
  {
    goto LABEL_9;
  }

  sub_1AC649870(v19, v18, &unk_1EB56AB88, 0x1E69CE850, &selRef_setPhrases_);
  if (v13)
  {
    sub_1AC5CF764(0, &qword_1EB56AB30, 0x1E69CE8C0);
    v20 = v18;

    v21 = sub_1AC7A0148();
  }

  else
  {
    v22 = v18;
    v21 = 0;
  }

  [v18 setUtterances_];

  if (a1)
  {
    v23 = v18;
    v24 = [v17 linkId];
    [v23 setLinkId_];
    sub_1AC649CD8(v11, v13, v15);
  }

  else
  {
LABEL_9:
    sub_1AC649CD8(v11, v13, v15);
  }

  return v18;
}

uint64_t sub_1AC643D54(void *a1, int a2, void *a3)
{
  v6 = [a1 preITNRecognition];
  v7 = sub_1AC643AE8(a2, v6, a3);
  v9 = v8;

  if (v7 == 1)
  {
    return 1;
  }

  v11 = [a1 recognition];
  v12 = sub_1AC643AE8(a2 & 1, v11, a3);

  if (v12 == 1)
  {

    v10 = 1;
    v7 = v9;
  }

  else
  {
    v13 = [objc_allocWithZone(MEMORY[0x1E69CE830]) init];
    v10 = v13;
    if (v13)
    {
      [v13 setRawRecognition_];
      [v10 setPostItn_];
    }

    else
    {

      v7 = v12;
    }
  }

  return v10;
}

void *sub_1AC643EA0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69CE868]) init];
  v1 = v0;
  if (v0)
  {
    [v0 setExists_];
  }

  v2 = [objc_allocWithZone(MEMORY[0x1E69CE858]) init];
  [v2 setStartedOrChanged_];
  if (v2)
  {
    v3 = v2;
    v4 = mach_continuous_time();
    sub_1AC643FB8(v4);
  }

  if (qword_1EB56AF50 != -1)
  {
    OUTLINED_FUNCTION_1_6(&qword_1EB56AF50);
  }

  v5 = [qword_1EB56E6A8 captureSnapshot];
  v6 = [objc_opt_self() context];

  type metadata accessor for SelfLoggingPreheatWithPowerContainer();
  result = swift_allocObject();
  result[2] = v2;
  result[3] = v5;
  result[4] = v6;
  return result;
}

void sub_1AC643FB8(uint64_t a1)
{
  v1 = sub_1AC7A0EE8();
  OUTLINED_FUNCTION_43_2(v1);
  OUTLINED_FUNCTION_42_3();
  swift_endAccess();
}

void *sub_1AC644008(char a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69CE860]) init];
  v3 = v2;
  if (v2)
  {
    if (a1)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    [v2 setStatus_];
  }

  v5 = [objc_opt_self() context];
  v6 = objc_allocWithZone(MEMORY[0x1E69CE858]);
  v7 = v5;
  v8 = [v6 init];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    v11 = mach_continuous_time();
    sub_1AC643FB8(v11);
  }

  [v9 setEnded_];
  if (qword_1EB56AF50 != -1)
  {
    OUTLINED_FUNCTION_1_6(&qword_1EB56AF50);
  }

  v12 = [qword_1EB56E6A8 captureSnapshot];

  type metadata accessor for SelfLoggingPreheatWithPowerContainer();
  result = swift_allocObject();
  result[2] = v9;
  result[3] = v12;
  result[4] = v7;
  return result;
}

void sub_1AC644160()
{
  OUTLINED_FUNCTION_21_4();
  v23 = v1;
  v2 = v0;
  v4 = v3;
  v6 = v5;
  if (!(v0 >> 62))
  {
    v7 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_15:
    OUTLINED_FUNCTION_14();
    return;
  }

  v7 = sub_1AC7A08E8();
  if (!v7)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1B26E95B0](i, v2);
      }

      else
      {
        v9 = *(v2 + 8 * i + 32);
      }

      v10 = v9[2];
      if (v10)
      {
        v11 = v10;
        v17 = sub_1AC6442A4(v11, v12, v13, v14, v15, v16);
      }

      else
      {
        v17 = 0;
      }

      sub_1AC6482E4(v6, v4, v23, v10, v17);

      v18 = v9[3];
      if (v18)
      {
        v19 = v9[4];
        if (v19)
        {
          v20 = v18;
          v21 = v19;
          v22 = sub_1AC79F918();
          [v20 logWithEventContext:v21 asrIdentifier:v22];
        }
      }
    }

    goto LABEL_15;
  }

  __break(1u);
}

uint64_t sub_1AC6442A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_44_2(a1, a2, a3, a4, a5, a6);
  v6 = OUTLINED_FUNCTION_89();
  v8 = objc_getAssociatedObject(v6, v7);
  v9 = swift_endAccess();
  if (v8)
  {
    sub_1AC7A0828();
    v9 = swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (*(&v13 + 1))
  {
    if (OUTLINED_FUNCTION_41_3(v9))
    {
      return v11;
    }
  }

  else
  {
    sub_1AC5C7264(v14, &unk_1EB56C620, &unk_1AC7A7A00);
  }

  return 0;
}

void sub_1AC644360(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AC79F958();
  OUTLINED_FUNCTION_40();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6();
  v10 = v9 - v8;
  v11 = [objc_allocWithZone(MEMORY[0x1E69CF5F8]) init];
  if (v11)
  {
    v12 = v11;
    sub_1AC5CF764(0, &qword_1EB56ABA8, 0x1E69CF640);
    v13 = *(v6 + 16);
    v13(v10, a1, v4);
    v14 = sub_1AC6BB39C(v10);
    [v12 setUuid_];

    [v12 setComponent_];
    v15 = [objc_allocWithZone(MEMORY[0x1E69CF5F8]) init];
    if (v15)
    {
      v16 = v15;
      v13(v10, a2, v4);
      v17 = sub_1AC6BB39C(v10);
      v18 = OUTLINED_FUNCTION_33_3();
      [v18 v19];

      [v16 setComponent_];
      v20 = [objc_allocWithZone(MEMORY[0x1E69CF5E8]) init];
      if (v20)
      {
        v21 = v20;
        [v20 setSource_];
        [v21 setTarget_];
        if (qword_1EB56AF58 != -1)
        {
          swift_once();
        }

        [qword_1EB56E6B0 emitMessage_];

        v12 = v16;
      }

      else
      {
        v21 = v16;
      }

      v12 = v21;
    }
  }
}

void sub_1AC6445DC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22_3();
  v26 = v25;
  OUTLINED_FUNCTION_32_2();
  v27 = OUTLINED_FUNCTION_49_3(objc_allocWithZone(MEMORY[0x1E69CE7E0]));
  v37 = v27;
  if (v27)
  {
    [v27 setExists_];
    v27 = v37;
  }

  [v27 setIsSpeechRecognizerCreated_];
  v28 = [objc_allocWithZone(MEMORY[0x1E69CE7D8]) (v24 + 2936)];
  [v28 setEnded_];
  v29 = v28;
  sub_1AC6482E4(v20, v23, v22, v28, v21);

  if (qword_1EB56AF50 != -1)
  {
    OUTLINED_FUNCTION_1_6(&qword_1EB56AF50);
  }

  v30 = [qword_1EB56E6A8 captureSnapshot];
  if (v30)
  {
    v31 = v30;
    v32 = [objc_opt_self() context];
    if (!v32)
    {
      __break(1u);
      return;
    }

    v33 = v32;
    v34 = sub_1AC79F918();
    [v31 logWithEventContext:v33 asrIdentifier:v34];
  }

  OUTLINED_FUNCTION_23_2();
}

void sub_1AC644768(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22_3();
  v21 = v20;
  OUTLINED_FUNCTION_2_3();
  v23 = [objc_allocWithZone(*v22) init];
  v24 = v23;
  if (v23)
  {
    OUTLINED_FUNCTION_47_2(v23, sel_setExists_);
  }

  v25 = [objc_allocWithZone(*v21) init];
  [v25 setStartedOrChanged_];
  v26 = v25;
  v27 = OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_31_3(v27, v28, v29);

  OUTLINED_FUNCTION_23_2();
}

void sub_1AC644814(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_2_3();
  v21 = OUTLINED_FUNCTION_49_3(objc_allocWithZone(MEMORY[0x1E69CE810]));
  v22 = [objc_allocWithZone(MEMORY[0x1E69CE808]) (v20 + 2936)];
  [v22 setEnded_];
  v23 = v22;
  v24 = OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_31_3(v24, v25, v26);

  OUTLINED_FUNCTION_23_2();
}

void sub_1AC6448F4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_21_4();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v44 = [objc_allocWithZone(*v34) init];
  if (v44)
  {
    [v44 setExists_];
  }

  v35 = [objc_allocWithZone(*v25) init];
  [v35 *v23];
  v36 = v35;
  sub_1AC6482E4(v33, v31, v29, v35, v27);

  if (qword_1EB56AF50 != -1)
  {
    OUTLINED_FUNCTION_1_6(&qword_1EB56AF50);
  }

  v37 = [qword_1EB56E6A8 captureSnapshot];
  if (v37)
  {
    v38 = v37;
    v39 = [objc_opt_self() context];
    if (!v39)
    {
      __break(1u);
      return;
    }

    v40 = v39;
    v41 = sub_1AC79F918();
    [v38 logWithEventContext:v40 asrIdentifier:v41];
  }

  OUTLINED_FUNCTION_14();
}

void sub_1AC644A9C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_2_3();
  v21 = OUTLINED_FUNCTION_49_3(objc_allocWithZone(MEMORY[0x1E69CE738]));
  v22 = v21;
  if (v21)
  {
    OUTLINED_FUNCTION_47_2(v21, sel_setExists_);
  }

  v23 = [objc_allocWithZone(MEMORY[0x1E69CE730]) (v20 + 2936)];
  [v23 setStartedOrChanged_];
  v24 = v23;
  v25 = OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_31_3(v25, v26, v27);

  OUTLINED_FUNCTION_23_2();
}

void sub_1AC644B44(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_2_3();
  v20 = [objc_allocWithZone(MEMORY[0x1E69CE740]) init];
  v21 = v20;
  if (v20)
  {
    OUTLINED_FUNCTION_47_2(v20, sel_setExists_);
  }

  v22 = v21;
  v23 = OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_31_3(v23, v24, v25);

  OUTLINED_FUNCTION_23_2();
}

void sub_1AC644BD4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_21_4();
  OUTLINED_FUNCTION_2_3();
  v24 = [objc_allocWithZone(MEMORY[0x1E69CE798]) init];
  v25 = v24;
  if (v24)
  {
    OUTLINED_FUNCTION_46_4(v24);

    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v27 = v25;
  v28 = OUTLINED_FUNCTION_3_5();
  sub_1AC6482E4(v28, v29, v30, v26, v22);

  OUTLINED_FUNCTION_14();
}

void sub_1AC644C74(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_21_4();
  OUTLINED_FUNCTION_2_3();
  v24 = [objc_allocWithZone(MEMORY[0x1E69CE7A0]) init];
  v25 = v24;
  if (v24)
  {
    [v24 setExists_];
    OUTLINED_FUNCTION_46_4(v25);

    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v27 = v25;
  v28 = OUTLINED_FUNCTION_3_5();
  sub_1AC6482E4(v28, v29, v30, v26, v22);

  OUTLINED_FUNCTION_14();
}

void sub_1AC644D48(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_32_2();
  v25 = [objc_allocWithZone(*v24) init];
  v26 = v25;
  if (v25)
  {
    [v25 setExists_];
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  v35 = v26;
  sub_1AC6482E4(v20, v23, v22, v27, v21);

  if (qword_1EB56AF50 != -1)
  {
    OUTLINED_FUNCTION_1_6(&qword_1EB56AF50);
  }

  v28 = [qword_1EB56E6A8 captureSnapshot];
  if (v28)
  {
    v29 = v28;
    v30 = [objc_opt_self() context];
    if (!v30)
    {
      __break(1u);
      return;
    }

    v31 = v30;
    v32 = sub_1AC79F918();
    [v29 logWithEventContext:v31 asrIdentifier:v32];
  }

  OUTLINED_FUNCTION_23_2();
}

void sub_1AC644E90(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_21_4();
  v26 = v25;
  v28 = v27;
  OUTLINED_FUNCTION_2_3();
  type metadata accessor for SelfLoggingHelper();
  if (sub_1AC641ED4(v24, v23))
  {
    v29 = [objc_allocWithZone(MEMORY[0x1E69CE7F0]) init];
    v30 = v29;
    if (v29)
    {
      v31 = v29;
      if (v28)
      {
        v32 = sub_1AC79FF58();
      }

      else
      {
        v32 = 0;
      }

      v34 = OUTLINED_FUNCTION_25_4();
      [v34 v35];

      v36 = v30;
      if (v26)
      {
        v37 = sub_1AC79FF58();
      }

      else
      {
        v37 = 0;
      }

      v38 = OUTLINED_FUNCTION_25_4();
      [v38 v39];

      v40 = v30;
      if (a23)
      {
        v41 = sub_1AC79FF58();
      }

      else
      {
        v41 = 0;
      }

      v42 = OUTLINED_FUNCTION_25_4();
      [v42 v43];

      v33 = v30;
    }

    else
    {
      v33 = 0;
    }

    v49 = v30;
    OUTLINED_FUNCTION_7_4();
    sub_1AC6482E4(v44, v45, v46, v33, 0);

    OUTLINED_FUNCTION_14();
  }

  else
  {
    OUTLINED_FUNCTION_14();
  }
}

void sub_1AC645020(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, unsigned int *a8, unint64_t a9)
{
  if (!a4)
  {
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v33 = sub_1AC79FDE8();
    OUTLINED_FUNCTION_10_3(v33, qword_1ED9386C8);
    v63 = sub_1AC79FDC8();
    sub_1AC7A05D8();
    OUTLINED_FUNCTION_38_2();
    if (os_log_type_enabled(v63, v34))
    {
      v35 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_37_4(v35);
      _os_log_impl(&dword_1AC5BC000, v63, v9, "SELF: EAR result package is nil", v10, 2u);
      OUTLINED_FUNCTION_16_4();
    }

    goto LABEL_20;
  }

  v15 = *(a8 + 4);
  v16 = *a8;
  v63 = a4;
  v17 = [v63 recognition];
  v18 = [v17 interpretationIndices];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C650, &unk_1AC7AB400);
  v19 = sub_1AC7A0158();

  v20 = *(v19 + 16);

  if (!v20)
  {
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v36 = sub_1AC79FDE8();
    OUTLINED_FUNCTION_10_3(v36, qword_1ED9386C8);
    v37 = sub_1AC79FDC8();
    v38 = sub_1AC7A05D8();
    if (OUTLINED_FUNCTION_28_2(v38))
    {
      *OUTLINED_FUNCTION_20() = 0;
      OUTLINED_FUNCTION_19_2(&dword_1AC5BC000, v39, v40, "SELF: EAR result package is empty");
      OUTLINED_FUNCTION_70();
    }

    goto LABEL_20;
  }

  v21 = [objc_allocWithZone(MEMORY[0x1E69CE838]) init];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
    [v23 setIsFinal_];
  }

  type metadata accessor for SelfLoggingHelper();
  v24 = sub_1AC641ED4(a2, a3);
  v25 = sub_1AC643D54(v63, v24 & 1, a7);
  if (v25 == 1)
  {
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v28 = sub_1AC79FDE8();
    OUTLINED_FUNCTION_10_3(v28, qword_1ED9386C8);
    v29 = sub_1AC79FDC8();
    v30 = sub_1AC7A05F8();
    if (OUTLINED_FUNCTION_28_2(v30))
    {
      *OUTLINED_FUNCTION_20() = 0;
      OUTLINED_FUNCTION_19_2(&dword_1AC5BC000, v31, v32, "SELF: failed to create result Package in SELF, not logging ASRSchemaASRPackageGenerated");
      OUTLINED_FUNCTION_70();
    }

LABEL_20:
    v41 = v63;
    goto LABEL_21;
  }

  v42 = v25;
  v61 = v26;
  v62 = v27;
  if (v22)
  {
    v43 = v16 | (v15 << 32);
    [v22 setPackage_];
    type metadata accessor for Instrumentation();
    v44 = v63;
    v45 = v22;
    v46 = sub_1AC727600(a4);
    v48 = v47;

    sub_1AC649A3C(v46, v48, v45, &selRef_setResultCandidateId_);
    if (v43 != 2)
    {
      [v45 setHasVoiceCommandInExhaustiveParses_];
      [v45 setHasVoiceCommandParses_];
      [v45 setHasVoiceCommandEditIntent_];
      [v45 setHasVoiceCommandAfterReranking_];
      [v45 setHasNoVoiceCommandAfterRespeakCheck_];
    }
  }

  else
  {
    v45 = 0;
  }

  v49 = v22;
  OUTLINED_FUNCTION_7_4();
  sub_1AC6482E4(v50, v51, v52, v45, a9);

  if (sub_1AC641ED4(a2, a3))
  {
    v53 = v61;
    OUTLINED_FUNCTION_7_4();
    sub_1AC6482E4(v54, v55, v56, v61, a9);

    v57 = v62;
    OUTLINED_FUNCTION_7_4();
    sub_1AC6482E4(v58, v59, v60, v62, a9);

    v41 = v42;
  }

  else
  {

    v41 = v62;
  }

LABEL_21:
}

void sub_1AC645504(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_2_3();
  v21 = [objc_allocWithZone(*v20) init];
  v22 = v21;
  if (v21)
  {
    OUTLINED_FUNCTION_47_2(v21, sel_setExists_);
  }

  v23 = v22;
  v24 = OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_31_3(v24, v25, v26);

  OUTLINED_FUNCTION_23_2();
}

void sub_1AC645590(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  if (a4)
  {
    v11 = objc_allocWithZone(MEMORY[0x1E69CE7A8]);
    v139 = a4;
    v12 = [v11 init];
    if (v12)
    {
      v13 = v12;
      v128 = a1;
      v14 = [v139 correctPartialResultIndexList];
      sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
      v15 = sub_1AC7A0158();

      sub_1AC649870(v15, v13, &qword_1EB56AAA0, 0x1E696AD98, &selRef_setCorrectPartialResultIndexLists_);
      v16 = [v139 preITNRecognition];
      v17 = [v16 oneBest];

      v126 = sub_1AC5CF764(0, &qword_1EB56AAF8, off_1E797AC98);
      v18 = sub_1AC7A0158();

      v19 = sub_1AC61C24C();
      v134 = v13;
      if (v19)
      {
        v20 = v19;
        v141 = MEMORY[0x1E69E7CC0];
        v21 = OUTLINED_FUNCTION_34_4();
        sub_1AC6312E0(v21, v22, v23);
        if (v20 < 0)
        {
          __break(1u);
          goto LABEL_92;
        }

        v24 = 0;
        v25 = v141;
        do
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
            v26 = MEMORY[0x1B26E95B0](v24, v18);
          }

          else
          {
            v26 = *(v18 + 8 * v24 + 32);
          }

          v27 = v26;
          [v26 silenceStart];
          v29 = v28;
          [v139 utteranceStart];
          v31 = v30;

          v141 = v25;
          v33 = v25[2];
          v32 = v25[3];
          v34 = v25;
          if (v33 >= v32 >> 1)
          {
            v35 = OUTLINED_FUNCTION_9(v32);
            sub_1AC6312E0(v35, v33 + 1, 1);
            v34 = v141;
          }

          ++v24;
          v34[2] = v33 + 1;
          *&v34[v33 + 4] = v29 + v31;
          v25 = v34;
        }

        while (v20 != v24);
      }

      else
      {

        v25 = MEMORY[0x1E69E7CC0];
      }

      v39 = v25[2];
      v40 = MEMORY[0x1E69E7CC0];
      v133 = v25;
      if (v39)
      {
        v141 = MEMORY[0x1E69E7CC0];
        sub_1AC7A0A88();
        type metadata accessor for SelfLoggingHelper();
        v41 = (v25 + 4);
        v42 = v39;
        do
        {
          v43 = *v41++;
          [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
          sub_1AC7A0A68();
          sub_1AC7A0A98();
          sub_1AC7A0AA8();
          sub_1AC7A0A78();
          --v42;
        }

        while (v42);
        v44 = v141;
        v40 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v44 = MEMORY[0x1E69E7CC0];
      }

      sub_1AC64995C(v44, v13, &selRef_setTokenSilenceStartTimeInNsLists_);
      [v13 setIsAfterResume_];
      v45 = sub_1AC6498F0(v13, &selRef_correctPartialResultIndexLists);
      if (v45)
      {
        v46 = v45;
        v47 = sub_1AC61C24C();
        if (v47)
        {
          v48 = v47;
          v141 = v40;
          v49 = OUTLINED_FUNCTION_34_4();
          sub_1AC6310CC(v49, v50, v51);
          if (v48 < 0)
          {
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
            return;
          }

          v52 = 0;
          v53 = v141;
          v137 = v46 & 0xC000000000000001;
          v54 = v46;
          do
          {
            if (v137)
            {
              v55 = MEMORY[0x1B26E95B0](v52, v46);
            }

            else
            {
              v55 = *(v46 + 8 * v52 + 32);
            }

            v56 = v55;
            v140 = [v55 integerValue];
            v57 = sub_1AC7A0CC8();
            v59 = v58;

            v141 = v53;
            v61 = *(v53 + 16);
            v60 = *(v53 + 24);
            if (v61 >= v60 >> 1)
            {
              v63 = OUTLINED_FUNCTION_9(v60);
              sub_1AC6310CC(v63, v61 + 1, 1);
              v53 = v141;
            }

            ++v52;
            *(v53 + 16) = v61 + 1;
            v62 = v53 + 16 * v61;
            *(v62 + 32) = v57;
            *(v62 + 40) = v59;
            v46 = v54;
          }

          while (v48 != v52);

          v13 = v134;
          v40 = MEMORY[0x1E69E7CC0];
        }

        else
        {

          v53 = MEMORY[0x1E69E7CC0];
        }

        v141 = v53;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C640, &unk_1AC7A9BE0);
        sub_1AC649C74();
        v127 = sub_1AC79FEA8();
        v64 = v65;
      }

      else
      {
        v127 = 0;
        v64 = 0xE000000000000000;
      }

      v141 = v40;
      v66 = [v139 preITNRecognition];
      v67 = [v66 oneBest];

      if (!v67)
      {
        sub_1AC7A0158();
        v67 = sub_1AC7A0148();
      }

      objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B998, &unk_1AC7A7A10);
      v68 = sub_1AC7A0148();
      v69 = OUTLINED_FUNCTION_25_4();
      v71 = [v69 v70];

      v72 = sub_1AC7A0158();
      v73 = sub_1AC61C24C();
      v132 = v64;
      if (!v73)
      {
        v83 = MEMORY[0x1E69E7CC0];
LABEL_59:

        sub_1AC64995C(v83, v13, &selRef_setCorrectAlignedPartialResultIndexLists_);
        v84 = [v139 performanceMarkers];
        if (v84)
        {
          v85 = v84;
          v86 = [v84 correctAlignedPartialResultIndexList];
          v87 = sub_1AC7A0158();

          sub_1AC649870(v87, v13, &qword_1EB56AAA0, 0x1E696AD98, &selRef_setCorrectAlignedPartialResultIndexLists_);
          if (sub_1AC6498F0(v85, &selRef_tokenDelayInMilliSeconds))
          {
            v88 = sub_1AC7A0148();
          }

          else
          {
            v88 = 0;
          }

          v89 = OUTLINED_FUNCTION_33_3();
          [v89 v90];
        }

        v91 = sub_1AC61C24C();
        v92 = MEMORY[0x1E69E7CC0];
        v138 = v83;
        if (v91)
        {
          v93 = v91;
          v140 = MEMORY[0x1E69E7CC0];
          sub_1AC6310CC(0, v91 & ~(v91 >> 63), 0);
          if (v93 < 0)
          {
LABEL_93:
            __break(1u);
            goto LABEL_94;
          }

          v94 = 0;
          v92 = v140;
          v95 = v83 & 0xC000000000000001;
          do
          {
            if (v95)
            {
              v96 = MEMORY[0x1B26E95B0](v94, v83);
            }

            else
            {
              v96 = *(v83 + 8 * v94 + 32);
            }

            v97 = v96;
            [v96 integerValue];
            v98 = sub_1AC7A0CC8();
            v100 = v99;

            v140 = v92;
            v102 = *(v92 + 16);
            v101 = *(v92 + 24);
            if (v102 >= v101 >> 1)
            {
              v104 = OUTLINED_FUNCTION_9(v101);
              sub_1AC6310CC(v104, v102 + 1, 1);
              v92 = v140;
            }

            ++v94;
            *(v92 + 16) = v102 + 1;
            v103 = v92 + 16 * v102;
            *(v103 + 32) = v98;
            *(v103 + 40) = v100;
            v83 = v138;
          }

          while (v93 != v94);
          v13 = v134;
          v64 = v132;
        }

        v140 = v92;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C640, &unk_1AC7A9BE0);
        sub_1AC649C74();
        v126 = OUTLINED_FUNCTION_29_3();
        v72 = v105;

        v106 = MEMORY[0x1E69E7CC0];
        v136 = v72;
        if (v39)
        {
          v140 = MEMORY[0x1E69E7CC0];
          sub_1AC6310CC(0, v39, 0);
          v106 = v140;
          v107 = v133 + 4;
          do
          {
            v108 = sub_1AC7A03E8();
            v110 = v109;
            v140 = v106;
            v112 = *(v106 + 16);
            v111 = *(v106 + 24);
            if (v112 >= v111 >> 1)
            {
              v114 = OUTLINED_FUNCTION_9(v111);
              sub_1AC6310CC(v114, v112 + 1, 1);
              v106 = v140;
            }

            *(v106 + 16) = v112 + 1;
            v113 = v106 + 16 * v112;
            *(v113 + 32) = v108;
            *(v113 + 40) = v110;
            ++v107;
            --v39;
          }

          while (v39);
          v13 = v134;
          v72 = v136;
          v64 = v132;
        }

        v140 = v106;
        v75 = OUTLINED_FUNCTION_29_3();
        v39 = v115;

        if (off_1ED937D60 != -1)
        {
LABEL_90:
          OUTLINED_FUNCTION_3_0();
          swift_once();
        }

        v116 = sub_1AC79FDE8();
        OUTLINED_FUNCTION_10_3(v116, qword_1ED9386C8);

        v117 = sub_1AC79FDC8();
        v118 = sub_1AC7A05E8();

        if (os_log_type_enabled(v117, v118))
        {
          v119 = OUTLINED_FUNCTION_48();
          v140 = swift_slowAlloc();
          *v119 = 136315650;
          *(v119 + 4) = sub_1AC5CFE74(v127, v64, &v140);
          *(v119 + 12) = 2080;
          *(v119 + 14) = sub_1AC5CFE74(v126, v72, &v140);
          *(v119 + 22) = 2080;
          *(v119 + 24) = sub_1AC5CFE74(v75, v39, &v140);
          _os_log_impl(&dword_1AC5BC000, v117, v118, "SELF: Correct Partial Result Index List is %s, Correct Aligned Partial Result Index List is %s, Silence Start Time List is %s", v119, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_70();
          OUTLINED_FUNCTION_70();
        }

        v120 = v13;
        sub_1AC6482E4(v128, a2, a3, v13, a7);

        if (qword_1EB56AF50 != -1)
        {
          OUTLINED_FUNCTION_1_6(&qword_1EB56AF50);
        }

        v121 = [qword_1EB56E6A8 captureSnapshot];
        if (!v121)
        {

          return;
        }

        v122 = v121;
        v123 = [objc_opt_self() context];
        if (v123)
        {
          v124 = v123;

          v125 = sub_1AC79F918();
          [v122 logWithEventContext:v124 asrIdentifier:v125];

          return;
        }

        goto LABEL_95;
      }

      v74 = v73;
      if (v73 >= 1)
      {
        v75 = 0;
        v64 = v72 & 0xC000000000000001;
        while (1)
        {
          if (v64)
          {
            v76 = MEMORY[0x1B26E95B0](v75, v72);
          }

          else
          {
            v76 = *(v72 + 8 * v75 + 32);
          }

          v13 = v76;
          v77 = sub_1AC7A0738();
          v78 = OUTLINED_FUNCTION_33_3();
          v80 = [v78 v79];

          if (v80)
          {
            v81 = v13;
            MEMORY[0x1B26E8CF0]();
            OUTLINED_FUNCTION_12_3();
            if (v82)
            {
              OUTLINED_FUNCTION_8_3();
            }

            sub_1AC7A0198();
          }

          else
          {
            if (__CFADD__([v13 unsignedLongLongValue], a6))
            {
              __break(1u);
              goto LABEL_90;
            }

            v81 = sub_1AC7A0EE8();
            MEMORY[0x1B26E8CF0]();
            OUTLINED_FUNCTION_12_3();
            if (v82)
            {
              OUTLINED_FUNCTION_8_3();
            }

            sub_1AC7A0198();
          }

          ++v75;

          if (v74 == v75)
          {
            v83 = v141;
            v13 = v134;
            v64 = v132;
            goto LABEL_59;
          }
        }
      }

LABEL_92:
      __break(1u);
      goto LABEL_93;
    }
  }

  else
  {
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v36 = sub_1AC79FDE8();
    OUTLINED_FUNCTION_10_3(v36, qword_1ED9386C8);
    v139 = sub_1AC79FDC8();
    sub_1AC7A05D8();
    OUTLINED_FUNCTION_38_2();
    if (os_log_type_enabled(v139, v37))
    {
      v38 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_37_4(v38);
      _os_log_impl(&dword_1AC5BC000, v139, v7, "SELF: EAR result package is nil", v8, 2u);
      OUTLINED_FUNCTION_16_4();
    }
  }
}

void sub_1AC646270()
{
  OUTLINED_FUNCTION_129_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v185 = v10;
  v12 = v11;
  v13 = sub_1AC79F958();
  MEMORY[0x1EEE9AC00](v13 - 8);
  OUTLINED_FUNCTION_6();
  v16 = v15 - v14;
  v17 = [objc_allocWithZone(MEMORY[0x1E69CE870]) init];
  v19 = *(v5 + 36);
  v197 = v17;
  if ((v19 & 1) == 0)
  {
    LODWORD(v18) = *(v5 + 32);
    [v197 setAverageActiveTokensPerFrame_];
    v17 = v197;
  }

  if ((*(v5 + 60) & 1) == 0)
  {
    LODWORD(v18) = *(v5 + 56);
    [v197 setSignalToNoiseRatioInDecibels_];
    v17 = v197;
  }

  if (v17)
  {
    type metadata accessor for SelfLoggingHelper();
    [v17 setRecognitionDurationInNs_];
    [v17 setAudioDurationInNs_];
  }

  v20 = *(v5 + 80);
  if (v20 != 2)
  {
    [v197 setEagerEnabled_];
  }

  v21 = v197;
  if (v197)
  {
    LODWORD(v18) = *(v5 + 84);
    [v197 setCpuRealTimeFactor_];
    [v197 setCpuInstructionsInMillionsPerSecond_];
    v21 = v197;
  }

  if ((*(v5 + 92) & 1) == 0)
  {
    [v197 setNumLanguageModelEnrollmentDataStreams_];
    v21 = v197;
  }

  v22 = v5;
  v23 = *(v5 + 232);
  v187 = v22;
  if (v23)
  {
    sub_1AC5CF764(0, &qword_1EB56AA90, 0x1E696AEC0);

    v24 = OUTLINED_FUNCTION_89();
    v26 = sub_1AC6478D0(v24, v25);
    v27 = [v26 BOOLValue];

    v21 = v197;
    if (v27)
    {
      v28 = 2;
    }

    else
    {
      v28 = 1;
    }

    if (!v197)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (!v21)
    {
      goto LABEL_24;
    }

    v28 = 0;
  }

  [v197 setRecognitionHardware_];
  v22 = v187;
  [v197 setUtteranceDetectionEnabled_];
  [v197 setUtteranceConcatenationEnabled_];
  [v197 setContinuousListeningEnabled_];
  v21 = v197;
  if (v197 && *(v187 + 104))
  {

    v29 = OUTLINED_FUNCTION_89();
    sub_1AC649A3C(v29, v30, v197, v31);
    v21 = v197;
  }

LABEL_24:
  v32 = v22;
  if ((*(v22 + 136) & 1) == 0)
  {
    [v197 setInverseTextNormalizationDurationForFinalResultInNs_];
    v21 = v197;
  }

  if ((*(v22 + 152) & 1) == 0)
  {
    [v197 setInverseTextNormalizationDurationInNs_];
    v21 = v197;
  }

  if ((*(v22 + 160) & 1) == 0)
  {
    [v197 setNumberOfInverseTextNormalizationRuns_];
    v21 = v197;
  }

  if (v21 && (*(v22 + 248) & 1) == 0)
  {
    [v197 setNumIngestedNeuralContextualBiasingEmbeddings_];
  }

  v33 = [objc_allocWithZone(MEMORY[0x1E69CE8A0]) init];
  v35 = v33;
  if ((*(v32 + 356) & 1) == 0)
  {
    LODWORD(v34) = *(v32 + 352);
    [v33 setRescoringResultDuration_];
  }

  if ((*(v32 + 364) & 1) == 0)
  {
    LODWORD(v34) = *(v32 + 360);
    [v35 setRescoringFinalizeDuration_];
  }

  if (*(v32 + 312) && v35)
  {

    v36 = v35;
    OUTLINED_FUNCTION_89();
    sub_1AC647944();
    v38 = v37;

    sub_1AC649870(v38, v36, &unk_1EB56AAB8, 0x1E69CE898, &selRef_setRescoringEvents_);
  }

  v186 = type metadata accessor for SelfLoggingHelper();
  v182 = v9;
  if (sub_1AC641ED4(v185, v9))
  {
    v39 = [objc_allocWithZone(MEMORY[0x1E69CE8A8]) init];
    sub_1AC5CF764(0, &qword_1EB56ABA8, 0x1E69CF640);
    v40 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) init];
    sub_1AC79F938();

    v41 = sub_1AC6BB39C(v16);
    v42 = v41;
    if (v35)
    {
      v41 = [v35 setRescoringLinkId_];
    }

    if (v39)
    {
      OUTLINED_FUNCTION_30_1(v41, sel_setLinkId_);
      v43 = *(v187 + 328);
      if (v43)
      {
        v44 = *(v187 + 320);

        sub_1AC649A3C(v44, v43, v39, &selRef_setOriginalTranscript_);
      }

      v45 = *(v187 + 344);
      if (v45)
      {
        v46 = *(v187 + 336);

        sub_1AC649A3C(v46, v45, v39, &selRef_setModifiedTranscript_);
      }

      v47 = v39;
      v9 = v182;
    }

    else
    {
      v47 = 0;
    }

    v48 = v39;
    sub_1AC6482E4(v12, v185, v9, v47, v3);
  }

  v49 = v197;
  [v49 setRescoringDeliberationResult_];
  v50 = [objc_allocWithZone(MEMORY[0x1E69CE780]) init];
  v51 = v50;
  v192 = v49;
  if (v50)
  {
    [v50 setIsEmojiPersonalizationUsed_];
    [v51 setIsEmojiDisambiguationUsed_];
    [v51 setIsEmojiExpectedButNotRecognized_];
    if (*(v187 + 168))
    {
      v52 = v51;

      v53 = sub_1AC7A0148();
    }

    else
    {
      v54 = v51;
      v53 = 0;
    }

    [v51 setRecognizedEmojis_];

    v49 = v192;
  }

  v179 = v35;
  v180 = v3;
  v181 = v1;
  v178 = v51;
  [v49 setEmojiMetrics_];
  v55 = v187;
  v56 = *(v187 + 24);
  if (v56)
  {
    v57 = *(v187 + 16);
    v203 = v57;
    v204 = v56;
    v201 = 14906;
    v202 = 0xE200000000000000;
    sub_1AC649BF0();

    v58 = sub_1AC7A07F8();
    if (v58[2] == 3)
    {

      v49 = [objc_allocWithZone(MEMORY[0x1E69CE888]) init];
      if (v49)
      {
        sub_1AC61C258();
        v59 = v58[4];
        v60 = v58[5];

        sub_1AC649A3C(v59, v60, v49, &selRef_setFrontend_);
        sub_1AC61C258();
        v61 = v58[6];
        v62 = v58[7];

        sub_1AC649A3C(v61, v62, v49, &selRef_setDecoder_);
        sub_1AC61C258();
        v63 = v58[8];
        v64 = v58[9];
        v65 = v49;
        OUTLINED_FUNCTION_36_2();

        sub_1AC649A3C(v63, v64, v1, &selRef_setDecodable_);
      }

      else
      {
      }

      v76 = OUTLINED_FUNCTION_25_4();
      [v76 v77];
    }

    else
    {
      v66 = v12;

      if (off_1ED937D60 != -1)
      {
        OUTLINED_FUNCTION_3_0();
        swift_once();
      }

      v67 = sub_1AC79FDE8();
      OUTLINED_FUNCTION_10_3(v67, qword_1ED9386C8);

      v68 = sub_1AC79FDC8();
      v69 = sub_1AC7A05F8();

      if (os_log_type_enabled(v68, v69))
      {
        v1 = swift_slowAlloc();
        v70 = v7;
        v71 = OUTLINED_FUNCTION_48();
        v203 = v71;
        *v1 = 136315138;
        v72 = sub_1AC5CFE74(v57, v56, &v203);

        *(v1 + 4) = v72;
        _os_log_impl(&dword_1AC5BC000, v68, v69, "SELF: Encountered malformed string during SELF logging for recognizer components in speech results from recognizer. String: %s", v1, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v71);
        v7 = v70;
        v12 = v66;
        OUTLINED_FUNCTION_70();
        OUTLINED_FUNCTION_70();
      }

      else
      {

        v12 = v66;
      }

      v49 = sub_1AC79FDC8();
      v73 = sub_1AC7A05F8();
      if (OUTLINED_FUNCTION_28_2(v73))
      {
        *OUTLINED_FUNCTION_20() = 0;
        OUTLINED_FUNCTION_19_2(&dword_1AC5BC000, v74, v75, "SELF: Expected three recognizer components separated by delimiter '::'. Ex: 'dnn-rfdnn-aa-cache::dnn-lazy-16k-rfdnn-dictation::msg'");
        OUTLINED_FUNCTION_70();
      }
    }

    v55 = v187;
  }

  v78 = *(v55 + 48);
  v79 = MEMORY[0x1E69E7CC0];
  v80 = v55;
  if (v78)
  {
    v81 = *(v55 + 40);
    v204 = *(v55 + 48);
    v205 = MEMORY[0x1E69E7CC0];
    v184 = v81;
    v201 = 59;
    v202 = 0xE100000000000000;
    v203 = v81;
    sub_1AC649BF0();
    OUTLINED_FUNCTION_36_2();

    v196 = v1;
    v82 = sub_1AC7A07F8();
    v84 = v82;
    v195 = *(v82 + 16);
    if (!v195)
    {

      goto LABEL_124;
    }

    v188 = v78;
    v177 = v7;
    v176 = v12;
    v85 = 0;
    v86 = v79;
    v87 = 0;
    v194 = v82 + 32;
    *&v83 = 136315138;
    v183 = v83;
    v88 = v86;
    v191 = v86;
    v193 = v82;
    while (1)
    {
      if (v85 >= *(v84 + 16))
      {
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
        goto LABEL_169;
      }

      v89 = (v194 + 16 * v85);
      v91 = *v89;
      v90 = v89[1];
      v92 = objc_allocWithZone(MEMORY[0x1E69CE7F8]);

      v198 = [v92 init];
      v203 = v91;
      v204 = v90;
      OUTLINED_FUNCTION_24_4(58);
      v93 = sub_1AC7A07F8();
      v94 = v93;
      if (v93[2] != 3)
      {

        if (off_1ED937D60 != -1)
        {
          OUTLINED_FUNCTION_3_0();
          swift_once();
        }

        v108 = sub_1AC79FDE8();
        OUTLINED_FUNCTION_10_3(v108, qword_1ED9386C8);
        v109 = v188;

        v110 = sub_1AC79FDC8();
        LOBYTE(v1) = sub_1AC7A05F8();

        if (os_log_type_enabled(v110, v1))
        {
          v111 = swift_slowAlloc();
          v112 = OUTLINED_FUNCTION_48();
          v203 = v112;
          *v111 = v183;
          *(v111 + 4) = sub_1AC5CFE74(v184, v109, &v203);
          _os_log_impl(&dword_1AC5BC000, v110, v1, "SELF: Encountered malformed string during SELF logging for interpolation weights in speech results from recognizer. String: %s", v111, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v112);
          OUTLINED_FUNCTION_70();
          OUTLINED_FUNCTION_70();
        }

        v113 = sub_1AC79FDC8();
        v114 = sub_1AC7A05F8();
        if (os_log_type_enabled(v113, v114))
        {
          v115 = OUTLINED_FUNCTION_20();
          LOBYTE(v1) = v115;
          *v115 = 0;
          _os_log_impl(&dword_1AC5BC000, v113, v114, "SELF: Expected interpolation weight sets separated by delimiter ';' - starting with a set of weights delimited by ',' and ending the with start/end times delimited by ':'. Ex: '0.999646,0.000354:0:4280;0.947514,0.000158:0:3859'", v115, 2u);
          OUTLINED_FUNCTION_70();
        }

        v116 = v88;
LABEL_119:

        v88 = v116;
        goto LABEL_120;
      }

      v95 = v93[6];
      v96 = v93[7];
      v203 = 0;

      OUTLINED_FUNCTION_6_4();
      v98 = sub_1AC649ACC(v95, v96, &v203, v97, sub_1AC649C44);

      if (v94[2] < 3uLL)
      {
        goto LABEL_167;
      }

      v99 = *&v203;
      v100 = v94[8];
      v101 = v94[9];
      v203 = 0;

      OUTLINED_FUNCTION_6_4();
      v103 = sub_1AC649ACC(v100, v101, &v203, v102, sub_1AC649C44);

      if (v198)
      {
        if (!v98)
        {
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
          return;
        }

        v104 = *&v203;
        v105 = sub_1AC6421A8(v99);
        v106 = v198;
        [v198 setStartTimeInNs_];
        if (!v103)
        {
          goto LABEL_171;
        }

        v107 = v106;
        OUTLINED_FUNCTION_36_2();

        [v103 setEndTimeInNs_];
      }

      else
      {
      }

      if (!v94[2])
      {
        goto LABEL_168;
      }

      v117 = v94[4];
      v1 = v94[5];

      v203 = v117;
      v204 = v1;
      OUTLINED_FUNCTION_24_4(44);
      v118 = sub_1AC7A07F8();

      if (!v198)
      {

        v116 = v191;
        goto LABEL_117;
      }

      v189 = v85;
      v119 = MEMORY[0x1E69E7CC0];
      v201 = MEMORY[0x1E69E7CC0];
      v120 = *(v118 + 16);
      v121 = v198;
      v190 = v121;
      v191 = v119;
      v122 = 0;
LABEL_91:
      v123 = (v118 + 40 + 16 * v122);
      while (v120 != v122)
      {
        if (v122 >= *(v118 + 16))
        {
          __break(1u);
          goto LABEL_166;
        }

        v1 = *(v123 - 1);
        v124 = *v123;
        v200 = 0;
        MEMORY[0x1EEE9AC00](v121);
        *(&v175 - 2) = &v200;
        if ((v124 & 0x1000000000000000) != 0)
        {
LABEL_109:

          sub_1AC7A09A8();
          if (v199)
          {
            goto LABEL_110;
          }

          goto LABEL_105;
        }

        if ((v124 & 0x2000000000000000) != 0)
        {
          v203 = v1;
          v204 = v124 & 0xFFFFFFFFFFFFFFLL;

          if (v1 <= 0x20u && ((1 << v1) & 0x100003E01) != 0)
          {
            goto LABEL_105;
          }
        }

        else
        {
          if ((v1 & 0x1000000000000000) == 0)
          {
            goto LABEL_109;
          }

          v1 = (v124 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v125 = *((v124 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

          if (v125 <= 0x20 && ((1 << v125) & 0x100003E01) != 0)
          {
            goto LABEL_105;
          }
        }

        v127 = _swift_stdlib_strtof_clocale();
        if (v127 && !*v127)
        {
LABEL_110:
          v1 = sub_1AC7A0408();

          MEMORY[0x1B26E8CF0](v128);
          v129 = *((v201 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v201 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v129 >> 1)
          {
            OUTLINED_FUNCTION_9(v129);
            sub_1AC7A0178();
          }

          ++v122;
          v121 = sub_1AC7A0198();
          v191 = v201;
          goto LABEL_91;
        }

LABEL_105:

        v123 += 2;
        ++v122;
      }

      v130 = v190;
      sub_1AC649870(v191, v190, &qword_1EB56AAA0, 0x1E696AD98, &selRef_setWeights_);

      v131 = v130;
      MEMORY[0x1B26E8CF0]();
      OUTLINED_FUNCTION_12_3();
      if (v132)
      {
        OUTLINED_FUNCTION_8_3();
      }

      sub_1AC7A0198();
      v88 = v205;
      v116 = v205;
      v85 = v189;
LABEL_117:
      if (v197)
      {
        sub_1AC5CF764(0, &qword_1EB56AAC8, 0x1E69CE7F8);
        v133 = v192;
        OUTLINED_FUNCTION_36_2();
        v113 = sub_1AC7A0148();
        v134 = OUTLINED_FUNCTION_33_3();
        [v134 v135];

        v191 = v116;
        goto LABEL_119;
      }

      v191 = v116;
LABEL_120:
      ++v85;

      v84 = v193;
      if (v85 == v195)
      {

        v12 = v176;
        v80 = v187;
        v7 = v177;
        break;
      }
    }
  }

LABEL_124:
  v136 = *(v80 + 120);
  v137 = v180;
  v138 = v182;
  if (v136 && v197)
  {
    v139 = *(v136 + 16);
    if (v139)
    {
      v177 = v7;
      v140 = v180;
      v141 = v12;
      v203 = MEMORY[0x1E69E7CC0];
      v142 = v192;

      sub_1AC7A0A88();
      v143 = 32;
      do
      {
        sub_1AC642158(*(v136 + v143));
        sub_1AC7A0EE8();
        sub_1AC7A0A68();
        v1 = v203[2];
        sub_1AC7A0A98();
        sub_1AC7A0AA8();
        sub_1AC7A0A78();
        v143 += 8;
        --v139;
      }

      while (v139);

      v144 = v203;
      v145 = v192;
      v12 = v141;
      v137 = v140;
      v7 = v177;
      v138 = v182;
    }

    else
    {
      v145 = v192;
      v146 = v192;
      v144 = MEMORY[0x1E69E7CC0];
    }

    sub_1AC649870(v144, v145, &qword_1EB56AAA0, 0x1E696AD98, &selRef_setPausedAudioDurationsInNs_);
  }

  v147 = [objc_allocWithZone(MEMORY[0x1E69CE890]) init];
  type metadata accessor for Instrumentation();
  switch(sub_1AC727560(v7, v187))
  {
    case 1u:
      v165 = [objc_allocWithZone(MEMORY[0x1E69CE748]) init];
      v148 = v165;
      if (v165)
      {
        [v165 setReason_];
      }

      OUTLINED_FUNCTION_30_1([v148 setMetrics_], sel_setCancelled_);
      if (off_1ED937D60 != -1)
      {
        OUTLINED_FUNCTION_3_0();
        swift_once();
      }

      v166 = sub_1AC79FDE8();
      OUTLINED_FUNCTION_10_3(v166, qword_1ED9386C8);
      v150 = sub_1AC79FDC8();
      v167 = sub_1AC7A05E8();
      if (OUTLINED_FUNCTION_17_3(v167))
      {
        v168 = OUTLINED_FUNCTION_15_4();
        OUTLINED_FUNCTION_27_3(v168);
        v153 = "SELF: Logging ASRRequestContext->cancelled with reason RECOGNITION_CANCELLED in SELF based on error result from recognizer.";
        goto LABEL_159;
      }

      break;
    case 2u:
      v157 = [objc_allocWithZone(MEMORY[0x1E69CE748]) init];
      v148 = v157;
      if (v157)
      {
        [v157 setReason_];
      }

      OUTLINED_FUNCTION_30_1([v148 setMetrics_], sel_setCancelled_);
      if (off_1ED937D60 != -1)
      {
        OUTLINED_FUNCTION_3_0();
        swift_once();
      }

      v158 = sub_1AC79FDE8();
      OUTLINED_FUNCTION_10_3(v158, qword_1ED9386C8);
      v150 = sub_1AC79FDC8();
      v159 = sub_1AC7A05E8();
      if (OUTLINED_FUNCTION_17_3(v159))
      {
        v160 = OUTLINED_FUNCTION_15_4();
        OUTLINED_FUNCTION_27_3(v160);
        v153 = "SELF: Logging ASRRequestContext->cancelled with reason RECOGNITION_REJECTED in SELF based on error result from recognizer.";
        goto LABEL_159;
      }

      break;
    case 3u:
      v161 = [objc_allocWithZone(MEMORY[0x1E69CE748]) init];
      v148 = v161;
      if (v161)
      {
        [v161 setReason_];
      }

      OUTLINED_FUNCTION_30_1([v148 setMetrics_], sel_setCancelled_);
      if (off_1ED937D60 != -1)
      {
        OUTLINED_FUNCTION_3_0();
        swift_once();
      }

      v162 = sub_1AC79FDE8();
      OUTLINED_FUNCTION_10_3(v162, qword_1ED9386C8);
      v150 = sub_1AC79FDC8();
      v163 = sub_1AC7A05E8();
      if (OUTLINED_FUNCTION_17_3(v163))
      {
        v164 = OUTLINED_FUNCTION_15_4();
        OUTLINED_FUNCTION_27_3(v164);
        v153 = "SELF: Logging ASRRequestContext->cancelled with reason RECOGNITION_REJECTED in SELF because nothing was recognized (SpeechNoMatch).";
        goto LABEL_159;
      }

      break;
    case 4u:
      v148 = [objc_allocWithZone(MEMORY[0x1E69CE790]) init];
      OUTLINED_FUNCTION_30_1([v148 setMetrics_], sel_setFailed_);
      if (off_1ED937D60 != -1)
      {
        OUTLINED_FUNCTION_3_0();
        swift_once();
      }

      v154 = sub_1AC79FDE8();
      OUTLINED_FUNCTION_10_3(v154, qword_1ED9386C8);
      v150 = sub_1AC79FDC8();
      v155 = sub_1AC7A05E8();
      if (OUTLINED_FUNCTION_17_3(v155))
      {
        v156 = OUTLINED_FUNCTION_15_4();
        OUTLINED_FUNCTION_27_3(v156);
        v153 = "SELF: Logging ASRRequestContext->failed in SELF based on error result from recognizer.";
        goto LABEL_159;
      }

      break;
    default:
      v148 = [objc_allocWithZone(MEMORY[0x1E69CE788]) init];
      OUTLINED_FUNCTION_30_1([v148 setMetrics_], sel_setEnded_);
      if (off_1ED937D60 != -1)
      {
        OUTLINED_FUNCTION_3_0();
        swift_once();
      }

      v149 = sub_1AC79FDE8();
      OUTLINED_FUNCTION_10_3(v149, qword_1ED9386C8);
      v150 = sub_1AC79FDC8();
      v151 = sub_1AC7A05E8();
      if (OUTLINED_FUNCTION_17_3(v151))
      {
        v152 = OUTLINED_FUNCTION_15_4();
        OUTLINED_FUNCTION_27_3(v152);
        v153 = "SELF: Logging ASRRequestContext->ended in SELF based on success status from recognizer.";
LABEL_159:
        _os_log_impl(&dword_1AC5BC000, v150, v1, v153, v138, 2u);
        OUTLINED_FUNCTION_70();
        v138 = v7;
      }

      break;
  }

  v87 = v147;
  sub_1AC6482E4(v12, v185, v138, v147, v137);

  if (qword_1EB56AF50 != -1)
  {
LABEL_169:
    OUTLINED_FUNCTION_1_6(&qword_1EB56AF50);
  }

  v169 = [qword_1EB56E6A8 captureSnapshot];
  v170 = v179;
  if (v169)
  {
    v171 = v169;
    v172 = [objc_opt_self() context];
    if (!v172)
    {
      goto LABEL_172;
    }

    v173 = v172;
    v174 = sub_1AC79F918();
    [v171 logWithEventContext:v173 asrIdentifier:v174];
  }

  OUTLINED_FUNCTION_130();
}

id sub_1AC6478D0(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1AC79FF58();

  v4 = [v2 initWithString_];

  return v4;
}

void sub_1AC647944()
{
  OUTLINED_FUNCTION_129_0();
  v1 = v0;
  v3 = v2;
  v37 = 44;
  v38 = 0xE100000000000000;
  v35[2] = &v37;

  v4 = sub_1AC6490B0(0x7FFFFFFFFFFFFFFFLL, 1, sub_1AC637CD4, v35, v3, v1);
  v5 = 0;
  v32 = MEMORY[0x1E69E7CC0];
  v36 = MEMORY[0x1E69E7CC0];
  v6 = v4 + 56;
  v33 = *(v4 + 16);
  v34 = v4;
  v31 = v4 + 56;
LABEL_2:
  for (i = (v6 + 32 * v5); ; i += 4)
  {
    if (v33 == v5)
    {

      OUTLINED_FUNCTION_130();
      return;
    }

    if (v5 >= *(v34 + 16))
    {
      break;
    }

    v9 = *(i - 1);
    v8 = *i;
    v11 = *(i - 3);
    v10 = *(i - 2);
    v37 = 58;
    v38 = 0xE100000000000000;
    MEMORY[0x1EEE9AC00](v4);
    v30[2] = &v37;
    swift_bridgeObjectRetain_n();
    v12 = sub_1AC64944C(0x7FFFFFFFFFFFFFFFLL, 1u, sub_1AC637EC4, v30, v11, v10, v9, v8);
    v13 = v12;
    if (v12[2] != 3 || (v14 = v12[4], v15 = v12[5], v16 = v12[6], v17 = v12[7], , MEMORY[0x1B26E8BE0](v14, v15, v16, v17), , v18 = sub_1AC647C64(), , (v18 & 0x100000000) != 0))
    {
    }

    else
    {
      if (v13[2] < 3uLL)
      {
        goto LABEL_19;
      }

      v19 = v13[12];
      v20 = v13[13];
      v21 = v13[14];
      v22 = v13[15];

      v23 = MEMORY[0x1B26E8BE0](v19, v20, v21, v22);
      v25 = v24;

      LODWORD(v37) = 0;
      LOBYTE(v23) = sub_1AC649ACC(v23, v25, &v37, MEMORY[0x1E69E7CE0], sub_1AC649BC0);

      if (v23)
      {
        v26 = v37;
        v27 = [objc_allocWithZone(MEMORY[0x1E69CE898]) init];
        [v27 setEventType_];
        LODWORD(v28) = v26;
        [v27 setEventDuration_];

        if (v27)
        {
          MEMORY[0x1B26E8CF0]();
          OUTLINED_FUNCTION_12_3();
          if (v29)
          {
            OUTLINED_FUNCTION_8_3();
          }

          ++v5;
          v4 = sub_1AC7A0198();
          v32 = v36;
          v6 = v31;
          goto LABEL_2;
        }
      }

      else
      {
      }
    }

    ++v5;
  }

  __break(1u);
LABEL_19:
  __break(1u);
}

uint64_t sub_1AC647C64()
{
  sub_1AC7A0008();
  v1 = v0;
  OUTLINED_FUNCTION_65();
  v4 = v2 == 0xD000000000000010 && v3 == v1;
  if (v4 || (v5 = v2, (OUTLINED_FUNCTION_5_0(0xD000000000000010, v3) & 1) != 0))
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_65();
    v9 = v5 == 0xD000000000000015 && v8 == v1;
    if (v9 || (OUTLINED_FUNCTION_5_0(0xD000000000000015, v8) & 1) != 0)
    {

      return 2;
    }

    else
    {
      OUTLINED_FUNCTION_65();
      v11 = v5 == 0xD000000000000024 && v10 == v1;
      if (v11 || (OUTLINED_FUNCTION_5_0(0xD000000000000024, v10) & 1) != 0)
      {

        return 3;
      }

      else
      {
        OUTLINED_FUNCTION_65();
        v13 = v5 == 0xD00000000000001FLL && v12 == v1;
        if (v13 || (OUTLINED_FUNCTION_5_0(0xD00000000000001FLL, v12) & 1) != 0)
        {

          return 4;
        }

        else
        {
          OUTLINED_FUNCTION_65();
          v15 = v5 == 0xD000000000000013 && v14 == v1;
          if (v15 || (OUTLINED_FUNCTION_5_0(0xD000000000000013, v14) & 1) != 0)
          {

            return 5;
          }

          else
          {
            OUTLINED_FUNCTION_65();
            v17 = v5 == 0xD000000000000010 && v16 == v1;
            if (v17 || (OUTLINED_FUNCTION_5_0(0xD000000000000010, v16) & 1) != 0)
            {

              return 6;
            }

            else
            {
              OUTLINED_FUNCTION_65();
              v19 = v5 == 0xD000000000000022 && v18 == v1;
              if (v19 || (OUTLINED_FUNCTION_5_0(0xD000000000000022, v18) & 1) != 0)
              {

                return 7;
              }

              else
              {
                OUTLINED_FUNCTION_65();
                if (v5 == 0xD000000000000022 && v20 == v1)
                {

                  return 8;
                }

                else
                {
                  v22 = OUTLINED_FUNCTION_5_0(0xD000000000000022, v20);

                  v6 = 8;
                  if ((v22 & 1) == 0)
                  {
                    return 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v6;
}

void sub_1AC647E74()
{
  OUTLINED_FUNCTION_129_0();
  v46 = v1;
  v3 = v2;
  v5 = v4;
  v48 = v6;
  v49 = v7;
  v44 = v8;
  v50 = v9;
  v10 = sub_1AC79F958();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6();
  v13 = v12 - v11;
  sub_1AC5CF764(0, &qword_1EB56ABA8, 0x1E69CF640);
  v14 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) init];
  sub_1AC79F938();

  v15 = sub_1AC6BB39C(v13);
  v16 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) init];
  sub_1AC79F938();

  v17 = sub_1AC6BB39C(v13);
  v18 = [objc_allocWithZone(MEMORY[0x1E69CE768]) init];
  v19 = v18;
  if (v18)
  {
    [v18 setVoiceCommandId_];
    [v19 setDictationVoiceCommandLinkId_];
  }

  if (v5)
  {
    v20 = v5;
    v21 = [v20 voiceCommandDebugInfo];
    if (v21)
    {
      v22 = v21;
      if (v19)
      {
        v23 = v19;
        [v23 setCommandParserStartTimeInNs_];

        v24 = v23;
        [v24 setCommandParserEndTimeInNs_];
      }

      v25 = [v20 recognition];
      v26 = [v25 oneBest];

      sub_1AC5CF764(0, &qword_1EB56AAF8, off_1E797AC98);
      v27 = sub_1AC7A0158();

      v28 = sub_1AC68D3EC(v27);

      if (v28)
      {
        [v28 silenceStart];
        v30 = v29;

        if (v19)
        {
          type metadata accessor for SelfLoggingHelper();
          [v19 setCommandEndTimeInNs_];
        }
      }

      type metadata accessor for SelfLoggingHelper();
      if (sub_1AC641ED4(v48, v49) & 1) == 0 || (v3)
      {
        goto LABEL_35;
      }

      v31 = [objc_allocWithZone(MEMORY[0x1E69CE760]) init];
      v32 = sub_1AC6499DC(v22, &selRef_precedingUtterance);
      if (v33)
      {
        if (v31)
        {
          sub_1AC649A3C(v32, v33, v31, &selRef_setPreviousUtterance_);
LABEL_18:
          v34 = v31;
          sub_1AC6499DC(v22, &selRef_commandUtterance);
          if (v35)
          {
            v36 = sub_1AC79FF58();
          }

          else
          {
            v36 = 0;
          }

          [v34 setCommandUtterance_];

          goto LABEL_23;
        }
      }

      else if (v31)
      {
        goto LABEL_18;
      }

LABEL_23:
      v37 = sub_1AC6499DC(v22, &selRef_target);
      if (v38)
      {
        if (v31)
        {
          sub_1AC649A3C(v37, v38, v31, &selRef_setTarget_);
        }

        else
        {
        }
      }

      v39 = sub_1AC6499DC(v22, &selRef_payload);
      if (v40)
      {
        if (v31)
        {
          sub_1AC649A3C(v39, v40, v31, &selRef_setPayload_);
LABEL_31:
          [v31 setDictationVoiceCommandLinkId_];
          v41 = v31;
LABEL_34:
          v42 = v31;
          sub_1AC6482E4(v45, v48, v49, v41, v47);

LABEL_35:
          v43 = v19;
          sub_1AC6482E4(v45, v48, v49, v19, v47);

          sub_1AC7A05C8();
          goto LABEL_36;
        }
      }

      else if (v31)
      {
        goto LABEL_31;
      }

      v41 = 0;
      goto LABEL_34;
    }
  }

  __swift_storeEnumTagSinglePayload(v50, 1, 1, v10);
LABEL_36:
  OUTLINED_FUNCTION_130();
}

void sub_1AC6482E4(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, unint64_t a5)
{
  v11 = sub_1AC79F958();
  OUTLINED_FUNCTION_40();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6();
  v17 = v16 - v15;
  if (!a4)
  {
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v26 = sub_1AC79FDE8();
    OUTLINED_FUNCTION_10_3(v26, qword_1ED9386C8);
    v87 = sub_1AC79FDC8();
    sub_1AC7A05F8();
    OUTLINED_FUNCTION_38_2();
    if (os_log_type_enabled(v87, v27))
    {
      v28 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_37_4(v28);
      OUTLINED_FUNCTION_45_4(&dword_1AC5BC000, v29, v30, "topLevelEvent is nil");
      OUTLINED_FUNCTION_16_4();
    }

    goto LABEL_21;
  }

  v86 = v5;
  type metadata accessor for SelfLoggingHelper();
  v18 = a4;
  if (sub_1AC6424A8(v18, a2, a3))
  {
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v19 = sub_1AC79FDE8();
    OUTLINED_FUNCTION_10_3(v19, qword_1ED9386C8);
    v20 = v18;

    v87 = sub_1AC79FDC8();
    v21 = sub_1AC7A05F8();

    if (os_log_type_enabled(v87, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = OUTLINED_FUNCTION_48();
      v88 = v24;
      *v22 = 138412546;
      *(v22 + 4) = v20;
      *v23 = a4;
      *(v22 + 12) = 2080;
      v25 = v20;
      *(v22 + 14) = sub_1AC5CFE74(a2, a3, &v88);
      _os_log_impl(&dword_1AC5BC000, v87, v21, "Logging prohibited for event:%@ task:%s", v22, 0x16u);
      sub_1AC5C7264(v23, &unk_1EB56C630, &qword_1AC7A7E40);
      OUTLINED_FUNCTION_70();
      __swift_destroy_boxed_opaque_existential_0(v24);
      OUTLINED_FUNCTION_70();
      OUTLINED_FUNCTION_16_4();

      return;
    }

    goto LABEL_21;
  }

  v31 = OUTLINED_FUNCTION_49_3(objc_allocWithZone(MEMORY[0x1E69CE758]));
  if (!v31)
  {
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v37 = sub_1AC79FDE8();
    OUTLINED_FUNCTION_10_3(v37, qword_1ED9386C8);
    v87 = sub_1AC79FDC8();
    sub_1AC7A05F8();
    OUTLINED_FUNCTION_38_2();
    if (os_log_type_enabled(v87, v38))
    {
      v39 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_37_4(v39);
      OUTLINED_FUNCTION_45_4(&dword_1AC5BC000, v40, v41, "Failed to create SELF event metadata");
      OUTLINED_FUNCTION_16_4();
    }

LABEL_21:

    return;
  }

  v32 = v31;
  sub_1AC5CF764(0, &qword_1EB56ABA8, 0x1E69CF640);
  (*(v13 + 16))(v17, a1, v11);
  v33 = sub_1AC6BB39C(v17);
  [v32 setAsrId_];

  v34 = [objc_allocWithZone(MEMORY[0x1E69CE750]) (a2 + 2936)];
  if (v34)
  {
    v35 = v34;
    [v34 setEventMetadata_];
    objc_opt_self();
    OUTLINED_FUNCTION_4_4();
    v36 = swift_dynamicCastObjCClass();
    if (v36)
    {
      [v35 setPreheatContext_];
    }

    else
    {
      objc_opt_self();
      OUTLINED_FUNCTION_4_4();
      v46 = swift_dynamicCastObjCClass();
      if (v46)
      {
        [v35 setRequestContext_];
      }

      else
      {
        objc_opt_self();
        OUTLINED_FUNCTION_4_4();
        v47 = swift_dynamicCastObjCClass();
        if (v47)
        {
          [v35 setPartialResultGenerated_];
        }

        else
        {
          objc_opt_self();
          OUTLINED_FUNCTION_4_4();
          v48 = swift_dynamicCastObjCClass();
          if (v48)
          {
            [v35 setPackageGenerated_];
          }

          else
          {
            objc_opt_self();
            OUTLINED_FUNCTION_4_4();
            v49 = swift_dynamicCastObjCClass();
            if (v49)
            {
              [v35 setRecognitionResultTier1_];
            }

            else
            {
              objc_opt_self();
              OUTLINED_FUNCTION_4_4();
              v50 = swift_dynamicCastObjCClass();
              if (v50)
              {
                [v35 setRescoringDeliberationResultTier1_];
              }

              else
              {
                objc_opt_self();
                OUTLINED_FUNCTION_4_4();
                v51 = swift_dynamicCastObjCClass();
                if (v51)
                {
                  [v35 setFinalResultGenerated_];
                }

                else
                {
                  objc_opt_self();
                  OUTLINED_FUNCTION_4_4();
                  v52 = swift_dynamicCastObjCClass();
                  if (v52)
                  {
                    [v35 setIntermediateUtteranceInfoTier1_];
                  }

                  else
                  {
                    objc_opt_self();
                    OUTLINED_FUNCTION_4_4();
                    v53 = swift_dynamicCastObjCClass();
                    if (v53)
                    {
                      [v35 setInitializationContext_];
                    }

                    else
                    {
                      objc_opt_self();
                      OUTLINED_FUNCTION_4_4();
                      v54 = swift_dynamicCastObjCClass();
                      if (v54)
                      {
                        [v35 setActiveConfigUpdateContext_];
                      }

                      else
                      {
                        objc_opt_self();
                        OUTLINED_FUNCTION_4_4();
                        v55 = swift_dynamicCastObjCClass();
                        if (v55)
                        {
                          [v35 setLanguageModelEnrollmentContext_];
                        }

                        else
                        {
                          objc_opt_self();
                          OUTLINED_FUNCTION_4_4();
                          v56 = swift_dynamicCastObjCClass();
                          if (v56)
                          {
                            [v35 setJitLanguageModelEnrollmentEndedTier1_];
                          }

                          else
                          {
                            objc_opt_self();
                            OUTLINED_FUNCTION_4_4();
                            v57 = swift_dynamicCastObjCClass();
                            if (v57)
                            {
                              [v35 setAudioPacketArrivalContext_];
                            }

                            else
                            {
                              objc_opt_self();
                              OUTLINED_FUNCTION_4_4();
                              v58 = swift_dynamicCastObjCClass();
                              if (v58)
                              {
                                [v35 setFirstAudioPacketProcessed_];
                              }

                              else
                              {
                                objc_opt_self();
                                OUTLINED_FUNCTION_4_4();
                                v59 = swift_dynamicCastObjCClass();
                                if (v59)
                                {
                                  [v35 setFinalAudioPacketContainingSpeechReceived_];
                                }

                                else
                                {
                                  objc_opt_self();
                                  OUTLINED_FUNCTION_4_4();
                                  v60 = swift_dynamicCastObjCClass();
                                  if (v60)
                                  {
                                    [v35 setEmbeddedSpeechProcessContext_];
                                  }

                                  else
                                  {
                                    objc_opt_self();
                                    OUTLINED_FUNCTION_4_4();
                                    v61 = swift_dynamicCastObjCClass();
                                    if (v61)
                                    {
                                      [v35 setAppleNeuralEngineModelInitializationContext_];
                                    }

                                    else
                                    {
                                      objc_opt_self();
                                      OUTLINED_FUNCTION_4_4();
                                      v62 = swift_dynamicCastObjCClass();
                                      if (v62)
                                      {
                                        [v35 setFrameProcessingReady_];
                                      }

                                      else
                                      {
                                        objc_opt_self();
                                        OUTLINED_FUNCTION_4_4();
                                        v63 = swift_dynamicCastObjCClass();
                                        if (v63)
                                        {
                                          [v35 setAudioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived_];
                                        }

                                        else
                                        {
                                          objc_opt_self();
                                          OUTLINED_FUNCTION_4_4();
                                          v64 = swift_dynamicCastObjCClass();
                                          if (v64)
                                          {
                                            [v35 setAudioSpeechPacketArrivalContext_];
                                          }

                                          else
                                          {
                                            objc_opt_self();
                                            OUTLINED_FUNCTION_4_4();
                                            v65 = swift_dynamicCastObjCClass();
                                            if (v65)
                                            {
                                              [v35 setLeadingSilenceProcessed_];
                                            }

                                            else
                                            {
                                              objc_opt_self();
                                              OUTLINED_FUNCTION_4_4();
                                              v66 = swift_dynamicCastObjCClass();
                                              if (v66)
                                              {
                                                [v35 setFirstSecondAfterLeadingSilenceProcessed_];
                                              }

                                              else
                                              {
                                                objc_opt_self();
                                                OUTLINED_FUNCTION_4_4();
                                                v67 = swift_dynamicCastObjCClass();
                                                if (v67)
                                                {
                                                  [v35 setFirstAudioPacketRecorded_];
                                                }

                                                else
                                                {
                                                  objc_opt_self();
                                                  OUTLINED_FUNCTION_4_4();
                                                  v68 = swift_dynamicCastObjCClass();
                                                  if (v68)
                                                  {
                                                    [v35 setAudioPacketContainingEndOfFirstWordReadyUpstream_];
                                                  }

                                                  else
                                                  {
                                                    objc_opt_self();
                                                    OUTLINED_FUNCTION_4_4();
                                                    v69 = swift_dynamicCastObjCClass();
                                                    if (v69)
                                                    {
                                                      [v35 setFirstAudioPacketReadyUpstream_];
                                                    }

                                                    else
                                                    {
                                                      objc_opt_self();
                                                      OUTLINED_FUNCTION_4_4();
                                                      v70 = swift_dynamicCastObjCClass();
                                                      if (v70)
                                                      {
                                                        [v35 setFinalAudioPacketContainingSpeechReadyUpstream_];
                                                      }

                                                      else
                                                      {
                                                        objc_opt_self();
                                                        OUTLINED_FUNCTION_4_4();
                                                        v71 = swift_dynamicCastObjCClass();
                                                        if (v71)
                                                        {
                                                          [v35 setDictationVoiceCommandMetricsReported_];
                                                        }

                                                        else
                                                        {
                                                          objc_opt_self();
                                                          OUTLINED_FUNCTION_4_4();
                                                          v72 = swift_dynamicCastObjCClass();
                                                          if (v72)
                                                          {
                                                            [v35 setDictationVoiceCommandInfoTier1_];
                                                          }

                                                          else
                                                          {
                                                            objc_opt_self();
                                                            OUTLINED_FUNCTION_4_4();
                                                            v73 = swift_dynamicCastObjCClass();
                                                            if (v73)
                                                            {
                                                              [v35 setPersonalizationUserEditNamedEntityMetrics_];
                                                            }

                                                            else
                                                            {
                                                              if (off_1ED937D60 != -1)
                                                              {
                                                                OUTLINED_FUNCTION_3_0();
                                                                swift_once();
                                                              }

                                                              v82 = sub_1AC79FDE8();
                                                              OUTLINED_FUNCTION_10_3(v82, qword_1ED9386C8);
                                                              v83 = sub_1AC79FDC8();
                                                              v84 = sub_1AC7A05F8();
                                                              if (os_log_type_enabled(v83, v84))
                                                              {
                                                                v85 = OUTLINED_FUNCTION_20();
                                                                *v85 = 0;
                                                                _os_log_impl(&dword_1AC5BC000, v83, v84, "SELF: Failed trying to wrap and emit top-level ASR event because event type was not mapped to loggable message type in the ASR SELF schema.", v85, 2u);
                                                                OUTLINED_FUNCTION_70();
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

    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v74 = sub_1AC79FDE8();
    OUTLINED_FUNCTION_10_3(v74, qword_1ED9386C8);
    v75 = v18;
    v76 = sub_1AC79FDC8();
    v77 = sub_1AC7A05E8();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *v78 = 138412290;
      *(v78 + 4) = v75;
      *v79 = a4;
      v80 = v75;
      _os_log_impl(&dword_1AC5BC000, v76, v77, "SELF: Wrapping and logging an event of type %@", v78, 0xCu);
      sub_1AC5C7264(v79, &unk_1EB56C630, &qword_1AC7A7E40);
      OUTLINED_FUNCTION_70();
      OUTLINED_FUNCTION_70();
    }

    v81 = *(v86 + 16);
    if (a5)
    {
      [v81 emitMessage:v35 timestamp:sub_1AC648DD8(a5)];
    }

    else
    {
      [v81 emitMessage_];
    }
  }

  else
  {
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v42 = sub_1AC79FDE8();
    OUTLINED_FUNCTION_10_3(v42, qword_1ED9386C8);
    v43 = sub_1AC79FDC8();
    v44 = sub_1AC7A05F8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = OUTLINED_FUNCTION_20();
      *v45 = 0;
      _os_log_impl(&dword_1AC5BC000, v43, v44, "Failed to create SELF event", v45, 2u);
      OUTLINED_FUNCTION_70();
    }
  }
}

uint64_t SelfLoggingHelper.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t SelfLoggingPreheatWithPowerContainer.__deallocating_deinit()
{
  SelfLoggingPreheatWithPowerContainer.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1AC648F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_44_2(a1, a2, a3, a4, a5, a6);
  v6 = OUTLINED_FUNCTION_89();
  v8 = objc_getAssociatedObject(v6, v7);
  v9 = swift_endAccess();
  if (v8)
  {
    sub_1AC7A0828();
    v9 = swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (*(&v13 + 1))
  {
    if (OUTLINED_FUNCTION_41_3(v9))
    {
      return v11;
    }
  }

  else
  {
    sub_1AC5C7264(v14, &unk_1EB56C620, &unk_1AC7A7A00);
  }

  return 0;
}

uint64_t sub_1AC649050(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    a1 = sub_1AC7A07E8();
  }

  OUTLINED_FUNCTION_43_2(a1);
  OUTLINED_FUNCTION_42_3();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_1AC6490B0(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v49 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = a5;
  v13 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v14 = HIBYTE(a6) & 0xF) : (v14 = a5 & 0xFFFFFFFFFFFFLL), !v14))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v13 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v6 = sub_1AC7A00F8();
    v10 = v29;
    v11 = v30;
    v12 = v31;

    sub_1AC60E11C();
    v15 = v32;
    v8 = *(v32 + 16);
    v33 = *(v32 + 24);
LABEL_37:
    v9 = v8 + 1;
    if (v8 < v33 >> 1)
    {
LABEL_38:
      *(v15 + 16) = v9;
      v37 = (v15 + 32 * v8);
      v37[4] = v6;
      v37[5] = v10;
      v37[6] = v11;
      v37[7] = v12;
      return v15;
    }

LABEL_41:
    sub_1AC60E11C();
    v15 = v38;
    goto LABEL_38;
  }

  v6 = a4;
  v15 = 4 * v14;
  v47 = MEMORY[0x1E69E7CC0];
  v16 = 15;
  while (1)
  {
    v45 = v16;
    while (1)
    {
      v12 = v16 >> 14;
      if (v16 >> 14 == v15)
      {
        v16 = v45;
        goto LABEL_30;
      }

      v17 = sub_1AC7A00C8();
      v11 = v18;
      v48[0] = v17;
      v48[1] = v18;
      v19 = v49(v48);
      if (v7)
      {

        return v15;
      }

      v20 = v19;

      if (v20)
      {
        break;
      }

      v16 = sub_1AC7A0068();
    }

    v22 = (v45 >> 14 == v12) & a2;
    if (v22)
    {
      goto LABEL_20;
    }

    if (v12 < v45 >> 14)
    {
      break;
    }

    v46 = sub_1AC7A00F8();
    v41 = v24;
    v42 = v23;
    v40 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1AC60E11C();
      v47 = v27;
    }

    v12 = *(v47 + 16);
    v11 = v12 + 1;
    if (v12 >= *(v47 + 24) >> 1)
    {
      sub_1AC60E11C();
      v47 = v28;
    }

    *(v47 + 16) = v11;
    v26 = (v47 + 32 * v12);
    v26[4] = v46;
    v26[5] = v42;
    v26[6] = v41;
    v26[7] = v40;
LABEL_20:
    v16 = sub_1AC7A0068();
    if ((v22 & 1) == 0 && *(v47 + 16) == a1)
    {
LABEL_30:
      if (v16 >> 14 == v15 && (a2 & 1) != 0)
      {

        return v47;
      }

      if (v15 < v16 >> 14)
      {
        __break(1u);
      }

      else
      {
        v6 = sub_1AC7A00F8();
        v10 = v34;
        v11 = v35;
        v12 = v36;

        v15 = v47;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v8 = *(v15 + 16);
          v33 = *(v15 + 24);
          goto LABEL_37;
        }
      }

      sub_1AC60E11C();
      v15 = v39;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC64944C(uint64_t a1, unsigned __int8 a2, uint64_t (*a3)(void *), uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v52[3] = a7;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  v16 = a5 >> 14;
  v13 = a6 >> 14;
  if (a1 && v16 != v13)
  {
    v8 = a4;
    v50 = MEMORY[0x1E69E7CC0];
    v10 = a5;
    do
    {
      v48 = v10;
      while (1)
      {
        v17 = v10 >> 14;
        if (v10 >> 14 == v13)
        {
          v10 = v48;
          goto LABEL_24;
        }

        v12 = a8;
        v18 = sub_1AC7A07B8();
        v20 = v19;
        v52[0] = v18;
        v52[1] = v19;
        v21 = a3(v52);
        if (v9)
        {

          return v20;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        a8 = v12;
        v10 = sub_1AC7A07A8();
      }

      v24 = (v48 >> 14 == v17) & a2;
      a8 = v12;
      if (!v24)
      {
        if (v17 < v48 >> 14)
        {
          __break(1u);
          return result;
        }

        v49 = sub_1AC7A07C8();
        v44 = v26;
        v45 = v25;
        v43 = v27;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1AC60E11C();
          v50 = v30;
        }

        v28 = *(v50 + 16);
        if (v28 >= *(v50 + 24) >> 1)
        {
          sub_1AC60E11C();
          v50 = v31;
        }

        *(v50 + 16) = v28 + 1;
        v29 = (v50 + 32 * v28);
        v29[4] = v49;
        v29[5] = v45;
        v29[6] = v44;
        v29[7] = v43;
        a8 = v12;
      }

      v10 = sub_1AC7A07A8();
    }

    while (v24 || *(v50 + 16) != a1);
LABEL_24:
    if (v10 >> 14 == v13 && (a2 & 1) != 0)
    {

      return v50;
    }

    v20 = v50;
    if (v13 >= v10 >> 14)
    {
      v8 = sub_1AC7A07C8();
      v10 = v37;
      v12 = v38;
      v13 = v39;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_40;
      }

LABEL_32:
      v14 = *(v20 + 16);
      v36 = *(v20 + 24);
LABEL_33:
      v11 = v14 + 1;
      if (v14 < v36 >> 1)
      {
LABEL_34:
        *(v20 + 16) = v11;
        v40 = (v20 + 32 * v14);
        v40[4] = v8;
        v40[5] = v10;
        v40[6] = v12;
        v40[7] = v13;
        return v20;
      }

LABEL_37:
      sub_1AC60E11C();
      v20 = v41;
      goto LABEL_34;
    }

LABEL_39:
    __break(1u);
LABEL_40:
    sub_1AC60E11C();
    v20 = v42;
    goto LABEL_32;
  }

  if (v16 != v13 || (a2 & 1) == 0)
  {
    if (v13 >= v16)
    {
      v8 = sub_1AC7A07C8();
      v10 = v32;
      v12 = v33;
      v13 = v34;

      sub_1AC60E11C();
      v20 = v35;
      v14 = *(v35 + 16);
      v36 = *(v35 + 24);
      goto LABEL_33;
    }

    __break(1u);
    goto LABEL_39;
  }

  return MEMORY[0x1E69E7CC0];
}

_BYTE *sub_1AC649800@<X0>(_BYTE *result@<X0>, uint64_t (*a2)(void)@<X2>, BOOL *a3@<X8>)
{
  v4 = *result;
  v5 = v4 > 0x20;
  v6 = (1 << v4) & 0x100003E01;
  v7 = v5 || v6 == 0;
  v8 = v7 && (result = a2()) != 0 && *result == 0;
  *a3 = v8;
  return result;
}

void sub_1AC649870(uint64_t a1, void *a2, unint64_t *a3, void *a4, SEL *a5)
{
  sub_1AC5CF764(0, a3, a4);
  OUTLINED_FUNCTION_4_4();
  v7 = sub_1AC7A0148();

  [a2 *a5];
}

uint64_t sub_1AC6498F0(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
  v4 = sub_1AC7A0158();

  return v4;
}

void sub_1AC64995C(uint64_t a1, void *a2, SEL *a3)
{
  sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
  OUTLINED_FUNCTION_4_4();
  v5 = sub_1AC7A0148();
  [a2 *a3];
}

uint64_t sub_1AC6499DC(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1AC79FF68();

  return v4;
}

void sub_1AC649A3C(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_1AC79FF58();

  [a3 *a4];
}

BOOL sub_1AC649ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t), uint64_t a5)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_14;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v7 < 0x21 && ((0x100003E01uLL >> v7) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

LABEL_14:
    sub_1AC7A09A8();
    if (!v5)
    {
      return v12;
    }

    return v9;
  }

  v11[0] = a1;
  v11[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

  v6 = v11;
LABEL_10:
  v8 = a4(v6, a3);
  if (!v8)
  {
    return 0;
  }

  return *v8 == 0;
}

unint64_t sub_1AC649BF0()
{
  result = qword_1EB56ACC0;
  if (!qword_1EB56ACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56ACC0);
  }

  return result;
}

unint64_t sub_1AC649C74()
{
  result = qword_1EB56AC88;
  if (!qword_1EB56AC88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB56C640, &unk_1AC7A9BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56AC88);
  }

  return result;
}

void sub_1AC649CD8(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
  }
}

uint64_t OUTLINED_FUNCTION_8_3()
{

  return sub_1AC7A0178();
}

id OUTLINED_FUNCTION_30_1(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

void OUTLINED_FUNCTION_46_4(void *a1)
{

  sub_1AC5D4180(v2, v1, a1);
}

id OUTLINED_FUNCTION_47_2(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

void sub_1AC649E14(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3(&off_1ED937D60);
  }

  v12 = sub_1AC79FDE8();
  __swift_project_value_buffer(v12, qword_1ED9386C8);
  if (*(a5 + 16))
  {
    v13 = a1[1];
    *a6 = *a1;
    *(a6 + 16) = v13;
    *(a6 + 32) = a1[2];
    *(a6 + 48) = a2;
    *(a6 + 56) = a3;
    *(a6 + 64) = a4;
    *(a6 + 72) = a5;
  }

  else
  {
    v14 = sub_1AC79FDC8();
    v15 = sub_1AC7A05F8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1AC5CFE74(0xD00000000000001BLL, 0x80000001AC7B62B0, &v18);
      _os_log_impl(&dword_1AC5BC000, v14, v15, "Failed precondition: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      OUTLINED_FUNCTION_70();
      OUTLINED_FUNCTION_70();
    }

    __break(1u);
  }
}

void sub_1AC649F78()
{
  OUTLINED_FUNCTION_50_0();
  if (sub_1AC7A0548() & 1) != 0 && (sub_1AC7A06A8())
  {
    v3 = *(v1 + 72);
    v4 = *(v0 + 72);

    sub_1AC6285F8(v3, v4, v2);
  }
}

void sub_1AC64A014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1AC7A0568();
  sub_1AC7A06E8();
  v9 = *(v6 + 72);

  sub_1AC6336F0(a1, v9, v8);
}

uint64_t sub_1AC64A088()
{
  v1 = v0[1];
  v15 = *v0;
  v16 = v1;
  v17 = v0[2];
  v2 = *(v0 + 9);
  OUTLINED_FUNCTION_85_1();
  v3 = sub_1AC7A0568();
  OUTLINED_FUNCTION_38_3(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14[0]);
  sub_1AC7A06E8();
  sub_1AC6336F0(v14, v2, v11);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC64A11C(uint64_t a1)
{
  v2 = v1[1];
  v7 = *v1;
  v8 = v2;
  v9 = v1[2];
  v3 = *(v1 + 9);
  sub_1AC7A0E78();
  sub_1AC7A0568();
  sub_1AC7A06E8();
  sub_1AC6336F0(v6, v3, v4);
  return sub_1AC7A0EC8();
}

void sub_1AC64A1A4()
{
  OUTLINED_FUNCTION_129_0();
  v1 = v0[1];
  v66 = *v0;
  v67 = v1;
  v68 = v0[2];
  v2 = *(v0 + 9);
  v55 = *(v0 + 104);
  v3 = *(v0 + 124);
  v60 = *(v0 + 108);
  v61 = v3;
  v62 = *(v0 + 140);
  v51 = *(v0 + 20);
  v52 = *(v0 + 21);
  v53 = *(v0 + 22);
  v4 = *(v0 + 23);
  v46 = *(v0 + 192);
  v43 = *(v0 + 216);
  v44 = *(v0 + 200);
  v42 = *(v0 + 232);
  v6 = v5[1];
  v69 = *v5;
  v70 = v6;
  v71 = v5[2];
  v7 = *(v5 + 9);
  v54 = *(v5 + 104);
  v8 = *(v5 + 140);
  v9 = *(v5 + 108);
  v64 = *(v5 + 124);
  v65 = v8;
  v63 = v9;
  v48 = *(v5 + 20);
  v49 = *(v5 + 21);
  v50 = *(v5 + 22);
  v10 = *(v5 + 23);
  v45 = *(v5 + 192);
  v47 = *(v5 + 26);
  v38 = *(v5 + 25);
  v39 = *(v5 + 27);
  v40 = *(v5 + 28);
  v41 = *(v5 + 232);
  if ((sub_1AC7A0548() & 1) == 0)
  {
    goto LABEL_21;
  }

  if ((sub_1AC7A06A8() & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_1AC6285F8(v2, v7, v11);
  if ((v12 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_1AC628640();
  if ((v13 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_1AC628938();
  if ((v14 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_1AC628F50();
  OUTLINED_FUNCTION_46_5();
  if ((v15 & 1) == 0 || v55 != v54 || (sub_1AC7A0548() & 1) == 0)
  {
    goto LABEL_21;
  }

  if (v51)
  {
    if (v48)
    {
      v16 = OUTLINED_FUNCTION_15();
      sub_1AC63482C(v16, v17);
      v18 = OUTLINED_FUNCTION_16_2();
      sub_1AC63482C(v18, v19);
      v20 = OUTLINED_FUNCTION_15();
      sub_1AC63482C(v20, v21);
      sub_1AC6305D8();
      if (v22)
      {
        sub_1AC6306C8(v52, v49);
        v24 = v23;
        v25 = OUTLINED_FUNCTION_16_2();
        sub_1AC63486C(v25);

        v26 = OUTLINED_FUNCTION_15();
        sub_1AC63486C(v26);
        if ((v24 & 1) == 0 || v53 != v50)
        {
          goto LABEL_21;
        }

        goto LABEL_23;
      }

      v35 = OUTLINED_FUNCTION_16_2();
      sub_1AC63486C(v35);

      v34 = OUTLINED_FUNCTION_15();
LABEL_20:
      sub_1AC63486C(v34);
      goto LABEL_21;
    }

    v29 = OUTLINED_FUNCTION_15();
    sub_1AC63482C(v29, v30);
    sub_1AC63482C(0, v49);
    v31 = OUTLINED_FUNCTION_15();
    sub_1AC63482C(v31, v32);

LABEL_18:
    v33 = OUTLINED_FUNCTION_15();
    sub_1AC63486C(v33);
    v34 = OUTLINED_FUNCTION_16_2();
    goto LABEL_20;
  }

  sub_1AC63482C(0, v52);
  if (v48)
  {
    v27 = OUTLINED_FUNCTION_16_2();
    sub_1AC63482C(v27, v28);
    goto LABEL_18;
  }

  sub_1AC63482C(0, v49);
  sub_1AC63486C(0);
LABEL_23:
  if (v46)
  {
    v36 = v47;
    if (!v45)
    {
      goto LABEL_21;
    }

LABEL_29:
    if (*(&v44 + 1))
    {
      v58[0] = v44;
      v58[1] = v43;
      v59 = v42;
      if (v36)
      {
        v56[0] = v38;
        v56[1] = v36;
        v56[2] = v39;
        v56[3] = v40;
        v57 = v41 & 1;
        static TranscriptionLatticeMitigatorResult.== infix(_:_:)(v58, v56);

        goto LABEL_21;
      }
    }

    else if (!v36)
    {

      goto LABEL_21;
    }

    goto LABEL_21;
  }

  v37 = v45;
  if (v4 != v10)
  {
    v37 = 1;
  }

  v36 = v47;
  if ((v37 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_21:
  OUTLINED_FUNCTION_130();
}

uint64_t sub_1AC64A5D4(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(v6 + 72);
  v18 = *(v6 + 104);
  v9 = *(v6 + 160);
  v16 = *(v6 + 168);
  v17 = *(v6 + 176);
  v19 = *(v6 + 192);
  v20 = *(v6 + 208);
  v21 = *(v6 + 240);
  v14 = *(v6 + 184);
  v15 = *(v6 + 248);
  v22 = *(v6 + 256);
  sub_1AC7A0568();
  sub_1AC7A06E8();
  sub_1AC6336F0(a1, v8, v10);
  sub_1AC633C28();
  sub_1AC6337D8();
  sub_1AC633790();
  MEMORY[0x1B26E9A40](v18);
  sub_1AC7A0568();
  if (v9)
  {
    OUTLINED_FUNCTION_83();
    sub_1AC63459C(a1, v9);
    sub_1AC634414(a1, v16);
    if ((v17 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = v17;
    }

    else
    {
      v11 = 0;
    }

    MEMORY[0x1B26E9A70](v11);
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
  }

  if (v19)
  {
    OUTLINED_FUNCTION_80_1();
    if (v20)
    {
LABEL_9:
      OUTLINED_FUNCTION_83();

      TranscriptionLatticeMitigatorResult.hash(into:)(a1);

      goto LABEL_15;
    }
  }

  else
  {
    OUTLINED_FUNCTION_83();
    if ((v14 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v12 = v14;
    }

    else
    {
      v12 = 0;
    }

    MEMORY[0x1B26E9A70](v12);
    if (v20)
    {
      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_80_1();
LABEL_15:
  MEMORY[0x1B26E9A40](v21);
  if (v22)
  {
    return OUTLINED_FUNCTION_80_1();
  }

  OUTLINED_FUNCTION_83();
  return MEMORY[0x1B26E9A40](v15);
}

uint64_t sub_1AC64A7DC()
{
  OUTLINED_FUNCTION_85_1();
  sub_1AC64A5D4(v6, v0, v1, v2, v3, v4);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC64A820(uint64_t a1)
{
  sub_1AC7A0E78();
  sub_1AC64A5D4(v7, v1, v2, v3, v4, v5);
  return sub_1AC7A0EC8();
}

int *TranscriptionSegment.init(with:alternatives:tokens:alternativeTokens:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1AC79F5C8();
  OUTLINED_FUNCTION_80();
  (*(v10 + 32))(a5, a1);
  result = type metadata accessor for TranscriptionSegment(0);
  *(a5 + result[5]) = a2;
  *(a5 + result[6]) = a3;
  *(a5 + result[7]) = a4;
  return result;
}

uint64_t type metadata accessor for TranscriptionSegment(uint64_t a1)
{
  result = qword_1EB56AE48;
  if (!qword_1EB56AE48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void static TranscriptionToken.allTokensString(from:ipa:attributes:)()
{
  OUTLINED_FUNCTION_129_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1AC79F618();
  v9 = OUTLINED_FUNCTION_167(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6();
  v69 = v11 - v10;
  v12 = sub_1AC79F5C8();
  OUTLINED_FUNCTION_40();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_4();
  v80 = v16;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_26_0();
  v68 = v18;
  OUTLINED_FUNCTION_34();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v58 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v58 - v23;
  v25 = *(v5 + 16);
  if (v25)
  {
    v26 = v5;
    v27 = v1;
    v79 = v26;
    v28 = (v26 + 32);
    memcpy(v85, (v26 + 32), sizeof(v85));
    v67 = v28;
    memcpy(v84, v28, 0xA0uLL);
    sub_1AC64F5EC(v86);
    memcpy(v81, v86, 0xA0uLL);
    sub_1AC637BCC(v85, v87);
    v29 = 168;
    if (v3)
    {
      v29 = 288;
    }

    v60 = v29;
    static TranscriptionToken.tokenString(from:ipa:after:attributes:)();
    memcpy(v87, v84, 0xA0uLL);
    sub_1AC637C28(v87);
    v31 = *(v14 + 16);
    v30 = v14 + 16;
    v59 = v24;
    v31(v22, v24, v12);
    v32 = v25 - 1;
    v33 = v25 == 1;
    v74 = *(MEMORY[0x1E6960C70] + 16);
    v70 = (v30 - 8);
    v71 = (v30 + 16);
    v34 = *MEMORY[0x1E6960C70];
    v72 = *(MEMORY[0x1E6960C70] + 8);
    v73 = v34;
    v35 = (v79 + 192);
    v36 = 1;
    v65 = v27;
    v66 = v7;
    v62 = v22;
    v63 = v12;
    v61 = v25;
    v64 = v3;
    while (1)
    {
      if (v33 == v25)
      {
        (*v70)(v59, v12);
        v55 = OUTLINED_FUNCTION_25_5();
        v56(v55);
        OUTLINED_FUNCTION_130();
        return;
      }

      if (v33 >= v25)
      {
        break;
      }

      v37 = &v67[160 * v33];
      memcpy(v82, v37, sizeof(v82));
      if (!v32)
      {
        goto LABEL_33;
      }

      memcpy(v83, v35, sizeof(v83));
      memcpy(v81, v37, 0xA0uLL);
      memcpy(&v81[20], v35, 0xA0uLL);
      memcpy(v84, v81, sizeof(v84));
      v76 = v36 + 1;
      if (v36 + 1 == v25)
      {
        v38 = v25;
      }

      else
      {
        v38 = v36;
      }

      v77 = v38;
      sub_1AC637BCC(v82, v81);
      sub_1AC637BCC(v83, v81);
      sub_1AC5C6E6C();
      sub_1AC637C28(&v84[20]);
      v39 = 35;
      if ((v3 & 1) == 0)
      {
        v39 = 20;
      }

      v40 = *&v84[v39];
      v41 = *(v84 + v60);

      if (BYTE1(v84[32]) == 1 && LOBYTE(v84[12]) != 1)
      {
        *&v81[0] = 32;
        v81[1] = -1.7573882e159;
        MEMORY[0x1B26E8C40](*&v40, *&v41);

        v40 = v81[0];
        v41 = v81[1];
      }

      v78 = v35;
      v79 = v32;
      if (LOBYTE(v84[32]) == 1)
      {
        v81[0] = v40;
        v81[1] = v41;

        OUTLINED_FUNCTION_49_4();
      }

      v42 = *&v84[24];
      v75 = v84[25];
      v43 = *&v84[22];
      v44 = *&v84[23];
      sub_1AC79F608();
      sub_1AC79F5D8();
      if ((sub_1AC7A06A8() & 1) == 0 || (sub_1AC7A06A8() & 1) == 0) && (sub_1AC637EF8())
      {
        v45 = sub_1AC7A0698();
        v47 = v46;
        v49 = v48;
        v81[0] = v43;
        v81[1] = v44;
        v81[2] = v42;
        *&v81[3] = v45;
        v81[4] = v46;
        v81[5] = v48;
        LOBYTE(v81[6]) = 0;
        sub_1AC64F69C();
        OUTLINED_FUNCTION_39_4();
        sub_1AC79F5E8();
        v81[0] = v43;
        v81[1] = v44;
        v81[2] = v42;
        *&v81[3] = v45;
        v81[4] = v47;
        v81[5] = v49;
        LOBYTE(v81[6]) = 0;
        sub_1AC64F6F0();
        OUTLINED_FUNCTION_39_4();
        sub_1AC79F5E8();
      }

      if (sub_1AC637EF8())
      {
        LOBYTE(v3) = v64;
        v12 = v63;
        v25 = v61;
        v51 = v78;
        v50 = v79;
        if (*&v84[31] != 0.0)
        {
          v52 = *&v84[31] / 1000.0;
          v81[0] = *&v84[31] / 1000.0;
          LOBYTE(v81[1]) = 0;
          sub_1AC64F5F4();
          OUTLINED_FUNCTION_39_4();
          sub_1AC79F5E8();
          v81[0] = v52;
          LOBYTE(v81[1]) = 0;
          sub_1AC64F648();
          OUTLINED_FUNCTION_39_4();
          sub_1AC79F5E8();
        }

        sub_1AC637C28(v84);
      }

      else
      {
        sub_1AC637C28(v84);
        LOBYTE(v3) = v64;
        v12 = v63;
        v25 = v61;
        v51 = v78;
        v50 = v79;
      }

      v53 = v68;
      (*v71)(v68, v80, v12);
      OUTLINED_FUNCTION_0_5();
      sub_1AC65106C(&qword_1EB56B478, v54, MEMORY[0x1E6968820]);
      sub_1AC79F5A8();
      sub_1AC5C720C(v84, &qword_1EB56C658, &qword_1AC7A9BF0);
      (*v70)(v53, v12);
      v32 = v50 - 1;
      v35 = v51 + 160;
      v36 = v76;
      v33 = v77;
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_130();

    sub_1AC79F508();
  }
}

void *sub_1AC64AFA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a2;
  v5 = sub_1AC79F5C8();
  OUTLINED_FUNCTION_40();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_4();
  v58 = v9;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v49 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C750, &qword_1AC7AA668);
  OUTLINED_FUNCTION_167(v13);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v49 - v15;
  v51 = a3;
  sub_1AC79F5B8();
  v17 = sub_1AC79FBC8();
  OUTLINED_FUNCTION_80();
  (*(v18 + 16))(v16, a1, v17);
  v19 = sub_1AC65106C(&qword_1EB56C4F8, MEMORY[0x1E6969C28], MEMORY[0x1E6969C68]);
  v20 = sub_1AC7A04C8();
  if (v20)
  {
    v21 = v20;
    v63 = MEMORY[0x1E69E7CC0];
    sub_1AC631324(0, v20 & ~(v20 >> 63), 0);
    v60 = v63;
    OUTLINED_FUNCTION_10_4();
    result = sub_1AC7A0498();
    if ((v21 & 0x8000000000000000) == 0)
    {
      v59 = v21;
      v50 = v12;
      v23 = v61[0];
      v24 = v53 + 32;
      v25 = *(v53 + 16);
      v52 = (v7 + 32);
      v53 = v7 + 16;
      v56 = v16;
      v57 = v7;
      v54 = v19;
      v55 = v17;
      while (1)
      {
        v62 = v23;
        OUTLINED_FUNCTION_10_4();
        result = sub_1AC7A0498();
        if (v23 < v61[0])
        {
          break;
        }

        OUTLINED_FUNCTION_10_4();
        result = sub_1AC7A04E8();
        if (v23 >= v61[0])
        {
          goto LABEL_19;
        }

        v26 = sub_1AC7A0518();
        v28 = *v27;
        result = v26(v61, 0);
        if (!v25)
        {
          goto LABEL_20;
        }

        if ((v28 & 0x8000000000000000) != 0)
        {
          goto LABEL_21;
        }

        if (v28 >= *(*v24 + 16))
        {
          goto LABEL_22;
        }

        v29 = v5;
        v30 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v31 = *(v7 + 72);
        v32 = *v24 + v30 + v31 * v28;
        v33 = v58;
        (*(v7 + 16))(v58, v32, v29);
        v34 = v60;
        v63 = v60;
        v36 = *(v60 + 16);
        v35 = *(v60 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_1AC631324(v35 > 1, v36 + 1, 1);
          v33 = v58;
          v34 = v63;
        }

        *(v34 + 16) = v36 + 1;
        v60 = v34;
        (*v52)(v34 + v30 + v36 * v31, v33, v29);
        v62 = v23;
        v37 = v56;
        sub_1AC7A04D8();
        v23 = v61[0];
        --v25;
        v24 += 8;
        --v59;
        v5 = v29;
        v7 = v57;
        if (!v59)
        {
          sub_1AC5C720C(v37, &qword_1EB56C750, &qword_1AC7AA668);
          v12 = v50;
          v38 = v60;
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    sub_1AC5C720C(v16, &qword_1EB56C750, &qword_1AC7AA668);
    v38 = MEMORY[0x1E69E7CC0];
LABEL_14:
    v39 = *(v38 + 16);
    if (v39)
    {
      v42 = *(v7 + 16);
      v40 = v7 + 16;
      v41 = v42;
      v43 = (*(v40 + 64) + 32) & ~*(v40 + 64);
      v60 = v38;
      v44 = v38 + v43;
      v45 = *(v40 + 56);
      do
      {
        v41(v12, v44, v5);
        OUTLINED_FUNCTION_0_5();
        sub_1AC65106C(&qword_1EB56B478, v46, MEMORY[0x1E6968820]);
        OUTLINED_FUNCTION_41_4();
        sub_1AC79F5A8();
        v47 = OUTLINED_FUNCTION_41_4();
        v48(v47);
        v44 += v45;
        --v39;
      }

      while (v39);
    }
  }

  return result;
}

uint64_t TranscriptionSegment.text.getter()
{
  sub_1AC79F5C8();
  OUTLINED_FUNCTION_80();
  v0 = OUTLINED_FUNCTION_39();

  return v1(v0);
}

uint64_t TranscriptionSegment.alternatives.getter()
{
  type metadata accessor for TranscriptionSegment(0);
}

uint64_t TranscriptionSegment.tokens.getter()
{
  type metadata accessor for TranscriptionSegment(0);
}

uint64_t TranscriptionSegment.alternativeTokens.getter()
{
  type metadata accessor for TranscriptionSegment(0);
}

void sub_1AC64B514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unsigned __int8 a24, uint64_t *a25, char *a26, unsigned __int8 a27)
{
  OUTLINED_FUNCTION_129_0();
  v192 = v27;
  v193 = v28;
  v206 = v29;
  v199 = v30;
  v200 = v31;
  v198 = v32;
  LODWORD(v34) = v33;
  v36 = v35;
  v179 = v37;
  v38 = sub_1AC79F618();
  v39 = OUTLINED_FUNCTION_167(v38);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_6();
  v42 = v41 - v40;
  v43 = sub_1AC79F5C8();
  OUTLINED_FUNCTION_40();
  v187 = v44;
  v46 = MEMORY[0x1EEE9AC00](v45);
  v48 = &v177 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_26_0();
  v207 = v49;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_26_0();
  v212 = v51;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_26_0();
  v190 = v53;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v177 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C740, &qword_1AC7AA660);
  OUTLINED_FUNCTION_167(v57);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v58);
  v178 = &v177 - v59;
  if (off_1ED937D60 != -1)
  {
    goto LABEL_144;
  }

LABEL_2:
  v60 = sub_1AC79FDE8();
  __swift_project_value_buffer(v60, qword_1ED9386C8);
  v61 = *(v36 + 16);
  if (!v61)
  {
    v173 = sub_1AC79FDC8();
    v174 = sub_1AC7A05F8();
    if (os_log_type_enabled(v173, v174))
    {
      v175 = swift_slowAlloc();
      v176 = swift_slowAlloc();
      *v220 = v176;
      *v175 = 136315138;
      *(v175 + 4) = sub_1AC5CFE74(0xD000000000000015, 0x80000001AC7B6290, v220);
      _os_log_impl(&dword_1AC5BC000, v173, v174, "Failed precondition: %s", v175, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v176);
      OUTLINED_FUNCTION_70();
      OUTLINED_FUNCTION_70();
    }

    __break(1u);
    goto LABEL_154;
  }

  v216 = a26;
  v180 = a25;
  v191 = a23;
  v183 = a27;
  v197 = a24;
  v221 = MEMORY[0x1E69E7CC0];
  v186 = v61;
  sub_1AC631324(0, v61, 0);
  v62 = 0;
  v185 = (v36 + 32);
  v189 = v221;
  v182 = (v187 + 16);
  v213 = (v187 + 32);
  v209 = (v187 + 8);
  v184 = v36;
  v196 = v34;
  v201 = v42;
  v202 = v43;
  v203 = v48;
  v181 = v56;
  do
  {
    if (v62 >= *(v36 + 16))
    {
      goto LABEL_139;
    }

    v63 = v185[v62];
    v64 = v63 >> 62;
    v188 = v62;
    if (v63 >> 62)
    {
      if (sub_1AC7A08E8())
      {
LABEL_7:
        sub_1AC61C25C();
        v205 = v63;
        v208 = v63 & 0xC000000000000001;
        if ((v63 & 0xC000000000000001) != 0)
        {

          v66 = MEMORY[0x1B26E95B0](0, v63);
        }

        else
        {
          v65 = *(v63 + 32);

          v66 = v65;
        }

        v67 = v66;
        v68 = &selRef_ipaPhoneSequence;
        if ((v34 & 1) == 0)
        {
          v68 = &selRef_tokenName;
        }

        v69 = [v66 *v68];
        v70 = sub_1AC79FF68();
        v48 = v71;

        if ((v183 & 1) != 0 || [v67 hasSpaceBefore])
        {
          OUTLINED_FUNCTION_28_3();
          MEMORY[0x1B26E8C40](v70, v48);

          v70 = *v220;
          v48 = *&v220[8];
        }

        if ([v67 hasSpaceAfter])
        {
          *v220 = v70;
          *&v220[8] = v48;

          OUTLINED_FUNCTION_49_4();

          v48 = *&v220[8];
        }

        v72 = v205;
        sub_1AC79F608();
        sub_1AC79F5D8();
        [v67 start];
        v210 = v64;
        if (v73 != 0.0 || ([v67 end], v74 != 0.0))
        {
          if (sub_1AC637EF8())
          {
            [v67 start];
            v75 = v206;
            CMTimeMakeWithSeconds(v220, v76, v206);
            OUTLINED_FUNCTION_37_5();
            sub_1AC7A0688();
            v78 = v77;
            [v67 silenceStart];
            CMTimeMakeWithSeconds(v220, v79, v75);
            OUTLINED_FUNCTION_37_5();
            sub_1AC7A0688();
            if ((v197 & 1) == 0)
            {
              v218 = v78;
              sub_1AC7A0678();
              LODWORD(v34) = v196;
            }

            sub_1AC7A0578();
            v48 = v222;
            OUTLINED_FUNCTION_11_6();
            sub_1AC64F69C();
            OUTLINED_FUNCTION_12_4();
            sub_1AC79F5E8();
            OUTLINED_FUNCTION_11_6();
            sub_1AC64F6F0();
            OUTLINED_FUNCTION_12_4();
            sub_1AC79F5E8();
            v42 = v201;
            v43 = v202;
            v72 = v205;
            v64 = v210;
          }
        }

        if (sub_1AC637EF8())
        {
          [v67 confidence];
          v56 = v203;
          if (v80 != 0.0)
          {
            [v67 confidence];
            OUTLINED_FUNCTION_33_4();
            sub_1AC64F5F4();
            OUTLINED_FUNCTION_12_4();
            sub_1AC79F5E8();
            OUTLINED_FUNCTION_33_4();
            sub_1AC64F648();
            OUTLINED_FUNCTION_12_4();
            sub_1AC79F5E8();
          }

          v72 = v205;
        }

        else
        {

          v56 = v203;
        }

        (*v182)(v212, v190, v43);
        v81 = sub_1AC753228(v72, 1);
        v36 = v72;
        v83 = v82;
        v211 = sub_1AC61C24C();
        sub_1AC61C24C();
        v84 = v36 & 0xFFFFFFFFFFFFFF8;
        v204 = v36 + 32;
        v215 = v36 & 0xFFFFFFFFFFFFFF8;
        if (v36 < 0)
        {
          v84 = v36;
        }

        v214 = v84;

        while (1)
        {
          if (v81 == v211)
          {

            v117 = v190;
            (*v209)(v190, v43);
            v118 = *v213;
            (*v213)(v117, v212, v43);
            if (v180[6])
            {
            }

            else
            {
              v119 = v180[1];
              v120 = v180[2];
              v121 = v180[3];
              v122 = v180[4];
              v123 = v180[5];
              v229 = *v180;
              v230 = v119;
              v231 = v120;
              v232 = v121;
              v233 = v122;
              v234 = v123;
              if (sub_1AC637EF8())
              {
                if (sub_1AC7A05A8())
                {
                  OUTLINED_FUNCTION_11_6();
                }

                else
                {
                  memset(v220, 0, 48);
                  v220[48] = 1;
                }

                sub_1AC64F69C();
                OUTLINED_FUNCTION_12_4();
                sub_1AC79F5E8();
              }

              v42 = v201;
              v43 = v202;
            }

            v56 = v181;
            v118(v181, v190, v43);
            goto LABEL_76;
          }

          if (v208)
          {
            v85 = v205;
            v218 = MEMORY[0x1B26E95B0](v81, v205);
            v86 = MEMORY[0x1B26E95B0](v83, v85);
          }

          else
          {
            if ((v81 & 0x8000000000000000) != 0)
            {
              goto LABEL_136;
            }

            v87 = *(v215 + 16);
            if (v81 >= v87)
            {
              goto LABEL_137;
            }

            if (v83 >= v87)
            {
              goto LABEL_138;
            }

            v88 = *(v204 + 8 * v83);
            v218 = *(v204 + 8 * v81);
            v86 = v88;
          }

          v48 = v86;
          if (v64)
          {
            v217 = v86;
            v36 = sub_1AC7A08E8();
            v48 = v217;
            sub_1AC7A08E8();
          }

          else
          {
            v36 = *(v215 + 16);
          }

          if (v81 == v36)
          {
            break;
          }

          v36 = v83 + 1;
          if (__OFADD__(v83, 1))
          {
            goto LABEL_135;
          }

          if (v64)
          {
            v89 = v83;
            if (v36 == sub_1AC7A08E8())
            {
              v89 = sub_1AC7A08E8();
              v36 = sub_1AC7A08E8();
            }
          }

          else if (v36 == *(v215 + 16))
          {
            v89 = v83 + 1;
          }

          else
          {
            v89 = v83;
          }

          v217 = v89;
          v90 = &selRef_ipaPhoneSequence;
          if ((v34 & 1) == 0)
          {
            v90 = &selRef_tokenName;
          }

          v91 = [v48 *v90];
          v92 = sub_1AC79FF68();
          v94 = v93;

          v95 = [v218 hasSpaceAfter];
          if ([v48 hasSpaceBefore] && !v95)
          {
            OUTLINED_FUNCTION_28_3();
            v96 = OUTLINED_FUNCTION_23_3();
            MEMORY[0x1B26E8C40](v96);

            v92 = *v220;
            v94 = *&v220[8];
          }

          if ([v48 hasSpaceAfter])
          {
            *v220 = v92;
            *&v220[8] = v94;

            OUTLINED_FUNCTION_49_4();
          }

          sub_1AC79F608();
          OUTLINED_FUNCTION_23_3();
          sub_1AC79F5D8();
          [v48 start];
          if (v97 != 0.0 || ([v48 end], v98 != 0.0))
          {
            if (sub_1AC637EF8())
            {
              [v48 start];
              v99 = v206;
              CMTimeMakeWithSeconds(v220, v100, v206);
              OUTLINED_FUNCTION_37_5();
              sub_1AC7A0688();
              v102 = v101;
              v104 = v103;
              [v48 silenceStart];
              CMTimeMakeWithSeconds(v220, v105, v99);
              OUTLINED_FUNCTION_37_5();
              sub_1AC7A0688();
              if ((v197 & 1) == 0)
              {
                v194 = v104;
                v195 = v102;
                sub_1AC7A0678();
              }

              sub_1AC7A0578();
              v106 = v223;
              v107 = v224;
              v108 = v225;
              v109 = v226;
              v110 = v227;
              v34 = v228;
              *v220 = v223;
              *&v220[8] = v224;
              *&v220[16] = v225;
              *&v220[24] = v226;
              *&v220[32] = v227;
              *&v220[40] = v228;
              v220[48] = 0;
              sub_1AC64F69C();
              OUTLINED_FUNCTION_12_4();
              v111 = v203;
              sub_1AC79F5E8();
              *v220 = v106;
              *&v220[8] = v107;
              v56 = v111;
              *&v220[16] = v108;
              *&v220[24] = v109;
              *&v220[32] = v110;
              *&v220[40] = v34;
              v220[48] = 0;
              sub_1AC64F6F0();
              OUTLINED_FUNCTION_12_4();
              sub_1AC79F5E8();
              LODWORD(v34) = v196;
              v42 = v201;
              v43 = v202;
            }
          }

          if (sub_1AC637EF8())
          {
            [v48 confidence];
            if (v112 != 0.0)
            {
              [v48 confidence];
              OUTLINED_FUNCTION_33_4();
              sub_1AC64F5F4();
              OUTLINED_FUNCTION_12_4();
              sub_1AC79F5E8();
              OUTLINED_FUNCTION_33_4();
              sub_1AC64F648();
              OUTLINED_FUNCTION_12_4();
              sub_1AC79F5E8();
            }
          }

          v113 = v207;
          v114 = OUTLINED_FUNCTION_16_2();
          v115(v114);
          OUTLINED_FUNCTION_0_5();
          sub_1AC65106C(&qword_1EB56B478, v116, MEMORY[0x1E6968820]);
          sub_1AC79F5A8();

          (*v209)(v113, v43);
          v83 = v36;
          v64 = v210;
          v81 = v217;
        }

        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        OUTLINED_FUNCTION_3(&off_1ED937D60);
        goto LABEL_2;
      }
    }

    else if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

    sub_1AC79F508();
LABEL_76:
    v124 = v189;
    v221 = v189;
    v48 = *(v189 + 16);
    v125 = *(v189 + 24);
    if (v48 >= v125 >> 1)
    {
      v130 = OUTLINED_FUNCTION_24_5(v125);
      sub_1AC631324(v130, v48 + 1, 1);
      v124 = v221;
    }

    v126 = v187;
    v127 = v188 + 1;
    *(v124 + 16) = v48 + 1;
    v128 = (*(v126 + 80) + 32) & ~*(v126 + 80);
    v189 = v124;
    v129 = *(v126 + 32);
    v129(v124 + v128 + *(v126 + 72) * v48, v56, v43);
    v62 = v127;
    v36 = v184;
  }

  while (v127 != v186);
  v131 = v178;
  v132 = v189;
  sub_1AC625BA4(v189, v178);
  if (__swift_getEnumTagSinglePayload(v131, 1, v43) == 1)
  {
LABEL_154:
    __break(1u);
    return;
  }

  v129(v179, v131, v43);
  sub_1AC5C9010(1, v132, sub_1AC5C9008, sub_1AC747F44);
  OUTLINED_FUNCTION_43_3();
  if (v43)
  {
    sub_1AC7A0D68();
    swift_unknownObjectRetain_n();
    v139 = swift_dynamicCastClass();
    if (!v139)
    {
      swift_unknownObjectRelease();
      v139 = MEMORY[0x1E69E7CC0];
    }

    v140 = *(v139 + 16);

    if (__OFSUB__(v43 >> 1, v132))
    {
      goto LABEL_149;
    }

    if (v140 != (v43 >> 1) - v132)
    {
      goto LABEL_150;
    }

    v138 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v36 = v184;
    if (v138)
    {
      goto LABEL_91;
    }

    v138 = MEMORY[0x1E69E7CC0];
    goto LABEL_90;
  }

  while (2)
  {
    v133 = OUTLINED_FUNCTION_34_5();
    sub_1AC751BB8(v133, v134, v135, v136);
    v138 = v137;
    v36 = v184;
LABEL_90:
    swift_unknownObjectRelease();
LABEL_91:
    v141 = type metadata accessor for TranscriptionSegment(0);
    *(v179 + *(v141 + 20)) = v138;
    if (!*(v36 + 16))
    {
      __break(1u);
      goto LABEL_146;
    }

    v142 = v141;
    v48 = *v185;
    v143 = sub_1AC61C24C();
    v144 = MEMORY[0x1E69E7CC0];
    if (!v143)
    {
      v149 = MEMORY[0x1E69E7CC0];
      goto LABEL_104;
    }

    v145 = v143;
    v146 = v142;
    v221 = MEMORY[0x1E69E7CC0];
    v147 = v143 & ~(v143 >> 63);

    sub_1AC6313DC(0, v147, 0);
    if (v145 < 0)
    {
      goto LABEL_147;
    }

    v148 = 0;
    v149 = v221;
    if ((v48 & 0xC000000000000001) != 0)
    {
LABEL_95:
      v150 = MEMORY[0x1B26E95B0](v148, v48);
      goto LABEL_97;
    }

    while (1)
    {
      v150 = *(v48 + 8 * v148 + 32);
LABEL_97:
      sub_1AC64C7A0(v150, v206, v220);
      v221 = v149;
      v42 = *(v149 + 16);
      v151 = *(v149 + 24);
      if (v42 >= v151 >> 1)
      {
        v152 = OUTLINED_FUNCTION_24_5(v151);
        sub_1AC6313DC(v152, v42 + 1, 1);
        v149 = v221;
      }

      *(v149 + 16) = v42 + 1;
      memcpy((v149 + 160 * v42 + 32), v220, 0xA0uLL);
      if (v145 - 1 == v148)
      {
        break;
      }

      ++v148;
      if ((v48 & 0xC000000000000001) != 0)
      {
        goto LABEL_95;
      }
    }

    v36 = v184;
    v142 = v146;
    v144 = MEMORY[0x1E69E7CC0];
LABEL_104:
    *(v179 + *(v142 + 24)) = v149;
    v153 = sub_1AC5C9010(1, v36, sub_1AC5C9008, sub_1AC5C90A0);
    v214 = v155;
    v215 = v156 >> 1;
    v34 = (v156 >> 1) - v154;
    if (__OFSUB__(v156 >> 1, v154))
    {
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
      goto LABEL_148;
    }

    if (v34)
    {
      v56 = v154;
      v212 = v153;
      v221 = v144;
      sub_1AC6313BC(0, v34 & ~(v34 >> 63), 0);
      if ((v34 & 0x8000000000000000) == 0)
      {
        v211 = v142;
        v157 = 0;
        v158 = v221;
        v43 = 160;
        v213 = v34;
        while (1)
        {
          v159 = v157 + 1;
          if (__OFADD__(v157, 1))
          {
            goto LABEL_140;
          }

          if (v56 >= v215 || v157 >= v34)
          {
            goto LABEL_141;
          }

          v161 = *(v214 + 8 * v56);
          if (v161 >> 62)
          {
            v36 = v157 + 1;
            v168 = sub_1AC7A08E8();
            v159 = v36;
            v42 = v168;
            if (v168)
            {
LABEL_115:
              v217 = v159;
              v218 = v158;
              v219 = v144;

              sub_1AC6313DC(0, v42 & ~(v42 >> 63), 0);
              if (v42 < 0)
              {
                goto LABEL_143;
              }

              v216 = v56;
              v162 = 0;
              v158 = v218;
              v36 = v219;
              v163 = v42 - 1;
              if ((v161 & 0xC000000000000001) != 0)
              {
LABEL_117:
                v164 = OUTLINED_FUNCTION_23_3();
                v165 = MEMORY[0x1B26E95B0](v164);
                goto LABEL_119;
              }

              while (1)
              {
                v165 = *(v161 + 8 * v162 + 32);
LABEL_119:
                sub_1AC64C7A0(v165, v206, v220);
                v219 = v36;
                v167 = *(v36 + 16);
                v166 = *(v36 + 24);
                v42 = v167 + 1;
                if (v167 >= v166 >> 1)
                {
                  sub_1AC6313DC((v166 > 1), v167 + 1, 1);
                  v158 = v218;
                  v36 = v219;
                }

                *(v36 + 16) = v42;
                memcpy((v36 + 160 * v167 + 32), v220, 0xA0uLL);
                if (v163 == v162)
                {
                  break;
                }

                ++v162;
                if ((v161 & 0xC000000000000001) != 0)
                {
                  goto LABEL_117;
                }
              }

              v144 = MEMORY[0x1E69E7CC0];
              v56 = v216;
              v159 = v217;
              v34 = v213;
              goto LABEL_127;
            }
          }

          else
          {
            v42 = *((v161 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v42)
            {
              goto LABEL_115;
            }
          }

          v36 = v144;
LABEL_127:
          v221 = v158;
          v48 = v158[2];
          v169 = v158[3];
          if (v48 >= v169 >> 1)
          {
            v171 = OUTLINED_FUNCTION_24_5(v169);
            v42 = v172;
            sub_1AC6313BC(v171, v48 + 1, 1);
            v159 = v42;
            v158 = v221;
          }

          v158[2] = v48 + 1;
          v158[v48 + 4] = v36;
          if (__OFADD__(v56++, 1))
          {
            goto LABEL_142;
          }

          v157 = v159;
          if (v159 == v34)
          {
            swift_unknownObjectRelease();
            v142 = v211;
            goto LABEL_133;
          }
        }
      }

LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      swift_unknownObjectRelease();
      continue;
    }

    break;
  }

  swift_unknownObjectRelease();
  v158 = MEMORY[0x1E69E7CC0];
LABEL_133:
  *(v179 + *(v142 + 28)) = v158;
  OUTLINED_FUNCTION_130();
}

uint64_t sub_1AC64C73C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v2 = *(a2 + 16);
  result = sub_1AC64FC18(0, result, v2);
  if (v3)
  {
    result = v2;
  }

  if (v2 < result)
  {
    goto LABEL_8;
  }

  if (result < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

void sub_1AC64C7A0(void *a1@<X0>, int32_t a2@<W1>, uint64_t a3@<X8>)
{
  v6 = [a1 tokenName];
  v7 = sub_1AC79FF68();
  v9 = v8;

  *a3 = v7;
  *(a3 + 8) = v9;
  [a1 start];
  CMTimeMakeWithSeconds(&v61, v10, a2);
  v19 = OUTLINED_FUNCTION_26_3(v11, v12, v13, v14, v15, v16, v17, v18, v58, *&v61.value, *&v61.timescale);
  *(a3 + 16) = v20;
  *(a3 + 24) = v19;
  *(a3 + 32) = v21;
  [a1 end];
  CMTimeMakeWithSeconds(&v61, v22, a2);
  v31 = OUTLINED_FUNCTION_26_3(v23, v24, v25, v26, v27, v28, v29, v30, v59, *&v61.value, *&v61.timescale);
  *(a3 + 40) = v32;
  *(a3 + 48) = v31;
  *(a3 + 56) = v33;
  [a1 silenceStart];
  CMTimeMakeWithSeconds(&v61, v34, a2);
  v43 = OUTLINED_FUNCTION_26_3(v35, v36, v37, v38, v39, v40, v41, v42, v60, *&v61.value, *&v61.timescale);
  *(a3 + 64) = v44;
  *(a3 + 72) = v43;
  *(a3 + 80) = v45;
  [a1 confidence];
  *(a3 + 88) = v46;
  *(a3 + 96) = [a1 hasSpaceAfter];
  *(a3 + 97) = [a1 hasSpaceBefore];
  v47 = [a1 phoneSequence];
  v48 = sub_1AC79FF68();
  v50 = v49;

  *(a3 + 104) = v48;
  *(a3 + 112) = v50;
  v51 = [a1 ipaPhoneSequence];
  v52 = sub_1AC79FF68();
  v54 = v53;

  *(a3 + 120) = v52;
  *(a3 + 128) = v54;
  *(a3 + 136) = [a1 appendedAutoPunctuation];
  *(a3 + 137) = [a1 prependedAutoPunctuation];
  *(a3 + 138) = [a1 isModifiedByAutoPunctuation];
  [a1 graphCost];
  *(a3 + 144) = v55;
  [a1 acousticCost];
  v57 = v56;

  *(a3 + 152) = v57;
}

void static TranscriptionSegment.== infix(_:_:)()
{
  OUTLINED_FUNCTION_50_0();
  if (sub_1AC79F518())
  {
    v2 = type metadata accessor for TranscriptionSegment(0);
    sub_1AC6285F8(*(v1 + *(v2 + 20)), *(v0 + *(v2 + 20)), v3);
    if (v4 & 1) != 0 && (sub_1AC628F98())
    {

      sub_1AC628640();
    }
  }
}

void TranscriptionSegment.hash(into:)(uint64_t a1)
{
  sub_1AC79F5C8();
  OUTLINED_FUNCTION_0_5();
  sub_1AC65106C(v3, v4, MEMORY[0x1E6968858]);
  sub_1AC79FE58();
  v5 = type metadata accessor for TranscriptionSegment(0);
  sub_1AC6336F0(a1, *(v1 + *(v5 + 20)), v6);
  sub_1AC633B88(a1, *(v1 + *(v5 + 24)));

  sub_1AC633C28();
}

uint64_t TranscriptionSegment.hashValue.getter()
{
  OUTLINED_FUNCTION_85_1();
  sub_1AC79F5C8();
  OUTLINED_FUNCTION_0_5();
  v3 = sub_1AC65106C(v1, v2, MEMORY[0x1E6968858]);
  OUTLINED_FUNCTION_38_3(v3, v4, v3, v5, v6, v7, v8, v9, v13, v14[0]);
  sub_1AC79FE58();
  v10 = type metadata accessor for TranscriptionSegment(0);
  sub_1AC6336F0(v14, *(v0 + *(v10 + 20)), v11);
  sub_1AC633B88(v14, *(v0 + *(v10 + 24)));
  sub_1AC633C28();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC64CB98(uint64_t a1, uint64_t a2)
{
  sub_1AC7A0E78();
  sub_1AC79F5C8();
  sub_1AC65106C(&qword_1EB56BD58, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
  sub_1AC79FE58();
  sub_1AC6336F0(v6, *(v2 + *(a2 + 20)), v4);
  sub_1AC633B88(v6, *(v2 + *(a2 + 24)));
  sub_1AC633C28();
  return sub_1AC7A0EC8();
}

uint64_t static TranscriptionToken.== infix(_:_:)(double *a1, uint64_t a2)
{
  v2 = a1[11];
  v31 = *(a1 + 96);
  v29 = *(a1 + 97);
  v26 = *(a1 + 14);
  v27 = *(a1 + 13);
  v22 = *(a1 + 16);
  v23 = *(a1 + 15);
  v19 = *(a1 + 136);
  v17 = *(a1 + 137);
  v15 = *(a1 + 138);
  v4 = a1[18];
  v3 = a1[19];
  v5 = *(a2 + 88);
  v7 = *(a2 + 144);
  v6 = *(a2 + 152);
  v8 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  v30 = *(a2 + 96);
  v28 = *(a2 + 97);
  v24 = *(a2 + 112);
  v25 = *(a2 + 104);
  v20 = *(a2 + 128);
  v21 = *(a2 + 120);
  v18 = *(a2 + 136);
  v16 = *(a2 + 137);
  v14 = *(a2 + 138);
  if (!v8 && (sub_1AC7A0D38() & 1) == 0 || (sub_1AC7A06A8() & 1) == 0 || (sub_1AC7A06A8() & 1) == 0)
  {
    return 0;
  }

  sub_1AC7A06A8();
  result = OUTLINED_FUNCTION_46_5();
  if (v10 & 1) == 0 || v2 != v5 || ((v31 ^ v30) & 1) != 0 || ((v29 ^ v28))
  {
    return result;
  }

  v11 = v27 == v25 && v26 == v24;
  if (!v11 && (sub_1AC7A0D38() & 1) == 0)
  {
    return 0;
  }

  if (v23 != v21 || v22 != v20)
  {
    sub_1AC7A0D38();
    result = OUTLINED_FUNCTION_46_5();
    if ((v13 & 1) == 0 || v19 != v18 || v17 != v16 || v15 != v14)
    {
      return result;
    }

LABEL_31:
    if (v4 == v7)
    {
      return v3 == v6;
    }

    return result;
  }

  result = 0;
  if (v19 == v18 && ((v17 ^ v16) & 1) == 0 && ((v15 ^ v14) & 1) == 0)
  {
    goto LABEL_31;
  }

  return result;
}

uint64_t TranscriptionToken.hash(into:)(uint64_t a1)
{
  v2 = v1[11];
  v4 = v1[18];
  v3 = v1[19];
  sub_1AC7A0048();
  sub_1AC7A06E8();
  sub_1AC7A06E8();
  sub_1AC7A06E8();
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x1B26E9A70](*&v5);
  sub_1AC7A0E98();
  sub_1AC7A0E98();
  sub_1AC7A0048();
  sub_1AC7A0048();
  sub_1AC7A0E98();
  sub_1AC7A0E98();
  sub_1AC7A0E98();
  if (v4 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v4;
  }

  MEMORY[0x1B26E9A70](*&v6);
  if (v3 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v3;
  }

  return MEMORY[0x1B26E9A70](*&v7);
}

uint64_t TranscriptionToken.hashValue.getter()
{
  OUTLINED_FUNCTION_85_1();
  TranscriptionToken.hash(into:)(v1);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC64D148(uint64_t a1)
{
  sub_1AC7A0E78();
  TranscriptionToken.hash(into:)(v2);
  return sub_1AC7A0EC8();
}

void __swiftcall TranscriptionToken.init(with:start:end:silenceStart:confidence:hasSpaceAfter:hasSpaceBefore:phoneSequence:ipaPhoneSequence:appendedAutoPunctuation:prependedAutoPunctuation:isModifiedByAutoPunctuation:graphCost:acousticCost:)(Speech::TranscriptionToken *__return_ptr retstr, Swift::String with, CMTime start, CMTime end, CMTime silenceStart, Swift::Double confidence, Swift::Bool hasSpaceAfter, Swift::Bool hasSpaceBefore, Swift::String phoneSequence, Swift::String ipaPhoneSequence, Swift::Bool appendedAutoPunctuation, Swift::Bool prependedAutoPunctuation, Swift::Bool isModifiedByAutoPunctuation, Swift::Double graphCost, Swift::Double acousticCost)
{
  retstr->tokenName = with;
  retstr->start = start;
  retstr->end = end;
  retstr->silenceStart = silenceStart;
  retstr->confidence = confidence;
  retstr->hasSpaceAfter = hasSpaceAfter;
  retstr->hasSpaceBefore = hasSpaceBefore;
  retstr->phoneSequence = phoneSequence;
  retstr->ipaPhoneSequence = ipaPhoneSequence;
  retstr->appendedAutoPunctuation = appendedAutoPunctuation;
  retstr->prependedAutoPunctuation = prependedAutoPunctuation;
  retstr->isModifiedByAutoPunctuation = isModifiedByAutoPunctuation;
  retstr->graphCost = graphCost;
  retstr->acousticCost = acousticCost;
}

void static TranscriptionToken.tokenString(from:ipa:after:attributes:)()
{
  OUTLINED_FUNCTION_129_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1AC79F618();
  v7 = OUTLINED_FUNCTION_167(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6();
  v8 = (v5 + 8);
  v9 = *(v5 + 88);
  v10 = *(v5 + 96);
  v11 = *(v5 + 97);
  if (v3)
  {
    v8 = (v5 + 128);
  }

  v12 = *v8;
  if (v3)
  {
    v13 = (v5 + 120);
  }

  else
  {
    v13 = v5;
  }

  v14 = *v13;

  memcpy(v19, v1, 0xA0uLL);
  if (sub_1AC64FB08(v19) == 1)
  {
    if ((v11 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_11:
    MEMORY[0x1B26E8C40](v14, v12);

    OUTLINED_FUNCTION_44_3();
    goto LABEL_12;
  }

  if ((v11 & 1) != 0 && (v19[96] & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (v10)
  {

    OUTLINED_FUNCTION_49_4();

    OUTLINED_FUNCTION_44_3();
  }

  sub_1AC79F608();
  sub_1AC79F5D8();
  if ((sub_1AC7A06A8() & 1) == 0 || (OUTLINED_FUNCTION_29_4(), (sub_1AC7A06A8() & 1) == 0))
  {
    if (sub_1AC637EF8())
    {
      OUTLINED_FUNCTION_29_4();
      v15 = sub_1AC7A0698();
      OUTLINED_FUNCTION_20_3();
      *(v17 - 256) = v16;
      sub_1AC64F69C();
      OUTLINED_FUNCTION_42_4();
      sub_1AC79F5E8();
      OUTLINED_FUNCTION_20_3();
      *(v18 - 256) = v15;
      sub_1AC64F6F0();
      OUTLINED_FUNCTION_42_4();
      sub_1AC79F5E8();
    }
  }

  if ((sub_1AC637EF8() & 1) != 0 && v9 != 0.0)
  {
    OUTLINED_FUNCTION_45_5();
    sub_1AC64F5F4();
    OUTLINED_FUNCTION_42_4();
    sub_1AC79F5E8();
    OUTLINED_FUNCTION_45_5();
    sub_1AC64F648();
    OUTLINED_FUNCTION_42_4();
    sub_1AC79F5E8();
  }

  OUTLINED_FUNCTION_130();
}

uint64_t sub_1AC64D5F8(uint64_t a1)
{
  v1 = sub_1AC64F69C();

  return MEMORY[0x1EEDC3C18](&type metadata for AttributeScopes.SpeechAttributes.TimeRangeAttribute, &type metadata for AttributeScopes.SpeechAttributes.TimeRangeAttribute, v1);
}

uint64_t TranscriptionResultAttributeOption.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_85_1();
  MEMORY[0x1B26E9A40](v1);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC64D84C(uint64_t a1)
{
  sub_1AC651018();

  return sub_1AC79F4C8();
}

uint64_t sub_1AC64D898(uint64_t a1)
{
  sub_1AC651018();

  return sub_1AC79F4C8();
}

uint64_t AttributedString.rangeOfAudioTimeRangeAttributes(intersecting:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v132 = a2;
  v2 = a1[1];
  *&v155.start.value = *a1;
  *&v155.start.epoch = v2;
  *&v155.duration.timescale = a1[2];
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C670, &qword_1AC7A9BF8);
  OUTLINED_FUNCTION_80();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_4();
  v125 = v4;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_91();
  v124 = v6;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C678, &qword_1AC7A9C00);
  OUTLINED_FUNCTION_80();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_4();
  v129 = v8;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_91();
  v137 = v10;
  v148 = sub_1AC79F598();
  OUTLINED_FUNCTION_40();
  v140 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_4();
  v146 = v13;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_91();
  v144 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C680, &qword_1AC7A9C08);
  OUTLINED_FUNCTION_167(v16);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v17);
  v136 = &v124 - v18;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C688, &qword_1AC7A9C10);
  OUTLINED_FUNCTION_80();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_4();
  v127 = v20;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_26_0();
  v128 = v22;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_26_0();
  v131 = v24;
  OUTLINED_FUNCTION_34();
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v124 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v124 - v29;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C690, &qword_1AC7A9C18);
  OUTLINED_FUNCTION_40();
  v145 = v31;
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v32);
  v134 = &v124 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C698, &qword_1AC7A9C20);
  v35 = OUTLINED_FUNCTION_167(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_2_4();
  v130 = v36;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_26_0();
  v135 = v38;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_26_0();
  v139 = v40;
  OUTLINED_FUNCTION_34();
  v42 = MEMORY[0x1EEE9AC00](v41);
  v44 = &v124 - v43;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_91();
  v143 = v45;
  v142 = sub_1AC79F568();
  OUTLINED_FUNCTION_40();
  v47 = v46;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_6();
  v51 = v50 - v49;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C6A0, &qword_1AC7A9C28);
  OUTLINED_FUNCTION_40();
  v141 = v53;
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_2_4();
  v133 = v55;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v124 - v57;
  sub_1AC79F588();
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_1AC64F69C();
  sub_1AC79F578();

  (*(v47 + 8))(v51, v142);
  v59 = v58;
  (*(v141 + 16))(v133, v58, v52);
  sub_1AC5C8BE0(&qword_1EB56C6A8, &qword_1EB56C6A0, &qword_1AC7A9C28, MEMORY[0x1E6968778]);
  v142 = v52;
  sub_1AC7A0108();
  sub_1AC5C8BE0(&qword_1EB56C6B0, &qword_1EB56C690, &qword_1AC7A9C18, MEMORY[0x1E6968760]);
  while (1)
  {
    sub_1AC7A07D8();
    if (__swift_getEnumTagSinglePayload(v44, 1, v149) == 1)
    {
      v64 = OUTLINED_FUNCTION_36_3();
      v65(v64);
      v66 = 1;
      goto LABEL_8;
    }

    sub_1AC637E08();
    if ((v30[48] & 1) == 0)
    {
      v61 = *(v30 + 4);
      v60 = *(v30 + 5);
      v63 = *v30;
      v62 = *(v30 + 1);
      range = v155;
      v152.start.value = v63;
      *&v152.start.timescale = v62;
      *&v152.start.epoch = *(v30 + 1);
      *&v152.duration.timescale = v61;
      v152.duration.epoch = v60;
      CMTimeRangeGetIntersection(&v154, &range, &v152);
      if ((sub_1AC7A0598() & 1) == 0)
      {
        break;
      }
    }

    sub_1AC5C720C(v30, &qword_1EB56C688, &qword_1AC7A9C10);
  }

  v67 = OUTLINED_FUNCTION_36_3();
  v68(v67);
  sub_1AC637E08();
  v66 = 0;
LABEL_8:
  __swift_storeEnumTagSinglePayload(v143, v66, 1, v149);
  v134 = &v124;
  v69 = sub_1AC5C8BE0(&qword_1EB56C6B8, &qword_1EB56C6A0, &qword_1AC7A9C28, MEMORY[0x1E6968780]);
  v70 = v144;
  v145 = v69;
  sub_1AC7A04E8();
  v147 = (v140 + 8);
  while (1)
  {
    v71 = v146;
    sub_1AC7A0498();
    OUTLINED_FUNCTION_9_4();
    sub_1AC65106C(&qword_1EB56C6C0, v72, MEMORY[0x1E69687F8]);
    v73 = v148;
    v74 = sub_1AC79FED8();
    v144 = *v147;
    v144(v71, v73);
    if (v74)
    {
      break;
    }

    sub_1AC5C8BE0(&qword_1EB56C6C8, &qword_1EB56C6A0, &qword_1AC7A9C28, MEMORY[0x1E6968770]);
    sub_1AC79FE88();
    v75 = sub_1AC7A0518();
    sub_1AC5C6E6C();
    v75(&v152, 0);
    if (v28[48])
    {
      v76 = OUTLINED_FUNCTION_25_5();
      sub_1AC5C720C(v76, v77, v78);
    }

    else
    {
      v80 = *(v28 + 4);
      v79 = *(v28 + 5);
      v82 = *v28;
      v81 = *(v28 + 1);
      v152 = v155;
      v151.start.value = v82;
      *&v151.start.timescale = v81;
      *&v151.start.epoch = *(v28 + 1);
      *&v151.duration.timescale = v80;
      v151.duration.epoch = v79;
      CMTimeRangeGetIntersection(&range, &v152, &v151);
      v83 = sub_1AC7A0598();
      v84 = OUTLINED_FUNCTION_25_5();
      sub_1AC5C720C(v84, v85, v86);
      if ((v83 & 1) == 0)
      {
        v87 = v136;
        v88 = v70;
        v89 = v148;
        (*(v140 + 32))(v136, v88, v148);
        v90 = 0;
        goto LABEL_15;
      }
    }
  }

  v91 = v70;
  v89 = v148;
  v144(v91, v148);
  v90 = 1;
  v87 = v136;
LABEL_15:
  v92 = __swift_storeEnumTagSinglePayload(v87, v90, 1, v89);
  MEMORY[0x1EEE9AC00](v92);
  v148 = v59;
  *(&v124 - 2) = v59;
  v93 = v139;
  sub_1AC64F900(sub_1AC64FC94, (&v124 - 4), v139);
  sub_1AC5C720C(v87, &qword_1EB56C680, &qword_1AC7A9C08);
  v94 = v135;
  sub_1AC5C6E6C();
  v95 = v149;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v94, 1, v149);
  v98 = v137;
  v97 = v138;
  if (EnumTagSinglePayload == 1)
  {
    goto LABEL_18;
  }

  v99 = v131;
  sub_1AC637E08();
  v94 = v130;
  sub_1AC5C6E6C();
  if (__swift_getEnumTagSinglePayload(v94, 1, v95) == 1)
  {
    sub_1AC5C720C(v99, &qword_1EB56C688, &qword_1AC7A9C10);
LABEL_18:
    sub_1AC5C720C(v93, &qword_1EB56C698, &qword_1AC7A9C20);
    sub_1AC5C720C(v143, &qword_1EB56C698, &qword_1AC7A9C20);
    (*(v141 + 8))(v148, v142);
    sub_1AC5C720C(v94, &qword_1EB56C698, &qword_1AC7A9C20);
    v100 = v132;
    v101 = 1;
    v102 = v97;
    return __swift_storeEnumTagSinglePayload(v100, v101, 1, v102);
  }

  v103 = v128;
  sub_1AC637E08();
  sub_1AC5C6E6C();
  sub_1AC637E08();
  sub_1AC5C6E6C();
  v104 = v129;
  sub_1AC637E08();
  v105 = *(v97 + 36);
  OUTLINED_FUNCTION_9_4();
  sub_1AC65106C(v106, v107, MEMORY[0x1E69687F0]);
  v108 = sub_1AC79FEC8();
  sub_1AC5C720C(v103, &qword_1EB56C688, &qword_1AC7A9C10);
  sub_1AC5C720C(v131, &qword_1EB56C688, &qword_1AC7A9C10);
  sub_1AC5C720C(v139, &qword_1EB56C698, &qword_1AC7A9C20);
  sub_1AC5C720C(v143, &qword_1EB56C698, &qword_1AC7A9C20);
  result = (*(v141 + 8))(v148, v142);
  if (v108)
  {
    v110 = v140;
    v111 = *(v140 + 16);
    v112 = v124;
    v111(v124, v98, v89);
    sub_1AC5C720C(v98, &qword_1EB56C678, &qword_1AC7A9C00);
    v113 = v126;
    v111(v112 + *(v126 + 48), v104 + v105, v89);
    v114 = OUTLINED_FUNCTION_41_4();
    sub_1AC5C720C(v114, v115, &qword_1AC7A9C00);
    v116 = v125;
    sub_1AC5C6E6C();
    v117 = *(v113 + 48);
    v118 = *(v110 + 32);
    v119 = v132;
    v120 = OUTLINED_FUNCTION_41_4();
    v118(v120);
    v121 = v144;
    v144(v116 + v117, v89);
    sub_1AC637E08();
    v122 = *(v113 + 48);
    v123 = v138;
    (v118)(v119 + *(v138 + 36), v116 + v122, v89);
    v121(v116, v89);
    v100 = v119;
    v101 = 0;
    v102 = v123;
    return __swift_storeEnumTagSinglePayload(v100, v101, 1, v102);
  }

  __break(1u);
  return result;
}

uint64_t static TranscriptionLatticeMitigatorResult.== infix(_:_:)(float *a1, uint64_t a2)
{
  v3 = a1[4];
  v2 = a1[5];
  v5 = a1[6];
  v4 = a1[7];
  v6 = *(a1 + 32);
  v8 = *(a2 + 16);
  v7 = *(a2 + 20);
  v10 = *(a2 + 24);
  v9 = *(a2 + 28);
  v11 = *(a2 + 32);
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 8))
  {
    if (v3 != v8 || v2 != v7 || v5 != v10 || v4 != v9)
    {
      return 0;
    }

    return v6 ^ v11 ^ 1u;
  }

  sub_1AC7A0D38();
  result = OUTLINED_FUNCTION_46_5();
  if (v14)
  {
    v15 = v3 == v8 && v2 == v7;
    v16 = v15 && v5 == v10;
    if (v16 && v4 == v9)
    {
      return v6 ^ v11 ^ 1u;
    }
  }

  return result;
}

uint64_t TranscriptionLatticeMitigatorResult.hash(into:)(uint64_t a1)
{
  sub_1AC7A0048();
  sub_1AC7A0EA8();
  sub_1AC7A0EA8();
  sub_1AC7A0EA8();
  sub_1AC7A0EA8();
  return sub_1AC7A0E98();
}

uint64_t TranscriptionLatticeMitigatorResult.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v4[9] = *v0;
  v4[10] = v1;
  v5 = *(v0 + 16);
  v6 = v2;
  sub_1AC7A0E78();
  TranscriptionLatticeMitigatorResult.hash(into:)(v4);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC64E874(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  v5[9] = *v1;
  v5[10] = v2;
  v6 = *(v1 + 16);
  v7 = v3;
  sub_1AC7A0E78();
  TranscriptionLatticeMitigatorResult.hash(into:)(v5);
  return sub_1AC7A0EC8();
}

void __swiftcall TranscriptionLatticeMitigatorResult.init(with:score:threshold:calibrationScale:calibrationOffset:processed:)(Speech::TranscriptionLatticeMitigatorResult *__return_ptr retstr, Swift::String with, Swift::Float score, Swift::Float threshold, Swift::Float calibrationScale, Swift::Float calibrationOffset, Swift::Bool processed)
{
  retstr->version = with;
  retstr->score = score;
  retstr->threshold = threshold;
  retstr->calibrationScale = calibrationScale;
  retstr->calibrationOffset = calibrationOffset;
  retstr->isProcessed = processed;
}

uint64_t static AudioAnalytics.AcousticFeature.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return sub_1AC6290A0(*a1, *a2) & (v2 == v3);
}

uint64_t AudioAnalytics.AcousticFeature.hash(into:)()
{
  v1 = *(v0 + 8);
  sub_1AC633738();
  v2 = OUTLINED_FUNCTION_32_3();
  if (!v3)
  {
    v2 = v1;
  }

  return MEMORY[0x1B26E9A70](*&v2);
}

uint64_t AudioAnalytics.AcousticFeature.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = OUTLINED_FUNCTION_85_1();
  OUTLINED_FUNCTION_38_3(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14);
  sub_1AC633738();
  v10 = OUTLINED_FUNCTION_32_3();
  if (!v11)
  {
    v10 = v1;
  }

  MEMORY[0x1B26E9A70](*&v10);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC64E9E0(uint64_t a1)
{
  sub_1AC7A0E78();
  AudioAnalytics.AcousticFeature.hash(into:)();
  return sub_1AC7A0EC8();
}

void sub_1AC64EA44(void *a1@<X0>, void *a2@<X8>)
{
  v2 = [a1 speechRecognitionFeatures];
  sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
  v3 = sub_1AC79FE28();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C730, &qword_1AC7AA650);
  v69 = sub_1AC7A0BA8();
  v4 = 0;
  OUTLINED_FUNCTION_117_0();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  v11 = v10 + 64;
  if ((v6 & v5) != 0)
  {
    do
    {
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_8:
      v15 = v12 | (v4 << 6);
      v16 = (*(v3 + 48) + 16 * v15);
      v18 = *v16;
      v17 = v16[1];
      v19 = *(*(v3 + 56) + 8 * v15);

      [v19 doubleValue];
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v20 = (v69[6] + 16 * v15);
      *v20 = v18;
      v20[1] = v17;
      *(v69[7] + 8 * v15) = v21;
      v22 = v69[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v69[2] = v24;
    }

    while (v7);
  }

  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v4 >= v9)
    {
      break;
    }

    v14 = *(v3 + 64 + 8 * v4);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v7 = (v14 - 1) & v14;
      goto LABEL_8;
    }
  }

  v25 = [a1 acousticFeatures];
  sub_1AC5CF764(0, &unk_1EB56AB78, off_1E797AC50);
  v26 = sub_1AC79FE28();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C738, &qword_1AC7AA658);
  v27 = sub_1AC7A0BA8();
  v28 = 0;
  v62 = v26 + 64;
  OUTLINED_FUNCTION_117_0();
  v31 = v30 & v29;
  v33 = (v32 + 63) >> 6;
  v66 = v26;
  v67 = v34 + 8;
  v64 = v33;
  v65 = v34;
  if ((v30 & v29) == 0)
  {
LABEL_13:
    v36 = v28;
    while (1)
    {
      v28 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        goto LABEL_37;
      }

      if (v28 >= v33)
      {

        [a1 snr];
        v60 = v59;

        *a2 = v69;
        a2[1] = v27;
        a2[2] = v60;
        return;
      }

      v37 = *(v62 + 8 * v28);
      ++v36;
      if (v37)
      {
        v35 = __clz(__rbit64(v37));
        v31 = (v37 - 1) & v37;
        goto LABEL_18;
      }
    }
  }

  while (1)
  {
    v35 = __clz(__rbit64(v31));
    v31 &= v31 - 1;
LABEL_18:
    v38 = v35 | (v28 << 6);
    v39 = (*(v26 + 48) + 16 * v38);
    v40 = *v39;
    v41 = *(*(v26 + 56) + 8 * v38);
    v71 = v39[1];

    v70 = v41;
    v42 = [v70 acousticFeatureValuePerFrame];
    v43 = sub_1AC7A0158();

    v44 = v43 >> 62 ? sub_1AC7A08E8() : *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v72 = v40;
    if (v44)
    {
      v68 = v31;
      v73 = MEMORY[0x1E69E7CC0];
      sub_1AC6312E0(0, v44 & ~(v44 >> 63), 0);
      if (v44 < 0)
      {
        goto LABEL_40;
      }

      v45 = 0;
      v46 = v73;
      do
      {
        if ((v43 & 0xC000000000000001) != 0)
        {
          v47 = MEMORY[0x1B26E95B0](v45, v43);
        }

        else
        {
          v47 = *(v43 + 8 * v45 + 32);
        }

        v48 = v47;
        [v47 doubleValue];
        v50 = v49;

        v52 = *(v73 + 16);
        v51 = *(v73 + 24);
        if (v52 >= v51 >> 1)
        {
          sub_1AC6312E0(v51 > 1, v52 + 1, 1);
        }

        ++v45;
        *(v73 + 16) = v52 + 1;
        *(v73 + 8 * v52 + 32) = v50;
      }

      while (v44 != v45);

      v27 = v65;
      v26 = v66;
      v33 = v64;
      v31 = v68;
    }

    else
    {

      v46 = MEMORY[0x1E69E7CC0];
    }

    [v70 frameDuration];
    v54 = v53;

    *(v67 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    v55 = (v27[6] + 16 * v38);
    *v55 = v72;
    v55[1] = v71;
    v56 = (v27[7] + 16 * v38);
    *v56 = v46;
    v56[1] = v54;
    v57 = v27[2];
    v23 = __OFADD__(v57, 1);
    v58 = v57 + 1;
    if (v23)
    {
      break;
    }

    v27[2] = v58;
    if (!v31)
    {
      goto LABEL_13;
    }
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

uint64_t static AudioAnalytics.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  sub_1AC6305D8();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_39();
  sub_1AC6306C8(v5, v6);
  return v7 & (v2 == v3);
}

uint64_t AudioAnalytics.hash(into:)(const void *a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_1AC63459C(a1, *v1);
  sub_1AC634414(a1, v3);
  v5 = OUTLINED_FUNCTION_32_3();
  if (!v6)
  {
    v5 = v4;
  }

  return MEMORY[0x1B26E9A70](*&v5);
}

uint64_t AudioAnalytics.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = OUTLINED_FUNCTION_85_1();
  v11 = OUTLINED_FUNCTION_38_3(v3, v4, v5, v6, v7, v8, v9, v10, v16, v17[0]);
  sub_1AC63459C(v11, v12);
  sub_1AC634414(v17, v1);
  v13 = OUTLINED_FUNCTION_32_3();
  if (!v14)
  {
    v13 = v2;
  }

  MEMORY[0x1B26E9A70](*&v13);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC64F04C(uint64_t a1)
{
  v2 = *(v1 + 2);
  v5 = *v1;
  v6 = v2;
  sub_1AC7A0E78();
  AudioAnalytics.hash(into:)(v4);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC64F0F4(__int128 *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1[1];
  v13 = *a1;
  v14 = v3;
  v15 = a1[2];
  v4 = objc_opt_self();
  v5 = [objc_opt_self() valueWithCMTimeRange_];
  *&v13 = 0;
  v6 = [v4 archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v13];

  v7 = v13;
  if (v6)
  {
    v8 = sub_1AC79F868();
    v10 = v9;

    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_1AC7A0F28();
    __swift_mutable_project_boxed_opaque_existential_1(&v13, *(&v14 + 1));
    sub_1AC64FB70();
    sub_1AC7A0D58();
    sub_1AC5C28A8(v8, v10);
    return __swift_destroy_boxed_opaque_existential_1Tm(&v13);
  }

  else
  {
    v12 = v7;
    sub_1AC79F748();

    return swift_willThrow();
  }
}

void *sub_1AC64F288@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1AC7A0A28();
  OUTLINED_FUNCTION_40();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6();
  v11 = v10 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1AC7A0F08();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v25, v25[3]);
    sub_1AC64FBC4();
    sub_1AC7A0D48();
    sub_1AC5CF764(0, &qword_1EB56C660, 0x1E696ACD0);
    sub_1AC5CF764(0, &qword_1EB56C668, 0x1E696B098);
    v13 = sub_1AC7A0628();
    v14 = v13;
    if (v13)
    {
      [v13 CMTimeRangeValue];

      v15 = OUTLINED_FUNCTION_23_3();
      sub_1AC5C28A8(v15, v16);
      result = __swift_destroy_boxed_opaque_existential_1Tm(v25);
      *a2 = v22;
      a2[1] = v23;
      a2[2] = v24;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_1AC7A0EF8();
      sub_1AC7A0A18();
      v17 = sub_1AC7A0A38();
      swift_allocError();
      v19 = v18;
      (*(v7 + 16))(v18, v11, v5);
      (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6B00], v17);
      swift_willThrow();
      v20 = OUTLINED_FUNCTION_23_3();
      sub_1AC5C28A8(v20, v21);
      (*(v7 + 8))(v11, v5);
      return __swift_destroy_boxed_opaque_existential_1Tm(v25);
    }
  }

  return result;
}

double sub_1AC64F580@<D0>(void (*a1)(_OWORD *__return_ptr)@<X3>, _OWORD *a2@<X8>)
{
  a1(v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

unint64_t sub_1AC64F5F4()
{
  result = qword_1EB56B488;
  if (!qword_1EB56B488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56B488);
  }

  return result;
}

unint64_t sub_1AC64F648()
{
  result = qword_1EB56AEA8;
  if (!qword_1EB56AEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56AEA8);
  }

  return result;
}

unint64_t sub_1AC64F69C()
{
  result = qword_1EB56B480;
  if (!qword_1EB56B480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56B480);
  }

  return result;
}

unint64_t sub_1AC64F6F0()
{
  result = qword_1EB56AEB0;
  if (!qword_1EB56AEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56AEB0);
  }

  return result;
}

uint64_t sub_1AC64F78C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!result || a1 > *(v4 + 24) >> 1)
  {

    return a2();
  }

  return result;
}

uint64_t sub_1AC64F81C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C6A0, &qword_1AC7A9C28);
  sub_1AC5C8BE0(&qword_1EB56C6B8, &qword_1EB56C6A0, &qword_1AC7A9C28, MEMORY[0x1E6968780]);
  v1 = sub_1AC7A0518();
  sub_1AC5C6E6C();
  return v1(&v3, 0);
}

uint64_t sub_1AC64F900@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16[1] = a2;
  v17 = a1;
  v5 = sub_1AC79F598();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C680, &qword_1AC7A9C08);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v16 - v10;
  sub_1AC5C6E6C();
  v12 = 1;
  if (__swift_getEnumTagSinglePayload(v11, 1, v5) == 1)
  {
    v13 = a3;
LABEL_5:
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C688, &qword_1AC7A9C10);
    return __swift_storeEnumTagSinglePayload(v13, v12, 1, v14);
  }

  (*(v6 + 32))(v8, v11, v5);
  v13 = a3;
  v17(v8);
  if (!v3)
  {
    (*(v6 + 8))(v8, v5);
    v12 = 0;
    goto LABEL_5;
  }

  result = (*(v6 + 8))(v8, v5);
  __break(1u);
  return result;
}

uint64_t sub_1AC64FB08(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_1AC64FB70()
{
  result = qword_1EB56D4E0;
  if (!qword_1EB56D4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D4E0);
  }

  return result;
}

unint64_t sub_1AC64FBC4()
{
  result = qword_1EB56D4C0;
  if (!qword_1EB56D4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D4C0);
  }

  return result;
}

uint64_t sub_1AC64FC18(uint64_t result, uint64_t a2, uint64_t a3)
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

unint64_t sub_1AC64FD00()
{
  result = qword_1EB56C6E0;
  if (!qword_1EB56C6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56C6E0);
  }

  return result;
}

unint64_t sub_1AC64FD9C()
{
  result = qword_1EB56AD38;
  if (!qword_1EB56AD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56AD38);
  }

  return result;
}

unint64_t sub_1AC64FE00()
{
  result = qword_1EB56C6F8;
  if (!qword_1EB56C6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56C6F8);
  }

  return result;
}

unint64_t sub_1AC64FE58()
{
  result = qword_1EB56C700;
  if (!qword_1EB56C700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56C700);
  }

  return result;
}

unint64_t sub_1AC64FEB0()
{
  result = qword_1EB56C708;
  if (!qword_1EB56C708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56C708);
  }

  return result;
}

unint64_t sub_1AC64FF08()
{
  result = qword_1EB56C710;
  if (!qword_1EB56C710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56C710);
  }

  return result;
}

unint64_t sub_1AC64FF60()
{
  result = qword_1EB56C718;
  if (!qword_1EB56C718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56C718);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TranscriptionSegment(uint64_t *a1, uint64_t *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_1AC79F5C8();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = a3[6];
    *(a1 + a3[5]) = *(a2 + a3[5]);
    *(a1 + v8) = *(a2 + v8);
    *(a1 + a3[7]) = *(a2 + a3[7]);
  }

  return a1;
}

uint64_t destroy for TranscriptionSegment(uint64_t a1)
{
  v2 = sub_1AC79F5C8();
  (*(*(v2 - 8) + 8))(a1, v2);
}

uint64_t initializeWithCopy for TranscriptionSegment(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1AC79F5C8();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  *(a1 + a3[7]) = *(a2 + a3[7]);

  return a1;
}

uint64_t assignWithCopy for TranscriptionSegment(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1AC79F5C8();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + a3[5]) = *(a2 + a3[5]);

  *(a1 + a3[6]) = *(a2 + a3[6]);

  *(a1 + a3[7]) = *(a2 + a3[7]);

  return a1;
}

uint64_t initializeWithTake for TranscriptionSegment(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1AC79F5C8();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t assignWithTake for TranscriptionSegment(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1AC79F5C8();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  *(a1 + a3[5]) = *(a2 + a3[5]);

  *(a1 + a3[6]) = *(a2 + a3[6]);

  *(a1 + a3[7]) = *(a2 + a3[7]);

  return a1;
}

uint64_t sub_1AC6503FC(uint64_t a1)
{
  result = sub_1AC79F5C8();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t destroy for TranscriptionToken()
{
}

uint64_t initializeWithCopy for TranscriptionToken(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v4 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v4;
  *(a1 + 96) = *(a2 + 96);
  v5 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v5;
  v6 = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = v6;
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 144) = *(a2 + 144);

  return a1;
}

uint64_t assignWithCopy for TranscriptionToken(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 97) = *(a2 + 97);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 138) = *(a2 + 138);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  return a1;
}

uint64_t assignWithTake for TranscriptionToken(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 97) = *(a2 + 97);
  v5 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v5;

  v6 = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = v6;

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 138) = *(a2 + 138);
  *(a1 + 144) = *(a2 + 144);
  return a1;
}

uint64_t getEnumTagSinglePayload for TranscriptionToken(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 160))
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

uint64_t storeEnumTagSinglePayload for TranscriptionToken(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for TranscriptionResultAttributeOption(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t initializeWithCopy for TranscriptionLatticeMitigatorResult(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithCopy for TranscriptionLatticeMitigatorResult(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for TranscriptionLatticeMitigatorResult(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t getEnumTagSinglePayload for TranscriptionLatticeMitigatorResult(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
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

uint64_t storeEnumTagSinglePayload for TranscriptionLatticeMitigatorResult(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for AudioAnalytics()
{
}

uint64_t *sub_1AC650B30(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

uint64_t *assignWithCopy for AudioAnalytics(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];
  return a1;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t assignWithTake for AudioAnalytics(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for AudioAnalytics(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for AudioAnalytics(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *assignWithCopy for AudioAnalytics.AcousticFeature(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void *assignWithTake for AudioAnalytics.AcousticFeature(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

uint64_t getEnumTagSinglePayload for AudioAnalytics.AcousticFeature(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for AudioAnalytics.AcousticFeature(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SpeechModels(unsigned int *a1, int a2)
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

_BYTE *sub_1AC650E54(_BYTE *result, int a2, int a3)
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

unint64_t sub_1AC650F24()
{
  result = qword_1EB56C720;
  if (!qword_1EB56C720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56C720);
  }

  return result;
}

unint64_t sub_1AC650F7C()
{
  result = qword_1EB56C728;
  if (!qword_1EB56C728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56C728);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return OUTLINED_FUNCTION_18_3(a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_1AC651018()
{
  result = qword_1EB56C748;
  if (!qword_1EB56C748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56C748);
  }

  return result;
}

uint64_t sub_1AC65106C(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

void OUTLINED_FUNCTION_20_3()
{
  *(v3 - 320) = v0;
  *(v3 - 312) = v2;
  *(v3 - 304) = v1;
}

void *sub_1AC651260()
{
  v1 = *(v0 + OBJC_IVAR___SFSpeechAnalyzerConfiguration__config);
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC6Speech31ObjCSpeechAnalyzerConfiguration_audioFormat);
    v3 = v2;
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC651304(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR___SFSpeechAnalyzerConfiguration__config);
  if (v3)
  {
    a2 = *(v3 + OBJC_IVAR____TtC6Speech31ObjCSpeechAnalyzerConfiguration_audioFormat);
    *(v3 + OBJC_IVAR____TtC6Speech31ObjCSpeechAnalyzerConfiguration_audioFormat) = a1;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE66BB8](a1, a2);
}

id SFSpeechAnalyzerConfiguration.init()()
{
  *(v0 + OBJC_IVAR___SFSpeechAnalyzerConfiguration__config) = 0;
  v2.super_class = SFSpeechAnalyzerConfiguration;
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_1AC651398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  type metadata accessor for ObjCSpeechAnalyzer(0);
  OUTLINED_FUNCTION_99();
  v18 = swift_allocObject();
  *(v18 + 16) = a13;
  *(v18 + 24) = a14;

  sub_1AC72CCE4(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, sub_1AC658E88, v18, a9, a10, a5, a6, a7, a8, v24, v25, v26, v27, v28, v29);
}

void sub_1AC651484(void *a1, void (*a2)(char *))
{
  v6 = [objc_allocWithZone(SFSpeechAnalyzerConfiguration) init];
  v4 = *&v6[OBJC_IVAR___SFSpeechAnalyzerConfiguration__config];
  *&v6[OBJC_IVAR___SFSpeechAnalyzerConfiguration__config] = a1;

  v5 = a1;
  a2(v6);
}

uint64_t sub_1AC651694(void *a1, uint64_t a2, void *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v37 = a5;
  v38 = a8;
  v34 = a4;
  v35 = a6;
  v36 = a9;
  v13 = sub_1AC79F7F8();
  v32 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v31 - v18;
  v33 = &v31 - v18;
  v20 = sub_1AC7A0288();
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v20);
  (*(v14 + 16))(v16, a2, v13);
  v21 = (*(v14 + 80) + 72) & ~*(v14 + 80);
  v22 = (v15 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  *(v23 + 32) = a1;
  *(v23 + 40) = a3;
  *(v23 + 48) = v34;
  v24 = v35;
  *(v23 + 56) = v35;
  *(v23 + 64) = a7;
  (*(v14 + 32))(v23 + v21, v16, v32);
  v25 = v38;
  *(v23 + v22) = v37;
  v26 = (v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8));
  v27 = v36;
  *v26 = v25;
  v26[1] = v27;
  v28 = a3;
  v29 = a1;
  sub_1AC5D9374(v24, a7);

  sub_1AC659DBC();
}

uint64_t sub_1AC6518CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = v12;
  *(v8 + 104) = v13;
  *(v8 + 80) = v11;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 208) = a6;
  *(v8 + 48) = a4;
  *(v8 + 56) = a5;
  sub_1AC79FB18();
  *(v8 + 112) = swift_task_alloc();
  sub_1AC79FF48();
  *(v8 + 120) = swift_task_alloc();
  sub_1AC79FF28();
  *(v8 + 128) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC6519D0, 0, 0);
}

char *sub_1AC6519D0()
{
  OUTLINED_FUNCTION_45();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 208);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  type metadata accessor for SFSpeechAnalyzer(v6);
  v7 = v4;
  v8 = v5;
  sub_1AC5D9374(v1, v2);
  result = sub_1AC652140(v8, v4, v3, v1, v2);
  v10 = OBJC_IVAR___SFSpeechAnalyzer__implementation;
  *(v0 + 136) = result;
  *(v0 + 144) = v10;
  v11 = *&result[v10];
  *(v0 + 152) = v11;
  if (!v11)
  {
    __break(1u);
    goto LABEL_7;
  }

  v12 = *(v0 + 48);
  v11;
  result = [v12 audioFormat];
  *(v0 + 160) = result;
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v13 = swift_task_alloc();
  *(v0 + 168) = v13;
  *v13 = v0;
  v13[1] = sub_1AC651B0C;

  return sub_1AC73AE68();
}

uint64_t sub_1AC651B0C()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = *(v2 + 160);
  v4 = *(v2 + 152);
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v7 + 176) = v0;

  if (v0)
  {
    v8 = sub_1AC651E88;
  }

  else
  {
    v8 = sub_1AC651C48;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

void sub_1AC651C48()
{
  v1 = *(v0[17] + v0[18]);
  v0[23] = v1;
  if (v1)
  {
    OUTLINED_FUNCTION_85();
    v3 = v2;
    v4 = OUTLINED_FUNCTION_32_4();
    v0[24] = v4;
    *v4 = v0;
    v4[1] = sub_1AC651CEC;
    v5 = OUTLINED_FUNCTION_31_0(v0[11]);

    sub_1AC73B518(v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AC651CEC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 200) = v0;

  if (v0)
  {
    v7 = sub_1AC651FE0;
  }

  else
  {

    v7 = sub_1AC651DF0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1AC651DF0()
{
  OUTLINED_FUNCTION_72();
  v2 = *(v1 + 96);
  v3 = *(v1 + 136);
  v4 = OUTLINED_FUNCTION_108_0();
  v2(v4, 0);

  OUTLINED_FUNCTION_44();

  return v5();
}

uint64_t sub_1AC651E88()
{
  v1 = *(v0 + 176);

  sub_1AC79FF18();
  OUTLINED_FUNCTION_35_4();
  swift_getErrorValue();
  sub_1AC7A0E08();
  sub_1AC79FEF8();

  sub_1AC79FF08();
  sub_1AC79FF38();
  if (qword_1EB56B610 != -1)
  {
    OUTLINED_FUNCTION_22_4(&qword_1EB56B610);
  }

  v2 = *(v0 + 96);
  v3 = qword_1EB56DF80;
  sub_1AC79FA88();
  v4 = OUTLINED_FUNCTION_27_4();
  v6 = OUTLINED_FUNCTION_36_4(v4, v5);
  v2(0, v6);

  OUTLINED_FUNCTION_44();

  return v7();
}

uint64_t sub_1AC651FE0()
{
  v1 = *(v0 + 200);

  sub_1AC79FF18();
  OUTLINED_FUNCTION_35_4();
  swift_getErrorValue();
  sub_1AC7A0E08();
  sub_1AC79FEF8();

  sub_1AC79FF08();
  sub_1AC79FF38();
  if (qword_1EB56B610 != -1)
  {
    OUTLINED_FUNCTION_22_4(&qword_1EB56B610);
  }

  v2 = *(v0 + 96);
  v3 = qword_1EB56DF80;
  sub_1AC79FA88();
  v4 = OUTLINED_FUNCTION_27_4();
  v6 = OUTLINED_FUNCTION_36_4(v4, v5);
  v2(0, v6);

  OUTLINED_FUNCTION_44();

  return v7();
}

id sub_1AC652140(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v11[4] = a4;
    v11[5] = a5;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1AC658EC4;
    v11[3] = &block_descriptor_215;
    v8 = _Block_copy(v11);
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initForAudioFileWithConfiguration:a1 options:a2 restrictedLogging:a3 & 1 didChangeVolatileRange:v8];
  _Block_release(v8);

  return v9;
}

void sub_1AC652424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1AC79F738();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

char *sub_1AC6524A0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, void *a5, void *a6, uint64_t a7, void *a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  HIDWORD(v28) = a4;
  *(v17 + OBJC_IVAR___SFSpeechAnalyzer__implementation) = 0;
  v32.super_class = SFSpeechAnalyzer;
  v21 = objc_msgSendSuper2(&v32, sel_init);
  objc_allocWithZone(type metadata accessor for ObjCSpeechAnalyzer(0));
  v22 = v21;
  sub_1AC7331CC(v22, a1, a2, a3, HIDWORD(v28), a5, a6, a7, a8, a9, a10, a11, a12, a13, a15, a16, a17, v26, a11, a12, a9, a10, a8, v28, a5, a6, a7, v32.receiver, v32.super_class);
  v23 = *&v22[OBJC_IVAR___SFSpeechAnalyzer__implementation];
  *&v22[OBJC_IVAR___SFSpeechAnalyzer__implementation] = v24;

  return v22;
}

id sub_1AC65273C(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, char a14, uint64_t a15, uint64_t a16)
{
  v28 = sub_1AC79FF58();

  if (a15)
  {
    v33 = a15;
    v34 = a16;
    OUTLINED_FUNCTION_4_5();
    v30 = 1107296256;
    OUTLINED_FUNCTION_0_6();
    v31 = v18;
    v32 = &block_descriptor_190;
    v19 = _Block_copy(aBlock);
  }

  else
  {
    v19 = 0;
  }

  LOBYTE(v21) = a14 & 1;
  v23 = [v16 initWithClientIdentifier:v28 audioFormat:a3 formatForNewLines:a4 & 1 transcriberResultDelegate:a5 endpointingResultDelegate:a6 languageDetectorResultDelegate:a7 speechDetectorResultDelegate:a8 queue:a9 transcriberOptions:a10 options:a11 languageDetectorOptions:a12 speechDetectorOptions:a13 restrictedLogging:v21 contextualNamedEntities:0 didChangeVolatileRange:v19];
  sub_1AC5C3958(a15, a16);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  _Block_release(v19);
  return v23;
}

uint64_t sub_1AC6528E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 40);
  v9[0] = *a2;
  v9[1] = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 32);
  v12 = v6;
  v7 = *(a1 + 32);

  v7(v9, a3, a4);
}

id sub_1AC652AE8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, void *a10, void *a11, void *a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v32 = sub_1AC79FF58();

  if (a14)
  {
    type metadata accessor for SFContextualNamedEntity();
    sub_1AC7A0148();
    OUTLINED_FUNCTION_108_0();
  }

  else
  {
    v17 = 0;
  }

  if (a15)
  {
    v37 = a15;
    v38 = a16;
    OUTLINED_FUNCTION_4_5();
    v25 = v19;
    v34 = 1107296256;
    OUTLINED_FUNCTION_0_6();
    v35 = v20;
    v36 = &block_descriptor_183_0;
    v21 = _Block_copy(aBlock);

    a13 = v25;
  }

  else
  {
    v21 = 0;
  }

  LOBYTE(v23) = a13 & 1;
  v24 = [v16 initWithClientIdentifier:v32 audioFormat:a3 formatForNewLines:0 transcriberResultDelegate:a4 endpointingResultDelegate:a5 languageDetectorResultDelegate:a6 speechDetectorResultDelegate:a7 queue:a8 transcriberOptions:a9 options:a10 languageDetectorOptions:a11 speechDetectorOptions:a12 restrictedLogging:v23 contextualNamedEntities:v17 didChangeVolatileRange:v21];
  sub_1AC5C3958(a15, a16);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  _Block_release(v21);
  return v24;
}

id sub_1AC652E40(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, void *a10, void *a11, void *a12, char a13, uint64_t a14, uint64_t a15)
{
  v16 = sub_1AC79FF58();

  if (a14)
  {
    v32 = a14;
    v33 = a15;
    OUTLINED_FUNCTION_4_5();
    v29 = 1107296256;
    OUTLINED_FUNCTION_0_6();
    v30 = v17;
    v31 = &block_descriptor_176;
    v18 = _Block_copy(aBlock);
  }

  else
  {
    v18 = 0;
  }

  LOBYTE(v20) = a13 & 1;
  v22 = [v21 initWithClientIdentifier:v16 audioFormat:a3 formatForNewLines:0 transcriberResultDelegate:a4 endpointingResultDelegate:a5 languageDetectorResultDelegate:a6 speechDetectorResultDelegate:a7 queue:a8 transcriberOptions:a9 options:a10 languageDetectorOptions:a11 speechDetectorOptions:a12 restrictedLogging:v20 contextualNamedEntities:0 didChangeVolatileRange:v18];
  sub_1AC5C3958(a14, a15);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  _Block_release(v18);
  return v22;
}

id sub_1AC65313C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9, void *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v25 = sub_1AC79FF58();

  if (a12)
  {
    type metadata accessor for SFContextualNamedEntity();
    sub_1AC7A0148();
    OUTLINED_FUNCTION_108_0();
  }

  else
  {
    v15 = 0;
  }

  if (a13)
  {
    v30 = a13;
    v31 = a14;
    OUTLINED_FUNCTION_4_5();
    v27 = 1107296256;
    OUTLINED_FUNCTION_0_6();
    v28 = v17;
    v29 = &block_descriptor_169;
    v18 = _Block_copy(aBlock);
  }

  else
  {
    v18 = 0;
  }

  LOBYTE(v20) = a11 & 1;
  v21 = [v14 initWithClientIdentifier:v25 audioFormat:a3 formatForNewLines:0 transcriberResultDelegate:a4 endpointingResultDelegate:0 languageDetectorResultDelegate:a7 speechDetectorResultDelegate:a8 queue:a9 transcriberOptions:a10 options:0 languageDetectorOptions:v20 speechDetectorOptions:v15 restrictedLogging:v18 contextualNamedEntities:? didChangeVolatileRange:?];
  sub_1AC5C3958(a13, a14);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  _Block_release(v18);
  return v21;
}

id sub_1AC653444(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9, void *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  v20 = a15;

  v26 = sub_1AC79FF58();

  if (a14)
  {
    type metadata accessor for SFContextualNamedEntity();
    sub_1AC7A0148();
    OUTLINED_FUNCTION_16_5();
  }

  else
  {
    v16 = 0;
  }

  if (a15)
  {
    v32 = a15;
    v33 = a16;
    OUTLINED_FUNCTION_18_4();
    v29 = 1107296256;
    OUTLINED_FUNCTION_0_6();
    v30 = v21;
    v31 = &block_descriptor_162;
    v20 = _Block_copy(aBlock);
  }

  LOBYTE(v23) = a11 & 1;
  v24 = [v25 initWithClientIdentifier:v26 audioFormat:a3 formatForNewLines:0 transcriberResultDelegate:a4 endpointingResultDelegate:0 languageDetectorResultDelegate:a7 speechDetectorResultDelegate:a8 queue:a9 transcriberOptions:a10 options:0 languageDetectorOptions:v23 speechDetectorOptions:v16 restrictedLogging:v20 contextualNamedEntities:? didChangeVolatileRange:?];
  sub_1AC5C3958(a15, a16);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  _Block_release(v20);
  return v24;
}

id sub_1AC653774(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = v14;

  v28 = sub_1AC79FF58();

  if (a12)
  {
    type metadata accessor for SFContextualNamedEntity();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v19 = a7;
    v20 = sub_1AC7A0148();
  }

  else
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v21 = a7;
    v20 = 0;
  }

  if (a13)
  {
    v35 = a13;
    v36 = a14;
    OUTLINED_FUNCTION_18_4();
    v32 = 1107296256;
    OUTLINED_FUNCTION_0_6();
    v33 = v22;
    v34 = &block_descriptor_155;
    v23 = _Block_copy(aBlock);
  }

  else
  {
    v23 = 0;
  }

  LOBYTE(v25) = a9 & 1;
  v26 = [v15 initWithClientIdentifier:v28 audioFormat:a3 formatForNewLines:0 transcriberResultDelegate:a4 endpointingResultDelegate:a5 languageDetectorResultDelegate:0 speechDetectorResultDelegate:0 queue:a6 transcriberOptions:a7 options:a8 languageDetectorOptions:0 speechDetectorOptions:0 restrictedLogging:v25 contextualNamedEntities:v20 didChangeVolatileRange:v23];
  sub_1AC5C3958(a13, a14);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  _Block_release(v23);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v26;
}

id sub_1AC653ABC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, char a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v25 = sub_1AC79FF58();

  if (a10)
  {
    aBlock[4] = a10;
    aBlock[5] = a11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    OUTLINED_FUNCTION_0_6();
    aBlock[2] = v17;
    aBlock[3] = &block_descriptor_148_0;
    v18 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v19 = a7;
    sub_1AC5D9374(a10, a11);
  }

  else
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v20 = a7;
    v18 = 0;
  }

  LOBYTE(v22) = a9 & 1;
  v23 = [v12 initWithClientIdentifier:v25 audioFormat:a3 formatForNewLines:0 transcriberResultDelegate:a4 endpointingResultDelegate:a5 languageDetectorResultDelegate:0 speechDetectorResultDelegate:0 queue:a6 transcriberOptions:a7 options:a8 languageDetectorOptions:0 speechDetectorOptions:0 restrictedLogging:v22 contextualNamedEntities:0 didChangeVolatileRange:v18];
  sub_1AC5C3958(a10, a11);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  _Block_release(v18);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v23;
}

char *sub_1AC653D9C(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v48 = a5;
  v49 = a6;
  v46 = a2;
  v47 = a4;
  v50 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C780, &qword_1AC7AA798);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v41 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C788, &qword_1AC7AA7A0);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v9);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7A0, &unk_1AC7B2560);
  OUTLINED_FUNCTION_40();
  v13 = v12;
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C798, &qword_1AC7B2480);
  OUTLINED_FUNCTION_40();
  v19 = v18;
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C790, &qword_1AC7AA7A8);
  OUTLINED_FUNCTION_40();
  v25 = v24;
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v41 - v27;
  *&v6[OBJC_IVAR___SFSpeechAnalyzer__implementation] = 0;
  v51.receiver = v6;
  v51.super_class = SFSpeechAnalyzer;
  v29 = objc_msgSendSuper2(&v51, sel_init);
  (*(v13 + 104))(v16, *MEMORY[0x1E69E8650], v11);
  v43 = v29;
  v30 = v28;
  v31 = v22;
  sub_1AC7A0298();
  result = (*(v13 + 8))(v16, v11);
  v33 = *&v50[OBJC_IVAR___SFSpeechAnalyzerConfiguration__config];
  if (v33)
  {
    v34 = *(v25 + 16);
    v35 = v44;
    v42 = v30;
    v34(v44, v30, v23);
    __swift_storeEnumTagSinglePayload(v35, 0, 1, v23);
    v36 = v45;
    (*(v19 + 16))(v45, v31, v17);
    __swift_storeEnumTagSinglePayload(v36, 0, 1, v17);
    objc_allocWithZone(type metadata accessor for ObjCSpeechAnalyzer(0));
    v37 = v43;
    v38 = v33;
    v39 = sub_1AC7340EC(v37, v38, v35, v36, v46, v47, v48, v49);

    (*(v19 + 8))(v31, v17);
    (*(v25 + 8))(v42, v23);
    v40 = *&v37[OBJC_IVAR___SFSpeechAnalyzer__implementation];
    *&v37[OBJC_IVAR___SFSpeechAnalyzer__implementation] = v39;

    return v37;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1AC654258(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = v9;
  OUTLINED_FUNCTION_78_0();

  if (!a6)
  {
    v16 = 0;
    if (a7)
    {
      goto LABEL_3;
    }

LABEL_5:
    v18 = 0;
    goto LABEL_6;
  }

  type metadata accessor for SFContextualNamedEntity();
  v16 = sub_1AC7A0148();

  if (!a7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v21[4] = a7;
  v21[5] = a8;
  OUTLINED_FUNCTION_2_5();
  v21[1] = 1107296256;
  OUTLINED_FUNCTION_0_6();
  v21[2] = v17;
  v21[3] = &block_descriptor_137;
  v18 = _Block_copy(v21);

LABEL_6:
  v19 = [v11 initWithConfiguration:v10 options:v8 restrictedLogging:a3 & 1 contextualNamedEntities:v16 didChangeVolatileRange:v18];
  sub_1AC5C3958(a7, a8);

  _Block_release(v18);
  return v19;
}

id sub_1AC654470(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (a4)
  {
    v16[4] = a4;
    v16[5] = a5;
    OUTLINED_FUNCTION_2_5();
    v16[1] = 1107296256;
    OUTLINED_FUNCTION_0_6();
    v16[2] = v12;
    v16[3] = &block_descriptor_130_0;
    v13 = _Block_copy(v16);
  }

  else
  {
    v13 = 0;
  }

  v14 = [v6 initWithConfiguration:a1 options:a2 restrictedLogging:a3 & 1 geoLMRegionID:0 contextualNamedEntities:0 didChangeVolatileRange:v13];
  sub_1AC5C3958(a4, a5);

  _Block_release(v13);
  return v14;
}

char *sub_1AC654608(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C780, &qword_1AC7AA798);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C788, &qword_1AC7AA7A0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v25 - v14;
  *&v5[OBJC_IVAR___SFSpeechAnalyzer__implementation] = 0;
  v25.receiver = v5;
  v25.super_class = SFSpeechAnalyzer;
  result = objc_msgSendSuper2(&v25, sel_init);
  v17 = *&a1[OBJC_IVAR___SFSpeechAnalyzerConfiguration__config];
  if (v17)
  {
    v18 = result;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C790, &qword_1AC7AA7A8);
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v19);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C798, &qword_1AC7B2480);
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v20);
    v21 = objc_allocWithZone(type metadata accessor for ObjCSpeechAnalyzer(0));
    v22 = v18;
    v23 = sub_1AC7340EC(v22, v17, v15, v12, a2, 0, a4, a5);

    v24 = *&v22[OBJC_IVAR___SFSpeechAnalyzer__implementation];
    *&v22[OBJC_IVAR___SFSpeechAnalyzer__implementation] = v23;

    return v22;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1AC65490C()
{
  v1 = *(v0 + OBJC_IVAR___SFSpeechAnalyzer__implementation);
  if (v1)
  {
    v2 = v1;
    sub_1AC73645C();
  }

  else
  {
    __break(1u);
  }
}

void sub_1AC6549C4()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR___SFSpeechAnalyzer__implementation);
  *(v0 + 24) = v1;
  if (v1)
  {
    OUTLINED_FUNCTION_85();
    v3 = v2;
    v4 = OUTLINED_FUNCTION_32_4();
    v5 = OUTLINED_FUNCTION_55(v4);
    *v5 = v6;
    OUTLINED_FUNCTION_9_5(v5);

    sub_1AC73947C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AC654A64()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_15_3();
  v7 = *(v6 + 24);
  v8 = *v1;
  OUTLINED_FUNCTION_18();
  *v9 = v8;

  v10 = *(v8 + 8);

  return v10(v0, v5, v3);
}

uint64_t sub_1AC654B9C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1AC654C44;

  return sub_1AC6549B0();
}

uint64_t sub_1AC654C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_15_3();
  v8 = v7;
  OUTLINED_FUNCTION_19();
  *v9 = v8;
  v11 = *(v10 + 24);
  v12 = *(v10 + 16);
  v13 = *v4;
  OUTLINED_FUNCTION_18();
  *v14 = v13;

  if (v11)
  {
    v15 = *(v8 + 24);
    v16 = v15[2];
    *(v8 + 40) = v3;
    v17 = v8 + 40;
    *(v17 + 8) = a2;
    *(v17 + 16) = a3;
    v16(v15, v17);
    _Block_release(v15);
  }

  v18 = *(v13 + 8);

  return v18();
}

uint64_t sub_1AC654DA8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_1();
}

void sub_1AC654DC0()
{
  v1 = *(v0[4] + OBJC_IVAR___SFSpeechAnalyzer__implementation);
  v0[5] = v1;
  if (v1)
  {
    OUTLINED_FUNCTION_72();
    v2 = v0[3];
    v4 = v3;
    v5 = OUTLINED_FUNCTION_108_0();
    sub_1AC5D9374(v5, v2);
    v6 = swift_task_alloc();
    v0[6] = v6;
    *v6 = v0;
    v6[1] = sub_1AC654E8C;

    sub_1AC7395AC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AC654E8C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_18();
  *v4 = v3;

  OUTLINED_FUNCTION_44();

  return v5();
}

uint64_t sub_1AC655014(const void *a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = _Block_copy(a1);
  v3[3] = _Block_copy(a2);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_1AC658B94;
  }

  else
  {
    v7 = 0;
  }

  v3[4] = v6;
  v3[5] = v7;
  a3;
  v8 = swift_task_alloc();
  v3[6] = v8;
  *v8 = v3;
  v8[1] = sub_1AC65511C;

  return sub_1AC654DA8(v6, v7);
}

uint64_t sub_1AC65511C()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_50();
  v2 = v1;
  OUTLINED_FUNCTION_19();
  *v3 = v2;
  v5 = v4[5];
  v6 = v4[4];
  v7 = v4[3];
  v8 = v4[2];
  v9 = *v0;
  OUTLINED_FUNCTION_18();
  *v10 = v9;

  sub_1AC5C3958(v6, v5);

  if (v7)
  {
    v11 = *(v2 + 24);
    v11[2](v11);
    _Block_release(v11);
  }

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_149_0();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

void sub_1AC655290()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR___SFSpeechAnalyzer__implementation);
  *(v0 + 24) = v1;
  if (v1)
  {
    OUTLINED_FUNCTION_85();
    v3 = v2;
    v4 = OUTLINED_FUNCTION_32_4();
    v5 = OUTLINED_FUNCTION_55(v4);
    *v5 = v6;
    OUTLINED_FUNCTION_9_5(v5);

    sub_1AC7396F4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AC655330()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AC655450, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_44();

    return v7();
  }
}

uint64_t sub_1AC655450()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_44();

  return v1();
}

uint64_t sub_1AC6554CC(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1AC658ED4;

  return sub_1AC65527C();
}

void sub_1AC655588()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR___SFSpeechAnalyzer__implementation);
  *(v0 + 24) = v1;
  if (v1)
  {
    OUTLINED_FUNCTION_85();
    v3 = v2;
    v4 = OUTLINED_FUNCTION_32_4();
    v5 = OUTLINED_FUNCTION_55(v4);
    *v5 = v6;
    OUTLINED_FUNCTION_9_5(v5);

    sub_1AC739954();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AC655628()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AC658EC8, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_44();

    return v7();
  }
}

uint64_t sub_1AC655768(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1AC658ED4;

  return sub_1AC655574();
}

void sub_1AC655824()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR___SFSpeechAnalyzer__implementation);
  *(v0 + 24) = v1;
  if (v1)
  {
    OUTLINED_FUNCTION_150_0();
    OUTLINED_FUNCTION_45();
    v2;
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_55(v3);
    *v4 = v5;
    v4[1] = sub_1AC655628;
    OUTLINED_FUNCTION_149_0();

    sub_1AC739B58(v6, v7, v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AC655918(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1AC658ED4;

  return sub_1AC655810();
}

uint64_t sub_1AC6559C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_2_1();
}

void sub_1AC6559D8()
{
  v1 = *(v0[5] + OBJC_IVAR___SFSpeechAnalyzer__implementation);
  v0[6] = v1;
  if (v1)
  {
    OUTLINED_FUNCTION_85();
    v3 = v2;
    v4 = OUTLINED_FUNCTION_32_4();
    v0[7] = v4;
    *v4 = v0;
    v4[1] = sub_1AC655A88;
    v5 = OUTLINED_FUNCTION_31_0(v0[2]);

    sub_1AC739B58(v5, v6, v7);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AC655A88()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AC655BA8, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_44();

    return v7();
  }
}

uint64_t sub_1AC655BA8()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_44();

  return v1();
}

uint64_t sub_1AC655CA8(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  a5;
  v10 = swift_task_alloc();
  v5[4] = v10;
  *v10 = v5;
  v10[1] = sub_1AC655D7C;

  return sub_1AC6559C0(a1, a2, a3);
}

uint64_t sub_1AC655D7C()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 24);
  v7 = *(v5 + 16);
  v8 = *v1;
  OUTLINED_FUNCTION_18();
  *v9 = v8;

  if (v0)
  {
    if (v6)
    {
      v10 = *(v3 + 24);
      sub_1AC79F738();

      v11 = OUTLINED_FUNCTION_7_5();
      v12(v11);
      _Block_release(v10);
    }

    else
    {
    }
  }

  else if (v6)
  {
    v13 = *(v3 + 24);
    v14 = OUTLINED_FUNCTION_8_4();
    v15(v14);
    _Block_release(v13);
  }

  OUTLINED_FUNCTION_44();

  return v16();
}

void sub_1AC655EF4()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR___SFSpeechAnalyzer__implementation);
  *(v0 + 24) = v1;
  if (v1)
  {
    OUTLINED_FUNCTION_85();
    v3 = v2;
    v4 = OUTLINED_FUNCTION_32_4();
    v5 = OUTLINED_FUNCTION_55(v4);
    *v5 = v6;
    OUTLINED_FUNCTION_9_5(v5);

    sub_1AC739C50();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AC655FB4(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1AC658ED4;

  return sub_1AC655EE0();
}

void sub_1AC65605C()
{
  if (*(v1 + OBJC_IVAR___SFSpeechAnalyzer__implementation))
  {
    OUTLINED_FUNCTION_78_0();
    v4 = v3;
    v0(v2);
  }

  else
  {
    __break(1u);
  }
}

void sub_1AC656158()
{
  OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_99();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;
  v4[4] = sub_1AC6587E8;
  v4[5] = v2;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_31_4();
  v4[2] = sub_1AC656260;
  v4[3] = &block_descriptor_69;
  _Block_copy(v4);
  OUTLINED_FUNCTION_30_2();

  OUTLINED_FUNCTION_38_4(v3, sel_getModelInfoTasksWithCompletionWithError_);
  _Block_release(v1);
}

uint64_t sub_1AC656200(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CD0];
  }

  a3(v4);
}

uint64_t sub_1AC656260(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1AC7A0448();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

void sub_1AC656334(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AC7A0438();
  (*(a2 + 16))(a2, v3);
}

void sub_1AC65639C()
{
  OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_99();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;
  v4[4] = sub_1AC6587D8;
  v4[5] = v2;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_31_4();
  v4[2] = sub_1AC6564AC;
  v4[3] = &block_descriptor_60;
  _Block_copy(v4);
  OUTLINED_FUNCTION_30_2();

  OUTLINED_FUNCTION_38_4(v3, sel_getModelInfoLanguageWithCompletionWithError_);
  _Block_release(v1);
}

uint64_t sub_1AC656444(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(uint64_t, unint64_t))
{
  if (a2)
  {
    v5 = a1;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  a4(v5, v6);
}

uint64_t sub_1AC6564AC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1AC79FF68();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);
}

void sub_1AC656578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1AC79FF58();
  (*(a3 + 16))(a3, v4);
}

void sub_1AC6565D0()
{
  OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_99();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;
  v4[4] = sub_1AC6587C8;
  v4[5] = v2;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_31_4();
  v4[2] = sub_1AC656714;
  v4[3] = &block_descriptor_51;
  _Block_copy(v4);
  OUTLINED_FUNCTION_30_2();

  OUTLINED_FUNCTION_38_4(v3, sel_getRecognitionStatisticsWithCompletionWithError_);
  _Block_release(v1);
}