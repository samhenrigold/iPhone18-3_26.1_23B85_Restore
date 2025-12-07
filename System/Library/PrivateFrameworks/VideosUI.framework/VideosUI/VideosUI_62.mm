uint64_t type metadata accessor for LibDownloadedTVShowSeasonsViewInteractor(uint64_t a1)
{
  result = qword_1EE290580;
  if (!qword_1EE290580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3B24614(uint64_t a1@<X8>)
{
  v2 = v1;
  v71 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33650, &qword_1E42BB7B8) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v68 - v5;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33658, &qword_1E42BB7C0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v74 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33660, &qword_1E42BB7C8);
  OUTLINED_FUNCTION_0_10();
  v69 = v10;
  v70 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v75 = v12;
  *v6 = sub_1E4201D44();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33668, &qword_1E42BB7D0);
  sub_1E3B24BFC(v2, &v6[*(v13 + 44)]);
  v14 = swift_allocObject();
  memcpy((v14 + 16), v2, 0x78uLL);
  v15 = &v6[*(v3 + 44)];
  *v15 = sub_1E3B250D8;
  v15[1] = v14;
  v15[2] = 0;
  v15[3] = 0;
  v16 = *v2;
  if (!*v2)
  {
    goto LABEL_10;
  }

  sub_1E37DA1B4(v2, &v85);
  type metadata accessor for Route(0);
  OUTLINED_FUNCTION_6_101();
  sub_1E3B23E8C(v17, v18);
  v19 = v16;
  v20 = sub_1E4200BC4();
  v21 = v2[7];
  v72 = v2[8];
  v73 = v21;
  v68 = v2;
  v2 = type metadata accessor for LibDownloadedTVShowSeasonsViewInteractor(0);
  OUTLINED_FUNCTION_0_148();
  v24 = sub_1E3B23E8C(v22, v23);
  sub_1E4200BC4();

  v25 = sub_1E379D97C(v19, v20);
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = v74;
  sub_1E32C5760(v6, v74);
  v33 = (v32 + *(v76 + 36));
  *v33 = v25;
  v33[1] = v27;
  v33[2] = v29;
  v33[3] = v31;
  v72 = v24;
  v73 = v2;
  v34 = sub_1E4200BC4();
  v35 = OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_showEntity;
  OUTLINED_FUNCTION_5_0(v34 + OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_showEntity, &v80);
  sub_1E327F454(v34 + v35, &v85);

  __swift_project_boxed_opaque_existential_1(&v85, v88);
  v36 = OUTLINED_FUNCTION_38();
  *&v81 = v37(v36);
  *(&v81 + 1) = v38;
  v39 = sub_1E3B25240();
  sub_1E32822E0(v39, v40, v41);
  sub_1E4203034();

  sub_1E32C57C8(v32);
  __swift_destroy_boxed_opaque_existential_1(&v85);
  v42 = sub_1E4203DA4();
  v44 = v43;
  v45 = objc_opt_self();
  v46 = [v45 sharedInstance];
  if (!v46)
  {
    __break(1u);
    goto LABEL_9;
  }

  v47 = v46;
  v48 = sub_1E3741090(0xD000000000000015, 0x80000001E4267120, v46);
  v2 = v49;

  v50 = [v45 sharedInstance];
  if (!v50)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    sub_1E37DA1B4(v2, &v85);
    type metadata accessor for Router(0);
    OUTLINED_FUNCTION_3_121();
    sub_1E3B23E8C(v66, v67);
    sub_1E4201744();
    __break(1u);
    return;
  }

  v51 = v50;
  v52 = sub_1E3741090(0xD000000000000017, 0x80000001E4267100, v50);
  v54 = v53;

  sub_1E39FA1A8(v48, v2, v52, v54, &v85);
  v55 = v85;
  v56 = v86;
  v57 = v87;
  v58 = v88;
  v59 = v89;
  v60 = *(sub_1E4200BC4() + OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_isLoading);

  if (v60)
  {
    v61 = 1.0;
  }

  else
  {
    v61 = 0.0;
  }

  v79 = v59;
  *&v81 = v55;
  *(&v81 + 1) = v56;
  *&v82 = v57;
  *(&v82 + 1) = v58;
  LOBYTE(v83) = v59;
  *(&v83 + 1) = *v78;
  DWORD1(v83) = *&v78[3];
  *(&v83 + 1) = v61;
  *&v84 = v42;
  *(&v84 + 1) = v44;
  v62 = v71;
  (*(v69 + 32))(v71, v75, v70);
  v63 = (v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33698, &qword_1E42BB7E0) + 36));
  v64 = v82;
  *v63 = v81;
  v63[1] = v64;
  v65 = v84;
  v63[2] = v83;
  v63[3] = v65;
  v85 = v55;
  v86 = v56;
  v87 = v57;
  v88 = v58;
  v89 = v59;
  *v90 = *v78;
  *&v90[3] = *&v78[3];
  v91 = v61;
  v92 = v42;
  v93 = v44;
  sub_1E3B25384(&v81, &v77);
  sub_1E325F6F0(&v85, &qword_1ECF336A0, &qword_1E42BB7E8);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3B24BFC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF317A8, &qword_1E42EBDF0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_44();
  v29 = v5;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF336D8, &unk_1E42BBA20);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  type metadata accessor for LibDownloadedTVShowSeasonsViewInteractor(0);
  OUTLINED_FUNCTION_0_148();
  sub_1E3B23E8C(v7, v8);
  v9 = *(OUTLINED_FUNCTION_4_122() + OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_templateViewModel);

  v31 = v9;
  if (v9)
  {
    v27 = *(a1 + 80);
    v26 = *(a1 + 88);
    v25 = *(a1 + 96);
    v24 = *(a1 + 104);
    v10 = *(OUTLINED_FUNCTION_4_122() + OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_showcaseValue);

    v28 = a2;
    v11 = *(OUTLINED_FUNCTION_4_122() + OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_navBarObservableModel);

    v12 = *(OUTLINED_FUNCTION_4_122() + OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_viewMetricsRecorder);

    sub_1E3E85A74(v31, v27, v26, v25, v24, v10, v11, v12, v29, 0);

    v13 = *(OUTLINED_FUNCTION_4_122() + OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_shouldDismiss);

    v32[127] = v13;
    v14 = swift_allocObject();
    memcpy((v14 + 16), a1, 0x78uLL);
    sub_1E37DA1B4(a1, v32);
    swift_getOpaqueTypeConformance2();
    sub_1E4203524();

    v15 = OUTLINED_FUNCTION_53();
    v16(v15);
    v17 = OUTLINED_FUNCTION_57();
    v18(v17);
    __swift_storeEnumTagSinglePayload(v28, 0, 1, v30);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    OUTLINED_FUNCTION_25_2();

    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  }
}

uint64_t sub_1E3B25030()
{
  type metadata accessor for Route(0);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v1 = OUTLINED_FUNCTION_38();
  v2(v1);
  j__OUTLINED_FUNCTION_18();
  v3 = OUTLINED_FUNCTION_57();
  return sub_1E3F4C85C(v3, v4, v5);
}

uint64_t sub_1E3B250D8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    type metadata accessor for Route(0);
    OUTLINED_FUNCTION_6_101();
    sub_1E3B23E8C(v2, v3);
    v4 = v1;
    OUTLINED_FUNCTION_57();
    v5 = sub_1E4200BC4();
    (*((*MEMORY[0x1E69E7D40] & *v4) + 0x198))(v5);

    OUTLINED_FUNCTION_36();
    return (*(v6 + 296))();
  }

  else
  {
    type metadata accessor for Router(0);
    OUTLINED_FUNCTION_3_121();
    v10 = sub_1E3B23E8C(v8, v9);
    result = OUTLINED_FUNCTION_6_46(v10);
    __break(1u);
  }

  return result;
}

unint64_t sub_1E3B25240()
{
  result = qword_1ECF33678;
  if (!qword_1ECF33678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33658, &qword_1E42BB7C0);
    v3 = sub_1E3B252CC();
    sub_1E389B90C(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33678);
  }

  return result;
}

unint64_t sub_1E3B252CC()
{
  result = qword_1ECF33680;
  if (!qword_1ECF33680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33650, &qword_1E42BB7B8);
    sub_1E328FCF4(&qword_1ECF33688, &qword_1ECF33690, &qword_1E42BB7D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33680);
  }

  return result;
}

uint64_t sub_1E3B25384(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF336A0, &qword_1E42BB7E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3B25410(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 112);
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

uint64_t sub_1E3B25450(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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
      *(result + 112) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1E3B254BC()
{
  sub_1E3B25570();
  v1 = OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_showEntity;
  OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_showEntity, &v4);
  sub_1E327F454(v0 + v1, v5);

  sub_1E3B72530();
  v3 = v2;

  __swift_destroy_boxed_opaque_existential_1(v5);
  *(v0 + OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_templateViewModel) = v3;

  sub_1E3B255FC();
}

uint64_t sub_1E3B25570()
{
  v1 = OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_downloadStatesCancellables;
  swift_beginAccess();
  *(v0 + v1) = MEMORY[0x1E69E7CD0];

  v2 = OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_managedDownloadViewModels;
  swift_beginAccess();
  *(v0 + v2) = MEMORY[0x1E69E7CC0];
}

void sub_1E3B255FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DB30, &unk_1E42A89B0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_44();
  v57 = v3;
  v56 = sub_1E4207094();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_3();
  v55 = v7;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF336C8, &qword_1E42BBA18);
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  v53 = v11;
  if (sub_1E38BBD0C(*(*(v0 + OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_menuItem) + 32), 10, v12))
  {
    if (*(v0 + OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_templateViewModel))
    {
      OUTLINED_FUNCTION_8();
      v14 = *(v13 + 464);

      v16 = v14(v15);

      v17 = MEMORY[0x1E69E7CC0];
      if (v16)
      {
        v18 = MEMORY[0x1E69E7CC0];
        v67 = MEMORY[0x1E69E7CC0];
        v19 = sub_1E32AE9B0(v16);
        v20 = 0;
        while (v19 != v20)
        {
          if ((v16 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1E6911E60](v20, v16);
          }

          else
          {
            if (v20 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_54;
            }
          }

          if (__OFADD__(v20, 1))
          {
            goto LABEL_53;
          }

          type metadata accessor for CollectionViewModel();
          if (swift_dynamicCastClass())
          {
            MEMORY[0x1E6910BF0]();
            if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1E42062F4();
            }

            sub_1E4206324();
            v18 = v67;
            ++v20;
          }

          else
          {

            ++v20;
          }
        }

        v17 = v18;
      }
    }

    else
    {
      v17 = MEMORY[0x1E69E7CC0];
    }

    v21 = v17;
    v47 = sub_1E32AE9B0(v17);
    if (v47)
    {
      v22 = 0;
      v23 = 0;
      v52 = v1 + OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_downloadStatesCancellables;
      v63 = (v1 + OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_managedDownloadViewModels);
      v46 = v21 & 0xC000000000000001;
      v44 = v21 & 0xFFFFFFFFFFFFFF8;
      v45 = v21;
      v43 = v21 + 32;
      v51 = (v5 + 8);
      v50 = (v9 + 8);
      while (1)
      {
        if (v46)
        {
          v61 = MEMORY[0x1E6911E60](v22, v45);
        }

        else
        {
          if (v22 >= *(v44 + 16))
          {
            goto LABEL_55;
          }

          v61 = *(v43 + 8 * v22);
        }

        v24 = __OFADD__(v22, 1);
        v25 = v22 + 1;
        if (v24)
        {
          __break(1u);
          goto LABEL_52;
        }

        type metadata accessor for ViewModel();
        sub_1E40B99B8();
        if (v26)
        {
          v27 = v26;
        }

        else
        {
          v27 = MEMORY[0x1E69E7CC0];
        }

        v49 = v25;
        v48 = v23;
        if (!(v27 >> 62))
        {
          v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v28)
          {
            break;
          }

          goto LABEL_45;
        }

        v28 = sub_1E4207384();
        if (v28)
        {
          break;
        }

LABEL_45:

        v22 = v49;
        v23 = v48;
        if (v49 == v47)
        {

          goto LABEL_47;
        }
      }

      if (v28 >= 1)
      {
        v29 = 0;
        v30 = v27 & 0xC000000000000001;
        v60 = v27;
        v59 = v28;
        v58 = v27 & 0xC000000000000001;
        while (1)
        {
          if (v30)
          {
            v31 = MEMORY[0x1E6911E60](v29, v27);
          }

          else
          {
            v31 = *(v27 + 8 * v29 + 32);
          }

          type metadata accessor for LibLockupViewModel(0);
          OUTLINED_FUNCTION_22_53();
          v32 = swift_dynamicCastClass();
          if (v32)
          {
            v33 = *(*v32 + 1496);

            v33(&v67, v34);
            sub_1E3280A90(0, &qword_1EE23AFA0, off_1E8728338);
            sub_1E327F454(&v67, &v66);
            v65 = 0;
            memset(v64, 0, sizeof(v64));
            v35 = sub_1E3BFF560(&v66, v64);
            if (v35)
            {
              v62 = v35;
              *&v66 = sub_1E40A0988();
              sub_1E4207064();
              v36 = [objc_opt_self() mainRunLoop];
              *&v64[0] = v36;
              v37 = sub_1E4207054();
              __swift_storeEnumTagSinglePayload(v57, 1, 1, v37);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEB8, &unk_1E42B5DF0);
              sub_1E3280A90(0, &qword_1EE23AD08, 0x1E695DFD0);
              OUTLINED_FUNCTION_8_2();
              sub_1E328FCF4(&qword_1EE28A1C0, &qword_1ECF2CEB8, &unk_1E42B5DF0);
              sub_1E3782CC4();
              sub_1E42007F4();
              sub_1E325F6F0(v57, &unk_1ECF3DB30, &unk_1E42A89B0);

              (*v51)(v55, v56);

              OUTLINED_FUNCTION_4_0();
              v38 = swift_allocObject();
              swift_weakInit();
              sub_1E327F454(&v67, &v66);
              v39 = swift_allocObject();
              v39[2] = v38;
              sub_1E3251BE8(&v66, (v39 + 3));
              v39[8] = v61;
              v39[9] = v31;
              OUTLINED_FUNCTION_5_117();
              sub_1E328FCF4(&qword_1ECF336D0, &qword_1ECF336C8, &qword_1E42BBA18);

              sub_1E4200844();
              OUTLINED_FUNCTION_38();

              (*v50)(v53, v54);
              OUTLINED_FUNCTION_11_3(v52, &v66);
              sub_1E42004C4();
              swift_endAccess();

              OUTLINED_FUNCTION_11_3(v63, &v66);
              v40 = v62;
              MEMORY[0x1E6910BF0]();
              v41 = *((*v63 & 0xFFFFFFFFFFFFFF8) + 0x18);
              if (*((*v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v41 >> 1)
              {
                OUTLINED_FUNCTION_35(v41);
                sub_1E42062F4();
              }

              sub_1E4206324();
              swift_endAccess();

              __swift_destroy_boxed_opaque_existential_1(&v67);
              v27 = v60;
              v28 = v59;
              v30 = v58;
              goto LABEL_42;
            }

            __swift_destroy_boxed_opaque_existential_1(&v67);
          }

LABEL_42:
          if (v28 == ++v29)
          {
            goto LABEL_45;
          }
        }
      }

LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_54_0();
    }
  }

  else
  {
LABEL_47:
    OUTLINED_FUNCTION_54_0();
  }
}

double sub_1E3B25EE0()
{
  v3 = *(v0 + OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_templateViewModel);
  if (v3)
  {
    OUTLINED_FUNCTION_8();
    v4 += 58;
    v5 = *v4;
    v6 = v4;

    v8 = v5(v7);

    v9 = MEMORY[0x1E69E7CC0];
    if (v8)
    {
      v59[0] = MEMORY[0x1E69E7CC0];
      sub_1E32AE9B0(v8);
      OUTLINED_FUNCTION_16_77();
      while (v6 != v3)
      {
        if (v1)
        {
          MEMORY[0x1E6911E60](v3, v8);
        }

        else
        {
          if (v3 >= *(v2 + 16))
          {
            goto LABEL_82;
          }
        }

        if (__OFADD__(v3, 1))
        {
          goto LABEL_81;
        }

        type metadata accessor for CollectionViewModel();
        if (swift_dynamicCastClass())
        {
          MEMORY[0x1E6910BF0]();
          v10 = *((v59[0] & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v59[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= v10 >> 1)
          {
            OUTLINED_FUNCTION_35(v10);
            sub_1E42062F4();
          }

          OUTLINED_FUNCTION_53();
          sub_1E4206324();
          v48 = v59[0];
          v3 = (v3 + 1);
        }

        else
        {

          v3 = (v3 + 1);
        }
      }

      sub_1E32AE9B0(v48);
      v11 = 0;
      OUTLINED_FUNCTION_23_52();
      v12 = v9;
LABEL_16:
      if (v11 != v47)
      {
        sub_1E34AF4E4(v11, v46 == 0, v48);
        if (v46)
        {
          MEMORY[0x1E6911E60](v11, v48);
        }

        else
        {
        }

        v13 = __OFADD__(v11, 1);
        v14 = v11 + 1;
        if (v13)
        {
          goto LABEL_83;
        }

        v49 = v14;
        v50 = v12;
        OUTLINED_FUNCTION_8();
        v16 = (*(v15 + 1040))();
        if (v16)
        {
          v17 = v16;
        }

        else
        {
          v17 = v9;
        }

        v18 = sub_1E32AE9B0(v17);
        v19 = 0;
        v54 = v17 & 0xFFFFFFFFFFFFFF8;
        v55 = v17 & 0xC000000000000001;
        v51 = v17;
        v53 = v17 + 32;
        v20 = v9;
        v52 = v18;
        while (1)
        {
          if (v19 == v18)
          {

            v59[0] = v50;

            sub_1E379738C(v20);

            v12 = v59[0];
            v11 = v49;
            goto LABEL_16;
          }

          if (v55)
          {
            v22 = MEMORY[0x1E6911E60](v19, v51);
            v21 = v22;
          }

          else
          {
            if (v19 >= *(v54 + 16))
            {
              goto LABEL_75;
            }

            v21 = *(v53 + 8 * v19);
          }

          v13 = __OFADD__(v19++, 1);
          if (v13)
          {
            __break(1u);
LABEL_75:
            __break(1u);
LABEL_76:
            __break(1u);
LABEL_77:
            __break(1u);
LABEL_78:
            __break(1u);
LABEL_79:
            __break(1u);
LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);
LABEL_82:
            __break(1u);
LABEL_83:
            __break(1u);
LABEL_84:
            v44 = sub_1E4207384();
            goto LABEL_71;
          }

          v23 = (*(*v21 + 872))(v22);
          if (v23)
          {
            v24 = v23;
          }

          else
          {
            v24 = v9;
          }

          v25 = v24 >> 62;
          if (v24 >> 62)
          {
            v26 = sub_1E4207384();
          }

          else
          {
            v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v27 = v20 >> 62;
          if (v20 >> 62)
          {
            v28 = OUTLINED_FUNCTION_52_20();
          }

          else
          {
            v28 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v58 = v26;
          v13 = __OFADD__(v28, v26);
          v29 = v28 + v26;
          if (v13)
          {
            goto LABEL_76;
          }

          isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
          if (v27)
          {
            v31 = 0;
          }

          else
          {
            v31 = isUniquelyReferenced_nonNull_bridgeObject;
          }

          if (v31 != 1 || (v32 = v20 & 0xFFFFFFFFFFFFFF8, v33 = v20, v29 > *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1))
          {
            if (v27)
            {
              OUTLINED_FUNCTION_52_20();
            }

            v33 = sub_1E4207514();
            v32 = v33 & 0xFFFFFFFFFFFFFF8;
          }

          v34 = *(v32 + 16);
          v35 = *(v32 + 24);
          v57 = v33;
          if (v25)
          {
            v38 = v32;
            v39 = sub_1E4207384();
            v32 = v38;
            v36 = v39;
            if (!v39)
            {
              goto LABEL_51;
            }

LABEL_47:
            if (((v35 >> 1) - v34) < v58)
            {
              goto LABEL_78;
            }

            v56 = v32;
            if (v25)
            {
              if (v36 < 1)
              {
                goto LABEL_80;
              }

              OUTLINED_FUNCTION_0_32();
              sub_1E328FCF4(&qword_1EE23B540, &unk_1ECF2C790, &qword_1E42996A0);
              do
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
                v40 = sub_1E3797EB0(v59, 0, v24);

                (v40)(v59, 0);
                OUTLINED_FUNCTION_26_49();
              }

              while (!v41);

              v9 = MEMORY[0x1E69E7CC0];
              v18 = v52;
              v37 = v58;
            }

            else
            {
              type metadata accessor for ViewModel();
              v37 = v58;
              swift_arrayInitWithCopy();
            }

            v20 = v57;
            if (v37 > 0)
            {
              v42 = *(v56 + 16);
              v13 = __OFADD__(v42, v37);
              v43 = v42 + v37;
              if (v13)
              {
                goto LABEL_79;
              }

              *(v56 + 16) = v43;
              v20 = v57;
            }
          }

          else
          {
            v36 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v36)
            {
              goto LABEL_47;
            }

LABEL_51:

            v20 = v57;
            if (v58 > 0)
            {
              goto LABEL_77;
            }
          }
        }
      }
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  if (v12 >> 62)
  {
    goto LABEL_84;
  }

  v44 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_71:

  if (!v44)
  {
    sub_1E4203E44();
    sub_1E4200FE4();
  }

  return result;
}

uint64_t sub_1E3B264FC(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_showEntity;
  OUTLINED_FUNCTION_5_0(v1 + OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_showEntity, v15);
  sub_1E327F454(v1 + v3, v18);
  OUTLINED_FUNCTION_36();
  v5 = *(v4 + 896);

  v5(&v16, v18);

  __swift_destroy_boxed_opaque_existential_1(v18);
  if (!v17)
  {
    return sub_1E325F6F0(&v16, &unk_1ECF2A740, &qword_1E42EF010);
  }

  sub_1E3251BE8(&v16, v18);
  sub_1E327F454(v18, &v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640, &qword_1E429E310);
  type metadata accessor for LibFamilySharingSource(0);
  if (swift_dynamicCast())
  {

    *(v1 + OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_isLoading) = 1;
    if (a1)
    {
      sub_1E4203E44();
      OUTLINED_FUNCTION_28_41();
    }

    else
    {
      type metadata accessor for LibDownloadedTVShowSeasonsViewInteractor(0);
      OUTLINED_FUNCTION_0_148();
      sub_1E3B23E8C(v7, v8);
      OUTLINED_FUNCTION_20_2();
      sub_1E4200514();
      sub_1E4200594();
    }
  }

  v9 = v19;
  v10 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  sub_1E327F454(v1 + v3, &v16);
  v11 = *(v1 + OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_showDownloadsOnly);
  OUTLINED_FUNCTION_4_0();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_31_3(v12);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1 & 1;
  v14 = *(v10 + 120);

  v14(&v16, v11, sub_1E3B2727C, v13, v9, v10);

  __swift_destroy_boxed_opaque_existential_1(&v16);

  sub_1E3B267A4();
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

void sub_1E3B267A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DB30, &unk_1E42A89B0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v34 - v3;
  v5 = sub_1E4207094();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_9_3();
  v10 = v9;
  sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v37 = v11;
  v38 = v12;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_9_3();
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326E0, &unk_1E42B8F30);
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v34 - v19;
  v21 = OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_showEntity;
  OUTLINED_FUNCTION_5_0(v1 + OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_showEntity, v39);
  sub_1E327F454(v1 + v21, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A780, &unk_1E42A8840);
  type metadata accessor for LibSidebandShowMediaEntity(0);
  if (swift_dynamicCast())
  {

    v22 = [objc_opt_self() defaultCenter];
    v36 = v14;
    sub_1E4206C14();

    sub_1E3B7B208();
    sub_1E4207074();
    v23 = [objc_opt_self() mainRunLoop];
    v34 = v20;
    v24 = v23;
    v40[0] = v23;
    v25 = sub_1E4207054();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v25);
    sub_1E3280A90(0, &qword_1EE23AD08, 0x1E695DFD0);
    sub_1E3B23E8C(&qword_1EE23B130, MEMORY[0x1E6969F20]);
    v35 = v15;
    sub_1E3782CC4();
    v26 = v37;
    v27 = v36;
    sub_1E42007F4();
    sub_1E325F6F0(v4, &unk_1ECF3DB30, &unk_1E42A89B0);

    (*(v7 + 8))(v10, v5);
    (*(v38 + 8))(v27, v26);
    OUTLINED_FUNCTION_4_0();
    v28 = swift_allocObject();
    OUTLINED_FUNCTION_31_3(v28);
    OUTLINED_FUNCTION_5_117();
    sub_1E328FCF4(v29, v30, v31);
    v32 = v34;
    v33 = v35;
    sub_1E4200844();

    (*(v17 + 8))(v32, v33);
    OUTLINED_FUNCTION_11_3(v1 + OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_cancellables, v40);
    sub_1E42004C4();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B26BF4()
{
  v1 = OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_showEntity;
  OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_showEntity, v10);
  sub_1E327F454(v0 + v1, v13);
  OUTLINED_FUNCTION_36();
  v3 = *(v2 + 896);

  v3(&v11, v13);

  __swift_destroy_boxed_opaque_existential_1(v13);
  if (!v12)
  {
    return sub_1E325F6F0(&v11, &unk_1ECF2A740, &qword_1E42EF010);
  }

  sub_1E3251BE8(&v11, v13);
  v4 = v14;
  v5 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  sub_1E327F454(v0 + v1, &v11);
  v6 = *(v0 + OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_showDownloadsOnly);
  OUTLINED_FUNCTION_4_0();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_31_3(v7);
  v8 = *(v5 + 120);

  v8(&v11, v6, sub_1E3B27178, v7, v4, v5);

  __swift_destroy_boxed_opaque_existential_1(&v11);

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

double sub_1E3B26DBC()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_showEntity));

  return result;
}

uint64_t sub_1E3B26EA4(uint64_t a1)
{
  v1 = sub_1E3B4FF80();

  __swift_destroy_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_showEntity));

  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

unint64_t sub_1E3B27068()
{
  result = qword_1ECF336A8;
  if (!qword_1ECF336A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33698, &qword_1E42BB7E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33658, &qword_1E42BB7C0);
    v1 = sub_1E3B25240();
    sub_1E32822E0(v1, v2, v3);
    swift_getOpaqueTypeConformance2();
    sub_1E328FCF4(&qword_1ECF336B0, &qword_1ECF336A0, &qword_1E42BB7E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF336A8);
  }

  return result;
}

