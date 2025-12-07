uint64_t sub_26B9664D8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for TypedValueResultBuilder.Config(0);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v4 = sub_26B9ABC94();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v5 = sub_26B9ABE84();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B96664C, 0, 0);
}

uint64_t sub_26B96664C()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[2];
  v5 = *(v3 + 16);
  v0[16] = v5;
  v0[17] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  if ((*(v3 + 88))(v1, v2) == *MEMORY[0x277D729E0])
  {
    v6 = v0[15];
    v7 = v0[11];
    v8 = v0[8];
    v9 = v0[9];
    v10 = v0[5];
    v11 = v0[3];
    (*(v0[13] + 96))(v6, v0[12]);
    v0[18] = *v6;
    v12 = swift_projectBox();
    v13 = *(v9 + 16);
    v13(v7, v12, v8);
    v14 = v11 + *(v10 + 28);
    v15 = *(v14 + 8);
    if (*(v14 + 8) || (v16 = v13, v17 = *(sub_26B9ABC84() + 16), , v17 < 2))
    {
      sub_26B95C6A0(v0[3], v0[6]);
      v28 = *(sub_26B9ABC84() + 16);

      if (v15 == 1 && v28 >= 2)
      {
        v30 = v0[6] + *(v10 + 28);
        *v30 = 1;
        *(v30 + 8) = 1;
      }

      v31 = sub_26B9ABC84();
      v0[19] = v31;
      v32 = swift_task_alloc();
      v0[20] = v32;
      *v32 = v0;
      v32[1] = sub_26B966A40;
      v33 = v0[6];

      return sub_26B965EEC(v31, v33);
    }

    else
    {
      v18 = v16;
      v19 = v0[11];
      v38 = v0[14];
      v39 = v0[12];
      v20 = v0[9];
      v21 = v0[10];
      v22 = v0[7];
      v37 = v0[3];
      v35 = v0[8];
      v36 = v0[2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_26B9B1290;
      type metadata accessor for CollectionTypedValueResultBuilder(0);
      v18(v21, v19, v35);
      v5(v38, v36, v39);
      sub_26B95C6A0(v37, v22);
      *(v34 + 32) = sub_26B95EF58(v21, v38, v22);
      (*(v20 + 8))(v19, v35);

      v23 = v0[1];

      return v23(v34);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
    v25 = swift_allocObject();
    v0[22] = v25;
    *(v25 + 16) = xmmword_26B9B1290;
    v26 = swift_task_alloc();
    v0[23] = v26;
    *v26 = v0;
    v26[1] = sub_26B966C50;
    v27 = v0[3];

    return sub_26B966EC0(v27);
  }
}

uint64_t sub_26B966A40(uint64_t a1)
{
  *(*v1 + 168) = a1;

  return MEMORY[0x2822009F8](sub_26B966B60, 0, 0);
}

uint64_t sub_26B966B60()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  sub_26B960838(v0[6], type metadata accessor for TypedValueResultBuilder.Config);
  (*(v3 + 8))(v1, v2);

  v4 = v0[21];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_26B966C50(uint64_t a1)
{
  *(*v1 + 192) = a1;

  return MEMORY[0x2822009F8](sub_26B966D50, 0, 0);
}

uint64_t sub_26B966D50()
{
  v1 = *(v0 + 192);
  if (!v1)
  {
    v3 = *(v0 + 104);
    v2 = *(v0 + 112);
    v4 = *(v0 + 96);
    v5 = *(v0 + 56);
    v6 = *(v0 + 24);
    (*(v0 + 128))(v2, *(v0 + 16), v4);
    sub_26B95C6A0(v6, v5);
    type metadata accessor for TypedValueResultBuilder(0);
    v1 = swift_allocObject();
    v7 = OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_presentationOverride;
    *(v1 + v7) = sub_26B96503C();
    (*(v3 + 32))(v1 + OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_typedValue, v2, v4);
    sub_26B96CD44(v5, v1 + OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_config, type metadata accessor for TypedValueResultBuilder.Config);
  }

  v8 = *(v0 + 120);
  v9 = *(v0 + 96);
  v10 = *(v0 + 104);
  *(*(v0 + 176) + 32) = v1;
  (*(v10 + 8))(v8, v9);
  v11 = *(v0 + 176);

  v12 = *(v0 + 8);

  return v12(v11);
}

uint64_t sub_26B966EC0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  type metadata accessor for TypedValueResultBuilder.Config(0);
  v2[4] = swift_task_alloc();
  v3 = sub_26B9ABD44();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v4 = sub_26B9ABE44();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = sub_26B9ABE84();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B96707C, 0, 0);
}

uint64_t sub_26B96707C()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = *(v3 + 16);
  v4(v1, v0[3], v2);
  v5 = (*(v3 + 88))(v1, v2);
  if (v5 == *MEMORY[0x277D72A58])
  {
    v6 = v0[15];
    v8 = v0[10];
    v7 = v0[11];
    v9 = v0[9];
    (*(v0[13] + 96))(v6, v0[12]);
    v0[16] = *v6;
    v10 = swift_projectBox();
    (*(v8 + 16))(v7, v10, v9);
    v11 = swift_task_alloc();
    v0[17] = v11;
    *v11 = v0;
    v11[1] = sub_26B9673B4;
    v12 = v0[11];
    v13 = v0[2];

    return sub_26B96B9F4(v12, v13);
  }

  else
  {
    v15 = v0[15];
    if (v5 == *MEMORY[0x277D72A38])
    {
      v31 = v0[14];
      v16 = v0[12];
      v18 = v0[7];
      v17 = v0[8];
      v20 = v0[5];
      v19 = v0[6];
      v21 = v0[3];
      v29 = v0[2];
      v30 = v0[4];
      (*(v0[13] + 96))(v15, v16);
      v0[19] = *v15;
      v22 = swift_projectBox();
      v23 = *(v19 + 16);
      v23(v17, v22, v20);
      type metadata accessor for AppEntityTypedValueResultBuilder(0);
      v23(v18, v17, v20);
      v4(v31, v21, v16);
      sub_26B95C6A0(v29, v30);
      v24 = swift_task_alloc();
      v0[20] = v24;
      *v24 = v0;
      v24[1] = sub_26B967584;
      v25 = v0[14];
      v26 = v0[7];
      v27 = v0[4];

      return sub_26B95B3B8(v26, v25, v27);
    }

    else
    {
      (*(v0[13] + 8))(v0[15], v0[12]);

      v28 = v0[1];

      return v28(0);
    }
  }
}

uint64_t sub_26B9673B4(uint64_t a1)
{
  *(*v1 + 144) = a1;

  return MEMORY[0x2822009F8](sub_26B9674B4, 0, 0);
}

uint64_t sub_26B9674B4()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[18];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_26B967584(uint64_t a1)
{
  *(*v1 + 168) = a1;

  return MEMORY[0x2822009F8](sub_26B967684, 0, 0);
}

uint64_t sub_26B967684()
{
  v1 = v0[21];
  (*(v0[6] + 8))(v0[8], v0[5]);

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_26B967754()
{
  v1[2] = v0;
  v2 = sub_26B9AB1F4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B967814, 0, 0);
}

uint64_t sub_26B967814()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = [objc_allocWithZone(MEMORY[0x277D4C230]) init];
  (*(*v3 + 128))();
  sub_26B9294B8(0, &qword_2804272E0, 0x277D4C238);
  v6 = sub_26B9AC6E4();

  [v5 setCardSections_];

  sub_26B9AA884();
  sub_26B9AB1C4();
  (*(v2 + 8))(v1, v4);
  v7 = [objc_allocWithZone(MEMORY[0x277D65850]) init];
  [v7 setInlineCard_];
  v8 = sub_26B9AC4C4();

  [v7 setIdentifier_];

  [v7 setUsesTopHitDisplay_];

  v9 = v0[1];

  return v9(v7);
}

uint64_t sub_26B967A04()
{
  v1 = v0 + OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_config;
  v2 = *(v1 + *(type metadata accessor for TypedValueResultBuilder.Config(0) + 28) + 8);
  if (v2 == 1 && ((*(v0 + OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_presentationOverride) & 1) != 0 || sub_26B967AFC()))
  {
    goto LABEL_6;
  }

  v3 = (*(*v0 + 144))();
  v4 = v3;
  if (v2 == 1)
  {
    if (v3)
    {
LABEL_8:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
      result = swift_allocObject();
      *(result + 16) = xmmword_26B9B1290;
      *(result + 32) = v4;
      return result;
    }

LABEL_6:
    v4 = sub_26B96C7BC();
    goto LABEL_8;
  }

  if (v3)
  {
    goto LABEL_8;
  }

  return MEMORY[0x277D84F90];
}

BOOL sub_26B967AFC()
{
  v1 = v0;
  v2 = sub_26B9ABF24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26B9ABD44();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26B9ABE84();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, v1, v10);
  if ((*(v11 + 88))(v13, v10) == *MEMORY[0x277D72A38])
  {
    (*(v11 + 96))(v13, v10);
    v14 = swift_projectBox();
    (*(v7 + 16))(v9, v14, v6);
    if (qword_28042F390 != -1)
    {
      swift_once();
    }

    v15 = qword_28042F398;
    sub_26B9ABCF4();
    v16 = sub_26B96C608(v5, v15);
    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    (*(v11 + 8))(v13, v10);
    return 0;
  }

  return v16;
}

id sub_26B967DE8()
{
  v1 = (*(*v0 + 160))();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [objc_allocWithZone(MEMORY[0x277D4C328]) init];
  if ((*(*v0 + 168))([v3 setTitle_]))
  {
    sub_26B9294B8(0, &qword_280426FE0, 0x277D4C598);
    v4 = sub_26B9AC6E4();
  }

  else
  {
    v4 = 0;
  }

  [v3 setDescriptions_];

  v6 = sub_26B968B7C();
  [v3 setThumbnail_];

  v7 = *(*v0 + 200);
  v5 = v3;
  v8 = v7();
  [v5 setCommand_];

  if ((*(*v0 + 208))())
  {
    sub_26B9294B8(0, &qword_280426720, 0x277D4C200);
    v9 = sub_26B9AC6E4();
  }

  else
  {
    v9 = 0;
  }

  [v5 setButtonItems_];

  if ((*(*v0 + 248))([v5 setButtonItemsAreTrailing_]))
  {
    sub_26B9294B8(0, &qword_280426720, 0x277D4C200);
    v10 = sub_26B9AC6E4();
  }

  else
  {
    v10 = 0;
  }

  [v5 setPreviewButtonItems_];

  return v5;
}

id sub_26B968070()
{
  v1 = *v0;
  v2 = sub_26B968190();
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0xE000000000000000;
  }

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    sub_26B95FAC8(1);
  }

  (*(v1 + 280))();

  v6 = sub_26B9AC4C4();

  v7 = [objc_opt_self() textWithString_];

  if (v7)
  {
    [v7 setMaxLines_];
  }

  return v7;
}

uint64_t sub_26B968190()
{
  v1 = sub_26B9ABCC4();
  v35 = *(v1 - 8);
  v36 = v1;
  MEMORY[0x28223BE20](v1);
  v34 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26B9ABE84();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - v8;
  v10 = sub_26B9ABE44();
  v37 = *(v10 - 8);
  v38 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262A0, &unk_26B9B3640);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v33 - v14;
  v16 = sub_26B9AC1D4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26B9ABE64();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_26B8EACD8(v15, &qword_2804262A0, &unk_26B9B3640);
    v20 = *(v4 + 16);
    v20(v9, v0, v3);
    v21 = *(v4 + 88);
    if (v21(v9, v3) == *MEMORY[0x277D72A58])
    {
      (*(v4 + 96))(v9, v3);
      v22 = swift_projectBox();
      v24 = v37;
      v23 = v38;
      (*(v37 + 16))(v12, v22, v38);

      v25 = sub_26B9630A4();
      (*(v24 + 8))(v12, v23);
    }

    else
    {
      v26 = v9;
      v27 = *(v4 + 8);
      v27(v26, v3);
      v20(v7, v0, v3);
      if (v21(v7, v3) == *MEMORY[0x277D729E8])
      {
        (*(v4 + 96))(v7, v3);
        v28 = swift_projectBox();
        v30 = v34;
        v29 = v35;
        v31 = v36;
        (*(v35 + 16))(v34, v28, v36);

        v25 = sub_26B9ABCA4();
        (*(v29 + 8))(v30, v31);
      }

      else
      {
        v27(v7, v3);
        return 0;
      }
    }
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
    v25 = sub_26B9AC174();
    (*(v17 + 8))(v19, v16);
  }

  return v25;
}

uint64_t sub_26B968670()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262A0, &unk_26B9B3640);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v25 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426AB8, &qword_26B9B3CC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - v5;
  v7 = sub_26B9AC1B4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v0 + OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_config;
  v12 = v11 + *(type metadata accessor for TypedValueResultBuilder.Config(0) + 28);
  if (!*(v12 + 8))
  {
    v16 = [objc_opt_self() localizedStringForParameterSuggestionContext_];
    sub_26B9AC504();

    v17 = sub_26B9AC4C4();

    v18 = [objc_opt_self() textWithString_];

    if (v18)
    {
      [v18 setMaxLines_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
      result = swift_allocObject();
      *(result + 16) = xmmword_26B9B1290;
      *(result + 32) = v18;
      return result;
    }

    return 0;
  }

  sub_26B9ABE64();
  v13 = sub_26B9AC1D4();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v3, 1, v13) == 1)
  {
    sub_26B8EACD8(v3, &qword_2804262A0, &unk_26B9B3640);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426AC0, &qword_26B9B3CC8);
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
LABEL_7:
    sub_26B8EACD8(v6, &qword_280426AB8, &qword_26B9B3CC0);
    return 0;
  }

  sub_26B9AC1C4();
  (*(v14 + 8))(v3, v13);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426AC0, &qword_26B9B3CC8);
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v6, 1, v20) == 1)
  {
    goto LABEL_7;
  }

  if ((*(v21 + 88))(v6, v20) != *MEMORY[0x277D731E0])
  {
    (*(v21 + 8))(v6, v20);
    return 0;
  }

  (*(v21 + 96))(v6, v20);
  (*(v8 + 32))(v10, v6, v7);
  sub_26B9AC1A4();
  v22 = sub_26B9AC4C4();

  v23 = [objc_opt_self() textWithString_];

  if (!v23)
  {
    (*(v8 + 8))(v10, v7);
    return 0;
  }

  [v23 setMaxLines_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_26B9B1290;
  *(v24 + 32) = v23;
  (*(v8 + 8))(v10, v7);
  return v24;
}

void *sub_26B968B7C()
{
  v1 = (*(*v0 + 184))();
  if (v1)
  {
    swift_getObjectType();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_26B9294B8(0, &unk_280426B10, 0x277D4C1D0);
    v3 = swift_getObjCClassFromMetadata();
    v4 = v1;
    if (([ObjCClassFromMetadata isSubclassOfClass_] & 1) == 0)
    {
      v5 = (*(*v0 + 192))(v4);
      [v4 setBadgingImage_];

      v4 = v5;
    }
  }

  return v1;
}

uint64_t *sub_26B968C74()
{
  v1 = v0;
  v2 = sub_26B9AB414();
  v198 = *(v2 - 8);
  v199 = v2;
  MEMORY[0x28223BE20](v2);
  v179 = &v162 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_26B9ABE44();
  v177 = *(v178 - 8);
  v4 = MEMORY[0x28223BE20](v178);
  v176 = &v162 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v187 = &v162 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426AC8, &qword_26B9B3CD0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v188 = &v162 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v169 = &v162 - v11;
  MEMORY[0x28223BE20](v10);
  v197 = &v162 - v12;
  v168 = sub_26B9AB884();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v166 = &v162 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426AD0, &qword_26B9B3CD8);
  MEMORY[0x28223BE20](v14 - 8);
  v194 = &v162 - v15;
  v16 = sub_26B9ABBB4();
  v17 = *(v16 - 8);
  v195 = v16;
  v196 = v17;
  MEMORY[0x28223BE20](v16);
  v182 = &v162 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_26B9ABC94();
  v184 = *(v185 - 8);
  MEMORY[0x28223BE20](v185);
  v183 = &v162 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_26B9ABD04();
  v174 = *(v175 - 8);
  MEMORY[0x28223BE20](v175);
  v173 = &v162 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = sub_26B9ABE84();
  v208 = *(v210 - 8);
  v21 = MEMORY[0x28223BE20](v210);
  v191 = &v162 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v204 = &v162 - v24;
  MEMORY[0x28223BE20](v23);
  v206 = &v162 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262C8, &qword_26B9B3CE0);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v200 = &v162 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v203 = (&v162 - v30);
  v31 = MEMORY[0x28223BE20](v29);
  v190 = &v162 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = &v162 - v33;
  v164 = sub_26B9AB104();
  v163 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v165 = &v162 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_26B9AC194();
  v170 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v172 = &v162 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_26B9AC154();
  v180 = *(v181 - 8);
  v37 = MEMORY[0x28223BE20](v181);
  v201 = (&v162 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v37);
  v189 = &v162 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262A0, &unk_26B9B3640);
  MEMORY[0x28223BE20](v40 - 8);
  v42 = &v162 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426AD8, &qword_26B9B3CE8);
  MEMORY[0x28223BE20](v43 - 8);
  v45 = &v162 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426AE0, &unk_26B9B3CF0);
  v47 = *(v46 - 8);
  v48 = MEMORY[0x28223BE20](v46);
  v50 = &v162 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v192 = &v162 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426228, &unk_26B9B08A0);
  v53 = MEMORY[0x28223BE20](v52 - 8);
  v193 = &v162 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v56 = &v162 - v55;
  v57 = (v1 + OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_config);
  v202 = type metadata accessor for TypedValueResultBuilder.Config(0);
  v58 = *(v202 + 28);
  v209 = v57;
  LODWORD(v58) = *(v57 + v58 + 8);
  v205 = v34;
  if (v58 != 1)
  {
    goto LABEL_4;
  }

  sub_26B9236E8(v209 + *(v202 + 20), v56, &qword_280426228, &unk_26B9B08A0);
  v59 = sub_26B9AB914();
  v60 = *(v59 - 8);
  if ((*(v60 + 48))(v56, 1, v59) == 1)
  {
    sub_26B8EACD8(v56, &qword_280426228, &unk_26B9B08A0);
    goto LABEL_4;
  }

  v186 = v1;
  v77 = sub_26B9AB8E4();
  v79 = v78;
  (*(v60 + 8))(v56, v59);
  if (v77 != 0xD00000000000001FLL || 0x800000026B9B7D90 != v79)
  {
    v97 = sub_26B9ACEB4();

    v34 = v205;
    v1 = v186;
    if (v97)
    {
      return 0;
    }

LABEL_4:
    v207 = OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_typedValue;
    sub_26B9ABE64();
    v61 = sub_26B9AC1D4();
    v62 = *(v61 - 8);
    if ((*(v62 + 48))(v42, 1, v61) == 1)
    {
      sub_26B8EACD8(v42, &qword_2804262A0, &unk_26B9B3640);
      (*(v47 + 56))(v45, 1, 1, v46);
LABEL_7:
      sub_26B8EACD8(v45, &qword_280426AD8, &qword_26B9B3CE8);
LABEL_8:
      v201 = 0;
LABEL_9:
      v63 = v206;
      goto LABEL_10;
    }

    sub_26B9AC164();
    (*(v62 + 8))(v42, v61);
    if ((*(v47 + 48))(v45, 1, v46) == 1)
    {
      goto LABEL_7;
    }

    v81 = v192;
    (*(v47 + 32))(v192, v45, v46);
    (*(v47 + 16))(v50, v81, v46);
    if ((*(v47 + 88))(v50, v46) != *MEMORY[0x277D731E0])
    {
      v98 = *(v47 + 8);
      v98(v81, v46);
      v98(v50, v46);
      goto LABEL_8;
    }

    (*(v47 + 96))(v50, v46);
    v82 = v180;
    v83 = v189;
    v84 = v181;
    (*(v180 + 32))(v189, v50, v181);
    v85 = v201;
    (*(v82 + 16))(v201, v83, v84);
    v86 = (*(v82 + 88))(v85, v84);
    if (v86 == *MEMORY[0x277D73208])
    {
      (*(v82 + 96))(v85, v84);
      v87 = v85;
      v88 = *v85;
      v89 = v87[1];
      v90 = [objc_allocWithZone(MEMORY[0x277D4C3B0]) init];
      v91 = sub_26B9AB114();
      v201 = v90;
      [v90 setImageData_];
      sub_26B922394(v88, v89);

      (*(v82 + 8))(v189, v84);
      (*(v47 + 8))(v192, v46);
      goto LABEL_9;
    }

    v63 = v206;
    if (v86 == *MEMORY[0x277D73218])
    {
      (*(v82 + 96))(v85, v84);
      (*(v170 + 32))(v172, v85, v171);
      v145 = [objc_allocWithZone(MEMORY[0x277D4C688]) init];
      sub_26B9AC184();
      v146 = sub_26B9AC4C4();

      [v145 setSymbolName_];

      v201 = v145;
      [v145 setPunchThroughBackground_];
      (*(v170 + 8))(v172, v171);
    }

    else
    {
      if (v86 != *MEMORY[0x277D73210])
      {
        v161 = *(v82 + 8);
        v161(v83, v84);
        (*(v47 + 8))(v81, v46);
        v161(v201, v84);
        v201 = 0;
LABEL_10:
        v64 = v209[1];
        v192 = *v209;
        v65 = sub_26B9ABF24();
        v66 = *(v65 - 8);
        v67 = *(v66 + 56);
        v67(v34, 1, 1, v65);
        v68 = v210;
        v206 = v64;
        if (v64)
        {
          goto LABEL_26;
        }

        v69 = v208;
        (*(v208 + 16))(v63, v1 + v207, v210);
        v70 = (*(v69 + 88))(v63, v68);
        if (v70 == *MEMORY[0x277D729E0])
        {
          (*(v69 + 96))(v63, v68);
          v71 = swift_projectBox();
          v72 = v184;
          v73 = v183;
          v74 = v185;
          (*(v184 + 16))(v183, v71, v185);
          v186 = v1;
          v75 = v190;
          sub_26B9ABC74();
          (*(v72 + 8))(v73, v74);
          sub_26B8EACD8(v34, &qword_2804262C8, &qword_26B9B3CE0);
          v67(v75, 0, 1, v65);
          v76 = v75;
          v1 = v186;
          sub_26B923680(v76, v34, &qword_2804262C8, &qword_26B9B3CE0);
        }

        else
        {
          if (v70 != *MEMORY[0x277D729F8])
          {
            (*(v208 + 8))(v63, v68);
LABEL_26:
            v99 = v203;
            sub_26B9236E8(v34, v203, &qword_2804262C8, &qword_26B9B3CE0);
            if ((*(v66 + 48))(v99, 1, v65) == 1)
            {
              v100 = v1;
            }

            else
            {
              v101 = v200;
              sub_26B9236E8(v99, v200, &qword_2804262C8, &qword_26B9B3CE0);
              v100 = v1;
              if ((*(v66 + 88))(v101, v65) == *MEMORY[0x277D72D28])
              {
                (*(v66 + 96))(v101, v65);
                v102 = *(*v101 + 24);
                v192 = *(*v101 + 16);
                v206 = v102;
              }

              else
              {
                v103 = *(v66 + 8);

                v103(v101, v65);
              }

              v68 = v210;
            }

            sub_26B8EACD8(v99, &qword_2804262C8, &qword_26B9B3CE0);
            v104 = v208;
            v105 = *(v208 + 16);
            v106 = v204;
            v105(v204, v100 + v207, v68);
            v107 = *(v104 + 88);
            v108 = v107(v106, v68);
            v109 = v68;
            v110 = *(v104 + 8);
            v110(v106, v109);
            v80 = v201;
            if (v201)
            {

LABEL_34:
              v111 = v205;
LABEL_35:
              sub_26B8EACD8(v111, &qword_2804262C8, &qword_26B9B3CE0);
              return v80;
            }

            v204 = v107;
            v201 = v110;
            v186 = v100;
            v113 = *MEMORY[0x277D72A58];
            v114 = v193;
            sub_26B9236E8(v209 + *(v202 + 20), v193, &qword_280426228, &unk_26B9B08A0);
            v115 = sub_26B9AB914();
            v116 = *(v115 - 8);
            v117 = (*(v116 + 48))(v114, 1, v115);
            v203 = v105;
            if (v117 == 1)
            {
              sub_26B8EACD8(v114, &qword_280426228, &unk_26B9B08A0);
              v118 = v194;
              (*(v196 + 56))(v194, 1, 1, v195);
              v119 = v207;
            }

            else
            {
              v120 = v113;
              v121 = v194;
              sub_26B9AB894();
              v118 = v121;
              v113 = v120;
              v122 = v114;
              v119 = v207;
              (*(v116 + 8))(v122, v115);
              v124 = v195;
              v123 = v196;
              if ((*(v196 + 48))(v118, 1, v195) != 1)
              {
                v143 = v118;
                v144 = v182;
                (*(v123 + 32))(v182, v143, v124);
                if (v108 != v113)
                {
                  v80 = [objc_allocWithZone(MEMORY[0x277D4C620]) init];
                  v151 = v166;
                  (*(v123 + 16))(v166, v144, v124);
                  v152 = v167;
                  v153 = v168;
                  (*(v167 + 104))(v151, *MEMORY[0x277D721E8], v168);
                  v154 = sub_26B9AB874();
                  v156 = v155;
                  (*(v152 + 8))(v151, v153);
                  if (v156 >> 60 == 15)
                  {
                    v157 = 0;
                  }

                  else
                  {
                    v157 = sub_26B9AB114();
                    sub_26B96C918(v154, v156);
                  }

                  v160 = v205;
                  [v80 setImageData_];

                  (*(v196 + 8))(v182, v124);

                  v111 = v160;
                  goto LABEL_35;
                }

                (*(v123 + 8))(v144, v124);
LABEL_41:
                v125 = v210;
                v126 = v191;
                if (v206)
                {
                  v127 = HIBYTE(v206) & 0xF;
                  if ((v206 & 0x2000000000000000) == 0)
                  {
                    v127 = v192 & 0xFFFFFFFFFFFFLL;
                  }

                  if (v127 && v108 != v113)
                  {
                    v80 = [objc_allocWithZone(MEMORY[0x277D4C1D0]) init];
                    v128 = sub_26B9AC4C4();

                    [v80 setBundleIdentifier_];

                    goto LABEL_34;
                  }
                }

                v129 = v113;
                v130 = *(v198 + 56);
                v130(v197, 1, 1, v199);
                v203(v126, v186 + v119, v125);
                if ((v204)(v126, v125) == v129)
                {
                  (*(v208 + 96))(v126, v125);
                  v131 = swift_projectBox();
                  v132 = v177;
                  v133 = *(v177 + 16);
                  v134 = v187;
                  v135 = v178;
                  v133(v187, v131, v178);
                  v136 = v176;
                  v133(v176, v134, v135);
                  v137 = (*(v132 + 88))(v136, v135);
                  v138 = *(v132 + 8);
                  v139 = v205;
                  if (v137 == *MEMORY[0x277D729B8] || v137 == *MEMORY[0x277D72968])
                  {
                    v138(v136, v135);
                    v147 = v169;
                    sub_26B9AB404();
                    v138(v187, v135);
                    v142 = v197;
                    sub_26B8EACD8(v197, &qword_280426AC8, &qword_26B9B3CD0);
                    v141 = v199;
                    v130(v147, 0, 1, v199);
                    sub_26B923680(v147, v142, &qword_280426AC8, &qword_26B9B3CD0);

                    v140 = v198;
                  }

                  else
                  {
                    v138(v187, v135);
                    v138(v136, v135);

                    v140 = v198;
                    v141 = v199;
                    v142 = v197;
                  }
                }

                else
                {
                  (v201)(v126, v125);
                  v140 = v198;
                  v141 = v199;
                  v142 = v197;
                  v139 = v205;
                }

                v148 = v188;
                sub_26B9236E8(v142, v188, &qword_280426AC8, &qword_26B9B3CD0);
                if ((*(v140 + 48))(v148, 1, v141) == 1)
                {
                  sub_26B8EACD8(v142, &qword_280426AC8, &qword_26B9B3CD0);
                  sub_26B8EACD8(v139, &qword_2804262C8, &qword_26B9B3CE0);
                  sub_26B8EACD8(v148, &qword_280426AC8, &qword_26B9B3CD0);
                  return 0;
                }

                v149 = v179;
                (*(v140 + 32))(v179, v148, v141);
                v80 = [objc_allocWithZone(MEMORY[0x277D4C1D0]) init];
                sub_26B9AB3C4();
                v150 = sub_26B9AC4C4();

                [v80 setContentType_];

                (*(v140 + 8))(v149, v141);
                sub_26B8EACD8(v142, &qword_280426AC8, &qword_26B9B3CD0);
                v111 = v139;
                goto LABEL_35;
              }
            }

            sub_26B8EACD8(v118, &qword_280426AD0, &qword_26B9B3CD8);
            goto LABEL_41;
          }

          (*(v208 + 96))(v63, v68);
          v189 = *v63;
          v92 = swift_projectBox();
          v93 = v174;
          v94 = v173;
          v95 = v175;
          (*(v174 + 16))(v173, v92, v175);
          v96 = v190;
          sub_26B9ABCF4();
          (*(v93 + 8))(v94, v95);
          sub_26B8EACD8(v34, &qword_2804262C8, &qword_26B9B3CE0);
          v67(v96, 0, 1, v65);
          sub_26B923680(v96, v34, &qword_2804262C8, &qword_26B9B3CE0);
        }

        v68 = v210;

        goto LABEL_26;
      }

      (*(v82 + 96))(v85, v84);
      (*(v163 + 32))(v165, v85, v164);
      v158 = [objc_allocWithZone(MEMORY[0x277D4C560]) init];
      v159 = sub_26B9AB0A4();
      v201 = v158;
      [v158 setFilePath_];

      (*(v163 + 8))(v165, v164);
    }

    (*(v82 + 8))(v189, v84);
    (*(v47 + 8))(v192, v46);
    goto LABEL_10;
  }

  return 0;
}

