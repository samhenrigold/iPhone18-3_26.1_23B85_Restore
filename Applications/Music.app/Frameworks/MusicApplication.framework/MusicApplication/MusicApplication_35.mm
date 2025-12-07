void sub_2F45C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 40) & 0x8000000000000000) != 0)
  {
    v9 = *(a1 + 16);
    sub_2F118(a1, aBlock);
    v10 = v9(a2, a3);
    v11 = [v10 length];
    if (v11 < 1)
    {
    }

    else
    {
      v12 = v11;
      v17 = 0;
      v18 = 0;
      v13 = swift_allocObject();
      *(v13 + 16) = &v17;
      *(v13 + 24) = &v18;
      v14 = swift_allocObject();
      *(v14 + 16) = sub_18BC3C;
      *(v14 + 24) = v13;
      aBlock[4] = sub_18BC40;
      aBlock[5] = v14;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_9B8A0;
      aBlock[3] = &block_descriptor_92_0;
      v15 = _Block_copy(aBlock);

      [v10 enumerateAttribute:NSFontAttributeName inRange:0 options:v12 usingBlock:{0, v15, v17}];
      _Block_release(v15);
      LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

      if (v12)
      {
        __break(1u);
      }

      else
      {
        v16 = v18;

        if (v16)
        {
          [v16 _scaledValueForValue:*(a1 + 72)];
          [v16 descender];
        }

        else
        {
        }
      }
    }
  }

  else
  {
    v4 = *(a1 + 48);
    sub_2F118(a1, aBlock);
    v5 = [v4 _fontAdjustedForCurrentContentSizeCategory];
    if (v5)
    {
      v6 = v5;

      v4 = v6;
    }

    [v4 _scaledValueForValue:*(a1 + 72)];
    [v4 descender];

    sub_2F174(a1);
  }
}

double sub_2F48A4(unint64_t a1, void *a2, void *a3, uint64_t a4)
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  [a2 displayScale];
  if (a4)
  {
    v77 = a4;
  }

  else
  {
    sub_AB91E0();
    sub_AB3550();
    a3 = sub_AB9320();
    v77 = v7;
  }

  v8 = a1;
  v74 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_55;
  }

  v9 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
LABEL_6:

  if (v9)
  {
    v10 = 0;
    v73 = v8 & 0xC000000000000001;
    v68 = &v85;
    v67 = v83;
    v71 = *&UIEdgeInsetsZero.top;
    v72 = *&UIEdgeInsetsZero.bottom;
    v76 = v8 & 0xFFFFFFFFFFFFFF8;
    v11 = &selRef_performWithResponseHandler_;
    v12 = 0.0;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v14 = vnegq_f64(v13);
    v66 = v14;
    v75 = a3;
    v70 = v9;
    while (1)
    {
      if (v73)
      {
        v15 = sub_36003C(v10, v8, v14);
        v16 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_48:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v10 >= *(v76 + 16))
        {
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          v9 = sub_ABB060();
          goto LABEL_6;
        }

        v15 = *(v8 + 8 * v10 + 32);

        v16 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_48;
        }
      }

      v78 = v16;
      swift_beginAccess();
      v17 = v15[3];
      v18 = v15[5];
      v19 = v15[6];
      v91 = v15[4];
      v92 = v18;
      v93 = v19;
      v89 = v15[2];
      v90 = v17;
      if ((*(&v91 + 1) & 0x8000000000000000) != 0)
      {
        v43 = v90;
        sub_2F118(&v89, &v84);
        sub_2F118(&v89, &v84);
        v79 = v43(a3, v77);
        v44 = [v79 length];
        if (v44 <= 0)
        {

LABEL_29:
          v36 = 0;
          v9 = v70;
          goto LABEL_30;
        }

        v45 = v44;
        v81 = 0;
        v82[0] = 0;
        v46 = swift_allocObject();
        *(v46 + 16) = &v81;
        *(v46 + 24) = v82;
        v47 = swift_allocObject();
        *(v47 + 16) = sub_18BC3C;
        *(v47 + 24) = v46;
        *&v86 = sub_18BC40;
        *(&v86 + 1) = v47;
        *&v84 = _NSConcreteStackBlock;
        *(&v84 + 1) = 1107296256;
        *&v85 = sub_9B8A0;
        *(&v85 + 1) = &block_descriptor_71;
        v8 = _Block_copy(&v84);
        a3 = *(&v86 + 1);

        [v79 enumerateAttribute:NSFontAttributeName inRange:0 options:v45 usingBlock:{0, v8}];
        _Block_release(v8);
        LOBYTE(v45) = swift_isEscapingClosureAtFileLocation();

        if (v45)
        {
          goto LABEL_53;
        }

        v36 = v82[0];

        if (!v36)
        {

          v8 = a1;
          a3 = v75;
          v11 = &selRef_performWithResponseHandler_;
          goto LABEL_29;
        }

        v29 = v36;
        [v29 _bodyLeading];
        [v29 _scaledValueForValue:*(&v93 + 1)];

        v8 = a1;
        v9 = v70;
        a3 = v75;
        v11 = &selRef_performWithResponseHandler_;
      }

      else
      {
        v20 = v9;
        v21 = v8;
        v22 = v92;
        sub_2F118(&v89, &v84);
        sub_2F118(&v89, &v84);
        v23 = v22;
        v24 = [v23 v11[226]];
        v25 = v23;
        if (v24)
        {
          v26 = v24;

          v25 = v26;
        }

        v27 = v23;
        v28 = v25;
        v29 = v25;
        v30 = [v27 v11[226]];
        v31 = v27;
        if (v30)
        {
          v32 = v30;

          v31 = v32;
        }

        [v31 _bodyLeading];

        v33 = v27;
        v11 = &selRef_performWithResponseHandler_;
        v34 = [v33 _fontAdjustedForCurrentContentSizeCategory];
        if (v34)
        {
          v35 = v34;

          v33 = v35;
        }

        v36 = v28;
        [v33 _scaledValueForValue:*(&v93 + 1)];

        sub_2F174(&v89);
        v8 = v21;
        v9 = v20;
        a3 = v75;
      }

      _s16MusicApplication11TextDrawingV5CacheC019additionalInsetsForC0_4fontSo06UIEdgeG0VSS_So6UIFontCtFZ_0(a3, v77, v29);
      v38.f64[0] = v37;
      v38.f64[1] = v39;
      v41.f64[0] = v40;
      v41.f64[1] = v42;
      if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v38, v71), vceqq_f64(v41, v72)))) & 1) == 0)
      {
        [v29 ascender];
        [v29 descender];
      }

LABEL_30:
      v48 = v15[3];
      v49 = v15[4];
      v50 = v15[6];
      v87 = v15[5];
      v88 = v50;
      v85 = v48;
      v86 = v49;
      v84 = v15[2];
      v51 = *&v50;
      if ((*(&v49 + 1) & 0x8000000000000000) == 0)
      {
        v52 = v87;
        sub_2F118(&v84, v82);
        sub_2F118(&v84, v82);
        v53 = v52;
        v54 = [v53 v11[226]];
        if (v54)
        {
          v55 = v54;

          v53 = v55;
        }

        [v53 _scaledValueForValue:{v51, *&v66}];

        sub_2F174(&v84);
LABEL_34:
        sub_2F174(&v84);
        if (!v74)
        {
          goto LABEL_35;
        }

        goto LABEL_40;
      }

      v57 = v85;
      sub_2F118(&v84, v82);
      sub_2F118(&v84, v82);
      a3 = v57(a3, v77);
      v58 = [a3 length];
      if (v58 <= 0)
      {

        a3 = v75;
        v9 = v70;
        goto LABEL_34;
      }

      v59 = v58;
      v80 = 0;
      v81 = 0;
      v60 = swift_allocObject();
      *(v60 + 16) = &v80;
      *(v60 + 24) = &v81;
      v61 = swift_allocObject();
      *(v61 + 16) = sub_9B94C;
      *(v61 + 24) = v60;
      v83[2] = sub_109B70;
      v83[3] = v61;
      v82[0] = _NSConcreteStackBlock;
      v82[1] = 1107296256;
      v83[0] = sub_9B8A0;
      v83[1] = &block_descriptor_102;
      v8 = _Block_copy(v82);

      [a3 enumerateAttribute:NSFontAttributeName inRange:0 options:v59 usingBlock:{0, v8}];
      _Block_release(v8);
      LOBYTE(v59) = swift_isEscapingClosureAtFileLocation();

      if (v59)
      {
        goto LABEL_54;
      }

      v62 = v81;

      if (!v62)
      {

        v8 = a1;
        v9 = v70;
        a3 = v75;
        v11 = &selRef_performWithResponseHandler_;
        goto LABEL_34;
      }

      [v62 _scaledValueForValue:v51];

      sub_2F174(&v84);
      v8 = a1;
      v9 = v70;
      a3 = v75;
      v11 = &selRef_performWithResponseHandler_;
      if (!v74)
      {
LABEL_35:
        v56 = *(v76 + 16);
        goto LABEL_41;
      }

LABEL_40:
      v56 = sub_ABB060();
LABEL_41:
      if (__OFSUB__(v56, 1))
      {
        goto LABEL_52;
      }

      sub_AB3A10();
      v64 = v63;
      sub_2F174(&v89);

      v12 = v12 + v64;
      ++v10;
      if (v78 == v9)
      {
        goto LABEL_50;
      }
    }
  }

  v12 = 0.0;
LABEL_50:

  return v12;
}

uint64_t sub_2F52A4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

double sub_2F531C(_OWORD *a1)
{
  result = 0.0;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

id sub_2F53C8(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache] = 0;
  v1[OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment] = 1;
  v3 = &v1[OBJC_IVAR____TtC16MusicApplication13TextStackView_exclusionRectangle];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v3[32] = 1;
  v1[OBJC_IVAR____TtC16MusicApplication13TextStackView_isDisabled] = 0;
  v4 = &v1[OBJC_IVAR____TtC16MusicApplication13TextStackView_textShadow];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents] = _swiftEmptyArrayStorage;
  v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_indexedComponents;
  *&v1[v5] = sub_99104(_swiftEmptyArrayStorage);
  *&v1[OBJC_IVAR____TtC16MusicApplication13TextStackView_recycledTextDrawingViews] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCacheInvalidationNotificationObserver] = 0;
  v1[OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled] = 0;
  v6 = OBJC_IVAR____TtC16MusicApplication13TextStackView_cacheKeyStackViewLayoutMetrics;
  *&v1[v6] = sub_99214(_swiftEmptyArrayStorage);
  v8.receiver = v1;
  v8.super_class = type metadata accessor for TextStackView();
  return objc_msgSendSuper2(&v8, "initWithCoder:", a1);
}

unint64_t sub_2F54CC()
{
  result = qword_DFDFE0;
  if (!qword_DFDFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFDFE0);
  }

  return result;
}

uint64_t sub_2F559C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2F55BC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t sub_2F5600(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2F5648(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2F56D4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2F571C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2F5780()
{
  result = qword_DFE1A8;
  if (!qword_DFE1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFE1A8);
  }

  return result;
}

unint64_t sub_2F57D4()
{
  result = qword_DFE1B0;
  if (!qword_DFE1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFE1B0);
  }

  return result;
}

unint64_t sub_2F5828()
{
  result = qword_DFE1B8;
  if (!qword_DFE1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFE1B8);
  }

  return result;
}

uint64_t sub_2F587C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double sub_2F58C4(_OWORD *a1)
{
  result = 0.0;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_2F58EC()
{
  result = qword_DFE1C0;
  if (!qword_DFE1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFE1C0);
  }

  return result;
}

unint64_t sub_2F5940()
{
  result = qword_DFE1C8;
  if (!qword_DFE1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFE1C8);
  }

  return result;
}

unint64_t sub_2F5994()
{
  result = qword_DFE1D0;
  if (!qword_DFE1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFE1D0);
  }

  return result;
}

unint64_t sub_2F59E8()
{
  result = qword_DFE1D8;
  if (!qword_DFE1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFE1D8);
  }

  return result;
}

double block_copy_helper_102(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_2F5B1C(void *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 96) = 0;
  v5 = sub_1709C(a1);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = *(v5 + 32);
  v8 = *(v5 + 40);
  *(v5 + 32) = a3;
  *(v5 + 40) = v6;
  swift_retain_n();

  sub_17654(v7, v8);

  return v5;
}

void *sub_2F5BBC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result[12];
    if (v3)
    {
      v4 = v3;

      v5 = [v4 results];

      if (v5)
      {
        isa = sub_AB3770().super.isa;
        v7 = [v5 itemAtIndexPath:isa];

        return v7;
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

Swift::Void __swiftcall BrowseCollectionViewController.configureCollectionView(_:)(UICollectionView a1)
{
  v3 = *v1;
  v4 = swift_isaMask;
  [(objc_class *)a1.super.super.super.super.isa setAlwaysBounceVertical:1];
  v5 = [v1 viewBackgroundColor];
  [(objc_class *)a1.super.super.super.super.isa setBackgroundColor:v5];

  [(objc_class *)a1.super.super.super.super.isa setKeyboardDismissMode:1];
  [(objc_class *)a1.super.super.super.super.isa setAllowsFocus:1];
  [(objc_class *)a1.super.super.super.super.isa setRemembersLastFocusedIndexPath:1];
  v14 = v1;
  type metadata accessor for BrowseCollectionViewController(0, *(&stru_20.filesize + (v4 & v3)), v6, v7);
  v8 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFE1F0, &unk_B09120);
  if (swift_dynamicCast())
  {
    sub_12E1C(&v11, &unk_E04550, &unk_B0D160);
    v9 = 1;
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    sub_12E1C(&v11, &unk_E04550, &unk_B0D160);
    v14 = v8;
    v10 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFE200, &unk_B09130);
    v9 = swift_dynamicCast();
    if ((v9 & 1) == 0)
    {
      v13 = 0;
      v11 = 0u;
      v12 = 0u;
    }

    sub_12E1C(&v11, &qword_E04580, &qword_B0D190);
  }

  [(objc_class *)a1.super.super.super.super.isa setPrefetchingEnabled:v9, v11, v12, v13, v14];
  [(objc_class *)a1.super.super.super.super.isa _setShouldPrefetchCellsWhenPerformingReloadData:1];
}

void *UICollectionView.dequeueReusableBrowseCell<A>(for:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = v3;
  v7 = static UICollectionReusableView.reuseIdentifier.getter();
  v9 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)(a2, a1, v7, v8, a2);

  v10 = [v4 dataSource];
  if (!v10 || (v18[0] = v10, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E04500, &qword_B09150), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE220, &unk_B0D130), (swift_dynamicCast() & 1) == 0))
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    goto LABEL_6;
  }

  if (!*(&v16 + 1))
  {
LABEL_6:
    sub_12E1C(&v15, &unk_DFE210, &unk_B09140);
    return v9;
  }

  sub_70DF8(&v15, v18);
  v11 = v18[4];
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  v12 = *(v11 + 8);
  v13 = v9;
  v12();

  __swift_destroy_boxed_opaque_existential_0(v18);
  return v9;
}

void BrowseCollectionViewController.collectionView(_:willDisplay:forItemAt:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v71 = swift_isaMask & *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v9 = &v70 - v8;
  v10 = sub_AB3820();
  v73 = *(v10 - 8);
  __chkstk_darwin();
  v72 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v70 - v12;
  ObjectType = swift_getObjectType();
  v15 = swift_conformsToProtocol2();
  if (v3 && v15)
  {
    (*(v15 + 8))(ObjectType);
    v17 = v16;
    v18 = swift_getObjectType();
    (*(v73 + 16))(v13, a3, v10);
    sub_303F44(&qword_DFAA90, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    sub_ABAD10();
    (*(v17 + 112))(a2, v77, v18, v17);
    sub_8085C(v77);
    swift_unknownObjectRelease();
  }

  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (!v19)
  {
    goto LABEL_13;
  }

  v20 = v19;
  v21 = *(v3 + qword_DFE278);
  v22 = a2;
  if (v21 == 2)
  {
    LOBYTE(v21) = (*&stru_248.sectname[swift_isaMask & *v3])(a1) < 2;
  }

  v23 = [v20 tableViewCell];
  if (!v23)
  {
    __break(1u);
    goto LABEL_48;
  }

  v24 = v23;
  [v23 setTableViewStyle:1];

  v25 = [v20 tableViewCell];
  if (!v25)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v26 = v25;
  [v25 _setDrawsSeparatorAtTopOfSection:v21 & 1];

  v27 = [v20 tableViewCell];
  if (!v27)
  {
LABEL_49:
    __break(1u);
    return;
  }

  v28 = v27;
  v29 = *(v4 + qword_DFE280);
  if (v29 == 2)
  {
    LOBYTE(v29) = v21;
  }

  [v27 _setDrawsSeparatorAtBottomOfSection:v29 & 1];

LABEL_13:
  (*&stru_1F8.segname[(swift_isaMask & *v4) + 16])(a3);
  v30 = v73;
  if ((*(v73 + 48))(v9, 1, v10) == 1)
  {
    sub_12E1C(v9, &unk_DE8E20, &qword_AF7990);
    return;
  }

  v31 = v72;
  (*(v30 + 32))(v72, v9, v10);
  v76 = v4;
  type metadata accessor for BrowseCollectionViewController(0, *(v71 + 80), v32, v33);
  v34 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFE1F0, &unk_B09120);
  if (swift_dynamicCast())
  {
    v35 = sub_70DF8(v74, v77);
    v36 = (*&stru_158.sectname[swift_isaMask & *v34])(v35);
    if (v36 && (v37 = v36, v38 = [v36 results], v37, v38))
    {
      isa = sub_AB3770().super.isa;
      v40 = [v38 itemAtIndexPath:isa];
    }

    else
    {
      v40 = 0;
    }

    v42 = v78;
    v43 = v79;
    __swift_project_boxed_opaque_existential_1(v77, v78);
    (*(v43 + 48))(a2, v31, v40, v42, v43);
    swift_unknownObjectRelease();
    v41 = __swift_destroy_boxed_opaque_existential_0(v77);
  }

  else
  {
    v75 = 0;
    memset(v74, 0, sizeof(v74));
    v41 = sub_12E1C(v74, &unk_E04550, &unk_B0D160);
  }

  v44 = (*&stru_158.sectname[swift_isaMask & *v34])(v41);
  if (!v44)
  {
    goto LABEL_27;
  }

  v45 = v44;
  v46 = [v44 results];

  if (!v46)
  {
    goto LABEL_28;
  }

  v47 = sub_AB3770().super.isa;
  v48 = [v46 itemAtIndexPath:v47];

  if (!v48)
  {
LABEL_27:
    v46 = 0;
    goto LABEL_28;
  }

  objc_opt_self();
  v46 = swift_dynamicCastObjCClass();
  if (!v46)
  {
    swift_unknownObjectRelease();
  }

LABEL_28:
  swift_getObjectType();
  v49 = swift_conformsToProtocol2();
  if (v49)
  {
    if (a2)
    {
      v50 = v49;
      v51 = (*(&stru_3D8.flags + (swift_isaMask & *v34)))();
      if (v51)
      {
        v52 = v51;
        v53 = swift_getObjectType();
        v54 = a2;
        sub_178C4(v54, v31, v52, v53, v50);
      }
    }
  }

  swift_getObjectType();
  v55 = swift_conformsToProtocol2();
  p_cache = &OBJC_METACLASS____TtC16MusicApplication13TextStackView.cache;
  if (!v55 || !a2)
  {
    goto LABEL_38;
  }

  v57 = v55;
  if (!*(v34 + qword_DFE298) || !v46)
  {
    v64 = a2;
    v65 = swift_getObjectType();
    (*(v57 + 16))(0, v65, v57);

LABEL_38:
    if (!v46)
    {
      (*(v30 + 8))(v31, v10);
      return;
    }

    v60 = v46;
    goto LABEL_40;
  }

  v58 = swift_getObjectType();
  v59 = a2;

  v60 = v46;
  v61 = sub_2FBDBC(v60);
  (*(v57 + 16))(v61 & 1, v58, v57);
  v62 = sub_2FC168(v60);
  v63 = v58;
  p_cache = (&OBJC_METACLASS____TtC16MusicApplication13TextStackView + 16);
  (*(v57 + 40))(v62, v63, v57);

  v30 = v73;

LABEL_40:
  if (*(p_cache[83] + v34))
  {

    v66 = sub_2FC35C(v60);

    if ((v66 & 1) == 0)
    {
      [a2 setUserInteractionEnabled:0];
      swift_getObjectType();
      v67 = swift_conformsToProtocol2();
      if (v67)
      {
        if (a2)
        {
          v68 = v67;
          v69 = swift_getObjectType();
          (*(v68 + 16))(1, v69, v68);
        }
      }
    }
  }

  (*(v30 + 8))(v72, v10);
}

void BrowseCollectionViewController.collectionView(_:performPrimaryActionForItemAt:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = swift_isaMask;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v9 = v26 - v8;
  v10 = sub_AB3820();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v3;
  type metadata accessor for BrowseCollectionViewController(0, *(&stru_20.filesize + (v7 & v6)), v14, v15);
  v16 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFE1F0, &unk_B09120);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v27 = 0;
    memset(v26, 0, sizeof(v26));
    sub_12E1C(v26, &unk_E04550, &unk_B0D160);
LABEL_11:
    isa = sub_AB3770().super.isa;
    [a1 deselectItemAtIndexPath:isa animated:1];

    return;
  }

  sub_70DF8(v26, v29);
  (*&stru_1F8.segname[(swift_isaMask & *v16) + 16])(a2);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_12E1C(v9, &unk_DE8E20, &qword_AF7990);
LABEL_10:
    __swift_destroy_boxed_opaque_existential_0(v29);
    goto LABEL_11;
  }

  v17 = (*(v11 + 32))(v13, v9, v10);
  v18 = (*&stru_158.sectname[swift_isaMask & *v16])(v17);
  if (!v18)
  {
    v22 = 0;
    goto LABEL_9;
  }

  v19 = v18;
  v20 = [v18 results];

  if (v20)
  {
    v21 = sub_AB3770().super.isa;
    v22 = [v20 itemAtIndexPath:v21];

LABEL_9:
    v23 = v30;
    v24 = v31;
    __swift_project_boxed_opaque_existential_1(v29, v30);
    (*(v24 + 72))(v22, v13, a2, v23, v24);
    (*(v11 + 8))(v13, v10);
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  __break(1u);
}

void *UICollectionView.dequeueReusableBrowseSupplementaryView<A>(elementKind:forIndexPath:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v6 = v5;
  v11 = static UICollectionReusableView.reuseIdentifier.getter();
  v13 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)(a4, a1, a2, a3, v11, v12, a4);

  v14 = [v6 dataSource];
  if (!v14 || (v22[0] = v14, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E04500, &qword_B09150), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE220, &unk_B0D130), (swift_dynamicCast() & 1) == 0))
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    goto LABEL_6;
  }

  if (!*(&v20 + 1))
  {
LABEL_6:
    sub_12E1C(&v19, &unk_DFE210, &unk_B09140);
    return v13;
  }

  sub_70DF8(&v19, v22);
  v15 = v22[4];
  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  v16 = *(v15 + 8);
  v17 = v13;
  v16();

  __swift_destroy_boxed_opaque_existential_0(v22);
  return v13;
}

void sub_2F6E48(uint64_t a1)
{
  v2 = *(v1 + qword_DFE268);
  *(v1 + qword_DFE268) = a1;
}

void *BrowseCollectionViewController.modelResponse.getter()
{
  v0 = sub_3025B0();
  v1 = v0;
  return v0;
}

void BrowseCollectionViewController.modelResponse.setter(void *a1)
{
  v2 = v1;
  v3 = swift_isaMask & *v1;
  v4 = *(v2 + qword_DFE2F0);
  if (v4)
  {
    if (v4 != a1)
    {
      goto LABEL_6;
    }
  }

  else if (a1)
  {
    goto LABEL_6;
  }

  if (*(v2 + qword_DFE288) != 1)
  {
LABEL_24:

    return;
  }

LABEL_6:
  if (*(v2 + qword_DFE270) == 1)
  {
    v5 = *(v2 + qword_DFE268);
    *(v2 + qword_DFE268) = a1;

    return;
  }

  v6 = *(v2 + qword_DFE2E0);
  *(v2 + qword_DFE2E0) = a1;
  v36 = a1;
  v7 = a1;

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v10 = *(v3 + 80);
  *(v9 + 16) = v10;
  *(v9 + 24) = v8;

  if (([v2 isViewLoaded] & 1) == 0 && v36)
  {
    (*&stru_158.segname[(swift_isaMask & *v2) + 8])(v36, 0);
    v11 = *(v2 + qword_DFE290);
    if (v11)
    {
      v12 = *(v11 + 24);
      *(v11 + 24) = v36;
      v13 = v7;

      sub_380968();
    }

    v34 = v7;
    sub_302C9C(v36);

    v14 = *(v2 + qword_DFE290);
    if (v14)
    {
      v15 = *(v14 + 24);
      *(v14 + 24) = v36;
      v16 = v34;

      sub_380968();
    }

    v17 = (*(&stru_3D8.flags + (swift_isaMask & *v2)))();
    if (v17)
    {
      v18 = *(v17 + 96);
      *(v17 + 96) = v36;
      v19 = v34;
    }

    v20 = *(v2 + qword_DFE298);
    if (v20)
    {
      v21 = *(v20 + 32);
      *(v20 + 32) = v36;
      v22 = v34;
    }

    if (![v2 isViewLoaded])
    {
      goto LABEL_23;
    }

    sub_2FB0D8();
    [v2 loadViewIfNeeded];
    v23 = *(v2 + qword_DFE2F8);
    if (v23)
    {
      [v23 reloadData];
LABEL_23:
      sub_302CF0(v8);

      a1 = v35;
      goto LABEL_24;
    }

LABEL_34:
    __break(1u);
    return;
  }

  [v2 loadViewIfNeeded];
  v24 = *(v2 + qword_DFE2F8);
  if (!v24)
  {
    __break(1u);
    goto LABEL_34;
  }

  if (v36)
  {
    v25 = *(v2 + qword_DFE2F0);
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = swift_allocObject();
    v27[2] = v10;
    v27[3] = v26;
    v27[4] = v36;
    v27[5] = v24;
    v27[6] = sub_302BE4;
    v27[7] = v9;
    aBlock[4] = sub_302C74;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_780C4;
    aBlock[3] = &block_descriptor_103;
    v28 = _Block_copy(aBlock);
    v29 = v25;

    v30 = v7;
    v31 = v24;
    v32 = v30;
    v33 = v31;

    [v32 getChangeDetailsFromPreviousResponse:v29 completion:v28];

    _Block_release(v28);
  }

  else
  {
  }
}

void (*BrowseCollectionViewController.modelResponse.modify(void *a1))(void **a1, char a2)
{
  v2 = *(v1 + qword_DFE2F0);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_2F7420;
}

void sub_2F7420(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    BrowseCollectionViewController.modelResponse.setter(v2);
  }

  else
  {
    BrowseCollectionViewController.modelResponse.setter(*a1);
  }
}

id BrowseCollectionViewController.collectionView.getter()
{
  v0 = sub_302BEC();

  return v0;
}

