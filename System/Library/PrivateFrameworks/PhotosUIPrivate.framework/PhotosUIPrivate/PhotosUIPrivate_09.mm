uint64_t sub_1B37DC540()
{
  sub_1B37DC508();

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t sub_1B37DC5A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8550C0, qword_1B3D03E58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B37DC644(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t OUTLINED_FUNCTION_6_19()
{

  return sub_1B3749364(v0, v1, (v2 - 168));
}

unint64_t OUTLINED_FUNCTION_8_16()
{

  return sub_1B3749364(v0, v1, (v2 - 168));
}

uint64_t OUTLINED_FUNCTION_12_13()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_13_14()
{
}

void OUTLINED_FUNCTION_14_15()
{
}

void OUTLINED_FUNCTION_15_15()
{
  v2 = *(v0 - 272);
}

void OUTLINED_FUNCTION_21_10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

BOOL OUTLINED_FUNCTION_22_5(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_23_5()
{
}

uint64_t static OneUpChromeBackgroundColorOverrideMode.mode(isAnimatingPresentationSize:isChromeCoveringContent:hasUserZoomedIn:isVideoTimelineControlInteracting:)@<X0>(uint64_t result@<X0>, unsigned __int8 a2@<W1>, unsigned __int8 a3@<W2>, char a4@<W3>, char *a5@<X8>)
{
  if (a4)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  if (a2 & a3)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  if (result)
  {
    v6 = 3;
  }

  *a5 = v6;
  return result;
}

uint64_t OneUpChromeBackgroundColorOverrideMode.hashValue.getter()
{
  v1 = *v0;
  sub_1B3C9D7C8();
  MEMORY[0x1B8C6AD50](v1);
  return sub_1B3C9D7F8();
}

unint64_t sub_1B37DC928()
{
  result = qword_1EB855140;
  if (!qword_1EB855140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB855140);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OneUpChromeBackgroundColorOverrideMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

id sub_1B37DCA58(void *a1, uint64_t a2, char a3)
{
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v8 = a1;
    [v7 size];
    v10 = v9;
    [v7 size];
    v12 = v11;

    if (v12 >= v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = v12;
    }
  }

  else
  {
    v13 = *&a2;
    if (a3)
    {
      v13 = 1080.0;
    }
  }

  return [a1 sizeWithMinDimension_];
}

void sub_1B37DCB1C(char a1)
{
  v2 = *(v1 + 48);
  if (v2 != (a1 & 1))
  {
    v3 = *(v1 + 32);
    if (v3)
    {
      v4 = swift_allocObject();
      *(v4 + 16) = v2;
      v6[4] = sub_1B37DEFB8;
      v6[5] = v4;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 1107296256;
      v6[2] = sub_1B386A148;
      v6[3] = &block_descriptor_30;
      v5 = _Block_copy(v6);

      [v3 performChanges_];
      _Block_release(v5);
    }
  }
}

void sub_1B37DCC00(void *a1, char a2)
{
  v4 = sub_1B3C9C5A8();
  [a1 setPerformingExportOperation:a2 & 1 withIdentifier:v4];
}

void sub_1B37DCC78(char a1)
{
  v2 = *(v1 + 48);
  *(v1 + 48) = a1;
  sub_1B37DCB1C(v2);
}

uint64_t sub_1B37DCC88(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectWeakInit();
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 24) = a1;
  swift_unknownObjectWeakAssign();

  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  swift_unknownObjectRelease();
  return v4;
}

double sub_1B37DCCFC(char *a1, uint64_t a2, uint64_t a3)
{
  if ((*(v3 + 48) & 1) == 0)
  {
    sub_1B37DCC78(1);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      if (a1)
      {
        v10 = a1;
      }

      else
      {
        v10 = sub_1B3C9CBF8();
      }

      OUTLINED_FUNCTION_20();
      v11 = swift_allocObject();
      swift_weakInit();
      v12 = swift_allocObject();
      v12[2] = v11;
      v12[3] = a2;
      v12[4] = a3;
      v13 = a1;

      sub_1B370A6FC(a2, a3);
      sub_1B37DCEB8(v10, sub_1B37DEFC0, v12);
    }
  }

  return result;
}

void sub_1B37DCE3C(uint64_t a1, void (*a2)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1B37DCC78(0);
  }

  if (a2)
  {
    a2(Strong);
  }
}

void sub_1B37DCEB8(char *a1, void (*a2)(void), uint64_t a3)
{
  v6 = v3;
  v95 = a2;
  v91 = a1;
  v8 = sub_1B3C98068();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v94 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = MEMORY[0x1EEE9AC00](v14).n128_u64[0];
  v17 = &v79 - v16;
  v18 = *(v3 + 24);
  [objc_msgSend(v18 timeline];
  OUTLINED_FUNCTION_58();
  swift_unknownObjectRelease();
  if (v5 >= v4)
  {
    v19 = 1;
  }

  else
  {
    v19 = 2;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v90 = a3;
    v22 = sub_1B37DD648(v18);
    if (v22)
    {
      v88 = v22;
      v89 = v21;
      sub_1B37DDCAC(v22, v17);
      v23 = [v18 resourcesDataSourceManager];
      v24 = [v23 dataSource];

      v25 = [v24 keyAssetResource];
      v92 = v17;
      v93 = v8;
      if (v25)
      {
        v26 = [v25 px_storyResourceDisplayAsset];
        swift_unknownObjectRelease();
      }

      else
      {
        v26 = 0;
      }

      v27 = [v18 extendedTraitCollection];
      [v27 displayScale];

      v28 = objc_allocWithZone(MEMORY[0x1E69C3AD0]);
      v29 = OUTLINED_FUNCTION_0_25();
      v32 = [v30 v31];
      v82 = v32;
      v33 = [v18 extendedTraitCollection];
      v34 = [v33 snapshot];

      v35 = objc_opt_self();
      v36 = objc_allocWithZone(MEMORY[0x1E69C3AE0]);
      v37 = v32;
      v38 = [v36 initWithUserInterfaceOrientation_];
      v85 = v37;
      v39 = [v35 defaultAspectRatioWithFullSizePlayerAspect:v37 orientation:v38];

      v87 = v10;
      v40 = *(v10 + 16);
      v41 = v94;
      v81 = v10 + 16;
      v80 = v40;
      v40(v94, v92, v93);
      v42 = *(v6 + 40);
      objc_allocWithZone(type metadata accessor for StoryExportActivityItemProvider(0));
      swift_unknownObjectRetain();
      v43 = v39;
      v44 = v34;
      v45 = v88;
      swift_unknownObjectRetain();
      v88 = v45;
      v84 = v43;
      v83 = v44;
      v86 = v26;
      v46 = sub_1B373CDC4(v41, v45, v43, v44, v26, v42);
      v47 = [v18 errorReporter];
      v48 = objc_allocWithZone(type metadata accessor for StoryExportActivityViewController());
      v49 = sub_1B37D0B2C(v46, v47, v82);
      v82 = v46;
      swift_unknownObjectWeakAssign();
      v50 = v49;
      v51 = v89;
      [v89 presentViewController:v50 animated:1 completion:0];
      [v91 bounds];
      OUTLINED_FUNCTION_58();
      v52 = [v51 view];
      v53 = OUTLINED_FUNCTION_0_25();
      [v54 v55];
      OUTLINED_FUNCTION_58();

      v56 = [v50 popoverPresentationController];
      if (v56)
      {
        v57 = v56;
        v58 = [v51 view];
        [v57 setSourceView_];
      }

      v59 = [v50 popoverPresentationController];

      v79 = v50;
      v60 = OUTLINED_FUNCTION_0_25();
      [v61 v62];

      OUTLINED_FUNCTION_20();
      v91 = swift_allocObject();
      swift_unknownObjectWeakInit();
      OUTLINED_FUNCTION_20();
      v63 = swift_allocObject();
      swift_unknownObjectWeakInit();
      OUTLINED_FUNCTION_20();
      v64 = swift_allocObject();
      swift_weakInit();
      v65 = v94;
      v80(v94, v92, v93);
      v66 = v87;
      v67 = (*(v87 + 80) + 16) & ~*(v87 + 80);
      v68 = (v12 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
      v69 = (v68 + 15) & 0xFFFFFFFFFFFFFFF8;
      v70 = (v69 + 15) & 0xFFFFFFFFFFFFFFF8;
      v71 = swift_allocObject();
      v72 = v71 + v67;
      v73 = v93;
      (*(v66 + 32))(v72, v65, v93);
      *(v71 + v68) = v64;
      *(v71 + v69) = v63;
      *(v71 + v70) = v91;
      v74 = (v71 + ((v70 + 15) & 0xFFFFFFFFFFFFFFF8));
      v75 = v95;
      v76 = v90;
      *v74 = v95;
      v74[1] = v76;
      aBlock[4] = sub_1B37DEBFC;
      aBlock[5] = v71;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B37D2298;
      aBlock[3] = &block_descriptor_33;
      v77 = _Block_copy(aBlock);
      sub_1B370A6FC(v75, v76);

      v78 = v79;
      [v79 setCompletionWithItemsHandler_];

      _Block_release(v77);
      swift_unknownObjectRelease();

      (*(v66 + 8))(v92, v73);
      return;
    }
  }

  if (v95)
  {
    v95();
  }
}

id sub_1B37DD648(void *a1)
{
  v2 = [a1 configuration];
  if (![v2 assetCollection])
  {
    goto LABEL_8;
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    swift_unknownObjectRelease();
LABEL_8:
    v25 = v2;
    goto LABEL_9;
  }

  v4 = v3;
  v55 = v2;
  swift_unknownObjectRetain();
  result = [v4 photoLibrary];
  if (result)
  {
    v6 = result;
    v7 = [result librarySpecificFetchOptions];

    v9 = OUTLINED_FUNCTION_3_24(v8, sel_setIncludePendingMemories_);
    v10 = OUTLINED_FUNCTION_3_24(v9, sel_setIncludeRejectedMemories_);
    v11 = OUTLINED_FUNCTION_3_24(v10, sel_setIncludeLocalMemories_);
    OUTLINED_FUNCTION_3_24(v11, sel_setIncludeStoryMemories_);
    v12 = objc_opt_self();
    v13 = [v4 assetCollectionType];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851C50, &unk_1B3CFA840);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1B3CF6CE0;
    v15 = [v4 localIdentifier];
    v16 = sub_1B3C9C5E8();
    v18 = v17;

    *(v14 + 32) = v16;
    *(v14 + 40) = v18;
    v19 = MEMORY[0x1E69E6158];
    v20 = sub_1B3C9C778();

    v21 = [v12 fetchAssetCollectionsWithType:v13 localIdentifiers:v20 options:v7];

    v22 = [v21 firstObject];
    if (!v22)
    {
      v54 = v7;
      type metadata accessor for PXStoryError(0);
      v56[12] = 10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8571B0, &qword_1B3CFB658);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B3CF6CE0;
      *(inited + 32) = sub_1B3C9C5E8();
      *(inited + 40) = v32;
      sub_1B3C9D378();

      v56[0] = 0xD00000000000001BLL;
      v56[1] = 0x80000001B3D181A0;
      v33 = [v4 localIdentifier];
      swift_unknownObjectRelease();
      v34 = sub_1B3C9C5E8();
      v36 = v35;

      MEMORY[0x1B8C69C10](v34, v36);

      *(inited + 72) = v19;
      *(inited + 48) = 0xD00000000000001BLL;
      *(inited + 56) = 0x80000001B3D181A0;
      sub_1B3C9C4D8();
      sub_1B37DEF60();
      sub_1B3C97F08();
      v37 = v56[0];
      v38 = sub_1B3C9CAC8();
      if (qword_1EB84FFB8 != -1)
      {
        swift_once();
      }

      v39 = qword_1EB878C60;
      if (os_log_type_enabled(qword_1EB878C60, v38))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v56[0] = v41;
        *v40 = 136315138;
        v42 = v37;
        v43 = [v4 localIdentifier];
        v44 = sub_1B3C9C5E8();
        v46 = v45;

        v47 = sub_1B3749364(v44, v46, v56);

        *(v40 + 4) = v47;
        v37 = v42;
        _os_log_impl(&dword_1B36F3000, v39, v38, "cannot find asset collection %s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v41);
        MEMORY[0x1B8C6EC70](v41, -1, -1);
        MEMORY[0x1B8C6EC70](v40, -1, -1);
      }

      v48 = [a1 errorReporter];
      if (v48)
      {
        v49 = v48;
        v50 = v37;
        v51 = sub_1B3C97F18();

        v52 = sub_1B3C9C5A8();
        [v49 setError:v51 forComponent:v52];

        swift_unknownObjectRelease();
      }

      else
      {
      }

      swift_unknownObjectRelease();
      return 0;
    }

    swift_unknownObjectRelease();
    v23 = v22;
    v2 = v55;
    v24 = [v55 keyAsset];
    v25 = [objc_allocWithZone(MEMORY[0x1E69C3AA0]) initWithAssetCollection:v23 keyAsset:v24];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (!v25)
    {

      return 0;
    }

LABEL_9:
    v26 = v25;
    v27 = [a1 recipeManager];
    v28 = [v27 recipeAttributes];

    if ((v28 & 2) != 0)
    {
      v29 = [a1 currentSongResource];
      if (v29)
      {
        v30 = [v29 px_storyResourceSongAsset];
        swift_unknownObjectRelease();
      }

      sub_1B37DEF1C();
      v53 = sub_1B3851178();
      [v26 setSongsConfiguration_];
    }

    else
    {
    }

    return v26;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B37DDCAC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853970, &unk_1B3CFB660);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v29 - v5;
  v7 = sub_1B3C98068();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v29 - v12;
  v14 = NSTemporaryDirectory();
  sub_1B3C9C5E8();

  sub_1B3C98008();

  v15 = [a1 assetCollection];
  if (v15)
  {
    v16 = v15;
    v29[1] = a2;
    v17 = [v15 localizedTitle];
    if (v17)
    {
      v18 = v17;
      v19 = sub_1B3C9C5E8();
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0;
    }

    v22 = [v16 localizedSubtitle];
    if (v22)
    {
      v23 = v22;
      v24 = sub_1B3C9C5E8();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    sub_1B37DE770(v19, v21, v24, v26);

    (*(v8 + 16))(v6, v13, v7);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
    v10 = v29[0];
    sub_1B3C97FF8();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1B37DE770(0, 0, 0, 0);
    (*(v8 + 16))(v6, v13, v7);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
    sub_1B3C97FF8();
  }

  sub_1B37DEEB4(v6);
  sub_1B3C97FE8();
  v27 = *(v8 + 8);
  v27(v10, v7);
  return (v27)(v13, v7);
}

double sub_1B37DDFE0(uint64_t a1, int a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(void))
{
  v38[3] = *MEMORY[0x1E69E9840];
  v11 = [objc_opt_self() defaultManager];
  v12 = sub_1B3C98018();
  v38[0] = 0;
  v13 = [v11 removeItemAtURL:v12 error:v38];

  if (v13)
  {
    v14 = v38[0];
  }

  else
  {
    v15 = v38[0];
    v16 = sub_1B3C97F28();

    swift_willThrow();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (a4)
    {
      v19 = *(Strong + 24);
      v20 = a4;
      v21 = [v19 errorReporter];
      if (v21)
      {
        v22 = v21;
        v23 = sub_1B3C97F18();
        v24 = sub_1B3C9C5A8();
        [v22 setError:v23 forComponent:v24];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    swift_beginAccess();
    v25 = swift_unknownObjectWeakLoadStrong();
    if (v25)
    {
      v26 = v25;
      v27 = [v25 activity];

      if (v27)
      {
        swift_beginAccess();
        v28 = swift_unknownObjectWeakLoadStrong();
        if (v28)
        {
          v29 = v28;
          v37 = a2;
          v30 = [swift_getObjCClassFromObject() activityCategory];
          v31 = [objc_allocWithZone(MEMORY[0x1E69C3AE8]) init];
          MEMORY[0x1EEE9AC00](v31);
          v36[2] = v27;
          v36[3] = v30;
          objc_allocWithZone(MEMORY[0x1E69C3AC0]);
          v32 = v31;
          v33 = v29;
          sub_1B37DECF8(v33, v32, sub_1B37DECF0, v36);
          v35 = v34;
          if (a4)
          {
            a4 = sub_1B3C97F18();
          }

          [objc_opt_self() collectDataContinuationAnalyticsForExportWithConfiguration:v35 withSuccess:v37 & 1 error:a4];

          v27 = a4;
        }
      }
    }

    if (a9)
    {
      a9();
    }
  }

  return result;
}

void sub_1B37DE328(void *a1, id a2, uint64_t a3)
{
  v4 = [a2 activityType];
  [a1 setActivityType_];

  v5 = sub_1B3C9C5A8();

  [a1 setActivityCategory_];
}

void sub_1B37DE418(void *a1)
{
  v2 = sub_1B37DD648(a1);
  if (v2)
  {
    v3 = v2;
    v4 = sub_1B37DE4C4(a1);
    MEMORY[0x1EEE9AC00](v4);
    v6[2] = a1;
    v5 = objc_allocWithZone(MEMORY[0x1E69C3AC0]);
    sub_1B37DECF8(v3, v4, sub_1B37DEFCC, v6);
  }
}

id sub_1B37DE4C4(void *a1)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E69C3AE8]) init];
  [v4 setFrameRate_];
  [objc_msgSend(a1 timeline)];
  OUTLINED_FUNCTION_58();
  swift_unknownObjectRelease();
  if (v2 >= v1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  v6 = [a1 extendedTraitCollection];
  [v6 displayScale];

  v7 = objc_allocWithZone(MEMORY[0x1E69C3AD0]);
  v8 = OUTLINED_FUNCTION_0_25();
  v11 = [v9 v10];
  v12 = objc_opt_self();
  v13 = objc_allocWithZone(MEMORY[0x1E69C3AE0]);
  v14 = v11;
  v15 = [v13 initWithUserInterfaceOrientation_];
  v16 = [v12 defaultAspectRatioWithFullSizePlayerAspect:v14 orientation:v15];

  sub_1B37DCA58(v16, 0, 1);
  [v4 setResolution_];
  v17 = [a1 extendedTraitCollection];
  v18 = [v17 snapshot];

  [v4 setFullSizePlayerExtendedTraitCollectionSnapshot_];
  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (v19)
  {
    v20 = v19;
    OUTLINED_FUNCTION_3_24(v19, sel_setPrefersExportLayoutMatchesPlayback_);
    [v20 scale];
    [v4 setScale_];
    v21 = v16;
  }

  else
  {
    v21 = v18;
    v18 = v14;
    v14 = v16;
  }

  return v4;
}

uint64_t sub_1B37DE708(void *a1, id a2)
{
  [a1 setErrorReporter_];

  return swift_unknownObjectRelease();
}

