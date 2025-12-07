void sub_1C739C4D0()
{
  OUTLINED_FUNCTION_12_67();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v0)
  {
    OUTLINED_FUNCTION_2_110();
    if (v4 == v3)
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2150E8, &qword_1C755C2F8);
      v6 = OUTLINED_FUNCTION_28_34(v5);
      OUTLINED_FUNCTION_13_0(v6);
      OUTLINED_FUNCTION_6_92(v7);
    }

    if (v2 != v1)
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
      OUTLINED_FUNCTION_51_23(v8);
      return;
    }

    goto LABEL_9;
  }
}

void sub_1C739C624()
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
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215010, &unk_1C755C210);
      v9 = OUTLINED_FUNCTION_28_34(v8);
      OUTLINED_FUNCTION_13_0(v9);
      OUTLINED_FUNCTION_6_92(v10);
    }

    if (v3 != v1)
    {
      OUTLINED_FUNCTION_39_37(v5, v2 + 8 * v1, v6, &type metadata for FloatVector);
      return;
    }

    goto LABEL_9;
  }
}

void sub_1C739C744(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5, void *a6)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v7)
  {
    if (v7 >= 1)
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
      v12 = OUTLINED_FUNCTION_28_34(v11);
      _swift_stdlib_malloc_size(v12);
      OUTLINED_FUNCTION_35_25();
      v12[2] = v7;
      v12[3] = v13;
    }

    if (v6 != a3)
    {
      sub_1C6F65BE8(0, a5, a6);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_1C739C834(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void))
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 >= 1)
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
      v10 = OUTLINED_FUNCTION_28_34(v9);
      _swift_stdlib_malloc_size(v10);
      OUTLINED_FUNCTION_35_25();
      v10[2] = v6;
      v10[3] = v11;
    }

    if (v5 != a3)
    {
      a5(0);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_1C739C8FC()
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
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215058, &qword_1C755C260);
      v9 = OUTLINED_FUNCTION_23_46(v8);
      v10 = _swift_stdlib_malloc_size(v9);
      v5 = OUTLINED_FUNCTION_3_99(v10);
    }

    if (v3 != v1)
    {
      OUTLINED_FUNCTION_39_37(v5, v2 + 48 * v1, v6, &type metadata for SortableSuggestion);
      return;
    }

    goto LABEL_9;
  }
}

void sub_1C739C9FC()
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
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215028, &unk_1C7585CA0);
      v9 = OUTLINED_FUNCTION_23_46(v8);
      v10 = _swift_stdlib_malloc_size(v9);
      v5 = OUTLINED_FUNCTION_3_99(v10);
    }

    if (v3 != v1)
    {
      OUTLINED_FUNCTION_39_37(v5, v2 + 24 * v1, v6, &type metadata for PromptSuggestionContext);
      return;
    }

    goto LABEL_9;
  }
}

void sub_1C739CAD0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(unint64_t, void), uint64_t (*a6)(void))
{
  v6 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    a5((a4 >> 1) - a3, 0);
    if (v6 != a3)
    {
      a6(0);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

void sub_1C739CD40()
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
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215078, &qword_1C755C280);
      v9 = OUTLINED_FUNCTION_23_46(v8);
      v10 = _swift_stdlib_malloc_size(v9);
      v5 = OUTLINED_FUNCTION_3_99(v10);
    }

    if (v3 != v1)
    {
      OUTLINED_FUNCTION_39_37(v5, v2 + 80 * v1, v6, &type metadata for FreeformStoryKeyAssetElector.StochatizedAsset);
      return;
    }

    goto LABEL_9;
  }
}

void sub_1C739CDE8()
{
  OUTLINED_FUNCTION_12_67();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v0)
  {
    OUTLINED_FUNCTION_2_110();
    if (v4 == v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A0, &unk_1C755BE10);
      v5 = swift_allocObject();
      OUTLINED_FUNCTION_13_0(v5);
      OUTLINED_FUNCTION_6_92(v6);
    }

    if (v2 != v1)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_1C739CEA0()
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215090, &unk_1C7585C90);
      v8 = swift_allocObject();
      OUTLINED_FUNCTION_13_0(v8);
      OUTLINED_FUNCTION_6_92(v9);
    }

    if (v3 != v1)
    {
      OUTLINED_FUNCTION_39_37(v5, v2 + 192 * v1, v6, &type metadata for StoryMusicCurationSong);
      return;
    }

    goto LABEL_9;
  }
}

char *sub_1C739CF80(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, uint64_t, uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = sub_1C75516BC();
  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    a2 = (a2)(v6, 0);
    sub_1C75504FC();
    a3 = a3(&v8, a2 + 32, v6, a1);
    sub_1C6F61E88(v8);
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return a2;
}

void sub_1C739D040()
{
  OUTLINED_FUNCTION_12_67();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v0)
  {
    OUTLINED_FUNCTION_2_110();
    if (v4 == v3)
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DD0, &qword_1C7586300);
      v6 = OUTLINED_FUNCTION_23_46(v5);
      v7 = _swift_stdlib_malloc_size(v6);
      OUTLINED_FUNCTION_3_99(v7);
    }

    if (v2 != v1)
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DD8, &qword_1C755BF60);
      OUTLINED_FUNCTION_51_23(v8);
      return;
    }

    goto LABEL_9;
  }
}

void sub_1C739D1DC()
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
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214CF0, &qword_1C755BE70);
      v9 = OUTLINED_FUNCTION_23_46(v8);
      v10 = _swift_stdlib_malloc_size(v9);
      v5 = OUTLINED_FUNCTION_3_99(v10);
    }

    if (v3 != v1)
    {
      OUTLINED_FUNCTION_39_37(v5, v2 + 48 * v1, v6, &type metadata for DailyPhotosFaceCuration.DailyPhotosFace);
      return;
    }

    goto LABEL_9;
  }
}

void sub_1C739D3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_14_9();
  a25 = v26;
  a26 = v31;
  v32 = *(v27 + 16);
  if (v32)
  {
    v33 = v30;
    v34 = v29;
    v35 = v27;
    v36 = v28(*(v27 + 16), 0);
    v37 = v34(&a10, v36 + 32, v32, v35);
    v38 = a10;
    v39 = a11;
    v40 = a12;
    v41 = a13;
    v42 = a14;
    sub_1C75504FC();
    v33(v38, v39, v40, v41, v42);
    if (v37 != v32)
    {
      __break(1u);
    }
  }

  OUTLINED_FUNCTION_13_5();
}

uint64_t sub_1C739D494(uint64_t result)
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
      type metadata accessor for MusicKeywordCompletion();
      result = sub_1C7550BBC();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1C739D504(uint64_t result, unint64_t *a2, void *a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (result)
    {
      sub_1C6F65BE8(0, a2, a3);
      result = sub_1C7550BBC();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v3;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

void sub_1C739D5B0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2169F8, &qword_1C7565AD0);
  v3 = sub_1C7551AEC();
  v4 = v3;
  v5 = 0;
  v27 = a1;
  v8 = *(a1 + 64);
  v7 = a1 + 64;
  v6 = v8;
  v9 = 1 << *(v7 - 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v26 = v3 + 64;
  if ((v10 & v6) != 0)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_10:
      v16 = v13 | (v5 << 6);
      v17 = (*(v27 + 48) + 16 * v16);
      v19 = *v17;
      v18 = v17[1];
      v20 = *(*(v27 + 56) + 8 * v16);
      swift_getObjectType();
      sub_1C75504FC();
      v21 = PNTextEmbeddingResult.calibratedScoreForImageSearch(with:)(v20);
      *(v26 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v22 = (v4[6] + 16 * v16);
      *v22 = v19;
      v22[1] = v18;
      *(v4[7] + 8 * v16) = v21;
      v23 = v4[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      v4[2] = v25;
      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v12)
      {
        swift_unknownObjectRelease();
        return;
      }

      v15 = *(v7 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1C739D74C(void *a1)
{
  v1 = [a1 fetchType];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C755068C();

  return v3;
}

unint64_t sub_1C739D7B0()
{
  result = qword_1EDD0FAE8;
  if (!qword_1EDD0FAE8)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC215608, &qword_1C7585C00);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EDD0FAE8);
  }

  return result;
}

uint64_t type metadata accessor for FreeformStoryChapterGenerator(uint64_t a1)
{
  result = qword_1EDD08250;
  if (!qword_1EDD08250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C739D868(uint64_t a1)
{
  result = sub_1C754FF1C();
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

uint64_t sub_1C739D944(uint64_t a1)
{
  v2 = type metadata accessor for Hastings.Feature(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C739D9A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Hastings.Feature(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C739DA04(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }

  return result;
}

id sub_1C739DA64(id result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1C6FE369C(result, a2, a3, a4 & 1);
  }

  return result;
}

void sub_1C739DA7C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    sub_1C6FCA52C(a1, a2, a3, a4 & 1);
  }
}

id sub_1C739DA94(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1C7550B3C();

  v6 = [a3 fetchAssetsWithUUIDs:v5 options:a2];

  return v6;
}

uint64_t OUTLINED_FUNCTION_32_36()
{
}

uint64_t OUTLINED_FUNCTION_50_28()
{
  *(v0 - 96) = 0;
  *(v0 - 88) = 0xE000000000000000;

  return sub_1C755180C();
}

void static Cropping.Spatial3D.getCropRequirements(for:with:)(void *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = 1;
  switch(*a2)
  {
    case 1:
      PFDeviceScreenSize();
      v47.f64[1] = v46;
      *a3 = vmulq_f64(v47, vdupq_n_s64(0x3FD555475A31A4BEuLL));
      goto LABEL_17;
    case 2:
      goto LABEL_5;
    case 3:
      OUTLINED_FUNCTION_55_1();
      v4 = sub_1C7551DBC();
LABEL_5:

      v7 = static Cropping.Spatial3D.targetSizeForWidget(square:)(v4 & 1);
      v61 = v8;
      v9 = static Cropping.Utilities.normalizedSuggestedCropRect(for:targetSize:)(a1, v7, v8);
      v59 = v10;
      v60 = v9;
      v12 = v11;
      v14 = v13;
      sub_1C754F72C();
      sub_1C754F71C();
      v16 = v15;
      v64.origin.x = static Cropping.Utilities.normalizedFaceAreaRect(for:)(a1);
      x = v64.origin.x;
      y = v64.origin.y;
      width = v64.size.width;
      height = v64.size.height;
      if (CGRectIsNull(v64) || (v65.origin.x = x, v65.origin.y = y, v65.size.width = width, v65.size.height = height, CGRectIsEmpty(v65)) || (v66.size.width = v12 * (1.0 - v16), v66.size.height = v14 * (1.0 - v16), v66.origin.x = v60 + v12 * 0.5 + v66.size.width * -0.5, v66.origin.y = v59 + v14 * 0.5 + v66.size.height * -0.5, v67.origin.x = x, v67.origin.y = y, v67.size.width = width, v67.size.height = height, CGRectContainsRect(v66, v67)))
      {
        sub_1C754F71C();
        v22 = v21 + 1.0;
        v23 = v7 * v22;
        v24 = v61 * v22;
        if (qword_1EC214158 != -1)
        {
          OUTLINED_FUNCTION_0_158(&qword_1EC214158);
        }

        v25 = round(v23);
        v26 = round(v24);
        v27 = sub_1C754FF1C();
        __swift_project_value_buffer(v27, qword_1EC25B948);
        v28 = a1;
        v29 = sub_1C754FEEC();
        v30 = sub_1C75511BC();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          *v31 = 136315906;
          v32 = [v28 localIdentifier];
          v33 = sub_1C755068C();
          v35 = v34;

          v36 = sub_1C6F765A4(v33, v35, &v63);

          *(v31 + 4) = v36;
          *(v31 + 12) = 2082;
          if (v3 == 3)
          {
            v37 = 0xE900000000000032;
          }

          else
          {
            v37 = 0xE900000000000031;
          }

          v38 = OUTLINED_FUNCTION_55_1();
          v39 = sub_1C6F765A4(v38, v37, &v63);

          *(v31 + 14) = v39;
          *(v31 + 22) = 2082;
          type metadata accessor for CGSize(0);
          v40 = sub_1C75506EC();
          v42 = sub_1C6F765A4(v40, v41, &v63);

          *(v31 + 24) = v42;
          *(v31 + 32) = 2082;
          *v62 = v25;
          *&v62[1] = v26;
          v43 = sub_1C75506EC();
          v45 = sub_1C6F765A4(v43, v44, &v63);

          *(v31 + 34) = v45;
          _os_log_impl(&dword_1C6F5C000, v29, v30, "Asset %s widget display size for %{public}s is %{public}s scaled to %{public}s", v31, 0x2Au);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_109();
          OUTLINED_FUNCTION_109();
        }

        *a3 = v25;
        *(a3 + 8) = v26;
LABEL_17:
        *(a3 + 16) = 0;
      }

      else
      {
        if (qword_1EC214158 != -1)
        {
          OUTLINED_FUNCTION_0_158(&qword_1EC214158);
        }

        v48 = sub_1C754FF1C();
        __swift_project_value_buffer(v48, qword_1EC25B948);
        v49 = a1;
        v50 = sub_1C754FEEC();
        v51 = sub_1C755117C();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v62[0] = v53;
          *v52 = 136315138;
          v54 = [v49 localIdentifier];
          v55 = sub_1C755068C();
          v57 = v56;

          v58 = sub_1C6F765A4(v55, v57, v62);

          *(v52 + 4) = v58;
          _os_log_impl(&dword_1C6F5C000, v50, v51, "Asset %s would have face area cutoff by inset", v52, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v53);
          OUTLINED_FUNCTION_109();
          OUTLINED_FUNCTION_109();
        }

        *a3 = xmmword_1C7569120;
LABEL_3:
        *(a3 + 16) = 1;
      }

      return;
    default:
      *a3 = 0;
      *(a3 + 8) = 0;
      goto LABEL_3;
  }
}

double static Cropping.Spatial3D.insetForSpatial3DPadding(cropRect:)(double a1, double a2, double a3)
{
  sub_1C754F72C();
  sub_1C754F71C();
  return a1 + a3 * 0.5 + (1.0 - v5) * a3 * -0.5;
}

double static Cropping.Spatial3D.targetSizeForWidget(square:)(char a1)
{
  IsIPad = PLPhysicalDeviceIsIPad();
  v3 = objc_opt_self();
  v4 = 2;
  if (IsIPad)
  {
    v4 = 4;
  }

  if (a1)
  {
    v5 = 3;
  }

  else
  {
    v5 = v4;
  }

  [v3 widgetSizeForFamily_];
  v7 = v6;
  PFDeviceScreenScale();
  return v7 * v8;
}

_BYTE *_s9Spatial3DVwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C739E244(uint64_t a1)
{
  v35 = sub_1C754E07C();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_10_14();
  v31 = v5;
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    return v7;
  }

  v38 = MEMORY[0x1E69E7CC0];
  sub_1C716D74C(0, v6, 0);
  v7 = v38;
  result = sub_1C719D92C();
  v11 = result;
  v12 = 0;
  v13 = a1 + 56;
  v34 = v3;
  v30 = a1 + 64;
  v14 = 1;
  v15 = v31;
  v32 = v6;
  v33 = a1 + 56;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v11 < v14 << *(a1 + 32))
    {
      v16 = v11 >> 6;
      v17 = v14 << v11;
      if ((*(v13 + 8 * (v11 >> 6)) & (v14 << v11)) == 0)
      {
        goto LABEL_25;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_26;
      }

      v37 = v10;
      v36 = v9;
      v18 = a1;
      sub_1C754E06C();
      v19 = v15;
      v21 = *(v38 + 16);
      v20 = *(v38 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1C716D74C(v20 > 1, v21 + 1, 1);
      }

      *(v38 + 16) = v21 + 1;
      result = (*(v34 + 32))(v38 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v21, v19, v35);
      if (v37)
      {
        goto LABEL_30;
      }

      v14 = 1;
      v22 = 1 << *(v18 + 32);
      if (v11 >= v22)
      {
        goto LABEL_27;
      }

      v15 = v19;
      a1 = v18;
      v13 = v33;
      v23 = *(v33 + 8 * v16);
      if ((v23 & v17) == 0)
      {
        goto LABEL_28;
      }

      if (*(a1 + 36) != v36)
      {
        goto LABEL_29;
      }

      v24 = v23 & (-2 << (v11 & 0x3F));
      if (v24)
      {
        v22 = __clz(__rbit64(v24)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = v16 << 6;
        v26 = v16 + 1;
        v27 = (v30 + 8 * v16);
        while (v26 < (v22 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = OUTLINED_FUNCTION_9_78(v11, v36);
            v22 = __clz(__rbit64(v28)) + v25;
            goto LABEL_19;
          }
        }

        result = OUTLINED_FUNCTION_9_78(v11, v36);
LABEL_19:
        v15 = v31;
      }

      if (++v12 == v32)
      {
        return v7;
      }

      v10 = 0;
      v9 = *(a1 + 36);
      v11 = v22;
      if (v22 < 0)
      {
        break;
      }
    }
  }

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
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1C739E530(uint64_t a1)
{
  v48 = sub_1C754E07C();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_10_14();
  v47 = v9;
  v10 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v52 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v10, 0, v5, v6, v7, v8);
    v14 = sub_1C719D92C();
    result = v52;
    v15 = 0;
    v16 = a1 + 56;
    v42 = a1 + 64;
    v43 = v10;
    v17 = 1;
    v44 = v3;
    v45 = a1;
    v46 = a1 + 56;
    if ((v14 & 0x8000000000000000) == 0)
    {
      while (v14 < v17 << *(a1 + 32))
      {
        v18 = v14 >> 6;
        v19 = v17 << v14;
        if ((*(v16 + 8 * (v14 >> 6)) & (v17 << v14)) == 0)
        {
          goto LABEL_24;
        }

        if (*(a1 + 36) != v12)
        {
          goto LABEL_25;
        }

        v51 = v13;
        v49 = v15;
        v50 = v12;
        v20 = result;
        (*(v3 + 16))(v47, *(a1 + 48) + *(v3 + 72) * v14, v48);
        v21 = sub_1C754E05C();
        v23 = v22;
        (*(v3 + 8))(v47, v48);
        result = v20;
        v29 = *(v20 + 16);
        v28 = *(v20 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_1C6F7ED9C(v28 > 1, v29 + 1, 1, v24, v25, v26, v27);
          result = v20;
        }

        *(result + 16) = v29 + 1;
        v30 = result + 16 * v29;
        *(v30 + 32) = v21;
        *(v30 + 40) = v23;
        v16 = v46;
        if (v51)
        {
          goto LABEL_29;
        }

        v3 = v44;
        a1 = v45;
        v17 = 1;
        v31 = 1 << *(v45 + 32);
        if (v14 >= v31)
        {
          goto LABEL_26;
        }

        v32 = *(v46 + 8 * v18);
        if ((v32 & v19) == 0)
        {
          goto LABEL_27;
        }

        if (*(v45 + 36) != v50)
        {
          goto LABEL_28;
        }

        v33 = v32 & (-2 << (v14 & 0x3F));
        if (v33)
        {
          v31 = __clz(__rbit64(v33)) | v14 & 0x7FFFFFFFFFFFFFC0;
          v34 = v43;
        }

        else
        {
          v35 = v18 << 6;
          v36 = v18 + 1;
          v34 = v43;
          v37 = (v42 + 8 * v18);
          while (v36 < (v31 + 63) >> 6)
          {
            v39 = *v37++;
            v38 = v39;
            v35 += 64;
            ++v36;
            if (v39)
            {
              v40 = result;
              OUTLINED_FUNCTION_9_78(v14, v50);
              result = v40;
              v31 = __clz(__rbit64(v38)) + v35;
              goto LABEL_19;
            }
          }

          v41 = result;
          OUTLINED_FUNCTION_9_78(v14, v50);
          result = v41;
        }

LABEL_19:
        v15 = v49 + 1;
        if (v49 + 1 == v34)
        {
          return result;
        }

        v13 = 0;
        v12 = *(v45 + 36);
        v14 = v31;
        if (v31 < 0)
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
  }

  return result;
}

uint64_t sub_1C739E834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C739E8F4;

  return SafetyController.validateUserPromptLanguage(userPrompt:queryTokens:eventRecorder:)(a1, a2, a3, a4);
}

uint64_t sub_1C739E8F4(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t SafetyController.validateUserPromptLanguage(userPrompt:queryTokens:eventRecorder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = sub_1C754F38C();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C739EAC4, v4, 0);
}

uint64_t sub_1C739EAC4()
{
  v93 = v0;
  v1 = v0[7];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1C754F1CC();
  v6 = sub_1C72E0384(v5);
  sub_1C739E244(v6);

  sub_1C706D4E4();
  sub_1C739E530(v7);

  sub_1C706D154();
  v8 = sub_1C739F118(v4, v3, v2, v1);
  v9 = v8 ^ 1;
  OUTLINED_FUNCTION_252(v8, v10, v11, v12, v13, v14, v15, v16, v89, (v8 ^ 1) & 1, 0, v92);
  if (v9)
  {
    OUTLINED_FUNCTION_2_111();

    type metadata accessor for SafetyError(0);
    sub_1C73036D0();
    swift_allocError();
    *v24 = 3;
    goto LABEL_5;
  }

  v17 = v0[4];
  v18 = v0[5];
  LOBYTE(v91) = 17;
  v19 = *(static TextSanitizer.tokenize(_:supportedLanguage:)(v17, v18, &v91) + 16);

  if (v19 < 5)
  {
LABEL_3:
    v21 = v0[5];
    v20 = v0[6];
    v22 = v0[4];
    sub_1C707DEC4();
    v42 = static TextSanitizer.removeCategories(in:queryTokens:categories:)(v22, v21, v20, v23);
    v2 = v43;

    LOBYTE(v91) = 17;
    v44 = *(static TextSanitizer.tokenize(_:supportedLanguage:)(v42, v2, &v91) + 16);

    if (v44 < 5)
    {
    }

    else
    {
      sub_1C75504FC();
      v45 = sub_1C754FEEC();
      v46 = sub_1C75511BC();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v91 = v90;
        *v47 = 136642819;
        v0[2] = v42;
        v0[3] = v2;
        sub_1C75504FC();
        v48 = sub_1C755097C();
        v50 = sub_1C6F765A4(v48, v49, &v91);

        *(v47 + 4) = v50;
        _os_log_impl(&dword_1C6F5C000, v45, v46, "[validateUserPromptLanguage] Partial user prompt (for LID): %{sensitive}s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v90);
        MEMORY[0x1CCA5F8E0](v90, -1, -1);
        MEMORY[0x1CCA5F8E0](v47, -1, -1);
      }

      v51 = HIBYTE(v2) & 0xF;
      if ((v2 & 0x2000000000000000) == 0)
      {
        v51 = v42 & 0xFFFFFFFFFFFFLL;
      }

      if (v51)
      {
        OUTLINED_FUNCTION_3_100();
        static TextSanitizer.validateLanguageWithLexicon(_:supportedLanguageIdentifiers:storyGenerationCache:)(v52, v53, v54, v55);

        v57 = v91;
        OUTLINED_FUNCTION_252(v56, v58, v59, v60, v61, v62, v63, v64, v90, v91, 0, v92);
        v65 = OUTLINED_FUNCTION_5_85();
        switch(v57)
        {
          case 1:
            v68 = 0;
            v69 = "confidentlySupported";
            v65 = 0xD000000000000017;
            break;
          case 2:
            v69 = "confidentlyNotSupported";
            break;
          case 3:
            v68 = 0;
            v69 = "probablyNotSupported";
            v65 = 0xD000000000000011;
            break;
          default:
            goto LABEL_29;
        }

        goto LABEL_29;
      }
    }

    OUTLINED_FUNCTION_252(v77, v78, v79, v80, v81, v82, v83, v84, v90, 0, 0, v92);
    LOBYTE(v57) = 0;
    v65 = OUTLINED_FUNCTION_5_85();
LABEL_29:
    if (v68 && (v69 | 0x8000000000000000) == 0x80000001C7596500)
    {
      goto LABEL_31;
    }

    v87 = OUTLINED_FUNCTION_7_79(v65, v66, v67, 0x80000001C7596500);

    if (v87)
    {
      goto LABEL_32;
    }

    OUTLINED_FUNCTION_2_111();
    type metadata accessor for SafetyError(0);
    sub_1C73036D0();
    swift_allocError();
    *v88 = v57;
LABEL_5:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    __swift_project_boxed_opaque_existential_1(v2, v1[3]);
    OUTLINED_FUNCTION_27();
    v25 = OUTLINED_FUNCTION_4_89();
    v26(v25);

    v27 = v0[1];
    v28 = 0;
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_3_100();
  static TextSanitizer.validateLanguageWithLexicon(_:supportedLanguageIdentifiers:storyGenerationCache:)(v30, v31, v32, v33);
  v70 = v91;
  OUTLINED_FUNCTION_252(v34, v35, v36, v37, v38, v39, v40, v41, v90, v91, 0, v92);
  v73 = 1;
  v74 = "unsupportedCharacters";
  v75 = 0xD000000000000014;
  switch(v70)
  {
    case 1:
      v73 = 0;
      v74 = "confidentlySupported";
      v75 = 0xD000000000000017;
      break;
    case 2:
      v74 = "confidentlyNotSupported";
      break;
    case 3:
      v73 = 0;
      v74 = "probablyNotSupported";
      v75 = 0xD000000000000011;
      break;
    default:
      break;
  }

  if (v73 && (v74 | 0x8000000000000000) == 0x80000001C7596500)
  {
  }

  else
  {
    v76 = OUTLINED_FUNCTION_7_79(v75, v71, v72, 0x80000001C7596500);

    if ((v76 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

LABEL_31:

LABEL_32:
  __swift_project_boxed_opaque_existential_1(v0[7], v1[3]);
  OUTLINED_FUNCTION_27();
  v85 = OUTLINED_FUNCTION_4_89();
  v86(v85);

  v27 = v0[1];
  v28 = 1;
LABEL_6:

  return v27(v28);
}

uint64_t sub_1C739F118(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = v4;
  v63 = a2;
  v10 = sub_1C754F38C();
  v56 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a4[3];
  v54 = a4;
  __swift_project_boxed_opaque_existential_1(a4, v13);
  v55 = v12;
  sub_1C754F1CC();
  if (*(a3 + 16))
  {
    v15 = sub_1C754FEEC();
    v16 = sub_1C75511BC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1C6F5C000, v15, v16, "[validateUserPromptGibberish] The user prompt has annotations, it is not considered gibberish", v17, 2u);
      MEMORY[0x1CCA5F8E0](v17, -1, -1);
    }

    LOBYTE(v18) = 1;
    goto LABEL_5;
  }

  v51 = v6;
  v21 = sub_1C72E0384(v14);
  sub_1C739E244(v21);

  sub_1C706D4E4();
  sub_1C739E530(v22);
  v23 = v5;

  sub_1C706D154();
  v25 = v24;
  v66 = 17;
  result = static TextSanitizer.tokenize(_:supportedLanguage:)(a1, v63, &v66);
  v26 = result;
  v61 = *(result + 16);
  if (v61)
  {
    v50 = v10;
    v27 = 0;
    v60 = v51 + OBJC_IVAR____TtC18PhotosIntelligence16SafetyController_storyPhotoLibraryContext;
    v59 = "unsupportedCharacters";
    v62 = 0x80000001C7596500;
    v28 = (result + 56);
    v58 = "confidentlySupported";
    v52 = "probablyNotSupported";
    v53 = "confidentlyNotSupported";
    while (1)
    {
      if (v61 == v27)
      {

        LOBYTE(v18) = 1;
        v10 = v50;
        goto LABEL_5;
      }

      if (v27 >= *(v26 + 16))
      {
        __break(1u);
        return result;
      }

      v29 = v26;
      v31 = *(v28 - 3);
      v30 = *(v28 - 2);
      v32 = *(v28 - 1);
      v33 = *v28;
      sub_1C75504FC();
      v57 = v32;
      v34 = MEMORY[0x1CCA5CC40](v31, v30, v32, v33);
      static TextSanitizer.validateLanguageWithLexicon(_:supportedLanguageIdentifiers:storyGenerationCache:)(v34, v35, v25, &v65);
      if (v23)
      {

        __swift_project_boxed_opaque_existential_1(v54, v54[3]);
        v18 = v55;
        sub_1C754F1AC();
        (*(v56 + 8))(v18, v50);
        return v18 & 1;
      }

      v36 = v59;
      switch(v65)
      {
        case 1:
        case 3:
          goto LABEL_16;
        case 2:
          v36 = v53;
          break;
        default:
          break;
      }

      if ((v36 | 0x8000000000000000) == v62)
      {
      }

      else
      {
LABEL_16:
        v63 = 0;
        v37 = sub_1C7551DBC();

        if ((v37 & 1) == 0)
        {

          sub_1C75504FC();
          v41 = sub_1C754FEEC();
          v42 = sub_1C75511BC();

          if (os_log_type_enabled(v41, v42))
          {
            v43 = swift_slowAlloc();
            v44 = swift_slowAlloc();
            v64 = v44;
            *v43 = 136642819;
            v45 = MEMORY[0x1CCA5CC40](v31, v30, v57, v33);
            v47 = v46;

            v48 = sub_1C6F765A4(v45, v47, &v64);

            *(v43 + 4) = v48;
            _os_log_impl(&dword_1C6F5C000, v41, v42, "[validateUserPromptGibberish] The user prompt has no annotation, and the token %{sensitive}s was not inferred as in a currently supported languages, the user prompt is then considered gibberish", v43, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v44);
            MEMORY[0x1CCA5F8E0](v44, -1, -1);
            MEMORY[0x1CCA5F8E0](v43, -1, -1);
          }

          else
          {
          }

          LOBYTE(v18) = 0;
          v10 = v50;
          goto LABEL_5;
        }

        v23 = v63;
      }

      v28 += 4;
      ++v27;
      v26 = v29;
    }
  }

  v38 = sub_1C754FEEC();
  v39 = sub_1C75511BC();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_1C6F5C000, v38, v39, "[validateUserPromptGibberish] The user prompt tokenization is empty, it can be considered gibberish", v40, 2u);
    MEMORY[0x1CCA5F8E0](v40, -1, -1);
  }

  LOBYTE(v18) = 0;
LABEL_5:
  __swift_project_boxed_opaque_existential_1(v54, v54[3]);
  v19 = v55;
  sub_1C754F1AC();
  (*(v56 + 8))(v19, v10);
  return v18 & 1;
}

