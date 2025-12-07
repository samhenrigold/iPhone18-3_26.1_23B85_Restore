uint64_t sub_1E409D41C(void *a1)
{
  v2 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = [a1 state];
  v10 = [v9 status];

  v11 = [a1 state];
  v12 = [v11 status];

  if (v12 == 4 && ([a1 allowsManualDownloadRenewal] & 1) == 0)
  {
    v14 = [a1 state];
    v15 = [v14 downloadExpirationDate];

    if (v15)
    {
      sub_1E41FE584();

      v15 = sub_1E41FE514();
      (*(v4 + 8))(v8, v2);
    }

    v13 = [objc_opt_self() shouldShowLabelForDownloadExpirationDate_];
  }

  else
  {
    v13 = 0;
  }

  return (v10 == 0) | v13 & 1u;
}

void sub_1E409D5D4()
{
  OUTLINED_FUNCTION_31_1();
  v105 = v0;
  v2 = v1;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = (v7 - v8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v95 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v95 - v15);
  if (v2 >> 62)
  {
LABEL_54:
    v17 = sub_1E4207384();
    if (!v17)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v17 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      goto LABEL_48;
    }
  }

  v18 = sub_1E32AF190(0, 1, v14);
  v96 = v9;
  v97 = v12;
  if (v18 && (v20 = sub_1E37CB21C(v18), , v20))
  {
    v21 = [v20 enqueuedOrder];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 integerValue];
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  v24 = 0;
  v110 = v2 & 0xC000000000000001;
  v106 = v2;
  v101 = v2 & 0xFFFFFFFFFFFFFF8;
  v107 = (v5 + 16);
  v2 = (v5 + 8);
  *&v19 = 136315138;
  v99 = v19;
  v100 = v3;
  v109 = v17;
  v98 = v16;
  do
  {
    OUTLINED_FUNCTION_113_0();
    if (v25)
    {
      v26 = MEMORY[0x1E6911E60](v24, v106);
    }

    else
    {
      OUTLINED_FUNCTION_59_38();
      if (v24 >= v27)
      {
        goto LABEL_52;
      }

      v26 = v106[v24 + 4];
    }

    v28 = v26;
    v9 = (v24 + 1);
    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    [v26 setDownloadState_];
    v5 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_50;
    }

    v108 = (v24 + 1);
    v29 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    [v28 setEnqueuedOrder_];

    v30 = sub_1E32AE9D4();
    v31 = *v107;
    v102 = v30;
    v103 = v31;
    v31(v16);
    v32 = v28;
    v5 = v105;
    v9 = v16;
    v33 = sub_1E41FFC94();
    v34 = sub_1E4206814();

    v104 = v5;
    if (os_log_type_enabled(v33, v34))
    {
      v35 = OUTLINED_FUNCTION_6_21();
      v5 = OUTLINED_FUNCTION_100();
      v115[0] = v5;
      *v35 = v99;
      v36 = sub_1E409DFB4(v32);
      v9 = v2;
      v38 = sub_1E3270FC8(v36, v37, v115);

      *(v35 + 4) = v38;
      _os_log_impl(&dword_1E323F000, v33, v34, "DownloadQueueManager:: Enqueueing video %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      OUTLINED_FUNCTION_6_0();
      v3 = v100;
      OUTLINED_FUNCTION_6_0();

      v12 = *v2;
      v16 = v98;
      (*v2)(v98, v3);
    }

    else
    {

      v12 = *v2;
      (*v2)(v9, v3);
      v16 = v9;
    }

    ++v23;
    ++v24;
  }

  while (v108 != v109);
  v39 = [objc_opt_self() defaultManager];
  v40 = [v39 sidebandMediaLibrary];

  [v40 saveChangesToManagedObjects];
  v41 = v97;
  OUTLINED_FUNCTION_100_10();
  v42();
  v43 = sub_1E41FFC94();
  v44 = sub_1E4206814();
  if (OUTLINED_FUNCTION_6_33(v44))
  {
    v45 = OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_9_11(v45);
    OUTLINED_FUNCTION_66_0();
    _os_log_impl(v46, v47, v48, v49, v24, 2u);
    OUTLINED_FUNCTION_51_2();
  }

  v16 = v3;
  v108 = v2;
  (v12)(v41, v3);
  v9 = v104;
  sub_1E32AEA28();
  v50 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  v115[0] = MEMORY[0x1E69E7CC0];
  v5 = &unk_1EE231000;
  v2 = &selRef_initWithMediaInfo_watchType_isRentAndWatchNow_;
  v51 = v106;
  while (v109 != v50)
  {
    OUTLINED_FUNCTION_113_0();
    if (v52)
    {
      v53 = MEMORY[0x1E6911E60](v50, v51);
    }

    else
    {
      OUTLINED_FUNCTION_59_38();
      if (v50 >= v54)
      {
        goto LABEL_53;
      }

      v53 = v51[v50 + 4];
    }

    v9 = v53;
    v55 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      goto LABEL_51;
    }

    v56 = [objc_allocWithZone(VUIUniversalAssetController) initWithVideoManagedObject_];

    ++v50;
    if (v56)
    {
      v9 = v115;
      MEMORY[0x1E6910BF0]();
      v57 = *((v115[0] & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v115[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= v57 >> 1)
      {
        OUTLINED_FUNCTION_35(v57);
        sub_1E42062F4();
      }

      OUTLINED_FUNCTION_27_0();
      sub_1E4206324();
      v3 = v115[0];
      v50 = v55;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710, &qword_1E429AC10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  v115[0] = sub_1E4205F14();
  v115[1] = v59;
  sub_1E4207414();
  *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F620, &unk_1E42E9710);
  *(inited + 72) = v3;
  v60 = sub_1E4205CB4();
  OUTLINED_FUNCTION_113_0();
  if (v61)
  {
    v63 = MEMORY[0x1E6911E60](0, v51);
  }

  else
  {
    OUTLINED_FUNCTION_59_38();
    if (!v62)
    {
      __break(1u);
      return;
    }

    v63 = v51[4];
  }

  v64 = v63;
  objc_opt_self();
  v65 = swift_dynamicCastObjCClass();
  if (v65)
  {
    v66 = [v65 season];

    if (v66)
    {
      v67 = sub_1E32868C0(v66, &selRef_canonicalID);
      if (v68)
      {
        v69 = v67;
        v70 = v68;
        v71 = OBJC_IVAR____TtC8VideosUI20DownloadQueueManager_seasonDetailsMap;
        v72 = v104;
        swift_beginAccess();
        v73 = *(v72 + v71);

        v74 = sub_1E396E6C0(v69, v70, v73);

        if (v74)
        {
          v76 = (*(*v74 + 216))(v75);
          *&v113 = sub_1E4205F14();
          *(&v113 + 1) = v77;
          sub_1E4207414();
          v78 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
          v114 = sub_1E3280A90(0, &qword_1EE23ADD0, 0x1E696AD98);
          *&v113 = v78;
          sub_1E329504C(&v113, v112);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v111 = v60;
          sub_1E377DF14(v112, v115, isUniquelyReferenced_nonNull_native);
          v60 = v111;
          sub_1E375D84C(v115);
          v80 = v96;
          OUTLINED_FUNCTION_100_10();
          v81();

          v82 = sub_1E41FFC94();
          LOBYTE(v78) = sub_1E4206814();

          if (os_log_type_enabled(v82, v78))
          {
            v83 = OUTLINED_FUNCTION_49_0();
            v110 = v76;
            v84 = v83;
            v85 = OUTLINED_FUNCTION_100();
            v115[0] = v85;
            *v84 = 136315394;
            v86 = sub_1E3270FC8(v69, v70, v115);

            *(v84 + 4) = v86;
            *(v84 + 12) = 2048;
            OUTLINED_FUNCTION_113_0();
            *(v84 + 14) = v87;
            OUTLINED_FUNCTION_66_0();
            _os_log_impl(v88, v89, v90, v91, v84, 0x16u);
            __swift_destroy_boxed_opaque_existential_1(v85);
            OUTLINED_FUNCTION_79();
            OUTLINED_FUNCTION_6_0();

            v92 = v80;
            v93 = v100;
          }

          else
          {

            v92 = OUTLINED_FUNCTION_123_0();
          }

          (v12)(v92, v93);
        }

        else
        {
        }
      }
    }
  }

  else
  {
  }

  v94 = [objc_opt_self() defaultCenter];
  sub_1E37E7460(@"VUIDownloadQueueManagerDidAddDownloads", 0, v60, v94);

LABEL_48:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E409DFB4(void *a1)
{
  v2 = sub_1E32859C4(a1, &selRef_title);
  if (v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0x206E776F6E6B6E75;
  }

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xED0000656C746974;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20_2();
  if (swift_dynamicCastObjCClass())
  {
    v22 = 0x203A6569766F4D5BLL;
    v6 = v4;
LABEL_9:
    MEMORY[0x1E69109E0](v6, v5);

    MEMORY[0x1E69109E0](23842, 0xE200000000000000);
    return v22;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20_2();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    v9 = a1;
    v10 = [v8 season];
    if (v10 && (v11 = v10, v12 = [v10 seasonNumber], v11, v12))
    {
      v21 = [v12 integerValue];
      v13 = sub_1E4207944();
      v15 = v14;
    }

    else
    {
      v15 = 0xE100000000000000;
      v13 = 63;
    }

    v16 = [v8 episodeNumberInSeason];
    if (v16)
    {
      v17 = v16;
      [v16 integerValue];
      sub_1E4207944();
    }

    sub_1E42074B4();

    v22 = 0x65646F736970455BLL;
    MEMORY[0x1E69109E0](v13, v15);

    MEMORY[0x1E69109E0](69, 0xE100000000000000);
    v19 = OUTLINED_FUNCTION_17_11();
    MEMORY[0x1E69109E0](v19);

    MEMORY[0x1E69109E0](8736, 0xE200000000000000);
    MEMORY[0x1E69109E0](v4, v5);

    MEMORY[0x1E69109E0](23842, 0xE200000000000000);

    return v22;
  }

  v6 = sub_1E32859C4(a1, &selRef_title);
  if (v18)
  {
    v5 = v18;
    v22 = 8795;
    goto LABEL_9;
  }

  return 0x6E776F6E6B6E755BLL;
}

void sub_1E409E2C0()
{
  OUTLINED_FUNCTION_31_1();
  v75 = v0;
  v2 = v1;
  v66 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v62 = v6 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v62 - v9;
  v63 = MEMORY[0x1E69E7CC0];
  v78 = MEMORY[0x1E69E7CC0];
  v11 = sub_1E32AE9B0(v2);
  v12 = 0;
  v13 = v2 & 0xC000000000000001;
  v77 = v2 & 0xFFFFFFFFFFFFFF8;
  while (v11 != v12)
  {
    if (v13)
    {
      v14 = MEMORY[0x1E6911E60](v12, v2);
    }

    else
    {
      if (v12 >= *(v77 + 16))
      {
        goto LABEL_40;
      }

      v14 = *(v2 + 8 * v12 + 32);
    }

    v15 = v14;
    if (__OFADD__(v12, 1))
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
      return;
    }

    if ([v14 downloadState] == 3)
    {
      sub_1E4207544();
      sub_1E4207584();
      sub_1E4207594();
      sub_1E4207554();
    }

    else
    {
    }

    ++v12;
  }

  v16 = v78;
  v17 = sub_1E32AE9B0(v78);
  if (v17)
  {
    if (v17 < 1)
    {
      goto LABEL_43;
    }

    v67 = v2;
    v19 = 0;
    v71 = v16 & 0xC000000000000001;
    v20 = (v4 + 16);
    v76 = (v4 + 8);
    *&v18 = 136315138;
    v64 = v18;
    v21 = v66;
    v74 = v13;
    v65 = (v4 + 16);
    v72 = v17;
    v73 = v16;
    do
    {
      if (v71)
      {
        v22 = MEMORY[0x1E6911E60](v19, v16);
      }

      else
      {
        v22 = *(v16 + 8 * v19 + 32);
      }

      v23 = v22;
      [v22 setDownloadState_];
      [v23 setEnqueuedOrder_];
      v24 = sub_1E32AE9D4();
      v25 = *v20;
      v68 = v24;
      v25(v10);
      v26 = v23;
      v27 = v75;
      v28 = sub_1E41FFC94();
      v29 = sub_1E4206814();

      v30 = os_log_type_enabled(v28, v29);
      v69 = v25;
      v70 = v27;
      if (v30)
      {
        v31 = OUTLINED_FUNCTION_6_21();
        v32 = OUTLINED_FUNCTION_100();
        v78 = v32;
        *v31 = v64;
        v33 = sub_1E409DFB4(v26);
        v35 = sub_1E3270FC8(v33, v34, &v78);

        *(v31 + 4) = v35;
        v20 = v65;
        v21 = v66;
        _os_log_impl(&dword_1E323F000, v28, v29, "DownloadQueueManager:: Removing enqueued video %s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v32);
        OUTLINED_FUNCTION_55();
        OUTLINED_FUNCTION_6_0();
      }

      else
      {
      }

      v36 = *v76;
      (*v76)(v10, v21);
      v16 = v73;
      v37 = v74;
      ++v19;
    }

    while (v72 != v19);
    v38 = [objc_opt_self() defaultManager];
    v39 = [v38 sidebandMediaLibrary];

    sub_1E3280A90(0, &qword_1EE23B0B0, off_1E8728688);
    OUTLINED_FUNCTION_20_2();
    sub_1E42062A4();
    OUTLINED_FUNCTION_12_1();

    [v39 removeDownloadedMediaForVideoManagedObjects:v38 markAsDeleted:1 invalidateImmediately:1];

    v40 = 0;
    v78 = MEMORY[0x1E69E7CC0];
    while (v11 != v40)
    {
      if (v37)
      {
        v41 = MEMORY[0x1E6911E60](v40, v67);
      }

      else
      {
        if (v40 >= *(v77 + 16))
        {
          goto LABEL_42;
        }

        v41 = *(v67 + 8 * v40 + 32);
      }

      v42 = v41;
      v43 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        goto LABEL_41;
      }

      v44 = [objc_allocWithZone(VUIUniversalAssetController) initWithVideoManagedObject_];

      ++v40;
      if (v44)
      {
        MEMORY[0x1E6910BF0]();
        v45 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v45 >> 1)
        {
          OUTLINED_FUNCTION_35(v45);
          sub_1E42062F4();
        }

        OUTLINED_FUNCTION_27_0();
        sub_1E4206324();
        v63 = v78;
        v40 = v43;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BE0;
    *(inited + 32) = sub_1E4205F14();
    *(inited + 40) = v47;
    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F620, &unk_1E42E9710);
    *(inited + 48) = v63;
    v48 = sub_1E4205CB4();
    v49 = [objc_opt_self() defaultCenter];
    v50 = @"VUIDownloadQueueManagerDidRemoveDownloads";
    v51 = sub_1E3744600(v48);

    sub_1E37E7460(v50, 0, v51, v49);

    v52 = v62;
    v53 = v66;
    v69(v62, v68, v66);
    v54 = sub_1E41FFC94();
    v55 = sub_1E4206814();
    if (OUTLINED_FUNCTION_6_33(v55))
    {
      v56 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_9_11(v56);
      OUTLINED_FUNCTION_66_0();
      _os_log_impl(v57, v58, v59, v60, v50, 2u);
      OUTLINED_FUNCTION_51_2();
    }

    v36(v52, v53);
    sub_1E32AEA28();

    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    OUTLINED_FUNCTION_25_2();
  }
}

uint64_t sub_1E409E97C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  sub_1E3280A90(0, &qword_1EE23B0B0, off_1E8728688);
  OUTLINED_FUNCTION_20_2();
  v6 = sub_1E42062B4();
  v7 = a1;
  a4(v6);
}

void sub_1E409E9FC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v4);
  v9 = *(v2 + 16);
  if (v9)
  {
    v45 = &v44 - v6;
    v46 = v8;
    v47 = v7;
    v48 = v5;
    v49 = v0;
    v10 = objc_opt_self();
    v50 = 0;
    v51 = 0;
    v11 = 0;
    v12 = v2 + 32;
LABEL_3:
    while (2)
    {
      v13 = v11;
      while (1)
      {
        if (v13 >= v9)
        {
          __break(1u);
LABEL_36:
          __break(1u);
          return;
        }

        v11 = (v13 + 1);
        if (__OFADD__(v13, 1))
        {
          goto LABEL_36;
        }

        v14 = *(v12 + 8 * v13);
        v15 = v14;
        v16 = sub_1E41FE264();
        v17 = sub_1E41FE264();

        v18 = [v10 isOutOfSpaceError_];
        if (v18)
        {

          v51 = 1;
          if (v11 != v9)
          {
            goto LABEL_3;
          }

          OUTLINED_FUNCTION_91_21();
LABEL_32:
          v21 = BYTE4(v50);
          goto LABEL_19;
        }

        v19 = v16;
        v17 = sub_1E41FE264();

        v18 = [v10 isMPMediaLibraryAssociationError_];
        if (v18)
        {
          break;
        }

        v20 = v19;
        v17 = sub_1E41FE264();

        v18 = [v10 isDownloadLimitError_];
        if (v18)
        {
          LODWORD(v50) = 1;
          if (v11 != v9)
          {
            goto LABEL_3;
          }

          OUTLINED_FUNCTION_91_21();
          if ((v51 & 1) == 0)
          {
            goto LABEL_24;
          }

          LODWORD(v50) = 1;
          goto LABEL_32;
        }

        ++v13;
        if (v11 == v9)
        {
          OUTLINED_FUNCTION_91_21();
          v21 = BYTE4(v50);
          if ((v51 & 1) == 0)
          {
            goto LABEL_22;
          }

          goto LABEL_19;
        }
      }

      HIDWORD(v50) = 1;
      if (v11 != v9)
      {
        continue;
      }

      break;
    }

    OUTLINED_FUNCTION_91_21();
    if ((v51 & 1) == 0)
    {
      goto LABEL_24;
    }

    v21 = 1;
LABEL_19:
    sub_1E409EE9C();
    v22 = sub_1E32AE9D4();
    v23 = v45;
    v18[2](v45, v22, v17);
    v24 = sub_1E41FFC94();
    v25 = sub_1E4206814();
    if (os_log_type_enabled(v24, v25))
    {
      *OUTLINED_FUNCTION_125_0() = 0;
      OUTLINED_FUNCTION_36_4();
      _os_log_impl(v26, v27, v28, v29, v30, 2u);
      OUTLINED_FUNCTION_55();
    }

    (v18[1])(v23, v17);
LABEL_22:
    if ((v21 & 1) == 0 && (v50 & 1) == 0)
    {
      goto LABEL_31;
    }

LABEL_24:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E429DCC0;
    *(inited + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
    *(inited + 40) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
    if (sub_1E32AE9B0(inited))
    {
      v33 = sub_1E40A0260(inited);
    }

    else
    {
      swift_setDeallocating();
      sub_1E377D458();
      v33 = MEMORY[0x1E69E7CD0];
    }

    v34 = sub_1E32AF190(v33, 0, v32);

    if (v34)
    {
      v35 = sub_1E32AE9D4();
      v18[2](v11, v35, v17);
      v36 = sub_1E41FFC94();
      v37 = sub_1E4206814();
      if (os_log_type_enabled(v36, v37))
      {
        *OUTLINED_FUNCTION_125_0() = 0;
        OUTLINED_FUNCTION_36_4();
        _os_log_impl(v38, v39, v40, v41, v42, 2u);
        OUTLINED_FUNCTION_55();
      }

      (v18[1])(v11, v17);
      sub_1E3280A90(0, &qword_1EE23B0B0, off_1E8728688);
      v43 = sub_1E42062A4();

      [v9 removeDownloadsForVideoManagedObjects_];
    }
  }

LABEL_31:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E409EE9C()
{
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1E32AE9D4();
  (*(v4 + 16))(v8, v9, v2);
  v10 = sub_1E41FFC94();
  v11 = sub_1E4206814();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_125_0();
    *v12 = 0;
    _os_log_impl(&dword_1E323F000, v10, v11, "DownloadQueueManager::clear all enqueued downloads.", v12, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  (*(v4 + 8))(v8, v2);
  if (sub_1E32AF190(0, 0, v13))
  {
    sub_1E3280A90(0, &qword_1EE23B0B0, off_1E8728688);
    OUTLINED_FUNCTION_20_2();
    v14 = sub_1E42062A4();

    [v1 removeDownloadsForVideoManagedObjects_];
  }

  OUTLINED_FUNCTION_11_3(v1 + OBJC_IVAR____TtC8VideosUI20DownloadQueueManager_allSeasonDetailsFetchers, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F690, &qword_1E42E9788);
  sub_1E4205D14();
  return swift_endAccess();
}

void sub_1E409F0DC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F6A8, &unk_1E42E9820);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v16 - v10;
  v12 = [objc_opt_self() sharedInstance];
  (*(v8 + 16))(v11, v5, v6);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  (*(v8 + 32))(v14 + v13, v11, v6);
  v16[4] = sub_1E40A06A4;
  v16[5] = v14;
  OUTLINED_FUNCTION_12_0();
  v16[1] = 1107296256;
  v16[2] = sub_1E409F420;
  v16[3] = &block_descriptor_39_5;
  v15 = _Block_copy(v16);

  [v12 preflightDownloadForContentRating:v3 presentingViewController:v1 contentAllowsCellularDownload:1 completion:v15];
  _Block_release(v15);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E409F298()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  sub_1E32AE9D4();
  OUTLINED_FUNCTION_0_11();
  v9(v8);
  v10 = sub_1E41FFC94();
  v11 = sub_1E42067E4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = v1 & 1;
    _os_log_impl(&dword_1E323F000, v10, v11, "DownloadQueueManager::finished preflight: canBeDownloaded: %{BOOL}d", v12, 8u);
    OUTLINED_FUNCTION_79();
  }

  (*(v4 + 8))(v8, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F6A8, &unk_1E42E9820);
  sub_1E42063D4();
  OUTLINED_FUNCTION_25_2();
}

double sub_1E409F420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  v7(a2, a3, a4);

  return result;
}