void sub_1B37DE770(uint64_t a1, unint64_t a2, void *a3, unint64_t a4)
{
  v37 = a3;
  v36 = sub_1B3C97D98();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() defaultHelper];

  v10 = sub_1B3C9C5A8();

  v11 = [v9 displayableTextForTitle:v10 intent:1];

  v12 = sub_1B3C9C5E8();
  v14 = v13;

  v42 = v12;
  v43 = v14;
  sub_1B3C97D88();
  sub_1B371B158();
  v15 = sub_1B3C9D1C8();
  v16 = *(v5 + 8);
  v34 = v5 + 8;
  v35 = v17;
  v18 = v36;
  v16(v8, v36);

  v19 = sub_1B3C9C5A8();

  v37 = v9;
  v20 = [v9 displayableTextForTitle:v19 intent:1];

  v21 = sub_1B3C9C5E8();
  v23 = v22;

  v42 = v21;
  v43 = v23;
  sub_1B3C97D88();
  v24 = sub_1B3C9D1C8();
  v26 = v25;
  v16(v8, v18);
  v27 = v35;

  v28 = v15 & 0xFFFFFFFFFFFFLL;
  if ((v27 & 0x2000000000000000) != 0)
  {
    v28 = HIBYTE(v27) & 0xF;
  }

  v29 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v29 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (v28)
  {
    if (v29)
    {
      v42 = v15;
      v43 = v27;

      MEMORY[0x1B8C69C10](2108704, 0xE300000000000000);
      MEMORY[0x1B8C69C10](v24, v26);
      v15 = v42;
      v30 = v43;
    }

    else
    {

      v30 = v27;
    }
  }

  else if (v29)
  {

    v15 = v24;
    v30 = v26;
  }

  else
  {
    v30 = 0xEB0000000074726FLL;
    v15 = 0x70784579726F7453;
  }

  v42 = v15;
  v43 = v30;
  v40 = 47;
  v41 = 0xE100000000000000;
  v38 = 58;
  v39 = 0xE100000000000000;
  sub_1B3C9D1D8();

  v31 = sub_1B3C9C5A8();
  v32 = sub_1B3C9C5A8();
  v33 = [v31 stringByAppendingPathExtension_];

  if (v33)
  {

    sub_1B3C9C5E8();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B37DEB6C()
{
  MEMORY[0x1B8C6EDB0](v0 + 16);

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1B37DEBA4()
{
  sub_1B37DEB6C();

  return MEMORY[0x1EEE6BDC0](v0);
}

double sub_1B37DEBFC(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v9 = *(sub_1B3C98068() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1B37DDFE0(a1, a2, a3, a4, v4 + v10, *(v4 + v11), *(v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1B37DECF8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v12[4] = sub_1B37DEE38;
  v12[5] = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1B37DEE60;
  v12[3] = &block_descriptor_24;
  v11 = _Block_copy(v12);

  [v5 initWithConfiguration:a1 videoOptions:a2 builder:v11];

  _Block_release(v11);

  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }
}

uint64_t sub_1B37DEE60(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1B37DEEB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853970, &unk_1B3CFB660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B37DEF1C()
{
  result = qword_1EB857220;
  if (!qword_1EB857220)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB857220);
  }

  return result;
}

unint64_t sub_1B37DEF60()
{
  result = qword_1EB852340;
  if (!qword_1EB852340)
  {
    type metadata accessor for PXStoryError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852340);
  }

  return result;
}

id OUTLINED_FUNCTION_3_24(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_1B37DEFFC()
{
  v1 = sub_1B3C981D8();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  v8 = sub_1B3C98248();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853720, &unk_1B3D00368);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v31 - v17;
  (*(v10 + 16))(v14, v0, v8, v16);
  v19 = MEMORY[0x1E6969B50];
  sub_1B37E5D58(&unk_1EB855400, MEMORY[0x1E6969B50], MEMORY[0x1E6969B78]);
  sub_1B3C9C738();
  sub_1B37E5D58(&unk_1EB853730, v19, MEMORY[0x1E6969B88]);
  OUTLINED_FUNCTION_20_12();
  sub_1B37E5D58(&unk_1EB855410, MEMORY[0x1E6969B18], MEMORY[0x1E6969B28]);
  OUTLINED_FUNCTION_18_14();
  v32 = v20;
  v21 = sub_1B3C9C528();
  v22 = *(v3 + 8);
  v33 = v3 + 8;
  v22(v7, v1);
  v23 = 0;
  if ((v21 & 1) == 0)
  {
    v31[3] = v21;
    v24 = OUTLINED_FUNCTION_15_16();
    v23 = *v25;
    v24(v34, 0);
    sub_1B3C9C9E8();
    while (1)
    {
      OUTLINED_FUNCTION_20_12();
      OUTLINED_FUNCTION_18_14();
      v26 = sub_1B3C9C528();
      v22(v7, v1);
      if (v26)
      {
        break;
      }

      v27 = OUTLINED_FUNCTION_15_16();
      v29 = *v28;
      v27(v34, 0);
      sub_1B3C9C9E8();
      if (v23 <= v29)
      {
        v23 = v29;
      }
    }
  }

  sub_1B370EEB0(v18, &unk_1EB853720, &unk_1B3D00368);
  return v23;
}

uint64_t sub_1B37DF328(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

double sub_1B37DF36C()
{
  result = -2.0;
  xmmword_1EB8551B0 = xmmword_1B3D03F80;
  *&qword_1EB8551C0 = xmmword_1B3D03F80;
  return result;
}

double sub_1B37DF384()
{
  result = -14.0;
  xmmword_1EB8551D0 = xmmword_1B3D03F90;
  *&qword_1EB8551E0 = xmmword_1B3D03F90;
  return result;
}

id sub_1B37DF39C()
{
  [objc_opt_self() systemFontSize];
  result = PXMonospacedNumberFontWithSize();
  qword_1EB8551F0 = result;
  return result;
}

id sub_1B37DF3DC()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v1 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor_];

  if (qword_1EB850060 != -1)
  {
    swift_once();
  }

  [v0 setFont_];
  [v0 setTextAlignment_];
  return v0;
}

id sub_1B37DF4B0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v1 = [v0 layer];
  [v1 setMasksToBounds_];

  v2 = [objc_opt_self() systemYellowColor];
  [v0 setBackgroundColor_];

  return v0;
}

void sub_1B37DF554(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC15PhotosUIPrivateP33_8BF9023972CBF50D2A1FAA417D58CBA832PUAudioMixModeCollectionViewCell_label;
  *&v4[v9] = sub_1B37DF3DC();
  v10 = OBJC_IVAR____TtC15PhotosUIPrivateP33_8BF9023972CBF50D2A1FAA417D58CBA832PUAudioMixModeCollectionViewCell_labelBackground;
  *&v4[v10] = sub_1B37DF4B0();
  v22.receiver = v4;
  v22.super_class = type metadata accessor for PUAudioMixModeCollectionViewCell();
  v11 = objc_msgSendSuper2(&v22, sel_initWithFrame_, a1, a2, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0, &unk_1B3CFA830);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B3CFB680;
  v13 = *&v11[OBJC_IVAR____TtC15PhotosUIPrivateP33_8BF9023972CBF50D2A1FAA417D58CBA832PUAudioMixModeCollectionViewCell_labelBackground];
  *(inited + 32) = v13;
  v14 = *&v11[OBJC_IVAR____TtC15PhotosUIPrivateP33_8BF9023972CBF50D2A1FAA417D58CBA832PUAudioMixModeCollectionViewCell_label];
  *(inited + 40) = v14;
  v15 = v11;
  v16 = v13;
  v17 = v14;
  v18 = [v15 contentView];
  for (i = 0; ; ++i)
  {
    if (i == 2)
    {

      swift_setDeallocating();
      sub_1B389E7C0();

      sub_1B37DF93C();
      return;
    }

    if ((inited & 0xC000000000000001) == 0)
    {
      break;
    }

    v20 = MEMORY[0x1B8C6A930](i, inited);
LABEL_6:
    v21 = v20;
    [v18 addSubview_];
  }

  if (i < *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(inited + 8 * i + 32);
    goto LABEL_6;
  }

  __break(1u);
}

id sub_1B37DF7F8(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for PUAudioMixModeCollectionViewCell();
  return objc_msgSendSuper2(&v4, *a1);
}

id sub_1B37DF894(char a1, SEL *a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for PUAudioMixModeCollectionViewCell();
  objc_msgSendSuper2(&v6, *a2, a1 & 1);
  return sub_1B37DF93C();
}

void sub_1B37DF8E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivateP33_8BF9023972CBF50D2A1FAA417D58CBA832PUAudioMixModeCollectionViewCell_label);
  sub_1B371B158();
  v2 = sub_1B3C9D1B8();
  sub_1B383C9E4(v2, v3, v1);
}

id sub_1B37DF93C()
{
  v1 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivateP33_8BF9023972CBF50D2A1FAA417D58CBA832PUAudioMixModeCollectionViewCell_label];
  v2 = [v0 isSelected];
  v3 = objc_opt_self();
  v4 = &selRef_blackColor;
  if (!v2)
  {
    v4 = &selRef_secondaryLabelColor;
  }

  v5 = [v3 *v4];
  [v1 setTextColor_];

  if ([v0 isHighlighted] && !objc_msgSend(v0, sel_isSelected))
  {
    v6 = 0.7;
  }

  else
  {
    v6 = 1.0;
  }

  [v1 setAlpha_];
  v7 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivateP33_8BF9023972CBF50D2A1FAA417D58CBA832PUAudioMixModeCollectionViewCell_labelBackground];
  v8 = [v0 isSelected];
  v9 = 0.0;
  if (v8)
  {
    v9 = 1.0;
  }

  return [v7 setAlpha_];
}

void sub_1B37DFA54()
{
  v28.receiver = v0;
  v28.super_class = type metadata accessor for PUAudioMixModeCollectionViewCell();
  objc_msgSendSuper2(&v28, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivateP33_8BF9023972CBF50D2A1FAA417D58CBA832PUAudioMixModeCollectionViewCell_label];
  [v1 sizeToFit];
  v2 = [v0 contentView];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v29.origin.x = v4;
  v29.origin.y = v6;
  v29.size.width = v8;
  v29.size.height = v10;
  Width = CGRectGetWidth(v29);
  [v1 frame];
  v12 = (Width - CGRectGetWidth(v30)) * 0.5;
  v13 = [v0 contentView];
  [v13 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v31.origin.x = v15;
  v31.origin.y = v17;
  v31.size.width = v19;
  v31.size.height = v21;
  Height = CGRectGetHeight(v31);
  [v1 frame];
  v23 = (Height - CGRectGetHeight(v32)) * 0.5;
  [v1 frame];
  [v1 setFrame_];
  [v1 frame];
  if (qword_1EB850050 != -1)
  {
    swift_once();
  }

  sub_1B3C9CEB8();
  v25 = v24;
  v26 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivateP33_8BF9023972CBF50D2A1FAA417D58CBA832PUAudioMixModeCollectionViewCell_labelBackground];
  [v26 frame];
  [v26 setFrame_];
  [v1 center];
  [v26 setCenter_];
  v27 = [v26 layer];
  [v27 setCornerRadius_];
}

void sub_1B37DFD00(uint64_t a1, uint64_t a2)
{
  sub_1B371B158();
  sub_1B3C9D1B8();
  v2 = sub_1B3C9C5A8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853940, &unk_1B3D00670);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B3CF6CE0;
  v4 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v5 = qword_1EB850060;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_1EB8551F0;
  *(inited + 64) = sub_1B3710718(0, &unk_1EB8553D0, 0x1E69DB878);
  *(inited + 40) = v7;
  type metadata accessor for Key(0);
  sub_1B37E5D58(&qword_1EB850B88, type metadata accessor for Key, &unk_1B3CF7C10);
  v8 = v7;
  sub_1B3C9C4D8();
  v9 = sub_1B3C9C4A8();

  [v2 sizeWithAttributes_];

  if (qword_1EB850050 != -1)
  {
    swift_once();
  }

  sub_1B3C9CEB8();
  if (qword_1EB850058 != -1)
  {
    swift_once();
  }

  sub_1B3C9CEB8();
}

void sub_1B37DFF4C()
{
  v1 = OBJC_IVAR____TtC15PhotosUIPrivateP33_8BF9023972CBF50D2A1FAA417D58CBA832PUAudioMixModeCollectionViewCell_label;
  *(v0 + v1) = sub_1B37DF3DC();
  v2 = OBJC_IVAR____TtC15PhotosUIPrivateP33_8BF9023972CBF50D2A1FAA417D58CBA832PUAudioMixModeCollectionViewCell_labelBackground;
  *(v0 + v2) = sub_1B37DF4B0();
  sub_1B3C9D4C8();
  __break(1u);
}

id sub_1B37DFFF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PUAudioMixModeCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B37E009C()
{
  v0 = [objc_opt_self() currentTheme];
  v1 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = sub_1B3C9C5A8();
  v3 = PULocalizedString(v2);

  v4 = sub_1B3C9C5E8();
  v6 = v5;

  v13 = v4;
  sub_1B371B158();
  v7 = sub_1B3C9D1B8();
  v9 = v8;

  sub_1B383C9E4(v7, v9, v1);
  if (v0)
  {
    v10 = [v0 photoEditingTopToolbarToolLabelButtonColor];
    [v1 setTextColor_];

    v11 = [v0 topToolbarToolLabelFont];
  }

  else
  {
    [v1 setTextColor_];
    v11 = 0;
  }

  [v1 setFont_];
  swift_unknownObjectRelease();

  return v1;
}

id sub_1B37E0238()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DC840]) init];
  [v0 setMinimumLineSpacing_];
  [v0 setMinimumInteritemSpacing_];
  v1 = [objc_allocWithZone(MEMORY[0x1E69DC7F0]) initWithFrame:v0 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  type metadata accessor for PUAudioMixModeCollectionViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = sub_1B3C9C5A8();
  [v1 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v3];

  v4 = objc_opt_self();
  v5 = v1;
  v6 = [v4 clearColor];
  [v5 setBackgroundColor_];

  v7 = v5;
  [v7 setContentInsetAdjustmentBehavior_];
  [v7 setAllowsSelection_];
  [v7 setAllowsMultipleSelection_];
  [v7 setShowsHorizontalScrollIndicator_];
  [v7 setShowsVerticalScrollIndicator_];
  [v7 setDecelerationRate_];

  return v7;
}

id sub_1B37E03F8()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  result = [objc_opt_self() currentTheme];
  if (result)
  {
    v2 = [result photoEditingToolbarMainButtonColor];
    swift_unknownObjectRelease();
    [v0 setTextColor_];

    [objc_opt_self() systemFontSize];
    v3 = PXMonospacedNumberFontWithSize();
    [v0 setFont_];

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1B37E04E0()
{
  v1 = sub_1B37E0774();
  v2 = sub_1B3C9C5E8();
  v4 = v3;
  if (v2 == sub_1B3C9C5E8() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1B3C9D6A8();
  }

  v8 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixBiasLabel];
  if ((v7 & 1) != 0 || (v9 = 1.0, (v0[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixBiasLabelAlwaysVisible] & 1) == 0) && ([v0 isPerformingLiveInteraction] & 1) == 0)
  {
    v9 = 0.0;
  }

  return [v8 setAlpha_];
}

id sub_1B37E05E4()
{
  v0 = [objc_opt_self() createEditSlider];
  [v0 setMinimumValue_];
  [v0 setMaximumValue_];
  if (qword_1EB850068 != -1)
  {
    swift_once();
  }

  [v0 setMarkedValue_];
  return v0;
}

id sub_1B37E0694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = sub_1B3C9C5A8();

  if (a4)
  {
    v10 = sub_1B3C9C5A8();
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_1B3C9C5A8();

  v12 = [swift_getObjCClassFromMetadata() buttonWithImageNamed:v9 selectedImageNamed:v10 accessibilityLabel:v11 spec:a7];

  return v12;
}

id sub_1B37E0774()
{
  v1 = [v0 compositionController];
  v2 = [v1 cinematicAudioAdjustmentController];

  if (v2)
  {
    v3 = [v2 renderingStyle];

    return v3;
  }

  else
  {
    v5 = *MEMORY[0x1E69BDFB8];

    return v5;
  }
}

void sub_1B37E0818()
{
  v1 = [v0 compositionController];
  v2 = [v1 cinematicAudioAdjustmentController];

  if (v2)
  {
    [v2 dialogMixBias];
  }

  else
  {
    v3 = sub_1B37E0774();
    v4 = OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_dialogMixBiasCache;
    swift_beginAccess();
    sub_1B3898F60(v3, *&v0[v4]);
    v6 = v5;
    swift_endAccess();

    if ((v6 & 1) != 0 && qword_1EB850068 != -1)
    {
      swift_once();
    }
  }
}

void sub_1B37E0930()
{
  v0 = *MEMORY[0x1E69BDFB0];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 dialogMixBiasKey];
  if (!v3)
  {
    sub_1B3C9C5E8();
    v3 = sub_1B3C9C5A8();
  }

  v4 = [objc_opt_self() defaultValueForAdjustmentKey:v2 settingKey:v3];

  if (v4)
  {
    sub_1B3C9D1E8();
    swift_unknownObjectRelease();
    sub_1B370ED44(&v5, &v6);
    swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }
}

id sub_1B37E0A3C()
{
  v1 = [v0 compositionController];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 adjustmentControllerForKey_];

    if (v3)
    {
      v2 = [v3 enabled];
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

void sub_1B37E0ACC(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_isPerformingLiveInteractionWithSlider) != (a1 & 1))
  {
    [v1 setPerformingLiveInteraction_];
    v2 = [v1 isPerformingLiveInteraction];
    sub_1B3710718(0, &qword_1EB8553C0, off_1E7B6E220);
    v3 = [swift_getObjCClassFromMetadata() sharedInstance];
    v4 = v3;
    v5 = &selRef_hideUIForInteractionFadeOutDuration;
    if (!v2)
    {
      v5 = &selRef_hideUIForInteractionFadeInDuration;
    }

    [v3 *v5];
    v7 = v6;

    v8 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 16) = v1;
    v19 = sub_1B37E5D24;
    v20 = v9;
    v15 = MEMORY[0x1E69E9820];
    v16 = 1107296256;
    v17 = sub_1B370C014;
    v18 = &block_descriptor_14_0;
    v10 = _Block_copy(&v15);
    v11 = v1;

    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v19 = sub_1B37E5D2C;
    v20 = v12;
    v15 = MEMORY[0x1E69E9820];
    v16 = 1107296256;
    v17 = sub_1B386A14C;
    v18 = &block_descriptor_20_0;
    v13 = _Block_copy(&v15);
    v14 = v11;

    [v8 animateWithDuration:4 delay:v10 options:v13 animations:v7 completion:0.0];
    _Block_release(v13);
    _Block_release(v10);
  }
}

id sub_1B37E0CF0(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixModeCollectionView);
  v3 = 1.0;
  if (*(a1 + OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_isPerformingLiveInteractionWithSlider))
  {
    v3 = 0.0;
  }

  [v2 setAlpha_];
  return sub_1B37E04E0();
}

void sub_1B37E0D48(char a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8553C8, &unk_1B3D04028);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_1B3C98298();
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) != 0 && *(a2 + OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_isPerformingLiveInteractionWithSlider) == 1)
  {
    v12 = *(a2 + OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixModeCollectionView);
    v13 = [v12 indexPathsForSelectedItems];
    if (v13)
    {
      v14 = v13;
      v15 = sub_1B3C9C788();

      sub_1B387CB04(v15, v6);

      if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
      {
        (*(v8 + 32))(v11, v6, v7);
        v16 = sub_1B3C98258();
        [v12 scrollToItemAtIndexPath:v16 atScrollPosition:16 animated:1];

        (*(v8 + 8))(v11, v7);
        return;
      }
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
    }

    sub_1B370EEB0(v6, &qword_1EB8553C8, &unk_1B3D04028);
  }
}

void sub_1B37E0F60(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_isPerformingLiveInteractionWithSlider);
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_isPerformingLiveInteractionWithSlider) = a1;
  sub_1B37E0ACC(v2);
}

id sub_1B37E0F78()
{
  v15.receiver = v0;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, sel_viewDidLoad);
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = result;
  [result setUserInteractionEnabled_];

  v3 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixModeCollectionView];
  [v3 setDelegate_];
  [v3 setDataSource_];
  v4 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixModeCollectionViewContainerView];
  [v4 addSubview_];
  result = [v0 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  [result addSubview_];

  result = [v0 toolContainerView];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  [result addSubview_];

  v7 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_slider];
  [v7 setDelegate_];
  result = [v0 toolContainerView];
  if (result)
  {
    v8 = result;
    [result addSubview_];

    v9 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_muteButton];
    OUTLINED_FUNCTION_20();
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14[4] = sub_1B37E5D50;
    v14[5] = v10;
    OUTLINED_FUNCTION_1_0();
    v14[1] = 1107296256;
    v14[2] = sub_1B37D2F2C;
    v14[3] = &block_descriptor_49;
    v11 = _Block_copy(v14);

    [v9 setActionBlock_];
    _Block_release(v11);
    sub_1B37E13C8(v12, v13);
    sub_1B37E16FC();
    sub_1B37E1994();
    return [v9 setSelected_];
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1B37E11CC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_1B37E0A3C();
    v5 = [v3 compositionController];
    v6 = v5;
    if (v4)
    {
      if (v5)
      {
        v7 = *MEMORY[0x1E69BE048];
        [v6 removeAdjustmentWithKey_];
      }
    }

    else if (v5)
    {
      v8 = *MEMORY[0x1E69BE048];
      aBlock[4] = sub_1B37E1378;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B37E137C;
      aBlock[3] = &block_descriptor_52;
      v9 = _Block_copy(aBlock);
      v10 = v8;

      [v6 modifyAdjustmentWithKey:v10 modificationBlock:v9];

      _Block_release(v9);
      if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
      {
        return;
      }

      __break(1u);
    }
  }
}

void sub_1B37E137C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

id sub_1B37E13C8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B3C98298();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v3).n128_u64[0];
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&v2[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixModeCollectionView];
  result = [v8 window];
  if (result)
  {

    result = [v2 compositionController];
    if (result)
    {
      v33 = v8;
      v34 = v7;
      v35 = v4;
      v36 = v3;

      v10 = *&v2[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_audioMixModes];
      result = sub_1B3711890();
      v11 = result;
      v12 = 0;
      v37 = v10 & 0xFFFFFFFFFFFFFF8;
      v38 = v10 & 0xC000000000000001;
      while (1)
      {
        if (v11 == v12)
        {
          v12 = 0;
          goto LABEL_19;
        }

        if (v38)
        {
          v13 = MEMORY[0x1B8C6A930](v12, v10);
        }

        else
        {
          if (v12 >= *(v37 + 16))
          {
            __break(1u);
LABEL_27:
            __break(1u);
            return result;
          }

          v13 = *(v10 + 8 * v12 + 32);
        }

        v14 = v13;
        v15 = [v13 renderingStyle];
        v16 = sub_1B37E0774();
        v17 = sub_1B3C9C5E8();
        v19 = v18;
        if (v17 == sub_1B3C9C5E8() && v19 == v20)
        {
          break;
        }

        v22 = sub_1B3C9D6A8();

        if (v22)
        {
          goto LABEL_19;
        }

        if (__OFADD__(v12++, 1))
        {
          goto LABEL_27;
        }
      }

LABEL_19:
      v24 = v34;
      MEMORY[0x1B8C65800](v12, 0);
      v25 = v33;
      v26 = [v33 indexPathsForSelectedItems];
      v27 = v36;
      if (v26)
      {
        v28 = v26;
        v29 = sub_1B3C9C788();
      }

      else
      {
        v29 = MEMORY[0x1E69E7CC0];
      }

      MEMORY[0x1EEE9AC00](v26);
      *(&v32 - 2) = v24;
      v30 = sub_1B3876FFC(sub_1B37E5D04, (&v32 - 4), v29);

      if (!v30)
      {
        v31 = sub_1B3C98258();
        [v25 selectItemAtIndexPath:v31 animated:0 scrollPosition:16];
      }

      return (*(v35 + 8))(v24, v27);
    }
  }

  return result;
}