uint64_t sub_2F74DC()
{
  v1 = *(v0 + qword_DFE278);
  if (v1 == 2)
  {
    LOBYTE(v1) = (*&stru_248.sectname[swift_isaMask & *v0])() < 2;
  }

  return v1 & 1;
}

double sub_2F756C(uint64_t a1)
{
  *(v1 + qword_DFE290) = a1;

  return result;
}

double sub_2F7584()
{
  sub_302664();

  return result;
}

double sub_2F75AC(uint64_t a1)
{
  *(v1 + qword_DFE298) = a1;

  return result;
}

uint64_t BrowseCollectionViewController.convertToModelIndexPath(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_AB3820();
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t BrowseCollectionViewController.convertToPresentationIndexPath(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_AB3820();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

void *sub_2F7710(uint64_t a1)
{
  result = sub_4D39CC();
  if (result)
  {
    v2 = result;
    v3 = [result parentViewController];

    if (v3)
    {
      type metadata accessor for JSDrivenViewController(0);
      v4 = swift_dynamicCastClass();
      if (v4)
      {
        v5 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_componentController;
        v6 = v4;
        swift_beginAccess();
        v7 = *(v6 + v5);
        v8 = v7;

        return v7;
      }
    }

    return 0;
  }

  return result;
}

uint64_t BrowseCollectionViewController.wantsItemLibraryAddKeepLocalControl.getter()
{
  v1 = direct field offset for BrowseCollectionViewController.wantsItemLibraryAddKeepLocalControl;
  swift_beginAccess();
  return *(v0 + v1);
}

void BrowseCollectionViewController.wantsItemLibraryAddKeepLocalControl.setter(char a1)
{
  v3 = direct field offset for BrowseCollectionViewController.wantsItemLibraryAddKeepLocalControl;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_2FFC9C(v4);
}

void (*BrowseCollectionViewController.wantsItemLibraryAddKeepLocalControl.modify(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = direct field offset for BrowseCollectionViewController.wantsItemLibraryAddKeepLocalControl;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + v5);
  return sub_2F78FC;
}

void sub_2F78FC(uint64_t a1)
{
  v1 = *a1;
  BrowseCollectionViewController.wantsItemLibraryAddKeepLocalControl.setter(*(*a1 + 32));

  free(v1);
}

BOOL BrowseCollectionViewController.wantsItemLibraryAddKeepLocalControl(for:at:)(uint64_t a1)
{
  v2 = [v1 traitCollection];
  v3 = UITraitCollection.isMediaPicker.getter(v2);

  if (v3)
  {
    return 0;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  return swift_dynamicCastObjCClass() != 0;
}

void BrowseCollectionViewController._collectionView(_:indexPathForSectionIndexTitle:at:)(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v9 = &v12 - v8;
  if (!*(v4 + qword_DFE290))
  {
    v10 = sub_AB3820();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    goto LABEL_6;
  }

  if (a2)
  {

    sub_37FF08(a3, v9);

    v10 = sub_AB3820();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      (*(v11 + 32))(a4, v9, v10);
LABEL_8:
      sub_AB3820();
      (*(*(v10 - 8) + 56))(a4, 0, 1, v10);
      return;
    }

LABEL_6:
    sub_AB37C0();
    sub_AB3820();
    if ((*(*(v10 - 8) + 48))(v9, 1, v10) != 1)
    {
      sub_12E1C(v9, &unk_DE8E20, &qword_AF7990);
    }

    goto LABEL_8;
  }

  __break(1u);
}

BOOL BrowseCollectionViewController.collectionView(_:shouldSelectItemAt:)(uint64_t a1, uint64_t a2)
{
  if (UICollectionView.isDraggingCell(at:)())
  {
    return 0;
  }

  else
  {
    v4 = [v2 traitCollection];
    v5 = UITraitCollection.isMediaPicker.getter(v4);

    return !v5;
  }
}

uint64_t BrowseCollectionViewController.collectionView(_:canPerformPrimaryActionForItemAt:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = [v2 traitCollection];
  v6 = UITraitCollection.isMediaPicker.getter(v5);

  if (v6)
  {
    v7 = BrowseCollectionViewController.isModelObjectSupportedByMediaPicker(at:)(a2) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = UICollectionView.isDraggingCell(at:)();
  result = 0;
  if ((v8 & 1) == 0 && (v7 & 1) == 0)
  {
    return [v3 isEditing] ^ 1;
  }

  return result;
}

Swift::Void __swiftcall BrowseCollectionViewController.scrollViewDidScroll(_:)(UIScrollView a1)
{
  [v1 loadViewIfNeeded];
  v2 = *&v1[qword_DFE2F8];
  if (!v2)
  {
    goto LABEL_19;
  }

  v3 = v2;
  v4 = [v3 visibleCells];
  sub_13C80(0, &qword_DFE230, UICollectionViewCell_ptr);
  v5 = sub_AB9760();

  if (v5 >> 62)
  {
    v6 = sub_ABB060();
    if (v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v6 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
    if (v6)
    {
LABEL_4:
      if (v6 >= 1)
      {
        for (i = 0; i != v6; ++i)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v10 = sub_360438(i, v5);
          }

          else
          {
            v10 = *(v5 + 8 * i + 32);
          }

          v15 = v10;
          v11 = v10;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE238, &qword_B09158);
          if (swift_dynamicCast())
          {
            sub_70DF8(v13, v16);
            v9 = v17;
            v8 = v18;
            __swift_project_boxed_opaque_existential_1(v16, v17);
            (*(v8 + 8))(a1.super.super.super.isa, v9, v8);

            __swift_destroy_boxed_opaque_existential_0(v16);
          }

          else
          {
            v14 = 0;
            memset(v13, 0, sizeof(v13));

            sub_12E1C(v13, &qword_DFE240, &qword_B09160);
          }
        }

        return;
      }

      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }
  }
}

Swift::Void __swiftcall BrowseCollectionViewController.configureReusableView(_:)(UICollectionReusableView a1)
{
  swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  if (v2 && a1.super.super.super.isa)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 16);
    v6 = a1.super.super.super.isa;

    v5(v7, ObjectType, v3);
  }

  swift_getObjectType();
  v8 = swift_conformsToProtocol2();
  if (v8 && a1.super.super.super.isa)
  {
    v9 = v8;
    v10 = swift_getObjectType();
    v11 = *(v9 + 16);
    v12 = a1.super.super.super.isa;

    v11(v13, v10, v9);
  }

  [(objc_class *)a1.super.super.super.isa setUserInteractionEnabled:1];
  swift_getObjectType();
  v14 = swift_conformsToProtocol2();
  if (v14)
  {
    if (a1.super.super.super.isa)
    {
      v15 = v14;
      v16 = swift_getObjectType();
      (*(v15 + 16))(0, v16, v15);
    }
  }
}

void sub_2F8138()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v2 = &v31 - v1;
  v3 = sub_AB3820();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = __chkstk_darwin().n128_u64[0];
  v9 = &v31 - v8;
  if ([v0 isViewLoaded])
  {
    v36 = v2;
    [v0 loadViewIfNeeded];
    v10 = *(v0 + qword_DFE2F8);
    if (v10)
    {
      v37 = v10;
      v11 = [v37 indexPathsForVisibleItems];
      v12 = sub_AB9760();

      v13 = *(v12 + 16);
      if (v13)
      {
        v33 = v6;
        v14 = (swift_isaMask & *v0) + 536;
        v15 = *&stru_1F8.segname[(swift_isaMask & *v0) + 16];
        v17 = *(v4 + 16);
        v16 = v4 + 16;
        v39 = v17;
        v40 = v14;
        v18 = *(v16 + 64);
        v31 = v12;
        v19 = v12 + ((v18 + 32) & ~v18);
        v20 = (v16 + 32);
        v38 = *(v16 + 56);
        v32 = (v16 + 16);
        v21 = (v16 - 8);
        v22 = v36;
        v34 = v15;
        v35 = v16;
        v17(v9, v19, v3);
        while (1)
        {
          v15(v9);
          if ((*v20)(v22, 1, v3) == 1)
          {
            (*v21)(v9, v3);
            sub_12E1C(v22, &unk_DE8E20, &qword_AF7990);
          }

          else
          {
            v23 = v22;
            v24 = v0;
            v25 = v33;
            (*v32)(v33, v23, v3);
            isa = sub_AB3770().super.isa;
            v27 = [v37 cellForItemAtIndexPath:{isa, v31}];

            if (v27)
            {
              v0 = v24;
              (*&stru_2E8.segname[(swift_isaMask & *v24) + 8])(v27, v25);
              v28 = *v21;
              (*v21)(v25, v3);
              v28(v9, v3);
            }

            else
            {
              v29 = *v21;
              (*v21)(v25, v3);
              v29(v9, v3);
              v0 = v24;
            }

            v22 = v36;
            v15 = v34;
          }

          v19 += v38;
          if (!--v13)
          {
            break;
          }

          v39(v9, v19, v3);
        }
      }

      else
      {

        v30 = v37;
      }
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall BrowseCollectionViewController.updateForPlayabilityChange()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v2 = &v31 - v1;
  v3 = sub_AB3820();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = __chkstk_darwin().n128_u64[0];
  v9 = &v31 - v8;
  if ([v0 isViewLoaded])
  {
    v37 = v2;
    [v0 loadViewIfNeeded];
    v10 = *(v0 + qword_DFE2F8);
    if (v10)
    {
      v11 = v10;
      v12 = [v11 indexPathsForVisibleItems];
      v13 = sub_AB9760();

      v14 = *(v13 + 16);
      if (v14)
      {
        v36 = v11;
        v33 = v6;
        v15 = (swift_isaMask & *v0) + 536;
        v16 = *&stru_1F8.segname[(swift_isaMask & *v0) + 16];
        v18 = *(v4 + 16);
        v17 = v4 + 16;
        v39 = v18;
        v40 = v15;
        v19 = v13 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
        v20 = (v17 + 32);
        v38 = *(v17 + 56);
        v31 = v13;
        v32 = (v17 + 16);
        v21 = (v17 - 8);
        v22 = v37;
        v34 = v16;
        v35 = v17;
        v18(v9, v19, v3);
        while (1)
        {
          v16(v9);
          if ((*v20)(v22, 1, v3) == 1)
          {
            (*v21)(v9, v3);
            sub_12E1C(v22, &unk_DE8E20, &qword_AF7990);
          }

          else
          {
            v23 = v22;
            v24 = v0;
            v25 = v33;
            (*v32)(v33, v23, v3);
            isa = sub_AB3770().super.isa;
            v27 = [v36 cellForItemAtIndexPath:{isa, v31}];

            if (v27)
            {
              v0 = v24;
              (*&stru_2E8.segname[(swift_isaMask & *v24) + 8])(v27, v25);
              v28 = *v21;
              (*v21)(v25, v3);
              v28(v9, v3);
            }

            else
            {
              v29 = *v21;
              (*v21)(v25, v3);
              v29(v9, v3);
              v0 = v24;
            }

            v22 = v37;
            v16 = v34;
          }

          v19 += v38;
          if (!--v14)
          {
            break;
          }

          v39(v9, v19, v3);
        }

        v30 = v36;
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_2F8924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for BrowseCollectionViewController(0, *(&stru_20.filesize + (swift_isaMask & *v4)), a3, a4);
  v7 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFE1F0, &unk_B09120);
  if (!swift_dynamicCast())
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    sub_12E1C(v15, &unk_E04550, &unk_B0D160);
    return;
  }

  sub_70DF8(v15, v17);
  v8 = v18;
  v9 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  v10 = (*&stru_158.sectname[swift_isaMask & *v7])();
  if (v10)
  {
    v11 = v10;
    v12 = [v10 results];

    if (!v12)
    {
      __break(1u);
      return;
    }

    isa = sub_AB3770().super.isa;
    v14 = [v12 itemAtIndexPath:isa];
  }

  else
  {
    v14 = 0;
  }

  (*(v9 + 40))(a1, a2, v14, v8, v9);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v17);
}

void sub_2F8B18(double a1, double a2)
{
  v3 = (v2 + qword_DFE2A8);
  *v3 = a1;
  v3[1] = a2;
}

double sub_2F8B4C(uint64_t a1)
{
  *(v1 + qword_DFE2C8) = a1;

  return result;
}

void sub_2F8BA4(uint64_t a1)
{
  v2 = *(v1 + qword_DFE2E0);
  *(v1 + qword_DFE2E0) = a1;
}

void sub_2F8BB8(uint64_t a1)
{
  v2 = *(v1 + qword_DFE2F8);
  *(v1 + qword_DFE2F8) = a1;
}

double sub_2F8BDC(uint64_t a1)
{
  *(v1 + qword_DFE308) = a1;

  sub_300B18();

  return result;
}

void sub_2F8C38(void *a1, void *a2)
{
  v174 = a2;
  v205 = sub_AB36B0();
  v176 = *(v205 - 8);
  __chkstk_darwin();
  v204 = &v164 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE3C0, &unk_B0D180);
  __chkstk_darwin();
  v5 = &v164 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v198 = (&v164 - v6);
  __chkstk_darwin();
  v8 = &v164 - v7;
  v9 = sub_AB3730();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v166 = &v164 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v171 = &v164 - v12;
  __chkstk_darwin();
  v14 = &v164 - v13;
  __chkstk_darwin();
  v170 = &v164 - v15;
  __chkstk_darwin();
  v173 = &v164 - v16;
  __chkstk_darwin();
  v169 = &v164 - v17;
  __chkstk_darwin();
  v168 = &v164 - v18;
  __chkstk_darwin();
  v172 = &v164 - v19;
  __chkstk_darwin();
  v167 = &v164 - v20;
  __chkstk_darwin();
  v22 = &v164 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v187 = &v164 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v25 = &v164 - v24;
  __chkstk_darwin();
  v186 = &v164 - v26;
  v27 = sub_AB3820();
  v200 = *(v27 - 8);
  __chkstk_darwin();
  v194 = &v164 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v182 = &v164 - v29;
  __chkstk_darwin();
  __chkstk_darwin();
  v195 = &v164 - v30;
  __chkstk_darwin();
  v183 = &v164 - v31;
  __chkstk_darwin();
  v185 = &v164 - v32;
  __chkstk_darwin();
  v196 = &v164 - v33;
  __chkstk_darwin();
  v184 = &v164 - v34;
  __chkstk_darwin();
  if (!a1)
  {
    return;
  }

  v193 = (&v164 - v35);
  v181 = v25;
  v197 = v5;
  v165 = v14;
  v178 = v10;
  v180 = v36;
  v37 = swift_allocObject();
  v38 = a1;
  v39 = sub_971EC(_swiftEmptyArrayStorage);
  v206 = v37;
  *(v37 + 16) = v39;
  v40 = [v38 deletedItemIndexPaths];
  v41 = *(sub_AB9760() + 16);

  v201 = v27;
  v179 = v38;
  v203 = v9;
  v177 = v22;
  if (v41)
  {
    v164 = [v38 deletedItemIndexPaths];
    v42 = sub_AB9760();
    v192 = *(v42 + 16);
    if (v192)
    {
      v43 = 0;
      v44 = 0;
      v190 = v200 + 16;
      v191 = (v200 + 8);
      v189 = (v200 + 48);
      v188 = (v200 + 32);
      v199 = _swiftEmptyArrayStorage;
      v45 = v186;
      while (v43 < *(v42 + 16))
      {
        v40 = v8;
        v41 = ((*(v200 + 80) + 32) & ~*(v200 + 80));
        v46 = v42;
        v47 = &v41[v42];
        v48 = *(v200 + 72);
        v49 = v27;
        v50 = v193;
        (*(v200 + 16))(v193, &v47[v48 * v43], v49);
        sub_302428(v50, v206, v202, v45);
        (*v191)(v50, v49);
        v27 = v49;
        if ((*v189)(v45, 1, v49) == 1)
        {
          sub_12E1C(v45, &unk_DE8E20, &qword_AF7990);
          v8 = v40;
        }

        else
        {
          v51 = v45;
          v52 = *v188;
          v53 = v184;
          (*v188)(v184, v51, v49);
          v52(v196, v53, v49);
          v8 = v40;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v199 = sub_6AE4C(0, v199[2] + 1, 1, v199);
          }

          v55 = v199[2];
          v54 = v199[3];
          if (v55 >= v54 >> 1)
          {
            v199 = sub_6AE4C((v54 > 1), v55 + 1, 1, v199);
          }

          v56 = v199;
          v199[2] = v55 + 1;
          v27 = v201;
          v52(&v41[v56 + v55 * v48], v196, v201);
          v9 = v203;
          v45 = v186;
        }

        ++v43;
        v42 = v46;
        if (v192 == v43)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_95;
    }

    v44 = 0;
    v199 = _swiftEmptyArrayStorage;
LABEL_16:

    isa = sub_AB9740().super.isa;

    [v174 deleteItemsAtIndexPaths:isa];

    v22 = v177;
  }

  else
  {
    v44 = 0;
  }

  v58 = v179;
  v59 = [v179 deletedSections];
  sub_AB36D0();
  v60 = sub_AB36E0();
  v61 = v178;
  v62 = *(v178 + 8);
  v190 = v178 + 8;
  v189 = v62;
  (v62)(v22, v9);

  if (v60 < 1)
  {
    v8 = v189;
    v80 = v174;
  }

  else
  {
    v63 = [v58 deletedSections];
    v64 = v172;
    v199 = v63;
    sub_AB36D0();
    (*(v61 + 16))(v22, v64, v9);
    sub_303F44(&qword_DFE3C8, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
    sub_AB95A0();
    sub_303F44(&qword_DFE3D0, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
    v65 = (v176 + 8);
    v66 = _swiftEmptyArrayStorage;
    v67 = v204;
    while (1)
    {
      sub_AB9CA0();
      sub_303F44(&unk_DFE3D8, &type metadata accessor for IndexSet.Index, &protocol conformance descriptor for IndexSet.Index);
      v68 = v205;
      v69 = sub_AB91C0();
      (*v65)(v67, v68);
      if (v69)
      {
        break;
      }

      v70 = sub_AB9D80();
      v72 = *v71;
      v70(&aBlock, 0);
      sub_AB9CB0();
      v73 = sub_301FBC(v72, v206, v202);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = sub_6AE9C(0, *(v66 + 2) + 1, 1, v66);
      }

      v75 = *(v66 + 2);
      v74 = *(v66 + 3);
      if (v75 >= v74 >> 1)
      {
        v66 = sub_6AE9C((v74 > 1), v75 + 1, 1, v66);
      }

      *(v66 + 2) = v75 + 1;
      *&v66[8 * v75 + 32] = v73;
      v9 = v203;
    }

    sub_12E1C(v8, &qword_DFE3C0, &unk_B0D180);
    (v189)(v172, v9);

    sub_303F44(&qword_DE9C70, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
    v76 = v168;
    sub_ABABA0();
    v77 = *(v66 + 2);
    if (v77)
    {
      v78 = (v66 + 32);
      v27 = v201;
      v22 = v177;
      do
      {
        v79 = *v78++;
        v207 = v79;
        sub_ABAB80();
        --v77;
      }

      while (v77);
    }

    else
    {
      v27 = v201;
      v22 = v177;
    }

    v81 = v167;
    (*(v178 + 32))(v167, v76, v9);
    sub_AB36C0(v82);
    v84 = v83;
    v8 = v189;
    (v189)(v81, v9);
    v80 = v174;
    [v174 deleteSections:v84];
  }

  v85 = swift_allocObject();
  v86 = v206;
  v85[2] = v80;
  v85[3] = v86;
  v87 = v202;
  v85[4] = v202;
  v212 = sub_303DCC;
  v213 = v85;
  aBlock = _NSConcreteStackBlock;
  v209 = 1107296256;
  v210 = sub_3020F4;
  v211 = &block_descriptor_73;
  v88 = _Block_copy(&aBlock);
  v188 = v80;

  v199 = v87;

  v89 = v179;
  [v179 enumerateSectionMovesUsingBlock:v88];
  _Block_release(v88);
  v90 = [v89 insertedSections];
  sub_AB36D0();
  v91 = sub_AB36E0();
  (v8)(v22, v9);

  if (v91 >= 1)
  {
    v202 = 0;
    v92 = [v89 insertedSections];
    v93 = v173;
    v196 = v92;
    sub_AB36D0();
    (*(v178 + 16))(v22, v93, v9);
    sub_303F44(&qword_DFE3C8, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
    v94 = v198;
    sub_AB95A0();
    v40 = sub_303F44(&qword_DFE3D0, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
    v95 = (v176 + 8);
    v96 = _swiftEmptyArrayStorage;
    while (1)
    {
      v97 = v204;
      sub_AB9CA0();
      sub_303F44(&unk_DFE3D8, &type metadata accessor for IndexSet.Index, &protocol conformance descriptor for IndexSet.Index);
      v43 = v9;
      v9 = v94;
      v8 = v205;
      v98 = sub_AB91C0();
      (*v95)(v97, v8);
      if (v98)
      {
        break;
      }

      v99 = sub_AB9D80();
      v27 = *v100;
      v99(&aBlock, 0);
      v41 = v43;
      sub_AB9CB0();
      v101 = sub_301FBC(v27, v206, v199);
      if (v202)
      {

        v163 = v9;
        goto LABEL_99;
      }

      v102 = v101;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v96 = sub_6AE9C(0, *(v96 + 2) + 1, 1, v96);
      }

      v9 = v43;
      v104 = *(v96 + 2);
      v103 = *(v96 + 3);
      if (v104 >= v103 >> 1)
      {
        v96 = sub_6AE9C((v103 > 1), v104 + 1, 1, v96);
      }

      *(v96 + 2) = v104 + 1;
      *&v96[8 * v104 + 32] = v102;
      v27 = v201;
      v94 = v198;
    }

    sub_12E1C(v9, &qword_DFE3C0, &unk_B0D180);
    (v189)(v173, v43);

    sub_303F44(&qword_DE9C70, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
    v8 = v170;
    sub_ABABA0();
    v105 = *(v96 + 2);
    v9 = v43;
    if (v105)
    {
      v106 = (v96 + 32);
      v22 = v177;
      v44 = v202;
      do
      {
        v107 = *v106++;
        v207 = v107;
        sub_ABAB80();
        --v105;
      }

      while (v105);
    }

    else
    {
      v22 = v177;
      v44 = v202;
    }

    v108 = v169;
    (*(v178 + 32))(v169, v8, v9);
    sub_AB36C0(v109);
    v111 = v110;
    (v189)(v108, v9);
    [v188 insertSections:v111];
  }

  v112 = v179;
  v113 = [v179 insertedItemIndexPaths];
  v114 = *(sub_AB9760() + 16);

  if (!v114)
  {
    v123 = v188;
LABEL_62:
    v125 = swift_allocObject();
    v126 = v206;
    v125[2] = v123;
    v125[3] = v126;
    v127 = v199;
    v125[4] = v199;
    v212 = sub_303E48;
    v213 = v125;
    aBlock = _NSConcreteStackBlock;
    v209 = 1107296256;
    v210 = sub_3022B8;
    v211 = &block_descriptor_79;
    v128 = _Block_copy(&aBlock);
    v196 = v123;

    v199 = v127;

    v129 = v179;
    [v179 enumerateItemMovesUsingBlock:v128];
    _Block_release(v128);
    v130 = [v129 updatedSections];
    sub_AB36D0();
    v131 = sub_AB36E0();
    (v189)(v22, v9);

    if (v131 < 1)
    {
      v43 = v201;
      v27 = v187;
    }

    else
    {
      v132 = [v129 updatedSections];
      v133 = v171;
      v202 = v132;
      sub_AB36D0();
      (*(v178 + 16))(v22, v133, v9);
      sub_303F44(&qword_DFE3C8, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
      sub_AB95A0();
      v40 = sub_303F44(&qword_DFE3D0, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
      v8 = v176 + 8;
      v134 = _swiftEmptyArrayStorage;
      v27 = v204;
      while (1)
      {
        v41 = v197;
        sub_AB9CA0();
        sub_303F44(&unk_DFE3D8, &type metadata accessor for IndexSet.Index, &protocol conformance descriptor for IndexSet.Index);
        v135 = v205;
        v136 = sub_AB91C0();
        (*v8)(v27, v135);
        if (v136)
        {
          break;
        }

        v137 = sub_AB9D80();
        v43 = *v138;
        v137(&aBlock, 0);
        sub_AB9CB0();
        v139 = sub_301FBC(v43, v206, v199);
        if (v44)
        {

          v163 = v197;
          goto LABEL_99;
        }

        v140 = v139;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v134 = sub_6AE9C(0, *(v134 + 2) + 1, 1, v134);
        }

        v142 = *(v134 + 2);
        v141 = *(v134 + 3);
        if (v142 >= v141 >> 1)
        {
          v134 = sub_6AE9C((v141 > 1), v142 + 1, 1, v134);
        }

        *(v134 + 2) = v142 + 1;
        *&v134[8 * v142 + 32] = v140;
        v9 = v203;
      }

      sub_12E1C(v41, &qword_DFE3C0, &unk_B0D180);
      (v189)(v171, v9);

      sub_303F44(&qword_DE9C70, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
      v143 = v166;
      sub_ABABA0();
      v144 = *(v134 + 2);
      if (v144)
      {
        v145 = (v134 + 32);
        v43 = v201;
        v27 = v187;
        do
        {
          v146 = *v145++;
          v207 = v146;
          sub_ABAB80();
          --v144;
        }

        while (v144);
      }

      else
      {
        v43 = v201;
        v27 = v187;
      }

      v147 = v165;
      (*(v178 + 32))(v165, v143, v9);
      sub_AB36C0(v148);
      v150 = v149;
      (v189)(v147, v9);
      [v196 reloadSections:v150];
    }

    v151 = v179;
    v152 = [v179 updatedItemIndexPaths];
    v153 = *(sub_AB9760() + 16);

    if (!v153)
    {

      return;
    }

    v195 = [v151 updatedItemIndexPaths];
    v154 = sub_AB9760();
    v205 = *(v154 + 16);
    if (!v205)
    {
LABEL_92:

      v162 = sub_AB9740().super.isa;

      [v196 reloadItemsAtIndexPaths:v162];

      return;
    }

    v155 = 0;
    v8 = v200 + 8;
    v198 = (v200 + 48);
    v203 = v200 + 16;
    v204 = (v200 + 32);
    v41 = _swiftEmptyArrayStorage;
    v40 = v180;
    v197 = (v200 + 8);
    while (v155 < *(v154 + 16))
    {
      v156 = (*(v200 + 80) + 32) & ~*(v200 + 80);
      v9 = *(v200 + 72);
      (*(v200 + 16))(v40, v154 + v156 + v9 * v155, v43);
      sub_302428(v40, v206, v199, v27);
      if (v44)
      {
        goto LABEL_101;
      }

      (*v8)(v40, v43);
      if ((*v198)(v27, 1, v43) == 1)
      {
        sub_12E1C(v27, &unk_DE8E20, &qword_AF7990);
      }

      else
      {
        v202 = 0;
        v157 = v154;
        v158 = *v204;
        v159 = v182;
        (*v204)(v182, v27, v43);
        v158(v194, v159, v43);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_6AE4C(0, *(v41 + 2) + 1, 1, v41);
        }

        v161 = *(v41 + 2);
        v160 = *(v41 + 3);
        v154 = v157;
        if (v161 >= v160 >> 1)
        {
          v41 = sub_6AE4C((v160 > 1), v161 + 1, 1, v41);
        }

        v8 = v197;
        *(v41 + 2) = v161 + 1;
        v43 = v201;
        v158(&v41[v156 + v161 * v9], v194, v201);
        v27 = v187;
        v40 = v180;
        v44 = v202;
      }

      if (v205 == ++v155)
      {
        goto LABEL_92;
      }
    }

    goto LABEL_96;
  }

  v186 = [v112 insertedItemIndexPaths];
  v43 = sub_AB9760();
  v198 = *(v43 + 16);
  if (!v198)
  {
LABEL_61:

    v124 = sub_AB9740().super.isa;

    v123 = v188;
    [v188 insertItemsAtIndexPaths:v124];

    v9 = v203;
    v22 = v177;
    goto LABEL_62;
  }

  v115 = 0;
  v196 = (v200 + 16);
  v9 = v200 + 8;
  v193 = (v200 + 48);
  v192 = (v200 + 32);
  v40 = _swiftEmptyArrayStorage;
  v116 = v181;
  v41 = v185;
  v191 = (v200 + 8);
  while (v115 < *(v43 + 16))
  {
    v117 = (*(v200 + 80) + 32) & ~*(v200 + 80);
    v8 = *(v200 + 72);
    (*(v200 + 16))(v41, v43 + v117 + v8 * v115, v27);
    sub_302428(v41, v206, v199, v116);
    if (v44)
    {
      goto LABEL_100;
    }

    (*v9)(v41, v27);
    if ((*v193)(v116, 1, v27) == 1)
    {
      sub_12E1C(v116, &unk_DE8E20, &qword_AF7990);
    }

    else
    {
      v202 = 0;
      v118 = v43;
      v119 = *v192;
      v120 = v183;
      (*v192)(v183, v116, v27);
      v119(v195, v120, v27);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_6AE4C(0, v40[2] + 1, 1, v40);
      }

      v122 = v40[2];
      v121 = v40[3];
      v43 = v118;
      if (v122 >= v121 >> 1)
      {
        v40 = sub_6AE4C((v121 > 1), v122 + 1, 1, v40);
      }

      v9 = v191;
      v40[2] = v122 + 1;
      v27 = v201;
      v119(v40 + v117 + v122 * v8, v195, v201);
      v116 = v181;
      v41 = v185;
      v44 = v202;
    }

    if (v198 == ++v115)
    {
      goto LABEL_61;
    }
  }

LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);

  v163 = v8;
LABEL_99:
  sub_12E1C(v163, &qword_DFE3C0, &unk_B0D180);

  __break(1u);

  (*v191)(v27, v8);

  __break(1u);
LABEL_100:

  (*v9)(v41, v27);

  __break(1u);
LABEL_101:

  (*v8)(v40, v43);

  __break(1u);
}

id sub_2FAA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for BrowseCollectionViewController(0, *(&stru_20.filesize + (swift_isaMask & *v4)), a3, a4);
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE3F0, &qword_B09308);
  if (swift_dynamicCast())
  {
    sub_70DF8(&v39, &v43);
    v6 = v45;
    v7 = v46;
    __swift_project_boxed_opaque_existential_1(&v43, v45);
    v8 = (*(v7 + 8))(v6, v7);
  }

  else
  {
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    sub_12E1C(&v39, &qword_DFE3F8, &unk_B09310);
    v42 = v5;
    v9 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFE1F0, &unk_B09120);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_19:
      v41 = 0;
      v39 = 0u;
      v40 = 0u;
      sub_12E1C(&v39, &unk_E04550, &unk_B0D160);
LABEL_21:
      v43 = 0;
      v44 = 0xE000000000000000;
      sub_ABAD90(211);
      v49._countAndFlagsBits = 0xD0000000000000A0;
      v49._object = 0x8000000000B5DF30;
      sub_AB94A0(v49);
      *&v39 = v9;
      swift_getWitnessTable();
      sub_ABB370();
      v50._object = 0x8000000000B5DFE0;
      v50._countAndFlagsBits = 0xD000000000000031;
      sub_AB94A0(v50);
      goto LABEL_22;
    }

    sub_70DF8(&v39, &v43);
    v10 = v45;
    v11 = v46;
    __swift_project_boxed_opaque_existential_1(&v43, v45);
    if (((*(v11 + 32))(v10, v11) & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(&v43);
      goto LABEL_21;
    }

    v12 = [objc_allocWithZone(UICollectionViewTableLayout) init];
    sub_2FB2C0(v12);
    v8 = v12;
  }

  v9 = v8;
  __swift_destroy_boxed_opaque_existential_0(&v43);
  v13 = [v5 view];
  if (!v13)
  {
    __break(1u);
    goto LABEL_19;
  }

  v14 = v13;
  [v13 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:v9 collectionViewLayout:{v16, v18, v20, v22}];
  v42 = v5;
  v24 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFE1F0, &unk_B09120);
  if (swift_dynamicCast())
  {
    sub_70DF8(&v39, &v43);
    v25 = v46;
    __swift_project_boxed_opaque_existential_1(&v43, v45);
    v26 = *(v25 + 8);
    v27 = v23;
    v28 = v23;
    v26();

    __swift_destroy_boxed_opaque_existential_0(&v43);
    goto LABEL_14;
  }

  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  sub_12E1C(&v39, &unk_E04550, &unk_B0D160);
  v29 = [swift_getObjCClassFromMetadata() instanceMethodForSelector:"collectionView:cellForItemAtIndexPath:"];
  v30 = [v24 methodForSelector:"collectionView:cellForItemAtIndexPath:"];
  v27 = v23;
  if (!v29)
  {
    if (v30)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (v30 && v29 == v30)
  {
LABEL_12:
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_ABAD90(170);
    v47._countAndFlagsBits = 0xD0000000000000A7;
    v47._object = 0x8000000000B5E020;
    sub_AB94A0(v47);
    *&v39 = v24;
    swift_getWitnessTable();
    sub_ABB370();
    v48._countAndFlagsBits = 46;
    v48._object = 0xE100000000000000;
    sub_AB94A0(v48);
LABEL_22:
    result = sub_ABAFD0();
    __break(1u);
    return result;
  }

LABEL_14:
  v42 = v24;
  v31 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE3B0, &qword_B092E8);
  if (swift_dynamicCast())
  {
    sub_70DF8(&v39, &v43);
    v32 = v46;
    __swift_project_boxed_opaque_existential_1(&v43, v45);
    v33 = *(v32 + 8);
    v34 = v27;
    v33();

    __swift_destroy_boxed_opaque_existential_0(&v43);
  }

  else
  {
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    sub_12E1C(&v39, &qword_DFE3B8, &unk_B092F0);
  }

  v35 = v27;
  [v35 setDataSource:v31];
  [v35 setDelegate:v31];
  [v35 setPrefetchDataSource:*(v31 + qword_DFE300)];
  (*&stru_1F8.segname[(swift_isaMask & *v31) + 8])(v35);

  v36 = v35;
  v37 = [v36 showsVerticalScrollIndicator];

  *(v31 + qword_DFE310) = v37;
  return v36;
}