void sub_1E409F490()
{
  OUTLINED_FUNCTION_31_1();
  v35 = v0;
  v2 = v1;
  v33 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v32 = v7 - v6;
  v8 = *v2;
  v37 = MEMORY[0x1E69E7CC0];
  v9 = sub_1E32AE9B0(v8);

  for (i = 0; ; ++i)
  {
    if (v9 == i)
    {

      v36 = v37;
      v13 = sub_1E32AE9B0(v37);
      v15 = v32;
      v14 = v33;
      if (v13)
      {
        v16 = v13;
        if (v13 < 1)
        {
          goto LABEL_25;
        }

        v17 = 0;
        v18 = (v4 + 16);
        v34 = (v4 + 8);
        do
        {
          if ((v36 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x1E6911E60](v17, v36);
          }

          else
          {
            v19 = *(v36 + 8 * v17 + 32);
          }

          v20 = v19;
          v21 = sub_1E32AE9D4();
          (*v18)(v15, v21, v14);
          v22 = v20;
          v23 = v35;
          v24 = v22;
          v25 = sub_1E41FFC94();
          v26 = sub_1E4206814();

          v27 = v25;
          if (os_log_type_enabled(v25, v26))
          {
            OUTLINED_FUNCTION_6_21();
            v28 = OUTLINED_FUNCTION_52_2();
            v37 = v28;
            *v23 = 136315138;
            v29 = sub_1E409DFB4(v24);
            v31 = sub_1E3270FC8(v29, v30, &v37);
            v15 = v32;

            *(v23 + 1) = v31;
            _os_log_impl(&dword_1E323F000, v27, v26, "DownloadQueueManager:: removing %s", v23, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v28);
            v14 = v33;
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_79();
          }

          else
          {
          }

          (*v34)(v15, v14);
          ++v17;
        }

        while (v16 != v17);
      }

      sub_1E3280A90(0, &qword_1EE23B0B0, off_1E8728688);
      sub_1E42062A4();
      OUTLINED_FUNCTION_12_1();

      [v35 removeDownloadsForVideoManagedObjects_];

      OUTLINED_FUNCTION_25_2();
      return;
    }

    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1E6911E60](i, v8);
    }

    else
    {
      if (i >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v11 = *(v8 + 8 * i + 32);
    }

    v12 = v11;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if ([v11 triggerType] == 1)
    {
      sub_1E4207544();
      sub_1E4207584();
      OUTLINED_FUNCTION_123_0();
      sub_1E4207594();
      sub_1E4207554();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_1E409F7E4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  swift_beginAccess();
  v9 = *(v1 + 16);
  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_18:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v10 = sub_1E4207384();
  if (!v10)
  {
    goto LABEL_18;
  }

LABEL_3:
  v41 = objc_opt_self();
  if (v10 >= 1)
  {
    v11 = v9 & 0xC000000000000001;
    v36 = (v4 + 8);
    v37 = (v4 + 16);

    v12 = 0;
    *&v13 = 136315138;
    v34 = v13;
    v39 = v10;
    v40 = v8;
    v35 = v9;
    v38 = v9 & 0xC000000000000001;
    do
    {
      if (v11)
      {
        v14 = MEMORY[0x1E6911E60](v12, v9);
      }

      else
      {
        v14 = *(v9 + 8 * v12 + 32);
      }

      v15 = v14;
      v16 = [v41 sharedInstance];
      v17 = [v16 downloads];

      sub_1E3280A90(0, &unk_1EE23B3E0, 0x1E69D5A10);
      v18 = sub_1E42062B4();

      if (v18 >> 62)
      {
        v19 = sub_1E4207384();
      }

      else
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v19 <= 2)
      {
        sub_1E409DFB4(v15);
        v20 = sub_1E32AE9D4();
        (*v37)(v8, v20, v2);

        v21 = v2;
        v22 = sub_1E41FFC94();
        v23 = sub_1E4206814();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = OUTLINED_FUNCTION_6_21();
          v42 = OUTLINED_FUNCTION_100();
          *v24 = v34;
          v25 = OUTLINED_FUNCTION_17_11();
          v28 = sub_1E3270FC8(v25, v26, v27);

          *(v24 + 4) = v28;
          _os_log_impl(&dword_1E323F000, v22, v23, "DownloadQueueManager:: remove %s from enqueued list and add to downloading list", v24, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v42);
          OUTLINED_FUNCTION_51_2();
          OUTLINED_FUNCTION_6_0();

          v9 = v35;
        }

        else
        {
        }

        (*v36)(v8, v21);
        v2 = v21;
        v29 = [v15 allowsCellular];
        v30 = [v15 downloadQuality];
        v31 = [v15 shouldMarkAsDeletedAfterCancellationOrFailure];
        v32 = [v15 prefer3DOrImmersiveDownload];
        v33 = [v41 sharedInstance];
        [v33 addDownloadForVideoManagedObject:v15 allowCellular:v29 quality:v30 shouldMarkAsDeletedOnCancellationOrFailure:v31 prefer3DOrImmersiveDownload:v32];

        v15 = v33;
        v10 = v39;
        v8 = v40;
        v11 = v38;
      }

      ++v12;
    }

    while (v10 != v12);

    goto LABEL_18;
  }

  __break(1u);
}

id sub_1E409FBC0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 downloadTriggerType];
  *a2 = result;
  return result;
}

id sub_1E409FC10@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 enqueuedOrder];
  *a2 = result;
  return result;
}

uint64_t sub_1E409FC60()
{
  OUTLINED_FUNCTION_24();
  v0[2] = v1;
  v2 = sub_1E41FFCB4();
  v0[3] = v2;
  OUTLINED_FUNCTION_8_0(v2);
  v0[4] = v3;
  v0[5] = swift_task_alloc();
  sub_1E4206434();
  v0[6] = OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  v4 = OUTLINED_FUNCTION_42_5();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1E409FD34()
{

  sub_1E32AE9D4();
  v0 = OUTLINED_FUNCTION_20_127();
  v1(v0);
  v2 = sub_1E41FFC94();
  v3 = sub_1E4206814();
  if (OUTLINED_FUNCTION_76_25(v3))
  {
    v4 = OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_9_11(v4);
    OUTLINED_FUNCTION_45_69(&dword_1E323F000, v5, v6, "DownloadQueueManager:: Updating download queue tasks because downloads changed");
    OUTLINED_FUNCTION_51_2();
  }

  v7 = OUTLINED_FUNCTION_27_0();
  v8(v7);
  sub_1E32AEA28();

  OUTLINED_FUNCTION_54();

  return v9();
}

void *sub_1E409FE88(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F688, &qword_1E42E9780);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E409FFB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1E327D33C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F6C8, &qword_1E42E9848);
  sub_1E4207644();

  v7 = *(*(v9 + 56) + 8 * v6);
  type metadata accessor for SeasonDetailsFetcher();
  sub_1E4207664();
  *v3 = v9;
  return v7;
}

uint64_t sub_1E40A0094()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E4098FDC();
}

void sub_1E40A0134()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *v0;
  v9 = sub_1E327D33C(v4, v2);
  if (__OFADD__(v8[2], (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  v13 = OUTLINED_FUNCTION_123_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = sub_1E327D33C(v5, v3);
  if ((v12 & 1) != (v16 & 1))
  {
LABEL_13:
    sub_1E4207A74();
    __break(1u);
    return;
  }

  v11 = v15;
LABEL_5:
  v17 = *v1;
  if (v12)
  {
    *(v17[7] + 8 * v11) = v7;
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    sub_1E377E1B0(v11, v5, v3, v7, v17);
    OUTLINED_FUNCTION_25_2();
  }
}

uint64_t sub_1E40A0260(unint64_t a1)
{
  v1 = a1;
  if (sub_1E32AE9B0(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FBC8, &qword_1E42E9790);
    v2 = sub_1E4207464();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v20 = sub_1E32AE9B0(v1);
  if (v20)
  {
    v3 = 0;
    v4 = v2 + 56;
    v18 = v1;
    v19 = v1 & 0xC000000000000001;
    v17 = v1 + 32;
    while (1)
    {
      sub_1E34AF4E4(v3, v19 == 0, v1);
      result = v19 ? MEMORY[0x1E6911E60](v3, v1) : *(v17 + 8 * v3);
      v6 = result;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      result = sub_1E4206F54();
      v8 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v9 = result & v8;
        v10 = (result & v8) >> 6;
        v11 = *(v4 + 8 * v10);
        v12 = 1 << (result & v8);
        if ((v12 & v11) == 0)
        {
          break;
        }

        sub_1E3280A90(0, &qword_1EE23ADD0, 0x1E696AD98);
        v13 = *(*(v2 + 48) + 8 * v9);
        v14 = sub_1E4206F64();

        if (v14)
        {

          goto LABEL_17;
        }

        result = v9 + 1;
      }

      *(v4 + 8 * v10) = v12 | v11;
      *(*(v2 + 48) + 8 * v9) = v6;
      v15 = *(v2 + 16);
      v7 = __OFADD__(v15, 1);
      v16 = v15 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v16;
LABEL_17:
      v1 = v18;
      if (v3 == v20)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

uint64_t sub_1E40A0424()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E409FC60();
}

uint64_t sub_1E40A04AC(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  v5 = *v2;
  result = sub_1E32AE9B0(*v2);
  if (result < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (__OFSUB__(a2, v4))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = v4 - a2;
  if (__OFSUB__(0, a2 - v4))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = sub_1E32AE9B0(v5);
  v8 = __OFADD__(v7, v6);
  result = v7 + v6;
  if (v8)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_1E3879104(result, 1);

  return sub_1E40A0550(v4, a2, 0);
}

uint64_t sub_1E40A0550(uint64_t a1, uint64_t a2, uint64_t a3)
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
  sub_1E3280A90(0, &qword_1EE23B0B0, off_1E8728688);
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
  result = sub_1E4207384();
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
    result = sub_1E4207384();
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

void sub_1E40A06A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F6A8, &unk_1E42E9820);
  OUTLINED_FUNCTION_17_2(v0);

  sub_1E409F298();
}

uint64_t sub_1E40A0734()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v1[1] = sub_1E327C238;

  return sub_1E4099808();
}

uint64_t OUTLINED_FUNCTION_58_39(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

id OUTLINED_FUNCTION_70_31()
{
  *(v1 + 12) = 2112;

  return v0;
}

uint64_t OUTLINED_FUNCTION_77_23()
{
}

uint64_t OUTLINED_FUNCTION_79_28()
{
}

uint64_t OUTLINED_FUNCTION_80_22()
{
  *(v1 + 200) = v0;
  *(v1 + 208) = v2;

  return sub_1E324FBDC();
}

id OUTLINED_FUNCTION_82_24(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8 * a1 + 32);

  return v3;
}

double OUTLINED_FUNCTION_83_23()
{

  return result;
}

uint64_t OUTLINED_FUNCTION_84_24()
{
}

uint64_t OUTLINED_FUNCTION_103_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1E376FE58(0, 0, v6, v5, a5);
}

uint64_t OUTLINED_FUNCTION_106_20()
{
}

char *sub_1E40A0988()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F6E0, &qword_1E42E98E0);
  OUTLINED_FUNCTION_2_10();
  MEMORY[0x1EEE9AC00](v0);
  v2 = v9 - v1;
  v3 = sub_1E40A0AD8();
  v4 = *&v3[OBJC_IVAR____TtCE8VideosUICSo26VUIDownloadButtonViewModelP33_567DD2235A7001689D15779A1409BF5C17ObservationTokens_stateSubject];

  v9[1] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F6E8, &qword_1E42E98E8);
  OUTLINED_FUNCTION_1_295(&qword_1EE28A150);
  v5 = sub_1E40A0D2C();
  OUTLINED_FUNCTION_6_227(v5);

  OUTLINED_FUNCTION_2_256(&qword_1EE28A348);
  sub_1E42006B4();
  v6 = OUTLINED_FUNCTION_8_202();
  v7(v6);
  return v2;
}

char *sub_1E40A0AD8()
{
  v1 = v0;
  swift_beginAccess();
  v2 = objc_getAssociatedObject(v0, &unk_1EE238510);
  swift_endAccess();
  if (v2)
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (!*(&v13 + 1))
  {
    sub_1E329505C(v14);
    goto LABEL_8;
  }

  _s17ObservationTokensCMa();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v4 = [objc_allocWithZone(_s17ObservationTokensCMa()) init];
    *&v14[0] = v1;
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = v4;
    OUTLINED_FUNCTION_7_235();
    v6 = sub_1E41FE2E4();

    v7 = *&v5[OBJC_IVAR____TtCE8VideosUICSo26VUIDownloadButtonViewModelP33_567DD2235A7001689D15779A1409BF5C17ObservationTokens_stateObservation];
    *&v5[OBJC_IVAR____TtCE8VideosUICSo26VUIDownloadButtonViewModelP33_567DD2235A7001689D15779A1409BF5C17ObservationTokens_stateObservation] = v6;

    *&v14[0] = v1;
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    OUTLINED_FUNCTION_7_235();
    v8 = sub_1E41FE2E4();

    v9 = *&v5[OBJC_IVAR____TtCE8VideosUICSo26VUIDownloadButtonViewModelP33_567DD2235A7001689D15779A1409BF5C17ObservationTokens_progressObservation];
    *&v5[OBJC_IVAR____TtCE8VideosUICSo26VUIDownloadButtonViewModelP33_567DD2235A7001689D15779A1409BF5C17ObservationTokens_progressObservation] = v8;

    v3 = v5;
    swift_beginAccess();
    objc_setAssociatedObject(v1, &unk_1EE238510, v3, 1);
    swift_endAccess();

    return v3;
  }

  return v11;
}

unint64_t sub_1E40A0D2C()
{
  result = qword_1EE23B238;
  if (!qword_1EE23B238)
  {
    type metadata accessor for VUIDownloadState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23B238);
  }

  return result;
}

char *sub_1E40A0D84()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F6F0, &qword_1E42E98F0);
  OUTLINED_FUNCTION_2_10();
  MEMORY[0x1EEE9AC00](v0);
  v2 = v12 - v1;
  v3 = sub_1E40A0AD8();
  v4 = *&v3[OBJC_IVAR____TtCE8VideosUICSo26VUIDownloadButtonViewModelP33_567DD2235A7001689D15779A1409BF5C17ObservationTokens_progressSubject];

  v12[1] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F6F8, &qword_1E42E98F8);
  v5 = OUTLINED_FUNCTION_1_295(&qword_1EE28A198);
  v8 = sub_1E39F51D4(v5, v6, v7);
  OUTLINED_FUNCTION_6_227(v8);

  OUTLINED_FUNCTION_2_256(&qword_1EE28A350);
  sub_1E42006B4();
  v9 = OUTLINED_FUNCTION_8_202();
  v10(v9);
  return v2;
}

id sub_1E40A0ED4()
{
  if ([v0 downloadType] == 2 || objc_msgSend(v0, sel_downloadType) == 1)
  {
    return sub_1E3780EC0(v0);
  }

  result = [v0 videosPlayable];
  if (result)
  {
    return sub_1E40A1580(result);
  }

  return result;
}

id sub_1E40A0F50(uint64_t a1)
{
  v56 = &type metadata for ViewModelKeys;
  v57 = &off_1F5D7BCA8;
  LOBYTE(v55[0]) = 20;
  sub_1E3F9F164(v55, a1, MEMORY[0x1E69E7CA0] + 8);
  if (!*(&v59 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
    sub_1E329505C(&v58);
    goto LABEL_13;
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  OUTLINED_FUNCTION_3_266(v2, v3, v4, v2, v5, v6, v7, v8, v49, v51);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
    goto LABEL_13;
  }

  __swift_destroy_boxed_opaque_existential_1(v55);
  if (!v52)
  {
LABEL_13:

    v58 = 0u;
    v59 = 0u;
LABEL_14:
    sub_1E329505C(&v58);
    return 0;
  }

  v56 = &unk_1F5D7C138;
  v57 = &off_1F5D7BC98;
  OUTLINED_FUNCTION_0_335();
  sub_1E3F9F164(v9, v52, v10);

  __swift_destroy_boxed_opaque_existential_1(v55);
  if (!*(&v59 + 1))
  {

    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_34:

    return 0;
  }

  v11 = v55[0];
  v56 = &unk_1F5D7BE68;
  v57 = &off_1F5D7BC48;
  OUTLINED_FUNCTION_0_335();
  sub_1E3F9F164(v12, v11, v13);
  if (*(&v59 + 1))
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
    OUTLINED_FUNCTION_3_266(v14, v15, v16, v14, v17, v18, v19, v20, v50, v52);
    if (swift_dynamicCast())
    {
      v21 = v52;
    }

    else
    {
      v21 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
    sub_1E329505C(&v58);
    v21 = 0;
  }

  v56 = &unk_1F5D7BE68;
  v57 = &off_1F5D7BC48;
  OUTLINED_FUNCTION_0_335();
  sub_1E3F9F164(v24, v11, v25);

  if (*(&v59 + 1))
  {
    OUTLINED_FUNCTION_3_266(v26, v27, v28, v29, v30, v31, v32, v33, v50, v52);
    if (swift_dynamicCast())
    {
      v34 = v52;
    }

    else
    {
      v34 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1(v55);
    if (v21)
    {
LABEL_24:
      sub_1E388A824(v21);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0, &unk_1E42A1250);
      v35 = sub_1E42062A4();

      if (!v34)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
    sub_1E329505C(&v58);
    v34 = 0;
    if (v21)
    {
      goto LABEL_24;
    }
  }

  v35 = 0;
  if (v34)
  {
LABEL_25:
    sub_1E3744600(v34);

    v34 = sub_1E4205C44();
  }

LABEL_26:
  v36 = [objc_opt_self() videosPlayablesFromDictionaries:v35 andMetadataDictionary:v34];

  if (!v36)
  {
    goto LABEL_34;
  }

  sub_1E388C2BC();
  v37 = sub_1E42062B4();

  result = sub_1E32AE9B0(v37);
  if (!result)
  {

    goto LABEL_34;
  }

  if ((v37 & 0xC000000000000001) != 0)
  {
    v38 = MEMORY[0x1E6911E60](0, v37);
LABEL_31:
    v39 = v38;

    v22 = [swift_getObjCClassFromMetadata() viewModelWithVideosPlayable_];
    v56 = &type metadata for ViewModelKeys;
    v57 = &off_1F5D7BCA8;
    OUTLINED_FUNCTION_0_335();
    sub_1E3F9F164(v40, a1, v41);

    if (*(&v59 + 1))
    {
      OUTLINED_FUNCTION_3_266(v42, v43, v44, MEMORY[0x1E69E6158], v45, v46, v47, v48, v50, v52);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(v55);
        sub_1E3839D34(v53, v54, v22);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(v55);
      }
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v55);
      sub_1E329505C(&v58);
    }

    return v22;
  }

  if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v38 = *(v37 + 32);
    goto LABEL_31;
  }

  __break(1u);
  return result;
}

id sub_1E40A139C()
{
  *&v0[OBJC_IVAR____TtCE8VideosUICSo26VUIDownloadButtonViewModelP33_567DD2235A7001689D15779A1409BF5C17ObservationTokens_stateObservation] = 0;
  *&v0[OBJC_IVAR____TtCE8VideosUICSo26VUIDownloadButtonViewModelP33_567DD2235A7001689D15779A1409BF5C17ObservationTokens_progressObservation] = 0;
  v1 = OBJC_IVAR____TtCE8VideosUICSo26VUIDownloadButtonViewModelP33_567DD2235A7001689D15779A1409BF5C17ObservationTokens_stateSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F6E8, &qword_1E42E98E8);
  swift_allocObject();
  *&v0[v1] = sub_1E4200544();
  v2 = OBJC_IVAR____TtCE8VideosUICSo26VUIDownloadButtonViewModelP33_567DD2235A7001689D15779A1409BF5C17ObservationTokens_progressSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F6F8, &qword_1E42E98F8);
  swift_allocObject();
  *&v0[v2] = sub_1E4200544();
  v4.receiver = v0;
  v4.super_class = _s17ObservationTokensCMa();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_1E40A1480(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = _s17ObservationTokensCMa();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1E40A1518@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 downloadState];
  *a2 = result;
  return result;
}

id sub_1E40A154C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 downloadProgress];
  *a2 = v4;
  return result;
}

uint64_t sub_1E40A1580(void *a1)
{
  v2 = [a1 adamID];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E4205F14();

  return v3;
}

double sub_1E40A1620(uint64_t a1)
{
  OUTLINED_FUNCTION_5_242(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;

    [v1 downloadState];
    sub_1E4200524();
  }

  return result;
}

double sub_1E40A16AC(uint64_t a1)
{
  OUTLINED_FUNCTION_5_242(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;

    [v1 downloadProgress];
    sub_1E4200524();
  }

  return result;
}

id sub_1E40A1778()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v1) = 1036831949;
  LODWORD(v2) = 1.0;
  LODWORD(v3) = 1.0;
  v4 = [v0 initWithControlPoints__:v1 :{0.0, v2, v3}];
  v5 = [objc_allocWithZone(MEMORY[0x1E69DC908]) initWithCustomCurve_];

  return v5;
}

id sub_1E40A1830()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI31PaginationSwipeTimingParameters_swipeAnimationType))
  {
    v1 = 35.0;
  }

  else
  {
    v1 = 15.0;
  }

  if (*(v0 + OBJC_IVAR____TtC8VideosUI31PaginationSwipeTimingParameters_swipeAnimationType))
  {
    v2 = 200.0;
  }

  else
  {
    v2 = 65.0;
  }

  v3 = objc_allocWithZone(MEMORY[0x1E69DCF88]);

  return [v3 initWithMass:1.0 stiffness:v2 damping:v1 initialVelocity:{0.0, 0.0}];
}

id sub_1E40A18B8(char a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR____TtC8VideosUI31PaginationSwipeTimingParameters_swipeAnimationType] = a1 & 1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1E40A19B8@<X0>(uint64_t *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = (*(ObjectType + 112))(*(v1 + OBJC_IVAR____TtC8VideosUI31PaginationSwipeTimingParameters_swipeAnimationType));
  result = type metadata accessor for PaginationSwipeTimingParameters();
  a1[3] = result;
  *a1 = v4;
  return result;
}