void sub_1C739F768(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (PFOSVariantHasInternalDiagnostics() && *(a2 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_shouldForceDiagnosticAsSeedOrFCS) != 1)
  {
    if (qword_1EDD07C00 != -1)
    {
      OUTLINED_FUNCTION_0_159(&qword_1EDD07C00);
    }

    v3 = sub_1C754FF1C();
    oslog = OUTLINED_FUNCTION_18_55(v3, qword_1EDD289D8);
    sub_1C755118C();
    OUTLINED_FUNCTION_16_1();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = OUTLINED_FUNCTION_127();
      *v5 = 0;
      _os_log_impl(&dword_1C6F5C000, oslog, a2, "LLM Call: Skipping public diagnostics as user is internal.", v5, 2u);
      OUTLINED_FUNCTION_109();
    }
  }

  else
  {
    if (qword_1EC214138 != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&dword_1EC25B920);
    sub_1C73A1920(&qword_1EC25B928, __dst);

    os_unfair_lock_unlock(&dword_1EC25B920);
  }
}

void sub_1C739F8D8(const void *a1, uint64_t a2)
{
  v4 = sub_1C75506DC();
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (PFOSVariantHasInternalDiagnostics() && *(a2 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_shouldForceDiagnosticAsSeedOrFCS) != 1)
  {
    if (qword_1EDD07C00 != -1)
    {
      OUTLINED_FUNCTION_0_159(&qword_1EDD07C00);
    }

    v24 = sub_1C754FF1C();
    v30 = OUTLINED_FUNCTION_18_55(v24, qword_1EDD289D8);
    sub_1C755118C();
    OUTLINED_FUNCTION_16_1();
    if (os_log_type_enabled(v30, v25))
    {
      v26 = OUTLINED_FUNCTION_127();
      *v26 = 0;
      _os_log_impl(&dword_1C6F5C000, v30, a2, "Storyteller: Skipping public diagnostics as user is internal.", v26, 2u);
      OUTLINED_FUNCTION_109();
    }

    v27 = v30;
  }

  else
  {
    memcpy(__dst, a1, sizeof(__dst));
    v8 = sub_1C73A1B7C(__dst);
    v9 = sub_1C6F66C14(__dst);
    if (v8 == 1)
    {
      if (qword_1EDD07C00 != -1)
      {
        OUTLINED_FUNCTION_0_159(&qword_1EDD07C00);
      }

      v10 = sub_1C754FF1C();
      v11 = OUTLINED_FUNCTION_18_55(v10, qword_1EDD289D8);
      v12 = sub_1C755118C();
      if (!os_log_type_enabled(v11, v12))
      {
        goto LABEL_14;
      }

      v13 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v13);
      v14 = "Storyteller: Wrong enum send to function.";
LABEL_13:
      _os_log_impl(&dword_1C6F5C000, v11, v12, v14, v4, 2u);
      OUTLINED_FUNCTION_109();
LABEL_14:

      return;
    }

    v15 = v9;
    v16 = *v9;
    *&v31 = 0xA3A7365756C6156;
    *(&v31 + 1) = 0xE800000000000000;
    sub_1C739FD74(v16);
    v18 = v17;
    MEMORY[0x1CCA5CD70]();

    MEMORY[0x1CCA5CD70](2570, 0xE200000000000000);
    v35 = v31;
    MEMORY[0x1CCA5CD70](0xA3A79726F7453, 0xE700000000000000);
    v19 = *(v15 + 3);
    v31 = *(v15 + 1);
    v32 = v19;
    v20 = *(v15 + 7);
    v33 = *(v15 + 5);
    v34 = v20;
    v21 = FreeformStoryCompletionSync.description.getter();
    MEMORY[0x1CCA5CD70](v21);

    MEMORY[0x1CCA5CD70](10, 0xE100000000000000);
    sub_1C75506CC();
    sub_1C755069C();
    OUTLINED_FUNCTION_89_0();

    (*(v5 + 8))(v7, v4);
    if (v18 >> 60 == 15)
    {
      if (qword_1EDD07C00 != -1)
      {
        OUTLINED_FUNCTION_0_159(&qword_1EDD07C00);
      }

      v22 = sub_1C754FF1C();
      v11 = OUTLINED_FUNCTION_18_55(v22, qword_1EDD289D8);
      v12 = sub_1C755119C();
      if (!os_log_type_enabled(v11, v12))
      {
        goto LABEL_14;
      }

      v23 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v23);
      v14 = "Storyteller: couldn't encode string.";
      goto LABEL_13;
    }

    if (qword_1EC214140 != -1)
    {
      OUTLINED_FUNCTION_1_118(&qword_1EC214140);
    }

    os_unfair_lock_lock(&dword_1EC25B930);
    sub_1C739FF6C(&qword_1EC25B938);
    os_unfair_lock_unlock(&dword_1EC25B930);
    if (qword_1EC214120 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_11_66();
    sub_1C7161C08();
    v28 = OUTLINED_FUNCTION_15_1();
    sub_1C70B5C10(v28, v29);
  }
}

void sub_1C739FD74(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  sub_1C75504FC();
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (v5)
  {
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (v7 << 10) | (16 * v10);
    v12 = (*(a1 + 48) + v11);
    v13 = (*(a1 + 56) + v11);
    v15 = *v13;
    v14 = v13[1];
    v16 = sub_1C73A1430(*v12, v12[1]);
    if (v17)
    {
      v22 = v16;
      v23 = v17;
      sub_1C75504FC();
      sub_1C75504FC();
      MEMORY[0x1CCA5CD70](592442, 0xE300000000000000);
      MEMORY[0x1CCA5CD70](v15, v14);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB1814();
        v8 = v20;
      }

      v18 = *(v8 + 16);
      if (v18 >= *(v8 + 24) >> 1)
      {
        sub_1C6FB1814();
        v8 = v21;
      }

      *(v8 + 16) = v18 + 1;
      v19 = v8 + 16 * v18;
      *(v19 + 32) = v22;
      *(v19 + 40) = v23;
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
      sub_1C703328C();
      sub_1C75505FC();

      return;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

double sub_1C739FF6C(uint64_t *a1)
{
  if (qword_1EC214120 != -1)
  {
    swift_once();
  }

  v3 = qword_1EC25B900;
  v2 = *algn_1EC25B908;
  sub_1C75504FC();
  sub_1C6FB0D6C();
  v4 = *(*a1 + 16);
  sub_1C6FB1594();
  v5 = *a1;
  *(v5 + 16) = v4 + 1;
  v6 = v5 + (v4 << 6);
  *(v6 + 32) = v3;
  *(v6 + 40) = v2;
  strcpy((v6 + 48), "Story Details");
  *(v6 + 62) = -4864;
  result = 0.0;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *a1 = v5;
  return result;
}

uint64_t sub_1C73A0040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[113] = a5;
  v5[112] = a4;
  v6 = sub_1C75506DC();
  v5[114] = v6;
  OUTLINED_FUNCTION_18(v6);
  v5[115] = v7;
  v5[116] = OUTLINED_FUNCTION_77();
  v8 = sub_1C754DF6C();
  v5[117] = v8;
  OUTLINED_FUNCTION_18(v8);
  v5[118] = v9;
  v5[119] = OUTLINED_FUNCTION_77();
  sub_1C754F2FC();
  v5[120] = OUTLINED_FUNCTION_77();
  v10 = sub_1C754E15C();
  v5[121] = v10;
  OUTLINED_FUNCTION_18(v10);
  v5[122] = v11;
  v5[123] = OUTLINED_FUNCTION_77();

  return MEMORY[0x1EEE6DFA0](sub_1C73A01B0, 0, 0);
}

uint64_t sub_1C73A01B0(__n128 a1)
{
  if (PFOSVariantHasInternalDiagnostics() && *(*(v1 + 896) + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_shouldForceDiagnosticAsSeedOrFCS) != 1)
  {
    if (qword_1EDD07C00 != -1)
    {
      OUTLINED_FUNCTION_0_159(&qword_1EDD07C00);
    }

    v28 = sub_1C754FF1C();
    v24 = OUTLINED_FUNCTION_18_55(v28, qword_1EDD289D8);
    v25 = sub_1C755118C();
    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_18;
    }

    v26 = OUTLINED_FUNCTION_127();
    *v26 = 0;
    v27 = "Query Understanding: Skipping public diagnostics as user is internal.";
    goto LABEL_17;
  }

  memcpy((v1 + 16), *(v1 + 904), 0x90uLL);
  if (sub_1C73A1B7C(v1 + 16) == 1)
  {
    v2 = *(v1 + 904);
    v3 = sub_1C6F66C14(v1 + 16);
    memcpy((v1 + 304), v3, 0x90uLL);
    v5 = *(v1 + 304);
    v4 = *(v1 + 312);
    *(v1 + 992) = v5;
    *(v1 + 1000) = v4;
    v6 = *(v1 + 336);
    *(v1 + 1008) = *(v1 + 320);
    *(v1 + 1024) = v6;
    v7 = *(v1 + 440);
    *(v1 + 1040) = v7;
    type metadata accessor for PromptSanitizer(0);
    v8 = swift_allocObject();
    *(v1 + 1048) = v8;
    v9 = OBJC_IVAR____TtC18PhotosIntelligence15PromptSanitizer_logger;
    memcpy((v1 + 160), v2, 0x90uLL);
    v10 = sub_1C6F66C14(v1 + 160);
    sub_1C73A1B88(v10, v1 + 448);
    if (qword_1EDD0B9A0 != -1)
    {
      swift_once();
    }

    v11 = *(v1 + 984);
    v12 = *(v1 + 976);
    v13 = *(v1 + 968);
    v14 = sub_1C754FF1C();
    *(v1 + 1056) = v14;
    v15 = __swift_project_value_buffer(v14, qword_1EDD0B9A8);
    (*(*(v14 - 8) + 16))(v8 + v9, v15, v14);
    *(v1 + 1064) = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    OUTLINED_FUNCTION_10_2();
    sub_1C7069CE4(0xD000000000000018, v16, v17);
    sub_1C754E11C();
    *(v1 + 1072) = sub_1C754E04C();
    *(v1 + 1080) = v18;
    (*(v12 + 8))(v11, v13);
    v19 = MEMORY[0x1E69E7CC0];
    *(v1 + 592) = MEMORY[0x1E69E7CC0];
    *(v1 + 600) = v19;
    *(v1 + 608) = v19;
    *(v1 + 616) = v19;
    *(v1 + 624) = v19;
    *(v1 + 632) = v19;
    *(v1 + 640) = v19;
    *(v1 + 648) = v19;
    *(v1 + 656) = v19;
    *(v1 + 664) = v19;
    sub_1C754F41C();
    *(v1 + 856) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219EA0, &unk_1C75706A0);
    *(v1 + 864) = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_0((v1 + 832));
    MEMORY[0x1CCA5B6D0]();
    sub_1C754F30C();
    v20 = swift_task_alloc();
    *(v1 + 1088) = v20;
    *v20 = v1;
    v20[1] = sub_1C73A0644;
    v21 = *(v1 + 960);

    return PromptSanitizer.sanitizePrompt(from:extendedTokens:queryTokens:eventRecorder:progressReporter:)(v5, (v1 + 592), v7, v1 + 832, v21);
  }

  sub_1C6F66C14(v1 + 16);
  if (qword_1EDD07C00 != -1)
  {
    OUTLINED_FUNCTION_0_159(&qword_1EDD07C00);
  }

  v23 = sub_1C754FF1C();
  v24 = OUTLINED_FUNCTION_18_55(v23, qword_1EDD289D8);
  v25 = sub_1C755118C();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = OUTLINED_FUNCTION_127();
    *v26 = 0;
    v27 = "Query Understanding: Wrong enum send to function.";
LABEL_17:
    _os_log_impl(&dword_1C6F5C000, v24, v25, v27, v26, 2u);
    OUTLINED_FUNCTION_109();
  }

LABEL_18:

  OUTLINED_FUNCTION_7_80();

  v29 = *(v1 + 8);

  return v29();
}

uint64_t sub_1C73A0644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v5;
  *(*v5 + 1096) = v4;

  if (v4)
  {

    memcpy(v9 + 84, v9 + 74, 0x50uLL);
    sub_1C7027A58((v9 + 84));
    v10 = sub_1C73A0DA8;
  }

  else
  {
    v9[138] = a4;
    v9[139] = a2;
    v9[140] = a1;
    memcpy(v9 + 94, v9 + 74, 0x50uLL);
    sub_1C7027A58((v9 + 94));

    __swift_destroy_boxed_opaque_existential_1(v9 + 104);
    v10 = sub_1C73A07D8;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

void sub_1C73A07D8()
{
  v48 = v0;
  v1 = *(v0 + 1112);
  v2 = *(v0 + 1120);
  v46 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1072);
  v5 = *(v0 + 1064);
  OUTLINED_FUNCTION_22_1();
  sub_1C755180C();

  OUTLINED_FUNCTION_13_72();
  __dst[0] = v6;
  __dst[1] = v7;
  MEMORY[0x1CCA5CD70](v4, v3);

  v8 = OUTLINED_FUNCTION_5_86();
  MEMORY[0x1CCA5CD70](v8);
  sub_1C754DF5C();
  v9 = sub_1C754DECC();
  v10 = OUTLINED_FUNCTION_323();
  v11(v10);
  v12 = [v5 stringFromDate_];

  v13 = sub_1C755068C();
  v15 = v14;

  MEMORY[0x1CCA5CD70](v13, v15);

  OUTLINED_FUNCTION_10_2();
  MEMORY[0x1CCA5CD70](0xD000000000000011);
  if (v1)
  {
  }

  else
  {
    v1 = 0x80000001C75AD310;
    v2 = 0xD000000000000029;
  }

  OUTLINED_FUNCTION_19_64();
  v16 = *(v0 + 1008);
  MEMORY[0x1CCA5CD70](v2, v1);

  if (v16)
  {
    v17 = *(v0 + 1032);
    v18 = *(v0 + 1024);
    v16 = *(v0 + 1016);
    v19 = *(v0 + 1008);
    v20 = *(v0 + 1000);
    OUTLINED_FUNCTION_22_1();
    sub_1C755180C();
    MEMORY[0x1CCA5CD70](v3 + 8, 0x80000001C75AD360);
    *(v0 + 872) = *(v16 + 16);
    v21 = sub_1C7551D8C();
    v3 = v22;
    MEMORY[0x1CCA5CD70](v21);
    OUTLINED_FUNCTION_19_64();

    MEMORY[0x1CCA5CD70](v3 + 5, 0x80000001C75AD380);
    *(v0 + 880) = *(v18 + 16);
    v23 = sub_1C7551D8C();
    MEMORY[0x1CCA5CD70](v23);

    v24 = OUTLINED_FUNCTION_6_93();
    MEMORY[0x1CCA5CD70](v24);
    *(v0 + 888) = v17;
    sub_1C75504FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    sub_1C703328C();
    OUTLINED_FUNCTION_15_71();
    v25 = sub_1C75505FC();
    v27 = v26;
    sub_1C7318A10(v20, v19);

    MEMORY[0x1CCA5CD70](v25, v27);

    MEMORY[0x1CCA5CD70](__dst[0], __dst[1]);
  }

  v28 = *(v0 + 928);
  v29 = *(v0 + 920);
  v30 = *(v0 + 912);
  OUTLINED_FUNCTION_22_1();
  sub_1C755180C();
  sub_1C75504FC();

  MEMORY[0x1CCA5CD70](v3 + 3, 0x80000001C75AD340);
  memcpy(__dst, (v0 + 352), 0x51uLL);
  QueryAnnotation.description.getter();
  v32 = v31;
  v34 = v33;
  sub_1C70476BC(v0 + 352);
  MEMORY[0x1CCA5CD70](v32, v34);

  MEMORY[0x1CCA5CD70](10, 0xE100000000000000);
  sub_1C75506CC();
  sub_1C755069C();
  OUTLINED_FUNCTION_89_0();

  (*(v29 + 8))(v28, v30);
  if (v16 >> 60 == 15)
  {

    if (qword_1EDD07C00 != -1)
    {
      OUTLINED_FUNCTION_0_159(&qword_1EDD07C00);
    }

    v35 = OUTLINED_FUNCTION_18_55(*(v0 + 1056), qword_1EDD289D8);
    sub_1C755119C();
    OUTLINED_FUNCTION_16_1();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v37);
      OUTLINED_FUNCTION_6(&dword_1C6F5C000, v38, v39, "Query Understanding: couldn't encode string.");
      OUTLINED_FUNCTION_109();
    }

    v40 = *(v0 + 992);

LABEL_21:
    OUTLINED_FUNCTION_7_80();

    v45 = *(v0 + 8);

    v45();
    return;
  }

  if (qword_1EC214140 != -1)
  {
    OUTLINED_FUNCTION_1_118(&qword_1EC214140);
  }

  os_unfair_lock_lock(&dword_1EC25B930);
  sub_1C73A135C(&qword_1EC25B938);
  if (!v46)
  {

    os_unfair_lock_unlock(&dword_1EC25B930);
    if (qword_1EC214128 != -1)
    {
      OUTLINED_FUNCTION_4_90(&qword_1EC214128);
    }

    v41 = *(v0 + 1064);
    v42 = *(v0 + 992);
    OUTLINED_FUNCTION_11_66();
    sub_1C7161C08();

    v43 = OUTLINED_FUNCTION_15_1();
    sub_1C70B5C10(v43, v44);
    goto LABEL_21;
  }

  os_unfair_lock_unlock(&dword_1EC25B930);
}

uint64_t sub_1C73A0DA8()
{
  v38 = v0;
  OUTLINED_FUNCTION_19_64();
  __swift_destroy_boxed_opaque_existential_1(v0 + 104);
  v2 = v0[135];
  v3 = v0[134];
  v4 = v0[133];
  v5 = v0[119];
  v6 = v0[118];
  v7 = v0[117];
  sub_1C755180C();

  OUTLINED_FUNCTION_13_72();
  __dst[0] = v8;
  __dst[1] = v9;
  MEMORY[0x1CCA5CD70](v3, v2);

  v10 = OUTLINED_FUNCTION_5_86();
  MEMORY[0x1CCA5CD70](v10);
  sub_1C754DF5C();
  v11 = sub_1C754DECC();
  (*(v6 + 8))(v5, v7);
  v12 = [v4 stringFromDate_];

  v13 = sub_1C755068C();
  v15 = v14;

  MEMORY[0x1CCA5CD70](v13, v15);

  OUTLINED_FUNCTION_10_2();
  MEMORY[0x1CCA5CD70](0xD000000000000011);
  v16 = v0[126];
  MEMORY[0x1CCA5CD70](v1 + 24, 0x80000001C75AD310);

  if (v16)
  {
    v17 = v0[129];
    v18 = v0[128];
    v19 = v0[127];
    v36 = v0[126];
    v20 = v0[125];
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_1C755180C();
    MEMORY[0x1CCA5CD70](v1 + 8, 0x80000001C75AD360);
    v0[109] = *(v19 + 16);
    OUTLINED_FUNCTION_323();
    v21 = sub_1C7551D8C();
    v1 = v22;
    MEMORY[0x1CCA5CD70](v21);
    OUTLINED_FUNCTION_19_64();

    MEMORY[0x1CCA5CD70](v1 + 5, 0x80000001C75AD380);
    v0[110] = *(v18 + 16);
    OUTLINED_FUNCTION_323();
    v23 = sub_1C7551D8C();
    MEMORY[0x1CCA5CD70](v23);

    v24 = OUTLINED_FUNCTION_6_93();
    MEMORY[0x1CCA5CD70](v24);
    v0[111] = v17;
    sub_1C75504FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    sub_1C703328C();
    OUTLINED_FUNCTION_15_71();
    sub_1C75505FC();
    sub_1C7318A10(v20, v36);

    v25 = OUTLINED_FUNCTION_323();
    MEMORY[0x1CCA5CD70](v25);

    MEMORY[0x1CCA5CD70](__dst[0], __dst[1]);
  }

  v26 = v0[116];
  v27 = v0[115];
  v28 = v0[114];
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_1C755180C();
  sub_1C75504FC();

  MEMORY[0x1CCA5CD70](v1 + 3, 0x80000001C75AD340);
  memcpy(__dst, v0 + 44, 0x51uLL);
  QueryAnnotation.description.getter();
  OUTLINED_FUNCTION_89_0();
  sub_1C70476BC((v0 + 44));
  v29 = OUTLINED_FUNCTION_15_1();
  MEMORY[0x1CCA5CD70](v29);

  MEMORY[0x1CCA5CD70](10, 0xE100000000000000);
  sub_1C75506CC();
  sub_1C755069C();
  OUTLINED_FUNCTION_89_0();

  (*(v27 + 8))(v26, v28);
  if (qword_1EC214140 != -1)
  {
    OUTLINED_FUNCTION_1_118(&qword_1EC214140);
  }

  os_unfair_lock_lock(&dword_1EC25B930);
  sub_1C73A135C(&qword_1EC25B938);

  os_unfair_lock_unlock(&dword_1EC25B930);
  if (qword_1EC214128 != -1)
  {
    OUTLINED_FUNCTION_4_90(&qword_1EC214128);
  }

  v30 = v0[133];
  v31 = v0[124];
  OUTLINED_FUNCTION_11_66();
  sub_1C7161C08();

  v32 = OUTLINED_FUNCTION_15_1();
  sub_1C70B5C10(v32, v33);
  OUTLINED_FUNCTION_7_80();

  v34 = v0[1];

  return v34();
}

double sub_1C73A135C(uint64_t *a1)
{
  if (qword_1EC214128 != -1)
  {
    swift_once();
  }

  v3 = qword_1EC25B910;
  v2 = *algn_1EC25B918;
  sub_1C75504FC();
  sub_1C6FB0D6C();
  v4 = *(*a1 + 16);
  sub_1C6FB1594();
  v5 = *a1;
  *(v5 + 16) = v4 + 1;
  v6 = v5 + (v4 << 6);
  *(v6 + 32) = v3;
  *(v6 + 40) = v2;
  strcpy((v6 + 48), "Query Details");
  *(v6 + 62) = -4864;
  result = 0.0;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *a1 = v5;
  return result;
}

