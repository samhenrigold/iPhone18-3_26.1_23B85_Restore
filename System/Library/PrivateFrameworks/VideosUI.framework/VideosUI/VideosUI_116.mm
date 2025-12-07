uint64_t sub_1E3FC69D8()
{
  v0 = CollectionViewModel.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 425, 7);
}

unint64_t sub_1E3FC6A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3D778;
  if (!qword_1ECF3D778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D778);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PlayerCollectionAppearanceType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E3FC6B84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = TVAppFeature.isEnabled.getter(20, a2, a3);
  v4 = 640.0;
  if (result)
  {
    v4 = 680.0;
  }

  qword_1EE2AA9D0 = *&v4;
  return result;
}

uint64_t *sub_1E3FC6BC0()
{
  if (qword_1EE293460 != -1)
  {
    OUTLINED_FUNCTION_0_312(&qword_1EE293460);
  }

  return &qword_1EE2AA9D0;
}

uint64_t sub_1E3FC6C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = TVAppFeature.isEnabled.getter(20, a2, a3);
  v4 = 44.0;
  if ((result & 1) == 0)
  {
    v4 = 0.0;
  }

  qword_1ECF719C0 = *&v4;
  return result;
}

uint64_t *sub_1E3FC6C8C()
{
  if (qword_1ECF6A3C0 != -1)
  {
    swift_once();
  }

  return &qword_1ECF719C0;
}

double sub_1E3FC6CDC()
{
  v0 = [objc_opt_self() isPad];
  result = 0.0;
  if (v0)
  {
    return 3.0;
  }

  return result;
}

uint64_t sub_1E3FC6D48()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1E4205ED4();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (!*(&v7 + 1))
  {
    result = sub_1E329505C(v8);
    goto LABEL_8;
  }

  result = swift_dynamicCast();
  if (!result)
  {
LABEL_8:
    v4 = 0x3FEFFF2E48E8A71ELL;
    goto LABEL_9;
  }

  v4 = v5;
LABEL_9:
  qword_1EE2AA9D8 = v4;
  return result;
}

uint64_t *sub_1E3FC6E5C()
{
  if (qword_1EE293468 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA9D8;
}

uint64_t sub_1E3FC6EAC()
{
  swift_allocObject();
  v0 = sub_1E3C2F9A0();

  sub_1E3FC6EF8();

  return v0;
}

void sub_1E3FC6EF8()
{
  if (qword_1EE293460 != -1)
  {
    OUTLINED_FUNCTION_0_312(&qword_1EE293460);
  }

  sub_1E3C2D0A0();
  __dst[0] = 0;
  LOBYTE(__dst[1]) = 0;
  v19 = 0x3FE22E8BA2E8BA2FLL;
  v20 = 0;
  v0 = MEMORY[0x1E69E7DE0];
  sub_1E3C3DE00();
  v15 = v17;
  v16 = v18;
  sub_1E3C3DE00();
  v11 = v13;
  v12 = v14;
  sub_1E3C3DE00();
  v7 = v9;
  v8 = v10;
  sub_1E3C3DE00();
  v3 = v5;
  v4 = v6;
  sub_1E3C2FCB8(__dst, &v19, &v15, &v11, &v7, &v3, v0, __src);
  memcpy(__dst, __src, 0x59uLL);
  v1 = OUTLINED_FUNCTION_18();
  sub_1E3C2FDFC(__dst, 81, v1 & 1, v0);
}

uint64_t sub_1E3FC7038(double a1, double a2)
{
  v4 = *sub_1E3C2AEE0();
  if (a2 < a1)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E3FC706C(double a1, double a2, double a3)
{
  type metadata accessor for LayoutGrid();
  v5 = sub_1E3A2579C(a1);
  if ((*sub_1E3C2AEE0() & (a3 < a1)) != 0)
  {
    return 3;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_1E3FC70CC()
{
  type metadata accessor for TextLayout();
  v0 = sub_1E383BCC0();

  v1 = *sub_1E3E5FD88();
  v2 = *(*v0 + 680);
  v3 = v1;
  v2(v1);

  OUTLINED_FUNCTION_36();
  (*(v4 + 1792))(7);
  OUTLINED_FUNCTION_36();
  (*(v5 + 2176))(4, 0);
  OUTLINED_FUNCTION_36();
  (*(v6 + 2056))(2, 0);
  OUTLINED_FUNCTION_36();
  (*(v7 + 2080))(2, 0);
  OUTLINED_FUNCTION_36();
  (*(v8 + 2104))(2, 0);
  OUTLINED_FUNCTION_36();
  (*(v9 + 2128))(0x3FE6666666666666, 0);
  if (TVAppFeature.isEnabled.getter(20, v10, v11))
  {
    (*(*v0 + 1720))(7);
  }

  (*(*v0 + 1696))(2);
  return v0;
}

id sub_1E3FC7330()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DB7D8]) init];
  [v0 setShadowOffset_];
  [v0 setShadowBlurRadius_];
  v1 = [objc_opt_self() blackColor];
  v2 = [v1 colorWithAlphaComponent_];

  [v0 setShadowColor_];
  return v0;
}

id sub_1E3FC747C(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v8 = [objc_allocWithZone(VUIOpenURLRouterDataSource) init];
  sub_1E3FC77B4(a1, a2, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1E4298880;
  *(v9 + 32) = a3;
  v10 = a3;
  sub_1E3FC7818(v9, v8);
  [v8 setActionFirst_];
  *&v3[OBJC_IVAR____TtC8VideosUI15ActionTabSwitch_routerDataSource] = v8;
  v13.receiver = v3;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_init);

  return v11;
}

uint64_t sub_1E3FC7580(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = [objc_opt_self() sharedInstance];
  v7 = [v6 openURLHandler];

  v8 = *(v3 + OBJC_IVAR____TtC8VideosUI15ActionTabSwitch_routerDataSource);
  if (a2)
  {
    v10[4] = a2;
    v10[5] = a3;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1E37EB82C;
    v10[3] = &block_descriptor_149;
    a2 = _Block_copy(v10);
  }

  [v7 processRouterDeeplink:v8 completion:a2];
  _Block_release(a2);
  return swift_unknownObjectRelease();
}

void sub_1E3FC77B4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1E4205ED4();

  [a3 setTabIdentifier_];
}

void sub_1E3FC7818(uint64_t a1, void *a2)
{
  sub_1E3FC78B0();
  v3 = sub_1E42062A4();

  [a2 setDocumentDataSources_];
}

unint64_t sub_1E3FC78B0()
{
  result = qword_1EE23B0D0;
  if (!qword_1EE23B0D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23B0D0);
  }

  return result;
}

uint64_t sub_1E3FC78F4()
{
  type metadata accessor for Route(0);
  v0 = j__OUTLINED_FUNCTION_18();
  return sub_1E3F4C85C(0xD000000000000010, 0x80000001E4280880, v0 & 1);
}

void sub_1E3FC7940()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D788, &qword_1E42E3058);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v52 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D790, &qword_1E42E3060);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v52 - v10;
  if ([objc_opt_self() userHasActiveAccount])
  {
    v58 = v2;
    v12 = [objc_opt_self() sharedInstance];
    if (v12)
    {
      v13 = v12;
      v14 = sub_1E3741090(0xD000000000000010, 0x80000001E4280880, v12);
      v16 = v15;
      v56 = v15;

      v57 = &v52;
      MEMORY[0x1EEE9AC00](v17);
      v55 = &v52 - 6;
      *(&v52 - 4) = v0;
      *(&v52 - 3) = v14;
      *(&v52 - 2) = v16;
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D7B0, &qword_1E42E3070);
      v53 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D7B8, &qword_1E42E3078);
      v52 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D2F0, &qword_1E42E3080);
      v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D7C0, &qword_1E42E3088);
      v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D7C8, &qword_1E42E3090);
      v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D798, &qword_1E42E3068);
      v21 = sub_1E3FC7EB0();
      v24 = sub_1E32822E0(v21, v22, v23);
      v60 = v20;
      v61 = MEMORY[0x1E69E6158];
      v62 = v21;
      v63 = v24;
      OUTLINED_FUNCTION_2_207();
      v27 = OUTLINED_FUNCTION_17_12(v25, v26);
      v60 = v19;
      v61 = v27;
      OUTLINED_FUNCTION_7_18();
      v30 = OUTLINED_FUNCTION_17_12(v28, v29);
      v60 = v18;
      v61 = v30;
      OUTLINED_FUNCTION_5_221();
      v33 = OUTLINED_FUNCTION_17_12(v31, v32);
      v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D330, &qword_1E42A9578);
      OUTLINED_FUNCTION_2_63();
      v37 = sub_1E32752B0(v35, &qword_1ECF2D330, &qword_1E42A9578, v36);
      v60 = v34;
      v61 = v37;
      OUTLINED_FUNCTION_6_10();
      v40 = OUTLINED_FUNCTION_17_12(v38, v39);
      v60 = v53;
      v61 = v52;
      v62 = v33;
      v63 = v40;
      OUTLINED_FUNCTION_17_12(v40, MEMORY[0x1E697D5A0]);
      sub_1E42013C4();

      (*(v8 + 16))(v5, v11, v6);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_8_18(&qword_1ECF3D7A0, &qword_1ECF3D790, &qword_1E42E3060);
      sub_1E4201F44();
      (*(v8 + 8))(v11, v6);
LABEL_6:
      OUTLINED_FUNCTION_25_2();
      return;
    }

    __break(1u);
  }

  else
  {
    v41 = *(v0 + *(type metadata accessor for AccountSettings(0) + 20));
    if (v41)
    {
      type metadata accessor for Route(0);
      OUTLINED_FUNCTION_8_186();
      sub_1E3FC7E68(v42, v43, &unk_1E42DFC80);
      v44 = v41;
      v45 = sub_1E4200BC4();
      type metadata accessor for NavigationBarObservableModel(0);
      sub_1E39EE6D8();
      *v5 = sub_1E379D97C(v44, v45);
      v5[1] = v46;
      v5[2] = v47;
      v5[3] = v48;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D798, &qword_1E42E3068);
      OUTLINED_FUNCTION_8_18(&qword_1ECF3D7A0, &qword_1ECF3D790, &qword_1E42E3060);
      sub_1E3FC7EB0();
      OUTLINED_FUNCTION_3_5();
      sub_1E4201F44();
      goto LABEL_6;
    }
  }

  type metadata accessor for Router(0);
  OUTLINED_FUNCTION_0_313();
  v51 = sub_1E3FC7E68(v49, v50, &unk_1E42EB398);
  OUTLINED_FUNCTION_6_46(v51);
  __break(1u);
}

uint64_t type metadata accessor for AccountSettings(uint64_t a1)
{
  result = qword_1ECF6A460;
  if (!qword_1ECF6A460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3FC7E68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E3FC7EB0()
{
  result = qword_1ECF3D7A8;
  if (!qword_1ECF3D7A8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D798, &qword_1E42E3068);
    v6 = sub_1E3FC7F3C(v1, v2, v3);
    sub_1E389B90C(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D7A8);
  }

  return result;
}

unint64_t sub_1E3FC7F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF6A3D8[0];
  if (!qword_1ECF6A3D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF6A3D8);
  }

  return result;
}

void sub_1E3FC7F90()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v87 = v6;
  sub_1E4200C24();
  OUTLINED_FUNCTION_0_10();
  v85 = v8;
  v86 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v82 = v10 - v9;
  sub_1E4201AE4();
  OUTLINED_FUNCTION_0_10();
  v78 = v12;
  v79 = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v75 = v14 - v13;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D7C8, &qword_1E42E3090);
  OUTLINED_FUNCTION_0_10();
  v73 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v71 - v17;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D7C0, &qword_1E42E3088);
  OUTLINED_FUNCTION_0_10();
  v77 = v19;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  v74 = &v71 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D7B8, &qword_1E42E3078);
  OUTLINED_FUNCTION_0_10();
  v83 = v23;
  v84 = v22;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  v81 = &v71 - v25;
  v26 = *(v5 + *(type metadata accessor for AccountSettings(0) + 20));
  if (v26)
  {
    v72 = v5;
    type metadata accessor for Route(0);
    OUTLINED_FUNCTION_8_186();
    sub_1E3FC7E68(v27, v28, &unk_1E42DFC80);
    v29 = v26;
    v30 = sub_1E4200BC4();
    type metadata accessor for NavigationBarObservableModel(0);
    sub_1E39EE6D8();
    v31 = sub_1E379D97C(v29, v30);
    v33 = v32;
    v90 = v31;
    v91 = v34;
    v92 = v32;
    v93 = v35;
    if (v1)
    {
      v36 = v3;
    }

    else
    {
      v36 = 0;
    }

    if (v1)
    {
      v37 = v1;
    }

    else
    {
      v37 = 0xE000000000000000;
    }

    v88 = v36;
    v89 = v37;

    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D798, &qword_1E42E3068);
    v39 = sub_1E3FC7EB0();
    v42 = sub_1E32822E0(v39, v40, v41);
    v43 = MEMORY[0x1E69E6158];
    sub_1E4203034();

    v45 = v78;
    v44 = v79;
    v46 = v75;
    (*(v78 + 104))(v75, *MEMORY[0x1E697C438], v79);
    v90 = v38;
    v91 = v43;
    v92 = v39;
    v93 = v42;
    OUTLINED_FUNCTION_2_207();
    v49 = OUTLINED_FUNCTION_121_2(v47, v48);
    v50 = v74;
    v51 = v76;
    sub_1E42033D4();
    (*(v45 + 8))(v46, v44);
    (*(v73 + 8))(v18, v51);
    v52 = v82;
    sub_1E4200C14();
    v90 = v51;
    v91 = v49;
    OUTLINED_FUNCTION_7_18();
    v55 = OUTLINED_FUNCTION_121_2(v53, v54);
    v56 = v80;
    v57 = v81;
    sub_1E4202E44();
    (*(v85 + 8))(v52, v86);
    v58 = (*(v77 + 8))(v50, v56);
    MEMORY[0x1EEE9AC00](v58);
    *(&v71 - 2) = v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D2F0, &qword_1E42E3080);
    v90 = v56;
    v91 = v55;
    OUTLINED_FUNCTION_5_221();
    OUTLINED_FUNCTION_121_2(v59, v60);
    v61 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D330, &qword_1E42A9578);
    OUTLINED_FUNCTION_2_63();
    v64 = sub_1E32752B0(v62, &qword_1ECF2D330, &qword_1E42A9578, v63);
    v90 = v61;
    v91 = v64;
    OUTLINED_FUNCTION_6_10();
    OUTLINED_FUNCTION_121_2(v65, v66);
    v67 = v84;
    sub_1E4203504();
    (*(v83 + 8))(v57, v67);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    type metadata accessor for Router(0);
    OUTLINED_FUNCTION_0_313();
    v70 = sub_1E3FC7E68(v68, v69, &unk_1E42EB398);
    OUTLINED_FUNCTION_6_46(v70);
    __break(1u);
  }
}

void sub_1E3FC8568()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E4202034();
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_5();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D330, &qword_1E42A9578);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v19 - v7;
  sub_1E4201FD4();
  v19[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D390, &qword_1E42A9610);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D398, &unk_1E42E3200);
  OUTLINED_FUNCTION_3_120();
  v12 = sub_1E32752B0(v10, &qword_1ECF2D398, &unk_1E42E3200, v11);
  v15 = sub_1E375320C(v12, v13, v14);
  v19[4] = v9;
  v19[5] = &type metadata for SystemButtonStyle;
  v19[6] = v12;
  v19[7] = v15;
  OUTLINED_FUNCTION_17_12(v15, &unk_1E4434820);
  sub_1E4200C04();
  OUTLINED_FUNCTION_2_63();
  v18 = sub_1E32752B0(v16, &qword_1ECF2D330, &qword_1E42A9578, v17);
  MEMORY[0x1E690CA00](v8, v3, v18);
  (*(v5 + 8))(v8, v3);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3FC89C4()
{
  v0 = sub_1E4200E34();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  sub_1E3898B28((v5 - v4));
  sub_1E4200E24();
  return (*(v2 + 8))(v6, v0);
}

uint64_t sub_1E3FC8A7C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA78, &unk_1E42A79F0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for AccountSettings(0);
  OUTLINED_FUNCTION_17_140();
  OUTLINED_FUNCTION_0_313();
  sub_1E3FC7E68(v1, v2, &unk_1E42EB398);
  v3 = sub_1E4201754();
  return OUTLINED_FUNCTION_4_236(v3, v4);
}

id sub_1E3FC8B20()
{
  v0 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v8 = VUISignpostLogObject(v7);
  sub_1E41FFBC4();
  v9 = sub_1E4206BA4();
  v10 = VUISignpostLogObject(v9);
  OUTLINED_FUNCTION_15_157(v9, &dword_1E323F000, v10);

  type metadata accessor for AccountViewController();
  v11 = AccountViewController.__allocating_init()();
  v12 = sub_1E4206B94();
  v13 = VUISignpostLogObject(v12);
  OUTLINED_FUNCTION_15_157(v12, &dword_1E323F000, v13);

  (*(v2 + 8))(v6, v0);
  return v11;
}

uint64_t sub_1E3FC8C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_18_132(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDB778](v3);
}

uint64_t sub_1E3FC8CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_18_132(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDB740](v3);
}

void sub_1E3FC8D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E3FC8EE4(a1, a2, a3);
  sub_1E42025D4();
  __break(1u);
}

void sub_1E3FC8D7C(uint64_t a1)
{
  sub_1E389B45C(319);
  if (v1 <= 0x3F)
  {
    sub_1E389B5AC(319);
    if (v2 <= 0x3F)
    {
      sub_1E389B640(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1E3FC8E18()
{
  result = qword_1ECF3D7D0;
  if (!qword_1ECF3D7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D7D8, &qword_1E42E3108);
    sub_1E32752B0(&qword_1ECF3D7A0, &qword_1ECF3D790, &qword_1E42E3060, MEMORY[0x1E697C1A8]);
    sub_1E3FC7EB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D7D0);
  }

  return result;
}

unint64_t sub_1E3FC8EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE293FD0[0];
  if (!qword_1EE293FD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE293FD0);
  }

  return result;
}

double sub_1E3FC8F40()
{
  type metadata accessor for ButtonLayout();
  v0 = j__OUTLINED_FUNCTION_18();
  v1 = sub_1E3B050E8();
  v2 = j__OUTLINED_FUNCTION_18();
  sub_1E3BBD964(8, v0 & 1, v1, v2 & 1);
  sub_1E3FC8754();

  return result;
}

uint64_t sub_1E3FC8FCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountSettings(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3FC9030(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountSettings(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3FC9094()
{
  type metadata accessor for AccountSettings(0);

  return sub_1E3FC89C4();
}

uint64_t sub_1E3FC90F4()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    v2 = type metadata accessor for ButtonLayout();
    v1 = sub_1E3BBFAF0(v2);
    *(v0 + 112) = v1;
  }

  return v1;
}

uint64_t sub_1E3FC9190()
{
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = xmmword_1E42E3210;
  v1 = vdupq_n_s64(0x4043000000000000uLL);
  *(v0 + 136) = v1;
  *(v0 + 152) = xmmword_1E42E3210;
  *(v0 + 168) = v1;
  *(v0 + 184) = xmmword_1E42E3220;
  v2 = sub_1E3C2F9A0();
  v3 = *(* + 1760);
  v4 = v3();
  (*(*v4 + 208))(0x4076800000000000, 0);

  v6 = (v3)(v5);
  v30[0] = xmmword_1E42E3230;
  v30[1] = xmmword_1E42E3230;
  v31 = 0;
  (*(*v6 + 184))(v30);

  (v3)(v7);
  OUTLINED_FUNCTION_2_1();
  (*(v8 + 312))(0, 1);

  v10 = (v3)(v9);
  v11 = objc_opt_self();
  (*(*v10 + 752))([v11 systemBlueColor]);

  (v3)(v12);
  OUTLINED_FUNCTION_2_1();
  v14 = (*(v13 + 2048))();

  (*(*v14 + 680))([v11 whiteColor]);

  v16 = *(*v2 + 1736);
  v16(v15);
  OUTLINED_FUNCTION_2_1();
  (*(v17 + 1984))(1);

  v19 = (v16)(v18);
  v20 = *sub_1E3E5FDEC();
  v21 = *(*v19 + 680);
  v22 = v20;
  v21(v20);

  v16(v23);
  OUTLINED_FUNCTION_2_1();
  (*(v24 + 2176))(0, 0);

  v16(v25);
  OUTLINED_FUNCTION_2_1();
  (*(v26 + 2056))(0, 0);

  v16(v27);
  OUTLINED_FUNCTION_2_1();
  (*(v28 + 1696))(21);

  return v2;
}

uint64_t sub_1E3FC9630()
{
  v0 = sub_1E37BD5C4();

  return MEMORY[0x1EEE6BDC0](v0, 200, 7);
}

uint64_t type metadata accessor for TextBadge(uint64_t a1)
{
  result = qword_1EE28F160;
  if (!qword_1EE28F160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3FC96D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 40) = 0;
  v6 = *(type metadata accessor for TextBadge(0) + 40);
  *(a3 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  *a3 = a1;
  *(a3 + 32) = a2;
  v7 = *(*a1 + 392);

  v9 = v7(v8);
  if (v9)
  {
    type metadata accessor for TextBadgeLayout(0);
    v9 = swift_dynamicCastClass();
    if (!v9)
    {

      v9 = 0;
    }
  }

  *(a3 + 8) = v9;
  OUTLINED_FUNCTION_8();
  v10 += 61;
  v11 = *v10;
  v12 = (*v10)();
  if (!v12)
  {
    goto LABEL_8;
  }

  v14 = sub_1E373E010(17, v12, v13);

  if (v14 && *v14 != _TtC8VideosUI13TextViewModel)
  {

LABEL_8:
    v14 = 0;
  }

  *(a3 + 16) = v14;
  v15 = (v11)(v12);

  if (!v15)
  {
    goto LABEL_13;
  }

  v17 = sub_1E373E010(39, v15, v16);

  if (!v17)
  {
    goto LABEL_13;
  }

  type metadata accessor for ImageViewModel();
  result = swift_dynamicCastClass();
  if (!result)
  {

LABEL_13:
    result = 0;
  }

  *(a3 + 24) = result;
  return result;
}

uint64_t sub_1E3FC98B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v112 = a1;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A90, &qword_1E429C780);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v99 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D7E0, &qword_1E42E32D0);
  OUTLINED_FUNCTION_6_4(v8, &v127);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D7E8, &qword_1E42E32D8);
  OUTLINED_FUNCTION_17_2(v11);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D7F0, &qword_1E42E32E0);
  OUTLINED_FUNCTION_6_4(v14, &v125);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v16);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D7F8, &unk_1E42E32E8);
  OUTLINED_FUNCTION_0_10();
  v102 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250, " B\r");
  OUTLINED_FUNCTION_17_2(v20);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v99 - v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D800, &qword_1E42E32F8);
  OUTLINED_FUNCTION_6_4(v24, &v124);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v26);
  type metadata accessor for TextBadge(0);
  OUTLINED_FUNCTION_0_10();
  v104 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D808, &qword_1E42E3300);
  OUTLINED_FUNCTION_6_4(v31, v123);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v99 - v33;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D810, &qword_1E42E3308);
  OUTLINED_FUNCTION_0_10();
  v105 = v35;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v99 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D818, &qword_1E42E3310);
  OUTLINED_FUNCTION_6_4(v39, &v126);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v41);
  if (*(v2 + 8) && (v42 = *(v2 + 16)) != 0)
  {
    v103 = *(v2 + 8);

    if ((TVAppFeature.isEnabled.getter(10, v43, v44) & 1) != 0 || *(v2 + 40) == 1)
    {
      v45 = *(v2 + 32);
      v102 = v42;
      sub_1E3FCA9BC(v103, v42, v45, v34);
      *&v120 = *v2;
      sub_1E38115FC(v2, &v99 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
      v46 = (*(v104 + 80) + 16) & ~*(v104 + 80);
      v47 = swift_allocObject();
      sub_1E3FCB4B0(&v99 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v47 + v46);
      v48 = type metadata accessor for ViewModel();
      v49 = sub_1E3FCA5D8();
      v50 = sub_1E388C264();

      v51 = v106;
      sub_1E4203524();

      sub_1E325F69C(v34, &qword_1ECF3D808);
      v52 = v105;
      v53 = v107;
      (*(v105 + 16))(v108, v38, v107);
      swift_storeEnumTagMultiPayload();
      *&v120 = v51;
      *(&v120 + 1) = v48;
      *&v121 = v49;
      *(&v121 + 1) = v50;
      OUTLINED_FUNCTION_3_219();
      swift_getOpaqueTypeConformance2();
      v54 = sub_1E3FCA848();
      *&v120 = v109;
      *(&v120 + 1) = v54;
      OUTLINED_FUNCTION_6_20();
      swift_getOpaqueTypeConformance2();
      OUTLINED_FUNCTION_15_158();
      sub_1E4201F44();
      (*(v52 + 8))(v38, v53);
    }

    else
    {
      sub_1E3746E10(v23);
      v58 = sub_1E42012F4();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v58);
      v59 = v103;
      v60 = (*(*v103 + 2056))(v23);
      v61 = sub_1E325F69C(v23, &qword_1ECF2A250);
      sub_1E3FCB058(v61, v62, v63);
      v64 = sub_1E4201B84();
      v65 = (*(*v59 + 1872))();
      if (v65)
      {
        (*(*v65 + 152))(v118);

        v66 = v118[3];
        if (v119)
        {
          v66 = 0;
        }
      }

      else
      {
        v66 = 0;
      }

      v67 = v99;
      *v99 = v64;
      v67[1] = v66;
      *(v67 + 16) = 0;
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D860, &unk_1E42E3340);
      sub_1E3FCB16C(v2, v42, v67 + *(v68 + 44));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BA8, &unk_1E42980C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E4299720;
      v70 = sub_1E4202764();
      *(inited + 32) = v70;
      v71 = sub_1E4202784();
      *(inited + 33) = v71;
      v72 = sub_1E4202774();
      sub_1E4202774();
      if (sub_1E4202774() != v70)
      {
        v72 = sub_1E4202774();
      }

      sub_1E4202774();
      if (sub_1E4202774() != v71)
      {
        v72 = sub_1E4202774();
      }

      sub_1E4200A54();
      v74 = v73;
      v76 = v75;
      v78 = v77;
      v80 = v79;
      v81 = v67;
      v82 = v100;
      sub_1E329E454(v81, v100, &qword_1ECF3D7E8, &qword_1E42E32D8);
      v83 = v82 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D850, &unk_1E42E3328) + 36);
      *v83 = v72;
      *(v83 + 8) = v74;
      *(v83 + 16) = v76;
      *(v83 + 24) = v78;
      *(v83 + 32) = v80;
      *(v83 + 40) = 0;
      sub_1E4203DA4();
      sub_1E4200D94();
      v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D858, &qword_1E42E3338);
      v85 = v103;
      v86 = (v82 + *(v84 + 36));
      v87 = v121;
      *v86 = v120;
      v86[1] = v87;
      v86[2] = v122;
      (*(*v85 + 1824))();

      nullsub_1();
      v34 = v109;
      v88 = v82 + *(v109 + 9);
      *v88 = v89;
      *(v88 + 8) = v90;
      v91 = sub_1E3FCA848();
      v92 = v101;
      sub_1E3E361E8();
      sub_1E325F69C(v82, &qword_1ECF3D7F0);
      v93 = v102;
      v94 = v110;
      (*(v102 + 2))(v108, v92, v110);
      swift_storeEnumTagMultiPayload();
      v95 = type metadata accessor for ViewModel();
      v96 = sub_1E3FCA5D8();
      v97 = sub_1E388C264();
      v114 = v106;
      v115 = v95;
      v116 = v96;
      v117 = v97;
      OUTLINED_FUNCTION_3_219();
      swift_getOpaqueTypeConformance2();
      v114 = v34;
      v115 = v91;
      OUTLINED_FUNCTION_6_20();
      swift_getOpaqueTypeConformance2();
      OUTLINED_FUNCTION_15_158();
      sub_1E4201F44();

      (*(v93 + 1))(v92, v94);
    }

    sub_1E3294EE4(v34, v111, &qword_1ECF3D818, &qword_1E42E3310);
    swift_storeEnumTagMultiPayload();
    v98 = sub_1E3FCA4B4();
    OUTLINED_FUNCTION_5_1(v98);
    sub_1E4201F44();

    return sub_1E325F69C(v34, &qword_1ECF3D818);
  }

  else
  {
    nullsub_1();
    v55 = v113;
    (*(v4 + 16))(v111, v7, v113);
    swift_storeEnumTagMultiPayload();
    v56 = sub_1E3FCA4B4();
    OUTLINED_FUNCTION_5_1(v56);
    sub_1E4201F44();
    return (*(v4 + 8))(v7, v55);
  }
}