id sub_1E40A1AB8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaginationSwipeTimingParameters();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1E40A1AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3F708;
  if (!qword_1ECF3F708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F708);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PaginationSwipeTimingParameters.SwipeAnimationType(_BYTE *result, unsigned int a2, unsigned int a3)
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

double sub_1E40A1C30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36270, &unk_1E42C7CC0);
  sub_1E4203AB4();
  return v1;
}

double sub_1E40A1C8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868, &unk_1E4297BF0);
  sub_1E4203914();
  return v1;
}

double sub_1E40A1CE8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>, double a11@<D2>, double a12@<D3>, uint64_t a13, uint64_t a14)
{
  *(a8 + 80) = sub_1E3CBD224(0.0);
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a9;
  *(a8 + 24) = a3;
  *(a8 + 32) = a4;
  *(a8 + 40) = a10;
  *(a8 + 48) = a5;
  *(a8 + 56) = a6;
  *(a8 + 64) = a11;
  *(a8 + 72) = v26;
  *(a8 + *(type metadata accessor for MaskingScrollView(0, a13, a14, v27) + 52)) = a12;

  a7(v28);

  return result;
}

uint64_t sub_1E40A1E48@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v68 = a2;
  v2 = *(a1 + 16);
  v61 = *(a1 + 24);
  OUTLINED_FUNCTION_4_261();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v76 = v2;
  v77 = v61;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v3 = sub_1E4200AC4();
  OUTLINED_FUNCTION_0_10();
  v65 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v49 - v6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D708, &qword_1E42D7AF0);
  v58 = v3;
  v8 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v62 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v60 = &v49 - v11;
  OUTLINED_FUNCTION_2_257();
  WitnessTable = swift_getWitnessTable();
  v57 = WitnessTable;
  OUTLINED_FUNCTION_1_296();
  v15 = sub_1E32752B0(v13, &qword_1ECF2D708, &qword_1E42D7AF0, v14);
  v74 = WitnessTable;
  v75 = v15;
  v67 = MEMORY[0x1E697E858];
  v16 = swift_getWitnessTable();
  v76 = v8;
  v77 = v16;
  v17 = v16;
  v51 = v16;
  v18 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_10();
  v59 = v19;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v49 - v21;
  v76 = v8;
  v77 = v17;
  v54 = swift_getOpaqueTypeConformance2();
  v76 = v18;
  v77 = v54;
  v55 = &unk_1E442A6E0;
  v52 = swift_getOpaqueTypeMetadata2();
  v56 = *(v52 - 8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v49 - v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2E7A8, &qword_1E42AC738);
  v26 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  v50 = &v49 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v53 = &v49 - v32;
  sub_1E4202704();
  v69 = v2;
  v70 = v61;
  v71 = v66;
  sub_1E4200AD4();
  v76 = 0xD00000000000001ALL;
  v77 = 0x80000001E4290390;
  v33 = v60;
  v34 = v58;
  sub_1E4202F74();
  (*(v65 + 8))(v7, v34);
  sub_1E4203194();
  (*(v62 + 8))(v33, v8);
  v35 = sub_1E40A1C8C();
  v36 = v54;
  sub_1E3CEB108(v37, v38, v18, v35);

  (*(v59 + 8))(v22, v18);
  v76 = v18;
  v77 = v36;
  v39 = swift_getOpaqueTypeConformance2();
  v40 = v50;
  v41 = v52;
  sub_1E4202F34();
  (*(v56 + 8))(v25, v41);
  OUTLINED_FUNCTION_3_267();
  v44 = sub_1E32752B0(v42, &qword_1ECF2E7A8, &qword_1E42AC738, v43);
  v72 = v39;
  v73 = v44;
  swift_getWitnessTable();
  v45 = *(v28 + 16);
  v46 = v53;
  v45(v53, v40, v26);
  v47 = *(v28 + 8);
  v47(v40, v26);
  v45(v68, v46, v26);
  return (v47)(v46, v26);
}

uint64_t sub_1E40A247C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v22 = a3;
  v23 = a1;
  v24 = a2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  type metadata accessor for MaskingScrollView(0, a1, a2, v14);
  v15 = sub_1E40A1C30();
  sub_1E3CEB0C8(v16, v17, 0xD00000000000001ALL, 0x80000001E4290390, a1, a2, v15);

  v18 = *(v7 + 16);
  v18(v13, v10, OpaqueTypeMetadata2);
  v19 = *(v7 + 8);
  v19(v10, OpaqueTypeMetadata2);
  v18(v22, v13, OpaqueTypeMetadata2);
  return (v19)(v13, OpaqueTypeMetadata2);
}

void sub_1E40A2690(uint64_t a1)
{
  sub_1E40A2AAC(319, &qword_1ECF38EC8, MEMORY[0x1E6981948]);
  if (v1 <= 0x3F)
  {
    sub_1E40A2AAC(319, &qword_1EE288680, MEMORY[0x1E6981790]);
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1E40A2778(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if ((v5 & 0x80000000) != 0)
    {
      v17 = OUTLINED_FUNCTION_6_228(~v6);
      return __swift_getEnumTagSinglePayload(v17, v18, v19);
    }

    else
    {
      v16 = *(result + 8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  else
  {
    v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 88) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1E40A28CC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((*(*(*(a4 + 16) - 8) + 64) + ((v9 + 88) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v9 + 88) & ~v9) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if ((v7 & 0x80000000) != 0)
          {
            v17 = OUTLINED_FUNCTION_6_228(~v9);

            __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *(a1 + 1) = 0;
            *(a1 + 2) = 0;
            *a1 = a2 & 0x7FFFFFFF;
          }

          else
          {
            *(a1 + 1) = a2 - 1;
          }
        }

        break;
    }
  }

  else
  {
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v9 + 88) & ~v9) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((*(*(*(a4 + 16) - 8) + 64) + ((v9 + 88) & ~v9) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, v10);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

void sub_1E40A2AAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E7DE0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1E40A2B00()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 1000))();
  v2 = [v1 bestStoreRedownloadOffer];

  if (!v2)
  {
    v3 = sub_1E40A2CE4();
    if (!v3)
    {
      return 0;
    }

    v2 = v3;
  }

  v4 = [v2 dictionary];
  v5 = sub_1E4205C64();

  v6 = sub_1E374BD08(v5);

  if (v6)
  {
    v7 = sub_1E38ADEB4();
    v8 = OUTLINED_FUNCTION_46_7(v7);
    OUTLINED_FUNCTION_14_178(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18, v20);

    if (v21)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0);
      if (swift_dynamicCast())
      {
        v6 = sub_1E32772D8(v19);
        goto LABEL_8;
      }
    }

    else
    {

      sub_1E325F748(&v20, &unk_1ECF296E0, &unk_1E4298030);
    }

    return 0;
  }

LABEL_8:

  return v6;
}

id sub_1E40A2C7C()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 1000))();
  v2 = [v1 bestStoreRedownloadOffer];

  return v2;
}

id sub_1E40A2CE4()
{
  OUTLINED_FUNCTION_8();
  v0 += 122;
  v1 = *v0;
  v2 = (*v0)();
  if (!v2 || (v3 = v2, v4 = [v2 bestStoreBuyOffer], v3, !v4))
  {
    v5 = v1();
    v4 = [v5 bestStoreGetOffer];
  }

  return v4;
}

void sub_1E40A2D90()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___duration;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___duration + 8))
  {
    v2 = sub_1E40A2CE4();
    if (v2)
    {
      v3 = v2;
    }

    else
    {
      OUTLINED_FUNCTION_8();
      v5 = (*(v4 + 1000))();
      v3 = [v5 bestStoreRedownloadOffer];

      if (!v3)
      {
        goto LABEL_11;
      }
    }

    v6 = [v3 dictionary];
    v7 = sub_1E4205C64();

    v11 = *sub_1E38AE000();

    sub_1E4207414();
    sub_1E375D7E8(v7, &v13, v12);

    sub_1E375D84C(v12);
    if (v14)
    {
      sub_1E3280A90(0, &qword_1EE23ADD0, 0x1E696AD98);
      if (swift_dynamicCast())
      {
        [v11 doubleValue];
        v9 = v8;

        v10 = v9 / 1000.0;
LABEL_12:
        *v1 = v10;
        *(v1 + 8) = 0;
        return;
      }
    }

    else
    {

      sub_1E325F748(&v13, &unk_1ECF296E0, &unk_1E4298030);
    }

LABEL_11:
    v10 = 0.0;
    goto LABEL_12;
  }
}

void sub_1E40A2F70(double a1)
{
  v2 = v1 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___duration;
  *(v1 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___duration) = a1;
  OUTLINED_FUNCTION_15_169(v2);
}

uint64_t sub_1E40A2F84(uint64_t a1)
{
  OUTLINED_FUNCTION_94(a1);
  sub_1E40A2D90();
  *v1 = v2;
  return OUTLINED_FUNCTION_116();
}

void sub_1E40A2FC4(void *a1)
{
  v1 = (a1[1] + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___duration);
  *v1 = *a1;
  OUTLINED_FUNCTION_15_169(v1);
}

double sub_1E40A2FDC()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___bookmarkTime);
  if (*(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___bookmarkTime + 8))
  {
    v2 = sub_1E38ADF4C();
    OUTLINED_FUNCTION_44_0(v2);
    v3 = OUTLINED_FUNCTION_3_268();
    sub_1E3277E60(v3, v4, v5, v6);

    if (v91)
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
      OUTLINED_FUNCTION_5_243(v7, v8, v9, v10, v11, v12, v13, v14, v75, v82);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_16;
      }

      v15 = sub_1E38AE00C();
      v16 = OUTLINED_FUNCTION_46_7(v15);
      OUTLINED_FUNCTION_14_178(v16, v17, v18, v19, v20, v21, v22, v23, v76, v83, v90);

      OUTLINED_FUNCTION_5_243(v24, v25, v26, v27, v28, v29, v30, v31, v77, v84);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_16;
      }

      v32 = sub_1E38ADE84();
      v33 = OUTLINED_FUNCTION_46_7(v32);
      OUTLINED_FUNCTION_14_178(v33, v34, v35, v36, v37, v38, v39, v40, v78, v85, v90);

      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
      OUTLINED_FUNCTION_5_243(v41, v42, v43, v41, v44, v45, v46, v47, v79, v86);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_16;
      }

      if (!v87[2])
      {

        goto LABEL_16;
      }

      v48 = v87[4];

      v49 = sub_1E38ADEA8();
      v50 = *v49;
      v51 = v49[1];

      sub_1E3277E60(v50, v51, v48, &v90);

      if (v91)
      {
        OUTLINED_FUNCTION_5_243(v52, v53, v54, v55, v56, v57, v58, v59, v80, v87);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_16;
        }

        v60 = sub_1E38AE018();
        OUTLINED_FUNCTION_44_0(v60);
        v61 = OUTLINED_FUNCTION_3_268();
        sub_1E3277E60(v61, v62, v63, v64);

        if (v91)
        {
          v65 = sub_1E3280A90(0, &qword_1EE23ADD0, 0x1E696AD98);
          OUTLINED_FUNCTION_5_243(v65, v66, v67, v65, v68, v69, v70, v71, v81, v88);
          if (swift_dynamicCast())
          {
            [v89 doubleValue];
            v73 = v72;

LABEL_17:
            *v1 = v73;
            v1[8] = 0;
            return v73;
          }

LABEL_16:
          v73 = 0.0;
          goto LABEL_17;
        }
      }
    }

    sub_1E325F748(&v90, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_16;
  }

  return *v1;
}

uint64_t sub_1E40A3248(uint64_t a1)
{
  result = sub_1E37817B4(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1E40A56D0(result, v3, 0, a1);
  }
}

void sub_1E40A32B0(double a1)
{
  v2 = v1 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___bookmarkTime;
  *(v1 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___bookmarkTime) = a1;
  OUTLINED_FUNCTION_15_169(v2);
}

uint64_t sub_1E40A32C4(uint64_t a1)
{
  OUTLINED_FUNCTION_94(a1);
  *v1 = sub_1E40A2FDC();
  return OUTLINED_FUNCTION_116();
}

void sub_1E40A3304(void *a1)
{
  v1 = (a1[1] + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___bookmarkTime);
  *v1 = *a1;
  OUTLINED_FUNCTION_15_169(v1);
}

uint64_t sub_1E40A331C()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___assetType);
  if ((*(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___assetType + 9) & 1) == 0)
  {
    return *v1;
  }

  result = 0;
  *v1 = 0;
  v1[4] = 1;
  return result;
}