uint64_t sub_1B37E16FC()
{
  v1 = v0;
  v2 = sub_1B37E0774();
  v3 = sub_1B3C9C5E8();
  v5 = v4;
  if (v3 == sub_1B3C9C5E8() && v5 == v6)
  {

    v9 = 0.0;
  }

  else
  {
    v8 = sub_1B3C9D6A8();

    v9 = 0.0;
    if ((v8 & 1) == 0)
    {
      v9 = 1.0;
      if (([v1 isActivelyAdjusting] & 1) == 0)
      {
        v10 = *&v1[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_slider];
        v11 = [v10 delegate];
        [v10 setDelegate_];
        sub_1B37E0818();
        [v10 setValue_];
        [v10 setDelegate_];
        swift_unknownObjectRelease();
      }
    }
  }

  [*&v1[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_slider] alpha];
  if (v12 != v9)
  {
    v13 = objc_opt_self();
    v14 = swift_allocObject();
    *(v14 + 16) = v1;
    *(v14 + 24) = v9;
    aBlock[4] = sub_1B37E5CF8;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B370C014;
    aBlock[3] = &block_descriptor_8;
    v15 = _Block_copy(aBlock);
    v16 = v1;

    [v13 animateWithDuration:v15 animations:0.2];
    _Block_release(v15);
  }

  v17 = sub_1B37E0774();
  sub_1B37E0818();
  v19 = v18;
  v20 = OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_dialogMixBiasCache;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *&v1[v20];
  sub_1B371FF20(v17, isUniquelyReferenced_nonNull_native, v19);
  *&v1[v20] = v23;

  return swift_endAccess();
}

id sub_1B37E1994()
{
  v0 = sub_1B3C97FD8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B3C98188();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8553A0, &qword_1B3D04020);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - v13;
  sub_1B3C98168();
  sub_1B37E5BC4();
  sub_1B3C97F78();
  MEMORY[0x1B8C654E0](v5, 100.0);
  v15 = v8;
  v16 = *(v6 + 8);
  v16(v15, v5);
  sub_1B3C97FC8();
  MEMORY[0x1B8C65500](v3, v5);
  (*(v1 + 8))(v3, v0);
  v17 = v35;
  v16(v11, v5);
  v18 = *&v17[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixBiasLabel];
  sub_1B37E0818();
  v42 = v19;
  sub_1B37E5C18();
  sub_1B37E5C6C();
  sub_1B3C9C498();
  sub_1B383C9E4(aBlock, v37, v18);
  result = [v17 view];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v21 = result;
  [result setNeedsLayout];

  v22 = sub_1B37E0774();
  v23 = sub_1B3C9C5E8();
  v25 = v24;
  if (v23 == sub_1B3C9C5E8() && v25 == v26)
  {
  }

  else
  {
    v28 = sub_1B3C9D6A8();

    v29 = 1.0;
    if ((v28 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v29 = 0.0;
LABEL_10:
  [v18 alpha];
  if (v30 != v29)
  {
    v31 = objc_opt_self();
    v32 = swift_allocObject();
    *(v32 + 16) = v17;
    *(v32 + 24) = v29;
    v40 = sub_1B37E5CD0;
    v41 = v32;
    aBlock = MEMORY[0x1E69E9820];
    v37 = 1107296256;
    v38 = sub_1B370C014;
    v39 = &block_descriptor_34;
    v33 = _Block_copy(&aBlock);
    v34 = v17;

    [v31 animateWithDuration:v33 animations:0.2];
    _Block_release(v33);
  }

  return (v16)(v14, v5);
}

void sub_1B37E1E64(char a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_viewWillAppear_, a1 & 1);
  v3 = [v1 view];
  if (v3)
  {
    v4 = v3;
    [v3 bringSubviewToFront_];
  }

  else
  {
    __break(1u);
  }
}

id sub_1B37E1F40(char a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v6, sel_viewDidAppear_, a1 & 1);
  return sub_1B37E13C8(v3, v4);
}

void sub_1B37E1FE0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1B3C98298();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v9 = v8 - v7;
  v170.receiver = v1;
  v170.super_class = ObjectType;
  objc_msgSendSuper2(&v170, sel_viewDidLayoutSubviews);
  v10 = [v1 view];
  if (!v10)
  {
    __break(1u);
    goto LABEL_60;
  }

  v11 = v10;
  [v10 frame];
  OUTLINED_FUNCTION_6();

  v171.origin.x = OUTLINED_FUNCTION_17();
  Height = CGRectGetHeight(v171);
  v13 = [v1 view];
  if (!v13)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  OUTLINED_FUNCTION_21_11(v13);
  OUTLINED_FUNCTION_3_1();

  v172.origin.x = OUTLINED_FUNCTION_2_26();
  Width = CGRectGetWidth(v172);
  v15 = [v1 photoEditSpec];
  if (!v15)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v16 = v15;
  v17 = [v15 currentLayoutStyle];

  v18 = [v1 delegate];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 toolControllerMainContainerView_];
    swift_unknownObjectRelease();
    if (v20)
    {
      v167 = v17;
      v165 = v5;
      v166 = v20;
      v21 = [v1 layoutOrientation] & 0xFFFFFFFFFFFFFFFELL;
      if (v21 == 2)
      {
        v36 = OUTLINED_FUNCTION_16_13();
        if (v36)
        {
          v37 = v36;
          [v166 bounds];
          [v37 convertRect:v166 fromCoordinateSpace:?];
          v39 = v38;
          v41 = v40;
          v164 = v42;
          v163 = v43;

          v22 = *&v1[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_slider];
          v44 = [v1 0x1FC41B8C1];
          if (v44)
          {
            v45 = v44;
            v162 = Height;
            [v44 frame];
            v47 = v46;
            v49 = v48;
            v51 = v50;
            v53 = v52;

            v180.origin.x = v47;
            v180.origin.y = v49;
            v180.size.width = v51;
            v180.size.height = v53;
            CGRectGetHeight(v180);
            [v22 bounds];
            [v22 setBounds_];
            v54 = [v1 0x1FC41B8C1];
            if (v54)
            {
              v55 = v54;
              v56 = v39;
              [v54 frame];
              v58 = v57;
              v60 = v59;
              v62 = v61;
              v64 = v63;

              v181.origin.x = v58;
              v181.origin.y = v60;
              v181.size.width = v62;
              v181.size.height = v64;
              v65 = CGRectGetWidth(v181);
              v66 = [v1 0x1FC41B8C1];
              if (v66)
              {
                v67 = v66;
                v21 = 2;
                v68 = v65 + -33.0;
                [v66 frame];
                v70 = v69;
                v72 = v71;
                v74 = v73;
                v76 = v75;

                v182.origin.x = v70;
                v182.origin.y = v72;
                v182.size.width = v74;
                v182.size.height = v76;
                v77 = CGRectGetHeight(v182);
                v183.origin.x = v56;
                v183.origin.y = v41;
                v183.size.width = v164;
                v183.size.height = v163;
                [v22 setCenter_];
                OUTLINED_FUNCTION_19_12();
                CGAffineTransformRotate(&v168, &v169, -1.57079633);
                v169 = v168;
                [v22 setTransform_];
                v78 = *&v1[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixBiasLabel];
                [v78 sizeToFit];
                [v22 center];
                v80 = v79;
                [v22 frame];
                v81 = v80 - CGRectGetWidth(v184) * 0.5;
                OUTLINED_FUNCTION_10_16();
                v82 = v81 - CGRectGetWidth(v185) + -16.0;
                [v22 center];
                v84 = v83;
                OUTLINED_FUNCTION_10_16();
                v85 = v84 - CGRectGetHeight(v186) * 0.5;
                OUTLINED_FUNCTION_10_16();
                [v78 setFrame_];
                v87 = Width >= v162 && v17 != 4;
                v1[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixBiasLabelAlwaysVisible] = v87;
                goto LABEL_23;
              }

LABEL_69:
              __break(1u);
              goto LABEL_70;
            }

            goto LABEL_67;
          }

          goto LABEL_65;
        }

        goto LABEL_63;
      }

      v22 = *&v1[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_slider];
      v23 = OUTLINED_FUNCTION_16_13();
      if (v23)
      {
        OUTLINED_FUNCTION_21_11(v23);
        OUTLINED_FUNCTION_6();

        v173.origin.x = OUTLINED_FUNCTION_17();
        CGRectGetWidth(v173);
        [v22 bounds];
        [v22 setBounds_];
        v24 = OUTLINED_FUNCTION_16_13();
        if (v24)
        {
          OUTLINED_FUNCTION_21_11(v24);
          OUTLINED_FUNCTION_6();

          v174.origin.x = OUTLINED_FUNCTION_17();
          v25 = CGRectGetWidth(v174);
          v26 = OUTLINED_FUNCTION_16_13();
          if (v26)
          {
            v27 = v26;
            [v26 frame];
            OUTLINED_FUNCTION_3_1();

            v175.origin.x = OUTLINED_FUNCTION_2_26();
            [v22 setCenter_];
            OUTLINED_FUNCTION_19_12();
            [v22 v28];
            v29 = *&v1[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixBiasLabel];
            [v29 sizeToFit];
            v30 = OUTLINED_FUNCTION_16_13();
            if (v30)
            {
              v31 = v30;
              [v30 frame];
              OUTLINED_FUNCTION_6();

              v176.origin.x = OUTLINED_FUNCTION_17();
              v32 = CGRectGetWidth(v176);
              OUTLINED_FUNCTION_10_16();
              v33 = (v32 - CGRectGetWidth(v177)) * 0.5;
              [v22 frame];
              MinY = CGRectGetMinY(v178);
              OUTLINED_FUNCTION_10_16();
              v35 = MinY - CGRectGetHeight(v179) + -16.0;
              OUTLINED_FUNCTION_10_16();
              [v29 setFrame_];
              v1[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixBiasLabelAlwaysVisible] = 0;
LABEL_23:
              sub_1B37E04E0();
              sub_1B37E2CD0(v21 != 2, v1);
              v89 = v88;
              v91 = v90;
              v92 = *&v1[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixModeCollectionView];
              v93 = [v92 collectionViewLayout];
              objc_opt_self();
              [swift_dynamicCastObjCClassUnconditional() setScrollDirection_];

              if (v21 != 2)
              {
                v94 = [v1 view];
                v95 = v94;
                if (v167 == 4)
                {
                  if (!v94)
                  {
LABEL_78:
                    __break(1u);
                    goto LABEL_79;
                  }

                  OUTLINED_FUNCTION_10_16();
                  OUTLINED_FUNCTION_3_1();

                  v189.origin.x = OUTLINED_FUNCTION_2_26();
                  v105 = CGRectGetHeight(v189);
                  v106 = [v1 view];
                  if (!v106)
                  {
LABEL_80:
                    __break(1u);
                    goto LABEL_81;
                  }

                  v107 = v106;
                  v108 = v105 - v91;
                  [v106 safeAreaInsets];
                  v110 = v109;

                  v100 = v108 - v110 + -16.0;
                }

                else
                {
                  if (!v94)
                  {
LABEL_77:
                    __break(1u);
                    goto LABEL_78;
                  }

                  [v22 frame];
                  OUTLINED_FUNCTION_3_1();
                  v96 = OUTLINED_FUNCTION_16_13();
                  v97 = OUTLINED_FUNCTION_2_26();
                  [v98 v99];
                  OUTLINED_FUNCTION_3_1();

                  v187.origin.x = OUTLINED_FUNCTION_2_26();
                  v100 = CGRectGetMinY(v187) - v91;
                }

                v111 = *&v1[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixModeCollectionViewContainerView];
                v112 = [v1 view];
                if (v112)
                {
                  OUTLINED_FUNCTION_21_11(v112);
                  OUTLINED_FUNCTION_14_16();
                  OUTLINED_FUNCTION_11_13();
                  v113 = 0.0;
                  [v111 setFrame_];
                  [v111 bounds];
                  [v92 setFrame_];
                  MEMORY[0x1B8C65800](0, 0);
                  v114 = sub_1B3C98258();
                  (*(v165 + 8))(v9, v3);
                  v115 = [v92 cellForItemAtIndexPath_];

                  if (v115)
                  {
                    OUTLINED_FUNCTION_10_16();
                    OUTLINED_FUNCTION_6();

                    v191.origin.x = OUTLINED_FUNCTION_17();
                    v113 = CGRectGetWidth(v191);
                  }

                  [v92 frame];
                  v116 = CGRectGetWidth(v192);
                  [v92 setContentInset_];
                  v117 = *&v1[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_gradientMask];
                  [v111 bounds];
                  [v117 setFrame_];
                  [v117 setGradientDirection_];
                  [v117 setGradientDimensions_];
                  [v111 setMaskView_];
LABEL_57:

                  return;
                }

                goto LABEL_71;
              }

              if (v167 == 4)
              {
                v118 = OUTLINED_FUNCTION_12_14();
                if (!v118)
                {
LABEL_79:
                  __break(1u);
                  goto LABEL_80;
                }

                [v118 frame];
                OUTLINED_FUNCTION_14_16();
                OUTLINED_FUNCTION_11_13();
                MinX = CGRectGetWidth(v193) - v89 + -50.0;
              }

              else
              {
                v101 = [v1 layoutOrientation];
                v102 = OUTLINED_FUNCTION_12_14();
                v103 = v102;
                if (v101 == 2)
                {
                  if (!v102)
                  {
LABEL_82:
                    __break(1u);
                    goto LABEL_83;
                  }

                  OUTLINED_FUNCTION_10_16();
                  OUTLINED_FUNCTION_14_16();
                  OUTLINED_FUNCTION_11_13();
                  MinX = CGRectGetMinX(v188);
                }

                else
                {
                  if (!v102)
                  {
LABEL_83:
                    __break(1u);
                    return;
                  }

                  [v102 safeAreaInsets];
                  MinX = v119;
                }
              }

              v120 = OUTLINED_FUNCTION_12_14();
              if (v120)
              {
                v121 = v120;
                v122 = [v120 superview];

                if (!v122)
                {
                  v123 = OUTLINED_FUNCTION_12_14();
                  if (!v123)
                  {
LABEL_81:
                    __break(1u);
                    goto LABEL_82;
                  }

                  v122 = v123;
                }

                OUTLINED_FUNCTION_10_16();
                v125 = v124;
                v127 = v126;
                v129 = v128;
                v131 = v130;

                v194.origin.x = v125;
                v194.origin.y = v127;
                v194.size.width = v129;
                v194.size.height = v131;
                CGRectGetHeight(v194);
                v132 = OUTLINED_FUNCTION_12_14();
                if (v132)
                {
                  v133 = v132;
                  v134 = OUTLINED_FUNCTION_12_14();
                  if (v134)
                  {
                    v135 = v134;
                    CGSizeMake();
                    v137 = v136;
                    v138 = [v135 superview];

                    [v133 convertPoint:v138 fromView:{0.0, v137}];
                    v140 = v139;

                    v141 = *&v1[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixModeCollectionViewContainerView];
                    v142 = OUTLINED_FUNCTION_12_14();
                    if (v142)
                    {
                      v143 = v142;
                      [v142 safeAreaInsets];
                      v145 = v144;

                      if (v145 > v140)
                      {
                        v140 = v145;
                      }

                      v146 = OUTLINED_FUNCTION_12_14();
                      if (v146)
                      {
                        v147 = v146;
                        [v146 frame];
                        v149 = v148;
                        v151 = v150;
                        v153 = v152;
                        v155 = v154;

                        v195.origin.x = v149;
                        v195.origin.y = v151;
                        v195.size.width = v153;
                        v195.size.height = v155;
                        v156 = CGRectGetHeight(v195);
                        v157 = OUTLINED_FUNCTION_12_14();
                        if (v157)
                        {
                          v158 = v157;
                          [v157 safeAreaInsets];
                          v160 = v159;

                          if (v91 >= v156 - v160)
                          {
                            v161 = v156 - v160;
                          }

                          else
                          {
                            v161 = v91;
                          }

                          [v141 &selRef:MinX setFeedbackUIFCS:{v140, v89, v161}];
                          [v141 bounds];
                          [v92 &selRef_setFeedbackUIFCS_];
                          [v92 setContentInset_];
                          [v141 setMaskView_];
                          goto LABEL_57;
                        }

                        goto LABEL_76;
                      }

LABEL_75:
                      __break(1u);
LABEL_76:
                      __break(1u);
                      goto LABEL_77;
                    }

LABEL_74:
                    __break(1u);
                    goto LABEL_75;
                  }

LABEL_73:
                  __break(1u);
                  goto LABEL_74;
                }

LABEL_72:
                __break(1u);
                goto LABEL_73;
              }

LABEL_70:
              __break(1u);
LABEL_71:
              __break(1u);
              goto LABEL_72;
            }

            goto LABEL_68;
          }

          goto LABEL_66;
        }

        goto LABEL_64;
      }

LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }
  }
}

void sub_1B37E2CD0(char a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_audioMixModes);
  v4 = sub_1B3711890();
  v5 = v4;
  if ((a1 & 1) == 0)
  {
    if (v4)
    {
      v55 = MEMORY[0x1E69E7CC0];
      sub_1B37EACA0(0, v4 & ~(v4 >> 63), 0);
      if (v5 < 0)
      {
LABEL_51:
        __break(1u);
        return;
      }

      v19 = v55;
      type metadata accessor for PUAudioMixModeCollectionViewCell();
      v20 = 0;
      v21 = v3 & 0xC000000000000001;
      do
      {
        if (v21)
        {
          v22 = MEMORY[0x1B8C6A930](v20, v3);
        }

        else
        {
          v22 = *(v3 + 8 * v20 + 32);
        }

        v23 = v22;
        v24 = [v22 localizedTitle];
        v25 = sub_1B3C9C5E8();
        v27 = v26;

        sub_1B37DFD00(v25, v27);
        v29 = v28;

        v31 = *(v55 + 16);
        v30 = *(v55 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_1B37EACA0((v30 > 1), v31 + 1, 1);
        }

        ++v20;
        *(v55 + 16) = v31 + 1;
        *(v55 + 8 * v31 + 32) = v29;
      }

      while (v5 != v20);
    }

    else
    {
      v21 = v3 & 0xC000000000000001;
      v19 = MEMORY[0x1E69E7CC0];
    }

    sub_1B37DF328(v19);

    v43 = 0.0;
    v44 = sub_1B3711890();
    for (i = 0; v44 != i; ++i)
    {
      if (v21)
      {
        v46 = MEMORY[0x1B8C6A930](i, v3);
      }

      else
      {
        if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }

        v46 = *(v3 + 8 * i + 32);
      }

      v47 = v46;
      if (__OFADD__(i, 1))
      {
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      type metadata accessor for PUAudioMixModeCollectionViewCell();
      v48 = [v47 localizedTitle];
      v49 = sub_1B3C9C5E8();
      v51 = v50;

      sub_1B37DFD00(v49, v51);
      v53 = v52;

      v43 = v43 + v53;
    }

    if (!__OFSUB__(sub_1B3711890(), 1))
    {
      return;
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (!v4)
  {
    v8 = v3 & 0xC000000000000001;
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

  v54 = MEMORY[0x1E69E7CC0];
  sub_1B37EACA0(0, v4 & ~(v4 >> 63), 0);
  if (v5 < 0)
  {
    goto LABEL_50;
  }

  v6 = v54;
  type metadata accessor for PUAudioMixModeCollectionViewCell();
  v7 = 0;
  v8 = v3 & 0xC000000000000001;
  do
  {
    if (v8)
    {
      v9 = MEMORY[0x1B8C6A930](v7, v3);
    }

    else
    {
      v9 = *(v3 + 8 * v7 + 32);
    }

    v10 = v9;
    v11 = [v9 localizedTitle];
    v12 = sub_1B3C9C5E8();
    v14 = v13;

    sub_1B37DFD00(v12, v14);
    v16 = v15;

    v18 = *(v54 + 16);
    v17 = *(v54 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_1B37EACA0((v17 > 1), v18 + 1, 1);
    }

    ++v7;
    *(v54 + 16) = v18 + 1;
    *(v54 + 8 * v18 + 32) = v16;
  }

  while (v5 != v7);
LABEL_23:
  sub_1B37DF328(v6);

  v32 = 0.0;
  v33 = sub_1B3711890();
  for (j = 0; v33 != j; ++j)
  {
    if (v8)
    {
      v35 = MEMORY[0x1B8C6A930](j, v3);
    }

    else
    {
      if (j >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_46;
      }

      v35 = *(v3 + 8 * j + 32);
    }

    v36 = v35;
    if (__OFADD__(j, 1))
    {
      __break(1u);
      goto LABEL_45;
    }

    type metadata accessor for PUAudioMixModeCollectionViewCell();
    v37 = [v36 localizedTitle];
    v38 = sub_1B3C9C5E8();
    v40 = v39;

    sub_1B37DFD00(v38, v40);
    v42 = v41;

    v32 = v32 + v42;
  }

  if (__OFSUB__(sub_1B3711890(), 1))
  {
    goto LABEL_48;
  }
}

void sub_1B37E31C8(void *a1, double a2, double a3)
{
  v10.receiver = v3;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  OUTLINED_FUNCTION_20();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9[4] = sub_1B37E5D48;
  v9[5] = v7;
  OUTLINED_FUNCTION_1_0();
  v9[1] = 1107296256;
  v9[2] = sub_1B372B6C8;
  v9[3] = &block_descriptor_45_0;
  v8 = _Block_copy(v9);

  [a1 animateAlongsideTransition:v8 completion:0];
  _Block_release(v8);
}

void sub_1B37E32C4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1B37E3318(Strong, v3);
  }
}