unint64_t sub_1E3FCA4B4()
{
  result = qword_1ECF3D820;
  if (!qword_1ECF3D820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D818, &qword_1E42E3310);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D808, &qword_1E42E3300);
    type metadata accessor for ViewModel();
    sub_1E3FCA5D8();
    sub_1E388C264();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D7F0, &qword_1E42E32E0);
    sub_1E3FCA848();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D820);
  }

  return result;
}

unint64_t sub_1E3FCA5D8()
{
  result = qword_1ECF3D828;
  if (!qword_1ECF3D828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D808, &qword_1E42E3300);
    sub_1E3FCA690();
    sub_1E374AD40(&qword_1EE2887D0, &qword_1ECF291E0, &qword_1E42AE9A0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D828);
  }

  return result;
}

unint64_t sub_1E3FCA690()
{
  result = qword_1ECF3D830;
  if (!qword_1ECF3D830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D838, &qword_1E42E3318);
    v3 = sub_1E3FCA8F4(&qword_1ECF3D840, &qword_1ECF3D848, &qword_1E42E3320, MEMORY[0x1E697EBF8]);
    sub_1E3FCA7F4(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D830);
  }

  return result;
}

unint64_t sub_1E3FCA73C()
{
  result = qword_1EE2897E8;
  if (!qword_1EE2897E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D850, &unk_1E42E3328);
    sub_1E374AD40(&qword_1EE2885F8, &qword_1ECF3D7E8, &qword_1E42E32D8, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2897E8);
  }

  return result;
}

unint64_t sub_1E3FCA7F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE299728[0];
  if (!qword_1EE299728[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE299728);
  }

  return result;
}

unint64_t sub_1E3FCA848()
{
  result = qword_1EE289470;
  if (!qword_1EE289470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D7F0, &qword_1E42E32E0);
    v3 = sub_1E3FCA8F4(&qword_1EE289558, &qword_1ECF3D858, &qword_1E42E3338, MEMORY[0x1E697E040]);
    sub_1E3FCA968(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289470);
  }

  return result;
}

uint64_t sub_1E3FCA8F4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v6 = OUTLINED_FUNCTION_40_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    sub_1E3FCA73C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E3FCA968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE251C38[0];
  if (!qword_1EE251C38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE251C38);
  }

  return result;
}

uint64_t sub_1E3FCA9BC@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v77 = a3;
  v73[0] = a2;
  v76 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D7E8, &qword_1E42E32D8);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v73 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D850, &unk_1E42E3328);
  OUTLINED_FUNCTION_6_4(v10, v81);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v73 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D848, &qword_1E42E3320);
  OUTLINED_FUNCTION_6_4(v14, &v82);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v73 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D838, &qword_1E42E3318);
  OUTLINED_FUNCTION_6_4(v18, &v84);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D808, &qword_1E42E3300);
  OUTLINED_FUNCTION_6_4(v21, &v83);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  v24 = v73 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250, " B\r");
  OUTLINED_FUNCTION_17_2(v25);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  v28 = (v73 - v27);
  type metadata accessor for TextBadge(0);
  sub_1E3746E10(v28);
  v29 = sub_1E42012F4();
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v29);
  v30 = (*(*a1 + 2056))(v28);
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v74 = v30;
  v37 = sub_1E325F69C(v28, &qword_1ECF2A250);
  sub_1E3FCB058(v37, v38, v39);
  v40 = sub_1E4201B84();
  if (*(v4 + 8) && (OUTLINED_FUNCTION_8(), (v43 = (*(v41 + 1872))(v42)) != 0))
  {
    (*(*v43 + 152))(v78);

    v44 = v78[3];
    if (v79)
    {
      v44 = 0;
    }
  }

  else
  {
    v44 = 0;
  }

  *v9 = v40;
  *(v9 + 1) = v44;
  v9[16] = 0;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D860, &unk_1E42E3340);
  sub_1E3FCB16C(v4, v73[0], &v9[*(v45 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BA8, &unk_1E42980C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  v47 = sub_1E4202764();
  *(inited + 32) = v47;
  v48 = sub_1E4202784();
  *(inited + 33) = v48;
  v49 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v47)
  {
    v49 = sub_1E4202774();
  }

  sub_1E4202774();
  if (sub_1E4202774() != v48)
  {
    v49 = sub_1E4202774();
  }

  v50 = v77;
  sub_1E4200A54();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  sub_1E329E454(v9, v13, &qword_1ECF3D7E8, &qword_1E42E32D8);
  OUTLINED_FUNCTION_141();
  v60 = &v13[v59];
  *v60 = v49;
  *(v60 + 1) = v52;
  *(v60 + 2) = v54;
  *(v60 + 3) = v56;
  *(v60 + 4) = v58;
  v60[40] = 0;
  sub_1E4203DA4();
  sub_1E42015C4();
  sub_1E329E454(v13, v17, &qword_1ECF3D850, &unk_1E42E3328);
  OUTLINED_FUNCTION_141();
  memcpy(&v17[v61], __src, 0x70uLL);
  if (v50)
  {
    v62 = v50;
  }

  else
  {
    type metadata accessor for TextBadgePresenter(0);

    v62 = sub_1E3789F30(v63);
  }

  v64 = v75;
  sub_1E329E454(v17, v75, &qword_1ECF3D848, &qword_1E42E3320);
  OUTLINED_FUNCTION_141();
  v66 = (v64 + v65);
  *v66 = v32;
  v66[1] = v34;
  v66[2] = v36;
  v66[3] = v74;
  v66[4] = a1;
  v66[5] = v62;
  OUTLINED_FUNCTION_141();
  v68 = &v24[v67];
  v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF291E0, &qword_1E42AE9A0) + 28);
  v70 = *MEMORY[0x1E697DBA8];
  sub_1E4200B44();
  OUTLINED_FUNCTION_2();
  (*(v71 + 104))(v68 + v69, v70);
  *v68 = swift_getKeyPath();
  sub_1E329E454(v64, v24, &qword_1ECF3D838, &qword_1E42E3318);
  sub_1E329E454(v24, v76, &qword_1ECF3D808, &qword_1E42E3300);
}

double sub_1E3FCB058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = TVAppFeature.isEnabled.getter(10, a2, a3);
  v5 = *(v3 + 8);
  if (v4)
  {
    v6 = 0.0;
    if (v5)
    {
      OUTLINED_FUNCTION_8();
      (*(v7 + 176))(&v10);
      if ((v14 & 1) == 0)
      {
        return sub_1E3952BE0(v10, v11, v12, v13) * 0.5;
      }
    }
  }

  else
  {
    v6 = -2.0;
    if (v5)
    {
      OUTLINED_FUNCTION_8();
      (*(v8 + 176))(&v10);
      if ((v14 & 1) == 0)
      {
        return sub_1E3952BE0(v10, v11, v12, v13) * 0.5 + -2.0;
      }
    }
  }

  return v6;
}

void sub_1E3FCB134(void *a1)
{
  if (*(v1 + 32))
  {
    v3 = a1;
    sub_1E3788EB8(a1);
  }
}

uint64_t sub_1E3FCB16C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a2;
  v40 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238, &unk_1E42999B0);
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v39 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29938, &unk_1E429C3F0);
  v20 = OUTLINED_FUNCTION_17_2(v19);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v39 - v24;
  v26 = *(a1 + 24);
  if (v26)
  {

    sub_1E3EB9BB4(v41);
    v27 = OUTLINED_FUNCTION_18();
    sub_1E37E8BE8(v26, v41, 0, v27 & 1, 0, 0, v18);

    sub_1E375C31C(v41);
    (*(v15 + 32))(v25, v18, v13);
    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  __swift_storeEnumTagSinglePayload(v25, v28, 1, v13);
  OUTLINED_FUNCTION_18();
  sub_1E3F23370();
  v29 = v22;
  v39 = v25;
  sub_1E3294EE4(v25, v22, &qword_1ECF29938, &unk_1E429C3F0);
  v30 = *(v6 + 16);
  v31 = OUTLINED_FUNCTION_34();
  v30(v31);
  v32 = v22;
  v33 = v12;
  v34 = v9;
  v35 = v40;
  sub_1E3294EE4(v32, v40, &qword_1ECF29938, &unk_1E429C3F0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3D8B0, &unk_1E42E34D0);
  (v30)(v35 + *(v36 + 48), v34, v4);
  v37 = *(v6 + 8);
  v37(v33, v4);
  sub_1E325F69C(v39, &qword_1ECF29938);
  v37(v34, v4);
  return sub_1E325F69C(v29, &qword_1ECF29938);
}

uint64_t sub_1E3FCB4B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextBadge(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3FCB514()
{
  v1 = type metadata accessor for TextBadge(0);
  result = OUTLINED_FUNCTION_17_2(v1);
  if (*(v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 32))
  {
    OUTLINED_FUNCTION_8();
    v5 = (*(v4 + 392))();
    if (v5)
    {
      type metadata accessor for TextBadgeLayout(0);
      v5 = swift_dynamicCastClass();
      if (!v5)
      {

        v5 = 0;
      }
    }

    return sub_1E3788E58(v5, v6);
  }

  return result;
}

void sub_1E3FCB61C(uint64_t a1)
{
  type metadata accessor for ViewModel();
  if (v1 <= 0x3F)
  {
    sub_1E3FCB7F8(319, qword_1EE27EF08, type metadata accessor for TextBadgeLayout, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1E3FCB7F8(319, qword_1EE283398, type metadata accessor for TextViewModel, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1E3FCB7F8(319, qword_1EE282B40, type metadata accessor for ImageViewModel, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1E3FCB7F8(319, qword_1EE275F88, type metadata accessor for TextBadgePresenter, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1E3FCB7F8(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
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

void sub_1E3FCB7F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1E3FCB85C()
{
  result = qword_1ECF3D868;
  if (!qword_1ECF3D868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D870, &qword_1E42E33B0);
    sub_1E3FCA4B4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D868);
  }

  return result;
}

uint64_t sub_1E3FCB900(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1E3FCB940(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1E3FCB9B4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v64[0] = a1;
  v69 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D878, &qword_1E42E3458);
  OUTLINED_FUNCTION_0_10();
  v65 = v5;
  v66 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D880, &qword_1E42E3460) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v64 - v10;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D888, &qword_1E42E3468);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  v67 = v13;
  v14 = v2[4];
  v16 = (*(*v14 + 792))(v15);
  v17 = *v3;
  v18 = v3[2];
  v19 = v3[3];
  v20.n128_u64[0] = *v3;
  *&v70 = j__OUTLINED_FUNCTION_7_78(v20);
  *(&v70 + 1) = v21;
  v71 = v22;
  v72 = v23;
  v73 = 0;
  v24 = OUTLINED_FUNCTION_34();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
  v27 = sub_1E374AD40(&qword_1EE288970, &qword_1ECF3D890, &qword_1E42E3470, MEMORY[0x1E697FDF8]);
  sub_1E3A6929C(v16, v19, v18, 0, &v70, v26, v27);
  v28 = sub_1E3788970();
  v29 = sub_1E38F08C4(v28);

  *&v76 = v29;
  v30 = MEMORY[0x1E69815C0];
  v31 = MEMORY[0x1E6981580];
  LOBYTE(v28) = OUTLINED_FUNCTION_18();
  v32 = OUTLINED_FUNCTION_18();
  v33 = &v11[*(v8 + 44)];
  sub_1E391F7FC(v19, v28 & 1, v32 & 1, v30, v31, *&v18, *&v17);

  v34 = sub_1E4203DA4();
  v36 = v35;
  v37 = &v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D898, &qword_1E42E3478) + 36)];
  *v37 = v34;
  v37[1] = v36;
  if (sub_1E3789594())
  {
    v38 = sub_1E42037B4();
  }

  else
  {
    v38 = 0;
  }

  *&v76 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8A0, &qword_1E42E3480);
  v40 = sub_1E3FCBF58();
  OUTLINED_FUNCTION_34();
  v41 = OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_34();
  v42 = OUTLINED_FUNCTION_18();
  v43 = v64[1];
  sub_1E391F7FC(v19, v41 & 1, v42 & 1, v39, v40, *&v18, *&v17);

  v44 = sub_1E4203DA4();
  v46 = v45;
  v47 = v67;
  v48 = v67 + *(v68 + 36);
  (*(v65 + 32))(v48, v43, v66);
  v49 = (v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8A8, &unk_1E42E3488) + 36));
  *v49 = v44;
  v49[1] = v46;
  v50 = sub_1E329E454(v11, v47, &qword_1ECF3D880, &qword_1E42E3460);
  v51 = (*(*v14 + 600))(v50);
  if (!v51)
  {
    v76 = 0u;
    v77 = 0u;
LABEL_12:
    sub_1E325F69C(&v76, &unk_1ECF296E0);
    goto LABEL_13;
  }

  v52 = v51;
  v53 = [v51 shadowColor];

  if (v53)
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v74 = 0u;
    v75 = 0u;
  }

  v76 = v74;
  v77 = v75;
  if (!*(&v75 + 1))
  {
    goto LABEL_12;
  }

  sub_1E3755B54();
  if (swift_dynamicCast())
  {
    v54 = v74;
    v55 = sub_1E38F08C4(v74);

    goto LABEL_14;
  }

LABEL_13:
  v55 = sub_1E42036E4();
LABEL_14:
  v56 = (*(*v14 + 600))();
  if (v56)
  {
    v57 = v56;
    [v56 shadowBlurRadius];
    v59 = v58;
  }

  else
  {
    v59 = 12.0;
  }

  v60 = sub_1E3FCBFD4();
  v61 = OUTLINED_FUNCTION_5_11();
  v62 = OUTLINED_FUNCTION_5_11();
  sub_1E3C43478(v55, v60, v69, v59, v61, v62);

  return sub_1E325F69C(v47, &qword_1ECF3D888);
}

unint64_t sub_1E3FCBF58()
{
  result = qword_1EE288698;
  if (!qword_1EE288698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D8A0, &qword_1E42E3480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288698);
  }

  return result;
}

unint64_t sub_1E3FCBFD4()
{
  result = qword_1EE289600;
  if (!qword_1EE289600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D888, &qword_1E42E3468);
    sub_1E3FCC08C();
    sub_1E374AD40(&qword_1EE289220, &qword_1ECF3D8A8, &unk_1E42E3488, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289600);
  }

  return result;
}

unint64_t sub_1E3FCC08C()
{
  result = qword_1EE2899B8;
  if (!qword_1EE2899B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D880, &qword_1E42E3460);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D890, &qword_1E42E3470);
    sub_1E374AD40(&qword_1EE288970, &qword_1ECF3D890, &qword_1E42E3470, MEMORY[0x1E697FDF8]);
    swift_getOpaqueTypeConformance2();
    sub_1E374AD40(&qword_1EE289228, &qword_1ECF3D898, &qword_1E42E3478, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2899B8);
  }

  return result;
}

__objc2_class *sub_1E3FCC1B4(void *a1)
{
  result = object_getClass(a1);
  if (result == _TtC8VideosUI20CollectionInteractor && a1 != 0)
  {
    result = object_getClass(v1);
    if (result == _TtC8VideosUI20CollectionInteractor && v1 != 0)
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      sub_1E37CFCD4(a1);
      swift_unknownObjectRelease();

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1E3FCC2B4(unint64_t a1)
{
  v36 = a1;

  sub_1E37FE584(v2);
  v35 = v36;
  v3 = sub_1E32AE9B0(v36);
  if (v3)
  {
    v4 = v3;
    if (v3 < 1)
    {
      goto LABEL_36;
    }

    v5 = 0;
    v6 = MEMORY[0x1E69E7CC8];
    v34 = v36 & 0xC000000000000001;
    do
    {
      if (v34)
      {
        v7 = MEMORY[0x1E6911E60](v5, v35);
      }

      else
      {
        v7 = *(v35 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = sub_1E4205204();
      if (v10)
      {
        v11 = v9;
        v12 = v10;
        v13 = v8;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36 = v6;
        v14 = sub_1E327D33C(v11, v12);
        if (__OFADD__(*(v6 + 16), (v15 & 1) == 0))
        {
          goto LABEL_34;
        }

        v16 = v14;
        v17 = v15;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8C0, &qword_1E42E3500);
        if (sub_1E4207644())
        {
          v18 = sub_1E327D33C(v11, v12);
          if ((v17 & 1) != (v19 & 1))
          {
            goto LABEL_37;
          }

          v16 = v18;
        }

        v6 = v36;
        if (v17)
        {
          v20 = *(v36 + 56);
          v8 = *(v20 + 8 * v16);
          *(v20 + 8 * v16) = v13;
        }

        else
        {
          *(v36 + 8 * (v16 >> 6) + 64) |= 1 << v16;
          v21 = (*(v6 + 48) + 16 * v16);
          *v21 = v11;
          v21[1] = v12;
          *(*(v6 + 56) + 8 * v16) = v13;
          v22 = *(v6 + 16);
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_35;
          }

          *(v6 + 16) = v24;

          v8 = 0;
        }
      }

      ++v5;
    }

    while (v4 != v5);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC8];
  }

  v36 = MEMORY[0x1E69E7CC0];
  v25 = 1 << *(v6 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v6 + 64);
  v28 = (v25 + 63) >> 6;

  v29 = 0;
  while (v27)
  {
    v30 = v29;
LABEL_28:
    v31 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    isUniquelyReferenced_nonNull_native = *(*(v6 + 56) + ((v30 << 9) | (8 * v31)));
    sub_1E4205224();
    if (v32)
    {
    }

    else
    {
      sub_1E4207544();
      sub_1E4207584();
      OUTLINED_FUNCTION_74();
      sub_1E4207594();
      sub_1E4207554();
    }

    v29 = v30;
  }

  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v30 >= v28)
    {

      v36 = sub_1E3FD6710(v33, sub_1E38009E8);
      sub_1E3FD59B4(&v36);

      sub_1E38005A8(v36);
      OUTLINED_FUNCTION_50();

      return;
    }

    v27 = *(v6 + 64 + 8 * v30);
    ++v29;
    if (v27)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  sub_1E4207A74();
  __break(1u);

  __break(1u);
}

uint64_t sub_1E3FCC624()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DAD8, &qword_1E42E3AC8);
  OUTLINED_FUNCTION_17_2(v1);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_19_2();
  v3 = sub_1E3FCC724();
  sub_1E3FCC738(v3, v0);

  v4 = type metadata accessor for SportsSeeAllPlayModel(0);
  if (__swift_getEnumTagSinglePayload(v0, 1, v4) == 1)
  {
    sub_1E325F858(v0, &qword_1ECF3DAD8);
    v5 = 0;
  }

  else
  {
    v5 = sub_1E39543F4();
    sub_1E3FD7030(v0, type metadata accessor for SportsSeeAllPlayModel);
  }

  return sub_1E3FCC884(v5);
}

uint64_t sub_1E3FCC738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for SportsSeeAllPlayModel(0);
  v6 = v5;
  if (v4)
  {
    sub_1E3FD6FCC(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_1E3FCC7DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1E4205AF4();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_1E3FCC884(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_68_33(v2, v3, v4, v5, v6, v7, v8, v9, a1);
  return sub_1E4200684();
}

uint64_t sub_1E3FCC900@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3FCC724();
  *a1 = result;
  return result;
}

uint64_t sub_1E3FCC958()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32_20();
  OUTLINED_FUNCTION_36_57();
  sub_1E4200684();
  return sub_1E3FCC624();
}

uint64_t sub_1E3FCC9B8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_77();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3FCCA2C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1E3FCC9B8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1E3FCCA94()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_77();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3FCCB04@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3FCCA94();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E3FCCB5C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_36_57();
  return sub_1E4200684();
}

uint64_t sub_1E3FCCBC4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_77();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3FCCC34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3FCCBC4();
  *a1 = result;
  return result;
}

uint64_t sub_1E3FCCC88()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32_20();
  OUTLINED_FUNCTION_36_57();
  return sub_1E4200684();
}

uint64_t sub_1E3FCCCE4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_77();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3FCCD54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3FCCCE4();
  *a1 = result;
  return result;
}

uint64_t sub_1E3FCCDAC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32_20();
  OUTLINED_FUNCTION_36_57();
  return sub_1E4200684();
}