id sub_26B96A848()
{
  v1 = type metadata accessor for ContextualTypedValue(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = v0 + OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_config;
  if (*(v4 + *(type metadata accessor for TypedValueResultBuilder.Config(0) + 28) + 8) == 1)
  {
    v5 = (*(*v0 + 224))();
    if (v5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_26B9B1290;
      *(v6 + 32) = v5;
      v5 = [objc_allocWithZone(MEMORY[0x277D65940]) init];
      sub_26B9294B8(0, &qword_280426A48, 0x277D4C2E0);
      v7 = sub_26B9AC6E4();

      [v5 setCopyableItems_];
    }
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x277D4C380]) init];
    sub_26B9AAFB4();
    swift_allocObject();
    sub_26B9AAFA4();
    sub_26B96B058(v3);
    sub_26B96CDAC(&qword_280426AE8, type metadata accessor for ContextualTypedValue, &protocol conformance descriptor for ContextualTypedValue);
    v8 = sub_26B9AAF94();
    v9 = v3;
    v11 = v10;
    sub_26B960838(v9, type metadata accessor for ContextualTypedValue);

    v12 = sub_26B9AB114();
    sub_26B922394(v8, v11);
    [v5 setEncodedTypedValue_];
  }

  return v5;
}

uint64_t sub_26B96AAEC()
{
  v1 = v0 + OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_config;
  if (*(v1 + *(type metadata accessor for TypedValueResultBuilder.Config(0) + 28) + 8) != 1)
  {
    return 0;
  }

  result = (*(*v0 + 224))();
  if (result)
  {
    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_26B9B1290;
    *(v4 + 32) = v3;
    v5 = [objc_allocWithZone(MEMORY[0x277D4C2D8]) init];
    sub_26B9294B8(0, &qword_280426A48, 0x277D4C2E0);
    v6 = sub_26B9AC6E4();

    [v5 setCopyableItems_];

    v7 = [objc_allocWithZone(MEMORY[0x277D4C2B0]) init];
    [v7 setCommand_];
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_26B9B1290;
    *(v8 + 32) = v7;

    return v8;
  }

  return result;
}

id sub_26B96AC6C()
{
  v1 = v0 + OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_config;
  if (*(v1 + *(type metadata accessor for TypedValueResultBuilder.Config(0) + 28) + 8) != 1)
  {
    return 0;
  }

  sub_26B968190();
  if (!v2)
  {
    return 0;
  }

  v3 = [objc_allocWithZone(MEMORY[0x277D4C698]) init];
  v4 = sub_26B9AC4C4();

  [v3 setCopyableString_];

  return v3;
}

unint64_t sub_26B96AD2C()
{
  v1 = v0;
  v2 = MEMORY[0x277D84F90];
  v18 = MEMORY[0x277D84F90];
  v3 = (*(*v0 + 224))();
  if (v3)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_26B9B1290;
    *(v5 + 32) = v4;
    v6 = [objc_allocWithZone(MEMORY[0x277D4C2B0]) init];
    v7 = [objc_allocWithZone(MEMORY[0x277D4C2D8]) init];
    sub_26B9294B8(0, &qword_280426A48, 0x277D4C2E0);
    v8 = sub_26B9AC6E4();

    [v7 setCopyableItems_];

    [v6 setCommand_];
    v9 = v6;
    MEMORY[0x26D6865A0]();
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_26B9AC734();
    }

    sub_26B9AC774();

    v2 = v18;
  }

  v10 = (*(*v1 + 240))();
  if (v10)
  {
    v11 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_26B9B1290;
    *(v12 + 32) = v11;
    v13 = [objc_allocWithZone(MEMORY[0x277D4C2B0]) init];
    v14 = [objc_allocWithZone(MEMORY[0x277D4C610]) init];
    sub_26B9294B8(0, &qword_280426A40, 0x277D4C618);
    v15 = sub_26B9AC6E4();

    [v14 setShareItems_];

    [v13 setCommand_];
    v16 = v13;
    MEMORY[0x26D6865A0]();
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_26B9AC734();
    }

    sub_26B9AC774();

    v2 = v18;
  }

  if (v2 >> 62)
  {
    if (sub_26B9ACB44())
    {
      return v2;
    }

    goto LABEL_11;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_11:

    return 0;
  }

  return v2;
}

uint64_t sub_26B96B058@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26B9ABE84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426A38, &unk_26B9B3B20);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = v15 - v9;
  (*(*v1 + 264))(v8);
  v11 = type metadata accessor for ContextualTypedValue(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v10, 1, v11) != 1)
  {
    return sub_26B96CD44(v10, a1, type metadata accessor for ContextualTypedValue);
  }

  (*(v4 + 16))(v6, v1 + OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_typedValue, v3);
  sub_26B9823D8(v17);
  v15[0] = v17[0];
  v15[1] = v17[1];
  v16 = v18;
  v13 = sub_26B97E43C(v6, v15, a1);
  result = (v12)(v10, 1, v11, v13);
  if (result != 1)
  {
    return sub_26B8EACD8(v10, &qword_280426A38, &unk_26B9B3B20);
  }

  return result;
}

uint64_t sub_26B96B290@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26B9ABE84();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = v1 + OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_config;
  v11 = (v10 + *(type metadata accessor for TypedValueResultBuilder.Config(0) + 28));
  if (!*(v11 + 8))
  {
    v15 = *v11;
    (*(v4 + 16))(v7, v1 + OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_typedValue, v3);
    v16 = [objc_opt_self() localizedStringForParameterSuggestionContext_];
    v17 = sub_26B9AC504();
    v19 = v18;

    v20 = 0xED0000746E656D75;
    v21 = 0x636F642E74786574;
    if (v15 != 1)
    {
      v21 = 0;
      v20 = 0;
    }

    if (v15 == 4)
    {
      v22 = 0xD000000000000014;
    }

    else
    {
      v22 = v21;
    }

    if (v15 == 4)
    {
      v23 = 0x800000026B9B9BF0;
    }

    else
    {
      v23 = v20;
    }

    sub_26B97DC64(v17, v19, v22, v23, &v30);

    v27 = v30;
    v28 = v31;
    v29 = v32;
    v24 = a1;
    v25 = v7;
    goto LABEL_16;
  }

  if (*(v11 + 8) != 1)
  {
    (*(v4 + 16))(v9, v1 + OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_typedValue, v3);
    sub_26B9823D8(&v30);
    v27 = v30;
    v28 = v31;
    v29 = v32;
    v24 = a1;
    v25 = v9;
LABEL_16:
    sub_26B97E43C(v25, &v27, v24);
    v26 = type metadata accessor for ContextualTypedValue(0);
    return (*(*(v26 - 8) + 56))(a1, 0, 1, v26);
  }

  v12 = type metadata accessor for ContextualTypedValue(0);
  v13 = *(*(v12 - 8) + 56);

  return v13(a1, 1, 1, v12);
}

uint64_t sub_26B96B57C(uint64_t a1, unint64_t a2)
{
  v4 = sub_26B9AAE74();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v33 = a1;
    v34 = a2;
    sub_26B9AAE64();
    sub_26B92C070();
    v9 = sub_26B9ACA54();
    result = (*(v5 + 8))(v7, v4);
    v11 = 0;
    v12 = *(v9 + 16);
    v13 = MEMORY[0x277D84F90];
LABEL_5:
    v14 = (v9 + 40 + 16 * v11);
    while (v12 != v11)
    {
      if (v11 >= *(v9 + 16))
      {
        __break(1u);
        return result;
      }

      ++v11;
      v16 = *(v14 - 1);
      v15 = *v14;
      v14 += 2;
      v17 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v17 = v16 & 0xFFFFFFFFFFFFLL;
      }

      if (v17)
      {

        result = swift_isUniquelyReferenced_nonNull_native();
        v33 = v13;
        v32[0] = a1;
        if ((result & 1) == 0)
        {
          result = sub_26B921238(0, *(v13 + 16) + 1, 1);
          v13 = v33;
        }

        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          result = sub_26B921238((v18 > 1), v19 + 1, 1);
          v13 = v33;
        }

        *(v13 + 16) = v19 + 1;
        v20 = v13 + 16 * v19;
        *(v20 + 32) = v16;
        *(v20 + 40) = v15;
        a1 = v32[0];
        goto LABEL_5;
      }
    }

    sub_26B92B6FC(a1, a2);
    if (v21 && (v22 = sub_26B9AC474(), , (v22 & 1) != 0))
    {
      v23 = 0xE100000000000000;
      v24 = 32;
    }

    else
    {
      v24 = 0;
      v23 = 0xE000000000000000;
    }

    sub_26B92B67C(a1, a2);
    if (v25 && (v26 = sub_26B9AC474(), , (v26 & 1) != 0))
    {
      v27 = 0xE100000000000000;
      v28 = 32;
    }

    else
    {
      v28 = 0;
      v27 = 0xE000000000000000;
    }

    v33 = v24;
    v34 = v23;
    v32[1] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426788, &qword_26B9B2A70);
    sub_26B8F7938(&qword_280426790, &qword_280426788, &qword_26B9B2A70, MEMORY[0x277D83958]);
    v29 = sub_26B9AC484();
    v31 = v30;

    MEMORY[0x26D686470](v29, v31);

    MEMORY[0x26D686470](v28, v27);

    return v33;
  }

  else
  {
  }

  return a1;
}

uint64_t sub_26B96B8B0()
{
  sub_26B960838(v0 + OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_config, type metadata accessor for TypedValueResultBuilder.Config);
  v1 = OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_typedValue;
  v2 = sub_26B9ABE84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_26B96B934()
{
  sub_26B960838(v0 + OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_config, type metadata accessor for TypedValueResultBuilder.Config);
  v1 = OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_typedValue;
  v2 = sub_26B9ABE84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_26B96B9F4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_26B9AB104();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v5 = sub_26B9ABE14();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426AC8, &qword_26B9B3CD0);
  v3[13] = swift_task_alloc();
  v6 = sub_26B9AB414();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v7 = sub_26B9ABDE4();
  v3[18] = v7;
  v3[19] = *(v7 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = type metadata accessor for TypedValueResultBuilder.Config(0);
  v3[23] = swift_task_alloc();
  v8 = sub_26B9ABE84();
  v3[24] = v8;
  v3[25] = *(v8 - 8);
  v3[26] = swift_task_alloc();
  v9 = sub_26B9ABDA4();
  v3[27] = v9;
  v3[28] = *(v9 - 8);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v10 = sub_26B9ABE44();
  v3[31] = v10;
  v3[32] = *(v10 - 8);
  v3[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B96BD84, 0, 0);
}

uint64_t sub_26B96BD84()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  (*(v2 + 16))(v1, v0[2], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x277D72988])
  {
    v5 = v0[33];
    v7 = v0[25];
    v6 = v0[26];
    v9 = v0[23];
    v8 = v0[24];
    v11 = v0[3];
    v10 = v0[4];
    (*(v0[32] + 96))(v5, v0[31]);
    LOBYTE(v5) = *v5;
    type metadata accessor for BoolTypedValueResultBuilder(0);
    (*(v7 + 16))(v6, v10, v8);
    sub_26B95C6A0(v11, v9);
    v96 = sub_26B9629B0(v5, v6, v9);
    goto LABEL_8;
  }

  if (v4 == *MEMORY[0x277D72980])
  {
    v12 = v0[33];
    v14 = v0[25];
    v13 = v0[26];
    v15 = v0[23];
    v17 = v0[7];
    v16 = v0[8];
    v19 = v0[5];
    v18 = v0[6];
    v20 = v0[4];
    v93 = v0[3];
    v97 = v0[24];
    (*(v0[32] + 96))(v12, v0[31]);
    (*(v18 + 32))(v16, v12, v19);
    type metadata accessor for URLTypedValueResultBuilder(0);
    (*(v18 + 16))(v17, v16, v19);
    (*(v14 + 16))(v13, v20, v97);
    sub_26B95C6A0(v93, v15);
    v21 = sub_26B964234(v17, v13, v15);
LABEL_7:
    v96 = v21;
    (*(v18 + 8))(v16, v19);
    goto LABEL_8;
  }

  if (v4 == *MEMORY[0x277D729B0])
  {
    v22 = v0[33];
    v24 = v0[25];
    v23 = v0[26];
    v25 = v0[23];
    v26 = v0[11];
    v16 = v0[12];
    v19 = v0[9];
    v18 = v0[10];
    v27 = v0[4];
    v94 = v0[3];
    v98 = v0[24];
    (*(v0[32] + 96))(v22, v0[31]);
    (*(v18 + 32))(v16, v22, v19);
    type metadata accessor for PersonTypedValueResultBuilder(0);
    (*(v18 + 16))(v26, v16, v19);
    (*(v24 + 16))(v23, v27, v98);
    sub_26B95C6A0(v94, v25);
    v21 = sub_26B961B74(v26, v23, v25);
    goto LABEL_7;
  }

  if (v4 == *MEMORY[0x277D72998])
  {
    v30 = v0[33];
    v31 = v0[21];
    v32 = v0[18];
    v33 = v0[19];
    (*(v0[32] + 96))(v30, v0[31]);
    (*(v33 + 32))(v31, v30, v32);
    sub_26B9AB3E4();
    v34 = sub_26B9ABDD4();
    v35 = [v34 typeIdentifier];

    if (v35)
    {
      v36 = v0[14];
      v37 = v0[15];
      v38 = v0[13];
      sub_26B9AC504();

      sub_26B9AB424();
      if ((*(v37 + 48))(v38, 1, v36) == 1)
      {
        sub_26B8EACD8(v0[13], &qword_280426AC8, &qword_26B9B3CD0);
      }

      else
      {
        v54 = v0[17];
        v55 = v0[14];
        v56 = v0[15];
        v57 = v0[13];
        (*(v56 + 8))(v54, v55);
        (*(v56 + 32))(v54, v57, v55);
      }
    }

    v58 = v0[3];
    v59 = v58 + *(v0[22] + 28);
    if (*(v59 + 8) == 1 && (*v59 & 1) == 0 && (v60 = v0[16], v61 = v0[14], v62 = v0[15], sub_26B9AB3D4(), v63 = sub_26B9AB3F4(), v64 = *(v62 + 8), v64(v60, v61), v58 = v0[3], (v63 & 1) != 0))
    {
      v65 = v0[25];
      v85 = v0[26];
      v87 = v0[24];
      v67 = v0[20];
      v66 = v0[21];
      v100 = v0[3];
      v69 = v0[18];
      v68 = v0[19];
      v90 = v0[23];
      v70 = v0[16];
      v71 = v0[15];
      v81 = v0[14];
      v82 = v0[17];
      v83 = v0[4];
      type metadata accessor for ImageFileTypedValueResultBuilder(0);
      (*(v68 + 16))(v67, v66, v69);
      (*(v71 + 16))(v70, v82, v81);
      (*(v65 + 16))(v85, v83, v87);
      sub_26B95C6A0(v100, v90);
      v96 = sub_26B96132C(v67, v70, v85, v90);
      v64(v82, v81);
      (*(v68 + 8))(v66, v69);
    }

    else
    {
      v72 = v0[25];
      v86 = v0[26];
      v88 = v0[24];
      v73 = v0[20];
      v74 = v0[21];
      v101 = v58;
      v76 = v0[18];
      v75 = v0[19];
      v91 = v0[23];
      v78 = v0[16];
      v77 = v0[17];
      v80 = v0[14];
      v79 = v0[15];
      v84 = v0[4];
      type metadata accessor for FileTypedValueResultBuilder(0);
      (*(v75 + 16))(v73, v74, v76);
      (*(v79 + 16))(v78, v77, v80);
      (*(v72 + 16))(v86, v84, v88);
      sub_26B95C6A0(v101, v91);
      v96 = sub_26B95FE74(v73, v78, v86, v91);
      (*(v79 + 8))(v77, v80);
      (*(v75 + 8))(v74, v76);
    }
  }

  else
  {
    v40 = v0[32];
    v39 = v0[33];
    v41 = v0[31];
    if (v4 == *MEMORY[0x277D72970])
    {
      v42 = v0[30];
      v43 = v0[27];
      v44 = v0[28];
      v45 = v0[25];
      v46 = v0[26];
      v47 = v0[23];
      v89 = v0[29];
      v92 = v0[4];
      v95 = v0[24];
      v99 = v0[3];
      (*(v40 + 96))(v39, v41);
      (*(v44 + 32))(v42, v39, v43);
      type metadata accessor for AppTypedValueResultBuilder(0);
      (*(v44 + 16))(v89, v42, v43);
      (*(v45 + 16))(v46, v92, v95);
      sub_26B95C6A0(v99, v47);
      v96 = sub_26B95E6BC(v89, v46, v47);
      (*(v44 + 8))(v42, v43);
    }

    else
    {
      v49 = v0[25];
      v48 = v0[26];
      v51 = v0[23];
      v50 = v0[24];
      v53 = v0[3];
      v52 = v0[4];
      type metadata accessor for PrimitiveTypedValueResultBuilder(0);
      (*(v49 + 16))(v48, v52, v50);
      sub_26B95C6A0(v53, v51);
      v96 = sub_26B962840(v48, v51);
      (*(v40 + 8))(v39, v41);
    }
  }