double sub_1E3B27178(uint64_t a1)
{
  OUTLINED_FUNCTION_5_0(v1 + 16, v7);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (!*(a1 + 16))
    {
      *(Strong + OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_shouldDismiss) = 1;
      type metadata accessor for LibDownloadedTVShowSeasonsViewInteractor(0);
      OUTLINED_FUNCTION_0_148();
      sub_1E3B23E8C(v5, v6);
      OUTLINED_FUNCTION_20_2();
      sub_1E4200514();
      sub_1E4200594();
    }
  }

  return result;
}

double sub_1E3B27230()
{
  OUTLINED_FUNCTION_5_0(v0 + 16, v2);
  if (swift_weakLoadStrong())
  {
    sub_1E3B26BF4();
  }

  return result;
}

double sub_1E3B2727C(uint64_t a1)
{
  v2 = *(v1 + 24);
  OUTLINED_FUNCTION_5_0(*(v1 + 16) + 16, v22);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = Strong + OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_showEntity;
    OUTLINED_FUNCTION_11_3(Strong + OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_showEntity, v21);
    v7 = *(v6 + 24);
    v8 = *(v6 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
    v9 = *(v8 + 32);

    v9(v10, v7, v8);
    swift_endAccess();
    sub_1E327F454(v6, v21);
    v11 = v21[4];
    __swift_project_boxed_opaque_existential_1(v21, v21[3]);
    v12 = OUTLINED_FUNCTION_38();
    v13(v12, v11);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA80, &qword_1E42BBA00);
    OUTLINED_FUNCTION_0_32();
    sub_1E328FCF4(v15, v16, v17);
    v18 = sub_1E4149048(v14);

    if (v18)
    {
      *(v5 + OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_shouldDismiss) = 1;
    }

    else
    {
      sub_1E3B254BC();
    }

    *(v5 + OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_isLoading) = 0;
    if (v2)
    {
      sub_1E4203E44();
      OUTLINED_FUNCTION_28_41();
    }

    else
    {
      type metadata accessor for LibDownloadedTVShowSeasonsViewInteractor(0);
      OUTLINED_FUNCTION_0_148();
      sub_1E3B23E8C(v19, v20);
      OUTLINED_FUNCTION_20_2();
      sub_1E4200514();
      sub_1E4200594();
    }
  }

  return result;
}

double sub_1E3B274AC()
{
  type metadata accessor for LibDownloadedTVShowSeasonsViewInteractor(0);
  OUTLINED_FUNCTION_0_148();
  sub_1E3B23E8C(v0, v1);
  OUTLINED_FUNCTION_22_53();
  sub_1E4200514();
  sub_1E4200594();

  return result;
}

double sub_1E3B27520()
{
  *(v0 + OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_shouldDismiss) = 1;
  type metadata accessor for LibDownloadedTVShowSeasonsViewInteractor(0);
  OUTLINED_FUNCTION_0_148();
  sub_1E3B23E8C(v1, v2);
  OUTLINED_FUNCTION_22_53();
  sub_1E4200514();
  sub_1E4200594();

  return result;
}

void sub_1E3B275A4(uint64_t *a1)
{
  v2 = v1[8];
  v3 = v1[9];
  v4 = *a1;
  OUTLINED_FUNCTION_5_0(v1[2] + 16, v16);
  if (swift_weakLoadStrong())
  {
    if (v4)
    {
    }

    else
    {
      sub_1E327F454((v1 + 3), v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770, &unk_1E42988A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE68, &unk_1E42A8E30);
      if (swift_dynamicCast())
      {
        sub_1E3251BE8(v10, v13);
        v5 = v14;
        v6 = v15;
        __swift_project_boxed_opaque_existential_1(v13, v14);
        v7 = (*(v6 + 128))(v5, v6);
        if (v7 == 2 || (v7 & 1) != 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
          v8 = swift_allocObject();
          *(v8 + 16) = xmmword_1E4298880;
          *(v8 + 32) = v3;
          v9 = *(*v2 + 1352);

          v9(v8);

          sub_1E3B25EE0();
        }

        __swift_destroy_boxed_opaque_existential_1(v13);
      }

      else
      {

        v11 = 0;
        memset(v10, 0, sizeof(v10));
        sub_1E325F6F0(v10, &qword_1ECF2CE78, &unk_1E42C61E0);
      }
    }
  }
}

uint64_t objectdestroy_2Tm()
{

  sub_1E3264CE0(*(v0 + 48), *(v0 + 56));
  sub_1E3264CE0(*(v0 + 72), *(v0 + 80));

  return swift_deallocObject();
}

void sub_1E3B277F4(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    v3 = *(v2 + 32);
    if (v3)
    {
      v4 = *(*v3 + 216);

      v6 = v4(v5);

      if ([objc_opt_self() isPad] & 1) == 0 || (sub_1E3A2511C(v6) & 1) == 0 || (type metadata accessor for LibDownloadedTVShowSeasonsViewInteractor(0), OUTLINED_FUNCTION_0_148(), sub_1E3B23E8C(v7, v8), OUTLINED_FUNCTION_57(), sub_1E4200BC4(), , , OUTLINED_FUNCTION_36(), v10 = (*(v9 + 864))(), , (v10))
      {
        v11 = [objc_opt_self() currentNavigationController];
        if (v11)
        {
          v12 = v11;
          v16 = [v11 popViewControllerAnimated_];
        }
      }
    }

    else
    {
      type metadata accessor for AppEnvironment(0);
      OUTLINED_FUNCTION_7_117();
      v15 = sub_1E3B23E8C(v13, v14);
      OUTLINED_FUNCTION_6_46(v15);
      __break(1u);
    }
  }
}

void sub_1E3B27A04(uint64_t *a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = *a1;
  OUTLINED_FUNCTION_5_0(v1[2] + 16, v104);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v82 = Strong;
  OUTLINED_FUNCTION_8();
  v7 = *(v6 + 672);

  v9 = v7(v8);

  v10 = 0;
  v11 = *(v9 + 16);
  for (i = v9 + 32; ; i += 40)
  {
    if (v11 == v10)
    {

      return;
    }

    if (v10 >= *(v9 + 16))
    {
      goto LABEL_131;
    }

    sub_1E327F454(i, &v98);
    v13 = v99;
    v14 = v100;
    __swift_project_boxed_opaque_existential_1(&v98, v99);
    v16 = (*(v14 + 16))(v13, v14) == v2 && v15 == v3;
    if (v16)
    {
      break;
    }

    v13 = sub_1E42079A4();

    if (v13)
    {
      goto LABEL_13;
    }

    __swift_destroy_boxed_opaque_existential_1(&v98);
    ++v10;
  }

LABEL_13:

  sub_1E3251BE8(&v98, v97);
  sub_1E3251BE8(v97, v101);
  v17 = *(v82 + OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_templateViewModel);
  if (!v17)
  {
    goto LABEL_120;
  }

  OUTLINED_FUNCTION_8();
  v18 += 58;
  v19 = *v18;
  v20 = v18;

  v22 = v19(v21);

  if (!v22)
  {
    goto LABEL_120;
  }

  v23 = MEMORY[0x1E69E7CC0];
  *&v97[0] = MEMORY[0x1E69E7CC0];
  sub_1E32AE9B0(v22);
  OUTLINED_FUNCTION_16_77();
  while (v20 != v17)
  {
    if (v13)
    {
      MEMORY[0x1E6911E60](v17, v22);
    }

    else
    {
      if (v17 >= *(v14 + 16))
      {
        goto LABEL_133;
      }
    }

    if (__OFADD__(v17, 1))
    {
      goto LABEL_132;
    }

    type metadata accessor for CollectionViewModel();
    if (swift_dynamicCastClass())
    {
      MEMORY[0x1E6910BF0]();
      v24 = *((*&v97[0] & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((*&v97[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= v24 >> 1)
      {
        OUTLINED_FUNCTION_35(v24);
        sub_1E42062F4();
      }

      OUTLINED_FUNCTION_53();
      sub_1E4206324();
      v85 = *&v97[0];
      v17 = (v17 + 1);
    }

    else
    {

      v17 = (v17 + 1);
    }
  }

  sub_1E32AE9B0(v85);
  v25 = 0;
  OUTLINED_FUNCTION_23_52();
  v88 = v23;
  v86 = v4;
LABEL_28:
  if (v25 == v84)
  {

    *&v98 = v23;
    v55 = sub_1E32AE9B0(v88);
    v56 = 0;
    v57 = v88 & 0xC000000000000001;
    v58 = v4 + 56;
    for (j = v55; ; v55 = j)
    {
      while (1)
      {
        if (v56 == v55)
        {

          v71 = sub_1E3A747C4(v98);

          if (v71)
          {
            v72 = sub_1E32AE9B0(v71);
            v73 = 0;
            v74 = MEMORY[0x1E69E7CC0];
            while (v72 != v73)
            {
              if ((v71 & 0xC000000000000001) != 0)
              {
                MEMORY[0x1E6911E60](v73, v71);
              }

              else
              {
                if (v73 >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_138;
                }
              }

              if (__OFADD__(v73, 1))
              {
                goto LABEL_137;
              }

              OUTLINED_FUNCTION_8();
              (*(v75 + 1496))(v97);

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v74 = sub_1E3923890(0, v74[2] + 1, 1, v74);
              }

              v77 = v74[2];
              v76 = v74[3];
              if (v77 >= v76 >> 1)
              {
                v78 = OUTLINED_FUNCTION_35(v76);
                v74 = sub_1E3923890(v78, v77 + 1, 1, v74);
              }

              v74[2] = v77 + 1;
              sub_1E3251BE8(v97, &v74[5 * v77 + 4]);
              ++v73;
            }

            v79 = v102;
            v80 = v103;
            __swift_project_boxed_opaque_existential_1(v101, v102);
            v81 = OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_showEntity;
            OUTLINED_FUNCTION_5_0(v82 + OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_showEntity, &v98);
            sub_1E327F454(v82 + v81, v97);
            (*(v80 + 136))(v97, v74, nullsub_1, 0, v79, v80);

            __swift_destroy_boxed_opaque_existential_1(v97);
            goto LABEL_121;
          }

LABEL_120:

LABEL_121:
          __swift_destroy_boxed_opaque_existential_1(v101);
          return;
        }

        if (v57)
        {
          v59 = MEMORY[0x1E6911E60](v56, v88);
        }

        else
        {
          if (v56 >= *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_136;
          }

          v59 = *(v88 + 32 + 8 * v56);
        }

        v26 = __OFADD__(v56++, 1);
        if (v26)
        {
          goto LABEL_135;
        }

        if (*(v4 + 16))
        {
          break;
        }

LABEL_102:
      }

      v60 = *(v59 + 16);
      v61 = *(v59 + 24);
      sub_1E4207B44();
      sub_1E4207B64();
      if (v61)
      {

        sub_1E4206014();
      }

      v62 = sub_1E4207BA4();
      v63 = -1 << *(v4 + 32);
      v64 = v62 & ~v63;
      if (((*(v58 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64) & 1) == 0)
      {

        goto LABEL_102;
      }

      v65 = v57;
      v66 = ~v63;
      v67 = *(v4 + 48);
      while (1)
      {
        v68 = (v67 + 16 * v64);
        v69 = v68[1];
        if (!v69)
        {
          if (!v61)
          {
            goto LABEL_104;
          }

          goto LABEL_99;
        }

        if (v61)
        {
          v70 = *v68 == v60 && v69 == v61;
          if (v70 || (sub_1E42079A4() & 1) != 0)
          {
            break;
          }
        }

LABEL_99:
        v64 = (v64 + 1) & v66;
        if (((*(v58 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64) & 1) == 0)
        {

          goto LABEL_105;
        }
      }

LABEL_104:
      sub_1E4207544();
      sub_1E4207584();
      OUTLINED_FUNCTION_53();
      sub_1E4207594();
      sub_1E4207554();
LABEL_105:
      v4 = v86;
      v57 = v65;
    }
  }

  sub_1E34AF4E4(v25, v83 == 0, v85);
  if (v83)
  {
    MEMORY[0x1E6911E60](v25, v85);
  }

  else
  {
  }

  v26 = __OFADD__(v25++, 1);
  if (v26)
  {
    goto LABEL_134;
  }

  OUTLINED_FUNCTION_8();
  v28 = (*(v27 + 1040))();
  if (v28)
  {
    v29 = v28;
  }

  else
  {
    v29 = v23;
  }

  v30 = sub_1E32AE9B0(v29);
  v31 = 0;
  v92 = v29 & 0xFFFFFFFFFFFFFF8;
  v93 = v29 & 0xC000000000000001;
  v87 = v29;
  v91 = v29 + 32;
  v32 = v23;
  v89 = v30;
  while (1)
  {
    if (v31 == v30)
    {

      *&v97[0] = v88;

      sub_1E379738C(v32);

      v88 = *&v97[0];
      v4 = v86;
      goto LABEL_28;
    }

    if (v93)
    {
      v34 = MEMORY[0x1E6911E60](v31, v87);
      v33 = v34;
    }

    else
    {
      if (v31 >= *(v92 + 16))
      {
        goto LABEL_125;
      }

      v33 = *(v91 + 8 * v31);
    }

    v26 = __OFADD__(v31++, 1);
    if (v26)
    {
      break;
    }

    v96 = v32;
    v35 = (*(*v33 + 872))(v34);
    if (v35)
    {
      v36 = v35;
    }

    else
    {
      v36 = v23;
    }

    v37 = v36 >> 62;
    if (v36 >> 62)
    {
      v38 = sub_1E4207384();
    }

    else
    {
      v38 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v39 = v32 >> 62;
    if (v32 >> 62)
    {
      v40 = OUTLINED_FUNCTION_52_20();
    }

    else
    {
      v40 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v41 = v40 + v38;
    if (__OFADD__(v40, v38))
    {
      goto LABEL_126;
    }

    v95 = v38;

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (v39)
    {
      v43 = 0;
    }

    else
    {
      v43 = isUniquelyReferenced_nonNull_bridgeObject;
    }

    if (v43 == 1 && (v44 = v96 & 0xFFFFFFFFFFFFFF8, v45 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1, v45 >= v41))
    {
      v32 = v96;
    }

    else
    {
      if (v39)
      {
        OUTLINED_FUNCTION_52_20();
      }

      v32 = sub_1E4207514();
      v44 = v32 & 0xFFFFFFFFFFFFFF8;
      v45 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    }

    v46 = *(v44 + 16);
    if (v37)
    {
      v50 = v44;
      v51 = sub_1E4207384();
      v44 = v50;
      v47 = v51;
      if (!v51)
      {
        goto LABEL_64;
      }

LABEL_60:
      v48 = v45 - v46;
      v49 = v95;
      if (v48 < v95)
      {
        goto LABEL_128;
      }

      v90 = v44;
      if (v37)
      {
        if (v47 < 1)
        {
          goto LABEL_130;
        }

        OUTLINED_FUNCTION_0_32();
        sub_1E328FCF4(&qword_1EE23B540, &unk_1ECF2C790, &qword_1E42996A0);
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
          v52 = sub_1E3797EB0(v97, 0, v36);

          (v52)(v97, 0);
          OUTLINED_FUNCTION_26_49();
        }

        while (!v16);

        v49 = v95;
        v23 = MEMORY[0x1E69E7CC0];
        v30 = v89;
      }

      else
      {
        type metadata accessor for ViewModel();
        swift_arrayInitWithCopy();
      }

      if (v49 > 0)
      {
        v53 = *(v90 + 16);
        v26 = __OFADD__(v53, v49);
        v54 = v53 + v49;
        if (v26)
        {
          goto LABEL_129;
        }

        *(v90 + 16) = v54;
      }
    }

    else
    {
      v47 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v47)
      {
        goto LABEL_60;
      }

LABEL_64:

      if (v95 > 0)
      {
        goto LABEL_127;
      }
    }
  }

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
  __break(1u);
}

uint64_t type metadata accessor for SportsScoreboardCompetitorView(uint64_t a1)
{
  result = qword_1EE292B80;
  if (!qword_1EE292B80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E3B28508()
{
  result = qword_1EE25F470;
  if (!qword_1EE25F470)
  {
    type metadata accessor for SportsScoreboardLayout();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE25F470);
  }

  return result;
}

uint64_t sub_1E3B28560@<X0>(uint64_t a1@<X8>)
{
  *a1 = *sub_1E41F0984();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF336F0, &unk_1E42BBA78);
  return sub_1E3B285B4(v2, a1 + *(v4 + 44));
}

uint64_t sub_1E3B285B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = sub_1E4201324();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v50[-v11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33700, &qword_1E42BBB08);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v50[-v14];
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33708, &qword_1E42BBB10);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  v57 = v17 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v50[-v20];
  MEMORY[0x1EEE9AC00](v22);
  v55 = v15;
  v56 = &v50[-v23];
  sub_1E3B289A8(a1, v15);
  v24 = type metadata accessor for SportsScoreboardCompetitorView(0);

  swift_retain_n();
  OUTLINED_FUNCTION_18();

  sub_1E3AC5824();
  v52 = v26;
  v53 = v25;
  v51 = v27;
  LODWORD(v24) = *(a1 + *(v24 + 32));
  sub_1E374709C(v12);
  v28 = (v5 + 8);
  if (v24 == 1)
  {
    v29 = MEMORY[0x1E697E7D0];
  }

  else
  {
    v29 = MEMORY[0x1E697E7D8];
  }

  (*(v5 + 104))(v9, *v29, v3);
  v30 = sub_1E4201314();
  v31 = *v28;
  (*v28)(v9, v3);
  v31(v12, v3);
  if (v30)
  {
    v32 = sub_1E3B2961C();
  }

  else
  {
    v32 = -sub_1E3B2961C();
  }

  v33 = sub_1E4203DA4();
  v35 = v34;
  v36 = v51 & 1;
  sub_1E3741EA0(v55, v21, &qword_1ECF33700, &qword_1E42BBB08);
  v37 = &v21[*(v54 + 36)];
  v38 = v52;
  *v37 = v53;
  *(v37 + 1) = v38;
  v37[16] = v36;
  *(v37 + 3) = v32;
  *(v37 + 4) = 0;
  *(v37 + 5) = v33;
  *(v37 + 6) = v35;
  v39 = v21;
  v40 = v56;
  sub_1E3741EA0(v39, v56, &qword_1ECF33708, &qword_1E42BBB10);
  nullsub_1();
  v42 = v41;
  v44 = v43;
  v45 = *sub_1E41F0984();
  v46 = v57;
  sub_1E3743538(v40, v57, &qword_1ECF33708, &qword_1E42BBB10);
  v47 = v58;
  sub_1E3743538(v46, v58, &qword_1ECF33708, &qword_1E42BBB10);
  v48 = (v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33710, &qword_1E42BBB18) + 48));
  *v48 = v42;
  v48[1] = v44;
  v48[2] = v45;
  v48[3] = sub_1E3803508;
  v48[4] = 0;

  sub_1E325F6F0(v40, &qword_1ECF33708, &qword_1E42BBB10);

  return sub_1E325F6F0(v46, &qword_1ECF33708, &qword_1E42BBB10);
}

uint64_t sub_1E3B289A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33718, &qword_1E42BBB20);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v65 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33720, &qword_1E42BBB28);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v65 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33728, &unk_1E42BBB30);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v67 = v65 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28D40, &qword_1E42984C0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v66 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v68 = v65 - v17;
  v18 = sub_1E4201324();
  OUTLINED_FUNCTION_0_10();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4_6();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = (v65 - v26);
  v28 = type metadata accessor for SportsScoreboardCompetitorView(0);
  if (*(a1 + *(v28 + 36)) == 1)
  {
    v29 = v28;
    v65[1] = v6;
    v30 = *(a1 + *(v28 + 32));
    v31 = a1;
    sub_1E374709C(v27);
    v32 = (v20 + 8);
    if (v30 == 1)
    {
      v33 = MEMORY[0x1E697E7D0];
    }

    else
    {
      v33 = MEMORY[0x1E697E7D8];
    }

    (*(v20 + 104))(v24, *v33, v18);
    v40 = sub_1E4201314();
    v41 = *v32;
    (*v32)(v24, v18);
    v41(v27, v18);
    if (v40)
    {
      v42 = sub_1E38267CC();
    }

    else
    {
      v42 = sub_1E38267D4();
    }

    v43 = v42;
    v44 = sub_1E3826B74();
    if (v44)
    {
      v46 = *(v44 + 16);
      v45 = *(v44 + 24);
    }

    else
    {
      v46 = 0;
      v45 = 0;
    }

    v47 = *(v31 + *(v29 + 28));
    if (v47)
    {
      v49 = *(v47 + 16);
      v48 = *(v47 + 24);

      if (v45)
      {
        if (v48)
        {
          if (v46 != v49 || v45 != v48)
          {
            v51 = sub_1E42079A4();

            if (v51)
            {
              goto LABEL_27;
            }

LABEL_25:
            v52 = 0;
LABEL_28:
            v54 = v67;
            sub_1E3B28F38(v43, v52, v67);

            v55 = *sub_1E41F0A04();
            v56 = v54;
            v57 = v66;
            sub_1E3741EA0(v56, v66, &qword_1ECF33728, &unk_1E42BBB30);
            v58 = (v57 + *(v12 + 36));
            *v58 = v55;
            v58[1] = sub_1E374AE08;
            v58[2] = 0;
            v35 = &qword_1ECF28D40;
            v36 = &qword_1E42984C0;
            v59 = v68;
            sub_1E3741EA0(v57, v68, &qword_1ECF28D40, &qword_1E42984C0);
            sub_1E3743538(v59, v9, &qword_1ECF28D40, &qword_1E42984C0);
            swift_storeEnumTagMultiPayload();
            sub_1E3B29AA8();
            OUTLINED_FUNCTION_9_0();
            sub_1E32752B0(v60, v61, v62, v63);
            sub_1E4201F44();

            v39 = v59;
            return sub_1E325F6F0(v39, v35, v36);
          }

LABEL_27:
          v53 = *(v31 + *(v29 + 24) + 8);
          swift_beginAccess();
          v52 = *(v53 + 280);

          goto LABEL_28;
        }
      }

      else if (!v48)
      {
        goto LABEL_27;
      }
    }

    else if (!v45)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  *v5 = sub_1E4201B84();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33730, &qword_1E42BBB40);
  sub_1E3B292D4(a1, &v5[*(v34 + 44)]);
  v35 = &qword_1ECF33718;
  v36 = &qword_1E42BBB20;
  sub_1E3743538(v5, v9, &qword_1ECF33718, &qword_1E42BBB20);
  swift_storeEnumTagMultiPayload();
  sub_1E3B29AA8();
  OUTLINED_FUNCTION_9_0();
  sub_1E32752B0(v37, &qword_1ECF33718, &qword_1E42BBB20, v38);
  sub_1E4201F44();
  v39 = v5;
  return sub_1E325F6F0(v39, v35, v36);
}

uint64_t sub_1E3B28F38@<X0>(__objc2_class **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v51 = v8;
  v52 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v49 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CC0, &qword_1E4298440);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v49 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28D90, &unk_1E4298510);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v49 - v22;
  if (a1 && *a1 == _TtC8VideosUI13TextViewModel)
  {
    v50 = a3;
    if (a2)
    {
      type metadata accessor for TextLayout();
      swift_dynamicCastClass();
    }

    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    v49[0] = type metadata accessor for SportsScoreboardCompetitorView(0);
    v49[1] = v3;
    OUTLINED_FUNCTION_5_29();
    v26 = *(**(*(v25 + 8) + 216) + 176);

    v26(v53, v27);
    v28 = v53[0];
    v29 = v53[1];
    v30 = v53[2];
    v31 = v53[3];

    if (v54)
    {
      v36 = OUTLINED_FUNCTION_5_8();
    }

    else
    {
      v32.n128_u64[0] = v28;
      v33.n128_u64[0] = v29;
      v34.n128_u64[0] = v30;
      v35.n128_u64[0] = v31;
      v36 = j_nullsub_1(v32, v33, v34, v35);
    }

    v40 = v36;
    v41 = v37;
    v42 = v38;
    v43 = v39;
    v44 = sub_1E4202734();
    (*(v51 + 32))(v15, v11, v52);
    v45 = &v15[*(v12 + 36)];
    *v45 = v44;
    *(v45 + 1) = v40;
    *(v45 + 2) = v41;
    *(v45 + 3) = v42;
    *(v45 + 4) = v43;
    v45[40] = 0;
    v46 = sub_1E3827278();

    if (v46)
    {
      v47 = 1.0;
    }

    else
    {
      v47 = 0.0;
    }

    sub_1E3741EA0(v15, v20, &qword_1ECF28CC0, &qword_1E4298440);
    *(v20 + *(v16 + 36)) = v47;
    OUTLINED_FUNCTION_8_85(v20, v23);
    v48 = v50;
    OUTLINED_FUNCTION_8_85(v23, v50);
    return __swift_storeEnumTagSinglePayload(v48, 0, 1, v16);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v16);
  }
}

uint64_t sub_1E3B292D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238, &unk_1E42999B0);
  OUTLINED_FUNCTION_0_10();
  v36 = v4;
  v37 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33738, &qword_1E42BBB48);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33740, &unk_1E42BBB50);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v35 - v18;
  v20 = type metadata accessor for SportsScoreboardCompetitorView(0);
  if (*(a1 + *(v20 + 28)))
  {
    v21 = v20;
    if (sub_1E39C408C())
    {
      type metadata accessor for ImageViewModel();
      v22 = swift_dynamicCastClass();
      if (v22)
      {
        v35 = v22;
        sub_1E3EB9BB4(v39);
        v23 = sub_1E3827278();
        v24 = *(a1 + *(v21 + 24) + 8);
        if (v23)
        {
          v25 = (v24 + 208);
        }

        else
        {
          v25 = (v24 + 272);
        }

        swift_beginAccess();
        v28 = *v25;

        v29 = OUTLINED_FUNCTION_18();
        sub_1E37E8BE8(v35, v39, v28, v29 & 1, 0, 0, v7);

        sub_1E375C31C(v39);
        v30 = *sub_1E41F0984();
        (*(v36 + 32))(v11, v7, v37);
        v31 = &v11[*(v8 + 36)];
        *v31 = v30;
        v31[1] = sub_1E38034E0;
        v31[2] = 0;
        v32 = *sub_1E41F0A04();

        sub_1E3741EA0(v11, v16, &qword_1ECF33738, &qword_1E42BBB48);
        v33 = (v16 + *(v12 + 36));
        *v33 = v32;
        v33[1] = sub_1E374A0BC;
        v33[2] = 0;
        OUTLINED_FUNCTION_8_85(v16, v19);
        v34 = v38;
        OUTLINED_FUNCTION_8_85(v19, v38);
        return __swift_storeEnumTagSinglePayload(v34, 0, 1, v12);
      }
    }
  }

  v26 = v38;

  return __swift_storeEnumTagSinglePayload(v26, 1, 1, v12);
}