double sub_1E3FCCE1C@<D0>(_OWORD *a1@<X8>)
{
  sub_1E3FCCE08(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  a1[2] = v5[0];
  result = *(v5 + 10);
  *(a1 + 42) = *(v5 + 10);
  return result;
}

double sub_1E3FCCE90@<D0>(_OWORD *a3@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  *&v8[2] = *&v7[10];
  *v8 = *&v7[8];
  *a3 = v5;
  a3[1] = v6;
  a3[2] = *v7;
  result = *&v8[2];
  *(a3 + 42) = *&v8[2];
  return result;
}

double sub_1E3FCCF28@<D0>(_OWORD *a1@<X8>)
{
  sub_1E3FCCE7C(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  a1[2] = v5[0];
  result = *(v5 + 10);
  *(a1 + 42) = *(v5 + 10);
  return result;
}

uint64_t sub_1E3FCCF88(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a1[1];
  v11[0] = *a1;
  v11[1] = v8;
  v12[0] = a1[2];
  *(v12 + 10) = *(a1 + 42);
  sub_1E3FCC24C(v11, &v10);
  return sub_1E3FCCFF4(v11, a5, a6);
}

uint64_t sub_1E3FCCFF4(__int128 *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v13 = *a1;

  OUTLINED_FUNCTION_68_33(v4, v5, v6, v7, v8, v9, v10, v11, v13);
  return sub_1E4200684();
}

void sub_1E3FCD080()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v3 = sub_1E4205BF4();
  v4 = OUTLINED_FUNCTION_17_2(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = type metadata accessor for SportsPlayProcessor(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_9();
  v10 = *(v0 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_voiceOverViewModel);
  v11 = OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_competitors;
  OUTLINED_FUNCTION_5_0(v10 + OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_competitors, &v30);
  v12 = *(v10 + v11);

  sub_1E3FCE014();
  v13 = *(v2 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_hasFetchedAllPlays);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DA30, &qword_1E42E3A30);
  v14 = swift_allocObject();
  v14[1] = xmmword_1E4299720;
  sub_1E3FCCE08(v31);
  v15 = v31[1];
  v14[2] = v31[0];
  v14[3] = v15;
  v14[4] = *v32;
  *(v14 + 74) = *&v32[10];
  sub_1E3FCCE7C(v33);
  v16 = v33[1];
  v17 = *v34;
  v14[6] = v33[0];
  v14[7] = v16;
  v14[8] = v17;
  *(v14 + 138) = *&v34[10];
  v18 = *(v2 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__rawSubscription);
  if (v18)
  {
    v19 = v18;
    v20 = sub_1E42056A4();

    v21 = sub_1E4205054();
  }

  else
  {
    v21 = 0;
  }

  sub_1E40302FC(v12, v7, v13, v14, v21, v1);
  sub_1E3FCD90C();
  sub_1E40303C8();
  sub_1E3FCC958();
  sub_1E3FCCCE4();
  OUTLINED_FUNCTION_5_0(*&v1[*(v8 + 24)] + 32, &v29);

  sub_1E40C0B50();

  v22 = sub_1E32AE9B0(*(v2 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__rawPlays));
  v23 = sub_1E3FCC724();
  v24 = sub_1E39549A8(5);
  sub_1E3FD21BC(v24, v25, v23);
  v27 = v26;

  v28 = *(v27 + 16);

  if (__OFADD__(v22, v28))
  {
    __break(1u);
  }

  else
  {
    sub_1E3FCCC88();
    sub_1E3FD7030(v1, type metadata accessor for SportsPlayProcessor);
    OUTLINED_FUNCTION_25_2();
  }
}

uint64_t sub_1E3FCD324@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3FCD06C();
  *a1 = result;
  return result;
}

double sub_1E3FCD37C(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_34();
  sub_1E4200674();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1E4200684();
  if (sub_1E3FCD06C())
  {
    v1 = sub_1E42053B4();

    v2 = sub_1E4205294();

    if (!v7)
    {
      if (!v2)
      {
        goto LABEL_15;
      }

LABEL_11:
      v4 = v2;
LABEL_13:

LABEL_14:

      sub_1E3FCD080();

      goto LABEL_15;
    }
  }

  else
  {
    if (!v7)
    {
      goto LABEL_15;
    }

    v2 = 0;
  }

  v3 = sub_1E42053B4();
  v4 = sub_1E4205294();

  if (v2)
  {
    if (v4)
    {
      sub_1E4205544();
      v5 = sub_1E4206F64();

      if (v5)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (v4)
  {
    goto LABEL_13;
  }

LABEL_15:

  return result;
}

uint64_t sub_1E3FCD52C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3FCD518();
  *a1 = result;
  return result;
}

uint64_t sub_1E3FCD584()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32_20();
  OUTLINED_FUNCTION_36_57();
  return sub_1E4200684();
}

double sub_1E3FCD5E0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_57();
  sub_1E4200674();

  return result;
}

uint64_t sub_1E3FCD678(uint64_t a1)
{
  v2 = sub_1E4205754();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_1E3FCD744(v5);
}

uint64_t sub_1E3FCD744(uint64_t a1)
{
  sub_1E4205754();
  OUTLINED_FUNCTION_8_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_9();
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_77();
  v6();

  OUTLINED_FUNCTION_68_3();
  sub_1E4200684();
  return (*(v4 + 8))(a1, v1);
}

uint64_t sub_1E3FCD858@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3FCD844();
  *a1 = result;
  return result;
}

uint64_t sub_1E3FCD8B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32_20();
  OUTLINED_FUNCTION_36_57();
  return sub_1E4200684();
}

uint64_t sub_1E3FCD90C()
{
  result = sub_1E3FCD844();
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  while (1)
  {
    if (v3 == v2)
    {

      v5 = sub_1E3FCD844();
      if (*(v5 + 16))
      {
        v4 = *(v5 + 32);
      }

      else
      {
        v4 = 3;
      }

LABEL_9:

      return v4;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    v4 = *(v1 + v2++ + 32);
    result = static SportsDisplayError.__derived_enum_equals(_:_:)(v4, 1);
    if (result)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1E3FCD9B0()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BD98, &qword_1E42E3AB0);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_19_2();
  v69 = sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v67 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v66 = v9 - v10;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v11);
  v68 = &v63 - v12;
  OUTLINED_FUNCTION_138();
  v13 = sub_1E4205754();
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v63 - v21;
  v70 = v4;
  v23 = sub_1E42056A4();
  sub_1E4205044();

  v24 = *(v15 + 104);
  v24(v19, *MEMORY[0x1E69D3B98], v13);
  sub_1E3FD70F0(&qword_1EE23B680, MEMORY[0x1E69D3BB8]);
  LOBYTE(v23) = sub_1E4205E84();
  v25 = *(v15 + 8);
  v26 = OUTLINED_FUNCTION_124();
  v25(v26);
  (v25)(v22, v13);
  if ((v23 & 1) == 0)
  {
    v64 = v1;
    v65 = v24;
    type metadata accessor for SportsRunningClockViewModel(0);
    v27 = (v2 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_eventDateString);
    OUTLINED_FUNCTION_5_0(v2 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_eventDateString, &v71);
    v29 = *v27;
    v28 = v27[1];

    v70 = v70;
    v30 = sub_1E3F833B0(v70, v29, v28);
    sub_1E3FCD37C(v30);
    if (sub_1E3FCD518())
    {
    }

    else
    {
      sub_1E3FCE014();
      v32 = v66;
      v31 = v67;
      (*(v67 + 104))(v66, *MEMORY[0x1E69D3D88], v69);
      OUTLINED_FUNCTION_27_93();
      v33 = OUTLINED_FUNCTION_34();
      HIDWORD(v63) = sub_1E3FCE1DC(v33, v34, v35, v36, v37, v38);
      v39 = *(v31 + 8);
      v40 = v32;
      v41 = v69;
      v39(v40, v69);
      v39(v68, v41);
      if ((v63 & 0x100000000) != 0)
      {
        type metadata accessor for BaseballClockViewModel(0);
        sub_1E3DF8228();
        sub_1E3FCD584();
      }
    }

    if (sub_1E3FCD518())
    {
      sub_1E3DF7DE8();
    }

    v42 = sub_1E42056A4();
    sub_1E4205044();

    sub_1E3FCD744(v22);
    swift_getKeyPath();
    KeyPath = swift_getKeyPath();
    sub_1E4200674();

    v65(v19, *MEMORY[0x1E69D3B78], v13);
    LOBYTE(v42) = sub_1E3FCE1DC(v22, v19, MEMORY[0x1E69D3BB8], &unk_1EE23B670, MEMORY[0x1E69D3BB8], MEMORY[0x1E69D3BC8]);
    v44 = OUTLINED_FUNCTION_124();
    v25(v44);
    (v25)(v22, v13);
    if (v42)
    {
      v45 = sub_1E42056A4();
      sub_1E4205024();

      if (sub_1E3FCD06C())
      {
        sub_1E42053B4();
        OUTLINED_FUNCTION_11_5();

        v46 = sub_1E4205294();

        v47 = v64;
        sub_1E4205514();
      }

      else
      {
        sub_1E4205784();
        v47 = v64;
        OUTLINED_FUNCTION_32_2();
        __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
      }

      v52 = OUTLINED_FUNCTION_38_0();
      sub_1E3FD2760(v52, v53, v54, v55, v56, v57, v58, v59, v63, v64, v65, v66);

      sub_1E325F858(v47, &qword_1ECF2BD98);
    }

    sub_1E3FE3B24();
    v60 = sub_1E42056D4();
    sub_1E3FD3838(v60);
    OUTLINED_FUNCTION_11_5();

    sub_1E3FCD8B0();
    v61 = sub_1E42056A4();
    v62 = sub_1E4205024();

    sub_1E3FD2000(v62);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3FCDF54(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__rawSubscription);
  *(v1 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__rawSubscription) = a1;
  v5 = a1;

  v3 = *(v1 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__rawSubscription);
  if (v3)
  {
    v4 = v3;
    sub_1E3FCD9B0();
  }
}

uint64_t sub_1E3FCDFCC()
{

  sub_1E3FCD080();
}

uint64_t sub_1E3FCE014()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__rawSubscription);
  if (v1)
  {
    v2 = v1;
    sub_1E4205704();
  }

  OUTLINED_FUNCTION_57();

  return sub_1E4205BD4();
}

uint64_t sub_1E3FCE08C()
{
  v0 = sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  sub_1E3FCE014();
  (*(v2 + 104))(v6, *MEMORY[0x1E69D3D88], v0);
  OUTLINED_FUNCTION_27_93();
  v10 = OUTLINED_FUNCTION_74();
  v16 = sub_1E3FCE1DC(v10, v11, v12, v13, v14, v15);
  v17 = *(v2 + 8);
  v18 = OUTLINED_FUNCTION_13_8();
  v17(v18);
  (v17)(v9, v0);
  return v16 & 1;
}

uint64_t sub_1E3FCE1DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  a3(0);
  sub_1E3FD70F0(a4, a5);
  sub_1E4206254();
  sub_1E4206254();
  if (v13 == v11 && v14 == v12)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1E42079A4();
  }

  return v9 & 1;
}

uint64_t sub_1E3FCE2B4()
{
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_124();
  sub_1E3FCE320();
  return v0;
}

void sub_1E3FCE320()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v245 = v2;
  v246 = v3;
  v5 = v4;
  v281 = v6;
  v282 = v7;
  v244[1] = *v0;
  sub_1E4203FB4();
  OUTLINED_FUNCTION_0_10();
  v249 = v9;
  v250 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v248 = (v11 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_17_2(v12);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44();
  v247 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B498, &unk_1E42C1E70);
  OUTLINED_FUNCTION_0_10();
  v283 = v16;
  v284 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44();
  v280 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3D950, &unk_1E42A06E0);
  OUTLINED_FUNCTION_0_10();
  v278 = v20;
  v279 = v19;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_44();
  v277 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D948, &qword_1E42E3858);
  OUTLINED_FUNCTION_0_10();
  v275 = v24;
  v276 = v23;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_44();
  v274 = v26;
  OUTLINED_FUNCTION_138();
  sub_1E4205754();
  OUTLINED_FUNCTION_0_10();
  v272 = v28;
  v273 = v27;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_4_6();
  v271 = v29 - v30;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v31);
  v270 = v244 - v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3D938, &unk_1E42E3800);
  OUTLINED_FUNCTION_0_10();
  v268 = v34;
  v269 = v33;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_44();
  v267 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3D920, &unk_1E42E37A0);
  OUTLINED_FUNCTION_0_10();
  v265 = v38;
  v266 = v37;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_44();
  v264 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3D908, &unk_1E42E36F8);
  OUTLINED_FUNCTION_0_10();
  v262 = v42;
  v263 = v41;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_44();
  v261 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3D8F8, &unk_1E42E36A0);
  OUTLINED_FUNCTION_0_10();
  v259 = v46;
  v260 = v45;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_44();
  v258 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39130, &qword_1E42D3CE0);
  OUTLINED_FUNCTION_0_10();
  v256 = v50;
  v257 = v49;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_44();
  v255 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  OUTLINED_FUNCTION_0_10();
  v253 = v54;
  v254 = v53;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_44();
  v251 = v56;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8E8, &unk_1E42E35B8);
  OUTLINED_FUNCTION_0_10();
  v58 = v57;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v59);
  v61 = v244 - v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3D8D0, &unk_1E42E35A0);
  OUTLINED_FUNCTION_0_10();
  v64 = v63;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v65);
  v67 = v244 - v66;
  v68 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__plays;
  *&v303 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8C8, &qword_1E42E3508);
  sub_1E4200634();
  (*(v64 + 32))(&v1[v68], v67, v62);
  v69 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__firstPlayID;
  *&v303 = 0;
  BYTE8(v303) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8E0, &qword_1E42E35B0);
  sub_1E4200634();
  v70 = v1;
  (*(v58 + 32))(&v1[v69], v61, v252);
  LOBYTE(v303) = 0;
  sub_1E4200634();
  v71 = OUTLINED_FUNCTION_36_69();
  v72(v71);
  *&v303 = 0;
  sub_1E4200634();
  v73 = OUTLINED_FUNCTION_36_69();
  v74(v73);
  v75 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__periodSelectionViewModel;
  type metadata accessor for SportsPeriodSelectionViewModel(0);
  *&v303 = sub_1E40C1224();
  v76 = v258;
  sub_1E4200634();
  (*(v259 + 32))(&v1[v75], v76, v260);
  v77 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__leftTeamScoreCard;
  LOBYTE(v300) = 1;
  *&v293 = 0;
  BYTE8(v293) = 1;
  v294 = 0u;
  memset(v295, 0, 26);
  v296 = 0;
  v297 = 1;
  v298 = 0u;
  memset(v299, 0, sizeof(v299));
  sub_1E3FCC24C(&v293, &v303);
  sub_1E3FCC284(&v296);
  v303 = v293;
  v304 = v294;
  v305[0] = v295[0];
  *(v305 + 10) = *(v295 + 10);
  v78 = v261;
  sub_1E4200634();
  v79 = v263;
  v80 = *(v262 + 32);
  v80(&v70[v77], v78, v263);
  v81 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__rightTeamScoreCard;
  LOBYTE(v285) = 1;
  *&v300 = 0;
  BYTE8(v300) = 1;
  v301 = 0u;
  memset(v302, 0, 26);
  *&v303 = 0;
  BYTE8(v303) = 1;
  v304 = 0u;
  memset(v305, 0, 26);
  sub_1E3FCC24C(&v300, &v290);
  sub_1E3FCC284(&v303);
  v290 = v300;
  v291 = v301;
  v292[0] = v302[0];
  *(v292 + 10) = *(v302 + 10);
  sub_1E4200634();
  v80(&v70[v81], v78, v79);
  v82 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__clock;
  *&v290 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D918, &qword_1E42E3750);
  OUTLINED_FUNCTION_87_15();
  v83 = v264;
  sub_1E4200634();
  (*(v265 + 32))(&v70[v82], v83, v266);
  v84 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__baseballClockViewModel;
  *&v290 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D930, &qword_1E42E37B0);
  OUTLINED_FUNCTION_87_15();
  v85 = v267;
  sub_1E4200634();
  (*(v268 + 32))(&v70[v84], v85, v269);
  v86 = v272;
  v87 = v273;
  v88 = v270;
  (*(v272 + 104))(v270, *MEMORY[0x1E69D3B98], v273);
  OUTLINED_FUNCTION_72_29();
  v89();
  sub_1E4200634();
  (*(v86 + 8))(v88, v87);
  v90 = OUTLINED_FUNCTION_36_69();
  v91(v90);
  v92 = MEMORY[0x1E69E7CC0];
  *&v290 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B4C0, &unk_1E42A0718);
  OUTLINED_FUNCTION_87_15();
  sub_1E4200634();
  v93 = OUTLINED_FUNCTION_36_69();
  v94(v93);
  *&v70[OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__rawSubscription] = 0;
  *&v70[OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__rawPlays] = v92;
  v70[OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_hasFetchedAllPlays] = 0;
  v70[OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_hasFetchedFromBackground] = 0;
  if (sub_1E32AE9B0(v92))
  {
    v95 = sub_1E37654B0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v95 = MEMORY[0x1E69E7CD0];
  }

  *&v70[OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__cancellables] = v95;
  if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
  {
    v96 = sub_1E37654B0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v96 = MEMORY[0x1E69E7CD0];
  }

  *&v70[OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_notifications] = v96;
  v97 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_voiceOverViewModel;
  type metadata accessor for SportsVoiceOverViewModel(0);
  *&v70[v97] = sub_1E3FE2E1C();
  v98 = &v70[OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_eventDateString];
  *v98 = 0;
  *(v98 + 1) = 0;
  v99 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__clockScoreVoiceOverText;
  v290 = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960, &unk_1E4298000);
  OUTLINED_FUNCTION_87_15();
  v100 = v280;
  sub_1E4200634();
  (*(v283 + 4))(&v70[v99], v100, v284);
  *&v70[OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_refreshEventStateTimer] = 0;
  v101 = &v70[OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_sportingEventID];
  v102 = v282;
  *v101 = v281;
  *(v101 + 1) = v102;
  v284 = v70;
  *&v70[OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_competitors] = v5;
  v103 = *(v5 + 16);

  v104 = 0;
  v283 = MEMORY[0x1E69E7CC0];
  v105 = 7;
  v106 = MEMORY[0x1E69E7CA0];
  while (v103 != v104)
  {
    if (v104 >= *(v5 + 16))
    {
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      v147 = MEMORY[0x1E6911E60](0, v105);
      goto LABEL_53;
    }

    v107 = *(v5 + 8 * v104 + 32);
    *(&v291 + 1) = &type metadata for ViewModelKeys.Sports;
    *&v292[0] = &off_1F5D7BC68;
    LOBYTE(v290) = 7;

    sub_1E3F9F164(&v290, v107, v106 + 8);

    if (!v287)
    {
      __swift_destroy_boxed_opaque_existential_1(&v290);
      sub_1E325F858(&v285, &unk_1ECF296E0);
      goto LABEL_20;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      v288 = 0;
      v289 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1(&v290);
    v108 = v289;
    if (v289)
    {
      v109 = v288;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v280 = v109;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v116 = OUTLINED_FUNCTION_27();
        v283 = sub_1E3740F88(v116, v117, v118, v119);
      }

      v112 = *(v283 + 2);
      v111 = *(v283 + 3);
      v113 = v112 + 1;
      if (v112 >= v111 >> 1)
      {
        v279 = v112 + 1;
        v120 = sub_1E3740F88((v111 > 1), v112 + 1, 1, v283);
        v113 = v279;
        v283 = v120;
      }

      ++v104;
      v114 = v283;
      *(v283 + 2) = v113;
      v115 = &v114[16 * v112];
      *(v115 + 4) = v280;
      *(v115 + 5) = v108;
      v106 = MEMORY[0x1E69E7CA0];
    }

    else
    {
LABEL_20:
      ++v104;
    }
  }

  v105 = v284;
  *(v284 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_competitorIds) = v283;

  v122 = sub_1E407668C(v121);
  v123 = 0;
  v124 = (v105 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_teamColorProvider);
  v124[3] = &type metadata for SportsTeamColorVendor;
  v124[4] = &off_1F5D94380;
  v125 = MEMORY[0x1E69E7CC0];
  *v124 = v122;
  v283 = v125;
  while (v103 != v123)
  {
    if (v123 >= *(v5 + 16))
    {
      goto LABEL_92;
    }

    v105 = *(v5 + 8 * v123 + 32);

    sub_1E384EE08(40);
    if (!*(v105 + 16))
    {

LABEL_34:

      goto LABEL_35;
    }

    v128 = sub_1E327D33C(v126, v127);
    v130 = v129;

    if ((v130 & 1) == 0)
    {
      goto LABEL_34;
    }

    sub_1E328438C(*(v105 + 56) + 32 * v128, &v290);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    if ((swift_dynamicCast() & 1) != 0 && (v131 = v285) != 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v134 = OUTLINED_FUNCTION_27();
        v125 = sub_1E39239C8(v134, v135, v136, v125);
      }

      v133 = *(v125 + 2);
      v132 = *(v125 + 3);
      v105 = v133 + 1;
      if (v133 >= v132 >> 1)
      {
        v137 = OUTLINED_FUNCTION_1_12(v132);
        v125 = sub_1E39239C8(v137, v138, v139, v125);
      }

      ++v123;
      *(v125 + 2) = v105;
      *&v125[8 * v133 + 32] = v131;
    }

    else
    {
LABEL_35:
      ++v123;
    }
  }

  v140 = 0;
  v285 = MEMORY[0x1E69E7CC0];
  v141 = *(v125 + 2);
  while (v141 != v140)
  {
    if (v140 >= *(v125 + 2))
    {
      goto LABEL_93;
    }

    v142 = *&v125[8 * v140 + 32];

    sub_1E384EE08(40);
    v144 = v143;
    v146 = v145;
    *(&v291 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    *&v290 = v142;

    v105 = sub_1E3A7CD30(v144, v146, &v290, 0);

    __swift_destroy_boxed_opaque_existential_1(&v290);
    if (v105)
    {
      type metadata accessor for ImageViewModel();
      OUTLINED_FUNCTION_20_2();
      if (!swift_dynamicCastClass())
      {

        goto LABEL_42;
      }

      MEMORY[0x1E6910BF0]();
      if (*((v285 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v285 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      ++v140;
      v105 = &v285;
      sub_1E4206324();
      v283 = v285;
    }

    else
    {
LABEL_42:
      ++v140;
    }
  }

  v105 = v283;
  if (sub_1E32AE9B0(v283) != 2)
  {

    goto LABEL_54;
  }

  if (!sub_1E32AE9B0(v105))
  {
    v147 = 0;
    goto LABEL_53;
  }

  if ((v105 & 0xC000000000000001) != 0)
  {
    goto LABEL_96;
  }

  if (!*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return;
  }

  v147 = *(v105 + 32);

LABEL_53:
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_72_29();
  v148 = sub_1E4200664();
  *(v149 + 48) = v147;

  v150 = OUTLINED_FUNCTION_42_68();
  v148(v150);

  v105 = sub_1E37D027C(v283);

  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_72_29();
  v151 = sub_1E4200664();
  *(v152 + 48) = v105;

  v153 = OUTLINED_FUNCTION_42_68();
  v151(v153);

LABEL_54:
  v154 = 0;
  v283 = MEMORY[0x1E69E7CC0];
  while (v103 != v154)
  {
    if (v154 >= *(v5 + 16))
    {
      goto LABEL_94;
    }

    v105 = *(v5 + 8 * v154 + 32);

    ViewModelKeys.Sports.rawValue.getter(13);
    if (!*(v105 + 16))
    {

LABEL_67:

LABEL_68:
      ++v154;
      continue;
    }

    v157 = sub_1E327D33C(v155, v156);
    v159 = v158;

    if ((v159 & 1) == 0)
    {
      goto LABEL_67;
    }

    sub_1E328438C(*(v105 + 56) + 32 * v157, &v290);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_68;
    }

    v160 = v286;
    if (!v286)
    {
      goto LABEL_68;
    }

    v161 = v285;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v166 = OUTLINED_FUNCTION_27();
      v283 = sub_1E3740F88(v166, v167, v168, v169);
    }

    v163 = *(v283 + 2);
    v162 = *(v283 + 3);
    v105 = v163 + 1;
    if (v163 >= v162 >> 1)
    {
      v170 = OUTLINED_FUNCTION_1_12(v162);
      v283 = sub_1E3740F88(v170, v171, v172, v283);
    }

    ++v154;
    v164 = v283;
    *(v283 + 2) = v105;
    v165 = &v164[16 * v163];
    *(v165 + 4) = v161;
    *(v165 + 5) = v160;
  }

  v173 = 0;
  v174 = MEMORY[0x1E69E7CC0];
  while (v103 != v173)
  {
    if (v173 >= *(v5 + 16))
    {
      goto LABEL_95;
    }

    v105 = *(v5 + 8 * v173 + 32);

    ViewModelKeys.Sports.rawValue.getter(22);
    if (!*(v105 + 16))
    {

LABEL_82:

LABEL_83:
      ++v173;
      continue;
    }

    v177 = sub_1E327D33C(v175, v176);
    v179 = v178;

    if ((v179 & 1) == 0)
    {
      goto LABEL_82;
    }

    sub_1E328438C(*(v105 + 56) + 32 * v177, &v290);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_83;
    }

    v180 = v286;
    if (!v286)
    {
      goto LABEL_83;
    }

    v181 = v285;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v185 = OUTLINED_FUNCTION_27();
      v174 = sub_1E3740F88(v185, v186, v187, v174);
    }

    v183 = *(v174 + 2);
    v182 = *(v174 + 3);
    v105 = v183 + 1;
    if (v183 >= v182 >> 1)
    {
      v188 = OUTLINED_FUNCTION_1_12(v182);
      v174 = sub_1E3740F88(v188, v189, v190, v174);
    }

    ++v173;
    *(v174 + 2) = v105;
    v184 = &v174[16 * v183];
    *(v184 + 4) = v181;
    *(v184 + 5) = v180;
  }

  if (*(v283 + 2) == 2)
  {
    v192 = *(v283 + 4);
    v191 = *(v283 + 5);

    swift_getKeyPath();
    swift_getKeyPath();
    v193 = sub_1E4200664();
    *(v194 + 16) = v192;
    *(v194 + 24) = v191;

    v195 = OUTLINED_FUNCTION_42_68();
    v193(v195);

    if (*(v174 + 2))
    {
      v197 = *(v174 + 4);
      v196 = *(v174 + 5);
    }

    else
    {
      v197 = 0;
      v196 = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v198 = v284;
    v199 = sub_1E4200664();
    *(v200 + 32) = v197;
    *(v200 + 40) = v196;

    v201 = OUTLINED_FUNCTION_42_68();
    v199(v201);

    v202 = sub_1E38EA748(v283);
    v204 = v203;

    swift_getKeyPath();
    swift_getKeyPath();
    v205 = sub_1E4200664();
    *(v206 + 16) = v202;
    *(v206 + 24) = v204;

    v207 = OUTLINED_FUNCTION_42_68();
    v205(v207);

    v208 = sub_1E38EA748(v174);
    v210 = v209;

    swift_getKeyPath();
    KeyPath = swift_getKeyPath();
    v212 = OUTLINED_FUNCTION_79_26(KeyPath);
    *(v213 + 32) = v208;
    *(v213 + 40) = v210;

    v214 = OUTLINED_FUNCTION_42_68();
    v212(v214);
  }

  else
  {

    v198 = v284;
  }

  *&v290 = v198;
  OUTLINED_FUNCTION_72_29();
  v218 = sub_1E383ACA0(v215, v216, v217);
  swift_getKeyPath();
  v219 = swift_getKeyPath();
  OUTLINED_FUNCTION_79_26(v219);
  *(v220 + 57) = v218 & 1;
  v221 = OUTLINED_FUNCTION_42_68();
  v222(v221);

  *&v290 = v198;
  OUTLINED_FUNCTION_72_29();
  v226 = sub_1E383ACA0(v223, v224, v225);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200664();
  *(v227 + 57) = v226 & 1;
  v228 = OUTLINED_FUNCTION_42_68();
  v229(v228);

  v230 = (v198 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_eventDateString);
  swift_beginAccess();
  v231 = v246;
  *v230 = v245;
  v230[1] = v231;

  sub_1E3FE3850(v5);

  sub_1E3FCFD40();
  sub_1E4206474();
  v232 = v247;
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v233, v234, v235, v236);
  OUTLINED_FUNCTION_5_10();
  v237 = swift_allocObject();
  v237[2] = 0;
  v237[3] = 0;
  v237[4] = v198;

  v238 = OUTLINED_FUNCTION_23_7();
  sub_1E3CC3FD0(v238, v239, v232, v240, v237);

  sub_1E325F858(v232, &unk_1ECF2C400);
  sub_1E3FD0E04();
  sub_1E3FD1064();
  v242 = v248;
  v241 = v249;
  *v248 = 300;
  v243 = v250;
  (*(v241 + 104))(v242, *MEMORY[0x1E69E7F48], v250);
  sub_1E3FD11B8();

  (*(v241 + 8))(v242, v243);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3FCFADC(void (*a1)(void *__return_ptr, void), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v6 = sub_1E32AE9B0(a3);
  v7 = 0;
  v8 = v4 & 0xC000000000000001;
  v19 = v4 & 0xFFFFFFFFFFFFFF8;
  v9 = MEMORY[0x1E69E7CC0];
  v18 = a1;
  while (v6 != v7)
  {
    if (v8)
    {
      v10 = MEMORY[0x1E6911E60](v7, v4);
    }

    else
    {
      if (v7 >= *(v19 + 16))
      {
        goto LABEL_19;
      }

      v10 = *(v4 + 8 * v7 + 32);
    }

    v11 = v10;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    v22 = v10;
    a1(&v20, &v22);
    if (v3)
    {

      return;
    }

    if ((v21 & 1) == 0)
    {
      v12 = v4;
      v13 = v6;
      v14 = v8;
      v15 = v20;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1E3997AA8(0, *(v9 + 2) + 1, 1, v9);
      }

      v17 = *(v9 + 2);
      v16 = *(v9 + 3);
      if (v17 >= v16 >> 1)
      {
        v9 = sub_1E3997AA8((v16 > 1), v17 + 1, 1, v9);
      }

      *(v9 + 2) = v17 + 1;
      *&v9[8 * v17 + 32] = v15;
      a1 = v18;
      v8 = v14;
      v6 = v13;
      v4 = v12;
    }

    ++v7;
  }
}

