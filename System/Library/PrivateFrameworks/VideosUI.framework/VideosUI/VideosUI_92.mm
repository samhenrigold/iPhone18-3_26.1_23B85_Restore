void sub_1E3DB7960()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  v6 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v12 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E41FE7E4();
  v13 = OUTLINED_FUNCTION_9_5();
  v14 = type metadata accessor for SportsFavoritesTemplateController(v13);
  v34.receiver = v1;
  v34.super_class = v14;
  objc_msgSendSuper2(&v34, sel_vuiCollectionView_didSelectItemAt_, v5, v0);

  v15 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x218))();
  sub_1E42000B4();

  v16 = v32;
  if (v32)
  {
    v28 = v31;
    v29 = v33;
    v27[1] = *sub_1E3CFEA54();
    OUTLINED_FUNCTION_4_0();
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_4_0();
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v8 + 16))(v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v6);
    v19 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v30 = v3;
    v20 = v5;
    v21 = (v10 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    *(v22 + 16) = v17;
    *(v22 + 24) = v18;
    (*(v8 + 32))(v22 + v19, v12, v6);
    v23 = (v22 + v21);
    v5 = v20;
    v24 = v29;
    v25 = v28;
    *v23 = v28;
    v23[1] = v16;
    v23[2] = v24;

    sub_1E3D00E1C(v25, v16, v24, sub_1E3DB9B5C, v22);
  }

  v26 = sub_1E41FE7E4();
  [v5 deselectItemAtIndexPath:v26 animated:1];

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DB7D24(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  sub_1E41FE7E4();
  v8 = OUTLINED_FUNCTION_106();
  v27.receiver = v4;
  v27.super_class = type metadata accessor for SportsFavoritesTemplateController(v8);
  objc_msgSendSuper2(&v27, sel_vuiCollectionView_willDisplay_for_, a1, a2, a3);

  v9 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x218))();
  sub_1E42000B4();

  if (!v22)
  {
    return;
  }

  OUTLINED_FUNCTION_47_0();
  v11 = (*(v10 + 552))();
  if (!v11)
  {

    v25 = 0u;
    v26 = 0u;
LABEL_10:
    sub_1E329505C(&v25);
    return;
  }

  v23 = &type metadata for ViewModelKeys.Sports;
  v24 = &off_1F5D7BC68;
  LOBYTE(v21) = 3;
  sub_1E3F9F164(&v21, v11, MEMORY[0x1E69E7CA0] + 8);

  __swift_destroy_boxed_opaque_existential_1(&v21);
  if (!*(&v26 + 1))
  {

    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_13:

    return;
  }

  v13 = v21;
  v12 = v22;
  v14 = sub_1E41FE7E4();
  v15 = [a1 cellForItemAtIndexPath_];

  if (!v15)
  {

    goto LABEL_13;
  }

  type metadata accessor for SportsFavoritesLockupCell();
  v16 = swift_dynamicCastClass();
  if (v16)
  {
    v17 = v16;
    sub_1E3CFEA54();
    OUTLINED_FUNCTION_8();
    v19 = *(v18 + 376);

    v20 = v19(v13, v12);

    type metadata accessor for SportsFavoritesLockupFactory();
    sub_1E401DB1C(v17, v20 & 1);
  }

  else
  {
  }
}

uint64_t sub_1E3DB8110()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x290))();
  result = sub_1E32AE9B0(v1);
  if (result)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](0, v1);
      goto LABEL_5;
    }

    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

LABEL_5:

      OUTLINED_FUNCTION_8();
      v4 = (*(v3 + 552))();

      return v4;
    }

    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t sub_1E3DB822C()
{
  sub_1E32AF6F8(v0 + OBJC_IVAR____TtC8VideosUI33SportsFavoritesTemplateController_templateUpdateObserver);
}

id sub_1E3DB8290()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SportsFavoritesTemplateController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1E3DB83A8(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x840))();
  return sub_1E37BCF0C;
}

void sub_1E3DB843C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v56 = v2;
  v3 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v53 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v51 = v10;
  v52 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v54 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  v20 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x230);
  if (!v20())
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_26_0();
  v22 = (*(v21 + 648))();

  if (!v22)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_5_0(v22 + 48, &v65);
  Strong = swift_unknownObjectWeakLoadStrong();

  if (!Strong)
  {
    goto LABEL_13;
  }

  if (!(v20)(v24) || (OUTLINED_FUNCTION_26_0(), v26 = (*(v25 + 552))(), , !v26))
  {

    v63 = 0u;
    v64 = 0u;
LABEL_12:
    sub_1E329505C(&v63);
    goto LABEL_13;
  }

  v60 = &type metadata for ViewModelKeys.Sports;
  v61 = &off_1F5D7BC68;
  LOBYTE(v57) = 0;
  sub_1E3F9F164(&v57, v26, MEMORY[0x1E69E7CA0] + 8);

  __swift_destroy_boxed_opaque_existential_1(&v57);
  if (!*(&v64 + 1))
  {

    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    v49 = v58;
    v50 = v57;
    v27 = sub_1E324FBDC();
    (*(v54 + 16))(v19, v27, v14);

    v28 = sub_1E41FFC94();
    v29 = sub_1E42067E4();

    v48 = v29;
    if (os_log_type_enabled(v28, v29))
    {
      v47 = v28;
      v30 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v57 = v46;
      *v30 = 136315138;
      if (v56)
      {
        v31 = sub_1E4205CA4();
        v33 = v32;
      }

      else
      {
        v33 = 0xE300000000000000;
        v31 = 7104878;
      }

      v34 = sub_1E3270FC8(v31, v33, &v57);

      *(v30 + 4) = v34;
      v28 = v47;
      _os_log_impl(&dword_1E323F000, v47, v48, "SportsFavoritesTemplateController::fetchTeams:: contextData: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v54 + 8))(v19, v14);
    v35 = OBJC_IVAR____TtC8VideosUI33SportsFavoritesTemplateController_teamsServiceRequest;
    if (*(v1 + OBJC_IVAR____TtC8VideosUI33SportsFavoritesTemplateController_teamsServiceRequest))
    {
      OUTLINED_FUNCTION_8();
      v37 = *(v36 + 376);

      v37(v38);
    }

    type metadata accessor for CollectionServiceRequestContext(0);
    v55 = Strong;
    sub_1E3E3D284(1, v50, v49, Strong);
    OUTLINED_FUNCTION_26_0();
    v40 = *(v39 + 208);

    v40(v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A2A8, qword_1E429D270);
    *(v1 + v35) = sub_1E37B2890();

    sub_1E32ADE38();
    v42 = sub_1E4206A04();
    OUTLINED_FUNCTION_4_0();
    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v61 = sub_1E3DB9E9C;
    v62 = v43;
    v57 = MEMORY[0x1E69E9820];
    v58 = 1107296256;
    OUTLINED_FUNCTION_14_1();
    v59 = v44;
    v60 = &block_descriptor_111;
    v45 = _Block_copy(&v57);

    sub_1E4203FE4();
    v57 = MEMORY[0x1E69E7CC0];
    sub_1E37E7A8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
    sub_1E32752B0(&qword_1EE23B5D0, &qword_1ECF2A730, &qword_1E429B000, MEMORY[0x1E69E6328]);
    sub_1E42072E4();
    MEMORY[0x1E6911380](0, v13, v8, v45);
    _Block_release(v45);

    (*(v53 + 8))(v8, v3);
    (*(v51 + 8))(v13, v52);
  }

  else
  {
  }

LABEL_13:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3DB8AEC()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x290))();
  result = sub_1E32AE9B0(v1);
  if (result)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](0, v1);
    }

    else
    {
      if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }
    }

    OUTLINED_FUNCTION_47_0();
    (*(v3 + 552))();
  }

  else
  {
  }

  sub_1E3DB843C();
}

uint64_t sub_1E3DB8C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_106();
  v4 = sub_1E41FDF34();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  sub_1E41FDEE4();
  v11 = v3;
  sub_1E3DB8AEC();

  return (*(v6 + 8))(v10, v4);
}

void sub_1E3DB8CD4()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  OUTLINED_FUNCTION_106();
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v119[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v119[-v10];
  v139 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  v18 = *v0;
  if (*(v0 + 17))
  {
    v139 = v2;
    *&v146 = sub_1E3F6FB3C(v18, *(v0 + 8), *(v0 + 16));
    *(&v146 + 1) = v19;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960, &unk_1E4298000);
    sub_1E4148C68(sub_1E394A5A0, v20, &v153);

    v21 = v153;
    v22 = sub_1E324FBDC();
    (*(v5 + 16))(v8, v22, v3);

    v23 = sub_1E41FFC94();
    v24 = sub_1E42067F4();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = v3;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v153 = v27;
      *v26 = 136315138;
      v28 = sub_1E3270FC8(v21, *(&v21 + 1), &v153);

      *(v26 + 4) = v28;
      _os_log_impl(&dword_1E323F000, v23, v24, "Sports Favorites Teams Service Request:: Error obtaining teams - error %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v5 + 8))(v8, v25);
    }

    else
    {

      (*(v5 + 8))(v8, v3);
    }

    v2 = v139;
LABEL_83:
    OUTLINED_FUNCTION_5_0(v2 + 16, &v153);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *&Strong[OBJC_IVAR____TtC8VideosUI33SportsFavoritesTemplateController_teamsServiceRequest] = 0;
    }

    OUTLINED_FUNCTION_5_0(v2 + 16, &v146);
    v110 = swift_unknownObjectWeakLoadStrong();
    if (v110)
    {
      *&v110[OBJC_IVAR____TtC8VideosUI33SportsFavoritesTemplateController_teamsServiceRequestCancellable] = 0;
    }

    goto LABEL_87;
  }

  v133 = v3;
  OUTLINED_FUNCTION_5_0(v18 + 40, &v156);
  v29 = *(v18 + 40);
  if (!v29)
  {
    goto LABEL_83;
  }

  ViewModelKeys.rawValue.getter(3);
  sub_1E3277E60(v30, v31, v29, &v153);

  if (!*(&v154 + 1))
  {
    v108 = &v153;
LABEL_82:
    sub_1E329505C(v108);
    goto LABEL_83;
  }

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  v33 = MEMORY[0x1E69E7CA0];
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_83;
  }

  *(&v154 + 1) = &type metadata for ViewModelKeys;
  *&v155 = &off_1F5D7BCA8;
  LOBYTE(v153) = 13;
  sub_1E3F9F164(&v153, v146, v33 + 8);

  if (!*(&v147 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1(&v153);
    v108 = &v146;
    goto LABEL_82;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(&v153);
    goto LABEL_83;
  }

  v34 = *&v145[0];
  __swift_destroy_boxed_opaque_existential_1(&v153);
  if (!*(v34 + 16))
  {

    goto LABEL_83;
  }

  v121 = v5;
  v122 = v11;
  v35 = *(v34 + 32);

  v37 = v35 + 64;
  v36 = *(v35 + 64);
  v131 = v35;
  v38 = 1 << *(v35 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v13;
  v41 = v39 & v36;
  OUTLINED_FUNCTION_5_0(v2 + 16, &v152);
  OUTLINED_FUNCTION_5_0(v2 + 16, &v151);
  OUTLINED_FUNCTION_5_0(v2 + 16, &v150);
  OUTLINED_FUNCTION_5_0(v2 + 16, &v149);
  v42 = 0;
  v43 = (v38 + 63) >> 6;
  v128 = v40 + 16;
  v125 = v40;
  v138 = (v40 + 8);
  v134 = v43;
  v135 = v37;
  v129 = v32;
  v130 = v17;
  while (1)
  {
    if (v41)
    {
      v44 = v42;
      goto LABEL_19;
    }

    do
    {
      v44 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        __break(1u);
LABEL_95:
        __break(1u);
        return;
      }

      if (v44 >= v43)
      {
        v41 = 0;
        v147 = 0u;
        v148 = 0u;
        v146 = 0u;
        goto LABEL_20;
      }

      v41 = *(v37 + 8 * v44);
      ++v42;
    }

    while (!v41);
    v42 = v44;
LABEL_19:
    v45 = __clz(__rbit64(v41));
    v41 &= v41 - 1;
    v46 = v45 | (v44 << 6);
    v47 = (*(v131 + 48) + 16 * v46);
    v49 = *v47;
    v48 = v47[1];
    sub_1E328438C(*(v131 + 56) + 32 * v46, v145);
    *&v146 = v49;
    *(&v146 + 1) = v48;
    sub_1E329504C(v145, &v147);

LABEL_20:
    v153 = v146;
    v154 = v147;
    v155 = v148;
    if (!*(&v146 + 1))
    {

      goto LABEL_83;
    }

    sub_1E329504C(&v154, v145);
    v50 = sub_1E38506C8();
    if (v50 == 263)
    {
      goto LABEL_29;
    }

    v51 = v50;
    sub_1E328438C(v145, &v146);
    v52 = swift_dynamicCast();
    if ((v52 & 1) == 0)
    {
      goto LABEL_29;
    }

    v55 = v141[0];
    LOWORD(v140) = v51;
    v144[15] = 119;
    sub_1E3742F1C(v52, v53, v54);
    sub_1E4206254();
    sub_1E4206254();
    if (v146 != v141[0] || *(&v146 + 1) != v141[1])
    {
      break;
    }

LABEL_33:
    v58 = swift_unknownObjectWeakLoadStrong();
    if (!v58)
    {

LABEL_29:
      __swift_destroy_boxed_opaque_existential_1(v145);
      goto LABEL_30;
    }

    v59 = v58;
    v137 = v55;
    OUTLINED_FUNCTION_64();
    v61 = (*(v60 + 560))();

    v62 = v139;
    v63 = v130;
    if (v61)
    {
      type metadata accessor for CollectionViewModel();
      swift_retain_n();
      v127 = sub_1E40B198C(v51, v137, v61);
      if (!v127)
      {

        goto LABEL_29;
      }

      v64 = (*(*v61 + 464))();
      if (v64)
      {
        v65 = v64;

        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (v65 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
        {
          v65 = sub_1E37EFA58(v65);
        }

        if (!*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_95;
        }

        *((v65 & 0xFFFFFFFFFFFFFF8) + 0x20) = v127;

        (*(*v61 + 472))(v65);
      }

      v67 = swift_unknownObjectWeakLoadStrong();
      if (v67)
      {
        v68 = v67;
        j__OUTLINED_FUNCTION_18();
        sub_1E404BB24();
      }

      v126 = v61;
      v69 = swift_unknownObjectWeakLoadStrong();
      if (v69)
      {
        v70 = v69;
        OUTLINED_FUNCTION_64();
        v72 = (*(v71 + 2096))();
        v74 = v73;

        if (v72)
        {
          ObjectType = swift_getObjectType();
          (*(v74 + 8))(1, ObjectType, v74);
        }
      }

      v76 = swift_unknownObjectWeakLoadStrong();
      if (v76)
      {
        v77 = v76;
        OUTLINED_FUNCTION_64();
        v79 = (*(v78 + 440))();

        v80 = [v79 indexPathsForVisibleItems];
        v62 = v139;
        v81 = sub_1E42062B4();
      }

      else
      {
        v81 = MEMORY[0x1E69E7CC0];
      }

      v43 = v134;
      v37 = v135;
      v82 = *(v81 + 16);
      if (v82)
      {
        v83 = v125;
        v84 = (*(v125 + 80) + 32) & ~*(v125 + 80);
        v124 = v81;
        v85 = v81 + v84;
        OUTLINED_FUNCTION_5_0(v2 + 16, v144);
        OUTLINED_FUNCTION_5_0(v2 + 16, &v143);
        v86 = *(v83 + 72);
        v136 = *(v83 + 16);
        v137 = v86;
        while (1)
        {
          v136(v63, v85, v62);
          v87 = swift_unknownObjectWeakLoadStrong();
          if (!v87)
          {
            break;
          }

          v88 = v87;
          OUTLINED_FUNCTION_64();
          v90 = (*(v89 + 536))();

          sub_1E42000B4();
          if (!*(&v146 + 1))
          {
            v99 = v138;
            v62 = v139;
            goto LABEL_68;
          }

          v132 = *(&v146 + 1);
          v91 = (*(*v147 + 672))();
          *(&v147 + 1) = &type metadata for ViewModelKeys;
          *&v148 = &off_1F5D7BCA8;
          LOBYTE(v146) = 11;
          v63 = MEMORY[0x1E69E7CA0];
          sub_1E3F9F164(&v146, v91, MEMORY[0x1E69E7CA0] + 8);

          v62 = v139;
          if (!v142)
          {
            goto LABEL_69;
          }

          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_70;
          }

          v92 = v140;
          __swift_destroy_boxed_opaque_existential_1(&v146);
          *(&v147 + 1) = &unk_1F5D5D528;
          *&v148 = &off_1F5D5C868;
          LOBYTE(v146) = 0;
          sub_1E3F9F164(&v146, v92, v63 + 8);

          if (v142)
          {
            if ((swift_dynamicCast() & 1) == 0)
            {
LABEL_70:
              v102 = OUTLINED_FUNCTION_2_188();
              v103(v102);

              __swift_destroy_boxed_opaque_existential_1(&v146);
              goto LABEL_71;
            }

            v63 = v140;
            __swift_destroy_boxed_opaque_existential_1(&v146);
            v93 = swift_unknownObjectWeakLoadStrong();
            if (v93)
            {
              v94 = v93;
              v120 = v63;
              OUTLINED_FUNCTION_64();
              v96 = (*(v95 + 440))();

              v97 = sub_1E41FE7E4();
              v63 = [v96 cellForItemAtIndexPath_];

              v123 = v63;
              if (!v63)
              {
                v62 = v139;
                v106 = OUTLINED_FUNCTION_2_188();
                v107(v106);

                goto LABEL_71;
              }

              type metadata accessor for SportsFavoritesLockupCell();
              v98 = swift_dynamicCastClass();
              v62 = v139;
              if (v98)
              {
                OUTLINED_FUNCTION_106();
                type metadata accessor for SportsFavoritesLockupFactory();
                sub_1E401DB1C(v97, v120);
              }
            }

            else
            {
            }

            v104 = OUTLINED_FUNCTION_2_188();
            v105(v104);
          }

          else
          {
LABEL_69:
            v100 = OUTLINED_FUNCTION_2_188();
            v101(v100);

            __swift_destroy_boxed_opaque_existential_1(&v146);
            sub_1E329505C(v141);
          }

LABEL_71:
          v85 += v137;
          if (!--v82)
          {

            v43 = v134;
            v37 = v135;
            goto LABEL_77;
          }
        }

        v99 = v138;
LABEL_68:
        (*v99)(v63, v62);
        goto LABEL_71;
      }

LABEL_77:

      __swift_destroy_boxed_opaque_existential_1(v145);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v145);

LABEL_30:
      v43 = v134;
      v37 = v135;
    }
  }

  v57 = sub_1E42079A4();

  if (v57)
  {
    goto LABEL_33;
  }

  v111 = sub_1E324FBDC();
  v113 = v121;
  v112 = v122;
  v114 = v133;
  (*(v121 + 16))(v122, v111, v133);
  v115 = sub_1E41FFC94();
  v116 = sub_1E42067E4();
  if (os_log_type_enabled(v115, v116))
  {
    v118 = swift_slowAlloc();
    *v118 = 0;
    _os_log_impl(&dword_1E323F000, v115, v116, "SportsFavoritesTemplateController::fetchTeams:: collection is not a list collection.", v118, 2u);
    v112 = v122;
    OUTLINED_FUNCTION_6_0();
  }

  (*(v113 + 8))(v112, v114);
  __swift_destroy_boxed_opaque_existential_1(v145);
LABEL_87:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DB9B5C()
{
  OUTLINED_FUNCTION_9_5();
  sub_1E41FE874();
  v2 = *(v1 + 24);
  if (v0)
  {
    v3 = *(v1 + 16);
    v18[0] = v0;
    v4 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
    if ((swift_dynamicCast() & 1) != 0 && sub_1E374E8E4(v19, 1))
    {
      OUTLINED_FUNCTION_5_0(v3 + 16, v18);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v6 = Strong;
        sub_1E3DB72C0();
      }

      return;
    }
  }

  OUTLINED_FUNCTION_5_0(v2 + 16, v21);
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    v9 = sub_1E41FE7E4();
    v10 = [v8 cellForItemAtIndexPath_];

    if (v10)
    {
      type metadata accessor for SportsFavoritesLockupCell();
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        v12 = v11;
        OUTLINED_FUNCTION_47_0();
        v14 = (*(v13 + 552))();
        if (v14)
        {
          v18[3] = &type metadata for ViewModelKeys.Sports;
          v18[4] = &off_1F5D7BC68;
          LOBYTE(v18[0]) = 3;
          sub_1E3F9F164(v18, v14, MEMORY[0x1E69E7CA0] + 8);

          __swift_destroy_boxed_opaque_existential_1(v18);
          if (*(&v20 + 1))
          {
            if (swift_dynamicCast())
            {
              v15 = v18[0];
              v16 = v18[1];
              v17 = *(**sub_1E3CFEA54() + 376);

              LOBYTE(v15) = v17(v15, v16);

              type metadata accessor for SportsFavoritesLockupFactory();
              sub_1E401DB1C(v12, v15 & 1);
            }

            goto LABEL_13;
          }
        }

        else
        {

          v19 = 0u;
          v20 = 0u;
        }

        sub_1E329505C(&v19);
        return;
      }

LABEL_13:
    }
  }
}

double sub_1E3DB9E9C()
{
  v1 = v0;
  OUTLINED_FUNCTION_5_0(v0 + 16, v14);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    OUTLINED_FUNCTION_5_0(v0 + 16, v13);
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5 && (v6 = v5, v7 = *(v5 + OBJC_IVAR____TtC8VideosUI33SportsFavoritesTemplateController_teamsServiceRequest), , v6, v7) && (v8 = (*(*v7 + 352))(), , v8))
    {
      OUTLINED_FUNCTION_4_0();
      v9 = swift_allocObject();
      OUTLINED_FUNCTION_5_0(v1 + 16, v12);
      v10 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      v11 = sub_1E41EC148(sub_1E3DB9FF0, v9);
    }

    else
    {
      v11 = 0;
    }

    *&v4[OBJC_IVAR____TtC8VideosUI33SportsFavoritesTemplateController_teamsServiceRequestCancellable] = v11;
  }

  return result;
}

void sub_1E3DB9FF8()
{
  OUTLINED_FUNCTION_5_0(v1 + 16, v6);
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_9_5();
    type metadata accessor for SportsFavoritesOnboardingViewController();
    sub_1E398B5BC();
    v2 = sub_1E39874B4();
    aBlock[4] = sub_1E3A2AF94;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    OUTLINED_FUNCTION_14_1();
    aBlock[2] = v3;
    aBlock[3] = &block_descriptor_22_1;
    v4 = _Block_copy(aBlock);
    [v0 presentViewController:v2 animated:1 completion:v4];
    _Block_release(v4);
  }
}

id sub_1E3DBA0E0(id result)
{
  if (result >= 3)
  {
    return result;
  }

  return result;
}

unint64_t sub_1E3DBA0F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF38A08;
  if (!qword_1ECF38A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38A08);
  }

  return result;
}

uint64_t sub_1E3DBA150@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  *&v5 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v7 = &v13 - v6;
  v8 = *(v1 + _MergedGlobals_81);
  [v8 elapsedTime];
  v9 = sub_1E41FE5D4();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v9);
  [v8 rate];
  v10 = [v8 selectedAudioOption];
  if (v10)
  {
    sub_1E3DBDB94(v10);
  }

  sub_1E41FEE74();
  v11 = sub_1E41FEE84();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v11);
}

void (*sub_1E3DBA2A8(void *a1))(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32C68, &qword_1E42B9900);
  OUTLINED_FUNCTION_17_2(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  *a1 = v4;
  sub_1E3DBA150(v4);
  return sub_1E3DBA328;
}

void sub_1E3DBA328(uint64_t *a1)
{
  v1 = *a1;
  sub_1E325F6F0(*a1, &qword_1ECF32C68, &qword_1E42B9900);

  free(v1);
}

uint64_t sub_1E3DBA3B0(void *a1)
{
  v3 = sub_1E41FEC64();
  v4 = OUTLINED_FUNCTION_17_2(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v43 = v6 - v5;
  v42 = sub_1E41FEC94();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v41 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - v12;
  v14 = sub_1E41FECF4();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  v38 = v17;
  v39 = v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v38 - v21;
  v23 = (v1 + qword_1EE237E38);
  *v23 = 0u;
  v23[1] = 0u;
  v24 = (v1 + qword_1EE237E40);
  *v24 = 0u;
  v24[1] = 0u;
  *(v1 + qword_1EE237E48) = MEMORY[0x1E69E7CD0];
  *(v1 + qword_1EE237E50) = MEMORY[0x1E69E7CC0];
  v25 = v1 + qword_1EE237E58;
  *v25 = 0;
  *(v25 + 8) = 1;
  sub_1E41FFCA4();
  *(v1 + _MergedGlobals_81) = a1;
  v40 = a1;
  v26 = sub_1E41FEF34();
  sub_1E3DBE174(&qword_1EE251C30, type metadata accessor for PlayerBasedMetadataVendor, &unk_1E42D1D60);
  swift_retain_n();
  sub_1E41FEEA4();
  v27 = [objc_opt_self() sharedInstance];
  v28 = [v27 timedMetadataConfig];

  sub_1E41FECE4();
  v29 = OUTLINED_FUNCTION_29_78();
  [v29 initialLookAhead];

  OUTLINED_FUNCTION_25_78();
  sub_1E41FECB4();
  v30 = OUTLINED_FUNCTION_29_78();
  [v30 initialLookBack];

  OUTLINED_FUNCTION_25_78();
  sub_1E41FECA4();
  v31 = OUTLINED_FUNCTION_29_78();
  [v31 lookAhead];

  OUTLINED_FUNCTION_25_78();
  sub_1E41FECD4();
  v32 = OUTLINED_FUNCTION_29_78();
  [v32 timeRangeProximityThreshold];

  OUTLINED_FUNCTION_25_78();
  sub_1E41FECC4();
  (*(v16 + 16))(v19, v22, v14);
  v33 = sub_1E41FEEB4();
  sub_1E41FEC54();
  v33(v44, 0);
  sub_1E41FEC84();
  v34 = [v28 audioSmoothingConfig];
  [v34 durationToRetainAudioEntity];

  sub_1E41FEC74();
  v35 = v42;
  (*(v8 + 16))(v41, v13, v42);
  v36 = sub_1E41FEEB4();
  sub_1E41FEC44();
  v36(v44, 0);
  sub_1E41FEEC4();
  sub_1E41FEED4();

  sub_1E3DBBB50();
  sub_1E3DBC328();
  sub_1E3DBC504();
  sub_1E3DBC6D4();
  sub_1E3DBC884();

  (*(v8 + 8))(v13, v35);
  (*(v39 + 8))(v22, v38);
  return v26;
}

uint64_t sub_1E3DBA8C4()
{
  sub_1E325F6F0(v0 + qword_1EE237E38, &unk_1ECF296E0, &unk_1E4298030);
  sub_1E325F6F0(v0 + qword_1EE237E40, &unk_1ECF296E0, &unk_1E4298030);

  v1 = qword_1EE296050;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_2();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

uint64_t sub_1E3DBA990()
{
  v0 = sub_1E328740C();
  v1 = *((*MEMORY[0x1E69E7D40] & **v0) + 0xF8);
  v2 = *v0;
  v1();

  v3 = sub_1E41FEF64();
  sub_1E325F6F0(v3 + qword_1EE237E38, &unk_1ECF296E0, &unk_1E4298030);
  sub_1E325F6F0(v3 + qword_1EE237E40, &unk_1ECF296E0, &unk_1E4298030);

  v4 = qword_1EE296050;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_2();
  (*(v5 + 8))(v3 + v4);
  return v3;
}

uint64_t sub_1E3DBAAAC()
{
  v0 = sub_1E3DBA990();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3DBAB00()
{
  sub_1E41FEF44();
  v1 = sub_1E41FEF54();
  v1();
  sub_1E3DBC9FC();
  v2 = qword_1EE237E40;
  OUTLINED_FUNCTION_5_0(v0 + qword_1EE237E40, v6);
  sub_1E3294F34(v0 + v2, &v7);
  if (!*(&v8 + 1))
  {
    return sub_1E325F6F0(&v7, &unk_1ECF296E0, &unk_1E4298030);
  }

  sub_1E329504C(&v7, &v9);
  v3 = *(v0 + _MergedGlobals_81);
  __swift_project_boxed_opaque_existential_1(&v9, v10);
  [v3 removeElapsedTimeObserverWithToken_];
  swift_unknownObjectRelease();
  v7 = 0u;
  v8 = 0u;
  OUTLINED_FUNCTION_11_3(v0 + v2, &v5);
  sub_1E37EB5D0(&v7, v0 + v2);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1(&v9);
}

uint64_t sub_1E3DBAC1C()
{
  sub_1E41FEF44();
  v1 = sub_1E41FEF54();
  v1();
  v2 = qword_1EE237E38;
  OUTLINED_FUNCTION_5_0(v0 + qword_1EE237E38, v5);
  sub_1E3294F34(v0 + v2, &v6);
  if (!v7)
  {
    return sub_1E325F6F0(&v6, &unk_1ECF296E0, &unk_1E4298030);
  }

  sub_1E329504C(&v6, &v8);
  v3 = *(v0 + _MergedGlobals_81);
  __swift_project_boxed_opaque_existential_1(&v8, v9);
  [v3 removeBoundaryTimeObserverWithToken_];
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(&v8);
}

void sub_1E3DBAD04()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32D00, &qword_1E42B9A28);
  OUTLINED_FUNCTION_17_2(v8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF34390, &unk_1E42BF630);
  OUTLINED_FUNCTION_17_2(v12);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39[-v14];
  v16 = sub_1E41FEB94();
  OUTLINED_FUNCTION_0_10();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  if ((v5 & 1) == 0)
  {
    goto LABEL_21;
  }

  v40 = v7;
  sub_1E41FEC04();
  v23 = sub_1E41FEAE4();
  if (__swift_getEnumTagSinglePayload(v11, 1, v23) == 1)
  {
    sub_1E325F6F0(v11, &unk_1ECF32D00, &qword_1E42B9A28);
    v41 = 0u;
    v42 = 0u;
    v43 = 0;
LABEL_13:
    sub_1E325F6F0(&v41, &unk_1ECF38A10, qword_1E42D1D28);
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
    goto LABEL_14;
  }

  v24 = sub_1E41FEAC4();
  (*(*(v23 - 8) + 8))(v11, v23);
  sub_1E39574B8(v24, &v41);

  if (!*(&v42 + 1))
  {
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF343A0, &unk_1E42BF640);
  v25 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v15, v25 ^ 1u, 1, v16);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) != 1)
  {
    (*(v18 + 32))(v22, v15, v16);
    v26 = sub_1E41FEB44();
    if (v27)
    {
      v28 = v26;
    }

    else
    {
      v28 = 0;
    }

    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = 0xE000000000000000;
    }

    (*(v18 + 8))(v22, v16);
    goto LABEL_15;
  }