id sub_1B37E3318(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B3C98298();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v3).n128_u64[0];
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&v2[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixModeCollectionView];
  result = [v8 window];
  if (!result)
  {
    return result;
  }

  result = [v2 compositionController];
  if (!result)
  {
    return result;
  }

  v26 = v8;
  v27 = v7;
  v28 = v4;
  v29 = v3;

  v10 = *&v2[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_audioMixModes];
  result = sub_1B3711890();
  v11 = result;
  v12 = 0;
  v30 = v10 & 0xFFFFFFFFFFFFFF8;
  v31 = v10 & 0xC000000000000001;
  while (1)
  {
    if (v11 == v12)
    {
      v12 = 0;
LABEL_19:
      v24 = v27;
      MEMORY[0x1B8C65800](v12, 0);
      v25 = sub_1B3C98258();
      [v26 scrollToItemAtIndexPath:v25 atScrollPosition:16 animated:0];

      return (*(v28 + 8))(v24, v29);
    }

    if (!v31)
    {
      break;
    }

    v13 = MEMORY[0x1B8C6A930](v12, v10);
LABEL_8:
    v14 = v13;
    v15 = [v13 renderingStyle];
    v16 = sub_1B37E0774();
    v17 = sub_1B3C9C5E8();
    v19 = v18;
    if (v17 == sub_1B3C9C5E8() && v19 == v20)
    {

      goto LABEL_19;
    }

    v22 = sub_1B3C9D6A8();

    if (v22)
    {
      goto LABEL_19;
    }

    if (__OFADD__(v12++, 1))
    {
      goto LABEL_22;
    }
  }

  if (v12 < *(v30 + 16))
  {
    v13 = *(v10 + 8 * v12 + 32);
    goto LABEL_8;
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

id sub_1B37E3624()
{
  v1 = [v0 layoutOrientation];
  if (v1 != 3)
  {
    if (v1 != 2)
    {
      if (v1 == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0, &unk_1B3CFA830);
        v2 = swift_allocObject();
        *(v2 + 16) = xmmword_1B3CFB680;
        v3 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixModeCollectionView];
        v4 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_slider];
        *(v2 + 32) = v3;
        *(v2 + 40) = v4;
        v5 = v3;
LABEL_11:
        v13 = v4;
        return v2;
      }

      return MEMORY[0x1E69E7CC0];
    }

    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0, &unk_1B3CFA830);
    v7 = OUTLINED_FUNCTION_17_2(v6);
    v2 = v7;
    *(v7 + 16) = xmmword_1B3CF9810;
    v8 = OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixModeCollectionView;
LABEL_10:
    v4 = *&v0[v8];
    *(v7 + 32) = v4;
    goto LABEL_11;
  }

  result = [v0 photoEditSpec];
  if (result)
  {
    v10 = result;
    v11 = [result currentLayoutStyle];

    if (v11 == 4)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0, &unk_1B3CFA830);
    v7 = OUTLINED_FUNCTION_17_2(v12);
    v2 = v7;
    *(v7 + 16) = xmmword_1B3CF9810;
    v8 = OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_slider;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

id sub_1B37E379C()
{
  v1 = [v0 layoutOrientation];
  if (v1 != 3)
  {
    if (v1 != 2)
    {
      if (v1 != 1)
      {
        return MEMORY[0x1E69E7CC0];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0, &unk_1B3CFA830);
      goto LABEL_8;
    }

    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0, &unk_1B3CFA830);
    v3 = OUTLINED_FUNCTION_17_2(v2);
    v4 = v3;
    *(v3 + 16) = xmmword_1B3CF9810;
    v5 = OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_slider;
    goto LABEL_11;
  }

  result = [v0 photoEditSpec];
  if (result)
  {
    v7 = result;
    v8 = [result currentLayoutStyle];

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0, &unk_1B3CFA830);
    if (v8 == 4)
    {
LABEL_8:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1B3CFB680;
      v10 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixModeCollectionView];
      v11 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_slider];
      *(v4 + 32) = v10;
      *(v4 + 40) = v11;
      v12 = v10;
LABEL_12:
      v13 = v11;
      return v4;
    }

    v3 = OUTLINED_FUNCTION_17_2(v9);
    v4 = v3;
    *(v3 + 16) = xmmword_1B3CF9810;
    v5 = OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixModeCollectionView;
LABEL_11:
    v11 = *&v0[v5];
    *(v3 + 32) = v11;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

id sub_1B37E3918(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  sub_1B3710718(0, &unk_1EB84F790, 0x1E69DD250);
  sub_1B3C9C778();
  OUTLINED_FUNCTION_22_6();

  return v4;
}

id sub_1B37E39C8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_toolTitleLabel;
  *&v4[v5] = sub_1B37E009C();
  v6 = OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixModeCollectionViewContainerView;
  *&v4[v6] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v7 = OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixModeCollectionView;
  *&v4[v7] = sub_1B37E0238();
  v8 = OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_gradientMask;
  v9 = [objc_allocWithZone(MEMORY[0x1E6993848]) init];
  [v9 setEdgeGradientStyleMask];
  *&v4[v8] = v9;
  v10 = OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixBiasLabel;
  *&v4[v10] = sub_1B37E03F8();
  v4[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixBiasLabelAlwaysVisible] = 0;
  v11 = OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_slider;
  *&v4[v11] = sub_1B37E05E4();
  *&v4[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_sliderSnappingController] = 0;
  v12 = OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_muteButton;
  sub_1B3710718(0, &qword_1EB8553E0, off_1E7B6E230);
  v13 = sub_1B3C9C5A8();
  v14 = PULocalizedString(v13);

  v15 = sub_1B3C9C5E8();
  v17 = v16;

  *&v4[v12] = sub_1B37E0694(0xD000000000000013, 0x80000001B3D18660, 0xD000000000000012, 0x80000001B3D18680, v15, v17, [objc_allocWithZone(PUPhotoEditViewControllerSpec) init]);
  v18 = OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_audioMixModes;
  v19 = [objc_opt_self() audioMixModes];
  sub_1B3710718(0, &qword_1EB8553E8, 0x1E69C4318);
  v20 = sub_1B3C9C788();

  *&v4[v18] = v20;
  v21 = OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_dialogMixBiasCache;
  type metadata accessor for PICinematicAudioRenderingStyle(0);
  v23 = v22;
  OUTLINED_FUNCTION_6_20();
  sub_1B37E5D58(v24, v25, &unk_1B3CF7D58);
  *&v4[v21] = sub_1B3C9C4D8();
  v4[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_isPerformingLiveInteractionWithSlider] = 0;
  if (a2)
  {
    sub_1B3C9C5A8();
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    v23 = 0;
  }

  v32.receiver = v4;
  v32.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v32, sel_initWithNibName_bundle_, v23, a3, a1);

  return v26;
}

id sub_1B37E3D04(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_toolTitleLabel;
  *&v2[v3] = sub_1B37E009C();
  v4 = OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixModeCollectionViewContainerView;
  *&v2[v4] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v5 = OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixModeCollectionView;
  *&v2[v5] = sub_1B37E0238();
  v6 = OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_gradientMask;
  v7 = [objc_allocWithZone(MEMORY[0x1E6993848]) init];
  [v7 setEdgeGradientStyleMask];
  *&v2[v6] = v7;
  v8 = OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixBiasLabel;
  *&v2[v8] = sub_1B37E03F8();
  v2[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixBiasLabelAlwaysVisible] = 0;
  v9 = OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_slider;
  *&v2[v9] = sub_1B37E05E4();
  *&v2[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_sliderSnappingController] = 0;
  v10 = OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_muteButton;
  sub_1B3710718(0, &qword_1EB8553E0, off_1E7B6E230);
  v11 = sub_1B3C9C5A8();
  v12 = PULocalizedString(v11);

  v13 = sub_1B3C9C5E8();
  v15 = v14;

  *&v2[v10] = sub_1B37E0694(0xD000000000000013, 0x80000001B3D18660, 0xD000000000000012, 0x80000001B3D18680, v13, v15, [objc_allocWithZone(PUPhotoEditViewControllerSpec) init]);
  v16 = OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_audioMixModes;
  v17 = [objc_opt_self() audioMixModes];
  sub_1B3710718(0, &qword_1EB8553E8, 0x1E69C4318);
  v18 = sub_1B3C9C788();

  *&v2[v16] = v18;
  v19 = OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_dialogMixBiasCache;
  type metadata accessor for PICinematicAudioRenderingStyle(0);
  OUTLINED_FUNCTION_6_20();
  sub_1B37E5D58(v20, v21, &unk_1B3CF7D58);
  *&v2[v19] = sub_1B3C9C4D8();
  v2[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_isPerformingLiveInteractionWithSlider] = 0;
  v26.receiver = v2;
  v26.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v26, sel_initWithCoder_, a1);

  if (v22)
  {
  }

  return v22;
}

uint64_t sub_1B37E40DC(void *a1, uint64_t a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  v6 = sub_1B3C9C5A8();
  v7 = sub_1B3C98258();
  v8 = [a1 dequeueReusableCellWithReuseIdentifier:v6 forIndexPath:v7];

  type metadata accessor for PUAudioMixModeCollectionViewCell();
  v9 = swift_dynamicCastClassUnconditional();
  v10 = *(v3 + OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_audioMixModes);
  sub_1B3C98278();
  OUTLINED_FUNCTION_9_13();
  if (v6)
  {
    v11 = MEMORY[0x1B8C6A930](a2, v10);
  }

  else
  {
    v11 = *(v10 + 8 * a2 + 32);
  }

  v12 = v11;
  v13 = [v11 localizedTitle];

  sub_1B3C9C5E8();
  sub_1B37DF8E8();

  return v9;
}

uint64_t sub_1B37E4320()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_audioMixModes);
  if (v1 >> 62)
  {
    return sub_1B3C9D2C8();
  }

  else
  {
    return *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

double sub_1B37E4374(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_audioMixModes);
  sub_1B3C98278();
  OUTLINED_FUNCTION_9_13();
  if (v4)
  {
    v8 = MEMORY[0x1B8C6A930](a3, v6);
  }

  else
  {
    v8 = *(v6 + 8 * a3 + 32);
  }

  v9 = v8;
  type metadata accessor for PUAudioMixModeCollectionViewCell();
  v10 = [v9 localizedTitle];

  v11 = sub_1B3C9C5E8();
  v13 = v12;

  sub_1B37DFD00(v11, v13);
  v15 = v14;

  [a1 frame];
  Width = CGRectGetWidth(v18);
  if (Width < v15)
  {
    v15 = Width;
  }

  [a1 frame];
  CGRectGetHeight(v19);
  return v15;
}

id sub_1B37E45AC(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1B3C98258();
  [a1 scrollToItemAtIndexPath:v6 atScrollPosition:16 animated:1];

  v7 = *&v3[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_audioMixModes];
  sub_1B3C98278();
  OUTLINED_FUNCTION_9_13();
  if (v6)
  {
    v8 = MEMORY[0x1B8C6A930](a2, v7);
  }

  else
  {
    v8 = *(v7 + 8 * a2 + 32);
  }

  v9 = v8;
  v10 = [v8 renderingStyle];
  v11 = sub_1B37E0774();
  v12 = sub_1B3C9C5E8();
  v14 = v13;
  if (v12 == sub_1B3C9C5E8() && v14 == v15)
  {

    goto LABEL_14;
  }

  v17 = sub_1B3C9D6A8();

  if (v17)
  {
LABEL_14:

    v25 = 0;
    v26 = 0;
    return sub_1B36F9DA0(v25, v26);
  }

  v18 = [v9 renderingStyle];
  v19 = sub_1B3C9C5E8();
  v21 = v20;
  if (v19 == sub_1B3C9C5E8() && v21 == v22)
  {
    v24 = 1;
  }

  else
  {
    v24 = sub_1B3C9D6A8();
  }

  [v3 willModifyAdjustment];
  v27 = &selRef_componentsSeparatedByCharactersInSet_;
  v28 = [v3 compositionController];
  isEscapingClosureAtFileLocation = &selRef_refreshThumbnail;
  if (v28)
  {
    v30 = v28;
    [v28 removeAdjustmentWithKey_];
  }

  if ((v24 & 1) == 0)
  {
LABEL_21:
    v33 = [v3 compositionController];
    if (!v33)
    {
LABEL_26:
      v25 = 0;
      v26 = 0;
      goto LABEL_27;
    }

    v34 = v33;
    v35 = *MEMORY[0x1E69BDFB0];
    v26 = swift_allocObject();
    *(v26 + 16) = v3;
    *(v26 + 24) = v9;
    *(v26 + 32) = v24 & 1;
    v36 = swift_allocObject();
    v25 = sub_1B37E5D3C;
    *(v36 + 16) = sub_1B37E5D3C;
    *(v36 + 24) = v26;
    v57 = sub_1B37E5DE0;
    v58 = v36;
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_5_20();
    v55 = v37;
    v56 = &block_descriptor_39;
    v27 = _Block_copy(&v53);
    v38 = v35;
    v39 = v3;
    v40 = v9;

    [v34 modifyAdjustmentWithKey:v38 modificationBlock:v27];

    _Block_release(v27);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
LABEL_27:
      OUTLINED_FUNCTION_13_0();
      v43 = sub_1B3C9C5A8();
      v44 = PULocalizedString(v43);

      v45 = sub_1B3C9C5E8();
      v47 = v46;

      v53 = v45;
      v54 = v47;
      MEMORY[0x1B8C69C10](32, 0xE100000000000000);
      v48 = [v9 localizedTitle];
      v49 = sub_1B3C9C5E8();
      v51 = v50;

      MEMORY[0x1B8C69C10](v49, v51);

      v52 = sub_1B383C9F0(v53, v54, v3);

      return sub_1B36F9DA0(v25, v26);
    }

    __break(1u);
LABEL_24:
    v41 = [v3 v27[4]];
    if (v41)
    {
      v42 = v41;
      [v41 *(isEscapingClosureAtFileLocation + 648)];
    }

    goto LABEL_26;
  }

  result = [v3 delegate];
  if (result)
  {
    v32 = [result isPortraitVideo];
    swift_unknownObjectRelease();
    if (!v32)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  __break(1u);
  return result;
}

id sub_1B37E4A4C(uint64_t a1, char *a2, void *a3, char a4)
{
  objc_opt_self();
  v7 = swift_dynamicCastObjCClassUnconditional();
  v8 = [a3 renderingStyle];
  v9 = OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_dialogMixBiasCache;
  swift_beginAccess();
  v10 = sub_1B3898F60(v8, *&a2[v9]);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
    swift_endAccess();
    [v7 setDialogMixBias_];
    if ((a4 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  swift_endAccess();
  if (qword_1EB850068 != -1)
  {
    swift_once();
  }

  [v7 setDialogMixBias_];
  v13 = [a3 renderingStyle];
  [v7 dialogMixBias];
  v15 = v14;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *&a2[v9];
  sub_1B371FF20(v13, isUniquelyReferenced_nonNull_native, v15);
  *&a2[v9] = v21;

  swift_endAccess();
  if (a4)
  {
LABEL_7:
    v17 = [v7 adjustment];
    [v17 reset];
  }

LABEL_8:
  v18 = [a3 renderingStyle];
  [v7 setRenderingStyle_];

  result = [a2 delegate];
  if (result)
  {
    v20 = [result cinematicAudioRenderingVersion];
    swift_unknownObjectRelease();
    [v7 setRenderingVersion_];
    return [v7 setEnabled_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1B37E4DD4(id a1)
{
  if (qword_1EB850068 != -1)
  {
    swift_once();
  }

  [a1 xOffsetForValue_];
  v4 = [objc_allocWithZone(MEMORY[0x1E69C3C28]) initWithSnappingTarget_];
  v5 = OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_sliderSnappingController;
  v6 = *&v1[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_sliderSnappingController];
  *&v1[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_sliderSnappingController] = v4;

  v7 = *&v1[v5];
  if (v7)
  {
    [v7 setRetentionOffsetThreshold_];
    v8 = *&v1[v5];
    if (v8)
    {
      [v8 setAttractionOffsetThreshold_];
      v9 = *&v1[v5];
      if (v9)
      {
        [v9 setAttractionVelocityThreshold_];
        v10 = *&v1[v5];
        if (v10)
        {
          [v10 setAccumulateOffsetWhileSnapped_];
        }
      }
    }
  }

  [v1 setActivelyAdjusting_];
  sub_1B37E0F60(1);
  [v1 willModifyAdjustment];
  result = *&v1[v5];
  if (result)
  {

    return [result interactionBegan];
  }

  return result;
}

id sub_1B37E4F9C(double a1, uint64_t a2, uint64_t a3)
{
  result = *(v3 + OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_sliderSnappingController);
  if (result)
  {
    return [result updateOffset:a3 withVelocity:0 shouldSnap:0 shouldBreak:-a1];
  }

  return result;
}

void sub_1B37E5044(void *a1)
{
  v3 = sub_1B37E0774();
  v4 = sub_1B3C9C5E8();
  v6 = v5;
  if (v4 == sub_1B3C9C5E8() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_1B3C9D6A8();

    if ((v9 & 1) == 0)
    {
      v10 = [v1 compositionController];
      if (v10)
      {
        v11 = v10;
        [v10 removeAdjustmentWithKey_];
      }

      [a1 value];
      v13 = v12;
      v14 = [v1 compositionController];
      if (v14)
      {
        v15 = v14;
        v16 = *MEMORY[0x1E69BDFB0];
        OUTLINED_FUNCTION_20();
        v17 = swift_allocObject();
        *(v17 + 16) = v13;
        v18 = swift_allocObject();
        *(v18 + 16) = sub_1B37E5D34;
        *(v18 + 24) = v17;
        v22[4] = sub_1B37DEE38;
        v22[5] = v18;
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_5_20();
        v22[2] = v19;
        v22[3] = &block_descriptor_29;
        v20 = _Block_copy(v22);
        v21 = v16;

        [v15 modifyAdjustmentWithKey:v21 modificationBlock:v20];

        _Block_release(v20);
        LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

        if (v15)
        {
          __break(1u);
        }
      }
    }
  }
}

id sub_1B37E52A4(uint64_t a1, double a2)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClassUnconditional();
  [v3 setDialogMixBias_];

  return [v3 setEnabled_];
}

id sub_1B37E53F8()
{
  [v0 setActivelyAdjusting_];
  sub_1B37E0F60(0);
  OUTLINED_FUNCTION_13_0();
  v1 = sub_1B3C9C5A8();
  v2 = PULocalizedString(v1);

  v3 = sub_1B3C9C5E8();
  v5 = v4;

  result = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_sliderSnappingController];
  if (result)
  {

    return [result interactionEnded];
  }

  return result;
}

id sub_1B37E5528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13.receiver = v4;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, sel_setupWithAsset_compositionController_editSource_valuesCalculator_, a1, a2, a3, a4);
  result = [v4 view];
  if (result)
  {
    v10 = result;
    [result setUserInteractionEnabled_];

    sub_1B37E13C8(v11, v12);
    sub_1B37E16FC();
    sub_1B37E1994();
    return [*&v4[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_muteButton] setSelected_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1B37E56BC(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = ObjectType;
  if (a1)
  {
    v5 = sub_1B3C9C968();
    v14.receiver = v1;
    v14.super_class = v4;
    objc_msgSendSuper2(&v14, sel_compositionControllerDidChangeForAdjustments_, v5);

    v6 = sub_1B3C9C5E8();
    LOBYTE(v5) = sub_1B373F33C(v6, v7, a1);

    if (v5)
    {
      sub_1B37E13C8(v8, v9);
      sub_1B37E16FC();
      sub_1B37E1994();
    }

    v10 = sub_1B3C9C5E8();
    v12 = sub_1B373F33C(v10, v11, a1);

    if (v12)
    {
      return [*&v1[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_muteButton] setSelected_];
    }
  }

  else
  {
    v14.receiver = v1;
    v14.super_class = ObjectType;
    result = objc_msgSendSuper2(&v14, sel_compositionControllerDidChangeForAdjustments_, 0);
    __break(1u);
  }

  return result;
}

uint64_t sub_1B37E58D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0, &unk_1B3CFA830);
  v2 = OUTLINED_FUNCTION_17_2(v1);
  *(v2 + 16) = xmmword_1B3CF9810;
  v3 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_muteButton);
  *(v2 + 32) = v3;
  v4 = v3;
  return v2;
}

void *sub_1B37E5964()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_toolTitleLabel);
  v2 = v1;
  return v1;
}

uint64_t sub_1B37E59B4()
{
  OUTLINED_FUNCTION_13_0();
  v0 = sub_1B3C9C5A8();
  v1 = PULocalizedString(v0);

  v2 = sub_1B3C9C5E8();
  return v2;
}

id sub_1B37E5A7C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  a3(a1, a2);
  sub_1B3C9C5A8();
  OUTLINED_FUNCTION_22_6();

  return v3;
}