uint64_t sub_1E3FCFC78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = sub_1E4205AF4();
    (*(*(v6 - 8) + 16))(a2, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, v6);
    v7 = a2;
    v8 = 0;
    v9 = v6;
  }

  else
  {
    v9 = sub_1E4205AF4();
    v7 = a2;
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
}

void sub_1E3FCFD40()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E4205754();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_9();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  v2 = OUTLINED_FUNCTION_74();
  v4 = v3(v2);
  if (v4 == *MEMORY[0x1E69D3B90] || v4 == *MEMORY[0x1E69D3B68] || v4 == *MEMORY[0x1E69D3B70])
  {
    v7 = 1702259052;
    v8 = 0xE400000000000000;
  }

  else if (v4 == *MEMORY[0x1E69D3B78])
  {
    v8 = 0xE400000000000000;
    v7 = 1953722224;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_74();
    v10(v9);
    v8 = 0xE300000000000000;
    v7 = 6648432;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E429A240;
  OUTLINED_FUNCTION_84_21();
  v13[4] = v12 & 0xFFFF0000FFFFFFFFLL | 0x644900000000;
  v13[5] = 0xE600000000000000;
  v14 = *(v0 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_sportingEventID);
  v15 = *(v0 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_sportingEventID + 8);
  v16 = MEMORY[0x1E69E6158];
  v13[6] = v14;
  v13[7] = v15;
  OUTLINED_FUNCTION_84_21();
  v18[9] = v16;
  v18[10] = v17 | 0x6570795400000000;
  v18[11] = 0xE800000000000000;
  v18[12] = 0x6C50794279616C50;
  v18[13] = 0xEA00000000007961;
  v18[15] = v16;
  v18[16] = 1701273968;
  v18[17] = 0xE400000000000000;

  MEMORY[0x1E69109E0](v14, v15);
  *(inited + 144) = 0x6C50794279616C50;
  *(inited + 152) = 0xEB000000005F7961;
  OUTLINED_FUNCTION_84_21();
  *(inited + 168) = v16;
  *(inited + 176) = v19 | 0x746E6F4300000000;
  *(inited + 184) = 0xEB00000000747865;
  *(inited + 192) = 0x776F6E6863746177;
  *(inited + 200) = 0xE800000000000000;
  OUTLINED_FUNCTION_84_21();
  *(inited + 216) = v16;
  *(inited + 224) = v20 | 0x6174654400000000;
  *(inited + 232) = 0xEB00000000736C69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0, &unk_1E429EC50);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1E4297BE0;
  *(v21 + 32) = 0x74617453656D6167;
  *(v21 + 40) = 0xE900000000000065;
  *(v21 + 48) = v7;
  *(v21 + 56) = v8;
  v22 = sub_1E4205CB4();
  *(inited + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C770, &unk_1E4299730);
  *(inited + 240) = v22;
  OUTLINED_FUNCTION_34();
  sub_1E4205CB4();
  objc_opt_self();
  v23 = OUTLINED_FUNCTION_11_5();
  sub_1E3744600(v23);

  v24 = sub_1E4205C44();

  v25 = [inited createWithMetricsData_];

  v26 = [objc_opt_self() sharedInstance];
  [v26 recordPage_];

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3FD011C()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E3FD01A4();
}

uint64_t sub_1E3FD01A4()
{
  OUTLINED_FUNCTION_24();
  *(v1 + 128) = v0;
  *(v1 + 264) = v2;
  v3 = sub_1E41FFCB4();
  *(v1 + 136) = v3;
  OUTLINED_FUNCTION_8_0(v3);
  *(v1 + 144) = v4;
  *(v1 + 152) = OUTLINED_FUNCTION_86_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DA80, &qword_1E42A0930);
  *(v1 + 160) = v5;
  OUTLINED_FUNCTION_8_0(v5);
  *(v1 + 168) = v6;
  *(v1 + 176) = OUTLINED_FUNCTION_86_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0, &unk_1E429D3D0);
  OUTLINED_FUNCTION_17_2(v7);
  *(v1 + 184) = OUTLINED_FUNCTION_86_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DA90, &unk_1E42982A0);
  *(v1 + 192) = v8;
  OUTLINED_FUNCTION_8_0(v8);
  *(v1 + 200) = v9;
  *(v1 + 208) = OUTLINED_FUNCTION_86_0();
  sub_1E4206434();
  *(v1 + 216) = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v11 = sub_1E42063B4();
  *(v1 + 224) = v11;
  *(v1 + 232) = v10;

  return MEMORY[0x1EEE6DFA0](sub_1E3FD0360, v11, v10);
}

uint64_t sub_1E3FD0360()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 184);
  v27 = *(v0 + 192);
  v28 = *(v0 + 200);
  v32 = *(v0 + 176);
  v33 = *(v0 + 160);
  v34 = *(v0 + 168);
  v35 = *(v0 + 128);
  v30 = *(v0 + 264);
  sub_1E4205004();
  v3 = sub_1E4204FF4();
  v26 = sub_1E4204FB4();

  *(v0 + 88) = v26;
  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  v4 = sub_1E4206A04();
  *(v0 + 96) = v4;
  v31 = sub_1E42069A4();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C08, &unk_1E42E3A90);
  OUTLINED_FUNCTION_86_19();
  sub_1E3A1558C(v9, v10);
  sub_1E3746800();
  sub_1E42007D4();
  sub_1E325F858(v2, &unk_1ECF2D2B0);

  OUTLINED_FUNCTION_4_0();
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v30;
  sub_1E3A1558C(&qword_1EE28A2A0, &unk_1ECF3DA90);
  sub_1E4200844();
  OUTLINED_FUNCTION_50();

  (*(v28 + 8))(v1, v27);
  v29 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__cancellables;
  OUTLINED_FUNCTION_11_3(v35 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__cancellables, v0 + 16);
  sub_1E42004C4();
  swift_endAccess();

  v13 = sub_1E4204FF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B550, &unk_1E42A0970);
  v14 = sub_1E4205484();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1E4297BE0;
  (*(v16 + 104))(v18 + v17, *MEMORY[0x1E69D3B20], v14);
  v19 = sub_1E4204FE4();

  *(v0 + 104) = v19;
  v20 = sub_1E4206A04();
  *(v0 + 112) = v20;
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DAA0, &qword_1E42E3AA0);
  sub_1E3A1558C(&qword_1EE28A1E0, &qword_1ECF3DAA0);
  sub_1E42007D4();
  sub_1E325F858(v2, &unk_1ECF2D2B0);

  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_weakInit();
  sub_1E3A1558C(&qword_1EE28A290, &unk_1ECF3DA80);
  sub_1E4200844();
  OUTLINED_FUNCTION_50();

  (*(v34 + 8))(v32, v33);
  OUTLINED_FUNCTION_11_3(v35 + v29, v0 + 40);
  sub_1E42004C4();
  swift_endAccess();

  v24 = swift_task_alloc();
  *(v0 + 240) = v24;
  *v24 = v0;
  OUTLINED_FUNCTION_56_1(v24);

  return sub_1E3FD1AA4();
}

uint64_t sub_1E3FD08B4()
{
  OUTLINED_FUNCTION_27_2();
  v3 = v2;
  OUTLINED_FUNCTION_39();
  v5 = v4;
  OUTLINED_FUNCTION_31();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  v5[31] = v0;

  if (v0)
  {
    v9 = v5[28];
    v10 = v5[29];
    v11 = sub_1E3FD0B34;
  }

  else
  {
    v5[32] = v3;
    v9 = v5[28];
    v10 = v5[29];
    v11 = sub_1E3FD09C8;
  }

  return MEMORY[0x1EEE6DFA0](v11, v9, v10);
}

uint64_t sub_1E3FD09C8()
{
  OUTLINED_FUNCTION_134();
  v1 = *(v0 + 256);

  sub_1E3FCDF54(v1);
  v2 = *(v0 + 128);
  if (*(v2 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_refreshEventStateTimer))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1E4206B84();
    swift_unknownObjectRelease();
    v2 = *(v0 + 128);
  }

  v3 = *(v2 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__rawSubscription);
  if (v3)
  {
    v4 = v3;
    v5 = sub_1E42056A4();

    sub_1E4205064();
    v6 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__rawPlays;

    sub_1E3FCC2B4(v7);
    v9 = v8;

    *(v2 + v6) = v9;

    sub_1E3FCDFCC();
  }

  sub_1E3FE4198();

  OUTLINED_FUNCTION_54();

  return v10();
}

uint64_t sub_1E3FD0B34()
{
  v31 = v0;
  v1 = *(v0 + 264);

  v2 = *(v0 + 248);
  if (v1)
  {
  }

  else
  {
    v4 = *(v0 + 144);
    v3 = *(v0 + 152);
    v5 = *(v0 + 136);
    v6 = sub_1E3E37F30();
    (*(v4 + 16))(v3, v6, v5);
    v7 = v2;
    v8 = sub_1E41FFC94();
    v9 = sub_1E42067F4();

    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 248);
    v13 = *(v0 + 144);
    v12 = *(v0 + 152);
    v14 = *(v0 + 136);
    if (v10)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v30 = v16;
      *v15 = 136315138;
      swift_getErrorValue();
      v17 = sub_1E4207AB4();
      v19 = sub_1E3270FC8(v17, v18, &v30);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_1E323F000, v8, v9, "See All failed to fetch event subscription. error = %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v13 + 8))(v12, v14);
    }

    else
    {

      (*(v13 + 8))(v12, v14);
    }
  }

  v20 = *(v0 + 128);
  if (*(v20 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_refreshEventStateTimer))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1E4206B84();
    swift_unknownObjectRelease();
    v20 = *(v0 + 128);
  }

  v21 = *(v20 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__rawSubscription);
  if (v21)
  {
    v22 = v21;
    v23 = sub_1E42056A4();

    sub_1E4205064();
    v24 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__rawPlays;

    sub_1E3FCC2B4(v25);
    v27 = v26;

    *(v20 + v24) = v27;

    sub_1E3FCDFCC();
  }

  sub_1E3FE4198();

  OUTLINED_FUNCTION_54();

  return v28();
}

void sub_1E3FD0E04()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  sub_1E4206C04();
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_9();
  v5 = objc_opt_self();
  v6 = [v5 defaultCenter];
  sub_1E4206C14();

  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_weakInit();
  sub_1E3FD70F0(&qword_1EE23B130, MEMORY[0x1E6969F20]);
  sub_1E4200844();

  v7 = *(v3 + 8);
  v8 = OUTLINED_FUNCTION_74();
  v7(v8);
  v9 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_notifications;
  OUTLINED_FUNCTION_11_3(v1 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_notifications, v12);
  sub_1E42004C4();
  swift_endAccess();

  v10 = [v5 defaultCenter];
  sub_1E4206C14();

  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_weakInit();
  sub_1E4200844();

  v11 = OUTLINED_FUNCTION_74();
  v7(v11);
  OUTLINED_FUNCTION_11_3(v1 + v9, v12);
  sub_1E42004C4();
  swift_endAccess();

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3FD1064()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_32_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_17_2(v9);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_19_2();
  v11 = sub_1E3E36DD8(5, 0x4008000000000000, 1);
  v13 = v12;
  sub_1E4206444();
  sub_1E4206474();
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  OUTLINED_FUNCTION_4_0();
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = v18;
  *(v19 + 40) = v11;
  *(v19 + 48) = v13;
  *(v19 + 56) = v2;
  *(v19 + 64) = v6;
  *(v19 + 72) = v4;
  swift_unknownObjectRetain();

  v20 = OUTLINED_FUNCTION_23_7();
  sub_1E3CC3FD0(v20, v21, v0, v22, v19);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_21_1();
  sub_1E325F858(v23, v24);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3FD11B8()
{
  OUTLINED_FUNCTION_31_1();
  v66 = v3;
  v67 = v0;
  v54 = v4;
  v52 = v5;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v58 = v7;
  v59 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v56 = v9 - v8;
  OUTLINED_FUNCTION_138();
  v57 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v55 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v53 = v13 - v12;
  OUTLINED_FUNCTION_138();
  sub_1E4203FB4();
  OUTLINED_FUNCTION_0_10();
  v64 = v15;
  v65 = v14;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v63 = (v17 - v16);
  OUTLINED_FUNCTION_138();
  sub_1E4204014();
  OUTLINED_FUNCTION_0_10();
  v61 = v19;
  v62 = v18;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v60 = &v51 - v24;
  OUTLINED_FUNCTION_138();
  v25 = sub_1E4206AE4();
  OUTLINED_FUNCTION_0_10();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5_9();
  v29 = sub_1E4203FD4();
  OUTLINED_FUNCTION_0_10();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_93_2();
  sub_1E3280A90(0, &qword_1EE23B180, 0x1E69E9630);
  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  (*(v31 + 104))(v2, *MEMORY[0x1E69E7F88], v29);
  v33 = sub_1E4206A54();
  (*(v31 + 8))(v2, v29);
  v68[0] = MEMORY[0x1E69E7CC0];
  sub_1E3FD70F0(&qword_1ECF3DA68, MEMORY[0x1E69E80B0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DA70, &unk_1E42E3A58);
  OUTLINED_FUNCTION_47();
  sub_1E3A1558C(v34, v35);
  sub_1E42072E4();
  v36 = v67;
  v37 = sub_1E4206AF4();

  (*(v27 + 8))(v1, v25);
  v38 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_refreshEventStateTimer;
  *(v36 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_refreshEventStateTimer) = v37;
  swift_unknownObjectRelease();
  if (*(v36 + v38))
  {
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1E4204004();
    v40 = v60;
    v41 = v66;
    MEMORY[0x1E690E9C0](v22, v66);
    v42 = v62;
    v43 = *(v61 + 8);
    v43(v22, v62);
    v44 = v63;
    sub_1E3FD42DC(v63);
    MEMORY[0x1E69116A0](v40, v41, v44, ObjectType);
    swift_unknownObjectRelease();
    (*(v64 + 8))(v44, v65);
    v43(v40, v42);
    if (*(v36 + v38))
    {
      swift_getObjectType();
      OUTLINED_FUNCTION_4_0();
      v45 = swift_allocObject();
      swift_weakInit();
      OUTLINED_FUNCTION_5_10();
      v46 = swift_allocObject();
      v47 = v52;
      v46[2] = v45;
      v46[3] = v47;
      v46[4] = v54;
      v68[4] = sub_1E3FD7134;
      v68[5] = v46;
      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 1107296256;
      v68[2] = sub_1E378AEA4;
      v68[3] = &block_descriptor_150;
      v48 = _Block_copy(v68);
      swift_unknownObjectRetain();

      v49 = v53;
      sub_1E4203FE4();
      v50 = v56;
      sub_1E3979930();
      OUTLINED_FUNCTION_124();
      sub_1E4206B64();
      _Block_release(v48);
      swift_unknownObjectRelease();
      (*(v58 + 8))(v50, v59);
      (*(v55 + 8))(v49, v57);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

double sub_1E3FD17C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v21[-v4 - 8];
  OUTLINED_FUNCTION_5_0(a1 + 16, v21);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_1E4206474();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
    sub_1E4206434();

    v13 = sub_1E4206424();
    OUTLINED_FUNCTION_5_10();
    v14 = swift_allocObject();
    v15 = MEMORY[0x1E69E85E0];
    v14[2] = v13;
    v14[3] = v15;
    v14[4] = v8;
    v16 = OUTLINED_FUNCTION_23_7();
    sub_1E376FE58(v16, v17, v5, v18, v19);
  }

  return result;
}

uint64_t sub_1E3FD18D8()
{
  OUTLINED_FUNCTION_24();
  v0[2] = sub_1E4206434();
  v0[3] = sub_1E4206424();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E3FD01A4();
}

uint64_t sub_1E3FD1980()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  sub_1E42063B4();
  v3 = OUTLINED_FUNCTION_42_5();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E3FD1AA4()
{
  OUTLINED_FUNCTION_24();
  v0[3] = v1;
  v0[4] = v2;
  v0[5] = sub_1E4206434();
  v0[6] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v4 = sub_1E42063B4();
  v0[7] = v4;
  v0[8] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1E3FD1B38, v4, v3);
}

uint64_t sub_1E3FD1B38()
{
  OUTLINED_FUNCTION_134();
  v1 = v0[4];
  v2 = v0[3];
  v3 = sub_1E4206424();
  v0[9] = v3;
  v4 = swift_task_alloc();
  v0[10] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[11] = v5;
  v6 = sub_1E4205714();
  *v5 = v0;
  v5[1] = sub_1E3FD1C4C;
  v7 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v0 + 2, v3, v7, 0xD000000000000012, 0x80000001E428CB80, sub_1E3FD749C, v4, v6);
}

uint64_t sub_1E3FD1C4C()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_31();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  v3[12] = v0;

  if (v0)
  {
    v7 = v3[7];
    v8 = v3[8];
    v9 = sub_1E3FD1DC0;
  }

  else
  {

    v7 = v3[7];
    v8 = v3[8];
    v9 = sub_1E3FD1D5C;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1E3FD1D5C()
{
  OUTLINED_FUNCTION_24();

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E3FD1DC0()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

double sub_1E3FD1E30(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36000, &unk_1E42C71E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_5_0(a2 + 16, v25);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;

    sub_1E3FCD8B0();
    v8 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__rawPlays;

    sub_1E3FCC2B4(v9);
    v11 = v10;

    *(v7 + v8) = v11;

    sub_1E3FCDFCC();
    sub_1E3FCCB5C();
    v12 = OUTLINED_FUNCTION_39_3();
    sub_1E379D7E4(v12, v13, v14, v15);
    OUTLINED_FUNCTION_34();
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      sub_1E325F858(v2, &qword_1ECF36000);
    }

    else
    {
      v16 = *v2;
      v17 = sub_1E42056A4();
      v18 = sub_1E4205024();

      sub_1E3FD2000(v18);

      type metadata accessor for SportsRunningClockViewModel(0);
      v19 = (v7 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_eventDateString);
      OUTLINED_FUNCTION_5_0(v7 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_eventDateString, v24);
      v21 = *v19;
      v20 = v19[1];

      v22 = v16;
      v23 = sub_1E3F833B0(v22, v21, v20);
      sub_1E3FCD37C(v23);
    }
  }

  return result;
}

double sub_1E3FD2000(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_34();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  sub_1E4205B94();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  sub_1E3FD2414();
  v10 = v9;
  v11 = OUTLINED_FUNCTION_39_3();
  sub_1E325F858(v11, v12);
  if (*(v10 + 16) == 2)
  {
    v13 = *(v10 + 32);
    swift_getKeyPath();
    swift_getKeyPath();
    OUTLINED_FUNCTION_36_57();
    v14 = sub_1E4200664();
    *v15 = v13;
    *(v15 + 8) = 0;
    v14(v22, 0);

    v16 = *(v10 + 16);
    if (v16)
    {
      v17 = *(v10 + 8 * v16 + 24);
    }

    else
    {
      v17 = 0;
    }

    v19 = v16 == 0;

    swift_getKeyPath();
    swift_getKeyPath();
    v20 = sub_1E4200664();
    *v21 = v17;
    *(v21 + 8) = v19;
    v20(v22, 0);
  }

  else
  {
  }

  return result;
}

void sub_1E3FD21BC(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v26 = a2;
  v5 = type metadata accessor for SportsSeeAllPlayModel(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v23 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  v11 = 0;
  v12 = *(a3 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v12 == v11)
    {

      return;
    }

    if (v11 >= *(a3 + 16))
    {
      break;
    }

    v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v14 = *(v6 + 72);
    sub_1E3FD6FCC(a3 + v13 + v14 * v11, v10);
    v15 = v25(v10);
    if (v3)
    {
      sub_1E3FD7030(v10, type metadata accessor for SportsSeeAllPlayModel);

      return;
    }

    if (v15)
    {
      sub_1E3FD7084(v10, v23);
      v16 = v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1E3FD653C(0, *(v16 + 16) + 1, 1);
        v16 = v27;
      }

      v19 = *(v16 + 16);
      v18 = *(v16 + 24);
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        v24 = v19 + 1;
        v22 = v19;
        sub_1E3FD653C((v18 > 1), v19 + 1, 1);
        v20 = v24;
        v19 = v22;
        v16 = v27;
      }

      ++v11;
      *(v16 + 16) = v20;
      v24 = v16;
      sub_1E3FD7084(v23, v16 + v13 + v19 * v14);
    }

    else
    {
      sub_1E3FD7030(v10, type metadata accessor for SportsSeeAllPlayModel);
      ++v11;
    }
  }

  __break(1u);
}

void sub_1E3FD2414()
{
  OUTLINED_FUNCTION_31_1();
  v29 = v0;
  v30 = v4;
  v5 = sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_93_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DA10, &qword_1E42E3A28);
  OUTLINED_FUNCTION_17_2(v9);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_33_5();
  v11 = sub_1E4205B94();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_86_19();
  sub_1E379D7E4(v15, v16, v17, &qword_1E42E3A28);
  OUTLINED_FUNCTION_34_4(v2);
  if (v18)
  {
    v19 = v29;
    sub_1E3FCE014();
    sub_1E4205BC4();
    (*(v7 + 8))(v3, v5);
    OUTLINED_FUNCTION_34_4(v2);
    if (!v18)
    {
      sub_1E325F858(v2, &unk_1ECF3DA10);
    }
  }

  else
  {
    (*(v13 + 32))(v1, v2, v11);
    v19 = v29;
  }

  v20 = *(v19 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_competitors);
  if (!*(v20 + 16))
  {
    v32 = 0u;
    v33 = 0u;
    goto LABEL_14;
  }

  v21 = *(v20 + 32);
  OUTLINED_FUNCTION_95_19(&type metadata for ViewModelKeys.Sports);
  sub_1E3F9F164(v31, v21, MEMORY[0x1E69E7CA0] + 8);

  __swift_destroy_boxed_opaque_existential_1(v31);
  if (!*(&v33 + 1))
  {
LABEL_14:
    sub_1E325F858(&v32, &unk_1ECF296E0);
    v23 = 0;
    v24 = 0;
    goto LABEL_15;
  }

  v22 = swift_dynamicCast();
  if (v22)
  {
    v23 = v31[0];
  }

  else
  {
    v23 = 0;
  }

  if (v22)
  {
    v24 = v31[1];
  }

  else
  {
    v24 = 0;
  }

