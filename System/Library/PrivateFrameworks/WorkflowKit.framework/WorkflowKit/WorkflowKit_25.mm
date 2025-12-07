uint64_t sub_1CA4F4FE4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 440) = *(v3 + 112);
  OUTLINED_FUNCTION_21_1();
  v5 = *(v4 + 360);
  v7 = *(v6 + 352);
  if (v8)
  {
    v9 = sub_1CA4F54B4;
  }

  else
  {
    v9 = sub_1CA4F5130;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v5);
}

uint64_t sub_1CA4F5130()
{
  OUTLINED_FUNCTION_39_1();
  v2 = *(v0 + 424);
  v1 = *(v0 + 432);
  v4 = *(v0 + 408);
  v3 = *(v0 + 416);
  v6 = *(v0 + 392);
  v5 = *(v0 + 400);
  v8 = *(v0 + 376);
  v7 = *(v0 + 384);

  v9 = *(v0 + 296);

  OUTLINED_FUNCTION_2_4();

  return v10(v9);
}

uint64_t sub_1CA4F521C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 464) = *(v3 + 48);
  OUTLINED_FUNCTION_21_1();
  v5 = *(v4 + 360);
  v7 = *(v6 + 352);
  if (v8)
  {
    v9 = sub_1CA4F5410;
  }

  else
  {
    v9 = sub_1CA4F5368;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v5);
}

uint64_t sub_1CA4F5368()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 456);

  v2 = *(v0 + 288);

  OUTLINED_FUNCTION_2_4();

  return v3(v2);
}

uint64_t sub_1CA4F5410()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 456);
  v2 = *(v0 + 448);

  swift_willThrow();

  OUTLINED_FUNCTION_5();

  return v3();
}

uint64_t sub_1CA4F54B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_157();
  OUTLINED_FUNCTION_189();
  v33 = *MEMORY[0x1E69E9840];
  v15 = v14[54];
  v16 = v14[53];
  v32 = v14[52];
  v18 = v14[50];
  v17 = v14[51];
  v20 = v14[48];
  v19 = v14[49];
  v21 = v14[46];
  v22 = v14[47];

  swift_willThrow();

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_24();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, v32, a10, v33, a12, a13, a14);
}

uint64_t *sub_1CA4F5588(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(uint64_t, id), uint64_t (*a5)(uint64_t, id))
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v8 = *result;
  if (a3)
  {
    v9 = a3;
    v10 = v8;
    v11 = a4;

    return v11(v10, v9);
  }

  if (a2)
  {
    v9 = a2;
    v10 = v8;
    v11 = a5;

    return v11(v10, v9);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA4F56D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_1CA94C838();
  v4[6] = sub_1CA94C828();
  v6 = sub_1CA94C7C8();

  return MEMORY[0x1EEE6DFA0](sub_1CA4F576C, v6, v5);
}

uint64_t sub_1CA4F576C()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  *(v0 + 56) = _Block_copy(v2);
  if (v1)
  {
    sub_1CA94C3A8();
    v1 = v3;
  }

  *(v0 + 64) = v1;
  v4 = *(v0 + 40);
  v5 = *(v0 + 16);
  v6 = v4;
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = sub_1CA4F585C;

  return WFEntityUpdatingAction.loadDynamicResult(forEnumeration:searchTerm:)();
}

uint64_t sub_1CA4F585C()
{
  OUTLINED_FUNCTION_6();
  v2 = v0;
  v4 = v3;
  v5 = *v1;
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 16);
  v8 = *v1;
  OUTLINED_FUNCTION_13();
  *v9 = v8;

  v10 = *(v5 + 56);

  if (v2)
  {
    sub_1CA948AC8();

    v11 = OUTLINED_FUNCTION_33();
    v12(v11, 0, v4);

    _Block_release(v10);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_33();
    v14(v13, v4, 0);
    _Block_release(v10);
  }

  v15 = *(v8 + 8);

  return v15();
}

void sub_1CA4F5A0C(void *a1, void *a2, char a3, void *a4, void (**a5)(void, void, void))
{
  v10 = swift_allocObject();
  *(v10 + 16) = a5;
  _Block_copy(a5);
  v11 = sub_1CA3F132C(a1, &selRef_name);
  if (v12)
  {
    if (a2)
    {
      sub_1CA311C0C(v11, v12, a2, v20);
    }

    else
    {

      memset(v20, 0, sizeof(v20));
    }

    sub_1CA4FCCB0(v20, v18, &unk_1EC444650, &unk_1CA981C70);
    if (v19)
    {
      sub_1CA4FCCB0(v18, aBlock, &unk_1EC444650, &unk_1CA981C70);
      sub_1CA25B3D0(0, &unk_1EDB9F6B0, 0x1E69ACA90);
      if (swift_dynamicCast())
      {
        (a5)[2](a5, v15, 0);

        sub_1CA27080C(v20, &unk_1EC444650, &unk_1CA981C70);
        __swift_destroy_boxed_opaque_existential_0(aBlock);
LABEL_18:
        sub_1CA27080C(v18, &unk_1EC444650, &unk_1CA981C70);

        _Block_release(a5);
        return;
      }

      sub_1CA25B3D0(0, &qword_1EC445EC0, 0x1E69AC8E0);
      if ((swift_dynamicCast() & 1) != 0 || (sub_1CA25B3D0(0, &qword_1EDB9FB20, 0x1E69AC950), swift_dynamicCast()))
      {
        v13 = [v15 value];
        (a5)[2](a5, v13, 0);

        sub_1CA27080C(v20, &unk_1EC444650, &unk_1CA981C70);
        __swift_destroy_boxed_opaque_existential_0(aBlock);
        goto LABEL_18;
      }

      __swift_destroy_boxed_opaque_existential_0(aBlock);
    }

    if (a2)
    {
      a2 = sub_1CA94C1A8();
    }

    aBlock[4] = sub_1CA3D7FF4;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CA4F60DC;
    aBlock[3] = &block_descriptor_92;
    v14 = _Block_copy(aBlock);

    v16.receiver = a4;
    v16.super_class = type metadata accessor for WFEntityUpdatingAction();
    objc_msgSendSuper2(&v16, sel_getValueForParameterData_ofProcessedParameters_fallingBackToDefaultValue_completionHandler_, a1, a2, a3 & 1, v14);
    _Block_release(v14);

    sub_1CA27080C(v20, &unk_1EC444650, &unk_1CA981C70);
    goto LABEL_18;
  }

  a5[2](a5, 0, 0);

  _Block_release(a5);
}

uint64_t WFEntityUpdatingAction.getValueForParameterData(_:ofProcessedParameters:fallingBackToDefaultValue:completionHandler:)(void *a1, void *a2, char a3, void (*a4)(void), uint64_t a5)
{
  v11 = sub_1CA3F132C(a1, &selRef_name);
  if (!v12)
  {
    return (a4)(0);
  }

  if (a2)
  {
    sub_1CA311C0C(v11, v12, a2, v28);
  }

  else
  {

    memset(v28, 0, sizeof(v28));
  }

  sub_1CA4FCCB0(v28, v26, &unk_1EC444650, &unk_1CA981C70);
  if (!v27)
  {
    goto LABEL_14;
  }

  sub_1CA4FCCB0(v26, aBlock, &unk_1EC444650, &unk_1CA981C70);
  v14 = sub_1CA25B3D0(0, &unk_1EDB9F6B0, 0x1E69ACA90);
  if (!OUTLINED_FUNCTION_24_15(v14, v15))
  {
    v17 = sub_1CA25B3D0(0, &qword_1EC445EC0, 0x1E69AC8E0);
    if (OUTLINED_FUNCTION_24_15(v17, v18) || (v19 = sub_1CA25B3D0(0, &qword_1EDB9FB20, 0x1E69AC950), OUTLINED_FUNCTION_24_15(v19, v20)))
    {
      v21 = [v23 value];
      a4();

      goto LABEL_12;
    }

    __swift_destroy_boxed_opaque_existential_0(aBlock);
LABEL_14:
    if (a2)
    {
      a2 = sub_1CA94C1A8();
    }

    aBlock[4] = a4;
    aBlock[5] = a5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CA4F60DC;
    aBlock[3] = &block_descriptor_7;
    v22 = _Block_copy(aBlock);

    v24.receiver = v5;
    v24.super_class = type metadata accessor for WFEntityUpdatingAction();
    objc_msgSendSuper2(&v24, sel_getValueForParameterData_ofProcessedParameters_fallingBackToDefaultValue_completionHandler_, a1, a2, a3 & 1, v22);
    _Block_release(v22);

    sub_1CA27080C(v28, &unk_1EC444650, &unk_1CA981C70);
    return sub_1CA27080C(v26, &unk_1EC444650, &unk_1CA981C70);
  }

  v16 = v23;
  (a4)(v23, 0);

LABEL_12:
  sub_1CA27080C(v28, &unk_1EC444650, &unk_1CA981C70);
  __swift_destroy_boxed_opaque_existential_0(aBlock);
  return sub_1CA27080C(v26, &unk_1EC444650, &unk_1CA981C70);
}

void sub_1CA4F60DC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1CA4F6260(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_metadataForParameterIdentifier);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = 1 << *(*(v1 + OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_metadataForParameterIdentifier) + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v3;
  v9 = (v6 + 63) >> 6;
  v28 = *(v1 + OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_metadataForParameterIdentifier);
  result = sub_1CA94C218();
  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = __clz(__rbit64(v8)) | (v12 << 6);
      v26 = *(*(v28 + 48) + 16 * v13);
      v14 = *(*(v28 + 56) + 8 * v13);
      sub_1CA94C218();
      v15 = v14;
      v16 = [v15 identifier];
      v17 = sub_1CA94C3A8();
      v19 = v18;

      v20 = [a1 identifier];
      v21 = sub_1CA94C3A8();
      v23 = v22;

      if (v17 == v21 && v19 == v23)
      {

        return v26;
      }

      v25 = sub_1CA94D7F8();

      if (v25)
      {
        break;
      }

      v8 &= v8 - 1;

      v11 = v12;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    return v26;
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

      if (v12 >= v9)
      {

        return 0;
      }

      v8 = *(v4 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1CA4F659C(void *a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v11 = 0x797469746E65;
  v12 = [a2 parameterName];
  v13 = sub_1CA94C3A8();
  v15 = v14;

  if (v13 == 0x797469746E65 && v15 == 0xE600000000000000)
  {

    v17 = 0xE600000000000000;
  }

  else
  {
    v17 = 0xE600000000000000;
    v18 = sub_1CA94D7F8();

    if ((v18 & 1) == 0)
    {
      v19 = [a1 action];
      v11 = sub_1CA4F6260(v19);
      v17 = v20;
    }
  }

  v21 = [a2 dialog];
  if (v21)
  {
    v22 = v21;
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = swift_allocObject();
    v24[2] = v23;
    v24[3] = v11;
    v24[4] = v17;
    v24[5] = a2;
    v34 = a4;
    v35 = v24;
    OUTLINED_FUNCTION_16_19();
    v31 = 1107296256;
    v32 = sub_1CA32E0FC;
    v33 = a5;
    v25 = _Block_copy(aBlock);
    v26 = a2;

    [v22 getResultWithCompletionHandler_];
    _Block_release(v25);
  }

  else
  {
    if (v17)
    {
      v27 = sub_1CA94C368();
    }

    else
    {
      v27 = 0;
    }

    [v6 *a6];
  }
}

void sub_1CA4F67D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, SEL *a7)
{
  OUTLINED_FUNCTION_27_2(a3 + 16, v15);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (a5)
    {
      a5 = sub_1CA94C368();
    }

    if (a1)
    {
      v13 = [a1 captionPrint];
      v14 = sub_1CA94C658();

      if (*(v14 + 16))
      {
        sub_1CA94C218();

        a1 = sub_1CA94C368();
      }

      else
      {

        a1 = 0;
      }
    }

    [v12 *a7];
  }
}

uint64_t WFEntityUpdatingAction.backingActionIdentifiers()()
{
  v1 = sub_1CA94C218();
  sub_1CA4F444C(v1, v2, v3, v4, v5, v6, v7);
  OUTLINED_FUNCTION_87();

  return v0;
}

uint64_t WFEntityUpdatingAction.run(with:)()
{
  OUTLINED_FUNCTION_14();
  v1[48] = v0;
  v1[49] = swift_getObjectType();
  v2 = sub_1CA949F78();
  v1[50] = v2;
  OUTLINED_FUNCTION_12(v2);
  v1[51] = v3;
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v4 = sub_1CA94CEF8();
  v1[54] = v4;
  OUTLINED_FUNCTION_12(v4);
  v1[55] = v5;
  v1[56] = OUTLINED_FUNCTION_45();
  v6 = sub_1CA94CF08();
  v1[57] = v6;
  OUTLINED_FUNCTION_12(v6);
  v1[58] = v7;
  v1[59] = OUTLINED_FUNCTION_45();
  v1[60] = sub_1CA94C838();
  v1[61] = sub_1CA94C828();
  OUTLINED_FUNCTION_87();
  v8 = sub_1CA94C7C8();
  v1[62] = v8;
  v1[63] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1CA4F6BF8, v8, v9);
}

uint64_t sub_1CA4F6BF8()
{
  v1 = [v0[48] connection];
  v0[64] = v1;
  v105 = v0;
  if (!v1)
  {
    goto LABEL_25;
  }

  v102 = v1;
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0[48]) + 0xC0))();
  v0[65] = v2;
  if (!v2)
  {

LABEL_25:

    sub_1CA949C58();
    v37 = sub_1CA949F68();
    v38 = sub_1CA94CC18();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1CA256000, v37, v38, "Missing connection or entity metadata.", v39, 2u);
      MEMORY[0x1CCAA4BF0](v39, -1, -1);
    }

    v40 = OUTLINED_FUNCTION_20_0();
    v41(v40);
    sub_1CA4F85E4();
    swift_willThrow();
    OUTLINED_FUNCTION_44_6();

    OUTLINED_FUNCTION_5();

    return v42();
  }

  v3 = sub_1CA4FC9B8(v0[48]);
  v8 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v9 = v3;
    v10 = *(v3 + 16);
    if (v10)
    {
      v112 = MEMORY[0x1E69E7CC0];
      sub_1CA271524(0, v10, 0, v4, v5, v6, v7);
      v11 = v112;
      v14 = sub_1CA4FCA38(v9);
      v15 = 0;
      v16 = v9 + 64;
      v103 = v12;
      v104 = v10;
      while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(v9 + 32))
      {
        v17 = v14 >> 6;
        if ((*(v16 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
        {
          goto LABEL_83;
        }

        if (*(v9 + 36) != v12)
        {
          goto LABEL_84;
        }

        v107 = v15;
        v109 = v12;
        v106 = v13;
        v18 = (*(v9 + 48) + 16 * v14);
        v19 = *v18;
        v20 = v18[1];
        v22 = *(v112 + 16);
        v21 = *(v112 + 24);
        sub_1CA94C218();
        if (v22 >= v21 >> 1)
        {
          sub_1CA271524(v21 > 1, v22 + 1, 1, v23, v24, v25, v26);
        }

        *(v112 + 16) = v22 + 1;
        v27 = v112 + 16 * v22;
        *(v27 + 32) = v19;
        *(v27 + 40) = v20;
        v28 = 1 << *(v9 + 32);
        if (v14 >= v28)
        {
          goto LABEL_85;
        }

        v16 = v9 + 64;
        v29 = *(v9 + 64 + 8 * v17);
        if ((v29 & (1 << v14)) == 0)
        {
          goto LABEL_86;
        }

        if (*(v9 + 36) != v109)
        {
          goto LABEL_87;
        }

        v30 = v29 & (-2 << (v14 & 0x3F));
        if (v30)
        {
          v28 = __clz(__rbit64(v30)) | v14 & 0x7FFFFFFFFFFFFFC0;
          v31 = v104;
        }

        else
        {
          v32 = v17 << 6;
          v33 = (v9 + 72 + 8 * v17);
          v34 = v17 + 1;
          v31 = v104;
          while (v34 < (v28 + 63) >> 6)
          {
            v36 = *v33++;
            v35 = v36;
            v32 += 64;
            ++v34;
            if (v36)
            {
              sub_1CA2974B8(v14, v109, v106 & 1);
              v28 = __clz(__rbit64(v35)) + v32;
              goto LABEL_22;
            }
          }

          sub_1CA2974B8(v14, v109, v106 & 1);
        }

LABEL_22:
        v13 = 0;
        v15 = v107 + 1;
        v14 = v28;
        v12 = v103;
        if (v107 + 1 == v31)
        {

          v0 = v105;
          v8 = MEMORY[0x1E69E7CC0];
          goto LABEL_32;
        }
      }

LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    v11 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

LABEL_32:
  v44 = v0 + 43;
  v45 = v0[48];
  v0[43] = v11;
  v46 = [v45 parameterIdentifiersNeedingValues];
  v47 = [v46 allKeys];

  v48 = sub_1CA94C658();
  v55 = sub_1CA4F87A0(v48, v49, v50, v51, v52, v53, v54);

  if (v55)
  {
    v56 = v55;
  }

  else
  {
    v56 = v8;
  }

  sub_1CA2B7FF4(v56);
  v57 = v0[43];
  v58 = v45;
  v59 = OUTLINED_FUNCTION_5_3();
  v61 = sub_1CA4F46A4(v59, v60);
  if (v62)
  {
    v63 = *(v57 + 16);
  }

  else
  {
    v63 = v61;
    v110 = v0 + 43;
    v64 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      goto LABEL_92;
    }

    for (i = 16 * v61; ; i += 16)
    {
      v66 = *(v57 + 16);
      if (v64 == v66)
      {
        break;
      }

      if (v64 >= v66)
      {
        __break(1u);
        goto LABEL_82;
      }

      v67 = *(v57 + i + 48);
      v68 = *(v57 + i + 56);
      v69 = v67 == 0x797469746E65 && v68 == 0xE600000000000000;
      if (!v69 && (sub_1CA94D7F8() & 1) == 0)
      {
        if (v64 != v63)
        {
          if (v63 >= v66)
          {
            goto LABEL_89;
          }

          v70 = (v57 + 32 + 16 * v63);
          v72 = *v70;
          v71 = v70[1];
          sub_1CA94C218();
          sub_1CA94C218();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1CA42B234();
            v57 = v75;
          }

          v73 = v57 + 16 * v63;
          *(v73 + 32) = v67;
          *(v73 + 40) = v68;

          if (v64 >= *(v57 + 16))
          {
            goto LABEL_90;
          }

          v74 = v57 + i;
          *(v74 + 48) = v72;
          *(v74 + 56) = v71;

          *v110 = v57;
        }

        ++v63;
      }

      ++v64;
    }

    v0 = v105;
    v44 = v110;
  }

  v76 = *(v57 + 16);
  if (v76 < v63)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
  }

  sub_1CA274E6C(v63, v76);
  v77 = *v44;
  if (!*(*v44 + 16))
  {
    v111 = v44;
    v78 = v0[48] + OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_tableTemplateState;
    OUTLINED_FUNCTION_27_2(v78, (v0 + 38));
    v79 = *(v78 + 8);
    v80 = *(v79 + 16);
    sub_1CA94C218();
    v81 = 0;
    v108 = MEMORY[0x1E69E7CC0];
    v82 = 0;
    while (v80 != v81)
    {
      if (v81 >= *(v79 + 16))
      {
        goto LABEL_88;
      }

      v83 = *(v79 + v82 + 56);
      if (*(v79 + v82 + 64) <= 1u && v83 != 0)
      {
        swift_unknownObjectRetain();
        v85 = v83;
        sub_1CA94C218();
        swift_unknownObjectRetain();
        v86 = [v85 value];
        if (v86)
        {
          v87 = v86;
          sub_1CA94C398();
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      v82 += 64;
      ++v81;
    }

    v88 = *(v108 + 16);
    if (v88)
    {
      v89 = (v108 + 40);
      do
      {
        v91 = *(v89 - 1);
        v90 = *v89;
        swift_bridgeObjectRetain_n();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1CA26DADC();
          v77 = v97;
        }

        v92 = *(v77 + 16);
        if (v92 >= *(v77 + 24) >> 1)
        {
          sub_1CA26DADC();
          v77 = v98;
        }

        v93 = v105[48];
        *(v77 + 16) = v92 + 1;
        v94 = v77 + 16 * v92;
        *(v94 + 32) = v91;
        *(v94 + 40) = v90;
        v95 = [v93 parameterIdentifiersNeedingValues];
        v96 = sub_1CA94C7A8();
        v105[41] = v91;
        v105[42] = v90;
        [v95 __swift_setObject_forKeyedSubscript_];
        swift_unknownObjectRelease();

        v89 += 2;
        --v88;
      }

      while (v88);

      v44 = v111;
      *v111 = v77;
      v0 = v105;
    }

    else
    {

      v0 = v105;
      v44 = v111;
    }
  }

  v99 = v0[48];
  v0[66] = sub_1CA94C828();
  v100 = swift_task_alloc();
  v0[67] = v100;
  v100[2] = v99;
  v100[3] = v44;
  v100[4] = v102;
  v101 = swift_task_alloc();
  v0[68] = v101;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445EC8, &qword_1CA989BA0);
  *v101 = v0;
  v101[1] = sub_1CA4F75D0;

  return MEMORY[0x1EEE6DE38](v0 + 44);
}

uint64_t sub_1CA4F75D0()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  OUTLINED_FUNCTION_2_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13();
  *v5 = v4;
  v2[69] = v0;

  if (v0)
  {
    v6 = v2[62];
    v7 = v2[63];
    v8 = sub_1CA4F82F8;
  }

  else
  {

    v6 = v2[62];
    v7 = v2[63];
    v8 = sub_1CA4F7718;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_1CA4F7718()
{
  v1 = v0[44];
  v0[70] = v1;
  v50 = v1;
  if (!v1)
  {
    goto LABEL_25;
  }

  v49 = v1;
  v2 = [v49 action];
  v3 = [v2 parameters];

  sub_1CA25B3D0(0, &qword_1EDB9FB20, 0x1E69AC950);
  v4 = sub_1CA94C658();

  v5 = sub_1CA25B410(v4);
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      goto LABEL_25;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1CCAA22D0](i, v4);
    }

    else
    {
      if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    v0[71] = v7;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
    }

    v9 = [v7 identifier];
    v10 = sub_1CA94C3A8();
    v12 = v11;

    if (v10 == 0x797469746E65 && v12 == 0xE600000000000000)
    {
      break;
    }

    v14 = sub_1CA94D7F8();

    if (v14)
    {
      goto LABEL_18;
    }
  }

LABEL_18:

  v15 = [v8 value];
  if (!v15 || (v16 = v15, v17 = [v15 value], v16, sub_1CA94D258(), swift_unknownObjectRelease(), sub_1CA25B3D0(0, &unk_1EDB9F6A0, 0x1E69AC7D0), (swift_dynamicCast() & 1) == 0))
  {

LABEL_25:

    sub_1CA949C58();
    v34 = sub_1CA949F68();
    v35 = sub_1CA94CC18();
    v36 = os_log_type_enabled(v34, v35);
    v37 = v0[65];
    v38 = v0[64];
    if (v36)
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1CA256000, v34, v35, "Ran successfully but missing entity result.", v39, 2u);
      MEMORY[0x1CCAA4BF0](v39, -1, -1);
    }

    v40 = OUTLINED_FUNCTION_20_0();
    v41(v40);
    OUTLINED_FUNCTION_77_7();

    OUTLINED_FUNCTION_5();
    goto LABEL_28;
  }

  v18 = v0[65];

  v19 = v0[45];
  v0[72] = v19;
  v20 = [objc_opt_self() policyWithEntityMetadata_];
  v0[47] = 0;
  v21 = [v20 connectionWithError_];
  v0[73] = v21;

  v22 = v0[47];
  if (v21)
  {
    v23 = v0[65];
    v25 = v0[58];
    v24 = v0[59];
    v26 = v0[56];
    v27 = v0[55];
    v47 = v0[57];
    v48 = v0[54];
    sub_1CA25B3D0(0, &unk_1EC445BB0, 0x1E69ACE00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1CA9813B0;
    v29 = v22;
    *(v28 + 32) = [v19 identifier];
    *v24 = v28;
    (*(v25 + 104))(v24, *MEMORY[0x1E69ACAC8], v47);
    *v26 = v23;
    (*(v27 + 104))(v26, *MEMORY[0x1E69ACB00], v48);
    v30 = objc_allocWithZone(MEMORY[0x1E69ACFD8]);
    v31 = v23;
    [v30 init];
    v32 = sub_1CA94CF18();
    v0[74] = v32;
    v0[2] = v0;
    v0[7] = v0 + 46;
    v0[3] = sub_1CA4F7E04;
    v33 = swift_continuation_init();
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4477D0, &qword_1CA988F20);
    v0[18] = MEMORY[0x1E69E9820];
    v0[19] = 1107296256;
    v0[20] = sub_1CA4F4758;
    v0[21] = &block_descriptor_32;
    v0[22] = v33;
    [v21 performConfigurableQuery:v32 completionHandler:?];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  v43 = v0[65];
  v44 = v0[64];
  v45 = v22;

  sub_1CA948AD8();

  swift_willThrow();

  OUTLINED_FUNCTION_5();
LABEL_28:

  return v42();
}

uint64_t sub_1CA4F7E04()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 600) = *(v3 + 48);
  OUTLINED_FUNCTION_21_1();
  v5 = *(v4 + 504);
  v7 = *(v6 + 496);
  if (v8)
  {
    v9 = sub_1CA4F83DC;
  }

  else
  {
    v9 = sub_1CA4F7F50;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v5);
}

uint64_t sub_1CA4F7F50()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[74];
  v2 = v0[73];
  v3 = v0[48];
  v4 = v0[46];
  v0[76] = v4;

  v0[10] = v0;
  v0[11] = sub_1CA4F80B0;
  v5 = swift_continuation_init();
  v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445ED0, &qword_1CA989BA8);
  v0[26] = MEMORY[0x1E69E9820];
  v0[27] = 1107296256;
  v0[28] = sub_1CA4F8934;
  v0[29] = &block_descriptor_35;
  v0[30] = v5;
  [v3 finishRunningWith:v4 completionHandler:v0 + 26];

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1CA4F80B0()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 616) = *(v3 + 112);
  OUTLINED_FUNCTION_21_1();
  v5 = *(v4 + 504);
  v7 = *(v6 + 496);
  if (v8)
  {
    v9 = sub_1CA4F84E8;
  }

  else
  {
    v9 = sub_1CA4F81FC;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v5);
}

uint64_t sub_1CA4F81FC()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 576);
  v3 = *(v0 + 568);
  v4 = *(v0 + 560);
  v5 = *(v0 + 520);

  OUTLINED_FUNCTION_77_7();

  OUTLINED_FUNCTION_5();

  return v6();
}

uint64_t sub_1CA4F82F8()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 520);
  v2 = *(v0 + 512);

  OUTLINED_FUNCTION_44_6();

  OUTLINED_FUNCTION_5();

  return v3();
}

uint64_t sub_1CA4F83DC()
{
  OUTLINED_FUNCTION_39_1();
  v1 = v0[74];
  v2 = v0[73];
  v3 = v0[72];
  v4 = v0[71];
  v5 = v0[70];
  v6 = v0[65];
  v7 = v0[64];

  swift_willThrow();

  OUTLINED_FUNCTION_44_6();

  OUTLINED_FUNCTION_5();

  return v8();
}

uint64_t sub_1CA4F84E8()
{
  OUTLINED_FUNCTION_39_1();
  v1 = v0[76];
  v2 = v0[72];
  v3 = v0[71];
  v4 = v0[70];
  v5 = v0[65];
  v6 = v0[64];

  swift_willThrow();

  OUTLINED_FUNCTION_44_6();

  OUTLINED_FUNCTION_5();

  return v7();
}

id sub_1CA4F85E4()
{
  v0 = sub_1CA94C3A8();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981310;
  *(inited + 32) = sub_1CA94C3A8();
  *(inited + 40) = v4;
  sub_1CA94C438("The action could not run because an internal error occurred.", 60);
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v5 = qword_1EDB9F690;
  v6 = sub_1CA94C368();
  v7 = sub_1CA94C368();

  v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

  v9 = sub_1CA94C3A8();
  v11 = v10;

  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v9;
  *(inited + 56) = v11;
  v12 = sub_1CA94C1E8();
  v13 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  return sub_1CA298568(v0, v2, 16, v12);
}

uint64_t sub_1CA4F87A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a1 + 16);
  v22 = MEMORY[0x1E69E7CC0];
  sub_1CA271524(0, v8, 0, a4, a5, a6, a7);
  v9 = v22;
  v10 = a1 + 32;
  if (v8)
  {
    while (1)
    {
      sub_1CA25B374(v10, v21);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v22 = v9;
      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1CA271524(v15 > 1, v16 + 1, 1, v11, v12, v13, v14);
        v9 = v22;
      }

      *(v9 + 16) = v16 + 1;
      v17 = v9 + 16 * v16;
      *(v17 + 32) = v19;
      *(v17 + 40) = v20;
      v10 += 32;
      if (!--v8)
      {
        return v9;
      }
    }

    return 0;
  }

  return v9;
}

uint64_t sub_1CA4F88C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1CA697B04();
  v7 = sub_1CA94C218();
  sub_1CA4FAF40(v7, a4, a1);
}

uint64_t sub_1CA4F8934(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;

    return sub_1CA35FF80();
  }

  else
  {

    return j__swift_continuation_throwingResume();
  }
}

uint64_t sub_1CA4F89C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1CA94C838();
  v3[5] = sub_1CA94C828();
  v5 = sub_1CA94C7C8();

  return MEMORY[0x1EEE6DFA0](sub_1CA4F8A60, v5, v4);
}

uint64_t sub_1CA4F8A60()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1CA4FD3C0;

  return WFEntityUpdatingAction.run(with:)();
}

uint64_t sub_1CA4F8B18()
{
  OUTLINED_FUNCTION_0();
  v1[26] = v2;
  v1[27] = v0;
  sub_1CA94C838();
  v1[28] = sub_1CA94C828();
  OUTLINED_FUNCTION_87();
  v4 = sub_1CA94C7C8();
  v1[29] = v4;
  v1[30] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1CA4F8BA8, v4, v3);
}

uint64_t sub_1CA4F8BA8()
{
  OUTLINED_FUNCTION_39_1();
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = [v1 value];
  v4 = [v3 valueType];

  v5 = [v1 value];
  v6 = [v2 fullyQualifiedLinkActionIdentifier];
  v7 = [v6 bundleIdentifier];

  if (!v7)
  {
    sub_1CA94C3A8();
    v7 = sub_1CA94C368();
  }

  sub_1CA3F132C(*(v0 + 216), &selRef_displayableAppBundleIdentifier);
  if (v8)
  {
    v9 = sub_1CA94C368();
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v0 + 216);
  [v10 outputDisclosureLevel];
  v11 = OUTLINED_FUNCTION_136();
  v13 = [v11 v12];

  [v10 setOutput_];
  sub_1CA697814(v0 + 144);
  if (*(v0 + 192))
  {
    v14 = *(v0 + 168);
    if (v14)
    {
      v15 = [v14 value];
      if (v15)
      {
        v16 = v15;
        sub_1CA94C398();
      }
    }

    sub_1CA27080C(v0 + 144, &qword_1EC445FA0, &unk_1CA98B5A0);
  }

  else
  {
  }

  OUTLINED_FUNCTION_5();

  return v17();
}

uint64_t sub_1CA4F8F14()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 256) = *(v3 + 48);
  OUTLINED_FUNCTION_21_1();
  v5 = *(v4 + 240);
  v7 = *(v6 + 232);
  if (v8)
  {
    v9 = sub_1CA4F90B0;
  }

  else
  {
    v9 = sub_1CA4F9030;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v5);
}

uint64_t sub_1CA4F9030()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 248);
  sub_1CA27080C(v0 + 144, &qword_1EC445FA0, &unk_1CA98B5A0);

  OUTLINED_FUNCTION_5();

  return v2();
}

uint64_t sub_1CA4F90B0()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 248);

  swift_willThrow();
  sub_1CA27080C(v0 + 144, &qword_1EC445FA0, &unk_1CA98B5A0);

  OUTLINED_FUNCTION_5();

  return v2();
}

double sub_1CA4F9158(void *a1, int a2, void *a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_50_5();
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = a1;
  v8 = a3;
  v9 = a1;
  v10 = OUTLINED_FUNCTION_23();

  return sub_1CA67052C(v10, v11);
}

uint64_t sub_1CA4F91D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1CA94C838();
  v3[5] = sub_1CA94C828();
  v5 = sub_1CA94C7C8();

  return MEMORY[0x1EEE6DFA0](sub_1CA4F926C, v5, v4);
}

uint64_t sub_1CA4F926C()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1CA4F932C;

  return sub_1CA4F8B18();
}

uint64_t sub_1CA4F932C()
{
  OUTLINED_FUNCTION_6();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  OUTLINED_FUNCTION_13();
  *v5 = v4;
  v6 = *(v3 + 32);
  v7 = *(v3 + 16);
  v8 = *v1;
  *v5 = *v1;

  if (v2)
  {
    v9 = sub_1CA948AC8();

    v10 = OUTLINED_FUNCTION_33();
    v11(v10, v9);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_33();
    v13(v12, 0);
  }

  _Block_release(*(v4 + 48));
  v14 = *(v8 + 8);

  return v14();
}