id sub_1B37E5AE0(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  if (v7)
  {
    sub_1B3C9C5A8();
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_1B37E5B54()
{
  OUTLINED_FUNCTION_13_0();
  v0 = sub_1B3C9C5A8();
  v1 = PELocalizedString();

  v2 = sub_1B3C9C5E8();
  return v2;
}

unint64_t sub_1B37E5BC4()
{
  result = qword_1EB8553A8;
  if (!qword_1EB8553A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8553A8);
  }

  return result;
}

unint64_t sub_1B37E5C18()
{
  result = qword_1EB8553B0;
  if (!qword_1EB8553B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8553B0);
  }

  return result;
}

unint64_t sub_1B37E5C6C()
{
  result = qword_1EB8553B8;
  if (!qword_1EB8553B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8553A0, &qword_1B3D04020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8553B8);
  }

  return result;
}

uint64_t sub_1B37E5D58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_9_13()
{

  return sub_1B37ED0BC();
}

id OUTLINED_FUNCTION_10_16()
{

  return [v0 (v1 + 3192)];
}

id OUTLINED_FUNCTION_12_14()
{

  return [v0 (v1 + 2808)];
}

void OUTLINED_FUNCTION_14_16()
{
}

uint64_t OUTLINED_FUNCTION_15_16()
{

  return sub_1B3C9C9F8();
}

void OUTLINED_FUNCTION_19_12()
{
  *(v0 - 224) = 0x3FF0000000000000;
  *(v0 - 216) = 0;
  *(v0 - 208) = 0;
  *(v0 - 200) = 0x3FF0000000000000;
  *(v0 - 192) = 0;
  *(v0 - 184) = 0;
}

uint64_t OUTLINED_FUNCTION_20_12()
{

  return sub_1B3C9C9D8();
}

id OUTLINED_FUNCTION_21_11(void *a1)
{

  return [a1 (v1 + 3192)];
}

uint64_t OUTLINED_FUNCTION_22_6()
{
}

unint64_t sub_1B37E5F18()
{
  result = qword_1EB8554E0;
  if (!qword_1EB8554E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8554E0);
  }

  return result;
}

unint64_t sub_1B37E5F70()
{
  result = qword_1EB8554E8;
  if (!qword_1EB8554E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8554E8);
  }

  return result;
}

uint64_t sub_1B37E5FE0()
{
  v0 = sub_1B3C97F38();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B3C98188();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1B3C9C598();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1B3C97F48();
  __swift_allocate_value_buffer(v6, qword_1EB878E00);
  __swift_project_value_buffer(v6, qword_1EB878E00);
  sub_1B3C9C538();
  sub_1B3C98178();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1B3C97F58();
}

uint64_t sub_1B37E61CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855508, &qword_1B3D04178);
  OUTLINED_FUNCTION_8_0(v0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855510, &qword_1B3D04180);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v2);
  sub_1B37E73A0();
  sub_1B3C97CA8();
  sub_1B3C97C98();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855518, &qword_1B3D041B0);
  sub_1B3C97C88();

  sub_1B3C97C98();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB855520, &qword_1B3D041E0);
  sub_1B3C97C88();

  sub_1B3C97C98();
  sub_1B3C97CB8();
  OUTLINED_FUNCTION_18_10();
  return sub_1B3C97C78();
}

uint64_t sub_1B37E63B0()
{
  OUTLINED_FUNCTION_0_0();
  v0[6] = v1;
  v0[7] = v2;
  v0[5] = v3;
  sub_1B3C9C888();
  v0[8] = sub_1B3C9C878();
  v5 = sub_1B3C9C848();
  v0[9] = v5;
  v0[10] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1B37E6448, v5, v4);
}

uint64_t sub_1B37E6448(uint64_t a1)
{
  v2 = v1[6];
  v3 = v1[7];
  v1[2] = v2;
  v1[3] = v3;
  sub_1B3C97B28();
  v4 = *(v1[4] + 16);

  v5 = swift_task_alloc();
  v1[11] = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  v6 = swift_task_alloc();
  v1[12] = v6;
  sub_1B37E73A0();
  *v6 = v1;
  v6[1] = sub_1B37E6574;
  v7 = v1[5];

  return MEMORY[0x1EEE2CA70](v7, 0, 0, 0, 0, v4, 0, &unk_1B3D04170);
}

uint64_t sub_1B37E6574()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_4_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  v3[13] = v0;

  if (v0)
  {
    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_1B37E66D4;
  }

  else
  {

    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_1B37E6678;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1B37E6678()
{
  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_1B37E66D4()
{
  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_1B37E673C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  sub_1B3C9C888();
  v3[6] = sub_1B3C9C878();
  v5 = sub_1B3C9C848();
  v3[7] = v5;
  v3[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1B37E67D8, v5, v4);
}

uint64_t sub_1B37E67D8(uint64_t a1)
{
  sub_1B3C97B28();
  v1[9] = v1[2];
  sub_1B3C97B28();
  v2 = swift_task_alloc();
  v1[10] = v2;
  *v2 = v1;
  v2[1] = sub_1B37B2BF0;

  return sub_1B37E6898();
}

uint64_t sub_1B37E6898()
{
  OUTLINED_FUNCTION_0_0();
  *(v0 + 96) = v1;
  *(v0 + 16) = v2;
  v3 = sub_1B3C9A558();
  *(v0 + 24) = v3;
  *(v0 + 32) = *(v3 - 8);
  *(v0 + 40) = swift_task_alloc();
  sub_1B3C9C888();
  *(v0 + 48) = sub_1B3C9C878();
  v5 = sub_1B3C9C848();
  *(v0 + 56) = v5;
  *(v0 + 64) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1B37E698C, v5, v4);
}

uint64_t sub_1B37E698C()
{
  v21 = v0;
  v1 = MEMORY[0x1B8C66290](*(v0 + 16));
  v3 = v2;
  sub_1B3C987F8();

  v4 = sub_1B3C9A538();
  v5 = sub_1B3C9CAE8();

  v6 = os_log_type_enabled(v4, v5);
  v8 = *(v0 + 32);
  v7 = *(v0 + 40);
  v9 = *(v0 + 24);
  if (v6)
  {
    v19 = *(v0 + 40);
    v10 = v1;
    v11 = *(v0 + 96);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 67109378;
    *(v12 + 4) = v11;
    *(v12 + 8) = 2082;
    v14 = sub_1B3749364(v10, v3, &v20);

    *(v12 + 10) = v14;
    _os_log_impl(&dword_1B36F3000, v4, v5, "Parameters: { clockwise: %{BOOL}d, assets: %{public}s }", v12, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x1B8C6EC70](v13, -1, -1);
    MEMORY[0x1B8C6EC70](v12, -1, -1);

    (*(v8 + 8))(v19, v9);
  }

  else
  {

    (*(v8 + 8))(v7, v9);
  }

  v15 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0, &unk_1B3CFA830);
  v16 = swift_allocObject();
  *(v0 + 72) = v16;
  *(v16 + 16) = xmmword_1B3CF9810;
  *(v16 + 32) = [objc_allocWithZone(MEMORY[0x1E69C4228]) initWithClockwise_];
  type metadata accessor for PXEditAppDependencyManager();
  v17 = swift_task_alloc();
  *(v0 + 80) = v17;
  *v17 = v0;
  v17[1] = sub_1B37B3108;

  return sub_1B37BDFEC();
}

uint64_t sub_1B37E6BE8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F0, &unk_1B3CF9C60);
  OUTLINED_FUNCTION_8_0(v0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v1);
  v49 = v42 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851468, &unk_1B3D0AE90);
  OUTLINED_FUNCTION_8_0(v3);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v4);
  v48 = v42 - v5;
  v6 = sub_1B3C97CC8();
  v7 = *(v6 - 8);
  v52 = v6;
  v53 = v7;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v51 = v9 - v8;
  v10 = sub_1B3C97C18();
  v11 = OUTLINED_FUNCTION_8_0(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v47 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F8, &unk_1B3CF9A80);
  OUTLINED_FUNCTION_8_0(v14);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v15);
  v50 = v42 - v16;
  v17 = sub_1B3C97F38();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8();
  v19 = sub_1B3C98188();
  v20 = OUTLINED_FUNCTION_8_0(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_8();
  v21 = sub_1B3C9C598();
  v22 = OUTLINED_FUNCTION_8_0(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_8();
  v25 = v24 - v23;
  v26 = sub_1B3C97F48();
  v44 = v26;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_8();
  v42[1] = v28 - v27;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852A28, &unk_1B3CFCB80);
  OUTLINED_FUNCTION_15_13();
  sub_1B3C9C538();
  sub_1B3C98178();
  v29 = *(v18 + 104);
  v30 = OUTLINED_FUNCTION_9_14();
  v42[3] = v17;
  v29(v30);
  v42[2] = v18 + 104;
  OUTLINED_FUNCTION_18_10();
  v32 = v31;
  OUTLINED_FUNCTION_0_26(v25, v31);
  OUTLINED_FUNCTION_15_13();
  sub_1B3C9C538();
  sub_1B3C98178();
  v33 = OUTLINED_FUNCTION_9_14();
  v29(v33);
  v34 = v50;
  OUTLINED_FUNCTION_0_26(v25, v32);
  __swift_storeEnumTagSinglePayload(v34, 0, 1, v26);
  v55 = 0;
  sub_1B3C97C08();
  v45 = *MEMORY[0x1E695A500];
  v35 = *(v53 + 104);
  v53 += 104;
  v46 = v35;
  v35(v51);
  sub_1B370ED54(&qword_1EB852A30, &qword_1EB852A38, &qword_1B3D0BBF0, MEMORY[0x1E69E6340]);
  sub_1B374FC40();
  v47 = sub_1B3C97BD8();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851470, &qword_1B3D0BDB0);
  OUTLINED_FUNCTION_15_13();
  sub_1B3C9C538();
  sub_1B3C98178();
  v36 = OUTLINED_FUNCTION_9_14();
  v29(v36);
  OUTLINED_FUNCTION_0_26(v25, 0x6E65746E49707041);
  OUTLINED_FUNCTION_15_13();
  sub_1B3C9C538();
  sub_1B3C98178();
  v37 = OUTLINED_FUNCTION_9_14();
  v29(v37);
  v38 = v50;
  OUTLINED_FUNCTION_0_26(v25, 0x6E65746E49707041);
  __swift_storeEnumTagSinglePayload(v38, 0, 1, v44);
  v54[0] = 0;
  v39 = sub_1B3C9C828();
  __swift_storeEnumTagSinglePayload(v48, 1, 1, v39);
  v40 = sub_1B3C97AE8();
  __swift_storeEnumTagSinglePayload(v49, 1, 1, v40);
  v46(v51, v45, v52);
  sub_1B3C97B98();
  return v47;
}

uint64_t sub_1B37E71D4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB850070 != -1)
  {
    swift_once();
  }

  v2 = sub_1B3C97F48();
  v3 = __swift_project_value_buffer(v2, qword_1EB878E00);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1B37E7280()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B3714CE0;

  return sub_1B37E63B0();
}

uint64_t sub_1B37E732C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B37E6BE8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B37E7354(uint64_t a1, __n128 a2)
{
  v3 = sub_1B37E73A0();

  return MEMORY[0x1EEDB2D90](a1, v3);
}

unint64_t sub_1B37E73A0()
{
  result = qword_1EB855500;
  if (!qword_1EB855500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB855500);
  }

  return result;
}

uint64_t sub_1B37E73F4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B3714CE0;

  return sub_1B37E673C(a1, v5, v4);
}