LABEL_14:
  sub_1E325F6F0(v15, &unk_1ECF34390, &unk_1E42BF630);
  v28 = 0;
  v29 = 0xE000000000000000;
LABEL_15:

  v30 = sub_1E41FFC94();
  v31 = sub_1E4206814();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = OUTLINED_FUNCTION_6_21();
    v33 = OUTLINED_FUNCTION_100();
    *&v41 = v33;
    *v32 = 136315138;

    v34 = sub_1E3270FC8(v28, v29, &v41);

    *(v32 + 4) = v34;
    _os_log_impl(&dword_1E323F000, v30, v31, "Setting current embedded song adam ID to %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v35 = [*(v1 + _MergedGlobals_81) currentMediaItem];
  if (v35)
  {
    v36 = v35;
    v37 = sub_1E4205ED4();

    [v36 setMediaItemMetadata:v37 forProperty:*MEMORY[0x1E69D5B28]];

    swift_unknownObjectRelease();
  }

  else
  {
  }

  LOBYTE(v7) = v40;
LABEL_21:
  sub_1E41FEF44();
  v38 = sub_1E41FEF54();
  v38(v7 & 1, v5 & 1, v3);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3DBB160()
{
  OUTLINED_FUNCTION_24();
  v1[12] = v2;
  v1[13] = v0;
  v1[14] = sub_1E4206434();
  v1[15] = sub_1E4206424();
  v3 = swift_task_alloc();
  v1[16] = v3;
  *v3 = v1;
  v3[1] = sub_1E3DBB20C;

  return sub_1E3DBCC24();
}

uint64_t sub_1E3DBB20C()
{
  OUTLINED_FUNCTION_24();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v4 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E3DBB33C, v4, v3);
}

uint64_t sub_1E3DBB33C()
{

  v1 = sub_1E41FFC94();
  v2 = sub_1E4206814();
  if (OUTLINED_FUNCTION_104(v2))
  {
    *OUTLINED_FUNCTION_125_0() = 0;
    OUTLINED_FUNCTION_3_12(&dword_1E323F000, v3, v4, "Continuing after metadata required to fetch timed metadata payload is loaded");
    OUTLINED_FUNCTION_6_0();
  }

  if (OUTLINED_FUNCTION_21_88())
  {
    ObjectType = swift_getObjectType();
    v6 = *MEMORY[0x1E69D5BF0];
    v7 = MEMORY[0x1E69E6158];
    sub_1E4123588(ObjectType, MEMORY[0x1E69E6158]);
    sub_1E4123590(v6, v7, v0 + 16);
    swift_unknownObjectRelease();
  }

  if (OUTLINED_FUNCTION_21_88())
  {
    v8 = swift_getObjectType();
    v9 = *MEMORY[0x1E69D5DA8];
    v10 = MEMORY[0x1E69E6158];
    sub_1E4123588(v8, MEMORY[0x1E69E6158]);
    sub_1E4123590(v9, v10, v0 + 32);
    swift_unknownObjectRelease();
  }

  if (OUTLINED_FUNCTION_21_88())
  {
    v11 = swift_getObjectType();
    sub_1E4123588(v11, MEMORY[0x1E69E63B0]);
    OUTLINED_FUNCTION_28_67(v0 + 80);
    swift_unknownObjectRelease();
  }

  if (OUTLINED_FUNCTION_21_88())
  {
    v12 = swift_getObjectType();
    sub_1E4123588(v12, MEMORY[0x1E69E6158]);
    OUTLINED_FUNCTION_28_67(v0 + 48);
    swift_unknownObjectRelease();
  }

  if (OUTLINED_FUNCTION_21_88())
  {
    v13 = swift_getObjectType();
    v14 = *MEMORY[0x1E69D5CD8];
    v15 = MEMORY[0x1E69E6158];
    sub_1E4123588(v13, MEMORY[0x1E69E6158]);
    sub_1E4123590(v14, v15, v0 + 64);
    swift_unknownObjectRelease();
  }

  sub_1E41FEE54();
  v16 = *(v0 + 8);

  return v16();
}

void sub_1E3DBB670(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = qword_1EE237E38;
  OUTLINED_FUNCTION_5_0(v2 + qword_1EE237E38, v26);
  sub_1E3294F34(v2 + v6, &v27);
  if (*(&v28 + 1))
  {
    sub_1E329504C(&v27, &aBlock);
    v7 = *(v2 + _MergedGlobals_81);
    __swift_project_boxed_opaque_existential_1(&aBlock, *(&v23 + 1));
    [v7 removeBoundaryTimeObserverWithToken_];
    swift_unknownObjectRelease();
    v27 = 0u;
    v28 = 0u;
    OUTLINED_FUNCTION_11_3(v3 + v6, v21);
    sub_1E37EB5D0(&v27, v3 + v6);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {
    sub_1E325F6F0(&v27, &unk_1ECF296E0, &unk_1E4298030);
  }

  v8 = v3 + qword_1EE237E58;
  *v8 = a1;
  *(v8 + 8) = a2 & 1;
  v9 = sub_1E41FFC94();
  v10 = sub_1E4206814();
  v11 = OUTLINED_FUNCTION_104(v10);
  if (a2)
  {
    if (v11)
    {
      v12 = OUTLINED_FUNCTION_125_0();
      *v12 = 0;
      _os_log_impl(&dword_1E323F000, v9, v10, "Not scheduling next boundary time since next time is not available.", v12, 2u);
      OUTLINED_FUNCTION_6_0();
    }
  }

  else
  {
    if (v11)
    {
      v13 = OUTLINED_FUNCTION_6_21();
      *v13 = 134217984;
      *(v13 + 4) = a1;
      _os_log_impl(&dword_1E323F000, v9, v10, "Scheduling next boundary time for %f", v13, 0xCu);
      OUTLINED_FUNCTION_6_0();
    }

    v14 = *(v3 + _MergedGlobals_81);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1E4297BE0;
    *(v15 + 56) = MEMORY[0x1E69E63B0];
    *(v15 + 32) = a1;
    OUTLINED_FUNCTION_4_0();
    v16 = swift_allocObject();
    OUTLINED_FUNCTION_31_3(v16);
    v24 = sub_1E3DBDC50;
    v25 = v16;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v23 = sub_1E37EB82C;
    *(&v23 + 1) = &block_descriptor_112;
    v17 = _Block_copy(&aBlock);

    v18 = OUTLINED_FUNCTION_74();
    v20 = sub_1E37F9910(v18, v19, v14);
    _Block_release(v17);
    if (v20)
    {
      sub_1E4207264();
      swift_unknownObjectRelease();
    }

    else
    {
      aBlock = 0u;
      v23 = 0u;
    }

    OUTLINED_FUNCTION_11_3(v3 + v6, &v27);
    sub_1E37EB5D0(&aBlock, v3 + v6);
    swift_endAccess();
  }
}

id sub_1E3DBB970(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  sub_1E39C8E64(a1, a2);
  v6 = sub_1E41FFC94();
  v7 = sub_1E4206814();
  v8 = OUTLINED_FUNCTION_74();
  sub_1E38DCE1C(v8, v9);
  if (os_log_type_enabled(v6, v7))
  {
    v10 = OUTLINED_FUNCTION_6_21();
    v11 = OUTLINED_FUNCTION_100();
    v34 = v11;
    *v10 = 136315138;
    if (a2 >> 60 == 15)
    {
      OUTLINED_FUNCTION_26_87();
    }

    else
    {
      v12 = MEMORY[0x1E6969080];
      v13 = a1;
      v14 = a2;
    }

    v31 = v13;
    v32 = v14;
    v33 = v12;
    v15 = OUTLINED_FUNCTION_74();
    sub_1E39C8E64(v15, v16);
    v17 = sub_1E3294FA4(&v31);
    v19 = sub_1E3270FC8(v17, v18, &v34);

    *(v10 + 4) = v19;
    OUTLINED_FUNCTION_35_8();
    _os_log_impl(v20, v21, v22, v23, v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_21_0();
  }

  result = [*(v3 + _MergedGlobals_81) currentMediaItem];
  if (result)
  {
    ObjectType = swift_getObjectType();
    v27 = *MEMORY[0x1E69D5BF0];
    v28 = MEMORY[0x1E69E6158];
    sub_1E4123588(ObjectType, MEMORY[0x1E69E6158]);
    sub_1E4123590(v27, v28, &v31);
    swift_unknownObjectRelease();
    result = v32;
    if (v32)
    {

      sub_1E41FEF44();
      sub_1E41FEF54();
      v29 = OUTLINED_FUNCTION_74();
      return v30(v29);
    }
  }

  return result;
}

void sub_1E3DBBB50()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF33A10, &unk_1E42BC8E0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_26_2();
  v10 = [objc_opt_self() defaultCenter];
  sub_1E4206C14();

  OUTLINED_FUNCTION_4_0();
  v11 = swift_allocObject();
  OUTLINED_FUNCTION_31_3(v11);
  OUTLINED_FUNCTION_3_183();
  sub_1E3DBE174(v12, v13, MEMORY[0x1E6969F18]);
  sub_1E42007B4();

  (*(v4 + 8))(v8, v2);
  OUTLINED_FUNCTION_4_0();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_31_3(v14);
  sub_1E32752B0(&qword_1EE28A2E0, &unk_1ECF33A10, &unk_1E42BC8E0, MEMORY[0x1E695BDE0]);
  sub_1E4200844();

  v15 = OUTLINED_FUNCTION_74();
  v16(v15);
  OUTLINED_FUNCTION_11_3(v1 + qword_1EE237E48, &v17);
  sub_1E42004C4();
  swift_endAccess();

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DBBDD8()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_5_0(v0 + 16, &v23);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1E41FDF14();
    if (v20[3])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3A150, &qword_1E42BC8F0);
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_23;
      }

      v3 = [*(v2 + _MergedGlobals_81) currentMediaItem];
      if (!v3)
      {

        goto LABEL_22;
      }

      v4 = v3;
      swift_getObjectType();
      if (([v4 isEqualToMediaItem_] & 1) == 0)
      {
LABEL_21:

        swift_unknownObjectRelease();
        goto LABEL_22;
      }

      v5 = sub_1E41FDF24();
      if (v5)
      {
        v6 = v5;
        v18 = sub_1E4205F14();
        v19 = v7;
        sub_1E4207414();
        sub_1E375D7E8(v6, &v21, v20);

        sub_1E375D84C(v20);
        if (*(&v22 + 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF33A20, &qword_1E42BC8F8);
          v8 = swift_dynamicCast();
          if (v8)
          {
            v9 = v20[0];
            v10 = *MEMORY[0x1E69D5BE8];
            v20[0] = *MEMORY[0x1E69D5BE8];
            MEMORY[0x1EEE9AC00](v8);
            v17 = v20;
            v11 = sub_1E3B42F1C(sub_1E3B44AE0, v16, v9);
            if (v11)
            {

LABEL_20:
              v14 = OUTLINED_FUNCTION_18();
              sub_1E4123650(v10, v14 & 1);
              v15 = OUTLINED_FUNCTION_18();
              sub_1E4123650(@"VUIMediaItemMetadataKeyIsEligibleForTimedMetadata", v15 & 1);
              swift_unknownObjectRelease();

              swift_unknownObjectRelease();
              goto LABEL_23;
            }

            v20[0] = @"VUIMediaItemMetadataKeyIsEligibleForTimedMetadata";
            MEMORY[0x1EEE9AC00](v11);
            v17 = v20;
            v13 = sub_1E3B42F1C(sub_1E3DBE1C0, v16, v9);

            if (v13)
            {
              goto LABEL_20;
            }

            goto LABEL_21;
          }

          swift_unknownObjectRelease();

LABEL_22:
          swift_unknownObjectRelease();
          goto LABEL_23;
        }

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v21 = 0u;
        v22 = 0u;
      }

      v12 = &v21;
    }

    else
    {

      v12 = v20;
    }

    sub_1E325F6F0(v12, &unk_1ECF296E0, &unk_1E4298030);
  }

LABEL_23:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DBC168()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FDE8, &qword_1E42AF868);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_5_0(v2 + 16, &v25);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_1E41FFC94();
    v10 = sub_1E4206814();
    if (OUTLINED_FUNCTION_104(v10))
    {
      *OUTLINED_FUNCTION_125_0() = 0;
      OUTLINED_FUNCTION_35_8();
      _os_log_impl(v11, v12, v13, v14, v15, 2u);
      OUTLINED_FUNCTION_21_0();
    }

    v16 = qword_1EE237E50;
    v17 = *(v8 + qword_1EE237E50);
    v18 = *(v17 + 16);
    if (v18)
    {
      v24 = qword_1EE237E50;
      v21 = *(v5 + 16);
      v19 = v5 + 16;
      v20 = v21;
      v22 = v17 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
      v23 = *(v19 + 56);

      do
      {
        v20(v0, v22, v3);
        sub_1E42063D4();
        (*(v19 - 8))(v0, v3);
        v22 += v23;
        --v18;
      }

      while (v18);

      v16 = v24;
    }

    *(v8 + v16) = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DBC328()
{
  OUTLINED_FUNCTION_31_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38A28, qword_1E42D1DF0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_26_2();
  swift_getKeyPath();
  sub_1E41FE2F4();

  OUTLINED_FUNCTION_4_0();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_31_3(v2);
  sub_1E32752B0(&qword_1EE23AD80, &qword_1ECF38A28, qword_1E42D1DF0, MEMORY[0x1E6969F80]);
  sub_1E4200844();

  v3 = OUTLINED_FUNCTION_74();
  v4(v3);
  OUTLINED_FUNCTION_11_3(v0 + qword_1EE237E48, &v5);
  sub_1E42004C4();
  swift_endAccess();

  OUTLINED_FUNCTION_25_2();
}

id sub_1E3DBC4B4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 selectedAudioOption];
  *a2 = result;
  return result;
}

double sub_1E3DBC524(uint64_t a1)
{
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  OUTLINED_FUNCTION_5_0(a1 + 16, v16);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v4 + 16))(v8, Strong + qword_1EE296050, v2);

    v10 = sub_1E41FFC94();
    v11 = sub_1E4206814();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = OUTLINED_FUNCTION_125_0();
      *v12 = 0;
      _os_log_impl(&dword_1E323F000, v10, v11, "Player time did jump", v12, 2u);
      OUTLINED_FUNCTION_21_0();
    }

    (*(v4 + 8))(v8, v2);
  }

  OUTLINED_FUNCTION_5_0(a1 + 16, v15);
  if (swift_weakLoadStrong())
  {
    sub_1E41FEEF4();
  }

  OUTLINED_FUNCTION_5_0(a1 + 16, v14);
  if (swift_weakLoadStrong())
  {
    sub_1E41FEF14();
  }

  return result;
}

double sub_1E3DBC6F4(void *a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = [objc_opt_self() defaultCenter];
  sub_1E4206C14();

  OUTLINED_FUNCTION_4_0();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_31_3(v12);
  OUTLINED_FUNCTION_3_183();
  sub_1E3DBE174(v13, v14, MEMORY[0x1E6969F18]);
  sub_1E4200844();

  (*(v6 + 8))(v10, v4);
  OUTLINED_FUNCTION_11_3(v3 + qword_1EE237E48, v16);
  sub_1E42004C4();
  swift_endAccess();

  return result;
}

uint64_t sub_1E3DBC884()
{
  v1 = qword_1EE237E40;
  OUTLINED_FUNCTION_5_0(v0 + qword_1EE237E40, v13);
  sub_1E3294F34(v0 + v1, &aBlock);
  v2 = *(&v10 + 1);
  result = sub_1E325F6F0(&aBlock, &unk_1ECF296E0, &unk_1E4298030);
  if (!v2)
  {
    v4 = *(v0 + _MergedGlobals_81);
    OUTLINED_FUNCTION_4_0();
    v5 = swift_allocObject();
    swift_weakInit();
    v11 = sub_1E3DBDE24;
    v12 = v5;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v10 = sub_1E3C55E60;
    *(&v10 + 1) = &block_descriptor_12_2;
    v6 = _Block_copy(&aBlock);

    v7 = [v4 addElapsedTimeObserver_];
    _Block_release(v6);
    if (v7)
    {
      sub_1E4207264();
      swift_unknownObjectRelease();
    }

    else
    {
      aBlock = 0u;
      v10 = 0u;
    }

    OUTLINED_FUNCTION_11_3(v0 + v1, v8);
    sub_1E37EB5D0(&aBlock, v0 + v1);
    return swift_endAccess();
  }

  return result;
}

void sub_1E3DBC9FC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FDE8, &qword_1E42AF868);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  v8 = qword_1EE237E38;
  OUTLINED_FUNCTION_5_0(v1 + qword_1EE237E38, &v22);
  sub_1E3294F34(v1 + v8, &v23);
  if (*(&v24 + 1))
  {
    sub_1E329504C(&v23, &v25);
    v9 = *(v1 + _MergedGlobals_81);
    __swift_project_boxed_opaque_existential_1(&v25, v26);
    [v9 removeBoundaryTimeObserverWithToken_];
    swift_unknownObjectRelease();
    v23 = 0u;
    v24 = 0u;
    OUTLINED_FUNCTION_11_3(v1 + v8, &v21);
    sub_1E37EB5D0(&v23, v1 + v8);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(&v25);
  }

  else
  {
    sub_1E325F6F0(&v23, &unk_1ECF296E0, &unk_1E4298030);
  }

  v10 = v1 + qword_1EE237E58;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = qword_1EE237E50;
  v12 = *(v1 + qword_1EE237E50);
  v13 = *(v12 + 16);
  if (v13)
  {
    v20 = qword_1EE237E50;
    v16 = *(v4 + 16);
    v14 = v4 + 16;
    v15 = v16;
    v17 = v12 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v18 = *(v14 + 56);

    do
    {
      v15(v7, v17, v2);
      sub_1E42063D4();
      (*(v14 - 8))(v7, v2);
      v17 += v18;
      --v13;
    }

    while (v13);

    v11 = v20;
  }

  *(v1 + v11) = MEMORY[0x1E69E7CC0];

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3DBCC24()
{
  OUTLINED_FUNCTION_24();
  v1[2] = v0;
  v1[3] = sub_1E4206434();
  v1[4] = sub_1E4206424();
  v3 = sub_1E42063B4();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E3DBCCBC, v3, v2);
}

uint64_t sub_1E3DBCCBC()
{
  v1 = *(*(v0 + 16) + _MergedGlobals_81);
  if ([v1 currentMediaItem])
  {
    ObjectType = swift_getObjectType();
    v3 = *MEMORY[0x1E69D5BE8];
    v4 = MEMORY[0x1E69E6370];
    sub_1E4123588(ObjectType, MEMORY[0x1E69E6370]);
    sub_1E4123590(v3, v4, v0 + 72);
    swift_unknownObjectRelease();
    v5 = *(v0 + 72);
  }

  else
  {
    v5 = 0;
  }

  if ([v1 currentMediaItem] && (v6 = swift_getObjectType(), v7 = MEMORY[0x1E69E6370], sub_1E4123588(v6, MEMORY[0x1E69E6370]), sub_1E4123590(@"VUIMediaItemMetadataKeyIsEligibleForTimedMetadata", v7, v0 + 73), swift_unknownObjectRelease(), v8 = *(v0 + 73), v8 != 2) && (v5 & v8 & 1) != 0)
  {

    v9 = sub_1E41FFC94();
    v10 = sub_1E4206814();
    if (OUTLINED_FUNCTION_104(v10))
    {
      *OUTLINED_FUNCTION_125_0() = 0;
      OUTLINED_FUNCTION_3_12(&dword_1E323F000, v11, v12, "Metadata required for fetching timed metadata is loaded");
      OUTLINED_FUNCTION_6_0();
    }

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v15 = sub_1E41FFC94();
    v16 = sub_1E4206814();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = OUTLINED_FUNCTION_125_0();
      *v17 = 0;
      _os_log_impl(&dword_1E323F000, v15, v16, "Waiting until metadata required for fetching timed metadata is loaded", v17, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    v18 = sub_1E4206424();
    *(v0 + 56) = v18;
    v19 = swift_task_alloc();
    *(v0 + 64) = v19;
    *v19 = v0;
    v19[1] = sub_1E3DBCFA8;
    v20 = *(v0 + 16);
    v21 = MEMORY[0x1E69E85E0];
    v22 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DDE0](v19, v18, v21, 0xD000000000000020, 0x80000001E4283110, sub_1E3DBDD68, v20, v22);
  }
}

uint64_t sub_1E3DBCFA8()
{
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_7();
  *v3 = v2;

  v4 = *(v1 + 48);
  v5 = *(v1 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1E3DBD0E4, v5, v4);
}

uint64_t sub_1E3DBD0E4()
{
  OUTLINED_FUNCTION_24();

  v1 = *(v0 + 8);

  return v1();
}

void sub_1E3DBD170(uint64_t a1, uint64_t a2)
{

  v4 = sub_1E41FFC94();
  v5 = sub_1E4206814();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_6_21();
    v7 = OUTLINED_FUNCTION_100();
    v18 = v7;
    *v6 = 136315138;
    if (a2)
    {
      v8 = MEMORY[0x1E69E6158];
      v9 = a1;
      v10 = a2;
    }

    else
    {
      OUTLINED_FUNCTION_26_87();
    }

    v17[0] = v9;
    v17[1] = v10;
    v17[3] = v8;

    v11 = sub_1E3294FA4(v17);
    v13 = sub_1E3270FC8(v11, v12, &v18);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_1E323F000, v4, v5, "Saved Songs playlist was fetched. Playlist ID: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_6_0();
  }

  if (a2)
  {
    v14 = sub_1E328740C();
    v15 = *((*MEMORY[0x1E69E7D40] & **v14) + 0xF0);
    v16 = *v14;
    v15(a1, a2);
  }
}

uint64_t sub_1E3DBD324()
{
  OUTLINED_FUNCTION_24();
  sub_1E4206434();
  v0[2] = sub_1E4206424();
  v2 = sub_1E42063B4();
  v0[3] = v2;
  v0[4] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1E3DBD3B4, v2, v1);
}

uint64_t sub_1E3DBD3B4()
{
  v1 = sub_1E328740C();
  v2 = *v1;
  *(v0 + 40) = *v1;
  v3 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x100);
  v2;
  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_1E3DBD4F8;

  return v6();
}

uint64_t sub_1E3DBD4F8(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  *(*v1 + 56) = a1;

  v4 = *(v2 + 32);
  v5 = *(v2 + 24);

  return MEMORY[0x1EEE6DFA0](sub_1E3DBD640, v5, v4);
}

uint64_t sub_1E3DBD640()
{
  OUTLINED_FUNCTION_24();

  v1 = *(v0 + 8);
  v2 = *(v0 + 56);

  return v1(v2);
}

uint64_t sub_1E3DBD6A4()
{
  OUTLINED_FUNCTION_24();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E3DBD72C;

  return sub_1E3DBD324();
}

uint64_t sub_1E3DBD72C()
{
  OUTLINED_FUNCTION_24();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

void *sub_1E3DBD81C()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_1E3DBD8A8(result, *(v1 + 16) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

void *sub_1E3DBD868(void *result)
{
  v2 = *(*v1 + 24);
  if (result + 1 > (v2 >> 1))
  {
    result = sub_1E3DBD8A8((v2 > 1), result + 1, 1, *v1);
    *v1 = result;
  }

  return result;
}

void *sub_1E3DBD8A8(void *result, int64_t a2, char a3, uint64_t a4)
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
  v9 = sub_1E3DBD9A0(v8, v7);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FDE8, &qword_1E42AF868) - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1E3DBDAA8(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void *sub_1E3DBD9A0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38A20, &unk_1E42D1DE0);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FDE8, &qword_1E42AF868) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3DBDAA8(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FDE8, &qword_1E42AF868), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FDE8, &qword_1E42AF868);

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1E3DBDB94(void *a1)
{
  v2 = [a1 languageCodeBCP47];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E4205F14();

  return v3;
}

