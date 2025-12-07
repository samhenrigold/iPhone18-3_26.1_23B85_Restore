unint64_t sub_1E39EF8C0(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v5 = MEMORY[0x1E69E7CC0];
    v2 = result & 0xFFFFFFFFFFFFFF8;
    if (result >> 62)
    {
      goto LABEL_19;
    }

    result = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      if (((result - 1) & 0x8000000000000000) == 0)
      {
        while (1)
        {
          v3 = result - 1;
          if (v5)
          {
            if ((v1 & 0xC000000000000001) != 0)
            {
              v4 = MEMORY[0x1E6911E60](result - 1, v1);
            }

            else
            {
              if (v3 >= *(v2 + 16))
              {
                __break(1u);
LABEL_19:
                result = sub_1E4207384();
                goto LABEL_4;
              }
            }

            MEMORY[0x1E6910BF0](v4);
            if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1E42062F4();
            }

            sub_1E4206324();
          }

          result = v3;
          if (v3 <= 0)
          {
            return v5;
          }
        }
      }

      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1E39EFA20()
{
}

uint64_t sub_1E39EFAA4(uint64_t a1)
{
  v1 = sub_1E3B4FF80();

  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

void sub_1E39EFBA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_74_8();
  v26 = v7;
  v27 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = type metadata accessor for NavigationBarItems(0);
  v19 = v18[6];
  *(v17 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30540, &qword_1E42B1C90);
  swift_storeEnumTagMultiPayload();
  v20 = v18[8];
  v21 = (v17 + v18[7]);
  type metadata accessor for NavigationBarObservableModel(0);
  OUTLINED_FUNCTION_25_42();
  sub_1E39F096C(v22);

  *(v17 + 24) = sub_1E42010C4();
  *(v17 + 32) = v23;
  *(v17 + v20) = v13;
  *v21 = v11;
  v21[1] = v9;
  v21[2] = v26;
  v24 = v18[9];
  sub_1E4202314();
  OUTLINED_FUNCTION_2();
  (*(v25 + 32))(v17 + v24, v27);
  *v17 = sub_1E39EFD0C;
  *(v17 + 8) = v15;
  *(v17 + 16) = 0;
  OUTLINED_FUNCTION_75_6();
}

uint64_t sub_1E39EFD0C()
{
  OUTLINED_FUNCTION_8();
  (*(v1 + 192))();
  v2 = OUTLINED_FUNCTION_9_5();
  type metadata accessor for NavigationBarItems.InternalNavigationBarViewModel(v2);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV8VideosUI18NavigationBarItemsP33_5133CB66105ED2D3505EC048220E1B1330InternalNavigationBarViewModel_viewModel;
  v5 = OBJC_IVAR____TtCV8VideosUI18NavigationBarItemsP33_5133CB66105ED2D3505EC048220E1B1330InternalNavigationBarViewModel__leftBarItemModels;
  *(v3 + OBJC_IVAR____TtCV8VideosUI18NavigationBarItemsP33_5133CB66105ED2D3505EC048220E1B1330InternalNavigationBarViewModel_viewModel) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30768, &qword_1E42B2190);
  v14 = OUTLINED_FUNCTION_66_14(v6, v7, v8, v9, v10, v11, v12, v13, v35, v38);
  *(v3 + v5) = v14;
  v15 = OBJC_IVAR____TtCV8VideosUI18NavigationBarItemsP33_5133CB66105ED2D3505EC048220E1B1330InternalNavigationBarViewModel__rightBarItemModels;
  v23 = OUTLINED_FUNCTION_66_14(v14, v16, v17, v18, v19, v20, v21, v22, v36, v39);
  *(v3 + v15) = v23;
  v24 = OBJC_IVAR____TtCV8VideosUI18NavigationBarItemsP33_5133CB66105ED2D3505EC048220E1B1330InternalNavigationBarViewModel__largeTitleAccessoryView;
  *(v3 + v24) = OUTLINED_FUNCTION_66_14(v23, v25, v26, v27, v28, v29, v30, v31, v37, v40);
  v32 = OBJC_IVAR____TtCV8VideosUI18NavigationBarItemsP33_5133CB66105ED2D3505EC048220E1B1330InternalNavigationBarViewModel_imageViewModel;
  *(v3 + OBJC_IVAR____TtCV8VideosUI18NavigationBarItemsP33_5133CB66105ED2D3505EC048220E1B1330InternalNavigationBarViewModel_titleViewModel) = 0;
  *(v3 + v32) = 0;
  *(v3 + OBJC_IVAR____TtCV8VideosUI18NavigationBarItemsP33_5133CB66105ED2D3505EC048220E1B1330InternalNavigationBarViewModel_pickerModelChildren) = 0;
  *(v3 + v4) = v0;

  v33 = sub_1E3B500B4();

  sub_1E39EF404();

  return v33;
}

void sub_1E39EFE14()
{
  OUTLINED_FUNCTION_31_1();
  v84 = v1;
  v2 = type metadata accessor for NavigationBarItems(0);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  v86 = v4;
  v85 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_25_6();
  OUTLINED_FUNCTION_17_3(v6);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30548, &qword_1E42B1C98);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v79 - v8;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30550, &qword_1E42B1CA0);
  OUTLINED_FUNCTION_0_10();
  v83 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v12);
  v95 = v0;
  v13 = OUTLINED_FUNCTION_27_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30560, &qword_1E42B1CB0);
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_77();
  sub_1E381F390(v16);
  sub_1E39F077C();
  v88 = v9;
  sub_1E3E35D1C(v15, v9);
  v17 = v0;
  v80 = v0;
  v18 = type metadata accessor for NavigationBarItems.InternalNavigationBarViewModel(0);
  OUTLINED_FUNCTION_4_92();
  v20 = sub_1E39F096C(v19);
  OUTLINED_FUNCTION_53_19();
  v79[1] = v18;
  v87 = v20;
  sub_1E4200BC4();
  v21 = sub_1E39EF298();

  v22 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30578, &qword_1E42B1CC8) + 36)];
  v23 = type metadata accessor for NavbarBarButtonModifier(0);
  sub_1E4201FD4();
  OUTLINED_FUNCTION_53_19();
  sub_1E4200BC4();
  v24 = sub_1E39EF2B0();

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEA8, &qword_1E42A8990);
  v90 = v25;
  v89 = sub_1E39F09D0();
  sub_1E3B501F8(v24, v25);

  v26 = *(v17 + 32);
  v27 = &v22[v23[9]];
  v100 = 0;
  v92 = v26;
  swift_retain_n();
  sub_1E42038E4();
  v28 = v97;
  *v27 = v96;
  *(v27 + 1) = v28;
  OUTLINED_FUNCTION_90_5();
  *&v22[v29] = v26;
  OUTLINED_FUNCTION_4_0();
  v30 = swift_allocObject();
  *(v30 + 16) = v21;
  *v22 = sub_1E39F22F4;
  *(v22 + 1) = v30;
  v22[16] = 0;

  OUTLINED_FUNCTION_53_19();
  v31 = v87;
  sub_1E4200BC4();
  v32 = sub_1E39EF2BC();

  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30580, &qword_1E42B1CD0);
  v34 = v88;
  v35 = &v88[*(v33 + 36)];
  sub_1E4201FE4();
  OUTLINED_FUNCTION_33_33();
  sub_1E4200BC4();
  sub_1E39EF2D4();
  OUTLINED_FUNCTION_6_19();

  v36 = sub_1E3B501F8(v31, v90);

  v37 = &v35[v23[9]];
  v100 = 0;
  sub_1E42038E4();
  v38 = v97;
  *v37 = v96;
  *(v37 + 1) = v38;
  *(v35 + 3) = v32;
  *&v35[v23[7]] = v36;
  *&v35[v23[8]] = v92;
  OUTLINED_FUNCTION_4_0();
  v39 = swift_allocObject();
  *(v39 + 16) = v32;
  *v35 = sub_1E39F6C84;
  *(v35 + 1) = v39;
  v35[16] = 0;

  OUTLINED_FUNCTION_33_33();
  sub_1E4200BC4();
  v40 = sub_1E39EF2E0();

  v41 = &v34[*(v91 + 36)];
  sub_1E4201FE4();
  OUTLINED_FUNCTION_33_33();
  sub_1E4200BC4();
  v42 = sub_1E39EF37C();

  sub_1E3B501F8(v42, v90);
  OUTLINED_FUNCTION_50();

  v43 = &v41[v23[9]];
  v100 = 0;
  sub_1E42038E4();
  v44 = v97;
  *v43 = v96;
  *(v43 + 1) = v44;
  OUTLINED_FUNCTION_90_5();
  *&v41[v45] = v92;
  OUTLINED_FUNCTION_4_0();
  v46 = swift_allocObject();
  *(v46 + 16) = v40;
  *v41 = sub_1E39F6C84;
  *(v41 + 1) = v46;
  v41[16] = 0;
  v47 = v80;
  v94 = v80;

  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30588, &qword_1E42B1CD8);
  OUTLINED_FUNCTION_5_91();
  v50 = sub_1E39F247C(v49);
  v51 = sub_1E39F2660();
  v52 = v81;
  v53 = v91;
  v54 = v88;
  sub_1E3E35D1C(v48, v81);
  sub_1E325F6F0(v54, &qword_1ECF30548, &qword_1E42B1C98);
  v93 = v47;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF305A0, &qword_1E42B1CF0);
  v96 = v53;
  v97 = v48;
  v98 = v50;
  v99 = v51;
  v56 = OUTLINED_FUNCTION_56();
  v57 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF305A8, &qword_1E42B1CF8);
  v58 = OUTLINED_FUNCTION_75();
  v60 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v58, v59);
  OUTLINED_FUNCTION_3_94();
  v62 = sub_1E381F390(v61);
  v96 = v60;
  v97 = v62;
  OUTLINED_FUNCTION_6_10();
  v65 = OUTLINED_FUNCTION_35_7(v63, v64);
  v66 = v82;
  v96 = v82;
  v97 = v57;
  v98 = v56;
  v99 = v65;
  OUTLINED_FUNCTION_11_17();
  OUTLINED_FUNCTION_35_7(v67, v68);
  v69 = v84;
  sub_1E3E35D1C(v55, v84);
  (*(v83 + 8))(v52, v66);
  OUTLINED_FUNCTION_8();
  v71 = (*(v70 + 216))();
  v72 = OUTLINED_FUNCTION_57();
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(v72, v73);
  OUTLINED_FUNCTION_82();
  sub_1E39F296C(v75);
  sub_1E3B501F8(v71, v74);
  OUTLINED_FUNCTION_50();

  sub_1E39F540C();
  v76 = swift_allocObject();
  sub_1E39F5464();
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF305C0, &qword_1E42B1D18);
  *&v69[*(v77 + 52)] = &qword_1ECF2BB28;
  v78 = &v69[*(v77 + 56)];
  *v78 = sub_1E39F29E0;
  v78[1] = v76;
  OUTLINED_FUNCTION_25_2();
}

double sub_1E39F0680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_74_8();
  v21 = v7;
  type metadata accessor for NavigationBarItems.InternalNavigationBarViewModel(0);
  OUTLINED_FUNCTION_4_92();
  sub_1E39F096C(v8);
  v9 = OUTLINED_FUNCTION_75();
  v11 = *(OUTLINED_FUNCTION_50_16(v9, v10) + OBJC_IVAR____TtCV8VideosUI18NavigationBarItemsP33_5133CB66105ED2D3505EC048220E1B1330InternalNavigationBarViewModel_titleViewModel);

  v12 = OUTLINED_FUNCTION_75();
  v14 = *(OUTLINED_FUNCTION_50_16(v12, v13) + OBJC_IVAR____TtCV8VideosUI18NavigationBarItemsP33_5133CB66105ED2D3505EC048220E1B1330InternalNavigationBarViewModel_imageViewModel);

  sub_1E39F0A80(v21, v11, v14, v15, v16, v17, v18);

  OUTLINED_FUNCTION_75_6();

  return result;
}

unint64_t sub_1E39F077C()
{
  result = qword_1EE289918;
  if (!qword_1EE289918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30560, &qword_1E42B1CB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30568, &qword_1E42B1CB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30570, &qword_1E42B1CC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30558, &qword_1E42B1CA8);
    sub_1E381F390(&unk_1EE2888E0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1E39F08F8(OpaqueTypeConformance2, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289918);
  }

  return result;
}

unint64_t sub_1E39F08F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE29BBB8[0];
  if (!qword_1EE29BBB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE29BBB8);
  }

  return result;
}

unint64_t sub_1E39F096C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E39F09D0()
{
  result = qword_1EE23B528;
  if (!qword_1EE23B528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CEA8, &qword_1E42A8990);
    sub_1E39F296C(&unk_1EE23B558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23B528);
  }

  return result;
}

void sub_1E39F0A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_74_8();
  v11 = v10;
  v13 = v12;
  v62 = v14;
  sub_1E4200C24();
  OUTLINED_FUNCTION_0_10();
  v60 = v16;
  v61 = v15;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v59 = v18 - v17;
  v19 = sub_1E4202314();
  OUTLINED_FUNCTION_0_10();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v25 = v24 - v23;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30570, &qword_1E42B1CC0);
  OUTLINED_FUNCTION_0_10();
  v51 = v26;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_26_2();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30568, &qword_1E42B1CB8);
  OUTLINED_FUNCTION_0_10();
  v55 = v28;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_19_2();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30760, &qword_1E42B2188);
  OUTLINED_FUNCTION_0_10();
  v54 = v30;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_44();
  v52 = v34;
  v58 = v19;
  v50 = 0;
  if (v11)
  {
    type metadata accessor for ImageViewModel();
    if (swift_dynamicCastClass())
    {
      v50 = 1;
    }
  }

  v35 = sub_1E40DBA40(v13, v32, v33);
  v37 = v36;
  v39 = v38;
  v40 = OUTLINED_FUNCTION_97_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v40, v41);
  OUTLINED_FUNCTION_1_11();
  sub_1E381F390(v42);
  sub_1E4203024();
  sub_1E37434B8(v35, v37, v39 & 1);

  if (v50)
  {
    sub_1E42022F4();
    v43 = v7;
    v45 = v21;
    v44 = v58;
  }

  else
  {
    v46 = type metadata accessor for NavigationBarItems(0);
    v45 = v21;
    v44 = v58;
    v43 = v7;
    (*(v21 + 16))(v25, v7 + *(v46 + 36), v58);
  }

  v47 = OUTLINED_FUNCTION_56();
  sub_1E4203334();
  (*(v45 + 8))(v25, v44);
  (*(v51 + 8))(v9, v53);
  sub_1E4200C14();
  v63 = v47;
  OUTLINED_FUNCTION_56();
  sub_1E4202E44();
  (*(v60 + 8))(v59, v61);
  (*(v55 + 8))(v8, v57);
  v48 = *(v43 + 32);

  sub_1E42038E4();
  (*(v54 + 32))(v62, v52, v56);
  v49 = (v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30560, &qword_1E42B1CB0) + 36));
  *v49 = v48;
  v49[1] = v53;
  v49[2] = v63;
  OUTLINED_FUNCTION_75_6();
}

void sub_1E39F0F4C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v82 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30718, &qword_1E42B2158);
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v73 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30720, &qword_1E42B2160);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v73 - v19;
  isUniquelyReferenced_nonNull_native = sub_1E32AE9B0(v7);
  v86 = isUniquelyReferenced_nonNull_native;
  if (isUniquelyReferenced_nonNull_native)
  {
    v73 = v5;
    v74 = v3;
    v75 = v1;
    v76 = v17;
    v77 = v9;
    v78 = v16;
    v79 = v13;
    v80 = v20;
    v81 = v11;
    v22 = 0;
    v84 = v7 & 0xFFFFFFFFFFFFFF8;
    v85 = v7 & 0xC000000000000001;
    v23 = MEMORY[0x1E69E7CC0];
    v24 = v7;
    for (i = v7; ; v24 = i)
    {
      if (v86 == v22)
      {
        MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
        v44 = v73;
        *(&v73 - 6) = v24;
        *(&v73 - 5) = v44;
        v45 = v75;
        *(&v73 - 4) = v74;
        *(&v73 - 3) = v45;
        *(&v73 - 2) = v23;
        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30548, &qword_1E42B1C98);
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30590, &qword_1E42B1CE0);
        OUTLINED_FUNCTION_5_91();
        v49 = sub_1E39F247C(v48);
        v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30598, &qword_1E42B1CE8);
        OUTLINED_FUNCTION_2_63();
        v52 = sub_1E381F390(v51);
        v87 = v50;
        v88 = v52;
        OUTLINED_FUNCTION_6_10();
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        v54 = v78;
        OUTLINED_FUNCTION_82();
        sub_1E4203504();

        v56 = v79;
        v55 = v80;
        OUTLINED_FUNCTION_66_4();
        v57 = v81;
        v58(v55, v54, v81);
        swift_storeEnumTagMultiPayload();
        v87 = v46;
        v88 = v47;
        v89 = v49;
        v90 = OpaqueTypeConformance2;
        OUTLINED_FUNCTION_11_17();
        swift_getOpaqueTypeConformance2();
        OUTLINED_FUNCTION_82();
        sub_1E4201F44();
        (*(v56 + 8))(v54, v57);
        goto LABEL_19;
      }

      if (v85)
      {
        v25 = MEMORY[0x1E6911E60](v22, v24);
      }

      else
      {
        if (v22 >= *(v84 + 16))
        {
          goto LABEL_21;
        }

        v25 = *(v24 + 8 * v22 + 32);
      }

      if (__OFADD__(v22, 1))
      {
        break;
      }

      OUTLINED_FUNCTION_25();
      v31 = sub_1E3C00844(v26, v27, v28, v29, 0, v30);
      v32 = v91;
      v33 = v92;
      v35 = v93;
      v34 = v94;
      v36 = v95;
      (*(*v25 + 320))(v31);
      if (v37)
      {
        type metadata accessor for Accessibility();
        sub_1E40A7DC8();
        v35 = v38;
        v40 = v39;

        v34 = v40;
      }

      else
      {
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_1E39F604C(0, *(v23 + 16) + 1, 1, v23);
        v23 = isUniquelyReferenced_nonNull_native;
      }

      v42 = *(v23 + 16);
      v41 = *(v23 + 24);
      if (v42 >= v41 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_1E39F604C((v41 > 1), v42 + 1, 1, v23);
        v23 = isUniquelyReferenced_nonNull_native;
      }

      *(v23 + 16) = v42 + 1;
      v43 = (v23 + 40 * v42);
      v43[4] = v32;
      v43[5] = v33;
      v43[6] = v35;
      v43[7] = v34;
      v43[8] = v36;
      ++v22;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
    sub_1E378249C();
    swift_storeEnumTagMultiPayload();
    v59 = OUTLINED_FUNCTION_27_0();
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(v59, v60);
    v62 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30590, &qword_1E42B1CE0);
    OUTLINED_FUNCTION_5_91();
    OUTLINED_FUNCTION_77();
    v64 = sub_1E39F247C(v63);
    v65 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30598, &qword_1E42B1CE8);
    OUTLINED_FUNCTION_2_63();
    v67 = sub_1E381F390(v66);
    v91 = v65;
    v92 = v67;
    OUTLINED_FUNCTION_6_10();
    v70 = OUTLINED_FUNCTION_35_7(v68, v69);
    v91 = v61;
    v92 = v62;
    v93 = v64;
    v94 = v70;
    OUTLINED_FUNCTION_11_17();
    OUTLINED_FUNCTION_35_7(v71, v72);
    sub_1E4201F44();
LABEL_19:
    OUTLINED_FUNCTION_25_2();
  }
}

void sub_1E39F14C4()
{
  OUTLINED_FUNCTION_31_1();
  v0 = sub_1E4202034();
  v1 = OUTLINED_FUNCTION_17_2(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30598, &qword_1E42B1CE8);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8_4();
  sub_1E4202024();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30728, &qword_1E42B2168);
  sub_1E39F64C8();
  sub_1E4200C04();
  OUTLINED_FUNCTION_2_63();
  sub_1E381F390(v3);
  v4 = OUTLINED_FUNCTION_76_0();
  MEMORY[0x1E690CA00](v4);
  v5 = OUTLINED_FUNCTION_76_0();
  v6(v5);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E39F1650()
{
  OUTLINED_FUNCTION_82_2();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30740, &qword_1E42B2170);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_26_2();
  if (v10 >> 62)
  {
    if (sub_1E4207384())
    {
      goto LABEL_3;
    }
  }

  else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v22[0] = v8;
    v22[1] = v6;
    v22[2] = v4;

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30748, &qword_1E42B2178);
    v15 = sub_1E39F6578(v12, v13, v14);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28CB8, &unk_1E429B6E0);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1E3C00AA4(v22, v2, sub_1E39F184C, 0, 0, 0, &type metadata for PickerItem, v12, v0, v15, OpaqueTypeConformance2);
    sub_1E3782004();
    OUTLINED_FUNCTION_103_5();
    OUTLINED_FUNCTION_95();
    return;
  }

  OUTLINED_FUNCTION_95();

  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
}

uint64_t sub_1E39F184C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_26_2();
  v5 = *a1;
  OUTLINED_FUNCTION_18();
  sub_1E3F23370();
  v6 = OUTLINED_FUNCTION_63_0();
  v7(v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF305C8, &qword_1E42B1D20);
  v9 = a2 + *(result + 36);
  *v9 = v5;
  *(v9 + 8) = 1;
  return result;
}

void sub_1E39F1948()
{
  OUTLINED_FUNCTION_82_2();
  v0 = sub_1E4202034();
  v1 = OUTLINED_FUNCTION_17_2(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v2 = OUTLINED_FUNCTION_34();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8_4();
  sub_1E4201FE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30708, &qword_1E42B2150);
  sub_1E39F63A8();
  sub_1E42015A4();
  OUTLINED_FUNCTION_3_94();
  sub_1E381F390(v5);
  v6 = OUTLINED_FUNCTION_76_0();
  MEMORY[0x1E690CA00](v6);
  v7 = OUTLINED_FUNCTION_76_0();
  v8(v7);
  OUTLINED_FUNCTION_95();
}

void sub_1E39F1ABC()
{
  OUTLINED_FUNCTION_31_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF306B8, &qword_1E42B2118);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_19_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF306C0, &qword_1E42B2120);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_8();
  if (((*(v3 + 96))() & 1) == 0)
  {
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_9_0();
    sub_1E381F390(v7);
    OUTLINED_FUNCTION_34();
    sub_1E4201F44();
    goto LABEL_5;
  }

  v4 = [objc_opt_self() sharedInstance];
  if (v4)
  {
    v5 = v4;
    sub_1E3741090(0xD000000000000014, 0x80000001E426BE90, v4);

    *v0 = sub_1E4201B84();
    *(v0 + 8) = 0;
    *(v0 + 16) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF306D0, &qword_1E42B2128);
    sub_1E39F1D30();

    OUTLINED_FUNCTION_8_6();
    sub_1E378249C();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_9_0();
    sub_1E381F390(v6);
    OUTLINED_FUNCTION_34();
    sub_1E4201F44();
    sub_1E325F6F0(v0, &qword_1ECF306C0, &qword_1E42B2120);
LABEL_5:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  __break(1u);
}

void sub_1E39F1D30()
{
  OUTLINED_FUNCTION_31_1();
  v40 = v2;
  v41 = v3;
  v5 = v4;
  v7 = v6;
  v42 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF306D8, &qword_1E42B2130);
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_20_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF306E0, &qword_1E42B2138);
  OUTLINED_FUNCTION_0_10();
  v38 = v13;
  v39 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8_4();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF306E8, &unk_1E42B2140);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v37 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = v7;
  *(v19 + 24) = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF306F0, &qword_1E42B3FC0);
  v43 = MEMORY[0x1E6981748];
  v44 = MEMORY[0x1E6981710];
  OUTLINED_FUNCTION_56();
  sub_1E4203964();
  type metadata accessor for ButtonLayout();
  LOBYTE(v7) = j__OUTLINED_FUNCTION_18();
  v20 = sub_1E3B050E8();
  v21 = j__OUTLINED_FUNCTION_18();
  v22 = sub_1E3BBD964(8, v7 & 1, v20, v21 & 1);
  v43 = sub_1E3751C54(v22);
  LOBYTE(v44) = v23;
  v24 = sub_1E381F390(&qword_1ECF306F8);
  v27 = sub_1E375320C(v24, v25, v26);
  sub_1E3EC5F84(&v43, v9, &type metadata for SystemButtonStyle, v24, v27, v28, v29, v30, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48);

  (*(v11 + 8))(v1, v9);
  v32 = v40;
  v31 = v41;
  v47 = v40;
  v48 = v41;
  v43 = v9;
  v44 = &type metadata for SystemButtonStyle;
  v45 = v24;
  v46 = v27;
  v33 = OUTLINED_FUNCTION_56();
  sub_1E32822E0(v33, v34, v35);
  v36 = v38;
  sub_1E4203114();
  (*(v39 + 8))(v0, v36);
  v43 = v32;
  v44 = v31;
  sub_1E39F61A8();
  sub_1E4203414();
  sub_1E325F6F0(v18, &qword_1ECF306E8, &unk_1E42B2140);
  OUTLINED_FUNCTION_25_2();
}

double sub_1E39F20B0()
{
  sub_1E42037C4();
  sub_1E39B9610();

  return result;
}

double sub_1E39F2138(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  if (a1)
  {
    v2 = a1;
  }

  *(v1 + OBJC_IVAR____TtCV8VideosUIP33_5133CB66105ED2D3505EC048220E1B1323NavbarBarButtonModifier10Interactor_barButtonViewModel) = v2;

  type metadata accessor for NavbarBarButtonModifier.Interactor(0);
  OUTLINED_FUNCTION_6_75();
  sub_1E39F096C(v3);
  sub_1E4200514();
  sub_1E4200594();

  return result;
}

uint64_t sub_1E39F2218(uint64_t a1)
{
  v1 = sub_1E3B4FF80();

  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

uint64_t sub_1E39F228C(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for NavbarBarButtonModifier.Interactor(0);
  *(swift_allocObject() + OBJC_IVAR____TtCV8VideosUIP33_5133CB66105ED2D3505EC048220E1B1323NavbarBarButtonModifier10Interactor_barButtonViewModel) = v1;

  return sub_1E3B500B4();
}

double sub_1E39F22FC()
{
  v1 = *(v0 + 16);
  type metadata accessor for NavigationBarItems.InternalNavigationBarViewModel(0);
  OUTLINED_FUNCTION_4_92();
  v3 = sub_1E39F096C(v2);
  OUTLINED_FUNCTION_17_55(v3);

  v4 = (v1 + *(type metadata accessor for NavigationBarItems(0) + 28));
  v6 = *v4;
  v5 = v4[1];
  if (!v5)
  {
    sub_1E4203AD4();
  }

  sub_1E3908F18(v6, v5);
  OUTLINED_FUNCTION_32_0();
  sub_1E39F0F4C();

  return result;
}

unint64_t sub_1E39F247C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_31_13(0, v4, v5);
    v2();
    sub_1E39F2608();
    OUTLINED_FUNCTION_4_1();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E39F24E0()
{
  result = qword_1EE289960;
  if (!qword_1EE289960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30578, &qword_1E42B1CC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30558, &qword_1E42B1CA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30560, &qword_1E42B1CB0);
    sub_1E381F390(&unk_1EE2888E0);
    sub_1E39F077C();
    swift_getOpaqueTypeConformance2();
    sub_1E39F2608();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289960);
  }

  return result;
}

unint64_t sub_1E39F2608()
{
  result = qword_1EE2988B0[0];
  if (!qword_1EE2988B0[0])
  {
    type metadata accessor for NavbarBarButtonModifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2988B0);
  }

  return result;
}

unint64_t sub_1E39F2660()
{
  result = qword_1EE288DE0;
  if (!qword_1EE288DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30588, &qword_1E42B1CD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30548, &qword_1E42B1C98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30590, &qword_1E42B1CE0);
    sub_1E39F247C(&unk_1EE2894B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30598, &qword_1E42B1CE8);
    sub_1E381F390(&unk_1EE289E10);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288DE0);
  }

  return result;
}

uint64_t sub_1E39F27F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30550, &qword_1E42B1CA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF305A8, &qword_1E42B1CF8);
  v0 = OUTLINED_FUNCTION_97_1();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30588, &qword_1E42B1CD8);
  OUTLINED_FUNCTION_5_91();
  sub_1E39F247C(v2);
  sub_1E39F2660();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF305B0, &unk_1E42B1D00);
  OUTLINED_FUNCTION_3_94();
  sub_1E381F390(v3);
  OUTLINED_FUNCTION_6_10();
  swift_getOpaqueTypeConformance2();
  return sub_1E4203504();
}

unint64_t sub_1E39F296C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_31_13(0, v3, v4);
    OUTLINED_FUNCTION_26_39();
    sub_1E39F096C(v5);
    OUTLINED_FUNCTION_57();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

double sub_1E39F29E0()
{
  v0 = OUTLINED_FUNCTION_9_5();
  v1 = type metadata accessor for NavigationBarItems(v0);
  OUTLINED_FUNCTION_17_2(v1);
  v2 = OUTLINED_FUNCTION_12_63();
  type metadata accessor for NavigationBarItems.InternalNavigationBarViewModel(v2);
  OUTLINED_FUNCTION_4_92();
  v4 = sub_1E39F096C(v3);
  OUTLINED_FUNCTION_17_55(v4);
  v5 = OUTLINED_FUNCTION_50();
  sub_1E39EF3BC(v5);

  return result;
}