uint64_t sub_1C73A1430(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10_2();
  v5 = v3 == 0xD000000000000012 && v4 == a2;
  if (v5 || (v6 = v3, (OUTLINED_FUNCTION_6_2(0xD000000000000012, v4) & 1) != 0))
  {
    OUTLINED_FUNCTION_8_72();
    return 0xD00000000000001ALL;
  }

  v7 = 0x6E6F63206566694CLL;
  OUTLINED_FUNCTION_10_2();
  v10 = v6 == 0xD000000000000012 && v9 == a2;
  if (!v10 && (OUTLINED_FUNCTION_6_2(0xD000000000000012, v9) & 1) == 0)
  {
    v7 = 0x69742079726F7453;
    v11 = v6 == 0x74695479726F7473 && a2 == 0xEA0000000000656CLL;
    if (!v11 && (OUTLINED_FUNCTION_6_2(0x74695479726F7473, 0xEA0000000000656CLL) & 1) == 0)
    {
      OUTLINED_FUNCTION_10_2();
      v13 = v6 == 0xD000000000000010 && v12 == a2;
      if (v13 || (OUTLINED_FUNCTION_6_2(0xD000000000000010, v12) & 1) != 0)
      {
        goto LABEL_23;
      }

      v7 = 0x6B6361626C6C6146;
      v14 = v6 == 0x6B6361626C6C6166 && a2 == 0xED00007972657551;
      if (!v14 && (OUTLINED_FUNCTION_6_2(0x6B6361626C6C6166, 0xED00007972657551) & 1) == 0)
      {
        OUTLINED_FUNCTION_10_2();
        v16 = v6 == 0xD000000000000015 && v15 == a2;
        if (v16 || (OUTLINED_FUNCTION_6_2(0xD000000000000015, v15) & 1) != 0)
        {
          OUTLINED_FUNCTION_8_72();
          return 0xD000000000000012;
        }

        v7 = 0x7972657551;
        OUTLINED_FUNCTION_10_2();
        v18 = v6 == 0xD000000000000018 && v17 == a2;
        if (!v18 && (OUTLINED_FUNCTION_6_2(0xD000000000000018, v17) & 1) == 0)
        {
          v7 = 0x7254207475706E49;
          OUTLINED_FUNCTION_10_2();
          v20 = v6 == 0xD000000000000013 && v19 == a2;
          if (!v20 && (OUTLINED_FUNCTION_6_2(0xD000000000000013, v19) & 1) == 0)
          {
            v7 = 0x54207463656C6553;
            OUTLINED_FUNCTION_10_2();
            v22 = v6 == 0xD000000000000019 && v21 == a2;
            if (!v22 && (OUTLINED_FUNCTION_6_2(0xD000000000000019, v21) & 1) == 0)
            {
              v7 = 0x6B63616279616C50;
              OUTLINED_FUNCTION_10_2();
              v24 = v6 == 0xD000000000000016 && v23 == a2;
              if (!v24 && (OUTLINED_FUNCTION_6_2(0xD000000000000016, v23) & 1) == 0)
              {
                v7 = 0x2072657470616843;
                OUTLINED_FUNCTION_10_2();
                v26 = v6 == 0xD000000000000013 && v25 == a2;
                if (!v26 && (OUTLINED_FUNCTION_6_2(0xD000000000000013, v25) & 1) == 0)
                {
                  OUTLINED_FUNCTION_10_2();
                  v28 = v6 == 0xD000000000000013 && v27 == a2;
                  if (v28 || (OUTLINED_FUNCTION_6_2(0xD000000000000013, v27) & 1) != 0)
                  {
LABEL_23:
                    OUTLINED_FUNCTION_8_72();
                    return 0xD000000000000014;
                  }

                  OUTLINED_FUNCTION_10_2();
                  v30 = v6 == 0xD000000000000013 && v29 == a2;
                  if (v30 || (OUTLINED_FUNCTION_6_2(0xD000000000000013, v29) & 1) != 0)
                  {
                    OUTLINED_FUNCTION_8_72();
                    return 0xD00000000000001DLL;
                  }

                  else
                  {
                    v31 = v6 == 0x6D726F6665657266 && a2 == 0xEF73746550736148;
                    if (v31 || (OUTLINED_FUNCTION_6_2(0x6D726F6665657266, 0xEF73746550736148) & 1) != 0)
                    {
                      OUTLINED_FUNCTION_8_72();
                      return 0xD000000000000019;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_10_2();
                      v33 = v6 == 0xD00000000000001FLL && v32 == a2;
                      if (v33 || (OUTLINED_FUNCTION_6_2(0xD00000000000001FLL, v32) & 1) != 0)
                      {
                        OUTLINED_FUNCTION_8_72();
                        return 0xD000000000000015;
                      }

                      else
                      {
                        v7 = 0x636F6C20656D6F48;
                        OUTLINED_FUNCTION_10_2();
                        v35 = v6 == 0xD00000000000001FLL && v34 == a2;
                        if (!v35 && (OUTLINED_FUNCTION_6_2(0xD00000000000001FLL, v34) & 1) == 0)
                        {
                          v7 = 0x61636F6C20706F54;
                          OUTLINED_FUNCTION_10_2();
                          v37 = v6 == 0xD00000000000001FLL && v36 == a2;
                          if (!v37 && (OUTLINED_FUNCTION_6_2(0xD00000000000001FLL, v36) & 1) == 0)
                          {
                            v38 = v6 == 0x737469617274 && a2 == 0xE600000000000000;
                            if (!v38 && (OUTLINED_FUNCTION_6_2(0x737469617274, 0xE600000000000000) & 1) == 0 && (v6 != 0x6D6F725072657375 || a2 != 0xEA00000000007470))
                            {
                              OUTLINED_FUNCTION_6_2(0x6D6F725072657375, 0xEA00000000007470);
                            }

                            return 0;
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

  return v7;
}

void sub_1C73A1920(uint64_t *a1, const void *a2)
{
  sub_1C73A1EE0(a2, v13);
  sub_1C73A1BF8(a1, a2);
  if (*(*a1 + 16) < v4)
  {
    __break(1u);
  }

  else
  {
    sub_1C71596B4(v4);
    sub_1C6FB0DD0();
    v5 = *(*a1 + 16);
    sub_1C6FB15F0(v5, v6, v7, v8, v9, v10, v11);
    v12 = *a1;
    *(v12 + 16) = v5 + 1;
    memcpy((v12 + 144 * v5 + 32), a2, 0x90uLL);
    *a1 = v12;
    sub_1C73A1EE0(a2, v13);
  }
}

uint64_t sub_1C73A19E4(uint64_t a1, const void *a2)
{
  memcpy(__dst, a2, sizeof(__dst));
  v4 = 0;
  v5 = *(a1 + 16);
  for (i = (a1 + 32); ; i += 144)
  {
    if (v5 == v4)
    {
      sub_1C73A1F3C(a2);
      return 0;
    }

    memcpy(v12, i, sizeof(v12));
    memcpy(v13, i, sizeof(v13));
    memcpy(v14, __dst, sizeof(v14));
    memcpy(v15, i, sizeof(v15));
    v7 = sub_1C73A1B7C(v15);
    sub_1C6F66C14(v15);
    if (v7 != 1)
    {
      break;
    }

    memcpy(v17, a2, sizeof(v17));
    v8 = sub_1C73A1B7C(v17);
    sub_1C6F66C14(v17);
    if (v8 == 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    sub_1C73A1EE0(v12, v11);
    sub_1C73A1EE0(a2, v11);
    sub_1C73A1F90(v13);
    ++v4;
  }

  memcpy(v16, a2, sizeof(v16));
  v9 = sub_1C73A1B7C(v16);
  sub_1C6F66C14(v16);
  if (v9 == 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  sub_1C73A1EE0(v12, v11);
  sub_1C73A1EE0(a2, v11);
  sub_1C73A1F90(v13);
  sub_1C73A1F3C(a2);
  return v4;
}

uint64_t sub_1C73A1B88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B070, &qword_1C7585E38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1C73A1BF8(uint64_t *a1, const void *a2)
{
  memcpy(__dst, a2, sizeof(__dst));
  v5 = *a1;
  sub_1C73A1EE0(a2, v23);
  v6 = sub_1C73A19E4(v5, a2);
  if (v2)
  {
    sub_1C73A1F3C(a2);
    return;
  }

  if (v7)
  {
LABEL_4:
    sub_1C73A1F3C(a2);
    return;
  }

  v8 = v6;
  v9 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    for (i = 144 * v6 + 176; ; i += 144)
    {
      v11 = *(v5 + 16);
      if (v9 == v11)
      {
        goto LABEL_4;
      }

      if (v9 >= v11)
      {
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
        break;
      }

      memcpy(__src, (v5 + i), sizeof(__src));
      memmove(v23, (v5 + i), 0x90uLL);
      memcpy(v24, __dst, sizeof(v24));
      memcpy(v25, __src, sizeof(v25));
      v12 = sub_1C73A1B7C(v25);
      sub_1C6F66C14(v25);
      if (v12 == 1)
      {
        memcpy(v27, a2, sizeof(v27));
        v13 = sub_1C73A1B7C(v27);
        sub_1C6F66C14(v27);
        if (v13 == 1)
        {
          goto LABEL_22;
        }
      }

      else
      {
        memcpy(v26, a2, sizeof(v26));
        v16 = sub_1C73A1B7C(v26);
        sub_1C6F66C14(v26);
        if (v16 != 1)
        {
LABEL_22:
          sub_1C73A1EE0(a2, v21);
          sub_1C73A1EE0(__src, v21);
          sub_1C73A1F90(v23);
          goto LABEL_23;
        }
      }

      sub_1C73A1EE0(a2, v21);
      sub_1C73A1EE0(__src, v21);
      sub_1C73A1F90(v23);
      if (v9 != v8)
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_25;
        }

        v14 = *(v5 + 16);
        if (v8 >= v14)
        {
          goto LABEL_26;
        }

        memcpy(v20, (v5 + 32 + 144 * v8), sizeof(v20));
        if (v9 >= v14)
        {
          goto LABEL_27;
        }

        memcpy(v21, (v5 + i), sizeof(v21));
        sub_1C73A1EE0(v20, v19);
        sub_1C73A1EE0(v21, v19);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C70E42F0();
          v5 = v17;
        }

        if (v8 >= *(v5 + 16))
        {
          goto LABEL_28;
        }

        v15 = v5 + 144 * v8;
        memcpy(v18, (v15 + 32), sizeof(v18));
        memcpy((v15 + 32), v21, 0x90uLL);
        sub_1C73A1F3C(v18);
        if (v9 >= *(v5 + 16))
        {
          goto LABEL_29;
        }

        memcpy(v19, (v5 + i), sizeof(v19));
        memcpy((v5 + i), v20, 0x90uLL);
        sub_1C73A1F3C(v19);
        *a1 = v5;
      }

      ++v8;
LABEL_23:
      ++v9;
    }
  }

  __break(1u);
}

uint64_t sub_1C73A1F90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B078, &unk_1C7585E40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void static PNSuggestionWallpaperUtilities.filterMessagesBackdropSuggestions(_:fallback:)(uint64_t a1, char a2)
{
  v4 = sub_1C6FB6304();
  for (i = 0; v4 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1CCA5DDD0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v6 = *(a1 + 8 * i + 32);
    }

    v7 = v6;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    if (a2)
    {
      if ([v6 type] != 8)
      {
        goto LABEL_9;
      }
    }

    else if (!sub_1C73A2124(v6))
    {
LABEL_9:

      continue;
    }

    sub_1C755192C();
    sub_1C755196C();
    sub_1C755197C();
    sub_1C755193C();
  }
}

BOOL sub_1C73A2124(void *a1)
{
  if ([a1 type] != 14)
  {
    return 0;
  }

  if ([a1 subtype] == 1502)
  {
    return 1;
  }

  return [a1 subtype] == 1501;
}

id static PNSuggestionWallpaperUtilities.fetchFallbackMessagesBackdropSuggestions(in:)(uint64_t a1)
{
  v3 = a1;
  v2 = xmmword_1C7585E50;
  return MessagesBackdrop.Fetcher.fetchMessagesBackdropSuggestions(presentationTarget:)(&v2);
}

id static PNSuggestionWallpaperUtilities.fetchSharedWithYouMessagesBackdropSuggestions(in:)(uint64_t a1)
{
  v3 = a1;
  v2 = xmmword_1C756AD70;
  return MessagesBackdrop.Fetcher.fetchMessagesBackdropSuggestions(presentationTarget:)(&v2);
}

uint64_t StoryMusicCurator.requestMaestroMusicCuration(for:with:eventRecorder:)()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  *(v1 + 592) = v0;
  *(v1 + 584) = v4;
  *(v1 + 576) = v5;
  v6 = sub_1C754F38C();
  *(v1 + 600) = v6;
  OUTLINED_FUNCTION_18(v6);
  *(v1 + 608) = v7;
  *(v1 + 616) = swift_task_alloc();
  *(v1 + 624) = swift_task_alloc();
  *(v1 + 672) = *v3;
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C73A2410()
{
  v85 = v0;
  v2 = [*(*(v0 + 592) + 16) photoAnalysisClient];
  *(v0 + 632) = v2;
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 672);
    __swift_project_boxed_opaque_existential_1(*(v0 + 584), *(*(v0 + 584) + 24));
    v77 = v3;
    if (v4)
    {
      OUTLINED_FUNCTION_6_94("MusicCurator.flexRequestMusicCurationWithOptions", 48);
      if (qword_1EDD0ED88 != -1)
      {
        OUTLINED_FUNCTION_0_46(&qword_1EDD0ED88);
      }

      v5 = *(v0 + 576);
      v6 = sub_1C754FF1C();
      __swift_project_value_buffer(v6, &dword_1EDD28D48);
      sub_1C75504FC();
      v7 = sub_1C754FEEC();
      sub_1C755118C();

      if (OUTLINED_FUNCTION_140_0())
      {
        OUTLINED_FUNCTION_41_0();
        v3 = OUTLINED_FUNCTION_31_0();
        v84[0] = v3;
        *v5 = 136315138;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0, &unk_1C755C710);
        v8 = sub_1C75504BC();
        v1 = v9;
        v10 = sub_1C6F765A4(v8, v9, v84);

        *(v5 + 4) = v10;
        OUTLINED_FUNCTION_12_4(&dword_1C6F5C000, v11, v12, "(PAD pass thru) Request Flex Music Curation with options: %s");
        __swift_destroy_boxed_opaque_existential_1(v3);
        OUTLINED_FUNCTION_10_1();
        OUTLINED_FUNCTION_109();
      }

      v13 = *(v0 + 576);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AD88, &unk_1C7584630);
      OUTLINED_FUNCTION_99_1();
      v14 = sub_1C7551AEC();
      v15 = 0;
      v16 = v13 + 64;
      OUTLINED_FUNCTION_7_81();
      v78 = v17;
      for (i = v13; v3; *(v14 + 16) = v31)
      {
        OUTLINED_FUNCTION_84_5();
LABEL_14:
        v20 = v18 | (v15 << 6);
        v21 = (*(i + 48) + 16 * v20);
        v22 = v21[1];
        v82 = *v21;
        sub_1C6F774EC(*(i + 56) + 32 * v20, v0 + 272);
        sub_1C6F774EC(v0 + 272, v0 + 304);
        sub_1C75504FC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0, &unk_1C755C710);
        if (swift_dynamicCast())
        {
          v23 = *(v0 + 512);
          v24 = *(v0 + 520);
        }

        else
        {
          sub_1C6F774EC(v0 + 272, v0 + 336);
          v23 = sub_1C75506EC();
          v24 = v25;
        }

        __swift_destroy_boxed_opaque_existential_1((v0 + 272));
        OUTLINED_FUNCTION_24_39((v20 >> 3) & 0x1FFFFFFFFFFFFFF8, v76, v77, v78);
        v27 = (v26 + 16 * v20);
        *v27 = v82;
        v27[1] = v22;
        v28 = (*(v14 + 56) + 16 * v20);
        *v28 = v23;
        v28[1] = v24;
        v29 = *(v14 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_50;
        }
      }

      v19 = v15;
      while (1)
      {
        v15 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v15 >= v1)
        {
          v68 = v0 + 16;
          v69 = *(v0 + 592) + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
          swift_beginAccess();
          *(v69 + *(type metadata accessor for StoryMusicCurationDiagnostics(0) + 156)) = v14;

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0, &unk_1C755C710);
          v70 = sub_1C755048C();
          *(v0 + 656) = v70;
          *(v0 + 16) = v0;
          *(v0 + 56) = v0 + 528;
          *(v0 + 24) = sub_1C73A2E8C;
          v71 = swift_continuation_init();
          *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217910, &qword_1C756C928);
          *(v0 + 144) = MEMORY[0x1E69E9820];
          *(v0 + 152) = 1107296256;
          *(v0 + 160) = sub_1C73A3188;
          *(v0 + 168) = &block_descriptor_35;
          *(v0 + 176) = v71;
          [v77 requestFlexMusicCurationWithOptions:v70 reply:v0 + 144];
          goto LABEL_45;
        }

        ++v19;
        if (*(v16 + 8 * v15))
        {
          OUTLINED_FUNCTION_34_35();
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_6_94("MusicCurator.appleMusicRequestMusicCurationWithOptions", 54);
      if (qword_1EDD0ED88 != -1)
      {
        OUTLINED_FUNCTION_0_46(&qword_1EDD0ED88);
      }

      v42 = *(v0 + 576);
      v43 = sub_1C754FF1C();
      __swift_project_value_buffer(v43, &dword_1EDD28D48);
      sub_1C75504FC();
      v44 = sub_1C754FEEC();
      sub_1C755118C();

      if (OUTLINED_FUNCTION_140_0())
      {
        OUTLINED_FUNCTION_41_0();
        v3 = OUTLINED_FUNCTION_31_0();
        v84[0] = v3;
        *v42 = 136315138;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0, &unk_1C755C710);
        v45 = sub_1C75504BC();
        v1 = v46;
        v47 = sub_1C6F765A4(v45, v46, v84);

        *(v42 + 4) = v47;
        OUTLINED_FUNCTION_12_4(&dword_1C6F5C000, v48, v49, "(PAD pass thru) Request Apple Music Curation with options: %s");
        __swift_destroy_boxed_opaque_existential_1(v3);
        OUTLINED_FUNCTION_10_1();
        OUTLINED_FUNCTION_109();
      }

      v50 = *(v0 + 576);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AD88, &unk_1C7584630);
      OUTLINED_FUNCTION_24_2();
      v51 = sub_1C7551AEC();
      v52 = 0;
      v53 = v50 + 64;
      OUTLINED_FUNCTION_7_81();
      v79 = v54;
      for (j = v50; v3; *(v51 + 16) = v67)
      {
        OUTLINED_FUNCTION_84_5();
LABEL_37:
        v57 = v55 | (v52 << 6);
        v58 = (*(j + 48) + 16 * v57);
        v59 = v58[1];
        v83 = *v58;
        sub_1C6F774EC(*(j + 56) + 32 * v57, v0 + 368);
        sub_1C6F774EC(v0 + 368, v0 + 400);
        sub_1C75504FC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0, &unk_1C755C710);
        if (swift_dynamicCast())
        {
          v60 = *(v0 + 544);
          v61 = *(v0 + 552);
        }

        else
        {
          sub_1C6F774EC(v0 + 368, v0 + 432);
          v60 = sub_1C75506EC();
          v61 = v62;
        }

        __swift_destroy_boxed_opaque_existential_1((v0 + 368));
        OUTLINED_FUNCTION_24_39((v57 >> 3) & 0x1FFFFFFFFFFFFFF8, v76, v77, v79);
        v64 = (v63 + 16 * v57);
        *v64 = v83;
        v64[1] = v59;
        v65 = (*(v51 + 56) + 16 * v57);
        *v65 = v60;
        v65[1] = v61;
        v66 = *(v51 + 16);
        v30 = __OFADD__(v66, 1);
        v67 = v66 + 1;
        if (v30)
        {
          goto LABEL_51;
        }
      }

      v56 = v52;
      while (1)
      {
        v52 = v56 + 1;
        if (__OFADD__(v56, 1))
        {
          break;
        }

        if (v52 >= v1)
        {
          v68 = v0 + 80;
          v72 = *(v0 + 592) + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
          swift_beginAccess();
          *(v72 + *(type metadata accessor for StoryMusicCurationDiagnostics(0) + 152)) = v51;

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0, &unk_1C755C710);
          v73 = sub_1C755048C();
          *(v0 + 640) = v73;
          *(v0 + 80) = v0;
          *(v0 + 120) = v0 + 560;
          *(v0 + 88) = sub_1C73A2CE8;
          v74 = swift_continuation_init();
          v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217910, &qword_1C756C928);
          OUTLINED_FUNCTION_3_101(v75);
          *(v0 + 216) = 1107296256;
          *(v0 + 224) = sub_1C73A3188;
          *(v0 + 232) = &block_descriptor_4;
          *(v0 + 240) = v74;
          [v77 requestMusicCurationWithOptions:v73 reply:v0 + 208];
LABEL_45:

          return MEMORY[0x1EEE6DEC8](v68);
        }

        ++v56;
        if (*(v53 + 8 * v52))
        {
          OUTLINED_FUNCTION_34_35();
          goto LABEL_37;
        }
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (qword_1EDD0ED88 != -1)
  {
LABEL_52:
    OUTLINED_FUNCTION_0_46(&qword_1EDD0ED88);
  }

  v32 = sub_1C754FF1C();
  __swift_project_value_buffer(v32, &dword_1EDD28D48);
  v33 = sub_1C754FEEC();
  v34 = sub_1C755119C();
  if (OUTLINED_FUNCTION_21_0(v34))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_6(&dword_1C6F5C000, v35, v36, "(PAD pass thru) curateMusicFromMaestroKeywordScores photoAnalysisClientNotAvailable");
    OUTLINED_FUNCTION_109();
  }

  sub_1C70EB0F0();
  v37 = swift_allocError();
  OUTLINED_FUNCTION_30_40(v37, v38, v39);

  OUTLINED_FUNCTION_43();

  return v40();
}

uint64_t sub_1C73A2CE8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 648) = *(v3 + 112);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C73A2E8C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 664) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C73A3030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v11 = *(v10 + 640);
  v12 = *(v10 + 632);
  swift_willThrow();

  OUTLINED_FUNCTION_1_119();
  v13 = OUTLINED_FUNCTION_9_79();
  v14(v13);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_1C73A30DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v11 = *(v10 + 656);
  v12 = *(v10 + 632);
  swift_willThrow();

  OUTLINED_FUNCTION_1_119();
  v13 = OUTLINED_FUNCTION_9_79();
  v14(v13);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_1C73A3188(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;

    return sub_1C6FF5694();
  }

  else
  {
    sub_1C755068C();

    return sub_1C6FF0C9C();
  }
}

uint64_t StoryMusicCurator.requestRecentlyUsedSongs(for:eventRecorder:)()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  *(v1 + 416) = v4;
  *(v1 + 424) = v0;
  v5 = sub_1C754F38C();
  *(v1 + 432) = v5;
  OUTLINED_FUNCTION_18(v5);
  *(v1 + 440) = v6;
  *(v1 + 448) = swift_task_alloc();
  *(v1 + 456) = swift_task_alloc();
  *(v1 + 504) = *v3;
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73A3938()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 480) = *(v3 + 112);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C73A3A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_309();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_115_0();
  a18 = v20;
  v23 = *(v20 + 472);
  sub_1C75504FC();

  v24 = *(v20 + 456);
  v25 = *(v20 + 432);
  v26 = *(v20 + 440);
  __swift_project_boxed_opaque_existential_1(*(v20 + 416), *(*(v20 + 416) + 24));
  OUTLINED_FUNCTION_99_1();
  sub_1C754F1AC();
  (*(v26 + 8))(v24, v25);
  if (qword_1EDD0ED88 != -1)
  {
    OUTLINED_FUNCTION_0_46(&qword_1EDD0ED88);
  }

  v27 = sub_1C754FF1C();
  __swift_project_value_buffer(v27, &dword_1EDD28D48);
  OUTLINED_FUNCTION_24_2();
  sub_1C75504FC();
  v28 = sub_1C754FEEC();
  sub_1C755118C();

  v29 = OUTLINED_FUNCTION_140_0();
  v30 = *(v20 + 464);
  if (v29)
  {
    OUTLINED_FUNCTION_41_0();
    v31 = OUTLINED_FUNCTION_31_0();
    a10 = v31;
    *v25 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217158, &unk_1C7569450);
    v32 = sub_1C75504BC();
    v34 = v33;

    v35 = sub_1C6F765A4(v32, v34, &a10);

    *(v25 + 4) = v35;
    OUTLINED_FUNCTION_12_4(&dword_1C6F5C000, v36, v37, "(PAD pass thru) requestRecentlyUsedSongs response: %s");
    __swift_destroy_boxed_opaque_existential_1(v31);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_20_3();

  return v40(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12);
}

uint64_t sub_1C73A3C10()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 496) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C73A3D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_309();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_115_0();
  a18 = v20;
  v23 = *(v20 + 488);
  sub_1C75504FC();

  v25 = *(v20 + 440);
  v24 = *(v20 + 448);
  v26 = *(v20 + 432);
  __swift_project_boxed_opaque_existential_1(*(v20 + 416), *(*(v20 + 416) + 24));
  OUTLINED_FUNCTION_99_1();
  sub_1C754F1AC();
  (*(v25 + 8))(v24, v26);
  if (qword_1EDD0ED88 != -1)
  {
    OUTLINED_FUNCTION_0_46(&qword_1EDD0ED88);
  }

  v27 = sub_1C754FF1C();
  __swift_project_value_buffer(v27, &dword_1EDD28D48);
  OUTLINED_FUNCTION_24_2();
  sub_1C75504FC();
  v28 = sub_1C754FEEC();
  sub_1C755118C();

  v29 = OUTLINED_FUNCTION_140_0();
  v30 = *(v20 + 464);
  if (v29)
  {
    OUTLINED_FUNCTION_41_0();
    v31 = OUTLINED_FUNCTION_31_0();
    a10 = v31;
    *v26 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217158, &unk_1C7569450);
    v32 = sub_1C75504BC();
    v34 = v33;

    v35 = sub_1C6F765A4(v32, v34, &a10);

    *(v26 + 4) = v35;
    OUTLINED_FUNCTION_12_4(&dword_1C6F5C000, v36, v37, "(PAD pass thru) requestRecentlyUsedSongs response: %s");
    __swift_destroy_boxed_opaque_existential_1(v31);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_20_3();

  return v40(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12);
}

uint64_t sub_1C73A3EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v11 = *(v10 + 472);
  v12 = *(v10 + 464);
  swift_willThrow();

  OUTLINED_FUNCTION_1_119();
  v13 = OUTLINED_FUNCTION_9_79();
  v14(v13);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_1C73A3F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v11 = *(v10 + 488);
  v12 = *(v10 + 464);
  swift_willThrow();

  OUTLINED_FUNCTION_1_119();
  v13 = OUTLINED_FUNCTION_9_79();
  v14(v13);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t StoryMusicCurator.requestAndCacheAppleMusicSongs(with:eventRecorder:)()
{
  OUTLINED_FUNCTION_42();
  v1[21] = v2;
  v1[22] = v0;
  v1[20] = v3;
  v4 = sub_1C754F38C();
  v1[23] = v4;
  OUTLINED_FUNCTION_18(v4);
  v1[24] = v5;
  v1[25] = swift_task_alloc();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C73A40D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v13 = [*(*(v12 + 176) + 16) photoAnalysisClient];
  *(v12 + 208) = v13;
  if (v13)
  {
    v14 = v13;
    __swift_project_boxed_opaque_existential_1(*(v12 + 168), *(*(v12 + 168) + 24));
    sub_1C754F1CC();
    v15 = sub_1C7550B3C();
    *(v12 + 216) = v15;
    sub_1C75504DC();
    v16 = sub_1C755048C();
    *(v12 + 224) = v16;

    *(v12 + 16) = v12;
    *(v12 + 56) = v12 + 144;
    *(v12 + 24) = sub_1C73A4394;
    v17 = swift_continuation_init();
    *(v12 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217910, &qword_1C756C928);
    *(v12 + 80) = MEMORY[0x1E69E9820];
    *(v12 + 88) = 1107296256;
    *(v12 + 96) = sub_1C73A3188;
    *(v12 + 104) = &block_descriptor_14_0;
    *(v12 + 112) = v17;
    [v14 requestSongsForAdamIDs:v15 options:v16 reply:v12 + 80];
    OUTLINED_FUNCTION_44();

    return MEMORY[0x1EEE6DEC8](v18);
  }

  else
  {
    if (qword_1EDD0ED88 != -1)
    {
      OUTLINED_FUNCTION_0_46(&qword_1EDD0ED88);
    }

    v20 = sub_1C754FF1C();
    __swift_project_value_buffer(v20, &dword_1EDD28D48);
    v21 = sub_1C754FEEC();
    v22 = sub_1C755119C();
    if (OUTLINED_FUNCTION_21_0(v22))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_6(&dword_1C6F5C000, v23, v24, "(PAD pass thru) requestAndCacheAppleMusicSongs photoAnalysisClientNotAvailable");
      OUTLINED_FUNCTION_109();
    }

    sub_1C70EB0F0();
    v25 = swift_allocError();
    OUTLINED_FUNCTION_30_40(v25, v26, v27);

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_44();

    return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
  }
}

uint64_t sub_1C73A4394()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 232) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C73A4490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_94_0();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_115_0();
  a18 = v20;
  v24 = *(v20 + 216);
  v26 = *(v20 + 144);
  v25 = *(v20 + 152);

  if (qword_1EDD0ED88 != -1)
  {
    OUTLINED_FUNCTION_0_46(&qword_1EDD0ED88);
  }

  v27 = sub_1C754FF1C();
  __swift_project_value_buffer(v27, &dword_1EDD28D48);
  OUTLINED_FUNCTION_24_2();
  sub_1C75504FC();
  v28 = sub_1C754FEEC();
  v29 = sub_1C755118C();

  if (os_log_type_enabled(v28, v29))
  {
    OUTLINED_FUNCTION_41_0();
    v30 = OUTLINED_FUNCTION_17_6();
    a9 = v30;
    *v21 = 136315138;
    *(v21 + 4) = sub_1C6F765A4(v26, v25, &a9);
    OUTLINED_FUNCTION_21_2(&dword_1C6F5C000, v31, v32, "(PAD pass thru) requestAndCacheAppleMusicSongs response: %s");
    __swift_destroy_boxed_opaque_existential_1(v30);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_10_1();
  }

  v33 = *(v20 + 200);
  v34 = *(v20 + 208);
  v35 = *(v20 + 184);
  v36 = *(v20 + 192);
  __swift_project_boxed_opaque_existential_1(*(v20 + 168), *(*(v20 + 168) + 24));
  sub_1C754F1AC();

  (*(v36 + 8))(v33, v35);

  OUTLINED_FUNCTION_44();

  return v40(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
}

uint64_t sub_1C73A4618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_115_0();
  v13 = v12[28];
  v15 = v12[26];
  v14 = v12[27];
  v17 = v12[24];
  v16 = v12[25];
  v18 = v12[23];
  swift_willThrow();

  OUTLINED_FUNCTION_1_119();
  (*(v17 + 8))(v16, v18);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_20_3();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t sub_1C73A46BC(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;

    return sub_1C6FF5694();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217158, &unk_1C7569450);
    sub_1C75504AC();

    return sub_1C6FF5698();
  }
}

uint64_t AssetRichDescriptionsDataSource.init(storyPhotoLibraryContext:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 4);
  v5 = a1[2];
  sub_1C7047818();
  result = sub_1C755146C();
  *a2 = result;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  return result;
}

uint64_t AssetRichDescriptionsDataSource.getGeneralHighlightDictionary(for:progressReporter:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v3[2] = a1;
  v3[3] = v6;
  type metadata accessor for AssetMediaAnalyzer();
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = sub_1C73A492C;
  v8 = MEMORY[0x1E69E7CC0];
  v9 = MEMORY[0x1E69E7CC0];

  return static AssetMediaAnalyzer.requestHighlightInformation(for:queries:characterUUIDs:progressReporter:)(a1, v8, v9, a2);
}

