BOOL sub_10019942C(void *a1, void *a2)
{
  sub_100016F40(0, &qword_10094D040, NSObject_ptr);
  if ((sub_100770EEC() & 1) == 0)
  {
    return 0;
  }

  v4 = a1[2];
  v5 = a2[2];
  if (v4)
  {
    if (!v5 || (a1[1] != a2[1] || v4 != v5) && (sub_10077167C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  if (sub_10076D3CC() & 1) != 0 && *(a1 + v6[7]) == *(a2 + v6[7]) && *(a1 + v6[8]) == *(a2 + v6[8]) && (sub_10076D96C() & 1) != 0 && (sub_10076D96C())
  {
    return *(a1 + v6[11]) == *(a2 + v6[11]);
  }

  return 0;
}

BOOL sub_10019954C(void *a1, void *a2)
{
  v4 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v5 = *(v4 - 1);
  __chkstk_darwin(v4);
  v7 = (&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10000A5D4(&qword_100949718, &unk_10078CE10);
  __chkstk_darwin(v8 - 8);
  v10 = (&v30 - v9);
  v11 = sub_10000A5D4(&qword_10094BB00, &qword_100791CC8);
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  sub_100016F40(0, &qword_10094D040, NSObject_ptr);
  if ((sub_100770EEC() & 1) == 0)
  {
    return 0;
  }

  v14 = a1[2];
  v15 = a2[2];
  if (v14)
  {
    if (!v15 || (a1[1] != a2[1] || v14 != v15) && (sub_10077167C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  if ((sub_10076D3CC() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v4[7]) != *(a2 + v4[7]))
  {
    return 0;
  }

  if (*(a1 + v4[8]) != *(a2 + v4[8]))
  {
    return 0;
  }

  if ((sub_10076D96C() & 1) == 0)
  {
    return 0;
  }

  if ((sub_10076D96C() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v4[11]) != *(a2 + v4[11]))
  {
    return 0;
  }

  v16 = type metadata accessor for TitleHeaderView.Style(0);
  if (!sub_10019942C((a1 + *(v16 + 20)), (a2 + *(v16 + 20))))
  {
    return 0;
  }

  v30 = v16;
  v17 = *(v16 + 24);
  v18 = *(v11 + 48);
  sub_100016E2C(a1 + v17, v13, &qword_100949718, &unk_10078CE10);
  v31 = v18;
  sub_100016E2C(a2 + v17, &v13[v18], &qword_100949718, &unk_10078CE10);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) != 1)
  {
    sub_100016E2C(v13, v10, &qword_100949718, &unk_10078CE10);
    v20 = v31;
    if (v19(&v13[v31], 1, v4) != 1)
    {
      sub_100199BC0(&v13[v20], v7, type metadata accessor for TitleHeaderView.TextConfiguration);
      v21 = sub_10019942C(v10, v7);
      sub_100199AA8(v7, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_100199AA8(v10, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_10000CFBC(v13, &qword_100949718, &unk_10078CE10);
      if (!v21)
      {
        return 0;
      }

      goto LABEL_23;
    }

    sub_100199AA8(v10, type metadata accessor for TitleHeaderView.TextConfiguration);
LABEL_21:
    sub_10000CFBC(v13, &qword_10094BB00, &qword_100791CC8);
    return 0;
  }

  if (v19(&v13[v31], 1, v4) != 1)
  {
    goto LABEL_21;
  }

  sub_10000CFBC(v13, &qword_100949718, &unk_10078CE10);
LABEL_23:
  v22 = v30;
  if (*(a1 + v30[7]) != *(a2 + v30[7]) || *(a1 + v30[8]) != *(a2 + v30[8]) || *(a1 + v30[9]) != *(a2 + v30[9]) || (sub_100763B9C() & 1) == 0)
  {
    return 0;
  }

  v23 = v22[12];
  v24 = *(a1 + v23);
  v25 = *(a2 + v23);
  if (v24)
  {
    if (!v25)
    {
      return 0;
    }

    sub_100016F40(0, &qword_100942F10, UIColor_ptr);
    v26 = v25;
    v27 = v24;
    v28 = sub_100770EEC();

    if ((v28 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v25)
  {
    return 0;
  }

  if (sub_100770EEC())
  {
    sub_100763BBC();
    sub_100199B08(&qword_10094BB08, &type metadata accessor for TitleHeaderLayout.ChildrenHorizontalAlignment, &protocol conformance descriptor for TitleHeaderLayout.ChildrenHorizontalAlignment);
    sub_10077018C();
    sub_10077018C();
    return v33 == v32;
  }

  return 0;
}

uint64_t sub_100199AA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100199B08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100199B50(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_10094BB50, &qword_1007851D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100199BC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100199C28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_100199C90()
{
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowText);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowLabel) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowArtwork) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowArtworkView) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleArtwork) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleArtworkView) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_detailLabel) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_shortDetailLabel) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryView) = 0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessory;
  v3 = type metadata accessor for Accessory(0);
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  v4 = (v0 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryAction);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_separatorInset);
  v6 = *&UIEdgeInsetsZero.bottom;
  *v5 = *&UIEdgeInsetsZero.top;
  v5[1] = v6;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_allowsAccessibilityLayouts) = 1;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_100199DE8(uint64_t a1)
{
  if (a1 != 2)
  {
    return 0;
  }

  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100785D70;
  v2 = objc_opt_self();
  *(v1 + 32) = [v2 clearColor];
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v3 = [v2 blackColor];
  v4 = [v3 colorWithAlphaComponent:0.06];

  v5.super.isa = [objc_allocWithZone(UIColor) initWithWhite:0.06667 alpha:1.0];
  v6.super.isa = v4;
  isa = sub_100770DEC(v6, v5).super.isa;
  result = v1;
  *(v1 + 40) = isa;
  return result;
}

unint64_t sub_100199F18@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10019C730(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_100199F78()
{
  *&v0[OBJC_IVAR____TtC20ProductPageExtension26SearchCollectionViewLayout_backgroundCornerRadius] = 0;
  v1 = &v0[OBJC_IVAR____TtC20ProductPageExtension26SearchCollectionViewLayout_pendingPrepareObserver];
  v2 = type metadata accessor for SearchCollectionViewLayout();
  *v1 = 0;
  *(v1 + 1) = 0;
  v10.receiver = v0;
  v10.super_class = v2;
  v3 = objc_msgSendSuper2(&v10, "init");
  type metadata accessor for SearchResultBackgroundView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = v3;
  v6 = sub_10076FF6C();
  [v5 registerClass:ObjCClassFromMetadata forDecorationViewOfKind:v6];

  type metadata accessor for SearchTransparencyView();
  v7 = swift_getObjCClassFromMetadata();
  sub_1007708EC();
  v8 = sub_10076FF6C();

  [v5 registerClass:v7 forDecorationViewOfKind:v8];

  return v5;
}

double sub_10019A164()
{
  v1 = v0;
  v14.receiver = v0;
  v14.super_class = type metadata accessor for SearchCollectionViewLayout();
  objc_msgSendSuper2(&v14, "collectionViewContentSize");
  v3 = v2;
  v4 = [v0 collectionView];
  if (v4)
  {
    v5 = v4;
    v6 = [v0 collectionView];
    if (v6 && (v7 = v6, v8 = [v6 delegate], v7, v8))
    {
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        v9 = sub_100766C4C();
        if (v9)
        {
          v10 = v9;
          v11 = OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits;
          [*&v8[OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits] pageContainerSize];
          [*&v8[v11] pageMarginInsets];
          sub_100770ACC();
          sub_1000D3900(v12, 1.79769313e308, v10, v5);
        }

        swift_unknownObjectRelease();
        [v1 minimumLineSpacing];
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  return v3;
}

void *sub_10019A320(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v80 = sub_10000A5D4(&qword_10094BC30, &unk_100791D80);
  __chkstk_darwin(v80);
  v8 = &v67 - v7;
  v9 = sub_10075E11C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v67 - v14;
  v16 = sub_10000A5D4(&unk_10094DE60, "ܱ\b");
  __chkstk_darwin(v16 - 8);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v67 - v20;
  __chkstk_darwin(v22);
  v81 = &v67 - v23;
  v24 = sub_10019ADFC(a1);
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = type metadata accessor for SearchCollectionViewLayout();
  v86.receiver = v4;
  v86.super_class = v31;
  result = objc_msgSendSuper2(&v86, "layoutAttributesForElementsInRect:", v24, v26, v28, v30);
  if (!result)
  {
    return result;
  }

  v33 = result;
  sub_100016F40(0, &qword_100947EF0, UICollectionViewLayoutAttributes_ptr);
  v72 = sub_1007701BC();

  v34 = [v5 collectionView];
  if (!v34)
  {
    return v72;
  }

  v35 = v34;
  v36 = [v34 delegate];

  if (!v36)
  {
    return v72;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {
    swift_unknownObjectRelease();
    return v72;
  }

  v71 = v18;
  v69 = v12;
  v79 = v10;
  v67 = v36;
  v37 = [*(v36 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits) traitCollection];
  [v37 horizontalSizeClass];

  v38 = 1;
  sub_100766C5C();
  if ((v39 & 1) == 0)
  {
    sub_10075E08C();
    v38 = 0;
  }

  v78 = *(v79 + 56);
  v79 += 56;
  v78(v81, v38, 1, v9);
  v85 = _swiftEmptyArrayStorage;
  if (v72 >> 62)
  {
    v40 = sub_10077158C();
  }

  else
  {
    v40 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = v67;
  if (v40)
  {
    v84 = v5;
    if (v40 >= 1)
    {
      v41 = 0;
      v42 = v72;
      v75 = v72 & 0xC000000000000001;
      v76 = "pendingPrepareObserver";
      v73 = (v10 + 48);
      v74 = (v10 + 16);
      v68 = (v10 + 32);
      v82 = (v10 + 8);
      v77 = v40;
      v70 = v15;
      while (1)
      {
        if (v75)
        {
          v43 = sub_10077149C();
        }

        else
        {
          v43 = *(v42 + 8 * v41 + 32);
        }

        v83 = v43;
        v44 = [v43 indexPath];
        sub_10075E06C();

        v45 = sub_10076FF6C();
        isa = sub_10075E02C().super.isa;
        v47 = [v84 layoutAttributesForDecorationViewOfKind:v45 atIndexPath:isa];

        if (v47)
        {
          v48 = v47;
          sub_10077019C();
          if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_10077021C();
          }

          sub_10077025C();
        }

        (*v74)(v21, v15, v9);
        v78(v21, 0, 1, v9);
        v49 = *(v80 + 48);
        sub_1000DE51C(v21, v8);
        sub_1000DE51C(v81, &v8[v49]);
        v50 = *v73;
        if ((*v73)(v8, 1, v9) == 1)
        {
          break;
        }

        v51 = v21;
        v52 = v71;
        sub_1000DE51C(v8, v71);
        if (v50(&v8[v49], 1, v9) == 1)
        {
          sub_10000CFBC(v51, &unk_10094DE60, "ܱ\b");
          v53 = v52;
          v21 = v51;
          (*v82)(v53, v9);
          v15 = v70;
          v42 = v72;
LABEL_24:
          sub_10000CFBC(v8, &qword_10094BC30, &unk_100791D80);
          goto LABEL_30;
        }

        v55 = v69;
        v56 = (*v68)(v69, &v8[v49], v9);
        sub_1000DE58C(v56, v57);
        v58 = sub_10076FF1C();
        v59 = *v82;
        (*v82)(v55, v9);
        sub_10000CFBC(v51, &unk_10094DE60, "ܱ\b");
        v60 = v52;
        v21 = v51;
        v59(v60, v9);
        sub_10000CFBC(v8, &unk_10094DE60, "ܱ\b");
        v15 = v70;
        v42 = v72;
        if (v58)
        {
          goto LABEL_26;
        }

LABEL_30:
        v65 = v83;
        sub_10019AF94(v83, v54);
        sub_10077019C();
        if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
        }

        ++v41;
        sub_10077025C();

        (*v82)(v15, v9);
        if (v77 == v41)
        {
          v66 = v85;
          goto LABEL_37;
        }
      }

      sub_10000CFBC(v21, &unk_10094DE60, "ܱ\b");
      if (v50(&v8[v49], 1, v9) == 1)
      {
        sub_10000CFBC(v8, &unk_10094DE60, "ܱ\b");
LABEL_26:
        type metadata accessor for SearchTransparencyView();
        sub_1007708EC();
        v61 = sub_10076FF6C();

        v62 = sub_10075E02C().super.isa;
        v63 = [v84 layoutAttributesForDecorationViewOfKind:v61 atIndexPath:v62];

        if (v63)
        {
          v64 = v63;
          sub_10077019C();
          if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_10077021C();
          }

          sub_10077025C();
        }

        goto LABEL_30;
      }

      goto LABEL_24;
    }

    __break(1u);
  }

  else
  {
    v66 = _swiftEmptyArrayStorage;
LABEL_37:
    swift_unknownObjectRelease();

    sub_10000CFBC(v81, &unk_10094DE60, "ܱ\b");
    return v66;
  }

  return result;
}

double sub_10019ADFC(double a1)
{
  v3 = [v1 collectionView];
  if (v3)
  {
    v4 = v3;
    v5 = [v1 collectionView];
    if (v5 && (v6 = v5, v7 = [v5 delegate], v6, v7))
    {
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        v8 = sub_100766C4C();
        if (v8)
        {
          v9 = v8;
          v10 = OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits;
          [*&v7[OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits] pageContainerSize];
          [*&v7[v10] pageMarginInsets];
          sub_100770ACC();
          sub_1000D3900(v11, 1.79769313e308, v9, v4);
        }

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  return a1;
}

id sub_10019AF94(void *a1, uint64_t a2)
{
  v3 = v2;
  v39 = a1;
  v4 = sub_10075E11C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v36 - v9;
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = &v36 - v13;
  v15 = [v2 collectionView];
  if (v15)
  {
    v16 = v15;
    v17 = [v2 collectionView];
    if (!v17 || (v18 = v17, v19 = [v17 delegate], v18, !v19))
    {
LABEL_14:

      goto LABEL_15;
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v36 = &protocol descriptor for UICollectionViewDelegateSearchLayout;
      v37 = v5;
      v38 = v4;
      v20 = [*&v19[OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits] traitCollection];
      [v20 horizontalSizeClass];

      sub_100766C5C();
      if (v21)
      {
        swift_unknownObjectRelease();
      }

      else
      {
        sub_10075E08C();
        swift_unknownObjectRelease();
        v23 = v37;
        v22 = v38;
        (*(v37 + 32))(v14, v10, v38);
        v24 = [v3 collectionView];
        if (v24 && (v25 = v24, v26 = [v24 delegate], v25, v26))
        {
          swift_getObjectType();
          if (!swift_conformsToProtocol2())
          {

            swift_unknownObjectRelease();
            (*(v23 + 8))(v14, v22);
            goto LABEL_15;
          }

          v27 = sub_100766C4C();
          if (v27)
          {
            v28 = v27;
            v29 = OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits;
            [*&v26[OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits] pageContainerSize];
            [*&v26[v29] pageMarginInsets];
            sub_100770ACC();
            sub_1000D3900(v30, 1.79769313e308, v28, v16);
          }

          swift_unknownObjectRelease();
          v33 = [v39 indexPath];
          sub_10075E06C();

          LOBYTE(v33) = sub_10075E03C();
          v34 = *(v23 + 8);
          v34(v7, v22);
          if (v33)
          {
            sub_100016F40(0, &qword_100947EF0, UICollectionViewLayoutAttributes_ptr);
            v35 = sub_10077116C();
            [v3 minimumLineSpacing];
            [v35 frame];
            [v35 setFrame:?];

            v34(v14, v22);
            return v35;
          }

          v34(v14, v22);
        }

        else
        {
          (*(v23 + 8))(v14, v22);
        }
      }

      goto LABEL_14;
    }

    swift_unknownObjectRelease();
  }

LABEL_15:
  v31 = v39;

  return v31;
}

char *sub_10019B424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v132 = a2;
  v133 = a1;
  v6 = sub_10075E11C();
  v130 = *(v6 - 8);
  __chkstk_darwin(v6);
  v127 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&qword_10094BC30, &unk_100791D80);
  __chkstk_darwin(v8);
  v10 = &v120 - v9;
  v11 = sub_10000A5D4(&unk_10094DE60, "ܱ\b");
  __chkstk_darwin(v11 - 8);
  v128 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v129 = &v120 - v14;
  __chkstk_darwin(v15);
  v131 = &v120 - v16;
  v17 = sub_10077164C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v120 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = sub_10075E02C().super.isa;
  v22 = type metadata accessor for SearchCollectionViewLayout();
  v135.receiver = v4;
  v135.super_class = v22;
  v23 = objc_msgSendSuper2(&v135, "layoutAttributesForItemAtIndexPath:", isa);

  if (!v23)
  {
    return 0;
  }

  v126 = v10;
  v24 = [v4 collectionView];
  if (!v24)
  {
    goto LABEL_11;
  }

  v25 = v24;
  v26 = [v4 collectionView];
  if (!v26 || (v125 = v6, v27 = v26, v28 = [v26 delegate], v27, !v28))
  {

LABEL_11:
    return 0;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v123 = v28;
  v124 = v23;
  type metadata accessor for SearchCollectionLayoutAttributes();
  v29 = sub_10076FF6C();
  v30 = sub_10075E02C().super.isa;
  v121 = [swift_getObjCClassFromMetadata() layoutAttributesForDecorationViewOfKind:v29 withIndexPath:v30];

  v31 = v25;
  v32 = [v31 traitCollection];
  v120 = [v32 horizontalSizeClass];

  v33 = [v31 traitCollection];
  v34 = [v33 userInterfaceIdiom];

  v122 = v31;
  if (v34)
  {
    if (qword_1009411F0 != -1)
    {
      swift_once();
    }

    v35 = sub_10076D9AC();
    sub_10000A61C(v35, qword_1009A2350);
    v36 = [v31 traitCollection];

    sub_10076DEDC();
    sub_10000A5D4(&unk_100942870, &qword_100784460);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1007841E0;
    *(v37 + 32) = v36;
    v38 = v36;
    v39 = sub_10076DEEC();
    sub_10076D3EC();
    v41 = v40;
  }

  else
  {
    if (qword_10093F970 != -1)
    {
      swift_once();
    }

    v44 = sub_10076D9AC();
    sub_10000A61C(v44, qword_10099D6D8);
    v45 = [v31 traitCollection];

    sub_10076D17C();
    sub_10076D97C();
    v41 = v46;

    (*(v18 + 8))(v20, v17);
  }

  v48 = v123;
  v47 = v124;
  v49 = v125;
  if (v133 != 0xD000000000000022 || 0x80000001007D7490 != v132)
  {
    v51 = sub_10077167C();
    v50 = v122;
    if ((v51 & 1) != 0 && v120 == 1)
    {
      goto LABEL_23;
    }

    if (sub_10077167C())
    {
      goto LABEL_28;
    }

    type metadata accessor for SearchTransparencyView();
    if (sub_1007708EC() == v133 && v74 == v132)
    {

      v75 = v131;
    }

    else
    {
      v81 = sub_10077167C();

      v75 = v131;
      if ((v81 & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    v82 = v130;
    (*(v130 + 16))(v75, a3, v49);
    v83 = v49;
    v84 = *(v82 + 56);
    v85 = 1;
    v84(v75, 0, 1, v83);
    v132 = OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_presenter;
    v133 = OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits;
    v86 = [*&v48[OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits] traitCollection];
    [v86 horizontalSizeClass];

    sub_100766C5C();
    v87 = v129;
    if ((v88 & 1) == 0)
    {
      sub_10075E08C();
      v85 = 0;
    }

    v89 = v85;
    v90 = v125;
    v84(v87, v89, 1, v125);
    v91 = v90;
    v92 = *(v8 + 48);
    v93 = v131;
    v94 = v126;
    sub_1000DE51C(v131, v126);
    sub_1000DE51C(v87, v94 + v92);
    v95 = *(v130 + 48);
    if (v95(v94, 1, v90) == 1)
    {
      sub_10000CFBC(v87, &unk_10094DE60, "ܱ\b");
      sub_10000CFBC(v93, &unk_10094DE60, "ܱ\b");
      v96 = v95(v94 + v92, 1, v90);
      v98 = v123;
      v97 = v124;
      if (v96 == 1)
      {
        sub_10000CFBC(v94, &unk_10094DE60, "ܱ\b");
LABEL_59:
        v107 = v133;
        [*&v98[v133] pageMarginInsets];
        v109 = v108;
        v110 = v121;
        [v97 frame];
        MaxY = CGRectGetMaxY(v140);
        [v4 minimumLineSpacing];
        v113 = v112;
        v114 = sub_100766C4C();
        if (v114)
        {
          v115 = v114;
          [*&v98[v107] pageContainerSize];
          [*&v98[v107] pageMarginInsets];
          sub_100770ACC();
          v117 = sub_1000D3900(v116, 1.79769313e308, v115, v50);
          v119 = v118;
        }

        else
        {
          v117 = 0.0;
          v119 = 0.0;
        }

        [v110 setFrame:{v109, MaxY + v113, v117, v119}];

        swift_unknownObjectRelease();
        return v110;
      }
    }

    else
    {
      v99 = v128;
      sub_1000DE51C(v94, v128);
      v100 = v95(v94 + v92, 1, v91);
      v98 = v123;
      if (v100 != 1)
      {
        v101 = v130;
        v102 = v94 + v92;
        v103 = v127;
        v104 = (*(v130 + 32))(v127, v102, v91);
        sub_1000DE58C(v104, v105);
        LODWORD(v120) = sub_10076FF1C();
        v106 = *(v101 + 8);
        v106(v103, v91);
        sub_10000CFBC(v87, &unk_10094DE60, "ܱ\b");
        sub_10000CFBC(v131, &unk_10094DE60, "ܱ\b");
        v106(v99, v91);
        v50 = v122;
        sub_10000CFBC(v94, &unk_10094DE60, "ܱ\b");
        v97 = v124;
        if (v120)
        {
          goto LABEL_59;
        }

LABEL_57:
        swift_unknownObjectRelease();

        goto LABEL_53;
      }

      sub_10000CFBC(v87, &unk_10094DE60, "ܱ\b");
      sub_10000CFBC(v131, &unk_10094DE60, "ܱ\b");
      (*(v130 + 8))(v99, v91);
      v97 = v124;
    }

    sub_10000CFBC(v94, &qword_10094BC30, &unk_100791D80);
    goto LABEL_57;
  }

  v50 = v122;
  if (v120 != 1)
  {
LABEL_28:
    v66 = sub_10071C988(a3, v42);
    if (v66)
    {
      v53 = v66;
      [v47 frame];
      v67 = CGRectGetWidth(v138) + 24.0;
      [v47 frame];
      v68 = v41 + v41 + CGRectGetHeight(v139);
      [v47 frame];
      v70 = v69 + -12.0;
      v72 = v71 - v41;
      v64 = v121;
      [v64 setFrame:{v70, v72, v67, v68}];
      *&v64[OBJC_IVAR____TtC20ProductPageExtension32SearchCollectionLayoutAttributes_cornerRadius] = *&v4[OBJC_IVAR____TtC20ProductPageExtension26SearchCollectionViewLayout_backgroundCornerRadius];
      if (v53 != 1)
      {
        if (v53 == 2)
        {
          v65 = 0;
          goto LABEL_40;
        }

LABEL_32:
        if (v53 != 3)
        {
          v134 = v53;
          result = sub_1007716AC();
          __break(1u);
          return result;
        }

        if (qword_1009401C8 != -1)
        {
          swift_once();
        }

        v65 = qword_10099F0F0;
        v73 = qword_10099F0F0;
        goto LABEL_40;
      }

LABEL_39:
      v65 = [objc_opt_self() secondarySystemBackgroundColor];
      goto LABEL_40;
    }

    goto LABEL_52;
  }

LABEL_23:
  v52 = sub_10071C988(a3, v42);
  if (!v52)
  {
LABEL_52:
    swift_unknownObjectRelease();

LABEL_53:
    return 0;
  }

  v53 = v52;
  [v47 frame];
  Width = CGRectGetWidth(v136);
  [v47 frame];
  v56 = Width + v55 + v55;
  [v47 frame];
  v57 = v41 + v41 + CGRectGetHeight(v137);
  [v47 frame];
  v59 = v58;
  v61 = v60;
  [v47 frame];
  v63 = v59 - v62;
  v64 = v121;
  [v64 setFrame:{v63, v61 - v41, v56, v57}];
  *&v64[OBJC_IVAR____TtC20ProductPageExtension32SearchCollectionLayoutAttributes_cornerRadius] = 0;
  if (v53 == 1)
  {
    goto LABEL_39;
  }

  v65 = 0;
  if (v53 != 2)
  {
    goto LABEL_32;
  }

LABEL_40:
  v76 = *&v64[OBJC_IVAR____TtC20ProductPageExtension32SearchCollectionLayoutAttributes_backgroundColor];
  *&v64[OBJC_IVAR____TtC20ProductPageExtension32SearchCollectionLayoutAttributes_backgroundColor] = v65;

  v77 = v64;
  *&v64[OBJC_IVAR____TtC20ProductPageExtension32SearchCollectionLayoutAttributes_backgroundGradientColors] = sub_100199DE8(v53);

  if (v53 >= 3)
  {
    if (qword_1009401D0 != -1)
    {
      swift_once();
    }

    v78 = qword_10099F0F8;
    v79 = qword_10099F0F8;
  }

  else
  {
    v78 = 0;
  }

  v80 = *&v77[OBJC_IVAR____TtC20ProductPageExtension32SearchCollectionLayoutAttributes_borderColor];
  *&v77[OBJC_IVAR____TtC20ProductPageExtension32SearchCollectionLayoutAttributes_borderColor] = v78;

  [v77 setZIndex:-1];
  swift_unknownObjectRelease();

  return v77;
}

double sub_10019C330()
{
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 delegate];

    if (v3)
    {
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        type metadata accessor for SearchResultsCollectionViewDelegate(0);
        v4 = swift_dynamicCastClass();
        if (v4)
        {
          v5 = v4;
          v6 = sub_1000FD934(_swiftEmptyArrayStorage);
          v7 = OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_maxSizeForRowCache;
          swift_beginAccess();
          *(v5 + v7) = v6;

          *(v5 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_isFirstItemFullWidth) = 2;
        }
      }

      swift_unknownObjectRelease();
    }
  }

  v14.receiver = v0;
  v14.super_class = type metadata accessor for SearchCollectionViewLayout();
  objc_msgSendSuper2(&v14, "prepareLayout");
  v8 = &v0[OBJC_IVAR____TtC20ProductPageExtension26SearchCollectionViewLayout_pendingPrepareObserver];
  v9 = *&v0[OBJC_IVAR____TtC20ProductPageExtension26SearchCollectionViewLayout_pendingPrepareObserver];
  if (v9)
  {
    v10 = v8[1];

    v9(v0);
    sub_1000167E0(v9, v10);
    v11 = *v8;
  }

  else
  {
    v11 = 0;
  }

  v12 = v8[1];
  *v8 = 0;
  v8[1] = 0;
  return sub_1000167E0(v11, v12);
}

id sub_10019C4F0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SearchCollectionViewLayout();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10019C55C()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_10099D6D8);
  sub_10000A61C(v4, qword_10099D6D8);
  *v3 = UIFontTextStyleBody;
  (*(v1 + 104))(v3, enum case for FontSource.textStyle(_:), v0);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_10000DB7C(v9);
  (*(v1 + 16))(v5, v3, v0);
  v6 = UIFontTextStyleBody;
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

unint64_t sub_10019C6DC()
{
  result = qword_10094BC38;
  if (!qword_10094BC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094BC38);
  }

  return result;
}

unint64_t sub_10019C730(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

uint64_t static AppEventDetailPageLayout.prefersCompactAccessibilityLayout(in:)(uint64_t a1)
{
  if (sub_10077071C())
  {
    return sub_1007706EC() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t AppEventDetailPageLayout.Metrics.artworkAspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10076D39C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AppEventDetailPageLayout.Metrics.artworkAspectRatio.setter(uint64_t a1)
{
  v3 = sub_10076D39C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AppEventDetailPageLayout.Metrics.contentHorizontalMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 20);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.formattedDateTopMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 24);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleFormattedDateTopMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 28);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.closeButtonTopMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 32);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.closeButtonLeadingMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 36);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.closeButtonSize.setter(double a1, double a2)
{
  result = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  v6 = (v2 + *(result + 40));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t AppEventDetailPageLayout.Metrics.muteButtonSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 44);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.kindTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 48);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleKindTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 52);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.titleTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 56);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.titleTrailingMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 60);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleOverlayBottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 64);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.shareButtonSize.setter(double a1, double a2)
{
  result = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  v6 = (v2 + *(result + 68));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleShareButtonTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 72);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.shareButtonLeadingContentInset.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 76);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.shareButtonBaseline.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 80);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.detailTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 84);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleDetailTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 88);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleContentContainerTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 92);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.requirementsTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 96);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleRequirementsTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 100);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.notifyMeButtonTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 104);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleNotifyMeButtonTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 108);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.separatorTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 112);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.separatorBottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 116);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleSeparatorTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 120);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleSeparatorBottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 124);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.lockupBottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 128);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleLockupBottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 132);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.init(artworkAspectRatio:contentHorizontalMargin:formattedDateTopMargin:accessibleFormattedDateTopMargin:closeButtonTopMargin:closeButtonLeadingMargin:closeButtonSize:muteButtonSpace:kindTopSpace:accessibleKindTopSpace:titleTopSpace:titleTrailingMargin:accessibleOverlayBottomSpace:shareButtonSize:accessibleShareButtonTopSpace:shareButtonLeadingContentInset:shareButtonBaseline:detailTopSpace:accessibleDetailTopSpace:accessibleContentContainerTopSpace:requirementsTopSpace:accessibleRequirementsTopSpace:notifyMeButtonTopSpace:accessibleNotifyMeButtonTopSpace:separatorTopSpace:separatorBottomSpace:accessibleSeparatorTopSpace:accessibleSeparatorBottomSpace:lockupBottomSpace:accessibleLockupBottomSpace:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, __int128 *a14, __int128 *a15, __int128 *a16, __int128 *a17, __int128 *a18, __int128 *a19, __int128 *a20, __int128 *a21, __int128 *a22, __int128 *a23, __int128 *a24, __int128 *a25, __int128 *a26, __int128 *a27, __int128 *a28, __int128 *a29, __int128 *a30, __int128 *a31, __int128 *a32, __int128 *a33)
{
  v44 = sub_10076D39C();
  (*(*(v44 - 8) + 32))(a9, a1, v44);
  v45 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  sub_100012498(a2, a9 + v45[5]);
  sub_100012498(a3, a9 + v45[6]);
  sub_100012498(a4, a9 + v45[7]);
  sub_100012498(a5, a9 + v45[8]);
  sub_100012498(a6, a9 + v45[9]);
  v46 = (a9 + v45[10]);
  *v46 = a10;
  v46[1] = a11;
  sub_100012498(a7, a9 + v45[11]);
  sub_100012498(a8, a9 + v45[12]);
  sub_100012498(a14, a9 + v45[13]);
  sub_100012498(a15, a9 + v45[14]);
  sub_100012498(a16, a9 + v45[15]);
  sub_100012498(a17, a9 + v45[16]);
  v47 = (a9 + v45[17]);
  *v47 = a12;
  v47[1] = a13;
  sub_100012498(a18, a9 + v45[18]);
  sub_100012498(a19, a9 + v45[19]);
  sub_100012498(a20, a9 + v45[20]);
  sub_100012498(a21, a9 + v45[21]);
  sub_100012498(a22, a9 + v45[22]);
  sub_100012498(a23, a9 + v45[23]);
  sub_100012498(a24, a9 + v45[24]);
  sub_100012498(a25, a9 + v45[25]);
  sub_100012498(a26, a9 + v45[26]);
  sub_100012498(a27, a9 + v45[27]);
  sub_100012498(a28, a9 + v45[28]);
  sub_100012498(a29, a9 + v45[29]);
  sub_100012498(a30, a9 + v45[30]);
  sub_100012498(a31, a9 + v45[31]);
  sub_100012498(a32, a9 + v45[32]);
  v48 = a9 + v45[33];

  return sub_100012498(a33, v48);
}