uint64_t type metadata accessor for PlayerBasedMetadataVendor(uint64_t a1)
{
  result = qword_1EE296040;
  if (!qword_1EE296040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1E3DBDC50(uint64_t a1)
{
  OUTLINED_FUNCTION_7_4(a1);
  if (swift_weakLoadStrong())
  {
    sub_1E41FEF14();
  }

  return result;
}

uint64_t sub_1E3DBDC94(uint64_t a1)
{
  result = sub_1E41FFCB4();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E3DBDD68(uint64_t a1)
{
  v2 = v1;
  v4 = qword_1EE237E50;
  sub_1E3DBD81C();
  v5 = *(*(v1 + v4) + 16);
  sub_1E3DBD868(v5);
  v6 = *(v1 + v4);
  *(v6 + 16) = v5 + 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FDE8, &qword_1E42AF868);
  OUTLINED_FUNCTION_2();
  result = (*(v7 + 16))(v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5, a1);
  *(v2 + v4) = v6;
  return result;
}

void sub_1E3DBDE24(uint64_t a1, double a2)
{
  OUTLINED_FUNCTION_7_4(a1);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [*(Strong + _MergedGlobals_81) state];
    v6 = [objc_opt_self() playing];
    v7 = v6;
    if (v5)
    {

      if (v7)
      {

        if (v5 == v7)
        {
LABEL_8:
          v8 = (v4 + qword_1EE237E58);
          if ((*(v4 + qword_1EE237E58 + 8) & 1) == 0)
          {
            v9 = *v8;
            if (*v8 < a2)
            {
              v10 = sub_1E41FFC94();
              v11 = sub_1E4206814();
              if (OUTLINED_FUNCTION_104(v11))
              {
                v12 = swift_slowAlloc();
                *v12 = 134218240;
                *(v12 + 4) = a2;
                *(v12 + 12) = 2048;
                *(v12 + 14) = v9;
                _os_log_impl(&dword_1E323F000, v10, v11, "Elapsed time %f has passed boundary time %f without boundary timer firing.  Manually notifying listeners.", v12, 0x16u);
                OUTLINED_FUNCTION_6_0();
              }

              sub_1E41FEF14();
            }
          }
        }
      }
    }

    else
    {
      if (!v6)
      {
        goto LABEL_8;
      }
    }
  }
}

double sub_1E3DBDF90(uint64_t a1)
{
  OUTLINED_FUNCTION_7_4(a1);
  if (swift_weakLoadStrong())
  {
    sub_1E41FEF04();
    sub_1E3DBC9FC();
  }

  return result;
}

double sub_1E3DBDFEC(uint64_t a1)
{
  OUTLINED_FUNCTION_7_4(a1);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = [*(Strong + _MergedGlobals_81) selectedAudioOption];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 languageCodeBCP47];

      if (v5)
      {
        sub_1E4205F14();

        v6 = sub_1E41FFC94();
        v7 = sub_1E4206814();

        if (os_log_type_enabled(v6, v7))
        {
          v8 = OUTLINED_FUNCTION_6_21();
          v18 = OUTLINED_FUNCTION_100();
          *v8 = 136315138;
          v9 = OUTLINED_FUNCTION_74();
          v12 = sub_1E3270FC8(v9, v10, v11);

          *(v8 + 4) = v12;
          OUTLINED_FUNCTION_35_8();
          _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v18);
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_21_0();
        }

        else
        {
        }

        sub_1E41FEF14();
      }
    }
  }

  return result;
}

uint64_t sub_1E3DBE174(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E3DBE1E0()
{
  swift_allocObject();
  v0 = sub_1E3BBB754();

  sub_1E3DBE22C();

  return v0;
}

void sub_1E3DBE22C()
{
  v0 = sub_1E37BD068();
  (*(*v0 + 1792))(10);

  v1 = *sub_1E37BD068();
  (*(v1 + 1696))(17);

  v2 = sub_1E37BD068();
  v3 = objc_opt_self();
  (*(*v2 + 680))([v3 whiteColor]);

  v4 = sub_1E37BD068();
  (*(*v4 + 896))([v3 blackColor]);

  v5 = sub_1E37BD068();
  v10[0] = sub_1E3952C28(12.0);
  v10[1] = v6;
  v10[2] = v7;
  v10[3] = v8;
  v11 = 0;
  (*(*v5 + 184))(v10);

  sub_1E3C2CE80();
  sub_1E3C2D200();
  sub_1E3C2CDD0();
  sub_1E3C2D150();
  sub_1E3BBAB68(1);
  v9 = [v3 clearColor];

  sub_1E3C2DE50();
}

uint64_t sub_1E3DBE474(uint64_t a1, char a2, uint64_t a3, char a4)
{
  swift_allocObject();
  v8 = sub_1E3BBD9C4(a1, a2 & 1, a3, a4 & 1);

  sub_1E3DBE22C();

  return v8;
}

double sub_1E3DBE514(char a1, double a2, double a3)
{
  v16.receiver = v3;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, sel_vui_layoutSubviews_computationOnly_, a1 & 1, a2, a3);
  if (a2 == 0.0 && a3 == 0.0)
  {
    return 0.0;
  }

  v7 = OBJC_IVAR____TtC8VideosUI26UnifiedMessagingBannerView_bannerContentView;
  swift_beginAccess();
  v8 = *&v3[v7];
  if (v8)
  {
    type metadata accessor for LayoutGrid();
    v9 = v8;
    sub_1E3A258E4(a2);
    v11 = v10;
    v13 = a2 - v10 - v12;
    sub_1E3A286D4();
    sub_1E41DA724();
    [v9 sizeThatFits_];
    if ((a1 & 1) == 0)
    {
      [v9 setFrame_];
    }
  }

  return a2;
}

id sub_1E3DBE6AC()
{
  OUTLINED_FUNCTION_0_8();
  ObjectType = swift_getObjectType();
  *(v0 + OBJC_IVAR____TtC8VideosUI26UnifiedMessagingBannerView_bannerContentView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI26UnifiedMessagingBannerView_viewModel) = 0;
  v6 = ObjectType;
  v2 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v3, v4, v2, v0, v6);
}

id sub_1E3DBE738(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8VideosUI26UnifiedMessagingBannerView_bannerContentView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI26UnifiedMessagingBannerView_viewModel] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t sub_1E3DBE884()
{
  type metadata accessor for AlertTemplateLayout();
  v1 = sub_1E3E29D6C();
  OUTLINED_FUNCTION_0_239(v1, v2, v3, v4, v5, v6, v7, v8, v10);

  *(v0 + 104) = v11;
  return sub_1E3C2F9A0();
}

uint64_t sub_1E3DBE8E4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    type metadata accessor for TemplateViewModel(0);
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = v4;
      if (*(v4 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel_templateType) == 11)
      {
        type metadata accessor for OfferSelectionTemplateLayout();

        return sub_1E3DB4EF0(v5);
      }

      if (!*(v4 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel_templateType))
      {
        v6 = *(*v2 + 1696);

        v8 = v6(v7);

        return v8;
      }
    }
  }

  return sub_1E3C35CA4(a1);
}

id sub_1E3DBEA00(void *a1, void *a2)
{
  if ([a1 length])
  {
    if ([a1 attribute:*MEMORY[0x1E69DB688] atIndex:0 effectiveRange:0])
    {
      sub_1E4207264();
      swift_unknownObjectRelease();
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    v13[0] = v11;
    v13[1] = v12;
    if (*(&v12 + 1))
    {
      sub_1E3BF79D4();
      if (swift_dynamicCast())
      {
        a2 = v10;
        v4 = v10;
LABEL_13:
        v5 = a2;
        type metadata accessor for LanguageAwareString();
        v6 = sub_1E3D36A44();
        v7 = LanguageAwareString.__allocating_init(_:baseParagraphStyle:keepStatisticsOnLanguageComponents:)(a1, a2, v6 & 1);
        v8 = (*((*MEMORY[0x1E69E7D40] & *v7) + 0xE8))();

        return v8;
      }
    }

    else
    {
      sub_1E329505C(v13);
    }

    v4 = 0;
    goto LABEL_13;
  }

  return a1;
}

uint64_t sub_1E3DBEBF8(uint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    type metadata accessor for LanguageAwareString();

    v5 = sub_1E3D36A48();
    v6 = sub_1E3D36A44();
    v7 = LanguageAwareString.__allocating_init(_:baseParagraphStyle:generateAttributedString:keepStatisticsOnLanguageComponents:)(v3, a2, 0, v5 & 1, v6 & 1);
    v3 = *&v7[OBJC_IVAR___AMPLanguageAwareString_string];
  }

  else
  {
  }

  return v3;
}

id sub_1E3DBED38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LanguageAwareStringHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3DBED70@<X0>(double *a1@<X8>, double a2@<D0>)
{
  v4 = *(sub_1E4201534() + 20);
  v5 = *MEMORY[0x1E697F468];
  v6 = sub_1E4201C44();
  result = (*(*(v6 - 8) + 104))(a1 + v4, v5, v6);
  *a1 = a2;
  a1[1] = a2;
  return result;
}

uint64_t sub_1E3DBEDFC()
{
  v10 = sub_1E42069F4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  sub_1E4206974();
  OUTLINED_FUNCTION_6_161();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v8 = sub_1E4203FF4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_5();
  sub_1E32ADE38();
  sub_1E4203FE4();
  sub_1E3CA3434();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326B0, &qword_1E429D100);
  sub_1E3CA348C();
  sub_1E42072E4();
  (*(v2 + 104))(v6, *MEMORY[0x1E69E8090], v10);
  *(v0 + 16) = sub_1E4206A44();
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0;
  return v0;
}

uint64_t sub_1E3DBEFE8()
{
  type metadata accessor for NaturalLanguageSearchDataManager();
  OUTLINED_FUNCTION_27_10();
  v0 = swift_allocObject();
  result = sub_1E3DBEDFC();
  qword_1EE2AA8F0 = v0;
  return result;
}

uint64_t *sub_1E3DBF020()
{
  if (qword_1EE292338 != -1)
  {
    OUTLINED_FUNCTION_3_184(&qword_1EE292338);
  }

  return &qword_1EE2AA8F0;
}

void sub_1E3DBF060(uint64_t a1@<X8>)
{
  v2 = v1;
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  v4 = *(v1 + 16);
  OUTLINED_FUNCTION_2_4();
  v5 = swift_allocObject();
  *(v5 + 16) = &v13;
  *(v5 + 24) = v2;
  OUTLINED_FUNCTION_2_4();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1E3DBF1D4;
  *(v6 + 24) = v5;
  aBlock[4] = sub_1E379E500;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_67();
  aBlock[2] = v7;
  aBlock[3] = &block_descriptor_113;
  v8 = _Block_copy(aBlock);

  dispatch_sync(v4, v8);
  _Block_release(v8);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v9 = v15;
    v10 = v14;
    v11 = v13;

    *a1 = v11;
    *(a1 + 16) = v10;
    *(a1 + 32) = v9;
  }
}

uint64_t sub_1E3DBF1D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[5];
  v6 = v2[6];
  v7 = v2[7];
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v11 = v1[3];
  *v1 = v3;
  v1[1] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v1[4] = v7;
  sub_1E3DBFC00(v3, v4, v5, v6, v7);

  return sub_1E3DBFA40(v8, v9, v10, v11);
}

void sub_1E3DBF250(uint64_t a1)
{
  if ([objc_opt_self() isSearchEnabled])
  {
    swift_beginAccess();
    v3 = *(a1 + 72);
    v17 = *(a1 + 56);
    v18 = v3;
    v19 = *(a1 + 88);
    v4 = *(v1 + 16);
    OUTLINED_FUNCTION_27_10();
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    *(v5 + 24) = *(a1 + 56);
    *(v5 + 40) = *(a1 + 72);
    *(v5 + 56) = *(a1 + 88);
    OUTLINED_FUNCTION_2_4();
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1E3DBFAA8;
    *(v6 + 24) = v5;
    v15 = sub_1E37D1918;
    v16 = v6;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    OUTLINED_FUNCTION_67();
    v13 = v7;
    v14 = &block_descriptor_24_3;
    v8 = _Block_copy(&aBlock);
    sub_1E3DBFB28(&v17, v11);
    sub_1E3DBFB28(&v17, v11);

    dispatch_sync(v4, v8);
    _Block_release(v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      sub_1E3DBF724(a1);
      if (*(&v18 + 1))
      {
        v10 = v19;
        aBlock = v18;
        sub_1E3782C70(&aBlock);
        v11[0] = v10;
        sub_1E3DBFB98(v11);
      }
    }
  }
}

void sub_1E3DBF454()
{
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_2_4();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1E3DBF6A4;
  *(v9 + 24) = v0;
  aBlock[4] = sub_1E37D1918;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_67();
  aBlock[2] = v10;
  aBlock[3] = &block_descriptor_10_4;
  v11 = _Block_copy(aBlock);

  dispatch_sync(v8, v11);
  _Block_release(v11);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    v12 = *sub_1E3D54C24();
    sub_1E3D5AA30(v12);

    sub_1E324FBDC();
    OUTLINED_FUNCTION_51_4();
    v13(v7);
    v14 = sub_1E41FFC94();
    v15 = sub_1E42067E4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1E323F000, v14, v15, "NaturalLanguageSearchDataManager:: Cleared NLS data cache and lastNLSQueryDate", v16, 2u);
      MEMORY[0x1E69143B0](v16, -1, -1);
    }

    (*(v3 + 8))(v7, v1);
  }
}

uint64_t sub_1E3DBF6A4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  *(v0 + 3) = 0u;
  *(v0 + 5) = 0u;
  v0[7] = 0;
  return sub_1E3DBFA40(v1, v2, v3, v4);
}

uint64_t sub_1E3DBF6F4()
{
  sub_1E3DBF6C4();
  OUTLINED_FUNCTION_27_10();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1E3DBF724(uint64_t a1)
{
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  swift_beginAccess();
  if (*(a1 + 48) == 1)
  {
    v11 = *sub_1E3D54C24();
    sub_1E3D59FB8();

    sub_1E324FBDC();
    OUTLINED_FUNCTION_51_4();
    v12(v10);
    v13 = sub_1E41FFC94();
    v14 = sub_1E42067E4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1E323F000, v13, v14, "NaturalLanguageSearchDataManager:: Updated didPerformNaturalLanguageSearch in UM Signal Provider", v15, 2u);
      MEMORY[0x1E69143B0](v15, -1, -1);
    }

    (*(v4 + 8))(v10, v2);
  }

  v16 = [objc_opt_self() sharedInstance];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 overrideLastNLSQueryDate];

    v29 = v18;
    sub_1E41499CC(MEMORY[0x1E69E7360], &v27);
    if (v28 == 1)
    {
      swift_beginAccess();
    }

    v19 = *sub_1E3D54C24();
    sub_1E3D5A2C8();
    v21 = v20;

    if (v21)
    {
      sub_1E324FBDC();
      OUTLINED_FUNCTION_51_4();
      v22(v7);
      v23 = sub_1E41FFC94();
      v24 = sub_1E42067E4();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_1E323F000, v23, v24, "NaturalLanguageSearchDataManager:: Updated lastNLSQueryDate in UM Signal Provider", v25, 2u);
        MEMORY[0x1E69143B0](v25, -1, -1);
      }

      (*(v4 + 8))(v7, v2);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E3DBFA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_1E3DBFAA8()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = *(v0 + 56);
  v7 = *(v0 + 40);
  *(v1 + 3) = *(v0 + 24);
  *(v1 + 5) = v7;
  v1[7] = v6;
  sub_1E3DBFB28(v0 + 24, v9);
  return sub_1E3DBFA40(v2, v3, v4, v5);
}

uint64_t sub_1E3DBFB28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF327B8, &qword_1E42B8FF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3DBFB98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EB10, &qword_1E42B9000);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1E3DBFC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_1E3DBFC54()
{
  OUTLINED_FUNCTION_29_7();
  swift_allocObject();
  return sub_1E3DBFC84();
}

uint64_t sub_1E3DBFC84()
{
  v0 = sub_1E3C2F9A0();

  sub_1E3952C10(6.0, 6.0);
  OUTLINED_FUNCTION_18_8();
  v1 = sub_1E3952C10(8.0, 8.0);
  OUTLINED_FUNCTION_7_11(v1, v2, v3, v4);
  type metadata accessor for UIEdgeInsets();
  v6 = v5;
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_7_171();
  OUTLINED_FUNCTION_10_8();
  v7 = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_189(v7, v8, v9, v10, v11, v12, v13, v14, v96, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v165, v168, v171, v174, v177, v180, v183, v186, v189, v192, v195, v198, v201, v204, v207, v210, v213, v216, v219, v222, v225, v228, v231, v234, v237, v240, v243, v246, v249, v252);
  OUTLINED_FUNCTION_32_17(v15, v16, v17, v18, v19, v20, v21, v22, v97);
  v23 = OUTLINED_FUNCTION_18();
  v31 = OUTLINED_FUNCTION_17_8(v23, v24, v25, v26, v27, v28, v29, v30, v98);
  sub_1E3C2FDFC(v31, 1, v32, v6);
  sub_1E3952C10(20.0, 20.0);
  OUTLINED_FUNCTION_18_8();
  v33 = sub_1E3952C10(20.0, 20.0);
  OUTLINED_FUNCTION_7_11(v33, v34, v35, v36);
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_7_171();
  OUTLINED_FUNCTION_10_8();
  v37 = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_189(v37, v38, v39, v40, v41, v42, v43, v44, v99, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160, v163, v166, v169, v172, v175, v178, v181, v184, v187, v190, v193, v196, v199, v202, v205, v208, v211, v214, v217, v220, v223, v226, v229, v232, v235, v238, v241, v244, v247, v250, v253);
  OUTLINED_FUNCTION_32_17(v45, v46, v47, v48, v49, v50, v51, v52, v100);
  v53 = OUTLINED_FUNCTION_18();
  v61 = OUTLINED_FUNCTION_17_8(v53, v54, v55, v56, v57, v58, v59, v60, v101);
  sub_1E3C2FDFC(v61, 0, v62, v6);
  v63.n128_u64[0] = 4.0;
  j__OUTLINED_FUNCTION_7_78(v63);
  OUTLINED_FUNCTION_18_8();
  v64.n128_u64[0] = 6.0;
  v65 = j__OUTLINED_FUNCTION_7_78(v64);
  OUTLINED_FUNCTION_7_11(v65, v66, v67, v68);
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_7_171();
  OUTLINED_FUNCTION_10_8();
  v69 = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_189(v69, v70, v71, v72, v73, v74, v75, v76, v102, v107, v110, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, v143, v146, v149, v152, v155, v158, v161, v164, v167, v170, v173, v176, v179, v182, v185, v188, v191, v194, v197, v200, v203, v206, v209, v212, v215, v218, v221, v224, v227, v230, v233, v236, v239, v242, v245, v248, v251, v254);
  OUTLINED_FUNCTION_32_17(v77, v78, v79, v80, v81, v82, v83, v84, v103);
  v85 = OUTLINED_FUNCTION_18();
  v93 = OUTLINED_FUNCTION_17_8(v85, v86, v87, v88, v89, v90, v91, v92, v104);
  sub_1E3C2FDFC(v93, 17, v94, v6);

  return v0;
}

uint64_t sub_1E3DBFDD0()
{
  sub_1E3C36C6C();
  OUTLINED_FUNCTION_29_7();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

id sub_1E3DBFE64(uint64_t a1, const void *a2)
{
  ObjectType = swift_getObjectType();
  v6 = v2 + OBJC_IVAR____TtC8VideosUI18CompositeImageView_imageContext;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0;
  *(v6 + 72) = 1;
  *(v6 + 80) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI18CompositeImageView_imageViews) = MEMORY[0x1E69E7CC0];
  v7 = OBJC_IVAR____TtC8VideosUI18CompositeImageView_gradientView;
  type metadata accessor for GradientView();
  OUTLINED_FUNCTION_5_8();
  *(v2 + v7) = sub_1E3890DAC();
  v8 = OBJC_IVAR____TtC8VideosUI18CompositeImageView_viewModel;
  *(v2 + OBJC_IVAR____TtC8VideosUI18CompositeImageView_viewModel) = 0;
  v9 = OBJC_IVAR____TtC8VideosUI18CompositeImageView_layout;
  type metadata accessor for CompositeImageViewLayout();
  OUTLINED_FUNCTION_29_7();
  swift_allocObject();
  *(v2 + v9) = sub_1E3DBFC84();
  *(v2 + OBJC_IVAR____TtC8VideosUI18CompositeImageView_fourUpStyle) = 1;
  *(v2 + v8) = a1;

  v10 = OUTLINED_FUNCTION_5_8();
  v13 = objc_msgSendSuper2(v11, v12, v10, v2, ObjectType);
  sub_1E3DBFF9C(a1, a2);
  sub_1E3DC050C(a2);

  return v13;
}

void sub_1E3DBFF9C(uint64_t a1, const void *a2)
{
  v3 = v2;
  memcpy(__dst, &v3[OBJC_IVAR____TtC8VideosUI18CompositeImageView_imageContext], 0x52uLL);
  memcpy(&v3[OBJC_IVAR____TtC8VideosUI18CompositeImageView_imageContext], a2, 0x52uLL);
  v37 = a2;
  sub_1E38F1B60(a2, v38);
  sub_1E3DC050C(__dst);
  v6 = OBJC_IVAR____TtC8VideosUI18CompositeImageView_imageViews;
  swift_beginAccess();
  v7 = *&v3[v6];
  v8 = sub_1E32AE9B0(v7);

  for (i = 0; v8 != i; ++i)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1E6911E60](i, v7);
    }

    else
    {
      if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v10 = *(v7 + 8 * i + 32);
    }

    v11 = v10;
    if (__OFADD__(i, 1))
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
      return;
    }

    [v10 vui_removeFromSuperView];
  }

  v12 = MEMORY[0x1E69E7CC0];
  *&v3[v6] = MEMORY[0x1E69E7CC0];

  v14 = (*(*a1 + 464))(v13);
  if (v14)
  {
    v15 = v14;
    v36 = *&v12;
    *&v38[0] = v12;
    v16 = sub_1E32AE9B0(v14);
    v17 = 0;
    while (v16 != v17)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](v17, v15);
      }

      else
      {
        if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_45;
        }
      }

      if (__OFADD__(v17, 1))
      {
        goto LABEL_44;
      }

      type metadata accessor for ImageViewModel();
      if (swift_dynamicCastClass())
      {
        MEMORY[0x1E6910BF0]();
        if (*((*&v38[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v38[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E42062F4();
        }

        sub_1E4206324();
        v36 = v38[0];
        ++v17;
      }

      else
      {

        ++v17;
      }
    }

    v12 = *&v36;
  }

  v18 = sub_1E32AE9B0(v12);
  v19 = 0;
  v35 = OBJC_IVAR____TtC8VideosUI18CompositeImageView_layout;
  while (v18 != v19)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x1E6911E60](v19, v12);
    }

    else
    {
      if (v19 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_47;
      }

      v20 = *(v12 + 8 * v19 + 32);
    }

    if (__OFADD__(v19, 1))
    {
      goto LABEL_46;
    }

    v21 = sub_1E3DF9F2C(v20, 0, v37, 0);
    if (!v21)
    {

      return;
    }

    v22 = v21;
    [v21 setVuiContentMode_];
    v23 = [v22 vuiLayer];
    if (v23)
    {
      v24 = v23;
      sub_1E3C2D7B8();
      v25 = 0.0;
      if ((v39 & 1) == 0)
      {
        v25 = sub_1E3952BE8(v38[0], v38[1], v38[2], v38[3]);
      }

      [v24 setCornerRadius_];
    }

    [v22 setVuiClipsToBounds_];
    v26 = v22;
    [v3 vui:v26 addSubview:0 oldView:?];
    v27 = swift_beginAccess();
    MEMORY[0x1E6910BF0](v27);
    if (*((*&v3[v6] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v3[v6] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E42062F4();
    }

    sub_1E4206324();
    swift_endAccess();

    ++v19;
  }

  v28 = *&v3[OBJC_IVAR____TtC8VideosUI18CompositeImageView_gradientView];
  v29 = [v28 superview];
  if (v29)
  {
  }

  else
  {
    [v3 vui:v28 addSubview:0 oldView:?];
    type metadata accessor for ViewGradientLayout(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1E429DCC0;
    v31 = objc_opt_self();
    v32 = [v31 blackColor];
    v33 = [v32 colorWithAlphaComponent_];

    *(v30 + 32) = v33;
    *(v30 + 40) = [v31 clearColor];
    v34 = sub_1E40C2E40();
    sub_1E396030C(v34);
  }
}

uint64_t sub_1E3DC050C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF31AB0, qword_1E42CD4C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E3DC0574(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = (v1 + OBJC_IVAR____TtC8VideosUI18CompositeImageView_imageContext);
  *v4 = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  v4[3] = 0u;
  *(v4 + 8) = 0;
  *(v4 + 9) = 1;
  *(v4 + 40) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI18CompositeImageView_imageViews) = MEMORY[0x1E69E7CC0];
  v5 = OBJC_IVAR____TtC8VideosUI18CompositeImageView_gradientView;
  type metadata accessor for GradientView();
  OUTLINED_FUNCTION_5_8();
  *(v1 + v5) = sub_1E3890DAC();
  *(v1 + OBJC_IVAR____TtC8VideosUI18CompositeImageView_viewModel) = 0;
  v6 = OBJC_IVAR____TtC8VideosUI18CompositeImageView_layout;
  type metadata accessor for CompositeImageViewLayout();
  OUTLINED_FUNCTION_29_7();
  swift_allocObject();
  v7 = sub_1E3DBFC84();

  *(v2 + v6) = v7;
  *(v2 + OBJC_IVAR____TtC8VideosUI18CompositeImageView_fourUpStyle) = 1;
  memcpy(__dst, v4, 0x52uLL);
  sub_1E3DC050C(__dst);

  swift_deallocPartialClassInstance();
  return 0;
}

