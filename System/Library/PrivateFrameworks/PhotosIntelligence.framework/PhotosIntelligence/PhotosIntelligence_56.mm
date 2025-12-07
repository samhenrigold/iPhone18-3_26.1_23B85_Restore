uint64_t sub_1C738A868()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_39_0();
  v4 = v3;
  OUTLINED_FUNCTION_6_4();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_14();
  *v7 = v6;
  *(v4 + 672) = v0;

  if (v0)
  {
  }

  else
  {
    *(v4 + 680) = v1;
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C738A980()
{

  v8 = *(v0 + 680);
  v9 = *(v0 + 672);
  *(v0 + 696) = *(v0 + 656);
  *(v0 + 826) = 1;
  *(v0 + 688) = v8;
  v10 = *(v8 + 16);
  *(v0 + 704) = v10;
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v34 = v9;
    v37 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_65_23(v1, v2, v3, v4, v5, v6, v7);
    v11 = v37;
    v12 = *(v37 + 16);
    v13 = 16 * v12;
    v35 = v8;
    v14 = (v8 + 48);
    do
    {
      v16 = *(v14 - 1);
      v15 = *v14;
      v17 = *(v37 + 24);
      sub_1C75504FC();
      if (v12 >= v17 >> 1)
      {
        sub_1C6F7ED9C(v17 > 1, v12 + 1, 1, v18, v19, v20, v21);
      }

      *(v37 + 16) = v12 + 1;
      v22 = v37 + v13;
      *(v22 + 32) = v16;
      *(v22 + 40) = v15;
      v13 += 16;
      v14 += 24;
      ++v12;
      --v10;
    }

    while (v10);
    v9 = v34;
    v8 = v35;
  }

  v23 = *(v0 + 648);
  v24 = *(v0 + 440);
  *(*(v0 + 464) + *(v0 + 536) + *(*(v0 + 544) + 100)) = v11;

  v25 = v24 + *(v23 + 88);
  if (*(v25 + 48) && (v26 = *(v25 + 24)) != 0 && *(v26 + 16))
  {
    *(v0 + 744) = v8;
    *(v0 + 736) = v9;
    v27 = *(v0 + 608);
    v36 = *(v0 + 592);
    swift_bridgeObjectRetain_n();
    *(v0 + 336) = v36;
    *(v0 + 352) = v27;
    v28 = swift_task_alloc();
    *(v0 + 752) = v28;
    *v28 = v0;
    OUTLINED_FUNCTION_5_83(v28);
    v29 = *(v0 + 456);

    return sub_1C7390010(v8, v0 + 336, v29);
  }

  else
  {
    v31 = swift_task_alloc();
    *(v0 + 712) = v31;
    *v31 = v0;
    OUTLINED_FUNCTION_37_34(v31);
    v32 = *(v0 + 456);
    v33 = *(v0 + 440);

    return sub_1C738F460(v8, v33, v32);
  }
}

uint64_t sub_1C738ABC0()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_39_0();
  v4 = v3;
  OUTLINED_FUNCTION_6_4();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_14();
  *v7 = v6;
  *(v4 + 720) = v0;

  if (v0)
  {
  }

  else
  {
    *(v4 + 728) = v1;
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C738ACD8()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 728);
  v2 = *(v0 + 720);
  *(v0 + 744) = v1;
  *(v0 + 736) = v2;
  v3 = *(v0 + 608);
  v7 = *(v0 + 592);
  sub_1C75504FC();
  *(v0 + 336) = v7;
  *(v0 + 352) = v3;
  v4 = swift_task_alloc();
  *(v0 + 752) = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_5_83(v4);
  v5 = *(v0 + 456);

  return sub_1C7390010(v1, v0 + 336, v5);
}

uint64_t sub_1C738AD8C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 760) = v3;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1C738AE7C()
{
  v107 = v1;
  rawValue = *(v1 + 744);
  if (*(*(v1 + 760) + 16))
  {
    v4._rawValue = *(v1 + 608);

    OUTLINED_FUNCTION_69_1();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v5 = *(v1 + 704);
    v0 = rawValue[2];

    if (v0 != v5)
    {

      sub_1C75504FC();
      sub_1C706D714();
      v42 = v41;
      sub_1C706D714();
      v44 = sub_1C72389E8(v43, v42);

      v45 = sub_1C71CDCB4(v44);
      *(v1 + 768) = v45;
      v46 = sub_1C754FEEC();
      v47 = sub_1C755117C();
      if (os_log_type_enabled(v46, v47))
      {
        OUTLINED_FUNCTION_13_3();
        v48 = swift_slowAlloc();
        OUTLINED_FUNCTION_98();
        v49 = swift_slowAlloc();
        v50 = v49;
        v105 = v49;
        *v48 = 136315138;
        v51 = *(v45 + 16);
        v52 = MEMORY[0x1E69E7CC0];
        if (v51)
        {
          v101 = v49;
          v102 = v47;
          v103 = v48;
          v104 = v46;
          v106[0] = MEMORY[0x1E69E7CC0];
          v53 = OUTLINED_FUNCTION_18_54();
          sub_1C6F7ED9C(v53, v54, v55, v56, v57, v58, v59);
          v52 = v106[0];
          v60 = *(v106[0] + 16);
          v61 = 16 * v60;
          v62 = (v45 + 48);
          do
          {
            v63 = *(v62 - 1);
            v64 = *v62;
            v106[0] = v52;
            v65 = *(v52 + 24);
            sub_1C75504FC();
            if (v60 >= v65 >> 1)
            {
              sub_1C6F7ED9C(v65 > 1, v60 + 1, 1, v66, v67, v68, v69);
              v52 = v106[0];
            }

            *(v52 + 16) = v60 + 1;
            v70 = v52 + v61;
            *(v70 + 32) = v63;
            *(v70 + 40) = v64;
            v61 += 16;
            v62 += 24;
            ++v60;
            --v51;
          }

          while (v51);
          v46 = v104;
          v48 = v103;
          v47 = v102;
          v50 = v101;
        }

        v71 = MEMORY[0x1CCA5D090](v52, MEMORY[0x1E69E6158]);
        v73 = v72;

        v74 = sub_1C6F765A4(v71, v73, &v105);

        *(v48 + 4) = v74;
        _os_log_impl(&dword_1C6F5C000, v46, v47, "(Apple Music Search) Remaining unused songs were unsafe. Reconsider recently used songs. uncheckedRecentlyUsedSongs = %s", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v50);
        v75 = OUTLINED_FUNCTION_2_44();
        MEMORY[0x1CCA5F8E0](v75);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      else
      {
      }

      v76 = *(v1 + 464);

      v77 = sub_1C754FEEC();
      sub_1C755117C();

      if (OUTLINED_FUNCTION_140_0())
      {
        OUTLINED_FUNCTION_13_3();
        swift_slowAlloc();
        OUTLINED_FUNCTION_12_66();
        v78 = swift_slowAlloc();
        v106[0] = v78;
        *v76 = 136315138;
        v79 = sub_1C75504FC();
        v80 = MEMORY[0x1CCA5D090](v79, MEMORY[0x1E69E6158]);
        v82 = v81;

        v83 = sub_1C6F765A4(v80, v82, v106);

        *(v76 + 4) = v83;
        OUTLINED_FUNCTION_39();
        _os_log_impl(v84, v85, v86, v87, v88, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v78);
        v89 = OUTLINED_FUNCTION_2_44();
        MEMORY[0x1CCA5F8E0](v89);
        v90 = OUTLINED_FUNCTION_4_0();
        MEMORY[0x1CCA5F8E0](v90);
      }

      v91 = *(v1 + 608);
      *(v1 + 384) = *(v1 + 592);
      *(v1 + 400) = v91;
      v92 = swift_task_alloc();
      *(v1 + 776) = v92;
      *v92 = v1;
      v92[1] = sub_1C738B5F8;
      OUTLINED_FUNCTION_98_15();
      OUTLINED_FUNCTION_20_4();

      sub_1C7390010(v93, v94, v95);
      return;
    }

    rawValue = *(v1 + 744);
    v4._rawValue = *(v1 + 608);
  }

  v6 = *(v1 + 760);
  if (!*(v6 + 16))
  {

    v9 = sub_1C754FEEC();
    sub_1C755119C();
    v10 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v10, v11))
    {
      OUTLINED_FUNCTION_96_0();
      v12 = swift_slowAlloc();
      OUTLINED_FUNCTION_37_0(v12);
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v13, v14, v15, v16, v17, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v18 = *(v1 + 696);

    sub_1C70EB0F0();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    OUTLINED_FUNCTION_66_22(v19, 5);
    swift_willThrow();

    OUTLINED_FUNCTION_14_58();
    OUTLINED_FUNCTION_2_108();
    v20 = OUTLINED_FUNCTION_9_52();
    v21(v20);
    OUTLINED_FUNCTION_45_32();

    OUTLINED_FUNCTION_7_46();
    OUTLINED_FUNCTION_20_4();

    __asm { BRAA            X1, X16 }
  }

  v7 = *(*(v1 + 440) + 16);
  if (v7 < 0)
  {
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  sub_1C7033F04(v7, v6);
  OUTLINED_FUNCTION_62_22();
  if ((v2 & 1) == 0)
  {
LABEL_8:
    OUTLINED_FUNCTION_112_8();
    v4._rawValue = v8;
    goto LABEL_20;
  }

  sub_1C7551DEC();
  OUTLINED_FUNCTION_69_1();
  swift_unknownObjectRetain_n();
  v24 = swift_dynamicCastClass();
  if (!v24)
  {
    swift_unknownObjectRelease();
    v24 = MEMORY[0x1E69E7CC0];
  }

  v25 = *(v24 + 16);

  if (__OFSUB__(v2 >> 1, v0))
  {
    goto LABEL_54;
  }

  if (v25 != (v2 >> 1) - v0)
  {
LABEL_55:
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  swift_dynamicCastClass();
  OUTLINED_FUNCTION_98_5();
  swift_unknownObjectRelease();
  if (v4._rawValue)
  {
    goto LABEL_21;
  }

  v4._rawValue = MEMORY[0x1E69E7CC0];
LABEL_20:
  swift_unknownObjectRelease();
LABEL_21:
  *(v1 + 792) = v4;
  if (*(v1 + 826) == 1)
  {
    if (*(v1 + 825) == 1)
    {
      v106[0] = *(v1 + 696);
      rawValue = AppleMusicUtils.filterOutNotAppropriateSong(from:aboveThreshold:)(v4, 0.5)._0._rawValue;

      v4._rawValue = rawValue;
    }

    OUTLINED_FUNCTION_81_20();
    if (!v26)
    {
      OUTLINED_FUNCTION_118_11();

      goto LABEL_50;
    }

    v27 = sub_1C754FEEC();
    sub_1C755117C();
    v28 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v28, v29))
    {
      OUTLINED_FUNCTION_96_0();
      v30 = swift_slowAlloc();
      OUTLINED_FUNCTION_92_0(v30);
      OUTLINED_FUNCTION_39();
      _os_log_impl(v31, v32, v33, v34, v35, 2u);
      v36 = OUTLINED_FUNCTION_4_0();
      MEMORY[0x1CCA5F8E0](v36);
    }

    v37 = *(v1 + 736);

    v106[0] = v4._rawValue;
    sub_1C75504FC();
    sub_1C710B5BC(v106);
    if (!v37)
    {

LABEL_50:
      OUTLINED_FUNCTION_14_58();
      OUTLINED_FUNCTION_2_108();
      v97 = OUTLINED_FUNCTION_9_52();
      v98(v97);
      OUTLINED_FUNCTION_45_32();

      OUTLINED_FUNCTION_53();
      OUTLINED_FUNCTION_20_4();

      __asm { BRAA            X2, X16 }
    }

    OUTLINED_FUNCTION_20_4();
  }

  else
  {
    OUTLINED_FUNCTION_111_13();
    v39 = swift_task_alloc();
    *(v1 + 800) = v39;
    *v39 = v1;
    OUTLINED_FUNCTION_30_39(v39);
    OUTLINED_FUNCTION_20_4();

    StoryMusicCurator.inflateAndSort(songs:using:sortUpToIndex:eventRecorder:)();
  }
}

uint64_t sub_1C738B5F8()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_14();
  *v4 = v3;
  *(v6 + 784) = v5;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C738B740()
{
  v44 = v2;
  v43[0] = *(v2 + 784);
  rawValue = v43;
  sub_1C70CFF78();
  if (!*(v43[0] + 16))
  {

    v7 = sub_1C754FEEC();
    sub_1C755119C();
    v8 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v8, v9))
    {
      OUTLINED_FUNCTION_96_0();
      v10 = swift_slowAlloc();
      OUTLINED_FUNCTION_37_0(v10);
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v11, v12, v13, v14, v15, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v16 = *(v2 + 696);

    sub_1C70EB0F0();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    OUTLINED_FUNCTION_66_22(v17, 5);
    swift_willThrow();

    OUTLINED_FUNCTION_14_58();
    OUTLINED_FUNCTION_2_108();
    v18 = OUTLINED_FUNCTION_9_52();
    v19(v18);
    OUTLINED_FUNCTION_45_32();

    OUTLINED_FUNCTION_7_46();
    OUTLINED_FUNCTION_17_1();

    __asm { BRAA            X1, X16 }
  }

  v5 = *(*(v2 + 440) + 16);
  if (v5 < 0)
  {
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  sub_1C7033F04(v5, v43[0]);
  OUTLINED_FUNCTION_62_22();
  if ((v3 & 1) == 0)
  {
LABEL_4:
    OUTLINED_FUNCTION_112_8();
    v0._rawValue = v6;
    goto LABEL_16;
  }

  sub_1C7551DEC();
  OUTLINED_FUNCTION_69_1();
  swift_unknownObjectRetain_n();
  v22 = swift_dynamicCastClass();
  if (!v22)
  {
    swift_unknownObjectRelease();
    v22 = MEMORY[0x1E69E7CC0];
  }

  v23 = *(v22 + 16);

  if (__OFSUB__(v3 >> 1, v1))
  {
    goto LABEL_36;
  }

  if (v23 != (v3 >> 1) - v1)
  {
LABEL_37:
    swift_unknownObjectRelease();
    goto LABEL_4;
  }

  swift_dynamicCastClass();
  OUTLINED_FUNCTION_98_5();
  swift_unknownObjectRelease();
  if (v0._rawValue)
  {
    goto LABEL_17;
  }

  v0._rawValue = MEMORY[0x1E69E7CC0];
LABEL_16:
  swift_unknownObjectRelease();
LABEL_17:
  *(v2 + 792) = v0;
  if (*(v2 + 826) == 1)
  {
    if (*(v2 + 825) == 1)
    {
      v43[0] = *(v2 + 696);
      rawValue = AppleMusicUtils.filterOutNotAppropriateSong(from:aboveThreshold:)(v0, 0.5)._0._rawValue;

      v0._rawValue = rawValue;
    }

    OUTLINED_FUNCTION_81_20();
    if (!v24)
    {
      OUTLINED_FUNCTION_118_11();

      goto LABEL_32;
    }

    v25 = sub_1C754FEEC();
    sub_1C755117C();
    v26 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v26, v27))
    {
      OUTLINED_FUNCTION_96_0();
      v28 = swift_slowAlloc();
      OUTLINED_FUNCTION_92_0(v28);
      OUTLINED_FUNCTION_39();
      _os_log_impl(v29, v30, v31, v32, v33, 2u);
      v34 = OUTLINED_FUNCTION_4_0();
      MEMORY[0x1CCA5F8E0](v34);
    }

    v35 = *(v2 + 736);

    v43[0] = v0._rawValue;
    sub_1C75504FC();
    sub_1C710B5BC(v43);
    if (!v35)
    {

LABEL_32:
      OUTLINED_FUNCTION_14_58();
      OUTLINED_FUNCTION_2_108();
      v39 = OUTLINED_FUNCTION_9_52();
      v40(v39);
      OUTLINED_FUNCTION_45_32();

      OUTLINED_FUNCTION_53();
      OUTLINED_FUNCTION_17_1();

      __asm { BRAA            X2, X16 }
    }

    OUTLINED_FUNCTION_17_1();
  }

  else
  {
    OUTLINED_FUNCTION_111_13();
    v37 = swift_task_alloc();
    *(v2 + 800) = v37;
    *v37 = v2;
    OUTLINED_FUNCTION_30_39(v37);
    OUTLINED_FUNCTION_17_1();

    StoryMusicCurator.inflateAndSort(songs:using:sortUpToIndex:eventRecorder:)();
  }
}

uint64_t sub_1C738BB20()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_39_0();
  v4 = v3;
  OUTLINED_FUNCTION_6_4();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_14();
  *v7 = v6;
  *(v4 + 808) = v0;

  if (!v0)
  {

    *(v4 + 816) = v1;
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C738BC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_118_11();

  v25 = *(v13 + 816);
  OUTLINED_FUNCTION_1_116();
  v14 = OUTLINED_FUNCTION_21_54();
  v15(v14);
  OUTLINED_FUNCTION_45_32();

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_44();

  return v18(v16, v17, v18, v19, v20, v21, v22, v23, v25, a10, a11, a12);
}

uint64_t sub_1C738BCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v24 = *(v12 + 560);
  OUTLINED_FUNCTION_1_116();
  v13 = OUTLINED_FUNCTION_21_54();
  v14(v13);
  OUTLINED_FUNCTION_45_32();

  OUTLINED_FUNCTION_50_27();
  OUTLINED_FUNCTION_44();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, v24, a10, a11, a12);
}

uint64_t sub_1C738BD5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();

  v24 = *(v12 + 632);
  OUTLINED_FUNCTION_1_116();
  v13 = OUTLINED_FUNCTION_21_54();
  v14(v13);
  OUTLINED_FUNCTION_45_32();

  OUTLINED_FUNCTION_50_27();
  OUTLINED_FUNCTION_44();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, v24, a10, a11, a12);
}

uint64_t sub_1C738BE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v13 = *(v12 + 656);

  v25 = *(v12 + 672);
  OUTLINED_FUNCTION_1_116();
  v14 = OUTLINED_FUNCTION_21_54();
  v15(v14);
  OUTLINED_FUNCTION_45_32();

  OUTLINED_FUNCTION_50_27();
  OUTLINED_FUNCTION_44();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, v25, a10, a11, a12);
}

uint64_t sub_1C738BEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_118_11();

  v25 = *(v13 + 720);
  OUTLINED_FUNCTION_1_116();
  v14 = OUTLINED_FUNCTION_21_54();
  v15(v14);
  OUTLINED_FUNCTION_45_32();

  OUTLINED_FUNCTION_50_27();
  OUTLINED_FUNCTION_44();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, v25, a10, a11, a12);
}

void sub_1C738BF38()
{
  v1 = *(v0 + 808);
  v2 = v1;
  v3 = sub_1C754FEEC();
  v4 = sub_1C755119C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 808);
    v6 = *(v0 + 696);
    OUTLINED_FUNCTION_13_3();
    v7 = swift_slowAlloc();
    OUTLINED_FUNCTION_98();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = sub_1C7551EAC();
    v11 = sub_1C6F765A4(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1C6F5C000, v3, v4, "(Apple Music Search) Error sorting songs by mood so using the original results. Error: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
    v12 = *(v0 + 808);
    v13 = *(v0 + 696);
  }

  OUTLINED_FUNCTION_1_116();
  v14 = OUTLINED_FUNCTION_21_54();
  v15(v14);
  OUTLINED_FUNCTION_45_32();

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_17_1();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_1C738C104(uint8_t *a1)
{
  v2 = sub_1C738C388();
  if ((v2 & 1) == 0)
  {
    if (qword_1EDD0ED88 != -1)
    {
      OUTLINED_FUNCTION_0_35();
      swift_once();
    }

    v7 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v7, &dword_1EDD28D48);
    v8 = sub_1C754FEEC();
    v9 = sub_1C755118C();
    v10 = OUTLINED_FUNCTION_72();
    if (!os_log_type_enabled(v10, v11))
    {
      v6 = 1;
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_96_0();
    v12 = swift_slowAlloc();
    OUTLINED_FUNCTION_37_0(v12);
    v13 = "(Apple Music) SmartSearch is enabled for all scenarios";
LABEL_13:
    _os_log_impl(&dword_1C6F5C000, v8, v9, v13, a1, 2u);
    v6 = v2 ^ 1;
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
LABEL_16:

    return v6 & 1;
  }

  v3 = &a1[*(type metadata accessor for StoryMusicCurationOptions(0) + 88)];
  a1 = *(v3 + 6);
  if (!a1 || (v4 = *(v3 + 3), v5 = StoryPromptAttributes.hasMusicCurationIngredients()(), sub_1C71AACA4(v4), sub_1C75504FC(), sub_1C71AACF0(v4), , !v5))
  {
    if (qword_1EDD0ED88 != -1)
    {
      OUTLINED_FUNCTION_0_35();
      swift_once();
    }

    v14 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v14, &dword_1EDD28D48);
    v8 = sub_1C754FEEC();
    v9 = sub_1C755118C();
    v15 = OUTLINED_FUNCTION_72();
    if (!os_log_type_enabled(v15, v16))
    {
      v6 = 0;
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_96_0();
    v17 = swift_slowAlloc();
    OUTLINED_FUNCTION_37_0(v17);
    v13 = "(Apple Music) No QU music so not using smart search";
    goto LABEL_13;
  }

  v6 = 1;
  return v6 & 1;
}

uint64_t sub_1C738C30C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1C7423D10();
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1C7393FC8(v6);
  return sub_1C755193C();
}

