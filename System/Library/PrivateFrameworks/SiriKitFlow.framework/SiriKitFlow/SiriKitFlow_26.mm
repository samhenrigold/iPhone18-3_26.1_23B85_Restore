uint64_t sub_1DCDAF034()
{
  OUTLINED_FUNCTION_42();
  v0[2] = v1;
  v0[3] = v2;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_31_0(v3);

  return static LabelTemplates.no()();
}

uint64_t sub_1DCDAF0BC()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_2_6();
  v5 = v4;
  OUTLINED_FUNCTION_12_0();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  v5[5] = v1;

  if (!v1)
  {
    v5[6] = v0;
    v5[7] = v3;
  }

  OUTLINED_FUNCTION_6_48();
  OUTLINED_FUNCTION_152();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCDAF1C0()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40) != 0;
  (*(v0 + 16))(v1, v2, v3);
  sub_1DCD00AD8(v1, v2, v3);
  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCDAF250()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 40);
  (*(v0 + 16))(v1, 0, v1 != 0);
  sub_1DCD00AD8(v1, 0, v1 != 0);
  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCDAF2DC()
{
  OUTLINED_FUNCTION_42();
  v0[2] = v1;
  v0[3] = v2;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_31_0(v3);

  return static LabelTemplates.yes()();
}

uint64_t sub_1DCDAF364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DCDAF388, 0, 0);
}

uint64_t sub_1DCDAF388()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  OUTLINED_FUNCTION_32_2(&unk_1DD10C2C0);
  v6 = v3;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1DCDAF450;

  return v6(&unk_1DD0F4C80, v2);
}

uint64_t sub_1DCDAF450()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  *(v5 + 72) = v6;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCDAF560()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 72);
  (*(v0 + 24))(v2, v1, v3 & 1);
  sub_1DCD00AD8(v2, v1, v3 & 1);
  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCDAF5E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCDAF658(uint64_t a1)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_99(v5);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = (v1 + ((*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1DCB4AE1C;

  return sub_1DCDAF364(a1, v9, v10, v1 + v7, v12, v13);
}

uint64_t sub_1DCDAF790()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_4(v1);
  OUTLINED_FUNCTION_152();

  return sub_1DCDAEB20(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCDAF81C()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_4(v1);
  OUTLINED_FUNCTION_152();

  return sub_1DCDAEEB0(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCDAF8A8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1DCDAF940;

  return static LabelTemplates.openApp(appDisplayInfo:)();
}

uint64_t sub_1DCDAF940()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_32_1();
  v7 = v6;
  OUTLINED_FUNCTION_12_0();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_27();
  *v10 = v9;

  if (v0)
  {
    OUTLINED_FUNCTION_152();

    return v12(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  else
  {
    *(v7 + 32) = v3;
    *(v7 + 40) = v5;
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_152();

    return MEMORY[0x1EEE6DFA0](v20, v21, v22);
  }
}

uint64_t static LabelTemplates.openApp(appDisplayInfo:)()
{
  OUTLINED_FUNCTION_42();
  v0[15] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  v0[16] = swift_task_alloc();
  v2 = sub_1DD0DD23C();
  v0[17] = v2;
  OUTLINED_FUNCTION_99(v2);
  v0[18] = v3;
  v0[19] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1DCDAFB5C()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = MEMORY[0x1E69E6158];
  v5 = sub_1DD0DDE9C();
  sub_1DCDAF5E8(v3, v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    sub_1DCDAFF80(*(v0 + 128));
  }

  else
  {
    v7 = *(v0 + 144);
    v6 = *(v0 + 152);
    v8 = *(v0 + 136);
    (*(v7 + 32))(v6, *(v0 + 128), v8);
    *(v0 + 56) = sub_1DD0DD21C();
    *(v0 + 80) = v4;
    *(v0 + 64) = v9;
    sub_1DCB20B30((v0 + 56), (v0 + 88));
    swift_isUniquelyReferenced_nonNull_native();
    sub_1DCC60044();
    (*(v7 + 8))(v6, v8);
  }

  *(v0 + 160) = v5;
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
  }

  v10 = qword_1EDE57D40;
  v11 = type metadata accessor for CATTemplateExecutor();
  *(v0 + 40) = v11;
  *(v0 + 48) = &off_1F58563F0;
  *(v0 + 16) = v10;
  __swift_project_boxed_opaque_existential_1((v0 + 16), v11);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDAFD74()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_2_6();
  v5 = v4;
  OUTLINED_FUNCTION_12_0();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  v5[22] = v1;

  if (!v1)
  {
    v5[23] = v0;
    v5[24] = v3;
  }

  OUTLINED_FUNCTION_6_48();
  OUTLINED_FUNCTION_196();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCDAFE94()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  OUTLINED_FUNCTION_22_22();
  v3 = v0[23];
  v2 = v0[24];

  return v1(v2, v3);
}

uint64_t sub_1DCDAFF0C()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCDAFF80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DCDAFFFC()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
  }

  v0 = type metadata accessor for CATTemplateExecutor();
  OUTLINED_FUNCTION_8_47(v0, v0, &off_1F58563F0);
}

_BYTE *storeEnumTagSinglePayload for LabelTemplates(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DCDB0188()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  v5[1] = sub_1DCB4AD3C;

  return sub_1DCDAF8A8(v2, v3);
}

unint64_t sub_1DCDB021C()
{
  result = qword_1ECCA6000;
  if (!qword_1ECCA6000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA6000);
  }

  return result;
}

uint64_t sub_1DCDB027C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCDB02A0, 0, 0);
}

uint64_t sub_1DCDB02A0()
{
  v1 = *(v0[12] + 32);
  if (v1 >> 62)
  {
    if (sub_1DD0DEB3C())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v2 = sub_1DD0DD8FC();
    v0[15] = __swift_project_value_buffer(v2, qword_1EDE57E00);
    v3 = sub_1DD0DD8EC();
    v4 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_75(v4))
    {
      v5 = OUTLINED_FUNCTION_50_0();
      *v5 = 0;
      _os_log_impl(&dword_1DCAFC000, v3, v4, "Building legacy AddViews Output. Will generate legacy Output using AddViews", v5, 2u);
      OUTLINED_FUNCTION_80();
    }

    v7 = v0[12];
    v6 = v0[13];

    v8 = swift_task_alloc();
    *(v8 + 16) = v1;
    *(v8 + 24) = v6;
    v0[16] = sub_1DCF754D4(sub_1DCDB15E8, v8, v1);

    v9 = *(v7 + 24);
    v0[17] = v9;
    v10 = MEMORY[0x1E69E7CC0];
    v0[9] = v9;
    v0[10] = v10;
    v11 = *(v7 + 16);

    if (v11)
    {
      v12 = [v11 patternId];
      sub_1DD0DDFBC();
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v0[18] = v14;
    v15 = swift_task_alloc();
    v0[19] = v15;
    *v15 = v0;
    v15[1] = sub_1DCDB04FC;

    return sub_1DCB6AA14();
  }

  v17 = v0[11];
  *(v17 + 32) = 0;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  v18 = v0[1];

  return v18();
}

uint64_t sub_1DCDB04FC()
{

  return MEMORY[0x1EEE6DFA0](sub_1DCDB0614, 0, 0);
}

uint64_t sub_1DCDB0614()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  if (v1 && v2)
  {
    v3 = (v0 + 72);
    v4 = v2;
    v5 = sub_1DD0DD8EC();
    v6 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_75(v6))
    {
      v7 = OUTLINED_FUNCTION_50_0();
      *v7 = 0;
      _os_log_impl(&dword_1DCAFC000, v5, v6, "Adding 1 suggestion snippet to LegacyOutput snippets", v7, 2u);
      OUTLINED_FUNCTION_80();
    }

    MEMORY[0x1E12A6920]();
    if (*((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1DD0DE33C();
    }

    sub_1DD0DE3AC();
  }

  else
  {
    v3 = (v0 + 136);
  }

  v8 = sub_1DCDB099C(*(v0 + 128), *v3, *(v0 + 104));

  v9 = v8;
  MEMORY[0x1E12A6920]();
  if (*((*(v0 + 80) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 80) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1DD0DE33C();
  }

  sub_1DD0DE3AC();
  if (v1 && sub_1DCB08B14(v1))
  {
    swift_bridgeObjectRetain_n();
    v10 = sub_1DD0DD8EC();
    v11 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_75(v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = sub_1DCB08B14(v1);

      _os_log_impl(&dword_1DCAFC000, v10, v11, "Adding additional %ld hint commands to LegacyOutput commands", v12, 0xCu);
      OUTLINED_FUNCTION_80();
    }

    else
    {
    }

    sub_1DCBB920C(v1);
  }

  v13 = *(v0 + 104);
  v15 = *(v0 + 80);
  v14 = *(v0 + 88);
  v16 = type metadata accessor for OutputGenerationManifest(0);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v17 = *(v16 + 48);
  v18 = type metadata accessor for AceOutput(0);
  v14[3] = v18;
  v14[4] = &protocol witness table for AceOutput;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v14);
  sub_1DCDB1604(v13 + v17, boxed_opaque_existential_1Tm + v18[7]);
  v20 = v18[9];
  v21 = sub_1DD0DD10C();
  __swift_storeEnumTagSinglePayload(boxed_opaque_existential_1Tm + v20, 1, 1, v21);
  v22 = v18[8];
  v23 = *MEMORY[0x1E69D0678];
  v24 = sub_1DD0DD15C();
  (*(*(v24 - 8) + 104))(boxed_opaque_existential_1Tm + v22, v23, v24);
  boxed_opaque_existential_1Tm[15] = 0;
  *(boxed_opaque_existential_1Tm + 13) = 0u;
  *(boxed_opaque_existential_1Tm + 11) = 0u;
  sub_1DCB6C5E8(v0 + 16, (boxed_opaque_existential_1Tm + 11));
  sub_1DCBBF7D0(v2, v1);

  *(boxed_opaque_existential_1Tm + v18[10]) = 0;
  *boxed_opaque_existential_1Tm = v15;
  *(boxed_opaque_existential_1Tm + 1) = 0u;
  *(boxed_opaque_existential_1Tm + 3) = 0u;
  *(boxed_opaque_existential_1Tm + 5) = 0u;
  *(boxed_opaque_existential_1Tm + 7) = 0u;
  boxed_opaque_existential_1Tm[9] = 0;
  *(boxed_opaque_existential_1Tm + 80) = 3;
  v25 = *(v0 + 8);

  return v25();
}

id sub_1DCDB099C(unint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_1DD0DB04C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OutputGenerationManifest(0);
  if (*(a3 + *(v11 + 32)) != 1)
  {
    goto LABEL_14;
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v12 = sub_1DD0DD8FC();
  v37 = __swift_project_value_buffer(v12, qword_1EDE57E00);
  v13 = sub_1DD0DD8EC();
  v14 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_1_74(v15);
    OUTLINED_FUNCTION_5_58(&dword_1DCAFC000, v16, v17, "ResponseFactory: Setting listenAfterSpeaking to true on the last utterance view");
    OUTLINED_FUNCTION_2_62();
  }

  if (!sub_1DCB08B14(a1))
  {
    v19 = sub_1DD0DD8EC();
    v20 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_1_74(v21);
      OUTLINED_FUNCTION_5_58(&dword_1DCAFC000, v22, v23, "ResponseFactory: UtteranceViews are empty but listenAfterSpeaking is true. Attempting to set listenAfterSpeaking on snippet.");
      OUTLINED_FUNCTION_2_62();
    }

    v18 = sub_1DCCD2C5C(a2);
    if (!v18)
    {
      v25 = sub_1DD0DD8EC();
      v34 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_75(v34))
      {
        v35 = OUTLINED_FUNCTION_50_0();
        *v35 = 0;
        _os_log_impl(&dword_1DCAFC000, v25, v34, "ResponseFactory: No AceViews found on Snippet. Unable to set listenAfterSpeaking", v35, 2u);
        OUTLINED_FUNCTION_80();
      }

      goto LABEL_13;
    }

LABEL_12:
    v24 = v18;
    sub_1DCB10E5C(0, &qword_1EDE460A0, 0x1E696AD98);
    v25 = sub_1DD0DE8CC();
    [v24 setListenAfterSpeaking_];

LABEL_13:
    goto LABEL_14;
  }

  v18 = sub_1DCB6BA68(a1);
  if (v18)
  {
    goto LABEL_12;
  }

LABEL_14:
  v26 = [objc_allocWithZone(MEMORY[0x1E69C7AF8]) init];
  sub_1DD0DB03C();
  v27 = sub_1DD0DAFFC();
  v29 = v28;
  (*(v7 + 8))(v10, v6);
  sub_1DCB4D8E8(v27, v29, v26);

  v30 = sub_1DD0DDF8C();
  [v26 setDialogPhase_];

  if (a1 >> 62)
  {
    sub_1DCB10E5C(0, &qword_1EDE46080, 0x1E69C7708);

    v36 = sub_1DD0DEE0C();

    a1 = v36;
  }

  else
  {

    sub_1DD0DF0CC();
    sub_1DCB10E5C(0, &qword_1EDE46080, 0x1E69C7708);
  }

  v38 = a1;

  sub_1DCB673E0(v31);
  sub_1DCB6BBC0(v38, v26);
  [v26 setImmersiveExperience_];
  v32 = sub_1DCB6BC44(MEMORY[0x1E69E7CC0]);
  sub_1DCB6BD3C(v32, v26);
  return v26;
}

uint64_t sub_1DCDB0D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB193FC;

  return sub_1DCDB027C(a1, a2, a3);
}

uint64_t sub_1DCDB0E44@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *a1;
  v8 = [*a1 dialog];
  sub_1DCB10E5C(0, &qword_1EDE46220, 0x1E699A0B0);
  v9 = sub_1DD0DE2EC();

  v13[2] = a2;
  v13[3] = a3;
  v13[4] = v7;
  sub_1DCCE2204(sub_1DCDB1674, v13, v9);
  v11 = v10;

  *a4 = v11;
  return result;
}

void sub_1DCDB0F20(void **a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v73 = a4;
  v71 = a2;
  v72 = a3;
  v5 = sub_1DD0DB04C();
  v69 = *(v5 - 8);
  v70 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v68 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v67 = [objc_allocWithZone(MEMORY[0x1E69C7B08]) init];
  v9 = [v8 fullSpeak];
  v10 = sub_1DD0DDFBC();
  v12 = v11;

  v13 = [v8 supportingSpeak];
  v14 = sub_1DD0DDFBC();
  v16 = v15;

  sub_1DCB6B83C(v10, v12, v14, v16);
  v18 = v17;

  v19 = [v8 fullPrint];
  v20 = sub_1DD0DDFBC();
  v22 = v21;

  v23 = v8;
  v24 = [v8 supportingPrint];
  v25 = sub_1DD0DDFBC();
  v27 = v26;

  sub_1DCB6B83C(v20, v22, v25, v27);
  v29 = v28;

  v30 = v67;
  v31 = v67;
  if (v18)
  {
    v32 = sub_1DD0DDF8C();
  }

  else
  {
    v32 = 0;
  }

  [v30 setSpeakableText_];

  if (v29)
  {
    v33 = sub_1DD0DDF8C();
  }

  else
  {
    v33 = 0;
  }

  [v30 setText_];

  if ([v23 printOnly])
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v34 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v34, qword_1EDE57E00);
    v35 = sub_1DD0DD8EC();
    v36 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1DCAFC000, v35, v36, "The printOnly flag is set to true. Removing speakable text.", v37, 2u);
      MEMORY[0x1E12A8390](v37, -1, -1);
    }

    [v30 setSpeakableText_];
  }

  if ([v23 spokenOnly])
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v38 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v38, qword_1EDE57E00);
    v39 = sub_1DD0DD8EC();
    v40 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_1DCAFC000, v39, v40, "The spokenOnly flag is set to true. Removing printed text.", v41, 2u);
      MEMORY[0x1E12A8390](v41, -1, -1);
    }

    [v30 setText_];
  }

  if (sub_1DCB6B8AC())
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v42 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v42, qword_1EDE57E00);
    v43 = v23;
    v44 = sub_1DD0DD8EC();
    v45 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v74 = v47;
      *v46 = 136315138;
      v48 = [v43 id];
      v49 = sub_1DD0DDFBC();
      v51 = v50;

      v52 = sub_1DCB10E9C(v49, v51, &v74);

      *(v46 + 4) = v52;
      _os_log_impl(&dword_1DCAFC000, v44, v45, "ResponseFactory: .text and .speakableText are empty for dialog '%s'. Sending downstream anyway for logging, testing, etc.", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      MEMORY[0x1E12A8390](v47, -1, -1);
      MEMORY[0x1E12A8390](v46, -1, -1);
    }
  }

  v53 = v30;
  v54 = v68;
  sub_1DD0DB03C();
  v55 = sub_1DD0DAFFC();
  v57 = v56;
  (*(v69 + 8))(v54, v70);
  sub_1DCB4D8E8(v55, v57, v53);

  v58 = type metadata accessor for OutputGenerationManifest(0);
  v59 = v71;
  sub_1DCB10E5C(0, &qword_1EDE460A0, 0x1E696AD98);
  v60 = sub_1DD0DE8CC();
  [v53 setListenAfterSpeaking_];

  v61 = [v23 id];
  v62 = sub_1DD0DDFBC();
  v64 = v63;

  sub_1DCB6B954(v62, v64, v53);
  [v53 setCanUseServerTTS_];

  sub_1DCCE255C();
  if (v65)
  {
    v66 = sub_1DD0DDF8C();
  }

  else
  {
    v66 = 0;
  }

  [v53 setDialogCategory_];

  *v73 = v53;
}

uint64_t sub_1DCDB1604(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void ActingFlow.attach(option:)(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  OUTLINED_FUNCTION_10_42(a1, a2);
  sub_1DCDB1900();
  v4 = v3;
  sub_1DCDB21D4(&v4);
}

uint64_t sub_1DCDB1734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  OUTLINED_FUNCTION_46_8();
  v9 = v8;
  sub_1DCDB1900();
  v10 = OUTLINED_FUNCTION_5_59();
  a6(v10);

  *v9 = v6;
  return result;
}

void sub_1DCDB1790()
{
  OUTLINED_FUNCTION_20_10();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_1DCDB1900();
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = v1;
  v8[4] = v7;
  v8[5] = v5;
  sub_1DD0DCF8C();
}

void ActingFlow<>.onCompletion(_:)()
{
  OUTLINED_FUNCTION_20_10();
  OUTLINED_FUNCTION_2_63();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;
  sub_1DD0DCF8C();
}

void sub_1DCDB1900()
{
  OUTLINED_FUNCTION_20_10();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_0_1();
  v5 = v4;
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8, v11);
  v12 = *(v5 + 16);
  v12(&v17[-v13], v1, v3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for LifeCycleModifierFlow(0, AssociatedTypeWitness, v15, v16);
  if (!swift_dynamicCast())
  {
    v12(v10, v1, v3);
    LifeCycleModifierFlow.__allocating_init<A>(wrapped:)();
  }

  OUTLINED_FUNCTION_15_5();
}

void ActingFlow.id(_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10_42(a1, a2);
  sub_1DCDB1900();
  sub_1DCDB21A0(a1);
}

uint64_t sub_1DCDB1ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  OUTLINED_FUNCTION_46_8();
  v8 = v7;
  sub_1DCDB1900();
  v9 = OUTLINED_FUNCTION_5_59();
  a5(v9);

  *v8 = v5;
  return result;
}

uint64_t LifeCycleModifierFlow.__allocating_init<A>(wrapped:)()
{
  OUTLINED_FUNCTION_46_8();
  swift_allocObject();
  OUTLINED_FUNCTION_5_59();
  LifeCycleModifierFlow.init<A>(wrapped:)();
  return v0;
}

void ActingFlow<>.onSuccess(_:)()
{
  OUTLINED_FUNCTION_20_10();
  OUTLINED_FUNCTION_2_63();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDB1BFC(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10[3] = AssociatedTypeWitness;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v10);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1Tm, a1, AssociatedTypeWitness);
  a2(v10);
  return __swift_destroy_boxed_opaque_existential_1Tm(v10);
}

uint64_t sub_1DCDB1CB0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_22(v2 + 16, a2);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t sub_1DCDB1DC8(uint64_t a1)
{
  swift_beginAccess();
  sub_1DCDB2618(a1, v1 + 32);
  return swift_endAccess();
}

unint64_t sub_1DCDB1E54(unint64_t *a1)
{
  v2 = *a1;
  sub_1DCDB2688(v2);
  return sub_1DCDB1ECC(&v2);
}

double sub_1DCDB1E90@<D0>(uint64_t a1@<X1>, unint64_t *a2@<X8>)
{
  OUTLINED_FUNCTION_5_22(v2 + 72, a1);
  v4 = *(v2 + 72);
  *a2 = v4;
  return sub_1DCDB2688(v4);
}

unint64_t sub_1DCDB1ECC(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 72);
  *(v1 + 72) = v2;
  return sub_1DCDB2698(v3);
}

uint64_t sub_1DCDB1F84(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return OUTLINED_FUNCTION_4_67();
}

uint64_t sub_1DCDB1FC8(uint64_t a1, uint64_t a2)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
  return OUTLINED_FUNCTION_4_67();
}

void LifeCycleModifierFlow.init<A>(wrapped:)()
{
  OUTLINED_FUNCTION_20_10();
  v3 = v0;
  v5 = v4;
  OUTLINED_FUNCTION_46_8();
  v6 = *v3;
  OUTLINED_FUNCTION_0_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 2) = 0u;
  v3[10] = nullsub_1;
  v3[11] = 0;
  v13 = swift_allocObject();
  *(v13 + 16) = *(v6 + 80);
  v3[17] = nullsub_1;
  v3[18] = v13;
  v3[15] = v1;
  v3[16] = v5;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v3 + 12);
  v15 = *(v8 + 16);
  v15(boxed_opaque_existential_1Tm, v2, v1);
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_1DD0DEC1C();

  v19 = 0xD000000000000016;
  v20 = 0x80000001DD116780;
  v15(v12, v2, v1);
  v16 = sub_1DD0DE02C();
  MEMORY[0x1E12A6780](v16);

  MEMORY[0x1E12A6780](62, 0xE100000000000000);
  v17 = v19;
  v18 = v20;
  (*(v8 + 8))(v2, v1);
  v3[2] = v17;
  v3[3] = v18;
  OUTLINED_FUNCTION_15_5();
}

void sub_1DCDB21A0(uint64_t a1)
{
  sub_1DCC60FBC(a1, v1);
  sub_1DCDB1DC8(v1);
  sub_1DD0DCF8C();
}

void sub_1DCDB21D4(unint64_t *a1)
{
  v1 = *a1;
  sub_1DCDB2688(v1);
  sub_1DCDB1ECC(&v1);

  sub_1DD0DCF8C();
}

uint64_t sub_1DCDB2348(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void (*a4)(char *), uint64_t a5, uint64_t a6)
{
  v19 = a4;
  v9 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v12 = sub_1DD0DF22C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v18 - v15;
  a2(a1);
  (*(v13 + 16))(v16, a1, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(v13 + 8))(v16, v12);
  }

  (*(v9 + 32))(v11, v16, a6);
  v19(v11);
  return (*(v9 + 8))(v11, a6);
}

void sub_1DCDB2570()
{
  OUTLINED_FUNCTION_20_10();
  OUTLINED_FUNCTION_2_63();
  sub_1DCDB1F9C();
}

uint64_t sub_1DCDB2618(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA6008, &unk_1DD0F4CD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_1DCDB2688(unint64_t a1)
{
  if (a1 >= 2)
  {
  }

  return result;
}

unint64_t sub_1DCDB2698(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_1DCDB26A8(uint64_t a1)
{
  v3 = *(v1 + 40);
  (*(v1 + 24))();
  return v3(a1);
}

void sub_1DCDB270C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v9 = sub_1DD0DF22C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = (&v15 - v12);
  a2(a1);
  (*(v10 + 16))(v13, a1, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v13;
    a4(*v13);
  }

  else
  {
    (*(v10 + 8))(v13, v9);
  }
}

uint64_t objectdestroy_8Tm_0()
{

  return swift_deallocObject();
}

void sub_1DCDB2928(uint64_t a1)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v42 - v10;
  v12 = *(v3 + 80);
  v13 = sub_1DD0DE97C();
  OUTLINED_FUNCTION_0_1();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v42 - v18;
  OUTLINED_FUNCTION_0_1();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v42 - v24;
  sub_1DCB0DF6C(a1, v46);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v12);
    (*(v21 + 32))(v25, v19, v12);
    sub_1DCDB1F9C();
  }

  v43 = v8;
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v12);
  (*(v15 + 8))(v19, v13);
  v46[0] = 0;
  v46[1] = 0xE000000000000000;
  sub_1DD0DEC1C();

  v44 = 0xD000000000000010;
  v45 = 0x80000001DD11D750;
  v26 = sub_1DD0DF2AC();
  MEMORY[0x1E12A6780](v26);

  MEMORY[0x1E12A6780](0x746F672074756220, 0xE900000000000020);
  sub_1DCB0DF6C(a1, v46);
  v27 = sub_1DD0DE02C();
  MEMORY[0x1E12A6780](v27);

  v28 = v44;
  v29 = v45;
  v30 = qword_1EDE4F900;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = sub_1DD0DD8FC();
  v32 = __swift_project_value_buffer(v31, qword_1EDE57E00);
  v33 = *(v31 - 8);
  (*(v33 + 16))(v11, v32, v31);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v31);
  v34 = v43;
  sub_1DCB49DC0(v11, v43, &unk_1ECCA7470, &qword_1DD0E16E0);
  if (__swift_getEnumTagSinglePayload(v34, 1, v31) == 1)
  {
    sub_1DCB16E04(v43, &unk_1ECCA7470);
  }

  else
  {

    v35 = sub_1DD0DD8EC();
    v36 = sub_1DD0DE6EC();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v46[0] = v38;
      *v37 = 136315650;
      v39 = sub_1DD0DEC3C();
      v41 = sub_1DCB10E9C(v39, v40, v46);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2048;
      *(v37 + 14) = 222;
      *(v37 + 22) = 2080;
      *(v37 + 24) = sub_1DCB10E9C(v28, v29, v46);
      _os_log_impl(&dword_1DCAFC000, v35, v36, "FatalError at %s:%lu - %s", v37, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A8390](v38, -1, -1);
      MEMORY[0x1E12A8390](v37, -1, -1);
    }

    (*(v33 + 8))(v43, v31);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)(v28, v29);
}

unint64_t *LifeCycleModifierFlow.deinit()
{

  sub_1DCB16E04(v0 + 32, qword_1ECCA6008);
  sub_1DCDB2698(*(v0 + 72));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));

  return v0;
}

