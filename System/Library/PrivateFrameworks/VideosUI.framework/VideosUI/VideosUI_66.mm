id sub_1E3B7AED0()
{
  OUTLINED_FUNCTION_0_8();
  v5 = type metadata accessor for SportsFavoriteBannerCell();
  v1 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id sub_1E3B7AF40(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SportsFavoriteBannerCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E3B7AFD0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SportsFavoriteBannerCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void *sub_1E3B7B008@<X0>(void *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  [v6 sizeThatFits_];
  v13 = v12;
  v15 = v14;
  sub_1E41A300C(v18);
  sub_1E41A2FE8(v16, v13, v15);
  *&v18[6] = a3;
  *&v18[7] = a4;
  *&v18[8] = a5;
  *&v18[9] = a6;
  return memcpy(a1, v18, 0x50uLL);
}

uint64_t sub_1E3B7B0EC(void *a1)
{
  v2 = [a1 backgroundImageLogos];

  if (!v2)
  {
    return 0;
  }

  sub_1E3280A90(0, &qword_1EE23B360, 0x1E69DF740);
  v3 = sub_1E42062B4();

  return v3;
}

id sub_1E3B7B188()
{
  type metadata accessor for LibDataSourceManager(0);
  v0 = swift_allocObject();
  result = sub_1E3B7D34C();
  qword_1EE2AAE28 = v0;
  return result;
}

uint64_t *sub_1E3B7B1C8()
{
  if (qword_1EE29D7D0 != -1)
  {
    OUTLINED_FUNCTION_41_37(&qword_1EE29D7D0);
  }

  return &qword_1EE2AAE28;
}

uint64_t sub_1E3B7B214()
{
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  sub_1E41A3110();
  v1 = OUTLINED_FUNCTION_78_11();
  v2(v1);

  v3 = sub_1E41FFC94();
  v4 = sub_1E4206814();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_160();
    *v5 = 67109120;
    OUTLINED_FUNCTION_12_6();
    *(v5 + 4) = (*(v6 + 216))() & 1;

    _os_log_impl(&dword_1E323F000, v3, v4, "LibDataSourceManager:: did set isLoading to %{BOOL}d", v5, 8u);
    OUTLINED_FUNCTION_55();
  }

  else
  {
  }

  v7 = OUTLINED_FUNCTION_13_8();
  return v8(v7);
}

uint64_t sub_1E3B7B3A8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1E3B7B420()
{
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_82();
  sub_1E4200684();
  return sub_1E3B7B214();
}

uint64_t (*sub_1E3B7B4E0())()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_4(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_24_14(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_8_15(v4);
  return sub_1E3846A58;
}

uint64_t sub_1E3B7B578()
{
  v1 = OUTLINED_FUNCTION_28_20();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_30_4(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0, &qword_1E42981C0);
  OUTLINED_FUNCTION_7_12(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_16(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_25_11(v8);
  OUTLINED_FUNCTION_12_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  OUTLINED_FUNCTION_23_23();
  swift_endAccess();
  return OUTLINED_FUNCTION_27_15();
}

uint64_t sub_1E3B7B68C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 312))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1E3B7B748())()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_4(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_24_14(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_8_15(v4);
  return sub_1E3846A58;
}

uint64_t sub_1E3B7B7E0()
{
  v1 = OUTLINED_FUNCTION_28_20();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_30_4(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0, &qword_1E42981C0);
  OUTLINED_FUNCTION_7_12(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_16(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_25_11(v8);
  OUTLINED_FUNCTION_12_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  OUTLINED_FUNCTION_23_23();
  swift_endAccess();
  return OUTLINED_FUNCTION_27_15();
}

void sub_1E3B7B8E0(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  if (a2)
  {
    OUTLINED_FUNCTION_131_0();
    v7 = OUTLINED_FUNCTION_34();
    v8(v7);
    a3(v5);
    v9 = OUTLINED_FUNCTION_125();
    v10(v9);
  }

  else
  {
    a3(*(*a1 + 56));
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t sub_1E3B7B9B0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 360))();
  *a2 = result & 1;
  return result;
}

void sub_1E3B7BA6C()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  sub_1E324FBDC();
  v2 = OUTLINED_FUNCTION_78_11();
  v3(v2);

  v4 = sub_1E41FFC94();
  v5 = sub_1E4206814();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_6_21();
    v7 = OUTLINED_FUNCTION_100();
    v21 = v7;
    *v6 = 136315138;
    v8 = (*(*v0 + 408))();
    v9 = v8;
    if (v8)
    {
      v8 = type metadata accessor for LibMenuItem(0);
    }

    else
    {
      v20[1] = 0;
      v20[2] = 0;
    }

    v20[0] = v9;
    v20[3] = v8;
    v10 = sub_1E3294FA4(v20);
    v12 = sub_1E3270FC8(v10, v11, &v21);

    *(v6 + 4) = v12;
    OUTLINED_FUNCTION_12_17();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_21_0();
  }

  v18 = OUTLINED_FUNCTION_13_8();
  v19(v18);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B7BC40()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_16_0();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3B7BCB0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 408))();
  *a2 = result;
  return result;
}

uint64_t sub_1E3B7BD04(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 416);

  return v2(v3);
}

double sub_1E3B7BD60()
{
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_82();
  sub_1E4200684();
  sub_1E3B7BA6C();

  return result;
}

double (*sub_1E3B7BDE0(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1E3B7BC40();
  return sub_1E3B7BE28;
}

double sub_1E3B7BE28(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1E3B7BD60();
  }

  sub_1E3B7BD60();

  return result;
}

uint64_t sub_1E3B7BE9C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34188, &unk_1E42BEF00);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = OUTLINED_FUNCTION_1_8(v7, v11);
  v9(v8);
  OUTLINED_FUNCTION_11_3(v1 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager__selectedMenuItem, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34180, &qword_1E42BEEF8);
  sub_1E4200654();
  swift_endAccess();
  return (*(v5 + 8))(a1, v3);
}

uint64_t sub_1E3B7BFA0()
{
  v1 = OUTLINED_FUNCTION_28_20();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_30_4(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34188, &unk_1E42BEF00);
  OUTLINED_FUNCTION_7_12(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_16(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_25_11(v8);
  OUTLINED_FUNCTION_12_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34180, &qword_1E42BEEF8);
  OUTLINED_FUNCTION_23_23();
  swift_endAccess();
  return OUTLINED_FUNCTION_27_15();
}

uint64_t sub_1E3B7C0A0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_16_0();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3B7C110@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 456))();
  *a2 = result;
  return result;
}

uint64_t sub_1E3B7C164(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 464);

  return v2(v3);
}

uint64_t sub_1E3B7C1C0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_82();
  return sub_1E4200684();
}

uint64_t (*sub_1E3B7C22C())()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_4(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_24_14(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_8_15(v4);
  return sub_1E3846A58;
}

uint64_t sub_1E3B7C2B8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C70, &qword_1E42BEF60);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = OUTLINED_FUNCTION_1_8(v7, v11);
  v9(v8);
  OUTLINED_FUNCTION_11_3(v1 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager__resolvedMenuItems, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C68, &unk_1E42BD100);
  sub_1E4200654();
  swift_endAccess();
  return (*(v5 + 8))(a1, v3);
}

uint64_t sub_1E3B7C3BC()
{
  v1 = OUTLINED_FUNCTION_28_20();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_30_4(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C70, &qword_1E42BEF60);
  OUTLINED_FUNCTION_7_12(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_16(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_25_11(v8);
  OUTLINED_FUNCTION_12_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C68, &unk_1E42BD100);
  OUTLINED_FUNCTION_23_23();
  swift_endAccess();
  return OUTLINED_FUNCTION_27_15();
}

uint64_t sub_1E3B7C4D0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 504))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1E3B7C58C())()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_4(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_24_14(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_8_15(v4);
  return sub_1E3846A58;
}

uint64_t sub_1E3B7C624()
{
  v1 = OUTLINED_FUNCTION_28_20();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_30_4(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0, &qword_1E42981C0);
  OUTLINED_FUNCTION_7_12(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_16(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_25_11(v8);
  OUTLINED_FUNCTION_12_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  OUTLINED_FUNCTION_23_23();
  swift_endAccess();
  return OUTLINED_FUNCTION_27_15();
}

uint64_t sub_1E3B7C738@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 552))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1E3B7C7F4())()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_4(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_24_14(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_8_15(v4);
  return sub_1E3844B3C;
}

uint64_t sub_1E3B7C880(void *a1)
{
  OUTLINED_FUNCTION_11_3(v1 + *a1, v5);
  v2 = OUTLINED_FUNCTION_13_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_23_23();
  return swift_endAccess();
}

uint64_t sub_1E3B7C8F0(uint64_t a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0, &qword_1E42981C0);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_35_3();
  (*(v8 + 16))(v3, a1, v6);
  OUTLINED_FUNCTION_11_3(v2 + *a2, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  sub_1E4200654();
  swift_endAccess();
  return (*(v8 + 8))(a1, v6);
}

uint64_t sub_1E3B7CA0C()
{
  v1 = OUTLINED_FUNCTION_28_20();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_30_4(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0, &qword_1E42981C0);
  OUTLINED_FUNCTION_7_12(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_16(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_25_11(v8);
  OUTLINED_FUNCTION_12_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  OUTLINED_FUNCTION_23_23();
  swift_endAccess();
  return OUTLINED_FUNCTION_27_15();
}

uint64_t sub_1E3B7CB0C()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_adamIDToCanonicalIDMap;
  OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_adamIDToCanonicalIDMap, v4);
  v2 = *(v1 + 8);

  return OUTLINED_FUNCTION_57();
}

void sub_1E3B7CB6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (v3 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_adamIDToCanonicalIDMap);
  OUTLINED_FUNCTION_3_0(v7, v9);
  v8 = v7[1];
  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;
}

void sub_1E3B7CC30()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_activeSources;
  OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_activeSources, &v51);
  v10 = *(v0 + v9);
  v11 = *(v10 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  v46 = v8;
  if (v11)
  {
    v43 = v9;
    v44 = v4;
    v45 = v2;
    v50 = MEMORY[0x1E69E7CC0];

    sub_1E377FD30(0, v11, 0);
    v13 = v10 + 32;
    do
    {
      sub_1E327F454(v13, v47);
      v14 = v48;
      v15 = v49;
      __swift_project_boxed_opaque_existential_1(v47, v48);
      OUTLINED_FUNCTION_33();
      v17 = v16(v14, v15);
      v19 = v18;
      __swift_destroy_boxed_opaque_existential_1(v47);
      v50 = v12;
      v21 = *(v12 + 16);
      v20 = *(v12 + 24);
      if (v21 >= v20 >> 1)
      {
        v23 = OUTLINED_FUNCTION_35(v20);
        sub_1E377FD30(v23, v21 + 1, 1);
        v12 = v50;
      }

      *(v12 + 16) = v21 + 1;
      v22 = v12 + 16 * v21;
      *(v22 + 32) = v17;
      *(v22 + 40) = v19;
      v13 += 40;
      --v11;
    }

    while (v11);

    v4 = v44;
    v2 = v45;
    v8 = v46;
    v9 = v43;
  }

  v24 = sub_1E41A3110();
  (*(v4 + 16))(v8, v24, v2);

  v25 = sub_1E41FFC94();
  v26 = sub_1E4206814();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = OUTLINED_FUNCTION_49_0();
    v47[0] = OUTLINED_FUNCTION_72_0();
    *v27 = 136315394;
    v28 = *(v1 + v9);

    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640, &qword_1E429E310);
    v30 = MEMORY[0x1E6910C30](v28, v29);
    v32 = v31;

    v33 = sub_1E3270FC8(v30, v32, v47);

    *(v27 + 4) = v33;
    *(v27 + 12) = 2080;
    MEMORY[0x1E6910C30](v12, MEMORY[0x1E69E6158]);

    v34 = OUTLINED_FUNCTION_114_0();
    v37 = sub_1E3270FC8(v34, v35, v36);

    *(v27 + 14) = v37;
    OUTLINED_FUNCTION_36_4();
    _os_log_impl(v38, v39, v40, v41, v42, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_55();

    (*(v4 + 8))(v46, v2);
  }

  else
  {

    (*(v4 + 8))(v8, v2);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B7CF98()
{
  v2 = v0;
  v3 = OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_availableSources;
  OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_availableSources, v16);
  v4 = *(v0 + v3);
  v5 = *(v4 + 16);

  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

LABEL_9:
      v11 = *(v2 + v3);
      v12 = OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_activeSources;
      OUTLINED_FUNCTION_3_0(v2 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_activeSources, v17);
      *(v2 + v12) = v11;

      sub_1E3B7CC30();
      return;
    }

    if (i >= *(v4 + 16))
    {
      break;
    }

    sub_1E327F454(v4 + 32, v15);
    sub_1E327F454(v15, v14);
    v7 = OUTLINED_FUNCTION_75();
    __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    OUTLINED_FUNCTION_247();
    type metadata accessor for LibLocalSource();
    if (OUTLINED_FUNCTION_122_4(&v13, v14, v1))
    {

      sub_1E37DADF4(v15, v17);
      if (OUTLINED_FUNCTION_122_4(v15, v17, v1))
      {
        v9 = *&v15[0];
        OUTLINED_FUNCTION_21();
        (*(v10 + 640))();
      }

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_120_4(v15);
  }

  __break(1u);
}

double sub_1E3B7D144(uint64_t *a1)
{
  OUTLINED_FUNCTION_5_0(v1 + *a1, v3);

  return result;
}

uint64_t sub_1E3B7D1A0(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  OUTLINED_FUNCTION_3_0(v3 + *a2, v9);
  *(v3 + v6) = a1;

  return a3(v7);
}

uint64_t sub_1E3B7D1F8()
{
  v0 = OUTLINED_FUNCTION_32_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  sub_1E328FCF4(&qword_1ECF34198, &qword_1ECF34190, &unk_1E42BEFF8);
  return sub_1E42006B4();
}

id sub_1E3B7D288(uint64_t a1)
{
  sub_1E327F454(a1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640, &qword_1E429E310);
  OUTLINED_FUNCTION_9_5();
  v1 = type metadata accessor for LibLocalSource();
  v9 = OUTLINED_FUNCTION_86(v1, v2, v3, v4, v5, v6, v7, v8, v16);
  if (!OUTLINED_FUNCTION_102_0(v9, v10, v11, v12))
  {
    return 0;
  }

  OUTLINED_FUNCTION_21();
  if (((*(v13 + 448))() & 1) == 0)
  {

    return 0;
  }

  v14 = [objc_opt_self() userHasActiveAccount];

  return v14;
}

id sub_1E3B7D34C()
{
  OUTLINED_FUNCTION_156_0();
  v129 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v128 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_20(v5 - v4);
  v127 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v126[1] = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_20(v9 - v8);
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v135 = v11;
  *&v136 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v134 = v13 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C68, &unk_1E42BD100);
  OUTLINED_FUNCTION_0_10();
  v132 = v15;
  v133 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_17_3(v126 - v17);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34180, &qword_1E42BEEF8);
  OUTLINED_FUNCTION_0_10();
  v19 = v18;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_35_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  OUTLINED_FUNCTION_0_10();
  v22 = v21;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  LOBYTE(aBlock) = 0;
  OUTLINED_FUNCTION_72_17();
  sub_1E4200634();
  v24 = *(v22 + 32);
  v25 = OUTLINED_FUNCTION_11_92();
  v24(v25);
  LOBYTE(aBlock) = 0;
  OUTLINED_FUNCTION_72_17();
  sub_1E4200634();
  v26 = OUTLINED_FUNCTION_11_92();
  v24(v26);
  LOBYTE(aBlock) = [objc_opt_self() isRemoteServerConnected] ^ 1;
  OUTLINED_FUNCTION_72_17();
  sub_1E4200634();
  v27 = OUTLINED_FUNCTION_11_92();
  v24(v27);
  LOBYTE(aBlock) = 0;
  OUTLINED_FUNCTION_72_17();
  sub_1E4200634();
  v28 = OUTLINED_FUNCTION_11_92();
  v24(v28);
  v29 = OBJC_IVAR____TtC8VideosUI20LibDataSourceManager__selectedMenuItem;
  aBlock = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34178, &qword_1E42E02E0);
  sub_1E4200634();
  (*(v19 + 32))(v0 + v29, v1, v130);
  v30 = OBJC_IVAR____TtC8VideosUI20LibDataSourceManager__resolvedMenuItems;
  v31 = MEMORY[0x1E69E7CC0];
  aBlock = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C60, &qword_1E42BD0B0);
  v32 = v131;
  sub_1E4200634();
  (*(v132 + 32))(v0 + v30, v32, v133);
  v33 = objc_opt_self();
  v34 = [v33 isLibraryOnlyCountry];
  v35 = 0;
  if (v34)
  {
    v35 = [v33 isLibraryOnlyCountryResolved];
  }

  LOBYTE(aBlock) = v35;
  OUTLINED_FUNCTION_72_17();
  sub_1E4200634();
  v36 = OUTLINED_FUNCTION_11_92();
  v24(v36);
  LOBYTE(aBlock) = 0;
  OUTLINED_FUNCTION_72_17();
  sub_1E4200634();
  v37 = OUTLINED_FUNCTION_11_92();
  v24(v37);
  v38 = (v0 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_adamIDToCanonicalIDMap);
  v39 = [objc_opt_self() sharedInstance];
  v40 = [v39 libConfig];

  [v40 collectionItemLimit];
  v41 = MEMORY[0x1E69E6168];
  sub_1E3CA34F0();
  *v38 = v42;
  v38[1] = v43;
  v38[2] = v44;
  *(v0 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_isMPLibraryUpdateInProgress) = 0;
  OUTLINED_FUNCTION_63_7(OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_needsFamilyFetch);
  *(v0 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_activeSources) = v31;
  v45 = v31;
  *(v0 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_availableSources) = v31;
  v46 = OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_availableSourceChangeSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34190, &unk_1E42BEFF8);
  swift_allocObject();
  *(v0 + v46) = sub_1E4200544();
  v47 = OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_shelvedMenuTypesNotOnPhoneRootPage;
  *(v0 + v47) = sub_1E38F1C3C(&unk_1F5D73460, v48, v49);
  v50 = (v0 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_menuDataCache);
  type metadata accessor for LibMenuItem(0);
  v51 = OUTLINED_FUNCTION_22_53();
  *v50 = sub_1E3CA5CB4(v51, v52, v41);
  v50[1] = v53;
  *(v0 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_cancellables) = MEMORY[0x1E69E7CD0];
  v54 = sub_1E41A3110();
  v56 = v134;
  v55 = v135;
  v57 = v136;
  (*(v135 + 16))(v134, v54, v136);
  v58 = sub_1E41FFC94();
  v59 = sub_1E4206814();
  if (OUTLINED_FUNCTION_104(v59))
  {
    v60 = OUTLINED_FUNCTION_125_0();
    *v60 = 0;
    _os_log_impl(&dword_1E323F000, v58, v59, "init LibDataSourceManager", v60, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  (*(v55 + 8))(v56, v57);
  v61 = type metadata accessor for LibLocalSource();
  sub_1E412DB78();
  v63 = v62;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF340B8, &unk_1E42BE938);
  v65 = OUTLINED_FUNCTION_26_11(v64);
  v136 = xmmword_1E4297BE0;
  *(v65 + 16) = xmmword_1E4297BE0;
  *(v65 + 56) = v61;
  v66 = sub_1E3B8B148(&qword_1EE282A78, type metadata accessor for LibLocalSource);
  *(v65 + 64) = v66;
  *(v65 + 32) = v63;
  v67 = OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_availableSources;
  OUTLINED_FUNCTION_3_0(v0 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_availableSources, v138);
  *(v0 + v67) = v65;
  v68 = v63;

  v69 = OUTLINED_FUNCTION_26_11(v64);
  *(v69 + 16) = v136;
  *(v69 + 56) = v61;
  *(v69 + 64) = v66;
  *(v69 + 32) = v68;
  v70 = OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_activeSources;
  OUTLINED_FUNCTION_3_0(v0 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_activeSources, v137);
  *(v0 + v70) = v69;
  *&v136 = v68;

  result = [objc_opt_self() sharedCloudController];
  if (result)
  {
    v72 = result;
    v73 = sub_1E3B7E03C();

    *(v0 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_isMPLibraryUpdateInProgress) = v73 & 1;
    sub_1E3B7E074(v73 & 1);
    v74 = sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
    v75 = sub_1E4206A04();
    OUTLINED_FUNCTION_4_0();
    v76 = swift_allocObject();
    OUTLINED_FUNCTION_105_2(v76);
    swift_weakInit();
    v143 = sub_1E3B8B43C;
    v144 = v74;
    aBlock = MEMORY[0x1E69E9820];
    v140 = 1107296256;
    OUTLINED_FUNCTION_14_1();
    v141 = v77;
    v142 = &block_descriptor_111;
    v78 = _Block_copy(&aBlock);

    v79 = v126[0];
    sub_1E4203FE4();
    aBlock = v45;
    OUTLINED_FUNCTION_3_131();
    sub_1E3B8B148(v80, v81);
    v82 = OUTLINED_FUNCTION_97_1();
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(v82, v83);
    OUTLINED_FUNCTION_47();
    v87 = sub_1E328FCF4(v85, v86, &qword_1E429B000);
    v88 = v126[2];
    OUTLINED_FUNCTION_155_4(&aBlock, v84, v87);
    MEMORY[0x1E6911380](0, v79, v88, v78);
    _Block_release(v78);

    OUTLINED_FUNCTION_15_5();
    v89(v88, &qword_1E429B000);
    OUTLINED_FUNCTION_15_5();
    v90(v79, v127);
    [objc_opt_self() beginDiscoveringMediaLibraries];
    v91 = [objc_opt_self() defaultCenter];
    OUTLINED_FUNCTION_58_22(v91, v92, v93, sel_handleHomeSharingUpdates, *MEMORY[0x1E696FBA0]);

    v94 = OUTLINED_FUNCTION_116_4();
    OUTLINED_FUNCTION_58_22(v94, v95, v96, sel_appWillEnterForeground, *MEMORY[0x1E69DDBC0]);

    v97 = OUTLINED_FUNCTION_116_4();
    OUTLINED_FUNCTION_58_22(v97, v98, v99, sel_appDidEnterBackground, *MEMORY[0x1E69DDAC8]);

    v100 = OUTLINED_FUNCTION_116_4();
    v101 = *MEMORY[0x1E696F8B8];
    v102 = [objc_opt_self() sharedCloudController];
    v103 = [objc_opt_self() mainQueue];
    OUTLINED_FUNCTION_4_0();
    v104 = swift_allocObject();
    swift_weakInit();
    v143 = sub_1E3B8B48C;
    v144 = v104;
    aBlock = MEMORY[0x1E69E9820];
    v140 = 1107296256;
    v141 = sub_1E3A5EE04;
    v142 = &block_descriptor_115;
    v105 = _Block_copy(&aBlock);

    v106 = [v100 addObserverForName:v101 object:v102 queue:v103 usingBlock:v105];
    _Block_release(v105);

    swift_unknownObjectRelease();
    v107 = OUTLINED_FUNCTION_116_4();
    [v107 addObserver:v0 selector:sel_handleAccountChanges name:*NSNotificationName.VUIAuthenticationManagerAccountStoreDidChange.unsafeMutableAddressor() object:0];

    v108 = OUTLINED_FUNCTION_116_4();
    if (TVAppFeature.isEnabled.getter(12, v109, v110))
    {
      v111 = sub_1E4206AC4();
    }

    else
    {
      v111 = *MEMORY[0x1E69DF878];
    }

    v112 = v111;
    v113 = OUTLINED_FUNCTION_135_1();
    [v113 v114];

    v115 = [objc_opt_self() sharedInstance];
    v116 = [v115 launchConfig];

    LODWORD(v115) = [v116 checkRemoteServerReachability];
    if (v115)
    {
      v117 = OUTLINED_FUNCTION_116_4();
      NSNotification.remoteNetworkReachabilityDidChange.unsafeMutableAddressor();
      v118 = OUTLINED_FUNCTION_135_1();
      [v118 v119];
    }

    v120 = OUTLINED_FUNCTION_116_4();
    OUTLINED_FUNCTION_58_22(v120, v121, v122, sel_isLibraryOnlyCountryChanged_, @"VUIAuthenticationManagerIsLibraryOnlyCountryDidChangeNotification");

    sub_1E3280A90(0, &qword_1EE23AF38, 0x1E696ABB0);
    v123 = [swift_getObjCClassFromMetadata() defaultCenter];
    OUTLINED_FUNCTION_58_22(v123, v124, v125, sel_handleFamilyChange, *MEMORY[0x1E699C038]);

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1E3B7E03C()
{
  result = [v0 isJaliscoInitialImport];
  if (result)
  {
    return [v0 isJaliscoUpdateInProgress];
  }

  return result;
}

uint64_t sub_1E3B7E074(char a1)
{
  OUTLINED_FUNCTION_8();
  result = (*(v2 + 848))();
  if (result)
  {
    OUTLINED_FUNCTION_8();
    v5 = (*(v4 + 216))() & 1;
    result = a1 & 1;
    if (v5 != result)
    {

      return sub_1E3B7B420();
    }
  }

  return result;
}

void sub_1E3B7E10C()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_156_0();
  v33 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v32 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v5 - v4);
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v6 = *(*v1 + 672);
  v7 = v6();
  v8 = 0;
  v9 = *(v7 + 16);
  for (i = v7 + 32; ; i += 40)
  {
    if (v9 == v8)
    {

      v15 = (v6)(v14);
      sub_1E37D9AD0(v15, &v38);

      sub_1E325F7A8(&v41, &unk_1ECF2A740, &qword_1E42EF010);
      v41 = v38;
      v42 = v39;
      v43 = v40;
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_94_9();
    if (v11)
    {
      __break(1u);
      return;
    }

    sub_1E327F454(i, &v36);
    sub_1E327F454(&v36, v35);
    v12 = OUTLINED_FUNCTION_146();
    __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
    type metadata accessor for LibLocalSource();
    if (swift_dynamicCast())
    {
      break;
    }

    ++v8;
    __swift_destroy_boxed_opaque_existential_1(&v36);
  }

  sub_1E37DADF4(&v36, &v38);
  sub_1E325F7A8(&v41, &unk_1ECF2A740, &qword_1E42EF010);
  sub_1E37DADF4(&v38, &v41);
LABEL_8:
  sub_1E3B891D8(&v41, &v36);
  if (v37)
  {
    sub_1E37DADF4(&v36, &v38);
    OUTLINED_FUNCTION_111();
    if ((*(v16 + 848))() & 1) != 0 && (*(v0 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_isMPLibraryUpdateInProgress))
    {
      v17 = sub_1E324FBDC();
      (*(v32 + 16))(v31, v17, v33);
      v18 = sub_1E41FFC94();
      v19 = sub_1E4206814();
      if (OUTLINED_FUNCTION_104(v19))
      {
        v20 = OUTLINED_FUNCTION_125_0();
        *v20 = 0;
        _os_log_impl(&dword_1E323F000, v18, v19, "LibDataSourceManager:: not fetching menu items since it's still loading", v20, 2u);
        OUTLINED_FUNCTION_21_0();
      }

      OUTLINED_FUNCTION_15_5();
      v21(v31, v33);
    }

    else
    {
      sub_1E3B7BA30(0);
      sub_1E327F454(&v38, &v36);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640, &qword_1E429E310);
      OUTLINED_FUNCTION_106();
      v22 = type metadata accessor for LibLocalSource();
      if (OUTLINED_FUNCTION_90_0(v35, &v36, v23, v22))
      {
        v24 = v35[0];
        OUTLINED_FUNCTION_21();
        (*(v25 + 216))();
      }

      v26 = *(&v39 + 1);
      v27 = v40;
      __swift_project_boxed_opaque_existential_1(&v38, *(&v39 + 1));
      OUTLINED_FUNCTION_4_0();
      v28 = swift_allocObject();
      swift_weakInit();
      sub_1E327F454(&v38, &v36);
      v29 = swift_allocObject();
      sub_1E37DADF4(&v36, v29 + 16);
      *(v29 + 56) = v28;
      v30 = *(v27 + 104);

      v30(sub_1E3B8B350, v29, v26, v27);
    }

    sub_1E3B848AC();
    sub_1E325F7A8(&v41, &unk_1ECF2A740, &qword_1E42EF010);
    __swift_destroy_boxed_opaque_existential_1(&v38);
  }

  else
  {
    sub_1E325F7A8(&v41, &unk_1ECF2A740, &qword_1E42EF010);
    sub_1E325F7A8(&v36, &unk_1ECF2A740, &qword_1E42EF010);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B7E5C0()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_needsFamilyFetch) = 0;
  v1 = objc_opt_self();
  v8 = sub_1E3B8B18C;
  v9 = v0;
  v4 = MEMORY[0x1E69E9820];
  v5 = 1107296256;
  OUTLINED_FUNCTION_14_1();
  v6 = v2;
  v7 = &block_descriptor_64;
  v3 = _Block_copy(&v4);

  [v1 checkGDPRConsentAndPerformRequests_];
  _Block_release(v3);
}

