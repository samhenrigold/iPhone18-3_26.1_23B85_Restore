uint64_t sub_23D98F66C()
{

  return MEMORY[0x2822009F8](sub_23D98F768, 0, 0);
}

uint64_t sub_23D98F768()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[29];
  v4 = v0[30];
  v5 = v0[16];
  sub_23D91F2DC(v1, v2, &qword_27E2F6638, &qword_23D9E0B98);
  v6 = *(v4 + 48);
  v7 = sub_23D9D89C4();
  v0[38] = v7;
  v8 = *(v7 - 8);
  v9 = v8[4];
  v0[39] = v9;
  v0[40] = (v8 + 4) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v3, v2, v7);
  v10 = v8[7];
  v0[41] = v10;
  v0[42] = (v8 + 7) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v10(v3, 0, 1, v7);
  v11 = OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel__systemLocale;
  v0[43] = OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel__systemLocale;
  swift_beginAccess();
  sub_23D992220(v3, v5 + v11, &qword_27E2F4670, &qword_23D9DC650);
  swift_endAccess();
  sub_23D91F344(v2 + v6, &qword_27E2F5900, &unk_23D9DC640);
  sub_23D91F2DC(v1, v2, &qword_27E2F6638, &qword_23D9E0B98);
  sub_23D98D19C(v2 + *(v4 + 48));
  v12 = v8[1];
  v0[44] = v12;
  v0[45] = (v8 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v2, v7);
  sub_23D9D8E14();
  v13 = OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel___observationRegistrar;
  v0[46] = OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel___selection;
  v0[47] = v13;
  swift_beginAccess();
  v0[48] = 0;
  v14 = swift_task_alloc();
  v0[49] = v14;
  *v14 = v0;
  v14[1] = sub_23D98F9E0;
  v15 = v0[25];
  v16 = v0[26];

  return MEMORY[0x2822003E8](v15, 0, 0, v16);
}

uint64_t sub_23D98F9E0()
{

  return MEMORY[0x2822009F8](sub_23D98FADC, 0, 0);
}

uint64_t sub_23D98FADC()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 200);
  if ((*(*(v0 + 248) + 48))(v2, 1, v1) == 1)
  {
    v3 = *(v0 + 280);
    (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
    sub_23D91F344(v3, &qword_27E2F6638, &qword_23D9E0B98);

    v4 = *(v0 + 8);

    return v4();
  }

  v7 = *(v0 + 256);
  v6 = *(v0 + 264);
  v8 = *(v0 + 192);
  v9 = *(v0 + 168);
  v50 = *(v0 + 160);
  v51 = *(v0 + 368);
  v10 = *(v0 + 144);
  v53 = *(v0 + 136);
  v48 = *(v0 + 128);
  v11 = *(v1 + 48);
  (*(v0 + 312))(v6, v2, *(v0 + 304));
  sub_23D92A2BC(v2 + v11, v6 + v11, &qword_27E2F5900, &unk_23D9DC640);
  sub_23D91F2DC(v6, v7, &qword_27E2F6638, &qword_23D9E0B98);
  v12 = v7 + *(v1 + 48);
  sub_23D91F2DC(v48 + v51, v8, &qword_27E2F5900, &unk_23D9DC640);
  v13 = *(v50 + 48);
  sub_23D91F2DC(v8, v9, &qword_27E2F5900, &unk_23D9DC640);
  sub_23D91F2DC(v12, v9 + v13, &qword_27E2F5900, &unk_23D9DC640);
  v14 = *(v10 + 48);
  if (v14(v9, 1, v53) == 1)
  {
    v15 = *(v0 + 136);
    sub_23D91F344(*(v0 + 192), &qword_27E2F5900, &unk_23D9DC640);
    if (v14(v9 + v13, 1, v15) == 1)
    {
      sub_23D91F344(*(v0 + 168), &qword_27E2F5900, &unk_23D9DC640);
LABEL_13:
      v31 = *(v0 + 368);
      v32 = *(v0 + 176);
      v33 = *(v0 + 128);
      sub_23D91F2DC(v12, v32, &qword_27E2F5900, &unk_23D9DC640);
      swift_beginAccess();
      sub_23D992220(v32, v33 + v31, &qword_27E2F5900, &unk_23D9DC640);
      swift_endAccess();
      v54 = *(v0 + 384);
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v16 = *(v0 + 136);
  sub_23D91F2DC(*(v0 + 168), *(v0 + 184), &qword_27E2F5900, &unk_23D9DC640);
  v17 = v14(v9 + v13, 1, v16);
  v18 = *(v0 + 184);
  v19 = *(v0 + 192);
  if (v17 == 1)
  {
    v21 = *(v0 + 136);
    v20 = *(v0 + 144);
    sub_23D91F344(*(v0 + 192), &qword_27E2F5900, &unk_23D9DC640);
    (*(v20 + 8))(v18, v21);
LABEL_10:
    sub_23D91F344(*(v0 + 168), &qword_27E2F6620, &qword_23D9E0B80);
    goto LABEL_11;
  }

  v25 = *(v0 + 168);
  v55 = v12;
  v26 = *(v0 + 144);
  v27 = *(v0 + 152);
  v28 = *(v0 + 136);
  (*(v26 + 32))(v27, v9 + v13, v28);
  sub_23D990C78(&qword_27E2F65D8, MEMORY[0x277CE6738], MEMORY[0x277CE6740]);
  v29 = sub_23D9DA894();
  v30 = *(v26 + 8);
  v30(v27, v28);
  sub_23D91F344(v19, &qword_27E2F5900, &unk_23D9DC640);
  v30(v18, v28);
  v12 = v55;
  sub_23D91F344(v25, &qword_27E2F5900, &unk_23D9DC640);
  if (v29)
  {
    goto LABEL_13;
  }

LABEL_11:
  v22 = *(v0 + 384);
  v23 = *(v0 + 128);
  swift_getKeyPath();
  v24 = swift_task_alloc();
  *(v24 + 16) = v23;
  *(v24 + 24) = v12;
  *(v0 + 112) = v23;
  sub_23D990C78(&qword_27E2F6578, type metadata accessor for VoiceSelectionModel, &protocol conformance descriptor for VoiceSelectionModel);
  sub_23D9D8A04();
  v54 = v22;

LABEL_14:
  v34 = v12;
  v35 = *(v0 + 352);
  v52 = *(v0 + 344);
  v49 = *(v0 + 328);
  v36 = *(v0 + 304);
  v47 = *(v0 + 312);
  v38 = *(v0 + 264);
  v37 = *(v0 + 272);
  v39 = *(v0 + 256);
  v41 = *(v0 + 232);
  v40 = *(v0 + 240);
  v42 = *(v0 + 128);
  sub_23D91F344(v34, &qword_27E2F5900, &unk_23D9DC640);
  v35(v39, v36);
  sub_23D92A2BC(v38, v37, &qword_27E2F6638, &qword_23D9E0B98);
  v43 = *(v40 + 48);
  v47(v41, v37, v36);
  v49(v41, 0, 1, v36);
  swift_beginAccess();
  sub_23D992220(v41, v42 + v52, &qword_27E2F4670, &qword_23D9DC650);
  swift_endAccess();
  sub_23D91F344(v37 + v43, &qword_27E2F5900, &unk_23D9DC640);
  *(v0 + 384) = v54;
  v44 = swift_task_alloc();
  *(v0 + 392) = v44;
  *v44 = v0;
  v44[1] = sub_23D98F9E0;
  v45 = *(v0 + 200);
  v46 = *(v0 + 208);

  return MEMORY[0x2822003E8](v45, 0, 0, v46);
}

uint64_t sub_23D990190()
{
  swift_getKeyPath();
  sub_23D990C78(&qword_27E2F6578, type metadata accessor for VoiceSelectionModel, &protocol conformance descriptor for VoiceSelectionModel);
  sub_23D9D8A14();

  v1 = *(v0 + OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel__streamTasks);
  v2 = *(v1 + 16);

  if (v2)
  {
    v4 = 0;
    while (v4 < *(v1 + 16))
    {
      v5 = v4 + 1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4750, &unk_23D9DC7C0);
      sub_23D9DAA44();

      v4 = v5;
      if (v2 == v5)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    return sub_23D98EDB0(MEMORY[0x277D84F90]);
  }

  return result;
}

uint64_t VoiceSelectionModel.deinit()
{
  sub_23D990190();
  sub_23D91F344(v0 + OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel___selection, &qword_27E2F5900, &unk_23D9DC640);
  sub_23D91F344(v0 + OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel__systemLocale, &qword_27E2F4670, &qword_23D9DC650);

  v1 = OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel___observationRegistrar;
  v2 = sub_23D9D8A54();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t VoiceSelectionModel.__deallocating_deinit()
{
  sub_23D990190();
  sub_23D91F344(v0 + OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel___selection, &qword_27E2F5900, &unk_23D9DC640);
  sub_23D91F344(v0 + OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel__systemLocale, &qword_27E2F4670, &qword_23D9DC650);

  v1 = OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel___observationRegistrar;
  v2 = sub_23D9D8A54();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_23D990520(uint64_t a1)
{
  v2 = sub_23D9D9664();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_23D9D97F4();
}

uint64_t sub_23D9905EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXSUISystemDefaultVoiceSelectionCell(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_7()
{
  v1 = type metadata accessor for AXSUISystemDefaultVoiceSelectionCell(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v2 + v1[7];
  v4 = sub_23D9D8C74();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!v6(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);

  sub_23D91F080(*(v2 + v1[9]), *(v2 + v1[9] + 8));
  v7 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D88, &qword_23D9DD4E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_23D9D9664();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  v9 = v2 + v1[11];
  if (!v6(v9, 1, v4))
  {
    (*(v5 + 8))(v9, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_23D990954(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AXSUISystemDefaultVoiceSelectionCell(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_23D9909C8()
{
  result = qword_27E2F6580;
  if (!qword_27E2F6580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6568, &unk_23D9E0950);
    sub_23D990A54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6580);
  }

  return result;
}

unint64_t sub_23D990A54()
{
  result = qword_27E2F6588;
  if (!qword_27E2F6588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6590, &qword_23D9E0990);
    sub_23D990AD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6588);
  }

  return result;
}

unint64_t sub_23D990AD8()
{
  result = qword_27E2F6598;
  if (!qword_27E2F6598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F65A0, &qword_23D9E0998);
    sub_23D990B90();
    sub_23D91F01C(&qword_27E2F65C8, &qword_27E2F65D0, &qword_23D9E09B0, MEMORY[0x277CDD7F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6598);
  }

  return result;
}

unint64_t sub_23D990B90()
{
  result = qword_27E2F65A8;
  if (!qword_27E2F65A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F65B0, &qword_23D9E09A0);
    sub_23D91F01C(&qword_27E2F65B8, &qword_27E2F65C0, &qword_23D9E09A8, &protocol conformance descriptor for AXSUISpecifierLink<A, B>);
    sub_23D990C78(&qword_27E2F4818, type metadata accessor for AXSUIVoiceLoader, &unk_23D9E2550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F65A8);
  }

  return result;
}

uint64_t sub_23D990C78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23D990D24(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v5 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      do
      {
        v3 += 8;
        v4 += 8;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4750, &unk_23D9DC7C0);
        v5 = sub_23D9DAA34();

        if ((v5 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_23D990E24(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_23D9DAFC4() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_23D990EB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23D9D8DA4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6620, &qword_23D9E0B80);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_23D91F2DC(a1, &v21 - v12, &qword_27E2F5900, &unk_23D9DC640);
  sub_23D91F2DC(a2, &v13[v15], &qword_27E2F5900, &unk_23D9DC640);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_23D91F2DC(v13, v10, &qword_27E2F5900, &unk_23D9DC640);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_23D990C78(&qword_27E2F65D8, MEMORY[0x277CE6738], MEMORY[0x277CE6740]);
      v18 = sub_23D9DA894();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_23D91F344(v13, &qword_27E2F5900, &unk_23D9DC640);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_23D91F344(v13, &qword_27E2F6620, &qword_23D9E0B80);
    v17 = 1;
    return v17 & 1;
  }

  sub_23D91F344(v13, &qword_27E2F5900, &unk_23D9DC640);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_23D9911D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23D9D89C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6640, &qword_23D9E0BA0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_23D91F2DC(a1, &v21 - v12, &qword_27E2F4670, &qword_23D9DC650);
  sub_23D91F2DC(a2, &v13[v15], &qword_27E2F4670, &qword_23D9DC650);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_23D91F2DC(v13, v10, &qword_27E2F4670, &qword_23D9DC650);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_23D990C78(&qword_27E2F6648, MEMORY[0x277CC9788], MEMORY[0x277CC97A0]);
      v18 = sub_23D9DA894();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_23D91F344(v13, &qword_27E2F4670, &qword_23D9DC650);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_23D91F344(v13, &qword_27E2F6640, &qword_23D9E0BA0);
    v17 = 1;
    return v17 & 1;
  }

  sub_23D91F344(v13, &qword_27E2F4670, &qword_23D9DC650);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_23D9915C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F65E0, &qword_23D9E0A20);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_23D9916A8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F65E0, &qword_23D9E0A20) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23D928310;

  return sub_23D98F358(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_23D99182C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D38, &unk_23D9DD440);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_23D99197C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D38, &unk_23D9DD440);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_23D991AB8(uint64_t a1)
{
  sub_23D991CE8(319, &qword_27E2F45F0, &qword_27E2F4470, &qword_23D9DC2B0, MEMORY[0x277CE6748]);
  if (v1 <= 0x3F)
  {
    sub_23D991DB0(319, &qword_27E2F46A0, MEMORY[0x277D839B0], MEMORY[0x277CE10B0]);
    if (v2 <= 0x3F)
    {
      sub_23D991D4C(319, &qword_27E2F6600, type metadata accessor for VoiceSelectionModel, MEMORY[0x277CE10B0]);
      if (v3 <= 0x3F)
      {
        sub_23D991CE8(319, &qword_27E2F4668, &qword_27E2F4460, &qword_23D9DC2A0, MEMORY[0x277CE10B0]);
        if (v4 <= 0x3F)
        {
          sub_23D991D4C(319, &qword_27E2F4658, MEMORY[0x277D70110], MEMORY[0x277CDF470]);
          if (v5 <= 0x3F)
          {
            sub_23D991DB0(319, &qword_27E2F4338, &type metadata for AXSUIVoiceOverSpeechViewContext, MEMORY[0x277CDF470]);
            if (v6 <= 0x3F)
            {
              sub_23D991D4C(319, &qword_27E2F4D58, MEMORY[0x277CDFA20], MEMORY[0x277CDF470]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_23D991CE8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_23D991D4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_23D991DB0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_23D991E08(uint64_t a1)
{
  sub_23D991D4C(319, &qword_27E2F6618, MEMORY[0x277CE6738], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23D991D4C(319, &qword_27E2F4690, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23D9D8A54();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_23D9920C4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6568, &unk_23D9E0950);
  sub_23D9D8DA4();
  sub_23D9909C8();
  sub_23D990C78(&qword_27E2F65D8, MEMORY[0x277CE6738], MEMORY[0x277CE6740]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23D9921A8()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel__streamTasks) = *(v0 + 24);
}

uint64_t sub_23D992220(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_23D992288(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
}

uint64_t sub_23D9922CC()
{
  v1 = type metadata accessor for AXSUISystemDefaultVoiceSelectionCell(0);
  v2 = *(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + ((v2 + 32) & ~v2);

  v4 = v3 + v1[7];
  v5 = sub_23D9D8C74();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (!v7(v4, 1, v5))
  {
    (*(v6 + 8))(v4, v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);

  sub_23D91F080(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v8 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D88, &qword_23D9DD4E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_23D9D9664();
    (*(*(v9 - 8) + 8))(v3 + v8, v9);
  }

  else
  {
  }

  v10 = v3 + v1[11];
  if (!v7(v10, 1, v5))
  {
    (*(v6 + 8))(v10, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_23D992538(uint64_t a1)
{
  v4 = *(type metadata accessor for AXSUISystemDefaultVoiceSelectionCell(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23D928310;

  return sub_23D98C908(a1, v6, v7, v1 + v5);
}

double sub_23D992628@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for AXSUISystemDefaultVoiceSelectionCell(0);
  sub_23D98B114(v5);
  v2 = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5[4];
  *(a1 + 80) = v6;
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_23D992724()
{

  return swift_deallocObject();
}

unint64_t sub_23D99278C()
{
  result = qword_27E2F6690;
  if (!qword_27E2F6690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6688, &qword_23D9E0C88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6678, &qword_23D9E0C78);
    sub_23D992870();
    sub_23D91B650();
    swift_getOpaqueTypeConformance2();
    sub_23D927AFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6690);
  }

  return result;
}

unint64_t sub_23D992870()
{
  result = qword_27E2F6698;
  if (!qword_27E2F6698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6678, &qword_23D9E0C78);
    sub_23D992928();
    sub_23D91F01C(&qword_27E2F43D0, &qword_27E2F43D8, &qword_23D9DC0B8, MEMORY[0x277CE0870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6698);
  }

  return result;
}

unint64_t sub_23D992928()
{
  result = qword_27E2F66A0;
  if (!qword_27E2F66A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6670, &qword_23D9E0C70);
    sub_23D990C78(&qword_27E2F4718, type metadata accessor for AXSUIVoiceSettings, &protocol conformance descriptor for AXSUIVoiceSettings);
    sub_23D91F01C(&qword_27E2F66A8, &qword_27E2F66B0, &unk_23D9E0C90, MEMORY[0x277CE0870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F66A0);
  }

  return result;
}

uint64_t sub_23D992A18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23D992A84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6688, &qword_23D9E0C88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D992AF4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_23D91E0AC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_23D992B38(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_23D9274BC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_23D992BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F42A8, &unk_23D9DBF40);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_23D992D34(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F42A8, &unk_23D9DBF40);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for VoiceRotorDetailView(uint64_t a1)
{
  result = qword_27E2F66C0;
  if (!qword_27E2F66C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23D992EBC(uint64_t a1)
{
  sub_23D91E5A8(319);
  if (v1 <= 0x3F)
  {
    sub_23D992F50(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23D992F50(uint64_t a1)
{
  if (!qword_27E2F4668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4460, &qword_23D9DC2A0);
    v1 = sub_23D9DA3E4();
    if (!v2)
    {
      atomic_store(v1, &qword_27E2F4668);
    }
  }
}

uint64_t sub_23D992FD0@<X0>(uint64_t *a2@<X8>)
{
  result = sub_23D9DAC04();
  *a2 = result;
  return result;
}

uint64_t sub_23D993028@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24 = a1;
  v25 = a2;
  v22 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D40, &qword_23D9DEA10);
  v20 = *(v10 - 8);
  v21 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v23 = &v20 - v14;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5550, &unk_23D9E2B60);
  sub_23D99515C();
  sub_23D9DA5B4();
  v15 = v29;
  v30 = v29;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  sub_23D9DA5C4();
  if (v15 == v29)
  {
    return (*(v20 + 56))(v22, 1, 1, v21);
  }

  while (1)
  {
    v28 = a5;
    v29 = v15;
    v26 = a3;
    v27 = a4;
    v16 = v23;
    sub_23D9DA5E4();
    v26 = a3;
    v27 = a4;
    v28 = a5;
    sub_23D9DA5D4();
    sub_23D994F08(v16, v12);
    v17 = v24(v12);
    if (v6)
    {
      return sub_23D91F344(v12, &qword_27E2F4D40, &qword_23D9DEA10);
    }

    if (v17)
    {
      break;
    }

    sub_23D91F344(v12, &qword_27E2F4D40, &qword_23D9DEA10);
    v26 = a3;
    v27 = a4;
    v28 = a5;
    sub_23D9DA5C4();
    v15 = v30;
    if (v30 == v29)
    {
      return (*(v20 + 56))(v22, 1, 1, v21);
    }
  }

  v19 = v22;
  sub_23D994F08(v12, v22);
  return (*(v20 + 56))(v19, 0, 1, v21);
}

uint64_t sub_23D9932A4@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24 = a1;
  v6 = sub_23D9D8ED4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v21 = v7;
    v22 = a3;
    v13 = *(v7 + 16);
    v12 = v7 + 16;
    v23 = v13;
    v14 = (v12 - 8);
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    while (1)
    {
      v23(v10, v15, v6, v8);
      v17 = v24(v10);
      if (v3)
      {
        return (*v14)(v10, v6);
      }

      if (v17)
      {
        break;
      }

      (*v14)(v10, v6);
      v15 += v16;
      if (!--v11)
      {
        v18 = 1;
        v7 = v21;
        a3 = v22;
        return (*(v7 + 56))(a3, v18, 1, v6);
      }
    }

    v7 = v21;
    a3 = v22;
    (*(v21 + 32))(v22, v10, v6);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v7 + 56))(a3, v18, 1, v6);
}

uint64_t sub_23D993478@<X0>(uint64_t a1@<X8>)
{
  v174 = a1;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F66D0, &unk_23D9E0D80);
  MEMORY[0x28223BE20](v172);
  v173 = &v126 - v2;
  v161 = sub_23D9D99A4();
  v160 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v159 = &v126 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4760, &qword_23D9E0740);
  MEMORY[0x28223BE20](v4 - 8);
  v139 = &v126 - v5;
  v164 = sub_23D9D8C74();
  v175 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v162 = &v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4460, &qword_23D9DC2A0);
  MEMORY[0x28223BE20](v7 - 8);
  v158 = &v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v140 = &v126 - v10;
  MEMORY[0x28223BE20](v11);
  v136 = &v126 - v12;
  MEMORY[0x28223BE20](v13);
  v135 = &v126 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650);
  MEMORY[0x28223BE20](v15 - 8);
  v138 = &v126 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v163 = &v126 - v18;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6658, &qword_23D9E1E80);
  MEMORY[0x28223BE20](v137);
  v167 = &v126 - v19;
  v144 = type metadata accessor for AXSUIVoiceSettings(0);
  MEMORY[0x28223BE20](v144);
  v168 = &v126 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F66D8, &qword_23D9E0D90);
  v146 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v143 = &v126 - v21;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F66E0, &qword_23D9E0D98);
  v142 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v141 = &v126 - v22;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F66E8, &qword_23D9E0DA0);
  MEMORY[0x28223BE20](v149);
  v150 = &v126 - v23;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F66F0, &qword_23D9E0DA8);
  v156 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v152 = &v126 - v24;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F66F8, &qword_23D9E0DB0);
  MEMORY[0x28223BE20](v169);
  v151 = &v126 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v154 = &v126 - v27;
  v155 = sub_23D9D90B4();
  v153 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v170 = &v126 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F42A8, &unk_23D9DBF40);
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v126 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6700, qword_23D9E0DB8);
  MEMORY[0x28223BE20](v33 - 8);
  v35 = &v126 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D40, &qword_23D9DEA10);
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v39 = &v126 - v38;
  v177 = type metadata accessor for VoiceRotorDetailView(0);
  sub_23D9DA6B4();
  swift_getKeyPath();
  sub_23D9DA6D4();

  (*(v30 + 8))(v32, v29);
  v179 = v1;
  sub_23D993028(sub_23D994C5C, v178, v187, v188, v189, v35);

  if ((*(v37 + 48))(v35, 1, v36) == 1)
  {
    sub_23D91F344(v35, &qword_27E2F6700, qword_23D9E0DB8);
    swift_storeEnumTagMultiPayload();
    sub_23D994C7C();
    return sub_23D9D9B14();
  }

  else
  {
    sub_23D994F08(v35, v39);
    MEMORY[0x23EEF3850](v36);
    swift_getKeyPath();
    sub_23D9DA574();

    v41 = sub_23D9D89C4();
    v42 = *(v41 - 8);
    v43 = *(v42 + 56);
    v44 = v163;
    v133 = v41;
    v132 = v43;
    v131 = v42 + 56;
    (v43)(v163, 1, 1);
    swift_getKeyPath();
    v134 = v36;
    v148 = v39;
    sub_23D9DA574();

    v182 = *v185;
    v183 = *&v185[16];
    v184 = v186;
    v45 = *(v177 + 24);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
    v177 = v45;
    v47 = v135;
    v176 = v46;
    sub_23D9DA3B4();
    v48 = v175;
    v49 = *(v175 + 48);
    v50 = v164;
    v166 = v175 + 48;
    v165 = v49;
    v51 = v1;
    if (v49(v47, 1, v164))
    {
      sub_23D91F344(v47, &qword_27E2F4460, &qword_23D9DC2A0);
      v52 = 0;
      v53 = 0xE000000000000000;
    }

    else
    {
      v54 = v47;
      v55 = v50;
      v56 = v162;
      (*(v48 + 16))(v162, v54, v55);
      sub_23D91F344(v54, &qword_27E2F4460, &qword_23D9DC2A0);
      sub_23D9BB28C();
      v52 = v57;
      v53 = v58;
      v59 = v56;
      v50 = v55;
      (*(v48 + 8))(v59, v55);
    }

    v60 = v144;
    v180 = v52;
    v181 = v53;
    v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5618, &unk_23D9E0BF0);
    sub_23D9DA544();

    v135 = v187;
    v130 = v188;
    v129 = v189;
    v128 = v190;
    v61 = v136;
    sub_23D9DA3B4();
    v62 = v165(v61, 1, v50);
    v63 = v50;
    v64 = v167;
    v171 = v51;
    if (v62)
    {
      sub_23D91F344(v61, &qword_27E2F4460, &qword_23D9DC2A0);
      v136 = 0;
      v127 = 0;
    }

    else
    {
      v65 = v175;
      v66 = v162;
      (*(v175 + 16))(v162, v61, v63);
      sub_23D91F344(v61, &qword_27E2F4460, &qword_23D9DC2A0);
      sub_23D9BB28C();
      v136 = v67;
      v127 = v68;
      (*(v65 + 8))(v66, v63);
    }

    *&v182 = MEMORY[0x277D84FA0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4778, &qword_23D9DC800);
    sub_23D9DA5A4();
    v69 = *v185;
    v126 = *&v185[8];
    v70 = v139;
    v71 = v64;
    sub_23D9DA4E4();
    v72 = v138;
    sub_23D91F2DC(v44, v138, &qword_27E2F4670, &qword_23D9DC650);
    v73 = v168;
    v74 = &v168[v60[7]];
    LOBYTE(v182) = 0;
    sub_23D9DA3A4();
    v75 = *&v185[8];
    *v74 = v185[0];
    *(v74 + 1) = v75;
    sub_23D9D9C64();
    v76 = v60[10];
    v132(v73 + v76, 1, 1, v133);
    v77 = (v73 + v60[12]);
    v78 = v73 + v60[13];
    *v78 = swift_getKeyPath();
    *(v78 + 8) = 0;
    v79 = v73 + v60[14];
    LOBYTE(v182) = 0;
    sub_23D9DA3A4();
    v80 = *&v185[8];
    *v79 = v185[0];
    *(v79 + 8) = v80;
    v81 = v60[15];
    *&v182 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F46B0, &qword_23D9E0CB0);
    sub_23D9DA3A4();
    *(v73 + v81) = *v185;
    sub_23D91F2DC(v70, v73, &qword_27E2F4760, &qword_23D9E0740);
    sub_23D929AE4(v72, v73 + v76);
    *(v73 + v60[11]) = 61;
    v82 = v73 + v60[5];
    *v82 = v69;
    *(v82 + 8) = v126;
    v83 = (v73 + v60[9]);
    *v83 = 0;
    v83[1] = 0;
    sub_23D91F344(v72, &qword_27E2F4670, &qword_23D9DC650);
    sub_23D91F344(v70, &qword_27E2F4760, &qword_23D9E0740);
    sub_23D91F344(v163, &qword_27E2F4670, &qword_23D9DC650);
    sub_23D91F344(v71, &qword_27E2F6658, &qword_23D9E1E80);
    v84 = (v73 + v60[6]);
    v85 = v130;
    *v84 = v135;
    v84[1] = v85;
    v86 = v128;
    v84[2] = v129;
    v84[3] = v86;
    v87 = v127;
    *v77 = v136;
    v77[1] = v87;
    swift_getKeyPath();
    sub_23D9DA574();

    v182 = *v185;
    v183 = *&v185[16];
    v184 = v186;
    v88 = v140;
    sub_23D9DA3B4();
    v89 = v164;
    if (v165(v88, 1, v164))
    {
      sub_23D91F344(v88, &qword_27E2F4460, &qword_23D9DC2A0);
      v90 = 0;
      v91 = 0xE000000000000000;
    }

    else
    {
      v92 = v175;
      v93 = v162;
      (*(v175 + 16))(v162, v88, v89);
      sub_23D91F344(v88, &qword_27E2F4460, &qword_23D9DC2A0);
      sub_23D9BB28C();
      v90 = v94;
      v91 = v95;
      (*(v92 + 8))(v93, v89);
    }

    v180 = v90;
    v181 = v91;
    sub_23D9DA544();

    v96 = sub_23D994EC0(&qword_27E2F4718, type metadata accessor for AXSUIVoiceSettings, &protocol conformance descriptor for AXSUIVoiceSettings);
    v97 = v143;
    v98 = v168;
    sub_23D9DA054();

    sub_23D995014(v98);
    v99 = v160;
    v100 = v159;
    v101 = v161;
    (*(v160 + 104))(v159, *MEMORY[0x277CDDDB8], v161);
    v187 = v60;
    v188 = v96;
    swift_getOpaqueTypeConformance2();
    v102 = v141;
    v103 = v147;
    sub_23D9DA144();
    (*(v99 + 8))(v100, v101);
    (*(v146 + 8))(v97, v103);
    KeyPath = swift_getKeyPath();
    v105 = v150;
    (*(v142 + 32))(v150, v102, v145);
    v106 = v105 + *(v149 + 36);
    *v106 = KeyPath;
    *(v106 + 8) = 0;
    v107 = v158;
    sub_23D9DA3B4();
    if (v165(v107, 1, v89))
    {
      sub_23D91F344(v107, &qword_27E2F4460, &qword_23D9DC2A0);
      v108 = 0;
      v109 = 0xE000000000000000;
    }

    else
    {
      v110 = v175;
      v111 = v162;
      (*(v175 + 16))(v162, v107, v89);
      sub_23D91F344(v107, &qword_27E2F4460, &qword_23D9DC2A0);
      sub_23D9BB28C();
      v108 = v112;
      v109 = v113;
      (*(v110 + 8))(v111, v89);
    }

    v114 = v169;
    v115 = v170;
    v187 = v108;
    v188 = v109;
    sub_23D994D90();
    sub_23D91B650();
    v116 = v152;
    sub_23D9DA064();

    sub_23D91F344(v105, &qword_27E2F66E8, &qword_23D9E0DA0);
    v117 = sub_23D9D9074();
    v119 = v118;
    v120 = v151;
    v121 = &v151[*(v114 + 36)];
    v122 = type metadata accessor for AXSUIVoiceLoader(0);
    sub_23D9DA3D4();
    v123 = swift_getKeyPath();
    *v121 = v117;
    v121[1] = v119;
    v124 = v121 + *(v122 + 24);
    *v124 = v123;
    v124[8] = 0;
    (*(v156 + 32))(v120, v116, v157);
    v125 = v154;
    sub_23D99507C(v120, v154);
    sub_23D9950EC(v125, v173);
    swift_storeEnumTagMultiPayload();
    sub_23D994C7C();
    sub_23D9D9B14();
    sub_23D91F344(v125, &qword_27E2F66F8, &qword_23D9E0DB0);
    (*(v153 + 8))(v115, v155);
    return sub_23D91F344(v148, &qword_27E2F4D40, &qword_23D9DEA10);
  }
}

uint64_t sub_23D9949FC(uint64_t a1, void *a2)
{
  v3 = sub_23D9D90B4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D40, &qword_23D9DEA10);
  MEMORY[0x23EEF3850](v7);
  v8 = sub_23D9D9064();
  v10 = v9;
  (*(v4 + 8))(v6, v3);
  if (v8 == *a2 && v10 == a2[1])
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_23D9DAFC4();
  }

  return v12 & 1;
}