void sub_1E3DC06D4(char a1, double a2, double a3)
{
  if ((a1 & 1) == 0)
  {
    [v3 bounds];
    v7 = OUTLINED_FUNCTION_18_97();
    [v7 v8];
    v9 = OBJC_IVAR____TtC8VideosUI18CompositeImageView_imageViews;
    swift_beginAccess();
    v10 = sub_1E32AE9B0(*&v3[v9]);
    if (v10 != 4)
    {
      if (v10 != 3)
      {
        if (v10 != 2)
        {
          return;
        }

        OUTLINED_FUNCTION_8_144();
        swift_beginAccess();
        v11 = *&v3[v9];
        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1E6911E60](0, v11);
          v15 = MEMORY[0x1E6911E60](1, v11);
          goto LABEL_9;
        }

        v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v12)
        {
          v13 = *(v11 + 32);
          if (v12 != 1)
          {
            v14 = v13;
            v15 = *(v11 + 40);
LABEL_9:
            v16 = v15;
            v252 = a3;
            swift_endAccess();
            v17 = sub_1E3C2AF20();
            if (v261)
            {
              v246 = *(MEMORY[0x1E69DDCE0] + 8);
            }

            else
            {
              OUTLINED_FUNCTION_16_113(v17, v18, v19, v20, v21, v22, v23, v24, *&v236, *&v237, *&v239, *&v241, *&v243, *&v244, v245, a3, v253, v254, v255, v256, v257, v258);
            }

            v63.n128_f64[0] = sub_1E3C2CC44();
            v79 = a2 - OUTLINED_FUNCTION_10_124(v63, v72, v73, v74, v64, v65, v66, v67, v68, v69, v70, v71, v75, v76, v77, v78, v236, v237, v239, v241, v243, v244, v246);
            OUTLINED_FUNCTION_1_221();
            v84 = (v79 - sub_1E3952BE0(v80, v81, v82, v83)) * 0.5;
            v85 = OUTLINED_FUNCTION_0_241();
            v89 = (a2 - (sub_1E3952BE0(v85, v86, v87, v88) + v84 + v84)) * 0.5;
            v90 = (v252 - v84 * 0.5625) * 0.5;
            OUTLINED_FUNCTION_22_75(v14, sel_setFrame_, v89, v90);
            [v14 frame];
            CGRectGetMaxX(v267);
            OUTLINED_FUNCTION_1_221();
            sub_1E3952BE0(v91, v92, v93, v94);
            v95 = OUTLINED_FUNCTION_18_97();
            OUTLINED_FUNCTION_22_75(v95, v96, v97, v90);
            goto LABEL_48;
          }

          goto LABEL_55;
        }

        goto LABEL_53;
      }

      OUTLINED_FUNCTION_8_144();
      swift_beginAccess();
      v25 = *&v3[v9];
      if ((v25 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1E6911E60](0, *&v3[v9]);
        v14 = MEMORY[0x1E6911E60](1, v25);
        v28 = MEMORY[0x1E6911E60](2, v25);
      }

      else
      {
        v4 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v4)
        {
          __break(1u);
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        v26 = *(v25 + 32);
        if (v4 == 1)
        {
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        v16 = v26;
        v27 = *(v25 + 40);
        if (v4 <= 2)
        {
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        v14 = v27;
        v28 = *(v25 + 48);
      }

      v29 = v28;
      swift_endAccess();
      v30 = sub_1E3C2AF20();
      if (v261)
      {
        v247 = *(MEMORY[0x1E69DDCE0] + 8);
      }

      else
      {
        OUTLINED_FUNCTION_16_113(v30, v31, v32, v33, v34, v35, v36, v37, *&v236, *&v237, *&v239, *&v241, *&v243, *&v244, v245, a3, v253, v254, v255, v256, v257, v258);
      }

      v98.n128_f64[0] = sub_1E3C2CC44();
      v114 = a2 - OUTLINED_FUNCTION_10_124(v98, v107, v108, v109, v99, v100, v101, v102, v103, v104, v105, v106, v110, v111, v112, v113, v236, v237, v239, v241, v243, v244, v247);
      v115 = OUTLINED_FUNCTION_0_241();
      v119 = (v114 - sub_1E3952BE0(v115, v116, v117, v118)) * 0.666666667 * 0.5625;
      v120 = OUTLINED_FUNCTION_0_241();
      v249 = (v119 - sub_1E3952BD8(v120, v121, v122)) * 0.5;
      v123 = OUTLINED_FUNCTION_0_241();
      sub_1E3952BE0(v123, v124, v125, v126);
      v127 = OUTLINED_FUNCTION_18_97();
      OUTLINED_FUNCTION_22_75(v127, v128, v129, v130);
      [v16 frame];
      MaxX = CGRectGetMaxX(v268);
      v132 = OUTLINED_FUNCTION_0_241();
      sub_1E3952BE0(v132, v133, v134, v135);
      OUTLINED_FUNCTION_9_132();
      [v16 v136];
      [v14 setFrame_];
      [v16 frame];
      v137 = CGRectGetMaxX(v270);
      OUTLINED_FUNCTION_1_221();
      sub_1E3952BE0(v138, v139, v140, v141);
      OUTLINED_FUNCTION_9_132();
      [v14 v142];
      CGRectGetMaxY(v271);
      OUTLINED_FUNCTION_1_221();
      sub_1E3952BD8(v143, v144, v145);
      OUTLINED_FUNCTION_17_111();
      [v29 v146];
      goto LABEL_47;
    }

    v251 = a3;
    v253 = a2;
    OUTLINED_FUNCTION_8_144();
    if (v38)
    {
      swift_beginAccess();
      v4 = *&v3[v9];
      if ((v4 & 0xC000000000000001) != 0)
      {
LABEL_57:
        v29 = MEMORY[0x1E6911E60](0, v4);
        v16 = MEMORY[0x1E6911E60](1, v4);
        v14 = MEMORY[0x1E6911E60](2, v4);
        v43 = MEMORY[0x1E6911E60](3, v4);
        goto LABEL_25;
      }

      v39 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v39)
      {
        v40 = *(v4 + 32);
        if (v39 != 1)
        {
          v29 = v40;
          v41 = *(v4 + 40);
          if (v39 > 2)
          {
            v16 = v41;
            v42 = *(v4 + 48);
            if (v39 != 3)
            {
              v14 = v42;
              v43 = *(v4 + 56);
LABEL_25:
              v44 = v43;
              swift_endAccess();
              v45 = sub_1E3C2AF20();
              if (v261)
              {
                v248 = *(MEMORY[0x1E69DDCE0] + 8);
              }

              else
              {
                OUTLINED_FUNCTION_16_113(v45, v46, v47, v48, v49, v50, v51, v52, *&v236, *&v237, *&v239, *&v241, *&v243, *&v244, v245, v251, v253, v254, v255, v256, v257, v258);
              }

              v147.n128_f64[0] = sub_1E3C2CC44();
              v168 = v253 - OUTLINED_FUNCTION_10_124(v147, v161, v162, v163, v153, v154, v155, v156, v157, v158, v159, v160, v164, v165, v166, v167, v236, v237, v239, v241, v243, v244, v248);
              v169 = OUTLINED_FUNCTION_0_241();
              v173 = (v168 - sub_1E3952BE0(v169, v170, v171, v172)) * 0.75;
              v174 = OUTLINED_FUNCTION_0_241();
              v177 = sub_1E3952BD8(v174, v175, v176);
              v250 = (v173 * 0.5625 - (v177 + v177)) / 3.0;
              v178 = OUTLINED_FUNCTION_0_241();
              v182 = sub_1E3952BE0(v178, v179, v180, v181);
              OUTLINED_FUNCTION_22_75(v29, sel_setFrame_, (v253 - (v182 + v173 + v250 / 0.5625)) * 0.5, (v251 - v173 * 0.5625) * 0.5);
              OUTLINED_FUNCTION_11_131();
              v183 = CGRectGetMaxX(v272);
              v184 = OUTLINED_FUNCTION_0_241();
              sub_1E3952BE0(v184, v185, v186, v187);
              OUTLINED_FUNCTION_9_132();
              [v29 v188];
              CGRectGetMinY(v273);
              v189 = OUTLINED_FUNCTION_18_97();
              [v189 v190];
              OUTLINED_FUNCTION_11_131();
              v191 = CGRectGetMaxX(v274);
              v192 = OUTLINED_FUNCTION_0_241();
              sub_1E3952BE0(v192, v193, v194, v195);
              OUTLINED_FUNCTION_9_132();
              [v16 v196];
              CGRectGetMaxY(v275);
              v197 = OUTLINED_FUNCTION_0_241();
              sub_1E3952BD8(v197, v198, v199);
              OUTLINED_FUNCTION_17_111();
              [v14 v200];
              OUTLINED_FUNCTION_11_131();
              v201 = CGRectGetMaxX(v276);
              v202 = OUTLINED_FUNCTION_0_241();
              sub_1E3952BE0(v202, v203, v204, v205);
              OUTLINED_FUNCTION_9_132();
              [v14 v206];
              CGRectGetMaxY(v277);
              v207 = OUTLINED_FUNCTION_0_241();
              sub_1E3952BD8(v207, v208, v209);
              OUTLINED_FUNCTION_17_111();
              v211 = v44;
              v212 = v201;
LABEL_46:
              [v211 v210];

LABEL_47:
LABEL_48:

              return;
            }

            goto LABEL_65;
          }

          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    swift_beginAccess();
    v53 = *&v3[v9];
    if ((v53 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x1E6911E60](0, *&v3[v9]);
      v16 = MEMORY[0x1E6911E60](1, v53);
      v14 = MEMORY[0x1E6911E60](2, v53);
      v58 = MEMORY[0x1E6911E60](3, v53);
    }

    else
    {
      v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v54)
      {
        goto LABEL_60;
      }

      v55 = *(v53 + 32);
      if (v54 == 1)
      {
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v29 = v55;
      v56 = *(v53 + 40);
      if (v54 <= 2)
      {
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      v16 = v56;
      v57 = *(v53 + 48);
      if (v54 == 3)
      {
LABEL_66:
        __break(1u);
        return;
      }

      v14 = v57;
      v58 = *(v53 + 56);
    }

    v44 = v58;
    swift_endAccess();
    v59 = &v257;
    sub_1E3C2AF20();
    if (v261)
    {
      v59 = MEMORY[0x1E69DDCE0];
      v60 = *(MEMORY[0x1E69DDCE0] + 8);
      v61 = *(MEMORY[0x1E69DDCE0] + 16);
      v62 = *(MEMORY[0x1E69DDCE0] + 24);
    }

    else
    {
      v60 = v258;
      v61 = v259;
      v62 = v260;
    }

    v148 = *v59;
    v149 = v262;
    sub_1E3C2CC44();
    if (v266)
    {
      v149 = MEMORY[0x1E69DDCE0];
      v150 = *(MEMORY[0x1E69DDCE0] + 8);
      v151 = *(MEMORY[0x1E69DDCE0] + 16);
      v152 = *(MEMORY[0x1E69DDCE0] + 24);
    }

    else
    {
      v150 = v263;
      v151 = v264;
      v152 = v265;
    }

    v213 = *v149;
    v214 = sub_1E3952BE0(v148, v60, v61, v62);
    v238 = (v253 - (v214 + v214) - sub_1E3952BE0(v213, v150, v151, v152)) * 0.5;
    v215 = v151;
    v216 = v213;
    v217 = v213;
    v242 = v213;
    v218 = v150;
    v219 = v150;
    v220 = v215;
    v221 = sub_1E3952BE0(v216, v218, v215, v152) + v238 + v238;
    [v29 setFrame_];
    OUTLINED_FUNCTION_11_131();
    v222 = CGRectGetMaxX(v278);
    sub_1E3952BE0(v242, v219, v220, v152);
    OUTLINED_FUNCTION_9_132();
    [v29 v223];
    CGRectGetMinY(v279);
    v224 = OUTLINED_FUNCTION_18_97();
    [v224 v225];
    OUTLINED_FUNCTION_11_131();
    MinX = CGRectGetMinX(v280);
    OUTLINED_FUNCTION_11_131();
    CGRectGetMaxY(v281);
    sub_1E3952BD8(v242, v219, v220);
    OUTLINED_FUNCTION_17_111();
    [v14 v226];
    OUTLINED_FUNCTION_11_131();
    v227 = CGRectGetMaxX(v282);
    v228 = OUTLINED_FUNCTION_21_89();
    sub_1E3952BE0(v228, v229, v230, v231);
    OUTLINED_FUNCTION_9_132();
    [v29 v232];
    CGRectGetMaxY(v283);
    v233 = OUTLINED_FUNCTION_21_89();
    sub_1E3952BD8(v233, v234, v235);
    OUTLINED_FUNCTION_17_111();
    v211 = v44;
    v212 = v227;
    goto LABEL_46;
  }
}

id sub_1E3DC124C()
{
  v1 = *v0;
  memcpy(__dst, v0 + 1, 0x52uLL);
  v2 = objc_allocWithZone(type metadata accessor for CompositeImageView());

  sub_1E38F1B60(__dst, &v4);
  return sub_1E3DBFE64(v1, __dst);
}

uint64_t sub_1E3DC12C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E3DC1750(a1, a2, a3);

  return sub_1E3E36D18(a1, a2, v5);
}

uint64_t sub_1E3DC1310()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3DC1750(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_3_5();

  return sub_1E3E36D2C(v3, v4, v5, v6);
}

uint64_t sub_1E3DC13E4()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3DC156C(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDAA28](v3);
}

uint64_t sub_1E3DC1438()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3DC156C(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDA9B8](v3);
}

void sub_1E3DC148C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E3DC156C(a1, a2, a3);
  sub_1E4201F04();
  __break(1u);
}

uint64_t sub_1E3DC14B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = a10;
  if (a10 != 1)
  {
  }

  return result;
}

unint64_t sub_1E3DC14F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF38AB8;
  if (!qword_1ECF38AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38AB8);
  }

  return result;
}

unint64_t sub_1E3DC1544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E3DC156C(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E3DC156C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF38AC0;
  if (!qword_1ECF38AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38AC0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CompositeImageView.FourUpStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E3DC16A8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 90))
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
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E3DC16E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 90) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 90) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E3DC1750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF38AC8;
  if (!qword_1ECF38AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38AC8);
  }

  return result;
}

id sub_1E3DC17A4()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 activePlayer];

  if (!v1)
  {
    return 0;
  }

  v2 = [v1 avPlayer];

  return v2;
}

uint64_t sub_1E3DC1830()
{
  v0 = sub_1E3DC1908();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 state];
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_opt_self() playing];
  v4 = v3;
  if (v2)
  {
    if (v3)
    {
      sub_1E3280A90(0, &qword_1EE23B280, 0x1E69D5A40);
      v5 = sub_1E4206F64();
    }

    else
    {
      v5 = 0;
    }

    v4 = v2;
  }

  else
  {
    if (!v3)
    {
      v5 = 1;
      return v5 & 1;
    }

    v5 = 0;
  }

  return v5 & 1;
}

id sub_1E3DC1908()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 activePlayer];

  return v1;
}

uint64_t sub_1E3DC1968(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1E3DC19A8(a1);
  return v2;
}

uint64_t sub_1E3DC19A8(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CD0];
  *(v1 + 16) = a1;
  *(v1 + 24) = v2;

  sub_1E3DC19E8();

  return v1;
}

void sub_1E3DC19E8()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v3 = objc_opt_self();
  v4 = [v3 defaultCenter];
  sub_1E4206C14();

  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_weakInit();
  sub_1E3DC3A24(&qword_1EE23B130, 255, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  sub_1E4200844();

  v5 = *(v1 + 8);
  v6 = OUTLINED_FUNCTION_74();
  v5(v6);
  OUTLINED_FUNCTION_17_112();
  sub_1E42004C4();
  swift_endAccess();

  v7 = [v3 defaultCenter];
  sub_1E4206C14();

  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_weakInit();
  sub_1E4200844();

  v8 = OUTLINED_FUNCTION_74();
  v5(v8);
  OUTLINED_FUNCTION_17_112();
  sub_1E42004C4();
  swift_endAccess();

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DC1C38(SEL *a1)
{
  v2 = sub_1E3DC1908();
  if (v2)
  {
    v3 = v2;
    [v2 *a1];
  }
}

double sub_1E3DC1C98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38B88, qword_1E42D24D0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_41();
  v1 = sub_1E3DC1908();
  if (v1)
  {
    v3 = v1;
    swift_getKeyPath();
    sub_1E41FE2F4();

    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    swift_weakInit();
    sub_1E32752B0(&qword_1ECF38B90, &qword_1ECF38B88, qword_1E42D24D0, MEMORY[0x1E6969F80]);
    sub_1E4200844();

    v4 = OUTLINED_FUNCTION_74();
    v5(v4);
    swift_beginAccess();
    sub_1E42004C4();
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1E3DC1E54()
{
  type metadata accessor for ClarityPlayerViewModel();
  v0 = swift_allocObject();

  sub_1E3DC19A8(v1);
  return v0;
}

void sub_1E3DC1E98()
{
  OUTLINED_FUNCTION_31_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38AD0, &qword_1E42D2130);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_35_3();
  sub_1E3DC1FC8();
  type metadata accessor for ClarityPlayerViewModel();
  OUTLINED_FUNCTION_0_242();
  sub_1E3DC3A24(v3, v4, v5, &unk_1E42D2158);
  v6 = *(sub_1E4200BC4() + 16);

  v7 = sub_1E3DC2304();
  sub_1E418FB74(v6, v1, v7);

  sub_1E325F6F0(v0, &qword_1ECF38AD0, &qword_1E42D2130);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DC1FC8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38B00, &qword_1E42D2140);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v33 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38B30, &qword_1E42D2448);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v33 - v12;
  type metadata accessor for ClarityPlayerViewModel();
  OUTLINED_FUNCTION_0_242();
  sub_1E3DC3A24(v14, v15, v16, &unk_1E42D2158);
  v17 = v1 & 1;
  OUTLINED_FUNCTION_53();
  sub_1E4200BC4();
  v18 = sub_1E3DC17A4();

  if (v18)
  {
    *v10 = sub_1E4201D44();
    *(v10 + 1) = 0;
    v10[16] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38B38, &qword_1E42D2450);
    sub_1E3DC24C4();
    sub_1E37E93E8(v10, v13, &qword_1ECF38B00, &qword_1E42D2140);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38B10, &unk_1E42D2148);
    OUTLINED_FUNCTION_1();
    sub_1E32752B0(v19, &qword_1ECF38B00, &qword_1E42D2140, v20);
    sub_1E3DC2440();
    sub_1E4201F44();

    sub_1E325F6F0(v10, &qword_1ECF38B00, &qword_1E42D2140);
  }

  else
  {
    sub_1E4201C14();
    v21 = sub_1E4202C24();
    v23 = v22;
    v25 = v24;
    v33[1] = v7;
    v27 = v26;
    OUTLINED_FUNCTION_325();
    v28 = swift_allocObject();
    *(v28 + 16) = v5;
    *(v28 + 24) = v3;
    *(v28 + 32) = v17;
    v34 = v25 & 1;
    *v13 = v21;
    *(v13 + 1) = v23;
    v13[16] = v25 & 1;
    *(v13 + 3) = v27;
    *(v13 + 4) = sub_1E3DC34FC;
    *(v13 + 5) = v28;
    *(v13 + 6) = 0;
    *(v13 + 7) = 0;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    sub_1E380E99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38B10, &unk_1E42D2148);
    OUTLINED_FUNCTION_1();
    sub_1E32752B0(v29, v30, v31, v32);
    sub_1E3DC2440();
    sub_1E4201F44();
  }

  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E3DC2304()
{
  result = qword_1ECF38AE0;
  if (!qword_1ECF38AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38AD0, &qword_1E42D2130);
    sub_1E3DC2388();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38AE0);
  }

  return result;
}

unint64_t sub_1E3DC2388()
{
  result = qword_1ECF38AE8;
  if (!qword_1ECF38AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38AF0, &qword_1E42D2138);
    sub_1E32752B0(&qword_1ECF38AF8, &qword_1ECF38B00, &qword_1E42D2140, MEMORY[0x1E6981870]);
    sub_1E3DC2440();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38AE8);
  }

  return result;
}

unint64_t sub_1E3DC2440()
{
  result = qword_1ECF38B08;
  if (!qword_1ECF38B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38B10, &unk_1E42D2148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38B08);
  }

  return result;
}

void sub_1E3DC24C4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v33 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38B40, &qword_1E42D2458);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38B48, &qword_1E42D2460);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v32 - v20;
  v22 = v7;
  sub_1E41FF294();
  KeyPath = swift_getKeyPath();
  v24 = swift_allocObject();
  *(v24 + 16) = 1;
  v25 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38B50, &qword_1E42D2498) + 36)];
  *v25 = KeyPath;
  v25[1] = sub_1E37E09AC;
  v25[2] = v24;
  OUTLINED_FUNCTION_325();
  v26 = swift_allocObject();
  *(v26 + 16) = v5;
  *(v26 + 24) = v3;
  v1 &= 1u;
  *(v26 + 32) = v1;
  v27 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38B58, &qword_1E42D24A0) + 36)];
  *v27 = sub_1E3DC35A0;
  v27[1] = v26;
  v27[2] = 0;
  v27[3] = 0;
  OUTLINED_FUNCTION_325();
  v28 = swift_allocObject();
  *(v28 + 16) = v5;
  *(v28 + 24) = v3;
  *(v28 + 32) = v1;
  v29 = &v21[*(v16 + 44)];
  *v29 = 0;
  *(v29 + 1) = 0;
  *(v29 + 2) = sub_1E3DC35AC;
  *(v29 + 3) = v28;
  OUTLINED_FUNCTION_7_172();
  sub_1E380E99C();
  OUTLINED_FUNCTION_7_172();
  sub_1E380E99C();
  *v14 = sub_1E4201D44();
  *(v14 + 1) = 0;
  v14[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38B60, &qword_1E42D24A8);
  OUTLINED_FUNCTION_7_172();
  sub_1E3DC27F0();
  sub_1E3DC364C(v21, v18);
  sub_1E37E93E8(v14, v11, &qword_1ECF38B40, &qword_1E42D2458);
  v30 = v33;
  sub_1E3DC364C(v18, v33);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38B68, &qword_1E42D24B0);
  sub_1E37E93E8(v11, v30 + *(v31 + 48), &qword_1ECF38B40, &qword_1E42D2458);
  sub_1E325F6F0(v14, &qword_1ECF38B40, &qword_1E42D2458);
  sub_1E325F6F0(v21, &qword_1ECF38B48, &qword_1E42D2460);
  sub_1E325F6F0(v11, &qword_1ECF38B40, &qword_1E42D2458);
  sub_1E325F6F0(v18, &qword_1ECF38B48, &qword_1E42D2460);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DC27F0()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v23[1] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38B70, &qword_1E42D24B8);
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v23 - v12;
  v23[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38B78, &unk_1E42D24C0);
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_325();
  v17 = swift_allocObject();
  *(v17 + 16) = v6;
  *(v17 + 24) = v4;
  *(v17 + 32) = v2 & 1;
  v23[4] = v6;
  v23[5] = v4;
  v24 = v2 & 1;
  sub_1E380E99C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F488, &qword_1E42DA9C0);
  sub_1E32752B0(&qword_1ECF2F5B0, &qword_1ECF2F488, &qword_1E42DA9C0, MEMORY[0x1E697D658]);
  sub_1E4203964();
  v18 = sub_1E32752B0(&qword_1ECF38B80, &qword_1ECF38B70, &qword_1E42D24B8, MEMORY[0x1E697D680]);
  v21 = sub_1E3DC3788(v18, v19, v20);
  sub_1E4202DA4();
  (*(v10 + 8))(v13, v8);
  v25 = v8;
  v26 = &type metadata for BackButtonStyle;
  v27 = v18;
  v28 = v21;
  swift_getOpaqueTypeConformance2();
  v22 = v23[0];
  sub_1E4202F14();
  (*(v15 + 8))(v0, v22);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3DC2A94(uint64_t a1)
{
  (*(*a1 + 1496))(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770, &unk_1E42988A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE68, &unk_1E42A8E30);
  if (swift_dynamicCast())
  {
    sub_1E37DADF4(v5, v8);
    sub_1E3280A90(0, &qword_1EE23B350, off_1E8728420);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE98, &qword_1E42A8E40);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1E4297BE0;
    sub_1E327F454(v8, v1 + 32);
    sub_1E4039C00(3, v1);
    v3 = v2;
    [objc_opt_self() playMediaInfo:v2 watchType:0 isRentAndWatchNow:0];

    return __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    return sub_1E325F6F0(v5, &qword_1ECF2CE78, &unk_1E42C61E0);
  }
}

uint64_t sub_1E3DC2C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1E4201B14();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  sub_1E4202384();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  (*(v14 + 16))(v13 - v12, a1);
  if (!a2)
  {
    sub_1E4203664();
  }

  if (!a3)
  {
    sub_1E4203704();
  }

  (*(v9 + 104))(v3, *MEMORY[0x1E697C450], v7);

  return sub_1E4202194();
}

double sub_1E3DC2DC8(uint64_t a1, char a2, uint64_t a3, char a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ED18, qword_1E42AD5E0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32[-v9];
  v11 = sub_1E4200F34();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  sub_1E395FB64(v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_1E325F6F0(v10, &qword_1ECF2ED18, qword_1E42AD5E0);
    if (a2)
    {
      return 10.0;
    }

    else
    {
      return *&a1;
    }
  }

  else
  {
    (*(v13 + 32))(v4, v10, v11);
    v32[8] = a2 & 1;
    v32[0] = a4 & 1;
    sub_1E4200EF4();
    v17 = v16;
    v18 = [objc_opt_self() currentDevice];
    v19 = [v18 userInterfaceIdiom];

    if (v19 == 1)
    {
      v20 = [objc_opt_self() mainScreen];
      [v20 bounds];
      v22 = v21;

      if (a2)
      {
        v15 = v22;
      }

      else
      {
        v15 = *&a1;
      }

      sub_1E4201444();
      v24 = v23;
      v25 = OUTLINED_FUNCTION_53();
      v26(v25);
      if (v15 >= v22 * v24)
      {
        return v22 * v24;
      }
    }

    else
    {
      sub_1E4201424();
      v28 = v27;
      v29 = OUTLINED_FUNCTION_53();
      v30(v29);
      return v17 - (v28 + v28);
    }
  }

  return v15;
}

uint64_t sub_1E3DC305C(double a1, double a2, double a3, double a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ED18, qword_1E42AD5E0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15[-v6];
  v8 = sub_1E4200F34();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  sub_1E395FB64(v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1E325F6F0(v7, &qword_1ECF2ED18, qword_1E42AD5E0);
  }

  v13 = OUTLINED_FUNCTION_74();
  v14(v13);
  sub_1E4203F04();
  v15[8] = 0;
  v15[0] = 0;
  sub_1E4200F04();
  return (*(v10 + 8))(v4, v8);
}

void (*sub_1E3DC3224(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1E42009D4();
  return sub_1E37BCF0C;
}

uint64_t sub_1E3DC3298()
{
  v0 = sub_1E4201B14();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  sub_1E4202384();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v8 = OUTLINED_FUNCTION_53();
  v9(v8);
  sub_1E4203694();
  sub_1E4203704();
  (*(v2 + 104))(v6, *MEMORY[0x1E697C450], v0);
  return sub_1E4202194();
}

unint64_t sub_1E3DC3444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF38B18;
  if (!qword_1ECF38B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38B18);
  }

  return result;
}

double sub_1E3DC34FC()
{
  type metadata accessor for ClarityPlayerViewModel();
  OUTLINED_FUNCTION_0_242();
  sub_1E3DC3A24(v0, v1, v2, &unk_1E42D2158);
  v3 = *(sub_1E4200BC4() + 16);

  sub_1E3DC2A94(v3);

  return result;
}

double sub_1E3DC35B8(SEL *a1)
{
  type metadata accessor for ClarityPlayerViewModel();
  OUTLINED_FUNCTION_0_242();
  sub_1E3DC3A24(v2, v3, v4, &unk_1E42D2158);
  OUTLINED_FUNCTION_8_145();
  sub_1E4200BC4();
  sub_1E3DC1C38(a1);

  return result;
}

uint64_t sub_1E3DC364C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38B48, &qword_1E42D2460);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_41()
{
  sub_1E3264CE0(*(v0 + 16), *(v0 + 24));
  OUTLINED_FUNCTION_325();

  return swift_deallocObject();
}

unint64_t sub_1E3DC3788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE2A4548[0];
  if (!qword_1EE2A4548[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2A4548);
  }

  return result;
}

void sub_1E3DC37DC(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() sharedInstance];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for ClarityPlayerViewModel();
    OUTLINED_FUNCTION_0_242();
    sub_1E3DC3A24(v4, v5, v6, &unk_1E42D2158);
    OUTLINED_FUNCTION_8_145();
    sub_1E4200BC4();
    sub_1E3DC1830();

    v7 = sub_1E4205ED4();

    v8 = [v3 localizedStringForKey_];

    if (v8)
    {
      sub_1E4205F14();

      sub_1E32822E0(v9, v10, v11);
      *a1 = sub_1E4202C44();
      *(a1 + 8) = v12;
      *(a1 + 16) = v13 & 1;
      *(a1 + 24) = v14;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1E3DC3954@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ClarityPlayerViewModel();
  OUTLINED_FUNCTION_0_242();
  sub_1E3DC3A24(v2, v3, v4, &unk_1E42D2158);
  OUTLINED_FUNCTION_8_145();
  sub_1E4200BC4();
  sub_1E3DC1830();

  result = sub_1E42037C4();
  *a1 = result;
  return result;
}

uint64_t sub_1E3DC3A24(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1E3DC3A6C()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 isPlaybackUIBeingShown];

  if (v1)
  {
    OUTLINED_FUNCTION_7_4(v2);
    if (swift_weakLoadStrong())
    {
      sub_1E3DC1C98();
    }
  }

  return result;
}

double sub_1E3DC3AF4(uint64_t a1)
{
  OUTLINED_FUNCTION_7_4(a1);
  if (swift_weakLoadStrong())
  {
    type metadata accessor for ClarityPlayerViewModel();
    OUTLINED_FUNCTION_0_242();
    sub_1E3DC3A24(v2, v3, v4, &unk_1E42D2158);
    sub_1E4200514();

    sub_1E4200594();
  }

  return result;
}

double sub_1E3DC3B84(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_12_121(v1 + OBJC_IVAR____TtC8VideosUIP33_CA14F8BAE69EE8EA75B98CDED023906025SidebarItemViewInteractor_menuItemViewModel);
  *v4 = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  sub_1E3DC5E88(v3, v5, v6, v7, v8, v9);
  *(v1 + OBJC_IVAR____TtC8VideosUIP33_CA14F8BAE69EE8EA75B98CDED023906025SidebarItemViewInteractor_viewModel) = a1;

  type metadata accessor for SidebarItemViewInteractor(0);
  OUTLINED_FUNCTION_0_243();
  sub_1E3DC5124(v10, v11, &unk_1E42BD340);
  sub_1E4200514();
  sub_1E4200594();

  return result;
}