void sub_1E39F2A88()
{
  OUTLINED_FUNCTION_31_1();
  v15 = v2;
  v3 = type metadata accessor for NavbarBarButtonModifier(0);
  v14 = OUTLINED_FUNCTION_8_0(v3);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25_6();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30610, &qword_1E42B2030);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_26_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30618, &qword_1E42B2038);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30620, &qword_1E42B2040);
  OUTLINED_FUNCTION_1_11();
  sub_1E381F390(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30628, &qword_1E42B2048);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30630, &unk_1E42B2050);
  OUTLINED_FUNCTION_3_94();
  sub_1E381F390(v7);
  OUTLINED_FUNCTION_28_32();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_6_10();
  swift_getOpaqueTypeConformance2();
  sub_1E4203504();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
  sub_1E4203914();
  v8 = v1 + *(v13 + 36);
  *v8 = 1;
  *(v8 + 8) = 0x3FF0000000000000;
  *(v8 + 16) = v6;
  *(v8 + 24) = OpaqueTypeConformance2;
  *(v8 + 32) = v17;
  sub_1E39F540C();
  swift_allocObject();
  sub_1E39F5464();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEA8, &qword_1E42A8990);
  sub_1E39F5568();
  sub_1E39F09D0();
  sub_1E4203524();

  sub_1E325F6F0(v1, &qword_1ECF30610, &qword_1E42B2030);
  v9 = *(v0 + *(v14 + 36));
  sub_1E39F540C();
  v10 = swift_allocObject();
  sub_1E39F5464();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30638, &qword_1E42B2060);
  *(v15 + *(v11 + 52)) = v9;
  v12 = (v15 + *(v11 + 56));
  *v12 = sub_1E39F58A4;
  v12[1] = v10;

  OUTLINED_FUNCTION_25_2();
}

void sub_1E39F2E70()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v23[1] = v2;
  v3 = sub_1E4202034();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30630, &unk_1E42B2050);
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v23 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30628, &qword_1E42B2048);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_20_1();
  v17 = type metadata accessor for NavbarBarButtonModifier(0);
  (*(v5 + 16))(v9, v1 + *(v17 + 24), v3);
  v23[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30640, &qword_1E42B2068);
  sub_1E39F5954();
  sub_1E42015A4();
  OUTLINED_FUNCTION_3_94();
  v19 = sub_1E381F390(v18);
  sub_1E4201194();
  (*(v12 + 8))(v15, v10);
  v23[6] = v10;
  v23[7] = v19;
  OUTLINED_FUNCTION_28_32();
  swift_getOpaqueTypeConformance2();
  v20 = OUTLINED_FUNCTION_8_6();
  MEMORY[0x1E690CA00](v20);
  v21 = OUTLINED_FUNCTION_8_6();
  v22(v21);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E39F30E8()
{
  OUTLINED_FUNCTION_31_1();
  v55 = v0;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30660, &qword_1E42B2088);
  OUTLINED_FUNCTION_0_10();
  v47 = v1;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_44();
  v46 = v3;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30690, &qword_1E42B20B8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_44();
  v53 = v5;
  v6 = type metadata accessor for NavbarBarButtonModifier(0);
  v7 = OUTLINED_FUNCTION_8_0(v6);
  v48 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v49 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30650, &qword_1E42B2078);
  OUTLINED_FUNCTION_0_10();
  v45[2] = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  v45[1] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30648, &qword_1E42B2070);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  v50 = v16;
  type metadata accessor for NavbarBarButtonModifier.Interactor(0);
  OUTLINED_FUNCTION_6_75();
  sub_1E39F096C(v17);
  v18 = OUTLINED_FUNCTION_63_0();
  v20 = *(OUTLINED_FUNCTION_50_16(v18, v19) + OBJC_IVAR____TtCV8VideosUIP33_5133CB66105ED2D3505EC048220E1B1323NavbarBarButtonModifier10Interactor_barButtonViewModel);

  v21 = sub_1E32AE9B0(v20);

  if (v21)
  {
    v45[0] = v14;
    v22 = [objc_opt_self() sharedInstance];
    if (v22)
    {
      v23 = v22;
      v24 = [v22 vStackInForEachEnabled];

      v25 = OUTLINED_FUNCTION_63_0();
      v27 = *(OUTLINED_FUNCTION_50_16(v25, v26) + OBJC_IVAR____TtCV8VideosUIP33_5133CB66105ED2D3505EC048220E1B1323NavbarBarButtonModifier10Interactor_barButtonViewModel);

      v56 = v27;
      swift_getKeyPath();
      OUTLINED_FUNCTION_22_37();
      sub_1E39F540C();
      OUTLINED_FUNCTION_96_6();
      v28 = swift_allocObject();
      OUTLINED_FUNCTION_101_2(v28);
      v29 = OUTLINED_FUNCTION_27_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
      if (v24)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30658, &qword_1E42B2080);
        OUTLINED_FUNCTION_29_34(&qword_1EE23B548);
        sub_1E375BEF4();
        sub_1E381F390(&unk_1EE288530);
        sub_1E4203B34();
        OUTLINED_FUNCTION_66_4();
        v31 = OUTLINED_FUNCTION_97_1();
        v32(v31);
        swift_storeEnumTagMultiPayload();
        sub_1E39F5A64();
        sub_1E39F5B14();
        OUTLINED_FUNCTION_57();
        sub_1E4201F44();
        v33 = OUTLINED_FUNCTION_8_6();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30668, &qword_1E42B2090);
        OUTLINED_FUNCTION_29_34(&qword_1EE23B548);
        sub_1E375BEF4();
        sub_1E39F5B98();
        v41 = v46;
        sub_1E4203B34();
        v42 = v47;
        OUTLINED_FUNCTION_66_4();
        v43 = v54;
        v44(v53, v41, v54);
        swift_storeEnumTagMultiPayload();
        sub_1E39F5A64();
        sub_1E39F5B14();
        sub_1E4201F44();
        v35 = *(v42 + 8);
        v33 = v41;
        v34 = v43;
      }

      v35(v33, v34);
      sub_1E3782004();
      OUTLINED_FUNCTION_103_5();
      OUTLINED_FUNCTION_25_2();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_2();

    __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  }
}

void sub_1E39F3704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_74_8();
  v117 = v10;
  v118 = v11;
  v108 = v7;
  v13 = v12;
  v113 = v14;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29878, &unk_1E429C0E0);
  OUTLINED_FUNCTION_0_10();
  v105 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v17);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30688, &qword_1E42B20B0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v18);
  v100 = v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_17_3(v99 - v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF306A0, &qword_1E42B20F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30678, &qword_1E42B20A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  v26 = v99 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30680, &qword_1E42B20A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  v30 = v99 - v29;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF306A8, &qword_1E42B2100);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_44();
  v111 = v32;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF306B0, &unk_1E42B2108);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_20_1();
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30670, &qword_1E42B2098);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v35);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238, &unk_1E42999B0);
  OUTLINED_FUNCTION_0_10();
  v37 = v36;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_8_4();
  type metadata accessor for ImageViewModel();
  v39 = swift_dynamicCastClass();
  if (v39)
  {
    v42 = v39;
    v43 = *(*v39 + 392);
    v108 = v13;
    v44 = swift_retain_n();
    v45 = v43(v44);
    if (v45)
    {
      OUTLINED_FUNCTION_30();
      (*(v46 + 200))();
    }

    v59 = v43(v45);

    if (v59)
    {
      OUTLINED_FUNCTION_8();
      (*(v60 + 304))();
    }

    j__OUTLINED_FUNCTION_51_1();
    v61 = j__OUTLINED_FUNCTION_18();
    v98 = j__OUTLINED_FUNCTION_18() & 1;
    v62 = OUTLINED_FUNCTION_32_0();
    sub_1E3EB9C0C(v62, v63, 0, 0, 0, 1, v64, 2, v65, 0, 1, 0, 1, 0, 2, v61 & 1, v98);
    v66 = OUTLINED_FUNCTION_18();
    sub_1E37E8BE8(v42, &v115, 0, v66 & 1, 0, 0, v8);
    (*(v37 + 16))(v9, v8, v107);
    v67 = swift_storeEnumTagMultiPayload();
    v68 = OUTLINED_FUNCTION_19_0(v67);
    sub_1E39F5CC8(v68, v69, v70);
    OUTLINED_FUNCTION_8_6();
    sub_1E4201F44();
    OUTLINED_FUNCTION_54_14();
    sub_1E378249C();
    swift_storeEnumTagMultiPayload();
    sub_1E39F5C24();
    sub_1E39F5D1C();
    sub_1E4201F44();
    sub_1E375C31C(&v115);

    OUTLINED_FUNCTION_21_1();
    sub_1E325F6F0(v71, v72, v73);
    v74 = OUTLINED_FUNCTION_39_3();
    v75(v74);
  }

  else
  {
    v47 = v104;
    v48 = v105;
    v49 = v108;
    v99[0] = v27;
    v99[1] = v22;
    v50 = v103;
    v99[2] = v26;
    if (*v13 == _TtC8VideosUI19MuteButtonViewModel)
    {

      nullsub_1();
      *v9 = v51;
      swift_storeEnumTagMultiPayload();

      v53 = OUTLINED_FUNCTION_19_0(v52);
      sub_1E39F5CC8(v53, v54, v55);
      sub_1E4201F44();
      sub_1E378249C();
      swift_storeEnumTagMultiPayload();
      sub_1E39F5C24();
      sub_1E39F5D1C();
      sub_1E4201F44();

      OUTLINED_FUNCTION_82();
    }

    else if (TVAppFeature.isEnabled.getter(10, v40, v41) & 1) != 0 && (sub_1E373F6E0(*(v13 + 98), 65, v76, v77, v78, v79))
    {
      OUTLINED_FUNCTION_25();
      sub_1E3EC24F4(v80, v81, v82, v83);
      v84 = *(v49 + *(type metadata accessor for NavbarBarButtonModifier(0) + 32));
      v114 = 0x3FF0000000000000;

      sub_1E42038E4();
      v85 = v115;
      v86 = v116;
      v87 = &v30[*(v99[0] + 36)];
      *v87 = v84;
      *(v87 + 1) = v85;
      *(v87 + 2) = v86;
      sub_1E378249C();
      swift_storeEnumTagMultiPayload();
      sub_1E39F5DA8();
      sub_1E39F5EA0();
      OUTLINED_FUNCTION_81_7();
      OUTLINED_FUNCTION_63_0();
      sub_1E4201F44();
      OUTLINED_FUNCTION_54_14();
      sub_1E378249C();
      swift_storeEnumTagMultiPayload();
      sub_1E39F5C24();
      sub_1E39F5D1C();
      OUTLINED_FUNCTION_67_11();
      sub_1E325F6F0(v13, &qword_1ECF30678, &qword_1E42B20A0);
      v56 = v30;
      v57 = &qword_1ECF30680;
      v58 = &qword_1E42B20A8;
    }

    else
    {
      v88 = v47;
      OUTLINED_FUNCTION_25();
      sub_1E3EC24F4(v89, v90, v91, v92);
      v93 = (v49 + *(type metadata accessor for NavbarBarButtonModifier(0) + 36));
      v94 = *v93;
      v95 = *(v93 + 1);
      LOBYTE(v115) = v94;
      v116 = v95;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
      sub_1E42038F4();
      if (v114)
      {
        v96 = 0.0;
      }

      else
      {
        v96 = 1.0;
      }

      v97 = v100;
      (*(v48 + 32))(v100, v88, v101);
      *&v97[*(v102 + 36)] = v96;
      OUTLINED_FUNCTION_39_3();
      sub_1E3782004();
      OUTLINED_FUNCTION_21_1();
      sub_1E378249C();
      swift_storeEnumTagMultiPayload();
      sub_1E39F5DA8();
      sub_1E39F5EA0();
      OUTLINED_FUNCTION_81_7();
      sub_1E4201F44();
      OUTLINED_FUNCTION_54_14();
      sub_1E378249C();
      swift_storeEnumTagMultiPayload();
      sub_1E39F5C24();
      sub_1E39F5D1C();
      OUTLINED_FUNCTION_67_11();
      sub_1E325F6F0(v13, &qword_1ECF30678, &qword_1E42B20A0);
      v56 = v50;
      v57 = &qword_1ECF30688;
      v58 = &qword_1E42B20B0;
    }

    sub_1E325F6F0(v56, v57, v58);
  }

  OUTLINED_FUNCTION_75_6();
}

void sub_1E39F40F8()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30780, &qword_1E42B22A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_26_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30788, &qword_1E42B22B0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_20_1();
  if (*v0)
  {
    v28 = *(v0 + 16);
    v8 = swift_allocObject();
    OUTLINED_FUNCTION_98_5(v8);
    v9 = swift_allocObject();
    OUTLINED_FUNCTION_98_5(v9);
    sub_1E39F6940(&v28, &v24);

    sub_1E39F6940(&v28, &v24);

    v10 = OUTLINED_FUNCTION_32_0();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
    OUTLINED_FUNCTION_1_11();
    OUTLINED_FUNCTION_21_1();
    v14 = sub_1E381F390(v13);
    sub_1E42032D4();

    OUTLINED_FUNCTION_66_4();
    v15(v1, v2, v6);
    swift_storeEnumTagMultiPayload();
    v24 = v12;
    v25 = MEMORY[0x1E69E6370];
    v26 = v14;
    v27 = MEMORY[0x1E69E6388];
    OUTLINED_FUNCTION_30_33();
    OUTLINED_FUNCTION_86_4();
    sub_1E4201F44();
    v16 = OUTLINED_FUNCTION_8_6();
    v17(v16);
  }

  else
  {
    v18 = OUTLINED_FUNCTION_32_0();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
    OUTLINED_FUNCTION_2();
    (*(v21 + 16))(v1, v4, v20);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1_11();
    OUTLINED_FUNCTION_21_1();
    v23 = sub_1E381F390(v22);
    v24 = v20;
    v25 = MEMORY[0x1E69E6370];
    v26 = v23;
    v27 = MEMORY[0x1E69E6388];
    OUTLINED_FUNCTION_30_33();
    OUTLINED_FUNCTION_86_4();
    sub_1E4201F44();
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E39F4408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_99_6();
  OUTLINED_FUNCTION_42_29();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868, &unk_1E4297BF0);
  OUTLINED_FUNCTION_105_5(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30798, &qword_1E42B22C8);
  OUTLINED_FUNCTION_2();
  v13 = OUTLINED_FUNCTION_75();
  v14(v13);
  *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF307A0, &qword_1E42B22D0) + 36)) = a10;
  v15 = (*(*v10 + 344))();
  sub_1E39F51D4(v15, v16, v17);
  sub_1E3B501F8(v15, MEMORY[0x1E69E7DE0]);
  OUTLINED_FUNCTION_106_8();
  OUTLINED_FUNCTION_5_10();
  v18 = swift_allocObject();
  OUTLINED_FUNCTION_16_58(v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF307A8, &qword_1E42B22D8);
  OUTLINED_FUNCTION_79_11(v19);
  *v20 = sub_1E39F699C;
  v20[1] = v15;
  OUTLINED_FUNCTION_5_10();
  v21 = swift_allocObject();
  OUTLINED_FUNCTION_16_58(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF307B0, &qword_1E42B22E0);
  OUTLINED_FUNCTION_102_7((v11 + *(v22 + 36)));
  swift_retain_n();
  OUTLINED_FUNCTION_104_3();
}

void sub_1E39F45A8(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  OUTLINED_FUNCTION_99_6();
  OUTLINED_FUNCTION_42_29();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868, &unk_1E4297BF0);
  v13 = OUTLINED_FUNCTION_105_5(v12);
  sub_1E39F46EC(v13, v14, v15, v16, v17, v18, v19);
  v20 = (*(*v10 + 280))();
  sub_1E39F51D4(v20, v21, v22);
  sub_1E3B501F8(v20, MEMORY[0x1E69E7DE0]);
  OUTLINED_FUNCTION_106_8();
  OUTLINED_FUNCTION_5_10();
  v23 = swift_allocObject();
  OUTLINED_FUNCTION_16_58(v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF305E0, &qword_1E42B2000);
  OUTLINED_FUNCTION_79_11(v24);
  *v25 = sub_1E39F5228;
  v25[1] = v20;
  OUTLINED_FUNCTION_5_10();
  v26 = swift_allocObject();
  OUTLINED_FUNCTION_16_58(v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF305E8, &qword_1E42B2008);
  OUTLINED_FUNCTION_102_7((v11 + *(v27 + 36)));
  swift_retain_n();
  OUTLINED_FUNCTION_104_3();
}

void sub_1E39F46EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_74_8();
  v41 = v9;
  v42 = v10;
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF305F0, &qword_1E42B2010);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v36 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF305F8, &qword_1E42B2018);
  OUTLINED_FUNCTION_0_10();
  v21 = v20;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_20_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30600, &qword_1E42B2020);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_8_4();
  if (sub_1E39DFFC8())
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30608, &qword_1E42B2028);
    OUTLINED_FUNCTION_2();
    v25 = OUTLINED_FUNCTION_76_0();
    v26(v25);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1_11();
    v28 = sub_1E381F390(v27);
    v29 = OUTLINED_FUNCTION_36_26(&unk_1EE2892A0, &qword_1ECF305F0, &qword_1E42B2010);
    v37 = v24;
    v38 = v15;
    v39 = v28;
    v40 = v29;
    OUTLINED_FUNCTION_56();
    sub_1E4201F44();
  }

  else
  {
    sub_1E4203CD4();
    v30 = v12;
    *&v18[*(v15 + 36)] = v30;
    v36[0] = v19;
    v36[1] = v14;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30608, &qword_1E42B2028);
    OUTLINED_FUNCTION_1_11();
    v33 = sub_1E381F390(v32);
    v34 = OUTLINED_FUNCTION_36_26(&unk_1EE2892A0, &qword_1ECF305F0, &qword_1E42B2010);
    MEMORY[0x1E690DA40](v18, MEMORY[0x1E69E7CC0], v31, v15, v33, v34);
    sub_1E39F539C(v18);
    v35 = v36[0];
    (*(v21 + 16))(v7, v8, v36[0]);
    swift_storeEnumTagMultiPayload();
    v37 = v31;
    v38 = v15;
    v39 = v33;
    v40 = v34;
    OUTLINED_FUNCTION_56();
    sub_1E4201F44();
    (*(v21 + 8))(v8, v35);
  }

  OUTLINED_FUNCTION_75_6();
}

void sub_1E39F4AC8(uint64_t a1)
{
  sub_1E39F5124(319, &qword_1EE289F50, MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E39F4B9C()
{
  sub_1E39F4C90(319);
  if (v1 <= 0x3F)
  {
    v20 = v0;
    sub_1E39F4D24(319);
    if (v3 <= 0x3F)
    {
      v21 = v2;
      sub_1E39F504C(319, &qword_1EE289E80, &qword_1ECF305B8, &qword_1E42B1D10, MEMORY[0x1E697DCC0]);
      if (v5 <= 0x3F)
      {
        LOBYTE(v18) = 0;
        v22 = v4;
        OUTLINED_FUNCTION_32_37(v4, &qword_1EE288410, &qword_1ECF305D8, &qword_1E42B1E38);
        if (v7 <= 0x3F)
        {
          HIBYTE(v18) = 0;
          v23 = v6;
          v24 = MEMORY[0x1E69E6370];
          v8 = sub_1E4202314();
          if (v9 <= 0x3F)
          {
            OUTLINED_FUNCTION_44_26(v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, 0, v18, 0, v19, v20, v21, v22, v23, v24, v25);
          }
        }
      }
    }
  }
}

void sub_1E39F4C90(uint64_t a1)
{
  if (!qword_1EE289E58)
  {
    type metadata accessor for NavigationBarItems.InternalNavigationBarViewModel(255);
    sub_1E39F096C(&unk_1EE2772E0);
    v1 = sub_1E4200BE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE289E58);
    }
  }
}

void sub_1E39F4D24(uint64_t a1)
{
  if (!qword_1EE289D10)
  {
    type metadata accessor for NavigationBarObservableModel(255);
    sub_1E39F096C(qword_1EE24A570);
    v1 = sub_1E42010F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE289D10);
    }
  }
}

void sub_1E39F4EC4()
{
  sub_1E39F4FB8(319);
  if (v1 <= 0x3F)
  {
    v22 = v0;
    OUTLINED_FUNCTION_32_37(v0, &qword_1EE23B530, &unk_1ECF2C790, &qword_1E42996A0);
    if (v3 <= 0x3F)
    {
      v23 = v2;
      v4 = sub_1E4202034();
      if (v5 <= 0x3F)
      {
        LOBYTE(v20) = 0;
        v24 = v4;
        sub_1E39F50B0(319);
        if (v7 <= 0x3F)
        {
          HIBYTE(v20) = 0;
          v25 = v6;
          v8 = type metadata accessor for NavigationBarObservableModel(319);
          if (v9 <= 0x3F)
          {
            v26 = v8;
            sub_1E39F5124(319, &qword_1EE288668, MEMORY[0x1E6981790]);
            if (v11 <= 0x3F)
            {
              OUTLINED_FUNCTION_44_26(v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, 0, v20, 0, v21, v22, v23, v24, v25, v26, v27);
            }
          }
        }
      }
    }
  }
}

void sub_1E39F4FB8(uint64_t a1)
{
  if (!qword_1EE289E38)
  {
    type metadata accessor for NavbarBarButtonModifier.Interactor(255);
    sub_1E39F096C(&unk_1EE25AA80);
    v1 = sub_1E4200BE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE289E38);
    }
  }
}

void sub_1E39F504C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_1E39F50B0(uint64_t a1)
{
  if (!qword_1EE28A1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CEA8, &qword_1E42A8990);
    v1 = sub_1E42004B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE28A1E8);
    }
  }
}

void sub_1E39F5124(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6370]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1E39F51D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE28A3C8;
  if (!qword_1EE28A3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE28A3C8);
  }

  return result;
}

uint64_t sub_1E39F5228(uint64_t *a1)
{
  if (([objc_opt_self() isVision] & 1) != 0 || (result = sub_1E39DFFC8(), (result & 1) == 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868, &unk_1E4297BF0);
    return sub_1E4203904();
  }

  return result;
}

uint64_t sub_1E39F539C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF305F0, &qword_1E42B2010);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E39F540C()
{
  OUTLINED_FUNCTION_155();
  v1(0);
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_32_0();
  v3(v2);
  return v0;
}

uint64_t sub_1E39F5464()
{
  OUTLINED_FUNCTION_155();
  v1(0);
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_32_0();
  v3(v2);
  return v0;
}

double sub_1E39F54BC()
{
  v0 = type metadata accessor for NavbarBarButtonModifier(0);
  OUTLINED_FUNCTION_17_2(v0);
  v1 = OUTLINED_FUNCTION_12_63();
  type metadata accessor for NavbarBarButtonModifier.Interactor(v1);
  OUTLINED_FUNCTION_6_75();
  v3 = sub_1E39F096C(v2);
  OUTLINED_FUNCTION_17_55(v3);
  v4 = OUTLINED_FUNCTION_50();
  sub_1E39F2138(v4);

  return result;
}

unint64_t sub_1E39F5568()
{
  result = qword_1EE2898E0;
  if (!qword_1EE2898E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30610, &qword_1E42B2030);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30618, &qword_1E42B2038);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30620, &qword_1E42B2040);
    sub_1E381F390(&unk_1EE288958);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30628, &qword_1E42B2048);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30630, &unk_1E42B2050);
    sub_1E381F390(&unk_1EE289380);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1E39F573C(OpaqueTypeConformance2, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2898E0);
  }

  return result;
}

unint64_t sub_1E39F573C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE294830[0];
  if (!qword_1EE294830[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE294830);
  }

  return result;
}

uint64_t objectdestroy_112Tm()
{
  OUTLINED_FUNCTION_82_2();
  v1 = (type metadata accessor for NavbarBarButtonModifier(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));
  sub_1E3264CE0(*v2, v2[1]);

  v3 = v1[8];
  sub_1E4202034();
  OUTLINED_FUNCTION_2();
  (*(v4 + 8))(v2 + v3);

  OUTLINED_FUNCTION_95();

  return swift_deallocObject();
}

double sub_1E39F58A4()
{
  v0 = OUTLINED_FUNCTION_9_5();
  v1 = type metadata accessor for NavbarBarButtonModifier(v0);
  OUTLINED_FUNCTION_17_2(v1);
  v2 = OUTLINED_FUNCTION_12_63();
  type metadata accessor for NavbarBarButtonModifier.Interactor(v2);
  OUTLINED_FUNCTION_6_75();
  v4 = sub_1E39F096C(v3);
  OUTLINED_FUNCTION_17_55(v4);
  v5 = OUTLINED_FUNCTION_50();
  sub_1E39F2138(v5);

  return result;
}

unint64_t sub_1E39F5954()
{
  result = qword_1EE288D68;
  if (!qword_1EE288D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30640, &qword_1E42B2068);
    sub_1E39F59D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288D68);
  }

  return result;
}

unint64_t sub_1E39F59D8()
{
  result = qword_1EE288D70;
  if (!qword_1EE288D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30648, &qword_1E42B2070);
    sub_1E39F5A64();
    sub_1E39F5B14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288D70);
  }

  return result;
}

unint64_t sub_1E39F5A64()
{
  result = qword_1EE2883D0;
  if (!qword_1EE2883D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30650, &qword_1E42B2078);
    sub_1E381F390(&unk_1EE288530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2883D0);
  }

  return result;
}

unint64_t sub_1E39F5B14()
{
  result = qword_1EE2883D8;
  if (!qword_1EE2883D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30660, &qword_1E42B2088);
    sub_1E39F5B98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2883D8);
  }

  return result;
}

unint64_t sub_1E39F5B98()
{
  result = qword_1EE288D00;
  if (!qword_1EE288D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30668, &qword_1E42B2090);
    sub_1E39F5C24();
    sub_1E39F5D1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288D00);
  }

  return result;
}

unint64_t sub_1E39F5C24()
{
  result = qword_1EE289198;
  if (!qword_1EE289198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30670, &qword_1E42B2098);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1E39F5CC8(OpaqueTypeConformance2, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289198);
  }

  return result;
}

unint64_t sub_1E39F5CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE275788[0];
  if (!qword_1EE275788[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE275788);
  }

  return result;
}

unint64_t sub_1E39F5D1C()
{
  result = qword_1EE288F70;
  if (!qword_1EE288F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30678, &qword_1E42B20A0);
    sub_1E39F5DA8();
    sub_1E39F5EA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288F70);
  }

  return result;
}

unint64_t sub_1E39F5DA8()
{
  result = qword_1EE289C10;
  if (!qword_1EE289C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30680, &qword_1E42B20A8);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1E39F5E4C(OpaqueTypeConformance2, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289C10);
  }

  return result;
}

unint64_t sub_1E39F5E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE294228[0];
  if (!qword_1EE294228[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE294228);
  }

  return result;
}

unint64_t sub_1E39F5EA0()
{
  result = qword_1EE289C18;
  if (!qword_1EE289C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30688, &qword_1E42B20B0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289C18);
  }

  return result;
}

void sub_1E39F5F44(uint64_t *a1)
{
  v2 = type metadata accessor for NavbarBarButtonModifier(0);
  OUTLINED_FUNCTION_17_2(v2);
  sub_1E39F3704(*a1, v3, v4, v5, v6, v7, v8);
}

void sub_1E39F5FB4(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NavbarBarButtonModifier(0);
  OUTLINED_FUNCTION_17_2(v4);
  v5 = *a1;
  *a2 = sub_1E4201D44();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30698, &unk_1E42B20E8);
  sub_1E39F3704(v5, v6, v7, v8, v9, v10, v11);
}

char *sub_1E39F604C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30758, &qword_1E42B2180);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1E39F61A8()
{
  result = qword_1ECF30700;
  if (!qword_1ECF30700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF306E8, &unk_1E42B2140);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF306D8, &qword_1E42B2130);
    v3 = sub_1E381F390(&qword_1ECF306F8);
    sub_1E375320C(v3, v1, v2);
    swift_getOpaqueTypeConformance2();
    sub_1E39F096C(&qword_1EE288768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30700);
  }

  return result;
}

uint64_t sub_1E39F62F0@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_8();
  result = (*(v2 + 352))();
  if (result)
  {
    type metadata accessor for FullScreenBarButtonModel(0);
    sub_1E39F096C(&unk_1ECF30710);
    OUTLINED_FUNCTION_57();
    result = sub_1E42010C4();
  }

  else
  {
    v4 = 0;
  }

  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1E39F63A8()
{
  result = qword_1EE25BCE8[0];
  if (!qword_1EE25BCE8[0])
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30708, &qword_1E42B2150);
    sub_1E39F642C(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE25BCE8);
  }

  return result;
}

unint64_t sub_1E39F642C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE298D98[0];
  if (!qword_1EE298D98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE298D98);
  }

  return result;
}

unint64_t sub_1E39F64C8()
{
  result = qword_1ECF30730;
  if (!qword_1ECF30730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30728, &qword_1E42B2168);
    sub_1E381F390(&unk_1ECF30738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30730);
  }

  return result;
}

unint64_t sub_1E39F6578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF30750;
  if (!qword_1ECF30750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30750);
  }

  return result;
}

uint64_t sub_1E39F65CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 33))
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

  return OUTLINED_FUNCTION_17_7(v2);
}

uint64_t sub_1E39F6608(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1E39F665C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

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

  return OUTLINED_FUNCTION_17_7(v2);
}

unint64_t sub_1E39F66A8()
{
  result = qword_1EE289A38;
  if (!qword_1EE289A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF305E8, &qword_1E42B2008);
    sub_1E381F390(&unk_1EE2893C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289A38);
  }

  return result;
}

unint64_t sub_1E39F6760()
{
  result = qword_1ECF30770;
  if (!qword_1ECF30770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30778, &qword_1E42B2200);
    sub_1E381F390(&unk_1ECF306C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30770);
  }

  return result;
}

void sub_1E39F6848(BOOL *a1@<X8>)
{
  sub_1E4201164();
  v4 = v3;
  sub_1E4201154();
  *a1 = *(v1 + 24) - v5 < v4;
}

uint64_t objectdestroy_151Tm()
{

  return swift_deallocObject();
}

unint64_t sub_1E39F6AC0()
{
  result = qword_1EE288DE8;
  if (!qword_1EE288DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF307B8, &qword_1E42B22E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30790, &qword_1E42B22B8);
    sub_1E381F390(&unk_1EE288930);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288DE8);
  }

  return result;
}