uint64_t sub_1E40A3360(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  v1 = sub_1E40A331C();
  OUTLINED_FUNCTION_4_17(v1, v2);
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E40A33C4(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  *v1 = sub_1E40A33AC();
  v1[1] = v2;
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E40A3410()
{
  if ((*(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___resolutionClass + 9) & 1) == 0)
  {
    return *(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___resolutionClass);
  }

  OUTLINED_FUNCTION_8();
  v2 = (*(v1 + 432))();
  if (v2)
  {
    v3 = sub_1E38AE024();
    OUTLINED_FUNCTION_44_0(v3);
    v4 = OUTLINED_FUNCTION_3_268();
    v7 = sub_1E3862230(v4, v5, v6);

    if (v7)
    {
      v2 = 3;
    }

    else
    {
      v2 = 0;
    }

    v8 = !v7;
  }

  else
  {
    v8 = 1;
  }

  return OUTLINED_FUNCTION_29_102(v2, v8);
}

uint64_t sub_1E40A34D4(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  v1 = sub_1E40A3410();
  OUTLINED_FUNCTION_4_17(v1, v2);
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E40A3520()
{
  if ((*(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___videoRange + 9) & 1) == 0)
  {
    return *(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___videoRange);
  }

  OUTLINED_FUNCTION_8();
  v2 = (*(v1 + 432))();
  if (v2)
  {
    v3 = sub_1E38AE030();
    OUTLINED_FUNCTION_44_0(v3);
    v4 = OUTLINED_FUNCTION_3_268();
    v7 = sub_1E3862230(v4, v5, v6);

    if (v7)
    {

      v8 = 0;
      v2 = 2;
    }

    else
    {
      v10 = sub_1E38AE03C();
      OUTLINED_FUNCTION_44_0(v10);
      v11 = OUTLINED_FUNCTION_3_268();
      v14 = sub_1E3862230(v11, v12, v13);

      if (v14)
      {

        v8 = 0;
        v2 = 4;
      }

      else
      {
        v15 = sub_1E38AE048();
        OUTLINED_FUNCTION_44_0(v15);
        v16 = OUTLINED_FUNCTION_3_268();
        v19 = sub_1E3862230(v16, v17, v18);

        if (v19)
        {
          v2 = 3;
        }

        else
        {
          v2 = 0;
        }

        v8 = !v19;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  return OUTLINED_FUNCTION_29_102(v2, v8);
}

uint64_t sub_1E40A364C(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  v1 = sub_1E40A3520();
  OUTLINED_FUNCTION_4_17(v1, v2);
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E40A3698()
{
  v3 = OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___hasDolbyAtmos;
  result = *(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___hasDolbyAtmos);
  if (result == 3)
  {
    OUTLINED_FUNCTION_8();
    v6 = (*(v5 + 432))();
    if (v6)
    {
      v7 = v6;
      v8 = sub_1E38AE054();
      OUTLINED_FUNCTION_46_7(v8);
      v9 = sub_1E3862230(v1, v2, v7);

      result = v9;
    }

    else
    {
      result = 2;
    }

    *(v0 + v3) = result;
  }

  return result;
}

void (*sub_1E40A3750(void *a1))(uint64_t *a1)
{
  OUTLINED_FUNCTION_69_1(a1);
  v1 = sub_1E40A3698();
  OUTLINED_FUNCTION_13_21(v1);
  return sub_1E40A3790;
}

uint64_t sub_1E40A37A4()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___storeID;
  if ((*(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___storeID + 5) & 1) == 0)
  {
    LODWORD(v10) = *v1;
    v16 = *(v1 + 4) & 1;
    return v10 | (v16 << 32);
  }

  OUTLINED_FUNCTION_8();
  result = (*(v2 + 184))();
  v5 = v4;
  v6 = HIBYTE(v4) & 0xF;
  v7 = result & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {

    v28 = 0;
    goto LABEL_73;
  }

  if ((v5 & 0x1000000000000000) != 0)
  {
    v10 = sub_1E37C4D2C(result, v5, 10);

    v28 = v10;
    if ((v10 & 0x100000000) != 0)
    {
      v28 = 0;
      goto LABEL_73;
    }

    v16 = 0;
    goto LABEL_78;
  }

  if ((v5 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v5 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1E4207524();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v7 >= 1)
      {
        if (v7 != 1)
        {
          LODWORD(v10) = 0;
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_1_4();
              if (!v12 & v11)
              {
                goto LABEL_70;
              }

              OUTLINED_FUNCTION_5_26();
              if (!v12)
              {
                goto LABEL_70;
              }

              LODWORD(v10) = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_70;
              }

              OUTLINED_FUNCTION_132();
              if (v12)
              {
                goto LABEL_71;
              }
            }
          }

          goto LABEL_61;
        }

        goto LABEL_70;
      }

      goto LABEL_84;
    }

    if (v9 != 45)
    {
      if (v7)
      {
        LODWORD(v10) = 0;
        if (result)
        {
          while (1)
          {
            v23 = *result - 48;
            if (v23 > 9)
            {
              goto LABEL_70;
            }

            v24 = 10 * v10;
            if (v24 != v24)
            {
              goto LABEL_70;
            }

            LODWORD(v10) = v24 + v23;
            if (__OFADD__(v24, v23))
            {
              goto LABEL_70;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_61;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_70:
      LODWORD(v10) = 0;
      v15 = 1;
LABEL_71:
      v27 = v15;

      v28 = v10;
      v16 = v27 & 1;
      if (v27)
      {
        v28 = 0;
LABEL_73:
        LODWORD(v10) = 0;
        v29 = 0x100000000;
        v16 = 1;
LABEL_79:
        *(v1 + 4) = BYTE4(v29);
        *v1 = v29 | v28;
        *(v1 + 5) = 0;
        return v10 | (v16 << 32);
      }

LABEL_78:
      v29 = 0;
      goto LABEL_79;
    }

    if (v7 >= 1)
    {
      if (v7 != 1)
      {
        LODWORD(v10) = 0;
        if (result)
        {
          while (1)
          {
            OUTLINED_FUNCTION_1_4();
            if (!v12 & v11)
            {
              goto LABEL_70;
            }

            OUTLINED_FUNCTION_5_26();
            if (!v12)
            {
              goto LABEL_70;
            }

            LODWORD(v10) = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              goto LABEL_70;
            }

            OUTLINED_FUNCTION_132();
            if (v12)
            {
              goto LABEL_71;
            }
          }
        }

LABEL_61:
        v15 = 0;
        goto LABEL_71;
      }

      goto LABEL_70;
    }

    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  if (result != 43)
  {
    if (result != 45)
    {
      if (v6)
      {
        while (1)
        {
          OUTLINED_FUNCTION_1_4();
          if (!v12 & v11)
          {
            break;
          }

          OUTLINED_FUNCTION_5_26();
          if (!v12)
          {
            break;
          }

          LODWORD(v10) = v26 + v25;
          if (__OFADD__(v26, v25))
          {
            break;
          }

          OUTLINED_FUNCTION_132();
          if (v12)
          {
            goto LABEL_71;
          }
        }
      }

      goto LABEL_70;
    }

    if (v6)
    {
      if (v6 != 1)
      {
        OUTLINED_FUNCTION_8_13();
        while (1)
        {
          OUTLINED_FUNCTION_1_4();
          if (!v12 & v11)
          {
            break;
          }

          OUTLINED_FUNCTION_5_26();
          if (!v12)
          {
            break;
          }

          LODWORD(v10) = v18 - v17;
          if (__OFSUB__(v18, v17))
          {
            break;
          }

          OUTLINED_FUNCTION_132();
          if (v12)
          {
            goto LABEL_71;
          }
        }
      }

      goto LABEL_70;
    }

    goto LABEL_83;
  }

  if (v6)
  {
    if (v6 != 1)
    {
      OUTLINED_FUNCTION_8_13();
      while (1)
      {
        OUTLINED_FUNCTION_1_4();
        if (!v12 & v11)
        {
          break;
        }

        OUTLINED_FUNCTION_5_26();
        if (!v12)
        {
          break;
        }

        LODWORD(v10) = v22 + v21;
        if (__OFADD__(v22, v21))
        {
          break;
        }

        OUTLINED_FUNCTION_132();
        if (v12)
        {
          goto LABEL_71;
        }
      }
    }

    goto LABEL_70;
  }

LABEL_85:
  __break(1u);
  return result;
}

uint64_t sub_1E40A3A98(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___storeID;
  *(v2 + 4) = BYTE4(result) & 1;
  *v2 = result;
  *(v2 + 5) = 0;
  return result;
}

uint64_t (*sub_1E40A3AB8(void *a1))(uint64_t result)
{
  OUTLINED_FUNCTION_69_1(a1);
  v2 = sub_1E40A37A4();
  *(v1 + 8) = v2;
  *(v1 + 12) = BYTE4(v2) & 1;
  return sub_1E40A3B04;
}

uint64_t sub_1E40A3B04(uint64_t result)
{
  v1 = *(result + 12) != 0;
  v2 = *result + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___storeID;
  *v2 = *(result + 8);
  *(v2 + 4) = v1;
  *(v2 + 5) = 0;
  return result;
}

void (*sub_1E40A3B54(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_69_1(a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  OUTLINED_FUNCTION_17_2(v2);
  v4 = *(v3 + 64);
  *(v1 + 8) = __swift_coroFrameAllocStub(v4);
  v5 = __swift_coroFrameAllocStub(v4);
  *(v1 + 16) = v5;
  sub_1E40A3B3C(v5);
  return sub_1E40A3BE8;
}

uint64_t sub_1E40A3C0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CDE0, &unk_1E42B0D70);
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19[-v10];
  v12 = *a1;
  swift_beginAccess();
  sub_1E37C5830(v2 + v12, v11, &qword_1ECF2CDE0, &unk_1E42B0D70);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v13) != 1)
  {
    return sub_1E3889AF0(v11, a2);
  }

  sub_1E325F748(v11, &qword_1ECF2CDE0, &unk_1E42B0D70);
  sub_1E41FE5D4();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  sub_1E37C5830(a2, v8, &unk_1ECF28E20, &unk_1E42986D0);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v13);
  swift_beginAccess();
  sub_1E393FD78(v8, v2 + v12);
  return swift_endAccess();
}

uint64_t sub_1E40A3DC4(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CDE0, &unk_1E42B0D70);
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  sub_1E3889AF0(a1, &v12 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  v10 = *a2;
  swift_beginAccess();
  sub_1E393FD78(v8, v2 + v10);
  return swift_endAccess();
}

void (*sub_1E40A3EA0(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_69_1(a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  OUTLINED_FUNCTION_17_2(v2);
  v4 = *(v3 + 64);
  *(v1 + 8) = __swift_coroFrameAllocStub(v4);
  v5 = __swift_coroFrameAllocStub(v4);
  *(v1 + 16) = v5;
  sub_1E40A3C00(v5);
  return sub_1E40A3F34;
}

void sub_1E40A3F4C(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2)
  {
    sub_1E37C5830(*(a1 + 16), v4, &unk_1ECF28E20, &unk_1E42986D0);
    a3(v4);
    sub_1E325F748(v5, &unk_1ECF28E20, &unk_1E42986D0);
  }

  else
  {
    a3(*(a1 + 16));
  }

  free(v5);

  free(v4);
}

uint64_t sub_1E40A3FF4()
{
  result = *(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___allowsManualDownloadRenewal);
  if (result == 3)
  {
    result = 2;
    *(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___allowsManualDownloadRenewal) = 2;
  }

  return result;
}

void (*sub_1E40A4020(void *a1))(uint64_t *a1)
{
  OUTLINED_FUNCTION_69_1(a1);
  v1 = sub_1E40A3FF4();
  OUTLINED_FUNCTION_13_21(v1);
  return sub_1E40A4060;
}

uint64_t sub_1E40A4074()
{
  result = *(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___renewsOfflineKeysAutomatically);
  if (result == 3)
  {
    result = 2;
    *(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___renewsOfflineKeysAutomatically) = 2;
  }

  return result;
}

void (*sub_1E40A40A0(void *a1))(uint64_t *a1)
{
  OUTLINED_FUNCTION_69_1(a1);
  v1 = sub_1E40A4074();
  OUTLINED_FUNCTION_13_21(v1);
  return sub_1E40A40E0;
}

uint64_t sub_1E40A4100(void *a1)
{
  v2 = (v1 + *a1);
  v3 = *v2;
  v4 = v2[1];
  v5 = *v2;
  if (v4 == 1)
  {
    v5 = 0;
    *v2 = 0;
    v2[1] = 0;
  }

  sub_1E37EA628(v3, v4);
  return v5;
}

uint64_t sub_1E40A415C(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  *v1 = sub_1E40A40F4();
  v1[1] = v2;
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E40A41A8()
{
  result = *(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___markAsDeleted);
  if (result == 3)
  {
    result = 2;
    *(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___markAsDeleted) = 2;
  }

  return result;
}

void (*sub_1E40A41D4(void *a1))(uint64_t *a1)
{
  OUTLINED_FUNCTION_69_1(a1);
  v1 = sub_1E40A41A8();
  OUTLINED_FUNCTION_13_21(v1);
  return sub_1E40A4214;
}

id sub_1E40A4228()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___contentRating;
  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___contentRating);
  v4 = v3;
  if (v3 == 1)
  {
    v5 = *(v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity_attributeDict);
    if (v5)
    {
      v6 = sub_1E38ADFAC();
      v7 = *v6;
      v8 = v6[1];

      sub_1E3277E60(v7, v8, v5, &v101);

      if (*(&v102 + 1))
      {
        v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
        if (OUTLINED_FUNCTION_7_236(v9, v10, v11, v9, v12, v13, v14, v15))
        {
          type metadata accessor for LibFamilySharingPlayableMediaEntity(0);
          v16 = sub_1E40A3248(v94);
          v4 = v17;
          if (!v17)
          {
LABEL_30:

            goto LABEL_21;
          }

          v18 = v16;
          sub_1E3277E60(v16, v17, v94, &v101);
          if (*(&v102 + 1))
          {
            v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
            if ((OUTLINED_FUNCTION_7_236(v19, v20, v21, v19, v22, v23, v24, v25) & 1) == 0)
            {
LABEL_28:

              goto LABEL_29;
            }

            sub_1E38ADFC4();

            OUTLINED_FUNCTION_13_186(v26, v27, v28, v29, v30, v31, v32, v33, v80, v83, v87, v91, v94, v98, v101);

            if (*(&v102 + 1))
            {
              if (OUTLINED_FUNCTION_7_236(v34, v35, v36, MEMORY[0x1E69E6810], v37, v38, v39, v40))
              {
                sub_1E38ADFB8();

                OUTLINED_FUNCTION_13_186(v41, v42, v43, v44, v45, v46, v47, v48, v81, v84, v88, v95, v95, v99, v101);

                if (*(&v102 + 1))
                {
                  v56 = OUTLINED_FUNCTION_7_236(v49, v50, v51, MEMORY[0x1E69E6158], v52, v53, v54, v55);
                  if (v56)
                  {
                    v57 = v96;
                  }

                  else
                  {
                    v57 = 0;
                  }

                  if (v56)
                  {
                    v58 = v100;
                  }

                  else
                  {
                    v58 = 0;
                  }

                  v85 = v58;
                  v89 = v57;
                }

                else
                {
                  sub_1E325F748(&v101, &unk_1ECF296E0, &unk_1E4298030);
                  v85 = 0;
                  v89 = 0;
                }

                sub_1E38ADFD0();

                OUTLINED_FUNCTION_13_186(v62, v63, v64, v65, v66, v67, v68, v69, v82, v85, v89, v92, v96, v100, v101);

                if (*(&v102 + 1))
                {
                  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0);
                  if (OUTLINED_FUNCTION_7_236(v70, v71, v72, v70, v73, v74, v75, v76))
                  {
                    sub_1E3280A90(0, &qword_1ECF3F718, 0x1E69DF6B8);
                    if (v97[2])
                    {
                      v78 = v97[4];
                      v77 = v97[5];

LABEL_39:
                      v79 = objc_allocWithZone(swift_getObjCClassFromMetadata());
                      v4 = sub_1E3A294D4(v18, v4, v90, v86, v93, v78, v77);
                      goto LABEL_30;
                    }

LABEL_38:
                    v78 = 0;
                    v77 = 0;
                    goto LABEL_39;
                  }
                }

                else
                {
                  sub_1E325F748(&v101, &unk_1ECF296E0, &unk_1E4298030);
                }

                sub_1E3280A90(0, &qword_1ECF3F718, 0x1E69DF6B8);
                goto LABEL_38;
              }

              goto LABEL_28;
            }
          }

          sub_1E325F748(&v101, &unk_1ECF296E0, &unk_1E4298030);
LABEL_29:
          v4 = 0;
          goto LABEL_30;
        }

LABEL_20:
        v4 = 0;
LABEL_21:
        v59 = *(v1 + v2);
        *(v1 + v2) = v4;
        v60 = v4;
        sub_1E329CC84(v59);
        goto LABEL_22;
      }
    }

    else
    {
      v101 = 0u;
      v102 = 0u;
    }

    sub_1E325F748(&v101, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_20;
  }

LABEL_22:
  sub_1E34AF5F4(v3);
  return v4;
}

uint64_t sub_1E40A45AC(uint64_t a1)
{
  OUTLINED_FUNCTION_94(a1);
  *v1 = sub_1E40A4228();
  return OUTLINED_FUNCTION_116();
}

id sub_1E40A462C(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0, &unk_1E42A1250);
  v2 = sub_1E42062A4();

  v3 = [v1 initWithMAPIDictionaries_];

  return v3;
}

uint64_t sub_1E40A46BC(uint64_t a1)
{
  OUTLINED_FUNCTION_94(a1);
  *v1 = sub_1E40A460C();
  return OUTLINED_FUNCTION_116();
}

id sub_1E40A473C(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = v2;
  v4 = *a1;
  v5 = *(v2 + *a1);
  v6 = v5;
  if (v5 == 1)
  {
    v7 = *(v3 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity_attributeDict);
    if (v7)
    {
      v8 = a2();
      v9 = *v8;
      v10 = v8[1];

      sub_1E3277E60(v9, v10, v7, &v16);

      if (*(&v17 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
        if (swift_dynamicCast())
        {
          sub_1E3280A90(0, &qword_1ECF3F710, 0x1E69E1560);
          v11 = sub_1E388A824(v15);

          v6 = sub_1E40A462C(v11);
LABEL_9:
          v12 = *(v3 + v4);
          *(v3 + v4) = v6;
          v13 = v6;
          sub_1E329CC84(v12);
          goto LABEL_10;
        }

LABEL_8:
        v6 = 0;
        goto LABEL_9;
      }
    }

    else
    {
      v16 = 0u;
      v17 = 0u;
    }

    sub_1E325F748(&v16, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_8;
  }

LABEL_10:
  sub_1E34AF5F4(v5);
  return v6;
}

uint64_t sub_1E40A48A4(uint64_t a1)
{
  OUTLINED_FUNCTION_94(a1);
  *v1 = sub_1E40A471C();
  return OUTLINED_FUNCTION_116();
}

void sub_1E40A4904(uint64_t a1, char a2, void *a3, void (*a4)(uint64_t))
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(v5 + *a3);
  *(v5 + *a3) = *a1;
  if (a2)
  {
    v8 = v4;
    a4(v6);
  }

  else
  {

    a4(v6);
  }
}

uint64_t sub_1E40A4994()
{
  v1 = OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___isFullyWatched;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___isFullyWatched);
  if (v2 == 2)
  {
    v3 = objc_opt_self();
    OUTLINED_FUNCTION_8();
    v5 = (*(v4 + 616))();
    LOBYTE(v2) = [v3 playedStateForDuration:0 elapsedTime:0 hasBeenPlayed:0 playCount:v5 respectPlayCount:(*(*v0 + 640))()] == 3;
    *(v0 + v1) = v2;
  }

  return v2 & 1;
}

void (*sub_1E40A4A88(void *a1))(uint64_t *a1)
{
  OUTLINED_FUNCTION_69_1(a1);
  *(v1 + 8) = sub_1E40A4994() & 1;
  return sub_1E40A4AD0;
}

uint64_t sub_1E40A4B20(uint64_t a1)
{
  v2 = sub_1E41FFCB4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_14_10(OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___duration);
  *(v6 + 8) = 1;
  OUTLINED_FUNCTION_14_10(OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___bookmarkTime);
  *(v7 + 8) = 1;
  OUTLINED_FUNCTION_14_10(OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___assetType);
  *(v8 + 8) = 256;
  v42 = xmmword_1E4297170;
  *(v1 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___hlsPlaylistURLString) = xmmword_1E4297170;
  OUTLINED_FUNCTION_14_10(OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___resolutionClass);
  *(v9 + 8) = v10;
  OUTLINED_FUNCTION_14_10(OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___videoRange);
  *(v11 + 8) = v12;
  *(v1 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___hasDolbyAtmos) = 3;
  v13 = v1 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___storeID;
  *(v13 + 4) = v12;
  *v13 = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v14);
  *(v1 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___allowsManualDownloadRenewal) = 3;
  *(v1 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___renewsOfflineKeysAutomatically) = 3;
  *(v1 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___redownloadParams) = v42;
  *(v1 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___markAsDeleted) = 3;
  *(v1 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___contentRating) = 1;
  *(v1 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___offers) = 1;
  *(v1 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___personalizedOffers) = 1;
  *(v1 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___isFullyWatched) = 2;

  v22 = sub_1E38AFA6C(v21);
  v23 = v22;
  if (!v22)
  {
LABEL_6:

    return v23;
  }

  v24 = *(*v22 + 312);

  v24(v44, v25);
  if (v45 == 255)
  {
  }

  else
  {
    v26 = sub_1E325F748(v44, &qword_1ECF2A450, &qword_1E429D7C0);
    v27 = (*(*v23 + 232))(v26);
    v29 = v28;

    v30 = HIBYTE(v29) & 0xF;
    if ((v29 & 0x2000000000000000) == 0)
    {
      v30 = v27 & 0xFFFFFFFFFFFFLL;
    }

    if (v30)
    {
      goto LABEL_6;
    }
  }

  v31 = sub_1E41A3110();
  (*(v3 + 16))(v5, v31, v2);

  v32 = sub_1E41FFC94();
  v33 = sub_1E4206814();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v43 = v35;
    *v34 = 136315138;
    v36 = sub_1E4205C74();
    *&v42 = v2;
    v37 = v3;
    v39 = v38;

    v40 = sub_1E3270FC8(v36, v39, &v43);

    *(v34 + 4) = v40;
    _os_log_impl(&dword_1E323F000, v32, v33, "LibFamilySharingPlayableMediaEntity:: received family sharing bad data %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x1E69143B0](v35, -1, -1);
    MEMORY[0x1E69143B0](v34, -1, -1);

    (*(v37 + 8))(v5, v42);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  return 0;
}

void sub_1E40A4F44()
{
  sub_1E37E9E48(*(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___hlsPlaylistURLString), *(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___hlsPlaylistURLString + 8));
  sub_1E325F748(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___downloadExpirationDate, &qword_1ECF2CDE0, &unk_1E42B0D70);
  sub_1E325F748(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___availabilityEndDate, &qword_1ECF2CDE0, &unk_1E42B0D70);
  sub_1E37E9E48(*(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___redownloadParams), *(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___redownloadParams + 8));
  sub_1E329CC84(*(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___contentRating));
  sub_1E329CC84(*(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___offers));
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___personalizedOffers);

  sub_1E329CC84(v1);
}

uint64_t sub_1E40A4FF8()
{
  v0 = sub_1E38AFC04();
  sub_1E37E9E48(*(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___hlsPlaylistURLString), *(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___hlsPlaylistURLString + 8));
  sub_1E325F748(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___downloadExpirationDate, &qword_1ECF2CDE0, &unk_1E42B0D70);
  sub_1E325F748(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___availabilityEndDate, &qword_1ECF2CDE0, &unk_1E42B0D70);
  sub_1E37E9E48(*(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___redownloadParams), *(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___redownloadParams + 8));
  sub_1E329CC84(*(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___contentRating));
  sub_1E329CC84(*(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___offers));
  sub_1E329CC84(*(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___personalizedOffers));
  return v0;
}

uint64_t sub_1E40A50AC()
{
  v0 = sub_1E40A4FF8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

unint64_t sub_1E40A5330()
{
  OUTLINED_FUNCTION_5_2();
  v1 = (*(v0 + 784))();
  return v1 | ((HIDWORD(v1) & 1) << 32);
}

unint64_t sub_1E40A5568(uint64_t a1)
{
  result = sub_1E402C59C();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for LibFamilySharingPlayableMediaEntity(uint64_t a1)
{
  result = qword_1EE291040;
  if (!qword_1EE291040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E40A55E4(uint64_t a1)
{
  sub_1E38B0440(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E40A56D0(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(*(a4 + 48) + 16 * result);

    return v4;
  }

LABEL_8:
  __break(1u);
  return result;
}

double String.widthOfString(usingFont:)(void *a1)
{
  v2 = sub_1E4205ED4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF34380, qword_1E42BF480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  v4 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F720, &qword_1E42E9BD8);
  *(inited + 40) = a1;
  type metadata accessor for Key(0);
  sub_1E3B9794C(&qword_1EE23B100, &unk_1E429A0E0);
  v5 = v4;
  v6 = a1;
  sub_1E4205CB4();
  v7 = sub_1E4205C44();

  [v2 sizeWithAttributes_];
  v9 = v8;

  return ceil(v9);
}

void sub_1E40A588C(uint64_t a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F728, &qword_1E42E9BE0);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v36 - v5;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F730, &qword_1E42E9BE8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v40 = v8;
  v9 = *(v1 + 8);
  v10 = v9;
  if (!v9)
  {
    OUTLINED_FUNCTION_8();
    v10 = (*(v11 + 392))();
  }

  sub_1E40A5DF4(23);
  v13 = v12;
  if (v12 && *v12 != _TtC8VideosUI13TextViewModel)
  {

    v13 = 0;
  }

  sub_1E40A5DF4(15);
  v15 = v14;
  if (v14 && *v14 != _TtC8VideosUI13TextViewModel)
  {

    v15 = 0;
  }

  sub_1E40A5DF4(60);
  v17 = v16;
  v18 = v15;
  if (v15)
  {
    goto LABEL_12;
  }

  if (v13)
  {
    swift_retain_n();
    v18 = v13;
LABEL_12:
    v16 = swift_retain_n();
    goto LABEL_13;
  }

  v18 = 0;
LABEL_13:
  v38 = v17;
  if (v9)
  {
    if (v18)
    {
      v19 = *(*v9 + 1624);
      v20 = v18[49];

      v21 = v19(v20, 0);

      if (v21)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }
  }

  else if (v18)
  {
LABEL_18:
    v21 = (*(*v18 + 392))(v16);
    goto LABEL_20;
  }

  v21 = 0;
LABEL_20:

  if (v21)
  {
    type metadata accessor for TextLayout();
    v22 = swift_dynamicCastClass();
    if (v22)
    {
      v23 = v22;
      v24 = *(*v22 + 152);

      v37 = v23;
      v24(&v42, v25);

      OUTLINED_FUNCTION_32_1();
      goto LABEL_25;
    }
  }

  v37 = 0;
LABEL_25:
  *v6 = sub_1E4201D54();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F738, &qword_1E42E9BF0);
  sub_1E40A5FE0(v13, v2, v38, v15, &v6[*(v26 + 44)]);
  v27 = sub_1E4202764();
  sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v27)
  {
    sub_1E4202774();
  }

  if (v10)
  {
    v28 = *(*v10 + 152);

    v28(&v43, v29);

    OUTLINED_FUNCTION_32_1();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  v30 = v40;
  sub_1E329E454(v6, v40, &qword_1ECF3F728, &qword_1E42E9BE0);
  OUTLINED_FUNCTION_32_4(v30 + *(v39 + 36));
  v31 = sub_1E4202784();
  sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v31)
  {
    sub_1E4202774();
  }

  if (v10)
  {
    v32 = *(*v10 + 152);

    v32(v44, v33);

    OUTLINED_FUNCTION_32_1();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();

  v34 = v41;
  sub_1E329E454(v30, v41, &qword_1ECF3F730, &qword_1E42E9BE8);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F740, qword_1E42E9BF8);
  OUTLINED_FUNCTION_32_4(v34 + *(v35 + 36));
}

void sub_1E40A5DF4(uint64_t a1)
{
  OUTLINED_FUNCTION_8();
  v3 = (*(v2 + 488))();
  if (!v3 || (v5 = sub_1E373E010(a1, v3, v4), , !v5))
  {
    OUTLINED_FUNCTION_8();
    v7 = (*(v6 + 464))();
    if (v7)
    {
      v8 = v7;
      v9 = sub_1E32AE9B0(v7);
      for (i = 0; ; ++i)
      {
        if (v9 == i)
        {

          return;
        }

        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x1E6911E60](i, v8);
        }

        else
        {
          if (i >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }
        }

        if (__OFADD__(i, 1))
        {
          break;
        }

        sub_1E3742F1C(v11, v12, v13);
        sub_1E4206254();
        sub_1E4206254();
        if (v18 == v16 && v19 == v17)
        {

LABEL_20:

          return;
        }

        v15 = sub_1E42079A4();

        if (v15)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
    }
  }
}

uint64_t sub_1E40A5FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int16 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v149 = a4;
  v148 = a3;
  v9 = sub_1E4201CB4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v123 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v143 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_17_3(&v123 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v132 = v18;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v20);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CC0, &qword_1E4298440);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_5();
  v130 = v22;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F9A8, &qword_1E42AF320);
  v26 = OUTLINED_FUNCTION_17_2(v25);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v123 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F760, &qword_1E42E9CB0);
  OUTLINED_FUNCTION_17_2(v31);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v123 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F768, &qword_1E42E9CB8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_2_5();
  v136 = v37;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v123 - v39;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F770, &qword_1E42E9CC0);
  OUTLINED_FUNCTION_17_2(v43);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v45);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F778, &qword_1E42E9CC8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v47);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F780, &qword_1E42E9CD0);
  OUTLINED_FUNCTION_0_10();
  v140 = v48;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F788, &qword_1E42E9CD8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_44();
  if (a1)
  {
    v54 = a1;
    v126 = v53;
    v134 = v52;
    v127 = v14;
    v128 = v11;
    v129 = v9;
    v135 = a5;
    v55 = a2;
    v157 = *(a2 + 8);
    if (v157)
    {
      OUTLINED_FUNCTION_8();
      v57 = *(v56 + 1624);
      v59 = v58;
      v60 = *(v58 + 98);

      sub_1E40A754C(&v157, &v156);
      v61 = v57(v60, 0);
      v62 = sub_1E40A75BC(&v157);
      if (v61)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v59 = v54;
    }

    v64 = (*(*v59 + 392))(v62);
    if (!v64)
    {
      goto LABEL_20;
    }

    v61 = v64;
LABEL_9:
    type metadata accessor for TextLayout();
    v65 = swift_dynamicCastClass();
    if (v65)
    {
      v124 = v28;
      v66 = *(*v65 + 152);

      v66(&v153, v67);
      OUTLINED_FUNCTION_32_1();
      (v66)(v154);
      v125 = v61;

      if (v155)
      {
        v68 = 0;
      }

      else
      {
        v68 = v154[3];
      }

      v69 = sub_1E4201D54();
      v70 = v150;
      *v150 = v69;
      v70[1] = 0;
      *(v70 + 16) = 0;
      *v34 = sub_1E4201B84();
      *(v34 + 1) = v68;
      v34[16] = 0;
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F790, &qword_1E42E9CE0);
      sub_1E40A6DB4(v148, v55, &v34[*(v71 + 44)]);
      v72 = sub_1E4202744();
      sub_1E4202774();
      sub_1E4202774();
      if (sub_1E4202774() != v72)
      {
        sub_1E4202774();
      }

      sub_1E4200A54();
      OUTLINED_FUNCTION_9_10();
      sub_1E329E454(v34, v40, &qword_1ECF3F760, &qword_1E42E9CB0);
      OUTLINED_FUNCTION_14_179(&v40[*(v35 + 36)]);
      sub_1E329E454(v40, v146, &qword_1ECF3F768, &qword_1E42E9CB8);
      v73 = v124;
      v74 = v149;
      if (!v149)
      {
        goto LABEL_29;
      }

      if (v157)
      {
        OUTLINED_FUNCTION_8();
        v76 = *(v75 + 1624);
        v78 = *(*(v77 - 256) + 98);
        sub_1E40A754C(&v157, &v156);

        v79 = v76(v78, 0);
        v74 = v149;
        v80 = v79;
        v81 = sub_1E40A75BC(&v157);
        if (v80)
        {
          goto LABEL_23;
        }
      }

      else
      {
      }

      if (!(*(*v74 + 392))(v81))
      {
LABEL_28:

LABEL_29:
        v96 = 1;
        v87 = v137;
LABEL_30:
        v97 = v145;
        __swift_storeEnumTagSinglePayload(v145, v96, 1, v87);
        v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F798, &qword_1E42E9CE8);
        v99 = v150 + *(v98 + 44);
        v100 = v146;
        v101 = v136;
        OUTLINED_FUNCTION_38_2();
        sub_1E3294EE4(v102, v103, v104, v105);
        sub_1E3294EE4(v97, v73, &qword_1ECF2F9A8, &qword_1E42AF320);
        OUTLINED_FUNCTION_38_2();
        sub_1E3294EE4(v106, v107, v108, v109);
        v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F7A0, &qword_1E42E9CF0);
        sub_1E3294EE4(v73, &v99[*(v110 + 48)], &qword_1ECF2F9A8, &qword_1E42AF320);
        sub_1E325F6F0(v97, &qword_1ECF2F9A8, &qword_1E42AF320);
        sub_1E325F6F0(v100, &qword_1ECF3F768, &qword_1E42E9CB8);
        sub_1E325F6F0(v73, &qword_1ECF2F9A8, &qword_1E42AF320);
        sub_1E325F6F0(v101, &qword_1ECF3F768, &qword_1E42E9CB8);
        v111 = sub_1E4202754();
        sub_1E4202774();
        sub_1E4202774();
        if (sub_1E4202774() != v111)
        {
          sub_1E4202774();
        }

        sub_1E4200A54();
        OUTLINED_FUNCTION_3();
        v112 = v138;
        sub_1E329E454(v150, v138, &qword_1ECF3F770, &qword_1E42E9CC0);
        OUTLINED_FUNCTION_32_4(v112 + *(v147 + 36));
        v113 = v142;
        sub_1E4202474();
        v114 = sub_1E40A743C();
        v115 = v139;
        sub_1E4203224();
        (*(v143 + 8))(v113, v144);
        sub_1E325F6F0(v112, &qword_1ECF3F778, &qword_1E42E9CC8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35270, &unk_1E42C3980);
        v116 = v128;
        v117 = v127;
        if (v148)
        {
          v118 = swift_allocObject();
          *(v118 + 16) = xmmword_1E4299720;
          sub_1E4201CA4();
          sub_1E4201C94();
        }

        else
        {
          v118 = swift_allocObject();
          *(v118 + 16) = xmmword_1E4297BE0;
          sub_1E4201CA4();
        }

        v151 = v118;
        sub_1E40A74F4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35278, &qword_1E42C91A0);
        sub_1E32752B0(&qword_1EE23B5D8, &qword_1ECF35278, &qword_1E42C91A0, MEMORY[0x1E69E6328]);
        v119 = v129;
        sub_1E42072E4();
        v151 = v147;
        v152 = v114;
        swift_getOpaqueTypeConformance2();
        v120 = v126;
        v121 = v141;
        sub_1E4203294();

        (*(v116 + 8))(v117, v119);
        (*(v140 + 8))(v115, v121);
        a5 = v135;
        sub_1E329E454(v120, v135, &qword_1ECF3F788, &qword_1E42E9CD8);
        v63 = 0;
        goto LABEL_36;
      }

