uint64_t sub_22F172094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22F73F690();
  MEMORY[0x28223BE20](*(v4 - 8));
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v23 - v9;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v8 + 16);
    v14 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v26 = v8;
    v24 = a2;
    v25 = v13;
    (v13)(&v23 - v9, v14, v4, v10);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v6, v14 + *(result + 72) * v19, v4);
        sub_22F173D18();
        v21 = sub_22F740DB0();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v6, v4);
        }

        else
        {
          v22(v6, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v8 + 56);

    return v17(a2, 1, 1, v4, v10);
  }

  return result;
}

unint64_t sub_22F172314(unint64_t result)
{
  v1 = 1 << *(result + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(result + 64);
  if (v3)
  {
    v4 = 0;
    v5 = __clz(__rbit64(v3));
    v6 = (v3 - 1) & v3;
    v7 = (v1 + 63) >> 6;
LABEL_9:
    v11 = *(result + 56);
    v12 = *(v11 + 4 * v5);
    if (!v6)
    {
      goto LABEL_11;
    }

    do
    {
      v13 = v4;
LABEL_15:
      v14 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v15 = (v13 << 8) | (4 * v14);
      if (v12 < *(v11 + v15))
      {
        v12 = *(v11 + v15);
      }
    }

    while (v6);
LABEL_11:
    while (1)
    {
      v13 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v13 >= v7)
      {
        v16 = 0;
        v17 = LODWORD(v12);
        return v17 | (v16 << 32);
      }

      v6 = *(result + 64 + 8 * v13);
      ++v4;
      if (v6)
      {
        v4 = v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v7 = (v1 + 63) >> 6;
    while (v7 - 1 != v9)
    {
      v4 = v9 + 1;
      v10 = *(result + 72 + 8 * v9);
      v8 -= 64;
      ++v9;
      if (v10)
      {
        v6 = (v10 - 1) & v10;
        v5 = __clz(__rbit64(v10)) - v8;
        goto LABEL_9;
      }
    }

    v17 = 0;
    v16 = 1;
    return v17 | (v16 << 32);
  }

  return result;
}

void sub_22F172438(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_22F73F690();
  MEMORY[0x28223BE20](v4);
  v44 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v39 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  v14 = MEMORY[0x28223BE20](v12);
  v46 = &v39 - v15;
  v16 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a1 + 56);
  if (v19)
  {
    v39 = a2;
    v20 = 0;
    v21 = __clz(__rbit64(v19));
    v22 = (v19 - 1) & v19;
    v23 = (v17 + 63) >> 6;
LABEL_9:
    v26 = v13[9];
    v27 = *(a1 + 48) + v26 * v21;
    v28 = v13[2];
    v40 = v13;
    v41 = v28;
    v42 = v13 + 2;
    v43 = v26;
    (v28)(v11, v27, v4, v14);
    v30 = v40 + 4;
    v29 = v40[4];
    v29(v46, v11, v4);
    v45 = a1;

    if (v22)
    {
      goto LABEL_12;
    }

LABEL_13:
    while (1)
    {
      v31 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v31 >= v23)
      {

        v37 = v39;
        v29(v39, v46, v4);
        (v40[7])(v37, 0, 1, v4);
        return;
      }

      v22 = *(v16 + 8 * v31);
      ++v20;
      if (v22)
      {
        while (1)
        {
          v32 = __clz(__rbit64(v22));
          v22 &= v22 - 1;
          v33 = v44;
          v41(v44, *(v45 + 48) + (v32 | (v31 << 6)) * v43, v4);
          v29(v8, v33, v4);
          sub_22F173D18();
          v34 = v46;
          v35 = sub_22F740DB0();
          v36 = *(v30 - 3);
          if (v35)
          {
            v36(v34, v4);
            v29(v34, v8, v4);
            v20 = v31;
            if (!v22)
            {
              goto LABEL_13;
            }
          }

          else
          {
            v36(v8, v4);
            v20 = v31;
            if (!v22)
            {
              goto LABEL_13;
            }
          }

LABEL_12:
          v31 = v20;
        }
      }
    }

    __break(1u);
  }

  else
  {
    v24 = 0;
    v23 = (v17 + 63) >> 6;
    while (v23 - 1 != v19)
    {
      v20 = v19 + 1;
      v25 = *(a1 + 64 + 8 * v19);
      v24 -= 64;
      ++v19;
      if (v25)
      {
        v39 = a2;
        v22 = (v25 - 1) & v25;
        v21 = __clz(__rbit64(v25)) - v24;
        goto LABEL_9;
      }
    }

    v38 = v13[7];

    v38(a2, 1, 1, v4, v14);
  }
}

id MusicCurationFeatures.__allocating_init(memoryCategory:memorySubcategory:curatorEvents:eventCollectionDuration:eventRatioByLanguageCode:mostFrequentMeaningLabel:performerIdentifiers:inferredUserLanguageCodes:maestroSongScoresBySongID:scoreByAssetCollectionMaestroKeyword:consistentHash:location:shouldAvoidColorGrading:keywordsDataFrame:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17)
{
  v24 = objc_allocWithZone(v17);
  *&v24[OBJC_IVAR___PGMusicCurationFeatures_memoryCategory] = a1;
  *&v24[OBJC_IVAR___PGMusicCurationFeatures_memorySubcategory] = a2;
  *&v24[OBJC_IVAR___PGMusicCurationFeatures_curatorEvents] = a3;
  v25 = &v24[OBJC_IVAR___PGMusicCurationFeatures_eventCollectionDuration];
  *v25 = a4;
  v25[8] = a5 & 1;
  *&v24[OBJC_IVAR___PGMusicCurationFeatures_eventRatioByLanguageCode] = a6;
  v26 = &v24[OBJC_IVAR___PGMusicCurationFeatures_mostFrequentMeaningLabel];
  *v26 = a7;
  v26[1] = a8;
  *&v24[OBJC_IVAR___PGMusicCurationFeatures_performerIdentifiers] = a9;
  *&v24[OBJC_IVAR___PGMusicCurationFeatures_inferredUserLanguageCodes] = a10;
  *&v24[OBJC_IVAR___PGMusicCurationFeatures_maestroSongScoresBySongID] = a11;
  *&v24[OBJC_IVAR___PGMusicCurationFeatures_scoreByAssetCollectionMaestroKeyword] = a12;
  *&v24[OBJC_IVAR___PGMusicCurationFeatures_consistentHash] = a13;
  v27 = &v24[OBJC_IVAR___PGMusicCurationFeatures_location];
  *v27 = a14;
  v27[1] = a15;
  v24[OBJC_IVAR___PGMusicCurationFeatures_shouldAvoidColorGrading] = a16;
  *&v24[OBJC_IVAR___PGMusicCurationFeatures_keywordsDataFrame] = a17;
  v31.receiver = v24;
  v31.super_class = v17;
  return objc_msgSendSuper2(&v31, sel_init);
}

id MusicCurationFeatures.init(memoryCategory:memorySubcategory:curatorEvents:eventCollectionDuration:eventRatioByLanguageCode:mostFrequentMeaningLabel:performerIdentifiers:inferredUserLanguageCodes:maestroSongScoresBySongID:scoreByAssetCollectionMaestroKeyword:consistentHash:location:shouldAvoidColorGrading:keywordsDataFrame:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17)
{
  ObjectType = swift_getObjectType();
  *&v17[OBJC_IVAR___PGMusicCurationFeatures_memoryCategory] = a1;
  *&v17[OBJC_IVAR___PGMusicCurationFeatures_memorySubcategory] = a2;
  *&v17[OBJC_IVAR___PGMusicCurationFeatures_curatorEvents] = a3;
  v25 = &v17[OBJC_IVAR___PGMusicCurationFeatures_eventCollectionDuration];
  *v25 = a4;
  v25[8] = a5 & 1;
  *&v17[OBJC_IVAR___PGMusicCurationFeatures_eventRatioByLanguageCode] = a6;
  v26 = &v17[OBJC_IVAR___PGMusicCurationFeatures_mostFrequentMeaningLabel];
  *v26 = a7;
  v26[1] = a8;
  *&v17[OBJC_IVAR___PGMusicCurationFeatures_performerIdentifiers] = a9;
  *&v17[OBJC_IVAR___PGMusicCurationFeatures_inferredUserLanguageCodes] = a10;
  *&v17[OBJC_IVAR___PGMusicCurationFeatures_maestroSongScoresBySongID] = a11;
  *&v17[OBJC_IVAR___PGMusicCurationFeatures_scoreByAssetCollectionMaestroKeyword] = a12;
  *&v17[OBJC_IVAR___PGMusicCurationFeatures_consistentHash] = a13;
  v27 = &v17[OBJC_IVAR___PGMusicCurationFeatures_location];
  *v27 = a14;
  v27[1] = a15;
  v17[OBJC_IVAR___PGMusicCurationFeatures_shouldAvoidColorGrading] = a16;
  *&v17[OBJC_IVAR___PGMusicCurationFeatures_keywordsDataFrame] = a17;
  v31.receiver = v17;
  v31.super_class = ObjectType;
  return objc_msgSendSuper2(&v31, sel_init);
}

uint64_t MusicCurationFeatures.description.getter()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___PGMusicCurationFeatures_maestroSongScoresBySongID);
  v3 = *(v2 + 16);

  sub_22F173568(v4);

  sub_22F172314(v5);

  if (v3)
  {
    v7 = 0;
    v8 = 1 << *(v2 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v2 + 64);
    v11 = (v8 + 63) >> 6;
    for (i = 0.0; v10; i = i + *(*(v2 + 56) + ((v13 << 8) | (4 * v14))))
    {
      v13 = v7;
LABEL_10:
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
    }

    while (1)
    {
      v13 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v13 >= v11)
      {
        goto LABEL_12;
      }

      v10 = *(v2 + 64 + 8 * v13);
      ++v7;
      if (v10)
      {
        v7 = v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    sub_22F741B00();
    MEMORY[0x231900B10](0xD000000000000010, 0x800000022F78F9F0);
    v15 = [objc_opt_self() stringForCategory_];
    v16 = sub_22F740E20();
    v18 = v17;

    MEMORY[0x231900B10](v16, v18);

    MEMORY[0x231900B10](0xD000000000000010, 0x800000022F78FA10);
    v19 = sub_22F742010();
    MEMORY[0x231900B10](v19);

    MEMORY[0x231900B10](0xD00000000000001ALL, 0x800000022F78FA30);
    sub_22F7413B0();
    MEMORY[0x231900B10](0xD00000000000001BLL, 0x800000022F78FA50);
    if (!*(v1 + OBJC_IVAR___PGMusicCurationFeatures_eventRatioByLanguageCode))
    {
      sub_22F14EB58(MEMORY[0x277D84F90]);
    }

    v20 = sub_22F740CB0();
    v22 = v21;

    MEMORY[0x231900B10](v20, v22);

    MEMORY[0x231900B10](0xD00000000000001BLL, 0x800000022F78FA70);
    if (*(v1 + OBJC_IVAR___PGMusicCurationFeatures_mostFrequentMeaningLabel + 8))
    {
      v23 = *(v1 + OBJC_IVAR___PGMusicCurationFeatures_mostFrequentMeaningLabel);
      v24 = *(v1 + OBJC_IVAR___PGMusicCurationFeatures_mostFrequentMeaningLabel + 8);
    }

    else
    {
      v24 = 0xE300000000000000;
      v23 = 7104878;
    }

    MEMORY[0x231900B10](v23, v24);

    MEMORY[0x231900B10](0xD000000000000017, 0x800000022F78FA90);

    v25 = sub_22F741430();
    v27 = v26;

    MEMORY[0x231900B10](v25, v27);

    MEMORY[0x231900B10](0xD00000000000001CLL, 0x800000022F78FAB0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1608, &unk_22F772BB0);
    sub_22F173C28();
    sub_22F160DE4();
    v28 = sub_22F7410E0();
    v30 = v29;

    MEMORY[0x231900B10](v28, v30);

    MEMORY[0x231900B10](0xD000000000000027, 0x800000022F78FAD0);
    v31 = sub_22F740CB0();
    MEMORY[0x231900B10](v31);

    MEMORY[0x231900B10](0xD00000000000001FLL, 0x800000022F78FB00);
    v32 = sub_22F742010();
    MEMORY[0x231900B10](v32);

    MEMORY[0x231900B10](0xD000000000000020, 0x800000022F78FB20);
    sub_22F7413E0();
    MEMORY[0x231900B10](0xD000000000000017, 0x800000022F78FB50);
    sub_22F7413E0();
    MEMORY[0x231900B10](0xD00000000000001ALL, 0x800000022F78FB70);
    sub_22F7413E0();
    MEMORY[0x231900B10](0xD000000000000011, 0x800000022F78FB90);
    v33 = sub_22F742010();
    MEMORY[0x231900B10](v33);

    MEMORY[0x231900B10](0x6F697461636F6C0ALL, 0xEB00000000203A6ELL);
    if (*(v1 + OBJC_IVAR___PGMusicCurationFeatures_location + 8))
    {
      v34 = *(v1 + OBJC_IVAR___PGMusicCurationFeatures_location);
      v35 = *(v1 + OBJC_IVAR___PGMusicCurationFeatures_location + 8);
    }

    else
    {
      v35 = 0xEB000000006E6F69;
      v34 = 0x7461636F6C206F6ELL;
    }

    MEMORY[0x231900B10](v34, v35);

    MEMORY[0x231900B10](0xD00000000000001ALL, 0x800000022F78FBB0);
    if (*(v1 + OBJC_IVAR___PGMusicCurationFeatures_shouldAvoidColorGrading))
    {
      v36 = 1702195828;
    }

    else
    {
      v36 = 0x65736C6166;
    }

    if (*(v1 + OBJC_IVAR___PGMusicCurationFeatures_shouldAvoidColorGrading))
    {
      v37 = 0xE400000000000000;
    }

    else
    {
      v37 = 0xE500000000000000;
    }

    MEMORY[0x231900B10](v36, v37);

    return 0;
  }

  return result;
}

uint64_t sub_22F1732E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22F73F690();
  MEMORY[0x28223BE20](*(v4 - 8));
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v23 - v9;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v8 + 16);
    v14 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v26 = v8;
    v24 = a2;
    v25 = v13;
    (v13)(&v23 - v9, v14, v4, v10);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v6, v14 + *(result + 72) * v19, v4);
        sub_22F173D18();
        v21 = sub_22F740DB0();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v6, v4);
        }

        else
        {
          v22(v6, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v8 + 56);

    return v17(a2, 1, 1, v4, v10);
  }

  return result;
}

unint64_t sub_22F173568(unint64_t result)
{
  v1 = 1 << *(result + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(result + 64);
  if (v3)
  {
    v4 = 0;
    v5 = __clz(__rbit64(v3));
    v6 = (v3 - 1) & v3;
    v7 = (v1 + 63) >> 6;
LABEL_9:
    v11 = *(result + 56);
    v12 = *(v11 + 4 * v5);
    if (!v6)
    {
      goto LABEL_11;
    }

    do
    {
      v13 = v4;
LABEL_15:
      v14 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v15 = (v13 << 8) | (4 * v14);
      if (*(v11 + v15) < v12)
      {
        v12 = *(v11 + v15);
      }
    }

    while (v6);
LABEL_11:
    while (1)
    {
      v13 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v13 >= v7)
      {
        v16 = 0;
        v17 = LODWORD(v12);
        return v17 | (v16 << 32);
      }

      v6 = *(result + 64 + 8 * v13);
      ++v4;
      if (v6)
      {
        v4 = v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v7 = (v1 + 63) >> 6;
    while (v7 - 1 != v9)
    {
      v4 = v9 + 1;
      v10 = *(result + 72 + 8 * v9);
      v8 -= 64;
      ++v9;
      if (v10)
      {
        v6 = (v10 - 1) & v10;
        v5 = __clz(__rbit64(v10)) - v8;
        goto LABEL_9;
      }
    }

    v17 = 0;
    v16 = 1;
    return v17 | (v16 << 32);
  }

  return result;
}

void sub_22F17368C(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_22F73F690();
  MEMORY[0x28223BE20](v4);
  v44 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v39 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  v14 = MEMORY[0x28223BE20](v12);
  v46 = &v39 - v15;
  v16 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a1 + 56);
  if (v19)
  {
    v39 = a2;
    v20 = 0;
    v21 = __clz(__rbit64(v19));
    v22 = (v19 - 1) & v19;
    v23 = (v17 + 63) >> 6;
LABEL_9:
    v26 = v13[9];
    v27 = *(a1 + 48) + v26 * v21;
    v28 = v13[2];
    v40 = v13;
    v41 = v28;
    v42 = v13 + 2;
    v43 = v26;
    (v28)(v11, v27, v4, v14);
    v30 = v40 + 4;
    v29 = v40[4];
    v29(v46, v11, v4);
    v45 = a1;

    if (v22)
    {
      goto LABEL_12;
    }

LABEL_13:
    while (1)
    {
      v31 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v31 >= v23)
      {

        v37 = v39;
        v29(v39, v46, v4);
        (v40[7])(v37, 0, 1, v4);
        return;
      }

      v22 = *(v16 + 8 * v31);
      ++v20;
      if (v22)
      {
        while (1)
        {
          v32 = __clz(__rbit64(v22));
          v22 &= v22 - 1;
          v33 = v44;
          v41(v44, *(v45 + 48) + (v32 | (v31 << 6)) * v43, v4);
          v29(v8, v33, v4);
          sub_22F173D18();
          v34 = v46;
          v35 = sub_22F740DB0();
          v36 = *(v30 - 3);
          if (v35)
          {
            v36(v34, v4);
            v29(v34, v8, v4);
            v20 = v31;
            if (!v22)
            {
              goto LABEL_13;
            }
          }

          else
          {
            v36(v8, v4);
            v20 = v31;
            if (!v22)
            {
              goto LABEL_13;
            }
          }

LABEL_12:
          v31 = v20;
        }
      }
    }

    __break(1u);
  }

  else
  {
    v24 = 0;
    v23 = (v17 + 63) >> 6;
    while (v23 - 1 != v19)
    {
      v20 = v19 + 1;
      v25 = *(a1 + 64 + 8 * v19);
      v24 -= 64;
      ++v19;
      if (v25)
      {
        v39 = a2;
        v22 = (v25 - 1) & v25;
        v21 = __clz(__rbit64(v25)) - v24;
        goto LABEL_9;
      }
    }

    v38 = v13[7];

    v38(a2, 1, 1, v4, v14);
  }
}

id MusicCurationFeatures.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MusicCurationFeatures.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22F173C28()
{
  result = qword_2810A9250;
  if (!qword_2810A9250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB1608, &unk_22F772BB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9250);
  }

  return result;
}

unint64_t sub_22F173D18()
{
  result = qword_2810AC708;
  if (!qword_2810AC708)
  {
    sub_22F73F690();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AC708);
  }

  return result;
}