void sub_2FB0D8()
{
  v1 = swift_isaMask & *v0;
  [v0 loadViewIfNeeded];
  v2 = *(v0 + qword_DFE2F8);
  if (v2)
  {
    v3 = [v2 collectionViewLayout];
    v16 = v0;
    type metadata accessor for BrowseCollectionViewController(0, *(v1 + 80), v4, v5);
    v6 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE3F0, &qword_B09308);
    if (swift_dynamicCast())
    {
      sub_70DF8(v14, v17);
      v7 = v18;
      v8 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      (*(v8 + 16))(v3, v7, v8);
      __swift_destroy_boxed_opaque_existential_0(v17);
    }

    else
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
      sub_12E1C(v14, &qword_DFE3F8, &unk_B09310);
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        v10 = v9;
        v11 = v3;
        sub_2FB2C0(v10);
      }
    }

    [v6 loadViewIfNeeded];
    v12 = *(v6 + qword_DFE2F8);
    if (v12)
    {
      v13 = [v12 collectionViewLayout];
      [v13 invalidateLayout];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_2FB2C0(void *a1)
{
  v2 = v1;
  v4 = swift_isaMask & *v1;
  v5 = [v2 traitCollection];
  v6 = [v2 view];
  if (v6)
  {
    v7 = v6;
    [v6 music_inheritedLayoutInsets];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [v7 bounds];
    v16 = CGRectGetWidth(v43) - v11 - v15;
    [v7 bounds];
    v17 = CGRectGetHeight(v44) - v9 - v13;
    v39 = v2;
    type metadata accessor for BrowseCollectionViewController(0, *(v4 + 80), v18, v19);
    v20 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFE1F0, &unk_B09120);
    if (swift_dynamicCast())
    {
      sub_70DF8(&v36, v40);
      v21 = v41;
      v22 = v42;
      __swift_project_boxed_opaque_existential_1(v40, v41);
      (*(v22 + 24))(v5, v21, v22, v16, v17);
      if ((v24 & 1) == 0)
      {
        [a1 setRowHeight:v23];
      }

      __swift_destroy_boxed_opaque_existential_0(v40);
    }

    else
    {
      v38 = 0;
      v36 = 0u;
      v37 = 0u;
      sub_12E1C(&v36, &unk_E04550, &unk_B0D160);
    }

    v39 = v20;
    v25 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE3B0, &qword_B092E8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v38 = 0;
      v36 = 0u;
      v37 = 0u;
      sub_12E1C(&v36, &qword_DFE3B8, &unk_B092F0);
LABEL_16:

      return;
    }

    sub_70DF8(&v36, v40);
    v26 = v41;
    v27 = v42;
    __swift_project_boxed_opaque_existential_1(v40, v41);
    v28 = (*(v27 + 24))(v5, v26, v27, v16, v17);
    if (v30)
    {
LABEL_15:
      __swift_destroy_boxed_opaque_existential_0(v40);
      goto LABEL_16;
    }

    v31 = v29;
    v32 = (*&stru_158.sectname[swift_isaMask & *v25])(v28);
    if (!v32)
    {
LABEL_14:
      [a1 setSectionHeaderHeight:0.0];
      goto LABEL_15;
    }

    v33 = v32;
    v34 = [v32 results];

    if (v34)
    {
      v35 = [v34 numberOfSections];

      if (v35 >= 2)
      {
        [a1 setSectionHeaderHeight:v31];
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

double sub_2FB62C()
{
  v1 = v0;
  v2 = swift_isaMask & *v0;
  v3 = (*&stru_158.sectname[v2])();
  if (v3)
  {
    v4 = v3;
    if ([v3 isValid])
    {
      v5 = MPModelResponseDidInvalidateNotification;
      v6 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v7 = swift_allocObject();
      *(v7 + 16) = *(v2 + 80);
      *(v7 + 24) = v6;
      type metadata accessor for NotificationObserver();
      swift_allocObject();
      v3 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v5, v4, 1, 1, sub_303D88, v7);
    }

    else
    {
      sub_2FB7A4();

      v3 = 0;
    }
  }

  *(v1 + qword_DFE2C8) = v3;

  return result;
}

void sub_2FB7A4()
{
  if ((v0[qword_DFE2D0] & 1) == 0)
  {
    v0[qword_DFE2D8] = 1;
  }

  ObjectType = swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  if (v2 && v0[qword_DFE2D0] == 1)
  {
    v3 = *(v2 + 8);
    v4 = v2;
    v5 = v0;
    v3(ObjectType, v4);
  }
}

uint64_t BrowseCollectionViewController.collectionView(_:cellForItemAt:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v27 = a1;
  v5 = *v2;
  v6 = swift_isaMask;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v8 = &v26 - v7;
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v3;
  type metadata accessor for BrowseCollectionViewController(0, *(&stru_20.filesize + (v6 & v5)), v13, v14);
  v15 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFE1F0, &unk_B09120);
  if (!swift_dynamicCast())
  {
    v29 = 0;
    memset(v28, 0, sizeof(v28));
    sub_12E1C(v28, &unk_E04550, &unk_B0D160);
    v31[0] = 0;
    v31[1] = 0xE000000000000000;
    sub_ABAD90(165);
    v32._countAndFlagsBits = 0xD0000000000000A2;
    v32._object = 0x8000000000B5DA90;
    sub_AB94A0(v32);
    *&v28[0] = v15;
    swift_getWitnessTable();
    sub_ABB370();
    v33._countAndFlagsBits = 46;
    v33._object = 0xE100000000000000;
    sub_AB94A0(v33);
LABEL_10:
    result = sub_ABAFD0();
    __break(1u);
    return result;
  }

  sub_70DF8(v28, v31);
  (*&stru_1F8.segname[(swift_isaMask & *v15) + 16])(a2);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_12E1C(v8, &unk_DE8E20, &qword_AF7990);
    *&v28[0] = 0;
    *(&v28[0] + 1) = 0xE000000000000000;
    sub_ABAD90(167);
    v34._object = 0x8000000000B5DB40;
    v34._countAndFlagsBits = 0xD000000000000014;
    sub_AB94A0(v34);
    sub_303F44(&qword_DF9260, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    v35._countAndFlagsBits = sub_ABB330();
    sub_AB94A0(v35);

    v36._countAndFlagsBits = 0xD000000000000091;
    v36._object = 0x8000000000B5DB60;
    sub_AB94A0(v36);
    goto LABEL_10;
  }

  v16 = (*(v10 + 32))(v12, v8, v9);
  v17 = (*&stru_158.sectname[swift_isaMask & *v15])(v16);
  if (v17 && (v18 = v17, v19 = [v17 results], v18, v19))
  {
    isa = sub_AB3770().super.isa;
    v21 = [v19 itemAtIndexPath:isa];
  }

  else
  {
    v21 = 0;
  }

  v22 = v31[4];
  __swift_project_boxed_opaque_existential_1(v31, v31[3]);
  v23 = __chkstk_darwin();
  v24 = (*(v22 + 16))(v21, a2, v12, v27, sub_303888, v23);
  (*(v10 + 8))(v12, v9);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v31);
  return v24;
}

uint64_t sub_2FBDBC(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v3 = Strong;
  v4 = *(Strong + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerConfiguration);

  v5 = [a1 pickableObjectFor:{objc_msgSend(v4, "selectionMode")}];
  if (!v5)
  {

    v8 = 0;
    return v8 & 1;
  }

  v6 = v5;
  if (([v4 supportsUnavailableContent] & 1) == 0)
  {
    if (qword_DE6838 != -1)
    {
      swift_once();
    }

    sub_10AC20(a1);
    if (v7 == 5)
    {

LABEL_8:
      v8 = 0;
      return v8 & 1;
    }
  }

  v9 = [v6 musicTypeIdentifier];
  if (v9)
  {
    v10 = v9;
    v11 = sub_AB92A0();
    v13 = v12;

    MPMediaPickerConfiguration.musicTypeIdentifiers.getter();
    v15 = v14;
    v18[0] = v11;
    v18[1] = v13;
    __chkstk_darwin();
    v17[2] = v18;
    v8 = sub_1B39BC(sub_3040E8, v17, v15);
  }

  else
  {

    v8 = 1;
  }

  return v8 & 1;
}

uint64_t sub_2FBF94(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  v3 = Strong;
  v4 = *(Strong + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerConfiguration);

  v5 = [a1 pickableObjectFor:{objc_msgSend(v4, "selectionMode")}];
  if (!v5)
  {

    goto LABEL_11;
  }

  v6 = v5;
  if (([v4 supportsUnavailableContent] & 1) == 0)
  {
    if (qword_DE6838 != -1)
    {
      swift_once();
    }

    sub_10AC20(a1);
    if (v7 == 5)
    {

LABEL_11:
      v15 = 0;
      return v15 & 1;
    }
  }

  v8 = [v6 musicTypeIdentifier];
  if (v8)
  {
    v9 = v8;
    v10 = sub_AB92A0();
    v12 = v11;

    MPMediaPickerConfiguration.musicTypeIdentifiers.getter();
    v14 = v13;
    v18[0] = v10;
    v18[1] = v12;
    __chkstk_darwin();
    v17[2] = v18;
    v15 = sub_1B39BC(sub_109BB0, v17, v14);
  }

  else
  {

    v15 = 1;
  }

  return v15 & 1;
}

BOOL sub_2FC168(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = Strong;
  v4 = *(Strong + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerConfiguration);

  v5 = [v4 selectionMode];
  v6 = [a1 pickableObjectFor:v5];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = swift_unknownObjectWeakLoadStrong();
  if (!v8)
  {

    return 0;
  }

  v9 = v8;
  v21 = v7;
  v10 = [v7 identifiers];
  v11 = OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_selectedItems;
  swift_beginAccess();
  v12 = *&v9[v11];
  if (v12 >> 62)
  {
LABEL_21:
    v13 = sub_ABB060();
  }

  else
  {
    v13 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
  }

  v14 = 0;
  do
  {
    v15 = v13 != v14;
    if (v13 == v14)
    {
      break;
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
      v16 = sub_3602FC(v14, v12);
    }

    else
    {
      if (v14 >= *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_20;
      }

      v16 = *(v12 + 8 * v14 + 32);
    }

    v17 = v16;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v18 = [v16 identifiers];
    v19 = [v18 intersectsSet:v10];

    ++v14;
  }

  while (!v19);

  return v15;
}

char *sub_2FC35C(void *a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *&result[OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerConfiguration];

    if (sub_2FBDBC(a1))
    {

      return (&dword_0 + 1);
    }

    else
    {
      v5 = [a1 pickableObjectFor:0];
      if (v5)
      {
        v6 = v5;

        return 0;
      }

      else
      {
        v7 = [a1 pickableObjectFor:{objc_msgSend(v4, "selectionMode")}];

        return (v7 == 0);
      }
    }
  }

  return result;
}

void BrowseCollectionViewController.prepareInitialContent(_:)(void (*a1)(void), uint64_t a2)
{
  if (*&v2[qword_DFE2F0] || (swift_getObjectType(), (v5 = swift_conformsToProtocol2()) == 0))
  {
    a1();
  }

  else
  {
    v6 = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    v8 = qword_DFE260;
    swift_beginAccess();
    v9 = *&v2[v8];
    v10 = v2;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v2[v8] = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_6AA00(0, v9[2] + 1, 1, v9);
      *&v2[v8] = v9;
    }

    v12 = v9[2];
    v13 = v9[3];
    v14 = v12 + 1;
    if (v12 >= v13 >> 1)
    {
      v17 = v9;
      v18 = v9[2];
      v19 = sub_6AA00((v13 > 1), v12 + 1, 1, v17);
      v12 = v18;
      v9 = v19;
    }

    v9[2] = v14;
    v15 = &v9[2 * v12];
    v15[4] = sub_2D4D0;
    v15[5] = v7;
    *&v2[v8] = v9;
    swift_endAccess();
    if ((v10[qword_DFE2C0] & 1) == 0)
    {
      v10[qword_DFE2C0] = 1;
      ObjectType = swift_getObjectType();
      (*(v6 + 8))(ObjectType, v6);
    }
  }
}

id BrowseCollectionViewController.init()()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  *(v0 + qword_DFE268) = 0;
  *(v0 + qword_DFE270) = 0;
  *(v0 + qword_DFE278) = 2;
  *(v0 + qword_DFE280) = 2;
  *(v0 + qword_DFE288) = 0;
  *(v0 + qword_DFE290) = 0;
  *(v0 + qword_DFE298) = 0;
  v4 = direct field offset for BrowseCollectionViewController.textDrawingCache;
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  *(v0 + v4) = TextDrawing.Cache.init()();
  *(v0 + qword_DFE2A0) = 1;
  *(v0 + direct field offset for BrowseCollectionViewController.wantsItemLibraryAddKeepLocalControl) = 0;
  v5 = (v0 + qword_DFE2A8);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + qword_DFE2B0) = 0;
  *(v0 + qword_DFE2B8) = 0;
  v6 = qword_DFE250;
  type metadata accessor for Artwork.CachingReference();
  *&v1[v6] = swift_allocObject();
  v1[qword_DFE2C0] = 0;
  *&v1[qword_DFE260] = _swiftEmptyArrayStorage;
  *&v1[qword_DFE2C8] = 0;
  v1[qword_DFE2D0] = 0;
  v1[qword_DFE2D8] = 0;
  *&v1[qword_DFE2E0] = 0;
  v7 = qword_DFE2E8;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *&v1[v7] = UnfairLock.init()();
  *&v1[qword_DFE2F0] = 0;
  *&v1[qword_DFE2F8] = 0;
  v8 = qword_DFE300;
  *&v1[v8] = [objc_allocWithZone(type metadata accessor for old_ArtworkPrefetchingController()) init];
  *&v1[qword_DFE308] = 0;
  v1[qword_DFE310] = 1;
  v11 = type metadata accessor for BrowseCollectionViewController(0, *(&stru_20.filesize + (v3 & v2)), v9, v10);
  v13.receiver = v1;
  v13.super_class = v11;
  return objc_msgSendSuper2(&v13, "initWithNibName:bundle:", 0, 0);
}

id BrowseCollectionViewController.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = swift_isaMask & *v4;
  v6 = *(v4 + qword_DFE2F8);
  if (v6)
  {
    v7 = v6;
    v8 = [v7 dataSource];
    if (v8)
    {
      v9 = v8;
      swift_unknownObjectRelease();
      if (v9 == v4)
      {
        [v7 setDataSource:0];
      }
    }

    v10 = [v7 delegate];
    if (v10)
    {
      v11 = v10;
      swift_unknownObjectRelease();
      if (v11 == v4)
      {
        [v7 setDelegate:0];
      }
    }

    v12 = [v7 prefetchDataSource];
    if (v12)
    {
      v13 = *(v4 + qword_DFE300);
      v14 = v12;
      swift_unknownObjectRelease();
      if (v14 == v13)
      {
        [v7 setPrefetchDataSource:0];
      }
    }
  }

  v15 = type metadata accessor for BrowseCollectionViewController(0, *(v5 + 80), a3, a4);
  v17.receiver = v4;
  v17.super_class = v15;
  return objc_msgSendSuper2(&v17, "dealloc");
}

double sub_2FCA20(uint64_t a1)
{

  return result;
}

void sub_2FCB3C(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v44 = a5;
  v45 = a6;
  v9 = sub_AB7C10();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_AB7C50();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = *&Strong[qword_DFE2E0];
    if (a3)
    {
      if (v18)
      {
        v19 = v18 == a3;
      }

      else
      {
        v19 = 0;
      }

      if (!v19)
      {
        goto LABEL_14;
      }

      v20 = Strong;
      if (a1)
      {
LABEL_9:
        v21 = swift_allocObject();
        v21[2] = v20;
        v21[3] = a3;
        v21[4] = a1;
        v21[5] = a4;
        v22 = swift_allocObject();
        *(v22 + 16) = sub_303FDC;
        *(v22 + 24) = v21;
        v50 = sub_36C08;
        v51 = v22;
        aBlock = _NSConcreteStackBlock;
        v47 = 1107296256;
        v48 = sub_1822E0;
        v49 = &block_descriptor_98;
        v23 = _Block_copy(&aBlock);
        v24 = a3;
        v25 = a4;
        v26 = a1;
        v27 = v20;

        v28 = swift_allocObject();
        v29 = v44;
        v30 = v45;
        v28[2] = v27;
        v28[3] = v29;
        v28[4] = v30;
        v50 = sub_304028;
        v51 = v28;
        aBlock = _NSConcreteStackBlock;
        v47 = 1107296256;
        v48 = sub_1811AC;
        v49 = &block_descriptor_104;
        v31 = _Block_copy(&aBlock);
        v32 = v27;

        [v25 performBatchUpdates:v23 completion:v31];

        _Block_release(v31);
        _Block_release(v23);

LABEL_13:
        Strong = v26;
        goto LABEL_14;
      }
    }

    else
    {
      if (v18)
      {
LABEL_14:

        return;
      }

      v20 = Strong;
      v33 = 0;
      if (a1)
      {
        goto LABEL_9;
      }
    }

    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    v43 = sub_ABA150();
    v34 = swift_allocObject();
    v42 = v20;
    v34[2] = v20;
    v34[3] = a3;
    v35 = v44;
    v36 = v45;
    v34[4] = a4;
    v34[5] = v35;
    v34[6] = v36;
    v50 = sub_303F34;
    v51 = v34;
    aBlock = _NSConcreteStackBlock;
    v47 = 1107296256;
    v48 = sub_1B5EB4;
    v49 = &block_descriptor_88;
    v44 = _Block_copy(&aBlock);
    v37 = a3;
    v38 = a4;

    v39 = v42;

    sub_AB7C30();
    aBlock = _swiftEmptyArrayStorage;
    sub_303F44(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30, &qword_AF8920);
    sub_D1010();
    sub_ABABB0();
    v26 = v43;
    v40 = v44;
    sub_ABA160();

    (*(v10 + 8))(v12, v9);
    (*(v14 + 8))(v16, v13);
    _Block_release(v40);
    goto LABEL_13;
  }
}

void sub_2FD048(void *a1, void *a2, void *a3, void *a4)
{
  (*&stru_158.segname[(swift_isaMask & *a1) + 8])(a2, 1);
  v8 = *(a1 + qword_DFE290);
  if (v8)
  {
    v9 = *(v8 + 24);
    *(v8 + 24) = 0;

    sub_380968();
  }

  v10 = a2;
  sub_302C9C(a2);

  v12 = *(a1 + qword_DFE290);
  if (v12)
  {
    v13 = *(v12 + 24);
    *(v12 + 24) = a2;
    v14 = v10;

    sub_380968();
  }

  v15 = (*(&stru_3D8.flags + (swift_isaMask & *a1)))(v11);
  if (v15)
  {
    v16 = *(v15 + 96);
    *(v15 + 96) = a2;
    v17 = v10;
  }

  v18 = *(a1 + qword_DFE298);
  if (v18)
  {
    v19 = *(v18 + 32);
    *(v18 + 32) = a2;
    v20 = v10;
  }

  sub_2F8C38(a3, a4);
}

uint64_t sub_2FD1D4(void *a1, void *a2, void *a3, uint64_t (*a4)(uint64_t))
{
  (*&stru_158.segname[(swift_isaMask & *a1) + 8])(a2, 0);
  v8 = *(a1 + qword_DFE290);
  if (v8)
  {
    v9 = *(v8 + 24);
    *(v8 + 24) = 0;

    sub_380968();
  }

  v10 = a2;
  sub_302C9C(a2);

  v11 = *(a1 + qword_DFE298);
  if (v11)
  {
    v12 = *(v11 + 32);
    *(v11 + 32) = a2;
    v13 = v10;
  }

  v14 = (*(&stru_3D8.flags + (swift_isaMask & *a1)))();
  if (v14)
  {
    v15 = *(v14 + 96);
    *(v14 + 96) = a2;
    v16 = v10;
  }

  sub_2FB0D8();
  [a3 reloadData];
  v17 = *(a1 + qword_DFE290);
  if (v17)
  {
    v18 = *(v17 + 24);
    *(v17 + 24) = a2;
    v19 = v10;

    sub_380968();
  }

  return a4(1);
}

