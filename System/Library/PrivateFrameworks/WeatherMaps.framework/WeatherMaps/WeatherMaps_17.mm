id WeatherMapCachingViewController.__deallocating_deinit()
{
  sub_220F8E064();
  sub_220F8DFA8(v1);
  v3.receiver = v0;
  v3.super_class = type metadata accessor for WeatherMapCachingViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id WeatherMapCachingViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_220FC26C0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

uint64_t WeatherMap.LocationAction.description.getter()
{
  v1 = sub_220FC1070();
  OUTLINED_FUNCTION_6();
  v3 = v2;
  MEMORY[0x28223BE20](v4, v5);
  OUTLINED_FUNCTION_3_45();
  type metadata accessor for WeatherMap.LocationAction(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v6, v7);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_85();
  sub_220F8FF64();
  v8 = 1701736302;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v12 = OUTLINED_FUNCTION_10_29();
      v13(v12);
      v11 = 0x61636F4C77656976;
      goto LABEL_5;
    case 2u:
      v14 = OUTLINED_FUNCTION_10_29();
      v15(v14);
      sub_220FC35C0();

      v18 = 0xD000000000000013;
      goto LABEL_7;
    case 3u:
      return v8;
    case 4u:
      return 0x7373696D736964;
    default:
      v9 = OUTLINED_FUNCTION_10_29();
      v10(v9);
      v11 = 0x7461636F4C646461;
LABEL_5:
      v18 = v11;
LABEL_7:
      v16 = sub_220FC1020();
      MEMORY[0x223D9BD60](v16);

      v8 = v18;
      (*(v3 + 8))(v0, v1);
      return v8;
  }
}

uint64_t Array<A>.init(hideScale:controlsLoadDelay:controlsFadeOnResize:controlsHidden:forceOverlayPaused:isUserInteractionEnabled:)(char a1, uint64_t a2, char a3, char a4, char a5, char a6, char a7)
{
  if (a1 == 2 || (a1 & 1) == 0)
  {
    v14 = MEMORY[0x277D84F90];
    if (a3)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  sub_220F37D68(0, 1, 1, MEMORY[0x277D84F90]);
  v14 = v13;
  v15 = *(v13 + 16);
  v16 = v15 + 1;
  if (v15 >= *(v13 + 24) >> 1)
  {
    v71 = v15 + 1;
    OUTLINED_FUNCTION_12_25();
    v41 = v40;
    sub_220F37D68(v42, v43, v44, v45);
    v15 = v41;
    v16 = v71;
    v14 = v46;
  }

  *(v14 + 16) = v16;
  v17 = v14 + 16 * v15;
  *(v17 + 32) = 2;
  *(v17 + 40) = 1;
  if ((a3 & 1) == 0)
  {
LABEL_8:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_7_28();
      v14 = v34;
    }

    v19 = *(v14 + 16);
    v18 = *(v14 + 24);
    if (v19 >= v18 >> 1)
    {
      OUTLINED_FUNCTION_0_1(v18);
      OUTLINED_FUNCTION_12_25();
      sub_220F37D68(v35, v36, v37, v38);
      v14 = v39;
    }

    *(v14 + 16) = v19 + 1;
    v20 = v14 + 16 * v19;
    *(v20 + 32) = a2;
    *(v20 + 40) = 0;
  }

LABEL_13:
  if (a5 != 2 && (a5 & 1) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_7_28();
      v14 = v47;
    }

    v22 = *(v14 + 16);
    v21 = *(v14 + 24);
    if (v22 >= v21 >> 1)
    {
      OUTLINED_FUNCTION_0_1(v21);
      OUTLINED_FUNCTION_12_25();
      sub_220F37D68(v48, v49, v50, v51);
      v14 = v52;
    }

    *(v14 + 16) = v22 + 1;
    v23 = v14 + 16 * v22;
    *(v23 + 32) = 0;
    *(v23 + 40) = 1;
  }

  if (a6 != 2 && (a6 & 1) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_7_28();
      v14 = v53;
    }

    v25 = *(v14 + 16);
    v24 = *(v14 + 24);
    if (v25 >= v24 >> 1)
    {
      OUTLINED_FUNCTION_0_1(v24);
      OUTLINED_FUNCTION_12_25();
      sub_220F37D68(v54, v55, v56, v57);
      v14 = v58;
    }

    *(v14 + 16) = v25 + 1;
    v26 = v14 + 16 * v25;
    *(v26 + 32) = 3;
    *(v26 + 40) = 1;
  }

  if (a7 != 2 && (a7 & 1) == 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_7_28();
      v14 = v59;
    }

    v28 = *(v14 + 16);
    v27 = *(v14 + 24);
    if (v28 >= v27 >> 1)
    {
      OUTLINED_FUNCTION_0_1(v27);
      OUTLINED_FUNCTION_12_25();
      sub_220F37D68(v60, v61, v62, v63);
      v14 = v64;
    }

    *(v14 + 16) = v28 + 1;
    v29 = v14 + 16 * v28;
    *(v29 + 32) = 4;
    *(v29 + 40) = 1;
  }

  if (a4 != 2 && (a4 & 1) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_7_28();
      v14 = v65;
    }

    v31 = *(v14 + 16);
    v30 = *(v14 + 24);
    if (v31 >= v30 >> 1)
    {
      OUTLINED_FUNCTION_0_1(v30);
      OUTLINED_FUNCTION_12_25();
      sub_220F37D68(v66, v67, v68, v69);
      v14 = v70;
    }

    *(v14 + 16) = v31 + 1;
    v32 = v14 + 16 * v31;
    *(v32 + 32) = 1;
    *(v32 + 40) = 1;
  }

  return v14;
}

uint64_t sub_220F8EB04(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness, v5);
  swift_getAssociatedConformanceWitness();
  sub_220FC1DA0();
  (*(a2 + 32))(a1, a2);
  return sub_220FC1D90();
}

uint64_t sub_220F8EC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_220FC33A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v18[-v9];
  v11 = *(a3 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v18[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_220F90E60(a2, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F910, &qword_220FD8708);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v10, 0, 1, a3);
    (*(v11 + 32))(v15, v10, a3);
    v16 = sub_220FC26B0();
    (*(v11 + 8))(v15, a3);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v10, 1, 1, a3);
    (*(v7 + 8))(v10, v6);
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_220F8EE44()
{
  sub_220E3B2DC(v0 + 16, &qword_27CF9F828, &qword_220FD82F8);
  sub_220E3B2DC(v0 + 56, &qword_27CF9F908, &qword_220FD86F8);

  return v0;
}

uint64_t sub_220F8EE94()
{
  v0 = sub_220F8EE44();

  return MEMORY[0x2821FE8D8](v0, 112, 7);
}

uint64_t sub_220F8EEC4()
{
  OUTLINED_FUNCTION_34_9();
  result = EnvironmentValues.buttons.getter();
  *v0 = result;
  return result;
}

void sub_220F8F018(unint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a2;
  sub_220F8F27C(v4, v5);
  v8 = v6;
  if (v2)
  {
    goto LABEL_41;
  }

  if (v7)
  {
    sub_220F40C10(v4);
LABEL_41:

    return;
  }

  v9 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    while (1)
    {
      v10 = v4 >> 62 ? sub_220FC34C0() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9 == v10)
      {
        goto LABEL_41;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x223D9CB30](v9, v4);
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
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
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          break;
        }

        if (v9 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }
      }

      v11 = sub_220FC1380();
      if (v11)
      {

        v12 = sub_220FC1380();

        if (!v12 || (v12, v12 != v5))
        {
          if (v8 != v9)
          {
            if ((v4 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x223D9CB30](v8, v4);
              v14 = MEMORY[0x223D9CB30](v9, v4);
            }

            else
            {
              if ((v8 & 0x8000000000000000) != 0)
              {
                goto LABEL_47;
              }

              v15 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v8 >= v15)
              {
                goto LABEL_48;
              }

              if (v9 >= v15)
              {
                goto LABEL_49;
              }

              v13 = *(v4 + 32 + 8 * v8);
              v14 = *(v4 + 32 + 8 * v9);
            }

            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
            {
              v4 = sub_220E98DA8();
              v16 = (v4 >> 62) & 1;
            }

            else
            {
              LODWORD(v16) = 0;
            }

            v17 = v4 & 0xFFFFFFFFFFFFFF8;
            *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v14;

            if ((v4 & 0x8000000000000000) != 0 || v16)
            {
              v4 = sub_220E98DA8();
              v17 = v4 & 0xFFFFFFFFFFFFFF8;
              if ((v9 & 0x8000000000000000) != 0)
              {
LABEL_40:
                __break(1u);
                goto LABEL_41;
              }
            }

            else if ((v9 & 0x8000000000000000) != 0)
            {
              goto LABEL_40;
            }

            if (v9 >= *(v17 + 16))
            {
              goto LABEL_46;
            }

            *(v17 + 8 * v9 + 32) = v13;

            *a1 = v4;
          }

          v18 = __OFADD__(v8++, 1);
          if (v18)
          {
            goto LABEL_45;
          }
        }
      }

      else
      {
      }

      v18 = __OFADD__(v9++, 1);
      if (v18)
      {
        goto LABEL_44;
      }
    }
  }

  __break(1u);
}

void sub_220F8F27C(unint64_t a1, void *a2)
{
  v4 = sub_220F40C10(a1);
  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
LABEL_15:

      return;
    }

    if ((a1 & 0xC000000000000001) == 0)
    {
      break;
    }

    MEMORY[0x223D9CB30](v5, a1);
LABEL_6:
    v6 = sub_220FC1380();
    if (!v6)
    {

      return;
    }

    v7 = sub_220FC1380();

    if (v7)
    {

      if (v7 == a2)
      {
        goto LABEL_15;
      }
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_17;
    }
  }

  if (v5 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_6;
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

void *sub_220F8F388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, _BOOL4 a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, __int128 *a12, uint64_t a13, uint64_t a14)
{
  v95 = a7;
  v96 = a8;
  v81 = a6;
  v94 = a5;
  v92 = a3;
  v93 = a4;
  v90 = a1;
  v91 = a2;
  v89 = type metadata accessor for InteractiveFocus(0);
  MEMORY[0x28223BE20](v89, v15);
  v97 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for WeatherMapStore.ViewModel(0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_220FC0E70();
  v102 = *(v21 - 8);
  v103 = v21;
  MEMORY[0x28223BE20](v21, v22);
  v104 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_220FC0CA0();
  v99 = *(v24 - 8);
  v100 = v24;
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB80, &unk_220FC9670);
  MEMORY[0x28223BE20](v28 - 8, v29);
  v85 = &v77 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v32);
  v34 = &v77 - v33;
  v80 = a13;
  v119 = a13;
  v35 = a12[1];
  *(a14 + 24) = *a12;
  v36 = *a12;
  *(a14 + 40) = v35;
  *(a14 + 56) = a12[2];
  *(a14 + 72) = *(a12 + 6);
  *(a14 + 80) = 0;
  v98 = a14;
  v115 = v36;
  v116 = *(a12 + 16);
  sub_220F91444(a12, v112);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F810, &qword_220FD8210);
  MEMORY[0x223D9B7E0](&v118, v37);
  v86 = v118;
  v38 = type metadata accessor for WeatherMapOverlay(0);
  v101 = v34;
  v82 = v38;
  __swift_storeEnumTagSinglePayload(v34, 1, 1, v38);
  *v112 = *(a12 + 24);
  *&v112[16] = *(a12 + 40);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F808, &qword_220FD8208);
  MEMORY[0x223D9B7E0](&v115, v39);
  v83 = *(&v115 + 1);
  v84 = v115;
  v88 = sub_220F8A674(a11);
  v87 = sub_220F8A6A0(a11);
  v40 = sub_220F8A6CC(a11);
  v79 = sub_220F8A700(a11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D518, &qword_220FCAE58);
  sub_220FC12B0();
  result = sub_220FC1230();
  if (!v117)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(&v115, v117);
  sub_220FC0F40();
  sub_220FC0C90();
  (v99[1])(v27, v100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D430, &unk_220FCAD70);
  result = sub_220FC1230();
  if (!v114)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v78 = a10;

  LODWORD(v80) = v79;
  v81 = !v81;
  sub_220F9147C(a12);
  sub_220F8A72C(a11);

  v42 = __swift_mutable_project_boxed_opaque_existential_1(v113, v114);
  v100 = &v77;
  v43 = MEMORY[0x28223BE20](v42, v42);
  v45 = (&v77 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v46 + 16))(v45, v43);
  v47 = *v45;
  v48 = type metadata accessor for MapScaleOverlayViewModelFactory();
  v109[3] = v48;
  v109[4] = &off_283482E50;
  v109[0] = v47;
  type metadata accessor for WeatherMapStore(0);
  v49 = swift_allocObject();
  v50 = __swift_mutable_project_boxed_opaque_existential_1(v109, v48);
  v99 = &v77;
  v51 = MEMORY[0x28223BE20](v50, v50);
  v53 = (&v77 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v54 + 16))(v53, v51);
  v55 = *v53;
  v108 = &off_283482E50;
  v107 = v48;
  v106[0] = v55;
  *(v49 + OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_overlayIsTransitioning) = 0;
  v56 = OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_viewModelSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F038, &unk_220FD49C0);
  swift_allocObject();
  *(v49 + v56) = sub_220FC1990();
  *(v49 + OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_isViewModelSubjectPaused) = 0;
  *(v49 + OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_unitObserver) = 0;
  *(v49 + OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_zoomLevelZoomDelta) = 0x3FF0000000000000;
  v57 = OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_performanceTestConditions;
  v58 = type metadata accessor for WeatherMapPerformanceTestConditions(0);
  __swift_storeEnumTagSinglePayload(v49 + v57, 1, 1, v58);
  (*(v102 + 16))(v49 + OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_mapsConfiguration, v104, v103);
  sub_220E1E30C(v106, v49 + OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_scaleModelFactory);
  sub_220E43574();
  __swift_project_boxed_opaque_existential_1(v106, v107);
  v59 = v86;
  v105[0] = v86;
  v60 = v85;
  __swift_storeEnumTagSinglePayload(v85, 1, 1, v82);
  sub_220EEFF7C(v105, v60, v112);
  sub_220E3B2DC(v60, &unk_27CF9EB80, &unk_220FC9670);
  sub_220FC0C80();
  sub_220FC0C60();
  v61 = sub_220FC0C40();

  sub_220FC0C60();
  v62 = sub_220FC0C70();

  LOBYTE(v57) = MapsConfiguration.windOverlayEnabled.getter();
  swift_storeEnumTagMultiPayload();
  v63 = v17[16];
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D5B0, &unk_220FCCA90);
  __swift_storeEnumTagSinglePayload(&v20[v63], 2, 2, v64);
  v65 = v91;
  *v20 = v90;
  *(v20 + 1) = v65;
  v66 = v93;
  *(v20 + 2) = v92;
  *(v20 + 3) = v66;
  v20[32] = v94;
  *(v20 + 5) = v95;
  v20[48] = v59;
  v67 = &v20[v17[9]];
  v68 = v83;
  *v67 = v84;
  *(v67 + 1) = v68;
  *&v20[v17[10]] = v96;
  v20[v17[12]] = 0;
  *&v20[v17[13]] = v78;
  memcpy(&v20[v17[14]], v112, 0x61uLL);
  v20[v17[15]] = 0;
  v69 = &v20[v17[17]];
  *v69 = xmmword_220FD81D0;
  *(v69 + 1) = xmmword_220FD81E0;
  *(v69 + 4) = 0x4010000000000000;
  *(v69 + 5) = v40;
  v69[48] = v80;
  *(v69 + 49) = *v111;
  *(v69 + 13) = *&v111[3];
  *(v69 + 7) = a9;
  v69[64] = v81;
  *(v69 + 65) = *v110;
  *(v69 + 17) = *&v110[3];
  *(v69 + 72) = xmmword_220FD81F0;
  v20[v17[18]] = 0;
  *&v20[v17[19]] = v61;
  *&v20[v17[20]] = v62;
  v20[v17[21]] = 1;
  v20[v17[22]] = v88;
  v20[v17[23]] = v87;
  v20[v17[24]] = v57 & 1;
  v20[v17[25]] = 0;
  v70 = v49 + OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_viewModel;
  sub_220F90F04();
  swift_beginAccess();
  sub_220F8FF64();
  v71 = v97;
  sub_220F319DC();
  sub_220F901C8();
  swift_beginAccess();
  sub_220F347F0(v71, v70 + v17[11]);
  *(v70 + v17[12]) = 1;
  swift_endAccess();
  v72 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for WeatherMapUnitObserver();
  swift_allocObject();
  v73 = sub_220EC25FC(sub_220F914AC, v72);
  v74 = OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_unitObserver;
  swift_beginAccess();
  *(v49 + v74) = v73;

  swift_beginAccess();
  if (*(v49 + v74))
  {
    swift_endAccess();

    sub_220EC260C();

    (*(v102 + 8))(v104, v103);
    sub_220E3B2DC(v101, &unk_27CF9EB80, &unk_220FC9670);
  }

  else
  {
    (*(v102 + 8))(v104, v103);
    sub_220E3B2DC(v101, &unk_27CF9EB80, &unk_220FC9670);
    swift_endAccess();
  }

  __swift_destroy_boxed_opaque_existential_0(v106);
  __swift_destroy_boxed_opaque_existential_0(v109);
  __swift_destroy_boxed_opaque_existential_0(v113);
  __swift_destroy_boxed_opaque_existential_0(&v115);
  v75 = v98;
  *(v98 + 16) = v49;
  v109[0] = sub_220F314C0();
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D580, &unk_220FCAEE0);
  sub_220E818E0();
  v76 = sub_220FC1A10();

  *(v75 + 80) = v76;

  return v75;
}

uint64_t sub_220F8FF64()
{
  OUTLINED_FUNCTION_8_1();
  v1(0);
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_9();
  v3(v2);
  return v0;
}

double sub_220F8FFBC(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }

  return result;
}