void WFEntityUpdatingAction.finishRunningWithError(_:)(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_preprocessedEntity];
  *&v1[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_preprocessedEntity] = 0;

  if (a1)
  {
    a1 = sub_1CA948AC8();
  }

  v4.receiver = v1;
  v4.super_class = type metadata accessor for WFEntityUpdatingAction();
  objc_msgSendSuper2(&v4, sel_finishRunningWithError_, a1);
}

uint64_t sub_1CA4F9578()
{
  OUTLINED_FUNCTION_0();
  v1[19] = v2;
  v1[20] = v0;
  v1[18] = v3;
  v4 = sub_1CA949F78();
  v1[21] = v4;
  OUTLINED_FUNCTION_12(v4);
  v1[22] = v5;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  sub_1CA94C838();
  v1[25] = sub_1CA94C828();
  OUTLINED_FUNCTION_87();
  v7 = sub_1CA94C7C8();
  v1[26] = v7;
  v1[27] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1CA4F966C, v7, v6);
}

uint64_t sub_1CA4F9CC4()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_2();
  *v5 = v4;
  v2[32] = v6;

  if (v0)
  {

    v7 = v2[26];
    v8 = v2[27];
    v9 = sub_1CA4FA7B8;
  }

  else
  {

    v7 = v2[26];
    v8 = v2[27];
    v9 = sub_1CA4F9E00;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1CA4FA314()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_2();
  *v5 = v4;
  v2[37] = v6;

  if (v0)
  {

    v7 = v2[26];
    v8 = v2[27];
    v9 = sub_1CA4FAC9C;
  }

  else
  {

    v7 = v2[26];
    v8 = v2[27];
    v9 = sub_1CA4FA450;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1CA4FADB8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA4FAE5C;

  return sub_1CA4F9578();
}

uint64_t sub_1CA4FAE5C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v1 = *v0;
  OUTLINED_FUNCTION_13();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4_38();

  return v4(v3);
}

void sub_1CA4FAF40(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443880, &qword_1CA982FB0);
  OUTLINED_FUNCTION_18_0(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445F90, &qword_1CA989C88);
  OUTLINED_FUNCTION_18_0(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v29 - v13;
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = *&v3[OBJC_IVAR____TtC11WorkflowKit19BatchActionExecutor_connection];
    *&v3[OBJC_IVAR____TtC11WorkflowKit19BatchActionExecutor_connection] = a2;
    v17 = a2;

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447FB0, &unk_1CA989C78);
    OUTLINED_FUNCTION_52();
    (*(v19 + 16))(v14, a3, v18);
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v18);
    v20 = OBJC_IVAR____TtC11WorkflowKit19BatchActionExecutor_continuation;
    swift_beginAccess();
    sub_1CA4FCD60(v14, &v3[v20]);
    swift_endAccess();
    v21 = sub_1CA94C218();
    v22 = sub_1CA4FB1B4(v21);
    v23 = OBJC_IVAR____TtC11WorkflowKit19BatchActionExecutor_queuedActionIdentifiers;
    swift_beginAccess();
    *&v3[v23] = v22;

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v25 = Strong;
      [Strong setTotalUnitCount_];
    }

    v26 = sub_1CA94C858();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v26);
    v27 = swift_allocObject();
    v27[2] = 0;
    v27[3] = 0;
    v27[4] = v3;
    v28 = v3;
    sub_1CA30C978();
  }

  else
  {
    v29[1] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447FB0, &unk_1CA989C78);
    sub_1CA94C7E8();
  }
}

uint64_t sub_1CA4FB1B4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = 0;
  v5 = v2 >> 1;
  v6 = v2 - 1;
  for (i = 16 * v2 + 24; ; i -= 16)
  {
    if (v4 == v6)
    {
      goto LABEL_11;
    }

    v8 = *(v1 + 16);
    if (v4 >= v8)
    {
      break;
    }

    if (v6 >= v8)
    {
      goto LABEL_14;
    }

    v10 = *(v1 + v3 + 32);
    v9 = *(v1 + v3 + 40);
    v12 = *(v1 + i - 8);
    v11 = *(v1 + i);
    sub_1CA94C218();
    sub_1CA94C218();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1CA42B234();
      v1 = v15;
    }

    v13 = v1 + v3;
    *(v13 + 32) = v12;
    *(v13 + 40) = v11;

    if (v6 >= *(v1 + 16))
    {
      goto LABEL_15;
    }

    v14 = (v1 + i);
    *(v14 - 1) = v10;
    *v14 = v9;

LABEL_11:
    ++v4;
    --v6;
    v3 += 16;
    if (v5 == v4)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1CA4FB2C8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1CA4FB35C;

  return sub_1CA4FB488();
}

uint64_t sub_1CA4FB35C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 32) = v3;

  v4 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA4FB444()
{
  **(v0 + 16) = *(v0 + 32);
  OUTLINED_FUNCTION_5();
  return v1();
}

uint64_t sub_1CA4FB488()
{
  OUTLINED_FUNCTION_0();
  v1[9] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447FB0, &unk_1CA989C78);
  v1[10] = v2;
  OUTLINED_FUNCTION_12(v2);
  v1[11] = v3;
  v1[12] = OUTLINED_FUNCTION_45();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445F90, &qword_1CA989C88);
  OUTLINED_FUNCTION_18_0(v4);
  v1[13] = OUTLINED_FUNCTION_45();
  v5 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1CA4FB564()
{
  v1 = v0[9];
  v2 = OBJC_IVAR____TtC11WorkflowKit19BatchActionExecutor_queuedActionIdentifiers;
  swift_beginAccess();
  if (*(*(v1 + v2) + 16))
  {
    sub_1CA43FC10();
    if (!v3)
    {
      sub_1CA6A6BB0(*(*(v1 + v2) + 16) - 1);
    }

    v0[14] = v3;
    v4 = v0[9];
    swift_endAccess();
    v5 = v4 + OBJC_IVAR____TtC11WorkflowKit19BatchActionExecutor_provider;
    Strong = swift_unknownObjectWeakLoadStrong();
    v0[15] = Strong;
    if (Strong)
    {
      v7 = *(v5 + 8);
      swift_getObjectType();
      OUTLINED_FUNCTION_70_9(v7);
      v23 = (v8 + *v8);
      v9 = swift_task_alloc();
      v0[16] = v9;
      *v9 = v0;
      v9[1] = sub_1CA4FB828;
      v10 = OUTLINED_FUNCTION_23();

      return v23(v10);
    }

    v12 = v0[13];
    v13 = v0[9];
    v14 = OBJC_IVAR____TtC11WorkflowKit19BatchActionExecutor_continuation;
    OUTLINED_FUNCTION_27_2(v13 + OBJC_IVAR____TtC11WorkflowKit19BatchActionExecutor_continuation, (v0 + 5));
    sub_1CA4FCCB0(v13 + v14, v12, &qword_1EC445F90, &qword_1CA989C88);
    v15 = OUTLINED_FUNCTION_60_6();
    v16 = v0[13];
    if (v15)
    {
      sub_1CA27080C(v0[13], &qword_1EC445F90, &qword_1CA989C88);
    }

    else
    {
      v17 = OUTLINED_FUNCTION_8_21();
      v18(v17);
      sub_1CA27080C(v16, &qword_1EC445F90, &qword_1CA989C88);
      sub_1CA4FCD0C();
      v19 = swift_allocError();
      OUTLINED_FUNCTION_78_6(v19);
      v20 = OUTLINED_FUNCTION_20_0();
      v21(v20);
    }
  }

  else
  {
    swift_endAccess();
  }

  OUTLINED_FUNCTION_2_4();

  return v22(0);
}

uint64_t sub_1CA4FB828()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  v4 = *(v3 + 120);
  v5 = *v0;
  OUTLINED_FUNCTION_13();
  *v6 = v5;
  *(v8 + 136) = v7;

  v9 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1CA4FB940()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[17];
  if (!v1)
  {
LABEL_7:
    v11 = v0[13];
    v12 = v0[9];
    v13 = OBJC_IVAR____TtC11WorkflowKit19BatchActionExecutor_continuation;
    OUTLINED_FUNCTION_27_2(v12 + OBJC_IVAR____TtC11WorkflowKit19BatchActionExecutor_continuation, (v0 + 5));
    sub_1CA4FCCB0(v12 + v13, v11, &qword_1EC445F90, &qword_1CA989C88);
    v14 = OUTLINED_FUNCTION_60_6();
    v15 = v0[13];
    if (v14)
    {
      sub_1CA27080C(v0[13], &qword_1EC445F90, &qword_1CA989C88);
    }

    else
    {
      v16 = OUTLINED_FUNCTION_8_21();
      v17(v16);
      sub_1CA27080C(v15, &qword_1EC445F90, &qword_1CA989C88);
      sub_1CA4FCD0C();
      v18 = swift_allocError();
      OUTLINED_FUNCTION_78_6(v18);
      v19 = OUTLINED_FUNCTION_20_0();
      v20(v19);
    }

    v10 = 0;
    goto LABEL_11;
  }

  v2 = v0[9];
  v3 = *(v2 + OBJC_IVAR____TtC11WorkflowKit19BatchActionExecutor_connection);
  if (!v3)
  {

    goto LABEL_7;
  }

  v4 = *(v2 + OBJC_IVAR____TtC11WorkflowKit19BatchActionExecutor_options);
  v5 = v3;
  v6 = [v5 executorForAction:v1 options:v4 delegate:v2];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [v6 progress];
    [v8 addChild:v9 withPendingUnitCount:1];
  }

  [v6 perform];

  v10 = 1;
LABEL_11:

  OUTLINED_FUNCTION_2_4();

  return v21(v10);
}

void sub_1CA4FBC68(uint64_t a1, uint64_t a2, SEL *a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    [Strong *a3];
  }
}

void sub_1CA4FBD6C(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443880, &qword_1CA982FB0);
  OUTLINED_FUNCTION_18_0(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447FB0, &unk_1CA989C78);
  OUTLINED_FUNCTION_1_0();
  v13 = v12;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v28 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445F90, &qword_1CA989C88);
  OUTLINED_FUNCTION_18_0(v17);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v28 - v19;
  if (a3)
  {
    v21 = OBJC_IVAR____TtC11WorkflowKit19BatchActionExecutor_continuation;
    OUTLINED_FUNCTION_27_2(&v4[OBJC_IVAR____TtC11WorkflowKit19BatchActionExecutor_continuation], v29);
    sub_1CA4FCCB0(&v4[v21], v20, &qword_1EC445F90, &qword_1CA989C88);
    if (__swift_getEnumTagSinglePayload(v20, 1, v11))
    {
      sub_1CA27080C(v20, &qword_1EC445F90, &qword_1CA989C88);
    }

    else
    {
      (*(v13 + 16))(v16, v20, v11);
      v26 = a3;
      sub_1CA27080C(v20, &qword_1EC445F90, &qword_1CA989C88);
      v28[0] = a3;
      sub_1CA94C7D8();
      (*(v13 + 8))(v16, v11);
    }

    v27 = OBJC_IVAR____TtC11WorkflowKit19BatchActionExecutor_queuedActionIdentifiers;
    swift_beginAccess();
    *&v4[v27] = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v22 = sub_1CA94C858();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v22);
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = v4;
    v23[5] = a2;
    v24 = a2;
    v25 = v4;
    sub_1CA30C708();
  }
}

uint64_t sub_1CA4FC020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447FB0, &unk_1CA989C78);
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445F90, &qword_1CA989C88);
  v5[11] = swift_task_alloc();
  v7 = swift_task_alloc();
  v5[12] = v7;
  *v7 = v5;
  v7[1] = sub_1CA4FC154;

  return sub_1CA4FB488();
}

uint64_t sub_1CA4FC154()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 104) = v3;

  v4 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA4FC23C()
{
  OUTLINED_FUNCTION_6();
  if ((*(v0 + 104) & 1) == 0)
  {
    v1 = *(v0 + 88);
    v2 = *(v0 + 48);
    v3 = OBJC_IVAR____TtC11WorkflowKit19BatchActionExecutor_continuation;
    OUTLINED_FUNCTION_27_2(v2 + OBJC_IVAR____TtC11WorkflowKit19BatchActionExecutor_continuation, v0 + 16);
    sub_1CA4FCCB0(v2 + v3, v1, &qword_1EC445F90, &qword_1CA989C88);
    v4 = OUTLINED_FUNCTION_60_6();
    v5 = *(v0 + 88);
    if (v4)
    {
      sub_1CA27080C(*(v0 + 88), &qword_1EC445F90, &qword_1CA989C88);
    }

    else
    {
      v6 = *(v0 + 56);
      v7 = OUTLINED_FUNCTION_8_21();
      v8(v7);
      sub_1CA27080C(v5, &qword_1EC445F90, &qword_1CA989C88);
      *(v0 + 40) = v6;
      v9 = v6;
      sub_1CA94C7E8();
      v10 = OUTLINED_FUNCTION_20_0();
      v11(v10);
    }
  }

  OUTLINED_FUNCTION_5();

  return v12();
}

void sub_1CA4FC404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if ([Strong respondsToSelector_])
    {
      v13 = a2;
      v14 = a3;
      OUTLINED_FUNCTION_16_19();
      v10 = 1107296256;
      v11 = sub_1CA4FC510;
      v12 = &block_descriptor_58;
      v7 = _Block_copy(aBlock);

      [v8 executor:a1 needsAppProtectionUnlockWithCompletionHandler:v7];

      _Block_release(v7);
    }

    else
    {
    }
  }
}

double sub_1CA4FC510(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

id sub_1CA4FC644()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BatchActionExecutor(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1CA4FC70C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1CA94C368();

  sub_1CA25B3D0(0, &qword_1EDB9FB20, 0x1E69AC950);
  v7 = sub_1CA94C648();

  v8 = [v4 initWithMetadata:a1 bundleIdentifier:v6 parameters:v7];

  return v8;
}

void sub_1CA4FC7D4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(*v3 + 16);
  if (v4 < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = *(a3 + 16);
  v7 = __OFSUB__(v6, v5);
  v8 = v6 - v5;
  if (v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (__OFADD__(v4, v8))
  {
LABEL_13:
    __break(1u);
    return;
  }

  sub_1CA32E594(v4 + v8, 1);

  sub_1CA6B0018();
}

void sub_1CA4FC878(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1CA94C368();

  [a3 setPreferredBundleIdentifier_];
}

uint64_t objectdestroy_9Tm()
{

  v1 = OUTLINED_FUNCTION_49_5();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1CA4FC9B8(void *a1)
{
  v1 = [a1 processedParameters];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444280, &qword_1CA983550);
  v3 = sub_1CA94C1C8();

  return v3;
}

uint64_t type metadata accessor for BatchActionExecutor(uint64_t a1)
{
  result = qword_1EC445F70;
  if (!qword_1EC445F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CA4FCAD8(uint64_t a1)
{
  sub_1CA4FCBA4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1CA4FCBA4(uint64_t a1)
{
  if (!qword_1EC445F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447FB0, &unk_1CA989C78);
    v1 = sub_1CA94D098();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC445F80);
    }
  }
}

uint64_t sub_1CA4FCC08()
{
  OUTLINED_FUNCTION_6();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_53_9(v4);

  return sub_1CA4FC020(v6, v7, v8, v2, v1);
}

uint64_t sub_1CA4FCCB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_52();
  v5 = OUTLINED_FUNCTION_23();
  v6(v5);
  return a2;
}

unint64_t sub_1CA4FCD0C()
{
  result = qword_1EC445F98;
  if (!qword_1EC445F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445F98);
  }

  return result;
}

uint64_t sub_1CA4FCD60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445F90, &qword_1CA989C88);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA4FCDD0()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_53_9(v1);

  return sub_1CA4FB2C8(v3);
}

uint64_t sub_1CA4FCE84()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  v1[1] = sub_1CA2E9390;
  v3 = OUTLINED_FUNCTION_20_0();

  return v4(v3);
}

uint64_t objectdestroy_74Tm()
{
  _Block_release(*(v0 + 24));

  v1 = OUTLINED_FUNCTION_50_5();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1CA4FCF6C()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  v1[1] = sub_1CA2E9390;
  v3 = OUTLINED_FUNCTION_20_0();

  return v4(v3);
}

uint64_t sub_1CA4FD014()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  v1[1] = sub_1CA2E9390;
  v3 = OUTLINED_FUNCTION_20_0();

  return v4(v3);
}