uint64_t sub_23D994B38(uint64_t a1)
{
  v2 = sub_23D9D8DA4();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_23D9D90A4();
}

uint64_t sub_23D994C04@<X0>(uint64_t *a2@<X8>)
{
  result = sub_23D9DAC04();
  *a2 = result;
  return result;
}

unint64_t sub_23D994C7C()
{
  result = qword_27E2F6708;
  if (!qword_27E2F6708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F66F8, &qword_23D9E0DB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F66E8, &qword_23D9E0DA0);
    sub_23D994D90();
    sub_23D91B650();
    swift_getOpaqueTypeConformance2();
    sub_23D994EC0(&qword_27E2F4818, type metadata accessor for AXSUIVoiceLoader, &unk_23D9E2550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6708);
  }

  return result;
}

unint64_t sub_23D994D90()
{
  result = qword_27E2F6710;
  if (!qword_27E2F6710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F66E8, &qword_23D9E0DA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F66D8, &qword_23D9E0D90);
    type metadata accessor for AXSUIVoiceSettings(255);
    sub_23D994EC0(&qword_27E2F4718, type metadata accessor for AXSUIVoiceSettings, &protocol conformance descriptor for AXSUIVoiceSettings);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_23D927AFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6710);
  }

  return result;
}

uint64_t sub_23D994EC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23D994F08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D40, &qword_23D9DEA10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D994FA0@<X0>(uint64_t *a2@<X8>)
{
  result = sub_23D9D9034();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23D995014(uint64_t a1)
{
  v2 = type metadata accessor for AXSUIVoiceSettings(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23D99507C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F66F8, &qword_23D9E0DB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D9950EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F66F8, &qword_23D9E0DB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23D99515C()
{
  result = qword_27E2F5580;
  if (!qword_27E2F5580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4D78, qword_23D9DD470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5580);
  }

  return result;
}

unint64_t sub_23D9951C4()
{
  result = qword_27E2F6718;
  if (!qword_27E2F6718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6720, qword_23D9E0EE8);
    sub_23D994C7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6718);
  }

  return result;
}

uint64_t sub_23D995250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23D9DAD74();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_23D9952BC(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_23D9DA7D4();
}

uint64_t AXSUITTSLanguageList.init(detail:accessory:collapseMacroLanguages:languageFilter:languages:additionalContent:overrideLanguage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15)
{
  v37 = a6;
  v36 = a5;
  v38 = a12;
  v39 = a7;
  v35 = a11;
  v34 = a13;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v34 - v21;

  v40 = v34;
  v41 = a14;
  v42 = a15;
  v23 = type metadata accessor for AXSUITTSLanguageList(0, &v40);
  v24 = v23[18];
  *(a9 + v24) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6BF0, &qword_23D9DD340);
  swift_storeEnumTagMultiPayload();
  v25 = a9 + v23[19];
  v43 = 1;
  sub_23D9DA3A4();
  v26 = *(&v40 + 1);
  *v25 = v40;
  *(v25 + 8) = v26;
  v27 = a9 + v23[20];
  *v27 = swift_getKeyPath();
  *(v27 + 8) = 0;
  v28 = a9 + v23[21];
  *v28 = swift_getKeyPath();
  *(v28 + 40) = 0;
  v29 = sub_23D9D8954();
  (*(*(v29 - 8) + 56))(v22, 1, 1, v29);
  sub_23D995A90(v22);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 48) = v36;
  v30 = v38;
  v31 = v39;
  *(a9 + 56) = v37;
  *(a9 + 64) = v31;
  v32 = v35;
  *(a9 + 32) = a10;
  *(a9 + 40) = v32;
  return sub_23D92A2BC(v30, a9 + v23[17], &qword_27E2F4210, &qword_23D9DBE60);
}

uint64_t AXSUITTSLanguageList.init<>(detail:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - v11;
  v13 = sub_23D9D8954();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  *(&v15 + 1) = MEMORY[0x277CE1420];
  *&v15 = a3;
  return AXSUITTSLanguageList.init(detail:accessory:collapseMacroLanguages:languageFilter:languages:additionalContent:overrideLanguage:)(a1, a2, 0, 0, 0, 0, 0, a5, 0, 0, v12, v15, a4, MEMORY[0x277CE1418]);
}

void sub_23D9957E4(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  sub_23D9D8954();
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_23D951300(v5);
  }

  sub_23D99DE54(a1, a2);
  *v2 = v5;
}

uint64_t sub_23D9958A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23D9D9954();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6BF0, &qword_23D9DD340);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  sub_23D91F2DC(v2 + *(a1 + 72), &v14 - v10, &unk_27E2F6BF0, &qword_23D9DD340);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(v6 + 32))(a2, v11, v5);
  }

  sub_23D9DACD4();
  v13 = sub_23D9D9D24();
  sub_23D9D91B4();

  sub_23D9D9944();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_23D995A90(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  MEMORY[0x28223BE20](v3);
  sub_23D91F2DC(a1, &v6 - v4, &qword_27E2F4210, &qword_23D9DBE60);
  sub_23D9DA3A4();
  return sub_23D91F344(a1, &qword_27E2F4210, &qword_23D9DBE60);
}

uint64_t sub_23D995B58(uint64_t a1)
{
  v3 = sub_23D9D9954();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(a1 + 80));
  v8 = *v7;
  v9 = *(v7 + 8);

  if ((v9 & 1) == 0)
  {
    sub_23D9DACD4();
    v10 = sub_23D9D9D24();
    sub_23D9D91B4();

    sub_23D9D9944();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
    return v12[1];
  }

  return v8;
}

uint64_t sub_23D995D24(uint64_t a1)
{
  sub_23D960024(a1, v3);
  sub_23D960024(v3, &v2);
  sub_23D9A016C();
  sub_23D9D9974();
  return __swift_destroy_boxed_opaque_existential_0(v3);
}

uint64_t sub_23D995D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v35 = *(a1 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](a1);
  v34 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23D9D8C54();
  MEMORY[0x28223BE20](v4);
  v31 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v26 - v8;
  v26[1] = v26 - v8;
  v10 = sub_23D9D8C94();
  v29 = *(v10 - 8);
  v30 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6888, &qword_23D9E1108);
  v14 = *(v13 - 8);
  v32 = v13;
  v33 = v14;
  MEMORY[0x28223BE20](v13);
  v27 = v26 - v15;
  sub_23D995B58(a1);
  sub_23D9D8AA4();

  v26[3] = v39[4];
  v26[2] = __swift_project_boxed_opaque_existential_1(v39, v39[3]);
  v16 = sub_23D9D89C4();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  v17 = MEMORY[0x277D84F90];
  v38 = MEMORY[0x277D84F90];
  sub_23D9A06BC(&qword_27E2F6890, MEMORY[0x277D702B8], MEMORY[0x277D702C0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6898, &qword_23D9E1110);
  sub_23D91F01C(&qword_27E2F68A0, &qword_27E2F6898, &qword_23D9E1110, MEMORY[0x277D83970]);
  sub_23D9DADD4();
  v38 = v17;
  sub_23D9DADD4();
  sub_23D9D8C84();
  v18 = v27;
  sub_23D9D8A84();
  (*(v29 + 8))(v12, v30);
  v20 = v34;
  v19 = v35;
  (*(v35 + 16))(v34, v28, a1);
  v21 = (*(v19 + 80) + 48) & ~*(v19 + 80);
  v22 = swift_allocObject();
  v23 = *(a1 + 32);
  *(v22 + 16) = *(a1 + 16);
  *(v22 + 32) = v23;
  (*(v19 + 32))(v22 + v21, v20, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45D0, &unk_23D9DC5C0);
  v24 = v32;
  sub_23D9D8E24();

  (*(v33 + 8))(v18, v24);
  return __swift_destroy_boxed_opaque_existential_0(v39);
}

uint64_t sub_23D996278(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v7[6] = a1;
  v7[7] = a3;
  v9 = sub_23D9D89A4();
  v7[12] = v9;
  v7[13] = *(v9 - 8);
  v7[14] = swift_task_alloc();
  v10 = sub_23D9D89C4();
  v7[15] = v10;
  v7[16] = *(v10 - 8);
  v7[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  v11 = swift_task_alloc();
  v12 = *a2;
  v7[18] = v11;
  v7[19] = v12;
  sub_23D9DA9B4();
  v7[20] = sub_23D9DA9A4();
  v14 = sub_23D9DA994();
  v7[21] = v14;
  v7[22] = v13;

  return MEMORY[0x2822009F8](sub_23D996410, v14, v13);
}

uint64_t sub_23D996410()
{
  v1 = *(v0 + 80);
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 32) = v1;
  v2 = type metadata accessor for AXSUITTSLanguageList(0, v0 + 16);
  *(v0 + 184) = sub_23D995B58(v2);
  v6 = (*MEMORY[0x277D700E8] + MEMORY[0x277D700E8]);
  v3 = swift_task_alloc();
  *(v0 + 192) = v3;
  *v3 = v0;
  v3[1] = sub_23D9964E0;
  v4 = *(v0 + 136);

  return v6(v4);
}

uint64_t sub_23D9964E0()
{
  v1 = *v0;

  v2 = *(v1 + 176);
  v3 = *(v1 + 168);

  return MEMORY[0x2822009F8](sub_23D996624, v3, v2);
}

uint64_t sub_23D996624()
{
  v29 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v7 = *(v0 + 96);
  v8 = *(v0 + 56);
  v26 = *(v0 + 80);
  v27 = *(v0 + 64);

  sub_23D9D89B4();
  (*(v4 + 8))(v2, v3);
  sub_23D9D8994();
  (*(v6 + 8))(v5, v7);
  v9 = swift_task_alloc();
  *(v9 + 16) = v27;
  *(v9 + 32) = v26;
  *(v9 + 48) = v8;
  v10 = sub_23D996DAC(sub_23D9A0670, v9, v1);

  v11 = sub_23D93D8F8(v10);

  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = sub_23D94FB78(*(v11 + 16), 0);
    v14 = *(sub_23D9D8954() - 8);
    sub_23D99F664(&v28, &v13[(*(v14 + 80) + 32) & ~*(v14 + 80)], v12, v11);
    v16 = v15;
    sub_23D92A324(v28);
    if (v16 == v12)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v13 = MEMORY[0x277D84F90];
LABEL_5:
  v17 = *(v0 + 144);
  v18 = *(v0 + 56);
  v19 = swift_task_alloc();
  v20 = *(v0 + 80);
  *(v19 + 16) = *(v0 + 64);
  *(v19 + 32) = v20;
  *(v19 + 48) = v18;
  *(v19 + 56) = v17;
  v28 = v13;

  sub_23D9957E4(sub_23D9A0694, v19);
  v21 = *(v0 + 144);
  v22 = *(v0 + 48);

  v23 = v28;

  *v22 = v23;
  sub_23D91F344(v21, &qword_27E2F4210, &qword_23D9DBE60);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_23D9968D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  MEMORY[0x28223BE20](v6 - 8);
  v35 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v36 = v34 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = v34 - v11;
  v40 = sub_23D9D89A4();
  v39 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v37 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v34 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = v34 - v18;
  v20 = sub_23D9D8954();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v24 = v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(a2 + 56);
  if (v25)
  {
    v34[2] = v3;
    v34[0] = v22;
    v26 = *(v22 + 64);

    v34[1] = a1;
    sub_23D9D89B4();
    sub_23D9D8994();
    (*(v39 + 8))(v19, v40);
    if ((*(v21 + 48))(v12, 1, v20) == 1)
    {
      sub_23D91F064(v25, v26);
      sub_23D91F344(v12, &qword_27E2F4210, &qword_23D9DBE60);
      v22 = v34[0];
    }

    else
    {
      (*(v21 + 32))(v24, v12, v20);
      v27 = v25(v24);
      sub_23D91F064(v25, v26);
      (*(v21 + 8))(v24, v20);
      v22 = v34[0];
      if ((v27 & 1) == 0)
      {
        return (*(v21 + 56))(v38, 1, 1, v20);
      }
    }
  }

  if (*(v22 + 48) != 1)
  {
LABEL_10:
    v31 = v37;
    sub_23D9D89B4();
    sub_23D9D8994();
    return (*(v39 + 8))(v31, v40);
  }

  sub_23D9D89B4();
  v28 = v35;
  sub_23D9D8994();
  (*(v39 + 8))(v16, v40);
  v29 = *(v21 + 48);
  if (v29(v28, 1, v20) == 1)
  {
    sub_23D91F344(v28, &qword_27E2F4210, &qword_23D9DBE60);
    v30 = v36;
    (*(v21 + 56))(v36, 1, 1, v20);
LABEL_9:
    sub_23D91F344(v30, &qword_27E2F4210, &qword_23D9DBE60);
    goto LABEL_10;
  }

  v30 = v36;
  sub_23D9D88E4();
  (*(v21 + 8))(v28, v20);
  if (v29(v30, 1, v20) == 1)
  {
    goto LABEL_9;
  }

  v33 = v38;
  (*(v21 + 32))(v38, v30, v20);
  return (*(v21 + 56))(v33, 0, 1, v20);
}

