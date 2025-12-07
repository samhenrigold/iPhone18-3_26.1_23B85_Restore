id BridgedCollectionIDData.__allocating_init(collectionID:collectionMemberCount:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR___BACollectionIDData_collectionID];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v7[OBJC_IVAR___BACollectionIDData_collectionMemberCount] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, "init");
}

id BridgedCollectionIDData.init(collectionID:collectionMemberCount:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = &v3[OBJC_IVAR___BACollectionIDData_collectionID];
  *v4 = a1;
  *(v4 + 1) = a2;
  *&v3[OBJC_IVAR___BACollectionIDData_collectionMemberCount] = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for BridgedCollectionIDData();
  return objc_msgSendSuper2(&v6, "init");
}

id sub_A37B4(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[*a2] = a1;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, "init");
}

id sub_A382C(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  *&v3[*a2] = a1;
  v5.receiver = v3;
  v5.super_class = a3();
  return objc_msgSendSuper2(&v5, "init");
}

void sub_A38CC(unint64_t a1@<X8>, uint64_t a2@<X3>, int64_t a3@<X4>, void *a4@<X5>, uint64_t a5@<X6>, void *a6@<X7>)
{
  v8 = *(v6 + OBJC_IVAR___BACollectionSummaryData_collectionSummary);
  if (v8 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)); ; i = sub_1E1B20())
  {
    if (!i)
    {
LABEL_22:
      *a1 = _swiftEmptyArrayStorage;
      return;
    }

    sub_A7F20(0, i & ~(i >> 63), 0, a2, a3, a4, a5, a6);
    if (i < 0)
    {
      break;
    }

    v38 = a1;
    if ((v8 & 0xC000000000000001) != 0)
    {
      v10 = 0;
      while (1)
      {
        v11 = sub_1E1AE0();
        v12 = *(v11 + OBJC_IVAR___BACollectionIDData_collectionMemberCount);
        if (v12 < 0)
        {
          break;
        }

        v14 = *(v11 + OBJC_IVAR___BACollectionIDData_collectionID);
        v13 = *(v11 + OBJC_IVAR___BACollectionIDData_collectionID + 8);
        v15 = BARoundIntegerToSignificantFigures(v12, 2);
        if (v15 < 0xFFFFFFFF80000000)
        {
          goto LABEL_24;
        }

        v16 = v15;
        if (v15 > 0x7FFFFFFF)
        {
          goto LABEL_25;
        }

        swift_unknownObjectRelease();
        a1 = _swiftEmptyArrayStorage[2];
        v22 = _swiftEmptyArrayStorage[3];
        if (a1 >= v22 >> 1)
        {
          sub_A7F20((v22 > 1), a1 + 1, 1, v17, v18, v19, v20, v21);
        }

        ++v10;
        _swiftEmptyArrayStorage[2] = a1 + 1;
        v23 = &_swiftEmptyArrayStorage[3 * a1];
        v23[4] = v14;
        v23[5] = v13;
        *(v23 + 12) = v16;
        if (i == v10)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
    }

    else
    {
      v24 = (v8 + 32);
      while (1)
      {
        v25 = *v24;
        v26 = *(*v24 + OBJC_IVAR___BACollectionIDData_collectionMemberCount);
        if (v26 < 0)
        {
          break;
        }

        a1 = *&v25[OBJC_IVAR___BACollectionIDData_collectionID];
        v8 = *&v25[OBJC_IVAR___BACollectionIDData_collectionID + 8];
        v27 = v25;
        v28 = BARoundIntegerToSignificantFigures(v26, 2);
        if (v28 < 0xFFFFFFFF80000000)
        {
          goto LABEL_27;
        }

        v29 = v28;
        if (v28 > 0x7FFFFFFF)
        {
          goto LABEL_28;
        }

        v36 = _swiftEmptyArrayStorage[2];
        v35 = _swiftEmptyArrayStorage[3];
        if (v36 >= v35 >> 1)
        {
          sub_A7F20((v35 > 1), v36 + 1, 1, v30, v31, v32, v33, v34);
        }

        _swiftEmptyArrayStorage[2] = v36 + 1;
        v37 = &_swiftEmptyArrayStorage[3 * v36];
        v37[4] = a1;
        v37[5] = v8;
        *(v37 + 12) = v29;
        ++v24;
        if (!--i)
        {
LABEL_21:
          a1 = v38;
          goto LABEL_22;
        }
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }

  __break(1u);
}

id BridgedContentData.__allocating_init(contentID:contentType:contentPrivateID:contentUserID:contentAcquisitionType:contentSubType:contentLength:supplementalContentCount:seriesType:productionType:isUnified:contentKind:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16)
{
  v17 = v16;
  v37 = v17;
  v23 = objc_allocWithZone(v17);
  v24 = &v23[OBJC_IVAR___BAContentData_contentID];
  *v24 = a1;
  v24[1] = a2;
  *&v23[OBJC_IVAR___BAContentData_contentType] = a3;
  v25 = &v23[OBJC_IVAR___BAContentData_contentPrivateID];
  *v25 = a4;
  v25[1] = a5;
  v26 = &v23[OBJC_IVAR___BAContentData_contentUserID];
  *v26 = a6;
  v26[1] = a7;
  *&v23[OBJC_IVAR___BAContentData_contentAcquisitionType] = a8;
  *&v23[OBJC_IVAR___BAContentData_contentSubType] = a9;
  *&v23[OBJC_IVAR___BAContentData_contentLength] = a10;
  *&v23[OBJC_IVAR___BAContentData_supplementalContentCount] = a11;
  *&v23[OBJC_IVAR___BAContentData_seriesType] = a12;
  *&v23[OBJC_IVAR___BAContentData_productionType] = a13;
  if (a14)
  {
    v27 = a11;
    v28 = a9;
    v29 = a10;
    v30 = [a14 BOOLValue];
  }

  else
  {
    v28 = a9;
    v29 = a10;
    v27 = a11;
    v30 = 2;
  }

  v23[OBJC_IVAR___BAContentData_isUnified] = v30;
  v23[OBJC_IVAR___BAContentData_isAccoladedContent] = 2;
  v31 = &v23[OBJC_IVAR___BAContentData_contentKind];
  *v31 = a15;
  v31[1] = a16;
  v38.receiver = v23;
  v38.super_class = v37;
  v32 = objc_msgSendSuper2(&v38, "init", a12, a6, a13, a7, a8);

  return v32;
}

id BridgedContentData.init(contentID:contentType:contentPrivateID:contentUserID:contentAcquisitionType:contentSubType:contentLength:supplementalContentCount:seriesType:productionType:isUnified:contentKind:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16)
{
  v16 = sub_A8474(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);

  return v16;
}

uint64_t sub_A3F08@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___BAContentData_contentType);
  if (v3 >= 7)
  {

    goto LABEL_26;
  }

  v4 = *(v1 + OBJC_IVAR___BAContentData_contentPrivateID);
  v5 = *(v1 + OBJC_IVAR___BAContentData_contentPrivateID + 8);
  v6 = *(v1 + OBJC_IVAR___BAContentData_contentUserID + 8);
  v7 = *(v1 + OBJC_IVAR___BAContentData_contentAcquisitionType);
  v27 = *(v1 + OBJC_IVAR___BAContentData_contentID);
  if (!v7)
  {
    v25 = 0;
    v8 = *(v1 + OBJC_IVAR___BAContentData_contentSubType);
    if (v8)
    {
      goto LABEL_5;
    }

    goto LABEL_7;
  }

  if (v7 != 2)
  {
    if (v7 == 1)
    {
      v8 = *(v1 + OBJC_IVAR___BAContentData_contentSubType);
      v25 = 1;
      if (v8)
      {
        goto LABEL_5;
      }

      goto LABEL_7;
    }

LABEL_26:
    result = sub_1E1D50();
    __break(1u);
    return result;
  }

  v8 = *(v1 + OBJC_IVAR___BAContentData_contentSubType);
  v25 = 2;
  if (v8)
  {
LABEL_5:
    v9 = *(v8 + OBJC_IVAR___BAContentSubType_subTypeEnum);
    goto LABEL_8;
  }

LABEL_7:
  v9 = 4;
LABEL_8:
  v24 = v9;
  v26 = *(v1 + OBJC_IVAR___BAContentData_contentUserID);
  v10 = *(v1 + OBJC_IVAR___BAContentData_contentLength);
  v11 = *(v1 + OBJC_IVAR___BAContentData_contentID + 8);

  v12 = v5;

  v13 = v6;

  if (v10)
  {
    v14 = [v10 intValue];
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v1 + OBJC_IVAR___BAContentData_supplementalContentCount);
  if (v15)
  {
    v16 = [*(v1 + OBJC_IVAR___BAContentData_supplementalContentCount) intValue];
  }

  else
  {
    v16 = 0;
  }

  v17 = *(v1 + OBJC_IVAR___BAContentData_seriesType);
  if (v17 >= 4)
  {
    goto LABEL_26;
  }

  v18 = *(v1 + OBJC_IVAR___BAContentData_productionType);
  if (v18 >= 3)
  {
    goto LABEL_26;
  }

  v19 = *(v1 + OBJC_IVAR___BAContentData_isUnified);
  v20 = 8 * v17;
  v22 = *(v1 + OBJC_IVAR___BAContentData_contentKind);
  v21 = *(v1 + OBJC_IVAR___BAContentData_contentKind + 8);
  *a1 = v27;
  *(a1 + 8) = v11;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v12;
  *(a1 + 40) = v26;
  *(a1 + 48) = v13;
  *(a1 + 56) = v25;
  *(a1 + 57) = v24;
  *(a1 + 60) = v14;
  *(a1 + 64) = v10 == 0;
  *(a1 + 68) = v16;
  *(a1 + 72) = v15 == 0;
  *(a1 + 73) = 0x2010004u >> v20;
  *(a1 + 74) = v18;
  *(a1 + 75) = 3;
  *(a1 + 76) = v19;
  *(a1 + 77) = 2;
  *(a1 + 80) = v22;
  *(a1 + 88) = v21;
}

uint64_t sub_A43E4@<X0>(_DWORD *a1@<X8>)
{
  v3 = [*(v1 + OBJC_IVAR___BAContentSettingsData_bookmarkCount) integerValue];
  v4 = [*(v1 + OBJC_IVAR___BAContentSettingsData_noteCount) integerValue];
  v5 = [*(v1 + OBJC_IVAR___BAContentSettingsData_highlightCount) integerValue];
  result = BARoundIntegerToSignificantFigures(v3, 2);
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = result;
  if (result > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = BARoundIntegerToSignificantFigures(v4, 2);
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = result;
  if (result > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = BARoundIntegerToSignificantFigures(v5, 2);
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (result <= 0x7FFFFFFF)
  {
    *a1 = v7;
    a1[1] = v8;
    a1[2] = result;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

id sub_A4600(uint64_t a1, uint64_t a2, char a3)
{
  v4 = type metadata accessor for BridgedContentSubType();
  v5 = objc_allocWithZone(v4);
  v5[OBJC_IVAR___BAContentSubType_subTypeEnum] = a3;
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, "init");

  return v6;
}

id sub_A466C(char a1)
{
  v2 = type metadata accessor for BridgedContentSubType();
  v3 = objc_allocWithZone(v2);
  v3[OBJC_IVAR___BAContentSubType_subTypeEnum] = a1;
  v5.receiver = v3;
  v5.super_class = v2;
  return objc_msgSendSuper2(&v5, "init");
}

unint64_t BridgedDeviceOrientation.swiftType.getter@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result >= 3)
  {
    result = sub_1E1D50();
    __break(1u);
  }

  else
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_A47E0@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BADoNotDisturbData_startStatus);
  if (v2 >= 3 || (v3 = *(v1 + OBJC_IVAR___BADoNotDisturbData_endStatus), v3 >= 3))
  {
    result = sub_1E1D50();
    __break(1u);
  }

  else
  {
    *a1 = v2;
    a1[1] = v3;
  }

  return result;
}

unint64_t sub_A48D0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_A8650(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t BridgedGoalType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t BridgedLaunchType.swiftType.getter@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result >= 3)
  {
    result = sub_1E1D50();
    __break(1u);
  }

  else
  {
    *a2 = result;
  }

  return result;
}

id BridgedLibraryItemTypeData.__allocating_init(contentPrivateID:contentUserID:contentType:contentID:isSample:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = objc_allocWithZone(v8);
  v18 = &v17[OBJC_IVAR___BALibraryItemTypeData_contentPrivateID];
  *v18 = a1;
  *(v18 + 1) = a2;
  v19 = &v17[OBJC_IVAR___BALibraryItemTypeData_contentUserID];
  *v19 = a3;
  *(v19 + 1) = a4;
  *&v17[OBJC_IVAR___BALibraryItemTypeData_contentType] = a5;
  v20 = &v17[OBJC_IVAR___BALibraryItemTypeData_contentID];
  *v20 = a6;
  *(v20 + 1) = a7;
  *&v17[OBJC_IVAR___BALibraryItemTypeData_isSample] = a8;
  v22.receiver = v17;
  v22.super_class = v8;
  return objc_msgSendSuper2(&v22, "init");
}

id BridgedLibraryItemTypeData.init(contentPrivateID:contentUserID:contentType:contentID:isSample:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = &v8[OBJC_IVAR___BALibraryItemTypeData_contentPrivateID];
  *v9 = a1;
  *(v9 + 1) = a2;
  v10 = &v8[OBJC_IVAR___BALibraryItemTypeData_contentUserID];
  *v10 = a3;
  *(v10 + 1) = a4;
  *&v8[OBJC_IVAR___BALibraryItemTypeData_contentType] = a5;
  v11 = &v8[OBJC_IVAR___BALibraryItemTypeData_contentID];
  *v11 = a6;
  *(v11 + 1) = a7;
  *&v8[OBJC_IVAR___BALibraryItemTypeData_isSample] = a8;
  v13.receiver = v8;
  v13.super_class = type metadata accessor for BridgedLibraryItemTypeData();
  return objc_msgSendSuper2(&v13, "init");
}

unint64_t sub_A4C88@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_A8684(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id BridgedLinkData.__allocating_init(previousSectionID:previousSectionName:previousContentID:linkActionType:previousSeriesID:previousGenreID:previousCollectionID:previousAuthorID:previousFlowcaseID:previousBrickID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v27 = objc_allocWithZone(v19);
  v28 = &v27[OBJC_IVAR___BALinkData_previousSectionID];
  *v28 = a1;
  *(v28 + 1) = a2;
  v29 = &v27[OBJC_IVAR___BALinkData_previousSectionName];
  *v29 = a3;
  *(v29 + 1) = a4;
  v30 = &v27[OBJC_IVAR___BALinkData_previousContentID];
  *v30 = a5;
  *(v30 + 1) = a6;
  *&v27[OBJC_IVAR___BALinkData_linkActionType] = a7;
  v31 = &v27[OBJC_IVAR___BALinkData_previousSeriesID];
  *v31 = a8;
  *(v31 + 1) = a9;
  v32 = &v27[OBJC_IVAR___BALinkData_previousGenreID];
  *v32 = a10;
  *(v32 + 1) = a11;
  v33 = &v27[OBJC_IVAR___BALinkData_previousCollectionID];
  *v33 = a12;
  *(v33 + 1) = a13;
  v34 = &v27[OBJC_IVAR___BALinkData_previousAuthorID];
  *v34 = a14;
  *(v34 + 1) = a15;
  v35 = &v27[OBJC_IVAR___BALinkData_previousFlowcaseID];
  *v35 = a16;
  *(v35 + 1) = a17;
  v36 = &v27[OBJC_IVAR___BALinkData_previousBrickID];
  *v36 = a18;
  *(v36 + 1) = a19;
  v40.receiver = v27;
  v40.super_class = v39;
  return objc_msgSendSuper2(&v40, "init");
}

id BridgedLinkData.init(previousSectionID:previousSectionName:previousContentID:linkActionType:previousSeriesID:previousGenreID:previousCollectionID:previousAuthorID:previousFlowcaseID:previousBrickID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v20 = &v19[OBJC_IVAR___BALinkData_previousSectionID];
  *v20 = a1;
  *(v20 + 1) = a2;
  v21 = &v19[OBJC_IVAR___BALinkData_previousSectionName];
  *v21 = a3;
  *(v21 + 1) = a4;
  v22 = &v19[OBJC_IVAR___BALinkData_previousContentID];
  *v22 = a5;
  *(v22 + 1) = a6;
  *&v19[OBJC_IVAR___BALinkData_linkActionType] = a7;
  v23 = &v19[OBJC_IVAR___BALinkData_previousSeriesID];
  *v23 = a8;
  *(v23 + 1) = a9;
  v24 = &v19[OBJC_IVAR___BALinkData_previousGenreID];
  *v24 = a10;
  *(v24 + 1) = a11;
  v25 = &v19[OBJC_IVAR___BALinkData_previousCollectionID];
  *v25 = a12;
  *(v25 + 1) = a13;
  v26 = &v19[OBJC_IVAR___BALinkData_previousAuthorID];
  *v26 = a14;
  *(v26 + 1) = a15;
  v27 = &v19[OBJC_IVAR___BALinkData_previousFlowcaseID];
  *v27 = a16;
  *(v27 + 1) = a17;
  v28 = &v19[OBJC_IVAR___BALinkData_previousBrickID];
  *v28 = a18;
  *(v28 + 1) = a19;
  v30.receiver = v19;
  v30.super_class = type metadata accessor for BridgedLinkData();
  return objc_msgSendSuper2(&v30, "init");
}

uint64_t sub_A5108@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BALinkData_previousSectionName);
  v3 = *(v1 + OBJC_IVAR___BALinkData_previousContentID);
  v4 = *(v1 + OBJC_IVAR___BALinkData_previousSectionID + 8);
  v5 = *(v1 + OBJC_IVAR___BALinkData_linkActionType);
  if (v5 >= 6)
  {

    result = sub_1E1D50();
    __break(1u);
  }

  else
  {
    v6 = *(v1 + OBJC_IVAR___BALinkData_previousSeriesID);
    v7 = *(v1 + OBJC_IVAR___BALinkData_previousGenreID);
    v8 = *(v1 + OBJC_IVAR___BALinkData_previousCollectionID);
    v9 = *(v1 + OBJC_IVAR___BALinkData_previousAuthorID);
    v10 = *(v1 + OBJC_IVAR___BALinkData_previousFlowcaseID);
    v11 = *(v1 + OBJC_IVAR___BALinkData_previousBrickID);
    *a1 = *(v1 + OBJC_IVAR___BALinkData_previousSectionID);
    *(a1 + 8) = v4;
    *(a1 + 16) = v2;
    *(a1 + 32) = v3;
    *(a1 + 48) = v5;
    *(a1 + 72) = v7;
    *(a1 + 56) = v6;
    *(a1 + 104) = v9;
    *(a1 + 88) = v8;
    *(a1 + 136) = v11;
    *(a1 + 120) = v10;
  }

  return result;
}

id BridgedMarkedData.__allocating_init(isFinishedDateSet:)(char a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR___BAMarkedData_isFinishedDateSet] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, "init");
}

id BridgedMarkedData.init(isFinishedDateSet:)(char a1)
{
  v1[OBJC_IVAR___BAMarkedData_isFinishedDateSet] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BridgedMarkedData();
  return objc_msgSendSuper2(&v3, "init");
}

id BridgedNotificationData.__allocating_init(notificationContentID:notificationID:notificationType:recoType:goalType:titleCode:title:messageCode:message:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v22 = objc_allocWithZone(v14);
  *&v22[OBJC_IVAR___BANotificationData_notificationContentID] = a1;
  v23 = &v22[OBJC_IVAR___BANotificationData_notificationID];
  *v23 = a2;
  *(v23 + 1) = a3;
  *&v22[OBJC_IVAR___BANotificationData_notificationType] = a4;
  *&v22[OBJC_IVAR___BANotificationData_recoType] = a5;
  *&v22[OBJC_IVAR___BANotificationData_goalType] = a6;
  v24 = &v22[OBJC_IVAR___BANotificationData_titleCode];
  *v24 = a7;
  *(v24 + 1) = a8;
  v25 = &v22[OBJC_IVAR___BANotificationData_title];
  *v25 = a9;
  *(v25 + 1) = a10;
  v26 = &v22[OBJC_IVAR___BANotificationData_messageCode];
  *v26 = a11;
  *(v26 + 1) = a12;
  v27 = &v22[OBJC_IVAR___BANotificationData_message];
  *v27 = a13;
  *(v27 + 1) = a14;
  v30.receiver = v22;
  v30.super_class = v14;
  return objc_msgSendSuper2(&v30, "init");
}

id BridgedNotificationData.init(notificationContentID:notificationID:notificationType:recoType:goalType:titleCode:title:messageCode:message:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *&v14[OBJC_IVAR___BANotificationData_notificationContentID] = a1;
  v15 = &v14[OBJC_IVAR___BANotificationData_notificationID];
  *v15 = a2;
  *(v15 + 1) = a3;
  *&v14[OBJC_IVAR___BANotificationData_notificationType] = a4;
  *&v14[OBJC_IVAR___BANotificationData_recoType] = a5;
  *&v14[OBJC_IVAR___BANotificationData_goalType] = a6;
  v16 = &v14[OBJC_IVAR___BANotificationData_titleCode];
  *v16 = a7;
  *(v16 + 1) = a8;
  v17 = &v14[OBJC_IVAR___BANotificationData_title];
  *v17 = a9;
  *(v17 + 1) = a10;
  v18 = &v14[OBJC_IVAR___BANotificationData_messageCode];
  *v18 = a11;
  *(v18 + 1) = a12;
  v19 = &v14[OBJC_IVAR___BANotificationData_message];
  *v19 = a13;
  *(v19 + 1) = a14;
  v21.receiver = v14;
  v21.super_class = type metadata accessor for BridgedNotificationData();
  return objc_msgSendSuper2(&v21, "init");
}

uint64_t sub_A5880@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BANotificationData_notificationID + 8);
  v3 = *(v1 + OBJC_IVAR___BANotificationData_notificationType);
  if (v3 >= 4 || (v4 = *(v1 + OBJC_IVAR___BANotificationData_recoType), v4 >= 5) || (v5 = *(v1 + OBJC_IVAR___BANotificationData_goalType), v5 >= 3))
  {

    result = sub_1E1D50();
    __break(1u);
  }

  else
  {
    v6 = *(v1 + OBJC_IVAR___BANotificationData_notificationID);
    v7 = *(v1 + OBJC_IVAR___BANotificationData_titleCode);
    v8 = *(v1 + OBJC_IVAR___BANotificationData_titleCode + 8);
    v9 = *(v1 + OBJC_IVAR___BANotificationData_title);
    v10 = *(v1 + OBJC_IVAR___BANotificationData_title + 8);
    v11 = *(v1 + OBJC_IVAR___BANotificationData_messageCode);
    v12 = *(v1 + OBJC_IVAR___BANotificationData_message);
    *a1 = *(v1 + OBJC_IVAR___BANotificationData_notificationContentID);
    *(a1 + 8) = v6;
    *(a1 + 16) = v2;
    *(a1 + 24) = v3;
    *(a1 + 25) = v4;
    *(a1 + 26) = v5;
    *(a1 + 32) = v7;
    *(a1 + 40) = v8;
    *(a1 + 48) = v9;
    *(a1 + 56) = v10;
    *(a1 + 64) = v11;
    *(a1 + 80) = v12;
  }

  return result;
}