LABEL_23:
      v82 = swift_dynamicCastClass();
      if (v82)
      {
        v83 = *(*v82 + 152);

        v83(&v156, v84);

        OUTLINED_FUNCTION_32_1();

        OUTLINED_FUNCTION_18();
        v85 = v131;
        sub_1E3F23370();

        LOBYTE(v83) = sub_1E4202744();
        sub_1E4202774();
        sub_1E4202774();
        if (sub_1E4202774() != v83)
        {
          sub_1E4202774();
        }

        sub_1E4200A54();
        OUTLINED_FUNCTION_9_10();

        v86 = v130;
        (*(v132 + 32))(v130, v85, v133);
        v87 = v137;
        OUTLINED_FUNCTION_14_179(v86 + *(v137 + 36));
        OUTLINED_FUNCTION_38_2();
        sub_1E329E454(v88, v89, v90, v91);
        OUTLINED_FUNCTION_38_2();
        sub_1E329E454(v92, v93, v94, v95);
        v96 = 0;
        goto LABEL_30;
      }

      goto LABEL_28;
    }

LABEL_20:

    v63 = 1;
    a5 = v135;
LABEL_36:
    v52 = v134;
    return __swift_storeEnumTagSinglePayload(a5, v63, 1, v52);
  }

  v63 = 1;
  return __swift_storeEnumTagSinglePayload(a5, v63, 1, v52);
}

uint64_t sub_1E40A6DB4@<X0>(unsigned __int16 *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v66 = a3;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29878, &unk_1E429C0E0);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v56 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F7B8, &qword_1E42E9CF8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_5();
  v59 = v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25_3();
  v58 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F7C0, &qword_1E42E9D00);
  v16 = OUTLINED_FUNCTION_17_2(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_5();
  v65 = v17;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_25_3();
  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v62 = v22;
  v63 = v21;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_5();
  v64 = v23;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v56 - v25;
  OUTLINED_FUNCTION_18();
  v61 = v26;
  sub_1E3F23370();
  if (a1)
  {
    v27 = *(a2 + 8);
    v70 = v27;
    if (v27)
    {
      v28 = *v27;
      v57 = v6;
      v29 = v10;
      v30 = *(v28 + 1624);
      v31 = a1[49];

      sub_1E40A754C(&v70, &v68);
      v32 = v30(v31, 0);
      v10 = v29;
      v6 = v57;
      v33 = v32;
      v34 = sub_1E40A75BC(&v70);
      if (v33)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    if (!(*(*a1 + 392))(v34))
    {
      v36 = 0;
LABEL_11:
      sub_1E3EC24F4(a1, v36, 0, 0);

      v68 = *(a2 + 16);
      v69 = *(a2 + 32);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299C8, &qword_1E42B22C0);
      MEMORY[0x1E690E3F0](&v67, v37);

      v38 = v9;
      v39 = v67;
      KeyPath = swift_getKeyPath();
      v41 = swift_allocObject();
      *(v41 + 16) = v39;
      v42 = v59;
      (*(v6 + 32))(v59, v38, v60);
      v43 = (v42 + *(v10 + 36));
      *v43 = KeyPath;
      v43[1] = sub_1E37E09AC;
      v43[2] = v41;
      v44 = v58;
      sub_1E329E454(v42, v58, &qword_1ECF3F7B8, &qword_1E42E9CF8);
      sub_1E329E454(v44, v20, &qword_1ECF3F7B8, &qword_1E42E9CF8);
      v35 = 0;
      goto LABEL_12;
    }

LABEL_8:
    type metadata accessor for ButtonLayout();
    v36 = swift_dynamicCastClass();
    if (!v36)
    {
    }

    goto LABEL_11;
  }

  v35 = 1;
LABEL_12:
  v45 = v20;
  __swift_storeEnumTagSinglePayload(v20, v35, 1, v10);
  v46 = v61;
  v47 = v62;
  v48 = *(v62 + 16);
  v50 = v63;
  v49 = v64;
  v48(v64, v61, v63);
  v51 = v65;
  sub_1E3294EE4(v45, v65, &qword_1ECF3F7C0, &qword_1E42E9D00);
  v52 = v66;
  v48(v66, v49, v50);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F7C8, &unk_1E42E9D08);
  sub_1E3294EE4(v51, v52 + *(v53 + 48), &qword_1ECF3F7C0, &qword_1E42E9D00);
  sub_1E325F6F0(v45, &qword_1ECF3F7C0, &qword_1E42E9D00);
  v54 = *(v47 + 8);
  v54(v46, v50);
  sub_1E325F6F0(v51, &qword_1ECF3F7C0, &qword_1E42E9D00);
  return (v54)(v49, v50);
}

unint64_t sub_1E40A72F8()
{
  result = qword_1ECF3F748;
  if (!qword_1ECF3F748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F740, qword_1E42E9BF8);
    sub_1E40A7384();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F748);
  }

  return result;
}

unint64_t sub_1E40A7384()
{
  result = qword_1ECF3F750;
  if (!qword_1ECF3F750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F730, &qword_1E42E9BE8);
    sub_1E32752B0(&qword_1ECF3F758, &qword_1ECF3F728, &qword_1E42E9BE0, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F750);
  }

  return result;
}

unint64_t sub_1E40A743C()
{
  result = qword_1ECF3F7A8;
  if (!qword_1ECF3F7A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F778, &qword_1E42E9CC8);
    sub_1E32752B0(&qword_1ECF3F7B0, &qword_1ECF3F770, &qword_1E42E9CC0, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F7A8);
  }

  return result;
}

unint64_t sub_1E40A74F4()
{
  result = qword_1EE289298;
  if (!qword_1EE289298)
  {
    sub_1E4201CB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289298);
  }

  return result;
}

uint64_t sub_1E40A754C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF342D8, &qword_1E42BF4D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E40A75BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF342D8, &qword_1E42BF4D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E40A7624()
{
  result = sub_1E4205CB4();
  qword_1EE2AA8E0 = result;
  return result;
}

uint64_t sub_1E40A7664()
{
  result = sub_1E4205CB4();
  qword_1EE2AA8B0 = result;
  return result;
}