uint64_t sub_22F173D70(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v32 = MEMORY[0x277D84F90];
  sub_22F146700(0, v1, 0);
  v2 = v32;
  v30 = v3 + 56;
  result = sub_22F741980();
  v5 = result;
  v6 = 0;
  v27 = v3 + 64;
  v28 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v3 + 32))
  {
    v10 = v5 >> 6;
    if ((*(v30 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_24;
    }

    v29 = v6;
    v11 = *(v3 + 36);
    v12 = v3;
    v13 = (*(v3 + 48) + 16 * v5);
    v15 = *v13;
    v14 = v13[1];
    swift_bridgeObjectRetain_n();
    v16._countAndFlagsBits = v15;
    v16._object = v14;
    MomentGraphFeature.init(featureName:)(v16);
    if (v17)
    {

      return v2;
    }

    v19 = *(v32 + 16);
    v18 = *(v32 + 24);
    if (v19 >= v18 >> 1)
    {
      result = sub_22F146700((v18 > 1), v19 + 1, 1);
    }

    *(v32 + 16) = v19 + 1;
    *(v32 + v19 + 32) = v31;
    v7 = 1 << *(v12 + 32);
    if (v5 >= v7)
    {
      goto LABEL_25;
    }

    v20 = *(v30 + 8 * v10);
    if ((v20 & (1 << v5)) == 0)
    {
      goto LABEL_26;
    }

    v3 = v12;
    if (v11 != *(v12 + 36))
    {
      goto LABEL_27;
    }

    v21 = v20 & (-2 << (v5 & 0x3F));
    if (v21)
    {
      v7 = __clz(__rbit64(v21)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v8 = v28;
      v9 = v29;
    }

    else
    {
      v22 = v10 << 6;
      v23 = v10 + 1;
      v8 = v28;
      v24 = (v27 + 8 * v10);
      while (v23 < (v7 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          result = sub_22F107D18(v5, v11, 0);
          v7 = __clz(__rbit64(v25)) + v22;
          goto LABEL_20;
        }
      }

      result = sub_22F107D18(v5, v11, 0);
LABEL_20:
      v9 = v29;
    }

    v6 = v9 + 1;
    v5 = v7;
    if (v6 == v8)
    {
      return v2;
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
  return result;
}

void *EventLabelingFeaturesFileCache.init(graphServiceURL:featureExtractorsForCaching:)(char *a1, uint64_t *a2)
{
  v3 = v2;
  v50 = a1;
  ObjectType = swift_getObjectType();
  v5 = sub_22F73F390();
  v41 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_22F73F470();
  v54 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v42 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  v12 = sub_22F740E80();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a2;
  v46 = a2[1];
  v47 = v16;
  v17 = a2[2];
  v44 = a2[3];
  v45 = v17;
  sub_22F740E70();
  v18 = sub_22F740E30();
  v20 = v19;
  (*(v13 + 8))(v15, v12);
  if (v20 >> 60 == 15 || (v21 = sub_22F15AA30(v18, v20), sub_22F1746FC(v18, v20), (v21 & 0x100) != 0))
  {

    sub_22F1746A8();
    swift_allocError();
    swift_willThrow();
    (*(v54 + 8))(v50, v48);
    goto LABEL_9;
  }

  v3[OBJC_IVAR___PGEventLabelingFeaturesFileCache_delimiterByte] = v21;
  v52 = 0xD000000000000022;
  v53 = 0x800000022F78FDD0;
  v22 = v41;
  (*(v41 + 104))(v7, *MEMORY[0x277CC91D8], v5);
  sub_22F160DE4();
  sub_22F73F460();
  (*(v22 + 8))(v7, v5);
  v23 = OBJC_IVAR___PGEventLabelingFeaturesFileCache_cacheFileURL;
  v24 = v54;
  v25 = v48;
  (*(v54 + 32))(&v3[OBJC_IVAR___PGEventLabelingFeaturesFileCache_cacheFileURL], v11, v48);
  v40 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  v41 = *(v24 + 16);
  (v41)(v11, &v3[v23], v25);
  sub_22F73F440();
  v26 = *(v24 + 8);
  v54 = v24 + 8;
  v26(v11, v25);
  v27 = v23;
  v28 = v40;
  v29 = sub_22F740DF0();

  LOBYTE(v22) = [v28 fileExistsAtPath_];

  if ((v22 & 1) == 0)
  {
    (v41)(v11, &v3[v27], v25);
    sub_22F73F440();
    v26(v11, v25);
    v30 = sub_22F740DF0();

    [v28 createFileAtPath:v30 contents:0 attributes:0];
  }

  sub_22F174710();
  v31 = v42;
  (v41)(v42, &v3[v27], v25);
  v32 = v43;
  v33 = sub_22F1759E8(v31, &selRef_fileHandleForWritingToURL_error_);
  if (v32)
  {
    v26(v50, v25);

    v26(&v3[v27], v25);
LABEL_9:
    swift_deallocPartialClassInstance();
    return v3;
  }

  *&v3[OBJC_IVAR___PGEventLabelingFeaturesFileCache_cacheFile] = v33;
  v34 = v33;
  sub_22F741590();

  v36 = &v3[OBJC_IVAR___PGEventLabelingFeaturesFileCache_featureExtractorsForCaching];
  v37 = v46;
  *v36 = v47;
  v36[1] = v37;
  v38 = v44;
  v36[2] = v45;
  v36[3] = v38;
  v51.receiver = v3;
  v51.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v51, sel_init);
  v26(v50, v25);
  return v3;
}

unint64_t sub_22F1746A8()
{
  result = qword_27DAB16B0;
  if (!qword_27DAB16B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB16B0);
  }

  return result;
}

uint64_t sub_22F1746FC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22F133BF0(result, a2);
  }

  return result;
}

unint64_t sub_22F174710()
{
  result = qword_27DAB16C8;
  if (!qword_27DAB16C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DAB16C8);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> EventLabelingFeaturesFileCache.write(eventFeatures:)(PhotosGraph::CachedEventFeatures eventFeatures)
{
  countAndFlagsBits = eventFeatures.identifier._countAndFlagsBits;
  v20 = *MEMORY[0x277D85DE8];
  v4 = sub_22F73EF70();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *countAndFlagsBits;
  sub_22F73EFB0();
  swift_allocObject();
  sub_22F73EFA0();
  v9 = *MEMORY[0x277CC8750];
  v10 = *(v5 + 104);
  v17 = *(countAndFlagsBits + 8);
  v10(v7, v9, v4);
  sub_22F73EF80();
  v18 = v8;
  v19 = v17;
  sub_22F1762E8();
  v11 = sub_22F73EF90();
  if (!v2)
  {
    v13 = *(v1 + OBJC_IVAR___PGEventLabelingFeaturesFileCache_cacheFile);
    v14 = v11;
    v18 = v11;
    *&v19 = v12;
    v15 = v12;
    sub_22F15C418();
    sub_22F741580();
    v16 = sub_22F73F4F0();
    [v13 writeData_];

    sub_22F133BF0(v14, v15);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> EventLabelingFeaturesFileCache.clearCache()()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  sub_22F73F440();
  v1 = sub_22F740DF0();

  v2 = [v0 fileExistsAtPath_];

  if (v2)
  {
    v3 = sub_22F73F3F0();
    v7[0] = 0;
    v4 = [v0 removeItemAtURL:v3 error:v7];

    if (v4)
    {
      v5 = v7[0];
    }

    else
    {
      v6 = v7[0];
      sub_22F73F370();

      swift_willThrow();
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> EventLabelingFeaturesFileCache.synchronize()()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + OBJC_IVAR___PGEventLabelingFeaturesFileCache_cacheFile);
  v4[0] = 0;
  if ([v1 synchronizeAndReturnError_])
  {
    v2 = v4[0];
  }

  else
  {
    v3 = v4[0];
    sub_22F73F370();

    swift_willThrow();
  }
}

uint64_t EventLabelingFeaturesFileCache.isCacheEmpty(graphServiceURL:)()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  sub_22F73F440();
  v1 = sub_22F740DF0();

  v2 = [v0 fileExistsAtPath_];

  return v2 ^ 1;
}

char *EventLabelingFeaturesFileCache.readFeatures()()
{
  v1 = v0;
  v2 = sub_22F73F470();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - v7;
  v9 = sub_22F73EED0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F73EF30();
  swift_allocObject();
  sub_22F73EF20();
  (*(v10 + 104))(v12, *MEMORY[0x277CC86B0], v9);
  sub_22F73EEF0();
  v13 = *(v3 + 16);
  v13(v8, &v0[OBJC_IVAR___PGEventLabelingFeaturesFileCache_cacheFileURL], v2);
  sub_22F174710();
  v13(v5, v8, v2);
  v14 = v34;
  v15 = sub_22F1759E8(v5, &selRef_fileHandleForReadingFromURL_error_);
  if (v14)
  {

    (*(v3 + 8))(v8, v2);
    return v1;
  }

  v16 = v15;
  (*(v3 + 8))(v8, v2);
  v37 = v16;
  v38 = xmmword_22F772BF0;
  v17 = v1[OBJC_IVAR___PGEventLabelingFeaturesFileCache_delimiterByte];
  result = sub_22F1754E4(v17, 10000);
  v19 = result;
  v21 = v20;
  v1 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v21 >> 60 == 15)
    {
      v33 = v38;

      sub_22F133BF0(v33, *(&v33 + 1));

      return v1;
    }

    v22 = v21 >> 62;
    if ((v21 >> 62) <= 1)
    {
      break;
    }

    if (v22 != 2)
    {
      goto LABEL_21;
    }

    v25 = *(v19 + 16);
    v24 = *(v19 + 24);
    v26 = __OFSUB__(v24, v25);
    v23 = v24 - v25;
    if (v26)
    {
      goto LABEL_24;
    }

LABEL_15:
    if (v23 < 1)
    {
LABEL_21:

      sub_22F1746FC(v19, v21);
      v32 = v38;

      sub_22F133BF0(v32, *(&v32 + 1));
      return v1;
    }

    sub_22F17633C();
    sub_22F73EF10();
    v27 = v35;
    v34 = v36;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_22F13E4EC(0, *(v1 + 2) + 1, 1, v1);
    }

    v29 = *(v1 + 2);
    v28 = *(v1 + 3);
    if (v29 >= v28 >> 1)
    {
      v1 = sub_22F13E4EC((v28 > 1), v29 + 1, 1, v1);
    }

    sub_22F1746FC(v19, v21);
    *(v1 + 2) = v29 + 1;
    v30 = &v1[24 * v29];
    *(v30 + 4) = v27;
    *(v30 + 40) = v34;
    result = sub_22F1754E4(v17, 10000);
    v19 = result;
    v21 = v31;
  }

  if (!v22)
  {
    v23 = BYTE6(v21);
    goto LABEL_15;
  }

  LODWORD(v23) = HIDWORD(v19) - v19;
  if (!__OFSUB__(HIDWORD(v19), v19))
  {
    v23 = v23;
    goto LABEL_15;
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_22F1754E4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = a1;
  v6 = sub_22F2123AC(a1, *(v2 + 8), *(v2 + 16));
  if ((v7 & 1) == 0)
  {
    v10 = v6;
    v11 = *(v2 + 8);
    v12 = *(v2 + 16) >> 62;
    if (v12 > 1)
    {
      result = 0;
      if (v12 == 2)
      {
        result = *(v11 + 16);
      }
    }

    else if (v12)
    {
      result = v11;
    }

    else
    {
      result = 0;
    }

    if (v10 < result)
    {
      __break(1u);
    }

    else
    {
      v13 = sub_22F73F4C0();
      result = v10 + 1;
      if (!__OFADD__(v10, 1))
      {
        v14 = *(v2 + 8);
        v15 = *(v2 + 16);
        v16 = v15 >> 62;
        if ((v15 >> 62) > 1)
        {
          if (v16 == 2)
          {
            v17 = *(v14 + 24);
          }

          else
          {
            v17 = 0;
          }
        }

        else if (v16)
        {
          v17 = v14 >> 32;
        }

        else
        {
          v17 = BYTE6(v15);
        }

        if (v17 >= result)
        {
          v27 = v13;
          v28 = sub_22F73F4C0();
          v30 = v29;
          sub_22F133BF0(*(v2 + 8), *(v2 + 16));
          result = v27;
          *(v2 + 8) = v28;
          *(v2 + 16) = v30;
          return result;
        }

        goto LABEL_54;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  result = sub_22F741570();
  if (!v3)
  {
    v18 = result;
    for (i = v9; ; i = v26)
    {
      if (i >> 60 == 15)
      {
        return 0;
      }

      v20 = i >> 62;
      if ((i >> 62) > 1)
      {
        if (v20 != 2)
        {
          goto LABEL_35;
        }

        v23 = *(v18 + 16);
        v22 = *(v18 + 24);
        v24 = __OFSUB__(v22, v23);
        v21 = v22 - v23;
        if (v24)
        {
          goto LABEL_56;
        }
      }

      else if (v20)
      {
        LODWORD(v21) = HIDWORD(v18) - v18;
        if (__OFSUB__(HIDWORD(v18), v18))
        {
          goto LABEL_55;
        }

        v21 = v21;
      }

      else
      {
        v21 = BYTE6(i);
      }

      if (v21 <= 0)
      {
LABEL_35:
        sub_22F1746FC(v18, i);
        return 0;
      }

      result = sub_22F2123AC(v5, v18, i);
      if ((v25 & 1) == 0)
      {
        break;
      }

      sub_22F73F530();
      sub_22F1746FC(v18, i);
      result = sub_22F741570();
      v18 = result;
    }

    v31 = *(v4 + 16);
    v50 = *(v4 + 8);
    v47 = v31;
    if (v20)
    {
      v32 = result;
      if (v20 == 2)
      {
        v33 = *(v18 + 16);
      }

      else
      {
        v33 = v18;
      }

      sub_22F15C3C4(v18, i);
      result = v32;
    }

    else
    {
      v33 = 0;
    }

    if (result >= v33)
    {
      v46 = result;
      v34 = sub_22F73F4C0();
      v36 = v35;
      sub_22F1746FC(v18, i);
      v37 = v50;
      v49[0] = v50;
      v49[1] = v47;
      v48[3] = MEMORY[0x277CC9318];
      v48[4] = MEMORY[0x277CC9300];
      v48[0] = v34;
      v48[1] = v36;
      v38 = __swift_project_boxed_opaque_existential_1(v48, MEMORY[0x277CC9318]);
      v44 = v38[1];
      v45 = *v38;
      sub_22F15C3C4(v37, v47);
      sub_22F15C3C4(v34, v36);
      sub_22F175B40(v45, v44, v49);
      sub_22F133BF0(v34, v36);
      __swift_destroy_boxed_opaque_existential_0(v48);
      result = v46 + 1;
      if (!__OFADD__(v46, 1))
      {
        if (v20 == 2)
        {
          v39 = *(v18 + 24);
        }

        else if (v20 == 1)
        {
          v39 = v18 >> 32;
        }

        else
        {
          v39 = BYTE6(i);
        }

        if (v39 >= result)
        {
          v40 = v49[0];
          v41 = sub_22F73F4C0();
          v43 = v42;
          sub_22F1746FC(v18, i);
          sub_22F133BF0(*(v4 + 8), *(v4 + 16));
          result = v40;
          *(v4 + 8) = v41;
          *(v4 + 16) = v43;
          return result;
        }

        goto LABEL_59;
      }

LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      return result;
    }

LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  return result;
}

id EventLabelingFeaturesFileCache.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EventLabelingFeaturesFileCache.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_22F1759E8(uint64_t a1, SEL *a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = sub_22F73F3F0();
  v14[0] = 0;
  v6 = [swift_getObjCClassFromMetadata(v5) *a2];

  v7 = v14[0];
  if (v6)
  {
    v8 = sub_22F73F470();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14[0];
    sub_22F73F370();

    swift_willThrow();
    v12 = sub_22F73F470();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

uint64_t sub_22F175B40(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      return sub_22F73F4B0();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_22F175C78(v4, v5);
  }

  if (v3 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_22F175C78(v4, v5);
  }

  return sub_22F73F4B0();
}

uint64_t sub_22F175C78(uint64_t a1, uint64_t a2)
{
  result = sub_22F73F170();
  if (!result || (result = sub_22F73F190(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_22F73F180();
      return sub_22F73F4B0();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_22F175D0C(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

void *sub_22F175D2C(uint64_t a1, uint64_t a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = sub_22F73F470();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s11PhotosGraph26EventLabelingConfigurationC10bundlePathSSSgvgZ_0();
  if (v11)
  {
    v12 = v10;
    v13 = v11;
    v14 = objc_allocWithZone(PGEventLabelerE5Model);
    v15 = v12;
    v2 = v14;
    v16 = sub_22F212148(v15, v13);
    if (!v3)
    {
      v40 = v16;
      *&v41 = 0;
      v17 = [v16 inputNamesWithError_];
      v2 = v41;
      if (v17)
      {
        v18 = v17;
        v19 = sub_22F741420();
        v20 = v2;

        v21 = sub_22F173D70(v19);

        *&v39 = a2;
        v36 = v7;
        v37 = a1;
        v22 = *(v21 + 16);
        *&v38 = v21;
        if (v22)
        {
          v23 = (v21 + 32);
          v24 = MEMORY[0x277D84F90];
          do
          {
            v28 = *v23++;
            v27 = v28;
            if (v28 >= 0xC)
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *&v41 = v24;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_22F146700(0, *(v24 + 16) + 1, 1);
                v24 = v41;
              }

              v26 = *(v24 + 16);
              v25 = *(v24 + 24);
              if (v26 >= v25 >> 1)
              {
                sub_22F146700((v25 > 1), v26 + 1, 1);
                v24 = v41;
              }

              *(v24 + 16) = v26 + 1;
              *(v24 + v26 + 32) = v27;
            }

            --v22;
          }

          while (v22);
        }

        else
        {
          v24 = MEMORY[0x277D84F90];
        }

        v31 = objc_allocWithZone(PGGraphMomentNodeCollection);
        v32 = v39;
        v33 = [v31 initWithGraph_];
        static MomentGraphFeature.extractors(for:with:in:)(v24, v33, v32, &v41);

        v38 = v42;
        v39 = v41;
        (*(v36 + 16))(v9, v37, v6);
        v41 = v39;
        v42 = v38;
        v35 = objc_allocWithZone(type metadata accessor for EventLabelingFeaturesFileCache(0));
        v2 = EventLabelingFeaturesFileCache.init(graphServiceURL:featureExtractorsForCaching:)(v9, &v41);
      }

      else
      {
        v30 = v41;
        sub_22F73F370();

        swift_willThrow();
      }
    }
  }

  else
  {
    sub_22F176594();
    swift_allocError();
    swift_willThrow();
  }

  return v2;
}

void sub_22F176098(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_22F7416B0();
  v31 = v7;
  v8 = *(v2 + OBJC_IVAR___PGEventLabelingFeaturesFileCache_featureExtractorsForCaching);
  v9 = *(v3 + OBJC_IVAR___PGEventLabelingFeaturesFileCache_featureExtractorsForCaching + 8);
  v10 = *(v3 + OBJC_IVAR___PGEventLabelingFeaturesFileCache_featureExtractorsForCaching + 16);
  v11 = *(v3 + OBJC_IVAR___PGEventLabelingFeaturesFileCache_featureExtractorsForCaching + 24);
  type metadata accessor for MomentGraphCluster();
  inited = swift_initStackObject();
  *(inited + 16) = a1;
  *(inited + 24) = a2;
  *(inited + 32) = v8;
  *(inited + 40) = v9;
  *(inited + 48) = v10;
  *(inited + 56) = v11;

  v13 = v6;

  v14 = a1;
  v15 = a2;
  v16 = sub_22F3F67A4(v6);
  if (v28)
  {
    goto LABEL_2;
  }

  v17._rawValue = v16;
  v18 = *(inited + 16);
  v19 = [v18 UUID];
  if (!v19)
  {

    sub_22F176540();
    swift_allocError();
    *v26 = 0;
    v26[1] = 0;
    v26[2] = 0x8000000000000000;
    swift_willThrow();
LABEL_2:

LABEL_3:
    return;
  }

  v29 = v13;
  v20 = v19;
  v21 = sub_22F740E20();
  v23 = v22;

  v24._countAndFlagsBits = v21;
  v24._object = v23;
  v32 = CachedEventFeatures.init(identifier:featureVectorByName:)(v24, v17);
  v32.identifier._countAndFlagsBits = &v30;
  EventLabelingFeaturesFileCache.write(eventFeatures:)(v32);
  if (v25)
  {

    goto LABEL_3;
  }

  v27 = v31;
  sub_22F7416A0();

  swift_setDeallocating();
}

unint64_t sub_22F1762E8()
{
  result = qword_27DAB16E0;
  if (!qword_27DAB16E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB16E0);
  }

  return result;
}

unint64_t sub_22F17633C()
{
  result = qword_27DAB16E8;
  if (!qword_27DAB16E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB16E8);
  }

  return result;
}

uint64_t type metadata accessor for EventLabelingFeaturesFileCache(uint64_t a1)
{
  result = qword_27DAB16F0;
  if (!qword_27DAB16F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F1763E4(uint64_t a1)
{
  result = sub_22F73F470();
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

unint64_t sub_22F1764EC()
{
  result = qword_27DAB1700;
  if (!qword_27DAB1700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1700);
  }

  return result;
}

unint64_t sub_22F176540()
{
  result = qword_27DAB1708;
  if (!qword_27DAB1708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1708);
  }

  return result;
}

unint64_t sub_22F176594()
{
  result = qword_27DAB1710;
  if (!qword_27DAB1710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1710);
  }

  return result;
}

id _s11PhotosGraph16FlexMusicCuratorCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22F17682C()
{
  result = qword_27DAB1720;
  if (!qword_27DAB1720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1720);
  }

  return result;
}

unint64_t sub_22F176898()
{
  result = qword_27DAB1728;
  if (!qword_27DAB1728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1728);
  }

  return result;
}

unint64_t sub_22F1768FC()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_22F176934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000022F78FFB0 == a2 || (sub_22F742040() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000022F78FFD0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_22F742040();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_22F176A18(uint64_t a1)
{
  v2 = sub_22F176D20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F176A54(uint64_t a1)
{
  v2 = sub_22F176D20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicCuratorBlocklistConfiguration.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1730, &qword_22F772E20);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F176D20();
  sub_22F742200();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  v14 = 0;
  sub_22F176D74(&qword_2810A92D8, &qword_27DAB0E90, &qword_22F7714A0, MEMORY[0x277D83978]);
  sub_22F741F10();
  v13 = a2;
  v9 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1608, &unk_22F772BB0);
  v14 = 1;
  sub_22F176D74(&qword_2810A9248, &qword_27DAB1608, &unk_22F772BB0, MEMORY[0x277D83B70]);
  sub_22F741EA0();
  (*(v6 + 8))(v8, v5);
  v10 = v15;
  v11 = v13;
  *v13 = v9;
  v11[1] = v10;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_22F176D20()
{
  result = qword_2810A9CF8;
  if (!qword_2810A9CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9CF8);
  }

  return result;
}

uint64_t sub_22F176D74(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

void static MusicCuratorBlocklistConfiguration.defaultConfiguration()(void *a1@<X8>)
{
  v33 = a1;
  v1 = sub_22F73F470();
  v35 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  sub_22F73EF30();
  swift_allocObject();
  sub_22F73EF20();
  v38 = [objc_allocWithZone(PGRemoteConfiguration) initWithTrialNamespace:4 onDiskResourceFile:0];
  type metadata accessor for MusicCurator();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata(v10);
  v12 = [objc_opt_self() bundleForClass_];
  v13 = sub_22F740DF0();
  v14 = sub_22F740DF0();
  v15 = [v12 URLForResource:v13 withExtension:v14];

  if (v15)
  {
    sub_22F73F430();

    (*(v35 + 32))(v9, v6, v1);
    v16 = sub_22F740DF0();
    v17 = sub_22F73F3F0();
    v18 = [v38 fileValueForKey:v16 withFallbackValue:v17];

    sub_22F73F430();
    v19 = v34;
    v20 = sub_22F73F480();
    if (v19)
    {

      v22 = *(v35 + 8);
      v22(v3, v1);
      v22(v9, v1);
    }

    else
    {
      v23 = v20;
      v24 = v21;
      v25 = v3;
      v34 = v9;
      v26 = v35;
      v27 = v1;
      v28 = v38;
      sub_22F17723C();
      sub_22F73EF10();
      sub_22F133BF0(v23, v24);

      v29 = *(v26 + 8);
      v29(v25, v27);
      v29(v34, v27);
      v30 = v37;
      v31 = v33;
      *v33 = v36;
      v31[1] = v30;
    }
  }

  else
  {
    sub_22F1771E8();
    swift_allocError();
    swift_willThrow();
  }
}

unint64_t sub_22F1771E8()
{
  result = qword_27DAB1738;
  if (!qword_27DAB1738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1738);
  }

  return result;
}

unint64_t sub_22F17723C()
{
  result = qword_2810A9CE0;
  if (!qword_2810A9CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9CE0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MusicCuratorBlocklistConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MusicCuratorBlocklistConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22F177404()
{
  result = qword_27DAB1740;
  if (!qword_27DAB1740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1740);
  }

  return result;
}

unint64_t sub_22F17745C()
{
  result = qword_27DAB1748;
  if (!qword_27DAB1748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1748);
  }

  return result;
}

unint64_t sub_22F1774B4()
{
  result = qword_2810A9CE8;
  if (!qword_2810A9CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9CE8);
  }

  return result;
}

unint64_t sub_22F17750C()
{
  result = qword_2810A9CF0;
  if (!qword_2810A9CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9CF0);
  }

  return result;
}

uint64_t static MusicKitCatalogSong.Attributes.Artwork.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[2] == a2[2] && a1[3] == a2[3])
  {
    return 1;
  }

  else
  {
    return sub_22F742040();
  }
}