void *sub_23D996DAC(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v48 = a2;
  v49 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v36 - v6;
  v51 = sub_23D9D8954();
  v8 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v43 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v42 = &v36 - v11;
  v12 = sub_23D9D89C4();
  MEMORY[0x28223BE20](v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a3 + 56;
  v18 = 1 << *(a3 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a3 + 56);
  v21 = (v18 + 63) >> 6;
  v46 = v14 + 16;
  v47 = v14;
  v50 = (v14 + 8);
  v45 = (v8 + 48);
  v40 = v8;
  v41 = (v8 + 32);
  v52 = a3;
  v22 = v13;

  v24 = 0;
  v44 = MEMORY[0x277D84F90];
  while (1)
  {
    v25 = v24;
    if (!v20)
    {
      break;
    }

LABEL_8:
    (*(v47 + 16))(v16, *(v52 + 48) + *(v47 + 72) * (__clz(__rbit64(v20)) | (v24 << 6)), v22);
    v49(v16);
    if (v3)
    {
      (*v50)(v16, v22);
      v35 = v44;

      return v35;
    }

    v20 &= v20 - 1;
    (*v50)(v16, v22);
    if ((*v45)(v7, 1, v51) == 1)
    {
      result = sub_23D91F344(v7, &qword_27E2F4210, &qword_23D9DBE60);
    }

    else
    {
      v39 = v22;
      v26 = *v41;
      (*v41)(v42, v7, v51);
      v26(v43, v42, v51);
      v27 = v26;
      v28 = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_23D93C6B0(0, v28[2] + 1, 1, v28);
      }

      v30 = v28[2];
      v29 = v28[3];
      v44 = v28;
      v31 = v30 + 1;
      v22 = v39;
      if (v30 >= v29 >> 1)
      {
        v37 = v30;
        v38 = v30 + 1;
        v34 = sub_23D93C6B0((v29 > 1), v30 + 1, 1, v44);
        v30 = v37;
        v31 = v38;
        v44 = v34;
      }

      v32 = v43;
      v33 = v44;
      v44[2] = v31;
      result = (v27)(v33 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v30, v32, v51);
    }
  }

  while (1)
  {
    v24 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v24 >= v21)
    {

      return v44;
    }

    v20 = *(v17 + 8 * v24);
    ++v25;
    if (v20)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_23D9971F8(uint64_t a1, uint64_t a2, unsigned int (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v71 = a8;
  v69 = a6;
  v70 = a7;
  v72 = a4;
  v73 = a1;
  v74 = a3;
  v68 = a2;
  v9 = sub_23D9D8954();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v62 = &v59[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F68A8, &qword_23D9E1128);
  MEMORY[0x28223BE20](v81);
  v67 = &v59[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v15 = &v59[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  MEMORY[0x28223BE20](v16 - 8);
  v61 = &v59[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v66 = &v59[-v19];
  MEMORY[0x28223BE20](v20);
  v63 = &v59[-v21];
  MEMORY[0x28223BE20](v22);
  v24 = &v59[-v23];
  MEMORY[0x28223BE20](v25);
  v27 = &v59[-v26];
  MEMORY[0x28223BE20](v28);
  v30 = &v59[-v29];
  v77 = a5;
  v78 = v69;
  v79 = v70;
  v80 = v71;
  v31 = type metadata accessor for AXSUITTSLanguageList(0, &v77);
  sub_23D91F2DC(v74 + *(v31 + 68), v27, &qword_27E2F4210, &qword_23D9DBE60);
  v32 = *(v10 + 48);
  v33 = v32(v27, 1, v9);
  v74 = v32;
  if (v33 == 1)
  {
    sub_23D91F2DC(v72, v30, &qword_27E2F4210, &qword_23D9DBE60);
    if (v32(v27, 1, v9) != 1)
    {
      sub_23D91F344(v27, &qword_27E2F4210, &qword_23D9DBE60);
    }
  }

  else
  {
    (*(v10 + 32))(v30, v27, v9);
    (*(v10 + 56))(v30, 0, 1, v9);
  }

  v34 = *(v10 + 16);
  v70 = v10 + 16;
  v65 = v34;
  v34(v24, v73, v9);
  v71 = v10;
  v35 = *(v10 + 56);
  v69 = v10 + 56;
  v64 = v35;
  v35(v24, 0, 1, v9);
  v36 = *(v81 + 48);
  sub_23D91F2DC(v30, v15, &qword_27E2F4210, &qword_23D9DBE60);
  sub_23D91F2DC(v24, &v15[v36], &qword_27E2F4210, &qword_23D9DBE60);
  v37 = v74;
  if (v74(v15, 1, v9) == 1)
  {
    sub_23D91F344(v24, &qword_27E2F4210, &qword_23D9DBE60);
    sub_23D91F344(v30, &qword_27E2F4210, &qword_23D9DBE60);
    if (v37(&v15[v36], 1, v9) == 1)
    {
      sub_23D91F344(v15, &qword_27E2F4210, &qword_23D9DBE60);
      return 1;
    }

    goto LABEL_10;
  }

  v39 = v63;
  sub_23D91F2DC(v15, v63, &qword_27E2F4210, &qword_23D9DBE60);
  if (v37(&v15[v36], 1, v9) == 1)
  {
    sub_23D91F344(v24, &qword_27E2F4210, &qword_23D9DBE60);
    sub_23D91F344(v30, &qword_27E2F4210, &qword_23D9DBE60);
    (*(v71 + 8))(v39, v9);
LABEL_10:
    sub_23D91F344(v15, &qword_27E2F68A8, &qword_23D9E1128);
    goto LABEL_11;
  }

  v51 = v71;
  v52 = v62;
  (*(v71 + 32))(v62, &v15[v36], v9);
  sub_23D9A06BC(&qword_27E2F4730, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
  v60 = sub_23D9DA894();
  v53 = *(v51 + 8);
  v53(v52, v9);
  sub_23D91F344(v24, &qword_27E2F4210, &qword_23D9DBE60);
  sub_23D91F344(v30, &qword_27E2F4210, &qword_23D9DBE60);
  v53(v39, v9);
  sub_23D91F344(v15, &qword_27E2F4210, &qword_23D9DBE60);
  if (v60)
  {
    return 1;
  }

LABEL_11:
  v40 = v66;
  v65(v66, v68, v9);
  v64(v40, 0, 1, v9);
  v41 = *(v81 + 48);
  v42 = v67;
  sub_23D91F2DC(v72, v67, &qword_27E2F4210, &qword_23D9DBE60);
  sub_23D91F2DC(v40, &v42[v41], &qword_27E2F4210, &qword_23D9DBE60);
  v43 = v74;
  if (v74(v42, 1, v9) == 1)
  {
    sub_23D91F344(v40, &qword_27E2F4210, &qword_23D9DBE60);
    if (v43(&v42[v41], 1, v9) == 1)
    {
      sub_23D91F344(v42, &qword_27E2F4210, &qword_23D9DBE60);
      return 0;
    }

    goto LABEL_16;
  }

  v44 = v43;
  v45 = v61;
  sub_23D91F2DC(v42, v61, &qword_27E2F4210, &qword_23D9DBE60);
  if (v44(&v42[v41], 1, v9) == 1)
  {
    sub_23D91F344(v40, &qword_27E2F4210, &qword_23D9DBE60);
    (*(v71 + 8))(v45, v9);
LABEL_16:
    sub_23D91F344(v42, &qword_27E2F68A8, &qword_23D9E1128);
    goto LABEL_17;
  }

  v54 = v71;
  v55 = v62;
  (*(v71 + 32))(v62, &v42[v41], v9);
  sub_23D9A06BC(&qword_27E2F4730, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
  v56 = v45;
  v57 = sub_23D9DA894();
  v58 = *(v54 + 8);
  v58(v55, v9);
  sub_23D91F344(v40, &qword_27E2F4210, &qword_23D9DBE60);
  v58(v56, v9);
  sub_23D91F344(v42, &qword_27E2F4210, &qword_23D9DBE60);
  if (v57)
  {
    return 0;
  }

LABEL_17:
  v46 = sub_23D9D8934();
  if (!v47)
  {
    v46 = sub_23D9D88D4();
  }

  v77 = v46;
  v78 = v47;
  v48 = sub_23D9D8934();
  if (!v49)
  {
    v48 = sub_23D9D88D4();
  }

  v75 = v48;
  v76 = v49;
  sub_23D91B650();
  v50 = sub_23D9DAD94();

  return v50 == -1;
}

uint64_t sub_23D997AF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23D91F2DC(a1, &v5 - v3, &qword_27E2F4210, &qword_23D9DBE60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4590, &qword_23D9DC410);
  sub_23D9DA564();
  return sub_23D91F344(a1, &qword_27E2F4210, &qword_23D9DBE60);
}

uint64_t sub_23D997BD0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v82 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6A10, &qword_23D9DD4D0);
  v80 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v79 = &v56 - v6;
  v7 = sub_23D9D8954();
  v76 = *(v7 - 8);
  v77 = v7;
  MEMORY[0x28223BE20](v7);
  v74 = v8;
  v84 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = *(a2 - 1);
  MEMORY[0x28223BE20](v9);
  v72 = v10;
  v83 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 32);
  swift_getTupleTypeMetadata2();
  sub_23D9DA7C4();
  sub_23D9DAD74();
  swift_getTupleTypeMetadata2();
  sub_23D9DA7C4();
  WitnessTable = swift_getWitnessTable();
  v13 = sub_23D9DA464();
  v68 = swift_getWitnessTable();
  v14 = sub_23D9DA444();
  v71 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v70 = &v56 - v15;
  v16 = swift_getWitnessTable();
  v17 = sub_23D91F01C(&qword_27E2F6A20, &unk_27E2F6A10, &qword_23D9DD4D0, MEMORY[0x277CDE360]);
  v73 = v14;
  v85 = v14;
  v86 = v5;
  v81 = v5;
  v67 = v16;
  v87 = v16;
  v88 = v17;
  v65 = v17;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v66 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v62 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v64 = &v56 - v20;
  v78 = v13;
  v63 = *(v13 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v56 - v22;
  v24 = sub_23D9D8934();
  if (!v25)
  {
    v24 = sub_23D9D88D4();
  }

  MEMORY[0x28223BE20](v24);
  v26 = a2[2];
  *(&v56 - 8) = v26;
  *(&v56 - 7) = v12;
  v27 = v26;
  v57 = v26;
  v59 = a2[4];
  v58 = a2[5];
  v28 = v58;
  *(&v56 - 6) = v59;
  *(&v56 - 5) = v28;
  *(&v56 - 4) = v29;
  *(&v56 - 3) = v30;
  v31 = v75;
  *(&v56 - 2) = v75;
  *(&v56 - 1) = a1;
  sub_23D9D99B4();
  sub_23D9DA454();

  v32 = v61;
  (*(v61 + 16))(v83, v31, a2);
  v33 = v76;
  v34 = v77;
  v35 = *(v76 + 16);
  v75 = v23;
  v35(v84, a1, v77);
  v36 = (*(v32 + 80) + 48) & ~*(v32 + 80);
  v37 = (v72 + *(v33 + 80) + v36) & ~*(v33 + 80);
  v38 = swift_allocObject();
  *(v38 + 2) = v27;
  *(v38 + 3) = v12;
  v39 = v12;
  v40 = v59;
  v41 = v58;
  *(v38 + 4) = v59;
  *(v38 + 5) = v41;
  (*(v32 + 32))(&v38[v36], v83, a2);
  v42 = (*(v33 + 32))(&v38[v37], v84, v34);
  MEMORY[0x28223BE20](v42);
  *(&v56 - 6) = v57;
  *(&v56 - 5) = v39;
  *(&v56 - 4) = v40;
  *(&v56 - 3) = v41;
  v43 = v75;
  *(&v56 - 2) = v75;
  v44 = v70;
  v45 = v78;
  sub_23D9DA404();
  v46 = v79;
  sub_23D9D9B54();
  v47 = v62;
  v48 = v73;
  v49 = v81;
  v50 = v67;
  v51 = v65;
  sub_23D9D9FA4();
  (*(v80 + 8))(v46, v49);
  (*(v71 + 8))(v44, v48);
  v85 = v48;
  v86 = v49;
  v87 = v50;
  v88 = v51;
  swift_getOpaqueTypeConformance2();
  v52 = v64;
  v53 = OpaqueTypeMetadata2;
  sub_23D91F510();
  v54 = *(v66 + 8);
  v54(v47, v53);
  sub_23D91F510();
  v54(v52, v53);
  return (*(v63 + 8))(v43, v45);
}

uint64_t sub_23D9983D4@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v56 = a4;
  v57 = a6;
  v64 = a7;
  swift_getTupleTypeMetadata2();
  v11 = sub_23D9DA7C4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v52 - v13;
  v55 = *(a5 - 1);
  MEMORY[0x28223BE20](v15);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v52 - v19;
  v65 = v21;
  v22 = sub_23D9DAD74();
  v58 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v63 = &v52 - v26;
  v71 = a1;
  v72 = a2;
  sub_23D91B650();

  v27 = sub_23D9D9F04();
  v60 = v28;
  v61 = v27;
  v59 = v29;
  v62 = v30;
  v31 = *a3;
  if (*a3)
  {
    v54 = *(a3 + 8);

    v31(v56);
    v53 = v14;
    v32 = v57;
    sub_23D91F510();
    v33 = v55;
    v56 = v22;
    v34 = *(v55 + 8);
    v34(v17, a5);
    v67 = 0;
    LOBYTE(v68) = 1;
    v71 = &v67;
    (*(v33 + 16))(v17, v20, a5);
    v72 = v17;
    v75 = MEMORY[0x277CE1178];
    v76 = a5;
    v69 = MEMORY[0x277CE1168];
    v70 = v32;
    v35 = v53;
    sub_23D9952BC(&v71, 2uLL, &v75);
    sub_23D91F064(v31, v54);
    v34(v20, a5);
    v34(v17, a5);
    v36 = v65;
    (*(v12 + 32))(v24, v35, v65);
    (*(v12 + 56))(v24, 0, 1, v36);
    swift_getWitnessTable();
    v37 = v58;
    v38 = *(v58 + 2);
    v39 = v63;
    v40 = v56;
    v38();
    v41 = v37[1];
    v42 = v24;
    v43 = v24;
    v44 = v40;
    v45 = v40;
  }

  else
  {
    (*(v12 + 56))(v24, 1, 1, v65);
    swift_getWitnessTable();
    v46 = v58;
    v38 = *(v58 + 2);
    v39 = v63;
    v38();
    v41 = v46[1];
    v42 = v24;
    v43 = v24;
    v44 = v22;
    v45 = v22;
  }

  v58 = v41;
  v41(v43, v45);
  v47 = v60;
  v48 = v61;
  v71 = v61;
  v72 = v60;
  v49 = v59 & 1;
  v73 = v59 & 1;
  v74 = v62;
  v75 = &v71;
  (v38)(v42, v39, v44);
  v76 = v42;
  sub_23D91E0AC(v48, v47, v49);

  v69 = MEMORY[0x277CE0BD0];
  v70 = v44;
  v67 = MEMORY[0x277CE0BC0];
  WitnessTable = swift_getWitnessTable();
  v68 = swift_getWitnessTable();
  sub_23D9952BC(&v75, 2uLL, &v69);
  sub_23D9274BC(v48, v47, v49);

  v50 = v58;
  v58(v39, v44);
  v50(v42, v44);
  sub_23D9274BC(v71, v72, v73);
}

uint64_t sub_23D9989A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v17 - v12;
  v14 = sub_23D9D8954();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v13, a2, v14);
  (*(v15 + 56))(v13, 0, 1, v14);
  v17[0] = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  type metadata accessor for AXSUITTSLanguageList.LanguageListView(0, v17);
  return sub_23D997AF8(v13);
}

uint64_t sub_23D998ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getTupleTypeMetadata2();
  sub_23D9DA7C4();
  sub_23D9DAD74();
  swift_getTupleTypeMetadata2();
  sub_23D9DA7C4();
  swift_getWitnessTable();
  v3 = sub_23D9DA464();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  swift_getWitnessTable();
  sub_23D91F510();
  sub_23D91F510();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_23D998C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v52 = *(a1 - 8);
  v54 = *(v52 + 64);
  MEMORY[0x28223BE20](a1);
  v51 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F67E8, &qword_23D9E1028);
  v49 = *(v4 - 8);
  v50 = v4;
  MEMORY[0x28223BE20](v4);
  v47 = &v43 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F45D0, &unk_23D9DC5C0);
  v7 = sub_23D9D8954();
  v48 = *(a1 + 24);
  swift_getTupleTypeMetadata2();
  sub_23D9DA7C4();
  sub_23D9DAD74();
  swift_getTupleTypeMetadata2();
  sub_23D9DA7C4();
  swift_getWitnessTable();
  sub_23D9DA464();
  swift_getWitnessTable();
  v8 = sub_23D9DA444();
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E2F6A10, &qword_23D9DD4D0);
  WitnessTable = swift_getWitnessTable();
  v11 = sub_23D91F01C(&qword_27E2F6A20, &unk_27E2F6A10, &qword_23D9DD4D0, MEMORY[0x277CDE360]);
  v56 = v8;
  v57 = v9;
  v58 = WitnessTable;
  v59 = v11;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v56 = v8;
  v57 = v9;
  v58 = WitnessTable;
  v59 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v56 = OpaqueTypeMetadata2;
  v57 = MEMORY[0x277D837D0];
  v58 = OpaqueTypeConformance2;
  v59 = MEMORY[0x277D837E0];
  v14 = sub_23D9DA474();
  v15 = swift_getWitnessTable();
  v16 = sub_23D9A06BC(&qword_27E2F58C0, MEMORY[0x277CC9640], MEMORY[0x277CC9650]);
  v56 = v14;
  v57 = v7;
  v58 = v15;
  v59 = v16;
  v17 = swift_getOpaqueTypeMetadata2();
  v18 = sub_23D91F01C(&qword_27E2F4800, &qword_27E2F45D0, &unk_23D9DC5C0, MEMORY[0x277D83980]);
  v46 = v6;
  v56 = v6;
  v57 = v7;
  v58 = v17;
  v59 = v18;
  v60 = v16;
  sub_23D9DA634();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6878, &qword_23D9E10B8);
  swift_getTupleTypeMetadata2();
  v19 = sub_23D9DA7C4();
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F65D0, &qword_23D9E09B0);
  v45 = v19;
  v21 = swift_getWitnessTable();
  v44 = v21;
  v22 = sub_23D91F01C(&qword_27E2F65C8, &qword_27E2F65D0, &qword_23D9E09B0, MEMORY[0x277CDD7F0]);
  v56 = v6;
  v57 = v19;
  v58 = v20;
  v59 = v21;
  v60 = v22;
  v23 = type metadata accessor for AXSUIStreamValueView(0, &v56);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v43 - v29;
  v31 = v53;
  v32 = v47;
  (*(v49 + 16))(v47, v53 + *(a1 + 52), v50, v28);
  v34 = v51;
  v33 = v52;
  v35 = v31;
  v36 = a1;
  (*(v52 + 16))(v51, v35, a1);
  v37 = v33;
  v38 = (*(v33 + 80) + 48) & ~*(v33 + 80);
  v39 = swift_allocObject();
  v40 = v48;
  *(v39 + 16) = *(v36 + 16);
  *(v39 + 24) = v40;
  *(v39 + 32) = *(v36 + 32);
  (*(v37 + 32))(v39 + v38, v34, v36);
  AXSUIStreamValueView.init<>(stream:animated:content:)(v32, sub_23D99D9B8, v39, v46, v45, v44, v26);
  swift_getWitnessTable();
  sub_23D91F510();
  v41 = *(v24 + 8);
  v41(v26, v23);
  sub_23D91F510();
  return (v41)(v30, v23);
}

uint64_t sub_23D9992E4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v60 = a5;
  v61 = a6;
  KeyPath = a1;
  v59 = a3;
  v64 = a2;
  v62 = a7;
  v69 = a3;
  v70 = a4;
  v55 = a4;
  v71 = a5;
  v72 = a6;
  v63 = type metadata accessor for AXSUITTSLanguageList.LanguageListView(0, &v69);
  v56 = *(v63 - 8);
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v63);
  v8 = &v47 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F45D0, &unk_23D9DC5C0);
  v52 = v9;
  v10 = sub_23D9D8954();
  swift_getTupleTypeMetadata2();
  sub_23D9DA7C4();
  sub_23D9DAD74();
  swift_getTupleTypeMetadata2();
  sub_23D9DA7C4();
  swift_getWitnessTable();
  sub_23D9DA464();
  swift_getWitnessTable();
  v11 = sub_23D9DA444();
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E2F6A10, &qword_23D9DD4D0);
  WitnessTable = swift_getWitnessTable();
  v14 = sub_23D91F01C(&qword_27E2F6A20, &unk_27E2F6A10, &qword_23D9DD4D0, MEMORY[0x277CDE360]);
  v69 = v11;
  v70 = v12;
  v71 = WitnessTable;
  v72 = v14;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v69 = v11;
  v70 = v12;
  v71 = WitnessTable;
  v72 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v69 = OpaqueTypeMetadata2;
  v70 = MEMORY[0x277D837D0];
  v71 = OpaqueTypeConformance2;
  v72 = MEMORY[0x277D837E0];
  v17 = sub_23D9DA474();
  v54 = v17;
  v18 = swift_getWitnessTable();
  v53 = v18;
  v19 = sub_23D9A06BC(&qword_27E2F58C0, MEMORY[0x277CC9640], MEMORY[0x277CC9650]);
  v69 = v17;
  v70 = v10;
  v48 = v10;
  v71 = v18;
  v72 = v19;
  v49 = &unk_23D9F1F78;
  v20 = swift_getOpaqueTypeMetadata2();
  v51 = v20;
  v50 = sub_23D91F01C(&qword_27E2F4800, &qword_27E2F45D0, &unk_23D9DC5C0, MEMORY[0x277D83980]);
  v69 = v9;
  v70 = v10;
  v71 = v20;
  v72 = v50;
  v73 = v19;
  v21 = sub_23D9DA634();
  v47 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v47 - v25;
  v67[0] = *KeyPath;
  KeyPath = swift_getKeyPath();
  v27 = v56;
  v28 = v8;
  v29 = v8;
  v30 = v63;
  (*(v56 + 16))(v29, v64, v63);
  v31 = (*(v27 + 80) + 48) & ~*(v27 + 80);
  v32 = swift_allocObject();
  v33 = v55;
  *(v32 + 2) = v59;
  *(v32 + 3) = v33;
  v34 = v61;
  *(v32 + 4) = v60;
  *(v32 + 5) = v34;
  v35 = v28;
  v36 = v26;
  v37 = v47;
  (*(v27 + 32))(&v32[v31], v35, v30);

  v69 = v54;
  v70 = v48;
  v71 = v53;
  v72 = v19;
  v46 = swift_getOpaqueTypeConformance2();
  sub_23D9DA614();
  v68[1] = v46;
  v38 = swift_getWitnessTable();
  sub_23D91F510();
  v39 = *(v37 + 8);
  v39(v23, v21);
  v40 = v64 + *(v63 + 60);
  v41 = *v40;
  if (*v40)
  {
    v42 = *(v40 + 8);

    v44 = v41(v43);
    sub_23D91F064(v41, v42);
  }

  else
  {
    v44 = 0;
  }

  (*(v37 + 16))(v23, v36, v21);
  v68[0] = v44;
  v69 = v23;
  v70 = v68;
  v67[0] = v21;
  v67[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6878, &qword_23D9E10B8);
  v65 = v38;
  v66 = sub_23D99DDD8();
  sub_23D9952BC(&v69, 2uLL, v67);

  v39(v36, v21);

  return (v39)(v23, v21);
}

uint64_t sub_23D99999C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v44 = a5;
  v45 = a6;
  v43 = a3;
  v41 = a2;
  v46 = a7;
  swift_getTupleTypeMetadata2();
  sub_23D9DA7C4();
  sub_23D9DAD74();
  swift_getTupleTypeMetadata2();
  sub_23D9DA7C4();
  swift_getWitnessTable();
  sub_23D9DA464();
  swift_getWitnessTable();
  v47 = sub_23D9DA444();
  v48 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E2F6A10, &qword_23D9DD4D0);
  WitnessTable = swift_getWitnessTable();
  v50 = sub_23D91F01C(&qword_27E2F6A20, &unk_27E2F6A10, &qword_23D9DD4D0, MEMORY[0x277CDE360]);
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v39 = OpaqueTypeMetadata2;
  v42 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v11 = &v33 - v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v47 = OpaqueTypeMetadata2;
  v48 = MEMORY[0x277D837D0];
  WitnessTable = OpaqueTypeConformance2;
  v50 = MEMORY[0x277D837E0];
  v12 = sub_23D9DA474();
  v40 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  v15 = sub_23D9D8954();
  v33 = v15;
  v16 = swift_getWitnessTable();
  v35 = v16;
  v34 = sub_23D9A06BC(&qword_27E2F58C0, MEMORY[0x277CC9640], MEMORY[0x277CC9650]);
  v47 = v12;
  v48 = v15;
  WitnessTable = v16;
  v50 = v34;
  v36 = &unk_23D9F1F78;
  v17 = swift_getOpaqueTypeMetadata2();
  v37 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v33 - v21;
  v47 = v43;
  v48 = a4;
  WitnessTable = v44;
  v50 = v45;
  v23 = type metadata accessor for AXSUITTSLanguageList.LanguageListView(0, &v47);
  v24 = a1;
  sub_23D997BD0(a1, v23, v11);
  v47 = sub_23D9D88D4();
  v48 = v25;
  v26 = v39;
  sub_23D9DA154();

  (*(v42 + 8))(v11, v26);
  v27 = swift_checkMetadataState();
  v28 = v24;
  v30 = v34;
  v29 = v35;
  sub_23D91DE0C(v28, 1, v12, v27, v35);
  (*(v40 + 8))(v14, v12);
  v47 = v12;
  v48 = v27;
  WitnessTable = v29;
  v50 = v30;
  swift_getOpaqueTypeConformance2();
  sub_23D91F510();
  v31 = *(v37 + 8);
  v31(v19, v17);
  sub_23D91F510();
  return (v31)(v22, v17);
}

uint64_t sub_23D999EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F45D0, &unk_23D9DC5C0);
  sub_23D9D8954();
  v17 = *(a1 + 24);
  swift_getTupleTypeMetadata2();
  sub_23D9DA7C4();
  sub_23D9DAD74();
  swift_getTupleTypeMetadata2();
  sub_23D9DA7C4();
  swift_getWitnessTable();
  sub_23D9DA464();
  swift_getWitnessTable();
  sub_23D9DA444();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E2F6A10, &qword_23D9DD4D0);
  swift_getWitnessTable();
  sub_23D91F01C(&qword_27E2F6A20, &unk_27E2F6A10, &qword_23D9DD4D0, MEMORY[0x277CDE360]);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_23D9DA474();
  swift_getWitnessTable();
  sub_23D9A06BC(&qword_27E2F58C0, MEMORY[0x277CC9640], MEMORY[0x277CC9650]);
  swift_getOpaqueTypeMetadata2();
  sub_23D91F01C(&qword_27E2F4800, &qword_27E2F45D0, &unk_23D9DC5C0, MEMORY[0x277D83980]);
  sub_23D9DA634();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6878, &qword_23D9E10B8);
  swift_getTupleTypeMetadata2();
  v24[0] = v3;
  v24[1] = sub_23D9DA7C4();
  v24[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F65D0, &qword_23D9E09B0);
  v24[3] = swift_getWitnessTable();
  v24[4] = sub_23D91F01C(&qword_27E2F65C8, &qword_27E2F65D0, &qword_23D9E09B0, MEMORY[0x277CDD7F0]);
  v4 = type metadata accessor for AXSUIStreamValueView(255, v24);
  WitnessTable = swift_getWitnessTable();
  v7 = type metadata accessor for AXSUIPlatformFormListView(0, v4, WitnessTable, v6);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v16 - v12;
  v20 = *(a1 + 16);
  v21 = v17;
  v22 = *(a1 + 32);
  v23 = v18;
  AXSUIPlatformFormListView.init(content:)(sub_23D99D99C);
  swift_getWitnessTable();
  sub_23D91F510();
  v14 = *(v8 + 8);
  v14(v10, v7);
  sub_23D91F510();
  return (v14)(v13, v7);
}

uint64_t sub_23D99A404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v19 = a4;
  v20 = a5;
  v18 = a2;
  v21 = a1;
  v22 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F45D0, &unk_23D9DC5C0);
  sub_23D9D8954();
  swift_getTupleTypeMetadata2();
  sub_23D9DA7C4();
  sub_23D9DAD74();
  swift_getTupleTypeMetadata2();
  sub_23D9DA7C4();
  swift_getWitnessTable();
  sub_23D9DA464();
  swift_getWitnessTable();
  sub_23D9DA444();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E2F6A10, &qword_23D9DD4D0);
  swift_getWitnessTable();
  sub_23D91F01C(&qword_27E2F6A20, &unk_27E2F6A10, &qword_23D9DD4D0, MEMORY[0x277CDE360]);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_23D9DA474();
  swift_getWitnessTable();
  sub_23D9A06BC(&qword_27E2F58C0, MEMORY[0x277CC9640], MEMORY[0x277CC9650]);
  swift_getOpaqueTypeMetadata2();
  sub_23D91F01C(&qword_27E2F4800, &qword_27E2F45D0, &unk_23D9DC5C0, MEMORY[0x277D83980]);
  sub_23D9DA634();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6878, &qword_23D9E10B8);
  swift_getTupleTypeMetadata2();
  v23 = v7;
  v24 = sub_23D9DA7C4();
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F65D0, &qword_23D9E09B0);
  WitnessTable = swift_getWitnessTable();
  v27 = sub_23D91F01C(&qword_27E2F65C8, &qword_27E2F65D0, &qword_23D9E09B0, MEMORY[0x277CDD7F0]);
  v8 = type metadata accessor for AXSUIStreamValueView(0, &v23);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v18 - v13;
  v23 = v18;
  v24 = a3;
  v25 = v19;
  WitnessTable = v20;
  v15 = type metadata accessor for AXSUITTSLanguageList.LanguageListView(0, &v23);
  sub_23D998C68(v15, v11);
  swift_getWitnessTable();
  sub_23D91F510();
  v16 = *(v9 + 8);
  v16(v11, v8);
  sub_23D91F510();
  return (v16)(v14, v8);
}

uint64_t sub_23D99A8CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v29 = a12;
  v30 = a13;
  v31 = a14;
  v21 = type metadata accessor for AXSUITTSLanguageList.LanguageListView(0, &v29);
  v22 = v21[13];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F67E8, &qword_23D9E1028);
  (*(*(v23 - 8) + 32))(&a9[v22], a3, v23);
  sub_23D92A2BC(a4, &a9[v21[14]], &qword_27E2F4210, &qword_23D9DBE60);
  v24 = &a9[v21[15]];
  *v24 = a5;
  *(v24 + 1) = a6;
  v25 = &a9[v21[16]];
  *v25 = a7;
  *(v25 + 1) = a8;
  sub_23D92A2BC(a10, &a9[v21[17]], &qword_27E2F4590, &qword_23D9DC410);
  v26 = v21[18];
  v27 = sub_23D9D89C4();
  return (*(*(v27 - 8) + 32))(&a9[v26], a11, v27);
}

uint64_t AXSUITTSLanguageList.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v63 = *(a1 - 1);
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](a1);
  v61 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6728, &qword_23D9E0F70);
  MEMORY[0x28223BE20](v4 - 8);
  v58 = &v53 - v5;
  v66 = sub_23D9D89C4();
  v55 = a1;
  v6 = a1[2];
  v60 = a1[3];
  v7 = a1[4];
  v59 = a1[5];
  v67 = v6;
  v68 = v60;
  v57 = v6;
  v69 = v7;
  v70 = v59;
  v8 = v7;
  v56 = v7;
  v54 = type metadata accessor for AXSUITTSLanguageList.LanguageListView(255, &v67);
  v9 = sub_23D9D8954();
  v10 = sub_23D9D96C4();
  v11 = sub_23D99B160();
  v82 = v8;
  v83 = v11;
  WitnessTable = swift_getWitnessTable();
  v67 = v10;
  v68 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v67 = v10;
  v68 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = sub_23D9A06BC(&qword_27E2F58C0, MEMORY[0x277CC9640], MEMORY[0x277CC9650]);
  v67 = OpaqueTypeMetadata2;
  v68 = v9;
  v69 = OpaqueTypeConformance2;
  v70 = v15;
  sub_23D9DA474();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6738, &qword_23D9E0F78);
  sub_23D9D96C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E2F6C00, &unk_23D9E0F80);
  sub_23D9D96C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F66B0, &unk_23D9E0C90);
  v16 = sub_23D9D96C4();
  v17 = swift_getWitnessTable();
  v18 = MEMORY[0x277CE0870];
  v19 = sub_23D91F01C(&qword_27E2F6740, &qword_27E2F6738, &qword_23D9E0F78, MEMORY[0x277CE0870]);
  v80 = v17;
  v81 = v19;
  v20 = swift_getWitnessTable();
  v21 = sub_23D91F01C(&unk_27E2F6C10, &unk_27E2F6C00, &unk_23D9E0F80, v18);
  v78 = v20;
  v79 = v21;
  v22 = swift_getWitnessTable();
  v23 = sub_23D91F01C(&qword_27E2F66A8, &qword_27E2F66B0, &unk_23D9E0C90, v18);
  v76 = v22;
  v77 = v23;
  v24 = swift_getWitnessTable();
  v67 = v9;
  v68 = v16;
  v69 = v15;
  v70 = v24;
  type metadata accessor for AXValueNavigationDestination(255, &v67);
  sub_23D9D96C4();
  v25 = sub_23D9D96C4();
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F65D0, &qword_23D9E09B0);
  v27 = swift_getWitnessTable();
  v28 = swift_getWitnessTable();
  v74 = v27;
  v75 = v28;
  v29 = swift_getWitnessTable();
  v30 = sub_23D927AFC();
  v72 = v29;
  v73 = v30;
  v31 = v25;
  v53 = v25;
  v32 = swift_getWitnessTable();
  v54 = v32;
  v33 = sub_23D91F01C(&qword_27E2F65C8, &qword_27E2F65D0, &qword_23D9E09B0, MEMORY[0x277CDD7F0]);
  v67 = v66;
  v68 = v31;
  v69 = v26;
  v70 = v32;
  v71 = v33;
  v34 = type metadata accessor for AXSUIStreamValueView(0, &v67);
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = &v53 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v40 = &v53 - v39;
  v41 = v55;
  v42 = v62;
  sub_23D995B58(v55);
  v43 = v58;
  sub_23D9D8AB4();

  v44 = v63;
  v45 = v61;
  (*(v63 + 16))(v61, v42, v41);
  v46 = v44;
  v47 = (*(v44 + 80) + 48) & ~*(v44 + 80);
  v48 = swift_allocObject();
  v49 = v60;
  *(v48 + 2) = v57;
  *(v48 + 3) = v49;
  v50 = v59;
  *(v48 + 4) = v56;
  *(v48 + 5) = v50;
  (*(v46 + 32))(&v48[v47], v45, v41);
  AXSUIStreamValueView.init<>(stream:animated:content:)(v43, sub_23D99BD10, v48, v66, v53, v54, v37);
  swift_getWitnessTable();
  sub_23D91F510();
  v51 = *(v35 + 8);
  v51(v37, v34);
  sub_23D91F510();
  return (v51)(v40, v34);
}