LABEL_8:

  v28 = v0[1];

  return v28(v96);
}

BOOL sub_26B96C608(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_26B9ABF24();
    ++v2;
    sub_26B96CDAC(&qword_2804262F8, MEMORY[0x277D72D58], MEMORY[0x277D72D70]);
  }

  while ((sub_26B9AC494() & 1) == 0);
  return v3 != v4;
}

uint64_t (*sub_26B96C714(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x26D686B00](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = sub_26B9AAAE4();
LABEL_5:
    *v3 = v4;
    return sub_26B96C794;
  }

  __break(1u);
  return result;
}

id sub_26B96C7BC()
{
  v0 = sub_26B9AB1F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277D4C860]) init];
  v5 = sub_26B9AC4C4();
  [v4 setTypeIdentifier_];

  sub_26B9AA884();
  sub_26B9AB1C4();
  (*(v1 + 8))(v3, v0);
  v6 = sub_26B9AC4C4();

  [v4 setInstanceIdentifier_];

  return v4;
}

uint64_t sub_26B96C918(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26B922394(result, a2);
  }

  return result;
}

unint64_t sub_26B96C930()
{
  result = qword_280426AF0;
  if (!qword_280426AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426AF0);
  }

  return result;
}

uint64_t sub_26B96C98C(uint64_t a1)
{
  result = type metadata accessor for TypedValueResultBuilder.Config(319);
  if (v2 <= 0x3F)
  {
    result = sub_26B9ABE84();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for TypedValueResultBuilder.PresentationKind(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TypedValueResultBuilder.PresentationKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_26B96CB00(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_26B96CB18(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

void sub_26B96CB78(uint64_t a1)
{
  sub_26B96CCF4(319, &qword_2804269D0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_26B96CC78(319, &qword_280426AF8, MEMORY[0x277D72238]);
    if (v2 <= 0x3F)
    {
      sub_26B96CC78(319, &qword_280426B00, MEMORY[0x277D73148]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26B96CC78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26B9ACA34();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26B96CCF4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_26B96CD44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26B96CDAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26B96CE7C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x88))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_26B96CF7C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x277D85000] & *v1) + 0x100))(KeyPath);

  v4[5] = OBJC_IVAR____TtC17SpotlightUIShared34PrimitiveTypedValueResultViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_26B96D628(&qword_280426B28, type metadata accessor for PrimitiveTypedValueResultViewModel, &unk_26B9B3F88);
  sub_26B9AB264();

  v4[7] = sub_26B96CE08(v4);
  return sub_26B96D0DC;
}

uint64_t sub_26B96D168@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*((*MEMORY[0x277D85000] & *v1) + 0x100))();

  v3 = OBJC_IVAR____TtC17SpotlightUIShared34PrimitiveTypedValueResultViewModel__text;
  swift_beginAccess();
  v4 = sub_26B9AAEE4();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_26B96D298(uint64_t a1, void **a2)
{
  v4 = sub_26B9AAEE4();
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*((*MEMORY[0x277D85000] & **a2) + 0xC0))(v6);
}

uint64_t sub_26B96D394(char *a1)
{
  v2 = v1;
  v4 = sub_26B9AAEE4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC17SpotlightUIShared34PrimitiveTypedValueResultViewModel__text;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, &v2[v8], v4);
  sub_26B96D628(&qword_280426B30, MEMORY[0x277CC8C40], MEMORY[0x277CC8C58]);
  v15 = a1;
  LOBYTE(a1) = sub_26B9AC494();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v15, v4);
    swift_beginAccess();
    (*(v5 + 40))(&v2[v8], v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v12 = MEMORY[0x28223BE20](KeyPath);
    v13 = v15;
    *(&v15 - 2) = v2;
    *(&v15 - 1) = v13;
    (*((*MEMORY[0x277D85000] & *v2) + 0x108))(v12, sub_26B96D784);
  }

  return (v10)(v15, v4);
}

uint64_t sub_26B96D628(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26B96D670(uint64_t a1, uint64_t a2)
{
  v4 = sub_26B9AAEE4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a2, v4);
  v8 = OBJC_IVAR____TtC17SpotlightUIShared34PrimitiveTypedValueResultViewModel__text;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v8, v7, v4);
  return swift_endAccess();
}

uint64_t (*sub_26B96D7B0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x277D85000] & *v1) + 0x100))(KeyPath);

  v4[5] = OBJC_IVAR____TtC17SpotlightUIShared34PrimitiveTypedValueResultViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_26B96D628(&qword_280426B28, type metadata accessor for PrimitiveTypedValueResultViewModel, &unk_26B9B3F88);
  sub_26B9AB264();

  v4[7] = sub_26B96D108(v4);
  return sub_26B96D910;
}

uint64_t sub_26B96D990(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  (*((*MEMORY[0x277D85000] & *v2) + 0x100))();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t sub_26B96DA28@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xE8))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_26B96DB08(char a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1 & 1;
  v7 = *a2;
  result = swift_beginAccess();
  if (*(v4 + v7) == v6)
  {
    *(v4 + v7) = v6;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x28223BE20](KeyPath);
    v11 = v4;
    v12 = v6;
    (*((*MEMORY[0x277D85000] & *v4) + 0x108))(v10, a4);
  }

  return result;
}

uint64_t sub_26B96DC34(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  result = swift_beginAccess();
  *(v2 + v4) = v3;
  return result;
}

uint64_t (*sub_26B96DC8C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x277D85000] & *v1) + 0x100))(KeyPath);

  v4[5] = OBJC_IVAR____TtC17SpotlightUIShared34PrimitiveTypedValueResultViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_26B96D628(&qword_280426B28, type metadata accessor for PrimitiveTypedValueResultViewModel, &unk_26B9B3F88);
  sub_26B9AB264();

  v4[7] = sub_26B96D91C(v4);
  return sub_26B96DDEC;
}

void sub_26B96DDF8(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  sub_26B9AB254();

  free(v3);
}

id _s17SpotlightUIShared36PrimitiveTypedValueResultHostingViewCACycfC_0()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_26B96E1E4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PrimitiveTypedValueResultViewModel(0);
  result = sub_26B9AB594();
  *a2 = result;
  return result;
}

__n128 PrimitiveTypedValueResultView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PrimitiveTypedValueResultView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8);
  v8 = (*((*MEMORY[0x277D85000] & **(v1 + 8)) + 0x88))(v7);
  sub_26B96E44C(v2, &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_26B96E4B0(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426B48, &qword_26B9B3EE0);
  sub_26B8F7938(&qword_280426B50, &qword_280426B48, &qword_26B9B3EE0, MEMORY[0x277CE1198]);
  ToolResultHighlightContainer.init(isSelected:content:)(v8 & 1, sub_26B96E514, v10, &v13);
  result = v14;
  *a1 = v13;
  *(a1 + 8) = result;
  *(a1 + 24) = 256;
  return result;
}

uint64_t sub_26B96E3F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_26B9AB6B4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426C40, &qword_26B9B4070);
  return sub_26B96E518(a1, a2 + *(v4 + 44));
}

uint64_t sub_26B96E44C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrimitiveTypedValueResultView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B96E4B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrimitiveTypedValueResultView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B96E518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426C48, &qword_26B9B4078);
  v3 = MEMORY[0x28223BE20](v42);
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v39 = v37 - v6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426C50, &qword_26B9B4080);
  MEMORY[0x28223BE20](v40);
  v41 = v37 - v7;
  v8 = type metadata accessor for PrimitiveTypedValueResultView(0);
  v38 = *(v8 - 8);
  v9 = *(v38 + 64);
  MEMORY[0x28223BE20](v8);
  v10 = sub_26B9AC3D4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426C58, &qword_26B9B4088);
  v14 = MEMORY[0x28223BE20](v44);
  v16 = v37 - v15;
  v17 = a1;
  if ((*((*MEMORY[0x277D85000] & **(a1 + 8)) + 0xE8))(v14))
  {
    v18 = *(v11 + 16);
    v19 = a1 + *(v8 + 24);
    v37[1] = v13;
    v18(v13, v19, v10);
    v45 = *(a1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426B40, &qword_26B9B3ED8);
    sub_26B8F7938(&qword_280426C90, &qword_280426B40, &qword_26B9B3ED8, MEMORY[0x277CBCE20]);
    v39 = sub_26B9AB5D4();
    sub_26B96E44C(a1, v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v20 = (*(v38 + 80) + 16) & ~*(v38 + 80);
    v21 = swift_allocObject();
    sub_26B96E4B0(v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426C98, &qword_26B9B40A8);
    v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280426CA0, &qword_26B9B40B0);
    v23 = sub_26B9719B8(&qword_280426CA8, &qword_280426CA0, &qword_26B9B40B0, sub_26B971A3C);
    v45 = v22;
    v46 = v23;
    swift_getOpaqueTypeConformance2();
    sub_26B9AC3B4();
    sub_26B96E44C(v17, v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v24 = swift_allocObject();
    sub_26B96E4B0(v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v20);
    v25 = &v16[*(v44 + 36)];
    *v25 = sub_26B971BAC;
    *(v25 + 1) = v24;
    *(v25 + 2) = 0;
    *(v25 + 3) = 0;
    v26 = &qword_280426C58;
    v27 = &qword_26B9B4088;
    sub_26B9236E8(v16, v41, &qword_280426C58, &qword_26B9B4088);
    swift_storeEnumTagMultiPayload();
    sub_26B9718FC();
    sub_26B8F7938(&qword_280426C88, &qword_280426C48, &qword_26B9B4078, MEMORY[0x277CDD828]);
    sub_26B9AB6C4();
    v28 = v16;
  }

  else
  {
    v38 = a1;
    v29 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426C60, &qword_26B9B4090);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26B9AF560;
    v31 = sub_26B9AB6D4();
    *(inited + 32) = v31;
    v32 = sub_26B9AB6F4();
    *(inited + 33) = v32;
    v33 = sub_26B9AB6E4();
    sub_26B9AB6E4();
    if (sub_26B9AB6E4() != v31)
    {
      v33 = sub_26B9AB6E4();
    }

    sub_26B9AB6E4();
    if (sub_26B9AB6E4() != v32)
    {
      v33 = sub_26B9AB6E4();
    }

    *v5 = v33;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426C68, &qword_26B9B4098);
    sub_26B96EBC4(v38, &v5[*(v34 + 44)]);
    v35 = v39;
    sub_26B8EDE60(v5, v39);
    v26 = &qword_280426C48;
    v27 = &qword_26B9B4078;
    sub_26B9236E8(v35, v29, &qword_280426C48, &qword_26B9B4078);
    swift_storeEnumTagMultiPayload();
    sub_26B9718FC();
    sub_26B8F7938(&qword_280426C88, &qword_280426C48, &qword_26B9B4078, MEMORY[0x277CDD828]);
    sub_26B9AB6C4();
    v28 = v35;
  }

  return sub_26B8EACD8(v28, v26, v27);
}

uint64_t sub_26B96EBC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = type metadata accessor for PrimitiveTypedValueResultView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v33[1] = v6;
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26B9AC3D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33[2] = v11;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426C58, &qword_26B9B4088) - 8;
  v12 = MEMORY[0x28223BE20](v36);
  v37 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v33 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426CF8, &qword_26B9B4138);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v35 = v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v34 = v33 - v19;
  v20 = sub_26B96F0CC(v33 - v19);
  (*(v9 + 16))(v11, a1 + *(v4 + 32), v8, v20);
  v39 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426B40, &qword_26B9B3ED8);
  sub_26B8F7938(&qword_280426C90, &qword_280426B40, &qword_26B9B3ED8, MEMORY[0x277CBCE20]);
  v33[0] = sub_26B9AB5D4();
  sub_26B96E44C(a1, v7);
  v21 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v22 = swift_allocObject();
  sub_26B96E4B0(v7, v22 + v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426C98, &qword_26B9B40A8);
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280426CA0, &qword_26B9B40B0);
  v24 = sub_26B9719B8(&qword_280426CA8, &qword_280426CA0, &qword_26B9B40B0, sub_26B971A3C);
  v39 = v23;
  v40 = v24;
  swift_getOpaqueTypeConformance2();
  sub_26B9AC3B4();
  sub_26B96E44C(a1, v7);
  v25 = swift_allocObject();
  sub_26B96E4B0(v7, v25 + v21);
  v26 = v35;
  v27 = &v15[*(v36 + 44)];
  *v27 = sub_26B971C90;
  *(v27 + 1) = v25;
  *(v27 + 2) = 0;
  *(v27 + 3) = 0;
  v28 = v34;
  sub_26B9236E8(v34, v26, &qword_280426CF8, &qword_26B9B4138);
  v29 = v37;
  sub_26B9236E8(v15, v37, &qword_280426C58, &qword_26B9B4088);
  v30 = v38;
  sub_26B9236E8(v26, v38, &qword_280426CF8, &qword_26B9B4138);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D00, &qword_26B9B4140);
  sub_26B9236E8(v29, v30 + *(v31 + 48), &qword_280426C58, &qword_26B9B4088);
  sub_26B8EACD8(v15, &qword_280426C58, &qword_26B9B4088);
  sub_26B8EACD8(v28, &qword_280426CF8, &qword_26B9B4138);
  sub_26B8EACD8(v29, &qword_280426C58, &qword_26B9B4088);
  return sub_26B8EACD8(v26, &qword_280426CF8, &qword_26B9B4138);
}

__n128 sub_26B96F0CC@<Q0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = sub_26B9AAEE4();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D08, &qword_26B9B4148);
  v27 = *(v3 - 8);
  v28 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v26 = &v26 - v5;
  (*((*MEMORY[0x277D85000] & **(v1 + 8)) + 0xB8))(v4);
  v6 = sub_26B9AB764();
  v8 = v7;
  v10 = v9;
  sub_26B9AB744();
  v11 = sub_26B9AB754();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_26B971BB0(v6, v8, v10 & 1);

  KeyPath = swift_getKeyPath();
  v19 = sub_26B9AB714();
  v32 = v15 & 1;
  v31 = 0;
  v30 = 1;
  *&v33 = v11;
  *(&v33 + 1) = v13;
  LOBYTE(v34) = v15 & 1;
  *(&v34 + 1) = v17;
  *&v35 = KeyPath;
  *(&v35 + 1) = 1;
  v36.n128_u8[0] = 0;
  v36.n128_u8[8] = v19;
  v37 = 0u;
  v38 = 0u;
  LOBYTE(v39) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D10, &unk_26B9B4150);
  sub_26B9719B8(&qword_280426D18, &qword_280426D10, &unk_26B9B4150, sub_26B971AF4);
  v20 = v26;
  sub_26B9AB774();
  v40[4] = v37;
  v40[5] = v38;
  v41 = v39;
  v40[0] = v33;
  v40[1] = v34;
  v40[2] = v35;
  v40[3] = v36;
  sub_26B8EACD8(v40, &qword_280426D10, &unk_26B9B4150);
  sub_26B9AB844();
  sub_26B9AB654();
  v21 = v29;
  (*(v27 + 32))(v29, v20, v28);
  v22 = v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426CF8, &qword_26B9B4138) + 36);
  v23 = v38;
  *(v22 + 64) = v37;
  *(v22 + 80) = v23;
  *(v22 + 96) = v39;
  v24 = v34;
  *v22 = v33;
  *(v22 + 16) = v24;
  result = v36;
  *(v22 + 32) = v35;
  *(v22 + 48) = result;
  return result;
}

uint64_t sub_26B96F400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = sub_26B9AAEE4();
  v4 = MEMORY[0x28223BE20](v3 - 8);
  (*((*MEMORY[0x277D85000] & **(a1 + 8)) + 0xB8))(v4);
  v5 = sub_26B9AB764();
  v7 = v6;
  v9 = v8;
  type metadata accessor for PrimitiveTypedValueResultView(0);
  v10 = sub_26B9AB754();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_26B971BB0(v5, v7, v9 & 1);

  KeyPath = swift_getKeyPath();
  v18 = swift_getKeyPath();
  LOBYTE(v31[0]) = v14 & 1;
  LOBYTE(v22) = 1;
  v19 = sub_26B9AB714();
  v30 = 1;
  *&v22 = v10;
  *(&v22 + 1) = v12;
  LOBYTE(v23) = v14 & 1;
  *(&v23 + 1) = v16;
  v24 = KeyPath;
  LOBYTE(v25) = 1;
  *(&v25 + 1) = v18;
  LOBYTE(v26) = 0;
  BYTE8(v26) = v19;
  v27 = 0u;
  v28 = 0u;
  v29 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426CA0, &qword_26B9B40B0);
  sub_26B9719B8(&qword_280426CA8, &qword_280426CA0, &qword_26B9B40B0, sub_26B971A3C);
  sub_26B9AB774();
  v31[4] = v26;
  v31[5] = v27;
  v31[6] = v28;
  v32 = v29;
  v31[0] = v22;
  v31[1] = v23;
  v31[2] = v24;
  v31[3] = v25;
  return sub_26B8EACD8(v31, &qword_280426CA0, &qword_26B9B40B0);
}

uint64_t sub_26B96F644()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426B40, &qword_26B9B3ED8);
  sub_26B8F7938(&qword_280426CF0, &qword_280426B40, &qword_26B9B3ED8, MEMORY[0x277CBCE18]);
  return sub_26B9AB5C4();
}

__n128 sub_26B96F6E4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1 - 8);
  v8 = (*((*MEMORY[0x277D85000] & **(v2 + 8)) + 0x88))(v7);
  sub_26B96E44C(v3, &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_26B96E4B0(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426B48, &qword_26B9B3EE0);
  sub_26B8F7938(&qword_280426B50, &qword_280426B48, &qword_26B9B3EE0, MEMORY[0x277CE1198]);
  ToolResultHighlightContainer.init(isSelected:content:)(v8 & 1, sub_26B971C98, v10, &v13);
  result = v14;
  *a2 = v13;
  *(a2 + 8) = result;
  *(a2 + 24) = 256;
  return result;
}

uint64_t sub_26B96F8D4()
{
  v1 = OBJC_IVAR____TtC17SpotlightUIShared36PrimitiveTypedValueResultHostingView_isSelected;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_26B96F9D0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17SpotlightUIShared36PrimitiveTypedValueResultHostingView_isSelected;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = *(v1 + OBJC_IVAR____TtC17SpotlightUIShared36PrimitiveTypedValueResultHostingView_viewModel);
  v5 = *((*MEMORY[0x277D85000] & *v4) + 0x90);
  v6 = v4;
  v5(a1);
}

uint64_t sub_26B96FA70@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x70))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_26B96FB28(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC17SpotlightUIShared36PrimitiveTypedValueResultHostingView_isSelected;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_26B96FBB0;
}

void sub_26B96FBB0(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC17SpotlightUIShared36PrimitiveTypedValueResultHostingView_viewModel);
    v6 = *(v4 + v3[4]);
    v7 = *((*MEMORY[0x277D85000] & *v5) + 0x90);
    v8 = v5;
    v7(v6);
  }

  free(v3);
}

id PrimitiveTypedValueResultHostingView.init()()
{
  v0[OBJC_IVAR____TtC17SpotlightUIShared36PrimitiveTypedValueResultHostingView_isSelected] = 0;
  *&v0[OBJC_IVAR____TtC17SpotlightUIShared36PrimitiveTypedValueResultHostingView_hostingView] = 0;
  v1 = OBJC_IVAR____TtC17SpotlightUIShared36PrimitiveTypedValueResultHostingView_currentTypedValue;
  v2 = sub_26B9ABE44();
  v3 = swift_allocBox();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D729A0], v2);
  *&v0[v1] = v3;
  v5 = *MEMORY[0x277D72A58];
  v6 = sub_26B9ABE84();
  (*(*(v6 - 8) + 104))(&v0[v1], v5, v6);
  v7 = OBJC_IVAR____TtC17SpotlightUIShared36PrimitiveTypedValueResultHostingView_viewModel;
  *&v0[v7] = [objc_allocWithZone(type metadata accessor for PrimitiveTypedValueResultViewModel(0)) init];
  v10.receiver = v0;
  v10.super_class = type metadata accessor for PrimitiveTypedValueResultHostingView(0);
  v8 = objc_msgSendSuper2(&v10, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v8 setHorizontalAlignment_];
  [v8 setVerticalAlignment_];

  return v8;
}

