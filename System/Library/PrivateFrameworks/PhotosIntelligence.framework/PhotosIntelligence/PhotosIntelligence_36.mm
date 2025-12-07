uint64_t sub_1C7212260(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 528) = a1;
  *(v3 + 536) = v1;

  if (v1)
  {
    swift_bridgeObjectRelease_n();

    v4 = sub_1C7212B84;
  }

  else
  {

    v4 = sub_1C7212448;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1C7212448()
{
  v85 = v0;
  v84[1] = *MEMORY[0x1E69E9840];
  if (qword_1EDD09438 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v81 = v0 + 256;
    v83 = v0;
    v1 = *(v0 + 408);
    v2 = v83[48];
    v3 = v83[47];
    v4 = sub_1C754FF1C();
    __swift_project_value_buffer(v4, qword_1EDD09440);
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    v5 = v1;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    v6 = sub_1C754FEEC();
    v7 = sub_1C75511BC();

    v8 = v83;

    v9 = os_log_type_enabled(v6, v7);
    v10 = v83[66];
    if (v9)
    {
      v11 = v83[58];
      v12 = v83[46];
      v13 = v83[45];
      v14 = v7;
      v15 = OUTLINED_FUNCTION_20_1();
      v16 = OUTLINED_FUNCTION_20_1();
      v84[0] = v16;
      *v15 = 136315650;
      sub_1C75504FC();
      v17 = sub_1C6F765A4(v13, v12, v84);

      *(v15 + 4) = v17;
      *(v15 + 12) = 2048;
      v18 = *(v11 + 16);
      v8 = v83;
      *(v15 + 14) = v18;
      *(v15 + 22) = 2048;
      *(v15 + 24) = *(v10 + 16);

      _os_log_impl(&dword_1C6F5C000, v6, v14, "Deduping chapter %s assets strongly, %ld -> %ld", v15, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v16);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    v19 = v8[57];
    v22 = *(v19 + 64);
    v21 = v19 + 64;
    v20 = v22;
    v23 = -1;
    v24 = -1 << *(v8[57] + 32);
    if (-v24 < 64)
    {
      v23 = ~(-1 << -v24);
    }

    v25 = v23 & v20;
    v26 = (63 - v24) >> 6;
    v27 = v8[67];
    v74 = v8[57];
    swift_bridgeObjectRetain_n();
    v28 = 0;
    v29 = MEMORY[0x1E69E7CC8];
    v72 = v26;
    v73 = v21;
    if (!v25)
    {
      break;
    }

LABEL_8:
    v78 = v29;
    v0 = v28;
LABEL_13:
    v77 = (v25 - 1) & v25;
    v30 = __clz(__rbit64(v25)) | (v0 << 6);
    v31 = (*(v74 + 48) + 16 * v30);
    v75 = *v31;
    v76 = v31[1];
    v32 = *(*(v74 + 56) + 8 * v30);
    v2 = *(v32 + 16);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v33 = 0;
    v34 = v32 + 40;
    v79 = MEMORY[0x1E69E7CC0];
LABEL_14:
    for (i = (v34 + 16 * v33); ; i += 2)
    {
      if (v2 == v33)
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v84[0] = v78;
        sub_1C6FC8264(v79, v75, v76, isUniquelyReferenced_nonNull_native);
        swift_bridgeObjectRelease_n();

        v29 = v84[0];
        v28 = v0;
        v26 = v72;
        v21 = v73;
        v25 = v77;
        if (!v77)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }

      if (v33 >= *(v32 + 16))
      {
        break;
      }

      v36 = *(i - 1);
      v3 = *i;
      v83[32] = v36;
      v83[33] = v3;
      *(swift_task_alloc() + 16) = v81;
      sub_1C75504FC();
      v37 = sub_1C70735F4();

      if (v37)
      {
        v38 = v79;
        v39 = swift_isUniquelyReferenced_nonNull_native();
        v84[0] = v79;
        if ((v39 & 1) == 0)
        {
          v40 = OUTLINED_FUNCTION_16_34();
          sub_1C6F7ED9C(v40, v41, v42, v43, v44, v45, v46);
          v38 = v84[0];
        }

        v48 = *(v38 + 16);
        v47 = *(v38 + 24);
        if (v48 >= v47 >> 1)
        {
          OUTLINED_FUNCTION_15(v47);
          OUTLINED_FUNCTION_146();
          sub_1C6F7ED9C(v50, v51, v52, v53, v54, v55, v56);
          v38 = v84[0];
        }

        ++v33;
        *(v38 + 16) = v48 + 1;
        v79 = v38;
        v49 = v38 + 16 * v48;
        *(v49 + 32) = v36;
        *(v49 + 40) = v3;
        v34 = v32 + 40;
        goto LABEL_14;
      }

      ++v33;
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    OUTLINED_FUNCTION_3_69(&qword_1EDD09438);
  }

  while (1)
  {
LABEL_9:
    v0 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      goto LABEL_36;
    }

    if (v0 >= v26)
    {
      break;
    }

    v25 = *(v21 + 8 * v0);
    ++v28;
    if (v25)
    {
      v78 = v29;
      goto LABEL_13;
    }
  }

  v58 = v83[57];

  swift_bridgeObjectRelease_n();

  sub_1C754F2DC();
  if (v27)
  {
    OUTLINED_FUNCTION_63_14();
    v80 = v60;
    v82 = v59;

    __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    OUTLINED_FUNCTION_51();
    sub_1C754F1AC();
    (*(v2 + 8))(v58, v80);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v61 + 8))(v82);

    v66 = v83[1];

    return v66();
  }

  else
  {
    OUTLINED_FUNCTION_62_13();
    OUTLINED_FUNCTION_65_16(v62, v63);
    v65 = v64;

    sub_1C754F2EC();
    v68 = v83[37];

    __swift_project_boxed_opaque_existential_1(v68, v68[3]);
    OUTLINED_FUNCTION_24_2();
    sub_1C754F1AC();
    v69 = OUTLINED_FUNCTION_23_28();
    v70(v69);

    v71 = v83[1];

    return v71(v65);
  }
}

uint64_t sub_1C7212B84()
{
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[42];
  v4 = v0[37];
  v5 = v0[38];

  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  OUTLINED_FUNCTION_24_2();
  sub_1C754F1AC();
  (*(v2 + 8))(v1, v3);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v6 + 8))(v5);

  v7 = v0[1];

  return v7();
}

unint64_t sub_1C7212CF0(uint64_t a1, uint64_t a2)
{
  sub_1C7551B2C();
  OUTLINED_FUNCTION_24_2();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C7212D38(char a1)
{
  result = 0x6574636172616843;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_41_21();
      break;
    case 2:
      v3 = 1701669204;
      goto LABEL_6;
    case 3:
      v3 = OUTLINED_FUNCTION_24_26();
LABEL_6:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x7300000000;
      break;
    case 4:
      result = OUTLINED_FUNCTION_2_73();
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C7212E08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C7212CF0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1C7212E38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C7212D38(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1C7212E74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (a1)
  {
    v77 = a1;
    v24 = [v77 integerValue];
    v25 = MEMORY[0x1E69E7CD0];
    if (v24)
    {
      OUTLINED_FUNCTION_46_19();
      sub_1C75505AC();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_5_52();
      if ((*(v25 + v27 + 56) >> v22))
      {
        v28 = ~v26;
        while (2)
        {
          OUTLINED_FUNCTION_61_12();
          switch(v29)
          {
            case 1:
            case 2:
              goto LABEL_8;
            case 3:
              OUTLINED_FUNCTION_8_47();
              goto LABEL_8;
            case 4:
              OUTLINED_FUNCTION_0_107();
LABEL_8:
              sub_1C7551DBC();
              OUTLINED_FUNCTION_364();
              if (v21)
              {
                goto LABEL_11;
              }

              v22 = (v22 + 1) & v28;
              if (((*(v25 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v22) & 1) == 0)
              {
                break;
              }

              continue;
            default:

              v25 = MEMORY[0x1E69E7CD0];
              if ((v24 & 2) != 0)
              {
                goto LABEL_12;
              }

              goto LABEL_19;
          }

          break;
        }
      }

      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_15_45();
      sub_1C72F0790(0, v22, v30, v31, v32, v33, v34, v35, v77, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, vars0, vars8);
      v25 = v79;
    }

LABEL_11:
    if ((v24 & 2) != 0)
    {
LABEL_12:
      OUTLINED_FUNCTION_46_19();
      sub_1C75505AC();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_5_52();
      if ((*(v25 + 56 + v36) >> v22))
      {
        while (2)
        {
          OUTLINED_FUNCTION_61_12();
          switch(v37)
          {
            case 1:

              goto LABEL_19;
            case 3:
              OUTLINED_FUNCTION_8_47();
              goto LABEL_16;
            case 4:
              OUTLINED_FUNCTION_0_107();
              goto LABEL_16;
            default:
LABEL_16:
              sub_1C7551DBC();
              OUTLINED_FUNCTION_364();
              if (v21)
              {
                goto LABEL_19;
              }

              OUTLINED_FUNCTION_10_51();
              if ((v38 & 1) == 0)
              {
                break;
              }

              continue;
          }

          break;
        }
      }

      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_15_45();
      sub_1C72F0790(1, v22, v39, v40, v41, v42, v43, v44, v77, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, vars0, vars8);
      v25 = v79;
    }

LABEL_19:
    if ((v24 & 4) != 0)
    {
      OUTLINED_FUNCTION_46_19();
      sub_1C75505AC();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_5_52();
      if ((*(v25 + 56 + v45) >> v22))
      {
        while (2)
        {
          OUTLINED_FUNCTION_61_12();
          switch(v46)
          {
            case 1:
              OUTLINED_FUNCTION_59_15();
              goto LABEL_25;
            case 2:

              if ((v24 & 8) != 0)
              {
                goto LABEL_29;
              }

              goto LABEL_37;
            case 3:
              OUTLINED_FUNCTION_8_47();
              goto LABEL_25;
            case 4:
              OUTLINED_FUNCTION_0_107();
              goto LABEL_25;
            default:
LABEL_25:
              sub_1C7551DBC();
              OUTLINED_FUNCTION_364();
              if (v21)
              {
                goto LABEL_28;
              }

              OUTLINED_FUNCTION_10_51();
              if ((v47 & 1) == 0)
              {
                break;
              }

              continue;
          }

          break;
        }
      }

      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_15_45();
      sub_1C72F0790(2, v22, v48, v49, v50, v51, v52, v53, v77, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, vars0, vars8);
      v25 = v79;
    }

LABEL_28:
    if ((v24 & 8) != 0)
    {
LABEL_29:
      OUTLINED_FUNCTION_46_19();
      OUTLINED_FUNCTION_64_11(&v79);
      sub_1C7551FAC();
      OUTLINED_FUNCTION_5_52();
      if ((*(v25 + 56 + v54) >> v22))
      {
        while (2)
        {
          OUTLINED_FUNCTION_61_12();
          v55 = 0xE500000000000000;
          v56 = 0x73656D6954;
          switch(v57)
          {
            case 1:
              OUTLINED_FUNCTION_59_15();
              v56 = 0x6E6F697461636F4CLL;
              goto LABEL_34;
            case 2:
              goto LABEL_34;
            case 3:

              goto LABEL_37;
            case 4:
              v56 = OUTLINED_FUNCTION_0_107();
              goto LABEL_34;
            default:
              v55 = 0xEA00000000007372;
              v56 = 0x6574636172616843;
LABEL_34:
              OUTLINED_FUNCTION_40_23(v56, v55);
              OUTLINED_FUNCTION_364();
              if (v21)
              {
                goto LABEL_37;
              }

              OUTLINED_FUNCTION_10_51();
              if ((v58 & 1) == 0)
              {
                break;
              }

              continue;
          }

          break;
        }
      }

      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_15_45();
      sub_1C72F0790(3, v22, v59, v60, v61, v62, v63, v64, v77, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, vars0, vars8);
      v25 = v79;
    }

LABEL_37:
    if ((v24 & 0x10) == 0)
    {
LABEL_38:

      return;
    }

    OUTLINED_FUNCTION_46_19();
    OUTLINED_FUNCTION_39_23(&v79);
    sub_1C7551FAC();
    OUTLINED_FUNCTION_9_2();
    v67 = v66 & ~v65;
    if ((*(v25 + 56 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67))
    {
      v68 = ~v65;
      do
      {
        v69 = 0xEA00000000007372;
        v70 = 0x6574636172616843;
        switch(*(*(v25 + 48) + v67))
        {
          case 1:
            OUTLINED_FUNCTION_59_15();
            break;
          case 2:
            v69 = 0xE500000000000000;
            v70 = 0x73656D6954;
            break;
          case 3:
            v70 = OUTLINED_FUNCTION_8_47();
            break;
          case 4:

            goto LABEL_38;
          default:
            break;
        }

        OUTLINED_FUNCTION_32_21(v70, v69);
        OUTLINED_FUNCTION_364();
        if (v21)
        {
          goto LABEL_38;
        }

        v67 = (v67 + 1) & v68;
      }

      while (((*(v25 + 56 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67) & 1) != 0);
    }

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_15_45();
    sub_1C72F0790(4, v67, v71, v72, v73, v74, v75, v76, v77, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, vars0, vars8);
  }

  else
  {

    sub_1C706E4EC(&unk_1F469EDB8, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
  }
}

uint64_t sub_1C721337C()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD09440);
  __swift_project_value_buffer(v0, qword_1EDD09440);
  return sub_1C754FEFC();
}

uint64_t sub_1C72133FC(_OWORD *a1, uint64_t a2, char a3, uint64_t *a4, uint64_t a5)
{
  v6 = v5;
  memcpy(v32, a2, 0x130uLL);
  v11 = *a4;
  v12 = *(a4 + 4);
  v13 = a4[2];
  v14 = OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_logger;
  if (qword_1EDD09438 != -1)
  {
    OUTLINED_FUNCTION_3_69(&qword_1EDD09438);
  }

  v15 = sub_1C754FF1C();
  v16 = __swift_project_value_buffer(v15, qword_1EDD09440);
  (*(*(v15 - 8) + 16))(v6 + v14, v16, v15);
  v17 = OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_curationSession;
  *(v6 + v17) = [objc_allocWithZone(CLSCurationSession) init];
  v18 = (v6 + OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_configuration);
  v19 = a1[2];
  v18[1] = a1[1];
  v18[2] = v19;
  *v18 = *a1;
  memcpy((v6 + OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_storyElements), a2, 0x130uLL);
  *(v6 + OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_performDeduping) = a3 & 1;
  v20 = v6 + OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_storyPhotoLibraryContext;
  *v20 = v11;
  *(v20 + 8) = v12;
  *(v20 + 16) = v13;
  *(v6 + OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_diagnosticContext) = a5;
  memcpy(v31, (a2 + 216), sizeof(v31));
  memcpy(v30, (a2 + 216), sizeof(v30));
  sub_1C7027A20(&v32[216], v29);
  sub_1C7027A20(&v32[216], v29);
  sub_1C6FDE884(v32, v29);

  sub_1C7013BC0();
  v22 = MEMORY[0x1E69E7CD0];
  if (v21)
  {
    v22 = v21;
  }

  *(v6 + OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_allQueryCharactersAssetUUIDs) = v22;
  v23 = ExtendedTokenCollection.numberOfQueryCharacters.getter();
  sub_1C7027A58(&v32[216]);
  *(v6 + OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_numberOfQueryCharacters) = v23;
  if (qword_1EDD0E038 != -1)
  {
    swift_once();
  }

  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
  v25 = __swift_project_value_buffer(TokenCategoryType, qword_1EDD0E040);
  MEMORY[0x1EEE9AC00](v25);
  v26 = sub_1C707351C();

  sub_1C6FE0DC0(v32);
  *(v6 + OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_promoteAssetsWithLocation) = v26;
  return v6;
}

uint64_t sub_1C72136D0(void *a1, uint64_t a2, uint64_t a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = [a1 fetchedObjects];
  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = v6;
  sub_1C6FDEC1C();
  v8 = sub_1C7550B5C();
  v9 = v3 + OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_configuration;
  v10 = *(v3 + OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_configuration + 16);
  v11 = *(v3 + OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_configuration + 24);
  v12 = *(v3 + OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_configuration + 33);
  v33 = 0;
  [*(v3 + OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_curationSession) prepareAssets_];

  v31[0] = 0;
  v31[1] = 0;
  v32 = 0;
  v13 = *(v3 + OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_storyElements + 168);
  v14 = *(v3 + OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_storyElements + 184);
  sub_1C75504FC();

  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C72108C8(v8, a2, v3, v13, v14, &v33, v31, a3, v10, v11, v12);
  v16 = v15;

  if (v33 == 1 && *(v9 + 32) == 1)
  {
    v17 = 0;
    v18 = *(v16 + 16);
    v19 = MEMORY[0x1E69E7CC0];
LABEL_5:
    v20 = 48 * v17 + 32;
    while (v18 != v17)
    {
      if (v17 >= *(v16 + 16))
      {
        __break(1u);
      }

      v21 = *(v16 + v20 + 32);
      v22 = *(v16 + v20);
      v36 = *(v16 + v20 + 16);
      v37 = v21;
      v35 = v22;
      if (v36 != 3)
      {
        sub_1C721A9E8(&v35, v34);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C716DE18();
        }

        v23 = *(v19 + 16);
        v24 = v23 + 1;
        if (v23 >= *(v19 + 24) >> 1)
        {
          v30 = *(v19 + 16);
          sub_1C716DE18();
          v23 = v30;
        }

        ++v17;
        *(v19 + 16) = v24;
        v25 = (v19 + 48 * v23);
        v26 = v35;
        v27 = v37;
        v25[3] = v36;
        v25[4] = v27;
        v25[2] = v26;
        goto LABEL_5;
      }

      v20 += 48;
      ++v17;
    }
  }

  else
  {
    v19 = v16;
  }

  v28 = static FreeformStoryAssetElector.sortedAssetUUIDs(from:)(v19);

  return v28;
}

uint64_t sub_1C7213970(unsigned __int8 *a1)
{
  switch(*a1)
  {
    case 2u:

      v1 = 0;
      break;
    default:
      v2 = sub_1C7551DBC();

      v1 = v2 ^ 1;
      break;
  }

  return v1 & 1;
}

uint64_t sub_1C7213A5C(uint64_t a1, const void *a2, uint64_t a3)
{
  memcpy(__dst, a2, 0x50uLL);
  if (!*(a1 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_45_19();
  sub_1C75505AC();
  sub_1C7551FAC();
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_35_16();
  if (v6)
  {
    while (2)
    {
      switch(*(*(a1 + 48) + v4))
      {
        case 1:
        case 2:
          goto LABEL_6;
        case 3:
          OUTLINED_FUNCTION_24_26();
          goto LABEL_6;
        case 4:
          OUTLINED_FUNCTION_0_107();
LABEL_6:
          v3 = sub_1C7551DBC();

          if (v3)
          {
            goto LABEL_11;
          }

          OUTLINED_FUNCTION_27_28();
          if ((v7 & 1) == 0)
          {
            break;
          }

          continue;
        default:

LABEL_11:
          v9 = OUTLINED_FUNCTION_55_17();
          v10 = sub_1C72162EC(v9);
          sub_1C6FB2608();
          v8 = v11;
          v4 = *(v11 + 16);
          v12 = *(v11 + 24);
          v3 = v4 + 1;
          if (v4 >= v12 >> 1)
          {
            OUTLINED_FUNCTION_15(v12);
            sub_1C6FB2608();
            v8 = v39;
          }

          *(v8 + 16) = v3;
          v13 = v8 + 16 * v4;
          *(v13 + 32) = 0;
          *(v13 + 40) = v10;
          goto LABEL_14;
      }

      break;
    }
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_14:
  if (*(a1 + 16))
  {
    OUTLINED_FUNCTION_45_19();
    sub_1C75505AC();
    sub_1C7551FAC();
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_35_16();
    if (v14)
    {
      while (1)
      {
        switch(*(*(a1 + 48) + v4))
        {
          case 1:

            goto LABEL_23;
          case 3:
            OUTLINED_FUNCTION_24_26();
            break;
          case 4:
            OUTLINED_FUNCTION_0_107();
            break;
          default:
            break;
        }

        v3 = sub_1C7551DBC();

        if (v3)
        {
          break;
        }

        OUTLINED_FUNCTION_27_28();
        if ((v15 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

LABEL_23:
      v16 = OUTLINED_FUNCTION_55_17();
      sub_1C721654C(v16);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB2608();
        v8 = v40;
      }

      OUTLINED_FUNCTION_19_38();
      if (v17)
      {
        OUTLINED_FUNCTION_13_47();
        v8 = v41;
      }

      OUTLINED_FUNCTION_54_19();
      OUTLINED_FUNCTION_56_15(v18);
    }

LABEL_28:
    if (!*(a1 + 16))
    {
      return v8;
    }

    OUTLINED_FUNCTION_45_19();
    sub_1C75505AC();
    sub_1C7551FAC();
    OUTLINED_FUNCTION_7_47();
    if (v19)
    {
      while (1)
      {
        v20 = 0xEA00000000007372;
        v21 = 0x6574636172616843;
        switch(*(*(a1 + 48) + v3))
        {
          case 1:
            v20 = 0xE900000000000073;
            v21 = 0x6E6F697461636F4CLL;
            goto LABEL_34;
          case 2:

            goto LABEL_38;
          case 3:
            v20 = 0xE500000000000000;
            v21 = OUTLINED_FUNCTION_24_26() & 0xFFFF0000FFFFFFFFLL | 0x7300000000;
            goto LABEL_34;
          case 4:
            v20 = 0xE700000000000000;
            v21 = OUTLINED_FUNCTION_2_73();
            goto LABEL_34;
          default:
LABEL_34:
            v22 = OUTLINED_FUNCTION_21_35(v21, v20);

            if (v22)
            {
LABEL_38:
              sub_1C72166A8(__dst, a3);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_24_0();
                sub_1C6FB2608();
                v8 = v42;
              }

              OUTLINED_FUNCTION_19_38();
              if (v17)
              {
                OUTLINED_FUNCTION_13_47();
                v8 = v43;
              }

              OUTLINED_FUNCTION_54_19();
              OUTLINED_FUNCTION_56_15(v24);
              goto LABEL_43;
            }

            OUTLINED_FUNCTION_11_41();
            if ((v23 & 1) == 0)
            {
              goto LABEL_43;
            }

            break;
        }
      }
    }

LABEL_43:
    if (!*(a1 + 16))
    {
      return v8;
    }

    OUTLINED_FUNCTION_45_19();
    OUTLINED_FUNCTION_64_11(v49);
    sub_1C7551FAC();
    OUTLINED_FUNCTION_7_47();
    if (v25)
    {
      while (1)
      {
        v26 = 0xE500000000000000;
        v27 = 0x73656D6954;
        switch(*(*(a1 + 48) + v3))
        {
          case 1:
            v26 = 0xE900000000000073;
            v27 = 0x6E6F697461636F4CLL;
            goto LABEL_49;
          case 2:
            goto LABEL_49;
          case 3:

            goto LABEL_53;
          case 4:
            v26 = 0xE700000000000000;
            v27 = OUTLINED_FUNCTION_2_73();
            goto LABEL_49;
          default:
            v26 = 0xEA00000000007372;
            v27 = 0x6574636172616843;
LABEL_49:
            v28 = OUTLINED_FUNCTION_40_23(v27, v26);

            if (v28)
            {
LABEL_53:
              sub_1C72168AC(__dst);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_24_0();
                sub_1C6FB2608();
                v8 = v44;
              }

              OUTLINED_FUNCTION_19_38();
              if (v17)
              {
                OUTLINED_FUNCTION_13_47();
                v8 = v45;
              }

              OUTLINED_FUNCTION_54_19();
              OUTLINED_FUNCTION_56_15(v30);
              goto LABEL_58;
            }

            OUTLINED_FUNCTION_11_41();
            if ((v29 & 1) == 0)
            {
              goto LABEL_58;
            }

            break;
        }
      }
    }

LABEL_58:
    if (!*(a1 + 16))
    {
      return v8;
    }

    OUTLINED_FUNCTION_45_19();
    OUTLINED_FUNCTION_39_23(v49);
    sub_1C7551FAC();
    OUTLINED_FUNCTION_7_47();
    if ((v31 & 1) == 0)
    {
      return v8;
    }

    while (1)
    {
      v32 = 0xEA00000000007372;
      v33 = 0x6574636172616843;
      switch(*(*(a1 + 48) + v3))
      {
        case 1:
          v33 = 0x6E6F697461636F4CLL;
          v32 = 0xE900000000000073;
          goto LABEL_65;
        case 2:
          v32 = 0xE500000000000000;
          v34 = 1701669204;
          goto LABEL_64;
        case 3:
          v32 = 0xE500000000000000;
          v34 = OUTLINED_FUNCTION_24_26();
LABEL_64:
          v33 = v34 & 0xFFFF0000FFFFFFFFLL | 0x7300000000;
          goto LABEL_65;
        case 4:

          goto LABEL_69;
        default:
LABEL_65:
          v35 = OUTLINED_FUNCTION_32_21(v33, v32);

          if (v35)
          {
LABEL_69:
            sub_1C72169FC(a3);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_24_0();
              sub_1C6FB2608();
              v8 = v46;
            }

            OUTLINED_FUNCTION_19_38();
            if (v17)
            {
              OUTLINED_FUNCTION_13_47();
              v8 = v47;
            }

            OUTLINED_FUNCTION_54_19();
            OUTLINED_FUNCTION_56_15(v37);
            return v8;
          }

          OUTLINED_FUNCTION_11_41();
          if ((v36 & 1) == 0)
          {
            return v8;
          }

          break;
      }
    }
  }

  return v8;
}

uint64_t sub_1C721409C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C70, &qword_1C75653A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v19 - v4;
  v6 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1C7069CE4(1499027801, 0xE400000000000000, v6);
  sub_1C754E31C();
  sub_1C754E35C();
  v7 = OUTLINED_FUNCTION_50_19();
  v8 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v1) != 1)
  {
    v8 = sub_1C754E32C();
    (*(*(v1 - 8) + 8))(v5, v1);
  }

  [v6 setTimeZone_];

  v23 = MEMORY[0x1E69E7CC8];
  v9 = *(a1 + 16);
  for (i = (a1 + 64); v9; --v9)
  {
    v12 = *(i - 1);
    v11 = *i;
    v13 = *(i - 3);
    v14 = *(i - 2);
    v19[0] = *(i - 4);
    v19[1] = v13;
    v20 = v14;
    v21 = v12;
    v22 = v11;
    sub_1C75504FC();
    v15 = v14;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C7215F28(&v23, v19, v6);
    v16 = v20;

    i += 5;
  }

  return v23;
}

uint64_t sub_1C72142A0(uint64_t a1)
{
  v170 = *(a1 + 16);
  if (v170)
  {
    v1 = 0;
    v171 = a1 + 32;
    v167 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      v174 = v1;
      v2 = v171 + 16 * v1;
      v3 = *(v2 + 8);
      LOBYTE(v188[0]) = *v2;
      sub_1C75504FC();
      v173 = sub_1C75506EC();
      v5 = v4;
      if (*(v3 + 16))
      {
        break;
      }

      sub_1C75504FC();
      v79 = sub_1C754FEEC();
      v80 = sub_1C75511BC();

      if (os_log_type_enabled(v79, v80))
      {
        v81 = OUTLINED_FUNCTION_41_0();
        v82 = OUTLINED_FUNCTION_20_1();
        v188[0] = v82;
        *v81 = 136315138;
        v83 = sub_1C6F765A4(v173, v5, v188);

        *(v81 + 4) = v83;
        _os_log_impl(&dword_1C6F5C000, v79, v80, "No feature for %s", v81, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v82);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
LABEL_108:
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      else
      {
      }

LABEL_112:
      v1 = v174 + 1;
      if (v174 + 1 == v170)
      {
        return v167;
      }
    }

    v172 = v4;
    v6 = v3 + 64;
    OUTLINED_FUNCTION_90_1();
    v9 = v8 & v7;
    v182 = (v10 + 63) >> 6;
    sub_1C75504FC();
    v11 = 0;
    v12 = MEMORY[0x1E69E7CC8];
    v176 = v3 + 64;
    v179 = v3;
LABEL_5:
    v181 = v12;
    if (v9)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_117:
        __break(1u);
        goto LABEL_118;
      }

      if (v13 >= v182)
      {
        break;
      }

      v9 = *(v6 + 8 * v13);
      ++v11;
      if (v9)
      {
        v11 = v13;
LABEL_10:
        OUTLINED_FUNCTION_57_18();
        v15 = v14 | (v11 << 6);
        v16 = *(v3 + 56);
        v17 = (*(v3 + 48) + 16 * v15);
        v19 = *v17;
        v18 = v17[1];
        v184 = *(*(v16 + 8 * v15) + 16);
        sub_1C75504FC();
        sub_1C75504FC();
        swift_isUniquelyReferenced_nonNull_native();
        v188[0] = v181;
        v20 = OUTLINED_FUNCTION_34_20();
        sub_1C6F78124(v20, v21);
        OUTLINED_FUNCTION_31_1();
        if (__OFADD__(v24, v25))
        {
          goto LABEL_131;
        }

        v26 = v22;
        v27 = v23;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A8, &qword_1C755C750);
        if ((sub_1C7551A2C() & 1) == 0)
        {
          goto LABEL_14;
        }

        v28 = OUTLINED_FUNCTION_34_20();
        v30 = sub_1C6F78124(v28, v29);
        if ((v27 & 1) != (v31 & 1))
        {
          goto LABEL_139;
        }

        v26 = v30;
LABEL_14:
        v32 = v188[0];
        if (v27)
        {
          *(*(v188[0] + 56) + 8 * v26) = v184;
          v33 = v32;

          v12 = v33;
          goto LABEL_18;
        }

        OUTLINED_FUNCTION_60_14(v188[0] + 8 * (v26 >> 6));
        v35 = (v34 + 16 * v26);
        *v35 = v19;
        v35[1] = v18;
        *(*(v36 + 56) + 8 * v26) = v184;
        v37 = v36;

        v38 = *(v37 + 16);
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_132;
        }

        v12 = v37;
        *(v37 + 16) = v40;
LABEL_18:
        v9 &= v9 - 1;
        v3 = v179;
        v6 = v176;
        goto LABEL_5;
      }
    }

    v41 = 0;
    v42 = 1 << *(v181 + 32);
    if (v42 < 64)
    {
      v43 = ~(-1 << v42);
    }

    else
    {
      v43 = -1;
    }

    v44 = v43 & *(v181 + 64);
    v45 = (v42 + 63) >> 6;
    v46 = 0.0;
    if (v44)
    {
      while (1)
      {
        v47 = v41;
LABEL_28:
        v48 = __clz(__rbit64(v44));
        v44 &= v44 - 1;
        v46 = v46 + *(*(v181 + 56) + ((v47 << 9) | (8 * v48)));
        if (!v44)
        {
          goto LABEL_24;
        }
      }
    }

    while (1)
    {
LABEL_24:
      v47 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        goto LABEL_117;
      }

      if (v47 >= v45)
      {
        break;
      }

      v44 = *(v181 + 64 + 8 * v47);
      ++v41;
      if (v44)
      {
        v41 = v47;
        goto LABEL_28;
      }
    }

    v49 = *(v181 + 16);
    v50 = v46 / v49;
    if (v49)
    {
      v188[0] = MEMORY[0x1E69E7CC0];
      v185 = v49;
      sub_1C716DA70(0, v49, 0);
      v51 = v188[0];
      v52 = sub_1C70D4544();
      v53 = v181;
      v54 = v181 + 64;
      v55 = 1;
      v56 = v52;
      v58 = v57;
      v59 = v185;
      v61 = v60;
      v62 = 0;
      if (v52 < 0)
      {
        goto LABEL_119;
      }

      while (1)
      {
        if (v56 >= v55 << *(v53 + 32))
        {
          goto LABEL_119;
        }

        v63 = v56 >> 6;
        v64 = v55 << v56;
        if ((*(v54 + 8 * (v56 >> 6)) & (v55 << v56)) == 0)
        {
          goto LABEL_120;
        }

        if (*(v53 + 36) != v58)
        {
          break;
        }

        v65 = *(*(v53 + 56) + 8 * v56);
        v188[0] = v51;
        v67 = *(v51 + 16);
        v66 = *(v51 + 24);
        if (v67 >= v66 >> 1)
        {
          OUTLINED_FUNCTION_15(v66);
          OUTLINED_FUNCTION_146();
          sub_1C716DA70(v76, v77, v78);
          OUTLINED_FUNCTION_29_24();
          v51 = v188[0];
        }

        *(v51 + 16) = v67 + 1;
        *(v51 + 8 * v67 + 32) = (v65 - v50) * (v65 - v50);
        v68 = v55 << *(v53 + 32);
        if (v56 >= v68)
        {
          goto LABEL_122;
        }

        v69 = *(v54 + 8 * v63);
        if ((v69 & v64) == 0)
        {
          goto LABEL_123;
        }

        if (*(v53 + 36) != v58)
        {
          goto LABEL_124;
        }

        v70 = v69 & (-2 << (v56 & 0x3F));
        if (v70)
        {
          v68 = __clz(__rbit64(v70)) | v56 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v71 = v63 << 6;
          v72 = v63 + 1;
          v73 = (v181 + 72 + 8 * v63);
          while (v72 < (v68 + 63) >> 6)
          {
            v75 = *v73++;
            v74 = v75;
            v71 += 64;
            ++v72;
            if (v75)
            {
              sub_1C6F9ED50(v56, v58, v61 & 1);
              OUTLINED_FUNCTION_29_24();
              v68 = __clz(__rbit64(v74)) + v71;
              goto LABEL_47;
            }
          }

          sub_1C6F9ED50(v56, v58, v61 & 1);
          OUTLINED_FUNCTION_29_24();
        }

LABEL_47:
        if (++v62 == v59)
        {
          v3 = v179;
          v6 = v176;
          goto LABEL_54;
        }

        v61 = 0;
        v58 = *(v53 + 36);
        v56 = v68;
        if (v68 < 0)
        {
          goto LABEL_119;
        }
      }

LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
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
      goto LABEL_133;
    }

    v51 = MEMORY[0x1E69E7CC0];