unint64_t sub_23D99B160()
{
  result = qword_27E2F6730;
  if (!qword_27E2F6730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6730);
  }

  return result;
}

uint64_t sub_23D99B1B4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v95 = a2;
  v98 = a1;
  v103 = a7;
  v127 = a3;
  v128 = a4;
  v110 = a4;
  v129 = a5;
  v130 = a6;
  v105 = a5;
  v111 = a6;
  v109 = type metadata accessor for AXSUITTSLanguageList(0, &v127);
  v101 = *(v109 - 8);
  v102 = *(v101 + 64);
  MEMORY[0x28223BE20](v109);
  v99 = &v76 - v11;
  v96 = sub_23D9D89C4();
  v114 = *(v96 - 8);
  v100 = *(v114 + 64);
  MEMORY[0x28223BE20](v96);
  v94 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4590, &qword_23D9DC410);
  MEMORY[0x28223BE20](v13 - 8);
  v107 = &v76 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  MEMORY[0x28223BE20](v15 - 8);
  v108 = &v76 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F67E8, &qword_23D9E1028);
  MEMORY[0x28223BE20](v17 - 8);
  v104 = &v76 - v18;
  v106 = a3;
  v127 = a3;
  v128 = a4;
  v129 = a5;
  v130 = a6;
  v112 = type metadata accessor for AXSUITTSLanguageList.LanguageListView(0, &v127);
  v97 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v113 = &v76 - v19;
  v20 = sub_23D9D8954();
  v21 = sub_23D9D96C4();
  v22 = sub_23D99B160();
  v125 = a5;
  v126 = v22;
  v23 = MEMORY[0x277CDFAD0];
  WitnessTable = swift_getWitnessTable();
  v127 = v21;
  v128 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v127 = v21;
  v128 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = sub_23D9A06BC(&qword_27E2F58C0, MEMORY[0x277CC9640], MEMORY[0x277CC9650]);
  v127 = OpaqueTypeMetadata2;
  v128 = v20;
  v85 = v20;
  v129 = OpaqueTypeConformance2;
  v130 = v27;
  v28 = v27;
  v87 = v27;
  sub_23D9DA474();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6738, &qword_23D9E0F78);
  sub_23D9D96C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E2F6C00, &unk_23D9E0F80);
  sub_23D9D96C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F66B0, &unk_23D9E0C90);
  v29 = sub_23D9D96C4();
  v30 = swift_getWitnessTable();
  v31 = MEMORY[0x277CE0870];
  v32 = sub_23D91F01C(&qword_27E2F6740, &qword_27E2F6738, &qword_23D9E0F78, MEMORY[0x277CE0870]);
  v123 = v30;
  v124 = v32;
  v33 = swift_getWitnessTable();
  v34 = sub_23D91F01C(&unk_27E2F6C10, &unk_27E2F6C00, &unk_23D9E0F80, v31);
  v121 = v33;
  v122 = v34;
  v93 = v23;
  v35 = swift_getWitnessTable();
  v36 = sub_23D91F01C(&qword_27E2F66A8, &qword_27E2F66B0, &unk_23D9E0C90, v31);
  v119 = v35;
  v120 = v36;
  v84 = v29;
  v83 = swift_getWitnessTable();
  v127 = v20;
  v128 = v29;
  v129 = v28;
  v130 = v83;
  v89 = type metadata accessor for AXValueNavigationDestination(255, &v127);
  v86 = sub_23D9D96C4();
  v91 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v81 = &v76 - v37;
  v90 = sub_23D9D96C4();
  v92 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v82 = &v76 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v88 = &v76 - v40;
  v41 = v95;
  v42 = v95[3];
  v80 = v95[2];
  v79 = v42;
  sub_23D99FD1C(v80, v42);
  v43 = v109;
  sub_23D995D88(v109, v104);
  sub_23D91F2DC(v41 + *(v43 + 68), v108, &qword_27E2F4210, &qword_23D9DBE60);
  v44 = v41[5];
  v77 = v41[4];
  v45 = v41[7];
  v46 = v41[8];
  sub_23D99FD1C(v77, v44);
  sub_23D99FD1C(v45, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4678, &qword_23D9DC658);
  v47 = v107;
  sub_23D9DA3D4();
  v78 = *(v114 + 16);
  v48 = v94;
  v49 = v98;
  v50 = v96;
  v78(v94, v98, v96);
  *(&v75 + 1) = v110;
  *&v75 = v106;
  sub_23D99A8CC(v80, v79, v104, v108, v77, v44, v45, v46, v113, v47, v48, v75, v105, v111);
  v51 = v109;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4678, &qword_23D9DC658);
  sub_23D9DA3D4();
  v52 = v101;
  v53 = v99;
  (*(v101 + 16))(v99, v41, v51);
  v78(v48, v49, v50);
  v54 = v52;
  v55 = (*(v52 + 80) + 48) & ~*(v52 + 80);
  v56 = v114;
  v57 = (v102 + *(v114 + 80) + v55) & ~*(v114 + 80);
  v58 = swift_allocObject();
  v59 = v110;
  *(v58 + 2) = v106;
  *(v58 + 3) = v59;
  v60 = v111;
  *(v58 + 4) = v105;
  *(v58 + 5) = v60;
  (*(v54 + 32))(&v58[v55], v53, v51);
  (*(v56 + 32))(&v58[v57], v48, v50);
  v61 = v112;
  v62 = swift_getWitnessTable();
  v63 = v81;
  v64 = v107;
  v65 = v113;
  View.axNavigationDestination<A, B>(item:_:)(v107, sub_23D9A004C, v58, v61, v85, v84, v62, v87, v81, v83);

  sub_23D91F344(v64, &qword_27E2F4590, &qword_23D9DC410);
  (*(v97 + 8))(v65, v61);
  v66 = swift_getWitnessTable();
  v117 = v62;
  v118 = v66;
  v67 = v86;
  v68 = swift_getWitnessTable();
  v69 = v82;
  View.axSettingsAppearance()(v67, v68);
  (*(v91 + 8))(v63, v67);
  v70 = sub_23D927AFC();
  v115 = v68;
  v116 = v70;
  v71 = v90;
  swift_getWitnessTable();
  v72 = v88;
  sub_23D91F510();
  v73 = *(v92 + 8);
  v73(v69, v71);
  sub_23D91F510();
  return (v73)(v72, v71);
}

uint64_t sub_23D99BD54@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v107 = a7;
  v106 = a5;
  v94 = a3;
  v112 = a8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  MEMORY[0x28223BE20](v12 - 8);
  v111 = &v77 - v13;
  v14 = sub_23D9D9954();
  v108 = *(v14 - 8);
  v109 = v14;
  MEMORY[0x28223BE20](v14);
  v95 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_23D9D99A4();
  v90 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v91 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = *(a4 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a4;
  v21 = sub_23D9D96C4();
  v92 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v77 - v22;
  v24 = sub_23D99B160();
  v105 = a6;
  v125 = a6;
  v126 = v24;
  WitnessTable = swift_getWitnessTable();
  v121 = v21;
  v122 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v85 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v83 = &v77 - v27;
  v28 = sub_23D9D8954();
  v81 = v21;
  v121 = v21;
  v122 = WitnessTable;
  v84 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = sub_23D9A06BC(&qword_27E2F58C0, MEMORY[0x277CC9640], MEMORY[0x277CC9650]);
  v86 = OpaqueTypeMetadata2;
  v121 = OpaqueTypeMetadata2;
  v122 = v28;
  v114 = v28;
  v80 = OpaqueTypeConformance2;
  v123 = OpaqueTypeConformance2;
  v124 = v30;
  v79 = v30;
  v31 = sub_23D9DA474();
  v87 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v82 = &v77 - v32;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6738, &qword_23D9E0F78);
  v88 = v31;
  v33 = sub_23D9D96C4();
  v93 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v113 = &v77 - v34;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E2F6C00, &unk_23D9E0F80);
  v96 = v33;
  v35 = sub_23D9D96C4();
  v101 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v98 = &v77 - v36;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F66B0, &unk_23D9E0C90);
  v102 = v35;
  v104 = sub_23D9D96C4();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v99 = &v77 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v38);
  v100 = &v77 - v40;
  v110 = a2;
  v41 = v19;
  (*a2)(a1, v94, v39);
  v42 = a1;
  v43 = sub_23D9D8934();
  if (!v44)
  {
    v43 = sub_23D9D88D4();
  }

  v121 = v43;
  v122 = v44;
  v45 = v20;
  v46 = v105;
  MEMORY[0x23EEF34C0](&v121, v20, &type metadata for PlatformNavigationTitle, v105);

  (*(v89 + 8))(v41, v20);
  v47 = v90;
  v48 = v91;
  v49 = v97;
  (*(v90 + 104))(v91, *MEMORY[0x277CDDDB8], v97);
  v50 = v83;
  v51 = v81;
  sub_23D9DA144();
  (*(v47 + 8))(v48, v49);
  (*(v92 + 8))(v23, v51);
  v52 = v82;
  v78 = v42;
  v53 = v86;
  sub_23D9DA154();
  (*(v85 + 8))(v50, v53);
  swift_getKeyPath();
  v121 = v45;
  v122 = v106;
  v123 = v46;
  v124 = v107;
  v54 = type metadata accessor for AXSUITTSLanguageList(0, &v121);
  v55 = v95;
  sub_23D9958A4(v54, v95);
  sub_23D9A016C();
  sub_23D9D9964();
  v56 = v109;
  v57 = *(v108 + 8);
  v57(v55, v109);
  v58 = v88;
  v108 = swift_getWitnessTable();
  sub_23D9D9FC4();

  __swift_destroy_boxed_opaque_existential_0(&v121);
  (*(v87 + 8))(v52, v58);
  swift_getKeyPath();
  sub_23D9958A4(v54, v55);
  sub_23D9589B0();
  sub_23D9D9964();
  v57(v55, v56);
  v59 = MEMORY[0x277CE0870];
  v60 = sub_23D91F01C(&qword_27E2F6740, &qword_27E2F6738, &qword_23D9E0F78, MEMORY[0x277CE0870]);
  v119 = v108;
  v120 = v60;
  v61 = v96;
  v62 = swift_getWitnessTable();
  v63 = v98;
  v64 = v113;
  sub_23D9D9FC4();

  (*(v93 + 8))(v64, v61);
  swift_getKeyPath();
  v65 = v114;
  v66 = *(v114 - 8);
  v67 = v111;
  (*(v66 + 16))(v111, v78, v114);
  (*(v66 + 56))(v67, 0, 1, v65);
  v68 = sub_23D91F01C(&unk_27E2F6C10, &unk_27E2F6C00, &unk_23D9E0F80, v59);
  v117 = v62;
  v118 = v68;
  v69 = v102;
  v70 = swift_getWitnessTable();
  v71 = v99;
  sub_23D9D9FC4();

  sub_23D91F344(v67, &qword_27E2F4210, &qword_23D9DBE60);
  (*(v101 + 8))(v63, v69);
  v72 = sub_23D91F01C(&qword_27E2F66A8, &qword_27E2F66B0, &unk_23D9E0C90, v59);
  v115 = v70;
  v116 = v72;
  v73 = v104;
  swift_getWitnessTable();
  v74 = v100;
  sub_23D91F510();
  v75 = *(v103 + 8);
  v75(v71, v73);
  sub_23D91F510();
  return (v75)(v74, v73);
}

void sub_23D99C99C(uint64_t a1)
{
  sub_23D95F334();
  if (v1 <= 0x3F)
  {
    sub_23D99D8EC(319, &qword_27E2F4348, &qword_27E2F4350, qword_23D9DBF90, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23D99CF18(319, &qword_27E2F4608, MEMORY[0x277CC9640], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_23D99CF18(319, &qword_27E2F67D0, MEMORY[0x277CE0048], MEMORY[0x277CDF470]);
        if (v4 <= 0x3F)
        {
          sub_23D9273D0();
          if (v5 <= 0x3F)
          {
            sub_23D99CF18(319, &qword_27E2F4658, MEMORY[0x277D70110], MEMORY[0x277CDF470]);
            if (v6 <= 0x3F)
            {
              sub_23D99D8EC(319, &qword_27E2F67D8, &qword_27E2F67E0, "XO", MEMORY[0x277CDF470]);
              if (v7 <= 0x3F)
              {
                sub_23D99D8EC(319, &qword_27E2F4698, &qword_27E2F4210, &qword_23D9DBE60, MEMORY[0x277CE10B0]);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23D99CBE4(unint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[17];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F6748, &qword_23D9E0FE8);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[18];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4678, &qword_23D9DC658);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[22];

  return v15(v16, a2, v14);
}

char *sub_23D99CD88(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[17];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F6748, &qword_23D9E0FE8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[18];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4678, &qword_23D9DC658);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[22]];

  return v15(v16, a2, a2, v14);
}

void sub_23D99CF18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_23D99CF7C(__int128 *a1)
{
  v28 = sub_23D9D89C4();
  v26 = a1[1];
  v29 = *a1;
  v30 = v26;
  type metadata accessor for AXSUITTSLanguageList.LanguageListView(255, &v29);
  v27 = sub_23D9D8954();
  v2 = sub_23D9D96C4();
  v3 = sub_23D99B160();
  v42 = v26;
  v43 = v3;
  WitnessTable = swift_getWitnessTable();
  *&v29 = v2;
  *(&v29 + 1) = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v29 = v2;
  *(&v29 + 1) = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v7 = sub_23D9A06BC(&qword_27E2F58C0, MEMORY[0x277CC9640], MEMORY[0x277CC9650]);
  *&v29 = OpaqueTypeMetadata2;
  *(&v29 + 1) = v27;
  *&v30 = OpaqueTypeConformance2;
  *(&v30 + 1) = v7;
  sub_23D9DA474();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6738, &qword_23D9E0F78);
  sub_23D9D96C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E2F6C00, &unk_23D9E0F80);
  sub_23D9D96C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F66B0, &unk_23D9E0C90);
  v8 = sub_23D9D96C4();
  v9 = swift_getWitnessTable();
  v10 = MEMORY[0x277CE0870];
  v11 = sub_23D91F01C(&qword_27E2F6740, &qword_27E2F6738, &qword_23D9E0F78, MEMORY[0x277CE0870]);
  v40 = v9;
  v41 = v11;
  v12 = swift_getWitnessTable();
  v13 = sub_23D91F01C(&unk_27E2F6C10, &unk_27E2F6C00, &unk_23D9E0F80, v10);
  v38 = v12;
  v39 = v13;
  v14 = swift_getWitnessTable();
  v15 = sub_23D91F01C(&qword_27E2F66A8, &qword_27E2F66B0, &unk_23D9E0C90, v10);
  v36 = v14;
  v37 = v15;
  v16 = swift_getWitnessTable();
  *&v29 = v27;
  *(&v29 + 1) = v8;
  *&v30 = v7;
  *(&v30 + 1) = v16;
  type metadata accessor for AXValueNavigationDestination(255, &v29);
  sub_23D9D96C4();
  v17 = sub_23D9D96C4();
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F65D0, &qword_23D9E09B0);
  v19 = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  v34 = v19;
  v35 = v20;
  v21 = swift_getWitnessTable();
  v22 = sub_23D927AFC();
  v32 = v21;
  v33 = v22;
  v23 = swift_getWitnessTable();
  v24 = sub_23D91F01C(&qword_27E2F65C8, &qword_27E2F65D0, &qword_23D9E09B0, MEMORY[0x277CDD7F0]);
  *&v29 = v28;
  *(&v29 + 1) = v17;
  *&v30 = v18;
  *(&v30 + 1) = v23;
  v31 = v24;
  type metadata accessor for AXSUIStreamValueView(255, &v29);
  return swift_getWitnessTable();
}

void sub_23D99D37C(uint64_t a1)
{
  sub_23D99D8EC(319, &qword_27E2F4348, &qword_27E2F4350, qword_23D9DBF90, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23D99D8EC(319, &qword_27E2F6870, &qword_27E2F45D0, &unk_23D9DC5C0, MEMORY[0x277CE6758]);
    if (v2 <= 0x3F)
    {
      sub_23D99CF18(319, &qword_27E2F4608, MEMORY[0x277CC9640], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_23D99D8EC(319, &qword_27E2F45C0, &qword_27E2F4210, &qword_23D9DBE60, MEMORY[0x277CE1200]);
        if (v4 <= 0x3F)
        {
          sub_23D9D89C4();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_23D99D51C(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F67E8, &qword_23D9E1028);
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[13];
LABEL_13:
    v15 = *(v11 + 48);

    return v15(&a1[v12], a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[14];
    goto LABEL_13;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4590, &qword_23D9DC410);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v10 = v14;
    v11 = *(v14 - 8);
    v12 = a3[17];
    goto LABEL_13;
  }

  v16 = sub_23D9D89C4();
  v17 = *(*(v16 - 8) + 48);
  v18 = &a1[a3[18]];

  return v17(v18, a2, v16);
}

char *sub_23D99D714(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F67E8, &qword_23D9E1028);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[13];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[14];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4590, &qword_23D9DC410);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[17];
    goto LABEL_9;
  }

  v15 = sub_23D9D89C4();
  v16 = *(*(v15 - 8) + 56);
  v17 = &v5[a4[18]];

  return v16(v17, a2, a2, v15);
}

void sub_23D99D8EC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_23D99D9B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v12[0] = v2[2];
  v5 = v12[0];
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v9 = *(type metadata accessor for AXSUITTSLanguageList.LanguageListView(0, v12) - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_23D9992E4(a1, v10, v5, v6, v7, v8, a2);
}

uint64_t objectdestroy_20Tm_0()
{
  v1 = *(v0 + 32);
  v15[0] = *(v0 + 16);
  v15[1] = v1;
  v2 = type metadata accessor for AXSUITTSLanguageList.LanguageListView(0, v15);
  v3 = (v0 + ((*(*(v2 - 1) + 80) + 48) & ~*(*(v2 - 1) + 80)));
  if (*v3)
  {
  }

  v4 = v2[13];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F67E8, &qword_23D9E1028);
  (*(*(v5 - 8) + 8))(&v3[v4], v5);
  v6 = v2[14];
  v7 = sub_23D9D8954();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(&v3[v6], 1, v7))
  {
    (*(v8 + 8))(&v3[v6], v7);
  }

  if (*&v3[v2[15]])
  {
  }

  if (*&v3[v2[16]])
  {
  }

  v10 = &v3[v2[17]];

  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4590, &qword_23D9DC410) + 32);
  if (!v9(&v10[v11], 1, v7))
  {
    (*(v8 + 8))(&v10[v11], v7);
  }

  v12 = v2[18];
  v13 = sub_23D9D89C4();
  (*(*(v13 - 8) + 8))(&v3[v12], v13);
  return swift_deallocObject();
}

uint64_t sub_23D99DD08(uint64_t a1, uint64_t (*a2)(void, void *), uint64_t (*a3)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = v3[3];
  v7 = v3[4];
  v8 = v3[5];
  v13[0] = v3[2];
  v5 = v13[0];
  v13[1] = v6;
  v13[2] = v7;
  v13[3] = v8;
  v9 = *(a2(0, v13) - 8);
  v10 = v3 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return a3(a1, v10, v5, v6, v7, v8);
}

unint64_t sub_23D99DDD8()
{
  result = qword_27E2F6880;
  if (!qword_27E2F6880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6878, &qword_23D9E10B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6880);
  }

  return result;
}

void sub_23D99DE54(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v5 = v2[1];
  v6 = sub_23D9DAF84();
  if (v6 < v5)
  {
    if (v5 >= -1)
    {
      v7 = v6;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_23D9D8954();
        v9 = sub_23D9DA984();
        *(v9 + 16) = v8;
      }

      v10 = *(sub_23D9D8954() - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      sub_23D99E27C(v11, v12, v2, a1, a2, v7);
      *(v9 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    sub_23D99DF90(0, v5, 1, a1, a2);
  }
}

void sub_23D99DF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *), uint64_t a5)
{
  v7 = v6;
  v52 = a5;
  v53 = a4;
  v11 = sub_23D9D8954();
  MEMORY[0x28223BE20](v11);
  v47 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v54 = &v38 - v14;
  v18 = MEMORY[0x28223BE20](v15);
  v39 = a2;
  if (a3 != a2)
  {
    v50 = &v38 - v16;
    v19 = *v5;
    v21 = *(v17 + 16);
    v20 = v17 + 16;
    v22 = *(v20 + 56);
    v48 = v21;
    v49 = (v20 - 8);
    v51 = v20;
    v45 = (v20 + 16);
    v46 = v19;
    v23 = (v19 + v22 * (a3 - 1));
    v44 = -v22;
    v24 = a1 - a3;
    v38 = v22;
    v25 = v19 + v22 * a3;
    v26 = v54;
    while (2)
    {
      v42 = v23;
      v43 = a3;
      v40 = v25;
      v41 = v24;
      v27 = v23;
      while (1)
      {
        v28 = v50;
        v29 = v48;
        (v48)(v50, v25, v11, v18);
        v29(v26, v27, v11);
        v30 = v53(v28, v26);
        if (v7)
        {
          v37 = *v49;
          (*v49)(v26, v11);
          v37(v28, v11);
          return;
        }

        v31 = v30;
        v32 = v26;
        v33 = *v49;
        (*v49)(v32, v11);
        v33(v28, v11);
        if ((v31 & 1) == 0)
        {
          break;
        }

        if (!v46)
        {
          __break(1u);
          return;
        }

        v34 = *v45;
        v35 = v47;
        (*v45)(v47, v25, v11);
        swift_arrayInitWithTakeFrontToBack();
        v34(v27, v35, v11);
        v27 += v44;
        v25 += v44;
        v36 = __CFADD__(v24++, 1);
        v26 = v54;
        v7 = 0;
        if (v36)
        {
          goto LABEL_11;
        }
      }

      v26 = v54;
      v7 = 0;
LABEL_11:
      a3 = v43 + 1;
      v23 = &v42[v38];
      v24 = v41 - 1;
      v25 = v40 + v38;
      if (v43 + 1 != v39)
      {
        continue;
      }

      break;
    }
  }
}