LABEL_15:

  v31[0] = OUTLINED_FUNCTION_33_81(v25);
  sub_1E3FD5A30(v31, v23, v24);

  v27 = v31[0];
  MEMORY[0x1EEE9AC00](v26);
  v28[2] = v1;
  sub_1E3FCFADC(sub_1E3FD6F60, v28, v27);
  OUTLINED_FUNCTION_11_5();

  (*(v13 + 8))(v1, v11);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3FD2760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_31_1();
  v115 = v15;
  sub_1E4205AF4();
  OUTLINED_FUNCTION_8_1();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v114 = v20 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DAA8, &unk_1E42E3AB8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v106 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DAB0, &qword_1E42E1810);
  v27 = OUTLINED_FUNCTION_17_2(v26);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_4_6();
  v113 = v28 - v29;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v30);
  v116 = &v106 - v31;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v32);
  v117 = &v106 - v33;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v106 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v106 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v106 - v41;
  sub_1E3FD342C();
  if (v43)
  {
    v112 = v14;
    v115 = v12;
    v109 = v43;
    sub_1E3FCC7DC(v43, v42);
    v44 = *MEMORY[0x1E69D3C88];
    v111 = v17;
    v45 = *(v17 + 104);
    v108 = v44;
    v107 = v45;
    v45(v39);
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v46, v47, v48, v13);
    v110 = v21;
    v49 = *(v21 + 48);
    OUTLINED_FUNCTION_21_1();
    sub_1E379D7E4(v50, v51, v52, &qword_1E42E1810);
    sub_1E379D7E4(v39, &v25[v49], &qword_1ECF3DAB0, &qword_1E42E1810);
    OUTLINED_FUNCTION_21_2(v25);
    if (v59)
    {
      OUTLINED_FUNCTION_68_3();
      sub_1E325F858(v53, v54);
      OUTLINED_FUNCTION_68_3();
      sub_1E325F858(v55, v56);
      OUTLINED_FUNCTION_21_2(&v25[v49]);
      if (v59)
      {
        sub_1E325F858(v25, &qword_1ECF3DAB0);
        v57 = 1;
        goto LABEL_14;
      }
    }

    else
    {
      sub_1E379D7E4(v25, v36, &qword_1ECF3DAB0, &qword_1E42E1810);
      OUTLINED_FUNCTION_21_2(&v25[v49]);
      if (!v59)
      {
        v62 = v111;
        v63 = v114;
        (*(v111 + 32))(v114, &v25[v49], v13);
        OUTLINED_FUNCTION_28_85();
        sub_1E3FD70F0(v64, v65);
        v57 = sub_1E4205E84();
        v66 = *(v62 + 8);
        v66(v63, v13);
        sub_1E325F858(v39, &qword_1ECF3DAB0);
        OUTLINED_FUNCTION_86_19();
        sub_1E325F858(v67, v68);
        v69 = OUTLINED_FUNCTION_39_3();
        (v66)(v69);
        OUTLINED_FUNCTION_86_19();
        sub_1E325F858(v70, v71);
        goto LABEL_14;
      }

      sub_1E325F858(v39, &qword_1ECF3DAB0);
      sub_1E325F858(v42, &qword_1ECF3DAB0);
      v60 = OUTLINED_FUNCTION_39_3();
      v61(v60);
    }

    sub_1E325F858(v25, &qword_1ECF3DAA8);
    v57 = 0;
LABEL_14:
    v72 = v110;
    swift_getKeyPath();
    swift_getKeyPath();
    v73 = sub_1E4200664();
    *(v74 + 56) = v57 & 1;
    v73(v118, 0);

    v75 = v117;
    sub_1E3FCFC78(v109, v117);

    v76 = v116;
    v107(v116, v108, v13);
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v77, v78, v79, v13);
    v80 = *(v72 + 48);
    v81 = v112;
    sub_1E379D7E4(v75, v112, &qword_1ECF3DAB0, &qword_1E42E1810);
    sub_1E379D7E4(v76, v81 + v80, &qword_1ECF3DAB0, &qword_1E42E1810);
    OUTLINED_FUNCTION_21_2(v81);
    if (v59)
    {
      OUTLINED_FUNCTION_21_1();
      sub_1E325F858(v82, v83);
      v84 = OUTLINED_FUNCTION_38_0();
      sub_1E325F858(v84, v85);
      OUTLINED_FUNCTION_21_2(v81 + v80);
      if (v59)
      {
        sub_1E325F858(v81, &qword_1ECF3DAB0);
        v86 = 1;
LABEL_23:
        swift_getKeyPath();
        swift_getKeyPath();
        v104 = sub_1E4200664();
        *(v105 + 56) = v86 & 1;
        v104(v118, 0);

        OUTLINED_FUNCTION_25_2();
        return;
      }
    }

    else
    {
      v87 = v113;
      sub_1E379D7E4(v81, v113, &qword_1ECF3DAB0, &qword_1E42E1810);
      OUTLINED_FUNCTION_21_2(v81 + v80);
      if (!v88)
      {
        v93 = v111;
        (*(v111 + 32))(v114, v81 + v80, v13);
        OUTLINED_FUNCTION_28_85();
        sub_1E3FD70F0(v94, v95);
        v86 = sub_1E4205E84();
        v96 = *(v93 + 8);
        v97 = OUTLINED_FUNCTION_39_3();
        v96(v97);
        OUTLINED_FUNCTION_68_3();
        sub_1E325F858(v98, v99);
        OUTLINED_FUNCTION_68_3();
        sub_1E325F858(v100, v101);
        (v96)(v87, v13);
        OUTLINED_FUNCTION_68_3();
        sub_1E325F858(v102, v103);
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_21_1();
      sub_1E325F858(v89, v90);
      v91 = OUTLINED_FUNCTION_38_0();
      sub_1E325F858(v91, v92);
      (*(v111 + 8))(v87, v13);
    }

    sub_1E325F858(v81, &qword_1ECF3DAA8);
    v86 = 0;
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_25_2();

  sub_1E3FD2EB0();
}

void sub_1E3FD2EB0()
{
  OUTLINED_FUNCTION_31_1();
  v55 = v3;
  v56 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DA10, &qword_1E42E3A28);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v54 - v6;
  sub_1E4205BF4();
  OUTLINED_FUNCTION_8_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_93_2();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BD98, &qword_1E42E3AB0);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v54 - v17;
  sub_1E4205B94();
  OUTLINED_FUNCTION_0_10();
  v57 = v19;
  v58 = v20;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v23 = v22 - v21;
  sub_1E379D7E4(v55, v18, &qword_1ECF2BD98, &qword_1E42E3AB0);
  v24 = sub_1E4205784();
  if (__swift_getEnumTagSinglePayload(v18, 1, v24) != 1)
  {
    v25 = v0;
    v26 = v23;
    sub_1E379D7E4(v18, v15, &qword_1ECF2BD98, &qword_1E42E3AB0);
    v27 = *(v24 - 8);
    if ((*(v27 + 88))(v15, v24) == *MEMORY[0x1E69D3BF8])
    {
      v29 = v57;
      v28 = v58;
      v23 = v26;
      (*(v58 + 104))(v26, *MEMORY[0x1E69D3D50], v57);
      goto LABEL_6;
    }

    (*(v27 + 8))(v15, v24);
    v23 = v26;
    v0 = v25;
  }

  sub_1E3FCE014();
  sub_1E4205BC4();
  (*(v9 + 8))(v1, v0);
  v29 = v57;
  v28 = v58;
LABEL_6:
  sub_1E325F858(v18, &qword_1ECF2BD98);
  (*(v28 + 16))(v7, v23, v29);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v29);
  sub_1E3FD2414();
  v34 = v33;
  sub_1E325F858(v7, &unk_1ECF3DA10);
  if (*(v34 + 16) == 2)
  {
    v35 = v23;
    if (*(v34 + 32) == *(v34 + 40) || ((v59 = v34, , sub_1E3F9A678(&v59), (v36 = *(v59 + 2)) == 0) ? (v37 = 0) : (v37 = *&v59[8 * v36 + 24]), , !v36))
    {

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1E4200664();
      *(v47 + 56) = 0;
      v48 = OUTLINED_FUNCTION_89_17();
      v49(v48);

      swift_getKeyPath();
      KeyPath = swift_getKeyPath();
      OUTLINED_FUNCTION_81_25(KeyPath);
      *(v51 + 56) = 0;
      v52 = OUTLINED_FUNCTION_89_17();
      v53(v52);
    }

    else
    {
      v38 = *(v34 + 32) == v37;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1E4200664();
      *(v39 + 56) = v38;
      v28 = v58;
      v40 = OUTLINED_FUNCTION_89_17();
      v41(v40);

      v42 = *(v34 + 40);

      swift_getKeyPath();
      v43 = swift_getKeyPath();
      OUTLINED_FUNCTION_81_25(v43);
      *(v44 + 56) = v42 == v37;
      v45 = OUTLINED_FUNCTION_89_17();
      v46(v45);
    }

    (*(v28 + 8))(v35, v29);
  }

  else
  {
    (*(v28 + 8))(v23, v29);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3FD342C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DAB0, &qword_1E42E1810);
  v3 = OUTLINED_FUNCTION_17_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v47[-1] - v5;
  v7 = sub_1E4205AF4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v13 = (v11 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v47[-1] - v15;
  v17 = *(v0 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_competitors);
  if (!*(v17 + 16))
  {
    v48 = 0u;
    v49 = 0u;
    goto LABEL_10;
  }

  v18 = *(v17 + 32);
  OUTLINED_FUNCTION_95_19(&type metadata for ViewModelKeys.Sports);
  sub_1E3F9F164(v47, v18, MEMORY[0x1E69E7CA0] + 8);

  __swift_destroy_boxed_opaque_existential_1(v47);
  if (!*(&v49 + 1))
  {
LABEL_10:
    sub_1E325F858(&v48, &unk_1ECF296E0);
    v20 = 0;
    v21 = 0;
    goto LABEL_11;
  }

  v19 = swift_dynamicCast();
  if (v19)
  {
    v20 = v47[0];
  }

  else
  {
    v20 = 0;
  }

  if (v19)
  {
    v21 = v47[1];
  }

  else
  {
    v21 = 0;
  }

LABEL_11:

  v47[0] = OUTLINED_FUNCTION_33_81(v22);
  sub_1E3FD5A30(v47, v20, v21);

  v23 = v47[0];
  if (!sub_1E32AE9B0(v47[0]))
  {

    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v7);
    goto LABEL_19;
  }

  if ((v23 & 0xC000000000000001) != 0)
  {
    v24 = MEMORY[0x1E6911E60](0, v23);
    goto LABEL_15;
  }

  if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v24 = *(v23 + 32);
LABEL_15:
    v25 = v24;
    sub_1E4205974();

    OUTLINED_FUNCTION_34_4(v6);
    if (!v26)
    {
      v31 = *(v9 + 32);
      v31(v16, v6, v7);
      v32 = sub_1E37CB21C(v23);

      if (v32)
      {
        sub_1E4205974();

        OUTLINED_FUNCTION_34_4(v1);
        if (!v26)
        {
          v31(v13, v1, v7);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DAC0, &qword_1E42E1818);
          v40 = *(v9 + 72);
          v41 = (*(v9 + 80) + 32) & ~*(v9 + 80);
          v42 = swift_allocObject();
          *(v42 + 16) = xmmword_1E4299720;
          v43 = v42 + v41;
          (*(v9 + 16))(v43, v16, v7);
          v31((v43 + v40), v13, v7);
          v44 = OUTLINED_FUNCTION_38_0();
          v45(v44);
LABEL_27:
          OUTLINED_FUNCTION_25_2();
          return;
        }

        v33 = OUTLINED_FUNCTION_38_0();
        v34(v33);
      }

      else
      {
        v35 = OUTLINED_FUNCTION_38_0();
        v36(v35);
        OUTLINED_FUNCTION_32_2();
        __swift_storeEnumTagSinglePayload(v37, v38, v39, v7);
      }

      v30 = v1;
LABEL_26:
      sub_1E325F858(v30, &qword_1ECF3DAB0);
      goto LABEL_27;
    }

LABEL_19:
    v30 = v6;
    goto LABEL_26;
  }

  __break(1u);

  __break(1u);
}

uint64_t sub_1E3FD3838(uint64_t a1)
{
  v45 = sub_1E4204DD4();
  v3 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v43 = v35 - v6;
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    return v8;
  }

  v35[1] = v1;
  v50 = MEMORY[0x1E69E7CC0];
  sub_1E3746CB0(0, v7, 0);
  v8 = v50;
  result = sub_1E3746DC4(a1);
  v12 = 0;
  v13 = a1 + 56;
  v41 = v3 + 16;
  v42 = v3;
  v39 = a1;
  v40 = v3 + 8;
  v36 = a1 + 64;
  v37 = v7;
  v38 = a1 + 56;
  if ((result & 0x8000000000000000) == 0)
  {
    while (result < 1 << *(a1 + 32))
    {
      v14 = result >> 6;
      v15 = 1 << result;
      if ((*(v13 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_24;
      }

      if (*(a1 + 36) != v10)
      {
        goto LABEL_25;
      }

      v49 = v11;
      v47 = result;
      v48 = v10;
      v46 = v12;
      v16 = *(a1 + 48);
      v17 = v8;
      v18 = v42;
      v19 = v43;
      v20 = *(v42 + 16);
      v21 = v45;
      v20(v43, v16 + *(v42 + 72) * result, v45);
      v22 = v44;
      v20(v44, v19, v21);
      v23 = sub_1E3D5C7A0(v22);
      v24 = *(v18 + 8);
      v8 = v17;
      result = v24(v19, v21);
      v50 = v17;
      v26 = *(v17 + 16);
      v25 = *(v17 + 24);
      if (v26 >= v25 >> 1)
      {
        result = sub_1E3746CB0((v25 > 1), v26 + 1, 1);
        v8 = v50;
      }

      *(v8 + 16) = v26 + 1;
      *(v8 + v26 + 32) = v23;
      if (v49)
      {
        goto LABEL_29;
      }

      v13 = v38;
      a1 = v39;
      v27 = 1 << *(v39 + 32);
      result = v47;
      if (v47 >= v27)
      {
        goto LABEL_26;
      }

      v28 = *(v38 + 8 * v14);
      if ((v28 & v15) == 0)
      {
        goto LABEL_27;
      }

      if (*(v39 + 36) != v48)
      {
        goto LABEL_28;
      }

      v29 = v28 & (-2 << (v47 & 0x3F));
      if (v29)
      {
        v27 = __clz(__rbit64(v29)) | v47 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v30 = v14 << 6;
        v31 = v14 + 1;
        v32 = (v36 + 8 * v14);
        while (v31 < (v27 + 63) >> 6)
        {
          v34 = *v32++;
          v33 = v34;
          v30 += 64;
          ++v31;
          if (v34)
          {
            sub_1E3746E04(v47, v48, 0);
            v27 = __clz(__rbit64(v33)) + v30;
            goto LABEL_19;
          }
        }

        sub_1E3746E04(v47, v48, 0);
      }

LABEL_19:
      v12 = v46 + 1;
      if (v46 + 1 == v37)
      {
        return v8;
      }

      v11 = 0;
      v10 = *(a1 + 36);
      result = v27;
      if (v27 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
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

void sub_1E3FD3B84()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35FF8, &qword_1E42C71D8);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_33_5();
  sub_1E4205004();
  v7 = sub_1E4204FF4();
  (*(v5 + 16))(v0, v2, v3);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v0, v3);
  OUTLINED_FUNCTION_13_8();
  sub_1E4204F44();

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3FD3CD4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E4204D64();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36000, &unk_1E42C71E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v18 - v10);
  sub_1E379D7E4(v1, &v18 - v10, &qword_1ECF36000, &unk_1E42C71E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = OUTLINED_FUNCTION_34();
    v13(v12);
    sub_1E3FD70F0(&qword_1ECF3DAD0, MEMORY[0x1E69D3990]);
    v14 = swift_allocError();
    (*(v4 + 16))(v15, v8, v2);
    v19 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35FF8, &qword_1E42C71D8);
    sub_1E42063C4();
    v16 = OUTLINED_FUNCTION_13_8();
    v17(v16);
  }

  else
  {
    v19 = *v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35FF8, &qword_1E42C71D8);
    sub_1E42063D4();
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3FD3ED8()
{
  v1 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__plays;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3D8D0, &unk_1E42E35A0);
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__firstPlayID;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8E8, &unk_1E42E35B8);
  OUTLINED_FUNCTION_10();
  (*(v4 + 8))(v0 + v3);
  v5 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__isLoadingSpinnerHidden;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  OUTLINED_FUNCTION_10();
  (*(v6 + 8))(v0 + v5);
  v7 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__totalPlayCount;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39130, &qword_1E42D3CE0);
  OUTLINED_FUNCTION_10();
  (*(v8 + 8))(v0 + v7);
  v9 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__periodSelectionViewModel;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3D8F8, &unk_1E42E36A0);
  OUTLINED_FUNCTION_10();
  (*(v10 + 8))(v0 + v9);
  v11 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__leftTeamScoreCard;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3D908, &unk_1E42E36F8);
  OUTLINED_FUNCTION_2();
  v14 = *(v13 + 8);
  v14(v0 + v11, v12);
  v14(v0 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__rightTeamScoreCard, v12);
  v15 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__clock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3D920, &unk_1E42E37A0);
  OUTLINED_FUNCTION_10();
  (*(v16 + 8))(v0 + v15);
  v17 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__baseballClockViewModel;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3D938, &unk_1E42E3800);
  OUTLINED_FUNCTION_10();
  (*(v18 + 8))(v0 + v17);
  v19 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__gameStatus;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D948, &qword_1E42E3858);
  OUTLINED_FUNCTION_10();
  (*(v20 + 8))(v0 + v19);
  v21 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__displayErrors;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3D950, &unk_1E42A06E0);
  OUTLINED_FUNCTION_10();
  (*(v22 + 8))(v0 + v21);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_teamColorProvider));

  v23 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__clockScoreVoiceOverText;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B498, &unk_1E42C1E70);
  OUTLINED_FUNCTION_10();
  (*(v24 + 8))(v0 + v23);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1E3FD4264()
{
  sub_1E3FD3ED8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3FD42DC@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = *MEMORY[0x1E69E7F28];
  v3 = sub_1E4203FB4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1E3FD4354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_24();
  *(v9 + 112) = v10;
  *(v9 + 120) = a9;
  *(v9 + 73) = v11;
  *(v9 + 96) = v12;
  *(v9 + 104) = v13;
  *(v9 + 88) = v14;
  v15 = sub_1E41FFCB4();
  *(v9 + 128) = v15;
  OUTLINED_FUNCTION_8_0(v15);
  *(v9 + 136) = v16;
  *(v9 + 144) = swift_task_alloc();
  *(v9 + 152) = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_17_2(v17);
  *(v9 + 160) = OUTLINED_FUNCTION_86_0();
  v18 = OUTLINED_FUNCTION_11_1();
  return OUTLINED_FUNCTION_96_20(v18, v19, v20);
}

uint64_t sub_1E3FD443C()
{
  OUTLINED_FUNCTION_5_0(*(v0 + 88) + 16, v0 + 16);
  Strong = swift_weakLoadStrong();
  *(v0 + 168) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 160);
    v4 = *(v0 + 112);
    v3 = *(v0 + 120);
    v5 = *(v0 + 73);
    v7 = *(v0 + 96);
    v6 = *(v0 + 104);
    sub_1E4206444();
    sub_1E4206474();
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
    OUTLINED_FUNCTION_4_0();
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v5;
    *(v13 + 32) = v7;
    *(v13 + 40) = v6;
    *(v13 + 48) = v4;
    *(v13 + 56) = v3;
    swift_unknownObjectRetain();

    v14 = MEMORY[0x1E69E7CA8];
    v15 = OUTLINED_FUNCTION_57();
    v19 = sub_1E3E36FC4(v15, v16, v6, v17, v13, v18);
    *(v0 + 176) = v19;

    sub_1E325F858(v2, &unk_1ECF2C400);
    v20 = swift_task_alloc();
    *(v0 + 184) = v20;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
    *v20 = v0;
    v20[1] = sub_1E3FD466C;
    v22 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA20](v0 + 64, v19, v14 + 8, v21, v22);
  }

  else
  {

    OUTLINED_FUNCTION_54();

    return v23();
  }
}

uint64_t sub_1E3FD466C()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E3FD4750()
{
  v25 = v0;
  v1 = *(v0 + 64);
  if (*(v0 + 72) == 1)
  {
    v3 = *(v0 + 136);
    v2 = *(v0 + 144);
    v4 = *(v0 + 128);
    v5 = sub_1E3E37F30();
    (*(v3 + 16))(v2, v5, v4);
    v6 = v1;
    v7 = sub_1E41FFC94();
    v8 = sub_1E42067F4();
    sub_1E3A203D0(v1, 1);
    v9 = os_log_type_enabled(v7, v8);
    v11 = *(v0 + 136);
    v10 = *(v0 + 144);
    v12 = *(v0 + 128);
    if (v9)
    {
      v13 = swift_slowAlloc();
      v23 = v12;
      v14 = swift_slowAlloc();
      v24 = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v15 = sub_1E4207AB4();
      v17 = sub_1E3270FC8(v15, v16, &v24);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1E323F000, v7, v8, "SportsPlayByPlaySeeAllViewLiveData: failed to refresh event state. error = %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      sub_1E3A203D0(v1, 1);

      (*(v11 + 8))(v10, v23);
    }

    else
    {

      sub_1E3A203D0(v1, 1);

      (*(v11 + 8))(v10, v12);
    }

    OUTLINED_FUNCTION_54();

    return v21();
  }

  else
  {
    sub_1E4206434();
    *(v0 + 192) = sub_1E4206424();
    OUTLINED_FUNCTION_50();
    sub_1E42063B4();
    v18 = OUTLINED_FUNCTION_42_5();

    return MEMORY[0x1EEE6DFA0](v18, v19, v20);
  }
}

uint64_t sub_1E3FD49E4()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 168);

  *(v1 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_hasFetchedAllPlays) = 1;
  v2 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1E3FD4A54()
{
  OUTLINED_FUNCTION_134();
  sub_1E3E37F30();
  v1 = OUTLINED_FUNCTION_22_34();
  v2(v1);
  v3 = sub_1E41FFC94();
  v4 = sub_1E42067E4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1E323F000, v3, v4, "SportsPlayByPlaySeeAllViewLiveData: triggerEventStateRefresh success", v5, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  else
  {
  }

  (*(v0[17] + 8))(v0[19], v0[16]);

  OUTLINED_FUNCTION_54();

  return v6();
}

uint64_t sub_1E3FD4B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_24();
  *(v9 + 64) = v10;
  *(v9 + 72) = a9;
  *(v9 + 48) = v11;
  *(v9 + 56) = v12;
  *(v9 + 144) = v13;
  *(v9 + 40) = v14;
  v15 = sub_1E41FFCB4();
  *(v9 + 80) = v15;
  OUTLINED_FUNCTION_8_0(v15);
  *(v9 + 88) = v16;
  *(v9 + 96) = OUTLINED_FUNCTION_86_0();
  v17 = OUTLINED_FUNCTION_11_1();
  return OUTLINED_FUNCTION_96_20(v17, v18, v19);
}

uint64_t sub_1E3FD4C3C()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_5_0(*(v0 + 40) + 16, v0 + 16);
  Strong = swift_weakLoadStrong();
  *(v0 + 104) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 56);
    if (*(v0 + 144))
    {
      ObjectType = swift_getObjectType();
      v4 = *(v2 + 24);
      *(v0 + 112) = v4;
      if (v4(ObjectType, v2) > 2)
      {
        sub_1E4206434();
        *(v0 + 120) = sub_1E4206424();
        OUTLINED_FUNCTION_50();
        sub_1E42063B4();
        v5 = OUTLINED_FUNCTION_42_5();

        return MEMORY[0x1EEE6DFA0](v5, v6, v7);
      }

      v2 = *(v0 + 56);
    }

    else
    {
      v4 = *(v2 + 24);
    }

    v9 = swift_getObjectType();
    if (v4(v9, v2) >= 1)
    {
      sub_1E3E37F30();
      v10 = OUTLINED_FUNCTION_22_34();
      v11(v10);
      v12 = sub_1E41FFC94();
      v13 = sub_1E42067E4();
      if (os_log_type_enabled(v12, v13))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_3_12(&dword_1E323F000, v14, v15, "SportsPlayByPlaySeeAllViewLiveData: retrying triggerEventStateRefresh");
        OUTLINED_FUNCTION_6_0();
      }

      v16 = OUTLINED_FUNCTION_17_10();
      v17(v16);
    }

    v18 = swift_task_alloc();
    *(v0 + 128) = v18;
    *v18 = v0;
    OUTLINED_FUNCTION_23_96(v18);

    return sub_1E3FD5248();
  }

  else
  {

    OUTLINED_FUNCTION_54();

    return v8();
  }
}