LABEL_54:
    v84 = *(v51 + 16);
    if (v84)
    {
      v85 = (v51 + 32);
      v86 = 0.0;
      do
      {
        v87 = *v85++;
        v86 = v86 + v87;
        --v84;
      }

      while (v84);
    }

    else
    {
      v86 = 0.0;
    }

    v88 = sqrt(v86 / *(v181 + 16));
    v89 = v88 * 0.5;
    if (v88 * 0.5 <= v50 * 0.6)
    {
      v89 = v50 * 0.6;
    }

    v90 = v50 - v89;
    v91 = ceil(v50 - v89);
    if ((*&v91 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_133:
      __break(1u);
      goto LABEL_134;
    }

    if (v91 <= -9.22337204e18)
    {
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
      result = sub_1C7551E4C();
      __break(1u);
      return result;
    }

    if (v91 >= 9.22337204e18)
    {
      goto LABEL_135;
    }

    v92 = 0;
    v93 = 0;
    v178 = v91;
    v94 = 1 << *(v3 + 32);
    if (v94 < 64)
    {
      v95 = ~(-1 << v94);
    }

    else
    {
      v95 = -1;
    }

    v96 = v95 & *(v3 + 64);
    v97 = (v94 + 63) >> 6;
    while (1)
    {
      do
      {
        if (!v96)
        {
          while (1)
          {
            v98 = v92 + 1;
            if (__OFADD__(v92, 1))
            {
              break;
            }

            if (v98 >= v97)
            {

              v124 = v181;
              v125 = *(v181 + 16);
              if (v125)
              {
                v169 = v93;
                v190 = MEMORY[0x1E69E7CC0];
                sub_1C6F7ED9C(0, v125, 0, v120, v121, v122, v123);
                v126 = v190;
                v129 = sub_1C70D4544();
                v124 = v181;
                v130 = v181 + 64;
                v131 = 0;
                v175 = v127;
                v177 = v125;
                while ((v129 & 0x8000000000000000) == 0 && v129 < 1 << *(v124 + 32))
                {
                  v132 = v129 >> 6;
                  if ((*(v130 + 8 * (v129 >> 6)) & (1 << v129)) == 0)
                  {
                    goto LABEL_126;
                  }

                  if (*(v124 + 36) != v127)
                  {
                    goto LABEL_127;
                  }

                  v183 = v131;
                  v187 = v127;
                  v180 = v128;
                  v133 = (*(v124 + 48) + 16 * v129);
                  v135 = *v133;
                  v134 = v133[1];
                  v136 = *(*(v124 + 56) + 8 * v129);
                  v188[0] = v135;
                  v188[1] = v134;
                  v188[2] = v136;
                  sub_1C7216DD4(v188, v178, v189);
                  v138 = v189[0];
                  v137 = v189[1];
                  v190 = v126;
                  v140 = *(v126 + 16);
                  v139 = *(v126 + 24);
                  v141 = v126;
                  if (v140 >= v139 >> 1)
                  {
                    OUTLINED_FUNCTION_15(v139);
                    OUTLINED_FUNCTION_146();
                    sub_1C6F7ED9C(v151, v152, v153, v154, v155, v156, v157);
                    v141 = v190;
                  }

                  *(v141 + 16) = v140 + 1;
                  v142 = v141 + 16 * v140;
                  *(v142 + 32) = v138;
                  *(v142 + 40) = v137;
                  v143 = 1 << *(v124 + 32);
                  if (v129 >= v143)
                  {
                    goto LABEL_128;
                  }

                  v130 = v181 + 64;
                  v144 = *(v181 + 64 + 8 * v132);
                  if ((v144 & (1 << v129)) == 0)
                  {
                    goto LABEL_129;
                  }

                  v126 = v141;
                  if (*(v124 + 36) != v187)
                  {
                    goto LABEL_130;
                  }

                  v145 = v144 & (-2 << (v129 & 0x3F));
                  if (v145)
                  {
                    v143 = __clz(__rbit64(v145)) | v129 & 0x7FFFFFFFFFFFFFC0;
                  }

                  else
                  {
                    v146 = v132 << 6;
                    v147 = v132 + 1;
                    v148 = (v181 + 72 + 8 * v132);
                    while (v147 < (v143 + 63) >> 6)
                    {
                      v150 = *v148++;
                      v149 = v150;
                      v146 += 64;
                      ++v147;
                      if (v150)
                      {
                        sub_1C6F9ED50(v129, v187, v180 & 1);
                        v124 = v181;
                        v130 = v181 + 64;
                        v143 = __clz(__rbit64(v149)) + v146;
                        goto LABEL_103;
                      }
                    }

                    sub_1C6F9ED50(v129, v187, v180 & 1);
                    v124 = v181;
                    v130 = v181 + 64;
                  }

LABEL_103:
                  v128 = 0;
                  v131 = v183 + 1;
                  v129 = v143;
                  v127 = v175;
                  if (v183 + 1 == v177)
                  {
                    v93 = v169;
                    goto LABEL_106;
                  }
                }

                goto LABEL_125;
              }

              v126 = MEMORY[0x1E69E7CC0];
LABEL_106:
              v158 = v124;
              sub_1C75504FC();
              sub_1C75504FC();
              sub_1C75504FC();
              v79 = sub_1C754FEEC();
              v159 = sub_1C75511BC();

              if (os_log_type_enabled(v79, v159))
              {
                v160 = swift_slowAlloc();
                v188[0] = swift_slowAlloc();
                *v160 = 136316674;
                v161 = sub_1C6F765A4(v173, v172, v188);

                *(v160 + 4) = v161;
                *(v160 + 12) = 2048;
                v162 = *(v158 + 16);

                *(v160 + 14) = v162;

                *(v160 + 22) = 2048;
                *(v160 + 24) = v50;
                *(v160 + 32) = 2048;
                *(v160 + 34) = v88;
                *(v160 + 42) = 2048;
                *(v160 + 44) = v90;
                *(v160 + 52) = 2080;
                v189[0] = v126;
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
                sub_1C7099594(&qword_1EDD0CF58, &unk_1EC217A00, &qword_1C755BD70, MEMORY[0x1E69E6310]);
                v163 = sub_1C75505FC();
                v165 = v164;

                sub_1C6F765A4(v163, v165, v188);
                OUTLINED_FUNCTION_51();

                *(v160 + 54) = v163;
                *(v160 + 62) = 2048;
                *(v160 + 64) = v93;
                _os_log_impl(&dword_1C6F5C000, v79, v159, "%s: %ld features\n    meanScore = %f, standardDeviation = %f, threshold = %f\n    %s\n    %ld filtered features", v160, 0x48u);
                swift_arrayDestroy();
                OUTLINED_FUNCTION_235();
                MEMORY[0x1CCA5F8E0]();
                goto LABEL_108;
              }

              swift_bridgeObjectRelease_n();
              goto LABEL_112;
            }

            v96 = *(v6 + 8 * v98);
            ++v92;
            if (v96)
            {
              v92 = v98;
              goto LABEL_73;
            }
          }

LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

LABEL_73:
        OUTLINED_FUNCTION_57_18();
        v96 &= v96 - 1;
        v100 = v99 | (v92 << 6);
        v101 = *(*(v3 + 56) + 8 * v100);
      }

      while (*(v101 + 16) < v178);
      v168 = v93;
      v102 = (*(v3 + 48) + 16 * v100);
      v104 = *v102;
      v103 = v102[1];
      sub_1C75504FC();
      sub_1C75504FC();
      swift_isUniquelyReferenced_nonNull_native();
      v188[0] = v167;
      sub_1C6F78124(v104, v103);
      OUTLINED_FUNCTION_31_1();
      if (__OFADD__(v107, v108))
      {
        goto LABEL_136;
      }

      v109 = v105;
      v186 = v106;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215280, &qword_1C756C8F0);
      if (sub_1C7551A2C())
      {
        v110 = v104;
        v111 = v104;
        v112 = v103;
        v113 = sub_1C6F78124(v111, v103);
        v3 = v179;
        v6 = v176;
        if ((v186 & 1) != (v114 & 1))
        {
          goto LABEL_139;
        }

        v109 = v113;
        if ((v186 & 1) == 0)
        {
LABEL_78:
          OUTLINED_FUNCTION_60_14(v188[0] + 8 * (v109 >> 6));
          v117 = (v116 + 16 * v109);
          *v117 = v110;
          v117[1] = v112;
          *(*(v115 + 56) + 8 * v109) = v101;
          v118 = *(v115 + 16);
          v39 = __OFADD__(v118, 1);
          v119 = v118 + 1;
          if (v39)
          {
            goto LABEL_138;
          }

          v167 = v115;
          *(v115 + 16) = v119;
          goto LABEL_82;
        }
      }

      else
      {
        v110 = v104;
        v112 = v103;
        v3 = v179;
        v6 = v176;
        if ((v186 & 1) == 0)
        {
          goto LABEL_78;
        }
      }

      v167 = v188[0];
      *(*(v188[0] + 56) + 8 * v109) = v101;

LABEL_82:
      v93 = v168 + 1;
      if (__OFADD__(v168, 1))
      {
        goto LABEL_137;
      }
    }
  }

  return MEMORY[0x1E69E7CC8];
}