void sub_23D99E27C(int64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v142 = a1;
  v163 = sub_23D9D8954();
  MEMORY[0x28223BE20](v163);
  v146 = &v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v149 = &v134 - v14;
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  v19 = &v134 - v18;
  MEMORY[0x28223BE20](v20);
  v140 = &v134 - v21;
  MEMORY[0x28223BE20](v22);
  v29 = MEMORY[0x28223BE20](&v134 - v23);
  v161 = v26;
  v162 = a3;
  v30 = a3[1];
  if (v30 < 1)
  {
    v32 = MEMORY[0x277D84F90];
    v33 = a4;
LABEL_104:
    a4 = *v142;
    if (*v142)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_138;
      }

      goto LABEL_106;
    }

    goto LABEL_147;
  }

  v141 = &v134 - v25;
  v139 = v24;
  v151 = v19;
  v147 = v28;
  v148 = v27;
  v137 = a6;
  v31 = 0;
  v159 = (v26 + 8);
  v160 = v26 + 16;
  v155 = (v26 + 32);
  v32 = MEMORY[0x277D84F90];
  v156 = a5;
  v33 = a4;
  v158 = a4;
  while (1)
  {
    v34 = v31;
    v143 = v32;
    if ((v31 + 1) < v30)
    {
      v144 = v31;
      v145 = v30;
      v35 = *v162;
      v36 = *(v161 + 72);
      a4 = *v162 + v36 * (v31 + 1);
      v37 = *(v161 + 16);
      v38 = v163;
      v37(v141, a4, v163, v29);
      v157 = v36;
      v138 = v35;
      v39 = v35 + v36 * v144;
      v40 = v139;
      v152 = v37;
      (v37)(v139, v39, v38);
      v41 = v141;
      LODWORD(v154) = v33(v141, v40);
      if (v7)
      {
        v133 = *v159;
        (*v159)(v40, v38);
        v133(v41, v38);
        goto LABEL_117;
      }

      v164 = 0;
      v42 = *v159;
      (*v159)(v40, v38);
      v150 = v42;
      (v42)(v41, v38);
      v136 = v145 - 1;
      v153 = v145 - 2;
      v43 = v144;
      a5 = v156;
      v44 = v157;
      v45 = v138 + v157 * (v144 + 2);
      v46 = v140;
      while (v153 != v43)
      {
        v47 = v163;
        v48 = v152;
        (v152)(v46, v45, v163);
        v49 = a5;
        v50 = v151;
        (v48)(v151, a4, v47);
        v51 = v49;
        v52 = v164;
        v53 = v158(v46, v50);
        v164 = v52;
        if (v52)
        {
          v131 = v150;
          (v150)(v50, v47);
          v131(v46, v47);
LABEL_117:

          return;
        }

        v54 = v53;
        v55 = v150;
        (v150)(v50, v47);
        v55(v46, v47);
        ++v43;
        v44 = v157;
        v45 += v157;
        a4 += v157;
        a5 = v51;
        if ((v154 ^ v54))
        {
          v56 = v43 + 1;
          goto LABEL_12;
        }
      }

      v43 = v136;
      v56 = v145;
LABEL_12:
      v34 = v144;
      if (v154)
      {
        if (v56 < v144)
        {
          goto LABEL_141;
        }

        v32 = v163;
        if (v144 <= v43)
        {
          a4 = v44 * (v56 - 1);
          v57 = v56;
          v58 = v56 * v44;
          v145 = v57;
          v59 = v57;
          v60 = v144;
          v61 = v144 * v44;
          do
          {
            if (v60 != --v59)
            {
              v63 = *v162;
              if (!*v162)
              {
                goto LABEL_145;
              }

              v64 = *v155;
              (*v155)(v146, v63 + v61, v163);
              if (v61 < a4 || v63 + v61 >= (v63 + v58))
              {
                v62 = v163;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v62 = v163;
                if (v61 != a4)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v64((v63 + a4), v146, v62);
              a5 = v156;
              v44 = v157;
              v32 = v62;
            }

            ++v60;
            a4 -= v44;
            v58 -= v44;
            v61 += v44;
          }

          while (v60 < v59);
          v7 = v164;
          v33 = v158;
          v34 = v144;
          v56 = v145;
        }

        else
        {
          v7 = v164;
          v33 = v158;
        }
      }

      else
      {
        v32 = v163;
        v7 = v164;
        v33 = v158;
      }
    }

    else
    {
      v56 = (v31 + 1);
      v32 = v163;
    }

    v65 = v162[1];
    if (v56 < v65)
    {
      if (__OFSUB__(v56, v34))
      {
        goto LABEL_137;
      }

      if (v56 - v34 < v137)
      {
        if (__OFADD__(v34, v137))
        {
          __break(1u);
        }

        else
        {
          v145 = v56;
          if (&v34[v137] >= v65)
          {
            v66 = v65;
          }

          else
          {
            v66 = &v34[v137];
          }

          if (v66 >= v34)
          {
            if (v145 == v66)
            {
              v56 = v145;
              goto LABEL_38;
            }

            v164 = v7;
            v113 = *v162;
            v114 = *(v161 + 72);
            v157 = *(v161 + 16);
            v115 = (v113 + v114 * (v145 - 1));
            v153 = -v114;
            v154 = v113;
            v144 = v34;
            v116 = &v34[-v145];
            v135 = v114;
            a4 = v113 + v145 * v114;
            v152 = v66;
            while (1)
            {
              v136 = a4;
              v138 = v116;
              v150 = v115;
              while (1)
              {
                v117 = v147;
                v118 = v157;
                (v157)(v147, a4, v32, v29);
                v119 = v148;
                v118(v148, v115, v32);
                v120 = v164;
                v121 = v158(v117, v119);
                v164 = v120;
                if (v120)
                {
                  v132 = *v159;
                  (*v159)(v119, v32);
                  v132(v117, v32);
                  goto LABEL_117;
                }

                v122 = v121;
                v123 = *v159;
                (*v159)(v119, v32);
                v123(v117, v32);
                if ((v122 & 1) == 0)
                {
                  break;
                }

                if (!v154)
                {
                  goto LABEL_143;
                }

                v124 = *v155;
                v125 = v149;
                v32 = v163;
                (*v155)(v149, a4, v163);
                swift_arrayInitWithTakeFrontToBack();
                v124(v115, v125, v32);
                v115 += v153;
                a4 += v153;
                v126 = __CFADD__(v116++, 1);
                a5 = v156;
                if (v126)
                {
                  goto LABEL_101;
                }
              }

              a5 = v156;
              v32 = v163;
LABEL_101:
              v115 = &v150[v135];
              v116 = (v138 - 1);
              a4 = v136 + v135;
              v56 = v152;
              if (++v145 == v152)
              {
                v33 = v158;
                v7 = v164;
                v34 = v144;
                goto LABEL_38;
              }
            }
          }
        }

        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
        goto LABEL_144;
      }
    }

LABEL_38:
    v32 = v143;
    if (v56 < v34)
    {
      goto LABEL_136;
    }

    a4 = v33;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_23D93C534(0, *(v32 + 2) + 1, 1, v32);
    }

    v68 = *(v32 + 2);
    v67 = *(v32 + 3);
    v69 = v68 + 1;
    if (v68 >= v67 >> 1)
    {
      v32 = sub_23D93C534((v67 > 1), v68 + 1, 1, v32);
    }

    *(v32 + 2) = v69;
    v70 = &v32[16 * v68];
    *(v70 + 4) = v34;
    *(v70 + 5) = v56;
    v152 = v56;
    v71 = *v142;
    if (!*v142)
    {
      goto LABEL_146;
    }

    if (v68)
    {
      break;
    }

    a5 = v156;
    v33 = a4;
LABEL_90:
    v30 = v162[1];
    v31 = v152;
    if (v152 >= v30)
    {
      goto LABEL_104;
    }
  }

  a5 = v156;
  v33 = a4;
  while (1)
  {
    a4 = v69 - 1;
    if (v69 >= 4)
    {
      v76 = &v32[16 * v69 + 32];
      v77 = *(v76 - 64);
      v78 = *(v76 - 56);
      v82 = __OFSUB__(v78, v77);
      v79 = v78 - v77;
      if (v82)
      {
        goto LABEL_123;
      }

      v81 = *(v76 - 48);
      v80 = *(v76 - 40);
      v82 = __OFSUB__(v80, v81);
      v74 = v80 - v81;
      v75 = v82;
      if (v82)
      {
        goto LABEL_124;
      }

      v83 = &v32[16 * v69];
      v85 = *v83;
      v84 = *(v83 + 1);
      v82 = __OFSUB__(v84, v85);
      v86 = v84 - v85;
      if (v82)
      {
        goto LABEL_126;
      }

      v82 = __OFADD__(v74, v86);
      v87 = v74 + v86;
      if (v82)
      {
        goto LABEL_129;
      }

      if (v87 >= v79)
      {
        v105 = &v32[16 * a4 + 32];
        v107 = *v105;
        v106 = *(v105 + 1);
        v82 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v82)
        {
          goto LABEL_135;
        }

        if (v74 < v108)
        {
          a4 = v69 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

    if (v69 == 3)
    {
      v72 = *(v32 + 4);
      v73 = *(v32 + 5);
      v82 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      v75 = v82;
LABEL_59:
      if (v75)
      {
        goto LABEL_125;
      }

      v88 = &v32[16 * v69];
      v90 = *v88;
      v89 = *(v88 + 1);
      v91 = __OFSUB__(v89, v90);
      v92 = v89 - v90;
      v93 = v91;
      if (v91)
      {
        goto LABEL_128;
      }

      v94 = &v32[16 * a4 + 32];
      v96 = *v94;
      v95 = *(v94 + 1);
      v82 = __OFSUB__(v95, v96);
      v97 = v95 - v96;
      if (v82)
      {
        goto LABEL_131;
      }

      if (__OFADD__(v92, v97))
      {
        goto LABEL_132;
      }

      if (v92 + v97 >= v74)
      {
        if (v74 < v97)
        {
          a4 = v69 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_73;
    }

    v98 = &v32[16 * v69];
    v100 = *v98;
    v99 = *(v98 + 1);
    v82 = __OFSUB__(v99, v100);
    v92 = v99 - v100;
    v93 = v82;
LABEL_73:
    if (v93)
    {
      goto LABEL_127;
    }

    v101 = &v32[16 * a4];
    v103 = *(v101 + 4);
    v102 = *(v101 + 5);
    v82 = __OFSUB__(v102, v103);
    v104 = v102 - v103;
    if (v82)
    {
      goto LABEL_130;
    }

    if (v104 < v92)
    {
      goto LABEL_90;
    }

LABEL_80:
    v109 = a4 - 1;
    if (a4 - 1 >= v69)
    {
      break;
    }

    if (!*v162)
    {
      goto LABEL_142;
    }

    v110 = *&v32[16 * v109 + 32];
    v111 = *&v32[16 * a4 + 40];
    sub_23D99EE88((*v162 + *(v161 + 72) * v110), (*v162 + *(v161 + 72) * *&v32[16 * a4 + 32]), (*v162 + *(v161 + 72) * v111), v71, v33, a5);
    if (v7)
    {
      goto LABEL_117;
    }

    if (v111 < v110)
    {
      goto LABEL_121;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_23D950D9C(v32);
    }

    if (v109 >= *(v32 + 2))
    {
      goto LABEL_122;
    }

    v112 = &v32[16 * v109];
    *(v112 + 4) = v110;
    *(v112 + 5) = v111;
    v165 = v32;
    sub_23D950D10(a4);
    v32 = v165;
    v69 = *(v165 + 2);
    if (v69 <= 1)
    {
      goto LABEL_90;
    }
  }

  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  v32 = sub_23D950D9C(v32);
LABEL_106:
  v165 = v32;
  v127 = *(v32 + 2);
  if (v127 < 2)
  {
    goto LABEL_117;
  }

  while (*v162)
  {
    v128 = *&v32[16 * v127];
    v129 = *&v32[16 * v127 + 24];
    sub_23D99EE88((*v162 + *(v161 + 72) * v128), (*v162 + *(v161 + 72) * *&v32[16 * v127 + 16]), (*v162 + *(v161 + 72) * v129), a4, v33, a5);
    if (v7)
    {
      goto LABEL_117;
    }

    if (v129 < v128)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_23D950D9C(v32);
    }

    if (v127 - 2 >= *(v32 + 2))
    {
      goto LABEL_134;
    }

    v130 = &v32[16 * v127];
    *v130 = v128;
    *(v130 + 1) = v129;
    v165 = v32;
    sub_23D950D10(v127 - 1);
    v32 = v165;
    v127 = *(v165 + 2);
    if (v127 <= 1)
    {
      goto LABEL_117;
    }
  }

LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
}

void sub_23D99EE88(char *a1, char *a2, char *a3, char *a4, uint64_t (*a5)(char *, uint64_t), uint64_t a6)
{
  v77 = a6;
  v78 = a5;
  v76 = sub_23D9D8954();
  v11 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v17 = &v68 - v16;
  MEMORY[0x28223BE20](v18);
  v22 = *(v21 + 72);
  if (!v22)
  {
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v23 = &v68 - v19;
  if (a2 - a1 == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_67;
  }

  v24 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v22 != -1)
  {
    v25 = (a2 - a1) / v22;
    v84 = a1;
    v83 = a4;
    v79 = v22;
    if (v25 < v24 / v22)
    {
      v26 = v25 * v22;
      if (a4 < a1 || &a1[v26] <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v75 = &a4[v26];
      v82 = &a4[v26];
      if (v26 >= 1 && a2 < a3)
      {
        v52 = *(v11 + 16);
        v73 = v17;
        v74 = v11 + 16;
        v71 = v52;
        v72 = (v11 + 8);
        v53 = v23;
        v54 = v76;
        v55 = v6;
        v70 = a3;
        while (1)
        {
          v80 = a1;
          v56 = v71;
          v71(v53, a2, v54);
          v57 = a2;
          v58 = v53;
          v59 = v73;
          v56(v73, a4, v54);
          v60 = v78(v58, v59);
          if (v55)
          {
            break;
          }

          v61 = v60;
          v81 = 0;
          v62 = *v72;
          (*v72)(v59, v54);
          v62(v58, v54);
          v53 = v58;
          if (v61)
          {
            v63 = v79;
            v64 = v80;
            a2 = &v57[v79];
            if (v80 < v57 || v80 >= a2)
            {
              v54 = v76;
              swift_arrayInitWithTakeFrontToBack();
              v63 = v79;
              v55 = v81;
            }

            else
            {
              v55 = v81;
              v54 = v76;
              if (v80 != v57)
              {
                swift_arrayInitWithTakeBackToFront();
                v63 = v79;
              }
            }
          }

          else
          {
            v63 = v79;
            v64 = v80;
            v65 = &a4[v79];
            a2 = v57;
            if (v80 < a4 || v80 >= v65)
            {
              v54 = v76;
              swift_arrayInitWithTakeFrontToBack();
              v63 = v79;
              v55 = v81;
            }

            else
            {
              v55 = v81;
              v54 = v76;
              if (v80 != a4)
              {
                swift_arrayInitWithTakeBackToFront();
                v63 = v79;
              }
            }

            v83 = v65;
            a4 = v65;
          }

          a1 = &v64[v63];
          v84 = a1;
          if (a4 >= v75 || a2 >= v70)
          {
            goto LABEL_65;
          }
        }

        v66 = *v72;
        (*v72)(v59, v54);
        v66(v58, v54);
      }

LABEL_65:
      sub_23D99F580(&v84, &v83, &v82);
      return;
    }

    v75 = v20;
    v27 = a3;
    v28 = a2;
    v29 = v24 / v22 * v22;
    if (a4 < v28 || &v28[v29] <= a4)
    {
      v30 = v28;
      v31 = v76;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      v30 = v28;
      v31 = v76;
      if (a4 == v28)
      {
LABEL_24:
        v81 = v6;
        v33 = &a4[v29];
        if (v29 >= 1)
        {
          v34 = -v22;
          v68 = a4;
          v69 = (v11 + 16);
          v71 = (v11 + 8);
          v35 = &a4[v29];
          v36 = v27;
          v37 = v75;
          v80 = a1;
          v73 = -v22;
          do
          {
            v74 = v33;
            v70 = v33;
            v38 = v30;
            v76 = v30 + v34;
            v72 = v30;
            while (1)
            {
              if (v38 <= a1)
              {
                v84 = v38;
                v33 = v70;
                goto LABEL_64;
              }

              v39 = v36;
              v40 = v73;
              v79 = v35;
              v41 = &v35[v73];
              v42 = *v69;
              (*v69)(v37, &v35[v73], v31);
              v42(v13, v76, v31);
              v43 = v37;
              v44 = v81;
              v45 = v78(v37, v13);
              v81 = v44;
              if (v44)
              {
                v67 = *v71;
                (*v71)(v13, v31);
                v67(v43, v31);
                v84 = v72;
                v33 = v74;
                goto LABEL_64;
              }

              v46 = v45;
              v47 = &v39[v40];
              v48 = v13;
              v49 = *v71;
              v50 = v48;
              (*v71)();
              v49(v43, v31);
              if (v46)
              {
                break;
              }

              v36 = &v39[v40];
              if (v39 < v79 || v47 >= v79)
              {
                swift_arrayInitWithTakeFrontToBack();
                v13 = v50;
                v37 = v75;
              }

              else
              {
                v13 = v50;
                v37 = v75;
                if (v39 != v79)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v74 = v41;
              v35 = v41;
              a1 = v80;
              v38 = v72;
              if (v41 <= v68)
              {
                v30 = v72;
                v33 = v74;
                goto LABEL_63;
              }
            }

            v36 = &v39[v40];
            if (v39 < v72 || v47 >= v72)
            {
              v30 = v76;
              swift_arrayInitWithTakeFrontToBack();
              v51 = v68;
              v13 = v50;
              v37 = v75;
            }

            else
            {
              v37 = v75;
              v30 = v76;
              v51 = v68;
              v13 = v50;
              if (v39 != v72)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v35 = v79;
            a1 = v80;
            v34 = v73;
            v33 = v74;
          }

          while (v79 > v51);
        }

LABEL_63:
        v84 = v30;
LABEL_64:
        v82 = v33;
        goto LABEL_65;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v22 = v79;
    goto LABEL_24;
  }

LABEL_68:
  __break(1u);
}

uint64_t sub_23D99F580(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_23D9D8954();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_23D99F664(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_23D9D8954();
  v42 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_23D99F91C()
{
  v1 = *(v0 + 32);
  v19[0] = *(v0 + 16);
  v19[1] = v1;
  v2 = type metadata accessor for AXSUITTSLanguageList.LanguageListView(0, v19);
  v18 = *(*(v2 - 1) + 80);
  v16 = *(*(v2 - 1) + 64);
  v3 = sub_23D9D8954();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v17 = (v18 + 48) & ~v18;
  v6 = v0 + v17;
  if (*(v0 + v17))
  {
  }

  v7 = v2[13];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F67E8, &qword_23D9E1028);
  (*(*(v8 - 8) + 8))(v6 + v7, v8);
  v9 = v2[14];
  v10 = *(v4 + 48);
  if (!v10(v6 + v9, 1, v3))
  {
    (*(v4 + 8))(v6 + v9, v3);
  }

  if (*(v6 + v2[15]))
  {
  }

  if (*(v6 + v2[16]))
  {
  }

  v11 = v6 + v2[17];

  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4590, &qword_23D9DC410) + 32);
  if (!v10(v11 + v12, 1, v3))
  {
    (*(v4 + 8))(v11 + v12, v3);
  }

  v13 = v2[18];
  v14 = sub_23D9D89C4();
  (*(*(v14 - 8) + 8))(v6 + v13, v14);
  (*(v4 + 8))(v0 + ((v17 + v16 + v5) & ~v5), v3);
  return swift_deallocObject();
}

uint64_t sub_23D99FBE4()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v11[0] = v0[2];
  v1 = v11[0];
  v11[1] = v2;
  v11[2] = v3;
  v11[3] = v4;
  v5 = *(type metadata accessor for AXSUITTSLanguageList.LanguageListView(0, v11) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_23D9D8954() - 8);
  v9 = v0 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_23D9989A0(v0 + v6, v9, v1, v2, v3, v4);
}

uint64_t sub_23D99FD1C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23D99FD2C()
{
  v1 = *(v0 + 32);
  v18[0] = *(v0 + 16);
  v18[1] = v1;
  v2 = type metadata accessor for AXSUITTSLanguageList(0, v18);
  v3 = *(*(v2 - 1) + 80);
  v16 = *(*(v2 - 1) + 64);
  v17 = sub_23D9D89C4();
  v4 = *(v17 - 8);
  v5 = *(v4 + 80);
  v6 = (v0 + ((v3 + 48) & ~v3));

  if (*(v6 + 2))
  {
  }

  if (*(v6 + 4))
  {
  }

  if (*(v6 + 7))
  {
  }

  v7 = v2[17];
  v8 = sub_23D9D8954();
  v15 = *(v8 - 8);
  v9 = *(v15 + 48);
  if (!v9(&v6[v7], 1, v8))
  {
    (*(v15 + 8))(&v6[v7], v8);
  }

  v10 = v2[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6BF0, &qword_23D9DD340);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23D9D9954();
    (*(*(v11 - 8) + 8))(&v6[v10], v11);
  }

  else
  {
  }

  v12 = &v6[v2[21]];
  if (v12[40])
  {
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
  }

  v13 = &v6[v2[22]];
  if (!v9(v13, 1, v8))
  {
    (*(v15 + 8))(v13, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4678, &qword_23D9DC658);

  (*(v4 + 8))(v0 + ((((v3 + 48) & ~v3) + v16 + v5) & ~v5), v17);
  return swift_deallocObject();
}

uint64_t sub_23D9A004C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v15[0] = v2[2];
  v5 = v15[0];
  v15[1] = v6;
  v15[2] = v7;
  v15[3] = v8;
  v9 = *(type metadata accessor for AXSUITTSLanguageList(0, v15) - 8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_23D9D89C4() - 8);
  v13 = v2 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80));

  return sub_23D99BD54(a1, (v2 + v10), v13, v5, v6, v7, v8, a2);
}

unint64_t sub_23D9A016C()
{
  result = qword_27E2F6C50;
  if (!qword_27E2F6C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6C50);
  }

  return result;
}

uint64_t objectdestroyTm_8()
{
  v1 = *(v0 + 32);
  v13[0] = *(v0 + 16);
  v13[1] = v1;
  v2 = type metadata accessor for AXSUITTSLanguageList(0, v13);
  v3 = (v0 + ((*(*(v2 - 1) + 80) + 48) & ~*(*(v2 - 1) + 80)));

  if (*(v3 + 2))
  {
  }

  if (*(v3 + 4))
  {
  }

  if (*(v3 + 7))
  {
  }

  v4 = v2[17];
  v5 = sub_23D9D8954();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (!v7(&v3[v4], 1, v5))
  {
    (*(v6 + 8))(&v3[v4], v5);
  }

  v8 = v2[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6BF0, &qword_23D9DD340);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_23D9D9954();
    (*(*(v9 - 8) + 8))(&v3[v8], v9);
  }

  else
  {
  }

  v10 = &v3[v2[21]];
  if (v10[40])
  {
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
  }

  v11 = &v3[v2[22]];
  if (!v7(v11, 1, v5))
  {
    (*(v6 + 8))(v11, v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4678, &qword_23D9DC658);

  return swift_deallocObject();
}

uint64_t sub_23D9A0460(uint64_t a1, uint64_t *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v3[2] = v6;
  v3[3] = v7;
  v3[4] = v8;
  v3[5] = v9;
  v10 = *(type metadata accessor for AXSUITTSLanguageList(0, (v3 + 2)) - 8);
  v11 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v12 = swift_task_alloc();
  v3[6] = v12;
  *v12 = v3;
  v12[1] = sub_23D9A057C;

  return sub_23D996278(a1, a2, v2 + v11, v6, v7, v8, v9);
}

uint64_t sub_23D9A057C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23D9A06BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23D9A0704(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F45D0, &unk_23D9DC5C0);
  sub_23D9D8954();
  swift_getTupleTypeMetadata2();
  sub_23D9DA7C4();
  sub_23D9DAD74();
  swift_getTupleTypeMetadata2();
  sub_23D9DA7C4();
  swift_getWitnessTable();
  sub_23D9DA464();
  swift_getWitnessTable();
  sub_23D9DA444();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E2F6A10, &qword_23D9DD4D0);
  swift_getWitnessTable();
  sub_23D91F01C(&qword_27E2F6A20, &unk_27E2F6A10, &qword_23D9DD4D0, MEMORY[0x277CDE360]);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_23D9DA474();
  swift_getWitnessTable();
  sub_23D9A06BC(&qword_27E2F58C0, MEMORY[0x277CC9640], MEMORY[0x277CC9650]);
  swift_getOpaqueTypeMetadata2();
  sub_23D91F01C(&qword_27E2F4800, &qword_27E2F45D0, &unk_23D9DC5C0, MEMORY[0x277D83980]);
  sub_23D9DA634();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6878, &qword_23D9E10B8);
  swift_getTupleTypeMetadata2();
  v6[0] = v1;
  v6[1] = sub_23D9DA7C4();
  v6[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F65D0, &qword_23D9E09B0);
  v6[3] = swift_getWitnessTable();
  v6[4] = sub_23D91F01C(&qword_27E2F65C8, &qword_27E2F65D0, &qword_23D9E09B0, MEMORY[0x277CDD7F0]);
  v2 = type metadata accessor for AXSUIStreamValueView(255, v6);
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for AXSUIPlatformFormListView(255, v2, WitnessTable, v4);
  return swift_getWitnessTable();
}

uint64_t sub_23D9A0AF4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_23D9A0B38(void *a1)
{
  v2 = type metadata accessor for AXTipCellContentView(0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4880, &unk_23D9DCA90);
  swift_storeEnumTagMultiPayload();
  v6 = (v5 + *(v3 + 28));
  type metadata accessor for AXUIInstructionalCellContentViewModel(0);
  sub_23D9A5688(&qword_27E2F68B0, type metadata accessor for AXUIInstructionalCellContentViewModel, &protocol conformance descriptor for AXUIInstructionalCellContentViewModel);
  v7 = a1;
  *v6 = sub_23D9D95E4();
  v6[1] = v8;
  v9 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F68B8, &qword_23D9E1168));
  return sub_23D9D9AF4();
}

id AXUIInstructionalCellContentViewBridge.init()()
{
  v1 = OBJC_IVAR___AXUIInstructionalCellContentViewBridge__colorScheme;
  *&v0[v1] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4880, &unk_23D9DCA90);
  swift_storeEnumTagMultiPayload();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for AXUIInstructionalCellContentViewBridge(0);
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_23D9A0F08()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D9D9384();
}

uint64_t sub_23D9A0F84(uint64_t a1, void **a2)
{
  sub_23D960024(a1, v7);
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D960024(v7, &v6);
  v4 = v3;
  sub_23D9D9394();
  return __swift_destroy_boxed_opaque_existential_0(v7);
}

uint64_t sub_23D9A100C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D9D9384();
}

uint64_t sub_23D9A1084(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D960024(a1, v5);
  v3 = v1;
  sub_23D9D9394();
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t (*sub_23D9A1100(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23D9D9374();
  return sub_23D9A11A4;
}

void sub_23D9A11A4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_23D9A120C(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F68D0, &qword_23D9E11B8);
  sub_23D9D9354();
  return swift_endAccess();
}

uint64_t sub_23D9A1284(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F68D8, &qword_23D9E11C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F68D0, &qword_23D9E11B8);
  sub_23D9D9364();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_23D9A1408()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F68D0, &qword_23D9E11B8);
  sub_23D9D9354();
  return swift_endAccess();
}

uint64_t sub_23D9A147C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F68D8, &qword_23D9E11C0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F68D0, &qword_23D9E11B8);
  sub_23D9D9364();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_23D9A15B4(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F68D8, &qword_23D9E11C0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC23AccessibilitySettingsUI37AXUIInstructionalCellContentViewModel__tip;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F68D0, &qword_23D9E11B8);
  sub_23D9D9354();
  swift_endAccess();
  return sub_23D9A1724;
}

void sub_23D9A1724(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_23D9D9364();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_23D9D9364();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t sub_23D9A190C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D9D9384();

  return v1;
}

uint64_t sub_23D9A19F0@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D9D9384();

  *a2 = v4;
  return result;
}

uint64_t sub_23D9A1A70(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_23D9D9394();
}

uint64_t (*sub_23D9A1BF8())()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D9D9384();

  *(swift_allocObject() + 16) = v1;
  return sub_23D9A5EE8;
}

uint64_t (*sub_23D9A1E80())()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D9D9384();

  *(swift_allocObject() + 16) = v1;
  return sub_23D9A5D98;
}