uint64_t sub_10019E1C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AppEventDetailPageLayout.init(metrics:shadowView:cardContentView:borderView:contentContainerView:mediaContainerView:artworkView:videoView:gradientBlurView:mediaReplicationView:overlayContentContainerView:contentBackgroundBlurView:formattedDateView:closeButtonView:kindLabel:titleLabel:shareButtonView:detailLabel:requirementsLabel:notifyMeButton:separatorView:lockupView:isCollapsing:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, __int128 *a12, uint64_t a13, __int128 *a14, uint64_t a15, __int128 *a16, __int128 *a17, uint64_t a18, __int128 *a19, uint64_t a20, uint64_t a21, __int128 *a22, __int128 *a23, char a24)
{
  sub_10019EB78(a1, a9);
  v29 = type metadata accessor for AppEventDetailPageLayout(0);
  sub_100012498(a2, a9 + v29[5]);
  sub_100012498(a3, a9 + v29[6]);
  sub_100012498(a4, a9 + v29[7]);
  sub_100012498(a5, a9 + v29[8]);
  sub_100012498(a6, a9 + v29[9]);
  sub_100012498(a7, a9 + v29[10]);
  v30 = a9 + v29[11];
  v31 = *(a8 + 16);
  *v30 = *a8;
  *(v30 + 16) = v31;
  *(v30 + 32) = *(a8 + 32);
  v32 = a9 + v29[12];
  v33 = *(a10 + 16);
  *v32 = *a10;
  *(v32 + 16) = v33;
  *(v32 + 32) = *(a10 + 32);
  v34 = a9 + v29[13];
  v35 = *(a11 + 16);
  *v34 = *a11;
  *(v34 + 16) = v35;
  *(v34 + 32) = *(a11 + 32);
  sub_100012498(a12, a9 + v29[14]);
  v36 = a9 + v29[15];
  v37 = *(a13 + 16);
  *v36 = *a13;
  *(v36 + 16) = v37;
  *(v36 + 32) = *(a13 + 32);
  sub_100012498(a14, a9 + v29[16]);
  v38 = a9 + v29[17];
  v39 = *(a15 + 16);
  *v38 = *a15;
  *(v38 + 16) = v39;
  *(v38 + 32) = *(a15 + 32);
  sub_100012498(a16, a9 + v29[18]);
  sub_100012498(a17, a9 + v29[19]);
  v40 = a9 + v29[20];
  v41 = *(a18 + 16);
  *v40 = *a18;
  *(v40 + 16) = v41;
  *(v40 + 32) = *(a18 + 32);
  sub_100012498(a19, a9 + v29[21]);
  v42 = a9 + v29[22];
  v43 = *(a20 + 16);
  *v42 = *a20;
  *(v42 + 16) = v43;
  *(v42 + 32) = *(a20 + 32);
  v44 = a9 + v29[23];
  v45 = *(a21 + 16);
  *v44 = *a21;
  *(v44 + 16) = v45;
  *(v44 + 32) = *(a21 + 32);
  sub_100012498(a22, a9 + v29[24]);
  result = sub_100012498(a23, a9 + v29[25]);
  *(a9 + v29[26]) = a24;
  return result;
}

uint64_t sub_10019EB78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static AppEventDetailPageLayout.prefersCompactAccessibilityTitleLayout(in:)(void *a1)
{
  if ((sub_1007706EC() & 1) == 0)
  {
    return 0;
  }

  v2 = [a1 preferredContentSizeCategory];
  v3 = sub_10077087C();

  return v3 & 1;
}

uint64_t AppEventDetailPageLayout.placeChildren(relativeTo:in:)(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = [a1 traitCollection];
  v11 = sub_1007706FC();

  if (v11)
  {
    sub_10019ED7C(a1, a2, a3, a4, a5);
    goto LABEL_8;
  }

  v12 = [a1 traitCollection];
  if (sub_10077071C())
  {
    v13 = sub_1007706EC();

    if (v13)
    {
      sub_1001A0774(a1, a2, a3, a4, a5);
      goto LABEL_8;
    }
  }

  else
  {
  }

  sub_1001A1E08(a1, v14, v15, a4, a5);
LABEL_8:

  return sub_10076D1BC();
}

void sub_10019ED7C(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v12 = sub_10077164C();
  v13 = *(v12 - 1);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v195 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 traitCollection];
  LODWORD(v207) = sub_10077071C();

  v18 = type metadata accessor for AppEventDetailPageLayout(0);
  sub_10000CF78((*&v6 + v18[5]), *(*&v6 + v18[5] + 24));
  sub_10076D23C();
  sub_10000CF78((*&v6 + v18[6]), *(*&v6 + v18[6] + 24));
  sub_10076D23C();
  sub_10000CF78((*&v6 + v18[7]), *(*&v6 + v18[7] + 24));
  sub_10076D23C();
  sub_10000CF78((*&v6 + v18[8]), *(*&v6 + v18[8] + 24));
  sub_10076D23C();
  v220.origin.x = a2;
  v220.origin.y = a3;
  v220.size.width = a4;
  v220.size.height = a5;
  CGRectGetHeight(v220);
  sub_10076D35C();
  v20 = floor(v19) + 4.0;
  v221.origin.x = a2;
  v221.origin.y = a3;
  v221.size.width = a4;
  v221.size.height = a5;
  v21 = CGRectGetHeight(v221) + 4.0;
  sub_10000CF78((*&v6 + v18[9]), *(*&v6 + v18[9] + 24));
  v211 = a1;
  sub_100770A4C();
  sub_10076D23C();
  sub_10000CF78((*&v6 + v18[10]), *(*&v6 + v18[10] + 24));
  sub_10076D23C();
  sub_100016E2C(*&v6 + v18[11], v218, &unk_10094DA00, &qword_100783FA0);
  if (v219)
  {
    sub_10000CF78(v218, v219);
    sub_10076D23C();
    sub_10000CD74(v218);
  }

  else
  {
    sub_10000CFBC(v218, &unk_10094DA00, &qword_100783FA0);
  }

  sub_100016E2C(*&v6 + v18[13], v218, &unk_10094DA00, &qword_100783FA0);
  v209 = a2;
  if (v219)
  {
    sub_10000CF78(v218, v219);
    v222.origin.x = a2;
    v222.origin.y = a3;
    v222.size.width = a4;
    v222.size.height = a5;
    CGRectGetWidth(v222);
    v223.origin.x = v209;
    v223.origin.y = a3;
    v223.size.width = a4;
    v223.size.height = a5;
    CGRectGetHeight(v223);
    a2 = v209;
    sub_10076D23C();
    sub_10000CD74(v218);
  }

  else
  {
    sub_10000CFBC(v218, &unk_10094DA00, &qword_100783FA0);
  }

  v224.origin.x = 0.0;
  v224.origin.y = 0.0;
  v224.size.width = v20;
  v224.size.height = v21;
  v22 = CGRectGetMaxX(v224) + -4.0;
  v225.origin.x = a2;
  v225.origin.y = a3;
  v225.size.width = a4;
  v225.size.height = a5;
  Width = CGRectGetWidth(v225);
  v226.origin.x = 0.0;
  v226.origin.y = 0.0;
  v226.size.width = v20;
  v226.size.height = v21;
  v24 = Width - CGRectGetWidth(v226) + 4.0;
  v227.origin.x = a2;
  v227.origin.y = a3;
  v227.size.width = a4;
  v227.size.height = a5;
  v25 = CGRectGetHeight(v227) + 4.0;
  sub_10000CF78((*&v6 + v18[14]), *(*&v6 + v18[14] + 24));
  sub_100770A4C();
  sub_10076D23C();
  v26 = v18[15];
  v206 = v6;
  sub_100016E2C(*&v6 + v26, v218, &unk_10094DA00, &qword_100783FA0);
  v210 = v12;
  v204 = a5;
  v205 = a3;
  if (v219)
  {
    sub_10000CF78(v218, v219);
    sub_100770A4C();
    sub_10076D23C();
    sub_10000CD74(v218);
  }

  else
  {
    sub_10000CFBC(v218, &unk_10094DA00, &qword_100783FA0);
  }

  v27 = a4;
  *&v28 = COERCE_DOUBLE(type metadata accessor for AppEventDetailPageLayout.Metrics(0));
  v29 = v206;
  v30 = (*&v206 + v28[5]);
  v31 = v30[3];
  sub_10000CF78(v30, v31);
  sub_1000FF02C(v31);
  sub_10076D40C();
  v33 = v32;
  v34 = *(v13 + 8);
  *&v213 = v13 + 8;
  v35 = v210;
  v34(v16, v210);
  v228.origin.y = 0.0;
  v228.origin.x = v22;
  v228.size.width = v24;
  v228.size.height = v25;
  v36 = CGRectGetWidth(v228) - (v33 + v33);
  v229.origin.y = 0.0;
  v229.origin.x = v22;
  v229.size.width = v24;
  v229.size.height = v25;
  Height = CGRectGetHeight(v229);
  v38 = v28[9];
  v39 = (*&v29 + v28[10]);
  v40 = *v39;
  v196 = *(v39 + 1);
  v197 = v40;
  v41 = *(*&v29 + v38 + 24);
  sub_10000CF78((*&v29 + v38), v41);
  sub_1000FF02C(v41);
  sub_10076D40C();
  v34(v16, v35);
  v230.origin.y = 0.0;
  v230.origin.x = v33;
  v230.size.width = v36;
  v230.size.height = Height;
  CGRectGetHeight(v230);
  v42 = (*&v29 + v18[16]);
  v215 = v18;
  sub_10000CF78(v42, v42[3]);
  sub_10076D2AC();
  v44 = v43;
  v46 = v45;
  v47 = (*&v29 + v28[6]);
  v48 = v47[3];
  sub_10000CF78(v47, v48);
  sub_1000FF02C(v48);
  sub_10076D40C();
  v50 = v49;
  v34(v16, v35);
  v231.origin.y = 0.0;
  v231.origin.x = v33;
  v231.size.width = v36;
  v231.size.height = Height;
  MinX = CGRectGetMinX(v231);
  v232.origin.y = 0.0;
  v232.origin.x = v33;
  v232.size.width = v36;
  v232.size.height = Height;
  v52 = v50 + CGRectGetMinY(v232);
  sub_10000CF78(v42, v42[3]);
  v198 = MinX;
  v202 = v44;
  v201 = v46;
  sub_100770A4C();
  v53 = v35;
  sub_10076D23C();
  v208 = v28;
  v54 = (*&v29 + v28[8]);
  v55 = v54[3];
  sub_10000CF78(v54, v55);
  sub_1000FF02C(v55);
  sub_10076D40C();
  v203 = v16;
  v214 = *&v34;
  v34(v16, v35);
  v233.origin.x = v209;
  v233.origin.y = v205;
  v233.size.width = v27;
  v233.size.height = v204;
  CGRectGetMaxX(v233);
  v234.origin.y = 0.0;
  v234.origin.x = v33;
  v199 = v36;
  v234.size.width = v36;
  v212 = Height;
  v234.size.height = Height;
  CGRectGetMinY(v234);
  sub_100016E2C(*&v29 + v215[17], v218, &unk_10094DA00, &qword_100783FA0);
  v56 = v33;
  if (v219)
  {
    sub_10000CF78(v218, v219);
    sub_100770A4C();
    sub_10076D23C();
    sub_10000CD74(v218);
  }

  else
  {
    sub_10000CFBC(v218, &unk_10094DA00, &qword_100783FA0);
  }

  v235.origin.x = v198;
  v235.origin.y = v52;
  v235.size.width = v202;
  v235.size.height = v201;
  MaxY = CGRectGetMaxY(v235);
  v58 = v206;
  v59 = (*&v206 + v208[17]);
  v60 = v59[1];
  v201 = *v59;
  v61 = (*&v206 + v208[20]);
  v62 = v61[3];
  sub_10000CF78(v61, v62);
  v63 = v203;
  sub_1000FF02C(v62);
  sub_10076D40C();
  v198 = v64;
  v65 = v214;
  (*&v214)(v63, v53);
  v66 = v215;
  *&v202 = v215[20];
  sub_100016E2C(*&v58 + *&v202, &v216, &unk_10094DA00, &qword_100783FA0);
  v67 = v199;
  v200 = v27;
  v197 = v60;
  if (v217)
  {
    sub_100012498(&v216, v218);
    v68 = v56;
    if (LOBYTE(v207))
    {
      v69 = v58;
      v70 = v208;
      v71 = (*&v69 + v208[18]);
      v72 = v71[3];
      sub_10000CF78(v71, v72);
      sub_1000FF02C(v72);
      sub_10076D40C();
      v74 = v73;
      (*&v65)(v63, v53);
      v75 = (*&v206 + v70[19]);
      v76 = v75[3];
      sub_10000CF78(v75, v76);
      sub_1000FF02C(v76);
      sub_10076D40C();
      v78 = v77;
      (*&v65)(v63, v53);
      v236.origin.y = 0.0;
      v236.origin.x = v56;
      v236.size.width = v67;
      v79 = v212;
      v236.size.height = v212;
      v80 = CGRectGetMinX(v236) - v78;
      v81 = MaxY + v74;
      sub_10000CF78(v218, v219);
      v58 = v206;
      v82 = v201;
      sub_100770A4C();
      v66 = v215;
      sub_10076D23C();
      v237.origin.x = v80;
      v237.origin.y = v81;
      v237.size.width = v82;
      v237.size.height = v60;
      MaxY = CGRectGetMaxY(v237) - v198;
      sub_10000CD74(v218);
      goto LABEL_19;
    }

    sub_10000CD74(v218);
  }

  else
  {
    sub_10000CFBC(&v216, &unk_10094DA00, &qword_100783FA0);
    v68 = v56;
  }

  v79 = v212;
LABEL_19:
  v83 = (*&v58 + v66[18]);
  sub_10000CF78(v83, v83[3]);
  sub_10076D2AC();
  v85 = v84;
  v87 = v86;
  v88 = 12;
  if (LOBYTE(v207))
  {
    v88 = 13;
  }

  v89 = v208;
  v90 = (*&v58 + v208[v88]);
  v91 = v90[3];
  sub_10000CF78(v90, v91);
  sub_1000FF02C(v91);
  sub_10076D40C();
  v93 = v92;
  v94 = v210;
  (*&v214)(v63, v210);
  v238.origin.y = 0.0;
  v238.origin.x = v68;
  v238.size.width = v67;
  v238.size.height = v79;
  v95 = CGRectGetMinX(v238);
  sub_10000CF78(v83, v83[3]);
  sub_100770A4C();
  sub_10076D23C();
  v239.origin.x = v95;
  v239.origin.y = MaxY + v93;
  v239.size.width = v85;
  v239.size.height = v87;
  v96 = CGRectGetMaxY(v239);
  sub_100016E2C(*&v58 + *&v202, v218, &unk_10094DA00, &qword_100783FA0);
  v97 = v219 == 0;
  sub_10000CFBC(v218, &unk_10094DA00, &qword_100783FA0);
  if (((v97 | LODWORD(v207)) & 1) == 0)
  {
    v98 = (*&v58 + v89[15]);
    v99 = v98[3];
    sub_10000CF78(v98, v99);
    sub_1000FF02C(v99);
    sub_10076D40C();
    (*&v214)(v63, v94);
  }

  v240.origin.y = 0.0;
  v240.origin.x = v68;
  v240.size.width = v67;
  v100 = v67;
  v101 = v68;
  v102 = v212;
  v240.size.height = v212;
  CGRectGetHeight(v240);
  v103 = (*&v58 + v215[19]);
  sub_10000CF78(v103, v103[3]);
  sub_10076D2AC();
  v105 = v104;
  v107 = v106;
  v196 = v108;
  v109 = (*&v58 + v89[14]);
  v110 = v109[3];
  sub_10000CF78(v109, v110);
  sub_1000FF02C(v110);
  sub_10076D40C();
  v112 = v111;
  (*&v214)(v63, v94);
  v241.origin.y = 0.0;
  v241.origin.x = v101;
  v241.size.width = v100;
  v241.size.height = v102;
  v113 = CGRectGetMinX(v241);
  v114 = v96 + v112;
  sub_10000CF78(v103, v103[3]);
  v206 = v101;
  sub_100770A4C();
  sub_10076D23C();
  v242.origin.x = v113;
  v242.origin.y = v114;
  v242.size.width = v105;
  v242.size.height = v107;
  v115 = CGRectGetMaxY(v242);
  sub_100016E2C(*&v58 + *&v202, &v216, &unk_10094DA00, &qword_100783FA0);
  if (v217)
  {
    sub_100012498(&v216, v218);
    if ((LOBYTE(v207) & 1) == 0)
    {
      v243.origin.x = v113;
      v243.origin.y = v114;
      v243.size.width = v105;
      v243.size.height = v107;
      CGRectGetMinY(v243);
      v244.origin.y = 0.0;
      v244.origin.x = v206;
      v244.size.width = v100;
      v244.size.height = v212;
      CGRectGetMaxX(v244);
      sub_10000CF78(v218, v219);
      sub_100770A4C();
      sub_10076D23C();
    }

    sub_10000CD74(v218);
  }

  else
  {
    sub_10000CFBC(&v216, &unk_10094DA00, &qword_100783FA0);
  }

  v116 = v214;
  v117 = v203;
  v118 = v208;
  v119 = (*&v58 + v215[21]);
  sub_10000CF78(v119, v119[3]);
  v120 = v212;
  sub_10076D2AC();
  v122 = v121;
  v124 = v123;
  v125 = (*&v58 + v118[21]);
  v126 = v125[3];
  sub_10000CF78(v125, v126);
  sub_1000FF02C(v126);
  sub_10076D40C();
  v128 = v127;
  (*&v116)(v117, v210);
  v245.origin.y = 0.0;
  v245.origin.x = v206;
  v245.size.width = v100;
  v245.size.height = v120;
  v129 = CGRectGetMinX(v245);
  v130 = v215;
  sub_10000CF78(v119, v119[3]);
  v131 = v100;
  sub_100770A4C();
  sub_10076D23C();
  v246.origin.x = v129;
  v246.origin.y = v115 + v128;
  v246.size.width = v122;
  v246.size.height = v124;
  v132 = CGRectGetMaxY(v246);
  sub_100016E2C(*&v58 + v130[22], &v216, &qword_10094BB30, qword_100796E40);
  if (v217)
  {
    sub_100012498(&v216, v218);
    sub_10000CF78(v218, v219);
    if (sub_10076D24C())
    {
      sub_10000CD74(v218);
      v133 = v210;
    }

    else
    {
      sub_10000CF78(v218, v219);
      v134 = sub_10076D20C();
      v133 = v210;
      if (v134)
      {
        sub_10000CF78(v218, v219);
        v135 = v212;
        sub_10076D2AC();
        v137 = v136;
        v139 = v138;
        v140 = (*&v58 + v118[24]);
        v141 = v140[3];
        sub_10000CF78(v140, v141);
        sub_1000FF02C(v141);
        sub_10076D40C();
        v143 = v142;
        (*&v214)(v117, v133);
        v247.origin.y = 0.0;
        v247.origin.x = v206;
        v247.size.width = v100;
        v247.size.height = v135;
        v144 = CGRectGetMinX(v247);
        sub_10000CF78(v218, v219);
        v131 = v100;
        sub_100770A4C();
        sub_10076D23C();
        v248.origin.x = v144;
        v248.origin.y = v132 + v143;
        v248.size.width = v137;
        v248.size.height = v139;
        v132 = CGRectGetMaxY(v248);
      }

      sub_10000CD74(v218);
    }

    v130 = v215;
  }

  else
  {
    sub_10000CFBC(&v216, &qword_10094BB30, qword_100796E40);
    v133 = v210;
  }

  sub_100016E2C(*&v58 + v130[23], &v216, &unk_10094DA00, &qword_100783FA0);
  if (v217)
  {
    sub_100012498(&v216, v218);
    sub_10000CF78(v218, v219);
    v145 = sub_10076D24C();
    v146 = v214;
    if (v145)
    {
      v207 = v132;
    }

    else
    {
      sub_10000CF78(v218, v219);
      v147 = v212;
      sub_10076D2AC();
      v149 = v148;
      v151 = v150;
      v152 = (*&v58 + v118[26]);
      v153 = v152[3];
      sub_10000CF78(v152, v153);
      sub_1000FF02C(v153);
      sub_10076D40C();
      v155 = v154;
      (*&v146)(v117, v133);
      v249.origin.y = 0.0;
      v249.origin.x = v206;
      v249.size.width = v100;
      v249.size.height = v147;
      v156 = CGRectGetMinX(v249);
      sub_10000CF78(v218, v219);
      v131 = v100;
      sub_100770A4C();
      sub_10076D23C();
      v250.origin.x = v156;
      v250.origin.y = v132 + v155;
      v250.size.width = v149;
      v250.size.height = v151;
      v207 = CGRectGetMaxY(v250);
    }

    sub_10000CD74(v218);
  }

  else
  {
    v207 = v132;
    sub_10000CFBC(&v216, &unk_10094DA00, &qword_100783FA0);
    v146 = v214;
  }

  v157 = (*&v58 + v118[32]);
  v158 = v157[3];
  sub_10000CF78(v157, v158);
  sub_1000FF02C(v158);
  sub_10076D40C();
  v160 = v159;
  (*&v146)(v117, v133);
  v161 = (*&v58 + v215[25]);
  v162 = v133;
  v163 = v161[3];
  v210 = v161;
  sub_10000CF78(v161, v163);
  v164 = v212;
  sub_10076D2AC();
  v166 = v165;
  v167 = (*&v58 + v118[29]);
  v168 = v167[3];
  sub_10000CF78(v167, v168);
  sub_1000FF02C(v168);
  sub_10076D40C();
  v170 = v169;
  (*&v146)(v117, v133);
  v171 = (*&v58 + v118[28]);
  v172 = v171[3];
  sub_10000CF78(v171, v172);
  sub_1000FF02C(v172);
  v173 = v211;
  sub_10076D40C();
  v175 = v174;
  (*&v146)(v117, v162);
  v176 = [v173 traitCollection];
  sub_10076E20C();
  v178 = v177;

  *&v208 = v178;
  v213 = v170;
  v214 = v166;
  v179 = v160;
  v180 = v160 + v166 + v170 + v175 + v178;
  v181 = v207;
  v182 = v207 + v180;
  v251.origin.x = v209;
  v251.origin.y = v205;
  v251.size.width = v200;
  v251.size.height = v204;
  v183 = CGRectGetHeight(v251);
  v252.origin.y = 0.0;
  v184 = v131;
  v185 = v206;
  v252.origin.x = v206;
  v252.size.width = v184;
  v252.size.height = v164;
  v209 = CGRectGetMinX(v252);
  if (v183 >= v182)
  {
    v257.origin.y = 0.0;
    v257.origin.x = v185;
    v257.size.width = v184;
    v257.size.height = v164;
    v190 = CGRectGetHeight(v257);
    v191 = v214;
    v192 = v190 - v214 - v179;
    v258.origin.y = 0.0;
    v258.origin.x = v185;
    v258.size.width = v184;
    v258.size.height = v164;
    v193 = CGRectGetWidth(v258);
    sub_10000CF78(v210, v210[3]);
    v194 = v209;
    sub_100770A4C();
    sub_10076D23C();
    v259.origin.y = 0.0;
    v259.origin.x = v185;
    v259.size.width = v184;
    v259.size.height = v164;
    CGRectGetMinX(v259);
    v260.origin.x = v194;
    v260.origin.y = v192;
    v260.size.width = v193;
    v260.size.height = v191;
    CGRectGetMinY(v260);
    v261.origin.y = 0.0;
    v261.origin.x = v185;
    v261.size.width = v184;
    v261.size.height = v164;
    CGRectGetWidth(v261);
    sub_10000CF78((*&v58 + v215[24]), *(*&v58 + v215[24] + 24));
  }

  else
  {
    v186 = v181 + v175;
    v253.origin.y = 0.0;
    v253.origin.x = v185;
    v253.size.width = v184;
    v253.size.height = v164;
    v187 = CGRectGetWidth(v253);
    sub_10000CF78((*&v58 + v215[24]), *(*&v58 + v215[24] + 24));
    v188 = v209;
    v189 = *&v208;
    sub_100770A4C();
    sub_10076D23C();
    v254.origin.y = 0.0;
    v254.origin.x = v185;
    v254.size.width = v184;
    v254.size.height = v164;
    CGRectGetMinX(v254);
    v255.origin.x = v188;
    v255.origin.y = v186;
    v255.size.width = v187;
    v255.size.height = v189;
    CGRectGetMaxY(v255);
    v256.origin.y = 0.0;
    v256.origin.x = v185;
    v256.size.width = v184;
    v256.size.height = v164;
    CGRectGetWidth(v256);
    sub_10000CF78(v210, v210[3]);
  }

  sub_100770A4C();
  sub_10076D23C();
}