uint64_t sub_1C738C388()
{
  v0 = objc_opt_self();
  v1 = [v0 appleMusicSmartSearchMode];
  v2 = sub_1C755068C();
  v4 = v3;

  v45 = v2;
  v46 = v4;
  sub_1C6FB5E8C();
  LOBYTE(v1) = sub_1C75515AC();

  if ((v1 & 1) == 0)
  {
    return 1;
  }

  v5 = [v0 appleMusicSmartSearchMode];
  v6 = sub_1C755068C();
  v8 = v7;

  v9 = static StoryMusicCurator.dictionaryFromCommasString(using:)(v6, v8);

  if (!v9[2])
  {
    goto LABEL_26;
  }

  sub_1C75504FC();
  sub_1C6F78124(0x796C6E4F5551, 0xE600000000000000);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    goto LABEL_26;
  }

  v12 = sub_1C6FE0F8C(0x796C6E4F5551, 0xE600000000000000, v9);
  v14 = v13;

  if (!v14)
  {
    return 1;
  }

  v16 = HIBYTE(v14) & 0xF;
  v17 = v12 & 0xFFFFFFFFFFFFLL;
  if (!((v14 & 0x2000000000000000) != 0 ? HIBYTE(v14) & 0xF : v12 & 0xFFFFFFFFFFFFLL))
  {
LABEL_26:

    return 1;
  }

  if ((v14 & 0x1000000000000000) == 0)
  {
    if ((v14 & 0x2000000000000000) != 0)
    {
      v45 = v12;
      v46 = v14 & 0xFFFFFFFFFFFFFFLL;
      if (v12 == 43)
      {
        if (v16)
        {
          if (--v16)
          {
            v20 = 0;
            v30 = &v45 + 1;
            while (1)
            {
              v31 = *v30 - 48;
              if (v31 > 9)
              {
                break;
              }

              v32 = 10 * v20;
              if ((v20 * 10) >> 64 != (10 * v20) >> 63)
              {
                break;
              }

              v20 = v32 + v31;
              if (__OFADD__(v32, v31))
              {
                break;
              }

              ++v30;
              if (!--v16)
              {
                goto LABEL_70;
              }
            }
          }

          goto LABEL_69;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v12 != 45)
      {
        if (v16)
        {
          v20 = 0;
          v35 = &v45;
          while (1)
          {
            v36 = *v35 - 48;
            if (v36 > 9)
            {
              break;
            }

            v37 = 10 * v20;
            if ((v20 * 10) >> 64 != (10 * v20) >> 63)
            {
              break;
            }

            v20 = v37 + v36;
            if (__OFADD__(v37, v36))
            {
              break;
            }

            v35 = (v35 + 1);
            if (!--v16)
            {
              goto LABEL_70;
            }
          }
        }

        goto LABEL_69;
      }

      if (v16)
      {
        if (--v16)
        {
          v20 = 0;
          v24 = &v45 + 1;
          while (1)
          {
            v25 = *v24 - 48;
            if (v25 > 9)
            {
              break;
            }

            v26 = 10 * v20;
            if ((v20 * 10) >> 64 != (10 * v20) >> 63)
            {
              break;
            }

            v20 = v26 - v25;
            if (__OFSUB__(v26, v25))
            {
              break;
            }

            ++v24;
            if (!--v16)
            {
              goto LABEL_70;
            }
          }
        }

        goto LABEL_69;
      }
    }

    else
    {
      if ((v12 & 0x1000000000000000) != 0)
      {
        result = (v14 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1C75518FC();
      }

      v19 = *result;
      if (v19 == 43)
      {
        if (v17 >= 1)
        {
          v16 = v17 - 1;
          if (v17 != 1)
          {
            v20 = 0;
            if (result)
            {
              v27 = (result + 1);
              while (1)
              {
                v28 = *v27 - 48;
                if (v28 > 9)
                {
                  goto LABEL_69;
                }

                v29 = 10 * v20;
                if ((v20 * 10) >> 64 != (10 * v20) >> 63)
                {
                  goto LABEL_69;
                }

                v20 = v29 + v28;
                if (__OFADD__(v29, v28))
                {
                  goto LABEL_69;
                }

                ++v27;
                if (!--v16)
                {
                  goto LABEL_70;
                }
              }
            }

            goto LABEL_61;
          }

          goto LABEL_69;
        }

        goto LABEL_83;
      }

      if (v19 != 45)
      {
        if (v17)
        {
          v20 = 0;
          if (result)
          {
            while (1)
            {
              v33 = *result - 48;
              if (v33 > 9)
              {
                goto LABEL_69;
              }

              v34 = 10 * v20;
              if ((v20 * 10) >> 64 != (10 * v20) >> 63)
              {
                goto LABEL_69;
              }

              v20 = v34 + v33;
              if (__OFADD__(v34, v33))
              {
                goto LABEL_69;
              }

              ++result;
              if (!--v17)
              {
                goto LABEL_61;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_69:
        v20 = 0;
        LOBYTE(v16) = 1;
        goto LABEL_70;
      }

      if (v17 >= 1)
      {
        v16 = v17 - 1;
        if (v17 != 1)
        {
          v20 = 0;
          if (result)
          {
            v21 = (result + 1);
            while (1)
            {
              v22 = *v21 - 48;
              if (v22 > 9)
              {
                goto LABEL_69;
              }

              v23 = 10 * v20;
              if ((v20 * 10) >> 64 != (10 * v20) >> 63)
              {
                goto LABEL_69;
              }

              v20 = v23 - v22;
              if (__OFSUB__(v23, v22))
              {
                goto LABEL_69;
              }

              ++v21;
              if (!--v16)
              {
                goto LABEL_70;
              }
            }
          }

LABEL_61:
          LOBYTE(v16) = 0;
LABEL_70:
          v38 = v16;
          goto LABEL_71;
        }

        goto LABEL_69;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  sub_1C71CBAA8(v12, v14, 10);
  v20 = v43;
  v38 = v44;
LABEL_71:

  if (v38)
  {
    return 1;
  }

  if (v20 == 1)
  {
    if (qword_1EDD0ED88 != -1)
    {
      swift_once();
    }

    v39 = sub_1C754FF1C();
    __swift_project_value_buffer(v39, &dword_1EDD28D48);
    v40 = sub_1C754FEEC();
    v41 = sub_1C755118C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1C6F5C000, v40, v41, "(Apple Music Search) shouldUseSmartSearchForQUOnly: Enabled", v42, 2u);
      MEMORY[0x1CCA5F8E0](v42, -1, -1);
    }

    return 1;
  }

  return 0;
}

uint64_t sub_1C738C880(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = sub_1C754F38C();
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C738C944, 0, 0);
}

uint64_t sub_1C738CE6C(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *v5 = *v2;
  *(v4 + 192) = v1;

  if (!v1)
  {
    *(v4 + 200) = a1;
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

double sub_1C738CFA0()
{
  OUTLINED_FUNCTION_115_0();
  v42 = v0;
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
  sub_1C75504FC();
  OUTLINED_FUNCTION_108_11();
  sub_1C6FD2F68(v2);
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_82_17();

  v41[0] = MEMORY[0x1E69E7CC0];
  v5 = sub_1C6FD2F68(v4);
  OUTLINED_FUNCTION_89_16(v5, v6, v7, v8, v9, v10, v11, v12, v39, v41[0]);
  v13 = sub_1C75504FC();
  v41[0] = sub_1C71CC894(v13);
  sub_1C738C30C(v41);
  if (!v3)
  {

    OUTLINED_FUNCTION_89_16(v16, v17, v18, v19, v20, v21, v22, v23, v40, v41[0]);

    v24 = sub_1C754FEEC();
    sub_1C755118C();
    OUTLINED_FUNCTION_141();

    if (OUTLINED_FUNCTION_140_0())
    {
      OUTLINED_FUNCTION_13_3();
      swift_slowAlloc();
      OUTLINED_FUNCTION_12_66();
      v25 = swift_slowAlloc();
      v41[0] = v25;
      OUTLINED_FUNCTION_117_10(4.8149e-34);
      OUTLINED_FUNCTION_116_14();
      sub_1C6F765A4(v26, v27, v41);
      OUTLINED_FUNCTION_86_14();
      *(v4 + 4) = v1;
      OUTLINED_FUNCTION_39();
      _os_log_impl(v28, v29, v30, v31, v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      v33 = OUTLINED_FUNCTION_2_44();
      MEMORY[0x1CCA5F8E0](v33);
      v34 = OUTLINED_FUNCTION_4_0();
      MEMORY[0x1CCA5F8E0](v34);
    }

    OUTLINED_FUNCTION_53_32();

    OUTLINED_FUNCTION_80_0(v24, v24[3]);
    OUTLINED_FUNCTION_109_0();
    sub_1C754F1AC();
    v35 = OUTLINED_FUNCTION_9_52();
    v36(v35);

    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_87_5();

    __asm { BRAA            X2, X16 }
  }

  OUTLINED_FUNCTION_87_5();

  return result;
}

void sub_1C738D188()
{
  OUTLINED_FUNCTION_115_0();
  v54 = v0;
  v3 = *(v0 + 192);
  v4 = sub_1C754FEEC();
  sub_1C755119C();

  v5 = OUTLINED_FUNCTION_140_0();
  v6 = *(v0 + 192);
  if (v5)
  {
    OUTLINED_FUNCTION_13_3();
    v1 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v1 = 138412290;
    v8 = v6;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v9;
    *v7 = v9;
    OUTLINED_FUNCTION_39();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    sub_1C7030CDC(v7, &qword_1EC215190, &qword_1C755C730);
    v15 = OUTLINED_FUNCTION_2_44();
    MEMORY[0x1CCA5F8E0](v15);
    v16 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x1CCA5F8E0](v16);
  }

  OUTLINED_FUNCTION_108_11();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1C6FD2F68(MEMORY[0x1E69E7CC0]);
  swift_endAccess();
  v18 = OUTLINED_FUNCTION_82_17();

  v19 = sub_1C6FD2F68(v18);
  OUTLINED_FUNCTION_89_16(v19, v20, v21, v22, v23, v24, v25, v26, v51, v17);
  v27 = sub_1C75504FC();
  v53[0] = sub_1C71CC894(v27);
  sub_1C738C30C(v53);

  OUTLINED_FUNCTION_89_16(v28, v29, v30, v31, v32, v33, v34, v35, v52, v53[0]);

  v36 = sub_1C754FEEC();
  sub_1C755118C();
  OUTLINED_FUNCTION_141();

  if (OUTLINED_FUNCTION_140_0())
  {
    OUTLINED_FUNCTION_13_3();
    swift_slowAlloc();
    OUTLINED_FUNCTION_12_66();
    v37 = swift_slowAlloc();
    v53[0] = v37;
    OUTLINED_FUNCTION_117_10(4.8149e-34);
    OUTLINED_FUNCTION_116_14();
    sub_1C6F765A4(v38, v39, v53);
    OUTLINED_FUNCTION_86_14();
    *(v1 + 4) = v2;
    OUTLINED_FUNCTION_39();
    _os_log_impl(v40, v41, v42, v43, v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    v45 = OUTLINED_FUNCTION_2_44();
    MEMORY[0x1CCA5F8E0](v45);
    v46 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x1CCA5F8E0](v46);
  }

  OUTLINED_FUNCTION_53_32();

  OUTLINED_FUNCTION_80_0(v36, v36[3]);
  OUTLINED_FUNCTION_109_0();
  sub_1C754F1AC();
  v47 = OUTLINED_FUNCTION_9_52();
  v48(v47);

  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_87_5();

  __asm { BRAA            X2, X16 }
}

void StoryMusicCurator.searchPromptGenerator(with:searchKeywords:eventRecorder:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v4;
  v188 = a2;
  v8 = *v3;
  v9 = sub_1C754D84C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v174 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v195) = 0;
  sub_1C6FC0604(__src);
  memcpy(v197, __src, sizeof(v197));
  StoryMusicCurator.packageSpecificationOptions(for:in:fallbackMood:)(&v195, a1, v197);
  if (v4)
  {
    return;
  }

  v178 = a3;
  v185 = v13;
  v186 = v8;
  v180 = v9;
  v181 = v12;
  if (*(a1 + 24))
  {
    LOBYTE(v14) = 1;
  }

  else
  {
    OUTLINED_FUNCTION_52_27();
    LOBYTE(v14) = sub_1C7551DBC();
  }

  v199 = MEMORY[0x1E69E7CC0];
  v195 = 0;
  v196 = 0xE000000000000000;
  v177 = *MEMORY[0x1E69BEA98];
  sub_1C755068C();
  OUTLINED_FUNCTION_71_15();
  sub_1C6FE3750();

  v182 = v10;
  if (!v197[3])
  {
    sub_1C7030CDC(v197, &qword_1EC216D30, &unk_1C7583DB0);
    v19 = MEMORY[0x1E69E7CC0];
    v15 = v3;
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0, &unk_1C755C710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
  v15 = v3;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  if (!*(v193 + 16))
  {

LABEL_13:
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_76_18();
  sub_1C6FB632C();
  sub_1C75504FC();

  OUTLINED_FUNCTION_102_13();
  if (!v16)
  {

    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v17 = OUTLINED_FUNCTION_94_2();
  MEMORY[0x1CCA5CD70](v17);

  sub_1C6FB474C();
  v19 = v18;
  v20 = *(v18 + 24);
  if (*(v18 + 16) >= v20 >> 1)
  {
    goto LABEL_167;
  }

LABEL_10:
  OUTLINED_FUNCTION_49_26();
  *(v21 + 32) = 0;
  v199 = v19;
LABEL_14:
  v176 = *MEMORY[0x1E69BEA58];
  sub_1C755068C();
  OUTLINED_FUNCTION_71_15();
  sub_1C6FE3750();

  if (!v197[3])
  {
    sub_1C7030CDC(v197, &qword_1EC216D30, &unk_1C7583DB0);
    LODWORD(v26) = 0;
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0, &unk_1C755C710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  if (!*(v193 + 16))
  {

LABEL_24:
    LODWORD(v26) = 0;
    goto LABEL_25;
  }

  v197[0] = v193;
  sub_1C703328C();
  v22 = sub_1C75505FC();
  v14 = v23;

  OUTLINED_FUNCTION_26_43();
  MEMORY[0x1CCA5CD70](v22, v14);

  MEMORY[0x1CCA5CD70](v197[0], v197[1]);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_24_0();
    sub_1C6FB474C();
    v19 = v163;
  }

  OUTLINED_FUNCTION_74_14();
  if (v25)
  {
    OUTLINED_FUNCTION_15_2(v24);
    sub_1C6FB474C();
    v19 = v164;
  }

  OUTLINED_FUNCTION_49_26();
  LODWORD(v26) = 1;
  *(v27 + 32) = 1;
  v199 = v19;
LABEL_25:
  v193 = 0;
  v194 = 0;
  sub_1C755068C();
  OUTLINED_FUNCTION_71_15();
  sub_1C6FE3750();

  if (!v197[3])
  {
    sub_1C7030CDC(v197, &qword_1EC216D30, &unk_1C7583DB0);
    goto LABEL_32;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0, &unk_1C755C710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
  OUTLINED_FUNCTION_75_15();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_32:
    v29 = 0;
    v183 = 0;
    goto LABEL_33;
  }

  if (!*(v191 + 16))
  {

    goto LABEL_32;
  }

  v28 = v26;
  OUTLINED_FUNCTION_76_18();
  sub_1C6FB632C();
  v26 = v19;
  sub_1C75504FC();

  if (sub_1C705FC40(0, v19))
  {

    v183 = 0;
    LODWORD(v26) = v28;
    v29 = 0;
  }

  else
  {
    v88 = OUTLINED_FUNCTION_94_2();
    sub_1C7392888(v88, v89);
    v29 = v90;
    v92 = v91;

    OUTLINED_FUNCTION_26_43();
    v183 = v92;
    MEMORY[0x1CCA5CD70](v29, v92);
    MEMORY[0x1CCA5CD70](v197[0], v197[1]);

    v19 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1C6FB474C();
      v19 = v170;
    }

    OUTLINED_FUNCTION_74_14();
    if (v25)
    {
      OUTLINED_FUNCTION_15_2(v93);
      sub_1C6FB474C();
      v19 = v171;
    }

    OUTLINED_FUNCTION_49_26();
    OUTLINED_FUNCTION_88_14(v94);
    v193 = v29;
    v194 = v183;
  }

LABEL_33:
  sub_1C755068C();
  OUTLINED_FUNCTION_71_15();
  sub_1C6FE3750();

  if (!v197[3])
  {
    sub_1C7030CDC(v197, &qword_1EC216D30, &unk_1C7583DB0);
    goto LABEL_39;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0, &unk_1C755C710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216D38, &qword_1C7567240);
  OUTLINED_FUNCTION_75_15();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_39;
  }

  v30 = v191;
  if (sub_1C705FC40(3u, v19) || sub_1C705FC40(0, v19))
  {

    goto LABEL_39;
  }

  if (!*(v30 + 16))
  {

    goto LABEL_151;
  }

  OUTLINED_FUNCTION_76_18();
  sub_1C6FB632C();
  v95 = *(v30 + 32);

  if (v95 < 0)
  {
    __break(1u);
    goto LABEL_171;
  }

  v96 = PHStringForMemoryMood();
  if (!v96)
  {
LABEL_151:
    if (qword_1EDD0ED88 == -1)
    {
LABEL_152:
      v147 = sub_1C754FF1C();
      __swift_project_value_buffer(v147, &dword_1EDD28D48);
      v148 = sub_1C754FEEC();
      sub_1C755119C();
      v149 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v149, v150))
      {
        OUTLINED_FUNCTION_96_0();
        LODWORD(v26) = v19;
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_59_24(&dword_1C6F5C000, v151, v152, "(Apple Music Search) searchPromptGenerator: There was a mood but unable to parse it out");
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      goto LABEL_155;
    }

LABEL_171:
    OUTLINED_FUNCTION_0_35();
    swift_once();
    goto LABEL_152;
  }

  v97 = v96;
  sub_1C755068C();
  LODWORD(v26) = v19;

  v98 = OUTLINED_FUNCTION_455();
  sub_1C7392888(v98, v99);
  v29 = v100;
  v102 = v101;

  OUTLINED_FUNCTION_26_43();
  MEMORY[0x1CCA5CD70](v29, v102);
  MEMORY[0x1CCA5CD70](v197[0], v197[1]);

  v193 = v29;
  v194 = v102;
  v183 = v102;
LABEL_155:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_24_0();
    sub_1C6FB474C();
    v19 = v172;
  }

  OUTLINED_FUNCTION_74_14();
  if (v25)
  {
    OUTLINED_FUNCTION_15_2(v153);
    sub_1C6FB474C();
    v19 = v173;
  }

  OUTLINED_FUNCTION_49_26();
  OUTLINED_FUNCTION_88_14(v154);
LABEL_39:
  sub_1C755068C();
  sub_1C6FE3750();

  if (v197[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0, &unk_1C755C710);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    OUTLINED_FUNCTION_75_15();
    if (swift_dynamicCast())
    {
      if (*(v191 + 16))
      {
        sub_1C7388F28(v191, &v193, &v199);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_24_0();
          sub_1C6FB474C();
          v19 = v165;
        }

        v26 = *(v19 + 16);
        v31 = *(v19 + 24);
        if (v26 >= v31 >> 1)
        {
          OUTLINED_FUNCTION_15(v31);
          sub_1C6FB474C();
          v19 = v166;
        }

        LOBYTE(v14) = 0;
        *(v19 + 16) = v26 + 1;
        *(v19 + v26 + 32) = 2;
        LODWORD(v26) = 1;
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1C7030CDC(v197, &qword_1EC216D30, &unk_1C7583DB0);
  }

  sub_1C755068C();
  OUTLINED_FUNCTION_71_15();
  sub_1C6FE3750();

  v179 = v15;
  v184 = v19;
  if (v197[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0, &unk_1C755C710);
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_102_13();
      if (v32)
      {
        if (!v183 || !sub_1C705FC40(3u, v184))
        {
          goto LABEL_96;
        }

        v33 = HIBYTE(v183) & 0xF;
        if ((v183 & 0x2000000000000000) == 0)
        {
          v33 = v29 & 0xFFFFFFFFFFFFLL;
        }

        if (!v33 || (v34 = sub_1C75506FC(), v175 = v35, v197[0] = v34, v197[1] = v35, OUTLINED_FUNCTION_94_2(), v36 = sub_1C75506FC(), LODWORD(v187) = v26, v29 = v37, v191 = v36, v192 = v37, sub_1C6FB5E8C(), v38 = sub_1C75515AC(), , LODWORD(v26) = v187, , (v38 & 1) == 0))
        {
LABEL_96:
          OUTLINED_FUNCTION_26_43();
          v81 = OUTLINED_FUNCTION_94_2();
          MEMORY[0x1CCA5CD70](v81);

          MEMORY[0x1CCA5CD70](v197[0], v197[1]);

          v82 = v184;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_24_0();
            sub_1C6FB474C();
            v82 = v167;
          }

          v83 = v180;
          v85 = *(v82 + 16);
          v84 = *(v82 + 24);
          if (v85 >= v84 >> 1)
          {
            OUTLINED_FUNCTION_15_2(v84);
            sub_1C6FB474C();
            v82 = v168;
          }

          *(v82 + 16) = v85 + 1;
          v184 = v82;
          *(v82 + v85 + 32) = 2;
          LODWORD(v187) = 1;
          goto LABEL_123;
        }

        if (qword_1EDD0ED88 != -1)
        {
          OUTLINED_FUNCTION_0_35();
          swift_once();
        }

        v39 = sub_1C754FF1C();
        __swift_project_value_buffer(v39, &dword_1EDD28D48);
        v40 = sub_1C754FEEC();
        sub_1C755117C();
        v41 = OUTLINED_FUNCTION_72();
        if (os_log_type_enabled(v41, v42))
        {
          OUTLINED_FUNCTION_96_0();
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_59_24(&dword_1C6F5C000, v43, v44, "(Apple Music Search) Genre is mood dupe so skip adding it to the search prompt");
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
        }

        if ((v14 & 1) == 0)
        {
LABEL_103:
          LODWORD(v187) = v26;
LABEL_122:
          v83 = v180;
LABEL_123:
          v197[0] = v195;
          v197[1] = v196;
          sub_1C75504FC();
          v109 = v181;
          sub_1C754D7FC();
          sub_1C6FB5E8C();
          v110 = sub_1C755154C();
          v112 = v111;
          (*(v182 + 8))(v109, v83);

          v197[0] = v110;
          v197[1] = v112;
          v191 = 8224;
          v192 = 0xE200000000000000;
          v189 = 32;
          v190 = 0xE100000000000000;
          OUTLINED_FUNCTION_2_80();
          v14 = sub_1C755155C();
          v51 = v113;

          sub_1C75504FC();

          v195 = v14;
          v196 = v51;

          v114 = HIBYTE(v51) & 0xF;
          if ((v51 & 0x2000000000000000) == 0)
          {
            v114 = v14 & 0xFFFFFFFFFFFFLL;
          }

          if (!v114)
          {

            if (qword_1EDD0ED88 != -1)
            {
              OUTLINED_FUNCTION_0_35();
              swift_once();
            }

            v117 = sub_1C754FF1C();
            __swift_project_value_buffer(v117, &dword_1EDD28D48);
            v118 = sub_1C754FEEC();
            v119 = sub_1C755119C();
            v120 = OUTLINED_FUNCTION_72();
            if (os_log_type_enabled(v120, v121))
            {
              OUTLINED_FUNCTION_96_0();
              v122 = swift_slowAlloc();
              *v122 = 0;
              _os_log_impl(&dword_1C6F5C000, v118, v119, "(Apple Music Search) searchPromptGenerator: The search prompt is empty", v122, 2u);
              v123 = OUTLINED_FUNCTION_2_44();
              MEMORY[0x1CCA5F8E0](v123);
            }

            sub_1C70EB0F0();
            OUTLINED_FUNCTION_9_10();
            swift_allocError();
            OUTLINED_FUNCTION_66_22(v124, 8);
            swift_willThrow();

            return;
          }

          v188 = v5;
          sub_1C755068C();
          OUTLINED_FUNCTION_71_15();
          sub_1C6FE3750();

          v29 = v179;
          if (v197[3])
          {
            sub_1C7030CDC(v197, &qword_1EC216D30, &unk_1C7583DB0);
            sub_1C755068C();
            sub_1C6FE3750();

            v115 = v197[3];
            sub_1C7030CDC(v197, &qword_1EC216D30, &unk_1C7583DB0);
            v116 = v187 ^ 1;
            if (v115)
            {
              v116 = 1;
            }

            v57 = v184;
            if (v116)
            {
LABEL_139:
              v133 = qword_1EDD0ED88;
              swift_bridgeObjectRetain_n();
              sub_1C75504FC();
              if (v133 != -1)
              {
                goto LABEL_165;
              }

              goto LABEL_140;
            }
          }

          else
          {

            sub_1C7030CDC(v197, &qword_1EC216D30, &unk_1C7583DB0);
            v57 = v184;
            if ((v187 & 1) == 0)
            {
              goto LABEL_139;
            }
          }

          type metadata accessor for MusicLocalizer();
          v125 = OUTLINED_FUNCTION_113_13("PIFMusicSynonymsForSong");
          v126 = OUTLINED_FUNCTION_113_13("PIFMusicSynonymsForBeat");
          v197[0] = v125;
          sub_1C6FD2568(v126);
          v14 = sub_1C72CB24C(v197[0], v14, v51, v127, v128, v129, v130);
          v132 = v131;

          v51 = v132;
          v195 = v14;
          v196 = v132;
          if (sub_1C7391F74())
          {
            OUTLINED_FUNCTION_114_13(544239444);
            sub_1C75504FC();
            MEMORY[0x1CCA5CD70](0x73676E6F7320, 0xE600000000000000);

            v14 = v197[0];
            v51 = v197[1];
            v195 = v197[0];
            v196 = v197[1];
          }

          goto LABEL_139;
        }
      }

      else
      {

        if ((v14 & 1) == 0)
        {
          goto LABEL_103;
        }
      }

      goto LABEL_66;
    }
  }

  else
  {
    sub_1C7030CDC(v197, &qword_1EC216D30, &unk_1C7583DB0);
  }

  if ((v14 & 1) == 0)
  {
    goto LABEL_103;
  }

LABEL_66:
  v174 = sub_1C7392B2C();
  if (qword_1EDD0ED88 != -1)
  {
    OUTLINED_FUNCTION_0_35();
    swift_once();
  }

  v45 = sub_1C754FF1C();
  v175 = __swift_project_value_buffer(v45, &dword_1EDD28D48);
  v46 = sub_1C754FEEC();
  v47 = sub_1C755118C();
  v48 = OUTLINED_FUNCTION_72();
  v50 = os_log_type_enabled(v48, v49);
  v51 = v188;
  if (v50)
  {
    OUTLINED_FUNCTION_96_0();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_59_24(&dword_1C6F5C000, v52, v53, "(Apple Music Search) searchPromptGenerator: Adding music search keywords to the Apple Music search term");
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v54 = sub_1C75504FC();
  v197[0] = sub_1C71CC894(v54);
  sub_1C738C30C(v197);
  v55 = v197[0];
  v56 = sub_1C6FB6304();
  v57 = 0;
  v187 = (v55 & 0xC000000000000001);
  v188 = v56;
  v14 = MEMORY[0x1E69E7CC0];
  v15 = v186;
  while (1)
  {
    if (v188 == v57)
    {

      sub_1C75504FC();
      v65 = sub_1C754FEEC();
      v66 = sub_1C755117C();

      if (os_log_type_enabled(v65, v66))
      {
        OUTLINED_FUNCTION_13_3();
        swift_slowAlloc();
        OUTLINED_FUNCTION_12_66();
        v67 = swift_slowAlloc();
        v197[0] = v67;
        *v47 = 136315138;
        v68 = MEMORY[0x1CCA5D090](v14, MEMORY[0x1E69E6158]);
        v15 = sub_1C6F765A4(v68, v69, v197);

        *(v47 + 4) = v15;
        _os_log_impl(&dword_1C6F5C000, v65, v66, "(Apple Music Search) searchPromptGenerator: candidate keywords = %s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v67);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        v70 = OUTLINED_FUNCTION_4_0();
        MEMORY[0x1CCA5F8E0](v70);
      }

      v71 = v184;
      v72 = *(v14 + 16);
      if (!v72)
      {

        LODWORD(v187) = 0;
        goto LABEL_122;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB474C();
        v71 = v161;
      }

      v74 = *(v71 + 16);
      v73 = *(v71 + 24);
      if (v74 >= v73 >> 1)
      {
        OUTLINED_FUNCTION_15_2(v73);
        sub_1C6FB474C();
        v71 = v162;
      }

      OUTLINED_FUNCTION_73_19();
      *(v71 + 16) = v74 + 1;
      v74[v71 + 32] = 4;
      MEMORY[0x1CCA5CD70](0x662073676E6F7320, v15);
      v184 = v71;
      if (v174 >= v72)
      {
        v86 = sub_1C75504FC();
        v87 = v14;
        goto LABEL_120;
      }

      if ((v174 & 0x8000000000000000) == 0)
      {
        sub_1C74B833C();
        v74 = v75;
        v77 = v76;
        v79 = v78;
        if ((v78 & 1) == 0)
        {
          goto LABEL_95;
        }

        v15 = v5;
        sub_1C7551DEC();
        OUTLINED_FUNCTION_69_1();
        swift_unknownObjectRetain_n();
        v103 = swift_dynamicCastClass();
        if (!v103)
        {
          swift_unknownObjectRelease();
          v103 = MEMORY[0x1E69E7CC0];
        }

        v104 = *(v103 + 16);

        if (__OFSUB__(v79 >> 1, v77))
        {
          __break(1u);
        }

        else if (v104 == (v79 >> 1) - v77)
        {
          v87 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          v5 = v15;
          OUTLINED_FUNCTION_73_19();
          if (!v87)
          {
            v86 = swift_unknownObjectRelease();
            v87 = MEMORY[0x1E69E7CC0];
          }

          goto LABEL_120;
        }

        swift_unknownObjectRelease();
        v5 = v15;
        OUTLINED_FUNCTION_73_19();
LABEL_95:
        sub_1C739C274();
        v87 = v80;
        v86 = swift_unknownObjectRelease();
LABEL_120:
        v197[0] = 0x747265636E6F43;
        v197[1] = 0xE700000000000000;
        MEMORY[0x1EEE9AC00](v86);
        v105 = sub_1C70735F4();

        if (v105)
        {

          v197[0] = v195;
          v197[1] = v196;
          v191 = 0x662073676E6F7320;
          v192 = v15;
          v189 = 0x73676E6F7320;
          v190 = 0xE600000000000000;
          sub_1C6FB5E8C();
          OUTLINED_FUNCTION_2_80();
          v106 = sub_1C755155C();
          v108 = v107;

          LODWORD(v187) = 0;
          v195 = v106;
          v196 = v108;
          goto LABEL_122;
        }

        v143 = v87[2];
        v83 = v180;
        if (v143 < 2)
        {
          if (!v143)
          {

            v155 = sub_1C754FEEC();
            v156 = sub_1C755119C();
            v157 = OUTLINED_FUNCTION_72();
            if (os_log_type_enabled(v157, v158))
            {
              OUTLINED_FUNCTION_96_0();
              v159 = swift_slowAlloc();
              OUTLINED_FUNCTION_92_0(v159);
              _os_log_impl(&dword_1C6F5C000, v155, v156, "(Apple Music Search) searchPromptGenerator: Got 0 search keywords", v74, 2u);
              v160 = OUTLINED_FUNCTION_4_0();
              MEMORY[0x1CCA5F8E0](v160);
            }

            goto LABEL_149;
          }

          sub_1C6FB632C();
          v144 = v87[4];
          v146 = v87[5];
          sub_1C75504FC();
        }

        else
        {
          v197[0] = v87;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
          sub_1C703328C();
          v144 = sub_1C75505FC();
          v146 = v145;
        }

        MEMORY[0x1CCA5CD70](v144, v146);

LABEL_149:
        LODWORD(v187) = 0;
        goto LABEL_123;
      }

      __break(1u);
LABEL_167:
      OUTLINED_FUNCTION_15_2(v20);
      sub_1C6FB474C();
      v19 = v169;
      goto LABEL_10;
    }

    if (v187)
    {
      v47 = MEMORY[0x1CCA5DDD0](v57, v55);
    }

    else
    {
      if (v57 >= *(v55 + 16))
      {
        goto LABEL_164;
      }

      v47 = *(v55 + 8 * v57 + 32);
    }

    if (__OFADD__(v57, 1))
    {
      break;
    }

    v191 = v47;
    v58 = v5;
    sub_1C7393048(&v191, v197);

    v51 = v197[1];
    if (v197[1])
    {
      v29 = v5;
      v59 = v197[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB1814();
        v14 = v63;
      }

      v61 = *(v14 + 16);
      v60 = *(v14 + 24);
      v47 = v61 + 1;
      if (v61 >= v60 >> 1)
      {
        OUTLINED_FUNCTION_15(v60);
        sub_1C6FB1814();
        v14 = v64;
      }

      *(v14 + 16) = v47;
      v62 = v14 + 16 * v61;
      *(v62 + 32) = v59;
      *(v62 + 40) = v51;
      v5 = v58;
      v15 = v186;
    }

    ++v57;
  }

  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  OUTLINED_FUNCTION_0_35();
  swift_once();
LABEL_140:
  v134 = sub_1C754FF1C();
  __swift_project_value_buffer(v134, &dword_1EDD28D48);
  sub_1C75504FC();
  sub_1C75504FC();
  v135 = sub_1C754FEEC();
  v136 = sub_1C755117C();

  if (os_log_type_enabled(v135, v136))
  {
    OUTLINED_FUNCTION_13_3();
    v137 = swift_slowAlloc();
    OUTLINED_FUNCTION_98();
    v187 = swift_slowAlloc();
    v191 = v187;
    *v137 = 136315138;
    v197[0] = 0;
    v197[1] = 0xE000000000000000;
    sub_1C755180C();

    OUTLINED_FUNCTION_114_13(0x3D74706D6F7270);
    MEMORY[0x1CCA5CD70](0x547972657571202CLL, 0xED00003D73657079);
    v138 = MEMORY[0x1CCA5D090](v57, &type metadata for AppleMusicSearchQueryType);
    MEMORY[0x1CCA5CD70](v138);

    v139 = sub_1C6F765A4(v197[0], v197[1], &v191);

    *(v137 + 4) = v139;
    _os_log_impl(&dword_1C6F5C000, v135, v136, "(Apple Music Search) searchPromptGenerator: appleMusicSearchPrompt = %s", v137, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v187);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    v29 = v179;
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v140 = v29 + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
  OUTLINED_FUNCTION_56();
  swift_beginAccess();
  v141 = (v140 + *(type metadata accessor for StoryMusicCurationDiagnostics(0) + 76));
  *v141 = v14;
  v141[1] = v51;

  v142 = v178;
  *v178 = v14;
  v142[1] = v51;
  v142[2] = v57;
}

uint64_t sub_1C738EC28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_1C754F38C();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C738ECEC, 0, 0);
}

uint64_t sub_1C738ECEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_87_0();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_75_1();
  a16 = v18;
  __swift_project_boxed_opaque_existential_1(*(v18 + 72), *(*(v18 + 72) + 24));
  sub_1C754F1CC();
  v21 = sub_1C7391F74();
  if (qword_1EDD0ED88 != -1)
  {
    OUTLINED_FUNCTION_0_35();
    swift_once();
  }

  v22 = sub_1C754FF1C();
  *(v18 + 112) = OUTLINED_FUNCTION_23_2(v22, &dword_1EDD28D48);
  sub_1C75504FC();
  v23 = sub_1C754FEEC();
  v24 = sub_1C755117C();

  if (OUTLINED_FUNCTION_140_0())
  {
    v26 = *(v18 + 56);
    v25 = *(v18 + 64);
    v27 = swift_slowAlloc();
    OUTLINED_FUNCTION_98();
    v28 = swift_slowAlloc();
    a9 = v28;
    *v27 = 67109378;
    *(v27 + 4) = v21;
    *(v27 + 8) = 2080;
    *(v27 + 10) = sub_1C6F765A4(v26, v25, &a9);
    _os_log_impl(&dword_1C6F5C000, v23, v24, "(Apple Music Search) Call Apple Music Smart search (includeNaturalLanguageResults=%{BOOL}d) for prompt %s)", v27, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v28);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v30 = *(v18 + 56);
  v29 = *(v18 + 64);
  type metadata accessor for AppleMusicSmartSearch();
  *(v18 + 16) = v30;
  *(v18 + 24) = v29;
  *(v18 + 32) = &unk_1F46AA158;
  *(v18 + 40) = 10;
  *(v18 + 48) = v21;
  sub_1C75504FC();
  v31 = swift_task_alloc();
  *(v18 + 120) = v31;
  *v31 = v18;
  v31[1] = sub_1C738EF14;
  OUTLINED_FUNCTION_88_0();

  return static AppleMusicSmartSearch.searchCatalogForSongs(with:)(v32);
}

uint64_t sub_1C738EF14()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 128) = v5;
  *(v3 + 136) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C738F028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v11 = *(v10[16] + 16);
  if (v11)
  {
    v12 = sub_1C754FEEC();
    sub_1C755117C();
    v13 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v13, v14))
    {
      OUTLINED_FUNCTION_13_3();
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = v11;
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v16, v17, v18, v19, v20, 0xCu);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v22 = v10[12];
    v21 = v10[13];
    v23 = v10[11];
    v24 = v10[9];

    OUTLINED_FUNCTION_70(v24, v24[3]);
    OUTLINED_FUNCTION_109_0();
    sub_1C754F1AC();
    (*(v22 + 8))(v21, v23);

    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_88_0();

    return v27(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
  }

  else
  {

    v34 = sub_1C754FEEC();
    sub_1C755119C();
    v35 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v35, v36))
    {
      OUTLINED_FUNCTION_96_0();
      v37 = swift_slowAlloc();
      OUTLINED_FUNCTION_37_0(v37);
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v38, v39, v40, v41, v42, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    sub_1C70EB0F0();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    OUTLINED_FUNCTION_66_22(v43, 4);
    swift_willThrow();
    OUTLINED_FUNCTION_80_0(v10[9], *(v10[9] + 24));
    OUTLINED_FUNCTION_109_0();
    sub_1C754F1AC();
    v44 = OUTLINED_FUNCTION_9_52();
    v45(v44);

    OUTLINED_FUNCTION_7_46();
    OUTLINED_FUNCTION_88_0();

    return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10);
  }
}