double sub_23D9A1FF0@<D0>(_OWORD *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D9D9384();

  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t sub_23D9A206C(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v7 = v6;
  return sub_23D9D9394();
}

id AXUIInstructionalCellContentViewModel.__allocating_init(tipType:title:image:imageIgnoresInvertColors:description:linkTitle:linkCallback:closeCallback:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = v13;
  v65 = v14;
  v19 = objc_allocWithZone(v14);
  if (a1 == 3)
  {
    sub_23D91B650();
    v60 = sub_23D9D9F04();
    v62 = v35;
    v37 = v36;
    v39 = v38;
    v69 = a6;
    v70 = a7;
    v40 = sub_23D9D9F04();
    v42 = v41;
    v29 = v43;
    v45 = v44 & 1;
    v46 = a4;
    v33 = sub_23D9DA354();
    v73 = v39 & 1;
    v71 = &type metadata for AXVoiceControlDonationTip;
    v72 = sub_23D9A45A0();
LABEL_6:
    v34 = swift_allocObject();
    v69 = v34;
    *(v34 + 16) = v60;
    *(v34 + 24) = v37;
    *(v34 + 32) = v73;
    *(v34 + 40) = v62;
    *(v34 + 48) = v40;
    *(v34 + 56) = v42;
    *(v34 + 64) = v45;
    goto LABEL_7;
  }

  if (a1 != 1)
  {
    sub_23D91B650();
    v60 = sub_23D9D9F04();
    v62 = v47;
    v37 = v48;
    v50 = v49;
    v69 = a6;
    v70 = a7;
    v40 = sub_23D9D9F04();
    v42 = v51;
    v29 = v52;
    v45 = v53 & 1;
    v54 = a4;
    v33 = sub_23D9DA354();
    v73 = v50 & 1;
    v71 = &type metadata for AXLiveRecognitionTip;
    v72 = sub_23D9A44E8();
    goto LABEL_6;
  }

  sub_23D91B650();
  v20 = sub_23D9D9F04();
  v59 = v21;
  v61 = v22;
  v24 = v23;
  v70 = a7;
  v25 = sub_23D9D9F04();
  v27 = v26;
  v29 = v28;
  v31 = v30 & 1;
  v32 = a4;
  v33 = sub_23D9DA354();
  v73 = v24 & 1;
  v71 = &type metadata for AXBrailleTip;
  v72 = sub_23D9A45F4();
  v34 = swift_allocObject();
  v69 = v34;
  *(v34 + 16) = v20;
  *(v34 + 24) = v59;
  *(v34 + 32) = v73;
  *(v34 + 40) = v61;
  *(v34 + 48) = v25;
  *(v34 + 56) = v27;
  *(v34 + 64) = v31;
LABEL_7:
  *(v34 + 72) = v29;
  *(v34 + 80) = v33;
  *(v34 + 88) = a8;
  *(v34 + 96) = a9;
  *(v34 + 104) = a12;
  *(v34 + 112) = a13;
  swift_beginAccess();
  sub_23D960024(&v69, &v67);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F68E8, &unk_23D9E11C8);
  sub_23D9D9344();
  __swift_destroy_boxed_opaque_existential_0(&v69);
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v67) = a5 & 1;
  sub_23D9D9344();
  swift_endAccess();
  swift_beginAccess();
  v55 = swift_allocObject();
  *(v55 + 16) = a10;
  *(v55 + 24) = a11;
  v67 = sub_23D9A4540;
  v68 = v55;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4350, qword_23D9DBF90);
  sub_23D9D9344();
  swift_endAccess();
  swift_beginAccess();
  v56 = swift_allocObject();
  *(v56 + 16) = a12;
  *(v56 + 24) = a13;
  v67 = sub_23D9A5F0C;
  v68 = v56;

  sub_23D9D9344();
  swift_endAccess();
  v66.receiver = v19;
  v66.super_class = v65;
  v57 = objc_msgSendSuper2(&v66, sel_init);

  return v57;
}

id AXUIInstructionalCellContentViewModel.init(tipType:title:image:imageIgnoresInvertColors:description:linkTitle:linkCallback:closeCallback:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = sub_23D9A46C0(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);

  return v14;
}

id AXUIInstructionalCellContentViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_23D9A27DC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_23D9A2968@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AXUIInstructionalCellContentViewModel(0);
  result = sub_23D9D9334();
  *a2 = result;
  return result;
}

uint64_t sub_23D9A2A3C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23D9D9954();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4880, &unk_23D9DCA90);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_23D9A5CD8(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23D9D9464();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_23D9DACD4();
    v13 = sub_23D9D9D24();
    sub_23D9D91B4();

    sub_23D9D9944();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_23D9A2C40()
{
  v1 = *v0;
  sub_23D91E0AC(*v0, *(v0 + 8), *(v0 + 16));

  return v1;
}

uint64_t sub_23D9A2CA0()
{
  v1 = v0[4];
  sub_23D992AF4(v1, v0[5], v0[6], v0[7]);
  return v1;
}

uint64_t sub_23D9A2CF0()
{
  if (!*(v0 + 80))
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6990, &unk_23D9E1680);
  sub_23D9D92F4();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_23D9DC3E0;
  sub_23D91B650();

  sub_23D9D92D4();
  return v1;
}

uint64_t sub_23D9A2E20()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6980, &qword_23D9E1670);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - v2;
  v4 = sub_23D9D92B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6988, &qword_23D9E1678);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  sub_23D9D92C4();
  v12 = MEMORY[0x277CE1A20];
  MEMORY[0x23EEF2570](v7, v4, MEMORY[0x277CE1A20]);
  (*(v5 + 8))(v7, v4);
  v16 = v4;
  v17 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x23EEF2590](v11, v8, OpaqueTypeConformance2);
  v16 = v8;
  v17 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v14 = sub_23D9D9284();
  (*(v1 + 8))(v3, v0);
  (*(v9 + 8))(v11, v8);
  return v14;
}

uint64_t sub_23D9A30E4@<X0>(uint64_t a1@<X8>)
{
  FunctionReplacement = swift_getFunctionReplacement();
  if (FunctionReplacement)
  {

    return FunctionReplacement();
  }

  else
  {
    v5 = sub_23D9D9464();
    v89 = &v54;
    v79 = *(v5 - 8);
    v80 = v5;
    MEMORY[0x28223BE20](v5);
    v72 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v88 = &v54;
    MEMORY[0x28223BE20](v7);
    v68 = &v54 - v8;
    v66 = sub_23D9D9224();
    v87 = &v54;
    v9 = *(v66 - 8);
    MEMORY[0x28223BE20](v66);
    v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = type metadata accessor for AXTipCellContentView(0);
    v86 = &v54;
    v59 = *(v12 - 8);
    v90 = *(v59 + 64);
    MEMORY[0x28223BE20](v12);
    v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6998, &qword_23D9E1690);
    v85 = &v54;
    v16 = v15;
    v60 = *(v15 - 8);
    MEMORY[0x28223BE20](v15);
    v18 = &v54 - v17;
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F69A0, &qword_23D9E1698);
    v84 = &v54;
    v76 = *(v74 - 8);
    MEMORY[0x28223BE20](v74);
    v55 = &v54 - v19;
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F69A8, &qword_23D9E16A0);
    v83 = &v54;
    v70 = *(v73 - 8);
    MEMORY[0x28223BE20](v73);
    v62 = &v54 - v20;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F69B0, &qword_23D9E16A8);
    v82 = &v54;
    v65 = v21 - 8;
    MEMORY[0x28223BE20](v21 - 8);
    v61 = &v54 - v22;
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F69B8, &qword_23D9E16B0);
    v81 = &v54;
    MEMORY[0x28223BE20](v67);
    v64 = &v54 - v23;
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F69C0, &qword_23D9E16B8);
    v78 = &v54;
    MEMORY[0x28223BE20](v77);
    v71 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    v75 = &v54;
    MEMORY[0x28223BE20](v25);
    v63 = &v54 - v26;
    v69 = a1;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D9D9384();

    v27 = v14;
    v57 = v14;
    sub_23D9A54E8(v1, v14);
    v59 = *(v59 + 80);
    v28 = (v59 + 16) & ~v59;
    v58 = v28;
    v29 = swift_allocObject();
    sub_23D9A5550(v27, v29 + v28);
    sub_23D9D9254();
    sub_23D9D9264();
    v30 = sub_23D9A5624();
    v31 = sub_23D9A5688(&qword_27E2F69D0, MEMORY[0x277CE19A0], MEMORY[0x277CE1998]);
    v32 = v16;
    v33 = v66;
    v56 = v1;
    sub_23D9D9F34();
    (*(v9 + 8))(v11, v33);
    (*(v60 + 8))(v18, v32);
    v34 = v68;
    sub_23D9A2A3C(v68);
    v36 = v79;
    v35 = v80;
    v37 = v72;
    (*(v79 + 104))(v72, *MEMORY[0x277CDF3C8], v80);
    v38 = sub_23D9D9454();
    v39 = *(v36 + 8);
    v39(v37, v35);
    v39(v34, v35);
    v40 = objc_opt_self();
    v41 = &selRef_secondarySystemBackgroundColor;
    if ((v38 & 1) == 0)
    {
      v41 = &selRef_systemBackgroundColor;
    }

    v42 = [v40 *v41];
    v91 = sub_23D9DA244();
    v92 = v32;
    v93 = v33;
    v94 = v30;
    v95 = v31;
    swift_getOpaqueTypeConformance2();
    v43 = v62;
    v44 = v74;
    v45 = v55;
    sub_23D9D9F44();

    (*(v76 + 8))(v45, v44);
    v46 = v61;
    (*(v70 + 32))(v61, v43, v73);
    v47 = (v46 + *(v65 + 44));
    *v47 = sub_23D9A3C40;
    v47[1] = 0;
    v47[2] = 0;
    v47[3] = 0;
    v48 = v57;
    sub_23D9A54E8(v56, v57);
    v49 = v58;
    v50 = swift_allocObject();
    sub_23D9A5550(v48, v50 + v49);
    v51 = v64;
    v52 = &v64[*(v67 + 36)];
    sub_23D9D9584();
    sub_23D9DA9C4();
    *v52 = &unk_23D9E16C8;
    *(v52 + 1) = v50;
    sub_23D9A58C0(v46, v51);
    sub_23D9A5930();
    v53 = v63;
    sub_23D9DA114();
    sub_23D91F344(v51, &qword_27E2F69B8, &qword_23D9E16B0);
    sub_23D9A5B5C(v53, v71);
    sub_23D9A5BCC();
    sub_23D9D9B34();
    return sub_23D91F344(v53, &qword_27E2F69C0, &qword_23D9E16B8);
  }
}

uint64_t sub_23D9A3B40(uint64_t a1, uint64_t a2)
{
  if (sub_23D9D92E4() == 0x6E696C2D6E65706FLL && v2 == 0xE90000000000006BLL)
  {
  }

  else
  {
    v3 = sub_23D9DAFC4();

    if ((v3 & 1) == 0)
    {
      return result;
    }
  }

  type metadata accessor for AXTipCellContentView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D9D9384();

  v6(v5);
}

void sub_23D9A3C40()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = sub_23D9DA8A4();
  [v0 postNotificationName:v1 object:0];
}

uint64_t sub_23D9A3CDC(uint64_t a1)
{
  v1[9] = a1;
  v2 = sub_23D9D9314();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F69F0, &qword_23D9E16D0);
  v1[14] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F69F8, &qword_23D9E16D8);
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6A00, &qword_23D9E16E0);
  v1[18] = v4;
  v1[19] = *(v4 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = sub_23D9DA9B4();
  v1[22] = sub_23D9DA9A4();
  v6 = sub_23D9DA994();
  v1[23] = v6;
  v1[24] = v5;

  return MEMORY[0x2822009F8](sub_23D9A3EE8, v6, v5);
}

uint64_t sub_23D9A3EE8()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = *(v0 + 72);
  *(v0 + 200) = *(v4 + *(type metadata accessor for AXTipCellContentView(0) + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D9D9384();

  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_23D9D9234();
  sub_23D9DAA04();
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v5 = *MEMORY[0x277CE1A50];
  *(v0 + 224) = *MEMORY[0x277CE1A10];
  *(v0 + 228) = v5;
  v6 = sub_23D9DA9A4();
  *(v0 + 208) = v6;
  v7 = swift_task_alloc();
  *(v0 + 216) = v7;
  *v7 = v0;
  v7[1] = sub_23D9A409C;
  v8 = *(v0 + 144);
  v9 = *(v0 + 112);
  v10 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v9, v6, v10, v8);
}

uint64_t sub_23D9A409C()
{
  v1 = *v0;

  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  return MEMORY[0x2822009F8](sub_23D9A41E0, v3, v2);
}

uint64_t sub_23D9A41E0()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v7 = *(v0 + 224);
    v6 = *(v0 + 228);
    v8 = *(v0 + 96);
    (*(v3 + 32))(*(v0 + 104), v1, v2);
    v9 = sub_23D9D92A4();
    (*(*(v9 - 8) + 104))(v8, v7, v9);
    (*(v3 + 104))(v8, v6, v2);
    v10 = sub_23D9D9304();
    v11 = *(v3 + 8);
    v11(v8, v2);
    if (v10)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_23D9D9384();

      (*(v0 + 56))(v12);
    }

    v11(*(v0 + 104), *(v0 + 80));
    v13 = sub_23D9DA9A4();
    *(v0 + 208) = v13;
    v14 = swift_task_alloc();
    *(v0 + 216) = v14;
    *v14 = v0;
    v14[1] = sub_23D9A409C;
    v15 = *(v0 + 144);
    v16 = *(v0 + 112);
    v17 = MEMORY[0x277D85700];

    return MEMORY[0x2822003E8](v16, v13, v17, v15);
  }
}

unint64_t sub_23D9A44E8()
{
  result = qword_27E2F68E0;
  if (!qword_27E2F68E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F68E0);
  }

  return result;
}

uint64_t sub_23D9A4568()
{

  return swift_deallocObject();
}

unint64_t sub_23D9A45A0()
{
  result = qword_27E2F6908;
  if (!qword_27E2F6908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6908);
  }

  return result;
}

unint64_t sub_23D9A45F4()
{
  result = qword_27E2F6910;
  if (!qword_27E2F6910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6910);
  }

  return result;
}

uint64_t objectdestroyTm_9()
{
  sub_23D9274BC(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  if (*(v0 + 72))
  {
    sub_23D9274BC(*(v0 + 48), *(v0 + 56), *(v0 + 64));
  }

  return swift_deallocObject();
}

id sub_23D9A46C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a1 == 3)
  {
    sub_23D91B650();
    v32 = sub_23D9D9F04();
    v34 = v33;
    v36 = v35;
    v66 = v37;
    v74 = a7;
    v38 = sub_23D9D9F04();
    v40 = v39;
    v42 = v41;
    v44 = v43 & 1;
    v45 = a4;
    v46 = sub_23D9DA354();
    v77 = v36 & 1;
    v75 = &type metadata for AXVoiceControlDonationTip;
    v76 = sub_23D9A45A0();
    v31 = swift_allocObject();
    v73 = v31;
    *(v31 + 16) = v32;
    *(v31 + 24) = v34;
    v47 = a12;
    *(v31 + 32) = v77;
    *(v31 + 40) = v66;
    *(v31 + 48) = v38;
    *(v31 + 56) = v40;
    *(v31 + 64) = v44;
    *(v31 + 72) = v42;
    *(v31 + 80) = v46;
    *(v31 + 88) = a8;
    *(v31 + 96) = a9;
  }

  else
  {
    if (a1 == 1)
    {
      sub_23D91B650();
      v16 = sub_23D9D9F04();
      v18 = v17;
      v20 = v19;
      v65 = v21;
      v74 = a7;
      v22 = sub_23D9D9F04();
      v24 = v23;
      v26 = v25;
      v28 = v27 & 1;
      v29 = a4;
      v30 = sub_23D9DA354();
      v77 = v20 & 1;
      v75 = &type metadata for AXBrailleTip;
      v76 = sub_23D9A45F4();
      v31 = swift_allocObject();
      v73 = v31;
      *(v31 + 16) = v16;
      *(v31 + 24) = v18;
      *(v31 + 32) = v77;
      *(v31 + 40) = v65;
      *(v31 + 48) = v22;
      *(v31 + 56) = v24;
      *(v31 + 64) = v28;
      *(v31 + 72) = v26;
    }

    else
    {
      sub_23D91B650();
      v48 = sub_23D9D9F04();
      v50 = v49;
      v52 = v51;
      v67 = v53;
      v74 = a7;
      v54 = sub_23D9D9F04();
      v56 = v55;
      v58 = v57;
      v60 = v59 & 1;
      v61 = a4;
      v30 = sub_23D9DA354();
      v77 = v52 & 1;
      v75 = &type metadata for AXLiveRecognitionTip;
      v76 = sub_23D9A44E8();
      v31 = swift_allocObject();
      v73 = v31;
      *(v31 + 16) = v48;
      *(v31 + 24) = v50;
      *(v31 + 32) = v77;
      *(v31 + 40) = v67;
      *(v31 + 48) = v54;
      *(v31 + 56) = v56;
      *(v31 + 64) = v60;
      *(v31 + 72) = v58;
    }

    *(v31 + 80) = v30;
    *(v31 + 88) = a8;
    *(v31 + 96) = a9;
    v47 = a12;
  }

  *(v31 + 104) = v47;
  *(v31 + 112) = a13;
  swift_beginAccess();
  sub_23D960024(&v73, &v71);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F68E8, &unk_23D9E11C8);
  sub_23D9D9344();
  __swift_destroy_boxed_opaque_existential_0(&v73);
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v71) = a5 & 1;
  sub_23D9D9344();
  swift_endAccess();
  swift_beginAccess();
  v62 = swift_allocObject();
  *(v62 + 16) = a10;
  *(v62 + 24) = a11;
  v71 = sub_23D9A5F0C;
  v72 = v62;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4350, qword_23D9DBF90);
  sub_23D9D9344();
  swift_endAccess();
  swift_beginAccess();
  v63 = swift_allocObject();
  *(v63 + 16) = v47;
  *(v63 + 24) = a13;
  v71 = sub_23D9A5F0C;
  v72 = v63;

  sub_23D9D9344();
  swift_endAccess();
  v70.receiver = v13;
  v70.super_class = type metadata accessor for AXUIInstructionalCellContentViewModel(0);
  return objc_msgSendSuper2(&v70, sel_init);
}

void sub_23D9A4B4C(uint64_t a1)
{
  sub_23D9A52D0(319, &qword_27E2F6928, MEMORY[0x277CDF460]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_23D9A4C4C(uint64_t a1)
{
  sub_23D953080(319, &qword_27E2F6940, &qword_27E2F68E8, &unk_23D9E11C8);
  if (v1 <= 0x3F)
  {
    sub_23D9A4EFC();
    if (v2 <= 0x3F)
    {
      sub_23D953080(319, &qword_27E2F6948, &qword_27E2F4350, qword_23D9DBF90);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_23D9A4EFC()
{
  if (!qword_27E2F54B0)
  {
    v0 = sub_23D9D93A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2F54B0);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI4TextVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_23D9A4FC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23D9A500C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_23D9A5088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F48B0, &unk_23D9DF0F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23D9A5168(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F48B0, &unk_23D9DF0F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_23D9A5230(uint64_t a1)
{
  sub_23D9A52D0(319, &qword_27E2F48D8, MEMORY[0x277CDF470]);
  if (v1 <= 0x3F)
  {
    sub_23D9A5330(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23D9A52D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_23D9D9464();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_23D9A5330(uint64_t a1)
{
  if (!qword_27E2F6960)
  {
    type metadata accessor for AXUIInstructionalCellContentViewModel(255);
    sub_23D9A5688(&qword_27E2F68B0, type metadata accessor for AXUIInstructionalCellContentViewModel, &protocol conformance descriptor for AXUIInstructionalCellContentViewModel);
    v1 = sub_23D9D95F4();
    if (!v2)
    {
      atomic_store(v1, &qword_27E2F6960);
    }
  }
}

unint64_t sub_23D9A53E4()
{
  result = qword_27E2F6968;
  if (!qword_27E2F6968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6968);
  }

  return result;
}

unint64_t sub_23D9A543C()
{
  result = qword_27E2F6970;
  if (!qword_27E2F6970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6970);
  }

  return result;
}

unint64_t sub_23D9A5494()
{
  result = qword_27E2F6978;
  if (!qword_27E2F6978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6978);
  }

  return result;
}

uint64_t sub_23D9A54E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXTipCellContentView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D9A5550(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXTipCellContentView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D9A55B4(uint64_t a1)
{
  v3 = *(type metadata accessor for AXTipCellContentView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_23D9A3B40(a1, v4);
}

unint64_t sub_23D9A5624()
{
  result = qword_27E2F69C8;
  if (!qword_27E2F69C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6998, &qword_23D9E1690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F69C8);
  }

  return result;
}

uint64_t sub_23D9A5688(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_67Tm()
{
  v1 = type metadata accessor for AXTipCellContentView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4880, &unk_23D9DCA90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_23D9D9464();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_23D9A57F4()
{
  v2 = *(type metadata accessor for AXTipCellContentView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23D928310;

  return sub_23D9A3CDC(v0 + v3);
}

uint64_t sub_23D9A58C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F69B0, &qword_23D9E16A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23D9A5930()
{
  result = qword_27E2F69D8;
  if (!qword_27E2F69D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F69B8, &qword_23D9E16B0);
    sub_23D9A59EC();
    sub_23D9A5688(&qword_27E2F4228, MEMORY[0x277CDD8B8], MEMORY[0x277CDD8A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F69D8);
  }

  return result;
}

unint64_t sub_23D9A59EC()
{
  result = qword_27E2F69E0;
  if (!qword_27E2F69E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F69B0, &qword_23D9E16A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F69A0, &qword_23D9E1698);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6998, &qword_23D9E1690);
    sub_23D9D9224();
    sub_23D9A5624();
    sub_23D9A5688(&qword_27E2F69D0, MEMORY[0x277CE19A0], MEMORY[0x277CE1998]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F69E0);
  }

  return result;
}

uint64_t sub_23D9A5B5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F69C0, &qword_23D9E16B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23D9A5BCC()
{
  result = qword_27E2F69E8;
  if (!qword_27E2F69E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F69C0, &qword_23D9E16B8);
    sub_23D9A5930();
    sub_23D9A5688(&qword_27E2F43A0, MEMORY[0x277CDE468], MEMORY[0x277CDE460]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F69E8);
  }

  return result;
}

uint64_t sub_23D9A5CD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4880, &unk_23D9DCA90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D9A5DC8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23D9A5E28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F48B0, &unk_23D9DF0F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t View.axNavigationDestination<A, B>(item:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v31 = a7;
  v26 = a6;
  v27 = a1;
  v29 = a9;
  v30 = a4;
  v28 = a2;
  sub_23D9DAD74();
  v14 = sub_23D9DA604();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - v16;
  v32[0] = a5;
  v32[1] = a6;
  v32[2] = a8;
  v32[3] = a10;
  v18 = a8;
  v19 = type metadata accessor for AXValueNavigationDestination(0, v32);
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v25 - v22;
  (*(v15 + 16))(v17, v27, v14, v21);

  sub_23D9A8078(v17, v28, a3, 0, 0, a5, v26, v18, v23, a10);
  MEMORY[0x23EEF34C0](v23, v30, v19, v31);
  return (*(v20 + 8))(v23, v19);
}

uint64_t sub_23D9A6118(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v17 = *(a3 + 16);
  if (v17)
  {
    v5 = result;
    v6 = 0;
    v7 = (a3 + 40);
    v8 = MEMORY[0x277D84F90];
    v15 = result;
    while (v6 < *(v4 + 16))
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      v18[0] = v10;
      v18[1] = v9;

      v11 = v5(v18);
      if (v3)
      {

        goto LABEL_16;
      }

      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v19 = v8;
        if ((result & 1) == 0)
        {
          result = sub_23D9647A8(0, *(v8 + 16) + 1, 1);
          v8 = v19;
        }

        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        if (v13 >= v12 >> 1)
        {
          result = sub_23D9647A8((v12 > 1), v13 + 1, 1);
          v8 = v19;
        }

        *(v8 + 16) = v13 + 1;
        v14 = v8 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v9;
        v4 = a3;
        v5 = v15;
      }

      else
      {
      }

      ++v6;
      v7 += 2;
      if (v17 == v6)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
LABEL_16:

    return v8;
  }

  return result;
}

id sub_23D9A62C0()
{
  v1 = sub_23D9D9954();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (*(v0 + 8) == 1)
  {

    return v5;
  }

  else
  {
    v8[0] = *v0;

    sub_23D9DACD4();
    v7 = sub_23D9D9D24();
    sub_23D9D91B4();

    sub_23D9D9944();
    swift_getAtKeyPath();
    sub_23D98504C(v8[0], 0);
    (*(v2 + 8))(v4, v1);
    return v8[1];
  }
}

void *sub_23D9A642C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v26 = a5;
  v27 = a6;
  v25 = a4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6A30, &qword_23D9E0BC0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v25 - v18;
  *a9 = swift_getKeyPath();
  *(a9 + 8) = 0;
  v32 = 0;
  sub_23D9DA3A4();
  v20 = v29;
  *(a9 + 80) = v28;
  *(a9 + 88) = v20;
  v28 = a7;
  v29 = a8;
  v30 = a10;
  v31 = a11;
  type metadata accessor for AXSUISpecifierLink(0, &v28);
  v21 = sub_23D9D88A4();
  (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
  sub_23D9A86D4(v19);
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  v22 = v25;
  *(a9 + 32) = a3;
  *(a9 + 40) = v22;
  result = swift_allocObject();
  result[2] = a7;
  result[3] = a8;
  result[4] = a10;
  result[5] = a11;
  v24 = v27;
  result[6] = v26;
  result[7] = v24;
  *(a9 + 48) = sub_23D9AE5EC;
  *(a9 + 56) = result;
  *(a9 + 64) = 0;
  *(a9 + 72) = 0;
  return result;
}

uint64_t sub_23D9A6628()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
  sub_23D9DA3D4();
  return v1;
}

void sub_23D9A6684(void *a1)
{
  v2 = v1;
  v4 = sub_23D9A62C0();
  swift_getKeyPath();
  v23 = v4;
  sub_23D9AE4C0(&unk_27E2F6230, type metadata accessor for AXSUIPreferenceController, &protocol conformance descriptor for AXSUIPreferenceController);
  sub_23D9D8A14();

  v5 = *&v4[qword_27E2F62B0];

  v6 = a1[3];
  v16 = a1[2];
  v18 = v16;
  v19 = v6;
  v7 = a1[4];
  v8 = a1[5];
  v20 = v7;
  v21 = v8;
  v22 = v2;
  v9 = sub_23D92BBB0(sub_23D9AE508, v17, v5);

  if (v9)
  {
    sub_23D9A65CC(1);
    v10 = sub_23D9A62C0();
    v11 = sub_23D9A62C0();
    swift_getKeyPath();
    v23 = v11;
    sub_23D9D8A14();

    v12 = *&v11[qword_27E2F62B0];

    MEMORY[0x28223BE20](v13);
    v15[2] = v16;
    v15[3] = v6;
    v15[4] = v7;
    v15[5] = v8;
    v15[6] = v2;
    v14 = sub_23D9A6118(sub_23D9AE558, v15, v12);
    sub_23D980784(v14);
  }
}

uint64_t AXSUISpecifierLink.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6A10, &qword_23D9DD4D0);
  v98 = v3;
  v92 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v81 = &v67 - v4;
  v101 = *(a1 - 1);
  MEMORY[0x28223BE20](v5);
  v70 = v6;
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v96 = a1[2];
  *&v95 = a1[4];
  v111 = v96;
  v112 = MEMORY[0x277D837D0];
  v113 = v95;
  v114 = MEMORY[0x277D837E0];
  sub_23D9DA474();
  v8 = sub_23D9D96C4();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_23D91EAB8();
  v109 = WitnessTable;
  v110 = v10;
  v93 = MEMORY[0x277CDFAD0];
  v83 = v8;
  v82 = swift_getWitnessTable();
  v11 = sub_23D9DA444();
  v77 = v11;
  v85 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v72 = &v67 - v12;
  v13 = swift_getWitnessTable();
  v76 = v13;
  v75 = sub_23D91F01C(&qword_27E2F6A20, &unk_27E2F6A10, &qword_23D9DD4D0, MEMORY[0x277CDE360]);
  v111 = v11;
  v112 = v3;
  v113 = v13;
  v114 = v75;
  v84 = MEMORY[0x277CDE670];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v86 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v97 = &v67 - v14;
  v79 = sub_23D9D96C4();
  v91 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v99 = &v67 - v15;
  v16 = a1;
  v17 = a1[3];
  v18 = a1[5];
  v111 = MEMORY[0x277D839B0];
  v112 = v17;
  v74 = v17;
  v113 = MEMORY[0x277D839C0];
  v114 = v18;
  v19 = v18;
  v73 = v18;
  v88 = type metadata accessor for AXValueNavigationDestination(255, &v111);
  v89 = sub_23D9D96C4();
  v90 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v78 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v21);
  v87 = &v67 - v23;
  v24 = v101;
  v71 = *(v101 + 16);
  v25 = v7;
  v67 = v7;
  v26 = v7;
  v27 = v100;
  v68 = a1;
  v71(v26, v100, a1, v22);
  v28 = v24;
  v29 = (*(v24 + 80) + 48) & ~*(v24 + 80);
  v30 = swift_allocObject();
  *&v31 = v96;
  *(&v31 + 1) = v17;
  v96 = v31;
  *&v32 = v95;
  *(&v32 + 1) = v19;
  v95 = v32;
  *(v30 + 16) = v31;
  *(v30 + 32) = v32;
  v33 = *(v28 + 32);
  v101 = v28 + 32;
  v69 = v33;
  v33(v30 + v29, v25, v16);
  v102 = v96;
  v103 = v95;
  v104 = v27;
  v34 = v72;
  sub_23D9DA404();
  v35 = v81;
  sub_23D9D9B54();
  v36 = v77;
  v37 = v98;
  v38 = v76;
  v39 = v75;
  sub_23D9D9FA4();
  (*(v92 + 8))(v35, v37);
  (*(v85 + 8))(v34, v36);
  v40 = v67;
  v41 = v100;
  v42 = v68;
  (v71)(v67, v100, v68);
  v43 = swift_allocObject();
  v44 = v95;
  *(v43 + 16) = v96;
  *(v43 + 32) = v44;
  v69(v43 + v29, v40, v42);
  v111 = v36;
  v112 = v98;
  v113 = v38;
  v114 = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = OpaqueTypeMetadata2;
  v47 = v97;
  sub_23D9DA1D4();

  (*(v86 + 8))(v47, v46);
  v48 = sub_23D9A6628();
  v50 = v49;
  LOBYTE(v46) = v51;
  v52 = v41;
  v53 = *(v41 + 48);
  v54 = *(v52 + 56);
  v101 = *(v52 + 64);
  LOBYTE(v13) = *(v52 + 72);
  v107 = OpaqueTypeConformance2;
  v108 = MEMORY[0x277CE0788];
  v55 = v79;
  v56 = swift_getWitnessTable();
  v57 = v46 & 1;
  v58 = v78;
  v59 = v55;
  v60 = v55;
  v61 = v99;
  sub_23D9A7888(v48, v50, v57, v53, v54, v101, v13, v59, v78, v74, v56, v73);

  (*(v91 + 8))(v61, v60);
  v62 = swift_getWitnessTable();
  v105 = v56;
  v106 = v62;
  v63 = v89;
  swift_getWitnessTable();
  v64 = v87;
  sub_23D91F510();
  v65 = *(v90 + 8);
  v65(v58, v63);
  sub_23D91F510();
  return (v65)(v64, v63);
}

uint64_t sub_23D9A7210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v26[1] = a3;
  v30 = a4;
  v29 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v8;
  v34 = MEMORY[0x277D837D0];
  v35 = v9;
  v36 = MEMORY[0x277D837E0];
  v10 = sub_23D9DA474();
  v27 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v26 - v11;
  v13 = sub_23D9D96C4();
  v28 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v26 - v18;
  (*(a1 + 32))(v17);
  v20 = *(a1 + 16);
  v21 = *(a1 + 24);
  v33 = v20;
  v34 = v21;
  sub_23D9DA154();
  (*(v29 + 8))(v7, a2);
  WitnessTable = swift_getWitnessTable();
  View.axSpecifier(_:)(v20, v21, v10, WitnessTable);
  (*(v27 + 8))(v12, v10);
  v23 = sub_23D91EAB8();
  v31 = WitnessTable;
  v32 = v23;
  swift_getWitnessTable();
  sub_23D91F510();
  v24 = *(v28 + 8);
  v24(v15, v13);
  sub_23D91F510();
  return (v24)(v19, v13);
}

uint64_t sub_23D9A753C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a5;
  v25[0] = a2;
  v25[1] = a3;
  v25[2] = a4;
  v25[3] = a5;
  v9 = type metadata accessor for AXSUISpecifierLink(0, v25);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F6C70, &unk_23D9E0A10);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - v14;
  v16 = sub_23D9DA9F4();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v10 + 16))(v12, a1, v9);
  sub_23D9DA9B4();
  v17 = sub_23D9DA9A4();
  v18 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  *(v19 + 2) = v17;
  *(v19 + 3) = v20;
  *(v19 + 4) = a2;
  *(v19 + 5) = a3;
  v21 = v24;
  *(v19 + 6) = a4;
  *(v19 + 7) = v21;
  (*(v10 + 32))(&v19[v18], v12, v9);
  sub_23D9BB718(0, 0, v15, &unk_23D9E1AC8, v19);
}

