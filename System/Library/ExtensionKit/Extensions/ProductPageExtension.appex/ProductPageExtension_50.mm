void sub_10059A648(void *a1)
{
  type metadata accessor for ScreenshotCollectionViewCell(0);
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(*(v3 + OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView);
    v5 = a1;
    v9 = v4;
    sub_10075FCAC();
  }

  else
  {
    type metadata accessor for VideoCollectionViewCell(0);
    if (swift_dynamicCastClass() && *(v1 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_objectGraph))
    {
      sub_100767D5C();
      sub_10076F64C();
      v6 = a1;

      sub_10076FC1C();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        sub_10059A958(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
      }

      sub_10059A958(&qword_10095DEA8, type metadata accessor for VideoCollectionViewCell, &unk_1007ADF60);
      v8 = v6;
      sub_100767CFC();
    }
  }
}

void sub_10059A854(void *a1, SEL *a2)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    if (*(v2 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_pageTraits))
    {
      swift_getObjectType();
      v7 = a1;
      swift_unknownObjectRetain();
      PageTraitEnvironment.pageColumnMargin.getter();
      v9 = v8;
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = a1;
      v9 = 8.0;
    }

    [v6 *a2];
  }

  if (*(v2 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_pageTraits))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    PageTraitEnvironment.pageColumnMargin.getter();
    swift_unknownObjectRelease();
  }
}

uint64_t sub_10059A958(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10059A9A0(void *a1)
{
  if (a1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension36AdvertSearchResultCollectionViewCell_advertsContentView);
    v4 = *&v3[OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_lockupMediaView];
    v5 = v3;
    v6 = [a1 superview];
    if (v6)
    {
      v7 = v6;
      sub_1000ACA5C();
      v8 = v4;
      v9 = sub_100770EEC();

      v5 = v7;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void sub_10059AA58(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension36AdvertSearchResultCollectionViewCell_advertsContentView);
  v3 = *&v2[OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_lockupMediaView];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_10059B578(&qword_100942810, 255, type metadata accessor for VideoView, &unk_1007AF120);
    v6 = v2;
    v7 = [v5 superview];
    if (v7)
    {
      v8 = v7;
      sub_1000ACA5C();
      v9 = v3;
      v10 = sub_100770EEC();

      if (v10)
      {
        v11 = swift_unknownObjectWeakLoadStrong();
        if (v11)
        {
          v12 = v11;
          [v11 removeFromSuperview];
        }
      }
    }

    else
    {
    }
  }

  else
  {
    v13 = v2;
  }

  swift_unknownObjectWeakAssign();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    [v3 addSubview:v14];
  }

  sub_10057E5D8();
  [v3 setNeedsLayout];
}

void (*sub_10059ABF4(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension36AdvertSearchResultCollectionViewCell_advertsContentView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_10059AC68;
}

void sub_10059AC68(uint64_t a1, char a2)
{
  v4 = *a1;
  v30 = *(*(a1 + 8) + *(a1 + 16));
  v5 = *&v30[OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_lockupMediaView];
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_10059B578(&qword_100942810, 255, type metadata accessor for VideoView, &unk_1007AF120);
      v8 = v4;
      v9 = v30;
      v10 = [v7 superview];
      if (v10)
      {
        v11 = v10;
        sub_1000ACA5C();
        v12 = v5;
        v13 = sub_100770EEC();

        if (v13)
        {
          v14 = swift_unknownObjectWeakLoadStrong();
          if (v14)
          {
            v15 = v14;
            [v14 removeFromSuperview];
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v8 = v4;
      v23 = v30;
    }

    swift_unknownObjectWeakAssign();
    v25 = swift_unknownObjectWeakLoadStrong();
    if (v25)
    {
      v26 = v25;
      [v5 addSubview:v25];
    }

    sub_10057E5D8();
    [v5 setNeedsLayout];

    v27 = *a1;
  }

  else
  {
    if (Strong)
    {
      sub_10059B578(&qword_100942810, 255, type metadata accessor for VideoView, &unk_1007AF120);
      v16 = v30;
      v17 = [v7 superview];
      if (v17)
      {
        v18 = v17;
        sub_1000ACA5C();
        v19 = v5;
        v20 = sub_100770EEC();

        if (v20)
        {
          v21 = swift_unknownObjectWeakLoadStrong();
          if (v21)
          {
            v22 = v21;
            [v21 removeFromSuperview];
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v24 = v30;
    }

    swift_unknownObjectWeakAssign();
    v28 = swift_unknownObjectWeakLoadStrong();
    if (v28)
    {
      v29 = v28;
      [v5 addSubview:v28];
    }

    sub_10057E5D8();
    [v5 setNeedsLayout];

    v27 = v30;
  }
}

char *sub_10059AF58(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC20ProductPageExtension36AdvertSearchResultCollectionViewCell_advertsContentView] = [objc_allocWithZone(type metadata accessor for AdvertsSearchResultContentView()) initWithFrame:{a1, a2, a3, a4}];
  v16.receiver = v4;
  v16.super_class = type metadata accessor for AdvertSearchResultCollectionViewCell();
  v9 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v13 = v9;
  [v13 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v14 = [v13 contentView];
  [v14 addSubview:*&v13[OBJC_IVAR____TtC20ProductPageExtension36AdvertSearchResultCollectionViewCell_advertsContentView]];

  return v13;
}

id sub_10059B230(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AdvertSearchResultCollectionViewCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t (*sub_10059B2CC(uint64_t **a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_10059ABF4(v2);
  return sub_100019A4C;
}

uint64_t sub_10059B33C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_10059B390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_10059B3FC(uint64_t *a1, uint64_t a2))()
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
  swift_getWitnessTable();
  *(v4 + 32) = sub_10076483C();
  return sub_10001D41C;
}

uint64_t sub_10059B578(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_10059B5C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a9, double a10)
{
  v27[0] = a1;
  v27[2] = a4;
  v12 = sub_10076C36C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v27 - v17;
  v19 = sub_10000A5D4(&qword_100942C40, &unk_100786C80);
  v20 = v19 - 8;
  __chkstk_darwin(v19);
  v22 = v27 - v21;
  sub_100016E2C(a2, v27 - v21, &qword_1009499A0, &qword_1007848B0);
  sub_100016E2C(a3, &v22[*(v20 + 56)], &qword_1009499A0, &qword_1007848B0);
  swift_getKeyPath();
  sub_10000A5D4(&unk_100946720, &qword_100784820);
  sub_10076F49C();
  v23 = v27[1];

  v24 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v28)
  {
    v24 = &enum case for PageGrid.Direction.vertical(_:);
  }

  (*(v13 + 104))(v18, *v24, v12);
  if (*(v23 + 16))
  {
    v25 = *(v23 + 17);
    (*(v13 + 16))(v15, v18, v12);
    sub_10031E5D4(v25);
  }

  else
  {
    (*(v13 + 16))(v15, v18, v12);
    sub_1005AC334(0.0);
  }

  sub_10076C33C();
  (*(v13 + 8))(v18, v12);
  return sub_10000CFBC(v22, &qword_100942C40, &unk_100786C80);
}

uint64_t sub_10059B914()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10059B970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  swift_getWitnessTable();

  return sub_1007620BC();
}

uint64_t sub_10059BA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  swift_getWitnessTable();

  return sub_1007620AC();
}

uint64_t sub_10059BBA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>, double a13@<D6>, double a14@<D7>, double a15, double a16)
{
  v29[5] = a4;
  v29[6] = a5;
  *&v29[3] = a13;
  *&v29[4] = a14;
  v29[1] = a6;
  v29[2] = a1;
  v19 = sub_10000A5D4(&qword_100942C40, &unk_100786C80);
  v20 = v19 - 8;
  __chkstk_darwin(v19);
  v22 = v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = v29 - v24;
  v26 = *v16;
  sub_100016E2C(a2, v29 - v24, &qword_1009499A0, &qword_1007848B0);
  sub_100016E2C(a3, &v25[*(v20 + 56)], &qword_1009499A0, &qword_1007848B0);
  v29[7] = v26;
  sub_100016E2C(v25, v22, &qword_100942C40, &unk_100786C80);
  v27 = *(v20 + 56);
  type metadata accessor for TopChartsSegmentPageGridProvider();
  sub_1007620BC();
  sub_10000CFBC(v25, &qword_100942C40, &unk_100786C80);
  sub_10000CFBC(&v22[v27], &qword_1009499A0, &qword_1007848B0);
  return sub_10000CFBC(v22, &qword_1009499A0, &qword_1007848B0);
}

uint64_t sub_10059BD8C(void *a1)
{
  if (*v1 == *a1)
  {
    v2 = v1;
    if (sub_1007713EC())
    {
      type metadata accessor for ActionDebugSetting();
      result = swift_dynamicCastClass();
      if (!result)
      {
        return result;
      }

      v4 = result;
      v5 = *(result + 56) == v2[7] && *(result + 64) == v2[8];
      if (v5 || (sub_10077167C() & 1) != 0)
      {
        v6 = v4[10];
        v7 = v2[10];
        if (v6)
        {
          if (!v7 || (v4[9] != v2[9] || v6 != v7) && (sub_10077167C() & 1) == 0)
          {
            return 0;
          }

LABEL_16:
          v8 = v4[11];
          if (v8)
          {

            v10 = v8(v9);
            v12 = v11;
            v13 = v2[11];
            if (v13)
            {
              v14 = v10;
              v15 = v13();
              v17 = v16;
              if (v12)
              {
                if (v16)
                {
                  if (v14 != v15 || v12 != v16)
                  {
                    v21 = sub_10077167C();

                    return v21 & 1;
                  }

                  goto LABEL_32;
                }

                goto LABEL_28;
              }

LABEL_25:

              if (!v17)
              {
                return 1;
              }

              goto LABEL_29;
            }

            if (v11)
            {
LABEL_28:

LABEL_29:

              return 0;
            }
          }

          else
          {
            v18 = v2[11];

            if (v18)
            {
              v18(v19);
              v17 = v20;
              goto LABEL_25;
            }
          }

LABEL_32:

          return 1;
        }

        if (!v7)
        {
          goto LABEL_16;
        }
      }
    }
  }

  return 0;
}

double sub_10059BF9C(uint64_t a1, __n128 a2)
{
  sub_1007713FC();
  sub_10077008C();
  if (*(v2 + 80))
  {
    sub_10077177C(1u);
    v3 = sub_10077008C();
    v4 = *(v2 + 88);
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_10077177C(0);
    v4 = *(v2 + 88);
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  v4(v3);
  if (v5)
  {
    sub_10077177C(1u);
    sub_10077008C();
    goto LABEL_8;
  }

LABEL_7:
  sub_10077177C(0);
LABEL_8:

  return result;
}

double sub_10059C088()
{

  sub_1000167E0(*(v0 + 88), *(v0 + 96));

  return result;
}

uint64_t sub_10059C0C8()
{
  sub_100016C74(v0 + 16);

  sub_1000167E0(*(v0 + 88), *(v0 + 96));

  return swift_deallocClassInstance();
}

id sub_10059C164(uint64_t a1, uint64_t a2)
{
  result = [v2 collectionView];
  if (result)
  {
    v4 = result;
    v5 = [v2 collectionView];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 delegate];

      if (v7)
      {
        v35 = &OBJC_PROTOCOL____TtP20ProductPageExtension49UICollectionViewDelegateShelfDisplayingFlowLayout_;
        v8 = swift_dynamicCastObjCProtocolConditional();
        if (!v8)
        {
          goto LABEL_14;
        }

        v9 = [v8 collectionView:v4 layout:v2 shouldProvideBackgroundAtSection:sub_10075E0AC()];
        swift_unknownObjectRelease();
        if (v9)
        {
          v10 = [v2 collectionView];
          if (v10)
          {
            v11 = v10;
            v12 = [v10 delegate];

            if (v12)
            {
              v34 = &OBJC_PROTOCOL____TtP20ProductPageExtension49UICollectionViewDelegateShelfDisplayingFlowLayout_;
              v13 = swift_dynamicCastObjCProtocolConditional();
              if (v13)
              {
                [v13 collectionView:v4 layout:v2 insetForBackgroundAtSection:sub_10075E0AC()];
                v15 = v14;
                v17 = v16;
                swift_unknownObjectRelease();
                isa = sub_10075E02C().super.isa;
                v33.receiver = v2;
                v33.super_class = type metadata accessor for ShelfDisplayingFlowLayout();
                v19 = objc_msgSendSuper2(&v33, "layoutAttributesForItemAtIndexPath:", isa);

                if (v19)
                {
                  [v19 frame];
                  v21 = v20;
                  v23 = v22;
                  v25 = v24;
                  v27 = v26;
                  v28 = sub_10076FF6C();
                  v29 = sub_10075E02C().super.isa;
                  v30 = [objc_opt_self() layoutAttributesForDecorationViewOfKind:v28 withIndexPath:v29];

                  v36.origin.x = v21;
                  v36.origin.y = v23;
                  v36.size.width = v25;
                  v36.size.height = v27;
                  v31 = CGRectGetMinY(v36) - v15;
                  [v4 bounds];
                  Width = CGRectGetWidth(v37);
                  v38.origin.x = v21;
                  v38.origin.y = v23;
                  v38.size.width = v25;
                  v38.size.height = v27;
                  [v30 setFrame:{0.0, v31, Width, v17 + v15 + CGRectGetHeight(v38)}];
                  [v30 setZIndex:-1];

                  return v30;
                }

                goto LABEL_11;
              }

LABEL_14:

              swift_unknownObjectRelease();
              return 0;
            }
          }
        }
      }
    }

LABEL_11:

    return 0;
  }

  return result;
}

uint64_t sub_10059C458(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC20ProductPageExtension25ShelfDisplayingFlowLayout_multiColumnOrigins;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (*(v5 + 16))
  {

    v7 = sub_100610A5C(a1, v6);
    if (v8)
    {
      v9 = *(*(v5 + 56) + 16 * v7);

      v10 = sub_10075E0AC();
      v11 = OBJC_IVAR____TtC20ProductPageExtension25ShelfDisplayingFlowLayout_multiColumnMinYBySection;
      swift_beginAccess();
      if (*(*(v2 + v11) + 16))
      {
        sub_10060FF40(v10);
        if (v12)
        {
          return v9;
        }
      }
    }

    else
    {
    }
  }

  return 0;
}

void sub_10059C558(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_10075E11C();
  v95 = *(v4 - 8);
  __chkstk_darwin(v4);
  v108 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v91 - v7;
  v9 = sub_1000FE70C(_swiftEmptyArrayStorage);
  v10 = OBJC_IVAR____TtC20ProductPageExtension25ShelfDisplayingFlowLayout_multiColumnMinYBySection;
  swift_beginAccess();
  v94 = v10;
  *&v2[v10] = v9;

  v11 = sub_1000FE7EC(_swiftEmptyArrayStorage);
  v12 = OBJC_IVAR____TtC20ProductPageExtension25ShelfDisplayingFlowLayout_multiColumnOrigins;
  swift_beginAccess();
  v106 = v12;
  *&v3[v12] = v11;

  v13 = [v3 collectionView];
  if (!v13)
  {
    return;
  }

  v14 = v13;
  v15 = [v3 collectionView];
  if (!v15 || (v16 = v15, v17 = [v15 delegate], v16, !v17))
  {
LABEL_55:

    return;
  }

  v111 = &OBJC_PROTOCOL____TtP20ProductPageExtension49UICollectionViewDelegateShelfDisplayingFlowLayout_;
  v18 = swift_dynamicCastObjCProtocolConditional();
  if (!v18)
  {

    swift_unknownObjectRelease();
    return;
  }

  v19 = v18;
  v20 = [v14 numberOfSections];
  if ((v20 & 0x8000000000000000) != 0)
  {
    goto LABEL_63;
  }

  v21 = v20;
  if (!v20)
  {
LABEL_54:
    swift_unknownObjectRelease();
    goto LABEL_55;
  }

  v22 = 0;
  left = UIEdgeInsetsZero.left;
  v105 = (v95 + 8);
  v101 = (v95 + 16);
  v23 = &selRef_configurationWithWeight_;
  v103 = xmmword_100784500;
  v24 = &selRef_configurationWithWeight_;
  v98 = v14;
  v96 = v19;
  v97 = v17;
  v92 = v20;
  while (1)
  {
    if ([v19 v23[284]])
    {
      v107 = [v19 collectionView:v14 layout:v3 multiColumnCountAtSection:v22];
      if (v107 >= 2)
      {
        break;
      }
    }

LABEL_10:
    if (++v22 == v21)
    {
      goto LABEL_54;
    }
  }

  v25 = [v19 respondsToSelector:"collectionView:layout:insetForSectionAtIndex:"];
  v26 = left;
  if (v25)
  {
    [v19 collectionView:v14 layout:v3 insetForSectionAtIndex:v22];
    v26 = v27;
  }

  [v19 collectionView:v14 layout:v3 multiColumnMarginAt:v22];
  v29 = v28;
  v30 = [v14 numberOfItemsInSection:v22];
  if ((v30 & 0x8000000000000000) != 0)
  {
    goto LABEL_60;
  }

  if (!v30)
  {
    v33 = 1.79769313e308;
LABEL_45:
    v77 = v94;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v110 = *&v3[v77];
    v79 = v110;
    *&v3[v77] = 0x8000000000000000;
    v80 = sub_10060FF40(v22);
    v82 = v79[2];
    v83 = (v81 & 1) == 0;
    v74 = __OFADD__(v82, v83);
    v84 = v82 + v83;
    if (v74)
    {
      goto LABEL_61;
    }

    v85 = v81;
    if (v79[3] >= v84)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v90 = v80;
        sub_10024D884();
        v80 = v90;
      }
    }

    else
    {
      sub_1002495E8(v84, isUniquelyReferenced_nonNull_native);
      v80 = sub_10060FF40(v22);
      if ((v85 & 1) != (v86 & 1))
      {
        goto LABEL_65;
      }
    }

    v21 = v92;
    v23 = &selRef_configurationWithWeight_;
    v87 = v110;
    if (v85)
    {
      *(v110[7] + 8 * v80) = v33;
    }

    else
    {
      v110[(v80 >> 6) + 8] |= 1 << v80;
      *(v87[6] + 8 * v80) = v22;
      *(v87[7] + 8 * v80) = v33;
      v88 = v87[2];
      v74 = __OFADD__(v88, 1);
      v89 = v88 + 1;
      if (v74)
      {
        goto LABEL_62;
      }

      v87[2] = v89;
    }

    *&v3[v94] = v87;
    swift_endAccess();
    v24 = &selRef_configurationWithWeight_;
    goto LABEL_10;
  }

  v31 = 0;
  v99 = v107 - 1;
  v32 = 0.0;
  v33 = 1.79769313e308;
  v34 = 0.0;
  v100 = v22;
  v35 = v105;
  v104 = v30;
  while (1)
  {
    sub_10000A5D4(&qword_100952110, qword_100790770);
    v36 = swift_allocObject();
    *(v36 + 16) = v103;
    *(v36 + 32) = v22;
    *(v36 + 40) = v31;
    sub_10075E01C();
    if (([v19 respondsToSelector:v24[288]] & 1) == 0)
    {
      (*v35)(v8, v4);
      goto LABEL_19;
    }

    swift_unknownObjectRetain();
    isa = sub_10075E02C().super.isa;
    [v19 v24[288]];
    v39 = v38;
    v41 = v40;
    swift_unknownObjectRelease();

    v42 = sub_10075E09C();
    v43 = sub_10075E09C();
    if (!(v42 / v107))
    {
      v44 = sub_10075E02C().super.isa;
      v45 = type metadata accessor for ShelfDisplayingFlowLayout();
      v109.receiver = v3;
      v109.super_class = v45;
      v46 = objc_msgSendSuper2(&v109, "layoutAttributesForItemAtIndexPath:", v44);

      if (v46)
      {
        [v46 frame];
        MinY = CGRectGetMinY(v112);

        if (v33 >= MinY)
        {
          v33 = MinY;
        }
      }
    }

    v48 = *v101;
    v49 = v108;
    v50 = v4;
    (*v101)(v108, v8, v4);
    v51 = v106;
    swift_beginAccess();
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v110 = *&v3[v51];
    v53 = v110;
    *&v3[v51] = 0x8000000000000000;
    v56 = sub_100610A5C(v49, v54);
    v57 = v53[2];
    v58 = (v55 & 1) == 0;
    v59 = v57 + v58;
    if (__OFADD__(v57, v58))
    {
      break;
    }

    v60 = v55;
    if (v53[3] >= v59)
    {
      v35 = v105;
      if (v52)
      {
        goto LABEL_31;
      }

      sub_10024D9D0(v59, v55);
    }

    else
    {
      sub_10024984C(v59, v52);
      v62 = sub_100610A5C(v108, v61);
      if ((v60 & 1) != (v63 & 1))
      {
        goto LABEL_64;
      }

      v56 = v62;
    }

    v35 = v105;
LABEL_31:
    v102 = v43 % v107;
    v64 = v26 + (v29 + v39) * (v43 % v107);
    v65 = v110;
    if (v60)
    {
      v66 = (v110[7] + 16 * v56);
      *v66 = v64;
      v66[1] = v34;
      v67 = *v35;
      v4 = v50;
      (*v35)(v108, v50);
    }

    else
    {
      v68 = v3;
      v69 = v8;
      v110[(v56 >> 6) + 8] |= 1 << v56;
      v70 = v95;
      v71 = v108;
      v48(v65[6] + *(v95 + 72) * v56, v108, v50);
      v72 = (v65[7] + 16 * v56);
      v4 = v50;
      *v72 = v64;
      v72[1] = v34;
      v67 = *(v70 + 8);
      v67(v71, v50);
      v73 = v65[2];
      v74 = __OFADD__(v73, 1);
      v75 = v73 + 1;
      if (v74)
      {
        goto LABEL_59;
      }

      v65[2] = v75;
      v8 = v69;
      v3 = v68;
      v35 = v105;
    }

    *&v3[v106] = v65;

    swift_endAccess();
    v67(v8, v4);
    v76 = v34 + v41;
    if (v32 > v34 + v41)
    {
      v76 = v32;
    }

    if (v102 == v99)
    {
      v32 = 0.0;
    }

    else
    {
      v32 = v76;
    }

    if (v102 == v99)
    {
      v34 = v76;
    }

    v14 = v98;
    v19 = v96;
    v22 = v100;
    v24 = &selRef_configurationWithWeight_;
LABEL_19:
    if (v104 == ++v31)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  sub_1007716DC();
  __break(1u);
LABEL_65:
  sub_1007716DC();
  __break(1u);
}

id sub_10059CE44()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension25ShelfDisplayingFlowLayout_multiColumnMinYBySection;
  *&v0[v1] = sub_1000FE70C(_swiftEmptyArrayStorage);
  v2 = OBJC_IVAR____TtC20ProductPageExtension25ShelfDisplayingFlowLayout_multiColumnOrigins;
  *&v0[v2] = sub_1000FE7EC(_swiftEmptyArrayStorage);
  v8.receiver = v0;
  v8.super_class = type metadata accessor for ShelfDisplayingFlowLayout();
  v3 = objc_msgSendSuper2(&v8, "init");
  sub_100016F40(0, &qword_100950650, UICollectionReusableView_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = v3;
  v6 = sub_10076FF6C();
  [v5 registerClass:ObjCClassFromMetadata forDecorationViewOfKind:v6];

  return v5;
}

void sub_10059D03C(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  v55 = sub_10075E11C();
  v11 = *(v55 - 8);
  __chkstk_darwin(v55);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v54 = &v47 - v15;
  v16 = type metadata accessor for ShelfDisplayingFlowLayout();
  v49 = v6;
  v58.receiver = v6;
  v58.super_class = v16;
  v17 = objc_msgSendSuper2(&v58, "layoutAttributesForElementsInRect:", a1, a2, a3, a4);
  if (!v17)
  {
    return;
  }

  v18 = v17;
  sub_100016F40(0, &qword_100947EF0, UICollectionViewLayoutAttributes_ptr);
  v19 = sub_1007701BC();

  v57 = _swiftEmptyArrayStorage;
  if (v19 >> 62)
  {
    v20 = sub_10077158C();
    v21 = v49;
    if (v20)
    {
      goto LABEL_4;
    }

LABEL_25:
    v48 = _swiftEmptyArrayStorage;
LABEL_26:
    v56 = v19;
    sub_1000F99DC(v48);
    return;
  }

  v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v21 = v49;
  if (!v20)
  {
    goto LABEL_25;
  }

LABEL_4:
  if (v20 >= 1)
  {
    v22 = OBJC_IVAR____TtC20ProductPageExtension25ShelfDisplayingFlowLayout_multiColumnMinYBySection;
    v23 = v19 & 0xC000000000000001;
    v52 = OBJC_IVAR____TtC20ProductPageExtension25ShelfDisplayingFlowLayout_multiColumnOrigins;
    v53 = v13;
    swift_beginAccess();
    v47 = v22;
    swift_beginAccess();
    v24 = 0;
    v51 = "multiColumnOrigins";
    v25 = (v11 + 8);
    v48 = _swiftEmptyArrayStorage;
    v50 = v19 & 0xC000000000000001;
    while (1)
    {
      v26 = v23 ? sub_10077149C() : *(v19 + 8 * v24 + 32);
      v27 = v26;
      if (![v26 representedElementCategory])
      {
        break;
      }

LABEL_7:
      if (v20 == ++v24)
      {
        goto LABEL_26;
      }
    }

    v28 = [v27 indexPath];
    v29 = v54;
    sub_10075E06C();

    v30 = sub_10059C164(0xD00000000000001FLL, v51 | 0x8000000000000000);
    v31 = *v25;
    (*v25)(v29, v55);
    if (v30)
    {
      v32 = v30;
      sub_10077019C();
      if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      sub_10077025C();

      v48 = v57;
      v21 = v49;
    }

    v33 = [v27 indexPath];
    v34 = v53;
    sub_10075E06C();

    v35 = *&v21[v52];
    if (*(v35 + 16))
    {

      v37 = sub_100610A5C(v34, v36);
      if (v38)
      {
        v39 = *(v35 + 56) + 16 * v37;
        v40 = *v39;
        v41 = *(v39 + 8);

        v42 = sub_10075E0AC();
        v43 = *&v21[v47];
        if (*(v43 + 16))
        {
          v44 = sub_10060FF40(v42);
          if (v45)
          {
            v46 = *(*(v43 + 56) + 8 * v44);

            v31(v34, v55);

            [v27 frame];
            [v27 setFrame:{v40, v41 + v46}];

LABEL_23:
            v23 = v50;
            goto LABEL_7;
          }
        }
      }

      else
      {
      }
    }

    v31(v34, v55);
    goto LABEL_23;
  }

  __break(1u);
}

id sub_10059D558(uint64_t a1, uint64_t a2)
{
  v3 = sub_10075E11C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = sub_10075E02C().super.isa;
  v8 = type metadata accessor for ShelfDisplayingFlowLayout();
  v17.receiver = v2;
  v17.super_class = v8;
  v9 = objc_msgSendSuper2(&v17, "layoutAttributesForItemAtIndexPath:", isa);

  if (v9)
  {
    v10 = [v9 indexPath];
    sub_10075E06C();

    v11 = sub_10059C458(v6);
    v13 = v12;
    v15 = v14;
    (*(v4 + 8))(v6, v3);
    if ((v15 & 1) == 0)
    {
      [v9 frame];
      [v9 setFrame:{*&v11, v13}];
    }
  }

  return v9;
}

void *sub_10059DAB0(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v20.receiver = v6;
  v20.super_class = type metadata accessor for ShelfDisplayingFlowLayout();
  v11 = objc_msgSendSuper2(&v20, "invalidationContextForBoundsChange:", a3, a4, a5, a6);
  objc_opt_self();
  v12 = swift_dynamicCastObjCClassUnconditional();
  v13 = [v6 collectionView];
  if (v13)
  {
    v14 = v13;
    [v13 bounds];
    v16 = v15;
    v18 = v17;

    if (v16 != a5)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v18 = 0.0;
    if (a5 != 0.0)
    {
LABEL_6:
      [v12 setInvalidateFlowLayoutAttributes:1];
      [v12 setInvalidateFlowLayoutDelegateMetrics:1];
      return v12;
    }
  }

  if (v18 != a6)
  {
    goto LABEL_6;
  }

  return v12;
}