id sub_220F8FFC8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F830, &qword_220FD8300);
  OUTLINED_FUNCTION_29(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_13_25();
  v7 = v0 + ((v3 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_220F8AC34(v0 + v3, v7);
}

void sub_220F9008C()
{
  v2 = OUTLINED_FUNCTION_57_2();
  v3 = type metadata accessor for WeatherMap(v2);
  OUTLINED_FUNCTION_29(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = v5 + *(v6 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F830, &qword_220FD8300) - 8);
  v9 = v1 + ((v7 + *(v8 + 80)) & ~*(v8 + 80));

  sub_220F8AE1C(v0, v1 + v5, v9);
}

unint64_t sub_220F90184()
{
  result = qword_2812C5CD8;
  if (!qword_2812C5CD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2812C5CD8);
  }

  return result;
}

uint64_t sub_220F901C8()
{
  v1 = OUTLINED_FUNCTION_57_2();
  v2(v1);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_220F90264(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_220F902E0(uint64_t a1)
{
  sub_220F907E4(319, &qword_2812C5D30, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_220F90834(319, &unk_2812C5B88, type metadata accessor for CGSize, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_220F90834(319, &qword_2812C5DB0, MEMORY[0x277D7AB60], MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_220F90898(319, &qword_2812C5E10, &qword_27CF9CFD0, &unk_220FCBA10, MEMORY[0x277CE11F8]);
        if (v4 <= 0x3F)
        {
          sub_220F907E4(319, &qword_2812C5E18, &type metadata for WeatherMapOverlayKind, MEMORY[0x277CE11F8]);
          if (v5 <= 0x3F)
          {
            sub_220F90898(319, &qword_2812C5DC8, &qword_27CF9F000, &unk_220FD84C0, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_220F907E4(319, &qword_2812C5DA8, &type metadata for WeatherMap.Options, MEMORY[0x277D83940]);
              if (v7 <= 0x3F)
              {
                sub_220F907E4(319, &qword_2812C5DC0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
                if (v8 <= 0x3F)
                {
                  sub_220F90898(319, &qword_2812C5E68, &qword_27CF9F860, &unk_220FDA240, MEMORY[0x277CDF468]);
                  if (v9 <= 0x3F)
                  {
                    sub_220F90750(319);
                    if (v10 <= 0x3F)
                    {
                      sub_220F907E4(319, &qword_2812C5E78, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
                      if (v11 <= 0x3F)
                      {
                        sub_220F90898(319, &qword_2812C5E88, &qword_27CF9F868, &unk_220FD84D0, MEMORY[0x277CDF468]);
                        if (v12 <= 0x3F)
                        {
                          sub_220F90898(319, &qword_2812C5E80, &qword_27CF9F030, &qword_220FD7310, MEMORY[0x277CDF468]);
                          if (v13 <= 0x3F)
                          {
                            sub_220F907E4(319, &qword_2812C5E60, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
                            if (v14 <= 0x3F)
                            {
                              sub_220F90834(319, &qword_2812C5E20, type metadata accessor for CachingBannerViewControllerFactory, MEMORY[0x277CE10B8]);
                              if (v15 <= 0x3F)
                              {
                                sub_220F90898(319, &qword_2812C5AC8, &qword_27CF9F070, &qword_220FD84E0, MEMORY[0x277D83D88]);
                                if (v16 <= 0x3F)
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
              }
            }
          }
        }
      }
    }
  }
}

void sub_220F90750(uint64_t a1)
{
  if (!qword_2812C5E48)
  {
    sub_220FC12B0();
    sub_220F90264(&qword_2812C5F48, MEMORY[0x277D6CCE8], MEMORY[0x277D6CCD8]);
    v1 = sub_220FC1C00();
    if (!v2)
    {
      atomic_store(v1, &qword_2812C5E48);
    }
  }
}

void sub_220F907E4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_220F90834(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_220F90898(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_220F908FC(uint64_t a1)
{
  result = sub_220FC1070();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_220F90970(uint64_t a1)
{
  if (((*a1 >> 60) & 2) != 0)
  {
    return ((*a1 >> 54) & 0x300 | *a1 | (*(a1 + 8) << 10)) + 2;
  }

  else
  {
    return (*a1 >> 60) & 3;
  }
}

uint64_t sub_220F909B0(uint64_t result, uint64_t a2)
{
  v2 = (a2 - 2);
  if (a2 < 2)
  {
    v3 = *result & 0xC0000000000000FFLL | (a2 << 60);
  }

  else
  {
    *(result + 8) = v2 >> 10;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    v3 = (v2 | (v2 << 54)) & 0xC0000000000000FFLL | 0x2000000000000000;
    *(result + 48) = 0u;
    *(result + 64) = 0;
  }

  *result = v3;
  return result;
}

uint64_t sub_220F90A04(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 1);
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_220F90A48(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 56) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 72) = 1;
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
      *a1 = -a2 << 8;
      result = 0.0;
      *(a1 + 8) = 0u;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      return result;
    }

    *(a1 + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_220F90AB0(uint64_t a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 | (*(a1 + 8) << 8)) + 2;
  }
}

unsigned __int8 *sub_220F90AE0(unsigned __int8 *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *result | (a2 << 62);
  }

  else
  {
    v2 = (a2 - 2) | 0x8000000000000000;
    *(result + 1) = (a2 - 2) >> 8;
    *(result + 1) = 0u;
    *(result + 2) = 0u;
    *(result + 3) = 0u;
    *(result + 8) = 0;
  }

  *result = v2;
  return result;
}

uint64_t sub_220F90B5C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_220F90B9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_220F90BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t objectdestroy_91Tm()
{
  type metadata accessor for WeatherMap(0);
  OUTLINED_FUNCTION_11();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = v1 + v4;

  sub_220F8FFBC(*(v7 + 184), *(v7 + 192));

  sub_220E2C4C4(*(v7 + 216), *(v7 + 224));
  if (*(v1 + v4 + 272))
  {
    if (*(v7 + 256))
    {
      __swift_destroy_boxed_opaque_existential_0((v7 + 232));
    }
  }

  else
  {
  }

  v8 = v0[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F818, &qword_220FD82C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for WeatherMapPerformanceTestConditions(0);
    if (!__swift_getEnumTagSinglePayload(v7 + v8, 1, v9))
    {
      v10 = sub_220FC1070();
      if (!__swift_getEnumTagSinglePayload(v7 + v8, 1, v10))
      {
        OUTLINED_FUNCTION_12();
        (*(v11 + 8))(v7 + v8, v10);
      }
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_42_6(v7 + v0[20]);

  if (*(v7 + v0[22]))
  {
  }

  return MEMORY[0x2821FE8E8](v1, v4 + v6, v3 | 7);
}

uint64_t sub_220F90E60(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_220F90EC4(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_220F90F04()
{
  OUTLINED_FUNCTION_8_1();
  v1(0);
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_9();
  v3(v2);
  return v0;
}

uint64_t sub_220F90F5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F030, &qword_220FD7310);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220F9101C()
{
  OUTLINED_FUNCTION_13_25();
  OUTLINED_FUNCTION_22_16();
  return sub_220F8D12C();
}

uint64_t sub_220F9109C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_13_25();
  OUTLINED_FUNCTION_22_16();
  return a2(a1) & 1;
}

uint64_t sub_220F91104(const void *a1)
{
  OUTLINED_FUNCTION_13_25();
  OUTLINED_FUNCTION_22_16();
  return sub_220F8B51C(a1);
}

id sub_220F91154(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, _BYTE *a5)
{
  ObjectType = swift_getObjectType();
  v11 = sub_220FC12B0();
  *&a5[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_snapshotViewController] = 0;
  *&a5[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_interactiveViewController] = 0;
  *&a5[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_locationPickerViewController] = 0;
  *&a5[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_locationPopoverViewController] = 0;
  v12 = &a5[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_previewViewController];
  *v12 = 0;
  v12[1] = 0;
  v13 = &a5[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_locationActionHandler];
  *v13 = 0;
  v13[1] = 0;
  v14 = &a5[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_canAddLocationHandler];
  *v14 = 0;
  v14[1] = 0;
  v15 = &a5[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_canViewLocationHandler];
  *v15 = 0;
  v15[1] = 0;
  v16 = &a5[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_onMapEventHandler];
  *v16 = 0;
  v16[1] = 0;
  v17 = &a5[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_preferredMapSize];
  v17[16] = 1;
  *v17 = 0;
  *(v17 + 1) = 0;
  *&a5[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController____lazy_storage___supplementaryOverlayContainerView] = 0;
  v32[3] = v11;
  v32[4] = MEMORY[0x277D6CCE0];
  *&a5[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_supplementaryOverlayDebounceTimer] = 0;
  v32[0] = a2;
  *&a5[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_supplementaryOverlayViewController] = 0;
  *&a5[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_storeObserver] = 0;
  v18 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_viewModelToUpdate;
  v19 = type metadata accessor for WeatherMapStore.ViewModel(0);
  __swift_storeEnumTagSinglePayload(&a5[v18], 1, 1, v19);
  *&a5[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_resizeTimer] = 0;
  a5[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_isResizing] = 0;
  v20 = &a5[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_bannerUpdateBlock];
  *v20 = 0;
  v20[1] = 0;
  a5[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_isCrossfadingSnapshot] = 0;
  *&a5[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_store] = a1;
  sub_220E1E30C(v32, &a5[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_resolver]);
  v21 = a1 + OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_viewModel;
  swift_beginAccess();
  sub_220F8FF64();
  v22 = &a5[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_lastViewBounds];
  *v22 = 0u;
  v22[1] = 0u;
  a5[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_prefersControlsHidden] = *(v21 + *(v19 + 88));
  *v16 = a3;
  v16[1] = a4;

  sub_220E1AADC(a3, a4);
  v31.receiver = a5;
  v31.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v31, sel_initWithNibName_bundle_, 0, 0);
  if (a3)
  {
    v26 = 0x2000000000000000;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    sub_220E1AADC(a3, a4);
    v24 = v23;
    a3(&v26);
    sub_220E2DD2C(a3, a4);

    sub_220E2DD2C(a3, a4);
  }

  __swift_destroy_boxed_opaque_existential_0(v32);
  return v23;
}

uint64_t OUTLINED_FUNCTION_6_30(uint64_t a1)
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_15_16()
{
  result = *(v0 - 160);
  v2 = *(v0 - 144);
  *(v0 - 112) = result;
  *(v0 - 96) = v2;
  *(v0 - 80) = *(v0 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_19_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_220FC16C0();
}

void *OUTLINED_FUNCTION_26_17()
{

  return swift_getAtKeyPath((v0 - 112));
}

uint64_t OUTLINED_FUNCTION_27_14()
{

  return swift_getEnumCaseMultiPayload();
}

double OUTLINED_FUNCTION_33_9(_OWORD *a1)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_40_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_220FC16C0();
}

uint64_t sub_220F916A8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90, &unk_220FC9CE0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = sub_220FC1160();
  MEMORY[0x28223BE20](v8 - 8, v9);
  *(v1 + 49) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 24) = 0u;
  sub_220FC1150();
  sub_220FC1180();
  swift_allocObject();
  *(v1 + 72) = sub_220FC1170();
  *(v1 + 16) = a1;
  v10 = sub_220FC2AE0();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;
  v11[5] = v2;
  swift_retain_n();

  sub_220F9BB1C(0, 0, v7, &unk_220FD87A8, v11);

  return v2;
}

uint64_t sub_220F9183C(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a6;
  v7 = sub_220FC2A60();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v8 = swift_task_alloc();
  v6[13] = v8;
  *v8 = v6;
  v8[1] = sub_220F91938;

  return sub_220EE0DF4();
}

uint64_t sub_220F91938(uint64_t a1)
{
  OUTLINED_FUNCTION_27_0();
  v5 = v4;
  OUTLINED_FUNCTION_17();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  v5[14] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_220F91CFC, 0, 0);
  }

  else
  {
    v5[15] = a1;
    v9 = swift_task_alloc();
    v5[16] = v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D0C0, &qword_220FCA4D0);
    v5[17] = v10;
    *v9 = v7;
    v9[1] = sub_220F91AE0;
    v11 = MEMORY[0x277D84950];

    return MEMORY[0x282200440](v5 + 2, a1, &type metadata for ServiceResponseData, v10, v11);
  }
}

uint64_t sub_220F91AE0()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_220F91BE8, 0, 0);
}

uint64_t sub_220F91BE8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 41);
  if (v5 == 1)
  {
    *(v0 + 56) = v2;
    v6 = v2;
    v7 = swift_dynamicCast();
    if (v7)
    {
      (*(*(v0 + 80) + 8))(*(v0 + 96), *(v0 + 72));
    }
  }

  else
  {
    v7 = 0;
  }

  sub_220F91DE8(v7);
  sub_220F928B8(v2, v1, v3, v4, v5);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_220F91CFC()
{
  v1 = v0[14];
  v0[6] = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D0C0, &qword_220FCA4D0);
  v3 = swift_dynamicCast();
  if (v3)
  {
    (*(v0[10] + 8))(v0[11], v0[9]);
  }

  v4 = v0[14];
  sub_220F91DE8(v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_220F91DE8(uint64_t a1)
{
  v2 = a1;
  sub_220FC1130();
  *(v1 + 64) = 1;
  swift_beginAccess();
  sub_220F9290C(v1 + 24, v7);
  v6 = 0;
  v4 = 0u;
  v5 = 0u;
  swift_beginAccess();
  sub_220F9297C(&v4, v1 + 24);
  swift_endAccess();
  sub_220FC1140();
  if (v2)
  {
    sub_220F9290C(v7, &v4);
    if (*(&v5 + 1))
    {
      __swift_project_boxed_opaque_existential_1(&v4, *(&v5 + 1));
      sub_220E43C80();
LABEL_6:
      sub_220F91FA0(v7);
      return __swift_destroy_boxed_opaque_existential_0(&v4);
    }
  }

  else
  {
    sub_220F9290C(v7, &v4);
    if (*(&v5 + 1))
    {
      __swift_project_boxed_opaque_existential_1(&v4, *(&v5 + 1));
      sub_220E43828(1.0);
      goto LABEL_6;
    }
  }

  sub_220F91FA0(v7);
  return sub_220F91FA0(&v4);
}

uint64_t sub_220F91EF4()
{

  sub_220EE1034();

  sub_220F91FA0(v0 + 24);

  return v0;
}

uint64_t sub_220F91F48()
{
  sub_220F91EF4();

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

uint64_t sub_220F91FA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F928, &qword_220FD8780);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220F92028()
{
  OUTLINED_FUNCTION_19();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_220F920FC;

  return MEMORY[0x282200830](v0 + 16);
}

uint64_t sub_220F920FC()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_17();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 56) = v0;

  if (v0)
  {
    v7 = sub_220F9221C;
  }

  else
  {
    v7 = sub_220F921FC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_220F92260(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return MEMORY[0x2822009F8](sub_220F92280, 0, 0);
}

uint64_t sub_220F92280()
{
  OUTLINED_FUNCTION_19();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_220F92310;

  return sub_220EE0DF4();
}

uint64_t sub_220F92310(uint64_t a1)
{
  OUTLINED_FUNCTION_27_0();
  v5 = v4;
  OUTLINED_FUNCTION_17();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_8();
  *v8 = v7;

  if (v1)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 72) = a1;
    v11 = swift_task_alloc();
    *(v5 + 80) = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D0C0, &qword_220FCA4D0);
    *v11 = v7;
    v11[1] = sub_220F924A8;

    return MEMORY[0x282200430](v5 + 16);
  }
}

uint64_t sub_220F924A8()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_17();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 88) = v0;

  if (v0)
  {
    v7 = sub_220F92664;
  }

  else
  {
    v7 = sub_220F925C4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_220F925C4()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  sub_220E567FC(v2, v4);

  sub_220E565AC(v2, v4);
  *v1 = v2;
  *(v1 + 8) = v4;
  *(v1 + 16) = v5;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_220F9267C()
{
  OUTLINED_FUNCTION_19();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_220F92714;

  return sub_220F92260(v3, v0);
}

uint64_t sub_220F92714()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_220F927F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_220F92714;

  return sub_220F9183C(v9, a1, v4, v5, v7, v6);
}

void sub_220F928B8(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {

    sub_220E565AC(a2, a3);
  }
}

uint64_t sub_220F9290C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F928, &qword_220FD8780);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220F9297C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F928, &qword_220FD8780);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_220F929EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = sub_220FC02B0();
    (*(*(v6 - 8) + 16))(a2, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, v6);
    v7 = a2;
    v8 = 0;
    v9 = v6;
  }

  else
  {
    v9 = sub_220FC02B0();
    v7 = a2;
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
}

uint64_t sub_220F92AB4(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_220FC27F0();
  return sub_220FC28A0();
}

unint64_t sub_220F92B34(unint64_t result)
{
  v2 = *(v1 + 24);
  v3 = *(v2 + 16);
  if (result > 1)
  {
    if (v3 >= result)
    {
      v4 = v2 + 8 * result;
    }

    else
    {
      if (!v3)
      {
        result = 0;
        goto LABEL_10;
      }

      v4 = v2 + 8 * v3;
    }

    v5 = (v4 + 24);
LABEL_9:
    result = *v5;
LABEL_10:
    *(v1 + 16) = result;
    return result;
  }

  if (v3)
  {
    v5 = (v2 + 32);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_220F92B84(uint64_t result)
{
  *(v1 + 24) = result;
  if (*(result + 16))
  {
    *(v1 + 16) = *(result + 32);
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220F92BA4()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

double sub_220F92C00(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();
  sub_220F92CAC();

  swift_unknownObjectRelease();
  return result;
}

BOOL sub_220F92C50(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    return (a6 & 1) != 0;
  }

  if (a6)
  {
    return 0;
  }

  return *&a2 == *&a5 && *&a1 == *&a4;
}

void sub_220F92CAC()
{
  v1 = v0;
  v2 = type metadata accessor for ScrubberStore.ViewModel(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_220FC2300() & 1) != 0 && swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v0 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_store);
    v7 = OBJC_IVAR____TtC11WeatherMaps13ScrubberStore_viewModel;
    swift_beginAccess();
    sub_220F95E40(v6 + v7, v5, type metadata accessor for ScrubberStore.ViewModel);
    v8 = sub_220EE3BB8();
    sub_220F95DE0(v5, type metadata accessor for ScrubberStore.ViewModel);
    if (v8)
    {
      [*(v1 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberView) frame];
      v10 = v9;
      v12 = v11;
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v10 = 0.0;
      v12 = 0.0;
    }

    v13 = v1 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_lastScrubberVisibilityState;
    if (*(v1 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_lastScrubberVisibilityState + 17))
    {
      goto LABEL_7;
    }

    if (*(v13 + 16))
    {
      if (!v8)
      {
        return;
      }

LABEL_7:
      *v13 = v10;
      *(v13 + 8) = v12;
      *(v13 + 16) = !v8;
      return;
    }

    if (!v8)
    {
      goto LABEL_7;
    }

    if (*v13 != v10 || *(v13 + 8) != v12)
    {
      goto LABEL_7;
    }
  }
}

char *sub_220F92E48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *(v2 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_storeObserver) = 0;
  *(v2 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_hideTimer) = 0;
  v7 = v2 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_lastScrubberVisibilityState;
  *(v7 + 16) = 256;
  *v7 = 0;
  *(v7 + 8) = 0;
  v8 = v2 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberState;
  *v8 = 0;
  *(v8 + 24) = 0u;
  *(v8 + 8) = 0u;
  *(v2 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_hideDelay) = 0x401C000000000000;
  *(v2 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_horizontalPadding) = 0x4028000000000000;
  *(v2 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_verticalSpacingBeneathForecastHint) = 0x4020000000000000;
  *(v2 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_store) = a1;
  v9 = objc_allocWithZone(type metadata accessor for ScrubberView());

  v10 = sub_220F1B4A8(a2);
  *(v2 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberView) = v10;
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  v44 = xmmword_220FD87E0;
  v45 = xmmword_220FD87F0;
  v46 = xmmword_220FD8800;
  v47 = xmmword_220FD8810;
  v48 = 2;
  v49 = 0x7FEFFFFFFFFFFFFFLL;
  v50 = 0;
  v11 = objc_allocWithZone(type metadata accessor for HintView());
  OUTLINED_FUNCTION_10();
  v16 = sub_220EA23E0(v12, v13, v14, v15);
  *(v2 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberForecastHintView) = v16;
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  v17 = objc_opt_self();
  v18 = [v17 secondaryLabelColor];
  v19 = [v17 secondarySystemBackgroundColor];
  v20 = [v19 colorWithAlphaComponent_];

  v21 = [v17 secondaryLabelColor];
  v22 = [v17 systemGray4Color];
  v23 = [v22 colorWithAlphaComponent_];

  sub_220E1966C(0, &qword_2812C5B80, 0x277D74300);
  *&v51 = sub_220E417BC(*MEMORY[0x277D76938], 0x8000u, 0, 1, 0, 0, *MEMORY[0x277D74418]);
  *(&v51 + 1) = v18;
  *&v52 = v20;
  *(&v52 + 1) = v21;
  *&v53 = v23;
  *(&v53 + 1) = v21;
  *&v54 = v23;
  *(&v54 + 1) = 0x403E000000000000;
  v41[0] = v51;
  v41[1] = v52;
  v41[2] = v53;
  v41[3] = v54;
  v42[0] = 0;
  v42[1] = 0xE000000000000000;
  v42[2] = 0;
  v42[3] = 0;
  v43 = 0;
  v24 = objc_allocWithZone(type metadata accessor for WeatherMapAnnotationLocationLabel());
  v25 = v21;
  v26 = v23;
  v27 = v25;
  v28 = v26;
  v29 = v18;
  v30 = v20;
  sub_220E9CA50(&v51, v40);
  v31 = sub_220E9C384(v41, v42);
  v32 = OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberSupportedRegionLabel;
  *(v3 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberSupportedRegionLabel) = v31;
  [v31 setTextAlignment_];
  [*(v3 + v32) setNumberOfLines_];
  OUTLINED_FUNCTION_10();
  v35 = objc_msgSendSuper2(v33, v34, v3, ObjectType);
  v36 = *&v35[OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberView];
  v37 = v35;
  v38 = v36;
  sub_220F1B254(v35, &off_2834876A0);

  sub_220E9CA88(&v51);

  return v37;
}

void sub_220F93254()
{
  *(v0 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_storeObserver) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_hideTimer) = 0;
  v1 = v0 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_lastScrubberVisibilityState;
  *(v1 + 16) = 256;
  *v1 = 0;
  *(v1 + 8) = 0;
  v2 = v0 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberState;
  *v2 = 0;
  *(v2 + 24) = 0u;
  *(v2 + 8) = 0u;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_hideDelay) = 0x401C000000000000;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_horizontalPadding) = 0x4028000000000000;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_verticalSpacingBeneathForecastHint) = 0x4020000000000000;
  sub_220FC3740();
  __break(1u);
}

void sub_220F9335C()
{
  sub_220FC17E0();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 setView_];
}

void sub_220F93408()
{
  v1 = v0;
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, sel_viewDidLoad);
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = v2;
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];

  v4 = OUTLINED_FUNCTION_9_24();
  if (!v4)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = v4;
  [v4 addSubview_];

  v6 = *&v1[OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_store] + OBJC_IVAR____TtC11WeatherMaps13ScrubberStore_viewModel;
  OUTLINED_FUNCTION_10();
  v7 = swift_beginAccess();
  OUTLINED_FUNCTION_8_32(v7, *(v6 + 1));
  if (qword_2812C7508 != -1)
  {
    OUTLINED_FUNCTION_8_17(&qword_2812C7508);
  }

  v8 = sub_220E1B804();

  v9 = OUTLINED_FUNCTION_9_24();
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      OUTLINED_FUNCTION_14_26(OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberSupportedRegionLabel);

      v11 = type metadata accessor for ScrubberStore.ViewModel(0);
      OUTLINED_FUNCTION_8_32(v11, *(v6 + *(v11 + 52)));
      sub_220F936FC(*&v1[OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberState + 8], *&v1[OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberState + 16], *&v1[OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberState + 24], *&v1[OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberState + 32], v8, 0, 0);
LABEL_10:
      sub_220F9390C();
      return;
    }

    goto LABEL_13;
  }

  if (v9)
  {
    OUTLINED_FUNCTION_14_26(OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberForecastHintView);

    [v8 setHidden_];
    v12 = type metadata accessor for ScrubberStore.ViewModel(0);
    OUTLINED_FUNCTION_8_32(v12, *(v6 + *(v12 + 48)));
    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
}

void sub_220F935F0(void *a1, char a2, char a3)
{
  if (a2)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  [a1 alpha];
  if (v6 != v5)
  {
    if (a3)
    {
      type metadata accessor for ViewAnimator();
      v7 = swift_allocObject();
      *(v7 + 16) = a1;
      *(v7 + 24) = v5;
      v8 = a1;
      sub_220F1AFD0(sub_220EA72CC, v7, 0, 0);
    }

    else
    {

      [a1 setAlpha_];
    }
  }
}

void sub_220F936FC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, uint64_t a6, char a7)
{
  v13 = *(v7 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberSupportedRegionLabel);
  [v13 frame];
  v22.origin.x = a1;
  v22.origin.y = a2;
  v22.size.width = a3;
  v22.size.height = a4;
  if (!CGRectEqualToRect(v21, v22))
  {
    if (a7)
    {
      v14 = [objc_allocWithZone(MEMORY[0x277D75A60]) initWithMass:1.0 stiffness:200.0 damping:30.0 initialVelocity:{0.0, 0.0}];
      v15 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:v14 timingParameters:0.72];
      v16 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v17 = swift_allocObject();
      *(v17 + 16) = v16;
      *(v17 + 24) = a1;
      *(v17 + 32) = a2;
      *(v17 + 40) = a3;
      *(v17 + 48) = a4;
      v19[4] = sub_220F95D44;
      v19[5] = v17;
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 1107296256;
      v19[2] = sub_220F6DA78;
      v19[3] = &block_descriptor_29_0;
      v18 = _Block_copy(v19);

      [v15 addAnimations_];
      _Block_release(v18);
      [v15 startAnimation];
    }

    else
    {

      [v13 setFrame_];
    }
  }
}

double sub_220F9390C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F990, &qword_220FD8928);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v14[-v5];
  v7 = *(v0 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_store);
  v15 = sub_220EE3B58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F998, &unk_220FD8930);
  v8 = *(type metadata accessor for ScrubberStore.ViewModel(0) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_220FC8E30;
  v11 = OBJC_IVAR____TtC11WeatherMaps13ScrubberStore_viewModel;
  swift_beginAccess();
  sub_220F95E40(v7 + v11, v10 + v9, type metadata accessor for ScrubberStore.ViewModel);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBE8, &qword_220FD28C0);
  sub_220E453D4(&unk_27CF9EBF0, &qword_27CF9EBE8, &qword_220FD28C0, MEMORY[0x277CBCD90]);
  sub_220FC19E0();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_220E453D4(&qword_27CF9F9A0, &qword_27CF9F990, &qword_220FD8928, MEMORY[0x277CBCB40]);
  v12 = sub_220FC1A10();

  (*(v3 + 8))(v6, v2);
  *(v1 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_storeObserver) = v12;

  return result;
}

void sub_220F93C24(char a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewDidDisappear_, a1 & 1);
  sub_220F93C70();
}

void sub_220F93C70()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_hideTimer;
  v2 = *(v0 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_hideTimer);
  if (v2)
  {
    v8 = v2;
    [v8 invalidate];
    v3 = *(v0 + v1);
    *(v0 + v1) = 0;

    if (qword_2812C5EC8 != -1)
    {
      swift_once();
    }

    v4 = sub_220FC17A0();
    __swift_project_value_buffer(v4, qword_2812C5ED0);
    v5 = sub_220FC1780();
    v6 = sub_220FC2E30();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_220E15000, v5, v6, "Stopped scrubber timer", v7, 2u);
      MEMORY[0x223D9DDF0](v7, -1, -1);
    }
  }
}

