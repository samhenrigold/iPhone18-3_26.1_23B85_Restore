uint64_t sub_1B914DC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ButtonItem(0);
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
  sub_1B8CD28D0(&qword_1EBAC5BA8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText);
  return sub_1B964C580();
}

void Apple_Parsec_Siri_Platform_Watchos_ButtonItem.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_289_0();
  v3 = OUTLINED_FUNCTION_177_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_151();
  v8 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(v7);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_231_1();
  v16 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ButtonItem(0);
  OUTLINED_FUNCTION_285_1(*(v16 + 28));
  sub_1B8D92024();
  v10 = OUTLINED_FUNCTION_443();
  OUTLINED_FUNCTION_178(v10, v11, v8);
  if (v12)
  {
    sub_1B8D9207C(v2, &qword_1EBAC5B58, &qword_1B9694778);
  }

  else
  {
    OUTLINED_FUNCTION_0_61();
    sub_1B913EA40();
    OUTLINED_FUNCTION_4_32();
    sub_1B8CD28D0(v13, v14, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText);
    OUTLINED_FUNCTION_683_0();
    OUTLINED_FUNCTION_270_2();
    sub_1B964C740();
    OUTLINED_FUNCTION_3_34();
    sub_1B913FC94();
    if (v0)
    {
      goto LABEL_10;
    }
  }

  if (*v1 != 1 || (OUTLINED_FUNCTION_270_2(), sub_1B964C670(), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v15 || (OUTLINED_FUNCTION_270_2(), sub_1B964C700(), !v0))
    {
      sub_1B964C290();
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Siri_Platform_Watchos_ButtonItem.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_113_6();
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  v9 = (v8 - v7);
  v10 = OUTLINED_FUNCTION_190_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_183(v12);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v15 = (v30 - v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5BB0, &qword_1B96947B0);
  OUTLINED_FUNCTION_120_4();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_79();
  v30[1] = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ButtonItem(0);
  v31 = v5;
  v17 = *(v1 + 56);
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  v32 = v3;
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v0);
  if (v22)
  {
    OUTLINED_FUNCTION_37_0(v0 + v17);
    if (v22)
    {
      sub_1B8D9207C(v0, &qword_1EBAC5B58, &qword_1B9694778);
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v0 + v17);
  if (v22)
  {
    OUTLINED_FUNCTION_3_34();
    sub_1B913FC94();
LABEL_16:
    v23 = &qword_1EBAC5BB0;
    v24 = &qword_1B96947B0;
LABEL_26:
    sub_1B8D9207C(v0, v23, v24);
LABEL_27:
    v21 = 0;
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_0_61();
  sub_1B913EA40();
  v25 = *v15 == *v9 && v15[1] == v9[1];
  if (!v25 && (sub_1B964C9F0() & 1) == 0 || (sub_1B8D611FC(v15[2], v9[2]), (v26 & 1) == 0))
  {
    OUTLINED_FUNCTION_14_19();
    sub_1B913FC94();
    sub_1B913FC94();
    v23 = &qword_1EBAC5B58;
    v24 = &qword_1B9694778;
    goto LABEL_26;
  }

  v27 = sub_1B964C2B0();
  OUTLINED_FUNCTION_1_52();
  sub_1B8CD28D0(v28, v29, MEMORY[0x1E69AAC10]);
  sub_1B964C850();
  OUTLINED_FUNCTION_8_31();
  sub_1B913FC94();
  OUTLINED_FUNCTION_686();
  sub_1B913FC94();
  sub_1B8D9207C(v0, &qword_1EBAC5B58, &qword_1B9694778);
  if ((v27 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_6:
  if (*v31 != *v32)
  {
    goto LABEL_27;
  }

  v18 = *(v31 + 1) == *(v32 + 1) && *(v31 + 2) == *(v32 + 2);
  if (!v18 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_27;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_52();
  sub_1B8CD28D0(v19, v20, MEMORY[0x1E69AAC10]);
  v21 = OUTLINED_FUNCTION_181();
LABEL_28:
  OUTLINED_FUNCTION_264(v21);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B914E278(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD28D0(&qword_1EBAC6080, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ButtonItem, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_ButtonItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B914E2F8(uint64_t a1)
{
  v2 = sub_1B8CD28D0(&qword_1EBAC5F48, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ButtonItem, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_ButtonItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B914E368(uint64_t a1, uint64_t a2)
{
  sub_1B8CD28D0(&qword_1EBAC5F48, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ButtonItem, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_ButtonItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B914E3F4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC59B8);
  __swift_project_value_buffer(v0, qword_1EBAC59B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "image_resource";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "row_layout";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "decorated_rows";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B914E754(v3, v4, v5, v6);
        break;
      case 2:
        v11 = OUTLINED_FUNCTION_9();
        sub_1B914E808(v11, v12, v13, v14);
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B914E8BC(v7, v8, v9, v10);
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B91546CC();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B914E754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem(0);
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
  sub_1B8CD28D0(&qword_1EBAC5BA8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText);
  return sub_1B964C580();
}

uint64_t sub_1B914E808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem(0);
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(0);
  sub_1B8CD28D0(&qword_1EBAC5BD8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource);
  return sub_1B964C580();
}

void Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_259_1(v16, v17, v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9038, &qword_1B9694780);
  OUTLINED_FUNCTION_183(v19);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_79();
  v38 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_251(v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B58, &qword_1B9694778);
  OUTLINED_FUNCTION_183(v23);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_211_2();
  OUTLINED_FUNCTION_310_1();
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_62();
  v26 = OUTLINED_FUNCTION_204_3();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem(v26);
  sub_1B8D92024();
  v27 = OUTLINED_FUNCTION_208_3();
  OUTLINED_FUNCTION_178(v27, v28, v14);
  if (v29)
  {
    sub_1B8D9207C(v11, &qword_1EBAC5B58, &qword_1B9694778);
  }

  else
  {
    OUTLINED_FUNCTION_0_61();
    sub_1B913EA40();
    OUTLINED_FUNCTION_4_32();
    sub_1B8CD28D0(v30, v31, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText);
    OUTLINED_FUNCTION_272_2();
    OUTLINED_FUNCTION_749();
    v12 = v10;
    sub_1B964C740();
    OUTLINED_FUNCTION_3_34();
    sub_1B913FC94();
    if (v10)
    {
      goto LABEL_14;
    }
  }

  sub_1B8D92024();
  v32 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_178(v32, v33, v38);
  if (v29)
  {
    sub_1B8D9207C(v13, &qword_1EBAB9038, &qword_1B9694780);
  }

  else
  {
    OUTLINED_FUNCTION_2_35();
    sub_1B913EA40();
    OUTLINED_FUNCTION_13_21();
    sub_1B8CD28D0(v34, v35, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource);
    OUTLINED_FUNCTION_193_4();
    sub_1B964C740();
    OUTLINED_FUNCTION_6_22();
    sub_1B913FC94();
    if (v12)
    {
      goto LABEL_14;
    }
  }

  if (!*v15 || (OUTLINED_FUNCTION_540_0(*v15), sub_1B9156BC0(), OUTLINED_FUNCTION_193_4(), sub_1B964C680(), !v12))
  {
    if (!*(v15[2] + 16) || (OUTLINED_FUNCTION_4_32(), sub_1B8CD28D0(v36, v37, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_193_4(), sub_1B964C730(), !v12))
    {
      sub_1B964C290();
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = v2;
  v5 = v4;
  v48 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_251(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9038, &qword_1B9694780);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_99_7(v10, v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9040, &unk_1B964D830);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_185();
  v49 = v12;
  OUTLINED_FUNCTION_113_6();
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_62();
  v16 = v15 - v14;
  v17 = OUTLINED_FUNCTION_1_0();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
  OUTLINED_FUNCTION_183(v19);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_238_0();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5BB0, &qword_1B96947B0) - 8;
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v22);
  v23 = OUTLINED_FUNCTION_151();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem(v23);
  v24 = *(v21 + 56);
  OUTLINED_FUNCTION_309_1();
  OUTLINED_FUNCTION_309_1();
  OUTLINED_FUNCTION_37_0(v1);
  if (v28)
  {
    OUTLINED_FUNCTION_37_0(v1 + v24);
    if (v28)
    {
      sub_1B8D9207C(v1, &qword_1EBAC5B58, &qword_1B9694778);
      goto LABEL_6;
    }

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_269_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v1 + v24);
  if (v28)
  {
    OUTLINED_FUNCTION_3_34();
    sub_1B913FC94();
LABEL_14:
    v29 = &qword_1EBAC5BB0;
    v30 = &qword_1B96947B0;
LABEL_24:
    v40 = v1;
LABEL_25:
    sub_1B8D9207C(v40, v29, v30);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_0_61();
  sub_1B913EA40();
  OUTLINED_FUNCTION_201_3();
  if (v31)
  {
    v34 = v32 == v33;
  }

  else
  {
    v34 = 0;
  }

  if (!v34 && (sub_1B964C9F0() & 1) == 0 || (sub_1B8D611FC(*(v0 + 16), *(v16 + 16)), (v35 & 1) == 0))
  {
    OUTLINED_FUNCTION_31_18();
    sub_1B913FC94();
    OUTLINED_FUNCTION_74_7();
    sub_1B913FC94();
    v29 = &qword_1EBAC5B58;
    v30 = &qword_1B9694778;
    goto LABEL_24;
  }

  v36 = sub_1B964C2B0();
  OUTLINED_FUNCTION_1_52();
  v39 = sub_1B8CD28D0(v37, v38, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_199_0(v39);
  OUTLINED_FUNCTION_8_31();
  sub_1B913FC94();
  OUTLINED_FUNCTION_303();
  sub_1B913FC94();
  sub_1B8D9207C(v1, &qword_1EBAC5B58, &qword_1B9694778);
  if ((v36 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_6:
  v25 = *(v47 + 48);
  OUTLINED_FUNCTION_235_1();
  OUTLINED_FUNCTION_235_1();
  v26 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_44(v26, v27);
  if (!v28)
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_48(v49 + v25);
    if (!v42)
    {
      OUTLINED_FUNCTION_2_35();
      sub_1B913EA40();
      OUTLINED_FUNCTION_461();
      static Apple_Parsec_Siri_Platform_Watchos_WatchImageResource.== infix(_:_:)();
      OUTLINED_FUNCTION_39_8();
      sub_1B913FC94();
      OUTLINED_FUNCTION_128();
      sub_1B913FC94();
      sub_1B8D9207C(v49, &qword_1EBAB9038, &qword_1B9694780);
      if ((v48 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_33;
    }

    OUTLINED_FUNCTION_6_22();
    sub_1B913FC94();
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_48(v49 + v25);
  if (!v28)
  {
LABEL_31:
    v29 = &qword_1EBAB9040;
    v30 = &unk_1B964D830;
    v40 = v49;
    goto LABEL_25;
  }

  sub_1B8D9207C(v49, &qword_1EBAB9038, &qword_1B9694780);
LABEL_33:
  if (sub_1B8D92198(*v5, *(v5 + 8), *v3))
  {
    sub_1B8D6100C(*(v5 + 16), v3[2]);
    if (v43)
    {
      sub_1B964C2B0();
      OUTLINED_FUNCTION_1_52();
      sub_1B8CD28D0(v44, v45, MEMORY[0x1E69AAC10]);
      v41 = sub_1B964C850();
      goto LABEL_27;
    }
  }

LABEL_26:
  v41 = 0;
LABEL_27:
  OUTLINED_FUNCTION_264(v41);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B914F1D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD28D0(&qword_1EBAC6078, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B914F254(uint64_t a1)
{
  v2 = sub_1B8CD28D0(&qword_1EBAC5F60, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B914F2C4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD28D0(&qword_1EBAC5F60, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B914F344()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC59D0);
  __swift_project_value_buffer(v0, qword_1EBAC59D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ROW_LAYOUT_UNKNOWN";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ROW_LAYOUT_HORIZONTAL";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ROW_LAYOUT_VERTICAL";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

void sub_1B914F61C()
{
  OUTLINED_FUNCTION_99_2();
  while (1)
  {
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      OUTLINED_FUNCTION_98_2();
      sub_1B9156564();
    }
  }
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_TableHeaderItem.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_310_1(), OUTLINED_FUNCTION_4_32(), sub_1B8CD28D0(v2, v3, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_749(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
  {
    type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TableHeaderItem(0);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t sub_1B914F7E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD28D0(&qword_1EBAC6070, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TableHeaderItem, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_TableHeaderItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B914F868(uint64_t a1)
{
  v2 = sub_1B8CD28D0(&qword_1EBAC5F78, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TableHeaderItem, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_TableHeaderItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B914F8D8(uint64_t a1, uint64_t a2)
{
  sub_1B8CD28D0(&qword_1EBAC5F78, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TableHeaderItem, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_TableHeaderItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B914F964()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC5A00);
  __swift_project_value_buffer(v0, qword_1EBAC5A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "columnValues";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "image_resource";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Siri_Platform_Watchos_TableRowItem.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B914FD08(v7, v8, v9, v10);
        break;
      case 2:
        OUTLINED_FUNCTION_183_5();
        OUTLINED_FUNCTION_9();
        sub_1B9156564();
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B914FC54(v3, v4, v5, v6);
        break;
    }
  }
}

uint64_t sub_1B914FC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TableRowItem(0);
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
  sub_1B8CD28D0(&qword_1EBAC5BA8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText);
  return sub_1B964C580();
}

uint64_t sub_1B914FD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TableRowItem(0);
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(0);
  sub_1B8CD28D0(&qword_1EBAC5BD8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource);
  return sub_1B964C580();
}

void Apple_Parsec_Siri_Platform_Watchos_TableRowItem.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_259_1(v13, v14, v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9038, &qword_1B9694780);
  OUTLINED_FUNCTION_183(v16);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_185();
  v39 = v18;
  v19 = OUTLINED_FUNCTION_201();
  v40 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(v19);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_21();
  v21 = OUTLINED_FUNCTION_190_0();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
  OUTLINED_FUNCTION_183(v23);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_211_2();
  v25 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_62();
  v27 = OUTLINED_FUNCTION_204_3();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TableRowItem(v27);
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  v28 = OUTLINED_FUNCTION_208_3();
  OUTLINED_FUNCTION_178(v28, v29, v25);
  if (v30)
  {
    sub_1B8D9207C(v10, &qword_1EBAC5B58, &qword_1B9694778);
  }

  else
  {
    OUTLINED_FUNCTION_0_61();
    sub_1B913EA40();
    OUTLINED_FUNCTION_4_32();
    sub_1B8CD28D0(v31, v32, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText);
    OUTLINED_FUNCTION_272_2();
    OUTLINED_FUNCTION_258_2();
    sub_1B964C740();
    OUTLINED_FUNCTION_3_34();
    sub_1B913FC94();
    if (v11)
    {
      goto LABEL_12;
    }
  }

  if (!*(*v12 + 16) || (OUTLINED_FUNCTION_4_32(), sub_1B8CD28D0(v33, v34, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_258_2(), sub_1B964C730(), !v11))
  {
    sub_1B8D92024();
    v35 = OUTLINED_FUNCTION_207();
    OUTLINED_FUNCTION_178(v35, v36, v40);
    if (v30)
    {
      sub_1B8D9207C(v39, &qword_1EBAB9038, &qword_1B9694780);
LABEL_11:
      sub_1B964C290();
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_2_35();
    sub_1B913EA40();
    OUTLINED_FUNCTION_13_21();
    sub_1B8CD28D0(v37, v38, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource);
    OUTLINED_FUNCTION_257_0();
    OUTLINED_FUNCTION_258_2();
    sub_1B964C740();
    OUTLINED_FUNCTION_6_22();
    sub_1B913FC94();
    if (!v11)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Siri_Platform_Watchos_TableRowItem.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = v2;
  v5 = v4;
  v48 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_251(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9038, &qword_1B9694780);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_99_7(v10, v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9040, &unk_1B964D830);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_185();
  v49 = v12;
  OUTLINED_FUNCTION_113_6();
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_62();
  v16 = v15 - v14;
  v17 = OUTLINED_FUNCTION_1_0();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
  OUTLINED_FUNCTION_183(v19);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_238_0();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5BB0, &qword_1B96947B0) - 8;
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v22);
  v23 = OUTLINED_FUNCTION_151();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TableRowItem(v23);
  v24 = *(v21 + 56);
  OUTLINED_FUNCTION_309_1();
  OUTLINED_FUNCTION_309_1();
  OUTLINED_FUNCTION_37_0(v1);
  if (v29)
  {
    OUTLINED_FUNCTION_37_0(v1 + v24);
    if (v29)
    {
      sub_1B8D9207C(v1, &qword_1EBAC5B58, &qword_1B9694778);
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_269_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v1 + v24);
  if (v29)
  {
    OUTLINED_FUNCTION_3_34();
    sub_1B913FC94();
LABEL_15:
    v30 = &qword_1EBAC5BB0;
    v31 = &qword_1B96947B0;
LABEL_25:
    v41 = v1;
LABEL_26:
    sub_1B8D9207C(v41, v30, v31);
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_0_61();
  sub_1B913EA40();
  OUTLINED_FUNCTION_201_3();
  if (v32)
  {
    v35 = v33 == v34;
  }

  else
  {
    v35 = 0;
  }

  if (!v35 && (sub_1B964C9F0() & 1) == 0 || (sub_1B8D611FC(*(v0 + 16), *(v16 + 16)), (v36 & 1) == 0))
  {
    OUTLINED_FUNCTION_31_18();
    sub_1B913FC94();
    OUTLINED_FUNCTION_74_7();
    sub_1B913FC94();
    v30 = &qword_1EBAC5B58;
    v31 = &qword_1B9694778;
    goto LABEL_25;
  }

  v37 = sub_1B964C2B0();
  OUTLINED_FUNCTION_1_52();
  v40 = sub_1B8CD28D0(v38, v39, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_199_0(v40);
  OUTLINED_FUNCTION_8_31();
  sub_1B913FC94();
  OUTLINED_FUNCTION_303();
  sub_1B913FC94();
  sub_1B8D9207C(v1, &qword_1EBAC5B58, &qword_1B9694778);
  if ((v37 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_6:
  sub_1B8D6100C(*v5, *v3);
  if (v25)
  {
    v26 = *(v47 + 48);
    OUTLINED_FUNCTION_235_1();
    OUTLINED_FUNCTION_235_1();
    v27 = OUTLINED_FUNCTION_538();
    OUTLINED_FUNCTION_44(v27, v28);
    if (v29)
    {
      OUTLINED_FUNCTION_48(v49 + v26);
      if (v29)
      {
        sub_1B8D9207C(v49, &qword_1EBAB9038, &qword_1B9694780);
        goto LABEL_34;
      }
    }

    else
    {
      sub_1B8D92024();
      OUTLINED_FUNCTION_48(v49 + v26);
      if (!v43)
      {
        OUTLINED_FUNCTION_2_35();
        sub_1B913EA40();
        OUTLINED_FUNCTION_461();
        static Apple_Parsec_Siri_Platform_Watchos_WatchImageResource.== infix(_:_:)();
        OUTLINED_FUNCTION_39_8();
        sub_1B913FC94();
        OUTLINED_FUNCTION_128();
        sub_1B913FC94();
        sub_1B8D9207C(v49, &qword_1EBAB9038, &qword_1B9694780);
        if ((v48 & 1) == 0)
        {
          goto LABEL_27;
        }

LABEL_34:
        sub_1B964C2B0();
        OUTLINED_FUNCTION_1_52();
        sub_1B8CD28D0(v44, v45, MEMORY[0x1E69AAC10]);
        v42 = OUTLINED_FUNCTION_239_2();
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_6_22();
      sub_1B913FC94();
    }

    v30 = &qword_1EBAB9040;
    v31 = &unk_1B964D830;
    v41 = v49;
    goto LABEL_26;
  }

LABEL_27:
  v42 = 0;
LABEL_28:
  OUTLINED_FUNCTION_264(v42);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B915061C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD28D0(&qword_1EBAC6068, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TableRowItem, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_TableRowItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B915069C(uint64_t a1)
{
  v2 = sub_1B8CD28D0(&qword_1EBAC5F90, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TableRowItem, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_TableRowItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B915070C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD28D0(&qword_1EBAC5F90, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TableRowItem, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_TableRowItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B91507A4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC5A18);
  __swift_project_value_buffer(v0, qword_1EBAC5A18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "decorated_title";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "decorated_value";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "image_resource";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v12 = OUTLINED_FUNCTION_9();
        sub_1B9150BBC(v12, v13, v14, v15);
        break;
      case 2:
        v8 = OUTLINED_FUNCTION_9();
        sub_1B9150B08(v8, v9, v10, v11);
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B9150A60(v3, v4, v5, v6, v7);
        break;
    }
  }

  return result;
}

uint64_t sub_1B9150A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
  OUTLINED_FUNCTION_4_32();
  sub_1B8CD28D0(v5, v6, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText);
  return sub_1B964C580();
}

uint64_t sub_1B9150B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity(0);
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
  sub_1B8CD28D0(&qword_1EBAC5BA8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText);
  return sub_1B964C580();
}

uint64_t sub_1B9150BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity(0);
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(0);
  sub_1B8CD28D0(&qword_1EBAC5BD8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource);
  return sub_1B964C580();
}

void Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9038, &qword_1B9694780);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_99_7(v4, v30);
  v32 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_251(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B58, &qword_1B9694778);
  v8 = OUTLINED_FUNCTION_183(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_66();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_304_1();
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_66();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_219_0();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity(0);
  sub_1B8D92024();
  v16 = OUTLINED_FUNCTION_208_3();
  OUTLINED_FUNCTION_178(v16, v17, v13);
  if (v18)
  {
    sub_1B8D9207C(v0, &qword_1EBAC5B58, &qword_1B9694778);
    v21 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_0_61();
    OUTLINED_FUNCTION_616();
    sub_1B913EA40();
    OUTLINED_FUNCTION_4_32();
    sub_1B8CD28D0(v19, v20, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText);
    OUTLINED_FUNCTION_597_0();
    sub_1B964C740();
    v21 = v1;
    OUTLINED_FUNCTION_3_34();
    sub_1B913FC94();
    if (v1)
    {
      goto LABEL_14;
    }
  }

  sub_1B8D92024();
  v22 = OUTLINED_FUNCTION_538();
  OUTLINED_FUNCTION_178(v22, v23, v13);
  if (v18)
  {
    sub_1B8D9207C(v11, &qword_1EBAC5B58, &qword_1B9694778);
  }

  else
  {
    OUTLINED_FUNCTION_0_61();
    sub_1B913EA40();
    OUTLINED_FUNCTION_4_32();
    sub_1B8CD28D0(v24, v25, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText);
    OUTLINED_FUNCTION_257_0();
    OUTLINED_FUNCTION_270_2();
    sub_1B964C740();
    v21 = v1;
    OUTLINED_FUNCTION_3_34();
    sub_1B913FC94();
    if (v1)
    {
      goto LABEL_14;
    }
  }

  sub_1B8D92024();
  v26 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_178(v26, v27, v32);
  if (v18)
  {
    sub_1B8D9207C(v31, &qword_1EBAB9038, &qword_1B9694780);
LABEL_13:
    OUTLINED_FUNCTION_616();
    OUTLINED_FUNCTION_270_2();
    sub_1B964C290();
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_2_35();
  sub_1B913EA40();
  OUTLINED_FUNCTION_13_21();
  sub_1B8CD28D0(v28, v29, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource);
  OUTLINED_FUNCTION_257_0();
  sub_1B964C740();
  OUTLINED_FUNCTION_6_22();
  sub_1B913FC94();
  if (!v21)
  {
    goto LABEL_13;
  }

LABEL_14:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v52 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_21();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9038, &qword_1B9694780);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_185();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9040, &unk_1B964D830);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_99_7(v6, v49);
  v7 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44_0();
  v50 = v9;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_266_0();
  v55 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B58, &qword_1B9694778);
  v13 = OUTLINED_FUNCTION_183(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44_0();
  v54 = v14;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_219_0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5BB0, &qword_1B96947B0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44_0();
  v56 = v18;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v19);
  v20 = OUTLINED_FUNCTION_68();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity(v20);
  v21 = *(v16 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_48(v0);
  if (v26)
  {
    OUTLINED_FUNCTION_48(v0 + v21);
    if (v26)
    {
      sub_1B8D9207C(v0, &qword_1EBAC5B58, &qword_1B9694778);
      goto LABEL_6;
    }

    goto LABEL_19;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_48(v0 + v21);
  if (v26)
  {
    OUTLINED_FUNCTION_3_34();
    sub_1B913FC94();
LABEL_19:
    v27 = &qword_1EBAC5BB0;
    v28 = &qword_1B96947B0;
LABEL_47:
    v44 = v0;
    goto LABEL_48;
  }

  OUTLINED_FUNCTION_0_61();
  sub_1B913EA40();
  v29 = *v1 == *v55 && v1[1] == v55[1];
  if (!v29 && (sub_1B964C9F0() & 1) == 0 || (sub_1B8D611FC(v1[2], v55[2]), (v30 & 1) == 0))
  {
    OUTLINED_FUNCTION_14_19();
    sub_1B913FC94();
    sub_1B913FC94();
    v27 = &qword_1EBAC5B58;
    v28 = &qword_1B9694778;
    goto LABEL_47;
  }

  v31 = *(v7 + 24);
  v32 = sub_1B964C2B0();
  OUTLINED_FUNCTION_1_52();
  sub_1B8CD28D0(v33, v34, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_731(v1 + v31);
  OUTLINED_FUNCTION_8_31();
  sub_1B913FC94();
  OUTLINED_FUNCTION_190_0();
  sub_1B913FC94();
  sub_1B8D9207C(v0, &qword_1EBAC5B58, &qword_1B9694778);
  if ((v32 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_6:
  v22 = *(v16 + 48);
  OUTLINED_FUNCTION_225_4();
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_48(v56);
  if (v26)
  {
    OUTLINED_FUNCTION_48(v56 + v22);
    if (v26)
    {
      sub_1B8D9207C(v56, &qword_1EBAC5B58, &qword_1B9694778);
LABEL_11:
      v23 = *(v51 + 48);
      v0 = v53;
      OUTLINED_FUNCTION_235_1();
      OUTLINED_FUNCTION_235_1();
      v24 = OUTLINED_FUNCTION_207();
      OUTLINED_FUNCTION_44(v24, v25);
      if (v26)
      {
        OUTLINED_FUNCTION_48(v53 + v23);
        if (v26)
        {
          sub_1B8D9207C(v53, &qword_1EBAB9038, &qword_1B9694780);
          goto LABEL_52;
        }
      }

      else
      {
        sub_1B8D92024();
        OUTLINED_FUNCTION_48(v53 + v23);
        if (!v45)
        {
          OUTLINED_FUNCTION_2_35();
          sub_1B913EA40();
          OUTLINED_FUNCTION_196();
          static Apple_Parsec_Siri_Platform_Watchos_WatchImageResource.== infix(_:_:)();
          OUTLINED_FUNCTION_39_8();
          sub_1B913FC94();
          sub_1B913FC94();
          sub_1B8D9207C(v53, &qword_1EBAB9038, &qword_1B9694780);
          if ((v52 & 1) == 0)
          {
            goto LABEL_49;
          }

LABEL_52:
          sub_1B964C2B0();
          OUTLINED_FUNCTION_1_52();
          sub_1B8CD28D0(v47, v48, MEMORY[0x1E69AAC10]);
          OUTLINED_FUNCTION_272_2();
          v46 = sub_1B964C850();
          goto LABEL_50;
        }

        OUTLINED_FUNCTION_6_22();
        sub_1B913FC94();
      }

      v27 = &qword_1EBAB9040;
      v28 = &unk_1B964D830;
      goto LABEL_47;
    }

    goto LABEL_32;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_48(v56 + v22);
  if (v35)
  {
    OUTLINED_FUNCTION_3_34();
    sub_1B913FC94();
LABEL_32:
    v27 = &qword_1EBAC5BB0;
    v28 = &qword_1B96947B0;
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_0_61();
  sub_1B913EA40();
  OUTLINED_FUNCTION_292_1();
  if (v36)
  {
    v39 = v37 == v38;
  }

  else
  {
    v39 = 0;
  }

  if (v39 || (sub_1B964C9F0() & 1) != 0)
  {
    sub_1B8D611FC(*(v54 + 16), *(v50 + 16));
    if (v40)
    {
      sub_1B964C2B0();
      OUTLINED_FUNCTION_1_52();
      sub_1B8CD28D0(v41, v42, MEMORY[0x1E69AAC10]);
      v43 = sub_1B964C850();
      OUTLINED_FUNCTION_31_18();
      sub_1B913FC94();
      sub_1B913FC94();
      sub_1B8D9207C(v56, &qword_1EBAC5B58, &qword_1B9694778);
      if ((v43 & 1) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_11;
    }
  }

  OUTLINED_FUNCTION_14_19();
  sub_1B913FC94();
  sub_1B913FC94();
  v27 = &qword_1EBAC5B58;
  v28 = &qword_1B9694778;
LABEL_42:
  v44 = v56;
LABEL_48:
  sub_1B8D9207C(v44, v27, v28);
LABEL_49:
  v46 = 0;
LABEL_50:
  OUTLINED_FUNCTION_264(v46);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B915179C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD28D0(&qword_1EBAC6060, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B915181C(uint64_t a1)
{
  v2 = sub_1B8CD28D0(&qword_1EBAC5FA8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B915188C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD28D0(&qword_1EBAC5FA8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity);

  return sub_1B964C5D0();
}

uint64_t sub_1B9151924()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC5A30);
  __swift_project_value_buffer(v0, qword_1EBAC5A30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "first_item";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "second_item";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "foot_note";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9151B84(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  OUTLINED_FUNCTION_57_0();
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_1B9151C94()
{
  v1 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_Platform_Watchos_ComparisonItemP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__firstItem;
  v2 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_Platform_Watchos_ComparisonItemP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__secondItem, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_Platform_Watchos_ComparisonItemP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__footNote;
  v4 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  return v0;
}

uint64_t sub_1B9151D24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B58, &qword_1B9694778);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B68, &unk_1B9694790);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_Platform_Watchos_ComparisonItemP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__firstItem[0];
  v5 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity(0);
  __swift_storeEnumTagSinglePayload(v1 + v4, 1, 1, v5);
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_Platform_Watchos_ComparisonItemP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__secondItem, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_Platform_Watchos_ComparisonItemP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__footNote;
  v7 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
  __swift_storeEnumTagSinglePayload(v1 + v6, 1, 1, v7);
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();

  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  return v1;
}

uint64_t sub_1B915200C()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_Platform_Watchos_ComparisonItemP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__firstItem[0], &qword_1EBAC5B68, &unk_1B9694790);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_Platform_Watchos_ComparisonItemP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__secondItem, &qword_1EBAC5B68, &unk_1B9694790);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_Platform_Watchos_ComparisonItemP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__footNote, &qword_1EBAC5B58, &qword_1B9694778);
  return v0;
}

uint64_t sub_1B91520AC(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

void sub_1B915215C()
{
  OUTLINED_FUNCTION_273_0();
  v2 = v1;
  v18 = v3;
  v5 = v4;
  v6 = v0;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = *(v13(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v0 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v17 = OUTLINED_FUNCTION_40_0();
    v16 = v18(v17);
    *(v6 + v14) = v16;
  }

  v2(v16, v12, v10, v8);
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B9152210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1B9152478(a2, a1, a3, a4);
        break;
      case 2:
        sub_1B915239C(a2, a1, a3, a4);
        break;
      case 1:
        sub_1B91522C0(a2, a1, a3, a4);
        break;
    }
  }

  return result;
}

uint64_t sub_1B91522C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity(0);
  sub_1B8CD28D0(&qword_1EBAC5FA8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B915239C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity(0);
  sub_1B8CD28D0(&qword_1EBAC5FA8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9152478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
  sub_1B8CD28D0(&qword_1EBAC5BA8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9152584(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t (*a5)(void))
{
  a4(0);
  OUTLINED_FUNCTION_12();
  result = a5();
  if (!v5)
  {
    OUTLINED_FUNCTION_186();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B91525FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B58, &qword_1B9694778);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v21 = v20 - v5;
  v22 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
  MEMORY[0x1EEE9AC00](v22);
  v20[1] = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B68, &unk_1B9694790);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v20 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v20[2] = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAC5B68, &unk_1B9694790);
    v16 = v23;
  }

  else
  {
    sub_1B913EA40();
    sub_1B8CD28D0(&qword_1EBAC5FA8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity);
    v17 = v23;
    sub_1B964C740();
    v16 = v17;
    result = sub_1B913FC94();
    if (v17)
    {
      return result;
    }
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v10, 1, v13) == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAC5B68, &unk_1B9694790);
  }

  else
  {
    sub_1B913EA40();
    sub_1B8CD28D0(&qword_1EBAC5FA8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity);
    sub_1B964C740();
    result = sub_1B913FC94();
    if (v16)
    {
      return result;
    }
  }

  swift_beginAccess();
  v19 = v21;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v19, 1, v22) == 1)
  {
    return sub_1B8D9207C(v19, &qword_1EBAC5B58, &qword_1B9694778);
  }

  sub_1B913EA40();
  sub_1B8CD28D0(&qword_1EBAC5BA8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText);
  sub_1B964C740();
  return sub_1B913FC94();
}

uint64_t sub_1B9152B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = OUTLINED_FUNCTION_280();
  v9 = v8(v7);
  if (*(v5 + *(v9 + 20)) != *(v4 + *(v9 + 20)))
  {

    v10 = OUTLINED_FUNCTION_177_1();
    v11 = a4(v10);

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_52();
  sub_1B8CD28D0(v12, v13, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

BOOL sub_1B9152BFC(uint64_t a1, uint64_t a2)
{
  v60 = a2;
  v51 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
  MEMORY[0x1EEE9AC00](v51);
  v48 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5BB0, &qword_1B96947B0);
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v48 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B58, &qword_1B9694778);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v49 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v58 = &v48 - v7;
  v8 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity(0);
  MEMORY[0x1EEE9AC00](v8);
  v54 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6110, "Rr\v");
  v11 = MEMORY[0x1EEE9AC00](v10);
  v57 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v48 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B68, &unk_1B9694790);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v53 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v56 = &v48 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v59 = &v48 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v48 - v22;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v55 = v10;
  v24 = *(v10 + 48);
  v25 = v8;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v14, 1, v8) == 1)
  {

    sub_1B8D9207C(v23, &qword_1EBAC5B68, &unk_1B9694790);
    if (__swift_getEnumTagSinglePayload(&v14[v24], 1, v8) == 1)
    {
      sub_1B8D9207C(v14, &qword_1EBAC5B68, &unk_1B9694790);
      goto LABEL_9;
    }

LABEL_6:
    sub_1B8D9207C(v14, &qword_1EBAC6110, "Rr\v");
    goto LABEL_15;
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(&v14[v24], 1, v8) == 1)
  {

    sub_1B8D9207C(v23, &qword_1EBAC5B68, &unk_1B9694790);
    sub_1B913FC94();
    goto LABEL_6;
  }

  sub_1B913EA40();

  static Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity.== infix(_:_:)();
  v27 = v26;
  sub_1B913FC94();
  sub_1B8D9207C(v23, &qword_1EBAC5B68, &unk_1B9694790);
  sub_1B913FC94();
  sub_1B8D9207C(v14, &qword_1EBAC5B68, &unk_1B9694790);
  if ((v27 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  swift_beginAccess();
  v28 = v56;
  sub_1B8D92024();
  swift_beginAccess();
  v29 = *(v55 + 48);
  v30 = v57;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v30, 1, v25) == 1)
  {
    sub_1B8D9207C(v28, &qword_1EBAC5B68, &unk_1B9694790);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v30 + v29, 1, v25);
    v32 = v58;
    if (EnumTagSinglePayload == 1)
    {
      sub_1B8D9207C(v30, &qword_1EBAC5B68, &unk_1B9694790);
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  sub_1B8D92024();
  v33 = __swift_getEnumTagSinglePayload(v30 + v29, 1, v25);
  v32 = v58;
  if (v33 == 1)
  {
    sub_1B8D9207C(v28, &qword_1EBAC5B68, &unk_1B9694790);
    sub_1B913FC94();
LABEL_14:
    sub_1B8D9207C(v30, &qword_1EBAC6110, "Rr\v");
LABEL_15:

    return 0;
  }

  sub_1B913EA40();
  static Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity.== infix(_:_:)();
  v36 = v35;
  sub_1B913FC94();
  sub_1B8D9207C(v28, &qword_1EBAC5B68, &unk_1B9694790);
  sub_1B913FC94();
  sub_1B8D9207C(v30, &qword_1EBAC5B68, &unk_1B9694790);
  if ((v36 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_18:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v37 = *(v50 + 48);
  v38 = v52;
  sub_1B8D92024();
  sub_1B8D92024();
  v39 = v51;
  if (__swift_getEnumTagSinglePayload(v38, 1, v51) != 1)
  {
    v40 = v49;
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v38 + v37, 1, v39) == 1)
    {

      sub_1B8D9207C(v32, &qword_1EBAC5B58, &qword_1B9694778);
      sub_1B913FC94();
      goto LABEL_24;
    }

    v44 = v48;
    sub_1B913EA40();
    v45 = *v40 == *v44 && v40[1] == v44[1];
    if (!v45 && (sub_1B964C9F0() & 1) == 0 || (sub_1B8D611FC(v40[2], v44[2]), (v46 & 1) == 0))
    {

      sub_1B913FC94();
      sub_1B8D9207C(v32, &qword_1EBAC5B58, &qword_1B9694778);
      sub_1B913FC94();
      v43 = v38;
      v41 = &qword_1EBAC5B58;
      v42 = &qword_1B9694778;
      goto LABEL_34;
    }

    sub_1B964C2B0();
    sub_1B8CD28D0(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v47 = sub_1B964C850();

    sub_1B913FC94();
    sub_1B8D9207C(v32, &qword_1EBAC5B58, &qword_1B9694778);
    sub_1B913FC94();
    sub_1B8D9207C(v38, &qword_1EBAC5B58, &qword_1B9694778);
    return (v47 & 1) != 0;
  }

  sub_1B8D9207C(v32, &qword_1EBAC5B58, &qword_1B9694778);
  if (__swift_getEnumTagSinglePayload(v38 + v37, 1, v39) != 1)
  {
LABEL_24:
    v41 = &qword_1EBAC5BB0;
    v42 = &qword_1B96947B0;
    v43 = v38;
LABEL_34:
    sub_1B8D9207C(v43, v41, v42);
    return 0;
  }

  sub_1B8D9207C(v38, &qword_1EBAC5B58, &qword_1B9694778);
  return 1;
}

uint64_t sub_1B915379C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD28D0(&qword_1EBAC6058, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonItem, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_ComparisonItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B915381C(uint64_t a1)
{
  v2 = sub_1B8CD28D0(&qword_1EBAC5FC0, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonItem, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_ComparisonItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B915388C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD28D0(&qword_1EBAC5FC0, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonItem, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_ComparisonItem);

  return sub_1B964C5D0();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_SnippetObject.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_432();
      OUTLINED_FUNCTION_24_3();
      sub_1B91539AC(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1B91539AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v30 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Answer(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v26 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9050, &qword_1B964D840);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SnippetObject.OneOf_Object(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6108, "Rr\v");
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8D92024();
  v24 = v11;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB9050, &qword_1B964D840);
  }

  else
  {
    sub_1B913EA40();
    sub_1B913EA40();
    sub_1B8D9207C(v18, &qword_1EBAC6108, "Rr\v");
    sub_1B913EA40();
    sub_1B913EA40();
    __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
  }

  sub_1B8CD28D0(&qword_1EBAC5CA0, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Answer, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_Answer);
  v20 = v27;
  sub_1B964C580();
  if (v20)
  {
    v21 = v18;
    return sub_1B8D9207C(v21, &qword_1EBAC6108, "Rr\v");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC6108, "Rr\v");
    v21 = v16;
    return sub_1B8D9207C(v21, &qword_1EBAC6108, "Rr\v");
  }

  sub_1B913EA40();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  sub_1B8D9207C(v18, &qword_1EBAC6108, "Rr\v");
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB9050, &qword_1B964D840);
  sub_1B913EA40();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v24);
}

void Apple_Parsec_Siri_Platform_Watchos_SnippetObject.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9050, &qword_1B964D840);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_231_1();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Answer(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_192_4();
  sub_1B8D92024();
  v5 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SnippetObject.OneOf_Object(0);
  OUTLINED_FUNCTION_178(v1, 1, v5);
  if (v6)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9050, &qword_1B964D840);
LABEL_5:
    type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SnippetObject(0);
    OUTLINED_FUNCTION_491();
    sub_1B964C290();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_29_20();
  sub_1B913EA40();
  sub_1B8CD28D0(&qword_1EBAC5CA0, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Answer, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_Answer);
  OUTLINED_FUNCTION_597_0();
  sub_1B964C740();
  OUTLINED_FUNCTION_182_3();
  sub_1B913FC94();
  if (!v0)
  {
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Siri_Platform_Watchos_SnippetObject.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_280();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SnippetObject.OneOf_Object(v1);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_238_0();
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_79();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9058, &qword_1B964D848);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_88();
  v10 = *(v9 + 56);
  OUTLINED_FUNCTION_92_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_92_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_50(v0);
  if (v11)
  {
    OUTLINED_FUNCTION_50(v0 + v10);
    if (v11)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9050, &qword_1B964D840);
LABEL_12:
      type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SnippetObject(0);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_1_52();
      v18 = sub_1B8CD28D0(v16, v17, MEMORY[0x1E69AAC10]);
      v12 = OUTLINED_FUNCTION_634(v18);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_50(v0 + v10);
  if (v11)
  {
    OUTLINED_FUNCTION_171_2();
    sub_1B913FC94();
LABEL_9:
    sub_1B8D9207C(v0, &qword_1EBAB9058, &qword_1B964D848);
    goto LABEL_10;
  }

  sub_1B913EA40();
  v13 = OUTLINED_FUNCTION_246();
  v15 = static Apple_Parsec_Siri_Platform_Watchos_SnippetObject.OneOf_Object.== infix(_:_:)(v13, v14);
  sub_1B913FC94();
  sub_1B913FC94();
  sub_1B8D9207C(v0, &qword_1EBAB9050, &qword_1B964D840);
  if (v15)
  {
    goto LABEL_12;
  }

LABEL_10:
  v12 = 0;
LABEL_13:
  OUTLINED_FUNCTION_264(v12);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B91542FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD28D0(&qword_1EBAC6050, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SnippetObject, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_SnippetObject);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B915437C(uint64_t a1)
{
  v2 = sub_1B8CD28D0(&qword_1EBAC5B78, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SnippetObject, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_SnippetObject);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91543EC(uint64_t a1, uint64_t a2)
{
  sub_1B8CD28D0(&qword_1EBAC5B78, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SnippetObject, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_SnippetObject);

  return sub_1B964C5D0();
}

uint64_t sub_1B9154484()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC5A68);
  __swift_project_value_buffer(v0, qword_1EBAC5A68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "lines";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

void sub_1B91546CC()
{
  OUTLINED_FUNCTION_273_0();
  v2 = OUTLINED_FUNCTION_114_1();
  v3(v2);
  v4 = OUTLINED_FUNCTION_128();
  v6 = sub_1B8CD28D0(v4, v5, v0);
  OUTLINED_FUNCTION_157_1(v1 + 16, v7, v6);
  OUTLINED_FUNCTION_272_0();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_Answer.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v2 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
  {
    if (!*(*(v1 + 16) + 16) || (type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Answer.Line(0), sub_1B8CD28D0(&qword_1EBAC5CB0, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Answer.Line, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_Answer.Line), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v0))
    {
      type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Answer(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t sub_1B915489C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD28D0(&qword_1EBAC6048, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Answer, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_Answer);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B915491C(uint64_t a1)
{
  v2 = sub_1B8CD28D0(&qword_1EBAC5CA0, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Answer, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_Answer);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B915498C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD28D0(&qword_1EBAC5CA0, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Answer, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_Answer);

  return sub_1B964C5D0();
}

uint64_t sub_1B9154A0C()
{
  result = MEMORY[0x1BFADC850](0x656E694C2ELL, 0xE500000000000000);
  qword_1EBAC5A80 = 0xD000000000000029;
  *algn_1EBAC5A88 = 0x80000001B9709100;
  return result;
}

uint64_t static Apple_Parsec_Siri_Platform_Watchos_Answer.Line.protoMessageName.getter()
{
  if (qword_1EBAB7580 != -1)
  {
    swift_once();
  }

  return OUTLINED_FUNCTION_432();
}

uint64_t sub_1B9154AD8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC5A90);
  __swift_project_value_buffer(v0, qword_1EBAC5A90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "watch_image_resource";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "is_image_inverted";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_Answer.Line.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B9154D94(v3, v4, v5, v6);
        break;
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
    }
  }

  return result;
}

uint64_t sub_1B9154D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Answer.Line(0);
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(0);
  sub_1B8CD28D0(&qword_1EBAC5BD8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource);
  return sub_1B964C580();
}

void Apple_Parsec_Siri_Platform_Watchos_Answer.Line.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_26_14();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9038, &qword_1B9694780);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(v7);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_231_1();
  OUTLINED_FUNCTION_1();
  if (!v12 || (OUTLINED_FUNCTION_303_1(v10, v11), (v0 = v2) == 0))
  {
    type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Answer.Line(0);
    sub_1B8D92024();
    v13 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v13, v14, v8);
    if (v15)
    {
      sub_1B8D9207C(v3, &qword_1EBAB9038, &qword_1B9694780);
    }

    else
    {
      OUTLINED_FUNCTION_2_35();
      sub_1B913EA40();
      OUTLINED_FUNCTION_13_21();
      sub_1B8CD28D0(v16, v17, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource);
      OUTLINED_FUNCTION_683_0();
      OUTLINED_FUNCTION_17_15();
      sub_1B964C740();
      v0 = v2;
      OUTLINED_FUNCTION_6_22();
      sub_1B913FC94();
      if (v2)
      {
        goto LABEL_10;
      }
    }

    if (*(v4 + 16) != 1 || (sub_1B964C670(), !v0))
    {
      OUTLINED_FUNCTION_248_1(v1);
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Siri_Platform_Watchos_Answer.Line.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_280();
  v4 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(v3);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_238_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9038, &qword_1B9694780);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_79();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9040, &unk_1B964D830);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_428();
  v12 = v12 && v10 == v11;
  if (!v12 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_17;
  }

  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Answer.Line(0);
  v13 = *(v8 + 48);
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_50(v2);
  if (!v12)
  {
    OUTLINED_FUNCTION_177_1();
    sub_1B8D92024();
    OUTLINED_FUNCTION_50(v2 + v13);
    if (!v14)
    {
      OUTLINED_FUNCTION_2_35();
      sub_1B913EA40();
      OUTLINED_FUNCTION_246();
      static Apple_Parsec_Siri_Platform_Watchos_WatchImageResource.== infix(_:_:)();
      OUTLINED_FUNCTION_172_2();
      sub_1B913FC94();
      sub_1B913FC94();
      sub_1B8D9207C(v2, &qword_1EBAB9038, &qword_1B9694780);
      if ((v4 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    OUTLINED_FUNCTION_6_22();
    sub_1B913FC94();
LABEL_14:
    sub_1B8D9207C(v2, &qword_1EBAB9040, &unk_1B964D830);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_50(v2 + v13);
  if (!v12)
  {
    goto LABEL_14;
  }

  sub_1B8D9207C(v2, &qword_1EBAB9038, &qword_1B9694780);
LABEL_16:
  if (*(v1 + 16) == *(v0 + 16))
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_1_52();
    v18 = sub_1B8CD28D0(v16, v17, MEMORY[0x1E69AAC10]);
    v15 = OUTLINED_FUNCTION_634(v18);
    goto LABEL_18;
  }

LABEL_17:
  v15 = 0;
LABEL_18:
  OUTLINED_FUNCTION_264(v15);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9155308(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD28D0(&qword_1EBAC6040, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Answer.Line, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_Answer.Line);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9155388(uint64_t a1)
{
  v2 = sub_1B8CD28D0(&qword_1EBAC5CB0, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Answer.Line, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_Answer.Line);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91553F8(uint64_t a1, uint64_t a2)
{
  sub_1B8CD28D0(&qword_1EBAC5CB0, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Answer.Line, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_Answer.Line);

  return sub_1B964C5D0();
}

uint64_t sub_1B9155484()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC5AA8);
  __swift_project_value_buffer(v0, qword_1EBAC5AA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "decorated_value";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "footer";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "decorated_footer";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_SpecificAnswerItem.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B9155794(v7, v8, v9, v10);
        break;
      case 4:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B9155848(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9155794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SpecificAnswerItem(0);
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
  sub_1B8CD28D0(&qword_1EBAC5BA8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText);
  return sub_1B964C580();
}

uint64_t sub_1B9155848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SpecificAnswerItem(0);
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
  sub_1B8CD28D0(&qword_1EBAC5BA8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText);
  return sub_1B964C580();
}

void Apple_Parsec_Siri_Platform_Watchos_SpecificAnswerItem.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_289_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B58, &qword_1B9694778);
  v3 = OUTLINED_FUNCTION_183(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_66();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_68();
  v9 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(v8);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_1();
  if (!v12 || (sub_1B964C700(), !v0))
  {
    v24 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SpecificAnswerItem(0);
    sub_1B8D92024();
    v13 = OUTLINED_FUNCTION_207();
    OUTLINED_FUNCTION_178(v13, v14, v9);
    if (v15)
    {
      sub_1B8D9207C(v1, &qword_1EBAC5B58, &qword_1B9694778);
    }

    else
    {
      OUTLINED_FUNCTION_0_61();
      OUTLINED_FUNCTION_186();
      sub_1B913EA40();
      OUTLINED_FUNCTION_4_32();
      sub_1B8CD28D0(v16, v17, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText);
      OUTLINED_FUNCTION_288_0();
      sub_1B964C740();
      OUTLINED_FUNCTION_3_34();
      sub_1B913FC94();
      if (v0)
      {
        goto LABEL_16;
      }
    }

    OUTLINED_FUNCTION_1();
    if (v18)
    {
      sub_1B964C700();
      v19 = v24;
      if (v0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v19 = v24;
    }

    OUTLINED_FUNCTION_285_1(*(v19 + 32));
    sub_1B8D92024();
    v20 = OUTLINED_FUNCTION_443();
    OUTLINED_FUNCTION_178(v20, v21, v9);
    if (v15)
    {
      sub_1B8D9207C(v6, &qword_1EBAC5B58, &qword_1B9694778);
LABEL_15:
      OUTLINED_FUNCTION_466();
      sub_1B964C290();
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_0_61();
    sub_1B913EA40();
    OUTLINED_FUNCTION_4_32();
    sub_1B8CD28D0(v22, v23, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText);
    OUTLINED_FUNCTION_272_2();
    sub_1B964C740();
    OUTLINED_FUNCTION_3_34();
    sub_1B913FC94();
    if (!v0)
    {
      goto LABEL_15;
    }
  }

LABEL_16:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Siri_Platform_Watchos_SpecificAnswerItem.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_16();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_66();
  v7 = (v5 - v6);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v50 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B58, &qword_1B9694778);
  v12 = OUTLINED_FUNCTION_183(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44_0();
  v54 = v13;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_441();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5BB0, &qword_1B96947B0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_66();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_219_0();
  OUTLINED_FUNCTION_201_3();
  v23 = v23 && v21 == v22;
  if (!v23 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_37;
  }

  v53 = v19;
  v51 = v7;
  v24 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SpecificAnswerItem(0);
  v55 = v0;
  v52 = v24;
  v25 = *(v15 + 48);
  sub_1B8D92024();
  v26 = v55;
  sub_1B8D92024();
  OUTLINED_FUNCTION_99_0(v3);
  if (v23)
  {
    OUTLINED_FUNCTION_99_0(v3 + v25);
    if (v23)
    {
      sub_1B8D9207C(v3, &qword_1EBAC5B58, &qword_1B9694778);
      goto LABEL_11;
    }

    goto LABEL_25;
  }

  OUTLINED_FUNCTION_502();
  sub_1B8D92024();
  OUTLINED_FUNCTION_99_0(v3 + v25);
  if (v33)
  {
    OUTLINED_FUNCTION_3_34();
    sub_1B913FC94();
LABEL_25:
    v34 = &qword_1EBAC5BB0;
    v35 = &qword_1B96947B0;
LABEL_35:
    v41 = v3;
LABEL_36:
    sub_1B8D9207C(v41, v34, v35);
LABEL_37:
    v32 = 0;
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_0_61();
  sub_1B913EA40();
  v36 = *v2 == *v10 && v2[1] == v10[1];
  if (!v36 && (sub_1B964C9F0() & 1) == 0 || (sub_1B8D611FC(v2[2], v10[2]), (v37 & 1) == 0))
  {
    OUTLINED_FUNCTION_14_19();
    sub_1B913FC94();
    OUTLINED_FUNCTION_182();
    sub_1B913FC94();
    v34 = &qword_1EBAC5B58;
    v35 = &qword_1B9694778;
    goto LABEL_35;
  }

  v38 = sub_1B964C2B0();
  OUTLINED_FUNCTION_1_52();
  sub_1B8CD28D0(v39, v40, MEMORY[0x1E69AAC10]);
  v26 = v55;
  sub_1B964C850();
  OUTLINED_FUNCTION_8_31();
  sub_1B913FC94();
  OUTLINED_FUNCTION_1_0();
  sub_1B913FC94();
  sub_1B8D9207C(v3, &qword_1EBAC5B58, &qword_1B9694778);
  if ((v38 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_11:
  v27 = *(v1 + 16) == *(v26 + 16) && *(v1 + 24) == *(v26 + 24);
  if (!v27 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_37;
  }

  v28 = v53;
  v29 = *(v15 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_99_0(v28);
  if (v23)
  {
    OUTLINED_FUNCTION_99_0(v28 + v29);
    if (v23)
    {
      sub_1B8D9207C(v28, &qword_1EBAC5B58, &qword_1B9694778);
      goto LABEL_21;
    }

    goto LABEL_42;
  }

  v42 = v54;
  sub_1B8D92024();
  OUTLINED_FUNCTION_99_0(v28 + v29);
  if (v43)
  {
    OUTLINED_FUNCTION_3_34();
    sub_1B913FC94();
LABEL_42:
    v34 = &qword_1EBAC5BB0;
    v35 = &qword_1B96947B0;
LABEL_52:
    v41 = v28;
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_0_61();
  v44 = v51;
  sub_1B913EA40();
  v45 = *v42 == *v44 && v42[1] == v44[1];
  if (!v45 && (sub_1B964C9F0() & 1) == 0 || (sub_1B8D611FC(v42[2], v44[2]), (v46 & 1) == 0))
  {
    OUTLINED_FUNCTION_14_19();
    sub_1B913FC94();
    sub_1B913FC94();
    v34 = &qword_1EBAC5B58;
    v35 = &qword_1B9694778;
    goto LABEL_52;
  }

  v47 = sub_1B964C2B0();
  OUTLINED_FUNCTION_1_52();
  sub_1B8CD28D0(v48, v49, MEMORY[0x1E69AAC10]);
  sub_1B964C850();
  OUTLINED_FUNCTION_8_31();
  sub_1B913FC94();
  OUTLINED_FUNCTION_502();
  sub_1B913FC94();
  sub_1B8D9207C(v28, &qword_1EBAC5B58, &qword_1B9694778);
  if ((v47 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_21:
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_52();
  sub_1B8CD28D0(v30, v31, MEMORY[0x1E69AAC10]);
  v32 = sub_1B964C850();
LABEL_38:
  OUTLINED_FUNCTION_264(v32);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B91561DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD28D0(&qword_1EBAC6038, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SpecificAnswerItem, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_SpecificAnswerItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B915625C(uint64_t a1)
{
  v2 = sub_1B8CD28D0(&qword_1EBAC6008, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SpecificAnswerItem, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_SpecificAnswerItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91562CC(uint64_t a1, uint64_t a2)
{
  sub_1B8CD28D0(&qword_1EBAC6008, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SpecificAnswerItem, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_SpecificAnswerItem);

  return sub_1B964C5D0();
}

void sub_1B9156384()
{
  OUTLINED_FUNCTION_243();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1B964C780();
  __swift_allocate_value_buffer(v8, v7);
  __swift_project_value_buffer(v8, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v9 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v10 = (*(*v9 + 80) + 32) & ~*(*v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B964D050;
  v12 = v11 + v10 + v9[14];
  *(v11 + v10) = 1;
  *v12 = v5;
  *(v12 + 8) = v3;
  *(v12 + 16) = 2;
  v13 = *v1;
  sub_1B964C750();
  OUTLINED_FUNCTION_59_1();
  (*(v14 + 104))(v12, v13);
  sub_1B964C760();
  OUTLINED_FUNCTION_242();
}

void sub_1B9156564()
{
  OUTLINED_FUNCTION_273_0();
  v2 = OUTLINED_FUNCTION_114_1();
  v3(v2);
  v4 = OUTLINED_FUNCTION_128();
  v6 = sub_1B8CD28D0(v4, v5, v0);
  OUTLINED_FUNCTION_157_1(v1, v7, v6);
  OUTLINED_FUNCTION_272_0();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_ImageCollectionItem.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(0), OUTLINED_FUNCTION_13_21(), sub_1B8CD28D0(v2, v3, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_749(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
  {
    type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ImageCollectionItem(0);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t sub_1B9156688(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_468();
  if ((v7(*v5, *v6) & 1) == 0)
  {
    return 0;
  }

  a4(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_52();
  v10 = sub_1B8CD28D0(v8, v9, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v10) & 1;
}

uint64_t sub_1B9156760()
{
  OUTLINED_FUNCTION_111_0();
  v2 = v1;
  sub_1B964CA70();
  v2(0);
  v3 = OUTLINED_FUNCTION_461();
  sub_1B8CD28D0(v3, v4, v0);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9156838(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD28D0(&qword_1EBAC6030, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ImageCollectionItem, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_ImageCollectionItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91568B8(uint64_t a1)
{
  v2 = sub_1B8CD28D0(&qword_1EBAC6020, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ImageCollectionItem, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_ImageCollectionItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9156928(uint64_t a1, uint64_t a2)
{
  sub_1B8CD28D0(&qword_1EBAC6020, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ImageCollectionItem, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_ImageCollectionItem);

  return sub_1B964C5D0();
}

unint64_t sub_1B91569C8()
{
  result = qword_1EBAC5B88;
  if (!qword_1EBAC5B88)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_TemplateItem.TypeEnum, &type metadata for Apple_Parsec_Siri_Platform_Watchos_TemplateItem.TypeEnum, v0, v1);
    atomic_store(result, &qword_1EBAC5B88);
  }

  return result;
}

unint64_t sub_1B9156A1C()
{
  result = qword_1EBAC5BC8;
  if (!qword_1EBAC5BC8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_HeroImageItem.ContentPosition, &type metadata for Apple_Parsec_Siri_Platform_Watchos_HeroImageItem.ContentPosition, v0, v1);
    atomic_store(result, &qword_1EBAC5BC8);
  }

  return result;
}

unint64_t sub_1B9156A70()
{
  result = qword_1EBAC5C10;
  if (!qword_1EBAC5C10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_AttributionItem.AttributionPosition, &type metadata for Apple_Parsec_Siri_Platform_Watchos_AttributionItem.AttributionPosition, v0, v1);
    atomic_store(result, &qword_1EBAC5C10);
  }

  return result;
}

unint64_t sub_1B9156AC4()
{
  result = qword_1EBAC5C20;
  if (!qword_1EBAC5C20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource.LocalImageResourceCode, &type metadata for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource.LocalImageResourceCode, v0, v1);
    atomic_store(result, &qword_1EBAC5C20);
  }

  return result;
}

unint64_t sub_1B9156B18()
{
  result = qword_1EBAC5C28;
  if (!qword_1EBAC5C28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource.ImageDownloadType, &type metadata for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource.ImageDownloadType, v0, v1);
    atomic_store(result, &qword_1EBAC5C28);
  }

  return result;
}

unint64_t sub_1B9156B6C()
{
  result = qword_1EBAC5C50;
  if (!qword_1EBAC5C50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_TextDecorationRegion.RegionProperty, &type metadata for Apple_Parsec_Siri_Platform_Watchos_TextDecorationRegion.RegionProperty, v0, v1);
    atomic_store(result, &qword_1EBAC5C50);
  }

  return result;
}

unint64_t sub_1B9156BC0()
{
  result = qword_1EBAC5C70;
  if (!qword_1EBAC5C70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem.RowLayout, &type metadata for Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem.RowLayout, v0, v1);
    atomic_store(result, &qword_1EBAC5C70);
  }

  return result;
}

unint64_t sub_1B9156C18()
{
  result = qword_1EBAC5CD8;
  if (!qword_1EBAC5CD8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_TemplateItem.TypeEnum, &type metadata for Apple_Parsec_Siri_Platform_Watchos_TemplateItem.TypeEnum, v0, v1);
    atomic_store(result, &qword_1EBAC5CD8);
  }

  return result;
}

unint64_t sub_1B9156C70()
{
  result = qword_1EBAC5CE0;
  if (!qword_1EBAC5CE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_TemplateItem.TypeEnum, &type metadata for Apple_Parsec_Siri_Platform_Watchos_TemplateItem.TypeEnum, v0, v1);
    atomic_store(result, &qword_1EBAC5CE0);
  }

  return result;
}

unint64_t sub_1B9156CC8()
{
  result = qword_1EBAC5CE8;
  if (!qword_1EBAC5CE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_TemplateItem.TypeEnum, &type metadata for Apple_Parsec_Siri_Platform_Watchos_TemplateItem.TypeEnum, v0, v1);
    atomic_store(result, &qword_1EBAC5CE8);
  }

  return result;
}

unint64_t sub_1B9156D50()
{
  result = qword_1EBAC5D00;
  if (!qword_1EBAC5D00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_HeroImageItem.ContentPosition, &type metadata for Apple_Parsec_Siri_Platform_Watchos_HeroImageItem.ContentPosition, v0, v1);
    atomic_store(result, &qword_1EBAC5D00);
  }

  return result;
}

unint64_t sub_1B9156DA8()
{
  result = qword_1EBAC5D08;
  if (!qword_1EBAC5D08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_HeroImageItem.ContentPosition, &type metadata for Apple_Parsec_Siri_Platform_Watchos_HeroImageItem.ContentPosition, v0, v1);
    atomic_store(result, &qword_1EBAC5D08);
  }

  return result;
}

unint64_t sub_1B9156E00()
{
  result = qword_1EBAC5D10;
  if (!qword_1EBAC5D10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_HeroImageItem.ContentPosition, &type metadata for Apple_Parsec_Siri_Platform_Watchos_HeroImageItem.ContentPosition, v0, v1);
    atomic_store(result, &qword_1EBAC5D10);
  }

  return result;
}

unint64_t sub_1B9156E88()
{
  result = qword_1EBAC5D28;
  if (!qword_1EBAC5D28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_AttributionItem.AttributionPosition, &type metadata for Apple_Parsec_Siri_Platform_Watchos_AttributionItem.AttributionPosition, v0, v1);
    atomic_store(result, &qword_1EBAC5D28);
  }

  return result;
}

unint64_t sub_1B9156EE0()
{
  result = qword_1EBAC5D30;
  if (!qword_1EBAC5D30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_AttributionItem.AttributionPosition, &type metadata for Apple_Parsec_Siri_Platform_Watchos_AttributionItem.AttributionPosition, v0, v1);
    atomic_store(result, &qword_1EBAC5D30);
  }

  return result;
}

unint64_t sub_1B9156F38()
{
  result = qword_1EBAC5D38;
  if (!qword_1EBAC5D38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_AttributionItem.AttributionPosition, &type metadata for Apple_Parsec_Siri_Platform_Watchos_AttributionItem.AttributionPosition, v0, v1);
    atomic_store(result, &qword_1EBAC5D38);
  }

  return result;
}

unint64_t sub_1B9156FC0()
{
  result = qword_1EBAC5D50;
  if (!qword_1EBAC5D50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource.LocalImageResourceCode, &type metadata for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource.LocalImageResourceCode, v0, v1);
    atomic_store(result, &qword_1EBAC5D50);
  }

  return result;
}

unint64_t sub_1B9157018()
{
  result = qword_1EBAC5D58;
  if (!qword_1EBAC5D58)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource.LocalImageResourceCode, &type metadata for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource.LocalImageResourceCode, v0, v1);
    atomic_store(result, &qword_1EBAC5D58);
  }

  return result;
}

unint64_t sub_1B9157070()
{
  result = qword_1EBAC5D60;
  if (!qword_1EBAC5D60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource.LocalImageResourceCode, &type metadata for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource.LocalImageResourceCode, v0, v1);
    atomic_store(result, &qword_1EBAC5D60);
  }

  return result;
}

unint64_t sub_1B91570C8()
{
  result = qword_1EBAC5D68;
  if (!qword_1EBAC5D68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource.ImageDownloadType, &type metadata for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource.ImageDownloadType, v0, v1);
    atomic_store(result, &qword_1EBAC5D68);
  }

  return result;
}

unint64_t sub_1B9157120()
{
  result = qword_1EBAC5D70;
  if (!qword_1EBAC5D70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource.ImageDownloadType, &type metadata for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource.ImageDownloadType, v0, v1);
    atomic_store(result, &qword_1EBAC5D70);
  }

  return result;
}

unint64_t sub_1B9157178()
{
  result = qword_1EBAC5D78;
  if (!qword_1EBAC5D78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource.ImageDownloadType, &type metadata for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource.ImageDownloadType, v0, v1);
    atomic_store(result, &qword_1EBAC5D78);
  }

  return result;
}

unint64_t sub_1B9157230()
{
  result = qword_1EBAC5DA0;
  if (!qword_1EBAC5DA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_TextDecorationRegion.RegionProperty, &type metadata for Apple_Parsec_Siri_Platform_Watchos_TextDecorationRegion.RegionProperty, v0, v1);
    atomic_store(result, &qword_1EBAC5DA0);
  }

  return result;
}

unint64_t sub_1B9157288()
{
  result = qword_1EBAC5DA8;
  if (!qword_1EBAC5DA8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_TextDecorationRegion.RegionProperty, &type metadata for Apple_Parsec_Siri_Platform_Watchos_TextDecorationRegion.RegionProperty, v0, v1);
    atomic_store(result, &qword_1EBAC5DA8);
  }

  return result;
}

unint64_t sub_1B91572E0()
{
  result = qword_1EBAC5DB0;
  if (!qword_1EBAC5DB0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_TextDecorationRegion.RegionProperty, &type metadata for Apple_Parsec_Siri_Platform_Watchos_TextDecorationRegion.RegionProperty, v0, v1);
    atomic_store(result, &qword_1EBAC5DB0);
  }

  return result;
}

unint64_t sub_1B9157368()
{
  result = qword_1EBAC5DC8;
  if (!qword_1EBAC5DC8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem.RowLayout, &type metadata for Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem.RowLayout, v0, v1);
    atomic_store(result, &qword_1EBAC5DC8);
  }

  return result;
}

unint64_t sub_1B91573C0()
{
  result = qword_1EBAC5DD0;
  if (!qword_1EBAC5DD0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem.RowLayout, &type metadata for Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem.RowLayout, v0, v1);
    atomic_store(result, &qword_1EBAC5DD0);
  }

  return result;
}

unint64_t sub_1B9157418()
{
  result = qword_1EBAC5DD8;
  if (!qword_1EBAC5DD8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem.RowLayout, &type metadata for Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem.RowLayout, v0, v1);
    atomic_store(result, &qword_1EBAC5DD8);
  }

  return result;
}

void sub_1B9159324(uint64_t a1)
{
  sub_1B9159420(319, &qword_1ED9CF5A8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TemplateItem, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B9159420(319, &qword_1ED9CF590, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SnippetObject, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B9159420(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B915954C(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B9159420(319, &qword_1ED9EB860, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B9159660(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B9159420(319, &qword_1ED9EB388, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B9159420(319, &qword_1ED9EB4D8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedString, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_127Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 8));
  }

  OUTLINED_FUNCTION_166_6();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1();
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_194_1();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_186();
    __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
    OUTLINED_FUNCTION_266();
  }

  v8 = OUTLINED_FUNCTION_699(v5);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void __swift_store_extra_inhabitant_index_128Tm()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_279_1();
    OUTLINED_FUNCTION_128_1();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_196_2();
    }

    else
    {
      v4 = OUTLINED_FUNCTION_186();
      __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
      OUTLINED_FUNCTION_258_0();
    }

    v6 = OUTLINED_FUNCTION_61_0(v3);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

void sub_1B9159928()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_175_6();
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_123_1();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_180_1();
    }
  }
}

void sub_1B9159A14(uint64_t a1)
{
  sub_1B9159420(319, &qword_1ED9CF598, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      sub_1B9159420(319, &qword_1ED9EB860, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B9159BC8(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_169Tm()
{
  OUTLINED_FUNCTION_468();
  v3 = *(v2 + 28);
  v4 = sub_1B964C2B0();

  return __swift_getEnumTagSinglePayload(v1 + v3, v0, v4);
}

uint64_t __swift_store_extra_inhabitant_index_170Tm()
{
  OUTLINED_FUNCTION_468();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_81_0();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1B9159DD0()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_123_1();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_180_1();
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_136Tm()
{
  OUTLINED_FUNCTION_468();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1();
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_753();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B58, &qword_1B9694778);
    OUTLINED_FUNCTION_194_1();
    v3 = v1 + v5;
  }

  return __swift_getEnumTagSinglePayload(v3, v0, v4);
}

uint64_t __swift_store_extra_inhabitant_index_137Tm()
{
  OUTLINED_FUNCTION_365_0();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_231();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B58, &qword_1B9694778);
    OUTLINED_FUNCTION_196_2();
  }

  OUTLINED_FUNCTION_81_0();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void sub_1B9159FA4()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B9159420(319, &qword_1ED9EB860, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_123_1();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_180_1();
    }
  }
}

void sub_1B915A0CC(uint64_t a1)
{
  sub_1B9159420(319, &qword_1ED9CF598, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      sub_1B9159420(319, &qword_1ED9EB860, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1B9159420(319, &qword_1ED9EB388, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B915A2B4(uint64_t a1)
{
  sub_1B9159420(319, &qword_1ED9CF598, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      sub_1B9159420(319, &qword_1ED9EB860, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1B9159420(319, &qword_1ED9EB388, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B915A420(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B9159420(319, &qword_1ED9EB860, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B9159420(319, &qword_1ED9EB388, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B915A55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_1B964C2B0();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      OUTLINED_FUNCTION_123_1();
      swift_cvw_initStructMetadataWithLayoutString();
      return OUTLINED_FUNCTION_180_1();
    }
  }

  return result;
}

uint64_t sub_1B915A638(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Answer(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, j_j____swift_get_extra_inhabitant_index_232Tm_0);
}

uint64_t sub_1B915A690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Answer(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, j_j____swift_store_extra_inhabitant_index_125Tm_3_0);
}

uint64_t sub_1B915A6F8(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Answer(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

uint64_t __swift_get_extra_inhabitant_index_232Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_166_6();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_266();
  v4 = OUTLINED_FUNCTION_699(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B915A850(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1B9159420(319, a4, a5, MEMORY[0x1E69E62F8]);
  if (v5 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v6 <= 0x3F)
    {
      OUTLINED_FUNCTION_123_1();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_180_1();
    }
  }
}

void sub_1B915A94C()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_175_6();
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_123_1();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_180_1();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_196Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 8));
  }

  OUTLINED_FUNCTION_166_6();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1();
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_266();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_186();
    __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
    OUTLINED_FUNCTION_267_0();
  }

  v8 = OUTLINED_FUNCTION_699(v5);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void __swift_store_extra_inhabitant_index_197Tm()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_279_1();
    OUTLINED_FUNCTION_128_1();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_258_0();
    }

    else
    {
      v4 = OUTLINED_FUNCTION_186();
      __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
      OUTLINED_FUNCTION_259_0();
    }

    v6 = OUTLINED_FUNCTION_61_0(v3);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

void sub_1B915AB5C(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B9159420(319, &qword_1ED9EB860, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_298Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*v0);
  }

  OUTLINED_FUNCTION_166_6();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_194_1();
  v4 = OUTLINED_FUNCTION_699(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void __swift_store_extra_inhabitant_index_299Tm()
{
  OUTLINED_FUNCTION_7();
  if (v0)
  {
    OUTLINED_FUNCTION_169_1();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_196_2();
    v2 = OUTLINED_FUNCTION_61_0(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

void sub_1B915AD40(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  sub_1B9159420(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v7 <= 0x3F)
    {
      OUTLINED_FUNCTION_123_1();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_180_1();
    }
  }
}

void sub_1B915ADCC(uint64_t a1)
{
  sub_1B9159420(319, &qword_1ED9EBD58, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeaderItem, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B9159420(319, &qword_1ED9EB830, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SubheaderItem, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B9159420(319, &qword_1ED9EB848, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeroImageItem, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1B9159420(319, &qword_1ED9EB8A8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_BodyTextItem, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1B9159420(319, &qword_1ED9EBCA0, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_MapViewItem, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1B9159420(319, &qword_1ED9EB480, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_PropertyListItem, MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_1B9159420(319, &qword_1ED9EBCB8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_KeylineItem, MEMORY[0x1E69E6720]);
              if (v7 <= 0x3F)
              {
                sub_1B9159420(319, &qword_1ED9EB520, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_LineDetailItem, MEMORY[0x1E69E6720]);
                if (v8 <= 0x3F)
                {
                  sub_1B9159420(319, &qword_1ED9EBD70, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ButtonItem, MEMORY[0x1E69E6720]);
                  if (v9 <= 0x3F)
                  {
                    sub_1B9159420(319, &qword_1ED9EB3B8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem, MEMORY[0x1E69E6720]);
                    if (v10 <= 0x3F)
                    {
                      sub_1B9159420(319, &qword_1ED9EB4C0, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TableHeaderItem, MEMORY[0x1E69E6720]);
                      if (v11 <= 0x3F)
                      {
                        sub_1B9159420(319, &qword_1ED9EB890, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TableRowItem, MEMORY[0x1E69E6720]);
                        if (v12 <= 0x3F)
                        {
                          sub_1B9159420(319, &qword_1ED9EB538, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonItem, MEMORY[0x1E69E6720]);
                          if (v13 <= 0x3F)
                          {
                            sub_1B9159420(319, &qword_1ED9EB4F0, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_AttributionItem, MEMORY[0x1E69E6720]);
                            if (v14 <= 0x3F)
                            {
                              sub_1B9159420(319, &qword_1ED9EB3A0, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SpecificAnswerItem, MEMORY[0x1E69E6720]);
                              if (v15 <= 0x3F)
                              {
                                sub_1B9159420(319, &qword_1ED9EB370, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ImageCollectionItem, MEMORY[0x1E69E6720]);
                                if (v16 <= 0x3F)
                                {
                                  swift_updateClassMetadata2();
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

void sub_1B915B4E4(uint64_t a1)
{
  sub_1B9159420(319, &qword_1ED9EB498, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B9159420(319, &qword_1ED9EB860, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t OUTLINED_FUNCTION_10_27(uint64_t a1)
{
  *(v1 + 8) = a1;
  result = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
  *(v1 + 16) = result;
  return result;
}

void OUTLINED_FUNCTION_24_18()
{
  *v1 = 0;
  *(v1 + 8) = 0xE000000000000000;
  *(v1 + 48) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 16) = 0;
  *(v1 + 40) = 0;
  *(v1 + 56) = v0;
  *(v1 + 64) = 0;
  *(v1 + 72) = v0;
}

uint64_t OUTLINED_FUNCTION_94_9()
{
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Value._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_143_4()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_147_5@<X0>(uint64_t a2@<X8>)
{
  *(v2 + 16) = a2;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_162_2(uint64_t a1)
{
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Value(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_175_6()
{
  v3 = MEMORY[0x1E69E6720];

  sub_1B9159420(319, v1, v0, v3);
}

uint64_t OUTLINED_FUNCTION_188_2@<X0>(uint64_t a2@<X8>)
{
  *(v2 + 16) = a2;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_194_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_198_2()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_200_3(uint64_t a1)
{

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_207_4(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_212_3(uint64_t a1, __n128 a2)
{
  v2[5] = a2;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_237_2()
{

  return sub_1B913EA40();
}

uint64_t OUTLINED_FUNCTION_238_2()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_239_2()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_248_1(uint64_t a1)
{

  return sub_1B964C290();
}

uint64_t OUTLINED_FUNCTION_279_1()
{

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_282_2(uint64_t a1)
{

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_283_3(uint64_t a1)
{

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_284_1()
{

  return sub_1B913FC94();
}

uint64_t OUTLINED_FUNCTION_303_1(uint64_t a1, uint64_t a2)
{

  return sub_1B964C700();
}

uint64_t OUTLINED_FUNCTION_304_1()
{

  return type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
}

uint64_t OUTLINED_FUNCTION_305_1()
{

  return sub_1B913FC94();
}

uint64_t OUTLINED_FUNCTION_307_0(uint64_t a1)
{

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_309_1()
{

  return sub_1B8D92024();
}

unint64_t Apple_Parsec_Siri_V1alpha_StatusCode.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B915C178@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Siri_V1alpha_StatusCode.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B915C1AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B915C74C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Apple_Parsec_Siri_V1alpha_StatusCode.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBAC6198 = a1;
}

uint64_t sub_1B915C2F4@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V1alpha_StatusCode.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B915C31C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC61A0);
  __swift_project_value_buffer(v0, qword_1EBAC61A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "StatusOK";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "StatusError";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "StatusNoResults";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Apple_Parsec_Siri_V1alpha_StatusCode._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB75A0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAC61A0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1B915C5CC()
{
  result = qword_1EBAC61B8;
  if (!qword_1EBAC61B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V1alpha_StatusCode, &type metadata for Apple_Parsec_Siri_V1alpha_StatusCode, v0, v1);
    atomic_store(result, &qword_1EBAC61B8);
  }

  return result;
}

unint64_t sub_1B915C624()
{
  result = qword_1EBAC61C0;
  if (!qword_1EBAC61C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V1alpha_StatusCode, &type metadata for Apple_Parsec_Siri_V1alpha_StatusCode, v0, v1);
    atomic_store(result, &qword_1EBAC61C0);
  }

  return result;
}

unint64_t sub_1B915C67C()
{
  result = qword_1EBAC61C8;
  if (!qword_1EBAC61C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V1alpha_StatusCode, &type metadata for Apple_Parsec_Siri_V1alpha_StatusCode, v0, v1);
    atomic_store(result, &qword_1EBAC61C8);
  }

  return result;
}

unint64_t sub_1B915C6D4()
{
  result = qword_1EBAC61D0;
  if (!qword_1EBAC61D0)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAC61D8, &qword_1B96981A8);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EBAC61D0);
  }

  return result;
}

unint64_t sub_1B915C74C()
{
  result = qword_1EBAC61E0;
  if (!qword_1EBAC61E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V1alpha_StatusCode, &type metadata for Apple_Parsec_Siri_V1alpha_StatusCode, v0, v1);
    atomic_store(result, &qword_1EBAC61E0);
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes.name.setter()
{
  OUTLINED_FUNCTION_16();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes.subLocality.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes.administrativeArea.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes.subAdministrativeArea.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes.country.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes.isoCountryCode.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes.postalAddress.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes.subThoroughfare.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes.thoroughfare.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 144) = v2;
  *(v1 + 152) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(0) + 64);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(v2) + 64);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(v0);
  return nullsub_1;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = 0;
  a1[7] = 0xE000000000000000;
  a1[8] = 0;
  a1[9] = 0xE000000000000000;
  a1[10] = 0;
  a1[11] = 0xE000000000000000;
  a1[12] = 0;
  a1[13] = 0xE000000000000000;
  a1[14] = 0;
  a1[15] = 0xE000000000000000;
  a1[16] = 0;
  a1[17] = 0xE000000000000000;
  a1[18] = 0;
  a1[19] = 0xE000000000000000;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(0);
  a1[20] = 0;
  a1[21] = 0;
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_Timestamp.timezone.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_Timestamp.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(0) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_Timestamp.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(v2) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Apple_Parsec_Siri_V2alpha_Timestamp.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(v0);
  return nullsub_1;
}

uint64_t Apple_Parsec_Siri_V2alpha_Timestamp.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B915D0C0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC61E8);
  __swift_project_value_buffer(v0, qword_1EBAC61E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1B964D040;
  v4 = v31 + v3;
  v5 = v31 + v3 + v1[14];
  *(v31 + v3) = 1;
  *v5 = "name";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "locality";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "sub_locality";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "administrative_area";
  *(v13 + 1) = 19;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "sub_administrative_area";
  *(v15 + 1) = 23;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "country";
  *(v17 + 1) = 7;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "iso_country_code";
  *(v19 + 1) = 16;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "postal_address";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "sub_thoroughfare";
  *(v23 + 1) = 16;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "thoroughfare";
  *(v25 + 1) = 12;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "latitude";
  *(v27 + 1) = 8;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "longitude";
  *(v29 + 1) = 9;
  v29[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
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
      case 9:
      case 10:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 11:
      case 12:
        OUTLINED_FUNCTION_12();
        sub_1B964C510();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v4 || (result = OUTLINED_FUNCTION_3(v2, v3, 1), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v8 || (result = OUTLINED_FUNCTION_3(v6, v7, 2), !v0))
    {
      OUTLINED_FUNCTION_1();
      if (!v11 || (result = OUTLINED_FUNCTION_3(v9, v10, 3), !v0))
      {
        OUTLINED_FUNCTION_1();
        if (!v14 || (result = OUTLINED_FUNCTION_3(v12, v13, 4), !v0))
        {
          OUTLINED_FUNCTION_1();
          if (!v17 || (result = OUTLINED_FUNCTION_3(v15, v16, 5), !v0))
          {
            OUTLINED_FUNCTION_1();
            if (!v20 || (result = OUTLINED_FUNCTION_3(v18, v19, 6), !v0))
            {
              OUTLINED_FUNCTION_1();
              if (!v23 || (result = OUTLINED_FUNCTION_3(v21, v22, 7), !v0))
              {
                OUTLINED_FUNCTION_1();
                if (!v26 || (result = OUTLINED_FUNCTION_3(v24, v25, 8), !v0))
                {
                  OUTLINED_FUNCTION_1();
                  if (!v29 || (result = OUTLINED_FUNCTION_3(v27, v28, 9), !v0))
                  {
                    OUTLINED_FUNCTION_1();
                    if (!v32 || (result = OUTLINED_FUNCTION_3(v30, v31, 10), !v0))
                    {
                      if (*(v1 + 160) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6F0(), !v0))
                      {
                        if (*(v1 + 168) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6F0(), !v0))
                        {
                          type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(0);
                          OUTLINED_FUNCTION_12();
                          return sub_1B964C290();
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

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes.== infix(_:_:)(double *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 2) == *(a2 + 16) && *(a1 + 3) == *(a2 + 24);
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 4) == *(a2 + 32) && *(a1 + 5) == *(a2 + 40);
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a1 + 6) == *(a2 + 48) && *(a1 + 7) == *(a2 + 56);
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a1 + 8) == *(a2 + 64) && *(a1 + 9) == *(a2 + 72);
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v9 = *(a1 + 10) == *(a2 + 80) && *(a1 + 11) == *(a2 + 88);
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v10 = *(a1 + 12) == *(a2 + 96) && *(a1 + 13) == *(a2 + 104);
  if (!v10 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v11 = *(a1 + 14) == *(a2 + 112) && *(a1 + 15) == *(a2 + 120);
  if (!v11 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v12 = *(a1 + 16) == *(a2 + 128) && *(a1 + 17) == *(a2 + 136);
  if (!v12 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v13 = *(a1 + 18) == *(a2 + 144) && *(a1 + 19) == *(a2 + 152);
  if (!v13 && (sub_1B964C9F0() & 1) == 0 || a1[20] != *(a2 + 160) || a1[21] != *(a2 + 168))
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_3_35();
  v16 = sub_1B8CD2918(v14, v15, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v16) & 1;
}

uint64_t sub_1B915DA4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2918(&qword_1EBAC6260, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B915DACC(uint64_t a1)
{
  v2 = sub_1B8CD2918(&qword_1EBAC6230, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B915DB3C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2918(&qword_1EBAC6230, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes);

  return sub_1B964C5D0();
}

uint64_t sub_1B915DBD8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6200);
  __swift_project_value_buffer(v0, qword_1EBAC6200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "seconds";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "utc_offset";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "timezone";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_Timestamp.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C4B0();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_Timestamp.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C6D0(), !v1))
  {
    if (!*(v2 + 8) || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C6D0(), !v1))
    {
      OUTLINED_FUNCTION_1();
      if (!v6 || (result = OUTLINED_FUNCTION_3(v4, v5, 3), !v1))
      {
        type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(0);
        OUTLINED_FUNCTION_12();
        return sub_1B964C290();
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_Timestamp.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v2 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v2 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_3_35();
  v5 = sub_1B8CD2918(v3, v4, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v5) & 1;
}

uint64_t sub_1B915E048(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  sub_1B964CA70();
  a1(0);
  sub_1B8CD2918(a2, a3, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B915E12C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2918(&qword_1EBAC6258, type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_Timestamp);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B915E1AC(uint64_t a1)
{
  v2 = sub_1B8CD2918(&qword_1EBAC6248, type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_Timestamp);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B915E21C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2918(&qword_1EBAC6248, type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_Timestamp);

  return sub_1B964C5D0();
}

uint64_t sub_1B915E504(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B915E5CC(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_PegasusAppIntentData.weatherAppIntentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_177_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_27_9();
  v7 = OUTLINED_FUNCTION_96_4();
  OUTLINED_FUNCTION_57(v7);
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAC6330, &qword_1B96985F0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      OUTLINED_FUNCTION_12_24();
      OUTLINED_FUNCTION_288();
      return sub_1B916402C();
    }

    sub_1B9163FB8();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v10 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData(0) + 20);
  if (qword_1EBAB75C8 != -1)
  {
    OUTLINED_FUNCTION_17_19(&qword_1EBAB75C8);
  }

  *(a1 + v10) = qword_1EBAC62B0;
}

uint64_t Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.init()@<X0>(uint64_t a2@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData(0) + 20);
  if (qword_1EBAB75C8 != -1)
  {
    OUTLINED_FUNCTION_17_19(&qword_1EBAB75C8);
  }

  *(a2 + v3) = qword_1EBAC62B0;
}

void Apple_Parsec_Siri_V2alpha_PegasusAppIntentData.weatherAppIntentData.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData(v8);
  OUTLINED_FUNCTION_59_1();
  v11 = *(v10 + 64);
  v1[2] = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  v1[3] = v12;
  v13 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_643(v13, v14);
  v1[4] = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData.OneOf_Data(0);
  OUTLINED_FUNCTION_75(v0);
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBAC6330, &qword_1B96985F0);
  }

  else
  {
    OUTLINED_FUNCTION_177_1();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      OUTLINED_FUNCTION_12_24();
      OUTLINED_FUNCTION_128();
      sub_1B916402C();
      goto LABEL_10;
    }

    sub_1B9163FB8();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v17 = *(v9 + 20);
  if (qword_1EBAB75C8 != -1)
  {
    OUTLINED_FUNCTION_17_19(&qword_1EBAB75C8);
  }

  *&v12[v17] = qword_1EBAC62B0;

LABEL_10:
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_V2alpha_PegasusAppIntentData.clockAppIntentData.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_177_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_27_9();
  v7 = OUTLINED_FUNCTION_96_4();
  OUTLINED_FUNCTION_57(v7);
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAC6330, &qword_1B96985F0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_15_18();
      OUTLINED_FUNCTION_288();
      return sub_1B916402C();
    }

    sub_1B9163FB8();
  }

  *a1 = 0;
  OUTLINED_FUNCTION_92_8();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(0);
  OUTLINED_FUNCTION_83();
  return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
}

uint64_t sub_1B915EBCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_177_1();
  sub_1B9164080();
  return a7(v7);
}

uint64_t sub_1B915EC78(uint64_t a1, uint64_t a2)
{
  sub_1B8D9207C(v2, &qword_1EBAC6330, &qword_1B96985F0);
  OUTLINED_FUNCTION_128();
  sub_1B916402C();
  OUTLINED_FUNCTION_96_4();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, a2);
}

uint64_t Apple_Parsec_Siri_V2alpha_ClockAppIntentData.init()@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  OUTLINED_FUNCTION_92_8();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

void Apple_Parsec_Siri_V2alpha_PegasusAppIntentData.clockAppIntentData.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData(v8);
  OUTLINED_FUNCTION_59_1();
  v10 = *(v9 + 64);
  v1[2] = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  v1[3] = v11;
  v12 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_643(v12, v13);
  v1[4] = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData.OneOf_Data(0);
  OUTLINED_FUNCTION_75(v0);
  if (v14)
  {
    sub_1B8D9207C(v0, &qword_1EBAC6330, &qword_1B96985F0);
LABEL_7:
    *v11 = 0;
    v11[8] = 1;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1B9163FB8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_15_18();
  OUTLINED_FUNCTION_128();
  sub_1B916402C();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B915EF4C()
{
  OUTLINED_FUNCTION_284();
  v1 = (*v0)[3];
  v2 = (*v0)[4];
  v3 = (*v0)[1];
  v4 = (*v0)[2];
  v5 = **v0;
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B9164080();
    sub_1B8D9207C(v5, &qword_1EBAC6330, &qword_1B96985F0);
    sub_1B916402C();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v2);
    sub_1B9163FB8();
  }

  else
  {
    sub_1B8D9207C(**v0, &qword_1EBAC6330, &qword_1B96985F0);
    sub_1B916402C();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v2);
  }

  free(v1);
  free(v4);
  free(v3);
  OUTLINED_FUNCTION_283();

  free(v13);
}

void (*Apple_Parsec_Siri_V2alpha_PegasusAppIntentData.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData(v0);
  return nullsub_1;
}

void static Apple_Parsec_Siri_V2alpha_PegasusAppIntentData.OneOf_Data.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v1 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData(0);
  v2 = OUTLINED_FUNCTION_183(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_62();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v21 = v6 - v5;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData.OneOf_Data(0);
  OUTLINED_FUNCTION_59_1();
  v8 = MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6338, &qword_1B96985F8);
  OUTLINED_FUNCTION_183(v11);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_139();
  sub_1B9164080();
  sub_1B9164080();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_36_6();
    sub_1B9164080();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_15_18();
      sub_1B916402C();
      static Apple_Parsec_Siri_V2alpha_ClockAppIntentData.== infix(_:_:)();
      sub_1B9163FB8();
      sub_1B9163FB8();
      OUTLINED_FUNCTION_3_36();
      sub_1B9163FB8();
      goto LABEL_10;
    }

LABEL_5:
    sub_1B9163FB8();
    sub_1B8D9207C(v0, &qword_1EBAC6338, &qword_1B96985F8);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_36_6();
  sub_1B9164080();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_12_24();
  v13 = v21;
  sub_1B916402C();
  v14 = *(v3 + 20);
  v15 = *&v10[v14];
  v16 = *(v13 + v14);
  if (v15 == v16 || (, , v17 = sub_1B91658A0(v15, v16), , , v17))
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_2_36();
    sub_1B8CD2960(v18, v19, MEMORY[0x1E69AAC10]);
    OUTLINED_FUNCTION_461();
    sub_1B964C850();
  }

  OUTLINED_FUNCTION_43_10();
  sub_1B9163FB8();
  OUTLINED_FUNCTION_128();
  sub_1B9163FB8();
  OUTLINED_FUNCTION_3_36();
  sub_1B9163FB8();
LABEL_10:
  OUTLINED_FUNCTION_283();
}

uint64_t static Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_18_17();
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);
  if (v3 != v4)
  {

    v5 = sub_1B91658A0(v3, v4);

    if (!v5)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_36();
  sub_1B8CD2960(v6, v7, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

void static Apple_Parsec_Siri_V2alpha_ClockAppIntentData.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_280();
  v49 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(v2);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_62();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6340, &qword_1B9698600);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v48 = v46 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6348, &qword_1B9698608);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v46 - v12;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_62();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6350, &qword_1B9698610);
  OUTLINED_FUNCTION_183(v18);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v19);
  v21 = (v46 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6358, &qword_1B9698618);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v23);
  v25 = v46 - v24;
  v50 = v1;
  v26 = *v1;
  v27 = *v0;
  if (*(v0 + 8) != 1)
  {
    if (v26 != v27)
    {
      goto LABEL_46;
    }

LABEL_6:
    v46[0] = v6;
    v47 = v13;
    v46[1] = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData(0);
    v28 = *(v22 + 48);
    sub_1B8D92024();
    sub_1B8D92024();
    OUTLINED_FUNCTION_75(v25);
    if (v29)
    {
      OUTLINED_FUNCTION_75(&v25[v28]);
      if (v29)
      {
        sub_1B8D9207C(v25, &qword_1EBAC6350, &qword_1B9698610);
        goto LABEL_16;
      }
    }

    else
    {
      sub_1B8D92024();
      OUTLINED_FUNCTION_75(&v25[v28]);
      if (!v29)
      {
        OUTLINED_FUNCTION_1_53();
        sub_1B916402C();
        v33 = static Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes.== infix(_:_:)(v21, v17);
        sub_1B9163FB8();
        sub_1B9163FB8();
        sub_1B8D9207C(v25, &qword_1EBAC6350, &qword_1B9698610);
        if ((v33 & 1) == 0)
        {
          goto LABEL_46;
        }

LABEL_16:
        v34 = v47;
        v35 = *(v10 + 48);
        sub_1B8D92024();
        v36 = v34;
        sub_1B8D92024();
        OUTLINED_FUNCTION_178(v34, 1, v49);
        if (v29)
        {
          OUTLINED_FUNCTION_57(v34 + v35);
          if (v29)
          {
            sub_1B8D9207C(v34, &qword_1EBAC6340, &qword_1B9698600);
LABEL_21:
            sub_1B964C2B0();
            OUTLINED_FUNCTION_2_36();
            sub_1B8CD2960(v37, v38, MEMORY[0x1E69AAC10]);
            sub_1B964C850();
            goto LABEL_46;
          }
        }

        else
        {
          v39 = v48;
          sub_1B8D92024();
          OUTLINED_FUNCTION_57(v36 + v35);
          if (!v40)
          {
            OUTLINED_FUNCTION_0_62();
            v41 = v46[0];
            sub_1B916402C();
            if (*v39 == *v41 && v39[1] == v41[1])
            {
              v42 = v39[2] == v41[2] && v39[3] == v41[3];
              if (v42 || (sub_1B964C9F0() & 1) != 0)
              {
                sub_1B964C2B0();
                OUTLINED_FUNCTION_2_36();
                sub_1B8CD2960(v43, v44, MEMORY[0x1E69AAC10]);
                v45 = sub_1B964C850();
                sub_1B9163FB8();
                sub_1B9163FB8();
                sub_1B8D9207C(v36, &qword_1EBAC6340, &qword_1B9698600);
                if ((v45 & 1) == 0)
                {
                  goto LABEL_46;
                }

                goto LABEL_21;
              }
            }

            sub_1B9163FB8();
            sub_1B9163FB8();
            v30 = &qword_1EBAC6340;
            v31 = &qword_1B9698600;
            goto LABEL_44;
          }

          OUTLINED_FUNCTION_11_32();
          sub_1B9163FB8();
        }

        v30 = &qword_1EBAC6348;
        v31 = &qword_1B9698608;
LABEL_44:
        v32 = v36;
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_13_22();
      sub_1B9163FB8();
    }

    v30 = &qword_1EBAC6358;
    v31 = &qword_1B9698618;
    v32 = v25;
LABEL_45:
    sub_1B8D9207C(v32, v30, v31);
    goto LABEL_46;
  }

  switch(v27)
  {
    case 1:
      if (v26 == 1)
      {
        goto LABEL_6;
      }

      break;
    case 2:
      if (v26 == 2)
      {
        goto LABEL_6;
      }

      break;
    case 3:
      if (v26 == 3)
      {
        goto LABEL_6;
      }

      break;
    case 4:
      if (v26 == 4)
      {
        goto LABEL_6;
      }

      break;
    default:
      if (!v26)
      {
        goto LABEL_6;
      }

      break;
  }

LABEL_46:
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_PegasusAppIntentData.init()()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData.OneOf_Data(v0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.appIntentTarget.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_10_28();
  result = OUTLINED_FUNCTION_521(v1 + 16, v5);
  v4 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1B915FBA4@<X0>(uint64_t a1@<X8>)
{
  result = Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.appIntentTarget.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_1B915FBE8(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.appIntentTarget.setter(&v3);
}

uint64_t Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.appIntentTarget.setter(uint64_t *a1)
{
  v3 = v1;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = OUTLINED_FUNCTION_38_6();
  v7 = *(v1 + v2);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_21_14();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B91641E4(v8);
    *(v3 + v2) = v7;
  }

  result = OUTLINED_FUNCTION_18(v7 + 16, v10);
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.appIntentTarget.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[11] = v1;
  OUTLINED_FUNCTION_18_17();
  *(v3 + 21) = v4;
  v5 = *(v1 + v4);
  OUTLINED_FUNCTION_521(v5 + 16, v3);
  v6 = *(v5 + 24);
  v3[9] = *(v5 + 16);
  *(v3 + 80) = v6;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B915FD1C()
{
  OUTLINED_FUNCTION_243();
  v1 = v0;
  v3 = *v2;
  v4 = *(*v2 + 72);
  v5 = *(*v2 + 84);
  v6 = *(*v2 + 88);
  v7 = *(*v2 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v3 + 84);
    v11 = *(v3 + 88);
    OUTLINED_FUNCTION_21_14();
    v12 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B91641E4(v12);
    *(v11 + v10) = v9;
  }

  v13 = 48;
  if (v1)
  {
    v13 = 24;
  }

  OUTLINED_FUNCTION_18(v9 + 16, v3 + v13);
  *(v9 + 16) = v4;
  *(v9 + 24) = v7;
  OUTLINED_FUNCTION_242();

  free(v14);
}

uint64_t Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.placeAttributes.getter@<X0>(void *a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData(v6);
  OUTLINED_FUNCTION_521(*(v1 + *(v7 + 20)) + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__placeAttributes, v10);
  OUTLINED_FUNCTION_106_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(0);
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v8)
    {
      return sub_1B8D9207C(v2, &qword_1EBAC6350, &qword_1B9698610);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_53();
    OUTLINED_FUNCTION_182();
    return sub_1B916402C();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.placeAttributes.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6350, &qword_1B9698610);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_139();
  if ((OUTLINED_FUNCTION_38_6() & 1) == 0)
  {
    OUTLINED_FUNCTION_21_14();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B91641E4(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_1_53();
  OUTLINED_FUNCTION_84_7();
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.placeAttributes.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_10_28();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  v11 = OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    OUTLINED_FUNCTION_37_9(v11);
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBAC6350, &qword_1B9698610);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_53();
    OUTLINED_FUNCTION_246();
    sub_1B916402C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.timestamp.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6340, &qword_1B9698600);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_139();
  if ((OUTLINED_FUNCTION_38_6() & 1) == 0)
  {
    OUTLINED_FUNCTION_21_14();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B91641E4(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_0_62();
  OUTLINED_FUNCTION_84_7();
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.timestamp.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_10_28();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v11)
  {
    OUTLINED_FUNCTION_215_0();
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v11)
    {
      sub_1B8D9207C(v0, &qword_1EBAC6340, &qword_1B9698600);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_62();
    OUTLINED_FUNCTION_246();
    sub_1B916402C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B9160360()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 32);
  if (v6)
  {
    OUTLINED_FUNCTION_186();
    sub_1B9164080();
    v2(v3);
    sub_1B9163FB8();
  }

  else
  {
    v1(*(*v0 + 48));
  }

  free(v4);
  free(v3);
  free(v5);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t sub_1B9160434(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_16();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_183(v11);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20[-v13 - 8];
  OUTLINED_FUNCTION_10_28();
  OUTLINED_FUNCTION_521(v5 + *a3, v20);
  sub_1B8D92024();
  v15 = (a4)(0);
  OUTLINED_FUNCTION_178(v14, 1, v15);
  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  sub_1B8D9207C(v14, v6, v4);
  return v17;
}

void sub_1B9160534()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_16();
  v5 = v0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_79();
  v10 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v0 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_21_14();
    v13 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B91641E4(v13);
    *(v5 + v10) = v12;
  }

  v4(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  OUTLINED_FUNCTION_55_4(v12 + *v2, &v18);
  sub_1B8DAA170();
  swift_endAccess();
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.measurementUnitsShown.getter()
{
  OUTLINED_FUNCTION_18_17();
  OUTLINED_FUNCTION_521(*(v0 + v1) + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__measurementUnitsShown, v3);
}

uint64_t Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.measurementUnitsShown.setter()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_313();
  v4 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData(v3) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_21_14();
    v7 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B91641E4(v7);
    *(v2 + v4) = v6;
  }

  v8 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__measurementUnitsShown;
  OUTLINED_FUNCTION_18(v6 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__measurementUnitsShown, v10);
  *(v6 + v8) = v0;
}

void (*Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.measurementUnitsShown.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v3;
  v3[7] = v1;
  OUTLINED_FUNCTION_18_17();
  *(v3 + 16) = v4;
  v5 = *(v1 + v4);
  v6 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__measurementUnitsShown;
  OUTLINED_FUNCTION_521(v5 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__measurementUnitsShown, v3);
  v3[6] = *(v5 + v6);

  return sub_1B916079C;
}

void sub_1B916079C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {

    Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.measurementUnitsShown.setter();
  }

  else
  {
    v4 = *(v2 + 64);
    v5 = *(v2 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 64);
      v9 = *(v2 + 56);
      OUTLINED_FUNCTION_21_14();
      v10 = OUTLINED_FUNCTION_40_0();
      v7 = sub_1B91641E4(v10);
      *(v9 + v8) = v7;
    }

    v11 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__measurementUnitsShown;
    OUTLINED_FUNCTION_18(v7 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__measurementUnitsShown, v2 + 24);
    *(v7 + v11) = v3;
  }

  free(v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.requestStartTime.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6340, &qword_1B9698600);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_139();
  if ((OUTLINED_FUNCTION_38_6() & 1) == 0)
  {
    OUTLINED_FUNCTION_21_14();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B91641E4(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_0_62();
  OUTLINED_FUNCTION_84_7();
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.requestStartTime.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_10_28();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v11)
  {
    OUTLINED_FUNCTION_215_0();
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v11)
    {
      sub_1B8D9207C(v0, &qword_1EBAC6340, &qword_1B9698600);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_62();
    OUTLINED_FUNCTION_246();
    sub_1B916402C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9160AF8(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6340, &qword_1B9698600);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData(v6);
  OUTLINED_FUNCTION_521(*(v1 + *(v7 + 20)) + *a1, v11);
  sub_1B8D92024();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(0);
  v8 = OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    OUTLINED_FUNCTION_176_0(v8);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v2, &qword_1EBAC6340, &qword_1B9698600);
    }
  }

  else
  {
    OUTLINED_FUNCTION_182();
    return sub_1B916402C();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.requestEndTime.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6340, &qword_1B9698600);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_139();
  if ((OUTLINED_FUNCTION_38_6() & 1) == 0)
  {
    OUTLINED_FUNCTION_21_14();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B91641E4(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_0_62();
  OUTLINED_FUNCTION_84_7();
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.requestEndTime.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_10_28();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v11)
  {
    OUTLINED_FUNCTION_215_0();
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v11)
    {
      sub_1B8D9207C(v0, &qword_1EBAC6340, &qword_1B9698600);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_62();
    OUTLINED_FUNCTION_246();
    sub_1B916402C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.wdsResponse.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData(v6);
  OUTLINED_FUNCTION_521(*(v1 + *(v7 + 20)) + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__wdsResponse, v10);
  OUTLINED_FUNCTION_106_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_WdsResponse(0);
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    *a1 = 0;
    *(a1 + 8) = 0xE000000000000000;
    *(a1 + 16) = xmmword_1B9652FE0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v8)
    {
      return sub_1B8D9207C(v2, &qword_1EBAC6360, &qword_1B9698620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_14_20();
    OUTLINED_FUNCTION_182();
    return sub_1B916402C();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.wdsResponse.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6360, &qword_1B9698620);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_139();
  if ((OUTLINED_FUNCTION_38_6() & 1) == 0)
  {
    OUTLINED_FUNCTION_21_14();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B91641E4(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_14_20();
  OUTLINED_FUNCTION_84_7();
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_WdsResponse(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_WdsResponse.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = xmmword_1B9652FE0;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_WdsResponse(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.wdsResponse.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_WdsResponse(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_10_28();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    *(v11 + 1) = xmmword_1B9652FE0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBAC6360, &qword_1B9698620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_14_20();
    OUTLINED_FUNCTION_246();
    sub_1B916402C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.unknownFields.getter()
{
  OUTLINED_FUNCTION_27();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_432();

  return v1(v0);
}

uint64_t Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_288();

  return v1(v0);
}

void Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.AppIntentTarget.init(rawValue:)(void *a1@<X8>, uint64_t a2@<X0>)
{
  switch(a2)
  {
    case 2:
      a2 = 1;
      break;
    case 3:
      a2 = 2;
      break;
    case 4:
      a2 = 3;
      break;
    case 5:
      a2 = 4;
      break;
    case 6:
      a2 = 5;
      break;
    case 7:
      a2 = 6;
      break;
    case 8:
      a2 = 7;
      break;
    case 9:
      a2 = 8;
      break;
    case 10:
      a2 = 9;
      break;
    case 11:
      a2 = 10;
      break;
    case 12:
      a2 = 11;
      break;
    case 13:
      a2 = 12;
      break;
    case 14:
      a2 = 13;
      break;
    case 15:
      a2 = 14;
      break;
    default:
      break;
  }

  *a1 = a2;
  OUTLINED_FUNCTION_7_3(a1);
}

uint64_t Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.AppIntentTarget.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_1B9699218[result];
  }

  return result;
}

uint64_t sub_1B9161414@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.AppIntentTarget.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9161448(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9169A44();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

void Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.MeasurementUnits.init(rawValue:)(void *a1@<X8>, uint64_t a2@<X0>)
{
  switch(a2)
  {
    case 10:
      a2 = 3;
      break;
    case 11:
      a2 = 4;
      break;
    case 12:
      a2 = 5;
      break;
    case 13:
      a2 = 6;
      break;
    case 14:
      a2 = 7;
      break;
    case 20:
      a2 = 8;
      break;
    case 21:
      a2 = 9;
      break;
    case 30:
      a2 = 10;
      break;
    case 31:
      a2 = 11;
      break;
    case 32:
      a2 = 12;
      break;
    case 33:
      a2 = 13;
      break;
    case 34:
      a2 = 14;
      break;
    case 40:
      a2 = 15;
      break;
    case 41:
      a2 = 16;
      break;
    default:
      break;
  }

  *a1 = a2;
  OUTLINED_FUNCTION_7_3(a1);
}

uint64_t Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.MeasurementUnits.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_1B9699290[result];
  }

  return result;
}

uint64_t sub_1B9161598@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.MeasurementUnits.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B91615CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91699F0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.AppIntentTarget.allCases.getter()
{
  v0 = OUTLINED_FUNCTION_173_0();
  OUTLINED_FUNCTION_521(v0, v1);
}

uint64_t (*static Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.AppIntentTarget.allCases.modify())(uint64_t a1)
{
  v0 = OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_55_4(v0, v1);
  return j_j__swift_endAccess;
}

uint64_t sub_1B91616D4@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.AppIntentTarget.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.MeasurementUnits.allCases.getter()
{
  v0 = OUTLINED_FUNCTION_173_0();
  OUTLINED_FUNCTION_521(v0, v1);
}

uint64_t (*static Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.MeasurementUnits.allCases.modify())(uint64_t a1)
{
  v0 = OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_55_4(v0, v1);
  return j_j__swift_endAccess;
}

uint64_t sub_1B9161790@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.MeasurementUnits.allCases.getter();
  *a1 = result;
  return result;
}

void Apple_Parsec_Siri_V2alpha_ClockAppIntentData.appIntentTarget.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Apple_Parsec_Siri_V2alpha_ClockAppIntentData.appIntentTarget.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ClockAppIntentData.placeAttributes.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData(v5);
  OUTLINED_FUNCTION_106_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(0);
  OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v6)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC6350, &qword_1B9698610);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_53();
    OUTLINED_FUNCTION_182();
    return sub_1B916402C();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ClockAppIntentData.placeAttributes.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBAC6350, &qword_1B9698610);
  OUTLINED_FUNCTION_1_53();
  OUTLINED_FUNCTION_122_0();
  sub_1B916402C();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Siri_V2alpha_ClockAppIntentData.placeAttributes.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  *(v1 + 8) = v7;
  *(v1 + 16) = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(0);
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  *(v1 + 24) = __swift_coroFrameAllocStub(v9);
  *(v1 + 32) = __swift_coroFrameAllocStub(v9);
  v10 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData(0) + 24);
  *(v1 + 40) = v10;
  OUTLINED_FUNCTION_643(v0 + v10, v7);
  v11 = OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    OUTLINED_FUNCTION_37_9(v11);
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v7, &qword_1EBAC6350, &qword_1B9698610);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_53();
    OUTLINED_FUNCTION_246();
    sub_1B916402C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B9161A70()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v6)
  {
    OUTLINED_FUNCTION_128();
    sub_1B9164080();
    sub_1B8D9207C(v5 + v4, &qword_1EBAC6350, &qword_1B9698610);
    OUTLINED_FUNCTION_1_53();
    sub_1B916402C();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v3);
    OUTLINED_FUNCTION_13_22();
    sub_1B9163FB8();
  }

  else
  {
    sub_1B8D9207C(v5 + v4, &qword_1EBAC6350, &qword_1B9698610);
    OUTLINED_FUNCTION_1_53();
    sub_1B916402C();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v3);
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v13);
}

uint64_t Apple_Parsec_Siri_V2alpha_ClockAppIntentData.hasPlaceAttributes.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6350, &qword_1B9698610);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData(v2);
  OUTLINED_FUNCTION_274_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(0);
  v3 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v3, v4, v5);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v8, v9, &qword_1B9698610);
  return v7;
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_ClockAppIntentData.clearPlaceAttributes()()
{
  v1 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData(0);
  sub_1B8D9207C(v0 + *(v1 + 24), &qword_1EBAC6350, &qword_1B9698610);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_ClockAppIntentData.timestamp.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData(v3);
  OUTLINED_FUNCTION_106_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(0);
  v4 = OUTLINED_FUNCTION_9_2();
  if (v5)
  {
    OUTLINED_FUNCTION_176_0(v4);
    result = OUTLINED_FUNCTION_9_2();
    if (!v5)
    {
      return sub_1B8D9207C(v0, &qword_1EBAC6340, &qword_1B9698600);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_62();
    OUTLINED_FUNCTION_182();
    return sub_1B916402C();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ClockAppIntentData.timestamp.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBAC6340, &qword_1B9698600);
  OUTLINED_FUNCTION_0_62();
  OUTLINED_FUNCTION_122_0();
  sub_1B916402C();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Siri_V2alpha_ClockAppIntentData.timestamp.modify()
{
  OUTLINED_FUNCTION_243();
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  *(v2 + 16) = type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = *(v10 + 64);
  *(v2 + 24) = __swift_coroFrameAllocStub(v11);
  *(v2 + 32) = __swift_coroFrameAllocStub(v11);
  v12 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData(0) + 28);
  *(v2 + 40) = v12;
  OUTLINED_FUNCTION_643(v0 + v12, v1);
  OUTLINED_FUNCTION_75(v1);
  if (v13)
  {
    OUTLINED_FUNCTION_215_0();
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_75(v1);
    if (!v13)
    {
      sub_1B8D9207C(v1, &qword_1EBAC6340, &qword_1B9698600);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_62();
    OUTLINED_FUNCTION_461();
    sub_1B916402C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B9161EE8()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v6)
  {
    OUTLINED_FUNCTION_128();
    sub_1B9164080();
    sub_1B8D9207C(v5 + v4, &qword_1EBAC6340, &qword_1B9698600);
    OUTLINED_FUNCTION_0_62();
    sub_1B916402C();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v3);
    OUTLINED_FUNCTION_11_32();
    sub_1B9163FB8();
  }

  else
  {
    sub_1B8D9207C(v5 + v4, &qword_1EBAC6340, &qword_1B9698600);
    OUTLINED_FUNCTION_0_62();
    sub_1B916402C();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v3);
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v13);
}

uint64_t Apple_Parsec_Siri_V2alpha_ClockAppIntentData.hasTimestamp.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6340, &qword_1B9698600);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData(v2);
  OUTLINED_FUNCTION_274_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(0);
  v3 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v3, v4, v5);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v8, v9, &qword_1B9698600);
  return v7;
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_ClockAppIntentData.clearTimestamp()()
{
  v1 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData(0);
  sub_1B8D9207C(v0 + *(v1 + 28), &qword_1EBAC6340, &qword_1B9698600);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1B9162100()
{
  v2 = OUTLINED_FUNCTION_27();
  v4 = *(v3(v2) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v7 = *(v6 + 16);

  return v7(v0, v1 + v4, v5);
}

uint64_t sub_1B9162190()
{
  v2 = OUTLINED_FUNCTION_313();
  v4 = *(v3(v2) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 40);

  return v6(v1 + v4, v0);
}

void (*Apple_Parsec_Siri_V2alpha_ClockAppIntentData.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData(v0);
  return nullsub_1;
}

uint64_t sub_1B9162280@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Siri_V2alpha_ClockAppIntentData.AppIntentTarget.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B91622B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9168120();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Apple_Parsec_Siri_V2alpha_ClockAppIntentData.AppIntentTarget.allCases.getter()
{
  v0 = OUTLINED_FUNCTION_173_0();
  OUTLINED_FUNCTION_521(v0, v1);
}

uint64_t sub_1B9162354()
{
  OUTLINED_FUNCTION_468();
  v2 = OUTLINED_FUNCTION_173_0();
  OUTLINED_FUNCTION_18(v2, v3);
  *v0 = v1;
}

uint64_t (*static Apple_Parsec_Siri_V2alpha_ClockAppIntentData.AppIntentTarget.allCases.modify())(uint64_t a1)
{
  v0 = OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_55_4(v0, v1);
  return j__swift_endAccess;
}

uint64_t sub_1B91623DC@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_ClockAppIntentData.AppIntentTarget.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_WdsResponse.requestURL.setter()
{
  OUTLINED_FUNCTION_16();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_WdsResponse.response.getter()
{
  v0 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v0, v1);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_WdsResponse.response.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_WdsResponse.unknownFields.getter()
{
  v2 = OUTLINED_FUNCTION_27();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_WdsResponse(v2) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_WdsResponse.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_WdsResponse(v2) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Apple_Parsec_Siri_V2alpha_WdsResponse.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_WdsResponse(v0);
  return nullsub_1;
}

uint64_t sub_1B9162634()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6280);
  __swift_project_value_buffer(v0, qword_1EBAC6280);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "weather_app_intent_data";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "clock_app_intent_data";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_PegasusAppIntentData.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_432();
      OUTLINED_FUNCTION_24_3();
      sub_1B9162D84(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_432();
      OUTLINED_FUNCTION_24_3();
      sub_1B916288C(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1B916288C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6330, &qword_1B96985F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData.OneOf_Data(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC64A0, &qword_1B96991F8);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAC6330, &qword_1B96985F0);
  }

  else
  {
    sub_1B916402C();
    sub_1B916402C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B9163FB8();
    }

    else
    {
      sub_1B8D9207C(v18, &qword_1EBAC64A0, &qword_1B96991F8);
      sub_1B916402C();
      sub_1B916402C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }
  }

  sub_1B8CD2960(&qword_1EBAC6430, type metadata accessor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC64A0, &qword_1B96991F8);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC64A0, &qword_1B96991F8);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC64A0, &qword_1B96991F8);
  }

  sub_1B916402C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC64A0, &qword_1B96991F8);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAC6330, &qword_1B96985F0);
  sub_1B916402C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B9162D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6330, &qword_1B96985F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData.OneOf_Data(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC64A8, &qword_1B9699200);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAC6330, &qword_1B96985F0);
  }

  else
  {
    sub_1B916402C();
    sub_1B916402C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v18, &qword_1EBAC64A8, &qword_1B9699200);
      sub_1B916402C();
      sub_1B916402C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B9163FB8();
    }
  }

  sub_1B8CD2960(&qword_1EBAC6448, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC64A8, &qword_1B9699200);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC64A8, &qword_1B9699200);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC64A8, &qword_1B9699200);
  }

  sub_1B916402C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC64A8, &qword_1B9699200);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAC6330, &qword_1B96985F0);
  sub_1B916402C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t Apple_Parsec_Siri_V2alpha_PegasusAppIntentData.traverse<A>(visitor:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6330, &qword_1B96985F0);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v15 - v3;
  sub_1B8D92024();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData.OneOf_Data(0);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_686();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = OUTLINED_FUNCTION_7_6();
    sub_1B91635BC(v6, v7, v8, v9);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_7_6();
    sub_1B91633A8(v10, v11, v12, v13);
  }

  OUTLINED_FUNCTION_3_36();
  result = sub_1B9163FB8();
  if (!v0)
  {
LABEL_6:
    type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData(0);
    OUTLINED_FUNCTION_12();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B91633A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6330, &qword_1B96985F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8D92024();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData.OneOf_Data(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAC6330, &qword_1B96985F0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B916402C();
      sub_1B8CD2960(&qword_1EBAC6430, type metadata accessor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData);
      sub_1B964C740();
      return sub_1B9163FB8();
    }

    result = sub_1B9163FB8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B91635BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6330, &qword_1B96985F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8D92024();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData.OneOf_Data(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAC6330, &qword_1B96985F0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B916402C();
      sub_1B8CD2960(&qword_1EBAC6448, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData);
      sub_1B964C740();
      return sub_1B9163FB8();
    }

    result = sub_1B9163FB8();
  }

  __break(1u);
  return result;
}

void static Apple_Parsec_Siri_V2alpha_PegasusAppIntentData.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_284();
  a19 = v22;
  a20 = v23;
  v24 = OUTLINED_FUNCTION_280();
  v25 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData.OneOf_Data(v24);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_62();
  v27 = OUTLINED_FUNCTION_686();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
  OUTLINED_FUNCTION_183(v29);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_79();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6368, &qword_1B9698628);
  OUTLINED_FUNCTION_183(v31);
  OUTLINED_FUNCTION_176();
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = &a9 - v34;
  v36 = *(v33 + 56);
  OUTLINED_FUNCTION_643(v21, &a9 - v34);
  OUTLINED_FUNCTION_643(v20, &v35[v36]);
  v37 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v37, v38, v25);
  if (v39)
  {
    OUTLINED_FUNCTION_178(&v35[v36], 1, v25);
    if (v39)
    {
      sub_1B8D9207C(v35, &qword_1EBAC6330, &qword_1B96985F0);
LABEL_12:
      type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData(0);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_2_36();
      v44 = sub_1B8CD2960(v42, v43, MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_634(v44);
      goto LABEL_13;
    }

LABEL_9:
    sub_1B8D9207C(v35, &qword_1EBAC6368, &qword_1B9698628);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(&v35[v36], 1, v25);
  if (v39)
  {
    OUTLINED_FUNCTION_3_36();
    sub_1B9163FB8();
    goto LABEL_9;
  }

  sub_1B916402C();
  OUTLINED_FUNCTION_246();
  static Apple_Parsec_Siri_V2alpha_PegasusAppIntentData.OneOf_Data.== infix(_:_:)();
  v41 = v40;
  sub_1B9163FB8();
  sub_1B9163FB8();
  sub_1B8D9207C(v35, &qword_1EBAC6330, &qword_1B96985F0);
  if (v41)
  {
    goto LABEL_12;
  }

LABEL_13:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9163AD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2960(&qword_1EBAC6488, type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9163B50(uint64_t a1)
{
  v2 = sub_1B8CD2960(&qword_1EBAC6418, type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9163BC0(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2960(&qword_1EBAC6418, type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData);

  return sub_1B964C5D0();
}

uint64_t sub_1B9163C4C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6298);
  __swift_project_value_buffer(v0, qword_1EBAC6298);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9650810;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "app_intent_target";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "place_attributes";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "timestamp";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "measurement_units_shown";
  *(v14 + 1) = 23;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "request_start_time";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "request_end_time";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "wds_response";
  *(v20 + 1) = 12;
  v20[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9163F78()
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData._StorageClass(0);
  swift_allocObject();
  result = sub_1B91640F4();
  qword_1EBAC62B0 = result;
  return result;
}

uint64_t sub_1B9163FB8()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1B916402C()
{
  v1 = OUTLINED_FUNCTION_280();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  v3 = OUTLINED_FUNCTION_432();
  v4(v3);
  return v0;
}

uint64_t sub_1B9164080()
{
  v1 = OUTLINED_FUNCTION_280();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  v3 = OUTLINED_FUNCTION_432();
  v4(v3);
  return v0;
}

uint64_t sub_1B91640F4()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  v1 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__placeAttributes;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__timestamp;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__measurementUnitsShown) = MEMORY[0x1E69E7CC0];
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__requestStartTime, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__requestEndTime, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__wdsResponse;
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_WdsResponse(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  return v0;
}

uint64_t sub_1B91641E4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6360, &qword_1B9698620);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v19[4] = v19 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6340, &qword_1B9698600);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6350, &qword_1B9698610);
  MEMORY[0x1EEE9AC00](v6 - 8);
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v7 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__placeAttributes;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(0);
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__timestamp;
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(0);
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__measurementUnitsShown;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__measurementUnitsShown) = MEMORY[0x1E69E7CC0];
  v19[1] = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__requestStartTime;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__requestStartTime, 1, 1, v10);
  v19[2] = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__requestEndTime;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__requestEndTime, 1, 1, v10);
  v12 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__wdsResponse;
  v19[3] = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__wdsResponse;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_WdsResponse(0);
  __swift_storeEnumTagSinglePayload(v1 + v12, 1, 1, v13);
  swift_beginAccess();
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v14;
  *(v1 + 24) = v15;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v16 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__measurementUnitsShown;
  swift_beginAccess();
  v17 = *(a1 + v16);
  swift_beginAccess();
  *(v1 + v11) = v17;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();

  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  return v1;
}

uint64_t sub_1B91646C0()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__placeAttributes, &qword_1EBAC6350, &qword_1B9698610);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__timestamp, &qword_1EBAC6340, &qword_1B9698600);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__requestStartTime, &qword_1EBAC6340, &qword_1B9698600);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__requestEndTime, &qword_1EBAC6340, &qword_1B9698600);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__wdsResponse, &qword_1EBAC6360, &qword_1B9698620);
  return v0;
}

uint64_t sub_1B9164790()
{
  v0 = sub_1B91646C0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.decodeMessage<A>(decoder:)()
{
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData._StorageClass(0);
    swift_allocObject();
    v2 = OUTLINED_FUNCTION_40_0();
    *(v0 + v1) = sub_1B91641E4(v2);
  }

  v3 = OUTLINED_FUNCTION_7_6();
  return sub_1B9164874(v3, v4, v5, v6);
}

uint64_t sub_1B9164874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1B91649A8(a2, a1, a3, a4);
        break;
      case 2:
        sub_1B9164A3C(a2, a1, a3, a4);
        break;
      case 3:
        sub_1B9164B18(a2, a1, a3, a4);
        break;
      case 4:
        sub_1B9164BF4(a2, a1, a3, a4);
        break;
      case 6:
        sub_1B9164C90(a2, a1, a3, a4);
        break;
      case 7:
        sub_1B9164D6C(a2, a1, a3, a4);
        break;
      case 8:
        sub_1B9164E48(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B91649A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B9169A44();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B9164A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(0);
  sub_1B8CD2960(&qword_1EBAC6230, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9164B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(0);
  sub_1B8CD2960(&qword_1EBAC6248, type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_Timestamp);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9164BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B91699F0();
  sub_1B964C3E0();
  return swift_endAccess();
}

uint64_t sub_1B9164C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(0);
  sub_1B8CD2960(&qword_1EBAC6248, type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_Timestamp);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9164D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(0);
  sub_1B8CD2960(&qword_1EBAC6248, type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_Timestamp);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9164E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_WdsResponse(0);
  sub_1B8CD2960(&qword_1EBAC6460, type metadata accessor for Apple_Parsec_Siri_V2alpha_WdsResponse, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_WdsResponse);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData(0);
  OUTLINED_FUNCTION_12();
  result = sub_1B9164F88(v5, v6, v7, a3);
  if (!v3)
  {
    OUTLINED_FUNCTION_186();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B9164F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6360, &qword_1B9698620);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v35 = v34 - v8;
  v36 = type metadata accessor for Apple_Parsec_Siri_V2alpha_WdsResponse(0);
  MEMORY[0x1EEE9AC00](v36);
  v34[1] = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6340, &qword_1B9698600);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v38 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v39 = v34 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = v34 - v15;
  v41 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(0);
  v17 = MEMORY[0x1EEE9AC00](v41);
  v34[2] = v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v37 = v34 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v40 = v34 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6350, &qword_1B9698610);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = v34 - v23;
  v25 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(0);
  MEMORY[0x1EEE9AC00](v25);
  swift_beginAccess();
  if (!*(a1 + 16) || (v26 = *(a1 + 24), v42 = *(a1 + 16), v43 = v26, sub_1B9169A44(), result = sub_1B964C680(), !v4))
  {
    v44 = a4;
    swift_beginAccess();
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v24, 1, v25) == 1)
    {
      sub_1B8D9207C(v24, &qword_1EBAC6350, &qword_1B9698610);
      v28 = v4;
    }

    else
    {
      sub_1B916402C();
      sub_1B8CD2960(&qword_1EBAC6230, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes);
      sub_1B964C740();
      v28 = v4;
      result = sub_1B9163FB8();
      if (v4)
      {
        return result;
      }
    }

    swift_beginAccess();
    sub_1B8D92024();
    v29 = v41;
    if (__swift_getEnumTagSinglePayload(v16, 1, v41) == 1)
    {
      sub_1B8D9207C(v16, &qword_1EBAC6340, &qword_1B9698600);
    }

    else
    {
      sub_1B916402C();
      sub_1B8CD2960(&qword_1EBAC6248, type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_Timestamp);
      sub_1B964C740();
      result = sub_1B9163FB8();
      if (v28)
      {
        return result;
      }
    }

    v30 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__measurementUnitsShown;
    swift_beginAccess();
    if (!*(*(a1 + v30) + 16) || (sub_1B91699F0(), , sub_1B964C600(), result = , !v28))
    {
      swift_beginAccess();
      v31 = v39;
      sub_1B8D92024();
      if (__swift_getEnumTagSinglePayload(v31, 1, v29) == 1)
      {
        sub_1B8D9207C(v31, &qword_1EBAC6340, &qword_1B9698600);
      }

      else
      {
        sub_1B916402C();
        sub_1B8CD2960(&qword_1EBAC6248, type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_Timestamp);
        sub_1B964C740();
        result = sub_1B9163FB8();
        if (v28)
        {
          return result;
        }
      }

      swift_beginAccess();
      v32 = v38;
      sub_1B8D92024();
      if (__swift_getEnumTagSinglePayload(v32, 1, v29) == 1)
      {
        sub_1B8D9207C(v32, &qword_1EBAC6340, &qword_1B9698600);
      }

      else
      {
        sub_1B916402C();
        sub_1B8CD2960(&qword_1EBAC6248, type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_Timestamp);
        sub_1B964C740();
        result = sub_1B9163FB8();
        if (v28)
        {
          return result;
        }
      }

      swift_beginAccess();
      v33 = v35;
      sub_1B8D92024();
      if (__swift_getEnumTagSinglePayload(v33, 1, v36) == 1)
      {
        return sub_1B8D9207C(v33, &qword_1EBAC6360, &qword_1B9698620);
      }

      else
      {
        sub_1B916402C();
        sub_1B8CD2960(&qword_1EBAC6460, type metadata accessor for Apple_Parsec_Siri_V2alpha_WdsResponse, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_WdsResponse);
        sub_1B964C740();
        return sub_1B9163FB8();
      }
    }
  }

  return result;
}