id sub_10059DC4C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ShelfDisplayingFlowLayout();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10059DDA0()
{
  v0 = sub_10076D39C();
  __chkstk_darwin(v0 - 8);
  v26[3] = v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v26[2] = v26 - v3;
  v4 = sub_10076D1AC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10075E93C();
  sub_10000DB18(v8, qword_1009A09A0);
  v26[1] = sub_10000A61C(v8, qword_1009A09A0);
  v68[8] = &type metadata for Double;
  v68[9] = &protocol witness table for Double;
  v68[5] = 0x4024000000000000;
  if (qword_100940908 != -1)
  {
    swift_once();
  }

  v9 = sub_10076D3DC();
  v10 = sub_10000A61C(v9, qword_10095E110);
  v11 = *(v9 - 8);
  v12 = *(v11 + 16);
  v30 = v11 + 16;
  v31 = v12;
  v12(v7, v10, v9);
  v13 = v5[13];
  v29 = enum case for FontSource.useCase(_:);
  v28 = v13;
  v13(v7);
  v14 = sub_10076D9AC();
  v68[3] = v14;
  v68[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v68);
  v66 = v4;
  v67 = &protocol witness table for FontSource;
  v15 = sub_10000DB7C(v65);
  v27 = v5[2];
  v27(v15, v7, v4);
  sub_10076D9BC();
  v16 = v5[1];
  v16(v7, v4);
  if (qword_100940910 != -1)
  {
    swift_once();
  }

  v17 = sub_10000A61C(v9, qword_10095E128);
  v31(v7, v17, v9);
  v28(v7, v29, v4);
  v66 = v14;
  v67 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v65);
  v63 = v4;
  v64 = &protocol witness table for FontSource;
  v18 = sub_10000DB7C(v62);
  v27(v18, v7, v4);
  sub_10076D9BC();
  v16(v7, v4);
  if (qword_100940918 != -1)
  {
    swift_once();
  }

  v19 = sub_10000A61C(v9, qword_10095E140);
  v31(v7, v19, v9);
  v28(v7, v29, v4);
  v63 = v14;
  v64 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v62);
  v60 = v4;
  v61 = &protocol witness table for FontSource;
  v20 = sub_10000DB7C(v59);
  v27(v20, v7, v4);
  sub_10076D9BC();
  v16(v7, v4);
  if (qword_100940920 != -1)
  {
    swift_once();
  }

  v21 = sub_10000A61C(v9, qword_10095E158);
  v31(v7, v21, v9);
  v28(v7, v29, v4);
  v60 = v14;
  v61 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v59);
  v57 = v4;
  v58 = &protocol witness table for FontSource;
  v22 = sub_10000DB7C(v56);
  v27(v22, v7, v4);
  sub_10076D9BC();
  v16(v7, v4);
  if (qword_1009411F0 != -1)
  {
    swift_once();
  }

  v23 = sub_10000A61C(v14, qword_1009A2350);
  v57 = v14;
  v58 = &protocol witness table for StaticDimension;
  v24 = sub_10000DB7C(v56);
  (*(*(v14 - 8) + 16))(v24, v23, v14);
  v55 = &protocol witness table for Double;
  v54 = &type metadata for Double;
  v52 = &protocol witness table for Double;
  v53 = 0x4034000000000000;
  v51 = &type metadata for Double;
  v50 = 0x4057400000000000;
  sub_10076D3AC();
  sub_10076D3AC();
  v48 = &type metadata for Double;
  v49 = &protocol witness table for Double;
  v46 = &protocol witness table for Double;
  v47 = 0x3FAC9107B0E4883ELL;
  v45 = &type metadata for Double;
  v43 = &protocol witness table for Double;
  v44 = 0x3FAC9107B0E4883ELL;
  v42 = &type metadata for Double;
  v40 = &protocol witness table for Double;
  v41 = 0x3FAC0E070381C0E0;
  v39 = &type metadata for Double;
  v37 = &protocol witness table for Double;
  v38 = 0x3FA6CB65B2D96CB6;
  v36 = &type metadata for Double;
  v34 = &protocol witness table for Double;
  v35 = 0x4034000000000000;
  v33 = &type metadata for Double;
  v32 = 0x4034000000000000;
  return sub_10075E91C();
}

uint64_t sub_10059E498()
{
  v0 = sub_10000A5D4(&unk_100942EF0, &unk_100785560);
  sub_10000DB18(v0, qword_10095E170);
  sub_10000A61C(v0, qword_10095E170);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  type metadata accessor for NSTextAlignment(0);
  return sub_10075FDDC();
}

char *sub_10059E534(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10075E77C();
  __chkstk_darwin(v10 - 8);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076771C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v17 - 8);
  v19 = &v68 - v18;
  v20 = OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_metrics;
  if (qword_100940928 != -1)
  {
    swift_once();
  }

  v21 = sub_10075E93C();
  v22 = sub_10000A61C(v21, qword_1009A09A0);
  (*(*(v21 - 8) + 16))(&v5[v20], v22, v21);
  v23 = OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_bodyBackgroundColor;
  v68 = sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  *&v5[v23] = sub_100770D9C();
  if (qword_100940908 != -1)
  {
    swift_once();
  }

  v24 = sub_10076D3DC();
  v25 = sub_10000A61C(v24, qword_10095E110);
  v26 = *(v24 - 8);
  v73 = *(v26 + 16);
  v73(v19, v25, v24);
  v72 = *(v26 + 56);
  v72(v19, 0, 1, v24);
  v27 = *(v14 + 104);
  v71 = enum case for DirectionalTextAlignment.none(_:);
  v70 = v27;
  v27(v16);
  v28 = sub_1007626BC();
  v69 = v13;
  v29 = v28;
  v30 = objc_allocWithZone(v28);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_inAppPurchaseLabel] = sub_1007626AC();
  if (qword_100940910 != -1)
  {
    swift_once();
  }

  v31 = sub_10000A61C(v24, qword_10095E128);
  v73(v19, v31, v24);
  v72(v19, 0, 1, v24);
  v70(v16, v71, v69);
  v32 = objc_allocWithZone(v29);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_titleLabel] = sub_1007626AC();
  if (qword_100940918 != -1)
  {
    swift_once();
  }

  v33 = sub_10000A61C(v24, qword_10095E140);
  v73(v19, v33, v24);
  v72(v19, 0, 1, v24);
  v70(v16, v71, v69);
  v34 = objc_allocWithZone(v29);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_subtitleLabel] = sub_1007626AC();
  v35 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_body] = v35;
  v36 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_offerButton] = sub_1001E89B8(0);
  sub_10075E6FC();
  v37 = objc_allocWithZone(type metadata accessor for InAppPurchaseView(0));
  *&v5[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_iconView] = sub_1005B7DD4(v12, 1);
  if (qword_100940920 != -1)
  {
    swift_once();
  }

  v38 = sub_10000A61C(v24, qword_10095E158);
  v73(v19, v38, v24);
  v72(v19, 0, 1, v24);
  v70(v16, v71, v69);
  v39 = objc_allocWithZone(v29);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_inAppDescription] = sub_1007626AC();
  v40 = type metadata accessor for InAppPurchaseSearchResultCollectionViewCell(0);
  v75.receiver = v5;
  v75.super_class = v40;
  v41 = objc_msgSendSuper2(&v75, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v45 = v41;
  [v45 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v46 = [v45 contentView];
  v47 = OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_inAppPurchaseLabel;
  [v46 addSubview:*&v45[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_inAppPurchaseLabel]];

  v48 = [v45 contentView];
  [v48 addSubview:*&v45[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_titleLabel]];

  v49 = [v45 contentView];
  v50 = OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_subtitleLabel;
  [v49 addSubview:*&v45[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_subtitleLabel]];

  v51 = [v45 contentView];
  [v51 addSubview:*&v45[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_offerButton]];

  v52 = [v45 contentView];
  v53 = OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_body;
  [v52 addSubview:*&v45[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_body]];

  v54 = [v45 contentView];
  [v54 addSubview:*&v45[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_iconView]];

  v55 = [v45 contentView];
  v56 = OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_inAppDescription;
  [v55 addSubview:*&v45[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_inAppDescription]];

  v57 = [*&v45[v53] layer];
  [v57 setCornerRadius:20.0];

  v58 = *&v45[v47];
  v59 = [v45 tintColor];
  [v58 setTextColor:v59];

  v60 = *&v45[v50];
  v61 = sub_100770D1C();
  [v60 setTextColor:v61];

  [*&v45[v53] setBackgroundColor:*&v45[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_bodyBackgroundColor]];
  v62 = qword_100940930;
  v63 = *&v45[v56];
  if (v62 != -1)
  {
    swift_once();
  }

  v64 = sub_10000A5D4(&unk_100942EF0, &unk_100785560);
  sub_10000A61C(v64, qword_10095E170);
  v74 = v45;
  sub_10075FDCC();

  sub_100770E7C();
  v65 = *&v45[v56];
  v66 = sub_100770D1C();
  [v65 setTextColor:v66];

  return v45;
}

uint64_t sub_10059F01C()
{
  v1 = v0;
  v2 = sub_10076D1FC();
  v43 = *(v2 - 8);
  v44 = v2;
  __chkstk_darwin(v2);
  v42 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10075E93C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10075E95C();
  v40 = *(v8 - 8);
  v41 = v8;
  __chkstk_darwin(v8);
  v39 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for InAppPurchaseSearchResultCollectionViewCell(0);
  v66.receiver = v0;
  v66.super_class = v10;
  objc_msgSendSuper2(&v66, "layoutSubviews");
  v11 = [v0 contentView];
  v38 = sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  sub_10076422C();

  (*(v5 + 16))(v7, &v1[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_metrics], v4);
  v12 = *&v1[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_offerButton];
  sub_10076422C();
  v13 = &v12[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize];
  if (v12[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize + 16])
  {
    v14 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton__configuration;
    swift_beginAccess();
    sub_10000A570(&v12[v14], v63);
    sub_10000CF78(v63, v64);
    sub_100767A2C();
    v16 = v15;
    v18 = v17;
    sub_10000CD74(v63);
    *v13 = v16;
    *(v13 + 1) = v18;
    v13[16] = 0;
  }

  sub_10075E92C();
  v19 = *&v1[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_inAppPurchaseLabel];
  v20 = sub_1007626BC();
  v64 = v20;
  v65 = &protocol witness table for UILabel;
  v63[0] = v19;
  v21 = *&v1[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_titleLabel];
  v61 = v20;
  v62 = &protocol witness table for UILabel;
  v60 = v21;
  v22 = *&v1[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_subtitleLabel];
  v58 = v20;
  v59 = &protocol witness table for UILabel;
  v57 = v22;
  v23 = type metadata accessor for OfferButton();
  v37[1] = v7;
  v55 = v23;
  v56 = &protocol witness table for UIView;
  v54 = v12;
  v37[0] = v12;
  v24 = *&v1[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_iconView];
  v52 = type metadata accessor for InAppPurchaseView(0);
  v53 = &protocol witness table for UIView;
  v50 = &protocol witness table for UILabel;
  v51 = v24;
  v25 = *&v1[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_inAppDescription];
  v49 = v20;
  v47 = &protocol witness table for UIView;
  v48 = v25;
  v26 = *&v1[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_body];
  v46 = v38;
  v45 = v26;
  v27 = v19;
  v28 = v21;
  v29 = v22;
  v30 = v37[0];
  v31 = v24;
  v32 = v25;
  v33 = v26;
  v34 = v39;
  sub_10075E94C();
  v35 = v42;
  sub_10075E8FC();
  (*(v43 + 8))(v35, v44);
  return (*(v40 + 8))(v34, v41);
}

id sub_10059F4C0(void *a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for InAppPurchaseSearchResultCollectionViewCell(0);
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_100940930 != -1)
    {
      swift_once();
    }

    v6 = sub_10000A5D4(&unk_100942EF0, &unk_100785560);
    sub_10000A61C(v6, qword_10095E170);
    v7 = v1;
    sub_10075FDCC();

    return sub_100770E7C();
  }

  return result;
}

id sub_10059F660()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InAppPurchaseSearchResultCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InAppPurchaseSearchResultCollectionViewCell(uint64_t a1)
{
  result = qword_10095E1C0;
  if (!qword_10095E1C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10059F7D8(uint64_t a1)
{
  v39 = a1;
  v2 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v37 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v36 = &v35 - v6;
  v7 = sub_10000A5D4(&unk_100957590, &qword_1007ACDC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  v13 = sub_10000A5D4(&unk_1009575B8, &unk_1007A3320);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v35 - v15;
  v17 = OBJC_IVAR____TtC20ProductPageExtension45InteractiveSectionBackgroundScrollCoordinator_currentState;
  swift_beginAccess();
  v18 = *(v14 + 56);
  v38 = v1;
  sub_100016E2C(v1 + v17, v16, &unk_100957590, &qword_1007ACDC0);
  sub_100016E2C(v39, &v16[v18], &unk_100957590, &qword_1007ACDC0);
  v19 = *(v3 + 48);
  if (v19(v16, 1, v2) == 1)
  {
    if (v19(&v16[v18], 1, v2) == 1)
    {
      return sub_10000CFBC(v16, &unk_100957590, &qword_1007ACDC0);
    }

    goto LABEL_6;
  }

  sub_100016E2C(v16, v12, &unk_100957590, &qword_1007ACDC0);
  if (v19(&v16[v18], 1, v2) == 1)
  {
    sub_10021C73C(v12, v21);
LABEL_6:
    v22 = &unk_1009575B8;
    v23 = &unk_1007A3320;
    goto LABEL_13;
  }

  v24 = v36;
  sub_100440F74(&v16[v18], v36);
  if (sub_1007621DC())
  {
    v26 = *(v2 + 20);
    v25.n128_u64[0] = *&v12[v26];
    if (v25.n128_f64[0] == *(v24 + v26) && (sub_10075E05C() & 1) != 0)
    {
      v27 = sub_1007621DC();
      sub_10021C73C(v24, v28);
      sub_10021C73C(v12, v29);
      result = sub_10000CFBC(v16, &unk_100957590, &qword_1007ACDC0);
      if (v27)
      {
        return result;
      }

      goto LABEL_14;
    }
  }

  sub_10021C73C(v24, v25);
  sub_10021C73C(v12, v30);
  v22 = &unk_100957590;
  v23 = &qword_1007ACDC0;
LABEL_13:
  sub_10000CFBC(v16, v22, v23);
LABEL_14:
  sub_100016E2C(v38 + v17, v9, &unk_100957590, &qword_1007ACDC0);
  if (v19(v9, 1, v2) == 1)
  {
    return sub_10000CFBC(v9, &unk_100957590, &qword_1007ACDC0);
  }

  v31 = v37;
  v32 = sub_100440F74(v9, v37);
  sub_10059FBB8(v32, v33);
  return sub_10021C73C(v31, v34);
}

uint64_t sub_10059FBB8(uint64_t a1, uint64_t a2)
{
  v2 = sub_10075E11C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E08C();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v7 = Strong, type metadata accessor for InteractiveSectionBackgroundView(0), sub_1007708EC(), v8 = sub_10076FF6C(), , isa = sub_10075E02C().super.isa, v10 = [v7 _visibleDecorationViewOfKind:v8 atIndexPath:isa], v7, v8, isa, !v10) || (*&v18[0] = v10, sub_100440FD8(), sub_10000A5D4(&unk_1009575E0, qword_1007A3338), (swift_dynamicCast() & 1) == 0))
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
  }

  sub_10059FE50(v20);
  v11 = swift_unknownObjectWeakLoadStrong();
  if (!v11 || (v12 = v11, v13 = UICollectionElementKindSectionHeader, v14 = sub_10075E02C().super.isa, v15 = [v12 _visibleSupplementaryViewOfKind:v13 atIndexPath:v14], v12, v13, v14, !v15) || (v17[1] = v15, sub_100440FD8(), sub_10000A5D4(&unk_1009575E0, qword_1007A3338), (swift_dynamicCast() & 1) == 0))
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
  }

  sub_10059FE50(v18);
  (*(v3 + 8))(v5, v2);
  sub_10000CFBC(v18, &unk_1009575D0, &qword_10079E290);
  return sub_10000CFBC(v20, &unk_1009575D0, &qword_10079E290);
}