double sub_1E3B2961C()
{
  type metadata accessor for SportsScoreboardCompetitorView(0);
  OUTLINED_FUNCTION_5_29();
  v1 = *(v0 + 8);
  v2 = *(**(v1 + 184) + 200);

  v4 = COERCE_DOUBLE(v2(v3));
  v6 = v5;

  if (sub_1E3827278())
  {
    v7 = v1 + 208;
  }

  else
  {
    v7 = v1 + 272;
  }

  swift_beginAccess();
  v8 = v4 * 0.5;
  v9 = *(**v7 + 200);

  v11 = COERCE_DOUBLE(v9(v10));
  v13 = v12;

  v14 = v11 * -0.5;
  if (v13)
  {
    v14 = -0.0;
  }

  v15 = 0.0;
  if ((v6 & 1) == 0)
  {
    v15 = v8;
  }

  return v14 - v15;
}

uint64_t sub_1E3B2975C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20, &qword_1E429F7D0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E3B297BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X8>)
{
  sub_1E3B29868(a1, a7);
  v12 = type metadata accessor for SportsScoreboardCompetitorView(0);
  *(a7 + v12[5]) = a2;
  v13 = (a7 + v12[6]);
  type metadata accessor for SportsScoreboardLayout();
  sub_1E3B28508();
  result = sub_1E42010C4();
  *v13 = result;
  v13[1] = v15;
  *(a7 + v12[7]) = a4;
  *(a7 + v12[8]) = a5;
  *(a7 + v12[9]) = a6;
  return result;
}

uint64_t sub_1E3B29868(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70, &unk_1E42983D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1E3B29920(uint64_t a1)
{
  sub_1E3B29A44(319, &qword_1EE289EA8, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ScoreboardViewModel(319);
    if (v2 <= 0x3F)
    {
      sub_1E374A2C0(319);
      if (v3 <= 0x3F)
      {
        sub_1E3B29A44(319, qword_1EE23B6C8, type metadata accessor for ViewModel, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E3B29A44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1E3B29AA8()
{
  result = qword_1EE289520;
  if (!qword_1EE289520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28D40, &qword_1E42984C0);
    sub_1E3B29B34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289520);
  }

  return result;
}

unint64_t sub_1E3B29B34()
{
  result = qword_1EE289718;
  if (!qword_1EE289718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33728, &unk_1E42BBB30);
    sub_1E3B29BB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289718);
  }

  return result;
}

unint64_t sub_1E3B29BB8()
{
  result = qword_1EE289720;
  if (!qword_1EE289720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF28D90, &unk_1E4298510);
    sub_1E38C9F4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289720);
  }

  return result;
}

void sub_1E3B29C48()
{
  OUTLINED_FUNCTION_31_1();
  v74 = v0;
  v78 = v1;
  v79 = v2;
  v4 = v3;
  v72 = v5;
  v69 = v6;
  v71 = sub_1E4204874();
  OUTLINED_FUNCTION_0_10();
  v68 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v67 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0, &qword_1E429EC30);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v66 = &v65 - v12;
  v13 = type metadata accessor for ImpressionableItem(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  v18 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v73 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4_6();
  v23 = (v21 - v22);
  MEMORY[0x1EEE9AC00](v24);
  v70 = &v65 - v25;
  v26 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_4_6();
  v30 = (v28 - v29);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v65 - v32;
  OUTLINED_FUNCTION_90();
  sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v76 = v35;
  v77 = v34;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v36);
  v75 = &v65 - v37;
  v38 = [objc_opt_self() sharedInstance];
  if (v38)
  {
    v39 = v38;
    v40 = [v38 impressionTrackingDisabled];

    if (v40)
    {
      v41 = *(v26 + 16);
      v41(v33, v74, v4);
      v41(v30, v33, v4);
      OUTLINED_FUNCTION_4_123();
      v44 = sub_1E3B2AB40(v42, v43, &unk_1E42BBBE4);
      v45 = v78;
      v80 = v78;
      v81 = v44;
      OUTLINED_FUNCTION_4_1();
      swift_getWitnessTable();
      v46 = v75;
      OUTLINED_FUNCTION_90();
      sub_1E37B8D98(v47, v48);
      v49 = *(v26 + 8);
      v49(v30, v4);
      v49(v33, v4);
    }

    else
    {
      sub_1E3B2A208(v69, v66);
      (*(v68 + 16))(v67, v72, v71);
      sub_1E3B2A278();
      v50 = v13;
      v45 = v78;
      MEMORY[0x1E690DE70](v17, v4, v50, v78);
      sub_1E3B2AAE8(v17, type metadata accessor for ImpressionableItem);
      v51 = sub_1E3B2AB40(qword_1EE2A0B80, type metadata accessor for ImpressionableItem, &unk_1E42BBBE4);
      v86 = v45;
      v87 = v51;
      OUTLINED_FUNCTION_4_1();
      swift_getWitnessTable();
      v52 = v73;
      v53 = *(v73 + 16);
      v54 = v70;
      v53(v70, v23, v18);
      v55 = *(v52 + 8);
      v55(v23, v18);
      v53(v23, v54, v18);
      v46 = v75;
      OUTLINED_FUNCTION_90();
      sub_1E37B8E90(v56, v57, v58);
      v55(v23, v18);
      v55(v54, v18);
    }

    OUTLINED_FUNCTION_4_123();
    v61 = sub_1E3B2AB40(v59, v60, &unk_1E42BBBE4);
    v84 = v45;
    v85 = v61;
    OUTLINED_FUNCTION_4_1();
    WitnessTable = swift_getWitnessTable();
    v82 = v45;
    v83 = WitnessTable;
    OUTLINED_FUNCTION_2_25();
    v63 = v77;
    swift_getWitnessTable();
    v64 = v76;
    (*(v76 + 16))(v79, v46, v63);
    (*(v64 + 8))(v46, v63);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E3B2A208(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0, &qword_1E429EC30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1E3B2A278()
{
  OUTLINED_FUNCTION_31_1();
  v30 = v0;
  v2 = v1;
  v4 = v3;
  v5 = sub_1E4204624();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0, &qword_1E429EC30);
  MEMORY[0x1EEE9AC00](v12 - 8);
  OUTLINED_FUNCTION_4_6();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - v17;
  v19 = objc_opt_self();
  v20 = &selRef_initWithMediaInfo_watchType_isRentAndWatchNow_;
  if ([v19 isVision])
  {
    goto LABEL_2;
  }

  sub_1E3B2A208(v2, v18);
  v22 = sub_1E4204724();
  if (__swift_getEnumTagSinglePayload(v18, 1, v22) == 1)
  {
    sub_1E38858D4(v18);
LABEL_9:
    sub_1E38858D4(v2);
    v24 = v4;
    v25 = v22;
    goto LABEL_10;
  }

  sub_1E42046F4();
  (*(*(v22 - 8) + 8))(v18, v22);
  sub_1E3F6ABA4(0);
  v23 = sub_1E4204604();
  v29 = v2;
  v20 = &selRef_initWithMediaInfo_watchType_isRentAndWatchNow_;

  (*(v7 + 8))(v11, v5);
  v2 = v29;
  if (v23 == 2 || (v23 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_2:
  if (![v19 v20[497]])
  {
LABEL_13:
    sub_1E3B2B0C4(v2, v4);
    goto LABEL_14;
  }

  sub_1E3B2A208(v2, v15);
  v21 = sub_1E4204724();
  if (__swift_getEnumTagSinglePayload(v15, 1, v21) == 1)
  {
    sub_1E38858D4(v15);
    goto LABEL_13;
  }

  sub_1E42046F4();
  (*(*(v21 - 8) + 8))(v15, v21);
  sub_1E3F6ABA4(0);
  v26 = sub_1E4204604();

  (*(v7 + 8))(v11, v5);
  if (v26 == 2 || (v26 & 1) != 0)
  {
    goto LABEL_13;
  }

  sub_1E38858D4(v2);
  v24 = v4;
  v25 = v21;
LABEL_10:
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v25);
LABEL_14:
  v27 = *(type metadata accessor for ImpressionableItem(0) + 20);
  sub_1E4204874();
  OUTLINED_FUNCTION_2();
  (*(v28 + 32))(v4 + v27, v30);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B2A5DC()
{
  OUTLINED_FUNCTION_31_1();
  WitnessTable = v0;
  v63 = v1;
  v64 = v2;
  v4 = v3;
  v55 = v6;
  v56 = v5;
  v7 = type metadata accessor for ImpressionableItems(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = (v10 - v9);
  v12 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v58 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_6();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v57 = &v55 - v19;
  v20 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4_6();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v55 - v26;
  sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v61 = v29;
  v62 = v28;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v30);
  v60 = &v55 - v31;
  v32 = [objc_opt_self() sharedInstance];
  if (v32)
  {
    v33 = v32;
    v34 = [v32 impressionTrackingDisabled];

    if (v34)
    {
      v35 = *(v20 + 16);
      v35(v27, WitnessTable, v4);
      v35(v24, v27, v4);
      OUTLINED_FUNCTION_3_122();
      v38 = sub_1E3B2AB40(v36, v37, &unk_1E42BBB94);
      v39 = v63;
      v65 = v63;
      v66 = v38;
      OUTLINED_FUNCTION_4_1();
      swift_getWitnessTable();
      v40 = v60;
      sub_1E37B8D98(v24, v4);
      v41 = *(v20 + 8);
      v41(v24, v4);
      v41(v27, v4);
    }

    else
    {
      v42 = *(v7 + 20);
      sub_1E4204874();
      OUTLINED_FUNCTION_2();
      (*(v43 + 16))(&v11[v42], v55);
      *v11 = v56;

      v39 = v63;
      MEMORY[0x1E690DE70](v11, v4, v7, v63);
      sub_1E3B2AAE8(v11, type metadata accessor for ImpressionableItems);
      v44 = sub_1E3B2AB40(&qword_1ECF56488, type metadata accessor for ImpressionableItems, &unk_1E42BBB94);
      v71 = v39;
      v72 = v44;
      OUTLINED_FUNCTION_4_1();
      WitnessTable = swift_getWitnessTable();
      v45 = v57;
      v46 = v58;
      v47 = *(v58 + 16);
      v47(v57, v17, v12);
      v48 = *(v46 + 8);
      v48(v17, v12);
      v47(v17, v45, v12);
      v40 = v60;
      sub_1E37B8E90(v17, v4, v12);
      v48(v17, v12);
      v48(v45, v12);
    }

    OUTLINED_FUNCTION_3_122();
    v51 = sub_1E3B2AB40(v49, v50, &unk_1E42BBB94);
    v69 = v39;
    v70 = v51;
    OUTLINED_FUNCTION_4_1();
    v52 = swift_getWitnessTable();
    v67 = v39;
    v68 = v52;
    OUTLINED_FUNCTION_2_25();
    v53 = v62;
    swift_getWitnessTable();
    v54 = v61;
    (*(v61 + 16))(v64, v40, v53);
    (*(v54 + 8))(v40, v53);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E3B2AAE8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1E3B2AB40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t get_witness_table_7SwiftUI4ViewRzlAA19_ConditionalContentVyxAA08ModifiedE0Vyx06VideosB018ImpressionableItem33_279870158F59CE1CECC75FF3E99FC40ELLVGGAaBHPxAaBHD1__AkaBHPxAaBHD1__AjA0C8ModifierHPyHCHCHCTm(uint64_t *a1, void (*a2)(uint64_t), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  a2(255);
  sub_1E42013A4();
  OUTLINED_FUNCTION_90();
  sub_1E4201F54();
  sub_1E3B2AB40(a3, a4, a5);
  OUTLINED_FUNCTION_4_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_25();
  return swift_getWitnessTable();
}

void sub_1E3B2ACC4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_1E3B2AD50(319, a4, a5);
  if (v5 <= 0x3F)
  {
    sub_1E4204874();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E3B2AD50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1E4204724();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1E3B2ADC8()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0, &qword_1E429EC30);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v18 - v6;
  v8 = sub_1E4203DA4();
  v10 = v9;
  v11 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33748, &qword_1E42BBC38) + 36);
  sub_1E3B2A208(v0, v7);
  v12 = sub_1E4204724();
  v13 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v12);
  sub_1E38858D4(v7);
  if (EnumTagSinglePayload != 1)
  {
    v18[1] = sub_1E42036E4();
    type metadata accessor for ImpressionableItem(0);
    sub_1E4202C84();

    v13 = 0;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33750, &qword_1E42BBC40);
  __swift_storeEnumTagSinglePayload(v11, v13, 1, v15);
  v16 = (v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33758, &qword_1E42BBC48) + 36));
  *v16 = v8;
  v16[1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33760, &qword_1E42BBC50);
  OUTLINED_FUNCTION_2();
  (*(v17 + 16))(v4, v2);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B2AF94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E4203DA4();
  v6 = v5;
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33768, &qword_1E42BBC58) + 36);
  sub_1E42036E4();
  type metadata accessor for ImpressionableItems(0);
  sub_1E4202C94();

  v8 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33770, &qword_1E42BBC60) + 36));
  *v8 = v4;
  v8[1] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33778, &qword_1E42BBC68);
  OUTLINED_FUNCTION_2();
  return (*(v9 + 16))(a2, a1);
}

uint64_t sub_1E3B2B0C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0, &qword_1E429EC30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E3B2B134()
{
  result = qword_1EE289A70;
  if (!qword_1EE289A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33748, &qword_1E42BBC38);
    sub_1E32752B0(&qword_1EE2888E8, &qword_1ECF33760, &qword_1E42BBC50, MEMORY[0x1E697FDF8]);
    sub_1E32752B0(&qword_1EE289248, &qword_1ECF33758, &qword_1E42BBC48, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289A70);
  }

  return result;
}

unint64_t sub_1E3B2B218()
{
  result = qword_1ECF33780;
  if (!qword_1ECF33780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33768, &qword_1E42BBC58);
    sub_1E32752B0(&qword_1ECF33788, &qword_1ECF33778, &qword_1E42BBC68, MEMORY[0x1E697FDF8]);
    sub_1E32752B0(&qword_1ECF33790, &qword_1ECF33770, &qword_1E42BBC60, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33780);
  }

  return result;
}

unint64_t sub_1E3B2B300()
{
  sub_1E4207784();
  OUTLINED_FUNCTION_50();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1E3B2B348(char a1)
{
  result = 0x6E697265746C6966;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
    case 7:
      result = 0xD000000000000017;
      break;
    case 8:
      result = 0x64656C62616E65;
      break;
    case 9:
      result = 0xD000000000000019;
      break;
    case 10:
      result = 0xD00000000000001ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E3B2B4A0(char a1, char a2)
{
  v3 = sub_1E3B2B348(a1);
  v5 = v4;
  if (v3 == sub_1E3B2B348(a2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3B2B52C(char a1)
{
  sub_1E4207B44();
  sub_1E3B2B348(a1);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3B2B598(uint64_t a1, char a2)
{
  sub_1E3B2B348(a2);
  sub_1E4206014();
}

uint64_t sub_1E3B2B5F4(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E3B2B348(a2);
  sub_1E4206014();

  return sub_1E4207BA4();
}

unint64_t sub_1E3B2B654@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3B2B300();
  *a1 = result;
  return result;
}

unint64_t sub_1E3B2B684@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1E3B2B348(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3B2B700(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_1(a1);
  *(v2 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E3B2B758(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  OUTLINED_FUNCTION_11_3(v5, v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_1E3900F50;
}

uint64_t sub_1E3B2B7DC()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_loggingIdentifier);
  OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_loggingIdentifier, v4);
  v2 = *v1;

  return v2;
}

uint64_t sub_1E3B2B82C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_1(a1);
  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_1E3B2B938()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x6A8))();
  if (!v2)
  {
    return 0;
  }

  return result;
}

double sub_1E3B2B998()
{
  v1 = OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_autoDismissalDuration;
  OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_autoDismissalDuration, v3);
  return *(v0 + v1);
}

uint64_t sub_1E3B2B9D4(double a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_autoDismissalDuration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1E3B2BA40()
{
  v1 = OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController____lazy_storage___backgroudGradientView;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController____lazy_storage___backgroudGradientView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController____lazy_storage___backgroudGradientView);
LABEL_17:
    v95 = v2;
    return v3;
  }

  v4 = v0;
  type metadata accessor for GradientView();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v5 setVuiUserInteractionEnabled_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E42A1E20;
  v7 = objc_opt_self();
  *(inited + 32) = [v7 blackColor];
  v8 = [v7 blackColor];
  v9 = [v8 colorWithAlphaComponent_];

  *(inited + 40) = v9;
  v10 = [v7 blackColor];
  v11 = [v10 colorWithAlphaComponent_];

  *(inited + 48) = v11;
  v12 = [v7 blackColor];
  v13 = [v12 colorWithAlphaComponent_];

  *(inited + 56) = v13;
  v14 = MEMORY[0x1E69E7CC0];
  v104 = MEMORY[0x1E69E7CC0];
  result = sub_1E4207574();
  v16 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x1E6911E60](0, inited);
    goto LABEL_7;
  }

  v17 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v17)
  {
    if (v17 > 3)
    {
      v18 = *(inited + 32);
LABEL_7:
      v19 = v18;
      v20 = [v18 CGColor];

      v21 = sub_1E4207544();
      OUTLINED_FUNCTION_16_78(v21, v22, v23, v24, v25, v26, v27, v28, v96, v104);
      OUTLINED_FUNCTION_25_54();
      sub_1E4207594();
      sub_1E4207554();
      if (v16)
      {
        v29 = MEMORY[0x1E6911E60](1, inited);
      }

      else
      {
        v29 = *(inited + 40);
      }

      v30 = v29;
      v31 = [v29 CGColor];

      v32 = sub_1E4207544();
      OUTLINED_FUNCTION_16_78(v32, v33, v34, v35, v36, v37, v38, v39, v97, v105);
      OUTLINED_FUNCTION_25_54();
      sub_1E4207594();
      sub_1E4207554();
      if (v16)
      {
        v40 = MEMORY[0x1E6911E60](2, inited);
      }

      else
      {
        v40 = *(inited + 48);
      }

      v41 = v40;
      v42 = [v40 CGColor];

      v43 = sub_1E4207544();
      OUTLINED_FUNCTION_16_78(v43, v44, v45, v46, v47, v48, v49, v50, v98, v106);
      OUTLINED_FUNCTION_25_54();
      sub_1E4207594();
      sub_1E4207554();
      if (v16)
      {
        v51 = MEMORY[0x1E6911E60](3, inited);
      }

      else
      {
        v51 = *(inited + 56);
      }

      v52 = v51;
      v53 = [v51 CGColor];

      v54 = sub_1E4207544();
      OUTLINED_FUNCTION_16_78(v54, v55, v56, v57, v58, v59, v60, v61, v99, v107);
      OUTLINED_FUNCTION_25_54();
      sub_1E4207594();
      sub_1E4207554();
      swift_setDeallocating();
      sub_1E377D458();
      sub_1E3960104(v108);
      sub_1E4207574();
      v62 = OUTLINED_FUNCTION_79_12([objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_]);
      OUTLINED_FUNCTION_17_73(v62, v63, v64, v65, v66, v67, v68, v69, v100, v14);
      OUTLINED_FUNCTION_24_48();
      sub_1E4207594();
      sub_1E4207554();
      v70 = OUTLINED_FUNCTION_79_12([objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_]);
      OUTLINED_FUNCTION_17_73(v70, v71, v72, v73, v74, v75, v76, v77, v101, v109);
      OUTLINED_FUNCTION_24_48();
      sub_1E4207594();
      sub_1E4207554();
      v78 = OUTLINED_FUNCTION_79_12([objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_]);
      OUTLINED_FUNCTION_17_73(v78, v79, v80, v81, v82, v83, v84, v85, v102, v110);
      OUTLINED_FUNCTION_24_48();
      sub_1E4207594();
      sub_1E4207554();
      v86 = OUTLINED_FUNCTION_79_12([objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_]);
      OUTLINED_FUNCTION_17_73(v86, v87, v88, v89, v90, v91, v92, v93, v103, v111);
      OUTLINED_FUNCTION_24_48();
      sub_1E4207594();
      sub_1E4207554();
      sub_1E39601D4(v112);
      sub_1E39602A0();
      sub_1E39602AC();
      [v5 setVuiAlpha_];

      v94 = *(v4 + v1);
      *(v4 + v1) = v5;
      v3 = v5;

      v2 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1E3B2BF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *(v5 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v7 = (v5 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_loggingIdentifier);
  *v7 = 0;
  v7[1] = 0;
  *(v5 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_autoDismissalDuration) = 0x403E000000000000;
  *(v5 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_autoPlayPolicies) = 0;
  v8 = OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_clockScorePollInterval;
  v9 = [objc_opt_self() sharedInstance];
  v10 = [v9 livePostPlayConfig];

  [v10 clockScorePollingInterval];
  v12 = v11;

  *(v5 + v8) = v12;
  v13 = [objc_opt_self() isPhone];
  v14 = 60.0;
  if (v13)
  {
    v14 = 20.0;
  }

  *(v5 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_shelfBottomInset) = v14;
  *(v5 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_shelfHeight) = 0x406B800000000000;
  sub_1E41FFCA4();
  *(v5 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_nonLiveGameIds) = MEMORY[0x1E69E7CD0];
  *(v5 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_cachedItems) = MEMORY[0x1E69E7CC0];
  *(v5 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_eventAvailabilityPollingTask) = 0;
  *(v5 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController____lazy_storage___backgroudGradientView) = 0;
  if (!a4)
  {
    sub_1E4205CB4();
  }

  v15 = sub_1E3DDBFB4();
  v16 = *v15;
  v17 = v15[1];
  v29 = MEMORY[0x1E69E6370];
  LOBYTE(v28) = 1;
  sub_1E329504C(&v28, v27);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1E32A87C0(v27, v16, v17, isUniquelyReferenced_nonNull_native);

  DocumentRequestViewController.init(_:supplementaryData:loadingConfiguration:documentOptions:viewControllerIdentifier:)();
  v20 = MEMORY[0x1E69E7D40];
  v21 = *((*MEMORY[0x1E69E7D40] & *v19) + 0x538);
  v22 = v19;
  v21(0);
  v23 = v22;
  v21(0);

  OUTLINED_FUNCTION_4_0();
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = *((*v20 & *v23) + 0x2E0);

  v25(sub_1E3B320A8, v24);

  return v23;
}

void sub_1E3B2C2D0()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_loggingIdentifier);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_autoDismissalDuration) = 0x403E000000000000;
  *(v0 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_autoPlayPolicies) = 0;
  v2 = OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_clockScorePollInterval;
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 livePostPlayConfig];

  [v4 clockScorePollingInterval];
  v6 = v5;

  *(v0 + v2) = v6;
  v7 = [objc_opt_self() isPhone];
  v8 = 60.0;
  if (v7)
  {
    v8 = 20.0;
  }

  *(v0 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_shelfBottomInset) = v8;
  *(v0 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_shelfHeight) = 0x406B800000000000;
  sub_1E41FFCA4();
  *(v0 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_nonLiveGameIds) = MEMORY[0x1E69E7CD0];
  *(v0 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_cachedItems) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_eventAvailabilityPollingTask) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController____lazy_storage___backgroudGradientView) = 0;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E3B2C4B0()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for LivePostPlayDocumentViewController(0);
  objc_msgSendSuper2(&v13, sel_vui_viewDidLoad);
  v1 = OUTLINED_FUNCTION_53_25();
  if (!v1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1;
  v3 = [objc_opt_self() clearColor];
  [v2 setVuiBackgroundColor_];

  v4 = OUTLINED_FUNCTION_53_25();
  if (!v4)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = v4;
  v6 = sub_1E3B2BA40();
  [v5 vui:v6 addSubview:0 oldView:?];

  v7 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1B0))();
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v9 = [v7 vuiView];

  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = [v9 superview];

  if (!v10)
  {
    return;
  }

  v11 = OUTLINED_FUNCTION_53_25();
  if (!v11)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v12 = v11;
  [v11 vui:*(v0 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController____lazy_storage___backgroudGradientView) sendSubviewToBack:?];
}

void sub_1E3B2C6A8()
{
  v28.receiver = v0;
  v28.super_class = type metadata accessor for LivePostPlayDocumentViewController(0);
  objc_msgSendSuper2(&v28, sel_vui_viewDidLayoutSubviews);
  v1 = OUTLINED_FUNCTION_53_25();
  if (!v1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v1;
  [v1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9 = OUTLINED_FUNCTION_53_25();
  if (!v9)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = v9;
  [v9 bounds];
  v12 = v11;

  v13 = *(v0 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_shelfBottomInset);
  v14 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1B0))();
  if (!v14)
  {
    goto LABEL_6;
  }

  v15 = v14;
  v16 = [v14 view];

  if (v16)
  {
    [v16 setFrame_];

LABEL_6:
    v17 = sub_1E3B2BA40();
    v18 = OUTLINED_FUNCTION_53_25();
    if (v18)
    {
      v19 = v18;
      [v18 bounds];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;

      [v17 setFrame_];
      return;
    }

    goto LABEL_10;
  }

LABEL_11:
  __break(1u);
}