unint64_t sub_1E39F6BCC()
{
  result = qword_1ECF307C0;
  if (!qword_1ECF307C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF307B0, &qword_1E42B22E0);
    sub_1E381F390(&unk_1ECF307C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF307C0);
  }

  return result;
}

void OUTLINED_FUNCTION_32_37(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = MEMORY[0x1E69E6720];

  sub_1E39F504C(319, a2, a3, a4, v5);
}

uint64_t OUTLINED_FUNCTION_68_9(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, double a18, uint64_t a19, uint64_t a20)
{

  return sub_1E4203904();
}

void *OUTLINED_FUNCTION_77_7(uint64_t a1)
{

  return sub_1E3B50380(v1);
}

uint64_t OUTLINED_FUNCTION_103_5()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

double OUTLINED_FUNCTION_106_8()
{

  return result;
}

void *sub_1E39F6D90()
{
  v1 = OBJC_IVAR____TtC8VideosUI14EpicInlineView_headerView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E39F6DDC(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI14EpicInlineView_headerView;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = OBJC_IVAR____TtC8VideosUI14EpicInlineView_headerView;
  v6 = a1;
  swift_beginAccess();
  [v1 vui:*&v1[v5] addSubview:v4 oldView:?];
}

void (*sub_1E39F6E78(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtC8VideosUI14EpicInlineView_headerView;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v3[3] = v5;
  v6 = v5;
  return sub_1E39F6F00;
}

void sub_1E39F6F00(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    sub_1E39F6DDC(v3);
  }

  else
  {
    sub_1E39F6DDC(*(*a1 + 24));
  }

  free(v2);
}

char *sub_1E39F6F6C()
{
  *&v0[OBJC_IVAR____TtC8VideosUI14EpicInlineView_headerView] = 0;
  v1 = OBJC_IVAR____TtC8VideosUI14EpicInlineView_contentView;
  _s11ContentViewCMa();
  *&v0[v1] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v0[OBJC_IVAR____TtC8VideosUI14EpicInlineView_debugUIOverlay] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for EpicInlineView();
  v2 = objc_msgSendSuper2(&v4, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v2 vui:*&v2[OBJC_IVAR____TtC8VideosUI14EpicInlineView_contentView] addSubview:0 oldView:?];
  return v2;
}

void sub_1E39F7068()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI14EpicInlineView_headerView) = 0;
  v1 = OBJC_IVAR____TtC8VideosUI14EpicInlineView_contentView;
  _s11ContentViewCMa();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC8VideosUI14EpicInlineView_debugUIOverlay) = 0;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E39F7124(char a1, double a2, double a3)
{
  v4 = v3;
  v27.receiver = v3;
  v27.super_class = type metadata accessor for EpicInlineView();
  v8 = objc_msgSendSuper2(&v27, sel_vui_layoutSubviews_computationOnly_, a1 & 1, a2, a3);
  if (a2 != 0.0 || a3 != 0.0)
  {
    v9 = MEMORY[0x1E69E7D40];
    v10 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x68);
    v11 = v10(v8);
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    if (v11)
    {
      v15 = v11;
      [v11 vui:a2 sizeThatFits:a3];
      v13 = v16;
      v14 = v17;
    }

    v18 = *(v4 + OBJC_IVAR____TtC8VideosUI14EpicInlineView_contentView);
    v19 = (*((*v9 & *v18) + 0x148))();
    if (v19)
    {
      (*(*v19 + 152))(v28);

      if (v29)
      {
        v12 = 0.0;
      }

      else
      {
        v12 = v28[0];
      }
    }

    v20 = [v18 vui:a2 sizeThatFits:a3 - v14 - v12];
    v22 = v21;
    v24 = v23;
    if ((a1 & 1) == 0)
    {
      v25 = v10(v20);
      if (v25)
      {
        v26 = v25;
        [v25 setFrame_];
      }

      [v18 setFrame_];
    }

    VUIRoundValue();
    VUIRoundValue();
  }
}

void sub_1E39F73B4(void *a1, uint64_t a2)
{
  v4 = sub_1E41FFCB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v158 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v158 - v10;
  v12 = (*(*a2 + 488))(v9);
  if (!v12)
  {
    goto LABEL_8;
  }

  v13 = v12;
  if (!*(v12 + 16))
  {

LABEL_8:
    v21 = sub_1E324FBDC();
    (*(v5 + 16))(v7, v21, v4);
    v22 = sub_1E41FFC94();
    v23 = sub_1E42067E4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1E323F000, v22, v23, "EpicInlineView::trying to update page content view with same model objects, returning.", v24, 2u);
      MEMORY[0x1E69143B0](v24, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    return;
  }

  v14 = (*a2 + 392);
  v15 = *v14;
  v16 = (*v14)();
  if (!v16)
  {

    return;
  }

  v158 = v11;
  v161 = (*(*v16 + 1560))(v16);

  v171[0] = 12;
  v17 = *(*a2 + 776);
  v164 = *a2 + 776;
  v159 = v17;
  (v17)(__dst, v171, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (*(&__dst[1] + 1))
  {
    if (OUTLINED_FUNCTION_4_93(v171, v18, v19, MEMORY[0x1E69E6370]))
    {
      v20 = v171[0];
      goto LABEL_16;
    }
  }

  else
  {
    sub_1E325F748(__dst, &unk_1ECF296E0, &unk_1E4298030);
  }

  v20 = 0;
LABEL_16:
  v165 = v13;
  *(a1 + OBJC_IVAR____TtC8VideosUI14EpicInlineView_debugUIOverlay) = v20;
  v25 = (*((*MEMORY[0x1E69E7D40] & **(a1 + OBJC_IVAR____TtC8VideosUI14EpicInlineView_contentView)) + 0x120))(*(a1 + OBJC_IVAR____TtC8VideosUI14EpicInlineView_debugUIOverlay));
  if ((v15)(v25))
  {
    type metadata accessor for EpicInlineLayout();
    v26 = swift_dynamicCastClass();
    if (v26)
    {
      v27 = v26;
      v28 = *((*MEMORY[0x1E69E7D40] & **(a1 + OBJC_IVAR____TtC8VideosUI14EpicInlineView_contentView)) + 0x150);

      v28(v27);
    }
  }

  v29 = *(a1 + OBJC_IVAR____TtC8VideosUI14EpicInlineView_contentView);
  *(&__dst[1] + 1) = &unk_1F5D5E3C8;
  *&__dst[2] = &off_1F5D5CB98;
  v30 = sub_1E39C29A4(__dst);
  v32 = v31;
  v33 = __swift_destroy_boxed_opaque_existential_1(__dst);
  *&__dst[0] = v30;
  *(&__dst[0] + 1) = v32;
  sub_1E39F885C(v33, v34, v35);
  sub_1E4149694();
  if (v171[0] == 4)
  {
    v36 = 2;
  }

  else
  {
    v36 = v171[0];
  }

  v37 = MEMORY[0x1E69E7D40];
  v38 = *((*MEMORY[0x1E69E7D40] & *v29) + 0x138);
  v163 = v29;
  v39 = v38(v36);
  v40 = (*((*v37 & *a1) + 0x68))(v39);
  v42 = sub_1E373E010(138, v165, v41);
  if (v42)
  {
    v43 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
    memset(__dst, 0, 40);
    v44 = v43;
    v45 = v40;
    v46 = sub_1E393D9C4(v42, v40, __dst, 0);

    sub_1E325F748(__dst, &qword_1ECF296C0, &unk_1E429BBE0);
    if (v46)
    {
      type metadata accessor for CollectionRichHeaderView();
      v42 = swift_dynamicCastClass();
      v47 = v165;
      if (!v42)
      {
      }
    }

    else
    {
      v42 = 0;
      v47 = v165;
    }

    v48 = v42;
  }

  else
  {

    v47 = v165;
  }

  v49 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x70))(v42);
  v162 = sub_1E373E010(1, v47, v50);
  v160 = v42;
  if (!v162)
  {
    v56 = v163;
    (*((*v49 & *v163) + 0x1E0))();
    v57 = sub_1E324FBDC();
    v58 = v158;
    (*(v5 + 16))(v158, v57, v4);
    v59 = sub_1E41FFC94();
    v60 = sub_1E42067E4();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_1E323F000, v59, v60, "EpicInlineView::Background view model not found.", v61, 2u);
      MEMORY[0x1E69143B0](v61, -1, -1);
    }

    (*(v5 + 8))(v58, v4);
    v63 = v165;
    v64 = MEMORY[0x1E69E7D40];
    goto LABEL_77;
  }

  sub_1E3DF9E68(v170);
  sub_1E3D41814(v161, v170, v171);
  memcpy(v169, v171, 0x82uLL);
  LOBYTE(v169[16]) = 1;
  if (v169[10] != 1)
  {
    [a1 bounds];
    v169[1] = v51;
    v169[2] = v52;
    LOBYTE(v169[3]) = 0;
    if (v169[10] != 1)
    {
      BYTE1(v169[6]) = 1;
    }
  }

  LOBYTE(v166[0]) = 4;
  (*(*v162 + 776))(__dst, v166, &unk_1F5D5D258, &off_1F5D5C7B8);
  if (*(&__dst[1] + 1))
  {
    if (OUTLINED_FUNCTION_4_93(v166, v53, v54, MEMORY[0x1E69E63B0]))
    {
      OUTLINED_FUNCTION_3_95();
      (*(v55 + 408))();
    }
  }

  else
  {
    sub_1E325F748(__dst, &unk_1ECF296E0, &unk_1E4298030);
  }

  OUTLINED_FUNCTION_3_95();
  v66 = (*(v65 + 472))();
  v166[0] = v66;
  MEMORY[0x1EEE9AC00](v66);
  *(&v158 - 2) = v169;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF307E8, &qword_1E42B22F0);
  sub_1E4148C68(sub_1E39F88B0, v67, __dst);

  v68 = *&__dst[0];
  LOBYTE(v166[0]) = 1;
  (v159)(__dst, v166, &unk_1F5D5D258, &off_1F5D5C7B8);
  if (*(&__dst[1] + 1))
  {
    if (OUTLINED_FUNCTION_4_93(v166, v69, v70, MEMORY[0x1E69E6370]))
    {
      [v68 setMutePlaybackInBackground_];
    }
  }

  else
  {
    sub_1E325F748(__dst, &unk_1ECF296E0, &unk_1E4298030);
  }

  [a1 bounds];
  Width = CGRectGetWidth(v174);
  v72 = v163;
  if (Width > 0.0 && (v73 = *sub_1E3D41778(), memcpy(v166, v169, 0x82uLL), nullsub_1(), memcpy(__dst, v166, 0x82uLL), , v74 = sub_1E3D41B90(), sub_1E3D41C40(a2, v73, v74, __dst), v76 = v75, , v76))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_1E4298880;
    *(v77 + 32) = v76;
  }

  else
  {
    v77 = MEMORY[0x1E69E7CC0];
  }

  sub_1E39F8914(v77, v68);
  v78 = *((*MEMORY[0x1E69E7D40] & *v72) + 0x1E0);
  v159 = v68;
  v78(v68);
  v79 = v162;
  sub_1E3C5F26C(v162, v161);
  if (v81)
  {
    v82 = [v72 vuiTraitCollection];
    v83 = [v82 vuiUserInterfaceStyle];
  }

  else
  {
    v83 = v80;
  }

  v84 = [v72 vuiOverrideUserInterfaceStyle];
  v64 = MEMORY[0x1E69E7D40];
  if (v84 != v83)
  {
    v85 = (*((*MEMORY[0x1E69E7D40] & *v72) + 0x208))([v72 vui:v83 setOverrideUserInterfaceStyle:?]);
    [v85 vui:v83 setOverrideUserInterfaceStyle:?];
  }

  v86 = (*(*v79 + 464))();
  if (!v86)
  {

LABEL_75:
    v56 = v163;
LABEL_76:
    memcpy(v166, v169, 0x82uLL);
    sub_1E39F8998(v166);
    v63 = v165;
LABEL_77:
    v102 = sub_1E373E010(97, v63, v62);
    v103 = v102;
    if (!v102)
    {
      goto LABEL_85;
    }

    v104 = (*(*v102 + 464))(v102);
    if (v104 && (v105 = sub_1E32AE9B0(v104), , v105))
    {
      _s8VideosUIAAC19initializeUIFactoryyyFZ_0();
      OUTLINED_FUNCTION_0_108();
      v107 = *(v106 + 568);
      v109 = v108;
      v110 = v107();
      OUTLINED_FUNCTION_2_88();
      v112 = sub_1E393D9C4(v103, v110, v111, 0);

      sub_1E325F748(v169, &qword_1ECF296C0, &unk_1E429BBE0);
      if (v112)
      {
        type metadata accessor for VerticalStackView();
        v103 = swift_dynamicCastClass();
        if (!v103)
        {
        }

LABEL_85:
        OUTLINED_FUNCTION_1_115();
        v114 = *(v113 + 576);
        v115 = v103;
        v114(v103);
        if (sub_1E373E010(40, v165, v116))
        {
          type metadata accessor for ImageViewModel();
          v117 = swift_dynamicCastClass();
          if (v117)
          {
            v118 = v117;
            _s8VideosUIAAC19initializeUIFactoryyyFZ_0();
            OUTLINED_FUNCTION_0_108();
            v120 = *(v119 + 592);
            v122 = v121;
            v123 = v120();
            OUTLINED_FUNCTION_2_88();
            v124 = OUTLINED_FUNCTION_5_92();
            v128 = sub_1E393D9C4(v124, v125, v126, v127);

            v129 = sub_1E325F748(v169, &qword_1ECF296C0, &unk_1E429BBE0);
            if (v128)
            {
              (*(*v118 + 904))(v129);
              if (v130)
              {
                v131 = sub_1E4205ED4();
              }

              else
              {
                v131 = 0;
              }

              v56 = v163;
              [v128 vui:v131 setAccessibilityText:?];
            }

            else
            {

              v56 = v163;
            }

LABEL_95:
            OUTLINED_FUNCTION_1_115();
            v133 = *(v132 + 600);
            v134 = v128;
            v133(v128);
            v136 = sub_1E373E010(40, v165, v135);
            if (v136)
            {
              if (v128)
              {
              }

              else
              {
                _s8VideosUIAAC19initializeUIFactoryyyFZ_0();
                OUTLINED_FUNCTION_0_108();
                v152 = *(v151 + 616);
                v154 = v153;
                v155 = v152();
                OUTLINED_FUNCTION_2_88();
                v157 = sub_1E393D9C4(v136, v155, v156, 0);

                sub_1E325F748(v169, &qword_1ECF296C0, &unk_1E429BBE0);
                if (v157)
                {
                  type metadata accessor for ChannelLogoView();
                  v136 = swift_dynamicCastClass();
                  if (!v136)
                  {
                  }

                  goto LABEL_99;
                }
              }

              v136 = 0;
            }

LABEL_99:
            OUTLINED_FUNCTION_1_115();
            v138 = *(v137 + 624);
            v139 = v136;
            v138(v136);
            type metadata accessor for UIFactory();
            sub_1E373E010(88, v165, v140);

            v142 = v56;
            v143 = (*((*v64 & *v56) + 0x280))(v141);
            sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
            memset(v169, 0, 40);
            v144 = OUTLINED_FUNCTION_5_92();
            v149 = sub_1E393D92C(v144, v145, v146, v147, v148);

            sub_1E325F748(v169, &qword_1ECF296C0, &unk_1E429BBE0);
            v150 = (*((*v64 & *v142) + 0x288))(v149);
            (*((*v64 & *v142) + 0x388))(v150);

            return;
          }
        }

        v128 = 0;
        goto LABEL_95;
      }
    }

    else
    {
    }

    v103 = 0;
    goto LABEL_85;
  }

  v87 = v86;
  v88 = sub_1E32AE9B0(v86);
  v89 = 0;
  v164 = v87 & 0xC000000000000001;
  while (1)
  {
    if (v88 == v89)
    {

      goto LABEL_74;
    }

    if (v164)
    {
      v91 = MEMORY[0x1E6911E60](v89, v87);
      v90 = v91;
    }

    else
    {
      if (v89 >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_105;
      }

      v90 = *(v87 + 8 * v89 + 32);
    }

    if (__OFADD__(v89, 1))
    {
      break;
    }

    v168 = *(v90 + 98);
    v167 = 39;
    sub_1E3742F1C(v91, v92, v93);
    sub_1E4206254();
    sub_1E4206254();
    if (v166[0] == v166[17] && v166[1] == v166[18])
    {

LABEL_71:

      type metadata accessor for ImageViewModel();
      v96 = swift_dynamicCastClass();
      if (v96)
      {
        v97 = v96;
        v98 = j__OUTLINED_FUNCTION_18();
        v99 = v161;
        v100 = (*(*v97 + 1048))(v161, v98 & 1);
        v56 = v163;
        v64 = MEMORY[0x1E69E7D40];
        (*((*MEMORY[0x1E69E7D40] & *v163) + 0x168))(v100);
        v101 = (*(*v97 + 1040))(v99);
        (*((*v64 & *v56) + 0x180))(v101 & 1);

        goto LABEL_76;
      }

LABEL_74:
      v64 = MEMORY[0x1E69E7D40];
      goto LABEL_75;
    }

    v95 = sub_1E42079A4();

    if (v95)
    {
      goto LABEL_71;
    }

    ++v89;
  }

  __break(1u);
LABEL_105:
  __break(1u);
}

id sub_1E39F8768()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1E4205ED4();

  v2 = [v0 initWithName_];

  return v2;
}

id sub_1E39F87DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EpicInlineView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1E39F885C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE265180;
  if (!qword_1EE265180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE265180);
  }

  return result;
}

id sub_1E39F88B0@<X0>(void *a1@<X8>)
{
  sub_1E3280A90(0, &qword_1EE23AF70, off_1E8728270);

  result = sub_1E39F8768();
  *a1 = result;
  return result;
}

void sub_1E39F8914(uint64_t a1, void *a2)
{
  sub_1E3280A90(0, &qword_1EE23B350, off_1E8728420);
  v3 = sub_1E42062A4();

  [a2 setMediaInfos_];
}

void sub_1E39F89EC()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  v1 = objc_allocWithZone(MEMORY[0x1E695DEE0]);
  v2 = v0;
  v3 = [v1 init];
  [v3 setTotalCostLimit_];
  [v2 setTotalCostLimit_];

  qword_1EE28B9A8 = v2;
  qword_1EE28B9B0 = v3;
}

id sub_1E39F8A80()
{
  result = sub_1E39F8AA0();
  qword_1EE28B9C0 = result;
  return result;
}

id sub_1E39F8AA0()
{
  v0 = sub_1E41FE6C4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  sub_1E41FE634();
  v7 = sub_1E41FE664();
  [v6 setLocale_];

  (*(v2 + 8))(v5, v0);
  return v6;
}

void sub_1E39F8BAC(uint64_t a1)
{
  v2 = sub_1E328438C(a1, &v145);
  OUTLINED_FUNCTION_1_116(v2, v3, v4, MEMORY[0x1E69E6158], v5, v6, v7, v8, v113, v120, v126, v133, v139, v145, *(&v145 + 1), v146, v147, v148, v149[0]);
  if (swift_dynamicCast())
  {
    sub_1E39F993C(v149[0], v149[1]);
    v10 = v9;

    if (v10)
    {
      return;
    }
  }

  sub_1E328438C(a1, &v145);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  OUTLINED_FUNCTION_1_116(v11, v12, v13, v11, v14, v15, v16, v17, v114, v121, v127, v134, v140, v145, *(&v145 + 1), v146, v147, v148, v149[0]);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v18 = v149[0];
  sub_1E3277E60(0x707954726F6C6F63, 0xE900000000000065, v149[0], &v145);
  if (!v147)
  {
    v28 = sub_1E329505C(&v145);
    goto LABEL_19;
  }

  v27 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_1_116(v19, v20, v21, v22, v23, v24, v25, v26, v115, v122, v128, v135, v141, v145, *(&v145 + 1), v146, v147, v148, v149[0]);
  v28 = swift_dynamicCast();
  if ((v28 & 1) == 0 || (v28 = sub_1E40C21C4(), v28 == 5))
  {
LABEL_19:
    v147 = &type metadata for ThemeKeys;
    v148 = &off_1F5D82378;
    LOBYTE(v145) = 0;
    v58 = OUTLINED_FUNCTION_10_66(v28, v29, v30, v31, v32, v33, v34, v35, v115, v122);
    if (v150)
    {
      if (OUTLINED_FUNCTION_41_11(v58, v59, v60, MEMORY[0x1E69E6158], v61, v62, v63))
      {
        __swift_destroy_boxed_opaque_existential_1(&v145);
        sub_1E39F993C(v135, v141);
        v65 = v64;

        goto LABEL_25;
      }

      v66 = __swift_destroy_boxed_opaque_existential_1(&v145);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v145);
      v66 = sub_1E329505C(v149);
    }

    v65 = 0;
LABEL_25:
    v147 = &type metadata for ThemeKeys;
    v148 = &off_1F5D82378;
    LOBYTE(v145) = 1;
    v74 = OUTLINED_FUNCTION_10_66(v66, v67, v68, v69, v70, v71, v72, v73, v117, v123);
    if (v150)
    {
      if (OUTLINED_FUNCTION_41_11(v74, v75, v76, MEMORY[0x1E69E6158], v77, v78, v79))
      {
        __swift_destroy_boxed_opaque_existential_1(&v145);
        sub_1E39F993C(v135, v141);
        v81 = v80;

        if (!v65)
        {
          goto LABEL_34;
        }

        goto LABEL_32;
      }

      __swift_destroy_boxed_opaque_existential_1(&v145);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v145);
      sub_1E329505C(v149);
    }

    v81 = 0;
    if (!v65)
    {
LABEL_34:

      return;
    }

LABEL_32:
    if (v81)
    {
      sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
      sub_1E3E5F2F8(v65, v81);
    }

    goto LABEL_34;
  }

  if (*(v18 + 16))
  {
    v36 = v28;
    v37 = sub_1E327D33C(0x6C6156726F6C6F63, 0xEB00000000736575);
    if (v38)
    {
      sub_1E328438C(*(v18 + 56) + 32 * v37, &v145);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0);
      OUTLINED_FUNCTION_1_116(v39, v40, v41, v39, v42, v43, v44, v45, v115, v122, v129, v135, v141, v145, *(&v145 + 1), v146, v147, v148, v149[0]);
      if (swift_dynamicCast())
      {
        HIDWORD(v116) = v36;
        v46 = 0;
        v47 = v149[0];
        v130 = MEMORY[0x1E69E7CC0];
        v149[0] = MEMORY[0x1E69E7CC0];
        v48 = *(v47 + 16);
        v49 = v47 + 40;
LABEL_11:
        v50 = v49 + 16 * v46;
        while (v48 != v46)
        {
          if (v46 >= *(v47 + 16))
          {
            __break(1u);
            return;
          }

          v51 = v50 + 16;
          ++v46;
          v54 = v50 - 8;
          v53 = *(v50 - 8);
          v52 = *(v54 + 8);
          v147 = v27;
          *&v145 = v53;
          *(&v145 + 1) = v52;

          sub_1E39F8BAC(&v145);
          v56 = v55;
          __swift_destroy_boxed_opaque_existential_1(&v145);

          v50 = v51;
          if (v56)
          {
            MEMORY[0x1E6910BF0](v57);
            if (*((v149[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v149[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1E42062F4();
            }

            sub_1E4206324();
            v130 = v149[0];
            v49 = v47 + 40;
            goto LABEL_11;
          }
        }

        *&v145 = v130;
        v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3B0, &unk_1E42A9630);
        sub_1E38E2C50();
        sub_1E38D2480(v82, v149);

        if (v149[0])
        {
          OUTLINED_FUNCTION_8_63(v83, 0x73746E696F50, v84, v85, v86, v87, v88, v89, v116, v47 + 40, v130, v136, v142, v145);
          if (v147)
          {
            v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2FC90, &unk_1E42A75C0);
            OUTLINED_FUNCTION_1_116(v90, v91, v92, v90, v93, v94, v95, v96, v118, v124, v131, v137, v143, v145, *(&v145 + 1), v146, v147, v148, v149[0]);
            swift_dynamicCast();
          }

          else
          {
            sub_1E329505C(&v145);
          }

          type metadata accessor for ViewGradientLayout(0);
          v97 = sub_1E40C2E40();
          OUTLINED_FUNCTION_8_63(v97, 0x746867696548, v98, v99, v100, v101, v102, v103, v118, v124, v131, v137, v143, v145);
          if (v147)
          {
            OUTLINED_FUNCTION_1_116(v104, v105, v106, MEMORY[0x1E69E7DE0], v107, v108, v109, v110, v119, v125, v132, v138, v144, v145, *(&v145 + 1), v146, v147, v148, v149[0]);
            if (swift_dynamicCast())
            {
              v111 = v149[0];
              v112 = *(*v97 + 312);

              v112(v111, 0);
            }
          }

          else
          {
            sub_1E329505C(&v145);
          }
        }
      }
    }
  }
}