uint64_t sub_1E3B7E690()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  sub_1E3280A90(0, &qword_1EE23AF38, 0x1E696ABB0);
  v2 = [swift_getObjCClassFromMetadata() defaultCenter];
  [v2 removeObserver_];

  v3 = OBJC_IVAR____TtC8VideosUI20LibDataSourceManager__isLoading;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v6 = OUTLINED_FUNCTION_60_4(OBJC_IVAR____TtC8VideosUI20LibDataSourceManager__showHomeSharingLibraryUnavailableAlert);
  (v5)(v6);
  v7 = OUTLINED_FUNCTION_60_4(OBJC_IVAR____TtC8VideosUI20LibDataSourceManager__isOffline);
  (v5)(v7);
  v8 = OUTLINED_FUNCTION_60_4(OBJC_IVAR____TtC8VideosUI20LibDataSourceManager__hasExecutedMenuFetchOnce);
  (v5)(v8);
  v9 = OBJC_IVAR____TtC8VideosUI20LibDataSourceManager__selectedMenuItem;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34180, &qword_1E42BEEF8);
  OUTLINED_FUNCTION_10();
  (*(v10 + 8))(v0 + v9);
  v11 = OBJC_IVAR____TtC8VideosUI20LibDataSourceManager__resolvedMenuItems;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C68, &unk_1E42BD100);
  OUTLINED_FUNCTION_10();
  (*(v12 + 8))(v0 + v11);
  v13 = OUTLINED_FUNCTION_60_4(OBJC_IVAR____TtC8VideosUI20LibDataSourceManager__isLibraryOnlyCountry);
  (v5)(v13);
  v14 = OUTLINED_FUNCTION_60_4(OBJC_IVAR____TtC8VideosUI20LibDataSourceManager__isLibraryOnlyMode);
  (v5)(v14);
  v15 = *(v0 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_adamIDToCanonicalIDMap + 8);

  return v0;
}

uint64_t sub_1E3B7E8E0()
{
  sub_1E3B7E690();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1E3B7E938()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v64 = v3;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v5 = (*(*v0 + 672))();
  v6 = 0;
  v7 = *(v5 + 16);
  v8 = &v2[OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier];
  for (i = v5 + 32; ; i += 40)
  {
    if (v7 == v6)
    {

      v72 = 0;
      v70 = 0u;
      v71 = 0u;
      goto LABEL_13;
    }

    if (v6 >= *(v5 + 16))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      return;
    }

    sub_1E327F454(i, &v67);
    v10 = *(&v68 + 1);
    v11 = v69;
    __swift_project_boxed_opaque_existential_1(&v67, *(&v68 + 1));
    OUTLINED_FUNCTION_33();
    if (v12(v10, v11) == *v8 && v13 == *(v8 + 1))
    {
      break;
    }

    v15 = sub_1E42079A4();

    if (v15)
    {
      goto LABEL_12;
    }

    __swift_destroy_boxed_opaque_existential_1(&v67);
    ++v6;
  }

LABEL_12:

  v16 = OUTLINED_FUNCTION_48_10();
  sub_1E37DADF4(v16, v17);
LABEL_13:
  v18 = OUTLINED_FUNCTION_127_6();
  sub_1E3B891D8(v18, v19);
  v20 = *(&v68 + 1);
  sub_1E325F7A8(&v67, &unk_1ECF2A740, &qword_1E42EF010);
  if (!v20 && (sub_1E38BBD0C(v2[32], 10, v21) & 1) != 0)
  {
    OUTLINED_FUNCTION_30_1();
    v24 = (*(v22 + 696))(v23);
    v25 = 0;
    v26 = *(v24 + 16);
    for (j = v24 + 32; ; j += 40)
    {
      if (v26 == v25)
      {

        v69 = 0;
        v67 = 0u;
        v68 = 0u;
        goto LABEL_22;
      }

      if (v25 >= *(v24 + 16))
      {
        goto LABEL_31;
      }

      sub_1E327F454(j, v65);
      sub_1E327F454(v65, &v67);
      v28 = OUTLINED_FUNCTION_39_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
      v30 = type metadata accessor for LibLocalSource();
      if (OUTLINED_FUNCTION_125_4(&v66, v31, v32, v30))
      {
        break;
      }

      ++v25;
      __swift_destroy_boxed_opaque_existential_1(v65);
    }

    sub_1E37DADF4(v65, &v67);
LABEL_22:
    v33 = OUTLINED_FUNCTION_48_10();
    sub_1E3B89248(v33, v34);
  }

  sub_1E41A3110();
  v35 = OUTLINED_FUNCTION_78_11();
  v36(v35);

  v37 = sub_1E41FFC94();
  v38 = sub_1E4206814();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = OUTLINED_FUNCTION_49_0();
    v40 = OUTLINED_FUNCTION_72_0();
    v66 = v40;
    *v39 = 136315394;
    v41 = (*(*v2 + 432))(v40);
    v43 = v42;
    v44 = sub_1E3270FC8(v41, v42, &v66);

    *(v39 + 4) = v44;
    *(v39 + 12) = 2080;
    OUTLINED_FUNCTION_5_0(&v70, v65);
    v45 = *(&v71 + 1);
    if (*(&v71 + 1))
    {
      v46 = v72;
      v47 = __swift_project_boxed_opaque_existential_1(&v70, *(&v71 + 1));
      v48 = *(v45 - 8);
      MEMORY[0x1EEE9AC00](v47);
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_42_1();
      v49 = OUTLINED_FUNCTION_101();
      v50(v49);
      v51 = (*(v46 + 24))(v45, v46);
      v53 = v52;
      (*(v48 + 8))(v43, v45);
    }

    else
    {
      v51 = 0;
      v53 = 0;
    }

    *&v67 = v51;
    *(&v67 + 1) = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960, &unk_1E4298000);
    v56 = sub_1E4205F84();
    sub_1E3270FC8(v56, v57, &v66);
    OUTLINED_FUNCTION_50();

    *(v39 + 14) = v43;
    OUTLINED_FUNCTION_156_5(&dword_1E323F000, v58, v59, "LibDataSourceManager:: menu %s in source %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_55();

    v60 = OUTLINED_FUNCTION_34();
    v61(v60);
  }

  else
  {

    v54 = OUTLINED_FUNCTION_34();
    v55(v54);
  }

  v62 = OUTLINED_FUNCTION_127_6();
  OUTLINED_FUNCTION_5_0(v62, v63);
  sub_1E3B891D8(&v70, v64);
  sub_1E325F7A8(&v70, &unk_1ECF2A740, &qword_1E42EF010);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B7EEDC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  OUTLINED_FUNCTION_8();
  v3 = (*(v2 + 672))();
  v4 = 0;
  v5 = *(v3 + 16);
  v29 = (v1 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier);
  v6 = v3 + 32;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v5 == v4)
    {

      OUTLINED_FUNCTION_25_2();
      return;
    }

    if (v4 >= *(v3 + 16))
    {
      break;
    }

    sub_1E327F454(v6, &v34);
    sub_1E327F454(&v34, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640, &qword_1E429E310);
    v8 = OUTLINED_FUNCTION_106();
    v9 = type metadata accessor for LibFamilySharingSource(v8);
    if (!OUTLINED_FUNCTION_90_0(&v30, v31, v10, v9))
    {
      goto LABEL_10;
    }

    __swift_project_boxed_opaque_existential_1(&v34, v35);
    OUTLINED_FUNCTION_33();
    v11 = OUTLINED_FUNCTION_39_0();
    if (v12(v11) == *v29 && v13 == v29[1])
    {
    }

    else
    {
      v15 = sub_1E42079A4();

      if ((v15 & 1) == 0)
      {
LABEL_10:
        __swift_destroy_boxed_opaque_existential_1(&v34);
        goto LABEL_17;
      }
    }

    sub_1E37DADF4(&v34, v31);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1E3B72E58(0, *(v7 + 16) + 1, 1);
      v7 = v36;
    }

    v18 = *(v7 + 16);
    v17 = *(v7 + 24);
    if (v18 >= v17 >> 1)
    {
      v28 = OUTLINED_FUNCTION_35(v17);
      sub_1E3B72E58(v28, v18 + 1, 1);
    }

    v19 = v32;
    v20 = v33;
    v21 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
    MEMORY[0x1EEE9AC00](v21);
    OUTLINED_FUNCTION_5();
    (*(v24 + 16))(v23 - v22);
    v25 = OUTLINED_FUNCTION_39_0();
    sub_1E3B8AB08(v25, v26, v27, v19, v20);
    __swift_destroy_boxed_opaque_existential_1(v31);
    v7 = v36;
LABEL_17:
    v6 += 40;
    ++v4;
  }

  __break(1u);
}

uint64_t sub_1E3B7F194(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  v4 = result + 32;
  v5 = MEMORY[0x1E69E7CC0];
  v22 = v3;
  while (1)
  {
    if (v3 == v2)
    {

      return v5;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    sub_1E327F454(v4, &v26);
    v6 = v27;
    v7 = v28;
    __swift_project_boxed_opaque_existential_1(&v26, v27);
    v8 = (*(v7 + 16))(v6, v7);
    v10 = sub_1E3277398(&v23, v8, v9);

    if (v10)
    {
      sub_1E37DADF4(&v26, &v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1E3B72E58(0, *(v5 + 16) + 1, 1);
        v5 = v29;
      }

      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1E3B72E58((v12 > 1), v13 + 1, 1);
      }

      v14 = v24;
      v15 = v25;
      v16 = __swift_mutable_project_boxed_opaque_existential_1(&v23, v24);
      v17 = MEMORY[0x1EEE9AC00](v16);
      v19 = &v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v20 + 16))(v19, v17);
      sub_1E3B8AB08(v13, v19, &v29, v14, v15);
      result = __swift_destroy_boxed_opaque_existential_1(&v23);
      v5 = v29;
      v3 = v22;
    }

    else
    {
      result = __swift_destroy_boxed_opaque_existential_1(&v26);
    }

    v4 += 40;
    ++v2;
  }

  __break(1u);
  return result;
}