void sub_1001A0774(void *a1, double a2, double a3, CGFloat a4, double a5)
{
  v6 = v5;
  v208 = sub_10077164C();
  v12 = *(v208 - 8);
  __chkstk_darwin(v208);
  v14 = &v202 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076D36C();
  v16 = v15;
  v17 = type metadata accessor for AppEventDetailPageLayout(0);
  sub_10000CF78((v5 + v17[9]), *(v5 + v17[9] + 24));
  sub_10076D23C();
  v221.origin.x = 0.0;
  v221.origin.y = 0.0;
  v221.size.width = a4;
  v221.size.height = v16;
  CGRectGetWidth(v221);
  v222.origin.x = 0.0;
  v222.origin.y = 0.0;
  v222.size.width = a4;
  v207 = v16;
  v222.size.height = v16;
  CGRectGetHeight(v222);
  sub_10000CF78((v6 + v17[10]), *(v6 + v17[10] + 24));
  sub_10076D23C();
  sub_100016E2C(v5 + v17[11], v219, &unk_10094DA00, &qword_100783FA0);
  if (v220)
  {
    sub_10000CF78(v219, v220);
    sub_10076D23C();
    sub_10000CD74(v219);
  }

  else
  {
    sub_10000CFBC(v219, &unk_10094DA00, &qword_100783FA0);
  }

  sub_100016E2C(v5 + v17[12], v219, &unk_10094DA00, &qword_100783FA0);
  if (v220)
  {
    sub_10000CF78(v219, v220);
    sub_10076D23C();
    sub_10000CD74(v219);
  }

  else
  {
    sub_10000CFBC(v219, &unk_10094DA00, &qword_100783FA0);
  }

  sub_10000CF78((v5 + v17[14]), *(v5 + v17[14] + 24));
  sub_10076D23C();
  v18 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  v213 = v17;
  v19 = v18;
  v20 = (v5 + *(v18 + 20));
  v21 = v20[3];
  sub_10000CF78(v20, v21);
  sub_1000FF02C(v21);
  sub_10076D40C();
  v23 = v22;
  v24 = *(v12 + 8);
  v25 = v208;
  v24(v14, v208);
  v26 = sub_100102A30(a2, a3, a4, a5, 0.0, v23);
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = (v6 + v19[8]);
  v34 = v33[3];
  sub_10000CF78(v33, v34);
  sub_1000FF02C(v34);
  sub_10076D40C();
  v203 = v35;
  v204 = v14;
  v205 = v24;
  v24(v14, v25);
  v212 = v19;
  v36 = v19[10];
  v37 = v213;
  v206 = *(v6 + v36 + 8);
  v223.origin.x = v26;
  v223.origin.y = v28;
  v223.size.width = v30;
  v214 = v32;
  v223.size.height = v32;
  CGRectGetMinY(v223);
  v38 = v37[17];
  v216 = v6;
  sub_100016E2C(v6 + v38, v219, &unk_10094DA00, &qword_100783FA0);
  v215 = v12 + 8;
  v211 = v26;
  if (v220)
  {
    sub_10000CF78(v219, v220);
    v39 = v214;
    sub_100770A4C();
    sub_10076D23C();
    sub_10000CD74(v219);
    v40 = a4;
    v41 = v39;
  }

  else
  {
    sub_10000CFBC(v219, &unk_10094DA00, &qword_100783FA0);
    v40 = a4;
    v41 = v214;
  }

  v209 = v28;
  v42 = v208;
  v43 = 0;
  v44 = 0;
  v206 = v40;
  v45 = v207;
  Height = CGRectGetHeight(*(&v40 - 2));
  v47 = (v216 + v37[18]);
  sub_10000CF78(v47, v47[3]);
  sub_10076D2AC();
  v203 = v48;
  v50 = v49;
  v51 = a1;
  v52 = [a1 traitCollection];
  v53 = sub_1007706EC();
  v54 = v30;
  v210 = v30;
  v55 = v204;
  if (v53)
  {
    v56 = [v52 preferredContentSizeCategory];
    v57 = sub_10077087C();

    v58 = v211;
    if (v57)
    {
      v59 = 16;
      v60 = v42;
      v61 = v205;
      v62 = v51;
      goto LABEL_15;
    }
  }

  else
  {

    v58 = v211;
  }

  v63 = v216;
  v64 = (v216 + v213[19]);
  sub_10000CF78(v64, v64[3]);
  v62 = v51;
  sub_10076D2AC();
  v66 = v65;
  v68 = v67;
  v69 = (v63 + v212[16]);
  v70 = v69[3];
  sub_10000CF78(v69, v70);
  sub_1000FF02C(v70);
  sub_10076D40C();
  v72 = v71;
  v73 = v42;
  v60 = v42;
  v61 = v205;
  v205(v55, v73);
  v74 = Height - v72 - v68;
  v224.origin.x = v58;
  v224.origin.y = v209;
  v224.size.width = v210;
  v224.size.height = v214;
  MinX = CGRectGetMinX(v224);
  sub_10000CF78(v64, v64[3]);
  sub_100770A4C();
  sub_10076D23C();
  v225.origin.x = MinX;
  v225.origin.y = v74;
  v225.size.width = v66;
  v54 = v210;
  v41 = v214;
  v225.size.height = v68;
  Height = CGRectGetMinY(v225);
  v59 = 14;
LABEL_15:
  v76 = v212;
  v77 = (v216 + v212[v59]);
  v78 = v77[3];
  sub_10000CF78(v77, v78);
  sub_1000FF02C(v78);
  sub_10076D40C();
  v80 = v79;
  v81 = v61;
  v61(v55, v60);
  v82 = Height - v80 - v50;
  v226.origin.x = v58;
  v83 = v209;
  v226.origin.y = v209;
  v226.size.width = v54;
  v226.size.height = v41;
  v84 = CGRectGetMinX(v226);
  sub_10000CF78(v47, v47[3]);
  v85 = v203;
  sub_100770A4C();
  sub_10076D23C();
  v86 = v216;
  v87 = (v216 + v76[13]);
  v88 = v87[3];
  sub_10000CF78(v87, v88);
  sub_1000FF02C(v88);
  sub_10076D40C();
  v90 = v89;
  v61(v55, v60);
  v227.origin.x = v84;
  v227.origin.y = v82;
  v227.size.width = v85;
  v227.size.height = v50;
  v91 = CGRectGetMinY(v227) - v90;
  v92 = v213;
  v93 = (v86 + v213[16]);
  sub_10000CF78(v93, v93[3]);
  sub_10076D2AC();
  v95 = v94;
  v97 = v96;
  v98 = v91 - v96;
  v228.origin.x = v211;
  v228.origin.y = v83;
  v228.size.width = v54;
  v228.size.height = v41;
  v99 = CGRectGetMinX(v228);
  sub_10000CF78(v93, v93[3]);
  sub_100770A4C();
  sub_10076D23C();
  v100 = (v86 + v212[7]);
  v101 = v100[3];
  sub_10000CF78(v100, v101);
  sub_1000FF02C(v101);
  sub_10076D40C();
  v61(v55, v60);
  v229.origin.x = v99;
  v102 = v211;
  v229.origin.y = v98;
  v229.size.width = v95;
  v229.size.height = v97;
  CGRectGetMinY(v229);
  sub_100016E2C(v86 + v92[20], &v217, &unk_10094DA00, &qword_100783FA0);
  v103 = v60;
  if (v218)
  {
    sub_100012498(&v217, v219);
    v104 = v212;
    v105 = (v216 + v212[20]);
    v106 = v105[3];
    sub_10000CF78(v105, v106);
    sub_1000FF02C(v106);
    sub_10076D40C();
    v81(v55, v60);
    v230.origin.x = v102;
    v230.origin.y = v209;
    v230.size.width = v210;
    v230.size.height = v214;
    CGRectGetMinX(v230);
    sub_10000CF78(v219, v220);
    sub_100770A4C();
    sub_10076D23C();
    sub_10000CD74(v219);
    v107 = v206;
  }

  else
  {
    sub_10000CFBC(&v217, &unk_10094DA00, &qword_100783FA0);
    v107 = v206;
    v104 = v212;
  }

  v108 = 0;
  v109 = 0;
  v110 = v207;
  MaxY = CGRectGetMaxY(*(&v107 - 2));
  v112 = [v62 traitCollection];
  if (sub_1007706EC())
  {
    v113 = [v112 preferredContentSizeCategory];
    v114 = sub_10077087C();

    if (v114)
    {
      v115 = v216;
      v116 = (v216 + v213[19]);
      sub_10000CF78(v116, v116[3]);
      v117 = v210;
      v118 = v214;
      sub_10076D2AC();
      v120 = v119;
      v207 = v121;
      v122 = (v115 + v104[23]);
      v123 = v122[3];
      sub_10000CF78(v122, v123);
      sub_1000FF02C(v123);
      sub_10076D40C();
      v125 = v124;
      v81(v55, v103);
      v231.origin.x = v211;
      v231.origin.y = v209;
      v231.size.width = v117;
      v231.size.height = v118;
      v126 = CGRectGetMinX(v231);
      v127 = MaxY + v125;
      sub_10000CF78(v116, v116[3]);
      v128 = v207;
      sub_100770A4C();
      sub_10076D23C();
      v129 = (v115 + v104[22]);
      v130 = v129[3];
      sub_10000CF78(v129, v130);
      sub_1000FF02C(v130);
      sub_10076D40C();
      v132 = v131;
      v133 = v208;
      (v81)(v55);
      v232.origin.x = v126;
      v232.origin.y = v127;
      v232.size.width = v120;
      v232.size.height = v128;
      v207 = CGRectGetMaxY(v232);
      goto LABEL_23;
    }
  }

  else
  {
  }

  v207 = MaxY;
  v134 = (v216 + v104[23]);
  v135 = v134[3];
  sub_10000CF78(v134, v135);
  sub_1000FF02C(v135);
  sub_10076D40C();
  v132 = v136;
  v133 = v60;
  v81(v55, v60);
LABEL_23:
  v137 = v213;
  v138 = v216;
  v139 = (v216 + v213[21]);
  sub_10000CF78(v139, v139[3]);
  v140 = v210;
  v141 = v214;
  sub_10076D2AC();
  v143 = v142;
  v145 = v144;
  v233.origin.x = v211;
  v233.origin.y = v209;
  v233.size.width = v140;
  v233.size.height = v141;
  v146 = CGRectGetMinX(v233);
  v147 = v132 + v207;
  sub_10000CF78(v139, v139[3]);
  sub_100770A4C();
  sub_10076D23C();
  v234.origin.x = v146;
  v234.origin.y = v147;
  v234.size.width = v143;
  v234.size.height = v145;
  v148 = CGRectGetMaxY(v234);
  sub_100016E2C(v138 + v137[22], &v217, &qword_10094BB30, qword_100796E40);
  if (!v218)
  {
    sub_10000CFBC(&v217, &qword_10094BB30, qword_100796E40);
    goto LABEL_27;
  }

  sub_100012498(&v217, v219);
  sub_10000CF78(v219, v220);
  if (sub_10076D24C())
  {
    sub_10000CD74(v219);
LABEL_27:
    v149 = v212;
    goto LABEL_31;
  }

  sub_10000CF78(v219, v220);
  v150 = sub_10076D20C();
  v149 = v212;
  if (v150)
  {
    sub_10000CF78(v219, v220);
    v151 = v210;
    v152 = v214;
    sub_10076D2AC();
    v207 = v153;
    v155 = v154;
    v156 = (v216 + v149[25]);
    v157 = v156[3];
    sub_10000CF78(v156, v157);
    sub_1000FF02C(v157);
    sub_10076D40C();
    v159 = v158;
    v81(v55, v133);
    v235.origin.x = v211;
    v235.origin.y = v209;
    v235.size.width = v151;
    v235.size.height = v152;
    v160 = CGRectGetMinX(v235);
    sub_10000CF78(v219, v220);
    v161 = v207;
    sub_100770A4C();
    sub_10076D23C();
    v236.origin.x = v160;
    v236.origin.y = v148 + v159;
    v236.size.width = v161;
    v236.size.height = v155;
    v148 = CGRectGetMaxY(v236);
  }

  sub_10000CD74(v219);
LABEL_31:
  sub_100016E2C(v216 + v213[23], &v217, &unk_10094DA00, &qword_100783FA0);
  if (v218)
  {
    sub_100012498(&v217, v219);
    sub_10000CF78(v219, v220);
    if ((sub_10076D24C() & 1) == 0)
    {
      sub_10000CF78(v219, v220);
      v207 = v148;
      v162 = v210;
      v163 = v214;
      sub_10076D2AC();
      v165 = v164;
      v167 = v166;
      v168 = (v216 + v149[27]);
      v169 = v168[3];
      sub_10000CF78(v168, v169);
      sub_1000FF02C(v169);
      sub_10076D40C();
      v171 = v170;
      v81(v55, v133);
      v237.origin.x = v211;
      v237.origin.y = v209;
      v237.size.width = v162;
      v237.size.height = v163;
      v172 = CGRectGetMinX(v237);
      v173 = v207 + v171;
      sub_10000CF78(v219, v220);
      sub_100770A4C();
      sub_10076D23C();
      v238.origin.x = v172;
      v238.origin.y = v173;
      v238.size.width = v165;
      v238.size.height = v167;
      v148 = CGRectGetMaxY(v238);
    }

    sub_10000CD74(v219);
  }

  else
  {
    sub_10000CFBC(&v217, &unk_10094DA00, &qword_100783FA0);
  }

  v174 = v216;
  v175 = (v216 + v149[30]);
  v176 = v175[3];
  sub_10000CF78(v175, v176);
  sub_1000FF02C(v176);
  sub_10076D40C();
  v178 = v177;
  v81(v55, v133);
  v179 = [v62 traitCollection];
  sub_10076E20C();
  v181 = v180;

  v182 = v211;
  v239.origin.x = v211;
  v183 = v209;
  v239.origin.y = v209;
  v184 = v210;
  v239.size.width = v210;
  v185 = v214;
  v239.size.height = v214;
  v186 = CGRectGetMinX(v239);
  v207 = v148 + v178;
  v240.origin.x = v182;
  v240.origin.y = v183;
  v240.size.width = v184;
  v240.size.height = v185;
  Width = CGRectGetWidth(v240);
  v188 = v213;
  sub_10000CF78((v174 + v213[24]), *(v174 + v213[24] + 24));
  sub_100770A4C();
  sub_10076D23C();
  v189 = (v174 + v149[31]);
  v190 = v189[3];
  sub_10000CF78(v189, v190);
  sub_1000FF02C(v190);
  sub_10076D40C();
  v192 = v191;
  v81(v55, v133);
  v241.origin.x = v186;
  v241.origin.y = v207;
  v241.size.width = Width;
  v241.size.height = v181;
  v193 = v192 + CGRectGetMaxY(v241);
  v194 = v188;
  v195 = (v174 + v188[25]);
  sub_10000CF78(v195, v195[3]);
  sub_10076D2AC();
  v197 = v196;
  v242.origin.x = v182;
  v242.origin.y = v183;
  v242.size.width = v184;
  v242.size.height = v185;
  v198 = CGRectGetMinX(v242);
  v243.origin.x = v182;
  v243.origin.y = v183;
  v243.size.width = v184;
  v243.size.height = v185;
  v199 = CGRectGetWidth(v243);
  sub_10000CF78(v195, v195[3]);
  sub_100770A4C();
  sub_10076D23C();
  v200 = (v174 + v212[33]);
  v201 = v200[3];
  sub_10000CF78(v200, v201);
  sub_1000FF02C(v201);
  sub_10076D40C();
  v205(v55, v208);
  v244.origin.x = v198;
  v244.origin.y = v193;
  v244.size.width = v199;
  v244.size.height = v197;
  CGRectGetMaxY(v244);
  sub_10000CF78((v174 + v194[8]), *(v174 + v194[8] + 24));
  sub_10076D23C();
  sub_10000CF78((v174 + v194[5]), *(v174 + v194[5] + 24));
  sub_10076D23C();
  sub_10000CF78((v174 + v194[6]), *(v174 + v194[6] + 24));
  sub_10076D23C();
  sub_10000CF78((v174 + v194[7]), *(v174 + v194[7] + 24));
  sub_10076D23C();
}

uint64_t sub_1001A1E08(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v150 = sub_10077164C();
  v10 = *(v150 - 8);
  __chkstk_darwin(v150);
  v12 = &v140 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076D36C();
  if (v13 >= a5)
  {
    v13 = a5;
  }

  v14 = floor(v13);
  v15 = type metadata accessor for AppEventDetailPageLayout(0);
  sub_10000CF78((v5 + v15[5]), *(v5 + v15[5] + 24));
  sub_10076D23C();
  sub_10000CF78((v5 + v15[6]), *(v5 + v15[6] + 24));
  sub_10076D23C();
  sub_10000CF78((v5 + v15[7]), *(v5 + v15[7] + 24));
  sub_10076D23C();
  sub_10000CF78((v5 + v15[8]), *(v5 + v15[8] + 24));
  sub_10076D23C();
  sub_10000CF78((v5 + v15[9]), *(v5 + v15[9] + 24));
  sub_10076D23C();
  sub_10000CF78((v5 + v15[10]), *(v5 + v15[10] + 24));
  sub_10076D23C();
  sub_100016E2C(v5 + v15[11], v157, &unk_10094DA00, &qword_100783FA0);
  if (v158)
  {
    sub_10000CF78(v157, v158);
    sub_10076D23C();
    sub_10000CD74(v157);
  }

  else
  {
    sub_10000CFBC(v157, &unk_10094DA00, &qword_100783FA0);
  }

  sub_100016E2C(v5 + v15[12], v157, &unk_10094DA00, &qword_100783FA0);
  if (v158)
  {
    sub_10000CF78(v157, v158);
    sub_10076D23C();
    sub_10000CD74(v157);
  }

  else
  {
    sub_10000CFBC(v157, &unk_10094DA00, &qword_100783FA0);
  }

  sub_10000CF78((v5 + v15[14]), *(v5 + v15[14] + 24));
  sub_10076D23C();
  v16 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  v153 = v15;
  v17 = v16;
  v18 = (v5 + *(v16 + 20));
  v19 = v18[3];
  sub_10000CF78(v18, v19);
  sub_1000FF02C(v19);
  sub_10076D40C();
  v21 = v20;
  v22 = *(v10 + 8);
  v154 = v10 + 8;
  v23 = v150;
  v22(v12, v150);
  MinX = v21;
  v24 = sub_100102A30(0.0, 0.0, a4, v14, 0.0, v21);
  v146 = a4;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = v17[9];
  v33 = (v6 + v17[10]);
  v34 = *v33;
  v147 = v33[1];
  v148 = v34;
  v35 = *(v6 + v32 + 24);
  sub_10000CF78((v6 + v32), v35);
  sub_1000FF02C(v35);
  sub_10076D40C();
  v22(v12, v23);
  v36 = (v6 + v17[11]);
  v37 = v36[3];
  sub_10000CF78(v36, v37);
  sub_1000FF02C(v37);
  sub_10076D40C();
  v22(v12, v23);
  v159.origin.x = v25;
  v159.origin.y = v27;
  v159.size.width = v29;
  v159.size.height = v31;
  CGRectGetHeight(v159);
  v38 = (v6 + v153[16]);
  sub_10000CF78(v38, v38[3]);
  sub_10076D2AC();
  v39 = (v6 + v17[6]);
  v40 = v39[3];
  sub_10000CF78(v39, v40);
  sub_1000FF02C(v40);
  sub_10076D40C();
  v22(v12, v23);
  v41 = v25;
  v160.origin.x = v25;
  v160.origin.y = v27;
  v160.size.width = v29;
  v160.size.height = v31;
  CGRectGetMinX(v160);
  v161.origin.x = v25;
  v161.origin.y = v27;
  v161.size.width = v29;
  v161.size.height = v31;
  CGRectGetMinY(v161);
  sub_10000CF78(v38, v38[3]);
  v42 = v29;
  sub_100770A4C();
  sub_10076D23C();
  v152 = v17;
  v43 = v17[8];
  v44 = v153;
  v45 = *(v6 + v43 + 24);
  sub_10000CF78((v6 + v43), v45);
  sub_1000FF02C(v45);
  sub_10076D40C();
  v151 = v22;
  v22(v12, v23);
  v162.origin.x = v41;
  v162.origin.y = v27;
  v162.size.width = v29;
  v162.size.height = v31;
  CGRectGetMinY(v162);
  sub_100016E2C(v6 + v44[17], v157, &unk_10094DA00, &qword_100783FA0);
  if (v158)
  {
    sub_10000CF78(v157, v158);
    sub_100770A4C();
    sub_10076D23C();
    sub_10000CD74(v157);
  }

  else
  {
    sub_10000CFBC(v157, &unk_10094DA00, &qword_100783FA0);
  }

  v46 = (v6 + v44[25]);
  sub_10000CF78(v46, v46[3]);
  sub_10076D2AC();
  v48 = v47;
  v49 = v152;
  v50 = (v6 + v152[32]);
  v51 = v50[3];
  sub_10000CF78(v50, v51);
  sub_1000FF02C(v51);
  sub_10076D40C();
  v53 = v52;
  v54 = v150;
  v151(v12, v150);
  v163.origin.x = v41;
  v163.origin.y = v27;
  v163.size.width = v42;
  v163.size.height = v31;
  MinX = CGRectGetMinX(v163);
  v164.origin.x = v41;
  v164.origin.y = v27;
  v164.size.width = v42;
  v164.size.height = v31;
  Height = CGRectGetHeight(v164);
  v148 = v48;
  v147 = Height - v48 - v53;
  v165.origin.x = v41;
  v165.origin.y = v27;
  v165.size.width = v42;
  v165.size.height = v31;
  Width = CGRectGetWidth(v165);
  sub_10000CF78(v46, v46[3]);
  sub_100770A4C();
  v57 = v54;
  v58 = v153;
  sub_10076D23C();
  v59 = (v6 + v49[29]);
  v60 = v59[3];
  sub_10000CF78(v59, v60);
  sub_1000FF02C(v60);
  sub_10076D40C();
  v62 = v61;
  v63 = v57;
  v64 = v151;
  v151(v12, v63);
  v65 = [a1 traitCollection];
  sub_10076E20C();
  v67 = v66;

  v166.origin.x = v41;
  v166.origin.y = v27;
  v166.size.width = v42;
  v166.size.height = v31;
  v68 = CGRectGetMinX(v166);
  v167.origin.x = MinX;
  v167.origin.y = v147;
  v167.size.width = Width;
  v69 = v41;
  v167.size.height = v148;
  v70 = CGRectGetMinY(v167) - v62 - v67;
  v168.origin.x = v69;
  v168.origin.y = v27;
  v168.size.width = v42;
  v168.size.height = v31;
  v71 = CGRectGetWidth(v168);
  sub_10000CF78((v6 + v58[24]), *(v6 + v58[24] + 24));
  MinX = v69;
  sub_100770A4C();
  sub_10076D23C();
  v169.origin.x = v68;
  v169.origin.y = v70;
  v169.size.width = v71;
  v169.size.height = v67;
  MinY = CGRectGetMinY(v169);
  v73 = v49[28];
  v74 = v150;
  v75 = *(v6 + v73 + 24);
  sub_10000CF78((v6 + v73), v75);
  sub_1000FF02C(v75);
  sub_10076D40C();
  v77 = v76;
  v64(v12, v74);
  v78 = MinY - v77;
  sub_100016E2C(v6 + v58[23], &v155, &unk_10094DA00, &qword_100783FA0);
  if (!v156)
  {
    sub_10000CFBC(&v155, &unk_10094DA00, &qword_100783FA0);
    goto LABEL_16;
  }

  sub_100012498(&v155, v157);
  sub_10000CF78(v157, v158);
  if (sub_10076D24C())
  {
    sub_10000CD74(v157);
    v64 = v151;
LABEL_16:
    v79 = v31;
    goto LABEL_18;
  }

  sub_10000CF78(v157, v158);
  v79 = v31;
  sub_10076D2AC();
  v81 = v80;
  v83 = v82;
  v170.origin.x = MinX;
  v170.origin.y = v27;
  v170.size.width = v42;
  v170.size.height = v31;
  v84 = CGRectGetMinX(v170);
  sub_10000CF78(v157, v158);
  sub_100770A4C();
  sub_10076D23C();
  v171.origin.x = v84;
  v171.origin.y = v78 - v83;
  v171.size.width = v81;
  v171.size.height = v83;
  v85 = CGRectGetMinY(v171);
  v86 = (v6 + v152[26]);
  v87 = v86[3];
  sub_10000CF78(v86, v87);
  sub_1000FF02C(v87);
  sub_10076D40C();
  v89 = v88;
  v64 = v151;
  v151(v12, v74);
  v78 = v85 - v89;
  sub_10000CD74(v157);
LABEL_18:
  sub_100016E2C(v6 + v153[22], &v155, &qword_10094BB30, qword_100796E40);
  if (v156)
  {
    sub_100012498(&v155, v157);
    sub_10000CF78(v157, v158);
    if ((sub_10076D24C() & 1) == 0)
    {
      sub_10000CF78(v157, v158);
      if (sub_10076D20C())
      {
        sub_10000CF78(v157, v158);
        sub_10076D2AC();
        v91 = v90;
        v93 = v92;
        v94 = v78 - v92;
        v172.origin.x = MinX;
        v172.origin.y = v27;
        v172.size.width = v42;
        v172.size.height = v79;
        v95 = CGRectGetMinX(v172);
        sub_10000CF78(v157, v158);
        sub_100770A4C();
        sub_10076D23C();
        v173.origin.x = v95;
        v173.origin.y = v94;
        v173.size.width = v91;
        v173.size.height = v93;
        v96 = CGRectGetMinY(v173);
        v97 = (v6 + v152[24]);
        v98 = v97[3];
        sub_10000CF78(v97, v98);
        sub_1000FF02C(v98);
        sub_10076D40C();
        v100 = v99;
        v64(v12, v74);
        v78 = v96 - v100;
      }
    }

    sub_10000CD74(v157);
  }

  else
  {
    sub_10000CFBC(&v155, &qword_10094BB30, qword_100796E40);
  }

  v101 = v153;
  v102 = (v6 + v153[21]);
  sub_10000CF78(v102, v102[3]);
  sub_10076D2AC();
  v104 = v103;
  v106 = v105;
  v107 = v78 - v105;
  v174.origin.x = MinX;
  v174.origin.y = v27;
  v174.size.width = v42;
  v174.size.height = v79;
  v108 = CGRectGetMinX(v174);
  sub_10000CF78(v102, v102[3]);
  sub_100770A4C();
  sub_10076D23C();
  v175.origin.x = v108;
  v175.origin.y = v107;
  v175.size.width = v104;
  v175.size.height = v106;
  v109 = CGRectGetMinY(v175);
  v110 = v152;
  v111 = (v6 + v152[21]);
  v112 = v111[3];
  sub_10000CF78(v111, v112);
  sub_1000FF02C(v112);
  sub_10076D40C();
  v114 = v113;
  v115 = v151;
  v151(v12, v74);
  v116 = v109 - v114;
  v117 = (v6 + v110[17]);
  v118 = *v117;
  v146 = v117[1];
  *&v148 = v101[20];
  sub_100016E2C(v6 + *&v148, v157, &unk_10094DA00, &qword_100783FA0);
  v119 = v158;
  sub_10000CFBC(v157, &unk_10094DA00, &qword_100783FA0);
  if (v119)
  {
    v120 = (v6 + v152[15]);
    v121 = v120[3];
    sub_10000CF78(v120, v121);
    sub_1000FF02C(v121);
    sub_10076D40C();
    v115(v12, v74);
  }

  v147 = v118;
  v122 = MinX;
  v176.origin.x = MinX;
  v176.origin.y = v27;
  v176.size.width = v42;
  v176.size.height = v79;
  CGRectGetHeight(v176);
  v123 = v153;
  v124 = (v6 + v153[19]);
  sub_10000CF78(v124, v124[3]);
  sub_10076D2AC();
  v126 = v125;
  v127 = v27;
  v128 = v122;
  v130 = v129;
  v145 = v131;
  v132 = v116 - v129;
  v177.origin.x = v122;
  v177.origin.y = v127;
  v177.size.width = v42;
  v177.size.height = v79;
  v133 = CGRectGetMinX(v177);
  sub_10000CF78(v124, v124[3]);
  sub_100770A4C();
  sub_10076D23C();
  v141 = v133;
  v178.origin.x = v133;
  v142 = v132;
  v178.origin.y = v132;
  v144 = v126;
  v178.size.width = v126;
  v143 = v130;
  v178.size.height = v130;
  CGRectGetMinY(v178);
  v134 = (v6 + v152[14]);
  v135 = v134[3];
  sub_10000CF78(v134, v135);
  sub_1000FF02C(v135);
  sub_10076D40C();
  v115(v12, v74);
  v136 = (v6 + v123[18]);
  sub_10000CF78(v136, v136[3]);
  sub_10076D2AC();
  v179.origin.x = v128;
  v179.origin.y = v127;
  v179.size.width = v42;
  v179.size.height = v79;
  CGRectGetMinX(v179);
  sub_10000CF78(v136, v136[3]);
  sub_100770A4C();
  sub_10076D23C();
  sub_100016E2C(v6 + *&v148, &v155, &unk_10094DA00, &qword_100783FA0);
  if (!v156)
  {
    return sub_10000CFBC(&v155, &unk_10094DA00, &qword_100783FA0);
  }

  sub_100012498(&v155, v157);
  v137 = (v6 + v152[20]);
  v138 = v137[3];
  sub_10000CF78(v137, v138);
  sub_1000FF02C(v138);
  sub_10076D40C();
  v115(v12, v74);
  v180.origin.x = v141;
  v180.origin.y = v142;
  v180.size.width = v144;
  v180.size.height = v143;
  CGRectGetMinY(v180);
  v181.origin.x = v128;
  v181.origin.y = v127;
  v181.size.width = v42;
  v181.size.height = v79;
  CGRectGetMaxX(v181);
  sub_10000CF78(v157, v158);
  sub_100770A4C();
  sub_10076D23C();
  return sub_10000CD74(v157);
}