void sub_1E3B2C8C4(UIViewController_optional *a1)
{
  DocumentViewController.willHostTemplateController(_:)(a1);
  if (a1)
  {
    type metadata accessor for LivePostPlayTemplateViewController(0);
    v4 = swift_dynamicCastClass();
    v5 = MEMORY[0x1E69E7D40];
    if (v4)
    {
      v2 = v4;
      v6 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x6A8))();
      (*((*v5 & *v2) + 0x8A8))(v6);
    }

    if (swift_dynamicCastClass())
    {
      v7 = *(v1 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_autoPlayPolicies);
      if (v7)
      {
        v102 = &type metadata for LivePostPlayDocumentViewController.LivePostPlayShelfPolicyKeys;
        v103 = &off_1F5D70CC8;
        LOBYTE(v99) = 6;
        v8 = a1;

        sub_1E3F9F164(&v99, v7, MEMORY[0x1E69E7CA0] + 8);
        if (v105)
        {
          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
          if ((OUTLINED_FUNCTION_4_124(v9, v10, v11, v9, v12, v13, v14, v15, v95, v99, v100, v101, v102, v103, v104[0]) & 1) == 0)
          {
            goto LABEL_19;
          }

          v16 = v95;
          __swift_destroy_boxed_opaque_existential_1(&v99);
          v102 = &type metadata for LivePostPlayDocumentViewController.LivePostPlayShelfPolicyKeys;
          v103 = &off_1F5D70CC8;
          OUTLINED_FUNCTION_0_149();
          v19 = sub_1E3F9F164(v17, v95, v18);
          if (v105)
          {
            if (OUTLINED_FUNCTION_4_124(v19, v20, v21, MEMORY[0x1E69E6370], v22, v23, v24, v25, v95, v99, v100, v101, v102, v103, v104[0]))
            {
              v2 = v95;
              __swift_destroy_boxed_opaque_existential_1(&v99);
              if (v95)
              {
                v102 = &type metadata for LivePostPlayDocumentViewController.LivePostPlayShelfPolicyKeys;
                v103 = &off_1F5D70CC8;
                OUTLINED_FUNCTION_0_149();
                v28 = sub_1E3F9F164(v26, v16, v27);
                if (v105)
                {
                  v35 = OUTLINED_FUNCTION_4_124(v28, v29, v30, MEMORY[0x1E69E63B0], v31, v32, v33, v34, v95, v99, v100, v101, v102, v103, v104[0]);
                  if (v35)
                  {
                    v2 = v95;
                  }

                  else
                  {
                    v2 = 0;
                  }

                  v36 = v35 ^ 1u;
                  __swift_destroy_boxed_opaque_existential_1(&v99);
                }

                else
                {
                  __swift_destroy_boxed_opaque_existential_1(&v99);
                  sub_1E325F7A8(v104, &unk_1ECF296E0, &unk_1E4298030);
                  v2 = 0;
                  v36 = 1;
                }

                OUTLINED_FUNCTION_5_118();
                (*(v68 + 2240))(v2, v36);
                v102 = &type metadata for LivePostPlayDocumentViewController.LivePostPlayShelfPolicyKeys;
                v103 = &off_1F5D70CC8;
                OUTLINED_FUNCTION_0_149();
                sub_1E3F9F164(v69, v16, v70);

                if (v105)
                {
                  v78 = OUTLINED_FUNCTION_4_124(v71, v72, v73, MEMORY[0x1E69E63B0], v74, v75, v76, v77, v95, v99, v100, v101, v102, v103, v104[0]);
                  OUTLINED_FUNCTION_48_28(v78, v79);
                }

                else
                {
                  __swift_destroy_boxed_opaque_existential_1(&v99);
                  sub_1E325F7A8(v104, &unk_1ECF296E0, &unk_1E4298030);
                  v16 = 0;
                  v2 = 1;
                }

                OUTLINED_FUNCTION_5_118();
                (*(v93 + 2264))(v16, v2);
              }

              else
              {
              }

LABEL_20:
              v102 = &type metadata for LivePostPlayDocumentViewController.LivePostPlayShelfPolicyKeys;
              v103 = &off_1F5D70CC8;
              OUTLINED_FUNCTION_0_149();
              sub_1E3F9F164(v37, v7, v38);

              if (v105)
              {
                v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
                if ((OUTLINED_FUNCTION_4_124(v39, v40, v41, v39, v42, v43, v44, v45, v95, v99, v100, v101, v102, v103, v104[0]) & 1) == 0)
                {
                  goto LABEL_30;
                }

                v46 = v96;
                __swift_destroy_boxed_opaque_existential_1(&v99);
                v102 = &type metadata for LivePostPlayDocumentViewController.LivePostPlayShelfPolicyKeys;
                v103 = &off_1F5D70CC8;
                OUTLINED_FUNCTION_0_149();
                v49 = sub_1E3F9F164(v47, v96, v48);
                if (v105)
                {
                  if (OUTLINED_FUNCTION_4_124(v49, v50, v51, MEMORY[0x1E69E6370], v52, v53, v54, v55, v96, v99, v100, v101, v102, v103, v104[0]))
                  {
                    v56 = v97;
                    __swift_destroy_boxed_opaque_existential_1(&v99);
                    if (v97)
                    {
                      v102 = &type metadata for LivePostPlayDocumentViewController.LivePostPlayShelfPolicyKeys;
                      v103 = &off_1F5D70CC8;
                      OUTLINED_FUNCTION_0_149();
                      v59 = sub_1E3F9F164(v57, v46, v58);
                      if (v105)
                      {
                        v66 = OUTLINED_FUNCTION_4_124(v59, v60, v61, MEMORY[0x1E69E63B0], v62, v63, v64, v65, v97, v99, v100, v101, v102, v103, v104[0]);
                        OUTLINED_FUNCTION_48_28(v66, v67);
                      }

                      else
                      {
                        __swift_destroy_boxed_opaque_existential_1(&v99);
                        sub_1E325F7A8(v104, &unk_1ECF296E0, &unk_1E4298030);
                        v56 = 0;
                        v2 = 1;
                      }

                      OUTLINED_FUNCTION_5_118();
                      (*(v80 + 2288))(v56, v2);
                      v102 = &type metadata for LivePostPlayDocumentViewController.LivePostPlayShelfPolicyKeys;
                      v103 = &off_1F5D70CC8;
                      OUTLINED_FUNCTION_0_149();
                      sub_1E3F9F164(v81, v46, v82);

                      if (v105)
                      {
                        v90 = OUTLINED_FUNCTION_4_124(v83, v84, v85, MEMORY[0x1E69E63B0], v86, v87, v88, v89, v97, v99, v100, v101, v102, v103, v104[0]);
                        if (v90)
                        {
                          v91 = v98;
                        }

                        else
                        {
                          v91 = 0;
                        }

                        v92 = v90 ^ 1u;
                        __swift_destroy_boxed_opaque_existential_1(&v99);
                      }

                      else
                      {
                        __swift_destroy_boxed_opaque_existential_1(&v99);
                        sub_1E325F7A8(v104, &unk_1ECF296E0, &unk_1E4298030);
                        v91 = 0;
                        v92 = 1;
                      }

                      OUTLINED_FUNCTION_5_118();
                      (*(v94 + 2312))(v91, v92);
                    }

                    else
                    {
                    }

                    return;
                  }

LABEL_30:

                  __swift_destroy_boxed_opaque_existential_1(&v99);
                  return;
                }
              }

              __swift_destroy_boxed_opaque_existential_1(&v99);
              sub_1E325F7A8(v104, &unk_1ECF296E0, &unk_1E4298030);
              return;
            }

LABEL_19:
            __swift_destroy_boxed_opaque_existential_1(&v99);
            goto LABEL_20;
          }
        }

        __swift_destroy_boxed_opaque_existential_1(&v99);
        sub_1E325F7A8(v104, &unk_1ECF296E0, &unk_1E4298030);
        goto LABEL_20;
      }
    }
  }
}

void sub_1E3B2CE20(char a1)
{
  v2 = sub_1E3B2BA40();
  v4 = v2;
  v3 = 0.0;
  if (a1)
  {
    v3 = 1.0;
  }

  [v2 setVuiAlpha_];
}

void sub_1E3B2CE80()
{
  v1 = v0;
  v2 = sub_1E41FFC94();
  v3 = sub_1E4206814();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_6_21();
    v5 = OUTLINED_FUNCTION_160();
    *v4 = 138412290;
    *(v4 + 4) = v1;
    *v5 = v1;
    v6 = v1;
    OUTLINED_FUNCTION_72_4(&dword_1E323F000, v7, v8, "%@ cleanup called");
    sub_1E325F7A8(v5, &unk_1ECF28E30, &qword_1E429E820);
    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_6_0();
  }

  v9 = OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_eventAvailabilityPollingTask;
  if (*&v1[OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_eventAvailabilityPollingTask])
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
    sub_1E42064D4();
  }

  *&v1[v9] = 0;

  sub_1E3B2E9E0();
}

void sub_1E3B2CFB8()
{
  sub_1E3B2D1E8();
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2F0))();
  if (!v1)
  {
    return;
  }

  v2 = v1;
  OUTLINED_FUNCTION_5_0(v1 + 56, v14);
  v3 = *(v2 + 56);

  if (!v3)
  {
    return;
  }

  (*(*v3 + 464))(v4);
  OUTLINED_FUNCTION_50();

  if (!sub_1E32AE9B0(v3))
  {
LABEL_17:

    return;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_41_1();
  }

  else
  {
    OUTLINED_FUNCTION_34_0();
    if (!v5)
    {
      __break(1u);
      goto LABEL_22;
    }
  }

  type metadata accessor for CollectionViewModel();
  if (!swift_dynamicCastClass() || (OUTLINED_FUNCTION_26_0(), (v7 = (*(v6 + 1040))()) == 0))
  {
LABEL_15:

    return;
  }

  v8 = v7;
  if (!sub_1E32AE9B0(v7))
  {

    goto LABEL_17;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
LABEL_22:
    OUTLINED_FUNCTION_41_1();
    v10 = v13;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_34_0();
  if (v9)
  {
    v10 = *(v8 + 32);

LABEL_13:

    v12 = (*(*v10 + 872))(v11);
    if (v12)
    {
      sub_1E32AE9B0(v12);

      return;
    }

    goto LABEL_15;
  }

  __break(1u);
}

void sub_1E3B2D1E8()
{
  v1 = v0;
  v2 = sub_1E41FFC94();
  v3 = sub_1E4206814();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_6_21();
    v5 = OUTLINED_FUNCTION_160();
    *v4 = 138412290;
    *(v4 + 4) = v1;
    *v5 = v1;
    v6 = v1;
    OUTLINED_FUNCTION_72_4(&dword_1E323F000, v7, v8, "%@ Filter post play shelf items");
    sub_1E325F7A8(v5, &unk_1ECF28E30, &qword_1E429E820);
    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_6_0();
  }

  v9 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2F0))();
  if (v9)
  {
    v10 = v9;
    OUTLINED_FUNCTION_5_0(v9 + 56, v67);
    v11 = *(v10 + 56);

    if (v11)
    {
      v13 = (*(*v11 + 464))(v12);

      if (v13)
      {
        if (sub_1E32AE9B0(v13))
        {
          if ((v13 & 0xC000000000000001) != 0)
          {
            goto LABEL_69;
          }

          OUTLINED_FUNCTION_34_0();
          if (!v14)
          {
            __break(1u);
            goto LABEL_71;
          }

          while (1)
          {

            type metadata accessor for CollectionViewModel();
            if (!swift_dynamicCastClass())
            {
              goto LABEL_64;
            }

            OUTLINED_FUNCTION_26_0();
            v16 = (*(v15 + 1040))();
            if (!v16)
            {
              goto LABEL_64;
            }

            v11 = v16;
            if (!sub_1E32AE9B0(v16))
            {

              goto LABEL_52;
            }

            if ((v11 & 0xC000000000000001) != 0)
            {
LABEL_71:
              MEMORY[0x1E6911E60](0, v11);
            }

            else
            {
              if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_73;
              }
            }

            OUTLINED_FUNCTION_8();
            v18 = (*(v17 + 872))();
            if (!v18)
            {

              goto LABEL_64;
            }

            v19 = v18;
            v20 = [objc_opt_self() sharedInstance];
            v21 = [v20 multiviewIdentifiers];

            v22 = sub_1E42062B4();
            v23 = sub_1E32772D8(v22);
            v24 = MEMORY[0x1E69E7CC0];
            v66 = MEMORY[0x1E69E7CC0];
            v25 = *(v1 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_cachedItems);
            v26 = sub_1E32AE9B0(v25);
            if (!v26)
            {
              break;
            }

            v27 = v26;
            v57 = v19;
            v28 = OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_nonLiveGameIds;
            v29 = v25 & 0xC000000000000001;

            v60 = v28;
            OUTLINED_FUNCTION_5_0(v1 + v28, v65);
            v30 = 0;
            v63 = v25 + 32;
            v64 = v25 & 0xFFFFFFFFFFFFFF8;
            v58 = MEMORY[0x1E69E7CC0];
            v59 = v25;
            v31 = v25;
            v61 = v25 & 0xC000000000000001;
            v62 = v27;
            while (1)
            {
              if (v29)
              {
                v32 = MEMORY[0x1E6911E60](v30, v31);
              }

              else
              {
                if (v30 >= *(v64 + 16))
                {
                  goto LABEL_68;
                }

                v32 = *(v63 + 8 * v30);
              }

              if (__OFADD__(v30++, 1))
              {
                break;
              }

              v34 = *(v32 + 24);
              if (v34)
              {
                v35 = *(v32 + 16);

                if (sub_1E3B2D8FC())
                {
                  v36 = *(v1 + v60);
                  if (*(v36 + 16))
                  {
                    sub_1E4207B44();

                    sub_1E4206014();
                    v37 = sub_1E4207BA4();
                    v38 = ~(-1 << *(v36 + 32));
                    while (1)
                    {
                      v39 = v37 & v38;
                      if (((*(v36 + 56 + (((v37 & v38) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v37 & v38)) & 1) == 0)
                      {
                        break;
                      }

                      v40 = (*(v36 + 48) + 16 * v39);
                      if (*v40 != v35 || v34 != v40[1])
                      {
                        v42 = sub_1E42079A4();
                        v37 = v39 + 1;
                        if ((v42 & 1) == 0)
                        {
                          continue;
                        }
                      }

                      v31 = v59;
                      v29 = v61;
                      v27 = v62;
                      goto LABEL_50;
                    }

                    v31 = v59;
                  }

                  v29 = v61;
                  if (*(v23 + 16))
                  {
                    sub_1E4207B44();
                    sub_1E4206014();
                    v43 = sub_1E4207BA4();
                    v44 = ~(-1 << *(v23 + 32));
                    while (1)
                    {
                      v45 = v43 & v44;
                      if (((*(v23 + 56 + (((v43 & v44) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v43 & v44)) & 1) == 0)
                      {
                        break;
                      }

                      v46 = (*(v23 + 48) + 16 * v45);
                      if (*v46 != v35 || v34 != v46[1])
                      {
                        v48 = sub_1E42079A4();
                        v43 = v45 + 1;
                        if ((v48 & 1) == 0)
                        {
                          continue;
                        }
                      }

                      v27 = v62;
                      goto LABEL_50;
                    }
                  }

                  MEMORY[0x1E6910BF0](v49);
                  v27 = v62;
                  if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_1E42062F4();
                  }

                  sub_1E4206324();

                  v58 = v66;
                }

                else
                {
                }
              }

              else
              {
              }

LABEL_50:
              if (v30 == v27)
              {

                v19 = v57;
                v24 = v58;
                goto LABEL_54;
              }
            }

            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            OUTLINED_FUNCTION_41_1();
          }

LABEL_54:

          v50 = sub_1E32AE9B0(v19);
          if (!v50)
          {
            goto LABEL_61;
          }

          v51 = v50;
          if (v50 >= 1)
          {
            v52 = 0;
            OUTLINED_FUNCTION_8();
            v54 = *(v53 + 1024);
            do
            {
              if ((v19 & 0xC000000000000001) != 0)
              {
                v55 = MEMORY[0x1E6911E60](v52, v19);
              }

              else
              {
                v55 = *(v19 + 8 * v52 + 32);
              }

              ++v52;
              v54(v55);
            }

            while (v51 != v52);
LABEL_61:

            if (sub_1E32AE9B0(v24))
            {
              OUTLINED_FUNCTION_8();
              (*(v56 + 1016))(v24);
            }

LABEL_64:

            return;
          }

LABEL_73:
          __break(1u);
        }

        else
        {
LABEL_52:
        }
      }
    }
  }
}

BOOL sub_1E3B2D8FC()
{
  sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  v2 = *(*v0 + 776);
  v3 = OUTLINED_FUNCTION_43_33();
  v4 = v2(v3);
  if (!v21)
  {
    goto LABEL_8;
  }

  if ((OUTLINED_FUNCTION_31_39(v4, v5, v6, MEMORY[0x1E69E6158]) & 1) == 0)
  {
    return 0;
  }

  LOBYTE(v19) = 2;
  v7 = OUTLINED_FUNCTION_43_33();
  v2(v7);
  if (!v21)
  {
    goto LABEL_8;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if ((OUTLINED_FUNCTION_31_39(v8, v9, v10, v8) & 1) == 0)
  {
    return 0;
  }

  sub_1E3277E60(0x6D69547472617473, 0xE900000000000065, v19, &v20);

  if (!v21)
  {
LABEL_8:
    sub_1E325F7A8(&v20, &unk_1ECF296E0, &unk_1E4298030);
    return 0;
  }

  if (OUTLINED_FUNCTION_31_39(v11, v12, v13, MEMORY[0x1E69E63B0]))
  {
    sub_1E41FE594();
    sub_1E41FE574();
    v15 = v14;
    v16 = OUTLINED_FUNCTION_13_8();
    v17(v16);
    return *&v19 <= v15 * 1000.0;
  }

  return 0;
}

void sub_1E3B2DB20()
{
  v2 = v0;
  OUTLINED_FUNCTION_26_0();
  v4 = (*(v3 + 552))();
  if (v4)
  {
    v12 = v4;
    v75 = &unk_1F5D7BE68;
    v76 = &off_1F5D7BC48;
    v13 = OUTLINED_FUNCTION_37_36(v4, v5, v6, v7, v8, v9, v10, v11, oslog, v70, v71, v72, v73, 15);
    sub_1E3F9F164(v13, v12, v14);

    if (v78)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
      if (OUTLINED_FUNCTION_78_9(&v70, v15, v16, v17, v18, v19, v20, v21, osloga, v70, v71))
      {
        v22 = v70;
        v23 = __swift_destroy_boxed_opaque_existential_1(v74);
        v75 = &type metadata for LivePostPlayDocumentViewController.LivePostPlayShelfPolicyKeys;
        v76 = &off_1F5D70CC8;
        v31 = OUTLINED_FUNCTION_37_36(v23, v24, v25, v26, v27, v28, v29, v30, oslogb, v70, v71, v72, v73, 4);
        sub_1E3F9F164(v31, v22, v32);
        if (v78)
        {
          if (swift_dynamicCast())
          {
            v33 = v70;
            __swift_destroy_boxed_opaque_existential_1(v74);
            v34 = OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_autoDismissalDuration;
            v35 = swift_beginAccess();
            *&v2[v34] = v33;
          }

          else
          {
            v35 = __swift_destroy_boxed_opaque_existential_1(v74);
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v74);
          v35 = sub_1E325F7A8(v77, &unk_1ECF296E0, &unk_1E4298030);
        }

        v75 = &type metadata for LivePostPlayDocumentViewController.LivePostPlayShelfPolicyKeys;
        v76 = &off_1F5D70CC8;
        v54 = OUTLINED_FUNCTION_37_36(v35, v36, v37, v38, v39, v40, v41, v42, oslogc, v70, v71, v72, v73, 5);
        sub_1E3F9F164(v54, v22, v55);

        if (v78)
        {
          if (OUTLINED_FUNCTION_78_9(&v73, v56, v57, v58, v59, v60, v61, v62, osloge, v70, v71))
          {
            v63 = v73;
          }

          else
          {
            v63 = 0;
          }

          __swift_destroy_boxed_opaque_existential_1(v74);
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v74);
          sub_1E325F7A8(v77, &unk_1ECF296E0, &unk_1E4298030);
          v63 = 0;
        }

        *&v2[OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_autoPlayPolicies] = v63;

        return;
      }

      __swift_destroy_boxed_opaque_existential_1(v74);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v74);
      sub_1E325F7A8(v77, &unk_1ECF296E0, &unk_1E4298030);
    }

    v47 = OUTLINED_FUNCTION_66_11(v2);
    v48 = sub_1E4206814();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = OUTLINED_FUNCTION_6_21();
      v50 = OUTLINED_FUNCTION_160();
      *v49 = 138412290;
      *(v49 + 4) = v1;
      *v50 = v1;
      v51 = v1;
      OUTLINED_FUNCTION_76_8(&dword_1E323F000, v52, v53, "%@ no shelf policies found in supplementary data");
      sub_1E325F7A8(v50, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_6_0();
    }
  }

  else
  {
    oslogd = OUTLINED_FUNCTION_66_11(v0);
    v43 = sub_1E4206814();

    if (os_log_type_enabled(oslogd, v43))
    {
      v44 = OUTLINED_FUNCTION_6_21();
      v45 = OUTLINED_FUNCTION_160();
      *v44 = 138412290;
      *(v44 + 4) = v1;
      *v45 = v1;
      v46 = v1;
      _os_log_impl(&dword_1E323F000, oslogd, v43, "%@ no supplementary data found", v44, 0xCu);
      sub_1E325F7A8(v45, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }
  }
}

void sub_1E3B2DED4()
{
  v2 = v0;
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2F0))();
  if (v3)
  {
    v4 = v3;
    OUTLINED_FUNCTION_5_0(v3 + 56, v21);
    v1 = *(v4 + 56);

    if (v1)
    {
      v6 = (*(*v1 + 464))(v5);

      if (v6)
      {
        if (!sub_1E32AE9B0(v6))
        {
LABEL_18:

          goto LABEL_19;
        }

        if ((v6 & 0xC000000000000001) != 0)
        {
          OUTLINED_FUNCTION_41_1();
          v1 = v19;
        }

        else
        {
          OUTLINED_FUNCTION_34_0();
          if (!v7)
          {
            __break(1u);
            goto LABEL_25;
          }

          v1 = *(v6 + 32);
        }

        type metadata accessor for CollectionViewModel();
        if (swift_dynamicCastClass())
        {
          OUTLINED_FUNCTION_26_0();
          v9 = (*(v8 + 1040))();
          if (v9)
          {
            v10 = v9;
            if (sub_1E32AE9B0(v9))
            {
              if ((v10 & 0xC000000000000001) == 0)
              {
                OUTLINED_FUNCTION_34_0();
                if (!v11)
                {
                  __break(1u);
                  return;
                }

                v12 = *(v10 + 32);

                goto LABEL_14;
              }

LABEL_25:
              OUTLINED_FUNCTION_41_1();
              v12 = v20;
LABEL_14:

              (*(*v12 + 872))(v13);
              OUTLINED_FUNCTION_31_4();

              if (v12)
              {
                *&v2[OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_cachedItems] = v12;

                return;
              }

              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }
    }
  }

LABEL_19:
  v14 = OUTLINED_FUNCTION_66_11(v2);
  v15 = sub_1E4206814();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = OUTLINED_FUNCTION_6_21();
    v17 = OUTLINED_FUNCTION_160();
    *v16 = 138412290;
    *(v16 + 4) = v1;
    *v17 = v2;
    v18 = v1;
    _os_log_impl(&dword_1E323F000, v14, v15, "%@ no items were found in the shelf after fetch", v16, 0xCu);
    sub_1E325F7A8(v17, &unk_1ECF28E30, &qword_1E429E820);
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_65_0();
  }
}

void sub_1E3B2E194()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  v3 = OUTLINED_FUNCTION_17_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v49 - v8;
  v9 = OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_cachedItems;
  v10 = sub_1E32AE9B0(*&v0[OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_cachedItems]);
  v11 = v0;
  v55 = sub_1E41FFC94();
  v12 = sub_1E4206814();
  v52 = v11;

  v13 = os_log_type_enabled(v55, v12);
  if (v10)
  {
    if (v13)
    {
      OUTLINED_FUNCTION_6_21();
      v14 = OUTLINED_FUNCTION_160();
      OUTLINED_FUNCTION_70_16(v14, 5.7779e-34);
      OUTLINED_FUNCTION_74_12(&dword_1E323F000, v15, v16, "%@ registering with score push updates");
      sub_1E325F7A8(v14, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_13_4();
    }

    v17 = *&v1[v9];
    v18 = sub_1E32AE9B0(v17);
    v50 = v17 & 0xC000000000000001;
    v51 = v18;
    v49 = v17 & 0xFFFFFFFFFFFFFF8;
    v53 = v17;

    for (i = 0; ; i = v38 + 1)
    {
      if (v51 == i)
      {
        goto LABEL_35;
      }

      if (v50)
      {
        v20 = MEMORY[0x1E6911E60](i, v53);
      }

      else
      {
        if (i >= *(v49 + 16))
        {
          goto LABEL_38;
        }

        v20 = *(v53 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      LOBYTE(v61) = 1;
      OUTLINED_FUNCTION_8();
      v22 = *(v21 + 776);
      v23 = OUTLINED_FUNCTION_43_33();
      v22(v23, &unk_1F5D5E968, &off_1F5D5CCD8);
      if (!v64)
      {
        goto LABEL_32;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_34;
      }

      v24 = v61;
      v25 = v62;
      LOBYTE(v61) = 0;
      v26 = OUTLINED_FUNCTION_43_33();
      v55 = v20;
      v22(v26, &unk_1F5D5E968, &off_1F5D5CCD8);
      if (!v64)
      {

LABEL_32:

        sub_1E325F7A8(&v63, &unk_1ECF296E0, &unk_1E4298030);
        goto LABEL_36;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {

LABEL_34:

LABEL_35:

LABEL_36:
        OUTLINED_FUNCTION_25_2();
        return;
      }

      v54 = i;
      v27 = v6;
      v29 = v61;
      v28 = v62;
      v30 = sub_1E4206474();
      v31 = v56;
      OUTLINED_FUNCTION_32_2();
      __swift_storeEnumTagSinglePayload(v32, v33, v34, v30);
      OUTLINED_FUNCTION_4_0();
      v35 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1E4206434();
      OUTLINED_FUNCTION_50();

      v36 = sub_1E4206424();
      v37 = swift_allocObject();
      v37[2] = v36;
      v37[3] = MEMORY[0x1E69E85E0];
      v37[4] = v35;
      v37[5] = v24;
      v37[6] = v25;
      v37[7] = v29;
      v37[8] = v28;
      v6 = v27;

      sub_1E325A828(v31, v27);
      LODWORD(v35) = __swift_getEnumTagSinglePayload(v27, 1, v30);

      if (v35 == 1)
      {
        sub_1E325F7A8(v27, &unk_1ECF2C400, &qword_1E429ABE0);
      }

      else
      {
        sub_1E4206464();
        (*(*(v30 - 8) + 8))(v27, v30);
      }

      v38 = v54;
      v39 = v37[2];
      swift_unknownObjectRetain();

      if (v39)
      {
        swift_getObjectType();
        v40 = sub_1E42063B4();
        v42 = v41;
        swift_unknownObjectRelease();
      }

      else
      {
        v40 = 0;
        v42 = 0;
      }

      sub_1E325F7A8(v56, &unk_1ECF2C400, &qword_1E429ABE0);
      OUTLINED_FUNCTION_2_4();
      v43 = swift_allocObject();
      *(v43 + 16) = &unk_1E42BBE68;
      *(v43 + 24) = v37;
      if (v42 | v40)
      {
        v57 = 0;
        v58 = 0;
        v59 = v40;
        v60 = v42;
      }

      swift_task_create();
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  else
  {
    if (v13)
    {
      OUTLINED_FUNCTION_6_21();
      v44 = OUTLINED_FUNCTION_160();
      OUTLINED_FUNCTION_70_16(v44, 5.7779e-34);
      OUTLINED_FUNCTION_74_12(&dword_1E323F000, v45, v46, "%@ cannot register with score push updates as no items were found in the shelf");
      sub_1E325F7A8(v44, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_51_2();
      OUTLINED_FUNCTION_13_4();
    }

    OUTLINED_FUNCTION_25_2();
  }
}

uint64_t sub_1E3B2E744()
{
  OUTLINED_FUNCTION_24();
  v0[8] = v1;
  v0[9] = v2;
  v0[6] = v3;
  v0[7] = v4;
  v0[5] = v5;
  sub_1E4206434();
  v0[10] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  OUTLINED_FUNCTION_51_17();
  v0[11] = v6;
  v0[12] = v7;
  v8 = OUTLINED_FUNCTION_151();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1E3B2E7D4()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_32_46();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 104) = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_1E376DBD0();
    v4 = *v3;
    *(v0 + 112) = *v3;

    v5 = v2;
    *(v0 + 136) = j__OUTLINED_FUNCTION_18() & 1;
    *(v0 + 137) = j__OUTLINED_FUNCTION_18() & 1;
    v6 = *v4;
    *(v0 + 120) = *(*v4 + 488);
    *(v0 + 128) = (v6 + 488) & 0xFFFFFFFFFFFFLL | 0x306F000000000000;

    return MEMORY[0x1EEE6DFA0](sub_1E3B2E8E4, v4, 0);
  }

  else
  {

    OUTLINED_FUNCTION_54();

    return v7();
  }
}

uint64_t sub_1E3B2E8E4()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 104);
  (*(v0 + 120))(v1, &off_1F5D70BF0, *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 136), 0, *(v0 + 137));

  v2 = *(v0 + 88);
  v3 = *(v0 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1E3B2E980, v2, v3);
}

uint64_t sub_1E3B2E980()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 104);

  OUTLINED_FUNCTION_54();

  return v2();
}