uint64_t sub_1C738F22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();

  OUTLINED_FUNCTION_80_0(*(v10 + 72), *(*(v10 + 72) + 24));
  OUTLINED_FUNCTION_109_0();
  sub_1C754F1AC();
  v11 = OUTLINED_FUNCTION_9_52();
  v12(v11);

  OUTLINED_FUNCTION_7_46();
  OUTLINED_FUNCTION_88_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t StoryMusicCurator.filterOutExplicitIfNeeded(songs:queryInfo:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  v16[2] = a3;
  sub_1C75504FC();
  sub_1C706D018(sub_1C7394808, v16, v5);
  v7 = v6;
  if ((static StoryMusicCurator.isUserAllowedExplicitContent()() & 1) == 0 || !*(*(a3 + 56) + 16))
  {

    goto LABEL_10;
  }

  v8 = *(v7 + 16);

  if (!v8)
  {
LABEL_10:
    type metadata accessor for AppleMusicSmartSearch();
    return static AppleMusicSmartSearch.filterOutExplicit(songs:)(a1);
  }

  if (qword_1EDD0ED88 != -1)
  {
    OUTLINED_FUNCTION_0_35();
    swift_once();
  }

  v9 = sub_1C754FF1C();
  OUTLINED_FUNCTION_23_2(v9, &dword_1EDD28D48);
  v10 = sub_1C754FEEC();
  v11 = sub_1C755117C();
  v12 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v12, v13))
  {
    OUTLINED_FUNCTION_96_0();
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1C6F5C000, v10, v11, "(Apple Music Search) Not filtering titles on explicit content", v14, 2u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  sub_1C75504FC();
  return a1;
}

uint64_t sub_1C738F460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 880) = v3;
  *(v4 + 872) = a2;
  *(v4 + 864) = a1;
  *(v4 + 912) = 0;
  v5 = swift_task_alloc();
  *(v4 + 888) = v5;
  *v5 = v4;
  v5[1] = sub_1C738F510;

  return StoryMusicCurator.requestRecentlyUsedSongs(for:eventRecorder:)();
}

uint64_t sub_1C738F510()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_39_0();
  v4 = v3;
  OUTLINED_FUNCTION_6_4();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_14();
  *v7 = v6;
  *(v4 + 896) = v0;

  if (!v0)
  {
    *(v4 + 904) = v1;
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C738F614()
{
  v155 = v0;
  v2 = sub_1C744EDAC(v0[113], *(v0[109] + 64));

  if (qword_1EDD0ED88 != -1)
  {
LABEL_62:
    OUTLINED_FUNCTION_0_35();
    swift_once();
  }

  v3 = sub_1C754FF1C();
  OUTLINED_FUNCTION_23_2(v3, &dword_1EDD28D48);
  sub_1C75504FC();
  v4 = sub_1C754FEEC();
  v5 = sub_1C755118C();

  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_13_3();
    v6 = swift_slowAlloc();
    OUTLINED_FUNCTION_98();
    v1 = swift_slowAlloc();
    v154[0] = v1;
    *v6 = 136315138;
    v7 = MEMORY[0x1CCA5D090](v2, MEMORY[0x1E69E6158]);
    v9 = sub_1C6F765A4(v7, v8, v154);

    *(v6 + 4) = v9;
    _os_log_impl(&dword_1C6F5C000, v4, v5, "(Apple Music Search) recentlyUsedIds = %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v1);
    v10 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x1CCA5F8E0](v10);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v11 = 0;
  v12 = v0[108];
  v13 = *(v12 + 16);
  v142 = v12;
  v14 = (v12 + 32);
  v146 = MEMORY[0x1E69E7CC0];
  buf = (v12 + 32);
LABEL_5:
  v15 = &v14[192 * v11];
  while (v13 != v11)
  {
    if (v11 >= v13)
    {
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    memcpy(v0 + 2, v15, 0xC0uLL);
    if (__OFADD__(v11, 1))
    {
      goto LABEL_59;
    }

    v1 = v0[4];
    v0[104] = v0[3];
    v0[105] = v1;
    *(swift_task_alloc() + 16) = v0 + 104;
    sub_1C7080654((v0 + 2), (v0 + 26));
    sub_1C75504FC();
    OUTLINED_FUNCTION_109_0();
    v16 = sub_1C70735F4();

    if (!v16)
    {
      v17 = v146;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v154[0] = v146;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = OUTLINED_FUNCTION_99();
        sub_1C716E4AC(v19, v20, v21);
        v17 = v154[0];
      }

      v22 = *(v17 + 16);
      v1 = (v22 + 1);
      if (v22 >= *(v17 + 24) >> 1)
      {
        v23 = OUTLINED_FUNCTION_23_45();
        sub_1C716E4AC(v23, v24, v25);
        v17 = v154[0];
      }

      *(v17 + 16) = v1;
      v146 = v17;
      memcpy((v17 + 192 * v22 + 32), v0 + 2, 0xC0uLL);
      ++v11;
      v14 = buf;
      goto LABEL_5;
    }

    sub_1C70806B0((v0 + 2));
    ++v11;
    v15 += 192;
  }

  if (*(v146 + 16))
  {
    v152 = *(v146 + 16);
    v26 = 0;
    v27 = v142 + 32;
    bufa = MEMORY[0x1E69E7CC0];
    v143 = v142 + 32;
LABEL_18:
    v28 = (v27 + 192 * v26);
    while (v13 != v26)
    {
      if (v26 >= v13)
      {
        goto LABEL_60;
      }

      memcpy(v0 + 50, v28, 0xC0uLL);
      v29 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_61;
      }

      v1 = v0[52];
      v0[106] = v0[51];
      v0[107] = v1;
      *(swift_task_alloc() + 16) = v0 + 106;
      sub_1C7080654((v0 + 50), (v0 + 74));
      sub_1C75504FC();
      v30 = sub_1C70735F4();

      if (v30)
      {
        v31 = bufa;
        v32 = swift_isUniquelyReferenced_nonNull_native();
        v154[0] = bufa;
        if ((v32 & 1) == 0)
        {
          v33 = OUTLINED_FUNCTION_99();
          sub_1C716E4AC(v33, v34, v35);
          v31 = v154[0];
        }

        v36 = *(v31 + 16);
        v1 = (v36 + 1);
        if (v36 >= *(v31 + 24) >> 1)
        {
          v37 = OUTLINED_FUNCTION_23_45();
          sub_1C716E4AC(v37, v38, v39);
          v31 = v154[0];
        }

        *(v31 + 16) = v1;
        bufa = v31;
        memcpy((v31 + 192 * v36 + 32), v0 + 50, 0xC0uLL);
        v26 = v29;
        v27 = v143;
        goto LABEL_18;
      }

      sub_1C70806B0((v0 + 50));
      ++v26;
      v28 += 192;
    }

    v40 = bufa;

    v41 = sub_1C754FEEC();
    v42 = sub_1C755117C();

    if (os_log_type_enabled(v41, v42))
    {
      OUTLINED_FUNCTION_13_3();
      v43 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v44 = swift_slowAlloc();
      v49 = v44;
      v153 = v44;
      v50 = &unk_1C755E000;
      *v43 = 136315138;
      v51 = *(bufa + 2);
      v52 = MEMORY[0x1E69E7CC0];
      if (v51)
      {
        v141 = v44;
        v144 = v42;
        v150 = v41;
        v154[0] = MEMORY[0x1E69E7CC0];
        sub_1C6F7ED9C(0, v51, 0, v45, v46, v47, v48);
        v52 = v154[0];
        v53 = *(v154[0] + 16);
        v54 = 16 * v53;
        v55 = (bufa + 48);
        do
        {
          v57 = *(v55 - 1);
          v56 = *v55;
          v154[0] = v52;
          v58 = *(v52 + 24);
          sub_1C75504FC();
          if (v53 >= v58 >> 1)
          {
            OUTLINED_FUNCTION_321();
            sub_1C6F7ED9C(v60, v61, v62, v63, v64, v65, v66);
            v52 = v154[0];
          }

          *(v52 + 16) = v53 + 1;
          v59 = v52 + v54;
          *(v59 + 32) = v57;
          *(v59 + 40) = v56;
          v54 += 16;
          v55 += 24;
          ++v53;
          --v51;
        }

        while (v51);
        v50 = &unk_1C755E000;
        v40 = bufa;
        v41 = v150;
        v42 = v144;
        v49 = v141;
      }

      MEMORY[0x1CCA5D090](v52, MEMORY[0x1E69E6158]);
      OUTLINED_FUNCTION_100_16();

      v92 = OUTLINED_FUNCTION_455();
      v95 = sub_1C6F765A4(v92, v93, v94);

      *(v43 + 4) = v95;
      _os_log_impl(&dword_1C6F5C000, v41, v42, "(Apple Music Search) Used song songs Ids: %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v49);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {

      v50 = &unk_1C755E000;
    }

    v96 = *(v40 + 2);
    if (v96)
    {
      v154[0] = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_65_23(v85, v86, v87, v88, v89, v90, v91);
      v97 = 0;
      v98 = v154[0];
      v99 = *(v154[0] + 16);
      v100 = 16 * v99;
      do
      {
        v102 = *&bufa[v97 + 40];
        v101 = *&bufa[v97 + 48];
        v154[0] = v98;
        v103 = *(v98 + 24);
        sub_1C75504FC();
        if (v99 >= v103 >> 1)
        {
          v105 = OUTLINED_FUNCTION_23_45();
          sub_1C6F7ED9C(v105, v106, v107, v108, v109, v110, v111);
          v98 = v154[0];
        }

        *(v98 + 16) = v99 + 1;
        v104 = v98 + v100;
        *(v104 + 32) = v102;
        *(v104 + 40) = v101;
        v100 += 16;
        v97 += 192;
        ++v99;
        --v96;
      }

      while (v96);

      v50 = &unk_1C755E000;
    }

    else
    {

      v98 = MEMORY[0x1E69E7CC0];
    }

    v112 = v0[110] + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
    OUTLINED_FUNCTION_56();
    swift_beginAccess();
    *(v112 + *(type metadata accessor for StoryMusicCurationDiagnostics(0) + 104)) = v98;

    v84 = v146;
    v113 = sub_1C754FEEC();
    v114 = sub_1C755118C();

    if (os_log_type_enabled(v113, v114))
    {
      v151 = v114;
      OUTLINED_FUNCTION_13_3();
      v115 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v145 = swift_slowAlloc();
      v153 = v145;
      bufb = v115;
      *v115 = v50[350];
      v154[0] = MEMORY[0x1E69E7CC0];
      sub_1C6F7ED9C(0, v152, 0, v116, v117, v118, v119);
      v120 = 0;
      v121 = v154[0];
      v122 = *(v154[0] + 16);
      v123 = 16 * v122;
      do
      {
        v124 = *(v146 + v120 + 40);
        v125 = *(v146 + v120 + 48);
        v154[0] = v121;
        v126 = *(v121 + 24);
        sub_1C75504FC();
        if (v122 >= v126 >> 1)
        {
          v128 = OUTLINED_FUNCTION_23_45();
          sub_1C6F7ED9C(v128, v129, v130, v131, v132, v133, v134);
          v121 = v154[0];
        }

        *(v121 + 16) = v122 + 1;
        v127 = v121 + v123;
        *(v127 + 32) = v124;
        *(v127 + 40) = v125;
        v123 += 16;
        v120 += 192;
        ++v122;
        --v152;
      }

      while (v152);
      v135 = MEMORY[0x1CCA5D090](v121, MEMORY[0x1E69E6158]);
      v137 = v136;

      v138 = sub_1C6F765A4(v135, v137, &v153);

      *(bufb + 4) = v138;
      _os_log_impl(&dword_1C6F5C000, v113, v151, "(Apple Music Search) Unused songs Ids: %s", bufb, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v145);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();

      v84 = v146;
    }

    else
    {
    }
  }

  else
  {

    v67 = sub_1C754FEEC();
    sub_1C755117C();
    v68 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v68, v69))
    {
      OUTLINED_FUNCTION_13_3();
      swift_slowAlloc();
      OUTLINED_FUNCTION_12_66();
      v70 = swift_slowAlloc();
      v154[0] = v70;
      *v1 = 136315138;
      *(v1 + 4) = sub_1C6F765A4(0xD000000000000044, 0x80000001C75ACED0, v154);
      OUTLINED_FUNCTION_39();
      _os_log_impl(v71, v72, v73, v74, v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v70);
      v76 = OUTLINED_FUNCTION_2_44();
      MEMORY[0x1CCA5F8E0](v76);
      v77 = OUTLINED_FUNCTION_4_0();
      MEMORY[0x1CCA5F8E0](v77);
    }

    v78 = v0[108];
    v79 = v0[110] + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
    swift_beginAccess();
    v80 = *(type metadata accessor for StoryMusicCurationDiagnostics(0) + 132);
    sub_1C6FB0600();
    v81 = *(*(v79 + v80) + 16);
    sub_1C6FB0EFC();
    v82 = *(v79 + v80);
    *(v82 + 16) = v81 + 1;
    v83 = v82 + 16 * v81;
    *(v83 + 32) = 0xD000000000000044;
    *(v83 + 40) = 0x80000001C75ACED0;
    *(v79 + v80) = v82;
    swift_endAccess();
    v154[0] = v78;
    sub_1C75504FC();
    sub_1C70CFF78();
    v84 = v154[0];
  }

  OUTLINED_FUNCTION_116();

  return v139(v84);
}

uint64_t sub_1C7390010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[105] = a3;
  v4[106] = v3;
  v4[104] = a1;
  v4[107] = *v3;
  v4[108] = *(a2 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1C7390068, 0, 0);
}

void sub_1C7390068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  if (qword_1EDD0ED88 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v14 = sub_1C754FF1C();
    v12[109] = __swift_project_value_buffer(v14, &dword_1EDD28D48);
    v15 = sub_1C754FEEC();
    v16 = sub_1C755117C();
    if (os_log_type_enabled(v15, v16))
    {
      OUTLINED_FUNCTION_96_0();
      v17 = swift_slowAlloc();
      OUTLINED_FUNCTION_92_0(v17);
      _os_log_impl(&dword_1C6F5C000, v15, v16, "(Apple Music Search) Run Song Safety validation", v13, 2u);
      v18 = OUTLINED_FUNCTION_4_0();
      MEMORY[0x1CCA5F8E0](v18);
    }

    if ((static StoryMusicCurator.isUserAllowedExplicitContent()() & 1) == 0 || !sub_1C705FC40(0, v12[108]))
    {
      OUTLINED_FUNCTION_80_0((v12[106] + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_safetyController), *(v12[106] + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_safetyController + 24));
      v53 = swift_task_alloc();
      v12[110] = v53;
      *v53 = v12;
      v53[1] = sub_1C7390514;
      OUTLINED_FUNCTION_44();

      v58(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12);
      return;
    }

    v19 = sub_1C754FEEC();
    sub_1C755117C();
    v20 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v20, v21))
    {
      OUTLINED_FUNCTION_96_0();
      v22 = swift_slowAlloc();
      OUTLINED_FUNCTION_37_0(v22);
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v23, v24, v25, v26, v27, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v28 = v12[104];

    v36 = *(v28 + 16);
    v37 = MEMORY[0x1E69E7CC0];
    v95 = v12;
    if (v36)
    {
      v38 = v12[104];
      v97[0] = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_83_9(v29, v30, v31, v32, v33, v34, v35);
      v39 = v97[0];
      v40 = *(v97[0] + 16);
      v41 = 16 * v40;
      v42 = (v38 + 48);
      do
      {
        v43 = *(v42 - 1);
        v13 = *v42;
        v97[0] = v39;
        v44 = *(v39 + 24);
        sub_1C75504FC();
        if (v40 >= v44 >> 1)
        {
          OUTLINED_FUNCTION_177();
          sub_1C6F7ED9C(v46, v47, v48, v49, v50, v51, v52);
          v39 = v97[0];
        }

        *(v39 + 16) = v40 + 1;
        v45 = v39 + v41;
        *(v45 + 32) = v43;
        *(v45 + 40) = v13;
        v41 += 16;
        v42 += 24;
        ++v40;
        --v36;
      }

      while (v36);
      v12 = v95;
    }

    else
    {
      v39 = MEMORY[0x1E69E7CC0];
    }

    v62 = v12[104];
    v63 = v12[106] + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
    OUTLINED_FUNCTION_56();
    swift_beginAccess();
    v94 = type metadata accessor for StoryMusicCurationDiagnostics(0);
    *(v63 + *(v94 + 116)) = v39;

    sub_1C75504FC();
    sub_1C7033F04(10, v62);
    v12 = (v66 >> 1);
    v70 = (v66 >> 1) - v65;
    if (__OFSUB__(v66 >> 1, v65))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      return;
    }

    v93 = v63;
    if (!v70)
    {
      break;
    }

    v71 = v64;
    v72 = v65;
    sub_1C6F7ED9C(0, v70 & ~(v70 >> 63), 0, v66, v67, v68, v69);
    if (v70 < 0)
    {
      goto LABEL_35;
    }

    v73 = v37;
    v74 = (v71 + 192 * v72);
    while (v72 < v12)
    {
      memcpy(__dst, v74, sizeof(__dst));
      memcpy(v97, __dst, sizeof(v97));
      v75 = StoryMusicCurationSong.description.getter();
      v77 = v76;
      v13 = *(v73 + 16);
      v78 = *(v73 + 24);
      if (v13 >= v78 >> 1)
      {
        v80 = OUTLINED_FUNCTION_15(v78);
        sub_1C6F7ED9C(v80, (v13 + 1), 1, v81, v82, v83, v84);
      }

      *(v73 + 16) = v13 + 1;
      v79 = v73 + 16 * v13;
      *(v79 + 32) = v75;
      *(v79 + 40) = v77;
      if ((v12 - 1) == v72)
      {
        swift_unknownObjectRelease();
        goto LABEL_29;
      }

      ++v72;
      v74 += 192;
    }

    __break(1u);
LABEL_33:
    OUTLINED_FUNCTION_0_35();
    swift_once();
  }

  swift_unknownObjectRelease();
  v73 = MEMORY[0x1E69E7CC0];
LABEL_29:
  *(v93 + *(v94 + 120)) = v73;

  OUTLINED_FUNCTION_43();
  sub_1C75504FC();
  OUTLINED_FUNCTION_44();

  v86(v85, v86, v87, v88, v89, v90, v91, v92, a9, a10, a11, a12);
}