uint64_t sub_10059FE50(uint64_t a1)
{
  v60 = sub_10000A5D4(&unk_1009575B8, &unk_1007A3320);
  __chkstk_darwin(v60);
  v61 = &v54 - v3;
  v4 = sub_10000A5D4(&unk_100957590, &qword_1007ACDC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v54 - v8;
  __chkstk_darwin(v10);
  v12 = &v54 - v11;
  __chkstk_darwin(v13);
  v15 = (&v54 - v14);
  v16 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v54 - v21;
  sub_100016E2C(a1, &v62, &unk_1009575D0, &qword_10079E290);
  if (!v63)
  {
    return sub_10000CFBC(&v62, &unk_1009575D0, &qword_10079E290);
  }

  v58 = v12;
  v59 = v22;
  sub_10003F19C(&v62, v65);
  v23 = OBJC_IVAR____TtC20ProductPageExtension45InteractiveSectionBackgroundScrollCoordinator_currentState;
  swift_beginAccess();
  sub_100016E2C(v1 + v23, v15, &unk_100957590, &qword_1007ACDC0);
  v24 = *(v17 + 48);
  if (v24(v15, 1, v16) == 1)
  {
    v25 = &unk_100957590;
    v26 = &qword_1007ACDC0;
    v27 = v15;
LABEL_21:
    sub_10000CFBC(v27, v25, v26);
    return sub_10000CD74(v65);
  }

  v54 = v19;
  v55 = v6;
  v56 = a1;
  v57 = v1;
  v29 = v59;
  sub_100440F74(v15, v59);
  v30 = v66;
  v31 = v67;
  sub_10000CF78(v65, v66);
  v32 = v58;
  v33.n128_f64[0] = (*(v31 + 8))(v30, v31);
  sub_10021C620(v29, v9, v33);
  (*(v17 + 56))(v9, 0, 1, v16);
  v34 = v61;
  v35 = *(v60 + 48);
  sub_100016E2C(v32, v61, &unk_100957590, &qword_1007ACDC0);
  sub_100016E2C(v9, v34 + v35, &unk_100957590, &qword_1007ACDC0);
  if (v24(v34, 1, v16) == 1)
  {
    sub_10000CFBC(v9, &unk_100957590, &qword_1007ACDC0);
    sub_10000CFBC(v32, &unk_100957590, &qword_1007ACDC0);
    if (v24((v34 + v35), 1, v16) == 1)
    {
      sub_10000CFBC(v34, &unk_100957590, &qword_1007ACDC0);
LABEL_8:
      sub_10021C73C(v59, v36);
      return sub_10000CD74(v65);
    }

    goto LABEL_11;
  }

  v37 = v55;
  sub_100016E2C(v34, v55, &unk_100957590, &qword_1007ACDC0);
  if (v24((v34 + v35), 1, v16) == 1)
  {
    sub_10000CFBC(v9, &unk_100957590, &qword_1007ACDC0);
    sub_10000CFBC(v58, &unk_100957590, &qword_1007ACDC0);
    sub_10021C73C(v37, v38);
LABEL_11:
    sub_10000CFBC(v34, &unk_1009575B8, &unk_1007A3320);
    v39 = v57;
    goto LABEL_18;
  }

  v40 = v54;
  sub_100440F74(v34 + v35, v54);
  v41 = sub_1007621DC();
  v39 = v57;
  if (v41 & 1) != 0 && (v43 = *(v16 + 20), v42.n128_u64[0] = *(v37 + v43), v42.n128_f64[0] == *(v40 + v43)) && (sub_10075E05C())
  {
    v44 = sub_1007621DC();
    sub_10021C73C(v40, v45);
    sub_10000CFBC(v9, &unk_100957590, &qword_1007ACDC0);
    sub_10000CFBC(v58, &unk_100957590, &qword_1007ACDC0);
    sub_10021C73C(v37, v46);
    sub_10000CFBC(v34, &unk_100957590, &qword_1007ACDC0);
    if (v44)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_10021C73C(v40, v42);
    sub_10000CFBC(v9, &unk_100957590, &qword_1007ACDC0);
    sub_10000CFBC(v58, &unk_100957590, &qword_1007ACDC0);
    sub_10021C73C(v37, v47);
    sub_10000CFBC(v34, &unk_100957590, &qword_1007ACDC0);
  }

LABEL_18:
  sub_100016E2C(v56, &v62, &unk_1009575D0, &qword_10079E290);
  v49 = v63;
  if (!v63)
  {
    sub_10021C73C(v59, v48);
    v25 = &unk_1009575D0;
    v26 = &qword_10079E290;
    v27 = &v62;
    goto LABEL_21;
  }

  v50 = v64;
  sub_10000CF78(&v62, v63);
  v51 = *(v39 + 80);
  v52 = v59;
  v53.n128_f64[0] = (*(v50 + 16))(v59, v51, v49, v50);
  sub_10021C73C(v52, v53);
  sub_10000CD74(&v62);
  return sub_10000CD74(v65);
}

uint64_t sub_1005A0464()
{
  swift_unknownObjectWeakDestroy();

  swift_unknownObjectRelease();
  sub_10000CFBC(v0 + OBJC_IVAR____TtC20ProductPageExtension45InteractiveSectionBackgroundScrollCoordinator_currentState, &unk_100957590, &qword_1007ACDC0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for InteractiveSectionBackgroundScrollCoordinator(uint64_t a1)
{
  result = qword_10095E1F8;
  if (!qword_10095E1F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005A0544(uint64_t a1, __n128 a2)
{
  sub_10021B8CC(319, a2);
  if (v2 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_1005A0618(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10043FD38(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1005A0694(v6);
  sub_1007714DC();
  return result;
}

void sub_1005A0694(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_10077162C(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10000A5D4(&qword_100948BB0, &qword_1007A3330);
        v6 = sub_10077023C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1005A09CC(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1005A07A4(0, v2, 1, a1);
  }
}

void sub_1005A07A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = sub_10075E11C();
  __chkstk_darwin(v33);
  v32 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v27 - v11;
  v28 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v34 = *a4;
    v14 = v34 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_5:
    v30 = v14;
    v31 = a3;
    v16 = *(v34 + 8 * a3);
    v29 = v15;
    v17 = v15;
    while (1)
    {
      v18 = *v14;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v19 = [v16 indexPath];
      sub_10075E06C();

      v20 = [v18 indexPath];
      v21 = v32;
      sub_10075E06C();

      LOBYTE(v20) = sub_10075E04C();
      v22 = *v13;
      v23 = v21;
      v24 = v33;
      (*v13)(v23, v33);
      v22(v12, v24);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if ((v20 & 1) == 0)
      {
LABEL_4:
        a3 = v31 + 1;
        v14 = v30 + 8;
        v15 = v29 - 1;
        if (v31 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v25 = *v14;
      v16 = *(v14 + 8);
      *v14 = v16;
      *(v14 + 8) = v25;
      v14 -= 8;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1005A09CC(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v111 = a1;
  v120 = sub_10075E11C();
  __chkstk_darwin(v120);
  v119 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v118 = &v105 - v12;
  v13 = a3[1];
  if (v13 < 1)
  {
    v15 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v111;
    if (!*v111)
    {
      goto LABEL_127;
    }

    a4 = v15;
    v16 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v100 = a4;
    }

    else
    {
LABEL_121:
      v100 = sub_10043FB64(a4);
    }

    v121 = v100;
    v101 = *(v100 + 2);
    if (v101 >= 2)
    {
      while (*v16)
      {
        a4 = *&v100[16 * v101];
        v102 = v100;
        v103 = *&v100[16 * v101 + 24];
        sub_1005A1254((*v16 + 8 * a4), (*v16 + 8 * *&v100[16 * v101 + 16]), (*v16 + 8 * v103), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v103 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v102 = sub_10043FB64(v102);
        }

        if (v101 - 2 >= *(v102 + 2))
        {
          goto LABEL_115;
        }

        v104 = &v102[16 * v101];
        *v104 = a4;
        *(v104 + 1) = v103;
        v121 = v102;
        sub_10043FAD8(v101 - 1);
        v100 = v121;
        v101 = *(v121 + 2);
        if (v101 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v14 = 0;
  v117 = (v11 + 8);
  v15 = _swiftEmptyArrayStorage;
  v110 = a4;
  v106 = a3;
  while (1)
  {
    v16 = v14++;
    if (v14 < v13)
    {
      v115 = v13;
      v108 = v15;
      v109 = v6;
      v17 = *a3;
      v18 = *(*a3 + 8 * v14);
      v114 = 8 * v16;
      v19 = (v17 + 8 * v16);
      v20 = *v19;
      v5 = (v19 + 2);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v21 = [v18 indexPath];
      v22 = v118;
      sub_10075E06C();

      v23 = [v20 indexPath];
      v24 = v119;
      sub_10075E06C();

      LODWORD(v116) = sub_10075E04C();
      v25 = *v117;
      v26 = v120;
      (*v117)(v24, v120);
      v25(v22, v26);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v107 = v16;
      v27 = (v16 + 2);
      while (1)
      {
        v14 = v115;
        if (v115 == v27)
        {
          break;
        }

        v28 = *(v5 - 8);
        v29 = *v5;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v30 = [v29 indexPath];
        v31 = v118;
        sub_10075E06C();

        v32 = [v28 indexPath];
        v33 = v119;
        sub_10075E06C();

        LODWORD(v32) = sub_10075E04C() & 1;
        v34 = v33;
        v35 = v120;
        v25(v34, v120);
        v25(v31, v35);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        ++v27;
        v5 += 8;
        if ((v116 & 1) != v32)
        {
          v14 = (v27 - 1);
          break;
        }
      }

      v15 = v108;
      v6 = v109;
      a4 = v110;
      v16 = v107;
      v36 = v114;
      if (v116)
      {
        if (v14 < v107)
        {
          goto LABEL_118;
        }

        a3 = v106;
        if (v107 < v14)
        {
          v37 = 8 * v14 - 8;
          v38 = v14;
          v39 = v107;
          do
          {
            if (v39 != --v38)
            {
              v41 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v40 = *(v41 + v36);
              *(v41 + v36) = *(v41 + v37);
              *(v41 + v37) = v40;
            }

            v39 = (v39 + 1);
            v37 -= 8;
            v36 += 8;
          }

          while (v39 < v38);
        }
      }

      else
      {
        a3 = v106;
      }
    }

    v42 = a3[1];
    if (v14 < v42)
    {
      if (__OFSUB__(v14, v16))
      {
        goto LABEL_117;
      }

      if (v14 - v16 < a4)
      {
        v43 = (v16 + a4);
        if (__OFADD__(v16, a4))
        {
          goto LABEL_119;
        }

        if (v43 >= v42)
        {
          v43 = a3[1];
        }

        if (v43 < v16)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v14 != v43)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v14 < v16)
    {
      goto LABEL_116;
    }

    v56 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = v56;
    }

    else
    {
      v15 = sub_10049D820(0, *(v56 + 2) + 1, 1, v56);
    }

    a4 = *(v15 + 2);
    v57 = *(v15 + 3);
    v5 = a4 + 1;
    if (a4 >= v57 >> 1)
    {
      v15 = sub_10049D820((v57 > 1), a4 + 1, 1, v15);
    }

    *(v15 + 2) = v5;
    v58 = &v15[16 * a4];
    *(v58 + 4) = v16;
    *(v58 + 5) = v14;
    v59 = *v111;
    if (!*v111)
    {
      goto LABEL_126;
    }

    if (a4)
    {
      while (1)
      {
        v60 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v61 = *(v15 + 4);
          v62 = *(v15 + 5);
          v71 = __OFSUB__(v62, v61);
          v63 = v62 - v61;
          v64 = v71;
LABEL_56:
          if (v64)
          {
            goto LABEL_105;
          }

          v77 = &v15[16 * v5];
          v79 = *v77;
          v78 = *(v77 + 1);
          v80 = __OFSUB__(v78, v79);
          v81 = v78 - v79;
          v82 = v80;
          if (v80)
          {
            goto LABEL_108;
          }

          v83 = &v15[16 * v60 + 32];
          v85 = *v83;
          v84 = *(v83 + 1);
          v71 = __OFSUB__(v84, v85);
          v86 = v84 - v85;
          if (v71)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v81, v86))
          {
            goto LABEL_112;
          }

          if (v81 + v86 >= v63)
          {
            if (v63 < v86)
            {
              v60 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v87 = &v15[16 * v5];
        v89 = *v87;
        v88 = *(v87 + 1);
        v71 = __OFSUB__(v88, v89);
        v81 = v88 - v89;
        v82 = v71;
LABEL_70:
        if (v82)
        {
          goto LABEL_107;
        }

        v90 = &v15[16 * v60];
        v92 = *(v90 + 4);
        v91 = *(v90 + 5);
        v71 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v71)
        {
          goto LABEL_110;
        }

        if (v93 < v81)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v60 - 1;
        if (v60 - 1 >= v5)
        {
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v98 = v15;
        v5 = *&v15[16 * a4 + 32];
        v16 = *&v15[16 * v60 + 40];
        sub_1005A1254((*a3 + 8 * v5), (*a3 + 8 * *&v15[16 * v60 + 32]), (*a3 + 8 * v16), v59);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v16 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v98 = sub_10043FB64(v98);
        }

        if (a4 >= *(v98 + 2))
        {
          goto LABEL_102;
        }

        v99 = &v98[16 * a4];
        *(v99 + 4) = v5;
        *(v99 + 5) = v16;
        v121 = v98;
        a4 = &v121;
        sub_10043FAD8(v60);
        v15 = v121;
        v5 = *(v121 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v65 = &v15[16 * v5 + 32];
      v66 = *(v65 - 64);
      v67 = *(v65 - 56);
      v71 = __OFSUB__(v67, v66);
      v68 = v67 - v66;
      if (v71)
      {
        goto LABEL_103;
      }

      v70 = *(v65 - 48);
      v69 = *(v65 - 40);
      v71 = __OFSUB__(v69, v70);
      v63 = v69 - v70;
      v64 = v71;
      if (v71)
      {
        goto LABEL_104;
      }

      v72 = &v15[16 * v5];
      v74 = *v72;
      v73 = *(v72 + 1);
      v71 = __OFSUB__(v73, v74);
      v75 = v73 - v74;
      if (v71)
      {
        goto LABEL_106;
      }

      v71 = __OFADD__(v63, v75);
      v76 = v63 + v75;
      if (v71)
      {
        goto LABEL_109;
      }

      if (v76 >= v68)
      {
        v94 = &v15[16 * v60 + 32];
        v96 = *v94;
        v95 = *(v94 + 1);
        v71 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v71)
        {
          goto LABEL_113;
        }

        if (v63 < v97)
        {
          v60 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v13 = a3[1];
    a4 = v110;
    if (v14 >= v13)
    {
      goto LABEL_88;
    }
  }

  v108 = v15;
  v109 = v6;
  v116 = *a3;
  v44 = v116 + 8 * v14 - 8;
  v107 = v16;
  a4 = v16 - v14;
  v112 = v43;
LABEL_29:
  v114 = v44;
  v115 = v14;
  v5 = *(v116 + 8 * v14);
  v113 = a4;
  v45 = v44;
  while (1)
  {
    v46 = *v45;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v47 = [v5 indexPath];
    v48 = v118;
    sub_10075E06C();

    v49 = [v46 indexPath];
    v50 = v119;
    sub_10075E06C();

    LOBYTE(v49) = sub_10075E04C();
    v51 = *v117;
    v52 = v50;
    v53 = v120;
    (*v117)(v52, v120);
    v51(v48, v53);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if ((v49 & 1) == 0)
    {
LABEL_28:
      v14 = v115 + 1;
      v44 = v114 + 8;
      a4 = v113 - 1;
      if ((v115 + 1) != v112)
      {
        goto LABEL_29;
      }

      v14 = v112;
      v15 = v108;
      v6 = v109;
      a3 = v106;
      v16 = v107;
      goto LABEL_36;
    }

    if (!v116)
    {
      break;
    }

    v54 = *v45;
    v5 = *(v45 + 8);
    *v45 = v5;
    *(v45 + 8) = v54;
    v45 -= 8;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_28;
    }
  }

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
}

uint64_t sub_1005A1254(void **a1, void **a2, void **a3, void **a4)
{
  v51 = sub_10075E11C();
  v8 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v49 = &v45 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    v52 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v54 = &a4[v15];
    if (a3 - a2 >= 8 && a2 > v52)
    {
      v46 = a4;
      v47 = (v8 + 8);
LABEL_27:
      v45 = a1;
      v29 = a1 - 1;
      v30 = (a3 - 1);
      v31 = v54;
      v48 = a1 - 1;
      do
      {
        v53 = v30;
        v32 = (v30 + 8);
        v33 = *--v31;
        v34 = *v29;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v35 = [v33 indexPath];
        v36 = v49;
        sub_10075E06C();

        v37 = [v34 indexPath];
        v38 = v50;
        sub_10075E06C();

        LOBYTE(v37) = sub_10075E04C();
        v39 = *v47;
        v40 = v38;
        v41 = v51;
        (*v47)(v40, v51);
        v39(v36, v41);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v37)
        {
          a4 = v46;
          a3 = v53;
          v43 = v48;
          if (v32 != v45)
          {
            *v53 = *v48;
          }

          if (v54 <= a4 || (a1 = v43, v43 <= v52))
          {
            a1 = v43;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v46;
        v42 = v53;
        if (v32 != v54)
        {
          *v53 = *v31;
        }

        v30 = v42 - 8;
        v54 = v31;
        v29 = v48;
      }

      while (v31 > a4);
      v54 = v31;
      a1 = v45;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v54 = &a4[v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v53 = a3;
      v16 = (v8 + 8);
      while (1)
      {
        v52 = a1;
        v17 = *a2;
        v18 = *a4;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v19 = [v17 indexPath];
        v20 = v49;
        sub_10075E06C();

        v21 = [v18 indexPath];
        v22 = v50;
        sub_10075E06C();

        LOBYTE(v21) = sub_10075E04C();
        v23 = *v16;
        v24 = v22;
        v25 = v51;
        (*v16)(v24, v51);
        v23(v20, v25);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if ((v21 & 1) == 0)
        {
          break;
        }

        v26 = a2;
        v27 = v52;
        v28 = v52 == a2++;
        if (!v28)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v27 + 1;
        if (a4 >= v54 || a2 >= v53)
        {
          goto LABEL_39;
        }
      }

      v26 = a4;
      v27 = v52;
      v28 = v52 == a4++;
      if (v28)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v27 = *v26;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= (a4 + ((v54 - a4 + (v54 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a1, a4, 8 * (v54 - a4));
  }

  return 1;
}

uint64_t sub_1005A16EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  type metadata accessor for InteractiveSectionBackgroundScrollCoordinator(0);
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = OBJC_IVAR____TtC20ProductPageExtension45InteractiveSectionBackgroundScrollCoordinator_currentState;
  v23 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  (*(*(v23 - 8) + 56))(v21 + v22, 1, 1, v23);
  *(v21 + 16) = a1;
  *(v21 + 24) = a5;
  *(v21 + 32) = a6;
  *(v21 + 40) = a7;
  *(v21 + 48) = a8;
  *(v21 + 64) = a9;
  swift_unknownObjectWeakAssign();
  *(v21 + 88) = a3;
  *(v21 + 96) = a12;
  *(v21 + 80) = a4;
  swift_unknownObjectRetain();
  *(v21 + 56) = sub_100761ADC();
  return v21;
}

void sub_1005A1814(void (**a1)(char *, uint64_t), double a2)
{
  v3 = v2;
  v96 = a1;
  v5 = sub_10000A5D4(&unk_100957590, &qword_1007ACDC0);
  __chkstk_darwin(v5 - 8);
  v94 = v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v93 = v84 - v8;
  v9 = sub_10075E11C();
  v103 = *(v9 - 8);
  __chkstk_darwin(v9);
  v98 = v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v95 = v84 - v12;
  __chkstk_darwin(v13);
  v99 = v84 - v14;
  __chkstk_darwin(v15);
  v100 = v84 - v16;
  __chkstk_darwin(v17);
  v101 = v84 - v18;
  v19 = sub_1007621EC();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v91 = v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v97 = v84 - v23;
  __chkstk_darwin(v24);
  v102 = v84 - v25;
  __chkstk_darwin(v26);
  v28 = v84 - v27;
  __chkstk_darwin(v29);
  v31 = v84 - v30;
  v32 = *(v2 + 16);
  v33 = *(v2 + 88);
  v104 = v3;
  v34 = *(v3 + 96);
  ObjectType = swift_getObjectType();
  if (v32 >= sub_100761A9C())
  {
    return;
  }

  v90 = v32;
  sub_100761A6C();
  (*(v20 + 104))(v28, enum case for ShelfBackground.interactive(_:), v19);
  v36 = sub_1007621DC();
  v92 = v20;
  v37 = *(v20 + 8);
  v37(v28, v19);
  v88 = v20 + 8;
  v87 = v37;
  v37(v31, v19);
  if ((v36 & 1) == 0)
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v39 = Strong;
  v84[3] = ObjectType;
  v84[2] = v33;
  v84[1] = v34;
  v85 = v19;
  v40 = *(v104 + 32);

  v105[0] = sub_10043FC7C(v41);
  sub_1005A0618(v105);
  v42 = v105[0];
  v89 = v9;
  if (v105[0] < 0 || (v105[0] & 0x4000000000000000) != 0)
  {
LABEL_41:
    v43 = sub_10077158C();
  }

  else
  {
    v43 = *(v105[0] + 16);
  }

  v86 = v39;
  if (v43)
  {
    if (v43 < 1)
    {
      goto LABEL_43;
    }

    v44 = 0;
    v96 = (v103 + 8);
    v84[0] = v103 + 32;
    v45 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((v42 & 0xC000000000000001) != 0)
      {
        v39 = sub_10077149C();
      }

      else
      {
        v39 = *(v42 + 8 * v44 + 32);
        swift_unknownObjectRetain();
      }

      if ([v39 representedElementCategory])
      {
        goto LABEL_21;
      }

      [v39 frame];
      v46 = CGRectGetMinX(v106) - *(v104 + 64) - a2;
      [v39 frame];
      v47 = CGRectGetMaxX(v107) - a2;
      if (v46 > v47)
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (v46 > v40 || v40 >= v47)
      {
        goto LABEL_21;
      }

      v48 = v45;
      v49 = [v39 indexPath];
      v50 = v101;
      sub_10075E06C();

      v51 = sub_10075E09C();
      (*v96)(v50, v89);
      v52 = *(v104 + 56);
      if (!v52)
      {
        goto LABEL_40;
      }

      v45 = v48;
      if (v51 == 0x8000000000000000 && v52 == -1)
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);

        __break(1u);
        return;
      }

      if (v51 % v52)
      {
LABEL_21:
        swift_unknownObjectRelease();
      }

      else
      {
        v53 = [v39 indexPath];
        sub_10075E06C();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_10049DE8C(0, v48[2] + 1, 1, v48);
        }

        v55 = v45[2];
        v54 = v45[3];
        if (v55 >= v54 >> 1)
        {
          v45 = sub_10049DE8C((v54 > 1), v55 + 1, 1, v45);
        }

        swift_unknownObjectRelease();
        v45[2] = v55 + 1;
        (*(v103 + 32))(v45 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v55, v100, v89);
      }

      if (v43 == ++v44)
      {
        goto LABEL_30;
      }
    }
  }

  v45 = _swiftEmptyArrayStorage;
LABEL_30:

  if (v45[2])
  {
    v56 = v103;
    v57 = v45 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
    v58 = v95;
    v59 = v89;
    v101 = *(v103 + 16);
    (v101)(v95, v57, v89);

    v60 = v99;
    (*(v56 + 32))(v99, v58, v59);
    if (__OFADD__(sub_10075E09C(), *(v104 + 56)))
    {
      goto LABEL_44;
    }

    sub_10075E08C();
    sub_100761A2C();
    v61 = v97;
    sub_100761A2C();
    v62 = v92;
    v63 = *(v92 + 16);
    v64 = v91;
    v65 = v85;
    v63(v91, v61, v85);
    LODWORD(v62) = (*(v62 + 88))(v64, v65);
    v66 = enum case for ShelfBackground.none(_:);
    v87(v64, v65);
    v67 = 1.0;
    if (v62 != v66)
    {
      v68 = *(v104 + 64);
      v69 = [v86 collectionViewLayout];
      isa = sub_10075E02C().super.isa;
      v71 = [v69 layoutAttributesForItemAtIndexPath:isa];

      v60 = v99;
      if (v71)
      {
        [v71 frame];
        v72 = CGRectGetMinX(v108) - v40 - a2;
        [v71 frame];
        Width = CGRectGetWidth(v109);

        v67 = (v72 + v68 + Width) / (v68 + Width);
        if (v67 >= 1.0)
        {
          v67 = 1.0;
        }
      }
    }

    v74 = v93;
    v75 = v85;
    v63(v93, v102, v85);
    v76 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
    v77 = v89;
    (v101)(v74 + v76[6], v60, v89);
    v78 = v97;
    v63((v74 + v76[7]), v97, v75);
    *(v74 + v76[5]) = v67;
    (*(*(v76 - 1) + 56))(v74, 0, 1, v76);
    v79 = OBJC_IVAR____TtC20ProductPageExtension45InteractiveSectionBackgroundScrollCoordinator_currentState;
    v80 = v104;
    swift_beginAccess();
    v81 = v94;
    sub_100016E2C(v80 + v79, v94, &unk_100957590, &qword_1007ACDC0);
    swift_beginAccess();
    sub_100440F04(v74, v80 + v79);
    swift_endAccess();
    sub_10059F7D8(v81);

    sub_10000CFBC(v81, &unk_100957590, &qword_1007ACDC0);
    sub_10000CFBC(v74, &unk_100957590, &qword_1007ACDC0);
    v82 = v87;
    v87(v78, v75);
    v82(v102, v75);
    v83 = *(v103 + 8);
    v83(v98, v77);
    v83(v60, v77);
  }

  else
  {
  }
}

uint64_t sub_1005A23B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1005A2400(uint64_t a1)
{
  v2 = v1;
  sub_1007621BC();
  sub_10076260C();

  sub_1007621AC();
  if (v3)
  {
    v4 = sub_10076045C();
  }

  else
  {
    v4 = 0;
  }

  v5 = *&v2[OBJC_IVAR____TtC20ProductPageExtension33ProductPageLinkCollectionViewCell_iconImage];
  *&v2[OBJC_IVAR____TtC20ProductPageExtension33ProductPageLinkCollectionViewCell_iconImage] = v4;
  v6 = v4;

  sub_10032280C();

  return [v2 setNeedsLayout];
}

unint64_t sub_1005A24DC()
{
  result = qword_100950AC8;
  if (!qword_100950AC8)
  {
    type metadata accessor for SmallLockupCollectionViewCell(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950AC8);
  }

  return result;
}

double sub_1005A2534()
{
  v0 = sub_10076C38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SmallLockupView(0);
  v4 = sub_10076462C();
  sub_10076460C();
  sub_10076C2FC();
  v6 = v5;
  v8 = v7;
  (*(v1 + 8))(v3, v0);
  if (qword_10093FBE0 != -1)
  {
    swift_once();
  }

  v9 = sub_100763ADC();
  v10 = sub_10000A61C(v9, qword_10099DDA0);
  swift_getObjectType();
  sub_100262AD0(v10, v4, v6, v8);
  v12 = v11;
  swift_unknownObjectRelease();
  return v12;
}

uint64_t sub_1005A26CC()
{
  sub_10000A5D4(&qword_1009552D8, &qword_10079FCC8);
  sub_10076F63C();
  sub_100761FAC();
  sub_100761F8C();
  sub_100761F3C();

  sub_100761F8C();
  sub_100761F9C();

  sub_100761F8C();
  sub_100761F7C();

  v0 = sub_100769A9C();
  sub_10076F63C();
  if (v3[0])
  {
    v1 = &protocol witness table for SearchGhostHintMetricsTracker;
  }

  else
  {
    v0 = 0;
    v1 = 0;
    v3[1] = 0;
    v3[2] = 0;
  }

  v3[3] = v0;
  v3[4] = v1;
  sub_100761F8C();
  sub_100761F2C();

  sub_10000A5D4(&qword_1009552E0, qword_10079FCD0);
  sub_10076F63C();
  sub_10076FA0C();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_10000CFBC(v4, &qword_1009538F8, qword_10079CD98);
  return sub_10000CFBC(v3, &qword_1009538F0, &qword_10079CD90);
}

double sub_1005A28C4(unint64_t a1, uint64_t a2)
{
  v30 = a2;
  v4 = sub_10076BF6C();
  __chkstk_darwin(v4 - 8);
  v29 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10076BEDC();
  v6 = *(v28 - 8);
  __chkstk_darwin(v28);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC20ProductPageExtension32CarouselItemLockupCollectionView_artworkViews;
  swift_beginAccess();
  v31 = *(v2 + v9);
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v10)
  {
    v26 = a1 & 0xFFFFFFFFFFFFFF8;
    v27 = a1 & 0xC000000000000001;
    v11 = v31 & 0xFFFFFFFFFFFFFF8;
    if (v31 < 0)
    {
      v12 = v31;
    }

    else
    {
      v12 = v31 & 0xFFFFFFFFFFFFFF8;
    }

    v20[1] = v12;
    v21 = (v6 + 8);
    v13 = 4;
    v24 = v31 & 0xC000000000000001;
    v25 = v31 >> 62;
    v22 = v10;
    v23 = a1;
    do
    {
      v6 = v13 - 4;
      if (v27)
      {
        sub_10077149C();
        a1 = v13 - 3;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (v6 >= *(v26 + 16))
        {
          goto LABEL_28;
        }

        a1 = v13 - 3;
        if (__OFADD__(v6, 1))
        {
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          v10 = sub_10077158C();
          goto LABEL_3;
        }
      }

      if (v25)
      {
        if (v6 == sub_10077158C())
        {
LABEL_25:

          break;
        }
      }

      else if (v6 == *(v11 + 16))
      {
        goto LABEL_25;
      }

      if (v24)
      {
        v15 = sub_10077149C();
      }

      else
      {
        if (v6 >= *(v11 + 16))
        {
          goto LABEL_29;
        }

        v15 = *(v31 + 8 * v13);
      }

      v16 = v15;
      sub_10076BEEC();
      v17 = sub_10076BE9C();
      (*v21)(v8, v28);
      sub_10076BFCC();
      sub_10076BF7C();
      sub_10075FCCC();
      v18 = v16;
      [v18 setContentMode:sub_10076BDBC()];
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_1000325F0();
        sub_100770D5C();
      }

      sub_10075FB8C();
      [v18 setContentMode:v17];

      sub_10075FD2C();
      sub_10000D7F8();
      sub_100760B8C();

      ++v13;
      v14 = a1 == v22;
      a1 = v23;
    }

    while (!v14);
  }

  return result;
}

uint64_t sub_1005A2D2C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000A5D4(&qword_10094B7E8, &qword_100791A70);
  __chkstk_darwin(v3);
  v4 = sub_10000A5D4(&qword_10095E3B8, qword_1007ACED0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v14[-v8];
  v10 = OBJC_IVAR____TtC20ProductPageExtension32CarouselItemLockupCollectionView____lazy_storage___artworkViewPool;
  swift_beginAccess();
  sub_1005A3CB8(v1 + v10, v9);
  v11 = sub_10000A5D4(&unk_10094B8B0, &qword_100791B08);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_1005A3D28(v9);
  sub_10075FD2C();
  sub_10076D4CC();
  sub_10018E6DC();
  sub_10076E18C();
  (*(v12 + 16))(v6, a1, v11);
  (*(v12 + 56))(v6, 0, 1, v11);
  swift_beginAccess();
  sub_1005A3C48(v6, v1 + v10);
  return swift_endAccess();
}

unint64_t sub_1005A2F84()
{
  v1 = v0;
  v2 = sub_10000A5D4(&qword_10095E3B8, qword_1007ACED0);
  __chkstk_darwin(v2 - 8);
  v4 = v23 - v3;
  v5 = sub_10000A5D4(&unk_10094B8B0, &qword_100791B08);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v23 - v7;
  v9 = OBJC_IVAR____TtC20ProductPageExtension32CarouselItemLockupCollectionView_artworkViews;
  v24 = OBJC_IVAR____TtC20ProductPageExtension32CarouselItemLockupCollectionView_numberOfArtworks;
  v10 = OBJC_IVAR____TtC20ProductPageExtension32CarouselItemLockupCollectionView____lazy_storage___artworkViewPool;
  swift_beginAccess();
  v11 = (v6 + 32);
  v12 = (v6 + 56);
  while (1)
  {
    v13 = *&v1[v9];
    result = v13 >> 62 ? sub_10077158C() : *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v15 = *&v1[v24];
    if (result == v15)
    {
      return result;
    }

    v16 = *&v1[v9];
    if (!(v16 >> 62))
    {
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < v15)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    if (sub_10077158C() < *&v1[v24])
    {
LABEL_8:
      sub_1005A2D2C(v8);
      sub_10076E15C();
      (*v11)(v4, v8, v5);
      (*v12)(v4, 0, 1, v5);
      swift_beginAccess();
      sub_1005A3C48(v4, &v1[v10]);
      swift_endAccess();
      v17 = v25;
      swift_beginAccess();
      v18 = v17;
      sub_10077019C();
      if (*((*&v1[v9] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v9] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v23[1] = *((*&v1[v9] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_10077021C();
      }

      sub_10077025C();
      swift_endAccess();
      [v1 addSubview:v18];
    }

    else
    {
LABEL_13:
      swift_beginAccess();
      v19 = *&v1[v9];
      if (v19 >> 62)
      {
        if (sub_10077158C())
        {
          goto LABEL_15;
        }

LABEL_2:
        swift_endAccess();
      }

      else
      {
        if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_2;
        }

LABEL_15:
        result = swift_isUniquelyReferenced_nonNull_bridgeObject();
        *&v1[v9] = v19;
        if (v19 >> 62 || (result & 1) == 0)
        {
          result = sub_1004BE250(v19);
          v19 = result;
        }

        v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v20)
        {
          __break(1u);
          return result;
        }

        v21 = v20 - 1;
        v22 = *((v19 & 0xFFFFFFFFFFFFFF8) + 8 * v21 + 0x20);
        *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) = v21;
        *&v1[v9] = v19;
        swift_endAccess();
        v25 = v22;
        sub_1005A2D2C(v8);
        sub_10076E17C();
        (*v11)(v4, v8, v5);
        (*v12)(v4, 0, 1, v5);
        swift_beginAccess();
        sub_1005A3C48(v4, &v1[v10]);
        swift_endAccess();
      }
    }
  }
}

uint64_t sub_1005A3394@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10076D8DC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076D8AC();
  v9 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension32CarouselItemLockupCollectionView_numberOfArtworks);
  if (v9 < 2)
  {
    a1[3] = v5;
    a1[4] = &protocol witness table for HorizontalStack;
    v10 = sub_10000DB7C(a1);
    (*(v6 + 16))(v10, v8, v5);
    return (*(v6 + 8))(v8, v5);
  }

  v11 = OBJC_IVAR____TtC20ProductPageExtension32CarouselItemLockupCollectionView_artworkViews;
  swift_beginAccess();
  v12 = *(v2 + v11);
  v13 = v12 >> 62;
  if (v12 >> 62)
  {
    goto LABEL_30;
  }

  result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v15)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    return result;
  }

  while (1)
  {
    if ((v12 & 0xC000000000000001) == 0 || v15 == 0)
    {
      swift_bridgeObjectRetain_n();
    }

    else
    {
      sub_10075FD2C();
      swift_bridgeObjectRetain_n();
      v17 = 0;
      do
      {
        v18 = v17 + 1;
        sub_10077147C(v17);
        v17 = v18;
      }

      while (v15 != v18);
    }

    if (v13)
    {
      break;
    }

    v33 = v12 & 0xFFFFFFFFFFFFFF8;
    v19 = (v12 & 0xFFFFFFFFFFFFFF8) + 32;
    v21 = v15;
    v20 = v15 <= 0;
    if (!v15)
    {
      goto LABEL_26;
    }

LABEL_19:
    v12 = 0;
    if (v20)
    {
      v27 = v13;
    }

    else
    {
      v27 = v15;
    }

    v9 = v27 - v13;
    v13 = v19 + 8 * v13;
    while (v9 != v12)
    {
      if (__OFADD__(v12, 1))
      {
        goto LABEL_29;
      }

      v28 = *(v13 + 8 * v12);
      sub_1005A37D4(v12, v28, v8, ObjectType);

      if (v21 == ++v12)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    v30 = sub_10077158C();
    result = sub_10077158C();
    if (result < 0)
    {
      goto LABEL_39;
    }

    if (v30 >= v9)
    {
      v31 = v9;
    }

    else
    {
      v31 = v30;
    }

    if (v30 >= 0)
    {
      v15 = v31;
    }

    else
    {
      v15 = v9;
    }

    result = sub_10077158C();
    if (result < v15)
    {
      goto LABEL_38;
    }
  }

  v33 = sub_10077159C();
  v23 = v22;
  v13 = v24;
  v26 = v25;

  v19 = v23;
  v15 = v26 >> 1;
  v21 = v15 - v13;
  v20 = v15 <= v13;
  if (v15 != v13)
  {
    goto LABEL_19;
  }

LABEL_26:
  swift_unknownObjectRelease();
  v34[3] = v5;
  v34[4] = &protocol witness table for HorizontalStack;
  v29 = sub_10000DB7C(v34);
  (*(v6 + 16))(v29, v8, v5);
  a1[3] = sub_10076E04C();
  a1[4] = &protocol witness table for Margins;
  sub_10000DB7C(a1);
  sub_10076E03C();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1005A37D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[0] = a2;
  sub_10075FD2C();
  sub_10076D28C();
  sub_10000CF78(v9, v9[3]);
  sub_10076D2DC();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a4;
  sub_10076D89C();

  sub_10000CD74(v8);
  return sub_10000CD74(v9);
}

id sub_1005A397C@<X0>(void *a1@<X8>)
{
  sub_10075FD2C();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for CarouselItemLockupCollectionView(uint64_t a1)
{
  result = qword_10095E3A0;
  if (!qword_10095E3A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005A3A8C(uint64_t a1)
{
  sub_1005A3B3C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1005A3B3C(uint64_t a1)
{
  if (!qword_10095E3B0)
  {
    sub_10000CE78(&unk_10094B8B0, &qword_100791B08);
    v1 = sub_1007711AC();
    if (!v2)
    {
      atomic_store(v1, &qword_10095E3B0);
    }
  }
}

double sub_1005A3BA0(uint64_t a1, double a2, double a3)
{
  sub_1005A3394(v6);
  sub_10000CF78(v6, v6[3]);
  sub_10076E0FC();
  v4 = v3;
  sub_10000CD74(v6);
  return v4;
}

uint64_t sub_1005A3C48(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_10095E3B8, qword_1007ACED0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005A3CB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_10095E3B8, qword_1007ACED0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005A3D28(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_10095E3B8, qword_1007ACED0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1005A3DA0()
{
  if (*(v0 + 16) >= 1)
  {
    return sub_10076D86C();
  }

  return result;
}

char *sub_1005A3DFC(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC20ProductPageExtension20SegmentedControlView_segmentDidChangeHandler];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = [objc_allocWithZone(UISegmentedControl) initWithFrame:{a1, a2, a3, a4}];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension20SegmentedControlView_segmentedControl] = v10;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for SegmentedControlView();
  v11 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  v12 = *&v11[OBJC_IVAR____TtC20ProductPageExtension20SegmentedControlView_segmentedControl];
  v13 = v11;
  [v13 addSubview:v12];
  [v13 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  return v13;
}

id sub_1005A41B4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SegmentedControlView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

char *sub_1005A425C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10076D3DC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC20ProductPageExtension24SearchResultsMessageView_primaryLabel;
  if (qword_100940ED0 != -1)
  {
    swift_once();
  }

  v15 = sub_10000A61C(v10, qword_1009A1A68);
  v16 = *(v11 + 16);
  v16(v13, v15, v10);
  v17 = type metadata accessor for DynamicTypeLinkedLabel(0);
  v18 = objc_allocWithZone(v17);
  *&v4[v14] = sub_10050BDFC(v13, 0, 0, 0);
  v19 = OBJC_IVAR____TtC20ProductPageExtension24SearchResultsMessageView_secondaryLabel;
  if (qword_100940ED8 != -1)
  {
    swift_once();
  }

  v20 = sub_10000A61C(v10, qword_1009A1A80);
  v16(v13, v20, v10);
  v21 = objc_allocWithZone(v17);
  *&v4[v19] = sub_10050BDFC(v13, 0, 0, 0);
  v35.receiver = v4;
  v35.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v35, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v26 = v22;
  [v26 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v27 = OBJC_IVAR____TtC20ProductPageExtension24SearchResultsMessageView_primaryLabel;
  v28 = *&v26[OBJC_IVAR____TtC20ProductPageExtension24SearchResultsMessageView_primaryLabel];
  sub_1000325F0();
  v29 = v28;
  v30 = sub_100770D1C();
  [v29 setTextColor:v30];

  [v26 addSubview:*&v26[v27]];
  v31 = OBJC_IVAR____TtC20ProductPageExtension24SearchResultsMessageView_secondaryLabel;
  v32 = *&v26[OBJC_IVAR____TtC20ProductPageExtension24SearchResultsMessageView_secondaryLabel];
  v33 = sub_100770D1C();
  [v32 setTextColor:v33];

  [v26 addSubview:*&v26[v31]];
  return v26;
}

uint64_t sub_1005A45A4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076D1FC();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.receiver = v1;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, "layoutSubviews", v5);
  v8 = *&v1[OBJC_IVAR____TtC20ProductPageExtension24SearchResultsMessageView_primaryLabel];
  v15 = type metadata accessor for DynamicTypeLinkedLabel(0);
  v16 = &protocol witness table for UILabel;
  v13[4] = &protocol witness table for UILabel;
  v14[0] = v8;
  v9 = *&v1[OBJC_IVAR____TtC20ProductPageExtension24SearchResultsMessageView_secondaryLabel];
  v13[3] = v15;
  v13[0] = v9;
  v10 = v8;
  v11 = v9;
  sub_1005A4734(v14, v13, v17);
  sub_10000CD74(v13);
  sub_10000CD74(v14);
  sub_10000CF78(v17, v17[3]);
  sub_10076422C();
  sub_10076DFCC();
  (*(v4 + 8))(v7, v3);
  return sub_10000CD74(v17);
}

double sub_1005A4734@<D0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v91 = a2;
  v94 = a3;
  v90 = sub_1007653CC();
  v5 = *(v90 - 8);
  __chkstk_darwin(v90);
  v103 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_10076D1AC();
  v114 = *(v111 - 8);
  __chkstk_darwin(v111);
  v102 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007653EC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076540C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A5D4(&qword_10094F2A8, " \a");
  v16 = *(sub_10076541C() - 8);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v92 = *(v16 + 72);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100783C60;
  v93 = v18;
  v107 = v18 + v17;
  v20 = a1[3];
  v19 = a1[4];
  v21 = sub_10000CF78(a1, v20);
  v123 = v20;
  v22 = *(v19 + 8);
  v23 = v13;
  v24 = v15;
  v124 = v22;
  v25 = sub_10000DB7C(&v122);
  (*(*(v20 - 8) + 16))(v25, v21, v20);
  v26 = *(v23 + 104);
  v110 = enum case for _VerticalFlowLayout.Child.Placement.firstBaseline(_:);
  v112 = v12;
  v109 = v23 + 104;
  v108 = v26;
  v26(v15);
  v113 = v9;
  v27 = v9 + 104;
  v28 = *(v9 + 104);
  v29 = v11;
  v106 = enum case for _VerticalFlowLayout.Child.HorizontalAlignment.leading(_:);
  v89 = v8;
  v105 = v27;
  v104 = v28;
  v28(v11);
  if (qword_100940ED0 != -1)
  {
    swift_once();
  }

  v30 = sub_10076D3DC();
  v31 = sub_10000A61C(v30, qword_1009A1A68);
  v32 = *(v30 - 8);
  v33 = v102;
  v87 = *(v32 + 16);
  v86 = v32 + 16;
  v87(v102, v31, v30);
  v34 = v114;
  v35 = *(v114 + 104);
  v85 = enum case for FontSource.useCase(_:);
  v36 = v111;
  v84 = v114 + 104;
  v83 = v35;
  v35(v33);
  v82 = sub_10076D9AC();
  v120 = v82;
  v121 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v119);
  *(&v117 + 1) = v36;
  v118 = &protocol witness table for FontSource;
  v37 = sub_10000DB7C(&v116);
  v38 = *(v34 + 16);
  v81 = v34 + 16;
  v80 = v38;
  v38(v37, v33, v36);
  sub_10076D9BC();
  v39 = *(v34 + 8);
  v114 = v34 + 8;
  v79 = v39;
  v39(v33, v36);
  v118 = 0;
  v116 = 0u;
  v117 = 0u;
  v40 = sub_10000A5D4(&unk_100959500, qword_100798190);
  v41 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v42 = v41 + *(v5 + 72);
  v76 = *(v5 + 80);
  v77 = v40;
  v75 = v42;
  v43 = swift_allocObject();
  v74 = xmmword_100783DD0;
  *(v43 + 16) = xmmword_100783DD0;
  v78 = v41;
  sub_1007653AC();
  v115 = v43;
  v44 = sub_1005A5658(&qword_10094F2B0, &type metadata accessor for _VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for _VerticalFlowLayout.ExclusionCondition);
  v45 = sub_10000A5D4(&qword_100959510, &unk_1007A6560);
  v46 = sub_1004ACA24();
  v47 = v103;
  v99 = v45;
  v97 = v46;
  v48 = v90;
  v101 = v44;
  sub_1007712CC();
  sub_1007653FC();
  v49 = *(v5 + 8);
  v95 = v5 + 8;
  v100 = v49;
  v49(v47, v48);
  sub_1000F00E0(&v116);
  v50 = v113 + 8;
  v51 = v89;
  v98 = *(v113 + 8);
  v98(v29, v89);
  v52 = *(v23 + 8);
  v53 = v23 + 8;
  v54 = v112;
  v96 = v52;
  v88 = v53;
  v52(v24, v112);
  sub_10000CD74(&v119);
  sub_10000CD74(&v122);
  v55 = v48;
  v56 = v24;
  v57 = v91[3];
  v58 = v91[4];
  v59 = sub_10000CF78(v91, v57);
  v123 = v57;
  v124 = *(v58 + 8);
  v60 = sub_10000DB7C(&v122);
  (*(*(v57 - 8) + 16))(v60, v59, v57);
  v108(v56, v110, v54);
  v104(v29, v106, v51);
  v61 = v29;
  if (qword_100940ED8 != -1)
  {
    swift_once();
  }

  v62 = sub_10000A61C(v30, qword_1009A1A80);
  v63 = v102;
  v87(v102, v62, v30);
  v64 = v111;
  v83(v63, v85, v111);
  v120 = v82;
  v121 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v119);
  *(&v117 + 1) = v64;
  v118 = &protocol witness table for FontSource;
  v65 = sub_10000DB7C(&v116);
  v80(v65, v63, v64);
  sub_10076D9BC();
  v79(v63, v64);
  v118 = 0;
  v116 = 0u;
  v117 = 0u;
  v66 = swift_allocObject();
  *(v66 + 16) = v74;
  sub_1007653AC();
  v115 = v66;
  v67 = v103;
  sub_1007712CC();
  sub_1007653FC();
  v100(v67, v55);
  sub_1000F00E0(&v116);
  v98(v61, v51);
  v68 = v112;
  v113 = v50;
  v96(v56, v112);
  sub_10000CD74(&v119);
  sub_10000CD74(&v122);
  v69 = sub_10076DDDC();
  swift_allocObject();
  v70 = sub_10076DDBC();
  v123 = v69;
  v124 = &protocol witness table for LayoutViewPlaceholder;
  v122 = v70;
  v104(v61, v106, v51);
  v120 = &type metadata for CGFloat;
  v121 = &protocol witness table for CGFloat;
  v118 = 0;
  v119 = 0x4032000000000000;
  v116 = 0u;
  v117 = 0u;
  v115 = _swiftEmptyArrayStorage;
  sub_1007712CC();
  v108(v56, v110, v68);
  sub_1007653FC();
  v96(v56, v68);
  v100(v67, v55);
  sub_1000F00E0(&v116);
  v98(v61, v51);
  sub_10000CD74(&v119);
  sub_10000CD74(&v122);
  v71 = sub_10076543C();
  v72 = v94;
  v94[3] = v71;
  v72[4] = sub_1005A5658(&unk_10094F2C0, &type metadata accessor for _VerticalFlowLayout, &protocol conformance descriptor for _VerticalFlowLayout);
  v72[5] = sub_1005A5658(&unk_10095E430, &type metadata accessor for _VerticalFlowLayout, &protocol conformance descriptor for _VerticalFlowLayout);
  sub_10000DB7C(v72);
  sub_1007653DC();
  return result;
}

double sub_1005A5450(uint64_t a1, double a2, double a3)
{
  swift_getObjectType();
  v4 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension24SearchResultsMessageView_primaryLabel);
  v13 = type metadata accessor for DynamicTypeLinkedLabel(0);
  v14 = &protocol witness table for UILabel;
  v11[4] = &protocol witness table for UILabel;
  v12[0] = v4;
  v5 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension24SearchResultsMessageView_secondaryLabel);
  v11[3] = v13;
  v11[0] = v5;
  v6 = v4;
  v7 = v5;
  sub_1005A4734(v12, v11, v15);
  sub_10000CD74(v11);
  sub_10000CD74(v12);
  sub_10000CF78(v15, v15[3]);
  sub_10076D2AC();
  v9 = v8;
  sub_10000CD74(v15);
  return v9;
}

uint64_t sub_1005A5658(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1005A56A0()
{
  v1 = sub_10076D3DC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC20ProductPageExtension24SearchResultsMessageView_primaryLabel;
  if (qword_100940ED0 != -1)
  {
    swift_once();
  }

  v6 = sub_10000A61C(v1, qword_1009A1A68);
  v7 = *(v2 + 16);
  v7(v4, v6, v1);
  v8 = type metadata accessor for DynamicTypeLinkedLabel(0);
  v9 = objc_allocWithZone(v8);
  *(v0 + v5) = sub_10050BDFC(v4, 0, 0, 0);
  v10 = OBJC_IVAR____TtC20ProductPageExtension24SearchResultsMessageView_secondaryLabel;
  if (qword_100940ED8 != -1)
  {
    swift_once();
  }

  v11 = sub_10000A61C(v1, qword_1009A1A80);
  v7(v4, v11, v1);
  v12 = objc_allocWithZone(v8);
  *(v0 + v10) = sub_10050BDFC(v4, 0, 0, 0);
  sub_10077156C();
  __break(1u);
}

void sub_1005A589C()
{
  [v0 pageContainerSize];
  v2 = v1;
  v4 = v3;
  v5 = [v0 traitCollection];
  v6 = sub_1007706CC();

  if ((v6 & 1) == 0)
  {
    if (v4 < v2)
    {
LABEL_7:
      JUScreenClassGetLandscapeWidth();
      return;
    }

    goto LABEL_10;
  }

  if (v4 >= v2)
  {
    if (v2 == 744.0)
    {
      return;
    }

    JUScreenClassGetPortraitWidth();
    if (v2 <= v8)
    {
      return;
    }

LABEL_10:
    JUScreenClassGetPortraitWidth();
    return;
  }

  if (v2 != 1133.0)
  {
    JUScreenClassGetLandscapeWidth();
    if (v2 > v7)
    {
      goto LABEL_7;
    }
  }
}

id sub_1005A5A7C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SnapshotPageTraitEnvironment();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void UIViewController.pageContainerSize.getter()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
  }

  else
  {
    __break(1u);
  }
}

id UIViewController.snapshotPageTraitEnvironment.getter()
{
  [v0 pageContainerSize];
  v2 = v1;
  v4 = v3;
  v5 = [v0 traitCollection];
  v6 = type metadata accessor for SnapshotPageTraitEnvironment();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v8 = v2;
  *(v8 + 1) = v4;
  *&v7[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_traitCollection] = v5;
  v10.receiver = v7;
  v10.super_class = v6;
  return objc_msgSendSuper2(&v10, "init");
}

id sub_1005A5D60()
{
  type metadata accessor for BundleImage();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_10095E478 = result;
  return result;
}

id sub_1005A5DB8(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_100940938 != -1)
  {
    swift_once();
  }

  v6 = qword_10095E478;
  v7 = a3;
  v8 = sub_10076FF6C();
  v9 = [objc_opt_self() imageNamed:v8 inBundle:v6 withConfiguration:v7];

  result = v9;
  if (!v9)
  {
    if (qword_1009412D8 != -1)
    {
      swift_once();
    }

    v11 = sub_10076FD4C();
    sub_10000A61C(v11, qword_1009A25D0);
    sub_10000A5D4(&unk_100942A60, &unk_100784760);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100784500;
    sub_10076F27C();
    v15 = &type metadata for String;
    v13 = a1;
    v14 = a2;

    sub_10076F32C();
    sub_10000CFBC(&v13, &unk_1009434C0, &qword_100783F60);
    sub_10076FBEC();

    v12 = objc_allocWithZone(UIImage);
    return [v12 init];
  }

  return result;
}

id sub_1005A6008(uint64_t a1, objc_class *a2)
{
  v22 = a2;
  v2 = sub_10076BD9C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_10075DB7C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076C01C();
  sub_10076BD8C();
  (*(v3 + 8))(v5, v2);
  sub_10075DB6C();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10000CFBC(v8, &unk_1009435D0, &qword_100785850);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v13 = sub_10075DB4C();
    if (v14)
    {
      v15 = v14;
      v16 = v13;
      if (sub_10076BDFC())
      {
        v17.value.super.super.isa = v22;
        v18 = sub_10076BDEC(v17);
        v19 = sub_1005A5DB8(v16, v15, v18);

        (*(v10 + 8))(v12, v9);
        return v19;
      }

      (*(v10 + 8))(v12, v9);
    }

    else
    {
      (*(v10 + 8))(v12, v9);
    }
  }

  return 0;
}

UIImage *_sSo7UIImageC20ProductPageExtensionE16singlePointImage5colorABSgSo7UIColorC_tFZ_0(void *a1)
{
  v2 = [objc_opt_self() mainScreen];
  [v2 scale];
  v4 = v3;

  v11.width = 1.0;
  v11.height = 1.0;
  UIGraphicsBeginImageContextWithOptions(v11, 0, v4);
  v5 = UIGraphicsGetCurrentContext();
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = [a1 CGColor];
    CGContextSetFillColorWithColor(v7, v8);

    v12.origin.x = 0.0;
    v12.origin.y = 0.0;
    v12.size.width = 1.0;
    v12.size.height = 1.0;
    CGContextFillRect(v7, v12);
  }

  v9 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v9;
}

uint64_t sub_1005A6410(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v48 = a2;
  ObjectType = swift_getObjectType();
  v8 = sub_10076F08C();
  v42 = *(v8 - 8);
  __chkstk_darwin(v8);
  v40 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_10076F0CC();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v38 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076BF6C();
  __chkstk_darwin(v11 - 8);
  v45 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10077158C())
  {
    v14 = _swiftEmptyArrayStorage;
    v37 = ObjectType;
    if (!i)
    {
      goto LABEL_11;
    }

    aBlock[0] = _swiftEmptyArrayStorage;
    result = sub_1007714EC();
    if (i < 0)
    {
      break;
    }

    v16 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v17 = sub_10077149C();
      }

      else
      {
        v17 = *(a1 + 8 * v16 + 32);
      }

      ++v16;
      v18 = objc_allocWithZone(type metadata accessor for ArcadeDownloadPackCategoryButton());

      sub_100049F48(v17, a3, a4);

      sub_1007714CC();
      sub_1007714FC();
      sub_10077150C();
      sub_1007714DC();
    }

    while (i != v16);
    v14 = aBlock[0];
LABEL_11:
    v36 = v8;
    v19 = OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView_categoryViews;
    ObjectType = v43;
    *&v43[OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView_categoryViews] = v14;

    v20 = [ObjectType traitCollection];
    v21 = [v20 preferredContentSizeCategory];

    LOBYTE(v20) = sub_10077084C();
    sub_1005A75A0(v20 & 1);
    v8 = *&ObjectType[v19];
    if (v8 >> 62)
    {
      a3 = sub_10077158C();
    }

    else
    {
      a3 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!a3)
    {
LABEL_25:

      v27 = v43;
      [v43 setNeedsLayout];
      [v27 layoutIfNeeded];
      sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
      v28 = sub_10077068C();
      v29 = swift_allocObject();
      v30 = v37;
      *(v29 + 16) = v27;
      *(v29 + 24) = v30;
      aBlock[4] = sub_1005A7EB0;
      aBlock[5] = v29;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10009AEDC;
      aBlock[3] = &unk_10089A928;
      v31 = _Block_copy(aBlock);
      v32 = v27;

      v33 = v38;
      sub_10076F0AC();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1005A7ED0(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10000A5D4(&unk_10094E1C0, &qword_100785D50);
      sub_1000852B8();
      v34 = v40;
      v35 = v36;
      sub_1007712CC();
      sub_10077069C();
      _Block_release(v31);

      (*(v42 + 8))(v34, v35);
      return (*(v39 + 8))(v33, v41);
    }

    a4 = 0;
    v46 = v8 & 0xFFFFFFFFFFFFFF8;
    v47 = v8 & 0xC000000000000001;
    v22 = &qword_100944000;
    v44 = v8;
    while (1)
    {
      if (v47)
      {
        v23 = sub_10077149C();
      }

      else
      {
        if (a4 >= *(v46 + 16))
        {
          goto LABEL_27;
        }

        v23 = *(v8 + 8 * a4 + 32);
      }

      ObjectType = v23;
      v24 = a4 + 1;
      if (__OFADD__(a4, 1))
      {
        break;
      }

      sub_10076861C();
      sub_10076BFCC();

      sub_10076861C();
      v25 = sub_10076C00C();

      if (v25)
      {
        a1 = v22;
        v26 = *&ObjectType[v22[6]];
        sub_10076BF7C();
        sub_10075FCCC();
        [v26 setContentMode:sub_10076BDBC()];
        sub_100764ADC();
        sub_10075FD0C();
        if (!sub_10076BE1C())
        {
          sub_100016F40(0, &qword_100942F10, UIColor_ptr);
          sub_100770D5C();
        }

        sub_10075FB8C();

        v22 = a1;
        v8 = v44;
      }

      sub_10075FD2C();
      sub_1005A7ED0(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      sub_100760B8C();

      ++a4;
      if (v24 == a3)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  __break(1u);
  return result;
}

void sub_1005A6B00(unsigned __int8 a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView_categoryViews);
  if (v2 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10077158C())
  {

    if (!i)
    {
      break;
    }

    v4 = 0;
    v14 = v2 & 0xC000000000000001;
    while (1)
    {
      if (v14)
      {
        v5 = sub_10077149C();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = type metadata accessor for ArcadeDownloadPackCategoryButton();
      v19.receiver = v6;
      v19.super_class = v8;
      v9 = objc_msgSendSuper2(&v19, "isSelected");
      v18.receiver = v6;
      v18.super_class = v8;
      objc_msgSendSuper2(&v18, "setEnabled:", (v9 | a1) & 1);
      v10 = *&v6[OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackCategoryButton_titleLabel];
      v17.receiver = v6;
      v17.super_class = v8;
      if (objc_msgSendSuper2(&v17, "isEnabled"))
      {
        v11 = 1.0;
      }

      else
      {
        v11 = 0.4;
      }

      [v10 setAlpha:{v11, v14}];
      v12 = *&v6[OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackCategoryButton_artworkView];
      v16.receiver = v6;
      v16.super_class = v8;
      if (objc_msgSendSuper2(&v16, "isEnabled"))
      {
        v13 = 1.0;
      }

      else
      {
        v13 = 0.4;
      }

      [v12 setAlpha:v13];

      ++v4;
      if (v7 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_18:
}

double sub_1005A6CB4(uint64_t a1, void *a2)
{
  v19 = a1;
  v20 = a2;
  v3 = sub_10000A5D4(&qword_1009492E0, &qword_1007893A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_10076F7FC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView_categoryViews);
  if (v10 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10077158C())
  {

    if (!i)
    {
      break;
    }

    v12 = 0;
    v21 = v10 & 0xFFFFFFFFFFFFFF8;
    v22 = v10 & 0xC000000000000001;
    v13 = (v7 + 48);
    v17 = (v7 + 8);
    v18 = (v7 + 32);
    while (1)
    {
      if (v22)
      {
        v14 = sub_10077149C();
      }

      else
      {
        if (v12 >= *(v21 + 16))
        {
          goto LABEL_16;
        }

        v14 = *(v10 + 8 * v12 + 32);
      }

      v7 = v14;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      sub_1007685DC();
      if ((*v13)(v5, 1, v6) == 1)
      {

        sub_100269504(v5);
      }

      else
      {
        (*v18)(v9, v5, v6);
        [v7 bounds];
        [v20 convertRect:v7 fromCoordinateSpace:?];
        sub_1007660EC();

        (*v17)(v9, v6);
      }

      ++v12;
      if (v15 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_14:

  return result;
}

char *sub_1005A6F3C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView_firstColumn;
  *&v4[v10] = [objc_allocWithZone(UIStackView) init];
  v11 = OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView_secondColumn;
  v12 = [objc_allocWithZone(UIStackView) init];
  *&v4[v11] = v12;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView____lazy_storage___topContentConstraint] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView_categoryViews] = _swiftEmptyArrayStorage;
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100785D70;
  v14 = *&v4[v10];
  *(v13 + 32) = v14;
  *(v13 + 40) = v12;
  v15 = objc_allocWithZone(UIStackView);
  sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  v16 = v14;
  v17 = v12;
  isa = sub_1007701AC().super.isa;

  v19 = [v15 initWithArrangedSubviews:isa];

  *&v4[OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView_contentView] = v19;
  v44.receiver = v4;
  v44.super_class = ObjectType;
  v41 = ObjectType;
  v20 = objc_msgSendSuper2(&v44, "initWithFrame:", a1, a2, a3, a4);
  sub_10000A5D4(&unk_100945BF0, &qword_100786810);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100783DD0;
  v22 = sub_10076E88C();
  *(v21 + 32) = v22;
  *(v21 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v43 = ObjectType;
  v42[0] = v20;
  v23 = v20;
  sub_100770C5C();
  swift_unknownObjectRelease();

  sub_10000CD74(v42);
  v24 = OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView_firstColumn;
  [*&v23[OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView_firstColumn] setAxis:1];
  [*&v23[v24] setSpacing:50.0];
  [*&v23[v24] setTranslatesAutoresizingMaskIntoConstraints:0];
  v25 = OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView_secondColumn;
  [*&v23[OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView_secondColumn] setAxis:1];
  [*&v23[v25] setSpacing:50.0];
  [*&v23[v25] setTranslatesAutoresizingMaskIntoConstraints:0];
  v26 = OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView_contentView;
  [*&v23[OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView_contentView] setDistribution:1];
  [*&v23[v26] setAlignment:1];
  [*&v23[v26] setAxis:0];
  [*&v23[v26] setSpacing:8.0];
  [v23 addSubview:*&v23[v26]];
  [*&v23[v26] setTranslatesAutoresizingMaskIntoConstraints:0];
  v27 = objc_opt_self();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100786040;
  v29 = [*&v23[v26] leftAnchor];
  v30 = [v23 leftAnchor];

  v31 = [v29 constraintEqualToAnchor:v30];
  *(v28 + 32) = v31;
  v32 = [*&v23[v26] rightAnchor];
  v33 = [v23 rightAnchor];

  v34 = [v32 constraintEqualToAnchor:v33];
  *(v28 + 40) = v34;
  *(v28 + 48) = sub_1005A7480();
  v35 = [*&v23[v26] bottomAnchor];
  v36 = [v23 bottomAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];

  *(v28 + 56) = v37;
  sub_100016F40(0, &qword_100945D78, NSLayoutConstraint_ptr);
  v38 = sub_1007701AC().super.isa;

  [v27 activateConstraints:v38];

  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_100783DD0;
  *(v39 + 32) = v22;
  *(v39 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v43 = v41;
  v42[0] = v23;
  sub_100770C5C();
  swift_unknownObjectRelease();

  sub_10000CD74(v42);
  return v23;
}

id sub_1005A7480()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView____lazy_storage___topContentConstraint;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView____lazy_storage___topContentConstraint];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView____lazy_storage___topContentConstraint];
  }

  else
  {
    v4 = [*&v0[OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView_contentView] topAnchor];
    v5 = [v0 topAnchor];
    v6 = [v4 constraintEqualToAnchor:v5 constant:150.0];

    v7 = *&v0[v1];
    *&v0[v1] = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

double sub_1005A75A0(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView_secondColumn);
  [v2 setHidden:a1 & 1];
  v30 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView_firstColumn);
  v4 = [v3 arrangedSubviews];
  sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  v5 = sub_1007701BC();

  if (v5 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = sub_10077149C();
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      [v8 removeFromSuperview];

      ++v7;
      if (v10 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v11 = [v2 arrangedSubviews];
  v12 = sub_1007701BC();

  if (v12 >> 62)
  {
    goto LABEL_26;
  }

  for (j = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_10077158C())
  {
    v14 = 0;
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = sub_10077149C();
      }

      else
      {
        if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v15 = *(v12 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      [v15 removeFromSuperview];

      ++v14;
      if (v17 == j)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:

  v18 = *(v30 + OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView_categoryViews);
  if (a1)
  {
    if (v18 >> 62)
    {
      goto LABEL_63;
    }

    for (k = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); ; k = sub_10077158C())
    {
      v32 = v3;

      if (!k)
      {
        break;
      }

      v3 = 0;
      while (1)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v20 = sub_10077149C();
        }

        else
        {
          if (v3 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_61;
          }

          v20 = *(v18 + 8 * v3 + 32);
        }

        v21 = v20;
        v22 = (v3 + 1);
        if (__OFADD__(v3, 1))
        {
          break;
        }

        [v32 addArrangedSubview:v20];

        ++v3;
        if (v22 == k)
        {
          goto LABEL_53;
        }
      }

      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      ;
    }

LABEL_53:
  }

  else
  {
    if (v18 >> 62)
    {
      v23 = sub_10077158C();
    }

    else
    {
      v23 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v23)
    {
      v24 = 0;
      do
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v25 = sub_10077149C();
        }

        else
        {
          if (v24 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_62;
          }

          v25 = *(v18 + 8 * v24 + 32);
        }

        v26 = v25;
        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_60;
        }

        if (v24)
        {
          v28 = v2;
        }

        else
        {
          v28 = v3;
        }

        [v28 addArrangedSubview:v26];

        ++v24;
      }

      while (v27 != v23);
    }
  }

  return result;
}

double sub_1005A79A8(char *a1)
{
  v2 = sub_1005A7480();
  [v2 setConstant:0.0];

  [*&a1[OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView_firstColumn] setSpacing:8.0];
  [*&a1[OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView_secondColumn] setSpacing:8.0];
  sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  *(swift_allocObject() + 16) = a1;
  v3 = a1;
  sub_100770C9C();

  return result;
}

double sub_1005A7B60()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  v3 = sub_10077084C() & 1;
  if (v3 != [*&v0[OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView_secondColumn] isHidden])
  {
    [*&v0[OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView_contentView] layoutIfNeeded];
    v5 = *&v0[OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView_categoryViews];
    if (v5 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10077158C())
    {

      if (!i)
      {
        break;
      }

      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = sub_10077149C();
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        [v8 setNeedsLayout];
        [v9 invalidateIntrinsicContentSize];

        ++v7;
        if (v10 == i)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

LABEL_14:
  }

  return result;
}

double sub_1005A7DFC()
{
  [*(*v0 + OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView_contentView) systemLayoutSizeFittingSize:?];
  v2 = v1;
  v3 = sub_1005A7480();
  [v3 constant];

  return v2;
}

uint64_t sub_1005A7E78()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1005A7EB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1005A7ED0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1005A7F18()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1005A7F50()
{
  v1 = [*(v0 + 16) superview];
  [v1 invalidateIntrinsicContentSize];
}

void sub_1005A7FA8()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView_firstColumn;
  *(v0 + v1) = [objc_allocWithZone(UIStackView) init];
  v2 = OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView_secondColumn;
  *(v0 + v2) = [objc_allocWithZone(UIStackView) init];
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView____lazy_storage___topContentConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView_categoryViews) = _swiftEmptyArrayStorage;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1005A806C(uint64_t a1)
{
  v3 = sub_10076D3DC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v40 = &v38[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v38[-v7];
  v9 = sub_10000A5D4(&qword_10095C900, &qword_1007AA098);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v38[-v11];
  v13 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v13 - 8);
  v42 = &v38[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v38[-v16];
  __chkstk_darwin(v18);
  v20 = &v38[-v19];
  __chkstk_darwin(v21);
  v23 = &v38[-v22];
  v43 = v1;
  v41 = *&v1[OBJC_IVAR____TtC20ProductPageExtension16ImageHeadingView_headingLabel];
  sub_1007625CC();
  v24 = *(v10 + 56);
  sub_100389394(v23, v12);
  v45 = a1;
  sub_100389394(a1, &v12[v24]);
  v44 = v4;
  v25 = *(v4 + 48);
  if (v25(v12, 1, v3) == 1)
  {
    sub_10000CFBC(v23, &unk_100943250, &unk_1007841D0);
    if (v25(&v12[v24], 1, v3) == 1)
    {
      sub_10000CFBC(v12, &unk_100943250, &unk_1007841D0);
      return sub_10000CFBC(v45, &unk_100943250, &unk_1007841D0);
    }
  }

  else
  {
    sub_100389394(v12, v20);
    if (v25(&v12[v24], 1, v3) != 1)
    {
      v36 = v44;
      (*(v44 + 32))(v8, &v12[v24], v3);
      sub_1005A9D48(&qword_10095C918, &type metadata accessor for FontUseCase, &protocol conformance descriptor for FontUseCase);
      v39 = sub_10076FF1C();
      v37 = *(v36 + 8);
      v37(v8, v3);
      sub_10000CFBC(v23, &unk_100943250, &unk_1007841D0);
      v37(v20, v3);
      sub_10000CFBC(v12, &unk_100943250, &unk_1007841D0);
      if (v39)
      {
        return sub_10000CFBC(v45, &unk_100943250, &unk_1007841D0);
      }

      goto LABEL_7;
    }

    sub_10000CFBC(v23, &unk_100943250, &unk_1007841D0);
    (*(v44 + 8))(v20, v3);
  }

  sub_10000CFBC(v12, &qword_10095C900, &qword_1007AA098);
LABEL_7:
  v26 = v45;
  sub_100389394(v45, v17);
  sub_1007625DC();
  v27 = v43;
  v28 = *&v43[OBJC_IVAR____TtC20ProductPageExtension16ImageHeadingView_imageView];
  v29 = [v43 traitCollection];
  v30 = v42;
  sub_100389394(v26, v42);
  if (v25(v30, 1, v3) == 1)
  {

    sub_10000CFBC(v30, &unk_100943250, &unk_1007841D0);
  }

  else
  {
    v31 = v44;
    v32 = v40;
    (*(v44 + 32))(v40, v30, v3);
    sub_10005312C();
    v33 = sub_100770B3C();
    v34 = [objc_opt_self() configurationWithFont:v33];
    [v28 setPreferredSymbolConfiguration:v34];

    (*(v31 + 8))(v32, v3);
  }

  [v27 setNeedsLayout];
  return sub_10000CFBC(v45, &unk_100943250, &unk_1007841D0);
}

char *sub_1005A85CC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_10076771C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v14 - 8);
  v16 = &v35 - v15;
  v17 = &v5[OBJC_IVAR____TtC20ProductPageExtension16ImageHeadingView_metrics];
  *(v17 + 3) = &type metadata for Double;
  *(v17 + 4) = &protocol witness table for Double;
  *v17 = 0;
  v18 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension16ImageHeadingView_imageView] = v18;
  *v16 = UIFontTextStyleBody;
  *(v16 + 2) = 0;
  v19 = enum case for FontUseCase.preferredFont(_:);
  v20 = sub_10076D3DC();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v16, v19, v20);
  (*(v21 + 56))(v16, 0, 1, v20);
  (*(v11 + 104))(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  objc_allocWithZone(sub_1007626BC());
  v22 = UIFontTextStyleBody;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension16ImageHeadingView_headingLabel] = sub_1007626AC();
  v37.receiver = v5;
  v37.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v37, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v27 = v23;
  [v27 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v28 = OBJC_IVAR____TtC20ProductPageExtension16ImageHeadingView_imageView;
  [v27 addSubview:*&v27[OBJC_IVAR____TtC20ProductPageExtension16ImageHeadingView_imageView]];
  v29 = *&v27[v28];
  v30 = [v27 tintColor];
  [v29 setTintColor:v30];

  v31 = OBJC_IVAR____TtC20ProductPageExtension16ImageHeadingView_headingLabel;
  [v27 addSubview:*&v27[OBJC_IVAR____TtC20ProductPageExtension16ImageHeadingView_headingLabel]];
  v32 = *&v27[v31];
  v33 = [v27 tintColor];

  [v32 setTextColor:v33];
  return v27;
}

uint64_t sub_1005A8A20()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076D1FC();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14.receiver = v1;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, "layoutSubviews", v5);
  v8 = *&v1[OBJC_IVAR____TtC20ProductPageExtension16ImageHeadingView_imageView];
  v9 = *&v1[OBJC_IVAR____TtC20ProductPageExtension16ImageHeadingView_headingLabel];
  v10 = OBJC_IVAR____TtC20ProductPageExtension16ImageHeadingView_metrics;
  swift_beginAccess();
  sub_1001E083C(&v1[v10], v12);
  sub_1005A8BB8(v8, &protocol witness table for UIView, v9, &protocol witness table for UIView, v12, v13);
  sub_1001E08F4(v12);
  sub_10000CF78(v13, v13[3]);
  sub_10076422C();
  sub_10076DFCC();
  (*(v4 + 8))(v7, v3);
  return sub_10000CD74(v13);
}