unint64_t sub_1E40A76A4()
{
  v0 = sub_1E4207784();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E40A76F0(char a1)
{
  result = 0x6E6F74747542;
  switch(a1)
  {
    case 1:
      result = 1819043139;
      break;
    case 2:
      result = 1935827284;
      break;
    case 3:
      result = 0x686372616553;
      break;
    case 4:
      result = 0x626174627553;
      break;
    case 5:
      result = 0x746E656D75636F44;
      break;
    case 6:
      result = 1954047316;
      break;
    case 7:
      result = 0x676F6C616944;
      break;
    case 8:
      result = 0x65697669746C754DLL;
      break;
    case 9:
      result = 0x6567616D49;
      break;
    case 10:
      result = 0x6F74616369646E49;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E40A7800(unsigned __int8 a1, char a2)
{
  v2 = 0x6E6F74747542;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x6E6F74747542;
  switch(v4)
  {
    case 1:
      v3 = 0xE400000000000000;
      v5 = 1819043139;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1935827284;
      break;
    case 3:
      v5 = 0x686372616553;
      break;
    case 4:
      v5 = 0x626174627553;
      break;
    case 5:
      v3 = 0xE800000000000000;
      v5 = 0x746E656D75636F44;
      break;
    case 6:
      v3 = 0xE400000000000000;
      v5 = 1954047316;
      break;
    case 7:
      v5 = 0x676F6C616944;
      break;
    case 8:
      v5 = 0x65697669746C754DLL;
      v3 = 0xE900000000000077;
      break;
    case 9:
      v3 = 0xE500000000000000;
      v5 = 0x6567616D49;
      break;
    case 10:
      v5 = 0x6F74616369646E49;
      v3 = 0xE900000000000072;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE400000000000000;
      v2 = 1819043139;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1935827284;
      break;
    case 3:
      v2 = 0x686372616553;
      break;
    case 4:
      v2 = 0x626174627553;
      break;
    case 5:
      v6 = 0xE800000000000000;
      v2 = 0x746E656D75636F44;
      break;
    case 6:
      v6 = 0xE400000000000000;
      v2 = 1954047316;
      break;
    case 7:
      v2 = 0x676F6C616944;
      break;
    case 8:
      v2 = 0x65697669746C754DLL;
      v6 = 0xE900000000000077;
      break;
    case 9:
      v6 = 0xE500000000000000;
      v2 = 0x6567616D49;
      break;
    case 10:
      v2 = 0x6F74616369646E49;
      v6 = 0xE900000000000072;
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

uint64_t sub_1E40A7A58(char a1)
{
  sub_1E4207B44();
  sub_1E40A76F0(a1);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E40A7AC4(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E40A7C04(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E40A76F0(a2);
  sub_1E4206014();

  return sub_1E4207BA4();
}

unint64_t sub_1E40A7C64@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E40A76A4();
  *a1 = result;
  return result;
}

uint64_t sub_1E40A7C94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E40A76F0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E40A7CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Accessibility();
  sub_1E40A7DC8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F7D0, &unk_1E42E9D50);
  sub_1E32752B0(&qword_1EE2888D8, &qword_1ECF3F7D0, &unk_1E42E9D50, MEMORY[0x1E697FDF8]);
  sub_1E4202EA4();
}

void sub_1E40A7DC8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  if (!v1)
  {
    OUTLINED_FUNCTION_14_180();
    v13 = sub_1E324FBDC();
    (*(v8 + 16))(v12, v13, v6);
    v14 = sub_1E41FFC94();
    v15 = sub_1E42067E4();
    if (os_log_type_enabled(v14, v15))
    {
      OUTLINED_FUNCTION_6_21();
      v21 = OUTLINED_FUNCTION_10_11();
      v22[0] = v21;
      *v3 = 136315138;
      v16 = sub_1E40A76F0(v5);
      v18 = sub_1E3270FC8(v16, v17, v22);

      *(v3 + 4) = v18;
      _os_log_impl(&dword_1E323F000, v14, v15, "Accessibility:: no additionalIdString for %s. Using Default", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_14_180();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v8 + 8))(v12, v6);
  }

  v19 = sub_1E40A76F0(v5);
  v20 = 0xE700000000000000;
  v22[0] = 0x2E56542E414955;
  v22[1] = 0xE700000000000000;
  MEMORY[0x1E69109E0](v19);

  OUTLINED_FUNCTION_16_155();

  if (v1)
  {
    v20 = v1;
  }

  MEMORY[0x1E69109E0](v3, v20);

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E40A7FF0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6[0] = a1;
  v6[1] = a2;
  v7 = a3;
  return MEMORY[0x1E690DE70](v6, a4, &type metadata for AccessibilityIdentifier, a5);
}

void sub_1E40A802C()
{
  OUTLINED_FUNCTION_31_1();
  v56 = v0;
  v2 = v1;
  v4 = v3;
  LODWORD(v55) = v5;
  v7 = v6;
  v59 = v8;
  v53 = *(v3 - 8);
  v54 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v53 - v14;
  v16 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v53 - v24;
  v26 = sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v58 = v27;
  v29 = MEMORY[0x1EEE9AC00](v28);
  v57 = &v53 - v30;
  if (v7)
  {
    v62[0] = v54;
    v62[1] = v7;
    v63 = v55;
    v55 = v26;
    v31 = MEMORY[0x1E690DE70](v62, v4, &type metadata for AccessibilityIdentifier, v2, v29);
    v34 = sub_1E40A9828(v31, v32, v33);
    v60 = v2;
    v61 = v34;
    OUTLINED_FUNCTION_4_1();
    swift_getWitnessTable();
    v35 = *(v18 + 16);
    v35(v25, v22, v16);
    v36 = *(v18 + 8);
    v36(v22, v16);
    v35(v22, v25, v16);
    v37 = v2;
    v26 = v55;
    v38 = v57;
    sub_1E37B8D98(v22, v16);
    v36(v22, v16);
    v39 = (v36)(v25, v16);
  }

  else
  {
    v42 = v53;
    v43 = *(v53 + 16);
    v43(v15, v56, v4, v29);
    v44 = (v43)(v12, v15, v4);
    v47 = sub_1E40A9828(v44, v45, v46);
    v37 = v2;
    v68 = v2;
    v69 = v47;
    OUTLINED_FUNCTION_4_1();
    swift_getWitnessTable();
    v48 = v57;
    sub_1E37B8E90(v12, v16, v4);
    v49 = *(v42 + 8);
    v49(v12, v4);
    v50 = v15;
    v38 = v48;
    v39 = (v49)(v50, v4);
  }

  v51 = sub_1E40A9828(v39, v40, v41);
  v66 = v37;
  v67 = v51;
  OUTLINED_FUNCTION_4_1();
  WitnessTable = swift_getWitnessTable();
  v65 = v37;
  OUTLINED_FUNCTION_2_25();
  swift_getWitnessTable();
  v52 = v58;
  (*(v58 + 16))(v59, v38, v26);
  (*(v52 + 8))(v38, v26);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E40A8408()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FBA0, &unk_1E42B49D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v53 - v10;
  v13 = *(v1 + 16);
  v12 = *(v1 + 24);
  if (!v12 || (v55 = *(v1 + 16), v56 = v12, v60 = 0x7079746F746F7270, v61 = 0xE900000000000065, v14 = sub_1E41FE6C4(), v15 = __swift_storeEnumTagSinglePayload(v11, 1, 1, v14), sub_1E32822E0(v15, v16, v17), sub_1E4207234(), v19 = v18, sub_1E3F863D8(v11), (v19 & 1) != 0))
  {
    sub_1E40A8978();
    v22 = v20;
    if (v21)
    {
      v60 = v20;
      v61 = v21;
      v23 = sub_1E39C2CD0();
      if (v24)
      {
        v25 = v23;
        v26 = v24;
        v53 = v4;
        v54 = v2;
        v27 = sub_1E3CFEA54();
        v28 = *(**v27 + 144);

        LOBYTE(v28) = v28(v29);

        if (v28)
        {
          v30 = *(**v27 + 376);

          v31 = v30(v25, v26);
        }

        else
        {

          v57 = &unk_1F5D5D528;
          v58 = &off_1F5D5C858;
          LOBYTE(v55) = 0;
          v32 = j__OUTLINED_FUNCTION_18();
          v31 = sub_1E39C29F0(&v55, v32 & 1);
          __swift_destroy_boxed_opaque_existential_1(&v55);
        }

        v55 = 0;
        v56 = 0xE000000000000000;
        OUTLINED_FUNCTION_16_155();
        if (v31)
        {
          v33 = 2;
        }

        else
        {
          v33 = 3;
        }

        LOBYTE(v59) = v33;
        sub_1E4207614();
        v22 = v56;
        MEMORY[0x1E69109E0](v55, v56);

        v4 = v53;
        v2 = v54;
      }

      sub_1E40A8F40();
      if (v35)
      {
        v55 = 0x49746E657261702ELL;
        v56 = 0xEB00000000223D64;
        MEMORY[0x1E69109E0]();

        MEMORY[0x1E69109E0](34, 0xE100000000000000);
        v22 = v56;
        MEMORY[0x1E69109E0](v55, v56);
      }

      if (v12)
      {
        OUTLINED_FUNCTION_10_174();
        MEMORY[0x1E69109E0](v13, v12);
        MEMORY[0x1E69109E0](34, 0xE100000000000000);
        MEMORY[0x1E69109E0](v55, v56);
LABEL_17:

LABEL_26:
        sub_1E40A7DC8();

        goto LABEL_27;
      }

      v36 = (*(*v1 + 624))(v34);
      if (v36)
      {
        v41 = v36;
        if (sub_1E373F6E0(*(v36 + 98), 171, v37, v38, v39, v40))
        {
          v42 = *(v41 + 24);
          if (v42)
          {
            v43 = *(v41 + 16);
            OUTLINED_FUNCTION_10_174();

            MEMORY[0x1E69109E0](v43, v42);

            MEMORY[0x1E69109E0](34, 0xE100000000000000);
            MEMORY[0x1E69109E0](v55, v56);

            goto LABEL_17;
          }
        }
      }

      v44 = sub_1E324FBDC();
      (*(v4 + 16))(v8, v44, v2);

      v45 = sub_1E41FFC94();
      v46 = sub_1E42067E4();

      if (os_log_type_enabled(v45, v46))
      {
        OUTLINED_FUNCTION_6_21();
        v47 = OUTLINED_FUNCTION_10_11();
        v55 = v47;
        *v22 = 136315138;
        v59 = *(v1 + 98);
        sub_1E37D144C(v47, v48, v49);
        v50 = sub_1E4207944();
        v52 = sub_1E3270FC8(v50, v51, &v55);

        *(v22 + 4) = v52;
        _os_log_impl(&dword_1E323F000, v45, v46, "Accessibility:: no identifier found for %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v47);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      (*(v4 + 8))(v8, v2);
      goto LABEL_26;
    }
  }

LABEL_27:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E40A8978()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = v7 - v8;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v71 - v12;
  v14 = (*(*v2 + 320))(v11);
  if (!v15)
  {
    v21 = sub_1E324FBDC();
    (*(v5 + 16))(v9, v21, v3);

    v22 = sub_1E41FFC94();
    v23 = sub_1E42067E4();

    if (os_log_type_enabled(v22, v23))
    {
      OUTLINED_FUNCTION_6_21();
      v24 = OUTLINED_FUNCTION_10_11();
      v74 = v24;
      *v0 = 136315138;
      v25 = (*(*v2 + 376))();
      v27 = sub_1E3270FC8(v25, v26, &v74);

      *(v0 + 4) = v27;
      _os_log_impl(&dword_1E323F000, v22, v23, "Accessibility:: no accessibilityIdentifier for %s", v0, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v5 + 8))(v9, v3);
    goto LABEL_19;
  }

  v74 = 46;
  v75 = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v14);
  *(&v71 - 2) = &v74;
  v18 = sub_1E37D273C(0x7FFFFFFFFFFFFFFFLL, 1, sub_1E3756228, (&v71 - 4), v16, v17, &v71);
  v19 = v18;
  v20 = *(v18 + 2);
  if (v20 < 2)
  {

    goto LABEL_16;
  }

  v28 = *(v18 + 4);
  v29 = *(v18 + 5);
  v30 = *(v18 + 6);
  v31 = *(v18 + 7);

  v32 = MEMORY[0x1E6910920](v28, v29, v30, v31);
  v34 = v33;

  if (*(v19 + 2) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v73 = v3;
    v35 = *(v19 + 8);
    v36 = *(v19 + 9);
    v37 = *(v19 + 10);
    v38 = *(v19 + 11);

    v39 = MEMORY[0x1E6910920](v35, v36, v37, v38);
    v41 = v40;

    if (v20 == 2)
    {

      v42 = 0;
      v43 = 0xE000000000000000;
      goto LABEL_12;
    }

    v72 = v39;
    v44 = *(v19 + 2);
    if (v44 >= 2)
    {
      sub_1E39E8C20(2uLL, v44, v19);
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v52 = v51;

      v74 = v46;
      v75 = v48;
      v76 = v50;
      v77 = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F7E8, &qword_1E42E9EF0);
      v53 = sub_1E32752B0(&unk_1EE23ACE0, &qword_1ECF3F7E8, &qword_1E42E9EF0, MEMORY[0x1E69E6968]);
      sub_1E404AEC4(v53, v54, v55);
      v56 = sub_1E4206244();
      v58 = v57;
      swift_unknownObjectRelease();
      v74 = 46;
      v75 = 0xE100000000000000;
      MEMORY[0x1E69109E0](v56, v58);

      v42 = v74;
      v43 = v75;
      v39 = v72;
LABEL_12:
      sub_1E40A93D4(v32, v34, &_MergedGlobals_273, &qword_1EE2AA8E0, "Accessibility:: ViewModel accessibilityIdentifier does not map to a displayType for %s", v71);
      v60 = v59;
      v62 = v61;

      if (v62)
      {
        sub_1E40A93D4(v39, v41, &unk_1EE28CC28, &qword_1EE2AA8B0, "Accessibility:: ViewModel accessibilityIdentifier does not map to a navigationType for %s", v71);
        v64 = v63;
        v66 = v65;

        if (v66)
        {
          v74 = v60;
          v75 = v62;
          OUTLINED_FUNCTION_16_155();
          MEMORY[0x1E69109E0](v64, v66);

          MEMORY[0x1E69109E0](v42, v43);

LABEL_19:
          OUTLINED_FUNCTION_25_2();
          return;
        }
      }

      v3 = v73;
LABEL_16:
      v67 = sub_1E324FBDC();
      (*(v5 + 16))(v13, v67, v3);
      v68 = sub_1E41FFC94();
      v69 = sub_1E42067F4();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&dword_1E323F000, v68, v69, "Accessibility:: ViewModel accessibilityIdentifier should be two integers separated by a period", v70, 2u);
        OUTLINED_FUNCTION_6_0();
      }

      (*(v5 + 8))(v13, v3);
      goto LABEL_19;
    }
  }

  __break(1u);
}

void sub_1E40A8F40()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  if (!sub_1E385053C())
  {
    v9 = (*(*v1 + 624))();
    v10 = (v4 + 8);
    if (v9)
    {
      type metadata accessor for CollectionViewModel();
      do
      {
        if (swift_dynamicCastClass() || (type metadata accessor for EpisodeCollectionViewModel(), swift_dynamicCastClass()))
        {

          goto LABEL_11;
        }

        v11 = (*(*v9 + 624))();

        v9 = v11;
      }

      while (v11);
      v12 = sub_1E324FBDC();
      (*(v4 + 16))(v8, v12, v2);

      v13 = sub_1E41FFC94();
      v14 = sub_1E42067E4();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = OUTLINED_FUNCTION_6_21();
        v22 = swift_slowAlloc();
        v23 = v22;
        *v15 = 136315138;
        sub_1E37D144C(v22, v16, v17);
        v18 = sub_1E4207944();
        v20 = v10;
        v21 = sub_1E3270FC8(v18, v19, &v23);

        *(v15 + 4) = v21;
        v10 = v20;
        _os_log_impl(&dword_1E323F000, v13, v14, "Accessibility:: no parentId found for %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v22);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      (*v10)(v8, v2);
    }
  }

LABEL_11:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E40A91FC(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    (*(*a3 + 320))();
    if (v4)
    {
      sub_1E40A7DC8();
      v6 = v5;
      v8 = v7;

      if (a1)
      {

        sub_1E38E89A0(v6, v8, a1);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1E40A92F8()
{
  v2 = sub_1E4207944();
  OUTLINED_FUNCTION_16_155();
  v0 = sub_1E4207944();
  MEMORY[0x1E69109E0](v0);

  return v2;
}

void sub_1E40A93D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, ...)
{
  OUTLINED_FUNCTION_31_1();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  v22 = HIBYTE(v12) & 0xF;
  v23 = v14 & 0xFFFFFFFFFFFFLL;
  if ((v12 & 0x2000000000000000) != 0)
  {
    v24 = HIBYTE(v12) & 0xF;
  }

  else
  {
    v24 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {
    goto LABEL_73;
  }

  if ((v12 & 0x1000000000000000) != 0)
  {

    v27 = sub_1E37801A4(v14, v12, 10);
    v50 = v49;

    if ((v50 & 1) == 0)
    {
LABEL_70:
      if (*v10 != -1)
      {
        swift_once();
      }

      sub_1E40A97D0(v27, *v8);
      if (v43)
      {
        goto LABEL_76;
      }
    }

LABEL_73:
    v44 = sub_1E324FBDC();
    (*(v17 + 16))(v21, v44, v15);

    v45 = sub_1E41FFC94();
    v46 = sub_1E42067F4();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = OUTLINED_FUNCTION_6_21();
      v48 = swift_slowAlloc();
      v51[0] = v48;
      *v47 = 136315138;
      *(v47 + 4) = sub_1E3270FC8(v14, v12, v51);
      _os_log_impl(&dword_1E323F000, v45, v46, v6, v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v48);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v17 + 8))(v21, v15);
LABEL_76:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  if ((v12 & 0x2000000000000000) == 0)
  {
    if ((v14 & 0x1000000000000000) != 0)
    {
      v25 = ((v12 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v25 = sub_1E4207524();
    }

    v26 = *v25;
    if (v26 == 43)
    {
      if (v23 >= 1)
      {
        if (v23 != 1)
        {
          v27 = 0;
          if (v25)
          {
            while (1)
            {
              OUTLINED_FUNCTION_1_4();
              if (!v29 & v28)
              {
                goto LABEL_68;
              }

              OUTLINED_FUNCTION_1_21();
              if (!v29)
              {
                goto LABEL_68;
              }

              v27 = v36 + v35;
              if (__OFADD__(v36, v35))
              {
                goto LABEL_68;
              }

              OUTLINED_FUNCTION_132();
              if (v29)
              {
                goto LABEL_69;
              }
            }
          }

          goto LABEL_59;
        }

        goto LABEL_68;
      }

      goto LABEL_82;
    }

    if (v26 != 45)
    {
      if (v23)
      {
        v27 = 0;
        if (v25)
        {
          while (1)
          {
            v39 = *v25 - 48;
            if (v39 > 9)
            {
              goto LABEL_68;
            }

            v40 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              goto LABEL_68;
            }

            v27 = v40 + v39;
            if (__OFADD__(v40, v39))
            {
              goto LABEL_68;
            }

            ++v25;
            if (!--v23)
            {
              goto LABEL_59;
            }
          }
        }

        goto LABEL_59;
      }

LABEL_68:
      v27 = 0;
      v32 = 1;
LABEL_69:
      v52 = v32;
      if ((v32 & 1) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_73;
    }

    if (v23 >= 1)
    {
      if (v23 != 1)
      {
        v27 = 0;
        if (v25)
        {
          while (1)
          {
            OUTLINED_FUNCTION_1_4();
            if (!v29 & v28)
            {
              goto LABEL_68;
            }

            OUTLINED_FUNCTION_1_21();
            if (!v29)
            {
              goto LABEL_68;
            }

            v27 = v31 - v30;
            if (__OFSUB__(v31, v30))
            {
              goto LABEL_68;
            }

            OUTLINED_FUNCTION_132();
            if (v29)
            {
              goto LABEL_69;
            }
          }
        }

LABEL_59:
        v32 = 0;
        goto LABEL_69;
      }

      goto LABEL_68;
    }

    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v51[0] = v14;
  v51[1] = v12 & 0xFFFFFFFFFFFFFFLL;
  if (v14 != 43)
  {
    if (v14 != 45)
    {
      if (v22)
      {
        while (1)
        {
          OUTLINED_FUNCTION_1_4();
          if (!v29 & v28)
          {
            break;
          }

          OUTLINED_FUNCTION_1_21();
          if (!v29)
          {
            break;
          }

          v27 = v42 + v41;
          if (__OFADD__(v42, v41))
          {
            break;
          }

          OUTLINED_FUNCTION_132();
          if (v29)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    if (v22)
    {
      if (v22 != 1)
      {
        OUTLINED_FUNCTION_15_170();
        while (1)
        {
          OUTLINED_FUNCTION_1_4();
          if (!v29 & v28)
          {
            break;
          }

          OUTLINED_FUNCTION_1_21();
          if (!v29)
          {
            break;
          }

          v27 = v34 - v33;
          if (__OFSUB__(v34, v33))
          {
            break;
          }

          OUTLINED_FUNCTION_132();
          if (v29)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    goto LABEL_81;
  }

  if (v22)
  {
    if (v22 != 1)
    {
      OUTLINED_FUNCTION_15_170();
      while (1)
      {
        OUTLINED_FUNCTION_1_4();
        if (!v29 & v28)
        {
          break;
        }

        OUTLINED_FUNCTION_1_21();
        if (!v29)
        {
          break;
        }

        v27 = v38 + v37;
        if (__OFADD__(v38, v37))
        {
          break;
        }

        OUTLINED_FUNCTION_132();
        if (v29)
        {
          goto LABEL_69;
        }
      }
    }

    goto LABEL_68;
  }

LABEL_83:
  __break(1u);
}

uint64_t sub_1E40A97D0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1E3928950(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 16 * v3);

  return v5;
}

unint64_t sub_1E40A9828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE25E378[0];
  if (!qword_1EE25E378[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE25E378);
  }

  return result;
}

unint64_t sub_1E40A9880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3F7D8;
  if (!qword_1ECF3F7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F7D8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AccessibilityIdViewType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E40A99CC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1E40A9A0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E40A9A5C()
{
  result = qword_1EE289A68;
  if (!qword_1EE289A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F7E0, &qword_1E42E9EE8);
    sub_1E32752B0(&qword_1EE2888D8, &qword_1ECF3F7D0, &unk_1E42E9D50, MEMORY[0x1E697FDF8]);
    sub_1E3806164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289A68);
  }

  return result;
}

void sub_1E40A9BD8(double a1)
{
  if ((*(*v1 + 136))() != a1)
  {

    sub_1E40A9B9C(a1);
  }
}

double sub_1E40A9C44()
{

  sub_1E3B50380(&v1);

  return v1;
}

double sub_1E40A9C90(double a1, double a2)
{
  *v3 = a1;
  *&v3[1] = a2;

  sub_1E3B50420(v3);

  return result;
}

uint64_t (*sub_1E40A9CDC())()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_18_4(v2);
  *(v1 + 32) = *(v0 + OBJC_IVAR____TtC8VideosUI13ShowcaseValue__scrollViewContentOffset);

  sub_1E3B50380(v1);
  return sub_1E40A9D50;
}

void sub_1E40A9D50(_OWORD **a1)
{
  v1 = *a1;
  v1[1] = **a1;
  sub_1E3B50420((v1 + 1));

  free(v1);
}

uint64_t sub_1E40A9DA0()
{

  v0 = sub_1E38074D0();

  return v0;
}

uint64_t (*sub_1E40A9EA0())()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_18_4(v1);
  *(v0 + 32) = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_8_15(KeyPath);
  return sub_1E3846A58;
}

uint64_t sub_1E40A9F40(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35A30, &qword_1E429F570);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  OUTLINED_FUNCTION_5_7();
  v9 = MEMORY[0x1EEE9AC00](v8);
  (*(v7 + 16))(&v13[-v10 - 8], a1, v5, v9);
  OUTLINED_FUNCTION_11_3(v2 + *a2, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF429B0, &unk_1E42AB480);
  sub_1E4200654();
  swift_endAccess();
  return (*(v7 + 8))(a1, v5);
}

void (*sub_1E40AA060())(uint64_t a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_18_4(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35A30, &qword_1E429F570);
  OUTLINED_FUNCTION_7_12(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_11_3(v0 + OBJC_IVAR____TtC8VideosUI13ShowcaseValue__height, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF429B0, &unk_1E42AB480);
  sub_1E4200644();
  swift_endAccess();
  return sub_1E40AA16C;
}

uint64_t sub_1E40AA184()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E40AA1FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 272))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1E40AA2B4(uint64_t a1, char a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

uint64_t (*sub_1E40AA338())()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_18_4(v1);
  *(v0 + 32) = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_8_15(KeyPath);
  return sub_1E3844B3C;
}

uint64_t sub_1E40AA3CC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F800, &qword_1E42E9FF8);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_5_7();
  v7 = MEMORY[0x1EEE9AC00](v6);
  (*(v5 + 16))(&v11[-v8 - 8], a1, v3, v7);
  OUTLINED_FUNCTION_11_3(v1 + OBJC_IVAR____TtC8VideosUI13ShowcaseValue__peekingShelfTopPadding, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F7F8, &qword_1E42E9FF0);
  sub_1E4200654();
  swift_endAccess();
  return (*(v5 + 8))(a1, v3);
}

void (*sub_1E40AA4EC())(uint64_t a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_18_4(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F800, &qword_1E42E9FF8);
  OUTLINED_FUNCTION_7_12(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_11_3(v0 + OBJC_IVAR____TtC8VideosUI13ShowcaseValue__peekingShelfTopPadding, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F7F8, &qword_1E42E9FF0);
  sub_1E4200644();
  swift_endAccess();
  return sub_1E40AA5F8;
}

void sub_1E40AA610(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  if (a2)
  {
    v7 = v4[4];
    v8 = v4[5];
    (*(v8 + 16))(*(*a1 + 48), v6, v7);
    a3(v5);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    a3(*(*a1 + 56));
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t sub_1E40AA6D8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI13ShowcaseValue_shouldAlwaysShowTitle;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E40AA70C(char a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8VideosUI13ShowcaseValue_shouldAlwaysShowTitle;
  result = OUTLINED_FUNCTION_14_0(v2 + OBJC_IVAR____TtC8VideosUI13ShowcaseValue_shouldAlwaysShowTitle, a2);
  *(v2 + v4) = a1;
  return result;
}

double sub_1E40AA7A0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI13ShowcaseValue_navBarTransitionDistance;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E40AA7D4(double a1, uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR____TtC8VideosUI13ShowcaseValue_navBarTransitionDistance;
  result = OUTLINED_FUNCTION_14_0(v3 + OBJC_IVAR____TtC8VideosUI13ShowcaseValue_navBarTransitionDistance, a3);
  *(v3 + v5) = a1;
  return result;
}

double sub_1E40AA868(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI13ShowcaseValue_titleViewTransitionDistance;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E40AA89C(double a1, uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR____TtC8VideosUI13ShowcaseValue_titleViewTransitionDistance;
  result = OUTLINED_FUNCTION_14_0(v3 + OBJC_IVAR____TtC8VideosUI13ShowcaseValue_titleViewTransitionDistance, a3);
  *(v3 + v5) = a1;
  return result;
}

uint64_t sub_1E40AA970()
{
  v1 = OBJC_IVAR____TtC8VideosUI13ShowcaseValue__percentage;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF429B0, &unk_1E42AB480);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);

  v3(v0 + OBJC_IVAR____TtC8VideosUI13ShowcaseValue__height, v2);
  v4 = OBJC_IVAR____TtC8VideosUI13ShowcaseValue__peekingShelfTopPadding;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F7F8, &qword_1E42E9FF0);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t sub_1E40AAA60()
{
  sub_1E40AA970();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E40AAAB8()
{
  v0 = swift_allocObject();
  sub_1E40AAAF0();
  return v0;
}

uint64_t sub_1E40AAAF0()
{
  v1 = v0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F7F8, &qword_1E42E9FF0);
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF429B0, &unk_1E42AB480);
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  v13 = OBJC_IVAR____TtC8VideosUI13ShowcaseValue__percentage;
  v21 = 0x3FF0000000000000;
  sub_1E4200634();
  v14 = *(v9 + 32);
  v14(v1 + v13, v12, v7);
  v15 = OBJC_IVAR____TtC8VideosUI13ShowcaseValue__scrollViewContentOffset;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F7F0, &qword_1E42E9F58);
  v21 = 0;
  v22 = 0;
  *(v1 + v15) = sub_1E3B508D0();
  v16 = OBJC_IVAR____TtC8VideosUI13ShowcaseValue__height;
  v21 = 0;
  sub_1E4200634();
  v14(v1 + v16, v12, v7);
  v17 = OBJC_IVAR____TtC8VideosUI13ShowcaseValue__peekingShelfTopPadding;
  v21 = 0;
  LOBYTE(v22) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40, &qword_1E429EC80);
  sub_1E4200634();
  (*(v3 + 32))(v1 + v17, v6, v20);
  *(v1 + OBJC_IVAR____TtC8VideosUI13ShowcaseValue_shouldAlwaysShowTitle) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI13ShowcaseValue_navBarTransitionDistance) = 0x4024000000000000;
  *(v1 + OBJC_IVAR____TtC8VideosUI13ShowcaseValue_titleViewTransitionDistance) = 0x4049000000000000;
  return v1;
}

uint64_t sub_1E40AAD3C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ShowcaseValue(0);
  result = sub_1E4200514();
  *a2 = result;
  return result;
}

double sub_1E40AAD7C(double a1, double a2, double a3)
{
  v3 = 1.0025;
  if (a3 > 0.0 && a2 < 0.0)
  {
    if (-a2 >= a3)
    {
      v3 = -0.0025;
    }

    else
    {
      v3 = (a2 + a3) / a3 * 1.005 + -0.0025;
    }
  }

  v4 = 0.0;
  if (v3 > 0.0)
  {
    v4 = v3;
  }

  v5 = v4 * 100.0;
  if (v3 <= 1.0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 100.0;
  }

  return round(v6) / 100.0;
}

uint64_t type metadata accessor for ShowcaseValue(uint64_t a1)
{
  result = qword_1EE2A6690;
  if (!qword_1EE2A6690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E40AAE4C(uint64_t a1)
{
  sub_1E38C734C(319, &qword_1EE28A0A8, MEMORY[0x1E69E7DE0], MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    sub_1E40AAF60(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1E40AAF60(uint64_t a1)
{
  if (!qword_1EE28A0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CA40, &qword_1E429EC80);
    v1 = sub_1E4200694();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE28A0A0);
    }
  }
}

id LocalNotificationServiceSound.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1E40AB21C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_1E40AB2B4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1E40AB2F0(double *a1, double *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return sub_1E4200A44();
  }

  else
  {
    return 0;
  }
}

__n128 sub_1E40AB330@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_1E4203DA4();
  v14 = v13;
  if (a2)
  {

    sub_1E42036E4();
    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    *(v15 + 24) = a3;
  }

  else
  {
    if (!a4)
    {
      v17 = 0;
      v22 = 0u;
      v23 = 0u;
      v18 = -1;
      goto LABEL_6;
    }

    sub_1E42036E4();
    v16 = swift_allocObject();
    *(v16 + 16) = a4;
    *(v16 + 24) = a5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F818, &qword_1E42EA198);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F820, &qword_1E42EA1A0);
  sub_1E40AB898();
  sub_1E40AB950();
  sub_1E4201F44();
  v22 = v25;
  v23 = v24;
  v17 = v26;
  v18 = v27;
LABEL_6:
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F808, &qword_1E42EA188);
  (*(*(v19 - 8) + 16))(a6, a1, v19);
  v20 = a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F810, &qword_1E42EA190) + 36);
  result = v23;
  *v20 = v23;
  *(v20 + 16) = v22;
  *(v20 + 32) = v17;
  *(v20 + 40) = v18;
  *(v20 + 48) = v12;
  *(v20 + 56) = v14;
  return result;
}

uint64_t sub_1E40AB544@<X0>(void *a1@<X8>)
{
  sub_1E4201F74();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_298();
  OUTLINED_FUNCTION_74();
  sub_1E4200E84();
  v4 = v3;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_74();
  result = v8(v7);
  *a1 = v4;
  a1[1] = v6;
  return result;
}

void sub_1E40AB60C(void *a1@<X8>)
{
  sub_1E4201F74();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_298();
  OUTLINED_FUNCTION_74();
  sub_1E4200E84();
  v4 = v3;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_74();
  v8(v7);
  sub_1E4200E44();
  *a1 = v4;
  a1[1] = v6;
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v11;
  a1[5] = v12;
}

uint64_t sub_1E40AB6EC(char a1)
{
  if (a1)
  {
  }

  OUTLINED_FUNCTION_3_269();
  v1 = OUTLINED_FUNCTION_74();
  return sub_1E34AF594(v1, v2);
}

uint64_t sub_1E40AB768(char a1)
{
  if (a1)
  {
  }

  OUTLINED_FUNCTION_3_269();
  v1 = OUTLINED_FUNCTION_74();
  return sub_1E34AF594(v1, v2);
}

unint64_t sub_1E40AB7E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE2A7650[0];
  if (!qword_1EE2A7650[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2A7650);
  }

  return result;
}

unint64_t sub_1E40AB898()
{
  result = qword_1EE289898;
  if (!qword_1EE289898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F818, &qword_1E42EA198);
    sub_1E32752B0(&qword_1EE2888B0, &qword_1ECF3F828, &qword_1E42EA1A8, MEMORY[0x1E69802E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289898);
  }

  return result;
}