uint64_t LifeCycleModifierFlow.__deallocating_deinit()
{
  LifeCycleModifierFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCDB3028(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t destroy for AttachmentOption(unint64_t *a1)
{
  result = *a1;
  if (result >= 0xFFFFFFFF)
  {
  }

  return result;
}

unint64_t *assignWithCopy for AttachmentOption(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 < 0xFFFFFFFF)
  {
    *a1 = v4;
    if (v4 >= 0xFFFFFFFF)
    {
    }
  }

  else if (v4 < 0xFFFFFFFF)
  {

    *a1 = *a2;
  }

  else
  {
    *a1 = v4;
  }

  return a1;
}

unint64_t *assignWithTake for AttachmentOption(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  if (*a1 < 0xFFFFFFFF)
  {
    goto LABEL_5;
  }

  if (v3 < 0xFFFFFFFF)
  {

LABEL_5:
    *a1 = v3;
    return a1;
  }

  *a1 = v3;

  return a1;
}

uint64_t sub_1DCDB3520(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_10_42(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    OUTLINED_FUNCTION_0_64();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DCDB35FC()
{
  sub_1DCDB35D4();

  return swift_deallocClassInstance();
}

uint64_t Linearly.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_30();
  v3 = swift_allocObject();
  Linearly.init(_:)(v2);
  return v3;
}

uint64_t sub_1DCDB3694(uint64_t a1, uint64_t a2)
{
  *(a1 + 33) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA5288, &qword_1DD0F10C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E07C0;
  *(inited + 32) = a2;

  v5 = static FlowsBuilder.buildBlock(_:)();
  swift_setDeallocating();
  sub_1DCC65794();

  *(a1 + 16) = v5;
  v6 = *(v5 + 16) == 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 2 * v6;
  return a1;
}

uint64_t Linearly.init(_:)(void (*a1)(void))
{
  *(v1 + 33) = 1;
  a1();
  OUTLINED_FUNCTION_30();

  *(v1 + 16) = v2;
  v3 = *(v2 + 16) == 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 2 * v3;
  return v1;
}

void sub_1DCDB37AC(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 24);
  v5 = *(v2 + 32);
  if (*(v2 + 32))
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    if (v5 == 1)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA60A0, &qword_1DD0F4EB8);
      a1[3] = v6;
      a1[4] = &protocol witness table for Conclude<A>;
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a1);
      v8 = boxed_opaque_existential_1Tm + v6[7];
      *v8 = v4;
      v8[8] = 1;
      v9 = v6[8];
      sub_1DCBD0C2C(v18, boxed_opaque_existential_1Tm + v9);
      *(boxed_opaque_existential_1Tm + v6[9]) = 0;
      boxed_opaque_existential_1Tm[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D30, &qword_1DD0E1EC0);
      *boxed_opaque_existential_1Tm = v4;
      *(boxed_opaque_existential_1Tm + 8) = 1;
      sub_1DCDB3A9C(v4, 1);
      sub_1DCDB3A9C(v4, 1);
      v10 = v4;
      sub_1DCB16D50(v18, &qword_1ECCA1D20, &qword_1DD0F0330);
      sub_1DCBD0C2C(boxed_opaque_existential_1Tm + v9, (boxed_opaque_existential_1Tm + 4));
      *(boxed_opaque_existential_1Tm + 72) = 0;
      type metadata accessor for FlowActionType(0);
      swift_storeEnumTagMultiPayload();
      sub_1DCDB3AB0(v4, 1);
    }

    else
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA60A0, &qword_1DD0F4EB8);
      a1[3] = v12;
      a1[4] = &protocol witness table for Conclude<A>;
      v13 = __swift_allocate_boxed_opaque_existential_1Tm(a1);
      v14 = v13 + v12[7];
      *v14 = 0;
      v14[8] = 0;
      v15 = v12[8];
      sub_1DCBD0C2C(v18, v13 + v15);
      *(v13 + v12[9]) = 0;
      v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D30, &qword_1DD0E1EC0);
      *v13 = 0;
      *(v13 + 8) = 0;
      sub_1DCB16D50(v18, &qword_1ECCA1D20, &qword_1DD0F0330);
      sub_1DCBD0C2C(v13 + v15, (v13 + 4));
      *(v13 + 72) = 0;
      type metadata accessor for FlowActionType(0);
      swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v11 = *(v2 + 16);
      if (v4 < *(v11 + 16))
      {
        sub_1DCB17CA0(v11 + 40 * v4 + 32, &v16);
        __swift_project_boxed_opaque_existential_1(&v16, v17);
        sub_1DD0DCF8C();
      }
    }

    __break(1u);
  }
}

id sub_1DCDB3A9C(id result, char a2)
{
  if (a2 == 1)
  {
    return result;
  }

  return result;
}

void sub_1DCDB3AB0(id a1, char a2)
{
  if (a2 == 1)
  {
  }
}

void *sub_1DCDB3AC4(uint64_t a1)
{
  sub_1DCB0DF6C(a1, v2);
  sub_1DCDB3C74(v2);
  return sub_1DCDB4910(v2);
}

uint64_t sub_1DCDB3B18(uint64_t a1, char a2)
{
  if (!a2)
  {
    v4 = 0x65646E69286E7572;
    v2 = sub_1DD0DF03C();
    MEMORY[0x1E12A6780](v2);

    goto LABEL_5;
  }

  if (a2 == 1)
  {
    v4 = 0;
    sub_1DD0DEC1C();
    MEMORY[0x1E12A6780](0x286572756C696166, 0xEF203A726F727265);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    sub_1DD0DEDBC();
LABEL_5:
    MEMORY[0x1E12A6780](41, 0xE100000000000000);
    return v4;
  }

  return 1701736292;
}

void sub_1DCDB3C74(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v26 = v3;
  v27 = v4;
  sub_1DCDB4884(a1, v28);
  if (v4)
  {
    sub_1DCDB3A9C(v3, v4);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    OUTLINED_FUNCTION_7_43();
    v5 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v5, qword_1EDE57E00);
    sub_1DD0DCF8C();
  }

  sub_1DCB20B30(v28, v25);
  sub_1DCB0DF6C(v25, &v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA60B8, &qword_1DD0F4F68);
  if (swift_dynamicCast())
  {
    sub_1DCAFF9E8(v20, &v22);
    v6 = v23;
    v7 = v24;
    __swift_project_boxed_opaque_existential_1(&v22, v23);
    (*(v7 + 8))(&v18, v6, v7);
    if (v19)
    {
      if ((*(v2 + 33) & 1) == 0)
      {
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
        }

        v17 = sub_1DD0DD8FC();
        __swift_project_value_buffer(v17, qword_1EDE57E00);
        sub_1DD0DCF8C();
      }

      if (qword_1EDE4F900 == -1)
      {
LABEL_9:
        v8 = sub_1DD0DD8FC();
        __swift_project_value_buffer(v8, qword_1EDE57E00);
        sub_1DD0DCF8C();
      }

LABEL_23:
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      goto LABEL_9;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    if (!__OFADD__(v3, 1))
    {
      OUTLINED_FUNCTION_2_64();
      if (v10 == v11)
      {
        v14 = 0;
      }

      OUTLINED_FUNCTION_1_75(v14);
      sub_1DCDB3AB0(v15, v16);
      sub_1DCB16D50(&v18, &qword_1ECCA60C8, &qword_1DD0F4F78);
      __swift_destroy_boxed_opaque_existential_1Tm(&v22);
      return;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_1DCB16D50(v20, &qword_1ECCA60C0, &qword_1DD0F4F70);
  if (__OFADD__(v3, 1))
  {
    __break(1u);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_2_64();
  if (v10 == v11)
  {
    v9 = 0;
  }

  OUTLINED_FUNCTION_1_75(v9);
  sub_1DCDB3AB0(v12, v13);
}

uint64_t Linearly.deinit()
{

  sub_1DCDB3AB0(*(v0 + 24), *(v0 + 32));
  return v0;
}

uint64_t Linearly.__deallocating_deinit()
{
  Linearly.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCDB4444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  OUTLINED_FUNCTION_0_1();
  v5 = v4;
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v35[-v13];
  v15 = *(v12 + 16);
  OUTLINED_FUNCTION_0_1();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v35[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v35[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v26 + 16))(v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v27 = *(v5 + 32);
    v27(v14, v25, v3);
    (*(v5 + 16))(v10, v14, v3);
    v28 = sub_1DD0DF06C();
    if (v28)
    {
      v29 = v28;
      v30 = *(v5 + 8);
      v30(v10, v3);
    }

    else
    {
      v29 = swift_allocError();
      v27(v34, v10, v3);
      v30 = *(v5 + 8);
    }

    result = (v30)(v14, v3);
    *a2 = v29;
  }

  else
  {
    v31 = *(v17 + 32);
    v31(v21, v25, v15);
    *(a2 + 24) = v15;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a2);
    result = v31(boxed_opaque_existential_1Tm, v21, v15);
  }

  *(a2 + 32) = EnumCaseMultiPayload == 1;
  return result;
}

uint64_t assignWithCopy for Linearly.State(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_1DCDB3A9C(*a2, v4);
  v5 = *a1;
  *a1 = v3;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  sub_1DCDB3AB0(v5, v6);
  return a1;
}

uint64_t assignWithTake for Linearly.State(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  sub_1DCDB3AB0(v4, v5);
  return a1;
}

unint64_t sub_1DCDB48BC()
{
  result = qword_1ECCA60A8;
  if (!qword_1ECCA60A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA60A8);
  }

  return result;
}

uint64_t initializeWithCopy for Linearly.Event(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  *(a1 + 24) = v3;
  (**(v3 - 8))();
  return a1;
}

uint64_t assignWithTake for Linearly.Event(uint64_t a1, _OWORD *a2)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 16) = v4;
  return a1;
}

uint64_t getEnumTagSinglePayload for Linearly.Event(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for Linearly.Event(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t LinkParse.debugDescription.getter()
{
  sub_1DD0DEC1C();
  MEMORY[0x1E12A6780](0x64496E6F69746361, 0xEA0000000000203ALL);
  v1 = type metadata accessor for LinkParse(0);
  MEMORY[0x1E12A6780](*(v0 + *(v1 + 20)), *(v0 + *(v1 + 20) + 8));
  MEMORY[0x1E12A6780](0x797469746E65202CLL, 0xEC000000203A6449);
  v2 = (v0 + *(v1 + 24));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v4 = 0xE500000000000000;
    v3 = 0x3E6C696E3CLL;
  }

  MEMORY[0x1E12A6780](v3, v4);

  MEMORY[0x1E12A6780](0x7261504F5355202CLL, 0xEC000000203A6573);
  type metadata accessor for USOParse(0);
  sub_1DD0DEDBC();
  return 0;
}

uint64_t LinkParse.init(usoParse:actionId:entityId:entityDisplayName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = type metadata accessor for LinkParse(0);
  v17 = (a8 + v16[7]);
  result = sub_1DCC6D300(a1, a8);
  v19 = (a8 + v16[5]);
  *v19 = a2;
  v19[1] = a3;
  v20 = (a8 + v16[6]);
  *v20 = a4;
  v20[1] = a5;
  *v17 = a6;
  v17[1] = a7;
  return result;
}

uint64_t LinkParse.actionId.getter()
{
  type metadata accessor for LinkParse(0);
  OUTLINED_FUNCTION_3_12();
  return OUTLINED_FUNCTION_33_1();
}

uint64_t LinkParse.entityId.getter()
{
  type metadata accessor for LinkParse(0);
  OUTLINED_FUNCTION_3_12();
  return OUTLINED_FUNCTION_33_1();
}

uint64_t LinkParse.entityDisplayName.getter()
{
  type metadata accessor for LinkParse(0);
  OUTLINED_FUNCTION_3_12();
  return OUTLINED_FUNCTION_33_1();
}

uint64_t LinkParse.entityDisplayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for LinkParse(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t static LinkParse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!static USOParse.== infix(_:_:)(a1, a2))
  {
    return 0;
  }

  v4 = *(type metadata accessor for LinkParse(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = v5 == *v7 && v6 == v7[1];
  if (!v8 && (sub_1DD0DF0AC() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_61();
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    v13 = *v11 == *v12 && v9 == v10;
    if (!v13 && (sub_1DD0DF0AC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_61();
  if (v14)
  {
    if (v15)
    {
      v18 = *v16 == *v17 && v14 == v15;
      if (v18 || (sub_1DD0DF0AC() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v15)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1DCDB4E98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65737261506F7375 && a2 == 0xE800000000000000;
  if (v4 || (sub_1DD0DF0AC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64496E6F69746361 && a2 == 0xE800000000000000;
    if (v6 || (sub_1DD0DF0AC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6449797469746E65 && a2 == 0xE800000000000000;
      if (v7 || (sub_1DD0DF0AC() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000011 && 0x80000001DD11D8D0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DD0DF0AC();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1DCDB4FFC(char a1)
{
  result = 0x65737261506F7375;
  switch(a1)
  {
    case 1:
      v3 = 0x6E6F69746361;
      goto LABEL_4;
    case 2:
      v3 = 0x797469746E65;
LABEL_4:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6449000000000000;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DCDB5080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCDB4E98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCDB50A8(uint64_t a1)
{
  v2 = sub_1DCDB5308();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCDB50E4(uint64_t a1)
{
  v2 = sub_1DCDB5308();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LinkParse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA60D0, &qword_1DD0F4FB0);
  OUTLINED_FUNCTION_9();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DCDB5308();
  sub_1DD0DF24C();
  v11[15] = 0;
  type metadata accessor for USOParse(0);
  sub_1DCDB5700(qword_1EDE46598, &protocol conformance descriptor for USOParse);
  sub_1DD0DEFFC();
  if (!v1)
  {
    type metadata accessor for LinkParse(0);
    v11[14] = 1;
    OUTLINED_FUNCTION_1_76();
    sub_1DD0DEFBC();
    v11[13] = 2;
    OUTLINED_FUNCTION_1_76();
    sub_1DD0DEF8C();
    v11[12] = 3;
    OUTLINED_FUNCTION_1_76();
    sub_1DD0DEF8C();
  }

  return (*(v5 + 8))(v9, v3);
}

unint64_t sub_1DCDB5308()
{
  result = qword_1ECCA60D8;
  if (!qword_1ECCA60D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA60D8);
  }

  return result;
}

uint64_t LinkParse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30[0] = a2;
  type metadata accessor for USOParse(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4, v5);
  v31 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA60E0, &qword_1DD0F4FB8);
  OUTLINED_FUNCTION_9();
  v30[1] = v8;
  v30[2] = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v10 = type metadata accessor for LinkParse(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DCDB5308();
  sub_1DD0DF23C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v15 = v14;
  v35 = 0;
  sub_1DCDB5700(&qword_1EDE46590, &protocol conformance descriptor for USOParse);
  sub_1DD0DEF4C();
  sub_1DCC6D300(v31, v14);
  v34 = 1;
  v16 = sub_1DD0DEF0C();
  v17 = &v14[v10[5]];
  *v17 = v16;
  v17[1] = v18;
  v33 = 2;
  v19 = sub_1DD0DEEDC();
  v20 = a1;
  v21 = (v15 + v10[6]);
  *v21 = v19;
  v21[1] = v22;
  v32 = 3;
  v23 = sub_1DD0DEEDC();
  v25 = v24;
  v26 = (v15 + v10[7]);
  v27 = OUTLINED_FUNCTION_2_65();
  v28(v27);
  *v26 = v23;
  v26[1] = v25;
  sub_1DCDB5744(v15, v30[0], type metadata accessor for LinkParse);
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  return sub_1DCDB57A0(v15, type metadata accessor for LinkParse);
}

uint64_t sub_1DCDB5700(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for USOParse(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DCDB5744(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_33_1();
  v5(v4);
  return a2;
}

uint64_t sub_1DCDB57A0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

char *initializeBufferWithCopyOfBuffer for LinkParse(char *a1, char *a2, int *a3)
{
  if ((*(*(a3 - 1) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v6 = sub_1DD0DB4BC();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = type metadata accessor for USOParse(0);
  v8 = v7[5];
  v9 = sub_1DD0DB3EC();
  if (__swift_getEnumTagSinglePayload(&a2[v8], 1, v9))
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
    memcpy(&a1[v8], &a2[v8], *(*(v10 - 8) + 64));
  }

  else
  {
    (*(*(v9 - 8) + 16))(&a1[v8], &a2[v8], v9);
    __swift_storeEnumTagSinglePayload(&a1[v8], 0, 1, v9);
  }

  v11 = v7[6];
  v12 = &a1[v11];
  v13 = &a2[v11];
  v14 = *(v13 + 1);
  *v12 = *v13;
  *(v12 + 1) = v14;
  v15 = v7[7];
  v16 = &a1[v15];
  v17 = &a2[v15];
  *v16 = *v17;
  v16[4] = v17[4];
  v18 = a3[5];
  v19 = a3[6];
  v20 = &a1[v18];
  v21 = &a2[v18];
  v22 = *(v21 + 1);
  *v20 = *v21;
  *(v20 + 1) = v22;
  v23 = &a1[v19];
  v24 = &a2[v19];
  v25 = *(v24 + 1);
  *v23 = *v24;
  *(v23 + 1) = v25;
  v26 = a3[7];
  v27 = &a1[v26];
  v28 = &a2[v26];
  v29 = *(v28 + 1);
  *v27 = *v28;
  *(v27 + 1) = v29;

  return a1;
}

uint64_t destroy for LinkParse(uint64_t a1)
{
  v2 = sub_1DD0DB4BC();
  (*(*(v2 - 8) + 8))(a1, v2);
  v3 = *(type metadata accessor for USOParse(0) + 20);
  v4 = sub_1DD0DB3EC();
  if (!__swift_getEnumTagSinglePayload(a1 + v3, 1, v4))
  {
    (*(*(v4 - 8) + 8))(a1 + v3, v4);
  }
}

uint64_t initializeWithCopy for LinkParse(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1DD0DB4BC();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = type metadata accessor for USOParse(0);
  v8 = v7[5];
  v9 = sub_1DD0DB3EC();
  if (__swift_getEnumTagSinglePayload(a2 + v8, 1, v9))
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
    memcpy((a1 + v8), (a2 + v8), *(*(v10 - 8) + 64));
  }

  else
  {
    (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
    __swift_storeEnumTagSinglePayload(a1 + v8, 0, 1, v9);
  }

  v11 = v7[6];
  v12 = (a1 + v11);
  v13 = (a2 + v11);
  v14 = v13[1];
  *v12 = *v13;
  v12[1] = v14;
  v15 = v7[7];
  v16 = a1 + v15;
  v17 = a2 + v15;
  *v16 = *v17;
  *(v16 + 4) = *(v17 + 4);
  v18 = a3[5];
  v19 = a3[6];
  v20 = (a1 + v18);
  v21 = (a2 + v18);
  v22 = v21[1];
  *v20 = *v21;
  v20[1] = v22;
  v23 = (a1 + v19);
  v24 = (a2 + v19);
  v25 = v24[1];
  *v23 = *v24;
  v23[1] = v25;
  v26 = a3[7];
  v27 = (a1 + v26);
  v28 = (a2 + v26);
  v29 = v28[1];
  *v27 = *v28;
  v27[1] = v29;

  return a1;
}

uint64_t assignWithCopy for LinkParse(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1DD0DB4BC();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = type metadata accessor for USOParse(0);
  v8 = v7[5];
  v9 = sub_1DD0DB3EC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1 + v8, 1, v9);
  v11 = __swift_getEnumTagSinglePayload(a2 + v8, 1, v9);
  if (!EnumTagSinglePayload)
  {
    v12 = *(v9 - 8);
    if (!v11)
    {
      (*(v12 + 24))(a1 + v8, a2 + v8, v9);
      goto LABEL_7;
    }

    (*(v12 + 8))(a1 + v8, v9);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
    memcpy((a1 + v8), (a2 + v8), *(*(v13 - 8) + 64));
    goto LABEL_7;
  }

  (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
  __swift_storeEnumTagSinglePayload(a1 + v8, 0, 1, v9);
LABEL_7:
  v14 = v7[6];
  v15 = (a1 + v14);
  v16 = (a2 + v14);
  *v15 = *v16;
  v15[1] = v16[1];

  v17 = v7[7];
  v18 = a1 + v17;
  v19 = (a2 + v17);
  v20 = *v19;
  *(v18 + 4) = *(v19 + 4);
  *v18 = v20;
  v21 = a3[5];
  v22 = (a1 + v21);
  v23 = (a2 + v21);
  *v22 = *v23;
  v22[1] = v23[1];

  v24 = a3[6];
  v25 = (a1 + v24);
  v26 = (a2 + v24);
  *v25 = *v26;
  v25[1] = v26[1];

  v27 = a3[7];
  v28 = (a1 + v27);
  v29 = (a2 + v27);
  *v28 = *v29;
  v28[1] = v29[1];

  return a1;
}

uint64_t initializeWithTake for LinkParse(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1DD0DB4BC();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = type metadata accessor for USOParse(0);
  v8 = v7[5];
  v9 = sub_1DD0DB3EC();
  if (__swift_getEnumTagSinglePayload(a2 + v8, 1, v9))
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
    memcpy((a1 + v8), (a2 + v8), *(*(v10 - 8) + 64));
  }

  else
  {
    (*(*(v9 - 8) + 32))(a1 + v8, a2 + v8, v9);
    __swift_storeEnumTagSinglePayload(a1 + v8, 0, 1, v9);
  }

  *(a1 + v7[6]) = *(a2 + v7[6]);
  v11 = v7[7];
  v12 = a1 + v11;
  v13 = a2 + v11;
  *(v12 + 4) = *(v13 + 4);
  *v12 = *v13;
  v14 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v14) = *(a2 + v14);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t assignWithTake for LinkParse(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1DD0DB4BC();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = type metadata accessor for USOParse(0);
  v8 = v7[5];
  v9 = sub_1DD0DB3EC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1 + v8, 1, v9);
  v11 = __swift_getEnumTagSinglePayload(a2 + v8, 1, v9);
  if (!EnumTagSinglePayload)
  {
    v12 = *(v9 - 8);
    if (!v11)
    {
      (*(v12 + 40))(a1 + v8, a2 + v8, v9);
      goto LABEL_7;
    }

    (*(v12 + 8))(a1 + v8, v9);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
    memcpy((a1 + v8), (a2 + v8), *(*(v13 - 8) + 64));
    goto LABEL_7;
  }

  (*(*(v9 - 8) + 32))(a1 + v8, a2 + v8, v9);
  __swift_storeEnumTagSinglePayload(a1 + v8, 0, 1, v9);
LABEL_7:
  v14 = v7[6];
  v15 = (a1 + v14);
  v16 = (a2 + v14);
  v18 = *v16;
  v17 = v16[1];
  *v15 = v18;
  v15[1] = v17;

  v19 = v7[7];
  v20 = a1 + v19;
  v21 = a2 + v19;
  *(v20 + 4) = *(v21 + 4);
  *v20 = *v21;
  v22 = a3[5];
  v23 = (a1 + v22);
  v24 = (a2 + v22);
  v26 = *v24;
  v25 = v24[1];
  *v23 = v26;
  v23[1] = v25;

  v27 = a3[6];
  v28 = (a1 + v27);
  v29 = (a2 + v27);
  v31 = *v29;
  v30 = v29[1];
  *v28 = v31;
  v28[1] = v30;

  v32 = a3[7];
  v33 = (a1 + v32);
  v34 = (a2 + v32);
  v36 = *v34;
  v35 = v34[1];
  *v33 = v36;
  v33[1] = v35;

  return a1;
}

uint64_t sub_1DCDB6334(uint64_t a1)
{
  result = type metadata accessor for USOParse(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LinkParse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DCDB64B4()
{
  result = qword_1ECCA60E8;
  if (!qword_1ECCA60E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA60E8);
  }

  return result;
}

unint64_t sub_1DCDB650C()
{
  result = qword_1ECCA60F0;
  if (!qword_1ECCA60F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA60F0);
  }

  return result;
}

unint64_t sub_1DCDB6564()
{
  result = qword_1ECCA60F8;
  if (!qword_1ECCA60F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA60F8);
  }

  return result;
}

uint64_t sub_1DCDB65B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1DCB4AE1C;

  return ListPromptFlowStrategy.makeRepromptOnEmptyParse(items:paginationParameters:)(a1, a2, a3, a4, a5);
}

uint64_t sub_1DCDB66A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v22 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v22, qword_1EDE57E00);
  sub_1DD0DD8EC();
  v23 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v23))
  {
    v24 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v24);
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v25, v26, "Executing default implementation for makeRepromptOnEmptyParse");
    OUTLINED_FUNCTION_62();
  }

  OUTLINED_FUNCTION_39_17();
  *(v15 + 16) = v21;
  *(v15 + 24) = v19;
  *(v15 + 25) = v18;
  *(v15 + 32) = v20;
  *(v15 + 40) = v17;
  *(v15 + 41) = v16;
  *(v15 + 42) = v14;
  v40 = a11 + 40;
  OUTLINED_FUNCTION_24_0();
  v39 = v27 + *v27;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v15 + 104) = v28;
  *v28 = v29;
  OUTLINED_FUNCTION_35_23(v28);
  OUTLINED_FUNCTION_76();

  return v35(v30, v31, v32, v33, v34, v35, v36, v37, a9, v39, v40, a12, a13, a14);
}

uint64_t sub_1DCDB682C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 112) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCDB6940(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1DCB4AE1C;

  return ListPromptFlowStrategy.makeRepromptOnLowConfidence(items:paginationParameters:)(a1, a2, a3, a4, a5);
}

uint64_t sub_1DCDB6A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v22 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v22, qword_1EDE57E00);
  sub_1DD0DD8EC();
  v23 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v23))
  {
    v24 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v24);
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v25, v26, "Executing default implementation for makeRepromptOnLowConfidence");
    OUTLINED_FUNCTION_62();
  }

  OUTLINED_FUNCTION_39_17();
  *(v15 + 16) = v21;
  *(v15 + 24) = v19;
  *(v15 + 25) = v18;
  *(v15 + 32) = v20;
  *(v15 + 40) = v17;
  *(v15 + 41) = v16;
  *(v15 + 42) = v14;
  v40 = a11 + 40;
  OUTLINED_FUNCTION_24_0();
  v39 = v27 + *v27;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v15 + 104) = v28;
  *v28 = v29;
  OUTLINED_FUNCTION_35_23(v28);
  OUTLINED_FUNCTION_76();

  return v35(v30, v31, v32, v33, v34, v35, v36, v37, a9, v39, v40, a12, a13, a14);
}

uint64_t sub_1DCDB6BB4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 112) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCDB6CC8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return ListPromptFlowStrategy.makeFlowCancelledResponse()(a1);
}

uint64_t sub_1DCDB6D74()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v5, v6, "Executing default implementation for makeFlowCancelledResponse");
    OUTLINED_FUNCTION_62();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 24) = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_31_1(v7);

  return sub_1DCCDCA70();
}

uint64_t sub_1DCDB6E6C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return ListPromptFlowStrategy.makeErrorResponse(error:)(a1);
}

uint64_t sub_1DCDB6F18()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v5, v6, "Executing default implementation for makeErrorResponse");
    OUTLINED_FUNCTION_62();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 24) = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_31_1(v7);

  return sub_1DCCDC444();
}

uint64_t ListPromptFlowStrategy.actionForInputWrapper(input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCDB702C()
{
  OUTLINED_FUNCTION_42();
  (*(v0[5] + 24))(v0[3], v0[4]);
  OUTLINED_FUNCTION_29();

  return v1();
}

void WindowingDisambiguationInputType.description.getter()
{
  switch(*v0)
  {
    case 1:
      OUTLINED_FUNCTION_57_0();
      break;
    case 2:
      OUTLINED_FUNCTION_32_18();
      break;
    default:
      return;
  }
}

void sub_1DCDB7130(char a1)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_57_0();
      break;
    case 2:
      OUTLINED_FUNCTION_32_18();
      break;
    default:
      return;
  }
}

unint64_t sub_1DCDB71A8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DD0DEE9C();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DCDB7218@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DCDB71A8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DCDB7248(void *a1@<X8>)
{
  sub_1DCDB7130(*v1);
  *a1 = v3;
  a1[1] = v4;
}

void WindowingDisambiguationPromptStrategy.actionForInput(input:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v8 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v8, qword_1EDE57E00);
  v9 = sub_1DD0DD8EC();
  v10 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v10))
  {
    v11 = OUTLINED_FUNCTION_50_0();
    *v11 = 0;
    _os_log_impl(&dword_1DCAFC000, v9, v10, "WindowingDisambiguationPromptStrategy default actionForInput implementation", v11, 2u);
    OUTLINED_FUNCTION_80();
  }

  (*(a3 + 24))(&v25, a1, a2, a3);
  if (v25 - 1 < 2)
  {
    v12 = sub_1DD0DD8EC();
    v13 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_75(v13))
    {
      *OUTLINED_FUNCTION_50_0() = 0;
      OUTLINED_FUNCTION_7_0(&dword_1DCAFC000, v14, v15, "WindowingDisambiguationPromptStrategy choosing to handle input");
      OUTLINED_FUNCTION_80();
    }

    v16 = 1;
LABEL_16:
    *a4 = v16;
    return;
  }

  if (v25)
  {
    v21 = sub_1DD0DD8EC();
    v22 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_75(v22))
    {
      *OUTLINED_FUNCTION_50_0() = 0;
      OUTLINED_FUNCTION_7_0(&dword_1DCAFC000, v23, v24, "WindowingDisambiguationPromptStrategy choosing to ignore");
      OUTLINED_FUNCTION_80();
    }

    v16 = 2;
    goto LABEL_16;
  }

  v17 = sub_1DD0DD8EC();
  v18 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v18))
  {
    *OUTLINED_FUNCTION_50_0() = 0;
    OUTLINED_FUNCTION_7_0(&dword_1DCAFC000, v19, v20, "WindowingDisambiguationPromptStrategy choosing to cancel");
    OUTLINED_FUNCTION_80();
  }

  *a4 = 0;
}