void sub_220F93DFC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_220FC2340();
  OUTLINED_FUNCTION_6();
  v5 = v4;
  MEMORY[0x28223BE20](v6, v7);
  OUTLINED_FUNCTION_1();
  v138 = v8;
  v9 = sub_220FC2390();
  OUTLINED_FUNCTION_6();
  v139 = v10;
  MEMORY[0x28223BE20](v11, v12);
  OUTLINED_FUNCTION_1();
  v136 = v13;
  v140 = sub_220FC23B0();
  OUTLINED_FUNCTION_6();
  v137 = v14;
  MEMORY[0x28223BE20](v15, v16);
  *&v19 = MEMORY[0x28223BE20](v17, v18).n128_u64[0];
  v21 = v134 - v20;
  v149.receiver = v1;
  v149.super_class = ObjectType;
  objc_msgSendSuper2(&v149, sel_viewDidLayoutSubviews, v19);
  v22 = *&v1[OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_store] + OBJC_IVAR____TtC11WeatherMaps13ScrubberStore_viewModel;
  OUTLINED_FUNCTION_10();
  swift_beginAccess();
  v23 = type metadata accessor for ScrubberStore.ViewModel(0);
  v24 = v22 + *(v23 + 76);
  v25 = *(v24 + 8);
  if (v25 > 12.0)
  {
    v26 = *(v24 + 8);
  }

  else
  {
    v26 = 12.0;
  }

  v27 = OUTLINED_FUNCTION_9_24();
  if (!v27)
  {
    __break(1u);
    goto LABEL_18;
  }

  v28 = v27;
  v134[2] = v9;
  v135 = v5;
  [v27 bounds];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;

  v150.origin.x = v30;
  v150.origin.y = v32;
  v150.size.width = v34;
  v150.size.height = v36;
  Width = CGRectGetWidth(v150);
  v38 = OUTLINED_FUNCTION_9_24();
  if (!v38)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v39 = v38;
  v143 = v25;
  v40 = Width - (v26 + v26);
  [v38 bounds];
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;

  v151.origin.x = v42;
  v151.origin.y = v44;
  v151.size.width = v46;
  v151.size.height = v48;
  Height = CGRectGetHeight(v151);
  v50 = *&v1[OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberView];
  sub_220F1BF84();
  v52 = v51;
  v54 = v53;
  v55 = OUTLINED_FUNCTION_9_24();
  if (!v55)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v56 = v55;
  v141 = Height;
  v142 = v40;
  v134[1] = v3;
  [v55 bounds];
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;

  v152.origin.x = v58;
  v152.origin.y = v60;
  v152.size.width = v62;
  v152.size.height = v64;
  v65 = CGRectGetWidth(v152);
  v66 = OUTLINED_FUNCTION_9_24();
  if (!v66)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v67 = v66;
  [v66 bounds];
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v75 = v74;

  v153.origin.x = v69;
  v153.origin.y = v71;
  v153.size.width = v73;
  v153.size.height = v75;
  v154.origin.y = CGRectGetHeight(v153) - v54 - v143;
  v154.origin.x = v65 * 0.5 - v52 * 0.5;
  v154.size.width = v52;
  v154.size.height = v54;
  v155 = CGRectIntegral(v154);
  [v50 setFrame_];
  v76 = v142 - *(v22 + *(v23 + 80));
  v77 = *&v1[OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberForecastHintView];
  sub_220EA3DB8(v76);
  [v50 frame];
  CGRectGetMinX(v156);
  if (qword_2812C7508 != -1)
  {
    OUTLINED_FUNCTION_8_17(&qword_2812C7508);
  }

  v78 = sub_220E1B804();

  if ((v78 & 1) != 0 && (v79 = &v1[OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberState], v1[OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberState + 3] == 1))
  {
    v81 = *(v79 + 1);
    v80 = *(v79 + 2);
    v83 = *(v79 + 3);
    v82 = *(v79 + 4);
    v84 = v79[1];
    [v50 frame];
    if (v84 == 1)
    {
      MinY = CGRectGetMinY(*&v85);
      *(v79 + 1) = OUTLINED_FUNCTION_5_36(MinY);
      *(v79 + 2) = v90;
      *(v79 + 3) = v91;
      *(v79 + 4) = v92;
      sub_220E1966C(0, &qword_2812C5CA0, 0x277D85C78);
      v142 = COERCE_DOUBLE(sub_220FC2FC0());
      sub_220FC23A0();
      v134[0] = v21;
      sub_220FC23D0();
      v93 = OUTLINED_FUNCTION_13_26(*(v137 + 8));
      v94(v93);
      v95 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v147 = sub_220F95D3C;
      v148 = v95;
      OUTLINED_FUNCTION_1_70();
      OUTLINED_FUNCTION_0_86(COERCE_DOUBLE(1107296256));
      v145 = v96;
      v146 = &block_descriptor_22;
      v97 = _Block_copy(aBlock);

      v98 = v136;
      sub_220FC2350();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_220EA7330();
      v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9DBC0, &unk_220FC9850);
      v100 = OUTLINED_FUNCTION_2_50(&qword_2812C5D88);
      v101 = v138;
      OUTLINED_FUNCTION_7_29(aBlock, v102, v100);
      v103 = v134[0];
      v104 = v142;
      MEMORY[0x223D9C4E0](v134[0], v98, v101, v97);
      _Block_release(v97);

      (*(v135 + 8))(v101, v99);
      v105 = OUTLINED_FUNCTION_6_31();
      v106(v105);
      (*&v143)(v103, v140);
      v107 = *&v1[OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberSupportedRegionLabel];
      v108 = *(v79 + 1);
      v109 = *(v79 + 2);
      v110 = *(v79 + 3);
      v111 = *(v79 + 4);
      v112 = v79[1];
      v157.origin.x = OUTLINED_FUNCTION_6_0();
      IsEmpty = CGRectIsEmpty(v157);
      sub_220F936FC(v108, v109, v110, v111, v107, v112, !IsEmpty);
    }

    else
    {
      MaxY = CGRectGetMaxY(*&v85);
      *(v79 + 1) = OUTLINED_FUNCTION_5_36(MaxY);
      *(v79 + 2) = v116;
      *(v79 + 3) = v117;
      *(v79 + 4) = v118;
      sub_220F935F0(v50, v79[1], 1);
      sub_220E1966C(0, &qword_2812C5CA0, 0x277D85C78);
      v142 = COERCE_DOUBLE(sub_220FC2FC0());
      sub_220FC23A0();
      v119 = v21;
      sub_220FC23D0();
      v120 = OUTLINED_FUNCTION_13_26(*(v137 + 8));
      v121(v120);
      v122 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v123 = swift_allocObject();
      v123[2] = v122;
      v123[3] = v81;
      v123[4] = v80;
      v123[5] = v83;
      v123[6] = v82;
      v147 = sub_220F95D0C;
      v148 = v123;
      OUTLINED_FUNCTION_1_70();
      OUTLINED_FUNCTION_0_86(COERCE_DOUBLE(1107296256));
      v145 = v124;
      v146 = &block_descriptor_27;
      v125 = _Block_copy(aBlock);

      v126 = v136;
      sub_220FC2350();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_220EA7330();
      v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9DBC0, &unk_220FC9850);
      v128 = OUTLINED_FUNCTION_2_50(&qword_2812C5D88);
      v129 = v138;
      OUTLINED_FUNCTION_7_29(aBlock, v130, v128);
      v131 = v142;
      MEMORY[0x223D9C4E0](v119, v126, v129, v125);
      _Block_release(v125);

      (*(v135 + 8))(v129, v127);
      v132 = OUTLINED_FUNCTION_6_31();
      v133(v132);
      (*&v143)(v119, v140);
    }
  }

  else
  {
    [v50 frame];
    v114 = CGRectGetMinY(v158);
    [v77 setFrame_];
  }

  sub_220F92CAC();
}

void sub_220F946F4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberState + 1);
    v4 = *(Strong + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberView);
    sub_220F935F0(v4, v3, 1);
  }
}

void sub_220F94780(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = *(Strong + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberState + 8);
    v12 = *(Strong + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberState + 16);
    v13 = *(Strong + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberState + 24);
    v14 = *(Strong + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberState + 32);
    v15 = *(Strong + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberState + 1);
    v16 = *(Strong + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberSupportedRegionLabel);
    v18.origin.x = a2;
    v18.origin.y = a3;
    v18.size.width = a4;
    v18.size.height = a5;
    IsEmpty = CGRectIsEmpty(v18);
    sub_220F936FC(v11, v12, v13, v14, v16, v15, !IsEmpty);
  }
}

void sub_220F948B4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_220F94910(a1);
  }
}

void sub_220F94910(uint64_t a1)
{
  v3 = type metadata accessor for ScrubberStore.ViewModel(0);
  MEMORY[0x28223BE20](v3, v4);
  v86 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v85 = &v84 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBC0, &qword_220FCA9D0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v84 - v11;
  v13 = sub_220FC02B0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v87 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v84 - v19;
  v89 = type metadata accessor for MapScrubberOverlayViewModel(0);
  MEMORY[0x28223BE20](v89, v21);
  v23 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v84 - v26;
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v84 - v30;
  v91 = v1;
  v92 = v3;
  v32 = *(v3 + 72);
  v90 = *&v1[OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberView];
  sub_220F1B2D0(&v84 - v30);
  v33 = sub_220E5C410(a1 + v32, v31);
  sub_220F95DE0(v31, type metadata accessor for MapScrubberOverlayViewModel);
  v88 = v33;
  if ((v33 & 1) == 0)
  {
    sub_220F95E40(a1 + v32, v31, type metadata accessor for MapScrubberOverlayViewModel);
    sub_220F1B338(v31);
    v34 = sub_220E5C120();
    v36 = v91;
    v37 = sub_220F952F8(v34, v35 & 1);
    v38 = *&v36[OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberForecastHintView];
    v39 = (v38 + OBJC_IVAR____TtC11WeatherMaps8HintView_title);
    *v39 = v37;
    v39[1] = v40;

    sub_220EA22B8();
    v41 = *(v38 + OBJC_IVAR____TtC11WeatherMaps8HintView_label);
    sub_220E1966C(0, &qword_2812C5B80, 0x277D74300);
    v42 = *MEMORY[0x277D76968];
    v43 = *MEMORY[0x277D743F8];
    v44 = v41;
    v45 = sub_220E417BC(v42, 0x8000u, 0, 1, 0, 0, v43);
    [v44 setFont_];
  }

  sub_220E70720(a1 + v92[8], v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_220EE9DE8(v12);
  }

  else
  {
    (*(v14 + 32))(v20, v12, v13);
    v46 = v87;
    (*(v14 + 16))(v87, v20, v13);
    sub_220F1B3C8(v46);
    (*(v14 + 8))(v20, v13);
  }

  v47 = v92;
  v48 = a1;
  v49 = *(a1 + v92[10]);
  v84 = OBJC_IVAR____TtC11WeatherMaps12ScrubberView_barView;
  sub_220E34BF4(v49);
  v50 = v91;
  v87 = *&v91[OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_store];
  v51 = &v87[OBJC_IVAR____TtC11WeatherMaps13ScrubberStore_viewModel];
  swift_beginAccess();
  sub_220F95E40(v51 + v47[18], v27, type metadata accessor for MapScrubberOverlayViewModel);
  sub_220F95EA8(v27, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_220F95DE0(v23, type metadata accessor for MapScrubberOverlayViewModel);
  if (qword_2812C7508 != -1)
  {
    swift_once();
  }

  v53 = v88 ^ 1;

  v54 = sub_220E1B804();

  if (v54 & 1) == 0 || (, v55 = sub_220E1B804(), , (v55) && (v50[OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberState + 3] & 1) == 0)
  {
    sub_220F935F0(v90, *(a1 + 1), EnumCaseMultiPayload != 1);
    sub_220F935F0(*&v50[OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberForecastHintView], *(a1 + v92[12]), EnumCaseMultiPayload != 1);
  }

  v56 = sub_220E1B804();

  if (v56)
  {
    v57 = &v50[OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberState];
    v58 = *(a1 + v92[13]);
    if (v57[3] != v58)
    {
      v59 = v91;
      sub_220F935F0(*&v91[OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberSupportedRegionLabel], *(a1 + v92[13]), EnumCaseMultiPayload != 1);
      v57[3] = v58;
      if ((v58 & 1) == 0)
      {
        sub_220F935F0(v90, *(a1 + 1), EnumCaseMultiPayload != 1);
        sub_220F935F0(*&v59[OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberForecastHintView], *(a1 + v92[12]), EnumCaseMultiPayload != 1);
      }

      v53 = 1;
    }
  }

  v60 = sub_220E1B804();

  if (v60 & 1) == 0 || (v61 = &v91[OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberState], v91[OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberState + 3] != 1) || (v62 = *(a1 + v92[16]), (sub_220E85060()) && v61[1] == *(a1 + 1))
  {
    v67 = v91;
    if ((v53 & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  v63 = *&v91[OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberSupportedRegionLabel];
  v64 = &v63[OBJC_IVAR____TtC11WeatherMaps33WeatherMapAnnotationLocationLabel_model];
  v65 = *&v63[OBJC_IVAR____TtC11WeatherMaps33WeatherMapAnnotationLocationLabel_model + 8];
  if (v65)
  {
    v66 = *v64;
  }

  else
  {
    v66 = 0;
    v65 = 0xE000000000000000;
  }

  LODWORD(v89) = v62;
  if (!v62)
  {

    if (qword_2812C5B30 == -1)
    {
LABEL_41:
      v73 = qword_2812CE4B0;
      v66 = sub_220FBFF80();
      v65 = v74;

      v75 = 1;
      goto LABEL_43;
    }

LABEL_50:
    swift_once();
    goto LABEL_41;
  }

  if (v62 == 1)
  {

    if (qword_2812C5B30 == -1)
    {
      goto LABEL_41;
    }

    goto LABEL_50;
  }

  v75 = 0;
LABEL_43:
  sub_220F935F0(v63, v75, 1);
  if (*(v48 + v92[22]) == 2)
  {
    v76 = 257;
  }

  else
  {
    v76 = 256;
  }

  v77 = *v64;
  v78 = *(v64 + 1);
  v79 = *(v64 + 2);
  v80 = *(v64 + 3);
  *v64 = v66;
  *(v64 + 1) = v65;
  *(v64 + 2) = 0;
  *(v64 + 3) = 0;
  *(v64 + 16) = v76;
  sub_220E3B0C4(v77, v78, v79, v80);
  sub_220E9BFF8();
  v81 = *(v48 + 1);
  if (v61[1] == v81)
  {
    v82 = v61[2];
    v83 = v82 ^ sub_220EE3BB8() | v53;
    *v61 = v89;
    v61[1] = v81;
    v61[2] = sub_220EE3BB8();
    v67 = v91;
    if ((v83 & 1) == 0)
    {
LABEL_26:
      if (*(v48 + 2) == 1)
      {
        sub_220E379FC();
        v70 = v85;
        sub_220F95E40(v51, v85, type metadata accessor for ScrubberStore.ViewModel);
        *(v70 + 2) = 0;
        v71 = v86;
        sub_220F95E40(v70, v86, type metadata accessor for ScrubberStore.ViewModel);
        sub_220EE3AE8(v71);
        sub_220F95DE0(v70, type metadata accessor for ScrubberStore.ViewModel);
      }

      v72 = OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_hideTimer;
      if (*&v67[OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_hideTimer])
      {
        goto LABEL_29;
      }

      if (sub_220EE59F8())
      {
        sub_220F954D8();
      }

      else if (*&v67[v72])
      {
LABEL_29:
        if (!sub_220EE59F8())
        {
          sub_220F93C70();
        }
      }

      sub_220F92CAC();
      return;
    }
  }

  else
  {
    *v61 = v89;
    v61[1] = v81;
    v61[2] = sub_220EE3BB8();
    v67 = v91;
  }

LABEL_24:
  v68 = [v67 view];
  if (v68)
  {
    v69 = v68;
    [v68 setNeedsLayout];

    goto LABEL_26;
  }

  __break(1u);
}

uint64_t sub_220F952F8(uint64_t a1, char a2)
{
  if (a2)
  {
    if (qword_2812C5B30 != -1)
    {
      swift_once();
    }

    v2 = qword_2812CE4B0;
    v3 = sub_220FBFF80();

    return v3;
  }

  else
  {
    if (qword_2812C5B30 != -1)
    {
      swift_once();
    }

    v6 = qword_2812CE4B0;
    sub_220FBFF80();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBD0, &unk_220FCA870);
    v7 = swift_allocObject();
    v8 = MEMORY[0x277D83B88];
    *(v7 + 16) = xmmword_220FC8E30;
    v9 = MEMORY[0x277D83C10];
    *(v7 + 56) = v8;
    *(v7 + 64) = v9;
    *(v7 + 32) = a1;
    v10 = sub_220FC26D0();

    return v10;
  }
}

void sub_220F954D8()
{
  sub_220F93C70();
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[4] = sub_220F95F0C;
  v10[5] = v2;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_220E7F8F4;
  v10[3] = &block_descriptor_37;
  v3 = _Block_copy(v10);

  v4 = [v1 scheduledTimerWithTimeInterval:0 repeats:v3 block:7.0];
  _Block_release(v3);
  v5 = *(v0 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_hideTimer);
  *(v0 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_hideTimer) = v4;

  if (qword_2812C5EC8 != -1)
  {
    swift_once();
  }

  v6 = sub_220FC17A0();
  __swift_project_value_buffer(v6, qword_2812C5ED0);
  v7 = sub_220FC1780();
  v8 = sub_220FC2E30();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_220E15000, v7, v8, "Started scrubber timer", v9, 2u);
    MEMORY[0x223D9DDF0](v9, -1, -1);
  }
}

void sub_220F956A0(uint64_t a1, double a2, double a3, double a4, double a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = *(Strong + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberSupportedRegionLabel);

    [v11 setFrame_];
  }
}

char *sub_220F95748(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for ScrubberStore.ViewModel(0);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v22 - v8;
  if (qword_2812C5EC8 != -1)
  {
    swift_once();
  }

  v10 = sub_220FC17A0();
  __swift_project_value_buffer(v10, qword_2812C5ED0);
  v11 = sub_220FC1780();
  v12 = sub_220FC2E30();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_220E15000, v11, v12, "Scrubber timer triggering", v13, 2u);
    MEMORY[0x223D9DDF0](v13, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = *(Strong + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberView);

    sub_220E379FC();
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = result;
    v19 = *&result[OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_store];

    v20 = OBJC_IVAR____TtC11WeatherMaps13ScrubberStore_viewModel;
    swift_beginAccess();
    sub_220F95E40(v19 + v20, v9, type metadata accessor for ScrubberStore.ViewModel);
    if (v9[1] == 1)
    {
      v21 = v9[*(v2 + 84)];

      if ((v21 & 1) == 0 || !sub_220EE3BB8())
      {
        v9[1] = 0;
        *&v9[*(v2 + 60)] = 0;
      }
    }

    else
    {
    }

    sub_220F95E40(v9, v5, type metadata accessor for ScrubberStore.ViewModel);
    sub_220EE3AE8(v5);
    sub_220F95DE0(v9, type metadata accessor for ScrubberStore.ViewModel);
  }

  return result;
}

id sub_220F95B18()
{
  ObjectType = swift_getObjectType();
  v1 = OUTLINED_FUNCTION_6_0();
  return objc_msgSendSuper2(v2, v3, v1, v0, ObjectType);
}

id sub_220F95B98(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_220F95C54(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 40))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 1);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t sub_220F95CA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

double block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double sub_220F95D74(uint64_t a1, char *a2)
{
  v3 = *a2;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = v3;
    sub_220F03D00(v2, &v5);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_220F95DE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_220F95E40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_220F95EA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapScrubberOverlayViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220F95F4C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v9 = type metadata accessor for WeatherMapOverlayFramesMetadata(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220EE9E94(a3, v12);
  ObjectType = swift_getObjectType();
  v14 = (*(a2 + 40))(ObjectType, a2);
  v15 = type metadata accessor for WeatherMapOverlayAnimation(0);
  swift_allocObject();
  v16 = swift_unknownObjectRetain();
  result = sub_220EE8ED4(v16, a2, v12, v14, a4);
  a5[3] = v15;
  a5[4] = &off_283482A88;
  *a5 = result;
  return result;
}

__int128 *sub_220F9607C(__int128 *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationLowHighLabelsView_lowLabel;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v5 = OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationLowHighLabelsView_highLabel;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v6 = &v1[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationLowHighLabelsView_model];
  v8 = a1[1];
  v7 = a1[2];
  *(v6 + 1) = v8;
  *(v6 + 2) = v7;
  v9 = *a1;
  v18 = v8;
  v19 = v9;
  v10 = *(a1 + 4);
  v11 = *(a1 + 5);
  *v6 = v9;
  sub_220F30FE8(&v19, v17);
  sub_220F30FE8(&v18, v17);
  v16.receiver = v1;
  v16.super_class = ObjectType;
  v12 = v10;
  v13 = v11;
  v14 = objc_msgSendSuper2(&v16, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_220F961A4();
  sub_220ED18D8(&v19);
  sub_220ED18D8(&v18);

  return v14;
}

void sub_220F961A4()
{
  v1 = v0;
  sub_220E41E50();
  v2 = sub_220FC3150();
  v3 = *&v0[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationLowHighLabelsView_lowLabel];
  v8 = v2;
  [v3 setFont_];
  v4 = &v1[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationLowHighLabelsView_model];
  [v3 setTextColor_];
  v5 = sub_220FC26C0();
  [v3 setText_];

  [v3 setTextAlignment_];
  [v3 setAdjustsFontSizeToFitWidth_];
  [v3 setMinimumScaleFactor_];
  v6 = *&v1[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationLowHighLabelsView_highLabel];
  [v6 setFont_];

  [v6 setTextColor_];
  v7 = sub_220FC26C0();
  [v6 setText_];

  [v6 setTextAlignment_];
  [v6 setAdjustsFontSizeToFitWidth_];
  [v6 setMinimumScaleFactor_];
  [v1 addSubview_];
  [v1 addSubview_];
}

void sub_220F96374()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationLowHighLabelsView_lowLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v2 = OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationLowHighLabelsView_highLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  sub_220FC3740();
  __break(1u);
}

void sub_220F96434()
{
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, sel_layoutSubviews);
  OUTLINED_FUNCTION_0_62();
  v1 = CGRectGetWidth(v18) + -12.0 + -4.0;
  v2 = *&v0[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationLowHighLabelsView_lowLabel];
  OUTLINED_FUNCTION_0_62();
  CGRectGetHeight(v19);
  [v2 bounds];
  [v2 setBounds_];
  v3 = *&v0[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationLowHighLabelsView_highLabel];
  OUTLINED_FUNCTION_0_62();
  CGRectGetHeight(v20);
  [v3 bounds];
  [v3 setBounds_];
  OUTLINED_FUNCTION_0_62();
  v4 = CGRectGetWidth(v21) * 0.5;
  OUTLINED_FUNCTION_0_62();
  v5 = CGRectGetHeight(v22) * 0.5 + 2.0;
  v6 = v1 * 0.25;
  if ([objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_])
  {
    [v2 setCenter_];
    v7 = v4 - v6;
  }

  else
  {
    [v2 setCenter_];
    v7 = v6 + v4;
  }

  [v3 setCenter_];
  sub_220F966A0();
  v9 = v8;
  sub_220F966A0();
  if (v10 < v9)
  {
    v9 = v10;
  }

  v11 = [v2 font];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 fontWithSize_];

    [v2 setFont_];
    v14 = [v3 font];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 fontWithSize_];

      [v3 setFont_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_220F966A0()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  sub_220F96950(v0);
  if (v2)
  {
    v3 = sub_220FC26C0();
  }

  else
  {
    v3 = 0;
  }

  [v1 setText_];

  v4 = [v0 font];
  [v1 setFont_];

  v5 = v1;
  [v5 sizeToFit];
  v6 = [v0 font];
  if (v6)
  {
    v7 = v6;
    [v6 pointSize];

    [v0 bounds];
    [v5 bounds];

    v8 = [v0 font];
    if (v8)
    {
      v9 = v8;
      [v8 pointSize];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_220F96950(void *a1)
{
  v1 = [a1 text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_220FC2700();

  return v3;
}

uint64_t (*sub_220F969B4(void *a1, uint64_t a2))()
{
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v4[4] = sub_220F97BC8(v4, a2);
  return sub_220F98264;
}

uint64_t (*sub_220F96A18(void *a1, char a2))()
{
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v4[4] = sub_220F97C58(v4, a2 & 1);
  return sub_220F96A7C;
}

void sub_220F96A80(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t static WeatherMapSessionStatistics.== infix(_:_:)(int64x2_t *a1, int64x2_t *a2)
{
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*a1, *a2), vceqq_s64(a1[1], a2[1])))))
  {
    return a1[2].i64[0] == a2[2].i64[0];
  }

  else
  {
    return OUTLINED_FUNCTION_4_1();
  }
}

uint64_t _s11WeatherMaps0A18MapStallStatisticsV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return a1[2] == a2[2];
  }

  else
  {
    return OUTLINED_FUNCTION_4_1();
  }
}

__n128 WeatherMapSessionStatistics.responseCounters.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 24);
  result = *(v1 + 8);
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  return result;
}

Swift::String __swiftcall WeatherMapSessionStatistics.description()()
{
  sub_220FC35C0();
  OUTLINED_FUNCTION_11_23();
  MEMORY[0x223D9BD60]();
  OUTLINED_FUNCTION_0_87();
  OUTLINED_FUNCTION_7_30();

  OUTLINED_FUNCTION_11_23();
  MEMORY[0x223D9BD60](0xD00000000000001ALL);
  OUTLINED_FUNCTION_0_87();
  OUTLINED_FUNCTION_7_30();

  MEMORY[0x223D9BD60](47, 0xE100000000000000);
  OUTLINED_FUNCTION_0_87();
  OUTLINED_FUNCTION_7_30();

  MEMORY[0x223D9BD60](47, 0xE100000000000000);
  OUTLINED_FUNCTION_0_87();
  OUTLINED_FUNCTION_7_30();

  OUTLINED_FUNCTION_6_32();
  v0 = OUTLINED_FUNCTION_0_87();
  MEMORY[0x223D9BD60](v0);

  MEMORY[0x223D9BD60](29549, 0xE200000000000000);
  v1 = 0;
  v2 = 0xE000000000000000;
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall WeatherMapStallStatistics.description()()
{
  sub_220FC35C0();
  OUTLINED_FUNCTION_11_23();
  MEMORY[0x223D9BD60]();
  OUTLINED_FUNCTION_0_87();
  OUTLINED_FUNCTION_7_30();

  OUTLINED_FUNCTION_11_23();
  MEMORY[0x223D9BD60](0xD000000000000013);
  OUTLINED_FUNCTION_0_87();
  OUTLINED_FUNCTION_7_30();

  OUTLINED_FUNCTION_6_32();
  v0 = OUTLINED_FUNCTION_0_87();
  MEMORY[0x223D9BD60](v0);

  MEMORY[0x223D9BD60](29549, 0xE200000000000000);
  v1 = 0;
  v2 = 0xE000000000000000;
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

unint64_t sub_220F96DE8(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

unint64_t sub_220F96E34@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_220F96DE8(*a1);
  *a2 = result;
  return result;
}

double sub_220F96EB0()
{
  sub_220FC1180();

  OUTLINED_FUNCTION_5_37(v0, v1, v2, v3, MEMORY[0x277D6CA18], v4, v5, v6, v8);

  return result;
}

uint64_t sub_220F96F2C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v4 = *(a1 + 24);
  *(a1 + 24) = 0x8000000000000000;
  v5 = sub_220F1AE38();
  if (__OFADD__(*(v4 + 16), (v6 & 1) == 0))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = v5;
  v8 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9F9D0, &unk_220FD8D70);
  if ((sub_220FC3710() & 1) == 0)
  {
LABEL_5:
    *(a1 + 24) = v4;
    if ((v8 & 1) == 0)
    {
      sub_220E98744(v7, a2, 0, v4);
    }

    v11 = *(v4 + 56);
    v12 = *(v11 + 8 * v7);
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (!v13)
    {
      *(v11 + 8 * v7) = v14;
      return swift_endAccess();
    }

    goto LABEL_10;
  }

  v9 = sub_220F1AE38();
  if ((v8 & 1) == (v10 & 1))
  {
    v7 = v9;
    goto LABEL_5;
  }

LABEL_11:
  result = sub_220FC3990();
  __break(1u);
  return result;
}