void sub_1CA4FD0C8(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      OUTLINED_FUNCTION_20_0();
      v25 = sub_1CA94D5E8();
      v7 = sub_1CA25B3D0(0, &unk_1EDB9F6B0, 0x1E69ACA90);
      OUTLINED_FUNCTION_23_7(v7, v8, v9, v7, v10, v11, v12, v13, v25, v27);
      return;
    }

    goto LABEL_19;
  }

  if ((a3 & 1) == 0)
  {
LABEL_8:
    if ((a1 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > a1)
    {
      if ((*(a4 + 8 * (a1 >> 6) + 64) >> a1))
      {
        if (*(a4 + 36) == a2)
        {
          goto LABEL_12;
        }

LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        return;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_20_0();
  if (sub_1CA94D5C8() != *(a4 + 36))
  {
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_20_0();
  v26 = sub_1CA94D5D8();
  v14 = sub_1CA25B3D0(0, &qword_1EC445B70, 0x1E69AC7D8);
  OUTLINED_FUNCTION_23_7(v14, v15, v16, v14, v17, v18, v19, v20, v26, v27);
  a2 = v28;
  a1 = sub_1CA320E58();
  v22 = v21;

  if ((v22 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v23 = *(*(a4 + 56) + 8 * a1);

  v24 = v23;
}

uint64_t sub_1CA4FD234(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

_BYTE *storeEnumTagSinglePayload for BatchActionExecutor.BatchActionExecutorError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1CA4FD338()
{
  result = qword_1EC445FC0;
  if (!qword_1EC445FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445FC0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_44_6()
{
}

uint64_t OUTLINED_FUNCTION_60_6()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_62_5()
{

  return sub_1CA323E28();
}

uint64_t OUTLINED_FUNCTION_82_3()
{
}

id sub_1CA4FD488()
{
  v344 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981300;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000012;
  *(inited + 48) = 0x80000001CA9C5860;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"Description";
  v352 = inited;
  v357 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1CA97EDF0;
  *(v6 + 32) = @"DescriptionInput";
  v7 = @"Description";
  v8 = @"DescriptionInput";
  v9 = sub_1CA94C438("The window(s) to move", 21);
  v11 = v10;
  v12 = sub_1CA94C438("The window(s) to move", 21);
  v14 = v13;
  v15 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v359 = v16;
  v361 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v333 - v361;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v362 = qword_1EDB9F690;
  v18 = [qword_1EDB9F690 bundleURL];
  v19 = sub_1CA948BA8();
  v360 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v363 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = &v333 - v363;
  sub_1CA948B68();

  v22 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v23 = sub_1CA2F9F14(v9, v11, v12, v14, 0, 0, v17, v21);
  v24 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v6 + 40) = v23;
  *(v6 + 64) = v24;
  *(v6 + 72) = @"DescriptionSummary";
  v358 = v24;
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Moves one or more windows to the specified location.", 52);
  v355 = v27;
  v28 = sub_1CA94C438("Moves one or more windows to the specified location.", 52);
  v30 = v29;
  v356 = &v333;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v333 - v361;
  sub_1CA948D98();
  v32 = [v362 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v333 - v363;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v355, v28, v30, 0, 0, v31, v33);
  *(v6 + 104) = v24;
  *(v6 + 80) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v36 = sub_1CA94C1E8();
  v37 = v357;
  v38 = sub_1CA6B3784(v36);
  v39 = v352;
  v352[15] = v38;
  v39[18] = v37;
  v39[19] = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v40 = swift_initStackObject();
  v350 = xmmword_1CA981350;
  *(v40 + 16) = xmmword_1CA981350;
  *(v40 + 32) = 0x656C7069746C754DLL;
  *(v40 + 40) = 0xE800000000000000;
  v41 = MEMORY[0x1E69E6370];
  *(v40 + 48) = 1;
  *(v40 + 72) = v41;
  strcpy((v40 + 80), "ParameterKey");
  *(v40 + 93) = 0;
  *(v40 + 94) = -5120;
  *(v40 + 96) = 0x776F646E69574657;
  *(v40 + 104) = 0xE800000000000000;
  *(v40 + 120) = MEMORY[0x1E69E6158];
  *(v40 + 128) = 0x6465726975716552;
  *(v40 + 136) = 0xE800000000000000;
  *(v40 + 144) = 1;
  *(v40 + 168) = v41;
  *(v40 + 176) = 0x7365707954;
  *(v40 + 184) = 0xE500000000000000;
  v343 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v40 + 216) = v343;
  *(v40 + 192) = &unk_1F4A02368;
  v42 = @"Input";
  v43 = sub_1CA94C1E8();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v39[20] = v43;
  v39[23] = v44;
  v39[24] = @"Name";
  v45 = @"Name";
  v46 = sub_1CA94C438("Move Window (Action Name)", 25);
  v48 = v47;
  v49 = sub_1CA94C438("Move Window", 11);
  v51 = v50;
  v357 = &v333;
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v333 - v361;
  sub_1CA948D98();
  v53 = [v362 bundleURL];
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v333 - v363;
  sub_1CA948B68();

  v55 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v39[25] = sub_1CA2F9F14(v46, v48, v49, v51, 0, 0, v52, v54);
  v39[28] = v358;
  v39[29] = @"Parameters";
  v351 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v354 = swift_allocObject();
  *(v354 + 16) = xmmword_1CA981410;
  v357 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v355 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v56 = swift_initStackObject();
  *&v349 = v56;
  *(v56 + 16) = xmmword_1CA981370;
  *(v56 + 32) = @"Class";
  *(v56 + 40) = 0xD000000000000016;
  *(v56 + 48) = 0x80000001CA99C4A0;
  v57 = MEMORY[0x1E69E6158];
  *(v56 + 64) = MEMORY[0x1E69E6158];
  *(v56 + 72) = @"DefaultValue";
  *(v56 + 80) = 0x7265746E6543;
  *(v56 + 88) = 0xE600000000000000;
  *(v56 + 104) = v57;
  *(v56 + 112) = @"Items";
  v356 = swift_allocObject();
  *(v356 + 16) = xmmword_1CA983CF0;
  v58 = @"Class";
  v59 = @"DefaultValue";
  v348 = v58;
  v342 = v59;
  v60 = @"Parameters";
  v61 = @"Items";
  v62 = sub_1CA94C438("Top Left (WFPosition)", 21);
  v346 = v63;
  v347 = v62;
  v64 = sub_1CA94C438("Top Left", 8);
  v345 = v65;
  v353 = &v333;
  MEMORY[0x1EEE9AC00](v64);
  v66 = v361;
  sub_1CA948D98();
  v67 = v362;
  v68 = [v362 bundleURL];
  MEMORY[0x1EEE9AC00](v68);
  v69 = &v333 - v363;
  sub_1CA948B68();

  v70 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v71 = sub_1CA2F9F14(v347, v346, v64, v345, 0, 0, &v333 - v66, v69);
  *(v356 + 32) = v71;
  v72 = sub_1CA94C438("Top Center (WFPosition)", 23);
  v346 = v73;
  v347 = v72;
  v74 = sub_1CA94C438("Top Center", 10);
  v345 = v75;
  v353 = &v333;
  MEMORY[0x1EEE9AC00](v74);
  sub_1CA948D98();
  v76 = [v67 bundleURL];
  MEMORY[0x1EEE9AC00](v76);
  v77 = v363;
  sub_1CA948B68();

  v78 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v79 = sub_1CA2F9F14(v347, v346, v74, v345, 0, 0, &v333 - v66, &v333 - v77);
  v80 = v356;
  *(v356 + 40) = v79;
  v81 = sub_1CA94C438("Top Right (WFPosition)", 22);
  v346 = v82;
  v347 = v81;
  v83 = sub_1CA94C438("Top Right", 9);
  v345 = v84;
  v353 = &v333;
  MEMORY[0x1EEE9AC00](v83);
  v85 = v361;
  sub_1CA948D98();
  v86 = [v362 bundleURL];
  MEMORY[0x1EEE9AC00](v86);
  sub_1CA948B68();

  v87 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v80 + 48) = sub_1CA2F9F14(v347, v346, v83, v345, 0, 0, &v333 - v85, &v333 - v77);
  v88 = sub_1CA94C438("Middle Left (WFPosition)", 24);
  v346 = v89;
  v347 = v88;
  v345 = sub_1CA94C438("Middle Left", 11);
  v91 = v90;
  v353 = &v333;
  MEMORY[0x1EEE9AC00](v345);
  v92 = &v333 - v85;
  sub_1CA948D98();
  v93 = v362;
  v94 = [v362 bundleURL];
  MEMORY[0x1EEE9AC00](v94);
  v95 = &v333 - v363;
  sub_1CA948B68();

  v96 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v80 + 56) = sub_1CA2F9F14(v347, v346, v345, v91, 0, 0, v92, v95);
  v97 = sub_1CA94C438("Center (WFPosition)", 19);
  v346 = v98;
  v347 = v97;
  v345 = sub_1CA94C438("Center", 6);
  v100 = v99;
  v353 = &v333;
  MEMORY[0x1EEE9AC00](v345);
  v101 = v361;
  sub_1CA948D98();
  v102 = v93;
  v103 = [v93 bundleURL];
  MEMORY[0x1EEE9AC00](v103);
  v104 = v363;
  sub_1CA948B68();

  v105 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v106 = sub_1CA2F9F14(v347, v346, v345, v100, 0, 0, &v333 - v101, &v333 - v104);
  v107 = v356;
  *(v356 + 64) = v106;
  v108 = sub_1CA94C438("Middle Right (WFPosition)", 25);
  v346 = v109;
  v347 = v108;
  v110 = sub_1CA94C438("Middle Right", 12);
  v345 = v111;
  v353 = &v333;
  MEMORY[0x1EEE9AC00](v110);
  sub_1CA948D98();
  v112 = [v102 bundleURL];
  MEMORY[0x1EEE9AC00](v112);
  sub_1CA948B68();

  v113 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v107 + 72) = sub_1CA2F9F14(v347, v346, v110, v345, 0, 0, &v333 - v101, &v333 - v104);
  v114 = sub_1CA94C438("Bottom Left (WFPosition)", 24);
  v346 = v115;
  v347 = v114;
  v116 = sub_1CA94C438("Bottom Left", 11);
  v118 = v117;
  v353 = &v333;
  MEMORY[0x1EEE9AC00](v116);
  v119 = v361;
  sub_1CA948D98();
  v120 = [v362 bundleURL];
  MEMORY[0x1EEE9AC00](v120);
  sub_1CA948B68();

  v121 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v122 = sub_1CA2F9F14(v347, v346, v116, v118, 0, 0, &v333 - v119, &v333 - v104);
  v123 = v356;
  *(v356 + 80) = v122;
  v124 = sub_1CA94C438("Bottom Center (WFPosition)", 26);
  v346 = v125;
  v347 = v124;
  v126 = sub_1CA94C438("Bottom Center", 13);
  v345 = v127;
  v353 = &v333;
  MEMORY[0x1EEE9AC00](v126);
  v128 = &v333 - v119;
  sub_1CA948D98();
  v129 = v362;
  v130 = [v362 bundleURL];
  MEMORY[0x1EEE9AC00](v130);
  sub_1CA948B68();

  v131 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v123 + 88) = sub_1CA2F9F14(v347, v346, v126, v345, 0, 0, v128, &v333 - v104);
  v132 = sub_1CA94C438("Bottom Right (WFPosition)", 25);
  v346 = v133;
  v347 = v132;
  v134 = sub_1CA94C438("Bottom Right", 12);
  v345 = v135;
  v353 = &v333;
  MEMORY[0x1EEE9AC00](v134);
  v136 = v361;
  sub_1CA948D98();
  v137 = [v129 bundleURL];
  MEMORY[0x1EEE9AC00](v137);
  v138 = v363;
  sub_1CA948B68();

  v139 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v140 = sub_1CA2F9F14(v347, v346, v134, v345, 0, 0, &v333 - v136, &v333 - v138);
  *(v356 + 96) = v140;
  v141 = sub_1CA94C438("Coordinates (WFPosition)", 24);
  v346 = v142;
  v347 = v141;
  v143 = sub_1CA94C438("Coordinates", 11);
  v345 = v144;
  v353 = &v333;
  MEMORY[0x1EEE9AC00](v143);
  sub_1CA948D98();
  v145 = [v362 bundleURL];
  MEMORY[0x1EEE9AC00](v145);
  sub_1CA948B68();

  v146 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v147 = sub_1CA2F9F14(v347, v346, v143, v345, 0, 0, &v333 - v136, &v333 - v138);
  v148 = v356;
  *(v356 + 104) = v147;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v150 = v349;
  *(v349 + 120) = v148;
  v150[18] = v149;
  v150[19] = @"Key";
  v150[20] = 0x697469736F504657;
  v150[21] = 0xEA00000000006E6FLL;
  v150[23] = MEMORY[0x1E69E6158];
  v150[24] = @"Label";
  v151 = @"Key";
  v152 = @"Label";
  v153 = v151;
  v154 = v152;
  v345 = v153;
  v341 = v154;
  v155 = sub_1CA94C438("Position (WFPosition)", 21);
  v157 = v156;
  v158 = sub_1CA94C438("Position", 8);
  v160 = v159;
  v356 = &v333;
  MEMORY[0x1EEE9AC00](v158);
  v161 = &v333 - v361;
  sub_1CA948D98();
  v162 = [v362 bundleURL];
  MEMORY[0x1EEE9AC00](v162);
  v163 = &v333 - v363;
  sub_1CA948B68();

  v164 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v165 = sub_1CA2F9F14(v155, v157, v158, v160, 0, 0, v161, v163);
  v150[28] = v358;
  v150[25] = v165;
  _s3__C3KeyVMa_0(0);
  v356 = v166;
  v353 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v167 = sub_1CA94C1E8();
  v168 = sub_1CA2F864C(v167);
  *(v354 + 32) = v168;
  v169 = swift_allocObject();
  v349 = xmmword_1CA981380;
  *(v169 + 16) = xmmword_1CA981380;
  *(v169 + 32) = @"AllowsDecimalNumbers";
  *(v169 + 40) = 0;
  v170 = v348;
  *(v169 + 64) = MEMORY[0x1E69E6370];
  *(v169 + 72) = v170;
  v347 = 0x80000001CA99C180;
  *(v169 + 80) = 0xD000000000000016;
  *(v169 + 88) = 0x80000001CA99C180;
  v171 = MEMORY[0x1E69E6158];
  v172 = v345;
  *(v169 + 104) = MEMORY[0x1E69E6158];
  *(v169 + 112) = v172;
  strcpy((v169 + 120), "WFXCoordinate");
  *(v169 + 134) = -4864;
  v173 = v341;
  *(v169 + 144) = v171;
  *(v169 + 152) = v173;
  v174 = @"AllowsDecimalNumbers";
  v346 = v170;
  v345 = v172;
  v348 = v173;
  v338 = v174;
  v340 = sub_1CA94C438("X (WFXCoordinate)", 17);
  *&v339 = v175;
  v176 = sub_1CA94C438("X", 1);
  v178 = v177;
  v341 = &v333;
  MEMORY[0x1EEE9AC00](v176);
  v179 = v361;
  sub_1CA948D98();
  v180 = v362;
  v181 = [v362 bundleURL];
  MEMORY[0x1EEE9AC00](v181);
  v182 = &v333 - v363;
  sub_1CA948B68();

  v183 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v169 + 160) = sub_1CA2F9F14(v340, v339, v176, v178, 0, 0, &v333 - v179, v182);
  v184 = v358;
  *(v169 + 184) = v358;
  *(v169 + 192) = @"Placeholder";
  v341 = @"Placeholder";
  v185 = sub_1CA94C438("X (WFXCoordinate)", 17);
  *&v339 = v186;
  v187 = sub_1CA94C438("X", 1);
  v189 = v188;
  v340 = &v333;
  MEMORY[0x1EEE9AC00](v187);
  sub_1CA948D98();
  v190 = [v180 bundleURL];
  MEMORY[0x1EEE9AC00](v190);
  v191 = &v333 - v363;
  sub_1CA948B68();

  v192 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v169 + 200) = sub_1CA2F9F14(v185, v339, v187, v189, 0, 0, &v333 - v179, v191);
  *(v169 + 224) = v184;
  *(v169 + 232) = @"RequiredResources";
  v340 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v193 = swift_allocObject();
  v339 = xmmword_1CA981310;
  *(v193 + 16) = xmmword_1CA981310;
  v337 = @"RequiredResources";
  v194 = MEMORY[0x1E69E6158];
  *(v193 + 32) = sub_1CA94C1E8();
  v336 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v169 + 264) = v336;
  *(v169 + 240) = v193;
  v195 = sub_1CA94C1E8();
  v196 = sub_1CA2F864C(v195);
  *(v354 + 40) = v196;
  v197 = swift_allocObject();
  *(v197 + 16) = v349;
  *(v197 + 32) = v338;
  *(v197 + 40) = 0;
  v199 = v345;
  v198 = v346;
  *(v197 + 64) = MEMORY[0x1E69E6370];
  *(v197 + 72) = v198;
  *(v197 + 80) = 0xD000000000000016;
  *(v197 + 88) = v347;
  *(v197 + 104) = v194;
  *(v197 + 112) = v199;
  strcpy((v197 + 120), "WFYCoordinate");
  *(v197 + 134) = -4864;
  *(v197 + 144) = v194;
  v200 = v348;
  *(v197 + 152) = v348;
  v346 = v198;
  v338 = v199;
  v347 = v200;
  v345 = sub_1CA94C438("Y (WFYCoordinate)", 17);
  v335 = v201;
  v202 = sub_1CA94C438("Y", 1);
  v334 = v203;
  v348 = &v333;
  MEMORY[0x1EEE9AC00](v202);
  v204 = &v333 - v361;
  sub_1CA948D98();
  v205 = [v362 bundleURL];
  MEMORY[0x1EEE9AC00](v205);
  v206 = v363;
  sub_1CA948B68();

  v207 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v197 + 160) = sub_1CA2F9F14(v345, v335, v202, v334, 0, 0, v204, &v333 - v206);
  v208 = v358;
  v209 = v341;
  *(v197 + 184) = v358;
  *(v197 + 192) = v209;
  v348 = v209;
  v341 = sub_1CA94C438("Y (WFYCoordinate)", 17);
  v335 = v210;
  v211 = sub_1CA94C438("Y", 1);
  v334 = v212;
  v345 = &v333;
  MEMORY[0x1EEE9AC00](v211);
  v213 = &v333 - v361;
  sub_1CA948D98();
  v214 = [v362 bundleURL];
  MEMORY[0x1EEE9AC00](v214);
  sub_1CA948B68();

  v215 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v197 + 200) = sub_1CA2F9F14(v341, v335, v211, v334, 0, 0, v213, &v333 - v206);
  v216 = v337;
  *(v197 + 224) = v208;
  *(v197 + 232) = v216;
  v217 = swift_allocObject();
  *(v217 + 16) = v339;
  v218 = MEMORY[0x1E69E6158];
  *(v217 + 32) = sub_1CA94C1E8();
  *(v197 + 264) = v336;
  *(v197 + 240) = v217;
  v219 = sub_1CA94C1E8();
  v220 = sub_1CA2F864C(v219);
  *(v354 + 48) = v220;
  v221 = swift_allocObject();
  *(v221 + 16) = v350;
  v222 = v346;
  *(v221 + 32) = v346;
  *(v221 + 40) = 0xD000000000000019;
  *(v221 + 48) = 0x80000001CA99B030;
  v223 = v338;
  *(v221 + 64) = v218;
  *(v221 + 72) = v223;
  *(v221 + 80) = 0x776F646E69574657;
  *(v221 + 88) = 0xE800000000000000;
  *(v221 + 104) = v218;
  v224 = v347;
  *(v221 + 112) = v347;
  v345 = v222;
  v346 = v223;
  v347 = v224;
  v340 = sub_1CA94C438("Window (WFWindow)", 17);
  *&v339 = v225;
  v338 = sub_1CA94C438("Window", 6);
  v227 = v226;
  v341 = &v333;
  MEMORY[0x1EEE9AC00](v338);
  v228 = v361;
  sub_1CA948D98();
  v229 = v362;
  v230 = [v362 bundleURL];
  v337 = &v333;
  MEMORY[0x1EEE9AC00](v230);
  v231 = &v333 - v363;
  sub_1CA948B68();

  v232 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v221 + 120) = sub_1CA2F9F14(v340, v339, v338, v227, 0, 0, &v333 - v228, v231);
  v233 = v358;
  v234 = v348;
  *(v221 + 144) = v358;
  *(v221 + 152) = v234;
  v340 = sub_1CA94C438("Window (WFWindow)", 17);
  *&v339 = v235;
  v236 = sub_1CA94C438("Window", 6);
  v238 = v237;
  v341 = &v333;
  MEMORY[0x1EEE9AC00](v236);
  v239 = &v333 - v228;
  sub_1CA948D98();
  v240 = [v229 bundleURL];
  MEMORY[0x1EEE9AC00](v240);
  v241 = &v333 - v363;
  sub_1CA948B68();

  v242 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v243 = sub_1CA2F9F14(v340, v339, v236, v238, 0, 0, v239, v241);
  *(v221 + 184) = v233;
  *(v221 + 160) = v243;
  v244 = sub_1CA94C1E8();
  v245 = sub_1CA2F864C(v244);
  v246 = v354;
  *(v354 + 56) = v245;
  v247 = swift_allocObject();
  *(v247 + 16) = v350;
  *(v247 + 32) = v345;
  *(v247 + 40) = 0xD000000000000011;
  *(v247 + 48) = 0x80000001CA99E620;
  v248 = MEMORY[0x1E69E6158];
  v249 = v342;
  *(v247 + 64) = MEMORY[0x1E69E6158];
  *(v247 + 72) = v249;
  *(v247 + 80) = 1;
  v250 = v346;
  *(v247 + 104) = MEMORY[0x1E69E6370];
  *(v247 + 112) = v250;
  strcpy((v247 + 120), "WFBringToFront");
  *(v247 + 135) = -18;
  v251 = v347;
  *(v247 + 144) = v248;
  *(v247 + 152) = v251;
  v252 = sub_1CA94C438("Bring to Front (WFBringToFront)", 31);
  v342 = v253;
  v254 = sub_1CA94C438("Bring to Front", 14);
  v256 = v255;
  *&v350 = &v333;
  MEMORY[0x1EEE9AC00](v254);
  v257 = &v333 - v361;
  sub_1CA948D98();
  v258 = [v362 bundleURL];
  MEMORY[0x1EEE9AC00](v258);
  v259 = &v333 - v363;
  sub_1CA948B68();

  v260 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v261 = sub_1CA2F9F14(v252, v342, v254, v256, 0, 0, v257, v259);
  *(v247 + 184) = v358;
  *(v247 + 160) = v261;
  v262 = sub_1CA94C1E8();
  *(v246 + 64) = sub_1CA2F864C(v262);
  v263 = swift_allocObject();
  *(v263 + 16) = v349;
  *(v263 + 32) = v345;
  *(v263 + 40) = 0xD000000000000018;
  *(v263 + 48) = 0x80000001CA9C5B20;
  *(v263 + 64) = MEMORY[0x1E69E6158];
  *(v263 + 72) = @"Description";
  v264 = @"Description";
  *&v350 = sub_1CA94C438("The display to move the window to. (Display)", 44);
  *&v349 = v265;
  v266 = sub_1CA94C438("The display to move the window to.", 34);
  v268 = v267;
  v355 = &v333;
  MEMORY[0x1EEE9AC00](v266);
  v269 = v361;
  sub_1CA948D98();
  v270 = [v362 bundleURL];
  MEMORY[0x1EEE9AC00](v270);
  v271 = &v333 - v363;
  sub_1CA948B68();

  v272 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v263 + 80) = sub_1CA2F9F14(v350, v349, v266, v268, 0, 0, &v333 - v269, v271);
  *(v263 + 104) = v358;
  *(v263 + 112) = @"DisallowedVariableTypes";
  *(v263 + 120) = &unk_1F4A024A8;
  v273 = v346;
  *(v263 + 144) = v343;
  *(v263 + 152) = v273;
  *(v263 + 160) = 0x79616C70736944;
  *(v263 + 168) = 0xE700000000000000;
  v274 = v347;
  *(v263 + 184) = MEMORY[0x1E69E6158];
  *(v263 + 192) = v274;
  v275 = @"DisallowedVariableTypes";
  *&v350 = sub_1CA94C438("Display (Display)", 17);
  *&v349 = v276;
  v277 = sub_1CA94C438("Display", 7);
  v347 = v278;
  v355 = &v333;
  MEMORY[0x1EEE9AC00](v277);
  v279 = &v333 - v269;
  sub_1CA948D98();
  v280 = v362;
  v281 = [v362 bundleURL];
  MEMORY[0x1EEE9AC00](v281);
  v282 = v363;
  sub_1CA948B68();

  v283 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v263 + 200) = sub_1CA2F9F14(v350, v349, v277, v347, 0, 0, v279, &v333 - v282);
  v284 = v348;
  *(v263 + 224) = v358;
  *(v263 + 232) = v284;
  *&v350 = sub_1CA94C438("Current Display (Display)", 25);
  *&v349 = v285;
  v286 = sub_1CA94C438("Current Display", 15);
  v348 = v287;
  v355 = &v333;
  MEMORY[0x1EEE9AC00](v286);
  v288 = &v333 - v361;
  sub_1CA948D98();
  v289 = [v280 bundleURL];
  MEMORY[0x1EEE9AC00](v289);
  sub_1CA948B68();

  v290 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v291 = sub_1CA2F9F14(v350, v349, v286, v348, 0, 0, v288, &v333 - v282);
  *(v263 + 264) = v358;
  *(v263 + 240) = v291;
  v292 = sub_1CA94C1E8();
  v293 = sub_1CA2F864C(v292);
  v294 = v354;
  *(v354 + 72) = v293;
  v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v296 = v352;
  v352[30] = v294;
  v296[33] = v295;
  v296[34] = @"ParameterSummary";
  v357 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v358 = swift_allocObject();
  *(v358 + 16) = xmmword_1CA981360;
  v356 = "(Display)";
  v297 = @"ParameterSummary";
  v298 = sub_1CA94C438("Move ${WFWindow} to ${WFPosition}", 33);
  v300 = v299;
  v301 = sub_1CA94C438("Move ${WFWindow} to ${WFPosition}", 33);
  v303 = v302;
  v355 = &v333;
  MEMORY[0x1EEE9AC00](v301);
  v304 = &v333 - v361;
  sub_1CA948D98();
  v305 = [v362 bundleURL];
  MEMORY[0x1EEE9AC00](v305);
  v306 = &v333 - v363;
  sub_1CA948B68();

  v307 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v308 = sub_1CA2F9F14(v298, v300, v301, v303, 0, 0, v304, v306);
  v309 = objc_allocWithZone(WFActionParameterSummaryValue);
  v310 = sub_1CA65DD78(0xD000000000000022, v356 | 0x8000000000000000, v308);
  *(v358 + 32) = v310;
  v356 = " to ${WFPosition}";
  v311 = sub_1CA94C438("Move ${WFWindow} to ${WFPosition} ${WFXCoordinate}, ${WFYCoordinate}", 68);
  v313 = v312;
  v314 = sub_1CA94C438("Move ${WFWindow} to ${WFPosition} ${WFXCoordinate}, ${WFYCoordinate}", 68);
  v316 = v315;
  v355 = &v333;
  MEMORY[0x1EEE9AC00](v314);
  v317 = &v333 - v361;
  sub_1CA948D98();
  v318 = [v362 bundleURL];
  MEMORY[0x1EEE9AC00](v318);
  v319 = &v333 - v363;
  sub_1CA948B68();

  v320 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v321 = sub_1CA2F9F14(v311, v313, v314, v316, 0, 0, v317, v319);
  v322 = objc_allocWithZone(WFActionParameterSummaryValue);
  v323 = sub_1CA65DD78(0xD00000000000004BLL, v356 | 0x8000000000000000, v321);
  v325 = v357;
  v324 = v358;
  *(v358 + 40) = v323;
  v326 = sub_1CA65AF90(v324);
  v327 = v352;
  v352[35] = v326;
  v327[38] = v325;
  v327[39] = @"RequiredResources";
  v328 = swift_allocObject();
  *(v328 + 16) = xmmword_1CA9813B0;
  v364 = 2;
  v365 = 0;
  v329 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v330 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v364);
  *(v328 + 32) = v331;
  v327[43] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  v327[40] = v328;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA4FFC80()
{
  v81 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981300;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000010;
  *(inited + 48) = 0x80000001CA9C5D00;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("dnd|disturb|silence", 19);
  v6 = v5;
  v7 = sub_1CA94C438("dnd|disturb|silence", 19);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v86 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v87 = v11;
  v12 = &v75 - v86;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v83 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v85 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v82 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v75 - v82;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v84 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v80 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA97EDF0;
  *(v23 + 32) = @"DescriptionNote";
  v24 = @"Description";
  v25 = @"DescriptionNote";
  v26 = sub_1CA94C438("This action returns nothing if no Focus is active.", 50);
  v77 = v27;
  v78 = v26;
  v28 = sub_1CA94C438("This action returns nothing if no Focus is active.", 50);
  v76 = v29;
  v79 = &v75;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v75 - v86;
  sub_1CA948D98();
  v31 = v83;
  v32 = [v83 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = v82;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v23 + 40) = sub_1CA2F9F14(v78, v77, v28, v76, 0, 0, v30, &v75 - v33);
  *(v23 + 64) = v84;
  *(v23 + 72) = @"DescriptionSummary";
  v35 = @"DescriptionSummary";
  v36 = sub_1CA94C438("Returns the currently active Focus.", 35);
  v77 = v37;
  v78 = v36;
  v38 = sub_1CA94C438("Returns the currently active Focus.", 35);
  v40 = v39;
  v79 = &v75;
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v75 - v86;
  sub_1CA948D98();
  v42 = [v31 bundleURL];
  MEMORY[0x1EEE9AC00](v42);
  sub_1CA948B68();

  v43 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v44 = sub_1CA2F9F14(v78, v77, v38, v40, 0, 0, v41, &v75 - v33);
  *(v23 + 104) = v84;
  *(v23 + 80) = v44;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29EBDC(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v45 = sub_1CA94C1E8();
  v46 = v80;
  *(inited + 160) = sub_1CA6B3784(v45);
  *(inited + 184) = v46;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 0x6F6769646E49;
  *(inited + 208) = 0xE600000000000000;
  v47 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"IconSymbol";
  *(inited + 240) = 0x6C69662E6E6F6F6DLL;
  *(inited + 248) = 0xE90000000000006CLL;
  *(inited + 264) = v47;
  *(inited + 272) = @"Name";
  v48 = @"IconColor";
  v49 = @"IconSymbol";
  v50 = @"Name";
  v51 = sub_1CA94C438("Get Current Focus (Action Name)", 31);
  v53 = v52;
  v54 = sub_1CA94C438("Get Current Focus", 17);
  v56 = v55;
  v80 = &v75;
  MEMORY[0x1EEE9AC00](v54);
  v57 = &v75 - v86;
  sub_1CA948D98();
  v58 = [v83 bundleURL];
  MEMORY[0x1EEE9AC00](v58);
  v59 = &v75 - v82;
  sub_1CA948B68();

  v60 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v51, v53, v54, v56, 0, 0, v57, v59);
  *(inited + 304) = v84;
  *(inited + 312) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v61 = swift_initStackObject();
  *(v61 + 16) = xmmword_1CA981350;
  *(v61 + 32) = 0x75736F6C63736944;
  *(v61 + 40) = 0xEF6C6576654C6572;
  *(v61 + 48) = 0x65746176697250;
  *(v61 + 56) = 0xE700000000000000;
  *(v61 + 72) = MEMORY[0x1E69E6158];
  *(v61 + 80) = 0x656C7069746C754DLL;
  *(v61 + 88) = 0xE800000000000000;
  v62 = MEMORY[0x1E69E6370];
  *(v61 + 96) = 0;
  *(v61 + 120) = v62;
  *(v61 + 128) = 0x614E74757074754FLL;
  *(v61 + 136) = 0xEA0000000000656DLL;
  v63 = @"Output";
  v64 = sub_1CA94C438("Current Focus (Default Output Name)", 35);
  v79 = v65;
  v66 = sub_1CA94C438("Current Focus", 13);
  v68 = v67;
  v80 = &v75;
  MEMORY[0x1EEE9AC00](v66);
  v69 = &v75 - v86;
  sub_1CA948D98();
  v70 = [v83 bundleURL];
  MEMORY[0x1EEE9AC00](v70);
  v71 = &v75 - v82;
  sub_1CA948B68();

  v72 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v61 + 144) = sub_1CA2F9F14(v64, v79, v66, v68, 0, 0, v69, v71);
  *(v61 + 168) = v84;
  *(v61 + 176) = 0x7365707954;
  *(v61 + 184) = 0xE500000000000000;
  *(v61 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v61 + 192) = &unk_1F4A02528;
  v73 = sub_1CA94C1E8();
  *(inited + 344) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 320) = v73;
  type metadata accessor for Key(0);
  sub_1CA29EBDC(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t static ToolKitContentItemUsage.== infix(_:_:)(void **a1, id *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  if (!*a1)
  {
    if (!v5)
    {
      v3 = 0;
      v6 = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (!v5)
  {
LABEL_6:
    sub_1CA500750(*a2, a2[1]);
    sub_1CA500750(v3, v2);
    goto LABEL_7;
  }

  sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);
  sub_1CA500750(v5, v4);
  sub_1CA500750(v3, v2);
  if ((sub_1CA94CFD8() & 1) == 0)
  {
LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  v6 = sub_1CA94CFD8();
LABEL_8:
  sub_1CA500790(v3, v2);
  sub_1CA500790(v5, v4);
  return v6 & 1;
}

id sub_1CA500750(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

void sub_1CA500790(void *a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t sub_1CA5007D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_1CA94AFB8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v42 - v13);
  v15 = *a1;
  if (*a1)
  {
    v16 = *(a1 + 8);
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (!v17)
    {
      *v14 = a2;
      v14[1] = a3;
      (*(v9 + 104))(v14, *MEMORY[0x1E69DB178], v8);
      v31 = *(v9 + 32);
      sub_1CA94C218();
      return v31(a4, v14, v8);
    }

    v18 = v17;
    v45 = a4;
    v44 = v16;
    v19 = [v15 key];
    if (!v19)
    {
      sub_1CA94C3A8();
      v19 = sub_1CA94C368();
    }

    v20 = [v18 parameterMetadataForIdentifier_];

    if (v20)
    {
      if (([v20 capabilities] & 8) != 0)
      {
        v32 = v44;

        v33 = [v32 identifier];
        v34 = sub_1CA94C3A8();
        v43 = v35;

        v36 = [v15 key];
        v37 = sub_1CA94C3A8();
        v39 = v38;

        v40 = v43;
        *v12 = v34;
        v12[1] = v40;
        v12[2] = v37;
        v12[3] = v39;
        (*(v9 + 104))(v12, *MEMORY[0x1E69DB158], v8);
LABEL_14:
        v41 = *(v9 + 32);
        v41(v14, v12, v8);
        return (v41)(v45, v14, v8);
      }
    }

    v21 = sub_1CA500B70();
    v42 = v22;
    v43 = v21;
    v23 = v44;

    v24 = [v15 key];
    v25 = sub_1CA94C3A8();
    v26 = a2;
    v28 = v27;

    v29 = v42;
    *v12 = v43;
    v12[1] = v29;
    v12[2] = v25;
    v12[3] = v28;
    v12[4] = v26;
    v12[5] = a3;
    (*(v9 + 104))(v12, *MEMORY[0x1E69DB160], v8);
    sub_1CA94C218();
    goto LABEL_14;
  }

  *a4 = a2;
  a4[1] = a3;
  (*(v9 + 104))(a4, *MEMORY[0x1E69DB178], v8);

  return sub_1CA94C218();
}

uint64_t sub_1CA500B70()
{
  v1 = [v0 fullyQualifiedLinkActionIdentifier];
  v2 = [v1 actionIdentifier];

  v3 = sub_1CA94C3A8();
  return v3;
}

void sub_1CA500BE8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, char *a9@<X8>)
{
  LODWORD(v132) = a8;
  v126 = a7;
  v127 = a4;
  v128 = a5;
  v134 = a2;
  v135 = a3;
  v130 = a9;
  v118 = sub_1CA94AD08();
  v117 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v131 = &v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FE0, &qword_1CA989EB8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v114 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FE8, &unk_1CA989EC0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v114 - v16;
  v133 = sub_1CA94AE88();
  v18 = *(v133 - 8);
  v19 = MEMORY[0x1EEE9AC00](v133);
  v120 = &v114 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v129 = &v114 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v121 = &v114 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v124 = &v114 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v125 = &v114 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v122 = &v114 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v114 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31);
  v136 = &v114 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v137 = &v114 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v119 = &v114 - v38;
  v40 = *a6;
  v39 = *(a6 + 8);
  v41 = &selRef_arrayWithObject_;
  v123 = v39;
  if (v40)
  {
    objc_opt_self();
    v42 = swift_dynamicCastObjCClass();
    if (v42)
    {
      v43 = v42;
      sub_1CA500750(v40, v39);
      v115 = v39;
      v116 = v40;
      v44 = [v40 key];
      if (!v44)
      {
        sub_1CA94C3A8();
        v44 = sub_1CA94C368();
        v41 = &selRef_arrayWithObject_;
      }

      v45 = [v43 parameterMetadataForIdentifier_];

      if (v45)
      {
        v46 = v45;
        if (([v45 v41[235]] & 8) != 0)
        {
          v86 = sub_1CA94B2B8();
          v114 = v17;
          __swift_storeEnumTagSinglePayload(v17, 1, 1, v86);
          v139 = sub_1CA94CC98();
          v140 = v87;
          sub_1CA94C218();
          MEMORY[0x1CCAA1300](46, 0xE100000000000000);

          v89 = v139;
          v88 = v140;
          v90 = v115;
          v91 = [v115 identifier];

          v92 = v18;
          v93 = sub_1CA94C3A8();
          v95 = v94;

          v139 = v89;
          v140 = v88;
          sub_1CA94C218();
          MEMORY[0x1CCAA1300](v93, v95);

          sub_1CA94C218();
          MEMORY[0x1CCAA1300](46, 0xE100000000000000);

          v97 = v139;
          v96 = v140;
          v98 = [v116 key];
          v99 = sub_1CA94C3A8();
          v101 = v100;

          v139 = v97;
          v140 = v96;
          sub_1CA94C218();
          MEMORY[0x1CCAA1300](v99, v101);

          sub_1CA94C218();
          sub_1CA94ADD8();
          v102 = sub_1CA94ADE8();
          __swift_storeEnumTagSinglePayload(v14, 0, 1, v102);
          v103 = v119;
          sub_1CA94ADF8();
          v104 = v136;
          sub_1CA94AE68();
          v105 = v137;
          sub_1CA94AE58();
          v106 = *(v92 + 8);
          v107 = v46;
          v108 = v133;
          v106(v104, v133);
          v106(v103, v108);
          v109 = *(v92 + 32);
          v109(v103, v105, v108);
          if ([v107 dynamicOptionsSupport] == 2)
          {
            sub_1CA94AE18();
            v110 = v137;
            sub_1CA94AE58();
            v103 = v119;

            v108 = v133;
            v106(v104, v108);
            v106(v103, v108);
            v109(v103, v110, v108);
          }

          else
          {
          }

          v109(v130, v103, v108);
          return;
        }

        v40 = v116;

        v47 = v115;
        v48 = v115;
      }

      else
      {
        v40 = v116;
        v48 = v116;
        v47 = v115;
        v46 = v115;
      }
    }
  }

  v49 = sub_1CA94B2B8();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v49);
  sub_1CA94CC98();
  sub_1CA94C218();
  sub_1CA94ADD8();
  v50 = sub_1CA94ADE8();
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v50);
  sub_1CA94ADF8();
  if (v132 & 1) != 0 && ([a1 v41[235]])
  {
    v119 = (([a1 v41[235]] >> 1) & 1);
  }

  else
  {
    v119 = 0;
  }

  v51 = [a1 v41[235]];
  v132 = a1;
  v52 = v133;
  v138 = v18;
  if ((v51 & 8) != 0)
  {
    v53 = v136;
    sub_1CA94AE68();
    v54 = v137;
    sub_1CA94AE58();
    v55 = v40;
    v56 = *(v18 + 8);
    v56(v53, v52);
    v56(v33, v52);
    v116 = *(v18 + 32);
    (v116)(v33, v54, v52);
    v57 = v125;
    (*(v18 + 16))(v125, v33, v52);
    v58 = v124;
    v139 = v55;
    v140 = v123;
    v59 = v141;
    (*(v128 + 24))(&v139, v126);
    v141 = v59;
    if (v59)
    {
      v56(v57, v52);
      v56(v33, v52);
      return;
    }

    sub_1CA94AE58();
    v56(v58, v52);
    v56(v57, v52);
    v56(v33, v52);
    (v116)(v33, v122, v52);
    v18 = v138;
    a1 = v132;
    v41 = &selRef_arrayWithObject_;
  }

  if (([a1 v41[235]] & 4) != 0)
  {
    v60 = v136;
    sub_1CA94AE68();
    v61 = v137;
    sub_1CA94AE58();
    v62 = *(v18 + 8);
    v62(v60, v52);
    v62(v33, v52);
    v63 = *(v138 + 32);
    v63(v33, v61, v52);
    sub_1CA94AE18();
    sub_1CA94AE58();
    v64 = v60;
    a1 = v132;
    v62(v64, v52);
    v62(v33, v52);
    v41 = &selRef_arrayWithObject_;
    v63(v33, v61, v52);
    v18 = v138;
  }

  if (([a1 v41[235]] & 0x10) != 0)
  {
    v65 = v136;
    sub_1CA94AE68();
    v66 = v137;
    sub_1CA94AE58();
    v67 = *(v18 + 8);
    v67(v65, v52);
    v67(v33, v52);
    v68 = *(v138 + 32);
    v68(v33, v66, v52);
    sub_1CA94AE28();
    sub_1CA94AE58();
    v67(v65, v52);
    v67(v33, v52);
    v41 = &selRef_arrayWithObject_;
    v69 = v66;
    a1 = v132;
    v68(v33, v69, v52);
    v18 = v138;
  }

  if ([a1 v41[235]])
  {
    v70 = v136;
    sub_1CA94AE68();
    v71 = v137;
    sub_1CA94AE58();
    v72 = *(v18 + 8);
    v72(v70, v52);
    v72(v33, v52);
    v73 = *(v138 + 32);
    v73(v33, v71, v52);
    sub_1CA94AE38();
    sub_1CA94AE58();
    v72(v70, v52);
    v72(v33, v52);
    v41 = &selRef_arrayWithObject_;
    v74 = v71;
    a1 = v132;
    v73(v33, v74, v52);
    v18 = v138;
  }

  v75 = [a1 v41[235]];
  v76 = v131;
  if ((v75 & 2) != 0)
  {
    v77 = v136;
    sub_1CA94AE68();
    v78 = v137;
    sub_1CA94AE58();
    v79 = *(v18 + 8);
    v79(v77, v52);
    v79(v33, v52);
    v132 = *(v18 + 32);
    (v132)(v33, v78, v52);
    (*(v18 + 16))(v129, v33, v52);
    v80 = v120;
    if (v119)
    {
      sub_1CA94AE48();
    }

    else
    {
      sub_1CA94AE78();
    }

    v81 = v121;
    v82 = v129;
    sub_1CA94AE58();
    v79(v80, v52);
    v79(v82, v52);
    v79(v33, v52);
    (v132)(v33, v81, v52);
    v18 = v138;
    v76 = v131;
    v41 = &selRef_arrayWithObject_;
  }

  if (([a1 v41[235]] & 0x20) != 0)
  {
    v83 = [a1 inputValueType];
    if (v83)
    {
      v84 = v83;
      v85 = v141;
      sub_1CA94CB68();
      v141 = v85;
      if (v85)
      {
        (*(v18 + 8))(v33, v52);

        return;
      }

      v111 = v136;
      sub_1CA94AE08();
      v112 = v137;
      sub_1CA94AE58();

      v113 = *(v18 + 8);
      v113(v111, v52);
      (*(v117 + 8))(v76, v118);
      v113(v33, v52);
      (*(v18 + 32))(v33, v112, v52);
    }
  }

  (*(v18 + 32))(v130, v33, v52);
}

void static WFToolKitContentItem.toolkitTypeInstance(for:seen:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  sub_1CA94B008();
  OUTLINED_FUNCTION_1_0();
  v77 = v9;
  v78 = v10;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6_0();
  v83 = v12 - v11;
  v13 = type metadata accessor for WFContentItem.ToolKitTypeResolutionContext(0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6_0();
  v17 = v16 - v15;
  v18 = sub_1CA94ADC8();
  OUTLINED_FUNCTION_1_0();
  v73 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_6_0();
  v23 = v22 - v21;
  v79 = a1[1];
  v80 = *a1;
  *(v17 + 32) = 0;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  v24 = *(v14 + 28);
  v25 = *MEMORY[0x1E69DB488];
  sub_1CA94B668();
  OUTLINED_FUNCTION_0_1();
  v27 = v25;
  v28 = v5;
  (*(v26 + 104))(v17 + v24, v27);
  _sSo13WFContentItemC11WorkflowKitE04ToolD21TypeResolutionContextV015measurementUnitF8Provider011outputValueF027displayRepresentationConfig012localizationH0AE0eD0011MeasurementjfK0_pSg_So07LNValueF0CSgAJ07DisplayO13ConfigurationVSo014WFLocalizationH0CtcfcfA1__0();
  *(v17 + *(v14 + 36)) = [objc_opt_self() defaultContext];
  (*(a4 + 8))(v17, a3, a4);
  sub_1CA502C48(v17);
  if (v81)
  {
    return;
  }

  v82 = a4;
  v29 = sub_1CA25B3D0(0, &unk_1EC441810, off_1E836E808);
  v30 = dynamic_cast_existential_1_superclass_conditional(v5, v5, v29, &protocol descriptor for WFToolKitContentItem);
  v32 = a5;
  if (!v30)
  {
    goto LABEL_15;
  }

  v33 = (a2 + 32);
  v34 = *(a2 + 16) + 1;
  while (--v34)
  {
    v35 = *v33;
    v33 += 2;
    if (v35 == a3)
    {
      goto LABEL_15;
    }
  }

  v70 = v31;
  v36 = v30;
  if (sub_1CA502134())
  {
    goto LABEL_15;
  }

  v85[0] = v80;
  v85[1] = v79;
  v37 = sub_1CA50220C(v85);
  v72 = sub_1CA25B410(v37);
  if (v72 < 1)
  {

LABEL_15:
    v49 = swift_allocBox();
    (*(v73 + 32))(v50, v23, v18);
    v51 = MEMORY[0x1E69DAF30];
LABEL_16:
    *v32 = v49;
    v52 = *v51;
    sub_1CA94AD08();
    OUTLINED_FUNCTION_0_1();
    (*(v53 + 104))(v32, v52);
    return;
  }

  v75 = v37;
  v66 = v23;
  v69 = v36;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v39 = [ObjCClassFromMetadata appBundleIdentifier];
  v68 = sub_1CA94C3A8();
  v71 = v40;

  v41 = [ObjCClassFromMetadata displayedAppBundleIdentifier];
  v42 = sub_1CA94C3A8();
  v44 = v43;

  v46 = v42 == sub_1CA94C3A8() && v44 == v45;
  v47 = v28;
  if (v46)
  {
    v48 = 1;
  }

  else
  {
    v48 = sub_1CA94D7F8();
  }

  v85[0] = MEMORY[0x1E69E7CC0];
  v54 = v72;
  sub_1CA2B8C94(0, v72, 0);
  v55 = 0;
  v56 = v85[0];
  v67 = v48 & 1;
  while (v55 < v54)
  {
    v57 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      goto LABEL_32;
    }

    if ((v75 & 0xC000000000000001) != 0)
    {
      v58 = MEMORY[0x1CCAA22D0](v55, v75);
      v59 = v82;
    }

    else
    {
      v59 = v82;
      if (v55 >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v58 = *(v75 + 8 * v55 + 32);
    }

    v86 = v58;
    sub_1CA502478(&v86, v47, v68, v71, v69, v70, v80, v79, v83, v67, a3, v59, &v84);

    v85[0] = v56;
    v61 = *(v56 + 16);
    v60 = *(v56 + 24);
    if (v61 >= v60 >> 1)
    {
      sub_1CA2B8C94(v60 > 1, v61 + 1, 1);
      v56 = v85[0];
    }

    *(v56 + 16) = v61 + 1;
    (*(v78 + 32))(v56 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v61, v83, v77);
    ++v55;
    v46 = v57 == v72;
    v54 = v72;
    if (v46)
    {

      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445FD0, &qword_1CA989E10);
      v49 = swift_allocBox();
      v64 = v63;
      v65 = *(v62 + 48);
      (*(v73 + 32))(v63, v66, v18);
      *(v64 + v65) = v56;
      v51 = MEMORY[0x1E69DAF20];
      v32 = a5;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

BOOL sub_1CA502134()
{
  v0 = [swift_getObjCClassFromMetadata() entityMetadata];
  v1 = [v0 systemProtocolMetadata];
  type metadata accessor for LNSystemEntityProtocolIdentifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447100, &unk_1CA989ED0);
  sub_1CA502E00();
  v2 = sub_1CA94C1C8();

  v3 = sub_1CA311800(*MEMORY[0x1E69AC2D8], v2);

  if (v3)
  {
    swift_unknownObjectRelease();
  }

  return v3 != 0;
}

uint64_t sub_1CA50220C(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  v17 = MEMORY[0x1E69E7CC0];
  if (!*a1 || (objc_opt_self(), (v3 = swift_dynamicCastObjCClass()) == 0))
  {
LABEL_14:
    v12 = sub_1CA5027A8();
    if (!v12)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  v4 = v3;
  v5 = v1;
  v6 = [v2 key];
  if (!v6)
  {
    sub_1CA94C3A8();
    v6 = sub_1CA94C368();
  }

  v7 = [v4 parameterMetadataForIdentifier_];

  if (!v7)
  {
    v7 = v5;
LABEL_13:

    goto LABEL_14;
  }

  sub_1CA502BE4(v7);
  if (!v8)
  {

    goto LABEL_13;
  }

  v9 = [objc_opt_self() sharedProvider];
  v10 = sub_1CA94C368();

  v11 = [swift_getObjCClassFromMetadata() appBundleIdentifier];
  if (!v11)
  {
    sub_1CA94C3A8();
    v11 = sub_1CA94C368();
  }

  v12 = [v9 queryWithQueryIdentifier:v10 fromBundleIdentifier:v11];

  if (v12)
  {

    goto LABEL_15;
  }

  v12 = sub_1CA5027A8();

  if (!v12)
  {
LABEL_18:
    sub_1CA5028BC();
    sub_1CA2B7BD0(v15);
    goto LABEL_19;
  }

LABEL_15:
  v13 = v12;
  MEMORY[0x1CCAA1490]();
  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1CA94C698();
  }

  sub_1CA94C6E8();
  v14 = [v12 capabilities];

  if ((v14 & 0x20) == 0)
  {
    goto LABEL_18;
  }

LABEL_19:

  return v17;
}

uint64_t sub_1CA502478@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12, void *a13)
{
  v51 = a2;
  v52 = a6;
  v50 = a5;
  v48 = a9;
  v49 = a10;
  v18 = sub_1CA94AFB8();
  v44 = *(v18 - 8);
  v45 = v18;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v42 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v36 = (&v36 - v21);
  v43 = sub_1CA94AE88();
  v41 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a1;
  v37 = a7;
  v38 = a8;
  v53 = a7;
  v54 = a8;
  v40 = a12;
  v39 = a11;
  v46 = a3;
  v47 = a4;
  v25 = v55;
  sub_1CA500BE8(v24, a3, a4, v50, v52, &v53, MEMORY[0x1E69E7CC0], v49, v23);

  if (v25)
  {
    *a13 = v25;
  }

  else
  {
    v53 = v37;
    v54 = v38;
    v27 = sub_1CA94CC98();
    v28 = v36;
    sub_1CA5007D4(&v53, v27, v29, v36);

    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4462F0, &qword_1CA989EB0) + 48);
    v32 = v44;
    v31 = v45;
    (*(v44 + 16))(v42, v28, v45);
    sub_1CA94C218();
    v33 = v48;
    sub_1CA94AFC8();
    (*(v32 + 8))(v28, v31);
    (*(v41 + 32))(v33 + v30, v23, v43);
    v34 = *MEMORY[0x1E69DB1C0];
    v35 = sub_1CA94B008();
    return (*(*(v35 - 8) + 104))(v33, v34, v35);
  }

  return result;
}