void sub_1E3B2E9E0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  v3 = OUTLINED_FUNCTION_17_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v42 - v8;
  v10 = OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_cachedItems;
  v11 = sub_1E32AE9B0(*&v0[OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_cachedItems]);
  v12 = v0;
  v47 = sub_1E41FFC94();
  v13 = sub_1E4206814();
  v46 = v12;

  v14 = os_log_type_enabled(v47, v13);
  if (v11)
  {
    if (v14)
    {
      OUTLINED_FUNCTION_6_21();
      v15 = OUTLINED_FUNCTION_160();
      OUTLINED_FUNCTION_69_15(v15, 5.7779e-34);
      OUTLINED_FUNCTION_75_9(&dword_1E323F000, v16, v17, "%@ unregistering with score push updates");
      sub_1E325F7A8(v15, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_13_4();
    }

    v18 = *&v1[v10];
    v19 = sub_1E32AE9B0(v18);
    v44 = v18 & 0xC000000000000001;
    v45 = v19;
    v43 = v18 & 0xFFFFFFFFFFFFFF8;
    v47 = v18;

    for (i = 0; ; ++i)
    {
      if (v45 == i)
      {
        goto LABEL_29;
      }

      if (v44)
      {
        MEMORY[0x1E6911E60](i, v47);
      }

      else
      {
        if (i >= *(v43 + 16))
        {
          goto LABEL_32;
        }
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      LOBYTE(v52) = 1;
      v21 = OUTLINED_FUNCTION_43_33();
      v22(v21, &unk_1F5D5E968, &off_1F5D5CCD8);
      if (!v54[3])
      {

        sub_1E325F7A8(v54, &unk_1ECF296E0, &unk_1E4298030);
        goto LABEL_30;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {

LABEL_29:

LABEL_30:
        OUTLINED_FUNCTION_25_2();
        return;
      }

      v24 = v52;
      v23 = v53;
      v25 = sub_1E4206474();
      OUTLINED_FUNCTION_32_2();
      __swift_storeEnumTagSinglePayload(v26, v27, v28, v25);
      sub_1E4206434();
      v29 = v46;
      v30 = sub_1E4206424();
      v31 = swift_allocObject();
      v31[2] = v30;
      v31[3] = MEMORY[0x1E69E85E0];
      v31[4] = v29;
      v31[5] = v24;
      v31[6] = v23;
      sub_1E325A828(v9, v6);
      LODWORD(v29) = __swift_getEnumTagSinglePayload(v6, 1, v25);

      if (v29 == 1)
      {
        sub_1E325F7A8(v6, &unk_1ECF2C400, &qword_1E429ABE0);
      }

      else
      {
        sub_1E4206464();
        (*(*(v25 - 8) + 8))(v6, v25);
      }

      v32 = v31[2];
      swift_unknownObjectRetain();

      if (v32)
      {
        swift_getObjectType();
        v33 = sub_1E42063B4();
        v35 = v34;
        swift_unknownObjectRelease();
      }

      else
      {
        v33 = 0;
        v35 = 0;
      }

      sub_1E325F7A8(v9, &unk_1ECF2C400, &qword_1E429ABE0);
      OUTLINED_FUNCTION_2_4();
      v36 = swift_allocObject();
      *(v36 + 16) = &unk_1E42BBE88;
      *(v36 + 24) = v31;
      if (v35 | v33)
      {
        v48 = 0;
        v49 = 0;
        v50 = v33;
        v51 = v35;
      }

      swift_task_create();
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    if (v14)
    {
      OUTLINED_FUNCTION_6_21();
      v37 = OUTLINED_FUNCTION_160();
      OUTLINED_FUNCTION_69_15(v37, 5.7779e-34);
      OUTLINED_FUNCTION_75_9(&dword_1E323F000, v38, v39, "%@ cannot unregister with score push updates as no items were found in the shelf");
      sub_1E325F7A8(v37, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_51_2();
      OUTLINED_FUNCTION_13_4();
    }

    OUTLINED_FUNCTION_25_2();
  }
}

uint64_t sub_1E3B2EECC()
{
  OUTLINED_FUNCTION_24();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  sub_1E4206434();
  v0[5] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  OUTLINED_FUNCTION_51_17();
  v0[6] = v4;
  v0[7] = v5;
  v6 = OUTLINED_FUNCTION_151();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1E3B2EF58()
{
  OUTLINED_FUNCTION_24();
  v1 = sub_1E376DBD0();
  v2 = *v1;
  *(v0 + 64) = *v1;

  *(v0 + 88) = j__OUTLINED_FUNCTION_18() & 1;
  v3 = *v2;
  *(v0 + 72) = *(*v2 + 496);
  *(v0 + 80) = (v3 + 496) & 0xFFFFFFFFFFFFLL | 0xE5C6000000000000;

  return MEMORY[0x1EEE6DFA0](sub_1E3B2F008, v2, 0);
}

uint64_t sub_1E3B2F008()
{
  OUTLINED_FUNCTION_24();
  (*(v0 + 72))(*(v0 + 16), &off_1F5D70BF0, *(v0 + 24), *(v0 + 32), *(v0 + 88));

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1E3B2F088, v1, v2);
}

uint64_t sub_1E3B2F088()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

double sub_1E3B2F0E0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  v3 = OUTLINED_FUNCTION_17_2(v2);
  *&result = MEMORY[0x1EEE9AC00](v3).n128_u64[0];
  v6 = &v16 - v5;
  v7 = OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_eventAvailabilityPollingTask;
  if (!*(v0 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_eventAvailabilityPollingTask))
  {
    sub_1E4206474();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
    OUTLINED_FUNCTION_4_0();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1E4206434();
    OUTLINED_FUNCTION_31_4();

    v13 = sub_1E4206424();
    v14 = swift_allocObject();
    v15 = MEMORY[0x1E69E85E0];
    v14[2] = v13;
    v14[3] = v15;
    v14[4] = v12;

    *(v1 + v7) = sub_1E37748D8(0, 0, v6, &unk_1E42BBE20, v14);
  }

  return result;
}

uint64_t sub_1E3B2F224()
{
  OUTLINED_FUNCTION_24();
  v0[10] = v1;
  v2 = sub_1E42075D4();
  v0[11] = v2;
  OUTLINED_FUNCTION_8_0(v2);
  v0[12] = v3;
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  v4 = sub_1E42075E4();
  v0[15] = v4;
  OUTLINED_FUNCTION_8_0(v4);
  v0[16] = v5;
  v0[17] = swift_task_alloc();
  v0[18] = sub_1E4206434();
  v0[19] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  OUTLINED_FUNCTION_51_17();
  v0[20] = v6;
  v0[21] = v7;
  v8 = OUTLINED_FUNCTION_151();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1E3B2F364()
{
  OUTLINED_FUNCTION_32_46();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 176) = Strong;
  if (!Strong)
  {

    goto LABEL_12;
  }

  v2 = Strong;
  type metadata accessor for TVAppLauncher(0);
  v3 = [swift_getObjCClassFromMetadata() sharedInstance];
  v4 = [v3 appController];

  if (!v4 || (v3 = [v4 appContext], *(v0 + 184) = v3, v4, !v3))
  {

    v11 = OUTLINED_FUNCTION_66_11(v2);
    v12 = sub_1E42067F4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = OUTLINED_FUNCTION_6_21();
      v14 = OUTLINED_FUNCTION_160();
      *v13 = 138412290;
      *(v13 + 4) = v3;
      *v14 = v2;
      v15 = v3;
      _os_log_impl(&dword_1E323F000, v11, v12, "%@ cannot poll event availability since app context is missing", v13, 0xCu);
      sub_1E325F7A8(v14, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_21_0();
    }

    else
    {
    }

LABEL_12:

    OUTLINED_FUNCTION_54();

    return v16();
  }

  *(v0 + 192) = OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_logger;
  v5 = v2;
  v6 = sub_1E41FFC94();
  v7 = sub_1E4206814();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_49_0();
    v9 = OUTLINED_FUNCTION_160();
    *v8 = 138412546;
    *(v8 + 4) = v5;
    *v9 = v2;
    *(v8 + 12) = 2048;
    *(v8 + 14) = *&v5[OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_clockScorePollInterval];
    v10 = v5;
    _os_log_impl(&dword_1E323F000, v6, v7, "%@ event availability polling interval - %f", v8, 0x16u);
    sub_1E325F7A8(v9, &unk_1ECF28E30, &qword_1E429E820);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_55();
  }

  if (sub_1E4206504())
  {

    goto LABEL_12;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  v19 = OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_cachedItems;
  *(v0 + 200) = v18;
  *(v0 + 208) = v19;
  *(v0 + 216) = OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_clockScorePollInterval;
  v20 = OUTLINED_FUNCTION_66_11(*(v0 + 176));
  v21 = sub_1E4206814();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = *(v0 + 176);
    v23 = OUTLINED_FUNCTION_6_21();
    v24 = OUTLINED_FUNCTION_160();
    *v23 = 138412290;
    *(v23 + 4) = v22;
    *v24 = v22;
    v25 = v22;
    OUTLINED_FUNCTION_77_11(&dword_1E323F000, v26, v27, "%@ polling availabilities for all items in the shelf");
    sub_1E325F7A8(v24, &unk_1ECF28E30, &qword_1E429E820);
    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_51_2();
  }

  v28 = *(v0 + 208);
  v29 = *(v0 + 176);

  *(v0 + 224) = *(v29 + v28);

  *(v0 + 232) = sub_1E4206424();
  OUTLINED_FUNCTION_4_0();
  v30 = swift_allocObject();
  OUTLINED_FUNCTION_68_15(v30);
  v31 = swift_task_alloc();
  OUTLINED_FUNCTION_64_15(v31);
  v32 = swift_task_alloc();
  *(v0 + 256) = v32;
  *v32 = v0;
  OUTLINED_FUNCTION_10_82(v32);
  OUTLINED_FUNCTION_8_87();

  return MEMORY[0x1EEE6DBF8](v33, v34, v35, v36, v37, v38, v39, v40);
}

uint64_t sub_1E3B2F7A4()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_63_1();
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;

  OUTLINED_FUNCTION_66_1();
  v5 = *(v4 + 168);
  v6 = *(v0 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1E3B2F930, v6, v5);
}

uint64_t sub_1E3B2F930()
{
  OUTLINED_FUNCTION_27_2();
  v1 = sub_1E4207CA4();
  v3 = v2;
  sub_1E4207AA4();
  *(v0 + 64) = v1;
  *(v0 + 72) = v3;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;
  v4 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1E3B2F9C0()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = sub_1E3B32E5C(&unk_1ECF2C4D0, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  OUTLINED_FUNCTION_13_8();
  sub_1E4207A84();
  sub_1E3B32E5C(&unk_1ECF2CCD0, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1E42075F4();
  v5 = *(v2 + 8);
  v0[33] = v5;
  v0[34] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  v0[35] = v6;
  *v6 = v0;
  v6[1] = sub_1E3B2FB40;
  v8 = v0[14];
  v7 = v0[15];

  return MEMORY[0x1EEE6DE58](v8, v0 + 5, v7, v4);
}

uint64_t sub_1E3B2FB40()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v3 + 288) = v0;

  if (v0)
  {
    (*(v3 + 264))(*(v3 + 112), *(v3 + 88));
    v6 = OUTLINED_FUNCTION_11_1();
  }

  else
  {
    v10 = *(v3 + 128);
    v9 = *(v3 + 136);
    v11 = *(v3 + 120);
    (*(v3 + 264))(*(v3 + 112), *(v3 + 88));
    (*(v10 + 8))(v9, v11);
    v7 = *(v3 + 160);
    v8 = *(v3 + 168);
    v6 = sub_1E3B2FC88;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1E3B2FC88()
{
  OUTLINED_FUNCTION_134();
  v1 = sub_1E4206504();
  v2 = v0[22];
  if (v1)
  {
    v3 = v0[23];

    OUTLINED_FUNCTION_54();

    return v4();
  }

  else
  {
    v6 = v2;
    v7 = sub_1E41FFC94();
    v8 = sub_1E4206814();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[22];
      v10 = OUTLINED_FUNCTION_6_21();
      v11 = OUTLINED_FUNCTION_160();
      *v10 = 138412290;
      *(v10 + 4) = v9;
      *v11 = v9;
      v12 = v9;
      OUTLINED_FUNCTION_77_11(&dword_1E323F000, v13, v14, "%@ polling availabilities for all items in the shelf");
      sub_1E325F7A8(v11, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_51_2();
    }

    v15 = v0[26];
    v16 = v0[22];

    v0[28] = *(v16 + v15);

    v0[29] = sub_1E4206424();
    OUTLINED_FUNCTION_4_0();
    v17 = swift_allocObject();
    OUTLINED_FUNCTION_68_15(v17);
    v18 = swift_task_alloc();
    OUTLINED_FUNCTION_64_15(v18);
    v19 = swift_task_alloc();
    v0[32] = v19;
    *v19 = v0;
    OUTLINED_FUNCTION_10_82(v19);
    OUTLINED_FUNCTION_8_87();

    return MEMORY[0x1EEE6DBF8](v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_1E3B2FE7C()
{
  OUTLINED_FUNCTION_24();
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1 = v0[20];
  v2 = v0[21];

  return MEMORY[0x1EEE6DFA0](sub_1E3B2FEEC, v1, v2);
}

uint64_t sub_1E3B2FEEC()
{
  OUTLINED_FUNCTION_134();
  v1 = *(v0 + 176);

  OUTLINED_FUNCTION_54();

  return v2();
}

uint64_t sub_1E3B2FF88()
{
  OUTLINED_FUNCTION_24();
  v0[49] = v1;
  v0[50] = v2;
  v0[47] = v3;
  v0[48] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_17_2(v5);
  v0[51] = swift_task_alloc();
  v0[52] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF337A0, &qword_1E42BBE38);
  v0[53] = v6;
  OUTLINED_FUNCTION_8_0(v6);
  v0[54] = v7;
  v0[55] = swift_task_alloc();
  v0[56] = sub_1E4206434();
  v0[57] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  OUTLINED_FUNCTION_51_17();
  v0[58] = v8;
  v0[59] = v9;
  v10 = OUTLINED_FUNCTION_151();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1E3B300B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_5_0(*(v12 + 384) + 16, v12 + 248);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v12 + 480) = Strong;
  if (Strong)
  {
    v14 = Strong;
    v15 = sub_1E32AE9B0(*(v12 + 392));
    if (v15)
    {
      v23 = v15;
      if (v15 >= 1)
      {
        v24 = 0;
        v25 = *(v12 + 392);
        v57 = v25 + 32;
        v60 = v25 & 0xC000000000000001;
        v55 = v15;
        v56 = v14;
        while (1)
        {
          if (v60)
          {
            v26 = MEMORY[0x1E6911E60](v24, *(v12 + 392));
          }

          else
          {
            v26 = *(v57 + 8 * v24);
          }

          *(v12 + 521) = 1;
          (*(*v26 + 776))(v12 + 521, &unk_1F5D5E968, &off_1F5D5CCD8);
          if (!*(v12 + 136))
          {
            break;
          }

          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_13;
          }

          v28 = *(v12 + 408);
          v27 = *(v12 + 416);
          v29 = *(v12 + 400);
          v58 = *(v12 + 352);
          v59 = *(v12 + 344);
          v30 = sub_1E4206474();
          OUTLINED_FUNCTION_32_2();
          __swift_storeEnumTagSinglePayload(v31, v32, v33, v30);
          OUTLINED_FUNCTION_4_0();
          v34 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v35 = swift_allocObject();
          *(v35 + 16) = 0u;
          *(v35 + 32) = v34;
          *(v35 + 40) = v59;
          *(v35 + 48) = v58;
          *(v35 + 56) = v29;
          sub_1E325A828(v27, v28);
          LODWORD(v28) = __swift_getEnumTagSinglePayload(v28, 1, v30);
          v36 = v29;
          v37 = *(v12 + 408);
          if (v28 == 1)
          {
            sub_1E325F7A8(*(v12 + 408), &unk_1ECF2C400, &qword_1E429ABE0);
          }

          else
          {
            sub_1E4206464();
            (*(*(v30 - 8) + 8))(v37, v30);
          }

          if (*(v35 + 16))
          {
            swift_getObjectType();
            swift_unknownObjectRetain();
            v44 = sub_1E42063B4();
            v46 = v45;
            swift_unknownObjectRelease();
          }

          else
          {
            v44 = 0;
            v46 = 0;
          }

          v14 = v56;
          v47 = **(v12 + 376);
          OUTLINED_FUNCTION_2_4();
          v48 = swift_allocObject();
          *(v48 + 16) = &unk_1E42BBE48;
          *(v48 + 24) = v35;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
          v49 = v46 | v44;
          if (v46 | v44)
          {
            v49 = v12 + 144;
            *(v12 + 144) = 0;
            *(v12 + 152) = 0;
            *(v12 + 160) = v44;
            *(v12 + 168) = v46;
          }

          v50 = *(v12 + 416);
          *(v12 + 272) = 1;
          *(v12 + 280) = v49;
          *(v12 + 288) = v47;
          swift_task_create();

          sub_1E325F7A8(v50, &unk_1ECF2C400, &qword_1E429ABE0);
          v23 = v55;
LABEL_23:
          if (v23 == ++v24)
          {
            goto LABEL_24;
          }
        }

        sub_1E325F7A8(v12 + 112, &unk_1ECF296E0, &unk_1E4298030);
LABEL_13:
        v38 = v14;
        v39 = sub_1E41FFC94();
        v40 = sub_1E4206814();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = OUTLINED_FUNCTION_6_21();
          v42 = OUTLINED_FUNCTION_160();
          *v41 = 138412290;
          *(v41 + 4) = v38;
          *v42 = v14;
          v43 = v38;
          _os_log_impl(&dword_1E323F000, v39, v40, "%@ cannot poll event availability since canonical id is missing", v41, 0xCu);
          sub_1E325F7A8(v42, &unk_1ECF28E30, &qword_1E429E820);
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_6_0();
        }

        goto LABEL_23;
      }

      __break(1u);
    }

    else
    {
LABEL_24:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
      sub_1E42063E4();
      v51 = sub_1E4206424();
      *(v12 + 488) = v51;
      v52 = swift_task_alloc();
      *(v12 + 496) = v52;
      *v52 = v12;
      OUTLINED_FUNCTION_9_85(v52);
      v17 = MEMORY[0x1E69E85E0];
      v15 = v12 + 360;
      v16 = v51;
    }

    return MEMORY[0x1EEE6D8A8](v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
  }

  else
  {

    OUTLINED_FUNCTION_54();

    return v53();
  }
}

uint64_t sub_1E3B3062C()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_63_1();
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;

  OUTLINED_FUNCTION_66_1();
  v5 = *(v4 + 472);
  v6 = *(v0 + 464);

  return MEMORY[0x1EEE6DFA0](sub_1E3B3075C, v6, v5);
}

uint64_t sub_1E3B3075C()
{
  OUTLINED_FUNCTION_27_2();
  v1 = v0[45];
  v0[63] = v1;
  if (v1)
  {
    swift_unknownObjectWeakInit();
    v2 = OUTLINED_FUNCTION_11_1();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    v5 = v0[60];
    (*(v0[54] + 8))(v0[55], v0[53]);

    OUTLINED_FUNCTION_54();

    return v6();
  }
}

uint64_t sub_1E3B30848()
{
  OUTLINED_FUNCTION_24();
  *(v0 + 512) = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v2 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E3B308CC, v2, v1);
}

uint64_t sub_1E3B308CC()
{
  v69 = v0;

  OUTLINED_FUNCTION_5_0(v0 + 368, v0 + 176);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_28;
  }

  v2 = Strong;
  sub_1E3277E60(0x6449746E657665, 0xE700000000000000, *(v0 + 504), (v0 + 16));
  if (*(v0 + 40))
  {
    if (swift_dynamicCast())
    {
      v4 = *(v0 + 328);
      v3 = *(v0 + 336);
      goto LABEL_7;
    }
  }

  else
  {
    sub_1E325F7A8(v0 + 16, &unk_1ECF296E0, &unk_1E4298030);
  }

  v4 = 0;
  v3 = 0xE000000000000000;
LABEL_7:
  sub_1E3277E60(0x726F727265, 0xE500000000000000, *(v0 + 504), (v0 + 48));
  if (*(v0 + 72))
  {
    if (swift_dynamicCast())
    {
      v67 = v4;
      v6 = *(v0 + 312);
      v5 = *(v0 + 320);
      v7 = v2;

      v8 = sub_1E41FFC94();
      v9 = sub_1E4206814();

      if (os_log_type_enabled(v8, v9))
      {
        v65 = v6;
        v10 = OUTLINED_FUNCTION_100();
        v11 = OUTLINED_FUNCTION_160();
        v68 = swift_slowAlloc();
        *v10 = 138412802;
        *(v10 + 4) = v7;
        *v11 = v2;
        *(v10 + 12) = 2080;
        v66 = v7;
        v12 = sub_1E3270FC8(v65, v5, &v68);

        *(v10 + 14) = v12;
        *(v10 + 22) = 2080;
        v13 = sub_1E3270FC8(v67, v3, &v68);

        *(v10 + 24) = v13;
        _os_log_impl(&dword_1E323F000, v8, v9, "%@ encountered error - %s while fetching availability for %s", v10, 0x20u);
        sub_1E325F7A8(v11, &unk_1ECF28E30, &qword_1E429E820);
        OUTLINED_FUNCTION_6_0();
        swift_arrayDestroy();
        OUTLINED_FUNCTION_51_2();
        OUTLINED_FUNCTION_55();
      }

      else
      {
      }

LABEL_23:

      goto LABEL_28;
    }
  }

  else
  {
    sub_1E325F7A8(v0 + 48, &unk_1ECF296E0, &unk_1E4298030);
  }

  v14 = OUTLINED_FUNCTION_45_32();
  sub_1E3277E60(v14, v15, v16, (v0 + 80));
  if (!*(v0 + 104))
  {
    sub_1E325F7A8(v0 + 80, &unk_1ECF296E0, &unk_1E4298030);
LABEL_19:
    v35 = v2;

    v8 = sub_1E41FFC94();
    v36 = sub_1E4206814();

    if (os_log_type_enabled(v8, v36))
    {
      v37 = OUTLINED_FUNCTION_49_0();
      v38 = OUTLINED_FUNCTION_160();
      v39 = OUTLINED_FUNCTION_100();
      v68 = v39;
      *v37 = 138412546;
      *(v37 + 4) = v35;
      *v38 = v2;
      *(v37 + 12) = 2080;
      v40 = v35;
      v48 = OUTLINED_FUNCTION_54_20(v40, v41, v42, v43, v44, v45, v46, v47);

      *(v37 + 14) = v48;
      _os_log_impl(&dword_1E323F000, v8, v36, "%@ hasEventEnded key is missing from the response for %s, skipping this event", v37, 0x16u);
      sub_1E325F7A8(v38, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_6_0();
      __swift_destroy_boxed_opaque_existential_1(v39);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_21_0();
    }

    else
    {
    }

    goto LABEL_23;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  v17 = *(v0 + 520);
  v18 = v2;

  v19 = sub_1E41FFC94();
  v20 = sub_1E4206814();

  v21 = os_log_type_enabled(v19, v20);
  if (v17)
  {
    if (v21)
    {
      v22 = OUTLINED_FUNCTION_49_0();
      v23 = OUTLINED_FUNCTION_160();
      v24 = OUTLINED_FUNCTION_100();
      v68 = v24;
      v25 = OUTLINED_FUNCTION_46_29(5.778e-34);
      *(v22 + 14) = OUTLINED_FUNCTION_54_20(v25, v26, v27, v28, v29, v30, v31, v32);
      OUTLINED_FUNCTION_73_9(&dword_1E323F000, v33, v34, "%@ adding %s from nonLive set based on clock score response");
      sub_1E325F7A8(v23, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_6_0();
      __swift_destroy_boxed_opaque_existential_1(v24);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_51_2();
    }

    OUTLINED_FUNCTION_11_3(v18 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_nonLiveGameIds, v0 + 224);
    sub_1E3277398((v0 + 296), v4, v3);
    swift_endAccess();
  }

  else
  {
    if (v21)
    {
      v49 = OUTLINED_FUNCTION_49_0();
      v50 = OUTLINED_FUNCTION_160();
      v51 = OUTLINED_FUNCTION_100();
      v68 = v51;
      v52 = OUTLINED_FUNCTION_46_29(5.778e-34);
      *(v49 + 14) = OUTLINED_FUNCTION_54_20(v52, v53, v54, v55, v56, v57, v58, v59);
      OUTLINED_FUNCTION_73_9(&dword_1E323F000, v60, v61, "%@ removing %s from nonLive set based on clock score response");
      sub_1E325F7A8(v50, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_6_0();
      __swift_destroy_boxed_opaque_existential_1(v51);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_51_2();
    }

    OUTLINED_FUNCTION_11_3(v18 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_nonLiveGameIds, v0 + 200);
    sub_1E397B708(v4, v3);
    swift_endAccess();
  }

LABEL_28:
  MEMORY[0x1E69144A0](v0 + 368);

  v62 = *(v0 + 464);
  v63 = *(v0 + 472);

  return MEMORY[0x1EEE6DFA0](sub_1E3B30EF4, v62, v63);
}

uint64_t sub_1E3B30EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24();
  v13 = sub_1E4206424();
  *(v12 + 488) = v13;
  v14 = swift_task_alloc();
  *(v12 + 496) = v14;
  *v14 = v12;
  OUTLINED_FUNCTION_9_85(v14);
  v20 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8A8](v12 + 360, v13, v20, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t sub_1E3B30F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[5] = a1;
  v8 = OUTLINED_FUNCTION_11_1();
  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1E3B30FBC()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_32_46();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    v2[1] = sub_1E3B310C4;

    return sub_1E3B31218();
  }

  else
  {
    **(v0 + 40) = sub_1E4205CB4();
    OUTLINED_FUNCTION_54();

    return v4();
  }
}

uint64_t sub_1E3B310C4()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  *(v1 + 96) = v0;

  v2 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1E3B311B4()
{
  OUTLINED_FUNCTION_24();

  **(v0 + 40) = *(v0 + 96);
  OUTLINED_FUNCTION_54();

  return v1();
}

uint64_t sub_1E3B31218()
{
  OUTLINED_FUNCTION_24();
  v0[4] = v1;
  v0[5] = v2;
  v0[3] = v3;
  v0[6] = sub_1E4206434();
  v0[7] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  OUTLINED_FUNCTION_51_17();
  v0[8] = v4;
  v0[9] = v5;
  v6 = OUTLINED_FUNCTION_151();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1E3B312A8()
{
  OUTLINED_FUNCTION_134();
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = sub_1E4206424();
  v0[10] = v4;
  v5 = swift_task_alloc();
  v0[11] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v2;
  v6 = swift_task_alloc();
  v0[12] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  *v6 = v0;
  v6[1] = sub_1E3B313CC;
  v8 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DDE0](v0 + 2, v4, v8, 0xD00000000000002ELL, 0x80000001E4271FB0, sub_1E3B32668, v5, v7);
}

uint64_t sub_1E3B313CC()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_63_1();
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;

  OUTLINED_FUNCTION_66_1();
  v5 = *(v4 + 72);
  v6 = *(v0 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1E3B31518, v6, v5);
}

uint64_t sub_1E3B31518()
{
  OUTLINED_FUNCTION_24();

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_1E3B31578()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33798, &qword_1E42BBE10);
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v21 - v15;
  (*(v10 + 16))(v21 - v15, v7, v8, v14);
  v17 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v18 = swift_allocObject();
  (*(v10 + 32))(v18 + v17, v16, v8);
  v19 = (v18 + ((v12 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v19 = v3;
  v19[1] = v1;
  v21[4] = sub_1E3B32674;
  v21[5] = v18;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 1107296256;
  v21[2] = sub_1E377674C;
  v21[3] = &block_descriptor_62;
  v20 = _Block_copy(v21);

  [v5 evaluate_];
  _Block_release(v20);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B3173C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33798, &qword_1E42BBE10);
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  *&v12 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v14 = v26 - v13;
  v15 = [v7 objectForKeyedSubscript_];
  if (!v15)
  {
    goto LABEL_5;
  }

  v16 = v15;
  if (![v15 hasProperty_])
  {

LABEL_5:
    v26[1] = sub_1E4205CB4();
    sub_1E42063D4();
    goto LABEL_6;
  }

  (*(v10 + 16))(v14, v5, v8);
  v17 = *(v10 + 80);
  v26[0] = v3;
  v18 = (v17 + 16) & ~v17;
  v19 = swift_allocObject();
  (*(v10 + 32))(v19 + v18, v14, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1E4299720;
  *(v20 + 56) = MEMORY[0x1E69E6158];
  *(v20 + 32) = v26[0];
  *(v20 + 40) = v1;
  v21 = sub_1E3A246B8();

  v22 = sub_1E3A242D8(v7, sub_1E3B32718, v19);
  *(v20 + 88) = v21;
  *(v20 + 64) = v22;
  v23 = sub_1E4205F14();
  v25 = sub_1E3780E30(v23, v24, v20, v16);

LABEL_6:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B31998()
{
  sub_1E32AF6F8(v0 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_delegate);

  v1 = OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_logger;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);

  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController____lazy_storage___backgroudGradientView);
}

id sub_1E3B31A60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LivePostPlayDocumentViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E3B31B64()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E4205754();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v46 = sub_1E4205014();
  v44 = v12;
  sub_1E4205044();
  v13 = *(v6 + 104);
  v13(v10, *MEMORY[0x1E69D3B68], v4);
  v14 = sub_1E3823168();
  v15 = *(v6 + 8);
  v15(v10, v4);
  v16 = OUTLINED_FUNCTION_13_8();
  v45 = v15;
  (v15)(v16);
  if (v14 & 1) != 0 || (sub_1E4205044(), v13(v10, *MEMORY[0x1E69D3B90], v4), v17 = sub_1E3823168(), (v45)(v10, v4), v18 = OUTLINED_FUNCTION_13_8(), v45(v18), (v17))
  {
    OUTLINED_FUNCTION_47_32();
    sub_1E397B708(v46, v44);
    swift_endAccess();

    v19 = v1;

    v20 = v3;
    v21 = sub_1E41FFC94();
    v22 = sub_1E4206814();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = OUTLINED_FUNCTION_100();
      v43 = OUTLINED_FUNCTION_160();
      v47[0] = swift_slowAlloc();
      *v23 = 138412802;
      *(v23 + 4) = v19;
      *v43 = v19;
      *(v23 + 12) = 2080;
      v24 = v19;
      sub_1E3270FC8(v46, v44, v47);
      OUTLINED_FUNCTION_31_4();

      *(v23 + 14) = v43;
      *(v23 + 22) = 2080;
      sub_1E4205044();
      v25 = sub_1E4205744();
      v27 = v26;
      v28 = OUTLINED_FUNCTION_13_8();
      v45(v28);
      v29 = sub_1E3270FC8(v25, v27, v47);

      *(v23 + 24) = v29;
      _os_log_impl(&dword_1E323F000, v21, v22, "%@ removed %s from nonLive set based on push with status - %s", v23, 0x20u);
      sub_1E325F7A8(v43, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_71_18();
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_55();
    }

    else
    {
    }
  }

  else
  {
    OUTLINED_FUNCTION_47_32();

    sub_1E3277398(&v48, v46, v44);
    swift_endAccess();

    v30 = v1;

    v31 = v3;
    v32 = sub_1E41FFC94();
    v33 = sub_1E4206814();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = OUTLINED_FUNCTION_100();
      v42 = OUTLINED_FUNCTION_160();
      v47[0] = swift_slowAlloc();
      *v34 = 138412802;
      *(v34 + 4) = v30;
      *v42 = v30;
      *(v34 + 12) = 2080;
      v35 = v30;
      sub_1E3270FC8(v46, v44, v47);
      v36 = v32;
      OUTLINED_FUNCTION_31_4();

      *(v34 + 14) = v32;
      *(v34 + 22) = 2080;
      sub_1E4205044();
      v37 = sub_1E4205744();
      v39 = v38;
      v40 = OUTLINED_FUNCTION_13_8();
      v45(v40);
      v41 = sub_1E3270FC8(v37, v39, v47);

      *(v34 + 24) = v41;
      _os_log_impl(&dword_1E323F000, v36, v33, "%@ added %s from nonLive set based on push with status - %s", v34, 0x20u);
      sub_1E325F7A8(v42, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_71_18();
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_55();
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B320A8()
{
  OUTLINED_FUNCTION_5_0(v0 + 16, v25);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = MEMORY[0x1E69E7D40];
    v4 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x2F0);
    v5 = Strong;
    v6 = v4();

    if (v6)
    {
      OUTLINED_FUNCTION_5_0(v6 + 56, &v24);
      if (*(v6 + 56))
      {

        sub_1E3B2DB20();
        sub_1E3B2DED4();
        sub_1E3B2E194();
        v7.n128_f64[0] = sub_1E3B2F0E0();
        if ((*((*v3 & *v5) + 0x690))(v7))
        {
          v9 = v8;
          ObjectType = swift_getObjectType();
          (*(v9 + 8))(ObjectType, v9);
          swift_unknownObjectRelease();
        }

        goto LABEL_11;
      }

      v11 = v5;
      v19 = sub_1E41FFC94();
      v20 = sub_1E4206814();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = OUTLINED_FUNCTION_6_21();
        v22 = OUTLINED_FUNCTION_160();
        *v21 = 138412290;
        *(v21 + 4) = v11;
        *v22 = v2;
        v23 = v11;
        _os_log_impl(&dword_1E323F000, v19, v20, "%@ template view model is nil", v21, 0xCu);
        sub_1E325F7A8(v22, &unk_1ECF28E30, &qword_1E429E820);
        OUTLINED_FUNCTION_55();
        OUTLINED_FUNCTION_21_0();

LABEL_11:

        return;
      }
    }

    else
    {
      v11 = v5;
      v12 = sub_1E41FFC94();
      v13 = sub_1E4206814();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = OUTLINED_FUNCTION_6_21();
        v15 = OUTLINED_FUNCTION_160();
        *v14 = 138412290;
        *(v14 + 4) = v11;
        *v15 = v2;
        v16 = v11;
        OUTLINED_FUNCTION_76_8(&dword_1E323F000, v17, v18, "%@ document is nil");
        sub_1E325F7A8(v15, &unk_1ECF28E30, &qword_1E429E820);
        OUTLINED_FUNCTION_21_0();
        OUTLINED_FUNCTION_6_0();

        return;
      }
    }
  }
}