id sub_2FD394(void *a1)
{
  v1 = a1;
  v5 = sub_2FD3D8(v1, v2, v3, v4);

  return v5;
}

id sub_2FD3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for BrowseCollectionViewController(0, *(&stru_20.filesize + (swift_isaMask & *v4)), a3, a4);
  v8.receiver = v4;
  v8.super_class = v5;
  v6 = objc_msgSendSuper2(&v8, "viewBackgroundColor");

  return v6;
}

void sub_2FD448(void *a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v4 = a1;
  sub_303BE8(v8, v5, v6, v7);
}

void sub_2FD4A0()
{
  if (![v0 isViewLoaded])
  {
    return;
  }

  [v0 loadViewIfNeeded];
  v1 = *&v0[qword_DFE2F8];
  if (!v1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v2 = v1;
  v3 = [v0 viewBackgroundColor];
  [v2 setBackgroundColor:v3];

  [v0 loadViewIfNeeded];
  v4 = *&v0[qword_DFE2F8];
  if (!v4)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v5 = v4;
  v6 = [v5 visibleCells];
  sub_13C80(0, &qword_DFE230, UICollectionViewCell_ptr);
  v7 = sub_AB9760();

  if (v7 >> 62)
  {
    v8 = sub_ABB060();
    if (v8)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v8 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
    if (v8)
    {
LABEL_6:
      if (v8 >= 1)
      {
        v9 = 0;
        do
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v10 = sub_360438(v9, v7);
          }

          else
          {
            v10 = *(v7 + 8 * v9 + 32);
          }

          ++v9;
          v11 = v10;
          v12 = [v0 viewBackgroundColor];
          [v11 setBackgroundColor:v12];
        }

        while (v8 != v9);
        goto LABEL_14;
      }

      __break(1u);
      goto LABEL_18;
    }
  }

LABEL_14:
}

uint64_t BrowseCollectionViewController.isModelObjectSupportedByMediaPicker(at:)(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v5 = &v21 - v4;
  v6 = sub_AB3820();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin();
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*&stru_1F8.segname[(swift_isaMask & *v2) + 16])(a1, v8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_12E1C(v5, &unk_DE8E20, &qword_AF7990);
LABEL_11:
    v19 = 0;
    return v19 & 1;
  }

  v11 = (*(v7 + 32))(v10, v5, v6);
  v12 = (*&stru_158.sectname[swift_isaMask & *v2])(v11);
  if (!v12 || (v13 = v12, v14 = [v12 results], v13, !v14) || (isa = sub_AB3770().super.isa, v16 = objc_msgSend(v14, "itemAtIndexPath:", isa), v14, isa, !v16))
  {
LABEL_10:
    (*(v7 + 8))(v10, v6);
    goto LABEL_11;
  }

  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17)
  {
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  if (!*(v2 + qword_DFE298))
  {
    (*(v7 + 8))(v10, v6);
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v18 = v17;

  v19 = sub_2FC35C(v18);
  (*(v7 + 8))(v10, v6);
  swift_unknownObjectRelease();

  return v19 & 1;
}

Swift::Void __swiftcall BrowseCollectionViewController.loadView()()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = [objc_opt_self() mainScreen];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [objc_allocWithZone(type metadata accessor for TintColorObservingView()) initWithFrame:{v6, v8, v10, v12}];
  [v13 setAutoresizingMask:18];
  v14 = *&v1[direct field offset for BrowseCollectionViewController.textDrawingCache];
  v15 = [v13 tintColor];
  swift_beginAccess();
  v16 = *(v14 + 24);
  *(v14 + 24) = v15;
  v17 = v15;

  sub_10710C();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = *(&stru_20.filesize + (v3 & v2));
  *(v19 + 24) = v18;
  v20 = &v13[OBJC_IVAR____TtC16MusicApplication22TintColorObservingView_tintColorDidChangeCallback];
  swift_beginAccess();
  v21 = *v20;
  v22 = v20[1];
  *v20 = sub_303B74;
  v20[1] = v19;

  sub_17654(v21, v22);

  [v1 setView:v13];
}

void sub_2FDBC0(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + direct field offset for BrowseCollectionViewController.textDrawingCache);
    v5 = Strong;
    swift_beginAccess();
    v6 = *(v4 + 24);
    *(v4 + 24) = a1;
    v7 = a1;

    sub_10710C();
  }
}

void sub_2FDC50(void *a1)
{
  v1 = a1;
  BrowseCollectionViewController.loadView()();
}

Swift::Void __swiftcall BrowseCollectionViewController.viewDidLoad()()
{
  v3 = v2;
  v4 = *(&stru_20.filesize + (swift_isaMask & *v2));
  v65.receiver = v2;
  v65.super_class = type metadata accessor for BrowseCollectionViewController(0, v4, v0, v1);
  objc_msgSendSuper2(&v65, "viewDidLoad");
  v5 = [v2 navigationItem];
  v6 = &selRef__authenticateReturningError_;
  v7 = [v2 traitCollection];
  v8 = sub_2B51D8(v7);
  v10 = v9;

  sub_387430(v8, v10);
  v11 = *(v3 + direct field offset for BrowseCollectionViewController.textDrawingCache);
  v12 = [v3 traitCollection];
  [v12 displayScale];
  v14 = v13;

  swift_beginAccess();
  *(v11 + 16) = v14;
  sub_106F0C();
  v15 = [v3 view];
  if (!v15)
  {
    __break(1u);
    goto LABEL_29;
  }

  v19 = v15;
  v20 = sub_2FAA3C(v15, v16, v17, v18);
  v21 = *(v3 + qword_DFE2F8);
  *(v3 + qword_DFE2F8) = v20;

  [v3 loadViewIfNeeded];
  if (!*(v3 + qword_DFE2F8))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  [v19 addSubview:?];
  v22 = direct field offset for BrowseCollectionViewController.wantsItemLibraryAddKeepLocalControl;
  swift_beginAccess();
  v23 = 0;
  if (*(v3 + v22) == 1)
  {
    [v3 loadViewIfNeeded];
    v24 = *(v3 + qword_DFE2F8);
    if (!v24)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(qword_DFE320, &qword_B09170);
    swift_allocObject();
    v23 = sub_2F5B1C(v24, &unk_D0AB68, sub_303E54);
  }

  (*(&stru_3D8.reserved2 + (swift_isaMask & *v3)))(v23);
  v25 = *(v3 + qword_DFE300);
  *(v25 + OBJC_IVAR____TtC16MusicApplication32old_ArtworkPrefetchingController_cachingReference) = *(v3 + qword_DFE250);

  swift_unknownObjectRelease();
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = swift_allocObject();
  *(v27 + 16) = v4;
  *(v27 + 24) = v26;
  v28 = (v25 + OBJC_IVAR____TtC16MusicApplication32old_ArtworkPrefetchingController_catalogMetricsProviding);
  v29 = *(v25 + OBJC_IVAR____TtC16MusicApplication32old_ArtworkPrefetchingController_catalogMetricsProviding);
  v30 = *(v25 + OBJC_IVAR____TtC16MusicApplication32old_ArtworkPrefetchingController_catalogMetricsProviding + 8);
  *v28 = sub_303B7C;
  v28[1] = v27;

  sub_17654(v29, v30);

  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = swift_allocObject();
  *(v32 + 16) = v4;
  *(v32 + 24) = v31;
  v33 = (v25 + OBJC_IVAR____TtC16MusicApplication32old_ArtworkPrefetchingController_catalogProviding);
  v34 = *(v25 + OBJC_IVAR____TtC16MusicApplication32old_ArtworkPrefetchingController_catalogProviding);
  v35 = *(v25 + OBJC_IVAR____TtC16MusicApplication32old_ArtworkPrefetchingController_catalogProviding + 8);
  *v33 = sub_303B84;
  v33[1] = v32;

  sub_17654(v34, v35);

  [v3 loadViewIfNeeded];
  v36 = *(v3 + qword_DFE2F8);
  if (!v36)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  type metadata accessor for ModelResponseIndexBarController();
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 40) = 100;
  swift_unknownObjectWeakInit();
  *(v37 + 56) = _swiftEmptyArrayStorage;
  *(v37 + 64) = 0;
  *(v37 + 72) = 0;
  *(v37 + 80) = 0;
  *(v37 + 88) = 1;
  *(v37 + 16) = v36;
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v39 = v36;
  if (Strong)
  {
    v40 = Strong;

    sub_381368(v41, v40);
  }

  v42 = sub_381260();
  if (v42)
  {
    v43 = v42;
    v44 = swift_unknownObjectWeakLoadStrong();
    if (v44)
    {
      if (*(v37 + 32) == 1)
      {
        v64 = v44;
        v45 = *(v43 + 16);
        if (v45)
        {

          sub_ABAEC0();
          v46 = objc_opt_self();
          v47 = v43 + 40;
          do
          {

            v48 = sub_AB9260();
            v49 = [v46 keyCommandWithInput:v48 modifierFlags:0 action:"indexKeyCommandHandler:"];

            sub_ABAE90();
            sub_ABAED0();
            sub_ABAEE0();
            sub_ABAEA0();
            v47 += 16;
            --v45;
          }

          while (v45);
          v6 = &selRef__authenticateReturningError_;
        }

        else
        {
        }

        sub_380230(_swiftEmptyArrayStorage);

        Strong = v64;
        goto LABEL_18;
      }
    }
  }

  sub_380230(_swiftEmptyArrayStorage);
LABEL_18:

  v50 = *&stru_158.sectname[swift_isaMask & *v3];
  v51 = v50();
  v52 = *(v37 + 24);
  *(v37 + 24) = v51;
  v53 = v51;

  sub_380968();
  *(v3 + qword_DFE290) = v37;

  v54 = [v3 v6[334]];
  LOBYTE(v53) = UITraitCollection.isMediaPicker.getter(v54);

  if ((v53 & 1) == 0 || (v55 = [v3 navigationController]) == 0)
  {

    goto LABEL_24;
  }

  v56 = v55;
  type metadata accessor for MediaPickerNavigationController(0);
  if (!swift_dynamicCastClass())
  {

    return;
  }

  v57 = v56;
  [v3 loadViewIfNeeded];
  v58 = *(v3 + qword_DFE2F8);
  if (v58)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE318, &qword_B09168);
    v59 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v59 + 24) = 0;
    *(v59 + 32) = 0;
    swift_unknownObjectWeakAssign();
    v60 = v58;

    v61 = *(v59 + 24);
    *(v59 + 24) = v58;

    v62 = v50();
    v63 = *(v59 + 32);
    *(v59 + 32) = v62;

    *(v3 + qword_DFE298) = v59;

LABEL_24:

    return;
  }

LABEL_32:
  __break(1u);
}

double sub_2FE438(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *&v27[0] = Strong;
    v11 = Strong;
    type metadata accessor for BrowseCollectionViewController(0, a5, v9, v10);
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFE1F0, &unk_B09120);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v30 = 0;
      memset(v29, 0, sizeof(v29));
    }

    v24[0] = v12;
    v13 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFE200, &unk_B09130);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v28 = 0;
      memset(v27, 0, sizeof(v27));
    }

    sub_15F84(v29, &v22, &unk_E04550, &unk_B0D160);
    if (v23)
    {
      sub_70DF8(&v22, v24);
      v14 = v25;
      v15 = v26;
      __swift_project_boxed_opaque_existential_1(v24, v25);
      (*(v15 + 64))(a3, v14, v15);
    }

    else
    {
      sub_12E1C(&v22, &unk_E04550, &unk_B0D160);
      sub_15F84(v27, &v22, &qword_E04580, &qword_B0D190);
      if (!v23)
      {
        sub_12E1C(&v22, &qword_E04580, &qword_B0D190);
        v17 = 0.0;
        goto LABEL_12;
      }

      sub_70DF8(&v22, v24);
      v18 = v25;
      v19 = v26;
      __swift_project_boxed_opaque_existential_1(v24, v25);
      v16 = (*(v19 + 16))(a3, v18, v19);
    }

    v17 = v16;
    __swift_destroy_boxed_opaque_existential_0(v24);
LABEL_12:
    v20 = [a2 traitCollection];
    [v20 displayScale];

    sub_12E1C(v27, &qword_E04580, &qword_B0D190);
    sub_12E1C(v29, &unk_E04550, &unk_B0D160);
    return v17;
  }

  return 0.0;
}

void *sub_2FE6F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v7 = &v37 - v6;
  v8 = sub_AB3820();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    v38 = a4;
    __chkstk_darwin();
    *(&v37 - 2) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE3E8, &qword_B09300);
    UnfairLock.locked<A>(_:)(sub_303E70);
    v15 = *&v46[0];
    if (!*&v46[0])
    {

      return 0;
    }

    (*&stru_1F8.segname[(swift_isaMask & *v13) + 16])(a2);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {

      v16 = &unk_DE8E20;
      v17 = &qword_AF7990;
      v18 = v7;
LABEL_5:
      sub_12E1C(v18, v16, v17);
LABEL_16:

      return 0;
    }

    (*(v9 + 32))(v11, v7, v8);
    v19 = [v15 results];
    if (!v19 || (v20 = v19, isa = sub_AB3770().super.isa, v22 = [v20 itemAtIndexPath:isa], v20, isa, !v22))
    {

      (*(v9 + 8))(v11, v8);
      goto LABEL_16;
    }

    *&v44[0] = v13;
    type metadata accessor for BrowseCollectionViewController(0, v38, v23, v24);
    v25 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFE1F0, &unk_B09120);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v47 = 0;
      memset(v46, 0, sizeof(v46));
    }

    v41[0] = v25;
    v26 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFE200, &unk_B09130);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v45 = 0;
      memset(v44, 0, sizeof(v44));
    }

    sub_15F84(v46, &v39, &unk_E04550, &unk_B0D160);
    if (v40)
    {
      sub_70DF8(&v39, v41);
      v27 = v42;
      v28 = v43;
      __swift_project_boxed_opaque_existential_1(v41, v42);
      v38 = v26;
      v29 = *(v28 + 56);
      v30 = swift_unknownObjectRetain();
      v31 = v29(v30, v27, v28);
    }

    else
    {
      sub_12E1C(&v39, &unk_E04550, &unk_B0D160);
      sub_15F84(v44, &v39, &qword_E04580, &qword_B0D190);
      if (!v40)
      {

        swift_unknownObjectRelease();
        (*(v9 + 8))(v11, v8);
        sub_12E1C(&v39, &qword_E04580, &qword_B0D190);
        sub_12E1C(v44, &qword_E04580, &qword_B0D190);
        v16 = &unk_E04550;
        v17 = &unk_B0D160;
        v18 = v46;
        goto LABEL_5;
      }

      sub_70DF8(&v39, v41);
      v32 = v42;
      v33 = v43;
      __swift_project_boxed_opaque_existential_1(v41, v42);
      v38 = v26;
      v34 = *(v33 + 8);
      v35 = swift_unknownObjectRetain();
      v31 = v34(v35, v32, v33);
    }

    v36 = v31;

    swift_unknownObjectRelease();
    (*(v9 + 8))(v11, v8);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0(v41);
    sub_12E1C(v44, &qword_E04580, &qword_B0D190);
    sub_12E1C(v46, &unk_E04550, &unk_B0D160);

    return v36;
  }

  return result;
}

void sub_2FEC70(void *a1)
{
  v1 = a1;
  BrowseCollectionViewController.viewDidLoad()();
}

Swift::Void __swiftcall BrowseCollectionViewController.viewDidLayoutSubviews()()
{
  v3 = v2;
  v4 = type metadata accessor for BrowseCollectionViewController(0, *(&stru_20.filesize + (swift_isaMask & *v2)), v0, v1);
  v22.receiver = v2;
  v22.super_class = v4;
  objc_msgSendSuper2(&v22, "viewDidLayoutSubviews");
  v5 = [v2 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = v5;
  [v5 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [v3 loadViewIfNeeded];
  v15 = *&v3[qword_DFE2F8];
  if (!v15)
  {
LABEL_9:
    __break(1u);
    return;
  }

  [v15 setFrame:{v8, v10, v12, v14}];
  if (sub_AB38D0())
  {
    sub_2FB0D8();
  }

  v16 = &v3[qword_DFE2A8];
  *v16 = v12;
  v16[1] = v14;
  ObjectType = swift_getObjectType();
  v18 = swift_conformsToProtocol2();
  if (v18)
  {
    (*(v18 + 8))(ObjectType, v18);
    v20 = v19;
    v21 = swift_getObjectType();
    (*(v20 + 96))(v21, v20);
    swift_unknownObjectRelease();
  }
}

void sub_2FEE78(void *a1)
{
  v1 = a1;
  BrowseCollectionViewController.viewDidLayoutSubviews()();
}

Swift::Void __swiftcall BrowseCollectionViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v5 = type metadata accessor for BrowseCollectionViewController(0, *(&stru_20.filesize + (swift_isaMask & *v3)), v1, v2);
  v8.receiver = v3;
  v8.super_class = v5;
  objc_msgSendSuper2(&v8, "viewWillAppear:", a1);
  *(v3 + qword_DFE2D0) = 1;
  if (*(v3 + qword_DFE2A0) == 1)
  {
    [v3 loadViewIfNeeded];
    v6 = *(v3 + qword_DFE2F8);
    if (!v6)
    {
      __break(1u);
      return;
    }

    v7 = v6;
    UICollectionView.clearSelection(using:animated:)([v3 transitionCoordinator], a1);

    swift_unknownObjectRelease();
  }

  if (*(v3 + qword_DFE2C0) != 1 || *(v3 + qword_DFE2D8) == 1)
  {
    *(v3 + qword_DFE2C0) = 1;
    *(v3 + qword_DFE2D8) = 0;
    sub_2FB7A4();
  }
}

void sub_2FEFFC(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  BrowseCollectionViewController.viewWillAppear(_:)(a3);
}

Swift::Void __swiftcall BrowseCollectionViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v5 = type metadata accessor for BrowseCollectionViewController(0, *(&stru_20.filesize + (swift_isaMask & *v3)), v1, v2);
  v6.receiver = v3;
  v6.super_class = v5;
  objc_msgSendSuper2(&v6, "viewWillDisappear:", a1);
  *(v3 + qword_DFE2D0) = 0;
}

void sub_2FF0C8(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  BrowseCollectionViewController.viewWillDisappear(_:)(a3);
}

void sub_2FF12C(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  BrowseCollectionViewController.viewDidAppear(_:)(a3);
}

uint64_t sub_2FF190(char a1, SEL *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v8 = type metadata accessor for BrowseCollectionViewController(0, *(&stru_20.filesize + (swift_isaMask & *v4)), a3, a4);
  v14.receiver = v4;
  v14.super_class = v8;
  objc_msgSendSuper2(&v14, *a2, a1 & 1);
  ObjectType = swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    (*(result + 8))(ObjectType, result);
    v12 = v11;
    v13 = swift_getObjectType();
    (*(v12 + 16))(v5 & 1, v13, v12);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_2FF280(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  BrowseCollectionViewController.viewDidDisappear(_:)(a3);
}

Swift::Void __swiftcall BrowseCollectionViewController.setEditing(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  v7 = *(&stru_20.filesize + (swift_isaMask & *v4));
  v15.receiver = v4;
  v15.super_class = type metadata accessor for BrowseCollectionViewController(0, v7, v2, v3);
  objc_msgSendSuper2(&v15, "setEditing:animated:", _, animated);
  [v4 loadViewIfNeeded];
  v8 = *(v4 + qword_DFE2F8);
  if (!v8)
  {
    goto LABEL_6;
  }

  if (animated)
  {
    [v8 setEditing:_];
    return;
  }

  v9 = objc_opt_self();
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v8;
  *(v10 + 32) = _;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_303BC4;
  *(v11 + 24) = v10;
  v14[4] = sub_2D4D0;
  v14[5] = v11;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_1822E0;
  v14[3] = &block_descriptor_31;
  v12 = _Block_copy(v14);
  v13 = v8;

  [v9 performWithoutAnimation:v12];

  _Block_release(v12);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
LABEL_6:
    __break(1u);
  }
}

void sub_2FF4DC(void *a1, uint64_t a2, Swift::Bool a3, Swift::Bool a4)
{
  v6 = a1;
  BrowseCollectionViewController.setEditing(_:animated:)(a3, a4);
}

Swift::Void __swiftcall BrowseCollectionViewController.music_viewInheritedLayoutInsetsDidChange()()
{
  v3 = type metadata accessor for BrowseCollectionViewController(0, *(&stru_20.filesize + (swift_isaMask & *v2)), v0, v1);
  v6.receiver = v2;
  v6.super_class = v3;
  objc_msgSendSuper2(&v6, "music_viewInheritedLayoutInsetsDidChange");
  [v2 loadViewIfNeeded];
  v4 = *(v2 + qword_DFE2F8);
  if (v4)
  {
    v5 = [v4 collectionViewLayout];
    [v5 invalidateLayout];
  }

  else
  {
    __break(1u);
  }
}

void sub_2FF5F0(void *a1)
{
  v1 = a1;
  BrowseCollectionViewController.music_viewInheritedLayoutInsetsDidChange()();
}

Swift::Void __swiftcall BrowseCollectionViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  v4 = v3;
  isa = a1.value.super.isa;
  v6 = type metadata accessor for BrowseCollectionViewController(0, *(&stru_20.filesize + (swift_isaMask & *v3)), v1, v2);
  v46.receiver = v3;
  v46.super_class = v6;
  objc_msgSendSuper2(&v46, "traitCollectionDidChange:", isa);
  v7 = [v3 traitCollection];
  v8 = [v7 preferredContentSizeCategory];
  v9 = v8;
  if (isa)
  {
    v10 = [(objc_class *)isa preferredContentSizeCategory];
    v11 = sub_AB92A0();
    v13 = v12;
    if (v11 == sub_AB92A0() && v13 == v14)
    {

      goto LABEL_19;
    }

    v16 = sub_ABB3C0();

    if (v16)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  v17 = *(v4 + direct field offset for BrowseCollectionViewController.textDrawingCache);
  [*(v17 + 64) removeAllObjects];
  [*(v17 + 80) removeAllObjects];
  if (*(v17 + 96))
  {
    *(v17 + 104) = 1;
  }

  else
  {
    v18 = [objc_opt_self() defaultCenter];
    if (qword_DE6828 != -1)
    {
      swift_once();
    }

    [v18 postNotificationName:static TextDrawing.Cache.didInvalidateNotification object:v17];
  }

  sub_2FB0D8();
  if ([v4 isViewLoaded])
  {
    [v4 loadViewIfNeeded];
    v19 = *(v4 + qword_DFE2F8);
    if (!v19)
    {
      __break(1u);
      goto LABEL_42;
    }

    [v19 reloadData];
  }

  sub_2FB7A4();
LABEL_19:
  v20 = *(v4 + direct field offset for BrowseCollectionViewController.textDrawingCache);
  [v7 displayScale];
  v22 = v21;
  swift_beginAccess();
  *(v20 + 16) = v22;
  sub_106F0C();
  v23 = *(v4 + qword_DFE2F0);
  if (!v23)
  {
    goto LABEL_30;
  }

  v23 = [v23 request];
  if (!v23)
  {
    goto LABEL_30;
  }

  v24 = v23;
  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (v25)
  {
    v26 = v25;
    v27.rawValue = UITraitCollection.legacyLibraryFilter.getter().rawValue;
    if (isa && v27.rawValue == UITraitCollection.legacyLibraryFilter.getter().rawValue)
    {
      v28 = UITraitCollection.mediaLibrary.getter();
      v29 = [v26 mediaLibrary];
      if (v29)
      {
        v30 = v29;
        sub_13C80(0, &qword_DF86B0, MPMediaLibrary_ptr);
        v31 = sub_ABA790();

        if (v31)
        {
          goto LABEL_29;
        }
      }

      else
      {
      }
    }

    sub_2FB7A4();
  }

LABEL_29:

LABEL_30:
  v32 = UITraitCollection.isMediaPicker.getter(v23);
  if ((v32 & 1) == 0)
  {
    goto LABEL_35;
  }

  v32 = [v4 navigationController];
  if (!v32)
  {
    goto LABEL_35;
  }

  v33 = v32;
  type metadata accessor for MediaPickerNavigationController(0);
  if (!swift_dynamicCastClass() || *(v4 + qword_DFE298))
  {

LABEL_35:
    if (UITraitCollection.isMediaPicker.getter(v32))
    {
LABEL_38:
      v34 = [v4 navigationItem];
      v35 = [v4 traitCollection];
      v36 = sub_2B51D8(v35);
      v38 = v37;

      sub_387430(v36, v38);
      return;
    }

    *(v4 + qword_DFE298) = 0;
LABEL_37:

    goto LABEL_38;
  }

  v39 = v33;
  [v4 loadViewIfNeeded];
  v40 = *(v4 + qword_DFE2F8);
  if (v40)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE318, &qword_B09168);
    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v41 + 24) = 0;
    *(v41 + 32) = 0;
    swift_unknownObjectWeakAssign();
    v42 = v40;

    v43 = *(v41 + 24);
    *(v41 + 24) = v40;

    v44 = (*&stru_158.sectname[swift_isaMask & *v4])();
    v45 = *(v41 + 32);
    *(v41 + 32) = v44;

    *(v4 + qword_DFE298) = v41;
    goto LABEL_37;
  }

LABEL_42:
  __break(1u);
}

void sub_2FFB90(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  BrowseCollectionViewController.traitCollectionDidChange(_:)(v9);
}

id sub_2FFBFC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = _s16MusicApplication30BrowseCollectionViewControllerC16numberOfSections2inSiSo012UICollectionE0C_tF_0();

  return v6;
}

id sub_2FFC48(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  v8 = sub_30336C(a4);

  return v8;
}

void sub_2FFC9C(char a1)
{
  v2 = a1 & 1;
  v3 = direct field offset for BrowseCollectionViewController.wantsItemLibraryAddKeepLocalControl;
  swift_beginAccess();
  if (*(v1 + v3) != v2 && [v1 isViewLoaded])
  {
    if (*(v1 + v3) == 1)
    {
      [v1 loadViewIfNeeded];
      v4 = *(v1 + qword_DFE2F8);
      if (!v4)
      {
        __break(1u);
        return;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(qword_DFE320, &qword_B09170);
      swift_allocObject();
      v5 = sub_2F5B1C(v4, &unk_D0AB68, sub_303E54);
    }

    else
    {
      v5 = 0;
    }

    (*(&stru_3D8.reserved2 + (swift_isaMask & *v1)))(v5);
  }
}

id sub_2FFDCC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  v14 = BrowseCollectionViewController.collectionView(_:cellForItemAt:)(v11, v10);

  (*(v8 + 8))(v10, v7);

  return v14;
}

id sub_2FFEF4(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a1;
  v17 = sub_302674(v13, v12);

  (*(v10 + 8))(v12, v9);

  return v17;
}

uint64_t sub_30002C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_AB3820();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  (*(v5 + 8))(v7, v4);
  return 0;
}