void sub_1E39F9114(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1E41FDEC4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a1;
  v55 = a2;
  v10 = sub_1E41FDE94();
  v13 = sub_1E32822E0(v10, v11, v12);
  v14 = sub_1E42071E4();
  v16 = v15;
  v18 = *(v6 + 8);
  v17 = (v6 + 8);
  v18(v9, v4);
  OUTLINED_FUNCTION_2_89();
  if (sub_1E4206124())
  {
    if (_MergedGlobals_182 != -1)
    {
      OUTLINED_FUNCTION_0_109(&_MergedGlobals_182);
    }

    v19 = qword_1EE28B9A8;
    v20 = sub_1E4205ED4();
    v21 = [v19 objectForKey_];

    if (v21)
    {
      goto LABEL_36;
    }

    OUTLINED_FUNCTION_2_89();
    v22 = sub_1E4206054();
    v23 = sub_1E39F9EF4(v22, v14, v16);
    MEMORY[0x1E6910920](v23);

    sub_1E3280A90(0, &qword_1EE23AD00, 0x1E696AE88);

    v24 = OUTLINED_FUNCTION_53();
    v26 = sub_1E3763FC8(v24, v25);
    v54 = 0;
    if (![v26 scanHexLongLong_])
    {

      goto LABEL_30;
    }

    OUTLINED_FUNCTION_53();
    if (sub_1E4206024() == 4)
    {

      v27 = MEMORY[0x1E69DC888];
    }

    else
    {
      OUTLINED_FUNCTION_53();
      if (sub_1E4206024() == 6)
      {

        v45 = objc_allocWithZone(MEMORY[0x1E69DC888]);
        v31 = OUTLINED_FUNCTION_4_94();
        goto LABEL_29;
      }

      OUTLINED_FUNCTION_53();
      v46 = sub_1E4206024();

      if (v46 != 8)
      {
        goto LABEL_30;
      }

      v27 = MEMORY[0x1E69DC888];
    }

    v28 = objc_allocWithZone(v27);
    v31 = OUTLINED_FUNCTION_4_94();
LABEL_29:
    sub_1E39F989C([v29 v30]);
LABEL_30:

LABEL_36:

    return;
  }

  OUTLINED_FUNCTION_2_89();
  if ((sub_1E4206124() & 1) == 0)
  {
    OUTLINED_FUNCTION_2_89();
    if ((sub_1E4206124() & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  if (_MergedGlobals_182 != -1)
  {
    OUTLINED_FUNCTION_0_109(&_MergedGlobals_182);
  }

  v32 = qword_1EE28B9B0;
  v33 = sub_1E4205ED4();
  v34 = [v32 objectForKey_];

  if (v34)
  {
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_2_89();
  sub_1E4206124();
  OUTLINED_FUNCTION_2_89();
  v35 = sub_1E4206054();
  v36 = sub_1E39F9EF4(v35, v14, v16);
  MEMORY[0x1E6910920](v36);
  OUTLINED_FUNCTION_5_93();
  v37 = sub_1E39F9F40(1uLL, 0, v33);
  MEMORY[0x1E6910920](v37);
  OUTLINED_FUNCTION_5_93();
  v38 = sub_1E39FA014(1, 0, v33);
  MEMORY[0x1E6910920](v38);
  OUTLINED_FUNCTION_5_93();
  v54 = 0;
  v55 = v33;
  v53[0] = 44;
  v53[1] = 0xE100000000000000;
  v26 = &v54;
  v39 = sub_1E4207194();

  v40 = v39[2];
  if ((v40 - 3) > 1)
  {
    goto LABEL_35;
  }

  if (qword_1EE28B9B8 != -1)
  {
    swift_once();
    if (!v39[2])
    {
      __break(1u);
      goto LABEL_43;
    }
  }

  v33 = qword_1EE28B9C0;
  v13 = v39[5];

  v17 = sub_1E4205ED4();

  v26 = [v33 numberFromString_];

  if (!v26)
  {
LABEL_35:

    goto LABEL_36;
  }

  sub_1E41FE944();
  if (v39[2] < 2uLL)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v17 = v39[7];

  v41 = sub_1E4205ED4();

  v13 = [v33 numberFromString_];

  if (!v13)
  {
LABEL_34:

    goto LABEL_35;
  }

  sub_1E41FE944();
  if (v39[2] < 3uLL)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v42 = sub_1E4205ED4();

  v17 = [v33 numberFromString_];

  if (!v17)
  {

    goto LABEL_34;
  }

  sub_1E41FE944();
  if (v40 != 4)
  {

    goto LABEL_38;
  }

  if (v39[2] >= 4uLL)
  {

    v43 = sub_1E4205ED4();

    v44 = [v33 numberFromString_];

    if (!v44)
    {
LABEL_40:

      goto LABEL_30;
    }

    sub_1E41FE944();

LABEL_38:
    v47 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v48 = OUTLINED_FUNCTION_4_94();
    v39 = [v49 v50];
    v33 = &OBJC_IVAR____TtC8VideosUI22LivePostPlayController_waitingForPlayerControlsOrTabsToDismiss;
    if (_MergedGlobals_182 == -1)
    {
LABEL_39:
      v51 = v33[310];
      v52 = sub_1E4205ED4();
      [v51 setObject:v39 forKey:v52 cost:1];

      goto LABEL_40;
    }

LABEL_45:
    OUTLINED_FUNCTION_0_109(&_MergedGlobals_182);
    goto LABEL_39;
  }

  __break(1u);
}

void sub_1E39F989C(uint64_t a1)
{
  if (_MergedGlobals_182 != -1)
  {
    OUTLINED_FUNCTION_0_109(&_MergedGlobals_182);
  }

  v2 = qword_1EE28B9A8;
  v3 = sub_1E4205ED4();
  [v2 setObject:a1 forKey:v3 cost:1];
}

void sub_1E39F993C(uint64_t a1, uint64_t *a2)
{
  sub_1E39F9114(a1, a2);
  if (!v2)
  {

    v3 = sub_1E4207A04();

    switch(v3)
    {
      case 0:
        sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
        v5 = sub_1E3E5F58C();
        goto LABEL_33;
      case 1:
      case 2:
        sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
        v5 = sub_1E3E5F7E4();
        goto LABEL_33;
      case 3:
        sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
        v5 = sub_1E3E5FD88();
        goto LABEL_33;
      case 4:
        sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
        v5 = sub_1E3E5FDEC();
        goto LABEL_33;
      case 5:
        sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
        v5 = sub_1E3E60364();
        goto LABEL_33;
      case 6:
        sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
        v5 = sub_1E3E603B8();
        goto LABEL_33;
      case 7:
        sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
        v5 = sub_1E3E6011C();
        goto LABEL_33;
      case 8:
        sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
        v5 = sub_1E3E5FACC();
        goto LABEL_33;
      case 9:
        sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
        v5 = sub_1E3E605D4();
        goto LABEL_33;
      case 10:
        sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
        v5 = sub_1E3E60238();
        goto LABEL_33;
      case 11:
        sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
        v5 = sub_1E3E6029C();
        goto LABEL_33;
      case 12:
        sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
        v5 = sub_1E3E60300();
        goto LABEL_33;
      case 13:
        sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
        v5 = sub_1E3E6041C();
        goto LABEL_33;
      case 14:
        sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
        v5 = sub_1E3E60480();
        goto LABEL_33;
      case 15:
        sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
        v5 = sub_1E3E604E4();
        goto LABEL_33;
      case 16:
        sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
        v5 = sub_1E3E60548();
        goto LABEL_33;
      case 17:
        sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
        v5 = sub_1E3E60700();
        goto LABEL_33;
      case 18:
        sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
        v5 = sub_1E3E608EC();
        goto LABEL_33;
      case 19:
        sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
        v5 = sub_1E3E6097C();
        goto LABEL_33;
      case 20:
        sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
        v5 = sub_1E3E60A14();
        goto LABEL_33;
      case 21:
        sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
        v5 = sub_1E3E60170();
        goto LABEL_33;
      case 22:
        sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
        v5 = sub_1E3E601D4();
        goto LABEL_33;
      case 23:
        sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
        v5 = sub_1E3E5FE74();
LABEL_33:
        v7 = *v5;
        return;
      case 24:
        OUTLINED_FUNCTION_3_96(v4, &qword_1EE23AE20);
        v6 = [objc_opt_self() systemRedColor];
        goto LABEL_37;
      case 25:
        OUTLINED_FUNCTION_3_96(v4, &qword_1EE23AE20);
        v6 = [objc_opt_self() systemGreenColor];
        goto LABEL_37;
      case 26:
        OUTLINED_FUNCTION_3_96(v4, &qword_1EE23AE20);
        v6 = [objc_opt_self() systemBlueColor];
        goto LABEL_37;
      case 27:
        OUTLINED_FUNCTION_3_96(v4, &qword_1EE23AE20);
        v6 = [objc_opt_self() systemOrangeColor];
        goto LABEL_37;
      case 28:
        OUTLINED_FUNCTION_3_96(v4, &qword_1EE23AE20);
        v6 = [objc_opt_self() systemYellowColor];
        goto LABEL_37;
      case 29:
        OUTLINED_FUNCTION_3_96(v4, &qword_1EE23AE20);
        v6 = [objc_opt_self() systemPinkColor];
        goto LABEL_37;
      case 30:
        OUTLINED_FUNCTION_3_96(v4, &qword_1EE23AE20);
        v6 = [objc_opt_self() systemPurpleColor];
        goto LABEL_37;
      case 31:
        OUTLINED_FUNCTION_3_96(v4, &qword_1EE23AE20);
        v6 = [objc_opt_self() systemTealColor];
        goto LABEL_37;
      case 32:
        OUTLINED_FUNCTION_3_96(v4, &qword_1EE23AE20);
        v6 = [objc_opt_self() systemIndigoColor];
        goto LABEL_37;
      case 33:
        OUTLINED_FUNCTION_3_96(v4, &qword_1EE23AE20);
        v6 = [objc_opt_self() systemGrayColor];
LABEL_37:
        v8 = v6;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1E39F9E94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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

unint64_t sub_1E39F9EF4(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1E4206184();
  }

  __break(1u);
  return result;
}

unint64_t sub_1E39F9F40(unint64_t result, uint64_t a2, unint64_t a3)
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
    result = sub_1E4206044();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_1E4206184();

      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E39FA014(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    result = sub_1E4206024();
    if (!__OFSUB__(result, v3))
    {
      sub_1E4206044();
      v4 = sub_1E4206184();

      return v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E39FA104()
{
  type metadata accessor for LoadingViewInteractor(0);
  *(swift_allocObject() + OBJC_IVAR____TtC8VideosUIP33_2B29BE9CA5E2518C7CE292210CD5DA1321LoadingViewInteractor_view) = 0;
  return sub_1E3B500B4();
}

uint64_t sub_1E39FA188@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = sub_1E39FA104;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  return result;
}

uint64_t sub_1E39FA1A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a2)
  {
    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  v40 = v8;
  type metadata accessor for TextViewModel();
  type metadata accessor for TextLayout();
  v9 = sub_1E383BCC0();

  v10 = *sub_1E3E5FD88();
  v11 = *(*v9 + 680);
  v12 = v10;
  v11(v10);

  OUTLINED_FUNCTION_36();
  (*(v13 + 1696))(2);
  OUTLINED_FUNCTION_36();
  v15 = (*(v14 + 1792))(10);
  v23 = OUTLINED_FUNCTION_2_90(v15, v16, v17, v18, v19, v20, v21, v22, v40);
  if (a4)
  {
    v24 = a3;
  }

  else
  {
    v24 = 0;
  }

  v41 = v24;
  v25 = sub_1E383BCC0();

  v26 = *sub_1E3E5FDEC();
  v27 = *(*v25 + 680);
  v28 = v26;
  v27(v26);
  OUTLINED_FUNCTION_36();
  (*(v29 + 464))(1);

  OUTLINED_FUNCTION_36();
  v31 = (*(v30 + 1696))(17);
  result = OUTLINED_FUNCTION_2_90(v31, v32, v33, v34, v35, v36, v37, v38, v41);
  *a5 = v23;
  *(a5 + 8) = result;
  *(a5 + 16) = sub_1E39FA104;
  *(a5 + 24) = 0;
  *(a5 + 32) = 0;
  return result;
}

uint64_t sub_1E39FA414@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  type metadata accessor for LoadingViewInteractor(0);
  sub_1E39FA56C();

  sub_1E4200BC4();
  v5 = sub_1E42010C4();
  v7 = v6;
  v8 = swift_allocObject();
  v9 = *(v1 + 1);
  *(v8 + 16) = *v1;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(v1 + 32);
  *a1 = v4;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v7;
  a1[4] = sub_1E39FA5C4;
  a1[5] = v8;
  a1[6] = 0;
  a1[7] = 0;

  return sub_1E380E99C();
}

uint64_t type metadata accessor for LoadingViewInteractor(uint64_t a1)
{
  result = qword_1EE29BC48;
  if (!qword_1EE29BC48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E39FA56C()
{
  result = qword_1EE266608[0];
  if (!qword_1EE266608[0])
  {
    type metadata accessor for LoadingViewInteractor(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE266608);
  }

  return result;
}

double sub_1E39FA5C4()
{
  type metadata accessor for LoadingViewInteractor(0);
  sub_1E39FA56C();
  v0 = *(sub_1E4200BC4() + OBJC_IVAR____TtC8VideosUIP33_2B29BE9CA5E2518C7CE292210CD5DA1321LoadingViewInteractor_view);
  if (v0)
  {
    v2 = v0;

    [v2 startTimer];
  }

  else
  {
  }

  return result;
}

uint64_t sub_1E39FA6BC(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 33))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1E39FA710(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1E39FA788(uint64_t a1)
{
  v1 = sub_1E3B4FF80();

  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

unint64_t sub_1E39FA848()
{
  result = qword_1EE289BA0;
  if (!qword_1EE289BA0)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF307F0, &qword_1E42B2470);
    sub_1E39FA8D4(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289BA0);
  }

  return result;
}

unint64_t sub_1E39FA8D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE297838;
  if (!qword_1EE297838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE297838);
  }

  return result;
}

id sub_1E39FA93C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = 0;
    v8 = 0;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    v11 = 0;
    goto LABEL_6;
  }

  v6 = sub_1E3C27024();
  v8 = v7;
  if (!a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = sub_1E3C27024();
  v11 = v10;
LABEL_6:
  v12 = objc_allocWithZone(VUILoadingView);
  v13 = sub_1E39FADAC(0.0, 0.0, 0.0, 0.0, v6, v8, v9, v11);
  v15 = v13;
  if (!a1 || (v13 = sub_1E3C27528(v13, v14)) == 0)
  {
LABEL_10:
    if (!a2)
    {
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  type metadata accessor for TextLayout();
  v16 = swift_dynamicCastClass();
  if (v16)
  {
    v17 = (*(*v16 + 2408))();
    [v15 setTitleTextLayout_];

    goto LABEL_10;
  }

  if (!a2)
  {
    goto LABEL_17;
  }

LABEL_11:
  if (sub_1E3C27528(v13, v14))
  {
    type metadata accessor for TextLayout();
    v18 = swift_dynamicCastClass();
    if (v18)
    {
      v19 = (*(*v18 + 2408))();
      [v15 setMessageTextLayout_];
    }

    else
    {
    }
  }

LABEL_17:
  v20 = *(a3 + OBJC_IVAR____TtC8VideosUIP33_2B29BE9CA5E2518C7CE292210CD5DA1321LoadingViewInteractor_view);
  *(a3 + OBJC_IVAR____TtC8VideosUIP33_2B29BE9CA5E2518C7CE292210CD5DA1321LoadingViewInteractor_view) = v15;
  v21 = v15;

  return v21;
}

uint64_t sub_1E39FAB40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E39FAE7C(a1, a2, a3);

  return sub_1E3E36D18(a1, a2, v5);
}

uint64_t sub_1E39FAB8C()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E39FAE7C(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_3_5();

  return sub_1E3E36D2C(v3, v4, v5, v6);
}

unint64_t sub_1E39FAC60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E39FAC88(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E39FAC88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE297840[0];
  if (!qword_1EE297840[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE297840);
  }

  return result;
}

uint64_t sub_1E39FACDC()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E39FAC88(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDAA28](v3);
}

uint64_t sub_1E39FAD30()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E39FAC88(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDA9B8](v3);
}

void sub_1E39FAD84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E39FAC88(a1, a2, a3);
  sub_1E4201F04();
  __break(1u);
}

id sub_1E39FADAC(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a6)
  {
    v14 = 0;
    if (a8)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = 0;
    goto LABEL_6;
  }

  v14 = sub_1E4205ED4();

  if (!a8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v15 = sub_1E4205ED4();

LABEL_6:
  v16 = [v8 initWithFrame:v14 loadingTitle:v15 loadingMessage:{a1, a2, a3, a4}];

  return v16;
}

unint64_t sub_1E39FAE7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE297830;
  if (!qword_1EE297830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE297830);
  }

  return result;
}

id sub_1E39FAED0(uint64_t a1, __n128 a2)
{
  result = [objc_allocWithZone(type metadata accessor for LibImageLoader()) init];
  qword_1EE2AB198 = result;
  return result;
}

uint64_t *sub_1E39FAF00()
{
  if (qword_1EE2A5920 != -1)
  {
    OUTLINED_FUNCTION_14_73(&qword_1EE2A5920);
  }

  return &qword_1EE2AB198;
}

id sub_1E39FAF40()
{
  v1 = OBJC_IVAR____TtC8VideosUI14LibImageLoader_imageLoadOperationQueue;
  v2 = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
  *&v0[v1] = v2;
  [v2 setMaxConcurrentOperationCount_];
  [*&v0[v1] setQualityOfService_];
  v4.receiver = v0;
  v4.super_class = type metadata accessor for LibImageLoader();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_1E39FAFF4()
{
  sub_1E41FE414();
  OUTLINED_FUNCTION_32_2();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1E39FB154(uint64_t a1)
{
  sub_1E328438C(a1, v4);
  type metadata accessor for LibImageViewModel();
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v1 = sub_1E39FB1E4(v3);

  return v1;
}

uint64_t sub_1E39FB1E4(uint64_t a1)
{
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  if (*a1 == _TtC8VideosUI19LibMPImageViewModel)
  {
    v10 = 3043437;
LABEL_5:
    v28 = v10;
    v29 = 0xE300000000000000;
    if (!*(a1 + 24))
    {
      OUTLINED_FUNCTION_44_27();
    }

    v11 = OUTLINED_FUNCTION_74();
    MEMORY[0x1E69109E0](v11);

    goto LABEL_8;
  }

  if (*a1 == _TtC8VideosUI25LibSidebandImageViewModel)
  {
    v10 = 3039859;
    goto LABEL_5;
  }

  type metadata accessor for LibraryFamilyMembersImageViewModel();
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v28 = 3042662;
    v29 = 0xE300000000000000;
    v14 = *(v13 + 328);
    v15 = *(v13 + 336);

    MEMORY[0x1E69109E0](v14, v15);

LABEL_8:

    return v28;
  }

  OUTLINED_FUNCTION_44_27();
  v16 = sub_1E41A3110();
  (*(v5 + 16))(v9, v16, v3);

  v17 = sub_1E41FFC94();
  v18 = sub_1E4206814();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = OUTLINED_FUNCTION_6_21();
    v20 = OUTLINED_FUNCTION_100();
    v28 = v20;
    *v19 = 136315138;
    v30 = *(a1 + 98);
    sub_1E37D144C(v20, v21, v22);
    v23 = sub_1E4207944();
    v25 = sub_1E3270FC8(v23, v24, &v28);

    *(v19 + 4) = v25;
    OUTLINED_FUNCTION_54_1(&dword_1E323F000, v26, v27, "LibImageLoader:: Unsupported view model: %s");
    __swift_destroy_boxed_opaque_existential_1(v20);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v5 + 8))(v9, v3);
  return v1;
}

void sub_1E39FB554()
{
  OUTLINED_FUNCTION_144_0();
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v23 - v6;
  sub_1E328438C(v0, v24);
  sub_1E3280A90(0, &qword_1EE23B010, 0x1E69DF690);
  if (swift_dynamicCast())
  {
    v8 = v23[1];
    v9 = sub_1E41A3110();
    (*(v3 + 16))(v7, v9, v1);
    v10 = sub_1E41FFC94();
    v11 = sub_1E4206814();
    if (os_log_type_enabled(v10, v11))
    {
      *OUTLINED_FUNCTION_125_0() = 0;
      OUTLINED_FUNCTION_48_5(&dword_1E323F000, v12, v13, "LibImageLoader:: cancel image loading");
      OUTLINED_FUNCTION_6_0();
    }

    v14 = OUTLINED_FUNCTION_13_8();
    v15(v14);
    [v8 cancel];
  }

  else
  {
    sub_1E41A3110();
    v16 = OUTLINED_FUNCTION_101();
    v17(v16);
    v18 = sub_1E41FFC94();
    v19 = sub_1E4206814();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = OUTLINED_FUNCTION_125_0();
      *v20 = 0;
      _os_log_impl(&dword_1E323F000, v18, v19, "LibImageLoader:: requestToken is not VUIAsynchronousWorkToken", v20, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    v21 = OUTLINED_FUNCTION_16_0();
    v22(v21);
  }
}

void sub_1E39FB7F4()
{
  OUTLINED_FUNCTION_93();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_5_16();
  v8 = v7;
  v10 = v9;
  v11 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_6();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39 - v19;
  sub_1E328438C(v8, v41);
  type metadata accessor for LibImageViewModel();
  if (!swift_dynamicCast())
  {
    v30 = sub_1E41A3110();
    (*(v13 + 16))(v17, v30, v11);
    v31 = sub_1E41FFC94();
    v32 = sub_1E4206814();
    if (os_log_type_enabled(v31, v32))
    {
      *OUTLINED_FUNCTION_125_0() = 0;
      OUTLINED_FUNCTION_48_5(&dword_1E323F000, v33, v34, "LibImageLoader::We only support LibImageViewModel objects");
      OUTLINED_FUNCTION_6_0();
    }

    (*(v13 + 8))(v17, v11);
    goto LABEL_11;
  }

  v21 = v40;
  v22 = *(v40 + 24);
  if (!v22)
  {
    v35 = sub_1E41A3110();
    (*(v13 + 16))(v20, v35, v11);
    v36 = sub_1E41FFC94();
    v37 = sub_1E4206814();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = OUTLINED_FUNCTION_125_0();
      *v38 = 0;
      _os_log_impl(&dword_1E323F000, v36, v37, "LibImageLoader::The LibImageViewModel object should have a valid identifier", v38, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    else
    {
    }

    (*(v13 + 8))(v20, v11);
LABEL_11:
    *v10 = 0u;
    *(v10 + 16) = 0u;
    goto LABEL_12;
  }

  v23 = *(v40 + 16);
  Operation = type metadata accessor for LibImageLoadOperation();
  v25 = objc_allocWithZone(Operation);

  *&v25[OBJC_IVAR____TtC8VideosUIP33_8FF32F3B2D88FB8F7A4A46F15974792F21LibImageLoadOperation_libImageViewModel] = v21;
  v26 = &v25[OBJC_IVAR____TtC8VideosUIP33_8FF32F3B2D88FB8F7A4A46F15974792F21LibImageLoadOperation_requestParam];
  *v26 = v23;
  *(v26 + 1) = v22;
  *(v26 + 2) = v2;
  *(v26 + 3) = v1;
  v27 = &v25[OBJC_IVAR____TtC8VideosUIP33_8FF32F3B2D88FB8F7A4A46F15974792F21LibImageLoadOperation_completionHandler];
  *v27 = v6;
  *(v27 + 1) = v4;
  v41[0].receiver = v25;
  v41[0].super_class = Operation;
  v28 = [(objc_super *)v41 init];
  [*(v0 + OBJC_IVAR____TtC8VideosUI14LibImageLoader_imageLoadOperationQueue) addOperation_];
  v29 = [objc_allocWithZone(MEMORY[0x1E69DF690]) initWithOperation_];
  *(v10 + 24) = sub_1E3280A90(0, &qword_1EE23B010, 0x1E69DF690);

  *v10 = v29;
LABEL_12:
  OUTLINED_FUNCTION_54_0();
}

void sub_1E39FBCD0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v19 - v14;
  if (a3)
  {
    a3 = sub_1E4205ED4();
  }

  sub_1E329E324(a4, v15);
  v16 = sub_1E41FE5D4();
  v17 = 0;
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) != 1)
  {
    v17 = sub_1E41FE514();
    (*(*(v16 - 8) + 8))(v15, v16);
  }

  if (a6)
  {
    v18 = sub_1E41FE264();
  }

  else
  {
    v18 = 0;
  }

  (*(a7 + 16))(a7, a1, a3, v17, a5, v18);
}

void sub_1E39FBE60()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v2 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = *&v0[OBJC_IVAR____TtC8VideosUIP33_8FF32F3B2D88FB8F7A4A46F15974792F21LibImageLoadOperation_libImageViewModel];
  if (*v16 == _TtC8VideosUI19LibMPImageViewModel)
  {
    v17 = *(v16 + 328);

    v17;
    sub_1E39FC34C();

    OUTLINED_FUNCTION_54_0();

    return;
  }

  if (*v16 == _TtC8VideosUI25LibSidebandImageViewModel)
  {
    v20 = *(v16 + 328);
    v22 = *&v1[OBJC_IVAR____TtC8VideosUIP33_8FF32F3B2D88FB8F7A4A46F15974792F21LibImageLoadOperation_requestParam];
    v21 = *&v1[OBJC_IVAR____TtC8VideosUIP33_8FF32F3B2D88FB8F7A4A46F15974792F21LibImageLoadOperation_requestParam + 8];
    v23 = *&v1[OBJC_IVAR____TtC8VideosUIP33_8FF32F3B2D88FB8F7A4A46F15974792F21LibImageLoadOperation_requestParam + 16];
    v24 = *&v1[OBJC_IVAR____TtC8VideosUIP33_8FF32F3B2D88FB8F7A4A46F15974792F21LibImageLoadOperation_requestParam + 24];
    v26 = *&v1[OBJC_IVAR____TtC8VideosUIP33_8FF32F3B2D88FB8F7A4A46F15974792F21LibImageLoadOperation_completionHandler];
    v25 = *&v1[OBJC_IVAR____TtC8VideosUIP33_8FF32F3B2D88FB8F7A4A46F15974792F21LibImageLoadOperation_completionHandler + 8];

    v27 = v20;
    v28 = [v27 managedObjectContext];
    if (v28)
    {
      v29 = v28;
      OUTLINED_FUNCTION_4_0();
      v30 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v31 = swift_allocObject();
      v31[2] = v30;
      v31[3] = v22;
      v31[4] = v21;
      v31[5] = v23;
      v31[6] = v24;
      v31[7] = v27;
      v31[8] = v26;
      v31[9] = v25;
      v44 = sub_1E39FFB64;
      v45 = v31;
      OUTLINED_FUNCTION_10_67();
      v41 = 1107296256;
      OUTLINED_FUNCTION_0_48();
      v42 = v32;
      v43 = &block_descriptor_39_1;
      v33 = _Block_copy(&v40);

      v34 = v27;

      [v29 performBlock_];
      _Block_release(v33);
    }

    goto LABEL_14;
  }

  type metadata accessor for LibraryFamilyMembersImageViewModel();
  if (!swift_dynamicCastClass())
  {
    sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
    v39 = sub_1E4206A04();
    OUTLINED_FUNCTION_4_0();
    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v44 = sub_1E39FF9F8;
    v45 = v36;
    OUTLINED_FUNCTION_10_67();
    v41 = 1107296256;
    OUTLINED_FUNCTION_14_1();
    v42 = v37;
    v43 = &block_descriptor_40;
    v38 = _Block_copy(&v40);

    sub_1E4203FE4();
    v40 = MEMORY[0x1E69E7CC0];
    sub_1E37E7A8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
    sub_1E378AD28();
    sub_1E42072E4();
    MEMORY[0x1E6911380](0, v15, v8, v38);
    _Block_release(v38);

    (*(v4 + 8))(v8, v2);
    (*(v11 + 8))(v15, v9);
    [v1 finishExecutionIfPossible];
LABEL_14:
    OUTLINED_FUNCTION_54_0();
    return;
  }

  sub_1E39FCA00();

  OUTLINED_FUNCTION_54_0();
}