uint64_t sub_1C7390514()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 888) = v3;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1C7390604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v13 = v12[104];
  sub_1C7388CEC(v12[111], v14, v15, v16, v17, v18, v19);
  OUTLINED_FUNCTION_98_5();

  sub_1C706D154();
  v21 = *(v13 + 16);
  v178 = v20;
  v183 = v21;
  if (v21)
  {
    v22 = v12[104];
    v187[0] = MEMORY[0x1E69E7CC0];
    v23 = OUTLINED_FUNCTION_18_54();
    sub_1C6F7ED9C(v23, v24, v25, v26, v27, v28, v29);
    v30 = v187[0];
    v31 = *(v187[0] + 16);
    v32 = 16 * v31;
    v33 = (v22 + 48);
    do
    {
      v35 = *(v33 - 1);
      v34 = *v33;
      v187[0] = v30;
      v36 = *(v30 + 24);
      sub_1C75504FC();
      if (v31 >= v36 >> 1)
      {
        OUTLINED_FUNCTION_177();
        sub_1C6F7ED9C(v38, v39, v40, v41, v42, v43, v44);
        v30 = v187[0];
      }

      *(v30 + 16) = v31 + 1;
      v37 = v30 + v32;
      *(v37 + 32) = v35;
      *(v37 + 40) = v34;
      v32 += 16;
      v33 += 24;
      ++v31;
      --v21;
    }

    while (v21);
    v45 = v178;
    v21 = v183;
  }

  else
  {
    v45 = v20;
  }

  sub_1C706D154();
  v177 = sub_1C7238810(v45, v46);
  if (v21)
  {
    v47 = v12[104];
    v187[0] = MEMORY[0x1E69E7CC0];
    v48 = OUTLINED_FUNCTION_18_54();
    sub_1C6F7ED9C(v48, v49, v50, v51, v52, v53, v54);
    v55 = v187[0];
    v56 = *(v187[0] + 16);
    v57 = 16 * v56;
    v58 = (v47 + 48);
    do
    {
      v60 = *(v58 - 1);
      v59 = *v58;
      v187[0] = v55;
      v61 = *(v55 + 24);
      sub_1C75504FC();
      if (v56 >= v61 >> 1)
      {
        sub_1C6F7ED9C(v61 > 1, v56 + 1, 1, v62, v63, v64, v65);
        v55 = v187[0];
      }

      *(v55 + 16) = v56 + 1;
      v66 = v55 + v57;
      *(v66 + 32) = v60;
      *(v66 + 40) = v59;
      v57 += 16;
      v58 += 24;
      ++v56;
      --v21;
    }

    while (v21);
  }

  v67 = v12[104];
  sub_1C706D154();
  v69 = v68;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C70738FC();
  v71 = sub_1C7238810(v70, v69);

  v72 = 0;
  v73 = v67 + 32;
  v74 = MEMORY[0x1E69E7CC0];
LABEL_14:
  while (v72 != v183)
  {
    if (v72 >= v183)
    {
      __break(1u);
LABEL_74:
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
      return;
    }

    memcpy(v12 + 2, (v73 + 192 * v72), 0xC0uLL);
    v75 = __OFADD__(v72++, 1);
    if (v75)
    {
      goto LABEL_74;
    }

    if (*(v71 + 16))
    {
      v77 = v12[3];
      v76 = v12[4];
      sub_1C7551F3C();
      sub_1C7080654((v12 + 2), (v12 + 26));
      sub_1C75504FC();
      sub_1C75505AC();
      v78 = sub_1C7551FAC();
      v79 = ~(-1 << *(v71 + 32));
      do
      {
        v80 = v78 & v79;
        if (((*(v71 + 56 + (((v78 & v79) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v78 & v79)) & 1) == 0)
        {
          sub_1C70806B0((v12 + 2));

          goto LABEL_14;
        }

        v81 = (*(v71 + 48) + 16 * v80);
        if (*v81 == v77 && v81[1] == v76)
        {
          break;
        }

        v83 = sub_1C7551DBC();
        v78 = v80 + 1;
      }

      while ((v83 & 1) == 0);

      __dst[0] = v74;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v84 = OUTLINED_FUNCTION_99();
        sub_1C716E4AC(v84, v85, v86);
        v74 = __dst[0];
      }

      v88 = *(v74 + 16);
      v87 = *(v74 + 24);
      if (v88 >= v87 >> 1)
      {
        v89 = OUTLINED_FUNCTION_15(v87);
        sub_1C716E4AC(v89, v88 + 1, 1);
        v74 = __dst[0];
      }

      *(v74 + 16) = v88 + 1;
      memcpy((v74 + 192 * v88 + 32), v12 + 2, 0xC0uLL);
    }
  }

  v182 = v74;
  v90 = 0;
  v91 = MEMORY[0x1E69E7CC0];
  v180 = v73;
LABEL_32:
  while (v90 != v183)
  {
    if (v90 >= v183)
    {
      goto LABEL_75;
    }

    memcpy(v12 + 50, (v73 + 192 * v90), 0xC0uLL);
    v75 = __OFADD__(v90++, 1);
    if (v75)
    {
      goto LABEL_76;
    }

    if (*(v178 + 16))
    {
      v92 = v91;
      v94 = v12[51];
      v93 = v12[52];
      sub_1C7551F3C();
      sub_1C7080654((v12 + 50), (v12 + 74));
      sub_1C75504FC();
      sub_1C75505AC();
      v95 = sub_1C7551FAC();
      v96 = ~(-1 << *(v178 + 32));
      do
      {
        v97 = v95 & v96;
        if (((*(v178 + 56 + (((v95 & v96) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v95 & v96)) & 1) == 0)
        {
          sub_1C70806B0((v12 + 50));

          v91 = v92;
          v73 = v180;
          goto LABEL_32;
        }

        v98 = (*(v178 + 48) + 16 * v97);
        if (*v98 == v94 && v98[1] == v93)
        {
          break;
        }

        v100 = sub_1C7551DBC();
        v95 = v97 + 1;
      }

      while ((v100 & 1) == 0);

      v91 = v92;
      __dst[0] = v92;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v101 = OUTLINED_FUNCTION_99();
        sub_1C716E4AC(v101, v102, v103);
        v91 = __dst[0];
      }

      v73 = v180;
      v105 = *(v91 + 16);
      v104 = *(v91 + 24);
      if (v105 >= v104 >> 1)
      {
        OUTLINED_FUNCTION_15(v104);
        OUTLINED_FUNCTION_321();
        sub_1C716E4AC(v106, v107, v108);
        v91 = __dst[0];
      }

      *(v91 + 16) = v105 + 1;
      memcpy((v91 + 192 * v105 + 32), v12 + 50, 0xC0uLL);
    }
  }

  v184 = v91;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  v109 = sub_1C754FEEC();
  v110 = sub_1C755117C();
  v111 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v111, v112))
  {
    OUTLINED_FUNCTION_98();
    v113 = swift_slowAlloc();
    *v113 = 134218496;
    *(v113 + 4) = *(v178 + 16);

    *(v113 + 12) = 2048;
    *(v113 + 14) = *(v177 + 16);

    *(v113 + 22) = 2048;
    v114 = *(v71 + 16);

    *(v113 + 24) = v114;

    _os_log_impl(&dword_1C6F5C000, v109, v110, "(Apple Music Search) sanitizeAppleMusicSongs: safe: %ld unsafe: %ld unchecked: %ld", v113, 0x20u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v115 = v12[106];
  v116 = sub_1C71CD85C(v178);
  v117 = v115 + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
  OUTLINED_FUNCTION_56();
  swift_beginAccess();
  v118 = type metadata accessor for StoryMusicCurationDiagnostics(0);
  *(v117 + v118[27]) = v116;

  v181 = v117;
  *(v117 + v118[28]) = sub_1C71CD85C(v177);

  v126 = v74;
  v127 = *(v74 + 16);
  v179 = v118;
  if (v127)
  {
    v187[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_65_23(v119, v120, v121, v122, v123, v124, v125);
    v128 = 0;
    v129 = v187[0];
    v130 = *(v187[0] + 16);
    v131 = 16 * v130;
    do
    {
      v132 = *(v126 + v128 + 40);
      v133 = *(v126 + v128 + 48);
      v187[0] = v129;
      v134 = *(v129 + 24);
      sub_1C75504FC();
      if (v130 >= v134 >> 1)
      {
        OUTLINED_FUNCTION_137_0();
        sub_1C6F7ED9C(v136, v137, v138, v139, v140, v141, v142);
        v129 = v187[0];
      }

      *(v129 + 16) = v130 + 1;
      v135 = v129 + v131;
      *(v135 + 32) = v132;
      *(v135 + 40) = v133;
      v131 += 16;
      v128 += 192;
      ++v130;
      --v127;
      v126 = v182;
    }

    while (v127);

    v118 = v179;
  }

  else
  {

    v129 = MEMORY[0x1E69E7CC0];
  }

  v143 = v181;
  *(v181 + v118[29]) = v129;

  sub_1C7033F04(10, v184);
  v150 = (v146 >> 1) - v145;
  if (__OFSUB__(v146 >> 1, v145))
  {
    goto LABEL_78;
  }

  if (v150)
  {
    v151 = v144;
    v152 = v145;
    v153 = v146 >> 1;
    v185 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v150 & ~(v150 >> 63), 0, v146, v147, v148, v149);
    if ((v150 & 0x8000000000000000) == 0)
    {
      v154 = v185;
      v155 = (v151 + 192 * v152);
      while (v152 < v153)
      {
        memcpy(__dst, v155, sizeof(__dst));
        memcpy(v187, __dst, sizeof(v187));
        v156 = StoryMusicCurationSong.description.getter();
        v158 = v157;
        v160 = *(v185 + 16);
        v159 = *(v185 + 24);
        if (v160 >= v159 >> 1)
        {
          OUTLINED_FUNCTION_15(v159);
          OUTLINED_FUNCTION_177();
          sub_1C6F7ED9C(v162, v163, v164, v165, v166, v167, v168);
        }

        *(v185 + 16) = v160 + 1;
        v161 = v185 + 16 * v160;
        *(v161 + 32) = v156;
        *(v161 + 40) = v158;
        if (v153 - 1 == v152)
        {
          swift_unknownObjectRelease();
          v118 = v179;
          v143 = v181;
          goto LABEL_70;
        }

        ++v152;
        v155 += 192;
      }

      goto LABEL_77;
    }

    goto LABEL_79;
  }

  swift_unknownObjectRelease();
  v154 = MEMORY[0x1E69E7CC0];
LABEL_70:
  *(v143 + v118[30]) = v154;

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_44();

  v171(v169, v170, v171, v172, v173, v174, v175, v176, a9, a10, a11, a12);
}

uint64_t StoryMusicCurator.inflateAndSort(songs:using:sortUpToIndex:eventRecorder:)()
{
  OUTLINED_FUNCTION_49_0();
  v1[19] = v2;
  v1[20] = v0;
  v1[18] = v3;
  memcpy(v1 + 2, v4, 0x80uLL);
  v5 = swift_task_alloc();
  v1[21] = v5;
  *v5 = v1;
  v5[1] = sub_1C7390F54;
  v6 = OUTLINED_FUNCTION_0_11();

  return sub_1C73920A4(v6, v7);
}

uint64_t sub_1C7390F54()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  v5[22] = v9;
  v5[23] = v0;

  if (v0)
  {
    v10 = *(v7 + 8);

    return v10();
  }

  else
  {
    v5[24] = v3;
    OUTLINED_FUNCTION_41();

    return MEMORY[0x1EEE6DFA0](v12, v13, v14);
  }
}

void sub_1C7391088()
{
  v258 = v0;
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  __dst[0] = 0xD000000000000002;
  __dst[1] = 0x80000001C759F2D0;
  MEMORY[0x1CCA5CD70](v1, v3);
  MEMORY[0x1CCA5CD70](32032, 0xE200000000000000);
  v4 = static MusicCurationJsonParser.musicCurationSongs(fromAppleMusicJson:from:songType:)(0xD00000000000001CLL, 0x80000001C759F2D0, 0xD000000000000017, 0x80000001C759F2F0, __dst);
  if (v2)
  {

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_19_37();

    __asm { BRAA            X1, X16 }
  }

  v7 = v4;
  v8 = v0[18];

  v16 = *(v8 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  buf = v7;
  if (v16)
  {
    v18 = v0[18];
    __dst[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_83_9(v9, v10, v11, v12, v13, v14, v15);
    v17 = __dst[0];
    v19 = *(__dst[0] + 16);
    v20 = 2 * v19;
    v21 = (v18 + 48);
    do
    {
      v23 = *(v21 - 1);
      v22 = *v21;
      __dst[0] = v17;
      v24 = v17[3];
      sub_1C75504FC();
      if (v19 >= v24 >> 1)
      {
        OUTLINED_FUNCTION_55_28();
        OUTLINED_FUNCTION_177();
        sub_1C6F7ED9C(v26, v27, v28, v29, v30, v31, v32);
        v17 = __dst[0];
      }

      v17[2] = v19 + 1;
      v25 = &v17[v20];
      v25[4] = v23;
      v25[5] = v22;
      v20 += 2;
      v21 += 24;
      ++v19;
      --v16;
    }

    while (v16);
    v7 = buf;
  }

  __dst[0] = v7;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C710B628(__dst, v17);
  v33 = v0[19];

  v34 = __dst[0];
  v35 = StoryMusicCurator.sortByMoodUpToIndexOverride(_:)(v33);
  if (!v35)
  {

    if (qword_1EDD0ED88 == -1)
    {
LABEL_22:
      v50 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v50, &dword_1EDD28D48);
      v51 = sub_1C754FEEC();
      sub_1C755118C();
      v52 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v52, v53))
      {
        OUTLINED_FUNCTION_96_0();
        v54 = swift_slowAlloc();
        OUTLINED_FUNCTION_37_0(v54);
        OUTLINED_FUNCTION_8_1();
        _os_log_impl(v55, v56, v57, v58, v59, 2u);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

LABEL_94:
      OUTLINED_FUNCTION_116();
      OUTLINED_FUNCTION_19_37();

      __asm { BRAA            X2, X16 }
    }

LABEL_98:
    OUTLINED_FUNCTION_0_35();
    swift_once();
    goto LABEL_22;
  }

  v36 = *(v34 + 16);
  if (v36 >= v35)
  {
    v37 = v35;
  }

  else
  {
    v37 = *(v34 + 16);
  }

  if (qword_1EDD0ED88 != -1)
  {
    OUTLINED_FUNCTION_0_35();
    swift_once();
  }

  v38 = sub_1C754FF1C();
  __swift_project_value_buffer(v38, &dword_1EDD28D48);
  v39 = sub_1C754FEEC();
  v40 = sub_1C755117C();
  v41 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v41, v42))
  {
    OUTLINED_FUNCTION_13_3();
    v43 = swift_slowAlloc();
    *v43 = 134217984;
    *(v43 + 4) = v37;
    _os_log_impl(&dword_1C6F5C000, v39, v40, "(Apple Music Search) Sorting songs by mood up to adjusted index %ld", v43, 0xCu);
    v44 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x1CCA5F8E0](v44);
  }

  sub_1C74B833C();
  v46 = v45;
  v48 = v47;
  v245 = v34;
  if (v47)
  {
    sub_1C7551DEC();
    OUTLINED_FUNCTION_98_5();
    swift_unknownObjectRetain_n();
    v60 = swift_dynamicCastClass();
    if (!v60)
    {
      swift_unknownObjectRelease();
      v60 = MEMORY[0x1E69E7CC0];
    }

    v61 = *(v60 + 16);

    if (__OFSUB__(v48 >> 1, v46))
    {
      __break(1u);
    }

    else if (v61 == (v48 >> 1) - v46)
    {
      swift_dynamicCastClass();
      OUTLINED_FUNCTION_98_5();
      swift_unknownObjectRelease();
      v34 = v245;
      v248 = v40;
      if (v40)
      {
LABEL_32:
        if (*(v34 + 16) >= v37)
        {
          sub_1C74B833C();
          v63 = v62;
          v65 = v64;
          if (v64)
          {
            sub_1C7551DEC();
            OUTLINED_FUNCTION_98_5();
            swift_unknownObjectRetain_n();
            v67 = swift_dynamicCastClass();
            if (!v67)
            {
              swift_unknownObjectRelease();
              v67 = MEMORY[0x1E69E7CC0];
            }

            v68 = *(v67 + 16);

            if (__OFSUB__(v65 >> 1, v63))
            {
              __break(1u);
            }

            else if (v68 == (v65 >> 1) - v63)
            {
              swift_dynamicCastClass();
              OUTLINED_FUNCTION_98_5();
              swift_unknownObjectRelease();
              if (v40)
              {
LABEL_42:
                memcpy(__dst, v0 + 2, sizeof(__dst));
                __dst[0] = static StoryMusicCurationSong.sortSongsByMood(_:mood:)(v248, __dst);

                v243 = v40;
                sub_1C6FD3CF4(v69);
                v244 = __dst[0];
                sub_1C75504FC();
                v70 = sub_1C754FEEC();
                v71 = sub_1C755118C();

                if (os_log_type_enabled(v70, v71))
                {
                  OUTLINED_FUNCTION_13_3();
                  v72 = swift_slowAlloc();
                  OUTLINED_FUNCTION_98();
                  v73 = swift_slowAlloc();
                  __dst[0] = v73;
                  *v72 = 136315138;
                  v74 = MEMORY[0x1CCA5D090](v17, MEMORY[0x1E69E6158]);
                  v76 = v75;

                  v77 = sub_1C6F765A4(v74, v76, __dst);

                  *(v72 + 4) = v77;
                  OUTLINED_FUNCTION_8_1();
                  _os_log_impl(v78, v79, v80, v81, v82, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v73);
                  v83 = OUTLINED_FUNCTION_4_0();
                  MEMORY[0x1CCA5F8E0](v83);
                  OUTLINED_FUNCTION_235();
                  MEMORY[0x1CCA5F8E0]();
                }

                else
                {
                }

                v84 = v245;
                sub_1C75504FC();
                v85 = sub_1C754FEEC();
                v86 = sub_1C755118C();

                if (os_log_type_enabled(v85, v86))
                {
                  OUTLINED_FUNCTION_13_3();
                  v87 = swift_slowAlloc();
                  OUTLINED_FUNCTION_98();
                  v239 = swift_slowAlloc();
                  v257[0] = v239;
                  v88 = &unk_1C755E000;
                  *v87 = 136315138;
                  v89 = *(buf + 2);
                  if (v89)
                  {
                    v235 = v87;
                    v236 = v86;
                    v237 = v85;
                    v90 = OUTLINED_FUNCTION_32_35();
                    sub_1C6F7ED9C(v90, v89, 0, v91, v92, v93, v94);
                    v95 = 0;
                    v96 = __dst[0];
                    v97 = *(__dst[0] + 16);
                    v98 = 16 * v97;
                    do
                    {
                      v99 = *&buf[v95 + 40];
                      v100 = *&buf[v95 + 48];
                      __dst[0] = v96;
                      v101 = *(v96 + 24);
                      sub_1C75504FC();
                      if (v97 >= v101 >> 1)
                      {
                        OUTLINED_FUNCTION_55_28();
                        OUTLINED_FUNCTION_321();
                        sub_1C6F7ED9C(v103, v104, v105, v106, v107, v108, v109);
                        v96 = __dst[0];
                      }

                      *(v96 + 16) = v97 + 1;
                      v102 = v96 + v98;
                      *(v102 + 32) = v99;
                      *(v102 + 40) = v100;
                      v98 += 16;
                      v95 += 192;
                      ++v97;
                      --v89;
                    }

                    while (v89);

                    v84 = v245;
                    v88 = &unk_1C755E000;
                    v85 = v237;
                    v86 = v236;
                    v87 = v235;
                  }

                  else
                  {

                    v96 = MEMORY[0x1E69E7CC0];
                  }

                  v110 = MEMORY[0x1CCA5D090](v96, MEMORY[0x1E69E6158]);
                  v112 = v111;

                  v113 = sub_1C6F765A4(v110, v112, v257);

                  *(v87 + 4) = v113;
                  _os_log_impl(&dword_1C6F5C000, v85, v86, "(Apple Music Search) songsInflated  = %s", v87, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v239);
                  OUTLINED_FUNCTION_235();
                  MEMORY[0x1CCA5F8E0]();
                  OUTLINED_FUNCTION_235();
                  MEMORY[0x1CCA5F8E0]();
                }

                else
                {

                  v88 = &unk_1C755E000;
                }

                v114 = sub_1C754FEEC();
                v115 = sub_1C755118C();

                if (os_log_type_enabled(v114, v115))
                {
                  OUTLINED_FUNCTION_13_3();
                  v116 = swift_slowAlloc();
                  OUTLINED_FUNCTION_98();
                  v117 = swift_slowAlloc();
                  v118 = v117;
                  v257[0] = v117;
                  *v116 = v88[350];
                  if (v36)
                  {
                    v238 = v117;
                    v240 = v116;
                    bufa = v115;
                    __dst[0] = MEMORY[0x1E69E7CC0];
                    v119 = OUTLINED_FUNCTION_18_54();
                    sub_1C6F7ED9C(v119, v120, v121, v122, v123, v124, v125);
                    v126 = 0;
                    v127 = __dst[0];
                    v128 = *(__dst[0] + 16);
                    v129 = 16 * v128;
                    do
                    {
                      v131 = *&v245[v126 + 40];
                      v130 = *&v245[v126 + 48];
                      __dst[0] = v127;
                      v132 = *(v127 + 24);
                      sub_1C75504FC();
                      if (v128 >= v132 >> 1)
                      {
                        v134 = OUTLINED_FUNCTION_55_28();
                        sub_1C6F7ED9C(v134, v128 + 1, 1, v135, v136, v137, v138);
                        v127 = __dst[0];
                      }

                      *(v127 + 16) = v128 + 1;
                      v133 = v127 + v129;
                      *(v133 + 32) = v131;
                      *(v133 + 40) = v130;
                      v129 += 16;
                      v126 += 192;
                      ++v128;
                      --v36;
                    }

                    while (v36);

                    v88 = &unk_1C755E000;
                    v115 = bufa;
                    v118 = v238;
                    v116 = v240;
                  }

                  else
                  {

                    v127 = MEMORY[0x1E69E7CC0];
                  }

                  v139 = MEMORY[0x1CCA5D090](v127, MEMORY[0x1E69E6158]);
                  v84 = v140;

                  v141 = sub_1C6F765A4(v139, v84, v257);

                  *(v116 + 4) = v141;
                  _os_log_impl(&dword_1C6F5C000, v114, v115, "(Apple Music Search) sortedInflated = %s", v116, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v118);
                  v142 = OUTLINED_FUNCTION_2_44();
                  MEMORY[0x1CCA5F8E0](v142);
                  OUTLINED_FUNCTION_235();
                  MEMORY[0x1CCA5F8E0]();
                }

                else
                {
                }

                v143 = v248;

                v144 = sub_1C754FEEC();
                v145 = sub_1C755118C();

                if (os_log_type_enabled(v144, v145))
                {
                  OUTLINED_FUNCTION_13_3();
                  v146 = swift_slowAlloc();
                  OUTLINED_FUNCTION_98();
                  v147 = swift_slowAlloc();
                  v148 = v147;
                  v257[0] = v147;
                  *v146 = v88[350];
                  v149 = *(v248 + 16);
                  if (v149)
                  {
                    v241 = v147;
                    v246 = v146;
                    bufb = v145;
                    v150 = OUTLINED_FUNCTION_32_35();
                    sub_1C6F7ED9C(v150, v149, 0, v151, v152, v153, v154);
                    v84 = 0;
                    v155 = __dst[0];
                    v156 = *(__dst[0] + 16);
                    v157 = 16 * v156;
                    do
                    {
                      v158 = *&v84[v143 + 40];
                      v159 = *&v84[v143 + 48];
                      __dst[0] = v155;
                      v160 = *(v155 + 24);
                      sub_1C75504FC();
                      if (v156 >= v160 >> 1)
                      {
                        v162 = OUTLINED_FUNCTION_55_28();
                        sub_1C6F7ED9C(v162, v156 + 1, 1, v163, v164, v165, v166);
                        v155 = __dst[0];
                      }

                      *(v155 + 16) = v156 + 1;
                      v161 = v155 + v157;
                      *(v161 + 32) = v158;
                      *(v161 + 40) = v159;
                      v157 += 16;
                      v84 += 192;
                      ++v156;
                      --v149;
                      v143 = v248;
                    }

                    while (v149);

                    v145 = bufb;
                    v146 = v246;
                    v148 = v241;
                  }

                  else
                  {

                    v155 = MEMORY[0x1E69E7CC0];
                  }

                  MEMORY[0x1CCA5D090](v155, MEMORY[0x1E69E6158]);
                  OUTLINED_FUNCTION_100_16();

                  v168 = OUTLINED_FUNCTION_455();
                  v171 = sub_1C6F765A4(v168, v169, v170);

                  *(v146 + 4) = v171;
                  _os_log_impl(&dword_1C6F5C000, v144, v145, "(Apple Music Search) sliceToSort    = %s", v146, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v148);
                  OUTLINED_FUNCTION_235();
                  MEMORY[0x1CCA5F8E0]();
                  OUTLINED_FUNCTION_235();
                  MEMORY[0x1CCA5F8E0]();

                  v167 = v244;
                  v88 = &unk_1C755E000;
                }

                else
                {

                  v167 = v244;
                }

                v172 = sub_1C754FEEC();
                v173 = sub_1C755118C();

                if (os_log_type_enabled(v172, v173))
                {
                  OUTLINED_FUNCTION_13_3();
                  swift_slowAlloc();
                  OUTLINED_FUNCTION_12_66();
                  v249 = swift_slowAlloc();
                  v257[0] = v249;
                  bufc = v84;
                  *v84 = v88[350];
                  v174 = *(v243 + 16);
                  if (v174)
                  {
                    v242 = v173;
                    __dst[0] = MEMORY[0x1E69E7CC0];
                    v175 = OUTLINED_FUNCTION_18_54();
                    sub_1C6F7ED9C(v175, v176, v177, v178, v179, v180, v181);
                    v182 = 0;
                    v183 = __dst[0];
                    v184 = *(__dst[0] + 16);
                    v185 = 16 * v184;
                    v186 = v243;
                    do
                    {
                      v187 = *(v186 + v182 + 40);
                      v188 = *(v186 + v182 + 48);
                      __dst[0] = v183;
                      v189 = *(v183 + 24);
                      sub_1C75504FC();
                      if (v184 >= v189 >> 1)
                      {
                        OUTLINED_FUNCTION_55_28();
                        OUTLINED_FUNCTION_321();
                        sub_1C6F7ED9C(v191, v192, v193, v194, v195, v196, v197);
                        v186 = v243;
                        v183 = __dst[0];
                      }

                      *(v183 + 16) = v184 + 1;
                      v190 = v183 + v185;
                      *(v190 + 32) = v187;
                      *(v190 + 40) = v188;
                      v185 += 16;
                      v182 += 192;
                      ++v184;
                      --v174;
                    }

                    while (v174);

                    v167 = v244;
                    v88 = &unk_1C755E000;
                    v173 = v242;
                  }

                  else
                  {

                    v183 = MEMORY[0x1E69E7CC0];
                  }

                  v198 = MEMORY[0x1CCA5D090](v183, MEMORY[0x1E69E6158]);
                  v200 = v199;

                  v201 = sub_1C6F765A4(v198, v200, v257);

                  *(bufc + 4) = v201;
                  _os_log_impl(&dword_1C6F5C000, v172, v173, "(Apple Music Search) sliceNotSorted = %s", bufc, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v249);
                  OUTLINED_FUNCTION_235();
                  MEMORY[0x1CCA5F8E0]();
                  v202 = OUTLINED_FUNCTION_4_0();
                  MEMORY[0x1CCA5F8E0](v202);
                }

                else
                {
                }

                sub_1C75504FC();
                v203 = sub_1C754FEEC();
                v204 = sub_1C755118C();

                if (os_log_type_enabled(v203, v204))
                {
                  OUTLINED_FUNCTION_13_3();
                  v205 = swift_slowAlloc();
                  OUTLINED_FUNCTION_98();
                  v206 = swift_slowAlloc();
                  v211 = v206;
                  v257[0] = v206;
                  *v205 = v88[350];
                  v212 = *(v167 + 16);
                  v213 = MEMORY[0x1E69E7CC0];
                  if (v212)
                  {
                    v247 = v206;
                    v250 = v205;
                    bufd = v204;
                    __dst[0] = MEMORY[0x1E69E7CC0];
                    sub_1C6F7ED9C(0, v212, 0, v207, v208, v209, v210);
                    v213 = __dst[0];
                    v214 = *(__dst[0] + 16);
                    v215 = 16 * v214;
                    v216 = (v167 + 48);
                    do
                    {
                      v217 = *(v216 - 1);
                      v218 = *v216;
                      __dst[0] = v213;
                      v219 = *(v213 + 24);
                      sub_1C75504FC();
                      if (v214 >= v219 >> 1)
                      {
                        OUTLINED_FUNCTION_55_28();
                        OUTLINED_FUNCTION_137_0();
                        sub_1C6F7ED9C(v221, v222, v223, v224, v225, v226, v227);
                        v213 = __dst[0];
                      }

                      *(v213 + 16) = v214 + 1;
                      v220 = v213 + v215;
                      *(v220 + 32) = v217;
                      *(v220 + 40) = v218;
                      v215 += 16;
                      v216 += 24;
                      ++v214;
                      --v212;
                    }

                    while (v212);
                    v204 = bufd;
                    v211 = v247;
                    v205 = v250;
                  }

                  v228 = MEMORY[0x1CCA5D090](v213, MEMORY[0x1E69E6158]);
                  v230 = v229;

                  v231 = sub_1C6F765A4(v228, v230, v257);

                  *(v205 + 4) = v231;
                  _os_log_impl(&dword_1C6F5C000, v203, v204, "(Apple Music Search) finalSongs     = %s", v205, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v211);
                  OUTLINED_FUNCTION_235();
                  MEMORY[0x1CCA5F8E0]();
                  v232 = OUTLINED_FUNCTION_2_44();
                  MEMORY[0x1CCA5F8E0](v232);
                }

                goto LABEL_94;
              }

              v40 = MEMORY[0x1E69E7CC0];
LABEL_41:
              swift_unknownObjectRelease();
              goto LABEL_42;
            }

            swift_unknownObjectRelease();
          }

          sub_1C739CEA0();
          v40 = v66;
          goto LABEL_41;
        }

        __break(1u);
        goto LABEL_98;
      }

      v248 = MEMORY[0x1E69E7CC0];
LABEL_31:
      swift_unknownObjectRelease();
      goto LABEL_32;
    }

    swift_unknownObjectRelease();
    v34 = v245;
  }

  sub_1C739CEA0();
  v248 = v49;
  goto LABEL_31;
}