void sub_1E3DC3C44(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = (v2 + OBJC_IVAR____TtC8VideosUIP33_CA14F8BAE69EE8EA75B98CDED023906025SidebarItemViewInteractor_menuItemViewModel);
  v5 = *(v2 + OBJC_IVAR____TtC8VideosUIP33_CA14F8BAE69EE8EA75B98CDED023906025SidebarItemViewInteractor_menuItemViewModel + 40);
  if (v5)
  {
    v6 = v4[3];
    v7 = v4[4];
    v8 = v4[1];
    v9 = v4[2];
    v10 = *v4;

LABEL_49:
    *a2 = v10;
    a2[1] = v8;
    a2[2] = v9;
    a2[3] = v6;
    a2[4] = v7;
    a2[5] = v5;
    return;
  }

  v76 = a1;
  v71 = (v2 + OBJC_IVAR____TtC8VideosUIP33_CA14F8BAE69EE8EA75B98CDED023906025SidebarItemViewInteractor_menuItemViewModel);
  type metadata accessor for ImageLayout();
  v5 = sub_1E3BD61D8();
  v11 = *(v2 + OBJC_IVAR____TtC8VideosUIP33_CA14F8BAE69EE8EA75B98CDED023906025SidebarItemViewInteractor_viewModel);
  if (!v11 || (v12 = *(*v11 + 464), v13 = , v14 = v12(v13), , !v14))
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  v15 = sub_1E32AE9B0(v14);
  v72 = a2;
  if (!v15)
  {

    v7 = 0;
    v9 = 0;
    v8 = 0;
    v10 = 0;
LABEL_48:
    v64 = *v71;
    v79 = v71[1];
    v65 = v71[2];
    v66 = v71[3];
    v67 = v71[4];
    v68 = v71[5];
    *v71 = v10;
    v71[1] = v8;
    v71[2] = v9;
    v71[3] = 0;
    v71[4] = v7;
    v71[5] = v5;

    sub_1E3DC5E88(v64, v79, v65, v66, v67, v68);
    v6 = 0;
    a2 = v72;
    goto LABEL_49;
  }

  if (v15 >= 1)
  {
    v70 = 0;
    v73 = 0;
    v74 = 0;
    v10 = 0;
    v16 = 0;
    v77 = v14 & 0xC000000000000001;
    v78 = v14;
    while (1)
    {
      v17 = v15;
      if (v77)
      {
        v18 = MEMORY[0x1E6911E60](v16, v14);
        v21 = v18;
      }

      else
      {
        v21 = *(v14 + 8 * v16 + 32);
      }

      v22 = *(v21 + 98);
      v84 = v22;
      sub_1E3742F1C(v18, v19, v20);
      OUTLINED_FUNCTION_13_132();
      v23 = OUTLINED_FUNCTION_5_173();
      v31 = OUTLINED_FUNCTION_10_125(v23, v24, v25, v26, v27, v28, v29, v30, v69, v70, v71, v72, v73, v74, v76, v77, v78, v80, v81, v82);
      v34 = v34 && &qword_1F5D5CE68 == &v84;
      if (v34)
      {
        break;
      }

      v35 = OUTLINED_FUNCTION_20_8(v31, v32, v33);

      if (v35)
      {
        goto LABEL_34;
      }

      v84 = v22;
      OUTLINED_FUNCTION_11_132(23);
      OUTLINED_FUNCTION_13_132();
      v36 = OUTLINED_FUNCTION_5_173();
      v44 = OUTLINED_FUNCTION_10_125(v36, v37, v38, v39, v40, v41, v42, v43, v69, v70, v71, v72, v73, v74, v76, v77, v78, v80, v81, v82);
      if (v34 && &qword_1F5D5CE68 == &v84)
      {

LABEL_38:

        if (*v21 == _TtC8VideosUI13TextViewModel)
        {
          v74 = v21;
        }

        else
        {

          v74 = 0;
        }

        goto LABEL_35;
      }

      v48 = OUTLINED_FUNCTION_20_8(v44, v45, v46);

      if (v48)
      {
        goto LABEL_38;
      }

      v84 = v22;
      OUTLINED_FUNCTION_11_132(15);
      OUTLINED_FUNCTION_13_132();
      v49 = OUTLINED_FUNCTION_5_173();
      v57 = OUTLINED_FUNCTION_10_125(v49, v50, v51, v52, v53, v54, v55, v56, v69, v70, v71, v72, v73, v75, v76, v77, v78, v80, v81, v82);
      if (v34 && &qword_1F5D5CE68 == &v84)
      {

LABEL_42:

        if (*v21 == _TtC8VideosUI13TextViewModel)
        {
          v73 = v21;
        }

        else
        {

          v73 = 0;
        }

        goto LABEL_35;
      }

      v61 = OUTLINED_FUNCTION_20_8(v57, v58, v59);

      if (v61)
      {
        goto LABEL_42;
      }

      v84 = v22;
      OUTLINED_FUNCTION_11_132(31);
      OUTLINED_FUNCTION_13_132();
      OUTLINED_FUNCTION_5_173();
      if (v82 == v80 && v83 == v81)
      {

LABEL_46:

        v70 = v21;
        goto LABEL_35;
      }

      v63 = sub_1E42079A4();

      if (v63)
      {
        goto LABEL_46;
      }

LABEL_35:
      v14 = v78;
      v15 = v17;
      if (v17 == ++v16)
      {

        v7 = v70;
        v9 = v73;
        v8 = v74;
        goto LABEL_48;
      }
    }

LABEL_34:

    sub_1E37DAE10();
    (*(*v5 + 1648))();

    v10 = v21;
    goto LABEL_35;
  }

  __break(1u);
}

uint64_t sub_1E3DC4144()
{
  *(v0 + OBJC_IVAR____TtC8VideosUIP33_CA14F8BAE69EE8EA75B98CDED023906025SidebarItemViewInteractor_viewModel) = 0;
  v1 = (v0 + OBJC_IVAR____TtC8VideosUIP33_CA14F8BAE69EE8EA75B98CDED023906025SidebarItemViewInteractor_menuItemViewModel);
  v1[1] = 0u;
  v1[2] = 0u;
  *v1 = 0u;
  return sub_1E3B500B4();
}

double sub_1E3DC416C()
{

  v1 = OUTLINED_FUNCTION_12_121(v0 + OBJC_IVAR____TtC8VideosUIP33_CA14F8BAE69EE8EA75B98CDED023906025SidebarItemViewInteractor_menuItemViewModel);

  return sub_1E3DC5E88(v1, v2, v3, v4, v5, v6);
}

uint64_t sub_1E3DC41B8()
{
  v0 = sub_1E3B4FF80();

  v1 = OUTLINED_FUNCTION_12_121(v0 + OBJC_IVAR____TtC8VideosUIP33_CA14F8BAE69EE8EA75B98CDED023906025SidebarItemViewInteractor_menuItemViewModel);
  sub_1E3DC5E88(v1, v2, v3, v4, v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v7, v8);
}

void sub_1E3DC4260(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  v4 = *(type metadata accessor for LibSidebarItemViewVisionOS(0) + 32);
  *(a2 + v4) = swift_getKeyPath();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  OUTLINED_FUNCTION_10_5(v5);
  *a2 = a1;

  *(a2 + 16) = *sub_1E3C8DCB4();
  v6 = OUTLINED_FUNCTION_20_93();

  v7 = v6;
  sub_1E3DC4144();
  OUTLINED_FUNCTION_38();
  sub_1E3B6C5EC();
  v9 = v8;

  if (v9)
  {
    *(a2 + 8) = v9;
    *(v7 + OBJC_IVAR____TtC8VideosUIP33_CA14F8BAE69EE8EA75B98CDED023906025SidebarItemViewInteractor_viewModel) = v9;
  }

  *(a2 + 24) = sub_1E3A7697C;
  *(a2 + 32) = v7;
  *(a2 + 40) = 0;
}

uint64_t sub_1E3DC4368@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28 = a1;
  v3 = type metadata accessor for LibSidebarItemViewVisionOS(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38B98, &qword_1E42D2548);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38BA0, &qword_1E42D2550);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  type metadata accessor for SidebarItemViewInteractor(0);
  OUTLINED_FUNCTION_0_243();
  sub_1E3DC5124(v13, v14, &unk_1E42BD340);
  sub_1E4200BC4();
  sub_1E3DC3C44(v1[2], v30);

  *v9 = sub_1E4201B84();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38BB0, &qword_1E42D2558);
  sub_1E3DC4734(v30, v1, &v9[*(v15 + 44)]);
  v16 = sub_1E325F6F0(v30, &qword_1ECF38BB8, &qword_1E42D2560);
  v17 = *v1;
  if (v17)
  {
    v18 = (*(*v17 + 248))(v16);
    v19 = sub_1E3B501F8(v18, MEMORY[0x1E69E6530]);
  }

  else
  {
    v19 = sub_1E3B4F980(MEMORY[0x1E69E6530], MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
  }

  sub_1E3DC5F0C();
  v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v21 = swift_allocObject();
  sub_1E3DC4C64(&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  sub_1E32D4A8C();
  v22 = v27;
  *&v12[*(v27 + 52)] = v19;
  v23 = &v12[*(v22 + 56)];
  *v23 = sub_1E3DC4CC8;
  v23[1] = v21;
  v29 = v2[1];
  sub_1E3DC5F0C();
  v24 = swift_allocObject();
  sub_1E3DC4C64(&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB28, &qword_1E42A2A60);
  sub_1E3DC500C();
  sub_1E3DC5070();
  sub_1E4203524();

  return sub_1E325F6F0(v12, &qword_1ECF38BA0, &qword_1E42D2550);
}

uint64_t sub_1E3DC4734@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a3;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238, &unk_1E42999B0);
  OUTLINED_FUNCTION_0_10();
  v47 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29938, &unk_1E429C3F0);
  v9 = OUTLINED_FUNCTION_17_2(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_5();
  v48 = v10;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v45 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29210, &qword_1E4299980);
  v21 = OUTLINED_FUNCTION_17_2(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_5();
  v50 = v22;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v23);
  v53 = &v45 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38BD8, &qword_1E42D2728);
  v26 = OUTLINED_FUNCTION_17_2(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2_5();
  v49 = v27;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v45 - v29;
  *v30 = sub_1E4201B84();
  *(v30 + 1) = 0;
  v31 = 1;
  v30[16] = 1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38BE0, &qword_1E42D2730);
  sub_1E3DC516C(a1, a2, &v30[*(v32 + 44)]);
  v33 = a1[5];
  if (v33 && a1[2])
  {

    sub_1E374EB64();
    OUTLINED_FUNCTION_18();
    sub_1E3F23370();

    (*(v16 + 32))(v53, v19, v14);
    v31 = 0;
  }

  v34 = 1;
  __swift_storeEnumTagSinglePayload(v53, v31, 1, v14);
  if (v33)
  {
    v35 = a1[4];
    v36 = v51;
    if (v35)
    {

      sub_1E3EB9BB4(v54);
      v37 = sub_1E38A86A4();
      v38 = OUTLINED_FUNCTION_18();
      v39 = v46;
      sub_1E37E8BE8(v35, v54, v37, v38 & 1, 0, 0, v46);

      sub_1E375C31C(v54);
      (*(v47 + 32))(v13, v39, v36);
      v34 = 0;
    }
  }

  else
  {
    v36 = v51;
  }

  __swift_storeEnumTagSinglePayload(v13, v34, 1, v36);
  v40 = v49;
  sub_1E378249C();
  v41 = v53;
  v42 = v50;
  sub_1E378249C();
  v43 = v48;
  sub_1E378249C();
  sub_1E378249C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38BE8, &qword_1E42D2738);
  sub_1E378249C();
  sub_1E378249C();
  sub_1E325F6F0(v13, &qword_1ECF29938, &unk_1E429C3F0);
  sub_1E325F6F0(v41, &qword_1ECF29210, &qword_1E4299980);
  sub_1E325F6F0(v30, &qword_1ECF38BD8, &qword_1E42D2728);
  sub_1E325F6F0(v43, &qword_1ECF29938, &unk_1E429C3F0);
  sub_1E325F6F0(v42, &qword_1ECF29210, &qword_1E4299980);
  return sub_1E325F6F0(v40, &qword_1ECF38BD8, &qword_1E42D2728);
}

uint64_t sub_1E3DC4C64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibSidebarItemViewVisionOS(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1E3DC4CC8()
{
  v1 = type metadata accessor for LibSidebarItemViewVisionOS(0);
  OUTLINED_FUNCTION_17_2(v1);
  v4 = *(v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  if (v4)
  {
    v5 = *(v4 + 32);

    if (sub_1E38BBD0C(v5, 9, v6))
    {
      sub_1E3B6C5EC();
      if (v7)
      {
        type metadata accessor for SidebarItemViewInteractor(0);
        OUTLINED_FUNCTION_0_243();
        sub_1E3DC5124(v8, v9, &unk_1E42BD340);
        sub_1E4200BC4();
        OUTLINED_FUNCTION_38();

        sub_1E3DC3B84(v10);
      }
    }
  }

  return result;
}

uint64_t objectdestroyTm_42()
{
  v1 = (type metadata accessor for LibSidebarItemViewVisionOS(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  sub_1E3264CE0(*(v2 + 24), *(v2 + 32));
  v3 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

double sub_1E3DC4F30(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for LibSidebarItemViewVisionOS(0);
  OUTLINED_FUNCTION_17_2(v3);
  v4 = *a2;
  type metadata accessor for SidebarItemViewInteractor(0);
  OUTLINED_FUNCTION_0_243();
  sub_1E3DC5124(v5, v6, &unk_1E42BD340);
  sub_1E4200BC4();
  sub_1E3DC3B84(v4);

  return result;
}

unint64_t sub_1E3DC500C()
{
  result = qword_1ECF38BC0;
  if (!qword_1ECF38BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38BA0, &qword_1E42D2550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38BC0);
  }

  return result;
}

unint64_t sub_1E3DC5070()
{
  result = qword_1EE23B6C0;
  if (!qword_1EE23B6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2BB28, &qword_1E42A2A60);
    sub_1E3DC5124(&qword_1EE23BA60, type metadata accessor for ViewModel, &protocol conformance descriptor for ViewModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23B6C0);
  }

  return result;
}

uint64_t sub_1E3DC5124(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E3DC516C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v64 = a2;
  v5 = a1[5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v61 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v60 = v56 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29210, &qword_1E4299980);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_5();
  v66 = v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  v65 = v56 - v14;
  v15 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = (v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for LibMenuIconContainerView(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v22);
  v24 = (v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38BF0, &qword_1E42D2740);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  v27 = v56 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38BF8, &qword_1E42D2748);
  v29 = OUTLINED_FUNCTION_17_2(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_5();
  v63 = v30;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v31);
  v67 = v56 - v32;
  v33 = 1;
  v62 = a1;
  if (v5)
  {
    v59 = v27;
    v34 = v17;
    v35 = v15;
    v36 = *a1;
    if (*a1)
    {
      v37 = type metadata accessor for LibSidebarItemViewVisionOS(0);
      v58 = a3;
      v56[2] = *(v37 + 32);

      v57 = v6;
      v38 = v64;
      sub_1E3746E10(v20);
      v56[1] = *(v38 + 16);
      v39 = sub_1E3DA2B98();
      (*(*v5 + 256))(COERCE_DOUBLE(*&v39), 0);
      (*(*v5 + 360))(COERCE_DOUBLE(*&v39), 0);
      v40 = *(v34 + 8);
      v40(v20, v35);
      v41 = *(v21 + 24);
      *(v24 + v41) = swift_getKeyPath();
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
      OUTLINED_FUNCTION_10_5(v42);
      *v24 = v36;
      v24[1] = v5;

      sub_1E3746E10(v20);
      v43 = sub_1E3DA2B98();
      v40(v20, v35);
      *v56 = v43;
      a3 = v58;
      sub_1E3746E10(v20);
      sub_1E3DA2B98();
      v40(v20, v35);
      sub_1E4203DA4();
      v6 = v57;
      sub_1E4200D94();
      v44 = v59;
      sub_1E3DC5F0C();
      v45 = (v44 + *(v68 + 36));
      v46 = v70;
      *v45 = v69;
      v45[1] = v46;
      v45[2] = v71;
      sub_1E3DC5F64(v24);
      sub_1E3DC5FC0(v44, v67);
      v33 = 0;
    }
  }

  v47 = v67;
  __swift_storeEnumTagSinglePayload(v67, v33, 1, v68);
  if (v5)
  {
    v48 = 1;
    v49 = v65;
    if (v62[1])
    {

      sub_1E37BD068();
      OUTLINED_FUNCTION_18();
      v50 = v60;
      OUTLINED_FUNCTION_32_0();
      sub_1E3F23370();

      (*(v61 + 32))(v49, v50, v6);
      v48 = 0;
    }
  }

  else
  {
    v48 = 1;
    v49 = v65;
  }

  __swift_storeEnumTagSinglePayload(v49, v48, 1, v6);
  v51 = v63;
  sub_1E378249C();
  v52 = v66;
  sub_1E378249C();
  sub_1E378249C();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38C00, qword_1E42D2750);
  sub_1E378249C();
  v54 = a3 + *(v53 + 64);
  *v54 = 0;
  *(v54 + 8) = 1;
  sub_1E325F6F0(v49, &qword_1ECF29210, &qword_1E4299980);
  sub_1E325F6F0(v47, &qword_1ECF38BF8, &qword_1E42D2748);
  sub_1E325F6F0(v52, &qword_1ECF29210, &qword_1E4299980);
  return sub_1E325F6F0(v51, &qword_1ECF38BF8, &qword_1E42D2748);
}

double sub_1E3DC5800@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_1E3EB9BB4(v9);
  v4 = v1[1];
  v5 = OUTLINED_FUNCTION_18();
  sub_1E37E8BE8(v3, v9, v4, v5 & 1, 0, 0, a1);
  sub_1E375C31C(v9);
  sub_1E4203DA4();
  sub_1E4200D94();
  v6 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C1A8, &qword_1E42C9810) + 36));
  v7 = v11;
  *v6 = v10;
  v6[1] = v7;
  result = *&v12;
  v6[2] = v12;
  return result;
}

uint64_t sub_1E3DC58C0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  if (*a1)
  {
    if (!v4)
    {
      goto LABEL_9;
    }

    type metadata accessor for LibMenuItem(0);
    sub_1E3DC5124(&qword_1EE286128, type metadata accessor for LibMenuItem, &unk_1E42B6B00);

    v5 = sub_1E4205E84();

    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else if (v4)
  {
LABEL_9:
    v7 = 0;
    return v7 & 1;
  }

  v6 = a2[1];
  if (!a1[1])
  {
    v7 = v6 == 0;
    return v7 & 1;
  }

  if (!v6)
  {
    goto LABEL_9;
  }

  type metadata accessor for ViewModel();
  sub_1E3DC5124(&qword_1EE23BA60, type metadata accessor for ViewModel, &protocol conformance descriptor for ViewModel);

  v7 = sub_1E4205E84();

  return v7 & 1;
}

void sub_1E3DC5AE0(uint64_t a1)
{
  sub_1E3DC5DD4(319, &qword_1ECF38BC8, type metadata accessor for LibMenuItem, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1E3DC5DD4(319, qword_1EE23B6C8, type metadata accessor for ViewModel, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for LibListLockupViewLayout();
      if (v3 <= 0x3F)
      {
        sub_1E3DC5C2C(319);
        if (v4 <= 0x3F)
        {
          OUTLINED_FUNCTION_4_191();
          sub_1E3DC5DD4(319, v5, v6, MEMORY[0x1E697DCC0]);
          if (v7 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E3DC5C2C(uint64_t a1)
{
  if (!qword_1ECF38BD0)
  {
    type metadata accessor for SidebarItemViewInteractor(255);
    sub_1E3DC5124(&qword_1ECF38BA8, type metadata accessor for SidebarItemViewInteractor, &unk_1E42BD340);
    v1 = sub_1E4200BE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECF38BD0);
    }
  }
}

void sub_1E3DC5CE8(uint64_t a1)
{
  type metadata accessor for ViewModel();
  if (v1 <= 0x3F)
  {
    sub_1E3DC5DD4(319, qword_1EE286130, type metadata accessor for ImageLayout, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      OUTLINED_FUNCTION_4_191();
      sub_1E3DC5DD4(319, v3, v4, MEMORY[0x1E697DCC0]);
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E3DC5DD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1E3DC5E38(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

double sub_1E3DC5E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
  }

  return result;
}

uint64_t sub_1E3DC5F0C()
{
  OUTLINED_FUNCTION_155();
  v1(0);
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_32_0();
  v3(v2);
  return v0;
}

uint64_t sub_1E3DC5F64(uint64_t a1)
{
  v2 = type metadata accessor for LibMenuIconContainerView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E3DC5FC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38BF0, &qword_1E42D2740);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3DC6030(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 248, a2);
  *(v2 + 256) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E3DC6084(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 256);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1E37BB578;
}

uint64_t sub_1E3DC6134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  swift_allocObject();
  return sub_1E3DC6188(v5, a2, a3);
}

uint64_t sub_1E3DC6188(__int16 a1, uint64_t a2, uint64_t a3)
{
  v3[32] = 0;
  swift_unknownObjectWeakInit();
  v3[33] = 0;
  v3[34] = 0;
  v3[35] = 0;

  v7 = sub_1E39BEDCC(a1, a2, a3);
  if (v7)
  {
    OUTLINED_FUNCTION_8();
    v9 = *(v8 + 488);

    v11 = v9(v10);
    if (v11)
    {
      v13 = sub_1E373E010(117, v11, v12);

      if (v13)
      {
        type metadata accessor for CollectionViewModel();
        v15 = swift_dynamicCastClass();
        if (!v15)
        {
        }

        goto LABEL_9;
      }
    }

    else
    {
    }

    v15 = 0;
LABEL_9:
    OUTLINED_FUNCTION_14_0(v7 + 264, v14);
    *(v7 + 264) = v15;
  }

  return v7;
}

double sub_1E3DC62E4()
{
  sub_1E32AF6F8(v0 + 248);

  return result;
}

uint64_t sub_1E3DC6324()
{
  v0 = ViewModel.deinit();
  sub_1E32AF6F8(v0 + 248);

  return v0;
}

uint64_t sub_1E3DC636C()
{
  v0 = sub_1E3DC6324();

  return MEMORY[0x1EEE6BDC0](v0, 288, 7);
}

uint64_t sub_1E3DC639C()
{
  OUTLINED_FUNCTION_8();
  result = (*(v0 + 888))();
  if (result)
  {
    v2 = sub_1E40B8524();

    return v2;
  }

  return result;
}

uint64_t sub_1E3DC6420()
{
  OUTLINED_FUNCTION_8();
  result = (*(v0 + 888))();
  if (result)
  {
    OUTLINED_FUNCTION_30();
    v3 = (*(v2 + 1488))();

    return v3 & 1;
  }

  return result;
}

uint64_t sub_1E3DC64A0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v73 = a5;
  v11 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_6();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v66 - v19;
  if ((sub_1E37D01CC(a1, 2, v21) & 1) != 0 && (*(*v5 + 888))())
  {
    OUTLINED_FUNCTION_30();
    v24 = (*(v23 + 1504))(a1, a2, a3 & 1, a4, v73);

    return v24 & 1;
  }

  if (sub_1E37D01CC(a1, 1, v22))
  {
    v26 = (*v5 + 888);
    v72 = *v26;
    if (v72())
    {
      OUTLINED_FUNCTION_30();
      v71 = (*(v27 + 1112))();
      v29 = v28;

      if (v29)
      {
        v31 = (*(*v5 + 648))(v30);
        if (v31)
        {
          v70 = v26;
          OUTLINED_FUNCTION_5_0(v31 + 48, v75);
          Strong = swift_unknownObjectWeakLoadStrong();

          v69 = Strong;
          if (Strong)
          {
            v33 = v29;
            if (v5[34])
            {
              v34 = sub_1E324FBDC();
              (*(v13 + 16))(v20, v34, v11);
              v35 = sub_1E41FFC94();
              v36 = sub_1E42067E4();
              v68 = v35;
              if (os_log_type_enabled(v35, v36))
              {
                v37 = OUTLINED_FUNCTION_6_21();
                HIDWORD(v66) = v36;
                v38 = v37;
                v74 = OUTLINED_FUNCTION_100();
                v67 = v33;
                v39 = v74;
                *v38 = 136315138;
                v40 = ViewModelRequestType.rawValue.getter(a1);
                v42 = sub_1E3270FC8(v40, v41, &v74);

                *(v38 + 4) = v42;
                v43 = v68;
                _os_log_impl(&dword_1E323F000, v68, BYTE4(v66), "EpicInlineViewModel: Cancelling to handle new request of type [%s]", v38, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v39);
                v33 = v67;
                OUTLINED_FUNCTION_6_0();
                OUTLINED_FUNCTION_6_0();
              }

              else
              {
              }

              (*(v13 + 8))(v20, v11);
              if (v6[34])
              {
                OUTLINED_FUNCTION_8();
                v49 = *(v48 + 376);

                v49(v50);
              }

              v6[34] = 0;
            }

            type metadata accessor for CollectionServiceRequestContext(0);
            v51 = v69;
            v52 = v69;
            v53 = sub_1E3E3D284(a1, v71, v33, v51);
            v54 = v72;
            v55 = v72();
            if (v55)
            {
              v56 = (*(*v55 + 1136))();
            }

            else
            {
              v56 = 0;
            }

            v57 = (*(*v53 + 232))(v56);
            if ((v54)(v57))
            {
              v58 = sub_1E39C1AA0();
            }

            else
            {
              v58 = 0;
            }

            (*(*v53 + 280))(v58);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A2A8, qword_1E429D270);
            v59 = sub_1E37B2890();
            v6[34] = v59;

            v61 = (*(*v59 + 352))(v60);

            if (v61)
            {
              v62 = swift_allocObject();
              swift_weakInit();
              v63 = swift_allocObject();
              *(v63 + 16) = v62;
              *(v63 + 24) = a1;
              v64 = v73;
              *(v63 + 32) = a4;
              *(v63 + 40) = v64;
              sub_1E34AF604(a4, v64);
              v65 = sub_1E41EC148(sub_1E3DC7BB8, v63);
            }

            else
            {

              v65 = 0;
            }

            v6[35] = v65;

            return 0;
          }
        }
      }
    }

    v44 = sub_1E324FBDC();
    (*(v13 + 16))(v17, v44, v11);
    v45 = sub_1E41FFC94();
    v46 = sub_1E42067E4();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = OUTLINED_FUNCTION_125_0();
      *v47 = 0;
      _os_log_impl(&dword_1E323F000, v45, v46, "EpicInlineViewModel: Cannot make request because of missing app context", v47, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    (*(v13 + 8))(v17, v11);
  }

  return 0;
}

void sub_1E3DC6B70(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void, __n128), uint64_t a5)
{
  v57 = a4;
  v9 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v56 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v56 - v20;
  v22 = *a1;
  if (*(a1 + 17))
  {
    v23 = *(a1 + 16);
    v56 = a5;
    if (v23 == 2)
    {
      sub_1E324FBDC();
      OUTLINED_FUNCTION_12_7();
      v24(v15);
      v25 = OUTLINED_FUNCTION_39_0();
      sub_1E3781F8C(v25, v26, 2u);
      v27 = sub_1E41FFC94();
      v28 = sub_1E42067F4();
      v29 = OUTLINED_FUNCTION_39_0();
      sub_1E37D172C(v29, v30, 2u, 1);
      if (os_log_type_enabled(v27, v28))
      {
        v31 = OUTLINED_FUNCTION_6_21();
        v32 = OUTLINED_FUNCTION_100();
        v59[0] = v32;
        *v31 = 136315138;
        v33 = OUTLINED_FUNCTION_39_0();
        *(v31 + 4) = sub_1E3270FC8(v33, v34, v35);
        _os_log_impl(&dword_1E323F000, v27, v28, "EpicInlineViewModel: Received empty items from fragment request: [%s]", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v32);
        OUTLINED_FUNCTION_13_4();
        OUTLINED_FUNCTION_6_0();
      }

      (*(v11 + 8))(v15, v9);
    }

    else
    {
      v41 = OUTLINED_FUNCTION_39_0();
      v58[0] = sub_1E3F6FB3C(v41, v42, v43);
      v58[1] = v44;
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960, &unk_1E4298000);
      sub_1E4148C68(sub_1E37BCD7C, v45, v59);

      v47 = v59[0];
      v46 = v59[1];
      sub_1E324FBDC();
      OUTLINED_FUNCTION_12_7();
      v48(v18);

      v49 = sub_1E41FFC94();
      v50 = sub_1E42067F4();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = OUTLINED_FUNCTION_6_21();
        v52 = OUTLINED_FUNCTION_100();
        v59[0] = v52;
        *v51 = 136315138;
        v53 = sub_1E3270FC8(v47, v46, v59);

        *(v51 + 4) = v53;
        _os_log_impl(&dword_1E323F000, v49, v50, "EpicInlineViewModel: Received error [%s]", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v52);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_13_4();
      }

      else
      {
      }

      (*(v11 + 8))(v18, v9);
    }

    OUTLINED_FUNCTION_5_0(a2 + 16, v59);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      *(Strong + 272) = 0;
    }

    OUTLINED_FUNCTION_5_0(a2 + 16, v58);
    v55 = swift_weakLoadStrong();
    if (v55)
    {
      *(v55 + 280) = 0;
    }

    if (v57)
    {
      v57(0);
    }
  }

  else
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_12_7();
    v36(v21);
    v37 = sub_1E41FFC94();
    v38 = sub_1E42067E4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = OUTLINED_FUNCTION_125_0();
      *v39 = 0;
      _os_log_impl(&dword_1E323F000, v37, v38, "EpicInlineViewModel: Received success response", v39, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    (*(v11 + 8))(v21, v9);
    OUTLINED_FUNCTION_5_0(a2 + 16, v59);
    if (swift_weakLoadStrong())
    {
      sub_1E3DC7014(v22, a3, v57, a5);
    }

    OUTLINED_FUNCTION_5_0(a2 + 16, v58);
    v40 = swift_weakLoadStrong();
    if (v40)
    {
      *(v40 + 272) = 0;
    }
  }
}