void sub_1E39FC34C()
{
  OUTLINED_FUNCTION_93();
  v87 = v0;
  v88 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v92 = v8;
  v10 = v9;
  v11 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v81 = v15;
  v82 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v91 = &v77 - v17;
  OUTLINED_FUNCTION_138();
  v18 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4_6();
  v83 = v22 - v23;
  MEMORY[0x1EEE9AC00](v24);
  sub_1E324FBDC();
  v25 = OUTLINED_FUNCTION_101();
  v79 = v26;
  v80 = v27;
  v78 = v28;
  (v28)(v25);

  v29 = sub_1E41FFC94();
  v30 = sub_1E4206814();

  v31 = os_log_type_enabled(v29, v30);
  v89 = v13;
  v90 = v11;
  v84 = v20;
  v85 = v18;
  if (v31)
  {
    v32 = OUTLINED_FUNCTION_6_21();
    v33 = v10;
    v34 = OUTLINED_FUNCTION_100();
    v93[0] = v34;
    *v32 = 136315138;
    *(v32 + 4) = sub_1E3270FC8(v92, v7, v93);
    OUTLINED_FUNCTION_54_1(&dword_1E323F000, v35, v36, "LibImageLoader:: Load ArtworkCatalog image: %s");
    __swift_destroy_boxed_opaque_existential_1(v34);
    v10 = v33;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v37 = *(v20 + 8);
  v38 = OUTLINED_FUNCTION_16_0();
  v39 = (v37)(v38);
  v86 = v10;
  v40 = VUISignpostLogObject(v39);
  v41 = v91;
  sub_1E41FFBC4();

  v42 = [v10 hasImageOnDisk];
  v43 = sub_1E4206BA4();
  v44 = VUISignpostLogObject(v43);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870, &unk_1E429CE30);
  v46 = OUTLINED_FUNCTION_26_11(v45);
  v77 = xmmword_1E4297BE0;
  *(v46 + 16) = xmmword_1E4297BE0;
  v47 = MEMORY[0x1E69E6158];
  *(v46 + 56) = MEMORY[0x1E69E6158];
  v50 = sub_1E3283528(v46, v48, v49);
  *(v46 + 64) = v50;
  *(v46 + 32) = v92;
  *(v46 + 40) = v7;

  if (v42)
  {
    v82 = v37;
    OUTLINED_FUNCTION_2_91();
    OUTLINED_FUNCTION_21_47();
    sub_1E41FFB94();

    v51 = [v86 bestImageFromDisk];
    v52 = sub_1E4206B94();
    v53 = VUISignpostLogObject(v52);
    v54 = OUTLINED_FUNCTION_24_34();
    *(v54 + 16) = v77;
    *(v54 + 56) = v47;
    *(v54 + 64) = v50;
    v55 = v92;
    *(v54 + 32) = v92;
    *(v54 + 40) = v7;
    OUTLINED_FUNCTION_2_91();
    OUTLINED_FUNCTION_21_47();
    sub_1E41FFB94();

    v56 = v83;
    v57 = v85;
    v78(v83, v79, v85);

    v58 = sub_1E41FFC94();
    v59 = sub_1E4206814();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = OUTLINED_FUNCTION_6_21();
      v61 = OUTLINED_FUNCTION_100();
      v93[0] = v61;
      *v60 = 136315138;
      *(v60 + 4) = sub_1E3270FC8(v55, v7, v93);
      _os_log_impl(&dword_1E323F000, v58, v59, "LibImageLoader:: ArtworkCatalog returns best image from disk for request: %s", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v61);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (v82)(v56, v57);
    v63 = v89;
    v62 = v90;
    sub_1E39FD2A8(v5, v51, v55, v7, v87, v88);
  }

  else
  {
    OUTLINED_FUNCTION_2_91();
    sub_1E41FFB94();

    OUTLINED_FUNCTION_4_0();
    v64 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v63 = v89;
    v62 = v90;
    v65 = v41;
    v66 = v82;
    (*(v89 + 16))(v82, v65, v90);
    v67 = (*(v63 + 80) + 24) & ~*(v63 + 80);
    v68 = (v81 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
    v69 = (v68 + 23) & 0xFFFFFFFFFFFFFFF8;
    v70 = swift_allocObject();
    *(v70 + 16) = v64;
    (*(v63 + 32))(v70 + v67, v66, v62);
    v71 = (v70 + v68);
    v72 = v92;
    *v71 = v92;
    v71[1] = v7;
    v73 = (v70 + v69);
    *v73 = v72;
    v73[1] = v7;
    *(v73 + 2) = v5;
    v73[3] = v3;
    v74 = (v70 + ((v69 + 39) & 0xFFFFFFFFFFFFFFF8));
    v75 = v88;
    *v74 = v87;
    v74[1] = v75;
    v93[4] = sub_1E39FFA00;
    v93[5] = v70;
    OUTLINED_FUNCTION_25_7();
    v93[1] = 1107296256;
    v93[2] = sub_1E39FE2F0;
    v93[3] = &block_descriptor_11;
    v76 = _Block_copy(v93);

    [v86 requestImageWithCompletion_];
    _Block_release(v76);
    v41 = v91;
  }

  (*(v63 + 8))(v41, v62);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E39FCA00()
{
  OUTLINED_FUNCTION_93();
  v59 = v3;
  v5 = v4;
  OUTLINED_FUNCTION_5_16();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  sub_1E41A3110();
  v18 = OUTLINED_FUNCTION_101();
  v19(v18);

  v20 = sub_1E41FFC94();
  v21 = sub_1E4206814();

  if (os_log_type_enabled(v20, v21))
  {
    v58 = v13;
    v22 = v9;
    v23 = OUTLINED_FUNCTION_49_0();
    v60 = swift_slowAlloc();
    *v23 = 136315394;
    *(v23 + 4) = sub_1E3270FC8(v58, v11, &v60);
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_1E3270FC8(v22, v7, &v60);
    _os_log_impl(&dword_1E323F000, v20, v21, "LibImageLoader:: Load profile image for %s, %s", v23, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    v9 = v22;
    v13 = v58;
    OUTLINED_FUNCTION_6_0();
  }

  (*(v16 + 8))(v0, v14);
  OUTLINED_FUNCTION_4_0();
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = swift_allocObject();
  v26 = v25;
  *(v25 + 2) = v24;
  *(v25 + 3) = v13;
  *(v25 + 4) = v11;
  *(v25 + 5) = v9;
  *(v25 + 6) = v7;
  v25[7] = v2;
  *(v25 + 8) = v1;
  v27 = HIBYTE(v11) & 0xF;
  v28 = v13 & 0xFFFFFFFFFFFFLL;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v29 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v29 = v13 & 0xFFFFFFFFFFFFLL;
  }

  *(v25 + 9) = v59;
  *(v25 + 10) = v5;
  if (!v29)
  {

    goto LABEL_72;
  }

  if ((v11 & 0x1000000000000000) != 0)
  {

    v49 = sub_1E37801A4(v13, v11, 10);
    if (v50)
    {
      goto LABEL_72;
    }

    v32 = v49;
    goto LABEL_76;
  }

  if ((v11 & 0x2000000000000000) == 0)
  {
    if ((v13 & 0x1000000000000000) != 0)
    {
      v30 = ((v11 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v30 = sub_1E4207524();
    }

    v31 = *v30;
    if (v31 == 43)
    {
      if (v28 >= 1)
      {
        if (v28 != 1)
        {
          v32 = 0;
          if (v30)
          {
            while (1)
            {
              OUTLINED_FUNCTION_1_4();
              if (!v34 & v33)
              {
                goto LABEL_70;
              }

              OUTLINED_FUNCTION_6_11();
              if (!v34)
              {
                goto LABEL_70;
              }

              v32 = (v41 + v40);
              if (__OFADD__(v41, v40))
              {
                goto LABEL_70;
              }

              OUTLINED_FUNCTION_132();
              if (v34)
              {
                goto LABEL_71;
              }
            }
          }

          goto LABEL_61;
        }

        goto LABEL_70;
      }

      goto LABEL_83;
    }

    if (v31 != 45)
    {
      if (v28)
      {
        v32 = 0;
        if (v30)
        {
          while (1)
          {
            v44 = *v30 - 48;
            if (v44 > 9)
            {
              goto LABEL_70;
            }

            v45 = 10 * v32;
            if ((v32 * 10) >> 64 != (10 * v32) >> 63)
            {
              goto LABEL_70;
            }

            v32 = (v45 + v44);
            if (__OFADD__(v45, v44))
            {
              goto LABEL_70;
            }

            ++v30;
            if (!--v28)
            {
              goto LABEL_61;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_70:
      v32 = 0;
      v37 = 1;
LABEL_71:
      v66 = v37;
      v48 = v37;

      if (v48)
      {
LABEL_72:
        OUTLINED_FUNCTION_22_38();

LABEL_79:
        OUTLINED_FUNCTION_54_0();
        return;
      }

LABEL_76:
      v51 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
      v52 = [objc_allocWithZone(MEMORY[0x1E699C078]) initWithFamilyMemberDSID:v51 size:1 localFallback:0];
      if (v52)
      {
        v53 = v52;

        [v53 setUseMonogramAsLastResort_];
        [v53 setMonogramDiameter_];
        OUTLINED_FUNCTION_4_0();
        v54 = v9;
        v55 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v56 = swift_allocObject();
        *(v56 + 2) = v55;
        *(v56 + 3) = sub_1E39FFE44;
        *(v56 + 4) = v26;
        *(v56 + 5) = v13;
        *(v56 + 6) = v11;
        *(v56 + 7) = v54;
        *(v56 + 8) = v7;
        v56[9] = v2;
        *(v56 + 10) = v1;
        *(v56 + 11) = v59;
        *(v56 + 12) = v5;
        v64 = sub_1E39FFE58;
        v65 = v56;
        OUTLINED_FUNCTION_25_7();
        v61 = 1107296256;
        v62 = sub_1E39FF540;
        v63 = &block_descriptor_63_0;
        v57 = _Block_copy(&v60);

        [v53 startRequestWithCompletionHandler_];
        _Block_release(v57);
      }

      else
      {
        OUTLINED_FUNCTION_22_38();
      }

      goto LABEL_79;
    }

    if (v28 >= 1)
    {
      if (v28 != 1)
      {
        v32 = 0;
        if (v30)
        {
          while (1)
          {
            OUTLINED_FUNCTION_1_4();
            if (!v34 & v33)
            {
              goto LABEL_70;
            }

            OUTLINED_FUNCTION_6_11();
            if (!v34)
            {
              goto LABEL_70;
            }

            v32 = (v36 - v35);
            if (__OFSUB__(v36, v35))
            {
              goto LABEL_70;
            }

            OUTLINED_FUNCTION_132();
            if (v34)
            {
              goto LABEL_71;
            }
          }
        }

LABEL_61:
        v37 = 0;
        goto LABEL_71;
      }

      goto LABEL_70;
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v60 = v13;
  v61 = v11 & 0xFFFFFFFFFFFFFFLL;
  if (v13 != 43)
  {
    if (v13 != 45)
    {
      if (v27)
      {
        while (1)
        {
          OUTLINED_FUNCTION_1_4();
          if (!v34 & v33)
          {
            break;
          }

          OUTLINED_FUNCTION_6_11();
          if (!v34)
          {
            break;
          }

          v32 = (v47 + v46);
          if (__OFADD__(v47, v46))
          {
            break;
          }

          OUTLINED_FUNCTION_132();
          if (v34)
          {
            goto LABEL_71;
          }
        }
      }

      goto LABEL_70;
    }

    if (v27)
    {
      if (v27 != 1)
      {
        OUTLINED_FUNCTION_42_30();
        while (1)
        {
          OUTLINED_FUNCTION_1_4();
          if (!v34 & v33)
          {
            break;
          }

          OUTLINED_FUNCTION_6_11();
          if (!v34)
          {
            break;
          }

          v32 = (v39 - v38);
          if (__OFSUB__(v39, v38))
          {
            break;
          }

          OUTLINED_FUNCTION_132();
          if (v34)
          {
            goto LABEL_71;
          }
        }
      }

      goto LABEL_70;
    }

    goto LABEL_82;
  }

  if (v27)
  {
    if (v27 != 1)
    {
      OUTLINED_FUNCTION_42_30();
      while (1)
      {
        OUTLINED_FUNCTION_1_4();
        if (!v34 & v33)
        {
          break;
        }

        OUTLINED_FUNCTION_6_11();
        if (!v34)
        {
          break;
        }

        v32 = (v43 + v42);
        if (__OFADD__(v43, v42))
        {
          break;
        }

        OUTLINED_FUNCTION_132();
        if (v34)
        {
          goto LABEL_71;
        }
      }
    }

    goto LABEL_70;
  }

LABEL_84:
  __break(1u);
}

char *sub_1E39FD070(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15[-v4 - 8];
  OUTLINED_FUNCTION_5_0(a1 + 16, v15);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = *&result[OBJC_IVAR____TtC8VideosUIP33_8FF32F3B2D88FB8F7A4A46F15974792F21LibImageLoadOperation_completionHandler];

    sub_1E41FE5D4();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
    v13 = OUTLINED_FUNCTION_27_28();
    v8(v13);

    return sub_1E325F748(v5, &unk_1ECF28E20, &unk_1E42986D0);
  }

  return result;
}

id sub_1E39FD210(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1E39FD2A8(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  v147 = a6;
  v146 = a5;
  v155 = a3;
  OUTLINED_FUNCTION_144_0();
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v152 = v12;
  v153 = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v149 = v14 - v13;
  OUTLINED_FUNCTION_138();
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v150 = v16;
  v151 = v15;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v148 = v18 - v17;
  OUTLINED_FUNCTION_138();
  v144 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v143 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v23 = (v22 - v21);
  v24 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_4_6();
  v30 = v28 - v29;
  *&v32 = MEMORY[0x1EEE9AC00](v31).n128_u64[0];
  v34 = &v136 - v33;
  v35 = 0.0;
  v36 = &selRef_setWaitingForTransactionToStart_;
  v142 = a4;
  v145 = v7;
  *&v156 = v37;
  if (!v7 || ([v7 size], sub_1E3AC6158(v38, v39), (v41 & 1) != 0) || (v35 = v40, v40 <= 1.7) || v40 >= 1.8)
  {
    sub_1E41A3110();
    v42 = OUTLINED_FUNCTION_101();
    v43(v42);

    v44 = v7;
    v45 = sub_1E41FFC94();
    v46 = sub_1E4206814();

    if (os_log_type_enabled(v45, v46))
    {
      OUTLINED_FUNCTION_100();
      v47 = OUTLINED_FUNCTION_47_21();
      v141 = v23;
      v48 = v47;
      v49 = OUTLINED_FUNCTION_100();
      aBlock = v49;
      v50 = OUTLINED_FUNCTION_49_21(4.8152e-34);
      OUTLINED_FUNCTION_45_23(v50);
      *v48 = v7;
      *(v8 + 11) = 2048;
      v8[3] = v35;
      v51 = v44;
      _os_log_impl(&dword_1E323F000, v45, v46, "    LibImageLoader:: handleImageLoadingCompletionInBackground: %s,\n    loaded image %@ with wrong ratio %f", v8, 0x20u);
      sub_1E325F748(v48, &unk_1ECF28E30, &qword_1E429E820);
      v23 = v141;
      OUTLINED_FUNCTION_6_0();
      __swift_destroy_boxed_opaque_existential_1(v49);
      v36 = &selRef_setWaitingForTransactionToStart_;
      OUTLINED_FUNCTION_6_0();
      v8 = v154;
      OUTLINED_FUNCTION_6_0();
    }

    (*(v26 + 8))(v30, v156);
  }

  else
  {
    v120 = sub_1E41A3110();
    (*(v26 + 16))(v34, v120, v24);

    v121 = v7;
    v122 = sub_1E41FFC94();
    v46 = sub_1E4206814();

    if (os_log_type_enabled(v122, v46))
    {
      OUTLINED_FUNCTION_49_0();
      v123 = OUTLINED_FUNCTION_47_21();
      v124 = OUTLINED_FUNCTION_100();
      v141 = v23;
      v125 = v124;
      aBlock = v124;
      v126 = OUTLINED_FUNCTION_49_21(4.8151e-34);
      OUTLINED_FUNCTION_45_23(v126);
      *v123 = v7;
      v127 = v121;
      _os_log_impl(&dword_1E323F000, v122, v46, "    LibImageLoader:: handleImageLoadingCompletionInBackground: %s,\n    loaded image %@ with expected ratio", v8, 0x16u);
      sub_1E325F748(v123, &unk_1ECF28E30, &qword_1E429E820);
      v36 = &selRef_setWaitingForTransactionToStart_;
      OUTLINED_FUNCTION_6_0();
      __swift_destroy_boxed_opaque_existential_1(v125);
      v23 = v141;
      OUTLINED_FUNCTION_6_0();
      v8 = v154;
      OUTLINED_FUNCTION_6_0();
    }

    (*(v26 + 8))(v34, v156);
  }

  if ([v8 isCancelled])
  {
    goto LABEL_22;
  }

  v52 = v145;
  if (!v145)
  {
    sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
    v128 = sub_1E4206A04();
    v129 = swift_allocObject();
    v130 = v147;
    *(v129 + 16) = v146;
    *(v129 + 24) = v130;
    OUTLINED_FUNCTION_4_95(v129);
    v158 = 1107296256;
    OUTLINED_FUNCTION_14_1();
    v159 = v131;
    v160 = &block_descriptor_17_1;
    v132 = _Block_copy(&aBlock);

    v133 = v148;
    sub_1E4203FE4();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1E37E7A8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
    sub_1E378AD28();
    OUTLINED_FUNCTION_16_59();
    sub_1E42072E4();
    MEMORY[0x1E6911380](0, v133, v46, v132);
    _Block_release(v132);

    v134 = OUTLINED_FUNCTION_43_22();
    v135(v134);
    (*(v150 + 8))(v133, v151);
LABEL_22:
    [v8 finishExecutionIfPossible];
    return;
  }

  v154 = v8;
  v53 = objc_opt_self();
  v54 = v52;
  v55 = [v53 current];
  [v55 displayScale];
  v57 = v56;

  v58 = v57 * a1;
  v60 = VUISignpostLogObject(v59);
  sub_1E41FFBC4();
  v61 = v142;

  v62 = sub_1E4206BA4();
  v63 = VUISignpostLogObject(v62);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870, &unk_1E429CE30);
  v65 = OUTLINED_FUNCTION_26_11(v64);
  v156 = xmmword_1E4297BE0;
  *(v65 + 16) = xmmword_1E4297BE0;
  *(v65 + 56) = MEMORY[0x1E69E6158];
  v68 = sub_1E3283528(v65, v66, v67);
  *(v65 + 64) = v68;
  v69 = v155;
  *(v65 + 32) = v155;
  *(v65 + 40) = v61;

  OUTLINED_FUNCTION_2_91();
  OUTLINED_FUNCTION_39_21(v62, &dword_1E323F000, v63, "LibImageLoader.resizeImage");

  [v54 v36[201]];
  [v54 v36[201]];
  VUICeilValue();
  v71 = v70;
  v72 = objc_opt_self();
  v73 = [v72 preferredFormat];
  v74 = [v54 CGImage];
  if (v74)
  {
    v75 = v74;
    v76 = [v72 formatWithCGImage_];

    if (v76)
    {

      v73 = v76;
    }
  }

  [v73 setScale_];
  v77 = swift_allocObject();
  *(v77 + 24) = 0;
  *(v77 + 32) = 0;
  *(v77 + 16) = v54;
  *(v77 + 40) = v58;
  *(v77 + 48) = v71;
  v78 = swift_allocObject();
  *(v78 + 16) = sub_1E39FFAD0;
  *(v78 + 24) = v77;
  v140 = v77;
  OUTLINED_FUNCTION_4_95(v78);
  v158 = 1107296256;
  v159 = sub_1E39FF6E8;
  v160 = &block_descriptor_26;
  v79 = _Block_copy(&aBlock);
  v145 = v54;

  v141 = v73;
  v80 = [v72 imageWithSize:v73 format:v79 actions:{v58, v71}];
  _Block_release(v79);
  v81 = sub_1E4206B94();
  v82 = VUISignpostLogObject(v81);
  v83 = OUTLINED_FUNCTION_24_34();
  OUTLINED_FUNCTION_37_25(v83);
  v84 = MEMORY[0x1E69E6158];
  *(v85 + 56) = MEMORY[0x1E69E6158];
  *(v85 + 64) = v68;
  OUTLINED_FUNCTION_52_18(v85);
  OUTLINED_FUNCTION_2_91();
  OUTLINED_FUNCTION_39_21(v81, &dword_1E323F000, v82, "LibImageLoader.resizeImage");

  v86 = v80;
  if (!v80)
  {
    v86 = v145;
  }

  v139 = v80;
  v87 = sub_1E4206BA4();
  v88 = VUISignpostLogObject(v87);
  v89 = OUTLINED_FUNCTION_24_34();
  OUTLINED_FUNCTION_37_25(v89);
  *(v90 + 56) = v84;
  *(v90 + 64) = v68;
  OUTLINED_FUNCTION_52_18(v90);
  OUTLINED_FUNCTION_2_91();
  OUTLINED_FUNCTION_39_21(v87, &dword_1E323F000, v88, "LibImageLoader.decodeImage");

  v91 = [v86 imageByPreparingForDisplay];
  v92 = v23;
  v93 = v68;
  v94 = v64;
  if (!v91)
  {
    v91 = v86;
  }

  v95 = v91;
  v137 = v91;
  v96 = sub_1E4206B94();
  v97 = VUISignpostLogObject(v96);
  v98 = OUTLINED_FUNCTION_26_11(v94);
  OUTLINED_FUNCTION_37_25(v98);
  *(v99 + 56) = MEMORY[0x1E69E6158];
  *(v99 + 64) = v93;
  OUTLINED_FUNCTION_52_18(v99);
  OUTLINED_FUNCTION_2_91();
  v138 = v86;
  sub_1E41FFB94();

  v100 = sub_1E4206BA4();
  v101 = VUISignpostLogObject(v100);
  v102 = OUTLINED_FUNCTION_26_11(v94);
  v103 = v92;
  OUTLINED_FUNCTION_37_25(v102);
  *(v104 + 56) = MEMORY[0x1E69E6158];
  *(v104 + 64) = v93;
  OUTLINED_FUNCTION_52_18(v104);
  OUTLINED_FUNCTION_2_91();
  OUTLINED_FUNCTION_36_27();
  sub_1E41FFB94();

  v105 = [v95 vuiCGImage];
  v106 = [objc_allocWithZone(MEMORY[0x1E69DF710]) initWithCGImageRef:v105 preserveAlpha:0];

  v107 = sub_1E4206B94();
  v108 = VUISignpostLogObject(v107);
  v109 = OUTLINED_FUNCTION_26_11(v94);
  OUTLINED_FUNCTION_37_25(v109);
  v110[7] = MEMORY[0x1E69E6158];
  v110[8] = v93;
  v110[4] = v69;
  v110[5] = v61;
  OUTLINED_FUNCTION_2_91();
  OUTLINED_FUNCTION_36_27();
  sub_1E41FFB94();

  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  v111 = sub_1E4206A04();
  v112 = swift_allocObject();
  v113 = v147;
  v112[2] = v146;
  v112[3] = v113;
  v112[4] = v106;
  OUTLINED_FUNCTION_4_95(v112);
  v158 = 1107296256;
  OUTLINED_FUNCTION_14_1();
  v159 = v114;
  v160 = &block_descriptor_32_1;
  v115 = _Block_copy(&aBlock);

  v116 = v106;

  v117 = v148;
  sub_1E4203FE4();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1E37E7A8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
  sub_1E378AD28();
  OUTLINED_FUNCTION_16_59();
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v117, "LibImageLoader.createVUIImage", v115);
  _Block_release(v115);

  v118 = OUTLINED_FUNCTION_43_22();
  v119(v118);
  (*(v150 + 8))(v117, v151);
  [v154 finishExecutionIfPossible];

  (*(v143 + 8))(v103, v144);
}

void sub_1E39FE044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_93();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v60 = v30;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v41 = v40;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_5_0(v36 + 16, &v62);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v44 = Strong;
    v58 = v38;
    v59 = v25;
    v45 = sub_1E4206B94();
    v46 = VUISignpostLogObject(v45);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870, &unk_1E429CE30);
    v48 = OUTLINED_FUNCTION_26_11(v47);
    *(v48 + 16) = xmmword_1E4297BE0;
    *(v48 + 56) = MEMORY[0x1E69E6158];
    *(v48 + 64) = sub_1E3283528(v48, v49, v50);
    *(v48 + 32) = v34;
    *(v48 + 40) = v32;

    OUTLINED_FUNCTION_2_91();
    sub_1E41FFB94();

    sub_1E324FBDC();
    v51 = OUTLINED_FUNCTION_101();
    v52(v51);

    v53 = sub_1E41FFC94();
    v54 = sub_1E4206814();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = OUTLINED_FUNCTION_6_21();
      v56 = OUTLINED_FUNCTION_100();
      v61 = v56;
      *v55 = 136315138;
      v57 = v60;
      *(v55 + 4) = sub_1E3270FC8(v60, v29, &v61);
      _os_log_impl(&dword_1E323F000, v53, v54, "LibImageLoader:: Load ArtworkCatalog image finished: %s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v56);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v41 + 8))(v23, v39);
    }

    else
    {

      (*(v41 + 8))(v23, v39);
      v57 = v60;
    }

    sub_1E39FD2A8(v27, v58, v57, v29, v59, a23);
  }

  OUTLINED_FUNCTION_54_0();
}

void sub_1E39FE2F0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_1E39FE37C()
{
  OUTLINED_FUNCTION_93();
  v77 = v3;
  v74 = v4;
  v68 = v5;
  OUTLINED_FUNCTION_5_16();
  v7 = v6;
  v72 = v8;
  OUTLINED_FUNCTION_144_0();
  v9 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v79 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v78 = v20 - v19;
  OUTLINED_FUNCTION_138();
  v71 = sub_1E4203FD4();
  OUTLINED_FUNCTION_0_10();
  v70 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v25 = v24 - v23;
  sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v75 = v27;
  v76 = v26;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  v81 = v29 - v28;
  OUTLINED_FUNCTION_138();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_5_0(v0 + 16, &v83);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v80 = Strong;
    v66 = v11;
    sub_1E324FBDC();
    v32 = OUTLINED_FUNCTION_101();
    v33(v32);

    v34 = sub_1E41FFC94();
    v35 = sub_1E4206814();

    v67 = v9;
    v65 = v16;
    v64 = v15;
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = OUTLINED_FUNCTION_100();
      v82[0] = v37;
      *v36 = 136315394;
      v38 = v72;
      *(v36 + 4) = sub_1E3270FC8(v72, v7, v82);
      *(v36 + 12) = 1024;
      *(v36 + 14) = [objc_opt_self() isMainThread];
      _os_log_impl(&dword_1E323F000, v34, v35, "LibImageLoader:: Load InfoManagedObject image: %s, isMain: %{BOOL}d", v36, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v37);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      v39 = OUTLINED_FUNCTION_16_0();
      v41 = v40(v39);
    }

    else
    {

      v42 = OUTLINED_FUNCTION_16_0();
      v41 = v43(v42);
      v38 = v72;
    }

    v44 = VUISignpostLogObject(v41);
    sub_1E41FFBC4();

    v45 = sub_1E4206BA4();
    v46 = VUISignpostLogObject(v45);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870, &unk_1E429CE30);
    v48 = OUTLINED_FUNCTION_26_11(v47);
    *(v48 + 16) = xmmword_1E4297BE0;
    *(v48 + 56) = MEMORY[0x1E69E6158];
    v51 = sub_1E3283528(v48, v49, v50);
    *(v48 + 64) = v51;
    *(v48 + 32) = v38;
    *(v48 + 40) = v7;

    OUTLINED_FUNCTION_2_91();
    sub_1E41FFB94();

    v52 = [v68 imageData];
    v53 = v52;
    if (v52)
    {
      v73 = sub_1E39FFD54(v52);
      v55 = v54;
    }

    else
    {
      v73 = 0;
      v55 = 0xF000000000000000;
    }

    v56 = sub_1E4206B94();
    v57 = VUISignpostLogObject(v56);
    v58 = OUTLINED_FUNCTION_24_34();
    *(v58 + 16) = xmmword_1E4297BE0;
    *(v58 + 56) = MEMORY[0x1E69E6158];
    *(v58 + 64) = v51;
    *(v58 + 32) = v38;
    *(v58 + 40) = v7;
    OUTLINED_FUNCTION_2_91();
    sub_1E41FFB94();

    sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
    (*(v70 + 104))(v25, *MEMORY[0x1E69E7FA0], v71);
    v69 = sub_1E4206A54();
    (*(v70 + 8))(v25, v71);
    OUTLINED_FUNCTION_4_0();
    v59 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v60 = swift_allocObject();
    v60[2] = v59;
    v60[3] = v73;
    v60[4] = v55;
    v60[5] = v38;
    v60[6] = v7;
    v60[7] = v2;
    v60[8] = v1;
    v60[9] = v74;
    v60[10] = v77;
    v60[11] = v53;
    v82[4] = sub_1E39FFB7C;
    v82[5] = v60;
    v82[0] = MEMORY[0x1E69E9820];
    v82[1] = 1107296256;
    OUTLINED_FUNCTION_0_48();
    v82[2] = v61;
    v82[3] = &block_descriptor_46_0;
    v62 = _Block_copy(v82);

    v63 = v53;

    sub_1E39C8E64(v73, v55);

    sub_1E4203FE4();
    sub_1E37E7A8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
    sub_1E378AD28();
    sub_1E42072E4();
    MEMORY[0x1E6911380](0, v78, v64, v62);
    _Block_release(v62);

    sub_1E38DCE1C(v73, v55);
    (*(v66 + 8))(v64, v67);
    (*(v79 + 8))(v78, v65);
    (*(v75 + 8))(v81, v76);
  }

  OUTLINED_FUNCTION_54_0();
}

id sub_1E39FEB38(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1E41FE454();
  v6 = [v4 initWithData_];

  sub_1E38DCCB0(a1, a2);
  return v6;
}

void sub_1E39FEBB0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v44 = v17 - v16;
  OUTLINED_FUNCTION_138();
  v18 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v43 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_28_4();
  v21 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_5_0(a1 + 16, v46);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v36 = Strong;
    v37 = v18;
    v38 = v14;
    sub_1E41A3110();
    v26 = OUTLINED_FUNCTION_101();
    v27(v26);

    v28 = sub_1E41FFC94();
    v29 = sub_1E4206814();

    if (os_log_type_enabled(v28, v29))
    {
      v35 = v12;
      v30 = OUTLINED_FUNCTION_49_0();
      aBlock[0] = swift_slowAlloc();
      *v30 = 136315394;
      *(v30 + 4) = sub_1E3270FC8(a2, a3, aBlock);
      *(v30 + 12) = 2080;
      *(v30 + 14) = sub_1E3270FC8(a4, a5, aBlock);
      _os_log_impl(&dword_1E323F000, v28, v29, "LibImageLoader:: Load profile image finished with no result for %s, %s", v30, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      v12 = v35;
      OUTLINED_FUNCTION_6_0();
    }

    (*(v23 + 8))(v7, v21);
    sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
    v31 = sub_1E4206A04();
    v32 = swift_allocObject();
    *(v32 + 16) = a6;
    *(v32 + 24) = a7;
    OUTLINED_FUNCTION_8_64(v32);
    aBlock[1] = 1107296256;
    OUTLINED_FUNCTION_14_1();
    aBlock[2] = v33;
    aBlock[3] = &block_descriptor_75;
    v34 = _Block_copy(aBlock);

    sub_1E4203FE4();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1E37E7A8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
    sub_1E378AD28();
    sub_1E42072E4();
    MEMORY[0x1E6911380](0, v8, v44, v34);
    _Block_release(v34);

    (*(v38 + 8))(v44, v12);
    (*(v43 + 8))(v8, v37);
    [v36 finishExecutionIfPossible];
  }
}

uint64_t sub_1E39FEFD0(void (*a1)(uint64_t))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_28_4();
  sub_1E41FE5D4();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = OUTLINED_FUNCTION_27_28();
  a1(v9);
  return sub_1E325F748(v1, &unk_1ECF28E20, &unk_1E42986D0);
}

void sub_1E39FF08C(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_144_0();
  v17 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v52 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v50 = v21 - v20;
  OUTLINED_FUNCTION_138();
  v51 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v49 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  v48 = v25 - v24;
  OUTLINED_FUNCTION_138();
  v26 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_5_0(a3 + 16, v54);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v31 = Strong;
    if (a2 >> 60 == 15)
    {
      a4();
    }

    else
    {
      v44 = v17;
      sub_1E38DCD14(v12, a2);
      sub_1E41A3110();
      v32 = OUTLINED_FUNCTION_101();
      v33(v32);

      v34 = sub_1E41FFC94();
      v35 = sub_1E4206814();

      v45 = v12;
      if (os_log_type_enabled(v34, v35))
      {
        v36 = OUTLINED_FUNCTION_49_0();
        aBlock[0] = swift_slowAlloc();
        *v36 = 136315394;
        *(v36 + 4) = sub_1E3270FC8(a6, a7, aBlock);
        *(v36 + 12) = 2080;
        *(v36 + 14) = sub_1E3270FC8(a8, a9, aBlock);
        _os_log_impl(&dword_1E323F000, v34, v35, "LibImageLoader:: Load profile image finished for %s, %s", v36, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        v12 = v45;
        OUTLINED_FUNCTION_6_0();
      }

      (*(v28 + 8))(v11, v26);
      v37 = objc_allocWithZone(MEMORY[0x1E69DF710]);
      sub_1E38DCD14(v12, a2);
      v38 = sub_1E39FF8D8(v12, a2);
      sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
      v39 = sub_1E4206A04();
      v40 = swift_allocObject();
      v40[2] = a10;
      v40[3] = a11;
      v40[4] = v38;
      OUTLINED_FUNCTION_8_64(v40);
      aBlock[1] = 1107296256;
      OUTLINED_FUNCTION_14_1();
      aBlock[2] = v41;
      aBlock[3] = &block_descriptor_69;
      v42 = _Block_copy(aBlock);
      v43 = v38;

      sub_1E4203FE4();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1E37E7A8C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
      sub_1E378AD28();
      sub_1E42072E4();
      MEMORY[0x1E6911380](0, v48, v50, v42);
      _Block_release(v42);

      (*(v52 + 8))(v50, v44);
      (*(v49 + 8))(v48, v51);
      [v31 finishExecutionIfPossible];

      sub_1E38DCE1C(v45, a2);
    }
  }
}

double sub_1E39FF540(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_1E41FE464();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a4;
  v7(v6, v10, a3, a4);

  sub_1E38DCE1C(v6, v10);

  return result;
}

uint64_t sub_1E39FF5FC(void (*a1)(uint64_t))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_28_4();
  sub_1E41FE5D4();
  OUTLINED_FUNCTION_32_2();
  v9 = __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  sub_1E39FFB10(v9, v10, v11);
  v12 = swift_allocError();
  *v13 = 5;
  v14 = OUTLINED_FUNCTION_27_28();
  a1(v14);

  return sub_1E325F748(v1, &unk_1ECF28E20, &unk_1E42986D0);
}

void sub_1E39FF6E8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_1E39FF734(void (*a1)(uint64_t, void, void, char *, void, void), uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  sub_1E41FE5D4();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  a1(a3, 0, 0, v8, 0, 0);
  return sub_1E325F748(v8, &unk_1ECF28E20, &unk_1E42986D0);
}

uint64_t sub_1E39FF804()
{
  OUTLINED_FUNCTION_5_16();
  sub_1E42074B4();

  strcpy(v3, "identifier: ");
  v0 = OUTLINED_FUNCTION_13_8();
  MEMORY[0x1E69109E0](v0);
  MEMORY[0x1E69109E0](0x203A657A6973202CLL, 0xE800000000000000);
  v1 = sub_1E4206E54();
  MEMORY[0x1E69109E0](v1);

  return v3[0];
}

id sub_1E39FF8D8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_1E41FE454();
    sub_1E38DCE1C(a1, a2);
  }

  v6 = [v2 initWithData_];

  return v6;
}

uint64_t sub_1E39FF9A8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1E39FFB10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE287ED8[0];
  if (!qword_1EE287ED8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE287ED8);
  }

  return result;
}