BOOL sub_1C7391F74()
{
  if (qword_1EDD0A988 != -1)
  {
    swift_once();
  }

  if (byte_1EC218F88 == 1)
  {
    return 0;
  }

  v1 = v0 + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_appleMusicSubscriptionState;
  swift_beginAccess();
  v2 = type metadata accessor for AppleMusicSubscriptionState(0);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) || !*(v1 + 16))
  {
    return 0;
  }

  else
  {
    v5 = sub_1C75506FC();
    MEMORY[0x1EEE9AC00](v5);
    v3 = sub_1C70735F4();
  }

  return v3;
}

uint64_t sub_1C73920A4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  OUTLINED_FUNCTION_41();
  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C73920D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v11 = v10[2];
  v12 = *(v11 + 16);
  v13 = (v11 + 48);
  v14 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10[5] = v14;
    if (!v12)
    {
      break;
    }

    v16 = *(v13 - 1);
    v15 = *v13;
    sub_1C75504FC();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1C6FB1814();
      v14 = v19;
    }

    v17 = *(v14 + 16);
    if (v17 >= *(v14 + 24) >> 1)
    {
      OUTLINED_FUNCTION_177();
      sub_1C6FB1814();
      v14 = v20;
    }

    *(v14 + 16) = v17 + 1;
    v18 = v14 + 16 * v17;
    *(v18 + 32) = v16;
    *(v18 + 40) = v15;
    v13 += 24;
    --v12;
  }

  v21 = swift_task_alloc();
  v10[6] = v21;
  *v21 = v10;
  v21[1] = sub_1C7392200;
  OUTLINED_FUNCTION_88_0();

  return StoryMusicCurator.requestAndCacheAppleMusicSongs(with:eventRecorder:)();
}

uint64_t sub_1C7392200(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_47();
  v7 = v6;
  OUTLINED_FUNCTION_6_4();
  *v8 = v7;
  v9 = *v3;
  OUTLINED_FUNCTION_14();
  *v10 = v9;
  v7[7] = v2;

  if (!v2)
  {
    v7[8] = a2;
    v7[9] = a1;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C739231C()
{
  OUTLINED_FUNCTION_42();

  v1 = v0[1];
  v3 = v0[8];
  v2 = v0[9];

  return v1(v2, v3);
}

uint64_t sub_1C7392380()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

Swift::UInt __swiftcall StoryMusicCurator.sortByMoodUpToIndexOverride(_:)(Swift::UInt a1)
{
  v2 = objc_opt_self();
  v3 = [v2 appleMusicSmartSearchMode];
  v4 = sub_1C755068C();
  v6 = v5;

  v45 = v4;
  v46 = v6;
  sub_1C6FB5E8C();
  LOBYTE(v3) = sub_1C75515AC();

  if ((v3 & 1) == 0)
  {
    return a1;
  }

  v7 = [v2 appleMusicSmartSearchMode];
  v8 = sub_1C755068C();
  v10 = v9;

  v11 = static StoryMusicCurator.dictionaryFromCommasString(using:)(v8, v10);

  if (!v11[2] || (sub_1C75504FC(), sub_1C6F78124(0xD000000000000015, 0x80000001C75ACDC0), v13 = v12, , (v13 & 1) == 0) || (v14 = sub_1C6FE0F8C(0xD000000000000015, 0x80000001C75ACDC0, v11), !v15))
  {
LABEL_80:

    return a1;
  }

  v16 = v14;
  v17 = v15;
  v18 = HIBYTE(v15) & 0xF;
  v19 = v14 & 0xFFFFFFFFFFFFLL;
  if ((v15 & 0x2000000000000000) != 0)
  {
    v20 = HIBYTE(v15) & 0xF;
  }

  else
  {
    v20 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {

    goto LABEL_80;
  }

  if ((v15 & 0x1000000000000000) != 0)
  {

    v23 = sub_1C71CD354();
    v38 = v43;
LABEL_73:

    if ((v38 & 1) == 0)
    {
      if (qword_1EDD0ED88 != -1)
      {
        OUTLINED_FUNCTION_0_35();
        swift_once();
      }

      v39 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v39, &dword_1EDD28D48);
      v40 = sub_1C754FEEC();
      v41 = sub_1C755117C();
      if (os_log_type_enabled(v40, v41))
      {
        OUTLINED_FUNCTION_13_3();
        v42 = swift_slowAlloc();
        *v42 = 134217984;
        *(v42 + 4) = v23;
        _os_log_impl(&dword_1C6F5C000, v40, v41, "(Apple Music Search) sortByMoodUpToIndexOverride = %lu", v42, 0xCu);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      return v23;
    }

    return a1;
  }

  if ((v15 & 0x2000000000000000) == 0)
  {

    if ((v16 & 0x1000000000000000) != 0)
    {
      result = (v17 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1C75518FC();
      v19 = v44;
    }

    v22 = *result;
    if (v22 == 43)
    {
      if (v19 >= 1)
      {
        if (v19 != 1)
        {
          v23 = 0;
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_1_9();
              if (!v25 && v24)
              {
                goto LABEL_71;
              }

              OUTLINED_FUNCTION_92_15();
              if (!v25)
              {
                goto LABEL_71;
              }

              OUTLINED_FUNCTION_91_16();
              v23 = v32 + v31;
              if (__CFADD__(v32, v31))
              {
                goto LABEL_71;
              }

              OUTLINED_FUNCTION_10_23();
              if (v25)
              {
                goto LABEL_72;
              }
            }
          }

          goto LABEL_70;
        }

        goto LABEL_71;
      }

      goto LABEL_86;
    }

    if (v22 != 45)
    {
      if (v19)
      {
        v23 = 0;
        if (result)
        {
          while (1)
          {
            v35 = *result - 48;
            if (v35 > 9)
            {
              goto LABEL_71;
            }

            if (!is_mul_ok(v23, 0xAuLL))
            {
              goto LABEL_71;
            }

            v24 = __CFADD__(10 * v23, v35);
            v23 = 10 * v23 + v35;
            if (v24)
            {
              goto LABEL_71;
            }

            ++result;
            if (!--v19)
            {
              goto LABEL_70;
            }
          }
        }

        goto LABEL_70;
      }

LABEL_71:
      v23 = 0;
      v28 = 1;
      goto LABEL_72;
    }

    if (v19 >= 1)
    {
      if (v19 != 1)
      {
        v23 = 0;
        if (result)
        {
          while (1)
          {
            OUTLINED_FUNCTION_1_9();
            if (!v25 && v24)
            {
              goto LABEL_71;
            }

            OUTLINED_FUNCTION_92_15();
            if (!v25)
            {
              goto LABEL_71;
            }

            OUTLINED_FUNCTION_91_16();
            v23 = v27 - v26;
            if (v27 < v26)
            {
              goto LABEL_71;
            }

            OUTLINED_FUNCTION_10_23();
            if (v25)
            {
              goto LABEL_72;
            }
          }
        }

LABEL_70:
        v28 = 0;
LABEL_72:
        v38 = v28;
        goto LABEL_73;
      }

      goto LABEL_71;
    }

    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v45 = v16;
  v46 = v17 & 0xFFFFFFFFFFFFFFLL;
  if (v16 != 43)
  {
    if (v16 != 45)
    {
      if (v18)
      {
        v23 = 0;
        v36 = &v45;
        while (1)
        {
          v37 = *v36 - 48;
          if (v37 > 9)
          {
            break;
          }

          if (!is_mul_ok(v23, 0xAuLL))
          {
            break;
          }

          v24 = __CFADD__(10 * v23, v37);
          v23 = 10 * v23 + v37;
          if (v24)
          {
            break;
          }

          v36 = (v36 + 1);
          if (!--v18)
          {
            goto LABEL_70;
          }
        }
      }

      goto LABEL_71;
    }

    if (v18)
    {
      if (v18 != 1)
      {
        OUTLINED_FUNCTION_95_18();
        while (1)
        {
          OUTLINED_FUNCTION_1_9();
          if (!v25 && v24)
          {
            break;
          }

          OUTLINED_FUNCTION_92_15();
          if (!v25)
          {
            break;
          }

          OUTLINED_FUNCTION_91_16();
          v23 = v30 - v29;
          if (v30 < v29)
          {
            break;
          }

          OUTLINED_FUNCTION_10_23();
          if (v25)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    goto LABEL_85;
  }

  if (v18)
  {
    if (v18 != 1)
    {
      OUTLINED_FUNCTION_95_18();
      while (1)
      {
        OUTLINED_FUNCTION_1_9();
        if (!v25 && v24)
        {
          break;
        }

        OUTLINED_FUNCTION_92_15();
        if (!v25)
        {
          break;
        }

        OUTLINED_FUNCTION_91_16();
        v23 = v34 + v33;
        if (__CFADD__(v34, v33))
        {
          break;
        }

        OUTLINED_FUNCTION_10_23();
        if (v25)
        {
          goto LABEL_72;
        }
      }
    }

    goto LABEL_71;
  }

LABEL_87:
  __break(1u);
  return result;
}

void sub_1C7392888(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C754D84C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1C75504DC();
  v32 = a1;
  v33 = a2;
  sub_1C754D7FC();
  sub_1C6FB5E8C();
  v8 = sub_1C755151C();
  (*(v5 + 8))(v7, v4);
  v9 = 0;
  v10 = *(v8 + 16);
  v11 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v12 = (v8 + 40 + 16 * v9);
  while (v10 != v9)
  {
    if (v9 >= *(v8 + 16))
    {
      __break(1u);
      return;
    }

    ++v9;
    v13 = *(v12 - 1);
    v14 = *v12;
    v12 += 2;
    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      v30 = a2;
      sub_1C75504FC();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v11;
      v21 = a1;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C6F7ED9C(0, v11[2] + 1, 1, v17, v18, v19, v20);
        v11 = v32;
      }

      v23 = v11[2];
      v22 = v11[3];
      if (v23 >= v22 >> 1)
      {
        sub_1C6F7ED9C(v22 > 1, v23 + 1, 1, v17, v18, v19, v20);
        v11 = v32;
      }

      v11[2] = v23 + 1;
      v24 = &v11[2 * v23];
      v24[4] = v13;
      v24[5] = v14;
      a1 = v21;
      a2 = v30;
      goto LABEL_2;
    }
  }

  v25 = v11[2];
  if (v25 <= 1)
  {
    if (v25)
    {
      v27 = v11[4];
      v26 = v11[5];
      sub_1C75504FC();

      sub_1C6FE0F8C(v27, v26, v31);
      v29 = v28;

      if (v29)
      {
      }
    }

    else
    {

      sub_1C75504FC();
    }
  }

  else
  {
    sub_1C75504FC();
  }
}

uint64_t sub_1C7392B2C()
{
  v0 = objc_opt_self();
  v1 = [v0 appleMusicSmartSearchMode];
  v2 = sub_1C755068C();
  v4 = v3;

  v48 = v2;
  v49 = v4;
  sub_1C6FB5E8C();
  LOBYTE(v1) = sub_1C75515AC();

  if ((v1 & 1) == 0)
  {
    return 2;
  }

  v5 = [v0 appleMusicSmartSearchMode];
  v6 = sub_1C755068C();
  v8 = v7;

  v9 = static StoryMusicCurator.dictionaryFromCommasString(using:)(v6, v8);

  if (!v9[2])
  {
    goto LABEL_74;
  }

  sub_1C75504FC();
  sub_1C6F78124(0x4364726F7779656BLL, 0xEC000000746E756FLL);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    goto LABEL_74;
  }

  v12 = sub_1C6FE0F8C(0x4364726F7779656BLL, 0xEC000000746E756FLL, v9);
  if (!v13)
  {
    goto LABEL_74;
  }

  v14 = v12;
  v15 = v13;
  v16 = HIBYTE(v13) & 0xF;
  v17 = v12 & 0xFFFFFFFFFFFFLL;
  if ((v13 & 0x2000000000000000) != 0)
  {
    v18 = HIBYTE(v13) & 0xF;
  }

  else
  {
    v18 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {

LABEL_74:

    return 2;
  }

  if ((v13 & 0x1000000000000000) != 0)
  {

    sub_1C71CBAA8(v14, v15, 10);
    v22 = v45;
    v40 = v46;
LABEL_67:

    if ((v40 & 1) == 0)
    {
      if (qword_1EDD0ED88 != -1)
      {
        swift_once();
      }

      v41 = sub_1C754FF1C();
      __swift_project_value_buffer(v41, &dword_1EDD28D48);
      v42 = sub_1C754FEEC();
      v43 = sub_1C755118C();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 134217984;
        *(v44 + 4) = v22;
        _os_log_impl(&dword_1C6F5C000, v42, v43, "(Apple Music Search) searchKeywordCount: Using custom keywordCount = %ld", v44, 0xCu);
        MEMORY[0x1CCA5F8E0](v44, -1, -1);
      }

      return v22;
    }

    return 2;
  }

  if ((v13 & 0x2000000000000000) == 0)
  {

    if ((v14 & 0x1000000000000000) != 0)
    {
      result = (v15 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1C75518FC();
      v17 = v47;
    }

    v20 = *result;
    if (v20 == 43)
    {
      if (v17 >= 1)
      {
        v21 = v17 - 1;
        if (v17 != 1)
        {
          v22 = 0;
          if (result)
          {
            v29 = (result + 1);
            while (1)
            {
              v30 = *v29 - 48;
              if (v30 > 9)
              {
                goto LABEL_65;
              }

              v31 = 10 * v22;
              if ((v22 * 10) >> 64 != (10 * v22) >> 63)
              {
                goto LABEL_65;
              }

              v22 = v31 + v30;
              if (__OFADD__(v31, v30))
              {
                goto LABEL_65;
              }

              ++v29;
              if (!--v21)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_64;
        }

        goto LABEL_65;
      }

      goto LABEL_81;
    }

    if (v20 != 45)
    {
      if (v17)
      {
        v22 = 0;
        if (result)
        {
          while (1)
          {
            v35 = *result - 48;
            if (v35 > 9)
            {
              goto LABEL_65;
            }

            v36 = 10 * v22;
            if ((v22 * 10) >> 64 != (10 * v22) >> 63)
            {
              goto LABEL_65;
            }

            v22 = v36 + v35;
            if (__OFADD__(v36, v35))
            {
              goto LABEL_65;
            }

            ++result;
            if (!--v17)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_64;
      }

LABEL_65:
      v22 = 0;
      LOBYTE(v21) = 1;
      goto LABEL_66;
    }

    if (v17 >= 1)
    {
      v21 = v17 - 1;
      if (v17 != 1)
      {
        v22 = 0;
        if (result)
        {
          v23 = (result + 1);
          while (1)
          {
            v24 = *v23 - 48;
            if (v24 > 9)
            {
              goto LABEL_65;
            }

            v25 = 10 * v22;
            if ((v22 * 10) >> 64 != (10 * v22) >> 63)
            {
              goto LABEL_65;
            }

            v22 = v25 - v24;
            if (__OFSUB__(v25, v24))
            {
              goto LABEL_65;
            }

            ++v23;
            if (!--v21)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_64:
        LOBYTE(v21) = 0;
LABEL_66:
        v40 = v21;
        goto LABEL_67;
      }

      goto LABEL_65;
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v48 = v14;
  v49 = v15 & 0xFFFFFFFFFFFFFFLL;
  if (v14 != 43)
  {
    if (v14 != 45)
    {
      if (v16)
      {
        v22 = 0;
        v37 = &v48;
        while (1)
        {
          v38 = *v37 - 48;
          if (v38 > 9)
          {
            break;
          }

          v39 = 10 * v22;
          if ((v22 * 10) >> 64 != (10 * v22) >> 63)
          {
            break;
          }

          v22 = v39 + v38;
          if (__OFADD__(v39, v38))
          {
            break;
          }

          v37 = (v37 + 1);
          if (!--v16)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_65;
    }

    if (v16)
    {
      v21 = v16 - 1;
      if (v16 != 1)
      {
        v22 = 0;
        v26 = &v48 + 1;
        while (1)
        {
          v27 = *v26 - 48;
          if (v27 > 9)
          {
            break;
          }

          v28 = 10 * v22;
          if ((v22 * 10) >> 64 != (10 * v22) >> 63)
          {
            break;
          }

          v22 = v28 - v27;
          if (__OFSUB__(v28, v27))
          {
            break;
          }

          ++v26;
          if (!--v21)
          {
            goto LABEL_66;
          }
        }
      }

      goto LABEL_65;
    }

    goto LABEL_80;
  }

  if (v16)
  {
    v21 = v16 - 1;
    if (v16 != 1)
    {
      v22 = 0;
      v32 = &v48 + 1;
      while (1)
      {
        v33 = *v32 - 48;
        if (v33 > 9)
        {
          break;
        }

        v34 = 10 * v22;
        if ((v22 * 10) >> 64 != (10 * v22) >> 63)
        {
          break;
        }

        v22 = v34 + v33;
        if (__OFADD__(v34, v33))
        {
          break;
        }

        ++v32;
        if (!--v21)
        {
          goto LABEL_66;
        }
      }
    }

    goto LABEL_65;
  }

LABEL_82:
  __break(1u);
  return result;
}

void sub_1C7393048(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  static StoryMusicEmbeddingTerms.termByEngineeringName(_:)(&v15, *(*a1 + 16), *(*a1 + 24));
  v5 = v16;
  if (v16)
  {
    v18 = v2;
    v6 = v15;
    v7 = v17;
    sub_1C75504FC();
    v8 = sub_1C705CB28(1, v7);

    if (v8 || (sub_1C75504FC(), v9 = sub_1C705CB28(2, v7), , v9))
    {
      sub_1C75504FC();
      sub_1C72B9804(v6, v5);
      *a2 = v6;
      a2[1] = v5;
      return;
    }

    sub_1C72B9804(v6, v5);
  }

  if (qword_1EDD0ED88 != -1)
  {
    swift_once();
  }

  v10 = sub_1C754FF1C();
  __swift_project_value_buffer(v10, &dword_1EDD28D48);

  v11 = sub_1C754FEEC();
  v12 = sub_1C755119C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1C6F765A4(*(v4 + 16), *(v4 + 24), &v15);
    _os_log_impl(&dword_1C6F5C000, v11, v12, "(Apple Music Search) searchPromptGenerator: Got an unresolved keyword: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1CCA5F8E0](v14, -1, -1);
    MEMORY[0x1CCA5F8E0](v13, -1, -1);
  }

  *a2 = 0;
  a2[1] = 0;
}

uint64_t StoryMusicCurator.generateMusicSearchKeywords(forStoryPrompt:keywords:with:eventRecorder:)()
{
  OUTLINED_FUNCTION_42();
  v1[12] = v2;
  v1[13] = v0;
  v1[10] = v3;
  v1[11] = v4;
  v1[8] = v5;
  v1[9] = v6;
  sub_1C754F2FC();
  v1[14] = swift_task_alloc();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73932F4()
{
  OUTLINED_FUNCTION_75_1();
  v1 = *(v0 + 104);
  v7 = *(v0 + 80);
  OUTLINED_FUNCTION_70(*(v0 + 96), *(*(v0 + 96) + 24));
  sub_1C754F15C();
  v2 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v7;
  v4 = swift_task_alloc();
  *(v0 + 128) = v4;
  v5 = type metadata accessor for MusicKeywordsGeneratorEmbedded();
  *v4 = v0;
  v4[1] = sub_1C739344C;

  return MEMORY[0x1EEE2A6A0](v0 + 56, "MusicCurator.initEmbeddings", 27, 2, &unk_1C7585A80, v3, v2, v5);
}

uint64_t sub_1C739344C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 136) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C739354C()
{
  OUTLINED_FUNCTION_42();
  v0[18] = v0[7];
  sub_1C754F30C();
  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_1C7393620;

  return sub_1C743E970();
}

uint64_t sub_1C7393620()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 160) = v4;
  *(v2 + 168) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C7393724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_87_0();
  a17 = v20;
  a18 = v21;
  OUTLINED_FUNCTION_75_1();
  a16 = v18;
  if (qword_1EDD0ED88 != -1)
  {
    OUTLINED_FUNCTION_0_35();
    swift_once();
  }

  v22 = sub_1C754FF1C();
  __swift_project_value_buffer(v22, &dword_1EDD28D48);
  sub_1C75504FC();
  sub_1C75504FC();
  v23 = sub_1C754FEEC();
  sub_1C755118C();
  OUTLINED_FUNCTION_141();

  if (OUTLINED_FUNCTION_140_0())
  {
    v24 = v18[20];
    v25 = v18[10];
    swift_slowAlloc();
    OUTLINED_FUNCTION_12_66();
    v26 = swift_slowAlloc();
    a9 = v26;
    *v19 = 134218242;
    *(v19 + 4) = *(v25 + 16);

    *(v19 + 12) = 2080;
    v27 = type metadata accessor for MusicKeywordCompletion();
    v28 = MEMORY[0x1CCA5D090](v24, v27);
    sub_1C6F765A4(v28, v29, &a9);
    OUTLINED_FUNCTION_86_14();
    *(v19 + 14) = v25;
    OUTLINED_FUNCTION_39();
    _os_log_impl(v30, v31, v32, v33, v34, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v35 = OUTLINED_FUNCTION_2_44();
    MEMORY[0x1CCA5F8E0](v35);
    v36 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x1CCA5F8E0](v36);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v18 + 2);

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_88_0();

  return v39(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10);
}

uint64_t sub_1C73938D0()
{
  OUTLINED_FUNCTION_42();

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1C7393940()
{
  OUTLINED_FUNCTION_42();

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1C73939B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C73939D4, 0, 0);
}

uint64_t sub_1C73939D4()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_storyMusicCache);
  v2 = *(v0 + 40);
  *(v0 + 72) = 2;
  v3 = *(v2 + 8);
  type metadata accessor for MusicKeywordsGeneratorEmbedded();
  swift_allocObject();
  v4 = v1;
  sub_1C75504FC();
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_1C7393AD8;
  v6 = *(v0 + 32);

  return MusicKeywordsGeneratorEmbedded.init(usingCache:embeddingType:with:maxKeywords:)(v1, (v0 + 72), v6, v3);
}

uint64_t sub_1C7393AD8()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_39_0();
  v4 = v3;
  OUTLINED_FUNCTION_6_4();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_14();
  *v7 = v6;
  *(v4 + 56) = v0;

  if (!v0)
  {
    *(v4 + 64) = v1;
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C7393BDC()
{
  **(v0 + 16) = *(v0 + 64);
  OUTLINED_FUNCTION_43();
  return v1();
}

void *static StoryMusicCurator.dictionaryFromCommasString(using:)(uint64_t a1, unint64_t a2)
{
  v57[0] = 44;
  v54 = v57;
  sub_1C75504FC();
  v5 = sub_1C71ABD80(0x7FFFFFFFFFFFFFFFLL, 1, sub_1C70551E4, v53, a1, a2);
  v58 = v2;
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_32_35();
    sub_1C6F7ED9C(v7, v6, 0, v8, v9, v10, v11);
    v12 = v57[0];
    v13 = v5 + 56;
    do
    {
      sub_1C75504FC();
      v14 = OUTLINED_FUNCTION_0_11();
      v15 = MEMORY[0x1CCA5CC40](v14);
      v17 = v16;

      v57[0] = v12;
      v19 = *(v12 + 16);
      v18 = *(v12 + 24);
      if (v19 >= v18 >> 1)
      {
        OUTLINED_FUNCTION_15(v18);
        OUTLINED_FUNCTION_137_0();
        sub_1C6F7ED9C(v21, v22, v23, v24, v25, v26, v27);
        v12 = v57[0];
      }

      *(v12 + 16) = v19 + 1;
      v20 = v12 + 16 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v17;
      v13 += 32;
      --v6;
    }

    while (v6);
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
  }

  v28 = *(v12 + 16);
  if (!v28)
  {

    return sub_1C75504DC();
  }

  v29 = 0;
  v30 = MEMORY[0x1E69E7CC8];
  while (2)
  {
    for (i = (v12 + 40 + 16 * v29); ; i += 2)
    {
      if (v28 == v29)
      {

        return v30;
      }

      if (v29 >= *(v12 + 16))
      {
        __break(1u);
        goto LABEL_29;
      }

      v32 = *i;
      v57[0] = *(i - 1);
      v57[1] = v32;
      v55 = 58;
      v56 = 0xE100000000000000;
      sub_1C6FB5E8C();
      sub_1C75504FC();
      v33 = sub_1C755152C();
      if (v33[2] == 2)
      {
        break;
      }

      ++v29;
    }

    v34 = v33[5];
    v52 = v33[4];
    v35 = v33[7];
    v50 = v33[6];
    sub_1C75504FC();
    sub_1C75504FC();

    swift_isUniquelyReferenced_nonNull_native();
    v57[0] = v30;
    v51 = v34;
    v36 = sub_1C6F78124(v52, v34);
    if (__OFADD__(v30[2], (v37 & 1) == 0))
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v38 = v36;
    v49 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215328, &unk_1C758DBC0);
    if ((sub_1C7551A2C() & 1) == 0)
    {
      v41 = v49;
LABEL_20:
      v30 = v57[0];
      if (v41)
      {
        v42 = (*(v57[0] + 56) + 16 * v38);
        *v42 = v50;
        v42[1] = v35;

LABEL_24:
        ++v29;

        continue;
      }

      *(v57[0] + 8 * (v38 >> 6) + 64) |= 1 << v38;
      v43 = (v30[6] + 16 * v38);
      *v43 = v52;
      v43[1] = v51;
      v44 = (v30[7] + 16 * v38);
      *v44 = v50;
      v44[1] = v35;
      v45 = v30[2];
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (!v46)
      {
        v30[2] = v47;
        goto LABEL_24;
      }

LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    break;
  }

  v39 = sub_1C6F78124(v52, v51);
  v41 = v49;
  if ((v49 & 1) == (v40 & 1))
  {
    v38 = v39;
    goto LABEL_20;
  }

LABEL_31:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

void sub_1C7393FC8(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1C7551D7C();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1C739D494(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1C73940A8(v8, v9, a1, v5);
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
    sub_1C70CCF4C(0, v3, 1, a1);
  }
}

void sub_1C73940A8(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v85 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v80 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*(*a3 + 8 * v6) + 32);
        v10 = *(*(*a3 + 8 * v8) + 32);
        v11 = v6 + 2;
        v12 = v10;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (v12 >= *(*(*a3 + 8 * v11++) + 32));
          v12 = *(*(*a3 + 8 * v13) + 32);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = 8 * v5 - 8;
            v16 = 8 * v6;
            v17 = v8;
            v18 = v6;
            do
            {
              if (v18 != --v17)
              {
                v19 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v20 = *(v19 + v16);
                *(v19 + v16) = *(v19 + v15);
                *(v19 + v15) = v20;
              }

              ++v18;
              v15 -= 8;
              v16 += 8;
            }

            while (v18 < v17);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
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
            return;
          }

          if (v8 != v5)
          {
            v21 = *a3;
            v22 = *a3 + 8 * v8 - 8;
            v23 = v6 - v8;
            do
            {
              v24 = *(v21 + 8 * v8);
              v25 = v23;
              v26 = v22;
              do
              {
                v27 = *v26;
                if (*(*v26 + 32) >= *(v24 + 32))
                {
                  break;
                }

                if (!v21)
                {
                  goto LABEL_111;
                }

                *v26 = v24;
                v26[1] = v27;
                --v26;
              }

              while (!__CFADD__(v25++, 1));
              ++v8;
              v22 += 8;
              --v23;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v82 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v72 = OUTLINED_FUNCTION_24_0();
        sub_1C6FB17EC(v72, v73, v74, v7);
        v7 = v75;
      }

      v29 = v7[2];
      v30 = v29 + 1;
      if (v29 >= v7[3] >> 1)
      {
        OUTLINED_FUNCTION_137_0();
        sub_1C6FB17EC(v76, v77, v78, v7);
        v7 = v79;
      }

      v7[2] = v30;
      v31 = v7 + 4;
      v32 = &v7[2 * v29 + 4];
      *v32 = v6;
      v32[1] = v8;
      v83 = *result;
      if (!*result)
      {
        goto LABEL_114;
      }

      if (v29)
      {
        while (1)
        {
          v33 = v30 - 1;
          v34 = &v31[2 * v30 - 2];
          v35 = &v7[2 * v30];
          if (v30 >= 4)
          {
            break;
          }

          if (v30 == 3)
          {
            v36 = v7[4];
            v37 = v7[5];
            v46 = __OFSUB__(v37, v36);
            v38 = v37 - v36;
            v39 = v46;
LABEL_56:
            if (v39)
            {
              goto LABEL_96;
            }

            v51 = *v35;
            v50 = v35[1];
            v52 = __OFSUB__(v50, v51);
            v53 = v50 - v51;
            v54 = v52;
            if (v52)
            {
              goto LABEL_99;
            }

            v55 = v34[1];
            v56 = v55 - *v34;
            if (__OFSUB__(v55, *v34))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v53, v56))
            {
              goto LABEL_104;
            }

            if (v53 + v56 >= v38)
            {
              if (v38 < v56)
              {
                v33 = v30 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v30 < 2)
          {
            goto LABEL_98;
          }

          v58 = *v35;
          v57 = v35[1];
          v46 = __OFSUB__(v57, v58);
          v53 = v57 - v58;
          v54 = v46;
LABEL_71:
          if (v54)
          {
            goto LABEL_101;
          }

          v60 = *v34;
          v59 = v34[1];
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_103;
          }

          if (v61 < v53)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v33 - 1 >= v30)
          {
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
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v65 = &v31[2 * v33 - 2];
          v66 = *v65;
          v67 = &v31[2 * v33];
          v68 = *(v67 + 1);
          sub_1C7394688((*a3 + 8 * *v65), (*a3 + 8 * *v67), (*a3 + 8 * v68), v83);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v68 < v66)
          {
            goto LABEL_91;
          }

          v69 = v7;
          v70 = v7[2];
          if (v33 > v70)
          {
            goto LABEL_92;
          }

          *v65 = v66;
          v65[1] = v68;
          if (v33 >= v70)
          {
            goto LABEL_93;
          }

          v30 = v70 - 1;
          sub_1C7423CF4(v67 + 16, v70 - 1 - v33, &v31[2 * v33]);
          v69[2] = v70 - 1;
          v71 = v70 > 2;
          v7 = v69;
          if (!v71)
          {
            goto LABEL_85;
          }
        }

        v40 = &v31[2 * v30];
        v41 = *(v40 - 8);
        v42 = *(v40 - 7);
        v46 = __OFSUB__(v42, v41);
        v43 = v42 - v41;
        if (v46)
        {
          goto LABEL_94;
        }

        v45 = *(v40 - 6);
        v44 = *(v40 - 5);
        v46 = __OFSUB__(v44, v45);
        v38 = v44 - v45;
        v39 = v46;
        if (v46)
        {
          goto LABEL_95;
        }

        v47 = v35[1];
        v48 = v47 - *v35;
        if (__OFSUB__(v47, *v35))
        {
          goto LABEL_97;
        }

        v46 = __OFADD__(v38, v48);
        v49 = v38 + v48;
        if (v46)
        {
          goto LABEL_100;
        }

        if (v49 >= v43)
        {
          v63 = *v34;
          v62 = v34[1];
          v46 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v46)
          {
            goto LABEL_105;
          }

          if (v38 < v64)
          {
            v33 = v30 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v82;
      a4 = v80;
      if (v82 >= v5)
      {
        v85 = v7;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_115;
  }

  sub_1C739455C(&v85, *result, a3);
LABEL_89:
}

uint64_t sub_1C739455C(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C7420830();
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1C7394688((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1C7394688(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    v10 = OUTLINED_FUNCTION_455();
    sub_1C7423CF8(v10, v11, v4);
    v12 = &v4[8 * v8];
    while (1)
    {
      if (v4 >= v12 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v14 = *v6;
      if (*(*v4 + 32) >= *(*v6 + 32))
      {
        break;
      }

      v15 = v7 == v6;
      v6 += 8;
      if (!v15)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
    }

    v14 = *v4;
    v15 = v7 == v4;
    v4 += 8;
    if (v15)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v14;
    goto LABEL_13;
  }

  sub_1C7423CF8(a2, (a3 - a2) / 8, a4);
  v12 = &v4[8 * v9];
LABEL_15:
  v16 = v6 - 8;
  for (v5 -= 8; v12 > v4 && v6 > v7; v5 -= 8)
  {
    v18 = *(v12 - 1);
    if (*(*v16 + 32) < *(v18 + 32))
    {
      v15 = v5 + 8 == v6;
      v6 -= 8;
      if (!v15)
      {
        *v5 = *v16;
        v6 = v16;
      }

      goto LABEL_15;
    }

    if (v12 != v5 + 8)
    {
      *v5 = v18;
    }

    v12 -= 8;
  }

LABEL_28:
  v19 = (v12 - v4) / 8;
  if (v6 != v4 || v6 >= &v4[8 * v19])
  {
    memmove(v6, v4, 8 * v19);
  }

  return 1;
}

uint64_t sub_1C7394840()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1C6F738F4;

  return sub_1C73939B0(v3, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_53_32()
{
  *(v1[15] + v1[20] + *(v1[21] + 88)) = v0;
}

uint64_t OUTLINED_FUNCTION_86_14()
{
}

double OUTLINED_FUNCTION_108_11()
{

  swift_beginAccess();
  return result;
}

uint64_t OUTLINED_FUNCTION_109_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(a1 + 16) = a9;

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_110_11()
{

  return sub_1C6FB6330();
}

void *OUTLINED_FUNCTION_111_13()
{

  return memcpy((v0 + 144), (v0 + 16), 0x80uLL);
}

void OUTLINED_FUNCTION_112_8()
{

  sub_1C739CEA0();
}

uint64_t OUTLINED_FUNCTION_113_13@<X0>(uint64_t a1@<X8>)
{

  return static MusicLocalizer.localizedStringsList(forKey:)(0xD000000000000017, (a1 - 32) | 0x8000000000000000);
}

void OUTLINED_FUNCTION_114_13(uint64_t a1@<X8>)
{
  *(v2 + 184) = a1;
  *(v2 + 192) = v1;

  JUMPOUT(0x1CCA5CD70);
}

void OUTLINED_FUNCTION_116_14()
{

  JUMPOUT(0x1CCA5D090);
}

uint64_t OUTLINED_FUNCTION_117_10(float a1)
{
  *v1 = a1;

  return type metadata accessor for MusicKeywordCompletion();
}

uint64_t OUTLINED_FUNCTION_118_11()
{
}

uint64_t sub_1C7394BB8()
{
  sub_1C7047818();
  result = sub_1C755146C();
  qword_1EC25B7B8 = result;
  return result;
}

uint64_t sub_1C7394C20()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC25B7C0);
  __swift_project_value_buffer(v0, qword_1EC25B7C0);
  if (qword_1EC214060 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC25B7B8;
  return sub_1C754FF2C();
}

BOOL static AppleMusicPrivacyPromptStateTracker.isDisclosureNeeded()()
{
  v0 = [objc_opt_self() appleMusicMCPrivacyDisclosureState];
  v1 = sub_1C755068C();
  v3 = v2;

  if ((v3 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    if (qword_1EC214068 != -1)
    {
      OUTLINED_FUNCTION_0_157(&qword_1EC214068);
    }

    v5 = sub_1C754FF1C();
    __swift_project_value_buffer(v5, qword_1EC25B7C0);
    sub_1C75504FC();
    v6 = sub_1C754FEEC();
    v7 = sub_1C755117C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v10 = OUTLINED_FUNCTION_3_98(4.8149e-34, v14, v9);

      *(v8 + 4) = v10;
      OUTLINED_FUNCTION_19(&dword_1C6F5C000, v11, v12, "[Music] Apple Music Privacy Disclosure not needed. disclosureState = %s");
      __swift_destroy_boxed_opaque_existential_1(v14);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    else
    {
    }
  }

  else
  {
  }

  return v4 == 0;
}

void static AppleMusicPrivacyPromptStateTracker.reset()()
{
  if (qword_1EC214068 != -1)
  {
    OUTLINED_FUNCTION_0_157(&qword_1EC214068);
  }

  v0 = sub_1C754FF1C();
  __swift_project_value_buffer(v0, qword_1EC25B7C0);
  v1 = sub_1C754FEEC();
  v2 = sub_1C755117C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1C6F5C000, v1, v2, "[Music] Disclosure state is reset.", v3, 2u);
    OUTLINED_FUNCTION_109();
  }

  v4 = [objc_opt_self() standardUserDefaults];
  v5 = OUTLINED_FUNCTION_4_88();
  [v4 removeObjectForKey_];
}

void static AppleMusicPrivacyPromptStateTracker.markShown(with:)(uint64_t a1, uint64_t a2)
{
  if (qword_1EC214068 != -1)
  {
    OUTLINED_FUNCTION_0_157(&qword_1EC214068);
  }

  v2 = sub_1C754FF1C();
  __swift_project_value_buffer(v2, qword_1EC25B7C0);
  sub_1C75504FC();
  v3 = sub_1C754FEEC();
  v4 = sub_1C755117C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *(v5 + 4) = OUTLINED_FUNCTION_3_98(4.8149e-34, v14, v6);
    OUTLINED_FUNCTION_19(&dword_1C6F5C000, v7, v8, "[Warning-Music] [Music] newDisclosureState='%s'");
    __swift_destroy_boxed_opaque_existential_1(v14);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  v9 = [objc_opt_self() standardUserDefaults];
  v10 = sub_1C755065C();
  v13 = OUTLINED_FUNCTION_4_88();
  v11 = sub_1C755068C();
  sub_1C70F8CFC(v10, v13, v11, v12, v9);
}

_BYTE *storeEnumTagSinglePayload for AppleMusicPrivacyPromptStateTracker(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t AsyncStreamWorker.__allocating_init(priority:)(uint64_t a1)
{
  v2 = swift_allocObject();
  AsyncStreamWorker.init(priority:)(a1);
  return v2;
}

uint64_t sub_1C73951CC()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD0AD08);
  __swift_project_value_buffer(v0, qword_1EDD0AD08);
  return sub_1C754FEFC();
}

uint64_t AsyncStreamWorker.init(priority:)(uint64_t a1)
{
  v2 = v1;
  v35 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B030, &qword_1C7585AF0);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B038, &qword_1C7585AF8);
  OUTLINED_FUNCTION_3_0();
  v33 = v10;
  v34 = v9;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v11);
  v36 = &v31 - v12;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B040, &qword_1C7585B00);
  OUTLINED_FUNCTION_3_0();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v18 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v31 - v20;
  swift_defaultActor_initialize();
  *(v1 + OBJC_IVAR____TtC18PhotosIntelligence17AsyncStreamWorker_taskId) = 0;
  v31 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B048, &qword_1C7585B08);
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8650], v3);
  v22 = v36;
  sub_1C7550D6C();
  (*(v5 + 8))(v8, v3);
  v23 = v33;
  v24 = v34;
  (*(v33 + 16))(v2 + OBJC_IVAR____TtC18PhotosIntelligence17AsyncStreamWorker_taskStreamContinuation, v22, v34);
  v25 = v32;
  (*(v14 + 16))(v18, v21, v32);
  v26 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  (*(v14 + 32))(v27 + v26, v18, v25);
  v28 = v35;
  v29 = sub_1C7395CA4(0, 0, v35, &unk_1C7585B18, v27);
  sub_1C6F678CC(v28);
  (*(v23 + 8))(v36, v24);
  (*(v14 + 8))(v21, v25);
  result = v31;
  *(v31 + 112) = v29;
  return result;
}

uint64_t sub_1C73955A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B060, &unk_1C7585BF0);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7395670, 0, 0);
}

uint64_t sub_1C7395670()
{
  OUTLINED_FUNCTION_42();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B040, &qword_1C7585B00);
  sub_1C7550DBC();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_5_84(v1);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6D9C8](v2);
}