uint64_t WindowingDisambiguationPromptStrategy.makePromptForDisambiguation(items:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCDB74B0()
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v5, v6, "WindowingDisambiguationPromptStrategy default makePromptForDisambiguation implementation");
    OUTLINED_FUNCTION_62();
  }

  v8 = *(v0 + 80);
  v7 = *(v0 + 88);

  *(v0 + 48) = v7;
  *(v0 + 16) = 0;
  *(v0 + 24) = 257;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 41) = 0;
  v9 = *(v8 + 8);
  OUTLINED_FUNCTION_24_0();
  v17 = (v10 + *v10);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 96) = v11;
  *v11 = v12;
  v11[1] = sub_1DCBE45D8;
  v13 = *(v0 + 64);
  v14 = *(v0 + 72);
  v15 = *(v0 + 56);

  return v17(v15, v13, v0 + 16, v14, v9);
}

uint64_t WindowingDisambiguationPromptStrategy.parseWindowActionFromInput(input:items:)()
{
  OUTLINED_FUNCTION_42();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v1[8] = swift_getAssociatedTypeWitness();
  v1[9] = sub_1DD0DE97C();
  OUTLINED_FUNCTION_24_0();
  v1[10] = v7;
  v1[11] = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCDB773C()
{
  v34 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    *v4 = 0;
    _os_log_impl(&dword_1DCAFC000, v2, v3, "WindowingDisambiguationPromptStrategy default parseWindowActionFromInput implementation", v4, 2u);
    OUTLINED_FUNCTION_80();
  }

  v5 = v0[6];
  v6 = v0[5];
  v7 = v0[3];

  (*(v5 + 24))(&v33, v7, v6, v5);
  LODWORD(v5) = v33;
  v8 = sub_1DD0DD8EC();
  v9 = sub_1DD0DE6DC();
  v10 = OUTLINED_FUNCTION_23(v9);
  if (v5 == 1)
  {
    if (v10)
    {
      v11 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v11);
      OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v12, v13, "WindowingDisambiguationPromptStrategy parsed a request for the next window");
      OUTLINED_FUNCTION_62();
    }

    v14 = v0[8];
    v15 = v0[2];

    static WindowingAction.proceedWithNextWindow()(v14, v16, v17, v15);

    OUTLINED_FUNCTION_43();

    return v18();
  }

  else
  {
    if (v10)
    {
      v20 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v20);
      OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v21, v22, "WindowingDisambiguationPromptStrategy parsing possible user choice");
      OUTLINED_FUNCTION_62();
    }

    v23 = v0[6];

    v24 = *(v23 + 16);
    OUTLINED_FUNCTION_24_0();
    v32 = (v25 + *v25);
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    v0[12] = v26;
    *v26 = v27;
    v26[1] = sub_1DCDB79F8;
    v28 = v0[11];
    v29 = v0[4];
    v30 = v0[5];
    v31 = v0[3];

    return v32(v28, v31, v29, v30, v24);
  }
}

uint64_t sub_1DCDB79F8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCDB7AF0()
{
  OUTLINED_FUNCTION_39();
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  static WindowingAction.complete(_:)(v1, v0[8], v4, v5, v0[2]);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_43();

  return v6();
}

uint64_t sub_1DCDB7B90()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v5, v6, "Executing default implementation for makeFlowCancelledResponse");
    OUTLINED_FUNCTION_62();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 24) = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_31_1(v7);

  return sub_1DCCDCA70();
}

void sub_1DCDB7C9C(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_13();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_8_2();
  v5 = *(v4 + 88);
  v7 = type metadata accessor for ListPromptFlow.State(0, v3, v5, v6);
  OUTLINED_FUNCTION_9();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v28 - v12;
  sub_1DCDB816C(&v28 - v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v21 = *v13;
    v22 = v13[8];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    static WindowingAction.error(_:handled:)(v21, v22, AssociatedTypeWitness, v24, a1);
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v16 = swift_getAssociatedTypeWitness();
    type metadata accessor for WindowingAction(0, v16, v17, v18);
    OUTLINED_FUNCTION_2();
    v19 = OUTLINED_FUNCTION_20();
    v20(v19);
  }

  else
  {
    type metadata accessor for ListPromptFlow.ListPromptError(0, v3, v5, v15);
    OUTLINED_FUNCTION_28_20();
    swift_getWitnessTable();
    v25 = swift_allocError();
    v26 = swift_getAssociatedTypeWitness();
    static WindowingAction.error(_:handled:)(v25, 0, v26, v27, a1);

    (*(v9 + 8))(v13, v7);
  }
}

void sub_1DCDB7EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ListPromptFlow.State(0, *(*v4 + 80), *(*v4 + 88), a4);
  MEMORY[0x1EEE9AC00](v5, v6);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v7 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v7, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDB816C@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_59();
  v4 = *(v3 + 96);
  swift_beginAccess();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_59();
  type metadata accessor for ListPromptFlow.State(0, v6, *(v5 + 88), v7);
  OUTLINED_FUNCTION_2();
  return (*(v8 + 16))(a1, v1 + v4);
}

void sub_1DCDB8218(uint64_t a1)
{
  OUTLINED_FUNCTION_59();
  v4 = *(v3 + 96);
  swift_beginAccess();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_59();
  v8 = type metadata accessor for ListPromptFlow.State(0, v6, *(v5 + 88), v7);
  (*(*(v8 - 8) + 24))(v1 + v4, a1, v8);
  v9 = swift_endAccess();
  sub_1DCDB7EB8(v9, v10, v11, v12);
}

uint64_t sub_1DCDB830C(uint64_t a1, uint64_t a2, uint64_t *a3, __int128 *a4)
{
  v8 = swift_allocObject();
  sub_1DCDB8374(a1, a2, a3, a4);
  return v8;
}

uint64_t *sub_1DCDB8374(uint64_t a1, uint64_t a2, uint64_t *a3, __int128 *a4)
{
  v6 = *v4;
  v7 = *a3;
  v8 = *(a3 + 8);
  v9 = *(a3 + 9);
  v10 = a3[2];
  v11 = *(a3 + 24);
  v12 = *(a3 + 25);
  v20 = *(a3 + 26);
  v13 = *(*v4 + 80);
  (*(*(v13 - 8) + 32))(v4 + *(*v4 + 104), a1, v13);
  OUTLINED_FUNCTION_66();
  *(v4 + *(v14 + 112)) = a2;
  OUTLINED_FUNCTION_66();
  v16 = v4 + *(v15 + 120);
  *v16 = v7;
  *(v16 + 8) = v8;
  *(v16 + 9) = v9;
  *(v16 + 16) = v10;
  *(v16 + 24) = v11;
  *(v16 + 25) = v12;
  *(v16 + 26) = v20;
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(a4, v4 + *(v17 + 128));
  OUTLINED_FUNCTION_66();
  type metadata accessor for ListPromptFlow.State(0, v13, *(v6 + 88), v18);
  swift_storeEnumTagMultiPayload();
  return v4;
}

uint64_t sub_1DCDB84E8(uint8_t *a1)
{
  v2 = v1;
  v4 = *v1;
  type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v4 + 80);
  v10 = *(v4 + 88);
  v12 = type metadata accessor for ListPromptFlow.State(0, v9, v10, v11);
  OUTLINED_FUNCTION_9();
  v14 = v13;
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v38 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v38 - v20;
  sub_1DCDB816C(&v38 - v20);
  LODWORD(v4) = swift_getEnumCaseMultiPayload();
  (*(v14 + 8))(v21, v12);
  if (v4 == 5)
  {
    v22 = type metadata accessor for Input(0);
    sub_1DCB2479C(&a1[*(v22 + 20)], v8, type metadata accessor for Parse);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1DCDC578C(v8, type metadata accessor for Parse);
    if (EnumCaseMultiPayload == 10)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v24 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v24, qword_1EDE57E00);
      v25 = sub_1DD0DD8EC();
      v26 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_75(v26))
      {
        v27 = OUTLINED_FUNCTION_50_0();
        *v27 = 0;
        _os_log_impl(&dword_1DCAFC000, v25, v26, "ListPromptFlow received empty parse. Will handle and re-prompt.", v27, 2u);
        OUTLINED_FUNCTION_80();
      }

      v28 = v38;
      OUTLINED_FUNCTION_54_1();
LABEL_8:
      swift_storeEnumTagMultiPayload();
      sub_1DCDB8218(v28);
    }

    if ((sub_1DCE967E0(a1) & 1) == 0)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v34 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v34, qword_1EDE57E00);
      v35 = sub_1DD0DD8EC();
      v36 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_75(v36))
      {
        v37 = OUTLINED_FUNCTION_50_0();
        *v37 = 0;
        _os_log_impl(&dword_1DCAFC000, v35, v36, "ListPromptFlow received low confidence input. Treating as misunderstood and will re-prompt.", v37, 2u);
        OUTLINED_FUNCTION_80();
      }

      OUTLINED_FUNCTION_25_16();
      OUTLINED_FUNCTION_54_1();
      swift_storeEnumTagMultiPayload();
      sub_1DCDB8218(v35);
    }

    v28 = v2 + *(*v2 + 104);
    (*(v10 + 24))(&v39, a1, v9, v10);
    if (!v39)
    {
      v28 = v38;
      OUTLINED_FUNCTION_54_1();
      goto LABEL_8;
    }

    if (v39 == 1)
    {
      OUTLINED_FUNCTION_25_16();
      OUTLINED_FUNCTION_54_1();
      goto LABEL_8;
    }
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v29 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v29, qword_1EDE57E00);
    v30 = sub_1DD0DD8EC();
    v31 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v32);
      _os_log_impl(&dword_1DCAFC000, v30, v31, "ListPromptFlow received input but is not in the promptSent state. Ignoring.", a1, 2u);
      OUTLINED_FUNCTION_62();
    }
  }

  return 0;
}

void sub_1DCDB8938()
{
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_8_2();
  type metadata accessor for ListPromptFlow(0, v1, *(v0 + 88), v2);
  swift_getWitnessTable();
  Flow.deferToExecuteAsync(_:)();
}

uint64_t sub_1DCDB89D4()
{
  OUTLINED_FUNCTION_42();
  v1[6] = v2;
  v1[7] = v0;
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_8_2();
  v1[8] = type metadata accessor for ListPromptFlow.State(0, v4, *(v3 + 88), v5);
  v1[9] = OUTLINED_FUNCTION_38();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v1[10] = v6;
  *v6 = v7;
  OUTLINED_FUNCTION_13_17(v6);

  return sub_1DCDB8D80();
}

uint64_t sub_1DCDB8AA8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_29();

    return v10();
  }
}

void sub_1DCDB8BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_145();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_41();
  a16 = v18;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v21 = v18[11];
  v22 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v22, qword_1EDE57E00);
  v23 = v21;
  v24 = sub_1DD0DD8EC();
  v25 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    a10 = v27;
    *v26 = 136315138;
    swift_getErrorValue();
    v28 = sub_1DD0DF18C();
    v30 = sub_1DCB10E9C(v28, v29, &a10);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_1DCAFC000, v24, v25, "ListPromptFlow received an unexpected error %s. Will attempt to handle.", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  v31 = v18[11];
  v32 = v18[9];
  *v32 = v31;
  *(v32 + 8) = 0;
  swift_storeEnumTagMultiPayload();
  v33 = v31;
  sub_1DCDB8218(v32);
}

uint64_t sub_1DCDB8D80()
{
  OUTLINED_FUNCTION_39();
  v1[27] = v2;
  v1[28] = v0;
  OUTLINED_FUNCTION_13();
  v4 = *(v3 + 88);
  v1[29] = v4;
  OUTLINED_FUNCTION_8_2();
  v6 = *(v5 + 80);
  v1[30] = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[31] = AssociatedTypeWitness;
  v1[32] = type metadata accessor for WindowingAction(0, AssociatedTypeWitness, v8, v9);
  OUTLINED_FUNCTION_24_0();
  v1[33] = v10;
  v1[34] = OUTLINED_FUNCTION_38();
  type metadata accessor for Input(0);
  v1[35] = OUTLINED_FUNCTION_38();
  v1[36] = type metadata accessor for ListPromptFlow.State(0, v6, v4, v11);
  OUTLINED_FUNCTION_24_0();
  v1[37] = v12;
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1DCDB8F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79();
  sub_1DCDB816C(v14[39]);
  OUTLINED_FUNCTION_20();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_33_16();
      OUTLINED_FUNCTION_30_24(v41);
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v14[44] = v42;
      *v42 = v43;
      OUTLINED_FUNCTION_52_15(v42);
      goto LABEL_25;
    case 2u:
      (*(v14[37] + 8))(v14[39], v14[36]);
      goto LABEL_9;
    case 3u:
      v30 = v14[39];
      v31 = *v30;
      v14[50] = *v30;
      if (*(v30 + 8))
      {

LABEL_9:
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
        }

        v32 = sub_1DD0DD8FC();
        OUTLINED_FUNCTION_92(v32, qword_1EDE57E00);
        v33 = sub_1DD0DD8EC();
        v34 = sub_1DD0DE6DC();
        if (OUTLINED_FUNCTION_23(v34))
        {
          v35 = OUTLINED_FUNCTION_50_0();
          OUTLINED_FUNCTION_46(v35);
          OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v36, v37, "ListPromptFlow is complete");
          OUTLINED_FUNCTION_62();
        }

        static ExecuteResponse.complete()();
        OUTLINED_FUNCTION_47_14();

        OUTLINED_FUNCTION_43();
        OUTLINED_FUNCTION_76();

        return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14);
      }

      else
      {
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
        }

        v71 = sub_1DD0DD8FC();
        v14[51] = __swift_project_value_buffer(v71, qword_1EDE57E00);
        v72 = sub_1DD0DD8EC();
        v73 = sub_1DD0DE6EC();
        if (OUTLINED_FUNCTION_75(v73))
        {
          v74 = OUTLINED_FUNCTION_50_0();
          *v74 = 0;
          _os_log_impl(&dword_1DCAFC000, v72, v73, "ListPromptFlow is in an unhandled error state. Attempting to send an error response.", v74, 2u);
          OUTLINED_FUNCTION_80();
        }

        v75 = v14[28];

        __swift_project_boxed_opaque_existential_1((v75 + *(*v75 + 128)), *(v75 + *(*v75 + 128) + 24));
        v76 = swift_task_alloc();
        v14[52] = v76;
        *(v76 + 16) = v75;
        *(v76 + 24) = v31;
        swift_task_alloc();
        OUTLINED_FUNCTION_45();
        v14[53] = v77;
        *v77 = v78;
        v77[1] = sub_1DCDB9DD4;
LABEL_25:
        OUTLINED_FUNCTION_76();

        return sub_1DCB63BBC(v65, v66, v67, v68, v69);
      }

    case 4u:
      OUTLINED_FUNCTION_33_16();
      OUTLINED_FUNCTION_30_24(v27);
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v14[40] = v28;
      *v28 = v29;
      OUTLINED_FUNCTION_52_15(v28);
      goto LABEL_25;
    case 5u:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v44 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v44, qword_1EDE57E00);
      v45 = sub_1DD0DD8EC();
      v46 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v47);
        OUTLINED_FUNCTION_58_9(&dword_1DCAFC000, v48, v49, "ListPromptFlow called in an unexpected state. Will attempt to send an error response.");
        OUTLINED_FUNCTION_62();
      }

      v50 = v14[38];
      v52 = v14[29];
      v51 = v14[30];

      type metadata accessor for ListPromptFlow.ListPromptError(0, v51, v52, v53);
      OUTLINED_FUNCTION_28_20();
      swift_getWitnessTable();
      *v50 = swift_allocError();
      *(v50 + 8) = 0;
      swift_storeEnumTagMultiPayload();
      sub_1DCDB8218(v50);
    case 6u:
      OUTLINED_FUNCTION_33_16();
      OUTLINED_FUNCTION_30_24(v62);
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v14[46] = v63;
      *v63 = v64;
      OUTLINED_FUNCTION_52_15(v63);
      goto LABEL_25;
    case 7u:
      OUTLINED_FUNCTION_33_16();
      OUTLINED_FUNCTION_30_24(v38);
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v14[48] = v39;
      *v39 = v40;
      OUTLINED_FUNCTION_52_15(v39);
      goto LABEL_25;
    default:
      v80 = v14[29];
      sub_1DCC333DC(v14[39], v14[35]);
      OUTLINED_FUNCTION_13();
      v81 = v80 + 32;
      OUTLINED_FUNCTION_24_0();
      v79 = v15 + *v15;
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v14[42] = v16;
      *v16 = v17;
      v16[1] = sub_1DCDB9764;
      OUTLINED_FUNCTION_76();

      return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v79, v81, a12, a13, a14);
  }
}

uint64_t sub_1DCDB95D4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 328) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 176));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DCDB96D8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_48_15();
  sub_1DCDB8218(v0);
}

uint64_t sub_1DCDB9764()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 344) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DCDB985C()
{
  OUTLINED_FUNCTION_41();
  v1 = v0[38];
  (*(v0[33] + 16))(v1, v0[34], v0[32]);
  swift_storeEnumTagMultiPayload();
  sub_1DCDB8218(v1);
}

uint64_t sub_1DCDB9958()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 360) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 136));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DCDB9A5C()
{
  v1 = *(v0 + 304);
  swift_storeEnumTagMultiPayload();
  sub_1DCDB8218(v1);
}

uint64_t sub_1DCDB9B20()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 376) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 96));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCDB9C24()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 392) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 56));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DCDB9D28()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 304);
  static WindowingAction.cancelled()(*(v0 + 248), v2, v3, v1);
  swift_storeEnumTagMultiPayload();
  sub_1DCDB8218(v1);
}

uint64_t sub_1DCDB9DD4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 432) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DCDB9EE4()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 304);
  static WindowingAction.error(_:handled:)(*(v0 + 400), 1, *(v0 + 248), v2, v1);
  swift_storeEnumTagMultiPayload();
  sub_1DCDB8218(v1);
}

uint64_t sub_1DCDB9FA4()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_51_15();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCDBA01C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_26_21();
  sub_1DCDC578C(v0, v1);
  OUTLINED_FUNCTION_51_15();

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCDBA0A0()
{
  OUTLINED_FUNCTION_39();
  (*(v0[37] + 8))(v0[39], v0[36]);
  OUTLINED_FUNCTION_51_15();

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCDBA130()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_51_15();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCDBA1A8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_51_15();

  OUTLINED_FUNCTION_29();

  return v0();
}

void sub_1DCDBA220()
{
  OUTLINED_FUNCTION_41();

  v1 = sub_1DD0DD8EC();
  v2 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v3);
    OUTLINED_FUNCTION_58_9(&dword_1DCAFC000, v4, v5, "ListPromptFlow was unable to handle the error. Giving up.");
    OUTLINED_FUNCTION_62();
  }

  v6 = v0[54];
  v7 = v0[38];
  v8 = v0[31];

  static WindowingAction.error(_:handled:)(v6, 0, v8, v9, v7);
  swift_storeEnumTagMultiPayload();
  sub_1DCDB8218(v7);
}

uint64_t sub_1DCDBA34C(uint64_t a1, void *a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v2[8] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCDBA394, 0, 0);
}

uint64_t sub_1DCDBA394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_3_70(*(v10 + 120));
  OUTLINED_FUNCTION_25_1();
  v23 = v11 + *v11;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v9 + 72) = v12;
  *v12 = v13;
  OUTLINED_FUNCTION_8_49(v12);
  OUTLINED_FUNCTION_48();

  return v19(v14, v15, v16, v17, v18, v19, v20, v21, a9, v23);
}

uint64_t sub_1DCDBA4C4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCDBA5D8(uint64_t a1, void *a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v2[8] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCDBA620, 0, 0);
}

uint64_t sub_1DCDBA620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_3_70(*(v10 + 120));
  OUTLINED_FUNCTION_25_1();
  v23 = v11 + *v11;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v9 + 72) = v12;
  *v12 = v13;
  OUTLINED_FUNCTION_8_49(v12);
  OUTLINED_FUNCTION_48();

  return v19(v14, v15, v16, v17, v18, v19, v20, v21, a9, v23);
}

uint64_t sub_1DCDBA750()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCDBA864(uint64_t a1, void *a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v2[8] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCDBA8AC, 0, 0);
}

uint64_t sub_1DCDBA8AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_3_70(*(v10 + 120));
  OUTLINED_FUNCTION_25_1();
  v23 = v11 + *v11;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v9 + 72) = v12;
  *v12 = v13;
  OUTLINED_FUNCTION_8_49(v12);
  OUTLINED_FUNCTION_48();

  return v19(v14, v15, v16, v17, v18, v19, v20, v21, a9, v23);
}

uint64_t sub_1DCDBA9DC(uint64_t a1, uint64_t a2)
{
  v4 = *(*a2 + 88);
  v5 = *(*a2 + 80);
  v8 = (*(v4 + 64) + **(v4 + 64));
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DCB4AD3C;

  return v8(a1, v5, v4);
}

uint64_t sub_1DCDBAB48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*a2 + 88);
  v7 = *(*a2 + 80);
  v10 = (*(v6 + 72) + **(v6 + 72));
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1DCB4AE1C;

  return v10(a1, a3, v7, v6);
}

unint64_t sub_1DCDBACC4(uint64_t a1)
{
  v3 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1, v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x646574726174732ELL;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      (*(v3 + 8))(v5, a1);
      result = 0x65646E7573696D2ELL;
      break;
    case 2:
      (*(v3 + 8))(v5, a1);
      result = 0x74656C706D6F632ELL;
      break;
    case 3:
      (*(v3 + 8))(v5, a1);
      result = 0x726F7272652ELL;
      break;
    case 4:
      return result;
    case 5:
      result = 0x5374706D6F72702ELL;
      break;
    case 6:
      result = 0x61507974706D652ELL;
      break;
    case 7:
      result = 0x6C6C65636E61632ELL;
      break;
    default:
      (*(v3 + 8))(v5, a1);
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_1DCDBAF14(uint64_t a1)
{
  sub_1DD0DF1DC();
  sub_1DCBB1204();
  return sub_1DD0DF20C();
}

uint64_t sub_1DCDBAF58()
{
  OUTLINED_FUNCTION_13();
  v2 = *(v1 + 96);
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_8_2();
  type metadata accessor for ListPromptFlow.State(0, v4, *(v5 + 88), v6);
  OUTLINED_FUNCTION_2();
  (*(v7 + 8))(v0 + v2);
  OUTLINED_FUNCTION_66();
  (*(*(v4 - 8) + 8))(v0 + *(v8 + 104), v4);
  OUTLINED_FUNCTION_66();

  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v9 + 128)));
  return v0;
}

uint64_t sub_1DCDBB058()
{
  sub_1DCDBAF58();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCDBB0FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AD3C;

  return sub_1DCDB89D4();
}