void sub_1E39FFB7C()
{
  v1 = v0[4];
  v2 = v0[11];
  OUTLINED_FUNCTION_5_0(v0[2] + 16, v28);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (v1 >> 60 == 15)
    {
      OUTLINED_FUNCTION_29_35(0, v4);
LABEL_10:

      return;
    }

    sub_1E3280A90(0, &qword_1EE23AE00, 0x1E69DCAB8);
    v6 = OUTLINED_FUNCTION_74();
    sub_1E38DCD14(v6, v7);
    v8 = OUTLINED_FUNCTION_74();
    sub_1E38DCD14(v8, v9);
    v10 = OUTLINED_FUNCTION_74();
    v12 = sub_1E39FEB38(v10, v11);
    OUTLINED_FUNCTION_29_35(v12, v13);
    if (v2)
    {
      v14 = v2;
      v15 = [v14 managedObjectContext];
      if (v15)
      {
        v16 = v15;
        OUTLINED_FUNCTION_4_0();
        v17 = swift_allocObject();
        *(v17 + 16) = v14;
        aBlock[4] = sub_1E39FFDC4;
        aBlock[5] = v17;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        OUTLINED_FUNCTION_0_48();
        aBlock[2] = v18;
        aBlock[3] = &block_descriptor_52_0;
        v19 = _Block_copy(aBlock);
        v20 = v14;

        [v16 performBlock_];
        v21 = OUTLINED_FUNCTION_74();
        sub_1E38DCE1C(v21, v22);

        _Block_release(v19);
        v5 = v16;
        goto LABEL_10;
      }

      v25 = OUTLINED_FUNCTION_74();
      sub_1E38DCE1C(v25, v26);
    }

    else
    {
      v23 = OUTLINED_FUNCTION_74();
      sub_1E38DCE1C(v23, v24);
    }

    v5 = v12;
    goto LABEL_10;
  }
}

uint64_t sub_1E39FFD54(void *a1)
{
  v2 = [a1 data];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E41FE464();

  return v3;
}

void sub_1E39FFDC4()
{
  v1 = *(v0 + 16);
  v2 = [v1 managedObjectContext];
  if (v2)
  {
    v3 = v2;
    [v2 refreshObject:v1 mergeChanges:0];
  }
}

uint64_t objectdestroy_28Tm()
{

  return swift_deallocObject();
}

void sub_1E39FFF54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v45 - v14;
  v16 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x218))(v13);
  sub_1E42000B4();

  v18 = v49;
  v17 = v50;
  v19 = v51;
  if (v50)
  {
    v48 = v50;
    v20 = v51;
    v21 = *(v51 + 16);
    v22 = *(v51 + 24);

    if (v22)
    {
      v47 = v20;

      v23 = sub_1E324FBDC();
      (*(v8 + 16))(v15, v23, v6);

      v24 = sub_1E41FFC94();
      v25 = sub_1E42067E4();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v45 = a3;
        v27 = v26;
        v28 = swift_slowAlloc();
        v46 = v18;
        v29 = v28;
        v49 = v28;
        *v27 = 136315138;
        *(v27 + 4) = sub_1E3270FC8(v21, v22, &v49);
        _os_log_impl(&dword_1E323F000, v24, v25, "StackViewController:: dragging item with identifier %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v29);
        v18 = v46;
        OUTLINED_FUNCTION_6_0();
        a3 = v45;
        OUTLINED_FUNCTION_6_0();
      }

      (*(v8 + 8))(v15, v6);
      v30 = sub_1E4205ED4();

      v31 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) initWithObject_];

      v32 = [objc_allocWithZone(MEMORY[0x1E69DC990]) initWithItemProvider_];
      (*((*MEMORY[0x1E69E7D40] & *v4) + 0x488))(&v49, a3);
      v33 = v52;
      if (v52)
      {
        v34 = __swift_project_boxed_opaque_existential_1(&v49, v52);
        v35 = *(v33 - 8);
        MEMORY[0x1EEE9AC00](v34);
        OUTLINED_FUNCTION_5();
        v38 = v37 - v36;
        (*(v35 + 16))(v37 - v36);
        v39 = sub_1E4207994();
        (*(v35 + 8))(v38, v33);
        __swift_destroy_boxed_opaque_existential_1(&v49);
      }

      else
      {
        v39 = 0;
      }

      v19 = v47;
      v17 = v48;
      [v32 setLocalObject_];
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_1E4298880;
      *(v44 + 32) = v32;

      goto LABEL_13;
    }

    v17 = v48;
    v19 = v20;
  }

  v40 = sub_1E324FBDC();
  (*(v8 + 16))(v11, v40, v6);
  v41 = sub_1E41FFC94();
  v42 = sub_1E42067F4();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_1E323F000, v41, v42, "StackViewController:: missing view model for drag and drop", v43, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  (*(v8 + 8))(v11, v6);
LABEL_13:
  sub_1E3790548(v18, v17, v19);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3A005B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296B0, &unk_1E429BA90);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_6_76();
  v2 = (*((*MEMORY[0x1E69E7D40] & v1) + 0x218))();
  sub_1E4200104();

  v3 = sub_1E4200044();
  if (!*(v3 + 16))
  {

    goto LABEL_7;
  }

  v4 = *(v3 + 48);

  if (!v4)
  {
LABEL_7:
    v9 = OUTLINED_FUNCTION_13_8();
    v10(v9);
    v12 = 0u;
    v13 = 0u;
    goto LABEL_8;
  }

  v11 = 7;
  v5 = *(*v4 + 776);

  v5(&v12, &v11, &unk_1F5D5D888, &off_1F5D5C918);

  v6 = OUTLINED_FUNCTION_13_8();
  v7(v6);
  if (!*(&v13 + 1))
  {
LABEL_8:
    sub_1E325F748(&v12, &unk_1ECF296E0, &unk_1E4298030);
    return 0;
  }

  result = swift_dynamicCast();
  if (result)
  {
    return v11;
  }

  return result;
}

void sub_1E3A00824(uint64_t a1, uint64_t a2)
{
  if ((sub_1E39DFFC8() & 1) == 0)
  {

    sub_1E3A00870(a2);
  }
}

void sub_1E3A00870(uint64_t a1)
{
  v3 = v1;
  v5 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6_76();
  v16 = MEMORY[0x1E69E7D40];
  v18 = (*((*MEMORY[0x1E69E7D40] & v17) + 0x218))();
  sub_1E42000B4();

  if (v43[1])
  {

    v20 = (*((*v16 & *v3) + 0x1B8))(v19);
    v21 = (*((*v16 & *v3) + 0x490))(v20, a1, v43[2]);

    if (v21)
    {
      sub_1E3280A90(0, &qword_1EE23B120, 0x1E69DC7F8);
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309C8, &unk_1E42B26C0);
      if (swift_dynamicCast())
      {
        if (*(&v41 + 1))
        {
          sub_1E3251BE8(&v40, v43);
          v23 = [objc_allocWithZone(MEMORY[0x1E69DC9A0]) init];
          v24 = v44;
          v25 = v45;
          __swift_project_boxed_opaque_existential_1(v43, v44);
          v26 = *(v25 + 8);
          v27 = v23;
          v28 = v26(v24, v25);
          [v27 setVisiblePath_];

          __swift_destroy_boxed_opaque_existential_1(v43);
          goto LABEL_14;
        }
      }

      else
      {
        v42 = 0;
        v40 = 0u;
        v41 = 0u;
      }
    }

    else
    {

      v42 = 0;
      v40 = 0u;
      v41 = 0u;
    }

    sub_1E325F748(&v40, &qword_1ECF309B8, &qword_1E42B26B8);
    goto LABEL_14;
  }

  v29 = sub_1E324FBDC();
  (*(v14 + 16))(v2, v29, v12);
  (*(v7 + 16))(v11, a1, v5);
  v30 = sub_1E41FFC94();
  v31 = sub_1E42067F4();
  if (os_log_type_enabled(v30, v31))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v43[0] = v39;
    *v38 = 136315138;
    sub_1E3A01C9C();
    v32 = sub_1E4207944();
    v34 = v33;
    (*(v7 + 8))(v11, v5);
    v35 = sub_1E3270FC8(v32, v34, v43);

    *(v38 + 4) = v35;
    _os_log_impl(&dword_1E323F000, v30, v31, "StackViewController:: failed to make drag preview for invalid index path %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  else
  {

    (*(v7 + 8))(v11, v5);
  }

  v36 = OUTLINED_FUNCTION_13_8();
  v37(v36);
LABEL_14:
  OUTLINED_FUNCTION_25_2();
}

id sub_1E3A00D64(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v9 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8_65();
  v13 = a3;
  v14 = a1;
  v15 = a5();

  (*(v11 + 8))(v5, v9);

  return v15;
}

void sub_1E3A00E60(void *a1, void *a2)
{
  v89 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296B0, &unk_1E429BA90);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v90 = v77 - v7;
  v8 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v77 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v92 = v77 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v77 - v20;
  *&v23 = MEMORY[0x1EEE9AC00](v22).n128_u64[0];
  v25 = v77 - v24;
  v93 = a2;
  v26 = [a2 items];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF308D8, &unk_1E42B2698);
  v27 = sub_1E42062B4();

  if (!sub_1E32AE9B0(v27))
  {
    OUTLINED_FUNCTION_25_2();

    return;
  }

  if ((v27 & 0xC000000000000001) != 0)
  {
    v28 = MEMORY[0x1E6911E60](0, v27);
  }

  else
  {
    if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_47;
    }

    v28 = *(v27 + 32);
    swift_unknownObjectRetain();
  }

  v29 = [v28 sourceIndexPath];
  if (!v29)
  {
    OUTLINED_FUNCTION_25_2();

    swift_unknownObjectRelease();
    return;
  }

  v30 = v29;
  v84 = v5;
  v31 = v3;
  sub_1E41FE804();

  v32 = *(v10 + 32);
  v32(v25, v21, v8);
  v33 = [v93 destinationIndexPath];
  if (!v33)
  {
    (*(v10 + 8))(v25, v8);
    swift_unknownObjectRelease();
    goto LABEL_44;
  }

  v34 = v33;
  v83 = v28;
  v85 = v10;
  sub_1E41FE804();

  v35 = v92;
  v26 = v8;
  v36 = (v32)(v92, v16, v8);
  v3 = v91;
  v37 = MEMORY[0x1E69E7D40];
  v38 = *MEMORY[0x1E69E7D40] & *v91;
  v86 = *(v38 + 0x218);
  v87 = v38 + 536;
  v39 = (v86)(v36);
  sub_1E41FE854();
  sub_1E42000C4();

  v40 = v95;
  v80 = v31;
  if (!v95)
  {
LABEL_23:
    v88 = 0;
    v82 = 0;
    v27 = v85;
    goto LABEL_27;
  }

  type metadata accessor for CollectionViewModel();
  v41 = swift_dynamicCastClass();
  if (!v41)
  {

    goto LABEL_23;
  }

  v42 = v41;
  v43 = *(*v41 + 1040);

  v16 = v43(v44);

  v82 = v42;
  if (!v16)
  {
    v88 = 0;
    v27 = v85;
    v35 = v92;
LABEL_26:
    v37 = MEMORY[0x1E69E7D40];
    goto LABEL_27;
  }

  v45 = sub_1E32AE9B0(v16);
  v27 = v85;
  if (!v45)
  {

    v88 = 0;
    v35 = v92;
    goto LABEL_26;
  }

  if ((v16 & 0xC000000000000001) != 0)
  {
LABEL_47:
    v88 = MEMORY[0x1E6911E60](0, v16);
    goto LABEL_14;
  }

  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v88 = *(v16 + 32);

LABEL_14:
    v35 = v92;
    v37 = MEMORY[0x1E69E7D40];

LABEL_27:
    v48 = (v86)(v40);
    sub_1E42000B4();

    if (v95)
    {
      v81 = v96;

      if (v88)
      {

        v49 = sub_1E41FE844();
        v50 = sub_1E41FE844();
        (*(*v88 + 1040))(v49, v50);
      }

      v51 = (*((*v37 & *v3) + 0x490))(v89, v25, v81);
      (*(v27 + 16))(v13, v35, v26);
      v79 = v26;
      v89 = v51;
      if (!v51 || (sub_1E3A01C2C(v51), !v52))
      {
      }

      v53 = objc_allocWithZone(MEMORY[0x1E69DC830]);
      v54 = sub_1E3A01B70(v13);
      v98 = sub_1E3A01878;
      v99 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v95 = 1107296256;
      v96 = sub_1E3A01924;
      v97 = &block_descriptor_41;
      v55 = _Block_copy(&aBlock);
      [v54 setPreviewParametersProvider_];
      _Block_release(v55);
      v56 = v86;
      v57 = v86();
      v58 = v90;
      sub_1E4200104();

      v59 = v56();
      sub_1E42000B4();

      if (v95)
      {
        v78 = v54;
        v60 = aBlock;
        v61 = v96;
        v62 = v56();
        sub_1E42000B4();

        v63 = v95;
        if (v95)
        {
          v64 = v96;
          v65 = sub_1E41FE844();
          v66 = sub_1E41FE844();
          v77[1] = v64;
          if (v65 >= v66)
          {
            OUTLINED_FUNCTION_2_92();
            sub_1E4200064();
          }

          else
          {
            OUTLINED_FUNCTION_2_92();
            sub_1E4200054();
          }

          v71 = [v83 dragItem];
          v72 = sub_1E41FE7E4();
          v73 = [v93 dropItem:v71 toItemAtIndexPath:v72];
          swift_unknownObjectRelease();

          v74 = v86();
          sub_1E42000D4();

          swift_unknownObjectRelease();

          (*(v84 + 8))(v61, v60);
        }

        else
        {

          swift_unknownObjectRelease();

          (*(v84 + 8))(v90, v80);
        }

        v75 = *(v85 + 8);
        v76 = OUTLINED_FUNCTION_7_94();
        v75(v76);
        (v75)(v25, v63);
        goto LABEL_44;
      }

      swift_unknownObjectRelease();

      (*(v84 + 8))(v58, v80);
      v67 = *(v27 + 8);
      v70 = OUTLINED_FUNCTION_7_94();
      v67(v70);
      v68 = v25;
      v69 = v54;
    }

    else
    {

      swift_unknownObjectRelease();

      v67 = *(v27 + 8);
      (v67)(v35, v26);
      v68 = v25;
      v69 = v26;
    }

    (v67)(v68, v69);
LABEL_44:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  __break(1u);
}

id sub_1E3A01878(void *a1)
{
  type metadata accessor for CardCollectionViewCell();
  if (!swift_dynamicCastClass())
  {
    return 0;
  }

  v2 = objc_allocWithZone(MEMORY[0x1E69DC9A0]);
  v3 = a1;
  v4 = [v2 init];
  v5 = sub_1E3EF43A4();
  [v4 setVisiblePath_];

  return v4;
}

id sub_1E3A01924(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

id sub_1E3A01A08()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC838]);

  return [v0 initWithDropOperation:3 intent:1];
}

id sub_1E3A01B70(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E41FE7E4();
  v5 = sub_1E4205ED4();

  v6 = [v2 initWithInsertionIndexPath:v4 reuseIdentifier:v5];

  v7 = sub_1E41FE874();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v6;
}

uint64_t sub_1E3A01C2C(void *a1)
{
  v2 = [a1 reuseIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E4205F14();

  return v3;
}

unint64_t sub_1E3A01C9C()
{
  result = qword_1ECF309B0;
  if (!qword_1ECF309B0)
  {
    sub_1E41FE874();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF309B0);
  }

  return result;
}

uint64_t type metadata accessor for TabBarView(uint64_t a1)
{
  result = qword_1ECF52850;
  if (!qword_1ECF52850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3A01D50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E3287754(0);
  v4 = type metadata accessor for TabBarView(0);
  v5 = (a2 + v4[6]);
  type metadata accessor for Router(0);
  OUTLINED_FUNCTION_0_110();
  sub_1E3A047C8(v6, v7);
  *v5 = sub_1E4201754();
  v5[1] = v8;
  v9 = (a2 + v4[5]);
  type metadata accessor for TabBarItemsInfo(0);
  OUTLINED_FUNCTION_1_117();
  sub_1E3A047C8(v10, v11);
  v12 = a1;
  OUTLINED_FUNCTION_90();
  *v9 = sub_1E42010C4();
  v9[1] = v13;

  OUTLINED_FUNCTION_2_4();
  result = swift_allocObject();
  *(result + 16) = 0x6956726142626154;
  *(result + 24) = 0xEA00000000007765;
  v15 = a2 + v4[7];
  *v15 = sub_1E3A01E80;
  *(v15 + 8) = result;
  *(v15 + 16) = 0;
  return result;
}

uint64_t sub_1E3A01E80()
{
  type metadata accessor for Route(0);

  j__OUTLINED_FUNCTION_18();
  v0 = OUTLINED_FUNCTION_32_0();
  return sub_1E3F4C85C(v0, v1, v2);
}

void sub_1E3A01ED0()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309D0, &qword_1E42B26E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_44();
  v158 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309D8, &qword_1E42B26E8);
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v179 = v7 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v178 = &v156 - v10;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309E0, &qword_1E42B26F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v180 = v12;
  v13 = type metadata accessor for TabBarView(0);
  OUTLINED_FUNCTION_0_10();
  v173 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v174 = v16;
  v175 = &v156 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309E8, &qword_1E42B26F8);
  OUTLINED_FUNCTION_0_10();
  v161 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  v20 = v19;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309F0, &qword_1E42B2700);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v156 - v22;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309F8, &qword_1E42B2708);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_44();
  v160 = v25;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30A00, &qword_1E42B2710);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_44();
  v165 = v27;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30A08, &qword_1E42B2718);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_44();
  v170 = v29;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30A10, &qword_1E42B2720);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_44();
  v167 = v31;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30A18, &qword_1E42B2728);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_44();
  v171 = v33;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30A20, &qword_1E42B2730);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_44();
  v172 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30A28, &qword_1E42B2738);
  v37 = OUTLINED_FUNCTION_17_2(v36);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_4_6();
  v176 = v38 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v183 = &v156 - v41;
  v184 = v0;
  v42 = *(v0 + *(v13 + 20) + 8);
  OUTLINED_FUNCTION_17_56();
  if (((*(v43 + 152))() & 1) != 0 || (OUTLINED_FUNCTION_17_56(), v45 = (*(v44 + 248))(), v46 = sub_1E32AE9B0(v45), , !v46))
  {
    sub_1E4203DA4();
    sub_1E42015C4();
    LOBYTE(v186) = 1;
    memcpy(&v185[7], v188, 0x70uLL);
    v99 = v180;
    *v180 = 0;
    *(v99 + 8) = 1;
    memcpy(v99 + 9, v185, 0x77uLL);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30A80, &qword_1E42B27A0);
    v91 = sub_1E3A04864();
    sub_1E3A04A14();
    OUTLINED_FUNCTION_18_5();
    sub_1E4201F44();
LABEL_6:
    OUTLINED_FUNCTION_17_56();
    v101 = *(v100 + 248);
    v102 = v101();
    if (sub_1E32AE9B0(v102))
    {
      if ((v102 & 0xC000000000000001) != 0)
      {
        v152 = OUTLINED_FUNCTION_21_17();
        MEMORY[0x1E6911E60](v152);

        OUTLINED_FUNCTION_33_34();
        swift_unknownObjectRelease();
      }

      else
      {
        if (!*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v103 = *(v102 + 32);

        OUTLINED_FUNCTION_33_34();
      }
    }

    else
    {

      v91 = 0;
      v102 = 0;
    }

    v104 = sub_1E4205F14();
    if (v102)
    {
      if (v91 == v104 && v102 == v105)
      {
      }

      else
      {
        v107 = sub_1E42079A4();

        v109 = 0;
        if ((v107 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      v110 = (v101)(v108);
      v111 = sub_1E32AE9B0(v110);

      v109 = v111 == 1;
    }

    else
    {

      v109 = 0;
    }

LABEL_21:
    v112 = (v101)(v108);
    if (!sub_1E32AE9B0(v112))
    {

      goto LABEL_29;
    }

    if ((v112 & 0xC000000000000001) != 0)
    {
      v153 = OUTLINED_FUNCTION_21_17();
      v113 = MEMORY[0x1E6911E60](v153);
      goto LABEL_25;
    }

    if (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v113 = *(v112 + 32);
LABEL_25:
      v114 = v113;

      if (v109)
      {
        v115 = v158;
        v116 = v184;
        sub_1E3A03804(v114);
        type metadata accessor for Router(0);

        OUTLINED_FUNCTION_75();
        sub_1E40C49A8();
        v118 = v117;

        OUTLINED_FUNCTION_0_110();
        sub_1E3A047C8(v119, v120);
        OUTLINED_FUNCTION_20_2();
        v121 = sub_1E4200504();
        v122 = (v115 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30A58, &qword_1E42B2780) + 36));
        *v122 = v121;
        v122[1] = v118;
        v123 = v177;
        (*((*MEMORY[0x1E69E7D40] & *v42) + 0xC8))();

        v124 = v175;
        sub_1E3A044F8(v116, v175);
        v125 = (*(v173 + 80) + 16) & ~*(v173 + 80);
        v126 = swift_allocObject();
        sub_1E3A0455C(v124, v126 + v125);
        v127 = (v115 + *(v123 + 56));
        *v127 = sub_1E3A05258;
        v127[1] = v126;
        v128 = v178;
        sub_1E3741EA0(v115, v178, &qword_1ECF309D0, &qword_1E42B26E0);
        v129 = 0;
LABEL_30:
        __swift_storeEnumTagSinglePayload(v128, v129, 1, v123);
        OUTLINED_FUNCTION_18_5();
        sub_1E3743538(v130, v131, v132, v133);
        v134 = v179;
        sub_1E3743538(v128, v179, &qword_1ECF309D8, &qword_1E42B26E8);
        OUTLINED_FUNCTION_18_5();
        sub_1E3743538(v135, v136, v137, v138);
        v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30AB0, &unk_1E42B27A8);
        sub_1E3743538(v134, v2 + *(v139 + 48), &qword_1ECF309D8, &qword_1E42B26E8);
        OUTLINED_FUNCTION_90();
        sub_1E325F6F0(v140, v141, v142);
        OUTLINED_FUNCTION_82();
        sub_1E325F6F0(v143, v144, v145);
        OUTLINED_FUNCTION_90();
        sub_1E325F6F0(v146, v147, v148);
        OUTLINED_FUNCTION_82();
        sub_1E325F6F0(v149, v150, v151);
        OUTLINED_FUNCTION_25_2();
        return;
      }

LABEL_29:
      v129 = 1;
      v123 = v177;
      v128 = v178;
      goto LABEL_30;
    }

    goto LABEL_34;
  }

  v157 = v2;
  type metadata accessor for TabBarItemsInfo(0);
  OUTLINED_FUNCTION_1_117();
  sub_1E3A047C8(v47, v48);
  v49 = sub_1E42010D4();
  swift_getKeyPath();
  sub_1E42010E4();

  v186 = v188[0];
  v187 = *&v188[1];
  MEMORY[0x1EEE9AC00](v50);
  v51 = v184;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30A30, &qword_1E42B2768);
  sub_1E3A04224();
  sub_1E4203BC4();
  v52 = *(v51 + *(v13 + 24));
  if (v52)
  {
    type metadata accessor for Route(0);
    sub_1E3A047C8(qword_1EE23C6B8, type metadata accessor for Route);
    v53 = v52;
    sub_1E4200BC4();
    v54 = type metadata accessor for NavigationBarObservableModel(0);
    sub_1E39EE6D8();
    v55 = OUTLINED_FUNCTION_75();
    sub_1E406C2A0(v55, v56, v57, v58);
    (*(v161 + 32))(v23, v20, v163);
    v59 = &v23[*(v159 + 36)];
    v60 = v188[1];
    *v59 = v188[0];
    *(v59 + 1) = v60;
    *(v59 + 2) = v188[2];
    v61 = v184;
    v62 = v175;
    sub_1E3A044F8(v184, v175);
    v63 = swift_allocObject();
    OUTLINED_FUNCTION_23_38(v63);
    v64 = v23;
    v65 = v160;
    sub_1E3741EA0(v64, v160, &qword_1ECF309F0, &qword_1E42B2700);
    v66 = (v65 + *(v162 + 36));
    *v66 = sub_1E3A045C0;
    v66[1] = v54;
    v66[2] = 0;
    v66[3] = 0;
    sub_1E3A044F8(v61, v62);
    v67 = swift_allocObject();
    OUTLINED_FUNCTION_23_38(v67);
    v68 = v165;
    sub_1E3741EA0(v65, v165, &qword_1ECF309F8, &qword_1E42B2708);
    v69 = (v68 + *(v164 + 36));
    *v69 = 0;
    v69[1] = 0;
    v69[2] = sub_1E3A046C4;
    v69[3] = v54;
    v70 = *(v42 + OBJC_IVAR____TtC8VideosUI15TabBarItemsInfo_appEnvironment);
    type metadata accessor for AppEnvironment(0);
    sub_1E3A047C8(&qword_1EE283350, type metadata accessor for AppEnvironment);

    v71 = sub_1E4200504();
    v72 = v170;
    v73 = sub_1E3741EA0(v68, v170, &qword_1ECF30A00, &qword_1E42B2710);
    v74 = v167;
    v75 = (v72 + *(v166 + 36));
    *v75 = v71;
    v75[1] = v70;
    v76 = v169;
    (*((*MEMORY[0x1E69E7D40] & *v42) + 0xC8))(v73);
    sub_1E3A044F8(v184, v62);
    v77 = swift_allocObject();
    OUTLINED_FUNCTION_23_38(v77);
    sub_1E3741EA0(v72, v74, &qword_1ECF30A08, &qword_1E42B2718);
    v78 = (v74 + *(v76 + 56));
    *v78 = sub_1E3A0480C;
    v78[1] = v42;
    v79 = sub_1E4203DA4();
    v81 = v80;
    v82 = v171;
    v83 = v171 + *(v168 + 36);
    sub_1E3A04810(v79, v80, v84);
    sub_1E4202ED4();
    v85 = (v83 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30A78, &qword_1E42B2798) + 36));
    *v85 = v79;
    v85[1] = v81;
    v86 = sub_1E3741EA0(v74, v82, &qword_1ECF30A10, &qword_1E42B2720);
    v87 = MEMORY[0x1E69E7D40];
    v88 = (*((*MEMORY[0x1E69E7D40] & *v42) + 0x128))(v86);
    (*((*v87 & *v42) + 0x140))(v88);
    OUTLINED_FUNCTION_90();
    sub_1E3A035B0();
    v89 = OUTLINED_FUNCTION_75();
    sub_1E34AF594(v89, v90);
    sub_1E325F6F0(v82, &qword_1ECF30A18, &qword_1E42B2728);
    v91 = &qword_1E42B2730;
    OUTLINED_FUNCTION_18_5();
    sub_1E3743538(v92, v93, v94, v95);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30A80, &qword_1E42B27A0);
    sub_1E3A04864();
    sub_1E3A04A14();
    sub_1E4201F44();
    OUTLINED_FUNCTION_82();
    sub_1E325F6F0(v96, v97, v98);
    v2 = v157;
    goto LABEL_6;
  }

LABEL_35:
  type metadata accessor for Router(0);
  OUTLINED_FUNCTION_0_110();
  sub_1E3A047C8(v154, v155);
  OUTLINED_FUNCTION_82();
  sub_1E4201744();
  __break(1u);
}

uint64_t sub_1E3A02EE0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xB0))();
  *a2 = result;
  return result;
}

uint64_t sub_1E3A02F94(uint64_t a1)
{
  v2 = type metadata accessor for TabBarView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2 - 8);
  v7 = (*((*MEMORY[0x1E69E7D40] & **(a1 + *(v6 + 28) + 8)) + 0xF8))(v5);
  sub_1E3A04ECC(v7);
  v9 = v8;

  v14[1] = v9;
  swift_getKeyPath();
  sub_1E3A044F8(a1, v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_1E3A0455C(v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  OUTLINED_FUNCTION_2_4();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1E3A05084;
  *(v12 + 24) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30AE8, &qword_1E42B2978);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30A48, &qword_1E42B2770);
  sub_1E328FCF4(&qword_1ECF30AF0, &qword_1ECF30AE8, &qword_1E42B2978);
  sub_1E3A042A8();
  return sub_1E4203B34();
}

void sub_1E3A031C0(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30A50, &qword_1E42B2778);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  sub_1E3A032F4();
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    (*(v7 + 32))(a3, v10, v5);
    v11 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30AB8, &qword_1E42B27B8) + 36);
    *v11 = a1;
    *(v11 + 8) = 1;
    v12 = sub_1E4202734();
    *(a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30A48, &qword_1E42B2770) + 36)) = v12;
  }
}

void sub_1E3A032F4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30A58, &qword_1E42B2780);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v13 - v4;
  sub_1E3A03804(v1);
  type metadata accessor for Router(0);
  sub_1E40C49A8();
  v7 = v6;
  OUTLINED_FUNCTION_0_110();
  sub_1E3A047C8(v8, v9);
  OUTLINED_FUNCTION_20_2();
  v10 = sub_1E4200504();
  v11 = &v5[*(v2 + 36)];
  *v11 = v10;
  v11[1] = v7;
  v13[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30A60, &qword_1E42B2788);
  sub_1E3A04428();
  OUTLINED_FUNCTION_6_1();
  sub_1E328FCF4(v12, &qword_1ECF30A60, &qword_1E42B2788);
  sub_1E42034F4();
  sub_1E325F6F0(v5, &qword_1ECF30A58, &qword_1E42B2780);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A03474(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = sub_1E40C4340();
  swift_beginAccess();
  v6 = *v5;
  if (!*v5)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_27_29();
  v8 = *(v7 + 176);
  v9 = v6;
  if (v8() == a1 && v10 == a2)
  {
  }

  else
  {
    v12 = sub_1E42079A4();

    if ((v12 & 1) == 0)
    {

LABEL_8:
      type metadata accessor for Router(0);
      sub_1E40C4C78();
      return;
    }
  }

  j__OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_27_29();
  (*(v13 + 496))(v14 & 1, 0, 0);
}