uint64_t sub_1C73A492C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 40) = v4;
  *(v2 + 48) = v0;

  if (v0)
  {
    v5 = sub_1C73A4B88;
  }

  else
  {
    v5 = sub_1C73A4A34;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C73A4A34()
{
  v2 = v1[3];
  sub_1C75504FC();
  sub_1C755118C();
  OUTLINED_FUNCTION_21_4();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[5];
  if (v4)
  {
    sub_1C75504FC();
    sub_1C75504FC();
    v6 = swift_slowAlloc();
    *v6 = 134218496;
    *(v6 + 4) = sub_1C6FB6304();
    *(v6 + 12) = 2048;
    *(v6 + 14) = *(v5 + 16);
    *(v6 + 22) = 2048;
    v7 = sub_1C6FB6304();
    v8 = *(v5 + 16);

    v10 = v7 - v8;
    if (__OFSUB__(v7, v8))
    {
      __break(1u);
      return result;
    }

    v11 = v1[3];
    *(v6 + 24) = v10;

    _os_log_impl(&dword_1C6F5C000, v11, v0, "Highlight information for %ld fully processed video assets are requested, %ld successfully returned and %ld dropped.", v6, 0x20u);
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  v12 = v1[5];
  v13 = v1[1];

  return v13(v12);
}

uint64_t sub_1C73A4B88(uint64_t a1)
{
  v2 = *(v1 + 48);
  sub_1C755119C();
  sub_1C754FDFC();
  sub_1C75504DC();

  v3 = OUTLINED_FUNCTION_4_91();

  return v4(v3);
}

uint64_t AssetRichDescriptionsDataSource.findVideosWithoutHighlight(from:progressReporter:testDictionary:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 128) = a2;
  *(v4 + 136) = a3;
  *(v4 + 120) = a1;
  *(v4 + 144) = *v3;
  *(v4 + 200) = *(v3 + 16);
  *(v4 + 160) = *(v3 + 24);
  v5 = OUTLINED_FUNCTION_24_1();
  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C73A509C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  *(v6 + 192) = v5;

  v7 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C73A5350(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if ([a1 isVideo])
  {
    v7 = [a1 mediaAnalysisProperties];
    v8 = [v7 mediaAnalysisVersion];

    if (a4 < 1 || v8 >= a4)
    {
      swift_beginAccess();
      v10 = a1;
      MEMORY[0x1CCA5D040]();
      sub_1C6FB6328();
      sub_1C7550BEC();
      swift_endAccess();
    }
  }
}

uint64_t AssetRichDescriptionsDataSource.generateAssetSummaryInfos(for:characterUUIDs:chapter:eventRecorder:progressReporter:diagnosticContext:)(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 368) = a5;
  *(v7 + 376) = a6;
  *(v7 + 352) = a2;
  *(v7 + 360) = a4;
  *(v7 + 344) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B088, &unk_1C758DC20);
  *(v7 + 384) = swift_task_alloc();
  v9 = type metadata accessor for AssetSummaryInfo(0);
  *(v7 + 392) = v9;
  OUTLINED_FUNCTION_18(v9);
  *(v7 + 400) = v10;
  *(v7 + 408) = swift_task_alloc();
  *(v7 + 416) = swift_task_alloc();
  v11 = sub_1C754F2FC();
  *(v7 + 424) = v11;
  OUTLINED_FUNCTION_18(v11);
  *(v7 + 432) = v12;
  *(v7 + 440) = swift_task_alloc();
  *(v7 + 448) = swift_task_alloc();
  *(v7 + 456) = swift_task_alloc();
  *(v7 + 464) = swift_task_alloc();
  v13 = sub_1C754F38C();
  *(v7 + 472) = v13;
  OUTLINED_FUNCTION_18(v13);
  *(v7 + 480) = v14;
  *(v7 + 488) = swift_task_alloc();
  memcpy((v7 + 16), a3, 0x68uLL);
  *(v7 + 496) = *v6;
  *(v7 + 632) = *(v6 + 16);
  *(v7 + 512) = *(v6 + 24);
  v15 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1C73A562C()
{
  v1 = *(v0 + 360);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1C754F1CC();
  sub_1C754F2CC();
  v2 = *(v0 + 504);
  v3 = *(v0 + 360);
  sub_1C754F2BC();
  sub_1C754F2BC();
  __swift_project_boxed_opaque_existential_1(v3, v1[3]);
  sub_1C754F15C();
  v4 = v2;

  sub_1C75504FC();
  sub_1C706D154();
  v6 = StoryGenerationCache.assetSummaryInfo(for:)(v5);
  *(v0 + 520) = v6;

  sub_1C75504FC();
  sub_1C706D154();
  v11 = *(v6 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v13 = *(v0 + 416);
    v14 = *(v0 + 400);
    v54 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v11, 0, v7, v8, v9, v10);
    v12 = v54;
    v52 = v6;
    v15 = v6 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v16 = *(v14 + 72);
    do
    {
      v17 = *(v0 + 416);
      sub_1C73A7000(v15, v17, type metadata accessor for AssetSummaryInfo);
      v18 = *v17;
      v19 = *(v13 + 8);
      sub_1C75504FC();
      sub_1C73A6E84(v17);
      v21 = *(v54 + 16);
      v20 = *(v54 + 24);
      if (v21 >= v20 >> 1)
      {
        OUTLINED_FUNCTION_15(v20);
        OUTLINED_FUNCTION_137_0();
        sub_1C6F7ED9C(v23, v24, v25, v26, v27, v28, v29);
      }

      *(v54 + 16) = v21 + 1;
      v22 = v54 + 16 * v21;
      *(v22 + 32) = v18;
      *(v22 + 40) = v19;
      v15 += v16;
      --v11;
    }

    while (v11);
    v6 = v52;
  }

  v30 = *(v0 + 496);
  sub_1C74C3924();
  v32 = v31;

  v33 = sub_1C71CD85C(v32);
  *(v0 + 320) = v33;
  sub_1C755117C();
  OUTLINED_FUNCTION_21_4();
  if (os_log_type_enabled(v30, v34))
  {
    v35 = *(v0 + 496);
    sub_1C75504FC();
    v36 = swift_slowAlloc();
    *v36 = 134218240;
    *(v36 + 4) = *(v6 + 16);

    *(v36 + 12) = 2048;
    *(v36 + 14) = *(v33 + 16);
    _os_log_impl(&dword_1C6F5C000, v35, v12, "Found %ld cached asset summary infos, and need to fetch asset summary infos for %ld assets", v36, 0x16u);
    OUTLINED_FUNCTION_109();
  }

  v38 = *(v0 + 504);
  v37 = *(v0 + 512);
  v39 = *(v0 + 632);
  v40 = *(v0 + 496);
  v51 = *(v0 + 448);
  v53 = *(v0 + 464);
  v41 = *(v0 + 432);
  v50 = *(v0 + 424);
  v49 = objc_autoreleasePoolPush();
  __swift_project_boxed_opaque_existential_1((v0 + 224), *(v0 + 248));
  v42 = swift_task_alloc();
  *(v42 + 16) = v40;
  *(v42 + 24) = v38;
  *(v42 + 32) = v39;
  *(v42 + 40) = v37;
  *(v42 + 48) = v0 + 320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216F80, &unk_1C7568BA0);
  sub_1C754F1DC();
  *(v0 + 528) = 0;

  v43 = *(v0 + 328);
  *(v0 + 536) = v43;
  objc_autoreleasePoolPop(v49);
  *(v0 + 264) = v40;
  *(v0 + 272) = v38;
  *(v0 + 280) = v39;
  *(v0 + 288) = v37;
  v44 = *(v41 + 32);
  *(v0 + 544) = v44;
  *(v0 + 552) = (v41 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v44(v51, v53, v50);
  v45 = sub_1C75504DC();
  *(v0 + 560) = v45;
  v46 = swift_task_alloc();
  *(v0 + 568) = v46;
  *v46 = v0;
  v46[1] = sub_1C73A5B80;
  v47 = *(v0 + 448);

  return AssetRichDescriptionsDataSource.findVideosWithoutHighlight(from:progressReporter:testDictionary:)(v43, v47, v45);
}

uint64_t sub_1C73A5B80()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  *(v6 + 576) = v5;

  v7 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C73A5C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = v18[72];
  v20 = v19;
  if (*(v19 + 16))
  {
    v21 = v18[47];
    v20 = v18[72];
    if (v21)
    {
      sub_1C75504FC();
      sub_1C7162B24(0xD000000000000011, 0x80000001C75AD600, v21, v19);
      v20 = v18[72];
    }
  }

  swift_beginAccess();
  v22 = v18[40];
  v79 = v22 + 32;
  v81 = *(v22 + 16);
  v23 = v18;
  v24 = v22;
  sub_1C75504FC();
  v25 = 0;
  v26 = MEMORY[0x1E69E7CC0];
  v76 = v19;
  for (i = v23; ; v23 = i)
  {
    v23[73] = v26;
LABEL_6:
    if (v25 == v81)
    {
      break;
    }

    if (v25 >= *(v24 + 16))
    {
      __break(1u);
      goto LABEL_34;
    }

    v27 = (v79 + 16 * v25);
    v29 = *v27;
    v28 = v27[1];
    ++v25;
    if (*(v19 + 16))
    {
      sub_1C7551F3C();
      sub_1C75504FC();
      sub_1C75505AC();
      v30 = sub_1C7551FAC();
      v31 = ~(-1 << *(v20 + 32));
      while (1)
      {
        v32 = v30 & v31;
        if (((*(v20 + 56 + (((v30 & v31) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v30 & v31)) & 1) == 0)
        {
          break;
        }

        v33 = (*(v20 + 48) + 16 * v32);
        if (*v33 != v29 || v33[1] != v28)
        {
          v35 = sub_1C7551DBC();
          v30 = v32 + 1;
          if ((v35 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_6;
      }
    }

    else
    {
      sub_1C75504FC();
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6F7ED9C(0, *(v26 + 16) + 1, 1, v36, v37, v38, v39);
    }

    v41 = *(v26 + 16);
    v40 = *(v26 + 24);
    if (v41 >= v40 >> 1)
    {
      OUTLINED_FUNCTION_15(v40);
      OUTLINED_FUNCTION_137_0();
      sub_1C6F7ED9C(v43, v44, v45, v46, v47, v48, v49);
    }

    *(v26 + 16) = v41 + 1;
    v42 = v26 + 16 * v41;
    *(v42 + 32) = v29;
    *(v42 + 40) = v28;
    v19 = v76;
  }

  v50 = i[62];

  i[40] = v26;

  sub_1C755117C();
  OUTLINED_FUNCTION_21_4();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = i[62];
    sub_1C75504FC();
    v53 = swift_slowAlloc();
    *v53 = 134217984;
    *(v53 + 4) = *(v19 + 16);

    _os_log_impl(&dword_1C6F5C000, v52, v24, "Not fetching %ld asset summary infos because they are videos without highlight uuid set.", v53, 0xCu);
    OUTLINED_FUNCTION_109();
  }

  v54 = i[66];
  sub_1C754F2DC();
  if (v54)
  {
    v55 = i[67];
    v56 = i[60];
    v57 = i[61];
    v80 = i[59];
    v58 = i[54];
    v74 = i[53];
    v75 = i[57];
    v59 = i[45];
    v77 = i[46];

    __swift_destroy_boxed_opaque_existential_1(i + 28);
    v60 = *(v58 + 8);
    v60(v75, v74);
    OUTLINED_FUNCTION_10_3(v59);
    sub_1C754F1AC();
    (*(v56 + 8))(v57, v80);
    v60(v77, v74);
    OUTLINED_FUNCTION_1_120();

    OUTLINED_FUNCTION_43();

    v61();
  }

  else
  {
    v62 = *(i + 316);
    v63 = i[63];
    (i[68])(i[55], i[57], i[53]);
    sub_1C75504FC();
    v64 = v63;

    v65 = [v64 librarySpecificFetchOptions];
    i[74] = v65;
    [v65 setSharingFilter_];

    v66 = objc_opt_self();
    v67 = v65;
    v68 = sub_1C6FCA158(v26, v65, v66);
    i[75] = v68;

    if (!v68)
    {
LABEL_34:
      __break(1u);
      return;
    }

    memcpy(i + 15, i + 2, 0x68uLL);
    v69 = swift_task_alloc();
    i[76] = v69;
    *v69 = i;
    v69[1] = sub_1C73A61E0;
    v70 = i[64];
    v71 = i[55];
    v72 = i[47];
    v73 = i[44];

    sub_1C74B075C(v68, v73, i + 15, v70, (i + 28), v71, v72);
  }
}

uint64_t sub_1C73A61E0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 616) = v5;
  *(v3 + 624) = v0;

  if (v0)
  {

    v6 = sub_1C73A6B44;
  }

  else
  {
    v6 = sub_1C73A62F4;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

void sub_1C73A62F4()
{
  v81 = v0;
  v1 = *(v0 + 624);
  v2 = *(v0 + 600);
  v3 = *(v0 + 584);
  v5 = *(v0 + 504);
  v4 = *(v0 + 512);
  v6 = *(v0 + 632);

  v7 = objc_autoreleasePoolPush();
  sub_1C75504FC();
  v8 = objc_autoreleasePoolPush();
  sub_1C74C0AD4(v3, v5, v6, v4, &v80);
  if (!v1)
  {
    v71 = v7;
    v11 = *(v0 + 536);
    v12 = *(v0 + 512);
    v13 = *(v0 + 632);
    v78 = *(v0 + 496);

    objc_autoreleasePoolPop(v8);
    v14 = v80;
    __swift_project_boxed_opaque_existential_1((v0 + 224), *(v0 + 248));
    v15 = swift_task_alloc();
    *(v15 + 16) = v78;
    *(v15 + 32) = v13;
    *(v15 + 40) = v12;
    *(v15 + 48) = v11;
    *(v15 + 56) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B090, &qword_1C7585E98);
    sub_1C754F1DC();

    v16 = *(v0 + 336);
    sub_1C754F2DC();
    v70 = v16;
    v17 = *(v0 + 584);
    v18 = *(v17 + 16);
    v19 = *(v0 + 616);
    if (!v18)
    {

      v20._rawValue = MEMORY[0x1E69E7CC0];
LABEL_21:
      v48 = *(v0 + 512);
      v49 = *(v0 + 496);
      objc_autoreleasePoolPop(v71);
      StoryGenerationCache.cache(_:)(v20);
      sub_1C755117C();
      OUTLINED_FUNCTION_21_4();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = *(v0 + 496);
        sub_1C75504FC();
        v52 = swift_slowAlloc();
        *v52 = 134217984;
        *(v52 + 4) = *(v20._rawValue + 2);

        _os_log_impl(&dword_1C6F5C000, v51, v48, "Caching %ld new asset summary infos", v52, 0xCu);
        OUTLINED_FUNCTION_109();
      }

      rawValue = v20._rawValue;
      sub_1C754F2EC();
      v53 = *(v0 + 496);
      v54 = sub_1C755117C();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = *(v0 + 520);
        v56 = *(v0 + 496);
        v57 = *(v0 + 344);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v58 = swift_slowAlloc();
        *v58 = 134218240;
        v59 = *(v57 + 16);

        *(v58 + 4) = v59;

        *(v58 + 12) = 2048;
        v80 = rawValue;
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C6FD27FC(v55);
        v60 = v80[2];

        *(v58 + 14) = v60;

        _os_log_impl(&dword_1C6F5C000, v56, v54, "Needed %ld asset summary info. Found %ld summary infos from the cache and through fetching.", v58, 0x16u);
        OUTLINED_FUNCTION_109();
      }

      v61 = *(v0 + 536);
      v62 = *(v0 + 520);
      v63 = *(v0 + 504);
      v65 = *(v0 + 480);
      v64 = *(v0 + 488);
      v66 = *(v0 + 472);
      v67 = *(v0 + 360);
      v80 = rawValue;
      sub_1C6FD27FC(v62);

      __swift_destroy_boxed_opaque_existential_1((v0 + 224));
      __swift_project_boxed_opaque_existential_1(v67, v67[3]);
      sub_1C754F1AC();
      (*(v65 + 8))(v64, v66);

      OUTLINED_FUNCTION_329();

      __asm { BRAA            X2, X16 }
    }

    v75 = *(v0 + 400);
    v76 = *(v0 + 408);
    v74 = *(v0 + 392);
    v80 = MEMORY[0x1E69E7CC0];
    sub_1C75504FC();
    sub_1C716DEA0(0, v18, 0);
    v20._rawValue = v80;
    v21 = (v17 + 40);
    v22 = v70;
    v77 = v19;
    while (1)
    {
      v24 = *(v21 - 1);
      v23 = *v21;
      v25 = *(v19 + 16);
      sub_1C75504FC();
      if (v25 && (v26 = sub_1C6F78124(v24, v23), (v27 & 1) != 0))
      {
        v28 = (*(v19 + 56) + 16 * v26);
        v29 = v28[1];
        v79 = *v28;
        sub_1C75504FC();
      }

      else
      {
        v79 = 0;
        v29 = 0;
      }

      if (!*(v22 + 16))
      {
        break;
      }

      v30 = sub_1C6F78124(v24, v23);
      v31 = *(v0 + 384);
      if ((v32 & 1) == 0)
      {
        goto LABEL_15;
      }

      v33 = v30;
      v72 = v20._rawValue;
      v34 = *(v22 + 56);
      v35 = type metadata accessor for AssetDescriptionInfo(0);
      OUTLINED_FUNCTION_12();
      v37 = v34 + *(v36 + 72) * v33;
      v20._rawValue = v72;
      sub_1C73A7000(v37, v31, type metadata accessor for AssetDescriptionInfo);
      v38 = v31;
      v39 = 0;
      v40 = v35;
      v22 = v70;
LABEL_16:
      __swift_storeEnumTagSinglePayload(v38, v39, 1, v40);
      v41 = *(v0 + 408);
      sub_1C73A6F2C(*(v0 + 384), v41 + *(v74 + 24));
      *v41 = v24;
      v76[1] = v23;
      v76[2] = v79;
      v76[3] = v29;
      v80 = v20._rawValue;
      v43 = *(v20._rawValue + 2);
      v42 = *(v20._rawValue + 3);
      if (v43 >= v42 >> 1)
      {
        OUTLINED_FUNCTION_15(v42);
        OUTLINED_FUNCTION_137_0();
        sub_1C716DEA0(v45, v46, v47);
        v20._rawValue = v80;
      }

      v44 = *(v0 + 408);
      *(v20._rawValue + 2) = v43 + 1;
      sub_1C73A6F9C(v44, v20._rawValue + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v43);
      v21 += 2;
      --v18;
      v19 = v77;
      if (!v18)
      {

        goto LABEL_21;
      }
    }

    v31 = *(v0 + 384);
LABEL_15:
    v40 = type metadata accessor for AssetDescriptionInfo(0);
    v38 = v31;
    v39 = 1;
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_329();

  objc_autoreleasePoolPop(v9);
}

uint64_t sub_1C73A6B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  v15 = *(v14 + 600);
  v16 = *(v14 + 536);
  v17 = *(v14 + 504);
  v19 = *(v14 + 480);
  v18 = *(v14 + 488);
  v20 = *(v14 + 432);
  v33 = *(v14 + 424);
  v21 = *(v14 + 360);
  v31 = *(v14 + 472);
  v32 = *(v14 + 368);

  __swift_destroy_boxed_opaque_existential_1((v14 + 224));
  OUTLINED_FUNCTION_10_3(v21);
  sub_1C754F1AC();
  (*(v19 + 8))(v18, v31);
  (*(v20 + 8))(v32, v33);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_1();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, v31, v32, v33, a12, a13, a14);
}

void sub_1C73A6C90(void *a1@<X1>, unsigned __int16 a2@<W2>, void *a4@<X8>)
{
  v6 = a1;

  v7 = [v6 librarySpecificFetchOptions];
  [v7 setSharingFilter_];

  Property = static AssetDescriber.requiredFetchPropertySets.getter();
  sub_1C6FCA0EC(Property, v7);
  v9 = objc_opt_self();
  swift_beginAccess();
  v10 = sub_1C75504FC();
  v11 = sub_1C739DA94(v10, v7, v9);
  if (v11)
  {
    v12 = v11;

    *a4 = v12;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C73A6D84@<X0>(void *a1@<X1>, void *a2@<X4>, uint64_t a3@<X5>, void *a4@<X8>)
{
  v8 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
  v9 = sub_1C75504DC();
  v10 = objc_autoreleasePoolPush();
  sub_1C71FD578(a2, v8, a3, v9, &v12, &v13);
  objc_autoreleasePoolPop(v10);

  if (!v4)
  {
    *a4 = v13;
  }

  return result;
}

uint64_t sub_1C73A6E84(uint64_t a1)
{
  v2 = type metadata accessor for AssetSummaryInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C73A6F2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B088, &unk_1C758DC20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C73A6F9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetSummaryInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C73A7000(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  (*(v5 + 16))(a2, a1);
  return a2;
}

void static QueryToken.disambiguatedPersonQueryToken(with:personUUID:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v46 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217FD8, &unk_1C7575C30);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v45 - v11;
  v13 = sub_1C754E2FC();
  OUTLINED_FUNCTION_3_0();
  v47 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_112();
  sub_1C754E2CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
  v16 = swift_allocObject();
  v45 = xmmword_1C755BAB0;
  *(v16 + 16) = xmmword_1C755BAB0;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;
  v17 = objc_opt_self();
  sub_1C75504FC();
  v18 = [v17 entityCategoryTypeKeyForEntityTypeCategory_];
  if (v18)
  {
    v19 = sub_1C755068C();
    v21 = v20;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214D20, &qword_1C755BEA0);
    inited = swift_initStackObject();
    *(inited + 16) = v45;
    *(inited + 32) = v19;
    *(inited + 40) = v21;
    *(inited + 48) = v16;
    sub_1C75504FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    v18 = sub_1C75504DC();
  }

  (*(v47 + 16))(v12, v5, v13);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
  if (v18)
  {
    sub_1C70C14F8(v18);
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  objc_allocWithZone(MEMORY[0x1E6978A78]);
  sub_1C75504FC();
  v25 = v46;
  v26 = sub_1C7349A54(v46, a2, v12, v24);
  sub_1C6F65BE8(0, &qword_1EC217FE0, 0x1E6978A98);
  v27 = sub_1C71C3DE4();
  sub_1C6F65BE8(0, &qword_1EDD0CDB0, 0x1E6978A50);
  v28 = v27;
  *&v45 = v26;
  v29 = sub_1C734406C(v28, v26);
  v30 = [v29 suggestion];
  if (v30)
  {
    v31 = v30;
    v32 = v13;
    v33 = [objc_opt_self() PHSearchEntityCategoryTypeFromPHSearchSuggestionCategoriesType_];
    static StoryGenerationUtilities.queryTokenCategoryTypeString(for:)(v33, &v55);
    sub_1C72D5B04();
  }

  else
  {
    v34 = [v29 QUToken];
    if (!v34)
    {
      v32 = v13;
      goto LABEL_11;
    }

    v31 = v34;
    v32 = v13;
    sub_1C72D5FAC(v34, v25, a2, 0, v35, v36, v37, v38, v45, *(&v45 + 1), v46, v47, v48, v49, v50, v51, v52, v53, v54, v55);
  }

LABEL_11:
  sub_1C72D533C();
  v40 = v39;
  v41 = v25;
  v43 = v42;

  (*(v47 + 8))(v5, v32);
  LOBYTE(v55) = 1;
  sub_1C75504FC();

  v44 = v55;
  *a5 = v40;
  a5[1] = v43;
  a5[2] = v41;
  a5[3] = a2;
  OUTLINED_FUNCTION_0_160(v44);
}

void static QueryToken.disambiguatedDateQueryToken(with:startDate:endDate:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v66 = a1;
  v67 = a2;
  v8 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v64 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v63 = &v62 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217FD8, &unk_1C7575C30);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v68 = &v62 - v16;
  sub_1C754E2FC();
  OUTLINED_FUNCTION_3_0();
  v70 = v18;
  v71 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v69 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C754E2CC();
  v20 = [objc_opt_self() entityCategoryTypeKeyForEntityTypeCategory_];
  v65 = a3;
  if (v20)
  {
    v21 = sub_1C755068C();
    v62 = a4;
    v22 = v21;
    v23 = a3;
    v25 = v24;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B098, &qword_1C7585F00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C755BAB0;
    *(inited + 32) = v22;
    *(inited + 40) = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217288, &qword_1C7570F10);
    v27 = *(v10 + 72);
    v28 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1C75604F0;
    v30 = v29 + v28;
    v31 = *(v10 + 16);
    v31(v30, v23, v8);
    a4 = v62;
    (v31)(v30 + v27);
    *(inited + 48) = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217158, &unk_1C7569450);
    v20 = sub_1C75504DC();
  }

  v32 = v68;
  v33 = v71;
  (*(v70 + 16))(v68, v69, v71);
  __swift_storeEnumTagSinglePayload(v32, 0, 1, v33);
  if (v20)
  {
    sub_1C70C150C(v20);
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  v37 = v66;
  v36 = v67;
  v38 = a4;
  v39 = objc_allocWithZone(MEMORY[0x1E6978A78]);
  sub_1C75504FC();
  v40 = sub_1C7349A54(v37, v36, v68, v35);
  v41 = *(v10 + 16);
  v42 = v63;
  v41(v63, v65, v8);
  v43 = v64;
  v41(v64, v38, v8);
  v44 = objc_allocWithZone(MEMORY[0x1E6978A98]);
  v45 = sub_1C71C8C5C(v42, v43);
  sub_1C6F65BE8(0, &qword_1EDD0CDB0, 0x1E6978A50);
  v46 = v45;
  v47 = v40;
  v48 = sub_1C734406C(v46, v40);
  v49 = [v48 suggestion];
  if (v49)
  {
    v50 = v49;
    v51 = [objc_opt_self() PHSearchEntityCategoryTypeFromPHSearchSuggestionCategoriesType_];
    static StoryGenerationUtilities.queryTokenCategoryTypeString(for:)(v51, v74);
    sub_1C72D5B04();
  }

  else
  {
    v52 = [v48 QUToken];
    if (!v52)
    {
      goto LABEL_11;
    }

    v50 = v52;
    sub_1C72D5FAC(v52, v37, v36, 0, v53, v54, v55, v56, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73);
  }

LABEL_11:
  sub_1C72D533C();
  v58 = v57;
  v60 = v59;

  (*(v70 + 8))(v69, v71);
  v74[0] = 1;
  sub_1C75504FC();

  v61 = v74[0];
  *a5 = v58;
  a5[1] = v60;
  a5[2] = v37;
  a5[3] = v36;
  OUTLINED_FUNCTION_0_160(v61);
}

void static QueryToken.disambiguatedPersonalEventQueryToken(with:meaningLabel:momentUUIDs:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v52 = a2;
  v54 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217FD8, &unk_1C7575C30);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v52 - v12;
  v14 = sub_1C754E2FC();
  OUTLINED_FUNCTION_3_0();
  v55 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_112();
  sub_1C754E2CC();
  v17 = [objc_opt_self() entityCategoryTypeKeyForEntityTypeCategory_];
  if (v17)
  {
    v18 = v17;
    v19 = v6;
    v20 = sub_1C755068C();
    v22 = v21;

    v23 = objc_allocWithZone(MEMORY[0x1E6978A60]);
    sub_1C75504FC();
    sub_1C75504FC();
    v24 = sub_1C73A7E74(a3, a4, a5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B0A0, &qword_1C7585F08);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C755BAB0;
    *(inited + 32) = v20;
    *(inited + 40) = v22;
    v6 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1C7565670;
    *(v26 + 32) = v24;
    *(inited + 48) = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217150, &unk_1C7569440);
    v27 = sub_1C75504DC();
  }

  else
  {
    v27 = 0;
  }

  (*(v55 + 16))(v13, v6, v14);
  v53 = v14;
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
  if (v27)
  {
    sub_1C70C1520(v27);
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  v30 = v54;
  v31 = v52;
  v32 = objc_allocWithZone(MEMORY[0x1E6978A78]);
  sub_1C75504FC();
  v33 = sub_1C7349A54(v30, v31, v13, v29);
  sub_1C6F65BE8(0, &qword_1EC217FE0, 0x1E6978A98);
  v34 = sub_1C75504FC();
  v35 = sub_1C73A7E00(v34);
  sub_1C6F65BE8(0, &qword_1EDD0CDB0, 0x1E6978A50);
  v36 = v35;
  v37 = v33;
  v38 = sub_1C734406C(v36, v33);
  v39 = [v38 suggestion];
  if (v39)
  {
    v40 = v39;
    v41 = [objc_opt_self() PHSearchEntityCategoryTypeFromPHSearchSuggestionCategoriesType_];
    static StoryGenerationUtilities.queryTokenCategoryTypeString(for:)(v41, &v63);
    sub_1C72D5B04();
  }

  else
  {
    v42 = [v38 QUToken];
    if (!v42)
    {
      v30 = v54;
      goto LABEL_12;
    }

    v40 = v42;
    v30 = v54;
    sub_1C72D5FAC(v42, v54, v31, 0, v43, v44, v45, v46, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63);
  }

LABEL_12:
  sub_1C72D533C();
  v48 = v47;
  v50 = v49;

  (*(v55 + 8))(v6, v53);
  LOBYTE(v63) = 1;
  sub_1C75504FC();

  v51 = v63;
  *a6 = v48;
  a6[1] = v50;
  a6[2] = v30;
  a6[3] = v31;
  OUTLINED_FUNCTION_0_160(v51);
}

id sub_1C73A7E00(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_1C7550B3C();

  v3 = [v1 initForPersonalEventFilterWithMomentUUIDs_];

  return v3;
}

id sub_1C73A7E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = sub_1C755065C();
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_1C7550B3C();

  v6 = [v3 initWithMeaningLabel:v4 momentUUIDs:v5];

  return v6;
}

uint64_t Hastings.AssetDependencyRequirement.id.getter()
{
  v1 = *v0;
  sub_1C75504FC();
  return v1;
}

uint64_t Hastings.AssetDependencyRequirement.init(anchorAssetUUIDs:dependentAssetUUIDs:groupIDByAssetUUID:id:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  a6[2] = result;
  a6[3] = a2;
  a6[4] = a3;
  *a6 = a4;
  a6[1] = a5;
  return result;
}

__n128 Hastings.AssetDependencyRequirement.init(assetDependencySet:id:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, __n128 *a4@<X8>)
{
  v4 = a1[1].n128_u64[0];
  result = *a1;
  a4[1] = *a1;
  a4[2].n128_u64[0] = v4;
  a4->n128_u64[0] = a2;
  a4->n128_u64[1] = a3;
  return result;
}

uint64_t Hastings.AssetDependencyRequirement.newEvaluation()@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
  v7 = MEMORY[0x1E69E7CD0];
  a1[4] = v6;
  a1[5] = v7;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();

  return sub_1C75504FC();
}

__n128 Hastings.AssetDependencyRequirement.Evaluation.init(requirement:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  *(a2 + 24) = result;
  *(a2 + 40) = MEMORY[0x1E69E7CD0];
  return result;
}

uint64_t sub_1C73A8004(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001C75A3360 == a2;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x80000001C75A3380 == a2;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000012 && 0x80000001C75AD620 == a2)
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