unint64_t sub_26B96FE78(uint64_t a1)
{
  v2 = v1;
  v4 = sub_26B9AB824();
  MEMORY[0x28223BE20](v4 - 8);
  v93 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for PrimitiveTypedValueResultView(0);
  MEMORY[0x28223BE20](v92);
  v94 = (&v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v110 = sub_26B9AAED4();
  v99 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v8 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426B70, &qword_26B9B3EF0);
  MEMORY[0x28223BE20](v98);
  v10 = &v83 - v9;
  v11 = sub_26B9AAEB4();
  v101 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v97 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v100 = &v83 - v14;
  v15 = sub_26B9AAF44();
  MEMORY[0x28223BE20](v15 - 8);
  v89 = (&v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v88 = sub_26B9ABE44();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v86 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_26B9AAEE4();
  v107 = *(v18 - 8);
  v108 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v96 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v106 = &v83 - v21;
  v22 = sub_26B9ABE84();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v83 - v27;
  v29 = OBJC_IVAR____TtC17SpotlightUIShared36PrimitiveTypedValueResultHostingView_currentTypedValue;
  swift_beginAccess();
  v30 = *(v23 + 16);
  v90 = v29;
  v102 = v30;
  v103 = v23 + 16;
  v30(v28, v2 + v29, v22);
  sub_26B96D628(&qword_280426B78, MEMORY[0x277D72A78], MEMORY[0x277D72A90]);
  v109 = a1;
  LOBYTE(a1) = sub_26B9AC494();
  v104 = v23;
  v31 = *(v23 + 8);
  v91 = v28;
  v105 = v22;
  result = v31(v28, v22);
  if (a1)
  {
    return result;
  }

  v33 = OBJC_IVAR____TtC17SpotlightUIShared36PrimitiveTypedValueResultHostingView_hostingView;
  v95 = v2;
  v34 = *(v2 + OBJC_IVAR____TtC17SpotlightUIShared36PrimitiveTypedValueResultHostingView_hostingView);
  if (v34)
  {
    [v34 removeFromSuperview];
  }

  v35 = v105;
  v102(v26, v109, v105);
  v36 = v104;
  v37 = (*(v104 + 88))(v26, v35) == *MEMORY[0x277D72A58];
  v38 = v106;
  v84 = v33;
  v85 = v8;
  if (v37)
  {
    (*(v36 + 96))(v26, v35);
    v39 = swift_projectBox();
    v40 = v87;
    v41 = v86;
    v42 = v88;
    (*(v87 + 16))(v86, v39, v88);
    if ((*(v40 + 88))(v41, v42) == *MEMORY[0x277D72968])
    {
      (*(v40 + 96))(v41, v42);
      (*(v107 + 32))(v38, v41, v108);

      goto LABEL_10;
    }

    (*(v40 + 8))(v41, v42);
  }

  else
  {
    v31(v26, v35);
  }

  sub_26B968190();
  sub_26B9AAF34();
  sub_26B9AAEF4();
LABEL_10:
  v43 = v95;
  v44 = v38;
  v45 = OBJC_IVAR____TtC17SpotlightUIShared36PrimitiveTypedValueResultHostingView_viewModel;
  v46 = *(v95 + OBJC_IVAR____TtC17SpotlightUIShared36PrimitiveTypedValueResultHostingView_viewModel);
  v47 = v96;
  (*(v107 + 16))(v96, v44, v108);
  v48 = *((*MEMORY[0x277D85000] & *v46) + 0xC0);
  v49 = v46;
  v48(v47);

  v96 = v45;
  v89 = *(v43 + v45);
  v50 = v100;
  sub_26B9AAEA4();
  (*(v101 + 16))(v97, v50, v11);
  v51 = MEMORY[0x277CC8B30];
  sub_26B96D628(&qword_280426B80, MEMORY[0x277CC8B30], MEMORY[0x277CC8B40]);
  sub_26B9AC644();
  sub_26B96D628(&qword_280426B88, v51, MEMORY[0x277CC8B48]);
  v52 = (v99 + 8);
  v53 = v85;
  while (1)
  {
    sub_26B9AC8E4();
    sub_26B96D628(&qword_280426B90, MEMORY[0x277CC8C20], MEMORY[0x277CC8C30]);
    v54 = v110;
    v55 = sub_26B9AC494();
    (*v52)(v53, v54);
    if (v55)
    {
LABEL_19:
      sub_26B8EACD8(v10, &qword_280426B70, &qword_26B9B3EF0);
      (*(v101 + 8))(v100, v11);
      v62 = v89;
      v63 = MEMORY[0x277D85000];
      (*((*MEMORY[0x277D85000] & *v89) + 0xF0))((v55 & 1) == 0);

      v64 = v95;
      v65 = v96;
      v66 = *((*v63 & *v95) + 0x70);
      v67 = *&v96[v95];
      v68 = v66();
      (*((*v63 & *v67) + 0x90))(v68 & 1);

      v69 = *&v65[v64];
      type metadata accessor for PrimitiveTypedValueResultViewModel(0);
      sub_26B96D628(&qword_280426B38, type metadata accessor for PrimitiveTypedValueResultViewModel, &unk_26B9B3F00);
      v70 = v69;
      v71 = sub_26B9AB5F4();
      v72 = v94;
      *v94 = v71;
      v72[1] = v73;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426B40, &qword_26B9B3ED8);
      swift_allocObject();
      v72[2] = sub_26B9AB5A4();
      v74 = v92;
      sub_26B9AB814();
      sub_26B9AC3C4();
      v75 = *(v74 + 28);
      *(v72 + v75) = sub_26B9AB734();
      v76 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426B98, &qword_26B9B3EF8));
      v77 = sub_26B9AB614();
      [v64 addArrangedSubview_];
      v78 = *(v64 + v84);
      *(v64 + v84) = v77;
      v79 = v77;

      v80 = v91;
      v81 = v105;
      v102(v91, v109, v105);
      v82 = v90;
      swift_beginAccess();
      (*(v104 + 40))(v64 + v82, v80, v81);
      swift_endAccess();
      [v64 invalidateIntrinsicContentSize];

      return (*(v107 + 8))(v106, v108);
    }

    v56 = sub_26B9AC904();
    v59 = *v57;
    v58 = v57[1];

    v56(v111, 0);
    sub_26B9AC8F4();
    result = sub_26B970DDC(v59, v58);
    if ((result & 0x100000000) != 0)
    {
      break;
    }

    v60 = result;

    v61 = (v60 - 14) <= 0xFFFFFFFB && (v60 - 8232) >= 2;
    if (!v61 || v60 == 133)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

id PrimitiveTypedValueResultHostingView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id PrimitiveTypedValueResultHostingView.__allocating_init(arrangedSubviews:)(uint64_t a1)
{
  if (a1)
  {
    sub_26B97131C();
    v2 = sub_26B9AC6E4();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithArrangedSubviews_];

  return v3;
}

id sub_26B970C58(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_26B970D24@<X0>(uint64_t a1@<X8>)
{
  result = sub_26B9AB684();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_26B970D88@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26B9AB664();
  *a1 = result;
  return result;
}

unint64_t sub_26B970DDC(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_26B970F2C(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_26B9ACBE4();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_26B9ACC54() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_26B970F2C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_26B970FC4(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_26B971038(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_26B970FC4(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_26B97115C(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_26B971038(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_26B9ACC54();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

unint64_t sub_26B97115C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_26B9AC5D4();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x26D686490](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void sub_26B9711D8()
{
  *(v0 + OBJC_IVAR____TtC17SpotlightUIShared36PrimitiveTypedValueResultHostingView_isSelected) = 0;
  *(v0 + OBJC_IVAR____TtC17SpotlightUIShared36PrimitiveTypedValueResultHostingView_hostingView) = 0;
  v1 = OBJC_IVAR____TtC17SpotlightUIShared36PrimitiveTypedValueResultHostingView_currentTypedValue;
  v2 = sub_26B9ABE44();
  v3 = swift_allocBox();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D729A0], v2);
  *(v0 + v1) = v3;
  v5 = *MEMORY[0x277D72A58];
  v6 = sub_26B9ABE84();
  (*(*(v6 - 8) + 104))(v0 + v1, v5, v6);
  v7 = OBJC_IVAR____TtC17SpotlightUIShared36PrimitiveTypedValueResultHostingView_viewModel;
  *(v0 + v7) = [objc_allocWithZone(type metadata accessor for PrimitiveTypedValueResultViewModel(0)) init];
  sub_26B9ACD24();
  __break(1u);
}

unint64_t sub_26B97131C()
{
  result = qword_280426BA0;
  if (!qword_280426BA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280426BA0);
  }

  return result;
}

uint64_t sub_26B971398(uint64_t a1)
{
  result = sub_26B9AAEE4();
  if (v2 <= 0x3F)
  {
    result = sub_26B9AB284();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_26B971498(uint64_t a1)
{
  sub_26B97153C(319);
  if (v1 <= 0x3F)
  {
    sub_26B9715D0();
    if (v2 <= 0x3F)
    {
      sub_26B9AC3D4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26B97153C(uint64_t a1)
{
  if (!qword_280426BA8)
  {
    type metadata accessor for PrimitiveTypedValueResultViewModel(255);
    sub_26B96D628(&qword_280426B38, type metadata accessor for PrimitiveTypedValueResultViewModel, &unk_26B9B3F00);
    v1 = sub_26B9AB604();
    if (!v2)
    {
      atomic_store(v1, &qword_280426BA8);
    }
  }
}

void sub_26B9715D0()
{
  if (!qword_280426BB0)
  {
    v0 = sub_26B9AB5B4();
    if (!v1)
    {
      atomic_store(v0, &qword_280426BB0);
    }
  }
}

uint64_t sub_26B97163C(uint64_t a1)
{
  result = sub_26B9ABE84();
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

unint64_t sub_26B9717D4()
{
  result = qword_280426C20;
  if (!qword_280426C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280426C28, &qword_26B9B4060);
    sub_26B8F7938(&qword_280426C30, &qword_280426C38, &qword_26B9B4068, &protocol conformance descriptor for ToolResultHighlightContainer<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426C20);
  }

  return result;
}

uint64_t sub_26B97188C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PrimitiveTypedValueResultView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_26B96E3F4(v4, a1);
}

unint64_t sub_26B9718FC()
{
  result = qword_280426C70;
  if (!qword_280426C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280426C58, &qword_26B9B4088);
    sub_26B8F7938(&qword_280426C78, &qword_280426C80, &qword_26B9B40A0, MEMORY[0x277D63B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426C70);
  }

  return result;
}

uint64_t sub_26B9719B8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26B971A3C()
{
  result = qword_280426CB0;
  if (!qword_280426CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280426CB8, &qword_26B9B40B8);
    sub_26B971AF4();
    sub_26B8F7938(&qword_280426CE0, &qword_280426CE8, &qword_26B9B40D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426CB0);
  }

  return result;
}

unint64_t sub_26B971AF4()
{
  result = qword_280426CC0;
  if (!qword_280426CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280426CC8, &qword_26B9B40C0);
    sub_26B8F7938(&qword_280426CD0, &qword_280426CD8, &qword_26B9B40C8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426CC0);
  }

  return result;
}

uint64_t sub_26B971BB0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_26B971BC0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PrimitiveTypedValueResultView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_26B96F400(v4, a1);
}

uint64_t sub_26B971C30()
{
  type metadata accessor for PrimitiveTypedValueResultView(0);

  return sub_26B96F644();
}

uint64_t ToolResultHighlightContainer.init(isSelected:content:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t ToolResultHighlightContainer.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v93 = a2;
  v78 = sub_26B9AB634() - 8;
  MEMORY[0x28223BE20](v78);
  v77 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D20, &qword_26B9B4160);
  MEMORY[0x28223BE20](v92);
  v91 = &v73 - v5;
  v75 = sub_26B9AB644();
  v6 = MEMORY[0x28223BE20](v75);
  v8 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v6);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280426D28, &qword_26B9B4168);
  v13 = sub_26B9AB624();
  v76 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v73 = &v73 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280426D30, &qword_26B9B4170);
  v15 = sub_26B9AB624();
  v80 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v94 = &v73 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280426D38, &qword_26B9B4178);
  v84 = v15;
  v17 = sub_26B9AB624();
  v85 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v79 = &v73 - v18;
  v87 = v19;
  v20 = sub_26B9AB624();
  v86 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v82 = &v73 - v21;
  v88 = v22;
  v90 = sub_26B9AB624();
  v89 = *(v90 - 8);
  v23 = MEMORY[0x28223BE20](v90);
  v81 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v83 = &v73 - v26;
  v74 = *v2;
  v2[1](v25);
  sub_26B9AB714();
  v27 = *(a1 + 24);
  sub_26B9AB7A4();
  (*(v10 + 8))(v12, v9);
  v28 = objc_opt_self();
  [v28 roundedItemCornerRadius];
  v30 = v29;
  v31 = v75;
  v32 = *(v75 + 20);
  v33 = *MEMORY[0x277CE0118];
  v34 = sub_26B9AB6A4();
  v35 = *(*(v34 - 8) + 104);
  v35(&v8[v32], v33, v34);
  *v8 = v30;
  *(v8 + 1) = v30;
  v36 = sub_26B8F7938(&qword_280426D40, &qword_280426D28, &qword_26B9B4168, MEMORY[0x277CE0728]);
  v103 = v27;
  v104 = v36;
  WitnessTable = swift_getWitnessTable();
  sub_26B97272C();
  v38 = v73;
  sub_26B9AB7E4();
  sub_26B9727E8(v8, MEMORY[0x277CDFC08]);
  v39 = v13;
  v40 = v77;
  (*(v76 + 8))(v38, v39);
  [v28 roundedItemCornerRadius];
  v42 = v41;
  v35(&v40[*(v31 + 20)], v33, v34);
  *v40 = v42;
  *(v40 + 1) = v42;
  [v28 selectionBorderWidth];
  *&v40[*(v78 + 28)] = -v43;
  if (v74 == 1)
  {
    v44 = sub_26B9AB7F4();
  }

  else
  {
    v44 = sub_26B9AB804();
  }

  v45 = v44;
  [v28 selectionBorderWidth];
  sub_26B9AB5E4();
  v46 = v91;
  sub_26B972784(v40, v91);
  v47 = v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D50, &qword_26B9B4180) + 36);
  v48 = v106;
  *v47 = v105;
  *(v47 + 16) = v48;
  *(v47 + 32) = v107;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D58, &qword_26B9B4188);
  *(v46 + *(v49 + 52)) = v45;
  *(v46 + *(v49 + 56)) = 256;
  v50 = sub_26B9AB834();
  v52 = v51;
  sub_26B9727E8(v40, MEMORY[0x277CDFBC8]);
  v53 = (v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D60, &qword_26B9B4190) + 36));
  *v53 = v50;
  v53[1] = v52;
  sub_26B9AB834();
  v54 = sub_26B8F7938(&qword_280426D68, &qword_280426D30, &qword_26B9B4170, MEMORY[0x277CDF4F0]);
  v101 = WitnessTable;
  v102 = v54;
  v55 = v84;
  v56 = swift_getWitnessTable();
  sub_26B8F7938(&qword_280426D70, &qword_280426D20, &qword_26B9B4160, MEMORY[0x277CDFB00]);
  v57 = v79;
  v58 = v94;
  sub_26B9AB7C4();
  sub_26B972848(v46);
  (*(v80 + 8))(v58, v55);
  sub_26B9AB704();
  v59 = sub_26B8F7938(&qword_280426D78, &qword_280426D38, &qword_26B9B4178, MEMORY[0x277CDFC88]);
  v99 = v56;
  v100 = v59;
  v60 = v87;
  v61 = swift_getWitnessTable();
  v62 = v82;
  sub_26B9AB7D4();
  (*(v85 + 8))(v57, v60);
  sub_26B9AB724();
  v63 = MEMORY[0x277CDF918];
  v97 = v61;
  v98 = MEMORY[0x277CDF918];
  v64 = v88;
  v65 = swift_getWitnessTable();
  v66 = v81;
  sub_26B9AB7D4();
  (*(v86 + 8))(v62, v64);
  v95 = v65;
  v96 = v63;
  v67 = v90;
  swift_getWitnessTable();
  v68 = v89;
  v69 = *(v89 + 16);
  v70 = v83;
  v69(v83, v66, v67);
  v71 = *(v68 + 8);
  v71(v66, v67);
  v69(v93, v70, v67);
  return (v71)(v70, v67);
}

unint64_t sub_26B97272C()
{
  result = qword_280426D48;
  if (!qword_280426D48)
  {
    sub_26B9AB644();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426D48);
  }

  return result;
}

uint64_t sub_26B972784(uint64_t a1, uint64_t a2)
{
  v4 = sub_26B9AB634();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B9727E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26B972848(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D20, &qword_26B9B4160);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26B9728F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *sub_26B97294C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26B9B1290;
  *(inited + 32) = swift_getKeyPath();
  v11 = sub_26B977774(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v12 = sub_26B972AD0(a1, v11, a2, a3, a4, v5);

  return v12;
}

uint64_t sub_26B972A3C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26B968190();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26B972A68(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_26B972AA4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[1];
  if (v3)
  {
    *a2 = *a1;
    a2[1] = v3;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0xE000000000000000;
  }
}

void *sub_26B972AD0(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D88, &qword_26B9B42F0);
  v77 = *(v13 - 8);
  MEMORY[0x28223BE20](v13 - 8);
  v75 = &v65 - v14;
  v15 = sub_26B9ABE84();
  v76 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (sub_26B9ACB44())
    {
      v66 = a5;
      v71 = a3;
      v72 = a4;
      v67 = v6;
      v68 = a6;
      v69 = v17;
      v18 = sub_26B9ACB44();
      v19 = sub_26B9779C0(MEMORY[0x277D84F90]);
      swift_unknownObjectRetain();
      sub_26B9ACB34();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D90, &qword_26B9B42F8);
      sub_26B9AC8B4();
      v20 = v79[2];
      v21 = v79[3];
      v22 = v79[4];
      v23 = v79[5];
      v24 = v79[6];
      goto LABEL_9;
    }

LABEL_41:
    v56 = a1;

    return v56;
  }

  v25 = *(a2 + 16);
  if (!v25)
  {
    goto LABEL_41;
  }

  v66 = a5;
  v71 = a3;
  v72 = a4;
  v67 = v6;
  v68 = a6;
  v69 = v17;
  v18 = v25;
  v19 = sub_26B9779C0(MEMORY[0x277D84F90]);
  v26 = -1 << *(a2 + 32);
  v21 = a2 + 56;
  v22 = ~v26;
  v27 = -v26;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  else
  {
    v28 = -1;
  }

  v24 = v28 & *(a2 + 56);

  v23 = 0;
  v20 = a2;
LABEL_9:
  v70 = v22;
  v29 = (v22 + 64) >> 6;
  v30 = 1.0 / v18;
  v73 = v23;
  if ((v20 & 0x8000000000000000) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v31 = sub_26B9ACB54();
  if (v31)
  {
    v78 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D90, &qword_26B9B42F8);
    swift_dynamicCast();
    v32 = v79[0];
    v74 = v24;
    if (v79[0])
    {
      while (1)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v79[0] = v19;
        v36 = sub_26B97577C(v32);
        v38 = v19[2];
        v39 = (v37 & 1) == 0;
        v40 = __OFADD__(v38, v39);
        v41 = v38 + v39;
        if (v40)
        {
          goto LABEL_47;
        }

        v42 = v37;
        if (v19[3] < v41)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_23;
        }

        v44 = v36;
        sub_26B975D70();
        v36 = v44;
        v19 = v79[0];
        if (v42)
        {
LABEL_24:
          *(v19[7] + 8 * v36) = v30;

          goto LABEL_28;
        }

LABEL_26:
        v19[(v36 >> 6) + 8] |= 1 << v36;
        *(v19[6] + 8 * v36) = v32;
        *(v19[7] + 8 * v36) = v30;
        v45 = v19[2];
        v40 = __OFADD__(v45, 1);
        v46 = v45 + 1;
        if (v40)
        {
          goto LABEL_48;
        }

        v19[2] = v46;
LABEL_28:
        v24 = v74;
        v73 = v23;
        if (v20 < 0)
        {
          goto LABEL_10;
        }

LABEL_13:
        v33 = v23;
        v34 = v24;
        if (!v24)
        {
          while (1)
          {
            v23 = v33 + 1;
            if (__OFADD__(v33, 1))
            {
              break;
            }

            if (v23 >= v29)
            {
              goto LABEL_30;
            }

            v34 = *(v21 + 8 * v23);
            ++v33;
            if (v34)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
          goto LABEL_46;
        }

LABEL_17:
        v74 = (v34 - 1) & v34;
        v32 = *(*(v20 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v34)))));
        sub_26B9AAAE4();
        if (!v32)
        {
          goto LABEL_30;
        }
      }

      sub_26B975854(v41, isUniquelyReferenced_nonNull_native);
      v36 = sub_26B97577C(v32);
      if ((v42 & 1) != (v43 & 1))
      {
        goto LABEL_49;
      }

LABEL_23:
      v19 = v79[0];
      if (v42)
      {
        goto LABEL_24;
      }

      goto LABEL_26;
    }
  }

LABEL_30:
  v47 = sub_26B9471BC(v20);
  v48 = HIBYTE(v72) & 0xF;
  if ((v72 & 0x2000000000000000) == 0)
  {
    v48 = v71 & 0xFFFFFFFFFFFFLL;
  }

  if (!v48)
  {

    goto LABEL_41;
  }

  MEMORY[0x28223BE20](v47);
  v49 = v67;
  *(&v65 - 6) = v66;
  *(&v65 - 5) = v49;
  v70 = v50;
  *(&v65 - 4) = v50;
  *(&v65 - 3) = v51;
  *(&v65 - 2) = v52;
  *(&v65 - 8) = v68 & 1;
  v79[0] = sub_26B97454C(sub_26B97823C, (&v65 - 8), a1);

  sub_26B975ECC(v79);

  a1 = v79[0];
  v53 = *(v79[0] + 16);
  v54 = v69;
  if (!v53)
  {

    return MEMORY[0x277D84F90];
  }

  v79[0] = MEMORY[0x277D84F90];
  v74 = v53;
  sub_26B956858(0, v53, 0);
  v55 = 0;
  v56 = v79[0];
  v73 = a1 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
  v57 = (v76 + 16);
  v72 = v76 + 32;
  while (v55 < a1[2])
  {
    v58 = v56;
    v59 = v75;
    sub_26B9236E8(&v73[*(v77 + 72) * v55], v75, &qword_280426D88, &qword_26B9B42F0);
    (*v57)(v54, v59, v15);
    v60 = v59;
    v56 = v58;
    sub_26B8EACD8(v60, &qword_280426D88, &qword_26B9B42F0);
    v79[0] = v58;
    v61 = v15;
    v63 = *(v58 + 16);
    v62 = *(v58 + 24);
    if (v63 >= v62 >> 1)
    {
      sub_26B956858((v62 > 1), v63 + 1, 1);
      v56 = v79[0];
    }

    ++v55;
    v56[2] = v63 + 1;
    (*(v76 + 32))(v56 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v63, v54, v61);
    v15 = v61;
    if (v74 == v55)
    {

      return v56;
    }
  }

LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D90, &qword_26B9B42F8);
  sub_26B9ACF24();
  __break(1u);

  __break(1u);
  return result;
}