void sub_1B37E74AC(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_15_17(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1B37EBB7C(v4, 1, sub_1B370EE80);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_24_8();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1B37E7564(unint64_t a1)
{
  v3 = sub_1B370EA28(a1);
  v4 = sub_1B370EA28(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1B37EBBF4(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1B37EC320(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1B37E7628(unint64_t a1, void (*a2)(uint64_t, void, uint64_t))
{
  v5 = sub_1B370EA28(a1);
  v6 = sub_1B370EA28(*v2);
  v7 = __OFADD__(v6, v5);
  result = v6 + v5;
  if (v7)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1B37EBBF4(result, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v12 < 1)
  {
LABEL_6:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1B37E76F4(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_15_17(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1B37EBB7C(v4, 1, sub_1B370FF00);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_24_8();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1B37E77C4(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_15_17(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1B37EBB7C(v4, 1, MEMORY[0x1E69E6AB8]);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_24_8();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855550, &qword_1B3D0A9F0);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

unint64_t sub_1B37E78AC(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

void sub_1B37E7918(char *a1)
{
  v89 = a1;
  v86 = sub_1B3C9A488();
  v88 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v85 = &v77 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v93 = MEMORY[0x1E69E7CC0];
  v5 = &qword_1EB850000;
  v6 = &OBJC_IVAR____TtCE15PhotosUIPrivateCSo43PUOneUpTitlePalettePlaygroundViewControllerP33_E18EC7BCF927120C42B36F5AF22A513826TitleSubtitleConfiguration_symbol;
  if (!v4)
  {
    goto LABEL_6;
  }

  LOBYTE(v7) = sub_1B3C9CAE8();
  if (qword_1EB8500A0 != -1)
  {
    goto LABEL_59;
  }

  while (1)
  {
    v8 = v6[440];
    if (os_log_type_enabled(v8, v7))
    {
      v9 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v92 = v5;
      *v9 = 136315138;
      v10 = MEMORY[0x1B8C69D10](v4, MEMORY[0x1E69E6158]);
      v12 = sub_1B3749364(v10, v11, &v92);

      *(v9 + 4) = v12;
      _os_log_impl(&dword_1B36F3000, v8, v7, "Found local identifier in content configuration. These will not sync with ICPL. %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v5);
      OUTLINED_FUNCTION_3_5();
      OUTLINED_FUNCTION_3_5();
    }

    sub_1B37E74AC(v4);
LABEL_6:
    if (!v3)
    {
      break;
    }

    isa = v3[2].isa;
    v14 = MEMORY[0x1E69E7CC0];
    if (isa)
    {
      v15 = v3 + 5;
      do
      {
        v16 = v15[-1].isa;
        v17 = v15->isa;
        v18 = v16 == 0x657469726F766166 && v17 == 0xE900000000000073;
        if (v18 || (sub_1B3C9D6A8() & 1) != 0)
        {
          v19 = [v89 librarySpecificFetchOptions];
          [v19 setWantsIncrementalChangeDetails_];
          v5 = [objc_opt_self() fetchAssetCollectionsWithType:2 subtype:203 options:v19];
          v20 = [v5 firstObject];

          if (v20)
          {
            v21 = [v20 localIdentifier];

            v22 = sub_1B3C9C5E8();
            v24 = v23;

            v5 = v93;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_36_6();
              sub_1B370EE80();
              v5 = v30;
            }

            v26 = *(v5 + 16);
            v25 = *(v5 + 24);
            if (v26 >= v25 >> 1)
            {
              OUTLINED_FUNCTION_20_0(v25);
              sub_1B370EE80();
              v5 = v31;
            }

            *(v5 + 16) = v26 + 1;
            v27 = v5 + 16 * v26;
            *(v27 + 32) = v22;
            *(v27 + 40) = v24;
            v93 = v5;
          }

          else
          {
          }
        }

        else
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_36_6();
            sub_1B370EE80();
            v14 = v32;
          }

          v5 = *(v14 + 16);
          v28 = *(v14 + 24);
          if (v5 >= v28 >> 1)
          {
            OUTLINED_FUNCTION_20_0(v28);
            sub_1B370EE80();
            v14 = v33;
          }

          *(v14 + 16) = v5 + 1;
          v29 = v14 + 16 * v5;
          *(v29 + 32) = v16;
          *(v29 + 40) = v17;
        }

        v15 += 2;
        isa = (isa - 1);
      }

      while (isa);
    }

    if (!*(v14 + 16))
    {

      break;
    }

    sub_1B3C9CD08();
    if (qword_1EB8500A0 != -1)
    {
      OUTLINED_FUNCTION_6_1(&qword_1EB8500A0);
    }

    v3 = qword_1EB855DC0;
    v34 = v85;
    v35 = sub_1B3C9A478();
    OUTLINED_FUNCTION_43_3(v35, &dword_1B36F3000, v36, "LocalIdentifierMapping");
    v37 = *(v88 + 8);
    v88 += 8;
    v78 = v37;
    v37(v34, v86);
    v38 = *(v14 + 16);
    v87 = v3;
    if (v38)
    {
      v92 = MEMORY[0x1E69E7CC0];
      sub_1B3C9D428();
      v39 = v14 + 40;
      do
      {
        v40 = *(v39 - 8);
        v41 = objc_allocWithZone(MEMORY[0x1E6978738]);
        OUTLINED_FUNCTION_30_0();

        sub_1B3C9C5A8();
        OUTLINED_FUNCTION_44_3();
        v5 = [v5 initWithStringValue_];

        sub_1B3C9D408();
        sub_1B3C9D438();
        sub_1B3C9D448();
        sub_1B3C9D418();
        v39 += 16;
        --v38;
      }

      while (v38);

      v3 = v87;
    }

    else
    {
    }

    v7 = sub_1B3C9CB08();

    v43 = 0;
    v45 = v7 + 64;
    v44 = *(v7 + 8);
    v89 = v7;
    v46 = 1 << v7[32];
    v47 = -1;
    if (v46 < 64)
    {
      v47 = ~(-1 << v46);
    }

    v4 = v47 & v44;
    v6 = ((v46 + 63) >> 6);
    *&v42 = 138412546;
    v79 = v42;
    while (v4)
    {
LABEL_44:
      v49 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v50 = v49 | (v43 << 6);
      v51 = *(*(v89 + 6) + 8 * v50);
      v52 = *(v89 + 7) + 24 * v50;
      v54 = *v52;
      v53 = *(v52 + 8);
      if (*(v52 + 16))
      {
        sub_1B37ED090(v54, v53, 1);
        v7 = v51;
        v5 = sub_1B3C9CAD8();
        if (os_log_type_enabled(v3, v5))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v82 = v56;
          v84 = swift_slowAlloc();
          v92 = v84;
          *v55 = v79;
          *(v55 + 4) = v7;
          *v56 = v7;
          *(v55 + 12) = 2080;
          swift_getErrorValue();
          v80 = v90;
          v81 = v5;
          v5 = v91;
          v83 = v7;
          v3 = v87;
          v57 = sub_1B3C9D748();
          sub_1B3749364(v57, v58, &v92);
          OUTLINED_FUNCTION_30_0();

          *(v55 + 14) = v5;
          _os_log_impl(&dword_1B36F3000, v3, v81, "failed to get local identifier for cloud identifier %@ with error: %s", v55, 0x16u);
          sub_1B3732918(v82);
          OUTLINED_FUNCTION_3_5();
          LOBYTE(v7) = v84;
          __swift_destroy_boxed_opaque_existential_0Tm(v84);
          OUTLINED_FUNCTION_3_5();
          OUTLINED_FUNCTION_3_5();
        }

        else
        {
        }

        sub_1B37ED0A0(v54, v53, 1);
      }

      else
      {
        v7 = v93;
        v59 = OUTLINED_FUNCTION_37_2();
        sub_1B37ED090(v59, v60, v61);
        v62 = OUTLINED_FUNCTION_37_2();
        sub_1B37ED090(v62, v63, v64);
        v65 = v51;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_36_6();
          sub_1B370EE80();
          v7 = v72;
        }

        v67 = *(v7 + 2);
        v66 = *(v7 + 3);
        v5 = v67 + 1;
        if (v67 >= v66 >> 1)
        {
          OUTLINED_FUNCTION_20_0(v66);
          sub_1B370EE80();
          v7 = v73;
        }

        *(v7 + 2) = v5;
        v68 = &v7[16 * v67];
        *(v68 + 4) = v54;
        *(v68 + 5) = v53;
        v69 = OUTLINED_FUNCTION_37_2();
        sub_1B37ED0A0(v69, v70, v71);
        v93 = v7;
        v3 = v87;
      }
    }

    while (1)
    {
      v48 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v48 >= v6)
      {

        sub_1B3C9CCF8();
        v74 = v85;
        v75 = sub_1B3C9A478();
        OUTLINED_FUNCTION_43_3(v75, &dword_1B36F3000, v76, "LocalIdentifierMapping");
        v78(v74, v86);
        goto LABEL_55;
      }

      v4 = *&v45[8 * v48];
      ++v43;
      if (v4)
      {
        v43 = v48;
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_59:
    OUTLINED_FUNCTION_6_1(&qword_1EB8500A0);
  }

LABEL_55:
  if (!*(v93 + 2))
  {
  }

  OUTLINED_FUNCTION_27();
}

void sub_1B37E8118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_57_0();
  v4 = v3;
  sub_1B381284C(v5, v6);
  v7 = [objc_opt_self() standardUserDefaults];
  v8 = sub_1B3C9C5A8();

  v9 = [v7 stringForKey_];

  if (v9)
  {
    v10 = sub_1B3C9C5E8();
    v12 = v11;

    v13 = [v4 librarySpecificFetchOptions];
    [v13 setFetchLimit_];
    [v13 setWantsIncrementalChangeDetails_];
    v14 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851C50, &unk_1B3CFA840);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1B3CF6CE0;
    *(v15 + 32) = v10;
    *(v15 + 40) = v12;
    v16 = sub_1B3C9C778();

    v17 = [v14 fetchAssetsWithLocalIdentifiers:v16 options:v13];

    v18 = [v17 firstObject];
    v19 = sub_1B37EA410(v18, v4);

    if ((v19 & 1) == 0)
    {
    }
  }

  OUTLINED_FUNCTION_37_1();
}

uint64_t AmbientPhotoFrameContentConfiguration.fetchAssets(photoLibrary:keyAsset:countLimit:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 272) = a4;
  *(v5 + 120) = a2;
  *(v5 + 128) = a3;
  *(v5 + 112) = a1;
  v6 = sub_1B3C9A488();
  *(v5 + 136) = v6;
  *(v5 + 144) = *(v6 - 8);
  v7 = swift_task_alloc();
  v8 = *v4;
  *(v5 + 152) = v7;
  *(v5 + 160) = v8;
  *(v5 + 273) = *(v4 + 8);
  *(v5 + 168) = *(v4 + 1);
  *(v5 + 184) = v4[4];

  return MEMORY[0x1EEE6DFA0](sub_1B37E83F4, 0, 0);
}

uint64_t sub_1B37E8A34(uint64_t a1)
{
  *(*v2 + 240) = a1;

  if (v1)
  {

    v3 = sub_1B37E9624;
  }

  else
  {
    v3 = sub_1B37E8B50;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B37E90A8(uint64_t a1)
{
  *(*v1 + 264) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B37E91C8, 0, 0);
}

uint64_t sub_1B37E91C8()
{
  v7 = (v2 + 88);
  sub_1B37E7628(*(v2 + 264), sub_1B37EC614);
  v8 = *(v2 + 88);
  if (*(v2 + 120) && sub_1B3711890())
  {
    v9 = *(v2 + 112);
    v10 = *(v2 + 120);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB852360, &unk_1B3CFB670);
    v12 = OUTLINED_FUNCTION_51_0(v11);
    *(v12 + 16) = xmmword_1B3CF6CE0;
    *(v12 + 56) = sub_1B3710718(0, &qword_1EB84F770, 0x1E6978630);
    *(v12 + 32) = v10;
    sub_1B3C9C5E8();
    OUTLINED_FUNCTION_50_2();
    v3 = objc_allocWithZone(MEMORY[0x1E69788E0]);
    v4 = v9;
    v13 = v10;
    OUTLINED_FUNCTION_1_28();
    v7 = v3;
    sub_1B37EA828(v14, v15, v16, v17, v18, v19, v20, v21, &selRef_initWithObjects_photoLibrary_fetchType_fetchPropertySets_identifier_registerIfNeeded_);
    v22 = OUTLINED_FUNCTION_30();
    sub_1B37EBC98(v22, v8);
    if (sub_1B370EA28(v8) < 0)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v23 = sub_1B370EA28(v8);
    v0 = (v23 + 1);
    if (__OFADD__(v23, 1))
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v24 = v3;
    OUTLINED_FUNCTION_19_13();
    OUTLINED_FUNCTION_12_15();

    v8 = *(v2 + 88);
  }

  v71 = [objc_allocWithZone(MEMORY[0x1E695DFA0]) init];
  if (sub_1B3711890())
  {
    OUTLINED_FUNCTION_7_21();
    while (1)
    {
      if (v72)
      {
        MEMORY[0x1B8C6A930](v4, v8);
      }

      else
      {
        OUTLINED_FUNCTION_23_6();
        if (v33)
        {
          goto LABEL_48;
        }

        OUTLINED_FUNCTION_61_0(v25, v26, v27, v28, v29, v30, v31, v32, v67, v68);
      }

      OUTLINED_FUNCTION_49_2();
      if (v34)
      {
        break;
      }

      if ([v0 fetchedObjectIDs])
      {
        v35 = OUTLINED_FUNCTION_30();
        v36 = sub_1B3710718(v35, &unk_1EB855530, 0x1E695D630);
        v37 = OUTLINED_FUNCTION_34_5(v36);

        if (v37 >> 62)
        {
          v5 = OUTLINED_FUNCTION_32_3();
        }

        else
        {
          OUTLINED_FUNCTION_47_3();
        }

        if (v5)
        {
          v73 = MEMORY[0x1E69E7CC0];
          OUTLINED_FUNCTION_17_14();
          if (v5 < 0)
          {
            goto LABEL_47;
          }

          OUTLINED_FUNCTION_21_12();
          do
          {
            if (v8)
            {
              OUTLINED_FUNCTION_68_1();
            }

            else
            {
              v38 = OUTLINED_FUNCTION_60_1();
            }

            OUTLINED_FUNCTION_20_13(v38);
            OUTLINED_FUNCTION_31_4();
            OUTLINED_FUNCTION_9_15();
            if (v33)
            {
              OUTLINED_FUNCTION_11_14(v39);
              v7 = v73;
            }

            OUTLINED_FUNCTION_8_17();
          }

          while (!v40);

          v8 = v70;
        }

        else
        {

          v7 = MEMORY[0x1E69E7CC0];
        }

        OUTLINED_FUNCTION_67_1();
        v41 = OUTLINED_FUNCTION_44_3();
        OUTLINED_FUNCTION_66_1(v41, sel_addObjectsFromArray_, v42, v43, v44, v45, v46, v47, v67, v68, v69, v70, v71);
      }

      OUTLINED_FUNCTION_54_1();
      if (v40)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

LABEL_33:
  v48 = *(v2 + 272);

  v49 = [v71 array];
  v50 = sub_1B3C9C788();

  if (v48)
  {
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_65_1();
  OUTLINED_FUNCTION_10_17();
  if ((v3 & 1) == 0)
  {
    goto LABEL_35;
  }

  sub_1B3C9D6C8();
  OUTLINED_FUNCTION_35_5();
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_52_1();
  if (!v34)
  {
    OUTLINED_FUNCTION_46_4();
    if (v40)
    {
      swift_dynamicCastClass();
      OUTLINED_FUNCTION_30_0();
      swift_unknownObjectRelease();
      if (v50)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

    goto LABEL_52;
  }

LABEL_51:
  __break(1u);
LABEL_52:
  swift_unknownObjectRelease();
LABEL_35:
  OUTLINED_FUNCTION_16_14();
LABEL_42:
  swift_unknownObjectRelease();
LABEL_43:
  OUTLINED_FUNCTION_5_21();
  sub_1B3C9C5E8();
  OUTLINED_FUNCTION_53_2();
  v51 = objc_allocWithZone(MEMORY[0x1E69788E0]);
  v52 = v8;
  OUTLINED_FUNCTION_18_15();
  OUTLINED_FUNCTION_1_28();
  sub_1B37EA828(v53, v54, v55, v56, v57, v58, v59, v60, &selRef_initWithOids_photoLibrary_fetchType_fetchPropertySets_identifier_registerIfNeeded_);
  sub_1B3C9CCF8();
  v61 = OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_13_15(v61, &dword_1B36F3000, v62, "FetchPhotoFrameContentAssets");

  v63 = OUTLINED_FUNCTION_26_8();
  v6(v63);

  v64 = OUTLINED_FUNCTION_14_17();

  return v65(v64);
}

unint64_t sub_1B37E9AAC(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_1B37ECFD0(0, result, v3);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = sub_1B37E78AC(0, v5, a2);

      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B37E9B40()
{
  v0 = sub_1B3C98118();
  v30 = *(v0 - 8);
  v31 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1B3C981C8();
  v3 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1B3C97DF8();
  v27 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B3C981A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855660, &qword_1B3D04280);
  v8 = sub_1B3C981B8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B3CFC4D0;
  v13 = v12 + v11;
  v14 = *(v9 + 104);
  v14(v13, *MEMORY[0x1E6969A68], v8);
  v14(v13 + v10, *MEMORY[0x1E6969A78], v8);
  v14(v13 + 2 * v10, *MEMORY[0x1E6969A48], v8);
  v14(v13 + 3 * v10, *MEMORY[0x1E6969A58], v8);
  sub_1B3749F9C();
  sub_1B3C98108();
  sub_1B3C98198();

  (*(v30 + 8))(v2, v31);
  (*(v3 + 8))(v5, v28);
  v15 = sub_1B3C97DD8();
  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = v15;
  }

  v18 = sub_1B3C97DE8() << 8;
  if (v19)
  {
    v18 = 0;
  }

  v20 = v18 ^ v17;
  v21 = sub_1B3C97DC8();
  v23 = v22;
  (*(v27 + 8))(v7, v29);
  v24 = v21 << 16;
  if (v23)
  {
    v24 = 0;
  }

  result = v20 ^ v24;
  if ((v20 ^ v24) < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B37E9ED0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 48) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B37E9EF8, 0, 0);
}

void sub_1B37E9EF8()
{
  v57 = MEMORY[0x1E69E7CC0];
  v1 = [*(v0 + 24) librarySpecificFetchOptions];
  [v1 setWantsIncrementalChangeDetails_];
  v2 = objc_opt_self();
  v3 = sub_1B3C9C778();
  v4 = [v2 fetchAssetCollectionsWithLocalIdentifiers:v3 options:v1];

  v5 = [v4 fetchedObjects];
  if (v5)
  {
    sub_1B3710718(0, &qword_1EB84F1A0, 0x1E6978650);
    v6 = sub_1B3C9C788();
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v0 + 48);
  v55 = [*(v0 + 24) librarySpecificFetchOptions];
  [v55 setWantsIncrementalChangeDetails_];
  if ((v7 & 1) == 0)
  {
    [v55 setFetchLimit_];
  }

  if (!v6)
  {
    v46 = v55;
LABEL_39:

    v47 = OUTLINED_FUNCTION_14_17();

    v48(v47);
    return;
  }

  if (*(v0 + 48))
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = *(v0 + 32);
  }

  sub_1B3710718(0, &qword_1EB84F200, 0x1E69C3B18);
  v9 = [swift_getObjCClassFromMetadata() sharedInstance];
  v10 = [v9 curatedAssetsLimit];

  if (v10 >= v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = v10;
  }

  v12 = sub_1B3711890();
  v49 = v1;
  if (!v12)
  {
LABEL_38:

    v1 = v55;
    v46 = v49;
    goto LABEL_39;
  }

  v13 = v12;
  v54 = objc_opt_self();
  if (v13 < 1)
  {
    goto LABEL_43;
  }

  v14 = 0;
  v53 = v6 & 0xC000000000000001;
  v51 = v11;
  v52 = v6;
  v50 = v13;
  while (1)
  {
    v15 = v53 ? MEMORY[0x1B8C6A930](v14, v6) : *(v6 + 8 * v14 + 32);
    v16 = v15;
    v17 = *(v0 + 40);
    v18 = [v54 fetchAssetsInAssetCollection:v15 options:v55];
    v19 = [objc_allocWithZone(MEMORY[0x1E69C0838]) initWithSeed_];
    v20 = [v18 fetchedObjectIDs];
    if (v20)
    {
      break;
    }

LABEL_35:
    if (v13 == ++v14)
    {
      goto LABEL_38;
    }
  }

  v21 = v20;
  v56 = v16;
  sub_1B3710718(0, &unk_1EB855530, 0x1E695D630);
  v22 = sub_1B3C9C788();

  sub_1B370BA40(v22);
  OUTLINED_FUNCTION_30_0();

  v23 = sub_1B3C9C778();

  v24 = PFShuffledArrayWithRandomNumberGenerator();

  v25 = sub_1B3C9C788();
  if ((v11 & 0x8000000000000000) == 0)
  {
    v26 = *(v25 + 16);
    if (v26 >= v11)
    {
      v27 = v11;
    }

    else
    {
      v27 = *(v25 + 16);
    }

    if (v11)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    if (v26 == v28)
    {
    }

    else if (v28)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB852360, &unk_1B3CFB670);
      v29 = OUTLINED_FUNCTION_46_0();
      _swift_stdlib_malloc_size(v29);
      OUTLINED_FUNCTION_48_1();
      v29[2] = v28;
      v29[3] = v30;
      swift_arrayInitWithCopy();
    }

    v31 = v0;
    v32 = *(v0 + 24);
    sub_1B3C9C5E8();
    v33 = objc_allocWithZone(MEMORY[0x1E69788E0]);
    v34 = v32;
    OUTLINED_FUNCTION_1_28();
    sub_1B37EA828(v35, v36, v37, v38, v39, v40, v41, v42, &selRef_initWithOids_photoLibrary_fetchType_fetchPropertySets_identifier_registerIfNeeded_);
    v44 = v43;
    MEMORY[0x1B8C69CE0]();
    v45 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v45 >> 1)
    {
      OUTLINED_FUNCTION_20_0(v45);
      sub_1B3C9C7E8();
    }

    sub_1B3C9C808();

    v0 = v31;
    v11 = v51;
    v6 = v52;
    v13 = v50;
    goto LABEL_35;
  }

  __break(1u);
LABEL_43:
  __break(1u);
}

char *sub_1B37EA410(void *a1, char *a2)
{
  if (!a1)
  {
    goto LABEL_25;
  }

  if (*v2)
  {
    v3 = *(v2 + 8);
  }

  else
  {
    v3 = 1;
  }

  if (v3 != 1)
  {
    goto LABEL_11;
  }

  v5 = a1;
  sub_1B37E7918(a2);
  if (!v6)
  {
LABEL_24:

LABEL_25:
    v14 = 0;
    return (v14 & 1);
  }

  v7 = v6;
  v8 = [a2 librarySpecificFetchOptions];
  [v8 setWantsIncrementalChangeDetails_];
  if ([v5 isFavorite])
  {
    v9 = [objc_opt_self() fetchAssetCollectionsWithType:2 subtype:203 options:v8];
    v10 = [v9 firstObject];

    if (v10)
    {
      v11 = [v10 localIdentifier];

      sub_1B3C9C5E8();
      MEMORY[0x1EEE9AC00](v12);
      v13 = sub_1B3876E2C();

      if (v13)
      {

LABEL_11:
        v14 = 1;
        return (v14 & 1);
      }
    }
  }

  v15 = [objc_opt_self() fetchAssetCollectionsContainingAsset:v5 withType:1 options:v8];
  v16 = [v15 fetchedObjects];

  if (!v16)
  {

    goto LABEL_24;
  }

  v36 = v8;
  sub_1B3710718(0, &qword_1EB84F1A0, 0x1E6978650);
  v17 = sub_1B3C9C788();

  v18 = sub_1B370EA28(v17);
  if (!v18)
  {

    v22 = MEMORY[0x1E69E7CC0];
LABEL_28:
    v32 = sub_1B370B65C(v22);
    v33 = sub_1B37EC0B8(v7, v32);

    v14 = v33 ^ 1;
    return (v14 & 1);
  }

  v19 = v18;
  v34 = v7;
  v35 = v5;
  v37 = MEMORY[0x1E69E7CC0];
  result = sub_1B37EABC0(0, v18 & ~(v18 >> 63), 0);
  if ((v19 & 0x8000000000000000) == 0)
  {
    v21 = 0;
    v22 = v37;
    do
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x1B8C6A930](v21, v17);
      }

      else
      {
        v23 = *(v17 + 8 * v21 + 32);
      }

      v24 = v23;
      v25 = [v24 localIdentifier];
      v26 = sub_1B3C9C5E8();
      v28 = v27;

      v30 = *(v37 + 16);
      v29 = *(v37 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1B37EABC0((v29 > 1), v30 + 1, 1);
      }

      ++v21;
      *(v37 + 16) = v30 + 1;
      v31 = v37 + 16 * v30;
      *(v31 + 32) = v26;
      *(v31 + 40) = v28;
    }

    while (v19 != v21);

    v7 = v34;
    v5 = v35;
    goto LABEL_28;
  }

  __break(1u);
  return result;
}

void sub_1B37EA828(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, SEL *a9)
{
  v15 = sub_1B3C9C778();

  if (a4)
  {
    v16 = sub_1B3C9C5A8();
  }

  else
  {
    v16 = 0;
  }

  if (!a5)
  {
    v17 = 0;
    if (a7)
    {
      goto LABEL_6;
    }

LABEL_8:
    v18 = 0;
    goto LABEL_9;
  }

  v17 = sub_1B3C9C968();

  if (!a7)
  {
    goto LABEL_8;
  }

LABEL_6:
  v18 = sub_1B3C9C5A8();

LABEL_9:
  [v9 *a9];

  OUTLINED_FUNCTION_27();
}

unint64_t sub_1B37EA954(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

char *sub_1B37EA978(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_27(a3, result);
  }

  return result;
}

uint64_t sub_1B37EA9C8(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (result = (a4)(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_28_8();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_28_8();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1B37EAAA0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_27(a3, result);
  }

  return result;
}

char *sub_1B37EAAC0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_27(a3, result);
  }

  return result;
}

void sub_1B37EAAE0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB852360, &unk_1B3CFB670);
      v7 = OUTLINED_FUNCTION_46_0();
      _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_48_1();
      v7[2] = v5;
      v7[3] = v8;
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

char *sub_1B37EABA0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B37EAE20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B37EABC0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B37EAF2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B37EABE0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B37EB034(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B37EAC00(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B37EB16C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B37EAC80(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B37EB280(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B37EACA0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B37EB3B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B37EACC0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B37EB4B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B37EACE0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B37EB5B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B37EAD30(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B37EB780(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B37EAD80(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B37EB898(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B37EADA0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B37EB9A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B37EAE20(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB852360, &unk_1B3CFB670);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B37EAF2C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851C50, &unk_1B3CFA840);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B37EB034(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855610, &qword_1B3D04248);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB855618, &qword_1B3D04250);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B37EB16C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855638, &qword_1B3D04260);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[48 * v8] <= v12)
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 48 * v8);
  }

  return v10;
}

void *sub_1B37EB280(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB855600, &qword_1B3CF8178);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB850CA0, &qword_1B3CF8180);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B37EB3B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8555B0, &qword_1B3CF8168);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

char *sub_1B37EB4B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8555C8, &qword_1B3D04228);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[2 * v8] <= v12)
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_1B37EB5B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855640, &qword_1B3D04268);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

void sub_1B37EB6B0(char a1, uint64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  if (a3)
  {
    OUTLINED_FUNCTION_6_3();
    if (v9 != v10)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_3();
    }
  }

  else
  {
    v8 = a2;
  }

  v11 = *(a4 + 2);
  if (v8 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = OUTLINED_FUNCTION_46_0();
    v14 = _swift_stdlib_malloc_size(v13);
    OUTLINED_FUNCTION_42_3(v14);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (a1)
  {
    if (v13 != a4 || &v16[8 * v11] <= v15)
    {
      memmove(v15, v16, 8 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v11);
  }
}

char *sub_1B37EB780(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8555D8, &qword_1B3D04238);
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

char *sub_1B37EB898(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB850C78, &qword_1B3CF8160);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B37EB9A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855668, &qword_1B3D04288);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[2 * v8] <= v12)
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

void sub_1B37EBAA0(char a1, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  if (a3)
  {
    OUTLINED_FUNCTION_6_3();
    if (v9 != v10)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_3();
    }
  }

  else
  {
    v8 = a2;
  }

  v11 = *(a4 + 2);
  if (v8 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * v14 - 64;
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (a1)
  {
    if (v13 != a4 || &v16[v11] <= v15)
    {
      memmove(v15, v16, v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, v11);
  }
}

uint64_t sub_1B37EBB7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_1B37EBBF4(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1B3C9D2C8();
LABEL_9:
  result = sub_1B3C9D3C8();
  *v2 = result;
  return result;
}

uint64_t sub_1B37EBC98(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_1B3C9D2C8();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

void sub_1B37EBCF0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = a3;
  v6 = a2;
  v19 = a4;
  v11 = *v5;
  v7 = *v5 & 0xFFFFFFFFFFFFFF8;
  v8 = v7 + 32;
  v5 = (v7 + 32 + 8 * a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855648, &qword_1B3D04270);
  swift_arrayDestroy();
  v12 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v12)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    v13 = *(v7 + 16);
    goto LABEL_6;
  }

LABEL_25:
  v13 = sub_1B3C9D2C8();
LABEL_6:
  v14 = &v13[-v6];
  if (__OFSUB__(v13, v6))
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v15 = &v5[v4];
  v16 = (v8 + 8 * v6);
  if (v15 != v16 || &v16[8 * v14] <= v15)
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    v13 = sub_1B3C9D2C8();
  }

  else
  {
    v13 = *(v7 + 16);
  }

  if (__OFADD__(v13, v10))
  {
    goto LABEL_27;
  }

  *(v7 + 16) = &v13[v10];
LABEL_17:
  v13 = v19;
  if (v4 >= 1)
  {
    *v5 = v19;
    if (v4 == 1)
    {
      return;
    }

LABEL_28:
    v18 = v13;
    __break(1u);
    return;
  }
}

uint64_t sub_1B37EBE40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_1B3710718(0, &qword_1EB84FE50, 0x1E696ACD8);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    goto LABEL_6;
  }

LABEL_21:
  result = sub_1B3C9D2C8();
LABEL_6:
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || &v15[8 * v13] <= v14)
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1B3C9D2C8();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_23;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_24:
    __break(1u);
  }

  return result;
}

void sub_1B37EBF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_25;
  }

  v4 = a4;
  v7 = a3;
  v8 = a2;
  v6 = a1;
  v13 = *v5;
  v10 = *v5 & 0xFFFFFFFFFFFFFF8;
  v11 = v10 + 32;
  v9 = v10 + 32 + 8 * a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB858440, &qword_1B3D041F8);
  swift_arrayDestroy();
  v14 = __OFSUB__(v7, v12);
  v12 = v7 - v12;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v5 = (v9 + 8 * v7);
  if (!v12)
  {
    goto LABEL_17;
  }

  v9 = v13 >> 62;
  if (!(v13 >> 62))
  {
    v15 = *(v10 + 16);
    goto LABEL_6;
  }