uint64_t type metadata accessor for LivePostPlayDocumentViewController(uint64_t a1)
{
  result = qword_1EE291540;
  if (!qword_1EE291540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3B323D4(uint64_t a1)
{
  result = sub_1E41FFCB4();
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

uint64_t getEnumTagSinglePayload for LivePostPlayDocumentViewController.LivePostPlayShelfPolicyKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LivePostPlayDocumentViewController.LivePostPlayShelfPolicyKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1E3B32614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE2916D0;
  if (!qword_1EE2916D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2916D0);
  }

  return result;
}

void sub_1E3B32674()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33798, &qword_1E42BBE10);
  OUTLINED_FUNCTION_8_0(v0);

  sub_1E3B3173C();
}

id sub_1E3B32718(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33798, &qword_1E42BBE10);
  OUTLINED_FUNCTION_17_2(v5);
  result = sub_1E32AE9B0(a3);
  if (!result)
  {
    v14 = 0u;
    v15 = 0u;
LABEL_12:
    sub_1E325F7A8(&v14, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_13;
  }

  if ((a3 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1E6911E60](0, a3);
  }

  else
  {
    if (!*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_18;
    }

    v7 = *(a3 + 32);
  }

  v8 = v7;
  v9 = [v7 toObject];

  if (v9)
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14 = v12;
  v15 = v13;
  if (!*(&v13 + 1))
  {
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if (swift_dynamicCast())
  {
    v10 = v12;
    goto LABEL_14;
  }

LABEL_13:
  v10 = sub_1E4205CB4();
LABEL_14:
  *&v14 = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33798, &qword_1E42BBE10);
  sub_1E42063D4();
  result = [objc_opt_self() valueWithUndefinedInContext_];
  if (result)
  {
    v11 = result;

    return v11;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1E3B32928()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E3B2F224();
}

uint64_t sub_1E3B329B0()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E3B2FF88();
}

uint64_t sub_1E3B32A54()
{
  OUTLINED_FUNCTION_134();
  v2 = v1;
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_14_3(v7);
  *v8 = v11;
  v8[1] = sub_1E327C238;

  return sub_1E3B30F8C(v2, v9, v10, v3, v4, v6, v5);
}

uint64_t sub_1E3B32B08(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_1E3B32BFC;

  return v5(v2 + 16);
}

uint64_t sub_1E3B32BFC()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_63_1();
  v2 = *(v0 + 24);
  v3 = *v1;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  OUTLINED_FUNCTION_66_1();
  *v2 = *(v5 + 16);
  v6 = *(v3 + 8);

  return v6();
}

uint64_t sub_1E3B32D18()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_14_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_3(v1);

  return v4(v3);
}

uint64_t sub_1E3B32DAC()
{
  OUTLINED_FUNCTION_134();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E3B2E744();
}

uint64_t sub_1E3B32E5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E3B32EA4()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E3B2EECC();
}

uint64_t OUTLINED_FUNCTION_32_46()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_48_28(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return __swift_destroy_boxed_opaque_existential_1(va);
}

id OUTLINED_FUNCTION_53_25()
{

  return [v0 (v1 + 2867)];
}

uint64_t OUTLINED_FUNCTION_68_15(uint64_t a1)
{
  *(v1 + 240) = a1;

  return swift_unknownObjectWeakInit();
}

id OUTLINED_FUNCTION_69_15(void *a1, float a2)
{
  *v2 = a2;
  v5 = *(v3 - 176);
  *(v2 + 4) = v5;
  *a1 = v5;

  return v5;
}

id OUTLINED_FUNCTION_70_16(void *a1, float a2)
{
  *v2 = a2;
  v5 = *(v3 - 200);
  *(v2 + 4) = v5;
  *a1 = v5;

  return v5;
}

void OUTLINED_FUNCTION_74_12(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 176);

  _os_log_impl(a1, v8, v5, a4, v4, 0xCu);
}

void OUTLINED_FUNCTION_77_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_79_12(uint64_t a1)
{

  return sub_1E4207544();
}

void sub_1E3B33074()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1E4201274();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v11 = type metadata accessor for SportsLockup(0);
  v12 = v11[9];
  *(v6 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  v13 = v11[10];
  *(v6 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299D8, &qword_1E429C690);
  swift_storeEnumTagMultiPayload();
  *v6 = v4;
  memcpy(v6 + 1, v2, 0xC3uLL);
  v14 = *(*v4 + 392);

  if (!v14(v15))
  {
LABEL_4:
    type metadata accessor for SportsLockupCellLayout();
    sub_1E3A06774();
  }

  type metadata accessor for SportsLockupCellLayout();
  v16 = swift_dynamicCastClass();
  if (!v16)
  {

    goto LABEL_4;
  }

  v6[27] = v16;
  type metadata accessor for TextBadgePresenter(0);
  OUTLINED_FUNCTION_8();
  v18 = *(v17 + 2032);

  v20 = v18(v19);

  *(v6 + v11[11]) = sub_1E3789F30(v20);
  type metadata accessor for ContextMenuModel(0);

  sub_1E3E6CDBC();

  sub_1E4207414();
  (*(v9 + 104))(v0, *MEMORY[0x1E697E660], v7);
  v6[26] = sub_1E4188148(v4, v0);
  type metadata accessor for SportsLockupInteractor(0);
  v6[28] = sub_1E3764DD0(v4);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B33314()
{
  OUTLINED_FUNCTION_31_1();
  v48[2] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF337A8, &qword_1E42BBF10);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v48 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF337B0, &qword_1E42BBF18);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_35_3();
  v48[1] = type metadata accessor for SportsLockupListView(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  if ((*(**(v0 + 216) + 2224))())
  {
    sub_1E3B3371C(v8);
    (*(v5 + 16))(v1, v8, v3);
    OUTLINED_FUNCTION_113();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_16_79();
    sub_1E3B398F4(v14);
    v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF337B8, &qword_1E42BBF20);
    v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF337C0, &qword_1E42BBF28);
    v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF337C8, &qword_1E42BBF30);
    v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF337D0, &qword_1E42BBF38);
    v19 = sub_1E3B33FF8();
    v53[0] = v18;
    v53[1] = v19;
    OUTLINED_FUNCTION_7_118();
    v22 = OUTLINED_FUNCTION_71_19(v20, v21);
    v53[0] = v17;
    v53[1] = v22;
    OUTLINED_FUNCTION_3_8();
    v25 = OUTLINED_FUNCTION_71_19(v23, v24);
    v53[0] = v16;
    v53[1] = v25;
    OUTLINED_FUNCTION_5_15();
    v28 = OUTLINED_FUNCTION_71_19(v26, v27);
    v53[0] = v15;
    v53[1] = MEMORY[0x1E69E6158];
    v53[2] = v28;
    v53[3] = MEMORY[0x1E69E6168];
    OUTLINED_FUNCTION_15_16();
    OUTLINED_FUNCTION_71_19(v29, v30);
    OUTLINED_FUNCTION_47_33();
    (*(v5 + 8))(v8, v3);
  }

  else
  {
    memcpy(v53, (v0 + 8), 0xC3uLL);
    type metadata accessor for SportsLockup(0);

    sub_1E375C1CC(v53, &v49);

    sub_1E3E45178();
    sub_1E3B38D70(v13, v1, type metadata accessor for SportsLockupListView);
    OUTLINED_FUNCTION_113();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_16_79();
    sub_1E3B398F4(v31);
    v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF337B8, &qword_1E42BBF20);
    v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF337C0, &qword_1E42BBF28);
    v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF337C8, &qword_1E42BBF30);
    v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF337D0, &qword_1E42BBF38);
    v36 = sub_1E3B33FF8();
    v49 = v35;
    v50 = v36;
    OUTLINED_FUNCTION_7_118();
    v39 = OUTLINED_FUNCTION_69_16(v37, v38);
    v49 = v34;
    v50 = v39;
    OUTLINED_FUNCTION_3_8();
    v42 = OUTLINED_FUNCTION_69_16(v40, v41);
    v49 = v33;
    v50 = v42;
    OUTLINED_FUNCTION_5_15();
    v45 = OUTLINED_FUNCTION_69_16(v43, v44);
    v49 = v32;
    v50 = MEMORY[0x1E69E6158];
    v51 = v45;
    v52 = MEMORY[0x1E69E6168];
    OUTLINED_FUNCTION_15_16();
    OUTLINED_FUNCTION_69_16(v46, v47);
    OUTLINED_FUNCTION_47_33();
    sub_1E3B38A48(v13, type metadata accessor for SportsLockupListView);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B3371C(uint64_t a1@<X8>)
{
  v5 = v1;
  v107 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF337E0, &qword_1E42BBF48);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v97 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF337D8, &qword_1E42BBF40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v110 = v12;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF337D0, &qword_1E42BBF38);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44();
  v108 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF337C8, &qword_1E42BBF30);
  OUTLINED_FUNCTION_0_10();
  v101 = v16;
  v102 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44();
  v99 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF337C0, &qword_1E42BBF28);
  OUTLINED_FUNCTION_0_10();
  v104 = v20;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_44();
  v103 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF337B8, &qword_1E42BBF20);
  OUTLINED_FUNCTION_0_10();
  v105 = v24;
  v106 = v23;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_44();
  v97 = v26;
  v27 = *v1;
  memcpy(v130, v1 + 1, 0xC3uLL);
  v111 = v1;

  sub_1E375C1CC(v130, &v119);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33888, &qword_1E42BC268);
  v29 = sub_1E3B38CB8();
  v100 = v27;
  v30.n128_f64[0] = sub_1E390F194(v27, v130, 0, sub_1E3B38C94, v28, v29, v9);
  v31 = v5[27];
  v32 = (*(*v31 + 2128))(v30);
  sub_1E3B34AD0();
  v98 = v19;
  if (v33)
  {

    v34 = 1.0;
  }

  else
  {
    v34 = 0.0;
  }

  v35 = sub_1E4203D54();
  v37 = v36;
  v38 = v110;
  sub_1E3741EA0(v9, v110, &qword_1ECF337E0, &qword_1E42BBF48);
  v39 = v38 + *(v10 + 36);
  *v39 = v32;
  *(v39 + 8) = v34;
  *(v39 + 16) = 0;
  *(v39 + 24) = v35;
  *(v39 + 32) = v37;
  OUTLINED_FUNCTION_8();
  v41 = (*(v40 + 488))();
  if (!v41)
  {
LABEL_16:
    v50 = 0.0;
    goto LABEL_17;
  }

  v42 = v41;
  v43 = v41 + 64;
  v44 = 1 << *(v41 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & *(v41 + 64);
  v47 = (v44 + 63) >> 6;

  v48 = 0;
  if (v46)
  {
    while (1)
    {
      v49 = v48;
LABEL_12:
      v50 = *(*(v42 + 56) + 8 * (__clz(__rbit64(v46)) | (v49 << 6)));

      if (sub_1E385050C())
      {
        break;
      }

      v46 &= v46 - 1;
      v48 = v49;
      if (!v46)
      {
        goto LABEL_9;
      }
    }

LABEL_17:
    v51 = *(v5 + *(type metadata accessor for SportsLockup(0) + 44));

    sub_1E3B34AD0();
    v53 = v52;
    v54 = *(*v5[27] + 2032);
    if (v54())
    {

      if (!(v54)(v55))
      {
        goto LABEL_22;
      }
    }

    else
    {
      OUTLINED_FUNCTION_8();
      (*(v56 + 2008))();
    }

    OUTLINED_FUNCTION_30();
    (*(v57 + 152))(&v119);
    v34 = v119;
    v2 = v120;
    v3 = v121;
    v4 = v122;

    if ((LOBYTE(v123) & 1) == 0)
    {
      OUTLINED_FUNCTION_13_3(v58, v59, v60, v61);
      goto LABEL_24;
    }

LABEL_22:
    OUTLINED_FUNCTION_5_8();
LABEL_24:
    OUTLINED_FUNCTION_3();
    v62 = sub_1E4202734();
    LOBYTE(v119) = 0;
    v63 = sub_1E4203D44();
    v65 = v64;
    *v118 = v50;
    v118[1] = v51;
    v118[2] = v53;
    LOBYTE(v118[3]) = v62;
    *&v118[4] = v34;
    v118[5] = v2;
    v118[6] = v3;
    v118[7] = v4;
    LOWORD(v118[8]) = 0;
    v118[9] = v63;
    v118[10] = v64;
    v66 = v108;
    sub_1E3741EA0(v110, v108, &qword_1ECF337D8, &qword_1E42BBF40);
    memcpy((v66 + *(v109 + 36)), v118, 0x58uLL);
    v119 = v50;
    v120 = v51;
    v121 = v53;
    LOBYTE(v122) = v62;
    v123 = v34;
    v124 = v2;
    v125 = v3;
    v126 = v4;
    v127 = 0;
    v128 = v63;
    v129 = v65;
    OUTLINED_FUNCTION_18_5();
    sub_1E3743538(v67, v68, v69, v70);
    OUTLINED_FUNCTION_82();
    sub_1E325F69C(v71, v72);
    v73 = sub_1E3764C50();
    v74 = 30;
    if (v73)
    {
      v74 = 28;
    }

    v75 = *&v31[v74];
    if (sub_1E3764C50())
    {
      v76 = (*(*v31 + 2176))();
    }

    else
    {
      v76 = v31[29];
    }

    v78 = v97;
    v77 = v98;
    (*(*v31 + 552))(v116);
    if (v117)
    {
      v79 = 0.0;
    }

    else
    {
      v79 = v116[0];
    }

    v80 = sub_1E3B33FF8();
    v81 = v109;
    v82 = OUTLINED_FUNCTION_18();
    v83 = OUTLINED_FUNCTION_18();
    v84 = v82 & 1;
    v85 = v99;
    v86 = v108;
    sub_1E391F7FC(v75, v84, v83 & 1, v81, v80, v76, v79);

    sub_1E325F69C(v86, &qword_1ECF337D0);
    v87 = v5[26];
    v114 = v81;
    v115 = v80;
    OUTLINED_FUNCTION_7_118();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v89 = v102;
    v90 = v103;
    sub_1E4187EA8(v87, v102, OpaqueTypeConformance2);
    (*(v101 + 8))(v85, v89);
    v114 = v89;
    v115 = OpaqueTypeConformance2;
    OUTLINED_FUNCTION_3_8();
    v91 = swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_154_0();
    LOBYTE(v87) = j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_154_0();
    LOBYTE(v89) = j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_154_0();
    v92 = OUTLINED_FUNCTION_51_1();
    sub_1E383F6D4(v31, v87 & 1, v89 & 1, 0, v92 & 1, v77, v91);
    (*(v104 + 8))(v90, v77);
    if (*(v100 + 24))
    {
      v93 = *(v100 + 16);
      v94 = *(v100 + 24);
    }

    else
    {
      v93 = 0;
      v94 = 0xE000000000000000;
    }

    v95 = v106;
    v96 = v105;
    v114 = v93;
    v115 = v94;

    v112 = v77;
    v113 = v91;
    OUTLINED_FUNCTION_5_15();
    swift_getOpaqueTypeConformance2();
    sub_1E4203184();

    (*(v96 + 8))(v78, v95);
    return;
  }

LABEL_9:
  while (1)
  {
    v49 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      break;
    }

    if (v49 >= v47)
    {

      goto LABEL_16;
    }

    v46 = *(v43 + 8 * v49);
    ++v48;
    if (v46)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

unint64_t sub_1E3B33FF8()
{
  result = qword_1EE289698;
  if (!qword_1EE289698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF337D0, &qword_1E42BBF38);
    sub_1E3B340B0();
    sub_1E3743478(&unk_1EE289320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289698);
  }

  return result;
}