void sub_1C7214F88(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  OUTLINED_FUNCTION_27_1();
  v211 = swift_allocObject();
  *(v211 + 16) = a4;
  OUTLINED_FUNCTION_27_1();
  v8 = swift_allocObject();
  swift_bridgeObjectRetain_n();
  sub_1C706D154();
  v210 = v8;
  *(v8 + 16) = v9;
  sub_1C75504FC();
  sub_1C706D154();
  sub_1C75504FC();
  sub_1C70739AC();
  v229 = v10;
  sub_1C75504FC();
  sub_1C706D154();
  StoryGenerationCache.momentUUIDByAssetUUID(for:)();
  OUTLINED_FUNCTION_24_2();

  OUTLINED_FUNCTION_27_1();
  v11 = swift_allocObject();
  sub_1C706D87C();
  v209 = v11;
  *(v11 + 16) = v12;
  OUTLINED_FUNCTION_27_1();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E7CC0];
  v208 = v13;
  *(v13 + 16) = MEMORY[0x1E69E7CC0];
  sub_1C739C450(a1, v15, v16, v17, v18, v19, v20, v21, v170, v172, v174, v176, v178, v180, a3, v184, log, v188, v13 + 16, v8 + 16, v193, v195, v211 + 16, v197, v200, v203);
  v223[0] = v22;
  sub_1C7218160(v223, sub_1C7422BDC, &qword_1EC218188, &qword_1C7570F40, sub_1C7423D18);
  v23 = v223[0];
  v24 = *(v223[0] + 16);
  if (v24)
  {
    v223[0] = v14;
    sub_1C716D5B0(0, v24, 0);
    v25 = 48;
    v26 = v223[0];
    do
    {
      v27 = *(v23 + v25);
      v223[0] = v26;
      v29 = *(v26 + 16);
      v28 = *(v26 + 24);
      sub_1C75504FC();
      if (v29 >= v28 >> 1)
      {
        OUTLINED_FUNCTION_146();
        sub_1C716D5B0(v30, v31, v32);
        v26 = v223[0];
      }

      *(v26 + 16) = v29 + 1;
      *(v26 + 8 * v29 + 32) = v27;
      v25 += 24;
      --v24;
    }

    while (v24);
  }

  else
  {

    v26 = MEMORY[0x1E69E7CC0];
  }

  v33 = 0;
  v34 = 0;
  v35 = *(v26 + 16);
  v221 = v26 + 32;
  while (v35 != v33)
  {
    v36 = v26 + 8 * v33++;
    v37 = *(*(v36 + 32) + 16);
    if (v37 > v34)
    {
      v34 = v37;
    }
  }

  OUTLINED_FUNCTION_90_1();
  v40 = v39 & v38;
  v42 = (v41 + 63) >> 6;
  sub_1C75504FC();
  v43 = 0;
  v218 = MEMORY[0x1E69E7CC8];
  v220 = v5;
  v216 = v26;
  v185 = v34;
  loga = v42;
  v212 = v35;
  if (v40)
  {
LABEL_17:
    OUTLINED_FUNCTION_49_16();
    v198 = v40;
    v47 = v45 | (v46 << 6);
    v48 = (v183[6] + 16 * v47);
    v49 = *(v183[7] + 8 * v47);
    v204 = *v48;
    v206 = v48[1];
    v50 = v49 + 56;
    OUTLINED_FUNCTION_90_1();
    v42 = v52 & v51;
    v54 = (v53 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v215 = v49;
    swift_bridgeObjectRetain_n();
    v55 = 0;
    v56 = 0;
    v201 = v50;
    if (v42)
    {
      goto LABEL_22;
    }

LABEL_18:
    while (1)
    {
      v57 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        break;
      }

      if (v57 >= v54)
      {

        sub_1C6F6E5B4(v55, 0);

        v40 = v198;
        goto LABEL_17;
      }

      v42 = *(v50 + 8 * v57);
      ++v56;
      if (v42)
      {
        v56 = v57;
LABEL_22:
        while (1)
        {
          OUTLINED_FUNCTION_57_18();
          v59 = (*(v215 + 48) + ((v56 << 10) | (16 * v58)));
          v60 = *v59;
          v61 = v59[1];
          sub_1C75504FC();
          sub_1C6F6E5B4(v55, 0);
          swift_isUniquelyReferenced_nonNull_native();
          v223[0] = v218;
          sub_1C6F78124(v60, v61);
          OUTLINED_FUNCTION_31_1();
          if (__OFADD__(v63, v64))
          {
            goto LABEL_101;
          }

          v65 = v62;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215280, &qword_1C756C8F0);
          v66 = sub_1C7551A2C();
          v218 = v223[0];
          if (v66)
          {
            sub_1C6F78124(v60, v61);
            if ((v65 & 1) != (v67 & 1))
            {
              goto LABEL_105;
            }
          }

          if (v65)
          {
          }

          else
          {
            OUTLINED_FUNCTION_23_28();
            sub_1C6FCABE4();
          }

          v50 = v201;
          v42 &= v42 - 1;
          sub_1C75504FC();
          sub_1C70F082C(v223, v204, v206);

          v55 = sub_1C719D928;
          if (!v42)
          {
            goto LABEL_18;
          }
        }
      }
    }

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
    goto LABEL_103;
  }

  while (1)
  {
    v44 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      goto LABEL_99;
    }

    if (v44 >= v42)
    {
      break;
    }

    v40 = v183[v44 + 8];
    ++v43;
    if (v40)
    {
      goto LABEL_17;
    }
  }

  v202 = v183[2];
  OUTLINED_FUNCTION_27_1();
  v207 = swift_allocObject();
  *(v207 + 16) = MEMORY[0x1E69E7CD0];
  v177 = (v207 + 16);
  OUTLINED_FUNCTION_27_1();
  v205 = swift_allocObject();
  *(v205 + 16) = 0;
  v179 = (v205 + 16);
  v199 = *(v5 + OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_storyElements + 168);
  v189 = *(v5 + OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_storyElements + 184);
  swift_beginAccess();
  v68 = 0;
  *&v69 = 136315138;
  v194 = v69;
  v70 = a2;
  while (*(*v196 + 16) < v70)
  {
    if (v35)
    {
      v71 = 0;
      do
      {
        while (1)
        {
          if (v71 >= *(v26 + 16))
          {
            __break(1u);
            goto LABEL_98;
          }

          v72 = *(v221 + 8 * v71++);
          if (v68 < *(v72 + 16))
          {
            break;
          }

LABEL_71:
          if (v71 == v35)
          {
            goto LABEL_72;
          }
        }

        v73 = v72 + 16 * v68;
        v42 = *(v73 + 32);
        v74 = *(v73 + 40);
        v75 = v229;
        if (*(v229 + 16))
        {
          sub_1C7551F3C();
          sub_1C75504FC();
          sub_1C75505AC();
          sub_1C7551FAC();
          OUTLINED_FUNCTION_9_2();
          v78 = ~v77;
          while (1)
          {
            v79 = v76 & v78;
            if (((*(v75 + 56 + (((v76 & v78) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v76 & v78)) & 1) == 0)
            {
              break;
            }

            v80 = (*(v75 + 48) + 16 * v79);
            if (*v80 != v42 || v80[1] != v74)
            {
              v82 = sub_1C7551DBC();
              v76 = v79 + 1;
              if ((v82 & 1) == 0)
              {
                continue;
              }
            }

            goto LABEL_71;
          }
        }

        else
        {
          sub_1C75504FC();
        }

        sub_1C75504FC();
        sub_1C70F082C(v223, v42, v74);

        v83._countAndFlagsBits = OUTLINED_FUNCTION_49_3();
        v84 = StoryGenerationCache.momentUUID(forAssetUUID:)(v83);
        if (!v84.value._object)
        {
          sub_1C75504FC();
          v88 = sub_1C754FEEC();
          v89 = sub_1C755119C();

          if (os_log_type_enabled(v88, v89))
          {
            v90 = OUTLINED_FUNCTION_41_0();
            v91 = OUTLINED_FUNCTION_20_1();
            v223[0] = v91;
            *v90 = v194;
            v92 = OUTLINED_FUNCTION_49_3();
            v42 = sub_1C6F765A4(v92, v93, v94);

            *(v90 + 4) = v42;
            _os_log_impl(&dword_1C6F5C000, v88, v89, "Couldn't find momentUUID for assetUUID '%s'", v90, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v91);
            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();
            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();
          }

          else
          {
          }

          v26 = v216;
          goto LABEL_71;
        }

        v85 = OUTLINED_FUNCTION_49_3();
        if (sub_1C7009C30(v85, v86, v199))
        {
          v87 = 0;
        }

        else
        {
          v95 = OUTLINED_FUNCTION_49_3();
          if (sub_1C7009C30(v95, v96, v189))
          {
            v87 = 1;
          }

          else
          {
            v87 = 2;
          }
        }

        if (*(v218 + 16) && (v97 = OUTLINED_FUNCTION_49_3(), v99 = sub_1C6F78124(v97, v98), (v100 & 1) != 0))
        {
          v101 = *(*(v218 + 56) + 8 * v99);
          sub_1C75504FC();
        }

        else
        {
          v101 = 0;
        }

        *&v230 = v42;
        *(&v230 + 1) = v74;
        LOBYTE(v231) = v87;
        *(&v231 + 1) = v84.value._countAndFlagsBits;
        *&v232 = v84.value._object;
        *(&v232 + 1) = v101;
        v42 = v220;
        sub_1C7216F94(&v230, v210, v209, v207, v202, v211, v220, v205, v208, a2);
        if ((v102 & 1) == 0)
        {
          swift_beginAccess();
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C6FB09E0();
          v104 = *(*v190 + 16);
          sub_1C6FB123C();
          v105 = *v190;
          *(v105 + 16) = v104 + 1;
          v106 = (v105 + 48 * v104);
          v107 = v231;
          v106[2] = v230;
          v106[3] = v107;
          v106[4] = v232;
          *v190 = v105;
          swift_endAccess();
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          v108 = sub_1C754FEEC();
          v109 = sub_1C755117C();

          if (os_log_type_enabled(v108, v109))
          {
            v110 = OUTLINED_FUNCTION_41_0();
            v42 = OUTLINED_FUNCTION_20_1();
            v223[0] = v42;
            *v110 = v194;
            loga = v108;
            v111 = sub_1C7217D08();
            v113 = v112;

            v114 = sub_1C6F765A4(v111, v113, v223);

            *(v110 + 4) = v114;
            _os_log_impl(&dword_1C6F5C000, loga, v109, "%s\n\tadding to waiting room", v110, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v42);
            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();
            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();
          }

          else
          {
          }

          v26 = v216;
          v35 = v212;
          goto LABEL_71;
        }

        v35 = v212;
        v103 = v71 != v212 && *(*v196 + 16) < a2;
        v26 = v216;
      }

      while (v103);
    }

LABEL_72:
    ++v68;
    v70 = a2;
    if (v68 >= v185)
    {
      break;
    }
  }

  swift_beginAccess();
  v122 = *v190;
  if (*(*v190 + 16))
  {
    v123 = *v196;
    if (*(*v196 + 16) < v70)
    {
      v124 = sub_1C754FEEC();
      v125 = sub_1C755117C();
      if (OUTLINED_FUNCTION_7_0(v125))
      {
        v42 = OUTLINED_FUNCTION_20_1();
        *v42 = 134218496;
        *(v42 + 4) = *(v123 + 16);
        *(v42 + 12) = 2048;
        *(v42 + 14) = v70;
        *(v42 + 22) = 2048;
        *(v42 + 24) = *(v122 + 16);
        OUTLINED_FUNCTION_17();
        _os_log_impl(v126, v127, v128, v129, v130, 0x20u);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      sub_1C75504FC();
      v131 = sub_1C7080ED4();
      swift_beginAccess();
      *v177 = v131;

      swift_beginAccess();
      v132 = *v179 + 1;
      if (!__OFADD__(*v179, 1))
      {
        *v179 = v132;
        v133 = sub_1C754FEEC();
        v134 = sub_1C755117C();
        if (OUTLINED_FUNCTION_7_0(v134))
        {
          v42 = OUTLINED_FUNCTION_41_0();
          *v42 = 134217984;
          *(v42 + 4) = v132;
          OUTLINED_FUNCTION_17();
          _os_log_impl(v135, v136, v137, v138, v139, 0xCu);
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
        }

        v140 = *(v122 + 16);
        sub_1C75504FC();
        v141 = (v122 + 72);
        v142 = -v140;
        v143 = -1;
        do
        {
          if (v142 + v143 == -1)
          {
            break;
          }

          if (++v143 >= *(v122 + 16))
          {
            goto LABEL_102;
          }

          v144 = v141 + 6;
          v145 = *(v141 - 4);
          v146 = *(v141 - 24);
          v147 = *(v141 - 2);
          v148 = *(v141 - 1);
          v42 = *v141;
          v223[0] = *(v141 - 5);
          v223[1] = v145;
          v224 = v146;
          v225 = v147;
          v226 = v148;
          v227 = v42;
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C7216F94(v223, v210, v209, v207, v202, v211, v220, v205, v208, a2);

          v141 = v144;
        }

        while (*(*(v211 + 16) + 16) < a2);

        v149 = sub_1C754FEEC();
        v150 = sub_1C755117C();
        if (OUTLINED_FUNCTION_7_0(v150))
        {
          v42 = OUTLINED_FUNCTION_41_0();
          *v42 = 134217984;
          *(v42 + 4) = *v179;
          OUTLINED_FUNCTION_17();
          _os_log_impl(v151, v152, v153, v154, v155, 0xCu);
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
        }

        if (!__OFSUB__(*v179, 1))
        {
          --*v179;
          goto LABEL_88;
        }

LABEL_104:
        __break(1u);
LABEL_105:
        sub_1C7551E4C();
        __break(1u);

        goto LABEL_107;
      }

LABEL_103:
      __break(1u);
      goto LABEL_104;
    }
  }

LABEL_88:
  sub_1C739C410(v183, v115, v116, v117, v118, v119, v120, v121, v171, v173, v175, v177, v179, 0, v183, v185, loga, v189, v190, v191, v194, *(&v194 + 1), v196, v199, v202, v205);
  v228 = v156;
  v42 = v181;
  sub_1C7218160(&v228, sub_1C7422BC4, &qword_1EC216F58, &qword_1C7577D90, sub_1C7423D18);
  if (v181)
  {

LABEL_107:

    __break(1u);
    return;
  }

  v157 = 0;
  v158 = v228;
  v159 = v228[2];
  v160 = v228 + 6;
  v217 = v228;
  v214 = v159;
  while (v159 != v157)
  {
    if (v157 >= *(v158 + 16))
    {
      goto LABEL_100;
    }

    v162 = *(v160 - 2);
    v161 = *(v160 - 1);
    v163 = *v160;
    swift_bridgeObjectRetain_n();
    sub_1C75504FC();
    v222 = *(sub_1C7219F48(v163, v192) + 2);

    sub_1C75504FC();
    sub_1C75504FC();
    v164 = sub_1C754FEEC();
    v165 = sub_1C75511BC();

    if (os_log_type_enabled(v164, v165))
    {
      v166 = OUTLINED_FUNCTION_20_1();
      v219 = v42;
      v167 = OUTLINED_FUNCTION_20_1();
      v228 = v167;
      *v166 = 136315650;
      v168 = sub_1C6F765A4(v162, v161, &v228);

      *(v166 + 4) = v168;
      *(v166 + 12) = 2048;
      *(v166 + 14) = v222;
      *(v166 + 22) = 2048;
      v169 = *(v163 + 16);

      *(v166 + 24) = v169;

      _os_log_impl(&dword_1C6F5C000, v164, v165, "Feature '%s' represented by %ld assets out of %ld available", v166, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v167);
      v158 = v217;
      v42 = v219;
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      v159 = v214;
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v160 += 3;
    ++v157;
  }

  sub_1C75504FC();
}

uint64_t sub_1C7215F28(uint64_t *a1, uint64_t a2, void *a3)
{
  v43 = a3;
  v50 = a1;
  v42 = sub_1C754DF6C();
  v4 = *(v42 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v42).n128_u64[0];
  v41 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*(a2 + 16) fetchedObjects];
  if (v7)
  {
    v8 = v7;
    sub_1C6FDEC1C();
    v9 = sub_1C7550B5C();
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = sub_1C6FB6304();
  v11 = 0;
  v12 = 0;
  v44 = v9 & 0xC000000000000001;
  v45 = v10;
  v39 = v9;
  v40 = (v4 + 8);
  while (1)
  {
    if (v45 == v11)
    {

      return sub_1C6F6E5B4(v12, 0);
    }

    v13 = v44;
    sub_1C6FB6330();
    v14 = v13 ? MEMORY[0x1CCA5DDD0](v11, v9) : *(v9 + 8 * v11 + 32);
    v15 = v14;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    v16 = [v14 localCreationDate];
    if (!v16)
    {
      goto LABEL_24;
    }

    v17 = v16;
    v47 = v11;
    v18 = v41;
    sub_1C754DF2C();

    v19 = sub_1C754DECC();
    (*v40)(v18, v42);
    v20 = [v43 stringFromDate_];

    v21 = sub_1C755068C();
    v23 = v22;

    v48 = 0x3A72616559;
    v49 = 0xE500000000000000;
    MEMORY[0x1CCA5CD70](v21, v23);
    v24 = v48;
    v25 = v49;
    v26 = v15;
    v46 = sub_1C6FCA214(v26);
    if (!v27)
    {
      goto LABEL_25;
    }

    v28 = v27;

    sub_1C6F6E5B4(v12, 0);
    v29 = v50;
    swift_isUniquelyReferenced_nonNull_native();
    v48 = *v29;
    v30 = v48;
    sub_1C6F78124(v24, v25);
    if (__OFADD__(*(v30 + 16), (v31 & 1) == 0))
    {
      goto LABEL_23;
    }

    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215280, &qword_1C756C8F0);
    v33 = sub_1C7551A2C();
    v34 = v48;
    if (v33)
    {
      sub_1C6F78124(v24, v25);
      v9 = v39;
      v36 = v47;
      if ((v32 & 1) != (v35 & 1))
      {
        goto LABEL_26;
      }
    }

    else
    {
      v9 = v39;
      v36 = v47;
    }

    *v50 = v34;
    if (v32)
    {
    }

    else
    {
      sub_1C6FCABE4();
    }

    sub_1C70F082C(&v48, v46, v28);

    v11 = v36 + 1;
    v12 = sub_1C719D928;
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

void *sub_1C72162EC(void *result)
{
  v1 = 0;
  v3 = *result;
  v2 = result[1];
  v4 = *(*result + 16);
  v5 = *result + 32;
  v6 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v7 = (v5 + 72 * v1);
  while (v4 != v1)
  {
    if (v1 >= *(v3 + 16))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      return result;
    }

    result = memcpy(__dst, v7, 0x41uLL);
    if ((__dst[3] & 1) == 0 && !__dst[2])
    {
      sub_1C7025F3C(__dst, v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_90_0();
        sub_1C716D97C();
        v6 = v24;
      }

      v10 = *(v6 + 16);
      v9 = *(v6 + 24);
      if (v10 >= v9 >> 1)
      {
        OUTLINED_FUNCTION_15(v9);
        sub_1C716D97C();
        v6 = v24;
      }

      ++v1;
      *(v6 + 16) = v10 + 1;
      result = memcpy((v6 + 72 * v10 + 32), __dst, 0x41uLL);
      goto LABEL_2;
    }

    v7 += 72;
    ++v1;
  }

  v11 = 0;
  v12 = *(v2 + 16);
  v13 = MEMORY[0x1E69E7CC0];
LABEL_14:
  v14 = (v2 + 32 + 72 * v11);
  while (v12 != v11)
  {
    if (v11 >= *(v2 + 16))
    {
      goto LABEL_27;
    }

    result = memcpy(__dst, v14, 0x42uLL);
    if ((__dst[3] & 1) == 0 && !__dst[2])
    {
      sub_1C7025FF8(__dst, v22);
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v24 = v13;
      if ((v15 & 1) == 0)
      {
        OUTLINED_FUNCTION_90_0();
        sub_1C716D940();
        v13 = v24;
      }

      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v17 >= v16 >> 1)
      {
        OUTLINED_FUNCTION_15(v16);
        sub_1C716D940();
        v13 = v24;
      }

      ++v11;
      *(v13 + 16) = v17 + 1;
      result = memcpy((v13 + 72 * v17 + 32), __dst, 0x42uLL);
      goto LABEL_14;
    }

    v14 += 72;
    ++v11;
  }

  sub_1C71B9E20(v6);

  v18 = OUTLINED_FUNCTION_52_0();
  v19 = sub_1C7216C90(v18);

  sub_1C71B9F20(v13);

  v20 = OUTLINED_FUNCTION_52_0();
  v21 = sub_1C7216C90(v20);

  return sub_1C7210DC8(v21, v19);
}

void sub_1C721654C(uint64_t result)
{
  v2 = 0;
  v3 = *(result + 16);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
LABEL_2:
  for (i = v3 + 32 + 56 * v2; ; i += 56)
  {
    if (v4 == v2)
    {
      sub_1C71BA020(v5);
      OUTLINED_FUNCTION_50_19();

      sub_1C7216C90(v1);

      return;
    }

    if (v2 >= *(v3 + 16))
    {
      break;
    }

    v7 = *i;
    v8 = *(i + 48);
    v9 = *(i + 32);
    v19 = *(i + 16);
    v20 = v9;
    v21 = v8;
    v18 = v7;
    if ((BYTE8(v9) & 1) == 0 && !v20)
    {
      sub_1C70260B4(&v18, v17);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_16_34();
        sub_1C716DD2C();
        v5 = v22;
      }

      v12 = *(v5 + 16);
      v11 = *(v5 + 24);
      v1 = v12 + 1;
      if (v12 >= v11 >> 1)
      {
        OUTLINED_FUNCTION_15(v11);
        sub_1C716DD2C();
        v5 = v22;
      }

      ++v2;
      *(v5 + 16) = v1;
      v13 = v5 + 56 * v12;
      v14 = v18;
      v15 = v19;
      v16 = v20;
      *(v13 + 80) = v21;
      *(v13 + 48) = v15;
      *(v13 + 64) = v16;
      *(v13 + 32) = v14;
      goto LABEL_2;
    }

    ++v2;
  }

  __break(1u);
}

void sub_1C72166A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeExtendedToken(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  v11 = 0;
  v12 = *(a1 + 40);
  v13 = *(v12 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v13 == v11)
    {
      sub_1C71BA224();
      OUTLINED_FUNCTION_50_19();

      sub_1C7216C90(v5);

      return;
    }

    if (v11 >= *(v12 + 16))
    {
      break;
    }

    v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v16 = *(v5 + 72);
    sub_1C721AB4C(v12 + v15 + v16 * v11, v10);
    if ((v10[56] & 1) != 0 || *(v10 + 6))
    {
      sub_1C721ABB0(v10, type metadata accessor for TimeExtendedToken);
      ++v11;
    }

    else
    {
      sub_1C721AC04(v10, v7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = a2;
      v27 = v14;
      v25 = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = OUTLINED_FUNCTION_16_34();
        sub_1C716DCA8(v18, v19, v20);
        v14 = v27;
      }

      v22 = *(v14 + 16);
      v21 = *(v14 + 24);
      if (v22 >= v21 >> 1)
      {
        v23 = OUTLINED_FUNCTION_15(v21);
        sub_1C716DCA8(v23, v22 + 1, 1);
        v14 = v27;
      }

      ++v11;
      *(v14 + 16) = v22 + 1;
      v7 = v25;
      sub_1C721AC04(v25, v14 + v15 + v22 * v16);
      a2 = v26;
    }
  }

  __break(1u);
}

void sub_1C72168AC(uint64_t result)
{
  v2 = 0;
  v3 = *(result + 64);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
LABEL_2:
  for (i = (v3 + 32 + (v2 << 6)); ; i += 4)
  {
    if (v4 == v2)
    {
      sub_1C71BA624(v5);
      OUTLINED_FUNCTION_50_19();

      sub_1C7216C90(v1);

      return;
    }

    if (v2 >= *(v3 + 16))
    {
      break;
    }

    v7 = i[3];
    v8 = *i;
    v9 = i[1];
    v20 = i[2];
    v21 = v7;
    v18 = v8;
    v19 = v9;
    if ((BYTE8(v9) & 1) == 0 && !v19)
    {
      sub_1C7026698(&v18, &v17);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C716DBE8();
        v5 = v22;
      }

      v12 = *(v5 + 16);
      v11 = *(v5 + 24);
      v1 = v12 + 1;
      if (v12 >= v11 >> 1)
      {
        OUTLINED_FUNCTION_15(v11);
        sub_1C716DBE8();
        v5 = v22;
      }

      ++v2;
      *(v5 + 16) = v1;
      v13 = (v5 + (v12 << 6));
      v14 = v18;
      v15 = v19;
      v16 = v21;
      v13[4] = v20;
      v13[5] = v16;
      v13[2] = v14;
      v13[3] = v15;
      goto LABEL_2;
    }

    ++v2;
  }

  __break(1u);
}

void *sub_1C72169FC(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_storyPhotoLibraryContext);
  v4 = *(v1 + OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_storyPhotoLibraryContext + 8);
  v5 = *(v1 + OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_storyPhotoLibraryContext + 16);
  v35 = v3;
  LOWORD(v36) = v4;
  v37 = v5;
  v6 = v3;

  v7 = static StoryGenerationUtilities.momentUUIDByAssetUUID(for:storyPhotoLibraryContext:)(a1, &v35);
  v8 = v35;

  v9 = v7 + 64;
  OUTLINED_FUNCTION_11();
  v12 = v11 & v10;
  v14 = (v13 + 63) >> 6;
  sub_1C75504FC();
  v15 = 0;
  v16 = MEMORY[0x1E69E7CC8];
  v33 = v14;
  if (!v12)
  {
    goto LABEL_2;
  }

LABEL_6:
  while (1)
  {
    v18 = (v15 << 10) | (16 * __clz(__rbit64(v12)));
    v19 = (*(v7 + 48) + v18);
    v20 = v19[1];
    v34 = *v19;
    v21 = (*(v7 + 56) + v18);
    v22 = *v21;
    v23 = v21[1];
    v35 = 0x3A746E656D6F4DLL;
    v36 = 0xE700000000000000;
    sub_1C75504FC();
    sub_1C75504FC();
    MEMORY[0x1CCA5CD70](v22, v23);
    sub_1C75504FC();
    swift_isUniquelyReferenced_nonNull_native();
    v35 = v16;
    v24 = OUTLINED_FUNCTION_52_0();
    sub_1C6F78124(v24, v25);
    if (__OFADD__(v16[2], (v26 & 1) == 0))
    {
      break;
    }

    v27 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215280, &qword_1C756C8F0);
    v28 = sub_1C7551A2C();
    v16 = v35;
    if (v28)
    {
      v29 = OUTLINED_FUNCTION_52_0();
      sub_1C6F78124(v29, v30);
      if ((v27 & 1) != (v31 & 1))
      {
        goto LABEL_17;
      }
    }

    if (v27)
    {
    }

    else
    {
      sub_1C6FCABE4();
    }

    v14 = v33;
    v9 = v7 + 64;
    v12 &= v12 - 1;
    sub_1C70F082C(&v35, v34, v20);

    if (!v12)
    {
LABEL_2:
      while (1)
      {
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v17 >= v14)
        {

          return v16;
        }

        v12 = *(v9 + 8 * v17);
        ++v15;
        if (v12)
        {
          v15 = v17;
          goto LABEL_6;
        }
      }

      __break(1u);
      break;
    }
  }

  __break(1u);
LABEL_17:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t sub_1C7216C90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v2 = a1 + 32;
  v3 = MEMORY[0x1E69E7CC8];
  do
  {
    sub_1C6FB5E28(v2, v16);
    v4 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v5 = OUTLINED_FUNCTION_51();
    if (v6(v5, v4))
    {
      sub_1C706D154();
      sub_1C7069A44();
      v8 = v7;
      if (*(v7 + 16))
      {
        v9 = v17;
        v10 = v18;
        __swift_project_boxed_opaque_existential_1(v16, v17);
        v11 = (*(v10 + 64))(v9, v10);
        v13 = v12;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1C6FC7D38(v8, v11, v13, isUniquelyReferenced_nonNull_native);
      }

      else
      {
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v16);
    v2 += 40;
    --v1;
  }

  while (v1);
  return v3;
}

uint64_t sub_1C7216DD4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  if (a1[2] >= a2)
  {
    sub_1C755180C();

    v12 = 0x2820736573736170;
    v13 = 0xE800000000000000;
    v9 = sub_1C7551D8C();
    MEMORY[0x1CCA5CD70](v9);

    v7 = 540884512;
    v8 = 0xE400000000000000;
  }

  else
  {
    v12 = 0x2820736C696166;
    v13 = 0xE700000000000000;
    v6 = sub_1C7551D8C();
    MEMORY[0x1CCA5CD70](v6);

    v7 = 2112544;
    v8 = 0xE300000000000000;
  }

  MEMORY[0x1CCA5CD70](v7, v8);
  v10 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v10);

  MEMORY[0x1CCA5CD70](41, 0xE100000000000000);
  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](32, 0xE100000000000000);
  MEMORY[0x1CCA5CD70](v12, v13);

  *a3 = v5;
  a3[1] = v4;
  return result;
}