id sub_1CA5027A8()
{
  v0 = [objc_opt_self() sharedProvider];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [ObjCClassFromMetadata entityMetadata];
  v3 = [v2 identifier];

  if (!v3)
  {
    sub_1CA94C3A8();
    v3 = sub_1CA94C368();
  }

  v4 = [ObjCClassFromMetadata appBundleIdentifier];
  if (!v4)
  {
    sub_1CA94C3A8();
    v4 = sub_1CA94C368();
  }

  v5 = [v0 defaultQueryForEntityIdentifier:v3 fromBundleIdentifier:v4];

  return v5;
}

void sub_1CA5028BC()
{
  v0 = [objc_opt_self() sharedProvider];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [ObjCClassFromMetadata appBundleIdentifier];
  if (!v1)
  {
    sub_1CA94C3A8();
    v1 = sub_1CA94C368();
  }

  v2 = [v0 queriesForBundleIdentifier_];

  sub_1CA25B3D0(0, &qword_1EC4445B0, 0x1E69AC980);
  v3 = sub_1CA94C658();

  v4 = sub_1CA25B410(v3);
  v5 = 0;
  v6 = v3 & 0xC000000000000001;
  v7 = v3 & 0xFFFFFFFFFFFFFF8;
  v8 = &selRef_arrayWithObject_;
  v9 = &selRef_groupedIntermediaryActions;
  while (1)
  {
    if (v4 == v5)
    {

      return;
    }

    if (v6)
    {
      v10 = MEMORY[0x1CCAA22D0](v5, v3);
    }

    else
    {
      if (v5 >= *(v7 + 16))
      {
        goto LABEL_29;
      }

      v10 = *(v3 + 8 * v5 + 32);
    }

    v11 = v10;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (([v10 v8[235]] & 0x20) == 0)
    {

      goto LABEL_25;
    }

    v12 = [v11 resultValueType];
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = [v13 v9[137]];

      v15 = sub_1CA94C3A8();
      v17 = v16;
    }

    else
    {

      v15 = 0;
      v17 = 0;
    }

    v18 = [ObjCClassFromMetadata entityMetadata];
    v19 = v9;
    v20 = [v18 v9[137]];

    v21 = sub_1CA94C3A8();
    v23 = v22;

    if (!v17)
    {

      v8 = &selRef_arrayWithObject_;
      v9 = v19;
      v7 = v3 & 0xFFFFFFFFFFFFFF8;
      v6 = v3 & 0xC000000000000001;
      goto LABEL_25;
    }

    if (v15 == v21 && v17 == v23)
    {

      v6 = v3 & 0xC000000000000001;
      v8 = &selRef_arrayWithObject_;
      v9 = v19;
LABEL_23:
      sub_1CA94D4D8();
      sub_1CA94D518();
      sub_1CA94D528();
      sub_1CA94D4E8();
      goto LABEL_24;
    }

    v25 = sub_1CA94D7F8();

    v6 = v3 & 0xC000000000000001;
    v8 = &selRef_arrayWithObject_;
    v9 = v19;
    if (v25)
    {
      goto LABEL_23;
    }

LABEL_24:
    v7 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_25:
    ++v5;
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t sub_1CA502BE4(void *a1)
{
  v1 = [a1 queryIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1CA94C3A8();

  return v3;
}

uint64_t sub_1CA502C48(uint64_t a1)
{
  v2 = type metadata accessor for WFContentItem.ToolKitTypeResolutionContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dynamic_cast_existential_1_superclass_conditional(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_dynamicCastMetatype();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11WorkflowKit04ToolB16ContentItemUsageO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1CA502D2C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CA502D7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_1CA502DD0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

unint64_t sub_1CA502E00()
{
  result = qword_1EC4436B0;
  if (!qword_1EC4436B0)
  {
    type metadata accessor for LNSystemEntityProtocolIdentifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4436B0);
  }

  return result;
}

id sub_1CA502E8C()
{
  v475 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981550;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000014;
  *(inited + 48) = 0x80000001CA9C5E40;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("picture|edit|editor|photos", 26);
  v6 = v5;
  v7 = sub_1CA94C438("picture|edit|editor|photos", 26);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v510 = v11;
  v507 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v471 - v507;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v509 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v508 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v511 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v471 - v511;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v506 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v504 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  v505 = xmmword_1CA9813C0;
  *(v20 + 16) = xmmword_1CA9813C0;
  *(v20 + 32) = @"DescriptionInput";
  v21 = @"Description";
  v22 = @"DescriptionInput";
  v23 = sub_1CA94C438("Background images", 17);
  v502 = v24;
  v25 = sub_1CA94C438("Background images", 17);
  v27 = v26;
  v503 = &v471;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v471 - v507;
  sub_1CA948D98();
  v29 = v509;
  v30 = [v509 bundleURL];
  v489 = inited;
  v31 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v471 - v511;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v20 + 40) = sub_1CA2F9F14(v23, v502, v25, v27, 0, 0, v28, v32);
  *(v20 + 64) = v506;
  *(v20 + 72) = @"DescriptionResult";
  v34 = @"DescriptionResult";
  v35 = sub_1CA94C438("The combined images", 19);
  v501 = v36;
  v502 = v35;
  v500 = sub_1CA94C438("The combined images", 19);
  v38 = v37;
  v503 = &v471;
  MEMORY[0x1EEE9AC00](v500);
  v39 = v507;
  sub_1CA948D98();
  v40 = [v29 bundleURL];
  MEMORY[0x1EEE9AC00](v40);
  v41 = v511;
  sub_1CA948B68();

  v42 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v20 + 80) = sub_1CA2F9F14(v502, v501, v500, v38, 0, 0, &v471 - v39, &v471 - v41);
  *(v20 + 104) = v506;
  *(v20 + 112) = @"DescriptionSummary";
  v43 = @"DescriptionSummary";
  v44 = sub_1CA94C438("Overlays an image on top of another image.", 42);
  v501 = v45;
  v502 = v44;
  v46 = sub_1CA94C438("Overlays an image on top of another image.", 42);
  v48 = v47;
  v503 = &v471;
  MEMORY[0x1EEE9AC00](v46);
  sub_1CA948D98();
  v49 = [v509 bundleURL];
  MEMORY[0x1EEE9AC00](v49);
  sub_1CA948B68();

  v50 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v51 = sub_1CA2F9F14(v502, v501, v46, v48, 0, 0, &v471 - v39, &v471 - v41);
  *(v20 + 144) = v506;
  *(v20 + 120) = v51;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v52 = sub_1CA94C1E8();
  v53 = v504;
  v54 = sub_1CA6B3784(v52);
  v55 = v489;
  v489[15] = v54;
  v55[18] = v53;
  v55[19] = @"IconColor";
  v55[20] = 1702194242;
  v55[21] = 0xE400000000000000;
  v56 = MEMORY[0x1E69E6158];
  v55[23] = MEMORY[0x1E69E6158];
  v55[24] = @"IconSymbol";
  v55[25] = 0xD00000000000001CLL;
  v55[26] = 0x80000001CA9C5EF0;
  v55[28] = v56;
  v55[29] = @"Input";
  v57 = v55;
  v499 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v58 = swift_initStackObject();
  v498 = xmmword_1CA981350;
  *(v58 + 16) = xmmword_1CA981350;
  *(v58 + 32) = 0x656C7069746C754DLL;
  *(v58 + 40) = 0xE800000000000000;
  v59 = MEMORY[0x1E69E6370];
  *(v58 + 48) = 1;
  *(v58 + 72) = v59;
  strcpy((v58 + 80), "ParameterKey");
  *(v58 + 93) = 0;
  *(v58 + 94) = -5120;
  *(v58 + 96) = 0x7475706E494657;
  *(v58 + 104) = 0xE700000000000000;
  *(v58 + 120) = v56;
  *(v58 + 128) = 0x6465726975716552;
  *(v58 + 136) = 0xE800000000000000;
  *(v58 + 144) = 1;
  *(v58 + 168) = v59;
  *(v58 + 176) = 0x7365707954;
  v60 = v59;
  *(v58 + 184) = 0xE500000000000000;
  v487 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v58 + 216) = v487;
  *(v58 + 192) = &unk_1F4A02558;
  v61 = @"IconColor";
  v62 = @"IconSymbol";
  v63 = @"Input";
  v64 = sub_1CA94C1E8();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v504 = v65;
  v57[30] = v64;
  v57[33] = v65;
  v57[34] = @"InputPassthrough";
  *(v57 + 280) = 0;
  v57[38] = v60;
  v57[39] = @"Name";
  v66 = @"InputPassthrough";
  v67 = @"Name";
  v68 = sub_1CA94C438("Overlay Image (Action Name)", 27);
  v70 = v69;
  v71 = sub_1CA94C438("Overlay Image", 13);
  v73 = v72;
  v503 = &v471;
  MEMORY[0x1EEE9AC00](v71);
  v74 = &v471 - v507;
  sub_1CA948D98();
  v75 = [v509 bundleURL];
  MEMORY[0x1EEE9AC00](v75);
  v76 = &v471 - v511;
  sub_1CA948B68();

  v77 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v78 = sub_1CA2F9F14(v68, v70, v71, v73, 0, 0, v74, v76);
  v79 = v489;
  v489[40] = v78;
  v80 = v506;
  v79[43] = v506;
  v79[44] = @"Output";
  v81 = swift_allocObject();
  *(v81 + 16) = v498;
  *(v81 + 32) = 0x75736F6C63736944;
  *(v81 + 40) = 0xEF6C6576654C6572;
  *(v81 + 48) = 0x63696C627550;
  *(v81 + 56) = 0xE600000000000000;
  *(v81 + 72) = MEMORY[0x1E69E6158];
  *(v81 + 80) = 0x656C7069746C754DLL;
  *(v81 + 88) = 0xE800000000000000;
  *(v81 + 96) = 1;
  *(v81 + 120) = MEMORY[0x1E69E6370];
  *(v81 + 128) = 0x614E74757074754FLL;
  *(v81 + 136) = 0xEA0000000000656DLL;
  v82 = @"Output";
  v83 = sub_1CA94C438("Overlaid Image (Default Output Name)", 36);
  v502 = v84;
  v85 = sub_1CA94C438("Overlaid Image", 14);
  v87 = v86;
  v503 = &v471;
  MEMORY[0x1EEE9AC00](v85);
  v88 = &v471 - v507;
  sub_1CA948D98();
  v89 = [v509 bundleURL];
  MEMORY[0x1EEE9AC00](v89);
  v90 = &v471 - v511;
  sub_1CA948B68();

  v91 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v81 + 144) = sub_1CA2F9F14(v83, v502, v85, v87, 0, 0, v88, v90);
  *(v81 + 168) = v80;
  *(v81 + 176) = 0x7365707954;
  *(v81 + 216) = v487;
  *(v81 + 184) = 0xE500000000000000;
  *(v81 + 192) = &unk_1F4A02588;
  v92 = MEMORY[0x1E69E6158];
  v93 = sub_1CA94C1E8();
  v94 = v489;
  v489[45] = v93;
  v94[48] = v504;
  v94[49] = @"Parameters";
  v496 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v504 = swift_allocObject();
  *(v504 + 16) = xmmword_1CA983CF0;
  v503 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v502 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v95 = swift_allocObject();
  *(v95 + 16) = v498;
  v497 = 0x80000001CA99B030;
  v486 = 0xD000000000000019;
  *(v95 + 32) = @"Class";
  *(v95 + 40) = 0xD000000000000019;
  *(v95 + 48) = 0x80000001CA99B030;
  *(v95 + 64) = v92;
  *(v95 + 72) = @"Key";
  *(v95 + 80) = 0x6567616D494657;
  *(v95 + 88) = 0xE700000000000000;
  *(v95 + 104) = v92;
  *(v95 + 112) = @"Label";
  v96 = @"Class";
  v97 = @"Key";
  v98 = @"Label";
  v99 = v96;
  v100 = v97;
  v101 = v98;
  v494 = v99;
  v493 = v100;
  v495 = v101;
  v102 = @"Parameters";
  v500 = sub_1CA94C438("Image (WFImage)", 15);
  v492 = v103;
  v104 = sub_1CA94C438("Image", 5);
  v491 = v105;
  v501 = &v471;
  MEMORY[0x1EEE9AC00](v104);
  v106 = v507;
  sub_1CA948D98();
  v107 = v509;
  v108 = [v509 bundleURL];
  MEMORY[0x1EEE9AC00](v108);
  v109 = &v471 - v511;
  sub_1CA948B68();

  v110 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v95 + 120) = sub_1CA2F9F14(v500, v492, v104, v491, 0, 0, &v471 - v106, v109);
  v111 = v506;
  *(v95 + 144) = v506;
  *(v95 + 152) = @"Placeholder";
  v492 = @"Placeholder";
  v500 = sub_1CA94C438("Image (WFImage)", 15);
  v491 = v112;
  v113 = sub_1CA94C438("Image", 5);
  *&v490 = v114;
  v501 = &v471;
  MEMORY[0x1EEE9AC00](v113);
  v115 = &v471 - v106;
  sub_1CA948D98();
  v116 = [v107 bundleURL];
  MEMORY[0x1EEE9AC00](v116);
  v117 = v511;
  sub_1CA948B68();

  v118 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v119 = sub_1CA2F9F14(v500, v491, v113, v490, 0, 0, v115, &v471 - v117);
  *(v95 + 184) = v111;
  *(v95 + 160) = v119;
  _s3__C3KeyVMa_0(0);
  v501 = v120;
  v500 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v121 = sub_1CA94C1E8();
  v122 = sub_1CA2F864C(v121);
  *(v504 + 32) = v122;
  v123 = swift_allocObject();
  *(v123 + 16) = v498;
  v125 = v493;
  v124 = v494;
  v126 = v486;
  *(v123 + 32) = v494;
  *(v123 + 40) = v126;
  *(v123 + 48) = v497;
  v127 = MEMORY[0x1E69E6158];
  *(v123 + 64) = MEMORY[0x1E69E6158];
  *(v123 + 72) = v125;
  *(v123 + 80) = 0x7475706E494657;
  *(v123 + 88) = 0xE700000000000000;
  v128 = v495;
  *(v123 + 104) = v127;
  *(v123 + 112) = v128;
  v491 = v124;
  v494 = v125;
  v495 = v128;
  v493 = sub_1CA94C438("Image (WFInput)", 15);
  *&v490 = v129;
  v130 = sub_1CA94C438("Image", 5);
  v488 = v131;
  v497 = &v471;
  MEMORY[0x1EEE9AC00](v130);
  v132 = &v471 - v507;
  sub_1CA948D98();
  v133 = v509;
  v134 = [v509 bundleURL];
  MEMORY[0x1EEE9AC00](v134);
  sub_1CA948B68();

  v135 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v123 + 120) = sub_1CA2F9F14(v493, v490, v130, v488, 0, 0, v132, &v471 - v117);
  v136 = v506;
  v137 = v492;
  *(v123 + 144) = v506;
  *(v123 + 152) = v137;
  *&v483 = v137;
  v138 = sub_1CA94C438("Image (WFInput)", 15);
  v492 = v139;
  v493 = v138;
  v140 = sub_1CA94C438("Image", 5);
  *&v490 = v141;
  v497 = &v471;
  MEMORY[0x1EEE9AC00](v140);
  v142 = v507;
  sub_1CA948D98();
  v143 = [v133 bundleURL];
  MEMORY[0x1EEE9AC00](v143);
  sub_1CA948B68();

  v144 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v145 = sub_1CA2F9F14(v493, v492, v140, v490, 0, 0, &v471 - v142, &v471 - v117);
  *(v123 + 184) = v136;
  *(v123 + 160) = v145;
  v146 = sub_1CA94C1E8();
  v147 = sub_1CA2F864C(v146);
  *(v504 + 40) = v147;
  v148 = swift_allocObject();
  *(v148 + 16) = v498;
  v474 = 0xD000000000000011;
  v149 = v491;
  *(v148 + 32) = v491;
  *(v148 + 40) = 0xD000000000000011;
  *(v148 + 48) = 0x80000001CA99E620;
  v150 = MEMORY[0x1E69E6158];
  *(v148 + 64) = MEMORY[0x1E69E6158];
  *(v148 + 72) = @"DefaultValue";
  *(v148 + 80) = 1;
  v151 = v494;
  v152 = v495;
  *(v148 + 104) = MEMORY[0x1E69E6370];
  *(v148 + 112) = v151;
  v497 = 0xD000000000000017;
  *&v498 = 0x80000001CA9C5F90;
  *(v148 + 120) = 0xD000000000000017;
  *(v148 + 128) = 0x80000001CA9C5F90;
  *(v148 + 144) = v150;
  *(v148 + 152) = v152;
  v153 = @"DefaultValue";
  v493 = v149;
  v494 = v151;
  v495 = v152;
  v492 = v153;
  v154 = sub_1CA94C438("Show Image Editor (WFShouldShowImageEditor)", 43);
  v156 = v155;
  v157 = sub_1CA94C438("Show Image Editor", 17);
  v159 = v158;
  v491 = &v471;
  MEMORY[0x1EEE9AC00](v157);
  v160 = &v471 - v142;
  sub_1CA948D98();
  v161 = [v509 bundleURL];
  MEMORY[0x1EEE9AC00](v161);
  v162 = &v471 - v511;
  sub_1CA948B68();

  v163 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v164 = sub_1CA2F9F14(v154, v156, v157, v159, 0, 0, v160, v162);
  *(v148 + 184) = v506;
  *(v148 + 160) = v164;
  v165 = sub_1CA94C1E8();
  v166 = sub_1CA2F864C(v165);
  *(v504 + 48) = v166;
  v167 = swift_allocObject();
  v488 = v167;
  v484 = xmmword_1CA981380;
  *(v167 + 16) = xmmword_1CA981380;
  v491 = 0xD000000000000016;
  v169 = v492;
  v168 = v493;
  *(v167 + 32) = v493;
  *(v167 + 40) = 0xD000000000000016;
  *(v167 + 48) = 0x80000001CA99C4A0;
  v170 = MEMORY[0x1E69E6158];
  *(v167 + 64) = MEMORY[0x1E69E6158];
  *(v167 + 72) = v169;
  *(v167 + 80) = 0x7265746E6543;
  *(v167 + 88) = 0xE600000000000000;
  *(v167 + 104) = v170;
  *(v167 + 112) = @"Items";
  v496 = swift_allocObject();
  *(v496 + 1) = xmmword_1CA981410;
  v482 = v168;
  v485 = v169;
  v171 = @"Items";
  v492 = sub_1CA94C438("Center (WFImagePosition)", 24);
  *&v490 = v172;
  v173 = sub_1CA94C438("Center", 6);
  v481 = v174;
  v493 = &v471;
  MEMORY[0x1EEE9AC00](v173);
  v175 = v507;
  sub_1CA948D98();
  v176 = [v509 bundleURL];
  MEMORY[0x1EEE9AC00](v176);
  v177 = v511;
  sub_1CA948B68();

  v178 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v179 = sub_1CA2F9F14(v492, v490, v173, v481, 0, 0, &v471 - v175, &v471 - v177);
  v496[4] = v179;
  v492 = sub_1CA94C438("Top Left (WFImagePosition)", 26);
  *&v490 = v180;
  v181 = sub_1CA94C438("Top Left", 8);
  v481 = v182;
  v493 = &v471;
  MEMORY[0x1EEE9AC00](v181);
  v183 = &v471 - v175;
  sub_1CA948D98();
  v184 = v509;
  v185 = [v509 bundleURL];
  MEMORY[0x1EEE9AC00](v185);
  sub_1CA948B68();

  v186 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v187 = sub_1CA2F9F14(v492, v490, v181, v481, 0, 0, v183, &v471 - v177);
  v188 = v496;
  v496[5] = v187;
  v492 = sub_1CA94C438("Top Right (WFImagePosition)", 27);
  *&v490 = v189;
  v190 = sub_1CA94C438("Top Right", 9);
  v481 = v191;
  v493 = &v471;
  MEMORY[0x1EEE9AC00](v190);
  v192 = v507;
  sub_1CA948D98();
  v193 = [v184 bundleURL];
  MEMORY[0x1EEE9AC00](v193);
  v194 = v511;
  sub_1CA948B68();

  v195 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v188[6] = sub_1CA2F9F14(v492, v490, v190, v481, 0, 0, &v471 - v192, &v471 - v194);
  v492 = sub_1CA94C438("Bottom Left (WFImagePosition)", 29);
  *&v490 = v196;
  v481 = sub_1CA94C438("Bottom Left", 11);
  v198 = v197;
  v493 = &v471;
  MEMORY[0x1EEE9AC00](v481);
  v199 = &v471 - v192;
  sub_1CA948D98();
  v200 = v509;
  v201 = [v509 bundleURL];
  MEMORY[0x1EEE9AC00](v201);
  sub_1CA948B68();

  v202 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v188[7] = sub_1CA2F9F14(v492, v490, v481, v198, 0, 0, v199, &v471 - v194);
  v492 = sub_1CA94C438("Bottom Right (WFImagePosition)", 30);
  *&v490 = v203;
  v204 = sub_1CA94C438("Bottom Right", 12);
  v481 = v205;
  v493 = &v471;
  MEMORY[0x1EEE9AC00](v204);
  v206 = v507;
  sub_1CA948D98();
  v207 = [v200 bundleURL];
  MEMORY[0x1EEE9AC00](v207);
  v208 = v511;
  sub_1CA948B68();

  v209 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v210 = sub_1CA2F9F14(v492, v490, v204, v481, 0, 0, &v471 - v206, &v471 - v208);
  v496[8] = v210;
  v492 = sub_1CA94C438("Custom (WFImagePosition)", 24);
  *&v490 = v211;
  v212 = sub_1CA94C438("Custom", 6);
  v481 = v213;
  v493 = &v471;
  MEMORY[0x1EEE9AC00](v212);
  sub_1CA948D98();
  v214 = [v200 bundleURL];
  MEMORY[0x1EEE9AC00](v214);
  sub_1CA948B68();

  v215 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v216 = sub_1CA2F9F14(v492, v490, v212, v481, 0, 0, &v471 - v206, &v471 - v208);
  v217 = v496;
  v496[9] = v216;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v219 = v488;
  v488[15] = v217;
  v220 = v494;
  v221 = v495;
  v219[18] = v218;
  v219[19] = v220;
  v219[20] = 0x506567616D494657;
  v219[21] = 0xEF6E6F697469736FLL;
  v219[23] = MEMORY[0x1E69E6158];
  v219[24] = v221;
  v480 = v220;
  v478 = v221;
  v222 = sub_1CA94C438("Position (WFImagePosition)", 26);
  v224 = v223;
  v225 = sub_1CA94C438("Position", 8);
  v227 = v226;
  v496 = &v471;
  MEMORY[0x1EEE9AC00](v225);
  v228 = &v471 - v507;
  sub_1CA948D98();
  v229 = [v509 bundleURL];
  MEMORY[0x1EEE9AC00](v229);
  v230 = &v471 - v511;
  sub_1CA948B68();

  v231 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v219[25] = sub_1CA2F9F14(v222, v224, v225, v227, 0, 0, v228, v230);
  v219[28] = v506;
  v219[29] = @"RequiredResources";
  v496 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v232 = swift_allocObject();
  v490 = xmmword_1CA981310;
  *(v232 + 16) = xmmword_1CA981310;
  v233 = swift_allocObject();
  *(v233 + 16) = v505;
  strcpy((v233 + 32), "WFParameterKey");
  *(v233 + 47) = -18;
  v234 = v498;
  *(v233 + 48) = v497;
  *(v233 + 56) = v234;
  v494 = 0x80000001CA993570;
  v235 = MEMORY[0x1E69E6158];
  *(v233 + 72) = MEMORY[0x1E69E6158];
  *(v233 + 80) = 0xD000000000000010;
  *(v233 + 88) = 0x80000001CA993570;
  *(v233 + 96) = 0;
  *(v233 + 120) = MEMORY[0x1E69E6370];
  *(v233 + 128) = 0x72756F7365524657;
  *(v233 + 168) = v235;
  v492 = 0xD00000000000001BLL;
  v493 = 0x80000001CA993590;
  *(v233 + 136) = 0xEF7373616C436563;
  *(v233 + 144) = 0xD00000000000001BLL;
  *(v233 + 152) = 0x80000001CA993590;
  v479 = @"RequiredResources";
  *(v232 + 32) = sub_1CA94C1E8();
  v495 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  v219[33] = v495;
  v219[30] = v232;
  v236 = sub_1CA94C1E8();
  v237 = sub_1CA2F864C(v236);
  *(v504 + 56) = v237;
  v238 = swift_allocObject();
  *(v238 + 16) = v484;
  v488 = 0x80000001CA99C180;
  v239 = v482;
  v240 = v491;
  *(v238 + 32) = v482;
  *(v238 + 40) = v240;
  *(v238 + 48) = 0x80000001CA99C180;
  v241 = v480;
  *(v238 + 64) = v235;
  *(v238 + 72) = v241;
  strcpy((v238 + 80), "WFImageWidth");
  *(v238 + 93) = 0;
  *(v238 + 94) = -5120;
  *(v238 + 104) = v235;
  v242 = v478;
  *(v238 + 112) = v478;
  v481 = v239;
  v480 = v241;
  v482 = v242;
  v243 = sub_1CA94C438("Width (WFImageWidth)", 20);
  v476 = v244;
  v477 = v243;
  v473 = sub_1CA94C438("Width", 5);
  v246 = v245;
  v478 = &v471;
  MEMORY[0x1EEE9AC00](v473);
  v247 = v507;
  sub_1CA948D98();
  v248 = [v509 bundleURL];
  MEMORY[0x1EEE9AC00](v248);
  v249 = &v471 - v511;
  sub_1CA948B68();

  v250 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v238 + 120) = sub_1CA2F9F14(v477, v476, v473, v246, 0, 0, &v471 - v247, v249);
  v251 = v506;
  v252 = v483;
  *(v238 + 144) = v506;
  *(v238 + 152) = v252;
  *&v483 = v252;
  v253 = sub_1CA94C438("Auto (WFImageWidth)", 19);
  v476 = v254;
  v477 = v253;
  v255 = sub_1CA94C438("Auto", 4);
  v257 = v256;
  v478 = &v471;
  MEMORY[0x1EEE9AC00](v255);
  sub_1CA948D98();
  v258 = [v509 bundleURL];
  MEMORY[0x1EEE9AC00](v258);
  v259 = &v471 - v511;
  sub_1CA948B68();

  v260 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v261 = sub_1CA2F9F14(v477, v476, v255, v257, 0, 0, &v471 - v247, v259);
  v262 = v479;
  *(v238 + 160) = v261;
  *(v238 + 184) = v251;
  *(v238 + 192) = v262;
  v263 = swift_allocObject();
  *(v263 + 16) = v490;
  v264 = swift_allocObject();
  *(v264 + 16) = v505;
  strcpy((v264 + 32), "WFParameterKey");
  *(v264 + 47) = -18;
  v265 = v498;
  *(v264 + 48) = v497;
  *(v264 + 56) = v265;
  v266 = MEMORY[0x1E69E6158];
  *(v264 + 72) = MEMORY[0x1E69E6158];
  *(v264 + 80) = 0xD000000000000010;
  *(v264 + 88) = v494;
  *(v264 + 96) = 0;
  *(v264 + 120) = MEMORY[0x1E69E6370];
  *(v264 + 128) = 0x72756F7365524657;
  *(v264 + 168) = v266;
  *(v264 + 136) = 0xEF7373616C436563;
  v267 = v493;
  *(v264 + 144) = v492;
  *(v264 + 152) = v267;
  v476 = v262;
  *(v263 + 32) = sub_1CA94C1E8();
  *(v238 + 200) = v263;
  *(v238 + 224) = v495;
  *(v238 + 232) = @"TextAlignment";
  *(v238 + 264) = v266;
  *(v238 + 240) = 0x7468676952;
  *(v238 + 248) = 0xE500000000000000;
  v478 = @"TextAlignment";
  v268 = sub_1CA94C1E8();
  v269 = sub_1CA2F864C(v268);
  *(v504 + 64) = v269;
  v270 = swift_allocObject();
  *(v270 + 16) = v484;
  v272 = v480;
  v271 = v481;
  v273 = v491;
  *(v270 + 32) = v481;
  *(v270 + 40) = v273;
  *(v270 + 48) = v488;
  *(v270 + 64) = v266;
  *(v270 + 72) = v272;
  strcpy((v270 + 80), "WFImageHeight");
  *(v270 + 94) = -4864;
  v274 = v482;
  *(v270 + 104) = v266;
  *(v270 + 112) = v274;
  v479 = v271;
  v477 = v272;
  v482 = v274;
  v275 = sub_1CA94C438("Height (WFImageHeight)", 22);
  v480 = v276;
  v481 = v275;
  v277 = sub_1CA94C438("Height", 6);
  v473 = v278;
  *&v484 = &v471;
  MEMORY[0x1EEE9AC00](v277);
  v279 = v507;
  sub_1CA948D98();
  v280 = v509;
  v281 = [v509 bundleURL];
  v472 = &v471;
  MEMORY[0x1EEE9AC00](v281);
  v282 = v511;
  sub_1CA948B68();

  v283 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v270 + 120) = sub_1CA2F9F14(v481, v480, v277, v473, 0, 0, &v471 - v279, &v471 - v282);
  v284 = v506;
  v285 = v483;
  *(v270 + 144) = v506;
  *(v270 + 152) = v285;
  *&v484 = v285;
  v286 = sub_1CA94C438("Auto (WFImageHeight)", 20);
  v480 = v287;
  v481 = v286;
  v473 = sub_1CA94C438("Auto", 4);
  v289 = v288;
  *&v483 = &v471;
  MEMORY[0x1EEE9AC00](v473);
  sub_1CA948D98();
  v290 = [v280 bundleURL];
  MEMORY[0x1EEE9AC00](v290);
  sub_1CA948B68();

  v291 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v270 + 160) = sub_1CA2F9F14(v481, v480, v473, v289, 0, 0, &v471 - v279, &v471 - v282);
  v292 = v476;
  *(v270 + 184) = v284;
  *(v270 + 192) = v292;
  v293 = swift_allocObject();
  *(v293 + 16) = v490;
  v294 = swift_allocObject();
  *(v294 + 16) = v505;
  strcpy((v294 + 32), "WFParameterKey");
  *(v294 + 47) = -18;
  v295 = v498;
  *(v294 + 48) = v497;
  *(v294 + 56) = v295;
  v296 = MEMORY[0x1E69E6158];
  *(v294 + 72) = MEMORY[0x1E69E6158];
  *(v294 + 80) = 0xD000000000000010;
  *(v294 + 88) = v494;
  *(v294 + 96) = 0;
  v297 = MEMORY[0x1E69E6370];
  *(v294 + 120) = MEMORY[0x1E69E6370];
  *(v294 + 128) = 0x72756F7365524657;
  *(v294 + 168) = v296;
  *(v294 + 136) = 0xEF7373616C436563;
  v298 = v493;
  *(v294 + 144) = v492;
  *(v294 + 152) = v298;
  v481 = v292;
  *(v293 + 32) = sub_1CA94C1E8();
  *(v270 + 200) = v293;
  v299 = v478;
  *(v270 + 224) = v495;
  *(v270 + 232) = v299;
  *(v270 + 264) = v296;
  *(v270 + 240) = 0x7468676952;
  *(v270 + 248) = 0xE500000000000000;
  v480 = v299;
  v300 = sub_1CA94C1E8();
  v301 = sub_1CA2F864C(v300);
  *(v504 + 72) = v301;
  v302 = swift_allocObject();
  v483 = xmmword_1CA981400;
  *(v302 + 16) = xmmword_1CA981400;
  *(v302 + 32) = @"AllowsDecimalNumbers";
  *(v302 + 40) = 1;
  *(v302 + 64) = v297;
  v303 = v479;
  v304 = v491;
  *(v302 + 72) = v479;
  *(v302 + 80) = v304;
  *(v302 + 88) = v488;
  v305 = v477;
  *(v302 + 104) = v296;
  *(v302 + 112) = v305;
  *(v302 + 120) = 0x586567616D494657;
  *(v302 + 128) = 0xE800000000000000;
  *(v302 + 144) = v296;
  v306 = v482;
  *(v302 + 152) = v482;
  v307 = @"AllowsDecimalNumbers";
  v478 = v303;
  v476 = v305;
  v477 = v306;
  v482 = v307;
  v308 = sub_1CA94C438("X Coordinate (WFImageX)", 23);
  v472 = v309;
  v473 = v308;
  v310 = sub_1CA94C438("X Coordinate", 12);
  v471 = v311;
  v479 = &v471;
  MEMORY[0x1EEE9AC00](v310);
  v312 = v507;
  sub_1CA948D98();
  v313 = v509;
  v314 = [v509 bundleURL];
  MEMORY[0x1EEE9AC00](v314);
  v315 = &v471 - v511;
  sub_1CA948B68();

  v316 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v302 + 160) = sub_1CA2F9F14(v473, v472, v310, v471, 0, 0, &v471 - v312, v315);
  v317 = v506;
  v318 = v484;
  *(v302 + 184) = v506;
  *(v302 + 192) = v318;
  v479 = v318;
  v319 = sub_1CA94C438("0 (WFImageX)", 12);
  v472 = v320;
  v473 = v319;
  v321 = sub_1CA94C438("0", 1);
  v323 = v322;
  *&v484 = &v471;
  MEMORY[0x1EEE9AC00](v321);
  v324 = &v471 - v312;
  sub_1CA948D98();
  v325 = [v313 bundleURL];
  MEMORY[0x1EEE9AC00](v325);
  v326 = &v471 - v511;
  sub_1CA948B68();

  v327 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v302 + 200) = sub_1CA2F9F14(v473, v472, v321, v323, 0, 0, v324, v326);
  v328 = v481;
  *(v302 + 224) = v317;
  *(v302 + 232) = v328;
  v329 = swift_allocObject();
  v484 = xmmword_1CA97EDF0;
  *(v329 + 16) = xmmword_1CA97EDF0;
  v330 = swift_allocObject();
  *(v330 + 16) = v505;
  strcpy((v330 + 32), "WFParameterKey");
  *(v330 + 47) = -18;
  v331 = v498;
  *(v330 + 48) = v497;
  *(v330 + 56) = v331;
  v332 = MEMORY[0x1E69E6158];
  *(v330 + 72) = MEMORY[0x1E69E6158];
  *(v330 + 80) = 0xD000000000000010;
  v333 = v493;
  v334 = v494;
  *(v330 + 88) = v494;
  *(v330 + 96) = 0;
  *(v330 + 120) = MEMORY[0x1E69E6370];
  *(v330 + 128) = 0x72756F7365524657;
  *(v330 + 168) = v332;
  v335 = v492;
  *(v330 + 136) = 0xEF7373616C436563;
  *(v330 + 144) = v335;
  *(v330 + 152) = v333;
  v472 = v481;
  *(v329 + 32) = sub_1CA94C1E8();
  v336 = swift_allocObject();
  *(v336 + 16) = v505;
  strcpy((v336 + 32), "WFParameterKey");
  *(v336 + 47) = -18;
  *(v336 + 48) = 0x506567616D494657;
  *(v336 + 56) = 0xEF6E6F697469736FLL;
  *(v336 + 72) = v332;
  *(v336 + 80) = 0xD000000000000010;
  *(v336 + 88) = v334;
  *(v336 + 96) = 0x6D6F74737543;
  *(v336 + 104) = 0xE600000000000000;
  *(v336 + 120) = v332;
  *(v336 + 128) = 0x72756F7365524657;
  *(v336 + 168) = v332;
  *(v336 + 136) = 0xEF7373616C436563;
  *(v336 + 144) = v335;
  *(v336 + 152) = v333;
  *(v329 + 40) = sub_1CA94C1E8();
  *(v302 + 240) = v329;
  v337 = v480;
  *(v302 + 264) = v495;
  *(v302 + 272) = v337;
  *(v302 + 304) = v332;
  *(v302 + 280) = 0x7468676952;
  *(v302 + 288) = 0xE500000000000000;
  v473 = v337;
  v338 = sub_1CA94C1E8();
  v339 = sub_1CA2F864C(v338);
  *(v504 + 80) = v339;
  v340 = swift_allocObject();
  *(v340 + 16) = v483;
  *(v340 + 32) = v482;
  *(v340 + 40) = 1;
  v342 = v477;
  v341 = v478;
  *(v340 + 64) = MEMORY[0x1E69E6370];
  *(v340 + 72) = v341;
  v343 = v488;
  *(v340 + 80) = v491;
  *(v340 + 88) = v343;
  v344 = v476;
  *(v340 + 104) = v332;
  *(v340 + 112) = v344;
  *(v340 + 120) = 0x596567616D494657;
  *(v340 + 128) = 0xE800000000000000;
  *(v340 + 144) = v332;
  *(v340 + 152) = v342;
  v478 = v341;
  v480 = v344;
  v481 = v342;
  v476 = sub_1CA94C438("Y Coordinate (WFImageY)", 23);
  v471 = v345;
  v346 = sub_1CA94C438("Y Coordinate", 12);
  v348 = v347;
  v477 = &v471;
  MEMORY[0x1EEE9AC00](v346);
  v349 = &v471 - v507;
  sub_1CA948D98();
  v350 = [v509 bundleURL];
  MEMORY[0x1EEE9AC00](v350);
  v351 = &v471 - v511;
  sub_1CA948B68();

  v352 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v340 + 160) = sub_1CA2F9F14(v476, v471, v346, v348, 0, 0, v349, v351);
  v353 = v506;
  v354 = v479;
  *(v340 + 184) = v506;
  *(v340 + 192) = v354;
  v479 = v354;
  v476 = sub_1CA94C438("0 (WFImageY)", 12);
  v471 = v355;
  v356 = sub_1CA94C438("0", 1);
  v358 = v357;
  v477 = &v471;
  MEMORY[0x1EEE9AC00](v356);
  v359 = &v471 - v507;
  sub_1CA948D98();
  v360 = [v509 bundleURL];
  MEMORY[0x1EEE9AC00](v360);
  v361 = &v471 - v511;
  sub_1CA948B68();

  v362 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v340 + 200) = sub_1CA2F9F14(v476, v471, v356, v358, 0, 0, v359, v361);
  *(v340 + 224) = v353;
  v363 = v472;
  *(v340 + 232) = v472;
  v364 = swift_allocObject();
  *(v364 + 16) = v484;
  v365 = swift_allocObject();
  *(v365 + 16) = v505;
  strcpy((v365 + 32), "WFParameterKey");
  *(v365 + 47) = -18;
  v366 = v498;
  *(v365 + 48) = v497;
  *(v365 + 56) = v366;
  v367 = MEMORY[0x1E69E6158];
  *(v365 + 72) = MEMORY[0x1E69E6158];
  *(v365 + 80) = 0xD000000000000010;
  v368 = v493;
  v369 = v494;
  *(v365 + 88) = v494;
  *(v365 + 96) = 0;
  *(v365 + 120) = MEMORY[0x1E69E6370];
  *(v365 + 128) = 0x72756F7365524657;
  *(v365 + 168) = v367;
  v370 = v492;
  *(v365 + 136) = 0xEF7373616C436563;
  *(v365 + 144) = v370;
  *(v365 + 152) = v368;
  v477 = v363;
  *(v364 + 32) = sub_1CA94C1E8();
  v371 = swift_allocObject();
  *(v371 + 16) = v505;
  strcpy((v371 + 32), "WFParameterKey");
  *(v371 + 47) = -18;
  *(v371 + 48) = 0x506567616D494657;
  *(v371 + 56) = 0xEF6E6F697469736FLL;
  *(v371 + 72) = v367;
  *(v371 + 80) = 0xD000000000000010;
  *(v371 + 88) = v369;
  *(v371 + 96) = 0x6D6F74737543;
  *(v371 + 104) = 0xE600000000000000;
  *(v371 + 120) = v367;
  *(v371 + 128) = 0x72756F7365524657;
  *(v371 + 168) = v367;
  *(v371 + 136) = 0xEF7373616C436563;
  *(v371 + 144) = v370;
  *(v371 + 152) = v368;
  *(v364 + 40) = sub_1CA94C1E8();
  *(v340 + 240) = v364;
  v372 = v473;
  *(v340 + 264) = v495;
  *(v340 + 272) = v372;
  *(v340 + 304) = v367;
  *(v340 + 280) = 0x7468676952;
  *(v340 + 288) = 0xE500000000000000;
  v476 = v372;
  v373 = sub_1CA94C1E8();
  v374 = sub_1CA2F864C(v373);
  *(v504 + 88) = v374;
  v375 = swift_allocObject();
  *(v375 + 16) = xmmword_1CA981300;
  *(v375 + 32) = v482;
  *(v375 + 40) = 1;
  v376 = v478;
  *(v375 + 64) = MEMORY[0x1E69E6370];
  *(v375 + 72) = v376;
  v377 = v488;
  *(v375 + 80) = v491;
  *(v375 + 88) = v377;
  v378 = v485;
  *(v375 + 104) = v367;
  *(v375 + 112) = v378;
  v379 = MEMORY[0x1E69E6530];
  *(v375 + 120) = 0;
  v380 = v480;
  *(v375 + 144) = v379;
  *(v375 + 152) = v380;
  *(v375 + 160) = 0x697461746F524657;
  *(v375 + 168) = 0xEA00000000006E6FLL;
  v381 = v481;
  *(v375 + 184) = v367;
  *(v375 + 192) = v381;
  v382 = sub_1CA94C438("Rotation (Degrees) (WFRotation)", 31);
  v472 = v383;
  v473 = v382;
  v384 = sub_1CA94C438("Rotation (Degrees)", 18);
  v471 = v385;
  v482 = &v471;
  MEMORY[0x1EEE9AC00](v384);
  v386 = &v471 - v507;
  sub_1CA948D98();
  v387 = v509;
  v388 = [v509 bundleURL];
  MEMORY[0x1EEE9AC00](v388);
  v389 = v511;
  sub_1CA948B68();

  v390 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v375 + 200) = sub_1CA2F9F14(v473, v472, v384, v471, 0, 0, v386, &v471 - v389);
  v391 = v506;
  v392 = v479;
  *(v375 + 224) = v506;
  *(v375 + 232) = v392;
  v393 = sub_1CA94C438("0 (WFRotation)", 14);
  v472 = v394;
  v473 = v393;
  v471 = sub_1CA94C438("0", 1);
  v396 = v395;
  v482 = &v471;
  MEMORY[0x1EEE9AC00](v471);
  v397 = &v471 - v507;
  sub_1CA948D98();
  v398 = [v387 bundleURL];
  MEMORY[0x1EEE9AC00](v398);
  sub_1CA948B68();

  v399 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v375 + 240) = sub_1CA2F9F14(v473, v472, v471, v396, 0, 0, v397, &v471 - v389);
  v400 = v477;
  *(v375 + 264) = v391;
  *(v375 + 272) = v400;
  v401 = swift_allocObject();
  *(v401 + 16) = v490;
  v402 = swift_allocObject();
  *(v402 + 16) = v505;
  strcpy((v402 + 32), "WFParameterKey");
  *(v402 + 47) = -18;
  v403 = v498;
  *(v402 + 48) = v497;
  *(v402 + 56) = v403;
  v404 = MEMORY[0x1E69E6158];
  *(v402 + 72) = MEMORY[0x1E69E6158];
  *(v402 + 80) = 0xD000000000000010;
  *(v402 + 88) = v494;
  *(v402 + 96) = 0;
  *(v402 + 120) = MEMORY[0x1E69E6370];
  *(v402 + 128) = 0x72756F7365524657;
  *(v402 + 168) = v404;
  *(v402 + 136) = 0xEF7373616C436563;
  v405 = v493;
  *(v402 + 144) = v492;
  *(v402 + 152) = v405;
  v406 = v404;
  *(v401 + 32) = sub_1CA94C1E8();
  *(v375 + 280) = v401;
  v407 = v476;
  *(v375 + 304) = v495;
  *(v375 + 312) = v407;
  *(v375 + 344) = v406;
  *(v375 + 320) = 0x7468676952;
  *(v375 + 328) = 0xE500000000000000;
  v408 = sub_1CA94C1E8();
  v409 = sub_1CA2F864C(v408);
  *(v504 + 96) = v409;
  v410 = swift_allocObject();
  *(v410 + 16) = v483;
  v411 = v491;
  *(v410 + 32) = v478;
  *(v410 + 40) = v411;
  *(v410 + 48) = v488;
  v412 = v485;
  *(v410 + 64) = v406;
  *(v410 + 72) = v412;
  *(v410 + 80) = 100;
  v413 = v480;
  *(v410 + 104) = MEMORY[0x1E69E6530];
  *(v410 + 112) = v413;
  *(v410 + 120) = 0xD000000000000015;
  *(v410 + 128) = 0x80000001CA9C6240;
  v414 = v481;
  *(v410 + 144) = v406;
  *(v410 + 152) = v414;
  v491 = sub_1CA94C438("Opacity (WFOverlayImageOpacity)", 31);
  v488 = v415;
  v416 = sub_1CA94C438("Opacity", 7);
  v485 = v417;
  v502 = &v471;
  MEMORY[0x1EEE9AC00](v416);
  v418 = v507;
  sub_1CA948D98();
  v419 = v509;
  v420 = [v509 bundleURL];
  *&v483 = &v471;
  MEMORY[0x1EEE9AC00](v420);
  v421 = v511;
  sub_1CA948B68();

  v422 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v410 + 160) = sub_1CA2F9F14(v491, v488, v416, v485, 0, 0, &v471 - v418, &v471 - v421);
  v423 = v479;
  *(v410 + 184) = v506;
  *(v410 + 192) = v423;
  v491 = sub_1CA94C438("100% (WFOverlayImageOpacity)", 28);
  v488 = v424;
  v425 = sub_1CA94C438("100%", 4);
  v485 = v426;
  v502 = &v471;
  MEMORY[0x1EEE9AC00](v425);
  sub_1CA948D98();
  v427 = [v419 bundleURL];
  MEMORY[0x1EEE9AC00](v427);
  sub_1CA948B68();

  v428 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v410 + 200) = sub_1CA2F9F14(v491, v488, v425, v485, 0, 0, &v471 - v418, &v471 - v421);
  v429 = v477;
  *(v410 + 224) = v506;
  *(v410 + 232) = v429;
  v430 = swift_allocObject();
  *(v430 + 16) = v490;
  v431 = swift_allocObject();
  *(v431 + 16) = v505;
  strcpy((v431 + 32), "WFParameterKey");
  *(v431 + 47) = -18;
  v432 = v498;
  *(v431 + 48) = v497;
  *(v431 + 56) = v432;
  v433 = MEMORY[0x1E69E6158];
  *(v431 + 72) = MEMORY[0x1E69E6158];
  *(v431 + 80) = 0xD000000000000010;
  *(v431 + 88) = v494;
  *(v431 + 96) = 0;
  *(v431 + 120) = MEMORY[0x1E69E6370];
  *(v431 + 128) = 0x72756F7365524657;
  *(v431 + 168) = v433;
  *(v431 + 136) = 0xEF7373616C436563;
  v434 = v493;
  *(v431 + 144) = v492;
  *(v431 + 152) = v434;
  v435 = v433;
  *(v430 + 32) = sub_1CA94C1E8();
  *(v410 + 240) = v430;
  v436 = v476;
  *(v410 + 264) = v495;
  *(v410 + 272) = v436;
  *(v410 + 304) = v435;
  *(v410 + 280) = 0x7468676952;
  *(v410 + 288) = 0xE500000000000000;
  v437 = sub_1CA94C1E8();
  v438 = sub_1CA2F864C(v437);
  v439 = v504;
  *(v504 + 104) = v438;
  v440 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v441 = v489;
  v489[50] = v439;
  v441[53] = v440;
  v441[54] = @"ParameterSummary";
  v442 = @"ParameterSummary";
  v443 = sub_1CA94C438("Overlay ${WFImage} on ${WFInput} (Parameter Summary)", 52);
  v445 = v444;
  v446 = sub_1CA94C438("Overlay ${WFImage} on ${WFInput}", 32);
  v448 = v447;
  MEMORY[0x1EEE9AC00](v446);
  sub_1CA948D98();
  v449 = [v509 bundleURL];
  MEMORY[0x1EEE9AC00](v449);
  v450 = &v471 - v511;
  sub_1CA948B68();

  v451 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v452 = sub_1CA2F9F14(v443, v445, v446, v448, 0, 0, &v471 - v418, v450);
  v453 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v454 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v455 = v489;
  v489[55] = v453;
  v455[58] = v454;
  v455[59] = @"RequiredResources";
  v456 = swift_allocObject();
  *(v456 + 16) = v490;
  v457 = swift_allocObject();
  *(v457 + 16) = v484;
  *(v457 + 32) = v474;
  *(v457 + 40) = 0x80000001CA99B240;
  v458 = swift_allocObject();
  *(v458 + 16) = v490;
  v459 = swift_allocObject();
  *(v459 + 16) = v505;
  strcpy((v459 + 32), "WFParameterKey");
  *(v459 + 47) = -18;
  v460 = v498;
  *(v459 + 48) = v497;
  *(v459 + 56) = v460;
  v461 = MEMORY[0x1E69E6158];
  *(v459 + 72) = MEMORY[0x1E69E6158];
  *(v459 + 80) = 0xD000000000000010;
  *(v459 + 88) = v494;
  *(v459 + 96) = 1;
  *(v459 + 120) = MEMORY[0x1E69E6370];
  *(v459 + 128) = 0x72756F7365524657;
  *(v459 + 168) = v461;
  v463 = v492;
  v462 = v493;
  *(v459 + 136) = 0xEF7373616C436563;
  *(v459 + 144) = v463;
  *(v459 + 152) = v462;
  v464 = @"RequiredResources";
  *(v458 + 32) = sub_1CA94C1E8();
  *(v457 + 48) = v458;
  v465 = v495;
  *(v457 + 72) = v495;
  *(v457 + 80) = 0x72756F7365524657;
  *(v457 + 120) = v461;
  v466 = v486;
  *(v457 + 88) = 0xEF7373616C436563;
  *(v457 + 96) = v466;
  *(v457 + 104) = 0x80000001CA9932D0;
  *(v456 + 32) = sub_1CA94C1E8();
  v455[60] = v456;
  v455[63] = v465;
  v455[64] = @"UserInterfaceClasses";
  v467 = @"UserInterfaceClasses";
  v468 = sub_1CA94C1E8();
  v455[68] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v455[65] = v468;
  v455[69] = @"UserInterfaces";
  v455[73] = v487;
  v455[70] = &unk_1F4A02618;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v469 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA506974()
{
  v173 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000015;
  *(inited + 48) = 0x80000001CA9C6340;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("song|music|itunes|playlist|apple|album", 38);
  v6 = v5;
  v7 = sub_1CA94C438("song|music|itunes|playlist|apple|album", 38);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v183 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v184 = v11;
  v12 = &v164 - v183;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v182 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v181 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v180 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v164 - v180;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v179 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v177 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA9813C0;
  *(v23 + 32) = @"DescriptionInput";
  v24 = @"Description";
  v25 = @"DescriptionInput";
  v26 = sub_1CA94C438("Items in your music library or items from the Find iTunes Store Items action.", 77);
  v175 = v27;
  v28 = sub_1CA94C438("Items in your music library or items from the Find iTunes Store Items action.", 77);
  v30 = v29;
  *&v176 = &v164;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v164 - v183;
  sub_1CA948D98();
  v32 = v182;
  v33 = [v182 bundleURL];
  v178 = inited;
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v164 - v180;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v23 + 40) = sub_1CA2F9F14(v26, v175, v28, v30, 0, 0, v31, v34);
  *(v23 + 64) = v179;
  *(v23 + 72) = @"DescriptionResult";
  v36 = @"DescriptionResult";
  v37 = sub_1CA94C438("The contents of the updated playlist", 36);
  v174 = v38;
  v175 = v37;
  v172 = sub_1CA94C438("The contents of the updated playlist", 36);
  v40 = v39;
  *&v176 = &v164;
  MEMORY[0x1EEE9AC00](v172);
  v41 = v183;
  sub_1CA948D98();
  v42 = [v32 bundleURL];
  MEMORY[0x1EEE9AC00](v42);
  v43 = v180;
  sub_1CA948B68();

  v44 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v23 + 80) = sub_1CA2F9F14(v175, v174, v172, v40, 0, 0, &v164 - v41, &v164 - v43);
  *(v23 + 104) = v179;
  *(v23 + 112) = @"DescriptionSummary";
  v45 = @"DescriptionSummary";
  v46 = sub_1CA94C438("Adds the items passed as input to the specified playlist.", 57);
  v174 = v47;
  v175 = v46;
  v48 = sub_1CA94C438("Adds the items passed as input to the specified playlist.", 57);
  v50 = v49;
  *&v176 = &v164;
  MEMORY[0x1EEE9AC00](v48);
  sub_1CA948D98();
  v51 = [v182 bundleURL];
  MEMORY[0x1EEE9AC00](v51);
  sub_1CA948B68();

  v52 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v53 = sub_1CA2F9F14(v175, v174, v48, v50, 0, 0, &v164 - v41, &v164 - v43);
  *(v23 + 144) = v179;
  *(v23 + 120) = v53;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v54 = sub_1CA94C1E8();
  v55 = v177;
  v56 = sub_1CA6B3784(v54);
  v57 = v178;
  v178[20] = v56;
  v57[23] = v55;
  v57[24] = @"Input";
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v58 = swift_initStackObject();
  v176 = xmmword_1CA981350;
  *(v58 + 16) = xmmword_1CA981350;
  *(v58 + 32) = 0x656C7069746C754DLL;
  *(v58 + 40) = 0xE800000000000000;
  v59 = MEMORY[0x1E69E6370];
  *(v58 + 48) = 1;
  *(v58 + 72) = v59;
  strcpy((v58 + 80), "ParameterKey");
  *(v58 + 93) = 0;
  *(v58 + 94) = -5120;
  *(v58 + 96) = 0x7475706E494657;
  *(v58 + 104) = 0xE700000000000000;
  *(v58 + 120) = MEMORY[0x1E69E6158];
  *(v58 + 128) = 0x6465726975716552;
  *(v58 + 136) = 0xE800000000000000;
  *(v58 + 144) = 1;
  *(v58 + 168) = v59;
  *(v58 + 176) = 0x7365707954;
  v60 = v59;
  *(v58 + 184) = 0xE500000000000000;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v58 + 216) = v177;
  *(v58 + 192) = &unk_1F4A02688;
  v61 = @"Input";
  v62 = sub_1CA94C1E8();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v175 = v63;
  v57[25] = v62;
  v57[28] = v63;
  v57[29] = @"InputPassthrough";
  *(v57 + 240) = 0;
  v57[33] = v60;
  v57[34] = @"Name";
  v64 = @"InputPassthrough";
  v65 = @"Name";
  v66 = sub_1CA94C438("Add to Playlist (Action Name)", 29);
  v68 = v67;
  v69 = sub_1CA94C438("Add to Playlist", 15);
  v71 = v70;
  v172 = &v164;
  MEMORY[0x1EEE9AC00](v69);
  v72 = v183;
  sub_1CA948D98();
  v73 = [v182 bundleURL];
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v164 - v180;
  sub_1CA948B68();

  v75 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v76 = sub_1CA2F9F14(v66, v68, v69, v71, 0, 0, &v164 - v72, v74);
  v77 = v178;
  v78 = v179;
  v178[35] = v76;
  v77[38] = v78;
  v77[39] = @"Output";
  v79 = swift_allocObject();
  *(v79 + 16) = v176;
  *(v79 + 32) = 0x75736F6C63736944;
  *(v79 + 40) = 0xEF6C6576654C6572;
  *(v79 + 48) = 0x63696C627550;
  *(v79 + 56) = 0xE600000000000000;
  *(v79 + 72) = MEMORY[0x1E69E6158];
  *(v79 + 80) = 0x656C7069746C754DLL;
  *(v79 + 88) = 0xE800000000000000;
  *(v79 + 96) = 1;
  *(v79 + 120) = MEMORY[0x1E69E6370];
  *(v79 + 128) = 0x614E74757074754FLL;
  *(v79 + 136) = 0xEA0000000000656DLL;
  v80 = @"Output";
  v81 = sub_1CA94C438("Updated Playlist (Default Output Name)", 38);
  v171 = v82;
  v172 = v81;
  v83 = sub_1CA94C438("Updated Playlist", 16);
  v85 = v84;
  v174 = &v164;
  MEMORY[0x1EEE9AC00](v83);
  sub_1CA948D98();
  v86 = [v182 bundleURL];
  MEMORY[0x1EEE9AC00](v86);
  v87 = &v164 - v180;
  sub_1CA948B68();

  v88 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v79 + 144) = sub_1CA2F9F14(v172, v171, v83, v85, 0, 0, &v164 - v72, v87);
  *(v79 + 168) = v78;
  *(v79 + 176) = 0x7365707954;
  *(v79 + 216) = v177;
  *(v79 + 184) = 0xE500000000000000;
  *(v79 + 192) = &unk_1F4A026C8;
  v89 = MEMORY[0x1E69E6158];
  v90 = sub_1CA94C1E8();
  v91 = v178;
  v178[40] = v90;
  v91[43] = v175;
  v91[44] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v175 = swift_allocObject();
  *(v175 + 16) = xmmword_1CA981360;
  v174 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v92 = swift_allocObject();
  *(v92 + 16) = xmmword_1CA981370;
  *(v92 + 32) = @"Class";
  *(v92 + 40) = 0xD000000000000019;
  *(v92 + 48) = 0x80000001CA9C6480;
  *(v92 + 64) = v89;
  *(v92 + 72) = @"Key";
  strcpy((v92 + 80), "WFPlaylistName");
  *(v92 + 95) = -18;
  *(v92 + 104) = v89;
  *(v92 + 112) = @"Label";
  v93 = @"Class";
  v94 = @"Key";
  v95 = @"Label";
  v171 = v93;
  v170 = v94;
  v169 = v95;
  v96 = @"Parameters";
  v97 = sub_1CA94C438("Playlist (WFPlaylistName)", 25);
  v166 = v98;
  v167 = v97;
  v99 = sub_1CA94C438("Playlist", 8);
  v101 = v100;
  v168 = &v164;
  MEMORY[0x1EEE9AC00](v99);
  v102 = &v164 - v183;
  sub_1CA948D98();
  v103 = [v182 bundleURL];
  MEMORY[0x1EEE9AC00](v103);
  v104 = v180;
  sub_1CA948B68();

  v105 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v92 + 120) = sub_1CA2F9F14(v167, v166, v99, v101, 0, 0, v102, &v164 - v104);
  v106 = v179;
  *(v92 + 144) = v179;
  *(v92 + 152) = @"Placeholder";
  v168 = @"Placeholder";
  v107 = sub_1CA94C438("Playlist (WFPlaylistName)", 25);
  v165 = v108;
  v166 = v107;
  v109 = sub_1CA94C438("Playlist", 8);
  v111 = v110;
  v167 = &v164;
  MEMORY[0x1EEE9AC00](v109);
  v112 = &v164 - v183;
  sub_1CA948D98();
  v113 = [v182 bundleURL];
  MEMORY[0x1EEE9AC00](v113);
  sub_1CA948B68();

  v114 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v115 = sub_1CA2F9F14(v166, v165, v109, v111, 0, 0, v112, &v164 - v104);
  *(v92 + 184) = v106;
  *(v92 + 160) = v115;
  *(v92 + 192) = sub_1CA94C368();
  *(v92 + 224) = MEMORY[0x1E69E6370];
  *(v92 + 200) = 1;
  _s3__C3KeyVMa_0(0);
  v167 = v116;
  v166 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v117 = sub_1CA94C1E8();
  v118 = sub_1CA2F864C(v117);
  *(v175 + 32) = v118;
  v119 = swift_allocObject();
  *(v119 + 16) = v176;
  *(v119 + 32) = v171;
  *(v119 + 40) = 0xD000000000000019;
  *(v119 + 48) = 0x80000001CA99B030;
  v120 = MEMORY[0x1E69E6158];
  v121 = v170;
  *(v119 + 64) = MEMORY[0x1E69E6158];
  *(v119 + 72) = v121;
  *(v119 + 80) = 0x7475706E494657;
  *(v119 + 88) = 0xE700000000000000;
  v122 = v169;
  *(v119 + 104) = v120;
  *(v119 + 112) = v122;
  v123 = sub_1CA94C438("Music (WFInput)", 15);
  v171 = v124;
  v172 = v123;
  v170 = sub_1CA94C438("Music", 5);
  v126 = v125;
  *&v176 = &v164;
  MEMORY[0x1EEE9AC00](v170);
  v127 = &v164 - v183;
  sub_1CA948D98();
  v128 = v182;
  v129 = [v182 bundleURL];
  v169 = &v164;
  MEMORY[0x1EEE9AC00](v129);
  v130 = v180;
  sub_1CA948B68();

  v131 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v119 + 120) = sub_1CA2F9F14(v172, v171, v170, v126, 0, 0, v127, &v164 - v130);
  v132 = v179;
  v133 = v168;
  *(v119 + 144) = v179;
  *(v119 + 152) = v133;
  v134 = sub_1CA94C438("Music (WFInput)", 15);
  v171 = v135;
  v172 = v134;
  v170 = sub_1CA94C438("Music", 5);
  v137 = v136;
  *&v176 = &v164;
  MEMORY[0x1EEE9AC00](v170);
  v138 = &v164 - v183;
  sub_1CA948D98();
  v139 = [v128 bundleURL];
  MEMORY[0x1EEE9AC00](v139);
  sub_1CA948B68();

  v140 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v141 = sub_1CA2F9F14(v172, v171, v170, v137, 0, 0, v138, &v164 - v130);
  *(v119 + 184) = v132;
  *(v119 + 160) = v141;
  v142 = sub_1CA94C1E8();
  v143 = sub_1CA2F864C(v142);
  v144 = v175;
  *(v175 + 40) = v143;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v146 = v178;
  v178[45] = v144;
  v146[48] = v145;
  v146[49] = @"ParameterSummary";
  v147 = @"ParameterSummary";
  v148 = sub_1CA94C438("Add ${WFInput} to ${WFPlaylistName} (Parameter Summary)", 55);
  v150 = v149;
  v151 = sub_1CA94C438("Add ${WFInput} to ${WFPlaylistName}", 35);
  v153 = v152;
  MEMORY[0x1EEE9AC00](v151);
  v154 = &v164 - v183;
  sub_1CA948D98();
  v155 = [v182 bundleURL];
  MEMORY[0x1EEE9AC00](v155);
  v156 = &v164 - v180;
  sub_1CA948B68();

  v157 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v158 = sub_1CA2F9F14(v148, v150, v151, v153, 0, 0, v154, v156);
  v159 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v160 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v161 = v178;
  v178[50] = v159;
  v161[53] = v160;
  v161[54] = @"RequiredResources";
  v161[58] = v177;
  v161[55] = &unk_1F4A026F8;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v162 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA507DD4()
{
  v36 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000019;
  *(inited + 48) = 0x80000001CA9A2900;
  *(inited + 64) = v1;
  *(inited + 72) = @"IconColor";
  *(inited + 80) = 1702194242;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 104) = v1;
  *(inited + 112) = @"IconSymbol";
  *(inited + 120) = 0x2E79616C70736964;
  *(inited + 128) = 0xE900000000000032;
  *(inited + 144) = v1;
  *(inited + 152) = @"Input";
  v2 = @"ActionClass";
  v3 = @"IconColor";
  v4 = @"IconSymbol";
  v5 = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v6 = sub_1CA94C1E8();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4442F0, &qword_1CA982FA8);
  *(inited + 160) = v6;
  *(inited + 184) = v7;
  *(inited + 192) = @"LocallyProcessesData";
  v8 = MEMORY[0x1E69E6370];
  *(inited + 200) = 1;
  *(inited + 224) = v8;
  *(inited + 232) = @"Name";
  v9 = @"LocallyProcessesData";
  v10 = @"Name";
  v11 = sub_1CA94C438("Find Displays (Action Name)", 27);
  v13 = v12;
  v14 = sub_1CA94C438("Find Displays", 13);
  v16 = v15;
  v17 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v20 = [qword_1EDB9F690 bundleURL];
  v21 = sub_1CA948BA8();
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v24 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v25 = sub_1CA2F9F14(v11, v13, v14, v16, 0, 0, v19, v23);
  v26 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 240) = v25;
  *(inited + 264) = v26;
  *(inited + 272) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1CA9813B0;
  v37 = 2;
  v38 = 0;
  v28 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v29 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v37);
  *(v27 + 32) = v30;
  *(inited + 304) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  *(inited + 280) = v27;
  v31 = sub_1CA94C368();
  v32 = MEMORY[0x1E69E6158];
  *(inited + 344) = MEMORY[0x1E69E6158];
  *(inited + 312) = v31;
  *(inited + 320) = 0xD000000000000014;
  *(inited + 328) = v35;
  v33 = sub_1CA94C368();
  *(inited + 384) = v32;
  *(inited + 352) = v33;
  strcpy((inited + 360), "Display Name");
  *(inited + 373) = 0;
  *(inited + 374) = -5120;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5082B8()
{
  v175 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001CLL;
  *(inited + 48) = 0x80000001CA9C65A0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = inited;
  v3 = @"ActionClass";
  v4 = @"ActionKeywords";
  v5 = sub_1CA94C438("remove|photo|photos|picture|image|album", 39);
  v7 = v6;
  v8 = sub_1CA94C438("remove|photo|photos|picture|image|album", 39);
  v10 = v9;
  v11 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v184 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v185 = v12;
  v13 = &v164 - v184;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v180 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v182 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v183 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v164 - v183;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v5, v7, v8, v10, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v181 = v20;
  v2[10] = v19;
  v2[13] = v20;
  v2[14] = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v179 = v2;
  v2[15] = v22;
  v2[18] = v23;
  v2[19] = @"Description";
  v178 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  v177 = xmmword_1CA9813C0;
  *(v24 + 16) = xmmword_1CA9813C0;
  *(v24 + 32) = @"DescriptionInput";
  v25 = @"Description";
  v26 = @"DescriptionInput";
  v27 = sub_1CA94C438("Photos, videos to remove", 24);
  *&v174 = v28;
  v29 = sub_1CA94C438("Photos, videos to remove", 24);
  v31 = v30;
  v176 = &v164;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v164 - v184;
  sub_1CA948D98();
  v33 = v180;
  v34 = [v180 bundleURL];
  MEMORY[0x1EEE9AC00](v34);
  v35 = &v164 - v183;
  sub_1CA948B68();

  v36 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v24 + 40) = sub_1CA2F9F14(v27, v174, v29, v31, 0, 0, v32, v35);
  *(v24 + 64) = v181;
  *(v24 + 72) = @"DescriptionResult";
  v37 = @"DescriptionResult";
  v38 = sub_1CA94C438("The removed items", 17);
  v173 = v39;
  *&v174 = v38;
  v172 = sub_1CA94C438("The removed items", 17);
  v41 = v40;
  v176 = &v164;
  MEMORY[0x1EEE9AC00](v172);
  v42 = v184;
  sub_1CA948D98();
  v43 = [v33 bundleURL];
  MEMORY[0x1EEE9AC00](v43);
  v44 = v183;
  sub_1CA948B68();

  v45 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v24 + 80) = sub_1CA2F9F14(v174, v173, v172, v41, 0, 0, &v164 - v42, &v164 - v44);
  *(v24 + 104) = v181;
  *(v24 + 112) = @"DescriptionSummary";
  v46 = @"DescriptionSummary";
  v47 = sub_1CA94C438("Removes the photos or videos passed as input from the specified photo album.", 76);
  v173 = v48;
  *&v174 = v47;
  v49 = sub_1CA94C438("Removes the photos or videos passed as input from the specified photo album.", 76);
  v51 = v50;
  v176 = &v164;
  MEMORY[0x1EEE9AC00](v49);
  sub_1CA948D98();
  v52 = [v180 bundleURL];
  MEMORY[0x1EEE9AC00](v52);
  sub_1CA948B68();

  v53 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v54 = sub_1CA2F9F14(v174, v173, v49, v51, 0, 0, &v164 - v42, &v164 - v44);
  *(v24 + 144) = v181;
  *(v24 + 120) = v54;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v55 = sub_1CA94C1E8();
  v56 = v178;
  v57 = sub_1CA6B3784(v55);
  v58 = v179;
  v179[20] = v57;
  v58[23] = v56;
  v58[24] = @"DisabledOnPlatforms";
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v58[25] = &unk_1F4A027D0;
  v58[28] = v59;
  v58[29] = @"Input";
  v60 = v59;
  v178 = v59;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v61 = swift_initStackObject();
  v174 = xmmword_1CA981350;
  *(v61 + 16) = xmmword_1CA981350;
  *(v61 + 32) = 0x656C7069746C754DLL;
  *(v61 + 40) = 0xE800000000000000;
  v62 = MEMORY[0x1E69E6370];
  *(v61 + 48) = 1;
  *(v61 + 72) = v62;
  strcpy((v61 + 80), "ParameterKey");
  *(v61 + 93) = 0;
  *(v61 + 94) = -5120;
  *(v61 + 96) = 0x7475706E494657;
  *(v61 + 104) = 0xE700000000000000;
  *(v61 + 120) = MEMORY[0x1E69E6158];
  *(v61 + 128) = 0x6465726975716552;
  *(v61 + 136) = 0xE800000000000000;
  *(v61 + 144) = 1;
  *(v61 + 168) = v62;
  *(v61 + 176) = 0x7365707954;
  v63 = v62;
  *(v61 + 216) = v60;
  *(v61 + 184) = 0xE500000000000000;
  *(v61 + 192) = &unk_1F4A02800;
  v64 = @"DisabledOnPlatforms";
  v65 = @"Input";
  v66 = sub_1CA94C1E8();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v176 = v67;
  v58[30] = v66;
  v58[33] = v67;
  v58[34] = @"InputPassthrough";
  *(v58 + 280) = 0;
  v58[38] = v63;
  v58[39] = @"Name";
  v68 = @"InputPassthrough";
  v69 = @"Name";
  v70 = sub_1CA94C438("Remove from Photo Album (Action Name)", 37);
  v170 = v71;
  v171 = v70;
  v72 = sub_1CA94C438("Remove from Photo Album", 23);
  v74 = v73;
  v172 = &v164;
  MEMORY[0x1EEE9AC00](v72);
  v75 = &v164 - v184;
  sub_1CA948D98();
  v76 = v180;
  v77 = [v180 bundleURL];
  MEMORY[0x1EEE9AC00](v77);
  v78 = &v164 - v183;
  sub_1CA948B68();

  v79 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v80 = sub_1CA2F9F14(v171, v170, v72, v74, 0, 0, v75, v78);
  v81 = v179;
  v179[40] = v80;
  v82 = v181;
  v81[43] = v181;
  v81[44] = @"Output";
  v83 = swift_allocObject();
  *(v83 + 16) = v177;
  *(v83 + 32) = 0x656C7069746C754DLL;
  *(v83 + 40) = 0xE800000000000000;
  *(v83 + 48) = 1;
  *(v83 + 72) = MEMORY[0x1E69E6370];
  *(v83 + 80) = 0x614E74757074754FLL;
  *(v83 + 88) = 0xEA0000000000656DLL;
  v84 = @"Output";
  v85 = sub_1CA94C438("Removed Photo Media (Default Output Name)", 41);
  v172 = v86;
  v173 = v85;
  v171 = sub_1CA94C438("Removed Photo Media", 19);
  v88 = v87;
  *&v177 = &v164;
  MEMORY[0x1EEE9AC00](v171);
  v89 = v184;
  sub_1CA948D98();
  v90 = [v76 bundleURL];
  MEMORY[0x1EEE9AC00](v90);
  v91 = &v164 - v183;
  sub_1CA948B68();

  v92 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v83 + 96) = sub_1CA2F9F14(v173, v172, v171, v88, 0, 0, &v164 - v89, v91);
  *(v83 + 120) = v82;
  *(v83 + 128) = 0x7365707954;
  *(v83 + 168) = v178;
  *(v83 + 136) = 0xE500000000000000;
  *(v83 + 144) = &unk_1F4A02830;
  v93 = MEMORY[0x1E69E6158];
  v94 = sub_1CA94C1E8();
  v95 = v179;
  v179[45] = v94;
  v95[48] = v176;
  v95[49] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  *&v177 = swift_allocObject();
  *(v177 + 16) = xmmword_1CA981360;
  v176 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v96 = swift_allocObject();
  *(v96 + 16) = xmmword_1CA981380;
  *(v96 + 32) = @"AlwaysShowsButton";
  *(v96 + 40) = 1;
  v97 = MEMORY[0x1E69E6370];
  *(v96 + 64) = MEMORY[0x1E69E6370];
  *(v96 + 72) = @"Class";
  *(v96 + 104) = v93;
  *(v96 + 80) = 0xD00000000000001BLL;
  *(v96 + 88) = 0x80000001CA9C1C80;
  v172 = @"Class";
  v98 = @"Parameters";
  v99 = @"AlwaysShowsButton";
  *(v96 + 112) = sub_1CA94C368();
  *(v96 + 120) = 0;
  *(v96 + 144) = v97;
  *(v96 + 152) = @"Key";
  *(v96 + 160) = 0xD00000000000001ALL;
  *(v96 + 168) = 0x80000001CA9C6740;
  *(v96 + 184) = v93;
  *(v96 + 192) = @"Label";
  v100 = @"Key";
  v101 = @"Label";
  v171 = v100;
  v170 = v101;
  v102 = sub_1CA94C438("Album (WFRemoveAlbumSelectedGroup)", 34);
  v167 = v103;
  v168 = v102;
  v104 = sub_1CA94C438("Album", 5);
  v166 = v105;
  v169 = &v164;
  MEMORY[0x1EEE9AC00](v104);
  v106 = &v164 - v89;
  sub_1CA948D98();
  v107 = v180;
  v108 = [v180 bundleURL];
  MEMORY[0x1EEE9AC00](v108);
  v109 = v183;
  sub_1CA948B68();

  v110 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v96 + 200) = sub_1CA2F9F14(v168, v167, v104, v166, 0, 0, v106, &v164 - v109);
  v111 = v181;
  *(v96 + 224) = v181;
  *(v96 + 232) = @"Placeholder";
  v169 = @"Placeholder";
  v112 = sub_1CA94C438("Photo Album (WFRemoveAlbumSelectedGroup)", 40);
  v166 = v113;
  v167 = v112;
  v114 = sub_1CA94C438("Photo Album", 11);
  v165 = v115;
  v168 = &v164;
  MEMORY[0x1EEE9AC00](v114);
  v116 = &v164 - v184;
  sub_1CA948D98();
  v117 = [v107 bundleURL];
  MEMORY[0x1EEE9AC00](v117);
  sub_1CA948B68();

  v118 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v119 = sub_1CA2F9F14(v167, v166, v114, v165, 0, 0, v116, &v164 - v109);
  *(v96 + 264) = v111;
  *(v96 + 240) = v119;
  _s3__C3KeyVMa_0(0);
  v168 = v120;
  v167 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v121 = sub_1CA94C1E8();
  v122 = sub_1CA2F864C(v121);
  *(v177 + 32) = v122;
  v123 = swift_allocObject();
  *(v123 + 16) = v174;
  *(v123 + 32) = v172;
  *(v123 + 40) = 0xD000000000000019;
  *(v123 + 48) = 0x80000001CA99B030;
  v124 = MEMORY[0x1E69E6158];
  v125 = v171;
  *(v123 + 64) = MEMORY[0x1E69E6158];
  *(v123 + 72) = v125;
  *(v123 + 80) = 0x7475706E494657;
  *(v123 + 88) = 0xE700000000000000;
  v126 = v170;
  *(v123 + 104) = v124;
  *(v123 + 112) = v126;
  v127 = sub_1CA94C438("Input (WFInput)", 15);
  v172 = v128;
  v173 = v127;
  v171 = sub_1CA94C438("Input", 5);
  v130 = v129;
  *&v174 = &v164;
  MEMORY[0x1EEE9AC00](v171);
  v131 = v184;
  sub_1CA948D98();
  v132 = [v107 bundleURL];
  v170 = &v164;
  MEMORY[0x1EEE9AC00](v132);
  v133 = v183;
  sub_1CA948B68();

  v134 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v123 + 120) = sub_1CA2F9F14(v173, v172, v171, v130, 0, 0, &v164 - v131, &v164 - v133);
  v135 = v169;
  *(v123 + 144) = v181;
  *(v123 + 152) = v135;
  v136 = sub_1CA94C438("Input (WFInput)", 15);
  v172 = v137;
  v173 = v136;
  v138 = sub_1CA94C438("Input", 5);
  v171 = v139;
  *&v174 = &v164;
  MEMORY[0x1EEE9AC00](v138);
  sub_1CA948D98();
  v140 = [v107 bundleURL];
  MEMORY[0x1EEE9AC00](v140);
  sub_1CA948B68();

  v141 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v142 = sub_1CA2F9F14(v173, v172, v138, v171, 0, 0, &v164 - v131, &v164 - v133);
  *(v123 + 184) = v181;
  *(v123 + 160) = v142;
  v143 = sub_1CA94C1E8();
  v144 = sub_1CA2F864C(v143);
  v145 = v177;
  *(v177 + 40) = v144;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v147 = v179;
  v179[50] = v145;
  v147[53] = v146;
  v147[54] = @"ParameterSummary";
  v148 = @"ParameterSummary";
  v149 = sub_1CA94C438("Remove ${WFInput} from ${WFRemoveAlbumSelectedGroup} (Parameter Summary)", 72);
  v151 = v150;
  v152 = sub_1CA94C438("Remove ${WFInput} from ${WFRemoveAlbumSelectedGroup}", 52);
  v154 = v153;
  v181 = &v164;
  MEMORY[0x1EEE9AC00](v152);
  v155 = &v164 - v184;
  sub_1CA948D98();
  v156 = [v180 bundleURL];
  MEMORY[0x1EEE9AC00](v156);
  v157 = &v164 - v183;
  sub_1CA948B68();

  v158 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v159 = sub_1CA2F9F14(v149, v151, v152, v154, 0, 0, v155, v157);
  v160 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v161 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v147[55] = v160;
  v147[58] = v161;
  v147[59] = @"RequiredResources";
  v147[63] = v178;
  v147[60] = &unk_1F4A02860;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v162 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA509718()
{
  sub_1CA2ECC0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981370;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA99DB90;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"IconName";
  *(inited + 144) = v1;
  *(inited + 120) = 0xD000000000000012;
  *(inited + 128) = 0x80000001CA9C6890;
  v6 = @"IconName";
  *(inited + 152) = sub_1CA94C368();
  *(inited + 160) = 0xD000000000000012;
  *(inited + 168) = 0x80000001CA9C68B0;
  *(inited + 184) = v1;
  *(inited + 192) = @"Output";
  v7 = @"Output";
  v8 = sub_1CA94C1E8();
  *(inited + 224) = v5;
  *(inited + 200) = v8;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA50993C()
{
  v110 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9C68E0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("Translate|Get|Text", 18);
  v6 = v5;
  v7 = sub_1CA94C438("Translate|Get|Text", 18);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v117 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v118 = v11;
  v12 = &v105 - v117;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v114 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v115 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v116 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v105 - v116;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v113 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v112 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Detects the language of the text provided as input.", 51);
  v109 = v27;
  v28 = sub_1CA94C438("Detects the language of the text provided as input.", 51);
  v30 = v29;
  *&v111 = &v105;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v105 - v117;
  sub_1CA948D98();
  v32 = [v114 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v105 - v116;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v109, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v113;
  *(v23 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v36 = sub_1CA94C1E8();
  v37 = v112;
  *(inited + 160) = sub_1CA6B3784(v36);
  *(inited + 184) = v37;
  *(inited + 192) = @"IconName";
  strcpy((inited + 200), "TranslateIcon");
  *(inited + 214) = -4864;
  v38 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"Input";
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v39 = swift_initStackObject();
  v111 = xmmword_1CA981350;
  *(v39 + 16) = xmmword_1CA981350;
  *(v39 + 32) = 0x656C7069746C754DLL;
  *(v39 + 40) = 0xE800000000000000;
  v40 = MEMORY[0x1E69E6370];
  *(v39 + 48) = 1;
  *(v39 + 72) = v40;
  strcpy((v39 + 80), "ParameterKey");
  *(v39 + 93) = 0;
  *(v39 + 94) = -5120;
  *(v39 + 96) = 0x7475706E494657;
  *(v39 + 104) = 0xE700000000000000;
  *(v39 + 120) = v38;
  *(v39 + 128) = 0x6465726975716552;
  *(v39 + 136) = 0xE800000000000000;
  *(v39 + 144) = 1;
  *(v39 + 168) = v40;
  *(v39 + 176) = 0x7365707954;
  *(v39 + 184) = 0xE500000000000000;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v39 + 216) = v112;
  *(v39 + 192) = &unk_1F4A02950;
  v41 = @"IconName";
  v42 = @"Input";
  v43 = sub_1CA94C1E8();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v109 = v44;
  *(inited + 240) = v43;
  *(inited + 264) = v44;
  *(inited + 272) = @"Name";
  v45 = @"Name";
  v46 = sub_1CA94C438("Detect Language (Action Name)", 29);
  v106 = v47;
  v48 = sub_1CA94C438("Detect Language", 15);
  v50 = v49;
  v107 = &v105;
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v105 - v117;
  sub_1CA948D98();
  v52 = v114;
  v53 = [v114 bundleURL];
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v105 - v116;
  sub_1CA948B68();

  v55 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v46, v106, v48, v50, 0, 0, v51, v54);
  v56 = v113;
  *(inited + 304) = v113;
  *(inited + 312) = @"Output";
  v57 = swift_allocObject();
  *(v57 + 16) = v111;
  *(v57 + 32) = 0x75736F6C63736944;
  *(v57 + 40) = 0xEF6C6576654C6572;
  *(v57 + 48) = 0x63696C627550;
  *(v57 + 56) = 0xE600000000000000;
  *(v57 + 72) = MEMORY[0x1E69E6158];
  *(v57 + 80) = 0x656C7069746C754DLL;
  *(v57 + 88) = 0xE800000000000000;
  *(v57 + 96) = 1;
  *(v57 + 120) = MEMORY[0x1E69E6370];
  *(v57 + 128) = 0x614E74757074754FLL;
  *(v57 + 136) = 0xEA0000000000656DLL;
  v58 = @"Output";
  v59 = sub_1CA94C438("Language (Default Output Name)", 30);
  v106 = v60;
  v107 = v59;
  v61 = sub_1CA94C438("Language", 8);
  v63 = v62;
  v108 = &v105;
  MEMORY[0x1EEE9AC00](v61);
  v64 = &v105 - v117;
  sub_1CA948D98();
  v65 = [v52 bundleURL];
  MEMORY[0x1EEE9AC00](v65);
  v66 = &v105 - v116;
  sub_1CA948B68();

  v67 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v57 + 144) = sub_1CA2F9F14(v107, v106, v61, v63, 0, 0, v64, v66);
  *(v57 + 168) = v56;
  *(v57 + 176) = 0x7365707954;
  *(v57 + 216) = v112;
  *(v57 + 184) = 0xE500000000000000;
  *(v57 + 192) = &unk_1F4A02980;
  v68 = MEMORY[0x1E69E6158];
  *(inited + 320) = sub_1CA94C1E8();
  *(inited + 344) = v109;
  *(inited + 352) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v109 = swift_allocObject();
  *(v109 + 16) = xmmword_1CA9813B0;
  v108 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v69 = swift_initStackObject();
  *(v69 + 16) = v111;
  *(v69 + 32) = @"Class";
  *(v69 + 40) = 0xD000000000000014;
  *(v69 + 48) = 0x80000001CA99B500;
  *(v69 + 64) = v68;
  *(v69 + 72) = @"Key";
  *(v69 + 80) = 0x7475706E494657;
  *(v69 + 88) = 0xE700000000000000;
  *(v69 + 104) = v68;
  *(v69 + 112) = @"Label";
  v70 = @"Parameters";
  v71 = @"Class";
  v72 = @"Key";
  v73 = @"Label";
  v74 = sub_1CA94C438("Text (WFInput)", 14);
  v107 = v75;
  v76 = sub_1CA94C438("Text", 4);
  v78 = v77;
  *&v111 = &v105;
  MEMORY[0x1EEE9AC00](v76);
  v79 = &v105 - v117;
  sub_1CA948D98();
  v80 = [v114 bundleURL];
  MEMORY[0x1EEE9AC00](v80);
  v81 = &v105 - v116;
  sub_1CA948B68();

  v82 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v69 + 120) = sub_1CA2F9F14(v74, v107, v76, v78, 0, 0, v79, v81);
  *(v69 + 144) = v113;
  *(v69 + 152) = @"Multiline";
  *(v69 + 184) = MEMORY[0x1E69E6370];
  *(v69 + 160) = 1;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v83 = @"Multiline";
  v84 = sub_1CA94C1E8();
  v85 = sub_1CA2F864C(v84);
  v86 = v109;
  *(v109 + 32) = v85;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 360) = v86;
  *(inited + 384) = v87;
  *(inited + 392) = @"ParameterSummary";
  v88 = @"ParameterSummary";
  v89 = sub_1CA94C438("Detect language of ${WFInput} (Parameter Summary)", 49);
  v91 = v90;
  v92 = sub_1CA94C438("Detect language of ${WFInput}", 29);
  v94 = v93;
  v113 = &v105;
  MEMORY[0x1EEE9AC00](v92);
  v95 = &v105 - v117;
  sub_1CA948D98();
  v96 = [v114 bundleURL];
  MEMORY[0x1EEE9AC00](v96);
  v97 = &v105 - v116;
  sub_1CA948B68();

  v98 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v99 = sub_1CA2F9F14(v89, v91, v92, v94, 0, 0, v95, v97);
  v100 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v101 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 400) = v100;
  *(inited + 424) = v101;
  *(inited + 432) = @"RequiredResources";
  *(inited + 440) = &unk_1F4A029B0;
  *(inited + 464) = v112;
  *(inited + 472) = @"ResidentCompatible";
  *(inited + 504) = MEMORY[0x1E69E6370];
  *(inited + 480) = 0;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v102 = @"RequiredResources";
  v103 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA50A7A8()
{
  v374 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  strcpy((inited + 40), "WFInputAction");
  *(inited + 54) = -4864;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("quit|return|workflow", 20);
  v6 = v5;
  v7 = sub_1CA94C438("quit|return|workflow", 20);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v394 = v11;
  v396 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v364 - v396;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v392 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v395 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v393 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v364 - v393;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v391 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AdditionalParameterSummaries";
  v384 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v389 = swift_allocObject();
  *(v389 + 1) = xmmword_1CA9813B0;
  v390 = swift_allocObject();
  v378 = xmmword_1CA981570;
  *(v390 + 1) = xmmword_1CA981570;
  v388 = "is.workflow.actions.input";
  v20 = @"AdditionalParameterSummaries";
  v21 = sub_1CA94C438("${WFNoInputBehavior} ${WFAskForType}", 36);
  v385 = v22;
  v23 = sub_1CA94C438("${WFNoInputBehavior} ${WFAskForType}", 36);
  v25 = v24;
  v386 = &v364;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v364 - v396;
  sub_1CA948D98();
  v27 = v392;
  v28 = [v392 bundleURL];
  MEMORY[0x1EEE9AC00](v28);
  v387 = inited;
  v29 = &v364 - v393;
  sub_1CA948B68();

  v30 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v31 = sub_1CA2F9F14(v21, v385, v23, v25, 0, 0, v26, v29);
  v32 = objc_allocWithZone(WFActionParameterSummaryValue);
  v33 = sub_1CA65DD78(0xD000000000000042, v388 | 0x8000000000000000, v31);
  v390[4] = v33;
  v388 = "ior} ${WFAskForType}";
  v385 = sub_1CA94C438("${WFNoInputBehavior}", 20);
  v383 = v34;
  v35 = sub_1CA94C438("${WFNoInputBehavior}", 20);
  v37 = v36;
  v386 = &v364;
  MEMORY[0x1EEE9AC00](v35);
  v38 = v396;
  sub_1CA948D98();
  v39 = [v27 bundleURL];
  MEMORY[0x1EEE9AC00](v39);
  v40 = v393;
  sub_1CA948B68();

  v41 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v42 = sub_1CA2F9F14(v385, v383, v35, v37, 0, 0, &v364 - v38, &v364 - v40);
  v43 = objc_allocWithZone(WFActionParameterSummaryValue);
  v44 = sub_1CA65DD78(0xD000000000000036, v388 | 0x8000000000000000, v42);
  v45 = v390;
  v390[5] = v44;
  v388 = "${WFNoInputBehavior}";
  v385 = sub_1CA94C438("${WFNoInputBehavior}", 20);
  v383 = v46;
  v47 = sub_1CA94C438("${WFNoInputBehavior}", 20);
  v49 = v48;
  v386 = &v364;
  MEMORY[0x1EEE9AC00](v47);
  sub_1CA948D98();
  v50 = v392;
  v51 = [v392 bundleURL];
  MEMORY[0x1EEE9AC00](v51);
  sub_1CA948B68();

  v52 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v53 = sub_1CA2F9F14(v385, v383, v47, v49, 0, 0, &v364 - v38, &v364 - v40);
  v54 = objc_allocWithZone(WFActionParameterSummaryValue);
  v45[6] = sub_1CA65DD78(0xD00000000000003BLL, v388 | 0x8000000000000000, v53);
  v388 = "nputBehavior(Get Clipboard)";
  v385 = sub_1CA94C438("${WFNoInputBehavior} ${WFStopAndRespondResponse}", 48);
  v383 = v55;
  v56 = sub_1CA94C438("${WFNoInputBehavior} ${WFStopAndRespondResponse}", 48);
  v58 = v57;
  v386 = &v364;
  MEMORY[0x1EEE9AC00](v56);
  v59 = &v364 - v396;
  sub_1CA948D98();
  v60 = [v50 bundleURL];
  MEMORY[0x1EEE9AC00](v60);
  v61 = v393;
  sub_1CA948B68();

  v62 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v63 = sub_1CA2F9F14(v385, v383, v56, v58, 0, 0, v59, &v364 - v61);
  v64 = objc_allocWithZone(WFActionParameterSummaryValue);
  v65 = sub_1CA65DD78(0xD000000000000057, v388 | 0x8000000000000000, v63);
  v66 = v390;
  v390[7] = v65;
  v67 = sub_1CA94C438("If there’s no input:", 22);
  v385 = v68;
  v386 = v67;
  v69 = sub_1CA94C438("If there’s no input:", 22);
  v71 = v70;
  v388 = &v364;
  MEMORY[0x1EEE9AC00](v69);
  v72 = &v364 - v396;
  sub_1CA948D98();
  v73 = [v392 bundleURL];
  MEMORY[0x1EEE9AC00](v73);
  sub_1CA948B68();

  v74 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v75 = sub_1CA2F9F14(v386, v385, v69, v71, 0, 0, v72, &v364 - v61);
  v76 = objc_allocWithZone(WFActionParameterSummary);
  v77 = sub_1CA50D4C4(v66, v75);
  v78 = v389;
  v389[4] = v77;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445888, &unk_1CA988350);
  v80 = v387;
  v387[15] = v78;
  v80[18] = v79;
  v80[19] = @"Appearance";
  v80[20] = 0x7475706E49;
  v80[21] = 0xE500000000000000;
  v80[23] = MEMORY[0x1E69E6158];
  v80[24] = @"Description";
  v390 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v81 = swift_initStackObject();
  v381 = xmmword_1CA981310;
  *(v81 + 16) = xmmword_1CA981310;
  *(v81 + 32) = @"DescriptionSummary";
  v82 = @"Appearance";
  v83 = @"Description";
  v84 = @"DescriptionSummary";
  v85 = sub_1CA94C438("Stops execution of the current shortcut and dismisses the shortcut on screen. No more actions will be run after this action.", 124);
  v87 = v86;
  v88 = sub_1CA94C438("Stops execution of the current shortcut and dismisses the shortcut on screen. No more actions will be run after this action.", 124);
  v90 = v89;
  v389 = &v364;
  MEMORY[0x1EEE9AC00](v88);
  v91 = &v364 - v396;
  sub_1CA948D98();
  v92 = [v392 bundleURL];
  MEMORY[0x1EEE9AC00](v92);
  v93 = &v364 - v393;
  sub_1CA948B68();

  v94 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v95 = sub_1CA2F9F14(v85, v87, v88, v90, 0, 0, v91, v93);
  *(v81 + 64) = v391;
  *(v81 + 40) = v95;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v96 = sub_1CA94C1E8();
  v97 = v390;
  v98 = sub_1CA6B3784(v96);
  v99 = v387;
  v387[25] = v98;
  v99[28] = v97;
  v99[29] = @"Discoverable";
  v100 = MEMORY[0x1E69E6370];
  *(v99 + 240) = 0;
  v99[33] = v100;
  v99[34] = @"IconName";
  v99[35] = 0x6E69747069726353;
  v99[36] = 0xE900000000000067;
  v101 = MEMORY[0x1E69E6158];
  v99[38] = MEMORY[0x1E69E6158];
  v99[39] = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v102 = swift_initStackObject();
  *(v102 + 16) = xmmword_1CA981350;
  *(v102 + 32) = 0x656C7069746C754DLL;
  *(v102 + 40) = 0xE800000000000000;
  *(v102 + 48) = 1;
  *(v102 + 72) = v100;
  strcpy((v102 + 80), "ParameterKey");
  *(v102 + 93) = 0;
  *(v102 + 94) = -5120;
  *(v102 + 96) = 0x74757074754F4657;
  *(v102 + 104) = 0xE800000000000000;
  *(v102 + 120) = v101;
  *(v102 + 128) = 0x6465726975716552;
  *(v102 + 136) = 0xE800000000000000;
  *(v102 + 144) = 0;
  *(v102 + 168) = v100;
  *(v102 + 176) = 0x7365707954;
  *(v102 + 184) = 0xE500000000000000;
  v383 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v102 + 216) = v383;
  *(v102 + 192) = &unk_1F4A029E0;
  v103 = @"Discoverable";
  v104 = @"IconName";
  v105 = @"Input";
  v106 = sub_1CA94C1E8();
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v99[40] = v106;
  v99[43] = v107;
  v99[44] = @"Name";
  v108 = @"Name";
  v109 = sub_1CA94C438("Input (Action Name)", 19);
  v111 = v110;
  v112 = sub_1CA94C438("Input", 5);
  v114 = v113;
  v390 = &v364;
  MEMORY[0x1EEE9AC00](v112);
  v115 = &v364 - v396;
  sub_1CA948D98();
  v116 = [v392 bundleURL];
  MEMORY[0x1EEE9AC00](v116);
  v117 = &v364 - v393;
  sub_1CA948B68();

  v118 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v99[45] = sub_1CA2F9F14(v109, v111, v112, v114, 0, 0, v115, v117);
  v99[48] = v391;
  v99[49] = @"Parameters";
  v389 = swift_allocObject();
  *(v389 + 1) = xmmword_1CA981560;
  v388 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v390 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v119 = swift_allocObject();
  v380 = xmmword_1CA981400;
  *(v119 + 16) = xmmword_1CA981400;
  *(v119 + 32) = @"Class";
  *(v119 + 40) = 0xD000000000000014;
  *(v119 + 48) = 0x80000001CA9C6C40;
  v120 = MEMORY[0x1E69E6158];
  *(v119 + 64) = MEMORY[0x1E69E6158];
  *(v119 + 72) = @"Key";
  *(v119 + 80) = 0x547475706E494657;
  *(v119 + 88) = 0xEB00000000657079;
  *(v119 + 104) = v120;
  *(v119 + 112) = @"Label";
  v121 = @"Class";
  v122 = @"Key";
  v123 = @"Label";
  v124 = v121;
  v125 = v122;
  v126 = v123;
  v376 = v124;
  v377 = v125;
  v382 = v126;
  v127 = @"Parameters";
  v385 = sub_1CA94C438("Input Type (WFInputType)", 24);
  v379 = v128;
  v129 = sub_1CA94C438("Input Type", 10);
  v131 = v130;
  v386 = &v364;
  MEMORY[0x1EEE9AC00](v129);
  v132 = &v364 - v396;
  sub_1CA948D98();
  v133 = [v392 bundleURL];
  MEMORY[0x1EEE9AC00](v133);
  v134 = &v364 - v393;
  sub_1CA948B68();

  v135 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v119 + 120) = sub_1CA2F9F14(v385, v379, v129, v131, 0, 0, v132, v134);
  *(v119 + 144) = v391;
  *(v119 + 152) = @"Placeholder";
  v379 = @"Placeholder";
  v385 = sub_1CA94C438("No (WFInputType)", 16);
  v375 = v136;
  v373 = sub_1CA94C438("No", 2);
  v138 = v137;
  v386 = &v364;
  MEMORY[0x1EEE9AC00](v373);
  v139 = v396;
  sub_1CA948D98();
  v140 = v392;
  v141 = [v392 bundleURL];
  MEMORY[0x1EEE9AC00](v141);
  v142 = &v364 - v393;
  sub_1CA948B68();

  v143 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v119 + 160) = sub_1CA2F9F14(v385, v375, v373, v138, 0, 0, &v364 - v139, v142);
  v144 = v391;
  *(v119 + 184) = v391;
  *(v119 + 192) = @"Prompt";
  v145 = @"Prompt";
  v385 = sub_1CA94C438("Shortcut Input (WFInputType)", 28);
  v375 = v146;
  v147 = sub_1CA94C438("Shortcut Input", 14);
  v373 = v148;
  v386 = &v364;
  MEMORY[0x1EEE9AC00](v147);
  sub_1CA948D98();
  v149 = [v140 bundleURL];
  MEMORY[0x1EEE9AC00](v149);
  v150 = &v364 - v393;
  sub_1CA948B68();

  v151 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v119 + 200) = sub_1CA2F9F14(v385, v375, v147, v373, 0, 0, &v364 - v139, v150);
  *(v119 + 224) = v144;
  *(v119 + 232) = @"SelectionType";
  *(v119 + 240) = 0x656C67676F54;
  *(v119 + 248) = 0xE600000000000000;
  v152 = MEMORY[0x1E69E6158];
  *(v119 + 264) = MEMORY[0x1E69E6158];
  *(v119 + 272) = @"TableViewStyle";
  *(v119 + 304) = v152;
  v153 = v152;
  strcpy((v119 + 280), "InsetGrouped");
  *(v119 + 293) = 0;
  *(v119 + 294) = -5120;
  _s3__C3KeyVMa_0(0);
  v386 = v154;
  v385 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v155 = @"SelectionType";
  v156 = @"TableViewStyle";
  v157 = sub_1CA94C1E8();
  v158 = sub_1CA2F864C(v157);
  v389[4] = v158;
  v159 = swift_allocObject();
  *(v159 + 16) = xmmword_1CA981370;
  v160 = v376;
  v161 = v377;
  *(v159 + 32) = v376;
  *(v159 + 40) = 0xD000000000000017;
  *(v159 + 48) = 0x80000001CA9C6CD0;
  *(v159 + 64) = v153;
  *(v159 + 72) = @"DefaultValue";
  *(v159 + 80) = 0;
  *(v159 + 88) = 0xE000000000000000;
  *(v159 + 104) = v153;
  *(v159 + 112) = v161;
  strcpy((v159 + 120), "WFInputSurface");
  *(v159 + 135) = -18;
  v162 = v382;
  *(v159 + 144) = v153;
  *(v159 + 152) = v162;
  v163 = @"DefaultValue";
  v376 = v160;
  v371 = v161;
  v372 = v162;
  v377 = v163;
  v375 = sub_1CA94C438("Input Surface (WFInputSurface)", 30);
  v373 = v164;
  v165 = sub_1CA94C438("Input Surface", 13);
  v370 = v166;
  v382 = &v364;
  MEMORY[0x1EEE9AC00](v165);
  v167 = &v364 - v396;
  sub_1CA948D98();
  v168 = [v392 bundleURL];
  MEMORY[0x1EEE9AC00](v168);
  v169 = v393;
  sub_1CA948B68();

  v170 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v159 + 160) = sub_1CA2F9F14(v375, v373, v165, v370, 0, 0, v167, &v364 - v169);
  v171 = v391;
  v172 = v379;
  *(v159 + 184) = v391;
  *(v159 + 192) = v172;
  v375 = sub_1CA94C438("Nowhere (WFInputSurface)", 24);
  v373 = v173;
  v174 = sub_1CA94C438("Nowhere", 7);
  v370 = v175;
  v382 = &v364;
  MEMORY[0x1EEE9AC00](v174);
  v176 = &v364 - v396;
  sub_1CA948D98();
  v177 = [v392 bundleURL];
  MEMORY[0x1EEE9AC00](v177);
  sub_1CA948B68();

  v178 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v179 = sub_1CA2F9F14(v375, v373, v174, v370, 0, 0, v176, &v364 - v169);
  *(v159 + 224) = v171;
  *(v159 + 200) = v179;
  v180 = sub_1CA94C1E8();
  v181 = sub_1CA2F864C(v180);
  v389[5] = v181;
  v182 = swift_allocObject();
  *(v182 + 16) = xmmword_1CA981380;
  v369 = 0xD000000000000016;
  v370 = 0x80000001CA99C4A0;
  v183 = v376;
  *(v182 + 32) = v376;
  *(v182 + 40) = 0xD000000000000016;
  *(v182 + 48) = 0x80000001CA99C4A0;
  v184 = MEMORY[0x1E69E6158];
  v185 = v377;
  *(v182 + 64) = MEMORY[0x1E69E6158];
  *(v182 + 72) = v185;
  *(v182 + 80) = 0xD000000000000010;
  *(v182 + 88) = 0x80000001CA997F80;
  *(v182 + 104) = v184;
  *(v182 + 112) = @"DisallowedVariableTypes";
  *(v182 + 120) = &unk_1F4A02A10;
  *(v182 + 144) = v383;
  *(v182 + 152) = @"Items";
  v382 = swift_allocObject();
  *&v382->data = v378;
  v186 = @"DisallowedVariableTypes";
  v187 = @"Items";
  v375 = v183;
  v376 = v186;
  v368 = v187;
  v373 = sub_1CA94C438("Stop and Respond (WFNoInputBehavior)", 36);
  v367 = v188;
  v189 = sub_1CA94C438("Stop and Respond", 16);
  v366 = v190;
  *&v378 = &v364;
  MEMORY[0x1EEE9AC00](v189);
  v191 = v396;
  sub_1CA948D98();
  v192 = v392;
  v193 = [v392 bundleURL];
  v365 = &v364;
  MEMORY[0x1EEE9AC00](v193);
  v194 = v393;
  sub_1CA948B68();

  v195 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v196 = sub_1CA2F9F14(v373, v367, v189, v366, 0, 0, &v364 - v191, &v364 - v194);
  v197 = v382;
  v382[1].isa = v196;
  v373 = sub_1CA94C438("Ask For (WFNoInputBehavior)", 27);
  v367 = v198;
  v199 = sub_1CA94C438("Ask For", 7);
  v366 = v200;
  *&v378 = &v364;
  MEMORY[0x1EEE9AC00](v199);
  sub_1CA948D98();
  v201 = [v192 bundleURL];
  MEMORY[0x1EEE9AC00](v201);
  sub_1CA948B68();

  v202 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v197[1].info = sub_1CA2F9F14(v373, v367, v199, v366, 0, 0, &v364 - v191, &v364 - v194);
  v373 = sub_1CA94C438("Get Clipboard (WFNoInputBehavior)", 33);
  v367 = v203;
  v204 = sub_1CA94C438("Get Clipboard", 13);
  v366 = v205;
  *&v378 = &v364;
  MEMORY[0x1EEE9AC00](v204);
  v206 = v396;
  sub_1CA948D98();
  v207 = v392;
  v208 = [v392 bundleURL];
  v365 = &v364;
  MEMORY[0x1EEE9AC00](v208);
  v209 = v393;
  sub_1CA948B68();

  v210 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v211 = sub_1CA2F9F14(v373, v367, v204, v366, 0, 0, &v364 - v206, &v364 - v209);
  v382[1].data = v211;
  v373 = sub_1CA94C438("Continue (WFNoInputBehavior)", 28);
  v367 = v212;
  v213 = sub_1CA94C438("Continue", 8);
  v366 = v214;
  *&v378 = &v364;
  MEMORY[0x1EEE9AC00](v213);
  sub_1CA948D98();
  v215 = [v207 bundleURL];
  MEMORY[0x1EEE9AC00](v215);
  sub_1CA948B68();

  v216 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v217 = sub_1CA2F9F14(v373, v367, v213, v366, 0, 0, &v364 - v206, &v364 - v209);
  v218 = v382;
  v382[1].length = v217;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v373 = v219;
  *(v182 + 160) = v218;
  v220 = v371;
  v221 = v372;
  *(v182 + 184) = v219;
  *(v182 + 192) = v220;
  *(v182 + 200) = 0xD000000000000011;
  *(v182 + 208) = 0x80000001CA997F60;
  *(v182 + 224) = MEMORY[0x1E69E6158];
  *(v182 + 232) = v221;
  *&v378 = v220;
  v382 = v221;
  v222 = sub_1CA94C438("If there’s no input (WFNoInputBehavior)", 41);
  v371 = v223;
  v224 = sub_1CA94C438("If there’s no input", 21);
  v226 = v225;
  v372 = &v364;
  MEMORY[0x1EEE9AC00](v224);
  v227 = &v364 - v396;
  sub_1CA948D98();
  v228 = [v392 bundleURL];
  MEMORY[0x1EEE9AC00](v228);
  v229 = &v364 - v393;
  sub_1CA948B68();

  v230 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v231 = sub_1CA2F9F14(v222, v371, v224, v226, 0, 0, v227, v229);
  *(v182 + 264) = v391;
  *(v182 + 240) = v231;
  v232 = sub_1CA94C1E8();
  v233 = sub_1CA2F864C(v232);
  v389[6] = v233;
  v234 = swift_allocObject();
  *(v234 + 16) = v380;
  *(v234 + 32) = v375;
  *(v234 + 40) = 0xD000000000000014;
  *(v234 + 48) = 0x80000001CA99B500;
  v235 = MEMORY[0x1E69E6158];
  v236 = v376;
  *(v234 + 64) = MEMORY[0x1E69E6158];
  *(v234 + 72) = v236;
  *(v234 + 80) = &unk_1F4A02A50;
  v237 = v378;
  *(v234 + 104) = v383;
  *(v234 + 112) = v237;
  *(v234 + 120) = 0xD000000000000018;
  *(v234 + 128) = 0x80000001CA9C6E60;
  v238 = v382;
  *(v234 + 144) = v235;
  *(v234 + 152) = v238;
  v371 = sub_1CA94C438("Response (WFStopAndRespondResponse)", 35);
  v367 = v239;
  v240 = sub_1CA94C438("Response", 8);
  v366 = v241;
  v372 = &v364;
  MEMORY[0x1EEE9AC00](v240);
  v242 = v396;
  sub_1CA948D98();
  v243 = v392;
  v244 = [v392 bundleURL];
  v365 = &v364;
  MEMORY[0x1EEE9AC00](v244);
  v245 = v393;
  sub_1CA948B68();

  v246 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v234 + 160) = sub_1CA2F9F14(v371, v367, v240, v366, 0, 0, &v364 - v242, &v364 - v245);
  v247 = v391;
  *(v234 + 184) = v391;
  *(v234 + 192) = @"Multiline";
  *(v234 + 200) = 1;
  v248 = v379;
  *(v234 + 224) = MEMORY[0x1E69E6370];
  *(v234 + 232) = v248;
  v249 = @"Multiline";
  v250 = sub_1CA94C438("Response (WFStopAndRespondResponse)", 35);
  v371 = v251;
  v372 = v250;
  v252 = sub_1CA94C438("Response", 8);
  v367 = v253;
  v379 = &v364;
  MEMORY[0x1EEE9AC00](v252);
  sub_1CA948D98();
  v254 = [v243 bundleURL];
  MEMORY[0x1EEE9AC00](v254);
  sub_1CA948B68();

  v255 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v234 + 240) = sub_1CA2F9F14(v372, v371, v252, v367, 0, 0, &v364 - v242, &v364 - v245);
  *(v234 + 264) = v247;
  *(v234 + 272) = @"RequiredResources";
  v379 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v256 = swift_allocObject();
  *(v256 + 16) = v381;
  v372 = @"RequiredResources";
  v257 = MEMORY[0x1E69E6158];
  *(v256 + 32) = sub_1CA94C1E8();
  v371 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v234 + 304) = v371;
  *(v234 + 280) = v256;
  v258 = sub_1CA94C1E8();
  v259 = sub_1CA2F864C(v258);
  v389[7] = v259;
  v260 = swift_allocObject();
  *(v260 + 16) = v380;
  v262 = v369;
  v261 = v370;
  *(v260 + 32) = v375;
  *(v260 + 40) = v262;
  *(v260 + 48) = v261;
  v263 = v377;
  *(v260 + 64) = v257;
  *(v260 + 72) = v263;
  *(v260 + 80) = 0x736F746F6850;
  *(v260 + 88) = 0xE600000000000000;
  v264 = v376;
  *(v260 + 104) = v257;
  *(v260 + 112) = v264;
  *(v260 + 120) = &unk_1F4A02B10;
  v265 = v368;
  *(v260 + 144) = v383;
  *(v260 + 152) = v265;
  v390 = swift_allocObject();
  *(v390 + 1) = xmmword_1CA985370;
  v383 = sub_1CA94C438("Files (WFAskForType)", 20);
  *&v380 = v266;
  v267 = sub_1CA94C438("Files", 5);
  v377 = v268;
  v384 = &v364;
  MEMORY[0x1EEE9AC00](v267);
  v269 = v396;
  sub_1CA948D98();
  v270 = v392;
  v271 = [v392 bundleURL];
  MEMORY[0x1EEE9AC00](v271);
  v272 = &v364 - v393;
  sub_1CA948B68();

  v273 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v274 = sub_1CA2F9F14(v383, v380, v267, v377, 0, 0, &v364 - v269, v272);
  v390[4] = v274;
  v383 = sub_1CA94C438("Text (WFAskForType)", 19);
  *&v380 = v275;
  v276 = sub_1CA94C438("Text", 4);
  v377 = v277;
  v384 = &v364;
  MEMORY[0x1EEE9AC00](v276);
  sub_1CA948D98();
  v278 = [v270 bundleURL];
  MEMORY[0x1EEE9AC00](v278);
  v279 = v393;
  sub_1CA948B68();

  v280 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v281 = sub_1CA2F9F14(v383, v380, v276, v377, 0, 0, &v364 - v269, &v364 - v279);
  v282 = v390;
  v390[5] = v281;
  v383 = sub_1CA94C438("Date (WFAskForType)", 19);
  *&v380 = v283;
  v284 = sub_1CA94C438("Date", 4);
  v286 = v285;
  v384 = &v364;
  MEMORY[0x1EEE9AC00](v284);
  v287 = &v364 - v396;
  sub_1CA948D98();
  v288 = [v392 bundleURL];
  MEMORY[0x1EEE9AC00](v288);
  sub_1CA948B68();

  v289 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v282[6] = sub_1CA2F9F14(v383, v380, v284, v286, 0, 0, v287, &v364 - v279);
  v383 = sub_1CA94C438("Photos (WFAskForType)", 21);
  *&v380 = v290;
  v291 = sub_1CA94C438("Photos", 6);
  v377 = v292;
  v384 = &v364;
  MEMORY[0x1EEE9AC00](v291);
  v293 = v396;
  sub_1CA948D98();
  v294 = v392;
  v295 = [v392 bundleURL];
  v376 = &v364;
  MEMORY[0x1EEE9AC00](v295);
  v296 = &v364 - v393;
  sub_1CA948B68();

  v297 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v298 = sub_1CA2F9F14(v383, v380, v291, v377, 0, 0, &v364 - v293, v296);
  v390[7] = v298;
  v383 = sub_1CA94C438("Contacts (WFAskForType)", 23);
  *&v380 = v299;
  v300 = sub_1CA94C438("Contacts", 8);
  v377 = v301;
  v384 = &v364;
  MEMORY[0x1EEE9AC00](v300);
  sub_1CA948D98();
  v302 = [v294 bundleURL];
  MEMORY[0x1EEE9AC00](v302);
  v303 = v393;
  sub_1CA948B68();

  v304 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v305 = sub_1CA2F9F14(v383, v380, v300, v377, 0, 0, &v364 - v293, &v364 - v303);
  v306 = v390;
  v390[8] = v305;
  v383 = sub_1CA94C438("Email Address (WFAskForType)", 28);
  *&v380 = v307;
  v308 = sub_1CA94C438("Email Address", 13);
  v377 = v309;
  v384 = &v364;
  MEMORY[0x1EEE9AC00](v308);
  v310 = &v364 - v396;
  sub_1CA948D98();
  v311 = v392;
  v312 = [v392 bundleURL];
  v376 = &v364;
  MEMORY[0x1EEE9AC00](v312);
  sub_1CA948B68();

  v313 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v306[9] = sub_1CA2F9F14(v383, v380, v308, v377, 0, 0, v310, &v364 - v303);
  v383 = sub_1CA94C438("Music (WFAskForType)", 20);
  *&v380 = v314;
  v315 = sub_1CA94C438("Music", 5);
  v377 = v316;
  v384 = &v364;
  MEMORY[0x1EEE9AC00](v315);
  v317 = v396;
  sub_1CA948D98();
  v318 = [v311 bundleURL];
  MEMORY[0x1EEE9AC00](v318);
  sub_1CA948B68();

  v319 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v320 = sub_1CA2F9F14(v383, v380, v315, v377, 0, 0, &v364 - v317, &v364 - v303);
  v390[10] = v320;
  v383 = sub_1CA94C438("Phone Number (WFAskForType)", 27);
  *&v380 = v321;
  v322 = sub_1CA94C438("Phone Number", 12);
  v377 = v323;
  v384 = &v364;
  MEMORY[0x1EEE9AC00](v322);
  v324 = &v364 - v317;
  sub_1CA948D98();
  v325 = v392;
  v326 = [v392 bundleURL];
  v376 = &v364;
  MEMORY[0x1EEE9AC00](v326);
  sub_1CA948B68();

  v327 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v328 = sub_1CA2F9F14(v383, v380, v322, v377, 0, 0, v324, &v364 - v303);
  v329 = v390;
  v390[11] = v328;
  *(v260 + 160) = v329;
  v330 = v378;
  *(v260 + 184) = v373;
  *(v260 + 192) = v330;
  strcpy((v260 + 200), "WFAskForType");
  *(v260 + 213) = 0;
  *(v260 + 214) = -5120;
  v331 = v382;
  *(v260 + 224) = MEMORY[0x1E69E6158];
  *(v260 + 232) = v331;
  v332 = sub_1CA94C438("Type (WFAskForType)", 19);
  v384 = v333;
  v334 = sub_1CA94C438("Type", 4);
  v336 = v335;
  v390 = &v364;
  MEMORY[0x1EEE9AC00](v334);
  v337 = v396;
  sub_1CA948D98();
  v338 = [v325 bundleURL];
  MEMORY[0x1EEE9AC00](v338);
  v339 = &v364 - v393;
  sub_1CA948B68();

  v340 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v260 + 240) = sub_1CA2F9F14(v332, v384, v334, v336, 0, 0, &v364 - v337, v339);
  v341 = v372;
  *(v260 + 264) = v391;
  *(v260 + 272) = v341;
  v342 = swift_allocObject();
  *(v342 + 16) = v381;
  *(v342 + 32) = sub_1CA94C1E8();
  *(v260 + 304) = v371;
  *(v260 + 280) = v342;
  v343 = sub_1CA94C1E8();
  v344 = sub_1CA2F864C(v343);
  v345 = v389;
  v389[8] = v344;
  v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v347 = v387;
  v387[50] = v345;
  v347[53] = v346;
  v347[54] = @"ParameterSummary";
  v348 = @"ParameterSummary";
  v349 = sub_1CA94C438("Receive ${WFInputType} from ${WFInputSurface} (Parameter Summary)", 65);
  v351 = v350;
  v352 = sub_1CA94C438("Receive ${WFInputType} from ${WFInputSurface}", 45);
  v354 = v353;
  MEMORY[0x1EEE9AC00](v352);
  sub_1CA948D98();
  v355 = [v392 bundleURL];
  MEMORY[0x1EEE9AC00](v355);
  v356 = &v364 - v393;
  sub_1CA948B68();

  v357 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v358 = sub_1CA2F9F14(v349, v351, v352, v354, 0, 0, &v364 - v337, v356);
  v359 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v360 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v361 = v387;
  v387[55] = v359;
  v361[58] = v360;
  v361[59] = @"ResidentCompatible";
  v361[63] = MEMORY[0x1E69E6370];
  *(v361 + 480) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v362 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA50D4C4(uint64_t a1, void *a2)
{
  sub_1CA25B3D0(0, &qword_1EC445FF0, off_1E836DD68);
  v4 = sub_1CA94C648();

  v5 = [v2 initWithValues:v4 title:a2];

  return v5;
}