LABEL_26:
  v15 = sub_1B3C9D2C8();
LABEL_6:
  v16 = v15 - v8;
  if (__OFSUB__(v15, v8))
  {
    __break(1u);
LABEL_28:
    __break(1u);
    return;
  }

  v17 = (v11 + 8 * v8);
  if (v5 != v17 || &v17[8 * v16] <= v5)
  {
    memmove(v5, v17, 8 * v16);
  }

  if (v9)
  {
    v19 = sub_1B3C9D2C8();
  }

  else
  {
    v19 = *(v10 + 16);
  }

  if (__OFADD__(v19, v12))
  {
    goto LABEL_28;
  }

  *(v10 + 16) = v19 + v12;
LABEL_17:
  if (v7 < 1)
  {
    OUTLINED_FUNCTION_27();

    swift_unknownObjectRelease();
  }

  else
  {
    v20 = v10 + 8 * v6;
    *(v20 + 32) = v4;
    if (v20 + 40 < v5)
    {
      swift_unknownObjectRetain();
      __break(1u);
    }

    OUTLINED_FUNCTION_27();
  }
}

uint64_t sub_1B37EC0B8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v3 = 0;
  v4 = *(a1 + 16);
  v5 = a1 + 32;
  v6 = a2 + 56;
  do
  {
LABEL_3:
    if (v3 == v4)
    {
      return 1;
    }

    v7 = v3++;
  }

  while (!*(a2 + 16));
  v8 = (v5 + 16 * v7);
  v10 = *v8;
  v9 = v8[1];
  sub_1B3C9D7C8();

  sub_1B3C9C668();
  v11 = sub_1B3C9D7F8();
  v12 = ~(-1 << *(a2 + 32));
  do
  {
    v13 = v11 & v12;
    if (((*(v6 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
    {

      goto LABEL_3;
    }

    v14 = (*(a2 + 48) + 16 * v13);
    if (*v14 == v10 && v14[1] == v9)
    {
      break;
    }

    v16 = sub_1B3C9D6A8();
    v11 = v13 + 1;
  }

  while ((v16 & 1) == 0);

  return 0;
}

uint64_t sub_1B37EC320(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1B3C9D2C8();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1B370EA28(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8525A0, &unk_1B3CFB9A0);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1B37ED03C(&qword_1EB855630, &qword_1EB855628, &qword_1B3D04258);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855628, &qword_1B3D04258);
          v9 = sub_1B37ECD88(v12, i, a3);
          v11 = *v10;
          swift_unknownObjectRetain();
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B37EC4A0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1B3C9D2C8();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1B370EA28(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for StorySongViewModel(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1B37ED03C(&qword_1EB8555A8, &qword_1EB854040, &unk_1B3D015F0);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854040, &unk_1B3D015F0);
          v9 = sub_1B37ECE1C(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B37EC614(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1B3C9D2C8();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1B370EA28(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855648, &qword_1B3D04270);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1B37ED03C(&qword_1EB855658, &qword_1EB855650, &qword_1B3D04278);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855650, &qword_1B3D04278);
          v9 = sub_1B37ECE84(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B37EC8C4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1B3C9D2C8();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1B370EA28(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        _s26TitleSubtitleConfigurationCMa();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1B37ED03C(&qword_1EB8555C0, &qword_1EB8555B8, &qword_1B3D04220);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8555B8, &qword_1B3D04220);
          v9 = sub_1B37ECE84(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B37ECA38(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1B3C9D2C8();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1B370EA28(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_1B3710718(0, &qword_1EB84FE50, 0x1E696ACD8);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1B37ED03C(&unk_1EB855598, &qword_1EB855590, &qword_1B3D04218);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855590, &qword_1B3D04218);
          v9 = sub_1B37ECE84(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B37ECBBC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1B3C9D2C8();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1B370EA28(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for StoryMusicEditorSongCollectionViewModel(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1B37ED03C(&qword_1EB855548, &qword_1EB855540, &qword_1B3D03880);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855540, &qword_1B3D03880);
          v9 = sub_1B37ECF10(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B37ECD30(uint64_t a1, unint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_2_27(a1, a2, a3);
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_64_1();
  }

  else
  {
    v7 = OUTLINED_FUNCTION_28_8();
    v5 = MEMORY[0x1B8C6A930](v7);
  }

  *v3 = v5;
  return OUTLINED_FUNCTION_33_3();
}

uint64_t (*sub_1B37ECD88(uint64_t *a1, unint64_t a2, uint64_t a3))()
{
  v6 = sub_1B37052D0(a3);
  sub_1B37EA954(a2, v6, a3);
  if (v6)
  {
    v7 = swift_unknownObjectRetain();
  }

  else
  {
    v7 = MEMORY[0x1B8C6A930](a2, a3);
  }

  *a1 = v7;
  return sub_1B37ECE14;
}

uint64_t sub_1B37ECE1C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_2_27(a1, a2, a3);
  if (v4)
  {
  }

  else
  {
    v7 = OUTLINED_FUNCTION_28_8();
    v5 = MEMORY[0x1B8C6A930](v7);
  }

  *v3 = v5;
  return OUTLINED_FUNCTION_33_3();
}

void (*sub_1B37ECE84(void *a1, unint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_1B37052D0(a3);
  sub_1B37EA954(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x1B8C6A930](a2, a3);
  }

  *a1 = v7;
  return sub_1B37ED0B4;
}

uint64_t sub_1B37ECF10(uint64_t a1, unint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_2_27(a1, a2, a3);
  if (v4)
  {
  }

  else
  {
    v7 = OUTLINED_FUNCTION_28_8();
    v5 = MEMORY[0x1B8C6A930](v7);
  }

  *v3 = v5;
  return OUTLINED_FUNCTION_33_3();
}

uint64_t sub_1B37ECF70(uint64_t a1, unint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_2_27(a1, a2, a3);
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_64_1();
  }

  else
  {
    v7 = OUTLINED_FUNCTION_28_8();
    v5 = MEMORY[0x1B8C6A930](v7);
  }

  *v3 = v5;
  return OUTLINED_FUNCTION_33_3();
}

uint64_t sub_1B37ECFD0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1B37ED03C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1B37ED090(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

void sub_1B37ED0A0(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t OUTLINED_FUNCTION_2_27(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_1B37052D0(a3);

  return sub_1B37EA954(a2, v5, a3);
}

char *OUTLINED_FUNCTION_11_14@<X0>(unint64_t a1@<X8>)
{

  return sub_1B37EABA0((a1 > 1), v1, 1);
}

void OUTLINED_FUNCTION_12_15()
{

  sub_1B37EBCF0(0, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_13_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1B3C9A458();
}

char *OUTLINED_FUNCTION_17_14()
{

  return sub_1B37EABA0(0, v0 & ~(v0 >> 63), 0);
}

uint64_t OUTLINED_FUNCTION_19_13()
{

  return sub_1B37EBBF4(v0, 1);
}

void OUTLINED_FUNCTION_27_8()
{
  v2 = *(v0 + 112);

  sub_1B37E7918(v2);
}

uint64_t OUTLINED_FUNCTION_31_4()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_32_3()
{

  return sub_1B3C9D2C8();
}

uint64_t OUTLINED_FUNCTION_34_5(uint64_t a1)
{

  return sub_1B3C9C788();
}

uint64_t OUTLINED_FUNCTION_35_5()
{

  return swift_unknownObjectRetain_n();
}

uint64_t OUTLINED_FUNCTION_42_3(uint64_t result)
{
  *(v1 + 16) = v2;
  *(v1 + 24) = 2 * ((result - 32) / 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_43_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1B3C9A458();
}

uint64_t OUTLINED_FUNCTION_44_3()
{
}

uint64_t OUTLINED_FUNCTION_58_1(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

id OUTLINED_FUNCTION_60_1()
{
  v3 = *(v1 + 8 * v0 + 32);

  return v3;
}

id OUTLINED_FUNCTION_61_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a10 + 8 * v10);

  return v12;
}

uint64_t OUTLINED_FUNCTION_62_0()
{

  return sub_1B3C9A478();
}

id OUTLINED_FUNCTION_64_1()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

unint64_t OUTLINED_FUNCTION_65_1()
{
  v3 = *(v1 + 128);

  return sub_1B37E9AAC(v3, v0);
}

id OUTLINED_FUNCTION_66_1(int a1, const char *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id a13)
{

  return [a13 a2];
}

uint64_t OUTLINED_FUNCTION_67_1()
{

  return sub_1B3C9C778();
}

void OUTLINED_FUNCTION_68_1()
{

  JUMPOUT(0x1B8C6A930);
}

unint64_t sub_1B37ED5F0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result >= 3)
  {
    result = OUTLINED_FUNCTION_0_28("Fatal error", a2, a3, a4, a5, "PhotosUIPrivate/PUWatchFaceView.swift", a7, a8, 40, 0);
    __break(1u);
  }

  return result;
}

id sub_1B37ED674()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WatchFaceHelper();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_1B37ED708(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(result)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
      return result;
    default:
      result = OUTLINED_FUNCTION_0_28("Fatal error", a2, a3, a4, a5, "PhotosUIPrivate/PUWatchFaceView.swift", a7, a8, 74, 0);
      __break(1u);
      break;
  }

  return result;
}

uint64_t sub_1B37ED7F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(result)
  {
    case 0:
      return result;
    case 1:
    case 2:
      result = 0x706F742D656D6974;
      break;
    case 3:
      result = 0x6E65632D656D6974;
      break;
    case 4:
      result = 0x6769722D656D6974;
      break;
    default:
      result = OUTLINED_FUNCTION_0_28("Fatal error", 0xE000000000000000, a3, a4, a5, "PhotosUIPrivate/PUWatchFaceView.swift", a7, a8, 99, 0);
      __break(1u);
      break;
  }

  return result;
}

id sub_1B37ED8C4(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1B3C9C5A8();

  v4 = [v2 initWithPath_];

  return v4;
}

id sub_1B37ED938(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = sub_1B3C9C5A8();

  v7 = [swift_getObjCClassFromMetadata() imageNamed:v6 inBundle:a3 compatibleWithTraitCollection:a4];

  return v7;
}

id sub_1B37ED9BC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *&v8[OBJC_IVAR____TtC15PhotosUIPrivate13WatchFaceView_watchType] = a1;
  *&v8[OBJC_IVAR____TtC15PhotosUIPrivate13WatchFaceView_timeConfig] = a2;
  if (a1 >= 3)
  {
    result = OUTLINED_FUNCTION_0_28("Fatal error", a2, a3, a4, a5, "PhotosUIPrivate/PUWatchFaceView.swift", a7, a8, 40, 0);
    __break(1u);
  }

  else
  {
    v11 = dbl_1B3D04320[a1];
    v12 = dbl_1B3D04338[a1];
    v45.receiver = v8;
    v45.super_class = type metadata accessor for WatchFaceView();
    v13 = objc_msgSendSuper2(&v45, sel_initWithFrame_, 0.0, 0.0, v11, v12);
    [v13 setClipsToBounds_];
    v14 = [v13 layer];
    [v14 setCornerCurve_];

    v15 = [v13 layer];
    [v15 setCornerRadius_];

    v16 = objc_allocWithZone(MEMORY[0x1E69DCAE0]);
    v17 = v13;
    v18 = [v16 init];
    [v17 setOverlayView_];

    v19 = OUTLINED_FUNCTION_2_28();
    [v19 setContentMode_];

    v20 = OUTLINED_FUNCTION_2_28();
    v21 = [v20 layer];

    v22 = [objc_opt_self() blackColor];
    v23 = [v22 CGColor];

    [v21 setShadowColor_];
    v24 = OUTLINED_FUNCTION_2_28();
    v25 = [v24 layer];

    [v25 setShadowOffset_];
    v26 = OUTLINED_FUNCTION_2_28();
    v27 = [v26 layer];

    [v27 setShadowRadius_];
    v28 = OUTLINED_FUNCTION_2_28();
    v29 = [v28 layer];

    LODWORD(v30) = 1053609165;
    [v29 setShadowOpacity_];

    v31 = OUTLINED_FUNCTION_2_28();
    sub_1B3710718(0, &unk_1EB855690, 0x1E696AAE8);
    v32 = OUTLINED_FUNCTION_3_26("/AppleInternal/Library/Frameworks/PhotosUICoreProto.framework");
    sub_1B3710718(0, &unk_1EB84FE20, 0x1E69DCAB8);
    v40 = sub_1B37ED7F8(a2, v33, v34, v35, v36, v37, v38, v39);
    v42 = sub_1B37ED938(v40, v41, v32, 0);
    [v31 setImage_];

    v43 = OUTLINED_FUNCTION_2_28();
    [v17 addSubview_];

    return v17;
  }

  return result;
}

void sub_1B37EDD9C()
{
  v24.receiver = v0;
  v24.super_class = type metadata accessor for WatchFaceView();
  objc_msgSendSuper2(&v24, sel_layoutSubviews);
  v1 = [v0 overlayView];
  v2 = OBJC_IVAR____TtC15PhotosUIPrivate13WatchFaceView_timeConfig;
  v3 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate13WatchFaceView_timeConfig];
  [v0 bounds];
  sub_1B37ED708(v3, v4, v5, v6, v7, v8, v9, v10);
  [v1 setFrame_];

  v11 = [v0 overlayView];
  v12 = *&v0[v2];
  sub_1B3710718(0, &unk_1EB855690, 0x1E696AAE8);
  v13 = OUTLINED_FUNCTION_3_26("/AppleInternal/Library/Frameworks/PhotosUICoreProto.framework");
  sub_1B3710718(0, &unk_1EB84FE20, 0x1E69DCAB8);
  v21 = sub_1B37ED7F8(v12, v14, v15, v16, v17, v18, v19, v20);
  v23 = sub_1B37ED938(v21, v22, v13, 0);
  [v11 setImage_];
}

id sub_1B37EE090(double a1, double a2, double a3, double a4)
{
  v25.receiver = v4;
  v25.super_class = type metadata accessor for WatchFaceCell();
  v9 = objc_msgSendSuper2(&v25, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1B3710718(0, &qword_1EB84F140, off_1E7B6DEC8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = v9;
  v12 = [ObjCClassFromMetadata sharedInstance];
  v13 = [v12 watchType];
  v14 = [v12 watchTimeConfig];
  v15 = objc_allocWithZone(type metadata accessor for WatchFaceView());
  v21 = sub_1B37ED9BC(v13, v14, v15, v16, v17, v18, v19, v20);
  [v11 setWallpaperView_];

  v22 = [v11 contentView];
  v23 = [v11 wallpaperView];

  [v22 addSubview_];
  return v11;
}

void sub_1B37EE23C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WatchFaceCell();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  v1 = [v0 wallpaperView];
  [v0 bounds];
  [v1 setFrame_];
}

id sub_1B37EE384(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id OUTLINED_FUNCTION_2_28()
{

  return [v0 (v1 + 4040)];
}

id OUTLINED_FUNCTION_3_26@<X0>(uint64_t a1@<X8>)
{

  return sub_1B37ED8C4(0xD00000000000003DLL, (a1 - 32) | 0x8000000000000000);
}

void sub_1B37EE418(uint64_t a1)
{
  v6[2] = MEMORY[0x1E69E7CC0];
  v2 = sub_1B3711890();
  for (i = 0; ; ++i)
  {
    if (v2 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1B8C6A930](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v5 = sub_1B3734E90(v6, v4);

    if (v5)
    {
      sub_1B3C9D408();
      sub_1B3C9D438();
      sub_1B3C9D448();
      sub_1B3C9D418();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

uint64_t sub_1B37EE550()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B3C9A698();

  return v1;
}

uint64_t sub_1B37EE5C4(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1B3C9A6A8();
}

void *sub_1B37EE634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, int a7)
{
  v8 = v7;
  LODWORD(v40) = a7;
  v46 = a5;
  v39 = a4;
  v45 = sub_1B3C9CC48();
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  v44 = v15 - v14;
  v43 = sub_1B3C9CC78();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_8();
  v42 = v20 - v19;
  v21 = sub_1B3C9C168();
  MEMORY[0x1EEE9AC00](v21 - 8);
  OUTLINED_FUNCTION_8();
  v41 = v23 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8556F8, &unk_1B3D04520);
  OUTLINED_FUNCTION_0();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v38 - v28;
  sub_1B3C98148();
  v30 = MEMORY[0x1E69E7CC0];
  *(v8 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_curatedSongsViewModels) = MEMORY[0x1E69E7CC0];
  *(v8 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_rejectedSongIdentifiers) = 0;
  *(v8 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_customUserSelectedSongViewModels) = v30;
  v31 = v30;
  *(v8 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_songLoadingState) = 1;
  *(v8 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_actionPerformerDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v8 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_customUserSelectedSongs) = v31;
  v32 = (v8 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_name);
  *v32 = a1;
  v32[1] = a2;
  v33 = v8 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_localizedTitleKey;
  v34 = *(a3 + 16);
  *v33 = *a3;
  *(v33 + 1) = v34;
  *(v33 + 2) = *(a3 + 32);
  *(v33 + 6) = *(a3 + 48);
  *(v8 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_storyModel) = a6;
  *(v8 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_curatedSongsFetchResult) = v46;
  *(v8 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_audioCatalog) = v39;
  *(v8 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_shouldShowCategoriesButton) = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0, &unk_1B3CFA830);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1B3CF9810;
  type metadata accessor for StorySongViewModel(0);
  swift_allocObject();
  sub_1B37F04B0(a3, v47);
  v40 = a6;
  swift_unknownObjectRetain();
  *(v35 + 32) = sub_1B3723B70(0, 0);
  v47[0] = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854040, &unk_1B3D015F0);
  sub_1B3C9A678();
  (*(v26 + 32))(v8 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel__viewableSongs, v29, v24);
  v39 = sub_1B3710718(0, &qword_1EB84FE60, 0x1E69E9610);
  v47[0] = *v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB855700, &unk_1B3D04530);
  sub_1B3C9C608();
  sub_1B3C9C148();
  (*(v17 + 104))(v42, *MEMORY[0x1E69E8098], v43);
  v47[0] = MEMORY[0x1E69E7CC0];
  sub_1B37F054C(&qword_1EB84FE70, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB854940, &qword_1B3D03E50);
  sub_1B3739124(&qword_1EB84FE80, &unk_1EB854940, &qword_1B3D03E50);
  sub_1B3C9D278();
  v36 = sub_1B3C9CCA8();
  swift_unknownObjectRelease();

  sub_1B371B0F4(a3);
  *(v8 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_curatedSongsLoadingQueue) = v36;
  return v8;
}

void sub_1B37EEB1C()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_songLoadingState);
  if ((v1 - 2) >= 2)
  {
    if (v1)
    {
      if (v1 == 1)
      {
        *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_songLoadingState) = 2;
        v2 = swift_allocObject();
        swift_weakInit();

        sub_1B37EF220(sub_1B37F0600, v2);
      }

      else
      {
        v5 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_songLoadingState);
        sub_1B3725570(v1);
        v3 = v1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8518D0, &qword_1B3CFA5F0);
        sub_1B3710718(0, &unk_1EB855710, 0x1E696ABC0);
        if (swift_dynamicCast())
        {
          sub_1B372555C(v1);
        }

        else
        {
          sub_1B372555C(v1);
        }
      }
    }

    else
    {

      sub_1B372555C(0);
    }
  }
}

double sub_1B37EEC6C(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1B37EECC4();
  }

  return result;
}

void sub_1B37EECC4()
{
  sub_1B37EED00();
  v1 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_songLoadingState);
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_songLoadingState) = 3;

  sub_1B372555C(v1);
}