unint64_t sub_1C73A815C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C73A81F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C73A8004(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C73A8218(uint64_t a1)
{
  v2 = sub_1C73A8490();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73A8254(uint64_t a1)
{
  v2 = sub_1C73A8490();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Hastings.AssetDependencyRequirement.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B0A8, &qword_1C7585F10);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - v5;
  v7 = v1[2];
  v14 = v1[3];
  v15 = v7;
  v13 = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C73A8490();
  sub_1C755200C();
  LOBYTE(v18) = 0;
  v8 = v16;
  sub_1C7551CCC();
  if (!v8)
  {
    v9 = v13;
    v10 = v14;
    v18 = v15;
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0, &qword_1C755C2F0);
    sub_1C70380C8();
    OUTLINED_FUNCTION_1();
    v18 = v10;
    v17 = 2;
    OUTLINED_FUNCTION_1();
    v18 = v9;
    v17 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C50, &qword_1C75633A0);
    sub_1C6FB5CAC();
    sub_1C7551D2C();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1C73A8490()
{
  result = qword_1EC21B0B0;
  if (!qword_1EC21B0B0)
  {
    result = swift_getWitnessTable(asc_1C75861B0, &_s26AssetDependencyRequirementV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21B0B0);
  }

  return result;
}

uint64_t sub_1C73A84EC@<X0>(uint64_t *a1@<X8>)
{
  result = Hastings.AssetDependencyRequirement.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Hastings.AssetDependencyRequirement.Evaluation.id.getter()
{
  v1 = *v0;
  sub_1C75504FC();
  return v1;
}

uint64_t Hastings.AssetDependencyRequirement.Evaluation.updateFulfillment(with:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = *(v1 + 16);
  v6 = *(v1 + 32);
  if (sub_1C7009C30(*a1, v4, v5))
  {
    if (*(v6 + 16))
    {
      v7 = sub_1C6F78124(v3, v4);
      if (v8)
      {
        v9 = (*(v6 + 56) + 16 * v7);
        v10 = *v9;
        v11 = v9[1];
        sub_1C75504FC();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v15 = *(v2 + 40);
        sub_1C73A873C(v10, v11, isUniquelyReferenced_nonNull_native);
        *(v2 + 40) = v15;
        if (!v13)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t Hastings.AssetDependencyRequirement.Evaluation.evaluationResult(of:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = *a1;
  v8 = a1[1];
  if ((sub_1C7009C30(*a1, v8, v4) & 1) != 0 && (v9 = sub_1C6FE0F8C(v7, v8, v5), v10))
  {
    v11 = sub_1C7009C30(v9, v10, v6);

    v12 = sub_1C754F5BC();
    v13 = *(*(v12 - 8) + 104);
    if (v11)
    {
      v14 = MEMORY[0x1E69C1970];
    }

    else
    {
      v14 = MEMORY[0x1E69C1968];
    }

    v18 = *v14;
    v17 = a2;
  }

  else
  {
    v15 = *MEMORY[0x1E69C1970];
    v16 = sub_1C754F5BC();
    v13 = *(*(v16 - 8) + 104);
    v12 = v16;
    v17 = a2;
    v18 = v15;
  }

  return v13(v17, v18, v12);
}

uint64_t sub_1C73A873C(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v3;
  sub_1C7551F3C();
  sub_1C75505AC();
  v7 = sub_1C7551FAC();
  v15 = ~(-1 << *(v6 + 32));
  v16 = 1;
  while (1)
  {
    v17 = v7 & v15;
    v18 = (v7 & v15) >> 6;
    v19 = 1 << (v7 & v15);
    v20 = v19 & *(v6 + 56 + 8 * v18);
    if (!v20)
    {
      break;
    }

    v21 = (*(v6 + 48) + 16 * v17);
    v8 = v21[1];
    v22 = *v21 == a1 && v8 == a2;
    if (v22 || (sub_1C7551DBC() & 1) != 0)
    {
      v16 = 0;
      break;
    }

    v7 = v17 + 1;
  }

  v23 = *(v6 + 16);
  v24 = v23 + v16;
  if (__OFADD__(v23, v16))
  {
    __break(1u);
    goto LABEL_34;
  }

  v25 = *(v6 + 24);
  v26 = v42;
  if (v25 < v24 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C72E69CC(v24, v8, v9, v10, v11, v12, v13, v14, v39, v40, v42, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62);
      goto LABEL_20;
    }

    if (v25 < v24)
    {
      sub_1C72F50B0(v24, v8, v9, v10, v11, v12, v13, v14, v39, v40, v42, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62);
LABEL_20:
      v27 = *v26;
      sub_1C7551F3C();
      sub_1C75505AC();
      v28 = sub_1C7551FAC();
      v29 = ~(-1 << *(v27 + 32));
      while (1)
      {
        v17 = v28 & v29;
        v18 = (v28 & v29) >> 6;
        v19 = 1 << (v28 & v29);
        if ((v19 & *(v27 + 56 + 8 * v18)) == 0)
        {
          break;
        }

        v30 = (*(v27 + 48) + 16 * v17);
        v31 = *v30 == a1 && v30[1] == a2;
        if (v31 || (sub_1C7551DBC() & 1) != 0)
        {
          v26 = v43;
          if (!v20)
          {
            goto LABEL_35;
          }

          goto LABEL_29;
        }

        v28 = v17 + 1;
      }

      v26 = v43;
      if (v20)
      {
        goto LABEL_35;
      }

      goto LABEL_31;
    }

    sub_1C72F28DC();
  }

  if (v20)
  {
LABEL_29:
    v32 = (*(*v26 + 48) + 16 * v17);
    result = *v32;
    *v32 = a1;
    v32[1] = a2;
    return result;
  }

LABEL_31:
  v34 = *v26;
  *(*v26 + 8 * v18 + 56) |= v19;
  v35 = (*(v34 + 48) + 16 * v17);
  *v35 = a1;
  v35[1] = a2;
  v36 = *(v34 + 16);
  v37 = __OFADD__(v36, 1);
  v38 = v36 + 1;
  if (!v37)
  {
    result = 0;
    *(v34 + 16) = v38;
    return result;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  result = sub_1C7551E3C();
  __break(1u);
  return result;
}

unint64_t sub_1C73A8970()
{
  result = qword_1EC21B0B8;
  if (!qword_1EC21B0B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Hastings.AssetDependencyRequirement, &type metadata for Hastings.AssetDependencyRequirement, v0, v1);
    atomic_store(result, &qword_1EC21B0B8);
  }

  return result;
}

unint64_t sub_1C73A89C8()
{
  result = qword_1EC21B0C0;
  if (!qword_1EC21B0C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Hastings.AssetDependencyRequirement, &type metadata for Hastings.AssetDependencyRequirement, v0, v1);
    atomic_store(result, &qword_1EC21B0C0);
  }

  return result;
}

unint64_t sub_1C73A8A20()
{
  result = qword_1EC21B0C8;
  if (!qword_1EC21B0C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Hastings.AssetDependencyRequirement.Evaluation, &type metadata for Hastings.AssetDependencyRequirement.Evaluation, v0, v1);
    atomic_store(result, &qword_1EC21B0C8);
  }

  return result;
}

unint64_t sub_1C73A8A78()
{
  result = qword_1EC216910;
  if (!qword_1EC216910)
  {
    v3 = type metadata accessor for Hastings.Asset(255);
    result = swift_getWitnessTable(protocol conformance descriptor for Hastings.Asset, v3, v0, v1);
    atomic_store(result, &qword_1EC216910);
  }

  return result;
}

unint64_t sub_1C73A8AD4()
{
  result = qword_1EC21B0D0;
  if (!qword_1EC21B0D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Hastings.AssetDependencyRequirement, &type metadata for Hastings.AssetDependencyRequirement, v0, v1);
    atomic_store(result, &qword_1EC21B0D0);
  }

  return result;
}

_BYTE *_s26AssetDependencyRequirementV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C73A8C28()
{
  result = qword_1EC21B0D8;
  if (!qword_1EC21B0D8)
  {
    result = swift_getWitnessTable(byte_1C7586188, &_s26AssetDependencyRequirementV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21B0D8);
  }

  return result;
}

unint64_t sub_1C73A8C80()
{
  result = qword_1EC21B0E0;
  if (!qword_1EC21B0E0)
  {
    result = swift_getWitnessTable(byte_1C75860F8, &_s26AssetDependencyRequirementV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21B0E0);
  }

  return result;
}

unint64_t sub_1C73A8CD8()
{
  result = qword_1EC21B0E8;
  if (!qword_1EC21B0E8)
  {
    result = swift_getWitnessTable(byte_1C7586120, &_s26AssetDependencyRequirementV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21B0E8);
  }

  return result;
}

uint64_t sub_1C73A8D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_1C754F38C();
  v6[8] = v7;
  OUTLINED_FUNCTION_18(v7);
  v6[9] = v8;
  v6[10] = swift_task_alloc();
  v9 = type metadata accessor for FreeformStory(0);
  OUTLINED_FUNCTION_18(v9);
  v6[11] = v10;
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v11 = sub_1C754F2FC();
  v6[15] = v11;
  OUTLINED_FUNCTION_18(v11);
  v6[16] = v12;
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C73A8EB4, 0, 0);
}

uint64_t sub_1C73A8EB4()
{
  v1 = v0[4];
  if (*(v1 + *(type metadata accessor for StoryGenerationSession(0) + 24)))
  {
    v2 = v0[3];
    sub_1C755180C();
    MEMORY[0x1CCA5CD70](0xD000000000000021, 0x80000001C75AD670);
    sub_1C73E69B8(*v2);
    sub_1C7161CDC(0, 0xE000000000000000);
  }

  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[15];
  v6 = v0[16];
  v7 = v0[7];
  sub_1C754F29C();
  (*(v6 + 32))(v4, v3, v5);
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_1C754F1CC();
  _s9GeneratorVMa_1(0);
  v8 = swift_task_alloc();
  v0[19] = v8;
  *v8 = v0;
  v8[1] = sub_1C73A9090;

  return sub_1C73EB534();
}

uint64_t sub_1C73A9090()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1C73A9314;
  }

  else
  {
    v2 = sub_1C73A91A4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C73A91A4()
{
  v1 = v0[14];
  v2 = v0[12];
  v17 = v0[11];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[2];
  sub_1C73A9410(v0[13], v1);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_1C754F1AC();
  (*(v4 + 8))(v3, v6);
  sub_1C73A9474(v1, v2);
  sub_1C6FB0E00();
  v8 = *(*v7 + 16);
  sub_1C6FB164C(v8, v9, v10, v11, v12, v13);
  sub_1C73A94D8(v1);
  v14 = *v7;
  *(v14 + 16) = v8 + 1;
  sub_1C73A9410(v2, v14 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v8);
  *v7 = v14;

  v15 = v0[1];

  return v15();
}

uint64_t sub_1C73A9314()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  __swift_project_boxed_opaque_existential_1(*(v0 + 56), *(*(v0 + 56) + 24));
  sub_1C754F1AC();
  (*(v1 + 8))(v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1C73A9410(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FreeformStory(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C73A9474(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FreeformStory(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C73A94D8(uint64_t a1)
{
  v2 = type metadata accessor for FreeformStory(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1C73A9550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v73 = a5;
  v74 = a6;
  v72 = a4;
  v80 = a2;
  v83 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B138, &qword_1C7586318);
  OUTLINED_FUNCTION_3_0();
  v81 = v6;
  v82 = v7;
  v75 = *(v8 + 64);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v9);
  v78 = v64 - v10;
  v77 = sub_1C754FF1C();
  OUTLINED_FUNCTION_3_0();
  v79 = v11;
  v84 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_58_26();
  v76 = v14 - v15;
  v16 = type metadata accessor for StoryGenerationSession(0);
  v17 = OUTLINED_FUNCTION_18(v16);
  v71 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v67 = v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = _s9GeneratorVMa_1(0);
  v22 = OUTLINED_FUNCTION_18(v21);
  v69 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v66 = v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B140, &qword_1C7586320);
  v27 = OUTLINED_FUNCTION_72_18(v26, &v86);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v33 = v64 - v32;
  v65 = v64 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8, &qword_1C755FF40);
  OUTLINED_FUNCTION_76(v34);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v35);
  v37 = v64 - v36;
  v70 = v64 - v36;
  sub_1C754F2FC();
  v68 = swift_allocBox();
  sub_1C754F29C();
  v38 = sub_1C7550D5C();
  __swift_storeEnumTagSinglePayload(v37, 1, 1, v38);
  v64[0] = v29;
  (*(v29 + 16))(v33, v72, v26);
  sub_1C7055874(v73, v85);
  OUTLINED_FUNCTION_11_67();
  v39 = v80;
  v40 = OUTLINED_FUNCTION_15_1();
  sub_1C73B0468(v40, v41, v42);
  OUTLINED_FUNCTION_0_161();
  sub_1C73B0468(v74, v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v43);
  v44 = v79;
  v45 = *(v79 + 16);
  v73 = v79 + 16;
  v74 = v45;
  v45(v76, v39, v77);
  v46 = v82;
  (*(v82 + 16))(v78, v83, v81);
  v47 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v48 = (v31 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = (v48 + 47) & 0xFFFFFFFFFFFFFFF8;
  v50 = (*(v69 + 80) + v49 + 8) & ~*(v69 + 80);
  v51 = (v25 + *(v71 + 80) + v50) & ~*(v71 + 80);
  v52 = *(v44 + 80);
  v53 = (v20 + v52 + v51) & ~v52;
  v54 = (v84 + *(v46 + 80) + v53) & ~*(v46 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = 0;
  *(v55 + 24) = 0;
  (*(v64[0] + 32))(v55 + v47, v65, v64[1]);
  sub_1C6F699F8(v85, v55 + v48);
  *(v55 + v49) = v68;
  OUTLINED_FUNCTION_10_70();
  sub_1C73B0518(v66, v55 + v50, v56);
  OUTLINED_FUNCTION_9_80();
  sub_1C73B0518(v67, v55 + v51, v57);
  v58 = *(v79 + 32);
  v60 = v76;
  v59 = v77;
  v58(v55 + v53, v76, v77);
  (*(v82 + 32))(v55 + v54, v78, v81);

  v61 = sub_1C6FEB80C(0, 0, v70, &unk_1C7586330, v55);
  v74(v60, v80, v59);
  v62 = swift_allocObject();
  *(v62 + 16) = v61;
  v58(v62 + ((v52 + 24) & ~v52), v60, v59);
  sub_1C7550E9C();

  return result;
}

uint64_t sub_1C73A9B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = v11;
  v8[9] = v12;
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a4;
  v8[5] = a5;
  sub_1C754F2FC();
  v8[10] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1C73A9BC8, 0, 0);
}

uint64_t sub_1C73A9BC8()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 80);
  v2 = swift_allocObject();
  *(v0 + 88) = v2;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  v4 = *(v0 + 48);
  v5 = *(v0 + 64);
  *(v3 + 16) = *(v0 + 32);
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  *(v3 + 56) = v5;
  *(v3 + 72) = v2;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  *v6 = v0;
  v6[1] = sub_1C73A9CEC;

  return MEMORY[0x1EEE6DD58]();
}

uint64_t sub_1C73A9CEC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73A9DF0()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 88);
  os_unfair_lock_lock((v1 + 16));
  v2 = *(v1 + 24);
  v3 = v2;
  os_unfair_lock_unlock((v1 + 16));
  *(v0 + 24) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B138, &qword_1C7586318);
  sub_1C7550EBC();

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1C73A9E9C()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 112);

  *(v0 + 16) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B138, &qword_1C7586318);
  sub_1C7550EBC();
  OUTLINED_FUNCTION_43();

  return v2();
}

uint64_t sub_1C73A9F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[52] = v18;
  v8[53] = v19;
  v8[50] = a7;
  v8[51] = a8;
  v8[48] = a5;
  v8[49] = a6;
  v8[46] = a3;
  v8[47] = a4;
  v8[45] = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B138, &qword_1C7586318);
  v8[54] = v9;
  v10 = *(v9 - 8);
  v8[55] = v10;
  v8[56] = *(v10 + 64);
  v8[57] = swift_task_alloc();
  v11 = sub_1C754FF1C();
  v8[58] = v11;
  v12 = *(v11 - 8);
  v8[59] = v12;
  v8[60] = *(v12 + 64);
  v8[61] = swift_task_alloc();
  v13 = *(type metadata accessor for StoryGenerationSession(0) - 8);
  v8[62] = v13;
  v8[63] = *(v13 + 64);
  v8[64] = swift_task_alloc();
  v14 = *(_s9GeneratorVMa_1(0) - 8);
  v8[65] = v14;
  v8[66] = *(v14 + 64);
  v8[67] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8, &qword_1C755FF40);
  v8[68] = swift_task_alloc();
  v8[69] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B150, &qword_1C7586360);
  v8[70] = v15;
  v8[71] = *(v15 - 8);
  v8[72] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C73AA1F0, 0, 0);
}

uint64_t sub_1C73AA1F0()
{
  OUTLINED_FUNCTION_42();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B140, &qword_1C7586320);
  sub_1C7550DBC();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 584) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_19_65(v1);

  return MEMORY[0x1EEE6DB90](v3);
}

uint64_t sub_1C73AA284()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C73AA380()
{
  if (*(v0 + 40))
  {
    v47 = *(v0 + 552);
    v1 = *(v0 + 536);
    v45 = v1;
    v57 = *(v0 + 528);
    v55 = *(v0 + 520);
    v65 = *(v0 + 512);
    v58 = *(v0 + 504);
    v56 = *(v0 + 496);
    v69 = *(v0 + 488);
    v60 = *(v0 + 480);
    v63 = *(v0 + 472);
    v67 = *(v0 + 456);
    v68 = *(v0 + 464);
    v59 = *(v0 + 448);
    v64 = *(v0 + 440);
    v66 = *(v0 + 432);
    v62 = *(v0 + 424);
    v51 = *(v0 + 408);
    v52 = *(v0 + 416);
    v50 = *(v0 + 400);
    v2 = *(v0 + 376);
    v46 = *(v0 + 392);
    v61 = *(v0 + 360);
    sub_1C6F699F8((v0 + 16), v0 + 56);
    __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    v3 = OUTLINED_FUNCTION_49_3();
    v5 = v4(v3);
    v7 = v6;
    __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    strcpy((v0 + 272), "CuratedStory ");
    *(v0 + 286) = -4864;
    v53 = v7;
    v54 = v5;
    MEMORY[0x1CCA5CD70](v5, v7);
    sub_1C754F17C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C90, &qword_1C7564BC0);
    v49 = swift_allocBox();
    v9 = v8;
    strcpy((v0 + 288), "CuratedStory");
    *(v0 + 301) = 0;
    *(v0 + 302) = -5120;
    *(v0 + 304) = v5;
    *(v0 + 312) = v7;
    *(v0 + 320) = 32;
    *(v0 + 328) = 0xE100000000000000;
    *(v0 + 336) = 0;
    *(v0 + 344) = 0xE000000000000000;
    sub_1C6FB5E8C();
    v10 = sub_1C755155C();
    MEMORY[0x1CCA5CD70](v10);

    sub_1C754F29C();

    v11 = sub_1C754F2FC();
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
    v12 = sub_1C7550D5C();
    v13 = v47;
    v48 = v12;
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v12);
    OUTLINED_FUNCTION_11_67();
    sub_1C73B0468(v46, v1, v14);
    sub_1C7055874(v0 + 56, v0 + 136);
    OUTLINED_FUNCTION_0_161();
    sub_1C73B0468(v50, v65, v15);
    sub_1C7055874(v0 + 96, v0 + 176);
    (*(v63 + 16))(v69, v51, v68);
    (*(v64 + 16))(v67, v52, v66);
    v16 = (*(v55 + 80) + 40) & ~*(v55 + 80);
    v17 = (v57 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = (*(v56 + 80) + v17 + 40) & ~*(v56 + 80);
    v19 = (v58 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = (v19 + 47) & 0xFFFFFFFFFFFFFFF8;
    v21 = (*(v63 + 80) + v20 + 16) & ~*(v63 + 80);
    v22 = (v60 + *(v64 + 80) + v21) & ~*(v64 + 80);
    v23 = swift_allocObject();
    *(v23 + 2) = 0;
    *(v23 + 3) = 0;
    *(v23 + 4) = v49;
    OUTLINED_FUNCTION_10_70();
    sub_1C73B0518(v45, v24 + v16, v25);
    sub_1C6F699F8((v0 + 136), &v23[v17]);
    OUTLINED_FUNCTION_9_80();
    sub_1C73B0518(v65, &v23[v18], v26);
    sub_1C6F699F8((v0 + 176), &v23[v19]);
    v27 = &v23[v20];
    *v27 = v54;
    v27[1] = v53;
    (*(v63 + 32))(&v23[v21], v69, v68);
    (*(v64 + 32))(&v23[v22], v67, v66);
    *&v23[(v59 + v22 + 7) & 0xFFFFFFFFFFFFFFF8] = v62;
    v28 = *v61;

    if (swift_taskGroup_addPending())
    {
      sub_1C712A774(*(v0 + 552), *(v0 + 544), &qword_1EC2158F8, &qword_1C755FF40);
      v29 = OUTLINED_FUNCTION_69_2();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v29, v30, v48);
      v32 = *(v0 + 544);
      if (EnumTagSinglePayload == 1)
      {
        sub_1C6FB5FC8(*(v0 + 544), &qword_1EC2158F8, &qword_1C755FF40);
      }

      else
      {
        sub_1C7550D4C();
        OUTLINED_FUNCTION_62_2();
        (*(v37 + 8))(v32, v48);
      }

      if (*(v23 + 2))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v38 = sub_1C7550C8C();
        v40 = v39;
        swift_unknownObjectRelease();
      }

      else
      {
        v38 = 0;
        v40 = 0;
      }

      v41 = v40 | v38;
      if (v40 | v38)
      {
        v41 = v0 + 216;
        *(v0 + 216) = 0;
        *(v0 + 224) = 0;
        *(v0 + 232) = v38;
        *(v0 + 240) = v40;
      }

      *(v0 + 248) = 1;
      *(v0 + 256) = v41;
      *(v0 + 264) = v28;
      swift_task_create();
    }

    sub_1C6FB5FC8(*(v0 + 552), &qword_1EC2158F8, &qword_1C755FF40);
    __swift_destroy_boxed_opaque_existential_1((v0 + 96));

    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v0 + 584) = v42;
    *v42 = v43;
    v44 = OUTLINED_FUNCTION_19_65(v42);

    return MEMORY[0x1EEE6DB90](v44);
  }

  else
  {
    v33 = *(v0 + 576);
    OUTLINED_FUNCTION_39_38();
    v34(v33);

    OUTLINED_FUNCTION_25();

    return v35();
  }
}

uint64_t sub_1C73AAA20()
{
  OUTLINED_FUNCTION_75_1();
  v1 = *(v0 + 576);
  OUTLINED_FUNCTION_39_38();
  v2(v1);

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1C73AAADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 520) = v16;
  *(v8 + 504) = v15;
  *(v8 + 488) = v14;
  *(v8 + 472) = a7;
  *(v8 + 480) = a8;
  *(v8 + 456) = a5;
  *(v8 + 464) = a6;
  v9 = sub_1C7550CBC();
  *(v8 + 528) = v9;
  *(v8 + 536) = *(v9 - 8);
  *(v8 + 544) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B158, &qword_1C7586378);
  *(v8 + 552) = v10;
  *(v8 + 560) = *(v10 - 8);
  *(v8 + 568) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C90, &qword_1C7564BC0);
  *(v8 + 576) = swift_task_alloc();
  v11 = sub_1C754F2FC();
  *(v8 + 584) = v11;
  *(v8 + 592) = *(v11 - 8);
  *(v8 + 600) = swift_task_alloc();
  *(v8 + 608) = swift_task_alloc();
  *(v8 + 616) = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1C73AACD8, 0, 0);
}

uint64_t sub_1C73AACD8()
{
  OUTLINED_FUNCTION_75_1();
  v1 = v0[77];
  v2 = v0[72];
  swift_beginAccess();
  sub_1C705544C(v1, v2);
  v3 = OUTLINED_FUNCTION_69_2();
  OUTLINED_FUNCTION_71_16(v3, v4);
  if (v5)
  {
    v6 = v0[72];
    v7 = OUTLINED_FUNCTION_69_2();
    if (__swift_getEnumTagSinglePayload(v7, v8, v9) != 1)
    {
      sub_1C6FB5FC8(v6, &unk_1EC218C90, &qword_1C7564BC0);
    }

    return OUTLINED_FUNCTION_51_24();
  }

  else
  {
    v11 = *(v0[74] + 32);
    (v11)(v0[76], v0[72], v0[73]);
    v12 = OUTLINED_FUNCTION_90();
    v11(v12);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    v0[78] = v13;
    *v13 = v14;
    v13[1] = sub_1C73AAE6C;
    v15 = v0[75];
    v16 = v0[59];
    v17 = v0[60];
    v18 = v0[58];

    return sub_1C73AB7B0((v0 + 2), v18, v16, v17, v15);
  }
}

uint64_t sub_1C73AAE6C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 632) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73AAF64()
{
  OUTLINED_FUNCTION_115_0();
  v42 = v0;
  sub_1C73AFCEC(v0 + 16, v0 + 72);
  v1 = *(v0 + 472);
  if (*(v0 + 120))
  {
    v2 = *(v0 + 112);
    sub_1C6F699F8((v0 + 72), v0 + 184);
    if (*(v1 + *(type metadata accessor for StoryGenerationSession(0) + 24)))
    {
      v4 = *(v0 + 488);
      v3 = *(v0 + 496);
      OUTLINED_FUNCTION_56_0();
      sub_1C755180C();

      OUTLINED_FUNCTION_69_21();
      v40 = (v6 + 2);
      v41 = v5;
      MEMORY[0x1CCA5CD70](v4, v3);
      sub_1C7161CDC(v40, v41);
    }

    sub_1C7055874(v0 + 184, v0 + 224);
    v7 = v2;
    v8 = sub_1C754FEEC();
    v9 = sub_1C75511BC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = OUTLINED_FUNCTION_20_1();
      v40 = v12;
      *v10 = 136315394;
      sub_1C7055874(v0 + 224, v0 + 264);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DD8, &qword_1C755BF60);
      v13 = sub_1C75506EC();
      v15 = v14;
      __swift_destroy_boxed_opaque_existential_1((v0 + 224));
      v16 = sub_1C6F765A4(v13, v15, &v40);

      *(v10 + 4) = v16;
      *(v10 + 12) = 2112;
      v17 = v2;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 14) = v18;
      *v11 = v18;
      _os_log_impl(&dword_1C6F5C000, v8, v9, "Curated story %s failed validation with error %@", v10, 0x16u);
      sub_1C6FB5FC8(v11, &qword_1EC215190, &qword_1C755C730);
      OUTLINED_FUNCTION_109();
      __swift_destroy_boxed_opaque_existential_1(v12);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1((v0 + 224));
    }

    v35 = (v0 + 184);
  }

  else
  {
    sub_1C6F699F8((v0 + 72), v0 + 304);
    if (*(v1 + *(type metadata accessor for StoryGenerationSession(0) + 24)))
    {
      OUTLINED_FUNCTION_56_0();
      sub_1C755180C();

      OUTLINED_FUNCTION_69_21();
      OUTLINED_FUNCTION_17_21();
      OUTLINED_FUNCTION_24_8(v19, v20, v21, v22, v23, v24, v25, v26, v40, v41);
    }

    sub_1C7055874(v0 + 304, v0 + 344);
    v27 = sub_1C754FEEC();
    v28 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_128(v28))
    {
      v29 = swift_slowAlloc();
      v30 = OUTLINED_FUNCTION_20_1();
      v40 = v30;
      *v29 = 136315138;
      sub_1C7055874(v0 + 344, v0 + 384);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DD8, &qword_1C755BF60);
      v31 = sub_1C75506EC();
      v33 = v32;
      __swift_destroy_boxed_opaque_existential_1((v0 + 344));
      v34 = sub_1C6F765A4(v31, v33, &v40);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_1C6F5C000, v27, v28, "Curated story %s passed validation", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1((v0 + 344));
    }

    v35 = (v0 + 304);
  }

  __swift_destroy_boxed_opaque_existential_1(v35);
  sub_1C73AFCEC(v0 + 16, v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B138, &qword_1C7586318);
  sub_1C7550EAC();
  v36 = OUTLINED_FUNCTION_57_0();
  v37(v36);
  sub_1C73AFD24(v0 + 16);
  OUTLINED_FUNCTION_65_24();

  OUTLINED_FUNCTION_25();

  return v38();
}

uint64_t sub_1C73AB3B8()
{
  OUTLINED_FUNCTION_115_0();
  v56 = v0;
  v1 = *(v0 + 632);
  *(v0 + 448) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 472);

    v4 = OUTLINED_FUNCTION_66_2();
    __swift_project_boxed_opaque_existential_1(v4, v5);
    OUTLINED_FUNCTION_74_15();
    v6 = OUTLINED_FUNCTION_57_0();
    v7(v6);
    if (*(v3 + *(type metadata accessor for StoryGenerationSession(0) + 24)))
    {
      OUTLINED_FUNCTION_56_0();
      sub_1C755180C();

      OUTLINED_FUNCTION_37_36();
      OUTLINED_FUNCTION_17_21();
      OUTLINED_FUNCTION_24_8(v8, v9, v10, v11, v12, v13, v14, v15, v54, v55);
    }

    sub_1C75504FC();
    v16 = sub_1C754FEEC();
    v17 = sub_1C755119C();

    if (os_log_type_enabled(v16, v17))
    {
      v19 = *(v0 + 488);
      v18 = *(v0 + 496);
      v20 = swift_slowAlloc();
      v21 = OUTLINED_FUNCTION_20_1();
      v54 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_1C6F765A4(v19, v18, &v54);
      _os_log_impl(&dword_1C6F5C000, v16, v17, "Cancelled CuratedStory %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    (*(*(v0 + 536) + 8))(*(v0 + 544), *(v0 + 528));
    v22 = *(v0 + 448);
  }

  else
  {
    v23 = *(v0 + 472);

    v24 = OUTLINED_FUNCTION_66_2();
    __swift_project_boxed_opaque_existential_1(v24, v25);
    OUTLINED_FUNCTION_74_15();
    v26 = OUTLINED_FUNCTION_57_0();
    v27(v26);
    if (*(v23 + *(type metadata accessor for StoryGenerationSession(0) + 24)))
    {
      OUTLINED_FUNCTION_56_0();
      sub_1C755180C();

      OUTLINED_FUNCTION_37_36();
      OUTLINED_FUNCTION_17_21();
      OUTLINED_FUNCTION_24_8(v28, v29, v30, v31, v32, v33, v34, v35, v54, v55);
    }

    v36 = *(v0 + 632);
    sub_1C75504FC();
    v37 = v36;
    v38 = sub_1C754FEEC();
    v39 = sub_1C755119C();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = *(v0 + 632);
      v42 = *(v0 + 488);
      v41 = *(v0 + 496);
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = OUTLINED_FUNCTION_20_1();
      v54 = v45;
      *v43 = 136315394;
      *(v43 + 4) = sub_1C6F765A4(v42, v41, &v54);
      *(v43 + 12) = 2112;
      v46 = v40;
      v47 = _swift_stdlib_bridgeErrorToNSError();
      *(v43 + 14) = v47;
      *v44 = v47;
      _os_log_impl(&dword_1C6F5C000, v38, v39, "Failed CuratedStory %s: %@", v43, 0x16u);
      sub_1C6FB5FC8(v44, &qword_1EC215190, &qword_1C755C730);
      OUTLINED_FUNCTION_109();
      __swift_destroy_boxed_opaque_existential_1(v45);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    v48 = *(v0 + 520);
    os_unfair_lock_lock((v48 + 16));
    if (!*(v48 + 24))
    {
      v49 = *(v0 + 632);
      *(v48 + 24) = v49;
      v50 = v49;
    }

    v51 = *(v0 + 632);
    os_unfair_lock_unlock((*(v0 + 520) + 16));
    v22 = v51;
  }

  OUTLINED_FUNCTION_65_24();

  OUTLINED_FUNCTION_25();

  return v52();
}