void sub_1E3A035B0()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30AD8, &qword_1E42B2940);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30AE0, &qword_1E42B2948);
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  if (v6)
  {
    OUTLINED_FUNCTION_2_4();
    v16 = swift_allocObject();
    *(v16 + 16) = v4;
    *(v16 + 24) = v2;
    sub_1E34AF604(v4, v2);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30A18, &qword_1E42B2728);
    v18 = sub_1E3A04930();
    sub_1E4203154();

    (*(v12 + 16))(v9, v15, v10);
    OUTLINED_FUNCTION_75();
    swift_storeEnumTagMultiPayload();
    v21 = v17;
    v22 = v18;
    OUTLINED_FUNCTION_8_66();
    OUTLINED_FUNCTION_74();
    sub_1E4201F44();
    (*(v12 + 8))(v15, v10);
  }

  else
  {
    sub_1E3743538(v0, v9, &qword_1ECF30A18, &qword_1E42B2728);
    OUTLINED_FUNCTION_75();
    swift_storeEnumTagMultiPayload();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30A18, &qword_1E42B2728);
    v20 = sub_1E3A04930();
    v21 = v19;
    v22 = v20;
    OUTLINED_FUNCTION_8_66();
    OUTLINED_FUNCTION_74();
    sub_1E4201F44();
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3A03804(uint64_t a1)
{
  sub_1E3280A90(0, &qword_1EE23B0D0, off_1E87282E8);

  v2 = sub_1E38A1F34();
  [v2 setUiConfiguration_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710, &qword_1E429AC10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  sub_1E4205F14();
  v4 = MEMORY[0x1E69E6158];
  sub_1E4207414();
  v5 = *(a1 + OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier);
  v6 = *(a1 + OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier + 8);
  *(inited + 96) = v4;
  *(inited + 72) = v5;
  *(inited + 80) = v6;

  sub_1E4205CB4();
  if (v5 == sub_1E4205F14() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_1E42079A4();

    if ((v9 & 1) == 0)
    {
      v10 = DocumentType.rawValue.getter(0);
      sub_1E3A04E34(v10, v11, v2);
      v12 = sub_1E4205ED4();
      [v2 setControllerRef_];

      v13 = sub_1E4205ED4();
      [v2 setTitle_];

      if (*(a1 + OBJC_IVAR____TtC8VideosUI13RemoteBarItem_contextData))
      {
        sub_1E3280A90(0, &qword_1EE23B078, off_1E87282B8);

        v15 = sub_1E37766C4(v14);
        [v2 setContextData_];
      }
    }
  }

  v16 = [v2 uiConfiguration];
  v17 = sub_1E4205ED4();
  [v16 setViewControllerIdentifier_];

  type metadata accessor for DocumentContext();
  OUTLINED_FUNCTION_27_29();
  v19 = *(v18 + 216);
  v20 = v2;
  v21 = v19();
  v22 = j__OUTLINED_FUNCTION_18();
  sub_1E3D98A84(v20, v21, v22 & 1);
  type metadata accessor for TabBarView(0);
  OUTLINED_FUNCTION_27_29();
  v24 = (*(v23 + 272))();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  j__OUTLINED_FUNCTION_18();
  j__OUTLINED_FUNCTION_18();
  v25 = OUTLINED_FUNCTION_75();
  sub_1E3D98BF4(v25, v26, 1, v27);
}

void sub_1E3A03BE4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30AF8, &qword_1E42B2980);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30B00, &qword_1E42B2988);
  v9 = OUTLINED_FUNCTION_17_2(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  v47 = v1;
  v16 = type metadata accessor for RemoteBarItem();
  v17 = sub_1E395DF10(v16, &off_1F5D824A8);
  if (v17)
  {
    v18 = v17;
    v45 = v3;
    v19 = v18;
    v46 = sub_1E42037B4();
    v20 = sub_1E4205F14();
    v44 = v4;
    v21 = *(v1 + OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier);
    v22 = *(v1 + OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier + 8);
    v47 = v20;
    v48 = v23;

    MEMORY[0x1E69109E0](v21, v22);

    sub_1E4202EA4();

    v4 = v44;
    v3 = v45;

    sub_1E3A051E8(v7, v15);
    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = __swift_storeEnumTagSinglePayload(v15, v24, 1, v4);
  v26 = *(v1 + OBJC_IVAR____TtC8VideosUI13RemoteBarItem_title + 8);
  v47 = *(v1 + OBJC_IVAR____TtC8VideosUI13RemoteBarItem_title);
  v48 = v26;
  sub_1E32822E0(v25, v27, v28);

  v29 = sub_1E4202C44();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = OUTLINED_FUNCTION_74();
  sub_1E3A05110(v36, v37);
  sub_1E3A05110(v12, v3);
  v38 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30B08, &qword_1E42B2990) + 48);
  *v38 = v29;
  *(v38 + 8) = v31;
  v33 &= 1u;
  *(v38 + 16) = v33;
  *(v38 + 24) = v35;
  v39 = OUTLINED_FUNCTION_32_0();
  sub_1E37E6F1C(v39, v40, v33);

  sub_1E3A05180(v15);
  v41 = OUTLINED_FUNCTION_32_0();
  sub_1E37434B8(v41, v42, v33);

  sub_1E3A05180(v12);
  OUTLINED_FUNCTION_25_2();
}

id sub_1E3A03E78()
{
  v0 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = VUISignpostLogObject(v6);
  sub_1E41FFBC4();
  v8 = sub_1E4206BA4();
  v9 = VUISignpostLogObject(v8);
  OUTLINED_FUNCTION_29_36(v8, &dword_1E323F000, v9);

  v10 = [objc_allocWithZone(MEMORY[0x1E69DD258]) init];
  v11 = [objc_opt_self() sharedInstance];
  [v11 setRootPresentingViewController_];

  v12 = sub_1E4206B94();
  v13 = VUISignpostLogObject(v12);
  OUTLINED_FUNCTION_29_36(v12, &dword_1E323F000, v13);

  (*(v2 + 8))(v5, v0);
  return v10;
}

uint64_t sub_1E3A0400C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E3A04DE0(a1, a2, a3);

  return sub_1E3E36CBC(a1, a2, v5);
}

uint64_t sub_1E3A04058()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3A04DE0(v1, v2, v3);
  v4 = OUTLINED_FUNCTION_74();

  return sub_1E3E36CD0(v4, v5, v0, v6);
}

uint64_t sub_1E3A04144()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3A04D8C(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEDDB778](v3);
}

uint64_t sub_1E3A0419C()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3A04D8C(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEDDB740](v3);
}

void sub_1E3A041F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E3A04D8C(a1, a2, a3);
  sub_1E42025D4();
  __break(1u);
}

unint64_t sub_1E3A04224()
{
  result = qword_1ECF30A38;
  if (!qword_1ECF30A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30A30, &qword_1E42B2768);
    sub_1E3A042A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30A38);
  }

  return result;
}

unint64_t sub_1E3A042A8()
{
  result = qword_1ECF30A40;
  if (!qword_1ECF30A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30A48, &qword_1E42B2770);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30A50, &qword_1E42B2778);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30A58, &qword_1E42B2780);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30A60, &qword_1E42B2788);
    sub_1E3A04428();
    sub_1E328FCF4(&qword_1ECF30A70, &qword_1ECF30A60, &qword_1E42B2788);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30A40);
  }

  return result;
}

unint64_t sub_1E3A04428()
{
  result = qword_1ECF30A68;
  if (!qword_1ECF30A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30A58, &qword_1E42B2780);
    swift_getOpaqueTypeConformance2();
    sub_1E328FCF4(&qword_1EE2887F0, &unk_1ECF2A7A8, &qword_1E42B2790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30A68);
  }

  return result;
}

uint64_t sub_1E3A044F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TabBarView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3A0455C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TabBarView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1E3A045C0()
{
  v0 = type metadata accessor for TabBarView(0);
  OUTLINED_FUNCTION_17_2(v0);
  OUTLINED_FUNCTION_15_63();
  if (v1)
  {
    v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1B8);
    v5 = v1;
    v2();
  }

  else
  {
    type metadata accessor for Router(0);
    OUTLINED_FUNCTION_0_110();
    sub_1E3A047C8(v3, v4);
    OUTLINED_FUNCTION_21_1();
    sub_1E4201744();
    __break(1u);
  }
}

void sub_1E3A046C4()
{
  v0 = type metadata accessor for TabBarView(0);
  OUTLINED_FUNCTION_17_2(v0);
  OUTLINED_FUNCTION_15_63();
  if (v1)
  {
    v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1C0);
    v5 = v1;
    v2();
  }

  else
  {
    type metadata accessor for Router(0);
    OUTLINED_FUNCTION_0_110();
    sub_1E3A047C8(v3, v4);
    OUTLINED_FUNCTION_21_1();
    sub_1E4201744();
    __break(1u);
  }
}

uint64_t sub_1E3A047C8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E3A04810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF527C8[0];
  if (!qword_1ECF527C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF527C8);
  }

  return result;
}

unint64_t sub_1E3A04864()
{
  result = qword_1ECF30A88;
  if (!qword_1ECF30A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30A20, &qword_1E42B2730);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30A18, &qword_1E42B2728);
    sub_1E3A04930();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30A88);
  }

  return result;
}

unint64_t sub_1E3A04930()
{
  result = qword_1ECF30A90;
  if (!qword_1ECF30A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30A18, &qword_1E42B2728);
    sub_1E328FCF4(&qword_1ECF30A98, &qword_1ECF30A10, &qword_1E42B2720);
    sub_1E328FCF4(&qword_1ECF30AA0, &qword_1ECF30A78, &qword_1E42B2798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30A90);
  }

  return result;
}

unint64_t sub_1E3A04A14()
{
  result = qword_1ECF30AA8;
  if (!qword_1ECF30AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30A80, &qword_1E42B27A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30AA8);
  }

  return result;
}

uint64_t sub_1E3A04A98()
{
  v2 = OUTLINED_FUNCTION_9_5();
  v3 = type metadata accessor for TabBarView(v2);
  v4 = *v0;
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = (*((*MEMORY[0x1E69E7D40] & **(v1 + *(v3 + 20) + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)) + 8)) + 0xF8))();
    sub_1E34AF4E4(v4, (v5 & 0xC000000000000001) == 0, v5);
    if ((v5 & 0xC000000000000001) == 0)
    {
      v6 = *(v5 + 8 * v4 + 32);
      goto LABEL_4;
    }
  }

  v12 = OUTLINED_FUNCTION_32_0();
  v6 = MEMORY[0x1E6911E60](v12);
LABEL_4:
  v7 = v6;

  v8 = *&v7[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier];
  v9 = *&v7[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier + 8];

  sub_1E3A03474(v8, v9, v10);
}

void sub_1E3A04C08(uint64_t a1)
{
  sub_1E41FFCB4();
  if (v1 <= 0x3F)
  {
    sub_1E3A04CBC(319);
    if (v2 <= 0x3F)
    {
      sub_1E389B5AC(319);
      if (v3 <= 0x3F)
      {
        sub_1E389B640(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E3A04CBC(uint64_t a1)
{
  if (!qword_1ECF30AC0)
  {
    type metadata accessor for TabBarItemsInfo(255);
    sub_1E3A047C8(&qword_1ECF2B720, type metadata accessor for TabBarItemsInfo);
    v1 = sub_1E42010F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECF30AC0);
    }
  }
}

unint64_t sub_1E3A04D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E3A04D8C(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E3A04D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF528E0[0];
  if (!qword_1ECF528E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF528E0);
  }

  return result;
}

unint64_t sub_1E3A04DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF529F0[0];
  if (!qword_1ECF529F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF529F0);
  }

  return result;
}

void sub_1E3A04E34(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1E4205ED4();

  [a3 setDocumentType_];
}

uint64_t sub_1E3A04E98()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(1);
  }

  return result;
}

void sub_1E3A04ECC(unint64_t a1)
{
  v1 = a1;
  v2 = sub_1E32AE9B0(a1);
  v3 = 0;
  v4 = 0;
  v5 = v1 & 0xC000000000000001;
  v6 = MEMORY[0x1E69E7CC0];
  v7 = (MEMORY[0x1E69E7CC0] + 32);
  v8 = v1 & 0xFFFFFFFFFFFFFF8;
  v26 = v1 & 0xFFFFFFFFFFFFFF8;
  v27 = v1;
  while (v2 != v3)
  {
    if (v5)
    {
      v9 = MEMORY[0x1E6911E60](v3, v1);
    }

    else
    {
      if (v3 >= *(v8 + 16))
      {
        goto LABEL_29;
      }

      v9 = *(v1 + 8 * v3 + 32);
    }

    v10 = v9;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (!v4)
    {
      v11 = v6[3];
      if (((v11 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_31;
      }

      v12 = v2;
      v13 = v5;
      v14 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if (v14 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v14;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30B10, &qword_1E42B2998);
      v16 = swift_allocObject();
      v17 = (_swift_stdlib_malloc_size(v16) - 32) / 16;
      v16[2] = v15;
      v16[3] = 2 * v17;
      v18 = (v16 + 4);
      v19 = v6[3];
      v20 = v19 >> 1;
      if (v6[2])
      {
        if (v16 != v6 || v18 >= &v6[2 * v20 + 4])
        {
          memmove(v16 + 4, v6 + 4, 16 * v20);
        }

        v6[2] = 0;
      }

      v7 = (v18 + 16 * v20);
      v4 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - (v19 >> 1);

      v6 = v16;
      v5 = v13;
      v2 = v12;
      v8 = v26;
      v1 = v27;
    }

    v22 = __OFSUB__(v4--, 1);
    if (v22)
    {
      goto LABEL_30;
    }

    *v7 = v3;
    v7[1] = v10;
    v7 += 2;
    ++v3;
  }

  v23 = v6[3];
  if (v23 < 2)
  {
    return;
  }

  v24 = v23 >> 1;
  v22 = __OFSUB__(v24, v4);
  v25 = v24 - v4;
  if (!v22)
  {
    v6[2] = v25;
    return;
  }

LABEL_32:
  __break(1u);
}

void sub_1E3A05084(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for TabBarView(0);
  OUTLINED_FUNCTION_17_2(v5);

  sub_1E3A031C0(a1, a3);
}

uint64_t sub_1E3A05110(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30B00, &qword_1E42B2988);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3A05180(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30B00, &qword_1E42B2988);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E3A051E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30AF8, &qword_1E42B2980);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3A0525C()
{
  v1 = sub_1E41FFBF4();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_1E4206434();
  v0[5] = sub_1E4206424();
  v3 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E3A0534C, v3, v2);
}

id sub_1E3A0534C(uint64_t a1)
{
  v3 = v1[3];
  v2 = v1[4];
  v4 = v1[2];
  v5 = sub_1E4206BA4();
  v6 = VUISignpostLogObject(v5);
  v7 = sub_1E41FFBE4();
  OUTLINED_FUNCTION_0_111(v7, &dword_1E323F000, v8, "Launch.LocalizationPrewarm.prewarm");

  v9 = *(v3 + 8);
  v9(v2, v4);
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v11 = result;
    v12 = v1[4];
    v13 = v1[2];

    sub_1E3741090(0x474E4944414F4CLL, 0xE700000000000000, v11);

    v14 = sub_1E4206B94();
    v15 = VUISignpostLogObject(v14);
    v16 = sub_1E41FFBE4();
    OUTLINED_FUNCTION_0_111(v16, &dword_1E323F000, v17, "Launch.LocalizationPrewarm.prewarm");

    v9(v12, v13);

    v18 = v1[1];

    return v18();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1E3A054E8()
{
  v0 = sub_1E4207784();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3A05534(char a1)
{
  result = 0x746C7561666564;
  switch(a1)
  {
    case 1:
      result = 0x7478654E7075;
      break;
    case 2:
      result = OUTLINED_FUNCTION_13_72();
      break;
    case 3:
      result = OUTLINED_FUNCTION_6_77();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E3A055C4(unsigned __int8 a1, char a2)
{
  v2 = 0x746C7561666564;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x746C7561666564;
  switch(v4)
  {
    case 1:
      v3 = 0xE600000000000000;
      v5 = 0x7478654E7075;
      break;
    case 2:
      v5 = 0x79616C5079656BLL;
      break;
    case 3:
      v3 = 0xE600000000000000;
      v5 = 0x736172747865;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE600000000000000;
      v2 = 0x7478654E7075;
      break;
    case 2:
      v2 = 0x79616C5079656BLL;
      break;
    case 3:
      v6 = 0xE600000000000000;
      v2 = 0x736172747865;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3A05700(uint64_t a1)
{
  v1 = a1;
  sub_1E4207B44();
  sub_1E3A05750(v3, v1);
  return sub_1E4207BA4();
}

uint64_t sub_1E3A05750(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E3A05804(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E3A05750(v4, a2);
  return sub_1E4207BA4();
}

unint64_t sub_1E3A05848@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3A054E8();
  *a1 = result;
  return result;
}

uint64_t sub_1E3A05878@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3A05534(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3A058A4()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 136);
  }

  else
  {
    type metadata accessor for ContextMenuButtonLayout();
    v1 = sub_1E3890F28();
    *(v0 + 136) = v1;
  }

  return v1;
}

uint64_t sub_1E3A05918()
{
  if (*(v0 + 144))
  {
    v1 = *(v0 + 144);
  }

  else
  {
    type metadata accessor for PlaybackStatusLayout();
    v1 = sub_1E3A70EBC(1);
    *(v0 + 144) = v1;
  }

  return v1;
}

double sub_1E3A059B0(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0(v1 + 160, v4);
  *(v1 + 160) = a1;

  return result;
}

uint64_t sub_1E3A059F0()
{
  if (*(v0 + 168))
  {
    v1 = *(v0 + 168);
  }

  else
  {
    type metadata accessor for ViewGradientLayout(0);
    v1 = sub_1E40C3088();
    *(v0 + 168) = v1;
  }

  return v1;
}

uint64_t sub_1E3A05A58()
{
  if (*(v0 + 176))
  {
    v1 = *(v0 + 176);
  }

  else
  {
    type metadata accessor for ViewLayout();
    v1 = sub_1E3C2F968();
    *(v0 + 176) = v1;
  }

  return v1;
}

void *sub_1E3A05ACC()
{
  if (*(v0 + 184))
  {
    v1 = *(v0 + 184);
  }

  else
  {
    type metadata accessor for SportsScoreboardLayout();
    v1 = sub_1E39DF330();
    *(v0 + 184) = v1;
  }

  return v1;
}

uint64_t sub_1E3A05B40()
{
  if (*(v0 + 192))
  {
    v1 = *(v0 + 192);
  }

  else
  {
    type metadata accessor for ViewGradientLayout(0);
    v1 = sub_1E40C3088();
    *(v0 + 192) = v1;
  }

  return v1;
}

double sub_1E3A05BB4()
{
  if ((*(v0 + 208) & 1) == 0)
  {
    return *(v0 + 200);
  }

  *(v0 + 200) = 0x4041000000000000;
  *(v0 + 208) = 0;
  return 34.0;
}

uint64_t sub_1E3A05C0C(double a1)
{
  result = OUTLINED_FUNCTION_3_0(v1 + 216, v4);
  *(v1 + 216) = a1;
  return result;
}

uint64_t sub_1E3A05C44()
{
  v2 = v0;
  OUTLINED_FUNCTION_8();
  if ((*(v3 + 2224))())
  {
    sub_1E3A074DC();
  }

  else
  {
    OUTLINED_FUNCTION_111();
    (*(v4 + 752))(0);
    OUTLINED_FUNCTION_9_2();
    (*(v5 + 872))(0);
    memset(v41, 0, sizeof(v41));
    v42 = 1;
    (*(*v0 + 560))(v41);
    v6 = sub_1E3C6DC70();
    v7 = v6[2];
    v39[0] = *v6;
    v39[1] = 0;
    v39[2] = v7;
    v39[3] = 0;
    v40 = 0;
    OUTLINED_FUNCTION_111();
    (*(v8 + 184))(v39);
    v9 = *sub_1E3C6DC7C();
    (*(*v0 + 1160))(v9, 0);
    OUTLINED_FUNCTION_9_2();
    v11 = *(v10 + 1888);
    v11();
    OUTLINED_FUNCTION_2_1();
    (*(v12 + 1656))();

    v14 = (v11)(v13);
    sub_1E3C6DC94(v14);

    OUTLINED_FUNCTION_9_2();
    (*(v15 + 2200))();
    v16 = OUTLINED_FUNCTION_32_38();
    v17 = 0xE700000000000000;
    switch(v18)
    {
      case 1:

        goto LABEL_9;
      case 2:
        v16 = OUTLINED_FUNCTION_13_72();
        goto LABEL_7;
      case 3:
        v16 = OUTLINED_FUNCTION_6_77();
        v17 = 0xE600000000000000;
        goto LABEL_7;
      default:
LABEL_7:
        OUTLINED_FUNCTION_40_5(v16, v17, 0x7478654E7075);
        v19 = OUTLINED_FUNCTION_28_3();
        if ((v1 & 1) == 0)
        {
          (v11)(v19);
          OUTLINED_FUNCTION_30();
          v20 = OUTLINED_FUNCTION_15_8();
          v21(v20);

          (v11)(v22);
          OUTLINED_FUNCTION_2_1();
          (*(v23 + 1696))(19);
        }

LABEL_9:
        OUTLINED_FUNCTION_111();
        v24 += 239;
        v25 = *v24;
        (*v24)();
        OUTLINED_FUNCTION_30();
        (*(v26 + 1656))();

        (v25)(v27);
        sub_1E3C6DE18();

        OUTLINED_FUNCTION_9_2();
        (*(v28 + 1864))();
        OUTLINED_FUNCTION_2_1();
        (*(v29 + 1656))();

        sub_1E3A09908();
        OUTLINED_FUNCTION_9_2();
        if ((*(v30 + 2032))())
        {
          sub_1E3C6E74C();
        }

        OUTLINED_FUNCTION_111();
        (*(v31 + 1936))();
        v32 = sub_1E418A524();
        sub_1E3C6DFCC(*v32);

        OUTLINED_FUNCTION_9_2();
        v34 = *(v33 + 1960);
        v34();
        OUTLINED_FUNCTION_2_1();
        (*(v35 + 1656))();

        v37 = (v34)(v36);
        sub_1E3C6E604(v37);

        break;
    }
  }

  result = OUTLINED_FUNCTION_3_0(v2 + 216, v41);
  *(v2 + 216) = 0x4000000000000000;
  return result;
}

uint64_t sub_1E3A06200(char a1)
{
  v3 = 0x746C7561666564;
  OUTLINED_FUNCTION_3_0(v1 + 272, &v11);
  v4 = *(v1 + 272);
  *(v1 + 272) = a1;
  swift_beginAccess();
  v5 = 0xE700000000000000;
  v6 = 0x746C7561666564;
  switch(*(v1 + 272))
  {
    case 1:
      v5 = 0xE600000000000000;
      v6 = 0x7478654E7075;
      break;
    case 2:
      v6 = OUTLINED_FUNCTION_13_72();
      break;
    case 3:
      v5 = 0xE600000000000000;
      v6 = OUTLINED_FUNCTION_6_77();
      break;
    default:
      break;
  }

  v7 = 0xE700000000000000;
  switch(v4)
  {
    case 1:
      v7 = 0xE600000000000000;
      v3 = 0x7478654E7075;
      break;
    case 2:
      v3 = 0x79616C5079656BLL;
      break;
    case 3:
      v7 = 0xE600000000000000;
      v3 = 0x736172747865;
      break;
    default:
      break;
  }

  if (v6 == v3 && v5 == v7)
  {
  }

  else
  {
    v9 = sub_1E42079A4();

    if ((v9 & 1) == 0)
    {
      return sub_1E3A05C44();
    }
  }

  return result;
}

void (*sub_1E3A06370(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  swift_beginAccess();
  *(v3 + 32) = *(v1 + 272);
  return sub_1E3A063E8;
}

void sub_1E3A063E8(uint64_t a1)
{
  v1 = *a1;
  sub_1E3A06200(*(*a1 + 32));

  free(v1);
}

double sub_1E3A06450(char a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_3_0(v2 + 273, &v14);
  v4 = *(v2 + 273);
  *(v2 + 273) = a1 & 1;
  swift_beginAccess();
  if (v4 != *(v2 + 273))
  {
    OUTLINED_FUNCTION_111();
    v6 += 242;
    v7 = *v6;
    (*v6)();
    OUTLINED_FUNCTION_30();
    v9 = (*(v8 + 432))();
    v11 = v10;

    v12 = sub_1E3A05C44();
    if ((v11 & 1) == 0)
    {
      (v7)(v12);
      OUTLINED_FUNCTION_30();
      (*(v13 + 440))(v9, 0);
    }
  }

  return result;
}

void sub_1E3A065B8()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  sub_1E41FFBF4();
  OUTLINED_FUNCTION_2_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_34_32();
  *(v1 + 208) = 1;
  *(v1 + 216) = 0;
  v8 = objc_opt_self();
  *(v1 + 224) = [v8 whiteColor];
  *(v1 + 232) = *sub_1E3E60B34();
  v9 = sub_1E3E60CFC();
  OUTLINED_FUNCTION_35_29(v9);
  *(v1 + 256) = [v8 whiteColor];
  *(v1 + 264) = 0x4000000000000000;
  *(v1 + 273) = 1;
  v10 = sub_1E4206BA4();
  v11 = VUISignpostLogObject(v10);
  sub_1E41FFBE4();
  OUTLINED_FUNCTION_50_17(v10, &dword_1E323F000, v11);

  v12 = *(v6 + 8);
  v12(v2, v0);
  *(v1 + 272) = v4;
  sub_1E3C2F9A0();

  sub_1E3A05C44();
  v13 = sub_1E4206B94();
  v14 = VUISignpostLogObject(v13);
  sub_1E41FFBE4();
  OUTLINED_FUNCTION_50_17(v13, &dword_1E323F000, v14);

  v12(v2, v0);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A0679C()
{
  OUTLINED_FUNCTION_34_32();
  *(v0 + 208) = 1;
  *(v0 + 216) = 0;
  v1 = objc_opt_self();
  *(v0 + 224) = [v1 whiteColor];
  *(v0 + 232) = *sub_1E3E60B34();
  v2 = sub_1E3E60CFC();
  OUTLINED_FUNCTION_35_29(v2);
  *(v0 + 256) = [v1 whiteColor];
  *(v0 + 264) = 0x4000000000000000;
  *(v0 + 273) = 1;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E3A06874(__objc2_class **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (sub_1E373F6E0(a2, 96, a3, a4, a5, a6))
  {
    if (*a1 == _TtC8VideosUI20PlaybackStatusLayout)
    {
      *(v6 + 144) = a1;
      swift_retain_n();

      sub_1E3A069B4();
    }
  }

  else if (sub_1E385050C())
  {
    type metadata accessor for TextBadgeLayout(0);
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      v9 = v8;
      OUTLINED_FUNCTION_3_0(v6 + 160, v11);
      *(v6 + 160) = v9;
      swift_retain_n();

      sub_1E3A06C60();
      v10 = *sub_1E3810A0C();

      sub_1E3C37EC8(v9, v10);
    }
  }
}

void sub_1E3A069B4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = 0x746C7561666564;
  OUTLINED_FUNCTION_8();
  (*(v2 + 1984))();
  v22 = xmmword_1E42B29E0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v20[0] = 0x4030000000000000;
  memset(&v20[1], 0, 24);
  v21 = 0;
  v18[0] = 0x4030000000000000;
  memset(&v18[1], 0, 24);
  v19 = 0;
  v3 = *(*v0 + 2200);
  v4 = 0xE700000000000000;
  v5 = v3();
  v6 = 0x746C7561666564;
  switch(v5)
  {
    case 1:
      v4 = 0xE600000000000000;
      v6 = 0x7478654E7075;
      goto LABEL_5;
    case 2:

      v8 = 0x4014000000000000;
      goto LABEL_7;
    case 3:
      v4 = 0xE600000000000000;
      v6 = OUTLINED_FUNCTION_6_77();
      goto LABEL_5;
    default:
LABEL_5:
      v9 = OUTLINED_FUNCTION_38_23(v6, v4, 0x79616C5079656BLL);

      v8 = 0x402C000000000000;
      if (v9)
      {
        v8 = 0x4014000000000000;
      }

LABEL_7:
      v16[0] = v8;
      memset(&v16[1], 0, 24);
      v17 = 0;
      (v3)(v7);
      OUTLINED_FUNCTION_25_43();
      switch(v10)
      {
        case 1:
          v0 = 0xE600000000000000;
          v1 = 0x7478654E7075;
          goto LABEL_11;
        case 2:

          goto LABEL_12;
        case 3:
          v0 = 0xE600000000000000;
          v1 = 0x736172747865;
          goto LABEL_11;
        default:
LABEL_11:
          OUTLINED_FUNCTION_38_23(v1, v0, 0x79616C5079656BLL);
          OUTLINED_FUNCTION_28_3();
LABEL_12:
          v13[0] = 0x4020000000000000;
          memset(&v13[1], 0, 25);
          v14[0] = 0x4014000000000000;
          type metadata accessor for UIEdgeInsets();
          memset(&v14[1], 0, 24);
          v15 = 0;
          sub_1E3C2FCB8(&v22, v20, v18, v16, v13, v14, v11, __src);
          memcpy(v13, __src, 0xE9uLL);
          OUTLINED_FUNCTION_18();
          OUTLINED_FUNCTION_9_2();
          OUTLINED_FUNCTION_42_31();
          v12();

          OUTLINED_FUNCTION_25_2();
          return;
      }
  }
}

double sub_1E3A06C60()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 2224))();
  OUTLINED_FUNCTION_8();
  v2 += 254;
  v3 = *v2;
  v4 = (*v2)();
  if (v1)
  {
    sub_1E3A0958C();
  }

  else
  {
    if (v4)
    {
      (*(*v4 + 1808))(1);
    }

    (v3)(v4);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30B28, &unk_1E42B2C80);
    sub_1E4148F70(sub_1E3A098D4, 0, v5, MEMORY[0x1E69E7CA8] + 8, &v7);
  }

  return result;
}