uint64_t sub_23D9A775C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a4;
  sub_23D9DA9B4();
  v8[11] = sub_23D9DA9A4();
  v10 = sub_23D9DA994();

  return MEMORY[0x2822009F8](sub_23D9A77FC, v10, v9);
}

uint64_t sub_23D9A77FC()
{
  v4 = *(v0 + 72);
  v5 = *(v0 + 56);

  *(v0 + 16) = v5;
  *(v0 + 32) = v4;
  v1 = type metadata accessor for AXSUISpecifierLink(0, v0 + 16);
  sub_23D9A6684(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23D9A7888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v29 = a8;
  v24 = a5;
  v25 = a6;
  v27 = a9;
  v28 = a11;
  v26 = a10;
  v33[0] = MEMORY[0x277D839B0];
  v33[1] = a10;
  v33[2] = MEMORY[0x277D839C0];
  v33[3] = a12;
  v17 = type metadata accessor for AXValueNavigationDestination(0, v33);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v24 - v19;
  v30 = a1;
  v31 = a2;
  v32 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B68, &qword_23D9DCF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F6A40, &qword_23D9E2B10);
  sub_23D9DA534();

  v22 = v24;
  v21 = v25;
  sub_23D9AE1F4(a4, v24, v25, a7 & 1);
  sub_23D9A8078(v33, a4, v22, v21, a7 & 1, MEMORY[0x277D839B0], v26, MEMORY[0x277D839C0], v20, a12);
  MEMORY[0x23EEF34C0](v20, v29, v17, v28);

  return (*(v18 + 8))(v20, v17);
}

void *AXSUISpecifierLink<>.init(id:axsuiLabelLocKey:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  return sub_23D9A642C(a1, a2, sub_23D9A85D8, v18, a5, a6, MEMORY[0x277CE0BD0], a7, a9, MEMORY[0x277CE0BC0], a8);
}

uint64_t sub_23D9A7B7C@<X0>(uint64_t a3@<X8>)
{
  if (qword_27E2F41A8 != -1)
  {
    swift_once();
  }

  if (qword_27E2F7320)
  {
    v4 = qword_27E2F7320;
    v5 = sub_23D9DA8A4();
    v6 = sub_23D9DA8A4();
    v7 = sub_23D9DA8A4();
    v8 = [v4 localizedStringForKey:v5 value:v6 table:v7];

    sub_23D9DA8B4();
  }

  else
  {
  }

  sub_23D91B650();
  result = sub_23D9D9F04();
  *a3 = result;
  *(a3 + 8) = v10;
  *(a3 + 16) = v11 & 1;
  *(a3 + 24) = v12;
  return result;
}

uint64_t AXSUISpecifierLink.init<>(id:navigationTitle:uiKitDestination:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v24 = a4;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6A30, &qword_23D9E0BC0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v24 - v19;
  *a9 = swift_getKeyPath();
  *(a9 + 8) = 0;
  v29 = 0;
  sub_23D9DA3A4();
  v21 = v26;
  *(a9 + 80) = v25;
  *(a9 + 88) = v21;
  v25 = a8;
  v26 = MEMORY[0x277CE1420];
  v27 = a10;
  v28 = MEMORY[0x277CE1418];
  type metadata accessor for AXSUISpecifierLink(0, &v25);
  v22 = sub_23D9D88A4();
  (*(*(v22 - 8) + 56))(v20, 1, 1, v22);
  result = sub_23D9A86D4(v20);
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a5;
  *(a9 + 56) = a3;
  *(a9 + 64) = v24;
  *(a9 + 72) = 1;
  return result;
}

uint64_t sub_23D9A7E48@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23D9D9954();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6BF0, &qword_23D9DD340);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_23D91F2DC(v2, &v13 - v9, &unk_27E2F6BF0, &qword_23D9DD340);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(v5 + 32))(a1, v10, v4);
  }

  sub_23D9DACD4();
  v12 = sub_23D9D9D24();
  sub_23D9D91B4();

  sub_23D9D9944();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_23D9A8028()
{
  sub_23D9DAD74();
  v0 = sub_23D9DA604();
  return MEMORY[0x23EEF3850](v0);
}

uint64_t sub_23D9A8078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v32 = a5;
  v31 = a4;
  v33 = a1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6A30, &qword_23D9E0BC0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v31 - v17;
  v19 = sub_23D9DAD74();
  MEMORY[0x28223BE20](v19);
  v21 = &v31 - v20;
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6BF0, &qword_23D9DD340);
  swift_storeEnumTagMultiPayload();
  v34 = a6;
  v35 = a7;
  v36 = a8;
  v37 = a10;
  v22 = type metadata accessor for AXValueNavigationDestination(0, &v34);
  (*(*(a6 - 8) + 56))(v21, 1, 1, a6);
  sub_23D9A85E0(v21);
  v23 = sub_23D9D88A4();
  (*(*(v23 - 8) + 56))(v18, 1, 1, v23);
  sub_23D9A86D4(v18);
  v24 = &a9[v22[17]];
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  v25 = &a9[v22[18]];
  v38 = 0;
  sub_23D9DA3A4();
  v26 = v35;
  *v25 = v34;
  *(v25 + 1) = v26;
  v27 = &a9[v22[14]];
  *v27 = a2;
  *(v27 + 1) = a3;
  *(v27 + 2) = v31;
  v27[24] = v32 & 1;
  v28 = v22[13];
  v29 = sub_23D9DA604();
  return (*(*(v29 - 8) + 32))(&a9[v28], v33, v29);
}

uint64_t sub_23D9A8330(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

uint64_t sub_23D9A8344()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v1 = v6;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  type metadata accessor for AXSUISpecifierLink(0, &v6);
  v6 = v1;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  type metadata accessor for AXSUISpecifierLink(0, &v6);
  return sub_23D9A65CC(1);
}

uint64_t objectdestroyTm_10()
{
  v1 = *(v0 + 32);
  v8[0] = *(v0 + 16);
  v8[1] = v1;
  v2 = (type metadata accessor for AXSUISpecifierLink(0, v8) - 8);
  v3 = v0 + ((*(*v2 + 80) + 48) & ~*(*v2 + 80));
  sub_23D98504C(*v3, *(v3 + 8));

  sub_23D9A8330(*(v3 + 48), *(v3 + 56), *(v3 + 64), *(v3 + 72));

  v4 = v3 + v2[19];
  v5 = sub_23D9D88A4();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v4, 1, v5))
  {
    (*(v6 + 8))(v4, v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6A28, &unk_23D9E17D8);

  return swift_deallocObject();
}

uint64_t sub_23D9A85A0()
{

  return swift_deallocObject();
}

uint64_t sub_23D9A85E0(uint64_t a1)
{
  v3 = sub_23D9DAD74();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  (*(v4 + 16))(&v8 - v6, a1, v3, v5);
  sub_23D9DA3A4();
  return (*(v4 + 8))(a1, v3);
}

uint64_t sub_23D9A86D4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6A30, &qword_23D9E0BC0);
  MEMORY[0x28223BE20](v3);
  sub_23D91F2DC(a1, &v6 - v4, &unk_27E2F6A30, &qword_23D9E0BC0);
  sub_23D9DA3A4();
  return sub_23D9AD698(a1);
}

void *sub_23D9A8794()
{
  sub_23D9DAD74();
  sub_23D9DA3E4();
  return sub_23D9DA3D4();
}

void sub_23D9A87E4()
{
  sub_23D9DAD74();
  sub_23D9DA604();

  JUMPOUT(0x23EEF3850);
}

uint64_t sub_23D9A8830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = *(a1 + 32);
  v35 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v33 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v32 = &v30 - v7;
  v9 = *(v8 + 16);
  v10 = sub_23D9DAD74();
  v30 = *(v10 - 8);
  v31 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  v13 = *(v9 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_23D9DAD74();
  v34 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v30 - v21;
  sub_23D9A87E4();
  if ((*(v13 + 48))(v12, 1, v9) == 1)
  {
    (*(v30 + 8))(v12, v31);
    (*(v35 + 56))(v19, 1, 1, v4);
    v23 = *(a1 + 56);
  }

  else
  {
    (*(v13 + 32))(v16, v12, v9);
    v24 = v33;
    (*(v2 + *(a1 + 68)))(v16);
    (*(v13 + 8))(v16, v9);
    v23 = *(a1 + 56);
    v25 = v32;
    sub_23D91F510();
    v26 = v35;
    v27 = *(v35 + 8);
    v27(v24, v4);
    sub_23D91F510();
    v27(v25, v4);
    (*(v26 + 32))(v19, v24, v4);
    (*(v26 + 56))(v19, 0, 1, v4);
  }

  sub_23D995250(v19, v22);
  v28 = *(v34 + 8);
  v28(v19, v17);
  v37 = v23;
  swift_getWitnessTable();
  sub_23D91F510();
  return (v28)(v22, v17);
}

uint64_t sub_23D9A8C84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  sub_23D9DAD74();
  v19 = sub_23D9DA604();
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  v22[0] = a4;
  v22[1] = a5;
  v22[2] = a6;
  v22[3] = a7;
  v22[4] = a8;
  v22[5] = a10;
  result = type metadata accessor for AXValueNavigationDestination.WrapperView(0, v22);
  v21 = (a9 + *(result + 68));
  *v21 = a2;
  v21[1] = a3;
  return result;
}

uint64_t sub_23D9A8D60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6A30, &qword_23D9E0BC0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23D91F2DC(a1, &v5 - v3, &unk_27E2F6A30, &qword_23D9E0BC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6A28, &unk_23D9E17D8);
  sub_23D9DA3C4();
  return sub_23D9AD698(a1);
}

uint64_t sub_23D9A8E30(uint64_t a1)
{
  v3 = sub_23D9D9954();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 68);
  v8 = *v7;
  v9 = *(v7 + 8);

  if ((v9 & 1) == 0)
  {
    sub_23D9DACD4();
    v10 = sub_23D9D9D24();
    sub_23D9D91B4();

    sub_23D9D9944();
    swift_getAtKeyPath();
    j__swift_release(v8);
    (*(v4 + 8))(v6, v3);
    return v12[1];
  }

  return v8;
}

uint64_t sub_23D9A8F80(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
  sub_23D9DA3B4();
  return v2;
}

uint64_t sub_23D9A9048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a1;
  v67 = a3;
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  *&v71 = v7 + 24;
  v69 = *(v7 + 16);
  *&v70 = v7 + 40;
  v8 = sub_23D9DAD74();
  v61 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v46 - v9;
  swift_getWitnessTable();
  v11 = sub_23D9D9C34();
  WitnessTable = swift_getWitnessTable();
  v54 = WitnessTable;
  v68 = *(a2 + 32);
  v82 = *(v68 + 8);
  v55 = v8;
  v53 = swift_getWitnessTable();
  v78 = v11;
  v79 = v8;
  v80 = WitnessTable;
  v81 = v53;
  v57 = MEMORY[0x277CE0E38];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v59 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v51 = &v46 - v13;
  v60 = sub_23D9D96C4();
  v65 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v52 = &v46 - v14;
  v64 = sub_23D9D96C4();
  v66 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v58 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v62 = &v46 - v17;
  v18 = v3;
  v73 = v3;
  sub_23D9A8028();
  v19 = v5;
  v50 = *(v5 + 16);
  v72 = v5 + 16;
  v46 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50(v46, v18, a2);
  v49 = *(v5 + 80);
  v20 = (v49 + 48) & ~v49;
  v48 = v6;
  v21 = swift_allocObject();
  *&v23 = v68;
  *&v22 = v69;
  *(&v22 + 1) = *v71;
  *(&v23 + 1) = *v70;
  v70 = v23;
  v71 = v22;
  *(v21 + 16) = v22;
  *(v21 + 32) = v23;
  v24 = *(v19 + 32);
  v68 = v19 + 32;
  v69 = v24;
  v24(v21 + v20, &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  v47 = swift_checkMetadataState();
  v25 = v55;
  v26 = v54;
  v27 = v53;
  sub_23D9DA1E4();

  (*(v61 + 8))(v10, v25);
  v28 = v46;
  v29 = v50;
  v50(v46, v73, a2);
  v30 = swift_allocObject();
  v31 = v70;
  *(v30 + 16) = v71;
  *(v30 + 32) = v31;
  v69(v30 + v20, v28, a2);
  v78 = v47;
  v79 = v25;
  v80 = v26;
  v81 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v52;
  v34 = OpaqueTypeMetadata2;
  v35 = v51;
  sub_23D9D9FD4();

  (*(v59 + 8))(v35, v34);
  v29(v28, v73, a2);
  v36 = swift_allocObject();
  v37 = v70;
  *(v36 + 16) = v71;
  *(v36 + 32) = v37;
  v69(v36 + v20, v28, a2);
  v38 = MEMORY[0x277CE0788];
  v76 = OpaqueTypeConformance2;
  v77 = MEMORY[0x277CE0788];
  v39 = v60;
  v40 = swift_getWitnessTable();
  v41 = v58;
  sub_23D9DA1D4();

  (*(v65 + 8))(v33, v39);
  v74 = v40;
  v75 = v38;
  v42 = v64;
  swift_getWitnessTable();
  v43 = v62;
  sub_23D91F510();
  v44 = *(v66 + 8);
  v44(v41, v42);
  sub_23D91F510();
  return (v44)(v43, v42);
}

uint64_t sub_23D9A97D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a6;
  v29 = a7;
  v27 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6A30, &qword_23D9E0BC0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v26 - v10;
  v12 = sub_23D9D88A4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_23D9DAD74();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  v21 = *(v17 + 16);
  v26 = a2;
  v21(&v26 - v19, a2, v16, v18);
  v30[0] = a4;
  v30[1] = v27;
  v30[2] = v28;
  v30[3] = v29;
  v22 = type metadata accessor for AXValueNavigationDestination(0, v30);
  sub_23D9AE108(v20);
  (*(v17 + 8))(v20, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6A28, &unk_23D9E17D8);
  sub_23D9DA3B4();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_23D9AD698(v11);
  }

  (*(v13 + 32))(v15, v11, v12);
  v24 = (*(*(a4 - 8) + 48))(v26, 1, a4);
  v25 = sub_23D9A8E30(v22);
  if (v24 == 1)
  {
    if (v25)
    {
      sub_23D95B350(v15);
LABEL_8:
    }
  }

  else if (v25)
  {
    sub_23D95B348(v15);
    goto LABEL_8;
  }

  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_23D9A9ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v110 = a2;
  v111 = a3;
  v100 = a3;
  v101 = a4;
  v112 = a4;
  v113 = a5;
  v103 = a5;
  v7 = type metadata accessor for AXValueNavigationDestination(0, &v110);
  v90 = *(v7 - 8);
  v8 = *(v90 + 64);
  MEMORY[0x28223BE20](v7);
  v89 = &v87 - v9;
  v105 = sub_23D9D88A4();
  v106 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v94 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v92 = &v87 - v12;
  v93 = type metadata accessor for AXSUINavigationManager.PSControllerRoute(0);
  MEMORY[0x28223BE20](v93);
  v91 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v95 = &v87 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6A30, &qword_23D9E0BC0);
  MEMORY[0x28223BE20](v16 - 8);
  v99 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v97 = &v87 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v87 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v87 - v24;
  MEMORY[0x28223BE20](v26);
  v98 = &v87 - v27;
  MEMORY[0x28223BE20](v28);
  v96 = &v87 - v29;
  v30 = sub_23D9DAD74();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v87 - v32;
  sub_23D9A8FE0(1, v7);
  v34 = a1 + *(v7 + 56);
  v35 = *(v34 + 8);
  v104 = *v34;
  v36 = *(v34 + 16);
  if (*(v34 + 24) == 1)
  {
    v37 = v35;
    (*(*(a2 - 8) + 56))(v33, 1, 1, a2);
    sub_23D9AD700(v33);
    (*(v31 + 8))(v33, v30);

    v38 = sub_23D9A8E30(v7);
    v39 = v36;
    v102 = a1;
    if (v38)
    {
      v40 = v38;
      v103 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6A28, &unk_23D9E17D8);
      v41 = v98;
      sub_23D9DA3B4();
      sub_23D91F2DC(v41, v25, &unk_27E2F6A30, &qword_23D9E0BC0);
      v42 = v93;
      v43 = v91;
      v91[*(v93 + 20)] = 0;
      *(v43 + *(v42 + 24)) = v104;
      v44 = (v43 + *(v42 + 28));
      *v44 = v37;
      v44[1] = v39;
      sub_23D91F2DC(v25, v22, &unk_27E2F6A30, &qword_23D9E0BC0);
      v45 = v106;
      v46 = *(v106 + 48);
      v47 = v105;
      if (v46(v22, 1, v105) == 1)
      {
        v48 = v92;
        sub_23D9D8894();
        sub_23D9AD698(v25);
        if (v46(v22, 1, v47) != 1)
        {
          sub_23D9AD698(v22);
        }
      }

      else
      {
        sub_23D9AD698(v25);
        v48 = v92;
        (*(v45 + 32))(v92, v22, v47);
      }

      (*(v45 + 32))(v43, v48, v47);
      v83 = v95;
      sub_23D9AD7EC(v43, v95);
      v84 = *(v106 + 16);
      v85 = v94;
      v84(v94, v83, v47);
      v113 = v42;
      v114 = sub_23D9AE4C0(&qword_27E2F5650, type metadata accessor for AXSUINavigationManager.PSControllerRoute, &unk_23D9DEF24);
      v86 = __swift_allocate_boxed_opaque_existential_1(&v110);
      sub_23D9AD850(v83, v86);
      swift_getKeyPath();
      v107 = v40;
      sub_23D9AE4C0(&unk_27E2F6C40, type metadata accessor for AXSUINavigationManager, &protocol conformance descriptor for AXSUINavigationManager);
      sub_23D9D8A14();

      v107 = v40;
      swift_getKeyPath();
      sub_23D9D8A34();

      swift_beginAccess();
      sub_23D959568(&v110, v85);
      swift_endAccess();
      v107 = v40;
      swift_getKeyPath();
      v79 = v105;
      sub_23D9D8A24();

      sub_23D9AD698(v98);

      v81 = v96;
      v84(v96, v83, v79);
      v80 = v106;
      sub_23D9AD8BC(v83);
      v78 = 0;
    }

    else
    {
      v78 = 1;
      sub_23D9A8330(v104, v37, v39, 1);
      v79 = v105;
      v80 = v106;
      v81 = v96;
    }

    (*(v80 + 56))(v81, v78, 1, v79);
    return sub_23D9A8D60(v81);
  }

  else
  {
    v98 = *(v34 + 16);
    v49 = v35;

    v50 = sub_23D9A8E30(v7);
    v51 = v7;
    if (v50)
    {
      v96 = v50;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6A28, &unk_23D9E17D8);
      sub_23D9DA3B4();
      v52 = v90;
      v53 = v89;
      (*(v90 + 16))(v89, a1, v7);
      v54 = (*(v52 + 80) + 48) & ~*(v52 + 80);
      v55 = swift_allocObject();
      v88 = a2;
      *(v55 + 2) = a2;
      v56 = v101;
      *(v55 + 3) = v100;
      *(v55 + 4) = v56;
      *(v55 + 5) = v103;
      (*(v52 + 32))(&v55[v54], v53, v51);
      v57 = &v55[(v8 + v54 + 7) & 0xFFFFFFFFFFFFFFF8];
      *v57 = v104;
      *(v57 + 1) = v49;

      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6738, &qword_23D9E0F78);
      sub_23D9D96C4();
      v102 = a1;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E2F6C00, &unk_23D9E0F80);
      sub_23D9D96C4();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F63E0, &qword_23D9E0688);
      sub_23D9D96C4();
      sub_23D9D96C4();
      type metadata accessor for AXNavigationSink(255);
      sub_23D9D96C4();
      v95 = v49;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5830, &qword_23D9DEFA0);
      v58 = sub_23D9D96C4();
      v59 = MEMORY[0x277CE0870];
      v60 = sub_23D91F01C(&qword_27E2F6740, &qword_27E2F6738, &qword_23D9E0F78, MEMORY[0x277CE0870]);
      v126 = v103;
      v127 = v60;
      WitnessTable = swift_getWitnessTable();
      v62 = sub_23D91F01C(&unk_27E2F6C10, &unk_27E2F6C00, &unk_23D9E0F80, v59);
      v124 = WitnessTable;
      v125 = v62;
      v63 = swift_getWitnessTable();
      v64 = sub_23D91F01C(&qword_27E2F63D8, &qword_27E2F63E0, &qword_23D9E0688, v59);
      v122 = v63;
      v123 = v64;
      v65 = swift_getWitnessTable();
      v66 = sub_23D927AFC();
      v120 = v65;
      v121 = v66;
      v67 = swift_getWitnessTable();
      v68 = sub_23D9AE4C0(&qword_27E2F63D0, type metadata accessor for AXNavigationSink, &unk_23D9DEED4);
      v118 = v67;
      v119 = v68;
      v49 = v95;
      v69 = swift_getWitnessTable();
      v70 = sub_23D91F01C(&unk_27E2F6C30, &qword_27E2F5830, &qword_23D9DEFA0, v59);
      v116 = v69;
      v117 = v70;
      v71 = swift_getWitnessTable();
      v110 = v88;
      v111 = v100;
      v112 = v58;
      v113 = v101;
      v114 = v103;
      v115 = v71;
      type metadata accessor for AXValueNavigationDestination.WrapperView(255, &v110);
      v72 = sub_23D9D96C4();
      v108 = swift_getWitnessTable();
      v109 = MEMORY[0x277CE0788];
      v73 = swift_getWitnessTable();
      v74 = v97;
      v75 = v99;
      v76 = v104;
      sub_23D95A874(v99, sub_23D9AD5A4, v55, v72, v73, v97);

      sub_23D9AD698(v75);
      v77 = 0;
    }

    else
    {
      v77 = 1;
      v76 = v104;
      v74 = v97;
    }

    (*(v106 + 56))(v74, v77, 1, v105);
    sub_23D9A8D60(v74);
    return sub_23D9A8330(v76, v49, v98, 0);
  }
}