uint64_t sub_1C73AB7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[218] = v5;
  v6[217] = a5;
  v6[216] = a4;
  v6[215] = a3;
  v6[214] = a2;
  v6[213] = a1;
  v6[219] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B160, &unk_1C7586390);
  v6[220] = swift_task_alloc();
  v6[221] = swift_task_alloc();
  v6[222] = type metadata accessor for FreeformStoryGeneration.Chronological.Curated.Story(0);
  v6[223] = swift_task_alloc();
  v6[224] = type metadata accessor for FreeformStoryGeneration.Chronological.Curated.Generator(0);
  v6[225] = swift_task_alloc();
  v6[226] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2156D8, &qword_1C755EBF8);
  v6[227] = swift_task_alloc();
  v6[228] = swift_task_alloc();
  v6[229] = type metadata accessor for FreeformStoryGeneration.Montage.Curated.Story(0);
  v6[230] = swift_task_alloc();
  v6[231] = type metadata accessor for FreeformStoryGeneration.Montage.Curated.Generator(0);
  v6[232] = swift_task_alloc();
  v7 = sub_1C754F38C();
  v6[233] = v7;
  v6[234] = *(v7 - 8);
  v6[235] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C73AB9D4, 0, 0);
}

uint64_t sub_1C73AB9D4()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[216];
  v2 = v0[214];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1C754F1CC();
  sub_1C7055874(v2, (v0 + 198));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2170A8, &qword_1C7569000);
  if (swift_dynamicCast())
  {
    v3 = v0[232];
    v4 = v0[218];
    v5 = v0[215];
    memcpy(v0 + 149, v0 + 2, 0x188uLL);
    OUTLINED_FUNCTION_0_161();
    sub_1C73B0468(v5, v3 + v6, v7);
    v8 = _s9GeneratorVMa_1(0);
    v0[236] = v8;
    v9 = *(v4 + *(v8 + 24));
    v10 = qword_1EC213C70;

    if (v10 != -1)
    {
      swift_once();
    }

    v11 = v0[232];
    v12 = v0[231];
    v13 = sub_1C754FF1C();
    __swift_project_value_buffer(v13, qword_1EC2156A0);
    OUTLINED_FUNCTION_62_2();
    (*(v14 + 16))(v11);
    *(v11 + *(v12 + 28)) = v9;
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    v0[237] = v15;
    *v15 = v16;
    v15[1] = sub_1C73ABF4C;
    OUTLINED_FUNCTION_17_1();

    return sub_1C6FDEDD8();
  }

  else
  {
    if (!swift_dynamicCast())
    {
      v42 = v0[235];
      v43 = v0[234];
      v44 = v0[233];
      v45 = v0[217];
      v46 = v0[216];
      __swift_project_boxed_opaque_existential_1(v0[214], *(v0[214] + 24));
      v47 = OUTLINED_FUNCTION_49_3();
      v48(v47);
      sub_1C70BFAC4();
      swift_allocError();
      *v49 = v53;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v0 + 198);
      __swift_project_boxed_opaque_existential_1(v46, v1[3]);
      sub_1C754F1AC();
      (*(v43 + 8))(v42, v44);
      sub_1C754F2FC();
      OUTLINED_FUNCTION_3();
      (*(v50 + 8))(v45);
      OUTLINED_FUNCTION_34_36(v0[235]);

      OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_17_1();

      __asm { BRAA            X1, X16 }
    }

    v19 = v0[225];
    v20 = v0[218];
    v21 = v0[215];
    memcpy(v0 + 100, v0 + 51, 0x188uLL);
    v22 = _s9GeneratorVMa_1(0);
    v0[239] = v22;
    v23 = *(v20 + *(v22 + 24));
    v24 = *(v23 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_configuration + 40);
    v25 = *(v23 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_configuration + 64);
    v0[240] = v25;
    v26 = [objc_opt_self() maximumNumberOfAssetsToCurateOnForHastingsCuration];
    OUTLINED_FUNCTION_0_161();
    sub_1C73B0468(v21, v19 + v27, v28);
    if (qword_1EC213E20 != -1)
    {
      swift_once();
    }

    v29 = v0[225];
    v30 = v0[224];
    v31 = sub_1C754FF1C();
    __swift_project_value_buffer(v31, qword_1EC217E68);
    OUTLINED_FUNCTION_62_2();
    (*(v32 + 16))(v29);
    v33 = (v29 + v30[5]);
    *v33 = v24;
    v33[1] = v25;
    v33[2] = v26;
    *(v29 + v30[7]) = v23;
    v34 = *(v23 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext);
    v35 = *(v23 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext + 8);
    v36 = *(v23 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext + 16);
    v37 = v29 + v30[8];
    *v37 = v34;
    *(v37 + 8) = v35;
    *(v37 + 16) = v36;

    v38 = v34;

    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    v0[241] = v39;
    *v39 = v40;
    v39[1] = sub_1C73AC344;
    OUTLINED_FUNCTION_17_1();

    return sub_1C7144C3C();
  }
}

uint64_t sub_1C73ABF4C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 1904) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73AC044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_58_9();
  OUTLINED_FUNCTION_66_23();
  if (v17 == 1)
  {
    sub_1C6FE0BCC(*(v16 + 1840), *(v16 + 1824));
    v18 = OUTLINED_FUNCTION_57_0();
    sub_1C712A774(v18, v19, v20, v21);
    OUTLINED_FUNCTION_49_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v23 = *(v16 + 1840);
    v24 = *(v16 + 1832);
    v25 = *(v16 + 1824);
    v26 = *(v16 + 1816);
    if (EnumCaseMultiPayload == 1)
    {
      v27 = *(v16 + 1704);
      v28 = *v26;
      v27[3] = v24;
      v27[4] = &protocol witness table for FreeformStoryGeneration.Montage.Curated.Story;
      __swift_allocate_boxed_opaque_existential_0(v27);
      OUTLINED_FUNCTION_7_82();
      sub_1C73B0518(v23, v29, v30);
      sub_1C6FB5FC8(v25, &qword_1EC2156D8, &qword_1C755EBF8);
      v27[5] = v28;
      v31 = 1;
      goto LABEL_7;
    }

    *(v16 + 1688) = v24;
    *(v16 + 1696) = &protocol witness table for FreeformStoryGeneration.Montage.Curated.Story;
    __swift_allocate_boxed_opaque_existential_0((v16 + 1664));
    OUTLINED_FUNCTION_7_82();
    sub_1C73B0518(v26, v35, v36);
    sub_1C6FB5FC8(v25, &qword_1EC2156D8, &qword_1C755EBF8);
    OUTLINED_FUNCTION_29_37();
    sub_1C73B04C4(v23, v37);
  }

  else
  {
    v32 = *(v16 + 1840);
    *(v16 + 1688) = *(v16 + 1832);
    *(v16 + 1696) = &protocol witness table for FreeformStoryGeneration.Montage.Curated.Story;
    __swift_allocate_boxed_opaque_existential_0((v16 + 1664));
    OUTLINED_FUNCTION_7_82();
    sub_1C73B0518(v32, v33, v34);
  }

  sub_1C6F699F8((v16 + 1664), *(v16 + 1704));
  v31 = 0;
LABEL_7:
  v38 = *(v16 + 1856);
  *(*(v16 + 1704) + 48) = v31;
  OUTLINED_FUNCTION_40_39(v38);
  sub_1C6FE3B1C(v16 + 1192);
  OUTLINED_FUNCTION_27_44();
  v39 = OUTLINED_FUNCTION_57_0();
  v40(v39);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_129();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16);
}

void sub_1C73AC250()
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_40_39(*(v0 + 1856));
  sub_1C6FE3B1C(v0 + 1192);
  OUTLINED_FUNCTION_54_28();
  v1 = OUTLINED_FUNCTION_57_0();
  v2(v1);
  OUTLINED_FUNCTION_34_36(*(v0 + 1880));

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C73AC344()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 1936) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73AC43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_58_9();
  OUTLINED_FUNCTION_66_23();
  v17 = v16[223];
  if (v18 == 1)
  {
    if (*(v17 + 440))
    {
      v19 = 0;
    }

    else
    {
      v19 = [*(v17 + 432) count];
    }

    v22 = v16[240];
    if (v19 >= v22)
    {
      sub_1C73B0468(v16[223], v16[221], type metadata accessor for FreeformStoryGeneration.Chronological.Curated.Story);
      OUTLINED_FUNCTION_66_2();
    }

    else
    {
      v23 = v16[221];
      sub_1C6FE0D14();
      v24 = swift_allocError();
      *v25 = v19;
      *(v25 + 8) = v22;
      *(v25 + 16) = 0;
      *(v25 + 24) = 5;
      *v23 = v24;
      OUTLINED_FUNCTION_57_0();
    }

    swift_storeEnumTagMultiPayload();
    sub_1C712A774(v16[221], v16[220], &qword_1EC21B160, &unk_1C7586390);
    OUTLINED_FUNCTION_66_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v27 = v16[223];
    v28 = v16[222];
    v29 = v16[221];
    v30 = v16[220];
    if (EnumCaseMultiPayload == 1)
    {
      v31 = v16[213];
      v32 = *v30;
      v31[3] = v28;
      v31[4] = &protocol witness table for FreeformStoryGeneration.Chronological.Curated.Story;
      __swift_allocate_boxed_opaque_existential_0(v31);
      OUTLINED_FUNCTION_6_95();
      sub_1C73B0518(v27, v33, v34);
      sub_1C6FB5FC8(v29, &qword_1EC21B160, &unk_1C7586390);
      v31[5] = v32;
      v35 = 1;
      goto LABEL_13;
    }

    v16[206] = v28;
    v16[207] = &protocol witness table for FreeformStoryGeneration.Chronological.Curated.Story;
    __swift_allocate_boxed_opaque_existential_0(v16 + 203);
    OUTLINED_FUNCTION_6_95();
    sub_1C73B0518(v30, v36, v37);
    sub_1C6FB5FC8(v29, &qword_1EC21B160, &unk_1C7586390);
    sub_1C73B04C4(v27, type metadata accessor for FreeformStoryGeneration.Chronological.Curated.Story);
  }

  else
  {
    v16[206] = v16[222];
    v16[207] = &protocol witness table for FreeformStoryGeneration.Chronological.Curated.Story;
    __swift_allocate_boxed_opaque_existential_0(v16 + 203);
    OUTLINED_FUNCTION_6_95();
    sub_1C73B0518(v17, v20, v21);
  }

  sub_1C6F699F8((v16 + 203), v16[213]);
  v35 = 0;
LABEL_13:
  v38 = v16[225];
  *(v16[213] + 48) = v35;
  OUTLINED_FUNCTION_38_34(v38);
  sub_1C70BFB74((v16 + 100));
  OUTLINED_FUNCTION_27_44();
  v39 = OUTLINED_FUNCTION_57_0();
  v40(v39);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_129();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16);
}

void sub_1C73AC6EC()
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_38_34(*(v0 + 1800));
  sub_1C70BFB74(v0 + 800);
  OUTLINED_FUNCTION_54_28();
  v1 = OUTLINED_FUNCTION_57_0();
  v2(v1);
  OUTLINED_FUNCTION_34_36(*(v0 + 1880));

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  __asm { BRAA            X1, X16 }
}

double sub_1C73AC7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v78 = a7;
  v79 = a6;
  v77 = a5;
  v75 = a4;
  v86 = a2;
  v87 = a1;
  v83 = sub_1C754FF1C();
  OUTLINED_FUNCTION_3_0();
  v81 = v7;
  v82 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_58_26();
  v80 = v10 - v11;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B0F0, &qword_1C75862A8);
  OUTLINED_FUNCTION_3_0();
  v74 = v12;
  v76 = *(v13 + 64);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v14);
  v85 = &v64 - v15;
  v16 = type metadata accessor for StoryGenerationSession(0);
  v17 = OUTLINED_FUNCTION_18(v16);
  v73 = v18;
  v72 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_58_26();
  v22 = v20 - v21;
  v68 = v20 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B0F8, &qword_1C75862B0);
  v24 = OUTLINED_FUNCTION_72_18(v23, &v89);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v30 = &v64 - v29;
  v67 = &v64 - v29;
  v31 = _s9GeneratorVMa_1(0);
  v32 = OUTLINED_FUNCTION_18(v31);
  v70 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v65 = &v64 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8, &qword_1C755FF40);
  OUTLINED_FUNCTION_76(v36);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v64 - v38;
  v71 = &v64 - v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C90, &qword_1C7564BC0);
  v69 = swift_allocBox();
  v41 = v40;
  sub_1C754F29C();
  v42 = sub_1C754F2FC();
  __swift_storeEnumTagSinglePayload(v41, 0, 1, v42);
  v43 = sub_1C7550D5C();
  __swift_storeEnumTagSinglePayload(v39, 1, 1, v43);
  OUTLINED_FUNCTION_11_67();
  sub_1C73B0468(v86, &v64 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0), v44);
  (*(v26 + 16))(v30, v75, v23);
  sub_1C7055874(v77, v88);
  OUTLINED_FUNCTION_0_161();
  sub_1C73B0468(v78, v22, v45);
  v46 = v74;
  (*(v74 + 16))(v85, v87, v84);
  v47 = (*(v70 + 80) + 40) & ~*(v70 + 80);
  v48 = (v35 + *(v26 + 80) + v47) & ~*(v26 + 80);
  v49 = (v28 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = (v49 + 47) & 0xFFFFFFFFFFFFFFF8;
  v51 = (*(v73 + 80) + v50 + 8) & ~*(v73 + 80);
  v52 = (v72 + *(v46 + 80) + v51) & ~*(v46 + 80);
  v53 = swift_allocObject();
  *(v53 + 2) = 0;
  *(v53 + 3) = 0;
  *(v53 + 4) = v69;
  OUTLINED_FUNCTION_10_70();
  sub_1C73B0518(v65, v54 + v47, v55);
  (*(v26 + 32))(&v53[v48], v67, v66);
  sub_1C6F699F8(v88, &v53[v49]);
  *&v53[v50] = v79;
  OUTLINED_FUNCTION_9_80();
  sub_1C73B0518(v68, &v53[v51], v56);
  (*(v46 + 32))(&v53[v52], v85, v84);

  v57 = sub_1C6FEB80C(0, 0, v71, &unk_1C75862C0, v53);
  v59 = v80;
  v58 = v81;
  v60 = v83;
  (*(v81 + 16))(v80, v86, v83);
  v61 = (*(v58 + 80) + 24) & ~*(v58 + 80);
  v62 = swift_allocObject();
  *(v62 + 16) = v57;
  (*(v58 + 32))(v62 + v61, v59, v60);
  sub_1C7550E9C();

  return result;
}

uint64_t sub_1C73ACDAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = v12;
  v8[12] = v13;
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C90, &qword_1C7564BC0);
  v8[13] = swift_task_alloc();
  v9 = sub_1C754F2FC();
  v8[14] = v9;
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  v8[18] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1C73ACED0, 0, 0);
}

uint64_t sub_1C73ACED0()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 144);
  v2 = *(v0 + 104);
  swift_beginAccess();
  sub_1C705544C(v1, v2);
  v3 = OUTLINED_FUNCTION_69_2();
  OUTLINED_FUNCTION_71_16(v3, v4);
  if (v5)
  {
    v6 = *(v0 + 104);
    v7 = OUTLINED_FUNCTION_69_2();
    if (__swift_getEnumTagSinglePayload(v7, v8, v9) != 1)
    {
      sub_1C6FB5FC8(v6, &unk_1EC218C90, &qword_1C7564BC0);
    }

    return OUTLINED_FUNCTION_51_24();
  }

  else
  {
    v11 = *(v0 + 80);
    v12 = *(v0 + 56);
    v13 = *(*(v0 + 120) + 32);
    v20 = *(v0 + 88);
    (v13)(*(v0 + 136), *(v0 + 104), *(v0 + 112));
    v14 = OUTLINED_FUNCTION_90();
    v13(v14);
    v15 = swift_task_alloc();
    *(v0 + 152) = v15;
    *(v15 + 16) = v12;
    *(v15 + 24) = v11;
    *(v15 + 32) = v20;
    v16 = swift_task_alloc();
    *(v0 + 160) = v16;
    *v16 = v0;
    v16[1] = sub_1C73AD0A4;
    v17 = *(v0 + 128);
    v19 = *(v0 + 64);
    v18 = *(v0 + 72);

    return sub_1C73ADF24(v19, v18, v17, &unk_1C75862D8, v15);
  }
}

uint64_t sub_1C73AD0A4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 168) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73AD1A8()
{
  OUTLINED_FUNCTION_42();
  *(v0 + 48) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B0F0, &qword_1C75862A8);
  sub_1C7550EBC();

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1C73AD240()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 168);

  *(v0 + 40) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B0F0, &qword_1C75862A8);
  sub_1C7550EBC();

  OUTLINED_FUNCTION_43();

  return v2();
}

uint64_t sub_1C73AD2EC()
{
  OUTLINED_FUNCTION_31();
  v1 = _s9GeneratorVMa_1(0);
  OUTLINED_FUNCTION_18(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B0F8, &qword_1C75862B0);
  OUTLINED_FUNCTION_18(v2);
  v3 = type metadata accessor for StoryGenerationSession(0);
  OUTLINED_FUNCTION_18(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B0F0, &qword_1C75862A8);
  OUTLINED_FUNCTION_76(v4);
  OUTLINED_FUNCTION_75_16();
  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  v5[1] = sub_1C6F739D4;
  OUTLINED_FUNCTION_56_26();
  OUTLINED_FUNCTION_17_1();

  return sub_1C73ACDAC(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1C73AD510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B130, &qword_1C7586308);
  v7[5] = v12;
  v7[6] = *(v12 - 8);
  v7[7] = swift_task_alloc();
  type metadata accessor for CuratedStory(0);
  v7[8] = swift_task_alloc();
  v13 = swift_task_alloc();
  v7[9] = v13;
  v14 = swift_task_alloc();
  v7[10] = v14;
  *v14 = v7;
  v14[1] = sub_1C73AD684;

  return sub_1C73AD970(v13, a1, a5, a2, a3);
}

uint64_t sub_1C73AD684()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73AD77C()
{
  OUTLINED_FUNCTION_75_1();
  v1 = *(v0 + 24);
  if (*(v1 + *(type metadata accessor for StoryGenerationSession(0) + 24)))
  {
    OUTLINED_FUNCTION_56_0();
    sub_1C755180C();

    OUTLINED_FUNCTION_37_36();
    v25 = v3;
    v26 = v2;
    v4 = OUTLINED_FUNCTION_49_3();
    __swift_project_boxed_opaque_existential_1(v4, v5);
    v6 = OUTLINED_FUNCTION_15_1();
    v8 = v7(v6);
    MEMORY[0x1CCA5CD70](v8);

    OUTLINED_FUNCTION_24_8(v9, v10, v11, v12, v13, v14, v15, v16, v25, v26);
  }

  v17 = *(v0 + 72);
  v18 = OUTLINED_FUNCTION_57_0();
  sub_1C73B0468(v18, v19, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B0F0, &qword_1C75862A8);
  sub_1C7550EAC();
  v21 = OUTLINED_FUNCTION_15_1();
  v22(v21);
  sub_1C73B04C4(v17, type metadata accessor for CuratedStory);

  OUTLINED_FUNCTION_25();

  return v23();
}

uint64_t sub_1C73AD900()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C73AD970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[172] = v5;
  v6[171] = a5;
  v6[170] = a4;
  v6[169] = a3;
  v6[168] = a2;
  v6[167] = a1;
  OUTLINED_FUNCTION_41();
  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73AD9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v11 = v10[168];
  _s9GeneratorVMa_1(0);
  v10[173] = v11[3];
  v12 = v11[4];
  v10[174] = v12;
  v13 = OUTLINED_FUNCTION_49_3();
  v10[175] = __swift_project_boxed_opaque_existential_1(v13, v14);
  v15 = *(v12 + 40);
  v10[176] = v15;
  v10[177] = (v12 + 40) & 0xFFFFFFFFFFFFLL | 0x524E000000000000;
  v10[165] = &type metadata for FreeformStoryCompletionSync;
  v10[166] = sub_1C6FB5578();
  v10[162] = swift_allocObject();
  v16 = OUTLINED_FUNCTION_15_1();
  v15(v16);
  v17 = OUTLINED_FUNCTION_49_3();
  __swift_project_boxed_opaque_existential_1(v17, v18);
  v19 = OUTLINED_FUNCTION_15_1();
  v20(v19);
  v21 = OUTLINED_FUNCTION_49_3();
  __swift_project_boxed_opaque_existential_1(v21, v22);
  v23 = OUTLINED_FUNCTION_15_1();
  v10[178] = v24(v23);
  v25 = v11[3];
  v26 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v25);
  OUTLINED_FUNCTION_74_15();
  v28 = v27(v25, v26);
  result = sub_1C6FCA214(v28);
  v10[179] = v30;
  if (v30)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    v10[180] = v31;
    *v31 = v32;
    v31[1] = sub_1C73ADB98;
    OUTLINED_FUNCTION_88_0();

    return FreeformStoryGenerator.title(from:storyElements:curatedChapters:keyAssetUUID:diagnosticContext:eventRecorder:progressReporter:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C73ADB98(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_47();
  v7 = v6;
  OUTLINED_FUNCTION_40();
  *v8 = v7;
  v9 = *v3;
  OUTLINED_FUNCTION_14();
  *v10 = v9;
  v7[181] = v2;

  if (v2)
  {
    memcpy(v7 + 40, v7 + 2, 0x130uLL);
    sub_1C6FE0DC0((v7 + 40));
  }

  else
  {
    v7[182] = a2;
    v7[183] = a1;
    memcpy(v7 + 116, v7 + 2, 0x130uLL);
    sub_1C6FE0DC0((v7 + 116));

    __swift_destroy_boxed_opaque_existential_1(v7 + 162);
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C73ADD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_58_9();
  v58 = *(v24 + 1456);
  v59 = *(v24 + 1464);
  v57 = *(v24 + 1416);
  v25 = *(v24 + 1408);
  v26 = *(v24 + 1392);
  v27 = *(v24 + 1384);
  v28 = *(v24 + 1344);
  v29 = *(v24 + 1336);
  OUTLINED_FUNCTION_64_17();
  v30 = OUTLINED_FUNCTION_55_29();
  v31(v30);
  HIDWORD(a10) = HIBYTE(a13);
  OUTLINED_FUNCTION_64_17();
  v32 = OUTLINED_FUNCTION_55_29();
  v33(v32);
  OUTLINED_FUNCTION_64_17();
  v34 = OUTLINED_FUNCTION_55_29();
  v36 = v35(v34);
  v25(v27, v26);
  v37 = OUTLINED_FUNCTION_57_0();
  __swift_project_boxed_opaque_existential_1(v37, v38);
  OUTLINED_FUNCTION_74_15();
  v39 = OUTLINED_FUNCTION_49_3();
  v41 = v40(v39);
  v42 = v28[4];
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  v43 = *(v42 + 56);
  type metadata accessor for CuratedStory(0);
  v44 = OUTLINED_FUNCTION_15_1();
  v43(v44);
  *v29 = HIBYTE(a13);
  memcpy((v29 + 8), (v24 + 624), 0x130uLL);
  *(v29 + 312) = v36;
  *(v29 + 320) = v59;
  *(v29 + 328) = v58;
  v45 = *(v24 + 1248);
  v46 = *(v24 + 1280);
  v47 = *(v24 + 1232);
  *(v29 + 368) = *(v24 + 1264);
  *(v29 + 384) = v46;
  *(v29 + 336) = v47;
  *(v29 + 352) = v45;
  *(v29 + 400) = v41;
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_129();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, v57, a10, v58, v59, a13, a14, a15, a16);
}

uint64_t sub_1C73ADEC8()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1((v0 + 1296));
  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1C73ADF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[89] = v5;
  v6[88] = a5;
  v6[87] = a4;
  v6[86] = a3;
  v6[85] = a2;
  v6[84] = a1;
  v7 = sub_1C754F2FC();
  v6[90] = v7;
  v6[91] = *(v7 - 8);
  v6[92] = swift_task_alloc();
  v6[93] = swift_task_alloc();
  v6[94] = swift_task_alloc();
  v6[95] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B0F8, &qword_1C75862B0);
  v6[96] = v8;
  v6[97] = *(v8 - 8);
  v6[98] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B108, &qword_1C75862E8);
  v6[99] = v9;
  v6[100] = *(v9 - 8);
  v6[101] = swift_task_alloc();
  v6[102] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C73AE0F8, 0, 0);
}

uint64_t sub_1C73AE0F8()
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  sub_1C754F2CC();
  v1 = v0[89];
  if (*(v1 + *(_s9GeneratorVMa_1(0) + 20) + 19) == 1)
  {
    (*(v0[97] + 16))(v0[98], v0[84], v0[96]);
    sub_1C7099594(&qword_1EC21B110, &qword_1EC21B0F8, &qword_1C75862B0, MEMORY[0x1E69E87D0]);
    sub_1C7550E8C();
    v0[103] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_33_1(&qword_1EC21B118, &qword_1EC21B108, &qword_1C75862E8);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    v0[104] = v2;
    *v2 = v3;
    OUTLINED_FUNCTION_22_58(v2);
    OUTLINED_FUNCTION_88_0();

    return MEMORY[0x1EEE6D8C8](v4, v5, v6);
  }

  else
  {
    sub_1C7550DBC();
    v0[112] = 0;
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    v0[113] = v8;
    *v8 = v9;
    OUTLINED_FUNCTION_2_113(v8);
    OUTLINED_FUNCTION_88_0();

    return MEMORY[0x1EEE6DB90](v10);
  }
}