void sub_1E3B7F3D0(unint64_t a1, unint64_t *a2)
{
  v3 = 0;
  v16 = a1 & 0xC000000000000001;
  v17 = sub_1E32AE9B0(a1);
  v15 = a1 & 0xFFFFFFFFFFFFFF8;
  v12 = a1;
  v13 = a1 + 32;
LABEL_2:
  if (v3 == v17)
  {

    return;
  }

  if (v16)
  {
    v4 = MEMORY[0x1E6911E60](v3, v12);
  }

  else
  {
    if (v3 >= *(v15 + 16))
    {
      goto LABEL_31;
    }

    v4 = *(v13 + 8 * v3);
  }

  if (__OFADD__(v3++, 1))
  {
    goto LABEL_30;
  }

  v6 = *a2;
  v7 = sub_1E32AE9B0(*a2);

  v8 = 0;
  while (1)
  {
    if (v7 == v8)
    {

      if (!v18)
      {
        sub_1E4207544();
        sub_1E4207584();
        sub_1E4207594();
        sub_1E4207554();
        goto LABEL_2;
      }

      goto LABEL_27;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1E6911E60](v8, v6);
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v9 = *(v6 + 8 * v8 + 32);
    }

    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (*(v9 + 72) == *(v4 + 72) && *(v9 + 80) == *(v4 + 80))
    {

LABEL_23:

      if (!v18)
      {

        goto LABEL_2;
      }

LABEL_27:

      return;
    }

    v11 = sub_1E42079A4();

    ++v8;
    if (v11)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_1E3B7F5DC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_8();
  v5 = (*(v4 + 456))();
  v6 = sub_1E32AE9B0(v5);
  v7 = 0;
  v8 = v5 & 0xC000000000000001;
  v9 = v5 & 0xFFFFFFFFFFFFFF8;
  v26 = v6;
  v27 = v5;
  v10 = v5 + 32;
  v24 = v9;
  v25 = v8;
  v23 = v10;
  while (1)
  {
LABEL_2:
    if (v7 == v6)
    {
LABEL_30:

      return;
    }

    if (v8)
    {
      v11 = MEMORY[0x1E6911E60](v7, v27);
    }

    else
    {
      if (v7 >= *(v9 + 16))
      {
        goto LABEL_33;
      }

      v11 = *(v10 + 8 * v7);
    }

    if (__OFADD__(v7++, 1))
    {
      break;
    }

    v13 = *(v11 + 16);
    v14 = v13 == a1 && *(v11 + 24) == a2;
    if (v14 || (OUTLINED_FUNCTION_167_3(v13) & 1) != 0)
    {
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_8();
    v16 = (*(v15 + 288))();
    if (v16)
    {
      v17 = v16;
      v18 = sub_1E32AE9B0(v16);
      for (i = 0; ; ++i)
      {
        if (v18 == i)
        {

          v8 = v25;
          v6 = v26;
          v10 = v23;
          v9 = v24;
          goto LABEL_2;
        }

        if ((v17 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x1E6911E60](i, v17);
        }

        else
        {
          if (i >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v20 = *(v17 + 8 * i + 32);
        }

        if (__OFADD__(i, 1))
        {
          break;
        }

        v21 = *(v20 + 16);
        v22 = v21 == a1 && *(v20 + 24) == a2;
        if (v22 || (OUTLINED_FUNCTION_167_3(v21) & 1) != 0)
        {

          return;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      break;
    }
  }

  __break(1u);
}

double sub_1E3B7F7FC(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (!a2)
  {
    goto LABEL_17;
  }

  v4 = v3;
  OUTLINED_FUNCTION_8();
  v7 += 51;
  v8 = *v7;
  v9 = (*v7)();
  if (v9)
  {
    v11 = *(v9 + 16);
    v10 = *(v9 + 24);

    if (v11 == a1 && v10 == a2)
    {
      OUTLINED_FUNCTION_154_3();

      return result;
    }

    OUTLINED_FUNCTION_16_0();
    v13 = sub_1E42079A4();

    if (v13)
    {
LABEL_17:
      OUTLINED_FUNCTION_154_3();
      return result;
    }
  }

  OUTLINED_FUNCTION_47_0();
  v15 = (*(v14 + 456))();
  sub_1E32AE9B0(v15);
  OUTLINED_FUNCTION_50();

  if (!v4)
  {
    OUTLINED_FUNCTION_47_0();
    OUTLINED_FUNCTION_154_3();

    __asm { BRAA            X1, X16 }
  }

  v17 = (v8)(v16);
  OUTLINED_FUNCTION_47_0();
  v19 = (*(v18 + 824))(a1, a2);
  v20 = (*(*v4 + 416))(v19);
  if (v17)
  {
    OUTLINED_FUNCTION_111();
    v22 = *(v21 + 448);

    v22(v23);
  }

  v24 = (v8)(v20);
  if (v24)
  {
    OUTLINED_FUNCTION_26_0();
    (*(v25 + 440))();
  }

  v26 = (v8)(v24);
  if (v26)
  {
    v28 = *(v26 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier);
    v27 = *(v26 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier + 8);
    v44 = v28;
    v45 = v27;

    v29 = OUTLINED_FUNCTION_24_4();
    MEMORY[0x1E69109E0](v29);
    v31 = v44;
    v30 = v45;
    v32 = (v4 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_menuDataCache);
    OUTLINED_FUNCTION_5_0(v4 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_menuDataCache, &v44);
    v33 = *v32;
    v34 = v32[1];
    v42[0] = v31;
    v42[1] = v30;
    v35 = type metadata accessor for LibMenuItem(0);

    sub_1E3CA4D00(v42, v33, v34, MEMORY[0x1E69E6158], v35, MEMORY[0x1E69E6168]);

    if (v43[0])
    {

      v43[0] = v31;
      v43[1] = v30;
      OUTLINED_FUNCTION_11_3(v32, v42);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF341D0, &qword_1E42BF0D8);
      sub_1E3CA4F4C(v43, v36);
      swift_endAccess();
    }

    goto LABEL_17;
  }

  OUTLINED_FUNCTION_154_3();

  return result;
}

void sub_1E3B7FBC0()
{
  OUTLINED_FUNCTION_31_1();
  v81 = v1;
  OUTLINED_FUNCTION_9_5();
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = [objc_opt_self() sharedInstance];
  v10 = [v9 libConfig];

  v11 = [v10 collectionItemLimit];
  v12 = *(v0 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier + 8);
  v13 = v0[9];
  v14 = v0[10];
  v83 = *(v0 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier);
  v84 = v12;

  v74 = v14;
  v75 = v13;
  MEMORY[0x1E69109E0](v13, v14);
  v16 = v83;
  v15 = v84;
  v80 = v11;
  v77 = v4;
  v78 = v2;
  v76 = v8;
  if (v11 < 1)
  {
LABEL_51:
    v59 = sub_1E41A3110();
    (*(v4 + 16))(v8, v59, v2);

    v60 = sub_1E41FFC94();
    v61 = sub_1E4206814();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = v16;
      v63 = OUTLINED_FUNCTION_49_0();
      v87 = OUTLINED_FUNCTION_72_0();
      *v63 = 136315394;
      *(v63 + 4) = sub_1E3270FC8(v75, v74, &v87);
      *(v63 + 12) = 2080;
      v64 = (*(*v0 + 312))();
      if (v64)
      {
        v65 = sub_1E32AE9B0(v64);

        v66 = MEMORY[0x1E69E6530];
      }

      else
      {
        v65 = 0;
        v66 = 0;
        v84 = 0;
        v85 = 0;
      }

      v83 = v65;
      v86 = v66;
      v67 = sub_1E3294FA4(&v83);
      sub_1E3270FC8(v67, v68, &v87);
      OUTLINED_FUNCTION_50();

      *(v63 + 14) = v65;
      _os_log_impl(&dword_1E323F000, v60, v61, "LibDataSourceManager:: cache %s count %s", v63, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v77 + 8))(v76, v78);
      v16 = v62;
    }

    else
    {

      (*(v4 + 8))(v8, v2);
    }

    v88 = v15;
    v89 = v0;
    v87 = v16;
    OUTLINED_FUNCTION_11_3(v81 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_menuDataCache, &v83);

    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF341D0, &qword_1E42BF0D8);
    sub_1E3CA4D10();
    v87 = v16;
    v88 = v15;
    sub_1E3CA4F4C(&v87, v69);
    swift_endAccess();

    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    v17 = v81 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_menuDataCache;
    OUTLINED_FUNCTION_5_0(v81 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_menuDataCache, &v82);
    v18 = *v17;
    v19 = *(v17 + 8);
    v83 = v16;
    v84 = v15;
    v20 = type metadata accessor for LibMenuItem(0);

    sub_1E3CA4D00(&v83, v18, v19, MEMORY[0x1E69E6158], v20, MEMORY[0x1E69E6168]);

    v72 = v15;
    v71 = v16;
    if (v87)
    {

      v88 = v15;
      v89 = 0;
      v87 = v16;
      OUTLINED_FUNCTION_11_3(v17, &v83);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF341D0, &qword_1E42BF0D8);
      sub_1E3CA4D10();
      swift_endAccess();
    }

    OUTLINED_FUNCTION_111();
    v73 = v0;
    v79 = (*(v21 + 224))();

    v22 = OUTLINED_FUNCTION_97_1();
    v70 = v20;
    v26 = sub_1E3CA4CF0(v22, v23, v24, v20, v25);

    v27 = 1 << *(v26 + 32);
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    v29 = v28 & *(v26 + 64);
    v30 = (v27 + 63) >> 6;

    v31 = 0;
    v32 = 0;
    do
    {
      if (!v29)
      {
        while (1)
        {
          v33 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            break;
          }

          if (v33 >= v30)
          {
            goto LABEL_15;
          }

          v29 = *(v26 + 64 + 8 * v33);
          ++v31;
          if (v29)
          {
            v31 = v33;
            goto LABEL_12;
          }
        }

LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

LABEL_12:
      v29 &= v29 - 1;
      OUTLINED_FUNCTION_8();
      v35 = *(v34 + 224);

      v37 = v35(v36);

      v38 = __OFADD__(v32, v37);
      v32 += v37;
    }

    while (!v38);
    __break(1u);
LABEL_15:

    v39 = v32 + v79;
    if (!__OFADD__(v32, v79))
    {
      v15 = v72;
      v4 = v77;
      v2 = v78;
      v8 = v76;
      v16 = v71;
      if (v80 >= v39)
      {
        goto LABEL_51;
      }

      v40 = OUTLINED_FUNCTION_39_3();
      v44 = sub_1E3CA4CF0(v40, v41, v42, v70, v43);

      v83 = sub_1E3B892B8(v44);
      sub_1E3B89374(&v83, v0);

      v17 = v83;
      v45 = sub_1E32AE9B0(v83);
      v46 = v17 & 0xC000000000000001;

      v47 = 0;
      v48 = 0;
      while (v45 != v47)
      {
        if (v46)
        {
          MEMORY[0x1E6911E60](v47, v17);
        }

        else
        {
          if (v47 >= *(v17 + 16))
          {
            goto LABEL_63;
          }
        }

        if (__OFADD__(v47, 1))
        {
          goto LABEL_62;
        }

        OUTLINED_FUNCTION_8();
        v50 = (*(v49 + 224))();

        ++v47;
        v38 = __OFADD__(v48, v50);
        v48 += v50;
        if (v38)
        {
          goto LABEL_64;
        }
      }

LABEL_49:
      v58 = sub_1E32AE9B0(v17);

      if (!v58)
      {
        goto LABEL_50;
      }

      if (!__OFADD__(v48, v79))
      {
        if (v80 >= v48 + v79)
        {
LABEL_50:

          v15 = v72;
          v0 = v73;
          v4 = v77;
          v2 = v78;
          v8 = v76;
          v16 = v71;
          goto LABEL_51;
        }

        if (sub_1E32AE9B0(v17))
        {
          if (sub_1E32AE9B0(v17))
          {
            if ((v17 & 0xC000000000000001) == 0)
            {
              if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v51 = *(v17 + 32);

                goto LABEL_34;
              }

LABEL_68:
              __break(1u);
LABEL_69:
              __break(1u);
              goto LABEL_70;
            }

            v51 = MEMORY[0x1E6911E60](0, v17);
LABEL_34:
            if (sub_1E32AE9B0(v17))
            {
              if (sub_1E32AE9B0(v17) < 1)
              {
                goto LABEL_69;
              }

              v52 = sub_1E32AE9B0(v17);
              v38 = __OFSUB__(v52, 1);
              v53 = v52 - 1;
              if (!v38)
              {
                sub_1E3797CDC(v53, 1);
                sub_1E3AD8CE8(0, 1, 0);
                v17 = v83;
                sub_1E3B846CC(v51);
                v54 = sub_1E32AE9B0(v17);

                v55 = 0;
                v48 = 0;
                while (1)
                {
                  if (v54 == v55)
                  {

                    goto LABEL_49;
                  }

                  if ((v17 & 0xC000000000000001) != 0)
                  {
                    v57 = OUTLINED_FUNCTION_8_6();
                    MEMORY[0x1E6911E60](v57);
                  }

                  else
                  {
                    if (v55 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_59;
                    }
                  }

                  if (__OFADD__(v55, 1))
                  {
                    break;
                  }

                  OUTLINED_FUNCTION_8();
                  (*(v56 + 224))();
                  OUTLINED_FUNCTION_12_1();

                  ++v55;
                  v38 = __OFADD__(v48, v46);
                  v48 += v46;
                  if (v38)
                  {
                    goto LABEL_60;
                  }
                }

                __break(1u);
LABEL_59:
                __break(1u);
LABEL_60:
                __break(1u);
                goto LABEL_61;
              }

LABEL_70:
              __break(1u);
            }

            __break(1u);
            goto LABEL_72;
          }

LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

LABEL_72:
    __break(1u);

    __break(1u);
  }
}

void sub_1E3B804B0()
{
  OUTLINED_FUNCTION_8();
  (*(v4 + 672))();
  OUTLINED_FUNCTION_148_5();
  while (1)
  {
    if (v3 == v2)
    {

      return;
    }

    if (v2 >= *(v0 + 16))
    {
      break;
    }

    v5 = sub_1E327F454(v1, v34);
    v13 = OUTLINED_FUNCTION_136_2(v5, v6, v7, v8, v9, v10, v11, v12, v25, v27, v29, v30, v31, v32, v33, v34[0]);
    sub_1E37DADF4(v13, v14);
    v15 = OUTLINED_FUNCTION_34();
    __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
    OUTLINED_FUNCTION_11_14();
    v17 = type metadata accessor for LibLocalSource();
    OUTLINED_FUNCTION_34_40(v17, v18, v19, v20, v21, v22, v23, v24, v26, v28);
    if (swift_dynamicCast())
    {

      return;
    }

    ++v2;
    v1 += 40;
  }

  __break(1u);
}

void sub_1E3B805A8(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v5 = sub_1E32AE9B0(a3);
  v6 = 0;
  while (1)
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1E6911E60](v6, a3);
    }

    else
    {
      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(a3 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v12 = v8;
    v10 = a1(&v12);

    if (!v3)
    {
      v6 = v7 + 1;
      if ((v10 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

uint64_t sub_1E3B8069C(uint64_t a1)
{
  OUTLINED_FUNCTION_8();
  result = (*(v2 + 672))();
  v4 = result;
  v5 = 0;
  v6 = *(result + 16);
  for (i = result + 32; ; i += 40)
  {
    if (v6 == v5)
    {
    }

    if (v5 >= *(v4 + 16))
    {
      break;
    }

    sub_1E327F454(i, &v44);
    sub_1E327F454(&v44, v42);
    v8 = OUTLINED_FUNCTION_24_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
    v10 = type metadata accessor for LibLocalSource();
    OUTLINED_FUNCTION_86(v10, v11, v12, v13, v14, v15, v16, v17, v41);
    if (swift_dynamicCast())
    {

      v18 = sub_1E37DADF4(&v44, v43);
      v26 = OUTLINED_FUNCTION_131_7(v18, v19, v20, v21, v22, v23, v24, v25, v41, v42[0], v42[1], v42[2], v42[3], v42[4], v43[0]);
      sub_1E37DADF4(v26, v27);
      v28 = *(a1 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier);
      v29 = *(a1 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier + 8);
      __swift_project_boxed_opaque_existential_1(&v44, v45);
      OUTLINED_FUNCTION_33();
      v30 = OUTLINED_FUNCTION_146();
      if (v28 == v31(v30) && v29 == v32)
      {
      }

      else
      {
        OUTLINED_FUNCTION_75();
        v34 = sub_1E42079A4();

        if ((v34 & 1) == 0)
        {
          return __swift_destroy_boxed_opaque_existential_1(&v44);
        }
      }

      OUTLINED_FUNCTION_111();
      v36 = (*(v35 + 408))();
      if (!v36 || (v43[0] = v36, v42[0] = a1, type metadata accessor for LibMenuItem(0), sub_1E3B8B148(&qword_1EE286128, type metadata accessor for LibMenuItem), v37 = sub_1E4205E84(), , (v37 & 1) == 0))
      {
        OUTLINED_FUNCTION_111();
        v39 = *(v38 + 416);

        v39(v40);
      }

      return __swift_destroy_boxed_opaque_existential_1(&v44);
    }

    ++v5;
    result = __swift_destroy_boxed_opaque_existential_1(&v44);
  }

  __break(1u);
  return result;
}

void sub_1E3B80920()
{
  OUTLINED_FUNCTION_8();
  (*(v3 + 672))();
  OUTLINED_FUNCTION_29_48();
  for (i = v4 + 32; ; i += 40)
  {
    if (v2 == v1)
    {

      return;
    }

    OUTLINED_FUNCTION_96_9();
    if (v6)
    {
      __break(1u);
      return;
    }

    sub_1E327F454(i, v37);
    sub_1E327F454(v37, &v32);
    v7 = OUTLINED_FUNCTION_34();
    __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    OUTLINED_FUNCTION_11_14();
    type metadata accessor for LibLocalSource();
    if (OUTLINED_FUNCTION_84_10(&v31, &v32, v0))
    {
      break;
    }

    ++v1;
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  v17 = OUTLINED_FUNCTION_131_7(v9, v10, v11, v12, v13, v14, v15, v16, v31, v32, v33, v34, v35, v36, v37[0]);
  v19 = sub_1E37DADF4(v17, v18);
  v27 = OUTLINED_FUNCTION_131_7(v19, v20, v21, v22, v23, v24, v25, v26, v31, v32, v33, v34, v35, v36, v37[0]);
  if (OUTLINED_FUNCTION_84_10(v27, v28, v0))
  {
    v29 = *v37;
    OUTLINED_FUNCTION_21();
    (*(v30 + 664))();
  }
}

uint64_t sub_1E3B80A8C()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 672))();
  sub_1E37D9AD0(v1, &v7);

  if (v8)
  {
    sub_1E37DADF4(&v7, v9);
    v2 = v9[4];
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    v3 = OUTLINED_FUNCTION_50();
    v5 = v4(v3, v2);
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    sub_1E325F7A8(&v7, &unk_1ECF2A740, &qword_1E42EF010);
    v5 = 0;
  }

  return v5 & 1;
}

void sub_1E3B80B64()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v9 = sub_1E41A3110();
  (*(v7 + 16))(v1, v9, v5);
  sub_1E327F454(v4, v42);
  sub_1E327F454(v4, v41);
  v10 = sub_1E41FFC94();
  v11 = sub_1E4206814();
  if (os_log_type_enabled(v10, v11))
  {
    v40 = v5;
    v12 = OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_72_0();
    *v12 = 136315394;
    v14 = v43;
    v13 = v44;
    __swift_project_boxed_opaque_existential_1(v42, v43);
    OUTLINED_FUNCTION_33();
    v16 = v15(v14, v13);
    __swift_destroy_boxed_opaque_existential_1(v42);
    v17 = OUTLINED_FUNCTION_146_0();
    sub_1E3270FC8(v17, v18, v19);
    OUTLINED_FUNCTION_10_23();

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v20 = v41[4];
    __swift_project_boxed_opaque_existential_1(v41, v41[3]);
    v21 = OUTLINED_FUNCTION_10_23();
    v23 = v22(v21, v20);
    __swift_destroy_boxed_opaque_existential_1(v41);
    v24 = OUTLINED_FUNCTION_146_0();
    sub_1E3270FC8(v24, v25, v26);
    OUTLINED_FUNCTION_10_23();

    *(v12 + 14) = v23;
    OUTLINED_FUNCTION_156_5(&dword_1E323F000, v27, v28, "LibDataSourceManager:: did select source %s # name %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_55();

    (*(v7 + 8))(v1, v40);
  }

  else
  {

    (*(v7 + 8))(v1, v5);
    __swift_destroy_boxed_opaque_existential_1(v42);
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF340B8, &unk_1E42BE938);
  v30 = OUTLINED_FUNCTION_26_11(v29);
  *(v30 + 16) = xmmword_1E4297BE0;
  sub_1E327F454(v4, v30 + 32);
  v31 = OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_activeSources;
  OUTLINED_FUNCTION_3_0(v2 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_activeSources, v42);
  *(v2 + v31) = v30;

  sub_1E3B7CC30();
  v32 = OUTLINED_FUNCTION_34();
  __swift_project_boxed_opaque_existential_1(v32, v33);
  v34 = OUTLINED_FUNCTION_75();
  v35(v34);
  sub_1E3B80F1C();

  OUTLINED_FUNCTION_9_2();
  v37 = (*(v36 + 456))();
  if (!sub_1E32AE9B0(v37))
  {

    v38 = 0;
    goto LABEL_10;
  }

  if ((v37 & 0xC000000000000001) != 0)
  {
    v38 = MEMORY[0x1E6911E60](0, v37);
    goto LABEL_8;
  }

  if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v38 = *(v37 + 32);

LABEL_8:

LABEL_10:
    OUTLINED_FUNCTION_111();
    (*(v39 + 416))(v38);
    sub_1E3B7E10C();
    OUTLINED_FUNCTION_25_2();
    return;
  }

  __break(1u);
}

void sub_1E3B80F1C()
{
  OUTLINED_FUNCTION_31_1();
  v6 = v5;
  v8 = v7;
  v325 = 0;
  v330 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v327 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_17_3(&v318 - v12);
  v338 = MEMORY[0x1E69E7CC0];
  v13 = *(v0->Kind + 456);
  v328 = v0->Kind + 456;
  v326 = v13;
  v14 = v13();
  v15 = sub_1E32AE9B0(v14);
  v329 = v0;
  v331 = v8;
  v321 = v6;
  if (!v15)
  {

    v338 = v8;
    OUTLINED_FUNCTION_8();
    v24 = *(v23 + 696);

    v26 = v24(v25);
    OUTLINED_FUNCTION_29_48();
    i = &v27[2];
    while (v4 != v3)
    {
      OUTLINED_FUNCTION_96_9();
      if (v20)
      {
        goto LABEL_415;
      }

      sub_1E327F454(i, v337);
      sub_1E327F454(v337, v336);
      v28 = OUTLINED_FUNCTION_75();
      __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
      v2 = type metadata accessor for LibLocalSource();
      if (OUTLINED_FUNCTION_73_12(&v335, v336))
      {

        v70 = OUTLINED_FUNCTION_48_10();
        sub_1E37DADF4(v70, v71);
        v72 = OUTLINED_FUNCTION_48_10();
        if (OUTLINED_FUNCTION_73_12(v72, v73))
        {
          v74 = *((*MEMORY[0x1E69E7D40] & *v337[0]) + 0x278);
          v75 = (*MEMORY[0x1E69E7D40] & *v337[0]) + 632;
          i = v337[0];
          v26 = v74();

          if (v26)
          {
            v332 = v26;
            v333 = i;
            v76 = sub_1E32AE9B0(v8);
            v3 = 0;
            v77 = v8 & 0xC000000000000001;
            v26 = v8 & 0xFFFFFFFFFFFFFF8;
            v2 = &type metadata for LibMenuType;
            while (1)
            {
              if (v76 == v3)
              {
                v26 = v332;
                OUTLINED_FUNCTION_111();
                v317 = (*(v316 + 264))(1);
                i = &v338;
                MEMORY[0x1E6910BF0](v317);
                OUTLINED_FUNCTION_8_94();
                if (v20)
                {
                  OUTLINED_FUNCTION_7_14();
                }

                OUTLINED_FUNCTION_13_8();
                sub_1E4206324();
                v45 = v338;

                goto LABEL_81;
              }

              if (v77)
              {
                OUTLINED_FUNCTION_168_3();
                v78 = v79;
              }

              else
              {
                OUTLINED_FUNCTION_96_9();
                Kind = v331;
                if (v20)
                {
                  goto LABEL_441;
                }

                v78 = *(&v331[2].Kind + v3);
              }

              if (__OFADD__(v3, 1))
              {
                goto LABEL_440;
              }

              LOBYTE(v336[0]) = *(v78 + 32);
              LOBYTE(v335) = 10;
              sub_1E37D4BA4(v79, v80, v81);
              OUTLINED_FUNCTION_18_64();
              OUTLINED_FUNCTION_8_6();
              sub_1E4206254();
              OUTLINED_FUNCTION_39_31();
              OUTLINED_FUNCTION_8_6();
              sub_1E4206254();
              v82 = OUTLINED_FUNCTION_5_123();
              if (v44 && v75 == i)
              {
                break;
              }

              v86 = OUTLINED_FUNCTION_9_6(v82, v83, v84);

              ++v3;
              if (v86)
              {
                goto LABEL_404;
              }
            }

LABEL_404:

            v45 = v331;
LABEL_81:
            OUTLINED_FUNCTION_22_56();
            goto LABEL_82;
          }
        }

LABEL_80:
        v45 = v8;
        goto LABEL_81;
      }

      ++v3;
      __swift_destroy_boxed_opaque_existential_1(v337);
      i += 40;
    }

    goto LABEL_80;
  }

  v333 = v14;
  OUTLINED_FUNCTION_8();
  (*(v16 + 696))();
  OUTLINED_FUNCTION_29_48();
  for (i = &v17[2]; ; i += 40)
  {
    if (v4 == v3)
    {

      goto LABEL_15;
    }

    OUTLINED_FUNCTION_96_9();
    if (v20)
    {
      goto LABEL_411;
    }

    sub_1E327F454(i, v337);
    sub_1E327F454(v337, v336);
    v21 = OUTLINED_FUNCTION_75();
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
    v2 = type metadata accessor for LibLocalSource();
    if (OUTLINED_FUNCTION_73_12(&v335, v336))
    {
      break;
    }

    ++v3;
    __swift_destroy_boxed_opaque_existential_1(v337);
  }

  v30 = OUTLINED_FUNCTION_48_10();
  sub_1E37DADF4(v30, v31);
  v32 = OUTLINED_FUNCTION_48_10();
  if (OUTLINED_FUNCTION_73_12(v32, v33))
  {
    v34 = *((*MEMORY[0x1E69E7D40] & *v337[0]) + 0x278);
    v1 = ((*MEMORY[0x1E69E7D40] & *v337[0]) + 632);
    i = v337[0];
    v322 = v34();
    v320 = i;

    goto LABEL_16;
  }

LABEL_15:
  v322 = 0;
  v320 = 0;
LABEL_16:
  v35 = sub_1E32AE9B0(v8);
  v36 = 0;
  v37 = v8 & 0xC000000000000001;
  v332 = v8 & 0xFFFFFFFFFFFFFF8;
  v2 = &type metadata for LibMenuType;
  while (v35 != v36)
  {
    if (v37)
    {
      OUTLINED_FUNCTION_168_3();
      v3 = v38;
    }

    else
    {
      Kind = *(v332 + 16);
      if (v36 >= Kind)
      {
        goto LABEL_413;
      }

      v3 = *(&v331[2].Kind + v36);
    }

    if (__OFADD__(v36, 1))
    {
      goto LABEL_412;
    }

    LOBYTE(v336[0]) = *(v3 + 32);
    LOBYTE(v335) = 10;
    sub_1E37D4BA4(v38, v39, v40);
    OUTLINED_FUNCTION_18_64();
    OUTLINED_FUNCTION_8_6();
    sub_1E4206254();
    OUTLINED_FUNCTION_39_31();
    OUTLINED_FUNCTION_8_6();
    sub_1E4206254();
    v41 = OUTLINED_FUNCTION_5_123();
    v44 = v44 && v1 == i;
    if (v44)
    {

LABEL_32:
      HIDWORD(v318) = 1;
      goto LABEL_33;
    }

    OUTLINED_FUNCTION_9_6(v41, v42, v43);
    OUTLINED_FUNCTION_140_7();

    ++v36;
    if (v4)
    {
      goto LABEL_32;
    }
  }

  HIDWORD(v318) = v322 != 0;
  if (!v35)
  {
    v45 = MEMORY[0x1E69E7CC0];
    goto LABEL_58;
  }

LABEL_33:
  v46 = 0;
  v47 = 0;
  v3 = &type metadata for LibMenuType;
LABEL_34:
  LODWORD(v324) = v46;
  v48 = v47;
  do
  {
    if (v37)
    {
      OUTLINED_FUNCTION_168_3();
      v50 = v49;
    }

    else
    {
      Kind = *(v332 + 16);
      if (v48 >= Kind)
      {
        goto LABEL_414;
      }

      v50 = *(&v331[2].Kind + v48);
    }

    v47 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      goto LABEL_408;
    }

    sub_1E3B85708(v50, v333);
    if (v51)
    {
      v2 = v51;
      OUTLINED_FUNCTION_111();
      (*(v52 + 256))();
      OUTLINED_FUNCTION_30_1();
      (*(v53 + 264))(v54 & 1);

      i = &v338;
      MEMORY[0x1E6910BF0](v55);
      OUTLINED_FUNCTION_8_94();
      if (v20)
      {
        OUTLINED_FUNCTION_7_14();
      }

      sub_1E4206324();
    }

    else
    {

      i = &v338;
      MEMORY[0x1E6910BF0](v59);
      OUTLINED_FUNCTION_8_94();
      if (v20)
      {
        OUTLINED_FUNCTION_7_14();
      }

      OUTLINED_FUNCTION_13_8();
      v56 = sub_1E4206324();
    }

    v45 = v338;
    LOBYTE(v336[0]) = *(v50 + 32);
    LOBYTE(v335) = 10;
    sub_1E37D4BA4(v56, v57, v58);
    OUTLINED_FUNCTION_18_64();
    sub_1E4206254();
    OUTLINED_FUNCTION_39_31();
    sub_1E4206254();
    v60 = OUTLINED_FUNCTION_5_123();
    if (v44 && v1 == &v338)
    {

LABEL_55:
      v46 = 1;
      if (v47 == v35)
      {
        goto LABEL_62;
      }

      goto LABEL_34;
    }

    v2 = OUTLINED_FUNCTION_9_6(v60, v61, v62);

    if (v2)
    {
      goto LABEL_55;
    }

    ++v48;
  }

  while (v47 != v35);
  if (v324)
  {
    goto LABEL_62;
  }

LABEL_58:
  if (!HIDWORD(v318) || !v322)
  {
    goto LABEL_62;
  }

  OUTLINED_FUNCTION_12_6();
  v65 = *(v64 + 264);

  v66 = v65(1);
  i = &v338;
  MEMORY[0x1E6910BF0](v66);
  Kind = *((v338 & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (*((v338 & 0xFFFFFFFFFFFFFF8) + 0x10) >= Kind >> 1)
  {
    goto LABEL_446;
  }

LABEL_61:
  OUTLINED_FUNCTION_114_0();
  sub_1E4206324();
  v45 = v338;
LABEL_62:
  v67 = v325;
  sub_1E3B7F3D0(v333, &v338);
  v26 = v68;
  v325 = v67;
  OUTLINED_FUNCTION_22_56();
  sub_1E3B847F8(v69);

LABEL_82:
  OUTLINED_FUNCTION_8();
  v87 += 87;
  v88 = *v87;
  v333 = v87;
  v88();
  OUTLINED_FUNCTION_148_5();
  v89 = &qword_1E429E310;
  while (1)
  {
    if (v3 == v2)
    {

LABEL_94:
      v2 = v45;
      goto LABEL_260;
    }

    Kind = *(v26 + 16);
    if (v2 >= Kind)
    {
      goto LABEL_409;
    }

    sub_1E327F454(i, v337);
    sub_1E327F454(v337, v336);
    v90 = OUTLINED_FUNCTION_75();
    __swift_instantiateConcreteTypeFromMangledNameV2(v90, v91);
    v92 = type metadata accessor for LibLocalSource();
    if (swift_dynamicCast())
    {
      break;
    }

    ++v2;
    __swift_destroy_boxed_opaque_existential_1(v337);
    i += 40;
  }

  v93 = OUTLINED_FUNCTION_48_10();
  sub_1E37DADF4(v93, v94);
  OUTLINED_FUNCTION_48_10();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_94;
  }

  v322 = v337[0];
  OUTLINED_FUNCTION_22_56();
  v88();
  OUTLINED_FUNCTION_149_3();
  v2 = v45;
  v320 = v88;
  while (1)
  {
    if (&unk_1ECF3B640 == v92)
    {

      OUTLINED_FUNCTION_89_6();
      v101 = 0;
      v332 = v45 & 0xC000000000000001;
      v324 = v45 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v26 == v101)
        {
          v101 = sub_1E32AE9B0(v2);
          goto LABEL_126;
        }

        if (v332)
        {
          v110 = OUTLINED_FUNCTION_125();
          MEMORY[0x1E6911E60](v110);
        }

        else
        {
          Kind = *(v324 + 16);
          if (v101 >= Kind)
          {
            goto LABEL_426;
          }

          OUTLINED_FUNCTION_88_9();
        }

        OUTLINED_FUNCTION_138_6();
        LOBYTE(v335) = 12;
        v89 = sub_1E37D4BA4(v102, v103, v104);
        OUTLINED_FUNCTION_40_41();
        sub_1E4206254();
        OUTLINED_FUNCTION_39_31();
        sub_1E4206254();
        v105 = OUTLINED_FUNCTION_5_123();
        if (v44 && v92 == i)
        {
          break;
        }

        OUTLINED_FUNCTION_9_6(v105, v106, v107);
        OUTLINED_FUNCTION_161_3();

        if (v3)
        {
          goto LABEL_124;
        }

        v109 = __OFADD__(v101++, 1);
        v2 = v45;
        if (v109)
        {
          goto LABEL_432;
        }
      }

LABEL_124:
      v26 = v101 + 1;
      if (__OFADD__(v101, 1))
      {
        goto LABEL_460;
      }

      v2 = v45;
      if (v26 == sub_1E32AE9B0(v45))
      {
LABEL_126:
        v119 = sub_1E32AE9B0(v2);
        i = v119 - v101;
        if (v119 < v101)
        {
LABEL_450:
          __break(1u);
        }

        else
        {
          v89 = v320;
          if ((v101 & 0x8000000000000000) == 0)
          {
            v26 = v119;
            if (sub_1E32AE9B0(v2) >= v119)
            {
              v109 = __OFSUB__(0, i);
              i = -i;
              if (!v109)
              {
                v120 = sub_1E32AE9B0(v2);
                v109 = __OFADD__(v120, i);
                v121 = v120 + i;
                if (!v109)
                {
                  i = &v338;
                  sub_1E3797CDC(v121, 1);
                  v122 = OUTLINED_FUNCTION_11_6();
                  sub_1E3AD8CE8(v122, v123, 0);
                  goto LABEL_134;
                }

                goto LABEL_454;
              }

LABEL_453:
              __break(1u);
LABEL_454:
              __break(1u);
LABEL_455:
              __break(1u);
LABEL_456:
              __break(1u);
LABEL_457:
              __break(1u);
LABEL_458:
              __break(1u);
LABEL_459:
              __break(1u);
LABEL_460:
              __break(1u);
LABEL_461:
              __break(1u);
LABEL_462:
              __break(1u);
LABEL_463:
              __break(1u);
LABEL_464:
              __break(1u);
LABEL_465:
              __break(1u);
LABEL_466:
              __break(1u);
LABEL_467:
              __break(1u);
LABEL_468:
              OUTLINED_FUNCTION_7_14();
              goto LABEL_133;
            }

LABEL_452:
            __break(1u);
            goto LABEL_453;
          }
        }

        __break(1u);
        goto LABEL_452;
      }

      v130 = v101 + 5;
      while (1)
      {
        v3 = v130 - 4;
        v332 = v2 & 0xC000000000000001;
        if ((v2 & 0xC000000000000001) != 0)
        {
          OUTLINED_FUNCTION_163_2();
          v26 = v142;
        }

        else
        {
          if ((v3 & 0x8000000000000000) != 0)
          {
            goto LABEL_433;
          }

          OUTLINED_FUNCTION_141_5();
          if (v3 >= Kind)
          {
LABEL_434:
            __break(1u);
LABEL_435:
            __break(1u);
LABEL_436:
            __break(1u);
LABEL_437:
            __break(1u);
LABEL_438:
            __break(1u);
LABEL_439:
            __break(1u);
LABEL_440:
            __break(1u);
LABEL_441:
            __break(1u);
LABEL_442:
            __break(1u);
LABEL_443:
            __break(1u);
LABEL_444:
            __break(1u);
LABEL_445:
            __break(1u);
LABEL_446:
            OUTLINED_FUNCTION_35(Kind);
            sub_1E42062F4();
            goto LABEL_61;
          }

          v26 = *(v2 + 8 * v130);
        }

        LOBYTE(v336[0]) = *(v26 + 32);
        LOBYTE(v335) = 12;
        OUTLINED_FUNCTION_40_41();
        v92 = &type metadata for LibMenuType;
        OUTLINED_FUNCTION_35_5();
        sub_1E4206254();
        OUTLINED_FUNCTION_39_31();
        OUTLINED_FUNCTION_35_5();
        sub_1E4206254();
        v131 = OUTLINED_FUNCTION_5_123();
        if (v44 && &type metadata for LibMenuType == i)
        {
        }

        else
        {
          v135 = v2;
          v136 = OUTLINED_FUNCTION_9_6(v131, v132, v133);

          if (v136)
          {
            v2 = v135;
          }

          else
          {
            v2 = v135;
            if (v3 != v101)
            {
              if (v332)
              {
                v137 = OUTLINED_FUNCTION_125();
                v26 = MEMORY[0x1E6911E60](v137);
                OUTLINED_FUNCTION_163_2();
                i = v138;
              }

              else
              {
                if ((v101 & 0x8000000000000000) != 0)
                {
                  goto LABEL_462;
                }

                OUTLINED_FUNCTION_141_5();
                if (v101 >= v139)
                {
                  goto LABEL_463;
                }

                if (v3 >= v139)
                {
                  goto LABEL_464;
                }

                v26 = *(v135 + 8 * v101 + 32);
                i = *(v135 + 8 * v130);
              }

              if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v135 & 0x8000000000000000) != 0 || (v135 & 0x4000000000000000) != 0)
              {
                v2 = sub_1E37EFA58(v135);
                v140 = (v2 >> 62) & 1;
              }

              else
              {
                LODWORD(v140) = 0;
              }

              v92 = (v2 & 0xFFFFFFFFFFFFFF8);
              *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v101 + 0x20) = i;

              if ((v2 & 0x8000000000000000) != 0 || v140)
              {
                v2 = sub_1E37EFA58(v2);
                v92 = (v2 & 0xFFFFFFFFFFFFFF8);
              }

              if ((v3 & 0x8000000000000000) != 0)
              {
                __break(1u);
LABEL_448:
                __break(1u);
LABEL_449:
                __break(1u);
                goto LABEL_450;
              }

              if (v3 >= v92[1].Kind)
              {
                goto LABEL_448;
              }

              *(&v92->Kind + v130) = v26;

              v338 = v2;
            }

            v109 = __OFADD__(v101++, 1);
            if (v109)
            {
              goto LABEL_444;
            }
          }
        }

        v26 = v130 - 3;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_435;
        }

        if (v2 >> 62)
        {
          v141 = sub_1E4207384();
        }

        else
        {
          Kind = v2 & 0xFFFFFFFFFFFFFF8;
          v141 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        ++v130;
        if (v26 == v141)
        {
          goto LABEL_126;
        }
      }
    }

    Kind = *(v26 + 16);
    if (v92 >= Kind)
    {
      goto LABEL_418;
    }

    sub_1E327F454(i, v339);
    v95 = OUTLINED_FUNCTION_127_6();
    sub_1E37DADF4(v95, v96);
    type metadata accessor for LibFamilySharingSource(0);
    v97 = OUTLINED_FUNCTION_95_8();
    if (OUTLINED_FUNCTION_125_4(v97, v98, v99, v100))
    {
      break;
    }

    v92 = (v92 + 1);
    i += 40;
  }

  OUTLINED_FUNCTION_89_6();
  v101 = 0;
  v332 = v45 & 0xC000000000000001;
  while (v26 != v101)
  {
    if (v332)
    {
      v118 = OUTLINED_FUNCTION_125();
      v2 = MEMORY[0x1E6911E60](v118);
    }

    else
    {
      Kind = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v101 >= Kind)
      {
        goto LABEL_429;
      }

      OUTLINED_FUNCTION_88_9();
    }

    if (__OFADD__(v101, 1))
    {
      goto LABEL_428;
    }

    OUTLINED_FUNCTION_138_6();
    LOBYTE(v335) = 12;
    sub_1E37D4BA4(v111, v112, v113);
    OUTLINED_FUNCTION_18_64();
    OUTLINED_FUNCTION_39_3();
    sub_1E4206254();
    OUTLINED_FUNCTION_39_31();
    OUTLINED_FUNCTION_39_3();
    sub_1E4206254();
    v114 = OUTLINED_FUNCTION_5_123();
    if (v44 && v92 == i)
    {

      OUTLINED_FUNCTION_22_56();
      v2 = v45;
      goto LABEL_174;
    }

    OUTLINED_FUNCTION_9_6(v114, v115, v116);
    OUTLINED_FUNCTION_161_3();

    ++v101;
    v2 = v45;
    if (v3)
    {
      OUTLINED_FUNCTION_22_56();
LABEL_174:
      v89 = v320;
      goto LABEL_175;
    }
  }

  type metadata accessor for LibMenuItem(0);
  OUTLINED_FUNCTION_21();
  (*(v124 + 336))();
  v92 = v125;
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_82();
  v26 = sub_1E3A8A680(v126, v127, v128, 0, 0, v129);
  i = &v338;
  MEMORY[0x1E6910BF0]();
  OUTLINED_FUNCTION_8_94();
  v89 = v320;
  if (v20)
  {
    goto LABEL_468;
  }