uint64_t sub_1005A8BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, uint64_t)@<X3>, void (*a5)(char *, uint64_t)@<X4>, uint64_t *a6@<X8>)
{
  v101 = a5;
  v100 = a4;
  v99 = a3;
  v105 = a2;
  v104 = a1;
  v106 = a6;
  v112 = sub_10076804C();
  v118 = *(v112 - 8);
  __chkstk_darwin(v112);
  v111 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_10076805C();
  v119 = *(v116 - 8);
  __chkstk_darwin(v116);
  v110 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_10076802C();
  v8 = *(v109 - 8);
  __chkstk_darwin(v109);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076809C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_10076808C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_10076807C();
  v117 = *(v114 - 8);
  __chkstk_darwin(v114);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_1007680BC();
  v102 = *(v115 - 8);
  v103 = v115 - 8;
  v113 = v102;
  __chkstk_darwin(v115 - 8);
  v98 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v22);
  v108 = &v77 - v24;
  v83 = *(v16 + 104);
  v84 = v16 + 104;
  v107 = v18;
  (v83)(v18, enum case for HorizontalAlignmentLayout.ChildSourceOffset.minY(_:), v15, v23);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  v26 = v14;
  v81 = v14;
  *v14 = v25;
  v27 = *(v12 + 104);
  v96 = v12 + 104;
  v97 = v27;
  v88 = v11;
  v27(v14, enum case for HorizontalAlignmentLayout.ContainerDestinationOffset.absolute(_:), v11);
  v28 = v20;
  sub_10076806C();
  v29 = *(v12 + 8);
  v94 = v12 + 8;
  v95 = v29;
  v29(v26, v11);
  v30 = *(v16 + 8);
  v92 = v16 + 8;
  v93 = v30;
  v30(v18, v15);
  v122 = &type metadata for Double;
  v123 = &protocol witness table for Double;
  v121 = 0;
  v91 = enum case for HorizontalAlignmentLayout.HorizontalGravity.leading(_:);
  v31 = v8;
  v32 = *(v8 + 104);
  v89 = v8 + 104;
  v90 = v32;
  v33 = v10;
  v34 = v10;
  v35 = v109;
  v32(v34);
  v87 = enum case for HorizontalAlignmentLayout.SizingPolicy.Priority.default(_:);
  v36 = v118;
  v37 = *(v118 + 104);
  v85 = v118 + 104;
  v86 = v37;
  v39 = v111;
  v38 = v112;
  v37(v111);
  v40 = v110;
  sub_10076803C();
  v41 = *(v36 + 8);
  v118 = v36 + 8;
  v82 = v41;
  v41(v39, v38);
  v42 = v108;
  v78 = v28;
  v79 = v33;
  sub_1007680AC();
  v43 = *(v119 + 8);
  v119 += 8;
  v101 = v43;
  v43(v40, v116);
  v44 = *(v31 + 8);
  v99 = v31 + 8;
  v100 = v44;
  v44(v33, v35);
  v45 = *(v117 + 8);
  v117 += 8;
  v80 = v45;
  v45(v28, v114);
  sub_10000CD74(&v121);
  v122 = &type metadata for CGFloat;
  v123 = &protocol witness table for CGFloat;
  v121 = 0;
  v46 = enum case for HorizontalAlignmentLayout.ChildSourceOffset.midY(_:);
  v47 = v83;
  v83(v107, enum case for HorizontalAlignmentLayout.ChildSourceOffset.midY(_:), v15);
  v48 = sub_10000A5D4(&qword_10095E5A8, &qword_1007AD0C0);
  v49 = swift_allocBox();
  v51 = v50;
  v52 = *(v48 + 48);
  v53 = *(v113 + 16);
  v53(v50, v42, v115);
  v47(v51 + v52, v46, v15);
  v54 = v81;
  *v81 = v49;
  v55 = v88;
  v97(v54, enum case for HorizontalAlignmentLayout.ContainerDestinationOffset.relative(_:), v88);
  v56 = v78;
  v57 = v107;
  sub_10076806C();
  v95(v54, v55);
  v93(v57, v15);
  v120[4] = &protocol witness table for Double;
  v120[3] = &type metadata for Double;
  v120[0] = 0;
  v58 = v79;
  v59 = v109;
  v90(v79, v91, v109);
  v61 = v111;
  v60 = v112;
  v86(v111, v87, v112);
  v62 = v110;
  sub_10076803C();
  v82(v61, v60);
  v63 = v98;
  sub_1007680AC();
  v101(v62, v116);
  v100(v58, v59);
  v80(v56, v114);
  sub_10000CD74(v120);
  sub_10000CD74(&v121);
  sub_10000A5D4(&qword_10095E5B0, qword_1007AD0C8);
  v64 = *(v102 + 72);
  v65 = v113;
  v66 = (*(v113 + 80) + 32) & ~*(v113 + 80);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_100784500;
  v68 = v67 + v66;
  v69 = v63;
  v70 = v63;
  v71 = v115;
  v53(v68, v69, v115);
  v72 = v108;
  v53(v68 + v64, v108, v71);
  v73 = sub_1007680DC();
  v74 = v106;
  v106[3] = v73;
  v74[4] = sub_1005A9D48(&qword_10095E5B8, &type metadata accessor for HorizontalAlignmentLayout, &protocol conformance descriptor for HorizontalAlignmentLayout);
  v74[5] = sub_1005A9D48(&qword_10095E5C0, &type metadata accessor for HorizontalAlignmentLayout, &protocol conformance descriptor for HorizontalAlignmentLayout);
  sub_10000DB7C(v74);
  sub_1007680CC();
  v75 = *(v65 + 8);
  v75(v70, v71);
  return (v75)(v72, v71);
}