void sub_1E3DC7014(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v9 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v87 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v102 = &v87 - v20;
  if ((sub_1E37D01CC(a2, 1, v21) & 1) == 0)
  {
    v67 = 0;
    if (!a3)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  OUTLINED_FUNCTION_5_0(a1 + 40, v115);
  v22 = *(a1 + 40);
  if (!v22)
  {
    goto LABEL_40;
  }

  ViewModelKeys.rawValue.getter(3);
  sub_1E3277E60(v23, v24, v22, &v112);

  if (!*(&v113 + 1))
  {
    v68 = &v112;
LABEL_39:
    sub_1E329505C(v68);
    goto LABEL_40;
  }

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  v26 = MEMORY[0x1E69E7CA0];
  v101 = v25;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_40;
  }

  *(&v113 + 1) = &type metadata for ViewModelKeys;
  *&v114 = &off_1F5D7BCA8;
  LOBYTE(v112) = 13;
  sub_1E3F9F164(&v112, v109, v26 + 8);

  if (!*(&v110 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1(&v112);
    v68 = &v109;
    goto LABEL_39;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(&v112);
    goto LABEL_40;
  }

  v27 = v107;
  __swift_destroy_boxed_opaque_existential_1(&v112);
  if (!*(v27 + 16))
  {

    goto LABEL_40;
  }

  v89 = v18;
  v95 = v4;
  v87 = v15;
  v90 = a4;
  v91 = a3;
  v28 = *(v27 + 32);

  v92 = 0;
  v94 = 0;
  v30 = 0;
  v32 = v28 + 64;
  v31 = *(v28 + 64);
  v99 = v28;
  v33 = 1 << *(v28 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & v31;
  a3 = ((v33 + 63) >> 6);
  v97 = v11 + 16;
  v88 = v11;
  v98 = (v11 + 8);
  *&v29 = 136315138;
  v93 = v29;
  v36 = v102;
  v100 = v28 + 64;
  if ((v34 & v31) != 0)
  {
    do
    {
      v37 = v30;
LABEL_16:
      v38 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
      v39 = v38 | (v37 << 6);
      v40 = (*(v99 + 48) + 16 * v39);
      v42 = *v40;
      v41 = v40[1];
      sub_1E328438C(*(v99 + 56) + 32 * v39, &v107);
      *&v109 = v42;
      *(&v109 + 1) = v41;
      sub_1E329504C(&v107, &v110);

LABEL_17:
      v112 = v109;
      v113 = v110;
      v114 = v111;
      v43 = *(&v109 + 1);
      if (!*(&v109 + 1))
      {

        if (v92)
        {
          sub_1E324FBDC();
          OUTLINED_FUNCTION_11_133();
          v76(v89);
          v77 = sub_1E41FFC94();
          v78 = sub_1E42067E4();
          os_log_type_enabled(v77, v78);
          OUTLINED_FUNCTION_12_122();
          v79 = v94;
          if (v80)
          {
            *OUTLINED_FUNCTION_125_0() = 0;
            OUTLINED_FUNCTION_13_133(&dword_1E323F000, v81, v82, "Replaced from fragment successfully");
            OUTLINED_FUNCTION_13_4();
          }

          v83 = (*v98)(v89, v9);
          if ((*(*v95 + 864))(v83))
          {
            v85 = v84;
            ObjectType = swift_getObjectType();
            v67 = (*(v85 + 8))(v79, ObjectType, v85);
            swift_unknownObjectRelease();
            if (!a3)
            {
LABEL_45:

              return;
            }

LABEL_44:
            a3(v67 & 1);
            goto LABEL_45;
          }

LABEL_43:
          v67 = 0;
          if (!a3)
          {
            goto LABEL_45;
          }

          goto LABEL_44;
        }

        OUTLINED_FUNCTION_12_122();
        v11 = v88;
        v15 = v87;
LABEL_40:
        v69 = sub_1E324FBDC();
        (*(v11 + 16))(v15, v69, v9);
        v70 = sub_1E41FFC94();
        v71 = sub_1E42067F4();
        if (os_log_type_enabled(v70, v71))
        {
          *OUTLINED_FUNCTION_125_0() = 0;
          OUTLINED_FUNCTION_13_133(&dword_1E323F000, v72, v73, "Received invalid fragment for .replace");
          OUTLINED_FUNCTION_13_4();
        }

        v74 = OUTLINED_FUNCTION_39_0();
        v75(v74);
        goto LABEL_43;
      }

      v44 = v112;
      sub_1E329504C(&v113, &v109);

      v45 = sub_1E38506C8();
      if (v45 == 263)
      {
        goto LABEL_26;
      }

      v46 = v45;
      sub_1E328438C(&v109, &v107);
      v47 = swift_dynamicCast();
      if ((v47 & 1) == 0)
      {
        goto LABEL_26;
      }

      v96 = v103;
      v106 = v95[49];
      v105 = v46;
      sub_1E3742F1C(v47, v48, v49);
      sub_1E4206254();
      sub_1E4206254();
      if (v107 == v103 && *(&v107 + 1) == v104)
      {
      }

      else
      {
        v51 = sub_1E42079A4();

        if ((v51 & 1) == 0)
        {

LABEL_26:
          sub_1E324FBDC();
          OUTLINED_FUNCTION_11_133();
          v52(v36);

          v53 = sub_1E41FFC94();
          v54 = sub_1E4206814();

          if (os_log_type_enabled(v53, v54))
          {
            v55 = OUTLINED_FUNCTION_6_21();
            v56 = v9;
            v57 = OUTLINED_FUNCTION_100();
            *&v107 = v57;
            *v55 = v93;
            v58 = sub_1E3270FC8(v44, v43, &v107);

            *(v55 + 4) = v58;
            _os_log_impl(&dword_1E323F000, v53, v54, "Invalid model type in fragment <%s>", v55, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v57);
            v9 = v56;
            v36 = v102;
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_13_4();
          }

          else
          {
          }

          v59 = OUTLINED_FUNCTION_39_0();
          v60(v59);
          __swift_destroy_boxed_opaque_existential_1(&v109);
          goto LABEL_30;
        }
      }

      v61 = v95;
      OUTLINED_FUNCTION_8();
      v63 = (*(v62 + 680))(v96);
      v64 = (*(*v61 + 672))(v63);
      v108 = v101;
      *&v107 = v64;
      v65 = (*(*v61 + 624))();
      v66 = sub_1E3A7CD30(v44, v43, &v107, v65);

      __swift_destroy_boxed_opaque_existential_1(&v109);
      __swift_destroy_boxed_opaque_existential_1(&v107);
      v92 = 1;
      v94 = v66;
LABEL_30:
      v32 = v100;
    }

    while (v35);
  }

  while (1)
  {
    v37 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v37 >= a3)
    {
      v35 = 0;
      v110 = 0u;
      v111 = 0u;
      v109 = 0u;
      goto LABEL_17;
    }

    v35 = *(v32 + 8 * v37);
    ++v30;
    if (v35)
    {
      v30 = v37;
      goto LABEL_16;
    }
  }

  __break(1u);
}

double sub_1E3DC794C()
{
  OUTLINED_FUNCTION_8();
  if ((*(v0 + 888))())
  {
    OUTLINED_FUNCTION_30();
    (*(v2 + 1528))();
  }

  return result;
}

double sub_1E3DC79DC()
{
  OUTLINED_FUNCTION_8();
  if ((*(v0 + 888))())
  {
    OUTLINED_FUNCTION_30();
    (*(v2 + 1536))();
  }

  return result;
}

double sub_1E3DC7A6C()
{
  OUTLINED_FUNCTION_8();
  if ((*(v0 + 888))())
  {
    OUTLINED_FUNCTION_30();
    (*(v2 + 1544))();
  }

  return result;
}

uint64_t sub_1E3DC7BEC()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI31LibDownloadingEpisodesViewModel_showEntity + 24);
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI31LibDownloadingEpisodesViewModel_showEntity + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8VideosUI31LibDownloadingEpisodesViewModel_showEntity), v1);
  OUTLINED_FUNCTION_33();
  result = v3(v1, v2);
  if (v5)
  {
    return 1;
  }

  return result;
}

void *sub_1E3DC7C4C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI31LibDownloadingEpisodesViewModel_seasons);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = v1 + 32;

    v5 = v3;
    while (1)
    {
      sub_1E327F454(v4, v18);
      v6 = v19;
      v7 = v20;
      __swift_project_boxed_opaque_existential_1(v18, v19);
      OUTLINED_FUNCTION_33();
      result = v8(v6, v7);
      v10 = result ? result : v3;
      v11 = v10[2];
      v12 = v5[2];
      v13 = v12 + v11;
      if (__OFADD__(v12, v11))
      {
        break;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v13 > v5[3] >> 1)
      {
        if (v12 <= v13)
        {
          v14 = v12 + v11;
        }

        else
        {
          v14 = v12;
        }

        result = sub_1E3AF90C0(result, v14, 1, v5);
        v5 = result;
      }

      if (v10[2])
      {
        if ((v5[3] >> 1) - v5[2] < v11)
        {
          goto LABEL_25;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE58, &unk_1E42A8830);
        swift_arrayInitWithCopy();

        if (v11)
        {
          v15 = v5[2];
          v16 = __OFADD__(v15, v11);
          v17 = v15 + v11;
          if (v16)
          {
            goto LABEL_26;
          }

          v5[2] = v17;
        }
      }

      else
      {

        if (v11)
        {
          goto LABEL_24;
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v18);
      v4 += 40;
      if (!--v2)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1E3DC7DF4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3DC7E68@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3DC7DF4();
  *a1 = result;
  return result;
}

uint64_t sub_1E3DC7EC0(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

uint64_t sub_1E3DC7F30()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38C08, &qword_1E42D2828);
  sub_1E4200644();
  return swift_endAccess();
}

uint64_t sub_1E3DC7FF0(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38C08, &qword_1E42D2828);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v21 - v10;
  *(v3 + 280) = 0;
  *(v3 + 288) = 0;
  v12 = OBJC_IVAR____TtC8VideosUI31LibDownloadingEpisodesViewModel__textViewModel;
  v21[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29088, &qword_1E42B7E40);
  sub_1E4200634();
  (*(v8 + 32))(v3 + v12, v11, v6);
  v13 = MEMORY[0x1E69E7CC0];
  *(v3 + OBJC_IVAR____TtC8VideosUI31LibDownloadingEpisodesViewModel_cancellables) = MEMORY[0x1E69E7CC0];
  *(v3 + OBJC_IVAR____TtC8VideosUI31LibDownloadingEpisodesViewModel_seasons) = v13;
  sub_1E327F454(a1, v3 + OBJC_IVAR____TtC8VideosUI31LibDownloadingEpisodesViewModel_showEntity);
  v14 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  OUTLINED_FUNCTION_33();
  v16 = v15(v14);
  v18 = v17;

  v19 = sub_1E3B76D04(15, v16, v18, a2, 0, 0, 0);
  if (v19)
  {

    sub_1E3DC81C8();
    sub_1E3DC831C();
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v19;
}

uint64_t sub_1E3DC81C8()
{
  v1 = sub_1E3B7B1C8();
  v2 = OBJC_IVAR____TtC8VideosUI31LibDownloadingEpisodesViewModel_showEntity;
  v3 = *(**v1 + 896);

  v3(&v9, v0 + v2);

  if (!v10)
  {
    return sub_1E325F7A8(&v9, &unk_1ECF2A740, &qword_1E42EF010);
  }

  sub_1E37DADF4(&v9, v11);
  v4 = v12;
  v5 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = *(v5 + 120);

  v7(v0 + v2, 1, sub_1E3DC90F4, v6, v4, v5);

  return __swift_destroy_boxed_opaque_existential_1(v11);
}

double sub_1E3DC831C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DB30, &unk_1E42A89B0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v25 - v1;
  v27 = sub_1E4207094();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326E0, &unk_1E42B8F30);
  OUTLINED_FUNCTION_0_10();
  v28 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v25 - v18;
  v20 = [objc_opt_self() defaultCenter];
  sub_1E4206C14();

  sub_1E3B7B208();
  sub_1E4207074();
  v21 = [objc_opt_self() mainRunLoop];
  v29 = v21;
  v22 = sub_1E4207054();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v22);
  sub_1E3280A90(0, &qword_1EE23AD08, 0x1E695DFD0);
  sub_1E38DF10C();
  sub_1E3782CC4();
  sub_1E42007F4();
  sub_1E325F7A8(v2, &unk_1ECF3DB30, &unk_1E42A89B0);

  (*(v4 + 8))(v8, v27);
  (*(v11 + 8))(v15, v9);
  swift_allocObject();
  swift_weakInit();
  sub_1E32752B0(&unk_1EE28A2C0, &unk_1ECF326E0, &unk_1E42B8F30, MEMORY[0x1E695BE50]);
  v23 = v26;
  sub_1E4200844();

  (*(v28 + 8))(v19, v23);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32580, &qword_1E42A9B90);
  sub_1E32752B0(&qword_1EE23B5E0, &qword_1ECF32580, &qword_1E42A9B90, MEMORY[0x1E69E6348]);
  sub_1E42004D4();
  swift_endAccess();

  return result;
}

uint64_t sub_1E3DC8748()
{
  v1 = OBJC_IVAR____TtC8VideosUI31LibDownloadingEpisodesViewModel__textViewModel;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38C08, &qword_1E42D2828);
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8VideosUI31LibDownloadingEpisodesViewModel_showEntity));
}

uint64_t sub_1E3DC87E4()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v2 = sub_1E3B7736C();
  v3 = OBJC_IVAR____TtC8VideosUI31LibDownloadingEpisodesViewModel__textViewModel;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38C08, &qword_1E42D2828);
  OUTLINED_FUNCTION_10();
  (*(v4 + 8))(v2 + v3);
  __swift_destroy_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC8VideosUI31LibDownloadingEpisodesViewModel_showEntity));

  return v2;
}

uint64_t sub_1E3DC88B8()
{
  v0 = sub_1E3DC87E4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1E3DC890C()
{
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v65 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v64 = v6 - v5;
  v7 = *(v0 + OBJC_IVAR____TtC8VideosUI31LibDownloadingEpisodesViewModel_showEntity + 24);
  v8 = *(v0 + OBJC_IVAR____TtC8VideosUI31LibDownloadingEpisodesViewModel_showEntity + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8VideosUI31LibDownloadingEpisodesViewModel_showEntity), v7);
  OUTLINED_FUNCTION_33();
  v9(v7, v8);
  if (v10)
  {
    return;
  }

  v11 = *(v0 + OBJC_IVAR____TtC8VideosUI31LibDownloadingEpisodesViewModel_seasons);
  v68 = *(v11 + 16);
  if (v68)
  {
    v62 = v0;
    v63 = v2;
    v67 = v11 + 32;

    v71 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v66 = v11;
    while (v15 < *(v11 + 16))
    {
      v70 = v15;
      sub_1E327F454(v67 + 40 * v15, v75);
      v16 = v76;
      v17 = v77;
      __swift_project_boxed_opaque_existential_1(v75, v76);
      OUTLINED_FUNCTION_33();
      v19 = v18(v16, v17);
      __swift_destroy_boxed_opaque_existential_1(v75);
      v20 = MEMORY[0x1E69E7CC0];
      if (v19)
      {
        v20 = v19;
      }

      v21 = *(v20 + 16);
      if (v21)
      {
        v22 = v20;
        sub_1E3280A90(0, &qword_1EE23AFA0, off_1E8728338);
        v23 = 0;
        v24 = v22 + 32;
        v69 = v13 + v21;
        v25 = v13 ^ 0x7FFFFFFFFFFFFFFFLL;
        while (1)
        {
          v26 = (v24 + 40 * v23);
          v28 = v26[3];
          v27 = v26[4];
          v29 = __swift_project_boxed_opaque_existential_1(v26, v28);
          v74[3] = v28;
          v74[4] = *(*(v27 + 8) + 8);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v74);
          (*(*(v28 - 8) + 16))(boxed_opaque_existential_1, v29, v28);
          v73 = 0;
          memset(v72, 0, sizeof(v72));
          v31 = sub_1E3BFF560(v74, v72);
          if (v31)
          {
            v32 = v31;
            v33 = [v31 downloadState];

            v34 = 0;
            while (v34 != 24)
            {
              v35 = *(&unk_1F5D85B50 + v34 + 32);
              v34 += 8;
              if (v35 == v33)
              {
                if (__OFADD__(v14++, 1))
                {
                  goto LABEL_36;
                }

                v71 = v14;
                break;
              }
            }
          }

          if (v23 == v25)
          {
            break;
          }

          if (++v23 == v21)
          {

            v12 = v69;
            v13 = v69;
            v11 = v66;
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_36:
        __break(1u);
        break;
      }

LABEL_19:
      v15 = v70 + 1;
      if (v70 + 1 == v68)
      {

        v2 = v63;
        v1 = v62;
        v37 = v71;
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_38;
  }

  v37 = 0;
  v12 = 0;
LABEL_22:
  OUTLINED_FUNCTION_3_0(v1 + 288, v74);
  *(v1 + 288) = v12;
  v38 = [objc_opt_self() sharedInstance];
  v39 = v38;
  v40 = v37;
  if (!v37)
  {
    if (!v38)
    {
LABEL_39:
      __break(1u);
      return;
    }

    sub_1E3741090(0xD000000000000012, 0x80000001E42834F0, v38);
    v47 = v46;

    if (v47)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870, &unk_1E429CE30);
      v48 = swift_allocObject();
      v49 = MEMORY[0x1E69E6530];
      *(v48 + 16) = xmmword_1E4297BE0;
      v50 = MEMORY[0x1E69E65A8];
      *(v48 + 56) = v49;
      *(v48 + 64) = v50;
      *(v48 + 32) = v12;
      goto LABEL_29;
    }

LABEL_30:
    v57 = 0;
    goto LABEL_31;
  }

  if (!v38)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  sub_1E3741090(0xD000000000000024, 0x80000001E4283510, v38);
  v42 = v41;

  if (!v42)
  {
    goto LABEL_30;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870, &unk_1E429CE30);
  v43 = swift_allocObject();
  v44 = MEMORY[0x1E69E6530];
  *(v43 + 16) = xmmword_1E4297BE0;
  v45 = MEMORY[0x1E69E65A8];
  *(v43 + 56) = v44;
  *(v43 + 64) = v45;
  *(v43 + 32) = v40;
LABEL_29:
  v51 = sub_1E4205EE4();
  v53 = v52;

  v54 = type metadata accessor for TextViewModel();
  v76 = MEMORY[0x1E69E6158];
  v75[0] = v51;
  v75[1] = v53;
  v56 = sub_1E39BE928(v54, v55);
  v57 = sub_1E3C27638(15, v75, v56, 0, 0);
LABEL_31:
  sub_1E3DC7EC0(v57);
  v58 = sub_1E324FBDC();
  (*(v65 + 16))(v64, v58, v2);
  v59 = sub_1E41FFC94();
  v60 = sub_1E4206814();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 134217984;
    *(v61 + 4) = v40;
    _os_log_impl(&dword_1E323F000, v59, v60, "LibDownloadingEpisodesViewModel:: update with numberOfDownloading %ld", v61, 0xCu);
    MEMORY[0x1E69143B0](v61, -1, -1);
  }

  (*(v65 + 8))(v64, v2);
}

uint64_t type metadata accessor for LibDownloadingEpisodesViewModel(uint64_t a1)
{
  result = qword_1EE292870;
  if (!qword_1EE292870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3DC8F84(uint64_t a1)
{
  sub_1E3DC9044(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E3DC9044(uint64_t a1)
{
  if (!qword_1EE28A068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29088, &qword_1E42B7E40);
    v1 = sub_1E4200694();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE28A068);
    }
  }
}

double sub_1E3DC90A8()
{
  OUTLINED_FUNCTION_5_0(v0 + 16, v2);
  if (swift_weakLoadStrong())
  {
    sub_1E3DC81C8();
  }

  return result;
}

double sub_1E3DC90F4(uint64_t a1)
{
  OUTLINED_FUNCTION_5_0(v1 + 16, v10);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC8VideosUI31LibDownloadingEpisodesViewModel_seasons) = a1;
  }

  OUTLINED_FUNCTION_5_0(v1 + 16, v9);
  v4 = swift_weakLoadStrong();
  if (v4)
  {
    v5 = v4;
    OUTLINED_FUNCTION_3_0(v4 + 280, v8);
    *(v5 + 280) = 1;
  }

  OUTLINED_FUNCTION_5_0(v1 + 16, &v7);
  if (swift_weakLoadStrong())
  {
    sub_1E3DC890C();
  }

  return result;
}

uint64_t sub_1E3DC91FC()
{
  type metadata accessor for ImageLayout();
  *(v0 + 104) = sub_1E3BD61D8();
  v1 = sub_1E3C2F9A0();

  sub_1E3DC9250();

  return v1;
}