id BridgedNotificationEngagementData.__allocating_init(actionType:actionUrl:targetID:targetType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  *&v11[OBJC_IVAR___BANotificationEngagementData_actionType] = a1;
  v12 = &v11[OBJC_IVAR___BANotificationEngagementData_actionUrl];
  *v12 = a2;
  *(v12 + 1) = a3;
  *&v11[OBJC_IVAR___BANotificationEngagementData_targetID] = a4;
  *&v11[OBJC_IVAR___BANotificationEngagementData_targetType] = a5;
  v14.receiver = v11;
  v14.super_class = v5;
  return objc_msgSendSuper2(&v14, "init");
}

id BridgedNotificationEngagementData.init(actionType:actionUrl:targetID:targetType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v5[OBJC_IVAR___BANotificationEngagementData_actionType] = a1;
  v6 = &v5[OBJC_IVAR___BANotificationEngagementData_actionUrl];
  *v6 = a2;
  *(v6 + 1) = a3;
  *&v5[OBJC_IVAR___BANotificationEngagementData_targetID] = a4;
  *&v5[OBJC_IVAR___BANotificationEngagementData_targetType] = a5;
  v8.receiver = v5;
  v8.super_class = type metadata accessor for BridgedNotificationEngagementData();
  return objc_msgSendSuper2(&v8, "init");
}

uint64_t sub_A5CF0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BANotificationEngagementData_actionType);
  if (v2 >= 7)
  {
    goto LABEL_8;
  }

  v3 = *(v1 + OBJC_IVAR___BANotificationEngagementData_targetID);
  v4 = *(v1 + OBJC_IVAR___BANotificationEngagementData_actionUrl + 8);
  v5 = *(v1 + OBJC_IVAR___BANotificationEngagementData_targetType);
  if (v5 >= 3)
  {

LABEL_8:
    result = sub_1E1D50();
    __break(1u);
    return result;
  }

  v6 = *(v1 + OBJC_IVAR___BANotificationEngagementData_actionUrl);
  *a1 = v2;
  *(a1 + 8) = v6;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

id BridgedPurchaseData.__allocating_init(purchaseAttemptID:purchaseMethod:isPreorder:pricingParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = &v13[OBJC_IVAR___BAPurchaseData_purchaseAttemptID];
  *v14 = a1;
  v14[1] = a2;
  *&v13[OBJC_IVAR___BAPurchaseData_purchaseMethod] = a3;
  v13[OBJC_IVAR___BAPurchaseData_isPreorder] = a4;
  v15 = &v13[OBJC_IVAR___BAPurchaseData_pricingParameters];
  *v15 = a5;
  v15[1] = a6;
  v17.receiver = v13;
  v17.super_class = v6;
  return objc_msgSendSuper2(&v17, "init");
}

id BridgedPurchaseData.init(purchaseAttemptID:purchaseMethod:isPreorder:pricingParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v7 = &v6[OBJC_IVAR___BAPurchaseData_purchaseAttemptID];
  *v7 = a1;
  v7[1] = a2;
  *&v6[OBJC_IVAR___BAPurchaseData_purchaseMethod] = a3;
  v6[OBJC_IVAR___BAPurchaseData_isPreorder] = a4;
  v8 = &v6[OBJC_IVAR___BAPurchaseData_pricingParameters];
  *v8 = a5;
  v8[1] = a6;
  v10.receiver = v6;
  v10.super_class = type metadata accessor for BridgedPurchaseData();
  return objc_msgSendSuper2(&v10, "init");
}

id BridgedPurchaseFailData.__allocating_init(purchaseFailureReason:errorCode:errorDescription:errorDomain:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  *&v13[OBJC_IVAR___BAPurchaseFailData_purchaseFailureReason] = a1;
  *&v13[OBJC_IVAR___BAPurchaseFailData_errorCode] = a2;
  v14 = &v13[OBJC_IVAR___BAPurchaseFailData_errorDescription];
  *v14 = a3;
  *(v14 + 1) = a4;
  v15 = &v13[OBJC_IVAR___BAPurchaseFailData_errorDomain];
  *v15 = a5;
  *(v15 + 1) = a6;
  v17.receiver = v13;
  v17.super_class = v6;
  return objc_msgSendSuper2(&v17, "init");
}

id BridgedPurchaseFailData.init(purchaseFailureReason:errorCode:errorDescription:errorDomain:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v6[OBJC_IVAR___BAPurchaseFailData_purchaseFailureReason] = a1;
  *&v6[OBJC_IVAR___BAPurchaseFailData_errorCode] = a2;
  v7 = &v6[OBJC_IVAR___BAPurchaseFailData_errorDescription];
  *v7 = a3;
  *(v7 + 1) = a4;
  v8 = &v6[OBJC_IVAR___BAPurchaseFailData_errorDomain];
  *v8 = a5;
  *(v8 + 1) = a6;
  v10.receiver = v6;
  v10.super_class = type metadata accessor for BridgedPurchaseFailData();
  return objc_msgSendSuper2(&v10, "init");
}

uint64_t sub_A62C0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___BAPurchaseFailData_purchaseFailureReason);
  if (v3 >= 3)
  {
    result = sub_1E1D50();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + OBJC_IVAR___BAPurchaseFailData_errorCode);
    if (v4)
    {
      v5 = [*(v1 + OBJC_IVAR___BAPurchaseFailData_errorCode) intValue];
    }

    else
    {
      v5 = 0;
    }

    v6 = *(v1 + OBJC_IVAR___BAPurchaseFailData_errorDescription);
    v7 = *(v1 + OBJC_IVAR___BAPurchaseFailData_errorDomain);
    *a1 = v3;
    *(a1 + 4) = v5;
    *(a1 + 8) = v4 == 0;
    *(a1 + 16) = v6;
    *(a1 + 32) = v7;
  }

  return result;
}

void *BridgedReadingSessionData.percentCompletionStart.getter()
{
  v1 = *(v0 + OBJC_IVAR___BAReadingSessionData_percentCompletionStart);
  v2 = v1;
  return v1;
}

void *BridgedReadingSessionData.percentCompletionEnd.getter()
{
  v1 = *(v0 + OBJC_IVAR___BAReadingSessionData_percentCompletionEnd);
  v2 = v1;
  return v1;
}

id BridgedReadingSessionData.__allocating_init(percentCompletionStart:percentCompletionEnd:isFreeSample:deviceOrientation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR___BAReadingSessionData_percentCompletionStart] = a1;
  *&v9[OBJC_IVAR___BAReadingSessionData_percentCompletionEnd] = a2;
  *&v9[OBJC_IVAR___BAReadingSessionData_isFreeSample] = a3;
  *&v9[OBJC_IVAR___BAReadingSessionData_deviceOrientation] = a4;
  v11.receiver = v9;
  v11.super_class = v4;
  return objc_msgSendSuper2(&v11, "init");
}

id BridgedReadingSessionData.init(percentCompletionStart:percentCompletionEnd:isFreeSample:deviceOrientation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR___BAReadingSessionData_percentCompletionStart] = a1;
  *&v4[OBJC_IVAR___BAReadingSessionData_percentCompletionEnd] = a2;
  *&v4[OBJC_IVAR___BAReadingSessionData_isFreeSample] = a3;
  *&v4[OBJC_IVAR___BAReadingSessionData_deviceOrientation] = a4;
  v6.receiver = v4;
  v6.super_class = type metadata accessor for BridgedReadingSessionData();
  return objc_msgSendSuper2(&v6, "init");
}

id sub_A6684@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___BAReadingSessionData_percentCompletionStart);
  v4 = 0;
  v5 = 0;
  if (v3)
  {
    [*(v1 + OBJC_IVAR___BAReadingSessionData_percentCompletionStart) floatValue];
    v5 = v6;
  }

  v7 = *(v1 + OBJC_IVAR___BAReadingSessionData_percentCompletionEnd);
  if (v7)
  {
    [*(v1 + OBJC_IVAR___BAReadingSessionData_percentCompletionEnd) floatValue];
    v4 = v8;
  }

  result = [*(v1 + OBJC_IVAR___BAReadingSessionData_isFreeSample) BOOLValue];
  v10 = *(v1 + OBJC_IVAR___BAReadingSessionData_deviceOrientation);
  if (v10 >= 3)
  {
    result = sub_1E1D50();
    __break(1u);
  }

  else
  {
    *a1 = v5;
    *(a1 + 4) = v3 == 0;
    *(a1 + 8) = v4;
    *(a1 + 12) = v7 == 0;
    *(a1 + 13) = result;
    *(a1 + 14) = v10;
  }

  return result;
}

id BridgedReadingSettingsData.__allocating_init(scrollViewStatus:autoNightThemeStatus:backgroundColor:font:fontSize:brightnessLevel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = objc_allocWithZone(v7);
  *&v15[OBJC_IVAR___BAReadingSettingsData_scrollViewStatus] = a1;
  *&v15[OBJC_IVAR___BAReadingSettingsData_autoNightThemeStatus] = a2;
  *&v15[OBJC_IVAR___BAReadingSettingsData_backgroundColor] = a3;
  v16 = &v15[OBJC_IVAR___BAReadingSettingsData_font];
  *v16 = a4;
  *(v16 + 1) = a5;
  *&v15[OBJC_IVAR___BAReadingSettingsData_fontSize] = a6;
  *&v15[OBJC_IVAR___BAReadingSettingsData_brightnessLevel] = a7;
  v18.receiver = v15;
  v18.super_class = v7;
  return objc_msgSendSuper2(&v18, "init");
}

id BridgedReadingSettingsData.init(scrollViewStatus:autoNightThemeStatus:backgroundColor:font:fontSize:brightnessLevel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v7[OBJC_IVAR___BAReadingSettingsData_scrollViewStatus] = a1;
  *&v7[OBJC_IVAR___BAReadingSettingsData_autoNightThemeStatus] = a2;
  *&v7[OBJC_IVAR___BAReadingSettingsData_backgroundColor] = a3;
  v8 = &v7[OBJC_IVAR___BAReadingSettingsData_font];
  *v8 = a4;
  *(v8 + 1) = a5;
  *&v7[OBJC_IVAR___BAReadingSettingsData_fontSize] = a6;
  *&v7[OBJC_IVAR___BAReadingSettingsData_brightnessLevel] = a7;
  v10.receiver = v7;
  v10.super_class = type metadata accessor for BridgedReadingSettingsData();
  return objc_msgSendSuper2(&v10, "init");
}

id sub_A6A60@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___BAReadingSettingsData_scrollViewStatus);
  if (v3 >= 3 || (v4 = *(v1 + OBJC_IVAR___BAReadingSettingsData_autoNightThemeStatus), v4 >= 3) || (v5 = *(v1 + OBJC_IVAR___BAReadingSettingsData_backgroundColor), v5 >= 5))
  {
    result = sub_1E1D50();
    __break(1u);
  }

  else
  {
    v6 = 0x4030201uLL >> (8 * v5);
    v8 = *(v1 + OBJC_IVAR___BAReadingSettingsData_font);
    v7 = *(v1 + OBJC_IVAR___BAReadingSettingsData_font + 8);
    v9 = *(v1 + OBJC_IVAR___BAReadingSettingsData_fontSize);

    [v9 floatValue];
    v11 = v10;
    result = [*(v1 + OBJC_IVAR___BAReadingSettingsData_brightnessLevel) floatValue];
    *a1 = v3;
    *(a1 + 1) = v4;
    *(a1 + 2) = v6;
    *(a1 + 8) = v8;
    *(a1 + 16) = v7;
    *(a1 + 24) = v11;
    *(a1 + 28) = v13;
  }

  return result;
}

unint64_t sub_A6C94@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_A87B4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t BridgedRemoteConfigNamespaceData.name.getter()
{
  v1 = *(v0 + OBJC_IVAR___BARemoteConfigNamespaceData_name);

  return v1;
}

id BridgedRemoteConfigNamespaceData.__allocating_init(name:treatmentIDs:segmentIDs:segmentSetIDs:previousTreatmentIDs:previousSegmentIDs:previousSegmentSetIDs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = objc_allocWithZone(v8);
  v18 = &v17[OBJC_IVAR___BARemoteConfigNamespaceData_name];
  *v18 = a1;
  *(v18 + 1) = a2;
  *&v17[OBJC_IVAR___BARemoteConfigNamespaceData_treatmentIDs] = a3;
  *&v17[OBJC_IVAR___BARemoteConfigNamespaceData_segmentIDs] = a4;
  *&v17[OBJC_IVAR___BARemoteConfigNamespaceData_segmentSetIDs] = a5;
  *&v17[OBJC_IVAR___BARemoteConfigNamespaceData_previousTreatmentIDs] = a6;
  *&v17[OBJC_IVAR___BARemoteConfigNamespaceData_previousSegmentIDs] = a7;
  *&v17[OBJC_IVAR___BARemoteConfigNamespaceData_previousSegmentSetIDs] = a8;
  v20.receiver = v17;
  v20.super_class = v8;
  return objc_msgSendSuper2(&v20, "init");
}

id BridgedRemoteConfigNamespaceData.init(name:treatmentIDs:segmentIDs:segmentSetIDs:previousTreatmentIDs:previousSegmentIDs:previousSegmentSetIDs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = &v8[OBJC_IVAR___BARemoteConfigNamespaceData_name];
  *v9 = a1;
  *(v9 + 1) = a2;
  *&v8[OBJC_IVAR___BARemoteConfigNamespaceData_treatmentIDs] = a3;
  *&v8[OBJC_IVAR___BARemoteConfigNamespaceData_segmentIDs] = a4;
  *&v8[OBJC_IVAR___BARemoteConfigNamespaceData_segmentSetIDs] = a5;
  *&v8[OBJC_IVAR___BARemoteConfigNamespaceData_previousTreatmentIDs] = a6;
  *&v8[OBJC_IVAR___BARemoteConfigNamespaceData_previousSegmentIDs] = a7;
  *&v8[OBJC_IVAR___BARemoteConfigNamespaceData_previousSegmentSetIDs] = a8;
  v11.receiver = v8;
  v11.super_class = type metadata accessor for BridgedRemoteConfigNamespaceData();
  return objc_msgSendSuper2(&v11, "init");
}

uint64_t sub_A6EC8@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BARemoteConfigNamespaceData_name + 8);
  v3 = *(v1 + OBJC_IVAR___BARemoteConfigNamespaceData_treatmentIDs);
  v4 = *(v1 + OBJC_IVAR___BARemoteConfigNamespaceData_segmentIDs);
  v5 = *(v1 + OBJC_IVAR___BARemoteConfigNamespaceData_segmentSetIDs);
  v6 = *(v1 + OBJC_IVAR___BARemoteConfigNamespaceData_previousTreatmentIDs);
  v7 = *(v1 + OBJC_IVAR___BARemoteConfigNamespaceData_previousSegmentIDs);
  v8 = *(v1 + OBJC_IVAR___BARemoteConfigNamespaceData_previousSegmentSetIDs);
  *a1 = *(v1 + OBJC_IVAR___BARemoteConfigNamespaceData_name);
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;
  a1[6] = v7;
  a1[7] = v8;
}

id sub_A7208(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[*a3] = a1;
  *&v9[*a4] = a2;
  v11.receiver = v9;
  v11.super_class = v4;
  return objc_msgSendSuper2(&v11, "init");
}

id sub_A72A0(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(void))
{
  *&v5[*a3] = a1;
  *&v5[*a4] = a2;
  v7.receiver = v5;
  v7.super_class = a5();
  return objc_msgSendSuper2(&v7, "init");
}

id sub_A7310(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t (*a7)(void))
{
  *&a1[*a5] = a3;
  *&a1[*a6] = a4;
  v8.receiver = a1;
  v8.super_class = a7();
  return objc_msgSendSuper2(&v8, "init");
}

uint64_t BridgedUpSellData.variantVersion.getter()
{
  v1 = *(v0 + OBJC_IVAR___BAUpSellData_variantVersion);

  return v1;
}

id BridgedUpSellData.__allocating_init(location:variant:variantVersion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR___BAUpSellData_location] = a1;
  *&v9[OBJC_IVAR___BAUpSellData_variant] = a2;
  v10 = &v9[OBJC_IVAR___BAUpSellData_variantVersion];
  *v10 = a3;
  *(v10 + 1) = a4;
  v12.receiver = v9;
  v12.super_class = v4;
  return objc_msgSendSuper2(&v12, "init");
}

id BridgedUpSellData.init(location:variant:variantVersion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR___BAUpSellData_location] = a1;
  *&v4[OBJC_IVAR___BAUpSellData_variant] = a2;
  v5 = &v4[OBJC_IVAR___BAUpSellData_variantVersion];
  *v5 = a3;
  *(v5 + 1) = a4;
  v7.receiver = v4;
  v7.super_class = type metadata accessor for BridgedUpSellData();
  return objc_msgSendSuper2(&v7, "init");
}

uint64_t sub_A7638@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BAUpSellData_location);
  if (v2 >= 4 || (v3 = *(v1 + OBJC_IVAR___BAUpSellData_variant), v3 >= 3))
  {
    result = sub_1E1D50();
    __break(1u);
  }

  else
  {
    v5 = *(v1 + OBJC_IVAR___BAUpSellData_variantVersion);
    v4 = *(v1 + OBJC_IVAR___BAUpSellData_variantVersion + 8);
    *a1 = v2;
    *(a1 + 1) = v3;
    *(a1 + 8) = v5;
    *(a1 + 16) = v4;
  }

  return result;
}

id sub_A7784(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v13 = objc_allocWithZone(v6);
  *&v13[*a4] = a1;
  *&v13[*a5] = a2;
  *&v13[*a6] = a3;
  v15.receiver = v13;
  v15.super_class = v6;
  return objc_msgSendSuper2(&v15, "init");
}

id sub_A783C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, uint64_t (*a7)(void))
{
  *&v7[*a4] = a1;
  *&v7[*a5] = a2;
  *&v7[*a6] = a3;
  v9.receiver = v7;
  v9.super_class = a7();
  return objc_msgSendSuper2(&v9, "init");
}

void sub_A78F0(_BYTE *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BAViewData_type);
  if (v2 >= 5 || (v3 = *(v1 + OBJC_IVAR___BAViewData_action), v3 >= 7) || (v4 = *(v1 + OBJC_IVAR___BAViewData_location), v4 >= 3))
  {
    sub_1E1D50();
    __break(1u);
  }

  else
  {
    *a1 = v2;
    a1[1] = v3;
    a1[2] = v4;
  }
}

Swift::Int sub_A7A10()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E1DD0(v1);
  return sub_1E1DE0();
}

Swift::Int sub_A7A58(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  sub_1E1DD0(v2);
  return sub_1E1DE0();
}

uint64_t BridgedWidgetData.widgetFamily.getter()
{
  v1 = *(v0 + OBJC_IVAR___BAWidgetData_widgetFamily);

  return v1;
}

uint64_t BridgedWidgetData.displayMode.getter()
{
  v1 = *(v0 + OBJC_IVAR___BAWidgetData_displayMode);

  return v1;
}

id BridgedWidgetData.__allocating_init(widgetFamily:displayMode:isContentExposed:isStreakExposed:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = &v13[OBJC_IVAR___BAWidgetData_widgetFamily];
  *v14 = a1;
  v14[1] = a2;
  v15 = &v13[OBJC_IVAR___BAWidgetData_displayMode];
  *v15 = a3;
  v15[1] = a4;
  v13[OBJC_IVAR___BAWidgetData_isContentExposed] = a5;
  v13[OBJC_IVAR___BAWidgetData_isStreakExposed] = a6;
  v17.receiver = v13;
  v17.super_class = v6;
  return objc_msgSendSuper2(&v17, "init");
}

id BridgedWidgetData.init(widgetFamily:displayMode:isContentExposed:isStreakExposed:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v7 = &v6[OBJC_IVAR___BAWidgetData_widgetFamily];
  *v7 = a1;
  v7[1] = a2;
  v8 = &v6[OBJC_IVAR___BAWidgetData_displayMode];
  *v8 = a3;
  v8[1] = a4;
  v6[OBJC_IVAR___BAWidgetData_isContentExposed] = a5;
  v6[OBJC_IVAR___BAWidgetData_isStreakExposed] = a6;
  v10.receiver = v6;
  v10.super_class = type metadata accessor for BridgedWidgetData();
  return objc_msgSendSuper2(&v10, "init");
}

id sub_A7D6C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_A7DB8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  *(a1 + *a3 + 8), a2, a3, a4, a5, a6, a7, a8;
  v17 = *(a1 + *a4 + 8);

  v17, v10, v11, v12, v13, v14, v15, v16;
}

id ContentSubType.bridgeType.getter()
{
  v1 = *v0;
  v2 = type metadata accessor for BridgedContentSubType();
  v3 = objc_allocWithZone(v2);
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v3[OBJC_IVAR___BAContentSubType_subTypeEnum] = 2;
      v8 = v3;
      v4 = &v8;
    }

    else
    {
      v3[OBJC_IVAR___BAContentSubType_subTypeEnum] = 3;
      v9.receiver = v3;
      v4 = &v9;
    }
  }

  else if (v1)
  {
    v3[OBJC_IVAR___BAContentSubType_subTypeEnum] = 1;
    v7 = v3;
    v4 = &v7;
  }

  else
  {
    v3[OBJC_IVAR___BAContentSubType_subTypeEnum] = 0;
    v6 = v3;
    v4 = &v6;
  }

  v4->super_class = v2;
  return [(objc_super *)v4 init];
}

BAEventReporter *sub_A7EB0(BAEventReporter *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  result = sub_A7F80(a1, a2, a3, *v8, &qword_2837C0, &qword_1F26E8, &type metadata for LibraryEditActionData, a8);
  *v8 = result;
  return result;
}

BAEventReporter *sub_A7EE8(BAEventReporter *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  result = sub_A7F80(a1, a2, a3, *v8, &qword_2837B8, &qword_1F26E0, &type metadata for DragDropItemData, a8);
  *v8 = result;
  return result;
}

BAEventReporter *sub_A7F20(BAEventReporter *a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5, void *a6, uint64_t a7, void *a8)
{
  result = sub_A80A0(a1, a2, a3, *v8, a5, a6, a7, a8);
  *v8 = result;
  return result;
}