unint64_t sub_1E3B340B0()
{
  result = qword_1EE289B78;
  if (!qword_1EE289B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF337D8, &qword_1E42BBF40);
    sub_1E3743478(&unk_1EE24B360);
    sub_1E3743478(&unk_1EE289318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289B78);
  }

  return result;
}

void sub_1E3B34194()
{
  OUTLINED_FUNCTION_31_1();
  v101 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33890, &qword_1E42BC270);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44();
  v100 = v6;
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v97 = v8;
  v98 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v96 = (v10 - v9);
  v11 = sub_1E4205754();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v90 = v16 - v15;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF293F8, &qword_1E429ABC8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  v93 = v18 - v19;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_77_0();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29400, &unk_1E429ABD0);
  v22 = OUTLINED_FUNCTION_17_2(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_4_6();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v94 = &v87[-v27];
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v87[-v29];
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v87[-v32];
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v87[-v35];
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_78();
  sub_1E3B34CD8();
  v99 = v0;
  v92 = v30;
  if (v38)
  {
    (*(*v38 + 944))();

    v39 = 0;
  }

  else
  {
    v39 = 1;
  }

  OUTLINED_FUNCTION_51_25(v1, v39);
  v40 = *MEMORY[0x1E69D3B68];
  v95 = v13;
  v91 = *(v13 + 104);
  v91(v36, v40, v11);
  OUTLINED_FUNCTION_51_25(v36, 0);
  v41 = *(v102 + 48);
  sub_1E3743538(v1, v2, &qword_1ECF29400, &unk_1E429ABD0);
  sub_1E3743538(v36, v2 + v41, &qword_1ECF29400, &unk_1E429ABD0);
  OUTLINED_FUNCTION_71_3(v2);
  if (v42)
  {
    sub_1E325F69C(v36, &qword_1ECF29400);
    sub_1E325F69C(v1, &qword_1ECF29400);
    OUTLINED_FUNCTION_71_3(v2 + v41);
    if (v42)
    {
      sub_1E325F69C(v2, &qword_1ECF29400);
      goto LABEL_27;
    }
  }

  else
  {
    sub_1E3743538(v2, v33, &qword_1ECF29400, &unk_1E429ABD0);
    OUTLINED_FUNCTION_71_3(v2 + v41);
    if (!v42)
    {
      v89 = v25;
      v48 = v95;
      v49 = v90;
      (*(v95 + 32))(v90, v2 + v41, v11);
      OUTLINED_FUNCTION_17_74();
      sub_1E3B398F4(v50);
      v88 = sub_1E4205E84();
      v51 = *(v48 + 8);
      v51(v49, v11);
      OUTLINED_FUNCTION_33_38();
      sub_1E325F69C(v52, v53);
      OUTLINED_FUNCTION_33_38();
      sub_1E325F69C(v54, v55);
      v51(v33, v11);
      v25 = v89;
      OUTLINED_FUNCTION_33_38();
      sub_1E325F69C(v56, v57);
      if (v88)
      {
        goto LABEL_27;
      }

      goto LABEL_13;
    }

    sub_1E325F69C(v36, &qword_1ECF29400);
    sub_1E325F69C(v1, &qword_1ECF29400);
    (*(v95 + 8))(v33, v11);
  }

  sub_1E325F69C(v2, &qword_1ECF293F8);
LABEL_13:
  sub_1E3B34CD8();
  if (v43)
  {
    OUTLINED_FUNCTION_30();
    v45 = v92;
    (*(v44 + 944))();

    v46 = 0;
    v47 = v93;
  }

  else
  {
    v46 = 1;
    v47 = v93;
    v45 = v92;
  }

  v58 = v94;
  OUTLINED_FUNCTION_51_25(v45, v46);
  v91(v58, *MEMORY[0x1E69D3B78], v11);
  OUTLINED_FUNCTION_51_25(v58, 0);
  v59 = *(v102 + 48);
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v60, v61, v62, v63);
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v64, v65, v66, v67);
  OUTLINED_FUNCTION_71_3(v47);
  if (v42)
  {
    OUTLINED_FUNCTION_82();
    sub_1E325F69C(v68, v69);
    OUTLINED_FUNCTION_82();
    sub_1E325F69C(v70, v71);
    OUTLINED_FUNCTION_71_3(v47 + v59);
    if (v42)
    {
      sub_1E325F69C(v47, &qword_1ECF29400);
      goto LABEL_27;
    }
  }

  else
  {
    sub_1E3743538(v47, v25, &qword_1ECF29400, &unk_1E429ABD0);
    OUTLINED_FUNCTION_71_3(v47 + v59);
    if (!v72)
    {
      v77 = v95;
      v78 = v90;
      (*(v95 + 32))(v90, v47 + v59, v11);
      OUTLINED_FUNCTION_17_74();
      sub_1E3B398F4(v79);
      sub_1E4205E84();
      v80 = *(v77 + 8);
      v80(v78, v11);
      sub_1E325F69C(v94, &qword_1ECF29400);
      sub_1E325F69C(v45, &qword_1ECF29400);
      v80(v25, v11);
      sub_1E325F69C(v47, &qword_1ECF29400);
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_82();
    sub_1E325F69C(v73, v74);
    OUTLINED_FUNCTION_82();
    sub_1E325F69C(v75, v76);
    (*(v95 + 8))(v25, v11);
  }

  sub_1E325F69C(v47, &qword_1ECF293F8);
LABEL_27:
  sub_1E3B34CD8();
  if (v81)
  {
    sub_1E3827218();
  }

  type metadata accessor for SportsLockup(0);
  v82 = v96;
  sub_1E3746E10(v96);
  sub_1E3B02B0C();
  (*(v97 + 8))(v82, v98);
  v83 = sub_1E4201D54();
  v84 = v100;
  *v100 = v83;
  *(v84 + 8) = 0;
  *(v84 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33898, &qword_1E42BC278);
  sub_1E3B34E7C();
  sub_1E4203DA4();
  sub_1E42015C4();
  v85 = v101;
  sub_1E3741EA0(v84, v101, &qword_1ECF33890, &qword_1E42BC270);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33888, &qword_1E42BC268);
  memcpy((v85 + *(v86 + 36)), v103, 0x70uLL);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B34AD0()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 464))();
  if (v1)
  {
    v2 = v1;
    v3 = sub_1E32AE9B0(v1);
    for (i = 0; ; ++i)
    {
      if (v3 == i)
      {

        goto LABEL_16;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1E6911E60](i, v2);
      }

      else
      {
        if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_1E3742F1C(v5, v6, v7);
      sub_1E4206254();
      sub_1E4206254();
      if (v16 == v14 && v17 == v15)
      {

LABEL_20:

        goto LABEL_21;
      }

      v9 = sub_1E42079A4();

      if (v9)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_16:
    OUTLINED_FUNCTION_8();
    v11 = (*(v10 + 488))();
    if (v11)
    {
      v13 = sub_1E373E010(40, v11, v12);

      if (v13)
      {
LABEL_21:
        type metadata accessor for ImageViewModel();
        if (!swift_dynamicCastClass())
        {
        }
      }
    }
  }
}

void sub_1E3B34CD8()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 464))();
  if (v1)
  {
    v2 = v1;
    v3 = sub_1E32AE9B0(v1);
    for (i = 0; ; ++i)
    {
      if (v3 == i)
      {

        goto LABEL_12;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](i, v2);
      }

      else
      {
        if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      type metadata accessor for ScoreboardViewModel(0);
      if (swift_dynamicCastClass())
      {

        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_12:
    OUTLINED_FUNCTION_8();
    v5 += 61;
    v6 = *v5;
    v7 = (*v5)();
    if (v7 && (v9 = sub_1E373E010(185, v7, v8), , v9) || (v10 = v6()) != 0 && (v12 = sub_1E373E010(186, v10, v11), , v12))
    {
LABEL_18:
      type metadata accessor for ScoreboardViewModel(0);
      if (!swift_dynamicCastClass())
      {
      }
    }
  }
}

void sub_1E3B34E7C()
{
  OUTLINED_FUNCTION_31_1();
  v38 = v1;
  v39 = v2;
  v4 = v3;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF338A0, &unk_1E42BC280);
  OUTLINED_FUNCTION_0_10();
  v37 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF338A8, &unk_1E42D8B70);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF338B0, &qword_1E42BC290);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v37 - v19;
  *v20 = sub_1E4201B84();
  *(v20 + 1) = 0;
  v20[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF338B8, &qword_1E42BC298);
  sub_1E3B35174();
  *&v20[*(v17 + 44)] = 0x3FF0000000000000;
  if (v4)
  {
    v40 = 0;
    v41 = 0;
    sub_1E4203684();
    sub_1E3D414F8(MEMORY[0x1E6981840], v10);

    v21 = OUTLINED_FUNCTION_113();
    v22(v21);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  OUTLINED_FUNCTION_51_25(v15, v23);
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v24, v25, v26, v27);
  sub_1E3743538(v15, v0, &qword_1ECF338A8, &unk_1E42D8B70);
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 9) = v4 & 1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF338C0, &qword_1E42BC2A0);
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v29, v30, v31, v32);
  sub_1E3743538(v0, v6 + *(v28 + 64), &qword_1ECF338A8, &unk_1E42D8B70);
  sub_1E325F69C(v15, &qword_1ECF338A8);
  OUTLINED_FUNCTION_82();
  sub_1E325F69C(v33, v34);
  sub_1E325F69C(v0, &qword_1ECF338A8);
  OUTLINED_FUNCTION_82();
  sub_1E325F69C(v35, v36);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B35174()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF338C8, &qword_1E42BC2A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  v88 = v10;
  v11 = type metadata accessor for SportsLockup.GenericMetadataView(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v87 = v13 - v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v76 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF338D0, &qword_1E42BC2B0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v76 - v20;
  if (v5 & 1) != 0 && (v3)
  {
    sub_1E3B34CD8();
    v23 = v22;
    memcpy(v95, v1 + 1, 0xC3uLL);
    v24 = v1[27];
    v96[0] = v23;
    memcpy(&v96[1], v1 + 1, 0xC3uLL);
    v96[26] = v24;
    memcpy(v98, v96, 0xD8uLL);
    v94[224] = 0;
    memcpy(v97, v96, sizeof(v97));
    memcpy(&v94[7], v96, 0xD8uLL);
    v93 = 0;
    sub_1E375C1CC(v95, v92);

    sub_1E3B38DCC(v96, v92);
    sub_1E3B38DCC(v97, v92);
    sub_1E3B38E04(v98);
    *v21 = 0;
    v21[8] = 0;
    memcpy(v21 + 9, v94, 0xDFuLL);
    *(v21 + 29) = 0;
    v21[240] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF338E0, &unk_1E42BC2C0);
    sub_1E3743478(&unk_1EE2882F0);
    sub_1E3743478(&unk_1EE2883A8);
    sub_1E4201F44();
    sub_1E3B38E04(v96);
LABEL_61:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v83 = &v76 - v20;
  v84 = v8;
  v82 = v18;
  v25 = *v1;
  v26 = v1[27];
  type metadata accessor for SportsLockup(0);
  v27 = v11[6];
  v81 = v25;

  v80 = v26;

  v28 = sub_1E3746E10((v17 + v27));
  v90 = v1;
  v29 = *v1;
  v30 = ((**v1)[11].vtable)(v28);
  v85 = v7;
  v86 = v11;
  v89 = v17;
  if (!v30)
  {
LABEL_19:
    OUTLINED_FUNCTION_8();
    v42 = (*(v41 + 488))();
    if (v42)
    {
      v34 = sub_1E373E010(17, v42, v43);

      if (v34)
      {
        v44 = v90;
LABEL_26:
        if (*v34 != _TtC8VideosUI13TextViewModel)
        {

          v34 = 0;
        }

LABEL_28:
        if (sub_1E39C408C())
        {
          v45 = j__OUTLINED_FUNCTION_18();
          sub_1E39C26D0(1, v45 & 1);
          v47 = v46;

          if (!v47 || *v47 == _TtC8VideosUI13TextViewModel)
          {
LABEL_33:
            if (sub_1E39C408C())
            {
              v48 = j__OUTLINED_FUNCTION_18();
              sub_1E39C26D0(1, v48 & 1);
              v50 = v49;

              if (v50)
              {
                if (*v50 == _TtC8VideosUI13TextViewModel)
                {
                  v79 = v50;
LABEL_39:
                  v51 = *v44;
                  OUTLINED_FUNCTION_8();
                  v53 = (*(v52 + 464))();
                  if (v53)
                  {
                    v54 = v53;
                    v77 = v51;
                    v78 = v47;
                    v55 = sub_1E32AE9B0(v53);
                    v56 = 0;
                    v90 = v54 & 0xFFFFFFFFFFFFFF8;
                    v91 = v54 & 0xC000000000000001;
                    while (1)
                    {
                      if (v55 == v56)
                      {

                        v17 = v89;
                        v11 = v86;
                        v51 = v77;
                        v47 = v78;
                        goto LABEL_54;
                      }

                      if (v91)
                      {
                        v58 = MEMORY[0x1E6911E60](v56, v54);
                        v57 = v58;
                      }

                      else
                      {
                        if (v56 >= *(v90 + 16))
                        {
                          goto LABEL_65;
                        }

                        v57 = *(v54 + 8 * v56 + 32);
                      }

                      if (__OFADD__(v56, 1))
                      {
                        goto LABEL_64;
                      }

                      LOWORD(v96[0]) = *(v57 + 98);
                      v92[0] = 96;
                      v61 = sub_1E3742F1C(v58, v59, v60);
                      OUTLINED_FUNCTION_45_33(v61);
                      OUTLINED_FUNCTION_67_14();
                      OUTLINED_FUNCTION_42_39();
                      if (v39 && v51 == v17)
                      {
                        break;
                      }

                      v63 = sub_1E42079A4();

                      if (v63)
                      {
                        goto LABEL_59;
                      }

                      ++v56;
                    }

LABEL_59:

                    v17 = v89;
                    v11 = v86;
                    v67 = v80;
                    v66 = v81;
                    v47 = v78;
                  }

                  else
                  {
LABEL_54:
                    v64 = ((*v51)[12].superclass)();
                    if (v64)
                    {
                      v57 = sub_1E373E010(96, v64, v65);
                    }

                    else
                    {
                      v57 = 0;
                    }

                    v67 = v80;
                    v66 = v81;
                  }

                  v68 = sub_1E39C408C();
                  *v17 = v66;
                  v17[1] = v67;
                  *(v17 + v11[7]) = v34;
                  *(v17 + v11[8]) = v47;
                  *(v17 + v11[9]) = v79;
                  *(v17 + v11[10]) = v57;
                  *(v17 + v11[11]) = v68;
                  v69 = v87;
                  sub_1E3B38D70(v17, v87, type metadata accessor for SportsLockup.GenericMetadataView);
                  v70 = v88;
                  OUTLINED_FUNCTION_33_38();
                  sub_1E3B38D70(v71, v72, v73);
                  v74 = v70 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF338D8, &qword_1E42BC2B8) + 48);
                  *v74 = 0;
                  *(v74 + 8) = 0;
                  sub_1E3B38A48(v69, type metadata accessor for SportsLockup.GenericMetadataView);
                  sub_1E3743538(v70, v83, &qword_1ECF338C8, &qword_1E42BC2A8);
                  swift_storeEnumTagMultiPayload();
                  OUTLINED_FUNCTION_73_10();
                  OUTLINED_FUNCTION_18_58();
                  sub_1E3743478(v75);
                  sub_1E3743478(&unk_1EE2883A8);
                  sub_1E4201F44();
                  sub_1E325F69C(v70, &qword_1ECF338C8);
                  sub_1E3B38A48(v89, type metadata accessor for SportsLockup.GenericMetadataView);
                  goto LABEL_61;
                }
              }
            }

            v79 = 0;
            goto LABEL_39;
          }
        }

        v47 = 0;
        goto LABEL_33;
      }
    }

    else
    {
      v34 = 0;
    }

    v44 = v90;
    goto LABEL_28;
  }

  v31 = v30;
  v79 = v29;
  v32 = sub_1E32AE9B0(v30);
  v33 = 0;
  v91 = v31 & 0xC000000000000001;
  while (1)
  {
    if (v32 == v33)
    {

      v17 = v89;
      v11 = v86;
      goto LABEL_19;
    }

    if (v91)
    {
      v35 = MEMORY[0x1E6911E60](v33, v31);
      v34 = v35;
    }

    else
    {
      if (v33 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_63;
      }

      v34 = *(v31 + 8 * v33 + 32);
    }

    if (__OFADD__(v33, 1))
    {
      break;
    }

    LOWORD(v96[0]) = *(v34 + 98);
    v92[0] = 17;
    v38 = sub_1E3742F1C(v35, v36, v37);
    OUTLINED_FUNCTION_45_33(v38);
    OUTLINED_FUNCTION_67_14();
    OUTLINED_FUNCTION_42_39();
    v39 = v39 && v29 == v17;
    if (v39)
    {

LABEL_25:

      v17 = v89;
      v44 = v90;
      v11 = v86;
      goto LABEL_26;
    }

    v40 = sub_1E42079A4();

    if (v40)
    {
      goto LABEL_25;
    }

    ++v33;
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
}

uint64_t sub_1E3B35A74@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v9 = (*a1)[4];
  v8 = (*a1)[5];
  v10 = *v3;
  v22 = *(v3 + 8);
  v11 = a1[2];
  v12 = a1[3];
  v13 = v11[4];
  v21 = *(v11 + 40);
  v17 = *(v11 + 1);
  v18 = *v11;
  memcpy(__dst, v12, 0x41uLL);
  memcpy(&__src[7], v12, 0x41uLL);
  v14 = v22;
  v15 = v21;
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v7;
  *(a2 + 24) = v6;
  *(a2 + 32) = v9;
  *(a2 + 40) = v8;
  *(a2 + 48) = v10;
  *(a2 + 56) = v14;
  *(a2 + 64) = v18;
  *(a2 + 80) = v17;
  *(a2 + 96) = v13;
  *(a2 + 104) = v15;
  memcpy((a2 + 105), __src, 0x48uLL);

  return sub_1E3743538(__dst, v19, &qword_1ECF33840, &qword_1E42BC220);
}

void sub_1E3B35BA8()
{
  OUTLINED_FUNCTION_41_5();
  v6 = v5;
  v7 = *v0;
  memcpy(__dst, v0 + 1, 0xC3uLL);
  v8 = v0[26];

  sub_1E375C1CC(__dst, v40);

  sub_1E4202764();
  v9 = OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v10)
  {
    v9 = sub_1E4202774();
  }

  v11 = *(*v8 + 176);
  v11(v44);
  if ((v45 & 1) == 0)
  {
    v14.n128_u64[0] = v44[2];
    v15.n128_u64[0] = v44[3];
    v12.n128_u64[0] = v44[0];
    v13.n128_u64[0] = v44[1];
    j_nullsub_1(v12, v13, v14, v15);
  }

  memcpy(__src, __dst, sizeof(__src));
  sub_1E4200A54();
  v37 = v17;
  v38 = v16;
  v35 = v19;
  v36 = v18;
  v42 = 0;
  sub_1E4202784();
  v20 = OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v10)
  {
    v20 = sub_1E4202774();
  }

  v11(v46);
  if ((v47 & 1) == 0)
  {
    v24.n128_u64[0] = v46[3];
    v22.n128_u64[0] = v46[1];
    v23.n128_u64[0] = v46[2];
    v21.n128_u64[0] = v46[0];
    j_nullsub_1(v21, v22, v23, v24);
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_7_23();
  v43 = 0;
  sub_1E4202754();
  v25 = OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v10)
  {
    v25 = sub_1E4202774();
  }

  (*(*v8 + 2104))();
  OUTLINED_FUNCTION_30();
  (*(v26 + 152))(v40);
  v27 = v40[0];
  v28 = v40[1];
  v29 = v40[2];
  v30 = v40[3];

  v34.n128_u64[0] = 0;
  if ((v41 & 1) == 0)
  {
    OUTLINED_FUNCTION_13_3(v34, v31, v32, v33);
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  *v6 = v7;
  memcpy((v6 + 8), __src, 0xC3uLL);
  *(v6 + 208) = v8;
  *(v6 + 216) = v9;
  *(v6 + 224) = v38;
  *(v6 + 232) = v37;
  *(v6 + 240) = v36;
  *(v6 + 248) = v35;
  *(v6 + 256) = 0;
  *(v6 + 264) = v20;
  *(v6 + 272) = v1;
  *(v6 + 280) = v2;
  *(v6 + 288) = v3;
  *(v6 + 296) = v4;
  *(v6 + 304) = 0;
  *(v6 + 312) = v25;
  *(v6 + 320) = v27;
  *(v6 + 328) = v28;
  *(v6 + 336) = v29;
  *(v6 + 344) = v30;
  *(v6 + 352) = 0;
  OUTLINED_FUNCTION_42();
}