uint64_t sub_22F1775AC()
{
  v1 = 0x746867696568;
  if (*v0 != 1)
  {
    v1 = 7107189;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6874646977;
  }
}

uint64_t sub_22F1775F8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22F190184(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22F177620(uint64_t a1)
{
  v2 = sub_22F177854();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F17765C(uint64_t a1)
{
  v2 = sub_22F177854();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSong.Attributes.Artwork.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1750, &qword_22F773070);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = v1[1];
  v9 = v1[3];
  v11[2] = v1[2];
  v11[3] = v8;
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F177854();
  sub_22F742210();
  v14 = 0;
  sub_22F741FC0();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v13 = 1;
  sub_22F741FC0();
  v12 = 2;
  sub_22F741F80();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_22F177854()
{
  result = qword_2810AACF8;
  if (!qword_2810AACF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AACF8);
  }

  return result;
}

uint64_t MusicKitCatalogSong.Attributes.Artwork.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1758, &qword_22F773078);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F177854();
  sub_22F742200();
  if (!v2)
  {
    v19 = 0;
    v9 = sub_22F741EF0();
    v18 = 1;
    v16 = sub_22F741EF0();
    v17 = 2;
    v11 = sub_22F741EB0();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    v14 = v16;
    *a2 = v9;
    a2[1] = v14;
    a2[2] = v11;
    a2[3] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F177A80(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[2] == a2[2] && a1[3] == a2[3])
  {
    return 1;
  }

  else
  {
    return sub_22F742040();
  }
}

uint64_t sub_22F177B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22F742040();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_22F177B98(uint64_t a1)
{
  v2 = sub_22F177D4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F177BD4(uint64_t a1)
{
  v2 = sub_22F177D4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSong.Attributes.Preview.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1760, &qword_22F773080);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F177D4C();
  sub_22F742210();
  sub_22F741F80();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_22F177D4C()
{
  result = qword_2810AACD8;
  if (!qword_2810AACD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AACD8);
  }

  return result;
}

uint64_t sub_22F177DFC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1760, &qword_22F773080);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F177D4C();
  sub_22F742210();
  sub_22F741F80();
  return (*(v3 + 8))(v5, v2);
}

uint64_t static MusicKitCatalogSong.Attributes.PlayParams.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_22F742040(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_22F742040();
    }
  }

  return result;
}

uint64_t sub_22F177FDC()
{
  if (*v0)
  {
    return 1684957547;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_22F178004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_22F742040() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22F742040();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_22F1780D8(uint64_t a1)
{
  v2 = sub_22F1782E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F178114(uint64_t a1)
{
  v2 = sub_22F1782E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSong.Attributes.PlayParams.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1770, &qword_22F773090);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F1782E4();
  sub_22F742210();
  v12 = 0;
  v8 = v10[3];
  sub_22F741F80();
  if (!v8)
  {
    v11 = 1;
    sub_22F741F80();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_22F1782E4()
{
  result = qword_2810AAD38;
  if (!qword_2810AAD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAD38);
  }

  return result;
}

uint64_t MusicKitCatalogSong.Attributes.PlayParams.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1778, &qword_22F773098);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F1782E4();
  sub_22F742200();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v19 = 0;
  v9 = sub_22F741EB0();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_22F741EB0();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F178538(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_22F742040(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_22F742040();
    }
  }

  return result;
}

uint64_t sub_22F178610()
{
  v1 = 6775156;
  if (*v0 != 1)
  {
    v1 = 0x63617073656D616ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65726F6373;
  }
}

uint64_t sub_22F178664@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22F190294(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22F17868C(uint64_t a1)
{
  v2 = sub_22F1861E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F1786C8(uint64_t a1)
{
  v2 = sub_22F1861E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSong.Attributes.Unitag.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1780, &qword_22F7730A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - v5;
  v7 = *(v1 + 4);
  v8 = *(v1 + 8);
  v12[3] = *(v1 + 16);
  v12[4] = v8;
  v9 = *(v1 + 24);
  v12[1] = *(v1 + 32);
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F1861E0();
  sub_22F742210();
  v16 = 0;
  v13 = v7;
  v10 = v12[5];
  sub_22F741F50();
  if (v10)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v15 = 1;
  sub_22F741F20();
  v14 = 2;
  sub_22F741F20();
  return (*(v4 + 8))(v6, v3);
}

uint64_t MusicKitCatalogSong.Attributes.Unitag.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1788, &qword_22F7730A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F1861E0();
  sub_22F742200();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v23 = 0;
  v9 = sub_22F741E80();
  v22 = 1;
  v10 = sub_22F741E50();
  v12 = v11;
  v20 = v10;
  v21 = 2;
  v13 = sub_22F741E50();
  v15 = v14;
  v16 = *(v6 + 8);
  v19 = v13;
  v16(v8, v5);
  *a2 = v9;
  *(a2 + 4) = BYTE4(v9) & 1;
  v17 = v19;
  *(a2 + 8) = v20;
  *(a2 + 16) = v12;
  *(a2 + 24) = v17;
  *(a2 + 32) = v15;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_22F178B3C(char a1)
{
  result = 0x6B726F77747261;
  switch(a1)
  {
    case 1:
      result = 7107189;
      break;
    case 2:
      result = 0x6572506F72746E69;
      break;
    case 3:
      result = 0x7377656976657270;
      break;
    case 4:
      result = 0x614E747369747261;
      break;
    case 5:
      result = 0x6D614E6D75626C61;
      break;
    case 6:
      result = 0x6E65726566657270;
      break;
    case 7:
      result = 0x73676174696E75;
      break;
    case 8:
      result = 1701667182;
      break;
    case 9:
      result = 0x52746E65746E6F63;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x6172615079616C70;
      break;
    case 12:
      result = 0x636F4C6F69647561;
      break;
    case 13:
      result = 0xD00000000000001ELL;
      break;
    case 14:
      result = 0x6D614E65726E6567;
      break;
    case 15:
      result = 0x50746E65746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22F178D2C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22F1903B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22F178D60(uint64_t a1)
{
  v2 = sub_22F186DC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F178D9C(uint64_t a1)
{
  v2 = sub_22F186DC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSong.Attributes.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1790, &qword_22F7730B0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - v5;
  v7 = *(v1 + 4);
  v48 = *(v1 + 5);
  v49 = v7;
  v8 = *(v1 + 6);
  v46 = *(v1 + 7);
  v47 = v8;
  v9 = *(v1 + 8);
  v10 = *(v1 + 9);
  v11 = *(v1 + 11);
  v44 = *(v1 + 10);
  v45 = v9;
  v41 = v11;
  v42 = *(v1 + 12);
  v43 = v10;
  v40 = *(v1 + 26);
  v55 = *(v1 + 108);
  v12 = *(v1 + 14);
  v38 = *(v1 + 15);
  v39 = v12;
  v13 = *(v1 + 17);
  v37 = *(v1 + 16);
  v36 = v13;
  v35 = *(v1 + 18);
  v34 = *(v1 + 38);
  v33 = *(v1 + 156);
  v14 = *(v1 + 21);
  v32 = *(v1 + 20);
  v31 = v14;
  v15 = *(v1 + 23);
  v30 = *(v1 + 22);
  v29 = v15;
  v16 = *(v1 + 25);
  v28 = *(v1 + 24);
  v27 = v16;
  v26 = *(v1 + 208);
  v17 = *(v1 + 28);
  v25 = *(v1 + 27);
  v18 = *(v1 + 29);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F186DC0();
  v19 = *v1;
  v50 = v1[1];
  v51 = v19;

  sub_22F742210();
  v54 = v50;
  v53 = v51;
  v56 = 0;
  sub_22F186E14();
  v20 = v52;
  sub_22F741F70();
  if (v20)
  {

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    v23 = v46;
    v22 = v47;
    *&v51 = v18;
    v52 = v17;

    LOBYTE(v53) = 1;
    sub_22F741F20();
    *&v53 = v22;
    *(&v53 + 1) = v23;
    v56 = 2;
    sub_22F186E68();

    sub_22F741F70();

    *&v53 = v45;
    v56 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB17A8, &qword_22F7730B8);
    sub_22F186EBC();
    sub_22F741F70();
    LOBYTE(v53) = 4;
    sub_22F741F20();
    LOBYTE(v53) = 5;
    sub_22F741F20();
    LOBYTE(v53) = 6;
    v56 = v55;
    sub_22F741F50();
    *&v53 = v39;
    v56 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB17B8, &unk_22F7730C0);
    sub_22F186F40();
    sub_22F741F70();
    LOBYTE(v53) = 8;
    sub_22F741F20();
    LOBYTE(v53) = 9;
    sub_22F741F20();
    LOBYTE(v53) = 10;
    v56 = v33;
    sub_22F741F50();
    *&v53 = v32;
    *(&v53 + 1) = v31;
    *&v54 = v30;
    *(&v54 + 1) = v29;
    v56 = 11;
    sub_22F187018(v32, v31, v30, v29);
    sub_22F18705C();
    sub_22F741F70();
    sub_22F1870B0(v53, *(&v53 + 1), v54, *(&v54 + 1));
    LOBYTE(v53) = 12;
    sub_22F741F20();
    LOBYTE(v53) = 13;
    sub_22F741F30();
    *&v53 = v25;
    v56 = 14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    sub_22F1870F4();
    sub_22F741F70();
    LOBYTE(v53) = 15;
    sub_22F741F20();
    return (*(v4 + 8))(v6, 0);
  }
}

void MusicKitCatalogSong.Attributes.init(from:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB17D8, &qword_22F7730D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v42 - v7;
  v9 = a1[3];
  v125 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_22F186DC0();
  sub_22F742200();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v125);
  }

  else
  {
    v68 = a2;
    v69 = v6;
    LOBYTE(v70) = 0;
    sub_22F187170();
    sub_22F741EA0();
    v10 = v85;
    v67 = *(&v86 + 1);
    v11 = v86;
    LOBYTE(v85) = 1;
    v12 = sub_22F741E50();
    v66 = v13;
    v55 = v12;
    v56 = v11;
    v57 = v10;
    LOBYTE(v70) = 2;
    sub_22F1871C4();
    v65 = 0;
    sub_22F741EA0();
    v64 = *(&v85 + 1);
    v14 = v85;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB17A8, &qword_22F7730B8);
    LOBYTE(v70) = 3;
    sub_22F187218();
    sub_22F741EA0();
    v63 = v85;
    LOBYTE(v85) = 4;
    v15 = sub_22F741E50();
    v62 = v16;
    LOBYTE(v85) = 5;
    v17 = sub_22F741E50();
    v61 = v18;
    LOBYTE(v85) = 6;
    v54 = sub_22F741E80();
    v124 = BYTE4(v54) & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB17B8, &unk_22F7730C0);
    LOBYTE(v70) = 7;
    sub_22F18729C();
    sub_22F741EA0();
    v60 = v85;
    LOBYTE(v85) = 8;
    v53 = sub_22F741E50();
    v59 = v19;
    LOBYTE(v85) = 9;
    v20 = sub_22F741E50();
    v58 = v21;
    v22 = v20;
    LOBYTE(v85) = 10;
    v52 = sub_22F741E80();
    v121 = BYTE4(v52) & 1;
    LOBYTE(v70) = 11;
    sub_22F187374();
    sub_22F741EA0();
    v50 = v85;
    v51 = v86;
    LOBYTE(v85) = 12;
    *&v49 = sub_22F741E50();
    *(&v49 + 1) = v23;
    v65 = 0;
    LOBYTE(v85) = 13;
    v47 = sub_22F741E60();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    LOBYTE(v70) = 14;
    sub_22F1873C8();
    sub_22F741EA0();
    v48 = v85;
    v117 = 15;
    v24 = sub_22F741E50();
    v46 = v25;
    v26 = v24;
    (*(v69 + 8))(v8, v5);
    v70 = v57;
    *&v71 = v56;
    *(&v71 + 1) = v67;
    *&v72 = v55;
    *(&v72 + 1) = v66;
    v44 = v15;
    v45 = v14;
    *&v73 = v14;
    *(&v73 + 1) = v64;
    *&v74 = v63;
    *(&v74 + 1) = v15;
    *&v75 = v62;
    *(&v75 + 1) = v17;
    v43 = v17;
    *&v76 = v61;
    DWORD2(v76) = v54;
    *(&v79 + 13) = v119;
    DWORD1(v83) = *&v118[3];
    *(&v83 + 1) = *v118;
    LODWORD(v69) = v124;
    BYTE12(v76) = v124;
    *(&v76 + 13) = v122;
    HIBYTE(v76) = v123;
    v27 = v59;
    v28 = v60;
    v29 = v53;
    *&v77 = v60;
    *(&v77 + 1) = v53;
    *&v78 = v59;
    *(&v78 + 1) = v22;
    *&v79 = v58;
    DWORD2(v79) = v52;
    HIBYTE(v79) = v120;
    LOBYTE(v17) = v121;
    BYTE12(v79) = v121;
    v80 = v50;
    v81 = v51;
    v82 = v49;
    LOBYTE(v83) = v47;
    *(&v83 + 1) = v48;
    *&v84 = v26;
    *(&v84 + 1) = v46;
    v30 = v71;
    v31 = v68;
    *v68 = v57;
    v31[1] = v30;
    v32 = v72;
    v33 = v73;
    v34 = v75;
    v31[4] = v74;
    v31[5] = v34;
    v31[2] = v32;
    v31[3] = v33;
    v35 = v76;
    v36 = v77;
    v37 = v79;
    v31[8] = v78;
    v31[9] = v37;
    v31[6] = v35;
    v31[7] = v36;
    v38 = v80;
    v39 = v81;
    v40 = v84;
    v31[13] = v83;
    v31[14] = v40;
    v41 = v82;
    v31[11] = v39;
    v31[12] = v41;
    v31[10] = v38;
    sub_22F187444(&v70, &v85);
    __swift_destroy_boxed_opaque_existential_0(v125);
    v85 = v57;
    *&v86 = v56;
    *(&v86 + 1) = v67;
    v87 = v55;
    v88 = v66;
    v89 = v45;
    v90 = v64;
    v91 = v63;
    v92 = v44;
    v93 = v62;
    v94 = v43;
    v95 = v61;
    v96 = v54;
    v97 = v69;
    v98 = v122;
    v99 = v123;
    v100 = v28;
    v101 = v29;
    v102 = v27;
    v103 = v22;
    v104 = v58;
    v105 = v52;
    v106 = v17;
    v107 = v119;
    v108 = v120;
    v109 = v50;
    v110 = v51;
    v111 = v49;
    v112 = v47;
    *&v113[3] = *&v118[3];
    *v113 = *v118;
    v114 = v48;
    v115 = v26;
    v116 = v46;
    sub_22F18747C(&v85);
  }
}

uint64_t sub_22F179FB0()
{
  sub_22F742170();
  sub_22F740D60();

  return sub_22F7421D0();
}

uint64_t sub_22F17A090(uint64_t a1)
{
  sub_22F740D60();
}

uint64_t sub_22F17A15C(uint64_t a1)
{
  sub_22F742170();
  sub_22F740D60();

  return sub_22F7421D0();
}