BAEventReporter *sub_A7F40(BAEventReporter *a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5, void *a6, uint64_t a7, void *a8)
{
  result = sub_A81BC(a1, a2, a3, *v8, a5, a6, a7, a8);
  *v8 = result;
  return result;
}

BAEventReporter *sub_A7F60(BAEventReporter *a1, uint64_t a2, void *a3, uint64_t a4, int64_t a5, void *a6, uint64_t a7, void *a8)
{
  result = sub_A82C8(a1, a2, a3, *v8, a5, a6, a7, a8);
  *v8 = result;
  return result;
}

BAEventReporter *sub_A7F80(BAEventReporter *result, int64_t a2, void *a3, BAEventReporter *a4, uint64_t *a5, uint64_t *a6, uint64_t a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4[1].dataProviders;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  isa = a4[1].super.isa;
  if (v11 <= isa)
  {
    v13 = a4[1].super.isa;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_3D68(a5, a6);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v14[1].super.isa = isa;
    *v14[1].dataProviders = 2 * ((v15 - 32) / 48);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  v16 = &v14[2];
  v17 = &a4[2];
  if (v9)
  {
    if (v14 != a4 || v16 >= &v17[48 * isa])
    {
      memmove(v16, v17, 48 * isa);
    }

    a4[1].super.isa = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v17, a3, a4, a5, a6, a7, a8;
  return v14;
}

BAEventReporter *sub_A80A0(BAEventReporter *result, int64_t a2, char a3, BAEventReporter *a4, int64_t a5, void *a6, uint64_t a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4[1].dataProviders;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  isa = a4[1].super.isa;
  if (v11 <= isa)
  {
    v13 = a4[1].super.isa;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_3D68(&qword_2837A0, &qword_1F26C8);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v14[1].super.isa = isa;
    *v14[1].dataProviders = 2 * ((v15 - 32) / 24);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  v16 = &v14[2];
  v17 = &a4[2];
  if (v9)
  {
    v18 = 24 * isa;
    if (v14 != a4 || v16 >= &v17[24 * isa])
    {
      memmove(v16, v17, v18);
    }

    a4[1].super.isa = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v17, v18, a4, a5, a6, a7, a8;
  return v14;
}

BAEventReporter *sub_A81BC(BAEventReporter *result, int64_t a2, char a3, BAEventReporter *a4, int64_t a5, void *a6, uint64_t a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4[1].dataProviders;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  isa = a4[1].super.isa;
  if (v11 <= isa)
  {
    v13 = a4[1].super.isa;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_3D68(&qword_2837B0, &qword_1F26D8);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 + 31;
    }

    v14[1].super.isa = isa;
    *v14[1].dataProviders = 2 * (v16 >> 6);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  v17 = &v14[2];
  v18 = &a4[2];
  if (v9)
  {
    v19 = (isa << 6);
    if (v14 != a4 || v17 >= &v18[64 * isa])
    {
      memmove(v17, v18, v19);
    }

    a4[1].super.isa = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v18, v19, a4, a5, a6, a7, a8;
  return v14;
}

BAEventReporter *sub_A82C8(BAEventReporter *result, int64_t a2, void *a3, BAEventReporter *a4, int64_t a5, void *a6, uint64_t a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4[1].dataProviders;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  isa = a4[1].super.isa;
  if (v11 <= isa)
  {
    v13 = a4[1].super.isa;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_3D68(&qword_2837A8, &qword_1F26D0);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 + 31;
    }

    v14[1].super.isa = isa;
    *v14[1].dataProviders = 2 * (v16 >> 6);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  v17 = &v14[2];
  v18 = &a4[2];
  if (v9)
  {
    if (v14 != a4 || v17 >= &v18[64 * isa])
    {
      memmove(v17, v18, isa << 6);
    }

    a4[1].super.isa = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v18, a3, a4, a5, a6, a7, a8;
  return v14;
}

unint64_t sub_A83D4(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

id sub_A8474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16)
{
  v17 = &v16[OBJC_IVAR___BAContentData_contentID];
  *v17 = a1;
  v17[1] = a2;
  *&v16[OBJC_IVAR___BAContentData_contentType] = a3;
  v18 = &v16[OBJC_IVAR___BAContentData_contentPrivateID];
  *v18 = a4;
  v18[1] = a5;
  v19 = &v16[OBJC_IVAR___BAContentData_contentUserID];
  *v19 = a6;
  v19[1] = a7;
  *&v16[OBJC_IVAR___BAContentData_contentAcquisitionType] = a8;
  *&v16[OBJC_IVAR___BAContentData_contentSubType] = a9;
  *&v16[OBJC_IVAR___BAContentData_contentLength] = a10;
  *&v16[OBJC_IVAR___BAContentData_supplementalContentCount] = a11;
  *&v16[OBJC_IVAR___BAContentData_seriesType] = a12;
  *&v16[OBJC_IVAR___BAContentData_productionType] = a13;
  v20 = a11;
  v21 = a9;
  v22 = a10;
  if (a14)
  {
    v23 = [a14 BOOLValue];
  }

  else
  {
    v23 = 2;
  }

  v16[OBJC_IVAR___BAContentData_isUnified] = v23;
  v16[OBJC_IVAR___BAContentData_isAccoladedContent] = 2;
  v24 = &v16[OBJC_IVAR___BAContentData_contentKind];
  *v24 = a15;
  v24[1] = a16;
  v26.receiver = v16;
  v26.super_class = type metadata accessor for BridgedContentData();
  return objc_msgSendSuper2(&v26, "init");
}

unint64_t sub_A8650(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_A8684(unint64_t result)
{
  if (result > 5)
  {
    return 0;
  }

  return result;
}

unint64_t sub_A87B4(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_A88A0()
{
  result = qword_283310;
  if (!qword_283310)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BridgedActionType, &type metadata for BridgedActionType, v0, v1);
    atomic_store(result, &qword_283310);
  }

  return result;
}

unint64_t sub_A88F8()
{
  result = qword_283318;
  if (!qword_283318)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BridgedAutoNightThemeStatus, &type metadata for BridgedAutoNightThemeStatus, v0, v1);
    atomic_store(result, &qword_283318);
  }

  return result;
}

unint64_t sub_A8950()
{
  result = qword_283320;
  if (!qword_283320)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BridgedBackgroundColor, &type metadata for BridgedBackgroundColor, v0, v1);
    atomic_store(result, &qword_283320);
  }

  return result;
}

unint64_t sub_A89A8()
{
  result = qword_283328;
  if (!qword_283328)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BridgedContentAcquisitionType, &type metadata for BridgedContentAcquisitionType, v0, v1);
    atomic_store(result, &qword_283328);
  }

  return result;
}

unint64_t sub_A8A00()
{
  result = qword_283330;
  if (!qword_283330)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BridgedContentType, &type metadata for BridgedContentType, v0, v1);
    atomic_store(result, &qword_283330);
  }

  return result;
}

unint64_t sub_A8A58()
{
  result = qword_283338;
  if (!qword_283338)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BridgedDeviceOrientation, &type metadata for BridgedDeviceOrientation, v0, v1);
    atomic_store(result, &qword_283338);
  }

  return result;
}

unint64_t sub_A8AB0()
{
  result = qword_283340;
  if (!qword_283340)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BridgedDisplayType, &type metadata for BridgedDisplayType, v0, v1);
    atomic_store(result, &qword_283340);
  }

  return result;
}

unint64_t sub_A8B08()
{
  result = qword_283348;
  if (!qword_283348)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BridgedDoNotDisturbStatus, &type metadata for BridgedDoNotDisturbStatus, v0, v1);
    atomic_store(result, &qword_283348);
  }

  return result;
}

unint64_t sub_A8B60()
{
  result = qword_283350;
  if (!qword_283350)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BridgedEditActionType, &type metadata for BridgedEditActionType, v0, v1);
    atomic_store(result, &qword_283350);
  }

  return result;
}

unint64_t sub_A8BB8()
{
  result = qword_283358;
  if (!qword_283358)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BridgedEndReasonType, &type metadata for BridgedEndReasonType, v0, v1);
    atomic_store(result, &qword_283358);
  }

  return result;
}

unint64_t sub_A8C10()
{
  result = qword_283360;
  if (!qword_283360)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BridgedGetStartedActionType, &type metadata for BridgedGetStartedActionType, v0, v1);
    atomic_store(result, &qword_283360);
  }

  return result;
}

unint64_t sub_A8C68()
{
  result = qword_283368;
  if (!qword_283368)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BridgedGoalType, &type metadata for BridgedGoalType, v0, v1);
    atomic_store(result, &qword_283368);
  }

  return result;
}

unint64_t sub_A8CC0()
{
  result = qword_283370;
  if (!qword_283370)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BridgedLaunchType, &type metadata for BridgedLaunchType, v0, v1);
    atomic_store(result, &qword_283370);
  }

  return result;
}

unint64_t sub_A8D18()
{
  result = qword_283378;
  if (!qword_283378)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BridgedLinkActionType, &type metadata for BridgedLinkActionType, v0, v1);
    atomic_store(result, &qword_283378);
  }

  return result;
}

unint64_t sub_A8D70()
{
  result = qword_283380;
  if (!qword_283380)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BridgedMessageType, &type metadata for BridgedMessageType, v0, v1);
    atomic_store(result, &qword_283380);
  }

  return result;
}

unint64_t sub_A8DC8()
{
  result = qword_283388;
  if (!qword_283388)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BridgedNotificationType, &type metadata for BridgedNotificationType, v0, v1);
    atomic_store(result, &qword_283388);
  }

  return result;
}

unint64_t sub_A8E20()
{
  result = qword_283390;
  if (!qword_283390)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BridgedProductionType, &type metadata for BridgedProductionType, v0, v1);
    atomic_store(result, &qword_283390);
  }

  return result;
}

unint64_t sub_A8E78()
{
  result = qword_283398;
  if (!qword_283398)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BridgedPurchaseFailureReason, &type metadata for BridgedPurchaseFailureReason, v0, v1);
    atomic_store(result, &qword_283398);
  }

  return result;
}

unint64_t sub_A8ED0()
{
  result = qword_2833A0;
  if (!qword_2833A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BridgedPurchaseMethod, &type metadata for BridgedPurchaseMethod, v0, v1);
    atomic_store(result, &qword_2833A0);
  }

  return result;
}

unint64_t sub_A8F28()
{
  result = qword_2833A8;
  if (!qword_2833A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BridgedRecoType, &type metadata for BridgedRecoType, v0, v1);
    atomic_store(result, &qword_2833A8);
  }

  return result;
}

unint64_t sub_A8F80()
{
  result = qword_2833B0;
  if (!qword_2833B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BridgedScrollViewStatus, &type metadata for BridgedScrollViewStatus, v0, v1);
    atomic_store(result, &qword_2833B0);
  }

  return result;
}

unint64_t sub_A8FD8()
{
  result = qword_2833B8;
  if (!qword_2833B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BridgedSeriesType, &type metadata for BridgedSeriesType, v0, v1);
    atomic_store(result, &qword_2833B8);
  }

  return result;
}

unint64_t sub_A9030()
{
  result = qword_2833C0;
  if (!qword_2833C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BridgedSortType, &type metadata for BridgedSortType, v0, v1);
    atomic_store(result, &qword_2833C0);
  }

  return result;
}

unint64_t sub_A9088()
{
  result = qword_2833C8;
  if (!qword_2833C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BridgedTabType, &type metadata for BridgedTabType, v0, v1);
    atomic_store(result, &qword_2833C8);
  }

  return result;
}

unint64_t sub_A90E0()
{
  result = qword_2833D0;
  if (!qword_2833D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BridgedTargetType, &type metadata for BridgedTargetType, v0, v1);
    atomic_store(result, &qword_2833D0);
  }

  return result;
}

unint64_t sub_A9138()
{
  result = qword_2833D8;
  if (!qword_2833D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BridgedUpSellLocation, &type metadata for BridgedUpSellLocation, v0, v1);
    atomic_store(result, &qword_2833D8);
  }

  return result;
}

unint64_t sub_A9190()
{
  result = qword_2833E0;
  if (!qword_2833E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BridgedUpSellVariant, &type metadata for BridgedUpSellVariant, v0, v1);
    atomic_store(result, &qword_2833E0);
  }

  return result;
}

unint64_t sub_A91E8()
{
  result = qword_2833E8;
  if (!qword_2833E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BridgedViewAction, &type metadata for BridgedViewAction, v0, v1);
    atomic_store(result, &qword_2833E8);
  }

  return result;
}

unint64_t sub_A9240()
{
  result = qword_2833F0;
  if (!qword_2833F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BridgedViewLocation, &type metadata for BridgedViewLocation, v0, v1);
    atomic_store(result, &qword_2833F0);
  }

  return result;
}

unint64_t sub_A9298()
{
  result = qword_2833F8;
  if (!qword_2833F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BridgedViewType, &type metadata for BridgedViewType, v0, v1);
    atomic_store(result, &qword_2833F8);
  }

  return result;
}

unint64_t sub_A9A60()
{
  result = qword_283798;
  if (!qword_283798)
  {
    result = swift_getWitnessTable(byte_1F269C, &type metadata for BridgedContentSubType.BridgedContentSubTypeEnum, v0, v1);
    atomic_store(result, &qword_283798);
  }

  return result;
}

double sub_A9AF0()
{
  qword_2837E8 = 0;
  result = 0.0;
  xmmword_2837C8 = 0u;
  unk_2837D8 = 0u;
  return result;
}

uint64_t sub_A9B08@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_27D1D8 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_A9D0C(&xmmword_2837C8, v2);
}

void *EnvironmentValues._sizeProvider.getter()
{
  sub_A9BC4();

  return sub_1E1490();
}

unint64_t sub_A9BC4()
{
  result = qword_283808;
  if (!qword_283808)
  {
    result = swift_getWitnessTable(aU_7, &type metadata for SizeProviderKey, v0, v1);
    atomic_store(result, &qword_283808);
  }

  return result;
}

uint64_t sub_A9C58(uint64_t a1)
{
  sub_A9D0C(a1, v3);
  sub_A9D0C(v3, &v2);
  sub_A9BC4();
  sub_1E14A0();
  return sub_A9D7C(v3);
}

uint64_t EnvironmentValues._sizeProvider.setter(uint64_t a1)
{
  sub_A9D0C(a1, v3);
  sub_A9BC4();
  sub_1E14A0();
  return sub_A9D7C(a1);
}

uint64_t sub_A9D0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_283810, &unk_20EAE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_A9D7C(uint64_t a1)
{
  v2 = sub_3D68(&qword_283810, &unk_20EAE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*EnvironmentValues._sizeProvider.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  *a1 = v3;
  *(v3 + 120) = v1;
  *(v3 + 128) = sub_A9BC4();
  sub_1E1490();
  return sub_A9E74;
}

void sub_A9E74(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_A9D0C(*a1, v2 + 40);
    sub_A9D0C(v2 + 40, v2 + 80);
    sub_1E14A0();
    sub_A9D7C(v2 + 40);
  }

  else
  {
    sub_A9D0C(*a1, v2 + 40);
    sub_1E14A0();
  }

  sub_A9D7C(v2);

  free(v2);
}

uint64_t View.appAnalyticsSizeProvider(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_5DE50(&qword_283818, &qword_1F26F0);
  v5 = sub_1E1440();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28[-1] - v7;
  KeyPath = swift_getKeyPath();
  sub_4C2BC(a1, v29);
  sub_1E1500();
  KeyPath, v10, v11, v12, v13, v14, v15, v16;
  sub_A9D7C(v29);
  sub_4C2BC(a1, v29);
  v17 = swift_allocObject();
  sub_7EE7C(v29, &v17[1]);
  v18 = sub_AA218();
  v28[0] = a3;
  v28[1] = v18;
  swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v28);
  sub_1E14F0();
  v17, v19, v20, v21, v22, v23, v24, v25;
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_AA134(uint64_t a1, uint64_t a2)
{
  if (qword_27D1E0 != -1)
  {
    swift_once();
  }

  v2 = sub_3D68(&qword_283828, qword_1F2720);
  sub_3B2C(v2, qword_2837F0);
  sub_3D68(&qword_283830, &qword_1F2798);
  return sub_1E1710();
}

uint64_t sub_AA1D8(uint64_t a1, uint64_t a2, void *a3, void *a4, int64_t a5, void *a6, uint64_t a7, void *a8)
{
  sub_4E48((v8 + 16), a2, a3, a4, a5, a6, a7, a8);

  return _swift_deallocObject(v8, 56, 7);
}

unint64_t sub_AA218()
{
  result = qword_283820;
  if (!qword_283820)
  {
    v3 = sub_5DE50(&qword_283818, &qword_1F26F0);
    result = swift_getWitnessTable(&protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>, v3, v0, v1);
    atomic_store(result, &qword_283820);
  }

  return result;
}

uint64_t sub_AA27C()
{
  v0 = sub_3D68(&qword_283828, qword_1F2720);
  sub_5F94(v0, qword_2837F0);
  sub_3B2C(v0, qword_2837F0);
  sub_3D68(&qword_283830, &qword_1F2798);
  return sub_1E1700();
}

uint64_t static MetricsFieldsContext.Property<A>.sizeProvider.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D1E0 != -1)
  {
    swift_once();
  }

  v2 = sub_3D68(&qword_283828, qword_1F2720);
  v3 = sub_3B2C(v2, qword_2837F0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_AA404(uint64_t *a1)
{
  v1 = a1[1];
  sub_5DE50(&qword_283818, &qword_1F26F0);
  v2 = sub_1E1440();
  v4[0] = v1;
  v4[1] = sub_AA218();
  swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v2, v4);
  return swift_getOpaqueTypeConformance2();
}

void __swiftcall UserData.init(userStorefrontID:userID:userExperience:)(BookAnalytics::UserData *__return_ptr retstr, Swift::String userStorefrontID, Swift::String userID, Swift::OpaquePointer_optional userExperience)
{
  retstr->userStorefrontID = userStorefrontID;
  retstr->userID = userID;
  retstr->userExperience.value._rawValue = userExperience.value._rawValue;
}

uint64_t sub_AA4F8()
{
  v1 = 0x444972657375;
  if (*v0 != 1)
  {
    v1 = 0x6570784572657375;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_AA560@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_AAE04(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_AA588(uint64_t a1)
{
  v2 = sub_AABD8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_AA5C4(uint64_t a1)
{
  v2 = sub_AABD8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t UserData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_283838, &qword_1F27A0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  v7 = v1[2];
  v13 = v1[3];
  v14 = v7;
  v12 = v1[4];
  sub_48B8(a1, a1[3]);
  sub_AABD8();
  sub_1E1E00();
  v19 = 0;
  v8 = v15;
  sub_1E1CB0();
  if (!v8)
  {
    v10 = v12;
    v18 = 1;
    sub_1E1CB0();
    v16 = v10;
    v17 = 2;
    sub_3D68(&qword_281BC0, &unk_1EDD80);
    sub_6E7F0(&qword_281190, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_1E1C80();
  }

  return (*(v4 + 8))(v6, v3);
}

void UserData.init(from:)(BAEventReporter **a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_3D68(&qword_283848, &qword_1F27A8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v50 - v7;
  sub_48B8(a1, a1[3]);
  sub_AABD8();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    v56 = 0;
    v16 = sub_1E1BE0();
    v18 = v17;
    v52 = v16;
    v55 = 1;
    v50 = sub_1E1BE0();
    v51 = v19;
    sub_3D68(&qword_281BC0, &unk_1EDD80);
    v54 = 2;
    sub_6E7F0(&qword_2811B8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_1E1BB0();
    (*(v6 + 8))(v8, v5);
    v20 = v53;
    *a2 = v52;
    a2[1] = v18;
    v21 = v51;
    a2[2] = v50;
    a2[3] = v21;
    a2[4] = v20;

    sub_4E48(a1, v22, v23, v24, v25, v26, v27, v28);
    v20, v29, v30, v31, v32, v33, v34, v35;
    v21, v36, v37, v38, v39, v40, v41, v42;
    v18, v43, v44, v45, v46, v47, v48, v49;
  }
}

uint64_t _s13BookAnalytics8UserDataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (sub_1E1D30() & 1) != 0)
  {
    v9 = v2 == v5 && v4 == v6;
    if (v9 || (sub_1E1D30() & 1) != 0)
    {
      if (v3)
      {
        if (v7 && (sub_5C5F8(v3, v7) & 1) != 0)
        {
          return 1;
        }
      }

      else if (!v7)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_AABD8()
{
  result = qword_283840;
  if (!qword_283840)
  {
    result = swift_getWitnessTable(byte_1F2994, &type metadata for UserData.CodingKeys, v0, v1);
    atomic_store(result, &qword_283840);
  }

  return result;
}

unint64_t sub_AAC30()
{
  result = qword_283850;
  if (!qword_283850)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UserData, &type metadata for UserData, v0, v1);
    atomic_store(result, &qword_283850);
  }

  return result;
}

unint64_t sub_AAC88()
{
  result = qword_283858;
  if (!qword_283858)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UserData, &type metadata for UserData, v0, v1);
    atomic_store(result, &qword_283858);
  }

  return result;
}

unint64_t sub_AAD00()
{
  result = qword_283860;
  if (!qword_283860)
  {
    result = swift_getWitnessTable(byte_1F296C, &type metadata for UserData.CodingKeys, v0, v1);
    atomic_store(result, &qword_283860);
  }

  return result;
}

unint64_t sub_AAD58()
{
  result = qword_283868;
  if (!qword_283868)
  {
    result = swift_getWitnessTable(aE_2, &type metadata for UserData.CodingKeys, v0, v1);
    atomic_store(result, &qword_283868);
  }

  return result;
}

unint64_t sub_AADB0()
{
  result = qword_283870;
  if (!qword_283870)
  {
    result = swift_getWitnessTable(asc_1F2904, &type metadata for UserData.CodingKeys, v0, v1);
    atomic_store(result, &qword_283870);
  }

  return result;
}

uint64_t sub_AAE04(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0x80000000002159B0;
  if (a1 == 0xD000000000000010 && 0x80000000002159B0 == a2 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x444972657375 && a2 == 0xE600000000000000 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else if (a1 == 0x6570784572657375 && a2 == 0xEE0065636E656972)
  {
    0xEE0065636E656972, 0xEE0065636E656972, a3, a4, a5, a6, a7, a8;
    return 2;
  }

  else
  {
    v12 = sub_1E1D30();
    a2, v13, v14, v15, v16, v17, v18, v19;
    if (v12)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

BookAnalytics::FrameName_optional __swiftcall FrameName.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_2602A8;
  v15._object = object;
  v5 = sub_1E1B70(v4, v15);
  object, v6, v7, v8, v9, v10, v11, v12;
  v14 = 16;
  if (v5 < 0x10)
  {
    v14 = v5;
  }

  *v3 = v14;
  return result;
}

unint64_t FrameName.rawValue.getter()
{
  result = 0x6165526C61746F74;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
    case 4:
      result = 0x6461655274736F6DLL;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x64656873696E6966;
      break;
    case 7:
      result = 0x6E6946736B6F6F62;
      break;
    case 8:
      result = 0x6D6D755372616579;
      break;
    case 9:
      result = 0x626967696C656E69;
      break;
    case 0xA:
      result = 0xD000000000000013;
      break;
    case 0xB:
      result = 0xD000000000000015;
      break;
    case 0xC:
      result = 0x7472617453746567;
      break;
    case 0xD:
      result = 0xD000000000000013;
      break;
    case 0xE:
      result = 0xD000000000000019;
      break;
    case 0xF:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_AB1DC()
{
  v0 = FrameName.rawValue.getter();
  v2 = v1;
  v3 = FrameName.rawValue.getter();
  v11 = v4;
  if (v0 == v3 && v2 == v4)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1E1D30();
  }

  v2, v4, v5, v6, v7, v8, v9, v10;
  v11, v14, v15, v16, v17, v18, v19, v20;
  return v13 & 1;
}

unint64_t sub_AB27C()
{
  result = qword_283878;
  if (!qword_283878)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FrameName, &type metadata for FrameName, v0, v1);
    atomic_store(result, &qword_283878);
  }

  return result;
}

Swift::Int sub_AB2D0()
{
  sub_1E1DC0();
  FrameName.rawValue.getter();
  v1 = v0;
  sub_1E17D0();
  v1, v2, v3, v4, v5, v6, v7, v8;
  return sub_1E1DE0();
}

void sub_AB338(uint64_t a1)
{
  FrameName.rawValue.getter();
  v2 = v1;
  sub_1E17D0();

  v2, v3, v4, v5, v6, v7, v8, v9;
}

Swift::Int sub_AB39C(uint64_t a1)
{
  sub_1E1DC0();
  FrameName.rawValue.getter();
  v2 = v1;
  sub_1E17D0();
  v2, v3, v4, v5, v6, v7, v8, v9;
  return sub_1E1DE0();
}

unint64_t sub_AB40C@<X0>(unint64_t *a1@<X8>)
{
  result = FrameName.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_AB4F4()
{
  result = qword_283880;
  if (!qword_283880)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FrameName, &type metadata for FrameName, v0, v1);
    atomic_store(result, &qword_283880);
  }

  return result;
}

BookAnalytics::WelcomeScreenType_optional __swiftcall WelcomeScreenType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_260448;
  v15._object = object;
  v5 = sub_1E1B70(v4, v15);
  object, v6, v7, v8, v9, v10, v11, v12;
  v14 = 5;
  if (v5 < 5)
  {
    v14 = v5;
  }

  *v3 = v14;
  return result;
}

uint64_t WelcomeScreenType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x7265766F63736964;
  v4 = 0x657061637365;
  if (v1 != 3)
  {
    v4 = 2003792487;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656D6F636C6577;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_AB644()
{
  result = qword_283888;
  if (!qword_283888)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WelcomeScreenType, &type metadata for WelcomeScreenType, v0, v1);
    atomic_store(result, &qword_283888);
  }

  return result;
}