uint64_t dispatch thunk of ListPromptFlowStrategy.parseWindowActionFromInput(input:items:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_38_0(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_25_1();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_11_0(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_2_9(v16);
  OUTLINED_FUNCTION_48();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of ListPromptFlowStrategy.makePromptForItems(items:paginationParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_38_0(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_25_1();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_11_0(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_2_9(v16);
  OUTLINED_FUNCTION_48();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of ListPromptFlowStrategy.makeRepromptOnEmptyParse(items:paginationParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_38_0(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_25_1();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_11_0(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_2_9(v16);
  OUTLINED_FUNCTION_48();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of ListPromptFlowStrategy.makeRepromptOnLowConfidence(items:paginationParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_38_0(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_25_1();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_11_0(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_2_9(v16);
  OUTLINED_FUNCTION_48();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of ListPromptFlowStrategy.makeFlowCancelledResponse()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_25_1();
  v11 = (v6 + *v6);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_11_0(v7);
  *v8 = v9;
  v8[1] = sub_1DCB4AE1C;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of ListPromptFlowStrategy.makeErrorResponse(error:)()
{
  OUTLINED_FUNCTION_41();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_24_0();
  v13 = (v8 + *v8);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_11_0(v9);
  *v10 = v11;
  v10[1] = sub_1DCB4AE1C;

  return v13(v7, v5, v3, v1);
}

uint64_t sub_1DCDBB7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ListPromptFlow.State(319, *(a1 + 80), *(a1 + 88), a4);
  if (v5 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1DCDBB91C(uint64_t a1)
{
  result = type metadata accessor for Input(319);
  if (v2 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    result = type metadata accessor for WindowingAction.WindowingActionType(319, AssociatedTypeWitness, v4, v5);
    if (v6 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

char *sub_1DCDBBA08(char *a1, unsigned __int8 *a2, uint64_t a3)
{
  v209 = *(sub_1DD0DB04C() - 8);
  v211 = *(v209 + 64);
  v196 = sub_1DD0DC76C();
  v205 = *(v196 - 8);
  v195 = v205;
  v3 = *(v205 + 80);
  v192 = sub_1DD0DB1EC();
  v207 = *(v192 - 8);
  v208 = *(v207 + 80) | v3;
  v198 = sub_1DD0DB4BC();
  v204 = *(v198 - 8);
  v200 = *(v204 + 80);
  v197 = sub_1DD0DB3EC();
  v201 = *(v197 - 8);
  v4 = v201;
  v5 = *(v201 + 80);
  v6 = v200 & 0xF8 | v5 | 7u;
  v191 = sub_1DD0DD12C();
  v203 = *(v191 - 8);
  v7 = *(v203 + 80);
  v190 = sub_1DD0DD08C();
  v188 = *(v190 - 8);
  v8 = v7 | *(v188 + 80);
  v9 = *(v205 + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v189 = v9;
  if (v10 <= v9)
  {
    v10 = *(v205 + 64);
  }

  if (v10 <= *(v207 + 64))
  {
    v10 = *(v207 + 64);
  }

  v199 = *(v204 + 64) + v5;
  v11 = *(v201 + 84);
  v12 = *(v201 + 64);
  v181 = v12;
  if (!v11)
  {
    ++v12;
  }

  v202 = v12;
  v193 = v199 & ~v5;
  v182 = v12 + 7;
  v13 = (v12 + 7 + v193) & 0xFFFFFFFFFFFFFFF8;
  __n = (v13 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v10 <= __n)
  {
    v10 = (v13 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v14 = v13 + 31;
  if (v10 <= (((((v14 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v10 = (((((v14 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v185 = *(v203 + 64);
  v183 = *(v4 + 84);
  v15 = v11 != 0;
  v16 = v11 - 1;
  if (!v15)
  {
    v16 = 0;
  }

  v180 = v16;
  v184 = *(v204 + 84);
  if (v16 <= v184)
  {
    v16 = *(v204 + 84);
  }

  if (v16 <= 0x7FFFFFFE)
  {
    v16 = 2147483646;
  }

  v187 = v16;
  v186 = v6 + 16;
  v17 = (v208 | v8) & 0xF8 | v6;
  v18 = ((v14 + ((v6 + 16 + ((v185 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v10 <= v18)
  {
    v10 = v18;
  }

  v19 = *(*(v190 - 8) + 64);
  if (v10 > v19)
  {
    v19 = v10;
  }

  if (v19 <= 0x18)
  {
    v19 = 24;
  }

  v206 = v19;
  v20 = ((((v19 + ((v211 + v17) & ~v17) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = *(AssociatedTypeWitness - 8);
  if (*(v22 + 84))
  {
    v23 = *(v22 + 64);
  }

  else
  {
    v23 = *(v22 + 64) + 1;
  }

  if (v23 <= 9)
  {
    v24 = 9;
  }

  else
  {
    v24 = v23;
  }

  if (v24 + 1 > v20)
  {
    v25 = v24 + 1;
  }

  else
  {
    v25 = v20;
  }

  if (v25 <= 9)
  {
    v26 = 9;
  }

  else
  {
    v26 = v25;
  }

  v27 = *(v209 + 80);
  v28 = *(v22 + 80);
  if (((v28 | v27) & 0xF8 | v17) != 7 || ((v208 | v200 | v5 | v8 | v27 | v28) & 0x100000) != 0 || (v26 + 1) > 0x18)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v29 = AssociatedTypeWitness;
  v30 = a2[v26];
  v31 = v30 - 4;
  if (v30 < 4)
  {
    v33 = a1;
  }

  else
  {
    if (v26 <= 3)
    {
      v32 = v26;
    }

    else
    {
      v32 = 4;
    }

    v33 = a1;
    switch(v32)
    {
      case 1:
        v34 = *a2;
        goto LABEL_49;
      case 2:
        v34 = *a2;
        goto LABEL_49;
      case 3:
        v34 = *a2 | (a2[2] << 16);
        goto LABEL_49;
      case 4:
        v34 = *a2;
LABEL_49:
        if (v26 < 4)
        {
          v34 |= v31 << (8 * v26);
        }

        v30 = v34 + 4;
        break;
      default:
        break;
    }
  }

  v35 = v206 + 1;
  v36 = ~(v200 & 0xF8 | v5 | 7u);
  switch(v30)
  {
    case 0u:
      v37 = ~v5;
      v38 = v26;
      (*(v209 + 16))(v33);
      v39 = &v33[v211 + 7];
      v40 = (v39 & 0xFFFFFFFFFFFFFFF8);
      v41 = &a2[v211 + 7];
      v42 = (v41 & 0xFFFFFFFFFFFFFFF8);
      v43 = *((v41 & 0xFFFFFFFFFFFFFFF8) + v206);
      v44 = v43 - 10;
      if (v43 >= 0xA)
      {
        if (v206 <= 3)
        {
          v45 = v206;
        }

        else
        {
          v45 = 4;
        }

        switch(v45)
        {
          case 1:
            v46 = *v42;
            goto LABEL_95;
          case 2:
            v46 = *v42;
            goto LABEL_95;
          case 3:
            v46 = *v42 | (v42[2] << 16);
            goto LABEL_95;
          case 4:
            v46 = *v42;
LABEL_95:
            if (v206 < 4)
            {
              v43 = (v46 | (v44 << (8 * v206))) + 10;
            }

            else
            {
              v43 = v46 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v43)
      {
        case 0u:
          (*(v195 + 16))(v39 & 0xFFFFFFFFFFFFFFF8, v41 & 0xFFFFFFFFFFFFFFF8, v196);
          *((v39 & 0xFFFFFFFFFFFFFFF8) + v206) = 0;
          goto LABEL_129;
        case 1u:
          (*(v195 + 16))(v39 & 0xFFFFFFFFFFFFFFF8, v41 & 0xFFFFFFFFFFFFFFF8, v196);
          *(((v39 | 7) + v189) & 0xFFFFFFFFFFFFFFF8) = *(((v41 | 7) + v189) & 0xFFFFFFFFFFFFFFF8);
          *((v39 & 0xFFFFFFFFFFFFFFF8) + v206) = 1;
          sub_1DD0DCF8C();
        case 2u:
          *v40 = *v42;
          v40[1] = *(v42 + 1);
          v40[2] = *(v42 + 2);
          *(v40 + v206) = 2;

          goto LABEL_129;
        case 3u:
          *v40 = *v42;
          *(v40 + v206) = 3;
          swift_unknownObjectRetain();
          goto LABEL_129;
        case 4u:
          v69 = v206;
          v70 = v39 & 0xFFFFFFFFFFFFFFF8;
          (*(v207 + 16))(v39 & 0xFFFFFFFFFFFFFFF8, v41 & 0xFFFFFFFFFFFFFFF8, v192);
          v71 = 4;
          goto LABEL_109;
        case 5u:
          v82 = *v42;
          *v40 = *v42;
          *(v40 + v206) = 5;
          v83 = v82;
          goto LABEL_129;
        case 6u:
          (*(v204 + 16))(v39 & 0xFFFFFFFFFFFFFFF8, v41 & 0xFFFFFFFFFFFFFFF8, v198);
          v86 = ((v199 + (v39 & 0xFFFFFFFFFFFFFFF8)) & v37);
          v87 = (&v42[v199] & v37);
          if (__swift_getEnumTagSinglePayload(v87, 1, v197))
          {
            v88 = v202;
            memcpy(v86, v87, v202);
            v78 = v38;
          }

          else
          {
            (*(v4 + 16))(v86, v87, v197);
            __swift_storeEnumTagSinglePayload(v86, 0, 1, v197);
            v78 = v38;
            v88 = v202;
          }

          v146 = ((v86 + v88 + 7) & 0xFFFFFFFFFFFFFFF8);
          v147 = ((v87 + v88 + 7) & 0xFFFFFFFFFFFFFFF8);
          *v146 = *v147;
          v146[1] = v147[1];
          v148 = (v146 + 19) & 0xFFFFFFFFFFFFFFF8;
          v149 = (v147 + 19) & 0xFFFFFFFFFFFFFFF8;
          v150 = *v149;
          *(v148 + 4) = *(v149 + 4);
          *v148 = v150;
          *((v39 & 0xFFFFFFFFFFFFFFF8) + v206) = 6;

          v35 = v206 + 1;
          goto LABEL_130;
        case 7u:
          v212 = v206 + 1;
          (*(v204 + 16))(v39 & 0xFFFFFFFFFFFFFFF8, v41 & 0xFFFFFFFFFFFFFFF8, v198);
          v75 = ((v199 + (v39 & 0xFFFFFFFFFFFFFFF8)) & v37);
          v76 = (&v42[v199] & v37);
          if (__swift_getEnumTagSinglePayload(v76, 1, v197))
          {
            v77 = v202;
            memcpy(v75, v76, v202);
            v78 = v38;
          }

          else
          {
            (*(v4 + 16))(v75, v76, v197);
            __swift_storeEnumTagSinglePayload(v75, 0, 1, v197);
            v78 = v38;
            v77 = v202;
          }

          v124 = ((v75 + v77 + 7) & 0xFFFFFFFFFFFFFFF8);
          v125 = ((v76 + v77 + 7) & 0xFFFFFFFFFFFFFFF8);
          *v124 = *v125;
          v124[1] = v125[1];
          v126 = (v124 + 19) & 0xFFFFFFFFFFFFFFF8;
          v127 = (v125 + 19) & 0xFFFFFFFFFFFFFFF8;
          v128 = *v127;
          *(v126 + 4) = *(v127 + 4);
          *v126 = v128;
          v129 = (((v39 | 7) + __n) & 0xFFFFFFFFFFFFFFF8);
          v130 = (((v41 | 7) + __n) & 0xFFFFFFFFFFFFFFF8);
          *v129 = *v130;
          v129[1] = v130[1];
          v131 = ((v129 + 23) & 0xFFFFFFFFFFFFFFF8);
          v132 = ((v130 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v131 = *v132;
          v131[1] = v132[1];
          v133 = ((v131 + 23) & 0xFFFFFFFFFFFFFFF8);
          v134 = ((v132 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v133 = *v134;
          v133[1] = v134[1];
          *((v39 & 0xFFFFFFFFFFFFFFF8) + v206) = 7;

          goto LABEL_180;
        case 8u:
          v212 = v206 + 1;
          (*(v203 + 16))(v39 & 0xFFFFFFFFFFFFFFF8, v41 & 0xFFFFFFFFFFFFFFF8, v191);
          v106 = (((v39 | 7) + v185) & 0xFFFFFFFFFFFFFFF8);
          v107 = (((v41 | 7) + v185) & 0xFFFFFFFFFFFFFFF8);
          *v106 = *v107;
          v106[1] = v107[1];
          v108 = ((v106 + v186) & v36);
          v109 = ((v107 + v186) & v36);

          if (v184 != v187)
          {
            v112 = ((v109 + v199) & v37);
            v78 = v38;
            if (v180 == v187)
            {
              v110 = v198;
              if (v183 >= 2 && __swift_getEnumTagSinglePayload((v109 + v199) & v37, v183, v197) >= 2)
              {
                goto LABEL_151;
              }
            }

            else
            {
              v156 = *(((v112 + v182) & 0xFFFFFFFFFFFFFFF8) + 8);
              if (v156 >= 0xFFFFFFFF)
              {
                LODWORD(v156) = -1;
              }

              v110 = v198;
              if ((v156 + 1) >= 2)
              {
                goto LABEL_151;
              }
            }

            v113 = v204;
            v111 = v199;
            goto LABEL_168;
          }

          v110 = v198;
          v78 = v38;
          if (__swift_getEnumTagSinglePayload(v109, v184, v198))
          {
LABEL_151:
            memcpy(v108, v109, __n);
            v122 = v202;
LABEL_178:
            v165 = v122;
            goto LABEL_179;
          }

          v111 = v199;
          v112 = ((v109 + v199) & v37);
          v113 = v204;
LABEL_168:
          (*(v113 + 16))(v108, v109, v110);
          v157 = ((v108 + v111) & v37);
          v122 = v202;
          if (__swift_getEnumTagSinglePayload(v112, 1, v197))
          {
            memcpy(v157, v112, v202);
          }

          else
          {
            (*(v4 + 16))(v157, v112, v197);
            __swift_storeEnumTagSinglePayload(v157, 0, 1, v197);
          }

          v160 = ((v157 + v182) & 0xFFFFFFFFFFFFFFF8);
          v161 = ((v112 + v182) & 0xFFFFFFFFFFFFFFF8);
          *v160 = *v161;
          v160[1] = v161[1];
          v162 = (v160 + 19) & 0xFFFFFFFFFFFFFFF8;
          v163 = (v161 + 19) & 0xFFFFFFFFFFFFFFF8;
          v164 = *v163;
          *(v162 + 4) = *(v163 + 4);
          *v162 = v164;

          v78 = v38;
          v165 = v181;
          if (!v183)
          {
            goto LABEL_178;
          }

LABEL_179:
          v166 = (((v193 + v165 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
          v167 = ((v108 + v166 + 7) & 0xFFFFFFFFFFFFFFF8);
          v168 = *((v109 + v166 + 7) & 0xFFFFFFFFFFFFFFF8);
          *v167 = v168;
          *((v39 & 0xFFFFFFFFFFFFFFF8) + v206) = 8;
          v169 = v168;
LABEL_180:
          v35 = v212;
LABEL_130:
          v92 = (((v41 | 7) + v35) & 0xFFFFFFFFFFFFFFF8);
          v93 = (((v39 | 7) + v35) & 0xFFFFFFFFFFFFFFF8);
          *v93 = *v92;
          v94 = (v93 + 15) & 0xFFFFFFFFFFFFFFF8;
          v95 = (v92 + 15) & 0xFFFFFFFFFFFFFFF8;
          v96 = *(v95 + 24);

          if (v96 < 0xFFFFFFFF)
          {
            v97 = *v95;
            v98 = *(v95 + 16);
            *(v94 + 32) = *(v95 + 32);
            *v94 = v97;
            *(v94 + 16) = v98;
          }

          else
          {
            *(v94 + 24) = v96;
            *(v94 + 32) = *(v95 + 32);
            (**(v96 - 8))(v94, v95, v96);
          }

          *(v94 + 40) = *(v95 + 40);
          v33 = a1;
          a1[v78] = 0;
          return v33;
        case 9u:
          v69 = v206;
          v70 = v39 & 0xFFFFFFFFFFFFFFF8;
          (*(v188 + 16))(v39 & 0xFFFFFFFFFFFFFFF8, v41 & 0xFFFFFFFFFFFFFFF8, v190);
          v71 = 9;
LABEL_109:
          *(v70 + v69) = v71;
          goto LABEL_129;
        default:
          memcpy((v39 & 0xFFFFFFFFFFFFFFF8), (v41 & 0xFFFFFFFFFFFFFFF8), v35);
LABEL_129:
          v78 = v38;
          goto LABEL_130;
      }

    case 1u:
      v54 = ~v5;
      v55 = v26;
      (*(v209 + 16))(v33);
      v56 = &v33[v211 + 7];
      v57 = (v56 & 0xFFFFFFFFFFFFFFF8);
      v58 = &a2[v211 + 7];
      v59 = (v58 & 0xFFFFFFFFFFFFFFF8);
      v60 = *((v58 & 0xFFFFFFFFFFFFFFF8) + v206);
      v61 = v60 - 10;
      if (v60 >= 0xA)
      {
        if (v206 <= 3)
        {
          v62 = v206;
        }

        else
        {
          v62 = 4;
        }

        switch(v62)
        {
          case 1:
            v63 = *v59;
            goto LABEL_101;
          case 2:
            v63 = *v59;
            goto LABEL_101;
          case 3:
            v63 = *v59 | (v59[2] << 16);
            goto LABEL_101;
          case 4:
            v63 = *v59;
LABEL_101:
            if (v206 < 4)
            {
              v60 = (v63 | (v61 << (8 * v206))) + 10;
            }

            else
            {
              v60 = v63 + 10;
            }

            break;
          default:
            goto LABEL_104;
        }
      }

      break;
    case 2u:
      v47 = a2[v24];
      v48 = v47 - 2;
      if (v47 >= 2)
      {
        if (v24 <= 3)
        {
          v49 = v24;
        }

        else
        {
          v49 = 4;
        }

        switch(v49)
        {
          case 1:
            v50 = *a2;
            goto LABEL_80;
          case 2:
            v50 = *a2;
            goto LABEL_80;
          case 3:
            v50 = *a2 | (a2[2] << 16);
            goto LABEL_80;
          case 4:
            v50 = *a2;
LABEL_80:
            if (v24 < 4)
            {
              v47 = (v50 | (v48 << (8 * v24))) + 2;
            }

            else
            {
              v47 = v50 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v47 == 1)
      {
        v65 = v33;
        v66 = *a2;
        v67 = *a2;
        *v65 = v66;
        v33 = v65;
        v65[8] = a2[8];
        v65[v24] = 1;
      }

      else if (v47)
      {
        memcpy(v33, a2, v24 + 1);
      }

      else
      {
        if (__swift_getEnumTagSinglePayload(a2, 1, AssociatedTypeWitness))
        {
          memcpy(v33, a2, v23);
        }

        else
        {
          (*(v22 + 16))(v33, a2, v29);
          __swift_storeEnumTagSinglePayload(v33, 0, 1, v29);
        }

        v33[v24] = 0;
      }

      v68 = 2;
      goto LABEL_140;
    case 3u:
      v51 = v33;
      v52 = *a2;
      v53 = *a2;
      *v51 = v52;
      v33 = v51;
      v51[8] = a2[8];
      v51[v26] = 3;
      return v33;
    default:

      return memcpy(v33, a2, ~v5);
  }

LABEL_104:
  switch(v60)
  {
    case 0u:
      (*(v195 + 16))(v56 & 0xFFFFFFFFFFFFFFF8, v58 & 0xFFFFFFFFFFFFFFF8, v196);
      *((v56 & 0xFFFFFFFFFFFFFFF8) + v206) = 0;
      goto LABEL_135;
    case 1u:
      (*(v195 + 16))(v56 & 0xFFFFFFFFFFFFFFF8, v58 & 0xFFFFFFFFFFFFFFF8, v196);
      *(((v56 | 7) + v189) & 0xFFFFFFFFFFFFFFF8) = *(((v58 | 7) + v189) & 0xFFFFFFFFFFFFFFF8);
      *((v56 & 0xFFFFFFFFFFFFFFF8) + v206) = 1;
      sub_1DD0DCF8C();
    case 2u:
      *v57 = *v59;
      v57[1] = *(v59 + 1);
      v57[2] = *(v59 + 2);
      *(v57 + v206) = 2;

      goto LABEL_135;
    case 3u:
      *v57 = *v59;
      *(v57 + v206) = 3;
      swift_unknownObjectRetain();
      goto LABEL_135;
    case 4u:
      v72 = v206;
      v73 = v56 & 0xFFFFFFFFFFFFFFF8;
      (*(v207 + 16))(v56 & 0xFFFFFFFFFFFFFFF8, v58 & 0xFFFFFFFFFFFFFFF8, v192);
      v74 = 4;
      goto LABEL_111;
    case 5u:
      v84 = *v59;
      *v57 = *v59;
      *(v57 + v206) = 5;
      v85 = v84;
      goto LABEL_135;
    case 6u:
      (*(v204 + 16))(v56 & 0xFFFFFFFFFFFFFFF8, v58 & 0xFFFFFFFFFFFFFFF8, v198);
      v89 = ((v199 + (v56 & 0xFFFFFFFFFFFFFFF8)) & v54);
      v90 = (&v59[v199] & v54);
      if (__swift_getEnumTagSinglePayload(v90, 1, v197))
      {
        v91 = v202;
        memcpy(v89, v90, v202);
        v26 = v55;
      }

      else
      {
        (*(v4 + 16))(v89, v90, v197);
        __swift_storeEnumTagSinglePayload(v89, 0, 1, v197);
        v26 = v55;
        v91 = v202;
      }

      v151 = ((v89 + v91 + 7) & 0xFFFFFFFFFFFFFFF8);
      v152 = ((v90 + v91 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v151 = *v152;
      v151[1] = v152[1];
      v153 = (v151 + 19) & 0xFFFFFFFFFFFFFFF8;
      v154 = (v152 + 19) & 0xFFFFFFFFFFFFFFF8;
      v155 = *v154;
      *(v153 + 4) = *(v154 + 4);
      *v153 = v155;
      *((v56 & 0xFFFFFFFFFFFFFFF8) + v206) = 6;

      v35 = v206 + 1;
      goto LABEL_136;
    case 7u:
      v213 = v206 + 1;
      (*(v204 + 16))(v56 & 0xFFFFFFFFFFFFFFF8, v58 & 0xFFFFFFFFFFFFFFF8, v198);
      v79 = ((v199 + (v56 & 0xFFFFFFFFFFFFFFF8)) & v54);
      v80 = (&v59[v199] & v54);
      if (__swift_getEnumTagSinglePayload(v80, 1, v197))
      {
        v81 = v202;
        memcpy(v79, v80, v202);
        v26 = v55;
      }

      else
      {
        (*(v4 + 16))(v79, v80, v197);
        __swift_storeEnumTagSinglePayload(v79, 0, 1, v197);
        v26 = v55;
        v81 = v202;
      }

      v135 = ((v79 + v81 + 7) & 0xFFFFFFFFFFFFFFF8);
      v136 = ((v80 + v81 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v135 = *v136;
      v135[1] = v136[1];
      v137 = (v135 + 19) & 0xFFFFFFFFFFFFFFF8;
      v138 = (v136 + 19) & 0xFFFFFFFFFFFFFFF8;
      v139 = *v138;
      *(v137 + 4) = *(v138 + 4);
      *v137 = v139;
      v140 = (((v56 | 7) + __n) & 0xFFFFFFFFFFFFFFF8);
      v141 = (((v58 | 7) + __n) & 0xFFFFFFFFFFFFFFF8);
      *v140 = *v141;
      v140[1] = v141[1];
      v142 = ((v140 + 23) & 0xFFFFFFFFFFFFFFF8);
      v143 = ((v141 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v142 = *v143;
      v142[1] = v143[1];
      v144 = ((v142 + 23) & 0xFFFFFFFFFFFFFFF8);
      v145 = ((v143 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v144 = *v145;
      v144[1] = v145[1];
      *((v56 & 0xFFFFFFFFFFFFFFF8) + v206) = 7;

      goto LABEL_185;
    case 8u:
      v213 = v206 + 1;
      (*(v203 + 16))(v56 & 0xFFFFFFFFFFFFFFF8, v58 & 0xFFFFFFFFFFFFFFF8, v191);
      v114 = (((v56 | 7) + v185) & 0xFFFFFFFFFFFFFFF8);
      v115 = (((v58 | 7) + v185) & 0xFFFFFFFFFFFFFFF8);
      *v114 = *v115;
      v114[1] = v115[1];
      v116 = ((v114 + v186) & v36);
      v117 = ((v115 + v186) & v36);

      if (v184 == v187)
      {
        v118 = v198;
        v26 = v55;
        if (!__swift_getEnumTagSinglePayload(v117, v184, v198))
        {
          v119 = v199;
          v120 = ((v117 + v199) & v54);
          v121 = v204;
          goto LABEL_174;
        }

LABEL_155:
        memcpy(v116, v117, __n);
        v123 = v202;
        goto LABEL_183;
      }

      v120 = ((v117 + v199) & v54);
      v26 = v55;
      if (v180 == v187)
      {
        v118 = v198;
        if (v183 >= 2 && __swift_getEnumTagSinglePayload((v117 + v199) & v54, v183, v197) >= 2)
        {
          goto LABEL_155;
        }
      }

      else
      {
        v158 = *(((v120 + v182) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v158 >= 0xFFFFFFFF)
        {
          LODWORD(v158) = -1;
        }

        v118 = v198;
        if ((v158 + 1) >= 2)
        {
          goto LABEL_155;
        }
      }

      v121 = v204;
      v119 = v199;
LABEL_174:
      (*(v121 + 16))(v116, v117, v118);
      v159 = ((v116 + v119) & v54);
      v123 = v202;
      if (__swift_getEnumTagSinglePayload(v120, 1, v197))
      {
        memcpy(v159, v120, v202);
      }

      else
      {
        (*(v4 + 16))(v159, v120, v197);
        __swift_storeEnumTagSinglePayload(v159, 0, 1, v197);
      }

      v170 = ((v159 + v182) & 0xFFFFFFFFFFFFFFF8);
      v171 = ((v120 + v182) & 0xFFFFFFFFFFFFFFF8);
      *v170 = *v171;
      v170[1] = v171[1];
      v172 = (v170 + 19) & 0xFFFFFFFFFFFFFFF8;
      v173 = (v171 + 19) & 0xFFFFFFFFFFFFFFF8;
      v174 = *v173;
      *(v172 + 4) = *(v173 + 4);
      *v172 = v174;

      v26 = v55;
      v175 = v181;
      if (v183)
      {
LABEL_184:
        v176 = (((v193 + v175 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
        v177 = ((v116 + v176 + 7) & 0xFFFFFFFFFFFFFFF8);
        v178 = *((v117 + v176 + 7) & 0xFFFFFFFFFFFFFFF8);
        *v177 = v178;
        *((v56 & 0xFFFFFFFFFFFFFFF8) + v206) = 8;
        v179 = v178;
LABEL_185:
        v35 = v213;
LABEL_136:
        v99 = (((v58 | 7) + v35) & 0xFFFFFFFFFFFFFFF8);
        v100 = (((v56 | 7) + v35) & 0xFFFFFFFFFFFFFFF8);
        *v100 = *v99;
        v101 = (v100 + 15) & 0xFFFFFFFFFFFFFFF8;
        v102 = (v99 + 15) & 0xFFFFFFFFFFFFFFF8;
        v103 = *(v102 + 24);

        if (v103 < 0xFFFFFFFF)
        {
          v104 = *v102;
          v105 = *(v102 + 16);
          *(v101 + 32) = *(v102 + 32);
          *v101 = v104;
          *(v101 + 16) = v105;
        }

        else
        {
          *(v101 + 24) = v103;
          *(v101 + 32) = *(v102 + 32);
          (**(v103 - 8))(v101, v102, v103);
        }

        *(v101 + 40) = *(v102 + 40);
        v68 = 1;
        v33 = a1;
LABEL_140:
        v33[v26] = v68;
        return v33;
      }

LABEL_183:
      v175 = v123;
      goto LABEL_184;
    case 9u:
      v72 = v206;
      v73 = v56 & 0xFFFFFFFFFFFFFFF8;
      (*(v188 + 16))(v56 & 0xFFFFFFFFFFFFFFF8, v58 & 0xFFFFFFFFFFFFFFF8, v190);
      v74 = 9;
LABEL_111:
      *(v73 + v72) = v74;
      goto LABEL_135;
    default:
      memcpy((v56 & 0xFFFFFFFFFFFFFFF8), (v58 & 0xFFFFFFFFFFFFFFF8), v35);
LABEL_135:
      v26 = v55;
      goto LABEL_136;
  }
}

void sub_1DCDBD168(unsigned __int8 *a1, uint64_t a2)
{
  v2 = sub_1DD0DB04C();
  v79 = *(v2 - 8);
  v80 = v2;
  v90 = *(v79 + 64);
  v76 = sub_1DD0DC76C();
  v86 = *(v76 - 8);
  v75 = v86;
  v3 = *(v86 + 80);
  v74 = sub_1DD0DB1EC();
  v88 = *(v74 - 8);
  v73 = v88;
  v81 = *(v88 + 80) | v3;
  v78 = sub_1DD0DB4BC();
  v84 = *(v78 - 8);
  v94 = v84;
  v4 = *(v84 + 80) & 0xF8;
  v77 = sub_1DD0DB3EC();
  v5 = *(v77 - 8);
  v6 = *(v5 + 80);
  v7 = v4 | v6 | 7;
  v8 = sub_1DD0DD12C();
  v82 = *(v8 - 8);
  v71 = v82;
  v72 = v8;
  v9 = *(v82 + 80);
  v70 = sub_1DD0DD08C();
  v10 = v86;
  v69 = *(v70 - 8);
  v11 = (v81 | (v9 | *(v69 + 80))) & 0xF8 | v7;
  v87 = v90 + v11;
  v12 = (v90 + v11) & ~v11;
  v13 = *(v10 + 64);
  if (((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v13)
  {
    v13 = ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v13 <= *(v88 + 64))
  {
    v13 = *(v88 + 64);
  }

  v89 = *(v84 + 64) + v6;
  v91 = v6;
  v68 = v5;
  v14 = *(v5 + 84);
  v15 = *(v5 + 64);
  if (!v14)
  {
    ++v15;
  }

  v85 = v15 + 7;
  v16 = (v15 + 7 + (v89 & ~v6)) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v13 <= v17)
  {
    v13 = (v16 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v18 = v16 + 31;
  if (v13 <= (((((v18 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v13 = (((((v18 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v19 = *(v82 + 64);
  v20 = v7 + 16;
  v21 = v7;
  v22 = (v7 + 16 + ((v19 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v7;
  v23 = *(v94 + 84);
  v83 = *(v5 + 84);
  v24 = v14 != 0;
  v25 = v14 - 1;
  if (!v24)
  {
    v25 = 0;
  }

  v67 = v25;
  if (v25 <= v23)
  {
    v25 = *(v94 + 84);
  }

  if (v25 <= 0x7FFFFFFE)
  {
    v26 = 2147483646;
  }

  else
  {
    v26 = v25;
  }

  v27 = ((v18 + v22) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v13 <= v27)
  {
    v13 = v27;
  }

  v28 = *(*(v70 - 8) + 64);
  if (v13 > v28)
  {
    v28 = v13;
  }

  if (v28 <= 0x18)
  {
    v29 = 24;
  }

  else
  {
    v29 = v28;
  }

  v30 = ((((v29 + v12 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = AssociatedTypeWitness;
  v33 = *(AssociatedTypeWitness - 8);
  if (*(v33 + 84))
  {
    v34 = *(v33 + 64);
  }

  else
  {
    v34 = *(v33 + 64) + 1;
  }

  if (v34 <= 9)
  {
    v34 = 9;
  }

  if (v34 + 1 > v30)
  {
    v35 = v34 + 1;
  }

  else
  {
    v35 = v30;
  }

  if (v35 <= 9)
  {
    v36 = 9;
  }

  else
  {
    v36 = v35;
  }

  v37 = a1[v36];
  v38 = v37 - 4;
  if (v37 >= 4)
  {
    if (v36 <= 3)
    {
      v39 = v36;
    }

    else
    {
      v39 = 4;
    }

    switch(v39)
    {
      case 1:
        v40 = *a1;
        goto LABEL_45;
      case 2:
        v40 = *a1;
        goto LABEL_45;
      case 3:
        v40 = *a1 | (a1[2] << 16);
        goto LABEL_45;
      case 4:
        v40 = *a1;
LABEL_45:
        if (v36 < 4)
        {
          v40 |= v38 << (8 * v36);
        }

        v37 = v40 + 4;
        break;
      default:
        break;
    }
  }

  v41 = ~v11;
  v42 = v29 + 1;
  switch(v37)
  {
    case 0u:
      v92 = ~v91;
      (*(v79 + 8))(a1, v80);
      v43 = (&a1[v87] & v41);
      v44 = v43[v29];
      v45 = v44 - 10;
      if (v44 >= 0xA)
      {
        if (v29 <= 3)
        {
          v46 = v29;
        }

        else
        {
          v46 = 4;
        }

        switch(v46)
        {
          case 1:
            v47 = *v43;
            goto LABEL_87;
          case 2:
            v47 = *v43;
            goto LABEL_87;
          case 3:
            v47 = *v43 | (v43[2] << 16);
            goto LABEL_87;
          case 4:
            v47 = *v43;
LABEL_87:
            if (v29 < 4)
            {
              v44 = (v47 | (v45 << (8 * v29))) + 10;
            }

            else
            {
              v44 = v47 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v44)
      {
        case 0u:
          goto LABEL_96;
        case 1u:
          goto LABEL_105;
        case 2u:
          goto LABEL_100;
        case 3u:
          goto LABEL_101;
        case 4u:
          goto LABEL_97;
        case 5u:
          goto LABEL_106;
        case 6u:
          goto LABEL_107;
        case 7u:
          goto LABEL_102;
        case 8u:
          goto LABEL_110;
        case 9u:
          goto LABEL_98;
        default:
          goto LABEL_127;
      }

      goto LABEL_127;
    case 1u:
      v92 = ~v91;
      (*(v79 + 8))(a1, v80);
      v43 = (&a1[v87] & v41);
      v52 = v43[v29];
      v53 = v52 - 10;
      if (v52 >= 0xA)
      {
        if (v29 <= 3)
        {
          v54 = v29;
        }

        else
        {
          v54 = 4;
        }

        switch(v54)
        {
          case 1:
            v55 = *v43;
            goto LABEL_92;
          case 2:
            v55 = *v43;
            goto LABEL_92;
          case 3:
            v55 = *v43 | (v43[2] << 16);
            goto LABEL_92;
          case 4:
            v55 = *v43;
LABEL_92:
            if (v29 < 4)
            {
              v52 = (v55 | (v53 << (8 * v29))) + 10;
            }

            else
            {
              v52 = v55 + 10;
            }

            break;
          default:
            goto LABEL_95;
        }
      }

      break;
    case 2u:
      v48 = a1[v34];
      v49 = v48 - 2;
      if (v48 >= 2)
      {
        if (v34 <= 3)
        {
          v50 = v34;
        }

        else
        {
          v50 = 4;
        }

        switch(v50)
        {
          case 1:
            v51 = *a1;
            goto LABEL_74;
          case 2:
            v51 = *a1;
            goto LABEL_74;
          case 3:
            v51 = *a1 | (a1[2] << 16);
            goto LABEL_74;
          case 4:
            v51 = *a1;
LABEL_74:
            if (v34 < 4)
            {
              v48 = (v51 | (v49 << (8 * v34))) + 2;
            }

            else
            {
              v48 = v51 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v48 == 1)
      {
        goto LABEL_83;
      }

      if (!v48)
      {
        v95 = *(AssociatedTypeWitness - 8);
        if (!__swift_getEnumTagSinglePayload(a1, 1, AssociatedTypeWitness))
        {
          v56 = *(v95 + 8);

          v56(a1, v32);
        }
      }

      return;
    case 3u:
LABEL_83:
      v57 = *a1;

      return;
    default:
      return;
  }

LABEL_95:
  switch(v52)
  {
    case 0u:
LABEL_96:
      v59 = v75;
      v58 = v76;
      goto LABEL_99;
    case 1u:
LABEL_105:
      (*(v75 + 8))(v43, v76);

      goto LABEL_127;
    case 2u:
LABEL_100:

      goto LABEL_109;
    case 3u:
LABEL_101:
      swift_unknownObjectRelease();
      goto LABEL_127;
    case 4u:
LABEL_97:
      v59 = v73;
      v58 = v74;
      goto LABEL_99;
    case 5u:
LABEL_106:
      v60 = *v43;
      goto LABEL_126;
    case 6u:
LABEL_107:
      (*(v94 + 8))(v43, v78);
      if (!__swift_getEnumTagSinglePayload(&v43[v89] & v92, 1, v77))
      {
        (*(v68 + 8))(&v43[v89] & v92, v77);
      }

      goto LABEL_109;
    case 7u:
LABEL_102:
      (*(v94 + 8))(v43, v78);
      if (!__swift_getEnumTagSinglePayload(&v43[v89] & v92, 1, v77))
      {
        (*(v68 + 8))(&v43[v89] & v92, v77);
      }

LABEL_109:

      goto LABEL_127;
    case 8u:
LABEL_110:
      (*(v71 + 8))(v43, v72);

      v61 = (v20 + (&v43[v19 + 7] & 0xFFFFFFFFFFFFFFF8)) & ~v21;
      if (v23 == v26)
      {
        if (__swift_getEnumTagSinglePayload(v61, v23, v78))
        {
          goto LABEL_125;
        }

        v62 = v29 + 1;
        v63 = (v89 + v61) & v92;
        goto LABEL_121;
      }

      v63 = (v89 + v61) & v92;
      if (v67 == v26)
      {
        v62 = v29 + 1;
        v64 = v77;
        if (v83 < 2)
        {
LABEL_122:
          (*(v94 + 8))(v61, v78);
          if (!__swift_getEnumTagSinglePayload(v63, 1, v64))
          {
            (*(v68 + 8))(v63, v64);
          }

          v42 = v62;
          goto LABEL_125;
        }

        v42 = v29 + 1;
        if (__swift_getEnumTagSinglePayload((v89 + v61) & v92, v83, v77) >= 2)
        {
          goto LABEL_125;
        }

LABEL_121:
        v64 = v77;
        goto LABEL_122;
      }

      v65 = *(((v85 + v63) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v65 >= 0xFFFFFFFF)
      {
        LODWORD(v65) = -1;
      }

      if ((v65 + 1) < 2)
      {
        v62 = v29 + 1;
        goto LABEL_121;
      }

LABEL_125:
      v60 = *((v17 + v61 + 7) & 0xFFFFFFFFFFFFFFF8);
LABEL_126:

LABEL_127:

      v66 = (((&v43[v42 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v66[3] >= 0xFFFFFFFFuLL)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v66);
      }

      return;
    case 9u:
LABEL_98:
      v59 = v69;
      v58 = v70;
LABEL_99:
      (*(v59 + 8))(v43, v58);
      goto LABEL_127;
    default:
      goto LABEL_127;
  }
}

_BYTE *sub_1DCDBDCA0(_BYTE *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = sub_1DD0DB04C();
  v192 = *(v3 - 8);
  v193 = v3;
  v204 = *(v192 + 64);
  v189 = sub_1DD0DC76C();
  v200 = *(v189 - 8);
  v188 = v200;
  v4 = *(v200 + 80);
  v185 = sub_1DD0DB1EC();
  v202 = *(v185 - 8);
  v184 = v202;
  __na = *(v202 + 80) | v4;
  v191 = sub_1DD0DB4BC();
  v198 = *(v191 - 8);
  v209 = v198;
  v5 = *(v198 + 80) & 0xF8;
  v190 = sub_1DD0DB3EC();
  v6 = *(v190 - 8);
  v7 = *(v6 + 80);
  v8 = v5 | v7 | 7;
  v183 = sub_1DD0DD12C();
  v196 = *(v183 - 8);
  v182 = v196;
  v9 = *(v196 + 80);
  v181 = sub_1DD0DD08C();
  v10 = v200;
  v180 = *(v181 - 8);
  v11 = (__na | (v9 | *(v180 + 80))) & 0xF8 | v8;
  v201 = v204 + v11;
  v12 = (v204 + v11) & ~v11;
  v13 = *(v10 + 64);
  v179 = v13 + 7;
  if (((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v13)
  {
    v13 = ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v13 <= *(v202 + 64))
  {
    v13 = *(v202 + 64);
  }

  v203 = *(v198 + 64) + v7;
  v205 = v7;
  v175 = v6;
  v14 = *(v6 + 84);
  v15 = *(v6 + 64);
  if (v14)
  {
    v16 = *(v6 + 64);
  }

  else
  {
    v16 = v15 + 1;
  }

  __n = v16;
  v199 = v16 + 7;
  v186 = v203 & ~v7;
  v17 = (v16 + 7 + v186) & 0xFFFFFFFFFFFFFFF8;
  v187 = (v17 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v13 <= v187)
  {
    v13 = (v17 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v18 = v17 + 31;
  if (v13 <= (((((v18 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v13 = (((((v18 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v176 = *(v196 + 64);
  v177 = v8 + 16;
  v19 = v5 | v7 | 7;
  v174 = v14;
  v20 = v14 != 0;
  v21 = v14 - 1;
  if (!v20)
  {
    v21 = 0;
  }

  v197 = *(v209 + 84);
  v173 = v21;
  if (v21 <= v197)
  {
    v21 = *(v209 + 84);
  }

  if (v21 <= 0x7FFFFFFE)
  {
    v21 = 2147483646;
  }

  v178 = v21;
  v22 = ((v18 + ((v8 + 16 + ((v176 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v13 <= v22)
  {
    v13 = v22;
  }

  v23 = *(*(v181 - 8) + 64);
  if (v13 > v23)
  {
    v23 = v13;
  }

  if (v23 <= 0x18)
  {
    v23 = 24;
  }

  v24 = v23;
  v25 = ((((v23 + v12 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = *(AssociatedTypeWitness - 8);
  if (*(v27 + 84))
  {
    v28 = *(v27 + 64);
  }

  else
  {
    v28 = *(v27 + 64) + 1;
  }

  if (v28 <= 9)
  {
    v29 = 9;
  }

  else
  {
    v29 = v28;
  }

  if (v29 + 1 > v25)
  {
    v30 = v29 + 1;
  }

  else
  {
    v30 = v25;
  }

  if (v30 <= 9)
  {
    v31 = 9;
  }

  else
  {
    v31 = v30;
  }

  v32 = a2[v31];
  v33 = v32 - 4;
  if (v32 >= 4)
  {
    if (v31 <= 3)
    {
      v34 = v31;
    }

    else
    {
      v34 = 4;
    }

    switch(v34)
    {
      case 1:
        v35 = *a2;
        goto LABEL_45;
      case 2:
        v35 = *a2;
        goto LABEL_45;
      case 3:
        v35 = *a2 | (a2[2] << 16);
        goto LABEL_45;
      case 4:
        v35 = *a2;
LABEL_45:
        if (v31 < 4)
        {
          v35 |= v33 << (8 * v31);
        }

        v32 = v35 + 4;
        break;
      default:
        break;
    }
  }

  v207 = v15;
  v36 = ~v11;
  v37 = ~v205;
  v38 = ~v19;
  switch(v32)
  {
    case 0u:
      v39 = v24 + 1;
      v40 = v31;
      v41 = a1;
      (*(v192 + 16))(a1, a2, v193);
      v42 = (&a1[v201] & v36);
      v43 = (&a2[v201] & v36);
      v44 = v43[v24];
      v45 = v44 - 10;
      v46 = v24;
      if (v44 >= 0xA)
      {
        if (v24 <= 3)
        {
          v47 = v24;
        }

        else
        {
          v47 = 4;
        }

        switch(v47)
        {
          case 1:
            v48 = *v43;
            goto LABEL_92;
          case 2:
            v48 = *v43;
            goto LABEL_92;
          case 3:
            v48 = *v43 | (v43[2] << 16);
            goto LABEL_92;
          case 4:
            v48 = *v43;
LABEL_92:
            if (v24 < 4)
            {
              v44 = (v48 | (v45 << (8 * v24))) + 10;
            }

            else
            {
              v44 = v48 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v44)
      {
        case 0u:
          (*(v188 + 16))(v42, v43, v189);
          *(v42 + v24) = 0;
          goto LABEL_167;
        case 1u:
          (*(v188 + 16))(v42, v43, v189);
          *((v42 + v179) & 0xFFFFFFFFFFFFFFF8) = *(&v43[v179] & 0xFFFFFFFFFFFFFFF8);
          *(v42 + v24) = 1;
          sub_1DD0DCF8C();
        case 2u:
          *v42 = *v43;
          v42[1] = *(v43 + 1);
          v42[2] = *(v43 + 2);
          *(v42 + v24) = 2;

          goto LABEL_147;
        case 3u:
          *v42 = *v43;
          *(v42 + v24) = 3;
          swift_unknownObjectRetain();
          goto LABEL_167;
        case 4u:
          (*(v184 + 16))(v42, v43, v185);
          v69 = 4;
          goto LABEL_106;
        case 5u:
          v75 = *v43;
          *v42 = *v43;
          *(v42 + v24) = 5;
          v76 = v75;
          goto LABEL_167;
        case 6u:
          (*(v209 + 16))(v42, v43, v191);
          v79 = ((v42 + v203) & v37);
          v80 = (&v43[v203] & v37);
          if (__swift_getEnumTagSinglePayload(v80, 1, v190))
          {
            memcpy(v79, v80, __n);
          }

          else
          {
            (*(v175 + 16))(v79, v80, v190);
            __swift_storeEnumTagSinglePayload(v79, 0, 1, v190);
          }

          v125 = ((v79 + v199) & 0xFFFFFFFFFFFFFFF8);
          v126 = ((v80 + v199) & 0xFFFFFFFFFFFFFFF8);
          *v125 = *v126;
          v125[1] = v126[1];
          v127 = (v125 + 19) & 0xFFFFFFFFFFFFFFF8;
          v128 = (v126 + 19) & 0xFFFFFFFFFFFFFFF8;
          v129 = *v128;
          *(v127 + 4) = *(v128 + 4);
          *v127 = v129;
          *(v42 + v24) = 6;
          goto LABEL_147;
        case 7u:
          (*(v209 + 16))(v42, v43, v191);
          v71 = ((v42 + v203) & v37);
          v72 = (&v43[v203] & v37);
          if (__swift_getEnumTagSinglePayload(v72, 1, v190))
          {
            memcpy(v71, v72, __n);
          }

          else
          {
            (*(v175 + 16))(v71, v72, v190);
            __swift_storeEnumTagSinglePayload(v71, 0, 1, v190);
          }

          v103 = ((v71 + v199) & 0xFFFFFFFFFFFFFFF8);
          v104 = ((v72 + v199) & 0xFFFFFFFFFFFFFFF8);
          *v103 = *v104;
          v103[1] = v104[1];
          v105 = (v103 + 19) & 0xFFFFFFFFFFFFFFF8;
          v106 = (v104 + 19) & 0xFFFFFFFFFFFFFFF8;
          v107 = *v106;
          *(v105 + 4) = *(v106 + 4);
          *v105 = v107;
          v108 = ((v42 + v187 + 7) & 0xFFFFFFFFFFFFFFF8);
          v109 = (&v43[v187 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v108 = *v109;
          v108[1] = v109[1];
          v110 = ((v108 + 23) & 0xFFFFFFFFFFFFFFF8);
          v111 = ((v109 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v110 = *v111;
          v110[1] = v111[1];
          v112 = ((v110 + 23) & 0xFFFFFFFFFFFFFFF8);
          v113 = ((v111 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v112 = *v113;
          v112[1] = v113[1];
          *(v42 + v24) = 7;

LABEL_147:

          goto LABEL_167;
        case 8u:
          (*(v182 + 16))(v42, v43, v183);
          v83 = ((v42 + v176 + 7) & 0xFFFFFFFFFFFFFFF8);
          v84 = (&v43[v176 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v83 = *v84;
          v83[1] = v84[1];
          v85 = ((v83 + v177) & v38);
          v86 = ((v84 + v177) & v38);

          if (v197 != v178)
          {
            v87 = v203;
            v90 = ((v86 + v203) & v37);
            if (v173 == v178)
            {
              if (v174 >= 2 && __swift_getEnumTagSinglePayload(v90, v174, v190) >= 2)
              {
                goto LABEL_136;
              }
            }

            else
            {
              v135 = *(((v90 + v199) & 0xFFFFFFFFFFFFFFF8) + 8);
              if (v135 >= 0xFFFFFFFF)
              {
                LODWORD(v135) = -1;
              }

              if ((v135 + 1) >= 2)
              {
                goto LABEL_136;
              }
            }

            v88 = v42;
            v91 = v209;
            v89 = ~v205;
            goto LABEL_155;
          }

          v87 = v203;
          if (__swift_getEnumTagSinglePayload(v86, v197, v191))
          {
LABEL_136:
            v88 = v42;
            memcpy(v85, v86, v187);
            v101 = v186;
LABEL_165:
            v144 = __n;
            goto LABEL_166;
          }

          v88 = v42;
          v89 = ~v205;
          v90 = ((v86 + v203) & v37);
          v91 = v209;
LABEL_155:
          (*(v91 + 16))(v85, v86, v191);
          v136 = ((v85 + v87) & v89);
          if (__swift_getEnumTagSinglePayload(v90, 1, v190))
          {
            memcpy(v136, v90, __n);
          }

          else
          {
            (*(v175 + 16))(v136, v90, v190);
            __swift_storeEnumTagSinglePayload(v136, 0, 1, v190);
          }

          v101 = v186;
          v139 = ((v136 + v199) & 0xFFFFFFFFFFFFFFF8);
          v140 = ((v90 + v199) & 0xFFFFFFFFFFFFFFF8);
          *v139 = *v140;
          v139[1] = v140[1];
          v141 = (v139 + 19) & 0xFFFFFFFFFFFFFFF8;
          v142 = (v140 + 19) & 0xFFFFFFFFFFFFFFF8;
          v143 = *v142;
          *(v141 + 4) = *(v142 + 4);
          *v141 = v143;

          v144 = v207;
          if (!v174)
          {
            goto LABEL_165;
          }

LABEL_166:
          v145 = (((v101 + v144 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
          v146 = ((v85 + v145 + 7) & 0xFFFFFFFFFFFFFFF8);
          v147 = *((v86 + v145 + 7) & 0xFFFFFFFFFFFFFFF8);
          *v146 = v147;
          v42 = v88;
          *(v88 + v46) = 8;
          v148 = v147;
          v41 = a1;
LABEL_167:
          v149 = (&v43[v39 + 7] & 0xFFFFFFFFFFFFFFF8);
          v150 = ((v42 + v39 + 7) & 0xFFFFFFFFFFFFFFF8);
          *v150 = *v149;
          v151 = (v150 + 15) & 0xFFFFFFFFFFFFFFF8;
          v152 = (v149 + 15) & 0xFFFFFFFFFFFFFFF8;
          v153 = *(v152 + 24);

          if (v153 < 0xFFFFFFFF)
          {
            v154 = *v152;
            v155 = *(v152 + 16);
            *(v151 + 32) = *(v152 + 32);
            *v151 = v154;
            *(v151 + 16) = v155;
          }

          else
          {
            *(v151 + 24) = v153;
            *(v151 + 32) = *(v152 + 32);
            (**(v153 - 8))(v151, v152, v153);
          }

          *(v151 + 40) = *(v152 + 40);
          v41[v40] = 0;
          return v41;
        case 9u:
          (*(v180 + 16))(v42, v43, v181);
          v69 = 9;
LABEL_106:
          *(v42 + v24) = v69;
          goto LABEL_167;
        default:
          memcpy(v42, v43, v39);
          goto LABEL_167;
      }

    case 1u:
      v56 = v24 + 1;
      v57 = v31;
      v41 = a1;
      (*(v192 + 16))(a1, a2, v193);
      v58 = (&a1[v201] & v36);
      v59 = (&a2[v201] & v36);
      v60 = v59[v24];
      v61 = v60 - 10;
      v62 = v24;
      if (v60 >= 0xA)
      {
        if (v24 <= 3)
        {
          v63 = v24;
        }

        else
        {
          v63 = 4;
        }

        switch(v63)
        {
          case 1:
            v64 = *v59;
            goto LABEL_98;
          case 2:
            v64 = *v59;
            goto LABEL_98;
          case 3:
            v64 = *v59 | (v59[2] << 16);
            goto LABEL_98;
          case 4:
            v64 = *v59;
LABEL_98:
            if (v24 < 4)
            {
              v60 = (v64 | (v61 << (8 * v24))) + 10;
            }

            else
            {
              v60 = v64 + 10;
            }

            break;
          default:
            goto LABEL_101;
        }
      }

      break;
    case 2u:
      v49 = a2[v29];
      v50 = v49 - 2;
      if (v49 >= 2)
      {
        if (v29 <= 3)
        {
          v51 = v29;
        }

        else
        {
          v51 = 4;
        }

        switch(v51)
        {
          case 1:
            v52 = *a2;
            goto LABEL_76;
          case 2:
            v52 = *a2;
            goto LABEL_76;
          case 3:
            v52 = *a2 | (a2[2] << 16);
            goto LABEL_76;
          case 4:
            v52 = *a2;
LABEL_76:
            if (v29 < 4)
            {
              v49 = (v52 | (v50 << (8 * v29))) + 2;
            }

            else
            {
              v49 = v52 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v49 == 1)
      {
        v67 = *a2;
        v68 = *a2;
        v41 = a1;
        *a1 = v67;
        a1[8] = a2[8];
        a1[v29] = 1;
      }

      else if (v49)
      {
        v41 = a1;
        memcpy(a1, a2, v29 + 1);
      }

      else
      {
        v66 = AssociatedTypeWitness;
        if (__swift_getEnumTagSinglePayload(a2, 1, AssociatedTypeWitness))
        {
          v41 = a1;
          memcpy(a1, a2, v28);
        }

        else
        {
          (*(v27 + 16))(a1, a2, v66);
          v41 = a1;
          __swift_storeEnumTagSinglePayload(a1, 0, 1, v66);
        }

        v41[v29] = 0;
      }

      v55 = 2;
      goto LABEL_88;
    case 3u:
      v53 = *a2;
      v54 = *a2;
      v41 = a1;
      *a1 = v53;
      a1[8] = a2[8];
      v55 = 3;
LABEL_88:
      v41[v31] = v55;
      return v41;
    default:

      return memcpy(a1, a2, v31 + 1);
  }

LABEL_101:
  switch(v60)
  {
    case 0u:
      (*(v188 + 16))(v58, v59, v189);
      *(v58 + v24) = 0;
      goto LABEL_175;
    case 1u:
      (*(v188 + 16))(v58, v59, v189);
      *((v58 + v179) & 0xFFFFFFFFFFFFFFF8) = *(&v59[v179] & 0xFFFFFFFFFFFFFFF8);
      *(v58 + v24) = 1;
      sub_1DD0DCF8C();
    case 2u:
      *v58 = *v59;
      v58[1] = *(v59 + 1);
      v58[2] = *(v59 + 2);
      *(v58 + v24) = 2;

      goto LABEL_150;
    case 3u:
      *v58 = *v59;
      *(v58 + v24) = 3;
      swift_unknownObjectRetain();
      goto LABEL_175;
    case 4u:
      (*(v184 + 16))(v58, v59, v185);
      v70 = 4;
      goto LABEL_108;
    case 5u:
      v77 = *v59;
      *v58 = *v59;
      *(v58 + v24) = 5;
      v78 = v77;
      goto LABEL_175;
    case 6u:
      (*(v209 + 16))(v58, v59, v191);
      v81 = ((v58 + v203) & v37);
      v82 = (&v59[v203] & v37);
      if (__swift_getEnumTagSinglePayload(v82, 1, v190))
      {
        memcpy(v81, v82, __n);
      }

      else
      {
        (*(v175 + 16))(v81, v82, v190);
        __swift_storeEnumTagSinglePayload(v81, 0, 1, v190);
      }

      v130 = ((v81 + v199) & 0xFFFFFFFFFFFFFFF8);
      v131 = ((v82 + v199) & 0xFFFFFFFFFFFFFFF8);
      *v130 = *v131;
      v130[1] = v131[1];
      v132 = (v130 + 19) & 0xFFFFFFFFFFFFFFF8;
      v133 = (v131 + 19) & 0xFFFFFFFFFFFFFFF8;
      v134 = *v133;
      *(v132 + 4) = *(v133 + 4);
      *v132 = v134;
      *(v58 + v24) = 6;
      goto LABEL_150;
    case 7u:
      (*(v209 + 16))(v58, v59, v191);
      v73 = ((v58 + v203) & v37);
      v74 = (&v59[v203] & v37);
      if (__swift_getEnumTagSinglePayload(v74, 1, v190))
      {
        memcpy(v73, v74, __n);
      }

      else
      {
        (*(v175 + 16))(v73, v74, v190);
        __swift_storeEnumTagSinglePayload(v73, 0, 1, v190);
      }

      v114 = ((v73 + v199) & 0xFFFFFFFFFFFFFFF8);
      v115 = ((v74 + v199) & 0xFFFFFFFFFFFFFFF8);
      *v114 = *v115;
      v114[1] = v115[1];
      v116 = (v114 + 19) & 0xFFFFFFFFFFFFFFF8;
      v117 = (v115 + 19) & 0xFFFFFFFFFFFFFFF8;
      v118 = *v117;
      *(v116 + 4) = *(v117 + 4);
      *v116 = v118;
      v119 = ((v58 + v187 + 7) & 0xFFFFFFFFFFFFFFF8);
      v120 = (&v59[v187 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v119 = *v120;
      v119[1] = v120[1];
      v121 = ((v119 + 23) & 0xFFFFFFFFFFFFFFF8);
      v122 = ((v120 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v121 = *v122;
      v121[1] = v122[1];
      v123 = ((v121 + 23) & 0xFFFFFFFFFFFFFFF8);
      v124 = ((v122 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v123 = *v124;
      v123[1] = v124[1];
      *(v58 + v24) = 7;

LABEL_150:

      goto LABEL_175;
    case 8u:
      (*(v182 + 16))(v58, v59, v183);
      v92 = ((v58 + v176 + 7) & 0xFFFFFFFFFFFFFFF8);
      v93 = (&v59[v176 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v92 = *v93;
      v92[1] = v93[1];
      v94 = ((v92 + v177) & v38);
      v95 = ((v93 + v177) & v38);

      if (v197 == v178)
      {
        v96 = v203;
        if (!__swift_getEnumTagSinglePayload(v95, v197, v191))
        {
          v97 = v58;
          v98 = ~v205;
          v99 = ((v95 + v203) & v37);
          v100 = v209;
          goto LABEL_161;
        }

LABEL_140:
        v97 = v58;
        memcpy(v94, v95, v187);
        v102 = v186;
        goto LABEL_173;
      }

      v96 = v203;
      v99 = ((v95 + v203) & v37);
      if (v173 == v178)
      {
        if (v174 >= 2 && __swift_getEnumTagSinglePayload(v99, v174, v190) >= 2)
        {
          goto LABEL_140;
        }
      }

      else
      {
        v137 = *(((v99 + v199) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v137 >= 0xFFFFFFFF)
        {
          LODWORD(v137) = -1;
        }

        if ((v137 + 1) >= 2)
        {
          goto LABEL_140;
        }
      }

      v97 = v58;
      v100 = v209;
      v98 = ~v205;
LABEL_161:
      (*(v100 + 16))(v94, v95, v191);
      v138 = ((v94 + v96) & v98);
      if (__swift_getEnumTagSinglePayload(v99, 1, v190))
      {
        memcpy(v138, v99, __n);
      }

      else
      {
        (*(v175 + 16))(v138, v99, v190);
        __swift_storeEnumTagSinglePayload(v138, 0, 1, v190);
      }

      v102 = v186;
      v156 = ((v138 + v199) & 0xFFFFFFFFFFFFFFF8);
      v157 = ((v99 + v199) & 0xFFFFFFFFFFFFFFF8);
      *v156 = *v157;
      v156[1] = v157[1];
      v158 = (v156 + 19) & 0xFFFFFFFFFFFFFFF8;
      v159 = (v157 + 19) & 0xFFFFFFFFFFFFFFF8;
      v160 = *v159;
      *(v158 + 4) = *(v159 + 4);
      *v158 = v160;

      v161 = v207;
      if (v174)
      {
LABEL_174:
        v162 = (((v102 + v161 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
        v163 = ((v94 + v162 + 7) & 0xFFFFFFFFFFFFFFF8);
        v164 = *((v95 + v162 + 7) & 0xFFFFFFFFFFFFFFF8);
        *v163 = v164;
        v58 = v97;
        *(v97 + v62) = 8;
        v165 = v164;
        v41 = a1;
LABEL_175:
        v166 = (&v59[v56 + 7] & 0xFFFFFFFFFFFFFFF8);
        v167 = ((v58 + v56 + 7) & 0xFFFFFFFFFFFFFFF8);
        *v167 = *v166;
        v168 = (v167 + 15) & 0xFFFFFFFFFFFFFFF8;
        v169 = (v166 + 15) & 0xFFFFFFFFFFFFFFF8;
        v170 = *(v169 + 24);

        if (v170 < 0xFFFFFFFF)
        {
          v171 = *v169;
          v172 = *(v169 + 16);
          *(v168 + 32) = *(v169 + 32);
          *v168 = v171;
          *(v168 + 16) = v172;
        }

        else
        {
          *(v168 + 24) = v170;
          *(v168 + 32) = *(v169 + 32);
          (**(v170 - 8))(v168, v169, v170);
        }

        *(v168 + 40) = *(v169 + 40);
        v41[v57] = 1;
        return v41;
      }

LABEL_173:
      v161 = __n;
      goto LABEL_174;
    case 9u:
      (*(v180 + 16))(v58, v59, v181);
      v70 = 9;
LABEL_108:
      *(v58 + v24) = v70;
      goto LABEL_175;
    default:
      memcpy(v58, v59, v56);
      goto LABEL_175;
  }
}

unsigned __int8 *sub_1DCDBF238(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v4 = sub_1DD0DB04C();
  v214 = *(v4 - 8);
  v215 = v4;
  v225 = *(v214 + 64);
  v211 = sub_1DD0DC76C();
  v221 = *(v211 - 8);
  v210 = v221;
  v5 = *(v221 + 80);
  v205 = sub_1DD0DB1EC();
  v223 = *(v205 - 8);
  v204 = v223;
  v216 = *(v223 + 80) | v5;
  v212 = sub_1DD0DB4BC();
  v220 = *(v212 - 8);
  v6 = *(v220 + 80) & 0xF8;
  v213 = sub_1DD0DB3EC();
  v7 = *(v213 - 8);
  v8 = v7;
  v9 = *(v7 + 80);
  v10 = v6 | v9 | 7;
  v203 = sub_1DD0DD12C();
  v218 = *(v203 - 8);
  v202 = v218;
  v11 = *(v218 + 80);
  v201 = sub_1DD0DD08C();
  v199 = *(v201 - 8);
  v12 = (v216 | (v11 | *(v199 + 80))) & 0xF8 | v10;
  v226 = v225 + v12;
  v13 = *(v221 + 64);
  v198 = v13 + 7;
  if (((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v13)
  {
    v13 = ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v13 <= *(v223 + 64))
  {
    v13 = *(v223 + 64);
  }

  v222 = *(v220 + 64) + v9;
  v14 = v9;
  v193 = v7;
  v15 = *(v7 + 84);
  v16 = *(v7 + 64);
  v192 = v16;
  if (!v15)
  {
    ++v16;
  }

  v209 = v16;
  v217 = v16 + 7;
  v206 = v222 & ~v9;
  v17 = (v16 + 7 + v206) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v13 <= v18)
  {
    v13 = (v17 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v19 = v17 + 31;
  if (v13 <= (((((v19 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v13 = (((((v19 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v195 = *(v218 + 64);
  v196 = v10 + 16;
  v20 = v6 | v9 | 7;
  v207 = *(v8 + 84);
  v21 = v15 != 0;
  v22 = v15 - 1;
  if (!v21)
  {
    v22 = 0;
  }

  v200 = *(v220 + 84);
  v190 = v22;
  if (v22 <= v200)
  {
    v22 = *(v220 + 84);
  }

  if (v22 <= 0x7FFFFFFE)
  {
    v22 = 2147483646;
  }

  v197 = v22;
  v23 = ((v19 + ((v10 + 16 + ((v195 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v13 <= v23)
  {
    v13 = v23;
  }

  v24 = *(*(v201 - 8) + 64);
  if (v13 > v24)
  {
    v24 = v13;
  }

  if (v24 <= 0x18)
  {
    v25 = 24;
  }

  else
  {
    v25 = v24;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = *(AssociatedTypeWitness - 8);
  v191 = v27;
  if (*(v27 + 84))
  {
    v28 = *(v27 + 64);
  }

  else
  {
    v28 = *(v27 + 64) + 1;
  }

  if (v28 <= 9)
  {
    v29 = 9;
  }

  else
  {
    v29 = v28;
  }

  if (v29 + 1 > ((((v25 + (v226 & ~v12) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41)
  {
    v30 = v29 + 1;
  }

  else
  {
    v30 = ((((v25 + (v226 & ~v12) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  }

  if (v30 <= 9)
  {
    v31 = 9;
  }

  else
  {
    v31 = v30;
  }

  v32 = a1[v31];
  v33 = v32 - 4;
  if (v32 >= 4)
  {
    if (v31 <= 3)
    {
      v34 = v31;
    }

    else
    {
      v34 = 4;
    }

    switch(v34)
    {
      case 1:
        v35 = *a1;
        goto LABEL_46;
      case 2:
        v35 = *a1;
        goto LABEL_46;
      case 3:
        v35 = *a1 | (a1[2] << 16);
        goto LABEL_46;
      case 4:
        v35 = *a1;
LABEL_46:
        if (v31 < 4)
        {
          v35 |= v33 << (8 * v31);
        }

        v32 = v35 + 4;
        break;
      default:
        break;
    }
  }

  v219 = AssociatedTypeWitness;
  v227 = v25 + 1;
  v224 = ~v12;
  v36 = ~v14;
  v194 = ~v20;
  v208 = 8 * v29;
  v37 = a2;
  switch(v32)
  {
    case 0u:
      (*(v214 + 8))(a1, v215);
      v38 = v25;
      v39 = (&a1[v226] & v224);
      v40 = v39[v38];
      v41 = v40 - 10;
      if (v40 < 0xA)
      {
        v43 = v38;
      }

      else
      {
        if (v38 <= 3)
        {
          v42 = v38;
        }

        else
        {
          v42 = 4;
        }

        v43 = v38;
        switch(v42)
        {
          case 1:
            v44 = *v39;
            goto LABEL_86;
          case 2:
            v44 = *v39;
            goto LABEL_86;
          case 3:
            v44 = *v39 | (*((&a1[v226] & v224) + 2) << 16);
            goto LABEL_86;
          case 4:
            v44 = *v39;
LABEL_86:
            if (v38 < 4)
            {
              v40 = (v44 | (v41 << (8 * v38))) + 10;
            }

            else
            {
              v40 = v44 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v40)
      {
        case 0u:
          goto LABEL_95;
        case 1u:
          goto LABEL_104;
        case 2u:
          goto LABEL_99;
        case 3u:
          goto LABEL_100;
        case 4u:
          goto LABEL_96;
        case 5u:
          goto LABEL_105;
        case 6u:
          goto LABEL_106;
        case 7u:
          goto LABEL_101;
        case 8u:
          goto LABEL_109;
        case 9u:
          goto LABEL_98;
        default:
          goto LABEL_124;
      }

      goto LABEL_124;
    case 1u:
      (*(v214 + 8))(a1, v215);
      v49 = v25;
      v39 = (&a1[v226] & v224);
      v50 = v39[v49];
      v51 = v50 - 10;
      if (v50 < 0xA)
      {
        v43 = v49;
      }

      else
      {
        if (v49 <= 3)
        {
          v52 = v49;
        }

        else
        {
          v52 = 4;
        }

        v43 = v49;
        switch(v52)
        {
          case 1:
            v53 = *v39;
            goto LABEL_91;
          case 2:
            v53 = *v39;
            goto LABEL_91;
          case 3:
            v53 = *v39 | (*((&a1[v226] & v224) + 2) << 16);
            goto LABEL_91;
          case 4:
            v53 = *v39;
LABEL_91:
            if (v49 < 4)
            {
              v50 = (v53 | (v51 << (8 * v49))) + 10;
            }

            else
            {
              v50 = v53 + 10;
            }

            break;
          default:
            goto LABEL_94;
        }
      }

      break;
    case 2u:
      v45 = a1[v29];
      v46 = v45 - 2;
      if (v45 >= 2)
      {
        if (v29 <= 3)
        {
          v47 = v29;
        }

        else
        {
          v47 = 4;
        }

        switch(v47)
        {
          case 1:
            v48 = *a1;
            goto LABEL_77;
          case 2:
            v48 = *a1;
            goto LABEL_77;
          case 3:
            v48 = *a1 | (a1[2] << 16);
            goto LABEL_77;
          case 4:
            v48 = *a1;
LABEL_77:
            if (v29 < 4)
            {
              v45 = (v48 | (v46 << v208)) + 2;
            }

            else
            {
              v45 = v48 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v45 == 1)
      {
        goto LABEL_84;
      }

      if (!v45 && !__swift_getEnumTagSinglePayload(a1, 1, AssociatedTypeWitness))
      {
        (*(v191 + 8))(a1, v219);
      }

      goto LABEL_126;
    case 3u:
LABEL_84:

      goto LABEL_126;
    default:
      goto LABEL_126;
  }

LABEL_94:
  switch(v50)
  {
    case 0u:
LABEL_95:
      v55 = v210;
      v54 = v211;
      goto LABEL_97;
    case 1u:
LABEL_104:
      (*(v210 + 8))(v39, v211);

      goto LABEL_124;
    case 2u:
LABEL_99:

      goto LABEL_108;
    case 3u:
LABEL_100:
      swift_unknownObjectRelease();
      goto LABEL_124;
    case 4u:
LABEL_96:
      v55 = v204;
      v54 = v205;
LABEL_97:
      (*(v55 + 8))(v39, v54);
      goto LABEL_124;
    case 5u:
LABEL_105:
      v57 = *v39;
      goto LABEL_123;
    case 6u:
LABEL_106:
      (*(v220 + 8))(v39, v212);
      if (!__swift_getEnumTagSinglePayload(&v39[v222] & v36, 1, v213))
      {
        (*(v193 + 8))(&v39[v222] & v36, v213);
      }

LABEL_108:

      goto LABEL_124;
    case 7u:
LABEL_101:
      (*(v220 + 8))(v39, v212);
      v56 = &v39[v222] & v36;
      if (!__swift_getEnumTagSinglePayload(v56, 1, v213))
      {
        (*(v193 + 8))(v56, v213);
      }

      v36 = ~v14;
      goto LABEL_124;
    case 8u:
LABEL_109:
      v189 = ~v14;
      (*(v202 + 8))(v39, v203);
      v58 = &v39[v195 + 7] & 0xFFFFFFFFFFFFFFF8;

      v59 = (v196 + v58) & v194;
      if (v200 == v197)
      {
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v196 + v58) & v194, v200, v212);
        v36 = v189;
        if (EnumTagSinglePayload)
        {
          goto LABEL_122;
        }

        v61 = (v222 + v59) & v189;
        goto LABEL_119;
      }

      v36 = v189;
      v61 = (v222 + v59) & v189;
      if (v190 == v197)
      {
        if (v207 >= 2 && __swift_getEnumTagSinglePayload((v222 + v59) & v189, v207, v213) >= 2)
        {
          goto LABEL_122;
        }

        goto LABEL_119;
      }

      v62 = *(((v217 + v61) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v62 >= 0xFFFFFFFF)
      {
        LODWORD(v62) = -1;
      }

      if ((v62 + 1) < 2)
      {
LABEL_119:
        (*(v220 + 8))(v59, v212);
        if (!__swift_getEnumTagSinglePayload(v61, 1, v213))
        {
          (*(v193 + 8))(v61, v213);
        }
      }

LABEL_122:
      v57 = *((v18 + v59 + 7) & 0xFFFFFFFFFFFFFFF8);
LABEL_123:

LABEL_124:
      v63 = &v39[v227 + 7];
      v64 = v36;
      v65 = (v63 & 0xFFFFFFFFFFFFFFF8) + 15;

      v66 = (v65 & 0xFFFFFFFFFFFFFFF8);
      v36 = v64;
      v25 = v43;
      v37 = a2;
      if (v66[3] >= 0xFFFFFFFFuLL)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v66);
      }

LABEL_126:
      v67 = v37[v31];
      v68 = v67 - 4;
      if (v67 >= 4)
      {
        if (v31 <= 3)
        {
          v69 = v31;
        }

        else
        {
          v69 = 4;
        }

        switch(v69)
        {
          case 1:
            v70 = *v37;
            goto LABEL_135;
          case 2:
            v70 = *v37;
            goto LABEL_135;
          case 3:
            v70 = *v37 | (v37[2] << 16);
            goto LABEL_135;
          case 4:
            v70 = *v37;
LABEL_135:
            if (v31 < 4)
            {
              v67 = (v70 | (v68 << (8 * v31))) + 4;
            }

            else
            {
              v67 = v70 + 4;
            }

            break;
          default:
            goto LABEL_138;
        }
      }

      break;
    case 9u:
LABEL_98:
      (*(v199 + 8))(v39, v201);
      goto LABEL_124;
    default:
      goto LABEL_124;
  }

LABEL_138:
  switch(v67)
  {
    case 0u:
      (*(v214 + 16))(a1, v37, v215);
      v71 = (&a1[v226] & v224);
      v72 = (&v37[v226] & v224);
      v73 = v72[v25];
      v74 = v73 - 10;
      if (v73 >= 0xA)
      {
        if (v25 <= 3)
        {
          v75 = v25;
        }

        else
        {
          v75 = 4;
        }

        switch(v75)
        {
          case 1:
            v76 = *v72;
            goto LABEL_181;
          case 2:
            v76 = *v72;
            goto LABEL_181;
          case 3:
            v76 = *v72 | (*((&v37[v226] & v224) + 2) << 16);
            goto LABEL_181;
          case 4:
            v76 = *v72;
LABEL_181:
            if (v25 < 4)
            {
              v73 = (v76 | (v74 << (8 * v25))) + 10;
            }

            else
            {
              v73 = v76 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v73)
      {
        case 0u:
          (*(v210 + 16))(&a1[v226] & v224, &v37[v226] & v224, v211);
          *(v71 + v25) = 0;
          goto LABEL_257;
        case 1u:
          (*(v210 + 16))(&a1[v226] & v224, &v37[v226] & v224, v211);
          *((v71 + v198) & 0xFFFFFFFFFFFFFFF8) = *(&v72[v198] & 0xFFFFFFFFFFFFFFF8);
          *(v71 + v25) = 1;
          sub_1DD0DCF8C();
        case 2u:
          *v71 = *v72;
          *((&a1[v226] & v224) + 8) = *((&v37[v226] & v224) + 8);
          *((&a1[v226] & v224) + 0x10) = *((&v37[v226] & v224) + 0x10);
          *(v71 + v25) = 2;

          goto LABEL_236;
        case 3u:
          *v71 = *v72;
          *(v71 + v25) = 3;
          swift_unknownObjectRetain();
          goto LABEL_257;
        case 4u:
          (*(v204 + 16))(&a1[v226] & v224, &v37[v226] & v224, v205);
          v93 = 4;
          goto LABEL_195;
        case 5u:
          v99 = *v72;
          *v71 = *v72;
          v100 = 5;
          goto LABEL_256;
        case 6u:
          (*(v220 + 16))(&a1[v226] & v224, &v37[v226] & v224, v212);
          v103 = ((v71 + v222) & v36);
          v104 = (&v72[v222] & v36);
          if (__swift_getEnumTagSinglePayload(v104, 1, v213))
          {
            memcpy(v103, v104, v209);
          }

          else
          {
            (*(v193 + 16))(v103, v104, v213);
            __swift_storeEnumTagSinglePayload(v103, 0, 1, v213);
          }

          v143 = ((v103 + v217) & 0xFFFFFFFFFFFFFFF8);
          v144 = ((v104 + v217) & 0xFFFFFFFFFFFFFFF8);
          *v143 = *v144;
          v143[1] = v144[1];
          v145 = (v143 + 19) & 0xFFFFFFFFFFFFFFF8;
          v146 = (v144 + 19) & 0xFFFFFFFFFFFFFFF8;
          v147 = *v146;
          *(v145 + 4) = *(v146 + 4);
          *v145 = v147;
          *(v71 + v25) = 6;
          goto LABEL_236;
        case 7u:
          (*(v220 + 16))(&a1[v226] & v224, &v37[v226] & v224, v212);
          v95 = ((v71 + v222) & v36);
          v96 = (&v72[v222] & v36);
          if (__swift_getEnumTagSinglePayload(v96, 1, v213))
          {
            memcpy(v95, v96, v209);
          }

          else
          {
            (*(v193 + 16))(v95, v96, v213);
            __swift_storeEnumTagSinglePayload(v95, 0, 1, v213);
          }

          v121 = ((v95 + v217) & 0xFFFFFFFFFFFFFFF8);
          v122 = ((v96 + v217) & 0xFFFFFFFFFFFFFFF8);
          *v121 = *v122;
          v121[1] = v122[1];
          v123 = (v121 + 19) & 0xFFFFFFFFFFFFFFF8;
          v124 = (v122 + 19) & 0xFFFFFFFFFFFFFFF8;
          v125 = *v124;
          *(v123 + 4) = *(v124 + 4);
          *v123 = v125;
          v126 = ((v71 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
          v127 = (&v72[v18 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v126 = *v127;
          v126[1] = v127[1];
          v128 = ((v126 + 23) & 0xFFFFFFFFFFFFFFF8);
          v129 = ((v127 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v128 = *v129;
          v128[1] = v129[1];
          v130 = ((v128 + 23) & 0xFFFFFFFFFFFFFFF8);
          v131 = ((v129 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v130 = *v131;
          v130[1] = v131[1];
          *(v71 + v25) = 7;

LABEL_236:

          goto LABEL_257;
        case 8u:
          (*(v202 + 16))(&a1[v226] & v224, &v37[v226] & v224, v203);
          v107 = ((v71 + v195 + 7) & 0xFFFFFFFFFFFFFFF8);
          v108 = (&v72[v195 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v107 = *v108;
          v107[1] = v108[1];
          v109 = ((v107 + v196) & v194);
          v110 = ((v108 + v196) & v194);

          if (v200 != v197)
          {
            v113 = ((v110 + v222) & v36);
            if (v190 == v197)
            {
              if (v207 >= 2 && __swift_getEnumTagSinglePayload((v110 + v222) & v36, v207, v213) >= 2)
              {
                goto LABEL_225;
              }
            }

            else
            {
              v153 = *(((v113 + v217) & 0xFFFFFFFFFFFFFFF8) + 8);
              if (v153 >= 0xFFFFFFFF)
              {
                LODWORD(v153) = -1;
              }

              if ((v153 + 1) >= 2)
              {
                goto LABEL_225;
              }
            }

            v111 = v36;
            v112 = v222;
            goto LABEL_244;
          }

          if (__swift_getEnumTagSinglePayload(v110, v200, v212))
          {
LABEL_225:
            memcpy(v109, v110, v18);
LABEL_254:
            v157 = v209;
            goto LABEL_255;
          }

          v111 = v36;
          v112 = v222;
          v113 = ((v110 + v222) & v111);
LABEL_244:
          (*(v220 + 16))(v109, v110, v212);
          v154 = ((v109 + v112) & v111);
          if (__swift_getEnumTagSinglePayload(v113, 1, v213))
          {
            memcpy(v154, v113, v209);
          }

          else
          {
            (*(v193 + 16))(v154, v113, v213);
            __swift_storeEnumTagSinglePayload(v154, 0, 1, v213);
          }

          v157 = v192;
          v158 = ((v154 + v217) & 0xFFFFFFFFFFFFFFF8);
          v159 = ((v113 + v217) & 0xFFFFFFFFFFFFFFF8);
          *v158 = *v159;
          v158[1] = v159[1];
          v160 = (v158 + 19) & 0xFFFFFFFFFFFFFFF8;
          v161 = (v159 + 19) & 0xFFFFFFFFFFFFFFF8;
          v162 = *v161;
          *(v160 + 4) = *(v161 + 4);
          *v160 = v162;

          if (!v207)
          {
            goto LABEL_254;
          }

LABEL_255:
          v163 = (((v206 + v157 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
          v164 = ((v109 + v163 + 7) & 0xFFFFFFFFFFFFFFF8);
          v99 = *((v110 + v163 + 7) & 0xFFFFFFFFFFFFFFF8);
          *v164 = v99;
          v100 = 8;
LABEL_256:
          *(v71 + v25) = v100;
          v165 = v99;
LABEL_257:
          v166 = (&v72[v227 + 7] & 0xFFFFFFFFFFFFFFF8);
          v167 = ((v71 + v227 + 7) & 0xFFFFFFFFFFFFFFF8);
          *v167 = *v166;
          v168 = (v167 + 15) & 0xFFFFFFFFFFFFFFF8;
          v169 = (v166 + 15) & 0xFFFFFFFFFFFFFFF8;
          v170 = *(v169 + 24);

          if (v170 < 0xFFFFFFFF)
          {
            v171 = *v169;
            v172 = *(v169 + 16);
            *(v168 + 32) = *(v169 + 32);
            *v168 = v171;
            *(v168 + 16) = v172;
          }

          else
          {
            *(v168 + 24) = v170;
            *(v168 + 32) = *(v169 + 32);
            (**(v170 - 8))(v168, v169, v170);
          }

          *(v168 + 40) = *(v169 + 40);
          a1[v31] = 0;
          return a1;
        case 9u:
          (*(v199 + 16))(&a1[v226] & v224, &v37[v226] & v224, v201);
          v93 = 9;
LABEL_195:
          *(v71 + v25) = v93;
          goto LABEL_257;
        default:
          memcpy((&a1[v226] & v224), (&v37[v226] & v224), v227);
          goto LABEL_257;
      }

    case 1u:
      (*(v214 + 16))(a1, v37, v215);
      v84 = (&a1[v226] & v224);
      v85 = (&v37[v226] & v224);
      v86 = v85[v25];
      v87 = v86 - 10;
      if (v86 >= 0xA)
      {
        if (v25 <= 3)
        {
          v88 = v25;
        }

        else
        {
          v88 = 4;
        }

        switch(v88)
        {
          case 1:
            v89 = *v85;
            goto LABEL_187;
          case 2:
            v89 = *v85;
            goto LABEL_187;
          case 3:
            v89 = *v85 | (*((&v37[v226] & v224) + 2) << 16);
            goto LABEL_187;
          case 4:
            v89 = *v85;
LABEL_187:
            if (v25 < 4)
            {
              v86 = (v89 | (v87 << (8 * v25))) + 10;
            }

            else
            {
              v86 = v89 + 10;
            }

            break;
          default:
            goto LABEL_190;
        }
      }

      break;
    case 2u:
      v77 = v37[v29];
      v78 = v77 - 2;
      if (v77 >= 2)
      {
        if (v29 <= 3)
        {
          v79 = v29;
        }

        else
        {
          v79 = 4;
        }

        switch(v79)
        {
          case 1:
            v80 = *v37;
            goto LABEL_166;
          case 2:
            v80 = *v37;
            goto LABEL_166;
          case 3:
            v80 = *v37 | (v37[2] << 16);
            goto LABEL_166;
          case 4:
            v80 = *v37;
LABEL_166:
            if (v29 < 4)
            {
              v77 = (v80 | (v78 << v208)) + 2;
            }

            else
            {
              v77 = v80 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v77 == 1)
      {
        v91 = *v37;
        v92 = *v37;
        *a1 = v91;
        a1[8] = v37[8];
        a1[v29] = 1;
      }

      else if (v77)
      {
        memcpy(a1, v37, v29 + 1);
      }

      else
      {
        if (__swift_getEnumTagSinglePayload(v37, 1, v219))
        {
          memcpy(a1, v37, v28);
        }

        else
        {
          (*(v191 + 16))(a1, v37, v219);
          __swift_storeEnumTagSinglePayload(a1, 0, 1, v219);
        }

        a1[v29] = 0;
      }

      v83 = 2;
      goto LABEL_270;
    case 3u:
      v81 = *v37;
      v82 = *v37;
      *a1 = v81;
      a1[8] = v37[8];
      v83 = 3;
      goto LABEL_270;
    default:

      return memcpy(a1, v37, v31 + 1);
  }

LABEL_190:
  switch(v86)
  {
    case 0u:
      (*(v210 + 16))(&a1[v226] & v224, &v37[v226] & v224, v211);
      *(v84 + v25) = 0;
      goto LABEL_266;
    case 1u:
      (*(v210 + 16))(&a1[v226] & v224, &v37[v226] & v224, v211);
      *((v84 + v198) & 0xFFFFFFFFFFFFFFF8) = *(&v85[v198] & 0xFFFFFFFFFFFFFFF8);
      *(v84 + v25) = 1;
      sub_1DD0DCF8C();
    case 2u:
      *v84 = *v85;
      *((&a1[v226] & v224) + 8) = *((&v37[v226] & v224) + 8);
      *((&a1[v226] & v224) + 0x10) = *((&v37[v226] & v224) + 0x10);
      *(v84 + v25) = 2;

      goto LABEL_239;
    case 3u:
      *v84 = *v85;
      *(v84 + v25) = 3;
      swift_unknownObjectRetain();
      goto LABEL_266;
    case 4u:
      (*(v204 + 16))(&a1[v226] & v224, &v37[v226] & v224, v205);
      v94 = 4;
      goto LABEL_197;
    case 5u:
      v101 = *v85;
      *v84 = *v85;
      v102 = 5;
      goto LABEL_265;
    case 6u:
      (*(v220 + 16))(&a1[v226] & v224, &v37[v226] & v224, v212);
      v105 = ((v84 + v222) & v36);
      v106 = (&v85[v222] & v36);
      if (__swift_getEnumTagSinglePayload(v106, 1, v213))
      {
        memcpy(v105, v106, v209);
      }

      else
      {
        (*(v193 + 16))(v105, v106, v213);
        __swift_storeEnumTagSinglePayload(v105, 0, 1, v213);
      }

      v148 = ((v105 + v217) & 0xFFFFFFFFFFFFFFF8);
      v149 = ((v106 + v217) & 0xFFFFFFFFFFFFFFF8);
      *v148 = *v149;
      v148[1] = v149[1];
      v150 = (v148 + 19) & 0xFFFFFFFFFFFFFFF8;
      v151 = (v149 + 19) & 0xFFFFFFFFFFFFFFF8;
      v152 = *v151;
      *(v150 + 4) = *(v151 + 4);
      *v150 = v152;
      *(v84 + v25) = 6;
      goto LABEL_239;
    case 7u:
      (*(v220 + 16))(&a1[v226] & v224, &v37[v226] & v224, v212);
      v97 = ((v84 + v222) & v36);
      v98 = (&v85[v222] & v36);
      if (__swift_getEnumTagSinglePayload(v98, 1, v213))
      {
        memcpy(v97, v98, v209);
      }

      else
      {
        (*(v193 + 16))(v97, v98, v213);
        __swift_storeEnumTagSinglePayload(v97, 0, 1, v213);
      }

      v132 = ((v97 + v217) & 0xFFFFFFFFFFFFFFF8);
      v133 = ((v98 + v217) & 0xFFFFFFFFFFFFFFF8);
      *v132 = *v133;
      v132[1] = v133[1];
      v134 = (v132 + 19) & 0xFFFFFFFFFFFFFFF8;
      v135 = (v133 + 19) & 0xFFFFFFFFFFFFFFF8;
      v136 = *v135;
      *(v134 + 4) = *(v135 + 4);
      *v134 = v136;
      v137 = ((v84 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
      v138 = (&v85[v18 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v137 = *v138;
      v137[1] = v138[1];
      v139 = ((v137 + 23) & 0xFFFFFFFFFFFFFFF8);
      v140 = ((v138 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v139 = *v140;
      v139[1] = v140[1];
      v141 = ((v139 + 23) & 0xFFFFFFFFFFFFFFF8);
      v142 = ((v140 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v141 = *v142;
      v141[1] = v142[1];
      *(v84 + v25) = 7;

LABEL_239:

      goto LABEL_266;
    case 8u:
      (*(v202 + 16))(&a1[v226] & v224, &v37[v226] & v224, v203);
      v114 = ((v84 + v195 + 7) & 0xFFFFFFFFFFFFFFF8);
      v115 = (&v85[v195 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v114 = *v115;
      v114[1] = v115[1];
      v116 = ((v114 + v196) & v194);
      v117 = ((v115 + v196) & v194);

      if (v200 == v197)
      {
        if (!__swift_getEnumTagSinglePayload(v117, v200, v212))
        {
          v118 = v36;
          v119 = v222;
          v120 = ((v117 + v222) & v118);
          goto LABEL_250;
        }

LABEL_229:
        memcpy(v116, v117, v18);
        goto LABEL_263;
      }

      v120 = ((v117 + v222) & v36);
      if (v190 == v197)
      {
        if (v207 >= 2 && __swift_getEnumTagSinglePayload((v117 + v222) & v36, v207, v213) >= 2)
        {
          goto LABEL_229;
        }
      }

      else
      {
        v155 = *(((v120 + v217) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v155 >= 0xFFFFFFFF)
        {
          LODWORD(v155) = -1;
        }

        if ((v155 + 1) >= 2)
        {
          goto LABEL_229;
        }
      }

      v118 = v36;
      v119 = v222;
LABEL_250:
      (*(v220 + 16))(v116, v117, v212);
      v156 = ((v116 + v119) & v118);
      if (__swift_getEnumTagSinglePayload(v120, 1, v213))
      {
        memcpy(v156, v120, v209);
      }

      else
      {
        (*(v193 + 16))(v156, v120, v213);
        __swift_storeEnumTagSinglePayload(v156, 0, 1, v213);
      }

      v173 = v192;
      v174 = ((v156 + v217) & 0xFFFFFFFFFFFFFFF8);
      v175 = ((v120 + v217) & 0xFFFFFFFFFFFFFFF8);
      *v174 = *v175;
      v174[1] = v175[1];
      v176 = (v174 + 19) & 0xFFFFFFFFFFFFFFF8;
      v177 = (v175 + 19) & 0xFFFFFFFFFFFFFFF8;
      v178 = *v177;
      *(v176 + 4) = *(v177 + 4);
      *v176 = v178;

      if (v207)
      {
LABEL_264:
        v179 = (((v206 + v173 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
        v180 = ((v116 + v179 + 7) & 0xFFFFFFFFFFFFFFF8);
        v101 = *((v117 + v179 + 7) & 0xFFFFFFFFFFFFFFF8);
        *v180 = v101;
        v102 = 8;
LABEL_265:
        *(v84 + v25) = v102;
        v181 = v101;
LABEL_266:
        v182 = (&v85[v227 + 7] & 0xFFFFFFFFFFFFFFF8);
        v183 = ((v84 + v227 + 7) & 0xFFFFFFFFFFFFFFF8);
        *v183 = *v182;
        v184 = (v183 + 15) & 0xFFFFFFFFFFFFFFF8;
        v185 = (v182 + 15) & 0xFFFFFFFFFFFFFFF8;
        v186 = *(v185 + 24);

        if (v186 < 0xFFFFFFFF)
        {
          v187 = *v185;
          v188 = *(v185 + 16);
          *(v184 + 32) = *(v185 + 32);
          *v184 = v187;
          *(v184 + 16) = v188;
        }

        else
        {
          *(v184 + 24) = v186;
          *(v184 + 32) = *(v185 + 32);
          (**(v186 - 8))(v184, v185, v186);
        }

        *(v184 + 40) = *(v185 + 40);
        v83 = 1;
LABEL_270:
        a1[v31] = v83;
        return a1;
      }

LABEL_263:
      v173 = v209;
      goto LABEL_264;
    case 9u:
      (*(v199 + 16))(&a1[v226] & v224, &v37[v226] & v224, v201);
      v94 = 9;
LABEL_197:
      *(v84 + v25) = v94;
      goto LABEL_266;
    default:
      memcpy((&a1[v226] & v224), (&v37[v226] & v224), v227);
      goto LABEL_266;
  }
}

_BYTE *sub_1DCDC0E1C(_BYTE *a1, unsigned __int8 *a2, uint64_t a3)
{
  v183 = *(sub_1DD0DB04C() - 8);
  v194 = *(v183 + 64);
  v180 = sub_1DD0DC76C();
  v190 = *(v180 - 8);
  v179 = v190;
  v3 = *(v190 + 80);
  v174 = sub_1DD0DB1EC();
  v192 = *(v174 - 8);
  v173 = v192;
  v184 = *(v192 + 80) | v3;
  v182 = sub_1DD0DB4BC();
  v188 = *(v182 - 8);
  v202 = v188;
  v4 = *(v188 + 80) & 0xF8;
  v181 = sub_1DD0DB3EC();
  v5 = *(v181 - 8);
  v6 = *(v5 + 80);
  v7 = v4 | v6 | 7;
  v172 = sub_1DD0DD12C();
  v186 = *(v172 - 8);
  v171 = v186;
  v8 = *(v186 + 80);
  v170 = sub_1DD0DD08C();
  v9 = v190;
  v169 = *(v170 - 8);
  v10 = (v184 | (v8 | *(v169 + 80))) & 0xF8 | v7;
  v191 = v194 + v10;
  v11 = (v194 + v10) & ~v10;
  v12 = *(v9 + 64);
  v168 = v12 + 7;
  if (((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v12)
  {
    v12 = ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v12 <= *(v192 + 64))
  {
    v12 = *(v192 + 64);
  }

  if (v12 <= 0x18)
  {
    v13 = 24;
  }

  else
  {
    v13 = v12;
  }

  v193 = *(v188 + 64) + v6;
  v195 = v6;
  v163 = v5;
  v14 = *(v5 + 84);
  v15 = *(v5 + 64);
  v161 = v15;
  if (!v14)
  {
    ++v15;
  }

  v189 = v15;
  v16 = v15 + 7;
  v175 = v193 & ~v6;
  v17 = (v15 + 7 + v175) & 0xFFFFFFFFFFFFFFF8;
  v178 = v13;
  v185 = (v17 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v185 <= v13)
  {
    v18 = v13;
  }

  else
  {
    v18 = (v17 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v19 = v17 + 31;
  v177 = (((((v19 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v177 > v18)
  {
    v18 = (((((v19 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v164 = *(v186 + 64);
  v165 = v7 + 16;
  v20 = v4 | v6 | 7;
  v162 = *(v5 + 84);
  v21 = v14 != 0;
  v22 = v14 - 1;
  if (!v21)
  {
    v22 = 0;
  }

  v167 = *(v202 + 84);
  v160 = v22;
  if (v22 <= v167)
  {
    v22 = *(v202 + 84);
  }

  if (v22 <= 0x7FFFFFFE)
  {
    v22 = 2147483646;
  }

  v166 = v22;
  v23 = ((v19 + ((v7 + 16 + ((v164 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v187 = v23;
  if (v23 <= v18)
  {
    v23 = v18;
  }

  v176 = *(*(v170 - 8) + 64);
  if (v176 <= v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = *(*(v170 - 8) + 64);
  }

  v25 = ((((v24 + v11 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = AssociatedTypeWitness;
  v28 = *(AssociatedTypeWitness - 8);
  if (*(v28 + 84))
  {
    v29 = *(v28 + 64);
  }

  else
  {
    v29 = *(v28 + 64) + 1;
  }

  if (v29 <= 9)
  {
    v30 = 9;
  }

  else
  {
    v30 = v29;
  }

  if (v30 + 1 > v25)
  {
    v31 = v30 + 1;
  }

  else
  {
    v31 = v25;
  }

  if (v31 <= 9)
  {
    v32 = 9;
  }

  else
  {
    v32 = v31;
  }

  v33 = a2[v32];
  v34 = v33 - 4;
  if (v33 >= 4)
  {
    if (v32 <= 3)
    {
      v35 = v32;
    }

    else
    {
      v35 = 4;
    }

    switch(v35)
    {
      case 1:
        v36 = *a2;
        goto LABEL_47;
      case 2:
        v36 = *a2;
        goto LABEL_47;
      case 3:
        v36 = *a2 | (a2[2] << 16);
        goto LABEL_47;
      case 4:
        v36 = *a2;
LABEL_47:
        if (v32 < 4)
        {
          v36 |= v34 << (8 * v32);
        }

        v33 = v36 + 4;
        break;
      default:
        break;
    }
  }

  v37 = ~v10;
  v38 = ~v20;
  switch(v33)
  {
    case 0u:
      v39 = v32;
      v40 = ~v195;
      v196 = v16;
      v41 = v24 + 1;
      v42 = a1;
      (*(v183 + 32))(a1);
      v43 = (&a1[v191] & v37);
      v44 = (&a2[v191] & v37);
      v45 = v44[v24];
      v46 = v45 - 10;
      if (v45 < 0xA)
      {
        v48 = v24;
      }

      else
      {
        if (v24 <= 3)
        {
          v47 = v24;
        }

        else
        {
          v47 = 4;
        }

        v48 = v24;
        switch(v47)
        {
          case 1:
            v49 = *v44;
            goto LABEL_96;
          case 2:
            v49 = *v44;
            goto LABEL_96;
          case 3:
            v49 = *(&a2[v191] & v37) | (*((&a2[v191] & v37) + 2) << 16);
            goto LABEL_96;
          case 4:
            v49 = *v44;
LABEL_96:
            if (v24 < 4)
            {
              v45 = (v49 | (v46 << (8 * v24))) + 10;
            }

            else
            {
              v45 = v49 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v45)
      {
        case 0u:
          (*(v179 + 32))(v43, v44, v180);
          v43 = (&a1[v191] & v37);
          *(v43 + v48) = 0;
          goto LABEL_148;
        case 1u:
          v66 = &a1[v191] & v37;
          (*(v179 + 32))(v43, v44, v180);
          v43 = v66;
          *((v168 + v66) & 0xFFFFFFFFFFFFFFF8) = *(&v44[v168] & 0xFFFFFFFFFFFFFFF8);
          v67 = 1;
          goto LABEL_120;
        case 2u:
          v70 = *v44;
          *((&a1[v191] & v37) + 0x10) = *((&a2[v191] & v37) + 0x10);
          *v43 = v70;
          v71 = 2;
          goto LABEL_147;
        case 3u:
          *v43 = *v44;
          v71 = 3;
          goto LABEL_147;
        case 4u:
          v66 = &a1[v191] & v37;
          (*(v173 + 32))(v43, v44, v174);
          v43 = v66;
          v67 = 4;
          goto LABEL_120;
        case 5u:
          *v43 = *v44;
          v71 = 5;
          goto LABEL_147;
        case 6u:
          (*(v202 + 32))(v43, v44, v182);
          v78 = &a1[v191] & v37;
          v79 = ((v193 + v78) & v40);
          v80 = (&v44[v193] & v40);
          if (__swift_getEnumTagSinglePayload(v80, 1, v181))
          {
            memcpy(v79, v80, v189);
          }

          else
          {
            (*(v163 + 32))(v79, v80, v181);
            __swift_storeEnumTagSinglePayload(v79, 0, 1, v181);
          }

          v128 = ((v79 + v196) & 0xFFFFFFFFFFFFFFF8);
          v129 = ((v80 + v196) & 0xFFFFFFFFFFFFFFF8);
          *v128 = *v129;
          v130 = (v128 + 19) & 0xFFFFFFFFFFFFFFF8;
          v131 = (v129 + 19) & 0xFFFFFFFFFFFFFFF8;
          v132 = *v131;
          *(v130 + 4) = *(v131 + 4);
          *v130 = v132;
          v43 = v78;
          *(v78 + v48) = 6;
          goto LABEL_148;
        case 7u:
          (*(v202 + 32))(v43, v44, v182);
          v203 = &a1[v191] & v37;
          v74 = ((v193 + v203) & v40);
          v75 = (&v44[v193] & v40);
          if (__swift_getEnumTagSinglePayload(v75, 1, v181))
          {
            memcpy(v74, v75, v189);
          }

          else
          {
            (*(v163 + 32))(v74, v75, v181);
            __swift_storeEnumTagSinglePayload(v74, 0, 1, v181);
          }

          v98 = ((v74 + v196) & 0xFFFFFFFFFFFFFFF8);
          v99 = ((v75 + v196) & 0xFFFFFFFFFFFFFFF8);
          *v98 = *v99;
          v100 = (v98 + 19) & 0xFFFFFFFFFFFFFFF8;
          v101 = (v99 + 19) & 0xFFFFFFFFFFFFFFF8;
          v102 = *v101;
          *(v100 + 4) = *(v101 + 4);
          *v100 = v102;
          v43 = v203;
          v103 = ((v185 + v203 + 7) & 0xFFFFFFFFFFFFFFF8);
          v104 = (&v44[v185 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v103 = *v104;
          v105 = ((v103 + 23) & 0xFFFFFFFFFFFFFFF8);
          v106 = ((v104 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v105 = *v106;
          *((v105 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v106 + 23) & 0xFFFFFFFFFFFFFFF8);
          v71 = 7;
LABEL_147:
          *(v43 + v48) = v71;
          goto LABEL_148;
        case 8u:
          v84 = &a1[v191] & v37;
          (*(v171 + 32))(v84, v44, v172);
          v85 = ((v164 + v84 + 7) & 0xFFFFFFFFFFFFFFF8);
          v86 = (&v44[v164 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v85 = *v86;
          v199 = ((v85 + v165) & v38);
          v87 = ((v86 + v165) & v38);
          v158 = v39;
          if (v167 == v166)
          {
            v88 = v193;
            if (!__swift_getEnumTagSinglePayload(v87, v167, v182))
            {
              v89 = ((v87 + v193) & v40);
              goto LABEL_161;
            }

LABEL_140:
            memcpy(v199, v87, v185);
            v96 = v189;
            v43 = v84;
LABEL_170:
            v142 = v96;
            goto LABEL_171;
          }

          v88 = v193;
          if (v160 != v166)
          {
            v89 = ((v87 + v193) & v40);
            v138 = *(((v89 + v196) & 0xFFFFFFFFFFFFFFF8) + 8);
            if (v138 >= 0xFFFFFFFF)
            {
              LODWORD(v138) = -1;
            }

            if ((v138 + 1) < 2)
            {
              goto LABEL_161;
            }

            goto LABEL_140;
          }

          v89 = ((v87 + v193) & v40);
          if (v162 >= 2 && __swift_getEnumTagSinglePayload((v87 + v193) & v40, v162, v181) >= 2)
          {
            goto LABEL_140;
          }

LABEL_161:
          (*(v202 + 32))(v199, v87, v182);
          v139 = ((v199 + v88) & v40);
          v96 = v189;
          if (__swift_getEnumTagSinglePayload(v89, 1, v181))
          {
            memcpy(v139, v89, v189);
          }

          else
          {
            (*(v163 + 32))(v139, v89, v181);
            __swift_storeEnumTagSinglePayload(v139, 0, 1, v181);
          }

          v142 = v161;
          v143 = ((v139 + v196) & 0xFFFFFFFFFFFFFFF8);
          v144 = ((v89 + v196) & 0xFFFFFFFFFFFFFFF8);
          *v143 = *v144;
          v145 = (v144 + 19) & 0xFFFFFFFFFFFFFFF8;
          v146 = *v145;
          v147 = (v143 + 19) & 0xFFFFFFFFFFFFFFF8;
          *(v147 + 4) = *(v145 + 4);
          *v147 = v146;
          v43 = v84;
          if (!v162)
          {
            goto LABEL_170;
          }

LABEL_171:
          v148 = (((v175 + 7 + v142) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
          *((v199 + v148 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v87 + v148 + 7) & 0xFFFFFFFFFFFFFFF8);
          v149 = (((v175 + 7 + v96) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
          if (v149 <= v178)
          {
            v149 = v178;
          }

          if (v177 > v149)
          {
            v149 = v177;
          }

          if (v187 > v149)
          {
            v149 = v187;
          }

          if (v176 > v149)
          {
            v149 = v176;
          }

          *(v43 + v149) = 8;
          v39 = v158;
LABEL_148:
          v107 = ((v43 + v41 + 7) & 0xFFFFFFFFFFFFFFF8);
          v108 = (&v44[v41 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v107 = *v108;
          v109 = (v107 + 15) & 0xFFFFFFFFFFFFFFF8;
          v110 = (v108 + 15) & 0xFFFFFFFFFFFFFFF8;
          v111 = *v110;
          v112 = *(v110 + 16);
          *(v109 + 32) = *(v110 + 32);
          *v109 = v111;
          *(v109 + 16) = v112;
          *(v109 + 40) = *(v110 + 40);
          a1[v39] = 0;
          return v42;
        case 9u:
          v66 = &a1[v191] & v37;
          (*(v169 + 32))(v43, v44, v170);
          v43 = v66;
          v67 = 9;
LABEL_120:
          *(v66 + v48) = v67;
          goto LABEL_148;
        default:
          memcpy((&a1[v191] & v37), v44, v41);
          v43 = (&a1[v191] & v37);
          goto LABEL_148;
      }

    case 1u:
      v55 = v32;
      v56 = ~v195;
      v197 = v16;
      v57 = v24 + 1;
      v42 = a1;
      (*(v183 + 32))(a1);
      v58 = (&a1[v191] & v37);
      v59 = (&a2[v191] & v37);
      v60 = v59[v24];
      v61 = v60 - 10;
      if (v60 < 0xA)
      {
        v63 = v24;
      }

      else
      {
        if (v24 <= 3)
        {
          v62 = v24;
        }

        else
        {
          v62 = 4;
        }

        v63 = v24;
        switch(v62)
        {
          case 1:
            v64 = *v59;
            goto LABEL_102;
          case 2:
            v64 = *v59;
            goto LABEL_102;
          case 3:
            v64 = *(&a2[v191] & v37) | (*((&a2[v191] & v37) + 2) << 16);
            goto LABEL_102;
          case 4:
            v64 = *v59;
LABEL_102:
            if (v24 < 4)
            {
              v60 = (v64 | (v61 << (8 * v24))) + 10;
            }

            else
            {
              v60 = v64 + 10;
            }

            break;
          default:
            goto LABEL_105;
        }
      }

      break;
    case 2u:
      v50 = a2[v30];
      v51 = v50 - 2;
      v42 = a1;
      if (v50 >= 2)
      {
        if (v30 <= 3)
        {
          v52 = v30;
        }

        else
        {
          v52 = 4;
        }

        switch(v52)
        {
          case 1:
            v53 = *a2;
            goto LABEL_80;
          case 2:
            v53 = *a2;
            goto LABEL_80;
          case 3:
            v53 = *a2 | (a2[2] << 16);
            goto LABEL_80;
          case 4:
            v53 = *a2;
LABEL_80:
            if (v30 < 4)
            {
              v50 = (v53 | (v51 << (8 * v30))) + 2;
            }

            else
            {
              v50 = v53 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v50 == 1)
      {
        *a1 = *a2;
        a1[8] = a2[8];
        a1[v30] = 1;
      }

      else if (v50)
      {
        memcpy(a1, a2, v30 + 1);
      }

      else
      {
        if (__swift_getEnumTagSinglePayload(a2, 1, AssociatedTypeWitness))
        {
          memcpy(a1, a2, v29);
        }

        else
        {
          (*(v28 + 32))(a1, a2, v27);
          __swift_storeEnumTagSinglePayload(a1, 0, 1, v27);
        }

        a1[v30] = 0;
      }

      v54 = 2;
      goto LABEL_92;
    case 3u:
      v42 = a1;
      *a1 = *a2;
      a1[8] = a2[8];
      v54 = 3;
LABEL_92:
      v42[v32] = v54;
      return v42;
    default:

      return memcpy(a1, a2, v32 + 1);
  }

LABEL_105:
  switch(v60)
  {
    case 0u:
      (*(v179 + 32))(v58, v59, v180);
      v58 = (&a1[v191] & v37);
      *(v58 + v63) = 0;
      goto LABEL_152;
    case 1u:
      v68 = &a1[v191] & v37;
      (*(v179 + 32))(v58, v59, v180);
      v58 = v68;
      *((v168 + v68) & 0xFFFFFFFFFFFFFFF8) = *(&v59[v168] & 0xFFFFFFFFFFFFFFF8);
      v69 = 1;
      goto LABEL_122;
    case 2u:
      v72 = *v59;
      *((&a1[v191] & v37) + 0x10) = *((&a2[v191] & v37) + 0x10);
      *v58 = v72;
      v73 = 2;
      goto LABEL_151;
    case 3u:
      *v58 = *v59;
      v73 = 3;
      goto LABEL_151;
    case 4u:
      v68 = &a1[v191] & v37;
      (*(v173 + 32))(v58, v59, v174);
      v58 = v68;
      v69 = 4;
      goto LABEL_122;
    case 5u:
      *v58 = *v59;
      v73 = 5;
      goto LABEL_151;
    case 6u:
      (*(v202 + 32))(v58, v59, v182);
      v81 = &a1[v191] & v37;
      v82 = ((v193 + v81) & v56);
      v83 = (&v59[v193] & v56);
      if (__swift_getEnumTagSinglePayload(v83, 1, v181))
      {
        memcpy(v82, v83, v189);
      }

      else
      {
        (*(v163 + 32))(v82, v83, v181);
        __swift_storeEnumTagSinglePayload(v82, 0, 1, v181);
      }

      v133 = ((v82 + v197) & 0xFFFFFFFFFFFFFFF8);
      v134 = ((v83 + v197) & 0xFFFFFFFFFFFFFFF8);
      *v133 = *v134;
      v135 = (v133 + 19) & 0xFFFFFFFFFFFFFFF8;
      v136 = (v134 + 19) & 0xFFFFFFFFFFFFFFF8;
      v137 = *v136;
      *(v135 + 4) = *(v136 + 4);
      *v135 = v137;
      v58 = v81;
      *(v81 + v63) = 6;
      goto LABEL_152;
    case 7u:
      (*(v202 + 32))(v58, v59, v182);
      v204 = &a1[v191] & v37;
      v76 = ((v193 + v204) & v56);
      v77 = (&v59[v193] & v56);
      if (__swift_getEnumTagSinglePayload(v77, 1, v181))
      {
        memcpy(v76, v77, v189);
      }

      else
      {
        (*(v163 + 32))(v76, v77, v181);
        __swift_storeEnumTagSinglePayload(v76, 0, 1, v181);
      }

      v113 = ((v76 + v197) & 0xFFFFFFFFFFFFFFF8);
      v114 = ((v77 + v197) & 0xFFFFFFFFFFFFFFF8);
      *v113 = *v114;
      v115 = (v113 + 19) & 0xFFFFFFFFFFFFFFF8;
      v116 = (v114 + 19) & 0xFFFFFFFFFFFFFFF8;
      v117 = *v116;
      *(v115 + 4) = *(v116 + 4);
      *v115 = v117;
      v58 = v204;
      v118 = ((v185 + v204 + 7) & 0xFFFFFFFFFFFFFFF8);
      v119 = (&v59[v185 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v118 = *v119;
      v120 = ((v118 + 23) & 0xFFFFFFFFFFFFFFF8);
      v121 = ((v119 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v120 = *v121;
      *((v120 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v121 + 23) & 0xFFFFFFFFFFFFFFF8);
      v73 = 7;
LABEL_151:
      *(v58 + v63) = v73;
      goto LABEL_152;
    case 8u:
      v90 = &a1[v191] & v37;
      (*(v171 + 32))(v90, v59, v172);
      v91 = ((v164 + v90 + 7) & 0xFFFFFFFFFFFFFFF8);
      v92 = (&v59[v164 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v91 = *v92;
      v200 = ((v91 + v165) & v38);
      v93 = ((v92 + v165) & v38);
      v159 = v55;
      if (v167 == v166)
      {
        v94 = v193;
        if (!__swift_getEnumTagSinglePayload(v93, v167, v182))
        {
          v95 = ((v93 + v193) & v56);
          goto LABEL_166;
        }
      }

      else
      {
        v94 = v193;
        if (v160 == v166)
        {
          v95 = ((v93 + v193) & v56);
          if (v162 < 2 || __swift_getEnumTagSinglePayload((v93 + v193) & v56, v162, v181) < 2)
          {
            goto LABEL_166;
          }
        }

        else
        {
          v95 = ((v93 + v193) & v56);
          v140 = *(((v95 + v197) & 0xFFFFFFFFFFFFFFF8) + 8);
          if (v140 >= 0xFFFFFFFF)
          {
            LODWORD(v140) = -1;
          }

          if ((v140 + 1) < 2)
          {
LABEL_166:
            (*(v202 + 32))(v200, v93, v182);
            v141 = ((v200 + v94) & v56);
            v97 = v189;
            if (__swift_getEnumTagSinglePayload(v95, 1, v181))
            {
              memcpy(v141, v95, v189);
            }

            else
            {
              (*(v163 + 32))(v141, v95, v181);
              __swift_storeEnumTagSinglePayload(v141, 0, 1, v181);
            }

            v150 = v161;
            v151 = ((v141 + v197) & 0xFFFFFFFFFFFFFFF8);
            v152 = ((v95 + v197) & 0xFFFFFFFFFFFFFFF8);
            *v151 = *v152;
            v153 = (v152 + 19) & 0xFFFFFFFFFFFFFFF8;
            v154 = *v153;
            v155 = (v151 + 19) & 0xFFFFFFFFFFFFFFF8;
            *(v155 + 4) = *(v153 + 4);
            *v155 = v154;
            v58 = v90;
            if (v162)
            {
LABEL_183:
              v156 = (((v175 + 7 + v150) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
              *((v200 + v156 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v93 + v156 + 7) & 0xFFFFFFFFFFFFFFF8);
              v157 = (((v175 + 7 + v97) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
              if (v157 <= v178)
              {
                v157 = v178;
              }

              if (v177 > v157)
              {
                v157 = v177;
              }

              if (v187 > v157)
              {
                v157 = v187;
              }

              if (v176 > v157)
              {
                v157 = v176;
              }

              *(v58 + v157) = 8;
              v55 = v159;
LABEL_152:
              v122 = ((v58 + v57 + 7) & 0xFFFFFFFFFFFFFFF8);
              v123 = (&v59[v57 + 7] & 0xFFFFFFFFFFFFFFF8);
              *v122 = *v123;
              v124 = (v122 + 15) & 0xFFFFFFFFFFFFFFF8;
              v125 = (v123 + 15) & 0xFFFFFFFFFFFFFFF8;
              v126 = *v125;
              v127 = *(v125 + 16);
              *(v124 + 32) = *(v125 + 32);
              *v124 = v126;
              *(v124 + 16) = v127;
              *(v124 + 40) = *(v125 + 40);
              a1[v55] = 1;
              return v42;
            }

LABEL_182:
            v150 = v97;
            goto LABEL_183;
          }
        }
      }

      memcpy(v200, v93, v185);
      v97 = v189;
      v58 = v90;
      goto LABEL_182;
    case 9u:
      v68 = &a1[v191] & v37;
      (*(v169 + 32))(v58, v59, v170);
      v58 = v68;
      v69 = 9;
LABEL_122:
      *(v68 + v63) = v69;
      goto LABEL_152;
    default:
      memcpy((&a1[v191] & v37), v59, v57);
      v58 = (&a1[v191] & v37);
      goto LABEL_152;
  }
}

unsigned __int8 *sub_1DCDC22A8(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v4 = sub_1DD0DB04C();
  v213 = *(v4 - 8);
  v214 = v4;
  v224 = *(v213 + 64);
  v210 = sub_1DD0DC76C();
  v220 = *(v210 - 8);
  v209 = v220;
  v5 = *(v220 + 80);
  v204 = sub_1DD0DB1EC();
  v222 = *(v204 - 8);
  v203 = v222;
  v215 = *(v222 + 80) | v5;
  v211 = sub_1DD0DB4BC();
  v219 = *(v211 - 8);
  v6 = *(v219 + 80) & 0xF8;
  v212 = sub_1DD0DB3EC();
  v7 = *(v212 - 8);
  v8 = v7;
  v9 = *(v7 + 80);
  v10 = v6 | v9 | 7;
  v202 = sub_1DD0DD12C();
  v217 = *(v202 - 8);
  v201 = v217;
  v11 = *(v217 + 80);
  v200 = sub_1DD0DD08C();
  v199 = *(v200 - 8);
  v12 = (v215 | (v11 | *(v199 + 80))) & 0xF8 | v10;
  v225 = v224 + v12;
  v13 = *(v220 + 64);
  v198 = v13 + 7;
  if (((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v13)
  {
    v13 = ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v13 <= *(v222 + 64))
  {
    v13 = *(v222 + 64);
  }

  if (v13 <= 0x18)
  {
    v14 = 24;
  }

  else
  {
    v14 = v13;
  }

  v221 = *(v219 + 64) + v9;
  v15 = v9;
  v192 = v7;
  v16 = *(v7 + 84);
  v17 = *(v7 + 64);
  v191 = v17;
  if (!v16)
  {
    ++v17;
  }

  v208 = v17;
  v216 = v17 + 7;
  v205 = v221 & ~v9;
  v18 = (v17 + 7 + v205) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  v188 = v14;
  if (v19 <= v14)
  {
    v20 = v14;
  }

  else
  {
    v20 = (v18 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v21 = v18 + 31;
  v187 = (((((v21 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v187 > v20)
  {
    v20 = (((((v21 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v194 = *(v217 + 64);
  v195 = v10 + 16;
  v22 = v6 | v9 | 7;
  v206 = *(v8 + 84);
  v23 = v16 != 0;
  v24 = v16 - 1;
  if (!v23)
  {
    v24 = 0;
  }

  v197 = *(v219 + 84);
  v185 = v24;
  if (v24 <= v197)
  {
    v24 = *(v219 + 84);
  }

  if (v24 <= 0x7FFFFFFE)
  {
    v24 = 2147483646;
  }

  v196 = v24;
  v25 = (v21 + ((v10 + 16 + ((v194 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v10)) & 0xFFFFFFFFFFFFFFF8;
  v26 = v25 + 8;
  if (v25 + 8 <= v20)
  {
    v27 = v20;
  }

  else
  {
    v27 = v25 + 8;
  }

  v186 = *(*(v200 - 8) + 64);
  if (v186 <= v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = *(*(v200 - 8) + 64);
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v190 = *(AssociatedTypeWitness - 8);
  v30 = *(v190 + 64);
  if (!*(v190 + 84))
  {
    ++v30;
  }

  __n = v30;
  if (v30 <= 9)
  {
    v31 = 9;
  }

  else
  {
    v31 = v30;
  }

  if (v31 + 1 > ((((v28 + (v225 & ~v12) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41)
  {
    v32 = v31 + 1;
  }

  else
  {
    v32 = ((((v28 + (v225 & ~v12) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  }

  if (v32 <= 9)
  {
    v33 = 9;
  }

  else
  {
    v33 = v32;
  }

  v34 = a1[v33];
  v35 = v34 - 4;
  if (v34 < 4)
  {
    v37 = a2;
  }

  else
  {
    if (v33 <= 3)
    {
      v36 = v33;
    }

    else
    {
      v36 = 4;
    }

    v37 = a2;
    switch(v36)
    {
      case 1:
        v38 = *a1;
        goto LABEL_49;
      case 2:
        v38 = *a1;
        goto LABEL_49;
      case 3:
        v38 = *a1 | (a1[2] << 16);
        goto LABEL_49;
      case 4:
        v38 = *a1;
LABEL_49:
        if (v33 < 4)
        {
          v38 |= v35 << (8 * v33);
        }

        v34 = v38 + 4;
        break;
      default:
        break;
    }
  }

  v218 = AssociatedTypeWitness;
  v223 = v28 + 1;
  v226 = ~v12;
  v39 = ~v15;
  v193 = ~v22;
  v207 = 8 * v31;
  switch(v34)
  {
    case 0u:
      v182 = v26;
      (*(v213 + 8))(a1, v214);
      v40 = (&a1[v225] & v226);
      v41 = v40[v28];
      v42 = v41 - 10;
      if (v41 >= 0xA)
      {
        if (v28 <= 3)
        {
          v43 = v28;
        }

        else
        {
          v43 = 4;
        }

        switch(v43)
        {
          case 1:
            v44 = *v40;
            goto LABEL_87;
          case 2:
            v44 = *v40;
            goto LABEL_87;
          case 3:
            v44 = *v40 | (*((&a1[v225] & v226) + 2) << 16);
            goto LABEL_87;
          case 4:
            v44 = *v40;
LABEL_87:
            if (v28 < 4)
            {
              v41 = (v44 | (v42 << (8 * v28))) + 10;
            }

            else
            {
              v41 = v44 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v41)
      {
        case 0u:
          goto LABEL_96;
        case 1u:
          goto LABEL_105;
        case 2u:
          goto LABEL_100;
        case 3u:
          goto LABEL_101;
        case 4u:
          goto LABEL_97;
        case 5u:
          goto LABEL_106;
        case 6u:
          goto LABEL_107;
        case 7u:
          goto LABEL_102;
        case 8u:
          goto LABEL_110;
        case 9u:
          goto LABEL_98;
        default:
          goto LABEL_125;
      }

      goto LABEL_125;
    case 1u:
      v182 = v26;
      (*(v213 + 8))(a1, v214);
      v40 = (&a1[v225] & v226);
      v49 = v40[v28];
      v50 = v49 - 10;
      if (v49 >= 0xA)
      {
        if (v28 <= 3)
        {
          v51 = v28;
        }

        else
        {
          v51 = 4;
        }

        switch(v51)
        {
          case 1:
            v52 = *v40;
            goto LABEL_92;
          case 2:
            v52 = *v40;
            goto LABEL_92;
          case 3:
            v52 = *v40 | (*((&a1[v225] & v226) + 2) << 16);
            goto LABEL_92;
          case 4:
            v52 = *v40;
LABEL_92:
            if (v28 < 4)
            {
              v49 = (v52 | (v50 << (8 * v28))) + 10;
            }

            else
            {
              v49 = v52 + 10;
            }

            break;
          default:
            goto LABEL_95;
        }
      }

      break;
    case 2u:
      v45 = a1[v31];
      v46 = v45 - 2;
      if (v45 >= 2)
      {
        if (v31 <= 3)
        {
          v47 = v31;
        }

        else
        {
          v47 = 4;
        }

        switch(v47)
        {
          case 1:
            v48 = *a1;
            goto LABEL_78;
          case 2:
            v48 = *a1;
            goto LABEL_78;
          case 3:
            v48 = *a1 | (a1[2] << 16);
            goto LABEL_78;
          case 4:
            v48 = *a1;
LABEL_78:
            if (v31 < 4)
            {
              v45 = (v48 | (v46 << v207)) + 2;
            }

            else
            {
              v45 = v48 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v45 == 1)
      {
        goto LABEL_85;
      }

      if (!v45 && !__swift_getEnumTagSinglePayload(a1, 1, AssociatedTypeWitness))
      {
        (*(v190 + 8))(a1, v218);
      }

      goto LABEL_127;
    case 3u:
LABEL_85:

      goto LABEL_127;
    default:
      goto LABEL_127;
  }

LABEL_95:
  switch(v49)
  {
    case 0u:
LABEL_96:
      v54 = v209;
      v53 = v210;
      goto LABEL_99;
    case 1u:
LABEL_105:
      (*(v209 + 8))(v40, v210);

      goto LABEL_125;
    case 2u:
LABEL_100:

      goto LABEL_109;
    case 3u:
LABEL_101:
      swift_unknownObjectRelease();
      goto LABEL_125;
    case 4u:
LABEL_97:
      v54 = v203;
      v53 = v204;
      goto LABEL_99;
    case 5u:
LABEL_106:
      v55 = *v40;
      goto LABEL_124;
    case 6u:
LABEL_107:
      (*(v219 + 8))(v40, v211);
      if (!__swift_getEnumTagSinglePayload(&v40[v221] & v39, 1, v212))
      {
        (*(v192 + 8))(&v40[v221] & v39, v212);
      }

      goto LABEL_109;
    case 7u:
LABEL_102:
      (*(v219 + 8))(v40, v211);
      if (!__swift_getEnumTagSinglePayload(&v40[v221] & v39, 1, v212))
      {
        (*(v192 + 8))(&v40[v221] & v39, v212);
      }

LABEL_109:

      goto LABEL_125;
    case 8u:
LABEL_110:
      (*(v201 + 8))(v40, v202);

      v56 = (v195 + (&v40[v194 + 7] & 0xFFFFFFFFFFFFFFF8)) & v193;
      if (v197 == v196)
      {
        if (__swift_getEnumTagSinglePayload(v56, v197, v211))
        {
          goto LABEL_123;
        }

        v57 = (v221 + v56) & v39;
        goto LABEL_120;
      }

      v57 = (v221 + v56) & v39;
      if (v185 == v196)
      {
        if (v206 >= 2 && __swift_getEnumTagSinglePayload((v221 + v56) & v39, v206, v212) >= 2)
        {
          goto LABEL_123;
        }

        goto LABEL_120;
      }

      v58 = *(((v216 + v57) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v58 >= 0xFFFFFFFF)
      {
        LODWORD(v58) = -1;
      }

      if ((v58 + 1) < 2)
      {
LABEL_120:
        (*(v219 + 8))(v56, v211);
        if (!__swift_getEnumTagSinglePayload(v57, 1, v212))
        {
          (*(v192 + 8))(v57, v212);
        }
      }

LABEL_123:
      v55 = *((v19 + v56 + 7) & 0xFFFFFFFFFFFFFFF8);
LABEL_124:

LABEL_125:

      v59 = (((&v40[v223 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
      v26 = v182;
      v37 = a2;
      if (v59[3] >= 0xFFFFFFFFuLL)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v59);
      }

LABEL_127:
      v60 = v37[v33];
      v61 = v60 - 4;
      if (v60 >= 4)
      {
        if (v33 <= 3)
        {
          v62 = v33;
        }

        else
        {
          v62 = 4;
        }

        switch(v62)
        {
          case 1:
            v63 = *v37;
            goto LABEL_136;
          case 2:
            v63 = *v37;
            goto LABEL_136;
          case 3:
            v63 = *v37 | (v37[2] << 16);
            goto LABEL_136;
          case 4:
            v63 = *v37;
LABEL_136:
            if (v33 < 4)
            {
              v60 = (v63 | (v61 << (8 * v33))) + 4;
            }

            else
            {
              v60 = v63 + 4;
            }

            break;
          default:
            goto LABEL_139;
        }
      }

      break;
    case 9u:
LABEL_98:
      v54 = v199;
      v53 = v200;
LABEL_99:
      (*(v54 + 8))(v40, v53);
      goto LABEL_125;
    default:
      goto LABEL_125;
  }

LABEL_139:
  switch(v60)
  {
    case 0u:
      (*(v213 + 32))(a1, v37, v214);
      v64 = (&a1[v225] & v226);
      v65 = (&v37[v225] & v226);
      v66 = v65[v28];
      v67 = v66 - 10;
      if (v66 >= 0xA)
      {
        if (v28 <= 3)
        {
          v68 = v28;
        }

        else
        {
          v68 = 4;
        }

        switch(v68)
        {
          case 1:
            v69 = *v65;
            goto LABEL_182;
          case 2:
            v69 = *v65;
            goto LABEL_182;
          case 3:
            v69 = *v65 | (*((&v37[v225] & v226) + 2) << 16);
            goto LABEL_182;
          case 4:
            v69 = *v65;
LABEL_182:
            if (v28 < 4)
            {
              v66 = (v69 | (v67 << (8 * v28))) + 10;
            }

            else
            {
              v66 = v69 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v66)
      {
        case 0u:
          (*(v209 + 32))(&a1[v225] & v226, &v37[v225] & v226, v210);
          *(v64 + v28) = 0;
          goto LABEL_209;
        case 1u:
          (*(v209 + 32))(&a1[v225] & v226, &v37[v225] & v226, v210);
          *((v64 + v198) & 0xFFFFFFFFFFFFFFF8) = *(&v65[v198] & 0xFFFFFFFFFFFFFFF8);
          v82 = 1;
          goto LABEL_208;
        case 2u:
          v84 = *v65;
          *((&a1[v225] & v226) + 0x10) = *((&v37[v225] & v226) + 0x10);
          *v64 = v84;
          v82 = 2;
          goto LABEL_208;
        case 3u:
          *v64 = *v65;
          v82 = 3;
          goto LABEL_208;
        case 4u:
          (*(v203 + 32))(&a1[v225] & v226, &v37[v225] & v226, v204);
          v82 = 4;
          goto LABEL_208;
        case 5u:
          *v64 = *v65;
          v82 = 5;
          goto LABEL_208;
        case 6u:
          v106 = v39;
          v87 = v28 + 1;
          (*(v219 + 32))(&a1[v225] & v226, v65, v211);
          v107 = ((v64 + v221) & v106);
          v108 = (&v65[v221] & v106);
          if (__swift_getEnumTagSinglePayload(v108, 1, v212))
          {
            memcpy(v107, v108, v208);
          }

          else
          {
            (*(v192 + 32))(v107, v108, v212);
            __swift_storeEnumTagSinglePayload(v107, 0, 1, v212);
          }

          v152 = ((v107 + v216) & 0xFFFFFFFFFFFFFFF8);
          v153 = ((v108 + v216) & 0xFFFFFFFFFFFFFFF8);
          *v152 = *v153;
          v154 = (v152 + 19) & 0xFFFFFFFFFFFFFFF8;
          v155 = (v153 + 19) & 0xFFFFFFFFFFFFFFF8;
          v156 = *v155;
          *(v154 + 4) = *(v155 + 4);
          *v154 = v156;
          v141 = 6;
          goto LABEL_243;
        case 7u:
          v86 = v39;
          v87 = v28 + 1;
          (*(v219 + 32))(&a1[v225] & v226, v65, v211);
          v88 = ((v64 + v221) & v86);
          v89 = (&v65[v221] & v86);
          if (__swift_getEnumTagSinglePayload(v89, 1, v212))
          {
            memcpy(v88, v89, v208);
          }

          else
          {
            (*(v192 + 32))(v88, v89, v212);
            __swift_storeEnumTagSinglePayload(v88, 0, 1, v212);
          }

          v132 = ((v88 + v216) & 0xFFFFFFFFFFFFFFF8);
          v133 = ((v89 + v216) & 0xFFFFFFFFFFFFFFF8);
          *v132 = *v133;
          v134 = (v132 + 19) & 0xFFFFFFFFFFFFFFF8;
          v135 = (v133 + 19) & 0xFFFFFFFFFFFFFFF8;
          v136 = *v135;
          *(v134 + 4) = *(v135 + 4);
          *v134 = v136;
          v137 = ((v64 + v19 + 7) & 0xFFFFFFFFFFFFFFF8);
          v138 = (&v65[v19 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v137 = *v138;
          v139 = ((v137 + 23) & 0xFFFFFFFFFFFFFFF8);
          v140 = ((v138 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v139 = *v140;
          *((v139 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v140 + 23) & 0xFFFFFFFFFFFFFFF8);
          v141 = 7;
LABEL_243:
          *(v64 + v28) = v141;
          goto LABEL_210;
        case 8u:
          v183 = v26;
          (*(v201 + 32))(&a1[v225] & v226, &v37[v225] & v226, v202);
          v112 = ((v64 + v194 + 7) & 0xFFFFFFFFFFFFFFF8);
          v113 = (&v65[v194 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v112 = *v113;
          v114 = ((v112 + v195) & v193);
          v115 = ((v113 + v195) & v193);
          if (v197 != v196)
          {
            v117 = ((v115 + v221) & v39);
            if (v185 == v196)
            {
              if (v206 >= 2 && __swift_getEnumTagSinglePayload((v115 + v221) & v39, v206, v212) >= 2)
              {
                goto LABEL_232;
              }
            }

            else
            {
              v162 = *(((v117 + v216) & 0xFFFFFFFFFFFFFFF8) + 8);
              if (v162 >= 0xFFFFFFFF)
              {
                LODWORD(v162) = -1;
              }

              if ((v162 + 1) >= 2)
              {
                goto LABEL_232;
              }
            }

            v116 = v221;
            goto LABEL_251;
          }

          if (__swift_getEnumTagSinglePayload(v115, v197, v211))
          {
LABEL_232:
            memcpy(v114, v115, v19);
            v124 = v208;
            v126 = v187;
            v125 = v188;
            v127 = v186;
LABEL_261:
            v166 = v124;
            goto LABEL_262;
          }

          v116 = v221;
          v117 = ((v115 + v221) & v39);
LABEL_251:
          (*(v219 + 32))(v114, v115, v211);
          v163 = ((v114 + v116) & v39);
          if (__swift_getEnumTagSinglePayload(v117, 1, v212))
          {
            memcpy(v163, v117, v208);
          }

          else
          {
            (*(v192 + 32))(v163, v117, v212);
            __swift_storeEnumTagSinglePayload(v163, 0, 1, v212);
          }

          v166 = v191;
          v167 = ((v163 + v216) & 0xFFFFFFFFFFFFFFF8);
          v168 = ((v117 + v216) & 0xFFFFFFFFFFFFFFF8);
          *v167 = *v168;
          v169 = (v168 + 19) & 0xFFFFFFFFFFFFFFF8;
          v170 = *v169;
          v171 = (v167 + 19) & 0xFFFFFFFFFFFFFFF8;
          *(v171 + 4) = *(v169 + 4);
          *v171 = v170;
          v124 = v208;
          v126 = v187;
          v125 = v188;
          v127 = v186;
          if (!v206)
          {
            goto LABEL_261;
          }

LABEL_262:
          v172 = (((v205 + 7 + v166) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
          *((v114 + v172 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v115 + v172 + 7) & 0xFFFFFFFFFFFFFFF8);
          v173 = (((v205 + 7 + v124) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
          if (v173 <= v125)
          {
            v173 = v125;
          }

          if (v126 > v173)
          {
            v173 = v126;
          }

          if (v183 > v173)
          {
            v173 = v183;
          }

          if (v127 > v173)
          {
            v173 = v127;
          }

          *(v64 + v173) = 8;
LABEL_209:
          v87 = v223;
LABEL_210:
          v94 = ((v64 + v87 + 7) & 0xFFFFFFFFFFFFFFF8);
          v95 = (&v65[v87 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v94 = *v95;
          v96 = (v94 + 15) & 0xFFFFFFFFFFFFFFF8;
          v97 = (v95 + 15) & 0xFFFFFFFFFFFFFFF8;
          v98 = *v97;
          v99 = *(v97 + 16);
          *(v96 + 32) = *(v97 + 32);
          *v96 = v98;
          *(v96 + 16) = v99;
          *(v96 + 40) = *(v97 + 40);
          a1[v33] = 0;
          return a1;
        case 9u:
          (*(v199 + 32))(&a1[v225] & v226, &v37[v225] & v226, v200);
          v82 = 9;
LABEL_208:
          *(v64 + v28) = v82;
          goto LABEL_209;
        default:
          v87 = v28 + 1;
          memcpy((&a1[v225] & v226), (&v37[v225] & v226), v223);
          goto LABEL_210;
      }

    case 1u:
      (*(v213 + 32))(a1, v37, v214);
      v75 = (&a1[v225] & v226);
      v76 = (&v37[v225] & v226);
      v77 = v76[v28];
      v78 = v77 - 10;
      if (v77 >= 0xA)
      {
        if (v28 <= 3)
        {
          v79 = v28;
        }

        else
        {
          v79 = 4;
        }

        switch(v79)
        {
          case 1:
            v80 = *v76;
            goto LABEL_188;
          case 2:
            v80 = *v76;
            goto LABEL_188;
          case 3:
            v80 = *v76 | (*((&v37[v225] & v226) + 2) << 16);
            goto LABEL_188;
          case 4:
            v80 = *v76;
LABEL_188:
            if (v28 < 4)
            {
              v77 = (v80 | (v78 << (8 * v28))) + 10;
            }

            else
            {
              v77 = v80 + 10;
            }

            break;
          default:
            goto LABEL_191;
        }
      }

      break;
    case 2u:
      v70 = v37[v31];
      v71 = v70 - 2;
      if (v70 >= 2)
      {
        if (v31 <= 3)
        {
          v72 = v31;
        }

        else
        {
          v72 = 4;
        }

        switch(v72)
        {
          case 1:
            v73 = *v37;
            goto LABEL_167;
          case 2:
            v73 = *v37;
            goto LABEL_167;
          case 3:
            v73 = *v37 | (v37[2] << 16);
            goto LABEL_167;
          case 4:
            v73 = *v37;
LABEL_167:
            if (v31 < 4)
            {
              v70 = (v73 | (v71 << v207)) + 2;
            }

            else
            {
              v70 = v73 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v70 == 1)
      {
        *a1 = *v37;
        a1[8] = v37[8];
        a1[v31] = 1;
      }

      else if (v70)
      {
        memcpy(a1, v37, v31 + 1);
      }

      else
      {
        if (__swift_getEnumTagSinglePayload(v37, 1, v218))
        {
          memcpy(a1, v37, __n);
        }

        else
        {
          (*(v190 + 32))(a1, v37, v218);
          __swift_storeEnumTagSinglePayload(a1, 0, 1, v218);
        }

        a1[v31] = 0;
      }

      v74 = 2;
      goto LABEL_215;
    case 3u:
      *a1 = *v37;
      a1[8] = v37[8];
      v74 = 3;
      goto LABEL_215;
    default:

      return memcpy(a1, v37, v33 + 1);
  }

LABEL_191:
  switch(v77)
  {
    case 0u:
      (*(v209 + 32))(&a1[v225] & v226, &v37[v225] & v226, v210);
      *(v75 + v28) = 0;
      goto LABEL_213;
    case 1u:
      (*(v209 + 32))(&a1[v225] & v226, &v37[v225] & v226, v210);
      *((v75 + v198) & 0xFFFFFFFFFFFFFFF8) = *(&v76[v198] & 0xFFFFFFFFFFFFFFF8);
      v83 = 1;
      goto LABEL_212;
    case 2u:
      v85 = *v76;
      *((&a1[v225] & v226) + 0x10) = *((&v37[v225] & v226) + 0x10);
      *v75 = v85;
      v83 = 2;
      goto LABEL_212;
    case 3u:
      *v75 = *v76;
      v83 = 3;
      goto LABEL_212;
    case 4u:
      (*(v203 + 32))(&a1[v225] & v226, &v37[v225] & v226, v204);
      v83 = 4;
      goto LABEL_212;
    case 5u:
      *v75 = *v76;
      v83 = 5;
      goto LABEL_212;
    case 6u:
      v109 = v39;
      v91 = v28 + 1;
      (*(v219 + 32))(&a1[v225] & v226, v76, v211);
      v110 = ((v75 + v221) & v109);
      v111 = (&v76[v221] & v109);
      if (__swift_getEnumTagSinglePayload(v111, 1, v212))
      {
        memcpy(v110, v111, v208);
      }

      else
      {
        (*(v192 + 32))(v110, v111, v212);
        __swift_storeEnumTagSinglePayload(v110, 0, 1, v212);
      }

      v157 = ((v110 + v216) & 0xFFFFFFFFFFFFFFF8);
      v158 = ((v111 + v216) & 0xFFFFFFFFFFFFFFF8);
      *v157 = *v158;
      v159 = (v157 + 19) & 0xFFFFFFFFFFFFFFF8;
      v160 = (v158 + 19) & 0xFFFFFFFFFFFFFFF8;
      v161 = *v160;
      *(v159 + 4) = *(v160 + 4);
      *v159 = v161;
      v151 = 6;
      goto LABEL_246;
    case 7u:
      v90 = v39;
      v91 = v28 + 1;
      (*(v219 + 32))(&a1[v225] & v226, v76, v211);
      v92 = ((v75 + v221) & v90);
      v93 = (&v76[v221] & v90);
      if (__swift_getEnumTagSinglePayload(v93, 1, v212))
      {
        memcpy(v92, v93, v208);
      }

      else
      {
        (*(v192 + 32))(v92, v93, v212);
        __swift_storeEnumTagSinglePayload(v92, 0, 1, v212);
      }

      v142 = ((v92 + v216) & 0xFFFFFFFFFFFFFFF8);
      v143 = ((v93 + v216) & 0xFFFFFFFFFFFFFFF8);
      *v142 = *v143;
      v144 = (v142 + 19) & 0xFFFFFFFFFFFFFFF8;
      v145 = (v143 + 19) & 0xFFFFFFFFFFFFFFF8;
      v146 = *v145;
      *(v144 + 4) = *(v145 + 4);
      *v144 = v146;
      v147 = ((v75 + v19 + 7) & 0xFFFFFFFFFFFFFFF8);
      v148 = (&v76[v19 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v147 = *v148;
      v149 = ((v147 + 23) & 0xFFFFFFFFFFFFFFF8);
      v150 = ((v148 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v149 = *v150;
      *((v149 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v150 + 23) & 0xFFFFFFFFFFFFFFF8);
      v151 = 7;
LABEL_246:
      *(v75 + v28) = v151;
      goto LABEL_214;
    case 8u:
      v184 = v26;
      (*(v201 + 32))(&a1[v225] & v226, &v37[v225] & v226, v202);
      v118 = ((v75 + v194 + 7) & 0xFFFFFFFFFFFFFFF8);
      v119 = (&v76[v194 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v118 = *v119;
      v120 = ((v118 + v195) & v193);
      v121 = ((v119 + v195) & v193);
      if (v197 == v196)
      {
        if (!__swift_getEnumTagSinglePayload(v121, v197, v211))
        {
          v122 = v221;
          v123 = ((v121 + v221) & v39);
          goto LABEL_257;
        }

LABEL_236:
        memcpy(v120, v121, v19);
        v128 = v208;
        v130 = v187;
        v129 = v188;
        v131 = v186;
        goto LABEL_273;
      }

      v123 = ((v121 + v221) & v39);
      if (v185 == v196)
      {
        if (v206 >= 2 && __swift_getEnumTagSinglePayload((v121 + v221) & v39, v206, v212) >= 2)
        {
          goto LABEL_236;
        }
      }

      else
      {
        v164 = *(((v123 + v216) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v164 >= 0xFFFFFFFF)
        {
          LODWORD(v164) = -1;
        }

        if ((v164 + 1) >= 2)
        {
          goto LABEL_236;
        }
      }

      v122 = v221;
LABEL_257:
      (*(v219 + 32))(v120, v121, v211);
      v165 = ((v120 + v122) & v39);
      if (__swift_getEnumTagSinglePayload(v123, 1, v212))
      {
        memcpy(v165, v123, v208);
      }

      else
      {
        (*(v192 + 32))(v165, v123, v212);
        __swift_storeEnumTagSinglePayload(v165, 0, 1, v212);
      }

      v174 = v191;
      v175 = ((v165 + v216) & 0xFFFFFFFFFFFFFFF8);
      v176 = ((v123 + v216) & 0xFFFFFFFFFFFFFFF8);
      *v175 = *v176;
      v177 = (v176 + 19) & 0xFFFFFFFFFFFFFFF8;
      v178 = *v177;
      v179 = (v175 + 19) & 0xFFFFFFFFFFFFFFF8;
      *(v179 + 4) = *(v177 + 4);
      *v179 = v178;
      v128 = v208;
      v130 = v187;
      v129 = v188;
      v131 = v186;
      if (v206)
      {
LABEL_274:
        v180 = (((v205 + 7 + v174) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
        *((v120 + v180 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v121 + v180 + 7) & 0xFFFFFFFFFFFFFFF8);
        v181 = (((v205 + 7 + v128) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
        if (v181 <= v129)
        {
          v181 = v129;
        }

        if (v130 > v181)
        {
          v181 = v130;
        }

        if (v184 > v181)
        {
          v181 = v184;
        }

        if (v131 > v181)
        {
          v181 = v131;
        }

        *(v75 + v181) = 8;
LABEL_213:
        v91 = v223;
LABEL_214:
        v100 = ((v75 + v91 + 7) & 0xFFFFFFFFFFFFFFF8);
        v101 = (&v76[v91 + 7] & 0xFFFFFFFFFFFFFFF8);
        *v100 = *v101;
        v102 = (v100 + 15) & 0xFFFFFFFFFFFFFFF8;
        v103 = (v101 + 15) & 0xFFFFFFFFFFFFFFF8;
        v104 = *v103;
        v105 = *(v103 + 16);
        *(v102 + 32) = *(v103 + 32);
        *v102 = v104;
        *(v102 + 16) = v105;
        *(v102 + 40) = *(v103 + 40);
        v74 = 1;
LABEL_215:
        a1[v33] = v74;
        return a1;
      }

LABEL_273:
      v174 = v128;
      goto LABEL_274;
    case 9u:
      (*(v199 + 32))(&a1[v225] & v226, &v37[v225] & v226, v200);
      v83 = 9;
LABEL_212:
      *(v75 + v28) = v83;
      goto LABEL_213;
    default:
      v91 = v28 + 1;
      memcpy((&a1[v225] & v226), (&v37[v225] & v226), v223);
      goto LABEL_214;
  }
}