unint64_t sub_22F17A238@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22F1908D8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_22F17A268(uint64_t *a1@<X8>)
{
  v2 = 0xEB0000000073746ELL;
  v3 = 0x656C617669757165;
  v4 = 0xEE00736973796C61;
  v5 = 0x6E612D6F69647561;
  if (*v1 != 2)
  {
    v5 = 0x612D6C6D78656C66;
    v4 = 0xEF736973796C616ELL;
  }

  if (*v1)
  {
    v3 = 0x73636972796CLL;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_22F17A304()
{
  v1 = 0x656C617669757165;
  v2 = 0x6E612D6F69647561;
  if (*v0 != 2)
  {
    v2 = 0x612D6C6D78656C66;
  }

  if (*v0)
  {
    v1 = 0x73636972796CLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_22F17A39C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22F1908D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22F17A3C4(uint64_t a1)
{
  v2 = sub_22F18BC24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F17A400(uint64_t a1)
{
  v2 = sub_22F18BC24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22F17A460(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v6 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v9 = *v3;
        v5 = *v4++;
        v8 = v5;
        sub_22F189A6C(v9, *(&v9 + 1));
        sub_22F189A6C(v5, *(&v5 + 1));
        v6 = _s11PhotosGraph19MusicKitCatalogSongV13RelationshipsV6LyricsV0H4DataV2eeoiySbAI_AItFZ_0(&v9, &v8);
        sub_22F189B28(v8, *(&v8 + 1));
        sub_22F189B28(v9, *(&v9 + 1));
        if ((v6 & 1) == 0)
        {
          break;
        }

        ++v3;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_22F17A530(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v56 = v2;
  v57 = v3;
  v5 = v4 - 1;
  v6 = (a2 + 40);
  for (i = (a1 + 40); ; i += 5)
  {
    v8 = *(i + 8);
    v9 = *(i + 40);
    v54[2] = *(i + 24);
    v54[3] = v9;
    v10 = *(i + 56);
    v54[0] = *(i - 8);
    v54[1] = v8;
    v11 = *(v6 + 8);
    v12 = *(v6 + 40);
    v55[2] = *(v6 + 24);
    v55[3] = v12;
    v55[4] = *(v6 + 56);
    v13 = *(v6 - 8);
    v55[1] = v11;
    v54[4] = v10;
    v55[0] = v13;
    v14 = *&v54[0];
    v15 = i[1];
    v16 = i[3];
    v51 = i[2];
    v52 = v16;
    v53 = *(i + 8);
    v49 = *i;
    v50 = v15;
    v17 = v13;
    v18 = v6[1];
    v19 = v6[3];
    v46 = v6[2];
    v47 = v19;
    v48 = *(v6 + 8);
    v44 = *v6;
    v45 = v18;
    if (*&v54[0] == 1)
    {
      break;
    }

    v22 = *i;
    *&v37[24] = i[1];
    v23 = i[3];
    *&v37[40] = i[2];
    *v37 = *&v54[0];
    *&v37[56] = v23;
    *&v37[72] = *(i + 8);
    *&v37[8] = v22;
    v34 = *&v37[32];
    v35 = *&v37[48];
    v36 = *&v37[64];
    v32 = *v37;
    v33 = *&v37[16];
    if (v17 == 1)
    {
      *&v31[32] = *&v37[32];
      *&v31[48] = *&v37[48];
      *&v31[64] = *&v37[64];
      *v31 = *v37;
      *&v31[16] = *&v37[16];
      sub_22F1918D4(v54, v30);
      sub_22F1918D4(v55, v30);
      sub_22F13BA9C(v37, v30, &qword_27DAB1AC0, &qword_22F773278);
      sub_22F18B46C(v31);
      goto LABEL_17;
    }

    v24 = *v6;
    *&v28[24] = v6[1];
    v25 = v6[3];
    *&v28[40] = v6[2];
    *&v28[56] = v25;
    *&v28[72] = *(v6 + 8);
    *&v28[8] = v24;
    *v28 = v17;
    sub_22F1918D4(v54, v30);
    sub_22F1918D4(v55, v30);
    sub_22F1918D4(v54, v30);
    sub_22F1918D4(v55, v30);
    sub_22F13BA9C(v37, v30, &qword_27DAB1AC0, &qword_22F773278);
    v26 = _s11PhotosGraph19MusicKitCatalogSongV13RelationshipsV26FlexMLAnalysisRelationshipV0hI4DataV0hI10AttributesV2eeoiySbAK_AKtFZ_0(&v32, v28);
    v29[2] = *&v28[32];
    v29[3] = *&v28[48];
    v29[4] = *&v28[64];
    v29[0] = *v28;
    v29[1] = *&v28[16];
    sub_22F18B46C(v29);
    sub_22F19190C(v55);
    sub_22F19190C(v54);
    v30[2] = v34;
    v30[3] = v35;
    v30[4] = v36;
    v30[0] = v32;
    v30[1] = v33;
    sub_22F18B46C(v30);
    *v31 = v14;
    *&v31[24] = v50;
    *&v31[40] = v51;
    *&v31[56] = v52;
    *&v31[72] = v53;
    *&v31[8] = v49;
    sub_22F120ADC(v31, &qword_27DAB1AC0, &qword_22F773278);
    if (!v26)
    {
      return 0;
    }

LABEL_10:
    if (!v5)
    {
      return 1;
    }

    --v5;
    v6 += 5;
  }

  if (v13 == 1)
  {
    *v37 = 1;
    v20 = *i;
    *&v37[24] = i[1];
    v21 = i[3];
    *&v37[40] = i[2];
    *&v37[56] = v21;
    *&v37[72] = *(i + 8);
    *&v37[8] = v20;
    sub_22F1918D4(v54, &v32);
    sub_22F1918D4(v55, &v32);
    sub_22F120ADC(v37, &qword_27DAB1AC0, &qword_22F773278);
    goto LABEL_10;
  }

  sub_22F1918D4(v54, v37);
  sub_22F1918D4(v55, v37);
LABEL_17:
  *&v37[24] = v50;
  *&v37[40] = v51;
  *&v37[56] = v52;
  *&v37[8] = v49;
  v40 = v45;
  v41 = v46;
  v42 = v47;
  *v37 = v14;
  *&v37[72] = v53;
  v38 = v17;
  v43 = v48;
  v39 = v44;
  sub_22F120ADC(v37, &qword_27DAB1D70, &qword_22F777130);
  return 0;
}

uint64_t sub_22F17A8E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = a1 + 32;
    result = 1;
    while (1)
    {
      if (v3 == v2)
      {
        goto LABEL_29;
      }

      v6 = v4 + 32 * v3;
      v7 = a2 + 32 + 32 * v3;
      if (*v6 != *v7)
      {
        return 0;
      }

      v8 = *(v6 + 8);
      v9 = *(v7 + 8);
      v10 = *(v8 + 16);
      if (v10 != *(v9 + 16))
      {
        return 0;
      }

      v11 = *(v6 + 16);
      v12 = *(v6 + 24);
      v13 = *(v7 + 16);
      v14 = *(v7 + 24);
      if (v10)
      {
        v15 = v8 == v9;
      }

      else
      {
        v15 = 1;
      }

      if (!v15)
      {
        v16 = (v8 + 32);
        v17 = (v9 + 32);
        while (v10)
        {
          if (*v16 != *v17)
          {
            return 0;
          }

          ++v16;
          ++v17;
          if (!--v10)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
        __break(1u);
LABEL_29:
        __break(1u);
        return result;
      }

LABEL_19:
      if (v11 != v13)
      {
        return 0;
      }

      v18 = *(v12 + 16);
      if (v18 != *(v14 + 16))
      {
        return 0;
      }

      if (v18 && v12 != v14)
      {
        break;
      }

LABEL_7:
      if (++v3 == v2)
      {
        return result;
      }
    }

    v19 = (v12 + 32);
    v20 = (v14 + 32);
    while (*v19 == *v20)
    {
      ++v19;
      ++v20;
      if (!--v18)
      {
        goto LABEL_7;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_22F17AA10(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22F17AA6C(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 16);
  v8 = *(a2 + 16);
  if (v7 != v8)
  {
    return 0;
  }

  if (!v7 || a1 == a2)
  {
    return 1;
  }

  v27 = v5;
  v28 = v6;
  *&v26[344] = v8;
  *&v26[352] = v2;
  *&v26[328] = v3;
  *&v26[336] = v4;
  MEMORY[0x28223BE20](a1);
  v10 = (v9 + 32);
  v12 = (v11 + 32);
  for (i = v13 - 1; ; --i)
  {
    memcpy(__dst, v10, 0x162uLL);
    memcpy(v25, v12, 0x162uLL);
    memcpy(__src, v10, 0x162uLL);
    memcpy(&__src[360], v12, 0x162uLL);
    memcpy(v26, v10, 0x162uLL);
    if (sub_22F19193C(v26) == 1)
    {
      break;
    }

    memcpy(v22, __src, 0x162uLL);
    memcpy(v20, __src, 0x162uLL);
    memcpy(v21, &__src[360], 0x162uLL);
    if (sub_22F19193C(v21) == 1)
    {
      memcpy(v19, __src, 0x162uLL);
      sub_22F191960(__dst, v18);
      sub_22F191960(v25, v18);
      sub_22F13BA9C(v22, v18, &qword_27DAB19B0, &qword_22F7731C0);
      sub_22F18A780(v19);
      goto LABEL_17;
    }

    memcpy(v19, &__src[360], 0x162uLL);
    sub_22F191960(__dst, v18);
    sub_22F191960(v25, v18);
    sub_22F191960(__dst, v18);
    sub_22F191960(v25, v18);
    sub_22F13BA9C(v22, v18, &qword_27DAB19B0, &qword_22F7731C0);
    v15 = _s11PhotosGraph19MusicKitCatalogSongV13RelationshipsV25AudioAnalysisRelationshipV0hI4DataV0hI10AttributesV2eeoiySbAK_AKtFZ_0(v20, v19);
    memcpy(v17, v19, 0x162uLL);
    sub_22F18A780(v17);
    sub_22F191998(v25);
    sub_22F191998(__dst);
    memcpy(v18, v20, 0x162uLL);
    sub_22F18A780(v18);
    memcpy(v19, __src, 0x162uLL);
    sub_22F120ADC(v19, &qword_27DAB19B0, &qword_22F7731C0);
    if (!v15)
    {
      return 0;
    }

LABEL_10:
    if (!i)
    {
      return 1;
    }

    v12 += 360;
    v10 += 360;
  }

  memcpy(v21, &__src[360], 0x162uLL);
  if (sub_22F19193C(v21) == 1)
  {
    memcpy(v22, __src, 0x162uLL);
    sub_22F191960(__dst, v20);
    sub_22F191960(v25, v20);
    sub_22F120ADC(v22, &qword_27DAB19B0, &qword_22F7731C0);
    goto LABEL_10;
  }

  sub_22F191960(__dst, v22);
  sub_22F191960(v25, v22);
LABEL_17:
  memcpy(v21, __src, 0x2CAuLL);
  sub_22F120ADC(v21, &qword_27DAB1D78, &qword_22F777138);
  return 0;
}

uint64_t sub_22F17AD98(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22F17ADF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_22F742040() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_22F17AE84(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 64);
    v4 = (a2 + 64);
    do
    {
      v5 = *(v3 - 2);
      v6 = *(v3 - 1);
      v7 = *v3;
      v8 = *(v4 - 28);
      v9 = *(v4 - 2);
      v11 = *(v4 - 1);
      v10 = *v4;
      if (*(v3 - 7))
      {
        if (!*(v4 - 28))
        {
          return 0;
        }
      }

      else
      {
        if (*(v3 - 8) != *(v4 - 8))
        {
          v8 = 1;
        }

        if (v8)
        {
          return 0;
        }
      }

      if (v5)
      {
        if (!v9 || (*(v3 - 3) != *(v4 - 3) || v5 != v9) && (sub_22F742040() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v9)
      {
        return 0;
      }

      if (v7)
      {
        if (!v10 || (v6 != v11 || v7 != v10) && (sub_22F742040() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v10)
      {
        return 0;
      }

      v3 += 10;
      v4 += 5;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_22F17AFA0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && result != a2)
  {
    v3 = 0;
    v36 = a2 + 32;
    v37 = result + 32;
    v31 = *(result + 16);
    while (1)
    {
      if (v3 == v2)
      {
        goto LABEL_42;
      }

      v4 = v37 + 80 * v3;
      result = *v4;
      v6 = *(v4 + 16);
      v5 = *(v4 + 24);
      v7 = *(v4 + 32);
      v8 = *(v4 + 40);
      v10 = *(v4 + 48);
      v9 = *(v4 + 56);
      v40 = *(v4 + 64);
      v11 = v36 + 80 * v3;
      v13 = *(v11 + 16);
      v12 = *(v11 + 24);
      v15 = *(v11 + 32);
      v14 = *(v11 + 40);
      v16 = *(v11 + 48);
      v17 = *(v11 + 56);
      v18 = *(v11 + 64);
      v38 = *(v11 + 72);
      v39 = *(v4 + 72);
      if (*v4 != *v11 || *(v4 + 8) != *(v11 + 8))
      {
        v34 = v3;
        v35 = *(v4 + 32);
        v32 = *(v11 + 24);
        v33 = *(v11 + 64);
        v19 = *(v4 + 56);
        v20 = *(v4 + 48);
        v21 = *(v11 + 48);
        v22 = *(v11 + 40);
        result = sub_22F742040();
        v14 = v22;
        v16 = v21;
        v3 = v34;
        v7 = v35;
        v10 = v20;
        v18 = v33;
        v9 = v19;
        v2 = v31;
        v12 = v32;
        if ((result & 1) == 0)
        {
          return 0;
        }
      }

      v23 = *(v6 + 16);
      if (v23 != *(v13 + 16))
      {
        return 0;
      }

      if (v23)
      {
        v24 = v6 == v13;
      }

      else
      {
        v24 = 1;
      }

      if (!v24)
      {
        v25 = (v6 + 32);
        v26 = (v13 + 32);
        while (v23)
        {
          if (*v25 != *v26)
          {
            return 0;
          }

          ++v25;
          ++v26;
          if (!--v23)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
        __break(1u);
LABEL_42:
        __break(1u);
        return result;
      }

LABEL_18:
      result = 0;
      if (v5 != v12 || v7 != v15 || v8 != v14)
      {
        return result;
      }

      if ((v10 != v16 || v9 != v17) && (sub_22F742040() & 1) == 0)
      {
        return 0;
      }

      v27 = *(v40 + 16);
      if (v27 != *(v18 + 16))
      {
        return 0;
      }

      if (v27 && v40 != v18)
      {
        break;
      }

LABEL_35:
      if (v39 != v38)
      {
        return 0;
      }

      ++v3;
      result = 1;
      if (v3 == v2)
      {
        return result;
      }
    }

    v28 = (v40 + 40);
    v29 = (v18 + 40);
    while (1)
    {
      v30 = *(v28 - 1) == *(v29 - 1) && *v28 == *v29;
      if (!v30 && (sub_22F742040() & 1) == 0)
      {
        return 0;
      }

      v28 += 2;
      v29 += 2;
      if (!--v27)
      {
        goto LABEL_35;
      }
    }
  }

  return 1;
}

uint64_t sub_22F17B1E8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && result != a2)
  {
    v3 = 0;
    v4 = result + 32;
    while (1)
    {
      if (v3 == v2)
      {
        goto LABEL_29;
      }

      v5 = (v4 + 24 * v3);
      v6 = *v5;
      v7 = a2 + 32 + 24 * v3;
      v8 = *v7;
      v9 = *(*v5 + 16);
      result = *(*v7 + 16);
      if (v9 != result)
      {
        return 0;
      }

      v11 = v5[2];
      v10 = v5[3];
      v12 = *(v5 + 2);
      v14 = *(v7 + 8);
      v13 = *(v7 + 12);
      if (v9)
      {
        v15 = v6 == v8;
      }

      else
      {
        v15 = 1;
      }

      v16 = *(v7 + 16);
      if (!v15)
      {
        v17 = (v6 + 32);
        v18 = (v8 + 32);
        while (v9)
        {
          if (*v17 != *v18)
          {
            return 0;
          }

          ++v17;
          ++v18;
          if (!--v9)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
        __break(1u);
LABEL_29:
        __break(1u);
        return result;
      }

LABEL_18:
      result = 0;
      if (v11 != v14 || v10 != v13)
      {
        return result;
      }

      v19 = *(v12 + 16);
      if (v19 != *(v16 + 16))
      {
        return 0;
      }

      if (v19 && v12 != v16)
      {
        break;
      }

LABEL_7:
      ++v3;
      result = 1;
      if (v3 == v2)
      {
        return result;
      }
    }

    v20 = (v12 + 32);
    v21 = (v16 + 32);
    while (*v20 == *v21)
    {
      ++v20;
      ++v21;
      if (!--v19)
      {
        goto LABEL_7;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_22F17B318(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && result != a2)
  {
    v3 = 0;
    v4 = result + 32;
    while (1)
    {
      if (v3 == v2)
      {
        goto LABEL_28;
      }

      v5 = (v4 + 24 * v3);
      v6 = *v5;
      v7 = a2 + 32 + 24 * v3;
      v8 = *v7;
      v9 = *(*v5 + 16);
      result = *(*v7 + 16);
      if (v9 != result)
      {
        return 0;
      }

      v10 = v5[2];
      v11 = *(v5 + 2);
      v12 = *(v7 + 8);
      v13 = *(v7 + 16);
      if (v9)
      {
        v14 = v6 == v8;
      }

      else
      {
        v14 = 1;
      }

      if (!v14)
      {
        v15 = (v6 + 32);
        v16 = (v8 + 32);
        while (v9)
        {
          if (*v15 != *v16)
          {
            return 0;
          }

          ++v15;
          ++v16;
          if (!--v9)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
        __break(1u);
LABEL_28:
        __break(1u);
        return result;
      }

LABEL_18:
      if (v10 != v12)
      {
        return 0;
      }

      v17 = *(v11 + 16);
      if (v17 != *(v13 + 16))
      {
        return 0;
      }

      if (v17 && v11 != v13)
      {
        break;
      }

LABEL_7:
      ++v3;
      result = 1;
      if (v3 == v2)
      {
        return result;
      }
    }

    v18 = (v11 + 32);
    v19 = (v13 + 32);
    while (*v18 == *v19)
    {
      ++v18;
      ++v19;
      if (!--v17)
      {
        goto LABEL_7;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_22F17B438(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Song(0) - 8;
  MEMORY[0x28223BE20](v4);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v10 = (&v19 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    do
    {
      sub_22F15CAA0(v13, v10);
      sub_22F15CAA0(v14, v6);
      if (*v10 == *v6 && v10[1] == v6[1])
      {
        sub_22F15CBD8(v6);
        sub_22F15CBD8(v10);
      }

      else
      {
        v17 = sub_22F742040();
        sub_22F15CBD8(v6);
        sub_22F15CBD8(v10);
        if ((v17 & 1) == 0)
        {
          return 0;
        }
      }

      v14 += v15;
      v13 += v15;
      --v11;
    }

    while (v11);
  }

  return 1;
}

uint64_t sub_22F17B5C0(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_22F191888();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x2319016F0](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x2319016F0](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_22F741810();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_22F741810();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_22F741A00();
  }

  result = sub_22F741A00();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_22F17B810(uint64_t a1)
{
  v2 = sub_22F1874AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F17B84C(uint64_t a1)
{
  v2 = sub_22F1874AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSong.Relationships.Equivalents.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB17E0, &qword_22F7730D8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F1874AC();

  sub_22F742210();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB17F0, &qword_22F7730E0);
  sub_22F187500();
  sub_22F741FE0();

  return (*(v4 + 8))(v6, v3);
}

uint64_t MusicKitCatalogSong.Relationships.Equivalents.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1808, &qword_22F7730E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F1874AC();
  sub_22F742200();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB17F0, &qword_22F7730E0);
    sub_22F1875D8();
    sub_22F741F10();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t static MusicKitCatalogSong.Relationships.Lyrics.LyricsData.LyricAttributes.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_22F742040() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_22F17BC3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1819112564 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22F742040();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_22F17BCC4(uint64_t a1)
{
  v2 = sub_22F1876B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F17BD00(uint64_t a1)
{
  v2 = sub_22F1876B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSong.Relationships.Lyrics.LyricsData.LyricAttributes.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1820, &qword_22F7730F0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F1876B0();
  sub_22F742210();
  sub_22F741F20();
  return (*(v3 + 8))(v5, v2);
}

uint64_t MusicKitCatalogSong.Relationships.Lyrics.LyricsData.LyricAttributes.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1830, &qword_22F7730F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F1876B0();
  sub_22F742200();
  if (!v2)
  {
    v9 = sub_22F741E50();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F17BFEC(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_22F742040() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_22F17C060(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1820, &qword_22F7730F0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F1876B0();
  sub_22F742210();
  sub_22F741F20();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_22F17C1BC(uint64_t a1)
{
  v2 = sub_22F189A80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F17C1F8(uint64_t a1)
{
  v2 = sub_22F189A80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSong.Relationships.Lyrics.LyricsData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1838, &qword_22F773100);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v7 = *v1;
  v8 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F189A6C(v7, v8);
  sub_22F189A80();
  sub_22F742210();
  v10 = v7;
  v11 = v8;
  sub_22F189AD4();
  sub_22F741F70();
  sub_22F189B28(v10, v11);
  return (*(v4 + 8))(v6, v3);
}

uint64_t MusicKitCatalogSong.Relationships.Lyrics.LyricsData.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1850, &qword_22F773108);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F189A80();
  sub_22F742200();
  if (!v2)
  {
    sub_22F189B3C();
    sub_22F741EA0();
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F17C554(uint64_t a1)
{
  v2 = sub_22F189B90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F17C590(uint64_t a1)
{
  v2 = sub_22F189B90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSong.Relationships.Lyrics.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1860, &qword_22F773110);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F189B90();

  sub_22F742210();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1870, &qword_22F773118);
  sub_22F189BE4();
  sub_22F741F70();

  return (*(v4 + 8))(v6, v3);
}

uint64_t MusicKitCatalogSong.Relationships.Lyrics.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1888, &qword_22F773120);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F189B90();
  sub_22F742200();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1870, &qword_22F773118);
    sub_22F189CBC();
    sub_22F741EA0();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F17C90C()
{
  if (*v0)
  {
    return 1701080941;
  }

  else
  {
    return 0x63696E6F74;
  }
}

uint64_t sub_22F17C93C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x63696E6F74 && a2 == 0xE500000000000000;
  if (v6 || (sub_22F742040() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701080941 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22F742040();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_22F17CA14(uint64_t a1)
{
  v2 = sub_22F189D94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F17CA50(uint64_t a1)
{
  v2 = sub_22F189D94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSong.Relationships.AudioAnalysisRelationship.AudioAnalysisData.AudioAnalysisAttributes.AudioAnalysisKey.AudioAnalysisKeyAttributes.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB18A0, &qword_22F773128);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F189D94();
  sub_22F742210();
  v12 = 0;
  v8 = v10[3];
  sub_22F741F20();
  if (!v8)
  {
    v11 = 1;
    sub_22F741F20();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t MusicKitCatalogSong.Relationships.AudioAnalysisRelationship.AudioAnalysisData.AudioAnalysisAttributes.AudioAnalysisKey.AudioAnalysisKeyAttributes.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB18B0, &qword_22F773130);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F189D94();
  sub_22F742200();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v19 = 0;
  v9 = sub_22F741E50();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_22F741E50();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F17CE58(uint64_t a1)
{
  v2 = sub_22F189E30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F17CE94(uint64_t a1)
{
  v2 = sub_22F189E30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSong.Relationships.AudioAnalysisRelationship.AudioAnalysisData.AudioAnalysisAttributes.AudioAnalysisKey.encode(to:)(void *a1)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB18B8, &qword_22F773138);
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v4 = &v22 - v3;
  v5 = *v1;
  v6 = v1[1];
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v29 = v1[5];
  v30 = v9;
  v10 = v1[6];
  v27 = v1[7];
  v28 = v10;
  v11 = v1[8];
  v25 = v1[9];
  v26 = v11;
  v12 = v1[10];
  v23 = v1[11];
  v24 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F189DE8(v5, v6, v7, v8);
  sub_22F189E30();
  v13 = v31;
  sub_22F742210();
  v34 = v5;
  v35 = v6;
  v14 = v4;
  v36 = v7;
  v37 = v8;
  v38 = 0;
  sub_22F189E84();
  v15 = v32;
  sub_22F741F70();
  sub_22F189ED8(v34, v35, v36, v37);
  if (v15)
  {
    return (*(v33 + 8))(v4, v13);
  }

  v18 = v23;
  v17 = v24;
  v20 = v25;
  v19 = v26;
  v21 = v33;
  v34 = v30;
  v35 = v29;
  v36 = v28;
  v37 = v27;
  v38 = 1;
  sub_22F189DE8(v30, v29, v28, v27);
  sub_22F741F70();
  sub_22F189ED8(v34, v35, v36, v37);
  v34 = v19;
  v35 = v20;
  v36 = v17;
  v37 = v18;
  v38 = 2;
  sub_22F189DE8(v19, v20, v17, v18);
  sub_22F741F70();
  sub_22F189ED8(v34, v35, v36, v37);
  return (*(v21 + 8))(v14, v13);
}

uint64_t MusicKitCatalogSong.Relationships.AudioAnalysisRelationship.AudioAnalysisData.AudioAnalysisAttributes.AudioAnalysisKey.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB18D0, &qword_22F773140);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F189E30();
  sub_22F742200();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v30[0]) = 0;
  sub_22F189F20();
  sub_22F741EA0();
  v28 = v35;
  v29 = v36;
  LOBYTE(v30[0]) = 1;
  sub_22F741EA0();
  v27 = v35;
  v26 = v36;
  v45 = 2;
  sub_22F741EA0();
  (*(v6 + 8))(v8, v5);
  v24 = *(&v43 + 1);
  v25 = v43;
  v22 = *(&v44 + 1);
  v23 = v44;
  v9 = v28;
  v30[0] = v28;
  v10 = *(&v28 + 1);
  v11 = v29;
  v30[1] = v29;
  v12 = *(&v29 + 1);
  v31 = v27;
  v15 = v26;
  v13 = v15 >> 64;
  v14 = v15;
  v32 = v26;
  v33 = v43;
  v34 = v44;
  v16 = v29;
  *a2 = v28;
  a2[1] = v16;
  v17 = v31;
  v18 = v32;
  v19 = v34;
  a2[4] = v33;
  a2[5] = v19;
  a2[2] = v17;
  a2[3] = v18;
  sub_22F189F74(v30, &v35);
  __swift_destroy_boxed_opaque_existential_0(a1);
  *&v35 = v9;
  *(&v35 + 1) = v10;
  *&v36 = v11;
  *(&v36 + 1) = v12;
  v37 = v27;
  v38 = __PAIR128__(v13, v14);
  v39 = v25;
  v40 = v24;
  v41 = v23;
  v42 = v22;
  return sub_22F189FAC(&v35);
}

uint64_t sub_22F17D5C4(uint64_t a1)
{
  v2 = sub_22F189FDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F17D600(uint64_t a1)
{
  v2 = sub_22F189FDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22F17D710()
{
  v1 = 1801545072;
  if (*v0 != 1)
  {
    v1 = 0x65676E6172;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_22F17D75C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22F190924(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22F17D784(uint64_t a1)
{
  v2 = sub_22F18A030();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F17D7C0(uint64_t a1)
{
  v2 = sub_22F18A030();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22F17D840(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t a5)
{
  v20 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - v9;
  v19 = *v5;
  v11 = *(v5 + 4);
  v18 = v5[2];
  v17 = *(v5 + 12);
  v16 = v5[4];
  HIDWORD(v15) = *(v5 + 20);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20();
  sub_22F742210();
  v27 = 0;
  v24 = v11;
  v12 = v21;
  sub_22F741F50();
  if (v12)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v13 = BYTE4(v15);
  v26 = 1;
  v23 = v17;
  sub_22F741F50();
  v25 = 2;
  v22 = v13;
  sub_22F741F50();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_22F17DA80@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a6@<X8>)
{
  v17 = a6;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v11 = &v17 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_22F742200();
  if (!v6)
  {
    v12 = v17;
    v21 = 0;
    v13 = sub_22F741E80();
    v20 = 1;
    v15 = sub_22F741E80();
    v19 = 2;
    v16 = sub_22F741E80();
    (*(v9 + 8))(v11, v18);
    *v12 = v13;
    *(v12 + 4) = BYTE4(v13) & 1;
    *(v12 + 8) = v15;
    *(v12 + 12) = BYTE4(v15) & 1;
    *(v12 + 16) = v16;
    *(v12 + 20) = BYTE4(v16) & 1;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F17DCB4(uint64_t a1)
{
  v2 = sub_22F18A084();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F17DCF0(uint64_t a1)
{
  v2 = sub_22F18A084();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSong.Relationships.AudioAnalysisRelationship.AudioAnalysisData.AudioAnalysisAttributes.AudioAnalysisTimeSeriesAttributes.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1908, &qword_22F773168);
  v30 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - v4;
  v6 = *v1;
  v7 = *(v1 + 4);
  v28 = v1[1];
  v29 = v7;
  v8 = *(v1 + 20);
  v9 = *(v1 + 21);
  v10 = v1[3];
  v26 = v1[4];
  v27 = v10;
  v25 = *(v1 + 44);
  v24 = *(v1 + 10);
  v37 = *(v1 + 45);
  v11 = v1[6];
  v22 = v1[7];
  v23 = v11;
  v21 = *(v1 + 68);
  v20 = *(v1 + 16);
  HIDWORD(v19) = *(v1 + 69);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18A084();
  sub_22F742210();
  v32 = v6;
  v33 = v28;
  v35 = v8;
  v34 = v29;
  v36 = v9;
  v38 = 0;
  sub_22F18A0D8();
  v12 = v31;
  sub_22F741F70();
  if (v12)
  {
    return (*(v30 + 8))(v5, v3);
  }

  v14 = v20;
  v15 = v21;
  v17 = v22;
  v16 = v23;
  v18 = v30;
  v32 = v27;
  v33 = v26;
  v35 = (v24 | (v25 << 32)) >> 32;
  v34 = v24;
  v36 = v37;
  v38 = 1;
  sub_22F741F70();
  v32 = v16;
  v33 = v17;
  v35 = (v14 | (v15 << 32)) >> 32;
  v34 = v14;
  v36 = BYTE4(v19);
  v38 = 2;
  sub_22F741F70();
  return (*(v18 + 8))(v5, v3);
}

uint64_t MusicKitCatalogSong.Relationships.AudioAnalysisRelationship.AudioAnalysisData.AudioAnalysisAttributes.AudioAnalysisTimeSeriesAttributes.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1918, &qword_22F773170);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18A084();
  sub_22F742200();
  if (!v2)
  {
    v32 = 0;
    sub_22F18A12C();
    sub_22F741EA0();
    v26 = *(&v28 + 1);
    v27 = v28;
    v25 = v30;
    v9 = v29;
    v35 = v31;
    v32 = 1;
    sub_22F741EA0();
    v24 = v9;
    v11 = v28;
    v22 = v30;
    v23 = *(&v28 + 1);
    v21 = v29;
    v34 = v31;
    v32 = 2;
    sub_22F741EA0();
    (*(v6 + 8))(v8, v5);
    v12 = v29;
    v13 = v30;
    v14 = v24 | (v25 << 32);
    v15 = v31;
    v33 = v31;
    v16 = v21 | (v22 << 32);
    v17 = v35;
    v18 = v34;
    *a2 = v27;
    *(a2 + 8) = v26;
    *(a2 + 16) = v14;
    *(a2 + 20) = BYTE4(v14);
    *(a2 + 21) = v17;
    v19 = v23;
    *(a2 + 24) = v11;
    *(a2 + 32) = v19;
    *(a2 + 40) = v16;
    *(a2 + 44) = BYTE4(v16);
    *(a2 + 45) = v18;
    *(a2 + 48) = v28;
    *(a2 + 68) = v13;
    *(a2 + 64) = v12;
    *(a2 + 69) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_22F17E2C0()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_22F17E2F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000013 && 0x800000022F790030 == a2;
  if (v5 || (sub_22F742040() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000022F790050 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22F742040();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_22F17E3DC(uint64_t a1)
{
  v2 = sub_22F18A180();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F17E418(uint64_t a1)
{
  v2 = sub_22F18A180();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSong.Relationships.AudioAnalysisRelationship.AudioAnalysisData.AudioAnalysisAttributes.AudioAnalysisBeats.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1920, &qword_22F773178);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v10 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18A180();

  sub_22F742210();
  v12 = v8;
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1930, &qword_22F773180);
  sub_22F18A1D4();
  sub_22F741F70();

  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    sub_22F741F70();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t MusicKitCatalogSong.Relationships.AudioAnalysisRelationship.AudioAnalysisData.AudioAnalysisAttributes.AudioAnalysisBeats.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1940, &qword_22F773188);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18A180();
  sub_22F742200();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v13 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1930, &qword_22F773180);
  v14 = 0;
  sub_22F18A250();
  sub_22F741EA0();
  v9 = v15;
  v14 = 1;
  sub_22F741EA0();
  (*(v6 + 8))(v8, v5);
  v10 = v15;
  v11 = v13;
  *v13 = v9;
  v11[1] = v10;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_22F17E86C()
{
  v1 = 1852399981;
  v2 = 0x676E69646E65;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x6E696E6E69676562;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22F17E8E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22F190B50(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22F17E90C(uint64_t a1)
{
  v2 = sub_22F18A2CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F17E948(uint64_t a1)
{
  v2 = sub_22F18A2CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSong.Relationships.AudioAnalysisRelationship.AudioAnalysisData.AudioAnalysisAttributes.AudioAnalysisBPM.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1950, &qword_22F773190);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v16 = *(v1 + 16);
  v15 = *(v1 + 24);
  v14 = *(v1 + 32);
  v13 = *(v1 + 40);
  v12 = *(v1 + 44);
  v11 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18A2CC();
  sub_22F742210();
  v22 = 0;
  v7 = v17;
  sub_22F741F60();
  if (v7)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8 = v11;
  v21 = 1;
  sub_22F741F60();
  v20 = 2;
  sub_22F741F60();
  v19 = 3;
  v18 = v8;
  sub_22F741F50();
  return (*(v4 + 8))(v6, v3);
}

uint64_t MusicKitCatalogSong.Relationships.AudioAnalysisRelationship.AudioAnalysisData.AudioAnalysisAttributes.AudioAnalysisBPM.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1960, &qword_22F773198);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18A2CC();
  sub_22F742200();
  if (!v2)
  {
    v27 = 0;
    v9 = sub_22F741E90();
    v23 = v10 & 1;
    v26 = 1;
    v11 = sub_22F741E90();
    v22 = v12 & 1;
    v25 = 2;
    v19 = sub_22F741E90();
    v21 = v13 & 1;
    v24 = 3;
    v15 = sub_22F741E80();
    (*(v6 + 8))(v8, v5);
    v20 = BYTE4(v15) & 1;
    v16 = v23;
    v17 = v22;
    v18 = v21;
    *a2 = v9;
    *(a2 + 8) = v16;
    *(a2 + 16) = v11;
    *(a2 + 24) = v17;
    *(a2 + 32) = v19;
    *(a2 + 40) = v18;
    *(a2 + 44) = v15;
    *(a2 + 48) = BYTE4(v15) & 1;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F17EE20(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 7955819;
    v6 = 0x63697473756F6361;
    if (a1 != 2)
    {
      v6 = 0x65636E656C6176;
    }

    if (a1)
    {
      v5 = 0x6E6369646F6C656DLL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x69626165636E6164;
    v2 = 0x7374616562;
    if (a1 != 7)
    {
      v2 = 7172194;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x796772656E65;
    if (a1 != 4)
    {
      v3 = 0x7373656E64756F6CLL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_22F17EF44@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22F190CC0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22F17EF78(uint64_t a1)
{
  v2 = sub_22F18A320();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F17EFB4(uint64_t a1)
{
  v2 = sub_22F18A320();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSong.Relationships.AudioAnalysisRelationship.AudioAnalysisData.AudioAnalysisAttributes.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1968, &qword_22F7731A0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - v6;
  v8 = v2[3];
  v68 = v2[2];
  v69 = v8;
  v9 = v2[5];
  v70 = v2[4];
  v71 = v9;
  v10 = v2[1];
  v66 = *v2;
  v67 = v10;
  v11 = *(v2 + 12);
  v47 = *(v2 + 13);
  v48 = v11;
  v46 = *(v2 + 116);
  v45 = *(v2 + 28);
  v72 = *(v2 + 117);
  v12 = *(v2 + 16);
  v44 = *(v2 + 15);
  v41 = *(v2 + 140);
  v42 = v12;
  v40 = *(v2 + 34);
  v43 = *(v2 + 141);
  v13 = *(v2 + 18);
  v37 = *(v2 + 19);
  v38 = v13;
  v36 = *(v2 + 164);
  v35 = *(v2 + 40);
  v39 = *(v2 + 165);
  v14 = *(v2 + 21);
  v32 = *(v2 + 22);
  v33 = v14;
  v31 = *(v2 + 188);
  v30 = *(v2 + 46);
  v34 = *(v2 + 189);
  v15 = *(v2 + 33);
  v27 = *(v2 + 34);
  v28 = v15;
  v26 = *(v2 + 284);
  v25 = *(v2 + 70);
  v29 = *(v2 + 285);
  v16 = *(v2 + 37);
  v24 = *(v2 + 36);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F13BA9C(&v66, &v60, &qword_27DAB1970, &qword_22F7731A8);
  sub_22F18A320();
  sub_22F742210();
  v62 = v68;
  v63 = v69;
  v64 = v70;
  v65 = v71;
  v60 = v66;
  v61 = v67;
  v74 = 0;
  sub_22F18A374();
  v17 = v49;
  sub_22F741F70();
  if (v17)
  {
    v56 = v62;
    v57 = v63;
    v58 = v64;
    v59 = v65;
    v54 = v60;
    v55 = v61;
    sub_22F120ADC(&v54, &qword_27DAB1970, &qword_22F7731A8);
    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    v19 = v44;
    v49 = v16;
    v20 = v45 | (v46 << 32);
    v56 = v62;
    v57 = v63;
    v58 = v64;
    v59 = v65;
    v54 = v60;
    v55 = v61;
    sub_22F120ADC(&v54, &qword_27DAB1970, &qword_22F7731A8);
    *&v50 = v48;
    *(&v50 + 1) = v47;
    BYTE4(v51) = BYTE4(v20);
    LODWORD(v51) = v20;
    BYTE5(v51) = v72;
    v73 = 1;
    sub_22F18A3C8();
    sub_22F741F70();
    *&v50 = v19;
    *(&v50 + 1) = v42;
    BYTE4(v51) = (v40 | (v41 << 32)) >> 32;
    LODWORD(v51) = v40;
    BYTE5(v51) = v43;
    v73 = 2;
    sub_22F741F70();
    *&v50 = v38;
    *(&v50 + 1) = v37;
    BYTE4(v51) = (v35 | (v36 << 32)) >> 32;
    LODWORD(v51) = v35;
    BYTE5(v51) = v39;
    v73 = 3;
    sub_22F741F70();
    *&v50 = v33;
    *(&v50 + 1) = v32;
    BYTE4(v51) = (v30 | (v31 << 32)) >> 32;
    LODWORD(v51) = v30;
    BYTE5(v51) = v34;
    v73 = 4;
    sub_22F741F70();
    v21 = v2[15];
    v52 = v2[14];
    v53[0] = v21;
    *(v53 + 15) = *(v2 + 255);
    v22 = v2[13];
    v50 = v2[12];
    v51 = v22;
    v73 = 5;
    sub_22F18A41C();
    sub_22F741F70();
    *&v50 = v28;
    *(&v50 + 1) = v27;
    BYTE4(v51) = (v25 | (v26 << 32)) >> 32;
    LODWORD(v51) = v25;
    BYTE5(v51) = v29;
    v73 = 6;
    sub_22F741F70();
    *&v50 = v24;
    *(&v50 + 1) = v49;
    v73 = 7;
    sub_22F18A470(v24, v49);
    sub_22F18A4B8();
    sub_22F741F70();
    sub_22F18A50C(v50, *(&v50 + 1));
    v23 = v2[20];
    v50 = v2[19];
    v51 = v23;
    v52 = v2[21];
    LOWORD(v53[0]) = *(v2 + 176);
    v73 = 8;
    sub_22F18A550();
    sub_22F741F70();
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t MusicKitCatalogSong.Relationships.AudioAnalysisRelationship.AudioAnalysisData.AudioAnalysisAttributes.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB19A0, &qword_22F7731B0);
  v5 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v7 = &v27 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18A320();
  sub_22F742200();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v8 = v5;
  v49 = a2;
  v101 = 0;
  sub_22F18A5A4();
  sub_22F741EA0();
  v120 = v104;
  v121 = v105;
  v122 = v106;
  v123 = v107;
  v118 = v102;
  v119 = v103;
  LOBYTE(v50[0]) = 1;
  sub_22F18A5F8();
  sub_22F741EA0();
  v47 = *(&v51 + 1);
  v48 = v51;
  v9 = BYTE4(v52);
  v10 = v52;
  v117 = BYTE5(v52);
  LOBYTE(v50[0]) = 2;
  sub_22F741EA0();
  v43 = v10;
  v44 = v9;
  v45 = *(&v51 + 1);
  v46 = v51;
  v11 = BYTE4(v52);
  v12 = v52;
  v116 = BYTE5(v52);
  LOBYTE(v50[0]) = 3;
  sub_22F741EA0();
  v40 = v12;
  v41 = v11;
  v39 = *(&v51 + 1);
  v42 = v51;
  v13 = BYTE4(v52);
  v14 = v52;
  v115 = BYTE5(v52);
  LOBYTE(v50[0]) = 4;
  sub_22F741EA0();
  v35 = v13;
  v36 = v14;
  v37 = *(&v51 + 1);
  v38 = v51;
  v15 = BYTE4(v52);
  v16 = v52;
  v114 = BYTE5(v52);
  v96 = 5;
  sub_22F18A64C();
  sub_22F741EA0();
  v33 = v16;
  v34 = v15;
  *&v113[18] = v98;
  *&v113[34] = v99;
  *&v113[50] = *v100;
  *&v113[65] = *&v100[15];
  *&v113[2] = v97;
  LOBYTE(v50[0]) = 6;
  sub_22F741EA0();
  v31 = *(&v51 + 1);
  v32 = v51;
  v17 = BYTE4(v52);
  v18 = v52;
  v112 = BYTE5(v52);
  LOBYTE(v50[0]) = 7;
  sub_22F18A6A0();
  sub_22F741EA0();
  v30 = v51;
  v91 = 8;
  sub_22F18A6F4();
  sub_22F741EA0();
  v29 = v43 | (v44 << 32);
  v19 = v40 | (v41 << 32);
  v40 = v36 | (v35 << 32);
  v41 = v19;
  v20 = *(v8 + 8);
  v43 = v18 | (v17 << 32);
  v44 = v33 | (v34 << 32);
  v20(v7, v124);
  v108 = v92;
  v109 = v93;
  v110 = v94;
  v50[2] = v120;
  v50[3] = v121;
  v50[4] = v122;
  v50[5] = v123;
  v50[0] = v118;
  v50[1] = v119;
  *(&v50[11] + 14) = *v113;
  *(&v50[15] + 7) = *&v113[57];
  *(&v50[14] + 14) = *&v113[48];
  *(&v50[13] + 14) = *&v113[32];
  *(&v50[12] + 14) = *&v113[16];
  v111 = v95;
  *&v50[6] = v48;
  *(&v50[6] + 1) = v47;
  v35 = HIDWORD(v29);
  BYTE4(v50[7]) = BYTE4(v29);
  LODWORD(v50[7]) = v29;
  LODWORD(v34) = v117;
  BYTE5(v50[7]) = v117;
  *(&v50[7] + 1) = v46;
  *&v50[8] = v45;
  v33 = HIDWORD(v41);
  BYTE12(v50[8]) = BYTE4(v41);
  DWORD2(v50[8]) = v41;
  v28 = v116;
  BYTE13(v50[8]) = v116;
  v21 = v39;
  *&v50[9] = v42;
  *(&v50[9] + 1) = v39;
  v22 = HIDWORD(v40);
  BYTE4(v50[10]) = BYTE4(v40);
  LODWORD(v50[10]) = v40;
  LOBYTE(v17) = v115;
  BYTE5(v50[10]) = v115;
  v23 = v37;
  *(&v50[10] + 1) = v38;
  *&v50[11] = v37;
  v24 = HIDWORD(v44);
  BYTE12(v50[11]) = BYTE4(v44);
  DWORD2(v50[11]) = v44;
  v25 = v114;
  BYTE13(v50[11]) = v114;
  *(&v50[16] + 1) = v32;
  *&v50[17] = v31;
  DWORD2(v50[17]) = v43;
  v36 = HIDWORD(v43);
  BYTE12(v50[17]) = BYTE4(v43);
  LODWORD(v124) = v112;
  BYTE13(v50[17]) = v112;
  v50[18] = v30;
  LOWORD(v50[22]) = v95;
  v50[20] = v93;
  v50[21] = v94;
  v50[19] = v92;
  memcpy(v49, v50, 0x162uLL);
  sub_22F18A748(v50, &v51);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v53 = v120;
  v54 = v121;
  v55 = v122;
  v56 = v123;
  v51 = v118;
  v52 = v119;
  v57 = v48;
  v58 = v47;
  v60 = v35;
  v59 = v29;
  v61 = v34;
  v62 = v46;
  v63 = v45;
  v65 = v33;
  v64 = v41;
  v66 = v28;
  v67 = v42;
  v68 = v21;
  v70 = v22;
  v69 = v40;
  v71 = v17;
  v72 = v38;
  v73 = v23;
  v75 = v24;
  v74 = v44;
  v76 = v25;
  v78 = *&v113[16];
  v79 = *&v113[32];
  *v80 = *&v113[48];
  *&v80[9] = *&v113[57];
  v77 = *v113;
  v81 = v32;
  v82 = v31;
  v84 = v36;
  v83 = v43;
  v85 = v124;
  v86 = v30;
  v90 = v111;
  v88 = v109;
  v89 = v110;
  v87 = v108;
  return sub_22F18A780(&v51);
}

uint64_t sub_22F17FD5C(uint64_t a1)
{
  v2 = sub_22F18A7B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F17FD98(uint64_t a1)
{
  v2 = sub_22F18A7B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSong.Relationships.AudioAnalysisRelationship.AudioAnalysisData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB19A8, &qword_22F7731B8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  memcpy(v10, v1, 0x162uLL);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F13BA9C(v10, v9, &qword_27DAB19B0, &qword_22F7731C0);
  sub_22F18A7B0();
  sub_22F742210();
  memcpy(v9, v10, 0x162uLL);
  sub_22F18A804();
  sub_22F741F70();
  memcpy(v8, v9, 0x162uLL);
  sub_22F120ADC(v8, &qword_27DAB19B0, &qword_22F7731C0);
  return (*(v4 + 8))(v6, v3);
}

uint64_t MusicKitCatalogSong.Relationships.AudioAnalysisRelationship.AudioAnalysisData.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v11 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB19C0, &qword_22F7731C8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18A7B0();
  sub_22F742200();
  if (!v2)
  {
    v8 = v11;
    sub_22F18A858();
    sub_22F741EA0();
    (*(v5 + 8))(v7, v4);
    memcpy(v8, v10, 0x162uLL);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F180154(uint64_t a1)
{
  v2 = sub_22F18A8AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F180190(uint64_t a1)
{
  v2 = sub_22F18A8AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSong.Relationships.AudioAnalysisRelationship.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB19C8, &qword_22F7731D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18A8AC();

  sub_22F742210();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB19D0, &qword_22F7731D8);
  sub_22F18A900();
  sub_22F741F70();

  return (*(v4 + 8))(v6, v3);
}

uint64_t MusicKitCatalogSong.Relationships.AudioAnalysisRelationship.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB19E8, &qword_22F7731E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18A8AC();
  sub_22F742200();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB19D0, &qword_22F7731D8);
    sub_22F18A9D8();
    sub_22F741EA0();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F180508(uint64_t a1)
{
  v2 = sub_22F18AAB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F180544(uint64_t a1)
{
  v2 = sub_22F18AAB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22F180638(uint64_t a1)
{
  v2 = sub_22F18ABFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F180674(uint64_t a1)
{
  v2 = sub_22F18ABFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22F1806F4(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t a5)
{
  v17 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  v11 = *v5;
  v16 = *(v5 + 2);
  v15 = *(v5 + 12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17();

  sub_22F742210();
  v22 = v11;
  v21 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB19F8, &qword_22F7731F0);
  sub_22F18AB04();
  v12 = v18;
  sub_22F741FE0();

  if (!v12)
  {
    v20 = 1;
    v19 = v15;
    sub_22F741F50();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_22F180900@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a6@<X8>)
{
  v19 = a6;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v11 = &v18 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_22F742200();
  if (v6)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v12 = v9;
  v13 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB19F8, &qword_22F7731F0);
  v22 = 0;
  sub_22F18AB80();
  v14 = v20;
  sub_22F741F10();
  v15 = v23;
  v21 = 1;
  v16 = sub_22F741E80();
  (*(v12 + 8))(v11, v14);
  *v13 = v15;
  *(v13 + 8) = v16;
  *(v13 + 12) = BYTE4(v16) & 1;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F180B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v6 || (sub_22F742040() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000022F790090 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22F742040();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_22F180C48(uint64_t a1)
{
  v2 = sub_22F18AC50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F180C84(uint64_t a1)
{
  v2 = sub_22F18AC50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22F180D48(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 12);
  v4 = *(a2 + 8);
  v5 = *(a2 + 12);
  if (sub_22F17AA10(*a1, *a2))
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v7 = v5;
      }

      else
      {
        v7 = 1;
      }

      if ((v7 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_22F180DE8()
{
  v1 = 0x6C426F5465646166;
  v2 = 0x65536E49656D6974;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0x756C61566E696167;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22F180E80@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22F190FA4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22F180EA8(uint64_t a1)
{
  v2 = sub_22F18ACA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F180EE4(uint64_t a1)
{
  v2 = sub_22F18ACA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSong.Relationships.FlexMLAnalysisRelationship.FlexMLAnalysisData.FlexMLAnalysisAttributes.ExitPoint.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1A28, &qword_22F773220);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v10 = *(v1 + 8);
  v8 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18ACA4();
  sub_22F742210();
  LOBYTE(v12) = 0;
  sub_22F741FB0();
  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB19F8, &qword_22F7731F0);
    sub_22F18AB04();
    sub_22F741FE0();
    LOBYTE(v12) = 2;
    sub_22F741FB0();
    v12 = v8;
    v11 = 3;
    sub_22F741FE0();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t MusicKitCatalogSong.Relationships.FlexMLAnalysisRelationship.FlexMLAnalysisData.FlexMLAnalysisAttributes.ExitPoint.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1A30, &qword_22F773228);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18ACA4();
  sub_22F742200();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v17) = 0;
  sub_22F741EE0();
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB19F8, &qword_22F7731F0);
  v16 = 1;
  sub_22F18AB80();
  sub_22F741F10();
  v15 = v17;
  LOBYTE(v17) = 2;
  sub_22F741EE0();
  v12 = v11;
  v16 = 3;
  sub_22F741F10();
  (*(v6 + 8))(v8, v5);
  v14 = v17;
  *a2 = v10;
  *(a2 + 8) = v15;
  *(a2 + 16) = v12;
  *(a2 + 24) = v14;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t static MusicKitCatalogSong.Relationships.FlexMLAnalysisRelationship.FlexMLAnalysisData.FlexMLAnalysisAttributes.EntryPoint.== infix(_:_:)(float *a1, float *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  v5 = a1[2];
  result = *(a1 + 2);
  v7 = a2[2];
  v8 = *(a2 + 2);
  if (v4)
  {
    v9 = v2 == v3;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
LABEL_10:
    if (v5 == v7)
    {
      return sub_22F17AA10(result, v8);
    }

    return 0;
  }

  v10 = (v2 + 32);
  v11 = (v3 + 32);
  while (v4)
  {
    if (*v10 != *v11)
    {
      return 0;
    }

    ++v10;
    ++v11;
    if (!--v4)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22F18147C()
{
  v1 = 0x65536E49656D6974;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x756C61566E696167;
  }
}

uint64_t sub_22F1814EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22F191124(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22F181514(uint64_t a1)
{
  v2 = sub_22F18ACF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F181550(uint64_t a1)
{
  v2 = sub_22F18ACF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSong.Relationships.FlexMLAnalysisRelationship.FlexMLAnalysisData.FlexMLAnalysisAttributes.EntryPoint.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1A38, &qword_22F773230);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v8 = *v1;
  v12 = v1[2];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18ACF8();

  sub_22F742210();
  v14 = v8;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB19F8, &qword_22F7731F0);
  sub_22F18AB04();
  sub_22F741FE0();

  if (!v2)
  {
    v9 = v12;
    LOBYTE(v14) = 1;
    sub_22F741FB0();
    v14 = v9;
    v13 = 2;
    sub_22F741FE0();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t MusicKitCatalogSong.Relationships.FlexMLAnalysisRelationship.FlexMLAnalysisData.FlexMLAnalysisAttributes.EntryPoint.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1A40, &qword_22F773238);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18ACF8();
  sub_22F742200();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB19F8, &qword_22F7731F0);
  v15 = 0;
  sub_22F18AB80();
  sub_22F741F10();
  v14 = v16;
  LOBYTE(v16) = 1;
  sub_22F741EE0();
  v10 = v9;
  v15 = 2;
  sub_22F741F10();
  (*(v6 + 8))(v8, v5);
  v12 = v16;
  *a2 = v14;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F181A00(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if ((sub_22F17AA10(*a1, *a2) & 1) == 0 || v2 != v4)
  {
    return 0;
  }

  return sub_22F17AA10(v3, v5);
}

uint64_t static MusicKitCatalogSong.Relationships.FlexMLAnalysisRelationship.FlexMLAnalysisData.FlexMLAnalysisAttributes.VideoEvents.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  result = a1[1];
  v6 = a2[1];
  if (v4)
  {
    v7 = v2 == v3;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return sub_22F17AA10(result, v6);
  }

  v8 = (v2 + 32);
  v9 = (v3 + 32);
  while (v4)
  {
    if (*v8 != *v9)
    {
      return 0;
    }

    ++v8;
    ++v9;
    if (!--v4)
    {
      return sub_22F17AA10(result, v6);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22F181B18()
{
  if (*v0)
  {
    return 0x65536E49656D6974;
  }

  else
  {
    return 0x65726F6373;
  }
}

uint64_t sub_22F181B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65726F6373 && a2 == 0xE500000000000000;
  if (v6 || (sub_22F742040() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65536E49656D6974 && a2 == 0xED000073646E6F63)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22F742040();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_22F181C3C(uint64_t a1)
{
  v2 = sub_22F18AD4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F181C78(uint64_t a1)
{
  v2 = sub_22F18AD4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSong.Relationships.FlexMLAnalysisRelationship.FlexMLAnalysisData.FlexMLAnalysisAttributes.VideoEvents.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1A48, &qword_22F773240);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v10 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18AD4C();

  sub_22F742210();
  v12 = v8;
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB19F8, &qword_22F7731F0);
  sub_22F18AB04();
  sub_22F741FE0();

  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    sub_22F741FE0();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t MusicKitCatalogSong.Relationships.FlexMLAnalysisRelationship.FlexMLAnalysisData.FlexMLAnalysisAttributes.VideoEvents.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1A50, &qword_22F773248);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18AD4C();
  sub_22F742200();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v13 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB19F8, &qword_22F7731F0);
  v14 = 0;
  sub_22F18AB80();
  sub_22F741F10();
  v9 = v15;
  v14 = 1;
  sub_22F741F10();
  (*(v6 + 8))(v8, v5);
  v10 = v15;
  v11 = v13;
  *v13 = v9;
  v11[1] = v10;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F182094(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_22F17AA10(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_22F17AA10(v2, v3);
}

uint64_t sub_22F182124()
{
  v1 = *v0;
  v2 = 0x65636E656C6176;
  v3 = 0x6E696F5074697865;
  v4 = 0x696F507972746E65;
  if (v1 != 4)
  {
    v4 = 0x6576456F65646976;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C6173756F7261;
  if (v1 != 1)
  {
    v5 = 0x65546C6175736976;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_22F1821FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22F191254(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22F182230(uint64_t a1)
{
  v2 = sub_22F18ADA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F18226C(uint64_t a1)
{
  v2 = sub_22F18ADA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSong.Relationships.FlexMLAnalysisRelationship.FlexMLAnalysisData.FlexMLAnalysisAttributes.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1A58, &qword_22F773250);
  v32 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 12);
  v9 = *(v1 + 16);
  v29 = *(v1 + 28);
  v30 = v9;
  v28 = *(v1 + 24);
  v10 = *(v1 + 32);
  v26 = *(v1 + 44);
  v27 = v10;
  v25 = *(v1 + 40);
  v11 = *(v1 + 48);
  v23 = *(v1 + 56);
  v24 = v11;
  v12 = *(v1 + 72);
  v21 = *(v1 + 64);
  v22 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18ADA0();

  sub_22F742210();
  v33 = v6;
  v13 = v3;
  BYTE4(v34) = v8;
  LODWORD(v34) = v7;
  v35 = 0;
  sub_22F18ADF4();
  v14 = v31;
  sub_22F741F70();
  if (v14)
  {

    return (*(v32 + 8))(v5, v3);
  }

  else
  {
    v16 = v25;
    v17 = v26;
    v18 = v27;
    v19 = v32;
    v20 = v28 | (v29 << 32);

    v33 = v30;
    BYTE4(v34) = BYTE4(v20);
    LODWORD(v34) = v20;
    v35 = 1;
    sub_22F18AE48();

    sub_22F741F70();

    v33 = v18;
    BYTE4(v34) = (v16 | (v17 << 32)) >> 32;
    LODWORD(v34) = v16;
    v35 = 2;
    sub_22F18AE9C();

    sub_22F741F70();

    v33 = v24;
    v35 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1A78, &qword_22F773258);
    sub_22F18AEF0();
    sub_22F741F70();
    v33 = v23;
    v35 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1A90, &qword_22F773260);
    sub_22F18AFC8();
    sub_22F741F70();
    v33 = v21;
    v34 = v22;
    v35 = 5;
    sub_22F13BB74(v21, v22);
    sub_22F18B0A0();
    sub_22F741F70();
    sub_22F18B0F4(v33, v34);
    return (*(v19 + 8))(v5, v13);
  }
}

uint64_t MusicKitCatalogSong.Relationships.FlexMLAnalysisRelationship.FlexMLAnalysisData.FlexMLAnalysisAttributes.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1AB0, &qword_22F773268);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18ADA0();
  sub_22F742200();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v42) = 0;
  sub_22F18B134();
  sub_22F741EA0();
  v41 = a2;
  v9 = v47;
  v10 = v49;
  v11 = v48;
  LOBYTE(v42) = 1;
  sub_22F18B188();
  sub_22F741EA0();
  v40 = v9;
  v37 = v11;
  v38 = v10;
  v39 = v47;
  v12 = v49;
  v13 = v48;
  LOBYTE(v42) = 2;
  sub_22F18B1DC();
  sub_22F741EA0();
  v34 = v13;
  v35 = v12;
  v36 = v47;
  v14 = v49;
  v15 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1A78, &qword_22F773258);
  LOBYTE(v42) = 3;
  sub_22F18B230();
  sub_22F741EA0();
  v32 = v14;
  v31 = v15;
  v33 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1A90, &qword_22F773260);
  LOBYTE(v42) = 4;
  sub_22F18B308();
  sub_22F741EA0();
  v16 = v32;
  v30 = v47;
  v61 = 5;
  sub_22F18B3E0();
  sub_22F741EA0();
  v17 = v37 | (v38 << 32);
  v18 = v34 | (v35 << 32);
  v19 = v31 | (v16 << 32);
  (*(v6 + 8))(v8, v5);
  v32 = *(&v60 + 1);
  *&v42 = v40;
  v37 = v17;
  v38 = HIDWORD(v17);
  BYTE12(v42) = BYTE4(v17);
  DWORD2(v42) = v17;
  v20 = v39;
  *&v43 = v39;
  v34 = v18;
  v35 = HIDWORD(v18);
  BYTE12(v43) = BYTE4(v18);
  DWORD2(v43) = v18;
  v21 = v30;
  v22 = v36;
  *&v44 = v36;
  BYTE12(v44) = BYTE4(v19);
  DWORD2(v44) = v19;
  v23 = v33;
  *&v45 = v33;
  *(&v45 + 1) = v30;
  v46 = v60;
  v24 = v60;
  v25 = v45;
  v26 = v41;
  v41[2] = v44;
  v26[3] = v25;
  v27 = v43;
  *v26 = v42;
  v26[1] = v27;
  v26[4] = v46;
  sub_22F18B434(&v42, &v47);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v47 = v40;
  v49 = v38;
  v48 = v37;
  v50 = v20;
  v52 = v35;
  v51 = v34;
  v53 = v22;
  v55 = BYTE4(v19);
  v54 = v19;
  v56 = v23;
  v57 = v21;
  v58 = v24;
  v59 = v32;
  return sub_22F18B46C(&v47);
}

uint64_t sub_22F182CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22F742040();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_22F182D68(uint64_t a1)
{
  v2 = sub_22F18B49C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F182DA4(uint64_t a1)
{
  v2 = sub_22F18B49C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSong.Relationships.FlexMLAnalysisRelationship.FlexMLAnalysisData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1AB8, &qword_22F773270);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = v1[3];
  v18 = v1[2];
  v19 = v7;
  v20 = v1[4];
  v8 = v1[1];
  v16 = *v1;
  v17 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F13BA9C(&v16, &v11, &qword_27DAB1AC0, &qword_22F773278);
  sub_22F18B49C();
  sub_22F742210();
  v13 = v18;
  v14 = v19;
  v15 = v20;
  v11 = v16;
  v12 = v17;
  sub_22F18B4F0();
  sub_22F741F70();
  v10[2] = v13;
  v10[3] = v14;
  v10[4] = v15;
  v10[1] = v12;
  v10[0] = v11;
  sub_22F120ADC(v10, &qword_27DAB1AC0, &qword_22F773278);
  return (*(v4 + 8))(v6, v3);
}

uint64_t MusicKitCatalogSong.Relationships.FlexMLAnalysisRelationship.FlexMLAnalysisData.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1AD0, &qword_22F773280);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18B49C();
  sub_22F742200();
  if (!v2)
  {
    sub_22F18B544();
    sub_22F741EA0();
    (*(v6 + 8))(v8, v5);
    v9 = v12[3];
    a2[2] = v12[2];
    a2[3] = v9;
    a2[4] = v12[4];
    v10 = v12[1];
    *a2 = v12[0];
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F18318C(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v3 = *a1;
  v4 = *a2;
  if (*a1)
  {
    if (v4)
    {

      LOBYTE(a3) = a3(v3, v4);

      if (a3)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_22F1831FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22F742040();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_22F183284(uint64_t a1)
{
  v2 = sub_22F18B598();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F1832C0(uint64_t a1)
{
  v2 = sub_22F18B598();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSong.Relationships.FlexMLAnalysisRelationship.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1AD8, &qword_22F773288);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18B598();

  sub_22F742210();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1AE0, &qword_22F773290);
  sub_22F18B5EC();
  sub_22F741F70();

  return (*(v4 + 8))(v6, v3);
}

uint64_t MusicKitCatalogSong.Relationships.FlexMLAnalysisRelationship.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1AF8, &qword_22F773298);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18B598();
  sub_22F742200();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1AE0, &qword_22F773290);
    sub_22F18B6C4();
    sub_22F741EA0();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F183608(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v5 = *a1;
  v6 = *a2;
  if (*a1)
  {
    if (v6)
    {

      LOBYTE(a5) = a5(v5, v6);

      if (a5)
      {
        return 1;
      }
    }
  }

  else if (!v6)
  {
    return 1;
  }

  return 0;
}

uint64_t _s11PhotosGraph19MusicKitCatalogSongV10AttributesV7PreviewV2eeoiySbAG_AGtFZ_0(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22F742040();
  }
}

uint64_t sub_22F1836E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22F742040();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_22F183764(uint64_t a1)
{
  v2 = sub_22F18B79C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F1837A0(uint64_t a1)
{
  v2 = sub_22F18B79C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSong.Relationships.EquivalentsData.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1B00, &qword_22F7732A0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18B79C();
  sub_22F742210();
  sub_22F741F80();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_22F18395C@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a6@<X8>)
{
  v20 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v19 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_22F742200();
  if (!v6)
  {
    v12 = v19;
    v13 = v20;
    v14 = sub_22F741EB0();
    v16 = v15;
    (*(v12 + 8))(v11, v9);
    *v13 = v14;
    v13[1] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F183AF4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1B00, &qword_22F7732A0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18B79C();
  sub_22F742210();
  sub_22F741F80();
  return (*(v3 + 8))(v5, v2);
}

uint64_t MusicKitCatalogSong.Relationships.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1B18, &qword_22F7732B0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  v8 = *v1;
  v7 = v1[1];
  v9 = v1[2];
  v14 = v1[3];
  v15 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18BC24();

  sub_22F742210();
  v18 = v8;
  v17 = 0;
  sub_22F18BC78();
  v10 = v16;
  sub_22F741F70();
  if (v10)
  {
  }

  else
  {
    v11 = v14;
    v12 = v15;

    v18 = v7;
    v17 = 1;
    sub_22F1007AC(v7);
    sub_22F18BCCC();
    sub_22F741F70();
    sub_22F1007BC(v18);
    v18 = v12;
    v17 = 2;
    sub_22F1007AC(v12);
    sub_22F18BD20();
    sub_22F741F70();
    sub_22F1007BC(v18);
    v18 = v11;
    v17 = 3;
    sub_22F1007AC(v11);
    sub_22F18BD74();
    sub_22F741F70();
    sub_22F1007BC(v18);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t MusicKitCatalogSong.Relationships.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1B40, &qword_22F7732B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18BC24();
  sub_22F742200();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v17 = 0;
  sub_22F18BDC8();
  sub_22F741EA0();
  v9 = v18;
  v17 = 1;
  sub_22F18BE1C();
  sub_22F741EA0();
  v16 = v18;
  v17 = 2;
  sub_22F18BE70();
  sub_22F741EA0();
  v15 = v18;
  v17 = 3;
  sub_22F18BEC4();
  sub_22F741EA0();
  (*(v6 + 8))(v8, v5);
  v11 = v18;
  v13 = v15;
  v12 = v16;
  *a2 = v9;
  a2[1] = v12;
  a2[2] = v13;
  a2[3] = v11;

  sub_22F1007AC(v12);
  sub_22F1007AC(v13);
  sub_22F1007AC(v11);
  __swift_destroy_boxed_opaque_existential_0(a1);

  sub_22F1007BC(v12);
  sub_22F1007BC(v13);
  return sub_22F1007BC(v11);
}

uint64_t MusicKitCatalogSong.MusicKitTesseractMetadata.MusicKitTesseractDailyDetails.dateUTC.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MusicKitCatalogSong.MusicKitTesseractMetadata.MusicKitTesseractDailyDetails.lastEndReason.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

unint64_t sub_22F1842A4()
{
  v1 = *v0;
  v2 = 0x43545565746164;
  v3 = 0x73656369766564;
  if (v1 != 6)
  {
    v3 = 0xD000000000000018;
  }

  v4 = 0x6E756F4370696B73;
  if (v1 != 4)
  {
    v4 = 0x52646E457473616CLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD00000000000001ALL;
  if (v1 != 2)
  {
    v5 = 0x6E756F4379616C70;
  }

  if (*v0)
  {
    v2 = 0x4354557372756F68;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_22F1843B8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22F191468(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22F1843E0(uint64_t a1)
{
  v2 = sub_22F18BF18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F18441C(uint64_t a1)
{
  v2 = sub_22F18BF18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSong.MusicKitTesseractMetadata.MusicKitTesseractDailyDetails.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1B48, &qword_22F7732C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - v5;
  v7 = *(v1 + 16);
  v18 = *(v1 + 24);
  v19 = v7;
  v8 = *(v1 + 32);
  v16 = *(v1 + 40);
  v17 = v8;
  v9 = *(v1 + 48);
  v14 = *(v1 + 56);
  v15 = v9;
  v13 = *(v1 + 64);
  v12[1] = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18BF18();
  sub_22F742210();
  LOBYTE(v22) = 0;
  v10 = v20;
  sub_22F741F80();
  if (!v10)
  {
    v22 = v19;
    v21 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1930, &qword_22F773180);
    sub_22F18A1D4();
    sub_22F741FE0();
    LOBYTE(v22) = 2;
    sub_22F741FC0();
    LOBYTE(v22) = 3;
    sub_22F741FC0();
    LOBYTE(v22) = 4;
    sub_22F741FC0();
    LOBYTE(v22) = 5;
    sub_22F741F80();
    v22 = v13;
    v21 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    sub_22F1870F4();
    sub_22F741FE0();
    LOBYTE(v22) = 7;
    sub_22F741F90();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t MusicKitCatalogSong.MusicKitTesseractMetadata.MusicKitTesseractDailyDetails.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1B58, &qword_22F7732C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18BF18();
  sub_22F742200();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v36[0]) = 0;
  v9 = sub_22F741EB0();
  v11 = v10;
  v31 = a2;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1930, &qword_22F773180);
  LOBYTE(v32) = 1;
  sub_22F18A250();
  sub_22F741F10();
  v30 = v36[0];
  LOBYTE(v36[0]) = 2;
  v29 = sub_22F741EF0();
  LOBYTE(v36[0]) = 3;
  v13 = sub_22F741EF0();
  LOBYTE(v36[0]) = 4;
  v27 = sub_22F741EF0();
  LOBYTE(v36[0]) = 5;
  v26 = sub_22F741EB0();
  v28 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  LOBYTE(v32) = 6;
  sub_22F1873C8();
  sub_22F741F10();
  v25 = v36[0];
  v39 = 7;
  v15 = sub_22F741EC0();
  (*(v6 + 8))(v8, v5);
  v16 = v15 & 1;
  v38 = v15 & 1;
  *&v32 = v12;
  *(&v32 + 1) = v11;
  v17 = v30;
  v18 = v29;
  *&v33 = v30;
  *(&v33 + 1) = v29;
  *&v34 = v13;
  *(&v34 + 1) = v27;
  v19 = v28;
  *v35 = v26;
  *&v35[8] = v28;
  v20 = v25;
  *&v35[16] = v25;
  v35[24] = v16;
  v21 = *v35;
  v22 = v31;
  v31[2] = v34;
  v22[3] = v21;
  *(v22 + 57) = *&v35[9];
  v23 = v33;
  *v22 = v32;
  v22[1] = v23;
  sub_22F18BF6C(&v32, v36);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v36[0] = v12;
  v36[1] = v11;
  v36[2] = v17;
  v36[3] = v18;
  v36[4] = v13;
  v36[5] = v27;
  v36[6] = v26;
  v36[7] = v19;
  v36[8] = v20;
  v37 = v38;
  return sub_22F18BFA4(v36);
}

uint64_t static MusicKitCatalogSong.MusicKitTesseractMetadata.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    if (v3 && (sub_22F17AFA0(v2, v3) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_22F184CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746544796C696164 && a2 == 0xEC000000736C6961)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22F742040();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_22F184D34(uint64_t a1)
{
  v2 = sub_22F18BFD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F184D70(uint64_t a1)
{
  v2 = sub_22F18BFD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSong.MusicKitTesseractMetadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1B60, &qword_22F7732D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18BFD4();

  sub_22F742210();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1B68, &qword_22F7732D8);
  sub_22F18C028();
  sub_22F741F70();

  return (*(v4 + 8))(v6, v3);
}

uint64_t MusicKitCatalogSong.MusicKitTesseractMetadata.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1B80, &unk_22F7732E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18BFD4();
  sub_22F742200();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1B68, &qword_22F7732D8);
    sub_22F18C100();
    sub_22F741EA0();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F1850A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    if (v3 && (sub_22F17AFA0(v2, v3) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

uint64_t MusicKitCatalogSong.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MusicKitCatalogSong.attributes.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[12];
  v3 = v1[14];
  v35 = v1[13];
  v36 = v3;
  v4 = v1[14];
  v37 = v1[15];
  v5 = v1[8];
  v6 = v1[10];
  v31 = v1[9];
  v7 = v31;
  v32 = v6;
  v8 = v1[10];
  v9 = v1[12];
  v33 = v1[11];
  v10 = v33;
  v34 = v9;
  v11 = v1[4];
  v12 = v1[6];
  v27 = v1[5];
  v13 = v27;
  v28 = v12;
  v14 = v1[6];
  v15 = v1[8];
  v29 = v1[7];
  v16 = v29;
  v30 = v15;
  v17 = v1[2];
  v24[0] = v1[1];
  v24[1] = v17;
  v18 = v1[4];
  v20 = v1[1];
  v19 = v1[2];
  v25 = v1[3];
  v21 = v25;
  v26 = v18;
  a1[12] = v35;
  a1[13] = v4;
  a1[14] = v1[15];
  a1[8] = v7;
  a1[9] = v8;
  a1[10] = v10;
  a1[11] = v2;
  a1[4] = v13;
  a1[5] = v14;
  a1[6] = v16;
  a1[7] = v5;
  *a1 = v20;
  a1[1] = v19;
  a1[2] = v21;
  a1[3] = v11;
  return sub_22F13BA9C(v24, &v23, &qword_27DAB1B88, &qword_22F77C000);
}

uint64_t MusicKitCatalogSong.relationships.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[32];
  v3 = v1[33];
  v4 = v1[34];
  v5 = v1[35];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_22F18C1D8(v2, v3, v4, v5);
}

uint64_t MusicKitCatalogSong.meta.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 288);
  *a1 = v2;
  return sub_22F1007AC(v2);
}

uint64_t static MusicKitCatalogSong.unitag(withTag:namespace:fromUnitags:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  if (!a5)
  {
    *a6 = 0;
    a6[1] = 0;
    a6[3] = 0;
    a6[4] = 0;
    a6[2] = 1;
    return result;
  }

  v6 = *(a5 + 16);
  if (v6)
  {
    v8 = result;
    v9 = 0;
    v10 = a5 + 64;
    v11 = MEMORY[0x277D84F90];
    v31 = a5 + 64;
    do
    {
      v33 = v11;
      v12 = (v10 + 40 * v9);
      v13 = v9;
      while (1)
      {
        if (v13 >= v6)
        {
          __break(1u);
LABEL_35:
          __break(1u);
          return result;
        }

        v9 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_35;
        }

        v14 = *(v12 - 2);
        if (v14)
        {
          v35 = *(v12 - 28);
          v36 = *(v12 - 8);
          v15 = *(v12 - 3);
          v16 = *(v12 - 1);
          v17 = *v12;
          v18 = v15 == v8 && v14 == a2;
          if (v18 || (result = sub_22F742040(), (result & 1) != 0))
          {
            if (v17)
            {
              if (v16 == a3 && v17 == a4)
              {
                v16 = a3;
                v30 = a4;
                goto LABEL_20;
              }

              result = sub_22F742040();
              if (result)
              {
                break;
              }
            }
          }
        }

        ++v13;
        v12 += 5;
        if (v9 == v6)
        {
          v11 = v33;
          goto LABEL_28;
        }
      }

      v30 = v17;
LABEL_20:

      v11 = v33;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_22F146474(0, *(v33 + 16) + 1, 1);
        v11 = v33;
      }

      v20 = *(v11 + 16);
      v19 = *(v11 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_22F146474((v19 > 1), v20 + 1, 1);
        v11 = v33;
      }

      *(v11 + 16) = v20 + 1;
      v21 = v11 + 40 * v20;
      *(v21 + 32) = v36;
      *(v21 + 36) = v35;
      *(v21 + 40) = v15;
      *(v21 + 48) = v14;
      *(v21 + 56) = v16;
      *(v21 + 64) = v30;
      v10 = v31;
    }

    while (v9 != v6);
LABEL_28:
    if (!*(v11 + 16))
    {
      goto LABEL_33;
    }
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
    if (!*(MEMORY[0x277D84F90] + 16))
    {
LABEL_33:

      *a6 = 0;
      a6[1] = 0;
      a6[3] = 0;
      a6[4] = 0;
      a6[2] = 1;
      return result;
    }
  }

  v22 = *(v11 + 32);
  v23 = v11;
  v24 = *(v11 + 36);
  v26 = v23[5];
  v25 = v23[6];
  v28 = v23[7];
  v27 = v23[8];

  v29 = 0x100000000;
  if (!v24)
  {
    v29 = 0;
  }

  *a6 = v29 | v22;
  a6[1] = v26;
  a6[2] = v25;
  a6[3] = v28;
  a6[4] = v27;
  return result;
}

uint64_t sub_22F1854A0()
{
  v1 = 25705;
  v2 = 0x6E6F6974616C6572;
  if (*v0 != 2)
  {
    v2 = 1635018093;
  }

  if (*v0)
  {
    v1 = 0x7475626972747461;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22F185518@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22F19171C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22F185540(uint64_t a1)
{
  v2 = sub_22F18C23C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F18557C(uint64_t a1)
{
  v2 = sub_22F18C23C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSong.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1B90, &qword_22F7732F0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - v5;
  v7 = *v1;
  v28 = v1[1];
  v29 = v7;
  v8 = *(v1 + 14);
  v64 = *(v1 + 13);
  v65 = v8;
  v66 = *(v1 + 15);
  v9 = *(v1 + 10);
  v60 = *(v1 + 9);
  v61 = v9;
  v10 = *(v1 + 12);
  v62 = *(v1 + 11);
  v63 = v10;
  v11 = *(v1 + 6);
  v56 = *(v1 + 5);
  v57 = v11;
  v12 = *(v1 + 8);
  v58 = *(v1 + 7);
  v59 = v12;
  v13 = *(v1 + 2);
  v52 = *(v1 + 1);
  v53 = v13;
  v14 = *(v1 + 4);
  v54 = *(v1 + 3);
  v55 = v14;
  v15 = v1[32];
  v26 = v1[33];
  v27 = v15;
  v16 = v1[34];
  v24 = v1[35];
  v25 = v16;
  v23 = v1[36];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18C23C();
  sub_22F742210();
  LOBYTE(v37) = 0;
  v17 = v6;
  v18 = v67;
  sub_22F741F80();
  if (!v18)
  {
    v19 = v25;
    v20 = v26;
    v21 = v27;
    v49 = v64;
    v50 = v65;
    v51 = v66;
    v45 = v60;
    v46 = v61;
    v47 = v62;
    v48 = v63;
    v41 = v56;
    v42 = v57;
    v43 = v58;
    v44 = v59;
    v37 = v52;
    v38 = v53;
    v39 = v54;
    v40 = v55;
    v36 = 1;
    sub_22F13BA9C(&v52, v35, &qword_27DAB1B88, &qword_22F77C000);
    sub_22F18C290();
    sub_22F741F70();
    v35[12] = v49;
    v35[13] = v50;
    v35[14] = v51;
    v35[8] = v45;
    v35[9] = v46;
    v35[10] = v47;
    v35[11] = v48;
    v35[4] = v41;
    v35[5] = v42;
    v35[6] = v43;
    v35[7] = v44;
    v35[0] = v37;
    v35[1] = v38;
    v35[2] = v39;
    v35[3] = v40;
    sub_22F120ADC(v35, &qword_27DAB1B88, &qword_22F77C000);
    v31 = v21;
    v32 = v20;
    v33 = v19;
    v34 = v24;
    v30 = 2;
    sub_22F18C1D8(v21, v20, v19, v24);
    sub_22F18C2E4();
    sub_22F741F70();
    sub_22F18C338(v31, v32, v33, v34);
    v31 = v23;
    v30 = 3;
    sub_22F1007AC(v23);
    sub_22F18C39C();
    sub_22F741F70();
    sub_22F1007BC(v31);
  }

  return (*(v4 + 8))(v17, v3);
}

uint64_t MusicKitCatalogSong.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1BB0, &qword_22F7732F8);
  MEMORY[0x28223BE20](v78);
  v6 = &v15 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18C23C();
  sub_22F742200();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v21 = a2;
  LOBYTE(v23) = 0;
  v7 = v78;
  v19 = sub_22F741EB0();
  v20 = v8;
  v47 = 1;
  sub_22F18C3F0();
  sub_22F741EA0();
  v75 = v60;
  v76 = v61;
  v77 = v62;
  v71 = v56;
  v72 = v57;
  v73 = v58;
  v74 = v59;
  v67 = v52;
  v68 = v53;
  v69 = v54;
  v70 = v55;
  v63 = v48;
  v64 = v49;
  v65 = v50;
  v66 = v51;
  v22[0] = 2;
  sub_22F18C444();
  sub_22F741EA0();
  v18 = v24;
  v16 = v23;
  v15 = *(&v25 + 1);
  v17 = v25;
  v45 = 3;
  sub_22F18C498();
  sub_22F741EA0();
  MEMORY[8](v6, v7);
  v78 = v46;
  v10 = v19;
  v9 = v20;
  *v22 = v19;
  *&v22[8] = v20;
  *&v22[208] = v75;
  *&v22[224] = v76;
  *&v22[240] = v77;
  *&v22[144] = v71;
  *&v22[160] = v72;
  *&v22[192] = v74;
  *&v22[176] = v73;
  *&v22[80] = v67;
  *&v22[96] = v68;
  *&v22[128] = v70;
  *&v22[112] = v69;
  *&v22[16] = v63;
  *&v22[32] = v64;
  *&v22[64] = v66;
  *&v22[48] = v65;
  v11 = v16;
  v12 = v17;
  *&v22[256] = v16;
  *&v22[264] = v18;
  v13 = v15;
  *&v22[272] = v17;
  *&v22[280] = v15;
  *&v22[288] = v46;
  memcpy(v21, v22, 0x128uLL);
  sub_22F18C4EC(v22, &v23);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v23 = v10;
  v24 = v9;
  v37 = v75;
  v38 = v76;
  v39 = v77;
  v33 = v71;
  v34 = v72;
  v35 = v73;
  v36 = v74;
  v29 = v67;
  v30 = v68;
  v31 = v69;
  v32 = v70;
  v25 = v63;
  v26 = v64;
  v27 = v65;
  v28 = v66;
  v40 = v11;
  v41 = v18;
  v42 = v12;
  v43 = v13;
  v44 = v78;
  return sub_22F18C524(&v23);
}

uint64_t MusicKitCatalogSong.description.getter()
{
  v1 = type metadata accessor for Song(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v9, v0, sizeof(v9));
  memcpy(v8, v0, sizeof(v8));
  sub_22F18C4EC(v9, &v7);
  Song.init(_:)(v8);
  v4 = Song.jsonDescription.getter();
  sub_22F15CBD8(v3);
  return v4;
}

uint64_t sub_22F185F00()
{
  v1 = type metadata accessor for Song(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v9, v0, sizeof(v9));
  memcpy(v8, v0, sizeof(v8));
  sub_22F18C4EC(v9, &v7);
  Song.init(_:)(v8);
  v4 = Song.jsonDescription.getter();
  sub_22F15CBD8(v3);
  return v4;
}

uint64_t _s11PhotosGraph19MusicKitCatalogSongV0cD17TesseractMetadataV0cdG12DailyDetailsV2eeoiySbAG_AGtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v18 = a1[6];
  v19 = a1[7];
  v16 = a1[8];
  v17 = *(a1 + 72);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v9 = *(a2 + 32);
  v8 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v14 = *(a2 + 64);
  v15 = *(a2 + 72);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_22F742040() & 1) == 0)
  {
    return 0;
  }

  v12 = sub_22F17AD98(v2, v7);
  result = 0;
  if ((v12 & 1) != 0 && v4 == v6 && v3 == v9 && v5 == v8)
  {
    if (v18 == v10 && v19 == v11 || (sub_22F742040() & 1) != 0)
    {
      if (sub_22F17ADF4(v16, v14))
      {
        return v17 ^ v15 ^ 1u;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  return result;
}

BOOL _s11PhotosGraph19MusicKitCatalogSongV10AttributesV6UnitagV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 4);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a2 + 16);
  v11 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (v4)
  {
    if (!*(a2 + 4))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v12 = *(a2 + 4);
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!v9 || (v5 != *(a2 + 8) || v6 != v9) && (sub_22F742040() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v8)
  {
    return v10 && (v7 == v11 && v8 == v10 || (sub_22F742040() & 1) != 0);
  }

  return !v10;
}

unint64_t sub_22F1861E0()
{
  result = qword_2810AAD18;
  if (!qword_2810AAD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAD18);
  }

  return result;
}

uint64_t _s11PhotosGraph19MusicKitCatalogSongV10AttributesV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v164 = *(a1 + 32);
  v160 = *(a1 + 48);
  v167 = *(a1 + 56);
  v169 = *(a1 + 40);
  v162 = *(a1 + 64);
  v154 = *(a1 + 72);
  v157 = *(a1 + 80);
  v151 = *(a1 + 88);
  v156 = *(a1 + 96);
  v3 = *(a1 + 104);
  v4 = *(a1 + 108);
  v5 = *(a1 + 120);
  v150 = *(a1 + 112);
  v148 = *(a1 + 128);
  v143 = *(a1 + 136);
  v146 = *(a1 + 144);
  v6 = *(a1 + 152);
  v7 = *(a1 + 156);
  v8 = *(a1 + 200);
  v9 = *(a2 + 24);
  v163 = *(a2 + 32);
  v10 = *(a2 + 104);
  v11 = *(a2 + 152);
  v12 = *(a2 + 40);
  v159 = *(a2 + 48);
  v165 = *(a2 + 56);
  v161 = *(a2 + 64);
  v153 = *(a2 + 72);
  v158 = *(a2 + 80);
  v13 = *(a2 + 88);
  v155 = *(a2 + 96);
  v152 = *(a2 + 108);
  v149 = *(a2 + 112);
  v145 = *(a2 + 120);
  v147 = *(a2 + 128);
  v141 = *(a2 + 136);
  v144 = *(a2 + 144);
  v142 = *(a2 + 156);
  v15 = *(a2 + 160);
  v14 = *(a2 + 168);
  v17 = *(a2 + 176);
  v16 = *(a2 + 184);
  v18 = *(a2 + 192);
  v19 = *(a2 + 200);
  v20 = *(a2 + 208);
  v21 = *(a2 + 216);
  if (v2)
  {
    if (!v9)
    {
      goto LABEL_10;
    }

    v137 = *(a2 + 224);
    v138 = *(a1 + 192);
    if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
    {
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRelease_n();
      return 0;
    }

    v106 = *(a2 + 232);
    v107 = *(a1 + 216);
    v108 = *(a1 + 208);
    v111 = *(a1 + 160);
    v112 = *(a1 + 168);
    v109 = *(a1 + 184);
    v110 = *(a1 + 176);
    v104 = *(a1 + 224);
    v105 = *(a1 + 232);
    if (*(a1 + 16) != *(a2 + 16) || v2 != v9)
    {
      v120 = *(a1 + 200);
      v130 = *(a2 + 168);
      v22 = *(a1 + 108);
      v23 = *(a2 + 88);
      v24 = *(a2 + 216);
      v99 = *(a2 + 192);
      v25 = *(a2 + 208);
      v26 = sub_22F742040();
      v13 = v23;
      v4 = v22;
      v20 = v25;
      v18 = v99;
      v8 = v120;
      v14 = v130;
      v21 = v24;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v137 = *(a2 + 224);
    v138 = *(a1 + 192);
    v106 = *(a2 + 232);
    v107 = *(a1 + 216);
    v108 = *(a1 + 208);
    v111 = *(a1 + 160);
    v112 = *(a1 + 168);
    v109 = *(a1 + 184);
    v110 = *(a1 + 176);
    v104 = *(a1 + 224);
    v105 = *(a1 + 232);
    v27 = *(a1 + 200);
    v28 = *(a2 + 216);
    v121 = *(a1 + 156);
    v139 = *(a2 + 160);
    v131 = *(a2 + 168);
    v132 = *(a1 + 120);
    v29 = *(a2 + 192);
    v30 = *(a2 + 208);
    v31 = *(a1 + 108);
    v32 = *(a2 + 88);

    v13 = v32;
    v4 = v31;
    v14 = v131;
    v5 = v132;
    v20 = v30;
    v18 = v29;
    v15 = v139;
    v7 = v121;
    v21 = v28;
    v8 = v27;
  }

  if (v169)
  {
    if (!v12)
    {
      return 0;
    }

    if (v164 != v163 || v169 != v12)
    {
      v140 = v15;
      v122 = v8;
      v33 = v4;
      v34 = v13;
      v35 = v18;
      v36 = v21;
      v133 = v5;
      v37 = v20;
      v38 = v14;
      v39 = sub_22F742040();
      v18 = v35;
      v13 = v34;
      v14 = v38;
      v4 = v33;
      v15 = v140;
      v20 = v37;
      v5 = v133;
      v21 = v36;
      v8 = v122;
      if ((v39 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v12)
  {
    return 0;
  }

  v41 = v18;
  if (!v167)
  {
    if (!v165)
    {
      v124 = v7;
      v134 = v5;
      v49 = v18;
      v114 = v16;
      v50 = v19;
      v51 = v14;
      v52 = v21;
      v53 = v20;
      v54 = v4;
      v55 = v13;

      v13 = v55;
      v4 = v54;
      v20 = v53;
      v21 = v52;
      v14 = v51;
      v19 = v50;
      v42 = v114;
      v41 = v49;
      v5 = v134;
      v7 = v124;
      goto LABEL_32;
    }

LABEL_10:

    return 0;
  }

  if (!v165)
  {
    goto LABEL_10;
  }

  v42 = v16;
  if (v160 != v159 || v167 != v165)
  {
    v123 = v7;
    v100 = v18;
    v43 = v4;
    v44 = v13;
    v113 = v16;
    v45 = v14;
    v46 = v21;
    v47 = v20;
    v48 = sub_22F742040();
    v13 = v44;
    v4 = v43;
    v20 = v47;
    v21 = v46;
    v14 = v45;
    v42 = v113;
    v41 = v100;
    v7 = v123;
    if ((v48 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_32:
  if (v162)
  {
    if (!v161)
    {
      return 0;
    }

    v125 = v7;
    v135 = v5;
    v56 = v41;
    v115 = v42;
    v57 = v19;
    v58 = v14;
    v59 = v21;
    v60 = v20;
    v61 = v4;
    v62 = v13;
    v63 = sub_22F17ADF4(v162, v161);
    v13 = v62;
    v4 = v61;
    v20 = v60;
    v21 = v59;
    v14 = v58;
    v19 = v57;
    v42 = v115;
    v41 = v56;
    v5 = v135;
    v7 = v125;
    if ((v63 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v161)
  {
    return 0;
  }

  v64 = v41;
  if (v157)
  {
    if (!v158)
    {
      return 0;
    }

    if (v154 != v153 || v157 != v158)
    {
      v126 = v7;
      v101 = v41;
      v65 = v4;
      v66 = v13;
      v116 = v42;
      v67 = v14;
      v68 = v21;
      v69 = v20;
      v70 = sub_22F742040();
      v13 = v66;
      v4 = v65;
      v20 = v69;
      v21 = v68;
      v14 = v67;
      v42 = v116;
      v64 = v101;
      v7 = v126;
      if ((v70 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v158)
  {
    return 0;
  }

  if (v156)
  {
    if (!v155)
    {
      return 0;
    }

    if (v151 != v13 || v156 != v155)
    {
      v127 = v7;
      v102 = v64;
      v71 = v4;
      v117 = v42;
      v72 = v14;
      v73 = v21;
      v74 = v20;
      v75 = sub_22F742040();
      v4 = v71;
      v20 = v74;
      v21 = v73;
      v14 = v72;
      v42 = v117;
      v64 = v102;
      v7 = v127;
      if ((v75 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v155)
  {
    return 0;
  }

  if (v4)
  {
    v76 = v8;
    if (!v152)
    {
      return 0;
    }
  }

  else
  {
    v77 = v152;
    if (v3 != v10)
    {
      v77 = 1;
    }

    v76 = v8;
    if (v77)
    {
      return 0;
    }
  }

  if (v150)
  {
    if (!v149)
    {
      return 0;
    }

    v128 = v7;
    v136 = v5;
    v78 = v64;
    v79 = v76;
    v118 = v42;
    v80 = v14;
    v81 = v21;
    v82 = v20;
    v83 = sub_22F17AE84(v150, v149);
    v20 = v82;
    v21 = v81;
    v14 = v80;
    v42 = v118;
    v76 = v79;
    v64 = v78;
    v5 = v136;
    v7 = v128;
    if ((v83 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v149)
  {
    return 0;
  }

  v84 = v64;
  if (v148)
  {
    if (!v147)
    {
      return 0;
    }

    if (v5 != v145 || v148 != v147)
    {
      v129 = v7;
      v103 = v64;
      v85 = v76;
      v119 = v42;
      v86 = v14;
      v87 = v21;
      v88 = v20;
      v89 = sub_22F742040();
      v20 = v88;
      v21 = v87;
      v14 = v86;
      v42 = v119;
      v76 = v85;
      v84 = v103;
      v7 = v129;
      if ((v89 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v147)
  {
    return 0;
  }

  if (v146)
  {
    if (!v144)
    {
      return 0;
    }

    v90 = v17;
    v91 = v42;
    v92 = v19;
    v170 = v20;
    v168 = v21;
    v93 = v76;
    if (v143 != v141 || v146 != v144)
    {
      v94 = v14;
      v95 = sub_22F742040();
      v14 = v94;
      if ((v95 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v92 = v19;
    v90 = v17;
    v91 = v42;
    v170 = v20;
    v168 = v21;
    v93 = v76;
    if (v144)
    {
      return 0;
    }
  }

  v96 = v14;
  if (v7)
  {
    if (!v142)
    {
      return 0;
    }
  }

  else
  {
    v97 = v142;
    if (v6 != v11)
    {
      v97 = 1;
    }

    if (v97)
    {
      return 0;
    }
  }

  if (!v112)
  {
    sub_22F187018(v111, 0, v110, v109);
    if (!v96)
    {
      sub_22F187018(v15, 0, v90, v91);
      v98 = 0;
      goto LABEL_97;
    }

    sub_22F187018(v15, v96, v90, v91);
LABEL_93:
    sub_22F1870B0(v111, v112, v110, v109);
    sub_22F1870B0(v15, v96, v90, v91);
    return 0;
  }

  if (!v14)
  {
    sub_22F187018(v111, v112, v110, v109);
    sub_22F187018(v15, 0, v90, v91);
    sub_22F187018(v111, v112, v110, v109);

    goto LABEL_93;
  }

  if ((v111 != v15 || v112 != v14) && (sub_22F742040() & 1) == 0)
  {
    sub_22F187018(v111, v112, v110, v109);
    sub_22F187018(v15, v96, v90, v91);
    sub_22F187018(v111, v112, v110, v109);
    sub_22F1870B0(v15, v96, v90, v91);

    sub_22F1870B0(v111, v112, v110, v109);
    return 0;
  }

  if (v110 == v90 && v109 == v91)
  {
    sub_22F187018(v111, v112, v110, v109);
    sub_22F187018(v15, v96, v110, v109);
    sub_22F187018(v111, v112, v110, v109);
    sub_22F1870B0(v15, v96, v110, v109);

    v98 = v112;

LABEL_97:
    sub_22F1870B0(v111, v98, v110, v109);
    goto LABEL_98;
  }

  v166 = sub_22F742040();
  sub_22F187018(v111, v112, v110, v109);
  sub_22F187018(v15, v96, v90, v91);
  sub_22F187018(v111, v112, v110, v109);
  sub_22F1870B0(v15, v96, v90, v91);

  sub_22F1870B0(v111, v112, v110, v109);
  if ((v166 & 1) == 0)
  {
    return 0;
  }

LABEL_98:
  if (v93)
  {
    if (!v92 || (v138 != v84 || v93 != v92) && (sub_22F742040() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v92)
  {
    return 0;
  }

  if (v108 == 2)
  {
    if (v170 != 2)
    {
      return 0;
    }

    goto LABEL_111;
  }

  result = 0;
  if (v170 != 2 && ((v170 ^ v108) & 1) == 0)
  {
LABEL_111:
    if (v107)
    {
      if (!v168 || (sub_22F17ADF4(v107, v168) & 1) == 0)
      {
        return 0;
      }
    }

    else if (v168)
    {
      return 0;
    }

    if (v105)
    {
      if (v106 && (v104 == v137 && v105 == v106 || (sub_22F742040() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v106)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t sub_22F186DC0()
{
  result = qword_2810AAD50;
  if (!qword_2810AAD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAD50);
  }

  return result;
}

unint64_t sub_22F186E14()
{
  result = qword_27DAB1798;
  if (!qword_27DAB1798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1798);
  }

  return result;
}

unint64_t sub_22F186E68()
{
  result = qword_27DAB17A0;
  if (!qword_27DAB17A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB17A0);
  }

  return result;
}

unint64_t sub_22F186EBC()
{
  result = qword_27DAB17B0;
  if (!qword_27DAB17B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB17A8, &qword_22F7730B8);
    sub_22F186E68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB17B0);
  }

  return result;
}

unint64_t sub_22F186F40()
{
  result = qword_27DAB17C0;
  if (!qword_27DAB17C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB17B8, &unk_22F7730C0);
    sub_22F186FC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB17C0);
  }

  return result;
}

unint64_t sub_22F186FC4()
{
  result = qword_27DAB17C8;
  if (!qword_27DAB17C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB17C8);
  }

  return result;
}

double sub_22F187018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_22F18705C()
{
  result = qword_27DAB17D0;
  if (!qword_27DAB17D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB17D0);
  }

  return result;
}

void sub_22F1870B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

unint64_t sub_22F1870F4()
{
  result = qword_2810A92E8;
  if (!qword_2810A92E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB0E90, &qword_22F7714A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A92E8);
  }

  return result;
}

unint64_t sub_22F187170()
{
  result = qword_2810AACE0;
  if (!qword_2810AACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AACE0);
  }

  return result;
}

unint64_t sub_22F1871C4()
{
  result = qword_2810AACC0;
  if (!qword_2810AACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AACC0);
  }

  return result;
}

unint64_t sub_22F187218()
{
  result = qword_2810A9348;
  if (!qword_2810A9348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB17A8, &qword_22F7730B8);
    sub_22F1871C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9348);
  }

  return result;
}

unint64_t sub_22F18729C()
{
  result = qword_2810A9350;
  if (!qword_2810A9350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB17B8, &unk_22F7730C0);
    sub_22F187320();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9350);
  }

  return result;
}

unint64_t sub_22F187320()
{
  result = qword_2810AAD00;
  if (!qword_2810AAD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAD00);
  }

  return result;
}

unint64_t sub_22F187374()
{
  result = qword_2810AAD20;
  if (!qword_2810AAD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAD20);
  }

  return result;
}

unint64_t sub_22F1873C8()
{
  result = qword_2810A92D8;
  if (!qword_2810A92D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB0E90, &qword_22F7714A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A92D8);
  }

  return result;
}

unint64_t sub_22F1874AC()
{
  result = qword_27DAB17E8;
  if (!qword_27DAB17E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB17E8);
  }

  return result;
}

unint64_t sub_22F187500()
{
  result = qword_27DAB17F8;
  if (!qword_27DAB17F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB17F0, &qword_22F7730E0);
    sub_22F187584();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB17F8);
  }

  return result;
}

unint64_t sub_22F187584()
{
  result = qword_27DAB1800;
  if (!qword_27DAB1800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1800);
  }

  return result;
}

unint64_t sub_22F1875D8()
{
  result = qword_27DAB1810;
  if (!qword_27DAB1810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB17F0, &qword_22F7730E0);
    sub_22F18765C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1810);
  }

  return result;
}

unint64_t sub_22F18765C()
{
  result = qword_27DAB1818;
  if (!qword_27DAB1818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1818);
  }

  return result;
}

unint64_t sub_22F1876B0()
{
  result = qword_27DAB1828;
  if (!qword_27DAB1828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1828);
  }

  return result;
}

BOOL _s11PhotosGraph19MusicKitCatalogSongV13RelationshipsV25AudioAnalysisRelationshipV0hI4DataV0hI10AttributesV0hI3BPMV2eeoiySbAM_AMtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 44);
  v7 = *(a1 + 48);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v8 = *(a2 + 8);
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  if (v3)
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (v2 == *(a2 + 16))
    {
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  if (v5)
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (v4 == *(a2 + 32))
    {
      v10 = *(a2 + 40);
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  if ((v7 & 1) == 0)
  {
    if (v6 == *(a2 + 44))
    {
      v12 = *(a2 + 48);
    }

    else
    {
      v12 = 1;
    }

    return (v12 & 1) == 0;
  }

  return (*(a2 + 48) & 1) != 0;
}

uint64_t _s11PhotosGraph19MusicKitCatalogSongV13RelationshipsV25AudioAnalysisRelationshipV0hI4DataV0hI10AttributesV0hI3KeyV0himL0V2eeoiySbAO_AOtFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_22F742040() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8 && (v4 == v7 && v5 == v8 || (sub_22F742040() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

BOOL _s11PhotosGraph19MusicKitCatalogSongV13RelationshipsV25AudioAnalysisRelationshipV0hI4DataV0hI10AttributesV0hI3KeyV2eeoiySbAM_AMtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v46 = a1[5];
  v47 = a1[4];
  v48 = a1[6];
  v49 = a1[7];
  v6 = a1[8];
  v7 = a1[9];
  v8 = a1[10];
  v9 = a1[11];
  v10 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v12 = a2[3];
  v42 = a2[5];
  v43 = a2[4];
  v44 = a2[6];
  v45 = a2[7];
  v14 = a2[8];
  v15 = a2[9];
  v17 = a2[10];
  v16 = a2[11];
  if (v3 == 1)
  {
    v36 = a2[9];
    v37 = a2[8];
    v38 = a2[10];
    v39 = a2[11];
    v40 = a1[9];
    v41 = a1[8];
    sub_22F189DE8(v2, 1, v4, v5);
    if (v11 == 1)
    {
      v35 = v8;
      sub_22F189DE8(v10, 1, v13, v12);
      sub_22F189ED8(v2, 1, v4, v5);
      goto LABEL_9;
    }

    sub_22F189DE8(v10, v11, v13, v12);
LABEL_7:
    v55 = v2;
    v56 = v3;
    v57 = v4;
    v58 = v5;
    v59 = v10;
    v60 = v11;
    v61 = v13;
    v62 = v12;
LABEL_24:
    sub_22F120ADC(&v55, &qword_27DAB1D88, &qword_22F777148);
    return 0;
  }

  v55 = *a1;
  v56 = v3;
  v57 = v4;
  v58 = v5;
  if (v11 == 1)
  {
    sub_22F189DE8(v2, v3, v4, v5);
    sub_22F189DE8(v10, 1, v13, v12);
    sub_22F189DE8(v2, v3, v4, v5);

    goto LABEL_7;
  }

  v36 = v15;
  v37 = v14;
  v38 = v17;
  v39 = v16;
  v40 = v7;
  v41 = v6;
  v35 = v8;
  v51 = v10;
  v52 = v11;
  v53 = v13;
  v54 = v12;
  v33 = _s11PhotosGraph19MusicKitCatalogSongV13RelationshipsV25AudioAnalysisRelationshipV0hI4DataV0hI10AttributesV0hI3KeyV0himL0V2eeoiySbAO_AOtFZ_0(&v55, &v51);
  sub_22F189DE8(v2, v3, v4, v5);
  sub_22F189DE8(v10, v11, v13, v12);
  sub_22F189DE8(v2, v3, v4, v5);

  sub_22F189ED8(v2, v3, v4, v5);
  if ((v33 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  if (v46 == 1)
  {
    v19 = v47;
    v18 = v48;
    v20 = v49;
    sub_22F189DE8(v47, 1, v48, v49);
    v21 = v42;
    if (v42 == 1)
    {
      sub_22F189DE8(v43, 1, v44, v45);
      sub_22F189ED8(v47, 1, v48, v49);
      goto LABEL_17;
    }

    v23 = v43;
    v22 = v44;
    v24 = v45;
    sub_22F189DE8(v43, v42, v44, v45);
    goto LABEL_15;
  }

  v19 = v47;
  v18 = v48;
  v55 = v47;
  v56 = v46;
  v20 = v49;
  v57 = v48;
  v58 = v49;
  v21 = v42;
  if (v42 == 1)
  {
    sub_22F189DE8(v47, v46, v48, v49);
    v23 = v43;
    v22 = v44;
    v24 = v45;
    sub_22F189DE8(v43, 1, v44, v45);
    sub_22F189DE8(v47, v46, v48, v49);

LABEL_15:
    v55 = v19;
    v56 = v46;
    v57 = v18;
    v58 = v20;
    v59 = v23;
    v60 = v21;
    v61 = v22;
    v62 = v24;
    goto LABEL_24;
  }

  v51 = v43;
  v52 = v42;
  v53 = v44;
  v54 = v45;
  v34 = _s11PhotosGraph19MusicKitCatalogSongV13RelationshipsV25AudioAnalysisRelationshipV0hI4DataV0hI10AttributesV0hI3KeyV0himL0V2eeoiySbAO_AOtFZ_0(&v55, &v51);
  sub_22F189DE8(v47, v46, v48, v49);
  sub_22F189DE8(v43, v42, v44, v45);
  sub_22F189DE8(v47, v46, v48, v49);

  sub_22F189ED8(v47, v46, v48, v49);
  if ((v34 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  if (v40 != 1)
  {
    v55 = v41;
    v56 = v40;
    v26 = v35;
    v57 = v35;
    v58 = v9;
    if (v36 != 1)
    {
      v51 = v37;
      v52 = v36;
      v53 = v38;
      v54 = v39;
      v50 = _s11PhotosGraph19MusicKitCatalogSongV13RelationshipsV25AudioAnalysisRelationshipV0hI4DataV0hI10AttributesV0hI3KeyV0himL0V2eeoiySbAO_AOtFZ_0(&v55, &v51);
      sub_22F189DE8(v41, v40, v35, v9);
      sub_22F189DE8(v37, v36, v38, v39);
      sub_22F189DE8(v41, v40, v35, v9);

      sub_22F189ED8(v41, v40, v35, v9);
      return (v50 & 1) != 0;
    }

    v25 = v41;
    v28 = 1;
    sub_22F189DE8(v41, v40, v35, v9);
    v30 = v37;
    v29 = v38;
    v31 = v39;
    sub_22F189DE8(v37, 1, v38, v39);
    sub_22F189DE8(v41, v40, v35, v9);

    goto LABEL_23;
  }

  v25 = v41;
  v26 = v35;
  sub_22F189DE8(v41, 1, v35, v9);
  if (v36 != 1)
  {
    v30 = v37;
    v29 = v38;
    v31 = v39;
    v28 = v36;
    sub_22F189DE8(v37, v36, v38, v39);
LABEL_23:
    v55 = v25;
    v56 = v40;
    v57 = v26;
    v58 = v9;
    v59 = v30;
    v60 = v28;
    v61 = v29;
    v62 = v31;
    goto LABEL_24;
  }

  v27 = 1;
  sub_22F189DE8(v37, 1, v38, v39);
  sub_22F189ED8(v41, 1, v35, v9);
  return v27;
}