uint64_t sub_1E3FD4E68()
{
  OUTLINED_FUNCTION_134();

  sub_1E4205004();
  v0 = sub_1E4204FF4();
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_weakInit();

  sub_1E4204F34();

  v1 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1E3FD4F58()
{
  OUTLINED_FUNCTION_27_2();
  v1 = v0[14];
  v2 = v0[7];
  ObjectType = swift_getObjectType();
  if (v1(ObjectType, v2) >= 1)
  {
    sub_1E3E37F30();
    v4 = OUTLINED_FUNCTION_22_34();
    v5(v4);
    v6 = sub_1E41FFC94();
    v7 = sub_1E42067E4();
    if (os_log_type_enabled(v6, v7))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_3_12(&dword_1E323F000, v8, v9, "SportsPlayByPlaySeeAllViewLiveData: retrying triggerEventStateRefresh");
      OUTLINED_FUNCTION_6_0();
    }

    v10 = OUTLINED_FUNCTION_17_10();
    v11(v10);
  }

  v12 = swift_task_alloc();
  v0[16] = v12;
  *v12 = v0;
  OUTLINED_FUNCTION_23_96(v12);

  return sub_1E3FD5248();
}

uint64_t sub_1E3FD5080()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v6 + 136) = v0;

  if (v0)
  {
    v7 = sub_1E3FD51E4;
  }

  else
  {
    v7 = sub_1E3FD5180;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E3FD5180()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E3FD51E4()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E3FD5248()
{
  OUTLINED_FUNCTION_24();
  v0[2] = v1;
  v0[3] = v2;
  v0[4] = sub_1E4206434();
  v0[5] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v4 = sub_1E42063B4();
  v0[6] = v4;
  v0[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1E3FD52DC, v4, v3);
}

uint64_t sub_1E3FD52DC()
{
  OUTLINED_FUNCTION_134();
  v1 = v0[3];
  v2 = v0[2];
  v3 = sub_1E4206424();
  v0[8] = v3;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_1E3FD53E8;
  v6 = MEMORY[0x1E69E85E0];
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v5, v3, v6, 0xD000000000000017, 0x80000001E428CB60, sub_1E3FD70E8, v4, v7);
}

uint64_t sub_1E3FD53E8()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_31();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  v3[11] = v0;

  if (v0)
  {
    v7 = v3[6];
    v8 = v3[7];
    v9 = sub_1E3FD5554;
  }

  else
  {

    v7 = v3[6];
    v8 = v3[7];
    v9 = sub_1E3FD54F8;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1E3FD54F8()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E3FD5554()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

void sub_1E3FD55C4()
{
  OUTLINED_FUNCTION_31_1();
  v16 = v2;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DA40, &qword_1E42C71D0);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_93_2();
  v6 = sub_1E4204F04();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_33_5();
  sub_1E4205004();
  v14 = sub_1E4204FF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DA48, &qword_1E42E3A48);
  *(swift_allocObject() + 16) = xmmword_1E4297BE0;
  sub_1E4204EF4();
  sub_1E3FD70F0(&qword_1ECF3DA50, MEMORY[0x1E69D39F8]);
  v8 = OUTLINED_FUNCTION_57();
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_47();
  sub_1E3A1558C(v10, v11);
  sub_1E42072E4();
  (*(v4 + 16))(v1, v16, v15);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  (*(v4 + 32))(v13 + v12, v1, v15);
  sub_1E4204FD4();

  (*(v7 + 8))(v0, v6);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3FD5880(uint64_t result, uint64_t (*a2)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      a2(0);
      result = sub_1E4206314();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v2;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1E3FD58E0(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for SportsSeeAllPlayModel(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    type metadata accessor for SportsSeeAllPlayModel(0);

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1E3FD59B4(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1E34AF5E0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1E3FD5AE4(v6);
  return sub_1E4207554();
}

uint64_t sub_1E3FD5A30(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  swift_bridgeObjectRetain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1E34AF5E0(v6);
    *a1 = v6;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;

  sub_1E3FD5BD8(v10, a2, a3);
  sub_1E4207554();
  return swift_bridgeObjectRelease_n();
}

void sub_1E3FD5AE4(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1E4207914();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1E3FD5880(v3 / 2, MEMORY[0x1E69D3A58]);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1E37FF3F8(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1E37FEC80(0, v3, 1, a1);
  }
}

uint64_t sub_1E3FD5BD8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_1E4207914();
  if (result < v7)
  {
    v9 = result;
    v10 = sub_1E3FD5880(v7 / 2, MEMORY[0x1E69D3C38]);
    v12[0] = v11;
    v12[1] = (v7 / 2);

    result = sub_1E3FD5D24(v12, &v13, a1, v9, a2, a3);
    if (v3)
    {
      if (v7 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v7 < -1)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
    swift_bridgeObjectRelease_n();
  }

LABEL_5:
  if (v7 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v7)
  {
    sub_1E3F9A910(0, v7, 1, a1, a2, a3);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1E3FD5D24(void **a1, int a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v131 = a1;
  v142 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    OUTLINED_FUNCTION_44_2();
    swift_bridgeObjectRetain_n();
    v9 = MEMORY[0x1E69E7CC0];
LABEL_118:
    v137 = *v131;
    if (!*v131)
    {
      goto LABEL_161;
    }

    OUTLINED_FUNCTION_44_2();
    swift_bridgeObjectRetain_n();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_120:
      v113 = (v9 + 16);
      v114 = *(v9 + 2);
      for (i = v9; ; v9 = i)
      {
        if (v114 < 2)
        {

          return swift_bridgeObjectRelease_n();
        }

        if (!*v142)
        {
          goto LABEL_158;
        }

        v115 = &v9[16 * v114];
        v116 = *v115;
        v9 = v113;
        v117 = &v113[2 * v114];
        v118 = v117[1];
        v119 = *v142 + 8 * *v115;

        OUTLINED_FUNCTION_56_39(v120, v121, v122, v123, v124, v125, v126, v127, v129, v130, v131, v132, v133, i, v136, v137, v114, v142, v143);
        v143 = v119;
        if (v119)
        {
          break;
        }

        if (v118 < v116)
        {
          goto LABEL_146;
        }

        if (v114 - 2 >= *v113)
        {
          goto LABEL_147;
        }

        *v115 = v116;
        *(v115 + 1) = v118;
        if (*v113 < v141)
        {
          goto LABEL_148;
        }

        v114 = *v113 - 1;
        memmove(v117, v117 + 2, 16 * (*v113 - v141));
        *v113 = v114;
      }

      swift_bridgeObjectRelease_n();
    }

LABEL_155:
    v9 = sub_1E37FFF5C(v9);
    goto LABEL_120;
  }

  v130 = a4;
  OUTLINED_FUNCTION_44_2();
  swift_bridgeObjectRetain_n();
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v144 = a6;
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v8 + 1 < v7)
    {
      v134 = v9;
      v12 = *v142;
      v13 = a6;
      v14 = v8 + 1;
      v132 = v8;
      v15 = *(*v142 + 8 * v8);
      v9 = *(*v142 + 8 * v11);
      v16 = v15;
      v17 = sub_1E4205964();
      v18 = sub_1E42054D4();
      v20 = v19;

      if (v13)
      {
        if (v18 == a5 && v20 == v13)
        {
          v138 = 1;
        }

        else
        {
          v138 = sub_1E42079A4();
        }
      }

      else
      {
        v138 = 0;
      }

      v11 = v14;

      v22 = (v12 + 8 * v132 + 16);
      v136 = 8 * v132;
      v137 = v7;
      for (j = 8 * v132 + 8; ; j += 8)
      {
        v24 = v11++;
        if (v11 >= v7)
        {
          break;
        }

        v25 = *(v22 - 1);
        v26 = *v22;
        v9 = v25;
        v27 = sub_1E4205964();
        v28 = sub_1E42054D4();
        v30 = v29;

        if (v144)
        {
          if (v28 == a5 && v30 == v144)
          {

            v7 = v137;
            if ((v138 & 1) == 0)
            {
              v11 = v24 + 1;
              goto LABEL_36;
            }
          }

          else
          {
            v32 = sub_1E42079A4() & 1;

            v7 = v137;
            if ((v138 & 1) != v32)
            {
              break;
            }
          }
        }

        else
        {

          v7 = v137;
          if (v138)
          {
            goto LABEL_26;
          }
        }

        ++v22;
      }

      if ((v138 & 1) == 0)
      {
LABEL_36:
        v9 = v134;
        a6 = v144;
        goto LABEL_37;
      }

LABEL_26:
      v11 = v24 + 1;
      v33 = v132;
      if (v24 + 1 < v132)
      {
        goto LABEL_152;
      }

      if (v132 >= v11)
      {
        v9 = v134;
        a6 = v144;
        v10 = v132;
        goto LABEL_38;
      }

      v34 = v24;
      v9 = v134;
      v35 = 8 * v132;
      a6 = v144;
      do
      {
        if (v33 != v34)
        {
          v36 = *v142;
          if (!*v142)
          {
            goto LABEL_159;
          }

          v37 = *(v36 + v35);
          *(v36 + v35) = *(v36 + j);
          *(v36 + j) = v37;
        }

        ++v33;
        j -= 8;
        v35 += 8;
      }

      while (v33 < v34--);
LABEL_37:
      v10 = v132;
    }

LABEL_38:
    v39 = v142[1];
    if (v11 < v39)
    {
      if (__OFSUB__(v11, v10))
      {
        goto LABEL_151;
      }

      if (v11 - v10 < v130)
      {
        break;
      }
    }

LABEL_64:
    if (v11 < v10)
    {
      goto LABEL_150;
    }

    v140 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v110 = OUTLINED_FUNCTION_27();
      v9 = sub_1E37FFF70(v110, v111, v112, v9);
    }

    v59 = *(v9 + 2);
    v58 = *(v9 + 3);
    v60 = v59 + 1;
    if (v59 >= v58 >> 1)
    {
      v9 = sub_1E37FFF70((v58 > 1), v59 + 1, 1, v9);
    }

    *(v9 + 2) = v60;
    v61 = v9 + 32;
    v62 = &v9[16 * v59 + 32];
    *v62 = v10;
    *(v62 + 1) = v140;
    v137 = *v131;
    if (!*v131)
    {
      goto LABEL_160;
    }

    if (v59)
    {
      v136 = (v9 + 32);
      while (1)
      {
        v63 = v60 - 1;
        v64 = &v61[16 * v60 - 16];
        v65 = &v9[16 * v60];
        if (v60 >= 4)
        {
          break;
        }

        if (v60 == 3)
        {
          v66 = *(v9 + 4);
          v67 = *(v9 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_85:
          if (v69)
          {
            goto LABEL_137;
          }

          v81 = *v65;
          v80 = *(v65 + 1);
          v82 = __OFSUB__(v80, v81);
          v83 = v80 - v81;
          v84 = v82;
          if (v82)
          {
            goto LABEL_140;
          }

          v85 = *(v64 + 1);
          v86 = v85 - *v64;
          if (__OFSUB__(v85, *v64))
          {
            goto LABEL_143;
          }

          if (__OFADD__(v83, v86))
          {
            goto LABEL_145;
          }

          if (v83 + v86 >= v68)
          {
            if (v68 < v86)
            {
              v63 = v60 - 2;
            }

            goto LABEL_107;
          }

          goto LABEL_100;
        }

        if (v60 < 2)
        {
          goto LABEL_139;
        }

        v88 = *v65;
        v87 = *(v65 + 1);
        v76 = __OFSUB__(v87, v88);
        v83 = v87 - v88;
        v84 = v76;
LABEL_100:
        if (v84)
        {
          goto LABEL_142;
        }

        v90 = *v64;
        v89 = *(v64 + 1);
        v76 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v76)
        {
          goto LABEL_144;
        }

        if (v91 < v83)
        {
          goto LABEL_114;
        }

LABEL_107:
        if (v63 - 1 >= v60)
        {
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
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
          goto LABEL_154;
        }

        if (!*v142)
        {
          goto LABEL_157;
        }

        v95 = &v61[16 * v63 - 16];
        v96 = *v95;
        v97 = v63;
        v98 = &v61[16 * v63];
        v99 = *(v98 + 1);
        v100 = *v142 + 8 * *v95;

        OUTLINED_FUNCTION_56_39(v101, v102, v103, v104, v105, v106, v107, v108, v129, v130, v131, v132, v133, v134, v136, v137, v140, v142, v143);
        v143 = v100;
        if (v100)
        {
          OUTLINED_FUNCTION_44_2();
          swift_bridgeObjectRelease_n();
        }

        if (v99 < v96)
        {
          goto LABEL_132;
        }

        v109 = *(v9 + 2);
        if (v97 > v109)
        {
          goto LABEL_133;
        }

        *v95 = v96;
        *(v95 + 1) = v99;
        if (v97 >= v109)
        {
          goto LABEL_134;
        }

        v60 = v109 - 1;
        memmove(v98, v98 + 16, 16 * (v109 - 1 - v97));
        *(v9 + 2) = v109 - 1;
        v61 = v136;
        a6 = v144;
        if (v109 <= 2)
        {
          goto LABEL_114;
        }
      }

      v70 = &v61[16 * v60];
      v71 = *(v70 - 8);
      v72 = *(v70 - 7);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_135;
      }

      v75 = *(v70 - 6);
      v74 = *(v70 - 5);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_136;
      }

      v77 = *(v65 + 1);
      v78 = v77 - *v65;
      if (__OFSUB__(v77, *v65))
      {
        goto LABEL_138;
      }

      v76 = __OFADD__(v68, v78);
      v79 = v68 + v78;
      if (v76)
      {
        goto LABEL_141;
      }

      if (v79 >= v73)
      {
        v93 = *v64;
        v92 = *(v64 + 1);
        v76 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v76)
        {
          goto LABEL_149;
        }

        if (v68 < v94)
        {
          v63 = v60 - 2;
        }

        goto LABEL_107;
      }

      goto LABEL_85;
    }

LABEL_114:
    v8 = v140;
    v7 = v142[1];
    if (v140 >= v7)
    {
      goto LABEL_118;
    }
  }

  if (__OFADD__(v10, v130))
  {
    goto LABEL_153;
  }

  if (v10 + v130 >= v39)
  {
    v40 = v142[1];
  }

  else
  {
    v40 = v10 + v130;
  }

  if (v40 < v10)
  {
LABEL_154:
    __break(1u);
    goto LABEL_155;
  }

  if (v11 == v40)
  {
    goto LABEL_64;
  }

  v133 = v40;
  v134 = v9;
  v41 = v11;
  v42 = *v142;
  v43 = *v142 + 8 * v41 - 8;
  v132 = v10;
  v44 = v10 - v41;