void sub_1005A96F0(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10076D3DC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v33 - v14;
  v35.receiver = v2;
  v35.super_class = ObjectType;
  objc_msgSendSuper2(&v35, "traitCollectionDidChange:", a1, v13);
  v16 = [v2 traitCollection];
  v17 = [v16 preferredContentSizeCategory];

  if (!a1)
  {
    v34 = v8;
    v23 = v6;

LABEL_7:
    v25 = *&v2[OBJC_IVAR____TtC20ProductPageExtension16ImageHeadingView_imageView];
    sub_1007625CC();
    v26 = [v2 traitCollection];
    sub_100389394(v15, v11);
    v27 = v23;
    if ((*(v23 + 48))(v11, 1, v5) == 1)
    {

      sub_10000CFBC(v15, &unk_100943250, &unk_1007841D0);
      v28 = v11;
    }

    else
    {
      v29 = *(v23 + 32);
      v30 = v34;
      v29(v34, v11, v5);
      sub_10005312C();
      v31 = sub_100770B3C();
      v32 = [objc_opt_self() configurationWithFont:v31];
      [v25 setPreferredSymbolConfiguration:v32];

      (*(v27 + 8))(v30, v5);
      v28 = v15;
    }

    sub_10000CFBC(v28, &unk_100943250, &unk_1007841D0);
    return;
  }

  v18 = [a1 preferredContentSizeCategory];
  v19 = sub_10076FF9C();
  v21 = v20;
  if (v19 == sub_10076FF9C() && v21 == v22)
  {

    return;
  }

  v34 = v8;
  v23 = v6;
  v24 = sub_10077167C();

  if ((v24 & 1) == 0)
  {
    goto LABEL_7;
  }
}

double sub_1005A9B00(uint64_t a1, double a2, double a3)
{
  swift_getObjectType();
  v4 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension16ImageHeadingView_imageView);
  v5 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension16ImageHeadingView_headingLabel);
  v6 = OBJC_IVAR____TtC20ProductPageExtension16ImageHeadingView_metrics;
  swift_beginAccess();
  sub_1001E083C(v3 + v6, v10);
  sub_1005A8BB8(v4, &protocol witness table for UIView, v5, &protocol witness table for UIView, v10, v11);
  sub_1001E08F4(v10);
  sub_10000CF78(v11, v11[3]);
  sub_10076D2AC();
  v8 = v7;
  sub_10000CD74(v11);
  return v8;
}

uint64_t sub_1005A9D48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1005A9D90()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  result = 1.0 / v2;
  *&qword_1009A0A00 = 1.0 / v2;
  return result;
}

uint64_t sub_1005A9E1C(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_10076D1AC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10076D9AC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DividerView.Style(0);
  sub_10000DB18(v12, a3);
  v13 = sub_10000A61C(v12, a3);
  *v7 = UIFontTextStyleBody;
  (*(v5 + 104))(v7, enum case for FontSource.textStyle(_:), v4);
  v19[3] = v4;
  v19[4] = &protocol witness table for FontSource;
  v14 = sub_10000DB7C(v19);
  (*(v5 + 16))(v14, v7, v4);
  v15 = UIFontTextStyleBody;
  sub_10076D9BC();
  (*(v5 + 8))(v7, v4);
  v16 = *&UIEdgeInsetsZero.bottom;
  *v13 = *&UIEdgeInsetsZero.top;
  *(v13 + 1) = v16;
  return (*(v9 + 32))(&v13[*(v12 + 20)], v11, v8);
}

char *sub_1005AA048(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC20ProductPageExtension11DividerView_separatorInset];
  v11 = *&UIEdgeInsetsZero.bottom;
  *v10 = *&UIEdgeInsetsZero.top;
  *(v10 + 1) = v11;
  v12 = OBJC_IVAR____TtC20ProductPageExtension11DividerView_style;
  if (qword_100940948 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for DividerView.Style(0);
  v14 = sub_10000A61C(v13, qword_1009A0A08);
  sub_100206DD0(v14, &v4[v12]);
  v15 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension11DividerView_separatorView] = v15;
  v23.receiver = v4;
  v23.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v23, "initWithFrame:", a1, a2, a3, a4);
  v17 = OBJC_IVAR____TtC20ProductPageExtension11DividerView_separatorView;
  v18 = *&v16[OBJC_IVAR____TtC20ProductPageExtension11DividerView_separatorView];
  sub_1000325F0();
  v19 = v16;
  v20 = v18;
  v21 = sub_100770CDC();
  [v20 setBackgroundColor:v21];

  [v19 addSubview:*&v16[v17]];
  return v19;
}

id sub_1005AA4B0()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if (qword_100940940 != -1)
  {
    swift_once();
  }

  v9 = *&qword_1009A0A00;
  v10 = *&v0[OBJC_IVAR____TtC20ProductPageExtension11DividerView_separatorView];
  v17.origin.x = v2;
  v17.origin.y = v4;
  v17.size.width = v6;
  v17.size.height = v8;
  MinX = CGRectGetMinX(v17);
  v12 = &v0[OBJC_IVAR____TtC20ProductPageExtension11DividerView_separatorInset];
  v13 = MinX + v12[1];
  v18.origin.x = v2;
  v18.origin.y = v4;
  v18.size.width = v6;
  v18.size.height = v8;
  v14 = CGRectGetMidY(v18) + v9 * -0.5;
  v19.origin.x = v2;
  v19.origin.y = v4;
  v19.size.width = v6;
  v19.size.height = v8;
  return [v10 setFrame:{v13, v14, CGRectGetWidth(v19) - v12[1] - v12[3], v9}];
}

uint64_t sub_1005AA6B8(uint64_t a1)
{
  result = type metadata accessor for DividerView.Style(319);
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

uint64_t sub_1005AA794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_10076D9AC();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1005AA820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_10076D9AC();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_1005AA89C(uint64_t a1)
{
  type metadata accessor for UIEdgeInsets(319);
  if (v1 <= 0x3F)
  {
    sub_10076D9AC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

double sub_1005AA920(uint64_t a1, uint64_t a2)
{
  v2 = sub_10077164C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100940940 != -1)
  {
    swift_once();
  }

  v6 = floor(*&qword_1009A0A00);
  type metadata accessor for DividerView.Style(0);
  sub_10076D17C();
  sub_10076D9AC();
  sub_10076D40C();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  return v6 + v8;
}

unint64_t sub_1005AAA90()
{
  result = qword_10094F038;
  if (!qword_10094F038)
  {
    sub_10076932C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094F038);
  }

  return result;
}

uint64_t sub_1005AAAE8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    sub_10075F6CC();
    v8 = a1;
    sub_10076931C();
    sub_10075F66C();

    v9 = swift_allocObject();
    v9[2] = a3;
    v9[3] = a4;
    v9[4] = a2;
    v10 = sub_100085204();
    swift_retain_n();

    v13[3] = v10;
    v13[4] = &protocol witness table for OS_dispatch_queue;
    v13[0] = sub_10077068C();
    sub_10076FC6C();

    return sub_10000CD74(v13);
  }

  else
  {
    if (qword_1009412E8 != -1)
    {
      swift_once();
    }

    v12 = sub_10076FD4C();
    sub_10000A61C(v12, qword_1009A2600);
    sub_10000A5D4(&unk_100942A60, &unk_100784760);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBEC();

    sub_1005AB520();
    swift_allocError();
    sub_10076FCAC();
  }
}

double sub_1005AADA8(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a3;
  v39 = a4;
  v5 = sub_10075F65C();
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin(v5);
  v35 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100765F6C();
  v33 = *(v7 - 8);
  v34 = v7;
  __chkstk_darwin(v7);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_100766EDC();
  v9 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076F4FC();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10000A5D4(&unk_100958150, &unk_100786630);
  __chkstk_darwin(v12 - 8);
  v14 = &v28 - v13;
  v15 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v15 - 8);
  v17 = &v28 - v16;
  v18 = sub_10076C15C();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  v23 = sub_1007692FC();
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  (*(v19 + 104))(v21, enum case for FlowPage.gameAchievements(_:), v18);
  v24 = sub_10075DB7C();
  (*(*(v24 - 8) + 56))(v17, 1, 1, v24);
  v25 = sub_10076096C();
  (*(*(v25 - 8) + 56))(v14, 1, 1, v25);
  v42 = &type metadata for GameCenterAchievementsPage;
  v40 = v22;
  v41 = v23;
  v29 = v22;

  sub_10076F4DC();
  (*(v9 + 104))(v30, enum case for FlowPresentationContext.infer(_:), v31);
  (*(v33 + 104))(v32, enum case for FlowAnimationBehavior.infer(_:), v34);
  (*(v36 + 104))(v35, enum case for FlowOrigin.inapp(_:), v37);
  sub_10076FA2C();
  sub_10075F63C();
  swift_allocObject();
  v26 = sub_10075F5EC();
  sub_100563FF8(v26, 1, v38);
  sub_10076FC4C();

  return result;
}

uint64_t sub_1005AB2C0(uint64_t a1)
{
  if (qword_1009412E8 != -1)
  {
    swift_once();
  }

  v1 = sub_10076FD4C();
  sub_10000A61C(v1, qword_1009A2600);
  sub_10000A5D4(&unk_100942A60, &unk_100784760);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100783DD0;
  sub_10076F27C();
  sub_10076FBEC();

  return sub_10076FCAC();
}

uint64_t sub_1005AB418(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_10000A5D4(&qword_100942C70, &unk_100783EF0);
  v4 = sub_10076FCEC();
  sub_10075F6CC();
  v7[3] = sub_100085204();
  v7[4] = &protocol witness table for OS_dispatch_queue;
  v7[0] = sub_10077068C();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = a2;

  sub_10075F67C();

  sub_10000CD74(v7);
  return v4;
}

unint64_t sub_1005AB520()
{
  result = qword_10095E6A0;
  if (!qword_10095E6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095E6A0);
  }

  return result;
}

unint64_t sub_1005AB59C()
{
  result = qword_10095E6A8;
  if (!qword_10095E6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095E6A8);
  }

  return result;
}

char *sub_1005AB5F4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC20ProductPageExtension38ProductEditorsChoiceCollectionViewCell_itemLayoutContext;
  v11 = sub_10076341C();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC20ProductPageExtension38ProductEditorsChoiceCollectionViewCell_editorsChoiceView;
  type metadata accessor for ProductEditorsChoiceView(0);
  *&v4[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17.receiver = v4;
  v17.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  v14 = [v13 contentView];
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v15 = [v13 contentView];
  [v15 addSubview:*&v13[OBJC_IVAR____TtC20ProductPageExtension38ProductEditorsChoiceCollectionViewCell_editorsChoiceView]];

  return v13;
}

uint64_t type metadata accessor for ProductEditorsChoiceCollectionViewCell(uint64_t a1)
{
  result = qword_10095E6D8;
  if (!qword_10095E6D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_1005AB9D0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10075FEEC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC20ProductPageExtension23AppEventPlaceholderView_formattedDatePlaceholder;
  sub_1007600FC();
  v15 = sub_1007600EC();
  v17 = v16;
  if (qword_1009410D8 != -1)
  {
    swift_once();
  }

  v18 = sub_10076D3DC();
  v19 = sub_10000A61C(v18, qword_1009A2080);
  v20 = sub_1004B96BC(v15, v17, v19);

  *&v5[v14] = v20;
  v21 = OBJC_IVAR____TtC20ProductPageExtension23AppEventPlaceholderView_appEventPlaceholder;
  (*(v11 + 104))(v13, enum case for CornerStyle.continuous(_:), v10);
  sub_10076394C();
  v22 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 secondarySystemBackgroundColor];
  [v24 setBackgroundColor:v25];

  sub_1007638AC();
  (*(v11 + 8))(v13, v10);
  *&v5[v21] = v24;
  v26 = type metadata accessor for AppEventPlaceholderView();
  v31.receiver = v5;
  v31.super_class = v26;
  v27 = objc_msgSendSuper2(&v31, "initWithFrame:", a1, a2, a3, a4);
  v28 = *&v27[OBJC_IVAR____TtC20ProductPageExtension23AppEventPlaceholderView_formattedDatePlaceholder];
  v29 = v27;
  [v29 addSubview:v28];
  [v29 addSubview:*&v29[OBJC_IVAR____TtC20ProductPageExtension23AppEventPlaceholderView_appEventPlaceholder]];

  return v29;
}

uint64_t sub_1005ABCAC()
{
  v1 = v0;
  v2 = sub_10076D1FC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = sub_10075DE9C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = type metadata accessor for AppEventPlaceholderView();
  v30.receiver = v0;
  v30.super_class = v10;
  objc_msgSendSuper2(&v30, "layoutSubviews");
  sub_10076422C();
  result = CGRectIsEmpty(v31);
  if ((result & 1) == 0)
  {
    v25 = v2;
    if (qword_100940640 != -1)
    {
      swift_once();
    }

    sub_1002ED13C(&unk_10099FD58, v28);
    v12 = *&v0[OBJC_IVAR____TtC20ProductPageExtension23AppEventPlaceholderView_formattedDatePlaceholder];
    v27[3] = sub_1007626BC();
    v27[4] = &protocol witness table for UILabel;
    v27[0] = v12;
    sub_1002ED13C(v28, v26);
    v13 = v12;
    sub_10075DE6C();
    LOBYTE(v12) = sub_10075DE7C();
    (*(v7 + 8))(v9, v6);
    if (v12)
    {
      sub_10076D72C();
      sub_1002ED174(v28);
    }

    else
    {
      sub_1002ED174(v28);
      sub_10000A570(v27, &v26[168]);
    }

    memset(&v26[208], 0, 120);
    memcpy(v29, v26, sizeof(v29));
    sub_10000CD74(v27);
    sub_10076422C();
    AppPromotionFormattedDateLayout.placeChildren(relativeTo:in:)(v1, v14, v15, v16, v17);
    (*(v3 + 8))(v5, v25);
    sub_10076422C();
    sub_1004B8E04(v1, v29, v18, v19);
    v21 = v20;
    v22 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension23AppEventPlaceholderView_appEventPlaceholder);
    sub_10076422C();
    MinX = CGRectGetMinX(v32);
    sub_10076422C();
    Width = CGRectGetWidth(v33);
    sub_10076422C();
    [v22 setFrame:{MinX, v21, Width, CGRectGetHeight(v34) - v21}];
    return sub_10005AE58(v29);
  }

  return result;
}