Class sub_3000F8(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = a3;
  v6 = _s16MusicApplication30BrowseCollectionViewControllerC19_sectionIndexTitles3forSaySSGSgSo012UICollectionE0CSg_tF_0();

  if (v6)
  {
    v7.super.isa = sub_AB9740().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  return v7.super.isa;
}

Class sub_30017C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v10 = &v20 - v9;
  if (a4)
  {
    sub_AB92A0();
    a4 = v11;
  }

  v12 = a3;
  v13 = a1;
  BrowseCollectionViewController._collectionView(_:indexPathForSectionIndexTitle:at:)(a4, a5, v10);

  v14 = sub_AB3820();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v10, 1, v14);
  v17 = 0;
  if (v16 != 1)
  {
    isa = sub_AB3770().super.isa;
    (*(v15 + 8))(v10, v14);
    v17 = isa;
  }

  return v17;
}

void sub_3002F8(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a1;
  BrowseCollectionViewController.collectionView(_:willDisplay:forItemAt:)(v13, v14, v12);

  (*(v10 + 8))(v12, v9);
}

void sub_30041C(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a1;
  sub_303648(v14, v12);

  (*(v10 + 8))(v12, v9);
}

void sub_30053C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = a5;
  v14 = a6;
  [a4 clearArtworkCatalogs];
  (*(v10 + 8))(v12, v9);
}

uint64_t sub_300654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_AB3820();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_30074C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(id, char *))
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = a3;
  v14 = a4;
  v15 = a1;
  LOBYTE(a5) = a5(v13, v12);

  (*(v10 + 8))(v12, v9);
  return a5 & 1;
}

void sub_30086C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  BrowseCollectionViewController.collectionView(_:performPrimaryActionForItemAt:)(v11, v10);

  (*(v8 + 8))(v10, v7);
}

uint64_t sub_300994(void *a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(char *))
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = a3;
  v14 = a4;
  v15 = a1;
  LOBYTE(a5) = a5(v12);

  (*(v10 + 8))(v12, v9);
  return a5 & 1;
}

void sub_300AB0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  BrowseCollectionViewController.scrollViewDidScroll(_:)(v4);
}

double sub_300B18()
{
  v1 = swift_isaMask & *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v72 = v63 - v2;
  v3 = sub_AB3820();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v71 = v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin();
  v70 = v63 - v7;
  v8 = qword_DFE308;
  v9 = *(v0 + qword_DFE308);
  if (v9)
  {
    v10 = (*(v1 + 344))(v6);
    v11 = *(v9 + 96);
    *(v9 + 96) = v10;

    v12 = *(v0 + v8);
    if (v12)
    {
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14 = swift_allocObject();
      v15 = *(v1 + 80);
      *(v14 + 16) = v15;
      *(v14 + 24) = v13;
      v16 = *(v12 + 64);
      v17 = *(v12 + 72);
      *(v12 + 64) = sub_303D38;
      *(v12 + 72) = v14;

      sub_17654(v16, v17);

      v18 = *(v0 + v8);
      if (v18)
      {
        v19 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v20 = swift_allocObject();
        *(v20 + 16) = v15;
        *(v20 + 24) = v19;
        v21 = *(v18 + 48);
        v22 = *(v18 + 56);
        *(v18 + 48) = sub_303D40;
        *(v18 + 56) = v20;

        sub_17654(v21, v22);

        v23 = *(v0 + v8);
        if (v23)
        {
          v24 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v25 = swift_allocObject();
          *(v25 + 16) = v15;
          *(v25 + 24) = v24;
          v26 = *(v23 + 32);
          v27 = *(v23 + 40);
          *(v23 + 32) = sub_303D48;
          *(v23 + 40) = v25;

          sub_17654(v26, v27);
        }
      }
    }
  }

  if ([v0 isViewLoaded])
  {
    v29 = *(v0 + v8);
    if (v29)
    {
      v30 = v29[11];

      v31 = [v30 indexPathsForVisibleItems];
      v32 = sub_AB9760();

      v33 = *(v32 + 16);
      if (v33)
      {
        v34 = *(v4 + 16);
        v35 = (*(v4 + 80) + 32) & ~*(v4 + 80);
        v63[1] = v32;
        v36 = v32 + v35;
        v74 = *(v4 + 72);
        v75 = v34;
        v37 = (v4 + 48);
        v67 = (v4 + 32);
        v73 = (v4 + 8);
        v38 = v4 + 16;
        v68 = (v38 + 40);
        v69 = v37;
        v39 = v70;
        v34(v70, v36, v3);
        while (1)
        {
          v40 = v29[6];
          if (!v40 || (v41 = v29[7], , v42 = v40(v29, v39), v44 = v43, sub_17654(v40, v41), !v42))
          {
            (*v73)(v39, v3);
            goto LABEL_11;
          }

          v45 = v29[8];
          if (!v45)
          {
            break;
          }

          v46 = v38;
          v47 = v29[9];

          v48 = v3;
          v49 = v72;
          v45(v29, v42, v44);
          v50 = v45;
          v51 = v49;
          v3 = v48;
          sub_17654(v50, v47);
          if ((*v69)(v51, 1, v48) == 1)
          {
            v52 = v70;
            (*v73)(v70, v48);
            v38 = v46;
            v39 = v52;
LABEL_19:
            sub_12E1C(v51, &unk_DE8E20, &qword_AF7990);
LABEL_25:
            swift_unknownObjectRelease();
            goto LABEL_11;
          }

          (*v67)(v71, v51, v48);
          v53 = v29[4];
          v38 = v46;
          if (!v53 || (v54 = v29[5], , v55 = v53(v71), sub_17654(v53, v54), !v55))
          {
            ObjectType = swift_getObjectType();
            (*(v44 + 16))(0, 0, ObjectType, v44);
            (*(v44 + 32))(0, 0, ObjectType, v44);
            v59 = *v73;
            (*v73)(v71, v3);
            v39 = v70;
            v59(v70, v3);
            goto LABEL_25;
          }

          v56 = v71;
          v65 = v55;
          v66 = [v55 relativeModelObjectForStoreLibraryPersonalization];
          if (v66)
          {
            swift_unknownObjectRetain();
            v64 = v29;
            v57 = &off_CF2AC8;
          }

          else
          {
            v64 = 0;
            v57 = 0;
          }

          v60 = v56;
          v61 = swift_getObjectType();
          (*(v44 + 16))(v64, v57, v61, v44);
          (*(v44 + 32))(v66, 0, v61, v44);
          v62 = *v73;
          (*v73)(v60, v3);
          v39 = v70;
          v62(v70, v3);
          swift_unknownObjectRelease();

LABEL_11:
          v36 += v74;
          if (!--v33)
          {

            return result;
          }

          v75(v39, v36, v3);
        }

        (*v73)(v39, v3);
        v51 = v72;
        (*v68)(v72, 1, 1, v3);
        goto LABEL_19;
      }
    }
  }

  return result;
}

void sub_3012AC(uint64_t a1@<X1>, char *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = v24 - v7;
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {
    (*(v10 + 56))(a3, 1, 1, v9);
    return;
  }

  v14 = v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v21 = *(v10 + 56);
    v21(v8, 1, 1, v9);
    swift_unknownObjectRetain();
LABEL_10:
    sub_12E1C(v8, &unk_DE8E20, &qword_AF7990);
    swift_unknownObjectRelease();
    v21(a3, 1, 1, v9);
    return;
  }

  v16 = Strong;
  v24[1] = a1;
  swift_unknownObjectRetain();
  [v16 loadViewIfNeeded];
  v17 = *&v16[qword_DFE2F8];
  if (v17)
  {
    v18 = v17;

    v19 = [v18 indexPathForCell:v14];
    if (v19)
    {
      sub_AB3790();

      v20 = 0;
    }

    else
    {
      v20 = 1;
    }

    v21 = *(v10 + 56);
    v21(v6, v20, 1, v9);
    sub_1766C(v6, v8);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      goto LABEL_10;
    }

    (*(v10 + 32))(v12, v8, v9);
    swift_beginAccess();
    v22 = swift_unknownObjectWeakLoadStrong();
    if (v22)
    {
      v23 = v22;
      (*&stru_1F8.segname[(swift_isaMask & *v22) + 16])(v12);
      (*(v10 + 8))(v12, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      (*(v10 + 8))(v12, v9);
      v21(a3, 1, 1, v9);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

void *sub_301668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v6 = &v26 - v5;
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    (*&stru_1F8.segname[(swift_isaMask & *result) + 16])(a2);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_12E1C(v6, &unk_DE8E20, &qword_AF7990);
    }

    else
    {
      v13 = (*(v8 + 32))(v10, v6, v7);
      v14 = (*&stru_158.sectname[swift_isaMask & *v12])(v13);
      if (v14 && (v15 = v14, v16 = [v14 results], v15, v16))
      {
        if (sub_3038AC(v16))
        {
          isa = sub_AB3770().super.isa;
          v18 = [v16 itemAtIndexPath:isa];

          v19 = [v18 relativeModelObjectForStoreLibraryPersonalization];
          if (v19)
          {
            v20 = v19;
            swift_unknownObjectRelease();
            if ((*(&stru_248.size + (swift_isaMask & *v12)))(v20, v10))
            {
              result = [v12 loadViewIfNeeded];
              v21 = *(v12 + qword_DFE2F8);
              if (!v21)
              {
                __break(1u);
                return result;
              }

              v22 = v21;
              v23 = sub_AB3770().super.isa;
              v24 = [v22 cellForItemAtIndexPath:v23];
              (*(v8 + 8))(v10, v7);

              if (v24)
              {
                swift_getObjectType();
                v25 = swift_conformsToProtocol2();

                if (v25)
                {
                  return v24;
                }

                return 0;
              }
            }

            else
            {
              (*(v8 + 8))(v10, v7);
            }
          }

          else
          {
            (*(v8 + 8))(v10, v7);

            swift_unknownObjectRelease();
          }
        }

        else
        {
          (*(v8 + 8))(v10, v7);
        }
      }

      else
      {
        (*(v8 + 8))(v10, v7);
      }
    }

    return 0;
  }

  return result;
}

void sub_301AD0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = (*&stru_158.sectname[swift_isaMask & *Strong])();

    if (v5)
    {
      v6 = [v5 results];

      if (v6)
      {
        isa = sub_AB3770().super.isa;
        v8 = [v6 itemAtIndexPath:isa];

        if (v8)
        {
          v9 = [v8 relativeModelObjectForStoreLibraryPersonalization];
          if (v9)
          {
            v10 = v9;
            swift_beginAccess();
            v11 = swift_unknownObjectWeakLoadStrong();
            if (v11)
            {
              v12 = v11;
              v13 = (*(&stru_248.size + (swift_isaMask & *v11)))(v10, a1);

              swift_unknownObjectRelease();
              if ((v13 & 1) == 0)
              {
              }
            }

            else
            {
              swift_unknownObjectRelease();
            }
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

double sub_301C98@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a3;
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v28 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v25 - v12;
  swift_beginAccess();
  v27 = a2;
  v14 = *(a2 + 16);
  v15 = *(v14 + 16);
  v29 = a1;
  if (v15 && (v16 = sub_2EC048(a1), (v17 & 1) != 0))
  {
    v18 = a4;
    (*(v8 + 16))(v13, *(v14 + 56) + *(v8 + 72) * v16, v7);
    v19 = 0;
  }

  else
  {
    v18 = a4;
    v19 = 1;
  }

  v20 = *(v8 + 56);
  v20(v13, v19, 1, v7);
  swift_endAccess();
  v21 = *(v8 + 48);
  if (v21(v13, 1, v7) == 1)
  {
    (*(&stru_1F8.size + (swift_isaMask & *v26)))(v29);
    if (v21(v13, 1, v7) != 1)
    {
      sub_12E1C(v13, &unk_DE8E20, &qword_AF7990);
    }
  }

  else
  {
    (*(v8 + 32))(v18, v13, v7);
  }

  v22 = *(v8 + 16);
  v23 = v28;
  v22(v28, v29, v7);
  v22(v11, v18, v7);
  v20(v11, 0, 1, v7);
  swift_beginAccess();
  sub_2E5064(v11, v23);
  swift_endAccess();
  return result;
}

uint64_t sub_301FBC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_AB3820();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v15 - v9;
  sub_AB3810();
  v11 = sub_301C98(v8, a2, a3, v10);
  v12 = *(v6 + 8);
  v12(v8, v5, v11);
  v13 = IndexPath.safeSection.getter();
  (v12)(v10, v5);
  return v13;
}

double sub_3020F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  v7(a2, a3, a4);

  return result;
}

void sub_302164(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v11 = sub_AB3820();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_301C98(a1, a5, a6, v14);
  isa = sub_AB3770().super.isa;
  v16 = *(v12 + 8);
  v16(v14, v11);
  sub_301C98(a2, a5, a6, v14);
  v17 = sub_AB3770().super.isa;
  v16(v14, v11);
  [a4 moveItemAtIndexPath:isa toIndexPath:v17];
}

void sub_3022B8(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = sub_AB3820();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v18 - v12;
  v14 = *(a1 + 32);
  sub_AB3790();
  sub_AB3790();

  v15 = a2;
  v16 = a3;
  v14(v13, v11, a4);
  v17 = *(v9 + 8);
  v17(v11, v8);
  v17(v13, v8);
}

uint64_t sub_302428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  sub_301C98(a1, a2, a3, a4);
  v5 = sub_AB3820();
  return (*(*(v5 - 8) + 56))(a4, 0, 1, v5);
}

void sub_302494(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_2FB7A4();
  }
}

void sub_302510(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_303C58();
}

id _s16MusicApplication30BrowseCollectionViewControllerC16numberOfSections2inSiSo012UICollectionE0C_tF_0()
{
  v1 = (*&stru_158.sectname[swift_isaMask & *v0])();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 results];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 numberOfSections];

  return v4;
}

uint64_t sub_302674(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v29 = a1;
  v5 = *v2;
  v6 = swift_isaMask;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v8 = &v27 - v7;
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v3;
  type metadata accessor for BrowseCollectionViewController(0, *(&stru_20.filesize + (v6 & v5)), v13, v14);
  v15 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE3B0, &qword_B092E8);
  if (!swift_dynamicCast())
  {
    v32 = 0;
    memset(v31, 0, sizeof(v31));
    sub_12E1C(v31, &qword_DFE3B8, &unk_B092F0);
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_ABAD90(197);
    v37._countAndFlagsBits = 0xD0000000000000C2;
    v37._object = 0x8000000000B5E0D0;
    sub_AB94A0(v37);
    *&v31[0] = v15;
    swift_getWitnessTable();
    sub_ABB370();
    v38._countAndFlagsBits = 46;
    v38._object = 0xE100000000000000;
    sub_AB94A0(v38);
LABEL_10:
    result = sub_ABAFD0();
    __break(1u);
    return result;
  }

  sub_70DF8(v31, v34);
  (*&stru_1F8.segname[(swift_isaMask & *v15) + 16])(a2);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_12E1C(v8, &unk_DE8E20, &qword_AF7990);
    *&v31[0] = 0;
    *(&v31[0] + 1) = 0xE000000000000000;
    sub_ABAD90(190);
    v39._object = 0x8000000000B5DB40;
    v39._countAndFlagsBits = 0xD000000000000014;
    sub_AB94A0(v39);
    sub_303F44(&qword_DF9260, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    v40._countAndFlagsBits = sub_ABB330();
    sub_AB94A0(v40);

    v41._countAndFlagsBits = 0xD0000000000000A8;
    v41._object = 0x8000000000B5E1A0;
    sub_AB94A0(v41);
    goto LABEL_10;
  }

  (*(v10 + 32))(v12, v8, v9);
  v16 = v36;
  v28 = v35;
  v27 = __swift_project_boxed_opaque_existential_1(v34, v35);
  v17 = (*&stru_158.sectname[swift_isaMask & *v15])(v27);
  v30 = v9;
  if (v17 && (v18 = v17, v19 = [v17 results], v18, v19))
  {
    v20 = a2;
    v21 = [v19 sectionAtIndex:IndexPath.safeSection.getter()];
  }

  else
  {
    v20 = a2;
    v21 = 0;
  }

  v22 = swift_allocObject();
  *(v22 + 16) = v15;
  v23 = *(v16 + 16);
  v24 = v15;
  v25 = v23(v21, v20, v12, v29, sub_304134, v22, v28, v16);
  (*(v10 + 8))(v12, v30);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v34);
  return v25;
}

uint64_t sub_302BAC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_302BEC()
{
  [v0 loadViewIfNeeded];
  result = *&v0[qword_DFE2F8];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_302C24()
{

  return swift_deallocObject();
}

double block_copy_helper_103(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_302C9C(void *a1)
{
  v2 = *(v1 + qword_DFE2F0);
  *(v1 + qword_DFE2F0) = a1;
  v3 = a1;

  v4 = *(v1 + qword_DFE2E0);
  *(v1 + qword_DFE2E0) = 0;
}

double sub_302CF0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v2 = &v45 - v1;
  v3 = sub_AB3820();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v45 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = sub_2FB62C();
    v13 = (*(&stru_3D8.flags + (swift_isaMask & *v11)))(v12);
    if (!v13)
    {
      goto LABEL_25;
    }

    v14 = v13;
    v15 = [*(v13 + 88) indexPathsForVisibleItems];
    v16 = sub_AB9760();

    v17 = v16;
    v18 = *(v16 + 16);
    if (v18)
    {
      v53 = v6;
      v55 = v2;
      v46 = v11;
      v58 = *(v4 + 16);
      v19 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v45 = v17;
      v20 = v17 + v19;
      v21 = *(v4 + 72);
      v50 = (v4 + 32);
      v56 = (v4 + 8);
      v57 = v21;
      v51 = (v4 + 56);
      v52 = (v4 + 48);
      v54 = v4 + 16;
      v58(v8, v17 + v19, v3);
      while (1)
      {
        v22 = v14[6];
        if (!v22 || (v23 = v14[7], , v24 = v22(v14, v8), v26 = v25, sub_17654(v22, v23), !v24))
        {
          (*v56)(v8, v3);
          goto LABEL_6;
        }

        v27 = v14[8];
        if (!v27)
        {
          break;
        }

        v28 = v14[9];

        v29 = v55;
        v27(v14, v24, v26);
        sub_17654(v27, v28);
        if ((*v52)(v29, 1, v3) == 1)
        {
          (*v56)(v8, v3);
LABEL_14:
          sub_12E1C(v29, &unk_DE8E20, &qword_AF7990);
LABEL_20:
          swift_unknownObjectRelease();
          goto LABEL_6;
        }

        (*v50)(v53, v29, v3);
        v30 = v14[4];
        if (!v30 || (v31 = v14[5], , v32 = v30(v53), sub_17654(v30, v31), !v32))
        {
          ObjectType = swift_getObjectType();
          (*(v26 + 16))(0, 0, ObjectType, v26);
          (*(v26 + 32))(0, 0, ObjectType, v26);
          v35 = *v56;
          (*v56)(v53, v3);
          v35(v8, v3);
          goto LABEL_20;
        }

        v47 = v32;
        v49 = [v32 relativeModelObjectForStoreLibraryPersonalization];
        if (v49)
        {
          swift_unknownObjectRetain();
          v48 = v14;
          v33 = &off_CF2AC8;
        }

        else
        {
          v48 = 0;
          v33 = 0;
        }

        v36 = swift_getObjectType();
        (*(v26 + 16))(v48, v33, v36, v26);
        (*(v26 + 32))(v49, 0, v36, v26);
        v37 = *v56;
        (*v56)(v53, v3);
        v37(v8, v3);
        swift_unknownObjectRelease();

LABEL_6:
        v20 += v57;
        if (!--v18)
        {

          v11 = v46;
          goto LABEL_25;
        }

        v58(v8, v20, v3);
      }

      (*v56)(v8, v3);
      v29 = v55;
      (*v51)(v55, 1, 1, v3);
      goto LABEL_14;
    }

LABEL_25:
    (*&stru_158.segname[(swift_isaMask & *v11) + 16])();
    v38 = qword_DFE260;
    swift_beginAccess();
    v39 = *(v11 + v38);
    v40 = qword_DFE260;
    swift_beginAccess();
    *(v11 + v40) = _swiftEmptyArrayStorage;

    v41 = *(v39 + 16);
    if (v41)
    {
      v42 = v39 + 40;
      do
      {
        v43 = *(v42 - 8);

        v43(v44);

        v42 += 16;
        --v41;
      }

      while (v41);
    }
  }

  return result;
}

id sub_30336C(uint64_t a1)
{
  v2 = sub_AB3820();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  v6 = __chkstk_darwin();
  v8 = &v15 - v7;
  result = (*&stru_158.sectname[swift_isaMask & *v1])(v6);
  if (result)
  {
    v10 = result;
    v11 = [result results];

    if (v11)
    {
      sub_AB3810();
      (*&stru_1F8.segname[(swift_isaMask & *v1) + 16])(v5);
      v12 = *(v3 + 8);
      v12(v5, v2);
      if ((*(v3 + 48))(v8, 1, v2) == 1)
      {
        sub_12E1C(v8, &unk_DE8E20, &qword_AF7990);
        v13 = 0;
      }

      else
      {
        v14 = IndexPath.safeSection.getter();
        v12(v8, v2);
        v13 = [v11 numberOfItemsInSection:v14];
      }

      return v13;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *_s16MusicApplication30BrowseCollectionViewControllerC19_sectionIndexTitles3forSaySSGSgSo012UICollectionE0CSg_tF_0()
{
  v1 = *(v0 + qword_DFE290);
  if (!v1 || *(v1 + 32) != 1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = sub_381260();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  return v3;
}

uint64_t sub_303648(void *a1, uint64_t a2)
{
  v5 = sub_AB3820();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin().n128_u64[0];
  v9 = &v17[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 clearArtworkCatalogs];
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    if (v2)
    {
      v11 = result;
      ObjectType = swift_getObjectType();
      (*(v11 + 8))(ObjectType, v11);
      v14 = v13;
      v15 = swift_getObjectType();
      (*(v6 + 16))(v9, a2, v5);
      sub_303F44(&qword_DFAA90, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      sub_ABAD10();
      (*(v14 + 120))(a1, v17, v15, v14);
      sub_8085C(v17);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_303808(uint64_t a1)
{
  v3 = [v1 traitCollection];
  v4 = UITraitCollection.isMediaPicker.getter(v3);

  if (!v4)
  {
    return 1;
  }

  return BrowseCollectionViewController.isModelObjectSupportedByMediaPicker(at:)(a1);
}

BOOL sub_3038AC(void *a1)
{
  v2 = [a1 numberOfSections];
  if (sub_AB37F0() >= v2)
  {
    return 0;
  }

  v3 = [a1 numberOfItemsInSection:sub_AB37F0()];
  return sub_AB37E0() < v3;
}

void _s16MusicApplication30BrowseCollectionViewControllerC5coderACyxGSgSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  *(v0 + qword_DFE268) = 0;
  *(v0 + qword_DFE270) = 0;
  *(v0 + qword_DFE278) = 2;
  *(v0 + qword_DFE280) = 2;
  *(v0 + qword_DFE288) = 0;
  *(v0 + qword_DFE290) = 0;
  *(v0 + qword_DFE298) = 0;
  v2 = direct field offset for BrowseCollectionViewController.textDrawingCache;
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  *(v0 + v2) = TextDrawing.Cache.init()();
  *(v0 + qword_DFE2A0) = 1;
  *(v0 + direct field offset for BrowseCollectionViewController.wantsItemLibraryAddKeepLocalControl) = 0;
  v3 = (v0 + qword_DFE2A8);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + qword_DFE2B0) = 0;
  *(v0 + qword_DFE2B8) = 0;
  v4 = qword_DFE250;
  type metadata accessor for Artwork.CachingReference();
  *(v1 + v4) = swift_allocObject();
  *(v1 + qword_DFE2C0) = 0;
  *(v1 + qword_DFE260) = _swiftEmptyArrayStorage;
  *(v1 + qword_DFE2C8) = 0;
  *(v1 + qword_DFE2D0) = 0;
  *(v1 + qword_DFE2D8) = 0;
  *(v1 + qword_DFE2E0) = 0;
  v5 = qword_DFE2E8;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *(v1 + v5) = UnfairLock.init()();
  *(v1 + qword_DFE2F0) = 0;
  *(v1 + qword_DFE2F8) = 0;
  v6 = qword_DFE300;
  *(v1 + v6) = [objc_allocWithZone(type metadata accessor for old_ArtworkPrefetchingController()) init];
  *(v1 + qword_DFE308) = 0;
  *(v1 + qword_DFE310) = 1;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_303B3C()
{

  return swift_deallocObject();
}

uint64_t sub_303B8C()
{

  return swift_deallocObject();
}

void sub_303BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for BrowseCollectionViewController(0, *(&stru_20.filesize + (swift_isaMask & *v4)), a3, a4);
  v7.receiver = v4;
  v7.super_class = v6;
  objc_msgSendSuper2(&v7, "setViewBackgroundColor:", a1);
  sub_2FD4A0();
}

uint64_t sub_303D50()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_303D90()
{

  return swift_deallocObject();
}

id sub_303DCC(uint64_t a1, uint64_t a2)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = sub_301FBC(a1, v5, v6);
  v8 = sub_301FBC(a2, v5, v6);

  return [v4 moveSection:v7 toSection:v8];
}

uint64_t sub_303E70@<X0>(uint64_t *a1@<X8>)
{
  result = (*&stru_158.sectname[swift_isaMask & **(v1 + 16)])();
  *a1 = result;
  return result;
}

uint64_t sub_303EE4()
{

  return swift_deallocObject();
}

uint64_t sub_303F44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_303F8C()
{

  return swift_deallocObject();
}

uint64_t sub_303FE8()
{

  return swift_deallocObject();
}

uint64_t sub_304028(uint64_t a1)
{
  v3 = *(v1 + 24);
  sub_2FB0D8();
  return v3(a1);
}

uint64_t sub_304070()
{

  return swift_deallocObject();
}

id sub_304138(uint64_t a1)
{
  v11 = a1;
  ObjectType = swift_getObjectType();
  v9 = sub_ABA140();
  v2 = *(v9 - 8);
  __chkstk_darwin();
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_ABA100();
  __chkstk_darwin();
  sub_AB7C50();
  __chkstk_darwin();
  v8 = OBJC_IVAR____TtC16MusicApplication48SocialOnboardingContactsMatchingRequestOperation_accessQueue;
  sub_60044();
  sub_AB7C30();
  v13 = _swiftEmptyArrayStorage;
  sub_305780();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E01270, &unk_B0BF10);
  sub_3057D8();
  sub_ABABB0();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v9);
  *&v1[v8] = sub_ABA180();
  *&v1[OBJC_IVAR____TtC16MusicApplication48SocialOnboardingContactsMatchingRequestOperation_matchedContacts] = 0;
  v1[OBJC_IVAR____TtC16MusicApplication48SocialOnboardingContactsMatchingRequestOperation_shouldSortOnboardedFriends] = 0;
  v1[OBJC_IVAR____TtC16MusicApplication48SocialOnboardingContactsMatchingRequestOperation_shouldSortNonOnboardedFriends] = 0;
  v5 = &v1[OBJC_IVAR____TtC16MusicApplication48SocialOnboardingContactsMatchingRequestOperation__responseHandler];
  *v5 = 0;
  v5[1] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication48SocialOnboardingContactsMatchingRequestOperation_contactStore] = v11;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, "init");
}