uint64_t sub_1C73AE31C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  v3[105] = v0;

  if (v0)
  {
    (*(v3[100] + 8))(v3[102], v3[99]);
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73AE440()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 824);
  if (*(v0 + 288) == 255)
  {
    (*(*(v0 + 800) + 8))(*(v0 + 816), *(v0 + 792));
    sub_1C6FB5FC8(v0 + 240, &qword_1EC21B120, &qword_1C75862F0);
    v61 = v1;
    v17 = *(v1 + 16);
    if (v17)
    {
      v18 = *(v0 + 824) + 32;
      v19 = MEMORY[0x1E69E7CC0];
      v20 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1C73AFCEC(v18, v0 + 296);
        if (*(v0 + 344))
        {
          v21 = *(v0 + 336);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_24_0();
            sub_1C6FB1E00();
            v20 = v26;
          }

          v23 = *(v20 + 16);
          v22 = *(v20 + 24);
          if (v23 >= v22 >> 1)
          {
            OUTLINED_FUNCTION_3_4(v22);
            sub_1C6FB1E00();
            v20 = v27;
          }

          *(v20 + 16) = v23 + 1;
          *(v20 + 8 * v23 + 32) = v21;
          __swift_destroy_boxed_opaque_existential_1((v0 + 296));
        }

        else
        {
          sub_1C6F699F8((v0 + 296), v0 + 584);
          sub_1C7055874(v0 + 584, v0 + 624);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_24_0();
            sub_1C6FB4984();
            v19 = v28;
          }

          v25 = *(v19 + 16);
          v24 = *(v19 + 24);
          if (v25 >= v24 >> 1)
          {
            OUTLINED_FUNCTION_3_4(v24);
            sub_1C6FB4984();
            v19 = v29;
          }

          __swift_destroy_boxed_opaque_existential_1((v0 + 584));
          *(v19 + 16) = v25 + 1;
          sub_1C6F699F8((v0 + 624), v19 + 40 * v25 + 32);
        }

        v18 += 56;
        --v17;
      }

      while (v17);
    }

    else
    {
      v19 = MEMORY[0x1E69E7CC0];
      v20 = MEMORY[0x1E69E7CC0];
    }

    swift_bridgeObjectRetain_n();
    sub_1C75504FC();
    sub_1C75504FC();
    v30 = sub_1C754FEEC();
    v31 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_128(v31))
    {
      v32 = OUTLINED_FUNCTION_20_1();
      *v32 = 134218496;
      *(v32 + 4) = *(v19 + 16);

      *(v32 + 12) = 2048;
      *(v32 + 14) = *(v20 + 16);

      *(v32 + 22) = 2048;
      v33 = *(v61 + 16);

      *(v32 + 24) = v33;

      _os_log_impl(&dword_1C6F5C000, v30, v31, "%ld stories and %ld errors from %ld results", v32, 0x20u);
      OUTLINED_FUNCTION_109();
    }

    else
    {
      swift_bridgeObjectRelease_n();

      swift_bridgeObjectRelease_n();
    }

    v34 = sub_1C73AF8A4(v19);
    *(v0 + 848) = v34;

    v35 = *(v34 + 16);
    *(v0 + 856) = v35;
    if (v35)
    {

      v36 = *(v34 + 16);
      *(v0 + 864) = v36;
      v37 = *(v0 + 840);
      if (v36)
      {
        v38 = *(v0 + 848);
        if (!*(v38 + 16))
        {
          __break(1u);
          return MEMORY[0x1EEE6D8C8](v13, v14, v15);
        }

        *(v0 + 456) = 0;
        sub_1C7055874(v38 + 32, v0 + 464);
        v40 = *(v0 + 472);
        v39 = *(v0 + 488);
        v36 = 1;
        v41 = *(v0 + 456);
      }

      else
      {
        v41 = 0uLL;
        v40 = 0uLL;
        v39 = 0uLL;
      }

      *(v0 + 872) = v36;
      *(v0 + 408) = v41;
      *(v0 + 424) = v40;
      *(v0 + 440) = v39;
      if (v39)
      {
        OUTLINED_FUNCTION_41_37(*&v39, *&v40, *&v41);
        v49 = OUTLINED_FUNCTION_70_18();
        v50(v49);
        OUTLINED_FUNCTION_18_57();
        swift_task_alloc();
        OUTLINED_FUNCTION_48();
        *(v0 + 880) = v51;
        *v51 = v52;
        OUTLINED_FUNCTION_20_56(v51);
        OUTLINED_FUNCTION_17_1();

        __asm { BRAA            X3, X16 }
      }
    }

    else
    {

      v42 = sub_1C754FEEC();
      v43 = sub_1C75511BC();
      if (OUTLINED_FUNCTION_128(v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_1C6F5C000, v42, v43, "No stories generated, throwing best error if possible", v44, 2u);
        OUTLINED_FUNCTION_109();
      }

      v45 = sub_1C73AFB5C(v20);

      if (v45)
      {
        v46 = *(v0 + 728);
        v47 = *(v0 + 720);
        v48 = *(v0 + 688);
        swift_willThrow();
        (*(v46 + 8))(v48, v47);
        goto LABEL_44;
      }

      v37 = *(v0 + 840);
    }

    sub_1C754F2EC();
    if (!v37)
    {
      OUTLINED_FUNCTION_35_26();

      OUTLINED_FUNCTION_25();
LABEL_46:
      OUTLINED_FUNCTION_17_1();

      __asm { BRAA            X1, X16 }
    }

LABEL_44:
    OUTLINED_FUNCTION_8_74();

    OUTLINED_FUNCTION_43();
    goto LABEL_46;
  }

  v2 = *(v0 + 256);
  *(v0 + 184) = *(v0 + 240);
  *(v0 + 200) = v2;
  *(v0 + 216) = *(v0 + 272);
  *(v0 + 232) = *(v0 + 288);
  sub_1C73AFCEC(v0 + 184, v0 + 352);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + 824);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v57 = OUTLINED_FUNCTION_24_0();
    sub_1C6FB4A40(v57);
    v4 = v58;
  }

  v6 = *(v4 + 16);
  v5 = *(v4 + 24);
  if (v6 >= v5 >> 1)
  {
    sub_1C6FB4A40(v5 > 1);
    v4 = v59;
  }

  sub_1C73AFD24(v0 + 184);
  *(v4 + 16) = v6 + 1;
  v7 = v4 + 56 * v6;
  v9 = *(v0 + 368);
  v8 = *(v0 + 384);
  v10 = *(v0 + 352);
  *(v7 + 80) = *(v0 + 400);
  *(v7 + 48) = v9;
  *(v7 + 64) = v8;
  *(v7 + 32) = v10;
  *(v0 + 824) = v4;
  OUTLINED_FUNCTION_33_1(&qword_1EC21B118, &qword_1EC21B108, &qword_1C75862E8);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 832) = v11;
  *v11 = v12;
  OUTLINED_FUNCTION_22_58(v11);
  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6D8C8](v13, v14, v15);
}

uint64_t sub_1C73AEAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v10 = OUTLINED_FUNCTION_68_21();
  v11(v10);
  OUTLINED_FUNCTION_8_74();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_0();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_1C73AEB40()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 888) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73AEC44()
{
  OUTLINED_FUNCTION_115_0();
  result = __swift_destroy_boxed_opaque_existential_1((v0 + 544));
  v2 = *(v0 + 872);
  if (v2 == *(v0 + 864))
  {
    v3 = 0uLL;
    v4 = 0uLL;
    v5 = 0uLL;
  }

  else
  {
    v6 = *(v0 + 848);
    if (v2 >= *(v6 + 16))
    {
      __break(1u);
      return result;
    }

    v7 = v2 + 1;
    *(v0 + 456) = v2;
    sub_1C7055874(v6 + 40 * v2 + 32, v0 + 464);
    v4 = *(v0 + 472);
    v5 = *(v0 + 488);
    v2 = v7;
    v3 = *(v0 + 456);
  }

  *(v0 + 872) = v2;
  *(v0 + 408) = v3;
  *(v0 + 424) = v4;
  *(v0 + 440) = v5;
  if (v5)
  {
    OUTLINED_FUNCTION_41_37(*&v5, *&v4, *&v3);
    v8 = OUTLINED_FUNCTION_70_18();
    v9(v8);
    OUTLINED_FUNCTION_18_57();
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v0 + 880) = v10;
    *v10 = v11;
    v12 = OUTLINED_FUNCTION_20_56(v10);

    return v13(v12);
  }

  else
  {

    sub_1C754F2EC();
    v14 = OUTLINED_FUNCTION_35_26();
    OUTLINED_FUNCTION_14_60(v14);

    OUTLINED_FUNCTION_43();

    return v15();
  }
}

uint64_t sub_1C73AEE14()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 912) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73AEF0C()
{
  OUTLINED_FUNCTION_31();
  if (*(v0 + 64) == 255)
  {
    (*(*(v0 + 800) + 8))(*(v0 + 808), *(v0 + 792));
    sub_1C754F2EC();
    v8 = OUTLINED_FUNCTION_35_26();
    OUTLINED_FUNCTION_14_60(v8);

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_79_16();

    __asm { BRAA            X1, X16 }
  }

  v1 = *(v0 + 32);
  *(v0 + 72) = *(v0 + 16);
  *(v0 + 88) = v1;
  *(v0 + 104) = *(v0 + 48);
  *(v0 + 120) = *(v0 + 64);
  sub_1C754F2BC();
  sub_1C73AFCEC(v0 + 72, v0 + 128);
  if (*(v0 + 176) != 1)
  {
    sub_1C6F699F8((v0 + 128), v0 + 504);
    v9 = OUTLINED_FUNCTION_90();
    v10(v9);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v0 + 920) = v11;
    *v11 = v12;
    v11[1] = sub_1C73AF1D8;
    OUTLINED_FUNCTION_79_16();

    __asm { BRAA            X3, X16 }
  }

  sub_1C73AFD24(v0 + 72);
  sub_1C73AFD24(v0 + 128);
  v2 = OUTLINED_FUNCTION_66_2();
  v3(v2);
  *(v0 + 896) = (*(v0 + 896) + 1.0) * 0.5;
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 904) = v4;
  *v4 = v5;
  OUTLINED_FUNCTION_2_113(v4);
  OUTLINED_FUNCTION_79_16();

  return MEMORY[0x1EEE6DB90](v6);
}

uint64_t sub_1C73AF1D8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 928) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73AF2D0()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1((v0 + 504));
  sub_1C73AFD24(v0 + 72);
  *(v0 + 896) = (*(v0 + 896) + 1.0) * 0.5;
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 904) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_113(v1);

  return MEMORY[0x1EEE6DB90](v3);
}

uint64_t sub_1C73AF368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  __swift_destroy_boxed_opaque_existential_1((v10 + 544));
  v11 = OUTLINED_FUNCTION_90();
  v12(v11);
  OUTLINED_FUNCTION_8_74();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C73AF420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  (*(v10[100] + 8))(v10[101], v10[99]);
  v11 = OUTLINED_FUNCTION_57_0();
  v12(v11);
  OUTLINED_FUNCTION_8_74();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C73AF4EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v11 = v10[91];
  v12 = v10[90];
  v13 = v10[86];
  __swift_destroy_boxed_opaque_existential_1(v10 + 63);
  sub_1C73AFD24((v10 + 9));
  v14 = OUTLINED_FUNCTION_66_2();
  v15(v14);
  (*(v11 + 8))(v13, v12);
  OUTLINED_FUNCTION_8_74();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