void *sub_26B9731BC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v15 = sub_26B9AD024();
  if (sub_26B9AC8A4())
  {

    return a1;
  }

  else
  {
    v34 = a6;
    v35 = a3;
    v37 = a5;
    v38 = a7;
    v39 = a1;
    v16 = MEMORY[0x277D83F88];
    v17 = sub_26B9AC894();
    v18 = MEMORY[0x277D85048];
    swift_getTupleTypeMetadata2();
    v19 = sub_26B9AC744();
    v20 = sub_26B977AB0(v19, v15, v18, v16);

    v41 = v20;
    v36 = a4;
    if ((a2 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_26B9ACB34();
      result = sub_26B9AC8B4();
      a2 = v42;
      v22 = v43;
      v24 = v44;
      v23 = v45;
      v25 = v46;
    }

    else
    {
      v26 = -1 << *(a2 + 32);
      v22 = a2 + 56;
      v24 = ~v26;
      v27 = -v26;
      if (v27 < 64)
      {
        v28 = ~(-1 << v27);
      }

      else
      {
        v28 = -1;
      }

      v25 = v28 & *(a2 + 56);

      v23 = 0;
    }

    v29 = 1.0 / v17;
    if (a2 < 0)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v30 = v25;
      v31 = v23;
      if (!v25)
      {
        break;
      }

LABEL_15:
      v33 = (v30 - 1) & v30;
      if (!sub_26B9AAAE4())
      {
LABEL_21:
        sub_26B9471BC(a2);
        a1 = sub_26B9734AC(v39, v41, v35, v36, v37, v34 & 1, v38);

        return a1;
      }

      while (1)
      {
        v40 = v29;
        sub_26B9AC424();
        result = sub_26B9AC444();
        v23 = v31;
        v25 = v33;
        if ((a2 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_17:
        if (sub_26B9ACB54())
        {
          sub_26B9ACE94();
          swift_unknownObjectRelease();
          v31 = v23;
          v33 = v25;
          if (v40 != 0.0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    v32 = v23;
    while (1)
    {
      v31 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v31 >= ((v24 + 64) >> 6))
      {
        goto LABEL_21;
      }

      v30 = *(v22 + 8 * v31);
      ++v32;
      if (v30)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26B9734AC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a1;
  v8 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v8 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    MEMORY[0x28223BE20](a1);
    v24[0] = v10;
    v24[1] = v11;
    v13 = v12;
    sub_26B9AC7B4();
    type metadata accessor for FuzzyRanker.RankedValue(0, a7, v14, v15);
    swift_getWitnessTable();
    v16 = sub_26B9AC654();
    MEMORY[0x28223BE20](v16);
    v17 = sub_26B9AC7B4();
    swift_getWitnessTable();
    v18 = sub_26B9AC664();

    v24[5] = v18;
    MEMORY[0x28223BE20](v19);
    KeyPath = swift_getKeyPath();
    v24[2] = v13;
    v24[3] = MEMORY[0x28223BE20](KeyPath);
    WitnessTable = swift_getWitnessTable();
    v7 = sub_26B974A6C(sub_26B977E44, v24, v17, a7, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v22);
  }

  else
  {
  }

  return v7;
}

uint64_t sub_26B97372C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v25 = a6;
  v27 = a4;
  v28 = a5;
  v26 = a3;
  v29 = a7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260C8, &qword_26B9B0050);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v24[-v10];
  v12 = sub_26B9ABE84();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D88, &qword_26B9B42F0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v24[-v18];
  sub_26B9236E8(a2, v11, &qword_2804260C8, &qword_26B9B0050);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_26B8EACD8(v11, &qword_2804260C8, &qword_26B9B0050);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    sub_26B9782E4();
    v20 = sub_26B9AC494();
    (*(v13 + 8))(v15, v12);
    if (v20)
    {
      (*(v13 + 16))(v19, a1, v12);
      *&v19[*(v16 + 28)] = 0x7FEFFFFFFFFFFFFFLL;
LABEL_8:
      v22 = v29;
      sub_26B978274(v19, v29);
      v21 = 0;
      return (*(v17 + 56))(v22, v21, 1, v16);
    }
  }

  sub_26B973DB8(a1, v26, v27, v28, v19);
  if (*&v19[*(v16 + 28)] >= 0.0 || (v25 & 1) != 0)
  {
    goto LABEL_8;
  }

  sub_26B8EACD8(v19, &qword_280426D88, &qword_26B9B42F0);
  v21 = 1;
  v22 = v29;
  return (*(v17 + 56))(v22, v21, 1, v16);
}

uint64_t sub_26B973A34@<X0>(uint64_t a1@<X0>, void (*a2)(char *, char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v32 = a8;
  v33 = a3;
  v36 = a6;
  v34 = a4;
  v35 = a5;
  v37 = a2;
  v38 = a1;
  v39 = a9;
  v10 = sub_26B9ACA34();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v32 - v13;
  v15 = *(a7 - 8);
  v16 = MEMORY[0x28223BE20](v12);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v32 - v19;
  v23 = type metadata accessor for FuzzyRanker.RankedValue(0, a7, v21, v22);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v32 - v25;
  (*(v11 + 16))(v14, v37, v10);
  if ((*(v15 + 48))(v14, 1, a7) == 1)
  {
    (*(v11 + 8))(v14, v10);
    v27 = v38;
LABEL_5:
    sub_26B97411C(v27, v33, v34, v35, a7, v26);
    goto LABEL_6;
  }

  v37 = *(v15 + 32);
  v37(v20, v14, a7);
  v27 = v38;
  v28 = sub_26B9AC494();
  (*(v15 + 8))(v20, a7);
  if ((v28 & 1) == 0)
  {
    goto LABEL_5;
  }

  (*(v15 + 16))(v18, v27, a7);
  v37(v26, v18, a7);
  *&v26[*(v23 + 28)] = 0x7FEFFFFFFFFFFFFFLL;
LABEL_6:
  v29 = v39;
  if (*&v26[*(v23 + 28)] >= 0.0 || (v36 & 1) != 0)
  {
    (*(v24 + 32))(v39, v26, v23);
    v30 = 0;
  }

  else
  {
    (*(v24 + 8))(v26, v23);
    v30 = 1;
  }

  return (*(v24 + 56))(v29, v30, 1, v23);
}

uint64_t sub_26B973DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v47 = a3;
  v48 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D88, &qword_26B9B42F0);
  MEMORY[0x28223BE20](v8);
  v10 = &v42 - v9;
  v11 = sub_26B9ABE84();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26B97483C(a2);
  v16 = *(v15 + 16);
  v45 = v11;
  v46 = a5;
  v43 = v14;
  v44 = v12;
  if (v16)
  {
    if (v16 > 3)
    {
      v17 = v16 & 0x7FFFFFFFFFFFFFFCLL;
      v19 = (v15 + 48);
      v18 = 0.0;
      v20 = v16 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v18 = v18 + *(v19 - 2) + *(v19 - 1) + *v19 + v19[1];
        v19 += 4;
        v20 -= 4;
      }

      while (v20);
      if (v16 == v17)
      {
LABEL_10:

        if (v18 < 0.0)
        {
          v18 = 1.0;
        }

        goto LABEL_12;
      }
    }

    else
    {
      v17 = 0;
      v18 = 0.0;
    }

    v21 = v16 - v17;
    v22 = (v15 + 8 * v17 + 32);
    do
    {
      v23 = *v22++;
      v18 = v18 + v23;
      --v21;
    }

    while (v21);
    goto LABEL_10;
  }

  v18 = 0.0;
LABEL_12:
  v24 = 1;
  v25 = 1 << *(a2 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(a2 + 64);
  v28 = (v25 + 63) >> 6;

  v30 = 0;
  v31 = 0.0;
  while (v27)
  {
LABEL_21:
    v33 = *(*(a2 + 56) + ((v30 << 9) | (8 * __clz(__rbit64(v27)))));
    sub_26B9AAAE4();
    sub_26B974F20(a1, v47, v48, v10);

    v34 = *&v10[*(v8 + 28)];
    result = sub_26B8EACD8(v10, &qword_280426D88, &qword_26B9B42F0);
    if (v24)
    {
      v24 = v34 < 0.0;
      v35 = v33 / v18;
      v36 = 1.0;
      if (v33 / v18 > 1.0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v35 = v33 / v18;
      v36 = 1.0;
      v24 = 0;
      if (v33 / v18 > 1.0)
      {
        goto LABEL_15;
      }
    }

    if (v35 < 0.0)
    {
      v36 = 0.0;
    }

    else
    {
      v36 = v35;
    }

LABEL_15:
    v27 &= v27 - 1;
    v31 = v31 + v34 * v36;
  }

  while (1)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      return result;
    }

    if (v32 >= v28)
    {
      break;
    }

    v27 = *(a2 + 64 + 8 * v32);
    ++v30;
    if (v27)
    {
      v30 = v32;
      goto LABEL_21;
    }
  }

  v38 = v43;
  v37 = v44;
  v39 = v45;
  (*(v44 + 16))(v43, a1, v45);
  if (v24)
  {
    v40 = -1.0;
  }

  else
  {
    v40 = v31;
  }

  v41 = v46;
  result = (*(v37 + 32))(v46, v38, v39);
  *(v41 + *(v8 + 28)) = v40;
  return result;
}

uint64_t sub_26B97411C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v57 = a3;
  v58 = a4;
  v59 = a1;
  v55 = a6;
  v8 = type metadata accessor for FuzzyRanker.RankedValue(0, a5, a3, a4);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v52 - v11;
  v13 = *(a5 - 8);
  MEMORY[0x28223BE20](v10);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26B9AD024();
  v60 = a2;
  v16 = MEMORY[0x277D85048];
  v17 = sub_26B9AC414();

  WitnessTable = swift_getWitnessTable();
  v20 = sub_26B974A6C(sub_26B974E8C, 0, v17, v16, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v19);

  v21 = v20;
  v22 = *(v20 + 16);
  v56 = a5;
  v53 = v15;
  v54 = v13;
  if (v22)
  {
    v23 = v9;
    if (v22 > 3)
    {
      v24 = v22 & 0x7FFFFFFFFFFFFFFCLL;
      v26 = (v21 + 48);
      v25 = 0.0;
      v27 = v22 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v25 = v25 + *(v26 - 2) + *(v26 - 1) + *v26 + v26[1];
        v26 += 4;
        v27 -= 4;
      }

      while (v27);
      if (v22 == v24)
      {
LABEL_10:

        if (v25 < 0.0)
        {
          v25 = 1.0;
        }

        goto LABEL_12;
      }
    }

    else
    {
      v24 = 0;
      v25 = 0.0;
    }

    v28 = v22 - v24;
    v29 = (v21 + 8 * v24 + 32);
    do
    {
      v30 = *v29++;
      v25 = v25 + v30;
      --v28;
    }

    while (v28);
    goto LABEL_10;
  }

  v25 = 0.0;
  v23 = v9;
LABEL_12:
  v31 = 1;
  v32 = 1 << *(a2 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(a2 + 64);
  v35 = (v32 + 63) >> 6;
  v36 = (v23 + 8);

  v38 = 0;
  v39 = 0.0;
  while (v34)
  {
LABEL_21:
    v41 = (v38 << 9) | (8 * __clz(__rbit64(v34)));
    v42 = *(*(a2 + 48) + v41);
    v43 = *(*(a2 + 56) + v41);
    sub_26B9AAAE4();
    sub_26B97530C(v59, v42, v57, v58, v12);

    v44 = *&v12[*(v8 + 28)];
    result = (*v36)(v12, v8);
    if (v31)
    {
      v31 = v44 < 0.0;
      v45 = v43 / v25;
      v46 = 1.0;
      if (v43 / v25 > 1.0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v45 = v43 / v25;
      v46 = 1.0;
      v31 = 0;
      if (v43 / v25 > 1.0)
      {
        goto LABEL_15;
      }
    }

    if (v45 < 0.0)
    {
      v46 = 0.0;
    }

    else
    {
      v46 = v45;
    }

LABEL_15:
    v34 &= v34 - 1;
    v39 = v39 + v44 * v46;
  }

  while (1)
  {
    v40 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      __break(1u);
      return result;
    }

    if (v40 >= v35)
    {
      break;
    }

    v34 = *(a2 + 64 + 8 * v40);
    ++v38;
    if (v34)
    {
      v38 = v40;
      goto LABEL_21;
    }
  }

  v48 = v53;
  v47 = v54;
  v49 = v56;
  (*(v54 + 16))(v53, v59, v56);
  if (v31)
  {
    v50 = -1.0;
  }

  else
  {
    v50 = v39;
  }

  v51 = v55;
  result = (*(v47 + 32))(v55, v48, v49);
  *(v51 + *(v8 + 28)) = v50;
  return result;
}

void *sub_26B97454C(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426DA8, &unk_26B9B4310);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D88, &qword_26B9B42F0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v29 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v27 = &v23 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return MEMORY[0x277D84F90];
  }

  v15 = *(sub_26B9ABE84() - 8);
  v24 = v10;
  v16 = (v10 + 48);
  v17 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v28 = *(v15 + 72);
  v18 = MEMORY[0x277D84F90];
  v25 = v9;
  v26 = a1;
  while (1)
  {
    a1(v17);
    if (v3)
    {
      break;
    }

    if ((*v16)(v8, 1, v9) == 1)
    {
      sub_26B8EACD8(v8, &qword_280426DA8, &unk_26B9B4310);
    }

    else
    {
      v19 = v27;
      sub_26B978274(v8, v27);
      sub_26B978274(v19, v29);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_26B97725C(0, v18[2] + 1, 1, v18);
      }

      v21 = v18[2];
      v20 = v18[3];
      if (v21 >= v20 >> 1)
      {
        v18 = sub_26B97725C((v20 > 1), v21 + 1, 1, v18);
      }

      v18[2] = v21 + 1;
      sub_26B978274(v29, v18 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v21);
      v9 = v25;
      a1 = v26;
    }

    v17 += v28;
    if (!--v14)
    {
      return v18;
    }
  }

  return v18;
}

uint64_t sub_26B97483C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v25 = *(a1 + 16);
  v26 = MEMORY[0x277D84F90];
  sub_26B97744C(0, v1, 0);
  v2 = v26;
  v4 = a1 + 64;
  result = sub_26B9ACB14();
  v6 = v25;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_26;
    }

    v11 = *(a1 + 36);
    v12 = *(*(a1 + 56) + 8 * result);
    if (v12 > 1.0)
    {
      v12 = 1.0;
    }

    if (v12 < 0.0)
    {
      v13 = 0.0;
    }

    else
    {
      v13 = v12;
    }

    v15 = *(v26 + 16);
    v14 = *(v26 + 24);
    if (v15 >= v14 >> 1)
    {
      v23 = *(a1 + 36);
      v24 = result;
      sub_26B97744C((v14 > 1), v15 + 1, 1);
      v6 = v25;
      v11 = v23;
      result = v24;
    }

    *(v26 + 16) = v15 + 1;
    *(v26 + 8 * v15 + 32) = v13;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_27;
    }

    v16 = *(v4 + 8 * v9);
    if ((v16 & v10) == 0)
    {
      goto LABEL_28;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_29;
    }

    v17 = v16 & (-2 << (result & 0x3F));
    if (v17)
    {
      v8 = __clz(__rbit64(v17)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v9 << 6;
      v19 = v9 + 1;
      v20 = (a1 + 72 + 8 * v9);
      while (v19 < (v8 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          sub_26B97833C(result, v11, 0);
          v6 = v25;
          v8 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      sub_26B97833C(result, v11, 0);
      v6 = v25;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_26B974A6C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_26B9AC8D4();
  if (!v19)
  {
    return sub_26B9AC744();
  }

  v41 = v19;
  v45 = sub_26B9ACCD4();
  v32 = sub_26B9ACCE4();
  sub_26B9ACC84();
  result = sub_26B9AC8C4();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_26B9AC904();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_26B9ACCC4();
      result = sub_26B9AC8F4();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26B974E8C(uint64_t *a1, uint64_t a2)
{
  sub_26B9781E8();
  sub_26B9ACF04();
  return sub_26B9ACEF4();
}

uint64_t sub_26B974F20@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = sub_26B9ABE84();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAtKeyPath();
  v13 = sub_26B9AC534();
  v15 = v14;

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

    (*(v10 + 16))(a5, a1, v9);
LABEL_10:
    v23 = -1.0;
    goto LABEL_11;
  }

  v41 = v12;
  v42 = v9;
  v43 = a5;
  v40[1] = a3;
  v40[2] = a4;
  sub_26B9AC534();
  v17 = [objc_allocWithZone(MEMORY[0x277D659C0]) init];
  v18 = objc_opt_self();
  v19 = sub_26B9AC4C4();
  v20 = sub_26B9AC4C4();
  v21 = [v18 fuzzymatch:v19 pattern:v20];

  if (!v21)
  {

    goto LABEL_9;
  }

  [v17 addTermMatch_];
  [v17 score];
  if (v22 < 0.0)
  {

LABEL_9:
    a5 = v43;
    (*(v10 + 16))(v43, a1, v42);
    goto LABEL_10;
  }

  v25 = v22;
  v26 = sub_26B9AC5E4();

  if (v26)
  {
    v27 = v25 * 1.1;
  }

  else
  {
    v27 = v25;
  }

  v28 = [v17 matchPositions];
  v23 = 0.0;
  v29 = 0.0;
  v30 = v41;
  if (v28)
  {
    v31 = v28;
    sub_26B97819C();
    v32 = sub_26B9AC6F4();

    if (v32 >> 62)
    {
      v33 = sub_26B9ACB44();
    }

    else
    {
      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v29 = v33;
  }

  v34 = sub_26B9AC584();

  v35 = v27 * 0.7 + v27 * 0.3 * (v29 / v34);
  v36 = sub_26B9AC584();

  if (v35 / (v36 * 25.0) <= 1.0)
  {
    v37 = v35 / (v36 * 25.0);
  }

  else
  {
    v37 = 1.0;
  }

  v38 = a1;
  v39 = v42;
  (*(v10 + 16))(v30, v38, v42);
  if (v37 >= 0.0)
  {
    v23 = v37;
  }

  a5 = v43;
  (*(v10 + 32))(v43, v30, v39);
LABEL_11:
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D88, &qword_26B9B42F0);
  *(a5 + *(result + 28)) = v23;
  return result;
}

uint64_t sub_26B97530C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(*a2 + *MEMORY[0x277D84DE8]);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v43 = v42 - v14;
  swift_getAtKeyPath();
  v15 = sub_26B9AC534();
  v17 = v16;

  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    v44 = v10;
    v45 = a1;
    v46 = v9;
    v47 = a5;
    v42[1] = a3;
    v42[2] = a4;
    sub_26B9AC534();
    v19 = [objc_allocWithZone(MEMORY[0x277D659C0]) init];
    v20 = objc_opt_self();
    v21 = sub_26B9AC4C4();
    v22 = sub_26B9AC4C4();
    v23 = [v20 fuzzymatch:v21 pattern:v22];

    if (v23)
    {
      [v19 addTermMatch_];
      [v19 score];
      if (v24 >= 0.0)
      {
        v26 = v24;
        v27 = sub_26B9AC5E4();

        if (v27)
        {
          v28 = v26 * 1.1;
        }

        else
        {
          v28 = v26;
        }

        v29 = [v19 matchPositions];
        v25 = 0.0;
        v30 = 0.0;
        v31 = v45;
        v13 = v43;
        if (v29)
        {
          v32 = v29;
          sub_26B97819C();
          v33 = sub_26B9AC6F4();

          if (v33 >> 62)
          {
            v34 = sub_26B9ACB44();
          }

          else
          {
            v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v30 = v34;
        }

        v35 = sub_26B9AC584();

        v36 = v28 * 0.7 + v28 * 0.3 * (v30 / v35);
        v37 = sub_26B9AC584();

        if (v36 / (v37 * 25.0) <= 1.0)
        {
          v38 = v36 / (v37 * 25.0);
        }

        else
        {
          v38 = 1.0;
        }

        v10 = v44;
        v9 = v46;
        (*(v44 + 16))(v13, v31, v46);
        if (v38 >= 0.0)
        {
          v25 = v38;
        }

        goto LABEL_22;
      }
    }

    else
    {
    }

    v10 = v44;
    v9 = v46;
    (*(v44 + 16))(v13, v45, v46);
    v25 = -1.0;
LABEL_22:
    a5 = v47;
    goto LABEL_23;
  }

  (*(v10 + 16))(v13, a1, v9);
  v25 = -1.0;
LABEL_23:
  (*(v10 + 32))(a5, v13, v9);
  result = type metadata accessor for FuzzyRanker.RankedValue(0, v9, v39, v40);
  *(a5 + *(result + 28)) = v25;
  return result;
}

unint64_t sub_26B97577C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D90, &qword_26B9B42F8);
  v2 = sub_26B9AC454();
  return sub_26B975B00(a1, v2);
}

unint64_t sub_26B9757F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B9AC454();

  return sub_26B975BE8(a1, v6, a2, a3);
}