uint64_t sub_23D9AA7E8@<X0>(uint64_t a1@<X0>, void (*a2)(char *, char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v65 = a6;
  v76 = a3;
  v69 = a2;
  v74 = a1;
  v70 = a8;
  v79 = a4;
  v80 = a5;
  v72 = a4;
  v64 = a5;
  v81 = a6;
  v82 = a7;
  v68 = type metadata accessor for AXValueNavigationDestination(0, &v79);
  v67 = *(v68 - 8);
  v75 = *(v67 + 64);
  MEMORY[0x28223BE20](v68);
  v66 = &v52 - v9;
  sub_23D9DAD74();
  v10 = sub_23D9DA604();
  MEMORY[0x28223BE20](v10 - 8);
  v73 = &v52 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6738, &qword_23D9E0F78);
  sub_23D9D96C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E2F6C00, &unk_23D9E0F80);
  sub_23D9D96C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F63E0, &qword_23D9E0688);
  sub_23D9D96C4();
  sub_23D9D96C4();
  type metadata accessor for AXNavigationSink(255);
  sub_23D9D96C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5830, &qword_23D9DEFA0);
  v12 = sub_23D9D96C4();
  v13 = MEMORY[0x277CE0870];
  v14 = sub_23D91F01C(&qword_27E2F6740, &qword_27E2F6738, &qword_23D9E0F78, MEMORY[0x277CE0870]);
  v95 = a7;
  v96 = v14;
  v15 = MEMORY[0x277CDFAD0];
  WitnessTable = swift_getWitnessTable();
  v17 = sub_23D91F01C(&unk_27E2F6C10, &unk_27E2F6C00, &unk_23D9E0F80, v13);
  v93 = WitnessTable;
  v94 = v17;
  v18 = swift_getWitnessTable();
  v19 = sub_23D91F01C(&qword_27E2F63D8, &qword_27E2F63E0, &qword_23D9E0688, v13);
  v91 = v18;
  v92 = v19;
  v20 = swift_getWitnessTable();
  v21 = sub_23D927AFC();
  v89 = v20;
  v90 = v21;
  v22 = swift_getWitnessTable();
  v23 = sub_23D9AE4C0(&qword_27E2F63D0, type metadata accessor for AXNavigationSink, &unk_23D9DEED4);
  v87 = v22;
  v88 = v23;
  v63 = v15;
  v24 = swift_getWitnessTable();
  v25 = sub_23D91F01C(&unk_27E2F6C30, &qword_27E2F5830, &qword_23D9DEFA0, v13);
  v85 = v24;
  v86 = v25;
  v57 = v12;
  v55 = swift_getWitnessTable();
  v26 = v72;
  v27 = v64;
  v79 = v72;
  v80 = v64;
  v28 = v65;
  v81 = v12;
  v82 = v65;
  v54 = a7;
  v83 = a7;
  v84 = v55;
  v58 = type metadata accessor for AXValueNavigationDestination.WrapperView(0, &v79);
  v61 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v71 = &v52 - v29;
  v60 = sub_23D9D96C4();
  v62 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v56 = &v52 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v59 = &v52 - v32;
  v33 = v68;
  v34 = v74;
  sub_23D9A8794();
  v35 = v67;
  v36 = *(v67 + 16);
  v52 = v67 + 16;
  v53 = v36;
  v37 = v66;
  v36(v66, v34, v33);
  v38 = *(v35 + 80);
  v39 = swift_allocObject();
  *(v39 + 2) = v26;
  *(v39 + 3) = v27;
  v40 = v54;
  *(v39 + 4) = v28;
  *(v39 + 5) = v40;
  v41 = v40;
  v42 = v76;
  *(v39 + 6) = v69;
  *(v39 + 7) = v42;
  v69 = *(v35 + 32);
  v69(&v39[(v38 + 64) & ~v38], v37, v33);
  sub_23D9A8C84(v73, sub_23D9ADC34, v39, v26, v27, v57, v28, v41, v71, v55);
  v53(v37, v74, v33);
  v43 = swift_allocObject();
  *(v43 + 2) = v72;
  *(v43 + 3) = v27;
  *(v43 + 4) = v28;
  *(v43 + 5) = v41;
  v69(&v43[(v38 + 48) & ~v38], v37, v33);

  v44 = v58;
  v45 = swift_getWitnessTable();
  v46 = v56;
  v47 = v71;
  sub_23D9D9FD4();

  (*(v61 + 8))(v47, v44);
  v77 = v45;
  v78 = MEMORY[0x277CE0788];
  v48 = v60;
  swift_getWitnessTable();
  v49 = v59;
  sub_23D91F510();
  v50 = *(v62 + 8);
  v50(v46, v48);
  sub_23D91F510();
  return (v50)(v49, v48);
}

uint64_t sub_23D9AB000@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(char *, uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v57 = a7;
  v56 = a5;
  v54 = a3;
  v55 = a2;
  v72 = a9;
  v13 = sub_23D9D9954();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *(a6 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6738, &qword_23D9E0F78);
  v59 = sub_23D9D96C4();
  v62 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v73 = v51 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E2F6C00, &unk_23D9E0F80);
  v61 = sub_23D9D96C4();
  v67 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = v51 - v21;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F63E0, &qword_23D9E0688);
  v66 = sub_23D9D96C4();
  v68 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v60 = v51 - v22;
  v65 = sub_23D9D96C4();
  v69 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v64 = v51 - v23;
  type metadata accessor for AXNavigationSink(255);
  v24 = sub_23D9D96C4();
  v25 = *(v24 - 8);
  v70 = v24;
  v71 = v25;
  v26 = MEMORY[0x28223BE20](v24);
  v63 = v51 - v27;
  (v55)(a1, v26);
  swift_getKeyPath();
  v84[0] = v56;
  v84[1] = a6;
  v84[2] = v57;
  v84[3] = a8;
  type metadata accessor for AXValueNavigationDestination(0, v84);
  v51[1] = a4;
  sub_23D9A7E48(v16);
  sub_23D9A016C();
  sub_23D9D9964();
  v28 = *(v14 + 8);
  v52 = v13;
  v28(v16, v13);
  v57 = v28;
  sub_23D9D9FC4();

  __swift_destroy_boxed_opaque_existential_0(v84);
  (*(v53 + 8))(v19, a6);
  swift_getKeyPath();
  sub_23D9A7E48(v16);
  sub_23D9589B0();
  sub_23D9D9964();
  v28(v16, v13);
  v29 = MEMORY[0x277CE0870];
  v30 = sub_23D91F01C(&qword_27E2F6740, &qword_27E2F6738, &qword_23D9E0F78, MEMORY[0x277CE0870]);
  v82 = a8;
  v83 = v30;
  v31 = v59;
  WitnessTable = swift_getWitnessTable();
  v33 = v58;
  v34 = v73;
  sub_23D9D9FC4();

  (*(v62 + 8))(v34, v31);
  swift_getKeyPath();
  sub_23D9A7E48(v16);
  sub_23D985430();
  sub_23D9D9964();
  v57(v16, v52);
  v35 = v84[0];
  v36 = sub_23D91F01C(&unk_27E2F6C10, &unk_27E2F6C00, &unk_23D9E0F80, v29);
  v80 = WitnessTable;
  v81 = v36;
  v37 = v61;
  v38 = swift_getWitnessTable();
  v39 = v60;
  sub_23D9D9FC4();

  (*(v67 + 8))(v33, v37);
  v40 = sub_23D91F01C(&qword_27E2F63D8, &qword_27E2F63E0, &qword_23D9E0688, v29);
  v78 = v38;
  v79 = v40;
  v41 = v66;
  v42 = swift_getWitnessTable();
  v43 = v64;
  View.axSettingsAppearance()(v41, v42);
  (*(v68 + 8))(v39, v41);
  v44 = sub_23D927AFC();
  v76 = v42;
  v77 = v44;
  v45 = v65;
  v46 = swift_getWitnessTable();
  v47 = v63;
  View.axNavigationSink()(v45, v46);
  (*(v69 + 8))(v43, v45);
  swift_getKeyPath();
  v84[0] = 0;
  v48 = sub_23D9AE4C0(&qword_27E2F63D0, type metadata accessor for AXNavigationSink, &unk_23D9DEED4);
  v74 = v46;
  v75 = v48;
  v49 = v70;
  swift_getWitnessTable();
  sub_23D9D9FC4();

  return (*(v71 + 8))(v47, v49);
}

uint64_t sub_23D9AB8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_23D9DAD74();
  v21 = *(v9 - 8);
  v22 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6A30, &qword_23D9E0BC0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v21 - v13;
  v15 = sub_23D9D88A4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[0] = a2;
  v23[1] = a3;
  v23[2] = a4;
  v23[3] = a5;
  v19 = type metadata accessor for AXValueNavigationDestination(0, v23);
  result = sub_23D9A8F80(v19);
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6A28, &unk_23D9E17D8);
    sub_23D9DA3B4();
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      sub_23D9AD698(v14);
    }

    else
    {
      (*(v16 + 32))(v18, v14, v15);
      if (sub_23D9A8E30(v19))
      {
        sub_23D95B350(v18);
      }

      (*(v16 + 8))(v18, v15);
    }

    (*(*(a2 - 8) + 56))(v11, 1, 1, a2);
    sub_23D9AD700(v11);
    return (*(v21 + 8))(v11, v22);
  }

  return result;
}

uint64_t View.axNavigationDestination<A>(isPresented:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v27 = a9;
  v24 = a4;
  v25 = a5;
  v31[0] = MEMORY[0x277D839B0];
  v31[1] = a7;
  v31[2] = MEMORY[0x277D839C0];
  v31[3] = a10;
  v26 = type metadata accessor for AXValueNavigationDestination(0, v31);
  v16 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v18 = &v24 - v17;
  v28 = a1;
  v29 = a2;
  v30 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B68, &qword_23D9DCF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F6A40, &qword_23D9E2B10);
  sub_23D9DA534();
  v19 = swift_allocObject();
  v19[2] = a6;
  v19[3] = a7;
  v20 = a8;
  v19[4] = a8;
  v19[5] = a10;
  v21 = v25;
  v19[6] = v24;
  v19[7] = v21;

  sub_23D9A8078(v31, sub_23D9AECE8, v19, 0, 0, MEMORY[0x277D839B0], a7, MEMORY[0x277D839C0], v18, a10);
  v22 = v26;
  MEMORY[0x23EEF34C0](v18, a6, v26, v20);

  return (*(v16 + 8))(v18, v22);
}

_BYTE *sub_23D9ABDEC@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  *a2 = v2;
  return result;
}

void sub_23D9ABE38(uint64_t a1)
{
  sub_23D9AD01C(319, &qword_27E2F6AC8, type metadata accessor for AXSUIPreferenceController);
  if (v3 <= 0x3F)
  {
    v15 = 0;
    v20 = v2;
    v21 = MEMORY[0x277D837D0];
    v4 = sub_23D95F334();
    if (v5 <= 0x3F)
    {
      v16 = 0;
      v22 = v4;
      v6 = *(a1 + 24);
      v7 = *(a1 + 40);
      v14[0] = MEMORY[0x277D839B0];
      v14[1] = v6;
      v14[2] = MEMORY[0x277D839C0];
      v14[3] = v7;
      v8 = type metadata accessor for AXValueNavigationDestination.Destination(319, v14);
      if (v9 <= 0x3F)
      {
        v17 = 0;
        v23 = v8;
        sub_23D9273D0();
        if (v11 <= 0x3F)
        {
          v18 = 0;
          v24 = v10;
          sub_23D9AD070(319, qword_27E2F6AE0, &unk_27E2F6A30, &qword_23D9E0BC0, MEMORY[0x277CE10B0]);
          if (v13 <= 0x3F)
          {
            v19 = 0;
            v25 = v12;
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_23D9ABF8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6A28, &unk_23D9E17D8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 68);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23D9AC05C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6A28, &unk_23D9E17D8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 68);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23D9AC124(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[3];
  sub_23D9DA474();
  sub_23D9D96C4();
  swift_getWitnessTable();
  sub_23D91EAB8();
  swift_getWitnessTable();
  v3 = sub_23D9DA444();
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E2F6A10, &qword_23D9DD4D0);
  WitnessTable = swift_getWitnessTable();
  v6 = sub_23D91F01C(&qword_27E2F6A20, &unk_27E2F6A10, &qword_23D9DD4D0, MEMORY[0x277CDE360]);
  swift_getOpaqueTypeMetadata2();
  sub_23D9D96C4();
  v8 = MEMORY[0x277D839B0];
  v9 = v1;
  v10 = MEMORY[0x277D839C0];
  v11 = v2;
  type metadata accessor for AXValueNavigationDestination(255, &v8);
  sub_23D9D96C4();
  v8 = v3;
  v9 = v4;
  v10 = WitnessTable;
  v11 = v6;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23D9AC368(uint64_t *a1)
{
  v1 = *(a1 + 2);
  v3[0] = *(a1 + 1);
  v3[1] = v1;
  type metadata accessor for AXValueNavigationDestination(255, v3);
  sub_23D9D96C4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23D9AC40C(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[3];
  v4[0] = MEMORY[0x277D839B0];
  v4[1] = v1;
  v4[2] = MEMORY[0x277D839C0];
  v4[3] = v2;
  type metadata accessor for AXValueNavigationDestination(255, v4);
  sub_23D9D96C4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23D9AC4BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23D9AC504(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23D9AC54C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

void sub_23D9AC5A0(uint64_t a1)
{
  sub_23D9AD01C(319, &qword_27E2F67D0, MEMORY[0x277CE0048]);
  if (v3 <= 0x3F)
  {
    v21 = 0;
    v28 = v2;
    v4 = *(a1 + 16);
    sub_23D9DAD74();
    v5 = sub_23D9DA604();
    if (v6 <= 0x3F)
    {
      v22 = 0;
      v29 = v5;
      v7 = *(a1 + 40);
      v18 = v4;
      v19 = *(a1 + 24);
      v20 = v7;
      v8 = type metadata accessor for AXValueNavigationDestination.Destination(319, &v18);
      if (v9 <= 0x3F)
      {
        v23 = 0;
        v30 = v8;
        v10 = sub_23D9DA3E4();
        if (v11 <= 0x3F)
        {
          v24 = 0;
          v31 = v10;
          sub_23D9AD070(319, qword_27E2F6AE0, &unk_27E2F6A30, &qword_23D9E0BC0, MEMORY[0x277CE10B0]);
          if (v13 <= 0x3F)
          {
            v25 = 0;
            v32 = v12;
            sub_23D9AD070(319, &qword_27E2F5770, &qword_27E2F5778, qword_23D9E1970, MEMORY[0x277CDF470]);
            if (v15 <= 0x3F)
            {
              v26 = 0;
              v33 = v14;
              sub_23D9273D0();
              if (v17 <= 0x3F)
              {
                v27 = 0;
                v34 = v16;
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23D9AC74C(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_23D9D9954() - 8) + 64);
  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  if (v11 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = v11;
  }

  v46 = v13;
  v14 = *(sub_23D9D88A4() - 8);
  v15 = v14;
  v16 = *(v14 + 84);
  if (v16)
  {
    v17 = v16 - 1;
  }

  else
  {
    v17 = 0;
  }

  if (v17 <= v12)
  {
    v18 = v12;
  }

  else
  {
    v18 = v17;
  }

  v19 = *(v9 + 80);
  if (v10)
  {
    v20 = *(v9 + 64);
  }

  else
  {
    v20 = *(v9 + 64) + 1;
  }

  v21 = *(v14 + 80);
  v22 = *(v14 + 64);
  if (v16)
  {
    v23 = 7;
  }

  else
  {
    v23 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v24 = v19 | 7;
  v25 = v7 + (v19 | 7) + 1;
  v26 = ((v19 + 16) & ~v19) + v20;
  v27 = (v19 | 7) + 25;
  v28 = v20 + 7;
  v29 = v21 & 0xF8 | 7;
  v30 = ((v20 + 7) & 0xFFFFFFFFFFFFFFF8) + v29 + 8;
  if (v18 < a2)
  {
    v31 = ((v23 + v22) & 0xFFFFFFFFFFFFFFF8) + ((v30 + ((v27 + ((v26 + (v25 & ~v24) + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v24)) & ~v29) + 40;
    v22 = v31 & 0xFFFFFFF8;
    if ((v31 & 0xFFFFFFF8) != 0)
    {
      v32 = 2;
    }

    else
    {
      v32 = a2 - v18 + 1;
    }

    if (v32 >= 0x10000)
    {
      v33 = 4;
    }

    else
    {
      v33 = 2;
    }

    if (v32 < 0x100)
    {
      v33 = 1;
    }

    if (v32 >= 2)
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }

    if (v34 > 1)
    {
      if (v34 == 2)
      {
        v35 = *(a1 + v31);
        if (!v35)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v35 = *(a1 + v31);
        if (!v35)
        {
          goto LABEL_48;
        }
      }
    }

    else
    {
      if (!v34)
      {
        goto LABEL_48;
      }

      v35 = *(a1 + v31);
      if (!v35)
      {
        goto LABEL_48;
      }
    }

    v37 = v35 - 1;
    if (v22)
    {
      v37 = 0;
      v38 = *a1;
    }

    else
    {
      v38 = 0;
    }

    return v18 + (v38 | v37) + 1;
  }

LABEL_48:
  v39 = ~v24;
  v40 = (a1 + v25) & v39;
  if (v17 <= v12)
  {
    v43 = ((v40 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v11 & 0x80000000) == 0)
    {
      v44 = *v43;
      if (v44 >= 0xFFFFFFFF)
      {
        LODWORD(v44) = -1;
      }

      return (v44 + 1);
    }

    v42 = (*(v9 + 48))((v43 + v19 + 8) & ~v19, v10, v8, v22);
LABEL_58:
    if (v42 >= 2)
    {
      return v42 - 1;
    }

    else
    {
      return 0;
    }
  }

  v41 = (v27 + ((v26 + v40 + 7) & 0xFFFFFFFFFFFFFFF8)) & v39;
  if (v46 != v18)
  {
    v42 = (*(v15 + 48))((v30 + v41) & ~v29);
    goto LABEL_58;
  }

  if (v11 >= 0x7FFFFFFE)
  {
    v42 = (*(v9 + 48))(v41, v10, v8, v22);
    goto LABEL_58;
  }

  v45 = *((v28 + v41) & 0xFFFFFFFFFFFFFFF8);
  if (v45 >= 0xFFFFFFFF)
  {
    LODWORD(v45) = -1;
  }

  if ((v45 + 1) >= 2)
  {
    return v45;
  }

  else
  {
    return 0;
  }
}

void sub_23D9ACAB0(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(sub_23D9D9954() - 8) + 64);
  if (v7 <= 8)
  {
    v8 = 8;
  }

  else
  {
    v8 = v7;
  }

  v53 = *(a4 + 16);
  v9 = *(v53 - 8);
  v56 = v9;
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  if (v11 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = v11;
  }

  v54 = v13;
  v14 = 0;
  v15 = *(sub_23D9D88A4() - 8);
  v16 = v15;
  v17 = *(v15 + 84);
  if (v17)
  {
    v18 = v17 - 1;
  }

  else
  {
    v18 = 0;
  }

  if (v18 <= 0x7FFFFFFE)
  {
    v19 = 2147483646;
  }

  else
  {
    v19 = v18;
  }

  if (v19 <= v12)
  {
    v20 = v12;
  }

  else
  {
    v20 = v19;
  }

  if (v10)
  {
    v21 = *(v9 + 64);
  }

  else
  {
    v21 = *(v9 + 64) + 1;
  }

  v22 = *(v9 + 80);
  v23 = v22 | 7;
  v24 = v8 + (v22 | 7) + 1;
  v25 = ((v22 + 16) & ~v22) + v21;
  v26 = (v22 | 7) + 25;
  v27 = *(v15 + 80) & 0xF8 | 7;
  v28 = ((v21 + 7) & 0xFFFFFFFFFFFFFFF8) + v27 + 8;
  v29 = *(v15 + 64);
  if (!v17)
  {
    ++v29;
  }

  v30 = ((v29 + 7) & 0xFFFFFFFFFFFFFFF8) + ((v28 + ((v26 + ((v25 + (v24 & ~(v22 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8)) & ~(v22 | 7))) & ~v27) + 40;
  if (v20 < a3)
  {
    if (((v29 + 7) & 0xFFFFFFF8) + ((v28 + ((v26 + ((v25 + (v24 & ~(v22 | 7)) + 7) & 0xFFFFFFF8)) & ~(v22 | 7))) & ~(*(v15 + 80) & 0xF8 | 7)) == -40)
    {
      v31 = a3 - v20 + 1;
    }

    else
    {
      v31 = 2;
    }

    if (v31 >= 0x10000)
    {
      v32 = 4;
    }

    else
    {
      v32 = 2;
    }

    if (v31 < 0x100)
    {
      v32 = 1;
    }

    if (v31 >= 2)
    {
      v14 = v32;
    }

    else
    {
      v14 = 0;
    }
  }

  v33 = a2;
  if (a2 > v20)
  {
    if (((v29 + 7) & 0xFFFFFFF8) + ((v28 + ((v26 + ((v25 + (v24 & ~(v22 | 7)) + 7) & 0xFFFFFFF8)) & ~(v22 | 7))) & ~v27) == -40)
    {
      v34 = a2 - v20;
    }

    else
    {
      v34 = 1;
    }

    if (((v29 + 7) & 0xFFFFFFF8) + ((v28 + ((v26 + ((v25 + (v24 & ~(v22 | 7)) + 7) & 0xFFFFFFF8)) & ~(v22 | 7))) & ~v27) != -40)
    {
      v35 = ~v20 + a2;
      bzero(a1, v30);
      *a1 = v35;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        *(a1 + v30) = v34;
      }

      else
      {
        *(a1 + v30) = v34;
      }
    }

    else if (v14)
    {
      *(a1 + v30) = v34;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *(a1 + v30) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_57;
    }

    *(a1 + v30) = 0;
  }

  else if (v14)
  {
    *(a1 + v30) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_57;
  }

  if (!a2)
  {
    return;
  }

LABEL_57:
  v36 = (a1 + v24) & ~v23;
  if (v18 > v12)
  {
    v36 = (v26 + ((v25 + v36 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v23;
    if (v54 != v20)
    {
      v42 = (v28 + v36) & ~v27;
      if (v19 >= v33)
      {
        if (v18 >= v33)
        {
          v52 = *(v16 + 56);

          v52((v28 + v36) & ~v27, v33 + 1);
        }

        else
        {
          if (v29 <= 3)
          {
            v48 = ~(-1 << (8 * v29));
          }

          else
          {
            v48 = -1;
          }

          if (v29)
          {
            v49 = v48 & (~v18 + v33);
            if (v29 <= 3)
            {
              v50 = v29;
            }

            else
            {
              v50 = 4;
            }

            bzero(((v28 + v36) & ~v27), v29);
            if (v50 > 2)
            {
              if (v50 == 3)
              {
                *v42 = v49;
                *(v42 + 2) = BYTE2(v49);
              }

              else
              {
                *v42 = v49;
              }
            }

            else if (v50 == 1)
            {
              *v42 = v49;
            }

            else
            {
              *v42 = v49;
            }
          }
        }
      }

      else
      {
        v43 = (v29 + 7) & 0xFFFFFFF8;
        if (v43 != -8)
        {
          v44 = ~v19 + v33;
          bzero(((v28 + v36) & ~v27), (v43 + 8));
          *v42 = v44;
        }
      }

      return;
    }

    if (v11 < 0x7FFFFFFE)
    {
      v47 = ((v21 + 7 + v36) & 0xFFFFFFFFFFFFFFF8);
      if (v33 > 0x7FFFFFFE)
      {
        *v47 = 0;
        *v47 = v33 - 0x7FFFFFFF;
      }

      else
      {
        *v47 = v33;
      }

      return;
    }

    if (v11 < v33)
    {
      goto LABEL_61;
    }

    goto LABEL_107;
  }

  if (v12 >= v33)
  {
    v45 = ((v36 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v11 & 0x80000000) == 0)
    {
      if ((v33 & 0x80000000) != 0)
      {
        v46 = v33 & 0x7FFFFFFF;
      }

      else
      {
        v46 = v33 - 1;
      }

      *v45 = v46;
      return;
    }

    v36 = (v45 + v22 + 8) & ~v22;
    if (v11 < v33)
    {
LABEL_61:
      if (v21 <= 3)
      {
        v37 = ~(-1 << (8 * v21));
      }

      else
      {
        v37 = -1;
      }

      if (v21)
      {
        v38 = v37 & (~v11 + v33);
        if (v21 <= 3)
        {
          v39 = v21;
        }

        else
        {
          v39 = 4;
        }

        v40 = v36;
LABEL_78:
        bzero(v40, v21);
        if (v39 > 2)
        {
          if (v39 == 3)
          {
            *v36 = v38;
            *(v36 + 2) = BYTE2(v38);
          }

          else
          {
            *v36 = v38;
          }
        }

        else if (v39 == 1)
        {
          *v36 = v38;
        }

        else
        {
          *v36 = v38;
        }

        return;
      }

      return;
    }

LABEL_107:
    v51 = *(v56 + 56);

    v51(v36, v33 + 1, v10, v53);
    return;
  }

  if (v25 <= 3)
  {
    v41 = ~(-1 << (8 * v25));
  }

  else
  {
    v41 = -1;
  }

  if (v25)
  {
    v38 = v41 & (~v12 + v33);
    if (v25 <= 3)
    {
      v39 = ((v22 + 16) & ~v22) + v21;
    }

    else
    {
      v39 = 4;
    }

    v40 = ((a1 + v24) & ~v23);
    v21 += (v22 + 16) & ~v22;
    goto LABEL_78;
  }
}