BOOL sub_1B91658A0(uint64_t a1, uint64_t a2)
{
  v99 = type metadata accessor for Apple_Parsec_Siri_V2alpha_WdsResponse(0);
  MEMORY[0x1EEE9AC00](v99);
  v96 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC64B0, &unk_1B9699208);
  MEMORY[0x1EEE9AC00](v98);
  v6 = &v94 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6360, &qword_1B9698620);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v100 = &v94 - v11;
  v110 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(0);
  v12 = MEMORY[0x1EEE9AC00](v110);
  v97 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v102 = &v94 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v107 = &v94 - v16;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6348, &qword_1B9698608);
  v17 = MEMORY[0x1EEE9AC00](v112);
  v104 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v106 = &v94 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v113 = &v94 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6340, &qword_1B9698600);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v101 = &v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v103 = &v94 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v105 = &v94 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v111 = &v94 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v108 = &v94 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v115 = &v94 - v33;
  v116 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(0);
  MEMORY[0x1EEE9AC00](v116);
  v109 = &v94 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6358, &qword_1B9698618);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v94 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6350, &qword_1B9698610);
  v39 = MEMORY[0x1EEE9AC00](v38 - 8);
  v114 = (&v94 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v94 - v41;
  swift_beginAccess();
  v43 = *(a1 + 16);
  v44 = *(a1 + 24);
  swift_beginAccess();
  if (!sub_1B8D580A8(v43, v44, *(a2 + 16), *(a2 + 24)))
  {
    return 0;
  }

  v94 = v10;
  v95 = v6;
  v45 = a2;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v46 = *(v35 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  v47 = v116;
  if (__swift_getEnumTagSinglePayload(v37, 1, v116) == 1)
  {

    sub_1B8D9207C(v42, &qword_1EBAC6350, &qword_1B9698610);
    if (__swift_getEnumTagSinglePayload(&v37[v46], 1, v47) == 1)
    {
      sub_1B8D9207C(v37, &qword_1EBAC6350, &qword_1B9698610);
      goto LABEL_9;
    }

LABEL_7:
    v49 = &qword_1EBAC6358;
    v50 = &qword_1B9698618;
LABEL_26:
    v75 = v37;
LABEL_27:
    sub_1B8D9207C(v75, v49, v50);
    goto LABEL_28;
  }

  v48 = v114;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(&v37[v46], 1, v47) == 1)
  {

    sub_1B8D9207C(v42, &qword_1EBAC6350, &qword_1B9698610);
    sub_1B9163FB8();
    goto LABEL_7;
  }

  v51 = v109;
  sub_1B916402C();

  LODWORD(v116) = static Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes.== infix(_:_:)(v48, v51);
  sub_1B9163FB8();
  sub_1B8D9207C(v42, &qword_1EBAC6350, &qword_1B9698610);
  sub_1B9163FB8();
  sub_1B8D9207C(v37, &qword_1EBAC6350, &qword_1B9698610);
  if ((v116 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_9:
  swift_beginAccess();
  v52 = v115;
  sub_1B8D92024();
  swift_beginAccess();
  v53 = v113;
  v54 = *(v112 + 48);
  sub_1B8D92024();
  v37 = v53;
  sub_1B8D92024();
  v55 = v53;
  v56 = v110;
  if (__swift_getEnumTagSinglePayload(v55, 1, v110) == 1)
  {
    sub_1B8D9207C(v52, &qword_1EBAC6340, &qword_1B9698600);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v37[v54], 1, v56);
    v58 = v111;
    if (EnumTagSinglePayload == 1)
    {
      sub_1B8D9207C(v37, &qword_1EBAC6340, &qword_1B9698600);
      goto LABEL_12;
    }

    goto LABEL_25;
  }

  v73 = v108;
  sub_1B8D92024();
  v74 = __swift_getEnumTagSinglePayload(&v37[v54], 1, v56);
  v58 = v111;
  if (v74 == 1)
  {
    sub_1B8D9207C(v115, &qword_1EBAC6340, &qword_1B9698600);
    sub_1B9163FB8();
LABEL_25:
    v49 = &qword_1EBAC6348;
    v50 = &qword_1B9698608;
    goto LABEL_26;
  }

  v76 = v107;
  sub_1B916402C();
  if (*v73 != *v76 || v73[1] != v76[1] || (v73[2] == v76[2] ? (v77 = v73[3] == v76[3]) : (v77 = 0), !v77 && (sub_1B964C9F0() & 1) == 0))
  {
    sub_1B8D9207C(v115, &qword_1EBAC6340, &qword_1B9698600);
    sub_1B9163FB8();
    sub_1B9163FB8();
    v75 = v113;
LABEL_41:
    v49 = &qword_1EBAC6340;
    v50 = &qword_1B9698600;
    goto LABEL_27;
  }

  sub_1B964C2B0();
  sub_1B8CD2960(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v78 = sub_1B964C850();
  sub_1B8D9207C(v115, &qword_1EBAC6340, &qword_1B9698600);
  sub_1B9163FB8();
  sub_1B9163FB8();
  sub_1B8D9207C(v113, &qword_1EBAC6340, &qword_1B9698600);
  if ((v78 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_12:
  v59 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__measurementUnitsShown;
  swift_beginAccess();
  v60 = *(a1 + v59);
  v61 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__measurementUnitsShown;
  swift_beginAccess();
  if ((sub_1B8D8DA04(v60, *(v45 + v61)) & 1) == 0)
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v62 = *(v112 + 48);
  v63 = v106;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v63, 1, v56) == 1)
  {
    sub_1B8D9207C(v58, &qword_1EBAC6340, &qword_1B9698600);
    if (__swift_getEnumTagSinglePayload(v63 + v62, 1, v56) != 1)
    {
LABEL_57:
      v49 = &qword_1EBAC6348;
      v50 = &qword_1B9698608;
      v75 = v63;
      goto LABEL_27;
    }

    sub_1B8D9207C(v63, &qword_1EBAC6340, &qword_1B9698600);
  }

  else
  {
    v79 = v105;
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v63 + v62, 1, v56) == 1)
    {
      sub_1B8D9207C(v111, &qword_1EBAC6340, &qword_1B9698600);
LABEL_56:
      sub_1B9163FB8();
      goto LABEL_57;
    }

    v80 = v102;
    sub_1B916402C();
    if (*v79 != *v80 || v79[1] != v80[1] || (v79[2] == v80[2] ? (v81 = v79[3] == v80[3]) : (v81 = 0), !v81 && (sub_1B964C9F0() & 1) == 0))
    {
      sub_1B8D9207C(v111, &qword_1EBAC6340, &qword_1B9698600);
      sub_1B9163FB8();
LABEL_68:
      sub_1B9163FB8();
      v75 = v63;
      goto LABEL_41;
    }

    sub_1B964C2B0();
    sub_1B8CD2960(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v82 = sub_1B964C850();
    sub_1B8D9207C(v111, &qword_1EBAC6340, &qword_1B9698600);
    sub_1B9163FB8();
    sub_1B9163FB8();
    sub_1B8D9207C(v63, &qword_1EBAC6340, &qword_1B9698600);
    if ((v82 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  swift_beginAccess();
  v64 = v103;
  sub_1B8D92024();
  swift_beginAccess();
  v65 = *(v112 + 48);
  v66 = v104;
  sub_1B8D92024();
  v63 = v66;
  v67 = v110;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v63, 1, v67) != 1)
  {
    v83 = v101;
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v63 + v65, 1, v67) == 1)
    {
      sub_1B8D9207C(v64, &qword_1EBAC6340, &qword_1B9698600);
      goto LABEL_56;
    }

    v84 = v97;
    sub_1B916402C();
    if (*v83 == *v84 && v83[1] == v84[1])
    {
      v85 = v83[2] == v84[2] && v83[3] == v84[3];
      if (v85 || (sub_1B964C9F0() & 1) != 0)
      {
        sub_1B964C2B0();
        sub_1B8CD2960(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v86 = sub_1B964C850();
        sub_1B8D9207C(v64, &qword_1EBAC6340, &qword_1B9698600);
        sub_1B9163FB8();
        sub_1B9163FB8();
        sub_1B8D9207C(v63, &qword_1EBAC6340, &qword_1B9698600);
        if (v86)
        {
          goto LABEL_19;
        }

LABEL_28:

        return 0;
      }
    }

    sub_1B8D9207C(v64, &qword_1EBAC6340, &qword_1B9698600);
    sub_1B9163FB8();
    goto LABEL_68;
  }

  sub_1B8D9207C(v64, &qword_1EBAC6340, &qword_1B9698600);
  if (__swift_getEnumTagSinglePayload(v63 + v65, 1, v67) != 1)
  {
    goto LABEL_57;
  }

  sub_1B8D9207C(v63, &qword_1EBAC6340, &qword_1B9698600);
LABEL_19:
  swift_beginAccess();
  v68 = v100;
  sub_1B8D92024();
  swift_beginAccess();
  v69 = *(v98 + 48);
  v70 = v95;
  sub_1B8D92024();
  sub_1B8D92024();
  v71 = v99;
  if (__swift_getEnumTagSinglePayload(v70, 1, v99) == 1)
  {

    sub_1B8D9207C(v68, &qword_1EBAC6360, &qword_1B9698620);
    if (__swift_getEnumTagSinglePayload(v70 + v69, 1, v71) == 1)
    {
      sub_1B8D9207C(v70, &qword_1EBAC6360, &qword_1B9698620);
      return 1;
    }

    goto LABEL_71;
  }

  v87 = v94;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v70 + v69, 1, v71) == 1)
  {

    sub_1B8D9207C(v100, &qword_1EBAC6360, &qword_1B9698620);
    sub_1B9163FB8();
LABEL_71:
    v88 = &qword_1EBAC64B0;
    v89 = &unk_1B9699208;
    v90 = v70;
LABEL_81:
    sub_1B8D9207C(v90, v88, v89);
    return 0;
  }

  v91 = v96;
  sub_1B916402C();
  v92 = *v87 == *v91 && v87[1] == v91[1];
  if (!v92 && (sub_1B964C9F0() & 1) == 0 || (MEMORY[0x1BFADC060](v87[2], v87[3], v91[2], v91[3]) & 1) == 0)
  {

    sub_1B9163FB8();
    sub_1B8D9207C(v100, &qword_1EBAC6360, &qword_1B9698620);
    sub_1B9163FB8();
    v90 = v95;
    v88 = &qword_1EBAC6360;
    v89 = &qword_1B9698620;
    goto LABEL_81;
  }

  sub_1B964C2B0();
  sub_1B8CD2960(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v93 = sub_1B964C850();

  sub_1B9163FB8();
  sub_1B8D9207C(v100, &qword_1EBAC6360, &qword_1B9698620);
  sub_1B9163FB8();
  sub_1B8D9207C(v95, &qword_1EBAC6360, &qword_1B9698620);
  return (v93 & 1) != 0;
}