void sub_1E3A06DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_31_1();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  OUTLINED_FUNCTION_8();
  v19 = (*(v18 + 1536))();
  if (v20 >= 2)
  {
    v22 = v19;
    v23 = v20;
    v21 = [v20 preferredContentSizeCategory];
    sub_1E39DFB80(v22, v23);
    if (!v15)
    {
      if (v21)
      {
LABEL_15:
        v32 = 1;
        v25 = v21;
        goto LABEL_19;
      }

LABEL_16:
      v32 = 0;
      goto LABEL_20;
    }
  }

  else
  {
    if (!v15)
    {
      goto LABEL_16;
    }

    v21 = 0;
  }

  v24 = [v15 preferredContentSizeCategory];
  v25 = v24;
  if (v21)
  {
    if (v24)
    {
      v26 = sub_1E4205F14();
      v28 = v27;
      if (v26 == sub_1E4205F14() && v28 == v29)
      {

        v32 = 0;
      }

      else
      {
        v31 = sub_1E42079A4();

        v32 = v31 ^ 1;
      }

      goto LABEL_19;
    }

    goto LABEL_15;
  }

  if (!v24)
  {
    goto LABEL_16;
  }

  v32 = 1;
LABEL_19:

LABEL_20:
  sub_1E3C35CF4(v17, v15);
  v34 = sub_1E3A06FE4(v17, v13, v33);
  sub_1E3A06450(v34);
  OUTLINED_FUNCTION_9_2();
  (*(v35 + 2104))();
  sub_1E39DFB00(v17, v15, v13, v36);

  if (v32)
  {
    OUTLINED_FUNCTION_25_2();

    sub_1E3A07120();
  }

  else
  {
    OUTLINED_FUNCTION_25_2();
  }
}

BOOL sub_1E3A06FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 - 3 > 1)
  {
    if (a2 != 5)
    {
      v5 = a2;
      sub_1E3890B18(a1, a2, a3);
      if ((sub_1E4205E84() & 1) == 0)
      {
        if (HIBYTE(v5) != 2 && (sub_1E4205E84() & 1) != 0)
        {
          if ((v5 & 0x100) == 0)
          {
            v4 = [objc_opt_self() isPad];
            if (!v4)
            {
              return (v4 & 1) == 0;
            }

            goto LABEL_2;
          }

LABEL_12:
          LOBYTE(v4) = 1;
          return (v4 & 1) == 0;
        }

        if (sub_1E4205E84() & 1) != 0 && (sub_1E3A24FDC(a1))
        {
          goto LABEL_12;
        }
      }
    }

    LOBYTE(v4) = 0;
    return (v4 & 1) == 0;
  }

LABEL_2:
  LOBYTE(v4) = sub_1E3A24FDC(a1);
  return (v4 & 1) == 0;
}

double sub_1E3A07120()
{
  OUTLINED_FUNCTION_8();
  (*(v0 + 2200))();
  v1 = OUTLINED_FUNCTION_32_38();
  v2 = 0xE700000000000000;
  switch(v3)
  {
    case 1:

      goto LABEL_6;
    case 2:
      v1 = OUTLINED_FUNCTION_13_72();
      break;
    case 3:
      v1 = OUTLINED_FUNCTION_6_77();
      v2 = 0xE600000000000000;
      break;
    default:
      break;
  }

  v4 = OUTLINED_FUNCTION_40_5(v1, v2, 0x7478654E7075);

  if (v4)
  {
LABEL_6:
    OUTLINED_FUNCTION_8();
    (*(v5 + 2008))();
    v12[0] = sub_1E3A0A0B8(9.0);
    LOBYTE(v12[1]) = 0;
    v23 = sub_1E3A0A0B8(11.0);
    v24 = 0;
    v21 = 0x402E000000000000;
    v22 = 0;
    v19 = 0x4026000000000000;
    v20 = 0;
    v6 = 10.0;
  }

  else
  {
    OUTLINED_FUNCTION_8();
    (*(v7 + 2008))();
    v12[0] = sub_1E3A0A0B8(12.0);
    LOBYTE(v12[1]) = 0;
    v23 = sub_1E3A0A0B8(14.0);
    v24 = 0;
    v21 = 0x4032000000000000;
    v22 = 0;
    v19 = 0x402C000000000000;
    v20 = 0;
    v6 = 12.0;
  }

  v17 = sub_1E3A0A0B8(v6);
  v18 = 0;
  v8 = MEMORY[0x1E69E7DE0];
  sub_1E3C3DE00();
  v13 = v15;
  v14 = v16;
  sub_1E3C2FCB8(&v13, v12, &v23, &v21, &v19, &v17, v8, __src);
  memcpy(v12, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_9_2();
  (*(v9 + 1600))(v12, 6, v10 & 1, v8);

  return result;
}

void sub_1E3A07374()
{

  v1 = *(v0 + 256);
}

id *sub_1E3A0740C()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3A074AC()
{
  v0 = sub_1E3A0740C();

  return MEMORY[0x1EEE6BDC0](v0, 274, 7);
}

void sub_1E3A074DC()
{
  v2 = v0;
  *v329 = xmmword_1E42B29E0;
  v330 = 0;
  v331 = 0;
  LOBYTE(v332) = 0;
  *v326 = xmmword_1E4298700;
  v327 = xmmword_1E42B29F0;
  LOBYTE(v328) = 0;
  *v323 = xmmword_1E4298700;
  v324 = xmmword_1E42B29F0;
  LOBYTE(v325) = 0;
  __asm { FMOV            V0.2D, #14.0 }

  *v320 = _Q0;
  v321 = _Q0;
  LOBYTE(v322) = 0;
  v8 = *(*v0 + 2200);
  v8();
  OUTLINED_FUNCTION_25_43();
  v9 = 0x746C7561666564;
  switch(v10)
  {
    case 1:
      v0 = 0xE600000000000000;
      v9 = 0x7478654E7075;
      goto LABEL_5;
    case 2:

      goto LABEL_6;
    case 3:
      v0 = 0xE600000000000000;
      v9 = OUTLINED_FUNCTION_6_77();
      goto LABEL_5;
    default:
LABEL_5:
      OUTLINED_FUNCTION_38_23(v9, v0, 0x79616C5079656BLL);
      v11 = OUTLINED_FUNCTION_28_3();
      if (v1)
      {
LABEL_6:
        v12 = 0x4020000000000000;
      }

      else
      {
        v12 = 0x4024000000000000;
      }

      v316 = v12;
      v317 = xmmword_1E42B2A00;
      v318 = 0x4028000000000000;
      LOBYTE(v319) = 0;
      v13 = v2;
      (v8)(v11);
      OUTLINED_FUNCTION_25_43();
      v14 = 0x746C7561666564;
      switch(v15)
      {
        case 1:
          v13 = 0xE600000000000000;
          v14 = 0x7478654E7075;
          goto LABEL_12;
        case 2:

          v17 = 0x4014000000000000;
          goto LABEL_15;
        case 3:
          v13 = 0xE600000000000000;
          v14 = OUTLINED_FUNCTION_6_77();
          goto LABEL_12;
        default:
LABEL_12:
          OUTLINED_FUNCTION_38_23(v14, v13, 0x79616C5079656BLL);
          v16 = OUTLINED_FUNCTION_28_3();
          if (v1)
          {
            v17 = 0x4014000000000000;
          }

          else
          {
            v17 = 0x4028000000000000;
          }

LABEL_15:
          v18 = v2;
          (v8)(v16);
          OUTLINED_FUNCTION_25_43();
          v19 = 0x746C7561666564;
          switch(v20)
          {
            case 1:

              v21 = 0x4026000000000000;
              goto LABEL_21;
            case 2:
              v19 = 0x79616C5079656BLL;
              goto LABEL_19;
            case 3:
              v18 = 0xE600000000000000;
              v19 = OUTLINED_FUNCTION_6_77();
              goto LABEL_19;
            default:
LABEL_19:
              OUTLINED_FUNCTION_40_5(v19, v18, 0x7478654E7075);
              OUTLINED_FUNCTION_28_3();
              v21 = 0x4018000000000000;
              if (v1)
              {
                v21 = 0x4026000000000000;
              }

LABEL_21:
              *&__dst[0] = v17;
              *(&__dst[0] + 1) = 0x4028000000000000;
              *&__dst[1] = v21;
              *(&__dst[1] + 1) = 0x4028000000000000;
              LOBYTE(__dst[2]) = 0;
              type metadata accessor for UIEdgeInsets();
              v23 = v22;
              sub_1E3C2FCB8(v329, v326, v323, v320, &v316, __dst, v22, __src);
              memcpy(__dst, __src, 0xE9uLL);
              OUTLINED_FUNCTION_18();
              OUTLINED_FUNCTION_9_2();
              v25 = *(v24 + 1600);
              (v25)(__dst, 1, v26 & 1, v23);
              sub_1E39537A8();
              *v335 = v27;
              *&v335[8] = v28;
              v336[0] = v29;
              v336[1] = v30;
              LOBYTE(v337) = 0;
              sub_1E39537A8();
              v350[0] = v31;
              v350[1] = v32;
              v350[2] = v33;
              v350[3] = v34;
              LOBYTE(v351) = 0;
              sub_1E3C2FC98();
              *v344 = *v347;
              *v345 = *v348;
              LOBYTE(v346) = v349;
              sub_1E3C3DE00();
              *v338 = *v341;
              *v339 = v342;
              LOBYTE(v340) = v343;
              sub_1E3C3DE00();
              *v309 = *v313;
              v310 = v314;
              LOBYTE(v311) = v315;
              sub_1E3C3DE00();
              *v301 = *v305;
              v302 = v306;
              LOBYTE(v303) = v307;
              v35 = OUTLINED_FUNCTION_17_57();
              sub_1E3C2FCB8(v35, v344, v338, v350, v309, v301, v23, v36);
              OUTLINED_FUNCTION_37_26();
              OUTLINED_FUNCTION_18();
              v37 = OUTLINED_FUNCTION_15_64();
              v25(v37, 17);
              v38 = *sub_1E3E5FB0C();
              v39 = *(*v2 + 752);
              v40 = v38;
              v39(v38);
              v41 = *sub_1E3E5FB88();
              v42 = *(*v2 + 872);
              v43 = v41;
              v42(v41);
              v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
              v45 = swift_allocObject();
              *(v45 + 16) = xmmword_1E42A76D0;
              v46 = objc_opt_self();
              v47 = [v46 blackColor];
              v48 = [v47 colorWithAlphaComponent_];

              *(v45 + 32) = v48;
              v49 = OUTLINED_FUNCTION_54_15();
              v50 = [v49 &selRef:0.0 componentsSeparatedByString:?];

              *(v45 + 40) = v50;
              v51 = OUTLINED_FUNCTION_54_15();
              v52 = [v51 &selRef:0.1 componentsSeparatedByString:?];

              *(v45 + 48) = v52;
              v53 = OUTLINED_FUNCTION_54_15();
              v54 = [v53 &selRef:0.4 componentsSeparatedByString:?];

              *(v45 + 56) = v54;
              *(v45 + 64) = OUTLINED_FUNCTION_54_15();
              v55 = type metadata accessor for ViewGradientLayout(0);
              OUTLINED_FUNCTION_18_48();
              v298 = v55;
              sub_1E40C2E40();
              OUTLINED_FUNCTION_9_2();
              (*(v56 + 848))();
              v57 = swift_allocObject();
              *(v57 + 16) = xmmword_1E42A76D0;
              v58 = [v46 blackColor];
              OUTLINED_FUNCTION_43_23();
              v61 = [v59 v60];

              *(v57 + 32) = v61;
              v62 = OUTLINED_FUNCTION_53_20();
              OUTLINED_FUNCTION_43_23();
              v65 = [v63 v64];

              *(v57 + 40) = v65;
              v66 = OUTLINED_FUNCTION_53_20();
              OUTLINED_FUNCTION_43_23();
              v69 = [v67 v68];

              *(v57 + 48) = v69;
              v70 = OUTLINED_FUNCTION_53_20();
              OUTLINED_FUNCTION_43_23();
              v73 = [v71 v72];

              *(v57 + 56) = v73;
              *(v57 + 64) = OUTLINED_FUNCTION_53_20();
              OUTLINED_FUNCTION_18_48();
              v2[21] = sub_1E40C2E40();

              sub_1E3A069B4();
              OUTLINED_FUNCTION_9_2();
              v75 = *(v74 + 1936);
              v75();
              OUTLINED_FUNCTION_2_1();
              (*(v76 + 1352))(0);

              (v75)(v77);
              OUTLINED_FUNCTION_2_1();
              (*(v78 + 512))(2);

              (v75)(v79);
              OUTLINED_FUNCTION_2_1();
              (*(v80 + 1808))(3);

              v82 = (v75)(v81);
              sub_1E3E60A14();
              OUTLINED_FUNCTION_7_16();
              v83 = *(*v82 + 872);
              v84 = v46;
              v83(v46);

              (v75)(v85);
              OUTLINED_FUNCTION_2_1();
              (*(v86 + 2240))(0);

              v88 = (v75)(v87);
              memset(__dst, 0, 32);
              LOBYTE(__dst[2]) = 1;
              (*(*v88 + 560))(__dst);

              (v75)(v89);
              OUTLINED_FUNCTION_2_1();
              (*(v90 + 360))(0, 1);

              (v75)(v91);
              OUTLINED_FUNCTION_30();
              (*(v92 + 160))(__dst);

              (v75)(v93);
              OUTLINED_FUNCTION_2_1();
              (*(v94 + 312))(0, 1);

              v96 = (v75)(v95);
              v97 = *sub_1E418A524();
              (*(*v96 + 440))(v97, 0);

              v99 = (v75)(v98);
              sub_1E3E5FB0C();
              OUTLINED_FUNCTION_7_16();
              v100 = *(*v99 + 776);
              v101 = v46;
              v100(v46);

              sub_1E3A09908();
              OUTLINED_FUNCTION_9_2();
              v103 = v102 + 1888;
              v104 = *(v102 + 1888);
              v104();
              OUTLINED_FUNCTION_2_1();
              v105 = OUTLINED_FUNCTION_15_8();
              v106(v105);

              (v104)(v107);
              OUTLINED_FUNCTION_2_1();
              v108 = OUTLINED_FUNCTION_10_7();
              v109(v108);

              (v104)(v110);
              OUTLINED_FUNCTION_2_1();
              v111 = OUTLINED_FUNCTION_10_7();
              v112(v111);

              (v104)(v113);
              v335[0] = 11;
              LOBYTE(v350[0]) = 5;
              LOBYTE(v347[0]) = 5;
              LOBYTE(v344[0]) = 5;
              LOBYTE(v341[0]) = 5;
              sub_1E3C3DE00();
              LOBYTE(v313[0]) = v338[0];
              v114 = OUTLINED_FUNCTION_5_94();
              sub_1E3C2FCB8(v114, v115, v116, v117, v313, v341, &qword_1F5D54AF8, v118);
              OUTLINED_FUNCTION_2_93();
              OUTLINED_FUNCTION_18();
              OUTLINED_FUNCTION_14();
              v119 = OUTLINED_FUNCTION_15_64();
              v120(v119, 54);

              (v104)(v121);
              v335[0] = 17;
              LOBYTE(v350[0]) = 17;
              LOBYTE(v347[0]) = 22;
              LOBYTE(v344[0]) = 3;
              LOBYTE(v341[0]) = 14;
              sub_1E3C3DE00();
              LOBYTE(v313[0]) = v338[0];
              sub_1E3C2FCB8(v313, v335, v350, v347, v344, v341, &qword_1F5D549D8, __dst);
              OUTLINED_FUNCTION_2_93();
              OUTLINED_FUNCTION_18();
              OUTLINED_FUNCTION_14();
              v122 = OUTLINED_FUNCTION_15_64();
              v123(v122, 48);

              (v104)(v124);
              v335[0] = 5;
              LOBYTE(v350[0]) = 3;
              sub_1E3C2FC98();
              LOBYTE(v344[0]) = v347[0];
              sub_1E3C3DE00();
              LOBYTE(v338[0]) = v341[0];
              sub_1E3C3DE00();
              LOBYTE(v309[0]) = v313[0];
              sub_1E3C3DE00();
              LOBYTE(v301[0]) = v305[0];
              v125 = OUTLINED_FUNCTION_17_57();
              sub_1E3C2FCB8(v125, v344, v338, v309, v350, v301, &unk_1F5D54B88, v126);
              OUTLINED_FUNCTION_2_93();
              OUTLINED_FUNCTION_18();
              OUTLINED_FUNCTION_14();
              v127 = OUTLINED_FUNCTION_15_64();
              v128(v127, 55);

              (v104)(v129);
              OUTLINED_FUNCTION_2_1();
              (*(v130 + 1984))(5);

              (v104)(v131);
              *&v132 = OUTLINED_FUNCTION_45_24();
              *v335 = v132;
              *v336 = v132;
              LOBYTE(v337) = 1;
              OUTLINED_FUNCTION_16_60(0x4000000000000000uLL);
              v344[0] = v133;
              OUTLINED_FUNCTION_41_26();
              OUTLINED_FUNCTION_30_34(0x3FF0000000000000uLL);
              v291 = *(MEMORY[0x1E69DDCE0] + 8);
              v287 = *(MEMORY[0x1E69DDCE0] + 24);
              v289 = *(MEMORY[0x1E69DDCE0] + 16);
              v338[0] = *MEMORY[0x1E69DDCE0];
              v293 = v338[0];
              v338[1] = v291;
              v339[0] = v289;
              v339[1] = v287;
              LOBYTE(v340) = 0;
              v134 = OUTLINED_FUNCTION_5_94();
              sub_1E3C2FCB8(v134, v135, v136, v137, v341, v338, v23, v138);
              OUTLINED_FUNCTION_37_26();
              OUTLINED_FUNCTION_18();
              OUTLINED_FUNCTION_14();
              v139 = OUTLINED_FUNCTION_15_64();
              v140(v139, 0);

              (v104)(v141);
              v142 = *sub_1E3E5FD88();
              *v335 = v142;
              v143 = sub_1E3755B54();
              v144 = v142;
              sub_1E3C2FC98();
              OUTLINED_FUNCTION_49_22();
              OUTLINED_FUNCTION_48_22();
              OUTLINED_FUNCTION_47_22();
              OUTLINED_FUNCTION_46_22();
              v334 = v301[0];
              v145 = OUTLINED_FUNCTION_17_57();
              OUTLINED_FUNCTION_27_30(v145, v146, v284, v103, v23, v287, v289, v291, v293, 11, v296, v298, v301[0], v301[1], v302, *(&v302 + 1), v303, v304, v305[0], v305[1], v306, *(&v306 + 1), v307, v308, v309[0], v309[1], v310, *(&v310 + 1), v311, v312, v313[0]);
              v147 = __dst[0];
              v148 = __dst[1];
              v149 = __dst[2];
              *v335 = __dst[0];
              *v336 = __dst[1];
              v337 = __dst[2];
              OUTLINED_FUNCTION_18();
              OUTLINED_FUNCTION_14();
              v150 = OUTLINED_FUNCTION_15_64();
              v151(v150, 21);

              v104();
              OUTLINED_FUNCTION_2_1();
              (*(v152 + 2008))(1);

              OUTLINED_FUNCTION_9_2();
              v154 = v153 + 1912;
              v155 = *(v153 + 1912);
              v155();
              OUTLINED_FUNCTION_2_1();
              (*(v156 + 1656))();

              (v155)(v157);
              OUTLINED_FUNCTION_2_1();
              v158 = OUTLINED_FUNCTION_15_8();
              v159(v158);

              (v155)(v160);
              OUTLINED_FUNCTION_2_1();
              v161 = OUTLINED_FUNCTION_10_7();
              v162(v161);

              (v155)(v163);
              OUTLINED_FUNCTION_2_1();
              v164 = OUTLINED_FUNCTION_10_7();
              v165(v164);

              (v155)(v166);
              v335[0] = 5;
              LOBYTE(v350[0]) = 5;
              LOBYTE(v347[0]) = 4;
              LOBYTE(v344[0]) = 11;
              sub_1E3C3DE00();
              LOBYTE(v338[0]) = v341[0];
              sub_1E3C3DE00();
              LOBYTE(v309[0]) = v313[0];
              sub_1E3C2FCB8(v338, v335, v350, v347, v309, v344, &qword_1F5D54AF8, __dst);
              OUTLINED_FUNCTION_2_93();
              OUTLINED_FUNCTION_18();
              OUTLINED_FUNCTION_14();
              v167 = OUTLINED_FUNCTION_15_64();
              v168(v167, 54);

              (v155)(v169);
              v335[0] = 21;
              LOBYTE(v350[0]) = 17;
              LOBYTE(v347[0]) = 17;
              LOBYTE(v344[0]) = 25;
              LOBYTE(v341[0]) = 14;
              LOBYTE(v338[0]) = 14;
              v170 = OUTLINED_FUNCTION_5_94();
              sub_1E3C2FCB8(v170, v171, v172, v173, v341, v338, &qword_1F5D549D8, v174);
              OUTLINED_FUNCTION_2_93();
              OUTLINED_FUNCTION_18();
              OUTLINED_FUNCTION_14();
              v175 = OUTLINED_FUNCTION_15_64();
              v176(v175, 48);

              (v155)(v177);
              *&v178 = OUTLINED_FUNCTION_45_24();
              *v335 = v178;
              *v336 = v178;
              LOBYTE(v337) = 1;
              OUTLINED_FUNCTION_16_60(0x4010000000000000uLL);
              v344[0] = 0x4018000000000000;
              OUTLINED_FUNCTION_41_26();
              OUTLINED_FUNCTION_30_34(v179);
              v338[0] = v294;
              v338[1] = v292;
              v339[0] = v290;
              v339[1] = v288;
              LOBYTE(v340) = 0;
              v180 = OUTLINED_FUNCTION_5_94();
              sub_1E3C2FCB8(v180, v181, v182, v183, v341, v338, v286, v184);
              OUTLINED_FUNCTION_37_26();
              OUTLINED_FUNCTION_18();
              OUTLINED_FUNCTION_14();
              v185 = OUTLINED_FUNCTION_15_64();
              v186(v185, 0);

              (v155)(v187);
              *v335 = *sub_1E3E5FDEC();
              v188 = *v335;
              sub_1E3C2FC98();
              OUTLINED_FUNCTION_49_22();
              OUTLINED_FUNCTION_48_22();
              OUTLINED_FUNCTION_47_22();
              OUTLINED_FUNCTION_46_22();
              v334 = v301[0];
              v189 = OUTLINED_FUNCTION_17_57();
              OUTLINED_FUNCTION_27_30(v189, v190, v285, v154, v286, v288, v290, v292, v294, v295, v297, v299, v301[0], v301[1], v302, *(&v302 + 1), v303, v304, v305[0], v305[1], v306, *(&v306 + 1), v307, v308, v309[0], v309[1], v310, *(&v310 + 1), v311, v312, v313[0]);
              v191 = __dst[0];
              v192 = __dst[1];
              v193 = __dst[2];
              *v335 = __dst[0];
              *v336 = __dst[1];
              v337 = __dst[2];
              OUTLINED_FUNCTION_18();
              OUTLINED_FUNCTION_14();
              v194 = OUTLINED_FUNCTION_15_64();
              v195(v194, 21);

              v155();
              *v335 = 0;
              v350[0] = *sub_1E3E5FD88();
              v347[0] = v350[0];
              v344[0] = v350[0];
              v196 = v350[0];
              sub_1E3C2FC98();
              v338[0] = v341[0];
              sub_1E3C3DE00();
              v309[0] = v313[0];
              v197 = OUTLINED_FUNCTION_17_57();
              sub_1E3C2FCB8(v197, v338, v309, v350, v347, v344, v143, v198);
              v199 = __dst[0];
              v200 = __dst[1];
              v201 = __dst[2];
              *v335 = __dst[0];
              *v336 = __dst[1];
              v337 = __dst[2];
              OUTLINED_FUNCTION_18();
              OUTLINED_FUNCTION_14();
              v202 = OUTLINED_FUNCTION_15_64();
              v203(v202, 29);

              type metadata accessor for RelationalLayout();
              sub_1E4177030();
              sub_1E3952C88();
              nullsub_1();
              sub_1E41776B0(39, v204, v205, v206, v207);
              OUTLINED_FUNCTION_9_2();
              (*(v208 + 1888))();
              OUTLINED_FUNCTION_2_1();
              v210 = *(v209 + 1424);

              v210(v211);

              sub_1E3A07120();
              OUTLINED_FUNCTION_9_2();
              v213 = (*(v212 + 2008))();
              sub_1E3A0958C();

              OUTLINED_FUNCTION_9_2();
              v215 = *(v214 + 2080);
              v216 = v215();
              sub_1E3E5FDEC();
              OUTLINED_FUNCTION_7_16();
              v217 = *(*v216 + 680);
              v218 = v213;
              v217(v213);

              (v215)(v219);
              OUTLINED_FUNCTION_2_1();
              (*(v220 + 312))(0x3FF0000000000000, 0);

              (v215)(v221);
              sub_1E3952C78();
              OUTLINED_FUNCTION_7_95(v222, v223, v224, v225);
              (*(v226 + 184))(__dst);

              OUTLINED_FUNCTION_9_2();
              (*(v227 + 2104))();
              sub_1E3952C94();
              OUTLINED_FUNCTION_7_95(v228, v229, v230, v231);
              (*(v232 + 160))(__dst);

              sub_1E3A06C60();
              v233 = [objc_opt_self() blackColor];
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
              v234 = swift_allocObject();
              *(v234 + 16) = xmmword_1E42B2A10;
              *(v234 + 32) = [v233 colorWithAlphaComponent_];
              *(v234 + 40) = [v233 colorWithAlphaComponent_];
              *(v234 + 48) = [v233 colorWithAlphaComponent_];
              *(v234 + 56) = [v233 colorWithAlphaComponent_];
              *(v234 + 64) = [v233 colorWithAlphaComponent_];
              *(v234 + 72) = [v233 colorWithAlphaComponent_];
              sub_1E40C3088();
              OUTLINED_FUNCTION_2_1();
              (*(v235 + 1776))(2);
              OUTLINED_FUNCTION_36();
              (*(v236 + 1728))(0x3FF0000000000000, 0, 0);
              OUTLINED_FUNCTION_36();
              (*(v237 + 1848))(0x403E000000000000, 0);
              OUTLINED_FUNCTION_36();
              (*(v238 + 1872))(0x4050400000000000, 0);
              OUTLINED_FUNCTION_36();
              (*(v239 + 1800))(v234);
              OUTLINED_FUNCTION_36();
              (*(v240 + 1824))(&unk_1F5D68C00);

              v2[24] = v300;

              OUTLINED_FUNCTION_9_2();
              v242 = *(v241 + 1960);
              v242();
              OUTLINED_FUNCTION_2_1();
              (*(v243 + 1656))();

              (v242)(v244);
              sub_1E3952C78();
              OUTLINED_FUNCTION_7_95(v245, v246, v247, v248);
              (*(v249 + 160))(__dst);

              v251 = (v242)(v250);
              sub_1E3E5FDEC();
              OUTLINED_FUNCTION_7_16();
              v252 = *(*v251 + 680);
              v253 = v233;
              v252(v233);

              v255 = (v242)(v254);
              sub_1E3E60364();
              OUTLINED_FUNCTION_7_16();
              v256 = *(*v255 + 872);
              v257 = v233;
              v256(v233);

              OUTLINED_FUNCTION_9_2();
              v259 = v2;
              (*(v258 + 2200))();
              OUTLINED_FUNCTION_25_43();
              v260 = 0x7478654E7075;
              v261 = 0x746C7561666564;
              switch(v262)
              {
                case 1:
                  goto LABEL_25;
                case 2:
                  v261 = 0x79616C5079656BLL;
                  goto LABEL_24;
                case 3:
                  v259 = 0xE600000000000000;
                  v261 = OUTLINED_FUNCTION_6_77();
                  goto LABEL_24;
                default:
LABEL_24:
                  OUTLINED_FUNCTION_40_5(v261, v259, v260);
LABEL_25:

                  v264 = (v242)(v263);
                  OUTLINED_FUNCTION_3_0(v264 + 208, v335);
                  __asm { FMOV            V0.2D, #25.0 }

                  *(v264 + 208) = _Q0;
                  *(v264 + 224) = _Q0;

                  v267 = (v242)(v266);
                  OUTLINED_FUNCTION_3_0(v267 + 201, v350);
                  *(v267 + 201) = 0;

                  OUTLINED_FUNCTION_111();
                  v269 = (*(v268 + 1888))();
                  sub_1E3C37CBC(v269, 23);

                  OUTLINED_FUNCTION_9_2();
                  v271 = (*(v270 + 1912))();
                  sub_1E3C37CBC(v271, 15);

                  OUTLINED_FUNCTION_9_2();
                  v273 = (*(v272 + 1864))();
                  sub_1E3C37CBC(v273, 17);

                  OUTLINED_FUNCTION_9_2();
                  v275 = (*(v274 + 1936))();
                  sub_1E3C37CBC(v275, 39);

                  OUTLINED_FUNCTION_9_2();
                  v277 = (*(v276 + 1960))();
                  sub_1E3C37CBC(v277, 67);

                  OUTLINED_FUNCTION_9_2();
                  v279 = (*(v278 + 2008))();
                  sub_1E3C37CBC(v279, 40);

                  OUTLINED_FUNCTION_9_2();
                  v281 = (*(v280 + 1984))();
                  sub_1E3C37CBC(v281, 96);

                  OUTLINED_FUNCTION_9_2();
                  v283 = (*(v282 + 2104))();
                  sub_1E3C37CBC(v283, 185);

                  return;
              }
          }
      }
  }
}