id sub_1005AC05C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AppEventPlaceholderView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1005AC100()
{
  v1 = v0;
  v2 = sub_10075FEEC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC20ProductPageExtension23AppEventPlaceholderView_formattedDatePlaceholder;
  sub_1007600FC();
  v7 = sub_1007600EC();
  v9 = v8;
  if (qword_1009410D8 != -1)
  {
    swift_once();
  }

  v10 = sub_10076D3DC();
  v11 = sub_10000A61C(v10, qword_1009A2080);
  v12 = sub_1004B96BC(v7, v9, v11);

  *(v1 + v6) = v12;
  v13 = OBJC_IVAR____TtC20ProductPageExtension23AppEventPlaceholderView_appEventPlaceholder;
  (*(v3 + 104))(v5, enum case for CornerStyle.continuous(_:), v2);
  sub_10076394C();
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 secondarySystemBackgroundColor];
  [v16 setBackgroundColor:v17];

  sub_1007638AC();
  (*(v3 + 8))(v5, v2);
  *(v1 + v13) = v16;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1005AC334(double a1)
{
  v2 = sub_10000A5D4(&qword_100942900, &unk_10078A660);
  __chkstk_darwin(v2 - 8);
  v42 = v33 - v3;
  v40 = sub_10076C2DC();
  v4 = *(v40 - 8);
  __chkstk_darwin(v40);
  v6 = (v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10000A5D4(&qword_100942908, &unk_1007A3F70);
  __chkstk_darwin(v7 - 8);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v33 - v11;
  __chkstk_darwin(v13);
  v46 = v33 - v14;
  __chkstk_darwin(v15);
  v17 = v33 - v16;
  sub_10000A5D4(&qword_100942910, &unk_10078A670);
  v18 = *(sub_10076C20C() - 8);
  v45 = *(v18 + 72);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v35 = v20;
  *(v20 + 16) = xmmword_1007844F0;
  v38 = v20 + v19;
  v48 = 0x3FF0000000000000;
  sub_10001E290();
  sub_10076C29C();
  v47 = 0x4030000000000000;
  v48 = 0x4020000000000000;
  sub_10076C27C();
  v48 = 0x4034000000000000;
  sub_10076C29C();
  *v6 = 16.0;
  v6[1] = a1 + 16.0;
  v39 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v21 = *(v4 + 104);
  v36 = v4 + 104;
  v22 = v40;
  v21(v6);
  v41 = v21;
  left = UIEdgeInsetsZero.left;
  LOBYTE(v48) = 0;
  sub_10076C29C();
  v48 = 0;
  v44 = v9;
  sub_10076C29C();
  v43 = v17;
  v37 = v12;
  sub_10076C1CC();
  v48 = 0x3FF0000000000000;
  sub_10076C29C();
  v47 = 0x4034000000000000;
  v48 = 0x4024000000000000;
  sub_10076C27C();
  v48 = 0x4034000000000000;
  sub_10076C29C();
  v34 = a1;
  *v6 = 20.0;
  v6[1] = a1 + 20.0;
  (v21)(v6, v39, v22);
  LOBYTE(v48) = 0;
  sub_10076C29C();
  v48 = 0;
  sub_10076C29C();
  v24 = v45;
  v33[2] = *&UIEdgeInsetsZero.top;
  *&v33[3] = left;
  sub_10076C1CC();
  v33[1] = 2 * v24;
  v48 = 0x3FF0000000000000;
  sub_10076C29C();
  v48 = 0x4034000000000000;
  sub_10076C29C();
  v48 = 0x4034000000000000;
  sub_10076C29C();
  *v6 = 34.0;
  v6[1] = a1 + 34.0;
  v25 = v39;
  v26 = v40;
  (v41)(v6, v39, v40);
  LOBYTE(v48) = 0;
  sub_10076C29C();
  v48 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v48 = 0x3FF0000000000000;
  sub_10076C29C();
  v48 = 0x4034000000000000;
  sub_10076C29C();
  v48 = 0x4034000000000000;
  sub_10076C29C();
  *v6 = 34.0;
  v6[1] = a1 + 34.0;
  v27 = v25;
  v28 = v41;
  (v41)(v6, v27, v26);
  sub_1007704BC();
  LOBYTE(v48) = 0;
  sub_10076C29C();
  v48 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v29 = 4 * v45;
  v48 = 0x3FF0000000000000;
  sub_10076C29C();
  v48 = 0x4038000000000000;
  sub_10076C29C();
  v48 = 0x4034000000000000;
  sub_10076C29C();
  v30 = v34 + 52.0;
  *v6 = 52.0;
  v6[1] = v30;
  v31 = v39;
  (v28)(v6, v39, v26);
  LOBYTE(v48) = 0;
  sub_10076C29C();
  v48 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v45 += v29;
  v48 = 0x3FF0000000000000;
  sub_10076C29C();
  v48 = 0x4038000000000000;
  sub_10076C29C();
  v48 = 0x4034000000000000;
  sub_10076C29C();
  *v6 = 52.0;
  v6[1] = v30;
  (v41)(v6, v31, v40);
  LOBYTE(v48) = 0;
  sub_10076C29C();
  v48 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  return v35;
}

uint64_t sub_1005ACD18()
{
  v0 = sub_10076D3DC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v24 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10076048C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  sub_10000DB18(v11, qword_1009A0A50);
  v12 = sub_10000A61C(v11, qword_1009A0A50);
  v30 = &type metadata for Double;
  v31 = &protocol witness table for Double;
  *&v29 = 0x4030000000000000;
  *&v28 = 0x4038000000000000;
  *&v25 = 0x4034000000000000;
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  sub_10075FDFC();
  sub_10075FE2C();
  (*(v8 + 8))(v10, v7);
  (*(v4 + 104))(v6, enum case for SystemImage.chevronForward(_:), v3);
  v13 = sub_10076046C();
  (*(v4 + 8))(v6, v3);
  v14 = [objc_opt_self() secondaryLabelColor];
  v27 = &protocol witness table for Double;
  v26 = &type metadata for Double;
  *&v25 = 0x4010000000000000;
  v15 = objc_opt_self();
  v16 = UIFontTextStyleFootnote;
  v17 = [v15 configurationWithTextStyle:v16 scale:1];

  if (qword_100940F58 != -1)
  {
    swift_once();
  }

  v18 = sub_10000A61C(v0, qword_1009A1C00);
  v19 = v24;
  (*(v1 + 16))(v24, v18, v0);
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v20 = sub_100770CFC();
  sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  sub_100770B7C();
  v22 = v21;
  sub_10003F19C(&v29, v12);
  sub_10003F19C(&v28, (v12 + 40));
  *(v12 + 10) = v13;
  *(v12 + 11) = v14;
  sub_10003F19C(&v25, (v12 + 96));
  *(v12 + 17) = v17;
  result = (*(v1 + 32))(&v12[v11[10]], v19, v0);
  *&v12[v11[11]] = 2;
  *&v12[v11[12]] = v20;
  *&v12[v11[13]] = v22;
  return result;
}

uint64_t sub_1005AD174()
{
  v0 = sub_10076D3DC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076048C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  sub_10000DB18(v8, qword_1009A0A68);
  v9 = sub_10000A61C(v8, qword_1009A0A68);
  v10 = sub_10076D67C();
  v29 = v10;
  v30 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v28);
  sub_10076D66C();
  v26 = v10;
  v27 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v25);
  sub_10076D66C();
  (*(v5 + 104))(v7, enum case for SystemImage.arrowUpForward(_:), v4);
  v21 = sub_10076046C();
  (*(v5 + 8))(v7, v4);
  v11 = objc_opt_self();
  v12 = [v11 secondaryLabelColor];
  v23 = &type metadata for Double;
  v24 = &protocol witness table for Double;
  *&v22 = 0x4018000000000000;
  v13 = objc_opt_self();
  v14 = UIFontTextStyleFootnote;
  v15 = [v13 configurationWithTextStyle:v14 scale:1];

  if (qword_100940F58 != -1)
  {
    swift_once();
  }

  v16 = sub_10000A61C(v0, qword_1009A1C00);
  (*(v1 + 16))(v3, v16, v0);
  v17 = [v11 secondaryLabelColor];
  sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  sub_100770B7C();
  v19 = v18;
  sub_10003F19C(&v28, v9);
  sub_10003F19C(&v25, (v9 + 40));
  *(v9 + 10) = v21;
  *(v9 + 11) = v12;
  sub_10003F19C(&v22, (v9 + 96));
  *(v9 + 17) = v15;
  result = (*(v1 + 32))(&v9[v8[10]], v3, v0);
  *&v9[v8[11]] = 2;
  *&v9[v8[12]] = v17;
  *&v9[v8[13]] = v19;
  return result;
}

uint64_t sub_1005AD500@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v66 = a2;
  v6 = sub_10076D65C();
  v64 = *(v6 - 8);
  v65 = v6;
  __chkstk_darwin(v6);
  v63 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_10076DFEC();
  v8 = *(v72 - 8);
  __chkstk_darwin(v72);
  v71 = (&v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v70 = (&v55 - v11);
  __chkstk_darwin(v12);
  v69 = (&v55 - v13);
  __chkstk_darwin(v14);
  v68 = (&v55 - v15);
  v16 = sub_10076D8DC();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  __chkstk_darwin(v18);
  v20 = &v55 - v19;
  __chkstk_darwin(v21);
  v24 = &v55 - v23;
  v25 = *(v4 + 120);
  v67 = v4;
  if (v25 == 1)
  {
    v59 = v22;
    sub_10076D8AC();
    sub_10000CF78(v4, *(v4 + 24));
    sub_10076D2DC();
    sub_1005B0130(v4, v74);
    v26 = swift_allocObject();
    memcpy((v26 + 16), v74, 0x108uLL);
    v27 = v59;
    sub_10076D8BC();

    sub_10000CD74(v75);
    v28 = *(v17 + 8);
    v57 = v17 + 8;
    v58 = v28;
    v28(v27, v16);
    sub_10000A570(v4 + 40, v75);
    v29 = *(v4 + 248);
    v30 = v68;
    v68[3] = &type metadata for CGFloat;
    v30[4] = &protocol witness table for CGFloat;
    *v30 = v29;
    v60 = v24;
    v31 = v16;
    v32 = *(v8 + 104);
    v62 = (v8 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v33 = v72;
    v32(v30, enum case for Resize.Rule.replaced(_:), v72);
    v34 = enum case for Resize.Rule.unchanged(_:);
    v32(v69, enum case for Resize.Rule.unchanged(_:), v33);
    v56 = v20;
    v32(v70, v34, v33);
    v61 = v17;
    v32(v71, v34, v33);
    v74[3] = sub_10076DFFC();
    v74[4] = &protocol witness table for Resize;
    sub_10000DB7C(v74);
    v35 = v67;
    sub_10076E00C();
    v36 = v56;
    sub_10076D8BC();
    v37 = v58;
    v58(v36, v31);
    sub_10000CD74(v74);
    v38 = v59;
    sub_10076D8AC();
    sub_1005B0130(v35, v74);
    v39 = swift_allocObject();
    memcpy((v39 + 16), v74, 0x108uLL);
    sub_10076D8BC();

    v37(v38, v31);
    v74[3] = v31;
    v74[4] = &protocol witness table for HorizontalStack;
    v40 = sub_10000DB7C(v74);
    v41 = v60;
    (*(v61 + 16))(v40, v60, v31);
    v76 = v31;
    v77 = &protocol witness table for HorizontalStack;
    sub_10000DB7C(v75);
    sub_10076D8BC();
    v42 = v36;
    v43 = v67;
    v37(v42, v31);
    v37(v41, v31);
  }

  else
  {
    *(swift_allocObject() + 16) = a1;
    sub_10076D8AC();
    sub_10000CF78(v4, *(v4 + 24));
    sub_10076D2DC();
    sub_1005B0130(v4, v74);
    v44 = swift_allocObject();
    memcpy((v44 + 16), v74, 0x108uLL);
    sub_10076D8BC();

    sub_10000CD74(v75);
    v60 = *(v17 + 8);
    v61 = v17 + 8;
    v60(v20, v16);
    sub_10000A570(v4 + 40, v75);
    v45 = *(v4 + 248);
    v46 = v68;
    v68[3] = &type metadata for CGFloat;
    v46[4] = &protocol witness table for CGFloat;
    *v46 = v45;
    v59 = v16;
    v32 = *(v8 + 104);
    v62 = (v8 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v47 = v72;
    v32(v46, enum case for Resize.Rule.replaced(_:), v72);
    v34 = enum case for Resize.Rule.unchanged(_:);
    v32(v69, enum case for Resize.Rule.unchanged(_:), v47);
    v32(v70, v34, v47);
    v32(v71, v34, v47);
    v74[3] = sub_10076DFFC();
    v74[4] = &protocol witness table for Resize;
    sub_10000DB7C(v74);
    v43 = v67;
    sub_10076E00C();
    v48 = v59;
    v76 = v59;
    v77 = &protocol witness table for HorizontalStack;
    sub_10000DB7C(v75);
    sub_10076D8BC();
    v60(v24, v48);
  }

  sub_10000CD74(v74);
  v49 = v63;
  sub_10076D63C();
  sub_1005B0130(v43, v74);
  v50 = swift_allocObject();
  memcpy((v50 + 16), v74, 0x108uLL);
  v51 = v65;
  v73[3] = v65;
  v73[4] = &protocol witness table for VerticalStack;
  sub_10000DB7C(v73);
  sub_10076D64C();

  (*(v64 + 8))(v49, v51);
  v52 = v68;
  *v68 = sub_10007C300;
  v52[1] = 0;
  v53 = v72;
  v32(v52, enum case for Resize.Rule.recalculated(_:), v72);
  v32(v69, v34, v53);
  v32(v70, v34, v53);
  v32(v71, v34, v53);
  sub_10076E00C();
  return sub_10000CD74(v75);
}

uint64_t sub_1005ADE3C(uint64_t a1, uint64_t a2)
{
  sub_10000A570(a2 + 128, v4);
  sub_10076D5BC();
  sub_10000A570(a2 + 168, v4);
  return sub_10076D5CC();
}

double sub_1005ADE90(uint64_t a1, double a2, double a3)
{
  v4 = sub_10076DFFC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CF78(v3, v3[3]);
  sub_10076D2DC();
  sub_10000CF78(v21, v21[3]);
  sub_10076E0FC();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_10000CD74(v21);
  sub_10000CF78(v3, v3[3]);
  v22.var0 = v9;
  v22.var1 = v11;
  v22.var2 = v13;
  v22.var3 = v15;
  if (sub_10076D71C(v22) > 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = 3;
  }

  sub_1005AD500(v16, v7);
  sub_10076E0FC();
  v18 = v17;
  (*(v5 + 8))(v7, v4);
  return v18;
}

uint64_t sub_1005AE084(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = sub_10076DFFC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CF78(v5, v5[3]);
  sub_10076D2DC();
  sub_10000CF78(v25, v25[3]);
  sub_10076E0FC();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_10000CD74(v25);
  sub_10000CF78(v5, v5[3]);
  v26.var0 = v15;
  v26.var1 = v17;
  v26.var2 = v19;
  v26.var3 = v21;
  if (sub_10076D71C(v26) > 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = 3;
  }

  if (sub_10076D8CC())
  {
    v27.origin.x = a2;
    v27.origin.y = a3;
    v27.size.width = a4;
    v27.size.height = a5;
    CGRectGetWidth(v27);
    v28.origin.x = a2;
    v28.origin.y = a3;
    v28.size.width = a4;
    v28.size.height = a5;
    CGRectGetHeight(v28);
  }

  sub_1005AD500(v22, v13);
  sub_10076E0EC();
  return (*(v11 + 8))(v13, v10);
}

id sub_1005AE2C8()
{
  type metadata accessor for ShelfFooterTitleButton(0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  qword_10095E720 = result;
  return result;
}

char *sub_1005AE468(uint64_t a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  v12 = sub_100770F9C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000A5D4(&unk_10095B400, &unk_100783F80);
  __chkstk_darwin(v16 - 8);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v32 - v20;
  v22 = OBJC_IVAR____TtC20ProductPageExtension22ShelfFooterTitleButton_leadingIconView;
  *&v5[v22] = [objc_allocWithZone(UIImageView) init];
  v5[OBJC_IVAR____TtC20ProductPageExtension22ShelfFooterTitleButton_hasLeadingIcon] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension22ShelfFooterTitleButton_leadingIconHeight] = 0;
  sub_100181D74(a1, &v5[OBJC_IVAR____TtC20ProductPageExtension22ShelfFooterTitleButton_style]);
  v32.receiver = v5;
  v32.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v32, "initWithFrame:", a2, a3, a4, a5);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v27 = v23;
  [v27 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  sub_1007710CC();
  v28 = sub_10077111C();
  v29 = *(v28 - 8);
  (*(v29 + 56))(v21, 0, 1, v28);
  sub_10077114C();
  sub_10077113C();
  if ((*(v29 + 48))(v18, 1, v28))
  {
    sub_10014D2A4(v18, v21);
    sub_10077114C();
    sub_10014D314(v18);
  }

  else
  {
    (*(v13 + 104))(v15, enum case for UIButton.Configuration.CornerStyle.fixed(_:), v12);
    sub_100770FAC();
    sub_10077114C();
  }

  v30 = [v27 layer];
  [v30 setAllowsGroupBlending:0];

  [v27 addSubview:*&v27[OBJC_IVAR____TtC20ProductPageExtension22ShelfFooterTitleButton_leadingIconView]];
  sub_100181E3C(a1);
  return v27;
}

id sub_1005AE860()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_10095B400, &unk_100783F80);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v16 - v6;
  sub_10077113C();
  v8 = sub_10077111C();
  if ((*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    sub_10014D2A4(v7, v4);
    sub_10077114C();
    sub_10014D314(v7);
  }

  else
  {
    v9 = &v0[OBJC_IVAR____TtC20ProductPageExtension22ShelfFooterTitleButton_style];
    swift_beginAccess();
    v10 = v9[10];
    sub_1007710BC();
    sub_10077114C();
  }

  v11 = [v1 titleLabel];
  if (v11)
  {
    v12 = v11;
    v13 = &v1[OBJC_IVAR____TtC20ProductPageExtension22ShelfFooterTitleButton_style];
    swift_beginAccess();
    [v12 setNumberOfLines:*&v13[*(type metadata accessor for ShelfFooterTitleButton.Style(0) + 44)]];
  }

  v14 = &v1[OBJC_IVAR____TtC20ProductPageExtension22ShelfFooterTitleButton_style];
  swift_beginAccess();
  [v1 setTintColor:*&v14[*(type metadata accessor for ShelfFooterTitleButton.Style(0) + 48)]];
  return [v1 setNeedsUpdateConfiguration];
}

double sub_1005AEA60@<D0>(uint64_t *a1@<X8>)
{
  v3 = [v1 titleLabel];
  if (v3)
  {
    v4 = v3;
    v5 = [v1 imageView];
    if (v5)
    {
      v6 = v5;
      a1[3] = &type metadata for ShelfFooterTitleButton.Layout;
      a1[4] = sub_1005AFD40();
      v7 = swift_allocObject();
      *a1 = v7;
      *(v7 + 40) = sub_100016F40(0, &qword_100956550, UILabel_ptr);
      *(v7 + 48) = &protocol witness table for UILabel;
      *(v7 + 16) = v4;
      v8 = sub_100016F40(0, &qword_10094A280, UIImageView_ptr);
      *(v7 + 80) = v8;
      *(v7 + 88) = &protocol witness table for UIImageView;
      *(v7 + 56) = v6;
      v9 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22ShelfFooterTitleButton_leadingIconView];
      *(v7 + 120) = v8;
      *(v7 + 128) = &protocol witness table for UIImageView;
      *(v7 + 96) = v9;
      v10 = v1[OBJC_IVAR____TtC20ProductPageExtension22ShelfFooterTitleButton_hasLeadingIcon];
      v11 = &v1[OBJC_IVAR____TtC20ProductPageExtension22ShelfFooterTitleButton_style];
      swift_beginAccess();
      sub_10000A570(v11, v7 + 144);
      sub_10000A570(v11 + 40, v7 + 184);
      sub_10000A570(v11 + 96, v7 + 224);
      v12 = v9;
      [v6 lastBaselineFromBottom];
      v14 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22ShelfFooterTitleButton_leadingIconHeight];
      *(v7 + 136) = v10;
      *(v7 + 264) = result;
      *(v7 + 272) = v14;
      return result;
    }
  }

  a1[3] = sub_10076D8DC();
  a1[4] = &protocol witness table for HorizontalStack;
  sub_10000DB7C(a1);
  sub_10076D8AC();
  return result;
}

uint64_t sub_1005AEC18()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10000A5D4(&qword_10095D0D0, &unk_1007AAD60);
  __chkstk_darwin(v3 - 8);
  v64 = v63 - v4;
  v5 = sub_10000A5D4(&unk_10095E850, &qword_10078B130);
  __chkstk_darwin(v5 - 8);
  v7 = v63 - v6;
  v8 = sub_10000A5D4(&unk_10095B400, &unk_100783F80);
  __chkstk_darwin(v8 - 8);
  v73 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v70 = v63 - v11;
  __chkstk_darwin(v12);
  v69 = v63 - v13;
  __chkstk_darwin(v14);
  v16 = v63 - v15;
  __chkstk_darwin(v17);
  v19 = v63 - v18;
  v20 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  v21 = v20 - 8;
  v66 = *(v20 - 8);
  __chkstk_darwin(v20);
  v67 = v22;
  v68 = v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v72 = v63 - v24;
  v25 = sub_10076D3DC();
  v26 = *(v25 - 8);
  *&v27 = __chkstk_darwin(v25).n128_u64[0];
  v29 = v63 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75.receiver = v1;
  v75.super_class = ObjectType;
  objc_msgSendSuper2(&v75, "updateConfiguration", v27);
  sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  v30 = v1 + OBJC_IVAR____TtC20ProductPageExtension22ShelfFooterTitleButton_style;
  swift_beginAccess();
  (*(v26 + 16))(v29, v30 + *(v21 + 48), v25);
  v31 = [v1 traitCollection];
  v71 = sub_100770B3C();

  (*(v26 + 8))(v29, v25);
  if ([v1 isHighlighted])
  {
    v65 = 1;
  }

  else
  {
    v65 = [v1 isSelected];
  }

  v32 = v72;
  sub_100181D74(v30, v72);
  sub_10077113C();
  v33 = sub_10077111C();
  v34 = *(v33 - 8);
  v35 = *(v34 + 48);
  v36 = v34 + 48;
  v37 = v35(v19, 1, v33);
  v38 = v70;
  if (v37)
  {
    sub_10014D2A4(v19, v73);
    sub_10077114C();
    sub_10014D314(v19);
  }

  else
  {
    v63[0] = v19;
    v39 = v68;
    sub_100181D74(v32, v68);
    v40 = (*(v66 + 80) + 25) & ~*(v66 + 80);
    v41 = swift_allocObject();
    v63[1] = v36;
    v42 = v35;
    v43 = v38;
    v44 = v71;
    *(v41 + 16) = v71;
    *(v41 + 24) = v65;
    v45 = v41 + v40;
    v32 = v72;
    sub_100182730(v39, v45);
    v46 = v44;
    v38 = v43;
    v35 = v42;
    sub_10076E8AC();
    v47 = sub_10076E89C();
    (*(*(v47 - 8) + 56))(v7, 0, 1, v47);
    sub_10077106C();
    sub_10077114C();
  }

  sub_10077113C();
  if (v35(v16, 1, v33))
  {
    sub_10014D2A4(v16, v73);
    sub_10077114C();
    sub_10014D314(v16);
  }

  else
  {
    v48 = v68;
    sub_100181D74(v32, v68);
    v49 = (*(v66 + 80) + 17) & ~*(v66 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = v65;
    sub_100182730(v48, v50 + v49);
    v51 = v64;
    sub_10076E6AC();
    v52 = sub_10076E69C();
    (*(*(v52 - 8) + 56))(v51, 0, 1, v52);
    sub_10077105C();
    sub_10077114C();
  }

  v53 = v69;
  sub_10077113C();
  if (v35(v53, 1, v33))
  {
    sub_10014D2A4(v53, v73);
    sub_10077114C();
    sub_10014D314(v53);
  }

  else
  {
    v54 = *(v32 + 136);
    sub_100770F4C();
    sub_10077114C();
  }

  v55 = [v1 imageView];
  if (v55)
  {
    v56 = v55;
    v57 = [v55 layer];

    v58 = [v1 traitCollection];
    [v58 userInterfaceStyle];

    sub_10076FF9C();
    v59 = sub_10076FF6C();

    [v57 setCompositingFilter:v59];
  }

  sub_10077113C();
  if (v35(v38, 1, v33))
  {
    sub_10014D2A4(v38, v73);
    sub_10077114C();

    sub_100181E3C(v32);
    return sub_10014D314(v38);
  }

  else
  {
    v61 = [objc_opt_self() clearColor];
    v62 = sub_100770F5C();
    sub_10076E46C();
    v62(v74, 0);
    sub_10077114C();

    return sub_100181E3C(v32);
  }
}

uint64_t sub_1005AF488@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_10075D9EC();
  (*(*(v10 - 8) + 16))(a5, a1, v10);
  sub_100016BD0();
  v11 = a2;
  sub_10075D9FC();
  v12 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  v13 = *(a4 + *(v12 + 48));
  if (a3)
  {
    v14 = [v13 colorWithAlphaComponent:*(a4 + *(v12 + 52))];
  }

  else
  {
    v15 = v13;
  }

  sub_10037C8FC();
  return sub_10075D9FC();
}

id sub_1005AF590(uint64_t a1, char a2, uint64_t a3)
{
  v4 = *(a3 + 88);
  if (a2)
  {
    v5 = [*(a3 + 88) colorWithAlphaComponent:*(a3 + *(type metadata accessor for ShelfFooterTitleButton.Style(0) + 52))];

    return v5;
  }

  else
  {

    return v4;
  }
}

double sub_1005AF744(double a1, double a2)
{
  v14.receiver = v2;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, "sizeThatFits:", a1, a2);
  v6 = v5;
  v7 = [v2 titleLabel];
  if (v7)
  {

    v8 = [v2 imageView];
    if (v8)
    {

      sub_1005AEA60(v12);
      sub_10000CF78(v12, v13);
      [v2 layoutMargins];
      sub_100770ACC();
      v9 = [v2 traitCollection];
      sub_10076E0FC();

      [v2 layoutMargins];
      sub_100770AEC();
      v6 = v10;
      sub_10000CD74(v12);
    }
  }

  return v6;
}