Swift::Int sub_AB698()
{
  v1 = *v0;
  sub_1E1DC0();
  v2 = 0xE800000000000000;
  v3 = 0xE600000000000000;
  if (v1 != 3)
  {
    v3 = 0xE400000000000000;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (v1 <= 1)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = v2;
  }

  sub_1E17D0();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return sub_1E1DE0();
}

void sub_AB770(uint64_t a1)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE600000000000000;
  if (v2 != 3)
  {
    v4 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (*v1 <= 1u)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = v3;
  }

  sub_1E17D0();

  v5, v6, v7, v8, v9, v10, v11, v12;
}

Swift::Int sub_AB834(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  v3 = 0xE800000000000000;
  v4 = 0xE600000000000000;
  if (v2 != 3)
  {
    v4 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (v2 <= 1)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = v3;
  }

  sub_1E17D0();
  v5, v6, v7, v8, v9, v10, v11, v12;
  return sub_1E1DE0();
}

void sub_AB914(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE800000000000000;
  v6 = 0x7265766F63736964;
  v7 = 0xE600000000000000;
  v8 = 0x657061637365;
  if (v2 != 3)
  {
    v8 = 2003792487;
    v7 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x656D6F636C6577;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_ABA68()
{
  result = qword_283890;
  if (!qword_283890)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WelcomeScreenType, &type metadata for WelcomeScreenType, v0, v1);
    atomic_store(result, &qword_283890);
  }

  return result;
}

void sub_ABAE8(void *a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X3>, void *a4@<X4>, int64_t a5@<X5>, int64_t a6@<X6>, void *a7@<X7>, _BYTE *a8@<X8>)
{
  if (a1 == 0x654D686372616573 && a2 == 0xEC000000646F6874)
  {
    a2, 0xEC000000646F6874, a1, a3, a4, a5, a6, a7;
    v19 = 0;
  }

  else
  {
    v11 = sub_1E1D30();
    a2, v12, v13, v14, v15, v16, v17, v18;
    v19 = v11 ^ 1;
  }

  *a8 = v19 & 1;
}

uint64_t sub_ABB74(uint64_t a1)
{
  v2 = sub_ABD38();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_ABBB0(uint64_t a1)
{
  v2 = sub_ABD38();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SearchMethodData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_283898, &qword_1F2C60);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = *v1;
  sub_48B8(a1, a1[3]);
  sub_ABD38();
  sub_1E1E00();
  v10 = v7;
  sub_ABD8C();
  sub_1E1CF0();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_ABD38()
{
  result = qword_2838A0;
  if (!qword_2838A0)
  {
    result = swift_getWitnessTable(aE_3, &type metadata for SearchMethodData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2838A0);
  }

  return result;
}

unint64_t sub_ABD8C()
{
  result = qword_2838A8;
  if (!qword_2838A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchMethod, &type metadata for SearchMethod, v0, v1);
    atomic_store(result, &qword_2838A8);
  }

  return result;
}

void SearchMethodData.init(from:)(BAEventReporter **a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_2838B0, &qword_1F2C68);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_48B8(a1, a1[3]);
  sub_ABD38();
  sub_1E1DF0();
  if (!v2)
  {
    sub_ABF4C();
    sub_1E1C20();
    (*(v6 + 8))(v8, v5);
    *a2 = v17;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t sub_ABF4C()
{
  result = qword_2838B8;
  if (!qword_2838B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchMethod, &type metadata for SearchMethod, v0, v1);
    atomic_store(result, &qword_2838B8);
  }

  return result;
}

unint64_t sub_ABFA4()
{
  result = qword_2838C0;
  if (!qword_2838C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchMethodData, &type metadata for SearchMethodData, v0, v1);
    atomic_store(result, &qword_2838C0);
  }

  return result;
}

unint64_t sub_ABFFC()
{
  result = qword_2838C8;
  if (!qword_2838C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchMethodData, &type metadata for SearchMethodData, v0, v1);
    atomic_store(result, &qword_2838C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ListeningActionSourceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ListeningActionSourceType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_AC1E4()
{
  result = qword_2838D0;
  if (!qword_2838D0)
  {
    result = swift_getWitnessTable(asc_1F2E0C, &type metadata for SearchMethodData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2838D0);
  }

  return result;
}

unint64_t sub_AC23C()
{
  result = qword_2838D8;
  if (!qword_2838D8)
  {
    result = swift_getWitnessTable(byte_1F2D7C, &type metadata for SearchMethodData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2838D8);
  }

  return result;
}

unint64_t sub_AC294()
{
  result = qword_2838E0;
  if (!qword_2838E0)
  {
    result = swift_getWitnessTable(byte_1F2DA4, &type metadata for SearchMethodData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2838E0);
  }

  return result;
}

uint64_t ContextualActionSheetExposureEvent.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContextualActionSheetExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContextualActionSheetExposureEvent.linkData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContextualActionSheetExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContextualActionSheetExposureEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContextualActionSheetExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContextualActionSheetExposureEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContextualActionSheetExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContextualActionSheetExposureEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContextualActionSheetExposureEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContextualActionSheetExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContextualActionSheetExposureEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContextualActionSheetExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ContextualActionSheetExposureEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

uint64_t ContextualActionSheetExposureEvent.Model.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 208);
  v3 = *(v1 + 176);
  v20 = *(v1 + 192);
  v21 = v2;
  v4 = *(v1 + 208);
  v22 = *(v1 + 224);
  v5 = *(v1 + 144);
  v7 = *(v1 + 112);
  v16 = *(v1 + 128);
  v6 = v16;
  v17 = v5;
  v8 = *(v1 + 144);
  v9 = *(v1 + 176);
  v18 = *(v1 + 160);
  v10 = v18;
  v19 = v9;
  v11 = *(v1 + 112);
  v15[0] = *(v1 + 96);
  v12 = v15[0];
  v15[1] = v11;
  *(a1 + 96) = v20;
  *(a1 + 112) = v4;
  *(a1 + 128) = *(v1 + 224);
  *(a1 + 32) = v6;
  *(a1 + 48) = v8;
  *(a1 + 64) = v10;
  *(a1 + 80) = v3;
  v23 = *(v1 + 240);
  *(a1 + 144) = *(v1 + 240);
  *a1 = v12;
  *(a1 + 16) = v7;
  return sub_275C4(v15, v14);
}

uint64_t ContextualActionSheetExposureEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContextualActionSheetExposureEvent.Model(0) + 24);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContextualActionSheetExposureEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContextualActionSheetExposureEvent.Model(0) + 28);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContextualActionSheetExposureEvent.Model.init(contentData:linkData:eventData:timedData:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a1[3];
  *(a5 + 32) = a1[2];
  *(a5 + 48) = v8;
  v9 = a1[5];
  *(a5 + 64) = a1[4];
  *(a5 + 80) = v9;
  v10 = a1[1];
  *a5 = *a1;
  *(a5 + 16) = v10;
  *(a5 + 240) = *(a2 + 144);
  v11 = *(a2 + 128);
  *(a5 + 208) = *(a2 + 112);
  *(a5 + 224) = v11;
  v12 = *(a2 + 96);
  *(a5 + 176) = *(a2 + 80);
  *(a5 + 192) = v12;
  v13 = *(a2 + 64);
  *(a5 + 144) = *(a2 + 48);
  *(a5 + 160) = v13;
  v14 = *(a2 + 32);
  *(a5 + 112) = *(a2 + 16);
  *(a5 + 128) = v14;
  *(a5 + 96) = *a2;
  v15 = type metadata accessor for ContextualActionSheetExposureEvent.Model(0);
  v16 = *(v15 + 24);
  v17 = sub_1E1150();
  (*(*(v17 - 8) + 32))(a5 + v16, a3, v17);
  v18 = *(v15 + 28);
  v19 = sub_1E11A0();
  v20 = *(*(v19 - 8) + 32);

  return v20(a5 + v18, a4, v19);
}