void sub_1001A3204(uint64_t a1)
{
  type metadata accessor for AppEventDetailPageLayout.Metrics(319);
  if (v1 <= 0x3F)
  {
    sub_100102F90(319, &unk_100950F60, &protocol descriptor for LayoutView);
    if (v2 <= 0x3F)
    {
      sub_1001A3380(319, &qword_100950F80, &qword_10094CF50, &unk_100791F20);
      if (v3 <= 0x3F)
      {
        sub_100102F90(319, &qword_100953E00, &protocol descriptor for LayoutTextView);
        if (v4 <= 0x3F)
        {
          sub_1001A3380(319, &unk_100950F70, &unk_100953E10, &unk_100784160);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1001A3380(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10000CE78(a3, a4);
    v5 = sub_1007711AC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1001A3400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20) + 24);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1001A34F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

void sub_1001A35B0(uint64_t a1)
{
  sub_10076D39C();
  if (v1 <= 0x3F)
  {
    sub_100102F90(319, &qword_10094BAA0, &protocol descriptor for AnyDimension);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1001A36B0()
{
  v1 = v0[4];
  [v1 _systemContentInset];
  v3 = v2;
  [v1 contentOffset];
  v5 = v4;
  [v1 contentInset];
  v7 = v6;
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1002085F0(Strong);
  v10 = v9;

  v11 = v0[5];
  if (v11)
  {
    v12 = v0[6];
    v13 = fmin((v3 + v5 + v7) / (v10 - v3), 1.0);
    if (v13 < 0.0)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = v13;
    }

    v11(v15, v14, 0.0);
    sub_1000167E0(v11, v12);
  }

  sub_1001A37AC(v1);
}

void sub_1001A37AC(void *a1)
{
  v2 = v1;
  [a1 _systemContentInset];
  v5 = v4;
  [a1 contentOffset];
  v7 = v6;
  [a1 contentInset];
  v9 = v5 + v7 + v8;
  [a1 frame];
  v10 = v2[3];
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_100208298(Strong);
  v13 = v12;
  v15 = v14;

  if (v9 >= 0.0)
  {
    v16 = -v9;
    if (-v15 - *&v10[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_reflectionOutset] > -v9)
    {
      v16 = -v15 - *&v10[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_reflectionOutset];
    }
  }

  else
  {
    v15 = fabs(v9) + v15;
    v16 = 0.0;
  }

  [v10 setFrame:{0.0, v16, v13, v15}];
  v17 = v9 * 0.28;
  if (v9 * 0.28 < 0.0)
  {
    v17 = 0.0;
  }

  v18 = *(*&v10[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView] + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
  v19 = *&v18[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_parallaxY];
  *&v18[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_parallaxY] = v17;
  if (v17 != v19)
  {
    [v18 setNeedsLayout];
  }

  v20 = swift_unknownObjectWeakLoadStrong();
  sub_1002085F0(v20);
  v22 = v21;

  v23 = fmin(v9 / (v22 - v5), 1.0);
  if (v23 < 0.0)
  {
    v24 = 0.0;
  }

  else
  {
    v24 = v23;
  }

  v25 = v2[5];
  if (v25)
  {
    v26 = v2[6];
    v27 = v2[4];

    v28 = [v27 _verticalVelocity];
    v25(v28, v24, v29);
    sub_1000167E0(v25, v26);
  }

  v30 = swift_unknownObjectWeakLoadStrong();
  if (v30)
  {
    v31 = v30;
    v32 = [v30 navigationController];

    if (v32)
    {
      v33 = [v32 navigationBar];

      [v33 _setTitleOpacity:v24];
    }
  }
}

CGFloat sub_1001A3A30()
{
  v1 = v0;
  v2 = *(v0 + 32);
  [v2 _systemContentInset];
  v4 = v3;
  [v2 contentOffset];
  v6 = v5;
  [v2 contentInset];
  v8 = v4 + v6 + v7;
  [v2 frame];
  v9 = *(v1 + 24);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_100208298(Strong);
  v12 = v11;
  v14 = v13;

  if (v8 >= 0.0)
  {
    v15 = -v8;
    if (-v14 - *(v9 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_reflectionOutset) > -v8)
    {
      v15 = -v14 - *(v9 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_reflectionOutset);
    }
  }

  else
  {
    v14 = fabs(v8) + v14;
    v15 = 0.0;
  }

  v16 = 0;
  v17 = v12;
  v18 = v14;
  return CGRectGetHeight(*(&v15 - 1)) - v4 - *(v9 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentBottomInset);
}

uint64_t sub_1001A3B54()
{
  swift_unknownObjectWeakDestroy();

  sub_1000167E0(*(v0 + 40), *(v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SearchLinkView(uint64_t a1)
{
  result = qword_10094BEF0;
  if (!qword_10094BEF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001A3D8C(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1001A3E38(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = sub_10077149C();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_10077158C();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_1001A3F7C(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

id sub_1001A4024()
{
  if (qword_100941370 != -1)
  {
    swift_once();
  }

  v1 = qword_1009A2720;
  qword_10099D6F0 = qword_1009A2720;

  return v1;
}

uint64_t sub_1001A4088(void *a1)
{
  v2 = sub_10076DD3C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  sub_10076DD2C();
  if (qword_10093F978 != -1)
  {
    swift_once();
  }

  sub_10076DC9C();
  v12 = *(v3 + 8);
  v12(v5, v2);
  v13 = [a1 preferredContentSizeCategory];
  sub_10077084C();

  sub_10076DD1C();
  v12(v8, v2);
  sub_10076DD0C();
  return (v12)(v11, v2);
}

uint64_t sub_1001A4258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  swift_getObjectType();
  v8 = [a3 traitCollection];
  v9 = [v8 preferredContentSizeCategory];

  sub_1001A55BC(v9, 0);
  sub_10011E080(a1, v24);
  sub_10000A570(a2, v23);
  v10 = sub_1001A5424(a3);
  v12 = v11;
  v23[8] = &type metadata for SearchLinkLayout;
  v23[9] = sub_10017FCFC();
  v13 = swift_allocObject();
  v23[5] = v13;
  v14 = sub_10017FDA0();
  v15 = swift_allocObject();
  sub_10000A570(v23, v15 + 16);
  sub_10011E080(v24, &v21);
  if (v22)
  {
    sub_100012498(&v21, v20);
    v16 = swift_allocObject();
    sub_100012498(v20, v16 + 16);
    sub_10000CD74(v23);
    sub_10017FE2C(v24);
    v17 = &type metadata for AutoAdjustingPlaceable;
    v18 = v14;
  }

  else
  {
    sub_10000CD74(v23);
    sub_10017FE2C(v24);
    v17 = 0;
    v18 = 0;
    v16 = 0;
  }

  v13[2] = v16;
  v13[3] = 0;
  v13[4] = 0;
  v13[5] = v17;
  v13[6] = v18;
  v13[7] = v15;
  v13[10] = &type metadata for AutoAdjustingPlaceable;
  v13[11] = v14;
  v13[12] = v10;
  v13[13] = v12;
  sub_10076DF9C();
  v24[3] = sub_10076DFAC();
  v24[4] = &protocol witness table for Center;
  sub_10000DB7C(v24);
  sub_10076DFBC();
  a4[3] = sub_10076E04C();
  a4[4] = &protocol witness table for Margins;
  sub_10000DB7C(a4);
  return sub_10076E03C();
}

char *sub_1001A44A4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10076DD3C();
  __chkstk_darwin(v10 - 8);
  v11 = qword_10094BEE0;
  *&v4[v11] = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12 = qword_10094BEE8;
  sub_10076D4BC();
  *&v4[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v36.receiver = v4;
  v36.super_class = type metadata accessor for SearchLinkView(0);
  v13 = objc_msgSendSuper2(&v36, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v17 = v13;
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v18 = qword_10094BEE0;
  v19 = qword_100941368;
  v20 = *&v17[qword_10094BEE0];
  if (v19 != -1)
  {
    swift_once();
  }

  [v20 setTintColor:qword_1009A2718];

  v21 = *&v17[v18];
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 clearColor];
  sub_10075FB8C();

  v25 = *&v17[v18];
  sub_10075FC0C();

  v26 = qword_100941380;
  v27 = *&v17[v18];
  if (v26 != -1)
  {
    swift_once();
  }

  v28 = qword_1009A2730;
  sub_10075FC3C();

  [v17 addSubview:*&v17[v18]];
  v29 = qword_10094BEE8;
  v30 = qword_100941350;
  v31 = *&v17[qword_10094BEE8];
  if (v30 != -1)
  {
    swift_once();
  }

  [v31 setTextColor:qword_1009A2700];

  v32 = *&v17[v29];
  v33 = [v17 traitCollection];

  sub_1001A4088(v33);
  sub_10076D49C();

  [v17 addSubview:*&v17[v29]];
  sub_10000A5D4(&unk_100945BF0, &qword_100786810);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_100783DD0;
  *(v34 + 32) = sub_10076E88C();
  *(v34 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(swift_allocObject() + 16) = ObjectType;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v17;
}

id sub_1001A488C(void *a1, void *a2)
{
  v4 = sub_10076DD3C();
  v5 = [a2 preferredContentSizeCategory];
  v6 = sub_10077084C() & 1;

  v7 = [a1 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  v9 = sub_10077084C() & 1;
  if (v6 != v9)
  {
    v10 = [a1 traitCollection];
    sub_1001A4088(v10);

    sub_10076D49C();
  }

  return [a1 setNeedsLayout];
}

void sub_1001A49F0(uint64_t a1)
{
  v2 = qword_10094BEE0;
  *(a1 + v2) = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = qword_10094BEE8;
  sub_10076D4BC();
  *(a1 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1001A4AB0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = *&v1[qword_10094BEE0];
  v5 = sub_10075FC9C();
  if (v5)
  {

    v6 = sub_10075FD2C();
    v7 = sub_1001A5CBC(&qword_10094B250, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v5 = v4;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v28[1] = 0;
    v28[2] = 0;
  }

  v28[0] = v5;
  v28[3] = v6;
  v28[4] = v7;
  v8 = *&v2[qword_10094BEE8];
  v27[3] = sub_10076D4BC();
  v27[4] = &protocol witness table for UILabel;
  v27[0] = v8;
  v9 = v8;
  v10 = [v2 traitCollection];
  v11 = [v10 preferredContentSizeCategory];

  sub_1001A55BC(v11, 0);
  sub_10011E080(v28, v26);
  sub_10000A570(v27, v25);
  v12 = sub_1001A528C(v2);
  v14 = v13;
  v25[8] = &type metadata for SearchLinkLayout;
  v25[9] = sub_10017FCFC();
  v15 = swift_allocObject();
  v25[5] = v15;
  v16 = sub_10017FDA0();
  v17 = swift_allocObject();
  sub_10000A570(v25, v17 + 16);
  sub_10011E080(v26, &v23);
  if (v24)
  {
    sub_100012498(&v23, v22);
    v18 = swift_allocObject();
    sub_100012498(v22, v18 + 16);
    sub_10000CD74(v25);
    sub_10017FE2C(v26);
    v19 = &type metadata for AutoAdjustingPlaceable;
    v20 = v16;
  }

  else
  {
    sub_10000CD74(v25);
    sub_10017FE2C(v26);
    v19 = 0;
    v20 = 0;
    v18 = 0;
  }

  v15[2] = v18;
  v15[3] = 0;
  v15[4] = 0;
  v15[5] = v19;
  v15[6] = v20;
  v15[7] = v17;
  v15[10] = &type metadata for AutoAdjustingPlaceable;
  v15[11] = v16;
  v15[12] = v12;
  v15[13] = v14;
  sub_10076DF9C();
  v26[3] = sub_10076DFAC();
  v26[4] = &protocol witness table for Center;
  sub_10000DB7C(v26);
  sub_10076DFBC();
  a1[3] = sub_10076E04C();
  a1[4] = &protocol witness table for Margins;
  sub_10000DB7C(a1);
  sub_10076E03C();
  sub_10000CD74(v27);
  return sub_10017FE2C(v28);
}

void sub_1001A4D88()
{
  v1 = *(v0 + qword_10094BEE8);
}

id sub_1001A4DC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchLinkView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1001A4E00(uint64_t a1)
{
  v2 = *(a1 + qword_10094BEE8);
}

id sub_1001A4E78()
{
  if (qword_100941380 != -1)
  {
    swift_once();
  }

  v0 = qword_1009A2730;

  return v0;
}

double sub_1001A4EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10037C48C(a1, a3, WitnessTable);
}

void sub_1001A4F50(void *a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_10037A640(a1, a2, a3, WitnessTable);
}

void sub_1001A4FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_10037CBE4(a1, a3, WitnessTable);
}

uint64_t sub_1001A5020@<X0>(uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10037A9B8(a3, WitnessTable, x8_0);
}

double sub_1001A509C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10037CA40(a1, a2, a4, WitnessTable);
}

uint64_t sub_1001A5150(void *a1)
{
  a1[1] = sub_1001A5CBC(&qword_10094BF48, type metadata accessor for SearchLinkView, &unk_100792030);
  a1[2] = sub_1001A5CBC(&qword_10094BF50, type metadata accessor for SearchLinkView, &unk_100792060);
  result = sub_1001A5CBC(&unk_10094BF58, type metadata accessor for SearchLinkView, &unk_100792090);
  a1[3] = result;
  return result;
}

uint64_t sub_1001A51FC(void *a1, uint64_t *a2)
{
  v2 = sub_10076FF9C();
  v4 = v3;
  if (v2 == sub_10076FF9C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_10077167C();
  }

  return v7 & 1;
}

id sub_1001A528C(void *a1)
{
  if (qword_10093F978 != -1)
  {
    swift_once();
  }

  v2 = qword_10099D6F0;
  sub_10000A5D4(&qword_10094BF68, qword_1007920E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100784500;
  *(inited + 32) = UIContentSizeCategoryExtraSmall;
  *(inited + 40) = UIContentSizeCategorySmall;
  v4 = v2;
  v5 = UIContentSizeCategoryExtraSmall;
  v6 = UIContentSizeCategorySmall;
  v7 = [a1 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  v12 = v8;
  __chkstk_darwin(v9);
  v11[2] = &v12;
  sub_1001A3F7C(sub_1001A5D20, v11, inited);
  swift_setDeallocating();
  type metadata accessor for UIContentSizeCategory(0);
  swift_arrayDestroy();

  return v4;
}

id sub_1001A5424(void *a1)
{
  if (qword_10093F978 != -1)
  {
    swift_once();
  }

  v2 = qword_10099D6F0;
  sub_10000A5D4(&qword_10094BF68, qword_1007920E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100784500;
  *(inited + 32) = UIContentSizeCategoryExtraSmall;
  *(inited + 40) = UIContentSizeCategorySmall;
  v4 = v2;
  v5 = UIContentSizeCategoryExtraSmall;
  v6 = UIContentSizeCategorySmall;
  v7 = [a1 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  v12 = v8;
  __chkstk_darwin(v9);
  v11[2] = &v12;
  sub_1001A3F7C(sub_1001A5C84, v11, inited);
  swift_setDeallocating();
  type metadata accessor for UIContentSizeCategory(0);
  swift_arrayDestroy();

  return v4;
}

double sub_1001A55BC(uint64_t a1, char a2)
{
  v3 = sub_10076FF9C();
  v5 = v4;
  if (v3 == sub_10076FF9C() && v5 == v6)
  {

    goto LABEL_16;
  }

  v8 = sub_10077167C();

  if (v8)
  {
LABEL_16:
    v19 = (a2 & 1) == 0;
    result = 9.0;
    v21 = 4.0;
    goto LABEL_17;
  }

  v9 = sub_10076FF9C();
  v11 = v10;
  if (v9 == sub_10076FF9C() && v11 == v12)
  {
    goto LABEL_13;
  }

  v14 = sub_10077167C();

  if (v14)
  {
LABEL_14:
    v19 = (a2 & 1) == 0;
    result = 10.0;
    v21 = 5.0;
    goto LABEL_17;
  }

  v15 = sub_10076FF9C();
  v17 = v16;
  if (v15 == sub_10076FF9C() && v17 == v18)
  {
LABEL_13:

    goto LABEL_14;
  }

  v22 = sub_10077167C();

  if (v22)
  {
    goto LABEL_14;
  }

  v23 = sub_10076FF9C();
  v25 = v24;
  if (v23 == sub_10076FF9C() && v25 == v26)
  {

LABEL_25:
    v19 = (a2 & 1) == 0;
    result = 11.0;
    v21 = 5.0;
    goto LABEL_17;
  }

  v27 = sub_10077167C();

  if (v27)
  {
    goto LABEL_25;
  }

  v28 = sub_10076FF9C();
  v30 = v29;
  if (v28 == sub_10076FF9C() && v30 == v31)
  {

LABEL_30:
    v19 = (a2 & 1) == 0;
    result = 12.0;
    v21 = 6.0;
    goto LABEL_17;
  }

  v32 = sub_10077167C();

  if (v32)
  {
    goto LABEL_30;
  }

  v33 = sub_10076FF9C();
  v35 = v34;
  if (v33 == sub_10076FF9C() && v35 == v36)
  {

LABEL_35:
    v19 = (a2 & 1) == 0;
    result = 13.0;
    v21 = 6.0;
    goto LABEL_17;
  }

  v37 = sub_10077167C();

  if (v37)
  {
    goto LABEL_35;
  }

  v38 = sub_10076FF9C();
  v40 = v39;
  if (v38 == sub_10076FF9C() && v40 == v41)
  {

LABEL_40:
    v19 = (a2 & 1) == 0;
    result = 14.0;
    v21 = 7.0;
LABEL_17:
    if (!v19)
    {
      return v21;
    }

    return result;
  }

  v42 = sub_10077167C();

  if (v42)
  {
    goto LABEL_40;
  }

  v43 = sub_10076FF9C();
  v45 = v44;
  if (v43 == sub_10076FF9C() && v45 == v46)
  {

    return 17.0;
  }

  v47 = sub_10077167C();

  result = 17.0;
  if ((v47 & 1) == 0)
  {
    v48 = sub_10076FF9C();
    v50 = v49;
    if (v48 == sub_10076FF9C() && v50 == v51)
    {

      return 20.0;
    }

    v52 = sub_10077167C();

    result = 20.0;
    if ((v52 & 1) == 0)
    {
      v53 = sub_10076FF9C();
      v55 = v54;
      if (v53 == sub_10076FF9C() && v55 == v56)
      {

        return 24.0;
      }

      v57 = sub_10077167C();

      result = 24.0;
      if ((v57 & 1) == 0)
      {
        v58 = sub_10076FF9C();
        v60 = v59;
        if (v58 == sub_10076FF9C() && v60 == v61)
        {

          return 28.0;
        }

        v62 = sub_10077167C();

        result = 28.0;
        if ((v62 & 1) == 0)
        {
          v63 = sub_10076FF9C();
          v65 = v64;
          if (v63 == sub_10076FF9C() && v65 == v66)
          {

            return 31.0;
          }

          v67 = sub_10077167C();

          v19 = (v67 & 1) == 0;
          result = 10.0;
          v21 = 31.0;
          goto LABEL_17;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1001A5BFC()
{
  if (*(v0 + 40))
  {
    sub_10000CD74((v0 + 16));
  }

  sub_10000CD74((v0 + 56));

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_1001A5C4C()
{
  sub_10000CD74((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1001A5CBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1001A5D50()
{
  result = qword_10094BF70;
  if (!qword_10094BF70)
  {
    sub_10076388C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094BF70);
  }

  return result;
}

uint64_t sub_1001A5DB0(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v50 = a1;
  v2 = sub_10075DD7C();
  v44 = *(v2 - 8);
  v45 = v2;
  __chkstk_darwin(v2);
  v43 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&qword_10094BF78, &unk_100792170);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v48 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v43 - v8;
  __chkstk_darwin(v10);
  __chkstk_darwin(v11);
  v13 = &v43 - v12;
  sub_10000A5D4(&qword_100942C70, &unk_100783EF0);
  v49 = sub_10076FCEC();
  sub_10076F73C();
  sub_10076F72C();
  sub_10076388C();
  sub_10076385C();
  sub_10000A5D4(&qword_10094BF80, &unk_100792180);
  sub_10076F41C();

  v14 = *(v5 + 8);
  v51 = v4;
  v14(v13, v4);
  if (v53)
  {
  }

  else
  {
    sub_10076F72C();
    sub_10076385C();
    v53 = _swiftEmptyDictionarySingleton;
    sub_10076F42C();
  }

  sub_10076F72C();
  sub_10076385C();
  sub_10076F41C();

  v46 = v14;
  v14(v9, v51);
  v15 = v53;
  v16 = v48;
  if (!v53)
  {
    goto LABEL_13;
  }

  v17 = sub_10076386C();
  if (!v15[2])
  {

    goto LABEL_12;
  }

  v19 = sub_100561E0C(v17, v18);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_12:

LABEL_13:
    sub_10076387C();
LABEL_14:
    sub_10076F72C();
    sub_10076385C();
    v32 = sub_10076F40C();
    if (*v31)
    {
      v33 = v31;
      v34 = sub_10076386C();
      v36 = v35;
      v37 = v43;
      sub_10075DD6C();
      sub_10075DD4C();
      v39 = v38;
      (*(v44 + 8))(v37, v45);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = *v33;
      *v33 = 0x8000000000000000;
      sub_10024A768(v34, v36, isUniquelyReferenced_nonNull_native, v39);

      *v33 = v52;
    }

    v32(&v53, 0);

    v46(v16, v51);
    v41 = sub_10076383C();
    sub_100563DC4(v41, 1, v47);

    v30 = v49;
    sub_10076FC4C();
    goto LABEL_17;
  }

  v22 = *(v15[7] + 8 * v19);

  *&v23 = COERCE_DOUBLE(sub_10076387C());
  if ((v24 & 1) == 0)
  {
    v25 = *&v23;
    v26 = v43;
    sub_10075DD6C();
    sub_10075DD4C();
    v28 = v27;
    (*(v44 + 8))(v26, v45);
    if (v28 - v22 > v25)
    {
      goto LABEL_14;
    }
  }

  v29 = sub_10076384C();
  if (!v29)
  {
    sub_1001A633C();
    swift_allocError();
    v30 = v49;
    sub_10076FCAC();

    return v30;
  }

  sub_100563DC4(v29, 1, v47);
  v30 = v49;
  sub_10076FC4C();

LABEL_17:

  return v30;
}

unint64_t sub_1001A633C()
{
  result = qword_10094BF88;
  if (!qword_10094BF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094BF88);
  }

  return result;
}

unint64_t sub_1001A63A4()
{
  result = qword_10094BF90;
  if (!qword_10094BF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094BF90);
  }

  return result;
}

void sub_1001A63F8(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v6 = sub_10076BF6C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10000A5D4(&unk_1009467E0, qword_10078CB50);
  __chkstk_darwin(v7 - 8);
  v9 = v33 - v8;
  v10 = sub_10076481C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076D39C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A570(a1, v38);
  sub_10000A5D4(&unk_100942830, &qword_100782680);
  sub_100761D1C();
  if (swift_dynamicCast())
  {
    v35 = a2;
    v18 = v37;
    v19 = sub_100761CEC();
    if (v19)
    {
      v34 = v15;
      v20 = *(*(*(v36 + OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_mediaViewContainer) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
      if (v20 && (v33[4] = v19, v21 = type metadata accessor for VideoView(0), (v22 = swift_dynamicCastClass()) != 0))
      {
        v33[2] = v21;
        v33[3] = v18;
        v23 = qword_1009A2558;
        v24 = v22;
        swift_beginAccess();
        v25 = *(v11 + 16);
        v33[1] = v24;
        v25(v13, v24 + v23, v10);
        v26 = v20;
        sub_10076476C();
        (*(v11 + 8))(v13, v10);
        v27 = v34;
        if ((*(v34 + 48))(v9, 1, v14) != 1)
        {
          (*(v27 + 32))(v17, v9, v14);
          sub_10076D30C();
          sub_10076B84C();
          sub_10076BFCC();

          sub_1001A936C(&unk_100942840, type metadata accessor for VideoView, &unk_1007B40F8);
          sub_100760B8C();

          (*(v27 + 8))(v17, v14);
          return;
        }

        sub_10000CFBC(v9, &unk_1009467E0, qword_10078CB50);
      }

      else
      {
      }
    }

    if (sub_100761CFC())
    {
      sub_10076BFCC();
      v28 = OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_artworkView;
      v29 = v36;
      v30 = *(v36 + OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_artworkView);
      sub_10076BF7C();
      sub_10075FCCC();
      [v30 setContentMode:sub_10076BDBC()];
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_100016F40(0, &qword_100942F10, UIColor_ptr);
        sub_100770D5C();
      }

      sub_10075FB8C();

      v31 = *(v29 + v28);
      sub_10075FD2C();
      sub_1001A936C(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      v32 = v31;
      sub_100760B8C();
    }
  }
}

id sub_1001A69F8(uint64_t a1, char *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v130 = a3;
  v131 = a1;
  v128 = a2;
  v7 = sub_100761D8C();
  v126 = *(v7 - 8);
  v127 = v7;
  __chkstk_darwin(v7);
  v124 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v125 = &v102 - v10;
  v11 = sub_10000A5D4(&unk_10094C030, &unk_10078D680);
  __chkstk_darwin(v11 - 8);
  v121 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v120 = &v102 - v14;
  v15 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v15 - 8);
  v119 = &v102 - v16;
  v17 = sub_1007611EC();
  __chkstk_darwin(v17 - 8);
  v118 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v117 = &v102 - v20;
  v21 = sub_10000A5D4(&unk_1009467E0, qword_10078CB50);
  __chkstk_darwin(v21 - 8);
  v116 = &v102 - v22;
  v114 = sub_10076121C();
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v115 = &v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10076481C();
  v122 = *(v24 - 8);
  v123 = v24;
  __chkstk_darwin(v24);
  v129 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10000A5D4(&unk_100945560, qword_1007951B0);
  __chkstk_darwin(v26 - 8);
  v112 = &v102 - v27;
  v111 = sub_100768FEC();
  v106 = *(v111 - 8);
  __chkstk_darwin(v111);
  v108 = &v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_10000A5D4(&unk_100946750, qword_100787A30);
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v107 = &v102 - v29;
  v30 = sub_10000A5D4(&unk_100945550, &unk_10078A040);
  __chkstk_darwin(v30 - 8);
  v105 = &v102 - v31;
  v104 = sub_10076A3AC();
  v102 = *(v104 - 8);
  __chkstk_darwin(v104);
  v33 = &v102 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10000A5D4(&unk_100946760, &unk_100787A20);
  __chkstk_darwin(v34 - 8);
  v103 = &v102 - v35;
  v36 = sub_100761C9C();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v102 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_10076664C();
  v41 = *(v40 - 8);
  *&v42 = __chkstk_darwin(v40).n128_u64[0];
  v44 = &v102 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = [a4 snapshotPageTraitEnvironment];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_pageTraits] = v45;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v5 setNeedsLayout];
  swift_unknownObjectRelease();
  sub_1007665EC();
  sub_1001A936C(&unk_100945570, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v46 = sub_10077124C();
  (*(v41 + 8))(v44, v40);
  sub_100761CAC();
  v47 = sub_100761C8C();
  (*(v37 + 8))(v39, v36);
  v48 = v5[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_isBackgroundEffectViewHidden];
  v5[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_isBackgroundEffectViewHidden] = ((v46 | v47) & 1) == 0;
  if (((v46 | v47) & 1) == v48)
  {
    if ((v46 | v47))
    {
      [v5 insertSubview:*&v5[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_backgroundEffectView] aboveSubview:*&v5[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_mediaViewContainer]];
    }

    else
    {
      [*&v5[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_backgroundEffectView] removeFromSuperview];
    }
  }

  v49 = *&v5[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_backgroundEffectView];
  v50 = v49[OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_wantsTopEffect];
  v49[OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_wantsTopEffect] = v46 & 1;
  if ((v46 & 1) != v50)
  {
    v51 = 0.0;
    if (v46)
    {
      *&v51 = 1.0;
    }

    [*&v49[OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_topGradient] setOpacity:v51];
    [v49 setNeedsDisplay];
  }

  v52 = sub_100761CBC();
  v53 = v130;
  if (v52)
  {
    v54 = v52;
    v55 = sub_100761CDC();
    if (v55)
    {
      v56 = v55;
      v57 = *&v5[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_offerButton];
      v58 = v102;
      v59 = v104;
      (*(v102 + 104))(v33, enum case for OfferButtonPresenterViewAlignment.center(_:), v104);
      (*(v58 + 56))(v105, 1, 1, v59);
      sub_1001A936C(&unk_1009492B0, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);

      v60 = v103;
      sub_10076759C();
      v61 = sub_10000A5D4(&qword_100945590, qword_10078BC10);
      (*(*(v61 - 8) + 56))(v60, 0, 1, v61);
      v62 = v106;
      v63 = v111;
      (*(v106 + 104))(v108, enum case for OfferButtonSubtitlePosition.below(_:), v111);
      (*(v62 + 56))(v112, 1, 1, v63);
      sub_1001A936C(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
      v64 = v107;
      sub_10076759C();
      sub_1001F12C8(v56, v54, 0, v60, v64, v53, 0, 0);

      (*(v109 + 8))(v64, v110);
      sub_10000CFBC(v60, &unk_100946760, &unk_100787A20);
      [v57 setHidden:0];

      goto LABEL_14;
    }
  }

  [*&v5[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_offerButton] setHidden:1];
LABEL_14:
  sub_1001A7B3C(v131, v53);
  if (sub_100761CEC())
  {
    (*(v113 + 104))(v115, enum case for VideoFillMode.scaleAspectFill(_:), v114);
    sub_10076B84C();
    sub_10076BEFC();
    v65 = v116;
    sub_10076D3AC();

    v66 = sub_10076D39C();
    (*(*(v66 - 8) + 56))(v65, 0, 1, v66);
    sub_10076B7EC();
    sub_10076B82C();
    sub_10076B7FC();
    sub_10076B7DC();
    sub_10076B83C();
    sub_1007647FC();
    sub_100762F0C();
    sub_10076F5CC();
    sub_10076B7CC();
    v67 = v119;
    sub_10076B85C();
    v68 = sub_10075DB7C();
    (*(*(v68 - 8) + 56))(v67, 0, 1, v68);
    v69 = v120;
    sub_10076B81C();
    v70 = v121;
    sub_10076B80C();
    v71 = type metadata accessor for VideoView(0);
    sub_1001A936C(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
    v130 = v71;
    v72 = sub_100762EEC();
    sub_10000CFBC(v70, &unk_10094C030, &unk_10078D680);
    sub_10000CFBC(v69, &unk_10094C030, &unk_10078D680);
    sub_10000CFBC(v67, &unk_1009435D0, &qword_100785850);
    sub_10000CFBC(&v132, &qword_100943310, &unk_100784150);
    v73 = *&v5[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_mediaViewContainer];
    v74 = OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer;
    v75 = *(v73 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
    if (v72)
    {
      v76 = v72;
      v77 = [v76 superview];
      if (v77)
      {
        v78 = v77;
        sub_100016F40(0, &qword_1009441F0, UIView_ptr);
        v79 = v75;
        v128 = v5;
        v80 = v79;
        v81 = sub_100770EEC();

        v5 = v128;
        if (v81)
        {
          [v76 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v86 = *&v75[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents];
    *&v75[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = v72;
    v87 = v72;
    sub_100453A30(v86);

    if (*(*(v73 + v74) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents))
    {
      v88 = swift_dynamicCastClass();
      if (v88)
      {
        *(v88 + qword_1009602B8 + 8) = &off_1008965B8;
        swift_unknownObjectWeakAssign();
      }
    }

    (*(v122 + 8))(v129, v123);
  }

  else if (sub_100761CFC())
  {

    v82 = *&v5[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_artworkView];
    v83 = *(*&v5[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_mediaViewContainer] + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
    v84 = *(v83 + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
    *(v83 + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents) = v82;
    v85 = v82;
    sub_100453A30(v84);

    sub_1004526E4();
  }

  sub_100761CCC();
  if (v89)
  {
    v90 = *&v5[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_buttonDetailsView];
    v91 = sub_10076FF6C();

    [v90 setText:v91];

    sub_100761D0C();
    v92 = v125;
    sub_100761D9C();

    v93 = OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_buttonDetailsTextAlignment;
    swift_beginAccess();
    v95 = v126;
    v94 = v127;
    (*(v126 + 24))(&v5[v93], v92, v127);
    swift_endAccess();
    v96 = v124;
    (*(v95 + 16))(v124, &v5[v93], v94);
    v97 = sub_100761D7C();
    v98 = *(v95 + 8);
    v98(v96, v94);
    [v90 setTextAlignment:v97];
    v98(v92, v94);
  }

  v99 = *&v5[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_tapGestureRecognizer];
  v100 = sub_100761CEC();
  if (v100)
  {
  }

  [v99 setEnabled:v100 != 0];
  return [v5 setNeedsLayout];
}

uint64_t sub_1001A7B3C(uint64_t a1, uint64_t a2)
{
  v81 = a2;
  v3 = sub_10000A5D4(&unk_10094C040, &qword_1007890D0);
  __chkstk_darwin(v3 - 8);
  v80 = &v69 - v4;
  v5 = sub_10000A5D4(&unk_1009467F0, &qword_100796460);
  v78 = *(v5 - 8);
  v79 = v5;
  __chkstk_darwin(v5);
  v76 = &v69 - v6;
  v74 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v74);
  v73 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v72 = &v69 - v9;
  __chkstk_darwin(v10);
  v75 = (&v69 - v11);
  __chkstk_darwin(v12);
  v14 = (&v69 - v13);
  v15 = sub_100761DAC();
  v70 = *(v15 - 8);
  v71 = v15;
  __chkstk_darwin(v15);
  v69 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100761C9C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v69 - v22;
  __chkstk_darwin(v24);
  v26 = &v69 - v25;
  __chkstk_darwin(v27);
  v29 = &v69 - v28;
  sub_100761CAC();
  v30 = sub_100761C5C();
  v31 = *(v18 + 8);
  v31(v29, v17);
  v77 = a1;
  if (!v30)
  {
    v30 = [objc_opt_self() clearColor];
  }

  v32 = *(v82 + OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_mediaViewContainer);
  v33 = type metadata accessor for MediaView();
  v83.receiver = v32;
  v83.super_class = v33;
  objc_msgSendSuper2(&v83, "setBackgroundColor:", v30);
  [*(*&v32[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer] + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents) setBackgroundColor:v30];
  v34 = *&v32[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionView];
  if (v34)
  {
    v35 = v34;
    [v35 setBackgroundColor:v30];
  }

  v36 = *(v82 + OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_backgroundEffectView);
  sub_100761CAC();
  v37 = sub_100761C8C();
  v31(v26, v17);
  v38 = v36[OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_wantsBottomEffect];
  v36[OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_wantsBottomEffect] = v37 & 1;
  if ((v37 & 1) != v38)
  {
    v39 = 0.0;
    if (v37)
    {
      v39 = 1.0;
    }

    [*&v36[OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_blurView] setAlpha:v39];
    [v36 setNeedsDisplay];
  }

  v40 = *(v82 + OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_buttonDetailsView);
  sub_100761CAC();
  v41 = sub_100761C6C();
  v31(v23, v17);
  if (!v41)
  {
    sub_100761D0C();
    v42 = v69;
    sub_100761DBC();

    v41 = sub_100666230(v43);
    (*(v70 + 8))(v42, v71);
  }

  v44 = v74;
  [v40 setTextColor:v41];

  if (qword_1009413C8 != -1)
  {
    swift_once();
  }

  v45 = sub_10000A61C(v44, qword_1009A27E0);
  sub_1000A9194(v45, v14, v46);
  sub_100761CAC();
  v47 = sub_100761C3C();
  v31(v20, v17);

  *v14 = v47;
  sub_100761CAC();
  v48 = sub_100761C4C();
  v31(v20, v17);

  v14[1] = v48;
  sub_100761CAC();
  v49 = sub_100761C6C();
  v31(v20, v17);

  v14[2] = v49;
  sub_100761CAC();
  v50 = sub_100761C7C();
  v31(v20, v17);

  v14[3] = v50;
  if (qword_1009413C0 != -1)
  {
    swift_once();
  }

  v51 = sub_10000A61C(v44, qword_1009A27C8);
  v52 = v75;
  sub_1000A9194(v51, v75, v53);
  sub_100761CAC();
  v54 = sub_100761C3C();
  v31(v20, v17);

  *v52 = v54;
  sub_100761CAC();
  v55 = sub_100761C4C();
  v31(v20, v17);

  v52[1] = v55;
  sub_100761CAC();
  v56 = sub_100761C6C();
  v31(v20, v17);

  v52[2] = v56;
  sub_100761CAC();
  v57 = sub_100761C7C();
  v31(v20, v17);

  v52[3] = v57;
  sub_1000A9194(v14, v72, v58);
  sub_1000A9194(v52, v73, v59);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  v60 = v76;
  sub_10075FDEC();
  v61 = sub_100761D0C();
  v63 = v78;
  v62 = v79;
  v64 = v80;
  (*(v78 + 16))(v80, v60, v79);
  v65.n128_f64[0] = (*(v63 + 56))(v64, 0, 1, v62);
  sub_1006098B0(v65, v61, v64, v81);

  sub_10000CFBC(v64, &unk_10094C040, &qword_1007890D0);
  v66.n128_f64[0] = (*(v63 + 8))(v60, v62);
  sub_1000A91F8(v52, v66);
  return sub_1000A91F8(v14, v67);
}

id sub_1001A84F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UpsellBreakoutSizingTraitEnvironment();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1001A862C(void *a1, uint64_t a2)
{
  v5 = [a1 snapshotPageTraitEnvironment];
  *&v2[OBJC_IVAR____TtC20ProductPageExtensionP33_18AA49E3A0089529D9EAA38FB165277F36UpsellBreakoutSizingTraitEnvironment_pageTraits] = v5;
  v6 = [a1 traitCollection];
  v7 = [v6 preferredContentSizeCategory];

  LOBYTE(v6) = sub_10077085C();
  if (v6)
  {
    sub_10000A5D4(&unk_100942870, &qword_100784460);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100785D70;
    *(v8 + 32) = [a1 traitCollection];
    v9 = objc_opt_self();
    *(v8 + 40) = [v9 traitCollectionWithPreferredContentSizeCategory:a2];
    sub_100016F40(0, &qword_100944E30, UITraitCollection_ptr);
    isa = sub_1007701AC().super.isa;

    v11 = [v9 traitCollectionWithTraitsFromCollections:isa];
  }

  else
  {
    v11 = [a1 traitCollection];
  }

  *&v2[OBJC_IVAR____TtC20ProductPageExtensionP33_18AA49E3A0089529D9EAA38FB165277F36UpsellBreakoutSizingTraitEnvironment_traitCollection] = v11;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for UpsellBreakoutSizingTraitEnvironment();
  return objc_msgSendSuper2(&v13, "init");
}

double sub_1001A87E4(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_100765AEC();
  __chkstk_darwin(v5 - 8);
  v52 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100765B0C();
  v54 = *(v7 - 8);
  v55 = v7;
  __chkstk_darwin(v7);
  v53 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076997C();
  v50 = *(v9 - 8);
  v51 = v9;
  __chkstk_darwin(v9);
  v49 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10077164C();
  v48 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = objc_allocWithZone(type metadata accessor for UpsellBreakoutSizingTraitEnvironment());
  v18 = UIContentSizeCategoryExtraExtraExtraLarge;
  v19 = swift_unknownObjectRetain();
  v20 = sub_1001A862C(v19, v18);
  swift_unknownObjectRelease();

  v21 = qword_1009405B8;
  v56 = *&v20[OBJC_IVAR____TtC20ProductPageExtensionP33_18AA49E3A0089529D9EAA38FB165277F36UpsellBreakoutSizingTraitEnvironment_traitCollection];
  if (v21 != -1)
  {
    swift_once();
  }

  v22 = sub_10000A5D4(&unk_1009467F0, &qword_100796460);
  sub_10000A61C(v22, qword_10099FB98);
  v61[0] = v20;
  v23 = v20;
  sub_10075FDCC();

  type metadata accessor for BreakoutDetailsView(0);
  v24 = sub_100761D0C();
  v25 = v23;
  sub_100608998(v24, v16, v25, v61);

  sub_10016C4BC(v61, &v58);
  v26 = swift_allocObject();
  sub_1001A8FB8(&v58, (v26 + 16));
  v27 = sub_10076DDDC();
  swift_allocObject();
  v28 = sub_10076DD9C();
  if (sub_100761CBC() && (, sub_100761CDC()))
  {
    v47 = v16;
    v29 = v11;

    if (qword_1009405B0 != -1)
    {
      swift_once();
    }

    v30 = sub_10076D9AC();
    sub_10000A61C(v30, qword_10099FB80);
    v31 = v25;
    sub_10076D17C();
    sub_10076D40C();

    (*(v48 + 8))(v13, v29);
    swift_allocObject();
    v32 = sub_10076DDBC();

    v16 = v47;
  }

  else
  {
    v32 = 0;
  }

  sub_100761CCC();
  if (v33)
  {
    sub_100016F40(0, &qword_100942F00, UIFont_ptr);
    if (qword_100941058 != -1)
    {
      swift_once();
    }

    v34 = sub_10076D3DC();
    sub_10000A61C(v34, qword_1009A1F00);
    sub_100770B3C();
    v35 = sub_10076C04C();
    *(&v59 + 1) = v35;
    v60 = sub_1001A936C(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v36 = sub_10000DB7C(&v58);
    (*(*(v35 - 8) + 104))(v36, enum case for Feature.measurement_with_labelplaceholder(_:), v35);
    sub_10076C90C();
    sub_10000CD74(&v58);
    v37 = v49;
    sub_10076996C();
    sub_10076994C();
    (*(v50 + 8))(v37, v51);
  }

  else
  {
    v60 = 0;
    v58 = 0u;
    v59 = 0u;
  }

  v38 = v25;
  sub_10047CBA8(v38, v52, a1);

  swift_allocObject();
  v39 = sub_10076DDBC();
  v40 = &protocol witness table for LayoutViewPlaceholder;
  v57[18] = v27;
  v57[19] = &protocol witness table for LayoutViewPlaceholder;
  v57[14] = &protocol witness table for LayoutViewPlaceholder;
  v57[15] = v39;
  v57[13] = v27;
  v57[10] = v28;
  if (!v32)
  {
    v27 = 0;
    v40 = 0;
    v57[6] = 0;
    v57[7] = 0;
  }

  v57[5] = v32;
  v57[8] = v27;
  v57[9] = v40;
  sub_1001A8FD8(&v58, v57);

  v41 = v53;
  sub_100765AFC();
  v42 = v38;
  sub_100765ABC();
  v44 = v43;

  (*(v54 + 8))(v41, v55);
  sub_10000CFBC(&v58, &qword_10094BB30, qword_100796E40);
  sub_10000CD74(v61);
  sub_1000A91F8(v16, v45);
  return v44;
}

uint64_t sub_1001A8F80()
{
  sub_10000CD74((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

_OWORD *sub_1001A8FB8(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_1001A8FD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_10094BB30, qword_100796E40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1001A9048(double a1, double a2, uint64_t a3, void *a4)
{
  v6 = sub_100765AEC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10047CBA8(a4, v9, a1);
  sub_100765B0C();
  sub_1001A936C(&qword_10094C050, &type metadata accessor for UpsellBreakoutLayout, &protocol conformance descriptor for UpsellBreakoutLayout);
  sub_10076DBDC();
  v11 = v10;
  (*(v7 + 8))(v9, v6);
  v12 = objc_opt_self();
  v13 = [v12 fractionalWidthDimension:1.0];
  v14 = [v12 absoluteDimension:v11];
  v15 = objc_opt_self();
  v16 = [v15 sizeWithWidthDimension:v13 heightDimension:v14];

  v17 = [objc_opt_self() itemWithLayoutSize:v16];
  v18 = objc_opt_self();
  v19 = [v12 fractionalWidthDimension:1.0];
  v20 = [v12 absoluteDimension:v11];
  v21 = [v15 sizeWithWidthDimension:v19 heightDimension:v20];

  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1007841E0;
  *(v22 + 32) = v17;
  sub_100016F40(0, &qword_100952C70, NSCollectionLayoutItem_ptr);
  v23 = v17;
  isa = sub_1007701AC().super.isa;

  v25 = [v18 horizontalGroupWithLayoutSize:v21 subitems:isa];

  return v25;
}

uint64_t sub_1001A936C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_1001A93B4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1001A93C8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1001A9410(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001A9464@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, int a7@<W7>, uint64_t a8@<X8>, double a13@<D4>, double a14@<D5>, double a17, double a18)
{
  v52 = a7;
  v53 = a6;
  v51 = a5;
  v60 = a8;
  v61 = a4;
  v58 = a2;
  v59 = a3;
  v55 = a13;
  v56 = a14;
  v50 = sub_10076EA6C();
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_10076B5BC();
  v62 = *(v57 - 8);
  __chkstk_darwin(v57);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10076C36C();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v48 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v46 - v25;
  v27 = sub_10000A5D4(&qword_100942C40, &unk_100786C80);
  __chkstk_darwin(v27);
  v29 = &v46 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v46 - v31;
  sub_100016E2C(v58, &v46 - v31, &qword_1009499A0, &qword_1007848B0);
  sub_100016E2C(v59, &v32[*(v27 + 48)], &qword_1009499A0, &qword_1007848B0);
  swift_getKeyPath();
  sub_10000A5D4(&unk_100946720, &qword_100784820);
  sub_10076F49C();

  v58 = v22;
  v33 = *(v22 + 104);
  v34 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v64)
  {
    v34 = &enum case for PageGrid.Direction.vertical(_:);
  }

  v35 = *v34;
  v59 = v21;
  v33(v26, v35, v21);
  swift_getKeyPath();
  sub_10076F49C();

  v36 = *(v62 + 88);
  v54 = v20;
  v37 = v57;
  if (v36(v20) == enum case for Shelf.ContentType.searchChartsAndCategories(_:))
  {
    v38 = v32;
    v39 = v58;
    v40 = v59;
    if (v52)
    {
      v41 = 2;
    }

    else
    {
      v41 = v53;
    }

    v42 = v47;
    sub_10076202C();
    v43 = sub_10076EA4C();
    (*(v49 + 8))(v42, v50);
    if (v43 & 1) != 0 && (sub_10076204C())
    {
      v41 = 1;
    }

    (*(v39 + 16))(v48, v26, v40);
    sub_10003F1A0(v41);
    sub_10076C33C();
    (*(v39 + 8))(v26, v40);
    return sub_10000CFBC(v38, &qword_100942C40, &unk_100786C80);
  }

  else
  {
    v63 = v51;
    sub_100016E2C(v32, v29, &qword_100942C40, &unk_100786C80);
    v45 = *(v27 + 48);
    sub_100061E6C();
    sub_1007620BC();
    (*(v58 + 8))(v26, v59);
    sub_10000CFBC(v32, &qword_100942C40, &unk_100786C80);
    sub_10000CFBC(&v29[v45], &qword_1009499A0, &qword_1007848B0);
    sub_10000CFBC(v29, &qword_1009499A0, &qword_1007848B0);
    return (*(v62 + 8))(v54, v37);
  }
}

uint64_t sub_1001A9A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  sub_1001A9E80();

  return sub_1007620BC();
}

uint64_t sub_1001A9B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  sub_1001A9E80();

  return sub_1007620AC();
}

uint64_t sub_1001A9C24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A9EDC();

  return PageGridCaching<>.invalidateCache()(a1, v4, a2);
}

uint64_t sub_1001A9C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a14@<D6>, double a15@<D7>, double a16, double a17)
{
  v31[6] = a5;
  v31[7] = a6;
  v31[5] = a4;
  *&v31[3] = a14;
  *&v31[4] = a15;
  v31[1] = a7;
  v31[2] = a1;
  v20 = sub_10000A5D4(&qword_100942C40, &unk_100786C80);
  v21 = v20 - 8;
  __chkstk_darwin(v20);
  v23 = v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = v31 - v25;
  v27 = *(v17 + 2);
  v28 = *(v17 + 24);
  sub_100016E2C(a2, v31 - v25, &qword_1009499A0, &qword_1007848B0);
  sub_100016E2C(a3, &v26[*(v21 + 56)], &qword_1009499A0, &qword_1007848B0);
  v32 = *v17;
  v33 = v27;
  v34 = v28;
  sub_100016E2C(v26, v23, &qword_100942C40, &unk_100786C80);
  v29 = *(v21 + 56);
  sub_1007620BC();
  sub_10000CFBC(v26, &qword_100942C40, &unk_100786C80);
  sub_10000CFBC(&v23[v29], &qword_1009499A0, &qword_1007848B0);
  return sub_10000CFBC(v23, &qword_1009499A0, &qword_1007848B0);
}

unint64_t sub_1001A9E80()
{
  result = qword_10094C058;
  if (!qword_10094C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094C058);
  }

  return result;
}

unint64_t sub_1001A9EDC()
{
  result = qword_10094C060;
  if (!qword_10094C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094C060);
  }

  return result;
}

uint64_t CrossLinkLockupLayout.init(metrics:artworkView:lockupView:crossLinkTitleText:crossLinkSubtitleText:)@<X0>(double *a1@<X0>, void *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X8>)
{
  sub_1001A9FF0(a1, a6 + 160);
  sub_10000CF78(a2, a2[3]);
  sub_10076D28C();
  sub_1001AA028(a1);
  sub_100012498(a3, a6 + 40);
  sub_100012498(a4, a6 + 80);
  sub_100012498(a5, a6 + 120);

  return sub_10000CD74(a2);
}

uint64_t CrossLinkLockupLayout.Metrics.init(artworkSize:artworkMargin:subtitleSpace:numberOfLines:offerButtonSize:offerButtonMargin:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  *a5 = a6;
  *(a5 + 8) = a7;
  sub_100012498(a1, a5 + 16);
  sub_100012498(a2, a5 + 56);
  *(a5 + 96) = a3;
  *(a5 + 104) = a8;
  *(a5 + 112) = a9;

  return sub_100012498(a4, a5 + 120);
}

uint64_t TodayCardLockupLayout.Metrics.artworkMargin.setter(__int128 *a1)
{
  sub_10000CD74((v1 + 16));

  return sub_100012498(a1, v1 + 16);
}

uint64_t CrossLinkLockupLayout.Metrics.subtitleSpace.setter(__int128 *a1)
{
  sub_10000CD74((v1 + 56));

  return sub_100012498(a1, v1 + 56);
}

uint64_t CrossLinkLockupLayout.Metrics.offerButtonMargin.setter(__int128 *a1)
{
  sub_10000CD74((v1 + 120));

  return sub_100012498(a1, v1 + 120);
}

__n128 CrossLinkLockupLayout.Metrics.init(byCopying:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 112);
  a2[6] = *(a1 + 96);
  a2[7] = v2;
  v3 = *(a1 + 144);
  a2[8] = *(a1 + 128);
  a2[9] = v3;
  v4 = *(a1 + 48);
  a2[2] = *(a1 + 32);
  a2[3] = v4;
  v5 = *(a1 + 80);
  a2[4] = *(a1 + 64);
  a2[5] = v5;
  result = *a1;
  v7 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v7;
  return result;
}

uint64_t CrossLinkLockupLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>, uint64_t a6@<X8>)
{
  v11 = [a1 traitCollection];
  v12 = sub_10077071C();

  if (v12)
  {

    return sub_1001AA3A0(a6, a2, a3, a4, a5);
  }

  else
  {

    return sub_1001AA8E4(a6, a2, a3, a4, a5);
  }
}

uint64_t sub_1001AA3A0@<X0>(uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v31 = a2;
  v30 = sub_10076D1FC();
  v29 = *(v30 - 8);
  __chkstk_darwin(v30);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10076E0BC();
  v27 = *(v28 - 8);
  __chkstk_darwin(v28);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10077164C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35.origin.x = a3;
  v35.origin.y = a4;
  v35.size.width = a5;
  v35.size.height = a6;
  MinY = CGRectGetMinY(v35);
  sub_10000CF78(v6, *(v6 + 3));
  if ((sub_10076D24C() & 1) == 0)
  {
    v36.origin.x = a3;
    v36.origin.y = a4;
    v36.size.width = a5;
    v36.size.height = a6;
    MinX = CGRectGetMinX(v36);
    v21 = v6[20];
    v22 = v6[21];
    sub_10000CF78(v6, *(v6 + 3));
    sub_100770A4C();
    sub_10076D23C();
    v37.origin.x = MinX;
    v37.origin.y = MinY;
    v37.size.width = v21;
    v37.size.height = v22;
    CGRectGetMaxY(v37);
    v23 = *(v6 + 25);
    sub_10000CF78(v6 + 22, v23);
    sub_1000FF02C(v23);
    sub_10076D40C();
    (*(v16 + 8))(v18, v15);
  }

  v38.origin.x = a3;
  v38.origin.y = a4;
  v38.size.width = a5;
  v38.size.height = a6;
  CGRectGetMinX(v38);
  v39.origin.x = a3;
  v39.origin.y = a4;
  v39.size.width = a5;
  v39.size.height = a6;
  CGRectGetWidth(v39);
  v40.origin.x = a3;
  v40.origin.y = a4;
  v40.size.width = a5;
  v40.size.height = a6;
  CGRectGetMaxY(v40);
  sub_10000CF78(v6 + 5, *(v6 + 8));
  sub_100770A4C();
  sub_10076D23C();
  v41.origin.x = a3;
  v41.origin.y = a4;
  v41.size.width = a5;
  v41.size.height = a6;
  CGRectGetMaxY(v41);
  v24 = *(v6 + 38);
  sub_10000CF78(v6 + 35, v24);
  sub_1000FF02C(v24);
  sub_10076D40C();
  (*(v16 + 8))(v18, v15);
  v42.origin.x = a3;
  v42.origin.y = a4;
  v42.size.width = a5;
  v42.size.height = a6;
  CGRectGetMinX(v42);
  v43.origin.x = a3;
  v43.origin.y = a4;
  v43.size.width = a5;
  v43.size.height = a6;
  CGRectGetWidth(v43);
  sub_100770A4C();
  sub_10000A570((v6 + 10), v34);
  sub_10000A570((v6 + 15), v33);
  sub_10000A570((v6 + 27), v32);
  sub_10076E09C();
  sub_10076E0AC();
  (*(v29 + 8))(v12, v30);
  sub_10076D1BC();
  return (*(v27 + 8))(v14, v28);
}

uint64_t sub_1001AA8E4@<X0>(uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v32 = a2;
  v31 = sub_10076D1FC();
  v30 = *(v31 - 8);
  __chkstk_darwin(v31);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10076E0BC();
  v28 = *(v29 - 8);
  __chkstk_darwin(v29);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10077164C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36.origin.x = a3;
  v36.origin.y = a4;
  v36.size.width = a5;
  v36.size.height = a6;
  CGRectGetMinX(v36);
  sub_10000CF78(v6, *(v6 + 24));
  if ((sub_10076D24C() & 1) == 0)
  {
    v37.origin.x = a3;
    v37.origin.y = a4;
    v37.size.width = a5;
    v37.size.height = a6;
    MinX = CGRectGetMinX(v37);
    v38.origin.x = a3;
    v38.origin.y = a4;
    v38.size.width = a5;
    v38.size.height = a6;
    MidY = CGRectGetMidY(v38);
    v22 = *(v6 + 160);
    v21 = *(v6 + 168);
    v23 = floor(MidY + v21 * -0.5);
    sub_10000CF78(v6, *(v6 + 24));
    sub_100770A4C();
    sub_10076D23C();
    v39.origin.x = MinX;
    v39.origin.y = v23;
    v39.size.width = v22;
    v39.size.height = v21;
    CGRectGetMaxX(v39);
    v24 = *(v6 + 200);
    sub_10000CF78((v6 + 176), v24);
    sub_1000FF02C(v24);
    sub_10076D40C();
    (*(v16 + 8))(v18, v15);
  }

  v40.origin.x = a3;
  v40.origin.y = a4;
  v40.size.width = a5;
  v40.size.height = a6;
  CGRectGetMaxX(v40);
  v41.origin.x = a3;
  v41.origin.y = a4;
  v41.size.width = a5;
  v41.size.height = a6;
  CGRectGetMinY(v41);
  v42.origin.x = a3;
  v42.origin.y = a4;
  v42.size.width = a5;
  v42.size.height = a6;
  CGRectGetHeight(v42);
  sub_10000CF78((v6 + 40), *(v6 + 64));
  sub_100770A4C();
  sub_10076D23C();
  v25 = *(v6 + 304);
  sub_10000CF78((v6 + 280), v25);
  sub_1000FF02C(v25);
  sub_10076D40C();
  (*(v16 + 8))(v18, v15);
  v43.origin.x = a3;
  v43.origin.y = a4;
  v43.size.width = a5;
  v43.size.height = a6;
  CGRectGetMinY(v43);
  v44.origin.x = a3;
  v44.origin.y = a4;
  v44.size.width = a5;
  v44.size.height = a6;
  CGRectGetHeight(v44);
  sub_100770A4C();
  sub_10000A570(v6 + 80, v35);
  sub_10000A570(v6 + 120, v34);
  sub_10000A570(v6 + 216, v33);
  sub_10076E09C();
  sub_10076E0AC();
  (*(v30 + 8))(v12, v31);
  sub_10076D1BC();
  return (*(v28 + 8))(v14, v29);
}

uint64_t sub_1001AAE34(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_1001AB0D8();
  v11.n128_f64[0] = a4;
  v12.n128_f64[0] = a5;

  return EstimatedMeasurable<>.measurements(fitting:in:)(a1, a2, v10, a3, v11, v12);
}

unint64_t sub_1001AAEA4()
{
  result = qword_10094C068;
  if (!qword_10094C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094C068);
  }

  return result;
}

uint64_t sub_1001AAF00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 320))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001AAF48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 312) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 320) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 320) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1001AAFEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_1001AB018(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001AB060(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
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
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1001AB0D8()
{
  result = qword_10094C070;
  if (!qword_10094C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094C070);
  }

  return result;
}

char *sub_1001AB12C(uint64_t a1, uint64_t a2, int a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v73 = a3;
  v72 = a1;
  v14 = sub_10076F9AC();
  v78 = *(v14 - 8);
  v79 = v14;
  __chkstk_darwin(v14);
  v77 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_10076771C();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v69 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v17 - 8);
  v19 = &v68 - v18;
  v20 = sub_100760B4C();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10000A5D4(&qword_1009622B0, qword_100787B30);
  __chkstk_darwin(v24 - 8);
  v26 = &v68 - v25;
  v27 = &v7[OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_offerLabelPresenter];
  *v27 = 0u;
  *(v27 + 1) = 0u;
  v28 = &v7[OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_offerButtonTapHandler];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_metrics;
  v30 = sub_100763E9C();
  v31 = *(v30 - 8);
  v75 = v30;
  v76 = v31;
  v32 = *(v31 + 16);
  v74 = a2;
  v32(&v8[v29], a2, v30);
  v68 = sub_100760B6C();
  v33 = enum case for Wordmark.arcade(_:);
  v34 = sub_10076C43C();
  v35 = *(v34 - 8);
  (*(v35 + 104))(v26, v33, v34);
  (*(v35 + 56))(v26, 0, 1, v34);
  sub_100763E8C();
  (*(v21 + 104))(v23, enum case for WordmarkView.Alignment.leading(_:), v20);
  v36 = *(&v83 + 1);
  v37 = v84;
  v38 = sub_10008B8A4(&v82, *(&v83 + 1));
  v39 = __chkstk_darwin(v38);
  v41 = &v68 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v42 + 16))(v41, v39);
  v43 = sub_1001AC4BC(v26, v41, v23, v68, v36, v37, 0.0, 0.0, 0.0, 0.0);
  sub_10000CD74(&v82);
  *&v8[OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_wordmarkView] = v43;
  v44 = sub_10076D3DC();
  v45 = *(v44 - 8);
  v46 = v72;
  (*(v45 + 16))(v19, v72, v44);
  (*(v45 + 56))(v19, 0, 1, v44);
  (*(v70 + 104))(v69, enum case for DirectionalTextAlignment.leading(_:), v71);
  v47 = objc_allocWithZone(sub_1007626BC());
  *&v8[OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_subtitleLabel] = sub_1007626AC();
  v48 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v8[OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_offerButton] = sub_1001E89B8(v73);
  v49 = type metadata accessor for ArcadeLockupView(0);
  v81.receiver = v8;
  v81.super_class = v49;
  v50 = objc_msgSendSuper2(&v81, "initWithFrame:", a4, a5, a6, a7);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v54 = v50;
  [v54 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v54 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  v55 = OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_wordmarkView;
  v56 = *&v54[OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_wordmarkView];
  sub_1000325F0();
  v57 = v56;
  v58 = sub_100770CFC();
  [v57 setTintColor:v58];

  [v54 addSubview:*&v54[v55]];
  v59 = OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_subtitleLabel;
  v60 = *&v54[OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_subtitleLabel];
  v61 = sub_100770D1C();
  [v60 setTextColor:v61];

  v62 = *&v54[v59];
  sub_10076266C();

  v63 = *&v54[v59];
  v82 = 0u;
  v83 = 0u;
  memset(v80, 0, sizeof(v80));
  v64 = v63;
  v65 = v77;
  sub_10076F95C();
  sub_1000258C0(v80);
  sub_1000258C0(&v82);
  sub_100770B9C();

  (*(v78 + 8))(v65, v79);
  [v54 addSubview:*&v54[v59]];
  v66 = OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_offerButton;
  [*&v54[OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_offerButton] addTarget:v54 action:"offerButtonWasTapped" forControlEvents:64];
  [v54 addSubview:*&v54[v66]];

  (*(v76 + 8))(v74, v75);
  (*(v45 + 8))(v46, v44);
  return v54;
}

void sub_1001ABA00(double a1, double a2)
{
  v3 = v2;
  v20 = sub_100763E9C();
  v4 = *(v20 - 8);
  __chkstk_darwin(v20);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100763EAC();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v3 layoutMargins];
  sub_100770ACC();
  v12 = *&v3[OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_wordmarkView];
  v28 = sub_100760B6C();
  v29 = &protocol witness table for UIView;
  v27 = v12;
  v13 = *&v3[OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_subtitleLabel];
  v25 = sub_1007626BC();
  v26 = &protocol witness table for UILabel;
  v24 = v13;
  v14 = *&v3[OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_offerButton];
  v22 = type metadata accessor for OfferButton();
  v23 = &protocol witness table for UIView;
  v21 = v14;
  v15 = OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_metrics;
  swift_beginAccess();
  (*(v4 + 16))(v6, &v3[v15], v20);
  v16 = v12;
  v17 = v13;
  v18 = v14;
  sub_100763E5C();
  sub_1001AC58C(v19);
  sub_10076D2AC();
  (*(v8 + 8))(v11, v7);
  [v3 layoutMargins];
  sub_100770AEC();
}

uint64_t sub_1001ABCDC()
{
  v22 = sub_10076D1FC();
  v21 = *(v22 - 8);
  __chkstk_darwin(v22);
  v20 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100763E9C();
  v2 = *(v18 - 8);
  __chkstk_darwin(v18);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100763EAC();
  v5 = *(v19 - 8);
  __chkstk_darwin(v19);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ArcadeLockupView(0);
  v32.receiver = v0;
  v32.super_class = v8;
  objc_msgSendSuper2(&v32, "layoutSubviews");
  v9 = *&v0[OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_wordmarkView];
  v30 = sub_100760B6C();
  v31 = &protocol witness table for UIView;
  v29 = v9;
  v10 = *&v0[OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_subtitleLabel];
  v27 = sub_1007626BC();
  v28 = &protocol witness table for UILabel;
  v26 = v10;
  v11 = *&v0[OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_offerButton];
  v24 = type metadata accessor for OfferButton();
  v25 = &protocol witness table for UIView;
  v23 = v11;
  v12 = OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_metrics;
  swift_beginAccess();
  (*(v2 + 16))(v4, &v0[v12], v18);
  v13 = v9;
  v14 = v10;
  v15 = v11;
  sub_100763E5C();
  sub_10076422C();
  v16 = v20;
  sub_100763E6C();
  (*(v21 + 8))(v16, v22);
  return (*(v5 + 8))(v7, v19);
}

id sub_1001AC230()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArcadeLockupView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ArcadeLockupView(uint64_t a1)
{
  result = qword_10094C0C0;
  if (!qword_10094C0C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001AC37C(uint64_t a1)
{
  result = sub_100763E9C();
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

uint64_t sub_1001AC430@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_metrics;
  swift_beginAccess();
  v5 = sub_100763E9C();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_1001AC4BC(uint64_t a1, uint64_t a2, uint64_t a3, objc_class *a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10)
{
  v16[3] = a5;
  v16[4] = a6;
  v13 = sub_10000DB7C(v16);
  (*(*(a5 - 8) + 32))(v13, a2, a5);
  v14 = objc_allocWithZone(a4);
  return sub_100760B3C();
}

unint64_t sub_1001AC58C(__n128 a1)
{
  result = qword_10094C0D0;
  if (!qword_10094C0D0)
  {
    sub_100763EAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094C0D0);
  }

  return result;
}

uint64_t type metadata accessor for HeaderButton(uint64_t a1)
{
  result = qword_10094C100;
  if (!qword_10094C100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001AC680()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_10094C0D8);
  v1 = sub_10000A61C(v0, qword_10094C0D8);
  if (qword_100940A10 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A61C(v0, qword_1009A0C40);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001AC748()
{
  v0 = sub_10076D3DC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HeaderButton(0);
  if (qword_10093F980 != -1)
  {
    swift_once();
  }

  v4 = sub_10000A61C(v0, qword_10094C0D8);
  (*(v1 + 16))(v3, v4, v0);
  result = sub_10076312C();
  qword_10094C0F0 = result;
  return result;
}

uint64_t sub_1001AC864(uint64_t a1)
{
  v1 = sub_10076D3DC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  if (qword_10093F980 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A61C(v1, qword_10094C0D8);
  (*(v2 + 16))(v4, v5, v1);
  v6 = sub_10076312C();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v6;
}

id sub_1001AC9A8(void *a1)
{
  v2 = v1;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for HeaderButton(0);
  objc_msgSendSuper2(&v13, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = [v4 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v5 != result))
  {
    v7 = *&v2[qword_10094C0F8];
    v8 = [v2 traitCollection];
    v9 = sub_10077070C();

    if (v9)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0.0;
    }

    if (v9)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = v7;
    }

    if (v9)
    {
      v12 = -v7;
    }

    else
    {
      v12 = v7;
    }

    if ((v9 & 1) == 0)
    {
      v7 = -v7;
    }

    [v2 setContentEdgeInsets:{0.0, v11, 0.0, v10}];
    return [v2 setImageEdgeInsets:{0.0, v7, 0.0, v12}];
  }

  return result;
}

void sub_1001ACADC(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_1001AC9A8(a3);
}

id sub_1001ACB48(char *a1, double a2, double a3, double a4, double a5)
{
  *&a1[qword_10094C0F8] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for HeaderButton(0);
  return objc_msgSendSuper2(&v10, "initWithFrame:", a2, a3, a4, a5);
}

id sub_1001ACBC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeaderButton(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001ACC0C(uint64_t a1, uint64_t a2, double a3)
{
  v4 = sub_10076D1AC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076D3DC();
  (*(*(v8 - 8) + 16))(v7, a1, v8);
  (*(v5 + 104))(v7, enum case for FontSource.useCase(_:), v4);
  v12[3] = v4;
  v12[4] = &protocol witness table for FontSource;
  v9 = sub_10000DB7C(v12);
  (*(v5 + 16))(v9, v7, v4);
  sub_10076C8EC();
  (*(v5 + 8))(v7, v4);
  sub_10000CD74(v12);
  return JUScreenClassGetMain();
}

id sub_1001ACDAC()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension16SearchController____lazy_storage____searchBar;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension16SearchController____lazy_storage____searchBar);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension16SearchController____lazy_storage____searchBar);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for SearchBar()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1001ACE74()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_10000A5D4(&unk_10095B400, &unk_100783F80);
  __chkstk_darwin(v2 - 8);
  v4 = &v24 - v3;
  sub_10000A5D4(&unk_100945BF0, &qword_100786810);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100783DD0;
  *(v5 + 32) = sub_10076E59C();
  *(v5 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  sub_10077061C();
  swift_unknownObjectRelease();

  v6 = sub_1001ACDAC();
  v7 = [v6 searchTextField];

  v8 = objc_allocWithZone(type metadata accessor for SearchTextInputSourceTextField());
  v9 = sub_10046702C(v7);
  v10 = *&v1[OBJC_IVAR____TtC20ProductPageExtension16SearchController_searchTextInput];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension16SearchController_searchTextInput] = v9;

  v11 = OBJC_IVAR____TtC20ProductPageExtension16SearchController____lazy_storage____searchBar;
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension16SearchController____lazy_storage____searchBar] setDelegate:v1];
  v12 = *&v1[v11];
  sub_100510CD4();

  v13 = *&v1[OBJC_IVAR____TtC20ProductPageExtension16SearchController_filterButton];
  sub_1007710FC();
  v25._countAndFlagsBits = 0x465F484352414553;
  v25._object = 0xEE00535245544C49;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  sub_1007622EC(v25, v26);
  sub_1007710EC();
  v14 = sub_1005A5DB8(0xD000000000000010, 0x80000001007D7A00, 0);
  v15 = [v14 imageWithRenderingMode:2];

  sub_1007710BC();
  sub_100770FBC();
  sub_100770FFC();
  v16 = sub_10077111C();
  (*(*(v16 - 8) + 56))(v4, 0, 1, v16);
  sub_10077114C();
  [v13 setMinimumContentSizeCategory:UIContentSizeCategoryLarge];
  [v13 setMaximumContentSizeCategory:UIContentSizeCategoryLarge];
  v17 = 0.0;
  [v13 setAlpha:0.0];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100016F40(0, &qword_1009641D0, UIAction_ptr);
  v18 = sub_100770F1C();
  [v13 addAction:v18 forControlEvents:64];

  [v13 setPointerInteractionEnabled:1];
  [*&v1[v11] _setSearchFieldContainerLayoutCustomizationDelegate:v1];
  v19 = [v1 traitCollection];
  [v19 horizontalSizeClass];
  LOBYTE(v4) = sub_1007706CC();
  [*&v1[v11] _additionalPaddingForSearchFieldAtLeadingEdge];
  v21 = v20;
  if (v4)
  {
    [v13 sizeThatFits:{1.79769313e308, 1.79769313e308}];
    v17 = v22 + 15.0;
  }

  if (v17 != v21)
  {
    v23 = *&v1[v11];
    [v23 _setAdditionalPaddingForSearchFieldAtLeadingEdge:v17];
  }
}

void sub_1001AD5E0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *&Strong[OBJC_IVAR____TtC20ProductPageExtension16SearchController_filterButtonHandler];
    if (v3)
    {
      v4 = *&Strong[OBJC_IVAR____TtC20ProductPageExtension16SearchController_filterButtonHandler + 8];
      v5 = *&Strong[OBJC_IVAR____TtC20ProductPageExtension16SearchController_filterButton];
      v6 = Strong;
      sub_10001CE50(*&Strong[OBJC_IVAR____TtC20ProductPageExtension16SearchController_filterButtonHandler], v4);
      v7 = v5;
      v3();
      sub_1000167E0(v3, v4);

      Strong = v7;
    }
  }
}

unint64_t sub_1001AD70C(uint64_t a1, uint64_t a2)
{
  v10.receiver = v2;
  v10.super_class = type metadata accessor for SearchController();
  v3 = objc_msgSendSuper2(&v10, "keyCommands");
  if (v3)
  {
    v4 = v3;
    sub_100016F40(0, &unk_10094C270, UIKeyCommand_ptr);
    v5 = sub_1007701BC();
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v11 = v5;
  v6 = UIKeyInputEscape;
  v12._object = 0x80000001007D7A20;
  v12._countAndFlagsBits = 0xD000000000000035;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  sub_1007622EC(v12, v13);
  v7 = sub_10076FF6C();

  v8 = [objc_opt_self() keyCommandWithInput:v6 modifierFlags:0 action:"handleCancelKeyCommandWithCommand:" discoverabilityTitle:v7];

  sub_10077019C();
  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
  return v11;
}

id sub_1001AD928(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC20ProductPageExtension16SearchController_messagesSearchBarVerticalSpace] = 0x4024000000000000;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension16SearchController_filterButtonMinimumHorizontalSpace] = 0x402E000000000000;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension16SearchController_searchTextInput] = 0;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension16SearchController____lazy_storage____searchBar] = 0;
  v6 = &v3[OBJC_IVAR____TtC20ProductPageExtension16SearchController_filterButtonHandler];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = OBJC_IVAR____TtC20ProductPageExtension16SearchController_filterButton;
  *&v3[v7] = [objc_opt_self() buttonWithType:1];
  if (a2)
  {
    v8 = sub_10076FF6C();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for SearchController();
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

id sub_1001ADA94(void *a1)
{
  *&v1[OBJC_IVAR____TtC20ProductPageExtension16SearchController_messagesSearchBarVerticalSpace] = 0x4024000000000000;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension16SearchController_filterButtonMinimumHorizontalSpace] = 0x402E000000000000;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension16SearchController_searchTextInput] = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension16SearchController____lazy_storage____searchBar] = 0;
  v3 = &v1[OBJC_IVAR____TtC20ProductPageExtension16SearchController_filterButtonHandler];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = OBJC_IVAR____TtC20ProductPageExtension16SearchController_filterButton;
  *&v1[v4] = [objc_opt_self() buttonWithType:1];
  v7.receiver = v1;
  v7.super_class = type metadata accessor for SearchController();
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id sub_1001ADB9C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SearchController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_1001ADC64(char *a1, void *a2)
{
  v13 = [a1 traitCollection];
  v4 = [v13 horizontalSizeClass];
  v5 = v4 == [a2 horizontalSizeClass];
  v6 = v13;
  if (!v5)
  {
    v7 = sub_1007706CC();
    v8 = sub_1001ACDAC();
    [v8 _additionalPaddingForSearchFieldAtLeadingEdge];
    v10 = v9;

    v11 = 0.0;
    if (v7)
    {
      [*&a1[OBJC_IVAR____TtC20ProductPageExtension16SearchController_filterButton] sizeThatFits:{1.79769313e308, 1.79769313e308}];
      v11 = v12 + 15.0;
    }

    v6 = v13;
    if (v11 != v10)
    {
      [*&a1[OBJC_IVAR____TtC20ProductPageExtension16SearchController____lazy_storage____searchBar] _setAdditionalPaddingForSearchFieldAtLeadingEdge:?];
      v6 = v13;
    }
  }
}

uint64_t sub_1001ADD78()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1001ADDB8()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = *&v0[OBJC_IVAR____TtC20ProductPageExtension16SearchController_searchTextInput];
  if (!v5)
  {
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = sub_1004665E0();

  if (v7)
  {
    v8 = [v1 searchResultsController];
    if (v8)
    {
      v9 = v8;
      type metadata accessor for SearchResultsContainerViewController();
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        v19 = *(v10 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_activeSearchSectionViewController);
        v11 = v19;

        if (v19)
        {
          type metadata accessor for StoreCollectionViewController();
          v12 = swift_dynamicCastClass();
          if (v12)
          {
            v13 = *(v12 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph);
            v14 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);

            sub_10076F5AC();
            v15 = *(v14 - 8);
            if ((*(v15 + 48))(v4, 1, v14) == 1)
            {
              sub_1000527AC(v4);
            }

            else
            {

              sub_100263FFC(v17, 1, v13, v4);

              (*(v15 + 8))(v4, v14);
            }

            [*&v1[OBJC_IVAR____TtC20ProductPageExtension16SearchController_filterButton] setEnabled:1];

            return;
          }

          goto LABEL_11;
        }
      }

      else
      {
      }
    }

    v19 = 0;
LABEL_11:
    [*&v1[OBJC_IVAR____TtC20ProductPageExtension16SearchController_filterButton] setEnabled:0];

    v16 = v19;
  }
}

void sub_1001AE054(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  if ([v5 isActive])
  {
    v12 = [v5 traitCollection];
    v13 = [v12 horizontalSizeClass];

    v14 = v13 == 1;
  }

  else
  {
    v14 = 1;
  }

  v15 = *&v6[OBJC_IVAR____TtC20ProductPageExtension16SearchController_filterButton];
  [v15 sizeThatFits:{1.79769313e308, 1.79769313e308}];
  v17 = v16;
  v42.origin.x = a2;
  v42.origin.y = a3;
  v42.size.width = a4;
  v42.size.height = a5;
  Height = CGRectGetHeight(v42);
  v43.origin.x = a2;
  v43.origin.y = a3;
  v43.size.width = a4;
  v43.size.height = a5;
  MinY = CGRectGetMinY(v43);
  v44.origin.x = a2;
  v44.origin.y = a3;
  v44.size.width = a4;
  v44.size.height = a5;
  v20 = CGRectGetHeight(v44);
  v21 = [v6 traitCollection];
  v22 = sub_10077070C();

  if (!v14)
  {
    v25 = a2;
    v26 = a3;
    v27 = a4;
    v28 = a5;
    if (v22)
    {
      MaxX = CGRectGetMaxX(*&v25);
      v30 = 15.0;
    }

    else
    {
      MaxX = CGRectGetMinX(*&v25) - v17;
      v30 = -15.0;
    }

    v23 = MaxX + v30;
    v24 = 1.0;
    goto LABEL_14;
  }

  if (v22)
  {
    if (!a1)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    [a1 frame];
    v23 = CGRectGetMaxX(v45) + 15.0 + 8.0;
    v24 = 0.0;
LABEL_14:
    v31 = MinY + (v20 - Height) * 0.5;
    v32 = swift_allocObject();
    *(v32 + 16) = v6;
    *(v32 + 24) = v23;
    *(v32 + 32) = v31;
    *(v32 + 40) = v17;
    *(v32 + 48) = Height;
    *(v32 + 56) = v24;
    v33 = v6;
    v34 = [v15 superview];
    if (v34)
    {

      [v15 setFrame:{v23, v31, v17, Height}];
      [v15 setAlpha:v24];
      v35 = 0;
      v36 = 0;
LABEL_19:
      [v15 setUserInteractionEnabled:v24 > 0.0];
      v40 = sub_1001ACDAC();
      sub_100510CD4();

      sub_1000167E0(v35, v36);
      return;
    }

    if (a1)
    {
      [a1 addSubview:v15];
      v37 = objc_opt_self();
      v38 = swift_allocObject();
      v35 = sub_1001AE650;
      *(v38 + 16) = sub_1001AE650;
      *(v38 + 24) = v32;
      v41[4] = sub_1000349FC;
      v41[5] = v38;
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 1107296256;
      v41[2] = sub_1001C5148;
      v41[3] = &unk_10088B238;
      v39 = _Block_copy(v41);

      [v37 performWithoutAnimation:v39];
      _Block_release(v39);
      LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

      if ((v37 & 1) == 0)
      {
        v36 = v32;
        goto LABEL_19;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_22;
  }

  if (a1)
  {
    [a1 frame];
    v23 = CGRectGetMinX(v46) - (v17 + 15.0 + 8.0);
    v24 = 0.0;
    goto LABEL_14;
  }

LABEL_23:
  __break(1u);
}

id sub_1001AE46C()
{
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension16SearchController_filterButton] setEnabled:0];
  if ([v0 delegate])
  {
    ObjectType = swift_getObjectType();
    v2 = swift_conformsToProtocol2();
    if (v2)
    {
      (*(v2 + 8))(ObjectType, v2);
    }

    swift_unknownObjectRelease();
  }

  return [v0 setActive:0];
}

id sub_1001AE554(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC20ProductPageExtension16SearchController_messagesSearchBarVerticalSpace] = 0x4024000000000000;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension16SearchController_filterButtonMinimumHorizontalSpace] = 0x402E000000000000;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension16SearchController_searchTextInput] = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension16SearchController____lazy_storage____searchBar] = 0;
  v3 = &v1[OBJC_IVAR____TtC20ProductPageExtension16SearchController_filterButtonHandler];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = OBJC_IVAR____TtC20ProductPageExtension16SearchController_filterButton;
  *&v1[v4] = [objc_opt_self() buttonWithType:1];
  v6.receiver = v1;
  v6.super_class = type metadata accessor for SearchController();
  return objc_msgSendSuper2(&v6, "initWithSearchResultsController:", a1);
}

uint64_t sub_1001AE618()
{

  return _swift_deallocObject(v0, 64, 7);
}

id sub_1001AE650()
{
  v1 = *(v0 + 56);
  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC20ProductPageExtension16SearchController_filterButton);
  [v2 setFrame:{*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48)}];

  return [v2 setAlpha:v1];
}

double sub_1001AE6D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

char *sub_1001AE6E8(double a1, double a2, double a3, double a4)
{
  v9 = sub_10076F9AC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension68MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithAlignedRegionBackgroundView] = 0;
  v13 = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell(0);
  v21.receiver = v4;
  v21.super_class = v13;
  v14 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  v15 = [v14 contentView];
  [v15 setClipsToBounds:1];

  v16 = sub_1001AE938();
  [v16 setClipsToBounds:1];

  v17 = [v14 contentView];
  [v17 addSubview:*&v14[OBJC_IVAR____TtC20ProductPageExtension68MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithAlignedRegionBackgroundView]];

  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  sub_10076F95C();
  sub_10000CFBC(v19, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(v20, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();

  (*(v10 + 8))(v12, v9);
  return v14;
}

id sub_1001AE938()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension68MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithAlignedRegionBackgroundView;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension68MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithAlignedRegionBackgroundView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension68MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithAlignedRegionBackgroundView);
  }

  else
  {
    type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

double sub_1001AEA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = a2;
  v9 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  __chkstk_darwin(v9 - 8);
  v11 = &v22 - v10;
  sub_10076C7FC();
  sub_10076AF9C();
  if (swift_dynamicCastClass())
  {
    v12 = sub_1001AE938();
    v13 = sub_10076AF8C();
    sub_10015CDFC(v13, a3, a4);

    v14 = sub_10076C38C();
    v15 = *(v14 - 8);
    (*(v15 + 16))(v11, a3, v14);
    (*(v15 + 56))(v11, 0, 1, v14);
    v16 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_10003BD64(v11, v5 + v16);
    swift_endAccess();
    sub_1003DC6B0(v8);
    v17 = [v5 backgroundView];
    if (v17)
    {
      v18 = v17;
      v19 = sub_10076C70C();
      if (!v19)
      {
        sub_1000325F0();
        v19 = sub_100770D8C();
      }

      v20 = v19;
      [v18 setBackgroundColor:v19];
    }

    [v5 setNeedsLayout];
  }

  else
  {
  }

  return result;
}

void sub_1001AECB4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10076BF6C();
  __chkstk_darwin(v4 - 8);
  sub_10000A570(a1, v20);
  sub_10000A5D4(&unk_100942830, &qword_100782680);
  sub_10076C84C();
  if (swift_dynamicCast())
  {
    sub_10076C7FC();

    sub_10076AF9C();
    if (swift_dynamicCastClass())
    {
      v5 = sub_1001AE938();
      v6 = sub_10076AF8C();
      [v2 bounds];
      v21[3] = sub_10076ADDC();
      v21[4] = &protocol witness table for MediumAdLockupWithAlignedRegionBackground;
      v21[0] = v6;
      sub_10000A570(v21, v20);

      if (swift_dynamicCast())
      {
        v7 = v20[45];
        sub_10076ADCC();
        v8 = sub_10076BB5C();

        if (v8)
        {
          if (sub_10076ADBC())
          {
            v19 = v7;
            if (qword_100941428 != -1)
            {
              swift_once();
            }

            sub_10015E538();
            sub_10076C13C();
            sub_10015E58C(v20);
            sub_10076BFCC();
            v17 = OBJC_IVAR____TtC20ProductPageExtension45MediumAdLockupWithAlignedRegionBackgroundView_lockupView;
            v9 = *(*&v5[OBJC_IVAR____TtC20ProductPageExtension45MediumAdLockupWithAlignedRegionBackgroundView_lockupView] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
            sub_10076BF7C();
            sub_10075FCCC();
            [v9 setContentMode:sub_10076BDBC()];
            sub_100764ADC();
            sub_10075FD0C();
            v16 = v8;
            if (!sub_10076BE1C())
            {
              sub_1000325F0();
              sub_100770D5C();
            }

            sub_10075FB8C();

            v10 = *(*&v5[v17] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
            v11 = sub_10075FD2C();
            v12 = sub_10000D7F8();
            v13 = v10;
            v18 = v11;
            sub_100760B8C();

            sub_10076BFCC();
            v14 = OBJC_IVAR____TtC20ProductPageExtension45MediumAdLockupWithAlignedRegionBackgroundView_alignedRegionView;
            v15 = *&v5[OBJC_IVAR____TtC20ProductPageExtension45MediumAdLockupWithAlignedRegionBackgroundView_alignedRegionView];
            sub_10076BF7C();
            sub_10075FCCC();
            [v15 setContentMode:{sub_10076BDBC(), v16, v12, v18, v19}];
            sub_100764ADC();
            sub_10075FD0C();
            if (!sub_10076BE1C())
            {
              sub_1000325F0();
              sub_100770D5C();
            }

            sub_10075FB8C();
            [*&v5[v14] setContentMode:2];
            sub_100760B8C();
          }
        }
      }

      sub_10000CD74(v21);
    }

    else
    {
    }
  }
}

void sub_1001AF120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1001AE938();
  v3 = OBJC_IVAR____TtC20ProductPageExtension45MediumAdLockupWithAlignedRegionBackgroundView_lockupView;
  v4 = *(*&v7[OBJC_IVAR____TtC20ProductPageExtension45MediumAdLockupWithAlignedRegionBackgroundView_lockupView] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  sub_10075FCAC();

  sub_10075FCAC();
  v5 = *(*&v7[v3] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  sub_10075FD2C();
  sub_10000D7F8();
  v6 = v5;
  sub_100760BFC();

  sub_100760BFC();
}

void (*sub_1001AF390(uint64_t a1))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  sub_10000A570(a1, v6);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_100012498(v6, v4 + 32);
  return sub_1001AF948;
}

void sub_1001AF458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000A5D4(&qword_1009492E0, &qword_1007893A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14[-v5 - 8];
  v7 = sub_10076F7FC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_10000A570(a3, v14);
      sub_10000A5D4(&qword_1009575A0, &unk_100784980);
      sub_10076C84C();
      if (swift_dynamicCast())
      {
        sub_10076C7FC();

        sub_100761BDC();
        if ((*(v8 + 48))(v6, 1, v7) == 1)
        {

          sub_10000CFBC(v6, &qword_1009492E0, &qword_1007893A0);
        }

        else
        {
          (*(v8 + 32))(v10, v6, v7);
          [v12 bounds];
          sub_1007660EC();

          (*(v8 + 8))(v10, v7);
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
}

id sub_1001AF6FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell(uint64_t a1)
{
  result = qword_10094C310;
  if (!qword_10094C310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001AF7DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001AE938();
  sub_100653A54(a1, a2);
}

uint64_t sub_1001AF848()
{
  v0 = sub_1001AE938();
  v1 = *(*&v0[OBJC_IVAR____TtC20ProductPageExtension45MediumAdLockupWithAlignedRegionBackgroundView_lockupView] + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_isDisplayingSearchAd);

  return v1;
}

uint64_t sub_1001AF890()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001AF8C8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001AF900()
{

  sub_10000CD74((v0 + 32));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1001AF99C(void (*a1)(void *__return_ptr, char *))
{
  v12 = a1;
  v3 = sub_100762ACC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&unk_10094C348, &qword_1007928C8);
  __chkstk_darwin(v7 - 8);
  v9 = v11 - v8;
  sub_100016E2C(v1, v11 - v8, &unk_10094C348, &qword_1007928C8);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    return 0;
  }

  (*(v4 + 32))(v6, v9, v3);
  v12(v11, v6);
  if (v2)
  {
    result = (*(v4 + 8))(v6, v3);
    __break(1u);
  }

  else
  {
    (*(v4 + 8))(v6, v3);
    return v11[0];
  }

  return result;
}

void sub_1001AFB88(uint64_t a1, uint64_t a2)
{
  sub_100762BEC();
  sub_1001B66E4(&qword_1009624A0, &type metadata accessor for ProductTopLockup, &protocol conformance descriptor for ProductTopLockup);
  sub_10076332C();
  if (v12)
  {
    v4 = sub_1001AFE30(a1, a2);
    v5 = sub_100762B8C();
    sub_1001B6160(v5, v4);

    if (sub_100762B7C() & 1) != 0 && (swift_getKeyPath(), sub_10076338C(), , v6 = sub_1007706FC(), v12, (v6) && (swift_getKeyPath(), sub_10076338C(), , v7 = sub_10077071C(), v12, (v7))
    {
      sub_1001B5A0C();
      if (qword_100941200 != -1)
      {
        swift_once();
      }

      v8 = sub_10076D9AC();
      sub_10000A61C(v8, qword_1009A2380);
      swift_getKeyPath();
      sub_10076338C();

      sub_10076DEDC();
      sub_10000A5D4(&unk_100942870, &qword_100784460);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1007841E0;
      *(v9 + 32) = v12;
      v10 = v12;
      v11 = sub_10076DEEC();
      sub_10076D3EC();
    }

    else
    {
    }
  }
}

double sub_1001AFE30(uint64_t a1, uint64_t a2)
{
  v84 = a2;
  v3 = sub_10000A5D4(&qword_10094C340, &qword_10078C478);
  __chkstk_darwin(v3 - 8);
  v68 = &v68 - v4;
  v5 = sub_10000A5D4(&unk_10094C348, &qword_1007928C8);
  __chkstk_darwin(v5 - 8);
  v75 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v68 - v8;
  v10 = sub_10075EBAC();
  v82 = *(v10 - 8);
  v83 = v10;
  __chkstk_darwin(v10);
  v81 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076B96C();
  v79 = *(v12 - 8);
  v80 = v12;
  __chkstk_darwin(v12);
  v78 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_10076C36C();
  v14 = *(v77 - 8);
  __chkstk_darwin(v77);
  v76 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v68 - v17;
  v19 = sub_10076C38C();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v68 - v24;
  __chkstk_darwin(v26);
  v28 = &v68 - v27;
  sub_100762BEC();
  sub_1001B66E4(&qword_1009624A0, &type metadata accessor for ProductTopLockup, &protocol conformance descriptor for ProductTopLockup);
  sub_10076332C();
  v29 = v87[0];
  if (v87[0])
  {
    v74 = v9;
    v85 = v22;
    v69 = v18;
    swift_getKeyPath();
    v70 = v29;
    sub_10076338C();

    sub_10076C24C();
    v30 = *(v20 + 8);
    v30(v28, v19);
    swift_getKeyPath();
    sub_10076338C();

    sub_10076C26C();
    v30(v25, v19);
    v31 = v69;
    v32 = v77;
    (*(v14 + 104))(v69, enum case for PageGrid.Direction.vertical(_:), v77);
    swift_getKeyPath();
    sub_10076338C();

    sub_10076C25C();
    v71 = v19;
    v73 = v20 + 8;
    v72 = v30;
    v30(v28, v19);
    (*(v14 + 16))(v76, v31, v32);
    sub_1005AC334(0.0);
    sub_10076C33C();
    (*(v14 + 8))(v31, v32);
    sub_10000A5D4(&unk_10094A8C0, &qword_100784A40);
    v33 = *&v84;
    sub_10076F5CC();
    v34 = v87[0];
    swift_getObjectType();
    v35 = v78;
    v36 = v70;
    sub_100762BBC();
    v77 = v34;
    sub_10075EE2C();
    (*(v79 + 8))(v35, v80);
    swift_getObjectType();
    v37 = v81;
    sub_10075ED1C();
    v38 = sub_1001B5A0C();
    sub_1001B08C4(v36, v37, a1, v33, v87, v38, v39);
    v40 = v83;
    v41 = *(v82 + 8);
    v41(v37, v83);
    sub_10075ED1C();
    v42 = v74;
    sub_100762AEC();
    v41(v37, v40);
    v43 = sub_100762ACC();
    v44 = *(v43 - 8);
    v45 = *(v44 + 48);
    v46 = v42;
    v47 = v45(v42, 1, v43);
    v48 = 0;
    v49 = v46;
    if (v47 != 1)
    {
      v50 = v46;
      v51 = v75;
      sub_100016E2C(v50, v75, &unk_10094C348, &qword_1007928C8);
      if (v45(v51, 1, v43) == 1)
      {
        v52 = &unk_10094C348;
        v53 = &qword_1007928C8;
        v54 = v51;
      }

      else
      {
        v56 = v68;
        sub_100762ABC();
        (*(v44 + 8))(v51, v43);
        v57 = sub_1007607CC();
        v58 = *(v57 - 8);
        if ((*(v58 + 48))(v56, 1, v57) != 1)
        {
          v59 = sub_1007607BC();
          (*(v58 + 8))(v56, v57);
          v48 = v59 ^ 1;
          goto LABEL_10;
        }

        v52 = &qword_10094C340;
        v53 = &qword_10078C478;
        v54 = v56;
      }

      sub_10000CFBC(v54, v52, v53);
      v48 = 1;
    }

LABEL_10:
    if (sub_100762B8C() && (, ((sub_100762B7C() | v48) & 1) == 0))
    {
      if (qword_100940068 != -1)
      {
        swift_once();
      }

      v61 = qword_10099EC70;
    }

    else
    {
      if (sub_100762B8C())
      {

        v60 = 0.0;
LABEL_22:
        sub_10000CF78(v87, v87[3]);
        v64 = v85;
        sub_10076C2FC();
        swift_getKeyPath();
        sub_10076338C();

        sub_10076D2BC();
        v66 = v65;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v72(v64, v71);
        v55 = v60 + v66;
        sub_10000CFBC(v49, &unk_10094C348, &qword_1007928C8);
        sub_10000CD74(v87);
        return v55;
      }

      v60 = 0.0;
      if (v48)
      {
        goto LABEL_22;
      }

      if (qword_100940070 != -1)
      {
        swift_once();
      }

      v61 = qword_10099EC98;
    }

    sub_10000CF78(v61, v61[3]);
    swift_getKeyPath();
    sub_10076338C();

    v62 = v86;
    sub_10076D41C();
    v60 = v63;

    goto LABEL_22;
  }

  return 0.0;
}

uint64_t sub_1001B08C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, double a4@<X4>, uint64_t *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v8 = v7;
  v151 = a4;
  v152 = a2;
  v153 = a5;
  v13 = sub_10000A5D4(&unk_100945560, qword_1007951B0);
  __chkstk_darwin(v13 - 8);
  v150 = &v125 - v14;
  v149 = sub_100768FEC();
  v144 = *(v149 - 8);
  __chkstk_darwin(v149);
  v146 = &v125 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_10000A5D4(&unk_100946750, qword_100787A30);
  v147 = *(v148 - 8);
  __chkstk_darwin(v148);
  v145 = &v125 - v16;
  v154 = sub_10076443C();
  v143 = *(v154 - 8);
  __chkstk_darwin(v154);
  v142 = &v125 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  __chkstk_darwin(v141);
  v19 = (&v125 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v159 = &v125 - v21;
  v157 = sub_10076997C();
  v158 = *(v157 - 8);
  __chkstk_darwin(v157);
  v156 = &v125 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10000A5D4(&unk_10094C348, &qword_1007928C8);
  __chkstk_darwin(v23 - 8);
  v25 = &v125 - v24;
  v155 = sub_10076C38C();
  v26 = *(v155 - 8);
  __chkstk_darwin(v155);
  v28 = &v125 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v160 = v28;
  sub_10076338C();

  v29 = a1;
  sub_100762AEC();
  v152 = v8;
  v161 = v8;
  v162 = a1;
  v163 = a3;
  v164 = v151;
  v30 = COERCE_DOUBLE(sub_1001AF99C(sub_1001B6630));
  LOBYTE(a1) = v31;
  sub_10000CFBC(v25, &unk_10094C348, &qword_1007928C8);
  if (a1)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = v30;
  }

  v33 = sub_1001B5E80();
  if (sub_100762B7C())
  {
    v131 = v26;
    v130 = v29;
    sub_100762BAC();
    if (qword_10093FFF0 != -1)
    {
      swift_once();
    }

    v34 = sub_10000A5D4(&unk_100950EE0, &qword_10079B340);
    sub_10000A61C(v34, qword_10099EB28);
    swift_getKeyPath();
    sub_10076338C();

    *&v166 = v173;
    sub_10075FDCC();
    swift_unknownObjectRelease();
    if (qword_100940168 != -1)
    {
      swift_once();
    }

    v35 = sub_10000A5D4(&unk_10094C370, &qword_100792900);
    sub_10000A61C(v35, qword_10099EFB0);
    swift_getKeyPath();
    sub_10076338C();

    v172 = v173;
    v140 = v35;
    sub_10075FDCC();
    swift_unknownObjectRelease();
    v36 = sub_10076C04C();
    v174 = v36;
    v138 = sub_1001B66E4(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v175 = v138;
    v37 = sub_10000DB7C(&v173);
    v38 = *(v36 - 8);
    v39 = *(v38 + 104);
    v137 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v139 = v36;
    v136 = v39;
    v135 = v38 + 104;
    v39(v37);
    sub_10076C90C();
    sub_10000CD74(&v173);
    v40 = v156;
    sub_10076996C();
    sub_10076994C();
    v41 = *(v158 + 8);
    v158 += 8;
    v134 = v41;
    v41(v40, v157);
    sub_10076C2FC();
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    sub_100630CB4();
    swift_unknownObjectRelease();
    v45 = a3;
    if (qword_10093FFC0 != -1)
    {
      swift_once();
    }

    v46 = v141;
    v47 = sub_10000A61C(v141, qword_10099EAC8);
    v48 = v159;
    sub_1001B678C(v47, v159, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
    v151 = a7;
    *(v48 + 32) = a6;
    *(v48 + 40) = a7;
    *(v48 + 8) = left;
    *(v48 + 16) = bottom;
    v49 = a6;
    *(v48 + 24) = right;
    *v48 = 0;
    v170 = &type metadata for CGFloat;
    v171 = &protocol witness table for CGFloat;
    *&v169 = v32;
    v50 = v46[15];
    sub_10000CD74((v48 + v50));
    sub_10003F19C(&v169, v48 + v50);
    v170 = &type metadata for CGFloat;
    v171 = &protocol witness table for CGFloat;
    *&v169 = v33;
    v51 = v46[16];
    sub_10000CD74((v48 + v51));
    sub_10003F19C(&v169, v48 + v51);
    sub_10076C2FC();
    v53 = v52;
    v55 = v54;
    v56 = sub_100630CB4();
    swift_getObjectType();
    v57 = sub_100307C40(&v173, v48, v56, v53, v55);
    swift_unknownObjectRelease();
    if (v57)
    {
      sub_10076C2FC();
      sub_100630CB4();
      swift_unknownObjectRelease();
      sub_1001B678C(v47, v19, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
      v58 = v151;
      v19[4] = v49;
      v19[5] = v58;
      v19[1] = left;
      v19[2] = bottom;
      v19[3] = right;
      *v19 = 0.0;
      v170 = &type metadata for CGFloat;
      v171 = &protocol witness table for CGFloat;
      *&v169 = v32;
      v59 = v46[15];
      sub_10000CD74((v19 + v59));
      sub_10003F19C(&v169, v19 + v59);
      v170 = &type metadata for CGFloat;
      v171 = &protocol witness table for CGFloat;
      *&v169 = v33;
      v60 = v46[16];
      sub_10000CD74((v19 + v60));
      sub_10003F19C(&v169, v19 + v60);
      if (qword_1009400E0 != -1)
      {
        swift_once();
      }

      v61 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
      v62 = sub_10000A61C(v61, qword_10099EE18);
      v63 = *(*(v61 - 8) + 24);
      v63(v19 + v46[7], v62, v61);
      if (qword_1009400D0 != -1)
      {
        swift_once();
      }

      v64 = sub_10000A61C(v61, qword_10099EDE8);
      v63(v19 + v46[6], v64, v61);
      if (qword_1009400F8 != -1)
      {
        swift_once();
      }

      v65 = sub_10000A61C(v61, qword_10099EE60);
      v63(v19 + v46[8], v65, v61);
      if (qword_1009400A0 != -1)
      {
        swift_once();
      }

      v66 = sub_10000A5D4(&unk_100952280, &qword_10079D3C0);
      v67 = sub_10000A61C(v66, qword_10099ED58);
      (*(*(v66 - 8) + 24))(v19 + v46[13], v67, v66);
      v170 = &type metadata for CGFloat;
      v171 = &protocol witness table for CGFloat;
      *&v169 = 0x401C000000000000;
      v68 = v159;
      sub_1001B672C(v159, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
      v69 = v46[9];
      sub_10000CD74((v19 + v69));
      sub_10003F19C(&v169, v19 + v69);
      sub_1001B6654(v19, v68, v70);
      sub_10000CF78(&v173, v174);
      if (qword_10093FFF8 != -1)
      {
        swift_once();
      }

      sub_10000A61C(v34, qword_10099EB40);
      swift_getKeyPath();
      sub_10076338C();

      v172 = v166;
      sub_10075FDCC();
      swift_unknownObjectRelease();
      sub_10076D70C();
    }

    if (qword_100940008 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v34, qword_10099EB70);
    swift_getKeyPath();
    sub_10076338C();

    v172 = v166;
    sub_10075FDCC();
    swift_unknownObjectRelease();
    v71 = v169;
    sub_100762B1C();
    v72 = qword_100940170;
    v73 = v71;
    if (v72 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v140, qword_10099EFC8);
    swift_getKeyPath();
    v141 = v45;
    sub_10076338C();

    v172 = v169;
    sub_10075FDCC();
    swift_unknownObjectRelease();
    v74 = v139;
    v170 = v139;
    v171 = v138;
    v75 = sub_10000DB7C(&v169);
    v136(v75, v137, v74);
    sub_10076C90C();
    sub_10000CD74(&v169);
    v76 = v156;
    sub_10076996C();
    sub_10076994C();
    v134(v76, v157);
    v77 = sub_10076DDDC();
    swift_allocObject();
    v78 = sub_10076DDBC();
    swift_allocObject();
    v79 = sub_10076DDBC();
    swift_allocObject();
    v80 = sub_10076DDBC();
    swift_allocObject();
    v152 = sub_10076DDBC();
    v81 = sub_1005A5DB8(0xD000000000000013, 0x80000001007D7B10, 0);
    [v81 size];

    swift_allocObject();
    v128 = sub_10076DDBC();
    swift_allocObject();
    v127 = sub_10076DDBC();
    swift_allocObject();
    v125 = sub_10076DDBC();
    swift_allocObject();
    v126 = sub_10076DDBC();
    sub_100762B3C();
    v129 = v73;
    v133 = v78;
    v132 = v79;
    if (v83 == 1 || (v84 = v82, , !v84))
    {
      v85 = v80;
      v168 = 0;
      v167 = 0u;
      v166 = 0u;
      v91 = v159;
    }

    else
    {
      v85 = v80;
      sub_10005312C();
      if (qword_100940C18 != -1)
      {
        swift_once();
      }

      v86 = sub_10076D3DC();
      sub_10000A61C(v86, qword_1009A1240);
      swift_getKeyPath();
      sub_10076338C();

      v87 = v166;
      sub_100770B3C();

      if (qword_100940188 != -1)
      {
        swift_once();
      }

      sub_10000A61C(v140, qword_10099F010);
      swift_getKeyPath();
      sub_10076338C();

      v165 = v166;
      sub_10075FDCC();
      swift_unknownObjectRelease();
      v88 = v139;
      *(&v167 + 1) = v139;
      v168 = v138;
      v89 = sub_10000DB7C(&v166);
      v136(v89, v137, v88);
      sub_10076C90C();
      sub_10000CD74(&v166);
      v90 = v156;
      sub_10076996C();
      sub_10076994C();
      v134(v90, v157);
      v91 = v159;
      v78 = v133;
      v79 = v132;
    }

    v97 = type metadata accessor for ProductLockupInlineUberLayout(0);
    v98 = v153;
    v153[3] = v97;
    v98[4] = sub_1001B66E4(&unk_10094C380, type metadata accessor for ProductLockupInlineUberLayout, &protocol conformance descriptor for ProductLockupInlineUberLayout);
    v99 = sub_10000DB7C(v98);
    sub_1001B678C(v91, v99, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
    v100 = (v99 + v97[5]);
    v100[3] = v77;
    v100[4] = &protocol witness table for LayoutViewPlaceholder;
    *v100 = v152;
    v101 = (v99 + v97[6]);
    v101[3] = v77;
    v101[4] = &protocol witness table for LayoutViewPlaceholder;
    *v101 = v79;
    v102 = (v99 + v97[7]);
    v102[3] = v77;
    v102[4] = &protocol witness table for LayoutViewPlaceholder;
    *v102 = v85;
    v103 = (v99 + v97[10]);
    v103[3] = v77;
    v103[4] = &protocol witness table for LayoutViewPlaceholder;
    *v103 = v78;
    swift_allocObject();

    v158 = v85;

    v104 = sub_10076DDBC();
    v105 = (v99 + v97[8]);
    v105[3] = v77;
    v105[4] = &protocol witness table for LayoutViewPlaceholder;
    *v105 = v104;
    sub_10000A570(&v173, v99 + v97[9]);
    sub_10000A570(&v169, v99 + v97[11]);
    v106 = v99 + v97[12];
    *(v106 + 4) = 0;
    *v106 = 0u;
    *(v106 + 1) = 0u;
    if (qword_10093F550 != -1)
    {
      swift_once();
    }

    v107 = v154;
    v108 = sub_10000A61C(v154, qword_10099CA98);
    v109 = v143;
    v110 = v142;
    (*(v143 + 16))(v142, v108, v107);
    swift_getKeyPath();
    sub_10076338C();

    v111 = v144;
    v112 = v149;
    (*(v144 + 104))(v146, enum case for OfferButtonSubtitlePosition.below(_:), v149);
    (*(v111 + 56))(v150, 1, 1, v112);
    sub_1001B66E4(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
    v113 = v145;
    sub_10076759C();
    sub_10076440C();
    swift_unknownObjectRelease();
    (*(v147 + 8))(v113, v148);
    (*(v109 + 8))(v110, v154);
    swift_allocObject();
    v114 = sub_10076DDBC();
    v115 = (v99 + v97[13]);
    v115[3] = v77;
    v115[4] = &protocol witness table for LayoutViewPlaceholder;
    *v115 = v114;
    sub_100016E2C(&v166, v99 + v97[14], &qword_10094BB30, qword_100796E40);
    v116 = v99 + v97[15];
    *(v116 + 4) = 0;
    *v116 = 0u;
    *(v116 + 1) = 0u;
    v117 = (v99 + v97[16]);
    v117[3] = v77;
    v117[4] = &protocol witness table for LayoutViewPlaceholder;
    *v117 = v128;
    v118 = (v99 + v97[17]);
    v118[3] = v77;
    v118[4] = &protocol witness table for LayoutViewPlaceholder;
    *v118 = v127;
    v119 = (v99 + v97[18]);
    v119[3] = v77;
    v119[4] = &protocol witness table for LayoutViewPlaceholder;
    *v119 = v125;
    v120 = (v99 + v97[19]);
    v120[3] = v77;
    v120[4] = &protocol witness table for LayoutViewPlaceholder;

    *v120 = v126;
    sub_10000CFBC(&v166, &qword_10094BB30, qword_100796E40);
    sub_10000CD74(&v169);
    sub_1001B672C(v159, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
    (*(v131 + 8))(v160, v155);
    return sub_10000CD74(&v173);
  }

  else
  {
    swift_getKeyPath();
    sub_10076338C();

    v92 = v173;
    v93 = sub_10077071C();

    if (v93)
    {
      v94 = type metadata accessor for ProductLockupAccessibilityLayout(0);
      v95 = v153;
      v153[3] = v94;
      v95[4] = sub_1001B66E4(&unk_10094C360, type metadata accessor for ProductLockupAccessibilityLayout, &protocol conformance descriptor for ProductLockupAccessibilityLayout);
      v96 = sub_10000DB7C(v95);
      sub_1001B2864(v29, a3, v96, a6, a7, v32, v33);
    }

    else
    {
      v122 = type metadata accessor for ProductLockupLayout(0);
      v123 = v153;
      v153[3] = v122;
      v123[4] = sub_1001B66E4(&qword_10094C358, type metadata accessor for ProductLockupLayout, &protocol conformance descriptor for ProductLockupLayout);
      v124 = sub_10000DB7C(v123);
      sub_1001B429C(v29, a3, v124, a6, a7, v32, v33);
    }

    return (*(v26 + 8))(v160, v155);
  }
}

uint64_t sub_1001B21AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, void *a4@<X8>)
{
  v61 = a4;
  v57 = a3;
  v60 = a2;
  v5 = sub_10076C38C();
  v58 = *(v5 - 8);
  v59 = v5;
  __chkstk_darwin(v5);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_10094C348, &qword_1007928C8);
  __chkstk_darwin(v8 - 8);
  v10 = (&v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v13 = &v54 - v12;
  __chkstk_darwin(v14);
  v16 = &v54 - v15;
  v17 = sub_100762ACC();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v16, a1, v17);
  (*(v18 + 56))(v16, 0, 1, v17);
  v19 = sub_100762B8C();
  if (v19)
  {
  }

  v20 = sub_100762B7C();
  sub_100016E2C(v16, v13, &unk_10094C348, &qword_1007928C8);
  if ((*(v18 + 48))(v13, 1, v17) == 1)
  {
    sub_10000CFBC(v16, &unk_10094C348, &qword_1007928C8);
LABEL_5:
    v21 = 0;
    v16 = v13;
    goto LABEL_31;
  }

  sub_100016E2C(v13, v10, &unk_10094C348, &qword_1007928C8);
  v22 = (*(v18 + 88))(v10, v17);
  if (v22 == enum case for ProductTopLockup.PrimaryBanner.askToBuy(_:))
  {
    (*(v18 + 96))(v10, v17);
    v23 = *v10;
    sub_10076148C();
    sub_10076F64C();
    sub_10076FC1C();
    if ((sub_1007612AC() & 1) == 0)
    {
      LODWORD(v57) = v19 == 0;
      v56 = sub_10076B9DC();
      v34 = v33;
      v55 = v20 ^ 1;
      v54 = type metadata accessor for LinkableHeaderCollectionViewCell();
      v35 = sub_100630CB4();
      swift_getKeyPath();
      sub_10076338C();

      sub_10076C2FC();
      v37 = v36;
      v39 = v38;
      (*(v58 + 8))(v7, v59);
      ObjectType = swift_getObjectType();
      sub_100126678(v56, v34, v57 & v55, v35, v37, v39, v54, ObjectType);
      v21 = v41;

      swift_unknownObjectRelease();

      sub_10000CFBC(v16, &unk_10094C348, &qword_1007928C8);
      v16 = v13;
      goto LABEL_31;
    }
  }

  else
  {
    if (v22 != enum case for ProductTopLockup.PrimaryBanner.banner(_:))
    {
      sub_10000CFBC(v16, &unk_10094C348, &qword_1007928C8);
      (*(v18 + 8))(v10, v17);
      goto LABEL_5;
    }

    (*(v18 + 96))(v10, v17);
    v23 = *v10;
  }

  sub_10000CFBC(v13, &unk_10094C348, &qword_1007928C8);
  v24 = 0.0;
  if ((v20 & 1) == 0)
  {
    if (qword_100940078 != -1)
    {
      swift_once();
    }

    sub_10000CF78(qword_10099ECC0, qword_10099ECD8);
    swift_getKeyPath();
    sub_10076338C();

    v25 = *&v62[0];
    sub_10076D41C();
    v24 = v26;
  }

  v27 = sub_10076B99C();
  if (v27)
  {
  }

  sub_10076B98C();
  sub_10000A5D4(&unk_10094C3B0, qword_10078C480);
  v28 = sub_1007701EC();

  if (v20)
  {
    _Q3 = xmmword_10078C3D0;
    v30 = 17.0;
    v31 = 0.0;
    v32 = 0.0;
  }

  else
  {
    v31 = 22.0;
    if (v27)
    {
      v31 = 15.0;
    }

    if (v28)
    {
      v32 = 15.0;
    }

    else
    {
      v32 = v31;
    }

    v30 = 9.0;
    if (v28)
    {
      v42 = 12.0;
    }

    else
    {
      v42 = 9.0;
    }

    __asm { FMOV            V3.2D, #15.0 }

    *&_Q3 = v42;
  }

  v62[1] = _Q3;
  v62[0] = _Q3;
  v63 = v30;
  v64 = v31;
  v65 = v30;
  v66 = v32;
  v67 = xmmword_100785070;
  v68 = xmmword_100785080;
  v47 = sub_100630CB4();
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C2FC();
  v49 = v48;
  v51 = v50;
  (*(v58 + 8))(v7, v59);
  sub_10011D440(v23, v62, v47, v24, 0.0, v24, 0.0, v49, v51);
  v21 = v52;
  swift_unknownObjectRelease();

LABEL_31:
  result = sub_10000CFBC(v16, &unk_10094C348, &qword_1007928C8);
  *v61 = v21;
  return result;
}

uint64_t sub_1001B2864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v164 = a1;
  v144 = a3;
  v12 = sub_10000A5D4(&unk_100945560, qword_1007951B0);
  __chkstk_darwin(v12 - 8);
  v142 = &v124 - v13;
  v140 = sub_100768FEC();
  v134 = *(v140 - 8);
  __chkstk_darwin(v140);
  v136 = &v124 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&unk_100946750, qword_100787A30);
  v138 = *(v15 - 8);
  v139 = v15;
  __chkstk_darwin(v15);
  v135 = &v124 - v16;
  v137 = sub_10076443C();
  v143 = *(v137 - 8);
  __chkstk_darwin(v137);
  v133 = &v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v151 = &v124 - v19;
  v131 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  __chkstk_darwin(v131);
  v153 = &v124 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_10076186C();
  v125 = *(v129 - 8);
  __chkstk_darwin(v129);
  v124 = &v124 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_10000A5D4(&unk_10094C330, &qword_1007928A0);
  v141 = *(v150 - 8);
  __chkstk_darwin(v150);
  v149 = &v124 - v22;
  v152 = sub_10076997C();
  v165 = *(v152 - 8);
  __chkstk_darwin(v152);
  *&v163 = &v124 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10076D3DC();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v124 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10005312C();
  if (qword_100940030 != -1)
  {
    swift_once();
  }

  v29 = sub_10000A5D4(&qword_10094C390, &qword_100792908);
  sub_10000A61C(v29, qword_10099EBC8);
  swift_getKeyPath();
  sub_10076338C();

  v182[0] = v183[0];
  v146 = v29;
  sub_10075FDCC();
  swift_unknownObjectRelease();
  swift_getKeyPath();
  sub_10076338C();

  v30 = v183[0];
  v157 = v28;
  v31 = sub_100770B3C();

  v32 = *(v25 + 8);
  v147 = v27;
  v148 = v25 + 8;
  v158 = v24;
  v145 = v32;
  v32(v27, v24);
  sub_100762BAC();
  v33 = qword_100940160;
  v34 = v31;
  if (v33 != -1)
  {
    swift_once();
  }

  v35 = sub_10000A5D4(&unk_10094C370, &qword_100792900);
  sub_10000A61C(v35, qword_10099EF98);
  swift_getKeyPath();
  sub_10076338C();

  v181[0] = v183[0];
  v156 = v35;
  sub_10075FDCC();
  swift_unknownObjectRelease();
  v36 = sub_10076C04C();
  v183[3] = v36;
  *&v162 = sub_1001B66E4(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v183[4] = v162;
  v37 = sub_10000DB7C(v183);
  v38 = *(v36 - 8);
  v39 = *(v38 + 104);
  v161 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v155 = v36;
  v159 = v38 + 104;
  v160 = v39;
  v39(v37);
  LOBYTE(v36) = sub_10076C90C();
  sub_10000CD74(v183);
  LOBYTE(v123) = v36 & 1;
  v40 = v163;
  v132 = v34;
  sub_10076996C();
  sub_10076994C();
  v41 = *(v165 + 8);
  v165 += 8;
  v154 = v41;
  v41(v40, v152);
  if (qword_100940040 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v146, qword_10099EBF8);
  swift_getKeyPath();
  sub_10076338C();

  v181[0] = v182[0];
  v42 = v147;
  sub_10075FDCC();
  swift_unknownObjectRelease();
  swift_getKeyPath();
  sub_10076338C();

  v43 = v182[0];
  v44 = sub_100770B3C();

  v145(v42, v158);
  v130 = sub_100762B1C();
  v45 = qword_100940170;
  v46 = v44;
  if (v45 != -1)
  {
    swift_once();
  }

  v128 = sub_10000A61C(v156, qword_10099EFC8);
  swift_getKeyPath();
  v127 = a2;
  sub_10076338C();

  *&v178 = v182[0];
  sub_10075FDCC();
  swift_unknownObjectRelease();
  v47 = v155;
  v182[3] = v155;
  v182[4] = v162;
  v48 = sub_10000DB7C(v182);
  v160(v48, v161, v47);
  sub_10076C90C();
  sub_10000CD74(v182);
  v49 = v163;
  sub_10076996C();
  sub_10076994C();
  v50 = v152;
  v51 = v154;
  v154(v49, v152);
  v130 = sub_100762ADC();
  v126 = v52;
  swift_getKeyPath();
  v53 = v46;
  sub_10076338C();

  v174 = v181[0];
  sub_10075FDCC();
  swift_unknownObjectRelease();
  v181[3] = v47;
  v181[4] = v162;
  v54 = sub_10000DB7C(v181);
  v160(v54, v161, v47);
  v55 = sub_10076C90C();
  sub_10000CD74(v181);
  LOBYTE(v123) = v55 & 1;
  v130 = v53;
  sub_10076996C();
  sub_10076994C();
  v56 = v49;
  v57 = v50;
  v51(v56, v50);
  sub_100762AFC();
  if (v58)
  {
    if (qword_100940050 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v146, qword_10099EC28);
    swift_getKeyPath();
    sub_10076338C();

    v174 = v178;
    v59 = v147;
    sub_10075FDCC();
    swift_unknownObjectRelease();
    swift_getKeyPath();
    sub_10076338C();

    v60 = v178;
    v61 = sub_100770B3C();

    v145(v59, v158);
    v62 = qword_100940178;
    v63 = v61;
    if (v62 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v156, qword_10099EFE0);
    swift_getKeyPath();
    sub_10076338C();

    *&v171 = v178;
    sub_10075FDCC();
    swift_unknownObjectRelease();
    v64 = v155;
    *(&v179 + 1) = v155;
    v180 = v162;
    v65 = sub_10000DB7C(&v178);
    v160(v65, v161, v64);
    LOBYTE(v64) = sub_10076C90C();
    sub_10000CD74(&v178);
    LOBYTE(v123) = v64 & 1;
    v66 = v163;
    sub_10076996C();
    sub_10076994C();

    v154(v66, v50);
  }

  else
  {
    v180 = 0;
    v178 = 0u;
    v179 = 0u;
  }

  v67 = v129;
  sub_1001B65D8();
  sub_10076335C();
  swift_getKeyPath();
  sub_10076FD9C();

  v68 = v174;
  swift_getKeyPath();
  sub_10076FD9C();

  v69 = v175;
  if (v175)
  {
    v70 = v158;
    if (v68)
    {

      goto LABEL_31;
    }
  }

  else
  {
    v70 = v158;
  }

  v71 = sub_100762B5C();
  v72 = v124;
  v73 = v125;
  if (v71)
  {
    v74 = v71;
  }

  else
  {
    if (!sub_100762B4C())
    {
LABEL_29:
      v69 = 0;
      goto LABEL_30;
    }

    v74 = sub_100766AFC();
  }

  (*(v73 + 104))(v72, enum case for OfferTitleType.standard(_:), v67);
  if (!*(v74 + 16) || (v75 = sub_10061070C(v72), (v76 & 1) == 0))
  {

    (*(v73 + 8))(v72, v67);
    goto LABEL_29;
  }

  v77 = (*(v74 + 56) + 16 * v75);
  v78 = v72;
  v148 = *v77;
  v79 = v73;
  v69 = v77[1];
  v80 = *(v79 + 8);

  v80(v78, v67);

LABEL_30:
  v57 = v152;
LABEL_31:
  if (qword_100940E50 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v70, qword_1009A18E8);
  swift_getKeyPath();
  sub_10076338C();

  v81 = v174;
  sub_100770B3C();

  if (qword_100940190 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v156, qword_10099F028);
  swift_getKeyPath();
  sub_10076338C();

  *&v168 = v174;
  sub_10075FDCC();
  swift_unknownObjectRelease();
  v82 = v155;
  v176 = v155;
  v177 = v162;
  v83 = sub_10000DB7C(&v174);
  v160(v83, v161, v82);
  LOBYTE(v82) = sub_10076C90C();
  sub_10000CD74(&v174);
  LOBYTE(v123) = v82 & 1;
  v84 = v163;
  sub_10076996C();
  sub_10076994C();
  v154(v84, v57);
  sub_10000CF78(&v174, v176);
  if (v69)
  {
  }

  sub_10076D25C();
  sub_100762B3C();
  if (v85 == 1 || (v86 = v85, , !v86))
  {
    v173 = 0;
    v171 = 0u;
    v172 = 0u;
  }

  else
  {
    if (qword_100940C08 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v158, qword_1009A1210);
    swift_getKeyPath();
    sub_10076338C();

    v87 = v171;
    sub_100770B3C();

    if (qword_100940180 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v156, qword_10099EFF8);
    swift_getKeyPath();
    sub_10076338C();

    v167 = v171;
    sub_10075FDCC();
    swift_unknownObjectRelease();
    v88 = v155;
    *(&v172 + 1) = v155;
    v173 = v162;
    v89 = sub_10000DB7C(&v171);
    v160(v89, v161, v88);
    LOBYTE(v88) = sub_10076C90C();
    sub_10000CD74(&v171);
    LOBYTE(v123) = v88 & 1;
    v90 = v163;
    sub_10076996C();
    sub_10076994C();
    v154(v90, v57);
  }

  sub_100762B3C();
  if (v92 == 1 || (v93 = v91, , !v93))
  {
    v170 = 0;
    v168 = 0u;
    v169 = 0u;
  }

  else
  {
    if (qword_100940C10 != -1)
    {
      swift_once();
    }

    v94 = v57;
    sub_10000A61C(v158, qword_1009A1228);
    swift_getKeyPath();
    sub_10076338C();

    v95 = v168;
    sub_100770B3C();

    if (qword_100940188 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v156, qword_10099F010);
    swift_getKeyPath();
    sub_10076338C();

    v166 = v168;
    sub_10075FDCC();
    swift_unknownObjectRelease();
    v96 = v155;
    *(&v169 + 1) = v155;
    v170 = v162;
    v97 = sub_10000DB7C(&v168);
    v160(v97, v161, v96);
    v98 = sub_10076C90C();
    sub_10000CD74(&v168);
    LOBYTE(v123) = v98 & 1;
    v99 = v163;
    sub_10076996C();
    sub_10076994C();
    v154(v99, v94);
  }

  v100 = sub_10076DDDC();
  swift_allocObject();
  v165 = sub_10076DDBC();
  swift_allocObject();
  v164 = sub_10076DDBC();
  v101 = *&UIEdgeInsetsZero.top;
  v162 = *&UIEdgeInsetsZero.bottom;
  v163 = v101;
  if (qword_10093FFC8 != -1)
  {
    swift_once();
  }

  v102 = sub_10000A61C(v131, qword_10099EAE0);
  __chkstk_darwin(v102);
  *(&v124 - 8) = a4;
  *(&v124 - 7) = a5;
  *(&v124 - 6) = a6;
  *(&v124 - 5) = a7;
  v103 = v162;
  *(&v124 - 2) = v163;
  v123 = v103;
  sub_1001B66E4(&qword_10094C398, type metadata accessor for ProductLockupAccessibilityLayout.Metrics, &protocol conformance descriptor for ProductLockupAccessibilityLayout.Metrics);
  sub_10076C13C();
  swift_getKeyPath();
  sub_10076338C();

  v104 = v167;
  if (sub_10077071C())
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v105 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v105 = qword_100944CA0;
  }

  v106 = v137;
  v107 = sub_10000A61C(v137, v105);
  v108 = v143;
  v109 = v133;
  (*(v143 + 16))(v133, v107, v106);

  (*(v108 + 32))(v151, v109, v106);
  v110 = *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
  *&v163 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics;
  v111 = v144;
  sub_1001B678C(v153, v144 + v110, type metadata accessor for ProductLockupAccessibilityLayout.Metrics);
  swift_allocObject();
  v112 = sub_10076DDBC();
  *(v111 + 24) = v100;
  *(v111 + 32) = &protocol witness table for LayoutViewPlaceholder;
  *v111 = v112;
  sub_10000A570(v183, v111 + 40);
  sub_10000A570(v181, v111 + 80);
  sub_10000A570(v182, v111 + 120);
  sub_100016E2C(&v178, v111 + 160, &qword_10094BB30, qword_100796E40);
  swift_getKeyPath();
  sub_10076338C();

  v113 = v134;
  v114 = v140;
  (*(v134 + 104))(v136, enum case for OfferButtonSubtitlePosition.below(_:), v140);
  (*(v113 + 56))(v142, 1, 1, v114);
  sub_1001B66E4(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
  v115 = v135;
  sub_10076759C();
  v116 = v151;
  sub_10076440C();
  swift_unknownObjectRelease();
  (*(v138 + 8))(v115, v139);
  swift_allocObject();
  v117 = sub_10076DDBC();
  *(v111 + 224) = v100;
  *(v111 + 232) = &protocol witness table for LayoutViewPlaceholder;
  *(v111 + 200) = v117;
  *(v111 + 240) = 0u;
  *(v111 + 256) = 0u;
  *(v111 + 272) = 0;
  v118 = v176;
  v119 = v177;
  v120 = sub_10000CF78(&v174, v176);
  *(v111 + 304) = v118;
  *(v111 + 312) = *(v119 + 8);
  v121 = sub_10000DB7C((v111 + 280));
  (*(*(v118 - 8) + 16))(v121, v120, v118);
  sub_100016E2C(&v171, v111 + 320, &qword_10094BB30, qword_100796E40);
  sub_100016E2C(&v168, v111 + 360, &qword_10094BB30, qword_100796E40);
  *(v111 + 424) = v100;
  *(v111 + 432) = &protocol witness table for LayoutViewPlaceholder;
  *(v111 + 400) = v165;
  *(v111 + 464) = v100;
  *(v111 + 472) = &protocol witness table for LayoutViewPlaceholder;

  *(v111 + 440) = v164;
  (*(v108 + 8))(v116, v106);
  sub_1001B672C(v153, v163);
  sub_10000CFBC(&v168, &qword_10094BB30, qword_100796E40);
  sub_10000CFBC(&v171, &qword_10094BB30, qword_100796E40);
  (*(v141 + 8))(v149, v150);
  sub_10000CFBC(&v178, &qword_10094BB30, qword_100796E40);
  sub_10000CD74(v181);
  sub_10000CD74(v182);
  sub_10000CD74(v183);
  return sub_10000CD74(&v174);
}

uint64_t sub_1001B429C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v155 = a1;
  v137 = a3;
  v12 = sub_10000A5D4(&unk_100945560, qword_1007951B0);
  __chkstk_darwin(v12 - 8);
  v135 = v125 - v13;
  v134 = sub_100768FEC();
  v129 = *(v134 - 8);
  __chkstk_darwin(v134);
  v131 = v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&unk_100946750, qword_100787A30);
  v132 = *(v15 - 8);
  v133 = v15;
  __chkstk_darwin(v15);
  v130 = v125 - v16;
  v143 = sub_10076443C();
  v136 = *(v143 - 8);
  __chkstk_darwin(v143);
  v128 = v125 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v142 = v125 - v19;
  v20 = sub_10076186C();
  v138 = *(v20 - 8);
  v139 = v20;
  __chkstk_darwin(v20);
  v126 = v125 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10076997C();
  v23 = *(v22 - 8);
  v153 = v22;
  v154 = v23;
  __chkstk_darwin(v22);
  v149 = v125 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10000A5D4(&qword_10094C3A0, &qword_100792950);
  __chkstk_darwin(v25 - 8);
  v27 = v125 - v26;
  v28 = type metadata accessor for ProductLockupLayout.Metrics(0);
  __chkstk_darwin(v28);
  v30 = v125 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = v125 - v32;
  v34 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  (*(*(v34 - 8) + 56))(v27, 1, 1, v34);
  swift_getKeyPath();
  sub_10076338C();

  v35 = v179[0];
  sub_10036364C(v179[0], v30);
  v156 = a4;
  v157 = a5;
  v158 = a6;
  v159 = a7;
  v36 = *&UIEdgeInsetsZero.bottom;
  v160 = *&UIEdgeInsetsZero.top;
  v161 = v36;
  v162 = v27;
  sub_1001B66E4(&qword_10094C3A8, type metadata accessor for ProductLockupLayout.Metrics, &protocol conformance descriptor for ProductLockupLayout.Metrics);
  sub_10076C13C();

  sub_1001B672C(v30, type metadata accessor for ProductLockupLayout.Metrics);
  sub_10000CFBC(v27, &qword_10094C3A0, &qword_100792950);
  v150 = sub_100762BAC();
  v145 = v37;
  swift_getKeyPath();
  v38 = a2;
  sub_10076338C();

  v177[0] = v179[0];
  v39 = sub_10000A5D4(&unk_100950EE0, &qword_10079B340);
  sub_10075FDCC();
  swift_unknownObjectRelease();
  swift_getKeyPath();
  sub_10076338C();

  *&v174 = v179[0];
  v40 = sub_10000A5D4(&unk_10094C370, &qword_100792900);
  sub_10075FDCC();
  swift_unknownObjectRelease();
  v41 = sub_10076C04C();
  v179[3] = v41;
  v147 = sub_1001B66E4(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v179[4] = v147;
  v42 = sub_10000DB7C(v179);
  v43 = *(v41 - 1);
  v44 = *(v43 + 104);
  LODWORD(v152) = enum case for Feature.measurement_with_labelplaceholder(_:);
  v148 = v41;
  v151 = v44;
  v146 = v43 + 104;
  v44(v42);
  sub_10076C90C();
  sub_10000CD74(v179);
  v45 = v149;
  sub_10076996C();
  sub_10076994C();
  v46 = *(v154 + 8);
  v154 += 8;
  v150 = v46;
  v46(v45, v153);
  v125[1] = v28;
  swift_getKeyPath();
  v141 = v38;
  sub_10076338C();

  *&v174 = v177[0];
  v145 = v33;
  v140 = v39;
  sub_10075FDCC();
  swift_unknownObjectRelease();
  v47 = v178[0];
  v144 = sub_100762B1C();
  v127 = v48;
  v49 = qword_100940170;
  v50 = v47;
  if (v49 != -1)
  {
    swift_once();
  }

  v51 = v40;
  v125[3] = sub_10000A61C(v40, qword_10099EFC8);
  swift_getKeyPath();
  sub_10076338C();

  *&v174 = v178[0];
  sub_10075FDCC();
  swift_unknownObjectRelease();
  v53 = v147;
  v52 = v148;
  v178[3] = v148;
  v178[4] = v147;
  v54 = sub_10000DB7C(v178);
  (v151)(v54, v152, v52);
  sub_10076C90C();
  sub_10000CD74(v178);
  v55 = v149;
  sub_10076996C();
  sub_10076994C();
  v150(v55, v153);
  v127 = sub_100762ADC();
  v125[2] = v56;
  swift_getKeyPath();
  v57 = v50;
  sub_10076338C();

  v171[0] = v177[0];
  v144 = v51;
  sub_10075FDCC();
  swift_unknownObjectRelease();
  v177[3] = v52;
  v177[4] = v53;
  v58 = sub_10000DB7C(v177);
  (v151)(v58, v152, v52);
  sub_10076C90C();
  sub_10000CD74(v177);
  v127 = v57;
  sub_10076996C();
  sub_10076994C();
  v59 = v153;
  v150(v55, v153);
  sub_100762AFC();
  if (v60)
  {
    swift_getKeyPath();
    sub_10076338C();

    *&v167 = v171[0];
    sub_10075FDCC();
    swift_unknownObjectRelease();
    v61 = qword_100940178;
    v62 = v174;
    if (v61 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v144, qword_10099EFE0);
    swift_getKeyPath();
    sub_10076338C();

    *&v167 = v174;
    sub_10075FDCC();
    swift_unknownObjectRelease();
    v63 = v148;
    *(&v175 + 1) = v148;
    v176 = v147;
    v64 = sub_10000DB7C(&v174);
    (v151)(v64, v152, v63);
    sub_10076C90C();
    sub_10000CD74(&v174);
    v65 = v149;
    sub_10076996C();
    sub_10076994C();

    v59 = v153;
    v150(v65, v153);
  }

  else
  {
    v176 = 0;
    v174 = 0u;
    v175 = 0u;
  }

  v66 = sub_100762B5C();
  v67 = v138;
  v68 = v139;
  v69 = v126;
  if (v66)
  {
    v70 = v66;
    v71 = v144;
  }

  else
  {
    v72 = sub_100762B4C();
    v71 = v144;
    if (!v72)
    {
      v154 = 0;
      goto LABEL_16;
    }

    v70 = sub_100766AFC();
    v67 = v138;
  }

  (*(v67 + 104))(v69, enum case for OfferTitleType.standard(_:), v68);
  if (*(v70 + 16) && (v73 = sub_10061070C(v69), (v74 & 1) != 0))
  {
    v75 = (*(v70 + 56) + 16 * v73);
    v76 = v75[1];
    v154 = *v75;
    v77 = *(v67 + 8);

    v77(v69, v139);

    v72 = v76;
  }

  else
  {

    (*(v67 + 8))(v69, v68);
    v154 = 0;
    v72 = 0;
  }

LABEL_16:
  v78 = qword_100940018;
  v141 = v72;

  if (v78 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v140, qword_10099EBA0);
  swift_getKeyPath();
  sub_10076338C();

  *&v164 = v171[0];
  sub_10075FDCC();
  swift_unknownObjectRelease();
  if (qword_100940190 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v71, qword_10099F028);
  swift_getKeyPath();
  sub_10076338C();

  v170 = v171[0];
  sub_10075FDCC();
  swift_unknownObjectRelease();
  v79 = v148;
  v172 = v148;
  v173 = v147;
  v80 = sub_10000DB7C(v171);
  (v151)(v80, v152, v79);
  sub_10076C90C();
  sub_10000CD74(v171);
  v81 = v149;
  sub_10076996C();
  sub_10076994C();
  v150(v81, v59);
  sub_10000CF78(v171, v172);
  sub_10076D25C();
  sub_100762B3C();
  if (v82 == 1 || (v83 = v82, , !v83))
  {
    v169 = 0;
    v167 = 0u;
    v168 = 0u;
  }

  else
  {
    sub_10005312C();
    if (qword_100940C08 != -1)
    {
      swift_once();
    }

    v84 = sub_10076D3DC();
    sub_10000A61C(v84, qword_1009A1210);
    swift_getKeyPath();
    sub_10076338C();

    v85 = v167;
    sub_100770B3C();

    if (qword_100940180 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v144, qword_10099EFF8);
    swift_getKeyPath();
    sub_10076338C();

    v170 = v167;
    sub_10075FDCC();
    swift_unknownObjectRelease();
    v86 = v148;
    *(&v168 + 1) = v148;
    v169 = v147;
    v87 = sub_10000DB7C(&v167);
    (v151)(v87, v152, v86);
    sub_10076C90C();
    sub_10000CD74(&v167);
    v88 = v149;
    sub_10076996C();
    sub_10076994C();
    v150(v88, v153);
  }

  sub_100762B3C();
  if (v90 == 1 || (v91 = v89, , !v91))
  {
    v166 = 0;
    v164 = 0u;
    v165 = 0u;
  }

  else
  {
    sub_10005312C();
    if (qword_100940C10 != -1)
    {
      swift_once();
    }

    v92 = sub_10076D3DC();
    sub_10000A61C(v92, qword_1009A1228);
    swift_getKeyPath();
    sub_10076338C();

    v93 = v164;
    sub_100770B3C();

    if (qword_100940188 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v144, qword_10099F010);
    swift_getKeyPath();
    sub_10076338C();

    v163 = v164;
    sub_10075FDCC();
    swift_unknownObjectRelease();
    v94 = v148;
    *(&v165 + 1) = v148;
    v166 = v147;
    v95 = sub_10000DB7C(&v164);
    (v151)(v95, v152, v94);
    sub_10076C90C();
    sub_10000CD74(&v164);
    v96 = v149;
    sub_10076996C();
    sub_10076994C();
    v150(v96, v153);
  }

  v97 = sub_10076DDDC();
  swift_allocObject();
  v153 = sub_10076DDBC();
  swift_allocObject();
  v152 = sub_10076DDBC();
  swift_getKeyPath();
  sub_10076338C();

  v98 = v170;
  if (sub_10077071C())
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v99 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v99 = qword_100944CA0;
  }

  v100 = v143;
  v101 = sub_10000A61C(v143, v99);
  v102 = v136;
  v103 = v128;
  (*(v136 + 16))(v128, v101, v100);

  (*(v102 + 32))(v142, v103, v100);
  v151 = type metadata accessor for ProductLockupLayout.Metrics;
  v104 = v137;
  sub_1001B678C(v145, v137, type metadata accessor for ProductLockupLayout.Metrics);
  swift_allocObject();
  v105 = sub_10076DDBC();
  v106 = type metadata accessor for ProductLockupLayout(0);
  v107 = (v104 + v106[5]);
  v107[3] = v97;
  v107[4] = &protocol witness table for LayoutViewPlaceholder;
  *v107 = v105;
  sub_10000A570(v179, v104 + v106[6]);
  sub_10000A570(v177, v104 + v106[7]);
  sub_10000A570(v178, v104 + v106[8]);
  sub_100016E2C(&v174, v104 + v106[9], &qword_10094BB30, qword_100796E40);
  v108 = v104 + v106[10];
  *(v108 + 32) = 0;
  *v108 = 0u;
  *(v108 + 16) = 0u;
  swift_getKeyPath();
  sub_10076338C();

  v109 = v129;
  v110 = v134;
  (*(v129 + 104))(v131, enum case for OfferButtonSubtitlePosition.below(_:), v134);
  (*(v109 + 56))(v135, 1, 1, v110);
  sub_1001B66E4(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
  v111 = v130;
  sub_10076759C();
  v112 = v142;
  sub_10076440C();
  swift_unknownObjectRelease();
  (*(v132 + 8))(v111, v133);
  swift_allocObject();
  v113 = sub_10076DDBC();
  v114 = (v104 + v106[11]);
  v114[3] = v97;
  v114[4] = &protocol witness table for LayoutViewPlaceholder;
  *v114 = v113;
  v115 = v172;
  v116 = v173;
  v117 = sub_10000CF78(v171, v172);
  v118 = (v104 + v106[12]);
  v118[3] = v115;
  v118[4] = *(v116 + 1);
  v119 = sub_10000DB7C(v118);
  (*(*(v115 - 8) + 16))(v119, v117, v115);
  sub_100016E2C(&v167, v104 + v106[13], &qword_10094BB30, qword_100796E40);
  sub_100016E2C(&v164, v104 + v106[14], &qword_10094BB30, qword_100796E40);
  LOBYTE(v115) = sub_100762B2C();
  v120 = (v104 + v106[17]);
  v120[3] = v97;
  v120[4] = &protocol witness table for LayoutViewPlaceholder;
  *v120 = v153;
  v121 = (v104 + v106[18]);
  v121[3] = v97;
  v121[4] = &protocol witness table for LayoutViewPlaceholder;

  *v121 = v152;
  (*(v102 + 8))(v112, v143);
  sub_10000CFBC(&v164, &qword_10094BB30, qword_100796E40);
  sub_10000CFBC(&v167, &qword_10094BB30, qword_100796E40);
  sub_10000CFBC(&v174, &qword_10094BB30, qword_100796E40);
  sub_10000CD74(v177);
  sub_10000CD74(v178);
  sub_10000CD74(v179);
  sub_1001B672C(v145, v151);
  *(v104 + v106[15]) = v115 & 1;
  v122 = (v104 + v106[16]);
  v123 = v141;
  *v122 = v154;
  v122[1] = v123;
  return sub_10000CD74(v171);
}

double sub_1001B5A0C()
{
  v0 = sub_10000A5D4(&qword_100949638, &unk_10078C1B0);
  __chkstk_darwin(v0 - 8);
  v2 = &v33 - v1;
  v3 = sub_100767B9C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v37 = &v33 - v8;
  v9 = sub_10076C38C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100762BEC();
  sub_1001B66E4(&qword_1009624A0, &type metadata accessor for ProductTopLockup, &protocol conformance descriptor for ProductTopLockup);
  sub_10076332C();
  if (!v38)
  {
    return 0.0;
  }

  v34 = v4;
  v35 = v2;
  v36 = v3;
  swift_getKeyPath();
  sub_10076338C();

  v33 = v38;
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C24C();
  v14 = v13;
  v15 = *(v10 + 8);
  v15(v12, v9);
  JUScreenClassGetPortraitWidth();
  v17 = v16;
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C24C();
  v19 = v18;
  v15(v12, v9);
  JUScreenClassGetPortraitWidth();
  v21 = v20;
  if (sub_100762B7C())
  {
    v22 = v34;
    v23 = &enum case for ProductPageIconDimension.large(_:);
    if (v17 >= v14)
    {
      v23 = &enum case for ProductPageIconDimension.extraSmall(_:);
    }

    v24 = v36;
    (*(v34 + 104))(v6, *v23, v36);
    v25 = v37;
    (*(v22 + 32))(v37, v6, v24);
    v26 = v35;
    v27 = v33;
  }

  else
  {
    v27 = v33;
    v29 = sub_1007706FC();
    v26 = v35;
    v24 = v36;
    v22 = v34;
    v25 = v37;
    if (v29 & 1) != 0 && (sub_10077071C())
    {
      v30 = &enum case for ProductPageIconDimension.extraLargeAccessibility(_:);
    }

    else if ((sub_1007706FC() & 1) != 0 && v21 < v19)
    {
      v30 = &enum case for ProductPageIconDimension.extraLarge(_:);
    }

    else if (v17 < v14 || (sub_10077071C() & 1) != 0)
    {
      v30 = &enum case for ProductPageIconDimension.medium(_:);
    }

    else
    {
      v30 = &enum case for ProductPageIconDimension.small(_:);
    }

    (*(v22 + 104))(v25, *v30, v24);
  }

  sub_100762BDC();
  sub_100767B8C();
  v28 = v31;

  sub_10000CFBC(v26, &qword_100949638, &unk_10078C1B0);
  (*(v22 + 8))(v25, v24);
  return v28;
}

double sub_1001B5E80()
{
  v0 = sub_10076C38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10076338C();

  v4 = sub_100762B0C();
  if (v4)
  {
    v5 = v4;
    v6 = 0.0;
    if ((sub_100762B7C() & 1) == 0)
    {
      v28 = v0;
      if (qword_100940080 != -1)
      {
        swift_once();
      }

      sub_10000CF78(qword_10099ECE8, qword_10099ED00);
      swift_getKeyPath();
      sub_10076338C();

      v7 = *&v29[0];
      sub_10076D41C();
      v6 = v8;

      v0 = v28;
    }

    v9 = sub_100762B7C();
    v10 = sub_10076B99C();
    if (v10)
    {
    }

    sub_10076B98C();
    sub_10000A5D4(&unk_10094C3B0, qword_10078C480);
    v11 = sub_1007701EC();

    if (v9)
    {
      _Q3 = xmmword_10078C3D0;
      v13 = 17.0;
      v14 = 0.0;
      v15 = 0.0;
    }

    else
    {
      v14 = 22.0;
      if (v10)
      {
        v14 = 15.0;
      }

      if (v11)
      {
        v15 = 15.0;
      }

      else
      {
        v15 = v14;
      }

      v13 = 9.0;
      if (v11)
      {
        v17 = 12.0;
      }

      else
      {
        v17 = 9.0;
      }

      __asm { FMOV            V3.2D, #15.0 }

      *&_Q3 = v17;
    }

    v29[0] = _Q3;
    v29[1] = _Q3;
    v30 = v13;
    v31 = v14;
    v32 = v13;
    v33 = v15;
    v34 = xmmword_100785070;
    v35 = xmmword_100785080;
    v22 = sub_100630CB4();
    sub_10076C2FC();
    sub_10011D440(v5, v29, v22, v6, 0.0, 0.0, 0.0, v23, v24);
    v16 = v25;

    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0.0;
  }

  (*(v1 + 8))(v3, v0);
  return v16;
}

double sub_1001B6160(uint64_t a1, double a2)
{
  v4 = sub_10076C38C();
  v42 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v35[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v35[-v8];
  v10 = sub_10076B21C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_10000A5D4(&unk_10094C330, &qword_1007928A0);
  __chkstk_darwin(v14);
  v17 = &v35[-v16];
  if (!a1)
  {
    return 0.0;
  }

  v37 = v15;
  v39 = v11;
  v40 = v10;
  swift_getKeyPath();

  sub_10076338C();

  v18 = v43;
  v19 = sub_1007706EC();

  if (v19)
  {
    v20 = a2;
  }

  else
  {
    v20 = 0.0;
  }

  sub_1001B65D8();
  sub_10076335C();
  v41 = a1;
  sub_10076B23C();
  swift_getKeyPath();
  v38 = v14;
  sub_10076FD9C();

  v36 = v43 ^ 1;
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C26C();
  v22 = v21;
  v23 = *(v42 + 8);
  v23(v9, v4);
  swift_getKeyPath();
  sub_10076338C();

  v24 = v43;
  v25 = sub_1007706EC();

  if (v25)
  {
    swift_getKeyPath();
    sub_10076338C();

    sub_10076C25C();
    v27 = v26;
    v23(v9, v4);
    v22 = v22 - v27;
  }

  swift_getKeyPath();
  sub_10076338C();

  v28 = v43;
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C24C();
  v30 = v29;
  v23(v6, v4);
  v31 = v22 - v20;
  if (v22 - v20 < 0.0)
  {
    v31 = 0.0;
  }

  sub_10020B56C(v28, v13, v36 & 1, v30, *&v31, 0);
  v33 = v32;

  (*(v39 + 8))(v13, v40);
  (*(v37 + 8))(v17, v38);
  return v33;
}

unint64_t sub_1001B65D8()
{
  result = qword_1009624B0;
  if (!qword_1009624B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009624B0);
  }

  return result;
}

uint64_t sub_1001B6654(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001B66E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001B672C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001B678C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001B6820()
{
  v1 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  __chkstk_darwin(v1 - 8);
  v2 = sub_10000A5D4(&qword_10094C3E0, &qword_100792AC8);
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v10 - v5;
  if ([*(*(v0 + OBJC_IVAR____TtC20ProductPageExtension38ProductEditorsChoiceCollectionViewCell_editorsChoiceView) + qword_100954908) isHidden])
  {
    sub_10000A5D4(&qword_10094AA58, &qword_100790530);
    sub_10076A92C();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100784500;
    sub_10076A91C();
    sub_10076A90C();
    v10 = v7;
    sub_1001B79A4(&qword_10094AA60, &type metadata accessor for SelectableShelfComponentViewReaction, &protocol conformance descriptor for SelectableShelfComponentViewReaction);
    sub_10000A5D4(&qword_10094AA68, &qword_10079F190);
    sub_100166BA8();
    return sub_1007712CC();
  }

  else
  {
    sub_10076336C();
    sub_10076F87C();
    sub_1001B7920();
    sub_10076F83C();
    sub_10000A5D4(&qword_10094AA58, &qword_100790530);
    sub_10076A92C();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100783C60;
    sub_10076A91C();
    sub_10076A90C();
    sub_10076A8FC();
    v10 = v9;
    sub_1001B79A4(&qword_10094AA60, &type metadata accessor for SelectableShelfComponentViewReaction, &protocol conformance descriptor for SelectableShelfComponentViewReaction);
    sub_10000A5D4(&qword_10094AA68, &qword_10079F190);
    sub_100166BA8();
    sub_1007712CC();
    return (*(v3 + 8))(v6, v2);
  }
}

void sub_1001B6C18(void *a1, double a2)
{
  v4 = type metadata accessor for EditorsChoiceView();
  swift_getObjectType();
  sub_100043A10(3, 0, 0, a1, a2, 0, 1, v4);
}

uint64_t sub_1001B6C88@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension38ProductEditorsChoiceCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10004B630(v1 + v3, a1);
}

uint64_t sub_1001B6CE4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension38ProductEditorsChoiceCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000516DC(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1001B6DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1001B79A4(&qword_10094C3E8, type metadata accessor for ProductEditorsChoiceCollectionViewCell, &unk_100792A18);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}