void sub_1CA50D548(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446000, &qword_1CA989F00);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7 - v4;
  if (*(*v1 + 16))
  {
    sub_1CA43FC6C(&v7 - v4);
    v6 = _s10ScopeStackV5EntryOMa(0);
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
    {
      sub_1CA27080C(v5, &unk_1EC446000, &qword_1CA989F00);
      sub_1CA6A6C38();
    }

    else
    {
      sub_1CA288180(v5, a1, _s10ScopeStackV5EntryOMa);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1CA50D648(uint64_t a1)
{
  v3 = _s10ScopeStackV5EntryOMa(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA50DCDC(a1, v6, _s10ScopeStackV23PendingControlFlowGroupVMa);
  swift_storeEnumTagMultiPayload();
  sub_1CA69AE40();
  v7 = *(*v1 + 16);
  sub_1CA69B054(v7);
  v8 = *v1;
  *(v8 + 16) = v7 + 1;
  result = sub_1CA288180(v6, v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v7, _s10ScopeStackV5EntryOMa);
  *v1 = v8;
  return result;
}

uint64_t sub_1CA50D794(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1CA949F78();
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s10ScopeStackV23PendingControlFlowGroupVMa(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s10ScopeStackV5EntryOMa(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (&v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v35 - v15;
  sub_1CA50D548(&v35 - v15);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    sub_1CA288180(v16, v9, _s10ScopeStackV23PendingControlFlowGroupVMa);
    v18 = &v9[*(v7 + 28)];
    if (v18[8])
    {
      sub_1CA949C58();
      v19 = sub_1CA949F68();
      v20 = sub_1CA94CC38();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_1CA256000, v19, v20, "Skipping adding group because the branch is locked", v21, 2u);
        MEMORY[0x1CCAA4BF0](v21, -1, -1);
      }

      (*(v36 + 8))(v6, v37);
LABEL_16:
      sub_1CA50D648(v9);
      return sub_1CA50DC84(v9, _s10ScopeStackV23PendingControlFlowGroupVMa);
    }

    result = _s17ControlFlowBranchVMa(0);
    v29 = *(result + 28);
    v30 = *&v18[v29];
    v31 = *(v30 + 16);
    v32 = *(a1 + 16);
    if (!__OFADD__(v31, v32))
    {
      sub_1CA94C218();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v18[v29] = v30;
      if (!isUniquelyReferenced_nonNull_native || v31 + v32 > *(v30 + 24) >> 1)
      {
        sub_1CA2E6A4C();
        v30 = v34;
        *&v18[v29] = v34;
      }

      sub_1CA6B0018();
      *&v18[v29] = v30;
      goto LABEL_16;
    }

LABEL_19:
    __break(1u);
    return result;
  }

  v22 = *v16;
  v23 = *(*v16 + 16);
  v24 = *(a1 + 16);
  if (__OFADD__(v23, v24))
  {
    __break(1u);
    goto LABEL_19;
  }

  sub_1CA94C218();
  v25 = swift_isUniquelyReferenced_nonNull_native();
  v38 = v22;
  if (!v25 || v23 + v24 > *(v22 + 24) >> 1)
  {
    sub_1CA2E6A4C();
    v22 = v26;
    v38 = v26;
  }

  sub_1CA6B0018();
  *v14 = v22;
  swift_storeEnumTagMultiPayload();
  sub_1CA69AE40();
  v27 = *(*v1 + 16);
  sub_1CA69B054(v27);
  v28 = *v1;
  *(v28 + 16) = v27 + 1;
  result = sub_1CA288180(v14, v28 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v27, _s10ScopeStackV5EntryOMa);
  *v2 = v28;
  return result;
}

uint64_t sub_1CA50DBB0(void *a1)
{
  v2 = [a1 groupingIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1CA94C3A8();

  return v3;
}

void sub_1CA50DC20(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1CA94C368();

  [a3 setGroupingIdentifier_];
}

uint64_t sub_1CA50DC84(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_52();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1CA50DCDC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_52();
  (*(v5 + 16))(a2, a1);
  return a2;
}

id sub_1CA50DDA8()
{
  v32 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981380;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001DLL;
  *(inited + 48) = 0x80000001CA9A1270;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  v31 = v5;
  *(inited + 104) = v5;
  *(inited + 112) = @"LocallyProcessesData";
  v6 = MEMORY[0x1E69E6370];
  *(inited + 120) = 1;
  *(inited + 144) = v6;
  *(inited + 152) = @"Name";
  v7 = @"LocallyProcessesData";
  v8 = @"Name";
  v9 = sub_1CA94C438("Get Details of Podcast (Action Name)", 36);
  v11 = v10;
  v12 = sub_1CA94C438("Get Details of Podcast", 22);
  v14 = v13;
  v15 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v18 = [qword_1EDB9F690 bundleURL];
  v19 = sub_1CA948BA8();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v22 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v23 = sub_1CA2F9F14(v9, v11, v12, v14, 0, 0, v17, v21);
  v24 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 160) = v23;
  *(inited + 184) = v24;
  *(inited + 192) = @"Output";
  v25 = @"Output";
  v26 = MEMORY[0x1E69E6158];
  v27 = sub_1CA94C1E8();
  *(inited + 224) = v31;
  *(inited + 200) = v27;
  v28 = sub_1CA94C368();
  *(inited + 264) = v26;
  *(inited + 232) = v28;
  *(inited + 240) = 0xD000000000000018;
  *(inited + 248) = 0x80000001CA993BA0;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id WFTableTemplateParameter.__allocating_init(definition:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithDefinition_];

  return v3;
}

unint64_t sub_1CA50E1E0()
{
  result = qword_1EC441A60;
  if (!qword_1EC441A60)
  {
    type metadata accessor for WFVariableType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441A60);
  }

  return result;
}

uint64_t sub_1CA50E27C()
{
  v1 = OUTLINED_FUNCTION_5_30();
  sub_1CA438380(v1, v2, v3);
  OUTLINED_FUNCTION_14_2();
  return v0;
}

uint64_t sub_1CA50E2D8@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446010, &unk_1CA987B90);
  v3 = sub_1CA94C1E8();
  v4 = sub_1CA948D28();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_37();
  v8 = sub_1CA948CC8();
  v10 = v9;
  result = (*(v6 + 8))(v1, v4);
  *a1 = 4;
  a1[1] = v3;
  a1[2] = 0;
  a1[3] = v8;
  a1[4] = v10;
  a1[5] = 0;
  return result;
}