uint64_t sub_ACC0C()
{
  v1 = 0x44746E65746E6F63;
  v2 = 0x746144746E657665;
  if (*v0 != 2)
  {
    v2 = 0x74614464656D6974;
  }

  if (*v0)
  {
    v1 = 0x617461446B6E696CLL;
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

uint64_t sub_ACC98@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_AE394(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_ACCC0(uint64_t a1)
{
  v2 = sub_AD15C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_ACCFC(uint64_t a1)
{
  v2 = sub_AD15C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ContextualActionSheetExposureEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_283918, &qword_1F2E90);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - v6;
  sub_48B8(a1, a1[3]);
  sub_AD15C();
  sub_1E1E00();
  v8 = *(v2 + 48);
  v9 = *(v2 + 16);
  v58 = *(v2 + 32);
  v59 = v8;
  v10 = *(v2 + 48);
  v11 = *(v2 + 80);
  v60 = *(v2 + 64);
  v61 = v11;
  v12 = *(v2 + 16);
  v57[0] = *v2;
  v57[1] = v12;
  v53 = v58;
  v54 = v10;
  v13 = *(v2 + 80);
  v55 = v60;
  v56 = v13;
  v51 = v57[0];
  v52 = v9;
  v50 = 0;
  sub_13A5C(v57, &v40);
  sub_143D0();
  v14 = v62;
  sub_1E1CF0();
  if (v14)
  {
    v42 = v53;
    v43 = v54;
    v44 = v55;
    v45 = v56;
    v40 = v51;
    v41 = v52;
    sub_14424(&v40);
    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    v62 = v5;
    v39[2] = v53;
    v39[3] = v54;
    v39[4] = v55;
    v39[5] = v56;
    v39[0] = v51;
    v39[1] = v52;
    sub_14424(v39);
    v16 = *(v2 + 208);
    v17 = *(v2 + 176);
    v46 = *(v2 + 192);
    v47 = v16;
    v18 = *(v2 + 208);
    v48 = *(v2 + 224);
    v19 = *(v2 + 144);
    v20 = *(v2 + 112);
    v42 = *(v2 + 128);
    v43 = v19;
    v21 = *(v2 + 144);
    v22 = *(v2 + 176);
    v44 = *(v2 + 160);
    v45 = v22;
    v23 = *(v2 + 112);
    v40 = *(v2 + 96);
    v41 = v23;
    v35 = v46;
    v36 = v18;
    v37 = *(v2 + 224);
    v31 = v42;
    v32 = v21;
    v33 = v44;
    v34 = v17;
    v49 = *(v2 + 240);
    v38 = *(v2 + 240);
    v29 = v40;
    v30 = v20;
    v28 = 1;
    sub_275C4(&v40, v26);
    sub_18630();
    sub_1E1CF0();
    v26[6] = v35;
    v26[7] = v36;
    v26[8] = v37;
    v27 = v38;
    v26[2] = v31;
    v26[3] = v32;
    v26[4] = v33;
    v26[5] = v34;
    v26[0] = v29;
    v26[1] = v30;
    sub_283A8(v26);
    type metadata accessor for ContextualActionSheetExposureEvent.Model(0);
    v25 = 2;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
    v25 = 3;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    sub_1E1CF0();
    return (*(v62 + 8))(v7, 0);
  }
}

unint64_t sub_AD15C()
{
  result = qword_283920;
  if (!qword_283920)
  {
    result = swift_getWitnessTable(byte_1F307C, &type metadata for ContextualActionSheetExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_283920);
  }

  return result;
}

void ContextualActionSheetExposureEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v48 = sub_1E11A0();
  v45 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1150();
  v49 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3D68(&qword_283928, &qword_1F2E98);
  v50 = *(v7 - 8);
  v51 = v7;
  __chkstk_darwin(v7);
  v9 = &v43 - v8;
  v10 = type metadata accessor for ContextualActionSheetExposureEvent.Model(0);
  __chkstk_darwin(v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v68 = a1;
  sub_48B8(a1, v13);
  sub_AD15C();
  v52 = v9;
  v14 = v53;
  sub_1E1DF0();
  if (v14)
  {
    sub_4E48(v68, v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    v44 = v6;
    v22 = v50;
    v53 = v12;
    v66 = 0;
    sub_14CB8();
    sub_1E1C20();
    v23 = v67[3];
    v24 = v53;
    *(v53 + 2) = v67[2];
    *(v24 + 48) = v23;
    v25 = v67[5];
    *(v24 + 64) = v67[4];
    *(v24 + 80) = v25;
    v26 = v67[1];
    *v24 = v67[0];
    *(v24 + 16) = v26;
    v55[0] = 1;
    sub_18FA4();
    sub_1E1C20();
    v27 = v63;
    *(v24 + 192) = v62;
    *(v24 + 208) = v27;
    *(v24 + 224) = v64;
    *(v24 + 240) = v65;
    v28 = v59;
    *(v24 + 128) = v58;
    *(v24 + 144) = v28;
    v29 = v61;
    *(v24 + 160) = v60;
    *(v24 + 176) = v29;
    v30 = v57;
    *(v24 + 96) = v56;
    *(v24 + 112) = v30;
    v54 = 2;
    sub_4EE8(&qword_27D830, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    v43 = 0;
    sub_1E1C20();
    v31 = *(v49 + 32);
    v32 = v24 + *(v10 + 24);
    v33 = v44;
    v44 = v4;
    v31(v32, v33, v4);
    v54 = 3;
    sub_4EE8(&qword_27D838, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    v35 = v47;
    v34 = v48;
    sub_1E1C20();
    (*(v22 + 8))(v52, v51);
    (*(v45 + 32))(v24 + *(v10 + 28), v35, v34);
    sub_AD75C(v24, v46);
    sub_4E48(v68, v36, v37, v38, v39, v40, v41, v42);
    sub_AD7C0(v24);
  }
}

uint64_t sub_AD75C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextualActionSheetExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_AD7C0(uint64_t a1)
{
  v2 = type metadata accessor for ContextualActionSheetExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_AD8BC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v10, v4, v11);
}

uint64_t sub_ADA40(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27E488, &unk_1E5F90);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_ADC0C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27E488, &unk_1E5F90);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

void sub_ADDD0(uint64_t a1)
{
  sub_ADEF4(319, &qword_27E2C8, sub_14CB8, sub_143D0, &type metadata for ContentData);
  if (v1 <= 0x3F)
  {
    sub_ADEF4(319, &unk_27E588, sub_18FA4, sub_18630, &type metadata for LinkData);
    if (v2 <= 0x3F)
    {
      sub_5684(319);
      if (v3 <= 0x3F)
      {
        sub_5750(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_ADEF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_1E0C90();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_ADF84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_AE0BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_AE1E0(uint64_t a1)
{
  result = sub_1E1150();
  if (v2 <= 0x3F)
  {
    result = sub_1E11A0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_AE290()
{
  result = qword_283A60;
  if (!qword_283A60)
  {
    result = swift_getWitnessTable(byte_1F3054, &type metadata for ContextualActionSheetExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_283A60);
  }

  return result;
}

unint64_t sub_AE2E8()
{
  result = qword_283A68;
  if (!qword_283A68)
  {
    result = swift_getWitnessTable(asc_1F2FC4, &type metadata for ContextualActionSheetExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_283A68);
  }

  return result;
}

unint64_t sub_AE340()
{
  result = qword_283A70;
  if (!qword_283A70)
  {
    result = swift_getWitnessTable(aE_4, &type metadata for ContextualActionSheetExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_283A70);
  }

  return result;
}

uint64_t sub_AE394(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0xEB00000000617461;
  v11 = a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461;
  if (v11 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x617461446B6E696CLL && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 2;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
  {
    0xE900000000000061, v10, a3, a4, a5, a6, a7, a8;
    return 3;
  }

  else
  {
    v13 = sub_1E1D30();
    a2, v14, v15, v16, v17, v18, v19, v20;
    if (v13)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t CollectionRemoveEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CollectionRemoveEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CollectionRemoveEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CollectionRemoveEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CollectionRemoveEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_281010, &qword_1EC770);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for CollectionRemoveEvent(0) + 20);
  v5 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t CollectionRemoveEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CollectionRemoveEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CollectionRemoveEvent.Model.init(singleCollectionData:eventData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  v7 = *(type metadata accessor for CollectionRemoveEvent.Model(0) + 20);
  v8 = sub_1E1150();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t sub_AE94C()
{
  if (*v0)
  {
    return 0x746144746E657665;
  }

  else
  {
    return 0xD000000000000014;
  }
}

void sub_AE990(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, int64_t a6@<X5>, int64_t a7@<X6>, void *a8@<X7>, char *a9@<X8>)
{
  v12 = 0x8000000000214460;
  if (a1 == 0xD000000000000014 && 0x8000000000214460 == a2 || (sub_1E1D30() & 1) != 0)
  {
    a2, v12, a3, a4, a5, a6, a7, a8;
    v13 = 0;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {
    0xE900000000000061, v12, a3, a4, a5, a6, a7, a8;
    v13 = 1;
  }

  else
  {
    v14 = sub_1E1D30();
    a2, v15, v16, v17, v18, v19, v20, v21;
    if (v14)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }
  }

  *a9 = v13;
}

uint64_t sub_AEA80(uint64_t a1)
{
  v2 = sub_AECD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_AEABC(uint64_t a1)
{
  v2 = sub_AECD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CollectionRemoveEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_283AA8, &qword_1F30D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19[-v7];
  sub_48B8(a1, a1[3]);
  sub_AECD0();
  sub_1E1E00();
  v9 = v3[1];
  v10 = *(v3 + 4);
  v20 = *v3;
  v21 = v9;
  v22 = v10;
  v19[7] = 0;
  sub_12578();

  sub_1E1CF0();
  v21, v11, v12, v13, v14, v15, v16, v17;
  if (!v2)
  {
    type metadata accessor for CollectionRemoveEvent.Model(0);
    LOBYTE(v20) = 1;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_AECD0()
{
  result = qword_283AB0;
  if (!qword_283AB0)
  {
    result = swift_getWitnessTable(byte_1F3290, &type metadata for CollectionRemoveEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_283AB0);
  }

  return result;
}

void CollectionRemoveEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v36 = sub_1E1150();
  v33 = *(v36 - 8);
  __chkstk_darwin(v36);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_3D68(&qword_283AB8, &qword_1F30D8);
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v7 = &v31 - v6;
  v8 = type metadata accessor for CollectionRemoveEvent.Model(0);
  __chkstk_darwin(v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_48B8(a1, a1[3]);
  sub_AECD0();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1, v11, v12, v13, v14, v15, v16, v17);
  }

  else
  {
    v32 = v8;
    v18 = v10;
    v20 = v35;
    v19 = v36;
    v41 = 0;
    sub_12520();
    v21 = v37;
    sub_1E1C20();
    v22 = v39;
    v23 = v40;
    *v18 = v38;
    *(v18 + 8) = v22;
    *(v18 + 16) = v23;
    LOBYTE(v38) = 1;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    (*(v20 + 8))(v7, v21);
    (*(v33 + 32))(v18 + *(v32 + 20), v5, v19);
    sub_AF03C(v18, v34);
    sub_4E48(a1, v24, v25, v26, v27, v28, v29, v30);
    sub_AF0A0(v18);
  }
}

uint64_t sub_AF03C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollectionRemoveEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_AF0A0(uint64_t a1)
{
  v2 = type metadata accessor for CollectionRemoveEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_AF19C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_281010, &qword_1EC770);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v8 = *(*(v7 - 8) + 104);

  return v8(a2 + v6, v4, v7);
}

uint64_t sub_AF288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_281010, &qword_1EC770);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_AF3A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_281010, &qword_1EC770);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_AF4B8(uint64_t a1)
{
  sub_6D0D8(319);
  if (v1 <= 0x3F)
  {
    sub_5684(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_AF550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_AF610(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_AF6B4(uint64_t a1)
{
  result = sub_1E1150();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_AF744()
{
  result = qword_283BE0;
  if (!qword_283BE0)
  {
    result = swift_getWitnessTable(byte_1F3268, &type metadata for CollectionRemoveEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_283BE0);
  }

  return result;
}

unint64_t sub_AF79C()
{
  result = qword_283BE8;
  if (!qword_283BE8)
  {
    result = swift_getWitnessTable(aI_4, &type metadata for CollectionRemoveEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_283BE8);
  }

  return result;
}

unint64_t sub_AF7F4()
{
  result = qword_283BF0;
  if (!qword_283BF0)
  {
    result = swift_getWitnessTable(a1_3, &type metadata for CollectionRemoveEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_283BF0);
  }

  return result;
}

BookAnalytics::BooksGoalsData __swiftcall BooksGoalsData.init(booksCompletedCnt:lastBookCompletedDate:audioBooksCompletedCnt:lastAudioBookCompletedDate:)(Swift::Int32 booksCompletedCnt, Swift::Double lastBookCompletedDate, Swift::Int32 audioBooksCompletedCnt, Swift::Double lastAudioBookCompletedDate)
{
  *v4 = booksCompletedCnt;
  *(v4 + 8) = lastBookCompletedDate;
  *(v4 + 16) = audioBooksCompletedCnt;
  *(v4 + 24) = lastAudioBookCompletedDate;
  result.lastAudioBookCompletedDate = lastAudioBookCompletedDate;
  result.lastBookCompletedDate = lastBookCompletedDate;
  result.audioBooksCompletedCnt = audioBooksCompletedCnt;
  result.booksCompletedCnt = booksCompletedCnt;
  return result;
}

unint64_t sub_AF880()
{
  v1 = 0xD000000000000011;
  v2 = 0xD000000000000016;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000015;
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

uint64_t sub_AF8F4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_AFFAC(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_AF91C(uint64_t a1)
{
  v2 = sub_AFDDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_AF958(uint64_t a1)
{
  v2 = sub_AFDDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BooksGoalsData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_283BF8, &qword_1F32E0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;
  v10 = *(v1 + 16);
  sub_48B8(a1, a1[3]);
  sub_AFDDC();
  sub_1E1E00();
  v14 = 0;
  sub_1E1D00();
  if (!v2)
  {
    v13 = 1;
    sub_1E1CD0();
    v12 = 2;
    sub_1E1D00();
    v11 = 3;
    sub_1E1CD0();
  }

  return (*(v5 + 8))(v7, v4);
}

void BooksGoalsData.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_283C08, &qword_1F32E8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  sub_48B8(a1, a1[3]);
  sub_AFDDC();
  sub_1E1DF0();
  if (!v2)
  {
    v26 = 0;
    v16 = sub_1E1C30();
    v25 = 1;
    sub_1E1C00();
    v18 = v17;
    v24 = 2;
    v19 = sub_1E1C30();
    v23 = 3;
    sub_1E1C00();
    v21 = v20;
    (*(v6 + 8))(v8, v5);
    *a2 = v16;
    *(a2 + 8) = v18;
    *(a2 + 16) = v19;
    *(a2 + 24) = v21;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t sub_AFDDC()
{
  result = qword_283C00;
  if (!qword_283C00)
  {
    result = swift_getWitnessTable(byte_1F34C0, &type metadata for BooksGoalsData.CodingKeys, v0, v1);
    atomic_store(result, &qword_283C00);
  }

  return result;
}

uint64_t sub_AFE38(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_AFE58(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

unint64_t sub_AFEA8()
{
  result = qword_283C10;
  if (!qword_283C10)
  {
    result = swift_getWitnessTable(aO, &type metadata for BooksGoalsData.CodingKeys, v0, v1);
    atomic_store(result, &qword_283C10);
  }

  return result;
}

unint64_t sub_AFF00()
{
  result = qword_283C18;
  if (!qword_283C18)
  {
    result = swift_getWitnessTable(byte_1F3408, &type metadata for BooksGoalsData.CodingKeys, v0, v1);
    atomic_store(result, &qword_283C18);
  }

  return result;
}

unint64_t sub_AFF58()
{
  result = qword_283C20;
  if (!qword_283C20)
  {
    result = swift_getWitnessTable(byte_1F3430, &type metadata for BooksGoalsData.CodingKeys, v0, v1);
    atomic_store(result, &qword_283C20);
  }

  return result;
}

uint64_t sub_AFFAC(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0x80000000002159D0;
  if (a1 == 0xD000000000000011 && 0x80000000002159D0 == a2 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0x80000000002159F0;
    if (a1 == 0xD000000000000015 && 0x80000000002159F0 == a2 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v13 = 0x8000000000215A10;
      if (a1 == 0xD000000000000016 && 0x8000000000215A10 == a2 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else if (a1 == 0xD00000000000001ALL && 0x8000000000215A30 == a2)
      {
        a2, 0x8000000000215A30, a3, a4, a5, a6, a7, a8;
        return 3;
      }

      else
      {
        v14 = sub_1E1D30();
        a2, v15, v16, v17, v18, v19, v20, v21;
        if (v14)
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

uint64_t AudioPlaybackSpeedChangeEvent.audioPlaybackSpeedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioPlaybackSpeedChangeEvent(0) + 20);
  v4 = sub_3D68(&qword_283C58, &qword_1F3518);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioPlaybackSpeedChangeEvent.audioPlaybackSpeedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioPlaybackSpeedChangeEvent(0) + 20);
  v4 = sub_3D68(&qword_283C58, &qword_1F3518);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioPlaybackSpeedChangeEvent.listeningSessionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioPlaybackSpeedChangeEvent(0) + 24);
  v4 = sub_3D68(&qword_27F8D0, &unk_1F3520);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioPlaybackSpeedChangeEvent.listeningSessionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioPlaybackSpeedChangeEvent(0) + 24);
  v4 = sub_3D68(&qword_27F8D0, &unk_1F3520);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioPlaybackSpeedChangeEvent.listeningActionSourceData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioPlaybackSpeedChangeEvent(0) + 28);
  v4 = sub_3D68(&qword_27E1E0, &unk_2099E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioPlaybackSpeedChangeEvent.listeningActionSourceData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioPlaybackSpeedChangeEvent(0) + 28);
  v4 = sub_3D68(&qword_27E1E0, &unk_2099E0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioPlaybackSpeedChangeEvent.bitRateData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioPlaybackSpeedChangeEvent(0) + 32);
  v4 = sub_3D68(&qword_27E1E8, &unk_1F3530);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioPlaybackSpeedChangeEvent.bitRateData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioPlaybackSpeedChangeEvent(0) + 32);
  v4 = sub_3D68(&qword_27E1E8, &unk_1F3530);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioPlaybackSpeedChangeEvent.errorData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioPlaybackSpeedChangeEvent(0) + 36);
  v4 = sub_3D68(&qword_27E1F0, &unk_1ED4F0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioPlaybackSpeedChangeEvent.errorData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioPlaybackSpeedChangeEvent(0) + 36);
  v4 = sub_3D68(&qword_27E1F0, &unk_1ED4F0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioPlaybackSpeedChangeEvent.seriesData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioPlaybackSpeedChangeEvent(0) + 40);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioPlaybackSpeedChangeEvent.seriesData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioPlaybackSpeedChangeEvent(0) + 40);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioPlaybackSpeedChangeEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioPlaybackSpeedChangeEvent(0) + 44);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioPlaybackSpeedChangeEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioPlaybackSpeedChangeEvent(0) + 44);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioPlaybackSpeedChangeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for AudioPlaybackSpeedChangeEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_283C58, &qword_1F3518);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = sub_3D68(&qword_27F8D0, &unk_1F3520);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = sub_3D68(&qword_27E1E0, &unk_2099E0);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = sub_3D68(&qword_27E1E8, &unk_1F3530);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  v14 = sub_3D68(&qword_27E1F0, &unk_1ED4F0);
  (*(*(v14 - 8) + 104))(a1 + v13, v2, v14);
  v15 = v4[10];
  v16 = enum case for EventProperty.optional<A>(_:);
  v17 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v17 - 8) + 104))(a1 + v15, v16, v17);
  v18 = v4[11];
  v19 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v20 = *(*(v19 - 8) + 104);

  return v20(a1 + v18, v2, v19);
}

uint64_t AudioPlaybackSpeedChangeEvent.Model.listeningSessionData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 120);
  v7[0] = *(v1 + 104);
  v7[1] = v2;
  v8[0] = *(v1 + 136);
  v3 = v8[0];
  *(v8 + 10) = *(v1 + 146);
  v4 = *(v8 + 10);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 42) = v4;
  return sub_3D9DC(v7, &v6);
}

void AudioPlaybackSpeedChangeEvent.Model.bitRateData.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 168);
  v3 = *(v1 + 172);
  *a1 = *(v1 + 164);
  *(a1 + 4) = v2;
  *(a1 + 8) = v3;
}

uint64_t AudioPlaybackSpeedChangeEvent.Model.errorData.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[23];
  v3 = v1[24];
  v4 = v1[25];
  *a1 = v1[22];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t AudioPlaybackSpeedChangeEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioPlaybackSpeedChangeEvent.Model(0) + 44);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioPlaybackSpeedChangeEvent.Model.init(contentData:audioPlaybackSpeedData:listeningSessionData:listeningActionSourceData:bitRateData:errorData:seriesData:eventData:)@<X0>(_OWORD *a1@<X0>, void *a2@<X1>, _OWORD *a3@<X2>, __int16 *a4@<X3>, int *a5@<X4>, __int128 *a6@<X5>, _OWORD *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v11 = *a4;
  v12 = *a5;
  v13 = *(a5 + 4);
  v14 = a5[2];
  v15 = a1[3];
  *(a9 + 32) = a1[2];
  *(a9 + 48) = v15;
  v16 = a1[5];
  *(a9 + 64) = a1[4];
  *(a9 + 80) = v16;
  v17 = a1[1];
  *a9 = *a1;
  *(a9 + 16) = v17;
  *(a9 + 96) = *a2;
  v18 = a3[1];
  *(a9 + 104) = *a3;
  v19 = *a6;
  v20 = *(a6 + 2);
  v21 = *(a6 + 3);
  *(a9 + 120) = v18;
  *(a9 + 136) = a3[2];
  *(a9 + 146) = *(a3 + 42);
  *(a9 + 162) = v11;
  *(a9 + 164) = v12;
  *(a9 + 168) = v13;
  *(a9 + 172) = v14;
  *(a9 + 176) = v19;
  *(a9 + 192) = v20;
  *(a9 + 200) = v21;
  v22 = a7[1];
  *(a9 + 208) = *a7;
  *(a9 + 224) = v22;
  *(a9 + 240) = a7[2];
  v23 = *(type metadata accessor for AudioPlaybackSpeedChangeEvent.Model(0) + 44);
  v24 = sub_1E1150();
  v25 = *(*(v24 - 8) + 32);

  return v25(a9 + v23, a8, v24);
}

unint64_t sub_B1070()
{
  v1 = *v0;
  v2 = 0x44746E65746E6F63;
  v3 = 0x6144736569726573;
  if (v1 != 6)
  {
    v3 = 0x746144746E657665;
  }

  v4 = 0x4465746152746962;
  if (v1 != 4)
  {
    v4 = 0x746144726F727265;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000019;
  if (v1 == 2)
  {
    v5 = 0xD000000000000014;
  }

  if (*v0)
  {
    v2 = 0xD000000000000016;
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

uint64_t sub_B1180@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_B303C(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_B11B4(uint64_t a1)
{
  v2 = sub_B173C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_B11F0(uint64_t a1)
{
  v2 = sub_B173C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AudioPlaybackSpeedChangeEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_283C60, &qword_1F3540);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v45 - v6;
  sub_48B8(a1, a1[3]);
  sub_B173C();
  sub_1E1E00();
  v8 = *(v2 + 48);
  v9 = *(v2 + 16);
  v72 = *(v2 + 32);
  v73 = v8;
  v10 = *(v2 + 48);
  v11 = *(v2 + 80);
  v74 = *(v2 + 64);
  v75 = v11;
  v12 = *(v2 + 16);
  v71[0] = *v2;
  v71[1] = v12;
  v67 = v72;
  v68 = v10;
  v13 = *(v2 + 80);
  v69 = v74;
  v70 = v13;
  v65 = v71[0];
  v66 = v9;
  v64 = 0;
  sub_13A5C(v71, v63);
  sub_143D0();
  v14 = v76;
  sub_1E1CF0();
  v63[2] = v67;
  v63[3] = v68;
  v63[4] = v69;
  v63[5] = v70;
  v63[0] = v65;
  v63[1] = v66;
  sub_14424(v63);
  if (!v14)
  {
    v62 = *(v2 + 96);
    v61 = 1;
    sub_B1790();
    sub_1E1CF0();
    v16 = *(v2 + 120);
    v59[0] = *(v2 + 104);
    v59[1] = v16;
    v60[0] = *(v2 + 136);
    *(v60 + 10) = *(v2 + 146);
    v56 = *(v2 + 104);
    v17 = *(v2 + 136);
    v57 = *(v2 + 120);
    v58[0] = v17;
    *(v58 + 10) = *(v2 + 146);
    v55 = 2;
    sub_3D9DC(v59, v53);
    sub_3E638();
    sub_1E1CF0();
    v53[0] = v56;
    v53[1] = v57;
    *v54 = v58[0];
    *&v54[10] = *(v58 + 10);
    sub_3E68C(v53);
    LOWORD(v46) = *(v2 + 162);
    v52 = 3;
    sub_14520();
    sub_1E1CF0();
    v18 = *(v2 + 168);
    v19 = *(v2 + 172);
    LODWORD(v46) = *(v2 + 164);
    BYTE4(v46) = v18;
    LODWORD(v47) = v19;
    v52 = 4;
    sub_14574();
    sub_1E1CF0();
    v20 = *(v2 + 184);
    v21 = *(v2 + 192);
    v22 = *(v2 + 200);
    v46 = *(v2 + 176);
    v47 = v20;
    v48 = v21;
    v49 = v22;
    v52 = 5;
    sub_145C8();

    sub_1E1CF0();
    v23 = v47;
    v49, v24, v25, v26, v27, v28, v29, v30;
    v23, v31, v32, v33, v34, v35, v36, v37;
    v38 = *(v2 + 216);
    v39 = *(v2 + 224);
    v40 = *(v2 + 232);
    v41 = *(v2 + 240);
    v42 = *(v2 + 248);
    v46 = *(v2 + 208);
    v47 = v38;
    v48 = v39;
    v49 = v40;
    v50 = v41;
    v51 = v42;
    v52 = 6;
    sub_13BDC(v46, v38, v39, v40, v41, v42);
    sub_D57C();
    sub_1E1C80();
    sub_1461C(v46, v47, v48, v49, v50, v51, v43, v44);
    type metadata accessor for AudioPlaybackSpeedChangeEvent.Model(0);
    LOBYTE(v46) = 7;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_B173C()
{
  result = qword_283C68;
  if (!qword_283C68)
  {
    result = swift_getWitnessTable(a1_4, &type metadata for AudioPlaybackSpeedChangeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_283C68);
  }

  return result;
}

unint64_t sub_B1790()
{
  result = qword_283C70;
  if (!qword_283C70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AudioPlaybackSpeedData, &type metadata for AudioPlaybackSpeedData, v0, v1);
    atomic_store(result, &qword_283C70);
  }

  return result;
}

void AudioPlaybackSpeedChangeEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v4 = sub_1E1150();
  v41 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_3D68(&qword_283C78, &qword_1F3548);
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v8 = &v40 - v7;
  v9 = type metadata accessor for AudioPlaybackSpeedChangeEvent.Model(0);
  __chkstk_darwin(v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v61 = a1;
  sub_48B8(a1, v12);
  sub_B173C();
  v45 = v8;
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(v61, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    v40 = v9;
    v20 = v6;
    v21 = v11;
    v22 = v43;
    v23 = v42;
    v54 = 0;
    sub_14CB8();
    v24 = v44;
    sub_1E1C20();
    v25 = v58;
    *(v21 + 32) = v57;
    *(v21 + 48) = v25;
    v26 = v60;
    *(v21 + 64) = v59;
    *(v21 + 80) = v26;
    v27 = v56;
    *v21 = v55;
    *(v21 + 16) = v27;
    LOBYTE(v46) = 1;
    sub_B1F20();
    sub_1E1C20();
    *(v21 + 96) = v51;
    v50 = 2;
    sub_3F258();
    sub_1E1C20();
    v28 = v52;
    *(v21 + 104) = v51;
    *(v21 + 120) = v28;
    *(v21 + 136) = *v53;
    *(v21 + 146) = *&v53[10];
    v49 = 3;
    sub_14D60();
    sub_1E1C20();
    *(v21 + 162) = v46;
    v49 = 4;
    sub_14DB4();
    sub_1E1C20();
    v29 = BYTE4(v46);
    v30 = DWORD2(v46);
    *(v21 + 164) = v46;
    *(v21 + 168) = v29;
    *(v21 + 172) = v30;
    v49 = 5;
    sub_14E08();
    sub_1E1C20();
    v31 = v47;
    *(v21 + 176) = v46;
    *(v21 + 192) = v31;
    v49 = 6;
    sub_DAD8();
    sub_1E1BB0();
    v32 = v47;
    *(v21 + 208) = v46;
    *(v21 + 224) = v32;
    *(v21 + 240) = v48;
    LOBYTE(v46) = 7;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    (*(v23 + 8))(v45, v24);
    (*(v41 + 32))(v21 + *(v40 + 44), v20, v4);
    sub_B1F74(v21, v22);
    sub_4E48(v61, v33, v34, v35, v36, v37, v38, v39);
    sub_B1FD8(v21);
  }
}

unint64_t sub_B1F20()
{
  result = qword_283C80;
  if (!qword_283C80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AudioPlaybackSpeedData, &type metadata for AudioPlaybackSpeedData, v0, v1);
    atomic_store(result, &qword_283C80);
  }

  return result;
}

uint64_t sub_B1F74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioPlaybackSpeedChangeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_B1FD8(uint64_t a1)
{
  v2 = type metadata accessor for AudioPlaybackSpeedChangeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_B20D4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_283C58, &qword_1F3518);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = sub_3D68(&qword_27F8D0, &unk_1F3520);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = sub_3D68(&qword_27E1E0, &unk_2099E0);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = sub_3D68(&qword_27E1E8, &unk_1F3530);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  v15 = sub_3D68(&qword_27E1F0, &unk_1ED4F0);
  (*(*(v15 - 8) + 104))(a2 + v14, v4, v15);
  v16 = a1[10];
  v17 = enum case for EventProperty.optional<A>(_:);
  v18 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v18 - 8) + 104))(a2 + v16, v17, v18);
  v19 = a1[11];
  v20 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v21 = *(*(v20 - 8) + 104);

  return v21(a2 + v19, v4, v20);
}

uint64_t sub_B239C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_16:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_283C58, &qword_1F3518);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_15:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_16;
  }

  v14 = sub_3D68(&qword_27F8D0, &unk_1F3520);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_15;
  }

  v15 = sub_3D68(&qword_27E1E0, &unk_2099E0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_15;
  }

  v16 = sub_3D68(&qword_27E1E8, &unk_1F3530);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_15;
  }

  v17 = sub_3D68(&qword_27E1F0, &unk_1ED4F0);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_15;
  }

  v18 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_15;
  }

  v20 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v21 = *(*(v20 - 8) + 48);
  v22 = a1 + a3[11];

  return v21(v22, a2, v20);
}

uint64_t sub_B26B8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_16:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_283C58, &qword_1F3518);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_15:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_16;
  }

  v16 = sub_3D68(&qword_27F8D0, &unk_1F3520);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_15;
  }

  v17 = sub_3D68(&qword_27E1E0, &unk_2099E0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_15;
  }

  v18 = sub_3D68(&qword_27E1E8, &unk_1F3530);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_15;
  }

  v19 = sub_3D68(&qword_27E1F0, &unk_1ED4F0);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_15;
  }

  v20 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_15;
  }

  v22 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v23 = *(*(v22 - 8) + 56);
  v24 = a1 + a4[11];

  return v23(v24, a2, a2, v22);
}