uint64_t sub_1C739571C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C7395804(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v1[9] = v2;
  v1[10] = v3;
  if (!v2)
  {
    (*(v1[6] + 8))(v1[7], v1[5]);
LABEL_9:

    OUTLINED_FUNCTION_43();

    return v12();
  }

  if (sub_1C7550E5C())
  {
    sub_1C6F6E5B4(v2, v3);
    if (qword_1EDD0AD00 != -1)
    {
      OUTLINED_FUNCTION_2_109(&qword_1EDD0AD00);
    }

    v4 = sub_1C754FF1C();
    __swift_project_value_buffer(v4, qword_1EDD0AD08);
    v5 = sub_1C754FEEC();
    v6 = sub_1C755118C();
    v7 = os_log_type_enabled(v5, v6);
    v9 = v1[6];
    v8 = v1[7];
    v10 = v1[5];
    if (v7)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1C6F5C000, v5, v6, "Cancelling all pending tasks", v11, 2u);
      OUTLINED_FUNCTION_109();
    }

    (*(v9 + 8))(v8, v10);
    goto LABEL_9;
  }

  v15 = (v2 + *v2);
  v14 = swift_task_alloc();
  v1[11] = v14;
  *v14 = v1;
  v14[1] = sub_1C7395A38;

  return v15();
}

uint64_t sub_1C7395A38()
{
  OUTLINED_FUNCTION_123();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  v4 = *(v1 + 80);
  v5 = *(v1 + 72);
  v6 = *v0;
  *v3 = *v0;

  sub_1C6F6E5B4(v5, v4);
  v7 = swift_task_alloc();
  *(v2 + 64) = v7;
  *v7 = v6;
  OUTLINED_FUNCTION_5_84(v7);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6D9C8](v8);
}

uint64_t sub_1C7395BB4()
{
  OUTLINED_FUNCTION_123();
  v2 = v1;
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B040, &qword_1C7585B00) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_5_2(v7);
  *v8 = v9;
  v8[1] = sub_1C6F739D4;

  return sub_1C73955A4(v2, v5, v6, v0 + v4);
}

uint64_t sub_1C7395CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8, &qword_1C755FF40);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v24 - v10;
  sub_1C70A3CFC(a3, v24 - v10);
  v12 = sub_1C7550D5C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1C6F678CC(v11);
  }

  else
  {
    sub_1C7550D4C();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1C7550C8C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1C755071C() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t AsyncStreamWorker.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B038, &qword_1C7585AF8);
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  OUTLINED_FUNCTION_27_0();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  v9 = OBJC_IVAR____TtC18PhotosIntelligence17AsyncStreamWorker_taskStreamContinuation;
  (*(v4 + 16))(&v12 - v7, v1 + OBJC_IVAR____TtC18PhotosIntelligence17AsyncStreamWorker_taskStreamContinuation, v2, v6);
  sub_1C7550D9C();
  v10 = *(v4 + 8);
  v10(v8, v2);

  sub_1C7550E1C();

  v10((v1 + v9), v2);
  swift_defaultActor_destroy();
  return v1;
}

uint64_t AsyncStreamWorker.__deallocating_deinit()
{
  AsyncStreamWorker.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C7396098(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_7_77(sub_1C73960B8, 0);
}

uint64_t sub_1C73960B8()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v3 = *(v0 + 16);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_1C73961AC;
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DE38](v5, v6, v7, 0xD000000000000018, v8, v9, v2, v10);
}

uint64_t sub_1C73961AC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v3 + 56) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C73962B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v22 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B050, &qword_1C7585BC8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B058, &qword_1C7585BD0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v20 - v14;
  v20[1] = OBJC_IVAR____TtC18PhotosIntelligence17AsyncStreamWorker_taskStreamContinuation;
  (*(v7 + 16))(v10, a1, v6, v13);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  (*(v7 + 32))(v17 + v16, v10, v6);
  v18 = (v17 + ((v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = v21;
  v18[1] = a4;
  v23 = &unk_1C7585BE0;
  v24 = v17;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B038, &qword_1C7585AF8);
  sub_1C7550D8C();
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_1C73964F0(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 24) = a2;
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 32) = v4;
  *v4 = v3;
  v4[1] = sub_1C73965DC;

  return v6();
}

uint64_t sub_1C73965DC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v2 = *v1;
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  *(v4 + 40) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C73966DC()
{
  OUTLINED_FUNCTION_42();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B050, &qword_1C7585BC8);
  sub_1C7550CAC();
  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C739674C()
{
  OUTLINED_FUNCTION_42();
  *(v0 + 16) = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B050, &qword_1C7585BC8);
  sub_1C7550C9C();
  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1C73967F0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_7_77(sub_1C7396810, v2);
}

uint64_t sub_1C7396810()
{
  OUTLINED_FUNCTION_123();
  v1 = v0[4];
  v2 = OBJC_IVAR____TtC18PhotosIntelligence17AsyncStreamWorker_taskId;
  v3 = *(v1 + OBJC_IVAR____TtC18PhotosIntelligence17AsyncStreamWorker_taskId);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC18PhotosIntelligence17AsyncStreamWorker_taskId) = v5;
    if (qword_1EDD0AD00 == -1)
    {
      goto LABEL_3;
    }
  }

  OUTLINED_FUNCTION_2_109(&qword_1EDD0AD00);
LABEL_3:
  v6 = sub_1C754FF1C();
  v7 = __swift_project_value_buffer(v6, qword_1EDD0AD08);

  v8 = sub_1C754FEEC();
  v9 = sub_1C755118C();
  if (OUTLINED_FUNCTION_21_0(v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = *(v1 + v2);

    _os_log_impl(&dword_1C6F5C000, v8, v7, "Enqueuing task: %ld", v10, 0xCu);
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  v12 = v0[2];
  v11 = v0[3];
  v13 = *(v1 + v2);
  v14 = swift_allocObject();
  v0[5] = v14;
  v14[2] = v13;
  v14[3] = v12;
  v14[4] = v11;

  v15 = swift_task_alloc();
  v0[6] = v15;
  *v15 = v0;
  v15[1] = sub_1C73969E4;

  return sub_1C7396098(&unk_1C7585B38, v14);
}

uint64_t sub_1C73969E4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v3 + 56) = v0;

  if (v0)
  {
    v6 = *(v3 + 32);

    return MEMORY[0x1EEE6DFA0](sub_1C7396B0C, v6, 0);
  }

  else
  {

    OUTLINED_FUNCTION_43();

    return v7();
  }
}

uint64_t sub_1C7396B0C()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C7396B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C7396B8C, 0, 0);
}

uint64_t sub_1C7396B8C()
{
  OUTLINED_FUNCTION_123();
  if (qword_1EDD0AD00 != -1)
  {
    OUTLINED_FUNCTION_2_109(&qword_1EDD0AD00);
  }

  v1 = sub_1C754FF1C();
  v0[5] = __swift_project_value_buffer(v1, qword_1EDD0AD08);
  v2 = sub_1C754FEEC();
  v3 = sub_1C755118C();
  if (OUTLINED_FUNCTION_21_0(v3))
  {
    v4 = v0[2];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    OUTLINED_FUNCTION_18_5(&dword_1C6F5C000, v6, v7, "Executing task: %ld");
    OUTLINED_FUNCTION_109();
  }

  v8 = v0[3];

  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  v0[6] = v9;
  *v9 = v0;
  v9[1] = sub_1C7396D14;

  return v11();
}

uint64_t sub_1C7396D14()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v2 = *v1;
  OUTLINED_FUNCTION_14();
  *v3 = v2;

  if (v0)
  {
    OUTLINED_FUNCTION_43();

    return v4();
  }

  else
  {
    OUTLINED_FUNCTION_41();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }
}

uint64_t sub_1C7396E2C()
{
  OUTLINED_FUNCTION_49_0();
  v1 = sub_1C754FEEC();
  v2 = sub_1C755118C();
  if (OUTLINED_FUNCTION_21_0(v2))
  {
    v3 = *(v0 + 16);
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = v3;
    OUTLINED_FUNCTION_18_5(&dword_1C6F5C000, v5, v6, "Completed task: %ld");
    OUTLINED_FUNCTION_109();
  }

  OUTLINED_FUNCTION_43();

  return v7();
}

uint64_t sub_1C7396EE4()
{
  OUTLINED_FUNCTION_49_0();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1C6F739D4;

  return sub_1C7396B68(v2, v3, v4);
}

uint64_t type metadata accessor for AsyncStreamWorker(uint64_t a1)
{
  result = qword_1EDD0ACE8;
  if (!qword_1EDD0ACE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C7397004(uint64_t a1)
{
  sub_1C739722C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of AsyncStreamWorker.enqueue(block:)()
{
  OUTLINED_FUNCTION_123();
  v3 = v2;
  v5 = v4;
  v8 = (*(*v0 + 168) + **(*v0 + 168));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1C6F738F4;

  return v8(v5, v3);
}

void sub_1C739722C(uint64_t a1)
{
  if (!qword_1EDD06A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21B048, &qword_1C7585B08);
    v1 = sub_1C7550DAC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD06A30);
    }
  }
}

uint64_t sub_1C739729C()
{
  OUTLINED_FUNCTION_123();
  v2 = v1;
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B050, &qword_1C7585BC8) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v0 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_5_2(v6);
  *v7 = v8;
  v7[1] = sub_1C6F738F4;

  return sub_1C73964F0(v2, v0 + v4, v5);
}