void sub_1C7216F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  swift_beginAccess();
  v82 = a2;
  v15 = *(a2 + 16);
  v17 = *a1;
  v16 = *(a1 + 8);
  swift_bridgeObjectRetain_n();
  sub_1C75504FC();
  v18 = sub_1C7009C30(v17, v16, v15);

  if (v18)
  {
    swift_bridgeObjectRelease_n();
    return;
  }

  swift_beginAccess();
  v19 = *(a3 + 16);
  v20 = *(a1 + 24);
  v21 = *(a1 + 32);
  sub_1C75504FC();
  sub_1C75504FC();
  v22 = sub_1C7009C30(v20, v21, v19);

  if (*(a1 + 16) == 2 && (v22 & 1) == 0)
  {
    goto LABEL_5;
  }

  v76 = v20;
  swift_beginAccess();
  v77 = *(*(a4 + 16) + 16);
  v80 = v77 < a5;
  v78 = v22;
  if (v77 < a5)
  {
    v23 = *(a1 + 40);
    v88 = v23;
    if (!v23)
    {
LABEL_5:
      swift_bridgeObjectRelease_n();

      return;
    }

    v24 = a3;
    sub_1C721AA74(&v88, &v89);
    sub_1C721AA74(&v88, &v89);
    v25 = sub_1C75504FC();
    v26 = sub_1C7238810(v25, v23);

    v27 = *(v26 + 16);

    if (!v27)
    {
      swift_bridgeObjectRelease_n();

      sub_1C721AAE4(&v88);
      return;
    }

    swift_beginAccess();
    sub_1C739796C(v23);
    swift_endAccess();
    a3 = v24;
  }

  swift_beginAccess();
  sub_1C6FB0600();
  v28 = *(*(a6 + 16) + 16);
  sub_1C6FB0EFC();
  v29 = *(a6 + 16);
  *(v29 + 16) = v28 + 1;
  v30 = v29 + 16 * v28;
  *(v30 + 32) = v17;
  *(v30 + 40) = v16;
  *(a6 + 16) = v29;
  swift_endAccess();
  swift_beginAccess();
  sub_1C70F082C(&v86, v17, v16);
  swift_endAccess();

  if (v78)
  {
  }

  else
  {
    swift_beginAccess();
    sub_1C70F082C(&v86, v76, v21);
    swift_endAccess();

    v80 = 1;
  }

  v87 = *(a1 + 40);
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C721AA74(&v87, &v89);
  v31 = sub_1C754FEEC();
  v32 = sub_1C755117C();

  sub_1C721AAE4(&v87);
  v81 = a3;
  if (os_log_type_enabled(v31, v32))
  {
    log = v31;
    v33 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v86 = v74;
    *v33 = 136315650;
    v34 = sub_1C7217D08();
    v36 = sub_1C6F765A4(v34, v35, &v86);

    *(v33 + 4) = v36;
    *(v33 + 12) = 2080;
    v37 = v77;
    if (v77 < a5)
    {
      v38 = 0xD000000000000016;
    }

    else
    {
      v38 = 0;
    }

    v39 = 0xE000000000000000;
    if (v77 >= a5)
    {
      v40 = 0xE000000000000000;
    }

    else
    {
      v40 = 0x80000001C75A4D30;
    }

    v41 = sub_1C6F765A4(v38, v40, &v86);

    *(v33 + 14) = v41;
    *(v33 + 22) = 2080;
    if (v78)
    {
      v42 = 0;
    }

    else
    {
      v89 = 0;
      v90 = 0xE000000000000000;
      sub_1C755180C();

      v89 = 0xD000000000000015;
      v90 = 0x80000001C75A4D10;
      MEMORY[0x1CCA5CD70](v76, v21);
      v42 = v89;
      v39 = v90;
    }

    v43 = v80;
    v44 = sub_1C6F765A4(v42, v39, &v86);

    *(v33 + 24) = v44;
    _os_log_impl(&dword_1C6F5C000, log, v32, "%s\n\tadding asset%s%s", v33, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1CCA5F8E0](v74, -1, -1);
    MEMORY[0x1CCA5F8E0](v33, -1, -1);
  }

  else
  {

    v43 = v80;
    v37 = v77;
  }

  if (v37 >= a5)
  {
LABEL_33:
    if (!v43)
    {
      return;
    }

    goto LABEL_34;
  }

  swift_beginAccess();
  if (*(*(a4 + 16) + 16) >= a5)
  {
    v48 = sub_1C754FEEC();
    v49 = sub_1C755117C();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_1C6F5C000, v48, v49, "Feature representation complete", v50, 2u);
      MEMORY[0x1CCA5F8E0](v50, -1, -1);
    }

    goto LABEL_33;
  }

  v45 = sub_1C754FEEC();
  v46 = sub_1C755117C();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 134218240;
    swift_beginAccess();
    *(v47 + 4) = *(*(a4 + 16) + 16);

    *(v47 + 12) = 2048;
    *(v47 + 14) = a5;
    _os_log_impl(&dword_1C6F5C000, v45, v46, "%ld features represented out of %ld", v47, 0x16u);
    MEMORY[0x1CCA5F8E0](v47, -1, -1);

    if (!v43)
    {
      return;
    }
  }

  else
  {

    if (!v43)
    {
      return;
    }
  }

LABEL_34:
  swift_beginAccess();
  v51 = *(a8 + 16);
  v52 = __OFADD__(v51, 1);
  v53 = v51 + 1;
  if (v52)
  {
LABEL_52:
    __break(1u);
  }

  else
  {
    *(a8 + 16) = v53;

    v54 = sub_1C754FEEC();
    v55 = sub_1C755117C();
    v79 = a4;
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 134217984;
      swift_beginAccess();
      *(v56 + 4) = *(a8 + 16);
      v57 = a8;

      _os_log_impl(&dword_1C6F5C000, v54, v55, "Starting to process waiting room level %ld", v56, 0xCu);
      MEMORY[0x1CCA5F8E0](v56, -1, -1);
    }

    else
    {

      v57 = a8;
    }

    swift_beginAccess();
    v58 = *(a9 + 16);
    v59 = *(v58 + 16);
    sub_1C75504FC();
    swift_beginAccess();
    v60 = (v58 + 72);
    v61 = -v59;
    v62 = -1;
    do
    {
      if (v61 + v62 == -1)
      {
        break;
      }

      if (++v62 >= *(v58 + 16))
      {
        __break(1u);
        goto LABEL_52;
      }

      v63 = v60 + 6;
      v64 = *(v60 - 4);
      v65 = *(v60 - 24);
      v66 = *(v60 - 2);
      v67 = *(v60 - 1);
      v68 = *v60;
      v89 = *(v60 - 5);
      v90 = v64;
      v91 = v65;
      v92 = v66;
      v93 = v67;
      v94 = v68;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C7216F94(&v89, v82, v81, v79, a5, a6, a7, v57, a9, a10);

      v60 = v63;
    }

    while (*(*(a6 + 16) + 16) < a10);

    v69 = sub_1C754FEEC();
    v70 = sub_1C755117C();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 134217984;
      swift_beginAccess();
      *(v71 + 4) = *(v57 + 16);

      _os_log_impl(&dword_1C6F5C000, v69, v70, "Done processing waiting room level %ld", v71, 0xCu);
      MEMORY[0x1CCA5F8E0](v71, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    v72 = *(v57 + 16);
    v52 = __OFSUB__(v72, 1);
    v73 = v72 - 1;
    if (!v52)
    {
      *(v57 + 16) = v73;
      return;
    }
  }

  __break(1u);
}

uint64_t FreeformStoryAssetElector.StochatizedAsset.PriorityType.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

void __swiftcall FreeformStoryAssetElector.StochatizedAsset.init(uuid:priorityType:isBadQuality:stochatizedCurationScore:isPlayable:hasPromotableLocation:originalCurationScore:)(PhotosIntelligence::FreeformStoryAssetElector::StochatizedAsset *__return_ptr retstr, Swift::String uuid, PhotosIntelligence::FreeformStoryAssetElector::StochatizedAsset::PriorityType priorityType, Swift::Bool isBadQuality, Swift::Double stochatizedCurationScore, Swift::Bool isPlayable, Swift::Bool hasPromotableLocation, Swift::Double originalCurationScore)
{
  v8 = *priorityType;
  retstr->uuid = uuid;
  retstr->priorityType = v8;
  retstr->isBadQuality = isBadQuality;
  retstr->stochatizedCurationScore = stochatizedCurationScore;
  retstr->isPlayable = isPlayable;
  retstr->hasPromotableLocation = hasPromotableLocation;
  retstr->originalCurationScore = originalCurationScore;
}

uint64_t static FreeformStoryAssetElector.sortedAssetUUIDs(from:)(uint64_t a1)
{
  v22 = a1;
  sub_1C75504FC();
  sub_1C72180F4(&v22);
  v5 = v22;
  v6 = *(v22 + 16);
  if (v6)
  {
    v22 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v6, 0, v1, v2, v3, v4);
    v7 = v22;
    v8 = (v5 + 40);
    do
    {
      v10 = *(v8 - 1);
      v9 = *v8;
      v22 = v7;
      v11 = *(v7 + 16);
      v12 = *(v7 + 24);
      sub_1C75504FC();
      if (v11 >= v12 >> 1)
      {
        OUTLINED_FUNCTION_146();
        sub_1C6F7ED9C(v14, v15, v16, v17, v18, v19, v20);
        v7 = v22;
      }

      *(v7 + 16) = v11 + 1;
      v13 = v7 + 16 * v11;
      *(v13 + 32) = v10;
      *(v13 + 40) = v9;
      v8 += 6;
      --v6;
    }

    while (v6);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v7;
}

BOOL sub_1C7217AE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 16) == 0;
  v4 = *(a2 + 16);
  if (v3 != (*(a2 + 16) != 0))
  {
    v3 = v2 == 1;
    if (v3 != (v4 != 1))
    {
      v3 = v2 == 2;
      if (v3 != (v4 != 2))
      {
        v3 = *(a2 + 17);
        if (*(a1 + 17) == v3)
        {
          v5 = *(a1 + 24);
          v6 = *(a2 + 24);
          if (v5 == v6)
          {
            v3 = *(a1 + 32);
            if (v3 == *(a2 + 32))
            {
              v3 = *(a1 + 33);
              if (v3 == *(a2 + 33))
              {
                if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
                {
                  return sub_1C7551DBC() & 1;
                }

                return 0;
              }
            }
          }

          else
          {
            return v6 < v5;
          }
        }
      }
    }
  }

  return v3;
}

uint64_t FreeformStoryAssetElector.deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);

  memcpy(__dst, (v0 + OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_storyElements), 0x130uLL);
  sub_1C6FE0DC0(__dst);
  v3 = *(v0 + OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_storyPhotoLibraryContext);

  return v0;
}