LABEL_48:
  v137 = v43;
  v139 = v41;
  v45 = *(v42 + 8 * v41);
  v136 = v44;
  v46 = v43;
  while (1)
  {
    v47 = *v46;
    v48 = v45;
    v49 = v47;
    v50 = sub_1E4205964();
    v51 = sub_1E42054D4();
    v53 = v52;

    if (!a6)
    {

LABEL_62:
      v41 = v139 + 1;
      v43 = (v137 + 1);
      v44 = v136 - 1;
      if (v139 + 1 == v133)
      {
        v11 = v133;
        v9 = v134;
        v10 = v132;
        goto LABEL_64;
      }

      goto LABEL_48;
    }

    if (v51 == a5 && v53 == a6)
    {
    }

    else
    {
      v55 = sub_1E42079A4();

      if ((v55 & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    if (!v42)
    {
      break;
    }

    v56 = *v46;
    v45 = *(v46 + 8);
    *v46 = v45;
    *(v46 + 8) = v56;
    v46 -= 8;
    if (__CFADD__(v44++, 1))
    {
      goto LABEL_62;
    }
  }

  OUTLINED_FUNCTION_44_2();
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_157:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_158:

  __break(1u);
LABEL_159:
  OUTLINED_FUNCTION_44_2();
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_160:
  OUTLINED_FUNCTION_44_2();
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_161:
  OUTLINED_FUNCTION_44_2();
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

void *sub_1E3FD653C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E3FD655C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E3FD655C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DA38, &unk_1E42E3A38);
  v10 = *(type metadata accessor for SportsSeeAllPlayModel(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for SportsSeeAllPlayModel(0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1E3FD58E0(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1E3FD6710(unint64_t a1, void (*a2)(void *, uint64_t, uint64_t))
{
  if (a1 >> 62)
  {
    v6 = sub_1E4207384();
    if (v6)
    {
      v7 = v6;
      v3 = sub_1E37FEA14(v6, 0);
      a2(v3 + 4, v7, a1);
      v9 = v8;

      if (v9 == v7)
      {
        return v3;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return (a1 & 0xFFFFFFFFFFFFFF8);
}

uint64_t sub_1E3FD67AC()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E3FD011C();
}

uint64_t sub_1E3FD6834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_134();
  v10 = *(v9 + 40);
  v11 = *(v9 + 48);
  v12 = *(v9 + 56);
  v13 = *(v9 + 64);
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_30_0(v14);
  *v15 = v16;
  v17 = OUTLINED_FUNCTION_94_22(v15);

  return sub_1E3FD4354(v17, v18, v19, v20, v10, v11, v12, v13, a9);
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1E3FD6904(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 58))
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

uint64_t sub_1E3FD6958(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for SportsPlayByPlaySeeAllViewLiveData(uint64_t a1)
{
  result = qword_1ECF6A5C0;
  if (!qword_1ECF6A5C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3FD6A20(uint64_t a1)
{
  sub_1E3928D10(319, &qword_1ECF3D968, &qword_1ECF3D8C8, &qword_1E42E3508);
  if (v1 <= 0x3F)
  {
    sub_1E3928D10(319, &qword_1ECF3D970, &qword_1ECF3D8E0, &qword_1E42E35B0);
    if (v2 <= 0x3F)
    {
      sub_1E3F9A4BC(319, &qword_1EE289F50, MEMORY[0x1E69E6370]);
      if (v3 <= 0x3F)
      {
        sub_1E3F9A4BC(319, &qword_1EE289F40, MEMORY[0x1E69E6530]);
        if (v4 <= 0x3F)
        {
          sub_1E3FD6E54(319, &qword_1ECF3D978, type metadata accessor for SportsPeriodSelectionViewModel);
          if (v5 <= 0x3F)
          {
            sub_1E3F9A4BC(319, &qword_1ECF3D980, &type metadata for TeamScoreCard);
            if (v6 <= 0x3F)
            {
              sub_1E3928D10(319, &qword_1ECF3D988, &qword_1ECF3D918, &qword_1E42E3750);
              if (v7 <= 0x3F)
              {
                sub_1E3928D10(319, &qword_1ECF3D990, &qword_1ECF3D930, &qword_1E42E37B0);
                if (v8 <= 0x3F)
                {
                  sub_1E3FD6E54(319, &unk_1ECF3D998, MEMORY[0x1E69D3BB8]);
                  if (v9 <= 0x3F)
                  {
                    sub_1E3928D10(319, &qword_1EE289F80, &qword_1ECF2B4C0, &unk_1E42A0718);
                    if (v10 <= 0x3F)
                    {
                      sub_1E3928D10(319, &qword_1EE289FA8, &qword_1ECF3D960, &unk_1E4298000);
                      if (v11 <= 0x3F)
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

void sub_1E3FD6E54(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_20_2();
    v4 = sub_1E4200694();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1E3FD6EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_134();
  v10 = *(v9 + 24);
  v11 = *(v9 + 32);
  v12 = *(v9 + 40);
  v13 = *(v9 + 48);
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_30_0(v14);
  *v15 = v16;
  v17 = OUTLINED_FUNCTION_94_22(v15);

  return sub_1E3FD4B94(v17, v18, v19, v20, v10, v11, v12, v13, a9);
}

void sub_1E3FD6F60(uint64_t a1@<X8>)
{
  v2 = sub_1E4205984();
  if (v2)
  {
    v3 = sub_1E4205AE4();
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  *(a1 + 8) = v2 == 0;
}

uint64_t sub_1E3FD6FCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsSeeAllPlayModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3FD7030(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_10();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1E3FD7084(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsSeeAllPlayModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3FD70F0(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1E3FD7134()
{
  OUTLINED_FUNCTION_5_0(*(v0 + 16) + 16, v2);
  if (swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_32_0();
    sub_1E3FD1064();
  }

  return result;
}

double sub_1E3FD71A4()
{
  OUTLINED_FUNCTION_5_0(v0 + 16, &v5);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__cancellables;
    swift_beginAccess();
    *(v3 + v4) = MEMORY[0x1E69E7CD0];

    sub_1E3FE3F18();
    if (*(v3 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_refreshEventStateTimer))
    {
      swift_getObjectType();
      OUTLINED_FUNCTION_11_5();
      swift_unknownObjectRetain();
      sub_1E4206B74();
      swift_unknownObjectRelease();
    }

    *(v3 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_hasFetchedFromBackground) = 0;
  }

  return result;
}

uint64_t objectdestroyTm_56(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));
  OUTLINED_FUNCTION_5_10();

  return swift_deallocObject();
}

uint64_t sub_1E3FD72C4()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E3FD18D8();
}

double sub_1E3FD734C(void **a1)
{
  v2 = *(v1 + 24);
  v3 = *a1;
  OUTLINED_FUNCTION_5_0(*(v1 + 16) + 16, v9);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = v3;
    sub_1E3FCDF54(v3);
    if (v2)
    {
      v8 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_hasFetchedFromBackground;
      if ((*(v6 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_hasFetchedFromBackground) & 1) == 0)
      {

        sub_1E3FD1064();

        *(v6 + v8) = 1;
      }
    }
  }

  return result;
}

double sub_1E3FD7408()
{
  OUTLINED_FUNCTION_5_0(v0 + 16, v8);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1E3FCCB5C();
    v4 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__rawPlays;

    sub_1E3FCC2B4(v5);
    v7 = v6;

    *(v3 + v4) = v7;

    sub_1E3FCDFCC();
  }

  return result;
}

void sub_1E3FD74A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35FF8, &qword_1E42C71D8);
  OUTLINED_FUNCTION_17_2(v0);

  sub_1E3FD3CD4();
}

uint64_t OUTLINED_FUNCTION_56_39(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v25 = *(v23 - 72);

  return sub_1E3F9B908(v20, v21, v22, a16, v25, v19);
}

uint64_t OUTLINED_FUNCTION_79_26(uint64_t a1)
{

  return sub_1E4200664();
}

uint64_t OUTLINED_FUNCTION_94_22(uint64_t result)
{
  *(result + 8) = v1;
  *(v3 + 16) = v2;
  return result;
}

double OUTLINED_FUNCTION_95_19@<D0>(uint64_t a1@<X8>)
{
  *(v2 - 128) = a1;
  *(v2 - 120) = v1;
  *(v2 - 152) = 7;

  return result;
}

uint64_t OUTLINED_FUNCTION_96_20(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x1EEE6DFA0](a1, a2, a3);
}

id sub_1E3FD7610()
{
  OUTLINED_FUNCTION_0_8();
  v21 = type metadata accessor for MultiPlayerContainerGradientView();
  v1 = OUTLINED_FUNCTION_2_0();
  v4 = objc_msgSendSuper2(v2, v3, v1, v0, v21);
  v5 = sub_1E39600A8();
  if (v5)
  {
    v6 = v5;
    [v4 bounds];
    [v6 setFrame_];
    [v6 setType_];
    [v6 setStartPoint_];
    [v6 setEndPoint_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1E4299720;
    v8 = objc_opt_self();
    v9 = [v8 blackColor];
    v10 = [v9 colorWithAlphaComponent_];

    v11 = [v10 CGColor];
    type metadata accessor for CGColor();
    v13 = v12;
    *(v7 + 56) = v12;
    *(v7 + 32) = v11;
    v14 = [v8 blackColor];
    v15 = [v14 colorWithAlphaComponent_];

    v16 = [v15 CGColor];
    *(v7 + 88) = v13;
    *(v7 + 64) = v16;
    v17 = OUTLINED_FUNCTION_13_8();
    sub_1E38E2BE0(v17, v18);
    LODWORD(v19) = 0.5;
    [v6 setOpacity_];
  }

  return v4;
}

uint64_t sub_1E3FD7858(void *a1)
{
  type metadata accessor for MultiPlayerContainerGradientView();

  return swift_deallocPartialClassInstance();
}

void sub_1E3FD78C0(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MultiPlayerContainerGradientView();
  objc_msgSendSuper2(&v5, sel_layoutSublayersOfLayer_, a1);
  v3 = sub_1E39600A8();
  if (v3)
  {
    v4 = v3;
    [v1 bounds];
    [v4 setFrame_];
  }
}

id sub_1E3FD7990()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultiPlayerContainerGradientView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3FD79C4()
{
  OUTLINED_FUNCTION_71_4();
  swift_allocObject();
  return sub_1E3FD79F4();
}

uint64_t sub_1E3FD79F4()
{
  type metadata accessor for ImageLayout();
  *(v0 + 104) = sub_1E3BD61D8();
  v1 = sub_1E3C2F9A0();

  sub_1E3FD7A48();

  return v1;
}

void sub_1E3FD7A48()
{
  (*(*v0 + 1280))(0, 0);
  v1 = objc_opt_self();
  v2 = [v1 vui:14 fontFromTextStyle:10 fontWeight:2 fontSize:0 fontWidth:36.0 symbolicTraits:?];
  if (!v2)
  {
    v2 = [v1 systemFontOfSize_];
  }

  v3 = objc_opt_self();
  v4 = [v3 configurationWithPointSize:5 weight:3 scale:36.0];
  v5 = [v3 configurationPreferringMonochrome];
  v6 = [v4 configurationByApplyingConfiguration_];

  v7 = v0[13];
  v8 = *(*v7 + 1952);
  v9 = v6;
  v8(v6);
  OUTLINED_FUNCTION_31_82();
  v10 = MEMORY[0x1E69E7DE0];
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_20_120();
  OUTLINED_FUNCTION_19_143();
  v11 = OUTLINED_FUNCTION_18_133();
  BYTE8(v46) = v52;
  OUTLINED_FUNCTION_3_237(v11, v12, v13, v14, v15, v16, v17, v18, *v45, *&v45[8], *&v45[16], *&v45[24], *&v45[32], *&v45[40], *&v45[48], *&v45[56], *&v45[64], *&v45[72], *&v45[80], *&v45[88], *&v45[96], *&v45[104], *&v45[112], *&v45[120], *&v45[128], *&v45[136], *&v45[144], *&v45[152], *&v45[160], *&v45[168], *&v45[176], *&v45[184], *&v45[192], *&v45[200], *&v45[208], *&v45[216], *&v45[224], *&v45[232], v51, *(&v46 + 1), v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, *(&v57 + 1), v58, *(&v58 + 1), v59, v60, v61, *(&v61 + 1), v62, *(&v62 + 1), v63, v64, v65);
  memcpy(v45, __src, 0x59uLL);
  v19 = OUTLINED_FUNCTION_18();
  v20 = *(*v7 + 1600);
  v20(v45, 2, v19 & 1, v10);
  OUTLINED_FUNCTION_31_82();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_20_120();
  OUTLINED_FUNCTION_19_143();
  v21 = OUTLINED_FUNCTION_18_133();
  BYTE8(v46) = v52;
  OUTLINED_FUNCTION_3_237(v21, v22, v23, v24, v25, v26, v27, v28, *v45, *&v45[8], *&v45[16], *&v45[24], *&v45[32], *&v45[40], *&v45[48], *&v45[56], *&v45[64], *&v45[72], *&v45[80], *&v45[88], *&v45[96], *&v45[104], *&v45[112], *&v45[120], *&v45[128], *&v45[136], *&v45[144], *&v45[152], *&v45[160], *&v45[168], *&v45[176], *&v45[184], *&v45[192], *&v45[200], *&v45[208], *&v45[216], *&v45[224], *&v45[232], v51, *(&v46 + 1), v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, *(&v57 + 1), v58, *(&v58 + 1), v59, v60, v61, *(&v61 + 1), v62, *(&v62 + 1), v63, v64, v65);
  memcpy(v45, __src, 0x59uLL);
  v29 = OUTLINED_FUNCTION_18();
  v30 = v20(v45, 6, v29 & 1, v10);
  v30.n128_u64[0] = 12.0;
  *v45 = j__OUTLINED_FUNCTION_7_78(v30);
  *&v45[8] = v31;
  *&v45[16] = v32;
  *&v45[24] = v33;
  v45[32] = 0;
  v77 = xmmword_1E42D1200;
  v78 = xmmword_1E42E3AD0;
  v79 = 0;
  type metadata accessor for UIEdgeInsets();
  v35 = v34;
  sub_1E3C3DE00();
  v71 = v74;
  v72 = v75;
  v73 = v76;
  sub_1E3C2FC98();
  v65 = v68;
  v66 = v69;
  v67 = v70;
  sub_1E3C3DE00();
  v57 = v61;
  v58 = v62;
  LOBYTE(v59) = v63;
  v36 = sub_1E3C3DE00();
  LOBYTE(v49) = v55;
  OUTLINED_FUNCTION_3_237(v36, v37, v38, v39, v40, v41, v42, v43, *v45, *&v45[8], *&v45[16], *&v45[24], *&v45[32], *&v45[40], *&v45[48], *&v45[56], *&v45[64], *&v45[72], *&v45[80], *&v45[88], *&v45[96], *&v45[104], *&v45[112], *&v45[120], *&v45[128], *&v45[136], *&v45[144], *&v45[152], *&v45[160], *&v45[168], *&v45[176], *&v45[184], *&v45[192], *&v45[200], *&v45[208], *&v45[216], *&v45[224], *&v45[232], v51, v52, v53, v54, v49, v50, v51, v52, v53, v54, v55, v56, v57, *(&v57 + 1), v58, *(&v58 + 1), v59, v60, v61, *(&v61 + 1), v62, *(&v62 + 1), v63, v64, v65);
  memcpy(v45, __src, 0xE9uLL);
  v44 = OUTLINED_FUNCTION_18();
  v20(v45, 1, v44 & 1, v35);
}

uint64_t sub_1E3FD7DD4()
{
  sub_1E3C36C6C();

  OUTLINED_FUNCTION_71_4();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

id sub_1E3FD7E18()
{
  v2 = OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___controlsView;
  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___controlsView);
  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___controlsView);
  }

  else
  {
    v5 = v0;
    OUTLINED_FUNCTION_15_1();
    v6 = swift_allocObject();
    OUTLINED_FUNCTION_19_6(v6);
    OUTLINED_FUNCTION_15_1();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1E40656C8(sub_1E3FDC1E0, v1, sub_1E3FDC2B8, v7, v13);
    v8 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DB28, &unk_1E42E3B68));
    v9 = sub_1E4201214();
    v10 = *(v5 + v2);
    *(v5 + v2) = v9;
    v4 = v9;

    v3 = 0;
  }

  v11 = v3;
  return v4;
}

id sub_1E3FD7F08()
{
  v1 = OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___volumeGradient;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___volumeGradient);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___volumeGradient);
  }

  else
  {
    type metadata accessor for MultiPlayerContainerGradientView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1E3FD7FA0()
{
  v1 = OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___volumeIndicator;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___volumeIndicator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___volumeIndicator);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
    sub_1E3280A90(0, &qword_1EE23AE00, 0x1E69DCAB8);
    v6 = sub_1E3834BC8();
    [v5 setImage_];

    [v5 setContentMode_];
    v7 = [objc_opt_self() whiteColor];
    [v5 setTintColor_];

    v8 = *(**(*(v4 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_layout) + 104) + 1944);

    v10 = v8(v9);

    [v5 setSymbolConfiguration_];

    v11 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

id sub_1E3FD813C()
{
  v1 = OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___dimmingView;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___dimmingView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___dimmingView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    v5 = [objc_opt_self() blackColor];
    v6 = [v5 colorWithAlphaComponent_];

    [v4 setBackgroundColor_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_1E3FD8230(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_isDimmed;
  OUTLINED_FUNCTION_15_0(v2 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_isDimmed, a2);
  sub_1E3FDBB50((*(v2 + v3) & 1) == 0);
}

uint64_t sub_1E3FD8274(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_isDimmed;
  OUTLINED_FUNCTION_15_0(v2 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_isDimmed, a2);
  return *(v2 + v3);
}

void sub_1E3FD82AC(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_isDimmed;
  v4 = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  sub_1E3FD8230(v4, v5);
}

uint64_t sub_1E3FD82F0(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return OUTLINED_FUNCTION_15_7();
}

void sub_1E3FD8340(uint64_t a1, char a2)
{
  v3 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1E3FD8230(v3, v4);
  }
}

uint64_t sub_1E3FD8374(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_isPlayerInset;
  OUTLINED_FUNCTION_15_0(v2 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_isPlayerInset, a2);
  return *(v2 + v3);
}

uint64_t sub_1E3FD83AC(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_isPlayerInset;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

double sub_1E3FD83EC()
{
  [v0 bounds];
  v13 = v1;
  [v0 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = j__OUTLINED_FUNCTION_1_248();
  v11.f64[0] = v7;
  sub_1E40BF0E0(v10, v3, v5, v11, v9);
  return v13;
}

double sub_1E3FD8490()
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    return 60.0;
  }

  IsSwitchControlRunning = UIAccessibilityIsSwitchControlRunning();
  result = 60.0;
  if (!IsSwitchControlRunning)
  {
    return 5.0;
  }

  return result;
}

uint64_t sub_1E3FD8608(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  OUTLINED_FUNCTION_5_0(v4, v7);
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_1E3FD8688(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

id sub_1E3FD8738(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_playerViewController;
  OUTLINED_FUNCTION_15_0(v2 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_playerViewController, a2);
  v4 = *(v2 + v3);

  return v4;
}

void sub_1E3FD8780(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_playerViewController;
  OUTLINED_FUNCTION_37(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1E3FD87C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_allocWithZone(v3);
  v6 = OUTLINED_FUNCTION_74();
  return sub_1E3FD8810(v6, v7, a3);
}

void *sub_1E3FD8810(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *&v3[OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_controlFadeTimer] = 0;
  *&v3[OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___controlsView] = 0;
  *&v3[OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___volumeGradient] = 0;
  v8 = OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_layout;
  type metadata accessor for MultiPlayerContainerViewLayout();
  OUTLINED_FUNCTION_71_4();
  swift_allocObject();
  *&v3[v8] = sub_1E3FD79F4();
  *&v3[OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___volumeIndicator] = 0;
  *&v3[OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___dimmingView] = 0;
  v3[OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_isDimmed] = 0;
  v3[OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_isPlayerInset] = 0;
  *&v3[OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_snapshotView] = 0;
  v9 = &v3[OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_onSelect];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &v4[OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_closeHandler];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v4[OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_fullscreenHandler];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&v4[OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_volumeObserver] = 0;
  *&v4[OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_statusObserver] = 0;
  *&v4[OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_isReadyForDisplayObserver] = 0;
  *&v4[OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___singlePressGesture] = 0;
  *&v4[OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___hoverGestureRecognizer] = 0;
  *&v4[OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_playerViewController] = a1;
  swift_beginAccess();
  *v9 = a2;
  *(v9 + 1) = a3;
  v12 = a1;
  v13 = OUTLINED_FUNCTION_13_8();
  sub_1E34AF604(v13, v14);
  v28.receiver = v4;
  v28.super_class = type metadata accessor for MultiPlayerContainerView();
  v15 = objc_msgSendSuper2(&v28, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v16 = sub_1E3FD922C();
  [v15 addGestureRecognizer_];

  v17 = sub_1E3FD9248();
  [v15 addGestureRecognizer_];

  v18 = sub_1E3FD7F08();
  [v18 setHidden_];

  v19 = sub_1E3FD7FA0();
  [v19 setHidden_];

  v20 = MEMORY[0x1E69E7D40];
  v21 = (*((*MEMORY[0x1E69E7D40] & *v15) + 0x2B0))();
  v22 = (*((*v20 & *v15) + 0x128))(v21);
  [v22 addSubview_];

  sub_1E3FD8D14();
  sub_1E3FD9440();
  type metadata accessor for Accessibility();
  sub_1E40A7DC8();
  sub_1E3839D34(v23, v24, v15);

  v25 = OUTLINED_FUNCTION_13_8();
  sub_1E34AF594(v25, v26);

  return v15;
}

id sub_1E3FD8B2C()
{
  if (*&v0[OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_volumeObserver])
  {

    sub_1E42004E4();
  }

  if (*&v0[OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_statusObserver])
  {

    sub_1E42004E4();
  }

  if (*&v0[OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_isReadyForDisplayObserver])
  {

    sub_1E42004E4();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultiPlayerContainerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E3FD8D14()
{
  v1 = v0;
  OUTLINED_FUNCTION_21();
  v2 += 37;
  v3 = *v2;
  v4 = (*v2)();
  v5 = objc_opt_self();
  v6 = [v5 whiteColor];
  v7 = [v6 colorWithAlphaComponent_];

  [v4 setBackgroundColor_];
  v8 = v3();
  v9 = [v8 layer];

  [v9 setBorderWidth_];
  v10 = v3();
  v11 = [v10 layer];

  v12 = [v5 whiteColor];
  v13 = [v12 colorWithAlphaComponent_];

  v14 = [v13 CGColor];
  [v11 setBorderColor_];

  v15 = v3();
  v16 = OUTLINED_FUNCTION_37_75(v15);

  v17 = [v5 blackColor];
  v18 = [v17 CGColor];

  [v16 setShadowColor_];
  v19 = v3();
  v20 = OUTLINED_FUNCTION_37_75(v19);

  [v20 setShadowOffset_];
  v21 = v3();
  v22 = OUTLINED_FUNCTION_37_75(v21);

  [v22 setShadowRadius_];
  v23 = v3();
  v24 = OUTLINED_FUNCTION_37_75(v23);

  LODWORD(v25) = 1045220557;
  [v24 setShadowOpacity_];

  v26 = sub_1E3FD7E18();
  [v26 setTranslatesAutoresizingMaskIntoConstraints_];

  v27 = OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___controlsView;
  [*(v1 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___controlsView) setHidden_];
  [*(v1 + v27) setAlpha_];
  v28 = *(v1 + v27);
  [v28 frame];
  [v28 setFrame_];

  v29 = v3();
  [v29 addSubview_];

  v30 = sub_1E3FD7FA0();
  [v30 setHidden_];

  v31 = sub_1E3FD922C();
  [v31 setDelegate_];

  v32 = sub_1E3FD7F08();
  [v32 setHidden_];

  v33 = v3();
  [v33 addSubview_];

  v34 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2B0))();
  v35 = (v3)(v34);
  [v35 addSubview_];

  v36 = v3();
  sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
  v37 = sub_1E4206F24();
  [v36 setBackgroundColor_];

  sub_1E3FD9440();
}

id sub_1E3FD9264(uint64_t *a1, uint64_t *a2, Class *a3)
{
  v4 = *a1;
  v5 = *&v3[*a1];
  if (v5)
  {
    v6 = *&v3[*a1];
  }

  else
  {
    v9 = v3;
    v16[3] = type metadata accessor for MultiPlayerContainerView();
    v16[0] = v3;
    v10 = *a2;
    objc_allocWithZone(*a3);
    v11 = v9;
    v12 = sub_1E3FDBEB4(v16, v10);
    v13 = *&v9[v4];
    *&v9[v4] = v12;
    v6 = v12;

    v5 = 0;
  }

  v14 = v5;
  return v6;
}

char *sub_1E3FD9308(void *a1)
{
  result = [a1 state];
  if ((result - 2) <= 2)
  {
    v3 = 6u >> ((result - 2) & 7);
    type metadata accessor for MultiPlayerContainerView();
    v4 = sub_1E3FD8490();
    v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x2A8);

    return v5(v3 & 1, 1, *&v4, 0);
  }

  return result;
}

void sub_1E3FD9440()
{
  v1 = v0;
  v72[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DB58, &qword_1E42E3B78);
  OUTLINED_FUNCTION_0_10();
  v72[1] = v2;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_44();
  v72[0] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DB60, &qword_1E42E3B80);
  OUTLINED_FUNCTION_0_10();
  v74 = v6;
  v75 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v73 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DB68, &unk_1E42E3B88);
  OUTLINED_FUNCTION_0_10();
  v90 = v9;
  v91 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v87 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0, &unk_1E429D3D0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44();
  v80 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DB78, &qword_1E42E3B98);
  OUTLINED_FUNCTION_0_10();
  v81 = v15;
  v82 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v72 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DB80, &qword_1E42E3BA0);
  OUTLINED_FUNCTION_0_10();
  v83 = v20;
  v84 = v21;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_44();
  v78 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DB88, &qword_1E42E3BA8);
  OUTLINED_FUNCTION_0_10();
  v88 = v25;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  v28 = v72 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DB90, qword_1E42E3BB0);
  OUTLINED_FUNCTION_0_10();
  v85 = v30;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v31);
  v33 = v72 - v32;
  OUTLINED_FUNCTION_26_3();
  v35 = *((*MEMORY[0x1E69E7D40] & v34) + 0x1F8);
  v36 = v35();
  v79 = v35;
  v37 = v36;
  swift_getKeyPath();
  sub_1E41FE2F4();

  v39 = (v35)(v38);
  swift_getKeyPath();
  sub_1E41FE2F4();

  v40 = MEMORY[0x1E6969F80];
  sub_1E32752B0(&qword_1ECF3DB98, &qword_1ECF3DB90, qword_1E42E3BB0, MEMORY[0x1E6969F80]);
  sub_1E32752B0(&unk_1ECF3DBA0, &qword_1ECF3DB88, &qword_1E42E3BA8, v40);
  v86 = v28;
  v76 = v33;
  v77 = v29;
  v89 = v24;
  sub_1E4200714();
  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  v41 = sub_1E4206A04();
  v92 = v41;
  v42 = sub_1E42069A4();
  v43 = v80;
  __swift_storeEnumTagSinglePayload(v80, 1, 1, v42);
  sub_1E32752B0(&unk_1ECF3DBB0, &qword_1ECF3DB78, &qword_1E42E3B98, MEMORY[0x1E695BC68]);
  sub_1E3746800();
  v44 = v81;
  sub_1E42007D4();
  sub_1E325F748(v43, &unk_1ECF2D2B0, &unk_1E429D3D0);

  (*(v82 + 8))(v19, v44);
  OUTLINED_FUNCTION_4_0();
  v45 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_2_4();
  v46 = swift_allocObject();
  *(v46 + 16) = sub_1E3FDC43C;
  *(v46 + 24) = v45;
  sub_1E32752B0(&qword_1ECF3DBC0, &qword_1ECF3DB80, &qword_1E42E3BA0, MEMORY[0x1E695BE98]);
  v47 = sub_1E4200844();

  v48 = OUTLINED_FUNCTION_171_0();
  v49(v48);
  *(v1 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_volumeObserver) = v47;

  v51 = v79;
  v52 = (v79)(v50);
  swift_getKeyPath();
  sub_1E41FE2F4();

  OUTLINED_FUNCTION_4_0();
  v53 = swift_allocObject();
  OUTLINED_FUNCTION_19_6(v53);
  sub_1E32752B0(&qword_1ECF3DBC8, &unk_1ECF3DB68, &unk_1E42E3B88, v40);
  v54 = sub_1E4200844();

  v55 = OUTLINED_FUNCTION_171_0();
  v56(v55);
  *(v1 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_statusObserver) = v54;

  v58 = (v51)(v57);
  LOBYTE(v19) = [v58 isReadyForDisplay];

  if (v19)
  {
    (*(v88 + 8))(v86, v89);
    (*(v85 + 8))(v76, v77);
  }

  else
  {
    v59 = v85;
    v60 = v86;
    v62 = v88;
    v61 = v89;
    v63 = v51();
    v64 = [v63 view];

    if (v64)
    {
      [v64 setAlpha_];

      v65 = v51();
      swift_getKeyPath();
      sub_1E41FE2F4();

      sub_1E32752B0(&qword_1ECF3DBD0, &qword_1ECF3DB58, &qword_1E42E3B78, MEMORY[0x1E6969F80]);
      v66 = v73;
      sub_1E4200794();
      v67 = OUTLINED_FUNCTION_74();
      v68(v67);
      OUTLINED_FUNCTION_4_0();
      v69 = swift_allocObject();
      OUTLINED_FUNCTION_19_6(v69);
      sub_1E32752B0(&unk_1ECF3DBD8, &qword_1ECF3DB60, &qword_1E42E3B80, MEMORY[0x1E695BC90]);
      v70 = v75;
      v71 = sub_1E4200844();

      (*(v74 + 8))(v66, v70);
      (*(v62 + 8))(v60, v61);
      (*(v59 + 8))(v76, v77);
      *(v1 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_isReadyForDisplayObserver) = v71;
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1E3FD9E08@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 volume];
  *a2 = v4;
  return result;
}

id sub_1E3FD9E9C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 timeControlStatus];
  *a2 = result;
  return result;
}

id sub_1E3FD9ED0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isReadyForDisplay];
  *a2 = result;
  return result;
}

double sub_1E3FD9F04(char a1, char a2, uint64_t a3, char a4)
{
  v5 = v4;
  if (*&v4[OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_controlFadeTimer])
  {

    sub_1E42004E4();
  }

  OUTLINED_FUNCTION_15_1();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1 & 1;
  OUTLINED_FUNCTION_15_1();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1 & 1;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4 & 1;

  if ((a1 & 1) == 0)
  {
    v13 = sub_1E3FD7E18();
    [v13 setHidden_];
  }

  v14 = sub_1E3FD7E18();
  [v5 bringSubviewToFront_];

  if (a2)
  {

    v15 = objc_opt_self();
    OUTLINED_FUNCTION_2_4();
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1E3FDBFF0;
    *(v16 + 24) = v10;
    v26 = sub_1E3FDC010;
    v27 = v16;
    aBlock = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = sub_1E378AEA4;
    v25 = &block_descriptor_151;
    v17 = _Block_copy(&aBlock);

    OUTLINED_FUNCTION_2_4();
    v18 = swift_allocObject();
    *(v18 + 16) = sub_1E3FDBFFC;
    *(v18 + 24) = v12;
    v26 = sub_1E379E500;
    v27 = v18;
    aBlock = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = sub_1E37EB82C;
    v25 = &block_descriptor_17_3;
    v19 = _Block_copy(&aBlock);

    [v15 animateWithDuration:v17 animations:v19 completion:0.25];

    _Block_release(v19);
    _Block_release(v17);
  }

  else
  {
    sub_1E3FDA264(v9, a1 & 1);

    sub_1E3FDA2E8(v11, a1 & 1, a3, a4 & 1);
  }

  return result;
}

BOOL sub_1E3FDA264(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  OUTLINED_FUNCTION_15_0(a1 + 16, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = sub_1E3FD7E18();

    v5 = 1.0;
    if (v2)
    {
      v5 = 0.0;
    }

    [v4 setAlpha_];
  }

  return Strong == 0;
}

void sub_1E3FDA2E8(uint64_t a1, char a2, uint64_t a3, char a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DB30, &unk_1E42A89B0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24[-v8 - 8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ADC0, &qword_1E429F550);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_0(a1 + 16, v24);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = sub_1E3FD7E18();
    [v13 setHidden_];

    v14 = *MEMORY[0x1E69DD8E8];
    if (a2)
    {
      v15 = 0;
    }

    else
    {
      v15 = *&v12[OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___controlsView];
    }

    UIAccessibilityPostNotification(v14, v15);

    if (a4)
    {
    }

    else
    {
      sub_1E3280A90(0, &qword_1EE23AE40, 0x1E695DFF0);
      v16 = [objc_opt_self() mainRunLoop];
      v17 = sub_1E4207054();
      __swift_storeEnumTagSinglePayload(v9, 1, 1, v17);
      v18 = sub_1E4206F14();

      sub_1E325F748(v9, &unk_1ECF3DB30, &unk_1E42A89B0);
      v23 = v18;
      sub_1E4206F04();
      sub_1E37BF3F8();
      v19 = sub_1E4200584();

      v23 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DB40, &qword_1E429B180);
      sub_1E32752B0(&qword_1EE28A360, &unk_1ECF3DB40, &qword_1E429B180, MEMORY[0x1E695BCA0]);
      sub_1E42007A4();

      OUTLINED_FUNCTION_4_0();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1E32752B0(&qword_1ECF3DB50, &qword_1ECF2ADC0, &qword_1E429F550, MEMORY[0x1E695BDB8]);
      v20 = sub_1E4200844();

      v21 = OUTLINED_FUNCTION_13_8();
      v22(v21);
      *&v12[OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_controlFadeTimer] = v20;
    }
  }
}

void sub_1E3FDA674()
{
  v1 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v2 += 63;
  v3 = *v2;
  v4 = (*v2)();
  [v4 removeFromParentViewController];

  v5 = v3();
  [v5 didMoveToParentViewController_];

  v6 = v3();
  v7 = [v6 view];

  if (!v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  [v7 removeFromSuperview];

  OUTLINED_FUNCTION_26_3();
  v9 = (*((*v1 & v8) + 0x128))();
  v10 = v3();
  v11 = [v10 view];

  if (!v11)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  [v9 insertSubview:v11 atIndex:0];

  v12 = v3();
  v13 = [v12 view];

  if (!v13)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [v0 bounds];
  [v13 setFrame_];

  v14 = v3();
  [v14 setShowsPlaybackControls_];

  v15 = v3();
  v16 = [v15 view];

  if (!v16)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v16 setUserInteractionEnabled_];

  v17 = v3();
  v18 = [v17 view];

  if (!v18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v19 = [v18 layer];

  [v19 setCornerRadius_];
  v20 = v3();
  v21 = [v20 view];

  if (!v21)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v22 = [v21 layer];

  [v22 setMasksToBounds_];
}

void sub_1E3FDA994()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 504))();
  v2 = [v1 view];

  if (v2)
  {
    [v2 removeFromSuperview];
  }

  else
  {
    __break(1u);
  }
}

void sub_1E3FDAA40(void *a1, char a2)
{
  if (a2)
  {
    v4 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_21();
    v5 += 63;
    v6 = *v5;
    v7 = (*v5)();
    v8 = [v7 view];

    if (v8)
    {
      [v8 removeFromSuperview];

      v9 = v6();
      [v9 removeFromParentViewController];

      v10 = v6();
      [v10 didMoveToParentViewController_];

      v11 = OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_playerViewController;
      OUTLINED_FUNCTION_37(v12);
      v13 = *(v2 + v11);
      *(v2 + v11) = a1;
      v14 = a1;

      OUTLINED_FUNCTION_26_3();
      (*((*v4 & v15) + 0x2B0))();
      sub_1E3FD9440();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v16 = OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_playerViewController;
    OUTLINED_FUNCTION_37(a1);
    v17 = *(v2 + v16);
    *(v2 + v16) = a1;
    v18 = a1;
  }
}

void sub_1E3FDABB8()
{
  v1 = OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_snapshotView;
  v2 = *&v0[OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_snapshotView];
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *&v0[v1];
    *&v0[v1] = 0;
  }

  v4 = [v0 snapshotViewAfterScreenUpdates_];
  if (v4)
  {
    v5 = v4;
    OUTLINED_FUNCTION_21();
    v7 = (*(v6 + 296))();
    v8 = sub_1E3FD813C();
    [v7 insertSubview:v5 belowSubview:v8];

    [v5 setAlpha_];
    v9 = *&v0[v1];
    *&v0[v1] = v5;
  }
}

void sub_1E3FDACD4(char a1)
{
  OUTLINED_FUNCTION_4_0();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_141_0(v2);
  if (a1)
  {
    v3 = objc_opt_self();
    OUTLINED_FUNCTION_2_4();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1E3FDC038;
    *(v4 + 24) = v2;
    v11[4] = sub_1E3FDC7DC;
    v11[5] = v4;
    OUTLINED_FUNCTION_3_4();
    OUTLINED_FUNCTION_1_273();
    v11[2] = v5;
    v11[3] = &block_descriptor_24_5;
    v6 = _Block_copy(v11);

    [v3 animateWithDuration:v6 animations:0.5];

    _Block_release(v6);
  }

  else
  {
    OUTLINED_FUNCTION_5_0(v2 + 16, v11);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = *(Strong + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_snapshotView);
      v10 = v9;

      if (v9)
      {
        [v10 setAlpha_];
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_1E3FDAE50(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_snapshotView);
  if (v2)
  {
    OUTLINED_FUNCTION_4_0();
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    OUTLINED_FUNCTION_4_0();
    v5 = swift_allocObject();
    OUTLINED_FUNCTION_141_0(v5);
    if (a1)
    {
      v6 = objc_opt_self();
      OUTLINED_FUNCTION_2_4();
      v7 = swift_allocObject();
      *(v7 + 16) = sub_1E3BE3670;
      *(v7 + 24) = v4;
      v18 = sub_1E379E500;
      v19 = v7;
      aBlock = MEMORY[0x1E69E9820];
      v15 = 1107296256;
      v16 = sub_1E378AEA4;
      v17 = &block_descriptor_34_3;
      v8 = _Block_copy(&aBlock);
      v9 = v2;

      OUTLINED_FUNCTION_2_4();
      v10 = swift_allocObject();
      *(v10 + 16) = sub_1E3FDC0BC;
      *(v10 + 24) = v5;
      v18 = sub_1E37D1918;
      v19 = v10;
      aBlock = MEMORY[0x1E69E9820];
      v15 = 1107296256;
      v16 = sub_1E37EB82C;
      v17 = &block_descriptor_40_2;
      v11 = _Block_copy(&aBlock);

      [v6 animateWithDuration:v8 animations:v11 completion:0.5];

      _Block_release(v11);
      _Block_release(v8);
    }

    else
    {
      v13 = v2;

      [v13 setAlpha_];
      sub_1E3FDB0D8(v5, v12);
    }
  }
}

void sub_1E3FDB0D8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(a1 + 16, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_snapshotView;
    [*(Strong + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_snapshotView) removeFromSuperview];
    v5 = *&v3[v4];
    *&v3[v4] = 0;
  }
}

uint64_t sub_1E3FDB148(void *a1)
{
  v2 = v1;
  *(v1 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_controlFadeTimer) = 0;
  v14 = OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___controlsView;
  *(v1 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___controlsView) = 0;
  v16 = OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___volumeGradient;
  *(v1 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___volumeGradient) = 0;
  v4 = OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_layout;
  type metadata accessor for MultiPlayerContainerViewLayout();
  OUTLINED_FUNCTION_71_4();
  swift_allocObject();
  v5 = sub_1E3FD79F4();

  *(v2 + v4) = v5;
  v6 = OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___volumeIndicator;
  *(v2 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___volumeIndicator) = 0;
  v7 = OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___dimmingView;
  *(v2 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___dimmingView) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_isDimmed) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_isPlayerInset) = 0;
  v8 = OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_snapshotView;
  *(v2 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_snapshotView) = 0;
  v9 = (v2 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_onSelect);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v2 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_closeHandler);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v2 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_fullscreenHandler);
  *v11 = 0;
  v11[1] = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_volumeObserver) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_statusObserver) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_isReadyForDisplayObserver) = 0;
  v15 = OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___singlePressGesture;
  *(v2 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___singlePressGesture) = 0;
  v12 = OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___hoverGestureRecognizer;
  *(v2 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___hoverGestureRecognizer) = 0;

  sub_1E34AF594(*v9, v9[1]);
  sub_1E34AF594(*v10, v10[1]);
  sub_1E34AF594(*v11, v11[1]);

  type metadata accessor for MultiPlayerContainerView();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_1E3FDB354()
{
  v1 = v0;
  v75.receiver = v0;
  v75.super_class = type metadata accessor for MultiPlayerContainerView();
  objc_msgSendSuper2(&v75, sel_layoutSubviews);
  OUTLINED_FUNCTION_26_3();
  v2 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & v3) + 0x178);
  if (v4())
  {
    sub_1E3FD83EC();
  }

  else
  {
    v5 = [v0 bounds];
  }

  v6 = *((*v2 & *v0) + 0x1F8);
  v7 = (v6)(v5);
  v8 = [v7 player];

  if (v8)
  {
    v9 = [v8 isExternalPlaybackActive];
  }

  else
  {
    v9 = 0;
  }

  v10 = v6();
  v11 = [v10 view];

  if (!v11)
  {
    __break(1u);
    goto LABEL_36;
  }

  v12 = [v11 superview];

  v13 = (*((*v2 & *v1) + 0x128))();
  if (!v12)
  {
LABEL_13:

    goto LABEL_14;
  }

  sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
  v14 = sub_1E4206F64();

  if (v14)
  {
    v15 = v6();
    v16 = [v15 isReadyForDisplay];

    if (!(v9 & 1 | ((v16 & 1) == 0)))
    {
      v17 = v6();
      v13 = [v17 view];

      if (v13)
      {
        v18 = OUTLINED_FUNCTION_13_172();
        [v19 v20];
        goto LABEL_13;
      }

LABEL_36:
      __break(1u);
      return;
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_9_174();
  v22 = *(v21 + 176);

  v22(v76, v23);
  v24 = *&v76[2];
  v25 = *&v76[3];

  if (v77)
  {
    v26 = *(MEMORY[0x1E69DDCE0] + 16);
  }

  else
  {
    v26 = v24;
  }

  if (v77)
  {
    v27 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  else
  {
    v27 = v25;
  }

  OUTLINED_FUNCTION_9_174();
  v29 = *(v28 + 200);

  v31 = v29(v30);
  v33 = v32;

  v34 = *&v31;
  v35 = 0.0;
  if (v33)
  {
    v34 = 0.0;
  }

  v74 = v34;
  OUTLINED_FUNCTION_9_174();
  v37 = *(v36 + 304);

  v39 = v37(v38);
  LOBYTE(v37) = v40;

  v42 = *&v39;
  if (v37)
  {
    v42 = 0.0;
  }

  v73 = v42;
  v43 = 0.0;
  if ((v4)(v41))
  {
    OUTLINED_FUNCTION_21_112();
    Width = CGRectGetWidth(v78);
    v79.origin.x = OUTLINED_FUNCTION_13_172();
    v43 = (Width - CGRectGetWidth(v79)) * 0.5;
    OUTLINED_FUNCTION_21_112();
    Height = CGRectGetHeight(v80);
    v81.origin.x = OUTLINED_FUNCTION_13_172();
    v35 = (Height - CGRectGetHeight(v81)) * 0.5;
  }

  v46 = sub_1E3FD7FA0();
  OUTLINED_FUNCTION_21_112();
  v47 = CGRectGetWidth(v82);
  OUTLINED_FUNCTION_21_112();
  v48 = CGRectGetHeight(v83);
  OUTLINED_FUNCTION_9_174();
  v50 = *(v49 + 200);

  v52 = COERCE_DOUBLE(v50(v51));
  v54 = v53;

  if (v54)
  {
    v55 = 0.0;
  }

  else
  {
    v55 = v52;
  }

  OUTLINED_FUNCTION_9_174();
  v57 = *(v56 + 304);

  v59 = COERCE_DOUBLE(v57(v58));
  LOBYTE(v57) = v60;

  if (v57)
  {
    v61 = 0.0;
  }

  else
  {
    v61 = v59;
  }

  [v46 setFrame_];

  v62 = sub_1E3FD813C();
  OUTLINED_FUNCTION_21_112();
  [v62 setFrame_];

  v63 = *(v1 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_snapshotView);
  if (v63)
  {
    v64 = v63;
    OUTLINED_FUNCTION_21_112();
    [v64 setFrame_];
  }

  v65 = sub_1E3FD7F08();
  v66 = OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___volumeIndicator;
  [*(v1 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___volumeIndicator) frame];
  v67 = CGRectGetMinX(v84) + -40.0;
  [*(v1 + v66) frame];
  v68 = CGRectGetMinY(v85) + -40.0;
  OUTLINED_FUNCTION_21_112();
  v69 = CGRectGetWidth(v86);
  [*(v1 + v66) frame];
  v70 = v69 - CGRectGetMinX(v87) + 40.0;
  OUTLINED_FUNCTION_21_112();
  v71 = CGRectGetHeight(v88);
  [*(v1 + v66) frame];
  [v65 setFrame_];

  v72 = sub_1E3FD7E18();
  [v72 frame];
  [v72 setFrame_];
}

void (*sub_1E3FDB9F0())(void)
{
  type metadata accessor for MultiPlayerContainerView();
  v1 = sub_1E3FD8490();
  v2 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2A8))(0, 1, COERCE_DOUBLE(*&v1), 0);
  [v0 setNeedsLayout];
  OUTLINED_FUNCTION_26_3();
  result = (*((*v2 & v3) + 0x1B0))();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result();

    return sub_1E34AF594(v6, v7);
  }

  return result;
}