void sub_1E3DC9250()
{
  OUTLINED_FUNCTION_31_1();
  v152[0] = 11;
  sub_1E3C3DE00();
  LOBYTE(v148) = v139[0];
  sub_1E3C2FC98();
  LOBYTE(v170) = v173;
  sub_1E3C3DE00();
  LOBYTE(v164) = v167;
  v0 = sub_1E3C3DE00();
  LOBYTE(v158) = v161;
  OUTLINED_FUNCTION_3_185(v0, v1, v2, v3, v4, v5, v6, v7, v120, v129, *v139, *&v139[8], *&v139[16], *&v139[24], *&v139[32], *&v139[40], *&v139[48], *&v139[56], *&v139[64], *&v139[72], *&v139[80], *&v139[88], v140, v141, v142, v143, v144, v145, v146, v147, v148, *(&v148 + 1), v149, *(&v149 + 1), v150, v151, *v152, *&v152[8], *&v152[16], *&v152[24], *&v152[32], *&v152[40], *&v152[48], *&v152[56], *&v152[64], *&v152[72], *&v152[80], *&v152[88], v153, *(&v153 + 1), v154, *(&v154 + 1), v155, v156, 1);
  LODWORD(__dst[0]) = __src[0];
  WORD2(__dst[0]) = __src[1];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  v9 = *(v8 + 1600);
  (v9)(__dst, 26, v10 & 1, &unk_1F5D999E0);
  __dst[0] = xmmword_1E42B8830;
  __dst[1] = xmmword_1E42B8830;
  LOBYTE(__dst[2]) = 0;
  *v152 = sub_1E3952C40();
  *&v152[8] = v11;
  *&v152[16] = v12;
  *&v152[24] = v13;
  v152[32] = 0;
  type metadata accessor for UIEdgeInsets();
  v15 = v14;
  sub_1E3C3DE00();
  LOBYTE(v150) = v139[32];
  sub_1E3C2FC98();
  v170 = v173;
  v171 = v174;
  v172 = v175;
  sub_1E3C3DE00();
  v164 = v167;
  v165 = v168;
  v166 = v169;
  v16 = sub_1E3C3DE00();
  v158 = v161;
  v159 = v162;
  v160 = v163;
  OUTLINED_FUNCTION_3_185(v16, v17, v18, v19, v20, v21, v22, v23, v121, v130, *v139, *&v139[8], *&v139[16], *&v139[24], *&v139[32], *&v139[40], *&v139[48], *&v139[56], *&v139[64], *&v139[72], *&v139[80], *&v139[88], v140, v141, v142, v143, v144, v145, v146, v147, *v139, *&v139[8], *&v139[16], *&v139[24], v150, v151, *v152, *&v152[8], *&v152[16], *&v152[24], *&v152[32], *&v152[40], *&v152[48], *&v152[56], *&v152[64], *&v152[72], *&v152[80], *&v152[88], v153, *(&v153 + 1), v154, *(&v154 + 1), v155, v156, __dst[0]);
  memcpy(__dst, __src, 0xE9uLL);
  v24 = OUTLINED_FUNCTION_18();
  (v9)(__dst, 0, v24 & 1, v15);
  v25 = sub_1E39DFFC8();
  v26.n128_u64[0] = 6.0;
  if (v25)
  {
    v26.n128_f64[0] = 14.0;
  }

  *&__dst[0] = j__OUTLINED_FUNCTION_7_78(v26);
  *(&__dst[0] + 1) = v27;
  *&__dst[1] = v28;
  *(&__dst[1] + 1) = v29;
  LOBYTE(__dst[2]) = 0;
  sub_1E3C3DE00();
  *v139 = *v152;
  *&v139[16] = *&v152[16];
  v139[32] = v152[32];
  sub_1E3C2FC98();
  v173 = v148;
  v174 = v149;
  v175 = v150;
  sub_1E3C3DE00();
  v167 = v170;
  v168 = v171;
  v169 = v172;
  sub_1E3C3DE00();
  v161 = v164;
  v162 = v165;
  v163 = v166;
  sub_1E3C3DE00();
  v153 = v158;
  v154 = v159;
  LOBYTE(v155) = v160;
  sub_1E3C2FCB8(v139, &v173, &v167, &v161, __dst, &v153, v15, __src);
  memcpy(__dst, __src, 0xE9uLL);
  v30 = OUTLINED_FUNCTION_18();
  (v9)(__dst, 17, v30 & 1, v15);
  *v152 = 0x4054000000000000;
  v152[8] = 0;
  *v139 = 0x403C000000000000;
  v139[8] = 0;
  v31 = MEMORY[0x1E69E7DE0];
  sub_1E3C3DE00();
  *&v173 = v148;
  BYTE8(v173) = BYTE8(v148);
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_9_133();
  OUTLINED_FUNCTION_15_67();
  OUTLINED_FUNCTION_13_134();
  sub_1E3C2FCB8(&v173, &v167, &v161, v152, v139, &v153, v31, v32);
  memcpy(v152, __dst, 0x59uLL);
  v33 = OUTLINED_FUNCTION_18();
  (v9)(v152, 2, v33 & 1, v31);
  *&v173 = 0x4054000000000000;
  BYTE8(v173) = 0;
  v34 = sub_1E39DFFC8();
  v35 = 0x4050000000000000;
  if (v34)
  {
    v35 = 0x404A000000000000;
  }

  *v152 = v35;
  v152[8] = 0;
  sub_1E3C3DE00();
  *&v148 = *v139;
  BYTE8(v148) = v139[8];
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_9_133();
  OUTLINED_FUNCTION_15_67();
  OUTLINED_FUNCTION_13_134();
  sub_1E3C2FCB8(&v148, &v167, &v161, &v173, v152, &v153, v31, v36);
  memcpy(v152, __dst, 0x59uLL);
  v37 = OUTLINED_FUNCTION_18();
  (v9)(v152, 6, v37 & 1, v31);
  v38 = [objc_allocWithZone(MEMORY[0x1E69DB7D8]) init];
  v122 = objc_opt_self();
  v39 = [v122 blackColor];
  v40 = [v39 colorWithAlphaComponent_];

  [v38 setShadowColor_];
  [v38 setShadowOffset_];
  [v38 setShadowBlurRadius_];
  *v139 = v38;
  v41 = sub_1E3280A90(0, &unk_1EE23AD60, 0x1E69DB7D8);
  v131 = v38;
  sub_1E3C3DE00();
  *&v170 = v148;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_5_174();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_6_162();
  sub_1E3C3DE00();
  v145 = v153;
  sub_1E3C3DE00();
  v141 = v143;
  sub_1E3C2FCB8(&v170, &v164, &v158, &v145, v139, &v141, v41, v152);
  v42 = *v152;
  v43 = *&v152[16];
  v45 = *&v152[32];
  v44 = *&v152[40];
  *v139 = *v152;
  *&v139[16] = *&v152[16];
  *&v139[32] = *&v152[32];
  *&v139[40] = *&v152[40];
  v46 = OUTLINED_FUNCTION_18();
  v54 = OUTLINED_FUNCTION_12_2(v46, v47, v48, v49, v50, v51, v52, v53, v122, v131, v139[0]);
  v9(v54, 19);

  v147 = sub_1E4202A34();
  v55 = sub_1E39DFFC8();
  v56 = 0;
  if (v55)
  {
    v56 = sub_1E42027C4();
  }

  *v152 = v56;
  v57 = MEMORY[0x1E6980F50];
  sub_1E3C3DE00();
  *&v170 = *v139;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_5_174();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_6_162();
  sub_1E3C3DE00();
  v145 = v153;
  sub_1E3C2FCB8(&v170, &v164, &v158, &v147, v152, &v145, v57, &v148);
  *v152 = v148;
  *&v152[16] = v149;
  *&v152[32] = v150;
  *&v152[40] = v151;
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  v59 = *(v58 + 1600);
  (v59)(v152, 95, v60 & 1, v57);

  v139[0] = 5;
  sub_1E3C3DE00();
  LOBYTE(v167) = v170;
  sub_1E3C2FC98();
  LOBYTE(v161) = v164;
  sub_1E3C3DE00();
  LOBYTE(v153) = v158;
  sub_1E3C3DE00();
  LOBYTE(v143) = v145;
  sub_1E3C3DE00();
  HIBYTE(v146) = v141;
  sub_1E3C2FCB8(&v167, &v161, &v153, v139, &v143, &v146 + 7, &qword_1F5D54AF8, v152);
  *v139 = *v152;
  *&v139[4] = *&v152[4];
  v61 = OUTLINED_FUNCTION_18();
  v69 = OUTLINED_FUNCTION_12_2(v61, v62, v63, v64, v65, v66, v67, v68, v123, v132, v139[0]);
  v59(v69, 97);
  *v139 = [v124 whiteColor];
  v70 = *sub_1E3E5FDEC();
  *&v170 = v70;
  v71 = sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
  v72 = v70;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_5_174();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_6_162();
  sub_1E3C3DE00();
  v145 = v153;
  sub_1E3C3DE00();
  v141 = v143;
  sub_1E3C2FCB8(v139, &v164, &v158, &v145, &v170, &v141, v71, v152);
  v73 = *v152;
  v74 = *&v152[16];
  v75 = *&v152[32];
  v76 = *&v152[40];
  *v139 = *v152;
  *&v139[16] = *&v152[16];
  *&v139[32] = *&v152[32];
  *&v139[40] = *&v152[40];
  v77 = OUTLINED_FUNCTION_18();
  v85 = OUTLINED_FUNCTION_12_2(v77, v78, v79, v80, v81, v82, v83, v84, v124, v133, v139[0]);
  v59(v85, 21);

  *v139 = 0x4024000000000000;
  v139[8] = 0;
  *&v170 = 0x4030000000000000;
  BYTE8(v170) = 0;
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_8_146();
  OUTLINED_FUNCTION_11_134();
  v86 = OUTLINED_FUNCTION_10_126();
  OUTLINED_FUNCTION_2_190(v86, v87, v88, v89, v90, v91, v92, v93, v125, v134, *v139, *&v139[8], *&v139[16], *&v139[24], *&v139[32], *&v139[40], *&v139[48], *&v139[56], *&v139[64], *&v139[72], *&v139[80], *&v139[88], v140, v141, v142, v143, v144, SHIDWORD(v144), v145, v146, v147, v148, *(&v148 + 1), v149, *(&v149 + 1), v150, v151, v152[0]);
  memcpy(v139, v152, 0x59uLL);
  v94 = OUTLINED_FUNCTION_18();
  v102 = OUTLINED_FUNCTION_12_2(v94, v95, v96, v97, v98, v99, v100, v101, v126, v135, v139[0]);
  v59(v102, 2);
  *v139 = 0x4038000000000000;
  v139[8] = 0;
  *&v170 = 0x4041000000000000;
  BYTE8(v170) = 0;
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_8_146();
  OUTLINED_FUNCTION_11_134();
  v103 = OUTLINED_FUNCTION_10_126();
  OUTLINED_FUNCTION_2_190(v103, v104, v105, v106, v107, v108, v109, v110, v127, v136, *v139, *&v139[8], *&v139[16], *&v139[24], *&v139[32], *&v139[40], *&v139[48], *&v139[56], *&v139[64], *&v139[72], *&v139[80], *&v139[88], v140, v141, v142, v143, v144, SHIDWORD(v144), v145, v146, v147, v148, *(&v148 + 1), v149, *(&v149 + 1), v150, v151, v152[0]);
  memcpy(v139, v152, 0x59uLL);
  v111 = OUTLINED_FUNCTION_18();
  v119 = OUTLINED_FUNCTION_12_2(v111, v112, v113, v114, v115, v116, v117, v118, v128, v137, v139[0]);
  v59(v119, 6);

  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E3DC9BF0()
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

uint64_t sub_1E3DC9C3C(char a1)
{
  result = 1952867692;
  switch(a1)
  {
    case 1:
      result = 0x7468676972;
      break;
    case 2:
      result = 28789;
      break;
    case 3:
      result = 1853321060;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E3DC9CA8(unsigned __int8 a1, char a2)
{
  v2 = 1952867692;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1952867692;
  switch(v4)
  {
    case 1:
      v3 = 0xE500000000000000;
      v5 = 0x7468676972;
      break;
    case 2:
      v3 = 0xE200000000000000;
      v5 = 28789;
      break;
    case 3:
      v5 = 1853321060;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE500000000000000;
      v2 = 0x7468676972;
      break;
    case 2:
      v6 = 0xE200000000000000;
      v2 = 28789;
      break;
    case 3:
      v2 = 1853321060;
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

uint64_t sub_1E3DC9DC0(uint64_t a1)
{
  v1 = a1;
  sub_1E4207B44();
  sub_1E3DC9E10(v3, v1);
  return sub_1E4207BA4();
}

uint64_t sub_1E3DC9E10(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E3DC9EAC(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E3DC9E10(v4, a2);
  return sub_1E4207BA4();
}

unint64_t sub_1E3DC9EF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3DC9BF0();
  *a1 = result;
  return result;
}

uint64_t sub_1E3DC9F20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3DC9C3C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1E3DC9F70()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38C10, &qword_1E42D28D0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22[-v10];
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  *(v12 + 24) = v5;
  *(v12 + 32) = v3;
  *(v12 + 40) = v1;
  v22[16] = v7;
  v23 = v5;
  v24 = v3;
  v25 = v1;
  sub_1E37FAED4(v5, v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38C18, &qword_1E42D28D8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38C20, &qword_1E42D28E0);
  v14 = sub_1E3DCA484();
  *&v29 = v13;
  *(&v29 + 1) = v14;
  swift_getOpaqueTypeConformance2();
  sub_1E4203964();
  OUTLINED_FUNCTION_8();
  (*(v15 + 200))();
  OUTLINED_FUNCTION_36();
  (*(v16 + 304))();
  sub_1E4203DA4();
  sub_1E4200D94();
  v17 = &v11[*(v8 + 36)];
  v18 = v30;
  *v17 = v29;
  v17[1] = v18;
  v17[2] = v31;
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_1E42074B4();
  MEMORY[0x1E69109E0](0xD000000000000011, 0x80000001E4283560);
  v26 = v7;
  sub_1E4207614();
  v19 = v27;
  v20 = v28;
  v21 = sub_1E3DCA53C();
  sub_1E40A7FF0(v19, v20, 0, v8, v21);

  sub_1E325F6F0(v11, &qword_1ECF38C10, &qword_1E42D28D0);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3DCA228()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    return v1();
  }

  return result;
}

void sub_1E3DCA258()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38C20, &qword_1E42D28E0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v18 - v6);
  *v7 = sub_1E4203DA4();
  v7[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38C40, &qword_1E42D2A70);
  sub_1E3DCA668();
  OUTLINED_FUNCTION_8();
  (*(v9 + 200))();
  OUTLINED_FUNCTION_36();
  (*(v10 + 304))();
  sub_1E4203DA4();
  v11 = sub_1E4200D94();
  v12 = (v7 + *(v4 + 36));
  v13 = v18[1];
  *v12 = v18[0];
  v12[1] = v13;
  v12[2] = v18[2];
  v14 = (*(*v1 + 600))(v11);
  v15 = [objc_opt_self() blackColor];
  v16 = [v15 colorWithAlphaComponent_];

  v17 = sub_1E3DCA484();
  sub_1E3C42EB4(v14, v16, v4, v17, v3);

  sub_1E325F6F0(v7, &qword_1ECF38C20, &qword_1E42D28E0);
  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E3DCA484()
{
  result = qword_1EE289758;
  if (!qword_1EE289758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38C20, &qword_1E42D28E0);
    sub_1E32752B0(&qword_1EE288438, &qword_1ECF38C28, &qword_1E42D28E8, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289758);
  }

  return result;
}

unint64_t sub_1E3DCA53C()
{
  result = qword_1EE2897F0;
  if (!qword_1EE2897F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38C10, &qword_1E42D28D0);
    sub_1E32752B0(&qword_1EE288628, &qword_1ECF38C30, &qword_1E42D28F0, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2897F0);
  }

  return result;
}

unint64_t sub_1E3DCA5F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF38C38;
  if (!qword_1ECF38C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38C38);
  }

  return result;
}

void sub_1E3DCA668()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v39 = v4;
  v5 = 1952867692;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38C48, &unk_1E42D2A78);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v40 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - v10;
  v46 = sub_1E42036E4();
  v12 = (*(*v1 + 792))();
  (*(*v1 + 552))(v44);
  sub_1E3A6929C(v12, 0, 0, 1, v44, MEMORY[0x1E69815C0], MEMORY[0x1E6981580]);

  v13 = *(v7 + 44);
  v38 = v11;
  v14 = &v11[v13];
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF291E0, &qword_1E42AE9A0) + 28);
  v16 = *MEMORY[0x1E697DBA8];
  sub_1E4200B44();
  OUTLINED_FUNCTION_2();
  (*(v17 + 104))(v14 + v15, v16);
  *v14 = swift_getKeyPath();
  if ([objc_opt_self() isTV])
  {
    v46 = 0x2E6E6F7276656863;
    v47 = 0xE800000000000000;
    v18 = 0xE400000000000000;
    switch(v3)
    {
      case 1:
        goto LABEL_4;
      case 2:
        v18 = 0xE200000000000000;
        v5 = 28789;
        break;
      case 3:
        v5 = 1853321060;
        break;
      default:
        break;
    }
  }

  else
  {
    v46 = 0;
    v47 = 0xE000000000000000;
    sub_1E42074B4();

    v46 = 0xD000000000000010;
    v47 = 0x80000001E42835B0;
    v18 = 0xE400000000000000;
    switch(v3)
    {
      case 1:
LABEL_4:
        OUTLINED_FUNCTION_14_129();
        break;
      case 2:
        v18 = 0xE200000000000000;
        v5 = 28789;
        break;
      case 3:
        v5 = 1853321060;
        break;
      default:
        break;
    }
  }

  MEMORY[0x1E69109E0](v5, v18);

  v37 = sub_1E42037C4();
  OUTLINED_FUNCTION_8();
  if ((*(v19 + 2112))())
  {
    OUTLINED_FUNCTION_8();
    v21 = (*(v20 + 2160))();
    if (v21 == 11 || (sub_1E3E3B50C(v21), (v22 & 1) != 0))
    {
      sub_1E4202964();
    }

    v36 = sub_1E4202A04();
  }

  else
  {
    v36 = 0;
  }

  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_8();
  if ((*(v24 + 672))())
  {
    v25 = sub_1E4203644();
  }

  else
  {
    v25 = 0;
  }

  v26 = swift_getKeyPath();
  OUTLINED_FUNCTION_8();
  (*(v27 + 200))();
  OUTLINED_FUNCTION_36();
  (*(v28 + 304))();
  sub_1E4203DA4();
  sub_1E4200D94();
  v29 = v38;
  v30 = v40;
  sub_1E32D4F70(v38, v40);
  v31 = v39;
  sub_1E32D4F70(v30, v39);
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF38C50, &qword_1E42D2AB8) + 48);
  v34 = v36;
  v33 = v37;
  v45[0] = v37;
  v45[1] = KeyPath;
  v45[2] = v36;
  v45[3] = v26;
  v45[4] = v25;
  *&v45[5] = v41;
  *&v45[7] = v42;
  *&v45[9] = v43;
  memcpy((v31 + v32), v45, 0x58uLL);
  sub_1E3DCACD0(v45, &v46);
  sub_1E325F6F0(v29, &qword_1ECF38C48, &unk_1E42D2A78);
  v46 = v33;
  v47 = KeyPath;
  v48 = v34;
  v49 = v26;
  v50 = v25;
  v51 = v41;
  v52 = v42;
  v53 = v43;
  sub_1E3DCAD40(&v46);
  sub_1E325F6F0(v30, &qword_1ECF38C48, &unk_1E42D2A78);
  OUTLINED_FUNCTION_25_2();
}

_BYTE *storeEnumTagSinglePayload for ChevronIndicator.Direction(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E3DCACD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36A00, &qword_1E42D2AC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3DCAD40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36A00, &qword_1E42D2AC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E3DCADD4()
{
  v0[6].i64[1] = 0;
  v0[7] = vdupq_n_s64(0x4041000000000000uLL);
  v1 = sub_1E3C2F9A0();

  sub_1E374E9C4();
  OUTLINED_FUNCTION_30();
  (*(v2 + 208))(0x403E000000000000, 0);

  v3 = *(v1 + 104);

  v4 = *sub_1E418A4F4();
  (*(*v3 + 440))(v4, 0);

  v5 = *(v1 + 104);
  v6 = objc_opt_self();

  v7 = [v6 isPad];
  v8.n128_u64[0] = 7.0;
  if (v7)
  {
    v8.n128_f64[0] = 15.0;
  }

  v13[0] = j__OUTLINED_FUNCTION_7_78(v8);
  v13[1] = v9;
  v13[2] = v10;
  v13[3] = v11;
  v14 = 0;
  (*(*v5 + 560))(v13);

  return v1;
}

id sub_1E3DCAF6C()
{
  v1 = v0;
  OUTLINED_FUNCTION_0_8();
  v2 = OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_layout;
  v3 = type metadata accessor for SideBarCollectionViewListCellLayout();
  OUTLINED_FUNCTION_19_108(v3);
  *(v0 + v2) = sub_1E3DCADD4();
  v4 = OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_imageLoader;
  v5 = sub_1E3CE4D98();
  v6 = *v5;
  *(v1 + v4) = *v5;
  OUTLINED_FUNCTION_3_186();
  type metadata accessor for SideBarCollectionViewListCell();
  v7 = v6;
  v8 = OUTLINED_FUNCTION_2_0();
  v11 = objc_msgSendSuper2(v9, v10, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D2C0, &unk_1E429D880);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1E4297BE0;
  v13 = sub_1E42001D4();
  v14 = MEMORY[0x1E69DC2B0];
  *(v12 + 32) = v13;
  *(v12 + 40) = v14;
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A4F0, &unk_1E429D890);
  sub_1E4206EC4();
  swift_unknownObjectRelease();

  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1E4297BE0;
  v17 = sub_1E41FFDE4();
  v18 = MEMORY[0x1E69DC0A0];
  *(v16 + 32) = v17;
  *(v16 + 40) = v18;
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1E4206EC4();
  swift_unknownObjectRelease();

  return v15;
}

void sub_1E3DCB1CC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

void sub_1E3DCB244()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_layout;
  v3 = type metadata accessor for SideBarCollectionViewListCellLayout();
  OUTLINED_FUNCTION_19_108(v3);
  *(v0 + v2) = sub_1E3DCADD4();
  v4 = OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_imageLoader;
  *(v1 + v4) = *sub_1E3CE4D98();
  OUTLINED_FUNCTION_3_186();
  sub_1E42076B4();
  __break(1u);
}

void sub_1E3DCB304(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38C60, &qword_1E42D2B28);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v34 = &v31 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF38C68, &unk_1E42D2B30);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v31 - v7;
  sub_1E41FFD94();
  OUTLINED_FUNCTION_0_10();
  v32 = v10;
  v33 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = sub_1E41FFD44();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  v21 = *(a1 + 32);
  v1[OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_isHeader] = v21;
  v22 = a1[3];
  v23 = &v1[OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_title];
  *v23 = a1[2];
  *(v23 + 1) = v22;

  sub_1E373AFD8((a1 + 5), &v35);
  v24 = OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_sidebarItem;
  swift_beginAccess();
  sub_1E3DCB6DC(&v35, v2 + v24);
  swift_endAccess();
  sub_1E3DCBB3C();
  sub_1E3DCB87C();
  if (v21 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38C78, &qword_1E42D2B40);
    sub_1E41FFDA4();
    *(swift_allocObject() + 16) = xmmword_1E4297BE0;
    (*(v16 + 104))(v20, *MEMORY[0x1E69DBF28], v14);
    v25 = sub_1E41FFD74();
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v25);
    v26 = sub_1E41FFD54();
    __swift_storeEnumTagSinglePayload(v34, 1, 1, v26);
    sub_1E41FFD84();
    OUTLINED_FUNCTION_25();
    sub_1E41FFD64();
    (*(v32 + 8))(v13, v33);
    (*(v16 + 8))(v20, v14);
  }

  sub_1E4206D54();
  v27 = sub_1E4205F14();
  v29 = *a1;
  v28 = a1[1];
  v35 = v27;
  v36 = v30;

  MEMORY[0x1E69109E0](v29, v28);

  sub_1E3839D34(v35, v36, v2);
}

uint64_t sub_1E3DCB6DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EC80, &qword_1E42AD1C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3DCB74C()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for SideBarCollectionViewListCell();
  objc_msgSendSuper2(&v7, sel_prepareForReuse);
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  v1 = OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_sidebarItem;
  swift_beginAccess();
  sub_1E3DCB6DC(v5, &v0[v1]);
  swift_endAccess();
  v0[OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_isHeader] = 0;
  v2 = &v0[OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_title];
  *v2 = 0;
  *(v2 + 1) = 0;

  v3 = *&v0[OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_image];
  *&v0[OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_image] = 0;

  v0[OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_isBoldImage] = 0;
  v0[OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_imageType] = 5;
  *&v0[OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_preferredLayout] = 0;

  v0[OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_isLoadingBoldImage] = 0;
  v0[OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_isLoadingNormalImage] = 0;
  return sub_1E3DCBFF8();
}

uint64_t sub_1E3DCB87C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_sidebarItem;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  sub_1E373AFD8(v1 + v2, &v13);
  if (!v14)
  {
    return sub_1E3DCC8B0(&v13);
  }

  sub_1E3251BE8(&v13, v15);
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v4 = v16;
  v5 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  v6 = (*(v5 + 120))(v4, v5);
  if (v6)
  {

    if (IsBoldTextEnabled)
    {
      if (*(v1 + OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_isLoadingBoldImage) != 1)
      {
        IsBoldTextEnabled = 1;
        *(v1 + OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_isLoadingBoldImage) = 1;
LABEL_14:
        v8 = v6 != 0;
        v9 = *(v1 + OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_imageLoader);
        OUTLINED_FUNCTION_4_0();
        v10 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v11 = swift_allocObject();
        *(v11 + 16) = v10;
        *(v11 + 24) = v8;
        v12 = *((*MEMORY[0x1E69E7D40] & *v9) + 0xE0);

        v12(v15, IsBoldTextEnabled, 0, 1, sub_1E3DCC918, v11);

        return __swift_destroy_boxed_opaque_existential_1(v15);
      }

      return __swift_destroy_boxed_opaque_existential_1(v15);
    }
  }

  else if (IsBoldTextEnabled)
  {
    if (*(v1 + OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_image))
    {
      return __swift_destroy_boxed_opaque_existential_1(v15);
    }

    goto LABEL_12;
  }

  if (*(v1 + OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_image) && *(v1 + OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_isBoldImage) != 1)
  {
    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

LABEL_12:
  if (*(v1 + OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_isLoadingNormalImage) != 1)
  {
    *(v1 + OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_isLoadingNormalImage) = 1;
    goto LABEL_14;
  }

  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t sub_1E3DCBA8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  a3();
  sub_1E4206254();
  sub_1E4206254();
  if (v9 == v7 && v10 == v8)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1E42079A4();
  }

  return v5 & 1;
}

uint64_t sub_1E3DCBB3C()
{
  v1 = v0;
  v2 = sub_1E41FFF54();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  MEMORY[0x1E69116C0]();
  v9 = *(v0 + OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_title + 8);

  sub_1E41FFF34();
  if (*(v0 + OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_isHeader))
  {
    OUTLINED_FUNCTION_11_135();
    OUTLINED_FUNCTION_9_134();
  }

  else
  {
    if (!*(v0 + OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_image))
    {
      v10 = [objc_opt_self() clearColor];
      v11 = [objc_opt_self() imageWithColor_];

      sub_1E41FFF44();
    }

    v9 = OUTLINED_FUNCTION_11_135();
  }

  sub_1E41FFEE4();
  v12 = OUTLINED_FUNCTION_15_119();
  v9(v12);
  v13 = OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_image;
  if (*(v1 + OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_image))
  {
    sub_1E3DCC310();
    v14 = OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_preferredLayout;
    v15 = *(v1 + OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_preferredLayout);
    v43 = OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_imageType;
    v16 = *(v1 + OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_imageType);

    sub_1E3DCC1B8(v16, v15);
    v18 = v17;

    if ((v18 & 1) == 0)
    {
      VUIRoundValue();
      VUIRoundValue();
      v19 = sub_1E41FFEF4();
      sub_1E41FFEC4();
      v20 = OUTLINED_FUNCTION_15_119();
      v19(v20);
    }

    v21 = *(v1 + v14);
    if (v21)
    {
      v22 = *(*v21 + 744);
      v23 = swift_retain_n();
      v24 = v22(v23);
      if (v24)
      {

        (*(*v21 + 552))(v45);

        if (v46)
        {
          sub_1E374E9C4();
          OUTLINED_FUNCTION_30();
          (*(v25 + 552))(v47);
          v26 = *v47;
          v27 = *&v47[1];
          v28 = *&v47[2];
          v29 = *&v47[3];

          if ((v48 & 1) == 0)
          {
            sub_1E3952BE8(v26, v27, v28, v29);
          }
        }

        VUIFloorValue();
        v30 = OUTLINED_FUNCTION_11_135();
        sub_1E41FFED4();
        v31 = OUTLINED_FUNCTION_15_119();
        v30(v31);
      }

      else
      {
      }
    }

    v32 = *(v1 + v43);
    if (v32 != 5 && (sub_1E3CE4DD8(v32) & 1) != 0)
    {
      v33 = *(v1 + v14);
      if (v33)
      {
        v34 = *(*v33 + 1944);

        v36 = v34(v35);

        if (v36)
        {
          v37 = v36;
          v38 = sub_1E41FFEF4();
          sub_1E41FFEB4();
          v39 = OUTLINED_FUNCTION_15_119();
          v38(v39);
        }
      }
    }

    v40 = *(v1 + v13);
    sub_1E41FFF44();
  }

  v44[3] = v2;
  v44[4] = MEMORY[0x1E69DC110];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v44);
  (*(v4 + 16))(boxed_opaque_existential_1, v8, v2);
  MEMORY[0x1E6911580](v44);
  return (*(v4 + 8))(v8, v2);
}

uint64_t sub_1E3DCBFF8()
{
  v1 = sub_1E41FFF54();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  MEMORY[0x1E69116C0]();
  sub_1E41FFF34();
  sub_1E41FFF44();
  sub_1E41FFEF4();
  OUTLINED_FUNCTION_9_134();
  sub_1E41FFEE4();
  v8 = OUTLINED_FUNCTION_17_113();
  v0(v8);
  sub_1E41FFEF4();
  OUTLINED_FUNCTION_9_134();
  sub_1E41FFEC4();
  v9 = OUTLINED_FUNCTION_17_113();
  v0(v9);
  v10 = sub_1E41FFEF4();
  sub_1E41FFED4();
  v11 = OUTLINED_FUNCTION_17_113();
  v10(v11);
  v12 = sub_1E41FFEF4();
  sub_1E41FFEB4();
  v13 = OUTLINED_FUNCTION_17_113();
  v12(v13);
  v16[3] = v1;
  v16[4] = MEMORY[0x1E69DC110];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(v3 + 16))(boxed_opaque_existential_1, v7, v1);
  MEMORY[0x1E6911580](v16);
  return (*(v3 + 8))(v7, v1);
}

uint64_t sub_1E3DCC1B8(uint64_t a1, uint64_t a2)
{
  if (a1 == 5 || (sub_1E3CE4DD8(a1) & 1) != 0)
  {
    v5 = 0.0;
  }

  else
  {
    v7 = sub_1E3DCBA8C(a1, 4, sub_1E38D1D28, &type metadata for SideBarImageLoader.ImageType);
    v8 = *(v2 + OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_layout);
    if (v7)
    {
      OUTLINED_FUNCTION_25();
      v9 = swift_beginAccess();
      v5 = *(v8 + 112);
      if (!a2)
      {
        return *&v5;
      }
    }

    else
    {
      sub_1E374E9C4();
      OUTLINED_FUNCTION_30();
      v11 = (*(v10 + 2288))();

      v5 = v11;
      if (!a2)
      {
        return *&v5;
      }
    }

    v12 = (*(*a2 + 2288))(v9);
    if (v12 != 0.0 || v13 != 0.0)
    {
      v5 = v12;
    }
  }

  return *&v5;
}