uint64_t sub_1005AF978(uint64_t a1)
{
  result = type metadata accessor for ShelfFooterTitleButton.Style(319);
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

uint64_t sub_1005AFA64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10076D3DC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1005AFB24(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_10076D3DC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1005AFBC8(uint64_t a1)
{
  sub_100196324();
  if (v1 <= 0x3F)
  {
    sub_100016F40(319, &qword_10094F610, UIImage_ptr);
    if (v2 <= 0x3F)
    {
      sub_100016F40(319, &qword_100942F10, UIColor_ptr);
      if (v3 <= 0x3F)
      {
        sub_1005AFCD8(319);
        if (v4 <= 0x3F)
        {
          sub_10076D3DC();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1005AFCD8(uint64_t a1)
{
  if (!qword_10095E7E8)
  {
    sub_100016F40(255, &qword_1009560B0, UIImageSymbolConfiguration_ptr);
    v1 = sub_1007711AC();
    if (!v2)
    {
      atomic_store(v1, &qword_10095E7E8);
    }
  }
}

unint64_t sub_1005AFD40()
{
  result = qword_10095E840;
  if (!qword_10095E840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095E840);
  }

  return result;
}

uint64_t sub_1005AFD98()
{
  v1 = (type metadata accessor for ShelfFooterTitleButton.Style(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = *(*v1 + 64);
  sub_10000CD74((v0 + v3));
  sub_10000CD74((v0 + v3 + 40));

  sub_10000CD74((v0 + v3 + 96));
  v5 = v1[12];
  v6 = sub_10076D3DC();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

id sub_1005AFEBC(uint64_t a1)
{
  v3 = *(type metadata accessor for ShelfFooterTitleButton.Style(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 17) & ~*(v3 + 80));

  return sub_1005AF590(a1, v4, v5);
}

uint64_t sub_1005AFF30()
{
  v1 = (type metadata accessor for ShelfFooterTitleButton.Style(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 25) & ~v2;
  v4 = *(*v1 + 64);

  sub_10000CD74((v0 + v3));
  sub_10000CD74((v0 + v3 + 40));

  sub_10000CD74((v0 + v3 + 96));
  v5 = v1[12];
  v6 = sub_10076D3DC();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1005B005C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ShelfFooterTitleButton.Style(0) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 25) & ~*(v5 + 80));

  return sub_1005AF488(a1, v6, v7, v8, a2);
}

uint64_t sub_1005B01B4()
{
  sub_10000CD74(v0 + 2);
  sub_10000CD74(v0 + 7);
  sub_10000CD74(v0 + 12);
  sub_10000CD74(v0 + 18);
  sub_10000CD74(v0 + 23);
  sub_10000CD74(v0 + 28);

  return _swift_deallocObject(v0, 280, 7);
}

uint64_t sub_1005B0228()
{
  v0 = sub_10076FD2C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076FD4C();
  sub_10000DB18(v4, qword_10095E860);
  sub_10000A61C(v4, qword_10095E860);
  if (qword_1009412D0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A61C(v0, qword_1009A25B8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_10076FD3C();
}

void sub_1005B037C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v45 = a6;
  Strong = a5;
  v9 = sub_10076FD4C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v13 - 8);
  v44 = &v40 - v14;
  v15 = sub_10076253C();
  v43 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10076F4FC();
  __chkstk_darwin(v18 - 8);
  if (a1)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    [Strong presentViewController:a4 animated:1 completion:0];
    v19 = Strong;

    return;
  }

  if (!a2)
  {
    goto LABEL_18;
  }

  *&v50 = a2;
  swift_errorRetain();
  sub_10000A5D4(&qword_10095E8E0, &unk_1007AAD40);
  v20 = sub_100016F40(0, &unk_10094FA10, NSError_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v41 = v20;
  v42 = v47;
  v21 = [v47 domain];
  v22 = sub_10076FF9C();
  v24 = v23;

  if (v22 == sub_10076FF9C() && v24 == v25)
  {
  }

  else
  {
    v26 = sub_10077167C();

    if ((v26 & 1) == 0)
    {

      goto LABEL_18;
    }
  }

  v27 = v42;
  if ([v42 code] == -7005)
  {
    if (qword_100940970 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v9, qword_10095E860);
    sub_10000A5D4(&unk_100942A60, &unk_100784760);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100784500;
    sub_10076F27C();
    *(&v51 + 1) = v41;
    *&v50 = v42;
    v28 = v42;
    sub_10076F30C();
    sub_10000CFBC(&v50, &unk_1009434C0, &qword_100783F60);
    sub_10076FBEC();

    v29 = v28;
    sub_10076FCAC();

    v53._object = 0x80000001007D0620;
    v53._countAndFlagsBits = 0xD000000000000017;
    v55._countAndFlagsBits = 0;
    v55._object = 0xE000000000000000;
    sub_1007622EC(v53, v55);
    v54._countAndFlagsBits = 0xD00000000000002ALL;
    v54._object = 0x80000001007D0640;
    v56._countAndFlagsBits = 0;
    v56._object = 0xE000000000000000;
    sub_1007622EC(v54, v56);
    sub_10076F4DC();
    (*(v43 + 104))(v17, enum case for AlertActionStyle.normal(_:), v15);
    sub_10075FAAC();
    swift_allocObject();
    v30 = sub_10075FA7C();
    v31 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
    v33 = v44;
    v32 = v45;
    sub_10076F5AC();
    v34 = *(v31 - 8);
    if ((*(v34 + 48))(v33, 1, v31) == 1)
    {

      sub_10000CFBC(v33, &unk_100943200, &unk_100785840);
    }

    else
    {
      sub_100264030(v30, 1, v32, v33);

      (*(v34 + 8))(v33, v31);
    }

    return;
  }

LABEL_18:
  if (qword_100940970 != -1)
  {
    swift_once();
  }

  v35 = sub_10000A61C(v9, qword_10095E860);
  (*(v10 + 16))(v12, v35, v9);
  sub_10000A5D4(&unk_100942A60, &unk_100784760);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100784500;
  sub_10076F27C();
  if (a2)
  {
    swift_getErrorValue();
    v36 = v48;
    v37 = v49;
    *(&v51 + 1) = v49;
    v38 = sub_10000DB7C(&v50);
    (*(*(v37 - 8) + 16))(v38, v36, v37);
  }

  else
  {
    v50 = 0u;
    v51 = 0u;
  }

  sub_10076F30C();
  sub_10000CFBC(&v50, &unk_1009434C0, &qword_100783F60);
  sub_10076FBEC();

  (*(v10 + 8))(v12, v9);
  sub_1005B170C();
  swift_allocError();
  *v39 = 1;
  sub_10076FCAC();
}

void sub_1005B0C2C(void *a1, uint64_t a2)
{
  v4 = sub_10076FF9C();
  if (*(a2 + 16))
  {
    v6 = sub_100561E0C(v4, v5);
    v8 = v7;

    if (v8)
    {
      v9 = *(*(a2 + 56) + 8 * v6);
      v10 = [v9 success];
      v11 = [v9 error];
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = swift_allocObject();
      *(v13 + 16) = v11;
      *(v13 + 24) = v12;
      *(v13 + 32) = v10;
      v25 = sub_1005B1CD4;
      v26 = v13;
      v21 = _NSConcreteStackBlock;
      v22 = 1107296256;
      v23 = sub_10009AEDC;
      v24 = &unk_10089AE70;
      v14 = _Block_copy(&v21);
      v15 = v11;

      [a1 dismissViewControllerAnimated:1 completion:v14];
      _Block_release(v14);

      return;
    }
  }

  else
  {
  }

  sub_1005B170C();
  v16 = swift_allocError();
  *v17 = 0;
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  *(v19 + 24) = v18;
  *(v19 + 32) = 0;
  v25 = sub_1005B1CD4;
  v26 = v19;
  v21 = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = sub_10009AEDC;
  v24 = &unk_10089AE20;
  v20 = _Block_copy(&v21);
  swift_errorRetain();

  [a1 dismissViewControllerAnimated:1 completion:v20];
  _Block_release(v20);
}

uint64_t sub_1005B0F6C(void *a1)
{
  sub_1005B170C();
  v2 = swift_allocError();
  *v3 = 1;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v4;
  *(v5 + 32) = 0;
  v8[4] = sub_1005B1798;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10009AEDC;
  v8[3] = &unk_10089ADD0;
  v6 = _Block_copy(v8);
  swift_errorRetain();

  [a1 dismissViewControllerAnimated:1 completion:v6];
  _Block_release(v6);
}

double sub_1005B1110(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_10076F50C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    if (qword_100940970 != -1)
    {
      swift_once();
    }

    v10 = sub_10076FD4C();
    sub_10000A61C(v10, qword_10095E860);
    sub_10000A5D4(&unk_100942A60, &unk_100784760);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100784500;
    sub_10076F27C();
    swift_getErrorValue();
    v11 = v24[1];
    v12 = v25;
    v27 = v25;
    v13 = sub_10000DB7C(v26);
    (*(*(v12 - 1) + 16))(v13, v11, v12);
    sub_10076F30C();
    sub_10000CFBC(v26, &unk_1009434C0, &qword_100783F60);
    sub_10076FBEC();

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {

      goto LABEL_20;
    }

    v15 = Strong;
    if (*(Strong + OBJC_IVAR____TtCV20ProductPageExtension26SignInActionImplementationP33_F5BE4EF29D2E11041DC0D449BF950AC314SignInDelegate_outcome))
    {

      sub_10076FCAC();

LABEL_17:

      goto LABEL_20;
    }
  }

  else
  {
    v24[0] = v7;
    if (qword_100940970 != -1)
    {
      swift_once();
    }

    v16 = sub_10076FD4C();
    sub_10000A61C(v16, qword_10095E860);
    sub_10000A5D4(&unk_100942A60, &unk_100784760);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100784500;
    sub_10076F27C();
    v27 = &type metadata for Bool;
    LOBYTE(v26[0]) = a3 & 1;
    sub_10076F30C();
    sub_10000CFBC(v26, &unk_1009434C0, &qword_100783F60);
    sub_10076FBCC();

    if (a3)
    {
      swift_beginAccess();
      v17 = swift_unknownObjectWeakLoadStrong();
      if (!v17)
      {
        goto LABEL_20;
      }

      v18 = v17;
      if (*(v17 + OBJC_IVAR____TtCV20ProductPageExtension26SignInActionImplementationP33_F5BE4EF29D2E11041DC0D449BF950AC314SignInDelegate_outcome))
      {

        v19 = v24[0];
        (*(v6 + 104))(v9, enum case for ActionOutcome.performed(_:), v24[0]);
        sub_10076FCBC();

        (*(v6 + 8))(v9, v19);
        goto LABEL_20;
      }
    }

    else
    {
      swift_beginAccess();
      v20 = swift_unknownObjectWeakLoadStrong();
      if (!v20)
      {
        goto LABEL_20;
      }

      v18 = v20;
      if (*(v20 + OBJC_IVAR____TtCV20ProductPageExtension26SignInActionImplementationP33_F5BE4EF29D2E11041DC0D449BF950AC314SignInDelegate_outcome))
      {

        sub_1005B170C();
        swift_allocError();
        *v21 = 2;
        sub_10076FCAC();

        goto LABEL_17;
      }
    }
  }

LABEL_20:
  swift_beginAccess();
  v22 = swift_unknownObjectWeakLoadStrong();
  if (v22)
  {
    *&v22[OBJC_IVAR____TtCV20ProductPageExtension26SignInActionImplementationP33_F5BE4EF29D2E11041DC0D449BF950AC314SignInDelegate_outcome] = 0;
  }

  return result;
}

unint64_t sub_1005B170C()
{
  result = qword_10095E8A8;
  if (!qword_10095E8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095E8A8);
  }

  return result;
}

uint64_t sub_1005B1760()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1005B17A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1005B17C8()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1005B1818(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1005B1860(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1005B18B0()
{
  result = qword_10095E8B8;
  if (!qword_10095E8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095E8B8);
  }

  return result;
}

unint64_t sub_1005B1908()
{
  result = qword_10095E8C0;
  if (!qword_10095E8C0)
  {
    sub_100760A9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095E8C0);
  }

  return result;
}

uint64_t sub_1005B1960(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 8);
  v5 = OBJC_IVAR____TtCV20ProductPageExtension26SignInActionImplementationP33_F5BE4EF29D2E11041DC0D449BF950AC314SignInDelegate_outcome;
  if (*(v4 + OBJC_IVAR____TtCV20ProductPageExtension26SignInActionImplementationP33_F5BE4EF29D2E11041DC0D449BF950AC314SignInDelegate_outcome))
  {
    sub_1005B170C();
    swift_allocError();
    *v6 = 3;

    sub_10076FC2C();
  }

  sub_10000A5D4(&qword_100942C70, &unk_100783EF0);
  v7 = sub_10076FCEC();
  *(v4 + v5) = v7;

  v8 = [objc_allocWithZone(AAUISignInController) init];
  sub_10000A5D4(&unk_10095E8D0, &qword_1007AD5B8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100783DD0;
  v10 = AIDAServiceTypeStore;
  *(v9 + 32) = AIDAServiceTypeStore;
  type metadata accessor for AIDAServiceType(0);
  v11 = v10;
  isa = sub_1007701AC().super.isa;

  [v8 setServiceTypes:isa];

  [v8 setDelegate:v4];
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_1005B1BDC(v2, v19);
  v14 = swift_allocObject();
  sub_1005B1C6C(v19, (v14 + 2));
  v14[4] = v8;
  v14[5] = v7;
  v14[6] = a1;
  v18[4] = sub_1005B1CA4;
  v18[5] = v14;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_1005F04D8;
  v18[3] = &unk_10089AFD0;
  v15 = _Block_copy(v18);

  v16 = v8;

  [v16 prepareInViewController:Strong completion:v15];
  _Block_release(v15);

  return v7;
}

uint64_t sub_1005B1C14()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 56, 7);
}

double sub_1005B1CD8(uint64_t a1)
{
  sub_10076C8BC();
  sub_10076C2FC();
  switch(a1)
  {
    case 6u:
      return floor(v2);
    case 5u:

      sub_10076C22C();
      break;
    case 4u:
      v3 = v2;
      v4 = sub_10076C34C();
      if (v5)
      {
        if (v4 == 0x6972477961646F74 && v5 == 0xE900000000000064)
        {

LABEL_15:
          sub_10076C2BC();
          v2 = (v3 - v8) * 0.5;
          return floor(v2);
        }

        v7 = sub_10077167C();

        if (v7)
        {
          goto LABEL_15;
        }
      }

      sub_10076C2FC();
      break;
    default:

      return sub_1005B1FD8(a1);
  }

  return result;
}

double sub_1005B1E18(uint64_t a1, id a2)
{
  if (a1 != 4)
  {
    sub_10076C31C();
    sub_10076C31C();
  }

  [a2 layoutDirection];
  sub_1007708DC();
  sub_1005B1CD8(a1);
  sub_10076C31C();
  sub_10076C31C();
  [a2 layoutDirection];
  sub_1007708DC();
  v5 = v4;
  sub_10076C24C();
  sub_1007706FC();
  sub_10076DACC();
  sub_10076DADC();
  return v5;
}

double sub_1005B1FD8(uint64_t a1)
{
  v1 = a1;
  sub_10076C8BC();
  sub_10076C2FC();
  if (v1 > 1u)
  {
    if (v1 == 2)
    {
      sub_10076C21C();
      v6 = v5 + -1.0;
      sub_10076C22C();
      v8 = v7;
      sub_10076C2BC();
      v10 = v6 + -1.0;
      if (v6 + -1.0 < 0.0)
      {
        v10 = 0.0;
      }

      v11 = v8 * v6 + v9 * v10;
      sub_10076C24C();
      v13 = v12;
      sub_10076C2EC();
      v16 = v13 - (v14 + v15);
      sub_10076C2BC();
      v2 = v16 - v17 - v11;
    }

    else
    {
      sub_10076C24C();
      v19 = v18;
      sub_10076C2EC();
      v22 = v19 - (v20 + v21);
      sub_10076C22C();
      v24 = v22 - v23;
      sub_10076C2BC();
      v2 = v24 - v25;
    }
  }

  else if (v1)
  {
    v3 = v2;
    sub_10076C2BC();
    v2 = (v3 - v4) * 0.5;
  }

  return floor(v2);
}

double sub_1005B210C(uint64_t a1, void *a2, double a3, double a4)
{
  v120 = sub_10077164C();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v117 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_10076DBAC();
  v116 = *(v118 - 8);
  __chkstk_darwin(v118);
  v115 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_10076DB9C();
  v9 = *(v110 - 8);
  __chkstk_darwin(v110);
  v108 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_10076DB5C();
  v11 = *(v123 - 8);
  __chkstk_darwin(v123);
  v111 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_10076DB6C();
  v127 = *(v114 - 8);
  __chkstk_darwin(v114);
  v113 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_10076DB0C();
  v14 = *(v112 - 8);
  __chkstk_darwin(v112);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10076997C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = a1;
  v21 = sub_10005312C();
  if (qword_100940DA0 != -1)
  {
    swift_once();
  }

  v100 = sub_10076D3DC();
  sub_10000A61C(v100, qword_1009A16D8);
  v124 = a2;
  v22 = [a2 traitCollection];
  v102 = v21;
  sub_100770B3C();

  v23 = sub_10076C04C();
  v137 = v23;
  v99 = sub_1005B30F8(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v138 = v99;
  v24 = sub_10000DB7C(&v136);
  v25 = *(v23 - 8);
  v26 = *(v25 + 104);
  v98 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v101 = v23;
  v97 = v26;
  v96 = v25 + 104;
  v26(v24);
  sub_10076C90C();
  sub_10000CD74(&v136);
  sub_10076996C();
  sub_10076994C();
  v27 = *(v18 + 8);
  v104 = v20;
  v106 = v17;
  v105 = v18 + 8;
  v95 = v27;
  v27(v20, v17);
  sub_10000A5D4(&qword_1009426C0, qword_100784180);
  v28 = *(v9 + 72);
  v109 = v9;
  v122 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v103 = v28;
  v125 = swift_allocObject();
  v121 = xmmword_100783DD0;
  *(v125 + 1) = xmmword_100783DD0;
  v29 = v137;
  v30 = v138;
  v31 = sub_10000CF78(&v136, v137);
  v134 = v29;
  v135 = *(v30 + 8);
  v32 = sub_10000DB7C(&v133);
  (*(*(v29 - 8) + 16))(v32, v31, v29);
  v131 = &type metadata for Double;
  v132 = &protocol witness table for Double;
  v130 = 0;
  v33 = *(v14 + 104);
  v34 = v16;
  v93 = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
  v35 = v112;
  v94 = v14 + 104;
  v92 = v33;
  v33(v16);
  v36 = v127;
  v37 = *(v127 + 104);
  v38 = v113;
  v90 = enum case for VerticalFlowLayout.HorizontalPlacement.center(_:);
  v39 = v114;
  v91 = v127 + 104;
  v89 = v37;
  v37(v113);
  v40 = sub_10000A5D4(&unk_100963750, &unk_10078AFA0);
  v41 = *(v11 + 72);
  v42 = v11;
  v43 = *(v11 + 80);
  v44 = (v43 + 32) & ~v43;
  v86 = v43;
  v87 = v40;
  v85 = v44 + v41;
  v45 = swift_allocObject();
  *(v45 + 16) = v121;
  v88 = v44;
  sub_10076DB2C();
  v129[0] = v45;
  v46 = sub_1005B30F8(&qword_1009426B0, &type metadata accessor for VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for VerticalFlowLayout.ExclusionCondition);
  v47 = sub_10000A5D4(&unk_100963760, &unk_100784170);
  v48 = sub_100016EDC();
  v49 = v111;
  v83 = v47;
  v82 = v48;
  v50 = v123;
  v84 = v46;
  sub_1007712CC();
  v51 = v126;
  sub_10076DB8C();
  v52 = *(v42 + 8);
  v107 = v42 + 8;
  v81 = v52;
  v52(v49, v50);
  v53 = *(v36 + 8);
  v127 = v36 + 8;
  v53(v38, v39);
  v80 = *(v14 + 8);
  v80(v34, v35);
  sub_1000F00E0(&v130);
  sub_10000CD74(&v133);
  if (*(v51 + 176) == 1)
  {
    v54 = v39;
    v55 = v53;
    v56 = v34;
    if (qword_100940DA8 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v100, qword_1009A16F0);
    v57 = [v124 traitCollection];
    sub_100770B3C();

    v58 = v101;
    v134 = v101;
    v135 = v99;
    v59 = sub_10000DB7C(&v133);
    v97(v59, v98, v58);
    sub_10076C90C();
    sub_10000CD74(&v133);
    v60 = v104;
    sub_10076996C();
    sub_10076994C();
    v95(v60, v106);
    v61 = v134;
    v62 = v135;
    v63 = sub_10000CF78(&v133, v134);
    v131 = v61;
    v132 = *(v62 + 8);
    v64 = sub_10000DB7C(&v130);
    (*(*(v61 - 8) + 16))(v64, v63, v61);
    v129[4] = &protocol witness table for Double;
    v129[3] = &type metadata for Double;
    v129[0] = 0;
    v92(v56, v93, v35);
    v89(v38, v90, v54);
    v65 = swift_allocObject();
    *(v65 + 16) = v121;
    sub_10076DB2C();
    v128 = v65;
    v66 = v49;
    v67 = v123;
    sub_1007712CC();
    v68 = v126;
    v69 = v35;
    v70 = v108;
    sub_10076DB8C();
    v81(v66, v67);
    v55(v38, v54);
    v80(v56, v69);
    sub_1000F00E0(v129);
    sub_10000CD74(&v130);
    v71 = v125;
    v73 = v125[2];
    v72 = v125[3];
    if (v73 >= v72 >> 1)
    {
      v71 = sub_10049CEF0((v72 > 1), v73 + 1, 1, v125);
    }

    *(v71 + 2) = v73 + 1;
    (*(v109 + 32))(&v71[v122 + v73 * v103], v70, v110);
    sub_10000CD74(&v133);
  }

  else
  {
    v68 = v126;
  }

  v74 = v115;
  sub_10076DB7C();
  v75 = v118;
  sub_10076D2AC();
  v76 = *(v68 + 120);
  sub_10000CF78((v68 + 96), v76);
  v77 = v117;
  sub_1000FF02C(v76);
  sub_10076D40C();
  (*(v119 + 8))(v77, v120);
  (*(v116 + 8))(v74, v75);
  sub_10000CD74(&v136);
  return a3;
}

double sub_1005B2F20()
{
  v0 = sub_10076C38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076460C();
  sub_10076C2FC();
  v5 = v4;
  v7 = v6;
  v8 = *(v1 + 8);
  v8(v3, v0);
  if (qword_10093FAE8 != -1)
  {
    swift_once();
  }

  sub_10076460C();
  sub_10076C24C();
  v10 = v9;
  v8(v3, v0);
  v11 = sub_10076461C();
  v12 = type metadata accessor for SnapshotPageTraitEnvironment();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v14 = v10;
  *(v14 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v13[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_traitCollection] = v11;
  v19.receiver = v13;
  v19.super_class = v12;
  v15 = objc_msgSendSuper2(&v19, "init");
  sub_1005B210C(&xmmword_10099D9E0, v15, v5, v7);
  v17 = v16;

  return v17;
}

uint64_t sub_1005B30F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1005B3140@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = sub_10076D1AC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[18] = &type metadata for Double;
  v26[19] = &protocol witness table for Double;
  v26[14] = &protocol witness table for Double;
  v26[15] = 0x4046000000000000;
  v26[13] = &type metadata for Double;
  v26[10] = 0x4030000000000000;
  v26[8] = &type metadata for Double;
  v26[9] = &protocol witness table for Double;
  v26[5] = 0x4020000000000000;
  if (qword_100940A80 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v16 = sub_10000A61C(v5, qword_1009A0D90);
  v6 = *(v5 - 8);
  v15 = *(v6 + 16);
  v17 = v6 + 16;
  v15(v4, v16, v5);
  v14 = enum case for FontSource.useCase(_:);
  v13 = v2[13];
  v13(v4);
  v7 = sub_10076D9AC();
  v26[3] = v7;
  v26[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v26);
  v24 = v1;
  v25 = &protocol witness table for FontSource;
  v8 = sub_10000DB7C(v23);
  v9 = v2[2];
  v9(v8, v4, v1);
  sub_10076D9BC();
  v10 = v2[1];
  v10(v4, v1);
  v25 = &protocol witness table for Double;
  v24 = &type metadata for Double;
  v23[0] = 0;
  v15(v4, v16, v5);
  (v13)(v4, v14, v1);
  v22[3] = v7;
  v22[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v22);
  v20 = v1;
  v21 = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(v19);
  v9(v11, v4, v1);
  sub_10076D9BC();
  v10(v4, v1);
  v21 = &protocol witness table for Double;
  v20 = &type metadata for Double;
  v19[0] = 0x4020000000000000;
  return sub_100763E7C();
}

char *sub_1005B3488()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076E8DC();
  __chkstk_darwin(v3 - 8);
  v4 = sub_10000A5D4(&qword_100959058, &qword_1007AD660);
  __chkstk_darwin(v4 - 8);
  v6 = &v30[-1] - v5;
  v7 = sub_100763E9C();
  __chkstk_darwin(v7 - 8);
  v9 = &v30[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076D3DC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100940A78 != -1)
  {
    swift_once();
  }

  v14 = sub_10000A61C(v10, qword_1009A0D78);
  (*(v11 + 16))(v13, v14, v10);
  v15 = [objc_opt_self() currentTraitCollection];
  sub_1005B3140(v9);

  v16 = objc_allocWithZone(type metadata accessor for ArcadeLockupView(0));
  *&v1[OBJC_IVAR____TtC20ProductPageExtension24ArcadeFloatingBannerView_lockupView] = sub_1001AB12C(v13, v9, 0, 0.0, 0.0, 0.0, 0.0);
  v31.receiver = v1;
  v31.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v31, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v17 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  v18 = v17;
  sub_1007708CC();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  [v18 setLayoutMargins:{v20, v22, v24, v26}];
  [v18 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  sub_10076E67C();
  v27 = sub_10076E68C();
  (*(*(v27 - 8) + 56))(v6, 0, 1, v27);
  sub_100770C8C();
  sub_10076E8CC();
  v30[3] = sub_10076E8EC();
  v30[4] = &protocol witness table for _Glass;
  sub_10000DB7C(v30);
  sub_10076E8FC();
  sub_100770BCC();

  [v18 addSubview:*&v18[OBJC_IVAR____TtC20ProductPageExtension24ArcadeFloatingBannerView_lockupView]];
  return v18;
}

double sub_1005B3AB4(uint64_t a1, int a2, int a3, void *a4, double a5)
{
  v160 = a4;
  v155 = a3;
  v168 = a2;
  v6 = sub_10000A5D4(&unk_1009542E0, qword_1007AF290);
  v164 = *(v6 - 8);
  v165 = v6;
  __chkstk_darwin(v6);
  v163 = v147 - v7;
  v8 = sub_1007681FC();
  v156 = *(v8 - 8);
  v157 = v8;
  __chkstk_darwin(v8);
  v158 = v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076821C();
  v11 = *(v10 - 8);
  v161 = v10;
  v162 = v11;
  __chkstk_darwin(v10);
  v159 = v147 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076DA7C();
  v166 = *(v13 - 8);
  v167 = v13;
  __chkstk_darwin(v13);
  v174 = v147 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v183 = v147 - v16;
  __chkstk_darwin(v17);
  v184 = v147 - v18;
  __chkstk_darwin(v19);
  v185 = v147 - v20;
  __chkstk_darwin(v21);
  v186 = v147 - v22;
  __chkstk_darwin(v23);
  v182 = v147 - v24;
  __chkstk_darwin(v25);
  v187 = v147 - v26;
  __chkstk_darwin(v27);
  v176 = v147 - v28;
  v29 = sub_10076DD3C();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v153 = v147 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v154 = v147 - v33;
  __chkstk_darwin(v34);
  v36 = v147 - v35;
  __chkstk_darwin(v37);
  v181 = v147 - v38;
  __chkstk_darwin(v39);
  v150 = v147 - v40;
  __chkstk_darwin(v41);
  v151 = v147 - v42;
  __chkstk_darwin(v43);
  v173 = v147 - v44;
  __chkstk_darwin(v45);
  v148 = v147 - v46;
  __chkstk_darwin(v47);
  v149 = v147 - v48;
  __chkstk_darwin(v49);
  v178 = v147 - v50;
  __chkstk_darwin(v51);
  v179 = v147 - v52;
  __chkstk_darwin(v53);
  v180 = v147 - v54;
  __chkstk_darwin(v55);
  v188 = v147 - v56;
  __chkstk_darwin(v57);
  v59 = v147 - v58;
  __chkstk_darwin(v60);
  v172 = v147 - v61;
  __chkstk_darwin(v62);
  v64 = v147 - v63;
  __chkstk_darwin(v65);
  v67 = v147 - v66;
  __chkstk_darwin(v68);
  v70 = v147 - v69;
  __chkstk_darwin(v71);
  v177 = v147 - v72;
  v73 = sub_10076BC9C();
  if (v73)
  {
  }

  v169 = v73;
  v175 = v59;
  v190 = a1;
  v171 = v36;
  sub_10076DD2C();
  if (qword_100940C78 != -1)
  {
    swift_once();
  }

  v191 = sub_10076D3DC();
  sub_10000A61C(v191, qword_1009A1360);
  sub_10076DCFC();
  v74 = v30;
  v77 = *(v30 + 8);
  v75 = v30 + 8;
  v76 = v77;
  v77(v64, v29);
  v78 = v29;
  v79 = v168;
  v147[3] = ~v168;
  sub_10076DD1C();
  v77(v67, v78);
  v80 = (v79 & 1) == 0;
  v81 = v78;
  if (v80)
  {
    v82 = 4;
  }

  else
  {
    v82 = 0;
  }

  v147[2] = v82;
  sub_10076DD0C();
  v193 = v76;
  v194 = v75;
  v76(v70, v78);
  v83 = sub_10076BC5C();
  if (v83)
  {
    v84 = v83;
    sub_100764D0C();
  }

  v85 = *(v74 + 16);
  v189 = v74 + 16;
  v192 = v85;
  v85(v64, v177, v78);
  sub_10076DA5C();
  sub_10076DA9C();
  v152 = sub_10076DDDC();
  swift_allocObject();
  v170 = sub_10076DD9C();
  v86 = v188;
  sub_10076DD2C();
  if (qword_100940C90 != -1)
  {
    swift_once();
  }

  v87 = sub_10000A61C(v191, qword_1009A13A8);
  v88 = v175;
  v147[1] = v87;
  sub_10076DCFC();
  v89 = v193;
  v193(v86, v81);
  sub_10076DD1C();
  v89(v88, v81);
  v90 = v172;
  sub_10076DD0C();
  v89(v64, v81);
  sub_10076BC8C();
  v91 = v90;
  v92 = v192;
  v192(v64, v91, v81);
  sub_10076DA5C();
  v93 = v188;
  sub_10076DA9C();
  sub_10076DD2C();
  if (qword_100940C98 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v191, qword_1009A13C0);
  sub_10076DCFC();
  v89(v93, v81);
  sub_10076DD1C();
  v89(v88, v81);
  sub_10076DD0C();
  v89(v64, v81);
  v94 = sub_10076BC2C();
  if (v94)
  {
    v95 = v94;
    sub_100764D0C();

    v92 = v192;
  }

  v92(v64, v180, v81);
  sub_10076DA5C();
  sub_10076DA9C();
  v96 = v188;
  sub_10076DD2C();
  if (qword_100940CA0 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v191, qword_1009A13D8);
  v97 = v175;
  sub_10076DCFC();
  v98 = v193;
  v193(v96, v81);
  sub_10076DD1C();
  v98(v97, v81);
  sub_10076DD0C();
  v98(v64, v81);
  v99 = sub_10076BC3C();
  if (v99)
  {
    v100 = v99;
    sub_100764D0C();

    v192(v64, v179, v81);
  }

  else
  {
    v92(v64, v179, v81);
  }

  sub_10076DA5C();
  sub_10076DA9C();
  sub_10076DD2C();
  if (qword_100940C88 != -1)
  {
    swift_once();
  }

  v101 = sub_10000A61C(v191, qword_1009A1390);
  v102 = v148;
  v147[0] = v101;
  sub_10076DCFC();
  v103 = v193;
  v193(v64, v81);
  v104 = v149;
  sub_10076DD1C();
  v103(v102, v81);
  sub_10076DD0C();
  v103(v104, v81);
  v105 = sub_10076BC7C();
  if (v105)
  {
    v106 = v105;
    sub_100764D0C();
  }

  v107 = v192;
  v192(v64, v178, v81);
  sub_10076DA5C();
  sub_10076DA9C();
  sub_10076DD2C();
  v108 = v191;
  if (qword_100940C80 != -1)
  {
    v146 = v191;
    swift_once();
    v108 = v146;
  }

  sub_10000A61C(v108, qword_1009A1378);
  v109 = v150;
  sub_10076DCFC();
  v110 = v193;
  v193(v64, v81);
  v111 = v151;
  sub_10076DD1C();
  v110(v109, v81);
  v112 = v173;
  sub_10076DD0C();
  v110(v111, v81);
  v204._object = 0x80000001007E1420;
  v204._countAndFlagsBits = 0xD000000000000012;
  v205._countAndFlagsBits = 0;
  v205._object = 0xE000000000000000;
  sub_1007622EC(v204, v205);
  v107(v64, v112, v81);
  sub_10076DA5C();
  sub_10076DA9C();
  v113 = v188;
  sub_10076DD2C();
  v114 = v175;
  sub_10076DCFC();
  v115 = v110;
  v110(v113, v81);
  sub_10076DD1C();
  v110(v114, v81);
  sub_10076DD0C();
  v110(v64, v81);
  v116 = sub_10076BC9C();
  v117 = v174;
  if (v116)
  {
    sub_10076C3DC();

    v115 = v193;
  }

  v192(v64, v181, v81);
  sub_10076DA5C();
  sub_10076DA9C();
  sub_10076DD2C();
  v118 = v153;
  sub_10076DCFC();
  v115(v64, v81);
  v119 = v154;
  sub_10076DD1C();
  v115(v118, v81);
  v120 = v171;
  sub_10076DD0C();
  v115(v119, v81);
  if (sub_10076BC9C())
  {
    v121 = sub_10076C3CC();

    if (v121)
    {
      sub_100764D0C();
    }
  }

  v192(v64, v120, v81);
  sub_10076DA5C();
  sub_10076DA9C();
  v122 = v117;
  if (qword_1009412A8 != -1)
  {
    swift_once();
  }

  v123 = v157;
  v124 = sub_10000A61C(v157, qword_1009A2578);
  (*(v156 + 16))(v158, v124, v123);
  v125 = v167;
  v203[3] = v167;
  v203[4] = &protocol witness table for LabelPlaceholder;
  v126 = sub_10000DB7C(v203);
  v127 = v166;
  v128 = *(v166 + 16);
  v128(v126, v176, v125);
  v202[3] = v125;
  v202[4] = &protocol witness table for LabelPlaceholder;
  v129 = sub_10000DB7C(v202);
  v128(v129, v187, v125);
  v201[3] = v125;
  v201[4] = &protocol witness table for LabelPlaceholder;
  v130 = sub_10000DB7C(v201);
  v128(v130, v182, v125);
  v200[3] = v125;
  v200[4] = &protocol witness table for LabelPlaceholder;
  v131 = sub_10000DB7C(v200);
  v128(v131, v186, v125);
  v199[3] = v125;
  v199[4] = &protocol witness table for LabelPlaceholder;
  v132 = sub_10000DB7C(v199);
  v128(v132, v185, v125);
  v198[3] = v125;
  v198[4] = &protocol witness table for LabelPlaceholder;
  v133 = sub_10000DB7C(v198);
  v128(v133, v184, v125);
  v197[3] = v125;
  v197[4] = &protocol witness table for LabelPlaceholder;
  v134 = sub_10000DB7C(v197);
  v128(v134, v183, v125);
  v196[3] = v125;
  v196[4] = &protocol witness table for LabelPlaceholder;
  v135 = sub_10000DB7C(v196);
  v128(v135, v122, v125);
  v195 = v170;
  sub_10076D2DC();
  v136 = v159;
  sub_10076820C();
  v137 = [v160 traitCollection];
  sub_1005B55D4(&qword_1009605D0, &type metadata accessor for ProductReviewCustomLayout, &protocol conformance descriptor for ProductReviewCustomLayout);
  v138 = v163;
  v139 = v161;
  sub_10076D43C();
  swift_getOpaqueTypeConformance2();
  v140 = v165;
  sub_10076E0FC();
  v142 = v141;

  (*(v164 + 8))(v138, v140);
  (*(v162 + 8))(v136, v139);
  v143 = *(v127 + 8);
  v143(v174, v125);
  v144 = v193;
  v193(v171, v81);
  v143(v183, v125);
  v144(v181, v81);
  v143(v184, v125);
  v144(v173, v81);
  v143(v185, v125);
  v144(v178, v81);
  v143(v186, v125);
  v144(v179, v81);
  v143(v182, v125);
  v144(v180, v81);
  v143(v187, v125);
  v144(v172, v81);
  v143(v176, v125);
  v144(v177, v81);
  return v142;
}

double sub_1005B4ED0()
{
  v0 = sub_10000A5D4(&qword_10094DC40, &unk_1007A1D50);
  v49 = *(v0 - 8);
  __chkstk_darwin(v0);
  v48 = &v38 - v1;
  v47 = sub_10076664C();
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v43 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v45 = &v38 - v4;
  v52 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  v44 = *(v52 - 8);
  __chkstk_darwin(v52);
  v42 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v51 = &v38 - v7;
  v8 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v41 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v38 - v9;
  v50 = sub_10076C38C();
  v11 = *(v50 - 8);
  __chkstk_darwin(v50);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076BCAC();
  v15 = sub_1005B55D4(&qword_100952E68, &type metadata accessor for Review, &protocol conformance descriptor for Review);
  sub_10076332C();
  v16 = v55[0];
  if (!v55[0])
  {
    return 0.0;
  }

  swift_getKeyPath();
  v40 = v0;
  sub_10076338C();

  sub_10076C24C();
  v18 = v17;
  v39 = *(v11 + 8);
  v39(v13, v50);
  swift_getKeyPath();
  sub_10076338C();

  v19 = v55[0];
  v20 = type metadata accessor for SnapshotPageTraitEnvironment();
  v21 = objc_allocWithZone(v20);
  v22 = &v21[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v22 = v18;
  *(v22 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v21[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_traitCollection] = v19;
  v56.receiver = v21;
  v56.super_class = v20;
  v23 = objc_msgSendSuper2(&v56, "init");
  v55[3] = v14;
  v55[4] = v15;
  v55[0] = v16;
  swift_getKeyPath();
  sub_10076338C();

  swift_getKeyPath();
  sub_10076F49C();

  (*(v41 + 8))(v10, v8);

  v24 = v51;
  sub_1007633DC();
  v25 = v45;
  sub_10076331C();
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C2FC();
  v27 = v26;
  v39(v13, v50);
  sub_10000A570(v55, v53);
  v28 = v23;
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  swift_dynamicCast();
  v29 = v44;
  (*(v44 + 16))(v42, v24, v52);
  sub_10076FCFC();
  v30 = v48;
  sub_10076FDBC();
  v31 = v54;
  v32 = v43;
  sub_1007665CC();
  sub_1005B55D4(&unk_100945570, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v33 = v47;
  LOBYTE(v20) = sub_10077124C();
  v34 = *(v46 + 8);
  v34(v32, v33);
  sub_1005B3AB4(v31, v20 & 1, v20 & 1, v28, v27);
  v36 = v35;

  (*(v49 + 8))(v30, v40);
  v34(v25, v33);
  (*(v29 + 8))(v51, v52);

  sub_10000CD74(v55);
  return v36;
}

uint64_t sub_1005B55D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_1005B5620(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC20ProductPageExtension42ArcadeDownloadPackCategoriesViewController_pageView;
  type metadata accessor for ArcadeDownloadPackCategoriesPageView();
  *&v2[v5] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR____TtC20ProductPageExtension42ArcadeDownloadPackCategoriesViewController_continueButton;
  *&v2[v6] = [objc_opt_self() boldButton];
  v7 = OBJC_IVAR____TtC20ProductPageExtension42ArcadeDownloadPackCategoriesViewController_skipButton;
  *&v2[v7] = [objc_opt_self() linkButton];
  *&v2[OBJC_IVAR____TtC20ProductPageExtension42ArcadeDownloadPackCategoriesViewController_presenter] = a1;
  v8 = *&v2[v5];
  swift_retain_n();
  v9 = v8;

  v10 = sub_1005B6024(a1, v9, a2, v2, &off_100886688);
  sub_1005B5FD8(&qword_10095E970, &unk_1007AD7FC);
  v11 = v10;

  sub_10076AD8C();

  [*&v11[OBJC_IVAR____TtC20ProductPageExtension42ArcadeDownloadPackCategoriesViewController_continueButton] addTarget:v11 action:"didTapContinueButton" forControlEvents:64];
  [*&v11[OBJC_IVAR____TtC20ProductPageExtension42ArcadeDownloadPackCategoriesViewController_skipButton] addTarget:v11 action:"didTapSkipButton" forControlEvents:64];

  return v11;
}

void sub_1005B595C(uint64_t a1)
{
  v2 = v1;
  sub_100760C4C();
  sub_10076F64C();
  sub_10076FC1C();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_10007C3DC(a1, v17, sub_1005B615C, v4);

  v5 = *&v1[OBJC_IVAR____TtC20ProductPageExtension42ArcadeDownloadPackCategoriesViewController_continueButton];
  sub_10076A17C();
  sub_10076B8EC();
  v7 = v6;

  if (v7)
  {
    v8 = sub_10076FF6C();
  }

  else
  {
    v8 = 0;
  }

  [v5 setTitle:v8 forState:0];

  v9 = *&v2[OBJC_IVAR____TtC20ProductPageExtension42ArcadeDownloadPackCategoriesViewController_skipButton];
  sub_10076A16C();
  sub_10076B8EC();
  v11 = v10;

  if (v11)
  {
    v12 = sub_10076FF6C();
  }

  else
  {
    v12 = 0;
  }

  [v9 setTitle:v12 forState:0];

  v13 = sub_10076FF6C();
  [v5 setAccessibilityIdentifier:v13];

  v14 = sub_10076FF6C();
  [v9 setAccessibilityIdentifier:v14];

  v15 = [v2 buttonTray];
  [v15 addButton:v5];

  v16 = [v2 buttonTray];
  [v16 addButton:v9];

  sub_10073042C();
}

double sub_1005B5BFC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;

    sub_10076AD9C();
  }

  return result;
}

id sub_1005B5C7C()
{
  v1 = [v0 buttonTray];
  sub_10076B2AC();
  v2 = sub_10076FF6C();

  [v1 setCaptionText:v2 style:2];

  v3 = sub_10076B2CC();
  sub_1005A6B00(v3 & 1);
  v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension42ArcadeDownloadPackCategoriesViewController_continueButton];
  v5 = sub_10076B2BC() & 1;

  return [v4 setEnabled:v5];
}

double sub_1005B5D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *&v3[OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackViewController_objectGraph];
  sub_10076AE6C();
  swift_allocObject();
  swift_retain_n();

  sub_10076AE1C();
  v6 = objc_allocWithZone(type metadata accessor for ArcadeDownloadPackSuggestionsViewController());

  v8 = sub_100614384(v7, v5);
  v9 = [v4 navigationController];
  if (v9)
  {
    v10 = v9;
    [v9 pushViewController:v8 animated:1];
  }

  return result;
}

void sub_1005B5E74()
{

  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension42ArcadeDownloadPackCategoriesViewController_skipButton);
}

uint64_t sub_1005B5FD8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ArcadeDownloadPackCategoriesViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1005B6024(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  *&a4[OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackViewController_overlayViewController] = 0;
  *&a4[OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackViewController_presenter] = a1;
  *&a4[OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackViewController_objectGraph] = a3;
  v7 = &a4[OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackViewController_pageView];
  *v7 = a2;
  *(v7 + 1) = a5;
  v8 = &a4[OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackViewController_lifecycleObserver];
  *(v8 + 3) = sub_100760CCC();
  *(v8 + 4) = &protocol witness table for BasePresenter;
  *v8 = a1;
  swift_retain_n();

  v9 = sub_10076FF6C();
  v12.receiver = a4;
  v12.super_class = type metadata accessor for ArcadeDownloadPackViewController();
  v10 = objc_msgSendSuper2(&v12, "initWithTitle:detailText:icon:contentLayout:", v9, 0, 0, 2);

  return v10;
}

uint64_t sub_1005B6124()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1005B6164()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension33PrivacyCategoryCollectionViewCell_privacyCategoryView];
  v2 = OBJC_IVAR____TtC20ProductPageExtension19PrivacyCategoryView_category;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension19PrivacyCategoryView_category) = 0;

  sub_100103A50();
  v6.value.super.isa = 0;
  v6.is_nil = 0;
  sub_10075FCEC(v6, v3);
  *&v0[OBJC_IVAR____TtC20ProductPageExtension33PrivacyCategoryCollectionViewCell_privacyCategory] = 0;

  *(v1 + v2) = 0;

  sub_100103A50();
  return [v0 setNeedsLayout];
}

uint64_t type metadata accessor for PrivacyCategoryCollectionViewCell(uint64_t a1)
{
  result = qword_10095E9A8;
  if (!qword_10095E9A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005B6514(uint64_t a1)
{
  sub_10000D6A4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

char *sub_1005B65BC()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC20ProductPageExtension33PrivacyCategoryCollectionViewCell_privacyCategoryView;
  *&v0[v2] = [objc_allocWithZone(type metadata accessor for PrivacyCategoryView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC20ProductPageExtension33PrivacyCategoryCollectionViewCell_itemLayoutContext;
  v4 = sub_10076341C();
  (*(*(v4 - 8) + 56))(&v0[v3], 1, 1, v4);
  *&v0[OBJC_IVAR____TtC20ProductPageExtension33PrivacyCategoryCollectionViewCell_privacyCategory] = 0;
  v12.receiver = v0;
  v12.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v6 = [v5 contentView];
  [v6 setClipsToBounds:0];

  v7 = [v5 contentView];
  [v7 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v8 = [v5 contentView];
  sub_1000325F0();
  v9 = sub_100770D2C();
  [v8 setBackgroundColor:v9];

  v10 = [v5 contentView];
  [v10 addSubview:*&v5[OBJC_IVAR____TtC20ProductPageExtension33PrivacyCategoryCollectionViewCell_privacyCategoryView]];

  return v5;
}

double sub_1005B67E8(void *a1)
{
  v2 = sub_10076048C();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 traitCollection];
  if (qword_10093FF68 != -1)
  {
    swift_once();
  }

  v29.is_nil = qword_10099E8A8;
  v29.value._rawValue = 0;
  isa = sub_1007706DC(v29, v7).super.isa;
  v27 = isa;

  v28 = UIFontTextStyleHeadline;
  v10 = objc_opt_self();
  v11 = [v10 configurationWithTextStyle:UIFontTextStyleHeadline scale:2];
  v12 = *(v3 + 104);
  v12(v6, enum case for SystemImage.star(_:), v2);
  v13 = [v11 configurationWithTraitCollection:isa];
  v14 = sub_10076046C();

  v15 = *(v3 + 8);
  v15(v6, v2);
  [v14 contentInsets];
  v17 = v16;
  [v14 contentInsets];
  v19 = v17 + v18;
  [v14 size];
  v21 = v20 - v19;
  [v14 contentInsets];
  [v14 contentInsets];
  [v14 size];

  v22 = [v10 configurationWithTextStyle:v28 scale:2];
  v12(v6, enum case for SystemImage.starFill(_:), v2);
  v23 = v27;
  v24 = [v22 configurationWithTraitCollection:v27];
  v25 = sub_10076046C();

  v15(v6, v2);
  sub_100770E5C();
  [v25 contentInsets];

  return v21 * 5.0 + 24.0;
}

id sub_1005B6B2C(void *a1)
{
  if (qword_10093FF60 != -1)
  {
    swift_once();
  }

  v2 = qword_10099E8A0;
  if (sub_10077086C())
  {
    v3 = v2;
  }

  else
  {
    v3 = a1;
  }

  return v3;
}

double sub_1005B6BA8(void *a1, double a2)
{
  v3 = [a1 traitCollection];
  v4 = sub_10008B31C(v3, a2);

  return v4;
}

double sub_1005B6C20(uint64_t a1, void *a2, int a3, double a4, double a5)
{
  v96 = a3;
  v102 = a2;
  v8 = sub_10076E07C();
  v98 = *(v8 - 8);
  v99 = v8;
  __chkstk_darwin(v8);
  v97 = v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076D7FC();
  v93 = *(v10 - 8);
  v94 = v10;
  __chkstk_darwin(v10);
  v92 = v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v83 = v79 - v13;
  v14 = sub_10076D1AC();
  v90 = *(v14 - 8);
  v91 = v14;
  __chkstk_darwin(v14);
  v89 = v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10076D3DC();
  v87 = *(v16 - 8);
  v88 = v16;
  __chkstk_darwin(v16);
  v85 = v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_10076DD3C();
  v84 = *(v86 - 8);
  __chkstk_darwin(v86);
  v19 = v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v79 - v21;
  v23 = sub_10076DA7C();
  v95 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = v79 - v27;
  __chkstk_darwin(v29);
  v31 = v79 - v30;
  v32 = sub_10076C0BC();
  if (v33)
  {
    v34 = v32;
    v35 = v33;
    type metadata accessor for ProductNoRatingsView();
    v36 = v102;
    swift_getObjectType();
    v37 = sub_10010FE20(v34, v35, v36, a4, a5);
  }

  else
  {
    v79[0] = v19;
    v79[1] = v22;
    v101 = v31;
    v82 = v25;
    sub_10076C0AC();
    v39 = v38;
    v40 = objc_allocWithZone(NSNumber);
    LODWORD(v41) = v39;
    v110.value.super.super.isa = [v40 initWithFloat:v41];
    isa = v110.value.super.super.isa;
    v110.is_nil = 1;
    sub_10076858C(v110, v43);
    v45 = v44;

    v81 = v23;
    v100 = v28;
    v79[2] = a1;
    if (!v45)
    {
      sub_10076C0AC();
      sub_10077037C();
    }

    sub_10000A5D4(&unk_10094E7E0, qword_100785360);
    inited = swift_initStackObject();
    *(inited + 32) = NSKernAttributeName;
    *(inited + 16) = xmmword_100783DD0;
    *(inited + 64) = &type metadata for CGFloat;
    *(inited + 40) = 0xC010000000000000;
    v47 = NSKernAttributeName;
    sub_1000FC5F4(inited);
    swift_setDeallocating();
    sub_1001E4F90(inited + 32);
    v48 = objc_allocWithZone(NSAttributedString);
    v49 = sub_10076FF6C();

    type metadata accessor for Key(0);
    sub_1005B7A9C(&qword_100943320, type metadata accessor for Key, &unk_100783A7C);
    v50 = sub_10076FE3C().super.isa;

    v51 = [v48 initWithString:v49 attributes:v50];

    v80 = v51;
    v52 = v79[0];
    sub_10076DD2C();
    if (qword_10093FF58 != -1)
    {
      swift_once();
    }

    v53 = sub_10000A5D4(&qword_10094C390, &qword_100792908);
    sub_10000A61C(v53, qword_10099E888);
    v105[0] = [v102 snapshotPageTraitEnvironment];
    v54 = v85;
    sub_10075FDCC();
    swift_unknownObjectRelease();
    sub_10076DCFC();
    v56 = v87;
    v55 = v88;
    (*(v87 + 8))(v54, v88);
    (*(v84 + 8))(v52, v86);
    sub_10076DA5C();
    sub_10076DABC();
    v85 = sub_10076DDDC();
    swift_allocObject();
    v86 = sub_10076DD9C();
    v57 = v92;
    if (qword_100940C60 != -1)
    {
      swift_once();
    }

    v58 = sub_10000A61C(v55, qword_1009A1318);
    v59 = v89;
    (*(v56 + 16))(v89, v58, v55);
    v61 = v90;
    v60 = v91;
    (*(v90 + 104))(v59, enum case for FontSource.useCase(_:), v91);
    v62 = sub_10076D18C();
    (*(v61 + 8))(v59, v60);
    v111._object = 0x80000001007E0020;
    v111._countAndFlagsBits = 0xD000000000000012;
    v113._countAndFlagsBits = 0;
    v113._object = 0xE000000000000000;
    sub_100767D6C(v111, 5, v113);
    sub_10076D7EC();
    sub_10076D7DC();
    v63 = v94;
    v64 = v93[1];
    v64(v57, v94);
    sub_10076DA5C();
    sub_10076DA8C();
    v65 = sub_10076C08C();
    v112._countAndFlagsBits = 0xD000000000000013;
    v112._object = 0x80000001007D1550;
    v114._countAndFlagsBits = 0;
    v114._object = 0xE000000000000000;
    sub_100767D6C(v112, v65, v114);
    sub_10076D7EC();
    v93 = v62;
    sub_10076D7DC();
    v64(v57, v63);
    sub_10076DA5C();
    sub_10076DA8C();
    swift_allocObject();
    v94 = sub_10076DD9C();
    v66 = v95;
    if (qword_10093FF50 != -1)
    {
      swift_once();
    }

    sub_100083890(&xmmword_10099E7A8, v105);
    v67 = v81;
    v106[3] = v81;
    v106[4] = &protocol witness table for LabelPlaceholder;
    v68 = sub_10000DB7C(v106);
    v69 = *(v66 + 16);
    v69(v68, v101, v67);
    v104 = v86;
    sub_10076D2DC();
    v107[3] = v67;
    v107[4] = &protocol witness table for LabelPlaceholder;
    v70 = sub_10000DB7C(v107);
    v69(v70, v100, v67);
    v108[3] = v67;
    v108[4] = &protocol witness table for LabelPlaceholder;
    v71 = sub_10000DB7C(v108);
    v72 = v82;
    v69(v71, v82, v67);
    v103 = v94;
    sub_10076D2DC();
    v109 = v96 & 1;
    v73 = [v102 traitCollection];
    v74 = v97;
    sub_100082D78();
    v75 = v99;
    sub_10076E0FC();
    v37 = v76;

    (*(v98 + 8))(v74, v75);
    sub_1005B7740(v105);
    v77 = *(v66 + 8);
    v77(v72, v67);
    v77(v100, v67);
    v77(v101, v67);
  }

  return v37;
}

double sub_1005B7794()
{
  v0 = sub_10076B6EC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v21 - v5;
  v7 = sub_10076C38C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076C0CC();
  sub_1005B7A9C(&qword_10094F090, &type metadata accessor for Ratings, &protocol conformance descriptor for ProductRatingsAndReviewsComponent);
  sub_10076332C();
  if (!v22)
  {
    return 0.0;
  }

  v21 = v22;
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C2FC();
  v12 = v11;
  v14 = v13;
  (*(v8 + 8))(v10, v7);
  v15 = sub_100630CB4();
  swift_getKeyPath();
  sub_10076338C();

  sub_10076B68C();
  sub_1005B7A9C(&unk_100946780, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  v16 = sub_10077124C();
  v17 = *(v1 + 8);
  v17(v3, v0);
  v17(v6, v0);
  sub_1005B6C20(v21, v15, v16 & 1, v12, v14);
  v19 = v18;
  swift_unknownObjectRelease();

  return v19;
}

uint64_t sub_1005B7A9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1005B7AE4(char *a1)
{
  v2 = v1;
  v4 = sub_10075E57C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v16[-v9];
  sub_10075FC9C();
  sub_10075FCAC();
  sub_10075FC9C();
  sub_10075FCAC();
  v11 = OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_theme;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, &a1[v11], v4);
  v13 = OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_theme;
  swift_beginAccess();
  (*(v5 + 24))(&v2[v13], v10, v4);
  swift_endAccess();
  v12(v7, &v2[v13], v4);
  sub_1005B84F8(v7);
  v14 = *(v5 + 8);
  v14(v7, v4);
  v14(v10, v4);
  v15 = [a1 backgroundColor];
  [v2 setBackgroundColor:v15];
}

void sub_1005B7D14()
{
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v0 = [objc_opt_self() whiteColor];
  v1.super.isa = [objc_allocWithZone(UIColor) initWithRed:0.109803922 green:0.109803922 blue:0.117647059 alpha:1.0];
  v2.super.isa = v0;
  qword_10095E9D0 = sub_100770DEC(v2, v1).super.isa;
}

char *sub_1005B7DD4(uint64_t a1, int a2)
{
  v3 = v2;
  v52 = a2;
  ObjectType = swift_getObjectType();
  v6 = sub_10000A5D4(&qword_1009473D0, &qword_10078B140);
  __chkstk_darwin(v6 - 8);
  v60 = &v51[-v7];
  v8 = sub_10076BF6C();
  v55 = *(v8 - 8);
  v56 = v8;
  __chkstk_darwin(v8);
  v54 = &v51[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_10075E57C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v51[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v2[OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_smallCornerRadius] = 0x4010000000000000;
  v14 = OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkContainingView;
  *&v3[v14] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v15 = OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkView;
  v16 = sub_10075FD2C();
  *&v3[v15] = sub_10075FB5C();
  (*(v11 + 104))(&v3[OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_theme], enum case for InAppPurchaseTheme.infer(_:), v10);
  v57 = a2;
  v3[OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_iconType] = a2;
  v17 = OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_metrics;
  v18 = sub_10075E77C();
  v58 = *(v18 - 8);
  v59 = v18;
  (*(v58 + 16))(&v3[v17], a1);
  v61 = a1;
  sub_10075E75C();
  v20 = v19;
  v21 = type metadata accessor for PlusView();
  v22 = objc_allocWithZone(v21);
  *&v22[OBJC_IVAR____TtC20ProductPageExtension8PlusView_plusColor] = 0;
  *&v22[OBJC_IVAR____TtC20ProductPageExtension8PlusView_lineThickness] = v20;
  v63.receiver = v22;
  v63.super_class = v21;
  v23 = objc_msgSendSuper2(&v63, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v24 = objc_opt_self();
  v25 = v23;
  v26 = [v24 clearColor];
  [v25 setBackgroundColor:v26];

  *&v3[OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_plusView] = v25;
  v27 = [objc_allocWithZone(v16) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v3[OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_tileIconArtworkView] = v27;
  if (v52 == 2)
  {
    v28 = [objc_allocWithZone(type metadata accessor for InAppBlendedBackgroundView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v28 setClipsToBounds:1];
  }

  else
  {
    v28 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  }

  *&v3[OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_backgroundView] = v28;
  v62.receiver = v3;
  v62.super_class = ObjectType;
  v29 = objc_msgSendSuper2(&v62, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v33 = v29;
  [v33 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v34 = v61;
  if (sub_10075E71C())
  {
    v35 = 8.0;
  }

  else
  {
    v35 = 4.0;
  }

  ObjectType = OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_backgroundView;
  [*&v33[OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_backgroundView] _setCornerRadius:v35];
  v36 = OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkContainingView;
  [*&v33[OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkContainingView] _setCornerRadius:v35];
  [*&v33[v36] setClipsToBounds:1];
  v37 = OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_theme;
  swift_beginAccess();
  (*(v11 + 16))(v13, &v33[v37], v10);
  sub_1005B84F8(v13);
  (*(v11 + 8))(v13, v10);
  v38 = OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkView;
  v39 = *&v33[OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkView];
  (*(v55 + 104))(v54, enum case for Artwork.Style.iap(_:), v56);
  v40 = v39;
  sub_10075FCCC();

  v41 = OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_tileIconArtworkView;
  [*&v33[OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_tileIconArtworkView] setHidden:v57 != 1];
  v42 = OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_plusView;
  v43 = *&v33[OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_plusView];
  [v43 setHidden:(sub_10075E74C() & 1) == 0];

  v44 = qword_10093F870;
  v45 = *&v33[v41];
  if (v44 != -1)
  {
    swift_once();
  }

  v46 = sub_10076BCFC();
  v47 = sub_10000A61C(v46, qword_10099D3F0);
  v48 = *(v46 - 8);
  v49 = v60;
  (*(v48 + 16))(v60, v47, v46);
  (*(v48 + 56))(v49, 0, 1, v46);
  sub_10075FCDC();

  [v33 addSubview:*(ObjectType + v33)];
  [v33 addSubview:*&v33[v36]];
  [*&v33[v36] addSubview:*&v33[v38]];
  [v33 insertSubview:*&v33[v42] aboveSubview:*&v33[v36]];
  [v33 addSubview:*&v33[v41]];

  (*(v58 + 8))(v34, v59);
  return v33;
}