unint64_t sub_1E40AB950()
{
  result = qword_1EE2898A0;
  if (!qword_1EE2898A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F820, &qword_1E42EA1A0);
    sub_1E32752B0(&qword_1EE2888B8, &qword_1ECF3F830, &qword_1E42EA1B0, MEMORY[0x1E69802E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2898A0);
  }

  return result;
}

uint64_t sub_1E40ABA34(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E40ABA54(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

unint64_t sub_1E40ABA9C()
{
  result = qword_1EE289A90;
  if (!qword_1EE289A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F810, &qword_1E42EA190);
    sub_1E32752B0(&qword_1EE288910, &qword_1ECF3F808, &qword_1E42EA188, MEMORY[0x1E697FDF8]);
    sub_1E32752B0(&qword_1EE289250, &qword_1ECF3F838, qword_1E42EA1E0, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289A90);
  }

  return result;
}

uint64_t sub_1E40ABB88(uint64_t a1)
{
  v1 = a1;
  switch(a1)
  {
    case 2:
      goto LABEL_13;
    default:
      v2 = sub_1E42079A4();

      if (v2)
      {
        return 1;
      }

      v3 = sub_1E40AC584(v1);
      v5 = v4;
      if (v3 == 0x4F79426565726854 && v4 == 0xEA0000000000656ELL)
      {
        goto LABEL_13;
      }

      v7 = v3;
      v8 = sub_1E42079A4();

      if (v8)
      {
        return 1;
      }

      if (v7 == 0x5479746E65766553 && v5 == 0xED00007974726968)
      {
LABEL_13:

        return 1;
      }

      else
      {
        v10 = sub_1E42079A4();

        return v10 & 1;
      }
  }
}

uint64_t sub_1E40ABD64(unsigned __int8 a1, char a2)
{
  v2 = 0xEA00000000006E65;
  v3 = 0x657263536C6C7566;
  v4 = a1;
  v5 = 0x657263536C6C7566;
  v6 = 0xEA00000000006E65;
  switch(v4)
  {
    case 1:
      v6 = 0xE600000000000000;
      v5 = 0x7463656C6573;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v5 = 1702260589;
      break;
    case 3:
      v6 = 0xE600000000000000;
      v5 = 0x65766F6D6572;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE600000000000000;
      v3 = 0x7463656C6573;
      break;
    case 2:
      v2 = 0xE400000000000000;
      v3 = 1702260589;
      break;
    case 3:
      v2 = 0xE600000000000000;
      v3 = 0x65766F6D6572;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E40ABE98(char a1, char a2)
{
  if (a1)
  {
    v2 = 0xEE00686374615777;
  }

  else
  {
    v2 = 0xED00007469644577;
  }

  if (a2)
  {
    v3 = 0xEE00686374615777;
  }

  else
  {
    v3 = 0xED00007469644577;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1E42079A4();
  }

  return v4 & 1;
}

uint64_t sub_1E40ABF38(unsigned __int8 a1, char a2)
{
  v2 = 0x656C676E6953;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x656C676E6953;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x6F775479426F7754;
      break;
    case 2:
      v3 = 0xE800000000000000;
      v5 = 0x656E4F79426F7754;
      break;
    case 3:
      v5 = 0x4F79426565726854;
      v7 = 25966;
      goto LABEL_9;
    case 4:
      v5 = 0x656E4F79426F7774;
      v6 = 0x6F77547942;
      goto LABEL_7;
    case 5:
      v5 = 0x5479746E65766553;
      v6 = 0x7974726968;
LABEL_7:
      v3 = v6 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    case 6:
      v5 = 0x6669467974666946;
      v7 = 31092;
LABEL_9:
      v3 = v7 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      break;
    default:
      break;
  }

  v8 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v8 = 0xE800000000000000;
      v2 = 0x6F775479426F7754;
      break;
    case 2:
      v8 = 0xE800000000000000;
      v2 = 0x656E4F79426F7754;
      break;
    case 3:
      v2 = 0x4F79426565726854;
      v10 = 25966;
      goto LABEL_18;
    case 4:
      v2 = 0x656E4F79426F7774;
      v9 = 0x6F77547942;
      goto LABEL_16;
    case 5:
      v2 = 0x5479746E65766553;
      v9 = 0x7974726968;
LABEL_16:
      v8 = v9 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    case 6:
      v2 = 0x6669467974666946;
      v10 = 31092;
LABEL_18:
      v8 = v10 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v8)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1E42079A4();
  }

  return v12 & 1;
}