void sub_1C73AF5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, const char *a6)
{
  v32 = a6;
  v30[1] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  OUTLINED_FUNCTION_3_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v31 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v30 - v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v30 - v17;
  v19 = *(v9 + 16);
  v19(v30 - v17, a1, v7, v16);
  v20 = (*(v9 + 88))(v18, v7);
  v21 = *MEMORY[0x1E69E8760];
  v33 = *(v9 + 8);
  v33(v18, v7);
  if (v20 == v21)
  {
    sub_1C7550E1C();
  }

  (v19)(v14, a1, v7);
  v22 = sub_1C754FEEC();
  v23 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_128(v23))
  {
    v24 = swift_slowAlloc();
    v25 = OUTLINED_FUNCTION_20_1();
    v34 = v25;
    *v24 = 136315138;
    (v19)(v31, v14, v7);
    v26 = sub_1C75506EC();
    v28 = v27;
    v33(v14, v7);
    v29 = sub_1C6F765A4(v26, v28, &v34);

    *(v24 + 4) = v29;
    _os_log_impl(&dword_1C6F5C000, v22, v23, v32, v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {

    v33(v14, v7);
  }
}

uint64_t sub_1C73AF8A4(uint64_t a1)
{
  type metadata accessor for FreeformStoryGeneration.Montage.Curated.Story(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  if (v5 <= 1)
  {
    sub_1C75504FC();
    return a1;
  }

  v6 = a1 + 32;
  while (1)
  {
    sub_1C7055874(v6, v20);
    sub_1C7055874(v20, &v18);
    v7 = OUTLINED_FUNCTION_15_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    if (swift_dynamicCast())
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1(v20);
    v6 += 40;
    if (!--v5)
    {
      v22 = 0;
      memset(v21, 0, sizeof(v21));
      goto LABEL_8;
    }
  }

  OUTLINED_FUNCTION_29_37();
  sub_1C73B04C4(v4, v9);
  sub_1C6F699F8(v20, v21);
LABEL_8:
  sub_1C712A774(v21, &v18, &qword_1EC21B128, &qword_1C75862F8);
  if (v19)
  {
    sub_1C6F699F8(&v18, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DD0, &qword_1C7586300);
    a1 = swift_allocObject();
    *(a1 + 16) = xmmword_1C755BAB0;
    sub_1C6F699F8(v20, a1 + 32);
LABEL_12:
    sub_1C6FB5FC8(v21, &qword_1EC21B128, &qword_1C75862F8);
    return a1;
  }

  sub_1C6FB5FC8(&v18, &qword_1EC21B128, &qword_1C75862F8);
  sub_1C75504FC();
  sub_1C7033F04(1, a1);
  v11 = v10;
  v13 = v12;
  if ((v12 & 1) == 0)
  {
LABEL_11:
    OUTLINED_FUNCTION_66_2();
    sub_1C739D040();
    a1 = v14;
    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  sub_1C7551DEC();
  swift_unknownObjectRetain_n();
  v16 = swift_dynamicCastClass();
  if (!v16)
  {
    swift_unknownObjectRelease();
    v16 = MEMORY[0x1E69E7CC0];
  }

  v17 = *(v16 + 16);

  if (__OFSUB__(v13 >> 1, v11))
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v17 != (v13 >> 1) - v11)
  {
LABEL_22:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  a1 = swift_dynamicCastClass();
  if (!a1)
  {
    swift_unknownObjectRelease();
    a1 = MEMORY[0x1E69E7CC0];
  }

  sub_1C6FB5FC8(v21, &qword_1EC21B128, &qword_1C75862F8);
  swift_unknownObjectRelease();
  return a1;
}

id sub_1C73AFB5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  for (i = (a1 + 32); v1; --v1)
  {
    v3 = *i;
    v4 = *i;
    v5 = v3;
    v6 = OUTLINED_FUNCTION_90();
    __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
    if (swift_dynamicCast())
    {
      if (v12 == 5)
      {
        sub_1C70551BC(v9, v10, v11, v12);
        return v3;
      }

      sub_1C70551BC(v9, v10, v11, v12);
    }

    ++i;
  }

  return 0;
}

uint64_t sub_1C73AFC2C()
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C6F739D4;
  OUTLINED_FUNCTION_88_0();

  return sub_1C73AD510(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1C73AFD54()
{
  OUTLINED_FUNCTION_31();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B140, &qword_1C7586320);
  OUTLINED_FUNCTION_18(v1);
  OUTLINED_FUNCTION_61_20();
  v2 = _s9GeneratorVMa_1(0);
  OUTLINED_FUNCTION_18(v2);
  v3 = type metadata accessor for StoryGenerationSession(0);
  OUTLINED_FUNCTION_18(v3);
  v4 = sub_1C754FF1C();
  OUTLINED_FUNCTION_18(v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B138, &qword_1C7586318);
  OUTLINED_FUNCTION_76(v5);
  OUTLINED_FUNCTION_75_16();
  v6 = swift_task_alloc();
  *(v0 + 16) = v6;
  *v6 = v0;
  v6[1] = sub_1C6F738F4;
  OUTLINED_FUNCTION_56_26();
  OUTLINED_FUNCTION_17_1();

  return sub_1C73A9B3C(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t objectdestroy_4Tm()
{
  v1 = sub_1C754FF1C();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

void sub_1C73B0094(uint64_t a1, uint64_t *a2, uint64_t *a3, const char *a4, ...)
{
  v9 = sub_1C754FF1C();
  OUTLINED_FUNCTION_76(v9);
  sub_1C73AF5D0(a1, *(v4 + 16), v4 + ((*(v10 + 80) + 24) & ~*(v10 + 80)), a2, a3, a4);
}

uint64_t sub_1C73B0120()
{
  OUTLINED_FUNCTION_115_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1C6F738F4;
  OUTLINED_FUNCTION_44();

  return sub_1C73A9F34(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C73B01FC()
{
  OUTLINED_FUNCTION_58_9();
  v1 = _s9GeneratorVMa_1(0);
  OUTLINED_FUNCTION_18(v1);
  OUTLINED_FUNCTION_61_20();
  v2 = type metadata accessor for StoryGenerationSession(0);
  OUTLINED_FUNCTION_18(v2);
  OUTLINED_FUNCTION_61_20();
  v3 = sub_1C754FF1C();
  OUTLINED_FUNCTION_18(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B138, &qword_1C7586318);
  OUTLINED_FUNCTION_18(v4);
  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  v5[1] = sub_1C6F739D4;
  OUTLINED_FUNCTION_56_26();
  OUTLINED_FUNCTION_129();

  return sub_1C73AAADC(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1C73B0468(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  v4 = OUTLINED_FUNCTION_90();
  v5(v4);
  return a2;
}

uint64_t sub_1C73B04C4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C73B0518(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  v4 = OUTLINED_FUNCTION_90();
  v5(v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_40_39(uint64_t a1)
{

  return sub_1C73B04C4(a1, type metadata accessor for FreeformStoryGeneration.Montage.Curated.Generator);
}

uint64_t OUTLINED_FUNCTION_54_28()
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 1584));
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);

  return sub_1C754F1AC();
}

void *OUTLINED_FUNCTION_64_17()
{
  v2 = v0[3];

  return __swift_project_boxed_opaque_existential_1(v0, v2);
}

uint64_t CollectionFetcherOptions.__allocating_init(photoLibrary:fetchOptions:fetchContext:sortAscending:)(void *a1, void *a2, char *a3, char a4)
{
  v8 = swift_allocObject();
  CollectionFetcherOptions.init(photoLibrary:fetchOptions:fetchContext:sortAscending:)(a1, a2, a3, a4);
  return v8;
}

PhotosIntelligence::CollectionFetcherOptions::Context_optional __swiftcall CollectionFetcherOptions.Context.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551B2C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CollectionFetcherOptions.Context.rawValue.getter()
{
  result = 7105633;
  switch(*v0)
  {
    case 1:
      result = 0x657469726F766166;
      break;
    case 2:
      result = 0x7972616E6964726FLL;
      break;
    case 3:
      result = 0x7972616D6D7573;
      break;
    case 4:
      result = 0x69746172656E6567;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C73B0870@<X0>(uint64_t *a1@<X8>)
{
  result = CollectionFetcherOptions.Context.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1C73B08D0()
{
  result = qword_1EDD0DDC8;
  if (!qword_1EDD0DDC8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CollectionFetcherOptions.Context, &type metadata for CollectionFetcherOptions.Context, v0, v1);
    atomic_store(result, &qword_1EDD0DDC8);
  }

  return result;
}

unint64_t sub_1C73B0928()
{
  result = qword_1EC21B168;
  if (!qword_1EC21B168)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21B170, &qword_1C7586440);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EC21B168);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CollectionFetcherOptions.Context(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t FreeformStorySurveyDataSource.__allocating_init(memory:)(void *a1)
{
  OUTLINED_FUNCTION_328();
  v2 = swift_allocObject();
  FreeformStorySurveyDataSource.init(memory:)(a1);
  return v2;
}

void *FreeformStorySurveyDataSource.init(memory:)(void *a1)
{
  v3 = v1;
  result = [a1 photoLibrary];
  if (result)
  {
    v3[5] = result;
    v3[6] = a1;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
    OUTLINED_FUNCTION_328();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1C75650C0;
    OUTLINED_FUNCTION_328();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1C75650C0;
    OUTLINED_FUNCTION_4_92();
    v126 = 0;
    type metadata accessor for FeatureSurveyYesNoQuestion();
    swift_allocObject();
    OUTLINED_FUNCTION_0_162();
    *(v8 + 32) = FeatureSurveyYesNoQuestion.init(analyticsFieldName:TTRYesTemplate:TTRNoTemplate:shouldTriggerTTR:question:isMandatory:viewType:)(v9, v10, v11, v12, v13, v14, 1, v15, v2, 1, &v126);
    v125 = 0;
    OUTLINED_FUNCTION_1_121();
    OUTLINED_FUNCTION_0_162();
    *(v8 + 40) = FeatureSurveyYesNoQuestion.init(analyticsFieldName:TTRYesTemplate:TTRNoTemplate:shouldTriggerTTR:question:isMandatory:viewType:)(v16, v17, v18, v19, v20, v21, 0, v22, 0x80000001C75AD8D0, 1, &v125);
    v124 = 0;
    OUTLINED_FUNCTION_1_121();
    OUTLINED_FUNCTION_0_162();
    *(v8 + 48) = FeatureSurveyYesNoQuestion.init(analyticsFieldName:TTRYesTemplate:TTRNoTemplate:shouldTriggerTTR:question:isMandatory:viewType:)(v23, v24, v25, v26, v27, v28, 1, v29, 0x80000001C75AD920, 1, &v124);
    v30 = type metadata accessor for FeatureSurveySection();
    v31 = OUTLINED_FUNCTION_11_2(v30);
    v31[2] = 0x6C6C617265764FLL;
    v31[3] = 0xE700000000000000;
    v31[4] = v8;
    *(v7 + 32) = v31;
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1C7586510;
    OUTLINED_FUNCTION_240();
    v123[8] = 0;
    OUTLINED_FUNCTION_1_121();
    OUTLINED_FUNCTION_2_114();
    OUTLINED_FUNCTION_0_162();
    *(v32 + 32) = FeatureSurveyYesNoQuestion.init(analyticsFieldName:TTRYesTemplate:TTRNoTemplate:shouldTriggerTTR:question:isMandatory:viewType:)(v33, v34, v35, v36, v37, v38, 1, v39, v99, v107, v115);
    OUTLINED_FUNCTION_240();
    v123[7] = 0;
    OUTLINED_FUNCTION_1_121();
    OUTLINED_FUNCTION_2_114();
    OUTLINED_FUNCTION_0_162();
    *(v32 + 40) = FeatureSurveyYesNoQuestion.init(analyticsFieldName:TTRYesTemplate:TTRNoTemplate:shouldTriggerTTR:question:isMandatory:viewType:)(v40, v41, v42, v43, v44, v45, 1, v46, v100, v108, v116);
    OUTLINED_FUNCTION_4_92();
    v123[6] = 0;
    OUTLINED_FUNCTION_1_121();
    OUTLINED_FUNCTION_3_102();
    OUTLINED_FUNCTION_0_162();
    *(v32 + 48) = FeatureSurveyYesNoQuestion.init(analyticsFieldName:TTRYesTemplate:TTRNoTemplate:shouldTriggerTTR:question:isMandatory:viewType:)(v47, v48, v49, v50, v51, v52, 1, v53, v101, v109, v117);
    OUTLINED_FUNCTION_240();
    v123[5] = 0;
    OUTLINED_FUNCTION_1_121();
    OUTLINED_FUNCTION_2_114();
    OUTLINED_FUNCTION_0_162();
    *(v32 + 56) = FeatureSurveyYesNoQuestion.init(analyticsFieldName:TTRYesTemplate:TTRNoTemplate:shouldTriggerTTR:question:isMandatory:viewType:)(v54, v55, v56, v57, v58, v59, 1, v60, v102, v110, v118);
    OUTLINED_FUNCTION_4_92();
    v123[4] = 0;
    OUTLINED_FUNCTION_1_121();
    OUTLINED_FUNCTION_3_102();
    OUTLINED_FUNCTION_0_162();
    *(v32 + 64) = FeatureSurveyYesNoQuestion.init(analyticsFieldName:TTRYesTemplate:TTRNoTemplate:shouldTriggerTTR:question:isMandatory:viewType:)(v61, v62, v63, v64, v65, v66, 0, v67, v103, v111, v119);
    OUTLINED_FUNCTION_4_92();
    v123[3] = 0;
    OUTLINED_FUNCTION_1_121();
    OUTLINED_FUNCTION_3_102();
    OUTLINED_FUNCTION_0_162();
    *(v32 + 72) = FeatureSurveyYesNoQuestion.init(analyticsFieldName:TTRYesTemplate:TTRNoTemplate:shouldTriggerTTR:question:isMandatory:viewType:)(v68, v69, v70, v71, v72, v73, 1, v74, v104, v112, v120);
    OUTLINED_FUNCTION_4_92();
    v123[2] = 0;
    OUTLINED_FUNCTION_1_121();
    OUTLINED_FUNCTION_3_102();
    OUTLINED_FUNCTION_0_162();
    *(v32 + 80) = FeatureSurveyYesNoQuestion.init(analyticsFieldName:TTRYesTemplate:TTRNoTemplate:shouldTriggerTTR:question:isMandatory:viewType:)(v75, v76, v77, v78, v79, v80, 1, v81, v105, v113, v121);
    OUTLINED_FUNCTION_240();
    v123[1] = 0;
    OUTLINED_FUNCTION_1_121();
    OUTLINED_FUNCTION_2_114();
    OUTLINED_FUNCTION_0_162();
    *(v32 + 88) = FeatureSurveyYesNoQuestion.init(analyticsFieldName:TTRYesTemplate:TTRNoTemplate:shouldTriggerTTR:question:isMandatory:viewType:)(v82, v83, v84, v85, v86, v87, 1, v88, v106, v114, v122);
    v89 = OUTLINED_FUNCTION_11_2(v30);
    v89[2] = 0x736C6961746544;
    v89[3] = 0xE700000000000000;
    v89[4] = v32;
    *(v7 + 40) = v89;
    v90 = OUTLINED_FUNCTION_11_2(v6);
    *(v90 + 16) = xmmword_1C7565670;
    OUTLINED_FUNCTION_240();
    v123[0] = 1;
    OUTLINED_FUNCTION_1_121();
    OUTLINED_FUNCTION_0_162();
    *(v90 + 32) = FeatureSurveyYesNoQuestion.init(analyticsFieldName:TTRYesTemplate:TTRNoTemplate:shouldTriggerTTR:question:isMandatory:viewType:)(v91, v92, v93, v94, v95, v96, 1, v97, "or the produced video:", 0, v123);
    v98 = OUTLINED_FUNCTION_11_2(v30);
    v98[2] = 0;
    v98[3] = 0xE000000000000000;
    v98[4] = v90;
    *(v7 + 48) = v98;
    v3[2] = v7;
    v3[3] = 0xD00000000000002ALL;
    v3[4] = 0x80000001C75ADC60;
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t FreeformStorySurveyDataSource.makeAttachmentsForTTR()(uint64_t a1, uint64_t a2)
{
  v3[2] = v2;
  v4 = sub_1C754DD2C();
  v3[3] = v4;
  v3[4] = *(v4 - 8);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v5 = sub_1C754DF6C();
  v3[7] = v5;
  v3[8] = *(v5 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C73B1194, 0, 0);
}

uint64_t sub_1C73B1194()
{
  type metadata accessor for FreeformStoryDiagnosticsUtils();
  static FreeformStoryDiagnosticsUtils.diagnosticFiles(for:)();
  v2 = v1;
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];
  v6 = v0[2];
  v7 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1C7069CE4(0x44444D4D59595959, 0xED00006D6D48485FLL, v7);
  sub_1C755180C();

  MEMORY[0x1CCA5CD70](*(v6 + 24), *(v6 + 32));
  MEMORY[0x1CCA5CD70](95, 0xE100000000000000);
  sub_1C754DF5C();
  v8 = sub_1C754DECC();
  (*(v4 + 8))(v3, v5);
  v9 = [v7 stringFromDate_];

  v10 = sub_1C755068C();
  v12 = v11;

  MEMORY[0x1CCA5CD70](v10, v12);

  MEMORY[0x1CCA5CD70](0x6E6F736A2ELL, 0xE500000000000000);
  v13 = sub_1C7237954();
  v15 = v14;
  sub_1C734C3B4();
  v17 = v0[5];
  v16 = v0[6];
  v18 = v0[3];
  v19 = v0[4];

  sub_1C6FC1640(v13, v15);
  (*(v19 + 16))(v17, v16, v18);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C6FB4B10(0, *(v2 + 16) + 1, 1, v2);
    v2 = v28;
  }

  v21 = *(v2 + 16);
  v20 = *(v2 + 24);
  if (v21 >= v20 >> 1)
  {
    sub_1C6FB4B10(v20 > 1, v21 + 1, 1, v2);
    v2 = v29;
  }

  v23 = v0[5];
  v22 = v0[6];
  v24 = v0[3];
  v25 = v0[4];

  (*(v25 + 8))(v22, v24);
  *(v2 + 16) = v21 + 1;
  (*(v25 + 32))(v2 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21, v23, v24);

  v26 = v0[1];

  return v26(v2);
}

void *sub_1C73B153C()
{
  v1 = *(v0 + 16);
  v36 = sub_1C6FB6304();
  if (v36)
  {
    v2 = 0;
    v35 = v1 & 0xC000000000000001;
    v33 = v1 & 0xFFFFFFFFFFFFFF8;
    v3 = MEMORY[0x1E69E7CC8];
    v32 = v1 + 32;
    v34 = v1;
    while (1)
    {
      if (v35)
      {
        v4 = MEMORY[0x1CCA5DDD0](v2, v1);
      }

      else
      {
        if (v2 >= *(v33 + 16))
        {
          goto LABEL_42;
        }

        v4 = *(v32 + 8 * v2);
      }

      v5 = __OFADD__(v2++, 1);
      if (v5)
      {
        break;
      }

      v6 = *(v4 + 32);
      if (v6 >> 62)
      {
        v7 = sub_1C75516BC();
        if (v7)
        {
LABEL_10:
          v37 = v2;
          v41 = v6 & 0xC000000000000001;
          v38 = v6 & 0xFFFFFFFFFFFFFF8;
          sub_1C75504FC();
          v8 = 0;
          v39 = v7;
          v40 = v6;
          while (1)
          {
            if (v41)
            {
              v9 = MEMORY[0x1CCA5DDD0](v8, v6);
            }

            else
            {
              if (v8 >= *(v38 + 16))
              {
                goto LABEL_39;
              }

              v9 = *(v6 + 8 * v8 + 32);
            }

            v10 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              break;
            }

            v12 = v9[2];
            v11 = v9[3];
            v13 = (*(*v9 + 160))();
            if (v13)
            {
              v14 = v13;
              swift_isUniquelyReferenced_nonNull_native();
              v15 = sub_1C6F78124(v12, v11);
              if (__OFADD__(v3[2], (v16 & 1) == 0))
              {
                goto LABEL_38;
              }

              v17 = v15;
              v18 = v16;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219720, &unk_1C755CBB0);
              if (sub_1C7551A2C())
              {
                v19 = sub_1C6F78124(v12, v11);
                if ((v18 & 1) != (v20 & 1))
                {
                  goto LABEL_43;
                }

                v17 = v19;
              }

              if (v18)
              {
                v21 = v3[7];
                v22 = *(v21 + 8 * v17);
                *(v21 + 8 * v17) = v14;
              }

              else
              {
                v3[(v17 >> 6) + 8] |= 1 << v17;
                v26 = (v3[6] + 16 * v17);
                *v26 = v12;
                v26[1] = v11;
                *(v3[7] + 8 * v17) = v14;
                v27 = v3[2];
                v5 = __OFADD__(v27, 1);
                v28 = v27 + 1;
                if (v5)
                {
                  goto LABEL_40;
                }

                v3[2] = v28;
                sub_1C75504FC();
              }

              v7 = v39;
              v6 = v40;
              v10 = v8 + 1;
            }

            else
            {
              v23 = sub_1C6F78124(v12, v11);
              if (v24)
              {
                v25 = v23;
                swift_isUniquelyReferenced_nonNull_native();
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219720, &unk_1C755CBB0);
                v10 = v8 + 1;
                sub_1C7551A2C();

                sub_1C6F65BE8(0, &qword_1EDD10100, 0x1E69E58C0);
                sub_1C7551A4C();
              }
            }

            ++v8;
            if (v10 == v7)
            {

              v1 = v34;
              v2 = v37;
              goto LABEL_33;
            }
          }

          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
          break;
        }
      }

      else
      {
        v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v7)
        {
          goto LABEL_10;
        }
      }

LABEL_33:
      if (v2 == v36)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    result = sub_1C7551E4C();
    __break(1u);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
LABEL_36:
    sub_1C6F65BE8(0, &qword_1EC21B178, 0x1E696AEC0);
    v29 = sub_1C755140C();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1C6FC7E40(v29, 0x4E6E6F6973726576, 0xED00007265626D75, isUniquelyReferenced_nonNull_native);
    return v3;
  }

  return result;
}

void sub_1C73B197C()
{
  v1 = *(v0 + 48);
}

uint64_t FreeformStorySurveyDataSource.deinit()
{
  v0 = FeatureSurveyDataSource.deinit();

  return v0;
}

uint64_t FreeformStorySurveyDataSource.__deallocating_deinit()
{
  FreeformStorySurveyDataSource.deinit();
  OUTLINED_FUNCTION_328();

  return swift_deallocClassInstance();
}

id AssetElector.init(photoLibrary:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = sub_1C754FF1C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = qword_1EC21B180;
  sub_1C6F65BE8(0, &qword_1EDD0FA60, 0x1E69E9BF8);
  OUTLINED_FUNCTION_8_75();
  v10 = sub_1C755146C();
  *(v1 + v9) = v10;
  v11 = v10;
  sub_1C754FF2C();
  (*(v6 + 32))(v1 + qword_1EDD28CE0, v8, v5);
  *(v1 + qword_1EDD28CE8) = a1;
  v14 = type metadata accessor for AssetElector(0, *((v4 & v3) + 0x50), v12, v13);
  v16.receiver = v1;
  v16.super_class = v14;
  return objc_msgSendSuper2(&v16, sel_init);
}

char *sub_1C73B1C00(uint64_t a1)
{
  v2 = v1;
  v118 = *MEMORY[0x1E69E7D40] & *v2;
  v4 = OBJC_IVAR___PNAssetElectionOptions_collectionType;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v113 = a1;
  v6 = (a1 + OBJC_IVAR___PNAssetElectionOptions_collectionLocalIdentifier);
  swift_beginAccess();
  v8 = *v6;
  v7 = v6[1];
  v9 = qword_1EDD28CE0;
  swift_bridgeObjectRetain_n();
  v114 = v9;
  v10 = sub_1C754FEEC();
  v11 = sub_1C75511BC();

  if (os_log_type_enabled(v10, v11))
  {
    v117 = v2;
    v12 = v7;
    v13 = v5;
    v14 = v8;
    v15 = 0x6E6F73726570;
    v16 = swift_slowAlloc();
    v119[0] = swift_slowAlloc();
    *v16 = 136315394;
    v17 = 0xE600000000000000;
    v116 = v13;
    v18 = v13;
    v7 = v12;
    switch(v18)
    {
      case 1:
        v17 = 0xE300000000000000;
        v15 = 7628144;
        break;
      case 2:
        v17 = 0xE500000000000000;
        v15 = 0x6D75626C61;
        break;
      case 3:
        v17 = 0xE400000000000000;
        v15 = 1885958772;
        break;
      case 4:
        v15 = 0x79726F6D656DLL;
        break;
      case 5:
        v17 = 0xE500000000000000;
        v15 = 0x746E657665;
        break;
      case 6:
        v15 = 0x72476C6169636F73;
        v17 = 0xEB0000000070756FLL;
        break;
      case 7:
        v15 = 0x707954616964656DLL;
        v17 = 0xE900000000000065;
        break;
      case 8:
        OUTLINED_FUNCTION_13_73();
        OUTLINED_FUNCTION_10_71();
        break;
      case 9:
        OUTLINED_FUNCTION_13_73();
        OUTLINED_FUNCTION_12_68();
        break;
      default:
        break;
    }

    v19 = sub_1C6F765A4(v15, v17, v119);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    v8 = v14;
    *(v16 + 14) = sub_1C6F765A4(v14, v12, v119);
    _os_log_impl(&dword_1C6F5C000, v10, v11, "Start electing assets for collectionType '%s', localIdentifier: %s", v16, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();

    v5 = v116;
    v2 = v117;
  }

  else
  {
  }

  v20 = *(v2 + qword_1EC21B180);
  type metadata accessor for PerformanceMeasure(0);
  swift_allocObject();
  v21 = v20;
  v22 = PerformanceMeasure.init(name:log:)();
  v23 = objc_opt_self();
  v24 = sub_1C755065C();
  v25 = [v23 uuidFromLocalIdentifier_];

  if (!v25 || (v34 = sub_1C755068C(), v36 = v35, v25, sub_1C6F65BE8(0, &qword_1EDD0CEB0, 0x1E6978AE8), LOBYTE(v119[0]) = v5, v37 = FeaturedCollectionKind.phSuggestionSubtype.getter(), v112 = *(v2 + qword_1EDD28CE8), v117 = v8, v38 = [v112 librarySpecificFetchOptions], v39 = static PHSuggestion.fetchRelatedCollection(with:suggestionSubtype:options:)(v34, v36, v37, v38), v38, v8 = v117, v26 = , !v39) || (v40 = objc_msgSend(v39, sel_firstObject), v39, !v40))
  {
    v48 = OUTLINED_FUNCTION_7_83(v26, v27, v28, v29, v30, v31, v32, v33, v112, v113, v114, v115, v116, v117, v118);
    v49 = OUTLINED_FUNCTION_0_163();
    WitnessTable = swift_getWitnessTable(v49, v48);
    OUTLINED_FUNCTION_86_0(WitnessTable);
    *v51 = v5;
    *(v51 + 8) = v8;
    *(v51 + 16) = v7;
    *(v51 + 24) = 0;
    goto LABEL_21;
  }

  v41 = objc_opt_self();
  if (!OUTLINED_FUNCTION_9_81(v41))
  {
    v52 = objc_opt_self();
    v53 = OUTLINED_FUNCTION_9_81(v52);
    if (v53)
    {
      v54 = v53;
      sub_1C6F65BE8(0, &qword_1EDD0FA88, 0x1E6978650);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v56 = v40;
      if ([v54 isMemberOfClass_])
      {
        v42 = objc_allocWithZone(type metadata accessor for AlbumAssetElector(0));
        _s18PhotosIntelligence17AlbumAssetElectorC12photoLibraryACSo07PHPhotoG0C_tcfc_0(v112);
        v57 = OUTLINED_FUNCTION_1_122();
        sub_1C741384C(v57, v58);
        goto LABEL_19;
      }
    }

    v59 = objc_opt_self();
    v60 = OUTLINED_FUNCTION_9_81(v59);
    if (v60)
    {
      v61 = v60;
      switch(v5)
      {
        case 5:
          v42 = objc_allocWithZone(type metadata accessor for EventAssetElector(0));
          v72 = v40;
          _s18PhotosIntelligence16TripAssetElectorC12photoLibraryACSo07PHPhotoG0C_tcfc_0(v112);
          v73 = OUTLINED_FUNCTION_1_122();
          v65 = sub_1C72AF804(v73, v74);
          goto LABEL_38;
        case 4:
          v42 = objc_allocWithZone(type metadata accessor for MemoryAssetElector(0));
          v69 = v40;
          _s18PhotosIntelligence16TripAssetElectorC12photoLibraryACSo07PHPhotoG0C_tcfc_0(v112);
          v70 = OUTLINED_FUNCTION_1_122();
          v65 = sub_1C726E2E8(v70, v71);
          goto LABEL_38;
        case 3:
          v42 = objc_allocWithZone(type metadata accessor for TripAssetElector(0));
          v62 = v40;
          _s18PhotosIntelligence16TripAssetElectorC12photoLibraryACSo07PHPhotoG0C_tcfc_0(v112);
          v63 = OUTLINED_FUNCTION_1_122();
          v65 = sub_1C710CE7C(v63, v64);
LABEL_38:
          v47 = v65;
          goto LABEL_39;
      }

      v83 = OUTLINED_FUNCTION_7_83(v75, v76, v77, v78, v79, v80, v81, v82, v112, v113, v114, v115, v5, v117, v118);
      v84 = OUTLINED_FUNCTION_0_163();
      swift_getWitnessTable(v84, v83);
      swift_allocError();
      *v85 = v5;
      *(v85 + 8) = v61;
      *(v85 + 16) = 0;
      v86 = 3;
    }

    else
    {
      v66 = objc_opt_self();
      if (OUTLINED_FUNCTION_9_81(v66))
      {
        v42 = objc_allocWithZone(type metadata accessor for SocialGroupAssetElector(0));
        v67 = v40;
        _s18PhotosIntelligence23SocialGroupAssetElectorC12photoLibraryACSo07PHPhotoH0C_tcfc_0(v112);
        v68 = OUTLINED_FUNCTION_1_122();
        v65 = sub_1C74DE590(v68);
        goto LABEL_38;
      }

      v87 = objc_opt_self();
      if (OUTLINED_FUNCTION_9_81(v87))
      {
        v42 = objc_allocWithZone(type metadata accessor for HighlightAssetElector(0));
        v88 = v40;
        _s18PhotosIntelligence21HighlightAssetElectorC12photoLibraryACSo07PHPhotoG0C_tcfc_0(v112);
        v89 = OUTLINED_FUNCTION_1_122();
        v65 = sub_1C73FF980(v89, v90);
        goto LABEL_38;
      }

      v109 = OUTLINED_FUNCTION_7_83(v101, v102, v103, v104, v105, v106, v107, v108, v112, v113, v114, v115, v5, v117, v118);
      v110 = OUTLINED_FUNCTION_0_163();
      v111 = swift_getWitnessTable(v110, v109);
      OUTLINED_FUNCTION_86_0(v111);
      *(v85 + 8) = 0;
      *(v85 + 16) = 0;
      *v85 = v40;
      v86 = 2;
    }

    *(v85 + 24) = v86;
LABEL_21:
    swift_willThrow();

    return v22;
  }

  v42 = objc_allocWithZone(type metadata accessor for PersonAssetElector(0));
  v43 = v40;
  _s18PhotosIntelligence23SocialGroupAssetElectorC12photoLibraryACSo07PHPhotoH0C_tcfc_0(v112);
  v44 = OUTLINED_FUNCTION_1_122();
  v46 = sub_1C70A4320(v44, v45);
LABEL_19:
  v47 = v46;
LABEL_39:

  v91 = v47;
  sub_1C6F85170();
  sub_1C75504FC();
  v22 = v91;
  v92 = sub_1C754FEEC();
  v93 = sub_1C75511BC();

  if (os_log_type_enabled(v92, v93))
  {
    v94 = 0x6E6F73726570;
    v95 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    *v95 = 134218498;
    v96 = OBJC_IVAR____TtC18PhotosIntelligence19AssetElectionResult_fetchResult;
    swift_beginAccess();
    *(v95 + 4) = [*&v22[v96] count];

    *(v95 + 12) = 2080;
    v97 = 0xE600000000000000;
    switch(v93)
    {
      case 1:
        v97 = 0xE300000000000000;
        v94 = 7628144;
        break;
      case 2:
        v97 = 0xE500000000000000;
        v94 = 0x6D75626C61;
        break;
      case 3:
        v97 = 0xE400000000000000;
        v94 = 1885958772;
        break;
      case 4:
        v94 = 0x79726F6D656DLL;
        break;
      case 5:
        v97 = 0xE500000000000000;
        v94 = 0x746E657665;
        break;
      case 6:
        v94 = 0x72476C6169636F73;
        v97 = 0xEB0000000070756FLL;
        break;
      case 7:
        v94 = 0x707954616964656DLL;
        v97 = 0xE900000000000065;
        break;
      case 8:
        OUTLINED_FUNCTION_11_68();
        OUTLINED_FUNCTION_10_71();
        break;
      case 9:
        OUTLINED_FUNCTION_11_68();
        OUTLINED_FUNCTION_12_68();
        break;
      default:
        break;
    }

    v98 = sub_1C6F765A4(v94, v97, &v120);

    *(v95 + 14) = v98;
    *(v95 + 22) = 2080;
    v99 = sub_1C6F765A4(v117, v7, &v120);

    *(v95 + 24) = v99;
    _os_log_impl(&dword_1C6F5C000, v92, v93, "Elected %ld assets for collectionType '%s', localIdentifier: %s", v95, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  return v22;
}

uint64_t sub_1C73B257C()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  switch(*(v0 + 24))
  {
    case 1:
      OUTLINED_FUNCTION_56_0();
      sub_1C755180C();
      OUTLINED_FUNCTION_4_93();
      sub_1C73E6AE4(v2);
      OUTLINED_FUNCTION_5_87();
      MEMORY[0x1CCA5CD70](v1, v3);
      v4 = 0x6F6E207361682029;
      v5 = 0xEF73746573736120;
      goto LABEL_6;
    case 2:
      OUTLINED_FUNCTION_56_0();
      sub_1C755180C();

      strcpy(v11, "Collection (");
      BYTE5(v11[1]) = 0;
      HIWORD(v11[1]) = -5120;
      v6 = [v2 localIdentifier];
      sub_1C755068C();
      OUTLINED_FUNCTION_15_72();
      OUTLINED_FUNCTION_6_96();

      MEMORY[0x1CCA5CD70](0x70797420666F2029, 0xEA00000000002065);
      v7 = [v2 description];
      sub_1C755068C();
      OUTLINED_FUNCTION_15_72();
      sub_1C73B2DF4(v2, v1, v3, 2);
      OUTLINED_FUNCTION_6_96();

      v4 = 0x70757320746F6E20;
      v5 = 0xEE00646574726F70;
      goto LABEL_6;
    case 3:
      OUTLINED_FUNCTION_56_0();
      sub_1C755180C();
      OUTLINED_FUNCTION_4_93();
      sub_1C73E6AE4(v2);
      OUTLINED_FUNCTION_5_87();
      v8 = [v1 localIdentifier];
      sub_1C755068C();
      OUTLINED_FUNCTION_15_72();
      OUTLINED_FUNCTION_6_96();

      MEMORY[0x1CCA5CD70](0xD000000000000013, 0x80000001C75ADD70);
      v9 = [v1 description];
      sub_1C755068C();
      OUTLINED_FUNCTION_15_72();
      sub_1C73B2DF4(v2, v1, v3, 3);
      OUTLINED_FUNCTION_6_96();

      return v11[0];
    default:
      OUTLINED_FUNCTION_56_0();
      sub_1C755180C();
      OUTLINED_FUNCTION_4_93();
      sub_1C73E6AE4(v2);
      OUTLINED_FUNCTION_5_87();
      MEMORY[0x1CCA5CD70](v1, v3);
      v4 = 0x6F6620746F6E2029;
      v5 = 0xEB00000000646E75;
LABEL_6:
      MEMORY[0x1CCA5CD70](v4, v5);
      return v11[0];
  }
}

uint64_t sub_1C73B2874(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_1C7586658, a1);

  return MEMORY[0x1EEDC6AD0](a1, WitnessTable);
}

uint64_t sub_1C73B28C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_1C7586658, a1);

  return MEMORY[0x1EEDC6AC0](a1, WitnessTable);
}

uint64_t AssetElector.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EDD28CE0;
  v4 = sub_1C754FF1C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id AssetElector.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void AssetElector.init()()
{
  v1 = qword_1EC21B180;
  sub_1C6F65BE8(0, &qword_1EDD0FA60, 0x1E69E9BF8);
  OUTLINED_FUNCTION_8_75();
  *(v0 + v1) = sub_1C755146C();
  sub_1C7551AAC();
  __break(1u);
}

id AssetElector.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for AssetElector(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void sub_1C73B2B4C(uint64_t a1)
{
  v2 = qword_1EDD28CE0;
  v3 = sub_1C754FF1C();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  v4 = *(a1 + qword_1EDD28CE8);
}

uint64_t sub_1C73B2BF4(uint64_t a1)
{
  result = sub_1C754FF1C();
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

uint64_t sub_1C73B2D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C73B2D50(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 25))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C73B2D90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

void sub_1C73B2DF4(void *a1, uint64_t a2, id a3, char a4)
{
  switch(a4)
  {
    case 0:
    case 1:

      break;
    case 2:

      break;
    case 3:
      MEMORY[0x1EEE66BB8](a1, a2, a3);
      break;
    default:
      return;
  }
}

void Random.Arc4Random.init(seed:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214EA0, &unk_1C7586710);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C7576D70;
  *(inited + 32) = HIBYTE(a1);
  *(inited + 33) = BYTE6(a1);
  *(inited + 34) = BYTE5(a1);
  *(inited + 35) = BYTE4(a1);
  *(inited + 36) = BYTE3(a1);
  *(inited + 37) = BYTE2(a1);
  *(inited + 38) = BYTE1(a1);
  *(inited + 39) = a1;
  Random.Arc4Random.init(seed:)(inited, &v6);
  v5 = v7;
  *a2 = v6;
  *(a2 + 8) = v5;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214EA0, &unk_1C7586710);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = 256;
  v4[3] = 2 * v5 - 64;
  if (sub_1C70D07A4(v16, (v4 + 4), 256, 65280) != 256)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = *(a1 + 16);
  if (v6 - 257 >= 0xFFFFFFFFFFFFFF00)
  {
    v7 = 0;
    v8 = 32;
    while (1)
    {
      v9 = v8 - 32;
      v10 = v4[2];
      if (v10 <= v8 - 32)
      {
        break;
      }

      if (v9 % v6 >= *(a1 + 16))
      {
        goto LABEL_14;
      }

      v11 = *(v4 + v8);
      v12 = *(a1 + 32 + v9 % v6);
      v13 = v11 + v7;
      v7 += v11 + v12;
      if (v9 != (v13 + v12))
      {
        if (v10 <= v7)
        {
          goto LABEL_15;
        }

        v14 = *(v4 + v7 + 32);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C70E3D7C();
          v4 = v15;
        }

        *(v4 + v8) = v14;
        *(v4 + v7 + 32) = v11;
      }

      if (++v8 == 288)
      {

        *a2 = v4;
        *(a2 + 8) = 0;
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
}

uint64_t Random.Arc4Random.init(seed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = sub_1C754DFCC();
  v3 = v2;
  v5 = v4;
  v6 = v2 >> 8;
  v7 = v2 >> 16;
  v8 = v2 >> 24;
  v9 = HIDWORD(v2);
  v10 = v2 >> 40;
  v11 = HIWORD(v2);
  v12 = HIBYTE(v2);
  v13 = v4 >> 8;
  v18 = v4 >> 16;
  v19 = v4 >> 24;
  v20 = HIDWORD(v4);
  v21 = v4 >> 40;
  v22 = HIWORD(v4);
  v23 = HIBYTE(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214EA0, &unk_1C7586710);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C7586700;
  *(inited + 32) = v3;
  *(inited + 33) = v6;
  *(inited + 34) = v7;
  *(inited + 35) = v8;
  *(inited + 36) = v9;
  *(inited + 37) = v10;
  *(inited + 38) = v11;
  *(inited + 39) = v12;
  *(inited + 40) = v5;
  *(inited + 41) = v13;
  *(inited + 42) = v18;
  *(inited + 43) = v19;
  *(inited + 44) = v20;
  *(inited + 45) = v21;
  *(inited + 46) = v22;
  *(inited + 47) = v23;
  Random.Arc4Random.init(seed:)(inited, &v26);
  v15 = sub_1C754DFFC();
  result = (*(*(v15 - 8) + 8))(a1, v15);
  v17 = v27;
  *a2 = v26;
  *(a2 + 8) = v17;
  return result;
}

uint64_t Random.__allocating_init(randomSeed:)(uint64_t a1)
{
  v1 = a1;
  v2 = swift_allocObject();
  Random.init(randomSeed:)(v1);
  return v2;
}

unint64_t Random.sample(k:from:using:)(uint64_t a1, unint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  v109 = *MEMORY[0x1E69E9840];
  v10 = *(a2 + 16);
  if (v10 <= a1)
  {
    sub_1C75504FC();
    return v9;
  }

  v11 = v8;
  if (!*a3)
  {
    OUTLINED_FUNCTION_0_164(a1, a2, a3, a4, a5, a6, a7, a8, v96, v97);
    sub_1C75504FC();
    sub_1C73B3D7C(v8 + 24, sub_1C73B3864);
    swift_endAccess();
    sub_1C7033F04(a1, v9);
    v11 = v22;
    v24 = v23;
    if (v23)
    {
      sub_1C7551DEC();
      swift_unknownObjectRetain_n();
      v94 = swift_dynamicCastClass();
      if (!v94)
      {
        swift_unknownObjectRelease();
        v94 = MEMORY[0x1E69E7CC0];
      }

      v95 = *(v94 + 16);

      if (__OFSUB__(v24 >> 1, v11))
      {
        goto LABEL_79;
      }

      if (v95 == (v24 >> 1) - v11)
      {
        v18 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (!v18)
        {
          swift_unknownObjectRelease();
          return MEMORY[0x1E69E7CC0];
        }

        return v18;
      }

      swift_unknownObjectRelease();
    }

    sub_1C739C624();
    v18 = v25;
    swift_unknownObjectRelease();
    return v18;
  }

  v100 = a1;
  v102 = *(a2 + 16);
  if (*a3 != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215010, &unk_1C755C210);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1C755BAB0;
    OUTLINED_FUNCTION_0_164(v18, v26, v27, v28, v29, v30, v31, v32, v96, v97);
    if (!v10)
    {
      goto LABEL_76;
    }

    v33 = sub_1C73B45F0(v10);
    swift_endAccess();
    if (v33 < v10)
    {
      v105 = v9 + 32;
      *(v18 + 32) = *(v9 + 32 + 8 * v33);
      if (a1 <= 1)
      {
        sub_1C75504FC();
      }

      else
      {
        v34 = 4 * v10;
        sub_1C75504FC();
        v97 = v9 + 24;
        v98 = 4 * v10;
        do
        {
          v35 = sub_1C7550BBC();
          *(v35 + 16) = v10;
          v107 = v35;
          v36 = (v35 + 32);
          memset_pattern16((v35 + 32), &unk_1C757CC30, v34);
          v37 = 0;
          v9 = v10;
          v38 = *(v18 + 16);
          do
          {
            v39 = 0;
            v103 = v37 + 1;
            while (v38 != v39)
            {
              if (v39 >= *(v18 + 16))
              {
                __break(1u);
LABEL_70:
                __break(1u);
LABEL_71:
                __break(1u);
LABEL_72:
                __break(1u);
LABEL_73:
                __break(1u);
LABEL_74:
                __break(1u);
LABEL_75:
                __break(1u);
LABEL_76:
                __break(1u);
                goto LABEL_77;
              }

              v40 = v18;
              v9 = *(v18 + 8 * v39 + 32);
              v41 = *(v105 + 8 * v37);
              v42 = *(v9 + 16);
              if (v42 != *(v41 + 16))
              {
                goto LABEL_70;
              }

              sub_1C75504FC();
              sub_1C75504FC();
              if (v42)
              {
                v43 = sub_1C7550BBC();
                *(v43 + 16) = v42;
                bzero((v43 + 32), 4 * v42);
                v44 = *(v9 + 16);
              }

              else
              {
                v44 = 0;
                v43 = MEMORY[0x1E69E7CC0];
              }

              MEMORY[0x1CCA5FAD0](v41 + 32, 1, v9 + 32, 1, v43 + 32, 1, v44);

              v45 = *(v43 + 16);
              __C[0] = NAN;
              vDSP_svesq((v43 + 32), 1, __C, v45);
              v46 = __C[0];

              v9 = *(v107 + 16);
              if (v37 >= v9)
              {
                goto LABEL_71;
              }

              if (v46 < v36[v37])
              {
                v36[v37] = v46;
              }

              ++v39;
              v18 = v40;
            }

            ++v37;
          }

          while (v103 != v102);
          __C[0] = NAN;
          sub_1C75504FC();
          vDSP_sve(v36, 1, __C, v9);
          v47 = __C[0];

          OUTLINED_FUNCTION_0_164(v48, v49, v50, v51, v52, v53, v54, v55, v96, v97);
          v56 = 0.0;
          v57 = vcvts_n_f32_u32(sub_1C73B4538(0x1000001uLL), 0x18uLL) + 0.0;
          swift_endAccess();
          v58 = 0;
          v10 = v102;
          do
          {
            if (v102 == v58)
            {

              v63 = *(v18 + 16);
              goto LABEL_35;
            }

            if (v58 >= *(v107 + 16))
            {
              goto LABEL_75;
            }

            v59 = v58 + 1;
            v56 = v56 + *(v107 + 4 * v58++ + 32);
          }

          while ((v47 * v57) > v56);

          v60 = *(v97 + 8 * v59);
          v61 = *(v18 + 16);
          v62 = *(v18 + 24);
          v63 = v61 + 1;
          sub_1C75504FC();
          if (v61 >= v62 >> 1)
          {
            sub_1C6FB2DBC();
            v18 = v64;
          }

          *(v18 + 16) = v63;
          *(v18 + 8 * v61 + 32) = v60;
LABEL_35:
          v34 = v98;
        }

        while (v63 < v100);
      }

      return v18;
    }

LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  sub_1C75504FC();
  sub_1C7033F04(a1, v9);
  v14 = v13;
  v16 = v15;
  if ((v15 & 1) == 0)
  {
LABEL_5:
    sub_1C739C624();
    v18 = v17;
    v19 = v100;
    v20 = v102;
    goto LABEL_43;
  }

  sub_1C7551DEC();
  swift_unknownObjectRetain_n();
  v65 = swift_dynamicCastClass();
  if (!v65)
  {
    swift_unknownObjectRelease();
    v65 = MEMORY[0x1E69E7CC0];
  }

  v66 = *(v65 + 16);

  if (__OFSUB__(v16 >> 1, v14))
  {
    goto LABEL_78;
  }

  if (v66 != (v16 >> 1) - v14)
  {
LABEL_80:
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  v18 = swift_dynamicCastClass();
  v67 = swift_unknownObjectRelease();
  v19 = v100;
  v20 = v102;
  if (v18)
  {
    goto LABEL_44;
  }

  v18 = MEMORY[0x1E69E7CC0];
LABEL_43:
  v67 = swift_unknownObjectRelease();
LABEL_44:
  if (v20 != v19)
  {
    v99 = v9 + 32;
    v101 = v11;
    do
    {
      if (v19 < 0)
      {
        goto LABEL_72;
      }

      v106 = v18;
      v75 = v19 + 1;
      OUTLINED_FUNCTION_0_164(v67, v68, v69, v70, v71, v72, v73, v74, v96, v97);
      v104 = v19;
      sub_1C73B442C();
      sub_1C73B442C();
      sub_1C73B442C();
      sub_1C73B442C();
      v9 = v76;
      sub_1C73B442C();
      sub_1C73B442C();
      sub_1C73B442C();
      v78 = v77;
      sub_1C73B442C();
      v79 = v19;
      OUTLINED_FUNCTION_2_115();
      v82 = v81 | ((v80 & 0xFFFFFFFFFFFFFF00 | v78) << 8);
      v83 = v82 * (v19 + 1);
      v84 = (v82 * (v19 + 1)) >> 64;
      if (v79 >= v82 * v75)
      {
        v85 = v102;
        if (~v79 % v75 <= v83)
        {
          goto LABEL_53;
        }

        do
        {
          sub_1C73B442C();
          sub_1C73B442C();
          sub_1C73B442C();
          sub_1C73B442C();
          sub_1C73B442C();
          v9 = v86;
          sub_1C73B442C();
          sub_1C73B442C();
          v88 = v87;
          sub_1C73B442C();
          OUTLINED_FUNCTION_1_123();
          v91 = v90 | ((v89 & 0xFFFFFFFFFFFFFF00 | v88) << 8);
        }

        while (~v79 % v75 > v91 * v75);
        v84 = (v91 * v75) >> 64;
        v85 = v102;
        v79 = v104;
      }

      else
      {
        v85 = v102;
      }

      v18 = v106;
LABEL_53:
      v67 = swift_endAccess();
      if (v84 >= v100)
      {
        v11 = v101;
      }

      else
      {
        v11 = v101;
        if (v79 >= v85)
        {
          goto LABEL_73;
        }

        v92 = *(v99 + 8 * v79);
        sub_1C75504FC();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C70E3DC4();
          v18 = v93;
        }

        if (v84 >= *(v18 + 16))
        {
          goto LABEL_74;
        }

        *(v18 + 8 * v84 + 32) = v92;
      }

      v19 = v75;
    }

    while (v75 != v85);
  }

  return v18;
}