uint64_t sub_3043BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC16MusicApplication48SocialOnboardingContactsMatchingRequestOperation__responseHandler);
  v4 = *(a1 + OBJC_IVAR____TtC16MusicApplication48SocialOnboardingContactsMatchingRequestOperation__responseHandler);
  v5 = *(a1 + OBJC_IVAR____TtC16MusicApplication48SocialOnboardingContactsMatchingRequestOperation__responseHandler + 8);
  *v3 = a2;
  v3[1] = a3;
  sub_307CC(a2, a3);

  return sub_17654(v4, v5);
}

uint64_t sub_304410()
{
  if (qword_DE67A8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E05300, &unk_AFA030);
  UnfairLock.locked<A>(_:)(sub_90048);
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_16D2C8(1, v2, sub_3058D4, v0);

  return sub_12E1C(v2, &unk_E05300, &unk_AFA030);
}

void sub_304534(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (([Strong isCancelled] & 1) == 0)
    {
      sub_3045CC(a1, a2, a3, a4);
    }
  }
}

void sub_3045CC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {

    sub_304A58(a4);
    return;
  }

  if (a1 != 1)
  {
    v6 = sub_306630(a1, a2);
    if (v6)
    {
      v7 = v6;
      if (a3)
      {
        v32 = &_swiftEmptySetSingleton;
        v33 = &_swiftEmptySetSingleton;
        if (*(v6 + 16))
        {
          v8 = sub_2EBF88(0x73646E65697266, 0xE700000000000000);
          if (v9)
          {
            sub_15F84(*(v7 + 56) + 32 * v8, &v30, &unk_DE8E40, &unk_AF8050);
            aBlock = v30;
            v27 = v31;
            if (*(&v31 + 1))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE458, &qword_B09360);
              if (swift_dynamicCast())
              {
                *&aBlock = &_swiftEmptySetSingleton;
                v10 = v4;
                sub_3062C0(v25, &aBlock);
                v12 = v11;

                v13 = sub_2F3D04(v12);

                v33 = v13;
              }
            }

            else
            {
              sub_12E1C(&aBlock, &unk_DE8E40, &unk_AF8050);
            }
          }
        }

        if (*(v7 + 16))
        {
          v14 = sub_2EBF88(0x73746361746E6F63, 0xE800000000000000);
          if (v15)
          {
            sub_15F84(*(v7 + 56) + 32 * v14, &v30, &unk_DE8E40, &unk_AF8050);
            aBlock = v30;
            v27 = v31;
            if (*(&v31 + 1))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE458, &qword_B09360);
              if (swift_dynamicCast())
              {
                v16 = sub_304C90(v25, a3);
                v17 = sub_2F3D04(v16);

                v32 = v17;
              }
            }

            else
            {
              sub_12E1C(&aBlock, &unk_DE8E40, &unk_AF8050);
            }
          }
        }

        v18 = *&v4[OBJC_IVAR____TtC16MusicApplication48SocialOnboardingContactsMatchingRequestOperation_accessQueue];
        v19 = swift_allocObject();
        v19[2] = v4;
        v19[3] = &v33;
        v19[4] = &v32;
        v19[5] = v7;
        v20 = swift_allocObject();
        *(v20 + 16) = sub_306B8C;
        *(v20 + 24) = v19;
        v28 = sub_36C08;
        v29 = v20;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v27 = sub_1822E0;
        *(&v27 + 1) = &block_descriptor_16_0;
        v21 = _Block_copy(&aBlock);
        v22 = v4;

        dispatch_sync(v18, v21);
        _Block_release(v21);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
        }

        else
        {
        }

        return;
      }
    }
  }

  v24 = [objc_allocWithZone(NSError) initWithDomain:MPStoreSocialErrorDomain code:-3000 userInfo:0];
  sub_304A58(v24);
}

void sub_304A58(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v21 = 0;
  v20 = 0;
  v18 = 0;
  v19 = 0;
  v4 = *&v1[OBJC_IVAR____TtC16MusicApplication48SocialOnboardingContactsMatchingRequestOperation_accessQueue];
  v5 = swift_allocObject();
  v5[2] = &v21;
  v5[3] = v1;
  v5[4] = &v20 + 1;
  v5[5] = &v20;
  v5[6] = &v18;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_305874;
  *(v6 + 24) = v5;
  aBlock[4] = sub_2D4D0;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_104;
  v7 = _Block_copy(aBlock);
  v8 = v1;

  dispatch_sync(v4, v7);
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v10 = v18;
    if (v18)
    {
      v11 = v19;
      v12 = HIBYTE(v20);
      v13 = v20;
      sub_307CC(v18, v19);

      v10(v14, v12, v13, a1);

      sub_17654(v10, v11);
    }

    if (a1)
    {
      v15 = sub_AB3040();
    }

    else
    {
      v15 = 0;
    }

    v16.receiver = v8;
    v16.super_class = ObjectType;
    objc_msgSendSuper2(&v16, "finishWithError:", v15);

    sub_17654(v18, v19);
  }
}

char *sub_304C90(uint64_t a1, uint64_t a2)
{
  v71 = &_swiftEmptySetSingleton;
  v2 = a2 + 56;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v59 = v6;
  for (i = v2; ; v2 = i)
  {
    if (!v5)
    {
      do
      {
        v8 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_27;
        }

        if (v8 >= v6)
        {

          v54 = v57;

          v55 = sub_3060A8(a1, v54, _swiftEmptyDictionarySingleton, &v71);

          swift_bridgeObjectRelease_n();

          return v55;
        }

        v5 = *(v2 + 8 * v8);
        ++v7;
      }

      while (!v5);
      v7 = v8;
    }

    v9 = (*(a2 + 48) + ((v7 << 13) | (__clz(__rbit64(v5)) << 7)));
    v11 = v9[4];
    v10 = v9[5];
    v12 = v9[6];
    v70 = v9[7];
    v13 = *v9;
    v14 = v9[1];
    v15 = v9[3];
    v65 = v9[2];
    v66 = v15;
    v68 = v10;
    v69 = v12;
    v67 = v11;
    v63 = v13;
    v64 = v14;
    v16 = *(&v70 + 1);
    v17 = *(*(&v70 + 1) + 16);
    sub_2B7BC(&v63, v62);
    if (v17)
    {
      break;
    }

LABEL_4:
    v5 &= v5 - 1;
    sub_2B818(&v63);
    v6 = v59;
  }

  v18 = v16 + 56;
  while (1)
  {
    v33 = *(v18 - 24);
    v32 = *(v18 - 16);

    sub_2B7BC(&v63, v62);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = sub_2EBF88(v33, v32);
    v37 = _swiftEmptyDictionarySingleton[2];
    v38 = (v36 & 1) == 0;
    v39 = __OFADD__(v37, v38);
    v40 = v37 + v38;
    if (v39)
    {
      break;
    }

    v41 = v36;
    if (_swiftEmptyDictionarySingleton[3] < v40)
    {
      sub_32D0D8(v40, isUniquelyReferenced_nonNull_native);
      v35 = sub_2EBF88(v33, v32);
      if ((v41 & 1) != (v42 & 1))
      {
        goto LABEL_28;
      }

LABEL_19:
      if (v41)
      {
        goto LABEL_12;
      }

      goto LABEL_20;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_19;
    }

    v53 = v35;
    sub_333964();
    v35 = v53;
    if (v41)
    {
LABEL_12:
      v19 = (_swiftEmptyDictionarySingleton[7] + (v35 << 7));
      v20 = v19[3];
      v22 = *v19;
      v21 = v19[1];
      v62[2] = v19[2];
      v62[3] = v20;
      v62[0] = v22;
      v62[1] = v21;
      v23 = v19[7];
      v25 = v19[4];
      v24 = v19[5];
      v62[6] = v19[6];
      v62[7] = v23;
      v62[4] = v25;
      v62[5] = v24;
      v26 = v63;
      v27 = v64;
      v28 = v66;
      v19[2] = v65;
      v19[3] = v28;
      *v19 = v26;
      v19[1] = v27;
      v29 = v67;
      v30 = v68;
      v31 = v70;
      v19[6] = v69;
      v19[7] = v31;
      v19[4] = v29;
      v19[5] = v30;
      sub_2B818(v62);

      swift_bridgeObjectRelease_n();
      goto LABEL_13;
    }

LABEL_20:
    _swiftEmptyDictionarySingleton[(v35 >> 6) + 8] |= 1 << v35;
    v43 = (_swiftEmptyDictionarySingleton[6] + 16 * v35);
    *v43 = v33;
    v43[1] = v32;
    v44 = (_swiftEmptyDictionarySingleton[7] + (v35 << 7));
    v46 = v69;
    v45 = v70;
    v47 = v68;
    v44[4] = v67;
    v44[5] = v47;
    v44[6] = v46;
    v44[7] = v45;
    v49 = v65;
    v48 = v66;
    v50 = v64;
    *v44 = v63;
    v44[1] = v50;
    v44[2] = v49;
    v44[3] = v48;
    v51 = _swiftEmptyDictionarySingleton[2];
    v39 = __OFADD__(v51, 1);
    v52 = v51 + 1;
    if (v39)
    {
      goto LABEL_26;
    }

    _swiftEmptyDictionarySingleton[2] = v52;

LABEL_13:
    v18 += 40;
    if (!--v17)
    {
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_ABB4C0();
  __break(1u);
  return result;
}

void sub_304FE8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v6 = *a2;

  *(a1 + OBJC_IVAR____TtC16MusicApplication48SocialOnboardingContactsMatchingRequestOperation_matchedContacts) = sub_338630(v7, v6);

  if (!*(a4 + 16))
  {
    goto LABEL_7;
  }

  v8 = sub_2EBF88(0xD00000000000001ALL, 0x8000000000B5E2C0);
  if ((v9 & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_15F84(*(a4 + 56) + 32 * v8, &v20, &unk_DE8E40, &unk_AF8050);
  v22 = v20;
  v23 = v21;
  if (!*(&v21 + 1))
  {
    sub_12E1C(&v22, &unk_DE8E40, &unk_AF8050);
    goto LABEL_7;
  }

  if (!swift_dynamicCast())
  {
LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  v10 = v19;
LABEL_8:
  v11 = OBJC_IVAR____TtC16MusicApplication48SocialOnboardingContactsMatchingRequestOperation_shouldSortOnboardedFriends;
  *(a1 + OBJC_IVAR____TtC16MusicApplication48SocialOnboardingContactsMatchingRequestOperation_shouldSortOnboardedFriends) = v10;
  if (*(a4 + 16))
  {
    v12 = sub_2EBF88(0xD00000000000001DLL, 0x8000000000B5E2E0);
    if (v13)
    {
      sub_15F84(*(a4 + 56) + 32 * v12, &v20, &unk_DE8E40, &unk_AF8050);
      v22 = v20;
      v23 = v21;
      if (*(&v21 + 1))
      {
        if (swift_dynamicCast())
        {
          v14 = v19;
          goto LABEL_15;
        }
      }

      else
      {
        sub_12E1C(&v22, &unk_DE8E40, &unk_AF8050);
      }
    }
  }

  v14 = 0;
LABEL_15:
  *(a1 + OBJC_IVAR____TtC16MusicApplication48SocialOnboardingContactsMatchingRequestOperation_shouldSortNonOnboardedFriends) = v14;
  v15 = *(a1 + OBJC_IVAR____TtC16MusicApplication48SocialOnboardingContactsMatchingRequestOperation__responseHandler);
  if (v15)
  {
    v16 = *(a1 + OBJC_IVAR____TtC16MusicApplication48SocialOnboardingContactsMatchingRequestOperation__responseHandler + 8);
    v17 = *(a1 + v11);
    sub_307CC(v15, v16);

    v15(v18, v17, v14, 0);

    sub_17654(v15, v16);
  }
}

double sub_305228@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X3>, __int128 *a4@<X8>)
{
  v7 = *a1;
  if (*(*a1 + 16) && (v8 = sub_2EBF88(0xD000000000000011, 0x8000000000B54180), (v9 & 1) != 0))
  {
    sub_15F84(*(v7 + 56) + 32 * v8, &v45, &unk_DE8E40, &unk_AF8050);
    v10 = &v45;
  }

  else
  {
    v45 = 0uLL;
    *&v46 = 0;
    *(&v46 + 1) = 1;
    sub_12E1C(&v45, &qword_DF2BD8, &unk_B00F68);
    if (*(v7 + 16))
    {
      v11 = sub_2EBF88(0x72506C6169636F73, 0xEF6449656C69666FLL);
      if (v12)
      {
        sub_15F84(*(v7 + 56) + 32 * v11, &v42, &unk_DE8E40, &unk_AF8050);
        sub_12E1C(&v42, &qword_DF2BD8, &unk_B00F68);
        sub_16CCAC(0, 0, &v45);
        goto LABEL_7;
      }
    }

    v42 = 0uLL;
    v43 = 0;
    v44 = 1;
    v10 = &v42;
  }

  sub_12E1C(v10, &qword_DF2BD8, &unk_B00F68);
  if (!*(v7 + 16))
  {
    goto LABEL_21;
  }

  v13 = sub_2EBF88(0xD000000000000011, 0x8000000000B54180);
  if ((v14 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_15F84(*(v7 + 56) + 32 * v13, &v34, &unk_DE8E40, &unk_AF8050);
  v45 = v34;
  v46 = v35;
  if (!*(&v35 + 1))
  {
    sub_12E1C(&v45, &unk_DE8E40, &unk_AF8050);
    goto LABEL_21;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    sub_11F44(&v34);
    goto LABEL_22;
  }

  if (!*(a2 + 16) || (v15 = sub_2EBF88(*&v33[0], *(&v33[0] + 1)), (v16 & 1) == 0))
  {

    goto LABEL_21;
  }

  v17 = (*(a2 + 56) + (v15 << 7));
  v18 = v17[3];
  v20 = *v17;
  v19 = v17[1];
  v47 = v17[2];
  v48 = v18;
  v45 = v20;
  v46 = v19;
  v21 = v17[7];
  v23 = v17[4];
  v22 = v17[5];
  v51 = v17[6];
  v52 = v21;
  v49 = v23;
  v50 = v22;
  sub_2B7BC(&v45, &v34);

  v42 = v45;
  v24 = *(&v45 + 1);
  if (!*(&v45 + 1))
  {
LABEL_18:
    sub_2B818(&v45);
    goto LABEL_21;
  }

  v25 = v42;
  v26 = *a3;
  sub_15F84(&v42, &v34, &unk_DEE6F0, &unk_AF8970);

  v27 = sub_472F00(v25, v24, v26);

  if (v27)
  {
    sub_12E1C(&v42, &unk_DEE6F0, &unk_AF8970);
    goto LABEL_18;
  }

  sub_1A9FC(&v34, v25, v24);

LABEL_7:
  sub_3058DC(&v45, v7, v33);
  sub_2B818(&v45);
  v38 = v33[4];
  v39 = v33[5];
  v40 = v33[6];
  v41 = v33[7];
  v34 = v33[0];
  v35 = v33[1];
  v36 = v33[2];
  v37 = v33[3];
  UIScreen.Dimensions.size.getter();
LABEL_22:
  v28 = v39;
  a4[4] = v38;
  a4[5] = v28;
  v29 = v41;
  a4[6] = v40;
  a4[7] = v29;
  v30 = v35;
  *a4 = v34;
  a4[1] = v30;
  result = *&v36;
  v32 = v37;
  a4[2] = v36;
  a4[3] = v32;
  return result;
}

uint64_t sub_3055B0(uint64_t *a1, uint64_t a2, _BYTE *a3, _BYTE *a4, uint64_t *a5)
{
  *a1 = *(a2 + OBJC_IVAR____TtC16MusicApplication48SocialOnboardingContactsMatchingRequestOperation_matchedContacts);

  *a3 = *(a2 + OBJC_IVAR____TtC16MusicApplication48SocialOnboardingContactsMatchingRequestOperation_shouldSortOnboardedFriends);
  *a4 = *(a2 + OBJC_IVAR____TtC16MusicApplication48SocialOnboardingContactsMatchingRequestOperation_shouldSortNonOnboardedFriends);
  v9 = *(a2 + OBJC_IVAR____TtC16MusicApplication48SocialOnboardingContactsMatchingRequestOperation__responseHandler);
  v10 = *(a2 + OBJC_IVAR____TtC16MusicApplication48SocialOnboardingContactsMatchingRequestOperation__responseHandler + 8);
  v11 = *a5;
  v12 = a5[1];
  *a5 = v9;
  a5[1] = v10;
  sub_307CC(v9, v10);

  return sub_17654(v11, v12);
}

unint64_t sub_305780()
{
  result = qword_DED790;
  if (!qword_DED790)
  {
    sub_ABA100();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DED790);
  }

  return result;
}

unint64_t sub_3057D8()
{
  result = qword_DED7A0;
  if (!qword_DED7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E01270, &unk_B0BF10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DED7A0);
  }

  return result;
}

uint64_t sub_30583C()
{

  return swift_deallocObject();
}

double block_copy_helper_104(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_30589C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

double sub_3058DC@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v76 = *a1;
  v46 = *(a1 + 16);
  v50 = *(a1 + 17);
  v74 = *(a1 + 18);
  v75 = *(a1 + 11);
  v6 = (a1 + 24);
  v7 = *(a1 + 3);
  v8 = *(a1 + 4);
  v9 = (a1 + 40);
  v47 = *(a1 + 6);
  v10 = *(a1 + 7);
  v11 = *(a1 + 8);
  v12 = (a1 + 72);
  v48 = *(a1 + 9);
  v49 = *(a1 + 5);
  v13 = *(a1 + 10);
  v14 = *(a1 + 88);
  v15 = *(a1 + 104);
  v73 = *(a1 + 15);
  v71 = v14;
  v72 = v15;
  if (!*(a2 + 16))
  {
    sub_2B7BC(a1, &v59);
    goto LABEL_7;
  }

  sub_2B7BC(a1, &v59);
  v16 = sub_2EBF88(0x72506C6169636F73, 0xEF6449656C69666FLL);
  if ((v17 & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_15F84(*(a2 + 56) + 32 * v16, &v51, &unk_DE8E40, &unk_AF8050);
  v53 = v51;
  v54 = v52;
  if (*(&v52 + 1))
  {
    if (swift_dynamicCast())
    {
      v80 = *v12;
      v13 = *(&v59 + 1);
      v48 = v59;
      v18 = &unk_DEE6F0;
      v19 = &unk_AF8970;
      v20 = &v80;
      goto LABEL_13;
    }

LABEL_7:
    if (!*(a2 + 16))
    {
      goto LABEL_16;
    }

    goto LABEL_8;
  }

  v18 = &unk_DE8E40;
  v19 = &unk_AF8050;
  v20 = &v53;
LABEL_13:
  sub_12E1C(v20, v18, v19);
  if (!*(a2 + 16))
  {
    goto LABEL_16;
  }

LABEL_8:
  v21 = sub_2EBF88(0x72616F426E4F7369, 0xEB00000000646564);
  if (v22)
  {
    sub_15F84(*(a2 + 56) + 32 * v21, &v53, &unk_DE8E40, &unk_AF8050);
    v59 = v53;
    v60 = v54;
    if (*(&v54 + 1))
    {
      if (swift_dynamicCast())
      {
        v46 = v51;
      }
    }

    else
    {
      sub_12E1C(&v59, &unk_DE8E40, &unk_AF8050);
    }
  }

LABEL_16:
  if (!*(a2 + 16))
  {
    goto LABEL_21;
  }

  v23 = sub_2EBF88(0x7461766972507369, 0xE900000000000065);
  if ((v24 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_15F84(*(a2 + 56) + 32 * v23, &v53, &unk_DE8E40, &unk_AF8050);
  v59 = v53;
  v60 = v54;
  if (*(&v54 + 1))
  {
    if (swift_dynamicCast())
    {
      v50 = v51;
    }

LABEL_21:
    if (!*(a2 + 16))
    {
      goto LABEL_30;
    }

    goto LABEL_22;
  }

  sub_12E1C(&v59, &unk_DE8E40, &unk_AF8050);
  if (!*(a2 + 16))
  {
    goto LABEL_30;
  }

LABEL_22:
  v25 = sub_2EBF88(1701667182, 0xE400000000000000);
  if (v26)
  {
    sub_15F84(*(a2 + 56) + 32 * v25, &v53, &unk_DE8E40, &unk_AF8050);
    v59 = v53;
    v60 = v54;
    if (!*(&v54 + 1))
    {
      v27 = &unk_DE8E40;
      v28 = &unk_AF8050;
      v29 = &v59;
      goto LABEL_29;
    }

    if (swift_dynamicCast())
    {
      v79 = *v9;
      v47 = *(&v51 + 1);
      v49 = v51;
      v27 = &unk_DEE6F0;
      v28 = &unk_AF8970;
      v29 = &v79;
LABEL_29:
      sub_12E1C(v29, v27, v28);
    }
  }

LABEL_30:
  if (!*(a2 + 16))
  {
    goto LABEL_35;
  }

  v30 = sub_2EBF88(0x746867696577, 0xE600000000000000);
  if ((v31 & 1) == 0)
  {
    goto LABEL_35;
  }

  sub_15F84(*(a2 + 56) + 32 * v30, &v53, &unk_DE8E40, &unk_AF8050);
  v59 = v53;
  v60 = v54;
  if (*(&v54 + 1))
  {
    if (swift_dynamicCast())
    {
      v10 = v51;
    }

LABEL_35:
    if (!*(a2 + 16))
    {
      goto LABEL_43;
    }

    goto LABEL_36;
  }

  sub_12E1C(&v59, &unk_DE8E40, &unk_AF8050);
  if (!*(a2 + 16))
  {
    goto LABEL_43;
  }

LABEL_36:
  v32 = sub_2EBF88(0x49656C69666F7270, 0xEC0000006567616DLL);
  if (v33)
  {
    sub_15F84(*(a2 + 56) + 32 * v32, &v53, &unk_DE8E40, &unk_AF8050);
    v59 = v53;
    v60 = v54;
    if (*(&v54 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680, &qword_AF7B70);
      if (swift_dynamicCast())
      {
        v78 = *(a1 + 8);
        sub_3E8814(v51);
        v34 = objc_allocWithZone(ICStoreArtworkInfo);
        isa = sub_AB8FD0().super.isa;
        v11 = [v34 initWithArtworkResponseDictionary:isa];

        sub_12E1C(&v78, &qword_DFE460, &qword_B09368);
      }
    }

    else
    {
      sub_12E1C(&v59, &unk_DE8E40, &unk_AF8050);
    }
  }

LABEL_43:
  if (*(a2 + 16))
  {
    v36 = sub_2EBF88(0x6E6F73616572, 0xE600000000000000);
    if (v37)
    {
      sub_15F84(*(a2 + 56) + 32 * v36, &v53, &unk_DE8E40, &unk_AF8050);
      v59 = v53;
      v60 = v54;
      if (*(&v54 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680, &qword_AF7B70);
        if (swift_dynamicCast())
        {
          v77 = *v6;
          v38 = v51;
          if (*(v51 + 16) && (v39 = sub_2EBF88(0xD000000000000010, 0x8000000000B50AF0), (v40 & 1) != 0) && (sub_808B0(*(v38 + 56) + 32 * v39, &v59), (swift_dynamicCast() & 1) != 0))
          {
            v8 = *(&v53 + 1);
            v7 = v53;
            sub_12E1C(&v77, &unk_DEE6F0, &unk_AF8970);
          }

          else
          {
            sub_12E1C(&v77, &unk_DEE6F0, &unk_AF8970);

            v7 = 0;
            v8 = 0;
          }
        }
      }

      else
      {
        sub_12E1C(&v59, &unk_DE8E40, &unk_AF8050);
      }
    }
  }

  v53 = v76;
  *&v58[24] = v72;
  *&v58[8] = v71;
  v59 = v76;
  *(&v54 + 2) = v74;
  WORD3(v54) = v75;
  *&v58[40] = v73;
  LOBYTE(v54) = v46;
  LOBYTE(v60) = v46;
  BYTE1(v54) = v50;
  *(&v54 + 1) = v7;
  *&v55 = v8;
  *(&v55 + 1) = v49;
  *&v56 = v47;
  *(&v56 + 1) = v10;
  *&v57 = v11;
  *(&v57 + 1) = v48;
  *v58 = v13;
  BYTE1(v60) = v50;
  WORD3(v60) = v75;
  *(&v60 + 2) = v74;
  *(&v60 + 1) = v7;
  v61 = v8;
  v62 = v49;
  v63 = v47;
  v64 = v10;
  v65 = v11;
  v66 = v48;
  v67 = v13;
  v70 = v73;
  v69 = v72;
  v68 = v71;
  sub_2B7BC(&v53, &v51);
  sub_2B818(&v59);
  v41 = *v58;
  a3[4] = v57;
  a3[5] = v41;
  v42 = *&v58[32];
  a3[6] = *&v58[16];
  a3[7] = v42;
  v43 = v54;
  *a3 = v53;
  a3[1] = v43;
  result = *&v55;
  v45 = v56;
  a3[2] = v55;
  a3[3] = v45;
  return result;
}

char *sub_3060A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *(a1 + 16);
  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = a4;
  v8 = (a1 + 32);
  v9 = _swiftEmptyArrayStorage;
  v40 = a4;
  while (1)
  {
    v39[0] = *v8;

    sub_305228(v39, a3, v6, &v31);
    if (v4)
    {
      break;
    }

    v30[4] = v35;
    v30[5] = v36;
    v30[6] = v37;
    v30[7] = v38;
    v30[0] = v31;
    v30[1] = v32;
    v30[2] = v33;
    v30[3] = v34;
    if (sub_306BA8(v30) == 1)
    {
      v26 = v35;
      v27 = v36;
      v28 = v37;
      v29 = v38;
      v22 = v31;
      v23 = v32;
      v24 = v33;
      v25 = v34;
      sub_12E1C(&v22, &qword_DFE468, &unk_B09370);
    }

    else
    {
      v26 = v35;
      v27 = v36;
      v28 = v37;
      v29 = v38;
      v22 = v31;
      v23 = v32;
      v24 = v33;
      v25 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_6BF7C(0, *(v9 + 2) + 1, 1, v9);
      }

      v11 = *(v9 + 2);
      v10 = *(v9 + 3);
      if (v11 >= v10 >> 1)
      {
        v9 = sub_6BF7C((v10 > 1), v11 + 1, 1, v9);
      }

      v18 = v26;
      v19 = v27;
      v20 = v28;
      v21 = v29;
      v16 = v24;
      v17 = v25;
      v12 = v22;
      v15 = v23;
      *(v9 + 2) = v11 + 1;
      v13 = &v9[128 * v11];
      *(v13 + 4) = v16;
      *(v13 + 5) = v17;
      *(v13 + 3) = v15;
      *(v13 + 8) = v20;
      *(v13 + 9) = v21;
      *(v13 + 6) = v18;
      *(v13 + 7) = v19;
      *(v13 + 2) = v12;
      v6 = v40;
    }

    ++v8;
    if (!--v5)
    {
      return v9;
    }
  }

  return v9;
}

void sub_3062C0(uint64_t a1, uint64_t *a2)
{
  v38 = a2;
  v2 = *(a1 + 16);
  if (!v2)
  {
    return;
  }

  v3 = 0;
  v4 = _swiftEmptyArrayStorage;
  v5 = a1 + 32;
  v28 = *(a1 + 16);
  v29 = a1 + 32;
  do
  {
    v30 = v4;
    while (1)
    {
      if (v3 >= v2)
      {
        __break(1u);
LABEL_33:
        __break(1u);
        return;
      }

      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_33;
      }

      v7 = *(v5 + 8 * v3++);
      if (*(v7 + 16))
      {
        break;
      }

LABEL_6:
      if (v6 == v2)
      {
        return;
      }
    }

    v8 = sub_2EBF88(0x72506C6169636F73, 0xEF6449656C69666FLL);
    if ((v9 & 1) == 0)
    {
      goto LABEL_5;
    }

    sub_15F84(*(v7 + 56) + 32 * v8, &v34, &unk_DE8E40, &unk_AF8050);
    v31[0] = v34;
    v31[1] = v35;
    if (!*(&v35 + 1))
    {
      sub_12E1C(v31, &unk_DE8E40, &unk_AF8050);
LABEL_5:

      goto LABEL_6;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_5;
    }

    v10 = v32;
    v11 = v33;
    v12 = *v38;
    if (!*(*v38 + 16))
    {
      goto LABEL_25;
    }

    sub_ABB5C0();

    sub_AB93F0();
    v13 = sub_ABB610();
    v14 = -1 << *(v12 + 32);
    v15 = v13 & ~v14;
    if ((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
    {
      v16 = ~v14;
      while (1)
      {
        v17 = (*(v12 + 48) + 16 * v15);
        v18 = *v17 == v10 && v17[1] == v11;
        if (v18 || (sub_ABB3C0() & 1) != 0)
        {
          break;
        }

        v15 = (v15 + 1) & v16;
        if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      v2 = v28;
      v5 = v29;
      v4 = v30;
      goto LABEL_6;
    }

LABEL_24:

    v2 = v28;
    v4 = v30;
LABEL_25:
    sub_1A9FC(v31, v10, v11);

    sub_16CCAC(0, 0, v36);
    sub_3058DC(v36, v7, v37);
    sub_2B818(v36);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_6BF7C(0, *(v4 + 2) + 1, 1, v4);
    }

    v5 = v29;
    v20 = *(v4 + 2);
    v19 = *(v4 + 3);
    if (v20 >= v19 >> 1)
    {
      v4 = sub_6BF7C((v19 > 1), v20 + 1, 1, v4);
    }

    *(v4 + 2) = v20 + 1;
    v21 = &v4[128 * v20];
    v22 = v37[0];
    v23 = v37[1];
    v24 = v37[3];
    *(v21 + 4) = v37[2];
    *(v21 + 5) = v24;
    *(v21 + 2) = v22;
    *(v21 + 3) = v23;
    v25 = v37[4];
    v26 = v37[5];
    v27 = v37[7];
    *(v21 + 8) = v37[6];
    *(v21 + 9) = v27;
    *(v21 + 6) = v25;
    *(v21 + 7) = v26;
  }

  while (v6 != v2);
}

unint64_t sub_306630(unint64_t a1, uint64_t a2)
{
  if (a1 < 2 || !a2)
  {
    return 0;
  }

  v38 = v2;
  v39 = v3;
  v6 = sub_980A0(_swiftEmptyArrayStorage);
  v37 = v6;
  if (*(a1 + 16))
  {
    v7 = v6;
    v8 = sub_2EBF88(0x5473646E65697266, 0xEF776F6C6C6F466FLL);
    if (v9)
    {
      sub_808B0(*(a1 + 56) + 32 * v8, &v35);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF2BE0, &qword_AF9080);
      if (swift_dynamicCast())
      {
        v10 = v33;
        if (*(v33 + 16) && (v11 = sub_2EBF88(0x74726F537965626FLL, 0xED0000726564724FLL), (v12 & 1) != 0))
        {
          sub_15F84(*(v33 + 56) + 32 * v11, &v35, &unk_DE8E40, &unk_AF8050);
          v33 = v35;
          v34 = v36;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v32 = v7;
          sub_936D8(&v33, 0xD00000000000001ALL, 0x8000000000B5E2C0, isUniquelyReferenced_nonNull_native);
          v37 = v7;
        }

        else
        {
          sub_27B97C(0xD00000000000001ALL, 0x8000000000B5E2C0, &v35);
          sub_12E1C(&v35, &qword_DF2BD8, &unk_B00F68);
        }

        if (*(v10 + 16))
        {
          v15 = sub_2EBF88(0x73646E65697266, 0xE700000000000000);
          if (v16)
          {
            sub_15F84(*(v10 + 56) + 32 * v15, &v33, &unk_DE8E40, &unk_AF8050);
            v35 = v33;
            v36 = v34;
            if (*(&v34 + 1))
            {
              v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE458, &qword_B09360);
              if (swift_dynamicCast())
              {
                *&v35 = sub_16E7B8(v32, a2);
                *(&v36 + 1) = v17;
                v18 = v37;
                v19 = swift_isUniquelyReferenced_nonNull_native();
                *&v33 = v18;
                sub_936D8(&v35, 0x73646E65697266, 0xE700000000000000, v19);

                v37 = v33;
                goto LABEL_18;
              }
            }

            else
            {
              sub_12E1C(&v35, &unk_DE8E40, &unk_AF8050);
            }
          }
        }
      }
    }
  }

LABEL_18:
  if (!*(a1 + 16))
  {
    return v37;
  }

  v20 = sub_2EBF88(0xD000000000000010, 0x8000000000B5E3C0);
  if ((v21 & 1) == 0)
  {
    return v37;
  }

  sub_808B0(*(a1 + 56) + 32 * v20, &v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF2BE0, &qword_AF9080);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return v37;
  }

  v22 = v33;
  if (*(v33 + 16) && (v23 = sub_2EBF88(0x74726F537965626FLL, 0xED0000726564724FLL), (v24 & 1) != 0))
  {
    sub_15F84(*(v22 + 56) + 32 * v23, &v35, &unk_DE8E40, &unk_AF8050);
    v33 = v35;
    v34 = v36;
    v25 = v37;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v32 = v25;
    sub_936D8(&v33, 0xD00000000000001DLL, 0x8000000000B5E2E0, v26);
    v37 = v25;
  }

  else
  {
    sub_27B97C(0xD00000000000001DLL, 0x8000000000B5E2E0, &v35);
    sub_12E1C(&v35, &qword_DF2BD8, &unk_B00F68);
  }

  if (!*(v22 + 16))
  {
    goto LABEL_31;
  }

  v27 = sub_2EBF88(0x73746361746E6F63, 0xE800000000000000);
  if ((v28 & 1) == 0)
  {
    goto LABEL_31;
  }

  sub_15F84(*(v22 + 56) + 32 * v27, &v33, &unk_DE8E40, &unk_AF8050);
  v35 = v33;
  v36 = v34;
  if (!*(&v34 + 1))
  {
    sub_12E1C(&v35, &unk_DE8E40, &unk_AF8050);
    goto LABEL_31;
  }

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE458, &qword_B09360);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_31:

    return v37;
  }

  *&v35 = sub_16E7B8(v32, a2);
  *(&v36 + 1) = v29;
  v30 = v37;
  v31 = swift_isUniquelyReferenced_nonNull_native();
  *&v33 = v30;
  sub_936D8(&v35, 0x73746361746E6F63, 0xE800000000000000, v31);

  return v33;
}