double sub_220F97060()
{
  sub_220FC1180();

  OUTLINED_FUNCTION_5_37(v0, v1, v2, v3, MEMORY[0x277D6CA18], v4, v5, v6, v8);

  return result;
}

uint64_t sub_220F970E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a1 + 40);
  *(a1 + 40) = 0x8000000000000000;
  v7 = sub_220F1AE34();
  if (__OFADD__(*(v6 + 16), (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F9C0, &qword_220FD8D68);
  if ((sub_220FC3710() & 1) == 0)
  {
LABEL_5:
    *(a1 + 40) = v6;
    if ((v10 & 1) == 0)
    {
      sub_220E98380(v9, v4 & 1, 0, 0, v6);
    }

    v13 = (*(v6 + 56) + 16 * v9);
    if (!__OFADD__(*v13, a3))
    {
      *v13 += a3;
      v14 = v13[1];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (!v15)
      {
        v13[1] = v16;
        return swift_endAccess();
      }

      goto LABEL_12;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = sub_220F1AE34();
  if ((v10 & 1) == (v12 & 1))
  {
    v9 = v11;
    goto LABEL_5;
  }

LABEL_13:
  result = sub_220FC3990();
  __break(1u);
  return result;
}

void sub_220F97234(void *a1@<X8>)
{
  v3 = sub_220F977D4(0, 1);
  v5 = v4;
  swift_beginAccess();
  v6 = *(v1 + 24);
  if (*(v6 + 16) && (v7 = sub_220F1AE38(), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    v9 = 0;
  }

  OUTLINED_FUNCTION_2_51();
  if (v10)
  {
    sub_220F1AE38();
    if (v11)
    {
      OUTLINED_FUNCTION_10_30();
    }

    else
    {
      v10 = 0;
    }
  }

  v12 = __OFADD__(v9, v10);
  v13 = v9 + v10;
  if (v12)
  {
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_2_51();
  if (v14)
  {
    sub_220F1AE38();
    if (v15)
    {
      OUTLINED_FUNCTION_10_30();
    }

    else
    {
      v14 = 0;
    }
  }

  v12 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v12)
  {
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_2_51();
  if (v17)
  {
    sub_220F1AE38();
    if (v18)
    {
      OUTLINED_FUNCTION_10_30();
    }

    else
    {
      v17 = 0;
    }
  }

  v12 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v12)
  {
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_2_51();
  if (v20 && (v21 = sub_220F1AE38(), (v22 & 1) != 0))
  {
    v23 = *(*(v6 + 56) + 8 * v21);
  }

  else
  {
    v23 = 0;
  }

  OUTLINED_FUNCTION_2_51();
  if (v24 && (v25 = sub_220F1AE38(), (v26 & 1) != 0))
  {
    v27 = *(*(v6 + 56) + 8 * v25);
  }

  else
  {
    v27 = 0;
  }

  OUTLINED_FUNCTION_2_51();
  if (v28)
  {
    sub_220F1AE38();
    if (v29)
    {
      OUTLINED_FUNCTION_10_30();
    }

    else
    {
      v28 = 0;
    }
  }

  if (v5)
  {
    v30 = -1;
  }

  else
  {
    v30 = v3;
  }

  *a1 = v23;
  a1[1] = v27;
  a1[2] = v28;
  a1[3] = v19;
  a1[4] = v30;
}

void sub_220F973C8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_220FC1350();
  v6 = aBlock[6];
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = v5;
  aBlock[4] = sub_220F981B8;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_220F97760;
  aBlock[3] = &block_descriptor_28;
  v8 = _Block_copy(aBlock);

  [v6 getAllTasksWithCompletionHandler_];
  _Block_release(v8);
}

uint64_t sub_220F974FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *), uint64_t a4, __n128 a5)
{
  v32 = a2;
  v33 = sub_220FBFD70();
  v8 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_220F43CDC();
  result = sub_220F43CDC();
  v30 = a4;
  v31 = a3;
  v29 = v12;
  if (result)
  {
    v14 = result;
    if (result >= 1)
    {
      v15 = 0;
      v16 = 0;
      v17 = (v8 + 8);
      while (1)
      {
        v18 = (a1 & 0xC000000000000001) != 0 ? MEMORY[0x223D9CB30](v16, a1) : *(a1 + 8 * v16 + 32);
        v19 = v18;
        v20 = [v18 _incompleteTaskMetrics];
        v21 = [v20 taskInterval];
        sub_220FBFD50();

        sub_220FBFD60();
        v23 = v22;
        result = (*v17)(v11, v33);
        v24 = v23 * 1000.0;
        if (COERCE__INT64(fabs(v23 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          break;
        }

        if (v24 <= -9.22337204e18)
        {
          goto LABEL_21;
        }

        if (v24 >= 9.22337204e18)
        {
          goto LABEL_22;
        }

        if (v24 >= 10001)
        {
          if (__OFADD__(v15++, 1))
          {
            goto LABEL_23;
          }

          sub_220F97060();
        }

        ++v16;

        if (v14 == v16)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v15 = 0;
LABEL_16:
    v26 = sub_220F977D4(1, 1);
    if (v27)
    {
      v28 = -1;
    }

    else
    {
      v28 = v26;
    }

    v34[0] = v29;
    v34[1] = v15;
    v34[2] = v28;
    return v31(v34);
  }

  return result;
}

double sub_220F97760(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_220F981DC();
  v3 = sub_220FC2970();

  v2(v3);

  return result;
}

uint64_t sub_220F977D4(char a1, char a2)
{
  v4 = v2;
  swift_beginAccess();
  v7 = 0;
  v8 = *(v4 + 40);
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = a1 & 1;
  while (1)
  {
    if (!v11)
    {
      while (1)
      {
        v14 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v14 >= v12)
        {
          return 0;
        }

        v11 = *(v8 + 64 + 8 * v14);
        ++v7;
        if (v11)
        {
          v7 = v14;
          goto LABEL_9;
        }
      }

      __break(1u);
LABEL_22:
      v23 = -1;
      if ((a2 & 1) == 0)
      {
        return v23;
      }

      goto LABEL_23;
    }

LABEL_9:
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v3 = *(*(v8 + 48) + (v15 | (v7 << 6)));
    if (v3 == v13)
    {
      v16 = *(v4 + 40);
      if (*(v16 + 16))
      {
        result = sub_220F1AE34();
        if (v18)
        {
          break;
        }
      }
    }
  }

  v19 = (*(v16 + 56) + 16 * result);
  v20 = v19[1];
  if (!v20)
  {
    goto LABEL_22;
  }

  v21 = *v19;
  if (v21 != 0x8000000000000000 || v20 != -1)
  {
    v23 = v21 / v20;
    if ((a2 & 1) == 0)
    {
      return v23;
    }

LABEL_23:

    v24 = sub_220F96E60(v28);
    v26 = sub_220F96A18(v27, v3);
    if ((*(v25 + 16) & 1) == 0)
    {
      *v25 = 0;
      *(v25 + 8) = 0;
    }

    (v26)(v27, 0);
    (v24)(v28, 0);

    return v23;
  }

  __break(1u);
  return result;
}

uint64_t sub_220F97998()
{

  return v0;
}

uint64_t sub_220F979D8()
{
  sub_220F97998();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

_BYTE *sub_220F97A18(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_220F97AF0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t (*sub_220F97BC8(void *a1, uint64_t a2))()
{
  v4 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4[8] = sub_220F98160(v4);
  v4[9] = sub_220F97D4C(v4 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_220F9826C;
}

uint64_t (*sub_220F97C58(void *a1, char a2))()
{
  v4 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4[8] = sub_220F98188(v4);
  v4[9] = sub_220F97F7C(v4 + 4, a2 & 1, isUniquelyReferenced_nonNull_native);
  return sub_220F97CE8;
}

void sub_220F97CEC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_220F97D4C(void *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  v7 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v7;
  v7[1] = a2;
  v7[2] = v3;
  v8 = *v3;
  v9 = sub_220F1937C();
  *(v7 + 32) = v10 & 1;
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D980, &qword_220FD8D80);
  if (sub_220FC3710())
  {
    v13 = sub_220F1937C();
    if ((v12 & 1) == (v14 & 1))
    {
      v11 = v13;
      goto LABEL_5;
    }

LABEL_10:
    type metadata accessor for MTLPixelFormat(0);
    result = sub_220FC3990();
    __break(1u);
    return result;
  }

LABEL_5:
  v7[3] = v11;
  if (v12)
  {
    v15 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v15 = 0;
  }

  *v7 = v15;
  return sub_220F97E74;
}

void sub_220F97E74(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 32);
  if (v2)
  {
    v4 = v1[3];
    v5 = *v1[2];
    if (v3)
    {
      *(*(v5 + 56) + 8 * v4) = v2;
    }

    else
    {
      sub_220E9833C(v4, v1[1], v2, v5);
    }
  }

  else if ((*a1)[4])
  {
    type metadata accessor for MTLPixelFormat(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F9E0, &qword_220FD6078);
    sub_220E1A1FC(&qword_27CF9F390, type metadata accessor for MTLPixelFormat, &unk_220FC7D84);
    sub_220FC3730();
  }

  free(v1);
}

void (*sub_220F97F7C(void *a1, char a2, char a3))(__int128 **a1)
{
  v4 = v3;
  v7 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v7;
  v7[3] = v3;
  *(v7 + 17) = a2;
  v8 = *v3;
  v9 = sub_220F1AE34();
  *(v7 + 18) = v10 & 1;
  v11 = v10 ^ 1;
  if (__OFADD__(*(v8 + 16), (v10 ^ 1) & 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F9C0, &qword_220FD8D68);
  if (sub_220FC3710())
  {
    v14 = sub_220F1AE34();
    if ((v13 & 1) == (v15 & 1))
    {
      v12 = v14;
      goto LABEL_5;
    }

LABEL_9:
    result = sub_220FC3990();
    __break(1u);
    return result;
  }

LABEL_5:
  v7[4] = v12;
  v16 = 0uLL;
  if (v13)
  {
    v16 = *(*(*v4 + 56) + 16 * v12);
  }

  *v7 = v16;
  *(v7 + 16) = v11 & 1;
  return sub_220F980B4;
}

void sub_220F980B4(__int128 **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 18);
  if ((*a1)[1])
  {
    if (*(*a1 + 18))
    {
      sub_220E1E1FC();
      sub_220FC3730();
    }
  }

  else
  {
    v4 = *(v1 + 4);
    v5 = **(v1 + 3);
    if (v3)
    {
      *(*(v5 + 56) + 16 * v4) = v2;
    }

    else
    {
      sub_220E98380(v4, *(v1 + 17) & 1, v2, *(&v2 + 1), v5);
    }
  }

  free(v1);
}

void (*sub_220F98160(void *a1))(uint64_t a1)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_220F98244;
}

void (*sub_220F98188(void *a1))(uint64_t a1)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_220F981B0;
}

double block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_220F981DC()
{
  result = qword_27CF9F9C8;
  if (!qword_27CF9F9C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CF9F9C8);
  }

  return result;
}

void OUTLINED_FUNCTION_6_32()
{

  JUMPOUT(0x223D9BD60);
}

BOOL sub_220F982A8()
{
  v0 = sub_220FC0820();
  OUTLINED_FUNCTION_6();
  v2 = v1;
  MEMORY[0x28223BE20](v3, v4);
  OUTLINED_FUNCTION_4();
  v7 = (v5 - v6);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v15 - v10;
  sub_220FC07D0();
  (*(v2 + 104))(v7, *MEMORY[0x277CE3390], v0);
  sub_220F995E8();
  v12 = sub_220FC26B0();
  v13 = *(v2 + 8);
  v13(v7, v0);
  v13(v11, v0);
  return (v12 & 1) == 0;
}

uint64_t sub_220F983E0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_220FC0820();
  OUTLINED_FUNCTION_6();
  v4 = v3;
  MEMORY[0x28223BE20](v5, v6);
  OUTLINED_FUNCTION_4();
  v30 = v7 - v8;
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_12_0();
  v29 = v11;
  v12 = sub_220FC0800();
  OUTLINED_FUNCTION_6();
  v14 = v13;
  MEMORY[0x28223BE20](v15, v16);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_62();
  result = sub_220FC0980();
  v18 = 0;
  v31 = *(result + 16);
  v28 = *MEMORY[0x277CE3390];
  v19 = (v4 + 104);
  v20 = (v4 + 8);
  v27 = v19;
  while (1)
  {
    if (v31 == v18)
    {

      v24 = 1;
      v25 = a1;
      return __swift_storeEnumTagSinglePayload(v25, v24, 1, v12);
    }

    if (v18 >= *(result + 16))
    {
      break;
    }

    v21 = result;
    (*(v14 + 16))(v1, result + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v18, v12);
    sub_220FC07D0();
    (*v27)(v30, v28, v2);
    sub_220F995E8();
    v22 = sub_220FC26B0();
    v23 = *v20;
    (*v20)(v30, v2);
    v23(v29, v2);
    if ((v22 & 1) == 0)
    {

      v25 = a1;
      (*(v14 + 32))(a1, v1, v12);
      v24 = 0;
      return __swift_storeEnumTagSinglePayload(v25, v24, 1, v12);
    }

    ++v18;
    (*(v14 + 8))(v1, v12);
    result = v21;
  }

  __break(1u);
  return result;
}

void sub_220F986A0()
{
  sub_220FC02B0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v1, v2);
  OUTLINED_FUNCTION_3();
  sub_220FC07F0();
  sub_220FC0210();
  v3 = OUTLINED_FUNCTION_10_31();
  v4(v3);
  if (v0 <= 0.0)
  {
    return;
  }

  v5 = OUTLINED_FUNCTION_4_46(v0 / 60.0);
  if (!v7 & v6)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_2_24();
  if (!v8)
  {
    goto LABEL_10;
  }
}

uint64_t sub_220F987A4@<X0>(uint64_t a1@<X8>)
{
  v59[0] = a1;
  v67 = sub_220FC0820();
  OUTLINED_FUNCTION_6();
  v69 = v2;
  MEMORY[0x28223BE20](v3, v4);
  OUTLINED_FUNCTION_4();
  v66 = v5 - v6;
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_12_0();
  v65 = v9;
  v72 = sub_220FC02B0();
  OUTLINED_FUNCTION_6();
  v70 = v10;
  MEMORY[0x28223BE20](v11, v12);
  OUTLINED_FUNCTION_3();
  v15 = v14 - v13;
  v16 = sub_220FC0540();
  OUTLINED_FUNCTION_6();
  v18 = v17;
  MEMORY[0x28223BE20](v19, v20);
  OUTLINED_FUNCTION_4();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24, v25);
  OUTLINED_FUNCTION_12_0();
  v73 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E630, &unk_220FD0A20);
  OUTLINED_FUNCTION_6();
  v29 = v28;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v30, v31);
  v33 = v59 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E6C0, &qword_220FD0F58) - 8;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v35, v36);
  OUTLINED_FUNCTION_62();
  (*(v29 + 16))(v33, v74, v27);
  OUTLINED_FUNCTION_3_49(&qword_2812CA250);
  sub_220FC28E0();
  v37 = *(v34 + 44);
  v38 = v27;
  v39 = OUTLINED_FUNCTION_5_38(&qword_2812CA248);
  v40 = v18;
  v74 = (v18 + 32);
  ++v70;
  v71 = (v18 + 16);
  v62 = *MEMORY[0x277CE3390];
  v60 = (v69 + 8);
  v61 = (v69 + 104);
  v41 = v37;
  v42 = (v40 + 8);
  v63 = v16;
  v64 = v15;
  v59[1] = v39;
  while (1)
  {
    sub_220FC2CE0();
    if (*(v1 + v41) == v75[0])
    {
      sub_220E45374(v1, &qword_27CF9E6C0, &qword_220FD0F58);
      v56 = 1;
      v57 = v59[0];
      return __swift_storeEnumTagSinglePayload(v57, v56, 1, v16);
    }

    v43 = sub_220FC2D00();
    v44 = v73;
    (*v71)(v73);
    v43(v75, 0);
    sub_220FC2CF0();
    v69 = *v74;
    (v69)(v23, v44, v16);
    sub_220FC0520();
    sub_220FC0210();
    v46 = v45;
    (*v70)(v15, v72);
    if (v46 >= -3600.0)
    {
      v47 = v65;
      sub_220FC0500();
      v49 = v66;
      v48 = v67;
      (*v61)(v66, v62, v67);
      sub_220F995E8();
      v68 = sub_220FC26B0();
      v50 = v41;
      v51 = v38;
      v52 = v23;
      v53 = *v60;
      v54 = v49;
      v16 = v63;
      (*v60)(v54, v48);
      v55 = v47;
      v15 = v64;
      v53(v55, v48);
      v23 = v52;
      v38 = v51;
      v41 = v50;
      if ((v68 & 1) == 0)
      {
        break;
      }
    }

    (*v42)(v23, v16);
  }

  sub_220E45374(v1, &qword_27CF9E6C0, &qword_220FD0F58);
  v57 = v59[0];
  (v69)(v59[0], v23, v16);
  v56 = 0;
  return __swift_storeEnumTagSinglePayload(v57, v56, 1, v16);
}

void sub_220F98D08()
{
  sub_220FC02B0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v1, v2);
  OUTLINED_FUNCTION_3();
  sub_220FC0520();
  sub_220FC0210();
  v3 = OUTLINED_FUNCTION_10_31();
  v4(v3);
  if (v0 <= 0.0)
  {
    return;
  }

  v5 = OUTLINED_FUNCTION_4_46(v0 / 3600.0);
  if (!v7 & v6)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_2_24();
  if (!v8)
  {
    goto LABEL_10;
  }
}

uint64_t sub_220F98E0C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBC0, &qword_220FCA9D0);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v3, v4);
  OUTLINED_FUNCTION_62();
  v5 = sub_220FC02B0();
  OUTLINED_FUNCTION_6();
  v7 = v6;
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_4();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v20 - v15;
  sub_220FC07E0();
  if (__swift_getEnumTagSinglePayload(v2, 1, v5) == 1)
  {
    sub_220E45374(v2, &qword_27CF9EBC0, &qword_220FCA9D0);
LABEL_5:
    sub_220FC07F0();
    v18 = sub_220FC01F0();
    (*(v7 + 8))(v12, v5);
    return v18 & 1;
  }

  (*(v7 + 32))(v16, v2, v5);
  v17 = sub_220FC01F0();
  (*(v7 + 8))(v16, v5);
  if ((v17 & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = 0;
  return v18 & 1;
}

void Forecast<>.numberOfHoursWithPrecipitation(withinHoursFromNow:minimumChance:)(uint64_t a1, double a2)
{
  v70 = a1;
  v69 = sub_220FC0820();
  OUTLINED_FUNCTION_6();
  v71 = v5;
  MEMORY[0x28223BE20](v6, v7);
  OUTLINED_FUNCTION_4();
  v68 = v8 - v9;
  MEMORY[0x28223BE20](v10, v11);
  OUTLINED_FUNCTION_12_0();
  v67 = v12;
  sub_220FC02B0();
  OUTLINED_FUNCTION_6();
  v76 = v13;
  v77 = v14;
  MEMORY[0x28223BE20](v13, v15);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_62();
  v16 = sub_220FC0540();
  OUTLINED_FUNCTION_6();
  v18 = v17;
  MEMORY[0x28223BE20](v19, v20);
  OUTLINED_FUNCTION_3();
  v75 = v22 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E630, &unk_220FD0A20);
  OUTLINED_FUNCTION_6();
  v25 = v24;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v26, v27);
  v29 = &v63 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E6C0, &qword_220FD0F58) - 8;
  OUTLINED_FUNCTION_5();
  v33 = MEMORY[0x28223BE20](v31, v32);
  v35 = &v63 - v34;
  (*(v25 + 16))(v29, v2, v23, v33);
  v36 = v23;
  OUTLINED_FUNCTION_3_49(&qword_2812CA250);
  sub_220FC28E0();
  v37 = *(v30 + 44);
  v38 = OUTLINED_FUNCTION_5_38(&qword_2812CA248);
  v39 = 0;
  v74 = (v18 + 16);
  ++v77;
  v65 = *MEMORY[0x277CE3390];
  v64 = (v71 + 104);
  v63 = (v71 + 8);
  v40 = (v18 + 8);
  v66 = v36;
  v72 = v38;
  v73 = v37;
  do
  {
    sub_220FC2CE0();
    if (*&v35[v37] == v78[0])
    {
      sub_220E45374(v35, &qword_27CF9E6C0, &qword_220FD0F58);
      return;
    }

    v41 = sub_220FC2D00();
    v42 = v75;
    (*v74)(v75);
    v41(v78, 0);
    sub_220FC2CF0();
    sub_220FC0520();
    sub_220FC0210();
    v44 = v43;
    v45 = *v77;
    (*v77)(v3, v76);
    if (v44 < -3600.0)
    {
      goto LABEL_16;
    }

    sub_220FC0520();
    sub_220FC0210();
    v47 = v46;
    v45(v3, v76);
    if (v47 <= 0.0)
    {
      if (v70 < 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v48 = OUTLINED_FUNCTION_4_46(v47 / 3600.0);
      if (!v50 & v49)
      {
        goto LABEL_22;
      }

      if (v48 <= -9.22337204e18)
      {
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_2_24();
      if (!v52)
      {
        goto LABEL_24;
      }

      if (v51 <= 1)
      {
        if (v70 < 1)
        {
          goto LABEL_16;
        }
      }

      else if (v51 > v70)
      {
        goto LABEL_16;
      }
    }

    v53 = v67;
    sub_220FC0500();
    v54 = v16;
    v56 = v68;
    v55 = v69;
    (*v64)(v68, v65, v69);
    sub_220F995E8();
    LODWORD(v71) = sub_220FC26B0();
    v57 = *v63;
    v58 = v56;
    v16 = v54;
    v42 = v75;
    (*v63)(v58, v55);
    v57(v53, v55);
    if (v71)
    {
LABEL_16:
      (*v40)(v42, v16);
      v59 = 0;
      goto LABEL_17;
    }

    sub_220FC0510();
    v62 = v61;
    (*v40)(v42, v16);
    v59 = v62 >= a2;
LABEL_17:
    v60 = __OFADD__(v39, v59);
    v39 += v59;
    v37 = v73;
  }

  while (!v60);
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

uint64_t sub_220F99598(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9E630, &unk_220FD0A20);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_220F995E8()
{
  result = qword_2812CA258;
  if (!qword_2812CA258)
  {
    sub_220FC0820();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CA258);
  }

  return result;
}

id sub_220F99664()
{
  type metadata accessor for BundleLookup();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_2812CE4B0 = result;
  return result;
}

unint64_t MapLocationAccessibilityModel.OverlayDescriptionKey.rawValue.getter()
{
  result = 0xD000000000000022;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000025;
      break;
    case 2:
      result = 0xD000000000000023;
      break;
    case 3:
      result = 0xD00000000000001CLL;
      break;
    default:
      return result;
  }

  return result;
}

WeatherMaps::MapLocationAccessibilityModel::OverlayDescriptionKey_optional __swiftcall MapLocationAccessibilityModel.OverlayDescriptionKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220FC37A0();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_220F997C8@<X0>(unint64_t *a1@<X8>)
{
  result = MapLocationAccessibilityModel.OverlayDescriptionKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MapLocationAccessibilityModel.accessibilityDescription.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WeatherMaps29MapLocationAccessibilityModel_accessibilityDescription);

  return v1;
}

uint64_t MapLocationAccessibilityModel.overlayDescriptionKey.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WeatherMaps29MapLocationAccessibilityModel_overlayDescriptionKey);

  return v1;
}

uint64_t MapLocationAccessibilityModel.expiration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11WeatherMaps29MapLocationAccessibilityModel_expiration;
  v4 = sub_220FC02B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id sub_220F99AAC(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_220FC02B0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a4;
  *&v4[OBJC_IVAR____TtC11WeatherMaps29MapLocationAccessibilityModel_location] = a1;
  v16 = &v4[OBJC_IVAR____TtC11WeatherMaps29MapLocationAccessibilityModel_accessibilityDescription];
  *v16 = a2;
  *(v16 + 1) = a3;
  v17 = 0xD000000000000022;
  v18 = "n";
  switch(v15)
  {
    case 1:
      v18 = "ibilityDescription";
      v17 = 0xD000000000000025;
      break;
    case 2:
      v18 = "essibilityDescription";
      v17 = 0xD000000000000023;
      break;
    case 3:
      v18 = "sibilityDescription";
      v17 = 0xD00000000000001CLL;
      break;
    default:
      break;
  }

  v19 = &v4[OBJC_IVAR____TtC11WeatherMaps29MapLocationAccessibilityModel_overlayDescriptionKey];
  *v19 = v17;
  v19[1] = v18 | 0x8000000000000000;
  v20 = a1;
  sub_220FC0200();
  (*(v11 + 32))(&v4[OBJC_IVAR____TtC11WeatherMaps29MapLocationAccessibilityModel_expiration], v14, v10);
  v23.receiver = v4;
  v23.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v23, sel_init);

  return v21;
}

id MapLocationAccessibilityModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MapLocationAccessibilityModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_220F99D38()
{
  result = qword_27CF9FA00;
  if (!qword_27CF9FA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9FA00);
  }

  return result;
}

uint64_t type metadata accessor for MapLocationAccessibilityModel(uint64_t a1)
{
  result = qword_2812C6458;
  if (!qword_2812C6458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220F99E84(uint64_t a1)
{
  result = sub_220FC02B0();
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

_BYTE *storeEnumTagSinglePayload for MapLocationAccessibilityModel.OverlayDescriptionKey(_BYTE *result, unsigned int a2, unsigned int a3)
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

id sub_220F9A02C(uint64_t a1, uint64_t a2)
{
  if (v2[OBJC_IVAR____TtC11WeatherMaps31WeatherMapAnnotationStrokeLayer_disablesImplicitAnimations])
  {
    return 0;
  }

  ObjectType = swift_getObjectType();
  v5 = sub_220FC26C0();
  v7.receiver = v2;
  v7.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v7, sel_actionForKey_, v5);

  return v3;
}

id sub_220F9A134()
{
  ObjectType = swift_getObjectType();
  v0[OBJC_IVAR____TtC11WeatherMaps31WeatherMapAnnotationStrokeLayer_disablesImplicitAnimations] = 1;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

void *sub_220F9A1A0(void *a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtC11WeatherMaps31WeatherMapAnnotationStrokeLayer_disablesImplicitAnimations] = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = sub_220FC3920();
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithLayer_, v4);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v5;
}

id sub_220F9A288(void *a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtC11WeatherMaps31WeatherMapAnnotationStrokeLayer_disablesImplicitAnimations] = 1;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t sub_220F9A350@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D288, &qword_220FCBA00);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v16 - v4;
  v6 = sub_220FC0090();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() defaultManager];
  v12 = [v11 URLsForDirectory:13 inDomains:1];

  v13 = sub_220FC2970();
  sub_220EF539C(v13, v5);

  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_220F9A55C(v5);
    v14 = 1;
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    sub_220FC0060();
    (*(v7 + 8))(v10, v6);
    v14 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a1, v14, 1, v6);
}

uint64_t sub_220F9A55C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D288, &qword_220FCBA00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220F9A5C4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_220F9A604(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_220F9A698(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3FFE && *(a1 + 50))
    {
      v2 = *a1 + 16381;
    }

    else
    {
      v2 = (*(a1 + 48) & 0x3E00 | (*(a1 + 48) >> 14) & 0xFFFFFE03 | (4 * (*(a1 + 48) >> 1))) ^ 0x3FFF;
      if (v2 >= 0x3FFD)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_220F9A6F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 16382;
    if (a3 >= 0x3FFE)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFE)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 2) & 0xFFF) - (a2 << 12);
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = (4 * v3) & 0xFE00 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