uint64_t FreeformStoryAssetElector.__deallocating_deinit()
{
  FreeformStoryAssetElector.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C7217D08()
{
  v1 = v0;
  if (v0[5])
  {
    sub_1C755180C();
    MEMORY[0x1CCA5CD70](*v0, v0[1]);
    MEMORY[0x1CCA5CD70](10272, 0xE200000000000000);
    sub_1C75519EC();
    MEMORY[0x1CCA5CD70](8236, 0xE200000000000000);
    v3 = v0[3];
    v2 = v1[4];
    sub_1C75504FC();
    v4 = sub_1C7033D84(8, v3, v2);
    v5 = MEMORY[0x1CCA5CC40](v4);
    v7 = v6;

    MEMORY[0x1CCA5CD70](v5, v7);

    MEMORY[0x1CCA5CD70](542842924, 0xE400000000000000);
    sub_1C703FD7C();
    v9 = v8;
    v10 = *(v8 + 16);
    if (v10)
    {
      v32 = MEMORY[0x1E69E7CC0];
      sub_1C716D51C(0, v10, 0);
      v11 = v9 + 40;
      do
      {
        sub_1C75504FC();
        sub_1C755082C();
        v12 = sub_1C755098C();
        v14 = v13;
        v16 = v15;
        v18 = v17;

        v20 = *(v32 + 16);
        v19 = *(v32 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1C716D51C(v19 > 1, v20 + 1, 1);
        }

        *(v32 + 16) = v20 + 1;
        v21 = (v32 + 32 * v20);
        v21[4] = v12;
        v21[5] = v14;
        v21[6] = v16;
        v21[7] = v18;
        v11 += 16;
        --v10;
      }

      while (v10);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219368, &qword_1C7577D80);
    sub_1C7099594(&qword_1EDD06A40, &qword_1EC219368, &qword_1C7577D80, MEMORY[0x1E69E6328]);
    sub_1C721AA20();
    v28 = sub_1C7550A4C();
    v30 = v29;

    MEMORY[0x1CCA5CD70](v28, v30);

    MEMORY[0x1CCA5CD70](23840, 0xE200000000000000);
  }

  else
  {
    MEMORY[0x1CCA5CD70](*v0, v0[1]);
    MEMORY[0x1CCA5CD70](10272, 0xE200000000000000);
    sub_1C75519EC();
    MEMORY[0x1CCA5CD70](8236, 0xE200000000000000);
    v23 = v0[3];
    v22 = v1[4];
    sub_1C75504FC();
    v24 = sub_1C7033D84(8, v23, v22);
    v25 = MEMORY[0x1CCA5CC40](v24);
    v27 = v26;

    MEMORY[0x1CCA5CD70](v25, v27);
  }

  return 0;
}

uint64_t sub_1C72180F4(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422BAC();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C7218464(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1C7218160(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t *a3, uint64_t *a4, void (*a5)(char *, int64_t, char *))
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a2(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + 32;
  v13[1] = v11;
  result = sub_1C7218558(v13, a3, a4, a5);
  *a1 = v10;
  return result;
}

unint64_t sub_1C7218200()
{
  result = qword_1EC219360;
  if (!qword_1EC219360)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FreeformStoryAssetElector.StochatizedAsset.PriorityType, &type metadata for FreeformStoryAssetElector.StochatizedAsset.PriorityType, v0, v1);
    atomic_store(result, &qword_1EC219360);
  }

  return result;
}

uint64_t type metadata accessor for FreeformStoryAssetElector(uint64_t a1)
{
  result = qword_1EDD09428;
  if (!qword_1EDD09428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C72182A8(uint64_t a1)
{
  result = sub_1C754FF1C();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1C72183C8(uint64_t a1, int a2)
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

uint64_t sub_1C7218408(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_1C7218464(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C7551D7C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1C7550BBC();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C72187F8(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1C721866C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C7218558(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(char *, int64_t, char *))
{
  v8 = a1[1];
  result = sub_1C7551D7C();
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
        v12 = sub_1C7550BBC();
        *(v12 + 16) = v11;
      }

      v13[0] = (v12 + 32);
      v13[1] = v11;
      sub_1C7218FF4(v13, v14, a1, v10, a4);
      *(v12 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return sub_1C70B4A38(0, v8, 1, a1);
  }

  return result;
}

uint64_t sub_1C721866C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 == a2)
  {
    return result;
  }

  v4 = a3;
  v6 = *a4;
  v7 = *a4 + 48 * a3 - 48;
  v8 = result - a3;
  while (2)
  {
    v9 = v8;
    v10 = v7;
    do
    {
      v11 = (v10 + 48);
      result = *(v10 + 48);
      v12 = *(v10 + 64);
      v13 = *(v10 + 64) == 0;
      v14 = *(v10 + 16);
      if (v13 == (*(v10 + 16) != 0) || (v13 = v12 == 1, v13 == (v14 != 1)) || (v13 = v12 == 2, v13 == (v14 != 2)) || (v13 = *(v10 + 17), *(v10 + 65) != v13))
      {
LABEL_11:
        if ((v13 & 1) == 0)
        {
          break;
        }

        goto LABEL_12;
      }

      v15 = *(v10 + 72);
      v16 = *(v10 + 24);
      if (v15 == v16)
      {
        v13 = *(v10 + 80);
        if (v13 != *(v10 + 32))
        {
          goto LABEL_11;
        }

        v13 = *(v10 + 81);
        if (v13 != *(v10 + 33))
        {
          goto LABEL_11;
        }

        if (result == *v10 && *(v10 + 56) == *(v10 + 8))
        {
          break;
        }

        result = sub_1C7551DBC();
        if ((result & 1) == 0)
        {
          break;
        }
      }

      else if (v16 >= v15)
      {
        break;
      }

LABEL_12:
      if (!v6)
      {
        __break(1u);
        return result;
      }

      v18 = *(v10 + 64);
      v17 = *(v10 + 80);
      v19 = *v11;
      v20 = *(v10 + 16);
      *v11 = *v10;
      *(v10 + 64) = v20;
      v21 = *(v10 + 32);
      *v10 = v19;
      *(v10 + 16) = v18;
      *(v10 + 32) = v17;
      v10 -= 48;
      v11[2] = v21;
    }

    while (!__CFADD__(v9++, 1));
    ++v4;
    v7 += 48;
    --v8;
    if (v4 != a2)
    {
      continue;
    }

    return result;
  }
}

void sub_1C72187F8(double **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v134 = a3;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
    goto LABEL_119;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
LABEL_3:
  if (v6 + 1 >= v5)
  {
    v5 = v6 + 1;
    goto LABEL_34;
  }

  v8 = *v134;
  v9 = (*v134 + 48 * (v6 + 1));
  v10 = *v9;
  v11 = v9[2];
  v132[1] = v9[1];
  v132[2] = v11;
  v132[0] = v10;
  v12 = v9[1];
  v129 = *v9;
  v130 = v12;
  v131 = v9[2];
  v13 = (v8 + 48 * v6);
  v15 = v13[1];
  v14 = v13[2];
  v133[0] = *v13;
  v133[1] = v15;
  v133[2] = v14;
  v16 = v13[1];
  v126 = *v13;
  v127 = v16;
  v128 = v13[2];
  v17 = sub_1C7217AE0(&v129, &v126);
  if (v4)
  {
    v120 = v126;
    v121 = v127;
    v122 = v128;
    sub_1C721A9E8(v132, &v123);
    sub_1C721A9E8(v133, &v123);
    sub_1C721AC68(&v120);
    v123 = v129;
    v124 = v130;
    v125 = v131;
    sub_1C721AC68(&v123);
    goto LABEL_131;
  }

  v18 = v17;
  v120 = v126;
  v121 = v127;
  v122 = v128;
  sub_1C721A9E8(v132, v119);
  sub_1C721A9E8(v133, v119);
  sub_1C721AC68(&v120);
  v123 = v129;
  v124 = v130;
  v125 = v131;
  sub_1C721AC68(&v123);
  v19 = v6 + 2;
  v20 = 48 * v6;
  for (i = (v8 + 48 * v6 + 129); ; i += 48)
  {
    if (v19 >= v5)
    {
      goto LABEL_26;
    }

    v22 = *(i - 17);
    v23 = *(i - 17) == 0;
    v24 = *(i - 65);
    if (v23 == (*(i - 65) != 0))
    {
      break;
    }

    v23 = v22 == 1;
    if (v23 == (v24 != 1))
    {
      break;
    }

    v23 = v22 == 2;
    if (v23 == (v24 != 2))
    {
      break;
    }

    v23 = *(i - 64);
    if (*(i - 16) != v23)
    {
      break;
    }

    v25 = *(i - 9);
    v26 = *(i - 57);
    if (v25 != v26)
    {
      v23 = v26 < v25;
      break;
    }

    v23 = *(i - 1);
    if (v23 != *(i - 49))
    {
      break;
    }

    v23 = *i;
    if (v23 != *(i - 48))
    {
      break;
    }

    if (*(i - 33) != *(i - 81) || *(i - 25) != *(i - 73))
    {
      v23 = sub_1C7551DBC();
      break;
    }

    if (v18)
    {
      v5 = v19;
      goto LABEL_27;
    }

LABEL_21:
    ++v19;
  }

  if (((v18 ^ v23) & 1) == 0)
  {
    goto LABEL_21;
  }

  v5 = v19;
LABEL_26:
  if (!v18)
  {
LABEL_34:
    v39 = v134[1];
    if (v5 >= v39)
    {
      goto LABEL_43;
    }

    if (__OFSUB__(v5, v6))
    {
      goto LABEL_152;
    }

    if (v5 - v6 >= a4)
    {
      goto LABEL_43;
    }

    if (__OFADD__(v6, a4))
    {
      goto LABEL_153;
    }

    if (v6 + a4 >= v39)
    {
      v40 = v134[1];
    }

    else
    {
      v40 = v6 + a4;
    }

    if (v40 < v6)
    {
LABEL_154:
      __break(1u);
      goto LABEL_155;
    }

    if (v5 == v40)
    {
LABEL_43:
      v41 = v5;
      goto LABEL_44;
    }

    v86 = *v134;
    v87 = *v134 + 48 * v5 - 48;
    v117 = v40;
    v118 = v6;
    v88 = (v6 - v5);
    while (1)
    {
      v89 = v88;
      v90 = v87;
      while (1)
      {
        v91 = (v90 + 48);
        v92 = *(v90 + 64);
        v93 = *(v90 + 64) == 0;
        v94 = *(v90 + 16);
        if (v93 == (*(v90 + 16) != 0))
        {
          goto LABEL_104;
        }

        v93 = v92 == 1;
        if (v93 == (v94 != 1))
        {
          goto LABEL_104;
        }

        v93 = v92 == 2;
        if (v93 == (v94 != 2))
        {
          goto LABEL_104;
        }

        v93 = *(v90 + 17);
        if (*(v90 + 65) != v93)
        {
          goto LABEL_104;
        }

        v95 = *(v90 + 72);
        v96 = *(v90 + 24);
        if (v95 == v96)
        {
          break;
        }

        if (v96 >= v95)
        {
          goto LABEL_116;
        }

LABEL_105:
        if (!v86)
        {
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
          goto LABEL_161;
        }

        v98 = *(v90 + 64);
        v97 = *(v90 + 80);
        v99 = *v91;
        v100 = *(v90 + 16);
        *v91 = *v90;
        *(v90 + 64) = v100;
        v101 = *(v90 + 32);
        *v90 = v99;
        *(v90 + 16) = v98;
        *(v90 + 32) = v97;
        v90 -= 48;
        v91[2] = v101;
        if (__CFADD__(v89++, 1))
        {
          goto LABEL_116;
        }
      }

      v93 = *(v90 + 80);
      if (v93 != *(v90 + 32) || (v93 = *(v90 + 81), v93 != *(v90 + 33)))
      {
LABEL_104:
        if ((v93 & 1) == 0)
        {
          goto LABEL_116;
        }

        goto LABEL_105;
      }

      v103 = *(v90 + 48) == *v90 && *(v90 + 56) == *(v90 + 8);
      if (!v103 && (sub_1C7551DBC() & 1) != 0)
      {
        goto LABEL_105;
      }

LABEL_116:
      ++v5;
      v87 += 48;
      --v88;
      v41 = v117;
      if (v5 == v117)
      {
        v6 = v118;
LABEL_44:
        if (v41 < v6)
        {
          goto LABEL_151;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6FB17EC(0, *(v7 + 2) + 1, 1, v7);
          v7 = v104;
        }

        v43 = *(v7 + 2);
        v42 = *(v7 + 3);
        v44 = v43 + 1;
        if (v43 >= v42 >> 1)
        {
          sub_1C6FB17EC(v42 > 1, v43 + 1, 1, v7);
          v7 = v105;
        }

        *(v7 + 2) = v44;
        v45 = v7 + 32;
        v46 = &v7[16 * v43 + 32];
        *v46 = v6;
        *(v46 + 1) = v41;
        v118 = *result;
        if (!*result)
        {
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
          return;
        }

        v116 = v41;
        if (v43)
        {
          while (2)
          {
            v47 = v44 - 1;
            v48 = &v45[16 * v44 - 16];
            v49 = &v7[16 * v44];
            if (v44 >= 4)
            {
              v54 = &v45[16 * v44];
              v55 = *(v54 - 8);
              v56 = *(v54 - 7);
              v60 = __OFSUB__(v56, v55);
              v57 = v56 - v55;
              if (v60)
              {
                goto LABEL_136;
              }

              v59 = *(v54 - 6);
              v58 = *(v54 - 5);
              v60 = __OFSUB__(v58, v59);
              v52 = v58 - v59;
              v53 = v60;
              if (v60)
              {
                goto LABEL_137;
              }

              v61 = *(v49 + 1);
              v62 = v61 - *v49;
              if (__OFSUB__(v61, *v49))
              {
                goto LABEL_139;
              }

              v60 = __OFADD__(v52, v62);
              v63 = v52 + v62;
              if (v60)
              {
                goto LABEL_142;
              }

              if (v63 >= v57)
              {
                v77 = *v48;
                v76 = *(v48 + 1);
                v60 = __OFSUB__(v76, v77);
                v78 = v76 - v77;
                if (v60)
                {
                  goto LABEL_150;
                }

                if (v52 < v78)
                {
                  v47 = v44 - 2;
                }
              }

              else
              {
LABEL_64:
                if (v53)
                {
                  goto LABEL_138;
                }

                v65 = *v49;
                v64 = *(v49 + 1);
                v66 = __OFSUB__(v64, v65);
                v67 = v64 - v65;
                v68 = v66;
                if (v66)
                {
                  goto LABEL_141;
                }

                v69 = *(v48 + 1);
                v70 = v69 - *v48;
                if (__OFSUB__(v69, *v48))
                {
                  goto LABEL_144;
                }

                if (__OFADD__(v67, v70))
                {
                  goto LABEL_146;
                }

                if (v67 + v70 < v52)
                {
                  goto LABEL_79;
                }

                if (v52 < v70)
                {
                  v47 = v44 - 2;
                }
              }
            }

            else
            {
              if (v44 == 3)
              {
                v50 = *(v7 + 4);
                v51 = *(v7 + 5);
                v60 = __OFSUB__(v51, v50);
                v52 = v51 - v50;
                v53 = v60;
                goto LABEL_64;
              }

              if (v44 < 2)
              {
                goto LABEL_140;
              }

              v72 = *v49;
              v71 = *(v49 + 1);
              v60 = __OFSUB__(v71, v72);
              v67 = v71 - v72;
              v68 = v60;
LABEL_79:
              if (v68)
              {
                goto LABEL_143;
              }

              v74 = *v48;
              v73 = *(v48 + 1);
              v60 = __OFSUB__(v73, v74);
              v75 = v73 - v74;
              if (v60)
              {
                goto LABEL_145;
              }

              if (v75 < v67)
              {
                break;
              }
            }

            if (v47 - 1 >= v44)
            {
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

            if (!*v134)
            {
              goto LABEL_158;
            }

            v79 = &v45[16 * v47 - 16];
            v80 = *v79;
            v81 = &v45[16 * v47];
            v82 = *(v81 + 1);
            sub_1C7219678((*v134 + 48 * *v79), (*v134 + 48 * *v81), (*v134 + 48 * v82), v118);
            if (v4)
            {
              goto LABEL_131;
            }

            if (v82 < v80)
            {
              goto LABEL_133;
            }

            v83 = v7;
            v84 = *(v7 + 2);
            if (v47 > v84)
            {
              goto LABEL_134;
            }

            *v79 = v80;
            *(v79 + 1) = v82;
            if (v47 >= v84)
            {
              goto LABEL_135;
            }

            v44 = v84 - 1;
            sub_1C7423CF4(v81 + 16, v84 - 1 - v47, &v45[16 * v47]);
            *(v83 + 2) = v84 - 1;
            v85 = v84 > 2;
            v7 = v83;
            if (!v85)
            {
              break;
            }

            continue;
          }
        }

        v5 = v134[1];
        v6 = v116;
        if (v116 >= v5)
        {
LABEL_119:
          v118 = *result;
          if (*result)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              goto LABEL_156;
            }

            goto LABEL_121;
          }

          goto LABEL_162;
        }

        goto LABEL_3;
      }
    }
  }

LABEL_27:
  if (v5 >= v6)
  {
    if (v6 < v5)
    {
      v28 = 48 * v5 - 48;
      v29 = v5;
      v30 = v6;
      do
      {
        if (v30 != --v29)
        {
          v31 = *v134;
          if (!*v134)
          {
            goto LABEL_160;
          }

          v32 = (v31 + v20);
          v33 = (v31 + v28);
          v34 = *v32;
          v35 = v32[1];
          v36 = v32[2];
          v38 = v33[1];
          v37 = v33[2];
          *v32 = *v33;
          v32[1] = v38;
          v32[2] = v37;
          v33[1] = v35;
          v33[2] = v36;
          *v33 = v34;
        }

        ++v30;
        v28 -= 48;
        v20 += 48;
      }

      while (v30 < v29);
    }

    goto LABEL_34;
  }

LABEL_155:
  __break(1u);
LABEL_156:
  v7 = sub_1C7420830();
LABEL_121:
  v106 = v7 + 16;
  v107 = *(v7 + 2);
  while (v107 >= 2)
  {
    if (!*v134)
    {
      goto LABEL_159;
    }

    v108 = v7;
    v109 = &v7[16 * v107];
    v110 = *v109;
    v111 = &v106[2 * v107];
    v112 = *(v111 + 1);
    sub_1C7219678((*v134 + 48 * *v109), (*v134 + 48 * *v111), (*v134 + 48 * v112), v118);
    if (v4)
    {
      break;
    }

    if (v112 < v110)
    {
      goto LABEL_147;
    }

    if (v107 - 2 >= *v106)
    {
      goto LABEL_148;
    }

    *v109 = v110;
    *(v109 + 1) = v112;
    v113 = *v106 - v107;
    if (*v106 < v107)
    {
      goto LABEL_149;
    }

    v107 = *v106 - 1;
    sub_1C7423CF4(v111 + 16, v113, v111);
    *v106 = v107;
    v7 = v108;
  }

LABEL_131:
}

void sub_1C7218FF4(char **result, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(char *, int64_t, char *))
{
  v6 = v5;
  v7 = a3[1];
  v103 = MEMORY[0x1E69E7CC0];
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v10 = v8;
      v11 = v8 + 1;
      if (v8 + 1 < v7)
      {
        v12 = *a3;
        v13 = (*a3 + 24 * v11);
        v14 = *v13;
        v15 = v13[1];
        v16 = (*a3 + 24 * v10);
        if (v14 == *v16 && v15 == v16[1])
        {
          v18 = 0;
        }

        else
        {
          v18 = sub_1C7551DBC();
        }

        v11 = v10 + 2;
        v19 = v12 + 24 * v10;
        v20 = 24 * v10;
        v21 = (v19 + 56);
        while (v11 < v7)
        {
          if (*(v21 - 1) == *(v21 - 4) && *v21 == *(v21 - 3))
          {
            if (v18)
            {
              goto LABEL_21;
            }
          }

          else if ((v18 ^ sub_1C7551DBC()))
          {
            break;
          }

          ++v11;
          v21 += 3;
        }

        if ((v18 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v11 < v10)
        {
          goto LABEL_122;
        }

        if (v10 < v11)
        {
          v23 = 24 * v11;
          v24 = v11;
          v25 = v10;
          do
          {
            if (v25 != --v24)
            {
              v26 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v27 = (v26 + v20);
              v28 = v26 + v23;
              v29 = *v27;
              v30 = *(v27 + 1);
              v31 = *(v28 - 24);
              v27[2] = *(v28 - 8);
              *v27 = v31;
              *(v28 - 24) = v29;
              *(v28 - 16) = v30;
            }

            ++v25;
            v23 -= 24;
            v20 += 24;
          }

          while (v25 < v24);
        }
      }

LABEL_28:
      v32 = a3[1];
      if (v11 < v32)
      {
        if (__OFSUB__(v11, v10))
        {
          goto LABEL_121;
        }

        if (v11 - v10 < a4)
        {
          if (__OFADD__(v10, a4))
          {
            goto LABEL_123;
          }

          v100 = v6;
          if (v10 + a4 >= v32)
          {
            v33 = a3[1];
          }

          else
          {
            v33 = v10 + a4;
          }

          if (v33 < v10)
          {
LABEL_124:
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
            return;
          }

          if (v11 != v33)
          {
            v34 = *a3;
            v35 = *a3 + 24 * v11 - 24;
            v98 = v10;
            v36 = v10 - v11;
            do
            {
              v37 = v11;
              v38 = (v34 + 24 * v11);
              v39 = *v38;
              v40 = v38[1];
              v41 = v36;
              v42 = v35;
              do
              {
                v43 = v39 == *v42 && v40 == *(v42 + 8);
                if (v43 || (sub_1C7551DBC() & 1) == 0)
                {
                  break;
                }

                if (!v34)
                {
                  goto LABEL_125;
                }

                v44 = *(v42 + 32);
                v45 = *(v42 + 16);
                v39 = *(v42 + 24);
                *(v42 + 24) = *v42;
                *(v42 + 40) = v45;
                *v42 = v39;
                *(v42 + 8) = v44;
                v40 = v44;
                v42 -= 24;
              }

              while (!__CFADD__(v41++, 1));
              ++v11;
              v35 += 24;
              --v36;
            }

            while (v37 + 1 != v33);
            v11 = v33;
            v10 = v98;
          }

          v6 = v100;
        }
      }

      if (v11 < v10)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v91 = OUTLINED_FUNCTION_24_0();
        sub_1C6FB17EC(v91, v92, v93, v9);
        v9 = v94;
      }

      v48 = v9[2];
      v47 = v9[3];
      v49 = v48 + 1;
      if (v48 >= v47 >> 1)
      {
        sub_1C6FB17EC(v47 > 1, v48 + 1, 1, v9);
        v9 = v95;
      }

      v9[2] = v49;
      v50 = v9 + 4;
      v51 = &v9[2 * v48 + 4];
      *v51 = v10;
      v51[1] = v11;
      v101 = *result;
      if (!*result)
      {
        goto LABEL_128;
      }

      if (v48)
      {
        while (1)
        {
          v52 = v49 - 1;
          v53 = &v50[2 * v49 - 2];
          v54 = &v9[2 * v49];
          if (v49 >= 4)
          {
            break;
          }

          if (v49 == 3)
          {
            v55 = v9[4];
            v56 = v9[5];
            v65 = __OFSUB__(v56, v55);
            v57 = v56 - v55;
            v58 = v65;
LABEL_70:
            if (v58)
            {
              goto LABEL_110;
            }

            v70 = *v54;
            v69 = v54[1];
            v71 = __OFSUB__(v69, v70);
            v72 = v69 - v70;
            v73 = v71;
            if (v71)
            {
              goto LABEL_113;
            }

            v74 = v53[1];
            v75 = v74 - *v53;
            if (__OFSUB__(v74, *v53))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v72, v75))
            {
              goto LABEL_118;
            }

            if (v72 + v75 >= v57)
            {
              if (v57 < v75)
              {
                v52 = v49 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v49 < 2)
          {
            goto LABEL_112;
          }

          v77 = *v54;
          v76 = v54[1];
          v65 = __OFSUB__(v76, v77);
          v72 = v76 - v77;
          v73 = v65;
LABEL_85:
          if (v73)
          {
            goto LABEL_115;
          }

          v79 = *v53;
          v78 = v53[1];
          v65 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v65)
          {
            goto LABEL_117;
          }

          if (v80 < v72)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v52 - 1 >= v49)
          {
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
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v84 = &v50[2 * v52 - 2];
          v85 = *v84;
          v86 = &v50[2 * v52];
          v87 = v86[1];
          sub_1C72199A0((*a3 + 24 * *v84), (*a3 + 24 * *v86), *a3 + 24 * v87, v101, a5);
          if (v6)
          {
            goto LABEL_103;
          }

          if (v87 < v85)
          {
            goto LABEL_105;
          }

          v88 = v9;
          v89 = v9[2];
          if (v52 > v89)
          {
            goto LABEL_106;
          }

          *v84 = v85;
          v84[1] = v87;
          if (v52 >= v89)
          {
            goto LABEL_107;
          }

          v49 = v89 - 1;
          memmove(&v50[2 * v52], v86 + 2, 16 * (v89 - 1 - v52));
          v88[2] = v89 - 1;
          v90 = v89 > 2;
          v9 = v88;
          v6 = 0;
          if (!v90)
          {
            goto LABEL_99;
          }
        }

        v59 = &v50[2 * v49];
        v60 = *(v59 - 8);
        v61 = *(v59 - 7);
        v65 = __OFSUB__(v61, v60);
        v62 = v61 - v60;
        if (v65)
        {
          goto LABEL_108;
        }

        v64 = *(v59 - 6);
        v63 = *(v59 - 5);
        v65 = __OFSUB__(v63, v64);
        v57 = v63 - v64;
        v58 = v65;
        if (v65)
        {
          goto LABEL_109;
        }

        v66 = v54[1];
        v67 = v66 - *v54;
        if (__OFSUB__(v66, *v54))
        {
          goto LABEL_111;
        }

        v65 = __OFADD__(v57, v67);
        v68 = v57 + v67;
        if (v65)
        {
          goto LABEL_114;
        }

        if (v68 >= v62)
        {
          v82 = *v53;
          v81 = v53[1];
          v65 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v65)
          {
            goto LABEL_119;
          }

          if (v57 < v83)
          {
            v52 = v49 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v7 = a3[1];
      v8 = v11;
      if (v11 >= v7)
      {
        v103 = v9;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_129;
  }

  sub_1C7219540(&v103, *result, a3, a5);
LABEL_103:
}

uint64_t sub_1C7219540(uint64_t *a1, char *a2, void *a3, void (*a4)(char *, int64_t, char *))
{
  i = a1;
  v17 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C7420830();
    v17 = result;
  }

  v13 = i;
  *i = v17;
  v7 = (v17 + 16);
  for (i = *(v17 + 16); ; *v7 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v13 = v17;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v8 = (v17 + 16 * i);
    v9 = *v8;
    v10 = &v7[2 * i];
    v11 = v10[1];
    sub_1C72199A0((*a3 + 24 * *v8), (*a3 + 24 * *v10), *a3 + 24 * v11, a2, a4);
    if (v4)
    {
      goto LABEL_10;
    }

    if (v11 < v9)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v7)
    {
      goto LABEL_12;
    }

    *v8 = v9;
    v8[1] = v11;
    v12 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v10, v10 + 2, 16 * v12);
  }

  *v13 = v17;
  __break(1u);
  return result;
}

uint64_t sub_1C7219678(double *a1, double *a2, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 48;
  v9 = (a3 - a2) / 48;
  if (v8 < v9)
  {
    sub_1C741E414(a1, (a2 - a1) / 48, a4);
    v10 = &v4[6 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v23 = v7;
        goto LABEL_56;
      }

      v12 = *(v6 + 16);
      v13 = *(v6 + 16) == 0;
      v14 = *(v4 + 16);
      if (v13 == (*(v4 + 16) != 0))
      {
        break;
      }

      v13 = v12 == 1;
      if (v13 == (v14 != 1))
      {
        break;
      }

      v13 = v12 == 2;
      if (v13 == (v14 != 2))
      {
        break;
      }

      v13 = *(v4 + 17);
      if (*(v6 + 17) != v13)
      {
        break;
      }

      v15 = v6[3];
      v16 = v4[3];
      if (v15 == v16)
      {
        v13 = *(v6 + 32);
        if (v13 != *(v4 + 32))
        {
          break;
        }

        v13 = *(v6 + 33);
        if (v13 != *(v4 + 33))
        {
          break;
        }

        v18 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
        if (v18 || (sub_1C7551DBC() & 1) == 0)
        {
LABEL_25:
          v17 = v4;
          v18 = v7 == v4;
          v4 += 6;
          if (v18)
          {
            goto LABEL_27;
          }

LABEL_26:
          v19 = *v17;
          v20 = *(v17 + 2);
          *(v7 + 1) = *(v17 + 1);
          *(v7 + 2) = v20;
          *v7 = v19;
          goto LABEL_27;
        }
      }

      else if (v16 >= v15)
      {
        goto LABEL_25;
      }

LABEL_15:
      v17 = v6;
      v18 = v7 == v6;
      v6 += 6;
      if (!v18)
      {
        goto LABEL_26;
      }

LABEL_27:
      v7 += 6;
    }

    if ((v13 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_15;
  }

  sub_1C741E414(a2, (a3 - a2) / 48, a4);
  v21 = &v4[6 * v9];
LABEL_29:
  v22 = 0;
  v23 = v6;
  v6 -= 6;
  while (1)
  {
    v10 = &v21[v22];
    if (&v21[v22] <= v4 || v23 <= v7)
    {
      break;
    }

    v25 = *(v10 - 32);
    v26 = *(v10 - 32) == 0;
    v27 = *(v23 - 32);
    if (v26 == (*(v23 - 32) != 0) || (v26 = v25 == 1, v26 == (v27 != 1)) || (v26 = v25 == 2, v26 == (v27 != 2)) || (v26 = *(v23 - 31), *(v10 - 31) != v26))
    {
LABEL_42:
      if (v26)
      {
        goto LABEL_53;
      }

      goto LABEL_43;
    }

    v28 = *(v10 - 3);
    v29 = *(v23 - 3);
    if (v28 == v29)
    {
      v26 = *(v10 - 16);
      if (v26 != *(v23 - 16))
      {
        goto LABEL_42;
      }

      v26 = *(v10 - 15);
      if (v26 != *(v23 - 15))
      {
        goto LABEL_42;
      }

      v33 = *(v10 - 6) == *(v23 - 6) && *(v10 - 5) == *(v23 - 5);
      if (!v33 && (sub_1C7551DBC() & 1) != 0)
      {
LABEL_53:
        v34 = &v5[v22];
        v5 = &v5[v22 - 6];
        v21 = (v21 + v22 * 8);
        if (v34 != v23)
        {
          v35 = *v6;
          v36 = *(v6 + 2);
          *(v5 + 1) = *(v6 + 1);
          *(v5 + 2) = v36;
          *v5 = v35;
        }

        goto LABEL_29;
      }
    }

    else if (v29 < v28)
    {
      goto LABEL_53;
    }

LABEL_43:
    if (v10 != &v5[v22])
    {
      v30 = &v5[v22 - 6];
      v31 = *(v10 - 3);
      v32 = *(v10 - 1);
      *(v30 + 1) = *(v10 - 2);
      *(v30 + 2) = v32;
      *v30 = v31;
    }

    v22 -= 6;
  }

LABEL_56:
  v37 = (v10 - v4) / 48;
  if (v23 != v4 || v23 >= &v4[6 * v37])
  {
    memmove(v23, v4, 48 * v37);
  }

  return 1;
}

uint64_t sub_1C72199A0(char *a1, char *a2, unint64_t a3, char *a4, void (*a5)(char *, int64_t, char *))
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = (a2 - a1) / 24;
  v10 = (a3 - a2) / 24;
  if (v9 < v10)
  {
    a5(a1, (a2 - a1) / 24, a4);
    v11 = &v5[24 * v9];
    while (1)
    {
      if (v5 >= v11 || v7 >= v6)
      {
        v7 = v8;
        goto LABEL_36;
      }

      v13 = *v7 == *v5 && *(v7 + 1) == *(v5 + 1);
      if (v13 || (sub_1C7551DBC() & 1) == 0)
      {
        break;
      }

      v14 = v7;
      v13 = v8 == v7;
      v7 += 24;
      if (!v13)
      {
        goto LABEL_16;
      }

LABEL_17:
      v8 += 24;
    }

    v14 = v5;
    v13 = v8 == v5;
    v5 += 24;
    if (v13)
    {
      goto LABEL_17;
    }

LABEL_16:
    v15 = *v14;
    *(v8 + 2) = *(v14 + 2);
    *v8 = v15;
    goto LABEL_17;
  }

  a5(a2, (a3 - a2) / 24, a4);
  v11 = &v5[24 * v10];
LABEL_19:
  v16 = v7 - 24;
  for (v6 -= 24; v11 > v5 && v7 > v8; v6 -= 24)
  {
    v18 = *(v11 - 3) == *(v7 - 3) && *(v11 - 2) == *(v7 - 2);
    if (!v18 && (sub_1C7551DBC() & 1) != 0)
    {
      v13 = v6 + 24 == v7;
      v7 -= 24;
      if (!v13)
      {
        v20 = *v16;
        *(v6 + 16) = *(v16 + 2);
        *v6 = v20;
        v7 = v16;
      }

      goto LABEL_19;
    }

    if (v11 != (v6 + 24))
    {
      v19 = *(v11 - 24);
      *(v6 + 16) = *(v11 - 1);
      *v6 = v19;
    }

    v11 -= 24;
  }

LABEL_36:
  v21 = (v11 - v5) / 24;
  if (v7 != v5 || v7 >= &v5[24 * v21])
  {
    memmove(v7, v5, 24 * v21);
  }

  return 1;
}

void *sub_1C7219B70(void *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1C721A2B0(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void *sub_1C7219BF8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1C721A624(v9, a2, a3, a4, a5, sub_1C71FFBFC);
    v11 = v10;

    return v11;
  }

  return result;
}

void sub_1C7219C9C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v42 = a5;
  sub_1C6F78034(v41);
  v6 = v41[1];
  v7 = v41[3];
  v8 = v41[4];
  v34 = v41[5];
  v35 = v41[0];
  v9 = (v41[2] + 64) >> 6;
  sub_1C75504FC();

  v33 = v6;
  if (v8)
  {
    while (1)
    {
      v36 = a4;
      v10 = v7;
LABEL_8:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v35 + 48) + 16 * v12);
      v14 = v13[1];
      v15 = *(*(v35 + 56) + 8 * v12);
      v40[0] = *v13;
      v40[1] = v14;
      v40[2] = v15;
      sub_1C75504FC();
      sub_1C75504FC();
      v34(&v37, v40);

      v16 = v37;
      v17 = v38;
      v18 = v39;
      v19 = *v42;
      v21 = sub_1C6F78124(v37, v38);
      v22 = v19[2];
      v23 = (v20 & 1) == 0;
      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
        break;
      }

      v25 = v20;
      if (v19[3] >= v24)
      {
        if ((v36 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215280, &qword_1C756C8F0);
          sub_1C7551A3C();
        }
      }

      else
      {
        sub_1C73541F4(v24, v36 & 1);
        v26 = sub_1C6F78124(v16, v17);
        if ((v25 & 1) != (v27 & 1))
        {
          goto LABEL_24;
        }

        v21 = v26;
      }

      v8 &= v8 - 1;
      v28 = *v42;
      if (v25)
      {

        *(v28[7] + 8 * v21) = v18;
      }

      else
      {
        v28[(v21 >> 6) + 8] |= 1 << v21;
        v29 = (v28[6] + 16 * v21);
        *v29 = v16;
        v29[1] = v17;
        *(v28[7] + 8 * v21) = v18;
        v30 = v28[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          goto LABEL_23;
        }

        v28[2] = v32;
      }

      a4 = 1;
      v7 = v10;
      v6 = v33;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_1C6F61E88(v35);

        return;
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v36 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  sub_1C7551E4C();
  __break(1u);
}