uint64_t sub_306B4C()
{

  return swift_deallocObject();
}

uint64_t sub_306BA8(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

NSString sub_306BCC()
{
  result = sub_AB9260();
  qword_E71470 = result;
  return result;
}

id Window.__allocating_init(windowScene:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithWindowScene:a1];

  return v3;
}

id Window.init(windowScene:)(void *a1)
{
  v2 = sub_307920(a1);

  return v2;
}

char *Window.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = &v4[OBJC_IVAR____TtC16MusicApplication6Window_screenDimensionsDidChangeHandler];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v4[OBJC_IVAR____TtC16MusicApplication6Window_boundsSizeDidChangeHandler];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication6Window_overrideTraitCollection] = 0;
  v12 = [objc_opt_self() mainScreen];
  v13 = UIScreen.dimensions.getter();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = &v5[OBJC_IVAR____TtC16MusicApplication6Window_lastSeenDimensions];
  *v20 = a3;
  v20[1] = a4;
  v20[2] = v13;
  *(v20 + 3) = v15;
  *(v20 + 4) = v17;
  *(v20 + 5) = v19;
  v32.receiver = v5;
  v32.super_class = type metadata accessor for Window();
  v21 = objc_msgSendSuper2(&v32, "initWithFrame:", a1, a2, a3, a4);
  v22 = [v21 screen];
  v23 = UIScreen.dimensions.getter();
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v30 = &v21[OBJC_IVAR____TtC16MusicApplication6Window_lastSeenDimensions];
  v30[2] = v23;
  *(v30 + 3) = v25;
  *(v30 + 4) = v27;
  *(v30 + 5) = v29;

  return v21;
}

void Window.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication6Window_screenDimensionsDidChangeHandler);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication6Window_boundsSizeDidChangeHandler);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication6Window_overrideTraitCollection) = 0;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_307000(void *a1, void (*a2)(void, void, __n128))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  (a2)(*v4, v4[1]);
  return v5;
}

uint64_t sub_307088(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

id Window.rootElementScreen.getter()
{
  v1 = [v0 screen];

  return v1;
}

Swift::Void __swiftcall Window.sendEvent(_:)(UIEvent a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for Window();
  objc_msgSendSuper2(&v4, "sendEvent:", a1.super.isa);
  v3 = [objc_opt_self() defaultCenter];
  if (qword_DE6A88 != -1)
  {
    swift_once();
  }

  [v3 postNotificationName:qword_E71470 object:v1];
}

Swift::Void __swiftcall Window.layoutSubviews()()
{
  v1 = v0;
  v23.receiver = v0;
  v23.super_class = type metadata accessor for Window();
  objc_msgSendSuper2(&v23, "layoutSubviews");
  v2 = [v0 screen];
  v3 = UIScreen.dimensions.getter();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = &v1[OBJC_IVAR____TtC16MusicApplication6Window_lastSeenDimensions];
  if ((static UIScreen.Dimensions.== infix(_:_:)() & 1) == 0)
  {
    v10[2] = v3;
    v10[3] = v5;
    v10[4] = v7;
    v10[5] = v9;
    v11 = &v1[OBJC_IVAR____TtC16MusicApplication6Window_screenDimensionsDidChangeHandler];
    swift_beginAccess();
    v12 = *v11;
    if (*v11)
    {
      v13 = *(v11 + 1);

      v12(v14, v3, v5, v7, v9);
      sub_17654(v12, v13);
    }
  }

  [v1 bounds];
  v16 = v15;
  v18 = v17;
  type metadata accessor for CGSize(0);
  if (sub_AB38D0())
  {
    *v10 = v16;
    v10[1] = v18;
    v19 = &v1[OBJC_IVAR____TtC16MusicApplication6Window_boundsSizeDidChangeHandler];
    swift_beginAccess();
    v20 = *v19;
    if (*v19)
    {
      v21 = *(v19 + 1);

      v20(v22, v16, v18);
      sub_17654(v20, v21);
    }
  }
}

Swift::Void __swiftcall Window._updateTraitsAndNotify(_:)(Swift::Bool a1)
{
  v3 = *&v1[OBJC_IVAR____TtC16MusicApplication6Window_overrideTraitCollection];
  *&v1[OBJC_IVAR____TtC16MusicApplication6Window_overrideTraitCollection] = 0;

  v4.receiver = v1;
  v4.super_class = type metadata accessor for Window();
  objc_msgSendSuper2(&v4, "_updateWindowTraitsAndNotify:", a1);
}

Swift::Void __swiftcall Window.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v3 = *&v1[OBJC_IVAR____TtC16MusicApplication6Window_overrideTraitCollection];
  *&v1[OBJC_IVAR____TtC16MusicApplication6Window_overrideTraitCollection] = 0;

  v4.receiver = v1;
  v4.super_class = type metadata accessor for Window();
  objc_msgSendSuper2(&v4, "traitCollectionDidChange:", isa);
}

id Window.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Window();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_3077D4(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void, void, __n128))
{
  v6 = (v4 + *a3);
  swift_beginAccess();
  v7 = *v6;
  (a4)(*v6, v6[1]);
  return v7;
}

uint64_t sub_30785C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v10 = (v6 + *a5);
  swift_beginAccess();
  v11 = *v10;
  v12 = v10[1];
  *v10 = a1;
  v10[1] = a2;
  return a6(v11, v12);
}

id sub_307920(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC16MusicApplication6Window_screenDimensionsDidChangeHandler];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR____TtC16MusicApplication6Window_boundsSizeDidChangeHandler];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication6Window_overrideTraitCollection] = 0;
  v6 = [a1 effectiveGeometry];
  v7 = [v6 coordinateSpace];

  [v7 bounds];
  v9 = v8;
  v11 = v10;
  swift_unknownObjectRelease();
  v12 = [a1 screen];
  v13 = UIScreen.dimensions.getter();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = &v2[OBJC_IVAR____TtC16MusicApplication6Window_lastSeenDimensions];
  *v20 = v9;
  *(v20 + 1) = v11;
  v20[2] = v13;
  *(v20 + 3) = v15;
  *(v20 + 4) = v17;
  *(v20 + 5) = v19;
  v22.receiver = v2;
  v22.super_class = type metadata accessor for Window();
  return objc_msgSendSuper2(&v22, "initWithWindowScene:", a1);
}

uint64_t sub_307A78(uint64_t a1, int a2)
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

uint64_t sub_307A98(uint64_t result, int a2, int a3)
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

void sub_307AE0(uint64_t a1@<X8>)
{
  type metadata accessor for PlaybackIntentDescriptor(0);
  __chkstk_darwin();
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_28F80C(v3);
  v4 = sub_307C20();
  if (v4)
  {
    v5 = v4;
    v6 = [objc_opt_self() radioPlaybackIntentWithStation:v4];
    v12 = PlaybackIntentDescriptor.intent.getter(v11, v6, v7, v8, v9, v10);
    [v12 setTracklistToken:{objc_msgSend(v6, "tracklistToken")}];
    swift_unknownObjectRelease();

    v19 = PlaybackIntentDescriptor.intent.getter(v18, v13, v14, v15, v16, v17);
    [v19 setTracklistSource:1];

    sub_140E58(v3, a1);
  }

  else
  {
    sub_140E58(v3, a1);
  }
}

id sub_307C20()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_AF85F0;
  *(v1 + 32) = sub_AB92A0();
  *(v1 + 40) = v2;
  *(v1 + 48) = sub_AB92A0();
  *(v1 + 56) = v3;
  sub_96EA4(_swiftEmptyArrayStorage);
  v4 = objc_allocWithZone(MPPropertySet);
  isa = sub_AB9740().super.isa;

  sub_119B5C();
  v6 = sub_AB8FD0().super.isa;

  v7 = [v4 initWithProperties:isa relationships:v6];

  v8 = OBJC_IVAR____TtC11MusicJSCore21JSRadioPlaybackIntent_radioStationStoreItemMetadata;
  swift_beginAccess();
  v9 = *(v0 + v8);
  if (!v9)
  {
    v18 = OBJC_IVAR____TtC11MusicJSCore21JSRadioPlaybackIntent_radioStationIdentifierSet;
    swift_beginAccess();
    v19 = *(v0 + v18);
    if (v19)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70, &unk_AF8900);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_AF4EC0;
      *(inited + 32) = sub_AB92A0();
      *(inited + 40) = v21;
      *(inited + 48) = v7;
      v22 = v7;
      v23 = v19;
      sub_96EA4(inited);
      swift_setDeallocating();
      sub_CB490(inited + 32);
      v24 = objc_allocWithZone(MPPropertySet);
      v25 = sub_AB9740().super.isa;
      v26 = sub_AB8FD0().super.isa;

      v27 = [v24 initWithProperties:v25 relationships:v26];

      v28 = (*&stru_158.sectname[swift_isaMask & *v23])(v27);
      if (v28)
      {
        objc_opt_self();
        v17 = swift_dynamicCastObjCClass();

        if (!v17)
        {
        }

        return v17;
      }
    }

    else
    {
    }

    return 0;
  }

  v10 = objc_allocWithZone(MPStoreModelRadioStationBuilder);
  v11 = v9;
  result = [v10 initWithRequestedPropertySet:v7];
  if (result)
  {
    v13 = result;
    v14 = objc_opt_self();
    v15 = v11;
    v16 = [v14 activeAccount];
    v17 = [v13 modelObjectWithStoreItemMetadata:v15 userIdentity:v16];

    return v17;
  }

  __break(1u);
  return result;
}

double sub_307FCC()
{
  v1 = v0;
  v2 = sub_AB2A90();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v80 = v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB31C0();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = v72 - v9;
  sub_AB3110();
  v83 = v10;
  sub_AB3110();
  v11 = *(v6 + 8);
  v76 = v8;
  v77 = v11;
  v78 = v6 + 8;
  v79 = v5;
  v11(v8, v5);
  v12 = sub_97E70(_swiftEmptyArrayStorage);
  *&v96 = 0x64496C61626F6C67;
  *(&v96 + 1) = 0xE800000000000000;
  sub_ABAD10();
  v13 = *&v1[OBJC_IVAR____TtC16MusicApplication39PersonalMixSendFeedbackRequestOperation_playlistGlobalID];
  v14 = *&v1[OBJC_IVAR____TtC16MusicApplication39PersonalMixSendFeedbackRequestOperation_playlistGlobalID + 8];
  v97 = &type metadata for String;
  *&v96 = v13;
  *(&v96 + 1) = v14;
  sub_9ACFC(&v96, v98);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v89 = v12;
  sub_913C0(v98, &v90, isUniquelyReferenced_nonNull_native);
  sub_8085C(&v90);
  v16 = v89;
  *&v96 = 0x6D616441676E6F73;
  *(&v96 + 1) = 0xEA00000000006449;
  sub_ABAD10();
  v17 = *&v1[OBJC_IVAR____TtC16MusicApplication39PersonalMixSendFeedbackRequestOperation_songStoreID];
  v18 = *&v1[OBJC_IVAR____TtC16MusicApplication39PersonalMixSendFeedbackRequestOperation_songStoreID + 8];
  v97 = &type metadata for String;
  *&v96 = v17;
  *(&v96 + 1) = v18;
  sub_9ACFC(&v96, v98);

  v19 = swift_isUniquelyReferenced_nonNull_native();
  v89 = v16;
  sub_913C0(v98, &v90, v19);
  sub_8085C(&v90);
  v20 = v89;
  *&v90 = 0x65736E6F70736572;
  *(&v90 + 1) = 0xE900000000000073;
  sub_ABAD10();
  v21 = *&v1[OBJC_IVAR____TtC16MusicApplication39PersonalMixSendFeedbackRequestOperation_choices];
  v22 = *(v21 + 16);
  v81 = v3;
  v82 = v2;
  if (v22)
  {
    v73 = v20;
    v74 = v6;
    v75 = v1;
    *&v98[0] = _swiftEmptyArrayStorage;

    sub_6D410(0, v22, 0);
    v23 = *&v98[0];
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEE90, &unk_B09420);
    v72[1] = v21;
    v24 = (v21 + 56);
    do
    {
      v87 = v22;
      v88 = v23;
      v25 = *v24;
      v26 = v24[1];

      v86 = v25;

      v85 = v26;

      *&v90 = sub_AB9260();
      sub_13C80(0, &qword_DFA720, NSObject_ptr);
      sub_308C94();
      sub_ABAD10();
      v27 = sub_AB9260();
      v94[8] = swift_getObjectType();
      v94[5] = v27;
      *&v90 = sub_AB9260();
      sub_ABAD10();
      v28 = sub_AB9260();
      v95[8] = swift_getObjectType();
      v95[5] = v28;
      v29 = sub_ABB0C0();

      sub_308CFC(v94, &v90);
      v30 = sub_2EC004(&v90);
      if (v31)
      {
        goto LABEL_16;
      }

      *(v29 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v30;
      v32 = v29[6] + 40 * v30;
      v33 = v90;
      v34 = v91;
      *(v32 + 32) = v92;
      *v32 = v33;
      *(v32 + 16) = v34;
      sub_9ACFC(v93, (v29[7] + 32 * v30));
      v35 = v29[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_17;
      }

      v29[2] = v37;
      sub_308CFC(v95, &v90);
      v38 = sub_2EC004(&v90);
      if (v39)
      {
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
      }

      *(v29 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v38;
      v40 = v29[6] + 40 * v38;
      v41 = v90;
      v42 = v91;
      *(v40 + 32) = v92;
      *v40 = v41;
      *(v40 + 16) = v42;
      sub_9ACFC(v93, (v29[7] + 32 * v38));
      v43 = v29[2];
      v36 = __OFADD__(v43, 1);
      v44 = v43 + 1;
      if (v36)
      {
        goto LABEL_17;
      }

      v29[2] = v44;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBB90, &qword_AFA490);
      swift_arrayDestroy();

      v23 = v88;
      *&v98[0] = v88;
      v46 = v88[2];
      v45 = v88[3];
      if (v46 >= v45 >> 1)
      {
        sub_6D410((v45 > 1), v46 + 1, 1);
        v23 = *&v98[0];
      }

      v24 += 9;
      v23[2] = v46 + 1;
      v23[v46 + 4] = v29;
      v22 = v87 - 1;
    }

    while (v87 != 1);

    v6 = v74;
    v1 = v75;
    v20 = v73;
  }

  else
  {
    v23 = _swiftEmptyArrayStorage;
  }

  *(&v91 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E27CA0, &unk_B09430);
  *&v90 = v23;
  sub_9ACFC(&v90, v98);
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v89 = v20;
  sub_913C0(v98, &v96, v47);
  sub_8085C(&v96);
  v48 = objc_opt_self();
  isa = sub_AB8FD0().super.isa;

  *&v90 = 0;
  v50 = [v48 dataWithJSONObject:isa options:0 error:&v90];
  v51 = v90;

  if (v50)
  {
    v52 = sub_AB3260();
    v54 = v53;
  }

  else
  {
    sub_AB3050();

    swift_willThrow();

    v52 = 0;
    v54 = 0xF000000000000000;
  }

  v55 = v79;
  (*(v6 + 16))(v76, v83, v79);
  v56 = v80;
  sub_AB2A50();
  sub_AB2A20();
  v57 = sub_AB92A0();
  v59 = v58;
  v100._countAndFlagsBits = sub_AB92A0();
  v61 = v60;
  v99.value._countAndFlagsBits = v57;
  v99.value._object = v59;
  v100._object = v61;
  sub_AB2A80(v99, v100);

  sub_9007C(v52, v54);
  sub_AB2A70();
  sub_13C80(0, &unk_DF2B00, ICUserIdentity_ptr);
  v62 = static ICUserIdentity.active.getter();
  v63 = [objc_allocWithZone(ICStoreRequestContext) initWithIdentity:v62];

  v64 = objc_allocWithZone(ICStoreURLRequest);
  v65 = v63;
  v66 = sub_AB2A30();
  v67 = [v64 initWithURLRequest:v66 requestContext:v65];

  sub_13C80(0, &qword_E07CC0, ICURLSessionManager_ptr);
  v68 = static ICURLSessionManager.musicSession.getter();
  v69 = swift_allocObject();
  *(v69 + 16) = v1;
  v70 = v1;
  ICURLSession.enqueueDataRequestRecordingPerformanceMetrics(_:_:)(v67, sub_308DA4, v69);

  sub_466A4(v52, v54);
  (*(v81 + 8))(v56, v82);
  v77(v83, v55);

  return result;
}