id WFTableTemplateParameter.init(definition:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for WFTableTemplateParameter();
  v3 = objc_msgSendSuper2(&v5, sel_initWithDefinition_, a1);

  return v3;
}

uint64_t sub_1CA50E624(uint64_t a1)
{
  v3 = OBJC_IVAR___WFTableTemplateContentItemFilterParameter_linkValueTypes;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id WFTableTemplateContentItemFilterParameter.init(definition:)(void *a1)
{
  v3 = OBJC_IVAR___WFTableTemplateContentItemFilterParameter_linkValueTypes;
  sub_1CA25B3D0(0, &unk_1EC441AB0, 0x1E69ACAA0);
  *&v1[v3] = sub_1CA94C1E8();
  if ([a1 objectForKey_])
  {
    sub_1CA94D258();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20[0] = v18;
  v20[1] = v19;
  if (*(&v19 + 1))
  {
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_21;
    }

    v4 = sub_1CA94C368();

    v5 = NSClassFromString(v4);

    if (!v5)
    {
      goto LABEL_21;
    }

    swift_getObjCClassMetadata();
    sub_1CA25B3D0(0, &qword_1EDB9F790, 0x1E6996D58);
    v6 = swift_dynamicCastMetatype();
    if (!v6)
    {
      goto LABEL_21;
    }

    *&v1[OBJC_IVAR___WFTableTemplateContentItemFilterParameter_contentItemClass] = v6;
    v7 = [swift_getObjCClassFromMetadata() allProperties];
    sub_1CA25B3D0(0, &unk_1EC4419D0, 0x1E6996D88);
    v8 = sub_1CA94C658();

    v9 = sub_1CA25B410(v8);
    v10 = 0;
    while (1)
    {
      v11 = v10;
      if (v9 == v10)
      {
LABEL_17:

        v1[OBJC_IVAR___WFTableTemplateContentItemFilterParameter_isFilterable] = v9 != v11;
        v17.receiver = v1;
        v17.super_class = type metadata accessor for WFTableTemplateContentItemFilterParameter();
        v15 = objc_msgSendSuper2(&v17, sel_initWithDefinition_, a1);

        return v15;
      }

      if ((v8 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1CCAA22D0](v10, v8);
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v12 = *(v8 + 8 * v10 + 32);
      }

      v13 = v12;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v14 = [v12 isFilterable];

      v10 = v11 + 1;
      if (v14)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  sub_1CA30F7DC(v20, &unk_1EC444650, &unk_1CA981C70);
LABEL_21:
  result = sub_1CA94D5F8();
  __break(1u);
  return result;
}

id sub_1CA50EA5C(void *a1)
{
  v1 = a1;
  v2 = sub_1CA50FAD8();

  if (v2)
  {
    type metadata accessor for WFVariableType(0);
    v4 = v3;
    sub_1CA50E1E0();
    sub_1CA94C8E8();
    OUTLINED_FUNCTION_14_2();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t *sub_1CA50EB14()
{
  v7 = MEMORY[0x1E69E7CC0];
  if (dynamic_cast_existential_1_conditional(*(v0 + OBJC_IVAR___WFTableTemplateContentItemFilterParameter_contentItemClass), *(v0 + OBJC_IVAR___WFTableTemplateContentItemFilterParameter_contentItemClass), &protocol descriptor for TableTemplateDefaultFindFilterRowContentItem))
  {
    v2 = (*(v1 + 8))();
    v0 = &v7;
    sub_1CA2B8514(v2);
  }

  v3 = OUTLINED_FUNCTION_5_30();
  sub_1CA438638(v3, v4, v5);
  OUTLINED_FUNCTION_14_2();
  return v0;
}

double sub_1CA50EBF8@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___WFTableTemplateContentItemFilterParameter_contentItemClass);
  if (dynamic_cast_existential_1_conditional(v3, v3, &protocol descriptor for TableTemplateDefaultFindFilterRowContentItem) && ((*(v4 + 16))(v53), *v53))
  {
    *a1 = *v53;
    v5 = *&v53[24];
    *(a1 + 8) = *&v53[8];
    *(a1 + 24) = v5;
    result = *&v53[40];
    *(a1 + 40) = *&v53[40];
  }

  else
  {
    v7 = [swift_getObjCClassFromMetadata() allProperties];
    sub_1CA25B3D0(0, &unk_1EC4419D0, 0x1E6996D88);
    v8 = sub_1CA94C658();

    *v53 = MEMORY[0x1E69E7CC0];
    v9 = sub_1CA25B410(v8);
    for (i = 0; v9 != i; ++i)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1CCAA22D0](i, v8);
      }

      else
      {
        if (i >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v11 = *(v8 + 8 * i + 32);
      }

      v12 = v11;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if ([v11 isFilterable])
      {
        v7 = v53;
        sub_1CA94D4D8();
        sub_1CA94D518();
        sub_1CA94D528();
        sub_1CA94D4E8();
      }

      else
      {
      }
    }

    v7 = *v53;
    if (!sub_1CA25B410(*v53))
    {

      *(a1 + 48) = 0;
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      return result;
    }

    sub_1CA275D70(0, (v7 & 0xC000000000000001) == 0, v7);
    if ((v7 & 0xC000000000000001) == 0)
    {
      v13 = *(v7 + 32);
      goto LABEL_18;
    }

LABEL_31:
    v13 = MEMORY[0x1CCAA22D0](0, v7);
LABEL_18:
    v14 = v13;

    *v53 = v3;
    *&v53[8] = v14;
    *&v53[16] = 4;
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446010, &unk_1CA987B90);
    *&v53[24] = sub_1CA94C1E8();
    *&v53[32] = 256;
    v53[34] = 0;
    v16 = sub_1CA948D28();
    OUTLINED_FUNCTION_1_0();
    v18 = v17;
    MEMORY[0x1EEE9AC00](v19);
    OUTLINED_FUNCTION_1_37();
    v20 = sub_1CA948CC8();
    v22 = v21;
    (*(v18 + 8))(v7, v16);
    *&v53[40] = v20;
    *&v53[48] = v22;
    static RowTemplateFindFilterParameterState.possibleOperators(contentItemClass:contentProperty:bounded:)(v3, v15, 0, v23, v24, v25, v26, v27, a1, *v43, *&v43[16], *&v43[24], *&v43[32], *&v43[40], v44, *(&v44 + 1), v45, *(&v45 + 1), v46, *(&v46 + 1), v47, v48, v49, *(&v49 + 1), v50, *(&v50 + 1), v51, *(&v51 + 1), v52, *v53);
    v29 = sub_1CA360E9C(v28);

    sub_1CA2F154C(v29, &v44);

    if (*(&v45 + 1))
    {
      sub_1CA27F268(&v44, &v49);
      v30 = *(&v50 + 1);
      v31 = v51;
      __swift_project_boxed_opaque_existential_1(&v49, *(&v50 + 1));
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
      (*(v31 + 24))(v30, v31);
      type metadata accessor for WFContentOperator(0);
      if (swift_dynamicCast())
      {
        *&v53[16] = v44;
      }

      __swift_destroy_boxed_opaque_existential_0(&v49);
    }

    else
    {
      sub_1CA30F7DC(&v44, &unk_1EC4456B0, &unk_1CA985F30);
    }

    WFContentProperty.displayableTimeUnits.getter();
    v34 = v33;

    if (*(v34 + 16))
    {

      v35 = sub_1CA94D168();
      [objc_allocWithZone(WFCalendarUnitSubstitutableState) initWithNumber_];

      OUTLINED_FUNCTION_3_35();
      OUTLINED_FUNCTION_10_20(v36, v37, v38, v39);
    }

    else
    {
    }

    v44 = *v53;
    v45 = *&v53[16];
    v46 = *&v53[32];
    v47 = *&v53[48];
    v49 = *v53;
    v50 = *&v53[16];
    v51 = *&v53[32];
    v52 = *&v53[48];
    sub_1CA2DBD00(&v44, v43);
    sub_1CA50FF28(&v49);
    v40 = v47;
    v41 = v45;
    *v42 = v44;
    *(v42 + 16) = v41;
    result = *&v46;
    *(v42 + 32) = v46;
    *(v42 + 48) = v40;
  }

  return result;
}