uint64_t sub_26B975854(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D98, &qword_26B9B4300);
  v30 = v4;
  result = sub_26B9ACD74();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
        sub_26B9AAAE4();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D90, &qword_26B9B42F8);
      result = sub_26B9AC454();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_26B975B00(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D90, &qword_26B9B42F8);
      if (sub_26B9AC494())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_26B975BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x28223BE20](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_26B9AC494();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

void *sub_26B975D70()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D98, &qword_26B9B4300);
  v2 = *v0;
  v3 = sub_26B9ACD64();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = sub_26B9AAAE4();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_26B975ECC(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D88, &qword_26B9B42F0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_26B977760(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_26B975F80(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_26B975F80(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26B9ACE64();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D88, &qword_26B9B42F0);
        v6 = sub_26B9AC754();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D88, &qword_26B9B42F0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_26B97631C(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_26B9760C4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26B9760C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D88, &qword_26B9B42F0);
  v8 = MEMORY[0x28223BE20](v39);
  v38 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  result = MEMORY[0x28223BE20](v10);
  v16 = &v29 - v15;
  v31 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v36 = -v18;
    v37 = v17;
    v20 = a1 - a3;
    v30 = v18;
    v21 = v17 + v18 * a3;
LABEL_5:
    v34 = v19;
    v35 = a3;
    v32 = v21;
    v33 = v20;
    v22 = v20;
    v23 = v39;
    while (1)
    {
      sub_26B9236E8(v21, v16, &qword_280426D88, &qword_26B9B42F0);
      sub_26B9236E8(v19, v12, &qword_280426D88, &qword_26B9B42F0);
      v24 = *(v23 + 28);
      v25 = *&v16[v24];
      v26 = *&v12[v24];
      sub_26B8EACD8(v12, &qword_280426D88, &qword_26B9B42F0);
      result = sub_26B8EACD8(v16, &qword_280426D88, &qword_26B9B42F0);
      if (v26 >= v25)
      {
LABEL_4:
        a3 = v35 + 1;
        v19 = v34 + v30;
        v20 = v33 - 1;
        v21 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v37)
      {
        break;
      }

      v27 = v38;
      sub_26B978274(v21, v38);
      v23 = v39;
      swift_arrayInitWithTakeFrontToBack();
      result = sub_26B978274(v27, v19);
      v19 += v36;
      v21 += v36;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26B97631C(unint64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v6 = v5;
  v109 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D88, &qword_26B9B42F0);
  v118 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v114 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v122 = &v107 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v124 = &v107 - v15;
  result = MEMORY[0x28223BE20](v14);
  v123 = &v107 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_97:
    a4 = *v109;
    if (!*v109)
    {
      goto LABEL_136;
    }

    v4 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v4;
    }

    else
    {
LABEL_130:
      result = sub_26B932B28(v4);
    }

    v126 = result;
    v4 = *(result + 16);
    if (v4 >= 2)
    {
      while (*a3)
      {
        v103 = *(result + 16 * v4);
        v104 = result;
        v105 = *(result + 16 * (v4 - 1) + 40);
        sub_26B976C6C(*a3 + *(v118 + 72) * v103, *a3 + *(v118 + 72) * *(result + 16 * (v4 - 1) + 32), *a3 + *(v118 + 72) * v105, a4);
        if (v6)
        {
        }

        if (v105 < v103)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v104 = sub_26B932B28(v104);
        }

        if (v4 - 2 >= *(v104 + 2))
        {
          goto LABEL_124;
        }

        v106 = &v104[16 * v4];
        *v106 = v103;
        *(v106 + 1) = v105;
        v126 = v104;
        sub_26B932A9C(v4 - 1);
        result = v126;
        v4 = *(v126 + 16);
        if (v4 <= 1)
        {
        }
      }

      goto LABEL_134;
    }
  }

  v19 = 0;
  v20 = MEMORY[0x277D84F90];
  v108 = a4;
  v125 = v9;
  while (1)
  {
    v21 = v19;
    v115 = v20;
    if (v19 + 1 >= v18)
    {
      v33 = v19 + 1;
    }

    else
    {
      v110 = v19;
      v22 = *a3;
      v120 = v18;
      v121 = v22;
      v23 = *(v118 + 72);
      v24 = v22 + v23 * (v19 + 1);
      v25 = v123;
      sub_26B9236E8(v24, v123, &qword_280426D88, &qword_26B9B42F0);
      v26 = v110;
      v27 = v22 + v23 * v110;
      v28 = v124;
      sub_26B9236E8(v27, v124, &qword_280426D88, &qword_26B9B42F0);
      v29 = *(v9 + 28);
      v30 = *(v25 + v29);
      v31 = *(v28 + v29);
      sub_26B8EACD8(v28, &qword_280426D88, &qword_26B9B42F0);
      result = sub_26B8EACD8(v25, &qword_280426D88, &qword_26B9B42F0);
      v4 = v26 + 2;
      v119 = v23;
      v32 = v121 + v23 * v4;
      while (1)
      {
        v33 = v120;
        if (v120 == v4)
        {
          break;
        }

        LODWORD(v121) = v31 < v30;
        v34 = v123;
        sub_26B9236E8(v32, v123, &qword_280426D88, &qword_26B9B42F0);
        v35 = v124;
        sub_26B9236E8(v24, v124, &qword_280426D88, &qword_26B9B42F0);
        v36 = *(v125 + 28);
        v37 = *(v34 + v36);
        v38 = *(v35 + v36);
        sub_26B8EACD8(v35, &qword_280426D88, &qword_26B9B42F0);
        result = sub_26B8EACD8(v34, &qword_280426D88, &qword_26B9B42F0);
        ++v4;
        v32 += v119;
        v24 += v119;
        if (((v121 ^ (v38 >= v37)) & 1) == 0)
        {
          v33 = v4 - 1;
          break;
        }
      }

      a4 = v108;
      v9 = v125;
      v21 = v110;
      if (v31 < v30)
      {
        if (v33 < v110)
        {
          goto LABEL_127;
        }

        if (v110 < v33)
        {
          v107 = v6;
          v4 = v119 * (v33 - 1);
          v39 = v33 * v119;
          v40 = v33;
          v41 = v110;
          v42 = v110 * v119;
          v111 = a3;
          do
          {
            if (v41 != --v33)
            {
              v43 = *a3;
              if (!v43)
              {
                goto LABEL_133;
              }

              sub_26B978274(v43 + v42, v114);
              if (v42 < v4 || v43 + v42 >= (v43 + v39))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v42 != v4)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_26B978274(v114, v43 + v4);
              a3 = v111;
            }

            ++v41;
            v4 -= v119;
            v39 -= v119;
            v42 += v119;
          }

          while (v41 < v33);
          v6 = v107;
          a4 = v108;
          v9 = v125;
          v21 = v110;
          v33 = v40;
        }
      }
    }

    v44 = a3[1];
    if (v33 < v44)
    {
      if (__OFSUB__(v33, v21))
      {
        goto LABEL_126;
      }

      if (v33 - v21 < a4)
      {
        if (__OFADD__(v21, a4))
        {
          goto LABEL_128;
        }

        if (v21 + a4 >= v44)
        {
          v45 = a3[1];
        }

        else
        {
          v45 = v21 + a4;
        }

        if (v45 < v21)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v33 != v45)
        {
          break;
        }
      }
    }

    v19 = v33;
    if (v33 < v21)
    {
      goto LABEL_125;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v20 = v115;
    }

    else
    {
      result = sub_26B93088C(0, *(v115 + 2) + 1, 1, v115);
      v20 = result;
    }

    v4 = *(v20 + 2);
    v46 = *(v20 + 3);
    a4 = v4 + 1;
    if (v4 >= v46 >> 1)
    {
      result = sub_26B93088C((v46 > 1), v4 + 1, 1, v20);
      v20 = result;
    }

    *(v20 + 2) = a4;
    v47 = &v20[16 * v4];
    *(v47 + 4) = v21;
    *(v47 + 5) = v19;
    if (!*v109)
    {
      goto LABEL_135;
    }

    if (v4)
    {
      v48 = *v109;
      while (1)
      {
        v49 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v50 = *(v20 + 4);
          v51 = *(v20 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_53:
          if (v53)
          {
            goto LABEL_114;
          }

          v66 = &v20[16 * a4];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_117;
          }

          v72 = &v20[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_121;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = a4 - 2;
            }

            goto LABEL_74;
          }

          goto LABEL_67;
        }

        v76 = &v20[16 * a4];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_67:
        if (v71)
        {
          goto LABEL_116;
        }

        v79 = &v20[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_119;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_74:
        v4 = v49 - 1;
        if (v49 - 1 >= a4)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
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
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v87 = v20;
        a4 = *&v20[16 * v4 + 32];
        v88 = *&v20[16 * v49 + 40];
        sub_26B976C6C(*a3 + *(v118 + 72) * a4, *a3 + *(v118 + 72) * *&v20[16 * v49 + 32], *a3 + *(v118 + 72) * v88, v48);
        if (v6)
        {
        }

        if (v88 < a4)
        {
          goto LABEL_110;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v89 = v87;
        }

        else
        {
          v89 = sub_26B932B28(v87);
        }

        v9 = v125;
        if (v4 >= *(v89 + 2))
        {
          goto LABEL_111;
        }

        v90 = &v89[16 * v4];
        *(v90 + 4) = a4;
        *(v90 + 5) = v88;
        v126 = v89;
        v4 = &v126;
        result = sub_26B932A9C(v49);
        v20 = v126;
        a4 = *(v126 + 16);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v20[16 * a4 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_112;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_113;
      }

      v61 = &v20[16 * a4];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_115;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_118;
      }

      if (v65 >= v57)
      {
        v83 = &v20[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_122;
        }

        if (v52 < v86)
        {
          v49 = a4 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

LABEL_3:
    v18 = a3[1];
    a4 = v108;
    if (v19 >= v18)
    {
      goto LABEL_97;
    }
  }

  v107 = v6;
  v110 = v21;
  v111 = a3;
  v91 = *(v118 + 72);
  v92 = *a3 + v91 * (v33 - 1);
  v93 = -v91;
  v94 = v21 - v33;
  v121 = *a3;
  v112 = v91;
  v113 = v45;
  a4 = v121 + v33 * v91;
LABEL_87:
  v119 = v92;
  v120 = v33;
  v116 = a4;
  v117 = v94;
  v95 = v92;
  v96 = v125;
  while (1)
  {
    v4 = v123;
    sub_26B9236E8(a4, v123, &qword_280426D88, &qword_26B9B42F0);
    v97 = v124;
    sub_26B9236E8(v95, v124, &qword_280426D88, &qword_26B9B42F0);
    v98 = *(v96 + 28);
    v99 = *(v4 + v98);
    v100 = *(v97 + v98);
    sub_26B8EACD8(v97, &qword_280426D88, &qword_26B9B42F0);
    result = sub_26B8EACD8(v4, &qword_280426D88, &qword_26B9B42F0);
    if (v100 >= v99)
    {
LABEL_86:
      v33 = v120 + 1;
      v19 = v113;
      v92 = v119 + v112;
      v94 = v117 - 1;
      a4 = v116 + v112;
      if (v120 + 1 != v113)
      {
        goto LABEL_87;
      }

      v6 = v107;
      v21 = v110;
      a3 = v111;
      v9 = v125;
      if (v113 < v110)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v121)
    {
      break;
    }

    v101 = v122;
    sub_26B978274(a4, v122);
    v96 = v125;
    swift_arrayInitWithTakeFrontToBack();
    sub_26B978274(v101, v95);
    v95 += v93;
    a4 += v93;
    if (__CFADD__(v94++, 1))
    {
      goto LABEL_86;
    }
  }

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
  return result;
}

uint64_t sub_26B976C6C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v48 = a3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D88, &qword_26B9B42F0);
  v7 = MEMORY[0x28223BE20](v47);
  v46 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v11 = &v40 - v10;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = v48 - a2;
  if (v48 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v51 = a1;
  v50 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v24 = a4 + v17;
    if (v17 >= 1)
    {
      v25 = -v13;
      v26 = a4 + v17;
      v43 = v25;
      v44 = a4;
      do
      {
        v41 = v24;
        v27 = a2;
        v28 = a2 + v25;
        v45 = v27;
        while (1)
        {
          v30 = v48;
          if (v27 <= a1)
          {
            v51 = v27;
            v49 = v41;
            goto LABEL_58;
          }

          v42 = v24;
          v48 += v25;
          v31 = v26 + v25;
          sub_26B9236E8(v31, v11, &qword_280426D88, &qword_26B9B42F0);
          v32 = v28;
          v33 = v28;
          v34 = v11;
          v35 = v46;
          sub_26B9236E8(v33, v46, &qword_280426D88, &qword_26B9B42F0);
          v36 = *(v47 + 28);
          v37 = *(v34 + v36);
          v38 = *(v35 + v36);
          v39 = v35;
          v11 = v34;
          sub_26B8EACD8(v39, &qword_280426D88, &qword_26B9B42F0);
          sub_26B8EACD8(v34, &qword_280426D88, &qword_26B9B42F0);
          if (v38 < v37)
          {
            break;
          }

          v24 = v31;
          if (v30 < v26 || v48 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
            v24 = v31;
            v28 = v32;
          }

          else
          {
            v28 = v32;
            if (v30 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
              v24 = v31;
            }
          }

          v26 = v24;
          v27 = v45;
          v29 = v31 > v44;
          v25 = v43;
          if (!v29)
          {
            a2 = v45;
            goto LABEL_57;
          }
        }

        if (v30 < v45 || v48 >= v45)
        {
          a2 = v32;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v43;
        }

        else
        {
          v25 = v43;
          a2 = v32;
          if (v30 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v24 = v42;
      }

      while (v26 > v44);
    }

LABEL_57:
    v51 = a2;
    v49 = v24;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v18 = a4 + v16;
    v49 = a4 + v16;
    if (v16 >= 1 && a2 < v48)
    {
      do
      {
        sub_26B9236E8(a2, v11, &qword_280426D88, &qword_26B9B42F0);
        v20 = v46;
        sub_26B9236E8(a4, v46, &qword_280426D88, &qword_26B9B42F0);
        v21 = *(v47 + 28);
        v22 = *&v11[v21];
        v23 = *(v20 + v21);
        sub_26B8EACD8(v20, &qword_280426D88, &qword_26B9B42F0);
        sub_26B8EACD8(v11, &qword_280426D88, &qword_26B9B42F0);
        if (v23 >= v22)
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v50 = a4 + v13;
          a4 += v13;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v13;
        }

        a1 += v13;
        v51 = a1;
      }

      while (a4 < v18 && a2 < v48);
    }
  }

LABEL_58:
  sub_26B97716C(&v51, &v50, &v49);
  return 1;
}

uint64_t sub_26B97716C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D88, &qword_26B9B42F0);
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

void *sub_26B97725C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426DA0, &qword_26B9B4308);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D88, &qword_26B9B42F0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D88, &qword_26B9B42F0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_26B97744C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26B97765C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26B97746C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426DA0, &qword_26B9B4308);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D88, &qword_26B9B42F0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D88, &qword_26B9B42F0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_26B97765C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426DB0, &qword_26B9B4320);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

unint64_t sub_26B977774(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_26B9ACB44();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426DB8, &qword_26B9B4328);
      result = sub_26B9ACBA4();
      v3 = result;
      v18 = v1;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_26B9ACB44();
      v4 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v18 = v1;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    return v3;
  }

LABEL_9:
  v5 = 0;
  v6 = v3 + 56;
  v17 = v4;
  while ((v18 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x26D686B00](v5, v18);
    v7 = result;
    v8 = __OFADD__(v5++, 1);
    if (v8)
    {
      goto LABEL_25;
    }

LABEL_17:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D90, &qword_26B9B42F8);
    result = sub_26B9AC454();
    v9 = -1 << *(v3 + 32);
    v10 = result & ~v9;
    v11 = v10 >> 6;
    v12 = *(v6 + 8 * (v10 >> 6));
    v13 = 1 << v10;
    if (((1 << v10) & v12) != 0)
    {
      v14 = ~v9;
      while (1)
      {
        result = sub_26B9AC494();
        if (result)
        {
          break;
        }

        v10 = (v10 + 1) & v14;
        v11 = v10 >> 6;
        v12 = *(v6 + 8 * (v10 >> 6));
        v13 = 1 << v10;
        if (((1 << v10) & v12) == 0)
        {
          v4 = v17;
          goto LABEL_22;
        }
      }

      v4 = v17;
      if (v5 == v17)
      {
        return v3;
      }
    }

    else
    {
LABEL_22:
      *(v6 + 8 * v11) = v13 | v12;
      *(*(v3 + 48) + 8 * v10) = v7;
      v15 = *(v3 + 16);
      v8 = __OFADD__(v15, 1);
      v16 = v15 + 1;
      if (v8)
      {
        goto LABEL_26;
      }

      *(v3 + 16) = v16;
      if (v5 == v4)
      {
        return v3;
      }
    }
  }

  if (v5 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_27;
  }

  v7 = *(v18 + 32 + 8 * v5);
  result = sub_26B9AAAE4();
  v8 = __OFADD__(v5++, 1);
  if (!v8)
  {
    goto LABEL_17;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_26B9779C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D98, &qword_26B9B4300);
    v3 = sub_26B9ACD84();
    sub_26B9AAAE4();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = sub_26B9AAAE4();
      result = sub_26B97577C(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_26B977AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_26B9AC784())
  {
    sub_26B9ACD94();
    v13 = sub_26B9ACD84();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  sub_26B9AAAE4();
  result = sub_26B9AC784();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_26B9AC764())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_26B9ACC24();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_26B9757F8(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_26B977E9C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26B977F14(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))(a1);
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))(a1);
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_26B978018(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

unint64_t sub_26B97819C()
{
  result = qword_2804265C0;
  if (!qword_2804265C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2804265C0);
  }

  return result;
}

unint64_t sub_26B9781E8()
{
  result = qword_280426D80;
  if (!qword_280426D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426D80);
  }

  return result;
}

uint64_t sub_26B978274(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D88, &qword_26B9B42F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26B9782E4()
{
  result = qword_280426B78;
  if (!qword_280426B78)
  {
    sub_26B9ABE84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426B78);
  }

  return result;
}

uint64_t sub_26B97833C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

__n128 ParameterQuery.platterBehavior.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_26B92CEE8();
  v3 = v2[1];
  *a1 = *v2;
  *(a1 + 16) = v3;
  result = v2[2];
  *(a1 + 32) = result;
  return result;
}

uint64_t ToolKitQueryDataSource.__allocating_init()()
{
  v0 = swift_allocObject();
  KeyPath = swift_getKeyPath();
  Dependency.init(_:)(KeyPath, (v0 + 16));
  return v0;
}

uint64_t ToolKitQueryDataSource.init()()
{
  KeyPath = swift_getKeyPath();
  Dependency.init(_:)(KeyPath, (v0 + 16));
  return v0;
}

uint64_t sub_26B97845C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[46] = a4;
  v5[47] = v4;
  v5[44] = a1;
  v5[45] = a3;
  v5[48] = *(a2 + 24);
  v6 = sub_26B92A538();
  swift_beginAccess();
  v7 = *v6;
  v5[49] = v7;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B9784F8, v7, 0);
}

uint64_t sub_26B9784F8()
{
  (*(**(v0 + 376) + 96))();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  v5 = (*(v2 + 16) + **(v2 + 16));
  v3 = swift_task_alloc();
  *(v0 + 400) = v3;
  *v3 = v0;
  v3[1] = sub_26B978648;

  return v5(v1, v2);
}

uint64_t sub_26B978648(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *v3;
  v6[51] = a1;
  v6[52] = v2;

  v7 = v5[49];
  if (v2)
  {
    v8 = sub_26B979370;
  }

  else
  {
    v6[53] = a2;
    v8 = sub_26B97878C;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_26B97878C()
{
  v1 = v0[47];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v7 = (*(*v1 + 128) + **(*v1 + 128));
  v2 = swift_task_alloc();
  v0[54] = v2;
  *v2 = v0;
  v2[1] = sub_26B9788BC;
  v3 = v0[53];
  v4 = v0[51];
  v5 = v0[44];

  return v7(v5, v4, v3);
}

uint64_t sub_26B9788BC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 440) = a1;
  *(v4 + 448) = v1;

  v5 = *(v3 + 392);
  if (v1)
  {
    v6 = sub_26B979560;
  }

  else
  {
    v6 = sub_26B9789F0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_26B9789F0()
{
  v1 = *(v0 + 440);
  if (v1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26B9ACB44())
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v5 = v1 & 0xFFFFFFFFFFFFFF8;
    v6 = *(v0 + 440) + 32;
    while (1)
    {
      if (v4)
      {
        v7 = MEMORY[0x26D686B00](v3, *(v0 + 440));
      }

      else
      {
        if (v3 >= *(v5 + 16))
        {
          goto LABEL_12;
        }

        v7 = *(v6 + 8 * v3);
      }

      v8 = v7;
      v9 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      (*(**(v0 + 376) + 104))();
      v1 = v10;
      v11 = sub_26B9AC4C4();

      [v8 setSectionBundleIdentifier_];

      ++v3;
      if (v9 == i)
      {
        v12 = *(v0 + 376);
        v13 = *(v0 + 384);
        v14 = *(v0 + 360);
        v15 = [objc_allocWithZone(MEMORY[0x277D65848]) init];
        *(v0 + 456) = v15;
        v16 = v15;
        v17 = sub_26B9AC4C4();
        [v16 setTitle_];

        (*(*v12 + 104))();
        v18 = sub_26B9AC4C4();

        [v16 setIdentifier_];

        sub_26B979750();
        v19 = sub_26B9AC6E4();

        [v16 setResults_];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_26B9B1290;
        *(v20 + 32) = v16;
        v21 = sub_26B906128();
        SearchResults.init(sections:queryIdentifier:topHitIsIn:finishedGettingResults:filters:shouldShowTopResultAboveFilterBar:)(v20, v13, 1, 1, 0, v21 & 1, v0 + 136);
        v22 = *(v0 + 144);
        v23 = *(v0 + 152);
        v24 = *(v0 + 153);
        v25 = *(v0 + 160);
        v26 = *(v0 + 168);
        *(v0 + 176) = *(v0 + 136);
        *(v0 + 184) = v22;
        *(v0 + 192) = v23;
        *(v0 + 193) = v24;
        *(v0 + 200) = v25;
        *(v0 + 208) = v26;
        v38 = (v14 + *v14);
        v27 = swift_task_alloc();
        *(v0 + 464) = v27;
        *v27 = v0;
        v27[1] = sub_26B978E34;
        v28 = v0 + 176;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  v29 = *(v0 + 384);
  v30 = *(v0 + 360);

  static SearchResults.empty(queryID:)(v29, v0 + 216);
  v31 = *(v0 + 224);
  v32 = *(v0 + 232);
  v33 = *(v0 + 233);
  v34 = *(v0 + 240);
  v35 = *(v0 + 248);
  *(v0 + 256) = *(v0 + 216);
  *(v0 + 264) = v31;
  *(v0 + 272) = v32;
  *(v0 + 273) = v33;
  *(v0 + 280) = v34;
  *(v0 + 288) = v35;
  v38 = (v30 + *v30);
  v36 = swift_task_alloc();
  *(v0 + 472) = v36;
  *v36 = v0;
  v36[1] = sub_26B978FF8;
  v28 = v0 + 256;
LABEL_15:

  return v38(v28);
}

uint64_t sub_26B978E34()
{
  v1 = *(*v0 + 392);

  return MEMORY[0x2822009F8](sub_26B978F84, v1, 0);
}

uint64_t sub_26B978F84()
{
  v1 = *(v0 + 456);

  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26B978FF8()
{
  v1 = *(*v0 + 392);

  return MEMORY[0x2822009F8](sub_26B979148, v1, 0);
}

uint64_t sub_26B979148()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26B9791B4()
{
  v1 = *(*v0 + 392);

  return MEMORY[0x2822009F8](sub_26B979304, v1, 0);
}

uint64_t sub_26B979304()
{
  v1 = *(v0 + 480);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26B979370()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  *(v0 + 480) = *(v0 + 416);
  v1 = *(v0 + 384);
  v2 = *(v0 + 360);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426DC0, &qword_26B9B52A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26B9AF300;
  swift_getErrorValue();
  v4 = *(v0 + 320);
  v5 = *(v0 + 328);
  *(v3 + 56) = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v3 + 32));
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v4, v5);
  sub_26B9ACFA4();

  static SearchResults.empty(queryID:)(v1, v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  v9 = *(v0 + 73);
  v10 = *(v0 + 80);
  v11 = *(v0 + 88);
  *(v0 + 96) = *(v0 + 56);
  *(v0 + 104) = v7;
  *(v0 + 112) = v8;
  *(v0 + 113) = v9;
  *(v0 + 120) = v10;
  *(v0 + 128) = v11;
  v14 = (v2 + *v2);
  v12 = swift_task_alloc();
  *(v0 + 488) = v12;
  *v12 = v0;
  v12[1] = sub_26B9791B4;

  return v14(v0 + 96);
}

uint64_t sub_26B979560()
{
  swift_unknownObjectRelease();
  *(v0 + 480) = *(v0 + 448);
  v1 = *(v0 + 384);
  v2 = *(v0 + 360);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426DC0, &qword_26B9B52A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26B9AF300;
  swift_getErrorValue();
  v4 = *(v0 + 320);
  v5 = *(v0 + 328);
  *(v3 + 56) = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v3 + 32));
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v4, v5);
  sub_26B9ACFA4();

  static SearchResults.empty(queryID:)(v1, v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  v9 = *(v0 + 73);
  v10 = *(v0 + 80);
  v11 = *(v0 + 88);
  *(v0 + 96) = *(v0 + 56);
  *(v0 + 104) = v7;
  *(v0 + 112) = v8;
  *(v0 + 113) = v9;
  *(v0 + 120) = v10;
  *(v0 + 128) = v11;
  v14 = (v2 + *v2);
  v12 = swift_task_alloc();
  *(v0 + 488) = v12;
  *v12 = v0;
  v12[1] = sub_26B9791B4;

  return v14(v0 + 96);
}

unint64_t sub_26B979750()
{
  result = qword_2804263F0;
  if (!qword_2804263F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2804263F0);
  }

  return result;
}

uint64_t sub_26B97979C()
{
  sub_26B92A538();
  swift_beginAccess();
  v1 = *(v0 + 8);
  v2 = MEMORY[0x277D84F90];

  return v1(v2);
}

uint64_t ToolKitQueryDataSource.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_26B97986C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 112))();
  *a1 = result;
  return result;
}

uint64_t sub_26B9798A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + 120) + **(**v4 + 120));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_26B8EC52C;

  return v12(a1, a2, a3, a4);
}

uint64_t sub_26B9799E8()
{
  v4 = (*(**v0 + 136) + **(**v0 + 136));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26B8EB6C8;

  return v4();
}

uint64_t dispatch thunk of ToolKitQueryDataSource.start(with:context:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 120) + **(*v4 + 120));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_26B8EC52C;

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ToolKitQueryDataSource.deactivate()()
{
  v4 = (*(*v0 + 136) + **(*v0 + 136));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26B8EB6C8;

  return v4();
}