void static FreeformStoryChapterGenerator.storyAssets(from:photoLibrary:)(uint64_t a1, void *a2)
{
  v41 = a2;
  v2 = MEMORY[0x1E69E7CD0];
  v57 = MEMORY[0x1E69E7CD0];
  v45 = *(a1 + 16);
  if (v45)
  {
    v3 = 0;
    v44 = a1 + 32;
    v4 = 0x1FB1F5000;
    do
    {
      v5 = (v44 + 104 * v3);
      v6 = v5[1];
      v7 = v4;
      v8 = v5[3];
      v9 = v5[5];
      v11 = v5[7];
      v10 = v5[8];
      v13 = v5[9];
      v12 = v5[10];
      v14 = v5[11];
      v49 = v5[12];
      sub_1C75504FC();
      v54 = v6;
      v15 = v8;
      sub_1C75504FC();
      sub_1C75504FC();
      v55 = v9;
      sub_1C75504FC();
      v53 = v11;
      sub_1C75504FC();
      v16 = v10;
      sub_1C75504FC();
      v52 = v12;
      sub_1C75504FC();
      v51 = v14;
      sub_1C75504FC();
      v50 = v16;
      v17 = [v16 v7 + 2473];
      if (v17)
      {
        v18 = v17;
        sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
        v19 = sub_1C7550B5C();
      }

      else
      {
        v19 = MEMORY[0x1E69E7CC0];
      }

      OUTLINED_FUNCTION_11_65();
      sub_1C7397E84(v19, v20, sub_1C70F1000);
      v21 = *(v55 + 16);
      v4 = &selRef_clsSceneClassifications;
      if (v21)
      {
        v46 = v13;
        v47 = v15;
        v48 = v3;
        v22 = sub_1C75504FC() + 64;
        do
        {
          v23 = *(v22 - 16);
          sub_1C75504FC();
          v24 = v23;
          sub_1C75504FC();
          sub_1C75504FC();
          v25 = [v24 fetchedObjects];
          if (v25)
          {
            v26 = v25;
            sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
            v27 = sub_1C7550B5C();
          }

          else
          {
            v27 = MEMORY[0x1E69E7CC0];
          }

          OUTLINED_FUNCTION_11_65();
          sub_1C7397E84(v27, v28, sub_1C70F1000);

          v22 += 40;
          --v21;
        }

        while (v21);

        swift_bridgeObjectRelease_n();
        v3 = v48;
      }

      else
      {
      }

      ++v3;
    }

    while (v3 != v45);
    v2 = v57;
  }

  v29 = sub_1C739CF80(v2, sub_1C70D4548, sub_1C70D0788);

  sub_1C755068C();
  sub_1C71BA830(v29, v37, v38, v30, v31, v32, v33, v34, v35, v36, v41, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57);

  v39 = objc_allocWithZone(MEMORY[0x1E69788E0]);
  v40 = v42;
  sub_1C71C8A5C();
}

void sub_1C7397760()
{
  v7 = OUTLINED_FUNCTION_300();
  v8 = type metadata accessor for Hastings.Feature(v7);
  v9 = OUTLINED_FUNCTION_18(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_29_36();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_45_33();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_38_33();
  v12 = v3 + 56;
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_31_40();
  if (v6)
  {
    while (1)
    {
LABEL_5:
      OUTLINED_FUNCTION_7_78();
      OUTLINED_FUNCTION_49_27(v14);
      sub_1C739D9A0(v2, v0);
      sub_1C70F0B34();
      sub_1C739D944(v1);
    }
  }

  while (1)
  {
    v13 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v13 >= v5)
    {

      return;
    }

    ++v4;
    if (*(v12 + 8 * v13))
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

uint64_t sub_1C73978C4(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  v4 = (result + 40);
  while (v3 != v2)
  {
    if (v2 >= *(v1 + 16))
    {
      __break(1u);
      return result;
    }

    ++v2;
    v6 = *(v4 - 1);
    v5 = *v4;
    sub_1C75504FC();
    sub_1C70F082C(&v7, v6, v5);

    v4 += 2;
  }
}

void sub_1C739796C(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  OUTLINED_FUNCTION_11();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  if ((v5 & v4) != 0)
  {
    while (1)
    {
      v9 = v2;
LABEL_7:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
      v12 = *v11;
      v13 = v11[1];
      sub_1C75504FC();
      sub_1C70F082C(&v14, v12, v13);

      if (!v6)
      {
        goto LABEL_3;
      }
    }
  }

  while (1)
  {
LABEL_3:
    v9 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v8)
    {
      break;
    }

    v6 = *(v3 + 8 * v9);
    ++v2;
    if (v6)
    {
      v2 = v9;
      goto LABEL_7;
    }
  }
}

void sub_1C7397BDC()
{
  v7 = OUTLINED_FUNCTION_300();
  v8 = type metadata accessor for Hastings.Feature(v7);
  v9 = OUTLINED_FUNCTION_18(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_29_36();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_45_33();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_38_33();
  v12 = v3 + 64;
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_31_40();
  if (v6)
  {
    while (1)
    {
LABEL_5:
      OUTLINED_FUNCTION_7_78();
      OUTLINED_FUNCTION_49_27(v14);
      sub_1C739D9A0(v2, v0);
      sub_1C70F0B34();
      sub_1C739D944(v1);
    }
  }

  while (1)
  {
    v13 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v13 >= v5)
    {

      return;
    }

    ++v4;
    if (*(v12 + 8 * v13))
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

uint64_t sub_1C7397D14()
{
  v1 = OUTLINED_FUNCTION_300();
  v2 = type metadata accessor for Hastings.Feature(v1) - 8;
  MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - v5;
  v7 = *(v0 + 16);
  if (v7)
  {
    v8 = v0 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v9 = *(v4 + 72);
    do
    {
      v10 = OUTLINED_FUNCTION_154();
      sub_1C72373C4(v10, v11);
      sub_1C70F0B34();
      sub_1C739D944(v6);
      v8 += v9;
      --v7;
    }

    while (v7);
  }
}

void sub_1C7397E84(uint64_t a1, uint64_t (*a2)(void), void (*a3)(id *, id))
{
  v5 = a2();
  for (i = 0; v5 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = OUTLINED_FUNCTION_154();
      v7 = MEMORY[0x1CCA5DDD0](v8);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    a3(&v9, v7);
  }
}

void sub_1C7397F84(uint64_t a1, void (*a2)(_BYTE *, uint64_t, uint64_t, uint64_t))
{
  v6 = 0;
  v7 = a1 + 56;
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_31_40();
  if (v3)
  {
    while (1)
    {
LABEL_5:
      OUTLINED_FUNCTION_7_78();
      v10 = (*(a1 + 48) + 24 * v9);
      v11 = *(v10 + 1);
      v12 = *(v10 + 2);
      v13 = *v10;
      sub_1C75504FC();
      a2(v14, v13, v11, v12);
    }
  }

  while (1)
  {
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v2)
    {
      break;
    }

    ++v6;
    if (*(v7 + 8 * v8))
    {
      goto LABEL_5;
    }
  }
}

void sub_1C7398074(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_1C755165C();
    sub_1C6F65BE8(0, &qword_1EDD0FAB0, 0x1E695D630);
    sub_1C72B96F4();
    sub_1C7550FEC();
    v1 = v13[1];
    v2 = v13[2];
    v3 = v13[3];
    v4 = v13[4];
    v5 = v13[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    if (!*(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10))))))
    {
LABEL_18:
      sub_1C6F61E88(v1);
      return;
    }

    while (1)
    {
      sub_1C70F25A0(v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1C75516FC())
      {
        sub_1C6F65BE8(0, &qword_1EDD0FAB0, 0x1E695D630);
        swift_dynamicCast();
        v11 = v4;
        v12 = v5;
        if (v13[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1C7398254(uint64_t a1, uint64_t a2, _BYTE *a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 1008) = v7;
  *(v8 + 1000) = a7;
  *(v8 + 992) = a6;
  *(v8 + 984) = a5;
  *(v8 + 976) = a4;
  *(v8 + 968) = a1;
  v12 = sub_1C754DFFC();
  *(v8 + 1016) = v12;
  OUTLINED_FUNCTION_18(v12);
  *(v8 + 1024) = v13;
  *(v8 + 1032) = swift_task_alloc();
  v14 = sub_1C754F2FC();
  *(v8 + 1040) = v14;
  OUTLINED_FUNCTION_18(v14);
  *(v8 + 1048) = v15;
  *(v8 + 1056) = swift_task_alloc();
  *(v8 + 1064) = swift_task_alloc();
  *(v8 + 1072) = swift_task_alloc();
  *(v8 + 1080) = swift_task_alloc();
  v16 = sub_1C754F38C();
  *(v8 + 1088) = v16;
  OUTLINED_FUNCTION_18(v16);
  *(v8 + 1096) = v17;
  *(v8 + 1104) = swift_task_alloc();
  *(v8 + 1112) = *a2;
  *(v8 + 1128) = *(a2 + 16);
  *(v8 + 1136) = *(a2 + 24);
  *(v8 + 1232) = *a3;
  memcpy((v8 + 16), a4, 0x130uLL);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

uint64_t sub_1C7398430()
{
  v1 = OUTLINED_FUNCTION_154();
  __swift_project_boxed_opaque_existential_1(v1, v2);
  sub_1C754F1CC();
  v3 = OUTLINED_FUNCTION_154();
  OUTLINED_FUNCTION_70(v3, v4);
  sub_1C754F15C();
  sub_1C754F2CC();
  v5 = v0[131];
  v6 = v0[122];
  sub_1C754F2BC();
  memcpy(v0 + 40, v6, 0x130uLL);
  v0[144] = *(v5 + 32);
  v0[145] = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v7 = OUTLINED_FUNCTION_154();
  v8(v7);
  v9 = swift_task_alloc();
  v0[146] = v9;
  *v9 = v0;
  v9[1] = sub_1C73986BC;
  v10 = v0[143];
  v11 = v0[134];

  return sub_1C7399648(v10, 100, (v0 + 40), (v0 + 116), v11);
}

uint64_t sub_1C73986BC()
{
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1176) = v4;
  *(v2 + 1184) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1C73987CC()
{
  v43 = v0;
  v1 = 0;
  v2 = v0[143];
  v34 = v2;
  v35 = *(v2 + 16);
  v3 = v0[148];
  v4 = (v2 + 40);
  v5 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v0[149] = v5;
    if (v35 == v1)
    {
      break;
    }

    if (v1 >= *(v34 + 16))
    {
      __break(1u);
      return;
    }

    v6 = v0[147];
    v7 = v0[125];
    v8 = *v4;
    v37[0] = *(v4 - 1);
    v37[1] = v8;
    sub_1C75504FC();
    sub_1C739ADD8(v37, v6, v7, &v38);

    v10 = v38;
    v9 = v39;
    v12 = v40;
    v11 = v41;
    v13 = v42;
    if (v39)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB25A8(0, *(v5 + 16) + 1, 1, v5);
        v5 = v18;
      }

      v15 = *(v5 + 16);
      v14 = *(v5 + 24);
      v16 = v5;
      if (v15 >= v14 >> 1)
      {
        sub_1C6FB25A8(v14 > 1, v15 + 1, 1, v5);
        v16 = v19;
      }

      *(v16 + 16) = v15 + 1;
      v5 = v16;
      v17 = (v16 + 40 * v15);
      v17[4] = v10;
      v17[5] = v9;
      v17[6] = v12;
      v17[7] = v11;
      v17[8] = v13;
      v0 = v33;
    }

    else
    {
      sub_1C739DA04(v38, 0, v40);
    }

    v4 += 2;
    ++v1;
  }

  sub_1C754F2DC();
  if (v3)
  {
    v20 = v0[131];
    v36 = v0[130];
    v21 = v0[124];
    v22 = v0[123];
    __swift_destroy_boxed_opaque_existential_1(v0 + 116);

    OUTLINED_FUNCTION_70(v22, v22[3]);
    sub_1C754F1AC();
    v23 = OUTLINED_FUNCTION_15_1();
    v24(v23);
    (*(v20 + 8))(v21, v36);
    OUTLINED_FUNCTION_10_69();

    OUTLINED_FUNCTION_6_0();

    v25();
  }

  else
  {
    v26 = v0[144];
    v27 = v0[142];
    v28 = v0[141];
    sub_1C754F2BC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
    v29 = swift_allocObject();
    v0[150] = v29;
    *(v29 + 16) = xmmword_1C755BAB0;
    *(v29 + 32) = v28;
    *(v29 + 40) = v27;
    memcpy(v0 + 78, v0 + 2, 0x130uLL);
    v30 = OUTLINED_FUNCTION_154();
    v26(v30);
    swift_bridgeObjectRetain_n();
    v31 = swift_task_alloc();
    v0[151] = v31;
    *v31 = v0;
    v31[1] = sub_1C7398B78;
    v32 = v0[132];

    sub_1C7399648(v29, 0, (v0 + 78), (v0 + 116), v32);
  }
}

uint64_t sub_1C7398B78(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_40();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_40();
  *v7 = v6;
  *(v4 + 1216) = v1;

  if (v1)
  {
  }

  else
  {
    *(v4 + 1224) = a1;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C7398CB8()
{
  v78 = v0;
  v1 = sub_1C6FE1070(*(v0 + 1128), *(v0 + 1136), *(v0 + 1224));
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = ~v6;

  if (v8)
  {
    if (v7)
    {
      sub_1C75504FC();
      OUTLINED_FUNCTION_17_71();
      sub_1C739DA64(v9, v10, v11, v12);
      v13 = sub_1C754FEEC();
      v14 = sub_1C755119C();

      OUTLINED_FUNCTION_17_71();
      sub_1C739DA7C(v15, v16, v17, v18);
      if (os_log_type_enabled(v13, v14))
      {
        v73 = *(v0 + 1128);
        v74 = *(v0 + 1136);
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v21 = v1;
        v22 = swift_slowAlloc();
        v76 = v22;
        *v19 = 136380931;
        *(v19 + 4) = sub_1C6F765A4(v73, v74, &v76);
        *(v19 + 12) = 2112;
        sub_1C6FE369C(v21, v3, v5, 1);
        v23 = _swift_stdlib_bridgeErrorToNSError();
        *(v19 + 14) = v23;
        *v20 = v23;
        _os_log_impl(&dword_1C6F5C000, v13, v14, "Retrieval failed for fallback query '%{private}s': %@", v19, 0x16u);
        sub_1C6FB5FC8(v20, &qword_1EC215190, &qword_1C755C730);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        __swift_destroy_boxed_opaque_existential_1(v22);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      if (*(v0 + 1000))
      {
        v24 = *(v0 + 1136);
        v25 = *(v0 + 1128);
        OUTLINED_FUNCTION_50_28();

        OUTLINED_FUNCTION_37_35("Retrieval failed for fallback query '");
        MEMORY[0x1CCA5CD70](v25, v24);
        MEMORY[0x1CCA5CD70](39, 0xE100000000000000);
        sub_1C7161CDC(v76, v77);
      }

      v26 = [objc_allocWithZone(MEMORY[0x1E6978840]) init];
      OUTLINED_FUNCTION_61_0();
      sub_1C75504DC();
      OUTLINED_FUNCTION_61_0();
      v28 = v27;
      v29 = sub_1C75504DC();
      OUTLINED_FUNCTION_17_71();
      sub_1C739DA7C(v30, v31, v32, v33);
    }

    else
    {
      v42 = v1;
      sub_1C75504FC();
      sub_1C75504FC();
      OUTLINED_FUNCTION_17_71();
      sub_1C739DA7C(v43, v44, v45, v46);
      v26 = v42;
      v29 = v5;
      v28 = v3;
    }
  }

  else
  {
    if (qword_1EDD08268 != -1)
    {
      OUTLINED_FUNCTION_1_117();
      swift_once();
    }

    v34 = sub_1C754FF1C();
    __swift_project_value_buffer(v34, qword_1EDD08270);
    v35 = sub_1C754FEEC();
    v36 = sub_1C755119C();
    if (os_log_type_enabled(v35, v36))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_6(&dword_1C6F5C000, v37, v38, "Retrieved assets from fallback query is unexpectedly nil, did searchd crash?");
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v39 = *(v0 + 1000);

    if (v39)
    {
      v40 = *(v0 + 1136);
      v41 = *(v0 + 1128);
      OUTLINED_FUNCTION_50_28();

      OUTLINED_FUNCTION_37_35("Retrieval failed for fallback query '");
      MEMORY[0x1CCA5CD70](v41, v40);
      MEMORY[0x1CCA5CD70](39, 0xE100000000000000);
      sub_1C7161CDC(v76, v77);
    }

    v26 = [objc_allocWithZone(MEMORY[0x1E6978840]) init];
    v28 = OUTLINED_FUNCTION_48_25();
    v29 = OUTLINED_FUNCTION_48_25();
  }

  v47 = *(v0 + 1216);
  sub_1C754F2EC();
  v48 = *(v0 + 1192);
  if (v47)
  {
    v49 = *(v0 + 1104);
    v50 = *(v0 + 1096);
    v75 = *(v0 + 1088);
    v51 = *(v0 + 984);
    __swift_destroy_boxed_opaque_existential_1((v0 + 928));

    OUTLINED_FUNCTION_70(v51, v51[3]);
    sub_1C754F1AC();
    (*(v50 + 8))(v49, v75);
    OUTLINED_FUNCTION_10_69();

    OUTLINED_FUNCTION_6_0();
  }

  else
  {
    v69 = *(v0 + 1232);
    v62 = *(v0 + 1136);
    v66 = *(v0 + 1120);
    v67 = *(v0 + 1112);
    v68 = *(v0 + 1128);
    v70 = *(v0 + 1104);
    v71 = *(v0 + 1096);
    v72 = *(v0 + 1088);
    v53 = *(v0 + 1032);
    v54 = *(v0 + 1024);
    v65 = *(v0 + 1016);
    v55 = *(v0 + 968);
    sub_1C75504FC();
    sub_1C75504FC();
    v56 = v26;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C754DFEC();
    v57 = sub_1C754DF8C();
    v63 = v58;
    v64 = v57;

    (*(v54 + 8))(v53, v65);
    __swift_destroy_boxed_opaque_existential_1((v0 + 928));
    *(v55 + 88) = 0;
    *(v55 + 96) = 0;
    *v55 = v64;
    *(v55 + 8) = v63;
    *(v55 + 16) = v67;
    *(v55 + 24) = v66;
    *(v55 + 32) = v69;
    *(v55 + 40) = v48;
    *(v55 + 48) = v68;
    *(v55 + 56) = v62;
    *(v55 + 64) = v56;
    *(v55 + 72) = v28;
    *(v55 + 80) = v29;
    v59 = OUTLINED_FUNCTION_154();
    OUTLINED_FUNCTION_70(v59, v60);
    OUTLINED_FUNCTION_57_0();
    sub_1C754F1AC();
    (*(v71 + 8))(v70, v72);

    OUTLINED_FUNCTION_43();
  }

  return v52();
}

uint64_t sub_1C739935C()
{
  OUTLINED_FUNCTION_14_59();
  v1 = OUTLINED_FUNCTION_57_0();
  v2(v1);
  v3 = OUTLINED_FUNCTION_43_34();
  v4(v3, v0);
  OUTLINED_FUNCTION_32_36();

  OUTLINED_FUNCTION_43();

  return v5();
}

uint64_t sub_1C739942C()
{
  OUTLINED_FUNCTION_14_59();
  v1 = OUTLINED_FUNCTION_57_0();
  v2(v1);
  v3 = OUTLINED_FUNCTION_43_34();
  v4(v3, v0);
  OUTLINED_FUNCTION_32_36();

  OUTLINED_FUNCTION_43();

  return v5();
}

uint64_t sub_1C739953C()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD08270);
  __swift_project_value_buffer(v0, qword_1EDD08270);
  return sub_1C754FEFC();
}

uint64_t sub_1C73995B8(uint64_t a1, __int128 *a2)
{
  sub_1C754FEFC();
  *(v2 + OBJC_IVAR____TtC18PhotosIntelligence29FreeformStoryChapterGenerator_photoLibrary) = a1;
  sub_1C6FD80E4(a2, v2 + OBJC_IVAR____TtC18PhotosIntelligence29FreeformStoryChapterGenerator_storyAssetsFetcher);
  return v2;
}

uint64_t sub_1C7399648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[48] = a5;
  v6[49] = v5;
  v6[46] = a2;
  v6[47] = a4;
  v6[45] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2178D8, &unk_1C756C900);
  v6[50] = v8;
  v6[51] = *(v8 - 8);
  v6[52] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21A3C0, &qword_1C7583FA0);
  v6[53] = v9;
  v6[54] = *(v9 - 8);
  v6[55] = swift_task_alloc();
  v10 = sub_1C754F38C();
  v6[56] = v10;
  v6[57] = *(v10 - 8);
  v6[58] = swift_task_alloc();
  v11 = swift_task_alloc();
  v12 = *(a3 + 168);
  v6[59] = v11;
  v6[60] = v12;
  v6[61] = *(a3 + 192);

  return MEMORY[0x1EEE6DFA0](sub_1C73997FC, 0, 0);
}

uint64_t sub_1C73997FC()
{
  v1 = v0[23].i64[1];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1C754F1CC();
  sub_1C754F2CC();
  v2 = *(v0[22].i64[1] + 16);
  if (!v2)
  {
    v10 = v0[24].i64[0];
    sub_1C75504DC();
    v11 = OUTLINED_FUNCTION_61_0();
    OUTLINED_FUNCTION_70(v11, v12);
    sub_1C754F1AC();
    v13 = OUTLINED_FUNCTION_15_1();
    v14(v13);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v15 + 8))(v10);

    OUTLINED_FUNCTION_94_1();

    __asm { BRAA            X2, X16 }
  }

  v3 = [*(v0[24].i64[1] + OBJC_IVAR____TtC18PhotosIntelligence29FreeformStoryChapterGenerator_photoLibrary) librarySpecificFetchOptions];
  v0[31].i64[0] = v3;
  if (qword_1EDD08290 != -1)
  {
    swift_once();
  }

  v4 = v0[22].i64[1];
  v5 = sub_1C7550B3C();
  [v3 setFetchPropertySets_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C7564A90;
  v7 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v6 + 32) = sub_1C6F6AF98(0x6E6F697461657263, 0xEC00000065746144, 1);
  v8 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v6 + 40) = sub_1C6F6AF98(1684632949, 0xE400000000000000, 1);
  sub_1C71F8834(v6, v3);
  v43 = MEMORY[0x1E69E7CC0];
  sub_1C755195C();
  sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
  v9 = v4 + 40;
  do
  {
    sub_1C75504FC();
    OUTLINED_FUNCTION_61_0();
    sub_1C7073450();
    sub_1C755192C();
    sub_1C755196C();
    sub_1C755197C();
    sub_1C755193C();
    v9 += 16;
    --v2;
  }

  while (v2);
  sub_1C754F2DC();
  if (qword_1EDD08268 != -1)
  {
    OUTLINED_FUNCTION_1_117();
    swift_once();
  }

  v18 = sub_1C754FF1C();
  v0[31].i64[1] = __swift_project_value_buffer(v18, qword_1EDD08270);
  sub_1C75504FC();
  v19 = sub_1C754FEEC();
  v20 = sub_1C755117C();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    *(v21 + 4) = sub_1C6FB6304();

    _os_log_impl(&dword_1C6F5C000, v19, v20, "Start query batch for story chapters with %ld", v21, 0xCu);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  v0[11].i64[0] = &type metadata for EmbeddingSearchThresholdingModels.VersionHandlingEmbeddingSearchThresholdModel;
  v0[11].i64[1] = &off_1F46ACFD0;
  v22 = objc_opt_self();
  sub_1C75504FC();
  v23 = [v22 currentUnifiedEmbeddingVersion];
  v24 = v23;
  if (v23)
  {
    v25 = [v23 integerValue];
  }

  else
  {
    v25 = 0;
  }

  v0[9].i8[8] = 3;
  v0[10].i64[0] = v25;
  v0[10].i8[8] = v24 == 0;
  sub_1C754F2DC();
  v26 = v0[30].i64[1];
  v41 = v0[30].i64[0];
  v27 = v0[24].i64[1];
  v40 = v0[23].i64[1];
  v42 = v22;
  v28 = v0[23].i64[0];
  v29 = [objc_opt_self() shotlistMatchingEmbeddingSearchRetrievalLimit];
  sub_1C6FB5E28(&v0[9].i64[1], v0[2].i64);
  v0[1].i8[0] = 1;
  v0[1].i64[1] = 1;
  v0[5].i64[1] = 1;
  v0[6].i64[0] = v26;
  v0[6].i64[1] = v28;
  v0[7] = vdupq_n_s64(1uLL);
  v0[8].i8[0] = 1;
  v0[8].i64[1] = 700;
  v0[9].i8[0] = 0;
  v0[4].i64[1] = v29;
  v0[5].i8[0] = 0;
  v31 = *(v27 + OBJC_IVAR____TtC18PhotosIntelligence29FreeformStoryChapterGenerator_storyAssetsFetcher + 24);
  v30 = *(v27 + OBJC_IVAR____TtC18PhotosIntelligence29FreeformStoryChapterGenerator_storyAssetsFetcher + 32);
  OUTLINED_FUNCTION_70((v27 + OBJC_IVAR____TtC18PhotosIntelligence29FreeformStoryChapterGenerator_storyAssetsFetcher), v31);
  v39 = *(v30 + 24);
  sub_1C75504FC();
  v39(v43, v0 + 1, v40, v31, v30);
  v0[32].i64[0] = sub_1C7238810(v41, v26);
  v0[13].i64[1] = &type metadata for EmbeddingSearchThresholdingModels.VersionHandlingEmbeddingSearchThresholdModel;
  v0[14].i64[0] = &off_1F46ACFD0;
  v32 = [v42 currentUnifiedEmbeddingVersion];
  v33 = v32;
  if (v32)
  {
    v34 = [v32 integerValue];
  }

  else
  {
    v34 = 0;
  }

  v0[12].i8[0] = 2;
  v0[12].i64[1] = v34;
  v0[13].i8[0] = v33 == 0;
  sub_1C754F2DC();
  __swift_project_boxed_opaque_existential_1(v0[23].i64[1], v1[3]);
  sub_1C754F1CC();
  v0[32].i64[1] = sub_1C6FB6304();

  sub_1C7550DBC();
  v0[33].i64[0] = OBJC_IVAR____TtC18PhotosIntelligence29FreeformStoryChapterGenerator_logger;
  v0[34].i64[1] = MEMORY[0x1E69E7CC8];
  v0[34].i64[0] = 0x3FD3333333333333;
  v0[33].i64[1] = 0;
  v35 = swift_task_alloc();
  v0[35].i64[0] = v35;
  *v35 = v0;
  OUTLINED_FUNCTION_9_77(v35);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_94_1();

  return MEMORY[0x1EEE6D9C8](v36);
}