void sub_1CA50F12C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id, uint64_t, uint64_t, uint64_t, uint64_t *))
{
  v7 = v4;
  if (a1)
  {
    v9 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v7 + 24);
    a4(v9, a2, a3, isUniquelyReferenced_nonNull_native, &v12);

    *(v7 + 24) = v12;
  }

  else
  {
    sub_1CA271BF8(a2, a3);
    if (v11)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v12 = *(v4 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4457E0, &qword_1CA990910);
      sub_1CA94D588();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446010, &unk_1CA987B90);
      sub_1CA94D5A8();
      swift_unknownObjectRelease();
      *(v4 + 24) = v12;
    }
  }
}

double static TableTemplateDefaultFindFilterRowContentItem.defaultRowForAdding.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t static WFCalendarEventContentItem.defaultFindFilterRows.getter()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = sub_1CA94C368();
  v5 = [ObjCClassFromMetadata propertyForName_];

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  *&v21 = v0;
  *(&v21 + 1) = v5;
  *&v22 = 1000;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446010, &unk_1CA987B90);
  *(&v22 + 1) = sub_1CA94C1E8();
  LOWORD(v23) = 1;
  BYTE2(v23) = 0;
  sub_1CA948D28();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_37();
  sub_1CA948CC8();
  v8 = OUTLINED_FUNCTION_6_31();
  v9(v8);
  *(&v23 + 1) = v1;
  sub_1CA25B3D0(0, &qword_1EDB9FAC0, 0x1E696AEC0);
  v10 = sub_1CA94D008();
  v11 = [objc_allocWithZone(WFNumberStringSubstitutableState) initWithValue_];

  OUTLINED_FUNCTION_2_41();
  sub_1CA50F12C(v11, v12, 0xE600000000000000, v13);
  v14 = sub_1CA94D168();
  [objc_allocWithZone(WFCalendarUnitSubstitutableState) initWithNumber_];

  OUTLINED_FUNCTION_3_35();
  OUTLINED_FUNCTION_10_20(v15, v16, v17, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443FF0, &unk_1CA989F90);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1CA981310;
  *(v19 + 32) = v21;
  *(v19 + 48) = v22;
  *(v19 + 64) = v23;
  *(v19 + 80) = v2;

  return v19;
}