void sub_B29CC(uint64_t a1)
{
  sub_B2C68(319, &qword_27E2C8, sub_14CB8, sub_143D0, &type metadata for ContentData);
  if (v1 <= 0x3F)
  {
    sub_B2C68(319, &unk_283CF0, sub_B1F20, sub_B1790, &type metadata for AudioPlaybackSpeedData);
    if (v2 <= 0x3F)
    {
      sub_B2C68(319, &qword_27F998, sub_3F258, sub_3E638, &type metadata for ListeningSessionData);
      if (v3 <= 0x3F)
      {
        sub_B2C68(319, &qword_27E2D8, sub_14D60, sub_14520, &type metadata for ListeningActionSourceData);
        if (v4 <= 0x3F)
        {
          sub_B2C68(319, &qword_27E2E0, sub_14DB4, sub_14574, &type metadata for BitRateData);
          if (v5 <= 0x3F)
          {
            sub_B2C68(319, &unk_27E2E8, sub_14E08, sub_145C8, &type metadata for ErrorData);
            if (v6 <= 0x3F)
            {
              sub_B2C68(319, &qword_27DE18, sub_DAD8, sub_D57C, &type metadata for SeriesData);
              if (v7 <= 0x3F)
              {
                sub_5684(319);
                if (v8 <= 0x3F)
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

void sub_B2C68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_1E0C90();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_B2CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_B2DB8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_B2E5C(uint64_t a1)
{
  sub_15D04();
  if (v1 <= 0x3F)
  {
    sub_1E1150();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_B2F38()
{
  result = qword_283DE0;
  if (!qword_283DE0)
  {
    result = swift_getWitnessTable(aI_5, &type metadata for AudioPlaybackSpeedChangeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_283DE0);
  }

  return result;
}

unint64_t sub_B2F90()
{
  result = qword_283DE8;
  if (!qword_283DE8)
  {
    result = swift_getWitnessTable(byte_1F3690, &type metadata for AudioPlaybackSpeedChangeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_283DE8);
  }

  return result;
}

unint64_t sub_B2FE8()
{
  result = qword_283DF0;
  if (!qword_283DF0)
  {
    result = swift_getWitnessTable(aY_6, &type metadata for AudioPlaybackSpeedChangeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_283DF0);
  }

  return result;
}

uint64_t sub_B303C(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461;
  if (v10 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0x8000000000215A50;
    if (a1 == 0xD000000000000016 && 0x8000000000215A50 == a2 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v13 = 0x8000000000213D80;
      if (a1 == 0xD000000000000014 && 0x8000000000213D80 == a2 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else
      {
        v14 = 0x8000000000213970;
        if (a1 == 0xD000000000000019 && 0x8000000000213970 == a2 || (sub_1E1D30() & 1) != 0)
        {
          a2, v14, a3, a4, a5, a6, a7, a8;
          return 3;
        }

        else if (a1 == 0x4465746152746962 && a2 == 0xEB00000000617461 || (sub_1E1D30() & 1) != 0)
        {
          a2, v14, a3, a4, a5, a6, a7, a8;
          return 4;
        }

        else if (a1 == 0x746144726F727265 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
        {
          a2, v14, a3, a4, a5, a6, a7, a8;
          return 5;
        }

        else if (a1 == 0x6144736569726573 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
        {
          a2, v14, a3, a4, a5, a6, a7, a8;
          return 6;
        }

        else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
        {
          0xE900000000000061, v14, a3, a4, a5, a6, a7, a8;
          return 7;
        }

        else
        {
          v15 = sub_1E1D30();
          a2, v16, v17, v18, v19, v20, v21, v22;
          if (v15)
          {
            return 7;
          }

          else
          {
            return 8;
          }
        }
      }
    }
  }
}

uint64_t ClickEvent.clickData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_283E28, &qword_1F3798);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ClickEvent.clickData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_283E28, &qword_1F3798);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ClickEvent.pageData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ClickEvent(0) + 20);
  v4 = sub_3D68(&qword_27E480, &unk_1E71C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ClickEvent.pageData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ClickEvent(0) + 20);
  v4 = sub_3D68(&qword_27E480, &unk_1E71C0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ClickEvent.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ClickEvent(0) + 24);
  v4 = sub_3D68(&qword_27E478, &unk_1E5F80);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ClickEvent.sectionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ClickEvent(0) + 24);
  v4 = sub_3D68(&qword_27E478, &unk_1E5F80);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ClickEvent.flowcaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ClickEvent(0) + 28);
  v4 = sub_3D68(&qword_27EEC8, &unk_1E7C18);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ClickEvent.flowcaseData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ClickEvent(0) + 28);
  v4 = sub_3D68(&qword_27EEC8, &unk_1E7C18);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ClickEvent.brickData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ClickEvent(0) + 32);
  v4 = sub_3D68(&qword_283E30, &qword_20A0C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ClickEvent.brickData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ClickEvent(0) + 32);
  v4 = sub_3D68(&qword_283E30, &qword_20A0C0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ClickEvent.contentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ClickEvent(0) + 36);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ClickEvent.contentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ClickEvent(0) + 36);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ClickEvent.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ClickEvent(0) + 40);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ClickEvent.upSellData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ClickEvent(0) + 40);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ClickEvent.seriesData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ClickEvent(0) + 44);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ClickEvent.seriesData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ClickEvent(0) + 44);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ClickEvent.locationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ClickEvent(0) + 48);
  v4 = sub_3D68(&qword_283E38, &unk_209560);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ClickEvent.locationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ClickEvent(0) + 48);
  v4 = sub_3D68(&qword_283E38, &unk_209560);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ClickEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ClickEvent(0) + 52);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ClickEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ClickEvent(0) + 52);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ClickEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_283E28, &qword_1F3798);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ClickEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27E480, &unk_1E71C0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = sub_3D68(&qword_27E478, &unk_1E5F80);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = enum case for EventProperty.optional<A>(_:);
  v11 = sub_3D68(&qword_27EEC8, &unk_1E7C18);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_283E30, &qword_20A0C0);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  v15 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v15 - 8) + 104))(a1 + v14, v10, v15);
  v16 = v4[10];
  v17 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v17 - 8) + 104))(a1 + v16, v10, v17);
  v18 = v4[11];
  v19 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v19 - 8) + 104))(a1 + v18, v10, v19);
  v20 = v4[12];
  v21 = sub_3D68(&qword_283E38, &unk_209560);
  (*(*(v21 - 8) + 104))(a1 + v20, v10, v21);
  v22 = v4[13];
  v23 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v24 = *(*(v23 - 8) + 104);

  return v24(a1 + v22, v2, v23);
}

uint64_t ClickEvent.Model.clickData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_B4464(v7, &v6);
}

uint64_t ClickEvent.Model.pageData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  *a1 = *(v1 + 64);
  *(a1 + 8) = *(v1 + 72);
  *(a1 + 24) = v2;
}

uint64_t ClickEvent.Model.sectionData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[11];
  v13 = v1[10];
  v2 = v13;
  v14 = v3;
  v15 = v1[12];
  v4 = v15;
  v5 = v1[7];
  v10[0] = v1[6];
  v10[1] = v5;
  v6 = v1[9];
  v11 = v1[8];
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  a1[1] = v5;
  a1[2] = v7;
  a1[3] = v6;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  return sub_274D4(v10, &v9);
}

uint64_t ClickEvent.Model.flowcaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 256);
  v9 = *(v1 + 240);
  v10 = v2;
  v11 = *(v1 + 272);
  v3 = v11;
  v4 = *(v1 + 224);
  v8[0] = *(v1 + 208);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_17AA4(v8, v7, &qword_282CC0, &qword_1F62B0);
}

void ClickEvent.Model.brickData.getter(uint64_t *a1@<X8>)
{
  v2 = v1[35];
  v3 = v1[36];
  v4 = v1[37];
  v5 = v1[38];
  v6 = v1[39];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  sub_B45E0(v2, v3, v4, v5, v6);
}

void sub_B45E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }
}

uint64_t ClickEvent.Model.contentData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[23];
  v10 = v1[22];
  v11 = v2;
  v4 = v1[25];
  v12 = v1[24];
  v3 = v12;
  v13 = v4;
  v6 = v1[21];
  v9[0] = v1[20];
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_17AA4(v9, &v8, &qword_27FD08, &qword_1E94F0);
}

uint64_t ClickEvent.Model.seriesData.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[55];
  v3 = v1[56];
  v4 = v1[57];
  v5 = v1[58];
  v6 = v1[59];
  v7 = v1[60];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_13BDC(v2, v3, v4, v5, v6, v7);
}

uint64_t ClickEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ClickEvent.Model(0) + 52);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ClickEvent.Model.init(clickData:pageData:sectionData:flowcaseData:brickData:contentData:upSellData:seriesData:locationData:eventData:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t a11)
{
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  v14 = *(a5 + 32);
  v15 = (a9 + 280);
  v16 = *(a7 + 16);
  v17 = *a10;
  v18 = a1[1];
  *a9 = *a1;
  *(a9 + 16) = v18;
  v19 = a1[3];
  *(a9 + 32) = a1[2];
  *(a9 + 48) = v19;
  *(a9 + 64) = *a2;
  *(a9 + 80) = v12;
  *(a9 + 88) = v13;
  v20 = a3[5];
  *(a9 + 160) = a3[4];
  *(a9 + 176) = v20;
  v21 = a3[6];
  v22 = a3[1];
  *(a9 + 96) = *a3;
  *(a9 + 112) = v22;
  v23 = a3[3];
  *(a9 + 128) = a3[2];
  *(a9 + 144) = v23;
  v24 = *a4;
  v25 = a4[1];
  *(a9 + 192) = v21;
  *(a9 + 208) = v24;
  v26 = a4[2];
  v27 = a4[3];
  *(a9 + 272) = *(a4 + 8);
  *(a9 + 240) = v26;
  *(a9 + 256) = v27;
  *(a9 + 224) = v25;
  v28 = *(a5 + 16);
  *v15 = *a5;
  v15[1] = v28;
  *(a9 + 312) = v14;
  v29 = a6[1];
  *(a9 + 320) = *a6;
  *(a9 + 336) = v29;
  v30 = a6[5];
  *(a9 + 384) = a6[4];
  *(a9 + 400) = v30;
  v31 = a6[3];
  *(a9 + 352) = a6[2];
  *(a9 + 368) = v31;
  *(a9 + 416) = *a7;
  *(a9 + 432) = v16;
  v32 = a8[1];
  v15[10] = *a8;
  v15[11] = v32;
  v15[12] = a8[2];
  *(a9 + 488) = v17;
  v33 = *(type metadata accessor for ClickEvent.Model(0) + 52);
  v34 = sub_1E1150();
  v35 = *(*(v34 - 8) + 32);

  return v35(a9 + v33, a11, v34);
}

uint64_t sub_B4870(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6144736569726573;
    v6 = 0x6E6F697461636F6CLL;
    if (a1 != 8)
    {
      v6 = 0x746144746E657665;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x44746E65746E6F63;
    if (a1 != 5)
    {
      v7 = 0x61446C6C65537075;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x7461446B63696C63;
    v2 = 0x446E6F6974636573;
    v3 = 0x65736163776F6C66;
    if (a1 != 3)
    {
      v3 = 0x7461446B63697262;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6174614465676170;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_B49CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_B70C0(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_B49F4(uint64_t a1)
{
  v2 = sub_B5170();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_B4A30(uint64_t a1)
{
  v2 = sub_B5170();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ClickEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_283E40, &qword_1F37A0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v70 - v7;
  sub_48B8(a1, a1[3]);
  sub_B5170();
  sub_1E1E00();
  v9 = v3[1];
  v126[0] = *v3;
  v126[1] = v9;
  v10 = v3[3];
  v12 = *v3;
  v11 = v3[1];
  v126[2] = v3[2];
  v126[3] = v10;
  v122 = v12;
  v123 = v11;
  v13 = v3[3];
  v124 = v3[2];
  v125 = v13;
  v133 = 0;
  sub_B4464(v126, &v111);
  sub_B51C4();
  sub_1E1CF0();
  if (v2)
  {
    v111 = v122;
    v112 = v123;
    v113 = v124;
    v114 = v125;
    sub_B5218(&v111);
  }

  else
  {
    v121[0] = v122;
    v121[1] = v123;
    v121[2] = v124;
    v121[3] = v125;
    sub_B5218(v121);
    v14 = *(v3 + 11);
    v118 = *(v3 + 8);
    v119 = *(v3 + 72);
    v120 = v14;
    v132 = 1;
    sub_18598();

    sub_1E1CF0();
    v15 = v119;
    v120, v16, v17, v18, v19, v20, v21, v22;
    v15, v23, v24, v25, v26, v27, v28, v29;
    v30 = v3[9];
    v31 = v3[11];
    v115 = v3[10];
    v116 = v31;
    v32 = v3[11];
    v117 = v3[12];
    v33 = v3[7];
    v111 = v3[6];
    v112 = v33;
    v34 = v3[9];
    v36 = v3[6];
    v35 = v3[7];
    v113 = v3[8];
    v114 = v34;
    v108 = v115;
    v109 = v32;
    v110 = v3[12];
    v104 = v36;
    v105 = v35;
    v106 = v113;
    v107 = v30;
    v131 = 2;
    sub_274D4(&v111, v103);
    sub_18544();
    sub_1E1CF0();
    v103[4] = v108;
    v103[5] = v109;
    v103[6] = v110;
    v103[0] = v104;
    v103[1] = v105;
    v103[2] = v106;
    v103[3] = v107;
    sub_28354(v103);
    v37 = v3[14];
    v38 = v3[16];
    v100 = v3[15];
    v101 = v38;
    v39 = v3[14];
    v99[0] = v3[13];
    v99[1] = v39;
    v40 = v3[16];
    v96 = v100;
    v97 = v40;
    v102 = *(v3 + 34);
    v98 = *(v3 + 34);
    v94 = v99[0];
    v95 = v37;
    v130 = 3;
    sub_17AA4(v99, v82, &qword_282CC0, &qword_1F62B0);
    sub_1C860();
    sub_1E1C80();
    v92[2] = v96;
    v92[3] = v97;
    v93 = v98;
    v92[0] = v94;
    v92[1] = v95;
    sub_18E48(v92, &qword_282CC0, &qword_1F62B0);
    v41 = *(v3 + 36);
    v42 = *(v3 + 37);
    v43 = *(v3 + 38);
    v44 = *(v3 + 39);
    v87 = *(v3 + 35);
    v88 = v41;
    v89 = v42;
    v90 = v43;
    v91 = v44;
    v129 = 4;
    sub_B45E0(v87, v41, v42, v43, v44);
    sub_B526C();
    sub_1E1C80();
    sub_B52C0(v87, v88, v89, v90, v91, v45, v46, v47);
    v48 = v3[23];
    v49 = v3[21];
    v83 = v3[22];
    v84 = v48;
    v50 = v3[23];
    v51 = v3[25];
    v85 = v3[24];
    v86 = v51;
    v52 = v3[21];
    v82[0] = v3[20];
    v82[1] = v52;
    v78 = v83;
    v79 = v50;
    v53 = v3[25];
    v80 = v85;
    v81 = v53;
    v76 = v82[0];
    v77 = v49;
    v128 = 5;
    sub_17AA4(v82, v75, &qword_27FD08, &qword_1E94F0);
    sub_143D0();
    sub_1E1C80();
    v75[2] = v78;
    v75[3] = v79;
    v75[4] = v80;
    v75[5] = v81;
    v75[0] = v76;
    v75[1] = v77;
    sub_18E48(v75, &qword_27FD08, &qword_1E94F0);
    v54 = *(v3 + 54);
    v70 = v3[26];
    v71 = v54;
    v127 = 6;
    sub_28450();

    sub_1E1C80();
    v71, v55, v56, v57, v58, v59, v60, v61;
    v62 = *(v3 + 56);
    v63 = *(v3 + 57);
    v64 = *(v3 + 58);
    v65 = *(v3 + 59);
    v66 = *(v3 + 60);
    *&v70 = *(v3 + 55);
    *(&v70 + 1) = v62;
    v71 = v63;
    v72 = v64;
    v73 = v65;
    v74 = v66;
    v127 = 7;
    sub_13BDC(v70, v62, v63, v64, v65, v66);
    sub_D57C();
    sub_1E1C80();
    sub_1461C(v70, *(&v70 + 1), v71, v72, v73, v74, v67, v68);
    LOBYTE(v70) = *(v3 + 488);
    v127 = 8;
    sub_B5304();
    sub_1E1C80();
    type metadata accessor for ClickEvent.Model(0);
    LOBYTE(v70) = 9;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_B5170()
{
  result = qword_283E48;
  if (!qword_283E48)
  {
    result = swift_getWitnessTable(aS, &type metadata for ClickEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_283E48);
  }

  return result;
}

unint64_t sub_B51C4()
{
  result = qword_283E50;
  if (!qword_283E50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ClickData, &type metadata for ClickData, v0, v1);
    atomic_store(result, &qword_283E50);
  }

  return result;
}

unint64_t sub_B526C()
{
  result = qword_283E58;
  if (!qword_283E58)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BrickData, &type metadata for BrickData, v0, v1);
    atomic_store(result, &qword_283E58);
  }

  return result;
}

void sub_B52C0(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, BAEventReporter *a5, int64_t a6, int64_t a7, void *a8)
{
  if (a2)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;

    a5, v9, v10, v11, v12, v13, v14, v15;
  }
}

unint64_t sub_B5304()
{
  result = qword_283E60;
  if (!qword_283E60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LocationData, &type metadata for LocationData, v0, v1);
    atomic_store(result, &qword_283E60);
  }

  return result;
}

void ClickEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = sub_1E1150();
  v50 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_3D68(&qword_283E68, &qword_1F37A8);
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v7 = v45 - v6;
  v8 = type metadata accessor for ClickEvent.Model(0);
  __chkstk_darwin(v8);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v55 = a1;
  sub_48B8(a1, v11);
  sub_B5170();
  v53 = v7;
  v12 = v56;
  sub_1E1DF0();
  if (v12)
  {
    sub_4E48(v55, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    v47 = v8;
    v48 = v5;
    v49 = v3;
    v56 = v10;
    v20 = v52;
    v85 = 0;
    sub_B5BB8();
    sub_1E1C20();
    v21 = v72;
    v22 = v56;
    *v56 = v71;
    v22[1] = v21;
    v23 = v74;
    v22[2] = v73;
    v22[3] = v23;
    LOBYTE(v60) = 1;
    sub_18F50();
    sub_1E1C20();
    v24 = *&v75[24];
    *(v22 + 8) = *v75;
    v46 = *&v75[8];
    *(v22 + 72) = *&v75[8];
    v45[1] = v24;
    *(v22 + 11) = v24;
    v84 = 2;
    sub_18EFC();
    sub_1E1C20();
    v25 = v79;
    v22[10] = v78;
    v22[11] = v25;
    v22[12] = v80;
    v26 = *&v75[16];
    v22[6] = *v75;
    v22[7] = v26;
    v27 = v77;
    v22[8] = v76;
    v22[9] = v27;
    v83 = 3;
    sub_1C808();
    sub_1E1BB0();
    v28 = v69;
    v22[15] = v68;
    v22[16] = v28;
    *(v22 + 34) = v70;
    v29 = v67;
    v22[13] = v66;
    v22[14] = v29;
    LOBYTE(v57) = 4;
    sub_B5C0C();
    sub_1E1BB0();
    v30 = v62;
    v31 = v61;
    *(v22 + 280) = v60;
    *(v22 + 296) = v31;
    *(v22 + 39) = v30;
    v82 = 5;
    sub_14CB8();
    sub_1E1BB0();
    v32 = v63;
    v22[22] = v62;
    v22[23] = v32;
    v33 = v65;
    v22[24] = v64;
    v22[25] = v33;
    v34 = v61;
    v22[20] = v60;
    v22[21] = v34;
    v81 = 6;
    sub_28EF4();
    sub_1E1BB0();
    LODWORD(v46) = 1;
    v35 = v58;
    v22[26] = v57;
    *(v22 + 54) = v35;
    v81 = 7;
    sub_DAD8();
    sub_1E1BB0();
    v36 = v58;
    *(v22 + 440) = v57;
    *(v22 + 456) = v36;
    *(v22 + 472) = v59;
    v81 = 8;
    sub_B5C60();
    sub_1E1BB0();
    *(v22 + 488) = v57;
    LOBYTE(v57) = 9;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    (*(v20 + 8))(v53, v54);
    v37 = v56;
    (*(v50 + 32))(v56 + *(v47 + 52), v48, v49);
    sub_B5CB4(v37, v51);
    sub_4E48(v55, v38, v39, v40, v41, v42, v43, v44);
    sub_B5D18(v37);
  }
}

unint64_t sub_B5BB8()
{
  result = qword_283E70;
  if (!qword_283E70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ClickData, &type metadata for ClickData, v0, v1);
    atomic_store(result, &qword_283E70);
  }

  return result;
}

unint64_t sub_B5C0C()
{
  result = qword_283E78;
  if (!qword_283E78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BrickData, &type metadata for BrickData, v0, v1);
    atomic_store(result, &qword_283E78);
  }

  return result;
}

unint64_t sub_B5C60()
{
  result = qword_283E80;
  if (!qword_283E80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LocationData, &type metadata for LocationData, v0, v1);
    atomic_store(result, &qword_283E80);
  }

  return result;
}

uint64_t sub_B5CB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClickEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_B5D18(uint64_t a1)
{
  v2 = type metadata accessor for ClickEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_B5E14@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_283E28, &qword_1F3798);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27E480, &unk_1E71C0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = sub_3D68(&qword_27E478, &unk_1E5F80);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = enum case for EventProperty.optional<A>(_:);
  v12 = sub_3D68(&qword_27EEC8, &unk_1E7C18);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_283E30, &qword_20A0C0);
  (*(*(v14 - 8) + 104))(a2 + v13, v11, v14);
  v15 = a1[9];
  v16 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v16 - 8) + 104))(a2 + v15, v11, v16);
  v17 = a1[10];
  v18 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v18 - 8) + 104))(a2 + v17, v11, v18);
  v19 = a1[11];
  v20 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v20 - 8) + 104))(a2 + v19, v11, v20);
  v21 = a1[12];
  v22 = sub_3D68(&qword_283E38, &unk_209560);
  (*(*(v22 - 8) + 104))(a2 + v21, v11, v22);
  v23 = a1[13];
  v24 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v25 = *(*(v24 - 8) + 104);

  return v25(a2 + v23, v4, v24);
}

uint64_t sub_B6174(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_283E28, &qword_1F3798);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_20:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27E480, &unk_1E71C0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_19:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_20;
  }

  v14 = sub_3D68(&qword_27E478, &unk_1E5F80);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_19;
  }

  v15 = sub_3D68(&qword_27EEC8, &unk_1E7C18);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_19;
  }

  v16 = sub_3D68(&qword_283E30, &qword_20A0C0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_19;
  }

  v17 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_19;
  }

  v18 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_19;
  }

  v19 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_19;
  }

  v20 = sub_3D68(&qword_283E38, &unk_209560);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_19;
  }

  v22 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v23 = *(*(v22 - 8) + 48);
  v24 = a1 + a3[13];

  return v23(v24, a2, v22);
}

uint64_t sub_B6538(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_283E28, &qword_1F3798);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_20:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27E480, &unk_1E71C0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_19:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_20;
  }

  v16 = sub_3D68(&qword_27E478, &unk_1E5F80);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_19;
  }

  v17 = sub_3D68(&qword_27EEC8, &unk_1E7C18);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_19;
  }

  v18 = sub_3D68(&qword_283E30, &qword_20A0C0);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_19;
  }

  v19 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_19;
  }

  v20 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_19;
  }

  v21 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_19;
  }

  v22 = sub_3D68(&qword_283E38, &unk_209560);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_19;
  }

  v24 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v25 = *(*(v24 - 8) + 56);
  v26 = a1 + a4[13];

  return v25(v26, a2, a2, v24);
}