void sub_1E3B35E1C()
{
  OUTLINED_FUNCTION_41_5();
  v1 = v0;
  v3 = v2;
  v4 = v0[1];
  (*(*v4 + 1984))();
  OUTLINED_FUNCTION_30();
  (*(v5 + 176))(v128);
  v6 = v128[0];
  v7 = v128[1];
  v8 = v128[2];
  v9 = v128[3];

  v14 = v129;
  v15 = 0.0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  if ((v129 & 1) == 0)
  {
    v15 = OUTLINED_FUNCTION_66_18(v10, v11, v12, v13);
    v16 = v19;
    v17 = v20;
    v18 = v21;
  }

  LOBYTE(v130) = v14 & 1;
  v22 = type metadata accessor for SportsLockup.GenericMetadataView(0);
  if (sub_1E3B02B0C())
  {
    v124 = v4;
    v121 = sub_1E4201D54();
    v148[0] = 0;
    LODWORD(v119) = v130;
    v24 = *v1;
    v23 = v1[1];
    v25 = *(v1 + v22[7]);
    v26 = *(v1 + v22[8]);
    v27 = *(v1 + v22[9]);
    v28 = *(v1 + v22[10]);

    v29 = sub_1E39C408C();
    v30 = 0uLL;
    if (v29)
    {
      OUTLINED_FUNCTION_8();
      v32 = (*(v31 + 392))();
      if (v32)
      {
        v33 = v32;
        if (*v32 == _TtC8VideosUI23ContextMenuButtonLayout)
        {
          swift_beginAccess();
          v6 = v33[26];
          v7 = v33[27];
          v8 = v33[28];
          v9 = v33[29];

          *&v38 = OUTLINED_FUNCTION_66_18(v34, v35, v36, v37);
          *(&v38 + 1) = v39;
          *(&v41 + 1) = v40;
          *v116 = v41;
          *v117 = v38;
          v42 = sub_1E4202734();

          v43 = *v116;
          v30 = *v117;
          v44 = v42;
          v45 = v24;
          v46 = v23;
LABEL_19:
          v131[0] = v24;
          v131[1] = v25;
          v131[2] = v26;
          v131[3] = v27;
          v131[4] = 0;
          v131[5] = v23;
          __dst[0] = 0;
          LOBYTE(__dst[1]) = 0;
          v132[0] = v131;
          v132[1] = __dst;
          v133[0] = v28;
          *&v133[1] = v15;
          v133[2] = v16;
          v133[3] = v17;
          v133[4] = v18;
          LOBYTE(v133[5]) = v119 & 1;
          *v134 = v45;
          *&v134[8] = v29;
          *&v134[16] = v46;
          *&v134[24] = v44;
          *&v134[32] = v30;
          *&v134[48] = v43;
          v134[64] = 0;
          v132[2] = v133;
          v132[3] = v134;
          sub_1E3B35A74(v132, v138);
          memcpy(v137, v134, 0x41uLL);
          sub_1E325F69C(v137, &qword_1ECF33840);

          memcpy(v132, v138, 0xB1uLL);
          memcpy(v133, v138, 0xB1uLL);
          OUTLINED_FUNCTION_18_5();
          sub_1E3743538(v72, v73, v74, v75);
          OUTLINED_FUNCTION_82();
          sub_1E325F69C(v76, v77);
          memcpy(v131 + 7, v132, 0xB1uLL);
          OUTLINED_FUNCTION_56_21(v148[0], v114, v115, v116[0], v116[1], v117[0], v117[1], v119, v121);
          memcpy(&v137[2] + 1, v131, 0xB8uLL);
          sub_1E3B38AAC(v137);
          memcpy(v134, v137, 0xCAuLL);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33828, &qword_1E42BC208);
          OUTLINED_FUNCTION_73_10();
          OUTLINED_FUNCTION_14_97();
          sub_1E3743478(v78);
          OUTLINED_FUNCTION_40_13();
          sub_1E3743478(v79);
          OUTLINED_FUNCTION_39_27();
          v4 = v124;
          goto LABEL_23;
        }
      }

      v45 = 0;
      v29 = 0;
      v46 = 0;
      v44 = 0;
      v43 = 0uLL;
      v30 = 0uLL;
      goto LABEL_19;
    }

    v45 = 0;
    v46 = 0;
    v44 = 0;
    v43 = 0uLL;
    goto LABEL_19;
  }

  v47 = sub_1E4201D54();
  v122 = v47;
  LOBYTE(v135) = 0;
  v50 = *(v1 + v22[10]);
  v51 = *(v1 + v22[11]);
  if (v50)
  {
    v125 = v4;
    v52 = v130;
    if (v51)
    {
      v53 = *(v1 + v22[7]);
      v54 = *v1;
      v55 = v1[1];
      v119 = *(v1 + v22[8]);
      v117[0] = *(v1 + v22[9]);

      v56 = sub_1E4201B84();
      v134[0] = 0;
      v57 = *(v1 + v22[10]);
      v58 = *(v1 + v22[11]);
      v59 = v52 & 1;
      v138[0] = v59;
      LOBYTE(v137[0]) = 0;

      __src[0] = v57;
      *&__src[1] = v15;
      __src[2] = v16;
      __src[3] = v17;
      __src[4] = v18;
      LOBYTE(__src[5]) = v59;
      __src[6] = 0;
      LOBYTE(__src[7]) = 0;
      __src[8] = v54;
      __src[9] = v58;
      __src[10] = v55;
      v140[0] = v57;
      *&v140[1] = v15;
      v140[2] = v16;
      v140[3] = v17;
      v140[4] = v18;
      v141 = v59;
      v142 = 0;
      v143 = 0;
      v144 = v54;
      v145 = v58;
      v146 = v55;
      sub_1E3743538(__src, v138, &qword_1ECF33870, &qword_1E42BC250);
      sub_1E325F69C(v140, &qword_1ECF33870);
      memcpy(&v138[7], __src, 0x58uLL);
      v147[0] = v56;
      v147[1] = 0;
      LOBYTE(v147[2]) = v134[0];
      memcpy(&v147[2] + 1, v138, 0x5FuLL);
      memcpy(__dst, v147, 0x70uLL);
      memcpy(v148, v147, sizeof(v148));
      memcpy(&v136[6], v147, 0x70uLL);
      v136[0] = v54;
      v136[1] = v53;
      v136[2] = v119;
      v136[3] = v117[0];
      v136[4] = 0;
      v136[5] = v55;
      memcpy(v132, v136, 0xA0uLL);

      sub_1E3743538(v147, v138, &qword_1ECF33878, &qword_1E42BC258);

      v116[0] = v53;

      sub_1E3743538(v148, v138, &qword_1ECF33878, &qword_1E42BC258);
      sub_1E325F69C(__dst, &qword_1ECF33878);

      memcpy(v131, v132, 0xA0uLL);
      sub_1E3B38C88(v131);
      memcpy(v138, v131, 0xA1uLL);
      sub_1E3743538(v136, v137, &qword_1ECF33880, &qword_1E42BC260);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33858, &qword_1E42BC238);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33860, &qword_1E42BC240);
      sub_1E3743478(&unk_1EE288398);
      sub_1E3743478(&unk_1EE2883A0);
      OUTLINED_FUNCTION_59_14();
      sub_1E4201F44();
      memcpy(v138, v133, 0xA1uLL);
      sub_1E3B38C7C(v138);
      OUTLINED_FUNCTION_30_43();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33848, &qword_1E42BC228);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33850, &qword_1E42BC230);
      sub_1E3B38B10();
      sub_1E3B38B94();
      OUTLINED_FUNCTION_25_55();
      OUTLINED_FUNCTION_82();
      sub_1E4201F44();
      sub_1E325F69C(v136, &qword_1ECF33880);
      sub_1E325F69C(v147, &qword_1ECF33878);
    }

    else
    {
      v65 = *(v1 + v22[7]);
      v66 = *(v1 + v22[8]);
      v67 = *v1;
      v68 = v1[1];
      v69 = *(v1 + v22[9]);
      LOBYTE(v136[0]) = v130 & 1;
      v132[0] = v67;
      v119 = v67;
      v132[1] = v65;
      v117[0] = v65;
      v132[2] = v66;
      v115 = v69;
      v116[0] = v66;
      v132[3] = v69;
      v132[4] = 0;
      v132[5] = v68;
      v132[6] = v50;
      *&v132[7] = v15;
      v132[8] = v16;
      v132[9] = v17;
      v132[10] = v18;
      LOBYTE(v132[11]) = v130 & 1;
      memcpy(v131, v132, 0x59uLL);
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      sub_1E3B38C74(v131);
      memcpy(v138, v131, 0xA1uLL);
      sub_1E3743538(v132, v137, &qword_1ECF33868, &qword_1E42BC248);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33858, &qword_1E42BC238);
      OUTLINED_FUNCTION_73_10();
      OUTLINED_FUNCTION_18_58();
      sub_1E3743478(v70);
      OUTLINED_FUNCTION_40_13();
      sub_1E3743478(v71);
      OUTLINED_FUNCTION_59_14();
      OUTLINED_FUNCTION_18_5();
      sub_1E4201F44();
      memcpy(v138, v133, 0xA1uLL);
      sub_1E3B38C7C(v138);
      OUTLINED_FUNCTION_30_43();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33848, &qword_1E42BC228);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33850, &qword_1E42BC230);
      sub_1E3B38B10();
      sub_1E3B38B94();
      OUTLINED_FUNCTION_25_55();
      OUTLINED_FUNCTION_82();
      sub_1E4201F44();
      sub_1E325F69C(v132, &qword_1ECF33868);
    }

    memcpy(v133, v137, 0xA2uLL);
    v4 = v125;
  }

  else
  {
    if (v51)
    {
      v60 = *(v1 + v22[7]);
      v61 = *(v1 + v22[8]);
      v62 = v1[1];
      v63 = *(v1 + v22[9]);
      v137[0] = *v1;
      v137[1] = v60;
      v137[2] = v61;
      v137[3] = v63;
      v137[4] = v51;
      v137[5] = v62;
      LOBYTE(v137[6]) = 1;
      sub_1E3B38AB4(v47, v48, v49);
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      v64 = swift_retain_n();
      OUTLINED_FUNCTION_49_28(v64, &type metadata for SportsLockup.TextViews);
      sub_1E3B38B08(v138);
      OUTLINED_FUNCTION_30_43();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33848, &qword_1E42BC228);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33850, &qword_1E42BC230);
      sub_1E3B38B10();
      sub_1E3B38B94();
      OUTLINED_FUNCTION_25_55();
      sub_1E4201F44();
    }

    else
    {
      v80 = v1[1];
      v81 = *(v1 + v22[7]);
      v82 = *(v1 + v22[8]);
      v83 = *(v1 + v22[9]);
      v137[0] = *v1;
      v137[1] = v81;
      v137[2] = v82;
      v137[3] = v83;
      v137[4] = 0;
      v137[5] = v80;
      LOBYTE(v137[6]) = 0;
      sub_1E3B38AB4(v47, v48, v49);
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      v84 = swift_retain_n();
      OUTLINED_FUNCTION_49_28(v84, &type metadata for SportsLockup.TextViews);
      sub_1E3B38B08(v138);
      OUTLINED_FUNCTION_30_43();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33848, &qword_1E42BC228);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33850, &qword_1E42BC230);
      sub_1E3B38B10();
      sub_1E3B38B94();
      OUTLINED_FUNCTION_25_55();
      sub_1E4201F44();
    }

    memcpy(v133, v137, 0xA2uLL);
  }

  memcpy(v136, v133, 0xA2uLL);
  memcpy(v132, v133, 0xA2uLL);
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v85, v86, v87, v88);
  OUTLINED_FUNCTION_82();
  sub_1E325F69C(v89, v90);
  memcpy(v131 + 7, v136, 0xA2uLL);
  OUTLINED_FUNCTION_56_21(v135, v114, v115, v116[0], v116[1], v117[0], v117[1], v119, v122);
  memcpy(&v137[2] + 1, v131, 0xA9uLL);
  sub_1E3B38AA0(v137);
  memcpy(v134, v137, 0xCAuLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33828, &qword_1E42BC208);
  OUTLINED_FUNCTION_73_10();
  OUTLINED_FUNCTION_14_97();
  sub_1E3743478(v91);
  OUTLINED_FUNCTION_40_13();
  sub_1E3743478(v92);
  OUTLINED_FUNCTION_39_27();
LABEL_23:
  memcpy(v137, v138, 0xCAuLL);
  sub_1E4202764();
  v93 = OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v94)
  {
    v93 = sub_1E4202774();
  }

  v95 = *(*v4 + 176);
  v95(v131);
  if ((v131[4] & 1) == 0)
  {
    v98.n128_u64[0] = v131[2];
    v99.n128_u64[0] = v131[3];
    v96.n128_u64[0] = v131[0];
    v97.n128_u64[0] = v131[1];
    j_nullsub_1(v96, v97, v98, v99);
  }

  sub_1E4200A54();
  v123 = v101;
  v126 = v100;
  v120 = v102;
  v118 = v103;
  memcpy(v127, v137, 0xCAuLL);
  LOBYTE(__dst[0]) = 0;
  sub_1E4202784();
  v104 = OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v94)
  {
    v104 = sub_1E4202774();
  }

  v95(v134);
  if ((v134[32] & 1) == 0)
  {
    v108.n128_u64[0] = *&v134[24];
    v107.n128_u64[0] = *&v134[16];
    v106.n128_u64[0] = *&v134[8];
    v105.n128_u64[0] = *v134;
    j_nullsub_1(v105, v106, v107, v108);
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_7_23();
  LOBYTE(v132[0]) = 0;
  sub_1E4202754();
  v109 = OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v94)
  {
    v109 = sub_1E4202774();
  }

  v95(v138);
  if ((v138[32] & 1) == 0)
  {
    v113.n128_u64[0] = *&v138[24];
    v112.n128_u64[0] = *&v138[16];
    v111.n128_u64[0] = *&v138[8];
    v110.n128_u64[0] = *v138;
    j_nullsub_1(v110, v111, v112, v113);
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  memcpy(v3, v127, 0xD0uLL);
  *(v3 + 208) = v93;
  *(v3 + 216) = v126;
  *(v3 + 224) = v123;
  *(v3 + 232) = v120;
  *(v3 + 240) = v118;
  *(v3 + 248) = 0;
  *(v3 + 256) = v104;
  *(v3 + 264) = v6;
  *(v3 + 272) = v7;
  *(v3 + 280) = v8;
  *(v3 + 288) = v9;
  *(v3 + 296) = 0;
  *(v3 + 304) = v109;
  *(v3 + 312) = v18;
  *(v3 + 320) = v17;
  *(v3 + 328) = v15;
  *(v3 + 336) = v16;
  *(v3 + 344) = 0;
  OUTLINED_FUNCTION_42();
}

void sub_1E3B36E44(uint64_t a1@<X8>)
{
  *a1 = sub_1E4201D54();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33938, &unk_1E42BC5A0);
  sub_1E3B36E94();
}

void sub_1E3B36E94()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v95 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29D98, &qword_1E429CA30);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v90 = v7;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33940, &qword_1E42BC5B0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v88 - v9;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33948, &qword_1E42BC5B8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v88 - v12;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33950, &qword_1E42BC5C0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_6();
  v89 = v15 - v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33958, &qword_1E42BC5C8);
  v19 = OUTLINED_FUNCTION_17_2(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  v94 = v20 - v21;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v22);
  v93 = &v88 - v23;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v24);
  v92 = &v88 - v25;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_77_0();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33960, &qword_1E42BC5D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v88 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33968, &qword_1E42BC5D8);
  v32 = OUTLINED_FUNCTION_17_2(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_4_6();
  v91 = v33 - v34;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_78();
  v36 = v3[1];
  v99 = v0;
  if (v36)
  {

    *v30 = sub_1E4201B84();
    *(v30 + 1) = 0;
    v30[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33980, &qword_1E42BC600);
    OUTLINED_FUNCTION_18();
    v0 = v99;
    sub_1E3F23370();

    sub_1E3741EA0(v30, v0, &qword_1ECF33960, &qword_1E42BC5D0);
    v37 = 0;
  }

  else
  {
    v37 = 1;
  }

  v38 = 1;
  __swift_storeEnumTagSinglePayload(v0, v37, 1, v27);
  v103 = v3[2];
  if (v103)
  {
    v102 = v3[4];
    if (v102 && !v3[3])
    {
      sub_1E3743538(&v103, &v101, &qword_1ECF29088, &qword_1E42B7E40);
      sub_1E3743538(&v102, &v101, &qword_1ECF2BB28, &qword_1E42A2A60);
      *v13 = sub_1E4201B84();
      *(v13 + 1) = 0;
      v13[16] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33978, &unk_1E42BC5F0);
      OUTLINED_FUNCTION_58_19();
      sub_1E3B37704(v46, v47, v48, v49, v50, v51, v52, v53, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99);
      OUTLINED_FUNCTION_18_5();
      sub_1E3743538(v54, v55, v56, v57);
      OUTLINED_FUNCTION_60_16();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_9_0();
      OUTLINED_FUNCTION_82();
      sub_1E3743478(v58);
      sub_1E3A1FD38();
      OUTLINED_FUNCTION_9_86();
      sub_1E4201F44();
      sub_1E325F69C(&v102, &qword_1ECF2BB28);
      sub_1E325F69C(&v103, &qword_1ECF29088);
    }

    else
    {
      sub_1E3743538(&v103, &v101, &qword_1ECF29088, &qword_1E42B7E40);
      OUTLINED_FUNCTION_18();
      v39 = v90;
      sub_1E3F23370();
      *(v39 + *(v5 + 36)) = 256;
      OUTLINED_FUNCTION_18_5();
      sub_1E3743538(v40, v41, v42, v43);
      OUTLINED_FUNCTION_60_16();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_9_0();
      sub_1E3743478(v44);
      sub_1E3A1FD38();
      OUTLINED_FUNCTION_9_86();
      sub_1E4201F44();
      sub_1E325F69C(&v103, &qword_1ECF29088);
    }

    OUTLINED_FUNCTION_82();
    sub_1E325F69C(v59, v60);
    v45 = v98;
    v61 = OUTLINED_FUNCTION_113();
    sub_1E3741EA0(v61, v62, v63, v64);
    v38 = 0;
  }

  else
  {
    v45 = v98;
  }

  v65 = 1;
  __swift_storeEnumTagSinglePayload(v1, v38, 1, v45);
  if (v3[3])
  {
    v101 = v3[4];
    if (v101)
    {

      sub_1E3743538(&v101, &v100, &qword_1ECF2BB28, &qword_1E42A2A60);
      *v13 = sub_1E4201B84();
      *(v13 + 1) = 0;
      v13[16] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33978, &unk_1E42BC5F0);
      OUTLINED_FUNCTION_58_19();
      sub_1E3B37704(v66, v67, v68, v69, v70, v71, v72, v73, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99);
      sub_1E3743538(v13, v10, &qword_1ECF33948, &qword_1E42BC5B8);
      OUTLINED_FUNCTION_60_16();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_9_0();
      OUTLINED_FUNCTION_58_19();
      sub_1E3743478(v74);
      sub_1E3A1FD38();
      v75 = v89;
      OUTLINED_FUNCTION_9_86();
      sub_1E4201F44();

      v45 = v98;
      sub_1E325F69C(&v101, &qword_1ECF2BB28);
      OUTLINED_FUNCTION_58_19();
    }

    else
    {

      OUTLINED_FUNCTION_18();
      v79 = v90;
      sub_1E3F23370();
      *(v79 + *(v5 + 36)) = 256;
      sub_1E3743538(v79, v10, &qword_1ECF29D98, &qword_1E429CA30);
      OUTLINED_FUNCTION_60_16();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_9_0();
      sub_1E3743478(v80);
      sub_1E3A1FD38();
      v75 = v89;
      OUTLINED_FUNCTION_9_86();
      sub_1E4201F44();

      v76 = OUTLINED_FUNCTION_154_0();
    }

    sub_1E325F69C(v76, v77);
    v78 = v92;
    sub_1E3741EA0(v75, v92, &qword_1ECF33950, &qword_1E42BC5C0);
    v65 = 0;
  }

  else
  {
    v78 = v92;
  }

  __swift_storeEnumTagSinglePayload(v78, v65, 1, v45);
  v81 = v99;
  v82 = v91;
  sub_1E3743538(v99, v91, &qword_1ECF33968, &qword_1E42BC5D8);
  v83 = v93;
  OUTLINED_FUNCTION_72_15(v1, v93);
  v84 = v94;
  OUTLINED_FUNCTION_72_15(v78, v94);
  v85 = v1;
  v86 = v95;
  sub_1E3743538(v82, v95, &qword_1ECF33968, &qword_1E42BC5D8);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33970, &unk_1E42BC5E0);
  OUTLINED_FUNCTION_72_15(v83, v86 + *(v87 + 48));
  OUTLINED_FUNCTION_72_15(v84, v86 + *(v87 + 64));
  OUTLINED_FUNCTION_70_17(v78);
  OUTLINED_FUNCTION_70_17(v85);
  sub_1E325F69C(v81, &qword_1ECF33968);
  OUTLINED_FUNCTION_70_17(v84);
  OUTLINED_FUNCTION_70_17(v83);
  OUTLINED_FUNCTION_52_23(v82);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B37704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = OUTLINED_FUNCTION_32_0();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
  v32 = v31 - 8;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &a9 - v34;
  OUTLINED_FUNCTION_18();
  sub_1E3F23370();
  *&v35[*(v32 + 44)] = 256;
  v36 = *v26;
  v37 = v26[5];
  OUTLINED_FUNCTION_68(v35, v20);
  OUTLINED_FUNCTION_68(v20, v28);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33988, &qword_1E42BC608);
  v39 = v28 + *(v38 + 48);
  *v39 = 0;
  *(v39 + 8) = 0;
  v40 = (v28 + *(v38 + 64));
  *v40 = v36;
  v40[1] = v24;
  v40[2] = v37;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  OUTLINED_FUNCTION_52_23(v35);

  OUTLINED_FUNCTION_52_23(v20);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B37874(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = *(*a1 + 392);

    v5 = v3(v4);
    if (v5 && (OUTLINED_FUNCTION_8(), v7 = *(v6 + 152), v8 = , v7(&v24, v8), , (v25 & 1) == 0))
    {
      OUTLINED_FUNCTION_13_3(v9, v10, v11, v12);
    }

    else
    {
      OUTLINED_FUNCTION_5_8();
    }

    v17 = v13;

    sub_1E397F070(v19, v5, v26);
    v22 = v26[1];
    v23 = v26[0];
    v20 = v27;
    v21 = sub_1E4202734();

    v18 = v22;
    v16 = v23;
    v15 = v20;
    v14 = v21;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 0uLL;
    v17 = 0;
    v18 = 0uLL;
  }

  *a2 = v16;
  *(a2 + 16) = v18;
  *(a2 + 32) = v15;
  *(a2 + 40) = v14;
  *(a2 + 48) = 0;
  *(a2 + 56) = v17;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
}

void sub_1E3B379E8(uint64_t a4@<X8>)
{
  *a4 = sub_1E4201B84();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33800, &qword_1E42BC1E8);
  sub_1E3B37A58();
}

void sub_1E3B37A58()
{
  OUTLINED_FUNCTION_31_1();
  v44 = v3;
  v40 = v4;
  v6 = v5;
  v46 = v7;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238, &unk_1E42999B0);
  OUTLINED_FUNCTION_0_10();
  v42 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  v41 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29938, &unk_1E429C3F0);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v43 = v13 - v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_78();
  type metadata accessor for TextBadge(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BFD8, &qword_1E42A6810);
  OUTLINED_FUNCTION_0_10();
  v22 = v21;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_35_3();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33808, &qword_1E42C2F00);
  v25 = OUTLINED_FUNCTION_17_2(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_4_6();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_77_0();
  if (v6)
  {
    swift_retain_n();

    OUTLINED_FUNCTION_18();
    sub_1E3FC96D0(v6, v40, v19);
    sub_1E3B398F4(qword_1EE23BBE8);
    View.accessibilityIdentifier(key:location:)();

    sub_1E3B38A48(v19, type metadata accessor for TextBadge);
    (*(v22 + 32))(v2, v1, v20);
    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  __swift_storeEnumTagSinglePayload(v2, v30, 1, v20);
  if (v44)
  {

    sub_1E3EB9BB4(v47);
    v31 = OUTLINED_FUNCTION_18();
    sub_1E37E8BE8(v44, v47, 0, v31 & 1, 0, 0, v41);

    sub_1E375C31C(v47);
    v32 = v45;
    (*(v42 + 32))(v0, v41, v45);
    v33 = 0;
  }

  else
  {
    v33 = 1;
    v32 = v45;
  }

  __swift_storeEnumTagSinglePayload(v0, v33, 1, v32);
  OUTLINED_FUNCTION_68(v2, v28);
  sub_1E3743538(v0, v43, &qword_1ECF29938, &unk_1E429C3F0);
  OUTLINED_FUNCTION_68(v28, v46);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33810, &unk_1E42BC1F0);
  v35 = v46 + *(v34 + 48);
  *v35 = 0;
  *(v35 + 8) = 1;
  sub_1E3743538(v43, v46 + *(v34 + 64), &qword_1ECF29938, &unk_1E429C3F0);
  OUTLINED_FUNCTION_40_13();
  sub_1E325F69C(v36, v37);
  OUTLINED_FUNCTION_52_23(v2);
  OUTLINED_FUNCTION_40_13();
  sub_1E325F69C(v38, v39);
  OUTLINED_FUNCTION_52_23(v28);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B37EAC@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for SportsScoreboardView(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v6 = *v1;
  if (*v1)
  {
    v7 = 0.0;
    if (*(v1 + 144))
    {
      v8 = 0.0;
    }

    else
    {
      v8 = *(v1 + 128);
    }

    OUTLINED_FUNCTION_8();
    v10 = *(v9 + 176);

    v10(v21, v11);
    if ((v22 & 1) == 0)
    {
      v7 = sub_1E3952BE0(v21[0], v21[1], v21[2], v21[3]);
    }

    memcpy(v23, (v1 + 8), 0x5BuLL);
    sub_1E375C2C0(v23, v24);
    v12 = j__OUTLINED_FUNCTION_18();
    v13 = j__OUTLINED_FUNCTION_18();
    v14 = j__OUTLINED_FUNCTION_51_1();
    sub_1E3EB9DAC(v20, v23, COERCE__INT64(v8 - v7), 0, 0, 0, 0, 1, 0, 1, 0, 0, 256, 3, 0, v12 & 1, v13 & 1, v14 & 1);
    v15 = *(*v6 + 392);

    v17 = v15(v16);

    if (v17)
    {
      if (*v17 == _TtC8VideosUI22SportsScoreboardLayout)
      {
LABEL_11:
        memcpy(v19, v20, sizeof(v19));
        nullsub_1();
        memcpy(v24, v19, 0xC3uLL);
        sub_1E37474CC(v6, v24, v2);
        sub_1E3B395CC(v2, a1, type metadata accessor for SportsScoreboardView);
        return __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
      }
    }

    type metadata accessor for SportsScoreboardLayout();
    sub_1E39DF330();
    goto LABEL_11;
  }

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v4);
}

uint64_t sub_1E3B3819C@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for PlaybackStatus(0);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = (v7 - v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33990, &qword_1E42BC610);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  if (*v1)
  {

    sub_1E413D6F4(v14, v8);
    if (*(v1 + 40))
    {
      v15 = OUTLINED_FUNCTION_5_8();
      v17 = v16;
      v19 = v18;
      v21 = v20;
    }

    else
    {
      v19 = *(v1 + 24);
      v21 = *(v1 + 32);
      v15 = *(v1 + 8);
      v17 = *(v1 + 16);
    }

    v23 = sub_1E4202734();
    sub_1E3B395CC(v8, v2, type metadata accessor for PlaybackStatus);
    v24 = v2 + *(v9 + 36);
    *v24 = v23;
    *(v24 + 8) = v15;
    *(v24 + 16) = v17;
    *(v24 + 24) = v19;
    *(v24 + 32) = v21;
    *(v24 + 40) = 0;
    sub_1E3B3955C(v2, v13);
    sub_1E3B3955C(v13, a1);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v9);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v9);
  }
}

double sub_1E3B38364@<D0>(uint64_t a1@<X8>)
{
  sub_1E3A9D424();
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33818, &qword_1E42D4AD0) + 36);
  v3 = *MEMORY[0x1E6981E10];
  sub_1E4203E94();
  OUTLINED_FUNCTION_2();
  (*(v4 + 104))(a1 + v2, v3);
  result = *&v6;
  *a1 = v6;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  return result;
}

void sub_1E3B38460()
{
  type metadata accessor for ViewModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ContextMenuModel(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for SportsLockupCellLayout();
      if (v2 <= 0x3F)
      {
        type metadata accessor for SportsLockupInteractor(319);
        if (v3 <= 0x3F)
        {
          sub_1E3B38974(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1E3B38974(319, &qword_1EE289EC0, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              v6 = type metadata accessor for TextBadgePresenter(319);
              if (v7 <= 0x3F)
              {
                OUTLINED_FUNCTION_40_38(v6);
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1E3B385AC()
{
  result = qword_1EE289078;
  if (!qword_1EE289078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF337F8, &qword_1E42BBFC8);
    sub_1E3B398F4(&unk_1EE269D78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF337B8, &qword_1E42BBF20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF337C0, &qword_1E42BBF28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF337C8, &qword_1E42BBF30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF337D0, &qword_1E42BBF38);
    sub_1E3B33FF8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289078);
  }

  return result;
}

uint64_t sub_1E3B3877C(uint64_t a1, int a2)
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
    v2 = *(a1 + 8);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_17_7(v2);
}

uint64_t sub_1E3B387B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      return OUTLINED_FUNCTION_50_26(result);
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1E3B38858()
{
  type metadata accessor for ViewModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SportsLockupCellLayout();
    if (v1 <= 0x3F)
    {
      sub_1E42012F4();
      if (v2 <= 0x3F)
      {
        sub_1E3B38974(319, qword_1EE283398, type metadata accessor for TextViewModel, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1E3B38974(319, qword_1EE23B6C8, type metadata accessor for ViewModel, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            OUTLINED_FUNCTION_40_38(v4);
          }
        }
      }
    }
  }
}

void sub_1E3B38974(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1E3B38A48(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1E3B38AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE2A7220[0];
  if (!qword_1EE2A7220[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2A7220);
  }

  return result;
}

unint64_t sub_1E3B38B10()
{
  result = qword_1EE289188;
  if (!qword_1EE289188)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33848, &qword_1E42BC228);
    sub_1E3B38AB4(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289188);
  }

  return result;
}

unint64_t sub_1E3B38B94()
{
  result = qword_1EE288D30;
  if (!qword_1EE288D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33850, &qword_1E42BC230);
    sub_1E3743478(&unk_1EE288398);
    sub_1E3743478(&unk_1EE2883A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288D30);
  }

  return result;
}

unint64_t sub_1E3B38CB8()
{
  result = qword_1EE289790;
  if (!qword_1EE289790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33888, &qword_1E42BC268);
    sub_1E3743478(&unk_1EE288460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289790);
  }

  return result;
}

uint64_t sub_1E3B38D70(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

uint64_t sub_1E3B38E44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      return OUTLINED_FUNCTION_50_26(result);
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

    *(result + 24) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_22(result, a2);
    }
  }

  return result;
}

uint64_t sub_1E3B38E84(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 41))
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

uint64_t sub_1E3B38ED8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1E3B38F48(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 48))
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

void *sub_1E3B38F84(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    result[5] = 0;
    *(result + 3) = 0u;
    *(result + 1) = 0u;
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

      return OUTLINED_FUNCTION_22(result, a2);
    }

    *(result + 48) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_22(result, a2);
    }
  }

  return result;
}

uint64_t sub_1E3B38FDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 216))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 208);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_17_7(v2);
}

uint64_t sub_1E3B3901C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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
      *(result + 208) = (a2 - 1);
      return result;
    }

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E3B390A0()
{
  result = qword_1EE289A50;
  if (!qword_1EE289A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33818, &qword_1E42D4AD0);
    sub_1E3B39628(&unk_1EE289CF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289A50);
  }

  return result;
}