LABEL_133:
  OUTLINED_FUNCTION_13_8();
  sub_1E4206324();
LABEL_134:
  v2 = v338;
  OUTLINED_FUNCTION_22_56();
LABEL_175:
  v89();
  OUTLINED_FUNCTION_149_3();
  v333 = v2;
  while (1)
  {
    if (v101 == v92)
    {

      OUTLINED_FUNCTION_89_6();
      v149 = 0;
      v150 = v2 & 0xC000000000000001;
      v151 = v2 & 0xFFFFFFFFFFFFFF8;
      v101 = &type metadata for LibMenuType;
      while (1)
      {
        if (v26 == v149)
        {
          v149 = sub_1E32AE9B0(v2);
          goto LABEL_211;
        }

        if (v150)
        {
          MEMORY[0x1E6911E60](v149, v2);
        }

        else
        {
          Kind = *(v151 + 16);
          if (v149 >= Kind)
          {
            goto LABEL_427;
          }

          OUTLINED_FUNCTION_88_9();
        }

        OUTLINED_FUNCTION_138_6();
        LOBYTE(v335) = 11;
        v89 = sub_1E37D4BA4(v152, v153, v154);
        OUTLINED_FUNCTION_40_41();
        OUTLINED_FUNCTION_75();
        sub_1E4206254();
        OUTLINED_FUNCTION_39_31();
        OUTLINED_FUNCTION_75();
        sub_1E4206254();
        v155 = OUTLINED_FUNCTION_5_123();
        if (v44 && v92 == i)
        {
          break;
        }

        OUTLINED_FUNCTION_9_6(v155, v156, v157);
        OUTLINED_FUNCTION_161_3();

        if (v3)
        {
          goto LABEL_209;
        }

        v109 = __OFADD__(v149++, 1);
        v2 = v333;
        if (v109)
        {
          goto LABEL_436;
        }
      }

LABEL_209:
      v26 = v149 + 1;
      v2 = v333;
      if (__OFADD__(v149, 1))
      {
        goto LABEL_461;
      }

      if (v26 != sub_1E32AE9B0(v333))
      {
        v178 = v149 + 5;
        v101 = 11;
        do
        {
          v3 = v178 - 4;
          v179 = v2 & 0xC000000000000001;
          if ((v2 & 0xC000000000000001) != 0)
          {
            OUTLINED_FUNCTION_163_2();
            v26 = v190;
          }

          else
          {
            if ((v3 & 0x8000000000000000) != 0)
            {
              goto LABEL_437;
            }

            OUTLINED_FUNCTION_141_5();
            if (v3 >= Kind)
            {
              goto LABEL_438;
            }

            v26 = *(v2 + 8 * v178);
          }

          LOBYTE(v336[0]) = *(v26 + 32);
          LOBYTE(v335) = 11;
          OUTLINED_FUNCTION_40_41();
          v92 = &type metadata for LibMenuType;
          OUTLINED_FUNCTION_35_5();
          sub_1E4206254();
          OUTLINED_FUNCTION_39_31();
          OUTLINED_FUNCTION_35_5();
          sub_1E4206254();
          v180 = OUTLINED_FUNCTION_5_123();
          if (v44 && &type metadata for LibMenuType == i)
          {
          }

          else
          {
            v184 = v2;
            v185 = OUTLINED_FUNCTION_9_6(v180, v181, v182);

            if (v185)
            {
              v2 = v184;
              v101 = 11;
            }

            else
            {
              v2 = v184;
              v101 = 11;
              if (v3 != v149)
              {
                if (v179)
                {
                  v26 = MEMORY[0x1E6911E60](v149, v2);
                  OUTLINED_FUNCTION_163_2();
                  i = v186;
                }

                else
                {
                  if ((v149 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_465;
                  }

                  OUTLINED_FUNCTION_141_5();
                  if (v149 >= v187)
                  {
                    goto LABEL_466;
                  }

                  if (v3 >= v187)
                  {
                    goto LABEL_467;
                  }

                  v26 = *(v2 + 8 * v149 + 32);
                  i = *(v2 + 8 * v178);
                }

                if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
                {
                  v188 = sub_1E37EFA58(v2);
                  v2 = (v188 >> 62) & 1;
                }

                else
                {
                  v188 = v2;
                  LODWORD(v2) = 0;
                }

                v92 = (v188 & 0xFFFFFFFFFFFFFF8);
                *((v188 & 0xFFFFFFFFFFFFFF8) + 8 * v149 + 0x20) = i;

                if ((v188 & 0x8000000000000000) != 0 || v2)
                {
                  v2 = sub_1E37EFA58(v188);
                  v92 = (v2 & 0xFFFFFFFFFFFFFF8);
                  if ((v3 & 0x8000000000000000) != 0)
                  {
LABEL_257:
                    __break(1u);
LABEL_258:

                    v2 = v333;
LABEL_259:

                    goto LABEL_260;
                  }
                }

                else
                {
                  v2 = v188;
                  if ((v3 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_257;
                  }
                }

                if (v3 >= v92[1].Kind)
                {
                  goto LABEL_449;
                }

                *(&v92->Kind + v178) = v26;

                v338 = v2;
              }

              v109 = __OFADD__(v149++, 1);
              if (v109)
              {
                goto LABEL_445;
              }
            }
          }

          v26 = v178 - 3;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_439;
          }

          if (v2 >> 62)
          {
            v189 = sub_1E4207384();
          }

          else
          {
            Kind = v2 & 0xFFFFFFFFFFFFFF8;
            v189 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          ++v178;
        }

        while (v26 != v189);
      }

LABEL_211:
      v170 = sub_1E32AE9B0(v2);
      i = v170 - v149;
      if (v170 < v149)
      {
        goto LABEL_455;
      }

      if ((v149 & 0x8000000000000000) != 0)
      {
        goto LABEL_456;
      }

      v26 = v170;
      if (sub_1E32AE9B0(v2) >= v170)
      {
        v109 = __OFSUB__(0, i);
        i = -i;
        if (v109)
        {
          goto LABEL_458;
        }

        v171 = sub_1E32AE9B0(v2);
        v109 = __OFADD__(v171, i);
        v172 = v171 + i;
        if (!v109)
        {
          i = &v338;
          sub_1E3797CDC(v172, 1);
          sub_1E3AD8CE8(v149, v26, 0);
          v2 = v338;
          goto LABEL_259;
        }

        goto LABEL_459;
      }

      goto LABEL_457;
    }

    Kind = *(v26 + 16);
    if (v92 >= Kind)
    {
      goto LABEL_419;
    }

    sub_1E327F454(i, v339);
    v143 = OUTLINED_FUNCTION_127_6();
    sub_1E37DADF4(v143, v144);
    type metadata accessor for LibHomeSharingSource(0);
    v145 = OUTLINED_FUNCTION_95_8();
    if (OUTLINED_FUNCTION_125_4(v145, v146, v147, v148))
    {
      break;
    }

    v92 = (v92 + 1);
    i += 40;
  }

  OUTLINED_FUNCTION_89_6();
  v159 = 0;
  v160 = v2 & 0xC000000000000001;
  v161 = v2 & 0xFFFFFFFFFFFFFF8;
  while (v26 != v159)
  {
    if (v160)
    {
      v169 = OUTLINED_FUNCTION_125();
      v2 = MEMORY[0x1E6911E60](v169);
    }

    else
    {
      Kind = *(v161 + 16);
      if (v159 >= Kind)
      {
        goto LABEL_431;
      }

      OUTLINED_FUNCTION_88_9();
    }

    if (__OFADD__(v159, 1))
    {
      goto LABEL_430;
    }

    OUTLINED_FUNCTION_138_6();
    LOBYTE(v335) = 11;
    sub_1E37D4BA4(v162, v163, v164);
    OUTLINED_FUNCTION_18_64();
    OUTLINED_FUNCTION_39_3();
    sub_1E4206254();
    OUTLINED_FUNCTION_39_31();
    OUTLINED_FUNCTION_39_3();
    sub_1E4206254();
    v165 = OUTLINED_FUNCTION_5_123();
    if (v44 && v92 == i)
    {
      goto LABEL_258;
    }

    OUTLINED_FUNCTION_9_6(v165, v166, v167);
    OUTLINED_FUNCTION_161_3();

    ++v159;
    v2 = v333;
    if (v3)
    {
      goto LABEL_259;
    }
  }

  type metadata accessor for LibMenuItem(0);
  v173 = v322;
  (*((*MEMORY[0x1E69E7D40] & *v322) + 0x150))();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_82();
  v26 = sub_1E3A8A680(v174, v175, v176, 0, 0, v177);
  i = &v338;
  MEMORY[0x1E6910BF0]();
  OUTLINED_FUNCTION_8_94();
  if (v20)
  {
LABEL_471:
    OUTLINED_FUNCTION_7_14();
  }

  OUTLINED_FUNCTION_13_8();
  sub_1E4206324();
  v2 = v338;

LABEL_260:
  OUTLINED_FUNCTION_89_6();
  v191 = 0;
  v332 = v2 & 0xC000000000000001;
  v192 = MEMORY[0x1E69E7CC8];
  v193 = v2 & 0xFFFFFFFFFFFFFF8;
  v333 = v2;
  while (2)
  {
    if (v26 == v191)
    {
      v207 = MEMORY[0x1E69E7CC0];
      v336[0] = MEMORY[0x1E69E7CC0];
      v208 = sub_1E3A8CC10();
      v209 = v208[2];
      if (v209)
      {
        v210 = MEMORY[0x1E69E7CC0];
        v3 = 32;
        OUTLINED_FUNCTION_112_6();
        do
        {
          if (v192[1].Kind)
          {
            i = v192;
            sub_1E3B8A658(*(v208 + v3), v211, v212);
            if (v211)
            {
              v213 = swift_retain_n();
              i = v336;
              MEMORY[0x1E6910BF0](v213);
              v191 = *((v336[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
              v214 = *((v336[0] & 0xFFFFFFFFFFFFFF8) + 0x18);
              if (v191 >= v214 >> 1)
              {
                OUTLINED_FUNCTION_35(v214);
                sub_1E42062F4();
              }

              OUTLINED_FUNCTION_39_3();
              sub_1E4206324();

              v210 = v336[0];
              OUTLINED_FUNCTION_112_6();
            }
          }

          ++v3;
          --v209;
        }

        while (v209);
      }

      else
      {

        v210 = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_112_6();
      }

      OUTLINED_FUNCTION_22_56();
      OUTLINED_FUNCTION_13_96();
      v216 = v215();
      v217 = sub_1E32AE9B0(v216);
      v2 = v327;
      if (v217)
      {
        v218 = v217;
        v339[0] = v207;
        OUTLINED_FUNCTION_153_3(v217);
        if (v218 < 0)
        {
          goto LABEL_442;
        }

        v191 = 0;
        v219 = v339[0];
        v3 = v216 & 0xC000000000000001;
        do
        {
          if (v3)
          {
            v2 = MEMORY[0x1E6911E60](0, v216);
          }

          else
          {
            OUTLINED_FUNCTION_88_9();
          }

          v207 = *(v2 + 72);

          OUTLINED_FUNCTION_152_4();
          if (v20)
          {
            v221 = OUTLINED_FUNCTION_35(v220);
            sub_1E377FD30(v221, v2, 1);
            v219 = v339[0];
          }

          OUTLINED_FUNCTION_90_9();
        }

        while (!v44);

        OUTLINED_FUNCTION_112_6();
        v2 = v327;
      }

      else
      {

        v219 = MEMORY[0x1E69E7CC0];
      }

      sub_1E32772D8(v219);
      v222 = sub_1E32AE9B0(v210);
      i = MEMORY[0x1E69E7CC0];
      if (v222)
      {
        v223 = v222;
        v339[0] = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_153_3(v222);
        if (v223 < 0)
        {
          goto LABEL_443;
        }

        v191 = 0;
        i = v339[0];
        do
        {
          if ((v210 & 0xC000000000000001) != 0)
          {
            v2 = MEMORY[0x1E6911E60](0, v210);
          }

          else
          {
            OUTLINED_FUNCTION_88_9();
          }

          v207 = *(v2 + 72);

          OUTLINED_FUNCTION_152_4();
          if (v20)
          {
            v225 = OUTLINED_FUNCTION_35(v224);
            sub_1E377FD30(v225, v2, 1);
            i = v339[0];
          }

          OUTLINED_FUNCTION_90_9();
        }

        while (!v44);
        OUTLINED_FUNCTION_112_6();
        v2 = v327;
      }

      sub_1E32772D8(i);
      v226 = OUTLINED_FUNCTION_50();
      v227 = sub_1E3868C04(v226, i);

      v228 = v323;
      if (v227 & 1) == 0 || (v321)
      {
        OUTLINED_FUNCTION_47_0();
        (*(v241 + 464))(v210);
        v242 = sub_1E324FBDC();
        (*(v2 + 16))(v228, v242, v191);

        v243 = sub_1E41FFC94();
        v244 = v228;
        v245 = sub_1E4206814();

        if (os_log_type_enabled(v243, v245))
        {
          v246 = v191;
          v247 = OUTLINED_FUNCTION_6_21();
          v248 = v2;
          v249 = OUTLINED_FUNCTION_100();
          v339[0] = v249;
          *v247 = 136315138;
          OUTLINED_FUNCTION_13_96();
          v250();
          v251 = OUTLINED_FUNCTION_106();
          type metadata accessor for LibMenuItem(v251);
          v252 = OUTLINED_FUNCTION_20_2();
          v253 = MEMORY[0x1E6910C30](v252);
          v255 = v254;

          v256 = sub_1E3270FC8(v253, v255, v339);

          *(v247 + 4) = v256;
          _os_log_impl(&dword_1E323F000, v243, v245, "LibDataSourceManager:: resolvedMenuItems %s", v247, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v249);
          OUTLINED_FUNCTION_21_0();
          OUTLINED_FUNCTION_6_0();

          (*(v248 + 8))(v244, v246);
        }

        else
        {

          (*(v2 + 8))(v244, v191);
        }

LABEL_347:
        v2 = v333;
      }

      else
      {
        OUTLINED_FUNCTION_22_56();
        OUTLINED_FUNCTION_13_96();
        v230 = v229();
        v3 = sub_1E32AE9B0(v230);
        v231 = 0;
        v332 = v230 & 0xC000000000000001;
        v328 = v230 & 0xFFFFFFFFFFFFFF8;
        v2 = &type metadata for LibMenuType;
        while (1)
        {
          if (v3 == v231)
          {

            goto LABEL_347;
          }

          if (v332)
          {
            v234 = MEMORY[0x1E6911E60](v231, v230);
            v233 = v234;
          }

          else
          {
            OUTLINED_FUNCTION_329();
            Kind = *(v232 + 16);
            if (v231 >= Kind)
            {
              goto LABEL_417;
            }

            v233 = *(v230 + 8 * v231 + 32);
          }

          if (__OFADD__(v231, 1))
          {
            goto LABEL_416;
          }

          LOBYTE(v335) = *(v233 + 32);
          v334 = 9;
          sub_1E37D4BA4(v234, v235, v236);
          OUTLINED_FUNCTION_159_1();
          OUTLINED_FUNCTION_157_4();
          v237 = OUTLINED_FUNCTION_5_123();
          if (v44 && v227 == i)
          {
            break;
          }

          OUTLINED_FUNCTION_9_6(v237, v238, v239);
          OUTLINED_FUNCTION_140_7();

          if (v207)
          {
            goto LABEL_329;
          }

          ++v231;
        }

LABEL_329:

        i = v331;
        v3 = sub_1E32AE9B0(v331);
        v257 = 0;
        v332 = i & 0xC000000000000001;
        v328 = i & 0xFFFFFFFFFFFFFF8;
        v2 = &type metadata for LibMenuType;
        while (1)
        {
          if (v3 == v257)
          {

LABEL_346:

            goto LABEL_347;
          }

          if (v332)
          {
            OUTLINED_FUNCTION_168_3();
            v259 = v264;
          }

          else
          {
            OUTLINED_FUNCTION_329();
            Kind = *(v258 + 16);
            if (v257 >= Kind)
            {
              goto LABEL_423;
            }

            v259 = *(&v331[2].Kind + v257);
          }

          if (__OFADD__(v257, 1))
          {
            goto LABEL_422;
          }

          LOBYTE(v335) = *(v259 + 32);
          v334 = 9;
          OUTLINED_FUNCTION_159_1();
          OUTLINED_FUNCTION_157_4();
          v260 = OUTLINED_FUNCTION_5_123();
          if (v44 && v227 == i)
          {
            break;
          }

          OUTLINED_FUNCTION_9_6(v260, v261, v262);
          OUTLINED_FUNCTION_140_7();

          if (v207)
          {
            goto LABEL_344;
          }

          ++v257;
        }

LABEL_344:

        OUTLINED_FUNCTION_12_6();
        v266 = *(v265 + 224);
        v267 = v266();
        OUTLINED_FUNCTION_26();
        if (v267 == (*(v268 + 224))())
        {

          goto LABEL_346;
        }

        v296 = v266();
        v297 = sub_1E324FBDC();
        (*(v327 + 16))(v319, v297, v330);
        OUTLINED_FUNCTION_4_0();
        v298 = swift_allocObject();
        v332 = v296;
        *(v298 + 16) = v296;
        v299 = sub_1E41FFC94();
        v300 = sub_1E4206814();
        v301 = swift_allocObject();
        *(v301 + 16) = 0;
        v302 = swift_allocObject();
        *(v302 + 16) = 8;
        v303 = swift_allocObject();
        *(v303 + 16) = sub_1E3B8B3A8;
        *(v303 + 24) = v298;
        v304 = swift_allocObject();
        *(v304 + 16) = sub_1E3B8B3C4;
        *(v304 + 24) = v303;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF341C8, &qword_1E42BF0D0);
        v305 = swift_allocObject();
        *(v305 + 16) = xmmword_1E4297BD0;
        *(v305 + 32) = sub_1E3B8B3B0;
        *(v305 + 40) = v301;
        *(v305 + 48) = sub_1E3B8B494;
        *(v305 + 56) = v302;
        *(v305 + 64) = sub_1E3B8B3F4;
        *(v305 + 72) = v304;
        swift_setDeallocating();

        sub_1E3B89040();
        if (os_log_type_enabled(v299, v300))
        {
          v306 = OUTLINED_FUNCTION_6_21();
          *v306 = 134217984;

          v307 = v332;
          *(v306 + 4) = v332;

          _os_log_impl(&dword_1E323F000, v299, v300, "LibDataSourceManager:: dedup resolvedMenuItems but still update rental count to %ld", v306, 0xCu);
          OUTLINED_FUNCTION_6_0();

          v2 = v333;
          v308 = v307;
        }

        else
        {

          v308 = v332;
          v2 = v333;
        }

        OUTLINED_FUNCTION_15_5();
        v313(v319, v330);
        OUTLINED_FUNCTION_26();
        (*(v314 + 232))(v308);
      }

      OUTLINED_FUNCTION_22_56();
      OUTLINED_FUNCTION_8();
      v270 = (*(v269 + 408))();
      if (!v270)
      {
        goto LABEL_399;
      }

      v173 = v270;
      OUTLINED_FUNCTION_8();
      v271 += 57;
      v3 = *v271;
      v272 = v271;
      v273 = (*v271)();
      v274 = sub_1E32AE9B0(v273);

      if (!v274)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1E4298880;
        *(inited + 32) = v173;

        sub_1E3B847F8(inited);

        swift_setDeallocating();
        sub_1E377D458();
LABEL_399:

        OUTLINED_FUNCTION_25_2();
        return;
      }

      v276 = (v3)(v275);
      v277 = sub_1E32AE9B0(v276);
      v278 = 0;
      v279 = v276 & 0xC000000000000001;
      i = v276 & 0xFFFFFFFFFFFFFF8;
      v332 = v276 + 32;
      v331 = (v276 & 0xC000000000000001);
      v330 = v276 & 0xFFFFFFFFFFFFFF8;
      while (v278 != v277)
      {
        if (v279)
        {
          v280 = MEMORY[0x1E6911E60](v278, v276);
        }

        else
        {
          Kind = *(i + 16);
          if (v278 >= Kind)
          {
            goto LABEL_425;
          }

          v280 = *(v332 + 8 * v278);
        }

        v109 = __OFADD__(v278++, 1);
        if (v109)
        {
          goto LABEL_424;
        }

        if (sub_1E38BBD0C(*(v173 + 32), 14, v281) & 1) != 0 && (sub_1E38BBD0C(*(v280 + 32), 13, v282))
        {
          OUTLINED_FUNCTION_26();
          v284 = (*(v283 + 288))();
          if (v284)
          {
            v285 = v284;
            v324 = v277;
            v328 = v276;
            v326 = v272;
            v327 = v3;
            i = sub_1E32AE9B0(v284);
            v286 = 0;
            v2 = v285 & 0xC000000000000001;
            v3 = v285 & 0xFFFFFFFFFFFFFF8;
            while (1)
            {
              if (i == v286)
              {

                v2 = v333;
                v3 = v327;
                v272 = v326;
                v276 = v328;
                v277 = v324;
                goto LABEL_379;
              }

              if (v2)
              {
                v287 = MEMORY[0x1E6911E60](v286, v285);
              }

              else
              {
                Kind = *((v285 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v286 >= Kind)
                {
                  goto LABEL_421;
                }

                v287 = *(v285 + 8 * v286 + 32);
              }

              if (__OFADD__(v286, 1))
              {
                goto LABEL_420;
              }

              if (*(v287 + 16) == v173[2] && *(v287 + 24) == v173[3])
              {
                break;
              }

              sub_1E42079A4();
              OUTLINED_FUNCTION_140_7();

              ++v286;
              if (v272)
              {

                goto LABEL_383;
              }
            }

LABEL_383:

            OUTLINED_FUNCTION_22_56();
            OUTLINED_FUNCTION_8();
            v292 = *(v291 + 416);

            v294 = v292(v293);
            if ((*(*v280 + 256))(v294))
            {
              OUTLINED_FUNCTION_26();
              (*(v295 + 472))(0, 0);
            }

LABEL_398:

            goto LABEL_399;
          }

LABEL_379:
          v279 = v331;
          i = v330;
        }

        else
        {
          v289 = *(v280 + 16) == v173[2] && *(v280 + 24) == v173[3];
          if (v289 || (sub_1E42079A4() & 1) != 0)
          {
            goto LABEL_383;
          }
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
      v309 = swift_initStackObject();
      *(v309 + 16) = xmmword_1E4298880;
      *(v309 + 32) = v173;

      v310 = v329;
      sub_1E3B847F8(v309);
      swift_setDeallocating();
      v311 = sub_1E377D458();
      i = v310;
      v26 = (v3)(v311);
      if (!sub_1E32AE9B0(v26))
      {

        v312 = 0;
        goto LABEL_397;
      }

      if ((v26 & 0xC000000000000001) != 0)
      {
        v312 = MEMORY[0x1E6911E60](0, v26);
        goto LABEL_393;
      }

      if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v312 = *(v26 + 32);

LABEL_393:

LABEL_397:
        OUTLINED_FUNCTION_22_56();
        OUTLINED_FUNCTION_8();
        (*(v315 + 416))(v312);
        goto LABEL_398;
      }

      __break(1u);
      goto LABEL_471;
    }

    if (v332)
    {
      v206 = OUTLINED_FUNCTION_24_4();
      v2 = MEMORY[0x1E6911E60](v206);
    }

    else
    {
      Kind = *(v193 + 16);
      if (v191 >= Kind)
      {
        goto LABEL_406;
      }

      OUTLINED_FUNCTION_88_9();
    }

    if (__OFADD__(v191, 1))
    {
      __break(1u);
LABEL_406:
      __break(1u);
LABEL_407:
      __break(1u);
LABEL_408:
      __break(1u);
LABEL_409:
      __break(1u);
LABEL_410:
      __break(1u);
LABEL_411:
      __break(1u);
LABEL_412:
      __break(1u);
LABEL_413:
      __break(1u);
LABEL_414:
      __break(1u);
LABEL_415:
      __break(1u);
LABEL_416:
      __break(1u);
LABEL_417:
      __break(1u);
LABEL_418:
      __break(1u);
LABEL_419:
      __break(1u);
LABEL_420:
      __break(1u);
LABEL_421:
      __break(1u);
LABEL_422:
      __break(1u);
LABEL_423:
      __break(1u);
LABEL_424:
      __break(1u);
LABEL_425:
      __break(1u);
LABEL_426:
      __break(1u);
LABEL_427:
      __break(1u);
LABEL_428:
      __break(1u);
LABEL_429:
      __break(1u);
LABEL_430:
      __break(1u);
LABEL_431:
      __break(1u);
LABEL_432:
      __break(1u);
LABEL_433:
      __break(1u);
      goto LABEL_434;
    }

    v194 = *(v2 + 32);

    swift_isUniquelyReferenced_nonNull_native();
    v339[0] = v192;
    i = v192;
    v197 = sub_1E3B8A658(v194, v195, v196);
    Kind = v192[1].Kind;
    if (__OFADD__(Kind, (v198 & 1) == 0))
    {
      goto LABEL_407;
    }

    v199 = v197;
    v3 = v198;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF341C0, &qword_1E42BF0C8);
    i = v339;
    if ((sub_1E4207644() & 1) == 0)
    {
LABEL_270:
      v192 = v339[0];
      if (v3)
      {
        v204 = *(v339[0] + 56);
        i = *(v204 + 8 * v199);
        *(v204 + 8 * v199) = v2;
      }

      else
      {
        *(v339[0] + 8 * (v199 >> 6) + 64) |= 1 << v199;
        *(v192[3].Kind + v199) = v194;
        *(v192[3].Description + v199) = v2;

        v205 = v192[1].Kind;
        v109 = __OFADD__(v205, 1);
        Kind = v205 + 1;
        if (v109)
        {
          goto LABEL_410;
        }

        v192[1].Kind = Kind;
      }

      ++v191;
      v2 = v333;
      continue;
    }

    break;
  }

  i = v339[0];
  v202 = sub_1E3B8A658(v194, v200, v201);
  if ((v3 & 1) == (v203 & 1))
  {
    v199 = v202;
    goto LABEL_270;
  }

  sub_1E4207A74();
  __break(1u);
}

void sub_1E3B8343C()
{
  OUTLINED_FUNCTION_8();
  (*(v3 + 696))();
  OUTLINED_FUNCTION_29_48();
  v5 = v4 + 32;
  while (1)
  {
    if (v2 == v1)
    {

LABEL_8:
      sub_1E3B835EC();
      return;
    }

    OUTLINED_FUNCTION_96_9();
    if (v6)
    {
      break;
    }

    sub_1E327F454(v5, v37);
    sub_1E327F454(v37, v35);
    v7 = OUTLINED_FUNCTION_75();
    __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    OUTLINED_FUNCTION_247();
    v9 = type metadata accessor for LibLocalSource();
    v17 = OUTLINED_FUNCTION_86(v9, v10, v11, v12, v13, v14, v15, v16, v34);
    if (OUTLINED_FUNCTION_115_3(v17, v18, v19, v20))
    {

      v21 = sub_1E37DADF4(v37, v36);
      v29 = OUTLINED_FUNCTION_131_7(v21, v22, v23, v24, v25, v26, v27, v28, v34, v35[0], v35[1], v35[2], v35[3], v35[4], v36[0]);
      sub_1E37DADF4(v29, v30);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF340B8, &unk_1E42BE938);
      v32 = OUTLINED_FUNCTION_26_11(v31);
      *(v32 + 16) = xmmword_1E4297BE0;
      sub_1E327F454(v37, v32 + 32);
      v33 = OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_activeSources;
      OUTLINED_FUNCTION_3_0(v0 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_activeSources, v36);
      *(v0 + v33) = v32;

      sub_1E3B7CC30();
      (*(*v0 + 464))(MEMORY[0x1E69E7CC0]);
      sub_1E3B7E10C();
      __swift_destroy_boxed_opaque_existential_1(v37);
      goto LABEL_8;
    }

    ++v1;
    OUTLINED_FUNCTION_120_4(v37);
  }

  __break(1u);
}

void sub_1E3B835EC()
{
  OUTLINED_FUNCTION_31_1();
  v122 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v128 = v1;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17_3(v121 - v5);
  v6 = MEMORY[0x1E69E7CD0];
  v142 = MEMORY[0x1E69E7CD0];
  v7 = *v0;
  v8 = *(*v0 + 696);
  v129 = v0;
  v127 = v7 + 696;
  v126 = v8;
  v9 = v8();
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = v9 + 32;
    do
    {
      sub_1E327F454(v11, v137);
      sub_1E327F454(v137, v141);
      v12 = OUTLINED_FUNCTION_24_4();
      __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
      v14 = OUTLINED_FUNCTION_106();
      v15 = type metadata accessor for LibHomeSharingSource(v14);
      if (OUTLINED_FUNCTION_90_0(&v140, v141, v16, v15))
      {

        __swift_project_boxed_opaque_existential_1(v137, v138);
        OUTLINED_FUNCTION_33();
        v17 = OUTLINED_FUNCTION_39_0();
        v19 = v18(v17);
        sub_1E3277398(v141, v19, v20);
      }

      __swift_destroy_boxed_opaque_existential_1(v137);
      v11 += 40;
      --v10;
    }

    while (v10);
  }

  v140 = v6;
  v21 = objc_opt_self();
  v22 = sub_1E3B8A800(v21);
  if (v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = MEMORY[0x1E69E7CC0];
  }

  v24 = sub_1E32AE9B0(v23);
  v25 = 0;
  v133 = v23 & 0xC000000000000001;
  v134 = v24;
  v130 = v23 + 32;
  while (v134 != v25)
  {
    v26 = v133;
    sub_1E34AF4E4(v25, v133 == 0, v23);
    if (v26)
    {
      v31 = OUTLINED_FUNCTION_114_0();
      v27 = MEMORY[0x1E6911E60](v31);
    }

    else
    {
      v27 = *(v23 + 8 * v25 + 32);
    }

    v28 = v27;
    if (__OFADD__(v25, 1))
    {
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
      return;
    }

    v29 = sub_1E3B8A870(v27);
    if (!v30)
    {
      goto LABEL_102;
    }

    sub_1E3277398(v137, v29, v30);

    ++v25;
  }

  v131 = v23;
  v32 = *(v142 + 56);
  v136 = v142 + 56;
  v33 = 1 << *(v142 + 32);
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  else
  {
    v34 = -1;
  }

  v35 = v34 & v32;
  v123 = OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_availableSources;
  v36 = (v33 + 63) >> 6;
  v135 = v142;
  swift_bridgeObjectRetain_n();
  v37 = 0;
  v125 = v36;
LABEL_21:
  while (v35)
  {
    v38 = v135;
LABEL_28:
    v40 = __clz(__rbit64(v35));
    v35 &= v35 - 1;
    v41 = (*(v38 + 48) + ((v37 << 10) | (16 * v40)));
    v43 = *v41;
    v42 = v41[1];
    v44 = v140;
    if (*(v140 + 2))
    {
      sub_1E4207B44();

      sub_1E4206014();
      v45 = sub_1E4207BA4();
      v46 = ~(-1 << v44[32]);
      while (1)
      {
        v47 = v45 & v46;
        if (((*&v44[(((v45 & v46) >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> (v45 & v46)) & 1) == 0)
        {
          break;
        }

        v48 = (*(v44 + 6) + 16 * v47);
        if (*v48 != v43 || v48[1] != v42)
        {
          v50 = OUTLINED_FUNCTION_167_3(*v48);
          v45 = v47 + 1;
          if ((v50 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    else
    {
    }

    OUTLINED_FUNCTION_22_56();
    v51 = v126();
    v52 = 0;
    v53 = *(v51 + 16);
    v132 = v51;
    for (i = v51 + 32; ; i += 40)
    {
      if (v53 == v52)
      {

        goto LABEL_50;
      }

      if (v52 >= *(v132 + 2))
      {
        goto LABEL_99;
      }

      sub_1E327F454(i, v137);
      v55 = v138;
      v56 = v139;
      __swift_project_boxed_opaque_existential_1(v137, v138);
      OUTLINED_FUNCTION_33();
      v58 = v57(v55, v56);
      if (v58 == v43 && v59 == v42)
      {
        break;
      }

      v61 = OUTLINED_FUNCTION_167_3(v58);

      __swift_destroy_boxed_opaque_existential_1(v137);
      if (v61)
      {
        goto LABEL_49;
      }

      ++v52;
    }

    __swift_destroy_boxed_opaque_existential_1(v137);
LABEL_49:

    OUTLINED_FUNCTION_11_3(v129 + v123, v141);
    sub_1E3B88DA0(v52, v137);
    __swift_destroy_boxed_opaque_existential_1(v137);
    swift_endAccess();
    sub_1E3B7CF98();
LABEL_50:
    v36 = v125;
  }

  v38 = v135;
  while (1)
  {
    v39 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
      goto LABEL_96;
    }

    if (v39 >= v36)
    {
      break;
    }

    v35 = *(v136 + 8 * v39);
    ++v37;
    if (v35)
    {
      v37 = v39;
      goto LABEL_28;
    }
  }

  v62 = 0;
  v63 = v131;
  v64 = v131 & 0xFFFFFFFFFFFFFF8;
  v65 = MEMORY[0x1E69E7CC0];
  v66 = MEMORY[0x1E69E7CC0];
  v67 = v122;
  while (v134 != v62)
  {
    if (v133)
    {
      v68 = MEMORY[0x1E6911E60](v62, v63);
    }

    else
    {
      if (v62 >= *(v64 + 16))
      {
        goto LABEL_98;
      }

      v68 = *(v63 + 8 * v62 + 32);
    }

    v69 = v68;
    v70 = v62 + 1;
    if (__OFADD__(v62, 1))
    {
      goto LABEL_97;
    }

    v71 = sub_1E3B8A870(v68);
    v73 = v72;

    ++v62;
    if (v73)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = sub_1E3740F88(0, *(v66 + 2) + 1, 1, v66);
      }

      v75 = *(v66 + 2);
      v74 = *(v66 + 3);
      if (v75 >= v74 >> 1)
      {
        v77 = OUTLINED_FUNCTION_35(v74);
        v66 = sub_1E3740F88(v77, v75 + 1, 1, v66);
      }

      *(v66 + 2) = v75 + 1;
      v76 = &v66[16 * v75];
      *(v76 + 4) = v71;
      *(v76 + 5) = v73;
      v62 = v70;
      v63 = v131;
    }
  }

  v78 = sub_1E32772D8(v66);
  v79 = sub_1E324FBDC();
  v81 = v128 + 16;
  v80 = *(v128 + 16);
  v127 = v79;
  v132 = v80;
  v80(v124);
  v82 = sub_1E41FFC94();
  v83 = sub_1E4206814();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = OUTLINED_FUNCTION_125_0();
    *v84 = 0;
    _os_log_impl(&dword_1E323F000, v82, v83, "LibDataSourceManager: will update homeSharings", v84, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  OUTLINED_FUNCTION_329();
  v86 = *(v85 + 8);
  v128 = v85 + 8;
  (v86)(v124, v67);
  v87 = sub_1E3868C04(v78, v135);

  if (v87)
  {

    (v132)(v121[1], v127, v67);
    v88 = sub_1E41FFC94();
    v89 = sub_1E4206814();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = OUTLINED_FUNCTION_125_0();
      *v90 = 0;
      _os_log_impl(&dword_1E323F000, v88, v89, "LibDataSourceManager:: home sharing list is the same as existing, no need to update", v90, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    OUTLINED_FUNCTION_329();
    v86();
  }

  else
  {
    v124 = v81;
    v125 = v78;
    v126 = v86;
    v91 = 0;
    v141[0] = v65;
LABEL_70:
    while (v91 != v134)
    {
      if (v133)
      {
        v92 = MEMORY[0x1E6911E60](v91, v63);
      }

      else
      {
        if (v91 >= *(v64 + 16))
        {
          goto LABEL_101;
        }

        v92 = *(v130 + 8 * v91);
      }

      v93 = v92;
      if (__OFADD__(v91++, 1))
      {
        goto LABEL_100;
      }

      v95 = sub_1E3B8A870(v92);
      if (!v96)
      {
        goto LABEL_103;
      }

      v97 = v96;
      if (*(v135 + 16))
      {
        v98 = v95;
        sub_1E4207B44();
        sub_1E4206014();
        v99 = sub_1E4207BA4();
        v100 = v135;
        v101 = ~(-1 << *(v135 + 32));
        while (1)
        {
          v102 = v99 & v101;
          if (((*(v136 + (((v99 & v101) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v99 & v101)) & 1) == 0)
          {
            break;
          }

          v103 = (*(v100 + 48) + 16 * v102);
          if (*v103 != v98 || v97 != v103[1])
          {
            v105 = sub_1E42079A4();
            v100 = v135;
            v106 = v105;
            v99 = v102 + 1;
            if ((v106 & 1) == 0)
            {
              continue;
            }
          }

          v63 = v131;
          goto LABEL_70;
        }
      }

      type metadata accessor for LibHomeSharingSource(0);
      v107 = v93;
      sub_1E3B4C0C4(v107);
      v109 = v108;
      MEMORY[0x1E6910BF0]();
      v110 = *((v141[0] & 0xFFFFFFFFFFFFFF8) + 0x18);
      v63 = v131;
      if (*((v141[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= v110 >> 1)
      {
        OUTLINED_FUNCTION_35(v110);
        sub_1E42062F4();
      }

      OUTLINED_FUNCTION_39_3();
      sub_1E4206324();

      v65 = v141[0];
    }

    sub_1E3B86460(v65);

    OUTLINED_FUNCTION_22_56();
    sub_1E3B868A4(v111);

    (v132)(v121[0], v127, v67);

    v112 = sub_1E41FFC94();
    v113 = sub_1E4206814();

    if (os_log_type_enabled(v112, v113))
    {
      v114 = OUTLINED_FUNCTION_6_21();
      v115 = OUTLINED_FUNCTION_100();
      v137[0] = v115;
      *v114 = 136315138;
      sub_1E4206634();

      v116 = OUTLINED_FUNCTION_24_4();
      v119 = sub_1E3270FC8(v116, v117, v118);

      *(v114 + 4) = v119;
      _os_log_impl(&dword_1E323F000, v112, v113, "LibDataSourceManager: did update homeSharings %s", v114, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v115);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    else
    {
    }

    OUTLINED_FUNCTION_13_96();
    v120();
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B84184(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  sub_1E327F454(a1, &v100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A780, &unk_1E42A8840);
  v6 = OUTLINED_FUNCTION_144_0();
  v7 = type metadata accessor for LibMPShowMediaEntity(v6);
  if (!OUTLINED_FUNCTION_35_39(v7, v8))
  {
    sub_1E327F454(a1, &v100);
    v11 = type metadata accessor for LibSidebandShowMediaEntity(0);
    if (OUTLINED_FUNCTION_35_39(v11, v12))
    {

      OUTLINED_FUNCTION_8();
      (*(v13 + 696))();
      OUTLINED_FUNCTION_7_126();
      while (v3 != v2)
      {
        OUTLINED_FUNCTION_68_18();
        if (v14)
        {
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        v15 = sub_1E327F454(a1, &v95);
        v23 = OUTLINED_FUNCTION_61_1(v15, v16, v17, v18, v19, v20, v21, v22, v91, v95);
        sub_1E327F454(v23, v24);
        v25 = OUTLINED_FUNCTION_75();
        __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
        OUTLINED_FUNCTION_247();
        v27 = type metadata accessor for LibLocalSource();
        if (OUTLINED_FUNCTION_33_41(v27, v28, v29, v30, v31, v32, v33, v34, v92, v95, v96, v97, v98, v99, v100))
        {
LABEL_22:

          goto LABEL_24;
        }

        ++v2;
        OUTLINED_FUNCTION_120_4(&v95);
      }
    }

    else
    {
      sub_1E327F454(a1, &v100);
      v35 = type metadata accessor for LibFamilySharingShowMediaEntity(0);
      if (!OUTLINED_FUNCTION_35_39(v35, v36))
      {
        return;
      }

      OUTLINED_FUNCTION_8();
      (*(v37 + 672))();
      OUTLINED_FUNCTION_7_126();
      while (v3 != v2)
      {
        OUTLINED_FUNCTION_68_18();
        if (v14)
        {
LABEL_29:
          __break(1u);
          return;
        }

        v38 = sub_1E327F454(a1, &v95);
        v46 = OUTLINED_FUNCTION_61_1(v38, v39, v40, v41, v42, v43, v44, v45, v91, v95);
        sub_1E327F454(v46, v47);
        v48 = OUTLINED_FUNCTION_75();
        __swift_instantiateConcreteTypeFromMangledNameV2(v48, v49);
        v50 = OUTLINED_FUNCTION_247();
        v51 = type metadata accessor for LibFamilySharingSource(v50);
        if (OUTLINED_FUNCTION_33_41(v51, v52, v53, v54, v55, v56, v57, v58, v93, v95, v96, v97, v98, v99, v100))
        {

LABEL_24:
          v80 = sub_1E325F7A8(a2, &unk_1ECF2A740, &qword_1E42EF010);
          v88 = OUTLINED_FUNCTION_61_1(v80, v81, v82, v83, v84, v85, v86, v87, v91, v95);
          sub_1E37DADF4(v88, v89);
          goto LABEL_25;
        }

        ++v2;
        OUTLINED_FUNCTION_120_4(&v95);
      }
    }

    goto LABEL_21;
  }

  OUTLINED_FUNCTION_8();
  if (!(*(v9 + 408))())
  {
    OUTLINED_FUNCTION_8();
    (*(v59 + 696))();
    OUTLINED_FUNCTION_7_126();
    while (v3 != v2)
    {
      OUTLINED_FUNCTION_68_18();
      if (v14)
      {
        goto LABEL_28;
      }

      v60 = sub_1E327F454(a1, &v95);
      v68 = OUTLINED_FUNCTION_61_1(v60, v61, v62, v63, v64, v65, v66, v67, v91, v95);
      sub_1E327F454(v68, v69);
      v70 = OUTLINED_FUNCTION_75();
      __swift_instantiateConcreteTypeFromMangledNameV2(v70, v71);
      OUTLINED_FUNCTION_247();
      v72 = type metadata accessor for LibLocalSource();
      if (OUTLINED_FUNCTION_33_41(v72, v73, v74, v75, v76, v77, v78, v79, v94, v95, v96, v97, v98, v99, v100))
      {
        goto LABEL_22;
      }

      ++v2;
      OUTLINED_FUNCTION_120_4(&v95);
    }

LABEL_21:
    sub_1E325F7A8(a2, &unk_1ECF2A740, &qword_1E42EF010);

    v102 = 0;
    v100 = 0u;
    v101 = 0u;
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_8();
  (*(v10 + 808))(&v100);

  sub_1E325F7A8(a2, &unk_1ECF2A740, &qword_1E42EF010);
LABEL_25:
  v90 = v101;
  *a2 = v100;
  *(a2 + 16) = v90;
  *(a2 + 32) = v102;
}

uint64_t sub_1E3B844F8()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 672))();
  sub_1E37D9AD0(v1, &v82);

  if (!v84)
  {
    sub_1E325F7A8(&v82, &unk_1ECF2A740, &qword_1E42EF010);
    return 0;
  }

  v2 = sub_1E37DADF4(&v82, v86);
  v10 = OUTLINED_FUNCTION_136_2(v2, v3, v4, v5, v6, v7, v8, v9, v69, v75, v82, *(&v82 + 1), v83, v84, v85, v86[0]);
  sub_1E327F454(v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640, &qword_1E429E310);
  OUTLINED_FUNCTION_9_5();
  v12 = type metadata accessor for LibLocalSource();
  v20 = OUTLINED_FUNCTION_34_40(v12, v13, v14, v15, v16, v17, v18, v19, v70, v76);
  v24 = OUTLINED_FUNCTION_102_0(v20, v21, v22, v23);
  if (v24)
  {

    __swift_destroy_boxed_opaque_existential_1(v86);
    return 0x7972617262694CLL;
  }

  v33 = OUTLINED_FUNCTION_136_2(v24, v25, v26, v27, v28, v29, v30, v31, v71, v77, v82, *(&v82 + 1), v83, v84, v85, v86[0]);
  sub_1E327F454(v33, v34);
  v35 = type metadata accessor for LibFamilySharingSource(0);
  v43 = OUTLINED_FUNCTION_34_40(v35, v36, v37, v38, v39, v40, v41, v42, v72, v78);
  v47 = OUTLINED_FUNCTION_102_0(v43, v44, v45, v46);
  if (v47)
  {

    __swift_destroy_boxed_opaque_existential_1(v86);
    return 0x6853796C696D6146;
  }

  v55 = OUTLINED_FUNCTION_136_2(v47, v48, v49, v50, v51, v52, v53, v54, v73, v79, v82, *(&v82 + 1), v83, v84, v85, v86[0]);
  sub_1E327F454(v55, v56);
  v57 = type metadata accessor for LibHomeSharingSource(0);
  v65 = OUTLINED_FUNCTION_34_40(v57, v58, v59, v60, v61, v62, v63, v64, v74, v80);
  if (!OUTLINED_FUNCTION_102_0(v65, v66, v67, v68))
  {
    __swift_destroy_boxed_opaque_existential_1(v86);
    return 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v86);
  return 0x72616853656D6F48;
}

uint64_t sub_1E3B8468C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for LibDataSourceManager(0);
  result = sub_1E4200514();
  *a2 = result;
  return result;
}

uint64_t sub_1E3B846CC(uint64_t a1)
{
  v3 = *(a1 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier);
  v2 = *(a1 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier + 8);
  v8 = v3;
  v9 = v2;

  v4 = OUTLINED_FUNCTION_75();
  MEMORY[0x1E69109E0](v4);
  v11 = v9;
  v12 = 0;
  v10 = v8;
  OUTLINED_FUNCTION_11_3(v1 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_menuDataCache, &v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF341D0, &qword_1E42BF0D8);
  sub_1E3CA4D10();
  swift_endAccess();
  OUTLINED_FUNCTION_9_2();
  (*(v5 + 320))(0);
  OUTLINED_FUNCTION_9_2();
  return (*(v6 + 264))(1);
}

void sub_1E3B847F8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1E4207384();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v2; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = OUTLINED_FUNCTION_11_6();
        v5 = MEMORY[0x1E6911E60](v4);
      }

      else
      {
        v5 = *(a1 + 8 * i + 32);
      }

      sub_1E3B846CC(v5);
    }
  }
}

void sub_1E3B848AC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v37 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0, &unk_1E429D3D0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v36 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF341B0, &qword_1E42BF0B8);
  OUTLINED_FUNCTION_0_10();
  v39 = v6;
  v40 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v38 = &v36 - v8;
  v9 = OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_cancellables;
  OUTLINED_FUNCTION_3_0(v1 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_cancellables, v45);
  v41 = v1;
  v42 = v9;
  v10 = *(v1 + v9);
  if ((v10 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_1E4207344();
    OUTLINED_FUNCTION_106();
    sub_1E42004F4();
    sub_1E3B8B148(&qword_1ECF28DA0, MEMORY[0x1E695BF10]);
    OUTLINED_FUNCTION_57();
    sub_1E4206664();
    v12 = v45[3];
    v11 = v45[4];
    v14 = v45[5];
    v13 = v45[6];
    v15 = v45[7];
  }

  else
  {
    v16 = -1 << *(v10 + 32);
    v11 = v10 + 56;
    v14 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(v10 + 56);
    swift_bridgeObjectRetain_n();
    v13 = 0;
    v12 = v10;
  }

  if (v12 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v19 = v13;
    v20 = v15;
    v21 = v13;
    if (!v15)
    {
      break;
    }

LABEL_12:
    v22 = (v20 - 1) & v20;
    v23 = *(*(v12 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));

    if (!v23)
    {
LABEL_18:
      sub_1E34AF4DC(v12);

      v25 = v41;
      *(v41 + v42) = MEMORY[0x1E69E7CD0];

      v26 = v37;
      __swift_project_boxed_opaque_existential_1(v37, v37[3]);
      v27 = OUTLINED_FUNCTION_34();
      *&v43[0] = v28(v27);
      sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
      v29 = sub_1E4206A04();
      v44 = v29;
      v30 = sub_1E42069A4();
      v31 = v36;
      __swift_storeEnumTagSinglePayload(v36, 1, 1, v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF341B8, &qword_1E42BF0C0);
      sub_1E328FCF4(&qword_1EE28A200, &qword_1ECF341B8, &qword_1E42BF0C0);
      sub_1E3746800();
      v32 = v38;
      sub_1E42007D4();
      sub_1E325F7A8(v31, &unk_1ECF2D2B0, &unk_1E429D3D0);

      OUTLINED_FUNCTION_4_0();
      v33 = swift_allocObject();
      OUTLINED_FUNCTION_105_2(v33);
      swift_weakInit();
      sub_1E327F454(v26, v43);
      v34 = swift_allocObject();
      sub_1E37DADF4(v43, v34 + 16);
      *(v34 + 56) = v43;
      sub_1E328FCF4(&qword_1EE28A298, &qword_1ECF341B0, &qword_1E42BF0B8);
      v35 = v40;
      sub_1E4200844();

      (*(v39 + 8))(v32, v35);
      OUTLINED_FUNCTION_11_3(v25 + v42, v43);
      sub_1E42004C4();
      swift_endAccess();

      OUTLINED_FUNCTION_25_2();
      return;
    }

    while (1)
    {
      sub_1E42004E4();

      v13 = v21;
      v15 = v22;
      if ((v12 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v24 = sub_1E42073C4();
      if (v24)
      {
        v44 = v24;
        sub_1E42004F4();
        swift_dynamicCast();
        v21 = v13;
        v22 = v15;
        if (*&v43[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= ((v14 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v20 = *(v11 + 8 * v21);
    ++v19;
    if (v20)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1E3B84DB0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_9_5();
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v62 = v8 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v58 - v11;
  v13 = sub_1E324FBDC();
  v61 = *(v6 + 16);
  v61(v12, v13, v4);
  sub_1E327F454(v3, v66);
  sub_1E327F454(v3, v65);

  v14 = sub_1E41FFC94();
  v15 = sub_1E4206814();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = OUTLINED_FUNCTION_100();
    v60 = v4;
    v17 = v16;
    v18 = swift_slowAlloc();
    v63 = v6;
    v64 = v18;
    *v17 = 136315650;
    type metadata accessor for LibMenuItem(0);
    v19 = OUTLINED_FUNCTION_22_53();
    v20 = MEMORY[0x1E6910C30](v19);
    v22 = sub_1E3270FC8(v20, v21, &v64);
    v59 = v1;
    v23 = v22;

    *(v17 + 4) = v23;
    *(v17 + 12) = 2080;
    v58[1] = v13;
    __swift_project_boxed_opaque_existential_1(v66, v66[3]);
    OUTLINED_FUNCTION_33();
    v24 = OUTLINED_FUNCTION_11_6();
    v26 = v25(v24);
    __swift_destroy_boxed_opaque_existential_1(v66);
    v27 = OUTLINED_FUNCTION_32_0();
    sub_1E3270FC8(v27, v28, v29);
    OUTLINED_FUNCTION_12_1();

    *(v17 + 14) = v26;
    *(v17 + 22) = 2080;
    v30 = v65[4];
    __swift_project_boxed_opaque_existential_1(v65, v65[3]);
    v31 = OUTLINED_FUNCTION_50();
    v1 = v59;
    v33 = v32(v31, v30);
    __swift_destroy_boxed_opaque_existential_1(v65);
    v34 = OUTLINED_FUNCTION_32_0();
    sub_1E3270FC8(v34, v35, v36);
    OUTLINED_FUNCTION_12_1();

    *(v17 + 24) = v33;
    _os_log_impl(&dword_1E323F000, v14, v15, "LibDataSourceManager:: receive updated menus %s from %s, name %s", v17, 0x20u);
    swift_arrayDestroy();
    v6 = v63;
    OUTLINED_FUNCTION_6_0();
    v4 = v60;
    OUTLINED_FUNCTION_6_0();

    v37 = OUTLINED_FUNCTION_133_5();
    (v14)(v37);
  }

  else
  {

    v38 = OUTLINED_FUNCTION_133_5();
    (v14)(v38);
    __swift_destroy_boxed_opaque_existential_1(v66);
    __swift_destroy_boxed_opaque_existential_1(v65);
  }

  OUTLINED_FUNCTION_5_0(v1 + 16, v66);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_20;
  }

  v40 = Strong;
  OUTLINED_FUNCTION_26_0();
  if (((*(v41 + 848))() & 1) != 0 && *(v40 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_isMPLibraryUpdateInProgress) == 1)
  {
    v42 = v62;
    v43 = OUTLINED_FUNCTION_16_0();
    v44(v43);

    v45 = sub_1E41FFC94();
    v46 = sub_1E4206814();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = OUTLINED_FUNCTION_6_21();
      v63 = v6;
      v48 = v47;
      v61 = OUTLINED_FUNCTION_100();
      v65[0] = v61;
      *v48 = 136315138;
      type metadata accessor for LibMenuItem(0);
      v49 = OUTLINED_FUNCTION_22_53();
      v50 = MEMORY[0x1E6910C30](v49);
      v52 = sub_1E3270FC8(v50, v51, v65);

      *(v48 + 4) = v52;
      _os_log_impl(&dword_1E323F000, v45, v46, "LibDataSourceManager:: receive updated menus %s while local source is loading.", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v61);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_55();
    }

    (v14)(v42, v4);
  }

  OUTLINED_FUNCTION_30_1();
  if ((*(v53 + 408))())
  {

LABEL_19:
    sub_1E3B80F1C();

LABEL_20:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  OUTLINED_FUNCTION_30_1();
  v55 = (*(v54 + 456))();
  if (!sub_1E32AE9B0(v55))
  {

    v56 = 0;
    goto LABEL_18;
  }

  if ((v55 & 0xC000000000000001) != 0)
  {
    v56 = MEMORY[0x1E6911E60](0, v55);
    goto LABEL_16;
  }

  if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v56 = *(v55 + 32);

LABEL_16:

LABEL_18:
    OUTLINED_FUNCTION_30_1();
    (*(v57 + 416))(v56);
    goto LABEL_19;
  }

  __break(1u);
}

void sub_1E3B85314()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_144_0();
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = sub_1E324FBDC();
  (*(v6 + 16))(v10, v11, v4);
  sub_1E327F454(v3, v38);

  v12 = sub_1E41FFC94();
  v13 = sub_1E4206814();

  if (os_log_type_enabled(v12, v13))
  {
    v34 = v1;
    v14 = OUTLINED_FUNCTION_49_0();
    v37[0] = OUTLINED_FUNCTION_72_0();
    *v14 = 136315394;
    type metadata accessor for LibMenuItem(0);
    v15 = OUTLINED_FUNCTION_22_53();
    v16 = MEMORY[0x1E6910C30](v15);
    sub_1E3270FC8(v16, v17, v37);
    v35 = v3;
    OUTLINED_FUNCTION_12_1();

    *(v14 + 4) = v3;
    *(v14 + 12) = 2080;
    __swift_project_boxed_opaque_existential_1(v38, v38[3]);
    OUTLINED_FUNCTION_33();
    v18 = OUTLINED_FUNCTION_114_0();
    v20 = v19(v18);
    __swift_destroy_boxed_opaque_existential_1(v38);
    v21 = OUTLINED_FUNCTION_32_0();
    sub_1E3270FC8(v21, v22, v23);
    OUTLINED_FUNCTION_12_1();

    *(v14 + 14) = v20;
    v3 = v35;
    _os_log_impl(&dword_1E323F000, v12, v13, "LibDataSourceManager:: receive menus %s from %s", v14, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    v1 = v34;
    OUTLINED_FUNCTION_6_0();

    (*(v6 + 8))(v10, v4);
  }

  else
  {

    (*(v6 + 8))(v10, v4);
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  OUTLINED_FUNCTION_5_0(v1 + 16, v37);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_17:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v25 = Strong;
  sub_1E3B7BA30(1);
  sub_1E3B80F1C();
  if ((*(*v25 + 408))())
  {

LABEL_14:
    sub_1E327F454(v3, v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640, &qword_1E429E310);
    OUTLINED_FUNCTION_9_5();
    v30 = type metadata accessor for LibLocalSource();
    if (OUTLINED_FUNCTION_102_0(&v36, v38, v31, v30))
    {
      v32 = v36;
      OUTLINED_FUNCTION_21();
      (*(v33 + 224))();
    }

    goto LABEL_17;
  }

  OUTLINED_FUNCTION_12_6();
  v27 = (*(v26 + 456))();
  if (!sub_1E32AE9B0(v27))
  {

    v28 = 0;
    goto LABEL_13;
  }

  if ((v27 & 0xC000000000000001) != 0)
  {
    v28 = MEMORY[0x1E6911E60](0, v27);
    goto LABEL_11;
  }

  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v28 = *(v27 + 32);

LABEL_11:

LABEL_13:
    OUTLINED_FUNCTION_12_6();
    (*(v29 + 416))(v28);
    goto LABEL_14;
  }

  __break(1u);
}

void sub_1E3B85708(uint64_t a1, unint64_t a2)
{
  v4 = sub_1E32AE9B0(a2);
  for (i = 0; v4 != i; ++i)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = OUTLINED_FUNCTION_39_3();
      v6 = MEMORY[0x1E6911E60](v8);
    }

    else
    {
      if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v6 = *(a2 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      return;
    }

    v7 = *(v6 + 72) == *(a1 + 72) && *(v6 + 80) == *(a1 + 80);
    if (v7 || (sub_1E42079A4() & 1) != 0)
    {
      v9 = *(v6 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier) == *(a1 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier) && *(v6 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier + 8) == *(a1 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier + 8);
      if (!v9 && (sub_1E42079A4() & 1) == 0)
      {
LABEL_31:

        return;
      }

      OUTLINED_FUNCTION_8();
      v11 = (*(v10 + 288))();
      if (!v11)
      {
        return;
      }

      v12 = v11;
      v13 = sub_1E32AE9B0(v11);
      if (!v13)
      {
LABEL_29:

        return;
      }

      v14 = v13;
      v15 = 0;
      OUTLINED_FUNCTION_111();
      v24 = *(v16 + 288);
      while (1)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v17 = OUTLINED_FUNCTION_39_3();
          v18 = MEMORY[0x1E6911E60](v17);
        }

        else
        {
          if (v15 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_36;
          }

          v18 = OUTLINED_FUNCTION_88_9();
        }

        v19 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_35;
        }

        v24(v18);
        v20 = OUTLINED_FUNCTION_146();
        sub_1E3B85708(v20, v21);
        v23 = v22;

        if (!v23)
        {

          goto LABEL_31;
        }

        ++v15;
        if (v19 == v14)
        {
          goto LABEL_29;
        }
      }
    }
  }
}

void sub_1E3B8593C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v111 = v4;
  v5 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_20(v10 - v9);
  v110 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v108 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_20(v14 - v13);
  v15 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v23);
  v25 = v103 - v24;
  OUTLINED_FUNCTION_5_0(v1 + 16, &v115);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    if (v3)
    {
      sub_1E324FBDC();
      v28 = OUTLINED_FUNCTION_101();
      v29(v28);
      v30 = v3;
      v31 = sub_1E41FFC94();
      v32 = sub_1E42067F4();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = v15;
        v34 = OUTLINED_FUNCTION_6_21();
        v35 = OUTLINED_FUNCTION_160();
        *v34 = 138412290;
        v36 = v3;
        v37 = _swift_stdlib_bridgeErrorToNSError();
        *(v34 + 4) = v37;
        *v35 = v37;
        _os_log_impl(&dword_1E323F000, v31, v32, "LibDataSourceManager:: error fetching family members: %@", v34, 0xCu);
        sub_1E325F7A8(v35, &unk_1ECF28E30, &qword_1E429E820);
        OUTLINED_FUNCTION_6_0();
        v15 = v33;
        OUTLINED_FUNCTION_6_0();
      }

      (*(v17 + 8))(v21, v15);
      OUTLINED_FUNCTION_63_7(OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_needsFamilyFetch);
    }

    else
    {
      v103[0] = v7;
      v103[1] = v5;
      v38 = MEMORY[0x1E69E7CD0];
      v114 = MEMORY[0x1E69E7CD0];
      OUTLINED_FUNCTION_111();
      v40 = *(v39 + 696);
      v105 = v27;
      v41 = v40();
      v42 = *(v41 + 16);
      if (v42)
      {
        v104 = v15;
        do
        {
          sub_1E327F454(v41 + 32, v116);
          sub_1E327F454(v116, v112);
          v43 = OUTLINED_FUNCTION_146();
          __swift_instantiateConcreteTypeFromMangledNameV2(v43, v44);
          v45 = OUTLINED_FUNCTION_106();
          type metadata accessor for LibFamilySharingSource(v45);
          v46 = OUTLINED_FUNCTION_95_8();
          if (OUTLINED_FUNCTION_90_0(v46, v112, v47, v48))
          {

            v50 = v116[3];
            v49 = v116[4];
            __swift_project_boxed_opaque_existential_1(v116, v116[3]);
            OUTLINED_FUNCTION_33();
            v52 = v51(v50, v49);
            sub_1E3277398(v112, v52, v53);
          }

          OUTLINED_FUNCTION_120_4(v116);
          --v42;
        }

        while (v42);

        v15 = v104;
        v38 = MEMORY[0x1E69E7CD0];
      }

      else
      {
      }

      OUTLINED_FUNCTION_4_0();
      v54 = swift_allocObject();
      v104 = v54;
      *(v54 + 16) = v38;
      v55 = (v54 + 16);
      v56 = MEMORY[0x1E69E7CC0];
      v113 = MEMORY[0x1E69E7CC0];
      v57 = v111;
      v58 = *(v111 + 16);
      if (v58)
      {
        v59 = v15;
        type metadata accessor for LibFamilySharingSource(0);
        v60 = (v57 + 32);
        do
        {
          memcpy(v116, v60, 0x58uLL);
          sub_1E3B8B218(v116, v112);
          v61 = sub_1E3F5D6D0(v116);

          MEMORY[0x1E6910BF0](v62);
          v63 = *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v63 >> 1)
          {
            OUTLINED_FUNCTION_35(v63);
            sub_1E42062F4();
          }

          v64 = sub_1E4206324();
          v56 = v113;
          v65 = (*(*v61 + 144))(v64);
          sub_1E3277398(v112, v65, v66);

          v60 += 88;
          --v58;
        }

        while (v58);
        v15 = v59;
      }

      v67 = sub_1E324FBDC();
      v68 = v15;
      v111 = *(v17 + 16);
      (v111)(v25, v67, v15);
      v69 = sub_1E41FFC94();
      v70 = sub_1E4206814();
      if (OUTLINED_FUNCTION_104(v70))
      {
        *OUTLINED_FUNCTION_125_0() = 0;
        OUTLINED_FUNCTION_36_4();
        _os_log_impl(v71, v72, v73, v74, v75, 2u);
        OUTLINED_FUNCTION_55();
      }

      v76 = *(v17 + 8);
      v76(v25, v68);
      v77 = v114;
      v78 = *v55;

      v79 = sub_1E3868C04(v77, v78);

      if (v79)
      {

        v80 = v106;
        v81 = OUTLINED_FUNCTION_8_6();
        (v111)(v81);
        v82 = sub_1E41FFC94();
        v83 = sub_1E4206814();
        if (OUTLINED_FUNCTION_104(v83))
        {
          v84 = OUTLINED_FUNCTION_125_0();
          *v84 = 0;
          _os_log_impl(&dword_1E323F000, v82, v83, "LibDataSourceManager:: family memebers list is the same as existing, no need to update", v84, 2u);
          OUTLINED_FUNCTION_6_0();
        }

        else
        {
        }

        v76(v80, v68);
      }

      else
      {
        v85 = sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
        v86 = sub_1E4206A04();
        OUTLINED_FUNCTION_4_0();
        v87 = swift_allocObject();
        OUTLINED_FUNCTION_105_2(v87);
        swift_weakInit();
        v88 = swift_allocObject();
        v88[2] = v85;
        v88[3] = v56;
        v88[4] = v104;
        v112[4] = sub_1E3B8B274;
        v112[5] = v88;
        v112[0] = MEMORY[0x1E69E9820];
        v112[1] = 1107296256;
        OUTLINED_FUNCTION_14_1();
        v112[2] = v89;
        v112[3] = &block_descriptor_75_0;
        v90 = _Block_copy(v112);

        v91 = v107;
        sub_1E4203FE4();
        v112[0] = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_3_131();
        sub_1E3B8B148(v92, v93);
        v94 = OUTLINED_FUNCTION_97_1();
        v96 = __swift_instantiateConcreteTypeFromMangledNameV2(v94, v95);
        OUTLINED_FUNCTION_47();
        v99 = sub_1E328FCF4(v97, v98, &qword_1E429B000);
        v100 = v109;
        OUTLINED_FUNCTION_155_4(v112, v96, v99);
        MEMORY[0x1E6911380](0, v91, v100, v90);
        _Block_release(v90);

        OUTLINED_FUNCTION_15_5();
        v101(v100, &qword_1E429B000);
        OUTLINED_FUNCTION_15_5();
        v102(v91, v110);
      }
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B8621C()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_144_0();
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_5_0(v1 + 16, &v29);
  if (swift_weakLoadStrong())
  {
    v10 = sub_1E3B86680(v5);
    sub_1E3B868A4(v10);

    v27 = 12;

    sub_1E4200524();

    sub_1E324FBDC();
    v11 = OUTLINED_FUNCTION_78_11();
    v12(v11);

    v13 = sub_1E41FFC94();
    v14 = sub_1E4206814();

    if (os_log_type_enabled(v13, v14))
    {
      v26 = v6;
      v15 = OUTLINED_FUNCTION_6_21();
      v16 = OUTLINED_FUNCTION_100();
      v28 = v16;
      *v15 = 136315138;
      OUTLINED_FUNCTION_5_0(v3 + 16, &v27);

      v17 = sub_1E4206634();
      v19 = v18;

      v20 = sub_1E3270FC8(v17, v19, &v28);

      *(v15 + 4) = v20;
      OUTLINED_FUNCTION_36_4();
      _os_log_impl(v21, v22, v23, v24, v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_55();

      (*(v8 + 8))(v0, v26);
    }

    else
    {

      (*(v8 + 8))(v0, v6);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void *sub_1E3B86460(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1E4207384();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v21 = MEMORY[0x1E69E7CC0];
  result = sub_1E3B72E58(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v21;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1E6911E60](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = type metadata accessor for LibHomeSharingSource(0);
      v19 = v8;
      v9 = sub_1E3B8B148(&qword_1ECF341A8, type metadata accessor for LibHomeSharingSource);
      v20 = v9;
      v21 = v3;
      v18[0] = v7;
      v11 = *(v3 + 16);
      v10 = *(v3 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1E3B72E58((v10 > 1), v11 + 1, 1);
        v8 = v19;
        v12 = v20;
      }

      else
      {
        v12 = v9;
      }

      ++v5;
      v13 = __swift_mutable_project_boxed_opaque_existential_1(v18, v8);
      v14 = MEMORY[0x1EEE9AC00](v13);
      v16 = v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v16, v14);
      sub_1E3B8AB08(v11, v16, &v21, v8, v12);
      __swift_destroy_boxed_opaque_existential_1(v18);
      v3 = v21;
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

void *sub_1E3B86680(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1E4207384();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v20 = MEMORY[0x1E69E7CC0];
  result = sub_1E3B72E58(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v20;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1E6911E60](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = type metadata accessor for LibFamilySharingSource(0);
      v18 = v7;
      v8 = sub_1E3B8B148(&qword_1ECF341A0, type metadata accessor for LibFamilySharingSource);
      v19 = v8;
      v20 = v3;
      v17[0] = v6;
      v10 = *(v3 + 16);
      v9 = *(v3 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1E3B72E58((v9 > 1), v10 + 1, 1);
        v7 = v18;
        v11 = v19;
      }

      else
      {
        v11 = v8;
      }

      ++v5;
      v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v7);
      v13 = MEMORY[0x1EEE9AC00](v12);
      v15 = v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v16 + 16))(v15, v13);
      sub_1E3B8AB08(v10, v15, &v20, v7, v11);
      __swift_destroy_boxed_opaque_existential_1(v17);
      v3 = v20;
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

void sub_1E3B868A4(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_8();
  v5 = (*(v4 + 696))();
  v21 = v5;
  v6 = v5[2];
  v7 = (v5 + 4);

  for (i = 0; ; ++i)
  {
    if (v6 == i)
    {

      sub_1E3B86AE8(v11);
      v5 = v21;
LABEL_16:
      *&v20[0] = MEMORY[0x1E69E7CD0];
      sub_1E3B7F194(v5);

      OUTLINED_FUNCTION_3_0(v2 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_availableSources, v20);
      OUTLINED_FUNCTION_164_2();
      sub_1E3B7CF98();
      OUTLINED_FUNCTION_9_2();
      (*(v17 + 456))();
      sub_1E3B80F1C();

      return;
    }

    if (i >= v5[2])
    {
      __break(1u);
      goto LABEL_18;
    }

    sub_1E327F454(v7, v20);
    sub_1E37DADF4(v20, v19);
    v9 = OUTLINED_FUNCTION_146();
    __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
    type metadata accessor for LibHomeSharingSource(0);
    if (swift_dynamicCast())
    {
      break;
    }

    v7 += 40;
  }

  v12 = v5[2];
  if (v12 < i)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v13 = *(a1 + 16);
  v14 = v12 + v13;
  if (!__OFADD__(v12, v13))
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = v5;
    if (!isUniquelyReferenced_nonNull_native || v14 > v5[3] >> 1)
    {
      if (v12 <= v14)
      {
        v16 = v12 + v13;
      }

      else
      {
        v16 = v12;
      }

      v5 = sub_1E3B890A0(isUniquelyReferenced_nonNull_native, v16, 1, v5);
      v21 = v5;
    }

    sub_1E3B8A9E0(i, i, v13, a1);
    v21 = v5;
    goto LABEL_16;
  }

LABEL_19:
  __break(1u);
}

uint64_t sub_1E3B86AE8(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1E3B8A798(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640, &qword_1E429E310);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

double sub_1E3B86BC4()
{
  OUTLINED_FUNCTION_9_5();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_131_0();
  v3(v1);
  v4 = sub_1E41FFC94();
  v5 = sub_1E4206814();
  if (os_log_type_enabled(v4, v5))
  {
    *OUTLINED_FUNCTION_125_0() = 0;
    OUTLINED_FUNCTION_12_17();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_21_0();
  }

  v11 = OUTLINED_FUNCTION_57();
  v12(v11);
  OUTLINED_FUNCTION_5_0(v0 + 16, v14);
  if (swift_weakLoadStrong())
  {
    sub_1E3B86D0C();
  }

  return result;
}

void sub_1E3B86D0C()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_156_0();
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  v7 = (v5 - v6);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - v9;
  if ([objc_opt_self() isStoreOrPressDemoMode])
  {
LABEL_14:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v11 = sub_1E41A3110();
  v39 = *(v3 + 16);
  v40 = v3 + 16;
  v39(v10, v11, v1);
  v12 = sub_1E41FFC94();
  v13 = sub_1E4206814();
  v14 = &selRef_setWaitingForTransactionToStart_;
  if (os_log_type_enabled(v12, v13))
  {
    v37 = v7;
    v38 = v3;
    v15 = OUTLINED_FUNCTION_6_21();
    v16 = OUTLINED_FUNCTION_100();
    v41 = v16;
    *v15 = 136315138;
    v17 = [objc_opt_self() sharedCloudController];
    if (!v17)
    {
      goto LABEL_16;
    }

    v18 = v17;
    sub_1E3B88E3C();

    v19 = OUTLINED_FUNCTION_75();
    v22 = sub_1E3270FC8(v19, v20, v21);

    *(v15 + 4) = v22;
    _os_log_impl(&dword_1E323F000, v12, v13, "LibDataSourceManager:: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    v23 = *(v38 + 8);
    v24 = OUTLINED_FUNCTION_8_6();
    v23(v24);
    v7 = v37;
    v14 = &selRef_setWaitingForTransactionToStart_;
  }

  else
  {

    v23 = *(v3 + 8);
    v25 = OUTLINED_FUNCTION_8_6();
    v23(v25);
  }

  v26 = OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_isMPLibraryUpdateInProgress;
  v27 = *(v0 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_isMPLibraryUpdateInProgress);
  v28 = [objc_opt_self() v14[61]];
  if (v28)
  {
    v29 = v28;
    v30 = sub_1E3B7E03C();

    *(v0 + v26) = v30 & 1;
    if ((v30 & 1) == 0 && ((v27 ^ 1) & 1) == 0)
    {
      OUTLINED_FUNCTION_111();
      if ((*(v31 + 848))())
      {
        v32 = sub_1E324FBDC();
        v39(v7, v32, v1);
        v33 = sub_1E41FFC94();
        v34 = sub_1E4206814();
        if (OUTLINED_FUNCTION_104(v34))
        {
          v35 = OUTLINED_FUNCTION_125_0();
          *v35 = 0;
          _os_log_impl(&dword_1E323F000, v33, v34, "LibDataSourceManager:: refetch local source since it finish updating", v35, 2u);
          OUTLINED_FUNCTION_6_0();
        }

        (v23)(v7, v1);
        sub_1E3B7E10C();
      }
    }

    sub_1E3B7E074(*(v0 + v26));
    goto LABEL_14;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_1E3B87054()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_156_0();
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v8 = [objc_opt_self() sharedInstance];
  v9 = [v8 isNetworkReachable];

  if (TVAppFeature.isEnabled.getter(12, v10, v11))
  {
    sub_1E41FF204();
    sub_1E41FF1F4();
    v12 = sub_1E41FF1E4();

    if (v12)
    {
LABEL_3:
      sub_1E3B874A4();
      if (v13)
      {
        OUTLINED_FUNCTION_111();
        (*(v14 + 272))(1);
      }

      else
      {
        sub_1E3B835EC();
      }

LABEL_32:
      LOBYTE(v33[0]) = 11;

      sub_1E4200524();

      OUTLINED_FUNCTION_25_2();
      return;
    }
  }

  else if (v9)
  {
    goto LABEL_3;
  }

  sub_1E324FBDC();
  OUTLINED_FUNCTION_131_0();
  v15(v1);
  v16 = sub_1E41FFC94();
  v17 = sub_1E42067E4();
  if (OUTLINED_FUNCTION_104(v17))
  {
    v18 = OUTLINED_FUNCTION_160();
    *v18 = 67109120;
    _os_log_impl(&dword_1E323F000, v16, v17, "LibDataSourceManager:: will not update home sharing lib with network reachable status: %{BOOL}d", v18, 8u);
    OUTLINED_FUNCTION_21_0();
  }

  (*(v6 + 8))(v1, v4);
  v19 = OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_availableSources;
  OUTLINED_FUNCTION_11_3(v0 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_availableSources, &v34);
  OUTLINED_FUNCTION_130_7();
  while (1)
  {
    if (v3 == v4)
    {
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_94_9();
    if (v20)
    {
      __break(1u);
      goto LABEL_34;
    }

    sub_1E327F454(&v16[-5] + v2, v33);
    sub_1E37DADF4(v33, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640, &qword_1E429E310);
    v21 = OUTLINED_FUNCTION_144_0();
    type metadata accessor for LibHomeSharingSource(v21);
    if (OUTLINED_FUNCTION_84_10(&v31, v32, v1))
    {
      break;
    }

    ++v4;
    v2 += 40;
  }

  v22 = (v4 + 1);
  OUTLINED_FUNCTION_132_5();
  if (v24 == v4)
  {
LABEL_31:
    v28 = OUTLINED_FUNCTION_35_5();
    sub_1E3B8A8D4(v28, v29);
    swift_endAccess();
    sub_1E3B7CF98();
    OUTLINED_FUNCTION_9_2();
    (*(v30 + 456))();
    sub_1E3B80F1C();

    goto LABEL_32;
  }

  while (v22 < v23)
  {
    sub_1E327F454(v16 + v2, v33);
    sub_1E37DADF4(v33, v32);
    if (OUTLINED_FUNCTION_84_10(&v31, v32, v1))
    {
    }

    else
    {
      if (v22 != v4)
      {
        if (v4 < 0)
        {
          goto LABEL_35;
        }

        isa = v16[2].isa;
        if (v4 >= isa)
        {
          goto LABEL_36;
        }

        sub_1E327F454(&v16[5 * v4 + 4], v33);
        if (v22 >= isa)
        {
          goto LABEL_37;
        }

        sub_1E327F454(v16 + v2, v32);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + v19) = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          *(v0 + v19) = OUTLINED_FUNCTION_166_2();
        }

        OUTLINED_FUNCTION_94_9();
        if (v20)
        {
          goto LABEL_38;
        }

        v27 = &v16[5 * v4];
        __swift_destroy_boxed_opaque_existential_1(&v27[4].isa);
        sub_1E37DADF4(v32, &v27[4]);
        *(v0 + v19) = v16;
        if (v22 >= v16[2].isa)
        {
          goto LABEL_39;
        }

        __swift_destroy_boxed_opaque_existential_1((&v16->isa + v2));
        sub_1E37DADF4(v33, v16 + v2);
        *(v0 + v19) = v16;
      }

      ++v4;
    }

    v22 = (v22 + 1);
    v23 = v16[2].isa;
    v2 += 40;
    if (v22 == v23)
    {
      if (v22 < v4)
      {
        goto LABEL_40;
      }

      goto LABEL_31;
    }
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

void sub_1E3B874A4()
{
  v4 = objc_opt_self();
  v5 = sub_1E3B8A800(v4);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  (*(*v0 + 672))();
  OUTLINED_FUNCTION_7_126();
  while (1)
  {
    if (v3 == v2)
    {

      v26 = 0;
      memset(v25, 0, sizeof(v25));
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_68_18();
    if (v7)
    {
      __break(1u);
      return;
    }

    sub_1E327F454(v1, v24);
    sub_1E327F454(v24, v25);
    v8 = OUTLINED_FUNCTION_75();
    __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
    v10 = OUTLINED_FUNCTION_247();
    v11 = type metadata accessor for LibHomeSharingSource(v10);
    if (OUTLINED_FUNCTION_115_3(v23, v25, v12, v11))
    {
      break;
    }

    ++v2;
    OUTLINED_FUNCTION_120_4(v24);
  }

  sub_1E37DADF4(v24, v25);
LABEL_11:
  sub_1E3B891D8(v25, v23);
  if (v23[3])
  {
    v13 = OUTLINED_FUNCTION_97_10();
    v15 = sub_1E37DADF4(v13, v14);
    MEMORY[0x1EEE9AC00](v15);
    v22[2] = v24;
    sub_1E3B805A8(sub_1E3B8B290, v22, v6);

    sub_1E325F7A8(v25, &unk_1ECF2A740, &qword_1E42EF010);
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    OUTLINED_FUNCTION_82();
    sub_1E325F7A8(v16, v17, v18);

    OUTLINED_FUNCTION_82();
    sub_1E325F7A8(v19, v20, v21);
  }
}

void sub_1E3B876D0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  sub_1E324FBDC();
  v3 = OUTLINED_FUNCTION_78_11();
  v4(v3);

  v5 = sub_1E41FFC94();
  v6 = sub_1E4206814();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_49_0();
    v24 = OUTLINED_FUNCTION_72_0();
    *v7 = 136315394;
    (*(*v0 + 456))();
    v8 = OUTLINED_FUNCTION_106();
    type metadata accessor for LibMenuItem(v8);
    v9 = OUTLINED_FUNCTION_20_2();
    v10 = MEMORY[0x1E6910C30](v9);
    v12 = v11;

    v13 = sub_1E3270FC8(v10, v12, &v24);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2080;
    v15 = (*(*v1 + 696))(v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640, &qword_1E429E310);
    v16 = OUTLINED_FUNCTION_20_2();
    v17 = MEMORY[0x1E6910C30](v16);
    v19 = v18;

    sub_1E3270FC8(v17, v19, &v24);
    OUTLINED_FUNCTION_10_23();

    *(v7 + 14) = v15;
    _os_log_impl(&dword_1E323F000, v5, v6, "LibDataSourceManager: appWillEnterForeground, resolved menus %s, sources %s", v7, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_21_0();
  }

  v20 = OUTLINED_FUNCTION_13_8();
  v21(v20);
  v22 = [objc_opt_self() sharedCloudController];
  if (v22)
  {
    v23 = v22;
    [v22 becomeActive];

    [objc_opt_self() beginDiscoveringMediaLibraries];
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    __break(1u);
  }
}

double sub_1E3B879B4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);

  return result;
}

void sub_1E3B879F8()
{
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  sub_1E324FBDC();
  v1 = OUTLINED_FUNCTION_101();
  v2(v1);
  v3 = sub_1E41FFC94();
  v4 = sub_1E4206814();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_125_0();
    *v5 = 0;
    _os_log_impl(&dword_1E323F000, v3, v4, "LibDataSourceManager: appDidEnterBackground", v5, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  v6 = OUTLINED_FUNCTION_16_0();
  v7(v6);
  [objc_opt_self() endDiscoveringMediaLibraries];
  v8 = [objc_opt_self() sharedCloudController];
  if (v8)
  {
    v9 = v8;
    [v8 resignActive];
  }

  else
  {
    __break(1u);
  }
}

void sub_1E3B87BA8()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_9_5();
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_5_0(v0 + 16, &v59);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_1E324FBDC();
    OUTLINED_FUNCTION_131_0();
    v10(v1);
    v11 = sub_1E41FFC94();
    v12 = sub_1E4206814();
    if (os_log_type_enabled(v11, v12))
    {
      *OUTLINED_FUNCTION_125_0() = 0;
      OUTLINED_FUNCTION_12_17();
      _os_log_impl(v13, v14, v15, v16, v17, 2u);
      OUTLINED_FUNCTION_21_0();
    }

    v18 = v6 + 8;
    v19 = OUTLINED_FUNCTION_57();
    v20(v19);
    OUTLINED_FUNCTION_9_2();
    v22 = v9;
    (*(v21 + 696))();
    OUTLINED_FUNCTION_7_126();
    v23 = &unk_1ECF3B640;
    while (1)
    {
      if (v2 == v18)
      {

        goto LABEL_11;
      }

      OUTLINED_FUNCTION_68_18();
      if (v24)
      {
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      sub_1E327F454(v4, v57);
      v25 = OUTLINED_FUNCTION_97_10();
      sub_1E327F454(v25, v26);
      v27 = OUTLINED_FUNCTION_75();
      __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
      OUTLINED_FUNCTION_247();
      type metadata accessor for LibLocalSource();
      v29 = OUTLINED_FUNCTION_95_8();
      if (OUTLINED_FUNCTION_115_3(v29, v58, v30, v31))
      {
        break;
      }

      ++v18;
      OUTLINED_FUNCTION_120_4(v57);
    }

    v32 = OUTLINED_FUNCTION_97_10();
    sub_1E37DADF4(v32, v33);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF340B8, &unk_1E42BE938);
    v35 = OUTLINED_FUNCTION_26_11(v34);
    *(v35 + 16) = xmmword_1E4297BE0;
    sub_1E327F454(v58, v35 + 32);
    v4 = OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_activeSources;
    OUTLINED_FUNCTION_3_0(v9 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_activeSources, &v56);
    OUTLINED_FUNCTION_164_2();
    v22 = v9;
    sub_1E3B7CC30();
    OUTLINED_FUNCTION_9_2();
    (*(v36 + 464))(MEMORY[0x1E69E7CC0]);
    __swift_destroy_boxed_opaque_existential_1(v58);
LABEL_11:
    v54 = [objc_opt_self() userHasActiveAccount];
    v37 = OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_availableSources;
    OUTLINED_FUNCTION_11_3(v9 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_availableSources, &v55);
    OUTLINED_FUNCTION_142_6();
    while (1)
    {
      if (v4 == v23)
      {
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_93_6();
      if (v24)
      {
        goto LABEL_39;
      }

      sub_1E327F454(v22 + v3 - 40, v58);
      OUTLINED_FUNCTION_162_4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640, &qword_1E429E310);
      v38 = OUTLINED_FUNCTION_11_14();
      type metadata accessor for LibFamilySharingSource(v38);
      v39 = OUTLINED_FUNCTION_43_36();
      if (OUTLINED_FUNCTION_122_4(v39, v40, v41))
      {
        break;
      }

      ++v23;
      v3 += 40;
    }

    v42 = (v23 + 1);
    OUTLINED_FUNCTION_132_5();
    if (v44 == v23)
    {
LABEL_34:
      v52 = OUTLINED_FUNCTION_125();
      sub_1E3B8A8D4(v52, v53);
      swift_endAccess();
      sub_1E3B7CF98();
      if (v54)
      {
        sub_1E3B7E5C0();
      }

      sub_1E3B7E10C();

      goto LABEL_37;
    }

    while (v42 < v43)
    {
      sub_1E327F454(v22 + v3, v58);
      OUTLINED_FUNCTION_162_4();
      v45 = OUTLINED_FUNCTION_43_36();
      if (OUTLINED_FUNCTION_122_4(v45, v46, v47))
      {
      }

      else
      {
        if (v42 != v23)
        {
          if (v23 < 0)
          {
            goto LABEL_41;
          }

          v48 = *(v22 + 16);
          if (v23 >= v48)
          {
            goto LABEL_42;
          }

          sub_1E327F454(v22 + 32 + 40 * v23, v58);
          if (v42 >= v48)
          {
            goto LABEL_43;
          }

          sub_1E327F454(v22 + v3, v57);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v9 + v37) = v22;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            *(v9 + v37) = OUTLINED_FUNCTION_166_2();
          }

          OUTLINED_FUNCTION_93_6();
          if (v24)
          {
            goto LABEL_44;
          }

          v50 = v22 + 40 * v23;
          __swift_destroy_boxed_opaque_existential_1((v50 + 32));
          sub_1E37DADF4(v57, v50 + 32);
          *(v9 + v37) = v22;
          if (v42 >= *(v22 + 16))
          {
            goto LABEL_45;
          }

          __swift_destroy_boxed_opaque_existential_1((v22 + v3));
          sub_1E37DADF4(v58, v22 + v3);
          *(v9 + v37) = v22;
        }

        ++v23;
      }

      OUTLINED_FUNCTION_139_4();
      if (v51)
      {
        if (v42 < v23)
        {
          goto LABEL_46;
        }

        goto LABEL_34;
      }
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }

  else
  {
LABEL_37:
    OUTLINED_FUNCTION_25_2();
  }
}

double sub_1E3B88060()
{

  OUTLINED_FUNCTION_13_8();
  sub_1E3B880B0();

  return result;
}

void sub_1E3B880B0()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v25 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v10 = sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  v11 = sub_1E4206A04();
  OUTLINED_FUNCTION_4_0();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_105_2(v12);
  swift_weakInit();
  v26[4] = v5;
  v26[5] = v10;
  OUTLINED_FUNCTION_12_0();
  v26[1] = 1107296256;
  OUTLINED_FUNCTION_14_1();
  v26[2] = v13;
  v26[3] = v3;
  v14 = _Block_copy(v26);

  sub_1E4203FE4();
  v26[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_3_131();
  sub_1E3B8B148(v15, v16);
  v17 = OUTLINED_FUNCTION_146_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
  OUTLINED_FUNCTION_47();
  v21 = sub_1E328FCF4(v19, v20, &qword_1E429B000);
  OUTLINED_FUNCTION_158_4(v26, v22, v21);
  MEMORY[0x1E6911380](0, v1, v0, v14);
  _Block_release(v14);

  v23 = OUTLINED_FUNCTION_11_6();
  v24(v23);
  (*(v8 + 8))(v1, v25);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B882F0()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_9_5();
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_0(v0 + 16, &v58);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v52 = v2;
    OUTLINED_FUNCTION_26_0();
    v9 = (*(v8 + 696))();
    v10 = 0;
    v11 = *(v9 + 16);
    for (i = v9 + 32; ; i += 40)
    {
      if (v11 == v10)
      {

        goto LABEL_9;
      }

      if (v10 >= *(v9 + 16))
      {
        break;
      }

      sub_1E327F454(i, v56);
      v13 = OUTLINED_FUNCTION_97_10();
      sub_1E327F454(v13, v14);
      v15 = OUTLINED_FUNCTION_146();
      __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
      type metadata accessor for LibLocalSource();
      OUTLINED_FUNCTION_95_8();
      if (swift_dynamicCast())
      {

        v17 = OUTLINED_FUNCTION_97_10();
        sub_1E37DADF4(v17, v18);
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF340B8, &unk_1E42BE938);
        v20 = OUTLINED_FUNCTION_26_11(v19);
        *(v20 + 16) = xmmword_1E4297BE0;
        sub_1E327F454(v57, v20 + 32);
        OUTLINED_FUNCTION_3_0(v7 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_activeSources, &v55);
        OUTLINED_FUNCTION_164_2();
        sub_1E3B7CC30();
        OUTLINED_FUNCTION_9_2();
        (*(v21 + 464))(MEMORY[0x1E69E7CC0]);
        __swift_destroy_boxed_opaque_existential_1(v57);
LABEL_9:
        v22 = [objc_opt_self() isRemoteServerConnected];
        v23 = sub_1E324FBDC();
        (*(v4 + 16))(v1, v23, v52);
        v24 = sub_1E41FFC94();
        v25 = sub_1E4206814();
        if (OUTLINED_FUNCTION_104(v25))
        {
          v26 = OUTLINED_FUNCTION_160();
          *v26 = 67109120;
          v26[1] = v22;
          OUTLINED_FUNCTION_36_4();
          _os_log_impl(v27, v28, v29, v30, v31, 8u);
          OUTLINED_FUNCTION_55();
        }

        v33 = *(v4 + 8);
        v32 = v4 + 8;
        v33(v1, v52);
        v34 = v22 ^ 1;
        (*(*v7 + 320))(v34);
        if ((v34 & 1) == 0)
        {
          if (*(v7 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_needsFamilyFetch) == 1)
          {
            sub_1E3B7E5C0();
          }

          [v7 handleHomeSharingUpdates];
LABEL_37:
          sub_1E3B7E10C();

          goto LABEL_38;
        }

        OUTLINED_FUNCTION_111();
        (*(v35 + 464))(MEMORY[0x1E69E7CC0]);
        v36 = OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_availableSources;
        OUTLINED_FUNCTION_11_3(v7 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_availableSources, &v54);
        OUTLINED_FUNCTION_130_7();
        while (1)
        {
          if (v10 == v34)
          {
            goto LABEL_36;
          }

          OUTLINED_FUNCTION_94_9();
          if (v37)
          {
            goto LABEL_40;
          }

          sub_1E327F454(v7 + v32 - 40, v57);
          OUTLINED_FUNCTION_162_4();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640, &qword_1E429E310);
          OUTLINED_FUNCTION_11_14();
          type metadata accessor for LibLocalSource();
          v38 = OUTLINED_FUNCTION_43_36();
          if (!OUTLINED_FUNCTION_84_10(v38, v39, v40))
          {
            break;
          }

          ++v34;
          v32 += 40;
        }

        v41 = v34 + 1;
        OUTLINED_FUNCTION_132_5();
        if (v43 == v34)
        {
LABEL_36:
          v50 = OUTLINED_FUNCTION_34();
          sub_1E3B8A8D4(v50, v51);
          swift_endAccess();
          sub_1E3B7CF98();
          LOBYTE(v57[0]) = 12;

          sub_1E4200524();

          OUTLINED_FUNCTION_63_7(OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_needsFamilyFetch);
          LOBYTE(v57[0]) = 11;

          sub_1E4200524();

          goto LABEL_37;
        }

        while (v41 < v42)
        {
          sub_1E327F454(v7 + v32, v57);
          OUTLINED_FUNCTION_162_4();
          v44 = OUTLINED_FUNCTION_43_36();
          if (OUTLINED_FUNCTION_84_10(v44, v45, v46))
          {

            if (v41 != v34)
            {
              if ((v34 & 0x8000000000000000) != 0)
              {
                goto LABEL_42;
              }

              v47 = v7[2];
              if (v34 >= v47)
              {
                goto LABEL_43;
              }

              sub_1E327F454(&v7[5 * v34 + 4], v57);
              if (v41 >= v47)
              {
                goto LABEL_44;
              }

              sub_1E327F454(v7 + v32, v56);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v7 + v36) = v7;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                *(v7 + v36) = OUTLINED_FUNCTION_166_2();
              }

              OUTLINED_FUNCTION_94_9();
              if (v37)
              {
                goto LABEL_45;
              }

              v49 = &v7[5 * v34];
              __swift_destroy_boxed_opaque_existential_1(v49 + 4);
              sub_1E37DADF4(v56, (v49 + 4));
              *(v7 + v36) = v7;
              OUTLINED_FUNCTION_93_6();
              if (v37)
              {
                goto LABEL_46;
              }

              __swift_destroy_boxed_opaque_existential_1((v7 + v32));
              sub_1E37DADF4(v57, v7 + v32);
              *(v7 + v36) = v7;
            }

            ++v34;
          }

          ++v41;
          v42 = v7[2];
          v32 += 40;
          if (v41 == v42)
          {
            if (v41 < v34)
            {
              goto LABEL_47;
            }

            goto LABEL_36;
          }
        }

LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        return;
      }

      ++v10;
      __swift_destroy_boxed_opaque_existential_1(v56);
    }

    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

LABEL_38:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B888D0()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  v31 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  sub_1E324FBDC();
  v11 = OUTLINED_FUNCTION_101();
  v12(v11);
  v13 = sub_1E41FFC94();
  v14 = sub_1E4206814();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_125_0();
    *v15 = 0;
    _os_log_impl(&dword_1E323F000, v13, v14, "LibDataSourceManager: handleFamilyChange", v15, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  (*(v9 + 8))(v0, v7);
  v16 = sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  v17 = sub_1E4206A04();
  OUTLINED_FUNCTION_4_0();
  v18 = swift_allocObject();
  OUTLINED_FUNCTION_105_2(v18);
  swift_weakInit();
  v32[4] = sub_1E3B8AD70;
  v32[5] = v16;
  OUTLINED_FUNCTION_12_0();
  v32[1] = 1107296256;
  OUTLINED_FUNCTION_14_1();
  v32[2] = v19;
  v32[3] = &block_descriptor_69;
  v20 = _Block_copy(v32);

  sub_1E4203FE4();
  v32[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_3_131();
  sub_1E3B8B148(v21, v22);
  v23 = OUTLINED_FUNCTION_146_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
  OUTLINED_FUNCTION_47();
  v27 = sub_1E328FCF4(v25, v26, &qword_1E429B000);
  OUTLINED_FUNCTION_158_4(v32, v28, v27);
  MEMORY[0x1E6911380](0, v2, v1, v20);
  _Block_release(v20);

  v29 = OUTLINED_FUNCTION_13_8();
  v30(v29);
  (*(v5 + 8))(v2, v31);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B88C54()
{
  v0 = objc_opt_self();
  if ([v0 isLibraryOnlyCountry])
  {
    [v0 isLibraryOnlyCountryResolved];
  }

  OUTLINED_FUNCTION_8();
  v2 = *(v1 + 512);

  return v2();
}

uint64_t sub_1E3B88DA0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1E3B8A784(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = &v5[5 * a1];
    sub_1E37DADF4(v8 + 2, a2);
    result = memmove(v8 + 2, v8 + 72, 40 * (v7 - 1 - a1));
    v5[2] = v7 - 1;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1E3B88E3C()
{
  sub_1E42074B4();
  OUTLINED_FUNCTION_151_5();
  MEMORY[0x1E69109E0]();
  v1 = [v0 isInitialImport];
  v2 = v1 == 0;
  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  MEMORY[0x1E69109E0](v3, v4);

  OUTLINED_FUNCTION_151_5();
  MEMORY[0x1E69109E0](0xD000000000000016);
  v5 = [v0 isUpdateInProgress];
  v6 = v5 == 0;
  if (v5)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v6)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  MEMORY[0x1E69109E0](v7, v8);

  OUTLINED_FUNCTION_151_5();
  MEMORY[0x1E69109E0]();
  v9 = [v0 isJaliscoInitialImport];
  v10 = v9 == 0;
  if (v9)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v10)
  {
    v12 = 0xE500000000000000;
  }

  else
  {
    v12 = 0xE400000000000000;
  }

  MEMORY[0x1E69109E0](v11, v12);

  OUTLINED_FUNCTION_151_5();
  MEMORY[0x1E69109E0]();
  v13 = [v0 isJaliscoUpdateInProgress];
  v14 = v13 == 0;
  if (v13)
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (v14)
  {
    v16 = 0xE500000000000000;
  }

  else
  {
    v16 = 0xE400000000000000;
  }

  MEMORY[0x1E69109E0](v15, v16);

  return 0;
}

uint64_t sub_1E3B88FE4(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      type metadata accessor for LibMenuItem(0);
      result = sub_1E4206314();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1E3B89040()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C3F0, qword_1E42A0B50);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void *sub_1E3B890A0(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF340B8, &unk_1E42BE938);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640, &qword_1E429E310);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E3B891D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A740, &qword_1E42EF010);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3B89248(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A740, &qword_1E42EF010);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_1E3B892B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1E37FEA14(*(a1 + 16), 0);
  v4 = sub_1E39E6CC0(&v7, v3 + 4, v1, a1);
  v5 = v7;

  sub_1E34AF4DC(v5);
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1E3B89374(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1E34AF5E0(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;

  sub_1E3B89418(v8, a2);
  sub_1E4207554();
}

void sub_1E3B89418(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  swift_retain_n();
  v6 = sub_1E4207914();
  if (v6 < v5)
  {
    v7 = v6;
    v8 = sub_1E3B88FE4(v5 / 2);
    v10[0] = v9;
    v10[1] = (v5 / 2);

    sub_1E3B89744(v10, v11, a1, v7, a2);
    if (v2)
    {
      if (v5 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v5 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v5)
  {
    sub_1E3B89544(0, v5, 1, a1, a2);
  }
}

void sub_1E3B89544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v29 = (a5 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier);
    v30 = *a4;
    v5 = (*a4 + 8 * a3 - 8);
    v6 = a1 - a3;
    while (2)
    {
      v27 = v5;
      v28 = a3;
      v7 = *(v30 + 8 * a3);
      v26 = v6;
      do
      {
        v8 = *v5;
        v10 = *(v7 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier);
        v9 = *(v7 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier + 8);
        v11 = (*v5 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier);
        v12 = *v11;
        v13 = v11[1];
        v14 = v10 == *v11 && v9 == v13;
        if (v14 || (sub_1E42079A4() & 1) != 0)
        {
          goto LABEL_9;
        }

        v21 = v29[1];
        if (v10 == *v29 && v9 == v21)
        {
          break;
        }

        v23 = *v29;
        if (sub_1E42079A4())
        {
          break;
        }

        v24 = v12 == v23 && v13 == v21;
        if (!v24 && (sub_1E42079A4() & 1) == 0)
        {
LABEL_9:
          v15 = *(*v7 + 224);

          v17 = v15(v16);
          v18 = (*(*v8 + 224))();

          if (v17 >= v18)
          {
            break;
          }
        }

        if (!v30)
        {
          __break(1u);
          return;
        }

        v19 = *v5;
        v7 = v5[1];
        *v5 = v7;
        v5[1] = v19;
        --v5;
      }

      while (!__CFADD__(v6++, 1));
      a3 = v28 + 1;
      v5 = v27 + 1;
      v6 = v26 - 1;
      if (v28 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1E3B89744(char **a1, uint64_t a2, char **a3, uint64_t a4, uint64_t a5)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    swift_retain_n();
    v7 = MEMORY[0x1E69E7CC0];
LABEL_146:
    v147 = *a1;
    if (!*a1)
    {
      goto LABEL_190;
    }

    swift_retain_n();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_148;
    }

    goto LABEL_184;
  }

  v141 = (a5 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier);
  swift_retain_n();
  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v6;
    v9 = v6 + 1;
    v131 = v6;
    if (v6 + 1 >= v5)
    {
      goto LABEL_47;
    }

    v147 = v5;
    v133 = v7;
    v10 = *a3;
    v142 = (v6 + 1);
    v11 = *&(*a3)[8 * v6 + 8];
    v12 = *&(*a3)[8 * v6];
    v14 = *(v11 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier);
    v13 = *(v11 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier + 8);
    v7 = *(v12 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier);
    v15 = *(v12 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier + 8);

    v16 = v14 == v7 && v13 == v15;
    if (v16 || (sub_1E42079A4() & 1) != 0)
    {
      goto LABEL_9;
    }

    v114 = *(a5 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier);
    v115 = *(a5 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier + 8);
    if (v14 == v114 && v13 == v115)
    {
      v137 = 0;
    }

    else
    {
      if ((sub_1E42079A4() & 1) == 0)
      {
        v117 = v7 == v114 && v15 == v115;
        if (v117 || (sub_1E42079A4() & 1) != 0)
        {
          v18 = 1;
        }

        else
        {
LABEL_9:
          v17 = (*(*v11 + 224))();
          v7 = v12;
          v18 = v17 < (*(*v12 + 224))();
        }

        v137 = v18;
        goto LABEL_11;
      }

      v137 = 0;
    }

LABEL_11:
    if (v146)
    {

LABEL_158:

      return;
    }

    v19 = &v10[8 * v131 + 16];
    v20 = 8 * v131 + 8;
    v9 = v142;
    v21 = v5;
    while (1)
    {
      v143 = v9++;
      if (v9 >= v21)
      {
        break;
      }

      v22 = *(v19 - 1);
      v23 = *v19;
      v148 = v19;
      v24 = *(*v19 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier);
      v25 = *(*v19 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier + 8);
      v7 = *(v22 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier);
      v26 = *(v22 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier + 8);
      v27 = v24 == v7 && v25 == v26;
      if (v27 || (sub_1E42079A4() & 1) != 0)
      {
LABEL_19:
        v28 = *(*v23 + 224);

        v30 = v28(v29);
        v7 = (*(*v22 + 224))();

        v21 = v147;
        v31 = v148;
        if ((v137 ^ (v30 < v7)))
        {
          break;
        }

        goto LABEL_20;
      }

      v32 = *v141;
      v33 = v24 == *v141 && v25 == v141[1];
      if (v33 || (v34 = v141[1], (sub_1E42079A4() & 1) != 0))
      {
        v21 = v147;
        v31 = v148;
        if (v137)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v35 = v7 == v32 && v26 == v34;
        if (!v35 && (sub_1E42079A4() & 1) == 0)
        {
          goto LABEL_19;
        }

        v21 = v147;
        v31 = v148;
        if (!v137)
        {
          v9 = (v143 + 1);
          goto LABEL_44;
        }
      }

LABEL_20:
      v19 = v31 + 8;
      v20 += 8;
    }

    if (!v137)
    {
LABEL_44:
      v7 = v133;
LABEL_45:
      v8 = v131;
      goto LABEL_47;
    }

LABEL_36:
    v36 = v143;
    v9 = (v143 + 1);
    v37 = v131;
    if ((v143 + 1) < v131)
    {
      goto LABEL_181;
    }

    if (v131 < v9)
    {
      v7 = v133;
      v38 = 8 * v131;
      do
      {
        if (v37 != v36)
        {
          v39 = *a3;
          if (!*a3)
          {
            goto LABEL_188;
          }

          v40 = *&v39[v38];
          *&v39[v38] = *&v39[v20];
          *&v39[v20] = v40;
        }

        ++v37;
        v20 -= 8;
        v38 += 8;
      }

      while (v37 < v36--);
      goto LABEL_45;
    }

    v7 = v133;
    v8 = v131;
LABEL_47:
    v42 = a3[1];
    if (v9 < v42)
    {
      if (__OFSUB__(v9, v8))
      {
        goto LABEL_180;
      }

      if (v9 - v8 < a4)
      {
        break;
      }
    }

LABEL_79:
    if (v9 < v8)
    {
      goto LABEL_179;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1E37FFF70(0, *(v7 + 16) + 1, 1, v7);
    }

    v66 = *(v7 + 16);
    v65 = *(v7 + 24);
    v67 = v66 + 1;
    v68 = v131;
    if (v66 >= v65 >> 1)
    {
      v118 = sub_1E37FFF70((v65 > 1), v66 + 1, 1, v7);
      v68 = v131;
      v7 = v118;
    }

    *(v7 + 16) = v67;
    v69 = (v7 + 32);
    v70 = (v7 + 32 + 16 * v66);
    *v70 = v68;
    v70[1] = v9;
    v150 = *a1;
    if (!*a1)
    {
      goto LABEL_189;
    }

    v145 = v9;
    if (v66)
    {
      v147 = (v7 + 32);
      while (1)
      {
        v71 = v67 - 1;
        v72 = &v69[16 * v67 - 16];
        v73 = (v7 + 16 * v67);
        if (v67 >= 4)
        {
          break;
        }

        if (v67 == 3)
        {
          v74 = *(v7 + 32);
          v75 = *(v7 + 40);
          v84 = __OFSUB__(v75, v74);
          v76 = v75 - v74;
          v77 = v84;
LABEL_100:
          if (v77)
          {
            goto LABEL_166;
          }

          v89 = *v73;
          v88 = v73[1];
          v90 = __OFSUB__(v88, v89);
          v91 = v88 - v89;
          v92 = v90;
          if (v90)
          {
            goto LABEL_169;
          }

          v93 = *(v72 + 1);
          v94 = v93 - *v72;
          if (__OFSUB__(v93, *v72))
          {
            goto LABEL_172;
          }

          if (__OFADD__(v91, v94))
          {
            goto LABEL_174;
          }

          if (v91 + v94 >= v76)
          {
            if (v76 < v94)
            {
              v71 = v67 - 2;
            }

            goto LABEL_122;
          }

          goto LABEL_115;
        }

        if (v67 < 2)
        {
          goto LABEL_168;
        }

        v96 = *v73;
        v95 = v73[1];
        v84 = __OFSUB__(v95, v96);
        v91 = v95 - v96;
        v92 = v84;
LABEL_115:
        if (v92)
        {
          goto LABEL_171;
        }

        v98 = *v72;
        v97 = *(v72 + 1);
        v84 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v84)
        {
          goto LABEL_173;
        }

        if (v99 < v91)
        {
          goto LABEL_129;
        }

LABEL_122:
        if (v71 - 1 >= v67)
        {
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
          goto LABEL_183;
        }

        v103 = *a3;
        if (!*a3)
        {
          goto LABEL_186;
        }

        v104 = v7;
        v105 = &v69[16 * v71 - 16];
        v106 = *v105;
        v107 = v71;
        v108 = &v69[16 * v71];
        v109 = *(v108 + 1);
        v110 = &v103[8 * *v105];
        v111 = &v103[8 * *v108];
        v112 = &v103[8 * v109];
        v7 = a5;

        sub_1E3B8A200(v110, v111, v112, v150, a5);
        if (v146)
        {

          goto LABEL_158;
        }

        if (v109 < v106)
        {
          goto LABEL_161;
        }

        v113 = *(v104 + 16);
        if (v107 > v113)
        {
          goto LABEL_162;
        }

        *v105 = v106;
        *(v105 + 1) = v109;
        if (v107 >= v113)
        {
          goto LABEL_163;
        }

        v67 = v113 - 1;
        memmove(v108, v108 + 16, 16 * (v113 - 1 - v107));
        v7 = v104;
        *(v104 + 16) = v113 - 1;
        v69 = v147;
        if (v113 <= 2)
        {
          goto LABEL_129;
        }
      }

      v78 = &v69[16 * v67];
      v79 = *(v78 - 8);
      v80 = *(v78 - 7);
      v84 = __OFSUB__(v80, v79);
      v81 = v80 - v79;
      if (v84)
      {
        goto LABEL_164;
      }

      v83 = *(v78 - 6);
      v82 = *(v78 - 5);
      v84 = __OFSUB__(v82, v83);
      v76 = v82 - v83;
      v77 = v84;
      if (v84)
      {
        goto LABEL_165;
      }

      v85 = v73[1];
      v86 = v85 - *v73;
      if (__OFSUB__(v85, *v73))
      {
        goto LABEL_167;
      }

      v84 = __OFADD__(v76, v86);
      v87 = v76 + v86;
      if (v84)
      {
        goto LABEL_170;
      }

      if (v87 >= v81)
      {
        v101 = *v72;
        v100 = *(v72 + 1);
        v84 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v84)
        {
          goto LABEL_178;
        }

        if (v76 < v102)
        {
          v71 = v67 - 2;
        }

        goto LABEL_122;
      }

      goto LABEL_100;
    }

LABEL_129:
    v5 = a3[1];
    v6 = v145;
    if (v145 >= v5)
    {
      goto LABEL_146;
    }
  }

  v43 = (v8 + a4);
  if (__OFADD__(v8, a4))
  {
    goto LABEL_182;
  }

  if (v43 >= v42)
  {
    v43 = a3[1];
  }

  if (v43 < v8)
  {
LABEL_183:
    __break(1u);
LABEL_184:
    v7 = sub_1E37FFF5C(v7);
LABEL_148:
    v119 = (v7 + 16);
    v120 = *(v7 + 16);
    for (i = v7; ; v7 = i)
    {
      if (v120 < 2)
      {

        return;
      }

      v121 = *a3;
      if (!*a3)
      {
        goto LABEL_187;
      }

      v122 = (v7 + 16 * v120);
      v123 = *v122;
      v124 = v119;
      v125 = &v119[2 * v120];
      v7 = v125[1];
      v126 = &v121[8 * *v122];
      v127 = &v121[8 * *v125];
      v151 = &v121[8 * v7];

      sub_1E3B8A200(v126, v127, v151, v147, a5);
      if (v146)
      {
        break;
      }

      if (v7 < v123)
      {
        goto LABEL_175;
      }

      if (v120 - 2 >= *v124)
      {
        goto LABEL_176;
      }

      v119 = v124;
      *v122 = v123;
      v122[1] = v7;
      v128 = *v124 - v120;
      if (*v124 < v120)
      {
        goto LABEL_177;
      }

      v120 = *v124 - 1;
      memmove(v125, v125 + 2, 16 * v128);
      *v124 = v120;
    }

    goto LABEL_158;
  }

  if (v9 == v43)
  {
    goto LABEL_79;
  }

  v134 = v7;
  v147 = *a3;
  v44 = &(*a3)[8 * v9 - 8];
  v45 = v8 - v9;
  v132 = v43;
LABEL_56:
  v144 = v9;
  v46 = *&v147[8 * v9];
  v136 = v45;
  v138 = v44;
  v47 = v45;
  v48 = v44;
  while (1)
  {
    v149 = v47;
    v49 = *v48;
    v50 = *(v46 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier);
    v51 = *(v46 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier + 8);
    v52 = (*v48 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier);
    v53 = *v52;
    v54 = v52[1];
    v55 = v50 == *v52 && v51 == v54;
    if (v55 || (sub_1E42079A4() & 1) != 0)
    {
      goto LABEL_62;
    }

    v61 = *v141;
    v62 = v141[1];
    v63 = v50 == *v141 && v51 == v62;
    if (v63 || (sub_1E42079A4() & 1) != 0)
    {
LABEL_77:
      v9 = v144 + 1;
      v44 = v138 + 8;
      v45 = v136 - 1;
      if ((v144 + 1) == v132)
      {
        v9 = v132;
        v7 = v134;
        v8 = v131;
        goto LABEL_79;
      }

      goto LABEL_56;
    }

    v64 = v53 == v61 && v54 == v62;
    if (!v64 && (sub_1E42079A4() & 1) == 0)
    {
LABEL_62:
      v56 = *(*v46 + 224);

      v58 = v56(v57);
      v59 = (*(*v49 + 224))();

      if (v58 >= v59)
      {
        goto LABEL_77;
      }
    }

    if (!v147)
    {
      break;
    }

    v60 = *v48;
    v46 = *(v48 + 1);
    *v48 = v46;
    *(v48 + 1) = v60;
    v48 -= 8;
    v47 = v149 + 1;
    if (v149 == -1)
    {
      goto LABEL_77;
    }
  }

  __break(1u);
LABEL_186:

  __break(1u);
LABEL_187:

  __break(1u);
LABEL_188:

  __break(1u);
LABEL_189:

  __break(1u);
LABEL_190:

  __break(1u);
}

uint64_t sub_1E3B8A200(char *__src, char *__dst, char *a3, char *a4, uint64_t a5)
{
  v5 = a4;
  v6 = a3;
  v7 = __dst;
  v8 = __src;
  v9 = (__dst - __src) / 8;
  v10 = (a3 - __dst) / 8;
  if (v9 < v10)
  {
    if (a4 != __src || &__src[8 * v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v12 = &v5[8 * v9];
    v61 = (a5 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier);
    v63 = v12;
    v65 = v6;
    while (1)
    {
      if (v5 >= v12 || v7 >= v6)
      {
        v7 = v8;
        goto LABEL_68;
      }

      v67 = v8;
      v69 = v7;
      v14 = *v7;
      v15 = *v5;
      v16 = (*v7 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier);
      v17 = *v16;
      v18 = v16[1];
      v19 = (*v5 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier);
      v20 = *v19;
      v21 = v19[1];
      v22 = *v16 == *v19 && v18 == v21;
      if (!v22 && (sub_1E42079A4() & 1) == 0)
      {
        v30 = *v61;
        v31 = v61[1];
        v32 = v17 == *v61 && v18 == v31;
        if (v32 || (sub_1E42079A4() & 1) != 0)
        {
          goto LABEL_24;
        }

        v33 = v20 == v30 && v21 == v31;
        if (v33 || (sub_1E42079A4() & 1) != 0)
        {
LABEL_18:
          v27 = v69;
          v7 = v69 + 8;
          v6 = v65;
          v28 = v67;
          v29 = v67 == v69;
          goto LABEL_25;
        }
      }

      v23 = *(*v14 + 224);

      v25 = v23(v24);
      v26 = (*(*v15 + 224))();

      if (v25 < v26)
      {
        goto LABEL_18;
      }

LABEL_24:
      v27 = v5;
      v6 = v65;
      v28 = v67;
      v29 = v67 == v5;
      v5 += 8;
      v7 = v69;
LABEL_25:
      v12 = v63;
      if (!v29)
      {
        *v28 = *v27;
      }

      v8 = v28 + 8;
    }
  }

  if (a4 != __dst || &__dst[8 * v10] <= a4)
  {
    memmove(a4, __dst, 8 * v10);
  }

  v12 = &v5[8 * v10];
  v59 = (a5 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier);
  v60 = v5;
  v68 = v8;
LABEL_40:
  v35 = v7 - 8;
  v36 = v6 - 8;
  v70 = v7 - 8;
  v62 = v7;
  while (v12 > v5 && v7 > v8)
  {
    v64 = v12;
    v66 = v36;
    v39 = v12 - 8;
    v38 = *(v12 - 1);
    v40 = *v35;
    v42 = *(v38 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier);
    v41 = *(v38 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier + 8);
    v43 = (*v35 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier);
    v44 = *v43;
    v45 = v43[1];
    v46 = v42 == *v43 && v41 == v45;
    if (!v46 && (sub_1E42079A4() & 1) == 0)
    {
      v51 = *v59;
      v52 = v59[1];
      v53 = v42 == *v59 && v41 == v52;
      if (v53 || (sub_1E42079A4() & 1) != 0)
      {
        goto LABEL_52;
      }

      v54 = v44 == v51 && v45 == v52;
      if (v54 || (sub_1E42079A4() & 1) != 0)
      {
LABEL_65:
        v6 = v66;
        v8 = v68;
        v5 = v60;
        v7 = v70;
        v12 = v64;
        if (v66 + 8 != v62)
        {
          *v66 = *v70;
        }

        goto LABEL_40;
      }
    }

    v47 = *(*v38 + 224);

    v49 = v47(v48);
    v50 = (*(*v40 + 224))();

    if (v49 < v50)
    {
      goto LABEL_65;
    }

LABEL_52:
    if (v64 != v66 + 8)
    {
      *v66 = *v39;
    }

    v36 = v66 - 8;
    v12 = v39;
    v5 = v60;
    v7 = v62;
    v8 = v68;
    v35 = v70;
  }

LABEL_68:
  v55 = (v12 - v5) / 8;
  if (v7 != v5 || v7 >= &v5[8 * v55])
  {
    memmove(v7, v5, 8 * v55);
  }

  return 1;
}

unint64_t sub_1E3B8A658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E37DA464(a1, a2, a3);
  v4 = sub_1E4205DA4();
  return sub_1E3B8A6C4(a1, v4, v5);
}

unint64_t sub_1E3B8A6C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = ~(-1 << *(v3 + 32));
  for (i = a2 & v4; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_1E37DA4B8(a1, a2, a3);
    a1 = sub_1E4205E84();
    if (a1)
    {
      break;
    }
  }

  return i;
}

void *sub_1E3B8A798(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > v5[3] >> 1)
  {
    if (v5[2] <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = v5[2];
    }

    result = sub_1E3B890A0(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

uint64_t sub_1E3B8A800(void *a1)
{
  v1 = [a1 sharedMediaLibraries];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1E3280A90(0, &unk_1EE23B330, 0x1E69705E8);
  v3 = sub_1E42062B4();

  return v3;
}

uint64_t sub_1E3B8A870(void *a1)
{
  v1 = [a1 uniqueIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1E4205F14();

  return v3;
}

int64_t sub_1E3B8A8D4(int64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_1E3B8A798(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640, &qword_1E429E310);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_15:
    *v2 = v8;
    return result;
  }

  v10 = *(v8 + 16);
  v11 = v10 - a2;
  if (__OFSUB__(v10, a2))
  {
    goto LABEL_21;
  }

  v12 = (v9 + 40 * a2);
  if (v5 != a2 || v12 + 40 * v11 <= v9 + 40 * v5)
  {
    result = memmove((v9 + 40 * v5), v12, 40 * v11);
    v10 = *(v8 + 16);
  }

  v14 = __OFADD__(v10, v7);
  v15 = v10 - v6;
  if (!v14)
  {
    *(v8 + 16) = v15;
    goto LABEL_15;
  }

LABEL_22:
  __break(1u);
  return result;
}

unint64_t sub_1E3B8A9E0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *v4;
  v10 = v9 + 32 + 40 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640, &qword_1E429E310);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!v12)
  {
    goto LABEL_12;
  }

  v13 = *(v9 + 16);
  v14 = v13 - a2;
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_20;
  }

  result = v10 + 40 * a3;
  v15 = (v9 + 32 + 40 * a2);
  if (result != v15 || v15 + 40 * v14 <= result)
  {
    result = memmove(result, v15, 40 * v14);
    v13 = *(v9 + 16);
  }

  v11 = __OFADD__(v13, v12);
  v17 = v13 + v12;
  if (v11)
  {
    goto LABEL_21;
  }

  *(v9 + 16) = v17;
LABEL_12:
  if (a3 >= 1)
  {
    if (*(a4 + 16) == a3)
    {
      swift_arrayInitWithCopy();
      goto LABEL_15;
    }

LABEL_22:
    __break(1u);
    return result;
  }

LABEL_15:
}

uint64_t sub_1E3B8AB08(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1E37DADF4(&v12, v10 + 40 * a1 + 32);
}

uint64_t type metadata accessor for LibDataSourceManager(uint64_t a1)
{
  result = qword_1EE29D740;
  if (!qword_1EE29D740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3B8ABF4(uint64_t a1)
{
  sub_1E32A995C();
  if (v1 <= 0x3F)
  {
    sub_1E3928D10(319, &qword_1EE28A078, &qword_1ECF34178, &qword_1E42E02E0);
    if (v2 <= 0x3F)
    {
      sub_1E3928D10(319, &qword_1EE289FA0, &qword_1ECF33C60, &qword_1E42BD0B0);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1E3B8AD70()
{
  OUTLINED_FUNCTION_5_0(v0 + 16, v37);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    OUTLINED_FUNCTION_26_0();
    v9 = v8;
    (*(v7 + 696))();
    OUTLINED_FUNCTION_7_126();
    v10 = &unk_1ECF3B640;
    while (1)
    {
      if (v3 == v2)
      {

        goto LABEL_9;
      }

      OUTLINED_FUNCTION_68_18();
      if (v11)
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      sub_1E327F454(v1, v35);
      sub_1E327F454(v35, v36);
      v12 = OUTLINED_FUNCTION_75();
      __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
      OUTLINED_FUNCTION_247();
      v14 = type metadata accessor for LibLocalSource();
      if (OUTLINED_FUNCTION_115_3(v34, v36, v15, v14))
      {
        break;
      }

      ++v2;
      OUTLINED_FUNCTION_120_4(v35);
    }

    sub_1E37DADF4(v35, v36);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF340B8, &unk_1E42BE938);
    v17 = OUTLINED_FUNCTION_26_11(v16);
    *(v17 + 16) = xmmword_1E4297BE0;
    sub_1E327F454(v36, v17 + 32);
    v1 = OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_activeSources;
    OUTLINED_FUNCTION_3_0(v6 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_activeSources, v34);
    OUTLINED_FUNCTION_164_2();
    v9 = v6;
    sub_1E3B7CC30();
    OUTLINED_FUNCTION_9_2();
    (*(v18 + 464))(MEMORY[0x1E69E7CC0]);
    __swift_destroy_boxed_opaque_existential_1(v36);
LABEL_9:
    v32 = [objc_opt_self() userHasActiveAccount];
    v19 = OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_availableSources;
    OUTLINED_FUNCTION_11_3(v6 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_availableSources, v33);
    OUTLINED_FUNCTION_142_6();
    while (1)
    {
      if (v1 == v10)
      {
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_93_6();
      if (v11)
      {
        goto LABEL_37;
      }

      sub_1E327F454(v9 + v4 - 40, v36);
      sub_1E37DADF4(v36, v35);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640, &qword_1E429E310);
      v20 = OUTLINED_FUNCTION_11_14();
      v21 = type metadata accessor for LibFamilySharingSource(v20);
      if (OUTLINED_FUNCTION_121_5(v21))
      {
        break;
      }

      ++v10;
      v4 += 40;
    }

    v22 = (v10 + 1);
    OUTLINED_FUNCTION_132_5();
    if (v24 == v10)
    {
LABEL_32:
      v30 = OUTLINED_FUNCTION_125();
      sub_1E3B8A8D4(v30, v31);
      swift_endAccess();
      sub_1E3B7CF98();
      if (v32)
      {
        OUTLINED_FUNCTION_63_7(OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_needsFamilyFetch);
        sub_1E3B7E5C0();
      }

      sub_1E3B7E10C();

      return;
    }

    while (v22 < v23)
    {
      sub_1E327F454(v9 + v4, v36);
      v25 = sub_1E37DADF4(v36, v35);
      if (OUTLINED_FUNCTION_121_5(v25))
      {
      }

      else
      {
        if (v22 != v10)
        {
          if (v10 < 0)
          {
            goto LABEL_39;
          }

          v26 = *(v9 + 16);
          if (v10 >= v26)
          {
            goto LABEL_40;
          }

          sub_1E327F454(v9 + 32 + 40 * v10, v36);
          if (v22 >= v26)
          {
            goto LABEL_41;
          }

          sub_1E327F454(v9 + v4, v35);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v6 + v19) = v9;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            *(v6 + v19) = OUTLINED_FUNCTION_166_2();
          }

          OUTLINED_FUNCTION_93_6();
          if (v11)
          {
            goto LABEL_42;
          }

          v28 = v9 + 40 * v10;
          __swift_destroy_boxed_opaque_existential_1((v28 + 32));
          sub_1E37DADF4(v35, v28 + 32);
          *(v6 + v19) = v9;
          if (v22 >= *(v9 + 16))
          {
            goto LABEL_43;
          }

          __swift_destroy_boxed_opaque_existential_1((v9 + v4));
          sub_1E37DADF4(v36, v9 + v4);
          *(v6 + v19) = v9;
        }

        ++v10;
      }

      OUTLINED_FUNCTION_139_4();
      if (v29)
      {
        if (v22 < v10)
        {
          goto LABEL_44;
        }

        goto LABEL_32;
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }
}

uint64_t sub_1E3B8B148(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E3B8B18C()
{
  type metadata accessor for LibFamilySharingSource(0);
  OUTLINED_FUNCTION_4_0();
  v0 = swift_allocObject();
  swift_weakInit();

  sub_1E3F61198(sub_1E3B8B210, v0);
}

uint64_t sub_1E3B8B290(void **a1)
{
  v1 = sub_1E3B8A870(*a1);
  v3 = v2;
  v4 = OUTLINED_FUNCTION_97_1();
  __swift_project_boxed_opaque_existential_1(v4, v5);
  OUTLINED_FUNCTION_33();
  v6 = OUTLINED_FUNCTION_146();
  v8 = v7(v6);
  if (v3)
  {
    if (v1 == v8 && v3 == v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = sub_1E42079A4();
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t objectdestroy_86Tm()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

_BYTE **sub_1E3B8B3B0(_BYTE **result)
{
  v2 = *result;
  *v2 = *(v1 + 16);
  *result = v2 + 1;
  return result;
}

uint64_t sub_1E3B8B3C4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

void *sub_1E3B8B3F4(void **a1)
{
  result = (*(v1 + 16))(&v5);
  v4 = *a1;
  *v4 = v5;
  *a1 = v4 + 1;
  return result;
}

double sub_1E3B8B43C()
{
  OUTLINED_FUNCTION_5_0(v0 + 16, v2);
  if (swift_weakLoadStrong())
  {
    sub_1E3B7E10C();
    sub_1E3B7E5C0();
  }

  return result;
}

id OUTLINED_FUNCTION_58_22(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return [a1 (v6 + 2040)];
}

uint64_t OUTLINED_FUNCTION_84_10(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_88_9()
{
}

id OUTLINED_FUNCTION_116_4()
{

  return [v0 (v1 + 901)];
}

uint64_t OUTLINED_FUNCTION_121_5(uint64_t a1, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_122_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_125_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

char *OUTLINED_FUNCTION_153_3(uint64_t a1)
{

  return sub_1E377FD30(0, a1 & ~(a1 >> 63), 0);
}

uint64_t OUTLINED_FUNCTION_155_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1E42072E4();
}

uint64_t OUTLINED_FUNCTION_157_4()
{

  return sub_1E4206254();
}

uint64_t OUTLINED_FUNCTION_158_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1E42072E4();
}

uint64_t OUTLINED_FUNCTION_159_1()
{

  return sub_1E4206254();
}

uint64_t OUTLINED_FUNCTION_161_3()
{
}

uint64_t OUTLINED_FUNCTION_162_4()
{

  return sub_1E37DADF4((v0 - 152), v0 - 192);
}

void OUTLINED_FUNCTION_163_2()
{

  JUMPOUT(0x1E6911E60);
}

uint64_t OUTLINED_FUNCTION_164_2()
{
  *(v0 + v2) = v1;
}

uint64_t OUTLINED_FUNCTION_167_3(uint64_t a1)
{

  return sub_1E42079A4();
}

__n128 sub_1E3B8B828(uint64_t a1)
{
  swift_beginAccess();
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 104) = *a1;
  *(v1 + 120) = v4;
  *(v1 + 136) = *(a1 + 32);
  return result;
}

void sub_1E3B8B878(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 144);
  *(v1 + 144) = a1;
}

uint64_t sub_1E3B8B8F4(uint64_t a1)
{
  *(v1 + 120) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 136) = 1;
  *(v1 + 152) = 0;
  *(v1 + 160) = 0;
  *(v1 + 144) = 0;
  v2 = sub_1E3C2F9A0();
  swift_retain_n();
  sub_1E3B8BAFC();
  sub_1E3B8BC00();
  v3.n128_f64[0] = sub_1E3B8BA4C();
  (*(*v2 + 800))(5, v3);
  sub_1E3755B54();
  v4 = objc_opt_self();
  v5 = [v4 systemGroupedBackgroundColor];
  v6 = [v4 secondarySystemGroupedBackgroundColor];
  v7 = sub_1E3E5F2F8(v5, v6);

  (*(*v2 + 752))(v7);

  return v2;
}