uint64_t type metadata accessor for ToolKitQueryHelper.RestrictedTypeIdentifier(uint64_t a1)
{
  result = qword_28042F9F0;
  if (!qword_28042F9F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26B979E24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260C8, &qword_26B9B0050);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static ToolKitQueryHelper.resolveQuery(for:parameterDefinition:invocation:kind:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  *(v5 + 144) = a1;
  *(v5 + 152) = a4;
  v10 = sub_26B9AB984();
  *(v5 + 160) = v10;
  *(v5 + 168) = *(v10 - 8);
  *(v5 + 176) = swift_task_alloc();
  v11 = *a5;
  *(v5 + 209) = *a5;
  *(v5 + 184) = sub_26B9AC804();
  *(v5 + 192) = sub_26B9AC7F4();
  *(v5 + 208) = v11;
  v12 = swift_task_alloc();
  *(v5 + 200) = v12;
  *v12 = v5;
  v12[1] = sub_26B979FE0;

  return sub_26B97A2B4(v5 + 16, a2, a3, a4, (v5 + 208));
}

uint64_t sub_26B979FE0()
{

  v1 = sub_26B9AC7C4();

  return MEMORY[0x2822009F8](sub_26B97A11C, v1, v0);
}

uint64_t sub_26B97A11C()
{
  v11 = v0;

  sub_26B907F08(v0 + 16, v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426390, &qword_26B9B0EC8);
  if (swift_dynamicCast())
  {

LABEL_4:
    v2 = *(v0 + 168);
    v1 = *(v0 + 176);
    v4 = *(v0 + 152);
    v3 = *(v0 + 160);
    v5 = *(v0 + 144);
    sub_26B907F08(v0 + 16, v0 + 96);
    (*(v2 + 16))(v1, v4, v3);
    LOBYTE(v3) = sub_26B906128();
    v5[3] = type metadata accessor for RunnableParameterQuery(0);
    v5[4] = sub_26B97D6B0(&qword_280426DC8, type metadata accessor for RunnableParameterQuery, &protocol conformance descriptor for RunnableParameterQuery);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
    RunnableParameterQuery.init(parameterQuery:invocation:isStatusRow:statusRow:)((v0 + 96), v1, v3 & 1, 0, boxed_opaque_existential_1);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    goto LABEL_6;
  }

  v9 = *(v0 + 209);
  v10 = 0;
  if (static ParameterQueryInvocationKind.== infix(_:_:)(&v9, &v10))
  {
    goto LABEL_4;
  }

  sub_26B8ECB70((v0 + 16), *(v0 + 144));
LABEL_6:

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_26B97A2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *(v5 + 480) = a3;
  *(v5 + 488) = a4;
  *(v5 + 464) = a1;
  *(v5 + 472) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260C8, &qword_26B9B0050);
  *(v5 + 496) = swift_task_alloc();
  v7 = sub_26B9AB984();
  *(v5 + 504) = v7;
  *(v5 + 512) = *(v7 - 8);
  *(v5 + 520) = swift_task_alloc();
  *(v5 + 528) = swift_task_alloc();
  v8 = sub_26B9AC0E4();
  *(v5 + 536) = v8;
  *(v5 + 544) = *(v8 - 8);
  *(v5 + 552) = swift_task_alloc();
  *(v5 + 560) = swift_task_alloc();
  v9 = sub_26B9ABF24();
  *(v5 + 568) = v9;
  *(v5 + 576) = *(v9 - 8);
  *(v5 + 584) = swift_task_alloc();
  v10 = sub_26B9ABFD4();
  *(v5 + 592) = v10;
  *(v5 + 600) = *(v10 - 8);
  *(v5 + 608) = swift_task_alloc();
  v11 = sub_26B9ABFF4();
  *(v5 + 616) = v11;
  *(v5 + 624) = *(v11 - 8);
  *(v5 + 632) = swift_task_alloc();
  *(v5 + 640) = swift_task_alloc();
  *(v5 + 648) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260F0, &qword_26B9B0D10);
  *(v5 + 656) = swift_task_alloc();
  v12 = sub_26B9ABEB4();
  *(v5 + 664) = v12;
  *(v5 + 672) = *(v12 - 8);
  *(v5 + 680) = swift_task_alloc();
  v13 = type metadata accessor for ToolKitQueryHelper.RestrictedTypeIdentifier(0);
  *(v5 + 688) = v13;
  *(v5 + 696) = *(v13 - 8);
  *(v5 + 704) = swift_task_alloc();
  *(v5 + 769) = *a5;
  sub_26B9AC804();
  *(v5 + 712) = sub_26B9AC7F4();
  v15 = sub_26B9AC7C4();
  *(v5 + 720) = v15;
  *(v5 + 728) = v14;

  return MEMORY[0x2822009F8](sub_26B97A684, v15, v14);
}

uint64_t sub_26B97A684()
{
  v87 = v0;
  sub_26B907F08(*(v0 + 472), v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426DF0, &qword_26B9B4490);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426DF8, &qword_26B9B4498);
  if (!swift_dynamicCast())
  {
    v10 = *(v0 + 464);

    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    sub_26B8EACD8(v0 + 96, &qword_280426E00, &qword_26B9B44A0);
    *(v10 + 24) = &type metadata for EmptyQuery;
    *(v10 + 32) = sub_26B903C04();
    EmptyQuery.init()();
LABEL_26:

    v55 = *(v0 + 8);

    return v55();
  }

  v1 = *(v0 + 696);
  v2 = *(v0 + 688);
  v3 = *(v0 + 680);
  v4 = *(v0 + 672);
  v5 = *(v0 + 664);
  v6 = *(v0 + 656);
  v7 = sub_26B8ECB70((v0 + 96), v0 + 16);
  MEMORY[0x26D685FA0](v7);
  sub_26B97BCE4(v6);
  (*(v4 + 8))(v3, v5);
  if ((*(v1 + 48))(v6, 1, v2) == 1)
  {
    v8 = *(v0 + 656);
    v9 = *(v0 + 464);

    sub_26B8EACD8(v8, &qword_2804260F0, &qword_26B9B0D10);
    *(v9 + 24) = &type metadata for EmptyQuery;
    *(v9 + 32) = sub_26B903C04();
    EmptyQuery.init()();
LABEL_25:
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    goto LABEL_26;
  }

  v11 = *(v0 + 704);
  v12 = *(v0 + 688);
  sub_26B9043BC(*(v0 + 656), v11);
  *(v0 + 160) = &type metadata for EmptyQuery;
  *(v0 + 168) = sub_26B903C04();
  EmptyQuery.init()();
  v13 = *(v11 + *(v12 + 20));
  if (*(v13 + 16))
  {
    v14 = *(v0 + 648);
    v15 = *(v0 + 640);
    v16 = *(v0 + 624);
    v17 = *(v0 + 616);
    v18 = *(v16 + 16);
    v18(v14, v13 + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v17);
    v18(v15, v14, v17);
    v19 = (*(v16 + 88))(v15, v17);
    v20 = *(v0 + 640);
    v21 = *(v0 + 624);
    v22 = *(v0 + 616);
    if (v19 == *MEMORY[0x277D72FA0])
    {
      v23 = *(v0 + 608);
      v24 = *(v0 + 600);
      v25 = *(v0 + 592);
      (*(v21 + 96))(*(v0 + 640), v22);
      v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426950, &qword_26B9B3490) + 48);
      (*(v24 + 32))(v23, v20, v25);
      v27 = sub_26B9ABF64();
      (*(*(v27 - 8) + 8))(v20 + v26, v27);
      sub_26B9ABFC4();
      LOBYTE(v26) = sub_26B9AC5E4();

      (*(v24 + 8))(v23, v25);
      if (v26)
      {
        v80 = *(v0 + 769);
        v77 = *(v0 + 616);
        v78 = *(v0 + 648);
        v28 = *(v0 + 560);
        v29 = *(v0 + 544);
        v30 = *(v0 + 536);
        v75 = *(v0 + 528);
        v76 = *(v0 + 632);
        v32 = *(v0 + 504);
        v31 = *(v0 + 512);
        v34 = *(v0 + 480);
        v33 = *(v0 + 488);
        (*(*(v0 + 576) + 16))(*(v0 + 584), *(v0 + 704), *(v0 + 568));
        (*(v29 + 16))(v28, v34, v30);
        v18(v76, v78, v77);
        (*(v31 + 16))(v75, v33, v32);
        v35 = *(v0 + 40);
        v36 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), v35);
        *(v0 + 736) = (*(v36 + 16))(v35, v36);
        *(v0 + 744) = v37;
        v83 = v80;
        v84 = 0;
        *(v0 + 770) = static ParameterQueryInvocationKind.== infix(_:_:)(&v83, &v84);
        v85 = v80;
        v86 = 0;
        if (static ParameterQueryInvocationKind.== infix(_:_:)(&v85, &v86))
        {
          v38 = *(v0 + 472);
          v39 = v38[3];
          v40 = v38[4];
          __swift_project_boxed_opaque_existential_1(v38, v39);
          v41 = swift_task_alloc();
          *(v0 + 752) = v41;
          *v41 = v0;
          v41[1] = sub_26B97B0C0;
          v42 = *(v0 + 496);

          return MEMORY[0x2821E5078](v42, v39, v40);
        }

        v63 = *(v0 + 496);

        v64 = sub_26B9ABE84();
        (*(*(v64 - 8) + 56))(v63, 1, 1, v64);
        LOBYTE(v63) = *(v0 + 770);
        v65 = *(v0 + 744);
        v66 = *(v0 + 736);
        v67 = *(v0 + 632);
        v68 = *(v0 + 624);
        v79 = *(v0 + 616);
        v82 = *(v0 + 648);
        v69 = *(v0 + 584);
        v70 = *(v0 + 560);
        v71 = *(v0 + 528);
        v72 = *(v0 + 496);
        *(v0 + 440) = type metadata accessor for AppEntityQuery(0);
        *(v0 + 448) = sub_26B97D6B0(&qword_280426900, type metadata accessor for AppEntityQuery, &protocol conformance descriptor for AppEntityQuery);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 416));
        AppEntityQuery.init(typeIdentifier:parameterDefinition:restrictionContext:toolInvocation:searchString:showAllCases:selectedValue:)(v69, v70, v67, v71, v66, v65, v63, v72, boxed_opaque_existential_1);
        (*(v68 + 8))(v82, v79);
        __swift_destroy_boxed_opaque_existential_1((v0 + 136));
        sub_26B8ECB70((v0 + 416), v0 + 136);
LABEL_19:
        sub_26B907F08(v0 + 136, v0 + 296);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426390, &qword_26B9B0EC8);
        if (!swift_dynamicCast())
        {
          goto LABEL_23;
        }

        v49 = *(v0 + 40);
        v50 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), v49);
        v51 = (*(v50 + 16))(v49, v50);
        v53 = v52;

        v54 = HIBYTE(v53) & 0xF;
        if ((v53 & 0x2000000000000000) == 0)
        {
          v54 = v51 & 0xFFFFFFFFFFFFLL;
        }

        if (!v54)
        {
          v56 = *(v0 + 704);
          v57 = *(v0 + 552);
          v58 = *(v0 + 544);
          v59 = *(v0 + 536);
          v60 = *(v0 + 520);
          v61 = *(v0 + 480);
          (*(*(v0 + 512) + 16))(v60, *(v0 + 488), *(v0 + 504));
          (*(v58 + 16))(v57, v61, v59);
          *(v0 + 360) = type metadata accessor for SuggestedParameterQuery(0);
          *(v0 + 368) = sub_26B97D6B0(&qword_280426E18, type metadata accessor for SuggestedParameterQuery, &protocol conformance descriptor for SuggestedParameterQuery);
          v62 = __swift_allocate_boxed_opaque_existential_1((v0 + 336));
          SuggestedParameterQuery.init(toolInvocation:parameterDefinition:)(v60, v57, v62);
          sub_26B904420(v56);
          __swift_destroy_boxed_opaque_existential_1((v0 + 136));
          sub_26B8ECB70((v0 + 336), v0 + 136);
        }

        else
        {
LABEL_23:
          sub_26B904420(*(v0 + 704));
        }

        sub_26B8ECB70((v0 + 136), *(v0 + 464));
        goto LABEL_25;
      }

      (*(*(v0 + 624) + 8))(*(v0 + 648), *(v0 + 616));
    }

    else
    {
      v43 = *(v21 + 8);
      v43(*(v0 + 640), v22);
      v43(*(v0 + 648), *(v0 + 616));
    }
  }

  sub_26B907F08(*(v0 + 472), v0 + 216);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426E08, &qword_26B9B44A8);
  if ((swift_dynamicCast() & 1) == 0)
  {

    *(v0 + 288) = 0;
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    sub_26B8EACD8(v0 + 256, &qword_280426E10, &unk_26B9B44B0);
    goto LABEL_19;
  }

  v44 = *(v0 + 769);
  sub_26B8ECB70((v0 + 256), v0 + 176);
  v45 = *(v0 + 200);
  v46 = *(v0 + 208);
  __swift_project_boxed_opaque_existential_1((v0 + 176), v45);
  *(v0 + 768) = v44;
  v81 = (*(v46 + 16) + **(v46 + 16));
  v47 = swift_task_alloc();
  *(v0 + 760) = v47;
  *v47 = v0;
  v47[1] = sub_26B97B558;
  v48 = *(v0 + 488);

  return v81(v0 + 376, v48, v0 + 768, v45, v46);
}

uint64_t sub_26B97B0C0()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 728);
    v4 = *(v2 + 720);
    v5 = sub_26B97B934;
  }

  else
  {
    v3 = *(v2 + 728);
    v4 = *(v2 + 720);
    v5 = sub_26B97B1EC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26B97B1EC()
{

  v1 = *(v0 + 770);
  v2 = *(v0 + 744);
  v3 = *(v0 + 736);
  v4 = *(v0 + 632);
  v5 = *(v0 + 624);
  v26 = *(v0 + 616);
  v27 = *(v0 + 648);
  v6 = *(v0 + 584);
  v7 = *(v0 + 560);
  v8 = *(v0 + 528);
  v9 = *(v0 + 496);
  *(v0 + 440) = type metadata accessor for AppEntityQuery(0);
  *(v0 + 448) = sub_26B97D6B0(&qword_280426900, type metadata accessor for AppEntityQuery, &protocol conformance descriptor for AppEntityQuery);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 416));
  AppEntityQuery.init(typeIdentifier:parameterDefinition:restrictionContext:toolInvocation:searchString:showAllCases:selectedValue:)(v6, v7, v4, v8, v3, v2, v1, v9, boxed_opaque_existential_1);
  (*(v5 + 8))(v27, v26);
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  sub_26B8ECB70((v0 + 416), v0 + 136);
  sub_26B907F08(v0 + 136, v0 + 296);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426390, &qword_26B9B0EC8);
  if (!swift_dynamicCast())
  {
    goto LABEL_5;
  }

  v11 = *(v0 + 40);
  v12 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v11);
  v13 = (*(v12 + 16))(v11, v12);
  v15 = v14;

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {
    v19 = *(v0 + 704);
    v20 = *(v0 + 552);
    v21 = *(v0 + 544);
    v22 = *(v0 + 536);
    v23 = *(v0 + 520);
    v24 = *(v0 + 480);
    (*(*(v0 + 512) + 16))(v23, *(v0 + 488), *(v0 + 504));
    (*(v21 + 16))(v20, v24, v22);
    *(v0 + 360) = type metadata accessor for SuggestedParameterQuery(0);
    *(v0 + 368) = sub_26B97D6B0(&qword_280426E18, type metadata accessor for SuggestedParameterQuery, &protocol conformance descriptor for SuggestedParameterQuery);
    v25 = __swift_allocate_boxed_opaque_existential_1((v0 + 336));
    SuggestedParameterQuery.init(toolInvocation:parameterDefinition:)(v23, v20, v25);
    sub_26B904420(v19);
    __swift_destroy_boxed_opaque_existential_1((v0 + 136));
    sub_26B8ECB70((v0 + 336), v0 + 136);
  }

  else
  {
LABEL_5:
    sub_26B904420(*(v0 + 704));
  }

  sub_26B8ECB70((v0 + 136), *(v0 + 464));
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_26B97B558()
{
  v1 = *v0;

  v2 = *(v1 + 728);
  v3 = *(v1 + 720);

  return MEMORY[0x2822009F8](sub_26B97B678, v3, v2);
}

uint64_t sub_26B97B678()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  sub_26B8ECB70((v0 + 376), v0 + 136);
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  sub_26B907F08(v0 + 136, v0 + 296);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426390, &qword_26B9B0EC8);
  if (!swift_dynamicCast())
  {
    goto LABEL_5;
  }

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  v3 = (*(v2 + 16))(v1, v2);
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    v9 = *(v0 + 704);
    v10 = *(v0 + 552);
    v11 = *(v0 + 544);
    v12 = *(v0 + 536);
    v13 = *(v0 + 520);
    v14 = *(v0 + 480);
    (*(*(v0 + 512) + 16))(v13, *(v0 + 488), *(v0 + 504));
    (*(v11 + 16))(v10, v14, v12);
    *(v0 + 360) = type metadata accessor for SuggestedParameterQuery(0);
    *(v0 + 368) = sub_26B97D6B0(&qword_280426E18, type metadata accessor for SuggestedParameterQuery, &protocol conformance descriptor for SuggestedParameterQuery);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 336));
    SuggestedParameterQuery.init(toolInvocation:parameterDefinition:)(v13, v10, boxed_opaque_existential_1);
    sub_26B904420(v9);
    __swift_destroy_boxed_opaque_existential_1((v0 + 136));
    sub_26B8ECB70((v0 + 336), v0 + 136);
  }

  else
  {
LABEL_5:
    sub_26B904420(*(v0 + 704));
  }

  sub_26B8ECB70((v0 + 136), *(v0 + 464));
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_26B97B934()
{
  v1 = *(v0 + 496);

  v2 = sub_26B9ABE84();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  LOBYTE(v1) = *(v0 + 770);
  v3 = *(v0 + 744);
  v4 = *(v0 + 736);
  v5 = *(v0 + 632);
  v6 = *(v0 + 624);
  v27 = *(v0 + 616);
  v28 = *(v0 + 648);
  v7 = *(v0 + 584);
  v8 = *(v0 + 560);
  v9 = *(v0 + 528);
  v10 = *(v0 + 496);
  *(v0 + 440) = type metadata accessor for AppEntityQuery(0);
  *(v0 + 448) = sub_26B97D6B0(&qword_280426900, type metadata accessor for AppEntityQuery, &protocol conformance descriptor for AppEntityQuery);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 416));
  AppEntityQuery.init(typeIdentifier:parameterDefinition:restrictionContext:toolInvocation:searchString:showAllCases:selectedValue:)(v7, v8, v5, v9, v4, v3, v1, v10, boxed_opaque_existential_1);
  (*(v6 + 8))(v28, v27);
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  sub_26B8ECB70((v0 + 416), v0 + 136);
  sub_26B907F08(v0 + 136, v0 + 296);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426390, &qword_26B9B0EC8);
  if (!swift_dynamicCast())
  {
    goto LABEL_5;
  }

  v12 = *(v0 + 40);
  v13 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v12);
  v14 = (*(v13 + 16))(v12, v13);
  v16 = v15;

  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {
    v20 = *(v0 + 704);
    v21 = *(v0 + 552);
    v22 = *(v0 + 544);
    v23 = *(v0 + 536);
    v24 = *(v0 + 520);
    v25 = *(v0 + 480);
    (*(*(v0 + 512) + 16))(v24, *(v0 + 488), *(v0 + 504));
    (*(v22 + 16))(v21, v25, v23);
    *(v0 + 360) = type metadata accessor for SuggestedParameterQuery(0);
    *(v0 + 368) = sub_26B97D6B0(&qword_280426E18, type metadata accessor for SuggestedParameterQuery, &protocol conformance descriptor for SuggestedParameterQuery);
    v26 = __swift_allocate_boxed_opaque_existential_1((v0 + 336));
    SuggestedParameterQuery.init(toolInvocation:parameterDefinition:)(v24, v21, v26);
    sub_26B904420(v20);
    __swift_destroy_boxed_opaque_existential_1((v0 + 136));
    sub_26B8ECB70((v0 + 336), v0 + 136);
  }

  else
  {
LABEL_5:
    sub_26B904420(*(v0 + 704));
  }

  sub_26B8ECB70((v0 + 136), *(v0 + 464));
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_26B97BCE4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26B9ABF24();
  v93 = *(v2 - 8);
  v94 = v2;
  MEMORY[0x28223BE20](v2);
  v92 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260C8, &qword_26B9B0050);
  MEMORY[0x28223BE20](v4 - 8);
  v88 = &v82 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260F0, &qword_26B9B0D10);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v91 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v87 = &v82 - v10;
  MEMORY[0x28223BE20](v9);
  v90 = &v82 - v11;
  v12 = type metadata accessor for ToolKitQueryHelper.RestrictedTypeIdentifier(0);
  v13 = *(v12 - 1);
  v14 = MEMORY[0x28223BE20](v12);
  v83 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v85 = &v82 - v17;
  MEMORY[0x28223BE20](v16);
  v86 = &v82 - v18;
  v19 = sub_26B9ABEB4();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v89 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v82 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v82 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v82 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = (&v82 - v32);
  v34 = v95;
  v95 = *(v20 + 16);
  v95(&v82 - v32, v34, v19);
  v35 = (*(v20 + 88))(v33, v19);
  if (v35 == *MEMORY[0x277D72AD0])
  {
    (*(v20 + 96))(v33, v19);
    v36 = swift_projectBox();
    v38 = v92;
    v37 = v93;
    v39 = v94;
    (*(v93 + 16))(v92, v36, v94);
    (*(v37 + 32))(a1, v38, v39);
    v40 = v12[6];
    v41 = sub_26B9ABE84();
    (*(*(v41 - 8) + 56))(a1 + v40, 1, 1, v41);
    *(a1 + v12[5]) = MEMORY[0x277D84F90];
    *(a1 + v12[7]) = 0;
    *(a1 + v12[8]) = 0;
    (*(v13 + 56))(a1, 0, 1, v12);
  }

  v92 = v12;
  v84 = v13;
  v82 = a1;
  if (v35 == *MEMORY[0x277D72AB0])
  {
    (*(v20 + 96))(v33, v19);
    v42 = swift_projectBox();
    v95(v28, v42, v19);
    v43 = v90;
    sub_26B97BCE4(v90);
    (*(v20 + 8))(v28, v19);
    v44 = v84;
    v45 = v92;
    if ((*(v84 + 48))(v43, 1, v92) != 1)
    {
      v53 = v43;
      v54 = v86;
      sub_26B9043BC(v53, v86);
      *(v54 + v45[8]) = 1;
      v55 = v82;
      sub_26B9043BC(v54, v82);
      (*(v44 + 56))(v55, 0, 1, v45);
    }

    v46 = v43;
    goto LABEL_9;
  }

  if (v35 == *MEMORY[0x277D72AE8])
  {
    (*(v20 + 96))(v33, v19);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426DD8, &qword_26B9B4440);
    v48 = swift_projectBox();
    v49 = *(v47 + 48);
    v95(v25, v48, v19);
    v50 = v48 + v49;
    v51 = v88;
    sub_26B9523F8(v50, v88);
    v52 = v87;
    sub_26B97BCE4(v87);
    (*(v20 + 8))(v25, v19);
    v44 = v84;
    v45 = v92;
    if ((*(v84 + 48))(v52, 1, v92) != 1)
    {
      v68 = v85;
      sub_26B9043BC(v52, v85);
      sub_26B979E24(v51, v68 + v45[6]);
      *(v68 + v45[7]) = 1;
      v69 = v82;
      sub_26B97C7E8(v68, v82);
      (*(v44 + 56))(v69, 0, 1, v45);
      sub_26B904420(v68);
    }

    sub_26B8EACD8(v51, &qword_2804260C8, &qword_26B9B0050);
    v46 = v52;
LABEL_9:
    sub_26B8EACD8(v46, &qword_2804260F0, &qword_26B9B0D10);
    (*(v44 + 56))(v82, 1, 1, v45);
  }

  if (v35 == *MEMORY[0x277D72AD8])
  {
    (*(v20 + 96))(v33, v19);
    v90 = *v33;
    v57 = *(v90 + 16);
    v58 = v57 + 56;
    v59 = 1 << *(v57 + 32);
    v60 = -1;
    if (v59 < 64)
    {
      v60 = ~(-1 << v59);
    }

    v61 = v60 & *(v57 + 56);
    v62 = (v59 + 63) >> 6;
    v93 = v20 + 8;
    v94 = v57;
    v63 = (v84 + 48);

    v64 = 0;
    v65 = v91;
    if (v61)
    {
      while (1)
      {
        v66 = v64;
LABEL_20:
        v67 = v89;
        v95(v89, *(v94 + 48) + *(v20 + 72) * (__clz(__rbit64(v61)) | (v66 << 6)), v19);
        sub_26B97BCE4(v65);
        v65 = v91;
        (*(v20 + 8))(v67, v19);
        if ((*v63)(v65, 1, v92) != 1)
        {
          break;
        }

        v61 &= v61 - 1;
        result = sub_26B8EACD8(v65, &qword_2804260F0, &qword_26B9B0D10);
        v64 = v66;
        if (!v61)
        {
          goto LABEL_17;
        }
      }

      v79 = v83;
      sub_26B9043BC(v65, v83);
      v80 = v79;
      v81 = v82;
      sub_26B9043BC(v80, v82);
      (*(v84 + 56))(v81, 0, 1, v92);
    }

LABEL_17:
    while (1)
    {
      v66 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        break;
      }

      if (v66 >= v62)
      {

        (*(v84 + 56))(v82, 1, 1, v92);
      }

      v61 = *(v58 + 8 * v66);
      ++v64;
      if (v61)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
    if (v35 == *MEMORY[0x277D72AB8])
    {
      (*(v20 + 96))(v33, v19);
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426DD0, &qword_26B9B4438);
      v71 = swift_projectBox();
      v72 = *(v71 + *(v70 + 48));
      v73 = v82;
      (*(v93 + 16))(v82, v71, v94);
      v74 = v92;
      v75 = *(v92 + 6);
      v76 = sub_26B9ABE84();
      (*(*(v76 - 8) + 56))(v73 + v75, 1, 1, v76);
      *(v73 + v74[5]) = v72;
      *(v73 + v74[7]) = 0;
      *(v73 + v74[8]) = 0;
      (*(v84 + 56))(v73, 0, 1, v74);
    }

    v77 = v82;
    if (v35 == *MEMORY[0x277D72AE0])
    {
      (*(v20 + 96))(v33, v19);
      v78 = swift_projectBox();
      v95(v31, v78, v19);
      sub_26B97BCE4(v77);
      (*(v20 + 8))(v31, v19);
    }

    (*(v84 + 56))(v82, 1, 1, v92);
    return (*(v20 + 8))(v33, v19);
  }

  return result;
}