uint64_t sub_1E40AC138(unsigned __int8 a1, char a2)
{
  v2 = 0xEB00000000776569;
  v3 = 0x567972616D697250;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x616D6972506E6F4ELL;
    }

    else
    {
      v5 = 0x6B636F4C6576694CLL;
    }

    if (v4 == 1)
    {
      v6 = 0xEE00776569567972;
    }

    else
    {
      v6 = 0xEA00000000007075;
    }
  }

  else
  {
    v5 = 0x567972616D697250;
    v6 = 0xEB00000000776569;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x616D6972506E6F4ELL;
    }

    else
    {
      v3 = 0x6B636F4C6576694CLL;
    }

    if (a2 == 1)
    {
      v2 = 0xEE00776569567972;
    }

    else
    {
      v2 = 0xEA00000000007075;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E40AC258(unsigned __int8 a1, char a2)
{
  v2 = 1970169197;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x4D726564726F6572;
    }

    else
    {
      v4 = 0xD000000000000012;
    }

    if (v3 == 1)
    {
      v5 = 0xEB00000000756E65;
    }

    else
    {
      v5 = 0x80000001E42908E0;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v4 = 1970169197;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x4D726564726F6572;
    }

    else
    {
      v2 = 0xD000000000000012;
    }

    if (a2 == 1)
    {
      v6 = 0xEB00000000756E65;
    }

    else
    {
      v6 = 0x80000001E42908E0;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E40AC360(unsigned __int8 a1, char a2)
{
  v2 = 0xEA00000000007075;
  v3 = 0x6B636F4C6576694CLL;
  v4 = a1;
  v5 = 0x6B636F4C6576694CLL;
  v6 = 0xEA00000000007075;
  switch(v4)
  {
    case 1:
      v5 = 0x507972616D697250;
      v6 = 0xED0000726579616CLL;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v5 = 0x6E6F74747562;
      break;
    case 3:
      v5 = 0x567972616D697250;
      v6 = 0xEB00000000776569;
      break;
    case 4:
      v5 = 0x616D6972506E6F4ELL;
      v6 = 0xEE00776569567972;
      break;
    case 5:
      v6 = 0xE600000000000000;
      v5 = 0x726579616C50;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x507972616D697250;
      v2 = 0xED0000726579616CLL;
      break;
    case 2:
      v2 = 0xE600000000000000;
      v3 = 0x6E6F74747562;
      break;
    case 3:
      v3 = 0x567972616D697250;
      v2 = 0xEB00000000776569;
      break;
    case 4:
      v3 = 0x616D6972506E6F4ELL;
      v2 = 0xEE00776569567972;
      break;
    case 5:
      v2 = 0xE600000000000000;
      v3 = 0x726579616C50;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

unint64_t sub_1E40AC544()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E40AC584(char a1)
{
  result = 0x656C676E6953;
  switch(a1)
  {
    case 1:
      result = 0x6F775479426F7754;
      break;
    case 2:
      result = 0x656E4F79426F7754;
      break;
    case 3:
      result = 0x4F79426565726854;
      break;
    case 4:
      result = 0x656E4F79426F7774;
      break;
    case 5:
      result = 0x5479746E65766553;
      break;
    case 6:
      result = 0x6669467974666946;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E40AC6D0(uint64_t a1)
{
  v1 = a1;
  sub_1E4207B44();
  sub_1E40AC778(v3, v1);
  return sub_1E4207BA4();
}

uint64_t sub_1E40AC718(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_1E4207B44();
  v4 = a2(a1);
  OUTLINED_FUNCTION_18_0(v4, v5, v6);

  return sub_1E4207BA4();
}

uint64_t sub_1E40AC778(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E40AC824(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E40AC894(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E40AC9B4(uint64_t a1, unsigned __int8 a2)
{
  sub_1E4206014();
}

uint64_t sub_1E40ACA58(uint64_t a1, unsigned __int8 a2)
{
  sub_1E4206014();
}

uint64_t sub_1E40ACAE8(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E40ACC1C(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E40ACCC0(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E40ACD78(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_1E4207B44();
  v5 = a3(a2);
  OUTLINED_FUNCTION_18_0(v5, v6, v7);

  return sub_1E4207BA4();
}

uint64_t sub_1E40ACDCC(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E40ACE50(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E40AC778(v4, a2);
  return sub_1E4207BA4();
}

unint64_t sub_1E40ACE94(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E40AC544();
  *v1 = result;
  return result;
}

uint64_t sub_1E40ACEBC()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E40AC584(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1E40ACEE4()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E40ACF90(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E40ACEE4();
  *v1 = result;
  return result;
}

uint64_t sub_1E40ACFB8()
{
  OUTLINED_FUNCTION_11_15();
  result = sub_1E40ACF2C();
  *v0 = 0x65695669746C754DLL;
  v0[1] = v2;
  return result;
}

unint64_t sub_1E40ACFF0()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E40AD030(char a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_4_262();
  }

  if (a1 == 1)
  {
    return 0x616D6972506E6F4ELL;
  }

  return 0x6B636F4C6576694CLL;
}

unint64_t sub_1E40AD0A8(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E40ACFF0();
  *v1 = result;
  return result;
}

uint64_t sub_1E40AD0D0()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E40AD030(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_1E40AD0F8()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E40AD138(char a1)
{
  if (!a1)
  {
    return 1970169197;
  }

  if (a1 == 1)
  {
    return 0x4D726564726F6572;
  }

  return 0xD000000000000012;
}

unint64_t sub_1E40AD1B8(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E40AD0F8();
  *v1 = result;
  return result;
}

uint64_t sub_1E40AD1E0()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E40AD138(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_1E40AD208()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E40AD248(char a1)
{
  result = 0x657263536C6C7566;
  switch(a1)
  {
    case 1:
      result = 0x7463656C6573;
      break;
    case 2:
      result = 1702260589;
      break;
    case 3:
      result = 0x65766F6D6572;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1E40AD2E4(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E40AD208();
  *v1 = result;
  return result;
}

uint64_t sub_1E40AD30C()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E40AD248(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_1E40AD334()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E40AD374(char a1)
{
  result = 0x6B636F4C6576694CLL;
  switch(a1)
  {
    case 1:
      result = 0x507972616D697250;
      break;
    case 2:
      result = 0x6E6F74747562;
      break;
    case 3:
      result = OUTLINED_FUNCTION_4_262();
      break;
    case 4:
      result = 0x616D6972506E6F4ELL;
      break;
    case 5:
      result = 0x726579616C50;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1E40AD49C(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E40AD334();
  *v1 = result;
  return result;
}

uint64_t sub_1E40AD4C4()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E40AD374(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1E40AD528(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_31_92(a1);
  *(v2 + 48) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1E40AD578()
{
  OUTLINED_FUNCTION_8();
  if ((*(v0 + 104))())
  {
    v2 = v1;
    ObjectType = swift_getObjectType();
    v4 = (*(v2 + 16))(ObjectType, v2);
    (*(v2 + 24))(ObjectType, v2);
    OUTLINED_FUNCTION_11_5();
    swift_unknownObjectRelease();
    if (v4 == 1)
    {
      return 0;
    }

    if (v2)
    {
      if (v2 == 1)
      {
        if (v4 < 5)
        {
          return 0x302050707uLL >> (8 * v4);
        }
      }

      else if (v4 == 3)
      {
        return 2;
      }
    }

    else if (v4 < 5)
    {
      return 0x102060707uLL >> (8 * v4);
    }
  }

  return 7;
}

uint64_t sub_1E40AD680()
{
  sub_1E41FE5D4();
  OUTLINED_FUNCTION_2_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E41FE5C4();
  sub_1E41FE574();
  v7 = v6;
  result = (*(v2 + 8))(v5, v0);
  v9 = v7 * 1000.0;
  if (COERCE__INT64(fabs(v7 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v9 < 9.22337204e18)
  {
    return v9;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1E40AD790(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_11_5();
  swift_allocObject();
  v4 = OUTLINED_FUNCTION_38();
  sub_1E40AD7D8(v4, a2);
  return v2;
}

void *sub_1E40AD7D8(uint64_t a1, uint64_t a2)
{
  v2[2] = 0x726579616C70;
  v2[3] = 0xE600000000000000;
  v2[4] = [objc_opt_self() sharedInstance];
  v2[6] = 0;
  v4 = swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_31_92(v4);
  v2[6] = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1E40AD874()
{
  result = sub_1E40AD578();
  if (result != 7)
  {
    OUTLINED_FUNCTION_8();
    v2 = *(v1 + 160);

    return v2();
  }

  return result;
}

void sub_1E40AD8E4(char a1)
{
  sub_1E40AC584(a1);
  v2 = sub_1E4205ED4();

  v3 = objc_opt_self();
  OUTLINED_FUNCTION_25_109();
  v4 = sub_1E4205ED4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710, &qword_1E429AC10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  sub_1E4205F14();
  v6 = MEMORY[0x1E69E6158];
  sub_1E4207414();
  v8 = *(v1 + 16);
  v7 = *(v1 + 24);
  *(inited + 96) = v6;
  *(inited + 72) = v8;
  *(inited + 80) = v7;

  v9 = sub_1E4205CB4();
  v10 = sub_1E38A7618(v2, v4, v9, v3);

  [*(v1 + 32) recordPage_];
}

uint64_t sub_1E40ADA50()
{
  result = sub_1E40AD578();
  if (result != 7)
  {
    OUTLINED_FUNCTION_8();
    v2 = *(v1 + 176);

    return v2();
  }

  return result;
}

void sub_1E40ADAA8(uint64_t a1)
{
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_2_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1E40ABB88(a1))
  {
    v9 = objc_opt_self();
    sub_1E40AC584(a1);
    v10 = sub_1E4205ED4();

    OUTLINED_FUNCTION_25_109();
    v11 = sub_1E4205ED4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710, &qword_1E429AC10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BE0;
    v28[0] = sub_1E4205F14();
    v28[1] = v13;
    v14 = MEMORY[0x1E69E6158];
    sub_1E4207414();
    v16 = *(v2 + 16);
    v15 = *(v2 + 24);
    *(inited + 96) = v14;
    *(inited + 72) = v16;
    *(inited + 80) = v15;

    v17 = sub_1E4205CB4();
    v18 = sub_1E38A7618(v10, v11, v17, v9);

    [*(v2 + 32) recordPageChange_];
  }

  else
  {
    v19 = sub_1E324FBDC();
    (*(v5 + 16))(v8, v19, v1);
    v20 = sub_1E41FFC94();
    v21 = sub_1E42067E4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v28[0] = v23;
      *v22 = 136315138;
      v24 = sub_1E40AC584(a1);
      v26 = sub_1E3270FC8(v24, v25, v28);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_1E323F000, v20, v21, "MultiPlayerMetricsRecorder:: ignoring page change for %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x1E69143B0](v23, -1, -1);
      MEMORY[0x1E69143B0](v22, -1, -1);
    }

    (*(v5 + 8))(v8, v1);
  }
}

uint64_t sub_1E40ADD80(uint64_t a1)
{
  v29 = sub_1E40AD578();
  if (v29 == 7)
  {
    return MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_8();
  v3 = (*(v2 + 104))();
  v1 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    return v1;
  }

  v5 = v4;
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 8))(ObjectType, v5);
  v8 = *(v7 + 16);
  if (!v8)
  {
LABEL_20:
    swift_unknownObjectRelease();

    return v1;
  }

  result = sub_1E397A444(0, v8, 0);
  v10 = 0;
  v28 = *(v7 + 16);
  v11 = (v7 + 40);
  v12 = MEMORY[0x1E69E6158];
  while (v28 != v10)
  {
    if (v10 >= *(v7 + 16))
    {
      goto LABEL_23;
    }

    v14 = *(v11 - 1);
    v13 = *v11;
    v15 = 1;
    switch(v29)
    {
      case 1:
      case 4:
      case 6:
        goto LABEL_10;
      case 2:
      case 3:
        if (v10)
        {
LABEL_10:
          v15 = 0;
        }

        break;
      case 5:
        v15 = a1 == v10;
        break;
      default:
        break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4298AD0;
    *(inited + 32) = sub_1E4205F14();
    *(inited + 40) = v17;
    v18 = 0x616D6972506E6F4ELL;
    if (v15)
    {
      v18 = 0x567972616D697250;
    }

    v19 = 0xEE00776569567972;
    if (v15)
    {
      v19 = 0xEB00000000776569;
    }

    *(inited + 72) = v12;
    *(inited + 48) = v18;
    *(inited + 56) = v19;
    *(inited + 80) = sub_1E4205F14();
    *(inited + 88) = v20;
    *(inited + 120) = MEMORY[0x1E69E6530];
    *(inited + 96) = v10;
    *(inited + 128) = sub_1E4205F14();
    *(inited + 136) = v21;
    *(inited + 168) = v12;
    *(inited + 144) = v14;
    *(inited + 152) = v13;
    *(inited + 176) = sub_1E4205F14();
    *(inited + 184) = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA60, "v;\r");
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1E4297BE0;
    swift_bridgeObjectRetain_n();
    *(v23 + 32) = sub_1E40AD680();
    *(inited + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32EC0, &unk_1E42B3DF0);
    *(inited + 192) = v23;
    v24 = sub_1E4205CB4();

    v26 = *(v1 + 16);
    v25 = *(v1 + 24);
    if (v26 >= v25 >> 1)
    {
      result = sub_1E397A444((v25 > 1), v26 + 1, 1);
    }

    *(v1 + 16) = v26 + 1;
    *(v1 + 8 * v26 + 32) = v24;
    ++v10;
    v11 += 2;
    if (v8 == v10)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

void sub_1E40AE0F0(uint64_t a1)
{
  v3 = sub_1E40AD578();
  if (v3 != 7)
  {
    v4 = v3;
    v5 = sub_1E40ADD80(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4298AD0;
    *(inited + 32) = sub_1E4205F14();
    *(inited + 40) = v7;
    v8 = sub_1E40AC584(v4);
    v9 = MEMORY[0x1E69E6158];
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = v8;
    *(inited + 56) = v10;
    *(inited + 80) = sub_1E4205F14();
    *(inited + 88) = v11;
    v12 = sub_1E4205F14();
    *(inited + 120) = v9;
    *(inited + 96) = v12;
    *(inited + 104) = v13;
    *(inited + 128) = sub_1E4205F14();
    *(inited + 136) = v14;
    v15 = sub_1E4205F14();
    *(inited + 168) = v9;
    *(inited + 144) = v15;
    *(inited + 152) = v16;
    *(inited + 176) = sub_1E4205F14();
    *(inited + 184) = v17;
    v18 = sub_1E40AF054(v5, MEMORY[0x1E69E7CC0]);

    *(inited + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
    *(inited + 192) = v18;
    v19 = sub_1E4205CB4();
    v20 = OUTLINED_FUNCTION_22_100(v19);
    OUTLINED_FUNCTION_10_175(v20);
    v21 = OUTLINED_FUNCTION_63_2();
    OUTLINED_FUNCTION_21_119(v21, sel_recordClick_);

    sub_1E3744600(v5);
    OUTLINED_FUNCTION_38();

    OUTLINED_FUNCTION_3_270();
    OUTLINED_FUNCTION_11_5();

    OUTLINED_FUNCTION_26_4(v22, sel_recordImpressions_);
  }
}

void sub_1E40AE2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1E40ADD80(a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E429A240;
  *(inited + 32) = sub_1E4205F14();
  *(inited + 40) = v11;
  v12 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 80) = sub_1E4205F14();
  *(inited + 88) = v13;
  *(inited + 120) = v12;
  OUTLINED_FUNCTION_29_103();
  *(inited + 96) = v14;
  *(inited + 104) = 0xEA00000000007075;
  *(inited + 128) = sub_1E4205F14();
  *(inited + 136) = v15;
  v16 = sub_1E4205F14();
  *(inited + 168) = v12;
  *(inited + 144) = v16;
  *(inited + 152) = v17;
  *(inited + 176) = sub_1E4205F14();
  *(inited + 184) = v18;

  v19 = sub_1E40AF054(v9, a3);

  *(inited + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
  *(inited + 192) = v19;
  *(inited + 224) = sub_1E4205F14();
  *(inited + 232) = v20;
  *(inited + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF311C8, qword_1E42B49E0);
  *(inited + 240) = a4;

  v21 = sub_1E4205CB4();
  v22 = OUTLINED_FUNCTION_22_100(v21);
  OUTLINED_FUNCTION_10_175(v22);
  v23 = OUTLINED_FUNCTION_63_2();
  OUTLINED_FUNCTION_21_119(v23, sel_recordClick_);

  sub_1E3744600(inited);
  OUTLINED_FUNCTION_38();

  OUTLINED_FUNCTION_3_270();
  OUTLINED_FUNCTION_11_5();

  OUTLINED_FUNCTION_26_4(v24, sel_recordImpressions_);
}

void sub_1E40AE4D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = sub_1E40ADD80(a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4298AD0;
  *(inited + 32) = sub_1E4205F14();
  *(inited + 40) = v11;
  v12 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 80) = sub_1E4205F14();
  *(inited + 88) = v13;
  v14 = 0x726579616C50;
  if (a5)
  {
    v14 = 0x507972616D697250;
  }

  v15 = 0xE600000000000000;
  if (a5)
  {
    v15 = 0xED0000726579616CLL;
  }

  *(inited + 120) = v12;
  *(inited + 96) = v14;
  *(inited + 104) = v15;
  *(inited + 128) = sub_1E4205F14();
  *(inited + 136) = v16;
  v17 = sub_1E4205F14();
  *(inited + 168) = v12;
  *(inited + 144) = v17;
  *(inited + 152) = v18;
  *(inited + 176) = sub_1E4205F14();
  *(inited + 184) = v19;

  v20 = sub_1E40AF054(v9, a3);

  *(inited + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
  *(inited + 192) = v20;
  v21 = sub_1E4205CB4();
  v22 = OUTLINED_FUNCTION_22_100(v21);
  OUTLINED_FUNCTION_10_175(v22);
  v23 = OUTLINED_FUNCTION_63_2();
  OUTLINED_FUNCTION_21_119(v23, sel_recordClick_);

  sub_1E3744600(inited);
  OUTLINED_FUNCTION_38();

  OUTLINED_FUNCTION_3_270();
  OUTLINED_FUNCTION_11_5();

  OUTLINED_FUNCTION_26_4(v24, sel_recordImpressions_);
}

void sub_1E40AE6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 4;
  switch(sub_1E40AD578())
  {
    case 2u:
    case 3u:
      if (!a4)
      {
        goto LABEL_3;
      }

      break;
    case 5u:
LABEL_3:
      v8 = 3;
      break;
    default:
      break;
  }

  v9 = sub_1E40ADD80(a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E429A240;
  *(inited + 32) = sub_1E4205F14();
  *(inited + 40) = v11;
  v12 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = 1702260589;
  *(inited + 56) = 0xE400000000000000;
  *(inited + 80) = sub_1E4205F14();
  *(inited + 88) = v13;
  *(inited + 120) = v12;
  *(inited + 96) = 0x4D726564726F6572;
  *(inited + 104) = 0xEB00000000756E65;
  *(inited + 128) = sub_1E4205F14();
  *(inited + 136) = v14;
  *(inited + 168) = v12;
  *(inited + 144) = a1;
  *(inited + 152) = a2;
  *(inited + 176) = sub_1E4205F14();
  *(inited + 184) = v15;
  v16 = sub_1E40AD374(v8);
  *(inited + 216) = v12;
  *(inited + 192) = v16;
  *(inited + 200) = v17;
  *(inited + 224) = sub_1E4205F14();
  *(inited + 232) = v18;

  v19 = sub_1E40AF054(v9, MEMORY[0x1E69E7CC0]);

  *(inited + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
  *(inited + 240) = v19;
  v20 = MEMORY[0x1E69E7CA0];
  v21 = sub_1E4205CB4();
  v22 = OUTLINED_FUNCTION_22_100(v21);
  OUTLINED_FUNCTION_15_171(v22, v23, v20 + 8);
  v24 = OUTLINED_FUNCTION_63_2();
  OUTLINED_FUNCTION_21_119(v24, sel_recordClick_);

  sub_1E3744600(inited);
  OUTLINED_FUNCTION_38();

  OUTLINED_FUNCTION_15_171(v22, v25, v20 + 8);
  OUTLINED_FUNCTION_11_5();

  OUTLINED_FUNCTION_26_4(v26, sel_recordImpressions_);
}

void sub_1E40AE914(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_1E40ADD80(a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E429A240;
  *(inited + 32) = sub_1E4205F14();
  *(inited + 40) = v8;
  v9 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = 0x657263536C6C7566;
  *(inited + 56) = 0xEA00000000006E65;
  *(inited + 80) = sub_1E4205F14();
  *(inited + 88) = v10;
  *(inited + 120) = v9;
  *(inited + 96) = a1;
  *(inited + 104) = a2;
  *(inited + 128) = sub_1E4205F14();
  *(inited + 136) = v11;
  *(inited + 168) = v9;
  strcpy((inited + 144), "PrimaryPlayer");
  *(inited + 158) = -4864;
  *(inited + 176) = sub_1E4205F14();
  *(inited + 184) = v12;

  v13 = sub_1E40AF054(v6, MEMORY[0x1E69E7CC0]);

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
  *(inited + 216) = v14;
  *(inited + 192) = v13;
  *(inited + 224) = sub_1E4205F14();
  *(inited + 232) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B7A0, &qword_1E42AB350);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1E4297BE0;
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1E4297BD0;
  *(v17 + 32) = sub_1E4205F14();
  *(v17 + 40) = v18;
  *(v17 + 72) = v9;
  *(v17 + 48) = a1;
  *(v17 + 56) = a2;
  *(v17 + 80) = sub_1E4205F14();
  *(v17 + 88) = v19;
  *(v17 + 120) = v9;
  *(v17 + 96) = 0x567972616D697250;
  *(v17 + 104) = 0xEB00000000776569;
  *(v17 + 128) = sub_1E4205F14();
  *(v17 + 136) = v20;
  *(v17 + 168) = MEMORY[0x1E69E6530];
  *(v17 + 144) = a3;

  v21 = MEMORY[0x1E69E7CA0];
  *(v16 + 32) = sub_1E4205CB4();
  *(inited + 264) = v14;
  *(inited + 240) = v16;
  v22 = sub_1E4205CB4();
  v23 = OUTLINED_FUNCTION_22_100(v22);
  OUTLINED_FUNCTION_15_171(v23, v24, v21 + 8);
  v25 = OUTLINED_FUNCTION_63_2();
  OUTLINED_FUNCTION_21_119(v25, sel_recordClick_);

  sub_1E3744600(a3);
  OUTLINED_FUNCTION_38();

  OUTLINED_FUNCTION_15_171(v23, v26, v21 + 8);
  OUTLINED_FUNCTION_11_5();

  OUTLINED_FUNCTION_26_4(v27, sel_recordImpressions_);
}

void sub_1E40AEC40(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E40ADD80(a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E429A240;
  *(inited + 32) = sub_1E4205F14();
  *(inited + 40) = v7;
  v8 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = 0x7463656C6573;
  *(inited + 56) = 0xE600000000000000;
  *(inited + 80) = sub_1E4205F14();
  *(inited + 88) = v9;
  *(inited + 120) = v8;
  *(inited + 96) = 0xD000000000000012;
  *(inited + 104) = 0x80000001E42908E0;
  *(inited + 128) = sub_1E4205F14();
  *(inited + 136) = v10;
  *(inited + 168) = v8;
  *(inited + 144) = a1;
  *(inited + 152) = a2;
  *(inited + 176) = sub_1E4205F14();
  *(inited + 184) = v11;
  *(inited + 216) = &unk_1F5D964D8;
  *(inited + 192) = 3;
  *(inited + 224) = sub_1E4205F14();
  *(inited + 232) = v12;

  v13 = sub_1E40AF054(v5, MEMORY[0x1E69E7CC0]);

  *(inited + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
  *(inited + 240) = v13;
  v14 = sub_1E4205CB4();
  v15 = OUTLINED_FUNCTION_22_100(v14);
  OUTLINED_FUNCTION_10_175(v15);
  v16 = OUTLINED_FUNCTION_63_2();
  OUTLINED_FUNCTION_21_119(v16, sel_recordClick_);

  sub_1E3744600(v5);
  OUTLINED_FUNCTION_38();

  OUTLINED_FUNCTION_3_270();
  OUTLINED_FUNCTION_11_5();

  OUTLINED_FUNCTION_26_4(v17, sel_recordImpressions_);
}

void sub_1E40AEE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_1E40ADD80(a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E429A240;
  *(inited + 32) = sub_1E4205F14();
  *(inited + 40) = v14;
  v15 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = a4;
  *(inited + 56) = 0xE600000000000000;
  *(inited + 80) = sub_1E4205F14();
  *(inited + 88) = v16;
  *(inited + 120) = v15;
  *(inited + 96) = a5;
  *(inited + 104) = a6;
  *(inited + 128) = sub_1E4205F14();
  *(inited + 136) = v17;
  *(inited + 168) = v15;
  *(inited + 144) = a1;
  *(inited + 152) = a2;
  *(inited + 176) = sub_1E4205F14();
  *(inited + 184) = v18;
  *(inited + 216) = v15;
  *(inited + 192) = a7;
  *(inited + 200) = 0xE600000000000000;
  *(inited + 224) = sub_1E4205F14();
  *(inited + 232) = v19;

  v20 = sub_1E40AF054(v12, MEMORY[0x1E69E7CC0]);

  *(inited + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
  *(inited + 240) = v20;
  v21 = sub_1E4205CB4();
  v22 = OUTLINED_FUNCTION_22_100(v21);
  OUTLINED_FUNCTION_10_175(v22);
  v23 = OUTLINED_FUNCTION_63_2();
  OUTLINED_FUNCTION_21_119(v23, sel_recordClick_);

  sub_1E3744600(v12);
  OUTLINED_FUNCTION_38();

  OUTLINED_FUNCTION_3_270();
  OUTLINED_FUNCTION_11_5();

  OUTLINED_FUNCTION_26_4(v24, sel_recordImpressions_);
}

void *sub_1E40AF054(void *a1, uint64_t a2)
{
  v175 = a1;

  v4 = sub_1E3BA7DD8(a2);
  v5 = a1;
  if (v4)
  {
    sub_1E3EA0974(v4);
    v5 = v175;
  }

  v161 = v5[2];
  if (v161)
  {
    v158 = a1;
    v6 = 0;
    v162 = @"impressionId";
    v160 = @"impressionIndex";
    v163 = @"impressionTimes";
    v7 = 32;
    v159 = xmmword_1E4297BE0;
    do
    {
      v8 = sub_1E4205F14();
      v10 = v9;
      *(&v174 + 1) = MEMORY[0x1E69E6530];
      *&v173 = v6 + 1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1E3FA2A70(v5);
      }

      OUTLINED_FUNCTION_19_149();
      if (v11)
      {
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
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
        result = sub_1E4207A74();
        __break(1u);
        return result;
      }

      v165 = v6 + 1;
      v167 = v7;
      v12 = &v5[v6];
      v169 = v5;
      if (*(&v174 + 1))
      {
        sub_1E329504C(&v173, v172);
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_7_237();
        sub_1E327D33C(v8, v10);
        OUTLINED_FUNCTION_31_0();
        if (__OFADD__(v15, v16))
        {
          goto LABEL_86;
        }

        v17 = v13;
        v18 = v14;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310, &qword_1E429B110);
        OUTLINED_FUNCTION_30_86();
        if (sub_1E4207644())
        {
          v19 = sub_1E327D33C(v8, v10);
          if ((v18 & 1) != (v20 & 1))
          {
            goto LABEL_96;
          }

          v17 = v19;
        }

        v21 = v171;
        if (v18)
        {
          v22 = __swift_destroy_boxed_opaque_existential_1((v171[7] + 32 * v17));
          OUTLINED_FUNCTION_27_99(v22, v23, v24, v25, v26, v27, v28, v29, v157, v158, v159, *(&v159 + 1));
        }

        else
        {
          v171[(v17 >> 6) + 8] |= 1 << v17;
          v30 = (v21[6] + 16 * v17);
          *v30 = v8;
          v30[1] = v10;
          sub_1E329504C(v172, (v21[7] + 32 * v17));
          v31 = v21[2];
          v32 = __OFADD__(v31, 1);
          v33 = v31 + 1;
          if (v32)
          {
            goto LABEL_92;
          }

          v21[2] = v33;
        }

        v12[4] = v21;
      }

      else
      {
        sub_1E329505C(&v173);
        sub_1E388BFFC(v8, v10, v172);

        sub_1E329505C(v172);
      }

      sub_1E4205F14();
      *(&v174 + 1) = MEMORY[0x1E69E6530];
      *&v173 = v6;
      OUTLINED_FUNCTION_19_149();
      if (v11)
      {
        goto LABEL_81;
      }

      v36 = v34;
      v37 = v35;
      sub_1E329504C(&v173, v172);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_7_237();
      OUTLINED_FUNCTION_33_91();
      OUTLINED_FUNCTION_31_0();
      if (__OFADD__(v40, v41))
      {
        goto LABEL_82;
      }

      v42 = v38;
      v43 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310, &qword_1E429B110);
      if (sub_1E4207644())
      {
        v44 = OUTLINED_FUNCTION_33_91();
        if ((v43 & 1) != (v45 & 1))
        {
          goto LABEL_96;
        }

        v42 = v44;
      }

      v46 = v171;
      if (v43)
      {
        v47 = __swift_destroy_boxed_opaque_existential_1((v171[7] + 32 * v42));
        OUTLINED_FUNCTION_27_99(v47, v48, v49, v50, v51, v52, v53, v54, v157, v158, v159, *(&v159 + 1));
      }

      else
      {
        OUTLINED_FUNCTION_7_2(&v171[v42 >> 6]);
        v55 = (v171[6] + 16 * v42);
        *v55 = v36;
        v55[1] = v37;
        OUTLINED_FUNCTION_32_93(*(v46 + 56), v157, v158, v159, *(&v159 + 1), v160, v161, v162, v163, v165, v7, v169, v171, v172[0]);
        v56 = *(v46 + 16);
        v32 = __OFADD__(v56, 1);
        v57 = v56 + 1;
        if (v32)
        {
          goto LABEL_87;
        }

        *(v46 + 16) = v57;
      }

      v12[4] = v46;

      v58 = sub_1E4205F14();
      if (v6 >= *(v169 + 16))
      {
        goto LABEL_83;
      }

      v60 = v59;
      v61 = v12[4];
      if (*(v61 + 16) && (v62 = v58, , v63 = sub_1E327D33C(v62, v60), v65 = v64, , (v65 & 1) != 0))
      {
        sub_1E328438C(*(v61 + 56) + 32 * v63, &v173);

        sub_1E329505C(&v173);
      }

      else
      {

        v173 = 0u;
        v174 = 0u;
        sub_1E329505C(&v173);
        v66 = sub_1E4205F14();
        v68 = v67;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA60, "v;\r");
        v69 = swift_allocObject();
        *(v69 + 16) = v159;
        *(v69 + 32) = sub_1E40AD680();
        *(&v174 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32EC0, &unk_1E42B3DF0);
        *&v173 = v69;
        OUTLINED_FUNCTION_19_149();
        if (v11)
        {
          goto LABEL_84;
        }

        sub_1E329504C(&v173, v172);
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_7_237();
        OUTLINED_FUNCTION_33_91();
        v71 = v70;
        OUTLINED_FUNCTION_31_0();
        if (__OFADD__(v73, v74))
        {
          goto LABEL_85;
        }

        v75 = v72;
        if (sub_1E4207644())
        {
          v76 = OUTLINED_FUNCTION_33_91();
          if ((v71 & 1) != (v77 & 1))
          {
            goto LABEL_96;
          }

          v75 = v76;
        }

        v78 = v171;
        if (v71)
        {
          v79 = __swift_destroy_boxed_opaque_existential_1((v171[7] + 32 * v75));
          OUTLINED_FUNCTION_27_99(v79, v80, v81, v82, v83, v84, v85, v86, v157, v158, v159, *(&v159 + 1));
        }

        else
        {
          OUTLINED_FUNCTION_7_2(&v171[v75 >> 6]);
          v87 = (v171[6] + 16 * v75);
          *v87 = v66;
          v87[1] = v68;
          OUTLINED_FUNCTION_32_93(*(v78 + 56), v157, v158, v159, *(&v159 + 1), v160, v161, v162, v163, v165, v167, v169, v171, v172[0]);
          v88 = *(v78 + 16);
          v32 = __OFADD__(v88, 1);
          v89 = v88 + 1;
          if (v32)
          {
            goto LABEL_91;
          }

          *(v78 + 16) = v89;
        }

        v12[4] = v78;
      }

      v5 = v169;
      v7 = v167 + 8;
      v6 = v165;
    }

    while (v161 != v165);
    v90 = *(v169 + 16);
    v91 = v158[2];
    if (v91 + 1 < v90)
    {
      v168 = @"impressionParentId";
      v164 = v158[2];
      v166 = @"impressionType";
      v92 = ~v91 + v90;
      v93 = v91 + 5;
      do
      {
        v94 = sub_1E4205F14();
        v96 = v95;
        *&v172[0] = v5;
        *&v173 = v91;
        BYTE8(v173) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
        sub_1E3D75BF0();
        sub_1E38D2054(&v173, &v171);
        v97 = v171;
        if (v171)
        {
          v98 = sub_1E4205F14();
          if (*(v97 + 16))
          {
            v100 = sub_1E327D33C(v98, v99);
            v102 = v101;

            if (v102)
            {
              sub_1E328438C(*(v97 + 56) + 32 * v100, &v173);

              goto LABEL_52;
            }
          }

          else
          {
          }
        }

        v173 = 0u;
        v174 = 0u;
LABEL_52:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1E3FA2A70(v5);
        }

        OUTLINED_FUNCTION_19_149();
        if (v11)
        {
          goto LABEL_88;
        }

        v170 = v92;
        if (*(&v174 + 1))
        {
          sub_1E329504C(&v173, v172);
          swift_isUniquelyReferenced_nonNull_native();
          v171 = v5[v93];
          v103 = v5;
          v5[v93] = 0x8000000000000000;
          sub_1E327D33C(v94, v96);
          OUTLINED_FUNCTION_31_0();
          if (__OFADD__(v106, v107))
          {
            goto LABEL_93;
          }

          v108 = v104;
          v109 = v105;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310, &qword_1E429B110);
          OUTLINED_FUNCTION_30_86();
          if (sub_1E4207644())
          {
            v110 = sub_1E327D33C(v94, v96);
            if ((v109 & 1) != (v111 & 1))
            {
              goto LABEL_96;
            }

            v108 = v110;
          }

          v112 = v171;
          if (v109)
          {
            v113 = __swift_destroy_boxed_opaque_existential_1((v171[7] + 32 * v108));
            OUTLINED_FUNCTION_27_99(v113, v114, v115, v116, v117, v118, v119, v120, v157, v158, v159, *(&v159 + 1));
          }

          else
          {
            OUTLINED_FUNCTION_7_2(&v171[v108 >> 6]);
            v126 = (v112[6] + 16 * v108);
            *v126 = v94;
            v126[1] = v96;
            OUTLINED_FUNCTION_32_93(v112[7], v157, v158, v159, *(&v159 + 1), v160, v161, v162, v164, v166, v168, v170, v171, v172[0]);
            v127 = v112[2];
            v32 = __OFADD__(v127, 1);
            v128 = v127 + 1;
            if (v32)
            {
              goto LABEL_95;
            }

            v112[2] = v128;
          }

          v129 = v103;
          v103[v93] = v112;
        }

        else
        {
          sub_1E329505C(&v173);
          v121 = sub_1E327D33C(v94, v96);
          v122 = v5;
          if (v123)
          {
            v124 = v121;
            swift_isUniquelyReferenced_nonNull_native();
            v171 = v122[v93];
            v122[v93] = 0x8000000000000000;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310, &qword_1E429B110);
            OUTLINED_FUNCTION_30_86();
            sub_1E4207644();
            v125 = v171;

            sub_1E329504C((*(v125 + 56) + 32 * v124), v172);
            sub_1E4207664();
            v122[v93] = v125;
          }

          else
          {
            memset(v172, 0, sizeof(v172));
          }

          v129 = v122;

          sub_1E329505C(v172);
        }

        sub_1E4205F14();
        *(&v174 + 1) = MEMORY[0x1E69E6158];
        OUTLINED_FUNCTION_29_103();
        *&v173 = v130;
        *(&v173 + 1) = 0xEA00000000007075;
        OUTLINED_FUNCTION_19_149();
        if (v11)
        {
          goto LABEL_89;
        }

        v133 = v131;
        v134 = v132;
        sub_1E329504C(&v173, v172);
        swift_isUniquelyReferenced_nonNull_native();
        v171 = v129[v93];
        v135 = v129;
        v129[v93] = 0x8000000000000000;
        sub_1E327D33C(v133, v134);
        OUTLINED_FUNCTION_31_0();
        if (__OFADD__(v138, v139))
        {
          goto LABEL_90;
        }

        v140 = v136;
        v141 = v137;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310, &qword_1E429B110);
        OUTLINED_FUNCTION_30_86();
        if (sub_1E4207644())
        {
          v142 = sub_1E327D33C(v133, v134);
          if ((v141 & 1) != (v143 & 1))
          {
            goto LABEL_96;
          }

          v140 = v142;
        }

        v144 = v171;
        if (v141)
        {
          v145 = __swift_destroy_boxed_opaque_existential_1((v171[7] + 32 * v140));
          OUTLINED_FUNCTION_27_99(v145, v146, v147, v148, v149, v150, v151, v152, v157, v158, v159, *(&v159 + 1));
        }

        else
        {
          OUTLINED_FUNCTION_7_2(&v171[v140 >> 6]);
          v153 = (v144[6] + 16 * v140);
          *v153 = v133;
          v153[1] = v134;
          OUTLINED_FUNCTION_32_93(v144[7], v157, v158, v159, *(&v159 + 1), v160, v161, v162, v164, v166, v168, v170, v171, v172[0]);
          v154 = v144[2];
          v32 = __OFADD__(v154, 1);
          v155 = v154 + 1;
          if (v32)
          {
            goto LABEL_94;
          }

          v144[2] = v155;
        }

        v5 = v135;
        v135[v93] = v144;

        ++v93;
        v92 = v170 - 1;
        v91 = v164;
      }

      while (v170 != 1);
    }
  }

  return v5;
}

uint64_t sub_1E40AFA64()
{

  sub_1E32AF6F8(v0 + 40);
  return v0;
}

uint64_t sub_1E40AFA94()
{
  sub_1E40AFA64();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

unint64_t sub_1E40AFACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3F840;
  if (!qword_1ECF3F840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F840);
  }

  return result;
}

unint64_t sub_1E40AFB24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3F848;
  if (!qword_1ECF3F848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F848);
  }

  return result;
}

unint64_t sub_1E40AFB7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3F850;
  if (!qword_1ECF3F850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F850);
  }

  return result;
}

unint64_t sub_1E40AFBD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3F858;
  if (!qword_1ECF3F858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F858);
  }

  return result;
}

unint64_t sub_1E40AFC2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3F860;
  if (!qword_1ECF3F860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F860);
  }

  return result;
}

unint64_t sub_1E40AFC84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3F868;
  if (!qword_1ECF3F868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F868);
  }

  return result;
}

_BYTE *sub_1E40AFCFC(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_15(result, a2 + 6);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1E40AFDC4(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_15(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1E40AFE9C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_15(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1E40AFF64(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_15(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1E40B002C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_15(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}