void sub_1B37EED00()
{
  v12 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_customUserSelectedSongViewModels);

  sub_1B37E7610(v1);
  sub_1B37EE418(v12);
  v3 = v2;

  v4 = OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_rejectedSongIdentifiers;
  swift_beginAccess();
  if (*(v0 + v4))
  {
    v11 = MEMORY[0x1E69E7CC0];
    v5 = sub_1B3711890();

    for (i = 0; ; ++i)
    {
      if (v5 == i)
      {

        v3 = v11;
        goto LABEL_15;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1B8C6A930](i, v3);
      }

      else
      {
        if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v7 = *(v3 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      v8 = *(v7 + 24);
      if (v8 && (v9 = [v8 identifier], sub_1B3C9C5E8(), v9, MEMORY[0x1EEE9AC00](v10), LOBYTE(v9) = sub_1B3876E2C(), , (v9 & 1) != 0))
      {
      }

      else
      {
        sub_1B3C9D408();
        sub_1B3C9D438();
        sub_1B3C9D448();
        sub_1B3C9D418();
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_15:
    sub_1B37EE5C4(v3);
  }
}

uint64_t sub_1B37EEF38()
{
  v0 = sub_1B37EE550();
  v1 = MEMORY[0x1E69E7CC0];
  v9 = MEMORY[0x1E69E7CC0];
  result = sub_1B3711890();
  v3 = result;
  v4 = 0;
LABEL_2:
  v5 = v4;
  while (1)
  {
    while (1)
    {
      if (v5 == v3)
      {

        return v1;
      }

      if ((v0 & 0xC000000000000001) == 0)
      {
        break;
      }

      result = MEMORY[0x1B8C6A930](v5, v0);
      if (__OFADD__(v5++, 1))
      {
        goto LABEL_18;
      }

      v8 = *(result + 24);
      swift_unknownObjectRetain();
      result = swift_unknownObjectRelease();
      if (v8)
      {
        v4 = v5;
        goto LABEL_12;
      }
    }

    if ((v5 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v5 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

    v4 = v5 + 1;
    if (*(*(v0 + 32 + 8 * v5++) + 24))
    {
      result = swift_unknownObjectRetain();
LABEL_12:
      MEMORY[0x1B8C69CE0](result);
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B3C9C7E8();
      }

      result = sub_1B3C9C808();
      v1 = v9;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void sub_1B37EF088(void *a1)
{
  v3 = OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_rejectedSongIdentifiers;
  swift_beginAccess();
  if (!*(v1 + v3))
  {
    *(v1 + v3) = MEMORY[0x1E69E7CC0];
  }

  v4 = [a1 identifier];
  v5 = sub_1B3C9C5E8();
  v7 = v6;
  swift_beginAccess();
  if (*(v1 + v3))
  {
    sub_1B370EAC8();
    v8 = *(*(v1 + v3) + 16);
    sub_1B370EC04(v8, v9, v10, v11, v12, v13);
    v14 = *(v1 + v3);
    *(v14 + 16) = v8 + 1;
    v15 = v14 + 16 * v8;
    *(v15 + 32) = v5;
    *(v15 + 40) = v7;
    *(v1 + v3) = v14;
    swift_endAccess();

    sub_1B37EED00();
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1B389DF24(a1);
      swift_unknownObjectRelease();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1B37EF1C8()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1B3884434();

    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_1B37EF220(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1B3C9C118();
  OUTLINED_FUNCTION_0();
  v24 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  v23 = sub_1B3C9C168();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8();
  v17 = v16 - v15;
  v18 = *(v3 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_curatedSongsFetchResult);
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  v20[2] = v18;
  v20[3] = v19;
  v20[4] = a1;
  v20[5] = a2;
  aBlock[4] = sub_1B37F0538;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B370C014;
  aBlock[3] = &block_descriptor_35;
  v21 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  sub_1B3C9C138();
  sub_1B37F054C(&qword_1EB84FEE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AF0, &unk_1B3CF6D10);
  sub_1B3739124(&qword_1EB84FE90, &unk_1EB851AF0, &unk_1B3CF6D10);
  sub_1B3C9D278();
  MEMORY[0x1B8C6A210](0, v17, v11, v21);
  _Block_release(v21);
  (*(v24 + 8))(v11, v6);
  (*(v13 + 8))(v17, v23);

  return result;
}

uint64_t sub_1B37EF518(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v6 = sub_1B3C9C118();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B3C9C168();
  v11 = *(v10 - 8);
  *&v12 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1E69E7CC0];
  result = [a1 count];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v16 = result;
    v30 = a4;
    v31 = v14;
    v32 = v11;
    v33 = v9;
    v17 = MEMORY[0x1E69E7CC0];
    if (result)
    {
      v29 = v10;
      v18 = 0;
      do
      {
        v19 = [a1 objectAtIndex_];
        MEMORY[0x1B8C69CE0]();
        if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1B3C9C7E8();
        }

        ++v18;
        sub_1B3C9C808();
      }

      while (v16 != v18);
      v20 = v36;
      v10 = v29;
      v17 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v20 = MEMORY[0x1E69E7CC0];
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v22 = Strong;
      sub_1B3710718(0, &qword_1EB84FE60, 0x1E69E9610);
      v29 = sub_1B3C9CC88();
      v23 = swift_allocObject();
      v23[2] = v22;
      v23[3] = v20;
      v24 = v30;
      v23[4] = v34;
      v23[5] = v24;
      aBlock[4] = sub_1B37F05F4;
      aBlock[5] = v23;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B370C014;
      aBlock[3] = &block_descriptor_35;
      v25 = _Block_copy(aBlock);

      v26 = v31;
      sub_1B3C9C138();
      aBlock[0] = v17;
      sub_1B37F054C(&qword_1EB84FEE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AF0, &unk_1B3CF6D10);
      sub_1B3739124(&qword_1EB84FE90, &unk_1EB851AF0, &unk_1B3CF6D10);
      v27 = v33;
      sub_1B3C9D278();
      v28 = v29;
      MEMORY[0x1B8C6A210](0, v26, v27, v25);
      _Block_release(v25);

      (*(v7 + 8))(v27, v6);
      return (*(v32 + 8))(v26, v10);
    }

    else
    {
    }
  }

  return result;
}

void sub_1B37EF930(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v6 = sub_1B3711890();
  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
LABEL_9:
    *(a1 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_curatedSongsViewModels) = v7;

    a3(v13);
    return;
  }

  v8 = v6;
  v14 = MEMORY[0x1E69E7CC0];
  sub_1B3C9D428();
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v10 = *(a1 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_storyModel);
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1B8C6A930](v9, a2);
      }

      else
      {
        v11 = *(a2 + 8 * v9 + 32);
        swift_unknownObjectRetain();
      }

      ++v9;
      type metadata accessor for StorySongViewModel(0);
      swift_allocObject();
      v12 = v10;
      sub_1B3723B70(v11, v10);
      sub_1B3C9D408();
      sub_1B3C9D438();
      sub_1B3C9D448();
      sub_1B3C9D418();
    }

    while (v8 != v9);
    v7 = v14;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_1B37EFA84(uint64_t a1)
{
  v21 = OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_customUserSelectedSongs;
  v3 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_customUserSelectedSongs);
  v4 = sub_1B3711890();
  v5 = sub_1B3711890();
  v25 = v3 & 0xFFFFFFFFFFFFFF8;
  v26 = v3 & 0xC000000000000001;
  v24 = v3 + 32;
  v22 = v3;

  v6 = 0;
  v7 = 0;
  while (1)
  {
    if (v7 == v4)
    {
      v8 = 0;
      v9 = 0;
      v7 = v4;
      if (v5 == v6)
      {
        goto LABEL_25;
      }

      goto LABEL_11;
    }

    if (v26)
    {
      v8 = MEMORY[0x1B8C6A930](v7, v22);
    }

    else
    {
      if ((v7 & 0x8000000000000000) != 0)
      {
        goto LABEL_41;
      }

      if (v7 >= *(v25 + 16))
      {
        goto LABEL_43;
      }

      v8 = *(v24 + 8 * v7);
      swift_unknownObjectRetain();
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_42;
    }

    if (v5 == v6)
    {
      break;
    }

LABEL_11:
    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1B8C6A930](v6, a1);
    }

    else
    {
      if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }

      v9 = *(a1 + 8 * v6 + 32);
      swift_unknownObjectRetain();
    }

    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    if (!v8)
    {
      goto LABEL_25;
    }

    if (!v9)
    {
      goto LABEL_22;
    }

    v11 = [v8 isEqual_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    ++v6;
    if ((v11 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  if (v8)
  {
LABEL_22:
    swift_unknownObjectRelease();
LABEL_23:
  }

  else
  {
    v9 = 0;
LABEL_25:

    if (!v9)
    {
      return;
    }

    swift_unknownObjectRelease();
  }

  v12 = v23;
  v13 = *(v23 + v21);
  v14 = sub_1B3711890();
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v16 = v14;
    v27 = MEMORY[0x1E69E7CC0];

    sub_1B3C9D428();
    if ((v16 & 0x8000000000000000) == 0)
    {
      v17 = 0;
      v18 = *(v23 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_storyModel);
      do
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x1B8C6A930](v17, v13);
        }

        else
        {
          v19 = *(v13 + 8 * v17 + 32);
          swift_unknownObjectRetain();
        }

        ++v17;
        type metadata accessor for StorySongViewModel(0);
        swift_allocObject();
        v20 = v18;
        sub_1B3723B70(v19, v18);
        sub_1B3C9D408();
        sub_1B3C9D438();
        sub_1B3C9D448();
        sub_1B3C9D418();
      }

      while (v16 != v17);

      v15 = v27;
      v12 = v23;
      goto LABEL_35;
    }

LABEL_44:
    __break(1u);
    return;
  }

LABEL_35:
  *(v12 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_customUserSelectedSongViewModels) = v15;

  sub_1B37EED00();
}

uint64_t sub_1B37EFD98(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_customUserSelectedSongs);
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_customUserSelectedSongs) = a1;
  sub_1B37EFA84(v2);
}

uint64_t sub_1B37EFDF4(uint64_t a1)
{
  sub_1B3C98158();
  OUTLINED_FUNCTION_2_29();
  sub_1B37F054C(v1, v2, MEMORY[0x1E69695B8]);
  return sub_1B3C9C508();
}

uint64_t sub_1B37EFE68()
{
  v1 = OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_id;
  sub_1B3C98158();
  OUTLINED_FUNCTION_0_1();
  (*(v2 + 8))(v0 + v1);

  v3 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_localizedTitleKey + 48);

  swift_unknownObjectRelease();

  v4 = OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel__viewableSongs;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8556F8, &unk_1B3D04520);
  OUTLINED_FUNCTION_0_1();
  (*(v5 + 8))(v0 + v4);
  sub_1B372555C(*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_songLoadingState));
  sub_1B370A71C(v0 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_actionPerformerDelegate);

  return v0;
}

uint64_t sub_1B37EFFE0()
{
  sub_1B37EFE68();

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t type metadata accessor for StoryMusicEditorSongCollectionViewModel(uint64_t a1)
{
  result = qword_1EB8556D0;
  if (!qword_1EB8556D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B37F008C(uint64_t a1)
{
  sub_1B3C98158();
  if (v1 <= 0x3F)
  {
    sub_1B37F0254(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1B37F01C8()
{
  sub_1B3C9D7C8();
  sub_1B3C98158();
  OUTLINED_FUNCTION_2_29();
  sub_1B37F054C(v0, v1, MEMORY[0x1E69695B8]);
  sub_1B3C9C508();
  return sub_1B3C9D7F8();
}

void sub_1B37F0254(uint64_t a1)
{
  if (!qword_1EB8556E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB854040, &unk_1B3D015F0);
    v1 = sub_1B3C9A6B8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB8556E0);
    }
  }
}

uint64_t sub_1B37F0300@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for StoryMusicEditorSongCollectionViewModel(0);
  result = sub_1B3C9A658();
  *a2 = result;
  return result;
}

uint64_t sub_1B37F0340@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_id;
  v5 = sub_1B3C98158();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1B37F0428()
{
  sub_1B3C9D7C8();
  sub_1B37EFDF4(v1);
  return sub_1B3C9D7F8();
}

uint64_t sub_1B37F054C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_28Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return MEMORY[0x1EEE6BDD0](v2, 48, 7);
}

unint64_t sub_1B37F062C()
{
  result = qword_1EB855720;
  if (!qword_1EB855720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB855720);
  }

  return result;
}

unint64_t sub_1B37F0684()
{
  result = qword_1EB855728;
  if (!qword_1EB855728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB855728);
  }

  return result;
}

uint64_t sub_1B37F06F4()
{
  v0 = sub_1B3C97F38();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B3C98188();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1B3C9C598();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1B3C97F48();
  __swift_allocate_value_buffer(v6, qword_1EB878E68);
  __swift_project_value_buffer(v6, qword_1EB878E68);
  sub_1B3C9C538();
  sub_1B3C98178();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1B3C97F58();
}

uint64_t sub_1B37F08E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855748, &qword_1B3D046E0);
  OUTLINED_FUNCTION_8_0(v0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855750, &qword_1B3D046E8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v2);
  sub_1B37F1ACC();
  sub_1B3C97CA8();
  sub_1B3C97C98();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855758, &qword_1B3D04718);
  sub_1B3C97C88();

  sub_1B3C97C98();
  sub_1B3C97CB8();
  return sub_1B3C97C78();
}

uint64_t sub_1B37F0A84()
{
  OUTLINED_FUNCTION_0_0();
  v0[3] = v1;
  v0[4] = v2;
  sub_1B3C9C888();
  v0[5] = sub_1B3C9C878();
  v4 = sub_1B3C9C848();
  v0[6] = v4;
  v0[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1B37F0B18, v4, v3);
}

uint64_t sub_1B37F0B18()
{
  OUTLINED_FUNCTION_0_0();
  v0[2] = v0[4];
  v1 = swift_task_alloc();
  v0[8] = v1;
  sub_1B37F1ACC();
  *v1 = v0;
  v1[1] = sub_1B3713898;
  v2 = v0[3];

  return MEMORY[0x1EEE2CA70](v2, 0, 0, 0, 0, 0, 1, &unk_1B3D046D0);
}

uint64_t sub_1B37F0C00(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_1B3C9C598();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  sub_1B3C97F48();
  v2[8] = swift_task_alloc();
  v4 = sub_1B3C97AE8();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513A8, &qword_1B3D02E20);
  v2[12] = swift_task_alloc();
  sub_1B3C9C888();
  v2[13] = sub_1B3C9C878();
  v6 = sub_1B3C9C848();
  v2[14] = v6;
  v2[15] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1B37F0DB4, v6, v5);
}

uint64_t sub_1B37F0DB4()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 96);
  v2 = sub_1B3C98638();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  sub_1B3C97B28();
  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *v3 = v0;
  v3[1] = sub_1B3713CCC;

  return sub_1B37F0E80();
}

uint64_t sub_1B37F0E80()
{
  OUTLINED_FUNCTION_0_0();
  v0[3] = v1;
  v0[2] = v2;
  v3 = sub_1B3C9A558();
  v0[4] = v3;
  v0[5] = *(v3 - 8);
  v0[6] = swift_task_alloc();
  sub_1B3C9C888();
  v0[7] = sub_1B3C9C878();
  v5 = sub_1B3C9C848();
  v0[8] = v5;
  v0[9] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1B37F0F74, v5, v4);
}

uint64_t sub_1B37F0F74()
{
  v17 = v0;
  v1 = sub_1B3C98D08();
  v3 = v2;
  sub_1B3C987F8();

  v4 = sub_1B3C9A538();
  v5 = sub_1B3C9CAE8();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[5];
  v7 = v0[6];
  v9 = v0[4];
  if (v6)
  {
    v10 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 134218242;
    *(v11 + 4) = v10;
    *(v11 + 12) = 2082;
    v13 = sub_1B3749364(v1, v3, &v16);

    *(v11 + 14) = v13;
    _os_log_impl(&dword_1B36F3000, v4, v5, "Parameters: { value: %f, asset: %{public}s }", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x1B8C6EC70](v12, -1, -1);
    MEMORY[0x1B8C6EC70](v11, -1, -1);
  }

  else
  {
  }

  (*(v8 + 8))(v7, v9);
  v0[10] = type metadata accessor for PXEditAppDependencyManager();
  v14 = swift_task_alloc();
  v0[11] = v14;
  *v14 = v0;
  v14[1] = sub_1B37F1168;

  return sub_1B37BD42C();
}

uint64_t sub_1B37F1168()
{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 96) = v0;

  v5 = *(v2 + 72);
  v6 = *(v2 + 64);
  if (v0)
  {
    v7 = sub_1B3714674;
  }

  else
  {
    v7 = sub_1B37F1298;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1B37F1298()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0, &unk_1B3CFA830);
  v2 = swift_allocObject();
  v0[13] = v2;
  *(v2 + 16) = xmmword_1B3CF9810;
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = objc_allocWithZone(MEMORY[0x1E69C4230]);
  *(v2 + 32) = sub_1B37F1A20(sub_1B3714E34, v3);
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_1B371450C;

  return sub_1B37BD81C();
}

uint64_t sub_1B37F13C0()
{
  sub_1B3C97CC8();
  OUTLINED_FUNCTION_0();
  v38 = v1;
  v39 = v0;
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_8();
  v37 = v3 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513E8, &unk_1B3CF9A70);
  OUTLINED_FUNCTION_0();
  v35 = v5;
  v36 = v4;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v6);
  v34 = v31 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F0, &unk_1B3CF9C60);
  OUTLINED_FUNCTION_8_0(v8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v9);
  v33 = v31 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F8, &unk_1B3CF9A80);
  OUTLINED_FUNCTION_8_0(v11);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v12);
  v32 = v31 - v13;
  v14 = sub_1B3C97F38();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8();
  v20 = v19 - v18;
  v21 = sub_1B3C98188();
  v22 = OUTLINED_FUNCTION_8_0(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_8();
  v23 = sub_1B3C9C598();
  v24 = OUTLINED_FUNCTION_8_0(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_8();
  v25 = sub_1B3C97F48();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_8();
  v31[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851400, &qword_1B3D0B6F0);
  sub_1B3C9C538();
  sub_1B3C98178();
  v26 = *MEMORY[0x1E6968DF0];
  v27 = *(v16 + 104);
  v27(v20, v26, v14);
  OUTLINED_FUNCTION_6_4();
  sub_1B3C9C538();
  sub_1B3C98178();
  v27(v20, v26, v14);
  v28 = v32;
  OUTLINED_FUNCTION_6_4();
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v25);
  v40 = 0;
  v41 = 1;
  v29 = sub_1B3C97AE8();
  __swift_storeEnumTagSinglePayload(v33, 1, 1, v29);
  (*(v35 + 104))(v34, *MEMORY[0x1E695A178], v36);
  (*(v38 + 104))(v37, *MEMORY[0x1E695A500], v39);
  return sub_1B3C97BB8();
}

uint64_t sub_1B37F1810@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB850078 != -1)
  {
    swift_once();
  }

  v2 = sub_1B3C97F48();
  v3 = __swift_project_value_buffer(v2, qword_1EB878E68);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1B37F18BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B3714CE0;

  return sub_1B37F0A84();
}

uint64_t sub_1B37F195C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B37F13C0();
  *a1 = result;
  return result;
}

uint64_t sub_1B37F1984(uint64_t a1, __n128 a2)
{
  v3 = sub_1B37F1ACC();

  return MEMORY[0x1EEDB2D90](a1, v3);
}

double sub_1B37F19D0(uint64_t a1, double a2)
{
  v3 = *(a1 + 32);

  v5 = v3(v4, a2);

  return v5;
}

id sub_1B37F1A20(uint64_t a1, uint64_t a2)
{
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1B37F19D0;
  v6[3] = &block_descriptor_36;
  v3 = _Block_copy(v6);
  v4 = [v2 initWithModifier_];
  _Block_release(v3);

  return v4;
}

unint64_t sub_1B37F1ACC()
{
  result = qword_1EB855740;
  if (!qword_1EB855740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB855740);
  }

  return result;
}

uint64_t sub_1B37F1B20()
{
  OUTLINED_FUNCTION_0_0();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B3714CE0;

  return sub_1B37F0C00(v3, v0);
}

BOOL static OneUpScreenshotInsetUtilities.cornerRadiusForAspectRatio(_:horizontalSizeClass:verticalSizeClass:)(_BOOL8 result, uint64_t a2, double a3)
{
  if (a3 > 0.0)
  {
    v4 = result;
    type metadata accessor for OneUpChromeToolbarVisibilityUtilities();
    return static OneUpChromeToolbarVisibilityUtilities.sizeClassSupportsVisibleToolbar(horizontalSizeClass:verticalSizeClass:)(v4, a2);
  }

  return result;
}

double static OneUpScreenshotInsetUtilities.cornerRadiusForAspectRatio(_:traitCollection:)(void *a1, double a2)
{
  if (!a1)
  {
    return 0.0;
  }

  v3 = a1;
  v4 = [v3 horizontalSizeClass];
  v5 = [v3 verticalSizeClass];

  static OneUpScreenshotInsetUtilities.cornerRadiusForAspectRatio(_:horizontalSizeClass:verticalSizeClass:)(v4, v5, a2);
  return result;
}

id OneUpScreenshotInsetUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id OneUpScreenshotInsetUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OneUpScreenshotInsetUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id OneUpScreenshotInsetUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OneUpScreenshotInsetUtilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B37F1FA8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15PhotosUIPrivate26OneUpMockActionsController_trashActionEnabled;
  OUTLINED_FUNCTION_7_0(a1);
  return *(v1 + v2);
}

void sub_1B37F1FDC(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC15PhotosUIPrivate26OneUpMockActionsController_trashActionEnabled;
  OUTLINED_FUNCTION_3_27(a1);
  *(v1 + v3) = v2;
}

uint64_t sub_1B37F2140(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15PhotosUIPrivate26OneUpMockActionsController_performedActions;
  OUTLINED_FUNCTION_3_27(a1);
  *(v1 + v3) = a1;
}

id OneUpMockActionsController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id OneUpMockActionsController.init()()
{
  *&v0[OBJC_IVAR____TtC15PhotosUIPrivate26OneUpMockActionsController_delegate] = 0;
  v0[OBJC_IVAR____TtC15PhotosUIPrivate26OneUpMockActionsController_trashActionEnabled] = 1;
  *&v0[OBJC_IVAR____TtC15PhotosUIPrivate26OneUpMockActionsController_performedActions] = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC15PhotosUIPrivate26OneUpMockActionsController_popoverHelper] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OneUpMockActionsController();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_1B37F2330(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  OUTLINED_FUNCTION_3_27(a1);
  *(v2 + v4) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_1B37F28F4(uint64_t result)
{
  if (result == 42)
  {
    v1 = OUTLINED_FUNCTION_0_29(18);
  }

  else
  {
    if (result != 40)
    {
      return result;
    }

    v2 = 16;
    v1 = &v2;
  }

  return sub_1B37F2B4C(v1);
}