void sub_1E3FDBB50(char a1)
{
  v2 = objc_opt_self();
  OUTLINED_FUNCTION_4_0();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_141_0(v3);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  v7[4] = sub_1E3FDC164;
  v7[5] = v4;
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_1_273();
  v7[2] = v5;
  v7[3] = &block_descriptor_84_3;
  v6 = _Block_copy(v7);

  [v2 animateWithDuration:v6 animations:0.25];
  _Block_release(v6);
}

void sub_1E3FDBC28(char a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v7 = a1 & 1;
  OUTLINED_FUNCTION_21();
  if (((*(v8 + 376))() & 1) == v7)
  {
    if (a3)
    {
      a3();
    }
  }

  else
  {
    v9 = OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_isPlayerInset;
    swift_beginAccess();
    *(v4 + v9) = v7;
    sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
    OUTLINED_FUNCTION_4_0();
    v10 = swift_allocObject();
    OUTLINED_FUNCTION_141_0(v10);
    OUTLINED_FUNCTION_2_4();
    v11 = swift_allocObject();
    *(v11 + 16) = a3;
    *(v11 + 24) = a4;

    v12 = OUTLINED_FUNCTION_13_8();
    sub_1E34AF604(v12, v13);
    OUTLINED_FUNCTION_5_11();
    sub_1E3B02648();
  }
}

BOOL sub_1E3FDBDCC(void *a1)
{
  [a1 locationInView_];
  v3 = v2;
  v5 = v4;
  v6 = sub_1E3FD7E18();
  v7 = [v6 isHidden];

  if (v7)
  {
    return 1;
  }

  [*(v1 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___controlsView) frame];
  v9.x = v3;
  v9.y = v5;
  return !CGRectContainsPoint(v10, v9);
}

id sub_1E3FDBEB4(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v7 = *(v4 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6);
    (*(v7 + 16))(&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    OUTLINED_FUNCTION_171_0();
    v10 = sub_1E4207994();
    v11 = OUTLINED_FUNCTION_171_0();
    v12(v11);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v10 = 0;
  }

  v13 = [v2 initWithTarget:v10 action:a2];
  swift_unknownObjectRelease();
  return v13;
}

uint64_t sub_1E3FDC038(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 16, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 1;
  }

  v4 = Strong;
  v5 = *(Strong + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_snapshotView);
  v6 = v5;

  if (!v5)
  {
    return 1;
  }

  [v6 setAlpha_];

  return 0;
}

void sub_1E3FDC0C4()
{
  OUTLINED_FUNCTION_5_0(v0 + 16, v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong setNeedsLayout];
  }

  OUTLINED_FUNCTION_5_0(v0 + 16, &v5);
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    [v3 layoutIfNeeded];
  }
}

void sub_1E3FDC164(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  OUTLINED_FUNCTION_15_0(*(v2 + 16) + 16, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_1E3FD813C();

    v7 = 1.0;
    if (v3)
    {
      v7 = 0.0;
    }

    [v6 setAlpha_];
  }
}

void sub_1E3FDC1E0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 16, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    OUTLINED_FUNCTION_64();
    if ((*(v6 + 456))())
    {
      OUTLINED_FUNCTION_16_145();
      v8 = (*(v7 + 504))();
      v3();
      v9 = OUTLINED_FUNCTION_74();
      sub_1E34AF594(v9, v10);
    }
  }
}

void sub_1E3FDC2B8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 16, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    OUTLINED_FUNCTION_64();
    if ((*(v6 + 480))())
    {
      OUTLINED_FUNCTION_16_145();
      v8 = (*(v7 + 504))();
      v3();
      v9 = OUTLINED_FUNCTION_74();
      sub_1E34AF594(v9, v10);
    }
  }
}

void sub_1E3FDC390(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 16, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    type metadata accessor for MultiPlayerContainerView();
    v5 = sub_1E3FD8490();
    (*((*MEMORY[0x1E69E7D40] & *v4) + 0x2A8))(1, 1, COERCE_DOUBLE(*&v5), 0);
  }
}

void sub_1E3FDC43C(uint64_t a1, char a2)
{
  v3 = v2;
  v15[0] = BYTE4(a1) & 1;
  if (a2 == 2 || (a2 & 1) == 0)
  {
    v4 = ((a1 & 0x7FFFFFFF) == 0) | BYTE4(a1) & 1;
  }

  else
  {
    v4 = 1;
  }

  OUTLINED_FUNCTION_5_0(v2 + 16, v15);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    [Strong setNeedsLayout];
  }

  OUTLINED_FUNCTION_5_0(v3 + 16, v14);
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v9 = v7;
    v10 = sub_1E3FD7FA0();

    [v10 setHidden_];
  }

  OUTLINED_FUNCTION_15_0(v3 + 16, v8);
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    v13 = sub_1E3FD7F08();

    [v13 setHidden_];
  }
}

void sub_1E3FDC55C(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0 && *a1 == 2)
  {
    v12 = v1;
    v13 = v2;
    v14 = v3;
    v4 = v1;
    OUTLINED_FUNCTION_5_0(v1 + 16, v11);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      OUTLINED_FUNCTION_64();
      (*(v7 + 728))(1);
    }

    OUTLINED_FUNCTION_5_0(v4 + 16, &v10);
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      [v8 accessibilityNotifySnapshotRemoval];
    }
  }
}

void sub_1E3FDC630(_BYTE *a1)
{
  if (*a1 == 1)
  {
    v7[10] = v2;
    v7[11] = v3;
    v4 = objc_opt_self();
    v7[4] = sub_1E3FDC6EC;
    v7[5] = v1;
    OUTLINED_FUNCTION_3_4();
    OUTLINED_FUNCTION_1_273();
    v7[2] = v5;
    v7[3] = &block_descriptor_102_2;
    v6 = _Block_copy(v7);

    [v4 animateWithDuration:v6 animations:0.25];
    _Block_release(v6);
  }
}

void sub_1E3FDC6EC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 16, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    OUTLINED_FUNCTION_64();
    v6 = (*(v5 + 504))();

    v7 = [v6 view];
    if (v7)
    {
      [v7 setAlpha_];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1E3FDC7F8@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 128);
  v5 = *(v2 + 144);
  v6 = *(v2 + 160);
  v7 = sub_1E4202744();
  v8 = 0uLL;
  v9 = 0uLL;
  if ((v6 & 1) == 0)
  {
    sub_1E4200A54();
    *(&v8 + 1) = v10;
    *(&v9 + 1) = v11;
  }

  v12 = 0.0;
  if ((v5 & 1) == 0)
  {
    v12 = v4;
  }

  *a2 = *v2;
  *(a2 + 8) = v12;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 40) = v9;
  *(a2 + 56) = v6 & 1;
  *(a2 + 57) = 256;
}

void *sub_1E3FDC8D4(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 23) = 0u;
    *(result + 21) = 0u;
    *(result + 19) = 0u;
    *(result + 17) = 0u;
    *(result + 15) = 0u;
    *(result + 13) = 0u;
    *(result + 11) = 0u;
    *(result + 9) = 0u;
    *(result + 7) = 0u;
    *(result + 5) = 0u;
    *(result + 3) = 0u;
    *(result + 1) = 0u;
    *(result + 202) = 0;
    *(result + 100) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 203) = 1;
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

      return OUTLINED_FUNCTION_22(result, a2);
    }

    *(result + 203) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_22(result, a2);
    }
  }

  return result;
}

unint64_t sub_1E3FDC954()
{
  result = qword_1ECF3DBF0;
  if (!qword_1ECF3DBF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3DBF8, &qword_1E42E3E68);
    sub_1E3FDC9E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3DBF0);
  }

  return result;
}

unint64_t sub_1E3FDC9E0()
{
  result = qword_1ECF3DC00;
  if (!qword_1ECF3DC00)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3DC08, &qword_1E42E3E70);
    sub_1E3FDCA6C(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3DC00);
  }

  return result;
}

unint64_t sub_1E3FDCA6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF6A6F0[0];
  if (!qword_1ECF6A6F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF6A6F0);
  }

  return result;
}

id sub_1E3FDCAD4(uint64_t a1, double a2)
{
  v4 = [objc_allocWithZone(VUIFavoriteBannerCollectionViewCell) init];
  sub_1E38BAE74(v16);
  v14 = v16[1];
  v15 = v16[0];
  v5 = v17;
  v6 = v18 | (v19 << 16);
  type metadata accessor for LayoutGrid();
  v7 = sub_1E3A2579C(a2);
  v8 = (*(*a1 + 392))(v7);
  if (v8)
  {
    v9 = v8;
    sub_1E3C2AE10();
    v11 = v10;
    (*(*v9 + 1640))();
  }

  type metadata accessor for SportsFavoriteBannerCell();
  v20 = v15;
  v21 = v14;
  v22 = v5;
  v24 = BYTE2(v6);
  v23 = v6;
  v12 = sub_1E3B799C0(a1);

  if (v12)
  {
    [v12 setWidth_];

    return v12;
  }

  return v4;
}

void sub_1E3FDCC70(void *a1, uint64_t a2, double a3)
{
  if (a3 > 0.0)
  {
    v29 = v6;
    v30 = v5;
    v31 = v3;
    v32 = v4;
    v19 = a1;
    sub_1E38BAE74(v20);
    v17 = v20[1];
    v18 = v20[0];
    v9 = v21;
    v10 = v22 | (v23 << 16);
    type metadata accessor for LayoutGrid();
    v11 = sub_1E3A2579C(a3);
    v12 = (*(*a2 + 392))(v11);
    if (v12)
    {
      v13 = v12;
      sub_1E3C2AE10();
      v15 = v14;
      (*(*v13 + 1640))();
    }

    type metadata accessor for SportsFavoriteBannerCell();
    v24 = v18;
    v25 = v17;
    v26 = v9;
    v28 = BYTE2(v10);
    v27 = v10;
    v16 = sub_1E3B799C0(a2);

    [v16 setWidth_];
  }
}

uint64_t sub_1E3FDCE28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E3FDD094(a1, a2, a3);

  return sub_1E3E36D18(a1, a2, v5);
}

uint64_t sub_1E3FDCE74()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3FDD094(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_3_5();

  return sub_1E3E36D2C(v3, v4, v5, v6);
}

unint64_t sub_1E3FDCF48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E3FDCF70(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E3FDCF70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF6A780[0];
  if (!qword_1ECF6A780[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF6A780);
  }

  return result;
}

uint64_t sub_1E3FDCFC4()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3FDCF70(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDAA28](v3);
}

uint64_t sub_1E3FDD018()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3FDCF70(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDA9B8](v3);
}

void sub_1E3FDD06C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E3FDCF70(a1, a2, a3);
  sub_1E4201F04();
  __break(1u);
}

unint64_t sub_1E3FDD094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF6A890;
  if (!qword_1ECF6A890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF6A890);
  }

  return result;
}

void sub_1E3FDD0E8(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  if (a2)
  {
    v11 = objc_allocWithZone(type metadata accessor for ToastViewController());

    v12 = a2;
    sub_1E37FAED4(a5, a6);
    v13 = OUTLINED_FUNCTION_5_222();
    v16 = sub_1E3FDD454(v13, v14, v15);
    [v12 addChildViewController_];
    v17 = [v12 view];
    if (v17)
    {
      v18 = v17;
      v19 = [v16 view];
      if (v19)
      {
        v20 = v19;
        [v18 addSubview_];

        v21 = [v16 view];
        if (v21)
        {
          v22 = [v12 view];
          if (v22)
          {
            v23 = v22;
            [v22 bounds];
            OUTLINED_FUNCTION_3();

            v24 = OUTLINED_FUNCTION_6();
            [v25 v26];

            [v16 didMoveToParentViewController_];
            goto LABEL_15;
          }

LABEL_21:
          __break(1u);
          return;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_20;
  }

  if (qword_1ECF6A898)
  {
    v12 = qword_1ECF6A898;
    v28 = [v12 rootViewController];
    if (v28)
    {
      v16 = v28;
      type metadata accessor for ToastViewController();
      if (swift_dynamicCastClass())
      {
        *(v12 + OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC111ToastWindow_overridesOrientation) = a4 & 1;
        v29 = OUTLINED_FUNCTION_5_222();
        sub_1E3FDE568(v29, v30, v31, v32);
        goto LABEL_15;
      }
    }

    else
    {
      v16 = v12;
    }
  }

  v33 = [objc_opt_self() mainScreen];
  [v33 bounds];
  OUTLINED_FUNCTION_3();

  v34 = objc_allocWithZone(type metadata accessor for ToastWindow());
  v35 = OUTLINED_FUNCTION_6();
  v38 = [v36 v37];
  v38[OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC111ToastWindow_overridesOrientation] = a4 & 1;
  v39 = objc_allocWithZone(type metadata accessor for ToastViewController());

  sub_1E37FAED4(a5, a6);
  v40 = OUTLINED_FUNCTION_5_222();
  v12 = sub_1E3FDD454(v40, v41, v42);
  v43 = v38;
  [v43 setRootViewController_];
  [v43 setWindowLevel_];

  [v43 makeKeyAndVisible];
  v16 = qword_1ECF6A898;
  qword_1ECF6A898 = v43;
LABEL_15:

  if (a7)
  {
    a7();
  }
}

id sub_1E3FDD454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = &v4[OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC119ToastViewController_actionHandler];
  *v8 = 0;
  v8[1] = 0;
  *&v4[OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC119ToastViewController_hostingController] = 0;
  *&v4[OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC119ToastViewController_autoDismissWorkItem] = 0;
  (*(*a1 + 280))(a2 != 0);
  *&v4[OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC119ToastViewController_toastModel] = a1;
  v9 = *v8;
  v10 = v8[1];
  *v8 = a2;
  v8[1] = a3;

  sub_1E37FAED4(a2, a3);
  sub_1E37FAED8(v9, v10);
  v13.receiver = v4;
  v13.super_class = type metadata accessor for ToastViewController();
  v11 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, 0, 0);
  sub_1E37FAED8(a2, a3);

  return v11;
}

void sub_1E3FDD570()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC119ToastViewController_actionHandler);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC119ToastViewController_hostingController) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC119ToastViewController_autoDismissWorkItem) = 0;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E3FDD608()
{
  type metadata accessor for ToastPassthroughView();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 setView_];
}

void sub_1E3FDD6AC()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for ToastViewController();
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() clearColor];
    [v2 setBackgroundColor_];

    sub_1E3FDD75C();
    sub_1E3FDDAB8();
  }

  else
  {
    __break(1u);
  }
}

void sub_1E3FDD75C()
{
  v5 = v0;
  v6 = sub_1E42026C4();
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  nullsub_1();
  v8 = v7;
  v10 = v9;
  v11 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DC20, &qword_1E42E4078));

  v30 = v8;
  sub_1E37FAED4(v8, v10);
  v12 = sub_1E4201E44();
  v13 = [v12 view];
  if (!v13)
  {
    __break(1u);
    goto LABEL_8;
  }

  v14 = v13;
  v15 = objc_opt_self();
  v16 = [v15 clearColor];
  [v14 setBackgroundColor_];

  v17 = [v12 view];
  if (!v17)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v18 = v17;
  v19 = [v15 clearColor];
  [v18 setTintColor_];

  v20 = v12;
  sub_1E42026B4();
  sub_1E4201E24();

  [v5 addChildViewController_];
  v21 = [v5 view];
  if (!v21)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v22 = v21;
  v23 = [v20 view];
  if (!v23)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v24 = v23;
  [v22 addSubview_];

  [v20 didMoveToParentViewController_];
  OUTLINED_FUNCTION_8();
  v26 = *(v25 + 184);

  v26(1);

  v27 = [v5 view];
  if (v27)
  {
    v28 = v27;
    [v27 safeAreaInsets];
    OUTLINED_FUNCTION_3();

    [v20 setAdditionalSafeAreaInsets_];

    sub_1E37FAED8(v30, v10);

    v29 = *&v5[OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC119ToastViewController_hostingController];
    *&v5[OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC119ToastViewController_hostingController] = v20;

    return;
  }

LABEL_11:
  __break(1u);
}