uint64_t sub_26B97C7E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitQueryHelper.RestrictedTypeIdentifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static ToolKitQueryHelper.resolveQuery(for:parameter:invocation:searchString:kind:selectedValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8)
{
  *(v8 + 104) = a6;
  *(v8 + 112) = a8;
  *(v8 + 88) = a4;
  *(v8 + 96) = a5;
  *(v8 + 72) = a2;
  *(v8 + 80) = a3;
  *(v8 + 64) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260C8, &qword_26B9B0050);
  *(v8 + 120) = swift_task_alloc();
  v10 = sub_26B9AB984();
  *(v8 + 128) = v10;
  *(v8 + 136) = *(v10 - 8);
  *(v8 + 144) = swift_task_alloc();
  v11 = sub_26B9AC0E4();
  *(v8 + 152) = v11;
  *(v8 + 160) = *(v11 - 8);
  *(v8 + 168) = swift_task_alloc();
  v12 = sub_26B9ABFF4();
  *(v8 + 176) = v12;
  *(v8 + 184) = *(v12 - 8);
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  v13 = sub_26B9AC014();
  *(v8 + 208) = v13;
  *(v8 + 216) = *(v13 - 8);
  *(v8 + 224) = swift_task_alloc();
  v14 = sub_26B9ABF24();
  *(v8 + 232) = v14;
  *(v8 + 240) = *(v14 - 8);
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260F0, &qword_26B9B0D10);
  *(v8 + 264) = swift_task_alloc();
  v15 = sub_26B9ABEB4();
  *(v8 + 272) = v15;
  *(v8 + 280) = *(v15 - 8);
  *(v8 + 288) = swift_task_alloc();
  v16 = type metadata accessor for ToolKitQueryHelper.RestrictedTypeIdentifier(0);
  *(v8 + 296) = v16;
  *(v8 + 304) = *(v16 - 8);
  *(v8 + 312) = swift_task_alloc();
  *(v8 + 320) = *a7;

  return MEMORY[0x2822009F8](sub_26B97CBD4, 0, 0);
}

uint64_t sub_26B97CBD4()
{
  v69 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);
  v4 = *(v0 + 280);
  v3 = *(v0 + 288);
  v6 = *(v0 + 264);
  v5 = *(v0 + 272);
  MEMORY[0x26D685FA0]();
  sub_26B97BCE4(v6);
  (*(v4 + 8))(v3, v5);
  if ((*(v2 + 48))(v6, 1, v1) == 1)
  {
    v7 = *(v0 + 64);
    sub_26B8EACD8(*(v0 + 264), &qword_2804260F0, &qword_26B9B0D10);
    *(v7 + 24) = &type metadata for EmptyQuery;
    *(v7 + 32) = sub_26B903C04();
    EmptyQuery.init()();
    goto LABEL_12;
  }

  v8 = *(v0 + 256);
  v9 = *(v0 + 232);
  v10 = *(v0 + 240);
  sub_26B9043BC(*(v0 + 264), *(v0 + 312));
  sub_26B9ABF74();
  v11 = sub_26B91EBC0(v8);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  (*(v10 + 8))(v8, v9);
  if (!v13)
  {
LABEL_9:
    v22 = *(v0 + 312);
    v39 = *(v0 + 64);
    *(v39 + 24) = &type metadata for EmptyQuery;
    *(v39 + 32) = sub_26B903C04();
    EmptyQuery.init()();
    goto LABEL_10;
  }

  v19 = *(v0 + 216);
  v18 = *(v0 + 224);
  v20 = *(v0 + 208);
  (*(v19 + 104))(v18, *MEMORY[0x277D73000], v20);
  v21 = sub_26B9ABF84();
  (*(v19 + 8))(v18, v20);
  v22 = *(v0 + 312);
  if ((v21 & 1) == 0)
  {
    v28 = *(v0 + 296);

    v29 = *(v22 + *(v28 + 20));
    if (*(v29 + 16))
    {
      v61 = *(v0 + 320);
      v30 = *(v0 + 200);
      v31 = *(v0 + 176);
      v32 = *(v0 + 184);
      v33 = *(v0 + 160);
      v54 = *(v0 + 152);
      v55 = *(v0 + 168);
      v34 = *(v0 + 136);
      v63 = *(v0 + 144);
      v57 = *(v0 + 192);
      v59 = *(v0 + 128);
      v35 = *(v0 + 80);
      v56 = *(v0 + 88);
      v36 = *(v32 + 16);
      v36(v30, v29 + ((*(v32 + 80) + 32) & ~*(v32 + 80)), v31);
      sub_26B9ABF74();
      (*(v33 + 16))(v55, v35, v54);
      v36(v57, v30, v31);
      (*(v34 + 16))(v63, v56, v59);
      v65 = v61;
      v66 = 0;
      v64 = static ParameterQueryInvocationKind.== infix(_:_:)(&v65, &v66);
      v67 = v61;
      v68 = 0;
      v37 = static ParameterQueryInvocationKind.== infix(_:_:)(&v67, &v68);
      v38 = *(v0 + 120);
      if (v37)
      {
        sub_26B9523F8(*(v0 + 112), *(v0 + 120));
      }

      else
      {
        v43 = sub_26B9ABE84();
        (*(*(v43 - 8) + 56))(v38, 1, 1, v43);
      }

      v44 = *(v0 + 248);
      v45 = *(v0 + 192);
      v60 = *(v0 + 200);
      v62 = *(v0 + 312);
      v46 = *(v0 + 184);
      v58 = *(v0 + 176);
      v47 = *(v0 + 168);
      v48 = *(v0 + 144);
      v49 = *(v0 + 120);
      v50 = *(v0 + 96);
      v51 = *(v0 + 104);
      v52 = *(v0 + 64);
      v52[3] = type metadata accessor for AppEntityQuery(0);
      v52[4] = sub_26B97D6B0(&qword_280426900, type metadata accessor for AppEntityQuery, &protocol conformance descriptor for AppEntityQuery);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v52);

      AppEntityQuery.init(typeIdentifier:parameterDefinition:restrictionContext:toolInvocation:searchString:showAllCases:selectedValue:)(v44, v47, v45, v48, v50, v51, v64, v49, boxed_opaque_existential_1);
      (*(v46 + 8))(v60, v58);
      v40 = v62;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v24 = *(v0 + 96);
  v23 = *(v0 + 104);
  v25 = *(v0 + 64);

  sub_26B9826E0(v15, v17, v11, v13, v24, v23, (v0 + 16));
  v25[3] = &type metadata for IndexedEntityParameterQuery;
  v25[4] = sub_26B97D0E0();
  v26 = swift_allocObject();
  *v25 = v26;
  v27 = *(v0 + 32);
  v26[1] = *(v0 + 16);
  v26[2] = v27;
  v26[3] = *(v0 + 48);
LABEL_10:
  v40 = v22;
LABEL_11:
  sub_26B904420(v40);
LABEL_12:

  v41 = *(v0 + 8);

  return v41();
}

unint64_t sub_26B97D0E0()
{
  result = qword_280426DE0;
  if (!qword_280426DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426DE0);
  }

  return result;
}

uint64_t static ToolKitQueryHelper.restrictedTypeIdentifier(from:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26B9ABEB4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x26D685FA0](v4);
  sub_26B97BCE4(a1);
  return (*(v3 + 8))(v6, v2);
}

uint64_t static ToolKitQueryHelper.resolveTypeIdentifier(from:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260F0, &qword_26B9B0D10);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  sub_26B97BCE4(&v10 - v3);
  v5 = type metadata accessor for ToolKitQueryHelper.RestrictedTypeIdentifier(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    sub_26B8EACD8(v4, &qword_2804260F0, &qword_26B9B0D10);
    v6 = sub_26B9ABF24();
    return (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  }

  else
  {
    v8 = sub_26B9ABF24();
    v9 = *(v8 - 8);
    (*(v9 + 16))(a1, v4, v8);
    sub_26B904420(v4);
    return (*(v9 + 56))(a1, 0, 1, v8);
  }
}

uint64_t static ToolKitQueryHelper.defaultValue(from:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260F0, &qword_26B9B0D10);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  sub_26B97BCE4(&v8 - v3);
  v5 = type metadata accessor for ToolKitQueryHelper.RestrictedTypeIdentifier(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    sub_26B8EACD8(v4, &qword_2804260F0, &qword_26B9B0D10);
    v6 = sub_26B9ABE84();
    return (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  }

  else
  {
    sub_26B9523F8(&v4[*(v5 + 24)], a1);
    return sub_26B904420(v4);
  }
}

void sub_26B97D540(uint64_t a1)
{
  sub_26B9ABF24();
  if (v1 <= 0x3F)
  {
    sub_26B97D64C(319, &qword_280426DE8, MEMORY[0x277D72FA8], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_26B97D64C(319, &qword_280426918, MEMORY[0x277D72A78], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26B97D64C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_26B97D6B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26B97D6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[6] = a6;
  v7[7] = v6;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a1;
  v7[3] = a2;
  return MEMORY[0x2822009F8](sub_26B97D720, 0, 0);
}

uint64_t sub_26B97D720()
{
  v1 = v0[3];
  v16 = v0[6];
  swift_getAssociatedTypeWitness();
  v2 = swift_dynamicCastUnknownClass();
  if (v2)
  {
    v3 = v2;
    v4 = *(v16 + 24);
    v5 = v1;
    v15 = (v4 + *v4);
    v6 = swift_task_alloc();
    v0[8] = v6;
    *v6 = v0;
    v6[1] = sub_26B97D8FC;
    v7 = v0[6];
    v8 = v0[4];
    v9 = v0[5];
    v10 = v0[2];

    return v15(v10, v3, v8, v9, v7);
  }

  else
  {
    v12 = v0[2];
    v13 = type metadata accessor for ContextualTypedValue(0);
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_26B97D8FC()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_26B97DA74;
  }

  else
  {
    v2 = sub_26B97DA10;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26B97DA10()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26B97DA74()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t type metadata accessor for ContextualTypedValue(uint64_t a1)
{
  result = qword_28042FC20;
  if (!qword_28042FC20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ContextualTypedValue.Presentation.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ContextualTypedValue.Presentation.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ContextualTypedValue.Presentation.symbol.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ContextualTypedValue.Presentation.symbol.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_26B97DC64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = 1;
}

uint64_t sub_26B97DCB0()
{
  v1 = 0x6C6F626D7973;
  if (*v0 != 1)
  {
    v1 = 0x6F54646C756F6873;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_26B97DD10@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26B982250(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26B97DD44(uint64_t a1)
{
  v2 = sub_26B97DF7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B97DD80(uint64_t a1)
{
  v2 = sub_26B97DF7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContextualTypedValue.Presentation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426E20, &qword_26B9B44C8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  v11 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B97DF7C();
  sub_26B9AD014();
  v14 = 0;
  v8 = v10[3];
  sub_26B9ACE14();
  if (v8)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_26B9ACE14();
  v12 = 2;
  sub_26B9ACE34();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_26B97DF7C()
{
  result = qword_28042FA10;
  if (!qword_28042FA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28042FA10);
  }

  return result;
}

double sub_26B97DFD0@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t ContextualTypedValue.Presentation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426E28, &qword_26B9B44D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B97DF7C();
  sub_26B9AD004();
  if (!v2)
  {
    v23 = 0;
    v9 = sub_26B9ACDD4();
    v12 = v11;
    v19 = v9;
    v22 = 1;
    v13 = sub_26B9ACDD4();
    v15 = v14;
    v18 = v13;
    v21 = 2;
    v20 = sub_26B9ACDF4();
    (*(v6 + 8))(v8, v5);
    v16 = v20 & 1;
    v17 = v18;
    *a2 = v19;
    *(a2 + 8) = v12;
    *(a2 + 16) = v17;
    *(a2 + 24) = v15;
    *(a2 + 32) = v16;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ContextualTypedValue.typedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26B9ABE84();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ContextualTypedValue.typedValue.setter(uint64_t a1)
{
  v3 = sub_26B9ABE84();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ContextualTypedValue.presentation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ContextualTypedValue(0) + 20);
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

__n128 ContextualTypedValue.presentation.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1 + *(type metadata accessor for ContextualTypedValue(0) + 20);

  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;
  return result;
}

__n128 sub_26B97E43C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 32);
  v7 = sub_26B9ABE84();
  v10 = *(a2 + 16);
  v11 = *a2;
  (*(*(v7 - 8) + 32))(a3, a1, v7);
  v8 = a3 + *(type metadata accessor for ContextualTypedValue(0) + 20);
  result = v11;
  *v8 = v11;
  *(v8 + 16) = v10;
  *(v8 + 32) = v6;
  return result;
}

uint64_t ContextualTypedValue.generateContent(for:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26B9AB394();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_26B97E544()
{
  if (*v0)
  {
    return 0x61746E6573657270;
  }

  else
  {
    return 0x6C61566465707974;
  }
}

uint64_t sub_26B97E58C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C61566465707974 && a2 == 0xEA00000000006575;
  if (v6 || (sub_26B9ACEB4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x61746E6573657270 && a2 == 0xEC0000006E6F6974)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26B9ACEB4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_26B97E680(uint64_t a1)
{
  v2 = sub_26B97E910();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B97E6BC(uint64_t a1)
{
  v2 = sub_26B97E910();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContextualTypedValue.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426E30, &qword_26B9B44D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B97E910();
  sub_26B9AD014();
  LOBYTE(v14) = 0;
  sub_26B9ABE84();
  sub_26B97F29C(&qword_280426FD0, MEMORY[0x277D72A78], MEMORY[0x277D72A80]);
  sub_26B9ACE44();
  if (!v2)
  {
    v9 = (v3 + *(type metadata accessor for ContextualTypedValue(0) + 20));
    v10 = v9[3];
    v11 = *(v9 + 32);
    v14 = *v9;
    v15 = *(v9 + 1);
    v16 = v10;
    v17 = v11;
    v13[7] = 1;
    sub_26B97E964();

    sub_26B9ACE44();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_26B97E910()
{
  result = qword_28042FA18[0];
  if (!qword_28042FA18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28042FA18);
  }

  return result;
}

unint64_t sub_26B97E964()
{
  result = qword_280426E38;
  if (!qword_280426E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426E38);
  }

  return result;
}

uint64_t ContextualTypedValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v30 = sub_26B9ABE84();
  v27 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426E40, &qword_26B9B44E0);
  v7 = *(v6 - 8);
  v28 = v6;
  v29 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  v10 = type metadata accessor for ContextualTypedValue(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B97E910();
  sub_26B9AD004();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v10;
  v13 = v12;
  v14 = v27;
  LOBYTE(v31) = 0;
  sub_26B97F29C(&qword_280426E48, MEMORY[0x277D72A78], MEMORY[0x277D72A98]);
  v15 = v30;
  v16 = v28;
  sub_26B9ACE04();
  v17 = *(v14 + 32);
  v24 = v13;
  v17(v13, v5, v15);
  v34 = 1;
  sub_26B97ED38();
  sub_26B9ACE04();
  (*(v29 + 8))(v9, v16);
  v18 = v33;
  v19 = v24;
  v20 = v24 + *(v25 + 20);
  v21 = v32;
  *v20 = v31;
  *(v20 + 16) = v21;
  *(v20 + 32) = v18;
  sub_26B97ED8C(v19, v26);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_26B981DC4(v19, type metadata accessor for ContextualTypedValue);
}

unint64_t sub_26B97ED38()
{
  result = qword_280426E50;
  if (!qword_280426E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426E50);
  }

  return result;
}

uint64_t sub_26B97ED8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextualTypedValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B97EE20(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_26B9ABE84();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426A38, &unk_26B9B3B20);
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for ContextualTypedValue(0);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B97EF74, 0, 0);
}

uint64_t sub_26B97EF74()
{
  v1 = [*(v0 + 24) encodedTypedValue];
  if (v1)
  {
    v2 = v1;
    v3 = sub_26B9AB124();
    v5 = v4;

    sub_26B9AAF84();
    swift_allocObject();
    sub_26B9AAF74();
    sub_26B97F29C(&qword_280426E58, type metadata accessor for ContextualTypedValue, &protocol conformance descriptor for ContextualTypedValue);
    sub_26B9AAF64();
    v7 = *(v0 + 72);
    v6 = *(v0 + 80);
    v9 = *(v0 + 56);
    v8 = *(v0 + 64);
    v10 = *(v0 + 16);
    sub_26B922394(v3, v5);

    v11 = *(v7 + 56);
    v11(v9, 0, 1, v8);
    sub_26B96076C(v9, v6);
    sub_26B96076C(v6, v10);
    v11(*(v0 + 16), 0, 1, *(v0 + 64));
  }

  else
  {
    (*(*(v0 + 72) + 56))(*(v0 + 16), 1, 1, *(v0 + 64));
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_26B97F29C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26B97F2E4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26B8EC52C;

  return sub_26B97EE20(a1, a2);
}

uint64_t sub_26B97F384(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262A0, &unk_26B9B3640);
  v2[4] = swift_task_alloc();
  v3 = sub_26B9ABDA4();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_26B9AB054();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426308, &qword_26B9B0CD0);
  v2[11] = swift_task_alloc();
  v5 = sub_26B9AB104();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B97F56C, 0, 0);
}

uint64_t sub_26B97F56C()
{
  v1 = [*(v0 + 24) bundleIdentifier];
  if (v1)
  {
    v2 = v1;
    sub_26B9AC504();
LABEL_3:

    v4 = *(v0 + 48);
    v3 = *(v0 + 56);
    v6 = *(v0 + 32);
    v5 = *(v0 + 40);
    v7 = *(v0 + 16);
    v8 = sub_26B9AC1D4();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    sub_26B9ABD84();
    v9 = sub_26B9ABE44();
    v10 = swift_allocBox();
    v12 = v11;
    (*(v4 + 32))(v11, v3, v5);
    (*(*(v9 - 8) + 104))(v12, *MEMORY[0x277D72970], v9);
    *v7 = v10;
    v13 = *MEMORY[0x277D72A58];
    v14 = sub_26B9ABE84();
    (*(*(v14 - 8) + 104))(v7, v13, v14);
    v15 = type metadata accessor for ContextualTypedValue(0);
    v16 = v7 + *(v15 + 20);
    v16[32] = 0;
    *v16 = 0u;
    *(v16 + 1) = 0u;
    (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
    goto LABEL_8;
  }

  v17 = [*(v0 + 24) applicationPath];
  if (v17)
  {
    v18 = *(v0 + 104);
    v32 = *(v0 + 112);
    v20 = *(v0 + 88);
    v19 = *(v0 + 96);
    v21 = *(v0 + 72);
    v22 = *(v0 + 80);
    v23 = *(v0 + 64);
    v24 = v17;
    sub_26B9AC504();

    (*(v18 + 56))(v20, 1, 1, v19);
    (*(v21 + 104))(v22, *MEMORY[0x277CC91D8], v23);
    sub_26B9AB0F4();
    v25 = objc_allocWithZone(MEMORY[0x277CC1E70]);
    v30 = sub_26B981C70(v32, 0);
    v31 = [v30 bundleIdentifier];
    if (v31)
    {
      v2 = v31;
      sub_26B9AC504();

      goto LABEL_3;
    }

    v26 = *(v0 + 16);
  }

  else
  {
    v26 = *(v0 + 16);
  }

  v27 = type metadata accessor for ContextualTypedValue(0);
  (*(*(v27 - 8) + 56))(v26, 1, 1, v27);
LABEL_8:

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_26B97F944(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26B8EB6C8;

  return sub_26B97F384(a1, a2);
}

uint64_t sub_26B97F9E4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_26B9ABE84();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_26B9ABDE4();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_26B9AB054();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426308, &qword_26B9B0CD0);
  v2[13] = swift_task_alloc();
  v6 = sub_26B9AB104();
  v2[14] = v6;
  v2[15] = *(v6 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B97FBFC, 0, 0);
}

uint64_t sub_26B97FBFC()
{
  v1 = [*(v0 + 24) filePath];
  if (v1)
  {
    v2 = *(v0 + 128);
    v3 = *(v0 + 112);
    v4 = *(v0 + 120);
    v6 = *(v0 + 96);
    v5 = *(v0 + 104);
    v7 = *(v0 + 88);
    v37 = *(v0 + 80);
    v31 = *(v0 + 72);
    v32 = *(v0 + 64);
    v33 = *(v0 + 56);
    v34 = *(v0 + 48);
    v35 = *(v0 + 40);
    v8 = v1;
    sub_26B9AC504();

    (*(v4 + 56))(v5, 1, 1, v3);
    (*(v7 + 104))(v6, *MEMORY[0x277CC91D8], v37);
    sub_26B9AB0F4();
    sub_26B9AB0B4();
    sub_26B9AB094();
    v36 = *(v4 + 8);
    v36(v2, v3);
    v9 = sub_26B9AB0A4();
    v10 = sub_26B9AC4C4();

    v11 = [objc_opt_self() fileWithFileURL:v9 filename:v10 typeIdentifier:0];

    v12 = v11;
    sub_26B9ABDC4();
    v13 = sub_26B9ABE44();
    v14 = swift_allocBox();
    v16 = v15;
    (*(v32 + 16))(v15, v31, v33);
    (*(*(v13 - 8) + 104))(v16, *MEMORY[0x277D72998], v13);
    *v34 = v14;
    (*(v35 + 104))();
    v17 = sub_26B9ABDB4();
    v19 = v18;

    v20 = *(v0 + 136);
    v21 = *(v0 + 112);
    v22 = *(v0 + 48);
    v23 = *(v0 + 32);
    v24 = *(v0 + 40);
    v25 = *(v0 + 16);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    v36(v20, v21);
    (*(v24 + 32))(v25, v22, v23);
    v26 = type metadata accessor for ContextualTypedValue(0);
    v27 = 0;
    v28 = v25 + *(v26 + 20);
    *v28 = v17;
    *(v28 + 8) = v19;
    *(v28 + 16) = xmmword_26B9B3B10;
    *(v28 + 32) = 1;
  }

  else
  {
    v26 = type metadata accessor for ContextualTypedValue(0);
    v27 = 1;
  }

  (*(*(v26 - 8) + 56))(*(v0 + 16), v27, 1);

  v29 = *(v0 + 8);

  return v29();
}