void sub_220F9A7CC(uint64_t a1)
{
  sub_220F9A854(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for WeatherMapAnnotationContentViewModel.ScaleModel(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for WeatherMapAnnotationContentViewModel.TitleWithHeaderFooterModel(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_220F9A854(uint64_t a1)
{
  if (!qword_27CF9FA20)
  {
    type metadata accessor for WeatherMapAnnotationContentViewModel.TitleIconModel(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF9FA20);
    }
  }
}

unint64_t sub_220F9A948(uint64_t a1)
{
  result = type metadata accessor for WeatherMapAnnotationBackground(319);
  if (v2 <= 0x3F)
  {
    result = sub_220E31740();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_220F9AA1C(uint64_t a1)
{
  sub_220F9AB28(319);
  if (v1 <= 0x3F)
  {
    sub_220F9AB8C();
    if (v2 <= 0x3F)
    {
      sub_220F322EC(319, &qword_27CF9D198, MEMORY[0x277D83B88]);
      if (v3 <= 0x3F)
      {
        sub_220F322EC(319, &qword_27CF9FA58, &type metadata for WeatherMapAnnotationContentViewModel.FooterSection);
        if (v4 <= 0x3F)
        {
          type metadata accessor for WeatherMapAnnotationBackground(319);
          if (v5 <= 0x3F)
          {
            sub_220E31740();
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

void sub_220F9AB28(uint64_t a1)
{
  if (!qword_27CF9FA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9CA78, &unk_220FD4EF0);
    v1 = sub_220FC2A10();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF9FA48);
    }
  }
}

void sub_220F9AB8C()
{
  if (!qword_27CF9FA50)
  {
    v0 = sub_220FC2D30();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF9FA50);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_14_19(*(a1 + 8));
  }

  type metadata accessor for WeatherMapAnnotationBackground(0);
  v5 = OUTLINED_FUNCTION_2_52(*(a3 + 28));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void __swift_store_extra_inhabitant_indexTm()
{
  OUTLINED_FUNCTION_0_88();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    type metadata accessor for WeatherMapAnnotationBackground(0);
    v5 = OUTLINED_FUNCTION_2_52(*(v4 + 28));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

void sub_220F9AD10(uint64_t a1)
{
  sub_220F322EC(319, &qword_2812C5DC0, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for RenderingMode(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for WeatherMapAnnotationBackground(319);
      if (v3 <= 0x3F)
      {
        sub_220E31740();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_220F9ADEC(uint64_t a1, int a2)
{
  if (a2)
  {
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
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_220F9AE2C(uint64_t result, int a2, int a3)
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

uint64_t sub_220F9AE7C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 50))
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

uint64_t sub_220F9AEBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 50) = 1;
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

    *(result + 50) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_220F9AF24(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentBackgroundView_model;
  swift_beginAccess();
  sub_220E3D224(a1, v1 + v3);
  swift_endAccess();
  sub_220F9AFA4();
  [v1 setNeedsDisplay];
  OUTLINED_FUNCTION_0_89();
  return sub_220F9BAC4(a1, v4);
}

void sub_220F9AFA4()
{
  v1 = v0;
  v38 = type metadata accessor for WeatherMapAnnotationContentViewModel.TitleWithHeaderFooterModel(0);
  MEMORY[0x28223BE20](v38, v2);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WeatherMapAnnotationContentViewModel.TitleIconModel(0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WeatherMapAnnotationBackground(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WeatherMapAnnotationContentViewModel.ScaleModel(0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for WeatherMapAnnotationContentViewModel(0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentBackgroundView_model;
  swift_beginAccess();
  sub_220F9BA04(&v1[v21], v20, type metadata accessor for WeatherMapAnnotationContentViewModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_220F9BA64(v20, v8, type metadata accessor for WeatherMapAnnotationContentViewModel.TitleIconModel);
    sub_220F9BA04(&v8[*(v5 + 28)], v12, type metadata accessor for WeatherMapAnnotationBackground);
    sub_220F85050(v12);
    v26 = OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentBackgroundView_scaleLayer;
    swift_beginAccess();
    v27 = *&v1[v26];
    if (v27)
    {
      swift_endAccess();
      [v27 removeFromSuperlayer];
      v28 = type metadata accessor for WeatherMapAnnotationContentViewModel.TitleIconModel;
      v29 = v8;
LABEL_9:
      sub_220F9BAC4(v29, v28);
LABEL_15:
      v36 = *&v1[v26];
      *&v1[v26] = 0;

      return;
    }

    v34 = type metadata accessor for WeatherMapAnnotationContentViewModel.TitleIconModel;
    v35 = v8;
LABEL_14:
    sub_220F9BAC4(v35, v34);
    swift_endAccess();
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_220F9BA64(v20, v4, type metadata accessor for WeatherMapAnnotationContentViewModel.TitleWithHeaderFooterModel);
    sub_220F9BA04(&v4[*(v38 + 28)], v12, type metadata accessor for WeatherMapAnnotationBackground);
    sub_220F85050(v12);
    v26 = OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentBackgroundView_scaleLayer;
    swift_beginAccess();
    v30 = *&v1[v26];
    if (v30)
    {
      swift_endAccess();
      [v30 removeFromSuperlayer];
      v28 = type metadata accessor for WeatherMapAnnotationContentViewModel.TitleWithHeaderFooterModel;
      v29 = v4;
      goto LABEL_9;
    }

    v34 = type metadata accessor for WeatherMapAnnotationContentViewModel.TitleWithHeaderFooterModel;
    v35 = v4;
    goto LABEL_14;
  }

  sub_220F9BA64(v20, v16, type metadata accessor for WeatherMapAnnotationContentViewModel.ScaleModel);
  sub_220F9BA04(&v16[*(v13 + 36)], v12, type metadata accessor for WeatherMapAnnotationBackground);
  sub_220F85050(v12);
  v23 = OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentBackgroundView_scaleLayer;
  swift_beginAccess();
  v24 = *&v1[v23];
  if (v24)
  {
    v25 = v24;
    sub_220F9B73C(v25, v16);
  }

  else
  {
    v31 = [objc_allocWithZone(type metadata accessor for WeatherMapCircularGradientLayer()) init];
    v32 = *&v1[v23];
    *&v1[v23] = v31;
    v33 = v31;

    sub_220F9B73C(v33, v16);
    v25 = [v1 layer];
    [v25 addSublayer_];
  }

  sub_220F9BAC4(v16, type metadata accessor for WeatherMapAnnotationContentViewModel.ScaleModel);
}

char *sub_220F9B48C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentBackgroundView_backgroundView;
  *&v1[v4] = [objc_allocWithZone(type metadata accessor for WeatherMapAnnotationBackgroundView(0)) init];
  *&v1[OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentBackgroundView_scaleLayer] = 0;
  sub_220F9BA04(a1, &v1[OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentBackgroundView_model], type metadata accessor for WeatherMapAnnotationContentViewModel);
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v10, sel_initWithFrame_, 0.0, 0.0, 56.0, 56.0);
  v6 = *&v5[OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentBackgroundView_backgroundView];
  v7 = v5;
  [v7 addSubview_];
  sub_220F9AFA4();

  OUTLINED_FUNCTION_0_89();
  sub_220F9BAC4(a1, v8);
  return v7;
}

void sub_220F9B58C()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentBackgroundView_backgroundView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for WeatherMapAnnotationBackgroundView(0)) init];
  *(v0 + OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentBackgroundView_scaleLayer) = 0;
  sub_220FC3740();
  __break(1u);
}

void sub_220F9B638()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentBackgroundView_backgroundView];
  [v0 bounds];
  [v1 setFrame_];
  v2 = OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentBackgroundView_scaleLayer;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (v3)
  {
    v4 = v3;
    [v0 bounds];
    [v4 setFrame_];
  }
}

id sub_220F9B73C(void *a1, uint64_t a2)
{

  sub_220EC117C(v4);
  v5 = *(a2 + 56);
  v6 = *(a2 + 48);
  if (v5)
  {
    v6 = 0.0;
  }

  sub_220EC10C0(v6);
  v7 = *(a2 + *(type metadata accessor for WeatherMapAnnotationContentViewModel.ScaleModel(0) + 44));
  sub_220EC10DC(v7);
  result = sub_220EC1160(v5 ^ 1u);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  if (v9 > v10)
  {
    __break(1u);
  }

  else
  {
    sub_220EC1140(v9, v10);
    v11 = objc_opt_self();
    v12 = [v11 appearance];
    v13 = [v12 semanticContentAttribute];

    result = [v11 userInterfaceLayoutDirectionForSemanticContentAttribute_];
    if (result == 1)
    {
      [a1 bounds];
      Width = CGRectGetWidth(v16);
      CATransform3DMakeScale(&v15, -1.0, 1.0, Width);
      return [a1 setTransform_];
    }
  }

  return result;
}

uint64_t type metadata accessor for WeatherMapAnnotationContentBackgroundView(uint64_t a1)
{
  result = qword_27CF9FA80;
  if (!qword_27CF9FA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220F9B95C(uint64_t a1)
{
  result = type metadata accessor for WeatherMapAnnotationContentViewModel(319);
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

uint64_t sub_220F9BA04(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_220F9BA64(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_220F9BAC4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_220F9BB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90, &unk_220FC9CE0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v25 - v11;
  sub_220E6ED2C(a3, v25 - v11);
  v13 = sub_220FC2AE0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_220F9D97C(v12);
  }

  else
  {
    sub_220FC2AD0();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_220FC2A30();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_220FC2770() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_220F9D97C(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_220F9D97C(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_220F9BDD8(uint64_t a1)
{
  sub_220FC3A40();
  sub_220E2DC10(v3, *v1);
  return sub_220FC3A90();
}

uint64_t sub_220F9BE30()
{
  if (qword_27CF9C1C8 != -1)
  {
LABEL_19:
    swift_once();
  }

  v0 = 0;
  v1 = off_27CF9FA90;
  v2 = *(off_27CF9FA90 + 2);
  v3 = off_27CF9FA90 + 32;
  v4 = MEMORY[0x277D84F90];
  do
  {
    if (v2)
    {
      v5 = v1[2];
      if (!v5)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v17 = 0;
      MEMORY[0x223D9DE10](&v17, 8);
      v6 = (v17 * v5) >> 64;
      if (v5 > v17 * v5)
      {
        v7 = -v5 % v5;
        if (v7 > v17 * v5)
        {
          do
          {
            v17 = 0;
            MEMORY[0x223D9DE10](&v17, 8);
          }

          while (v7 > v17 * v5);
          v6 = (v17 * v5) >> 64;
        }
      }

      if (v6 >= v1[2])
      {
        goto LABEL_18;
      }

      v8 = &v3[16 * v6];
      v10 = *v8;
      v9 = *(v8 + 1);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_220F37E44(0, *(v4 + 16) + 1, 1, v4);
        v4 = v14;
      }

      v12 = *(v4 + 16);
      v11 = *(v4 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_220F37E44(v11 > 1, v12 + 1, 1, v4);
        v4 = v15;
      }

      *(v4 + 16) = v12 + 1;
      v13 = v4 + 16 * v12;
      *(v13 + 32) = v10;
      *(v13 + 40) = v9;
    }

    ++v0;
  }

  while (v0 != 16);
  v17 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FBD0, &qword_220FD9378);
  sub_220F9D7D0();
  return sub_220FC28B0();
}

uint64_t AsyncTaskOperation.operationID.getter()
{
  v1 = *(v0 + qword_27CF9FA98);

  return v1;
}

uint64_t (*sub_220F9C030@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (**a3)()@<X8>))()
{
  v4 = *(a1 + a2 - 8);
  result = sub_220F9C148();
  if (result)
  {
    v7 = result;
    v8 = v6;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v7;
    *(result + 4) = v8;
    v9 = sub_220F9D7A8;
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
  a3[1] = result;
  return result;
}

uint64_t sub_220F9C0AC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1)
  {
    v6 = *(a3 + a4 - 8);
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = v4;
    v7[4] = v5;
    v8 = sub_220F9D780;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  sub_220E1AADC(v4, v5);
  return sub_220F9C1A4(v8, v7);
}

uint64_t sub_220F9C148()
{
  v1 = (v0 + qword_27CF9FAA0);
  swift_beginAccess();
  v2 = *v1;
  sub_220E1AADC(*v1, v1[1]);
  return v2;
}

uint64_t sub_220F9C1A4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_27CF9FAA0);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_220E2DD2C(v6, v7);
}

void sub_220F9C264()
{
  v1 = sub_220FC26C0();
  [v0 willChangeValueForKey_];
}

void sub_220F9C2C0()
{
  v1 = sub_220FC26C0();
  [v0 didChangeValueForKey_];
}

void sub_220F9C32C(char a1)
{
  sub_220F9C264();
  *(v1 + qword_27CF9FAB0) = a1;

  sub_220F9C2C0();
}

double sub_220F9C36C()
{
  v1 = sub_220FC1450();
  OUTLINED_FUNCTION_6();
  v3 = v2;
  MEMORY[0x28223BE20](v4, v5);
  v7 = (&v24 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90, &unk_220FC9CE0);
  *&v10 = MEMORY[0x28223BE20](v8 - 8, v9).n128_u64[0];
  v12 = &v24 - v11;
  if ([v0 isCancelled])
  {
    v13 = sub_220F9C148();
    if (v13)
    {
      v16 = v13;
      v17 = v14;
      v18 = sub_220FC12C0();
      sub_220F9D738(&qword_27CF9FAA8, MEMORY[0x277D6CD00], MEMORY[0x277D6CD08]);
      v19 = swift_allocError();
      (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D6CCF8], v18);
      *v7 = v19;
      swift_storeEnumTagMultiPayload();
      v16(v7);
      sub_220E2DD2C(v16, v17);
      (*(v3 + 8))(v7, v1);
    }
  }

  else
  {
    sub_220F9C32C(1);
    v21 = sub_220FC2AE0();
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v21);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v0;
    v23 = v0;
    sub_220F9BB1C(0, 0, v12, &unk_220FD9268, v22);
  }

  return result;
}

uint64_t sub_220F9C610()
{
  v1 = v0[2];
  v2 = swift_allocObject();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0xA8);
  v4 = v1;
  v7 = (v3 + *v3);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_220F9C77C;

  return v7(sub_220F9DA7C, v2);
}

uint64_t sub_220F9C77C()
{
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_220F9C884(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_43(v6);
  *v7 = v8;
  v7[1] = sub_220F9C930;

  return sub_220F9C5F0(a1, v3, v4, v5);
}

uint64_t sub_220F9C930()
{
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

void (*sub_220F9CA1C(uint64_t a1))(uint64_t)
{
  sub_220F9C32C(2);
  result = sub_220F9C148();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result(a1);

    return sub_220E2DD2C(v4, v5);
  }

  return result;
}

void sub_220F9CA94(void *a1)
{
  v1 = a1;
  sub_220F9C36C();
}

uint64_t sub_220F9CAE4(void *a1)
{
  v1 = a1;
  v5 = sub_220F9CB18(v1, v2, v3, v4);

  return v5 & 1;
}

id sub_220F9CB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + qword_27CF9FAB0))
  {
    return 0;
  }

  v6 = type metadata accessor for AsyncTaskOperation(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), a3, a4);
  v7.receiver = v4;
  v7.super_class = v6;
  return objc_msgSendSuper2(&v7, sel_isReady);
}

id sub_220F9CCA4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  a3(a1, a2);
  v3 = sub_220FC2C00();

  return v3;
}

id AsyncTaskOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AsyncTaskOperation.init()()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  v3 = (v0 + qword_27CF9FA98);
  *v3 = sub_220F9BE30();
  v3[1] = v4;
  v5 = (v0 + qword_27CF9FAA0);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + qword_27CF9FAB0) = 0;
  v8 = type metadata accessor for AsyncTaskOperation(0, *((v2 & v1) + 0x50), v6, v7);
  v10.receiver = v0;
  v10.super_class = v8;
  return objc_msgSendSuper2(&v10, sel_init);
}

id AsyncTaskOperation.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for AsyncTaskOperation(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_220F9CEA8(uint64_t a1)
{

  v2 = *(a1 + qword_27CF9FAA0);
  v3 = *(a1 + qword_27CF9FAA0 + 8);

  return sub_220E2DD2C(v2, v3);
}

uint64_t dispatch thunk of AsyncTaskOperation.perform(completion:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0xA8);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_220F9DA84;

  return v9(a1, a2);
}

_BYTE *sub_220F9D0F0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

void sub_220F9D1F0()
{
  v0 = sub_220FC27E0();
  if (!v0)
  {
    goto LABEL_4;
  }

  v1 = v0;
  v2 = sub_220F9D900(v0, 0);
  v3 = sub_220F9D834(&v4, v2 + 4, v1, 0xD000000000000010, 0x8000000220FE72D0);

  if (v3 != v1)
  {
    __break(1u);
LABEL_4:
    v2 = MEMORY[0x277D84F90];
  }

  off_27CF9FA90 = v2;
}

uint64_t sub_220F9D290(uint64_t a1)
{
  v2 = sub_220FC0460();
  OUTLINED_FUNCTION_6();
  v38 = v3;
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v42 = &v33 - v10;
  if (!*(a1 + 16))
  {
    v12 = MEMORY[0x277D84FA0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FBB8, &qword_220FD9370);
  result = sub_220FC3590();
  v12 = result;
  v37 = *(a1 + 16);
  if (!v37)
  {
LABEL_15:

    return v12;
  }

  v13 = 0;
  v41 = result + 56;
  v14 = *(v38 + 80);
  v35 = a1;
  v36 = a1 + ((v14 + 32) & ~v14);
  v40 = v38 + 16;
  v15 = (v38 + 8);
  v34 = (v38 + 32);
  while (v13 < *(a1 + 16))
  {
    v16 = *(v38 + 72);
    v39 = v13 + 1;
    v17 = *(v38 + 16);
    v17(v42, v36 + v16 * v13, v2);
    OUTLINED_FUNCTION_0_90();
    sub_220F9D738(&qword_27CF9FBC0, v18, MEMORY[0x277CC99D8]);
    v19 = sub_220FC2640();
    v20 = ~(-1 << *(v12 + 32));
    while (1)
    {
      v21 = v19 & v20;
      v22 = (v19 & v20) >> 6;
      v23 = *(v41 + 8 * v22);
      v24 = 1 << (v19 & v20);
      if ((v24 & v23) == 0)
      {
        break;
      }

      v25 = v12;
      v17(v7, *(v12 + 48) + v21 * v16, v2);
      OUTLINED_FUNCTION_0_90();
      sub_220F9D738(&qword_27CF9FBC8, v26, MEMORY[0x277CC99E0]);
      v27 = sub_220FC26B0();
      v28 = *v15;
      (*v15)(v7, v2);
      if (v27)
      {
        result = (v28)(v42, v2);
        v12 = v25;
        goto LABEL_12;
      }

      v19 = v21 + 1;
      v12 = v25;
    }

    v29 = v42;
    *(v41 + 8 * v22) = v24 | v23;
    result = (*v34)(*(v12 + 48) + v21 * v16, v29, v2);
    v30 = *(v12 + 16);
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (v31)
    {
      goto LABEL_17;
    }

    *(v12 + 16) = v32;
LABEL_12:
    v13 = v39;
    a1 = v35;
    if (v39 == v37)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

void sub_220F9D5A8(uint64_t a1)
{
  if (*(a1 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D008, &qword_220FC9B10), v2 = sub_220FC3590(), v3 = v2, (v4 = *(a1 + 16)) != 0))
  {
    v5 = 0;
    v6 = v2 + 56;
    while (v5 < *(a1 + 16))
    {
      v7 = (a1 + 32 + 16 * v5);
      v9 = *v7;
      v8 = v7[1];
      ++v5;
      sub_220FC3A40();

      sub_220FC27D0();
      v10 = sub_220FC3A90();
      v11 = ~(-1 << *(v3 + 32));
      while (1)
      {
        v12 = v10 & v11;
        v13 = (v10 & v11) >> 6;
        v14 = *(v6 + 8 * v13);
        v15 = 1 << (v10 & v11);
        if ((v15 & v14) == 0)
        {
          break;
        }

        v16 = (*(v3 + 48) + 16 * v12);
        v17 = *v16 == v9 && v16[1] == v8;
        if (v17 || (sub_220FC3940() & 1) != 0)
        {

          goto LABEL_16;
        }

        v10 = v12 + 1;
      }

      *(v6 + 8 * v13) = v15 | v14;
      v18 = (*(v3 + 48) + 16 * v12);
      *v18 = v9;
      v18[1] = v8;
      v19 = *(v3 + 16);
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_19;
      }

      *(v3 + 16) = v21;
LABEL_16:
      if (v5 == v4)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_17:
  }
}

uint64_t sub_220F9D738(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_220F9D7D0()
{
  result = qword_27CF9FBD8;
  if (!qword_27CF9FBD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9FBD0, &qword_220FD9378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9FBD8);
  }

  return result;
}

uint64_t sub_220F9D834(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v5 = result;
  v6 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v13 = a4;
  v14 = a5;
  *&v15 = 0;
  *(&v15 + 1) = v6;
  *&v7 = 0;
  *(&v7 + 1) = v6;
  if (!a2)
  {
    v10 = 0;
LABEL_15:
    *v5 = a4;
    *(v5 + 8) = a5;
    *(v5 + 16) = v7;
    return v10;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_15;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 0;
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      result = sub_220FC2820();
      if (!v12)
      {
        a4 = v13;
        a5 = v14;
        goto LABEL_14;
      }

      *v9 = result;
      v9[1] = v12;
      v9 += 2;
      ++v10;
      if (v11 == a3)
      {
        a4 = v13;
        a5 = v14;
        v10 = a3;
LABEL_14:
        v7 = v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_220F9D900(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F0F8, &unk_220FD9380);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

uint64_t sub_220F9D97C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90, &unk_220FC9CE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220F9D9E4()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_5(v1);

  return v4(v3);
}

uint64_t sub_220F9DA88(uint64_t result)
{
  v1 = *(result + 16);
  for (i = (result + 32); v1; --v1)
  {
    memcpy(__dst, i, sizeof(__dst));
    sub_220E56868(__dst, &v5);
    sub_220F1505C(v6);
    v3 = v6[0];
    v4 = v6[1];

    sub_220E31784(v6);
    MEMORY[0x223D9BD60](v3, v4);

    result = sub_220E56918(__dst);
    i += 184;
  }

  return result;
}

unint64_t sub_220F9DB44(uint64_t a1, uint64_t a2)
{
  v2 = sub_220FC37A0();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_220F9DB90(char a1)
{
  if (!a1)
  {
    return 0x6F70707553746F6ELL;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0x707553796C6C7566;
}

unint64_t sub_220F9DC24@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_220F9DB44(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_220F9DC54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_220F9DB90(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_220F9DC80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_2812C5EC8 != -1)
  {
    swift_once();
  }

  v8 = sub_220FC17A0();
  __swift_project_value_buffer(v8, qword_2812C5ED0);

  sub_220EA10E4(a2, a3);
  v9 = sub_220FC1780();
  v10 = sub_220FC2E30();
  sub_220E5E3D0(a2, a3);

  v11 = &qword_2812C8000;
  if (os_log_type_enabled(v9, v10))
  {
    v44 = v10;
    v45 = a1;
    v12 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v46 = v43;
    *v12 = 136447234;
    v13 = (v4 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeRegion);
    swift_beginAccess();
    v14 = v13[3];
    if (v14)
    {
      v15 = __swift_project_boxed_opaque_existential_1(v13, v14);
      v16 = v15[1];
      v17 = v15[2];
      v47 = *v15;
      v48 = v16;

      sub_220F9DA88(v17);
      v18 = v47;
      v19 = v48;
    }

    else
    {
      v18 = 0;
      v19 = 0;
    }

    v47 = v18;
    v48 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CFD0, &unk_220FCBA10);
    v20 = sub_220FC2750();
    v22 = sub_220E20FF8(v20, v21, &v46);

    *(v12 + 4) = v22;
    *(v12 + 12) = 2082;
    v23 = v13[3];
    if (v23)
    {
      v24 = __swift_project_boxed_opaque_existential_1(v13, v23);
      v25 = v24[1];
      v26 = v24[2];
      v47 = *v24;
      v48 = v25;

      sub_220F9DA88(v26);
      v27 = v47;
      v28 = v48;
    }

    else
    {
      v27 = 0;
      v28 = 0;
    }

    v47 = v27;
    v48 = v28;
    v29 = sub_220FC2750();
    v31 = sub_220E20FF8(v29, v30, &v46);

    *(v12 + 14) = v31;
    *(v12 + 22) = 2050;
    *(v12 + 24) = *(v4 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeZoomLevel);
    *(v12 + 32) = 2082;
    v47 = a2;
    v48 = a3;
    sub_220EA10E4(a2, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E3A8, &qword_220FD0080);
    v32 = sub_220FC2750();
    v34 = sub_220E20FF8(v32, v33, &v46);

    *(v12 + 34) = v34;
    *(v12 + 42) = 2082;
    v11 = &qword_2812C8000;
    v35 = *(v4 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeCountryCode + 8);
    v47 = *(v4 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeCountryCode);
    v48 = v35;
    sub_220EA10E4(v47, v35);
    v36 = sub_220FC2750();
    v38 = sub_220E20FF8(v36, v37, &v46);

    *(v12 + 44) = v38;
    _os_log_impl(&dword_220E15000, v9, v44, "Metadata: Updating active region. activeRegion=%{public}s, currentActiveRegion=%{public}s), currentZoomLevel=%{public}f, activeCountryCode=%{public}s, currentActiveCountryCode=%{public}s", v12, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x223D9DDF0](v43, -1, -1);
    MEMORY[0x223D9DDF0](v12, -1, -1);

    a1 = v45;
  }

  else
  {
  }

  v39 = OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeRegion;
  swift_beginAccess();
  sub_220FA3168(a1, v4 + v39);
  swift_endAccess();
  v40 = (v4 + v11[175]);
  v41 = *v40;
  v42 = v40[1];
  *v40 = a2;
  v40[1] = a3;
  sub_220EA10E4(a2, a3);
  sub_220E5E3D0(v41, v42);
  sub_220F9E050(0, 0, 0);
}

void sub_220F9E050(int a1, void (*a2)(uint64_t, void (*)(), void), uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for ScrubberStore.ViewModel(0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v103 - v14;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v103 = v8;
    v104 = v15;
    v105 = v11;
    HIDWORD(v110) = a1;
    v109 = a3;
    v18 = (v4 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeRegion);
    swift_beginAccess();
    sub_220ED6038(v18, v117, &qword_27CF9FBE8, &qword_220FD9618);
    v107 = OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeOverlayKind;
    v116[0] = *(v4 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeOverlayKind);
    v19 = *(v4 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activePointsOfInterest);

    sub_220F9EFA0(v117, v116, v118, v19);
    memcpy(v122, v118, 0xB9uLL);

    sub_220E3B2DC(v117, &qword_27CF9FBE8, &qword_220FD9618);
    memcpy(v123, v122, sizeof(v123));
    v20 = OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeOverlaySupportedRegion;
    HIDWORD(v113) = v122[184];
    if ((sub_220E85060() & 1) == 0)
    {
      v21 = BYTE4(v113);
      sub_220FA2C68(v4, SHIDWORD(v113), v17);
      *(v4 + v20) = v21;
    }

    v112 = v17;
    v22 = OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeOverlay;
    memcpy(v119, (v4 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeOverlay), sizeof(v119));
    memcpy(v120, v122, sizeof(v120));
    nullsub_1();
    memcpy(v118, v119, 0xB8uLL);
    memcpy(&v118[23], v120, 0xB8uLL);
    memcpy(v121, v119, 0xB8uLL);
    if (sub_220E2CDDC(v121) == 1)
    {
      memcpy(v116, &v118[23], 0xB8uLL);
      if (sub_220E2CDDC(v116) == 1)
      {
        memcpy(v124, v118, 0xB8uLL);
        sub_220ED6038(v122, v117, &qword_27CF9FBF0, &qword_220FD9620);
        sub_220ED6038(v122, v117, &qword_27CF9FBF0, &qword_220FD9620);
        sub_220ED6038(v119, v117, &qword_27CF9FBF8, &qword_220FD9628);
        sub_220E3B2DC(v124, &qword_27CF9FBF8, &qword_220FD9628);
LABEL_16:
        if ((v110 & 0x100000000) == 0)
        {
          sub_220E3B2DC(v122, &qword_27CF9FBF0, &qword_220FD9620);
          if (qword_2812C5EC8 != -1)
          {
LABEL_64:
            swift_once();
          }

          v28 = sub_220FC17A0();
          __swift_project_value_buffer(v28, qword_2812C5ED0);
          sub_220ED6038(v122, v118, &qword_27CF9FBF0, &qword_220FD9620);
          v29 = sub_220FC1780();
          v30 = sub_220FC2E30();
          sub_220E3B2DC(v122, &qword_27CF9FBF0, &qword_220FD9620);
          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            v32 = swift_slowAlloc();
            v115[0] = v32;
            *v31 = 136446466;
            memcpy(v117, v123, 0xB8uLL);
            sub_220E568C4();
            v33 = sub_220FC38F0();
            v35 = v34;
            memcpy(v118, v117, 0xB8uLL);
            sub_220E56918(v118);
            v36 = sub_220E20FF8(v33, v35, v115);

            *(v31 + 4) = v36;
            *(v31 + 12) = 2082;
            v117[0] = BYTE4(v113);
            v37 = sub_220FC2750();
            v39 = sub_220E20FF8(v37, v38, v115);

            *(v31 + 14) = v39;
            _os_log_impl(&dword_220E15000, v29, v30, "Metadata: Not notifying delegate, overlay did not change. overlay=%{public}s, supportedRegion=%{public}s", v31, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x223D9DDF0](v32, -1, -1);
            MEMORY[0x223D9DDF0](v31, -1, -1);
          }

          else
          {

            sub_220E3B2DC(v122, &qword_27CF9FBF0, &qword_220FD9620);
          }

          if (a2)
          {
            a2(3, nullsub_1, 0);
          }

LABEL_55:
          swift_unknownObjectRelease();
          return;
        }

LABEL_20:
        memcpy(v117, (v4 + v22), 0xB8uLL);
        memcpy((v4 + v22), v120, 0xB8uLL);
        sub_220E3B2DC(v117, &qword_27CF9FBF8, &qword_220FD9628);
        v40 = v18[3];
        if (!v40)
        {
          v108 = 0;
          LODWORD(v111) = 1;
LABEL_36:
          if (qword_2812C5EC8 != -1)
          {
LABEL_59:
            swift_once();
          }

          v52 = sub_220FC17A0();
          __swift_project_value_buffer(v52, qword_2812C5ED0);
          sub_220ED6038(v122, v118, &qword_27CF9FBF0, &qword_220FD9620);
          v53 = sub_220FC1780();
          v54 = sub_220FC2E30();
          sub_220E3B2DC(v122, &qword_27CF9FBF0, &qword_220FD9620);
          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            v56 = swift_slowAlloc();
            v114[0] = v56;
            *v55 = 136446722;
            memcpy(v115, v123, sizeof(v115));
            sub_220E56868(v122, v118);
            sub_220E568C4();
            v57 = sub_220FC38F0();
            v59 = v58;
            memcpy(v118, v115, 0xB8uLL);
            sub_220E56918(v118);
            v60 = sub_220E20FF8(v57, v59, v114);

            *(v55 + 4) = v60;
            *(v55 + 12) = 2082;
            LOBYTE(v115[0]) = BYTE4(v113);
            v61 = sub_220FC2750();
            v63 = sub_220E20FF8(v61, v62, v114);

            *(v55 + 14) = v63;
            *(v55 + 22) = 2050;
            v64 = v108;
            if (v111)
            {
              v64 = 0;
            }

            *(v55 + 24) = v64;
            _os_log_impl(&dword_220E15000, v53, v54, "Metadata: Notifying delegate with new overlay metadata. overlay=%{public}s, supportedRegion=%{public}s, forecastHourCount=%{public}ld", v55, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x223D9DDF0](v56, -1, -1);
            MEMORY[0x223D9DDF0](v55, -1, -1);
          }

          v65 = *(v4 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeCountryCode);
          v66 = *(v4 + v107);
          v106 = *(v4 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeCountryCode + 8);
          v107 = v65;
          sub_220EA10E4(v65, v106);
          v67 = sub_220FC1780();
          v68 = sub_220FC2E30();
          if (os_log_type_enabled(v67, v68))
          {
            v69 = swift_slowAlloc();
            v70 = swift_slowAlloc();
            v118[0] = v70;
            *v69 = 136446466;
            LOBYTE(v115[0]) = v66;
            sub_220E561E0();
            v71 = sub_220FC38F0();
            v73 = sub_220E20FF8(v71, v72, v118);

            *(v69 + 4) = v73;
            *(v69 + 12) = 2082;
            LOBYTE(v115[0]) = BYTE4(v113);
            v74 = sub_220FC2750();
            v76 = sub_220E20FF8(v74, v75, v118);

            *(v69 + 14) = v76;
            _os_log_impl(&dword_220E15000, v67, v68, "Receiving new overlay metadata. Will transition to new overlay. overlayKind=%{public}s, supportedRegion=%{public}s", v69, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x223D9DDF0](v70, -1, -1);
            MEMORY[0x223D9DDF0](v69, -1, -1);
          }

          v77 = v112;
          if ((v111 & 1) == 0)
          {
            v78 = swift_unknownObjectWeakLoadStrong();
            if (v78)
            {
              v79 = *(v78 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_scrubberStore);
              v80 = OBJC_IVAR____TtC11WeatherMaps13ScrubberStore_viewModel;
              swift_beginAccess();
              v81 = v104;
              sub_220FA2EDC(v79 + v80, v104, type metadata accessor for ScrubberStore.ViewModel);
              v82 = v81 + *(v103 + 68);
              *v82 = v108;
              *(v82 + 8) = 0;
              v83 = v105;
              sub_220FA2EDC(v81, v105, type metadata accessor for ScrubberStore.ViewModel);

              sub_220EE3AE8(v83);
              sub_220FA2F3C(v81, type metadata accessor for ScrubberStore.ViewModel);
              swift_unknownObjectRelease();
            }
          }

          __swift_project_boxed_opaque_existential_1(v77 + 31, v77[34]);
          v84 = v77[59];
          sub_220FC0AB0();
          sub_220FC0A90();
          if (qword_2812CA238 != -1)
          {
            swift_once();
          }

          sub_220FC0A80();

          v85 = a2;
          if (LOBYTE(v115[0]) == 1)
          {
            LOBYTE(v115[0]) = v66;
            v86 = sub_220EA20A0(v115, v84);
          }

          else
          {
            LOBYTE(v115[0]) = v66;
            v86 = sub_220F5F40C(v115, v84);
          }

          v111 = v86;
          v90 = v87;
          v105 = v88;
          v108 = v89;
          v91 = v87 & 0x100;
          LOBYTE(v115[0]) = v66;
          v92 = v112;
          LODWORD(v104) = *(v112 + 480);
          v93 = *(v112 + 472);
          v94 = swift_allocObject();
          swift_weakInit();
          v95 = swift_allocObject();
          *(v95 + 16) = v94;
          *(v95 + 24) = BYTE4(v110) & 1;
          v96 = v109;
          *(v95 + 32) = v85;
          *(v95 + 40) = v96;
          v97 = BYTE4(v113);
          *(v95 + 48) = BYTE4(v113);

          sub_220F6DA88(v85, v96);
          LOBYTE(v101) = v97;
          v100 = v93;
          v99 = v106;
          v98 = v107;
          sub_220F640D4(v115, v107, v106, v123, v111, v91 & 0xFFFFFFFE | v90 & 1, v105, v108, v104, v92, &off_283486100, v100, v101, sub_220FA2EC8, v95, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113);

          sub_220E5E3D0(v98, v99);
          sub_220E3B2DC(v122, &qword_27CF9FBF0, &qword_220FD9620);
          goto LABEL_55;
        }

        v41 = __swift_project_boxed_opaque_existential_1(v18, v40);
        v42 = 0;
        v108 = 0;
        v43 = v41[2];
        v44 = *(v43 + 16);
        v45 = v43 + 32;
        LODWORD(v111) = 1;
        while (2)
        {
          for (i = (v45 + 184 * v42); ; i += 184)
          {
            if (v44 == v42)
            {
              goto LABEL_36;
            }

            if (v42 >= v44)
            {
              __break(1u);
LABEL_58:
              __break(1u);
              goto LABEL_59;
            }

            if (__OFADD__(v42, 1))
            {
              goto LABEL_58;
            }

            memmove(v118, i, 0xB8uLL);
            if (sub_220E435CC(v118) == 2)
            {
              break;
            }

            ++v42;
          }

          v47 = sub_220E22B0C(v118);
          v48 = *(v47 + 152);
          if (*(v47 + 160))
          {
            v48 = 0;
          }

          v49 = __OFSUB__(*v47, v48);
          v50 = *v47 - v48;
          if (v49)
          {
            __break(1u);
          }

          else
          {
            v51 = rint(*(v47 + 8) * v50 / 3600.0);
            if ((*&v51 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              if (v51 > -9.22337204e18)
              {
                if (v51 < 9.22337204e18)
                {
                  LODWORD(v111) = 0;
                  v108 = v51;
                  ++v42;
                  continue;
                }

                goto LABEL_63;
              }

LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
              goto LABEL_64;
            }
          }

          break;
        }

        __break(1u);
        goto LABEL_62;
      }
    }

    else
    {
      memcpy(v115, &v118[23], sizeof(v115));
      if (sub_220E2CDDC(v115) != 1)
      {
        memcpy(v114, &v118[23], sizeof(v114));
        memcpy(v116, &v118[23], 0xB8uLL);
        memcpy(v124, v118, 0xB8uLL);
        sub_220ED6038(v122, v117, &qword_27CF9FBF0, &qword_220FD9620);
        sub_220ED6038(v122, v117, &qword_27CF9FBF0, &qword_220FD9620);
        sub_220ED6038(v119, v117, &qword_27CF9FBF8, &qword_220FD9628);
        sub_220ED6038(v122, v117, &qword_27CF9FBF0, &qword_220FD9620);
        sub_220ED6038(v119, v117, &qword_27CF9FBF8, &qword_220FD9628);
        v27 = sub_220F17000(v124);
        sub_220E3B2DC(v122, &qword_27CF9FBF0, &qword_220FD9620);
        sub_220E3B2DC(v119, &qword_27CF9FBF8, &qword_220FD9628);
        sub_220E3B2DC(v114, &qword_27CF9FBF8, &qword_220FD9628);
        memcpy(v117, v118, 0xB8uLL);
        sub_220E3B2DC(v117, &qword_27CF9FBF8, &qword_220FD9628);
        if ((v27 & 1) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_16;
      }
    }

    memcpy(v117, v118, sizeof(v117));
    sub_220ED6038(v122, v116, &qword_27CF9FBF0, &qword_220FD9620);
    sub_220ED6038(v122, v116, &qword_27CF9FBF0, &qword_220FD9620);
    sub_220ED6038(v119, v116, &qword_27CF9FBF8, &qword_220FD9628);
    sub_220E3B2DC(v117, &qword_27CF9FC00, &qword_220FD9630);
    goto LABEL_20;
  }

  if (qword_2812C5EC8 != -1)
  {
    swift_once();
  }

  v23 = sub_220FC17A0();
  __swift_project_value_buffer(v23, qword_2812C5ED0);
  v24 = sub_220FC1780();
  v25 = sub_220FC2E30();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_220E15000, v24, v25, "Metadata: Not calling delegate - delegate is nil", v26, 2u);
    MEMORY[0x223D9DDF0](v26, -1, -1);
  }

  if (a2)
  {
    a2(3, nullsub_1, 0);
  }
}

void sub_220F9EFA0(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>)
{
  v5 = v4;
  v8 = *a2;
  LOBYTE(v85[0]) = *a2;
  sub_220FA0E08(v85, a1, a4, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v85, __src, 0xB9uLL);
  if (sub_220E2CDDC(v85) != 1)
  {
    v72 = v85[0];
    v73 = v85[1];
    v70 = v85[2];
    v71 = v85[3];
    v68 = v85[4];
    v69 = v85[5];
    v66 = v85[6];
    v67 = v85[7];
    v64 = v85[8];
    v65 = v85[9];
    v12 = *(&v85[10] + 1);
    v11 = *&v85[10];
    v13 = *&v85[11];
    v34 = BYTE8(v85[11]);
    if (qword_2812C5EC8 != -1)
    {
      swift_once();
    }

    v35 = sub_220FC17A0();
    __swift_project_value_buffer(v35, qword_2812C5ED0);
    memcpy(v76, __dst, 0xB9uLL);
    sub_220ED6038(v76, v75, &qword_27CF9FBF0, &qword_220FD9620);
    v36 = sub_220FC1780();
    v37 = sub_220FC2E30();
    sub_220E3B2DC(__src, &qword_27CF9FC08, &unk_220FD9638);
    if (os_log_type_enabled(v36, v37))
    {
      v63 = v34;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v80 = v39;
      *v38 = 136446210;
      *v81 = v72;
      *&v81[16] = v73;
      *&v81[32] = v70;
      *&v81[48] = v71;
      *&v81[64] = v68;
      *&v81[80] = v69;
      *&v81[96] = v66;
      *&v81[112] = v67;
      *&v81[128] = v64;
      *&v81[144] = v65;
      *&v81[160] = v11;
      *&v81[168] = v12;
      *&v81[176] = v13;
      memcpy(v75, __dst, 0xB9uLL);
      sub_220ED6038(v75, v74, &qword_27CF9FBF0, &qword_220FD9620);
      sub_220E568C4();
      v40 = sub_220FC38F0();
      v41 = v12;
      v42 = v11;
      v43 = v13;
      v45 = v44;
      memcpy(v74, v81, 0xB8uLL);
      sub_220E56918(v74);
      v46 = sub_220E20FF8(v40, v45, v80);
      v13 = v43;
      v11 = v42;
      v12 = v41;

      *(v38 + 4) = v46;
      _os_log_impl(&dword_220E15000, v36, v37, "Metadata: returning overriden overlay=%{public}s)", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x223D9DDF0](v39, -1, -1);
      v47 = v38;
      v34 = v63;
      MEMORY[0x223D9DDF0](v47, -1, -1);

      v25 = v64;
      v24 = v65;
      v27 = v66;
      v26 = v67;
      v29 = v68;
      v28 = v69;
      v31 = v70;
      v30 = v71;
      v33 = v72;
      v32 = v73;
      goto LABEL_31;
    }

    goto LABEL_21;
  }

  sub_220ED6038(a1, &v82, &qword_27CF9FBE8, &qword_220FD9618);
  if (v83)
  {
    v9 = __swift_project_boxed_opaque_existential_1(&v82, v83)[2];
    LOBYTE(v76[0]) = v8;

    sub_220FA1208(v76, v9, v74, v10);
    memcpy(v75, v74, 0xB8uLL);

    __swift_destroy_boxed_opaque_existential_0(&v82);
    memcpy(v76, v74, 0xB8uLL);
    if (sub_220E2CDDC(v76) != 1)
    {
      v72 = v76[0];
      v73 = v76[1];
      v70 = v76[2];
      v71 = v76[3];
      v68 = v76[4];
      v69 = v76[5];
      v66 = v76[6];
      v67 = v76[7];
      v64 = v76[8];
      v65 = v76[9];
      v12 = *(&v76[10] + 1);
      v11 = *&v76[10];
      v13 = *&v76[11];
      if (qword_2812C5EC8 != -1)
      {
        swift_once();
      }

      v14 = sub_220FC17A0();
      __swift_project_value_buffer(v14, qword_2812C5ED0);
      memcpy(v81, v75, sizeof(v81));
      sub_220E56868(v81, v80);
      v15 = sub_220FC1780();
      v16 = sub_220FC2E30();
      sub_220E3B2DC(v74, &qword_27CF9FBF8, &qword_220FD9628);
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v78 = v18;
        *v17 = 136446210;
        *v77 = v72;
        *&v77[16] = v73;
        *&v77[32] = v70;
        *&v77[48] = v71;
        *&v77[64] = v68;
        *&v77[80] = v69;
        *&v77[96] = v66;
        *&v77[112] = v67;
        *&v77[128] = v64;
        *&v77[144] = v65;
        *&v77[160] = v11;
        *&v77[168] = v12;
        *&v77[176] = v13;
        memcpy(v79, v75, sizeof(v79));
        sub_220E56868(v79, v80);
        sub_220E568C4();
        v19 = sub_220FC38F0();
        v20 = v13;
        v22 = v21;
        memcpy(v80, v77, sizeof(v80));
        sub_220E56918(v80);
        v23 = sub_220E20FF8(v19, v22, &v78);
        v13 = v20;

        *(v17 + 4) = v23;
        _os_log_impl(&dword_220E15000, v15, v16, "Metadata: Found supported overlay: %{public}s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v18);
        MEMORY[0x223D9DDF0](v18, -1, -1);
        MEMORY[0x223D9DDF0](v17, -1, -1);

        v25 = v64;
        v24 = v65;
        v27 = v66;
        v26 = v67;
        v29 = v68;
        v28 = v69;
        v31 = v70;
        v30 = v71;
        v33 = v72;
        v32 = v73;
        v34 = 2;
        goto LABEL_31;
      }

      v34 = 2;
LABEL_21:
      v33 = v72;
      v32 = v73;
      v31 = v70;
      v30 = v71;
      v29 = v68;
      v28 = v69;
      v27 = v66;
      v26 = v67;
      v25 = v64;
      v24 = v65;
      goto LABEL_31;
    }
  }

  else
  {
    sub_220E3B2DC(&v82, &qword_27CF9FBE8, &qword_220FD9618);
  }

  if (qword_2812C5EC8 != -1)
  {
    swift_once();
  }

  v48 = sub_220FC17A0();
  __swift_project_value_buffer(v48, qword_2812C5ED0);
  sub_220ED6038(a1, v79, &qword_27CF9FBE8, &qword_220FD9618);
  v49 = sub_220FC1780();
  v50 = sub_220FC2E30();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v80 = v52;
    *v51 = 136446210;
    sub_220ED6038(v79, v75, &qword_27CF9FBE8, &qword_220FD9618);
    if (*(&v75[1] + 1))
    {
      v53 = __swift_project_boxed_opaque_existential_1(v75, *(&v75[1] + 1));
      v54 = v53[1];
      v55 = v53[2];
      *v81 = *v53;
      *&v81[8] = v54;

      sub_220F9DA88(v55);
      v57 = *&v81[8];
      v56 = *v81;
      __swift_destroy_boxed_opaque_existential_0(v75);
    }

    else
    {
      sub_220E3B2DC(v75, &qword_27CF9FBE8, &qword_220FD9618);
      v56 = 0;
      v57 = 0;
    }

    *&v75[0] = v56;
    *(&v75[0] + 1) = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CFD0, &unk_220FCBA10);
    v58 = sub_220FC2750();
    v60 = v59;
    sub_220E3B2DC(v79, &qword_27CF9FBE8, &qword_220FD9618);
    v61 = sub_220E20FF8(v58, v60, v80);

    *(v51 + 4) = v61;
    _os_log_impl(&dword_220E15000, v49, v50, "Metadata: No supported overlay found: %{public}s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v52);
    MEMORY[0x223D9DDF0](v52, -1, -1);
    MEMORY[0x223D9DDF0](v51, -1, -1);
  }

  else
  {

    sub_220E3B2DC(v79, &qword_27CF9FBE8, &qword_220FD9618);
  }

  switch(v8)
  {
    case 1:
      __swift_project_boxed_opaque_existential_1((v5 + 96), *(v5 + 120));
      sub_220F539AC();
      break;
    case 3:
      __swift_project_boxed_opaque_existential_1((v5 + 96), *(v5 + 120));
      sub_220FA2F94(v80);
      memcpy(v81, v80, 0x80uLL);
      sub_220F538F4(v81);
      break;
    case 4:
      __swift_project_boxed_opaque_existential_1((v5 + 96), *(v5 + 120));
      sub_220F53A24();
      break;
    case 5:
      __swift_project_boxed_opaque_existential_1((v5 + 96), *(v5 + 120));
      sub_220F53AB4();
      break;
    default:
      v62 = *__swift_project_boxed_opaque_existential_1((v5 + 96), *(v5 + 120));
      memcpy(v81, (v62 + 16), 0xA1uLL);
      memmove(v75, (v62 + 16), 0xA1uLL);
      sub_220F3D810(v75);
      sub_220E21C98(v81, v80);
      break;
  }

  v33 = v75[0];
  v32 = v75[1];
  v31 = v75[2];
  v30 = v75[3];
  v29 = v75[4];
  v28 = v75[5];
  v27 = v75[6];
  v26 = v75[7];
  v25 = v75[8];
  v24 = v75[9];
  v13 = *&v75[11];
  v34 = 0;
  v12 = *(&v75[10] + 1);
  v11 = *&v75[10];
LABEL_31:
  *a3 = v33;
  *(a3 + 16) = v32;
  *(a3 + 32) = v31;
  *(a3 + 48) = v30;
  *(a3 + 64) = v29;
  *(a3 + 80) = v28;
  *(a3 + 96) = v27;
  *(a3 + 112) = v26;
  *(a3 + 128) = v25;
  *(a3 + 144) = v24;
  *(a3 + 160) = v11;
  *(a3 + 168) = v12;
  *(a3 + 176) = v13;
  *(a3 + 184) = v34;
}

uint64_t sub_220F9F91C(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6D0, &unk_220FCB0C0);
  v4 = OUTLINED_FUNCTION_29(v3);
  v83 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4, v8);
  v84 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v80 = &v73 - v11;
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v73 - v14;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v73 - v18;
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v73 - v22;
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v73 - v26;
  v28 = *a1;
  v81 = *(a1 + 8);
  v82 = v28;
  LODWORD(a1) = *(a1 + 16);
  v30 = *(v1 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeVisibleMapRect);
  v31 = *(v1 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeVisibleMapRect + 8);
  v32 = *(v1 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeVisibleMapRect + 16);
  v33 = *(v1 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeVisibleMapRect + 24);
  v34 = OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeAirQualityLocation;
  swift_beginAccess();
  sub_220ED6038(v1 + v34, v27, &unk_27CF9D6D0, &unk_220FCB0C0);
  if (qword_2812C5EC8 != -1)
  {
    OUTLINED_FUNCTION_16(&qword_2812C5EC8);
  }

  v35 = sub_220FC17A0();
  __swift_project_value_buffer(v35, qword_2812C5ED0);
  sub_220ED6038(v27, v23, &unk_27CF9D6D0, &unk_220FCB0C0);
  OUTLINED_FUNCTION_7_31();
  v36 = sub_220FC1780();
  v37 = sub_220FC2E30();
  if (os_log_type_enabled(v36, v37))
  {
    v76 = v37;
    v77 = v36;
    v78 = v19;
    v79 = a1;
    a1 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v88 = v75;
    *a1 = 136381699;
    *&v85 = v30;
    *(&v85 + 1) = v31;
    v86 = v32;
    v87 = v33;
    type metadata accessor for MKMapRect(0);
    sub_220FA3120(&qword_2812C5B10, type metadata accessor for MKMapRect, &protocol conformance descriptor for MKMapRect);
    v38 = sub_220FC38F0();
    v40 = sub_220E20FF8(v38, v39, &v88);

    *(a1 + 4) = v40;
    *(a1 + 12) = 2160;
    *(a1 + 14) = 1752392040;
    *(a1 + 22) = 2081;
    sub_220ED6038(v23, v15, &unk_27CF9D6D0, &unk_220FCB0C0);
    v41 = sub_220FC1070();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v41);
    if (EnumTagSinglePayload == 1)
    {
      sub_220E3B2DC(v15, &unk_27CF9D6D0, &unk_220FCB0C0);
      v43 = 0uLL;
    }

    else
    {
      sub_220FC0FE0();
      v73 = v47;
      v74 = v48;
      (*(*(v41 - 8) + 8))(v15, v41);
      *&v43 = v73;
      *(&v43 + 1) = v74;
    }

    v85 = v43;
    LOBYTE(v86) = EnumTagSinglePayload == 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FC20, &unk_220FD9660);
    v49 = sub_220FC2750();
    v51 = v50;
    sub_220E3B2DC(v23, &unk_27CF9D6D0, &unk_220FCB0C0);
    v52 = sub_220E20FF8(v49, v51, &v88);

    *(a1 + 24) = v52;
    *(a1 + 32) = 2160;
    *(a1 + 34) = 1752392040;
    *(a1 + 42) = 2081;
    v53 = v78;
    v54 = v80;
    sub_220ED6038(v78, v80, &unk_27CF9D6D0, &unk_220FCB0C0);
    if (__swift_getEnumTagSinglePayload(v54, 1, v41) == 1)
    {
      sub_220E3B2DC(v54, &unk_27CF9D6D0, &unk_220FCB0C0);
      v55 = 0;
      v56 = 0;
    }

    else
    {
      v57 = v54;
      v55 = sub_220FC1040();
      v56 = v58;
      (*(*(v41 - 8) + 8))(v57, v41);
    }

    v46 = v84;
    *&v85 = v55;
    *(&v85 + 1) = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CFD0, &unk_220FCBA10);
    v59 = sub_220FC2750();
    v61 = v60;
    sub_220E3B2DC(v53, &unk_27CF9D6D0, &unk_220FCB0C0);
    v62 = sub_220E20FF8(v59, v61, &v88);

    *(a1 + 44) = v62;
    v63 = v77;
    _os_log_impl(&dword_220E15000, v77, v76, "Refresh overlay metadata. visibleMapRect=%{private}s, airQualityLocation.coordinate=%{private,mask.hash}s, airQualityLocation.name=%{private,mask.hash}s", a1, 0x34u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_15();

    LOBYTE(a1) = v79;
  }

  else
  {

    sub_220E3B2DC(v19, &unk_27CF9D6D0, &unk_220FCB0C0);
    v44 = sub_220E3B2DC(v23, &unk_27CF9D6D0, &unk_220FCB0C0);
    v46 = v84;
  }

  MEMORY[0x28223BE20](v44, v45);
  *(&v73 - 2) = v27;
  *(&v73 - 1) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E3A8, &qword_220FD0080);
  sub_220FC1570();
  v64 = swift_allocObject();
  *(v64 + 16) = v2;
  *(v64 + 24) = v30;
  *(v64 + 32) = v31;
  *(v64 + 40) = v32;
  *(v64 + 48) = v33;
  v66 = v81;
  v65 = v82;
  *(v64 + 56) = v82;
  *(v64 + 64) = v66;
  *(v64 + 72) = a1;

  sub_220E5AFB8(v65, v66, a1);
  v67 = sub_220FC13B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FC18, &qword_220FD9658);
  sub_220FC1480();

  sub_220E1AAEC();
  v68 = sub_220FC2FC0();
  OUTLINED_FUNCTION_7_31();
  v69 = (*(v83 + 80) + 16) & ~*(v83 + 80);
  v70 = swift_allocObject();
  sub_220F04F80(v46, v70 + v69);
  *(v70 + ((v7 + v69 + 7) & 0xFFFFFFFFFFFFFFF8)) = v2;
  v71 = swift_allocObject();
  *(v71 + 16) = sub_220FA302C;
  *(v71 + 24) = v70;

  sub_220FC1490();

  return sub_220E3B2DC(v27, &unk_27CF9D6D0, &unk_220FCB0C0);
}