void sub_308980(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *&a3[OBJC_IVAR____TtC16MusicApplication39PersonalMixSendFeedbackRequestOperation_responseHandler];

  v5(a2);

  if (a2)
  {
    v6 = sub_AB3040();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [a3 finishWithError:?];
}

id sub_308A98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PersonalMixSendFeedbackRequestOperation(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PersonalMixSendFeedbackRequestOperation(uint64_t a1)
{
  result = qword_DFE4E0;
  if (!qword_DFE4E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_308BDC(uint64_t a1)
{
  result = sub_AB31C0();
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

unint64_t sub_308C94()
{
  result = qword_E24B10;
  if (!qword_E24B10)
  {
    sub_13C80(255, &qword_DFA720, NSObject_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E24B10);
  }

  return result;
}

uint64_t sub_308CFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBB90, &qword_AFA490);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_308D6C()
{

  return swift_deallocObject();
}

double sub_308E24(void **a1, void *a2)
{
  v3 = *a1;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  v6 = v3;
  JSApplication.performModalMessagePresentation(message:completionHandler:)(a2, sub_309498, v5);

  return result;
}

void sub_308EE4(void *a1, uint64_t a2, void *a3)
{
  v5 = _s23MusicPerformanceContextVMa(0);
  __chkstk_darwin();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  __chkstk_darwin();
  v9 = &v19 - v8;
  if (a1)
  {
    memset(v27, 0, sizeof(v27));
    v28 = 1;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v20 = a3;
    if (Strong)
    {
      v11 = Strong;
      memset(v32, 0, sizeof(v32));
      v33 = 0;
      v34 = xmmword_AF7710;
      v12 = a1;
      PresentationSource.init(viewController:position:)(v11, v32, v26);
      sub_12E1C(v27, &unk_DEA520, &unk_AFDBF0);
      sub_111814(v26, v27);
    }

    else
    {
      v13 = a1;
    }

    sub_15F84(v27, v26, &unk_DEA520, &unk_AFDBF0);
    v14 = type metadata accessor for PlaybackIntentDescriptor(0);
    memset(v24, 0, sizeof(v24));
    v25 = 0;
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
    sub_15F84(v26, v22, &unk_DEA520, &unk_AFDBF0);
    sub_15F84(v24, (v7 + 104), &unk_DE8E30, "\b]\r");
    sub_15F84(v9, &v7[*(v5 + 28)], &unk_DEA510, "\b]\r");
    *v7 = 0u;
    *(v7 + 1) = 0u;
    *(v7 + 2) = 0u;
    *(v7 + 3) = 0u;
    *(v7 + 8) = 1;
    *(v7 + 9) = 0;
    *(v7 + 10) = 0;
    *(v7 + 11) = 0;
    v15 = v20;
    v16 = v20;
    sub_160B4(v22, v7, &unk_DEA520, &unk_AFDBF0);
    *(v7 + 12) = 0;
    v21[3] = v5;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v21);
    sub_16050(v7, boxed_opaque_existential_0);
    sub_12E1C(v9, &unk_DEA510, "\b]\r");
    sub_12E1C(v24, &unk_DE8E30, "\b]\r");
    sub_12E1C(v26, &unk_DEA520, &unk_AFDBF0);
    memset(v23, 0, 32);
    v22[1] = 0;
    v22[2] = 0;
    v22[0] = v15;
    sub_160B4(v21, v23, &unk_DE8E40, &unk_AF8050);
    v18 = *JSSegueCoordinator.shared.unsafeMutableAddressor();
    JSSegueCoordinator.perform(segue:with:)(a1, v22);
    sub_12E1C(v27, &unk_DEA520, &unk_AFDBF0);
    sub_16170(v22);
  }
}

id sub_309380(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for JSApplicationMessageGroup();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_3093D8()
{

  return swift_deallocObject();
}

uint64_t sub_309420()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_309458()
{

  return swift_deallocObject();
}

double sub_309500(uint64_t a1, uint64_t a2, void *a3)
{
  if ((*(a3 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_isLoading) & 1) == 0)
  {
    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    v6 = sub_ABA150();
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a3;

    v8 = a3;
    OS_dispatch_queue.asyncAfter(_:block:)(sub_30E3F4, v7, 0.2);
  }

  return result;
}

void sub_3095CC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_30E3FC(a1 + 16, v7);
  v4 = RequestResponse.Controller.revision.getter();
  sub_30E3FC(v4 + 16, v6);

  LOBYTE(a1) = _s16MusicApplication6SearchC21ResultSnapshotRequestV2eeoiySbAE_AEtFZ_0(v7, v6);
  sub_30E458(v6);
  sub_30E458(v7);
  if ((a1 & 1) == 0)
  {
    v5 = *(a2 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_isLoading);
    *(a2 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_isLoading) = 1;
    sub_34DA84(v5);
  }
}

double sub_309680(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v3 = sub_AB3430();
  v35 = *(v3 - 8);
  v36 = v3;
  __chkstk_darwin();
  v34 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00050, &qword_B094D0);
  __chkstk_darwin();
  v6 = &v33 - v5;
  type metadata accessor for MetricsPageProperties(0);
  __chkstk_darwin();
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Search.Event(0);
  __chkstk_darwin();
  v10 = (&v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v12 = &v33 - v11;
  sub_30CEC8(&v46);
  v37 = v48;
  v39 = v49;

  sub_30E458(&v46);
  v40 = a1;
  sub_30EEC4(a1, v12, type metadata accessor for Search.Event);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v13 = sub_208918();
    v14 = &off_D07940;
  }

  else
  {
    v13 = sub_208934();
    v14 = &off_D0C3F8;
  }

  v13;
  sub_30EFDC(v12, type metadata accessor for Search.Event);
  Search.resultSnapshotController.getter();
  RequestResponse.Controller.revision.getter();

  sub_30EEC4(v40, v10, type metadata accessor for Search.Event);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *(v42 + 9) = *(v10 + 25);
    v15 = v10[1];
    v41 = *v10;
    v42[0] = v15;
    if (BYTE8(v42[1]) != 255)
    {
      v16 = v10[1];
      v46 = *v10;
      v47[0] = v16;
      *(v47 + 9) = *(v10 + 25);
      goto LABEL_10;
    }

    sub_12E1C(&v41, &qword_DFE5D0, &qword_B094F8);
  }

  else
  {
    sub_30EFDC(v10, type metadata accessor for Search.Event);
  }

  sub_30CB98(&v46);
LABEL_10:
  RequestResponse.Revision.content.getter(v6);
  v17 = sub_30C4B8();
  sub_475B48(v6, v17, v8);
  sub_12E1C(v6, &unk_E00050, &qword_B094D0);
  v18 = v38;
  sub_15F84(v38, &v43, &qword_DF2BD0, &unk_AFDC00);
  if (*(&v44 + 1))
  {
    v41 = v43;
    v42[0] = v44;
    *&v42[1] = v45;
    ObjectType = swift_getObjectType();
    (v14[1])(ObjectType);
    v21 = v20;
    v22 = swift_getObjectType();
    v23 = (*(v21 + 128))(&v41, v22, v21);
    v25 = v24;
    swift_unknownObjectRelease();
    sub_486D08(v40, v8, v37, v39, v23, v25, 0);
    sub_8085C(&v41);
    sub_30EFDC(v8, type metadata accessor for MetricsPageProperties);
    sub_30E4AC(&v46);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_12E1C(&v43, &qword_DF2BD0, &unk_AFDC00);
    v26 = swift_getObjectType();
    (v14[1])(v26);
    v28 = v27;
    v29 = swift_getObjectType();
    v30 = v34;
    sub_3B8F68(v29);
    v31 = sub_21CCAC(1, v30, v18, v29, v28);
    (*(v35 + 8))(v30, v36);
    swift_unknownObjectRelease();
    sub_486D08(v40, v8, v37, v39, &dword_0 + 1, 0, v31);
    sub_30EFDC(v8, type metadata accessor for MetricsPageProperties);
    sub_30E4AC(&v46);

    swift_unknownObjectRelease();
  }

  return result;
}

void sub_309C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *&stru_158.sectname[swift_isaMask & *v4];
  v47.receiver = v4;
  v47.super_class = type metadata accessor for SearchViewController(0, v5, a3, a4);
  objc_msgSendSuper2(&v47, "viewDidLoad");
  v6 = [v4 view];
  if (v6)
  {
    v7 = v6;
    v8 = AccessibilityIdentifier.searchContentView.unsafeMutableAddressor();
    v9 = *v8;
    v10 = v8[1];
    v11 = v8[2];
    v12 = v8[3];
    sub_13C80(0, &qword_DF12A0, UIView_ptr);

    UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v9, v10, v13, v11, v12);

    v14 = [sub_208918() searchTextField];
    [v14 setAutocapitalizationType:0];

    sub_30D850();
    v15 = *(*(sub_208918() + OBJC_IVAR____TtCC16MusicApplication6Search3Bar_scopeBarContentView) + OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_sourceScopeBar);
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    *(v17 + 16) = v5;
    *(v17 + 24) = v16;
    v18 = &v15[OBJC_IVAR____TtCCC16MusicApplication6Search3Bar14SourceScopeBar_selectionHandler];
    v19 = *&v15[OBJC_IVAR____TtCCC16MusicApplication6Search3Bar14SourceScopeBar_selectionHandler];
    v20 = *&v15[OBJC_IVAR____TtCCC16MusicApplication6Search3Bar14SourceScopeBar_selectionHandler + 8];
    *v18 = sub_30EE80;
    v18[1] = v17;
    v21 = v15;

    sub_17654(v19, v20);

    v22 = *(*(sub_208918() + OBJC_IVAR____TtCC16MusicApplication6Search3Bar_scopeBarContentView) + OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_resultScopeBar);
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = swift_allocObject();
    *(v24 + 16) = v5;
    *(v24 + 24) = v23;
    v25 = v22;
    sub_AB3950();

    v26 = sub_208934();
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = swift_allocObject();
    *(v28 + 16) = v5;
    *(v28 + 24) = v27;
    v29 = &v26[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onDidSelectItem];
    v30 = *&v26[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onDidSelectItem];
    v31 = *&v26[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onDidSelectItem + 8];
    *v29 = sub_30EE94;
    v29[1] = v28;
    v32 = v26;

    sub_17654(v30, v31);

    v33 = sub_208934();
    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v35 = swift_allocObject();
    *(v35 + 16) = v5;
    *(v35 + 24) = v34;
    v36 = &v33[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onAddKeepLocalControl];
    v37 = *&v33[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onAddKeepLocalControl];
    v38 = *&v33[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onAddKeepLocalControl + 8];
    *v36 = sub_30EE9C;
    v36[1] = v35;
    v39 = v33;

    sub_17654(v37, v38);

    v40 = sub_208934();
    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = swift_allocObject();
    *(v42 + 16) = v5;
    *(v42 + 24) = v41;
    v43 = &v40[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_contextActionsModelLoadingHandler];
    v44 = *&v40[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_contextActionsModelLoadingHandler];
    v45 = *&v40[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_contextActionsModelLoadingHandler + 8];
    *v43 = sub_30EEA4;
    v43[1] = v42;
    v46 = v40;

    sub_17654(v44, v45);
  }

  else
  {
    __break(1u);
  }
}

void sub_30A044(char a1, uint64_t a2)
{
  type metadata accessor for Search.Event(0);
  __chkstk_darwin();
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    *v4 = a1 & 1;
    swift_storeEnumTagMultiPayload();
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    sub_309680(v4, v15);
    sub_12E1C(v15, &qword_DF2BD0, &unk_AFDC00);
    sub_30EFDC(v4, type metadata accessor for Search.Event);
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    v9 = sub_208934();

    sub_3512A4();
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    sub_30C53C(a1 & 1);
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    sub_30CEC8(v15);
    v17 = 0;
    sub_30CF2C(v15);
  }

  v14 = [objc_opt_self() standardUserDefaults];
  NSUserDefaults.lastSelectedSearchSource.setter(a1 & 1);
}

void sub_30A244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Search.Event(0);
  __chkstk_darwin();
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Search.ResultContext(0);
  __chkstk_darwin();
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = sub_208934();
    v13 = v11;
    if (![v12 isViewLoaded])
    {
      goto LABEL_21;
    }

    v30 = a1;
    sub_30F0C8(a2, v46);
    v14 = sub_208934();
    v15 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController__frozenResults;
    swift_beginAccess();
    sub_30EEC4(v14 + v15, v9, type metadata accessor for Search.ResultContext);
    v16 = &v9[*(v7 + 28)];
    if (*v16)
    {
      sub_E8BA0((v16 + 8), &v39);
      sub_30EFDC(v9, type metadata accessor for Search.ResultContext);
      if (*(&v40 + 1))
      {
        sub_70DF8(&v39, v37);
LABEL_8:
        sub_15F84(v46, &v39, &unk_DFC5A0, &unk_B0EB70);
        sub_15F84(v37, &v42, &unk_DFC5A0, &unk_B0EB70);
        if (*(&v40 + 1))
        {
          sub_15F84(&v39, v34, &unk_DFC5A0, &unk_B0EB70);
          if (*(&v43 + 1))
          {
            v31 = v42;
            v32 = v43;
            v33 = v44;
            v17 = v35;
            v18 = v36;
            __swift_project_boxed_opaque_existential_1(v34, v35);
            v19 = (*(v18 + 8))(v17, v18);
            v21 = v20;
            v23 = *(&v32 + 1);
            v22 = v33;
            __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
            if (v19 == (*(v22 + 8))(v23, v22) && v21 == v24)
            {
              v25 = 1;
            }

            else
            {
              v25 = sub_ABB3C0();
            }

            sub_12E1C(v37, &unk_DFC5A0, &unk_B0EB70);
            sub_12E1C(v46, &unk_DFC5A0, &unk_B0EB70);

            sub_297350(&v31);
            sub_297350(v34);
            sub_12E1C(&v39, &unk_DFC5A0, &unk_B0EB70);
            a1 = v30;
            if ((v25 & 1) == 0)
            {
              goto LABEL_21;
            }

            goto LABEL_19;
          }

          sub_12E1C(v37, &unk_DFC5A0, &unk_B0EB70);
          sub_12E1C(v46, &unk_DFC5A0, &unk_B0EB70);
          sub_297350(v34);
        }

        else
        {
          sub_12E1C(v37, &unk_DFC5A0, &unk_B0EB70);
          sub_12E1C(v46, &unk_DFC5A0, &unk_B0EB70);
          if (!*(&v43 + 1))
          {
            sub_12E1C(&v39, &unk_DFC5A0, &unk_B0EB70);
            a1 = v30;
LABEL_19:
            v26 = [sub_208934() contentScrollView];
            if (v26)
            {
              v27 = v26;
              [v26 _scrollToTopIfPossible:1];
            }

            goto LABEL_21;
          }
        }

        sub_12E1C(&v39, &unk_DFE600, &qword_B09518);
        a1 = v30;
LABEL_21:
        sub_E8BA0(a2, v6);
        swift_storeEnumTagMultiPayload();
        v46[0] = a1;
        sub_ABAD10();
        sub_309680(v6, &v39);
        sub_12E1C(&v39, &qword_DF2BD0, &unk_AFDC00);
        sub_30EFDC(v6, type metadata accessor for Search.Event);
        v28 = sub_208934();

        sub_3512A4();
        sub_E8BA0(a2, v46);
        sub_30CEC8(&v39);
        sub_160B4(v46, &v45, &unk_E00060, &qword_B094F0);
        sub_30CF2C(&v39);
        sub_30DF5C();

        return;
      }
    }

    else
    {
      sub_30EFDC(v9, type metadata accessor for Search.ResultContext);
      v39 = 0u;
      v40 = 0u;
      v41 = 0;
    }

    sub_12E1C(&v39, &unk_E00060, &qword_B094F0);
    memset(v37, 0, sizeof(v37));
    v38 = 0;
    goto LABEL_8;
  }
}

void sub_30A7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Search.Recents.Result.Item(0);
  __chkstk_darwin();
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040, &unk_AFA530);
  __chkstk_darwin();
  v52 = &v50 - v9;
  v56 = type metadata accessor for Search.Item(0);
  __chkstk_darwin();
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_AB3820();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for Search.Event(0);
  __chkstk_darwin();
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v50 = v8;
    v20 = sub_208918();
    v54 = v12;
    v55 = a1;
    v21 = v11;
    v22 = a1;
    v23 = v20;
    v53 = v19;
    [v23 resignFirstResponder];
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE5E8, &unk_B0EB80);
    v25 = *(v24 + 48);
    v26 = a2;
    v27 = *(v24 + 64);
    v28 = v22;
    v29 = v21;
    sub_30EEC4(v28, v17, type metadata accessor for Search.Item);
    v17[v25] = 4;
    v51 = a3;
    sub_30EEC4(a3, &v17[v27], type metadata accessor for Search.ResultContext);
    v30 = type metadata accessor for Search.ResultContext(0);
    v31 = &v17[v27];
    v32 = v26;
    v33 = v53;
    (*(*(v30 - 8) + 56))(v31, 0, 1, v30);
    swift_storeEnumTagMultiPayload();
    (*(v13 + 16))(v15, v32, v54);
    sub_30EF2C(&qword_DFAA90, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    sub_ABAD10();
    sub_309680(v17, v58);
    sub_12E1C(v58, &qword_DF2BD0, &unk_AFDC00);
    sub_30EFDC(v17, type metadata accessor for Search.Event);
    v34 = v55;
    sub_30EEC4(v55, v21, type metadata accessor for Search.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {

        v36 = v21;
        v37 = v52;
        sub_36B0C(v36, v52, &unk_E00040, &unk_AFA530);
        sub_30AD70(v37, v51, v34);

        sub_12E1C(v37, &unk_E00040, &unk_AFA530);
      }

      else
      {

        v47 = v50;
        sub_30EF74(v21, v50, type metadata accessor for Search.Recents.Result.Item);
        sub_30AD70(v47, v51, v34);

        sub_30EFDC(v47, type metadata accessor for Search.Recents.Result.Item);
      }
    }

    else
    {
      v38 = *(v21 + 8);
      v56 = *v29;
      v40 = v29[2];
      v39 = v29[3];
      v41 = sub_208918();
      v42 = [v41 text];
      if (v42)
      {
        v43 = v42;
        v44 = sub_AB92A0();
        v46 = v45;
      }

      else
      {

        v44 = 0;
        v46 = 0;
      }

      sub_30D0C4(v56, v38, v40, v39);
      v48 = sub_AB37B0();
      *v17 = 26;
      *(v17 + 1) = v48;
      v17[16] = 0;
      *(v17 + 3) = v44;
      *(v17 + 4) = v46;
      swift_storeEnumTagMultiPayload();
      v59 = 0;
      memset(v58, 0, sizeof(v58));
      sub_309680(v17, v58);
      sub_12E1C(v58, &qword_DF2BD0, &unk_AFDC00);
      sub_30EFDC(v17, type metadata accessor for Search.Event);
      v49 = sub_208934();

      sub_3512A4();
    }
  }
}

void sub_30AD70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE5F0, &unk_B09508);
  __chkstk_darwin();
  v8 = &v21 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040, &unk_AFA530);
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  v10 = (&v21 - v9);
  v11 = (a2 + *(type metadata accessor for Search.ResultContext(0) + 40));
  v12 = v11[2];
  if ((~v12 & 0x7000000000000007) == 0)
  {
    return;
  }

  v23 = v6;
  if ((v12 & 0x4000000000000000) != 0)
  {
    v22 = a1;
    v14 = *v11;
    v13 = v11[1];
    v15 = sub_30F03C(*v11, v13, v12);
    v16 = v14(a3, v15);
    if ((~v18 & 0xF000000000000007) == 0)
    {

      sub_30F04C(v14, v13, v12);
      return;
    }

    v19 = v18;
    sub_30EEB0(v16, v17, v18);
    sub_30F04C(v14, v13, v12);
    v12 = v19;
    a1 = v22;
    v6 = v23;
  }

  sub_15F84(a1, v10, &unk_E00040, &unk_AFA530);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v10;
  }

  else
  {
    sub_36B0C(v10, v8, &qword_DFE5F0, &unk_B09508);
    v20 = SnapshotIdentifier.Lazy.object.getter(v6);
    sub_12E1C(v8, &qword_DFE5F0, &unk_B09508);
  }

  sub_30B2E8(v20, v12 < 0);
}

uint64_t sub_30B2E8(uint64_t a1, char a2)
{
  swift_beginAccess();
  v5 = *(v2 + 88);
  v6 = a2 & 1;

  sub_477E20(v6, v5);
  v8 = v7;
  v10 = v9;
  v12 = v11;

  if ((~v12 & 0xF000000000000007) != 0)
  {
    v15 = &_s7LibraryVN;
    if (v12 >= 0)
    {
      v15 = &_s7CatalogVN;
    }

    v16 = &off_D00048;
    if (v12 < 0)
    {
      v16 = &off_D17228;
    }

    *(&v22 + 1) = v15;
    v23 = v16;

    sub_30EEB0(v8, v10, v12);
    *&v21 = v8;
    *(&v21 + 1) = v10;
    *&v22 = v12 & 0x7FFFFFFFFFFFFFFFLL;
    sub_70DF8(&v21, v24);
    v17 = v25;
    v18 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    v19 = *(v18 + 24);
    v20 = sub_13C80(0, &qword_DEDE20, MPModelObject_ptr);
    v19(a1, v20, v17, v18);
    return __swift_destroy_boxed_opaque_existential_0(v24);
  }

  else
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    sub_12E1C(&v21, &qword_DFE5E0, &qword_B09500);
    sub_30F074();
    swift_allocError();
    *v13 = v6;
    return swift_willThrow();
  }
}

void sub_30B4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Search.Event(0);
  __chkstk_darwin();
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE5E8, &unk_B0EB80);
    v16 = *(v15 + 48);
    v17 = a1;
    v18 = a2;
    v19 = *(v15 + 64);
    sub_30EEC4(v17, v12, type metadata accessor for Search.Item);
    v12[v16] = 0;
    sub_30EEC4(a3, &v12[v19], type metadata accessor for Search.ResultContext);
    v20 = type metadata accessor for Search.ResultContext(0);
    (*(*(v20 - 8) + 56))(&v12[v19], 0, 1, v20);
    swift_storeEnumTagMultiPayload();
    (*(v8 + 16))(v10, v18, v7);
    sub_30EF2C(&qword_DFAA90, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    sub_ABAD10();
    sub_309680(v12, v21);
    sub_12E1C(v21, &qword_DF2BD0, &unk_AFDC00);
    sub_30EFDC(v12, type metadata accessor for Search.Event);
  }
}

double sub_30B740(uint64_t a1, char a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = *(Strong + qword_DFE528);
    v14 = Strong;

    swift_beginAccess();
    v15 = *(v13 + 88);

    sub_477E20(a2 & 1, v15);
    v17 = v16;
    v19 = v18;
    v21 = v20;

    if ((~v21 & 0xF000000000000007) != 0)
    {
      v23 = &_s7LibraryVN;
      if (v21 >= 0)
      {
        v23 = &_s7CatalogVN;
      }

      v24 = &off_D00048;
      if (v21 < 0)
      {
        v24 = &off_D17228;
      }

      *(&v28 + 1) = v23;
      v29 = v24;

      sub_30EEB0(v17, v19, v21);
      *&v27 = v17;
      *(&v27 + 1) = v19;
      *&v28 = v21 & 0x7FFFFFFFFFFFFFFFLL;
      sub_70DF8(&v27, v30);
      v25 = v31;
      v26 = v32;
      __swift_project_boxed_opaque_existential_1(v30, v31);
      (*(v26 + 40))(a1, a3, a4, a5, v25, v26);
      __swift_destroy_boxed_opaque_existential_0(v30);
    }

    else
    {
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      sub_12E1C(&v27, &qword_DFE5E0, &qword_B09500);
      sub_1CE268();
      swift_allocError();
      *v22 = 0;
      a4();
    }
  }

  return result;
}

void sub_30B940(void *a1)
{
  v4 = a1;
  sub_309C24(v4, v1, v2, v3);
}

void sub_30B988(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = a1;
  sub_30B9E8(v3, &selRef_viewWillAppear_, 1, v4);
}

double sub_30B9E8(char a1, SEL *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v8 = type metadata accessor for SearchViewController(0, *&stru_158.sectname[swift_isaMask & *v4], a3, a4);
  v10.receiver = v4;
  v10.super_class = v8;
  objc_msgSendSuper2(&v10, *a2, a1 & 1);
  *(v4 + qword_DFE538) = v5;
  return sub_30CFAC();
}

void sub_30BA70(void *a1, uint64_t a2, char a3)
{
  v5 = a1;
  sub_30B9E8(a3, &selRef_viewWillDisappear_, 0, v4);
}

void sub_30BAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = type metadata accessor for SearchViewController(0, *&stru_158.sectname[swift_isaMask & *v4], a3, a4);
  v26.receiver = v4;
  v26.super_class = v7;
  objc_msgSendSuper2(&v26, "traitCollectionDidChange:", a1);
  v8 = [v4 traitCollection];
  if (a1)
  {
    v9 = UITraitCollection.mediaLibrary.getter();
    v10 = UITraitCollection.mediaLibrary.getter();
    if (v9)
    {
      sub_13C80(0, &qword_DF86B0, MPMediaLibrary_ptr);
      v11 = sub_ABA790();

      if (v11)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v10 = UITraitCollection.mediaLibrary.getter();
  }

LABEL_7:
  v12 = *(v5 + qword_DFE528);
  v13 = UITraitCollection.mediaLibrary.getter();
  swift_beginAccess();
  sub_30E554(v12 + 16, &v24);
  objc_storeStrong(v25, v13);
  sub_4768E8();

  sub_30E554(v12 + 16, v23);
  swift_beginAccess();
  sub_30EDB4(&v24, v12 + 16);
  swift_endAccess();
  sub_476C14(v23);
  sub_30E5B0(v23);
  sub_30E5B0(&v24);
  [sub_208918() _setLocalOverrideTraitCollection:v8];
  if (!a1)
  {
    v15 = UITraitCollection.mediaPickerConfiguration.getter();
    goto LABEL_13;
  }

LABEL_8:
  v14 = UITraitCollection.mediaPickerConfiguration.getter();
  v15 = UITraitCollection.mediaPickerConfiguration.getter();
  if (v14)
  {
    if (v15)
    {
      v16 = v15;
      sub_13C80(0, &qword_DFE5D8, MPMediaPickerConfiguration_ptr);
      v17 = sub_ABA790();

      if (v17)
      {
        goto LABEL_16;
      }

LABEL_15:
      v18 = *(v5 + qword_DFE528);
      v19 = UITraitCollection.mediaPickerConfiguration.getter();
      swift_beginAccess();
      sub_30E554(v18 + 16, &v24);
      v20 = v24;
      v21 = v19;

      v24 = v19;
      sub_4768E8();

      sub_30E554(v18 + 16, v23);
      swift_beginAccess();
      sub_30EDB4(&v24, v18 + 16);
      swift_endAccess();
      sub_476C14(v23);
      sub_30E5B0(v23);
      sub_30E5B0(&v24);
      rawValue = UITraitCollection.combinedLibraryRequestFilter.getter().rawValue;
      sub_30E554(v18 + 16, &v24);
      v25[1] = rawValue;
      sub_4768E8();
      sub_30E554(v18 + 16, v23);
      swift_beginAccess();
      sub_30EDB4(&v24, v18 + 16);
      swift_endAccess();
      sub_476C14(v23);

      sub_30E5B0(v23);
      sub_30E5B0(&v24);
      return;
    }

LABEL_14:

    goto LABEL_15;
  }

LABEL_13:
  v14 = v15;
  if (v15)
  {
    goto LABEL_14;
  }

LABEL_16:
}

void sub_30BE34(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v8 = a1;
  sub_30BAD0(a3, v8, v6, v7);
}

void sub_30BEA0(char a1)
{
  v2 = a1 & 1;
  type metadata accessor for Search.Event(0);
  __chkstk_darwin();
  v4 = v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + qword_DFE518) != v2)
  {
    if (*(v1 + qword_DFE518))
    {
      sub_30CEC8(v7);

      v9 = 0;
      v10 = 0xE000000000000000;
      sub_30CF2C(v7);
      v6 = 0;
      memset(v5, 0, sizeof(v5));
      sub_30CEC8(v7);
      sub_160B4(v5, &v11, &unk_E00060, &qword_B094F0);
      sub_30CF2C(v7);
      *v4 = 1;
      v4[40] = 0;
      swift_storeEnumTagMultiPayload();
      v8 = 0;
      memset(v7, 0, sizeof(v7));
      sub_309680(v4, v7);
      sub_12E1C(v7, &qword_DF2BD0, &unk_AFDC00);
      sub_30EFDC(v4, type metadata accessor for Search.Event);
    }

    sub_30CFAC();
    sub_30DA34();
    sub_30D210();
  }
}

void sub_30C014(char a1)
{
  v2 = *(v1 + qword_DFE518);
  *(v1 + qword_DFE518) = a1;
  sub_30BEA0(v2);
}

void sub_30C02C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_30E834();
}

void sub_30C08C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_30E870();
}

double sub_30C0EC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_AB92A0();
  v9 = v8;
  v10 = a3;
  v11 = a4;
  v12 = a1;
  sub_30E8A8(v7, v9);

  return result;
}

double sub_30C178(void *a1)
{
  type metadata accessor for Search.Event(0);
  *&v2 = __chkstk_darwin().n128_u64[0];
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [a1 text];
  if (v5)
  {
    v7 = v5;
    v8 = sub_AB92A0();
    v10 = v9;

    *v4 = 3;
    swift_storeEnumTagMultiPayload();
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    sub_309680(v4, &v12);
    sub_12E1C(&v12, &qword_DF2BD0, &unk_AFDC00);
    sub_30EFDC(v4, type metadata accessor for Search.Event);
    *v4 = 54;
    *(v4 + 1) = 0;
    v4[16] = 1;
    *(v4 + 3) = 0;
    *(v4 + 4) = 0;
    swift_storeEnumTagMultiPayload();
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    sub_309680(v4, &v12);
    sub_12E1C(&v12, &qword_DF2BD0, &unk_AFDC00);
    sub_30EFDC(v4, type metadata accessor for Search.Event);
    v11 = sub_208934();
    sub_3512A4();

    sub_30D0C4(v8, v10, 0, 0);
  }

  return result;
}