uint64_t sub_1C739A134()
{
  v1 = *v0;
  OUTLINED_FUNCTION_40();
  *v2 = v1;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C739A228()
{
  v145 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 256);
  v143 = v0 + 16;
  if (v2 == 255)
  {
    v139 = (v0 + 152);
    v141 = (v0 + 192);
    v17 = *(v0 + 536);
    v18 = *(v0 + 376);
    (*(*(v0 + 408) + 8))(*(v0 + 416), *(v0 + 400));

    OUTLINED_FUNCTION_70(v18, v18[3]);
    sub_1C754F1AC();
    sub_1C754F2EC();
    if (!v17)
    {
      v61 = *(v0 + 464);
      v62 = *(v0 + 448);
      v63 = *(v0 + 456);
      v64 = *(v0 + 376);

      v65 = *(v63 + 8);
      v65(v61, v62);
      v66 = OUTLINED_FUNCTION_15_1();
      v67(v66);
      sub_1C70DF138(v143);
      __swift_destroy_boxed_opaque_existential_1(v139);
      __swift_destroy_boxed_opaque_existential_1(v141);
      OUTLINED_FUNCTION_70(v64, v64[3]);
      sub_1C754F1AC();
      v68 = OUTLINED_FUNCTION_57_0();
      (v65)(v68);

      OUTLINED_FUNCTION_24_38();

      __asm { BRAA            X2, X16 }
    }

    v138 = *(v0 + 472);
    v20 = *(v0 + 456);
    v19 = *(v0 + 464);
    v21 = *(v0 + 448);
    v22 = *(v0 + 424);
    v23 = *(v0 + 376);

    v24 = *(v20 + 8);
    v24(v19, v21);
    v25 = OUTLINED_FUNCTION_43_34();
    v26(v25, v22);
    sub_1C70DF138(v143);
    __swift_destroy_boxed_opaque_existential_1(v139);
    __swift_destroy_boxed_opaque_existential_1(v141);

    OUTLINED_FUNCTION_70(v23, v23[3]);
    sub_1C754F1AC();
    v24(v138, v21);
LABEL_6:

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_24_38();

    __asm { BRAA            X1, X16 }
  }

  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v5 = *(v0 + 536);
  v134 = objc_autoreleasePoolPush();
  sub_1C754F2DC();
  v136 = v3;
  v137 = v4;
  v133 = v1;
  v135 = v2;
  if (v5)
  {

    v6 = *(v0 + 496);
    v7 = *(v0 + 464);
    v130 = *(v0 + 472);
    v9 = *(v0 + 448);
    v8 = *(v0 + 456);
    v10 = *(v0 + 432);
    v11 = *(v0 + 416);
    v125 = *(v0 + 424);
    v126 = *(v0 + 440);
    v12 = *(v0 + 400);
    v13 = *(v0 + 408);
    v14 = *(v0 + 376);
    v132 = *(v0 + 384);
    objc_autoreleasePoolPop(v134);
    sub_1C710A128(v133, v137, v136, v135);

    (*(v13 + 8))(v11, v12);
    v15 = *(v8 + 8);
    v15(v7, v9);
    (*(v10 + 8))(v126, v125);
    sub_1C70DF138(v143);
    __swift_destroy_boxed_opaque_existential_1((v0 + 152));
    __swift_destroy_boxed_opaque_existential_1((v0 + 192));

    OUTLINED_FUNCTION_70(v14, v14[3]);
    sub_1C754F1AC();
    v15(v130, v9);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v16 + 8))(v132);
    goto LABEL_6;
  }

  v29 = *(v0 + 544);
  v142 = *(v0 + 520);
  if ((v2 & 1) == 0)
  {
    v71 = *(v0 + 512);
    *(v0 + 312) = v1;
    *(v0 + 320) = v4;
    *(v0 + 328) = v3;
    sub_1C739B2D4((v0 + 312), (v0 + 192), v71, (v0 + 288));
    v72 = *(v0 + 288);
    v140 = *(v0 + 296);
    v73 = MEMORY[0x1E69E7CC8];
    v74 = *(v72 + 16);
LABEL_22:
    v75 = 32 * v5;
    while (v74 != v5)
    {
      if (v5 >= *(v72 + 16))
      {
        __break(1u);
        goto LABEL_54;
      }

      v76 = v75 + 32;
      ++v5;
      v77 = *(v72 + v75 + 56);
      v75 += 32;
      if ((v77 & 1) == 0)
      {
        v78 = *(v72 + v76);
        v79 = *(v72 + v76 + 8);
        v80 = *(v72 + v76 + 16);
        sub_1C75504FC();
        swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 352) = v73;
        v128 = v78;
        v54 = sub_1C6F78124(v78, v79);
        if (__OFADD__(v73[2], (v81 & 1) == 0))
        {
          goto LABEL_56;
        }

        v82 = v54;
        v83 = v81;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218DE0, &unk_1C7569730);
        v54 = sub_1C7551A2C();
        if (v54)
        {
          v84 = v79;
          v54 = sub_1C6F78124(v128, v79);
          if ((v83 & 1) != (v85 & 1))
          {
            goto LABEL_15;
          }

          v82 = v54;
        }

        else
        {
          v84 = v79;
        }

        v73 = *(v0 + 352);
        if (v83)
        {
          *(v73[7] + 8 * v82) = v80;
        }

        else
        {
          v73[(v82 >> 6) + 8] |= 1 << v82;
          v86 = (v73[6] + 16 * v82);
          *v86 = v128;
          v86[1] = v84;
          *(v73[7] + 8 * v82) = v80;
          v87 = v73[2];
          v88 = __OFADD__(v87, 1);
          v89 = v87 + 1;
          if (v88)
          {
            goto LABEL_57;
          }

          v73[2] = v89;
        }

        v3 = v136;
        goto LABEL_22;
      }
    }

    if (v3)
    {
      swift_unknownObjectRetain_n();
      v90 = sub_1C75504FC();
      sub_1C739D5B0(v90, v3);
      v131 = v91;

      swift_unknownObjectRelease();
      v1 = v133;
    }

    else
    {
      v107 = sub_1C754FEEC();
      v108 = sub_1C755119C();
      v1 = v133;
      if (os_log_type_enabled(v107, v108))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_6(&dword_1C6F5C000, v109, v110, "No query embedding info for search results, but we expected to have performed embedding or complete search.");
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      v131 = sub_1C75504DC();
    }

    v111 = *(v0 + 496);
    v112 = objc_opt_self();
    v113 = sub_1C75504FC();
    v114 = sub_1C71CD90C(v113);
    v115 = sub_1C739DA94(v114, v111, v112);
    if (!v115)
    {
      v115 = [objc_allocWithZone(MEMORY[0x1E6978840]) init];
    }

    v116 = v115;
    v92 = *(v0 + 552);
    v117 = [v137 string];
    v127 = sub_1C755068C();
    v119 = v118;

    sub_1C75504FC();
    v129 = v116;
    sub_1C75504FC();
    swift_isUniquelyReferenced_nonNull_native();
    v144[0] = v92;
    v120 = OUTLINED_FUNCTION_323();
    sub_1C6FC9A1C(v120, v121, v131, 0, v127, v119, v122);
    v94 = v137;

    swift_unknownObjectRelease();

    v93 = v135;
    v104 = v136;
    v105 = v134;
    v106 = v142;
    goto LABEL_50;
  }

  v30 = v1;
  sub_1C75504FC();
  v31 = v4;
  v32 = sub_1C754FEEC();
  v33 = sub_1C755119C();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = *(v0 + 360);
    v35 = swift_slowAlloc();
    v144[0] = swift_slowAlloc();
    *v35 = 136643331;
    v36 = [v30 string];
    v37 = sub_1C755068C();
    v39 = v38;

    v40 = sub_1C6F765A4(v37, v39, v144);

    *(v35 + 4) = v40;
    *(v35 + 12) = 2080;
    v41 = MEMORY[0x1CCA5D090](v34, MEMORY[0x1E69E6158]);
    v43 = sub_1C6F765A4(v41, v42, v144);

    *(v35 + 14) = v43;
    *(v35 + 22) = 2080;
    v1 = v133;
    swift_getErrorValue();
    v44 = sub_1C7551EAC();
    v46 = sub_1C6F765A4(v44, v45, v144);

    *(v35 + 24) = v46;
    _os_log_impl(&dword_1C6F5C000, v32, v33, "Error retrieving assets for query '%{sensitive}s' with queries %s, error: %s", v35, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    v4 = v137;
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v47 = *(v0 + 552);
  v48 = v4;
  v49 = [v30 string];
  v50 = sub_1C755068C();
  v52 = v51;

  v53 = v4;
  swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 336) = v47;
  v54 = sub_1C6F78124(v50, v52);
  if (__OFADD__(*(v47 + 16), (v55 & 1) == 0))
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v56 = v54;
  v57 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215268, &qword_1C755CB38);
  v54 = sub_1C7551A2C();
  if ((v54 & 1) == 0)
  {
LABEL_39:
    v92 = *(v0 + 336);
    v93 = v135;
    v94 = v137;
    if (v57)
    {
      v95 = v92[7] + 32 * v56;
      v96 = *v95;
      v97 = *(v95 + 8);
      v98 = *(v95 + 16);
      v99 = *(v95 + 24);
      *v95 = v137;
      *(v95 + 8) = 0;
      *(v95 + 16) = 0;
      *(v95 + 24) = 1;
      sub_1C6FCA52C(v96, v97, v98, v99);
LABEL_43:
      v104 = v136;
      v105 = v134;
      v106 = v142;

LABEL_50:
      objc_autoreleasePoolPop(v105);
      sub_1C710A128(v1, v94, v104, v93);
      *(v0 + 552) = v92;
      *(v0 + 544) = v29 + 0.7 / (v106 + v106);
      *(v0 + 536) = 0;
      v123 = swift_task_alloc();
      *(v0 + 560) = v123;
      *v123 = v0;
      OUTLINED_FUNCTION_9_77(v123);
      OUTLINED_FUNCTION_41();
      OUTLINED_FUNCTION_24_38();

      return MEMORY[0x1EEE6D9C8](v54);
    }

    v92[(v56 >> 6) + 8] |= 1 << v56;
    v100 = (v92[6] + 16 * v56);
    *v100 = v50;
    v100[1] = v52;
    v101 = v92[7] + 32 * v56;
    *(v101 + 8) = 0;
    *(v101 + 16) = 0;
    *v101 = v137;
    *(v101 + 24) = 1;
    v102 = v92[2];
    v88 = __OFADD__(v102, 1);
    v103 = v102 + 1;
    if (!v88)
    {
      v92[2] = v103;
      sub_1C75504FC();
      goto LABEL_43;
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    return MEMORY[0x1EEE6D9C8](v54);
  }

  v54 = sub_1C6F78124(v50, v52);
  if ((v57 & 1) == (v58 & 1))
  {
    v56 = v54;
    goto LABEL_39;
  }

LABEL_15:
  OUTLINED_FUNCTION_24_38();

  return sub_1C7551E4C();
}

double sub_1C739ADD8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v30 = a3;
  v6 = *a1;
  v5 = a1[1];
  v7 = sub_1C6FE1070(*a1, v5, a2);
  if (v10 == -1)
  {
    sub_1C75504FC();
    v19 = sub_1C754FEEC();
    v20 = sub_1C755119C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v28 = v22;
      *v21 = 136380675;
      *(v21 + 4) = sub_1C6F765A4(v6, v5, &v28);
      _os_log_impl(&dword_1C6F5C000, v19, v20, "Could not find retrieved asset result for shot query %{private}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1CCA5F8E0](v22, -1, -1);
      MEMORY[0x1CCA5F8E0](v21, -1, -1);
    }

    if (v30)
    {
      v28 = 0;
      v29 = 0xE000000000000000;
      sub_1C755180C();

      v28 = 0xD00000000000002CLL;
      v29 = 0x80000001C75AD100;
      MEMORY[0x1CCA5CD70](v6, v5);
      MEMORY[0x1CCA5CD70](39, 0xE100000000000000);
      sub_1C7161CDC(v28, v29);
    }

    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  else
  {
    v11 = v7;
    v12 = v8;
    v13 = v9;
    v14 = v10;
    if (v10)
    {
      sub_1C75504FC();
      sub_1C739DA64(v11, v12, v13, v14);
      v15 = sub_1C754FEEC();
      v16 = sub_1C755119C();

      sub_1C739DA7C(v11, v12, v13, v14);
      if (os_log_type_enabled(v15, v16))
      {
        log = v15;
        v17 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v28 = v27;
        *v17 = 136380931;
        *(v17 + 4) = sub_1C6F765A4(v6, v5, &v28);
        *(v17 + 12) = 2112;
        sub_1C6FE369C(v11, v12, v13, 1);
        v18 = _swift_stdlib_bridgeErrorToNSError();
        *(v17 + 14) = v18;
        *v25 = v18;
        _os_log_impl(&dword_1C6F5C000, log, v16, "Retrieval failed for shot query '%{private}s': %@", v17, 0x16u);
        sub_1C6FB5FC8(v25, &qword_1EC215190, &qword_1C755C730);
        MEMORY[0x1CCA5F8E0](v25, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v27);
        MEMORY[0x1CCA5F8E0](v27, -1, -1);
        MEMORY[0x1CCA5F8E0](v17, -1, -1);
      }

      else
      {
      }

      if (v30)
      {
        v28 = 0;
        v29 = 0xE000000000000000;
        sub_1C755180C();

        v28 = 0xD00000000000002CLL;
        v29 = 0x80000001C75AD100;
        MEMORY[0x1CCA5CD70](v6, v5);
        MEMORY[0x1CCA5CD70](39, 0xE100000000000000);
        sub_1C7161CDC(v28, v29);
        sub_1C739DA7C(v11, v12, v13, v14);
      }

      else
      {
        sub_1C739DA7C(v11, v12, v13, v14);
      }

      *(a4 + 32) = 0;
      result = 0.0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
    }

    else
    {
      v24 = v7;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C739DA7C(v11, v12, v13, v14);
      *a4 = v6;
      *(a4 + 8) = v5;
      *(a4 + 16) = v11;
      *(a4 + 24) = v12;
      *(a4 + 32) = v13;
    }
  }

  return result;
}

uint64_t sub_1C739B230()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C755F060;
  *(v0 + 32) = sub_1C755068C();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1C755068C();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_1C755068C();
  *(v0 + 72) = v3;
  result = sub_1C755068C();
  *(v0 + 80) = result;
  *(v0 + 88) = v5;
  qword_1EDD28A18 = v0;
  return result;
}

void sub_1C739B2D4(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  if (v8)
  {
    v10 = a2[3];
    v11 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v10);
    v12 = v6;
    v13 = *(v11 + 8);
    v61 = v12;
    v14 = swift_unknownObjectRetain_n();
    v13(v14, v10, v11);
    if (v4)
    {
      swift_unknownObjectRelease_n();

      return;
    }

    v20 = v15;
    v59 = v8;
    v21 = 0;
    v65 = *(v7 + 16);
    v63 = v7 + 32;
    v62 = MEMORY[0x1E69E7CC0];
    v64 = v7;
    while (1)
    {
      if (v21 == v65)
      {
        swift_bridgeObjectRetain_n();
        v45 = v61;
        v46 = v59;
        swift_unknownObjectRetain_n();
        swift_retain_n();
        v47 = v45;
        sub_1C75504FC();
        v48 = sub_1C754FEEC();
        v49 = sub_1C755117C();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 134218496;
          v57 = *(FreeformStoryFetching.Result.uuids.getter(v50, v51, v52, v53, v54, v55, v56) + 16);
          swift_unknownObjectRelease();

          *(v50 + 4) = v57;
          swift_unknownObjectRelease();

          *(v50 + 12) = 2048;
          v58 = *(v62 + 16);

          *(v50 + 14) = v58;
          v46 = v59;

          *(v50 + 22) = 2048;
          *(v50 + 24) = *(a3 + 16);

          _os_log_impl(&dword_1C6F5C000, v48, v49, "Filtered %ld down to %ld from re-thresholding on %ld assets.", v50, 0x20u);
          MEMORY[0x1CCA5F8E0](v50, -1, -1);

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease_n();

          swift_bridgeObjectRelease_n();
        }

        *a4 = v62;
        a4[1] = v47;
        a4[2] = v46;
        return;
      }

      if (v21 >= *(v7 + 16))
      {
        __break(1u);
        return;
      }

      v22 = (v63 + 32 * v21);
      v23 = *v22;
      v24 = *(v22 + 1);
      v66 = v22[2];
      v25 = *(v22 + 24);
      v26 = *(v22 + 25);
      ++v21;
      if (!*(a3 + 16))
      {
        break;
      }

      sub_1C7551F3C();
      swift_bridgeObjectRetain_n();
      sub_1C75505AC();
      v27 = sub_1C7551FAC();
      v28 = ~(-1 << *(a3 + 32));
      do
      {
        v29 = v27 & v28;
        if (((*(a3 + 56 + (((v27 & v28) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v27 & v28)) & 1) == 0)
        {

          goto LABEL_24;
        }

        v30 = (*(a3 + 48) + 16 * v29);
        if (*v30 == *&v23 && v30[1] == v24)
        {
          break;
        }

        v32 = sub_1C7551DBC();
        v27 = v29 + 1;
      }

      while ((v32 & 1) == 0);

      if (v26)
      {
        goto LABEL_24;
      }

      if (v25)
      {
        v33 = sub_1C754FEEC();
        v34 = sub_1C755119C();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&dword_1C6F5C000, v33, v34, "Unexpectedly found a search result that isn't a metadata match and has no embedding similarity score.", v35, 2u);
          MEMORY[0x1CCA5F8E0](v35, -1, -1);
        }

LABEL_30:

        v7 = v64;
      }

      else
      {
        if (v20 > v66)
        {
          goto LABEL_30;
        }

        v25 = 0;
LABEL_24:
        v36 = v62;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C716D818(0, *(v62 + 16) + 1, 1, v37, v38, v39, v40);
          v36 = v62;
        }

        v42 = *(v36 + 16);
        v41 = *(v36 + 24);
        v43 = v42 + 1;
        if (v42 >= v41 >> 1)
        {
          sub_1C716D818(v41 > 1, v42 + 1, 1, v37, v38, v39, v40);
          v43 = v42 + 1;
          v36 = v62;
        }

        *(v36 + 16) = v43;
        v62 = v36;
        v44 = v36 + 32 * v42;
        *(v44 + 32) = v23;
        *(v44 + 40) = v24;
        *(v44 + 48) = v66;
        *(v44 + 56) = v25;
        *(v44 + 57) = v26;
        v7 = v64;
      }
    }

    sub_1C75504FC();
    goto LABEL_24;
  }

  v16 = sub_1C754FEEC();
  v17 = sub_1C755119C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1C6F5C000, v16, v17, "No query embedding info for search results, but we expected to have performed embedding or complete search.", v18, 2u);
    MEMORY[0x1CCA5F8E0](v18, -1, -1);
  }

  *a4 = v7;
  a4[1] = v6;
  a4[2] = 0;
  sub_1C75504FC();
  v19 = v6;
}

uint64_t static FreeformStoryChapterGenerator.storyCuratedAssets(from:photoLibrary:fetchPropertySets:)(uint64_t a1, void *a2, uint64_t a3, __n128 a4)
{
  v4 = *(a1 + 16);
  v59 = a3;
  v57 = a2;
  if (!v4)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_45:
    sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v44 = sub_1C739D74C(ObjCClassFromMetadata);
    v46 = v45;
    sub_1C71BA844(v6, v53, v54, v45, v47, v48, v49, v50, v51, v52, v57, v59, v61, v62, v63.n128_i64[0], v63.n128_i64[1], v64, v65, v66, v67, v68, v69, v70, v71[0], v71[1], v71[2]);
    v56 = v55;

    objc_allocWithZone(MEMORY[0x1E69788E0]);
    sub_1C75504FC();
    return sub_1C70E7DFC(v56, v58, v44, v46, v60, 0, 0, 0);
  }

  v5 = 0;
  v73 = a1 + 32;
  v6 = MEMORY[0x1E69E7CC0];
  a4.n128_u64[0] = 136315138;
  v63 = a4;
  v7 = &qword_1C7585C00;
  v62 = v4;
  while (1)
  {
    memcpy(__dst, (v73 + (v5 << 7)), 0x80uLL);
    if (__dst[14])
    {
      sub_1C6FB7BB8(__dst, v71);
      if (qword_1EDD08268 != -1)
      {
        OUTLINED_FUNCTION_1_117();
        swift_once();
      }

      v8 = sub_1C754FF1C();
      __swift_project_value_buffer(v8, qword_1EDD08270);
      sub_1C6FB7BB8(__dst, v71);
      v9 = sub_1C754FEEC();
      v10 = sub_1C755119C();
      sub_1C6FBC664(__dst);
      if (os_log_type_enabled(v9, v10))
      {
        v11 = __dst[2];
        v12 = __dst[3];
        v13 = v6;
        v14 = swift_slowAlloc();
        v15 = v4;
        v16 = swift_slowAlloc();
        v71[0] = v16;
        *v14 = v63.n128_u32[0];
        sub_1C75504FC();
        v17 = sub_1C6F765A4(v11, v12, v71);

        *(v14 + 4) = v17;
        _os_log_impl(&dword_1C6F5C000, v9, v10, "Chapter %s is not curated", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v16);
        v4 = v15;
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        v6 = v13;
        v7 = &qword_1C7585C00;
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      sub_1C6FBC664(__dst);
      goto LABEL_40;
    }

    v18 = __dst[13];
    sub_1C6FB7BB8(__dst, v71);
    sub_1C6FBC70C(v18);
    v69 = v18;
    if ([v18 fetchedObjectIDs])
    {
      v19 = OUTLINED_FUNCTION_300();
      sub_1C6F65BE8(v19, &qword_1EDD0FAB0, 0x1E695D630);
      v20 = sub_1C7550B5C();
    }

    else
    {
      v20 = MEMORY[0x1E69E7CC0];
    }

    v21 = v20 >> 62 ? sub_1C75516BC() : *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = v6 >> 62;
    result = v6 >> 62 ? sub_1C75516BC() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v70 = v21;
    v24 = __OFADD__(result, v21);
    v25 = result + v21;
    if (v24)
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v22)
      {
        v26 = v6 & 0xFFFFFFFFFFFFFF8;
        if (v25 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

LABEL_22:
      sub_1C75516BC();
      goto LABEL_23;
    }

    if (v22)
    {
      goto LABEL_22;
    }

LABEL_23:
    result = sub_1C75518CC();
    v6 = result;
    v26 = result & 0xFFFFFFFFFFFFFF8;
LABEL_24:
    v68 = v5;
    v27 = *(v26 + 16);
    v28 = (*(v26 + 24) >> 1) - v27;
    v29 = v26 + 8 * v27;
    v66 = v26;
    if (v20 >> 62)
    {
      v33 = sub_1C75516BC();
      if (!v33)
      {
LABEL_38:

        if (v70 > 0)
        {
          goto LABEL_47;
        }

        goto LABEL_39;
      }

      v34 = v33;
      v67 = v20;
      result = sub_1C75516BC();
      if (v28 < result)
      {
        goto LABEL_49;
      }

      if (v34 < 1)
      {
        goto LABEL_51;
      }

      v64 = result;
      v65 = v6;
      v35 = v7;
      v36 = v29 + 32;
      sub_1C739D7B0();
      for (i = 0; i != v34; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215608, v35);
        v38 = sub_1C6FDD09C(v71, i, v67);
        v40 = *v39;
        v38(v71, 0);
        *(v36 + 8 * i) = v40;
      }

      v32 = v64;
      v7 = v35;
      v4 = v62;
    }

    else
    {
      v30 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v31 = v20;
      if (!v30)
      {
        goto LABEL_38;
      }

      v32 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v67 = v31;
      if (v28 < v30)
      {
        goto LABEL_50;
      }

      sub_1C6F65BE8(0, &qword_1EDD0FAB0, 0x1E695D630);
      swift_arrayInitWithCopy();
    }

    if (v32 < v70)
    {
      goto LABEL_47;
    }

    if (v32 > 0)
    {
      v41 = *(v66 + 16);
      v24 = __OFADD__(v41, v32);
      v42 = v41 + v32;
      if (v24)
      {
        goto LABEL_48;
      }

      *(v66 + 16) = v42;
    }

LABEL_39:
    sub_1C6FBC718(v69);
    sub_1C6FBC664(__dst);
    v5 = v68;
LABEL_40:
    if (++v5 == v4)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

uint64_t FreeformStoryChapterGenerator.deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence29FreeformStoryChapterGenerator_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18PhotosIntelligence29FreeformStoryChapterGenerator_storyAssetsFetcher));
  return v0;
}

uint64_t FreeformStoryChapterGenerator.__deallocating_deinit()
{
  FreeformStoryChapterGenerator.deinit();

  return swift_deallocClassInstance();
}

void sub_1C739BF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_14_9();
  a25 = v27;
  a26 = v29;
  v31 = *(v30 + 16);
  if (v31)
  {
    v32 = v28;
    v33 = OUTLINED_FUNCTION_15_70();
    v35 = v34(v33);
    v32(&a10, v35 + 32, v31, v26);
    OUTLINED_FUNCTION_47_3();
    OUTLINED_FUNCTION_33_0();
    if (!v36)
    {
      __break(1u);
    }
  }

  OUTLINED_FUNCTION_13_5();
}

void sub_1C739C274()
{
  OUTLINED_FUNCTION_12_67();
  if (v4)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v0)
  {
    OUTLINED_FUNCTION_2_110();
    if (v7 == v4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
      v8 = swift_allocObject();
      OUTLINED_FUNCTION_13_0(v8);
      OUTLINED_FUNCTION_6_92(v9);
    }

    if (v3 != v1)
    {
      OUTLINED_FUNCTION_39_37(v5, v2 + 16 * v1, v6, MEMORY[0x1E69E6158]);
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_1C739C320(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = OUTLINED_FUNCTION_323();
  v8 = sub_1C707F97C(v6, v7, v1, v2, v3, v4, v5);
  if (!v8)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v9 = v8;
  v10 = sub_1C70CE988(v8, 0);
  v11 = OUTLINED_FUNCTION_323();
  sub_1C6FD8078(v11, v12, v1);
  v13 = OUTLINED_FUNCTION_15_1();
  sub_1C6FD8078(v13, v14, v4);
  sub_1C75504FC();
  v15 = sub_1C6FD78E4(v17, (v10 + 32), v9);
  sub_1C6FB5FC8(v17, &qword_1EC21B068, &qword_1C7585CB8);
  if (v15 != v9)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v10;
}