double sub_1E3DCC310()
{
  v3 = [v0 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  sub_1E4205F14();
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_18();
  v7 = v7 && v1 == v6;
  if (v7)
  {
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_0_68(v5);
  OUTLINED_FUNCTION_7_8();

  if (v2)
  {
LABEL_6:

    return 1.0;
  }

  sub_1E4205F14();
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_18();
  if (v7 && v1 == v9)
  {

    return 0.7;
  }

  OUTLINED_FUNCTION_0_68(v8);
  OUTLINED_FUNCTION_7_8();

  if (v2)
  {

    return 0.7;
  }

  sub_1E4205F14();
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_18();
  if (v7 && v1 == v13)
  {

    return 0.8;
  }

  OUTLINED_FUNCTION_0_68(v12);
  OUTLINED_FUNCTION_7_8();

  if (v2)
  {

    return 0.8;
  }

  sub_1E4205F14();
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_18();
  if (v7 && v1 == v16)
  {

    return 0.9;
  }

  OUTLINED_FUNCTION_0_68(v15);
  OUTLINED_FUNCTION_7_8();

  if (v2)
  {

    return 0.9;
  }

  sub_1E4205F14();
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_18();
  if (v7 && v1 == v19)
  {
LABEL_42:

    return 1.0;
  }

  OUTLINED_FUNCTION_0_68(v18);
  OUTLINED_FUNCTION_7_8();

  if (v2)
  {
    goto LABEL_6;
  }

  sub_1E4205F14();
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_18();
  if (v7 && v1 == v22)
  {

    return 1.1;
  }

  OUTLINED_FUNCTION_0_68(v21);
  OUTLINED_FUNCTION_7_8();

  if (v2)
  {

    return 1.1;
  }

  sub_1E4205F14();
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_18();
  if (v7 && v1 == v25)
  {

    return 1.2;
  }

  OUTLINED_FUNCTION_0_68(v24);
  OUTLINED_FUNCTION_7_8();

  if (v2)
  {

    return 1.2;
  }

  sub_1E4205F14();
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_18();
  if (v7 && v1 == v28)
  {

    return 1.3;
  }

  OUTLINED_FUNCTION_0_68(v27);
  OUTLINED_FUNCTION_7_8();

  if (v2)
  {

    return 1.3;
  }

  sub_1E4205F14();
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_18();
  if (v7 && v1 == v31)
  {

    return 1.25;
  }

  OUTLINED_FUNCTION_0_68(v30);
  OUTLINED_FUNCTION_7_8();

  if (v2)
  {

    return 1.25;
  }

  sub_1E4205F14();
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_18();
  if (v7 && v1 == v34)
  {

    return 1.35;
  }

  OUTLINED_FUNCTION_0_68(v33);
  OUTLINED_FUNCTION_7_8();

  if (v2)
  {

    return 1.35;
  }

  sub_1E4205F14();
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_18();
  if (v7 && v1 == v37)
  {

    return 1.45;
  }

  OUTLINED_FUNCTION_0_68(v36);
  OUTLINED_FUNCTION_7_8();

  if (v2)
  {

    return 1.45;
  }

  sub_1E4205F14();
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_18();
  if (v7 && v1 == v40)
  {

    return 1.55;
  }

  OUTLINED_FUNCTION_0_68(v39);
  OUTLINED_FUNCTION_7_8();

  if (v2)
  {

    return 1.55;
  }

  sub_1E4205F14();
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_18();
  if (v7 && v1 == v43)
  {

    return 1.65;
  }

  else
  {
    v45 = OUTLINED_FUNCTION_0_68(v42);

    result = 1.65;
    if ((v45 & 1) == 0)
    {
      return 1.0;
    }
  }

  return result;
}

id sub_1E3DCC7FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SideBarCollectionViewListCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3DCC8B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EC80, &qword_1E42AD1C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_1E3DCC918(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 24);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_sidebarItem;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    sub_1E373AFD8(&v13[v14], &v33);
    if (!v34)
    {

      return sub_1E3DCC8B0(&v33);
    }

    sub_1E3251BE8(&v33, v35);
    v16 = v36;
    v15 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    if ((*(*(v15 + 8) + 16))(v16) == a4 && v17 == a5)
    {
    }

    else
    {
      v19 = sub_1E42079A4();

      if ((v19 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    v20 = sub_1E3DCBA8C(a3, 1, sub_1E3CE8A10, &type metadata for SideBarImageLoader.ModelType);
    if (v20)
    {
      v13[OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_isLoadingBoldImage] = 0;
      if (!UIAccessibilityIsBoldTextEnabled())
      {
        goto LABEL_27;
      }
    }

    else
    {
      v13[OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_isLoadingNormalImage] = 0;
      if ((UIAccessibilityIsBoldTextEnabled() & v11) == 1)
      {
LABEL_27:

        return __swift_destroy_boxed_opaque_existential_1(v35);
      }
    }

    v21 = *&v13[OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_image];
    *&v13[OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_image] = a2;
    v22 = a2;

    v13[OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_isBoldImage] = v20 & 1;
    v13[OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_imageType] = a1;
    v23 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    v24 = OUTLINED_FUNCTION_38();
    v26 = v25(v24, v23);
    if (v26)
    {
      (*(*v26 + 392))();
      OUTLINED_FUNCTION_38();

      type metadata accessor for ImageLayout();
      v26 = swift_dynamicCastClass();
      if (!v26)
      {

        v26 = 0;
      }
    }

    v27 = OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_preferredLayout;
    *&v13[OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_preferredLayout] = v26;

    if (v20)
    {
      v28 = v37;
      __swift_project_boxed_opaque_existential_1(v35, v36);
      v29 = OUTLINED_FUNCTION_38();
      v31 = v30(v29, v28);
      if (v31)
      {
        (*(*v31 + 392))();
        OUTLINED_FUNCTION_38();

        type metadata accessor for ImageLayout();
        v32 = swift_dynamicCastClass();
        if (v32)
        {
          *&v13[v27] = v32;
        }
      }
    }

    sub_1E3DCBB3C();
    goto LABEL_27;
  }

  return result;
}

id sub_1E3DCCC98(char a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, sel_setIsAccessibilityElement_, a1 & 1);
}

void *sub_1E3DCCCE0(__int16 *a1, void *a2, void *a3)
{
  v6 = sub_1E41FFCB4();
  v84 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v9 = *(*a1 + 488);
    v83 = a2;
    v10 = a2;
    v11 = v9();
    if (v11)
    {
      v12 = v11;
      v13 = (*(*a1 + 392))();
      if (v13)
      {
        v14 = v13;
        type metadata accessor for MonogramLockupCellLayout();
        v15 = swift_dynamicCastClass();
        if (v15)
        {
          v16 = v15;
          v17 = OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_lockupLayout;
          swift_beginAccess();
          *&v10[v17] = v16;
          v82 = v14;

          v19 = (*a3 == 2) | *a3 ^ 1;
          v20 = *(*(*v16 + 1800))(v18);
          v21 = (*(v20 + 1744))();

          v22 = [v10 vuiBounds];
          v24 = v23;
          (*(*a1 + 672))(v22);
          *&v98[7] = &type metadata for ViewModelKeys;
          *&v98[15] = &off_1F5D7BCA8;
          LOBYTE(__src[0]) = 11;
          OUTLINED_FUNCTION_28_68();

          if (v95[3])
          {
            v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
            if ((OUTLINED_FUNCTION_27_72(v25, v26, v27, v25) & 1) == 0)
            {
              goto LABEL_12;
            }

            __swift_destroy_boxed_opaque_existential_1(__src);
            *&v98[7] = &unk_1F5D5E608;
            *&v98[15] = &off_1F5D5CC28;
            OUTLINED_FUNCTION_28_68();

            if (v95[3])
            {
              if (OUTLINED_FUNCTION_27_72(v28, v29, v30, MEMORY[0x1E69E6370]))
              {
                v31 = v90;
                __swift_destroy_boxed_opaque_existential_1(__src);
                if (v31 == 1)
                {
LABEL_14:
                  v33 = *(*v21 + 312);

                  v33(0, 0);

                  v35 = (*(*v21 + 2288))(v34);
                  v37 = v36;
                  sub_1E3DF9E68(&v90);
                  v89[24] = 0;
                  *__src = v35;
                  __src[1] = v37;
                  v97 = 0;
                  *v98 = v91;
                  *&v98[16] = v92;
                  *v99 = v93[0];
                  *&v99[15] = *(v93 + 15);
                  v100 = v19 & 1;
                  v101 = v94;
                  sub_1E38B04A4(__src, v95);
                  v38 = type metadata accessor for UIFactory();
                  v40 = sub_1E373E010(41, v12, v39);
                  v41 = OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_monogramView[0];
                  OUTLINED_FUNCTION_5_0(&v10[OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_monogramView[0]], v89);
                  v81 = v41;
                  v42 = *(v41 + v10);
                  v88[3] = &type metadata for MonogramContext;
                  v88[4] = &off_1F5D61598;
                  v88[0] = swift_allocObject();
                  memcpy((v88[0] + 16), v95, 0x52uLL);
                  v43 = sub_1E3280A90(0, &unk_1EE23B2D0, off_1E87284C0);
                  v44 = v42;
                  v84 = v38;
                  sub_1E393D92C(v40, v42, v88, 0, v43);

                  sub_1E325F748(v88, &qword_1ECF296C0, &unk_1E429BBE0);
                  v45 = OUTLINED_FUNCTION_15_18();
                  sub_1E3B1C47C(v45, OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_monogramView);
                  v47 = sub_1E373E010(23, v12, v46);
                  if (v47)
                  {
                    if (*v47 == _TtC8VideosUI13TextViewModel)
                    {
                      if (!sub_1E3C27528(v47, v48) || (OUTLINED_FUNCTION_30(), v51 = (*(v50 + 936))(), , v51 == 2) || (v51 & 1) == 0)
                      {
                        v52 = OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_titleLabel;
                        OUTLINED_FUNCTION_5_0(OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_titleLabel + v10, &v85);
                        OUTLINED_FUNCTION_8_147();
                        sub_1E3280A90(0, &qword_1EE23AD40, off_1E87283A8);

                        v53 = v52;
                        OUTLINED_FUNCTION_3_187();

                        sub_1E325F748(v88, &qword_1ECF296C0, &unk_1E429BBE0);
                        v54 = OUTLINED_FUNCTION_15_18();
                        sub_1E3B1C47C(v54, &OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_titleLabel);
                      }
                    }
                  }

                  v55 = sub_1E373E010(15, v12, v49);
                  if (v55)
                  {
                    if (*v55 == _TtC8VideosUI13TextViewModel)
                    {
                      if (!sub_1E3C27528(v55, v56) || (OUTLINED_FUNCTION_30(), v59 = (*(v58 + 936))(), , v59 == 2) || (v59 & 1) == 0)
                      {
                        v60 = OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_subtitleLabel;
                        OUTLINED_FUNCTION_5_0(&v10[OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_subtitleLabel], &v86);
                        OUTLINED_FUNCTION_8_147();
                        sub_1E3280A90(0, &qword_1EE23AD40, off_1E87283A8);

                        v61 = v60;
                        OUTLINED_FUNCTION_3_187();

                        sub_1E325F748(v88, &qword_1ECF296C0, &unk_1E429BBE0);
                        v62 = OUTLINED_FUNCTION_15_18();
                        sub_1E3B1C47C(v62, &OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_subtitleLabel);
                      }
                    }
                  }

                  v63 = sub_1E373E010(113, v12, v57);

                  if (v63)
                  {
                    v64 = OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_separatorView;
                    OUTLINED_FUNCTION_5_0(&v10[OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_separatorView], &v87);
                    OUTLINED_FUNCTION_8_147();
                    sub_1E3280A90(0, &unk_1ECF38CB0, off_1E87285A8);

                    v65 = v64;
                    OUTLINED_FUNCTION_3_187();

                    sub_1E325F748(v88, &qword_1ECF296C0, &unk_1E429BBE0);
                    v66 = OUTLINED_FUNCTION_15_18();
                    sub_1E3B1C47C(v66, &OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_separatorView);
                  }

                  v67 = *(v81 + v10);
                  if (v67)
                  {
                    v68 = v10;
                    v69 = [v67 accessibilityLabel];
                    if (v69)
                    {
LABEL_35:
                      [v10 setAccessibilityLabel_];

                      [v10 vui_setNeedsLayout];

                      return v83;
                    }
                  }

                  else
                  {
                    v70 = v10;
                  }

                  v69 = 0;
                  goto LABEL_35;
                }

LABEL_13:
                v32 = *(*v21 + 208);

                v32(v24, 0);

                goto LABEL_14;
              }

LABEL_12:
              __swift_destroy_boxed_opaque_existential_1(__src);
              goto LABEL_13;
            }
          }

          __swift_destroy_boxed_opaque_existential_1(__src);
          sub_1E325F748(v95, &unk_1ECF296E0, &unk_1E4298030);
          goto LABEL_13;
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  v72 = sub_1E324FBDC();
  (*(v84 + 16))(v8, v72, v6);

  v73 = sub_1E41FFC94();
  v74 = sub_1E4206814();

  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    __src[0] = v76;
    *v75 = 136315138;
    sub_1E384EE08(a1[49]);
    v79 = sub_1E3270FC8(v77, v78, __src);

    *(v75 + 4) = v79;
    _os_log_impl(&dword_1E323F000, v73, v74, "MonogramLockupCell: Failed to get correct cell for [%s]", v75, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v76);
    MEMORY[0x1E69143B0](v76, -1, -1);
    MEMORY[0x1E69143B0](v75, -1, -1);
  }

  (*(v84 + 8))(v8, v6);
  result = sub_1E42076B4();
  __break(1u);
  return result;
}

double sub_1E3DCD750(char a1, CGFloat a2, double a3)
{
  v4 = v3;
  LOBYTE(v5) = a1;
  v8 = OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_lockupLayout;
  OUTLINED_FUNCTION_5_0(v4 + OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_lockupLayout, &v314);
  v9 = *(v4 + v8);
  v272 = a2;
  if (v9)
  {
    v10 = *(*v9 + 1728);

    v11 = v10();
    v12 = MEMORY[0x1E69DDCE0];
    v13 = &unk_1ECF38000;
    LOBYTE(v281) = v5;
    if ((v11 & 1) == 0)
    {
      v50 = OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_monogramView[0];
      OUTLINED_FUNCTION_5_0(OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_monogramView[0] + v4, v336);
      v298 = 0.0;
      x = 0.0;
      y = 0.0;
      v53 = 0.0;
      if (*(v50 + v4))
      {
        [v4 vuiBounds];
        OUTLINED_FUNCTION_16_73();
        OUTLINED_FUNCTION_8();
        (*(v54 + 1800))();
        OUTLINED_FUNCTION_30();
        (*(v55 + 176))(&v317);

        v349.origin.x = OUTLINED_FUNCTION_1_222(v56, v57, v58, v59, v60, v61, v62, v63);
        x = v349.origin.x;
        y = v349.origin.y;
        v53 = a2;
        v349.size.width = a2;
        v349.size.height = a2;
        CGRectGetHeight(v349);
      }

      v294 = x;
      v64 = OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_titleLabel;
      OUTLINED_FUNCTION_5_0(OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_titleLabel + v4, v335);
      v65 = *(v64 + v4);
      v66 = 0.0;
      v67 = 0.0;
      v306 = y;
      v310 = 0.0;
      v302 = v53;
      if (v65)
      {
        v68 = v65;
        OUTLINED_FUNCTION_29_79();
        OUTLINED_FUNCTION_16_73();
        v69 = (*v269 + 1752);
        v70 = *v69;
        (*v69)();
        OUTLINED_FUNCTION_30();
        (*(v71 + 176))(&v322);

        v80 = OUTLINED_FUNCTION_1_222(v72, v73, v74, v75, v76, v77, v78, v79);
        v67 = v81;
        v83 = [&unk_1ECF38000 sizeThatFits_];
        v85 = v84;
        (v70)(v83);
        OUTLINED_FUNCTION_30();
        (*(v86 + 152))(&v338);

        if (v339)
        {
          v87 = 0.0;
        }

        else
        {
          v87 = v338;
        }

        v4 = &unk_1ECF38000;
        v88 = *(&unk_1ECF38000 + v50);
        v89 = OUTLINED_FUNCTION_11_5();
        sub_1E3C8B6B4(v89, v87);
        v91 = v90;

        v66 = y + v53 + v91;
        v298 = v80;
        v350.origin.x = v80;
        v350.origin.y = v66;
        v350.size.width = v67;
        v310 = v85;
        v350.size.height = v85;
        CGRectGetHeight(v350);
      }

      v92 = OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_subtitleLabel;
      OUTLINED_FUNCTION_5_0(v4 + OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_subtitleLabel, &v333);
      v93 = *(v4 + v92);
      if (v93)
      {
        v94 = v93;
        OUTLINED_FUNCTION_29_79();
        v287 = v95;
        OUTLINED_FUNCTION_16_73();
        v96 = *(*v269 + 1776);
        v96();
        OUTLINED_FUNCTION_30();
        (*(v97 + 176))(&v340);
        v98 = v340;
        v99 = v341;
        v101 = v342;
        v100 = v343;

        if (v344)
        {
          v98 = *v12;
          v99 = v12[1];
          v101 = v12[2];
          v100 = v12[3];
        }

        sub_1E3CEE8A0(v98, v99, v101, v100, v287);
        (v96)([&unk_1ECF38000 sizeThatFits_]);
        OUTLINED_FUNCTION_30();
        (*(v104 + 152))(&v345);

        v105 = v345;
        if (v348)
        {
          v105 = 0.0;
        }

        v4 = &unk_1ECF38000;
        [&unk_1ECF38000 topMarginToLabel:*(&unk_1ECF38000 + v64) withBaselineMargin:v105];
        v351.origin.x = OUTLINED_FUNCTION_20_94();
        CGRectGetHeight(v351);

        v53 = v302;
        y = v306;
      }

      if ((v281 & 1) == 0)
      {
        v106 = *(v50 + v4);
        if (v106)
        {
          [v106 setFrame_];
        }

        v107 = *(v64 + v4);
        if (v107)
        {
          [v107 setFrame_];
        }

        v108 = *(v4 + v92);
        if (v108)
        {
          v109 = v108;
          v110 = OUTLINED_FUNCTION_20_94();
          [v111 v112];
        }
      }

      goto LABEL_102;
    }

    v14 = OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_lockupLayout;
    OUTLINED_FUNCTION_5_0(v4 + OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_lockupLayout, &v322);
    v15 = *(v4 + v14);
    if (v15)
    {
      v245 = v14;

      v16 = [v4 vuiTraitCollection];
      HIDWORD(v260) = [v16 isAXLargeEnabled];

      v17 = OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_monogramView[0];
      v18 = OUTLINED_FUNCTION_5_0(OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_monogramView[0] + v4, &v317);
      v257 = v17;
      v266 = v15;
      if (*(v17 + v4))
      {
        v19 = (*v15 + 1800);
        v20 = *v19;
        (*v19)(v18);
        OUTLINED_FUNCTION_30();
        v22 = (*(v21 + 1744))();

        v24 = COERCE_DOUBLE((*(*v22 + 1696))(v23));
        v26 = v25;
        v28 = v27;

        [v4 vuiBounds];
        OUTLINED_FUNCTION_16_73();
        v20();
        OUTLINED_FUNCTION_30();
        (*(v29 + 176))(&v338);

        v39 = OUTLINED_FUNCTION_1_222(v30, v31, v32, v33, v34, v35, v36, v37);
        v40 = v38;
        if (v28)
        {
          v41 = 0.0;
        }

        else
        {
          v41 = v24;
        }

        if (v28)
        {
          v42 = 0.0;
        }

        else
        {
          v42 = v26;
        }

        v43 = v39;
        v44 = v41;
        v45 = v42;
        Height = CGRectGetHeight(*(&v38 - 1));
        v47 = *&v42;
        v48 = v40;
        v263 = v40 + Height + 10.0;
        v49 = *&v41;
        LOBYTE(v5) = v281;
        v13 = &unk_1ECF38000;
      }

      else
      {
        v263 = a3;
        v39 = 0.0;
        v48 = 0.0;
        v49 = 0;
        v47 = 0;
      }

      v113 = v39;
      v291 = v49;
      *&v295 = v48;
      v288 = v47;
      v114 = CGRectGetHeight(*(&v48 - 1));
      v233 = *(*v15 + 1800);
      v236 = *v15 + 1800;
      v233();
      OUTLINED_FUNCTION_30();
      (*(v115 + 176))(&v340);
      v116 = v340;
      v117 = v341;
      v119 = v342;
      v118 = v343;

      v120 = v117;
      if (v344)
      {
        v116 = *v12;
        v120 = v12[1];
        v119 = v12[2];
        v118 = v12[3];
      }

      v239 = *&v120;
      v121 = sub_1E3952BE0(v116, v120, v119, v118);
      v337 = MEMORY[0x1E69E7CC0];
      v122 = *(v4 + v257);
      v123 = &selRef_advisoryDisabledTimeRanges;
      if (v122)
      {
        v124 = v122;
        [v4 bounds];
        [v4 vuiIsRTL];
        OUTLINED_FUNCTION_7_173();
        VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
        [v124 setFrame_];
      }

      v125 = OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_titleLabel;
      OUTLINED_FUNCTION_5_0(OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_titleLabel + v4, v336);
      v126 = *(v125 + v4);
      if (v126)
      {
        v127 = v126;
        MEMORY[0x1E6910BF0]();
        OUTLINED_FUNCTION_24_83();
        if (v128)
        {
LABEL_108:
          OUTLINED_FUNCTION_13_135();
        }

        sub_1E4206324();
        v129 = v337;
      }

      else
      {
        v129 = MEMORY[0x1E69E7CC0];
      }

      v307 = v129;
      v130 = v13[403];
      OUTLINED_FUNCTION_5_0(&v130[v4], v335);
      v131 = *&v130[v4];
      if (v131)
      {
        v132 = v131;
        MEMORY[0x1E6910BF0]();
        OUTLINED_FUNCTION_24_83();
        if (v128)
        {
          OUTLINED_FUNCTION_13_135();
        }

        sub_1E4206324();
        v307 = v337;
      }

      v242 = *&v118;
      v254 = *&v295 + v114;
      v118 = v272 - v121;
      v133 = sub_1E3798694(v307);
      v299 = v307 & 0xFFFFFFFFFFFFFF8;
      v303 = v307 & 0xC000000000000001;
      v251 = v4;
      v278 = v4;
      v134 = 0;
      v135 = 0;
      v136 = MEMORY[0x1E69E7CC0];
      v121 = 0.0;
      v13 = &selRef_textLayout;
      v4 = &selRef_itemProviderForActivityWithAdamId_previewMetadata_existingItemProvider_;
      v311 = MEMORY[0x1E69E7CC0];
      *&v284 = v39;
      while (v133 != v134)
      {
        if (v303)
        {
          v137 = MEMORY[0x1E6911E60](v134, v307);
        }

        else
        {
          if (v134 >= *((v307 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_105;
          }

          v137 = *(v307 + 8 * v134 + 32);
        }

        v138 = v137;
        if (__OFADD__(v134, 1))
        {
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
          goto LABEL_108;
        }

        v123 = [v137 *v13];
        [v123 *(v4 + 2352)];
        v140 = v139;
        v142 = v141;

        v352.origin.x = OUTLINED_FUNCTION_7_173();
        v143 = 0.0;
        [v138 sizeThatFits_];
        v145 = v144;
        v147 = v146;
        VUIRoundValue();
        v114 = v148 + 0.0;
        if (v140 > 0.0)
        {
          v123 = v135;
          sub_1E3C8B6B4(v135, v140);
          v143 = v149;

          v114 = v114 + v143;
        }

        if ((v5 & 1) == 0)
        {
          v150 = v135;
          v151 = v133;
          v152 = v4;
          v153 = v13;
          v154 = [(SEL *)v278 vuiTraitCollection];
          v155 = [v154 isAXLargeEnabled];

          if (v155)
          {
            v156 = v147;
          }

          else
          {
            v156 = v114;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v311 = sub_1E3AA7150(0, *(v311 + 2) + 1, 1, v311);
          }

          v158 = *(v311 + 2);
          v157 = *(v311 + 3);
          v13 = v153;
          if (v158 >= v157 >> 1)
          {
            v161 = OUTLINED_FUNCTION_14_130(v157);
            v311 = sub_1E3AA7150(v161, v162, v163, v311);
          }

          v4 = v152;
          *(v311 + 2) = v158 + 1;
          v159 = &v311[16 * v158];
          *(v159 + 4) = v145;
          *(v159 + 5) = v156;
          v133 = v151;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v136 = sub_1E39ABC54(0, *(v136 + 2) + 1, 1, v136);
          }

          v39 = *&v284;
          v135 = v150;
          v5 = *(v136 + 2);
          v160 = *(v136 + 3);
          v123 = (v5 + 1);
          if (v5 >= v160 >> 1)
          {
            v164 = OUTLINED_FUNCTION_14_130(v160);
            v136 = sub_1E39ABC54(v164, v165, v166, v136);
          }

          *(v136 + 2) = v123;
          *&v136[8 * v5 + 32] = v143;
          LOBYTE(v5) = v281;
        }

        v121 = v121 + v114;
        ++v134;
        v135 = v138;
      }

      v167 = v278;

      *&v248 = v121;
      if ((v5 & 1) == 0)
      {
        if (HIDWORD(v260))
        {
          v168 = 0.0;
        }

        else
        {
          v168 = (v254 - v121) * 0.5;
        }

        v353.origin.x = OUTLINED_FUNCTION_7_173();
        MaxX = CGRectGetMaxX(v353);
        v275 = MaxX + *sub_1E38EF970();
        v281 = sub_1E3798694(v307);
        v170 = v278;
        v4 = 0;
        v118 = v263;
        v171 = v311;
        while (v281 != v4)
        {
          if (v303)
          {
            v172 = MEMORY[0x1E6911E60](v4, v307);
          }

          else
          {
            if (v4 >= *(v299 + 16))
            {
              goto LABEL_107;
            }

            v172 = *(v307 + 8 * v4 + 32);
          }

          v173 = v172;
          LOBYTE(v5) = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_106;
          }

          v329 = *&v171;
          v333 = v4;
          v334 = 0;
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31EA8, &unk_1E42F41A0);
          v174 = sub_1E3827828(&unk_1EE23B460, &qword_1ECF31EA8, &unk_1E42F41A0);
          v182 = OUTLINED_FUNCTION_12_123(v174, v175, v176, v177, v178, v179, v180, v181, v233, v236, v239, v242, v245, v248, v251, *&v254, v257, v260, *&v263, v266, v269, *&v272, *&v275, v278, v281, v284, v288, v291, v295, v299, v303, v307, v311, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, *&v329, v330, v331, v332, v333);
          sub_1E38D2054(v182, v183);
          [(SEL *)v170 bounds];
          v114 = v184;
          v121 = v185;
          [(SEL *)v170 vuiIsRTL];
          v39 = *&v285;
          VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
          v186 = [v173 setFrame_];
          v334 = 0;
          v194 = OUTLINED_FUNCTION_12_123(v186, v187, v188, v189, v190, v191, v192, v193, v234, v237, v240, v243, v246, v249, v252, v255, v258, v261, v264, v267, v270, v273, v276, v279, v282, v285, v289, v292, v296, v300, v304, v308, v312, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v171, v330, v331, v332, v4);
          sub_1E38D2054(v194, v195);
          v196 = v346;
          if (v347)
          {
            v196 = 0.0;
          }

          v197 = v168 + v196;
          v329 = *&v136;
          v333 = (v4 + 1);
          v334 = 0;
          v5 = &unk_1E42A75C0;
          v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2FC90, &unk_1E42A75C0);
          v198 = sub_1E3827828(&unk_1ECF31EB0, &unk_1ECF2FC90, &unk_1E42A75C0);
          v205 = OUTLINED_FUNCTION_12_123(v198, v199, v198, v200, v201, v202, v203, v204, v235, v238, v241, v244, v247, v250, v253, v256, v259, v262, v265, v268, v271, v274, v277, v280, v283, v286, v290, v293, v297, v301, v305, v309, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, *&v329, v330, v331, v332, v333);
          sub_1E38D2054(v205, v206);
          v207 = v345;
          if (LOBYTE(v346))
          {
            v207 = 0.0;
          }

          v168 = v197 + v207;
          [v173 frame];
          v209 = v208;
          [v173 frame];
          v210 = CGRectGetHeight(v354);

          v118 = v209 + v210;
          ++v4;
        }

        v167 = v278;
        v121 = *&v248;
      }

      v211 = OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_separatorView;
      OUTLINED_FUNCTION_5_0(v167 + OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_separatorView, &v333);
      v214 = *(v167 + v211);
      if (v214)
      {
        v215 = v214;
        v216 = *(v233)();
        (*(v216 + 1744))();
        OUTLINED_FUNCTION_11_5();

        (*(*v123 + 212))(v217);

        sub_1E38EF970();
        if (*(v251 + v245))
        {
          OUTLINED_FUNCTION_8();
          v219 = *(v218 + 1800);

          v219(v220);
          OUTLINED_FUNCTION_11_5();

          (*(*v219 + 152))(&v345, v221);
        }

        [v215 lineHeight];
        v222 = v215;
        v167 = v278;
        [(SEL *)v278 vuiBounds];
        [(SEL *)v278 vuiIsRTL];
        VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
        [v222 setFrame_];

        v39 = *&v284;
        v121 = *&v248;
      }

      if (HIDWORD(v260))
      {
        v223 = v254;
        if (v254 < v121)
        {
          v224 = *(v251 + v257);
          if (!v224)
          {
            v331 = *&v121;
            goto LABEL_97;
          }

          v225 = v224;
          v355.origin.x = OUTLINED_FUNCTION_7_173();
          v226 = v121 * 0.5 - CGRectGetHeight(v355) * 0.5;
          [v225 frame];
          [v225 setFrame_];
        }

        v227 = *(v251 + v257);
        v331 = *&v121;
        if (v227)
        {
          [v227 frame];
          MaxY = CGRectGetMaxY(v356);
LABEL_98:
          v329 = MaxY;
          LOBYTE(v330) = 0;
          v229 = *(v167 + v211);
          if (v229)
          {
            [v229 frame];
            v230 = CGRectGetMaxY(v357);
          }

          else
          {
            v230 = 0.0;
          }

          v327 = *&v230;
          LOBYTE(v328) = 0;
          v231 = sub_1E3793CAC(v229, v212, v213);
          max<A>(_:_:_:)(&v331, &v329, &v327, MEMORY[0x1E69E7DE0], v231);

          goto LABEL_102;
        }

LABEL_97:
        MaxY = 0.0;
        goto LABEL_98;
      }
    }

LABEL_102:
  }

  return v272;
}