void static WFImageContentItem.defaultRowForAdding.getter(uint64_t a1@<X8>)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = sub_1CA94C368();
  v6 = [ObjCClassFromMetadata propertyForName_];

  if (v6)
  {
    *&v16 = v1;
    *(&v16 + 1) = v6;
    *&v17 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446010, &unk_1CA987B90);
    *(&v17 + 1) = sub_1CA94C1E8();
    LOWORD(v18) = 256;
    BYTE2(v18) = 0;
    sub_1CA948D28();
    OUTLINED_FUNCTION_1_0();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_1_37();
    sub_1CA948CC8();
    v8 = OUTLINED_FUNCTION_6_31();
    v9(v8);
    *(&v18 + 1) = v5;
    sub_1CA25B3D0(0, &qword_1EDB9FAC0, 0x1E696AEC0);
    v10 = sub_1CA94D008();
    v11 = [objc_allocWithZone(WFNumberStringSubstitutableState) initWithValue_];

    OUTLINED_FUNCTION_2_41();
    sub_1CA50F12C(v11, v12, 0xE600000000000000, v13);
    v14 = v18;
    v15 = v2;
    *a1 = v16;
    *(a1 + 16) = v17;
  }

  else
  {
    v15 = 0;
    v14 = 0uLL;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  *(a1 + 32) = v14;
  *(a1 + 48) = v15;
}

void sub_1CA50F7A4(void *a2@<X8>)
{
  v3 = v2;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = sub_1CA94C368();
  v7 = [ObjCClassFromMetadata propertyForName_];

  if (v7)
  {
    v21 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446010, &unk_1CA987B90);
    v8 = sub_1CA94C1E8();
    v9 = sub_1CA948D28();
    OUTLINED_FUNCTION_1_0();
    v11 = v10;
    MEMORY[0x1EEE9AC00](v12);
    v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1CA948D18();
    v15 = sub_1CA948CC8();
    v17 = v16;

    (*(v11 + 8))(v14, v9);
    *a2 = v3;
    a2[1] = v7;
    v18 = 256;
    v19 = 4;
  }

  else
  {
    v19 = 0;
    v8 = 0;
    v18 = 0;
    v15 = 0;
    v17 = 0;
    *a2 = 0;
    a2[1] = 0;
  }

  a2[2] = v19;
  a2[3] = v8;
  a2[4] = v18;
  a2[5] = v15;
  a2[6] = v17;
}

uint64_t sub_1CA50F960(void *a1)
{
  v1 = a1[1];
  v2 = swift_unknownObjectRetain();
  return sub_1CA50F9D8(v2, v1);
}

uint64_t sub_1CA50F9D8(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11WorkflowKit37WFTableTemplateEntityUpdaterParameter_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1CA50FA44(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC11WorkflowKit37WFTableTemplateEntityUpdaterParameter_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_1CA2DA264;
}

uint64_t sub_1CA50FAD8()
{
  swift_getObjectType();
  v0 = [swift_getObjCClassFromMetadata() allInsertableVariableTypes];
  type metadata accessor for WFVariableType(0);
  sub_1CA50E1E0();
  v1 = sub_1CA94C8F8();

  return v1;
}

uint64_t sub_1CA50FB88()
{
  v1 = OUTLINED_FUNCTION_5_30();
  sub_1CA4388E8(v1, v2, v3);
  OUTLINED_FUNCTION_14_2();
  return v0;
}

uint64_t sub_1CA50FBBC(uint64_t a1)
{
  OUTLINED_FUNCTION_7_28(a1);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v4 = (*(v2 + 8))(ObjectType, v2);
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1CA50FC44(const char *a1)
{
  v1 = sub_1CA94C438(a1);
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDB9F690;
  v3 = sub_1CA94C368();
  sub_1CA94C368();
  OUTLINED_FUNCTION_14_2();
  v4 = [v2 localizedStringForKey:v3 value:v1 table:0];

  v5 = sub_1CA94C3A8();
  return v5;
}

id WFTableTemplateEntityUpdaterParameter.init(definition:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC11WorkflowKit37WFTableTemplateEntityUpdaterParameter_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for WFTableTemplateEntityUpdaterParameter();
  v3 = objc_msgSendSuper2(&v5, sel_initWithDefinition_, a1);

  return v3;
}

double sub_1CA50FDE4@<D0>(_OWORD *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC11WorkflowKit37WFTableTemplateEntityUpdaterParameter_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v4 + 16))(ObjectType, v4);
    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *(a1 + 44) = 0u;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
  }

  return result;
}

id sub_1CA50FE9C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1CA50FFA8()
{
  result = qword_1EC441E48;
  if (!qword_1EC441E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441E48);
  }

  return result;
}

unint64_t sub_1CA510000()
{
  result = qword_1EC446060;
  if (!qword_1EC446060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446060);
  }

  return result;
}

id sub_1CA510484()
{
  v227 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000014;
  *(inited + 48) = 0x80000001CA9C72D0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("carplay|parking|save|record", 27);
  v6 = v5;
  v7 = sub_1CA94C438("carplay|parking|save|record", 27);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v244 = v11;
  v246 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v220 - v246;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v243 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v241 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v245 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v220 - v245;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v242 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v239 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  v237 = xmmword_1CA97EDF0;
  *(v23 + 16) = xmmword_1CA97EDF0;
  *(v23 + 32) = @"DescriptionResult";
  v24 = @"Description";
  v25 = @"DescriptionResult";
  v26 = sub_1CA94C438("The location of the car and its associated details, if any.", 59);
  v235 = v27;
  v236 = v26;
  v234 = sub_1CA94C438("The location of the car and its associated details, if any.", 59);
  v29 = v28;
  v238 = &v220;
  MEMORY[0x1EEE9AC00](v234);
  v30 = &v220 - v246;
  sub_1CA948D98();
  v31 = v243;
  v32 = [v243 bundleURL];
  v240 = inited;
  v33 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v34 = v245;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v23 + 40) = sub_1CA2F9F14(v236, v235, v234, v29, 0, 0, v30, &v220 - v34);
  v36 = v242;
  *(v23 + 64) = v242;
  *(v23 + 72) = @"DescriptionSummary";
  v37 = @"DescriptionSummary";
  v38 = sub_1CA94C438("Saves details of your Parked Car in the Maps app.", 49);
  v235 = v39;
  v236 = v38;
  v40 = sub_1CA94C438("Saves details of your Parked Car in the Maps app.", 49);
  v42 = v41;
  v238 = &v220;
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v220 - v246;
  sub_1CA948D98();
  v44 = [v31 bundleURL];
  MEMORY[0x1EEE9AC00](v44);
  sub_1CA948B68();

  v45 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v46 = sub_1CA2F9F14(v236, v235, v40, v42, 0, 0, v43, &v220 - v34);
  *(v23 + 104) = v36;
  *(v23 + 80) = v46;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v47 = sub_1CA94C1E8();
  v48 = v239;
  v49 = sub_1CA6B3784(v47);
  v50 = v240;
  v240[20] = v49;
  v50[23] = v48;
  v50[24] = @"IconColor";
  v50[25] = 1953392980;
  v50[26] = 0xE400000000000000;
  v51 = MEMORY[0x1E69E6158];
  v50[28] = MEMORY[0x1E69E6158];
  v50[29] = @"IconSymbol";
  v50[30] = 0x6C6C69662E726163;
  v50[31] = 0xE800000000000000;
  v50[33] = v51;
  v50[34] = @"IconSymbolColor";
  v50[35] = 0x6E65657247;
  v50[36] = 0xE500000000000000;
  v50[38] = v51;
  v50[39] = @"Input";
  v52 = v51;
  v53 = v50;
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v54 = swift_initStackObject();
  *(v54 + 16) = xmmword_1CA981350;
  *(v54 + 32) = 0x656C7069746C754DLL;
  *(v54 + 40) = 0xE800000000000000;
  v55 = MEMORY[0x1E69E6370];
  *(v54 + 48) = 0;
  *(v54 + 72) = v55;
  strcpy((v54 + 80), "ParameterKey");
  *(v54 + 93) = 0;
  *(v54 + 94) = -5120;
  *(v54 + 96) = 0x697461636F4C4657;
  *(v54 + 104) = 0xEA00000000006E6FLL;
  *(v54 + 120) = v52;
  *(v54 + 128) = 0x6465726975716552;
  *(v54 + 136) = 0xE800000000000000;
  *(v54 + 144) = 1;
  *(v54 + 168) = v55;
  *(v54 + 176) = 0x7365707954;
  *(v54 + 184) = 0xE500000000000000;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v54 + 216) = v239;
  *(v54 + 192) = &unk_1F4A02C90;
  v56 = @"IconColor";
  v57 = @"IconSymbol";
  v58 = @"IconSymbolColor";
  v59 = @"Input";
  v60 = sub_1CA94C1E8();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v236 = v61;
  v53[40] = v60;
  v53[43] = v61;
  v53[44] = @"Name";
  v62 = @"Name";
  v63 = sub_1CA94C438("Set Parked Car (Action Name)", 28);
  v233 = v64;
  v234 = v63;
  v65 = sub_1CA94C438("Set Parked Car", 14);
  v67 = v66;
  v238 = &v220;
  MEMORY[0x1EEE9AC00](v65);
  v68 = &v220 - v246;
  sub_1CA948D98();
  v69 = v243;
  v70 = [v243 bundleURL];
  MEMORY[0x1EEE9AC00](v70);
  v71 = &v220 - v245;
  sub_1CA948B68();

  v72 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v73 = sub_1CA2F9F14(v234, v233, v65, v67, 0, 0, v68, v71);
  v74 = v240;
  v240[45] = v73;
  v75 = v242;
  v74[48] = v242;
  v74[49] = @"Output";
  v76 = swift_allocObject();
  v226 = xmmword_1CA9813C0;
  *(v76 + 16) = xmmword_1CA9813C0;
  *(v76 + 32) = 0x656C7069746C754DLL;
  *(v76 + 40) = 0xE800000000000000;
  *(v76 + 48) = 0;
  *(v76 + 72) = MEMORY[0x1E69E6370];
  *(v76 + 80) = 0x614E74757074754FLL;
  *(v76 + 88) = 0xEA0000000000656DLL;
  v77 = @"Output";
  v78 = sub_1CA94C438("Parked Car (Default Output Name)", 32);
  v233 = v79;
  v234 = v78;
  v80 = sub_1CA94C438("Parked Car", 10);
  v232 = v81;
  v238 = &v220;
  MEMORY[0x1EEE9AC00](v80);
  v82 = &v220 - v246;
  sub_1CA948D98();
  v83 = [v69 bundleURL];
  MEMORY[0x1EEE9AC00](v83);
  v84 = &v220 - v245;
  sub_1CA948B68();

  v85 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v76 + 96) = sub_1CA2F9F14(v234, v233, v80, v232, 0, 0, v82, v84);
  *(v76 + 120) = v75;
  *(v76 + 128) = 0x7365707954;
  *(v76 + 168) = v239;
  *(v76 + 136) = 0xE500000000000000;
  *(v76 + 144) = &unk_1F4A02CD0;
  v86 = MEMORY[0x1E69E6158];
  v87 = sub_1CA94C1E8();
  v88 = v240;
  v240[50] = v87;
  v88[53] = v236;
  v88[54] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v239 = swift_allocObject();
  *(v239 + 16) = xmmword_1CA981470;
  v238 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_1CA981400;
  v90 = @"Parameters";
  *(v89 + 32) = sub_1CA94C368();
  *(v89 + 40) = 1;
  v91 = MEMORY[0x1E69E6370];
  *(v89 + 64) = MEMORY[0x1E69E6370];
  *(v89 + 72) = @"Class";
  *(v89 + 104) = v86;
  v224 = 0xD000000000000013;
  *(v89 + 80) = 0xD000000000000013;
  *(v89 + 88) = 0x80000001CA99B730;
  v233 = @"Class";
  v225 = 0xD000000000000018;
  *(v89 + 112) = sub_1CA94C368();
  *(v89 + 120) = 1;
  *(v89 + 144) = v91;
  *(v89 + 152) = @"Description";
  v232 = @"Description";
  v92 = sub_1CA94C438("The location of the car. (WFLocation)", 37);
  v230 = v93;
  v94 = sub_1CA94C438("The location of the car.", 24);
  v96 = v95;
  v231 = &v220;
  MEMORY[0x1EEE9AC00](v94);
  v97 = v246;
  sub_1CA948D98();
  v98 = [v243 bundleURL];
  MEMORY[0x1EEE9AC00](v98);
  v99 = &v220 - v245;
  sub_1CA948B68();

  v100 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v89 + 160) = sub_1CA2F9F14(v92, v230, v94, v96, 0, 0, &v220 - v97, v99);
  *(v89 + 184) = v242;
  *(v89 + 192) = @"Key";
  *(v89 + 200) = 0x697461636F4C4657;
  *(v89 + 208) = 0xEA00000000006E6FLL;
  *(v89 + 224) = MEMORY[0x1E69E6158];
  *(v89 + 232) = @"Label";
  v101 = @"Key";
  v102 = @"Label";
  v103 = v101;
  v104 = v102;
  v230 = v103;
  v231 = v104;
  v228 = sub_1CA94C438("Location (WFLocation)", 21);
  v223 = v105;
  v222 = sub_1CA94C438("Location", 8);
  v107 = v106;
  v229 = &v220;
  MEMORY[0x1EEE9AC00](v222);
  v108 = &v220 - v97;
  sub_1CA948D98();
  v109 = v243;
  v110 = [v243 bundleURL];
  MEMORY[0x1EEE9AC00](v110);
  v111 = v245;
  sub_1CA948B68();

  v112 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v89 + 240) = sub_1CA2F9F14(v228, v223, v222, v107, 0, 0, v108, &v220 - v111);
  v113 = v242;
  *(v89 + 264) = v242;
  *(v89 + 272) = @"Prompt";
  v114 = @"Prompt";
  v228 = sub_1CA94C438("What's the car location? (WFLocation)", 37);
  v223 = v115;
  v116 = sub_1CA94C438("What's the car location?", 24);
  v222 = v117;
  v229 = &v220;
  MEMORY[0x1EEE9AC00](v116);
  v118 = &v220 - v246;
  sub_1CA948D98();
  v119 = [v109 bundleURL];
  MEMORY[0x1EEE9AC00](v119);
  sub_1CA948B68();

  v120 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v121 = sub_1CA2F9F14(v228, v223, v116, v222, 0, 0, v118, &v220 - v111);
  *(v89 + 304) = v113;
  *(v89 + 280) = v121;
  _s3__C3KeyVMa_0(0);
  v229 = v122;
  v228 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v123 = sub_1CA94C1E8();
  v124 = sub_1CA2F864C(v123);
  *(v239 + 32) = v124;
  v125 = swift_allocObject();
  *(v125 + 16) = xmmword_1CA981380;
  *(v125 + 32) = v233;
  *(v125 + 40) = 0xD000000000000014;
  *(v125 + 48) = 0x80000001CA99B500;
  v126 = v232;
  *(v125 + 64) = MEMORY[0x1E69E6158];
  *(v125 + 72) = v126;
  v127 = sub_1CA94C438("Optional text that will be stored along with your parked car. (WFSetParkedCarNotes)", 83);
  v221 = v128;
  v222 = v127;
  v129 = sub_1CA94C438("Optional text that will be stored along with your parked car.", 61);
  v220 = v130;
  v223 = &v220;
  MEMORY[0x1EEE9AC00](v129);
  v131 = v246;
  sub_1CA948D98();
  v132 = [v243 bundleURL];
  MEMORY[0x1EEE9AC00](v132);
  v133 = &v220 - v245;
  sub_1CA948B68();

  v134 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v135 = sub_1CA2F9F14(v222, v221, v129, v220, 0, 0, &v220 - v131, v133);
  v136 = v224;
  *(v125 + 80) = v135;
  v137 = v230;
  *(v125 + 104) = v242;
  *(v125 + 112) = v137;
  *(v125 + 120) = v136;
  *(v125 + 128) = 0x80000001CA9C7530;
  v138 = v231;
  *(v125 + 144) = MEMORY[0x1E69E6158];
  *(v125 + 152) = v138;
  v139 = sub_1CA94C438("Notes (WFSetParkedCarNotes)", 27);
  v222 = v140;
  v223 = v139;
  v141 = sub_1CA94C438("Notes", 5);
  v221 = v142;
  v224 = &v220;
  MEMORY[0x1EEE9AC00](v141);
  sub_1CA948D98();
  v143 = [v243 bundleURL];
  MEMORY[0x1EEE9AC00](v143);
  v144 = &v220 - v245;
  sub_1CA948B68();

  v145 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v125 + 160) = sub_1CA2F9F14(v223, v222, v141, v221, 0, 0, &v220 - v131, v144);
  *(v125 + 184) = v242;
  *(v125 + 192) = @"Multiline";
  *(v125 + 200) = 1;
  *(v125 + 224) = MEMORY[0x1E69E6370];
  *(v125 + 232) = @"TextAlignment";
  v146 = MEMORY[0x1E69E6158];
  *(v125 + 264) = MEMORY[0x1E69E6158];
  *(v125 + 240) = 0x7468676952;
  *(v125 + 248) = 0xE500000000000000;
  v147 = @"Multiline";
  v148 = @"TextAlignment";
  v149 = sub_1CA94C1E8();
  v150 = sub_1CA2F864C(v149);
  *(v239 + 40) = v150;
  v151 = swift_allocObject();
  *(v151 + 16) = xmmword_1CA981370;
  *(v151 + 32) = v233;
  *(v151 + 40) = 0xD000000000000019;
  *(v151 + 48) = 0x80000001CA99B030;
  v152 = v232;
  *(v151 + 64) = v146;
  *(v151 + 72) = v152;
  v153 = sub_1CA94C438("An optional image of the location where you parked the car. (WFImage)", 69);
  v233 = v154;
  v155 = sub_1CA94C438("An optional image of the location where you parked the car.", 59);
  v157 = v156;
  v234 = &v220;
  MEMORY[0x1EEE9AC00](v155);
  v158 = &v220 - v246;
  sub_1CA948D98();
  v159 = v243;
  v160 = [v243 bundleURL];
  MEMORY[0x1EEE9AC00](v160);
  v161 = &v220 - v245;
  sub_1CA948B68();

  v162 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v151 + 80) = sub_1CA2F9F14(v153, v233, v155, v157, 0, 0, v158, v161);
  v163 = v230;
  *(v151 + 104) = v242;
  *(v151 + 112) = v163;
  *(v151 + 120) = 0x6567616D494657;
  *(v151 + 128) = 0xE700000000000000;
  v164 = v231;
  *(v151 + 144) = MEMORY[0x1E69E6158];
  *(v151 + 152) = v164;
  v165 = sub_1CA94C438("Image (WFImage)", 15);
  v232 = v166;
  v233 = v165;
  v167 = sub_1CA94C438("Image", 5);
  v231 = v168;
  v234 = &v220;
  MEMORY[0x1EEE9AC00](v167);
  v169 = v246;
  sub_1CA948D98();
  v170 = [v159 bundleURL];
  v230 = &v220;
  MEMORY[0x1EEE9AC00](v170);
  v171 = v245;
  sub_1CA948B68();

  v172 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v151 + 160) = sub_1CA2F9F14(v233, v232, v167, v231, 0, 0, &v220 - v169, &v220 - v171);
  v173 = v242;
  *(v151 + 184) = v242;
  *(v151 + 192) = @"Placeholder";
  v174 = @"Placeholder";
  v175 = sub_1CA94C438("Image (WFImage)", 15);
  v232 = v176;
  v233 = v175;
  v177 = sub_1CA94C438("Image", 5);
  v231 = v178;
  v234 = &v220;
  MEMORY[0x1EEE9AC00](v177);
  sub_1CA948D98();
  v179 = [v243 bundleURL];
  MEMORY[0x1EEE9AC00](v179);
  sub_1CA948B68();

  v180 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v181 = sub_1CA2F9F14(v233, v232, v177, v231, 0, 0, &v220 - v169, &v220 - v171);
  *(v151 + 224) = v173;
  *(v151 + 200) = v181;
  v182 = sub_1CA94C1E8();
  v183 = sub_1CA2F864C(v182);
  v184 = v239;
  *(v239 + 48) = v183;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v186 = v240;
  v240[55] = v184;
  v186[58] = v185;
  v186[59] = @"ParameterSummary";
  v187 = @"ParameterSummary";
  v188 = sub_1CA94C438("Set Parked Car at ${WFLocation} (Parameter Summary)", 51);
  v190 = v189;
  v191 = sub_1CA94C438("Set Parked Car at ${WFLocation}", 31);
  v193 = v192;
  MEMORY[0x1EEE9AC00](v191);
  v194 = &v220 - v246;
  sub_1CA948D98();
  v195 = [v243 bundleURL];
  MEMORY[0x1EEE9AC00](v195);
  v196 = &v220 - v245;
  sub_1CA948B68();

  v197 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v198 = sub_1CA2F9F14(v188, v190, v191, v193, 0, 0, v194, v196);
  v199 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v200 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v201 = v240;
  v240[60] = v199;
  v201[63] = v200;
  v201[64] = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v202 = swift_allocObject();
  *(v202 + 16) = v237;
  v247 = 0;
  v248 = 0;
  v203 = type metadata accessor for WFDeviceIdiomResource();
  v204 = objc_allocWithZone(v203);
  v205 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v247);
  *(v202 + 56) = v203;
  *(v202 + 32) = v206;
  v207 = swift_initStackObject();
  *(v207 + 16) = v237;
  *(v207 + 32) = 0xD000000000000011;
  *(v207 + 40) = 0x80000001CA99B240;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v208 = swift_allocObject();
  *(v208 + 16) = xmmword_1CA981310;
  v209 = swift_allocObject();
  *(v209 + 16) = v226;
  strcpy((v209 + 32), "WFParameterKey");
  *(v209 + 47) = -18;
  *(v209 + 48) = 0x697461636F4C4657;
  *(v209 + 56) = 0xEA00000000006E6FLL;
  v210 = MEMORY[0x1E69E6158];
  *(v209 + 72) = MEMORY[0x1E69E6158];
  *(v209 + 80) = 0xD000000000000010;
  *(v209 + 88) = 0x80000001CA993570;
  v211 = v210;
  v212 = sub_1CA94C1E8();
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443800, &unk_1CA981440);
  *(v209 + 96) = v212;
  *(v209 + 120) = v213;
  *(v209 + 128) = 0x72756F7365524657;
  *(v209 + 168) = v211;
  *(v209 + 136) = 0xEF7373616C436563;
  *(v209 + 144) = 0xD00000000000001BLL;
  *(v209 + 152) = 0x80000001CA993590;
  *(v208 + 32) = sub_1CA94C1E8();
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v207 + 48) = v208;
  *(v207 + 72) = v214;
  *(v207 + 80) = 0x72756F7365524657;
  *(v207 + 120) = v211;
  v215 = v225;
  *(v207 + 88) = 0xEF7373616C436563;
  *(v207 + 96) = v215;
  *(v207 + 104) = 0x80000001CA994040;
  v216 = sub_1CA94C1E8();
  *(v202 + 88) = v236;
  *(v202 + 64) = v216;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  v218 = v240;
  v240[68] = v217;
  v218[65] = v202;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA511FA8()
{
  v0 = sub_1CA25B3D0(0, &unk_1EC4417F0, 0x1E6996F08);
  if (OUTLINED_FUNCTION_13_24(v0))
  {
    return 1;
  }

  v2 = sub_1CA25B3D0(0, &qword_1EC4417E8, 0x1E6996E08);
  if (OUTLINED_FUNCTION_13_24(v2))
  {
    return 2;
  }

  v3 = sub_1CA25B3D0(0, &qword_1EC441838, 0x1E6996E90);
  if (OUTLINED_FUNCTION_13_24(v3))
  {
    return 3;
  }

  v4 = sub_1CA25B3D0(0, &unk_1EC441A10, 0x1E6996F88);
  return 4 * (OUTLINED_FUNCTION_13_24(v4) != 0);
}

uint64_t sub_1CA51205C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616C70 && a2 == 0xE500000000000000;
  if (v4 || (sub_1CA94D7F8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562;
    if (v6 || (sub_1CA94D7F8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6464416C69616D65 && a2 == 0xEC00000073736572;
      if (v7 || (sub_1CA94D7F8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
        if (v8 || (sub_1CA94D7F8() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 7107189 && a2 == 0xE300000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1CA94D7F8();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1CA512208(char a1)
{
  result = 0x6E69616C70;
  switch(a1)
  {
    case 1:
      result = 0x6D754E656E6F6870;
      break;
    case 2:
      result = 0x6464416C69616D65;
      break;
    case 3:
      result = 0x6E6F697461636F6CLL;
      break;
    case 4:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CA5122A8(void *a1, uint64_t a2)
{
  v47 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4460D8, &qword_1CA98A3E8);
  OUTLINED_FUNCTION_1_0();
  v45 = v4;
  v46 = v3;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_43();
  v44 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4460E0, &qword_1CA98A3F0);
  OUTLINED_FUNCTION_1_0();
  v42 = v8;
  v43 = v7;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_43();
  v41 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4460E8, &qword_1CA98A3F8);
  OUTLINED_FUNCTION_1_0();
  v39 = v12;
  v40 = v11;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_43();
  v38 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4460F0, &qword_1CA98A400);
  OUTLINED_FUNCTION_1_0();
  v36 = v16;
  v37 = v15;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v35 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4460F8, &qword_1CA98A408);
  OUTLINED_FUNCTION_1_0();
  v35 = v21;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v35 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446100, &qword_1CA98A410);
  OUTLINED_FUNCTION_1_0();
  v27 = v26;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v35 - v29;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CA514800();
  sub_1CA94D9B8();
  switch(v47)
  {
    case 1:
      v48[1] = 1;
      sub_1CA514950();
      sub_1CA94D748();
      (*(v36 + 8))(v19, v37);
      return (*(v27 + 8))(v30, v25);
    case 2:
      v49 = 2;
      sub_1CA5148FC();
      v31 = v38;
      OUTLINED_FUNCTION_4_40(&type metadata for RowTemplateStringStyle.EmailAddressCodingKeys, &v49);
      v33 = v39;
      v32 = v40;
      goto LABEL_6;
    case 3:
      v50 = 3;
      sub_1CA5148A8();
      v31 = v41;
      OUTLINED_FUNCTION_4_40(&type metadata for RowTemplateStringStyle.LocationCodingKeys, &v50);
      v33 = v42;
      v32 = v43;
      goto LABEL_6;
    case 4:
      v51 = 4;
      sub_1CA514854();
      v31 = v44;
      OUTLINED_FUNCTION_4_40(&type metadata for RowTemplateStringStyle.UrlCodingKeys, &v51);
      v33 = v45;
      v32 = v46;
LABEL_6:
      (*(v33 + 8))(v31, v32);
      break;
    default:
      v48[0] = 0;
      sub_1CA5149A4();
      OUTLINED_FUNCTION_4_40(&type metadata for RowTemplateStringStyle.PlainCodingKeys, v48);
      (*(v35 + 8))(v24, v20);
      break;
  }

  return (*(v27 + 8))(v30, v25);
}

char *sub_1CA512708(void *a1)
{
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446078, &qword_1CA98A3B0);
  OUTLINED_FUNCTION_1_0();
  v59 = v2;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_43();
  v63 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446080, &qword_1CA98A3B8);
  OUTLINED_FUNCTION_1_0();
  v57 = v6;
  v58 = v5;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_43();
  v61 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446088, &qword_1CA98A3C0);
  OUTLINED_FUNCTION_1_0();
  v55 = v10;
  v56 = v9;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_43();
  v60 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446090, &qword_1CA98A3C8);
  OUTLINED_FUNCTION_1_0();
  v53 = v14;
  v54 = v13;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v48 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446098, &qword_1CA98A3D0);
  OUTLINED_FUNCTION_1_0();
  v52 = v19;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v48 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4460A0, &unk_1CA98A3D8);
  OUTLINED_FUNCTION_1_0();
  v62 = v24;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v48 - v26;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CA514800();
  v28 = v65;
  sub_1CA94D9A8();
  if (v28)
  {
    goto LABEL_8;
  }

  v49 = v18;
  v50 = v22;
  v51 = v17;
  v30 = v63;
  v29 = v64;
  v65 = a1;
  v31 = v27;
  sub_1CA94D738();
  result = sub_1CA297584();
  if (v34 == v35 >> 1)
  {
LABEL_7:
    v42 = sub_1CA94D4A8();
    swift_allocError();
    v44 = v43;
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445D88, &qword_1CA989470) + 48);
    *v44 = &type metadata for RowTemplateStringStyle;
    sub_1CA94D708();
    sub_1CA94D498();
    (*(*(v42 - 8) + 104))(v44, *MEMORY[0x1E69E6AF8], v42);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v62 + 8))(v31, v23);
    a1 = v65;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_0(a1);
    return v22;
  }

  if (v34 < (v35 >> 1))
  {
    v22 = *(v33 + v34);
    sub_1CA4E42C4();
    v37 = v36;
    v39 = v38;
    swift_unknownObjectRelease();
    v31 = v27;
    if (v37 == v39 >> 1)
    {
      v40 = v62;
      switch(v22)
      {
        case 1uLL:
          v67 = 1;
          sub_1CA514950();
          v45 = v51;
          OUTLINED_FUNCTION_5_31(&type metadata for RowTemplateStringStyle.PhoneNumberCodingKeys, &v67);
          swift_unknownObjectRelease();
          v47 = v53;
          v46 = v54;
          goto LABEL_14;
        case 2uLL:
          v68 = 2;
          sub_1CA5148FC();
          v45 = v60;
          OUTLINED_FUNCTION_5_31(&type metadata for RowTemplateStringStyle.EmailAddressCodingKeys, &v68);
          swift_unknownObjectRelease();
          v47 = v55;
          v46 = v56;
          goto LABEL_14;
        case 3uLL:
          v69[0] = 3;
          sub_1CA5148A8();
          v45 = v61;
          OUTLINED_FUNCTION_5_31(&type metadata for RowTemplateStringStyle.LocationCodingKeys, v69);
          swift_unknownObjectRelease();
          v47 = v57;
          v46 = v58;
LABEL_14:
          (*(v47 + 8))(v45, v46);
          break;
        case 4uLL:
          v69[1] = 4;
          sub_1CA514854();
          sub_1CA94D6F8();
          swift_unknownObjectRelease();
          (*(v59 + 8))(v30, v29);
          break;
        default:
          v66 = 0;
          sub_1CA5149A4();
          v41 = v50;
          OUTLINED_FUNCTION_5_31(&type metadata for RowTemplateStringStyle.PlainCodingKeys, &v66);
          swift_unknownObjectRelease();
          (*(v52 + 8))(v41, v49);
          break;
      }

      (*(v40 + 8))(v27, v23);
      __swift_destroy_boxed_opaque_existential_0(v65);
      return v22;
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}