void sub_B68F4(uint64_t a1)
{
  sub_B6C30(319, &qword_283EF0, sub_B5BB8, sub_B51C4, &type metadata for ClickData);
  if (v1 <= 0x3F)
  {
    sub_B6C30(319, &qword_27E580, sub_18F50, sub_18598, &type metadata for PageData);
    if (v2 <= 0x3F)
    {
      sub_B6C30(319, &qword_27E578, sub_18EFC, sub_18544, &type metadata for SectionData);
      if (v3 <= 0x3F)
      {
        sub_B6C30(319, &qword_27EF68, sub_1C808, sub_1C860, &type metadata for FlowcaseData);
        if (v4 <= 0x3F)
        {
          sub_B6C30(319, &qword_283EF8, sub_B5C0C, sub_B526C, &type metadata for BrickData);
          if (v5 <= 0x3F)
          {
            sub_B6C30(319, &qword_27E2C8, sub_14CB8, sub_143D0, &type metadata for ContentData);
            if (v6 <= 0x3F)
            {
              sub_B6C30(319, &qword_27EAE8, sub_28EF4, sub_28450, &type metadata for UpSellData);
              if (v7 <= 0x3F)
              {
                sub_B6C30(319, &qword_27DE18, sub_DAD8, sub_D57C, &type metadata for SeriesData);
                if (v8 <= 0x3F)
                {
                  sub_B6C30(319, &qword_283F00, sub_B5C60, sub_B5304, &type metadata for LocationData);
                  if (v9 <= 0x3F)
                  {
                    sub_5684(319);
                    if (v10 <= 0x3F)
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

void sub_B6C30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_1E0C90();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_B6CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_B6D80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_B6E24(uint64_t a1)
{
  sub_19FE0(319, &unk_282E10, &type metadata for FlowcaseData);
  if (v1 <= 0x3F)
  {
    sub_19FE0(319, &qword_283FB8, &type metadata for BrickData);
    if (v2 <= 0x3F)
    {
      sub_19FE0(319, &qword_27FE30, &type metadata for ContentData);
      if (v3 <= 0x3F)
      {
        sub_19FE0(319, &qword_27EBC8, &type metadata for UpSellData);
        if (v4 <= 0x3F)
        {
          sub_19FE0(319, &qword_27E398, &type metadata for SeriesData);
          if (v5 <= 0x3F)
          {
            sub_19FE0(319, &unk_283FC0, &type metadata for LocationData);
            if (v6 <= 0x3F)
            {
              sub_1E1150();
              if (v7 <= 0x3F)
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

unint64_t sub_B6FBC()
{
  result = qword_284010;
  if (!qword_284010)
  {
    result = swift_getWitnessTable(asc_1F398C, &type metadata for ClickEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_284010);
  }

  return result;
}

unint64_t sub_B7014()
{
  result = qword_284018;
  if (!qword_284018)
  {
    result = swift_getWitnessTable(asc_1F38FC, &type metadata for ClickEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_284018);
  }

  return result;
}

unint64_t sub_B706C()
{
  result = qword_284020;
  if (!qword_284020)
  {
    result = swift_getWitnessTable(asc_1F3924, &type metadata for ClickEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_284020);
  }

  return result;
}

uint64_t sub_B70C0(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v9 = a1 == 0x7461446B63696C63 && a2 == 0xE900000000000061;
  if (v9 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x6174614465676170 && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else if (a1 == 0x446E6F6974636573 && a2 == 0xEB00000000617461 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 2;
  }

  else if (a1 == 0x65736163776F6C66 && a2 == 0xEC00000061746144 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 3;
  }

  else if (a1 == 0x7461446B63697262 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 4;
  }

  else if (a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 5;
  }

  else if (a1 == 0x61446C6C65537075 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 6;
  }

  else if (a1 == 0x6144736569726573 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 7;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEC00000061746144 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 8;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {
    0xE900000000000061, a2, a3, a4, a5, a6, a7, a8;
    return 9;
  }

  else
  {
    v12 = sub_1E1D30();
    a2, v13, v14, v15, v16, v17, v18, v19;
    if (v12)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t DialogActionEvent.dialogData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_284058, &qword_1F3A10);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DialogActionEvent.dialogData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_284058, &qword_1F3A10);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t DialogActionEvent.dialogActionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DialogActionEvent(0) + 20);
  v4 = sub_3D68(&qword_284060, &unk_1F3A18);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DialogActionEvent.dialogActionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DialogActionEvent(0) + 20);
  v4 = sub_3D68(&qword_284060, &unk_1F3A18);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DialogActionEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DialogActionEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DialogActionEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DialogActionEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DialogActionEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_284058, &qword_1F3A10);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for DialogActionEvent(0);
  v5 = *(v4 + 20);
  v6 = sub_3D68(&qword_284060, &unk_1F3A18);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  v8 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t DialogActionEvent.Model.dialogActionData.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

uint64_t DialogActionEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DialogActionEvent.Model(0) + 24);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DialogActionEvent.Model.init(dialogData:dialogActionData:eventData:)@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  *a4 = *a1;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7;
  v8 = *(type metadata accessor for DialogActionEvent.Model(0) + 24);
  v9 = sub_1E1150();
  v10 = *(*(v9 - 8) + 32);

  return v10(a4 + v8, a3, v9);
}

unint64_t sub_B7AE8()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x746144746E657665;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6144676F6C616964;
  }
}

uint64_t sub_B7B50@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_B8C98(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_B7B78(uint64_t a1)
{
  v2 = sub_B7E00();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_B7BB4(uint64_t a1)
{
  v2 = sub_B7E00();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DialogActionEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_284068, &qword_1F3A28);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_48B8(a1, a1[3]);
  sub_B7E00();
  sub_1E1E00();
  LOBYTE(v19) = *v3;
  v21 = 0;
  sub_411FC();
  sub_1E1CF0();
  if (!v2)
  {
    v9 = *(v3 + 16);
    v19 = *(v3 + 8);
    v20 = v9;
    v21 = 1;
    sub_B7E54();

    sub_1E1CF0();
    v20, v10, v11, v12, v13, v14, v15, v16;
    type metadata accessor for DialogActionEvent.Model(0);
    LOBYTE(v19) = 2;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_B7E00()
{
  result = qword_284070;
  if (!qword_284070)
  {
    result = swift_getWitnessTable(byte_1F3BEC, &type metadata for DialogActionEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_284070);
  }

  return result;
}

unint64_t sub_B7E54()
{
  result = qword_284078;
  if (!qword_284078)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DialogActionData, &type metadata for DialogActionData, v0, v1);
    atomic_store(result, &qword_284078);
  }

  return result;
}

void DialogActionEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v37 = sub_1E1150();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3D68(&qword_284080, &qword_1F3A30);
  v38 = *(v6 - 8);
  v39 = v6;
  __chkstk_darwin(v6);
  v8 = &v34 - v7;
  v9 = type metadata accessor for DialogActionEvent.Model(0);
  __chkstk_darwin(v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_48B8(a1, a1[3]);
  sub_B7E00();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1, v12, v13, v14, v15, v16, v17, v18);
  }

  else
  {
    v34 = v9;
    v19 = a1;
    v20 = v11;
    v21 = v38;
    v22 = v5;
    v42 = 0;
    sub_411A4();
    v23 = v39;
    sub_1E1C20();
    *v20 = v40;
    v42 = 1;
    sub_B8228();
    sub_1E1C20();
    v24 = v21;
    v25 = v41;
    *(v20 + 8) = v40;
    *(v20 + 16) = v25;
    LOBYTE(v40) = 2;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    v26 = v37;
    sub_1E1C20();
    (*(v24 + 8))(v8, v23);
    (*(v35 + 32))(v20 + *(v34 + 24), v22, v26);
    sub_B827C(v20, v36);
    sub_4E48(v19, v27, v28, v29, v30, v31, v32, v33);
    sub_B82E0(v20);
  }
}

unint64_t sub_B8228()
{
  result = qword_284088;
  if (!qword_284088)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DialogActionData, &type metadata for DialogActionData, v0, v1);
    atomic_store(result, &qword_284088);
  }

  return result;
}

uint64_t sub_B827C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DialogActionEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_B82E0(uint64_t a1)
{
  v2 = type metadata accessor for DialogActionEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_B83DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_284058, &qword_1F3A10);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_284060, &unk_1F3A18);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  v9 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

uint64_t sub_B8514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_284058, &qword_1F3A10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_284060, &unk_1F3A18);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_B868C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_284058, &qword_1F3A10);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_284060, &unk_1F3A18);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_B87FC(uint64_t a1)
{
  sub_B8908(319, &qword_2840F8, sub_411A4, sub_411FC, &type metadata for DialogData);
  if (v1 <= 0x3F)
  {
    sub_B8908(319, &unk_284100, sub_B8228, sub_B7E54, &type metadata for DialogActionData);
    if (v2 <= 0x3F)
    {
      sub_5684(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_B8908(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_1E0C90();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_B8998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_B8A58(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_B8AFC(uint64_t a1)
{
  result = sub_1E1150();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_B8B94()
{
  result = qword_2841D0;
  if (!qword_2841D0)
  {
    result = swift_getWitnessTable(byte_1F3BC4, &type metadata for DialogActionEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2841D0);
  }

  return result;
}

unint64_t sub_B8BEC()
{
  result = qword_2841D8;
  if (!qword_2841D8)
  {
    result = swift_getWitnessTable(byte_1F3B34, &type metadata for DialogActionEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2841D8);
  }

  return result;
}

unint64_t sub_B8C44()
{
  result = qword_2841E0;
  if (!qword_2841E0)
  {
    result = swift_getWitnessTable(asc_1F3B5C, &type metadata for DialogActionEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2841E0);
  }

  return result;
}

uint64_t sub_B8C98(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = a1 == 0x6144676F6C616964 && a2 == 0xEA00000000006174;
  if (v10 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0x8000000000215A70;
    if (a1 == 0xD000000000000010 && 0x8000000000215A70 == a2 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
    {
      0xE900000000000061, v12, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else
    {
      v13 = sub_1E1D30();
      a2, v14, v15, v16, v17, v18, v19, v20;
      if (v13)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

BookAnalytics::SessionListeningData __swiftcall SessionListeningData.init(timeSpentListening:uniqueAudiobooksListened:)(Swift::Int64 timeSpentListening, Swift::Int32_optional uniqueAudiobooksListened)
{
  *v2 = timeSpentListening;
  *(v2 + 8) = uniqueAudiobooksListened.value;
  *(v2 + 12) = uniqueAudiobooksListened.is_nil;
  result.timeSpentListening = timeSpentListening;
  result.uniqueAudiobooksListened = uniqueAudiobooksListened;
  return result;
}

uint64_t SkipData.skipInterval.setter(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 12) = BYTE4(result) & 1;
  return result;
}

uint64_t static SessionListeningData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 12);
  if (*(a1 + 12))
  {
    if ((*(a2 + 12) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_B8E50()
{
  if (*v0)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0xD000000000000012;
  }
}

void sub_B8E8C(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, int64_t a6@<X5>, int64_t a7@<X6>, void *a8@<X7>, char *a9@<X8>)
{
  v12 = 0x8000000000215800;
  if (a1 == 0xD000000000000012 && 0x8000000000215800 == a2 || (sub_1E1D30() & 1) != 0)
  {
    a2, v12, a3, a4, a5, a6, a7, a8;
    v13 = 0;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000000215820 == a2)
  {
    a2, 0x8000000000215820, a3, a4, a5, a6, a7, a8;
    v13 = 1;
  }

  else
  {
    v14 = sub_1E1D30();
    a2, v15, v16, v17, v18, v19, v20, v21;
    if (v14)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }
  }

  *a9 = v13;
}

uint64_t sub_B8F70(uint64_t a1)
{
  v2 = sub_B9190();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_B8FAC(uint64_t a1)
{
  v2 = sub_B9190();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SessionListeningData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_2841E8, &qword_1F3C40);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  v9[1] = *(v1 + 8);
  v10 = *(v1 + 12);
  sub_48B8(a1, a1[3]);
  sub_B9190();
  sub_1E1E00();
  v13 = 0;
  sub_1E1D10();
  if (!v2)
  {
    v12 = 1;
    v11 = v10;
    sub_1E1C90();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_B9190()
{
  result = qword_2841F0;
  if (!qword_2841F0)
  {
    result = swift_getWitnessTable(aA_7, &type metadata for SessionListeningData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2841F0);
  }

  return result;
}

void SessionListeningData.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_2841F8, &qword_1F3C48);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_48B8(a1, a1[3]);
  sub_B9190();
  sub_1E1DF0();
  if (!v2)
  {
    v20 = 0;
    v16 = sub_1E1C40();
    v19 = 1;
    v17 = sub_1E1BC0();
    (*(v6 + 8))(v8, v5);
    *a2 = v16;
    *(a2 + 8) = v17;
    *(a2 + 12) = BYTE4(v17) & 1;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t sub_B9394()
{
  result = qword_284200;
  if (!qword_284200)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SessionListeningData, &type metadata for SessionListeningData, v0, v1);
    atomic_store(result, &qword_284200);
  }

  return result;
}

unint64_t sub_B93EC()
{
  result = qword_284208;
  if (!qword_284208)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SessionListeningData, &type metadata for SessionListeningData, v0, v1);
    atomic_store(result, &qword_284208);
  }

  return result;
}

uint64_t sub_B9440(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a2 + 12);
    if (*(a1 + 12))
    {
      if (*(a2 + 12))
      {
        return 1;
      }
    }

    else
    {
      if (*(a1 + 8) != *(a2 + 8))
      {
        v2 = 1;
      }

      if ((v2 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

void *initializeBufferWithCopyOfBuffer for SessionListeningData(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SessionListeningData(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 13))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SessionListeningData(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
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

  *(result + 13) = v3;
  return result;
}

unint64_t sub_B953C()
{
  result = qword_284210;
  if (!qword_284210)
  {
    result = swift_getWitnessTable(aY_7, &type metadata for SessionListeningData.CodingKeys, v0, v1);
    atomic_store(result, &qword_284210);
  }

  return result;
}

unint64_t sub_B9594()
{
  result = qword_284218;
  if (!qword_284218)
  {
    result = swift_getWitnessTable(byte_1F3D60, &type metadata for SessionListeningData.CodingKeys, v0, v1);
    atomic_store(result, &qword_284218);
  }

  return result;
}

unint64_t sub_B95EC()
{
  result = qword_284220;
  if (!qword_284220)
  {
    result = swift_getWitnessTable(byte_1F3D88, &type metadata for SessionListeningData.CodingKeys, v0, v1);
    atomic_store(result, &qword_284220);
  }

  return result;
}

uint64_t ReportAnIssueViewEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReportAnIssueViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReportAnIssueViewEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReportAnIssueViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReportAnIssueViewEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReportAnIssueViewEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReportAnIssueViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReportAnIssueViewEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReportAnIssueViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ReportAnIssueViewEvent(0);
  v5 = *(v4 + 20);
  v6 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  v8 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t ReportAnIssueViewEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReportAnIssueViewEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReportAnIssueViewEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReportAnIssueViewEvent.Model(0) + 24);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReportAnIssueViewEvent.Model.init(contentData:eventData:timedData:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v7 = a1[3];
  *(a4 + 2) = a1[2];
  *(a4 + 3) = v7;
  v8 = a1[5];
  *(a4 + 4) = a1[4];
  *(a4 + 5) = v8;
  v9 = a1[1];
  *a4 = *a1;
  *(a4 + 1) = v9;
  v10 = type metadata accessor for ReportAnIssueViewEvent.Model(0);
  v11 = *(v10 + 20);
  v12 = sub_1E1150();
  (*(*(v12 - 8) + 32))(&a4[v11], a2, v12);
  v13 = *(v10 + 24);
  v14 = sub_1E11A0();
  v15 = *(*(v14 - 8) + 32);

  return v15(&a4[v13], a3, v14);
}

uint64_t sub_B9CFC(uint64_t a1)
{
  v2 = sub_BA060();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_B9D38(uint64_t a1)
{
  v2 = sub_BA060();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ReportAnIssueViewEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_284258, &qword_1F3E68);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - v6;
  sub_48B8(a1, a1[3]);
  sub_BA060();
  sub_1E1E00();
  v8 = v2[2];
  v9 = v2[4];
  v34 = v2[3];
  v35 = v9;
  v10 = v2[4];
  v36 = v2[5];
  v11 = *v2;
  v12 = v2[2];
  v32 = v2[1];
  v33 = v12;
  v13 = *v2;
  v28 = v34;
  v29 = v10;
  v30 = v2[5];
  v31 = v13;
  v25 = v11;
  v26 = v32;
  v27 = v8;
  v24 = 0;
  sub_13A5C(&v31, &v18);
  sub_143D0();
  v14 = v37;
  sub_1E1CF0();
  if (v14)
  {
    v20 = v27;
    v21 = v28;
    v22 = v29;
    v23 = v30;
    v18 = v25;
    v19 = v26;
    sub_14424(&v18);
  }

  else
  {
    v20 = v27;
    v21 = v28;
    v22 = v29;
    v23 = v30;
    v18 = v25;
    v19 = v26;
    sub_14424(&v18);
    type metadata accessor for ReportAnIssueViewEvent.Model(0);
    v17 = 1;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
    v17 = 2;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_BA060()
{
  result = qword_284260;
  if (!qword_284260)
  {
    result = swift_getWitnessTable(aI_6, &type metadata for ReportAnIssueViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_284260);
  }

  return result;
}

void ReportAnIssueViewEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v40 = sub_1E11A0();
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1150();
  v42 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_3D68(&qword_284268, &qword_1F3E70);
  v41 = *(v44 - 8);
  __chkstk_darwin(v44);
  v9 = &v37 - v8;
  v10 = type metadata accessor for ReportAnIssueViewEvent.Model(0);
  __chkstk_darwin(v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v46 = a1;
  sub_48B8(a1, v13);
  sub_BA060();
  v43 = v9;
  v14 = v45;
  sub_1E1DF0();
  if (v14)
  {
    sub_4E48(v46, v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    v22 = v41;
    v23 = v12;
    v45 = v4;
    v24 = v42;
    v54 = 0;
    sub_14CB8();
    sub_1E1C20();
    v25 = v51;
    v26 = v23;
    *(v23 + 2) = v50;
    *(v23 + 3) = v25;
    v27 = v53;
    *(v23 + 4) = v52;
    *(v23 + 5) = v27;
    v28 = v49;
    *v23 = v48;
    *(v23 + 1) = v28;
    v47 = 1;
    sub_4EE8(&qword_27D830, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    (*(v24 + 32))(&v23[*(v10 + 20)], v7, v5);
    v47 = 2;
    sub_4EE8(&qword_27D838, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    v29 = v40;
    sub_1E1C20();
    (*(v22 + 8))(v43, v44);
    (*(v38 + 32))(v26 + *(v10 + 24), v45, v29);
    sub_BA61C(v26, v39);
    sub_4E48(v46, v30, v31, v32, v33, v34, v35, v36);
    sub_BA680(v26);
  }
}

uint64_t sub_BA61C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportAnIssueViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_BA680(uint64_t a1)
{
  v2 = type metadata accessor for ReportAnIssueViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_BA790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_BA908(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_BAA8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_BABC4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

unint64_t sub_BACFC()
{
  result = qword_2843A0;
  if (!qword_2843A0)
  {
    result = swift_getWitnessTable(aA_8, &type metadata for ReportAnIssueViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2843A0);
  }

  return result;
}

unint64_t sub_BAD54()
{
  result = qword_2843A8;
  if (!qword_2843A8)
  {
    result = swift_getWitnessTable(byte_1F3F78, &type metadata for ReportAnIssueViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2843A8);
  }

  return result;
}

unint64_t sub_BADAC()
{
  result = qword_2843B0;
  if (!qword_2843B0)
  {
    result = swift_getWitnessTable(byte_1F3FA0, &type metadata for ReportAnIssueViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2843B0);
  }

  return result;
}

void EventReporter.emitReportAnIssueEvent(using:contentID:supplementalContentCount:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a1;
  if (a1 || (v9 = sub_BFB78()) != 0)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v4;
    *(v10 + 24) = a2;
    *(v10 + 32) = a3;
    *(v10 + 40) = v9;
    *(v10 + 48) = a4;
    *(v10 + 52) = BYTE4(a4) & 1;
    v11 = swift_allocObject();
    v11[1].super.isa = sub_BBB90;
    *v11[1].dataProviders = v10;
    v12 = a1;
    v13 = v4;

    v14 = v9;

    sub_1E10C0();

    v10, v15, v16, v17, v18, v19, v20, v21;

    v11, v22, v23, v24, v25, v26, v27, v28;
  }
}

uint64_t sub_BAF34(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v59[2] = a5;
  v60 = a4;
  v10 = sub_1E1640();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_4C270();
  *v13 = sub_1E19E0();
  (*(v11 + 104))(v13, enum case for DispatchPredicate.notOnQueue(_:), v10);
  v14 = sub_1E1660();
  result = (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v59[0] = a6;
    v59[1] = a1;
    sub_3D68(&qword_281B70, &qword_1E9980);
    sub_1E1330();
    v23 = v67;
    result = v67 + 32;
    v24 = -*(v67 + 16);
    v25 = -1;
    while (1)
    {
      v26 = v24 + v25;
      if (v24 + v25 == -1)
      {
        break;
      }

      if (++v25 >= v23[1].super.isa)
      {
        __break(1u);
        goto LABEL_22;
      }

      v27 = result + 40;
      sub_4C2BC(result, &v67);
      v28 = *(&v68 + 1);
      v29 = v69;
      sub_48B8(&v67, *(&v68 + 1));
      v30 = (*(v29 + 8))(a2, a3, v60, v28, v29);
      sub_4E48(&v67, v31, v32, v33, v34, v35, v36, v37);
      result = v27;
      if (v30)
      {
        v23, v16, v17, v18, v19, v20, v21, v22;
        v38 = [v30 intValue];

        goto LABEL_8;
      }
    }

    v23, v16, v17, v18, v19, v20, v21, v22;
    v38 = 0;
LABEL_8:
    v39._countAndFlagsBits = a3;
    v40 = v60;
    v39._object = v60;
    v41 = BATracker.contentPrivateID(for:)(v39);
    if (v41.value._object)
    {
      countAndFlagsBits = v41.value._countAndFlagsBits;
    }

    else
    {
      countAndFlagsBits = 0;
    }

    if (v41.value._object)
    {
      object = v41.value._object;
    }

    else
    {
      object = 0xE000000000000000;
    }

    v44._countAndFlagsBits = a3;
    v44._object = v40;
    v45 = BATracker.contentUserID(for:)(v44);
    v73 = BYTE4(v59[0]) & 1;
    v76 = v26 == -1;
    if (v45.value._object)
    {
      v46 = v45.value._countAndFlagsBits;
    }

    else
    {
      v46 = 0;
    }

    if (v45.value._object)
    {
      v47 = v45.value._object;
    }

    else
    {
      v47 = 0xE000000000000000;
    }

    *&v67 = a3;
    *(&v67 + 1) = v40;
    LOBYTE(v68) = 2;
    *(&v68 + 1) = v77[0];
    DWORD1(v68) = *(v77 + 3);
    *(&v68 + 1) = countAndFlagsBits;
    *&v69 = object;
    *(&v69 + 1) = v46;
    *&v70 = v47;
    WORD4(v70) = 1025;
    HIDWORD(v70) = v38;
    LOBYTE(v71) = v26 == -1;
    BYTE3(v71) = v75;
    *(&v71 + 1) = v74;
    DWORD1(v71) = v59[0];
    BYTE8(v71) = v73;
    *(&v71 + 9) = 33751300;
    BYTE13(v71) = 2;
    v72 = 0uLL;
    v65 = v71;
    v66 = 0uLL;
    v64 = v70;
    v63 = v69;
    v61 = v67;
    v62 = v68;
    sub_3D68(&qword_2828D0, &unk_1FD120);
    v48 = sub_1E0CB0();
    v49 = *(v48 - 8);
    v50 = (*(v49 + 80) + 32) & ~*(v49 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1E9970;
    (*(v49 + 104))(v51 + v50, enum case for DataEventTrait.onlyOnce(_:), v48);
    sub_4C164();

    sub_1E0C00();
    v51, v52, v53, v54, v55, v56, v57, v58;
    sub_14424(&v67);
    type metadata accessor for ReportAnIssueEvent(0);
    sub_BBCD4(&qword_2843C8, type metadata accessor for ReportAnIssueEvent, protocol conformance descriptor for ReportAnIssueEvent);
    v61 = 0u;
    v62 = 0u;
    sub_1E0C10();
    return sub_4C1B8(&v61);
  }

  else
  {
LABEL_22:
    __break(1u);
  }

  return result;
}

void EventReporter.emitReportAnIssueCompletionEvent(using:contentID:supplementalContentCount:issueOptions:issueSelected:)(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = a1;
  if (a1 || (v15 = sub_BFB78()) != 0)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = v7;
    *(v16 + 24) = a2;
    *(v16 + 32) = a3;
    *(v16 + 40) = v15;
    *(v16 + 48) = a4;
    *(v16 + 56) = a5;
    *(v16 + 64) = a6;
    *(v16 + 72) = a7;
    v17 = swift_allocObject();
    v17[1].super.isa = sub_BBC48;
    *v17[1].dataProviders = v16;

    v18 = a1;
    v19 = v7;

    v20 = v15;
    sub_1E10C0();

    v16, v21, v22, v23, v24, v25, v26, v27;

    v17, v28, v29, v30, v31, v32, v33, v34;
  }
}

uint64_t sub_BB560(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, int a6, BAEventReporter *a7, uint64_t a8, BAEventReporter *a9)
{
  v98 = a5;
  v99 = a4;
  v15 = sub_1E1640();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_4C270();
  *v18 = sub_1E19E0();
  (*(v16 + 104))(v18, enum case for DispatchPredicate.notOnQueue(_:), v15);
  v19 = sub_1E1660();
  result = (*(v16 + 8))(v18, v15);
  if (v19)
  {
    LODWORD(v93) = a6;
    v95 = a8;
    v96 = a7;
    v97 = a1;
    v94 = a9;
    sub_3D68(&qword_281B70, &qword_1E9980);
    sub_1E1330();
    v28 = v106;
    result = v106 + 32;
    v29 = -*(v106 + 16);
    v30 = -1;
    while (1)
    {
      v31 = v29 + v30;
      if (v29 + v30 == -1)
      {
        break;
      }

      if (++v30 >= v28[1].super.isa)
      {
        __break(1u);
        goto LABEL_22;
      }

      v32 = result + 40;
      sub_4C2BC(result, &v106);
      v34 = *(&v107 + 1);
      v33 = v108;
      sub_48B8(&v106, *(&v107 + 1));
      v35 = (*(v33 + 8))(a2, a3, v99, v34, v33);
      sub_4E48(&v106, v36, v37, v38, v39, v40, v41, v42);
      result = v32;
      if (v35)
      {
        v28, v21, v22, v23, v24, v25, v26, v27;
        v43 = [v35 intValue];

        goto LABEL_8;
      }
    }

    v28, v21, v22, v23, v24, v25, v26, v27;
    v43 = 0;
LABEL_8:
    v44 = a3;
    v45._countAndFlagsBits = a3;
    v46 = v99;
    v45._object = v99;
    v47 = BATracker.contentPrivateID(for:)(v45);
    if (v47.value._object)
    {
      countAndFlagsBits = v47.value._countAndFlagsBits;
    }

    else
    {
      countAndFlagsBits = 0;
    }

    if (v47.value._object)
    {
      object = v47.value._object;
    }

    else
    {
      object = 0xE000000000000000;
    }

    v50._countAndFlagsBits = v44;
    v50._object = v46;
    v51 = BATracker.contentUserID(for:)(v50);
    v115 = v31 == -1;
    v112 = 0;
    if (v51.value._object)
    {
      v52 = v51.value._countAndFlagsBits;
    }

    else
    {
      v52 = 0;
    }

    if (v51.value._object)
    {
      v53 = v51.value._object;
    }

    else
    {
      v53 = 0xE000000000000000;
    }

    *&v106 = v44;
    *(&v106 + 1) = v46;
    LOBYTE(v107) = 2;
    *(&v107 + 1) = *v116;
    DWORD1(v107) = *&v116[3];
    *(&v107 + 1) = countAndFlagsBits;
    *&v108 = object;
    *(&v108 + 1) = v52;
    *&v109 = v53;
    WORD4(v109) = 1025;
    HIDWORD(v109) = v43;
    LOBYTE(v110) = v31 == -1;
    BYTE3(v110) = v114;
    *(&v110 + 1) = v113;
    DWORD1(v110) = v93;
    BYTE8(v110) = v112;
    *(&v110 + 9) = 33751300;
    BYTE13(v110) = 2;
    v111 = 0uLL;
    v104 = v110;
    v105 = 0uLL;
    v103 = v109;
    v102 = v108;
    v100 = v106;
    v101 = v107;
    v98 = sub_3D68(&qword_2828D0, &unk_1FD120);
    v54 = sub_1E0CB0();
    v55 = *(v54 - 8);
    v93 = *(v55 + 72);
    v56 = (*(v55 + 80) + 32) & ~*(v55 + 80);
    v57 = swift_allocObject();
    v92 = xmmword_1E9970;
    *(v57 + 16) = xmmword_1E9970;
    v58 = enum case for DataEventTrait.onlyOnce(_:);
    v91 = *(v55 + 104);
    v91(v57 + v56, enum case for DataEventTrait.onlyOnce(_:), v54);
    sub_4C164();

    v59 = v96;

    v60 = v94;

    sub_1E0C00();
    v57, v61, v62, v63, v64, v65, v66, v67;
    sub_14424(&v106);
    *&v100 = v59;
    *(&v100 + 1) = v95;
    *&v101 = v60;
    v68 = swift_allocObject();
    *(v68 + 16) = v92;
    v91(v68 + v56, v58, v54);
    sub_BBC80();
    sub_1E0C00();
    v60, v69, v70, v71, v72, v73, v74, v75;
    v59, v76, v77, v78, v79, v80, v81, v82;
    v68, v83, v84, v85, v86, v87, v88, v89;
    type metadata accessor for ReportAnIssueCompletionEvent(0);
    sub_BBCD4(&qword_2843C0, type metadata accessor for ReportAnIssueCompletionEvent, protocol conformance descriptor for ReportAnIssueCompletionEvent);
    v100 = 0u;
    v101 = 0u;
    sub_1E0C10();
    return sub_4C1B8(&v100);
  }

  else
  {
LABEL_22:
    __break(1u);
  }

  return result;
}

uint64_t sub_BBB48()
{
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 53, 7);
}

uint64_t sub_BBBB8(uint64_t a1, const char *a2, void *a3, void *a4, int64_t a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 32, 7);
}

uint64_t sub_BBBF0()
{
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;

  *(v0 + 56), v8, v9, v10, v11, v12, v13, v14;
  *(v0 + 72), v15, v16, v17, v18, v19, v20, v21;

  return _swift_deallocObject(v0, 80, 7);
}

unint64_t sub_BBC80()
{
  result = qword_2843B8;
  if (!qword_2843B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OptionListData, &type metadata for OptionListData, v0, v1);
    atomic_store(result, &qword_2843B8);
  }

  return result;
}

uint64_t sub_BBCD4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void __swiftcall AltSeriesContentTypeExposureData.init(altType:altContentType:altContentID:altPricePoint:altPriceCurrency:)(BookAnalytics::AltSeriesContentTypeExposureData *__return_ptr retstr, BookAnalytics::AltType altType, BookAnalytics::ContentType altContentType, Swift::String_optional altContentID, Swift::String_optional altPricePoint, Swift::String_optional altPriceCurrency)
{
  v6 = *altContentType;
  retstr->altType = *altType;
  retstr->altContentType = v6;
  retstr->altContentID = altContentID;
  retstr->altPricePoint = altPricePoint;
  retstr->altPriceCurrency = altPriceCurrency;
}

uint64_t sub_BBD44()
{
  v1 = *v0;
  v2 = 0x65707954746C61;
  v3 = 0x65746E6F43746C61;
  v4 = 0x6563697250746C61;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65746E6F43746C61;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_BBE04@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_BCA64(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_BBE2C(uint64_t a1)
{
  v2 = sub_BC66C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_BBE68(uint64_t a1)
{
  v2 = sub_BC66C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AltSeriesContentTypeExposureData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_2843D0, &qword_1F4090);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - v6;
  v8 = *v1;
  v14 = v1[1];
  v9 = *(v1 + 1);
  v13[5] = *(v1 + 2);
  v13[6] = v9;
  v10 = *(v1 + 3);
  v13[3] = *(v1 + 4);
  v13[4] = v10;
  v11 = *(v1 + 6);
  v13[1] = *(v1 + 5);
  v13[2] = v11;
  sub_48B8(a1, a1[3]);
  sub_BC66C();
  sub_1E1E00();
  v21 = v8;
  v20 = 0;
  sub_BC6C0();
  sub_1E1CF0();
  if (!v2)
  {
    v19 = v14;
    v18 = 1;
    sub_C480();
    sub_1E1CF0();
    v17 = 2;
    sub_1E1C50();
    v16 = 3;
    sub_1E1C50();
    v15 = 4;
    sub_1E1C50();
  }

  return (*(v5 + 8))(v7, v4);
}

void AltSeriesContentTypeExposureData.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_2843E8, &qword_1F4098);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v51 - v7;
  sub_48B8(a1, a1[3]);
  sub_BC66C();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
    0, v18, v19, v20, v21, v22, v23, v24;
    0, v25, v26, v27, v28, v29, v30, v31;
  }

  else
  {
    LOBYTE(v55) = 0;
    sub_BC714();
    sub_1E1C20();
    v16 = v59[0];
    LOBYTE(v55) = 1;
    sub_C4D4();
    sub_1E1C20();
    v66 = v59[0];
    v59[0] = 2;
    v17 = sub_1E1B80();
    v33 = v32;
    v53 = v16;
    v54 = v17;
    v59[0] = 3;
    v34 = sub_1E1B80();
    v36 = v35;
    v52 = v34;
    v67 = 4;
    v37 = sub_1E1B80();
    v38 = v8;
    v40 = v39;
    (*(v6 + 8))(v38, v5);
    v41 = v53;
    LOBYTE(v55) = v53;
    BYTE1(v55) = v66;
    v42 = v54;
    *(&v55 + 1) = v54;
    *&v56 = v33;
    *(&v56 + 1) = v52;
    *&v57 = v36;
    *(&v57 + 1) = v37;
    v58 = v40;
    *(a2 + 48) = v40;
    v43 = v56;
    *a2 = v55;
    *(a2 + 16) = v43;
    *(a2 + 32) = v57;
    sub_BC768(&v55, v59);
    sub_4E48(a1, v44, v45, v46, v47, v48, v49, v50);
    v59[0] = v41;
    v59[1] = v66;
    v60 = v42;
    v61 = v33;
    v62 = v52;
    v63 = v36;
    v64 = v37;
    v65 = v40;
    sub_BC7A0(v59);
  }
}

uint64_t _s13BookAnalytics32AltSeriesContentTypeExposureDataV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = *(a1 + 1);
  v11 = *(a1 + 2);
  v56 = *(a1 + 3);
  v59 = *(a1 + 4);
  v54 = *(a1 + 5);
  v58 = *(a1 + 6);
  v12 = *(a2 + 1);
  v14 = *(a2 + 8);
  v13 = *(a2 + 16);
  v15 = *(a2 + 32);
  v55 = *(a2 + 24);
  v16 = 0x65536E4965726F6DLL;
  v17 = 0xE700000000000000;
  v53 = *(a2 + 40);
  v57 = *(a2 + 48);
  if (v8 == 1)
  {
    v17 = 0xEC00000073656972;
  }

  else
  {
    v16 = 0x6E776F6E6B6E75;
  }

  if (*a1)
  {
    v18 = v16;
  }

  else
  {
    v18 = 0x65536E497478656ELL;
  }

  if (v8)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0xEC00000073656972;
  }

  v20 = 0x65536E4965726F6DLL;
  v21 = 0xE700000000000000;
  if (*a2 == 1)
  {
    v21 = 0xEC00000073656972;
  }

  else
  {
    v20 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0x65536E497478656ELL;
  }

  if (*a2)
  {
    v23 = v21;
  }

  else
  {
    v23 = 0xEC00000073656972;
  }

  if (v18 == v22 && v19 == v23)
  {
    v19, a2, v22, a4, a5, a6, a7, a8;
    v23, v24, v25, v26, v27, v28, v29, v30;
  }

  else
  {
    v37 = sub_1E1D30();
    v19, v38, v39, v40, v41, v42, v43, v44;
    v23, v45, v46, v47, v48, v49, v50, v51;
    if ((v37 & 1) == 0)
    {
      return 0;
    }
  }

  if (sub_218F4(v9, v12, v31, v32, v33, v34, v35, v36))
  {
    if (v11)
    {
      if (!v13 || (v10 != v14 || v11 != v13) && (sub_1E1D30() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v13)
    {
      return 0;
    }

    if (v59)
    {
      if (!v15 || (v56 != v55 || v59 != v15) && (sub_1E1D30() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v15)
    {
      return 0;
    }

    if (v58)
    {
      if (v57 && (v54 == v53 && v58 == v57 || (sub_1E1D30() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v57)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_BC66C()
{
  result = qword_2843D8;
  if (!qword_2843D8)
  {
    result = swift_getWitnessTable(asc_1F42A4, &type metadata for AltSeriesContentTypeExposureData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2843D8);
  }

  return result;
}

unint64_t sub_BC6C0()
{
  result = qword_2843E0;
  if (!qword_2843E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AltType, &type metadata for AltType, v0, v1);
    atomic_store(result, &qword_2843E0);
  }

  return result;
}

unint64_t sub_BC714()
{
  result = qword_2843F0;
  if (!qword_2843F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AltType, &type metadata for AltType, v0, v1);
    atomic_store(result, &qword_2843F0);
  }

  return result;
}

unint64_t sub_BC7D4()
{
  result = qword_2843F8;
  if (!qword_2843F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AltSeriesContentTypeExposureData, &type metadata for AltSeriesContentTypeExposureData, v0, v1);
    atomic_store(result, &qword_2843F8);
  }

  return result;
}

unint64_t sub_BC82C()
{
  result = qword_284400;
  if (!qword_284400)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AltSeriesContentTypeExposureData, &type metadata for AltSeriesContentTypeExposureData, v0, v1);
    atomic_store(result, &qword_284400);
  }

  return result;
}

uint64_t sub_BC880(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_BC8DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_BC960()
{
  result = qword_284408;
  if (!qword_284408)
  {
    result = swift_getWitnessTable(byte_1F427C, &type metadata for AltSeriesContentTypeExposureData.CodingKeys, v0, v1);
    atomic_store(result, &qword_284408);
  }

  return result;
}

unint64_t sub_BC9B8()
{
  result = qword_284410;
  if (!qword_284410)
  {
    result = swift_getWitnessTable(a5_1, &type metadata for AltSeriesContentTypeExposureData.CodingKeys, v0, v1);
    atomic_store(result, &qword_284410);
  }

  return result;
}

unint64_t sub_BCA10()
{
  result = qword_284418;
  if (!qword_284418)
  {
    result = swift_getWitnessTable(byte_1F4214, &type metadata for AltSeriesContentTypeExposureData.CodingKeys, v0, v1);
    atomic_store(result, &qword_284418);
  }

  return result;
}

uint64_t sub_BCA64(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = a1 == 0x65707954746C61 && a2 == 0xE700000000000000;
  if (v10 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0xEE0065707954746ELL;
    if (a1 == 0x65746E6F43746C61 && a2 == 0xEE0065707954746ELL || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v13 = 0xEC0000004449746ELL;
      if (a1 == 0x65746E6F43746C61 && a2 == 0xEC0000004449746ELL || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else
      {
        v14 = 0xED0000746E696F50;
        if (a1 == 0x6563697250746C61 && a2 == 0xED0000746E696F50 || (sub_1E1D30() & 1) != 0)
        {
          a2, v14, a3, a4, a5, a6, a7, a8;
          return 3;
        }

        else if (a1 == 0xD000000000000010 && 0x8000000000215B00 == a2)
        {
          a2, 0x8000000000215B00, a3, a4, a5, a6, a7, a8;
          return 4;
        }

        else
        {
          v15 = sub_1E1D30();
          a2, v16, v17, v18, v19, v20, v21, v22;
          if (v15)
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

BookAnalytics::SelectedSuggestionType_optional __swiftcall SelectedSuggestionType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_2604E0;
  v15._object = object;
  v5 = sub_1E1B70(v4, v15);
  object, v6, v7, v8, v9, v10, v11, v12;
  v14 = 8;
  if (v5 < 8)
  {
    v14 = v5;
  }

  *v3 = v14;
  return result;
}

unint64_t SelectedSuggestionType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 7368564;
  if (v1 != 6)
  {
    v3 = 0xD000000000000014;
  }

  v4 = 0x6574736567677573;
  if (v1 != 4)
  {
    v4 = 0x6574636572726F63;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x676E69646E657274;
  if (v1 != 2)
  {
    v5 = 0x64656863746566;
  }

  if (*v0)
  {
    v2 = 0x746E65636572;
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

unint64_t sub_BCDA8()
{
  result = qword_284420;
  if (!qword_284420)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SelectedSuggestionType, &type metadata for SelectedSuggestionType, v0, v1);
    atomic_store(result, &qword_284420);
  }

  return result;
}

void sub_BCE24(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE300000000000000;
  v6 = 7368564;
  if (v2 != 6)
  {
    v6 = 0xD000000000000014;
    v5 = 0x8000000000212960;
  }

  v7 = 0x6574736567677573;
  if (v2 != 4)
  {
    v7 = 0x6574636572726F63;
  }

  if (*v1 <= 5u)
  {
    v6 = v7;
    v5 = 0xED00006D72655464;
  }

  v8 = 0xE800000000000000;
  v9 = 0x676E69646E657274;
  if (v2 != 2)
  {
    v9 = 0x64656863746566;
    v8 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = 0x746E65636572;
    v3 = 0xE600000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 3u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t sub_BCFF4()
{
  result = qword_284428;
  if (!qword_284428)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SelectedSuggestionType, &type metadata for SelectedSuggestionType, v0, v1);
    atomic_store(result, &qword_284428);
  }

  return result;
}

BookAnalytics::LinkActionType_optional __swiftcall LinkActionType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_2605C0;
  v15._object = object;
  v5 = sub_1E1B70(v4, v15);
  object, v6, v7, v8, v9, v10, v11, v12;
  v14 = 6;
  if (v5 < 6)
  {
    v14 = v5;
  }

  *v3 = v14;
  return result;
}

uint64_t LinkActionType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6570697773;
  v4 = 0xD000000000000015;
  if (v1 != 4)
  {
    v4 = 0x776F6C6C6F66;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x696C43656C746974;
  if (v1 != 1)
  {
    v5 = 0x6B63696C63;
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

unint64_t sub_BD16C()
{
  result = qword_284430;
  if (!qword_284430)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LinkActionType, &type metadata for LinkActionType, v0, v1);
    atomic_store(result, &qword_284430);
  }

  return result;
}

void sub_BD1C8(uint64_t a1)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x8000000000212890;
  if (v2 != 4)
  {
    v5 = 0xE600000000000000;
  }

  if (v2 != 3)
  {
    v4 = v5;
  }

  v6 = 0xEA00000000006B63;
  if (v2 != 1)
  {
    v6 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = v6;
  }

  if (*v1 <= 2u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  sub_1E17D0();

  v7, v8, v9, v10, v11, v12, v13, v14;
}

void sub_BD2C8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE500000000000000;
  v6 = 0x6570697773;
  v7 = 0x8000000000212890;
  v8 = 0xD000000000000015;
  if (v2 != 4)
  {
    v8 = 0x776F6C6C6F66;
    v7 = 0xE600000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA00000000006B63;
  v10 = 0x696C43656C746974;
  if (v2 != 1)
  {
    v10 = 0x6B63696C63;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_BD444()
{
  result = qword_284438;
  if (!qword_284438)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LinkActionType, &type metadata for LinkActionType, v0, v1);
    atomic_store(result, &qword_284438);
  }

  return result;
}

uint64_t ReadingGoalReachedEvent.dailyGoalsReachedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_284470, &qword_1F4560);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ReadingGoalReachedEvent.dailyGoalsReachedData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_284470, &qword_1F4560);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ReadingGoalReachedEvent.yearlyGoalsReachedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingGoalReachedEvent(0) + 20);
  v4 = sub_3D68(&qword_284478, &unk_1F4568);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingGoalReachedEvent.yearlyGoalsReachedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingGoalReachedEvent(0) + 20);
  v4 = sub_3D68(&qword_284478, &unk_1F4568);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadingGoalReachedEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingGoalReachedEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingGoalReachedEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingGoalReachedEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadingGoalReachedEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_284470, &qword_1F4560);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ReadingGoalReachedEvent(0);
  v5 = *(v4 + 20);
  v6 = sub_3D68(&qword_284478, &unk_1F4568);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  v8 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

void ReadingGoalReachedEvent.Model.dailyGoalsReachedData.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

void ReadingGoalReachedEvent.Model.yearlyGoalsReachedData.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t ReadingGoalReachedEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingGoalReachedEvent.Model(0) + 24);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingGoalReachedEvent.Model.init(dailyGoalsReachedData:yearlyGoalsReachedData:eventData:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 8);
  v7 = *a2;
  v8 = *(a2 + 1);
  *a4 = *a1;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7;
  *(a4 + 24) = v8;
  v9 = *(type metadata accessor for ReadingGoalReachedEvent.Model(0) + 24);
  v10 = sub_1E1150();
  v11 = *(*(v10 - 8) + 32);

  return v11(a4 + v9, a3, v10);
}

unint64_t sub_BDBA0()
{
  v1 = 0x746144746E657665;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_BDC00@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_BECA4(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_BDC28(uint64_t a1)
{
  v2 = sub_BDEAC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_BDC64(uint64_t a1)
{
  v2 = sub_BDEAC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ReadingGoalReachedEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_284480, &qword_1F4578);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_48B8(a1, a1[3]);
  sub_BDEAC();
  sub_1E1E00();
  v9 = *(v3 + 8);
  v14[0] = *v3;
  v15 = v9;
  v13 = 0;
  sub_BDF00();
  sub_1E1CF0();
  if (!v2)
  {
    v10 = *(v3 + 24);
    v14[0] = *(v3 + 16);
    v15 = v10;
    v13 = 1;
    sub_46084();
    sub_1E1CF0();
    type metadata accessor for ReadingGoalReachedEvent.Model(0);
    v14[0] = 2;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_BDEAC()
{
  result = qword_284488;
  if (!qword_284488)
  {
    result = swift_getWitnessTable(a5_2, &type metadata for ReadingGoalReachedEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_284488);
  }

  return result;
}

unint64_t sub_BDF00()
{
  result = qword_284490;
  if (!qword_284490)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DailyGoalsReachedData, &type metadata for DailyGoalsReachedData, v0, v1);
    atomic_store(result, &qword_284490);
  }

  return result;
}