uint64_t sub_1B9166D24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2960(&qword_1EBAC6480, type metadata accessor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9166DA4(uint64_t a1)
{
  v2 = sub_1B8CD2960(&qword_1EBAC6430, type metadata accessor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9166E14(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2960(&qword_1EBAC6430, type metadata accessor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData);

  return sub_1B964C5D0();
}

uint64_t sub_1B9166E94()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC62B8);
  __swift_project_value_buffer(v0, qword_1EBAC62B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1B966F8E0;
  v4 = v36 + v3 + v1[14];
  *(v36 + v3) = 0;
  *v4 = "UNDEFINED_CONDITION";
  *(v4 + 8) = 19;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v36 + v3 + v2 + v1[14];
  *(v36 + v3 + v2) = 2;
  *v8 = "AIR_QUALITY";
  *(v8 + 8) = 11;
  *(v8 + 16) = 2;
  v7();
  v9 = (v36 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "FEELS_LIKE";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v7();
  v11 = (v36 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "MOON_PHASE";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v7();
  v13 = (v36 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "SUNRISE_SUNSET";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v7();
  v15 = (v36 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "TEMPERATURE";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v7();
  v17 = (v36 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "HUMIDITY";
  *(v18 + 1) = 8;
  v18[16] = 2;
  v7();
  v19 = (v36 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "WIND_SPEED";
  *(v20 + 1) = 10;
  v20[16] = 2;
  v7();
  v21 = (v36 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "BAROMETRIC_PRESSURE";
  *(v22 + 1) = 19;
  v22[16] = 2;
  v7();
  v23 = (v36 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "UV_INDEX";
  *(v24 + 1) = 8;
  v24[16] = 2;
  v7();
  v25 = (v36 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "VISIBILITY";
  *(v26 + 1) = 10;
  v26[16] = 2;
  v7();
  v27 = (v36 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "PRECIPITATION";
  *(v28 + 1) = 13;
  v28[16] = 2;
  v7();
  v29 = (v36 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "SPECIFIC_CONDITION";
  *(v30 + 1) = 18;
  v30[16] = 2;
  v7();
  v31 = (v36 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "SUNRISE";
  *(v32 + 1) = 7;
  v32[16] = 2;
  v7();
  v33 = (v36 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "SUNSET";
  *(v34 + 1) = 6;
  v34[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B9167388()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC62D0);
  __swift_project_value_buffer(v0, qword_1EBAC62D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1B96566C0;
  v4 = v40 + v3 + v1[14];
  *(v40 + v3) = 0;
  *v4 = "UNDEFINED_UNIT";
  *(v4 + 8) = 14;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v40 + v3 + v2 + v1[14];
  *(v40 + v3 + v2) = 1;
  *v8 = "TEMPERATURE_CELSIUS";
  *(v8 + 8) = 19;
  *(v8 + 16) = 2;
  v7();
  v9 = (v40 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "TEMPERATURE_FAHRENHEIT";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v7();
  v11 = (v40 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 10;
  *v12 = "WIND_MPH";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v7();
  v13 = (v40 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 11;
  *v14 = "WIND_KPH";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v7();
  v15 = (v40 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 12;
  *v16 = "WIND_MPS";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v7();
  v17 = (v40 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 13;
  *v18 = "WIND_BEAUFORT";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v7();
  v19 = (v40 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 14;
  *v20 = "WIND_KNOTS";
  *(v20 + 1) = 10;
  v20[16] = 2;
  v7();
  v21 = (v40 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 20;
  *v22 = "PRECIPITATION_INCHES";
  *(v22 + 1) = 20;
  v22[16] = 2;
  v7();
  v23 = (v40 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 21;
  *v24 = "PRECIPITATION_MM";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v7();
  v25 = (v40 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 30;
  *v26 = "PRESSURE_MBAR";
  *(v26 + 1) = 13;
  v26[16] = 2;
  v7();
  v27 = (v40 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 31;
  *v28 = "PRESSURE_INHG";
  *(v28 + 1) = 13;
  v28[16] = 2;
  v7();
  v29 = (v40 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 32;
  *v30 = "PRESSURE_MMHG";
  *(v30 + 1) = 13;
  v30[16] = 2;
  v7();
  v31 = (v40 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 33;
  *v32 = "PRESSURE_HPA";
  *(v32 + 1) = 12;
  v32[16] = 2;
  v7();
  v33 = (v40 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 34;
  *v34 = "PRESSURE_KPA";
  *(v34 + 1) = 12;
  v34[16] = 2;
  v7();
  v35 = (v40 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 40;
  *v36 = "DISTANCE_MI";
  *(v36 + 1) = 11;
  v36[16] = 2;
  v7();
  v37 = (v40 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 41;
  *v38 = "DISTANCE_KM";
  *(v38 + 1) = 11;
  v38[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B916791C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC62E8);
  __swift_project_value_buffer(v0, qword_1EBAC62E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "app_intent_target";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "place_attributes";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "timestamp";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_ClockAppIntentData.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_288();
        OUTLINED_FUNCTION_24_3();
        sub_1B9167CF4(v11, v12, v13, v14);
        break;
      case 2:
        OUTLINED_FUNCTION_288();
        OUTLINED_FUNCTION_24_3();
        sub_1B9167C40(v7, v8, v9, v10);
        break;
      case 1:
        OUTLINED_FUNCTION_288();
        OUTLINED_FUNCTION_24_3();
        sub_1B9167BD8(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_1B9167C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData(0);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(0);
  sub_1B8CD2960(&qword_1EBAC6230, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes);
  return sub_1B964C580();
}

uint64_t sub_1B9167CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData(0);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(0);
  sub_1B8CD2960(&qword_1EBAC6248, type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_Timestamp);
  return sub_1B964C580();
}

uint64_t Apple_Parsec_Siri_V2alpha_ClockAppIntentData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6340, &qword_1B9698600);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v22 - v8;
  v24 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  v22[1] = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6350, &qword_1B9698610);
  OUTLINED_FUNCTION_183(v13);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_22_3();
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(v15);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_62();
  if (!*v3 || (v18 = *(v3 + 8), v22[2] = *v3, v23 = v18, sub_1B9168120(), result = sub_1B964C680(), !v4))
  {
    v22[0] = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData(0);
    sub_1B8D92024();
    v20 = OUTLINED_FUNCTION_493();
    if (__swift_getEnumTagSinglePayload(v20, v21, v16) == 1)
    {
      sub_1B8D9207C(v5, &qword_1EBAC6350, &qword_1B9698610);
    }

    else
    {
      OUTLINED_FUNCTION_1_53();
      OUTLINED_FUNCTION_177_1();
      sub_1B916402C();
      sub_1B8CD2960(&qword_1EBAC6230, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes);
      sub_1B964C740();
      OUTLINED_FUNCTION_13_22();
      result = sub_1B9163FB8();
      if (v4)
      {
        return result;
      }
    }

    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v9, 1, v24) == 1)
    {
      sub_1B8D9207C(v9, &qword_1EBAC6340, &qword_1B9698600);
    }

    else
    {
      OUTLINED_FUNCTION_0_62();
      sub_1B916402C();
      sub_1B8CD2960(&qword_1EBAC6248, type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_Timestamp);
      sub_1B964C740();
      OUTLINED_FUNCTION_11_32();
      result = sub_1B9163FB8();
      if (v4)
      {
        return result;
      }
    }

    return sub_1B964C290();
  }

  return result;
}

unint64_t sub_1B9168120()
{
  result = qword_1EBAC6380;
  if (!qword_1EBAC6380)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData.AppIntentTarget, &type metadata for Apple_Parsec_Siri_V2alpha_ClockAppIntentData.AppIntentTarget, v0, v1);
    atomic_store(result, &qword_1EBAC6380);
  }

  return result;
}

uint64_t sub_1B9168218(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2960(&qword_1EBAC6478, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9168298(uint64_t a1)
{
  v2 = sub_1B8CD2960(&qword_1EBAC6448, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9168308(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2960(&qword_1EBAC6448, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData);

  return sub_1B964C5D0();
}

uint64_t sub_1B9168388()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6300);
  __swift_project_value_buffer(v0, qword_1EBAC6300);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNDEFINED_CONDITION";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "FIND_TIME_IN_LOCATION";
  *(v10 + 8) = 21;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "FIND_DATE_IN_LOCATION";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "FIND_TIMEZONE";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "HOLIDAY_SCHEDULE";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9168648()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6318);
  __swift_project_value_buffer(v0, qword_1EBAC6318);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "requestUrl";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "response";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_WdsResponse.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C470();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_WdsResponse.traverse<A>(visitor:)()
{
  v2 = v0[1];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
  {
    if (sub_1B8D99EA8(v0[2], v0[3]) || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C6A0(), !v1))
    {
      type metadata accessor for Apple_Parsec_Siri_V2alpha_WdsResponse(0);
      OUTLINED_FUNCTION_12();
      return sub_1B964C290();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_WdsResponse.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *v2 == *v0 && v1[1] == v0[1];
  if (!v3 && (sub_1B964C9F0() & 1) == 0 || (MEMORY[0x1BFADC060](v1[2], v1[3], v0[2], v0[3]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_WdsResponse(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_36();
  v6 = sub_1B8CD2960(v4, v5, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v6) & 1;
}

uint64_t sub_1B9168A5C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, const char *a4)
{
  sub_1B964CA70();
  a1(0);
  v6 = OUTLINED_FUNCTION_461();
  sub_1B8CD2960(v6, v7, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9168B3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2960(&qword_1EBAC6470, type metadata accessor for Apple_Parsec_Siri_V2alpha_WdsResponse, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_WdsResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9168BBC(uint64_t a1)
{
  v2 = sub_1B8CD2960(&qword_1EBAC6460, type metadata accessor for Apple_Parsec_Siri_V2alpha_WdsResponse, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_WdsResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9168C2C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2960(&qword_1EBAC6460, type metadata accessor for Apple_Parsec_Siri_V2alpha_WdsResponse, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_WdsResponse);

  return sub_1B964C5D0();
}

unint64_t sub_1B9168CAC()
{
  result = qword_1EBAC6398;
  if (!qword_1EBAC6398)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.AppIntentTarget, &type metadata for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.AppIntentTarget, v0, v1);
    atomic_store(result, &qword_1EBAC6398);
  }

  return result;
}

unint64_t sub_1B9168D04()
{
  result = qword_1EBAC63A0;
  if (!qword_1EBAC63A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.AppIntentTarget, &type metadata for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.AppIntentTarget, v0, v1);
    atomic_store(result, &qword_1EBAC63A0);
  }

  return result;
}

unint64_t sub_1B9168D5C()
{
  result = qword_1EBAC63A8;
  if (!qword_1EBAC63A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.AppIntentTarget, &type metadata for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.AppIntentTarget, v0, v1);
    atomic_store(result, &qword_1EBAC63A8);
  }

  return result;
}

unint64_t sub_1B9168DB4()
{
  result = qword_1EBAC63B0;
  if (!qword_1EBAC63B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.MeasurementUnits, &type metadata for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.MeasurementUnits, v0, v1);
    atomic_store(result, &qword_1EBAC63B0);
  }

  return result;
}

unint64_t sub_1B9168E0C()
{
  result = qword_1EBAC63B8;
  if (!qword_1EBAC63B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.MeasurementUnits, &type metadata for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.MeasurementUnits, v0, v1);
    atomic_store(result, &qword_1EBAC63B8);
  }

  return result;
}

unint64_t sub_1B9168E64()
{
  result = qword_1EBAC63C0;
  if (!qword_1EBAC63C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.MeasurementUnits, &type metadata for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.MeasurementUnits, v0, v1);
    atomic_store(result, &qword_1EBAC63C0);
  }

  return result;
}

unint64_t sub_1B9168F1C()
{
  result = qword_1EBAC63E8;
  if (!qword_1EBAC63E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData.AppIntentTarget, &type metadata for Apple_Parsec_Siri_V2alpha_ClockAppIntentData.AppIntentTarget, v0, v1);
    atomic_store(result, &qword_1EBAC63E8);
  }

  return result;
}

unint64_t sub_1B9168F74()
{
  result = qword_1EBAC63F0;
  if (!qword_1EBAC63F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData.AppIntentTarget, &type metadata for Apple_Parsec_Siri_V2alpha_ClockAppIntentData.AppIntentTarget, v0, v1);
    atomic_store(result, &qword_1EBAC63F0);
  }

  return result;
}

unint64_t sub_1B9168FCC()
{
  result = qword_1EBAC63F8;
  if (!qword_1EBAC63F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData.AppIntentTarget, &type metadata for Apple_Parsec_Siri_V2alpha_ClockAppIntentData.AppIntentTarget, v0, v1);
    atomic_store(result, &qword_1EBAC63F8);
  }

  return result;
}

void sub_1B91694FC(uint64_t a1)
{
  sub_1B91697E8(319, qword_1ED9D37D0, type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData.OneOf_Data);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B916959C(uint64_t a1)
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B9169638(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B9169704(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B91697E8(319, qword_1ED9CFE78, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes);
    if (v2 <= 0x3F)
    {
      sub_1B91697E8(319, qword_1ED9D2870, type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B91697E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B964C930();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B916987C(uint64_t a1)
{
  sub_1B91697E8(319, qword_1ED9CFE78, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes);
  if (v1 <= 0x3F)
  {
    sub_1B91697E8(319, qword_1ED9D2870, type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp);
    if (v2 <= 0x3F)
    {
      sub_1B91697E8(319, qword_1ED9CA5F8, type metadata accessor for Apple_Parsec_Siri_V2alpha_WdsResponse);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_1B91699F0()
{
  result = qword_1EBAC6490;
  if (!qword_1EBAC6490)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.MeasurementUnits, &type metadata for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.MeasurementUnits, v0, v1);
    atomic_store(result, &qword_1EBAC6490);
  }

  return result;
}

unint64_t sub_1B9169A44()
{
  result = qword_1EBAC6498;
  if (!qword_1EBAC6498)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.AppIntentTarget, &type metadata for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.AppIntentTarget, v0, v1);
    atomic_store(result, &qword_1EBAC6498);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_17_19(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_21_14()
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_37_9(uint64_t a1)
{
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v1[2] = 0;
  v1[3] = 0xE000000000000000;
  v1[4] = 0;
  v1[5] = 0xE000000000000000;
  v1[6] = 0;
  v1[7] = 0xE000000000000000;
  v1[8] = 0;
  v1[9] = 0xE000000000000000;
  v1[10] = 0;
  v1[11] = 0xE000000000000000;
  v1[12] = 0;
  v1[13] = 0xE000000000000000;
  v1[14] = 0;
  v1[15] = 0xE000000000000000;
  v1[16] = 0;
  v1[17] = 0xE000000000000000;
  v1[18] = 0;
  v1[19] = 0xE000000000000000;
  v1[20] = 0;
  v1[21] = 0;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_38_6()
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_84_7()
{

  return sub_1B916402C();
}

uint64_t OUTLINED_FUNCTION_92_8()
{
  *(v0 + 8) = 1;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData(0);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

unint64_t Apple_Parsec_Siri_V2alpha_AudioFormat.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 5;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B9169DB0@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Siri_V2alpha_AudioFormat.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9169DE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B916CE00();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Apple_Parsec_Siri_V2alpha_AudioFormat.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBAC64B8 = a1;
}

uint64_t (*static Apple_Parsec_Siri_V2alpha_AudioFormat.allCases.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B9169F1C@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_AudioFormat.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioData.audioBuffer.getter()
{
  OUTLINED_FUNCTION_6_23();
  OUTLINED_FUNCTION_521(v0 + 16, v3);
  v1 = *(v0 + 16);
  sub_1B8D91FCC(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_1B9169FB0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1B8D91FCC(*a1, v2);
  return Apple_Parsec_Siri_V2alpha_AudioData.audioBuffer.setter(v1, v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioData.audioBuffer.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioData(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_7_29();
    v9 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B916B424(v9);
    *(v3 + v6) = v8;
  }

  swift_beginAccess();
  v10 = *(v8 + 16);
  v11 = *(v8 + 24);
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  return sub_1B8D538A0(v10, v11);
}

void (*Apple_Parsec_Siri_V2alpha_AudioData.audioBuffer.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  v3[8] = v1;
  v4 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioData(0) + 20);
  *(v3 + 18) = v4;
  v5 = *(v1 + v4);
  OUTLINED_FUNCTION_521(v5 + 16, v3);
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  v3[6] = v6;
  v3[7] = v7;
  sub_1B8D91FCC(v6, v7);
  return sub_1B916A12C;
}

void sub_1B916A12C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = OUTLINED_FUNCTION_461();
    sub_1B8D91FCC(v5, v6);
    v7 = OUTLINED_FUNCTION_461();
    Apple_Parsec_Siri_V2alpha_AudioData.audioBuffer.setter(v7, v8);
    v9 = *(v2 + 48);
    v10 = *(v2 + 56);
  }

  else
  {
    v11 = *(v2 + 72);
    v12 = *(v2 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v12 + v11);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = *(v2 + 72);
      v16 = *(v2 + 64);
      OUTLINED_FUNCTION_7_29();
      v17 = OUTLINED_FUNCTION_40_0();
      v14 = sub_1B916B424(v17);
      *(v16 + v15) = v14;
    }

    swift_beginAccess();
    v9 = *(v14 + 16);
    v10 = *(v14 + 24);
    *(v14 + 16) = v3;
    *(v14 + 24) = v4;
  }

  sub_1B8D538A0(v9, v10);

  free(v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioDescription.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription(0);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void (*Apple_Parsec_Siri_V2alpha_AudioData.decoderStreamDescription.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6510, &qword_1B9699320);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[4] = v6;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription(0);
  OUTLINED_FUNCTION_59_1();
  v8 = *(v7 + 64);
  v3[5] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v3[6] = v9;
  OUTLINED_FUNCTION_6_23();
  v10 = OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioDataP33_8E596054D932A42EC610BB2E9618667013_StorageClass__decoderStreamDescription;
  OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioDataP33_8E596054D932A42EC610BB2E9618667013_StorageClass__decoderStreamDescription, v3);
  sub_1B916B60C(v1 + v10, v6);
  v11 = OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    OUTLINED_FUNCTION_9_24(v11);
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v6, &qword_1EBAC6510, &qword_1B9699320);
    }
  }

  else
  {
    sub_1B916B69C(v6, v9);
  }

  return sub_1B916A3A0;
}

uint64_t sub_1B916A3DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6510, &qword_1B9699320);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13[-v7 - 8];
  OUTLINED_FUNCTION_6_23();
  v9 = *a1;
  OUTLINED_FUNCTION_521(v2 + v9, v13);
  sub_1B916B60C(v2 + v9, v8);
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v10) != 1)
  {
    return sub_1B916B69C(v8, a2);
  }

  Apple_Parsec_Siri_V2alpha_AudioDescription.init()(a2);
  result = __swift_getEnumTagSinglePayload(v8, 1, v10);
  if (result != 1)
  {
    return sub_1B8D9207C(v8, &qword_1EBAC6510, &qword_1B9699320);
  }

  return result;
}

uint64_t sub_1B916A4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription(0);
  v8 = OUTLINED_FUNCTION_183(v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B916B770(a1, v10);
  return a5(v10);
}

uint64_t sub_1B916A578(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6510, &qword_1B9699320);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = *(OUTLINED_FUNCTION_20_7() + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v2 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_7_29();
    v11 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B916B424(v11);
    *(v5 + v8) = v10;
  }

  v12 = OUTLINED_FUNCTION_461();
  sub_1B916B69C(v12, v13);
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription(0);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v14);
  OUTLINED_FUNCTION_11_33();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B916B700(v3, v10 + a2);
  return swift_endAccess();
}

void (*Apple_Parsec_Siri_V2alpha_AudioData.playerStreamDescription.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6510, &qword_1B9699320);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[4] = v6;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription(0);
  OUTLINED_FUNCTION_59_1();
  v8 = *(v7 + 64);
  v3[5] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v3[6] = v9;
  OUTLINED_FUNCTION_6_23();
  v10 = OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioDataP33_8E596054D932A42EC610BB2E9618667013_StorageClass__playerStreamDescription;
  OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioDataP33_8E596054D932A42EC610BB2E9618667013_StorageClass__playerStreamDescription, v3);
  sub_1B916B60C(v1 + v10, v6);
  v11 = OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    OUTLINED_FUNCTION_9_24(v11);
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v6, &qword_1EBAC6510, &qword_1B9699320);
    }
  }

  else
  {
    sub_1B916B69C(v6, v9);
  }

  return sub_1B916A7A4;
}

void sub_1B916A7BC(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  v7 = *(*a1 + 32);
  if (a2)
  {
    sub_1B916B770(v6, v5);
    a3(v5);
    sub_1B916B7D4(v6);
  }

  else
  {
    a3(v6);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v4);
}

BOOL sub_1B916A860(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6510, &qword_1B9699320);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - v5;
  OUTLINED_FUNCTION_6_23();
  v7 = OUTLINED_FUNCTION_11_33();
  OUTLINED_FUNCTION_521(v7, v8);
  sub_1B916B60C(v1 + a1, v6);
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription(0);
  v10 = __swift_getEnumTagSinglePayload(v6, 1, v9) != 1;
  sub_1B8D9207C(v6, &qword_1EBAC6510, &qword_1B9699320);
  return v10;
}

uint64_t sub_1B916A93C(uint64_t a1)
{
  v4 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6510, &qword_1B9699320);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = *(OUTLINED_FUNCTION_20_7() + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_7_29();
    v10 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B916B424(v10);
    *(v4 + v7) = v9;
  }

  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription(0);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v11);
  OUTLINED_FUNCTION_11_33();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B916B700(v2, v9 + a1);
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioData.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioData.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_288();

  return v1(v0);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioData.init()@<X0>(uint64_t a2@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioData(0) + 20);
  if (qword_1EBAB7608 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_1EBAC64F0;
}

void Apple_Parsec_Siri_V2alpha_AudioDescription.audioFormat.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioDescription.audioFormat.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioDescription.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription(0) + 56);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioDescription.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription(v2) + 56);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Apple_Parsec_Siri_V2alpha_AudioDescription.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription(v0);
  return nullsub_1;
}

uint64_t sub_1B916AE8C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC64C0);
  __swift_project_value_buffer(v0, qword_1EBAC64C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "AUDIO_FORMAT_UNDEFINED";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AUDIO_FORMAT_OPUS";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "AUDIO_FORMAT_SPEEX";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "AUDIO_FORMAT_MP3";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "AUDIO_FORMAT_LINEAR_PCM";
  *(v16 + 1) = 23;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B916B150()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC64D8);
  __swift_project_value_buffer(v0, qword_1EBAC64D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "audio_buffer";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "decoder_stream_description";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "player_stream_description";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B916B37C()
{
  OUTLINED_FUNCTION_7_29();
  result = sub_1B916B3AC();
  qword_1EBAC64F0 = result;
  return result;
}

uint64_t sub_1B916B3AC()
{
  *(v0 + 16) = xmmword_1B9652FE0;
  v1 = OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioDataP33_8E596054D932A42EC610BB2E9618667013_StorageClass__decoderStreamDescription;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioDataP33_8E596054D932A42EC610BB2E9618667013_StorageClass__playerStreamDescription, 1, 1, v2);
  return v0;
}

uint64_t sub_1B916B424(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6510, &qword_1B9699320);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - v4;
  *(v1 + 16) = xmmword_1B9652FE0;
  v6 = OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioDataP33_8E596054D932A42EC610BB2E9618667013_StorageClass__decoderStreamDescription;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription(0);
  __swift_storeEnumTagSinglePayload(v1 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioDataP33_8E596054D932A42EC610BB2E9618667013_StorageClass__playerStreamDescription;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioDataP33_8E596054D932A42EC610BB2E9618667013_StorageClass__playerStreamDescription, 1, 1, v7);
  swift_beginAccess();
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  swift_beginAccess();
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  *(v1 + 16) = v9;
  *(v1 + 24) = v10;
  sub_1B8D91FCC(v9, v10);
  sub_1B8D538A0(v11, v12);
  v13 = OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioDataP33_8E596054D932A42EC610BB2E9618667013_StorageClass__decoderStreamDescription;
  swift_beginAccess();
  sub_1B916B60C(a1 + v13, v5);
  swift_beginAccess();
  sub_1B916B700(v5, v1 + v6);
  swift_endAccess();
  v14 = OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioDataP33_8E596054D932A42EC610BB2E9618667013_StorageClass__playerStreamDescription;
  swift_beginAccess();
  sub_1B916B60C(a1 + v14, v5);

  swift_beginAccess();
  sub_1B916B700(v5, v1 + v8);
  swift_endAccess();
  return v1;
}

uint64_t sub_1B916B60C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6510, &qword_1B9699320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B916B69C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B916B700(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6510, &qword_1B9699320);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B916B770(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B916B7D4(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B916B830()
{
  sub_1B8D538A0(*(v0 + 16), *(v0 + 24));
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioDataP33_8E596054D932A42EC610BB2E9618667013_StorageClass__decoderStreamDescription, &qword_1EBAC6510, &qword_1B9699320);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioDataP33_8E596054D932A42EC610BB2E9618667013_StorageClass__playerStreamDescription, &qword_1EBAC6510, &qword_1B9699320);
  return v0;
}

uint64_t sub_1B916B8A0()
{
  v0 = sub_1B916B830();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioData.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioData(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioData._StorageClass(0);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B916B424(v11);
    *(v4 + v8) = v10;
  }

  return sub_1B916B994(v10, a1, a2, a3);
}

uint64_t sub_1B916B994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioDataP33_8E596054D932A42EC610BB2E9618667013_StorageClass__playerStreamDescription;
LABEL_9:
        sub_1B916BA5C(v11, v12, v13, v14, v15);
        break;
      case 2:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioDataP33_8E596054D932A42EC610BB2E9618667013_StorageClass__decoderStreamDescription;
        goto LABEL_9;
      case 1:
        sub_1B8E9AE04(a2, a1, a3, a4);
        break;
    }
  }
}

uint64_t sub_1B916BA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription(0);
  sub_1B8CD29A8(&qword_1EBAC6578, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioDescription);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioData(0);
  OUTLINED_FUNCTION_12();
  result = sub_1B916BB98(v5, v6, v7, a3);
  if (!v3)
  {
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B916BB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6510, &qword_1B9699320);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v28 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v27 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - v14;
  swift_beginAccess();
  if (!sub_1B8D99EA8(*(a1 + 16), *(a1 + 24)))
  {
    v26 = v11;
    v16 = *(a1 + 16);
    v17 = *(a1 + 24);
    sub_1B8D91FCC(v16, v17);
    sub_1B964C6A0();
    result = sub_1B8D538A0(v16, v17);
    if (v4)
    {
      return result;
    }

    v11 = v26;
  }

  v19 = OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioDataP33_8E596054D932A42EC610BB2E9618667013_StorageClass__decoderStreamDescription;
  swift_beginAccess();
  sub_1B916B60C(a1 + v19, v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAC6510, &qword_1B9699320);
  }

  else
  {
    sub_1B916B69C(v10, v15);
    sub_1B8CD29A8(&qword_1EBAC6578, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioDescription);
    sub_1B964C740();
    result = sub_1B916B7D4(v15);
    if (v4)
    {
      return result;
    }
  }

  v20 = OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioDataP33_8E596054D932A42EC610BB2E9618667013_StorageClass__playerStreamDescription;
  swift_beginAccess();
  v21 = a1 + v20;
  v22 = v28;
  sub_1B916B60C(v21, v28);
  if (__swift_getEnumTagSinglePayload(v22, 1, v11) == 1)
  {
    return sub_1B8D9207C(v22, &qword_1EBAC6510, &qword_1B9699320);
  }

  v23 = v22;
  v24 = v27;
  sub_1B916B69C(v23, v27);
  sub_1B8CD29A8(&qword_1EBAC6578, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioDescription);
  sub_1B964C740();
  return sub_1B916B7D4(v24);
}