void *sub_1C7219F48(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v5 = a1;
  v49 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  v8 = 8 * v7;
  if ((v6 & 0x3Fu) > 0xD)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v38 = v3;
    v36 = &v35;
    MEMORY[0x1EEE9AC00](a1);
    v37 = v7;
    v41 = &v35 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_1C71FAC38(0, v7, v41);
    v3 = v5 + 56;
    v8 = 1 << *(v5 + 32);
    v9 = v8 < 64 ? ~(-1 << v8) : -1;
    v10 = v9 & *(v5 + 56);
    swift_beginAccess();
    v15 = 0;
    v16 = 0;
    v7 = (v8 + 63) >> 6;
    v39 = a2;
    v40 = v5;
LABEL_6:
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_13:
      v20 = v17 | (v16 << 6);
      v21 = *a2;
      if (*(*a2 + 16))
      {
        v43 = v10;
        v44 = v15;
        v22 = *(v5 + 48);
        v42 = v20;
        v23 = (v22 + 16 * v20);
        v8 = *v23;
        v24 = v23[1];
        sub_1C7551F3C();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75505AC();
        v25 = sub_1C7551FAC();
        v26 = ~(-1 << *(v21 + 32));
        do
        {
          v27 = v25 & v26;
          if (((*(v21 + 56 + (((v25 & v26) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v25 & v26)) & 1) == 0)
          {

            a2 = v39;
            v5 = v40;
            v10 = v43;
            v15 = v44;
            goto LABEL_6;
          }

          v28 = (*(v21 + 48) + 16 * v27);
          if (*v28 == v8 && v28[1] == v24)
          {
            break;
          }

          v30 = sub_1C7551DBC();
          v25 = v27 + 1;
        }

        while ((v30 & 1) == 0);

        *(v41 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
        v10 = v43;
        v15 = v44 + 1;
        a2 = v39;
        v5 = v40;
        if (__OFADD__(v44, 1))
        {
          goto LABEL_28;
        }
      }
    }

    v18 = v16;
    while (1)
    {
      v16 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v16 >= v7)
      {
        sub_1C71FFA70(v41, v37, v15, v5, v11, v12, v13, v14, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45[0], v45[1], v45[2], v45[3], v45[4], v45[5], v45[6], v45[7], v45[8], v46, v47, v48);
        return v31;
      }

      v19 = *(v3 + 8 * v16);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v34 = swift_slowAlloc();
  v32 = sub_1C7219B70(v34, v7, v5, a2);

  MEMORY[0x1CCA5F8E0](v34, -1, -1);
  return v32;
}

void sub_1C721A2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a3 + 56;
  v5 = 1 << *(a3 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a3 + 56);
  swift_beginAccess();
  v8 = 0;
  v9 = 0;
  v10 = (v5 + 63) >> 6;
LABEL_5:
  while (v7)
  {
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_12:
    v14 = *a4;
    if (*(*a4 + 16))
    {
      v35 = v7;
      v49 = v8;
      v32 = v11 | (v9 << 6);
      v15 = (*(a3 + 48) + 16 * v32);
      v16 = *v15;
      v17 = v15[1];
      sub_1C7551F3C();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75505AC();
      v18 = sub_1C7551FAC();
      v19 = ~(-1 << *(v14 + 32));
      do
      {
        v20 = v18 & v19;
        if (((*(v14 + 56 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
        {

          v7 = v35;
          goto LABEL_5;
        }

        v21 = (*(v14 + 48) + 16 * v20);
        if (*v21 == v16 && v21[1] == v17)
        {
          break;
        }

        v23 = sub_1C7551DBC();
        v18 = v20 + 1;
      }

      while ((v23 & 1) == 0);

      *(a1 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
      ++v8;
      v7 = v35;
      if (__OFADD__(v49, 1))
      {
        goto LABEL_26;
      }
    }
  }

  v12 = v9;
  while (1)
  {
    v9 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v9 >= v10)
    {

      sub_1C71FFA70(a1, a2, v8, a3, v24, v25, v26, v27, v28, a2, v30, a1, v32, a3, a4, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);
      return;
    }

    v13 = *(v4 + 8 * v9);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v7 = (v13 - 1) & v13;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_1C721A624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = 0;
  v10 = a3 + 56;
  OUTLINED_FUNCTION_11();
  v13 = v12 & v11;
  v15 = (v14 + 63) >> 6;
  while (v13)
  {
    OUTLINED_FUNCTION_51_0();
LABEL_9:
    v27 = *(*(a3 + 48) + (v16 | (v9 << 6)));
    v20 = a4(&v27);
    if (v6)
    {
      return;
    }

    if (v20)
    {
      OUTLINED_FUNCTION_44_10();
      OUTLINED_FUNCTION_18_27(v21);
      if (__OFADD__(v26++, 1))
      {
        __break(1u);
LABEL_14:

        a6(a1, a2, v26, a3);
        return;
      }
    }
  }

  v17 = v9;
  while (1)
  {
    v9 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v9 >= v15)
    {
      goto LABEL_14;
    }

    ++v17;
    if (*(v10 + 8 * v9))
    {
      OUTLINED_FUNCTION_78_0();
      v13 = v19 & v18;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1C721A7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5, uint64_t (*a6)(void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v35 = a2;
  v36 = a7;
  v42 = a4;
  v37 = a1;
  v45 = a6(0);
  MEMORY[0x1EEE9AC00](v45);
  v43 = a3;
  v44 = &v35 - v9;
  v10 = 0;
  v11 = a3 + 56;
  OUTLINED_FUNCTION_11();
  v14 = v13 & v12;
  v16 = (v15 + 63) >> 6;
  v40 = v17 + 16;
  v41 = v17;
  v38 = 0;
  v39 = v17 + 8;
  while (v14)
  {
    OUTLINED_FUNCTION_49_16();
    v19 = v18 | (v10 << 6);
    v20 = v45;
    v21 = v44;
LABEL_9:
    (*(v41 + 16))(v21, *(v43 + 48) + *(v41 + 72) * v19, v20);
    v26 = v42(v21);
    if (v7)
    {
      v33 = OUTLINED_FUNCTION_47_18();
      v34(v33);
      return;
    }

    v27 = v26;
    v28 = OUTLINED_FUNCTION_47_18();
    v29(v28);
    if (v27)
    {
      OUTLINED_FUNCTION_44_10();
      OUTLINED_FUNCTION_18_27(v30);
      if (__OFADD__(v38++, 1))
      {
        __break(1u);
LABEL_14:
        v32 = v43;

        v36(v37, v35, v38, v32);
        return;
      }
    }
  }

  v22 = v10;
  v20 = v45;
  v21 = v44;
  while (1)
  {
    v10 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v10 >= v16)
    {
      goto LABEL_14;
    }

    ++v22;
    if (*(v11 + 8 * v10))
    {
      OUTLINED_FUNCTION_78_0();
      v14 = v24 & v23;
      v19 = v25 | (v10 << 6);
      goto LABEL_9;
    }
  }

  __break(1u);
}

unint64_t sub_1C721AA20()
{
  result = qword_1EDD06C90;
  if (!qword_1EDD06C90)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E67E8], MEMORY[0x1E69E67B0], v0, v1);
    atomic_store(result, &qword_1EDD06C90);
  }

  return result;
}

uint64_t sub_1C721AA74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219370, &qword_1C7577D88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C721AAE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219370, &qword_1C7577D88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C721AB4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeExtendedToken(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C721ABB0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C721AC04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeExtendedToken(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for FreeformStoryAssetElector.CandidateAsset.Type(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C721AD84(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C721AEA8()
{
  result = qword_1EC219388;
  if (!qword_1EC219388)
  {
    result = swift_getWitnessTable(byte_1C7577EC8, &type metadata for FreeformStoryAssetElector.CandidateAsset.Type, v0, v1);
    atomic_store(result, &qword_1EC219388);
  }

  return result;
}

unint64_t sub_1C721AF00()
{
  result = qword_1EDD09460;
  if (!qword_1EDD09460)
  {
    result = swift_getWitnessTable(byte_1C7577E60, &type metadata for FreeformStoryAssetElector.FeatureType, v0, v1);
    atomic_store(result, &qword_1EDD09460);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_21_35(uint64_t a1, uint64_t a2)
{

  return sub_1C7551DBC();
}

uint64_t OUTLINED_FUNCTION_32_21(uint64_t a1, uint64_t a2)
{

  return sub_1C7551DBC();
}

uint64_t OUTLINED_FUNCTION_40_23(uint64_t a1, uint64_t a2)
{

  return sub_1C7551DBC();
}

uint64_t OUTLINED_FUNCTION_64_11(uint64_t a1)
{

  return sub_1C75505AC();
}

uint64_t PromptSuggestion.Source.description.getter()
{
  result = 1701736270;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_79_0();
      break;
    case 2:
      result = OUTLINED_FUNCTION_48_18();
      break;
    case 3:
      result = OUTLINED_FUNCTION_32_22();
      break;
    case 4:
      result = OUTLINED_FUNCTION_47_2();
      break;
    default:
      return result;
  }

  return result;
}

BOOL PromptSuggestion.usedLocationData.getter()
{
  if (sub_1C705FC40(*(v0 + 72), &unk_1F46A7D20))
  {
    return 1;
  }

  v2 = *(v0 + 80);

  return sub_1C705D108(v2, &unk_1F46A7D48);
}

uint64_t static PromptSuggestion.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1];
  if (v4 == *a2 && v5 == v6)
  {
    return OUTLINED_FUNCTION_10_6();
  }

  else
  {
    return OUTLINED_FUNCTION_313(v4, v5, *a2, v6);
  }
}

void PromptSuggestionContext.shortDescription.getter()
{
  OUTLINED_FUNCTION_33();
  v1 = type metadata accessor for PromptSuggestion(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  OUTLINED_FUNCTION_14_0();
  v9 = v8 - v7;
  v10 = *(v0 + 16);
  v11 = *(v10 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v11, 0, v3, v4, v5, v6);
    v12 = v27;
    v13 = v10 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v14 = *(v2 + 72);
    do
    {
      sub_1C71592A8(v13, v9);
      v16 = *(v9 + 104);
      v15 = *(v9 + 112);
      sub_1C75504FC();
      sub_1C715930C(v9);
      v22 = *(v27 + 16);
      v21 = *(v27 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1C6F7ED9C(v21 > 1, v22 + 1, 1, v17, v18, v19, v20);
      }

      *(v27 + 16) = v22 + 1;
      v23 = v27 + 16 * v22;
      *(v23 + 32) = v16;
      *(v23 + 40) = v15;
      v13 += v14;
      --v11;
    }

    while (v11);
  }

  v24 = MEMORY[0x1CCA5D090](v12, MEMORY[0x1E69E6158]);
  v26 = v25;

  MEMORY[0x1CCA5CD70](v24, v26);

  OUTLINED_FUNCTION_25_0();
}

uint64_t static PromptSuggestionContext.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1];
  if (v4 == *a2 && v5 == v6)
  {
    return OUTLINED_FUNCTION_10_6();
  }

  else
  {
    return OUTLINED_FUNCTION_313(v4, v5, *a2, v6);
  }
}

void sub_1C721B350()
{
  OUTLINED_FUNCTION_48_2();
  v4 = 0;
  v5 = *v0;
  v6 = MEMORY[0x1E69E7CC0];
  do
  {
    v7 = *(&unk_1F469D500 + v4 + 32);
    if ((v7 & ~v5) != 0)
    {
      goto LABEL_39;
    }

    if ((v7 & ~v5) == 0 || !v3)
    {
      v2 = 0xE400000000000000;
      v1 = 1701736302;
      switch(v7)
      {
        case 0:
          goto LABEL_34;
        case 1:
          v2 = 0xEA0000000000656DLL;
          v1 = 0x614E6E6F73726570;
          goto LABEL_34;
        case 2:
          v1 = 0xD000000000000012;
          v2 = 0x80000001C75A5050;
          goto LABEL_34;
        case 3:
        case 5:
        case 6:
        case 7:
          goto LABEL_19;
        case 4:
          v2 = 0xE500000000000000;
          v1 = 0x6563616C70;
          goto LABEL_34;
        case 8:
          v1 = 2037672291;
          goto LABEL_34;
        default:
          JUMPOUT(0);
      }
    }

    switch(v7)
    {
      case 0x10:
        v1 = 0x6F6F4D636973756DLL;
        goto LABEL_24;
      case 0x20:
        OUTLINED_FUNCTION_64_12();
        v2 = v2 & 0xFFFF0000FFFFLL | 0xEB00000000740000;
        goto LABEL_34;
      case 0x40:
        v2 = 0xE900000000000067;
        v1 = 0x6E6F53636973756DLL;
        goto LABEL_34;
      case 0x80:
        OUTLINED_FUNCTION_64_12();
        v2 = v2 | 0xEF676E6F53740000;
        goto LABEL_34;
      case 0x100:
        v2 = 0xE500000000000000;
        v1 = 0x7469617274;
        goto LABEL_34;
      case 0x200:
        v2 = 0xE600000000000000;
        v1 = 0x796C696D6166;
        goto LABEL_34;
      case 0x400:
        v2 = 0xE700000000000000;
        v1 = 0x73646E65697266;
        goto LABEL_34;
      case 0x800:
        v2 = 0xE400000000000000;
        v1 = 1935960427;
        goto LABEL_34;
      case 0x1000:
        v2 = 0xE900000000000065;
        v1 = 0x756761656C6C6F63;
        goto LABEL_34;
      case 0x2000:
        v2 = 0xE300000000000000;
        v1 = 7628144;
        goto LABEL_34;
    }

    if (v7 != 0x4000)
    {
LABEL_19:
      v1 = 0x656E696665646E75;
LABEL_24:
      v2 = 0xE900000000000064;
      goto LABEL_34;
    }

    v2 = 0xE400000000000000;
    v1 = 1701669236;
LABEL_34:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB1814();
      v6 = v10;
    }

    v8 = *(v6 + 16);
    if (v8 >= *(v6 + 24) >> 1)
    {
      sub_1C6FB1814();
      v6 = v11;
    }

    *(v6 + 16) = v8 + 1;
    v9 = v6 + 16 * v8;
    *(v9 + 32) = v1;
    *(v9 + 40) = v2;
LABEL_39:
    v4 += 8;
    v3 = v4 >= 0x78;
  }

  while (v4 != 120);
  if (*(v6 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    OUTLINED_FUNCTION_15_46(&qword_1EDD0CF58);
    sub_1C75505FC();
  }

  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_52_1();
}

PhotosIntelligence::PromptSuggestionContext __swiftcall PromptSuggestionContext.init(id:prompts:)(Swift::String id, Swift::OpaquePointer prompts)
{
  *v2 = id;
  *(v2 + 16) = prompts;
  result.id = id;
  result.prompts = prompts;
  return result;
}

uint64_t sub_1C721B6C0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7374706D6F7270 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C7551DBC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C721B780(char a1)
{
  if (a1)
  {
    return 0x7374706D6F7270;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1C721B7B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C721B6C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C721B7DC(uint64_t a1)
{
  v2 = sub_1C722433C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C721B818(uint64_t a1)
{
  v2 = sub_1C722433C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PromptSuggestionContext.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2193C8, &unk_1C7577F60);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_61_1();
  OUTLINED_FUNCTION_70(v2, v2[3]);
  sub_1C722433C();
  OUTLINED_FUNCTION_245();
  sub_1C755200C();
  OUTLINED_FUNCTION_98_1();
  OUTLINED_FUNCTION_97();
  sub_1C7551CCC();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217988, &unk_1C756CAE0);
    sub_1C7224390(&unk_1EDD06B90);
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
  }

  v5 = OUTLINED_FUNCTION_7_18();
  v6(v5, v3);
  OUTLINED_FUNCTION_125();
}

void PromptSuggestionContext.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_124();
  v25 = v24;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2193D8, &qword_1C7577F70);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_389();
  OUTLINED_FUNCTION_70(v25, v25[3]);
  v29 = sub_1C722433C();
  OUTLINED_FUNCTION_73_12(&type metadata for PromptSuggestionContext.CodingKeys, v30, v29);
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    v31 = sub_1C7551BBC();
    v33 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217988, &unk_1C756CAE0);
    sub_1C7224390(&unk_1EDD0D030);
    sub_1C7551C1C();
    v34 = OUTLINED_FUNCTION_282();
    v35(v34);
    *v27 = v31;
    v27[1] = v33;
    v27[2] = v36;
    sub_1C75504FC();
    sub_1C75504FC();
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  OUTLINED_FUNCTION_347();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C721BC30@<X0>(uint64_t *a1@<X8>)
{
  result = PromptSuggestionContext.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void __swiftcall TemplatedPromptMetadata.init(associatedContactName:associatedPlaceName:associatedCityName:associatedTimeReferenceString:)(PhotosIntelligence::TemplatedPromptMetadata *__return_ptr retstr, Swift::String_optional associatedContactName, Swift::String_optional associatedPlaceName, Swift::String_optional associatedCityName, Swift::String_optional associatedTimeReferenceString)
{
  retstr->associatedContactName = associatedContactName;
  retstr->associatedPlaceName = associatedPlaceName;
  retstr->associatedCityName = associatedCityName;
  retstr->associatedTimeReferenceString = associatedTimeReferenceString;
}

void TemplatedPromptMetadata.description.getter()
{
  OUTLINED_FUNCTION_48_2();
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_1C75504FC();
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD000000000000033, 0x80000001C75A4D50);
  if (v1)
  {
    v7 = v2;
  }

  else
  {
    v7 = 7104878;
  }

  if (!v1)
  {
    v1 = 0xE300000000000000;
  }

  MEMORY[0x1CCA5CD70](v7, v1);

  v8 = OUTLINED_FUNCTION_36_15();
  MEMORY[0x1CCA5CD70](v8 | 0x616C702000000000, 0xEF3A656D614E6563);
  if (v3)
  {
    v9 = v4;
  }

  else
  {
    v9 = 7104878;
  }

  if (v3)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](v9, v10);

  v11 = OUTLINED_FUNCTION_36_15();
  MEMORY[0x1CCA5CD70](v11 | 0x7469632000000000, 0xEF203A656D614E79);
  if (v5)
  {
    v12 = v6;
  }

  else
  {
    v12 = 7104878;
  }

  if (v5)
  {
    v13 = v5;
  }

  else
  {
    v13 = 0xE300000000000000;
  }

  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](v12, v13);

  MEMORY[0x1CCA5CD70](0xD00000000000001ALL, 0x80000001C75A4D90);
  sub_1C75504FC();
  v14 = OUTLINED_FUNCTION_64();
  MEMORY[0x1CCA5CD70](v14);

  OUTLINED_FUNCTION_52_1();
}

void static TemplatedPromptMetadata.== infix(_:_:)()
{
  OUTLINED_FUNCTION_48_2();
  v2 = v1;
  v3 = v0[1];
  v4 = v0[2];
  v6 = v0[3];
  v5 = v0[4];
  v8 = v0[5];
  v7 = v0[6];
  v9 = v0[7];
  v10 = v2[1];
  v11 = v2[2];
  v13 = v2[3];
  v12 = v2[4];
  v15 = v2[5];
  v14 = v2[6];
  v16 = v2[7];
  if (v3)
  {
    if (!v10)
    {
      goto LABEL_35;
    }

    if (*v0 != *v2 || v3 != v10)
    {
      v33 = v0[5];
      v34 = v2[5];
      v18 = v0[4];
      v19 = v2[6];
      v20 = v2[7];
      v21 = v0[7];
      v22 = v0[6];
      v23 = v2[4];
      v24 = sub_1C7551DBC();
      v12 = v23;
      v7 = v22;
      v9 = v21;
      v16 = v20;
      v14 = v19;
      v5 = v18;
      v8 = v33;
      v15 = v34;
      if ((v24 & 1) == 0)
      {
        goto LABEL_35;
      }
    }
  }

  else if (v10)
  {
    goto LABEL_35;
  }

  if (v6)
  {
    if (!v13)
    {
      goto LABEL_35;
    }

    if (v4 != v11 || v6 != v13)
    {
      v26 = v7;
      v27 = v12;
      v28 = sub_1C7551DBC();
      v12 = v27;
      v7 = v26;
      if ((v28 & 1) == 0)
      {
        goto LABEL_35;
      }
    }
  }

  else if (v13)
  {
    goto LABEL_35;
  }

  if (v8)
  {
    if (!v15)
    {
      goto LABEL_35;
    }

    if (v5 != v12 || v8 != v15)
    {
      v30 = v7;
      v31 = sub_1C7551DBC();
      v7 = v30;
      if ((v31 & 1) == 0)
      {
        goto LABEL_35;
      }
    }
  }

  else if (v15)
  {
    goto LABEL_35;
  }

  if (v9 && v16 && (v7 != v14 || v9 != v16))
  {
    sub_1C7551DBC();
  }

LABEL_35:
  OUTLINED_FUNCTION_52_1();
}

uint64_t sub_1C721C03C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000015 && 0x80000001C75A4F90 == a2;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x80000001C75A4FB0 == a2;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x80000001C75A4FD0 == a2;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD00000000000001DLL && 0x80000001C75A4FF0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C7551DBC();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1C721C198(char a1)
{
  result = 0xD000000000000015;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C721C224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C721C03C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C721C24C(uint64_t a1)
{
  v2 = sub_1C7224458();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C721C288(uint64_t a1)
{
  v2 = sub_1C7224458();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TemplatedPromptMetadata.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_124();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2193E0, &qword_1C7577F78);
  OUTLINED_FUNCTION_3_0();
  v27 = v26;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_61_1();
  v29 = OUTLINED_FUNCTION_282();
  OUTLINED_FUNCTION_70(v29, v30);
  sub_1C7224458();
  OUTLINED_FUNCTION_245();
  sub_1C755200C();
  sub_1C7551C7C();
  if (!v23)
  {
    OUTLINED_FUNCTION_97();
    sub_1C7551C7C();
    OUTLINED_FUNCTION_97();
    sub_1C7551C7C();
    OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_97();
    sub_1C7551C7C();
  }

  (*(v27 + 8))(v24, v25);
  OUTLINED_FUNCTION_125();
}

void TemplatedPromptMetadata.hash(into:)()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[3];
  v2 = v0[5];
  v3 = v0[7];
  if (v0[1])
  {
    sub_1C7551F5C();
    sub_1C75505AC();
    if (v1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1C7551F5C();
    if (v1)
    {
LABEL_3:
      sub_1C7551F5C();
      sub_1C75505AC();
      if (v2)
      {
        goto LABEL_4;
      }

LABEL_10:
      sub_1C7551F5C();
      if (v3)
      {
        goto LABEL_5;
      }

LABEL_11:
      sub_1C7551F5C();
      OUTLINED_FUNCTION_25_0();
      return;
    }
  }

  sub_1C7551F5C();
  if (!v2)
  {
    goto LABEL_10;
  }

LABEL_4:
  sub_1C7551F5C();
  sub_1C75505AC();
  if (!v3)
  {
    goto LABEL_11;
  }

LABEL_5:
  sub_1C7551F5C();
  OUTLINED_FUNCTION_25_0();

  sub_1C75505AC();
}

uint64_t TemplatedPromptMetadata.hashValue.getter()
{
  OUTLINED_FUNCTION_106();
  TemplatedPromptMetadata.hash(into:)();
  return sub_1C7551FAC();
}

void TemplatedPromptMetadata.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_124();
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2193F0, &qword_1C7577F80);
  OUTLINED_FUNCTION_3_0();
  v30 = v29;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v47 - v32;
  OUTLINED_FUNCTION_70(v25, v25[3]);
  sub_1C7224458();
  sub_1C7551FFC();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    LOBYTE(v56[0]) = 0;
    OUTLINED_FUNCTION_62_3();
    v34 = sub_1C7551B6C();
    v51 = v35;
    LOBYTE(v56[0]) = 1;
    OUTLINED_FUNCTION_62_3();
    v36 = sub_1C7551B6C();
    v50 = v37;
    v48 = v36;
    LOBYTE(v56[0]) = 2;
    OUTLINED_FUNCTION_62_3();
    v47 = sub_1C7551B6C();
    v49 = v38;
    v39 = sub_1C7551B6C();
    v41 = v40;
    (*(v30 + 8))(v33, v28);
    v42 = v51;
    *&v52 = v34;
    *(&v52 + 1) = v51;
    v44 = v48;
    v43 = v49;
    *&v53 = v48;
    *(&v53 + 1) = v50;
    *&v54 = v47;
    *(&v54 + 1) = v49;
    *&v55 = v39;
    *(&v55 + 1) = v41;
    v45 = v53;
    *v27 = v52;
    v27[1] = v45;
    v46 = v55;
    v27[2] = v54;
    v27[3] = v46;
    sub_1C72244AC(&v52, v56);
    __swift_destroy_boxed_opaque_existential_1(v25);
    v56[0] = v34;
    v56[1] = v42;
    v56[2] = v44;
    v56[3] = v50;
    v56[4] = v47;
    v56[5] = v43;
    v56[6] = v39;
    v56[7] = v41;
    sub_1C72244E4(v56);
  }

  OUTLINED_FUNCTION_347();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C721C844(uint64_t a1)
{
  sub_1C7551F3C();
  TemplatedPromptMetadata.hash(into:)();
  return sub_1C7551FAC();
}

uint64_t sub_1C721C8B8()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC219390);
  v1 = OUTLINED_FUNCTION_90();
  __swift_project_value_buffer(v1, v2);
  return sub_1C754FEFC();
}

uint64_t static PromptSuggestion.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC213EE0 != -1)
  {
    OUTLINED_FUNCTION_19_39(&qword_1EC213EE0);
  }

  v2 = sub_1C754FF1C();
  v3 = __swift_project_value_buffer(v2, qword_1EC219390);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t PromptSuggestion.EngagementState.prettyPrint.getter()
{
  result = 0x6C616974696E49;
  switch(*v0)
  {
    case 1:
      result = 0x65746E6573657250;
      break;
    case 2:
      result = 0x6C65532072657355;
      break;
    case 3:
      result = 0x432079726F6D654DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C721CA80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616974696E69 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65746E6573657270 && a2 == 0xE900000000000064;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656C655372657375 && a2 == 0xEC00000064657463;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x724379726F6D656DLL && a2 == 0xED00006465746165)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C7551DBC();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1C721CBEC(char a1)
{
  result = 0x6C616974696E69;
  switch(a1)
  {
    case 1:
      result = 0x65746E6573657270;
      break;
    case 2:
      result = 0x656C655372657375;
      break;
    case 3:
      result = 0x724379726F6D656DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C721CC90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C721CA80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C721CCB8(uint64_t a1)
{
  v2 = sub_1C7224514();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C721CCF4(uint64_t a1)
{
  v2 = sub_1C7224514();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C721CD30(uint64_t a1)
{
  v2 = sub_1C7224664();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C721CD6C(uint64_t a1)
{
  v2 = sub_1C7224664();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C721CDA8(uint64_t a1)
{
  v2 = sub_1C7224568();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C721CDE4(uint64_t a1)
{
  v2 = sub_1C7224568();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C721CE20(uint64_t a1)
{
  v2 = sub_1C7224610();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C721CE5C(uint64_t a1)
{
  v2 = sub_1C7224610();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C721CE98(uint64_t a1)
{
  v2 = sub_1C72245BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C721CED4(uint64_t a1)
{
  v2 = sub_1C72245BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PromptSuggestion.EngagementState.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2193F8, &qword_1C7577F88);
  OUTLINED_FUNCTION_3_0();
  v37 = v6;
  v38 = v5;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_36();
  v36 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219400, &qword_1C7577F90);
  OUTLINED_FUNCTION_3_0();
  v34 = v10;
  v35 = v9;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_36();
  v33 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219408, &qword_1C7577F98);
  OUTLINED_FUNCTION_3_0();
  v31 = v14;
  v32 = v13;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_36();
  v30 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219410, &qword_1C7577FA0);
  OUTLINED_FUNCTION_3_0();
  v28 = v18;
  v29 = v17;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_14_6();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219418, &qword_1C7577FA8);
  OUTLINED_FUNCTION_3_0();
  v22 = v21;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_158();
  v24 = *v0;
  OUTLINED_FUNCTION_70(v4, v4[3]);
  sub_1C7224514();
  sub_1C755200C();
  switch(v24)
  {
    case 1:
      sub_1C7224610();
      v25 = v30;
      OUTLINED_FUNCTION_28_22();
      sub_1C7551C6C();
      v27 = v31;
      v26 = v32;
      goto LABEL_6;
    case 2:
      sub_1C72245BC();
      v25 = v33;
      OUTLINED_FUNCTION_28_22();
      sub_1C7551C6C();
      v27 = v34;
      v26 = v35;
      goto LABEL_6;
    case 3:
      sub_1C7224568();
      v25 = v36;
      OUTLINED_FUNCTION_28_22();
      sub_1C7551C6C();
      v27 = v37;
      v26 = v38;
LABEL_6:
      (*(v27 + 8))(v25, v26);
      break;
    default:
      sub_1C7224664();
      OUTLINED_FUNCTION_28_22();
      sub_1C7551C6C();
      (*(v28 + 8))(v1, v29);
      break;
  }

  (*(v22 + 8))(v2, v20);
  OUTLINED_FUNCTION_125();
}

void PromptSuggestion.EngagementState.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_124();
  a23 = v26;
  a24 = v27;
  v29 = v28;
  v58 = v30;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219438, &qword_1C7577FB0);
  OUTLINED_FUNCTION_3_0();
  v57 = v31;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_36();
  v60 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219440, &qword_1C7577FB8);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219448, &qword_1C7577FC0);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_389();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219450, &qword_1C7577FC8);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_14_6();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219458, &unk_1C7577FD0);
  OUTLINED_FUNCTION_3_0();
  v59 = v39;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_61_1();
  OUTLINED_FUNCTION_70(v29, v29[3]);
  sub_1C7224514();
  OUTLINED_FUNCTION_245();
  sub_1C7551FFC();
  if (v24)
  {
    goto LABEL_8;
  }

  v62 = v29;
  v41 = v25;
  sub_1C7551C5C();
  sub_1C6FD80E0();
  if (v43 == v44 >> 1)
  {
LABEL_7:
    v53 = sub_1C75518EC();
    swift_allocError();
    v55 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215490, &qword_1C7560600);
    *v55 = &type metadata for PromptSuggestion.EngagementState;
    v56 = sub_1C7551B5C();
    OUTLINED_FUNCTION_588(v56);
    (*(*(v53 - 8) + 104))(v55, *MEMORY[0x1E69E6AF8], v53);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v59 + 8))(v41, v38);
    v29 = v62;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v29);