uint64_t sub_220FA012C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6D0, &unk_220FCB0C0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v15 - v6;
  v8 = sub_220FC1070();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220ED6038(a1, v7, &unk_27CF9D6D0, &unk_220FCB0C0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_220E3B2DC(v7, &unk_27CF9D6D0, &unk_220FCB0C0);
    v15 = xmmword_220FC9A00;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FC28, &unk_220FD9670);
    swift_allocObject();
    return sub_220FC14E0();
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    __swift_project_boxed_opaque_existential_1(a2 + 7, a2[10]);
    sub_220FC0F60();
    v13 = sub_220FC1460();

    (*(v9 + 8))(v12, v8);
  }

  return v13;
}

uint64_t sub_220FA0348(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, double a6, double a7, double a8, double a9)
{
  v16 = *a1;
  v17 = a1[1];
  __swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40));
  *&v22 = a3;
  *(&v22 + 1) = a4;
  v23 = a5;
  sub_220F78310(v16, v17, &v22, a6, a7, a8, a9);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = v17;
  sub_220EA10E4(v16, v17);
  v19 = sub_220FC13B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FC18, &qword_220FD9658);
  v20 = sub_220FC1490();

  return v20;
}

uint64_t sub_220FA0478@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = *a1;
  a4[1] = a2;
  a4[2] = a3;

  return sub_220EA10E4(a2, a3);
}

void sub_220FA04C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v90 = a2;
  v91 = a3;
  *&v89 = a1;
  v7 = sub_220FC1070();
  v93 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v92 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6D0, &unk_220FCB0C0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  *&v88 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v87 = &v86 - v15;
  MEMORY[0x28223BE20](v16, v17);
  *&v94 = &v86 - v18;
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v86 - v21;
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v86 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EC10, &unk_220FD28E0);
  v28 = v27 - 8;
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v86 - v30;
  v32 = OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeAirQualityLocation;
  swift_beginAccess();
  v33 = *(v28 + 56);
  sub_220ED6038(a4, v31, &unk_27CF9D6D0, &unk_220FCB0C0);
  sub_220ED6038(a5 + v32, &v31[v33], &unk_27CF9D6D0, &unk_220FCB0C0);
  if (__swift_getEnumTagSinglePayload(v31, 1, v7) == 1)
  {
    if (__swift_getEnumTagSinglePayload(&v31[v33], 1, v7) == 1)
    {
      sub_220E3B2DC(v31, &unk_27CF9D6D0, &unk_220FCB0C0);
LABEL_14:
      sub_220EF572C(v89, &v95);
      sub_220F9DC80(&v95, v90, v91);
      v43 = &qword_27CF9FBE8;
      v44 = &qword_220FD9618;
      v42 = &v95;
      goto LABEL_15;
    }

    goto LABEL_6;
  }

  sub_220ED6038(v31, v26, &unk_27CF9D6D0, &unk_220FCB0C0);
  if (__swift_getEnumTagSinglePayload(&v31[v33], 1, v7) == 1)
  {
    (*(v93 + 8))(v26, v7);
LABEL_6:
    sub_220E3B2DC(v31, &qword_27CF9EC10, &unk_220FD28E0);
    goto LABEL_7;
  }

  v45 = v93;
  v46 = *(v93 + 32);
  *&v86 = v32;
  v47 = a5;
  v48 = v92;
  v46(v92, &v31[v33], v7);
  sub_220FA3120(&qword_2812CA078, MEMORY[0x277D7AB60], MEMORY[0x277D7AB70]);
  v49 = sub_220FC26B0();
  v50 = *(v45 + 8);
  v51 = v48;
  a5 = v47;
  v32 = v86;
  v50(v51, v7);
  v50(v26, v7);
  sub_220E3B2DC(v31, &unk_27CF9D6D0, &unk_220FCB0C0);
  if (v49)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (qword_2812C5EC8 != -1)
  {
    swift_once();
  }

  v34 = sub_220FC17A0();
  __swift_project_value_buffer(v34, qword_2812C5ED0);
  sub_220ED6038(a4, v22, &unk_27CF9D6D0, &unk_220FCB0C0);
  v35 = v94;
  sub_220ED6038(a4, v94, &unk_27CF9D6D0, &unk_220FCB0C0);

  v36 = sub_220FC1780();
  v37 = sub_220FC2E30();

  if (!os_log_type_enabled(v36, v37))
  {

    sub_220E3B2DC(v35, &unk_27CF9D6D0, &unk_220FCB0C0);
    v42 = v22;
    v43 = &unk_27CF9D6D0;
    v44 = &unk_220FCB0C0;
LABEL_15:
    sub_220E3B2DC(v42, v43, v44);
    return;
  }

  v38 = swift_slowAlloc();
  v90 = swift_slowAlloc();
  v97 = v90;
  *v38 = 141559811;
  *(v38 + 4) = 1752392040;
  *(v38 + 12) = 2081;
  v39 = v87;
  sub_220ED6038(v22, v87, &unk_27CF9D6D0, &unk_220FCB0C0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v39, 1, v7);
  LODWORD(v91) = v37;
  if (EnumTagSinglePayload == 1)
  {
    sub_220E3B2DC(v39, &unk_27CF9D6D0, &unk_220FCB0C0);
    v41 = 0uLL;
  }

  else
  {
    sub_220FC0FE0();
    v86 = v52;
    v89 = v53;
    (*(v93 + 8))(v39, v7);
    *&v41 = v86;
    *(&v41 + 1) = v89;
  }

  v95 = v41;
  v96 = EnumTagSinglePayload == 1;
  *&v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FC20, &unk_220FD9660);
  v54 = sub_220FC2750();
  v56 = v55;
  sub_220E3B2DC(v22, &unk_27CF9D6D0, &unk_220FCB0C0);
  v57 = sub_220E20FF8(v54, v56, &v97);

  *(v38 + 14) = v57;
  *(v38 + 22) = 2160;
  *(v38 + 24) = 1752392040;
  *(v38 + 32) = 2081;
  v58 = v88;
  sub_220ED6038(v94, v88, &unk_27CF9D6D0, &unk_220FCB0C0);
  if (__swift_getEnumTagSinglePayload(v58, 1, v7) == 1)
  {
    sub_220E3B2DC(v58, &unk_27CF9D6D0, &unk_220FCB0C0);
    v59 = 0;
    v60 = 0;
  }

  else
  {
    v59 = sub_220FC1040();
    v60 = v61;
    (*(v93 + 8))(v58, v7);
  }

  *&v95 = v59;
  *(&v95 + 1) = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CFD0, &unk_220FCBA10);
  v62 = sub_220FC2750();
  v64 = v63;
  sub_220E3B2DC(v94, &unk_27CF9D6D0, &unk_220FCB0C0);
  v65 = sub_220E20FF8(v62, v64, &v97);

  *(v38 + 34) = v65;
  *(v38 + 42) = 2160;
  *(v38 + 44) = 1752392040;
  *(v38 + 52) = 2081;
  v66 = __swift_getEnumTagSinglePayload(a5 + v32, 1, v7);
  v67 = 0uLL;
  if (!v66)
  {
    v68 = v32;
    v69 = v92;
    v70 = v93;
    (*(v93 + 16))(v92, a5 + v68, v7, 0);
    sub_220FC0FE0();
    v88 = v71;
    v94 = v72;
    v73 = v70;
    v32 = v68;
    (*(v73 + 8))(v69, v7);
    *&v67 = v88;
    *(&v67 + 1) = v94;
  }

  v95 = v67;
  v96 = v66 != 0;
  v74 = sub_220FC2750();
  v76 = sub_220E20FF8(v74, v75, &v97);

  *(v38 + 54) = v76;
  *(v38 + 62) = 2160;
  *(v38 + 64) = 1752392040;
  *(v38 + 72) = 2081;
  if (__swift_getEnumTagSinglePayload(a5 + v32, 1, v7))
  {
    v77 = 0;
    v78 = 0;
  }

  else
  {
    v80 = v92;
    v79 = v93;
    (*(v93 + 16))(v92, a5 + v32, v7);
    v77 = sub_220FC1040();
    v78 = v81;
    (*(v79 + 8))(v80, v7);
  }

  *&v95 = v77;
  *(&v95 + 1) = v78;
  v82 = sub_220FC2750();
  v84 = sub_220E20FF8(v82, v83, &v97);

  *(v38 + 74) = v84;
  _os_log_impl(&dword_220E15000, v36, v91, "Ignore metadata update, airQuality location no longer matches. airQualityLocation.coordinate=%{private,mask.hash}s, airQualityLocation.name=%{private,mask.hash}s, activeAirQualityLocation.coordinate=%{private,mask.hash}s, activeAirQualityLocation.name=%{private,mask.hash}s ", v38, 0x52u);
  v85 = v90;
  swift_arrayDestroy();
  MEMORY[0x223D9DDF0](v85, -1, -1);
  MEMORY[0x223D9DDF0](v38, -1, -1);
}

void *sub_220FA0E08@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = *a1;
  if ((v6 - 3) < 3)
  {
    goto LABEL_2;
  }

  v7 = v4;
  if (*a1)
  {
    sub_220ED6038(a2, v26, &qword_27CF9FBE8, &qword_220FD9618);
    if (v27)
    {
      v10 = __swift_project_boxed_opaque_existential_1(v26, v27)[2];
      v11 = *(v10 + 16);
      v12 = (v10 + 32);
      if (v11)
      {
        while (2)
        {
          memcpy(__dst, v12, sizeof(__dst));
          memmove(v25, v12, 0xB8uLL);
          nullsub_1();
          memcpy(v32, __dst, 0xB8uLL);
          v13 = sub_220E435CC(v32);
          sub_220E22B0C(v32);
          switch(v13)
          {
            case 1:
              if (v6 == 2)
              {
                goto LABEL_7;
              }

              goto LABEL_12;
            case 2:
              if (v6 == 1)
              {
                goto LABEL_7;
              }

LABEL_12:
              *(v7 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeOverlayKind) = v6;
              sub_220E56868(__dst, v30);
              __swift_destroy_boxed_opaque_existential_0(v26);
              v14 = v25;
              goto LABEL_27;
            default:
LABEL_7:
              v12 += 184;
              if (!--v11)
              {
                break;
              }

              continue;
          }

          break;
        }
      }

      __swift_destroy_boxed_opaque_existential_0(v26);
    }

    else
    {
      sub_220E3B2DC(v26, &qword_27CF9FBE8, &qword_220FD9618);
    }

    if (v6 == 1)
    {
      *(v7 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeOverlayKind) = 1;
      __swift_project_boxed_opaque_existential_1((v7 + 96), *(v7 + 120));
      sub_220F539AC();
      goto LABEL_28;
    }

    *(v7 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeOverlayKind) = v6;
    v20 = *__swift_project_boxed_opaque_existential_1((v7 + 96), *(v7 + 120));
    memcpy(v25, (v20 + 16), 0xA1uLL);
    memmove(v32, (v20 + 16), 0xA1uLL);
    sub_220F3D810(v32);
    sub_220E21C98(v25, __dst);
    v14 = v32;
LABEL_27:
    memcpy(v28, v14, sizeof(v28));
LABEL_28:
    sub_220ED6038(a2, v32, &qword_27CF9FBE8, &qword_220FD9618);
    if (*(&v32[1] + 1))
    {
      sub_220E1E72C(v32, v26);
      if (*(a3 + 16))
      {
        v21 = __swift_project_boxed_opaque_existential_1(v26, v27);
        sub_220FA28AC(*v21, v21[1], v21[2], v21[3], a3);
        v23 = v22;
        __swift_destroy_boxed_opaque_existential_0(v26);
        memcpy(v25, v28, 0xB8uLL);
        v25[184] = v23;
LABEL_34:
        nullsub_1();
        memcpy(v32, v25, 0xB9uLL);
        return memcpy(a4, v32, 0xB9uLL);
      }

      __swift_destroy_boxed_opaque_existential_0(v26);
    }

    else
    {
      sub_220E3B2DC(v32, &qword_27CF9FBE8, &qword_220FD9618);
    }

    memcpy(v25, v28, 0xB8uLL);
    v25[184] = 2;
    goto LABEL_34;
  }

  sub_220ED6038(a2, v32, &qword_27CF9FBE8, &qword_220FD9618);
  if (*(&v32[1] + 1))
  {
    v15 = __swift_project_boxed_opaque_existential_1(v32, *(&v32[1] + 1))[2];
    v25[0] = 0;

    sub_220FA1208(v25, v15, __src, v16);

    __swift_destroy_boxed_opaque_existential_0(v32);
    memcpy(v30, __src, sizeof(v30));
    if (sub_220E2CDDC(v30) != 1)
    {
      memcpy(__dst, v30, sizeof(__dst));
      v17 = sub_220E435CC(__dst);
      if (v17 == 2)
      {
        sub_220E22B0C(__dst);
        v18 = OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeOverlayKind;
        v19 = 2;
      }

      else
      {
        if (v17 != 1)
        {
LABEL_26:
          v14 = __src;
          goto LABEL_27;
        }

        sub_220E22B0C(__dst);
        v18 = OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeOverlayKind;
        v19 = 1;
      }

      *(v7 + v18) = v19;
      goto LABEL_26;
    }
  }

  else
  {
    sub_220E3B2DC(v32, &qword_27CF9FBE8, &qword_220FD9618);
  }

LABEL_2:
  sub_220FA2FAC(v32);
  return memcpy(a4, v32, 0xB9uLL);
}

void *sub_220FA1208@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, __n128 a4@<Q0>)
{
  v6 = *a1;
  if (*a1)
  {
    v7 = v6 - 3;
    v8 = *(a2 + 16);
    v9 = (a2 + 32);
    if (!v8)
    {
LABEL_16:
      sub_220E78488(v24);
      return memcpy(a3, v24, 0xB8uLL);
    }

    while (1)
    {
      memcpy(__dst, v9, sizeof(__dst));
      memcpy(v21, v9, sizeof(v21));
      nullsub_1();
      memcpy(v23, __dst, sizeof(v23));
      v10 = sub_220E435CC(v23);
      sub_220E22B0C(v23);
      switch(v10)
      {
        case 1:
          if (v7 < 3 || v6 != 1)
          {
            goto LABEL_15;
          }

          memcpy(v19, __dst, sizeof(v19));
          v13 = sub_220E22B0C(v19);
          v14 = &qword_27CF9E3A0;
          v15 = &unk_220FD0070;
          goto LABEL_21;
        case 2:
          if (v7 < 3 || v6 != 2)
          {
            goto LABEL_15;
          }

          memcpy(v19, __dst, sizeof(v19));
          v17 = sub_220E22B0C(v19);
          sub_220E21C98(v17, v24);
          goto LABEL_22;
        case 3:
          if (v6 != 4)
          {
            goto LABEL_15;
          }

          memcpy(v19, __dst, sizeof(v19));
          v13 = sub_220E22B0C(v19);
          v14 = &unk_27CF9FC10;
          v15 = &unk_220FD9648;
          goto LABEL_21;
        case 4:
          if (v6 != 5)
          {
            goto LABEL_15;
          }

          memcpy(v19, __dst, sizeof(v19));
          v13 = sub_220E22B0C(v19);
          v14 = &qword_27CF9E398;
          v15 = &qword_220FD6EA0;
LABEL_21:
          sub_220ED6038(v13, v24, v14, v15);
          goto LABEL_22;
        default:
          if (v6 == 3)
          {
            memcpy(v19, __dst, sizeof(v19));
            v16 = sub_220E22B0C(v19);
            sub_220E21C60(v16, v24);
LABEL_22:
            v12 = v21;
LABEL_23:
            memcpy(v24, v12, sizeof(v24));
            return memcpy(a3, v24, 0xB8uLL);
          }

LABEL_15:
          v9 += 184;
          if (!--v8)
          {
            goto LABEL_16;
          }

          break;
      }
    }
  }

  LOBYTE(v24[0]) = 1;
  sub_220FA1208(v24, a2, __src, a4);
  memcpy(v23, __src, sizeof(v23));
  if (sub_220E2CDDC(v23) != 1)
  {
    v12 = __src;
    goto LABEL_23;
  }

  v21[0] = 2;
  sub_220FA1208(v21, a2, v24, v11);
  return memcpy(a3, v24, 0xB8uLL);
}