LABEL_9:
    OUTLINED_FUNCTION_125();
    return;
  }

  if (v43 < (v44 >> 1))
  {
    v45 = *(v42 + v43);
    sub_1C6FD80C8();
    v47 = v46;
    v49 = v48;
    swift_unknownObjectRelease();
    if (v47 == v49 >> 1)
    {
      switch(v45)
      {
        case 1:
          a12 = 1;
          sub_1C7224610();
          OUTLINED_FUNCTION_53_0(&type metadata for PromptSuggestion.EngagementState.PresentedCodingKeys, &a12);
          swift_unknownObjectRelease();
          goto LABEL_13;
        case 2:
          a13 = 2;
          sub_1C72245BC();
          OUTLINED_FUNCTION_53_0(&type metadata for PromptSuggestion.EngagementState.UserSelectedCodingKeys, &a13);
          swift_unknownObjectRelease();
LABEL_13:
          v50 = OUTLINED_FUNCTION_7_18();
          goto LABEL_14;
        case 3:
          a14 = 3;
          sub_1C7224568();
          sub_1C7551B4C();
          swift_unknownObjectRelease();
          (*(v57 + 8))(v60, v61);
          goto LABEL_15;
        default:
          a11 = 0;
          sub_1C7224664();
          OUTLINED_FUNCTION_53_0(&type metadata for PromptSuggestion.EngagementState.InitialCodingKeys, &a11);
          swift_unknownObjectRelease();
          v50 = OUTLINED_FUNCTION_7_18();
          v52 = v36;
LABEL_14:
          v51(v50, v52);
LABEL_15:
          (*(v59 + 8))(v41, v38);
          *v58 = v45;
          __swift_destroy_boxed_opaque_existential_1(v62);
          break;
      }

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

void PromptSuggestion.Composition.sources.getter()
{
  v1 = &unk_1F46A8BF0;
  switch(*v0)
  {
    case 1:
      sub_1C707F3EC(&unk_1F46A8DD0);
      break;
    case 2:
      sub_1C707F3EC(&unk_1F46A8DF8);
      break;
    case 3:
      sub_1C707F3EC(&unk_1F46A8E20);
      break;
    case 4:
      goto LABEL_3;
    case 5:
      sub_1C707F3EC(&unk_1F46A8C18);
      break;
    case 6:
      sub_1C707F3EC(&unk_1F46A8C68);
      break;
    case 7:
      sub_1C707F3EC(&unk_1F46A8C90);
      break;
    case 8:
      sub_1C707F3EC(&unk_1F46A8CB8);
      break;
    case 9:
      sub_1C707F3EC(&unk_1F46A8CE0);
      break;
    case 0xA:
      sub_1C707F3EC(&unk_1F46A8D08);
      break;
    case 0xB:
      sub_1C707F3EC(&unk_1F46A8D30);
      break;
    case 0xC:
      sub_1C707F3EC(&unk_1F46A8C40);
      break;
    case 0xD:
      sub_1C707F3EC(&unk_1F46A8D58);
      break;
    case 0xE:
      v1 = &unk_1F46A8D80;
LABEL_3:
      sub_1C707F3EC(v1);
      break;
    case 0xF:
      sub_1C707F3EC(&unk_1F46A8DA8);
      break;
    default:
      return;
  }
}

void static PromptSuggestion.Composition.compositionFromSources(sources:)(_BYTE *a2@<X8>)
{
  v2 = 0;
  while (v2 != 16)
  {
    v3 = byte_1F46A8E48[v2 + 32];
    v4 = &unk_1F46A8BF0;
    switch(v3)
    {
      case 1:
        v4 = &unk_1F46A8DD0;
        goto LABEL_18;
      case 2:
        v4 = &unk_1F46A8DF8;
        goto LABEL_18;
      case 3:
        v4 = &unk_1F46A8E20;
        goto LABEL_18;
      case 4:
        goto LABEL_18;
      case 5:
        v4 = &unk_1F46A8C18;
        goto LABEL_18;
      case 6:
        v4 = &unk_1F46A8C68;
        goto LABEL_18;
      case 7:
        v4 = &unk_1F46A8C90;
        goto LABEL_18;
      case 8:
        v4 = &unk_1F46A8CB8;
        goto LABEL_18;
      case 9:
        v4 = &unk_1F46A8CE0;
        goto LABEL_18;
      case 10:
        v4 = &unk_1F46A8D08;
        goto LABEL_18;
      case 11:
        v4 = &unk_1F46A8D30;
        goto LABEL_18;
      case 12:
        v4 = &unk_1F46A8C40;
        goto LABEL_18;
      case 13:
        v4 = &unk_1F46A8D58;
        goto LABEL_18;
      case 14:
        v4 = &unk_1F46A8D80;
        goto LABEL_18;
      case 15:
        v4 = &unk_1F46A8DA8;
LABEL_18:
        sub_1C707F3EC(v4);
        break;
      default:
        break;
    }

    OUTLINED_FUNCTION_294();
    v5 = sub_1C7043F5C();

    ++v2;
    if (v5)
    {
      goto LABEL_22;
    }
  }

  v3 = 0;
LABEL_22:
  if (qword_1EC213EE0 != -1)
  {
    OUTLINED_FUNCTION_19_39(&qword_1EC213EE0);
  }

  v6 = sub_1C754FF1C();
  __swift_project_value_buffer(v6, qword_1EC219390);
  sub_1C75504FC();
  v7 = sub_1C754FEEC();
  v8 = sub_1C75511BC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v9 = 136315394;
    sub_1C708039C();
    v10 = sub_1C7550F9C();
    v12 = sub_1C6F765A4(v10, v11, &v17);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    v13 = sub_1C75506EC();
    v15 = sub_1C6F765A4(v13, v14, &v17);

    *(v9 + 14) = v15;
    _os_log_impl(&dword_1C6F5C000, v7, v8, "PromptSuggestion compositionFromSources %s -> %s", v9, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  *a2 = v3;
}

PhotosIntelligence::PromptSuggestion::Composition_optional __swiftcall PromptSuggestion.Composition.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 16;
  if (rawValue < 0x10)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t PromptSuggestion.FetchContext.composition.getter()
{
  v2 = OUTLINED_FUNCTION_422();
  result = type metadata accessor for PromptSuggestion.FetchContext(v2);
  *v0 = *(v1 + *(result + 24));
  return result;
}

uint64_t static PromptSuggestion.FetchContext.mockContext.getter()
{
  OUTLINED_FUNCTION_422();
  v1 = sub_1C754DF6C();
  __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
  result = OUTLINED_FUNCTION_97_7();
  *(v0 + v3) = 0;
  *(v0 + *(result + 24)) = 0;
  v4 = v0 + *(result + 28);
  *v4 = 0;
  *(v4 + 8) = 1;
  return result;
}

uint64_t PromptSuggestion.FetchContext.init(updateDate:totalSuggestionCount:composition:processingCode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v10 = *a3;
  sub_1C6FF51C8(a1, a6);
  result = OUTLINED_FUNCTION_97_7();
  *(a6 + v12) = a2;
  *(a6 + *(result + 24)) = v10;
  v13 = a6 + *(result + 28);
  *v13 = a4;
  *(v13 + 8) = a5 & 1;
  return result;
}

void static PromptSuggestion.FetchContext.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_14_0();
  v33 = v32 - v31;
  v34 = OUTLINED_FUNCTION_98_1();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v34, v35);
  OUTLINED_FUNCTION_76(v36);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_14_6();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217B98, &qword_1C756DB50);
  OUTLINED_FUNCTION_76(v38);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &a9 - v40;
  v43 = *(v42 + 56);
  sub_1C712A774(v26, &a9 - v40, &unk_1EC219230, &unk_1C7563720);
  sub_1C712A774(v24, &v41[v43], &unk_1EC219230, &unk_1C7563720);
  OUTLINED_FUNCTION_601(v41);
  if (v44)
  {
    OUTLINED_FUNCTION_601(&v41[v43]);
    if (v44)
    {
      sub_1C6FD7FC8(v41, &unk_1EC219230, &unk_1C7563720);
LABEL_11:
      OUTLINED_FUNCTION_97_7();
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  sub_1C712A774(v41, v20, &unk_1EC219230, &unk_1C7563720);
  OUTLINED_FUNCTION_601(&v41[v43]);
  if (v44)
  {
    (*(v29 + 8))(v20, v27);
LABEL_9:
    sub_1C6FD7FC8(v41, &qword_1EC217B98, &qword_1C756DB50);
    goto LABEL_12;
  }

  (*(v29 + 32))(v33, &v41[v43], v27);
  OUTLINED_FUNCTION_4_57();
  sub_1C7224414(v45);
  v46 = sub_1C755063C();
  v47 = *(v29 + 8);
  v48 = OUTLINED_FUNCTION_294();
  v47(v48);
  (v47)(v20, v27);
  sub_1C6FD7FC8(v41, &unk_1EC219230, &unk_1C7563720);
  if (v46)
  {
    goto LABEL_11;
  }

LABEL_12:
  OUTLINED_FUNCTION_25_0();
}

uint64_t PromptSuggestion.FetchContext.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_0();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  OUTLINED_FUNCTION_76(v10);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  OUTLINED_FUNCTION_84_8();
  sub_1C712A774(v14, v15, v16, v17);
  if (__swift_getEnumTagSinglePayload(v13, 1, v3) == 1)
  {
    sub_1C7551F5C();
  }

  else
  {
    (*(v5 + 32))(v9, v13, v3);
    sub_1C7551F5C();
    OUTLINED_FUNCTION_4_57();
    sub_1C7224414(v18);
    sub_1C755059C();
    (*(v5 + 8))(v9, v3);
  }

  Context = type metadata accessor for PromptSuggestion.FetchContext(0);
  MEMORY[0x1CCA5E460](*(v2 + Context[5]));
  MEMORY[0x1CCA5E460](*(v2 + Context[6]));
  v20 = (v2 + Context[7]);
  if (*(v20 + 8) == 1)
  {
    return sub_1C7551F5C();
  }

  v22 = *v20;
  sub_1C7551F5C();
  return MEMORY[0x1CCA5E460](v22);
}

uint64_t PromptSuggestion.FetchContext.hashValue.getter()
{
  OUTLINED_FUNCTION_106();
  PromptSuggestion.FetchContext.hash(into:)(v1);
  return sub_1C7551FAC();
}

uint64_t sub_1C721E418(uint64_t a1)
{
  sub_1C7551F3C();
  PromptSuggestion.FetchContext.hash(into:)(v2);
  return sub_1C7551FAC();
}

uint64_t PromptSuggestion.Source.suggestionSubtype.getter()
{
  v1 = *v0;
  switch(v1)
  {
    case 1:
      v2 = 0;
      v3 = 1401;
      break;
    case 4:
      v2 = 0;
      v3 = 1403;
      break;
    case 3:
      v2 = 0;
      v3 = 1402;
      break;
    default:
      if (qword_1EC213EE0 != -1)
      {
        OUTLINED_FUNCTION_19_39(&qword_1EC213EE0);
      }

      v4 = sub_1C754FF1C();
      __swift_project_value_buffer(v4, qword_1EC219390);
      v5 = sub_1C754FEEC();
      v6 = sub_1C755119C();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v13 = v8;
        *v7 = 136315138;
        if (v1)
        {
          v9 = 0x686372616553;
        }

        else
        {
          v9 = 1701736270;
        }

        if (v1)
        {
          v10 = 0xE600000000000000;
        }

        else
        {
          v10 = 0xE400000000000000;
        }

        v11 = sub_1C6F765A4(v9, v10, &v13);

        *(v7 + 4) = v11;
        _os_log_impl(&dword_1C6F5C000, v5, v6, "Template source %s does not have a PHSuggestionSubtype", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v8);
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();
      }

      v3 = 0;
      v2 = 1;
      break;
  }

  return v3 | (v2 << 16);
}

uint64_t PromptSuggestion.Source.userFacingDescription.getter()
{
  result = 1701736270;
  switch(*v0)
  {
    case 1:
      result = 0x746E656D6F4DLL;
      break;
    case 2:
      result = OUTLINED_FUNCTION_48_18();
      break;
    case 3:
      result = OUTLINED_FUNCTION_32_22();
      break;
    case 4:
      result = OUTLINED_FUNCTION_47_2();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t static PromptSuggestion.Source.fromDescription(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = result == 1701736270 && a2 == 0xE400000000000000;
  if (v4 || (v6 = result, result = OUTLINED_FUNCTION_42_0(1701736270, 0xE400000000000000), (result & 1) != 0))
  {
    v7 = 0;
  }

  else
  {
    result = OUTLINED_FUNCTION_79_0();
    v8 = v6 == result && a2 == 0xE600000000000000;
    if (v8 || (result = OUTLINED_FUNCTION_42_0(result, 0xE600000000000000), (result & 1) != 0))
    {
      v7 = 1;
    }

    else
    {
      result = OUTLINED_FUNCTION_81();
      v9 = v6 == result && a2 == 0xE600000000000000;
      if (v9 || (result = OUTLINED_FUNCTION_42_0(result, 0xE600000000000000), (result & 1) != 0))
      {
        v7 = 2;
      }

      else
      {
        result = OUTLINED_FUNCTION_46();
        v11 = v6 == result && a2 == v10;
        if (v11 || (result = OUTLINED_FUNCTION_42_0(result, 0xE90000000000006CLL), (result & 1) != 0))
        {
          v7 = 3;
        }

        else
        {
          result = OUTLINED_FUNCTION_47_2();
          v7 = 4;
          if (v6 != result || a2 != v12)
          {
            result = OUTLINED_FUNCTION_42_0(result, 0xEA00000000006C61);
            if (result)
            {
              v7 = 4;
            }

            else
            {
              v7 = 0;
            }
          }
        }
      }
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1C721E790(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x636961736F6DLL && a2 == 0xE600000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x686372616573 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x616369736D696877 && a2 == 0xE90000000000006CLL;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x75747865746E6F63 && a2 == 0xEA00000000006C61)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C7551DBC();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1C721E940(char a1)
{
  result = 1701736302;
  switch(a1)
  {
    case 1:
      result = 0x636961736F6DLL;
      break;
    case 2:
      result = 0x686372616573;
      break;
    case 3:
      result = 0x616369736D696877;
      break;
    case 4:
      result = 0x75747865746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C721E9DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C721E790(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C721EA04(uint64_t a1)
{
  v2 = sub_1C72246B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C721EA40(uint64_t a1)
{
  v2 = sub_1C72246B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C721EA7C(uint64_t a1)
{
  v2 = sub_1C722470C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C721EAB8(uint64_t a1)
{
  v2 = sub_1C722470C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C721EAF4(uint64_t a1)
{
  v2 = sub_1C7224808();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C721EB30(uint64_t a1)
{
  v2 = sub_1C7224808();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C721EB6C(uint64_t a1)
{
  v2 = sub_1C722485C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C721EBA8(uint64_t a1)
{
  v2 = sub_1C722485C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C721EBE4(uint64_t a1)
{
  v2 = sub_1C72247B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C721EC20(uint64_t a1)
{
  v2 = sub_1C72247B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C721EC5C(uint64_t a1)
{
  v2 = sub_1C7224760();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C721EC98(uint64_t a1)
{
  v2 = sub_1C7224760();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PromptSuggestion.Source.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219460, &qword_1C7577FE0);
  OUTLINED_FUNCTION_3_0();
  v46 = v5;
  v47 = v4;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_36();
  v45 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219468, &qword_1C7577FE8);
  OUTLINED_FUNCTION_3_0();
  v43 = v9;
  v44 = v8;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_36();
  v42 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219470, &qword_1C7577FF0);
  OUTLINED_FUNCTION_3_0();
  v40 = v13;
  v41 = v12;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_36();
  v39 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219478, &qword_1C7577FF8);
  OUTLINED_FUNCTION_3_0();
  v37 = v17;
  v38 = v16;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_36();
  v36 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219480, &qword_1C7578000);
  OUTLINED_FUNCTION_3_0();
  v34 = v21;
  v35 = v20;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v33 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219488, &qword_1C7578008);
  OUTLINED_FUNCTION_3_0();
  v27 = v26;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_158();
  v29 = *v0;
  OUTLINED_FUNCTION_70(v3, v3[3]);
  sub_1C72246B8();
  sub_1C755200C();
  switch(v29)
  {
    case 1:
      sub_1C7224808();
      OUTLINED_FUNCTION_28_22();
      sub_1C7551C6C();
      goto LABEL_7;
    case 2:
      sub_1C72247B4();
      OUTLINED_FUNCTION_28_22();
      sub_1C7551C6C();
      goto LABEL_7;
    case 3:
      sub_1C7224760();
      OUTLINED_FUNCTION_28_22();
      sub_1C7551C6C();
      goto LABEL_7;
    case 4:
      sub_1C722470C();
      OUTLINED_FUNCTION_28_22();
      sub_1C7551C6C();
LABEL_7:
      v30 = OUTLINED_FUNCTION_7_18();
      v32(v30, v31);
      break;
    default:
      sub_1C722485C();
      OUTLINED_FUNCTION_28_22();
      sub_1C7551C6C();
      (*(v34 + 8))(v24, v35);
      break;
  }

  (*(v27 + 8))(v1, v25);
  OUTLINED_FUNCTION_125();
}

uint64_t _s18PhotosIntelligence16PromptSuggestionV15EngagementStateO9hashValueSivg_0()
{
  v1 = *v0;
  OUTLINED_FUNCTION_106();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

void PromptSuggestion.Source.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_124();
  a25 = v29;
  a26 = v30;
  v32 = v31;
  v83 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2194A0, &qword_1C7578010);
  OUTLINED_FUNCTION_3_0();
  v80 = v34;
  v81 = v35;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_36();
  v85 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2194A8, &qword_1C7578018);
  OUTLINED_FUNCTION_3_0();
  v78 = v38;
  v79 = v39;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_36();
  v84 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2194B0, &qword_1C7578020);
  OUTLINED_FUNCTION_3_0();
  v76 = v43;
  v77 = v42;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_36();
  v82 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2194B8, &qword_1C7578028);
  OUTLINED_FUNCTION_3_0();
  v74 = v47;
  v75 = v46;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_158();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2194C0, &qword_1C7578030);
  OUTLINED_FUNCTION_3_0();
  v73 = v50;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_61_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2194C8, &qword_1C7578038);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_70(v32, v32[3]);
  sub_1C72246B8();
  sub_1C7551FFC();
  if (v26)
  {
    goto LABEL_8;
  }

  v72 = v49;
  v53 = v84;
  sub_1C7551C5C();
  sub_1C6FD80E0();
  if (v55 == v56 >> 1)
  {
LABEL_7:
    v61 = sub_1C75518EC();
    swift_allocError();
    v63 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215490, &qword_1C7560600);
    *v63 = &type metadata for PromptSuggestion.Source;
    v64 = sub_1C7551B5C();
    OUTLINED_FUNCTION_588(v64);
    (*(*(v61 - 8) + 104))(v63, *MEMORY[0x1E69E6AF8], v61);
    swift_willThrow();
    swift_unknownObjectRelease();
    v65 = OUTLINED_FUNCTION_23_14();
    v66(v65);
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v32);
LABEL_9:
    OUTLINED_FUNCTION_125();
    return;
  }

  if (v55 < (v56 >> 1))
  {
    v71 = *(v54 + v55);
    sub_1C6FD80C8();
    v58 = v57;
    v60 = v59;
    swift_unknownObjectRelease();
    if (v58 == v60 >> 1)
    {
      switch(v71)
      {
        case 1:
          a13 = 1;
          sub_1C7224808();
          v53 = v28;
          OUTLINED_FUNCTION_1_45(&type metadata for PromptSuggestion.Source.MosaicCodingKeys, &a13);
          swift_unknownObjectRelease();
          v68 = v74;
          v67 = v75;
          goto LABEL_14;
        case 2:
          a14 = 2;
          sub_1C72247B4();
          v53 = v82;
          OUTLINED_FUNCTION_1_45(&type metadata for PromptSuggestion.Source.SearchCodingKeys, &a14);
          swift_unknownObjectRelease();
          v68 = v76;
          v67 = v77;
          goto LABEL_14;
        case 3:
          a15 = 3;
          sub_1C7224760();
          OUTLINED_FUNCTION_1_45(&type metadata for PromptSuggestion.Source.WhimsicalCodingKeys, &a15);
          swift_unknownObjectRelease();
          v67 = v78;
          v68 = v79;
LABEL_14:
          (*(v68 + 8))(v53, v67);
          break;
        case 4:
          a16 = 4;
          sub_1C722470C();
          sub_1C7551B4C();
          swift_unknownObjectRelease();
          (*(v81 + 8))(v85, v80);
          break;
        default:
          a12 = 0;
          sub_1C722485C();
          OUTLINED_FUNCTION_1_45(&type metadata for PromptSuggestion.Source.NoneCodingKeys, &a12);
          swift_unknownObjectRelease();
          (*(v73 + 8))(v27, v72);
          break;
      }

      v69 = OUTLINED_FUNCTION_23_14();
      v70(v69);
      *v83 = v71;
      __swift_destroy_boxed_opaque_existential_1(v32);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

PhotosIntelligence::PromptSuggestion::ActionType_optional __swiftcall PromptSuggestion.ActionType.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 8;
  if (rawValue < 8)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

PhotosIntelligence::PromptSuggestion::ContentType sub_1C721FAA4@<X0>(Swift::UInt *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = PromptSuggestion.ContentType.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1C721FAE4@<X0>(uint64_t *a1@<X8>)
{
  result = PromptSuggestion.ContentType.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t PromptSuggestion.MusicProperties.description.getter()
{
  v1 = *v0;
  sub_1C755180C();

  v2 = MEMORY[0x1CCA5D090](v1, MEMORY[0x1E69E6158]);
  MEMORY[0x1CCA5CD70](v2);

  MEMORY[0x1CCA5CD70](58, 0xE100000000000000);
  v3 = OUTLINED_FUNCTION_64();
  v4 = MEMORY[0x1CCA5D090](v3);
  MEMORY[0x1CCA5CD70](v4);

  MEMORY[0x1CCA5CD70](41, 0xE100000000000000);
  return 0xD000000000000010;
}

PhotosIntelligence::PromptSuggestion::MusicProperties __swiftcall PromptSuggestion.MusicProperties.init(moods:keywords:)(Swift::OpaquePointer moods, Swift::OpaquePointer keywords)
{
  v2->_rawValue = moods._rawValue;
  v2[1]._rawValue = keywords._rawValue;
  result.keywords = keywords;
  result.moods = moods;
  return result;
}

uint64_t static PromptSuggestion.MusicProperties.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1C70020D4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v2 = OUTLINED_FUNCTION_90();

  return sub_1C70020D4(v2, v3);
}

uint64_t sub_1C721FC50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73646F6F6DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7364726F7779656BLL && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C7551DBC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C721FD14(char a1)
{
  if (a1)
  {
    return 0x7364726F7779656BLL;
  }

  else
  {
    return 0x73646F6F6DLL;
  }
}

uint64_t sub_1C721FD50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C721FC50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C721FD78(uint64_t a1)
{
  v2 = sub_1C72248B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C721FDB4(uint64_t a1)
{
  v2 = sub_1C72248B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PromptSuggestion.MusicProperties.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2194D0, &unk_1C7578040);
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_61_1();
  v5 = OUTLINED_FUNCTION_98_1();
  OUTLINED_FUNCTION_70(v5, v6);
  v7 = sub_1C72248B0();
  sub_1C75504FC();
  OUTLINED_FUNCTION_245();
  sub_1C755200C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
  OUTLINED_FUNCTION_30_1();
  sub_1C7224904(v8);
  OUTLINED_FUNCTION_97();
  sub_1C7551D2C();

  if (!v7)
  {
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
  }

  (*(v3 + 8))(v0, v1);
  OUTLINED_FUNCTION_125();
}

void PromptSuggestion.MusicProperties.hash(into:)()
{
  sub_1C70418D0();
  OUTLINED_FUNCTION_90();

  sub_1C70418D0();
}

uint64_t PromptSuggestion.MusicProperties.hashValue.getter()
{
  OUTLINED_FUNCTION_106();
  sub_1C70418D0();
  sub_1C70418D0();
  return sub_1C7551FAC();
}

void PromptSuggestion.MusicProperties.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_124();
  v12 = v11;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2194E0, &qword_1C7578050);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_389();
  OUTLINED_FUNCTION_70(v12, v12[3]);
  v16 = sub_1C72248B0();
  OUTLINED_FUNCTION_73_12(&type metadata for PromptSuggestion.MusicProperties.CodingKeys, v17, v16);
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    OUTLINED_FUNCTION_12_0();
    sub_1C7224904(v18);
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_52();
    v19 = OUTLINED_FUNCTION_282();
    v20(v19);
    *v14 = a10;
    v14[1] = a10;
    sub_1C75504FC();
    sub_1C75504FC();
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  OUTLINED_FUNCTION_347();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C72201C0(uint64_t a1)
{
  sub_1C7551F3C();
  sub_1C70418D0();
  sub_1C70418D0();
  return sub_1C7551FAC();
}

uint64_t PromptSuggestion.promptMetadata.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 168);
  v7[0] = *(v1 + 152);
  v7[1] = v2;
  v4 = *(v1 + 200);
  v8 = *(v1 + 184);
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_1C712A774(v7, &v6, &qword_1EC2194E8, &unk_1C7578058);
}

uint64_t PromptSuggestion.generationDate.getter()
{
  v2 = OUTLINED_FUNCTION_422();
  v3 = type metadata accessor for PromptSuggestion(v2);
  return sub_1C712A774(v1 + *(v3 + 108), v0, &unk_1EC219230, &unk_1C7563720);
}

uint64_t PromptSuggestion.musicProperties.getter()
{
  v2 = OUTLINED_FUNCTION_422();
  v3 = (v1 + *(type metadata accessor for PromptSuggestion(v2) + 112));
  v4 = *v3;
  v5 = v3[1];
  *v0 = *v3;
  v0[1] = v5;

  return sub_1C7224968(v4);
}

void PromptSuggestion.init(promptTemplate:attributedPromptText:traits:assetUUIDs:keyAssetUUID:isValid:source:action:content:queryTokens:musicQueryTokens:musicSubstring:promptMetadata:associatedContactName:associatedPlaceName:associatedCityName:locale:embedding:templateHash:generationDate:musicProperties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21, char *a22, uint64_t *a23, uint64_t a24, uint64_t a25, uint64_t a26, unint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __int128 a31, __int128 a32, __int128 a33, __int128 a34, uint64_t a35, uint64_t a36, uint64_t *a37)
{
  OUTLINED_FUNCTION_33();
  v79 = v37;
  v78 = v38;
  v77 = v39;
  v76 = v40;
  v75 = v41;
  v74 = v42;
  v81 = v43;
  v80 = v44;
  v46 = v45;
  v47 = sub_1C754DFFC();
  OUTLINED_FUNCTION_3_0();
  v49 = v48;
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_14_0();
  v53 = v52 - v51;

  v54 = *a21;
  v55 = *a22;
  v56 = *a23;
  v57 = *a37;
  v82 = a37[1];
  *(v46 + 17) = 0;
  sub_1C754DFEC();
  v58 = sub_1C754DF8C();
  v60 = v59;
  (*(v49 + 8))(v53, v47);
  *v46 = v58;
  *(v46 + 8) = v60;
  *(v46 + 304) = v74;
  *(v46 + 64) = v75;
  v61 = *(v76 + 16);
  *(v46 + 24) = v76;
  *(v46 + 32) = v61;
  *(v46 + 40) = v77;
  *(v46 + 48) = v78;
  *(v46 + 56) = v79;
  *(v46 + 16) = v54;
  *(v46 + 72) = v55;
  *(v46 + 80) = v56;
  *(v46 + 88) = a24;
  *(v46 + 96) = a25;
  v62 = [v74 string];
  v63 = sub_1C755068C();
  v65 = v64;

  *(v46 + 104) = v63;
  *(v46 + 112) = v65;
  *(v46 + 120) = v80;
  *(v46 + 128) = v81;
  if (a27)
  {
    v66 = a26;
  }

  else
  {
    v66 = 0;
  }

  if (a27)
  {
    v67 = a27;
  }

  else
  {
    v67 = 0xE000000000000000;
  }

  swift_bridgeObjectRetain_n();
  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](v66, v67);

  OUTLINED_FUNCTION_68_16();
  *(v46 + 136) = v63;
  *(v46 + 144) = v65;
  *(v46 + 288) = a26;
  *(v46 + 296) = a27;
  *(v46 + 200) = v68;
  *(v46 + 216) = a31;
  *(v46 + 232) = a32;
  *(v46 + 248) = a33;
  *(v46 + 264) = a34;
  *(v46 + 280) = a35;
  v69 = type metadata accessor for PromptSuggestion(0);
  v70 = *(v69 + 108);
  v71 = sub_1C754DF6C();
  OUTLINED_FUNCTION_12();
  (*(v72 + 32))(v46 + v70, a36, v71);
  __swift_storeEnumTagSinglePayload(v46 + v70, 0, 1, v71);
  v73 = (v46 + *(v69 + 112));
  *v73 = v57;
  v73[1] = v82;
  OUTLINED_FUNCTION_25_0();
}

id PromptSuggestion.longAttributedPromptText.getter()
{
  if (*(v0 + 296))
  {
    v1 = *(v0 + 304);
    v2 = objc_allocWithZone(MEMORY[0x1E696AD40]);
    sub_1C75504FC();
    v3 = [v2 initWithAttributedString_];
    sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
    v4 = sub_1C7073450();
    [v3 appendAttributedString_];

    return v3;
  }

  else
  {
    v6 = *(v0 + 304);

    return v6;
  }
}

uint64_t PromptSuggestion.isValidLocale.getter()
{
  v1 = sub_1C754E15C();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_0();
  v7 = v6 - v5;
  v8 = *(v0 + 248);
  v9 = *(v0 + 256);
  sub_1C754E11C();
  v10 = sub_1C754E04C();
  v12 = v11;
  (*(v3 + 8))(v7, v1);
  if (v9)
  {
    if (v8 == v10 && v9 == v12)
    {
      v14 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_64();
      v14 = sub_1C7551DBC();
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t PromptSuggestion.shortDescription.getter()
{
  v1 = 0xE400000000000000;
  v2 = 1701736270;
  switch(*(v0 + 16))
  {
    case 1:
      v1 = 0xE600000000000000;
      v2 = OUTLINED_FUNCTION_79_0();
      break;
    case 2:
      v1 = 0xE600000000000000;
      v2 = OUTLINED_FUNCTION_81();
      break;
    case 3:
      v1 = 0xE90000000000006CLL;
      v2 = OUTLINED_FUNCTION_46();
      break;
    case 4:
      v1 = 0xEA00000000006C61;
      v2 = OUTLINED_FUNCTION_47_2();
      break;
    default:
      break;
  }

  MEMORY[0x1CCA5CD70](v2, v1);

  MEMORY[0x1CCA5CD70](93, 0xE100000000000000);
  MEMORY[0x1CCA5CD70](*(v0 + 104), *(v0 + 112));
  v3 = *(v0 + 296);
  if (v3)
  {
    v4 = *(v0 + 288);
    sub_1C75504FC();
    MEMORY[0x1CCA5CD70](v4, v3);

    MEMORY[0x1CCA5CD70](10535, 0xE200000000000000);
    v5 = 0x20636973756D2820;
    v6 = 0xEB0000000027203ALL;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  MEMORY[0x1CCA5CD70](v5, v6);

  return 91;
}

void PromptSuggestion.description.getter()
{
  OUTLINED_FUNCTION_33();
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  OUTLINED_FUNCTION_76(v3);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v130 - v5;
  sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v137 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_0();
  v13 = *(v2 + 96);
  v134 = v16 - v15;
  v135 = v14;
  v133 = v6;
  v136 = v2;
  if (v13)
  {
    v144 = 91;
    v145 = 0xE100000000000000;
    v17 = *(v13 + 16);
    v18 = MEMORY[0x1E69E7CC0];
    if (v17)
    {
      v143 = MEMORY[0x1E69E7CC0];
      sub_1C6F7ED9C(0, v17, 0, v9, v10, v11, v12);
      v19 = 0;
      v20 = (v13 + 32);
      v18 = v143;
      v138 = v13;
      while (v19 < *(v13 + 16))
      {
        memcpy(v142, v20, sizeof(v142));
        memcpy(v141, v20, sizeof(v141));
        v21 = sub_1C6FCA6E4(v142, v140);
        QueryToken.description.getter(v21, v22, v23, v24, v25, v26, v27);
        OUTLINED_FUNCTION_40_24(v28, v29);
        v30 = OUTLINED_FUNCTION_50_20();
        OUTLINED_FUNCTION_30_25(v30, v31, v32, v33, v34, v35, MEMORY[0x1E69E6158], v36, v130, v131);
        OUTLINED_FUNCTION_93_10();
        sub_1C6FDD548(v142);
        v143 = v18;
        v42 = *(v18 + 16);
        v41 = *(v18 + 24);
        if (v42 >= v41 >> 1)
        {
          OUTLINED_FUNCTION_72_12(v41, v37, v38, v39, v40);
          v18 = v143;
        }

        ++v19;
        *(v18 + 16) = v42 + 1;
        v43 = v18 + 16 * v42;
        *(v43 + 32) = v17;
        *(v43 + 40) = v1;
        v20 += 120;
        v13 = v138;
        if (v17 == v19)
        {
          v2 = v136;
          goto LABEL_9;
        }
      }

      goto LABEL_64;
    }

LABEL_9:
    *v142 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    v44 = OUTLINED_FUNCTION_15_46(&qword_1EDD0CF58);
    OUTLINED_FUNCTION_69_14(v44);

    v45 = OUTLINED_FUNCTION_64();
    MEMORY[0x1CCA5CD70](v45);

    MEMORY[0x1CCA5CD70](93, 0xE100000000000000);
    v131 = v144;
    v132 = v145;
  }

  else
  {
    v131 = 7104878;
    v132 = 0xE300000000000000;
  }

  *v142 = 0;
  *&v142[8] = 0xE000000000000000;
  sub_1C755180C();
  v144 = *v142;
  v145 = *&v142[8];
  MEMORY[0x1CCA5CD70](0xD00000000000003BLL, 0x80000001C75A4DD0);
  MEMORY[0x1CCA5CD70](*v2, *(v2 + 8));
  MEMORY[0x1CCA5CD70](0xD000000000000015, 0x80000001C75A4E10);
  if (!*(v2 + 128))
  {
    OUTLINED_FUNCTION_23_29();
  }

  sub_1C75504FC();
  v46 = OUTLINED_FUNCTION_58();
  MEMORY[0x1CCA5CD70](v46);

  v47 = OUTLINED_FUNCTION_36_15();
  MEMORY[0x1CCA5CD70](v47 | 0x6F72702000000000, 0xED0000203A74706DLL);
  MEMORY[0x1CCA5CD70](*(v2 + 104), *(v2 + 112));
  v48 = OUTLINED_FUNCTION_36_15();
  MEMORY[0x1CCA5CD70](v48 | 0x73756D2000000000, 0xEC000000203A6369);
  if (!*(v2 + 296))
  {
    OUTLINED_FUNCTION_23_29();
  }

  sub_1C75504FC();
  v49 = OUTLINED_FUNCTION_58();
  MEMORY[0x1CCA5CD70](v49);

  OUTLINED_FUNCTION_94_10();
  MEMORY[0x1CCA5CD70](*(v2 + 136), *(v2 + 144));
  v50 = OUTLINED_FUNCTION_36_15();
  MEMORY[0x1CCA5CD70](v50 | 0x6172742000000000, 0xED0000203A737469);
  v51 = MEMORY[0x1CCA5D090](*(v2 + 64), MEMORY[0x1E69E6158]);
  MEMORY[0x1CCA5CD70](v51);

  v52 = OUTLINED_FUNCTION_36_15();
  MEMORY[0x1CCA5CD70](v52 | 0x2073492000000000, 0xEF203A64696C6176);
  if (*(v2 + 56))
  {
    v53 = 1702195828;
  }

  else
  {
    v53 = 0x65736C6166;
  }

  if (*(v2 + 56))
  {
    v54 = 0xE400000000000000;
  }

  else
  {
    v54 = 0xE500000000000000;
  }

  MEMORY[0x1CCA5CD70](v53, v54);

  v55 = OUTLINED_FUNCTION_36_15();
  MEMORY[0x1CCA5CD70](v55 | 0x7463612000000000, 0xED0000203A6E6F69);
  v56 = 0xE700000000000000;
  v57 = 0x6E776F6E6B6E75;
  switch(*(v2 + 72))
  {
    case 1:
      v56 = 0xE600000000000000;
      v58 = 1769239919;
      goto LABEL_24;
    case 2:
      v56 = 0xE400000000000000;
      v57 = 1885958772;
      break;
    case 3:
      v56 = 0xE800000000000000;
      v57 = 0x676E6970706F6873;
      break;
    case 4:
      v56 = 0xE600000000000000;
      v58 = 1768843620;
LABEL_24:
      v57 = v58 & 0xFFFF0000FFFFFFFFLL | 0x676E00000000;
      break;
    case 5:
      v56 = 0xE400000000000000;
      v57 = 1701670760;
      break;
    case 6:
      v56 = 0xEE00736E6F697461;
      v57 = 0x63696E756D6D6F63;
      break;
    case 7:
      v57 = 0x7373656E746966;
      break;
    default:
      break;
  }

  v59 = 0xED0000203A656372;
  MEMORY[0x1CCA5CD70](v57, v56);

  v60 = OUTLINED_FUNCTION_36_15();
  MEMORY[0x1CCA5CD70](v60 | 0x6E6F632000000000, 0xEE00203A746E6574);
  *v142 = *(v2 + 80);
  sub_1C721B350();
  MEMORY[0x1CCA5CD70]();

  OUTLINED_FUNCTION_94_10();
  *v142 = *(v2 + 32);
  v61 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v61);

  v62 = OUTLINED_FUNCTION_36_15();
  MEMORY[0x1CCA5CD70](v62 | 0x756F732000000000, 0xED0000203A656372);
  v63 = 0xE400000000000000;
  v64 = 1701736270;
  switch(*(v2 + 16))
  {
    case 1:
      v63 = 0xE600000000000000;
      v64 = OUTLINED_FUNCTION_79_0();
      break;
    case 2:
      v63 = 0xE600000000000000;
      v64 = OUTLINED_FUNCTION_81();
      break;
    case 3:
      v63 = 0xE90000000000006CLL;
      v64 = OUTLINED_FUNCTION_46();
      break;
    case 4:
      v63 = 0xEA00000000006C61;
      v64 = OUTLINED_FUNCTION_47_2();
      break;
    default:
      break;
  }

  MEMORY[0x1CCA5CD70](v64, v63);

  MEMORY[0x1CCA5CD70](0xD000000000000017, 0x80000001C75A4E70);
  v142[0] = *(v2 + 17);
  sub_1C75519EC();
  MEMORY[0x1CCA5CD70](0xD00000000000001CLL, 0x80000001C75A4E90);
  if (*(v2 + 224))
  {
    v59 = *(v2 + 216);
  }

  else
  {
    OUTLINED_FUNCTION_23_29();
  }

  sub_1C75504FC();
  v65 = OUTLINED_FUNCTION_58();
  MEMORY[0x1CCA5CD70](v65);

  MEMORY[0x1CCA5CD70](0xD00000000000001BLL, 0x80000001C75A4EB0);
  if (*(v2 + 240))
  {
    v59 = *(v2 + 232);
  }

  else
  {
    OUTLINED_FUNCTION_23_29();
  }

  sub_1C75504FC();
  v66 = OUTLINED_FUNCTION_58();
  MEMORY[0x1CCA5CD70](v66);

  MEMORY[0x1CCA5CD70](0xD000000000000016, 0x80000001C75A4ED0);
  v67 = *(v2 + 160);
  if (v67 == 1)
  {
    OUTLINED_FUNCTION_23_29();
  }

  else
  {
    *v142 = *(v2 + 152);
    *&v142[8] = v67;
    v68 = *(v2 + 184);
    *&v142[16] = *(v2 + 168);
    *&v142[32] = v68;
    *&v142[48] = *(v2 + 200);
    TemplatedPromptMetadata.description.getter();
    v1 = v69;
    v141[0] = v70;
    v141[1] = v69;
    v140[0] = 10;
    v140[1] = 0xE100000000000000;
    v139[0] = 2314;
    v139[1] = 0xE200000000000000;
    v129 = sub_1C6FB5E8C();
    v59 = OUTLINED_FUNCTION_30_25(v140, v139, v71, v72, v73, v74, MEMORY[0x1E69E6158], v75, v128, v129);
  }

  v76 = OUTLINED_FUNCTION_58();
  MEMORY[0x1CCA5CD70](v76);

  MEMORY[0x1CCA5CD70](0xD000000000000014, 0x80000001C75A4EF0);
  v81 = *(v2 + 88);
  v82 = *(v81 + 16);
  v83 = MEMORY[0x1E69E7CC0];
  if (v82)
  {
    v143 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v82, 0, v77, v78, v79, v80);
    v84 = 0;
    v85 = (v81 + 32);
    v83 = v143;
    v138 = v82;
    while (v84 < *(v81 + 16))
    {
      memcpy(v142, v85, sizeof(v142));
      memcpy(v141, v85, sizeof(v141));
      v86 = sub_1C6FCA6E4(v142, v140);
      QueryToken.description.getter(v86, v87, v88, v89, v90, v91, v92);
      OUTLINED_FUNCTION_40_24(v93, v94);
      v95 = OUTLINED_FUNCTION_50_20();
      OUTLINED_FUNCTION_30_25(v95, v96, v97, v98, v99, v100, MEMORY[0x1E69E6158], v101, v130, v131);
      OUTLINED_FUNCTION_93_10();
      sub_1C6FDD548(v142);
      v143 = v83;
      v107 = *(v83 + 16);
      v106 = *(v83 + 24);
      if (v107 >= v106 >> 1)
      {
        OUTLINED_FUNCTION_72_12(v106, v102, v103, v104, v105);
        v83 = v143;
      }

      ++v84;
      *(v83 + 16) = v107 + 1;
      v108 = v83 + 16 * v107;
      *(v108 + 32) = v59;
      *(v108 + 40) = v1;
      v85 += 120;
      if (v138 == v84)
      {
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
    return;
  }

LABEL_50:
  *v142 = v83;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
  v109 = OUTLINED_FUNCTION_15_46(&qword_1EDD0CF58);
  OUTLINED_FUNCTION_69_14(v109);

  v110 = OUTLINED_FUNCTION_64();
  MEMORY[0x1CCA5CD70](v110);

  MEMORY[0x1CCA5CD70](0xD00000000000001ALL, 0x80000001C75A4F10);
  MEMORY[0x1CCA5CD70](v131, v132);

  MEMORY[0x1CCA5CD70](0xD000000000000010, 0x80000001C75A4F30);
  v111 = v135;
  v112 = v136;
  v113 = v134;
  v114 = 7104878;
  if (!*(v136 + 48))
  {
    OUTLINED_FUNCTION_23_29();
  }

  sub_1C75504FC();
  v115 = OUTLINED_FUNCTION_58();
  MEMORY[0x1CCA5CD70](v115);

  MEMORY[0x1CCA5CD70](0xD000000000000017, 0x80000001C75A4F50);
  v116 = type metadata accessor for PromptSuggestion(0);
  v117 = (v112 + *(v116 + 112));
  v118 = *v117;
  if (*v117)
  {
    v119 = v117[1];
    *v142 = v118;
    *&v142[8] = v119;
    v120 = PromptSuggestion.MusicProperties.description.getter();
    v122 = v121;
  }

  else
  {
    v122 = 0xE300000000000000;
    v120 = 7104878;
  }

  MEMORY[0x1CCA5CD70](v120, v122);

  v123 = OUTLINED_FUNCTION_36_15();
  MEMORY[0x1CCA5CD70](v123 | 0x636F4C2000000000, 0xED0000203A656C61);
  if (*(v112 + 256))
  {
    v114 = *(v112 + 248);
    v124 = *(v112 + 256);
  }

  else
  {
    v124 = 0xE300000000000000;
  }

  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](v114, v124);

  MEMORY[0x1CCA5CD70](0xD000000000000015, 0x80000001C75A4F70);
  v125 = v133;
  sub_1C712A774(v112 + *(v116 + 108), v133, &unk_1EC219230, &unk_1C7563720);
  if (__swift_getEnumTagSinglePayload(v125, 1, v111) == 1)
  {
    sub_1C754DF3C();
    if (__swift_getEnumTagSinglePayload(v125, 1, v111) != 1)
    {
      sub_1C6FD7FC8(v125, &unk_1EC219230, &unk_1C7563720);
    }
  }

  else
  {
    (*(v137 + 32))(v113, v125, v111);
  }

  OUTLINED_FUNCTION_4_57();
  sub_1C7224414(v126);
  v127 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v127);

  (*(v137 + 8))(v113, v111);
  OUTLINED_FUNCTION_25_0();
}

void PromptSuggestion.dictionaryRepresentation()()
{
  v11[4] = *MEMORY[0x1E69E9840];
  sub_1C754D7AC();
  swift_allocObject();
  sub_1C754D79C();
  type metadata accessor for PromptSuggestion(0);
  OUTLINED_FUNCTION_11_42();
  sub_1C7224414(v1);
  OUTLINED_FUNCTION_294();
  sub_1C754D78C();

  if (!v0)
  {
    v2 = objc_opt_self();
    OUTLINED_FUNCTION_294();
    v3 = sub_1C754DDCC();
    v11[0] = 0;
    v4 = [v2 JSONObjectWithData:v3 options:0 error:v11];

    if (v4)
    {
      v5 = v11[0];
      sub_1C75515CC();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21ACD0, &unk_1C756DB10);
      if (swift_dynamicCast())
      {
        v6 = OUTLINED_FUNCTION_294();
        sub_1C6FC1640(v6, v7);
        return;
      }

      sub_1C72249A8();
      swift_allocError();
    }

    else
    {
      v8 = v11[0];
      sub_1C754DBEC();
    }

    swift_willThrow();
    v9 = OUTLINED_FUNCTION_294();
    sub_1C6FC1640(v9, v10);
  }
}

uint64_t static PromptSuggestion.createPromptSuggestion(from:)(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v1 = objc_opt_self();
  v2 = sub_1C755048C();
  v11[0] = 0;
  v3 = [v1 dataWithJSONObject:v2 options:0 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_1C754DDEC();
    v7 = v6;

    sub_1C754D73C();
    swift_allocObject();
    sub_1C754D72C();
    type metadata accessor for PromptSuggestion(0);
    OUTLINED_FUNCTION_11_42();
    sub_1C7224414(v8);
    OUTLINED_FUNCTION_84_8();
    sub_1C754D71C();

    return sub_1C6FC1640(v5, v7);
  }

  else
  {
    v10 = v4;
    sub_1C754DBEC();

    return swift_willThrow();
  }
}

uint64_t sub_1C7221AF8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656D656761676E65 && a2 == 0xEF6574617453746ELL;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7465737341706F74 && a2 == 0xED00007344495555;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x756F437465737361 && a2 == 0xEA0000000000746ELL;
          if (v9 || (sub_1C7551DBC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x746573734179656BLL && a2 == 0xEC00000044495555;
            if (v10 || (sub_1C7551DBC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x64696C61567369 && a2 == 0xE700000000000000;
              if (v11 || (sub_1C7551DBC() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x737469617274 && a2 == 0xE600000000000000;
                if (v12 || (sub_1C7551DBC() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
                  if (v13 || (sub_1C7551DBC() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
                    if (v14 || (sub_1C7551DBC() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6B6F547972657571 && a2 == 0xEB00000000736E65;
                      if (v15 || (sub_1C7551DBC() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000010 && 0x80000001C75A5010 == a2;
                        if (v16 || (sub_1C7551DBC() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x655474706D6F7270 && a2 == 0xEA00000000007478;
                          if (v17 || (sub_1C7551DBC() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x655474706D6F7270 && a2 == 0xEE006574616C706DLL;
                            if (v18 || (sub_1C7551DBC() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x6D6F7250676E6F6CLL && a2 == 0xEE00747865547470;
                              if (v19 || (sub_1C7551DBC() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x654D74706D6F7270 && a2 == 0xEE00617461646174;
                                if (v20 || (sub_1C7551DBC() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000013 && 0x80000001C75A4FB0 == a2;
                                  if (v21 || (sub_1C7551DBC() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000012 && 0x80000001C75A4FD0 == a2;
                                    if (v22 || (sub_1C7551DBC() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
                                      if (v23 || (sub_1C7551DBC() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x6E69646465626D65 && a2 == 0xE900000000000067;
                                        if (v24 || (sub_1C7551DBC() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x6574616C706D6574 && a2 == 0xEC00000068736148;
                                          if (v25 || (sub_1C7551DBC() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x627553636973756DLL && a2 == 0xEE00676E69727473;
                                            if (v26 || (sub_1C7551DBC() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0xD000000000000014 && 0x80000001C75A5030 == a2;
                                              if (v27 || (sub_1C7551DBC() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0x69746172656E6567 && a2 == 0xEE00657461446E6FLL;
                                                if (v28 || (sub_1C7551DBC() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else if (a1 == 0x6F7250636973756DLL && a2 == 0xEF73656974726570)
                                                {

                                                  return 24;
                                                }

                                                else
                                                {
                                                  v30 = sub_1C7551DBC();

                                                  if (v30)
                                                  {
                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    return 25;
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
                }
              }
            }
          }
        }
      }
    }
  }
}