void *sub_220FA1484()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  sub_220E3B2DC(v0 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeAirQualityLocation, &unk_27CF9D6D0, &unk_220FCB0C0);
  sub_220E5E3D0(*(v0 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeCountryCode), *(v0 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeCountryCode + 8));
  memcpy(__dst, v0 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeOverlay, sizeof(__dst));
  sub_220E3B2DC(__dst, &qword_27CF9FBF8, &qword_220FD9628);
  sub_220E3B2DC(v0 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeRegion, &qword_27CF9FBE8, &qword_220FD9618);

  sub_220E22990(v0 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_delegate);
  return v0;
}

uint64_t sub_220FA1568()
{
  sub_220FA1484();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for WeatherMapOverlayMetadataManager(uint64_t a1)
{
  result = qword_2812C8558;
  if (!qword_2812C8558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220FA1614(uint64_t a1)
{
  sub_220E9E318(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

_BYTE *storeEnumTagSinglePayload for SupportedRegion(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_220FA17F0()
{
  result = qword_27CF9FBE0;
  if (!qword_27CF9FBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9FBE0);
  }

  return result;
}

uint64_t sub_220FA1844(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v38 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6D0, &unk_220FCB0C0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v34[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v34[-v11];
  v13 = sub_220FC1070();
  OUTLINED_FUNCTION_6();
  v15 = v14;
  MEMORY[0x28223BE20](v16, v17);
  OUTLINED_FUNCTION_3();
  v20 = v19 - v18;
  v21 = sub_220FC23C0();
  OUTLINED_FUNCTION_6();
  v23 = v22;
  MEMORY[0x28223BE20](v24, v25);
  OUTLINED_FUNCTION_3();
  v28 = (v27 - v26);
  v29 = *a2;
  v36 = *(a2 + 8);
  v37 = v29;
  v35 = *(a2 + 16);
  sub_220E1AAEC();
  *v28 = sub_220FC2FC0();
  (*(v23 + 104))(v28, *MEMORY[0x277D85200], v21);
  LOBYTE(a2) = sub_220FC23E0();
  result = (*(v23 + 8))(v28, v21);
  if ((a2 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v31 = OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeAirQualityLocation;
  swift_beginAccess();
  sub_220ED6038(v3 + v31, v12, &unk_27CF9D6D0, &unk_220FCB0C0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_220E3B2DC(v12, &unk_27CF9D6D0, &unk_220FCB0C0);
    v32 = v38;
  }

  else
  {
    (*(v15 + 32))(v20, v12, v13);
    v32 = v38;
    v33 = sub_220FC1010();
    result = (*(v15 + 8))(v20, v13);
    if (v33)
    {
      return result;
    }
  }

  (*(v15 + 16))(v8, v32, v13);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v13);
  swift_beginAccess();
  sub_220EA01C0(v8, v3 + v31);
  swift_endAccess();
  v39[0] = v37;
  v39[1] = v36;
  v40 = v35;
  return sub_220F9F91C(v39);
}

void sub_220FA1B7C(unsigned __int8 *a1, uint64_t a2, char a3, void (*a4)(uint64_t, void (*)(), void), uint64_t a5, __n128 a6)
{
  v7 = v6;
  v13 = sub_220FC23C0();
  OUTLINED_FUNCTION_6();
  v15 = v14;
  MEMORY[0x28223BE20](v16, v17);
  OUTLINED_FUNCTION_3();
  v20 = (v19 - v18);
  v21 = *a1;
  sub_220E1AAEC();
  *v20 = sub_220FC2FC0();
  (*(v15 + 104))(v20, *MEMORY[0x277D85200], v13);
  LOBYTE(a1) = sub_220FC23E0();
  v23 = *(v15 + 8);
  v22 = (v15 + 8);
  v23(v20, v13);
  if ((a1 & 1) == 0)
  {
    __break(1u);
    goto LABEL_42;
  }

  if (a2)
  {
    *(v7 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activePointsOfInterest) = a2;
  }

  if (!v21)
  {
    v35 = *(v7 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activePointsOfInterest);
    if (*(v35 + 16))
    {
      v36 = OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeRegion;
      swift_beginAccess();
      sub_220ED6038(v7 + v36, &v57, &qword_27CF9FBE8, &qword_220FD9618);
      if (v58)
      {
        v56 = a4;
        v37 = a5;
        sub_220E1E72C(&v57, __dst);
        v38 = __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
        v39 = *v38;
        v40 = v38[1];
        v41 = v38[2];
        v42 = v38[3];

        sub_220FA28AC(v39, v40, v41, v42, v35);
        LOBYTE(v39) = v43;

        if (!v39)
        {

          a5 = v37;
          a4 = v56;
LABEL_38:
          LOBYTE(v57) = 2;
          sub_220FA1B7C(&v57, a2, a3 & 1, a4, a5, v54);
          __swift_destroy_boxed_opaque_existential_0(__dst);
          return;
        }

        a5 = v37;
        a4 = v56;
        v53 = sub_220FC3940();

        if (v53)
        {
          goto LABEL_38;
        }

        __swift_destroy_boxed_opaque_existential_0(__dst);
      }

      else
      {
        sub_220E3B2DC(&v57, &qword_27CF9FBE8, &qword_220FD9618);
      }
    }
  }

  v22 = &qword_2812C8000;
  if (a3)
  {
LABEL_6:
    if (qword_2812C5EC8 == -1)
    {
LABEL_7:
      v24 = sub_220FC17A0();
      __swift_project_value_buffer(v24, qword_2812C5ED0);
      v25 = sub_220FC1780();
      v26 = sub_220FC2E30();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v55 = a5;
        v28 = swift_slowAlloc();
        __dst[0] = v28;
        *v27 = 136446210;
        LOBYTE(v57) = v21;
        sub_220E561E0();
        v29 = sub_220FC38F0();
        v31 = a3;
        v32 = a4;
        v33 = sub_220E20FF8(v29, v30, __dst);

        *(v27 + 4) = v33;
        a4 = v32;
        a3 = v31;
        v22 = &qword_2812C8000;
        _os_log_impl(&dword_220E15000, v25, v26, "Metadata: Updating overlayKind. overlayKind=%{public}s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v28);
        a5 = v55;
        OUTLINED_FUNCTION_15();
        OUTLINED_FUNCTION_15();
      }

      *(v7 + v22[178]) = v21;
      memcpy(__dst, (v7 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeOverlay), sizeof(__dst));
      if (sub_220E2CDDC(__dst) != 1)
      {
        sub_220F9E050(a3 & 1, a4, a5);
      }

      return;
    }

LABEL_42:
    OUTLINED_FUNCTION_16(&qword_2812C5EC8);
    goto LABEL_7;
  }

  v34 = *(v7 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeOverlayKind);
  switch(v21)
  {
    case 5:
      if (v34 != 5)
      {
        goto LABEL_6;
      }

      break;
    case 4:
      if (v34 != 4)
      {
        goto LABEL_6;
      }

      break;
    case 3:
      if (v34 != 3)
      {
        goto LABEL_6;
      }

      break;
    default:
      if ((v34 - 6) > 0xFFFFFFFC || v21 != v34)
      {
        goto LABEL_6;
      }

      break;
  }

  if (qword_2812C5EC8 != -1)
  {
    OUTLINED_FUNCTION_16(&qword_2812C5EC8);
  }

  v45 = sub_220FC17A0();
  __swift_project_value_buffer(v45, qword_2812C5ED0);
  v46 = sub_220FC1780();
  v47 = sub_220FC2E30();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    __dst[0] = v49;
    *v48 = 136446210;
    LOBYTE(v57) = v21;
    sub_220E561E0();
    v50 = sub_220FC38F0();
    v52 = sub_220E20FF8(v50, v51, __dst);

    *(v48 + 4) = v52;
    _os_log_impl(&dword_220E15000, v46, v47, "Metadata: Not updating overlayKind as it's the same. overlayKind=%{public}s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v49);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_15();
  }

  if (a4)
  {
    a4(3, nullsub_1, 0);
  }
}

void sub_220FA2190(uint64_t a1, uint64_t a2)
{
  v8 = v2;
  OUTLINED_FUNCTION_5_39();
  v11 = sub_220FC23C0();
  OUTLINED_FUNCTION_6();
  v13 = v12;
  MEMORY[0x28223BE20](v14, v15);
  OUTLINED_FUNCTION_3();
  v18 = (v17 - v16);
  v19 = *a2;
  v20 = *(a2 + 8);
  v21 = *(a2 + 16);
  sub_220E1AAEC();
  *v18 = sub_220FC2FC0();
  (*(v13 + 104))(v18, *MEMORY[0x277D85200], v11);
  LOBYTE(a2) = sub_220FC23E0();
  (*(v13 + 8))(v18, v11);
  if ((a2 & 1) == 0)
  {
    __break(1u);
LABEL_19:
    OUTLINED_FUNCTION_16(&qword_2812C5EC8);
    goto LABEL_14;
  }

  *(v8 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activePointsOfInterest) = a1;

  v22 = (v8 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeVisibleMapRect);
  v23 = *(v8 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeVisibleMapRect) == v7 && *(v8 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeVisibleMapRect + 8) == v6;
  if (!v23 || (v22[2] == v5 ? (v24 = v22[3] == v4) : (v24 = 0), !v24 || *(v8 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeZoomLevel) != v3))
  {
    *v22 = v7;
    v22[1] = v6;
    v22[2] = v5;
    v22[3] = v4;
    *(v8 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeZoomLevel) = v3;
    v29[0] = v19;
    v29[1] = v20;
    v30 = v21;
    sub_220F9F91C(v29);
    return;
  }

  if (qword_2812C5EC8 != -1)
  {
    goto LABEL_19;
  }

LABEL_14:
  v25 = sub_220FC17A0();
  __swift_project_value_buffer(v25, qword_2812C5ED0);
  v26 = sub_220FC1780();
  v27 = sub_220FC2E30();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_220E15000, v26, v27, "Metadata: No need to update metadata - VisibleMapRect & ZoomLevel did not change", v28, 2u);
    OUTLINED_FUNCTION_15();
  }
}

uint64_t sub_220FA23F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5_39();
  v10 = *v9;
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = *(v11 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E3A8, &qword_220FD0080);
  sub_220FC1570();
  v15 = swift_allocObject();
  *(v15 + 16) = v7;
  *(v15 + 24) = v6;
  *(v15 + 32) = v5;
  *(v15 + 40) = v4;
  *(v15 + 48) = v12;
  *(v15 + 56) = v13;
  *(v15 + 64) = v14;
  *(v15 + 65) = v10;
  *(v15 + 72) = v3;
  *(v15 + 80) = a3;
  sub_220E5AFB8(v12, v13, v14);

  v16 = sub_220FC13B0();
  v17 = sub_220FC14A0();

  return v17;
}

uint64_t sub_220FA2568(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1 + 7, a1[10]);
  sub_220FC0F60();
  v2 = sub_220FC1460();

  return v2;
}

uint64_t sub_220FA25D8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7, double a8, double a9, double a10, double a11, double a12)
{
  v16 = *a1;
  v17 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F548, &qword_220FD78C0);
  sub_220FC1570();
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a6;
  *(v18 + 32) = a12;
  *(v18 + 40) = a7;
  *(v18 + 48) = v16;
  *(v18 + 56) = v17;

  sub_220EA10E4(v16, v17);
  v19 = sub_220FC13B0();
  v20 = sub_220FC1490();

  return v20;
}

uint64_t sub_220FA271C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, double a7, double a8, double a9, double a10)
{
  __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  *&v20 = a4;
  *(&v20 + 1) = a5;
  v21 = a6;
  return sub_220F78310(a2, a3, &v20, a7, a8, a9, a10);
}

uint64_t sub_220FA27C4@<X0>(uint64_t *a1@<X0>, char a2@<W2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>, uint64_t a6@<X3>)
{
  sub_220EF572C(*a1, v13);
  v15 = a2;
  sub_220F9EFA0(v13, &v15, v12, a6);
  memcpy(__dst, v12, sizeof(__dst));
  LOBYTE(a6) = v12[184];
  sub_220E3B2DC(v13, &qword_27CF9FBE8, &qword_220FD9618);
  memcpy(a5, __dst, 0xB8uLL);
  *(a5 + 184) = a3;
  *(a5 + 192) = a4;
  *(a5 + 200) = a2;
  *(a5 + 201) = a6;
  return sub_220EA10E4(a3, a4);
}

void sub_220FA28AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = sub_220FC10C0();
  v10 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = &type metadata for WeatherMapOverlayRegionMetadata;
  v43 = &off_2834842F0;
  v14 = swift_allocObject();
  v41[0] = v14;
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  if (!*(__swift_project_boxed_opaque_existential_1(v41, &type metadata for WeatherMapOverlayRegionMetadata)[3] + 16) || (v34 = *(a5 + 16)) == 0)
  {

    goto LABEL_18;
  }

  v32 = a5 + 32;
  v37 = *MEMORY[0x277CBF258];
  v36 = (v10 + 104);
  v15 = (v10 + 8);

  v33 = 0;
  v16 = 0;
  v17 = v38;
  while (2)
  {
    v35 = v16 + 1;
    v18 = MKMapPointForCoordinate(*(v32 + 16 * v16));
    v19 = *(__swift_project_boxed_opaque_existential_1(v41, v42)[3] + 16);

    v21 = (v20 + 40);
    v39 = -v19;
    v40 = v20;
    v22 = -1;
    do
    {
      if (v39 + v22 == -1)
      {

        if (!__OFADD__(v33, 1))
        {
          ++v33;
          goto LABEL_15;
        }

LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        return;
      }

      if (++v22 >= *(v40 + 16))
      {
        __break(1u);
        goto LABEL_20;
      }

      v23 = *(v21 - 1);
      v24 = 0x277CD4EE0;
      if (*v21)
      {
        v25 = &selRef_initWithMultiPolygon_;
      }

      else
      {
        v24 = 0x277CD4F20;
        v25 = &selRef_initWithPolygon_;
      }

      v26 = objc_allocWithZone(*v24);
      v27 = v23;
      v28 = [v26 *v25];
      [v28 pointForMapPoint_];
      v29 = [v28 path];

      if (!v29)
      {
        goto LABEL_21;
      }

      v21 += 16;
      (*v36)(v13, v37, v17);
      v45 = 0;
      v46 = 0;
      v44 = 0x3FF0000000000000;
      v47 = 0x3FF0000000000000;
      v48 = 0;
      v49 = 0;
      v30 = sub_220FC3350();

      (*v15)(v13, v17);
    }

    while ((v30 & 1) == 0);

LABEL_15:
    v16 = v35;
    if (v35 != v34)
    {
      continue;
    }

    break;
  }

LABEL_18:
  __swift_destroy_boxed_opaque_existential_0(v41);
}

void sub_220FA2C68(uint64_t a1, int a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB80, &unk_220FC9670);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v24[-v7];
  v9 = type metadata accessor for WeatherMapOverlay(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v24[-v15];
  if (*(a3 + 408))
  {
    v25 = a2;
    v17 = *(a3 + 416);
    ObjectType = swift_getObjectType();
    v19 = *(v17 + 8);
    swift_unknownObjectRetain();
    v19(ObjectType, v17);
    swift_unknownObjectRelease();
    sub_220EE5C4C(v12, v16);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v21 = *(Strong + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_scrubberStore);
      sub_220FA2EDC(v16, v8, type metadata accessor for WeatherMapOverlay);
      v22 = __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
      MEMORY[0x28223BE20](v22, v23);
      *&v24[-32] = v8;
      *&v24[-24] = v21;
      v24[-16] = 0;
      v24[-15] = v25;

      sub_220EE41AC(sub_220EE5D08);
      swift_unknownObjectRelease();

      sub_220FA2F3C(v16, type metadata accessor for WeatherMapOverlay);
      sub_220E3B2DC(v8, &unk_27CF9EB80, &unk_220FC9670);
    }

    else
    {
      sub_220FA2F3C(v16, type metadata accessor for WeatherMapOverlay);
    }
  }
}

uint64_t sub_220FA2EDC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_220FA2F3C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

double sub_220FA2F94(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void sub_220FA2FAC(uint64_t a1)
{
  bzero(a1, 0xA0uLL);
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = 0x1FFFFFFFELL;
  *(a1 + 184) = 0;
}

void sub_220FA302C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6D0, &unk_220FCB0C0);
  OUTLINED_FUNCTION_29(v7);
  v9 = v8;
  v11 = v10;
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = *(v3 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_220FA04C0(a1, a2, a3, v3 + v12, v13);
}

uint64_t sub_220FA3120(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_220FA3168(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FBE8, &qword_220FD9618);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_220FA32A8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 202))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 160) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

void sub_220FA32F0(char *a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 100) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      a1[202] = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      a1[202] = 0;
    }

    if (a2)
    {
      v4 = 2 * -a2;
      bzero(a1, 0xA0uLL);
      *(a1 + 21) = 0;
      *(a1 + 22) = 0;
      *(a1 + 20) = v4;
    }
  }
}

void sub_220FA339C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v8[4] = sub_220F20A14;
    v8[5] = v6;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = sub_220F2A93C;
    v8[3] = &block_descriptor_29;
    v7 = _Block_copy(v8);

    [v3 addCompletedHandler_];
    _Block_release(v7);
  }
}

uint64_t sub_220FA3484(uint64_t a1)
{
  v2 = a1;
  sub_220E1E2A8(v1 + 16, v5);
  type metadata accessor for OverlayGeneratorContext();
  v3 = swift_allocObject();
  sub_220FA34E8(v5, v2);
  return v3;
}

uint64_t sub_220FA34E8(void *a1, char a2)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  (*(v6 + 8))(v8, v5, v6);
  *(v2 + 16) = [*(*__swift_project_boxed_opaque_existential_1(v8 v8[3]) + 24)];
  __swift_destroy_boxed_opaque_existential_0(v8);
  sub_220E1E2A8(a1, v2 + 24);
  *(v2 + 64) = a2;
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v2;
}

id sub_220FA35A8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {

    sub_220FA339C(a1, a2);
    sub_220E2DD2C(a1, a2);
  }

  result = *(v2 + 16);
  if (result)
  {

    return [result commit];
  }

  return result;
}

uint64_t sub_220FA3628()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 65, 7);
}

double block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t type metadata accessor for LocationPicker(uint64_t a1)
{
  result = qword_2812C7368;
  if (!qword_2812C7368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220FA373C(uint64_t a1)
{
  sub_220FA3800(319);
  if (v1 <= 0x3F)
  {
    sub_220FA3864();
    if (v2 <= 0x3F)
    {
      sub_220FA38AC(319);
      if (v3 <= 0x3F)
      {
        sub_220FA3908(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_220FA3800(uint64_t a1)
{
  if (!qword_2812C5E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9CFD0, &unk_220FCBA10);
    v1 = sub_220FC22D0();
    if (!v2)
    {
      atomic_store(v1, &qword_2812C5E10);
    }
  }
}

unint64_t sub_220FA3864()
{
  result = qword_2812C5AD0;
  if (!qword_2812C5AD0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2812C5AD0);
  }

  return result;
}

void sub_220FA38AC(uint64_t a1)
{
  if (!qword_2812C5E58)
  {
    sub_220E82260();
    v1 = sub_220FC1B20();
    if (!v2)
    {
      atomic_store(v1, &qword_2812C5E58);
    }
  }
}

void sub_220FA3908(uint64_t a1)
{
  if (!qword_2812C5E70)
  {
    sub_220FC1BA0();
    v1 = sub_220FC1AB0();
    if (!v2)
    {
      atomic_store(v1, &qword_2812C5E70);
    }
  }
}

uint64_t sub_220FA397C@<X0>(void *a1@<X8>)
{
  v3 = sub_220FC1CD0();
  OUTLINED_FUNCTION_6();
  v5 = v4;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6F0, &qword_220FCB110);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v18 - v12;
  v14 = type metadata accessor for LocationPicker(0);
  sub_220E93294(v1 + *(v14 + 36), v13, &unk_27CF9D6F0, &qword_220FCB110);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_220FC1BA0();
    OUTLINED_FUNCTION_2();
    return (*(v15 + 32))(a1, v13);
  }

  else
  {
    sub_220FC2E20();
    v17 = sub_220FC1EE0();
    sub_220FC16C0();

    sub_220FC1CC0();
    swift_getAtKeyPath(a1);

    return (*(v5 + 8))(v9, v3);
  }
}

uint64_t sub_220FA3B68@<X0>(uint64_t *a1@<X8>)
{
  result = sub_220FC2220();
  *a1 = result;
  return result;
}

uint64_t sub_220FA3BA0()
{
  v0 = sub_220FC1D20();

  return MEMORY[0x282130010](v0);
}

uint64_t sub_220FA3BFC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v18[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA0068, &qword_220FD9D18);
  MEMORY[0x28223BE20](v3, v4);
  v6 = v18 - v5;
  v18[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA0058, &qword_220FD9D08);
  v7 = *(v18[0] - 8);
  MEMORY[0x28223BE20](v18[0], v8);
  v10 = v18 - v9;
  *v6 = sub_220FC1D60();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v11 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA00C8, &qword_220FD9D48) + 44)];
  *v11 = sub_220FC1D10();
  *(v11 + 1) = 0x4020000000000000;
  v11[16] = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA00D0, &qword_220FD9D50);
  sub_220FA3EEC(&v11[*(v12 + 44)]);
  v18[4] = v2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA0070, &qword_220FD9D20);
  v14 = sub_220E453D4(&qword_27CFA0078, &qword_27CFA0068, &qword_220FD9D18, MEMORY[0x277CE1198]);
  v15 = sub_220E453D4(&qword_27CFA0080, &qword_27CFA0070, &qword_220FD9D20, MEMORY[0x277CE14C0]);
  sub_220FC2170();
  sub_220E3B2DC(v6, &qword_27CFA0068, &qword_220FD9D18);
  sub_220FC2310();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA0060, &qword_220FD9D10);
  v18[6] = v3;
  v18[7] = v13;
  v18[8] = v14;
  v18[9] = v15;
  swift_getOpaqueTypeConformance2();
  sub_220FAD314();
  v16 = v18[0];
  sub_220FC21A0();
  return (*(v7 + 8))(v10, v16);
}

uint64_t sub_220FA3EEC@<X0>(uint64_t a2@<X8>)
{
  v31 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA00D8, &qword_220FD9D58);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FF60, &qword_220FD9C50);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FF68, &qword_220FD9C58);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v30 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FF70, &qword_220FD9C60);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v30 - v24;
  sub_220FA4270(v13);
  sub_220FC2330();
  sub_220FC1BD0();
  sub_220E93658(v13, v17, &qword_27CF9FF60, &qword_220FD9C50);
  memcpy(&v17[*(v14 + 36)], __src, 0x70uLL);
  sub_220FACFCC();
  sub_220FC2130();
  sub_220E3B2DC(v17, &qword_27CF9FF68, &qword_220FD9C58);
  *v9 = sub_220FC1D70();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA00E0, &qword_220FD9D60);
  sub_220FA47EC(&v9[*(v26 + 44)]);
  sub_220E93294(v25, v21, &qword_27CF9FF70, &qword_220FD9C60);
  sub_220E93294(v9, v5, &qword_27CFA00D8, &qword_220FD9D58);
  v27 = v31;
  sub_220E93294(v21, v31, &qword_27CF9FF70, &qword_220FD9C60);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA00E8, &qword_220FD9D68);
  sub_220E93294(v5, v27 + *(v28 + 48), &qword_27CFA00D8, &qword_220FD9D58);
  sub_220E3B2DC(v9, &qword_27CFA00D8, &qword_220FD9D58);
  sub_220E3B2DC(v25, &qword_27CF9FF70, &qword_220FD9C60);
  sub_220E3B2DC(v5, &qword_27CFA00D8, &qword_220FD9D58);
  return sub_220E3B2DC(v21, &qword_27CF9FF70, &qword_220FD9C60);
}