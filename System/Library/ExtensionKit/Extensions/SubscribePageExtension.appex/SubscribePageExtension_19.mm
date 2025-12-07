double sub_1002159BC(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  swift_weakAssign();
  if (swift_weakLoadStrong())
  {
    sub_10074B544();
    swift_allocObject();

    v3 = sub_10074B554();

    *(v2 + OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_impressionsScrollObserver) = v3;
  }

  return result;
}

uint64_t (*sub_100215A78(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_100215B10;
}

void sub_100215B10(void **a1, char a2, __n128 a3)
{
  v4 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    if (swift_weakLoadStrong())
    {
      v5 = v4[4];
      sub_10074B544();
      swift_allocObject();
      *(v5 + OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_impressionsScrollObserver) = sub_10074B554();
    }
  }

  free(v4);
}

uint64_t sub_100215BE4()
{
  v0 = sub_100743B04();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.appstore(_:), v0, v2);
  v5 = sub_100743AE4();
  result = (*(v1 + 8))(v4, v0);
  qword_10092E130 = v5;
  return result;
}

void sub_100215CF0()
{
  qword_10092E168 = &type metadata for CGFloat;
  unk_10092E170 = &protocol witness table for CGFloat;
  qword_10092E150 = 0x4008000000000000;
}

id sub_100215D2C(uint64_t a1, uint64_t *a2, id *a3)
{
  v5 = sub_100750534();
  sub_100039C50(v5, a2);
  v6 = sub_10000D0FC(v5, a2);
  v8 = *a3;
  *v6 = *a3;
  *(v6 + 8) = UIFontWeightSemibold;
  (*(*(v5 - 8) + 104))();

  return v8;
}

uint64_t sub_100215DE8()
{
  v0 = sub_100750534();
  sub_100039C50(v0, qword_10092E190);
  v1 = sub_10000D0FC(v0, qword_10092E190);
  if (qword_100920EA0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D0FC(v0, qword_100980930);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100215EB0()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &type metadata for CGFloat;
  v15 = &protocol witness table for CGFloat;
  *&v13 = 0x4010000000000000;
  if (qword_100920620 != -1)
  {
    swift_once();
  }

  v4 = sub_100750534();
  v5 = sub_10000D0FC(v4, qword_10092E190);
  (*(*(v4 - 8) + 16))(v3, v5, v4);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v11 = sub_100750B04();
  v12 = &protocol witness table for StaticDimension;
  sub_10000D134(&v10);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v6 = sub_10000D134(v9);
  (*(v1 + 16))(v6, v3, v0);
  sub_100750B14();
  (*(v1 + 8))(v3, v0);
  sub_100012160(&v13, &unk_10092E1A8);
  return sub_100012160(&v10, &unk_10092E1D0);
}

id sub_1002160D8(id result, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_listConfiguration];
  if (v2[OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_listConfiguration] == (result & 1) && *&v2[OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_listConfiguration + 8] == a2)
  {
    return result;
  }

  v5 = result;
  *v3 = result & 1;
  *(v3 + 1) = a2;
  v6 = OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_lockupCollectionView;
  result = *&v2[OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_lockupCollectionView];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = [result collectionViewLayout];
  [v7 invalidateLayout];

  result = *&v2[v6];
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  [result setScrollEnabled:(v5 & 1) == 0];

  return [v2 setNeedsLayout];
}

void sub_1002161B4()
{
  v1 = v0;
  v2 = sub_100750354();
  v68 = *(v2 - 8);
  v69 = v2;
  __chkstk_darwin(v2);
  v67 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_100750304();
  v60 = *(v62 - 8);
  __chkstk_darwin(v62);
  v59 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10074A014();
  v65 = *(v5 - 8);
  v66 = v5;
  __chkstk_darwin(v5);
  v63 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v64 = &v54 - v8;
  v9 = sub_1007479B4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v58 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v54 - v13;
  v15 = sub_100747064();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for LockupCollectionSearchResultContentView();
  v81.receiver = v0;
  v81.super_class = v19;
  objc_msgSendSuper2(&v81, "layoutSubviews");
  [v0 bounds];
  v61 = v20;
  [v0 layoutMargins];
  v70 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_listConfiguration + 8);
  if (qword_100920548 != -1)
  {
    swift_once();
  }

  v21 = sub_10000D0FC(v15, qword_10097E3A8);
  v22 = [v1 traitCollection];
  (*(v16 + 16))(v18, v21, v15);
  v23 = sub_100746FD4();
  if ((v25 & 1) == 0 && ((v23 | v24) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (sub_100753804())
    {
      if (qword_100921988 != -1)
      {
        swift_once();
      }

      v26 = qword_10093FF40;
    }

    else
    {
      if (qword_100921990 != -1)
      {
        swift_once();
      }

      v26 = qword_10093FF58;
    }

    v27 = sub_10000D0FC(v9, v26);
    v28 = v58;
    (*(v10 + 16))(v58, v27, v9);
    (*(v10 + 32))(v14, v28, v9);
    sub_100747964();
    sub_100747994();
    sub_100746FE4();
    (*(v10 + 8))(v14, v9);
  }

  sub_100746F14();

  (*(v16 + 8))(v18, v15);
  v29 = v70 - 1;
  if (__OFSUB__(v70, 1))
  {
    __break(1u);
LABEL_22:
    swift_once();
    goto LABEL_16;
  }

  v30 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_iconHeadingView);
  v80[3] = type metadata accessor for ImageHeadingView();
  v80[4] = &protocol witness table for UIView;
  v80[0] = v30;
  v31 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_titleHeadingView);
  v79[3] = type metadata accessor for SearchHeadingView();
  v79[4] = &protocol witness table for UIView;
  v79[0] = v31;
  v32 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_lockupCollectionView);
  if (!v32)
  {
    __break(1u);
    return;
  }

  v58 = v1;
  v77[0] = v32;
  sub_100016C60(0, &qword_100929830, UICollectionView_ptr);
  v33 = v30;
  v34 = v31;
  sub_1007503E4();
  v18 = v62;
  v29 = v59;
  v1 = v60;
  if (qword_100920608 != -1)
  {
    goto LABEL_22;
  }

LABEL_16:
  v35 = sub_100750534();
  v36 = sub_10000D0FC(v35, qword_10092E138);
  v37 = *(v35 - 8);
  v70 = *(v37 + 16);
  v57 = v37 + 16;
  v70(v29, v36, v35);
  v38 = v1[13];
  v56 = enum case for FontSource.useCase(_:);
  v55 = v38;
  v38(v29);
  v39 = sub_100750B04();
  v77[3] = v39;
  v77[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v77);
  v75 = v18;
  v76 = &protocol witness table for FontSource;
  v40 = sub_10000D134(v74);
  v41 = v1[2];
  v41(v40, v29, v18);
  sub_100750B14();
  v42 = v1[1];
  v42(v29, v18);
  if (qword_100920618 != -1)
  {
    swift_once();
  }

  v43 = sub_10000D0FC(v35, qword_10092E178);
  v70(v29, v43, v35);
  v55(v29, v56, v18);
  v75 = v39;
  v76 = &protocol witness table for StaticDimension;
  sub_10000D134(v74);
  v72 = v18;
  v73 = &protocol witness table for FontSource;
  v44 = sub_10000D134(v71);
  v41(v44, v29, v18);
  sub_100750B14();
  v42(v29, v18);
  v72 = &type metadata for CGFloat;
  v73 = &protocol witness table for CGFloat;
  v71[0] = 0x4030000000000000;
  v45 = v64;
  sub_10074A004();
  v47 = v65;
  v46 = v66;
  (*(v65 + 16))(v63, v45, v66);
  sub_10000C824(v80, v77);
  sub_10000C824(v79, v74);
  sub_10000C824(v78, v71);
  sub_10074A034();
  swift_allocObject();
  v77[0] = sub_10074A024();
  (*(v47 + 8))(v45, v46);
  sub_10000C620(v78);
  sub_10000C620(v79);
  sub_10000C620(v80);
  sub_10021ABB8(&qword_10092E2D8, 255, &type metadata accessor for SearchLockupListLayout, &protocol conformance descriptor for SearchLockupListLayout);
  v48 = v67;
  v49 = v58;
  sub_100751124();
  (*(v68 + 8))(v48, v69);
  v50 = &v49[OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_impressionsUpdateBlock];
  swift_beginAccess();
  v51 = *v50;
  if (*v50)
  {
    v52 = *(v50 + 1);

    v51(v53);
    sub_1000164A8(v51, v52);
  }
}

id sub_100216C14()
{
  ObjectType = swift_getObjectType();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = ObjectType;
  v3 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v7[4] = sub_10021A360;
  v7[5] = v2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1002B6430;
  v7[3] = &unk_10086D048;
  v4 = _Block_copy(v7);

  v5 = [v3 initWithSectionProvider:v4];
  _Block_release(v4);

  return v5;
}

id sub_100216D40(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v5 = Strong;
  v6 = Strong[OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_listConfiguration];
  v7 = *&Strong[OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_listConfiguration + 8];
  [Strong layoutMargins];
  v10 = sub_10021A380(v6, v7, a2, v8, v9);
  if (v10)
  {
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_10021A82C;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1005D5E28;
    aBlock[3] = &unk_10086D070;
    v12 = _Block_copy(aBlock);
    v13 = v10;

    [v13 setVisibleItemsInvalidationHandler:v12];

    _Block_release(v12);
    v5 = v13;
  }

  return v10;
}

void sub_100216EB0(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_impressionsScrollObserver);
    v7 = Strong;

    if (v6)
    {
      sub_10074B544();
      sub_100744F54();
    }
  }
}

uint64_t sub_1002171A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_10000C518(&qword_10092E2A8, &qword_1007B3098);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v65 - v7;
  v9 = sub_10074C814();
  sub_10021ABB8(&qword_100936A70, 255, &type metadata accessor for LockupCollectionSearchResult, &protocol conformance descriptor for SearchResult);
  result = sub_1007468B4();
  v11 = v69;
  if (!v69)
  {
    return result;
  }

  v65[1] = v9;
  v66 = v8;
  v67 = v6;
  v68 = v5;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_objectGraph] = a2;

  v12 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_iconHeadingView];
  sub_10074C804();
  v13 = *(v12 + OBJC_IVAR____TtC22SubscribePageExtension16ImageHeadingView_headingLabel);
  v14 = sub_100753064();

  [v13 setText:v14];

  v15 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_titleHeadingView];
  sub_10074C7F4();
  v16 = *(v15 + OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_headingLabel);
  v17 = sub_100753064();

  [v16 setText:v17];

  v18 = sub_10074C7C4();
  if (v18)
  {
    v19 = v18;
    sub_10074ECB4();
    if (v20)
    {
      v21 = *(v15 + OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_detailButton);
      v22 = sub_100753064();

      [v21 setTitle:v22 forState:0];

      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      *(v24 + 24) = v19;
      v25 = (v15 + OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_detailButtonHandler);
      v26 = *(v15 + OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_detailButtonHandler);
      v27 = *(v15 + OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_detailButtonHandler + 8);
      *v25 = sub_10021A320;
      v25[1] = v24;

      sub_1000164A8(v26, v27);

      goto LABEL_7;
    }
  }

  [*(v15 + OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_detailButton) setTitle:0 forState:0];
  v28 = (v15 + OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_detailButtonHandler);
  v29 = *(v15 + OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_detailButtonHandler);
  v30 = *(v15 + OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_detailButtonHandler + 8);
  *v28 = 0;
  v28[1] = 0;
  sub_1000164A8(v29, v30);
LABEL_7:
  swift_getKeyPath();
  sub_100746914();

  v31 = v69;
  v32 = sub_100753804();
  v33 = sub_1007537D4();

  v34 = 4;
  if (v33)
  {
    v34 = 2;
  }

  if (v32)
  {
    v35 = 1;
  }

  else
  {
    v35 = v34;
  }

  result = sub_1002160D8(((v33 & 1) == 0), v35);
  v36 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_lockupCollectionView];
  if (!v36)
  {
    __break(1u);
    goto LABEL_57;
  }

  swift_allocObject();
  swift_weakInit();
  v37 = objc_allocWithZone(sub_10000C518(&unk_10092E2B0, &unk_1007B30A0));
  v38 = v36;
  v39 = sub_100751884();
  v40 = OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_lockupDataSource;
  v41 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_lockupDataSource];
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_lockupDataSource] = v39;
  v42 = v39;

  v43 = swift_allocObject();
  *(v43 + 16) = (v33 & 1) == 0;
  *(v43 + 24) = v35;
  sub_100751894();

  if ((v33 & 1) == 0)
  {
    v46 = v11;
    v47 = sub_10074C7E4();
    v48 = v47;
    v49 = v47 & 0xFFFFFFFFFFFFFF8;
    v50 = v47 >> 62;
    if (!(v47 >> 62))
    {
      v51 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v51 >= v35)
      {
        v52 = v35;
      }

      else
      {
        v52 = *(v49 + 16);
      }

      if (v51 >= v52)
      {
LABEL_20:
        if ((v48 & 0xC000000000000001) != 0 && v52)
        {
          sub_10074EFD4();

          v53 = 0;
          do
          {
            v54 = v53 + 1;
            sub_100754554(v53);
            v53 = v54;
          }

          while (v52 != v54);
        }

        else
        {
        }

        if (v50)
        {
          v46 = sub_100754674();
          v33 = v55;
          v35 = v56;
          v52 = v57;

          if (v52)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v35 = 0;
          v46 = v48 & 0xFFFFFFFFFFFFFF8;
          v33 = (v48 & 0xFFFFFFFFFFFFFF8) + 32;
          v52 = (2 * v52) | 1;
          if (v52)
          {
LABEL_31:
            sub_100754774();
            swift_unknownObjectRetain_n();
            v58 = swift_dynamicCastClass();
            if (!v58)
            {
              swift_unknownObjectRelease();
              v58 = _swiftEmptyArrayStorage;
            }

            v59 = v58[2];

            if (!__OFSUB__(v52 >> 1, v35))
            {
              if (v59 == (v52 >> 1) - v35)
              {
                v60 = swift_dynamicCastClass();
                swift_unknownObjectRelease_n();
                v45 = v66;
                if (v60)
                {
LABEL_37:

                  v44 = sub_10074C7D4();
                  goto LABEL_38;
                }

LABEL_36:
                swift_unknownObjectRelease();
                goto LABEL_37;
              }

              goto LABEL_55;
            }

LABEL_54:
            __break(1u);
LABEL_55:
            swift_unknownObjectRelease_n();
          }
        }

        sub_1006314BC(v46, v33, v35, v52);
        v45 = v66;
        goto LABEL_36;
      }

LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    if (v47 < 0)
    {
      v46 = v47;
    }

    else
    {
      v46 = v47 & 0xFFFFFFFFFFFFFF8;
    }

    v33 = sub_100754664();
    result = sub_100754664();
    if ((result & 0x8000000000000000) == 0)
    {
      if (v33 >= v35)
      {
        v64 = v35;
      }

      else
      {
        v64 = v33;
      }

      if (v33 >= 0)
      {
        v52 = v64;
      }

      else
      {
        v52 = v35;
      }

      if (sub_100754664() >= v52)
      {
        goto LABEL_20;
      }

      goto LABEL_53;
    }

LABEL_57:
    __break(1u);
    return result;
  }

  v44 = v11;
  v45 = v66;
LABEL_38:
  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1007A5CF0;
  *(v61 + 32) = v44;
  swift_getKeyPath();
  sub_10021ABB8(&qword_10092E2C0, 255, &type metadata accessor for LockupCollectionSearchResult, &protocol conformance descriptor for SearchResult);
  sub_10021ABB8(&unk_10092E2C8, 255, &type metadata accessor for Lockup, &protocol conformance descriptor for Lockup);

  sub_1007505D4();

  v62 = *&v3[v40];
  if (v62)
  {
    v63 = v62;
    sub_1007518C4();
  }

  [v3 setNeedsLayout];

  return (*(v67 + 8))(v45, v68);
}

void sub_100217928(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_objectGraph);
    v8 = Strong;

    if (v7)
    {
      v9 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
      sub_1007526C4();
      v10 = *(v9 - 8);
      if ((*(v10 + 48))(v5, 1, v9) == 1)
      {

        sub_10000C8CC(v5, &unk_100923960, &qword_1007A6240);
      }

      else
      {
        sub_1003C0E00(a2, 1, v7, v5);

        (*(v10 + 8))(v5, v9);
      }
    }
  }
}

char *sub_100217AC8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10074F314();
  __chkstk_darwin(v5 - 8);
  v7 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&unk_100925520, &unk_1007A8120);
  __chkstk_darwin(v8 - 8);
  v10 = v44 - v9;
  v11 = sub_10000C518(&unk_100925990, qword_1007BB900);
  __chkstk_darwin(v11 - 8);
  v13 = v44 - v12;
  v14 = sub_10000C518(&unk_1009259A0, &unk_1007B0610);
  __chkstk_darwin(v14 - 8);
  v16 = v44 - v15;
  v17 = sub_10000C518(&unk_100925540, &qword_1007A8140);
  __chkstk_darwin(v17 - 8);
  v19 = v44 - v18;
  v20 = sub_10000C518(&unk_100925530, &unk_1007A8130);
  __chkstk_darwin(v20 - 8);
  v46 = v44 - v21;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v44[3] = v7;
  v45 = v13;
  v23 = Strong;
  type metadata accessor for SmallSearchLockupCollectionViewCell();
  sub_1007539D4();
  v24 = sub_100753064();

  isa = sub_100741704().super.isa;
  v26 = [a1 dequeueReusableCellWithReuseIdentifier:v24 forIndexPath:isa];

  v27 = swift_dynamicCastClass();
  if (v27)
  {
    sub_10000C518(&qword_100937CD0, &qword_1007B3030);
    sub_100752564();
    v28 = v47;
    sub_1007442C4();
    sub_100752764();
    v29 = v23;
    sub_100752D34();
    v44[2] = v47;
    v30 = sub_100742E24();
    v31 = v46;
    (*(*(v30 - 8) + 56))(v46, 1, 1, v30);
    v32 = *&v27[OBJC_IVAR____TtC22SubscribePageExtension35SmallSearchLockupCollectionViewCell_lockupView];
    v33 = sub_10000C518(&unk_10092EEA0, qword_1007A8150);
    (*(*(v33 - 8) + 56))(v19, 1, 1, v33);
    v34 = sub_100745E94();
    (*(*(v34 - 8) + 56))(v16, 1, 1, v34);
    v35 = sub_10000C518(&unk_100925560, &unk_1007A8E30);
    v36 = v45;
    (*(*(v35 - 8) + 56))(v45, 1, 1, v35);
    v37 = sub_10074F8B4();
    (*(*(v37 - 8) + 56))(v10, 1, 1, v37);
    sub_100656038(v28, v32, v19, v29, 0, 0, v31, v16, v10, v36);
    sub_10000C8CC(v10, &unk_100925520, &unk_1007A8120);
    v32[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1001CE71C();
    [v32 setNeedsLayout];
    sub_10000C8CC(v36, &unk_100925990, qword_1007BB900);
    sub_10000C8CC(v16, &unk_1009259A0, &unk_1007B0610);
    sub_10000C8CC(v19, &unk_100925540, &qword_1007A8140);
    v38 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
    v39 = *&v32[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView];
    sub_100743344();
    v40 = sub_1007433C4();
    sub_10021ABB8(&qword_100925570, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v44[1] = v40;
    sub_100744274();
    v45 = v28;
    if (sub_10074EF24())
    {
      v44[0] = v38;
      if (qword_100920548 != -1)
      {
        swift_once();
      }

      v41 = sub_100747064();
      sub_10000D0FC(v41, qword_10097E3A8);
      sub_100746F34();
      [v39 contentMode];
      sub_10074F374();
      sub_10074F324();
      sub_100743364();
      [v39 setContentMode:sub_10074F184()];
      sub_100747FB4();
      sub_1007433A4();
      if (!sub_10074F1E4())
      {
        sub_100016C60(0, &qword_100923500, UIColor_ptr);
        sub_100753E34();
      }

      sub_100743224();
      v42 = *&v32[v44[0]];
      sub_100744204();
    }

    [v27 setNeedsLayout];

    sub_10000C8CC(v46, &unk_100925530, &unk_1007A8130);
  }

  else
  {
  }

  return v27;
}

void *sub_100218240(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_100753064();
  type metadata accessor for SeparatorSpacerReusableView();
  sub_1007539D4();
  v9 = sub_100753064();

  isa = sub_100741704().super.isa;
  v11 = [a1 dequeueReusableSupplementaryViewOfKind:v8 withReuseIdentifier:v9 forIndexPath:isa];

  v12 = swift_dynamicCastClass();
  v13 = v12;
  if (!v12)
  {

    return v13;
  }

  v14 = v12 + OBJC_IVAR____TtC22SubscribePageExtension27SeparatorSpacerReusableView_separatorInsets;
  *v14 = xmmword_1007B2E60;
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  result = sub_100741774();
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (!a6)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (result != 0x7FFFFFFFFFFFFFFFLL || a6 != -1)
  {
    [v13 setHidden:(result + 1) % a6 == 0];
    return v13;
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_10021838C(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v2 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v2 - 8);
  v4 = &v37 - v3;
  v5 = sub_100752914();
  v47 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&unk_10092E290, &qword_1007C08F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v37 - v9;
  v11 = sub_10000C518(&qword_100937CD0, &qword_1007B3030);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v37 - v13;
  v15 = sub_1007417F4();
  v55 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v50 = v14;
  v48 = v11;
  v57 = Strong;
  v46 = OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_lockupCollectionView;
  v19 = *&Strong[OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_lockupCollectionView];
  if (!v19)
  {
    goto LABEL_25;
  }

  v20 = [v19 indexPathsForVisibleItems];
  v21 = sub_1007532A4();

  v56 = v21;
  v22 = v48;
  v54 = *(v21 + 16);
  if (!v54)
  {
LABEL_21:

    return;
  }

  v23 = 0;
  v52 = v56 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
  v53 = OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_lockupDataSource;
  v51 = v55 + 16;
  v49 = (v12 + 48);
  v45 = (v12 + 32);
  v42 = (v47 + 6);
  v39 = (v47 + 4);
  v38 = (v47 + 1);
  v43 = (v12 + 8);
  v24 = (v55 + 8);
  v47 = (v12 + 56);
  v40 = v7;
  v44 = v10;
  while (v23 < *(v56 + 16))
  {
    (*(v55 + 16))(v17, v52 + *(v55 + 72) * v23, v15);
    v25 = *&v57[v53];
    if (!v25)
    {
      (*v24)(v17, v15);
      (*v47)(v10, 1, 1, v22);
LABEL_6:
      sub_10000C8CC(v10, &unk_10092E290, &qword_1007C08F0);
      goto LABEL_7;
    }

    v26 = v25;
    sub_1007518A4();

    if ((*v49)(v10, 1, v22) == 1)
    {
      (*v24)(v17, v15);
      goto LABEL_6;
    }

    v27 = v10;
    v28 = v15;
    v29 = v4;
    (*v45)(v50, v27, v22);
    v30 = *&v57[v46];
    if (!v30)
    {
      goto LABEL_24;
    }

    v31 = v30;
    isa = sub_100741704().super.isa;
    v33 = [v31 cellForItemAtIndexPath:isa];

    if (v33)
    {
      swift_getKeyPath();
      v4 = v29;
      v34 = v48;
      v35 = v50;
      sub_100752554();

      if ((*v42)(v4, 1, v5) == 1)
      {

        (*v43)(v35, v34);
        (*v24)(v17, v28);
        sub_10000C8CC(v4, &unk_100925380, qword_1007A8E40);
        v22 = v34;
        v15 = v28;
      }

      else
      {
        v36 = v40;
        (*v39)(v40, v4, v5);
        sub_100016C60(0, &qword_100925390, UICollectionViewCell_ptr);
        sub_100753A94();
        if ((v58 & 1) == 0)
        {
          sub_100749544();
        }

        (*v38)(v36, v5);
        v22 = v48;
        (*v43)(v50, v48);
        v15 = v28;
        (*v24)(v17, v28);
      }
    }

    else
    {
      v22 = v48;
      (*v43)(v50, v48);
      (*v24)(v17, v28);
      v4 = v29;
      v15 = v28;
    }

    v10 = v44;
LABEL_7:
    if (v54 == ++v23)
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

id sub_100218A88(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LockupCollectionSearchResultContentView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t getEnumTagSinglePayload for LockupCollectionSearchResultContentView.ListConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for LockupCollectionSearchResultContentView.ListConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void (*sub_100218C84(uint64_t **a1))(void *a1)
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
  v2[4] = sub_100215A78(v2);
  return sub_100018728;
}

uint64_t sub_100218CF4()
{
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001B5AC(*v1, v1[1]);
  return v2;
}

double sub_100218D50(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1000164A8(v6, v7);
}

void (*sub_100218E10(uint64_t a1, uint64_t a2))()
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a2;

  return sub_100218FA8;
}

uint64_t sub_100218EE8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_10021ABB8(&qword_10092E278, a2, type metadata accessor for LockupCollectionSearchResultContentView, &unk_1007B2F48);
  result = sub_10021ABB8(&unk_10092E280, v3, type metadata accessor for LockupCollectionSearchResultContentView, &unk_1007B2F78);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100218F6C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_100218FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), unsigned int a7, void (*a8)(char *, uint64_t, uint64_t), double a9, double a10, double a11, double a12, double a13, double a14, void *a15, uint64_t a16)
{
  v94 = a8;
  v93 = a7;
  v90 = a5;
  v91 = a6;
  v87 = a3;
  v88 = a4;
  v104 = a2;
  v86 = a1;
  v96 = sub_100750304();
  v92 = *(v96 - 8);
  __chkstk_darwin(v96);
  v95 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10074A014();
  v99 = *(v17 - 8);
  v100 = v17;
  __chkstk_darwin(v17);
  v97 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v98 = &v77 - v20;
  v103 = sub_10074CD14();
  v105 = *(v103 - 8);
  __chkstk_darwin(v103);
  v22 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for ImageHeadingView();
  if (qword_100920600 != -1)
  {
    swift_once();
  }

  v23 = qword_10092E130;
  if (qword_100920608 != -1)
  {
    swift_once();
  }

  v24 = sub_100750534();
  v25 = sub_10000D0FC(v24, qword_10092E138);
  if (qword_100920610 != -1)
  {
    swift_once();
  }

  v26 = sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
  v27 = [a15 traitCollection];
  v102 = v26;
  v28 = sub_100753C14();

  v29 = objc_opt_self();
  v84 = v28;
  v81 = [v29 configurationWithFont:v28];
  v30 = [v23 imageByApplyingSymbolConfiguration:?];
  v31 = v30;
  v101 = v24;
  if (v30)
  {
    [v30 size];
  }

  v32 = sub_100750F34();
  swift_allocObject();
  v33 = sub_100750F14();

  v34 = [a15 traitCollection];
  v89 = v25;
  sub_100753C14();

  v35 = sub_10074F3F4();
  *(&v115 + 1) = v35;
  v83 = sub_10021ABB8(&qword_10092AC70, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  *&v116 = v83;
  v36 = sub_10000D134(&v114);
  v37 = *(v35 - 8);
  v38 = *(v37 + 104);
  v82 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v79 = v37 + 104;
  v80 = v38;
  v38(v36);
  sub_10074FC74();
  sub_10000C620(&v114);
  sub_10074CD04();
  v39 = sub_10074CCF4();
  v41 = v40;
  v42 = *(v105 + 8);
  v105 += 8;
  v78 = v42;
  v42(v22, v103);
  v43 = *(v41 + 8);

  swift_unknownObjectRetain();
  sub_100380868(v33, &protocol witness table for LayoutViewPlaceholder, v39, v43, qword_10092E150, &v114);

  swift_unknownObjectRelease();
  sub_1001A41D4(&v114, &v119);
  v44 = swift_allocObject();
  sub_100219FC4(&v119, (v44 + 16));
  swift_allocObject();
  v104 = sub_100750EF4();

  swift_unknownObjectRelease();

  sub_10000C620(&v114);
  if (qword_100920618 != -1)
  {
    swift_once();
  }

  v45 = v101;
  v46 = sub_10000D0FC(v101, qword_10092E178);
  if (qword_100920620 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v45, qword_10092E190);
  if (qword_100920628 != -1)
  {
    swift_once();
  }

  v47 = [a15 traitCollection];
  v86 = v46;
  sub_100753C14();

  *(&v115 + 1) = v35;
  *&v116 = v83;
  v48 = sub_10000D134(&v114);
  v80(v48, v82, v35);
  sub_10074FC74();
  sub_10000C620(&v114);
  sub_10074CD04();
  v49 = sub_10074CCF4();
  v51 = v50;
  v78(v22, v103);
  v52 = swift_allocObject();
  v53 = v91;
  *(v52 + 16) = v90;
  *(v52 + 24) = v53;
  swift_allocObject();

  v54 = sub_100750EF4();
  sub_1001BD96C(&unk_10092E1A8, &v114);
  v55 = swift_allocObject();
  v56 = v117;
  *(v55 + 48) = v116;
  *(v55 + 64) = v56;
  *(v55 + 80) = v118;
  v57 = v115;
  *(v55 + 16) = v114;
  *(v55 + 32) = v57;
  *(v55 + 96) = v49;
  *(v55 + 104) = v51;
  *(v55 + 112) = v54;
  swift_allocObject();
  v58 = sub_100750EF4();
  v59 = swift_allocObject();
  *(v59 + 16) = a16;
  *(v59 + 24) = v93 & 1;
  *(v59 + 32) = v94;
  swift_allocObject();
  v105 = sub_100750EF4();
  *(&v115 + 1) = v32;
  *&v116 = &protocol witness table for LayoutViewPlaceholder;
  v113[4] = &protocol witness table for LayoutViewPlaceholder;
  *&v114 = v104;
  v120 = v32;
  v121 = &protocol witness table for LayoutViewPlaceholder;
  *&v119 = v58;
  v103 = v58;
  v113[3] = v32;
  v113[0] = v105;
  v60 = *(v45 - 8);
  v94 = *(v60 + 16);
  v102 = v60 + 16;
  v61 = v45;
  v62 = v95;
  v94(v95, v89, v61);
  v93 = enum case for FontSource.useCase(_:);
  v63 = v92;
  v91 = *(v92 + 104);
  v64 = v96;
  v91(v62);
  v65 = sub_100750B04();
  v112[3] = v65;
  v112[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v112);
  v110 = v64;
  v111 = &protocol witness table for FontSource;
  v66 = sub_10000D134(v109);
  v67 = *(v63 + 16);
  v67(v66, v62, v64);

  sub_100750B14();
  v68 = *(v63 + 8);
  v68(v62, v64);
  v94(v62, v86, v101);
  (v91)(v62, v93, v64);
  v110 = v65;
  v111 = &protocol witness table for StaticDimension;
  sub_10000D134(v109);
  v107 = v64;
  v108 = &protocol witness table for FontSource;
  v69 = sub_10000D134(v106);
  v67(v69, v62, v64);
  sub_100750B14();
  v68(v62, v64);
  v107 = &type metadata for CGFloat;
  v108 = &protocol witness table for CGFloat;
  v106[0] = 0x4030000000000000;
  v70 = v98;
  sub_10074A004();
  v72 = v99;
  v71 = v100;
  (*(v99 + 16))(v97, v70, v100);
  sub_10000C824(&v114, v112);
  sub_10000C824(&v119, v109);
  sub_10000C824(v113, v106);
  sub_10074A034();
  swift_allocObject();
  v73 = sub_10074A024();
  (*(v72 + 8))(v70, v71);
  sub_10000C620(v113);
  sub_10000C620(&v119);
  sub_10000C620(&v114);
  *&v114 = v73;
  sub_10021ABB8(&qword_10092E2A0, 255, &type metadata accessor for SearchLockupListLayout, &protocol conformance descriptor for SearchLockupListLayout);
  sub_100750404();
  v75 = v74;

  return v75;
}

double sub_100219C40()
{
  v1 = sub_100747C14();
  __chkstk_darwin(v1 - 8);
  v2 = sub_10074F704();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074C814();
  sub_10021ABB8(&qword_100936A70, 255, &type metadata accessor for LockupCollectionSearchResult, &protocol conformance descriptor for SearchResult);
  sub_1007468B4();
  if (!v32)
  {
    return 0.0;
  }

  v30 = v3;
  v31 = v2;
  sub_100746884();
  if (qword_100920C20 != -1)
  {
    swift_once();
  }

  v29 = v0;

  sub_10074F6A4();
  swift_getKeyPath();
  sub_100746914();

  v6 = v32;
  v7 = sub_100753804();
  v8 = sub_1007537D4();

  v9 = 4;
  if (v8)
  {
    v9 = 2;
  }

  if (v7)
  {
    v9 = 1;
  }

  v28 = v9;
  HIDWORD(v27) = v8 ^ 1;
  v10 = sub_10074C804();
  v12 = v11;
  v13 = sub_10074C7F4();
  v15 = v14;
  if (sub_10074C7C4())
  {
    v16 = sub_10074ECB4();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  sub_10074F674();
  v21 = v20;
  v23 = v22;
  v24 = sub_10007DC04();
  swift_getObjectType();
  sub_100218FD4(v10, v12, v13, v15, v16, v18, BYTE4(v27) & 1, v28, v21, v23, UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right, v24, v29);
  v19 = v25;
  swift_unknownObjectRelease();

  (*(v30 + 8))(v5, v31);
  return v19;
}

uint64_t sub_100219F8C()
{
  sub_10000C620((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

_OWORD *sub_100219FC4(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_100219FE4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10021A024()
{
  sub_10000C620((v0 + 16));
  sub_10000C620((v0 + 56));
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 120, 7);
}

void sub_10021A094(void *a1, double a2, double a3)
{
  v7 = *(v3 + 32);
  swift_getObjectType();
  sub_10021A1E0(v7, a1, a2, a3);
}

void sub_10021A0FC()
{
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_objectGraph) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_lockupDataSource) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_lockupCollectionView) = 0;
  swift_weakInit();
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_impressionsUpdateBlock);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_impressionsScrollObserver) = 0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_compoundScrollObserver;
  v3 = objc_allocWithZone(sub_100749AF4());
  *(v0 + v2) = sub_100749AE4();
  sub_100754644();
  __break(1u);
}

void sub_10021A1E0(uint64_t a1, void *a2, double a3, double a4)
{
  type metadata accessor for SmallLockupView(0);
  if (qword_100920548 != -1)
  {
    swift_once();
  }

  v8 = sub_100747064();
  v9 = sub_10000D0FC(v8, qword_10097E3A8);
  sub_1001CF184(v9, a2, a3, a4);
  if (__OFSUB__(a1, 1))
  {
    __break(1u);
  }
}

uint64_t sub_10021A2C0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10021A328()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_10021A368(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_10021A380(char a1, uint64_t a2, void *a3, double a4, double a5)
{
  v8 = [objc_opt_self() layoutAnchorWithEdges:4 absoluteOffset:{0.0, 16.0}];
  v9 = objc_opt_self();
  v10 = 1.0;
  v11 = [v9 fractionalWidthDimension:1.0];
  v12 = [v9 absoluteDimension:16.0];
  v13 = objc_opt_self();
  v14 = [v13 sizeWithWidthDimension:v11 heightDimension:v12];

  type metadata accessor for SeparatorSpacerReusableView();
  sub_1007539D4();
  v15 = v8;
  v16 = sub_100753064();

  v17 = [objc_opt_self() supplementaryItemWithLayoutSize:v14 elementKind:v16 containerAnchor:v15];

  v18 = [v9 fractionalWidthDimension:1.0];
  v41 = a2;
  v19 = [v9 fractionalHeightDimension:1.0 / a2];
  v20 = [v13 sizeWithWidthDimension:v18 heightDimension:v19];

  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1007A5CF0;
  *(v21 + 32) = v17;
  sub_100016C60(0, &unk_10092E470, NSCollectionLayoutSupplementaryItem_ptr);
  v22 = v17;
  isa = sub_100753294().super.isa;

  v24 = [objc_opt_self() itemWithLayoutSize:v20 supplementaryItems:isa];

  [objc_msgSend(a3 "container")];
  v26 = v25;
  swift_unknownObjectRelease();
  if (v26 <= 0.0)
  {
    v29 = &selRef_estimatedDimension_;
  }

  else
  {
    [objc_msgSend(a3 "container")];
    v28 = v27;
    swift_unknownObjectRelease();
    v10 = v28 - a4 - a5;
    v29 = &selRef_absoluteDimension_;
  }

  v30 = [v9 *v29];
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v9 fractionalHeightDimension:1.0];
  v34 = [v13 sizeWithWidthDimension:v32 heightDimension:v33];

  v35 = [v31 verticalGroupWithLayoutSize:v34 subitem:v24 count:v41];
  v36 = [objc_opt_self() fixedSpacing:16.0];
  [v35 setInterItemSpacing:v36];

  v37 = [objc_opt_self() sectionWithGroup:v35];
  [v37 setInterGroupSpacing:8.0];
  [v37 setContentInsets:{0.0, a4, 0.0, a5}];
  if (a1)
  {
    v38 = 0;
  }

  else
  {
    v38 = 4;
  }

  [v37 setOrthogonalScrollingBehavior:v38];

  return v37;
}

void sub_10021A834(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_10000C518(&unk_10092E290, &qword_1007C08F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - v6;
  v8 = sub_10000C518(&qword_100937CD0, &qword_1007B3030);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v22 - v11;
  v13 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_objectGraph);
  if (v13)
  {
    v14 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension39LockupCollectionSearchResultContentView_lockupDataSource);
    if (v14)
    {

      v15 = v14;
      sub_1007518A4();

      if ((*(v9 + 48))(v7, 1, v8) != 1)
      {
        (*(v9 + 32))(v12, v7, v8);
        sub_100752564();
        v19 = sub_10074EDC4();

        if (!v19)
        {
          (*(v9 + 8))(v12, v8);

          return;
        }

        v20 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
        sub_1007526C4();
        v21 = *(v20 - 8);
        if ((*(v21 + 48))(v4, 1, v20) != 1)
        {
          sub_1003C0E00(v19, 1, v13, v4);

          (*(v9 + 8))(v12, v8);
          (*(v21 + 8))(v4, v20);
          return;
        }

        (*(v9 + 8))(v12, v8);

        v16 = &unk_100923960;
        v17 = &qword_1007A6240;
        v18 = v4;
        goto LABEL_7;
      }
    }

    else
    {
      (*(v9 + 56))(v7, 1, 1, v8, v10);
    }

    v16 = &unk_10092E290;
    v17 = &qword_1007C08F0;
    v18 = v7;
LABEL_7:
    sub_10000C8CC(v18, v16, v17);
  }
}

uint64_t sub_10021ABB8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_10021AD20()
{
  result = qword_10092E2E0;
  if (!qword_10092E2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092E2E0);
  }

  return result;
}

uint64_t type metadata accessor for ScrollablePillView(uint64_t a1)
{
  result = qword_10092E300;
  if (!qword_10092E300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10021AE1C()
{
  if (qword_100920A08 != -1)
  {
    swift_once();
  }

  v1 = qword_10097FC88;
  qword_10097E780 = qword_10097FC88;

  return v1;
}

uint64_t sub_10021AE80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  sub_1007539A4();
  sub_1000746BC(a1, &v22);
  sub_10000C824(a2, v21);
  if (qword_100920630 != -1)
  {
    swift_once();
  }

  v7 = qword_10097E780;
  v21[8] = &type metadata for SearchLinkLayout;
  v21[9] = sub_10007472C();
  v8 = swift_allocObject();
  v21[5] = v8;
  v9 = sub_1000747D0();
  v10 = swift_allocObject();
  sub_10000C824(v21, v10 + 16);
  sub_1000746BC(&v22, &v19);
  if (v20)
  {
    sub_100012160(&v19, v18);
    v11 = swift_allocObject();
    sub_100012160(v18, v11 + 16);
    v12 = v7;
    sub_10000C620(v21);
    sub_10007485C(&v22);
    v13 = &type metadata for AutoAdjustingPlaceable;
    v14 = v9;
  }

  else
  {
    v15 = v7;
    sub_10000C620(v21);
    sub_10007485C(&v22);
    v13 = 0;
    v14 = 0;
    v11 = 0;
  }

  v8[2] = v11;
  v8[3] = 0;
  v8[4] = 0;
  v8[5] = v13;
  v8[6] = v14;
  v8[7] = v10;
  v8[10] = &type metadata for AutoAdjustingPlaceable;
  v8[11] = v9;
  v8[12] = v7;
  v8[13] = 0x4014000000000000;
  v23 = sub_1007511A4();
  v24 = &protocol witness table for Margins;
  sub_10000D134(&v22);
  sub_100751194();
  a4[3] = &type metadata for AutoAdjustingPlaceable;
  a4[4] = v9;
  v16 = swift_allocObject();
  *a4 = v16;
  return sub_100012160(&v22, v16 + 16);
}

char *sub_10021B0B8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v54 = sub_100750E94();
  v9 = *(v54 - 8);
  __chkstk_darwin(v54);
  v11 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v53 - v13;
  __chkstk_darwin(v15);
  v17 = v53 - v16;
  __chkstk_darwin(v18);
  v53[1] = v53 - v19;
  v20 = qword_10092E2F0;
  *&v4[v20] = [objc_allocWithZone(sub_1007433C4()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v21 = qword_10092E2F8;
  sub_100750614();
  *&v4[v21] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v22 = type metadata accessor for ScrollablePillView(0);
  v56.receiver = v4;
  v56.super_class = v22;
  v23 = objc_msgSendSuper2(&v56, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v27 = v23;
  [v27 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v28 = [v27 layer];
  [v28 setCornerCurve:kCACornerCurveContinuous];

  v29 = [v27 layer];
  [v27 bounds];
  [v29 setCornerRadius:CGRectGetHeight(v57) * 0.5];

  v30 = [v27 layer];
  [v30 setBorderWidth:1.0];

  [v27 setNeedsDisplay];
  v31 = [v27 layer];
  if (qword_1009209F0 != -1)
  {
    swift_once();
  }

  v32 = [qword_10097FC70 CGColor];
  [v31 setBorderColor:v32];

  [v27 setNeedsDisplay];
  v33 = qword_10092E2F0;
  v34 = qword_1009209F8;
  v35 = *&v27[qword_10092E2F0];
  if (v34 != -1)
  {
    swift_once();
  }

  [v35 setTintColor:qword_10097FC78];

  v36 = *&v27[v33];
  v37 = objc_opt_self();
  v38 = v36;
  v39 = [v37 clearColor];
  sub_100743224();

  v40 = *&v27[v33];
  sub_1007432A4();

  v41 = qword_100920630;
  v42 = *&v27[v33];
  if (v41 != -1)
  {
    swift_once();
  }

  v43 = [objc_opt_self() configurationWithTextStyle:qword_10097E780 scale:2];
  sub_1007432D4();

  [v27 addSubview:*&v27[v33]];
  v44 = qword_10092E2F8;
  v45 = qword_1009209E0;
  v46 = *&v27[qword_10092E2F8];
  if (v45 != -1)
  {
    swift_once();
  }

  [v46 setTextColor:qword_10097FC60];

  v47 = *&v27[v44];
  v48 = [v27 traitCollection];

  sub_100750E84();
  sub_100750DF4();
  v49 = *(v9 + 8);
  v50 = v11;
  v51 = v54;
  v49(v50, v54);
  sub_100750E74();
  v49(v14, v51);
  sub_100750E64();
  v49(v17, v51);
  sub_1007505F4();

  [v27 addSubview:*&v27[v44]];
  sub_10021C300();
  sub_100753844();
  sub_100753D44();

  swift_unknownObjectRelease();

  return v27;
}

void sub_10021B6F4(uint64_t a1)
{
  v2 = qword_10092E2F0;
  *(a1 + v2) = [objc_allocWithZone(sub_1007433C4()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = qword_10092E2F8;
  sub_100750614();
  *(a1 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_100754644();
  __break(1u);
}

uint64_t sub_10021B7B4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + qword_10092E2F0);
  v5 = sub_100743334();
  if (v5)
  {

    v6 = sub_1007433C4();
    v7 = sub_10021C34C(&qword_10092E370, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v5 = v4;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v29[1] = 0;
    v29[2] = 0;
  }

  v29[0] = v5;
  v29[3] = v6;
  v29[4] = v7;
  v8 = *(v2 + qword_10092E2F8);
  v28[3] = sub_100750614();
  v28[4] = &protocol witness table for UILabel;
  v28[0] = v8;
  v9 = v8;
  sub_1007539A4();
  sub_1000746BC(v29, &v25);
  sub_10000C824(v28, v24);
  if (qword_100920630 != -1)
  {
    swift_once();
  }

  v10 = qword_10097E780;
  v24[8] = &type metadata for SearchLinkLayout;
  v24[9] = sub_10007472C();
  v11 = swift_allocObject();
  v24[5] = v11;
  v12 = sub_1000747D0();
  v13 = swift_allocObject();
  sub_10000C824(v24, v13 + 16);
  sub_1000746BC(&v25, &v22);
  if (v23)
  {
    sub_100012160(&v22, v21);
    v14 = swift_allocObject();
    sub_100012160(v21, v14 + 16);
    v15 = v10;
    sub_10000C620(v24);
    sub_10007485C(&v25);
    v16 = &type metadata for AutoAdjustingPlaceable;
    v17 = v12;
  }

  else
  {
    v18 = v10;
    sub_10000C620(v24);
    sub_10007485C(&v25);
    v16 = 0;
    v17 = 0;
    v14 = 0;
  }

  v11[2] = v14;
  v11[3] = 0;
  v11[4] = 0;
  v11[5] = v16;
  v11[6] = v17;
  v11[7] = v13;
  v11[10] = &type metadata for AutoAdjustingPlaceable;
  v11[11] = v12;
  v11[12] = v10;
  v11[13] = 0x4014000000000000;
  v26 = sub_1007511A4();
  v27 = &protocol witness table for Margins;
  sub_10000D134(&v25);
  sub_100751194();
  a1[3] = &type metadata for AutoAdjustingPlaceable;
  a1[4] = v12;
  v19 = swift_allocObject();
  *a1 = v19;
  sub_100012160(&v25, v19 + 16);
  sub_10000C620(v28);
  return sub_10007485C(v29);
}

id sub_10021BA98()
{
  sub_100750B54();
  v1 = sub_100750B64();
  v1();
  v2 = [v0 layer];
  [v0 bounds];
  [v2 setCornerRadius:CGRectGetHeight(v6) * 0.5];

  v3 = [v0 layer];
  [v3 setBorderWidth:1.0];

  return [v0 setNeedsDisplay];
}

void sub_10021BB78()
{
  v1 = *(v0 + qword_10092E2F8);
}

id sub_10021BBB8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScrollablePillView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10021BBF0(uint64_t a1)
{
  v2 = *(a1 + qword_10092E2F8);
}

id sub_10021BC7C()
{
  if (qword_100920630 != -1)
  {
    swift_once();
  }

  v0 = [objc_opt_self() configurationWithTextStyle:qword_10097E780 scale:2];

  return v0;
}

uint64_t sub_10021BD04()
{
  v0 = sub_100750E94();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  __chkstk_darwin(v7);
  v9 = &v12 - v8;
  sub_100750E84();
  if (qword_100920630 != -1)
  {
    swift_once();
  }

  sub_100750DF4();
  v10 = *(v1 + 8);
  v10(v3, v0);
  sub_100750E74();
  v10(v6, v0);
  sub_100750E64();
  return (v10)(v9, v0);
}

double sub_10021BEA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006FD960(a1, a3, WitnessTable);
}

void sub_10021BF04(void *a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1006FB498(a1, a2, a3, WitnessTable);
}

void sub_10021BF70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1006FD99C(a1, a3, WitnessTable);
}

uint64_t sub_10021BFD4@<X0>(uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006FB810(a3, WitnessTable, x8_0);
}

double sub_10021C050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006FDACC(a1, a2, a4, WitnessTable);
}

uint64_t sub_10021C104(void *a1)
{
  a1[1] = sub_10021C34C(&qword_10092E358, type metadata accessor for ScrollablePillView, &unk_1007B31A0);
  a1[2] = sub_10021C34C(&qword_10092E360, type metadata accessor for ScrollablePillView, &unk_1007B31D0);
  result = sub_10021C34C(&qword_10092E368, type metadata accessor for ScrollablePillView, &unk_1007B3200);
  a1[3] = result;
  return result;
}

uint64_t sub_10021C1B0()
{
  if (*(v0 + 40))
  {
    sub_10000C620((v0 + 16));
  }

  sub_10000C620((v0 + 56));

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_10021C200()
{
  sub_10000C620((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

id sub_10021C238(void *a1)
{
  v2 = [a1 layer];
  if (qword_1009209F0 != -1)
  {
    swift_once();
  }

  v3 = [qword_10097FC70 CGColor];
  [v2 setBorderColor:v3];

  return [a1 setNeedsDisplay];
}

unint64_t sub_10021C300()
{
  result = qword_1009239F8;
  if (!qword_1009239F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009239F8);
  }

  return result;
}

uint64_t sub_10021C34C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10021C3A8()
{
  result = qword_10092E380;
  if (!qword_10092E380)
  {
    sub_10074CB54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092E380);
  }

  return result;
}

uint64_t sub_10021C408(uint64_t a1, uint64_t a2)
{
  v3 = sub_100743184();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000C518(&qword_100930CA0, &unk_1007A58A0);
  v7 = sub_100752DE4();
  sub_10074B294();
  sub_100752764();
  sub_100752D34();
  v8 = v24[1];
  sub_10074B274();
  v9 = (*(v4 + 88))(v6, v3);
  if (v9 == enum case for ArcadeState.notSubscribed(_:))
  {
    (*(v4 + 96))(v6, v3);
    v10 = sub_10074CB34();
    v11 = sub_100748FD4();
    v12 = *(*(v11 - 8) + 8);

    v12(v6, v11);
    if (!v10)
    {
      goto LABEL_14;
    }
  }

  else if (v9 == enum case for ArcadeState.purchasing(_:))
  {
    (*(v4 + 8))(v6, v3);
    v13 = sub_10074CB14();

    if (!v13)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v9 != enum case for ArcadeState.subscribed(_:))
    {
      v18 = enum case for ArcadeState.unknown(_:);
      v19 = v9;
      v20 = sub_10074CB44();
      if (v19 == v18)
      {

        if (v20)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v22 = *(v4 + 8);

        v22(v6, v3);
        if (v20)
        {
          goto LABEL_12;
        }
      }

LABEL_14:
      sub_10021C780();
      swift_allocError();
      sub_100752DA4();

      return v7;
    }

    (*(v4 + 96))(v6, v3);

    v14 = *(sub_10000C518(&qword_10092E390, &qword_1007B32E8) + 48);
    v15 = sub_10074CB24();
    v16 = sub_10074AAE4();
    v17 = *(*(v16 - 8) + 8);

    v17(v6 + v14, v16);
    if (!v15)
    {
      goto LABEL_14;
    }
  }

LABEL_12:

  sub_10052AB60(v21, 1, a2);

  sub_100752D54();

  return v7;
}

unint64_t sub_10021C780()
{
  result = qword_10092E388;
  if (!qword_10092E388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092E388);
  }

  return result;
}

unint64_t sub_10021C7E8()
{
  result = qword_10092E398;
  if (!qword_10092E398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092E398);
  }

  return result;
}

uint64_t sub_10021C90C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_10021C954()
{
  v1 = v0;
  sub_100745784();
  sub_100745BD4();

  sub_100745774();
  if (v2)
  {
    v3 = sub_100743AD4();
  }

  else
  {
    v3 = 0;
  }

  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33ProductPageLinkCollectionViewCell_iconImage];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension33ProductPageLinkCollectionViewCell_iconImage] = v3;
  v5 = v3;

  sub_1004E30AC();

  return [v1 setNeedsLayout];
}

uint64_t type metadata accessor for SearchFocusLayoutSectionProvider(uint64_t a1)
{
  result = qword_10092E3F8;
  if (!qword_10092E3F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10021CAC8()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    v2 = sub_100754664();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v0[1];
  if (v3 != v2)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = sub_100754574();
    }

    else
    {
      if ((v3 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_14:
        __break(1u);
        return;
      }

      v4 = *(v1 + 8 * v3 + 32);
    }

    v5 = v4;
    if (!__OFADD__(v3, 1))
    {
      v0[1] = v3 + 1;
      v6 = v0[2];
      v8 = v4;
      v6(&v7, &v8);

      return;
    }

    goto LABEL_13;
  }
}

uint64_t sub_10021CC04(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_10000C824(a1, v11);
  type metadata accessor for SearchLandingLayoutSectionProvider(0);
  swift_allocObject();
  sub_10000C824(v11, v10);
  sub_10000C824(v10, v9);

  v6 = sub_10074CB64();
  sub_10000C620(v10);
  sub_10000C620(v11);
  *(v4 + qword_10092E3F0) = v6;
  sub_10000C824(a1, v11);
  sub_10000C824(v11, v10);
  v7 = sub_10074CB64();
  sub_10000C620(a1);
  sub_10000C620(v11);
  return v7;
}

id sub_10021CD04(__objc2_prop *a1, uint64_t (*a2)(void), void (*a3)(char *, uint64_t), uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v237 = a8;
  v232 = a7;
  v228 = a6;
  v229 = a5;
  v230 = a4;
  v251 = a3;
  v252 = a2;
  v253 = a10;
  v236 = a9;
  v11 = sub_100752404();
  __chkstk_darwin(v11 - 8);
  v239 = (&v224 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1007469A4();
  v245 = *(v13 - 8);
  v246 = v13;
  __chkstk_darwin(v13);
  v240 = (&v224 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v17 = &v224 - v16;
  v226 = sub_10074F704();
  v227 = *(v226 - 8);
  __chkstk_darwin(v226);
  v225 = &v224 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000C518(&qword_100942730, &unk_1007B3460);
  __chkstk_darwin(v19 - 8);
  v231 = &v224 - v20;
  v21 = sub_10074E984();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v235 = &v224 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v249 = &v224 - v25;
  __chkstk_darwin(v26);
  v28 = &v224 - v27;
  v29 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  *&v234 = &v224 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v224 - v33;
  __chkstk_darwin(v35);
  v238 = &v224 - v36;
  __chkstk_darwin(v37);
  v39 = &v224 - v38;
  v233 = a1;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v40 = *(v30 + 8);
  v243 = v29;
  v242 = v30 + 8;
  v241 = v40;
  v40(v39, v29);
  v247 = v28;
  v248 = v22;
  v43 = *(v22 + 88);
  v42 = (v22 + 88);
  v41 = v43;
  v244 = v21;
  v44 = (v43)(v28, v21);
  if (v44 == enum case for Shelf.ContentType.singleColumnList(_:) || v44 == enum case for Shelf.ContentType.twoColumnList(_:))
  {
    v64 = v252();
    v65 = *(v64 + 16);
    v66 = _swiftEmptyArrayStorage;
    if (v65)
    {
      v254 = _swiftEmptyArrayStorage;
      sub_10001E46C(0, v65, 0);
      v249 = *(v245 + 16);
      v67 = (*(v245 + 80) + 32) & ~*(v245 + 80);
      v224 = v64;
      v68 = v64 + v67;
      v235 = "outSectionProvider";
      v69 = *(v245 + 72);
      v247 = v245 + 8;
      v248 = v69;
      v234 = xmmword_1007A5A00;
      v66 = v254;
      v70 = v246;
      v71 = v240;
      v245 += 16;
      do
      {
        (v249)(v71, v68, v70);
        sub_10074CB74();
        sub_10000C888(&aBlock, v258);
        if (sub_10074D754() && swift_conformsToProtocol2())
        {
          sub_10000C620(&aBlock);
          sub_100748B84();
          v73 = v72;
        }

        else
        {
          sub_10000C620(&aBlock);
          if (qword_100921ED0 != -1)
          {
            swift_once();
          }

          v252 = sub_100752E44();
          v251 = sub_10000D0FC(v252, qword_1009832E8);
          sub_10000C518(&qword_100923930, &qword_1007A6B60);
          sub_100752454();
          *(swift_allocObject() + 16) = v234;
          sub_1007523F4();
          v261._object = (v235 | 0x8000000000000000);
          v261._countAndFlagsBits = 0xD000000000000047;
          sub_1007523E4(v261);
          swift_getKeyPath();
          v74 = v238;
          sub_100746914();

          swift_getKeyPath();
          v258 = v244;
          sub_10000D134(&aBlock);
          v75 = v243;
          sub_1007525B4();

          v76 = v75;
          v71 = v240;
          v241(v74, v76);
          sub_1007523C4();
          sub_10000C8CC(&aBlock, &unk_100923520, &qword_1007A5A70);
          v262._countAndFlagsBits = 0;
          v262._object = 0xE000000000000000;
          sub_1007523E4(v262);
          sub_100752414();
          sub_100752D04();

          v73 = 0;
          v70 = v246;
        }

        (*v247)(v71, v70);
        v254 = v66;
        v78 = v66[2];
        v77 = v66[3];
        if (v78 >= v77 >> 1)
        {
          sub_10001E46C((v77 > 1), v78 + 1, 1);
          v66 = v254;
        }

        v66[2] = v78 + 1;
        v66[v78 + 4] = v73;
        v68 += v248;
        --v65;
      }

      while (v65);
      v49 = v233;
      v79 = v231;
    }

    else
    {
      v49 = v233;
      v79 = v231;
    }

    v89 = COERCE_DOUBLE(sub_10018875C(v66));
    v90 = v229;
    if ((v91 & 1) != 0 || v89 <= 0.0)
    {

      goto LABEL_31;
    }

    v92 = sub_1007499F4();

    v93 = [objc_opt_self() sectionWithGroup:v92];
    swift_getObjectType();
    sub_10074BE74();
    sub_100016C60(0, &qword_10092E460, NSCollectionLayoutBoundarySupplementaryItem_ptr);
    isa = sub_100753294().super.isa;

    [v93 setBoundarySupplementaryItems:isa];

    sub_10074BE64();
    sub_100016C60(0, &qword_10092E468, NSCollectionLayoutDecorationItem_ptr);
    v95 = sub_100753294().super.isa;

    [v93 setDecorationItems:v95];

    v96 = v225;
    sub_100747B84();
    sub_10074F694();
    v98 = v97;
    v100 = v99;
    (*(v227 + 8))(v96, v226);
    sub_10000C888(v90, v90[3]);
    sub_10074BE34();
    v102 = v101;
    sub_10000C888(v90, v90[3]);
    sub_10074BE54();
    [v93 setContentInsets:{v102, v98, v103, v100}];
    sub_10074CB94();
    v104 = sub_1007532C4();
    v106 = v105;

    if (v104)
    {
      v259 = v104;
      v260 = v106;
      aBlock = _NSConcreteStackBlock;
      v256 = 1107296256;
      v257 = sub_1005D5E28;
      v258 = &unk_10086D320;
      v104 = _Block_copy(&aBlock);
    }

    [v93 setVisibleItemsInvalidationHandler:{v104, v224}];
    _Block_release(v104);

    return v93;
  }

  if (v44 != enum case for Shelf.ContentType.scrollablePill(_:))
  {
    v240 = &v224;
    v250 = *(v250 + qword_10092E3F0);
    __chkstk_darwin(v44);
    v47 = v233;
    sub_100747C04();
    swift_getKeyPath();
    v80 = v249;
    v81 = v243;
    sub_1007525B4();

    v241(v34, v81);
    v239 = v41;
    v82 = (v41)(v80, v244);
    v83 = v230;
    if (v82 == enum case for Shelf.ContentType.action(_:))
    {
      v84 = ASKDeviceTypeGetCurrent();
      v85 = sub_100753094();
      v87 = v86;
      if (v85 == sub_100753094() && v87 == v88)
      {
        goto LABEL_23;
      }

      v145 = sub_100754754();

      if (v145)
      {
        goto LABEL_46;
      }

      v84 = ASKDeviceTypeGetCurrent();
      v182 = sub_100753094();
      v184 = v183;
      if (v182 == sub_100753094() && v184 == v185)
      {
LABEL_23:

LABEL_46:
        v146 = (v252)(v82);
        v147 = *(v146 + 16);
        v42 = _swiftEmptyArrayStorage;
        v243 = v147;
        if (v147)
        {
          aBlock = _swiftEmptyArrayStorage;
          sub_10001E46C(0, v147, 0);
          v148 = type metadata accessor for SearchActionContentView(0);
          v42 = aBlock;
          v149 = v245 + 16;
          v251 = *(v245 + 16);
          v252 = v148;
          v150 = *(v245 + 80);
          v245 = v146;
          v151 = v146 + ((v150 + 32) & ~v150);
          v152 = *(v149 + 56);
          v153 = (v149 - 8);
          v154 = v147;
          do
          {
            v155 = v246;
            (v251)(v17, v151, v246);
            v156 = sub_100637E50(v17);
            (*v153)(v17, v155);
            aBlock = v42;
            v158 = v42[2];
            v157 = v42[3];
            if (v158 >= v157 >> 1)
            {
              sub_10001E46C((v157 > 1), v158 + 1, 1);
              v42 = aBlock;
            }

            v42[2] = (v158 + 1);
            *&v42[v158 + 4] = v156;
            v151 += v152;
            --v154;
          }

          while (v154);
          v47 = v233;
          v159 = v231;
        }

        else
        {
LABEL_64:
          v159 = v231;
        }

        v166 = COERCE_DOUBLE(sub_10018875C(v42));
        if ((v167 & 1) == 0 && v166 > 0.0)
        {
          v168 = *&v166;
          v169 = v225;
          sub_100747B84();
          sub_10074F594();
          v171 = v170;
          v172 = v227 + 8;
          v173 = *(v227 + 8);
          v173(v169, v226);
          v227 = v172;
          v251 = v173;
          if (v171 < 2.0)
          {
            goto LABEL_89;
          }

          v174 = v243;
          if (!v243)
          {
            goto LABEL_89;
          }

          v175 = sub_100753324();
          *(v175 + 16) = v174;
          v176 = (v175 + 32);
          if (v174 >= 4)
          {
            v177 = v174 & 0x7FFFFFFFFFFFFFFCLL;
            v176 += v174 & 0x7FFFFFFFFFFFFFFCLL;
            v200 = vdupq_n_s64(v168);
            v201 = (v175 + 48);
            v202 = v174 & 0x7FFFFFFFFFFFFFFCLL;
            do
            {
              v201[-1] = v200;
              *v201 = v200;
              v201 += 2;
              v202 -= 4;
            }

            while (v202);
            if (v174 == v177)
            {
              goto LABEL_89;
            }
          }

          else
          {
            v177 = 0;
          }

          v203 = v174 - v177;
          do
          {
            *v176++ = v168;
            --v203;
          }

          while (v203);
LABEL_89:
          v204 = sub_1007499F4();

          v205 = objc_opt_self();
          v252 = v204;
          v93 = [v205 sectionWithGroup:v204];
          swift_getObjectType();
          v206 = v229;
          sub_10074BE74();
          sub_100016C60(0, &qword_10092E460, NSCollectionLayoutBoundarySupplementaryItem_ptr);
          v207 = sub_100753294().super.isa;

          [v93 setBoundarySupplementaryItems:v207];

          sub_10074BE64();
          sub_100016C60(0, &qword_10092E468, NSCollectionLayoutDecorationItem_ptr);
          v208 = sub_100753294().super.isa;

          [v93 setDecorationItems:v208];

          v209 = v225;
          sub_100747B84();
          sub_10074F694();
          v211 = v210;
          v213 = v212;
          v251(v209, v226);
          sub_10000C888(v206, v206[3]);
          sub_10074BE34();
          v215 = v214;
          sub_10000C888(v206, v206[3]);
          sub_10074BE54();
          [v93 setContentInsets:{v215, v211, v216, v213}];
          sub_10074CB94();
          v217 = sub_1007532C4();
          v219 = v218;

          if (v217)
          {
            v259 = v217;
            v260 = v219;
            aBlock = _NSConcreteStackBlock;
            v256 = 1107296256;
            v257 = sub_1005D5E28;
            v258 = &unk_10086D2F8;
            v217 = _Block_copy(&aBlock);
          }

          v181 = v247;
          v180 = v248;
          [v93 setVisibleItemsInvalidationHandler:v217];
          _Block_release(v217);

          goto LABEL_92;
        }

        sub_100016C60(0, &unk_10093FE00, NSCollectionLayoutSection_ptr);
        v178 = sub_100747C14();
        v179 = *(v178 - 8);
        (*(v179 + 16))(v159, v47, v178);
        (*(v179 + 56))(v159, 0, 1, v178);
        v93 = sub_100753A44();
        sub_10000C8CC(v159, &qword_100942730, &unk_1007B3460);
        v181 = v247;
        v180 = v248;
        goto LABEL_92;
      }

      v186 = sub_100754754();

      if (v186)
      {
        goto LABEL_46;
      }
    }

    v246 = &v224;
    __chkstk_darwin(v82);
    __chkstk_darwin(v187);
    sub_10074CBA4();
    v188 = sub_10074CBB4();
    v189 = v83;
    v190 = v229;
    v191 = v237;
    v93 = v188(v47, sub_1000FA880, &v224 - 4, v189, v229, v228, v232, v237, v236, v253);
    v192 = v234;
    sub_100747C04();
    swift_getKeyPath();
    v193 = v235;
    v194 = v243;
    sub_1007525B4();

    v241(v192, v194);
    v195 = v239(v193, v244);
    if (v195 == enum case for Shelf.ContentType.ribbonBar(_:))
    {
      v196 = v252();
      v197 = sub_1003EFB6C(v47, v196, v230, v190, v228, v232, v191, v236, v253);

      v93 = v197;
      v180 = v248;
    }

    else
    {
      v180 = v248;
      if (v195 != enum case for Shelf.ContentType.ribbonFlow(_:))
      {
        v181 = v247;
        if (v195 == enum case for Shelf.ContentType.smallContactCard(_:))
        {
          [v93 setOrthogonalScrollingBehavior:2];
        }

        else
        {
          (*(v248 + 8))(v235, v244);
        }

        goto LABEL_92;
      }

      v198 = v252();
      v199 = sub_1003F0EB0(v47, v198, v230, v190, v228, v232, v237, v236, v253);

      v93 = v199;
    }

    v181 = v247;
LABEL_92:
    v220 = *(v180 + 8);
    v221 = v244;
    v220(v249, v244);
    v220(v181, v221);
    return v93;
  }

  v45 = v252();
  v46 = *(v45 + 16);
  v47 = &stru_1008F2000;
  v48 = &stru_1008F2000;
  v49 = v233;
  if (v46)
  {
    aBlock = _swiftEmptyArrayStorage;
    sub_1007545C4();
    v42 = objc_opt_self();
    v252 = objc_opt_self();
    v251 = objc_opt_self();
    ObjectType = swift_getObjectType();
    v51 = v245 + 16;
    v248 = *(v245 + 16);
    v249 = ObjectType;
    v52 = *(v245 + 80);
    v245 = v45;
    v53 = v45 + ((v52 + 32) & ~v52);
    v247 = *(v51 + 56);
    v54 = v246;
    do
    {
      (v248)(v17, v53, v54);
      v55 = sub_10021F950(v17, 0, 0, 1);
      v57 = v56;
      v58 = [v42 absoluteDimension:v55];
      v59 = [v42 absoluteDimension:v57];
      v60 = [v252 sizeWithWidthDimension:v58 heightDimension:v59];

      sub_10074B564();
      sub_100016C60(0, &unk_10092E470, NSCollectionLayoutSupplementaryItem_ptr);
      v61 = sub_100753294().super.isa;

      v62 = [v251 itemWithLayoutSize:v60 supplementaryItems:v61];

      (*(v51 - 8))(v17, v54);
      sub_1007545A4();
      sub_1007545D4();
      sub_1007545E4();
      sub_1007545B4();
      v53 += v247;
      --v46;
    }

    while (v46);

    v63 = aBlock;
    v49 = v233;
    v48 = &stru_1008F2000;
    v47 = &stru_1008F2000;
  }

  else
  {

    v63 = _swiftEmptyArrayStorage;
  }

  KeyPath = swift_getKeyPath();
  aBlock = v63;
  v256 = 0;
  v257 = sub_1002204C4;
  v258 = KeyPath;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  sub_10021CAC8();
  v252 = (v63 >> 62);
  if (v111)
  {

    swift_bridgeObjectRelease_n();
    v112 = 0.0;
    goto LABEL_39;
  }

  v251 = KeyPath;
  if (v63 >> 62)
  {
    v223 = v110;
    v113 = sub_100754664();
    v110 = v223;
  }

  else
  {
    v113 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v112 = v110;
  v79 = v256;
  if (v256 == v113)
  {
LABEL_38:

    swift_bridgeObjectRelease_n();
    v49 = v233;
    v48 = &stru_1008F2000;
    v47 = &stru_1008F2000;
LABEL_39:
    v79 = v231;
    if (v252)
    {
      goto LABEL_96;
    }

    if (!*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_31;
    }

    goto LABEL_41;
  }

  v49 = v63 & 0xC000000000000001;
  v47 = (v63 & 0xFFFFFFFFFFFFFF8);
  v48 = &selRef_initWithAdamID_cppIDs_serverCppID_adData_instanceID_;
  while (1)
  {
    if (v49)
    {
      v160 = sub_100754574();
      v161 = v79 + 1;
      if (__OFADD__(v79, 1))
      {
        goto LABEL_63;
      }

      goto LABEL_57;
    }

    if ((v79 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v79 >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_95;
    }

    v160 = v63[v79 + 4];
    v161 = v79 + 1;
    if (__OFADD__(v79, 1))
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

LABEL_57:
    v162 = v160;
    v42 = [v162 layoutSize];
    v163 = [v42 heightDimension];
    [v163 dimension];
    v165 = v164;

    if (v112 < v165)
    {
      v112 = v165;
    }

    ++v79;
    if (v161 == v113)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  if (!sub_100754664())
  {
LABEL_31:

    sub_100016C60(0, &unk_10093FE00, NSCollectionLayoutSection_ptr);
    v107 = sub_100747C14();
    v108 = *(v107 - 8);
    (*(v108 + 16))(v79, v49, v107);
    (*(v108 + 56))(v79, 0, 1, v107);
    v93 = sub_100753A44();
    sub_10000C8CC(v79, &qword_100942730, &unk_1007B3460);
    return v93;
  }

LABEL_41:
  if (v112 < 2.22507386e-308)
  {
    goto LABEL_31;
  }

  v114 = objc_opt_self();
  v115 = v225;
  sub_100747B84();
  sub_10074F5C4();
  v117 = v116;
  v118 = v227 + 8;
  v119 = *(v227 + 8);
  v119(v115, v226);
  v120 = v119;
  v249 = v119;
  v227 = v118;
  v121 = [v114 estimatedDimension:v117];
  v122 = [v114 v47[62].name];
  v123 = [objc_opt_self() v48[62].attr];

  v124 = objc_opt_self();
  sub_100016C60(0, &qword_100923478, NSCollectionLayoutItem_ptr);
  v125 = sub_100753294().super.isa;

  v252 = v123;
  v126 = [v124 horizontalGroupWithLayoutSize:v123 subitems:v125];

  v127 = objc_opt_self();
  sub_100747B84();
  sub_10074F634();
  v129 = v128;
  v120(v115, v226);
  v130 = [v127 fixedSpacing:v129];
  [v126 setInterItemSpacing:v130];

  v131 = objc_opt_self();
  v251 = v126;
  v93 = [v131 sectionWithGroup:v126];
  swift_getObjectType();
  v132 = v229;
  sub_10074BE74();
  sub_100016C60(0, &qword_10092E460, NSCollectionLayoutBoundarySupplementaryItem_ptr);
  v133 = sub_100753294().super.isa;

  [v93 setBoundarySupplementaryItems:v133];

  sub_10074BE64();
  sub_100016C60(0, &qword_10092E468, NSCollectionLayoutDecorationItem_ptr);
  v134 = sub_100753294().super.isa;

  [v93 setDecorationItems:v134];

  sub_100747B84();
  sub_10074F694();
  v136 = v135;
  v138 = v137;
  (v249)(v115, v226);
  sub_10000C888(v132, v132[3]);
  sub_10074BE34();
  v140 = v139;
  sub_10000C888(v132, v132[3]);
  sub_10074BE54();
  [v93 setContentInsets:{v140, v136, v141, v138}];
  [v93 setOrthogonalScrollingBehavior:1];
  sub_10074CB94();
  v142 = sub_1007532C4();
  v144 = v143;

  if (v142)
  {
    v259 = v142;
    v260 = v144;
    aBlock = _NSConcreteStackBlock;
    v256 = 1107296256;
    v257 = sub_1005D5E28;
    v258 = &unk_10086D348;
    v142 = _Block_copy(&aBlock);
  }

  [v93 setVisibleItemsInvalidationHandler:v142];
  _Block_release(v142);

  return v93;
}

void sub_10021ED78(id *a1)
{
  v3 = *a1;
  swift_getAtKeyPath();
}

uint64_t sub_10021EDE0()
{
  sub_10074CBC4();

  return swift_deallocClassInstance();
}

uint64_t sub_10021EE64(uint64_t a1, void *a2)
{
  v73 = a2;
  v3 = sub_10000C518(&qword_1009273F8, &qword_1007B35F0);
  __chkstk_darwin(v3 - 8);
  v75 = &v60 - v4;
  v5 = sub_10000C518(&unk_10092E4B0, &qword_1007B35F8);
  __chkstk_darwin(v5 - 8);
  v76 = &v60 - v6;
  v77 = sub_10000C518(&qword_100930570, &qword_1007B3600);
  v74 = *(v77 - 8);
  __chkstk_darwin(v77);
  v72 = &v60 - v7;
  v8 = sub_1007410D4();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1007440D4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&unk_10092E4C0, &unk_1007B0C40);
  __chkstk_darwin(v13 - 8);
  v15 = &v60 - v14;
  v16 = sub_10000C518(&qword_100923030, &unk_1007B17C0);
  __chkstk_darwin(v16 - 8);
  v18 = &v60 - v17;
  v19 = sub_100741084();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v70 = &v60 - v24;
  __chkstk_darwin(v25);
  v71 = &v60 - v26;
  v27 = sub_100744074();
  if (!v28)
  {
    return 0;
  }

  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = v27 & 0xFFFFFFFFFFFFLL;
  }

  if (!v29)
  {

    return 0;
  }

  v68 = v27;
  v69 = v28;
  sub_100744094();
  if ((*(v10 + 48))(v15, 1, v9) != 1)
  {
    if (qword_1009209E0 != -1)
    {
      swift_once();
    }

    v60 = qword_10097FC60;
    if (qword_1009209E8 != -1)
    {
      swift_once();
    }

    v64 = qword_10097FC68;
    (*(v10 + 16))(v12, v15, v9);
    v31 = (*(v10 + 88))(v12, v9);
    v67 = a1;
    v66 = v20;
    v65 = v10;
    v62 = v9;
    if (v31 == enum case for SearchEntity.developers(_:))
    {
      v63 = "Search.ResultsTitle.InStories";
      v32 = 0xD000000000000020;
    }

    else
    {
      if (v31 != enum case for SearchEntity.stories(_:))
      {
        if (v31 == enum case for SearchEntity.arcade(_:))
        {
          v63 = "Search.ResultsTitle.InWatch";
          v33 = 0xD00000000000001CLL;
        }

        else
        {
          if (v31 != enum case for SearchEntity.watch(_:))
          {
            result = sub_100754644();
            __break(1u);
            return result;
          }

          v63 = "must be handled.";
          v33 = 0xD00000000000001BLL;
        }

        v61 = v33;
        goto LABEL_23;
      }

      v63 = "Search.ResultsTitle.InArcade";
      v32 = 0xD00000000000001DLL;
    }

    v61 = v32;
LABEL_23:
    sub_10000C518(&unk_10092E4D0, &qword_1007B3608);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007A5A00;
    *(inited + 32) = 0x745F686372616573;
    *(inited + 40) = 0xEB000000006D7265;
    v35 = v69;
    *(inited + 48) = v68;
    *(inited + 56) = v35;

    v36 = sub_10038664C(inited);
    swift_setDeallocating();
    sub_10000C8CC(inited + 32, &qword_10093CA20, &qword_1007B3610);
    v80._object = (v63 | 0x8000000000000000);
    v80._countAndFlagsBits = v61;
    v37._rawValue = v36;
    sub_1007458A4(v80, v37);

    sub_1007410C4();
    sub_100741094();
    v38 = v73;
    v79[0] = v73;
    sub_1000168F0();
    v39 = v38;
    sub_1007410A4();
    v40 = v64;
    v79[0] = v64;
    sub_1002205EC();
    v41 = v40;
    sub_1007410A4();
    v79[0] = v68;
    v79[1] = v35;
    v42 = sub_100741574();
    v43 = v75;
    (*(*(v42 - 8) + 56))(v75, 1, 1, v42);
    sub_100220640(&unk_10092E4F0, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
    sub_1000D5C0C();
    v44 = v76;
    sub_100741184();
    sub_10000C8CC(v43, &qword_1009273F8, &qword_1007B35F0);
    if ((*(v74 + 48))(v44, 1, v77) == 1)
    {
      v45 = &unk_10092E4B0;
      v46 = &qword_1007B35F8;
    }

    else
    {
      v47 = v44;
      v44 = v72;
      sub_100220688(v47, v72);
      v48 = v60;
      v49 = v60;
      sub_1002206F8();
      v50 = sub_1007410B4();
      v78 = v48;
      sub_100741114();
      v50(v79, 0);
      v45 = &qword_100930570;
      v46 = &qword_1007B3600;
    }

    sub_10000C8CC(v44, v45, v46);
    v51 = v65;
    v52 = v62;
    v53 = v66;
    v54 = *(v66 + 32);
    v54(v18, v22, v19);
    (*(v53 + 56))(v18, 0, 1, v19);
    (*(v51 + 8))(v15, v52);
    if ((*(v53 + 48))(v18, 1, v19) != 1)
    {

      v58 = v71;
      v54(v71, v18, v19);
      sub_100016C60(0, &qword_10092E500, NSAttributedString_ptr);
      (*(v53 + 16))(v70, v58, v19);
      v59 = sub_100753854();
      (*(v53 + 8))(v58, v19);
      return v59;
    }

    goto LABEL_27;
  }

  sub_10000C8CC(v15, &unk_10092E4C0, &unk_1007B0C40);
  (*(v20 + 56))(v18, 1, 1, v19);
LABEL_27:
  sub_10000C8CC(v18, &qword_100923030, &unk_1007B17C0);
  v55 = sub_10074ECB4();
  if (!v56)
  {
    return v68;
  }

  v57 = v55;

  return v57;
}

double sub_10021F934(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double sub_10021F950(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v80 = a4;
  v75 = a2;
  v76 = a3;
  v5 = sub_10074F704();
  v78 = *(v5 - 8);
  __chkstk_darwin(v5);
  v77 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100750BD4();
  v89 = *(v7 - 8);
  __chkstk_darwin(v7);
  v79 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v88 = &v66 - v10;
  v11 = sub_100750954();
  v83 = *(v11 - 8);
  v84 = v11;
  __chkstk_darwin(v11);
  v87 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_100750E94();
  v13 = *(v90 - 8);
  __chkstk_darwin(v90);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v66 - v17;
  __chkstk_darwin(v19);
  v21 = &v66 - v20;
  __chkstk_darwin(v22);
  v24 = &v66 - v23;
  sub_1007440C4();
  sub_100220640(&unk_10092E480, &type metadata accessor for SearchAction, &protocol conformance descriptor for Action);
  sub_1007468B4();
  v86 = v102[0];
  if (!v102[0])
  {
    return 0.0;
  }

  v85 = v24;
  v70 = v5;
  v74 = v7;
  swift_getKeyPath();
  sub_100746914();

  sub_100750E84();
  if (qword_100920630 != -1)
  {
    swift_once();
  }

  v73 = qword_10097E780;
  sub_100750DF4();
  v71 = v13;
  v26 = v13 + 8;
  v25 = *(v13 + 8);
  v27 = v15;
  v28 = v90;
  v25(v27, v90);
  sub_100750E74();
  v25(v18, v28);
  v29 = v21;
  v30 = v85;
  sub_100750E64();
  v72 = v29;
  v25(v29, v28);
  swift_getKeyPath();
  v82 = a1;
  sub_100746914();

  v31 = v99;
  v32 = v87;
  sub_100750944();
  sub_100750E04();
  sub_10000C888(v102, v103);
  sub_1007509B4();
  sub_100750924();
  sub_10000C620(v102);
  sub_100750E44();
  sub_1007508D4();
  sub_100750E24();
  sub_1007508B4();
  sub_100750E34();
  sub_1007508C4();
  sub_100750E14();
  sub_1007508A4();

  v33 = sub_100750914();
  v34 = sub_10021EE64(v86, v33);
  v81 = v35;
  v37 = v36;
  LODWORD(v31) = ~v36;

  if (!v31)
  {

    (*(v83 + 8))(v32, v84);
    v25(v30, v90);
    return 0.0;
  }

  v69 = v26;
  (*(v71 + 16))(v72, v30, v90);
  v68 = v37;
  v67 = v25;
  if (v37)
  {
    sub_1002204D0(v34, v81, 1);
    sub_100750BB4();
    v38 = v79;
    v39 = v34;
    sub_100750C14();
  }

  else
  {
    sub_1002204D0(v34, v81, 0);
    sub_100750BB4();
    v38 = v79;
    v39 = v34;
    sub_100750BF4();
  }

  v41 = v74;
  (*(v89 + 32))(v88, v38, v74);

  v42 = sub_10074ECC4();

  v43 = v73;
  if (v42 && (v44 = [objc_opt_self() configurationWithTextStyle:v73 scale:2], swift_getKeyPath(), sub_100746914(), , v45 = v102[0], v46 = objc_msgSend(v44, "configurationWithTraitCollection:", v102[0]), v45, v44, v47 = sub_100743AC4(), , v46, v47))
  {
    [v47 size];
    v49 = v48;
    v51 = v50;

    *(&v100 + 1) = &type metadata for FixedSizedPlaceholder;
    v101 = sub_100016AF8();
    *&v99 = v49;
    *(&v99 + 1) = v51;
  }

  else
  {
    v101 = 0;
    v99 = 0u;
    v100 = 0u;
  }

  v98[3] = v41;
  v98[4] = &protocol witness table for LabelPlaceholder;
  v52 = sub_10000D134(v98);
  (*(v89 + 16))(v52, v88, v41);
  swift_getKeyPath();
  sub_100746914();

  sub_1007539A4();
  sub_1000746BC(&v99, &v95);
  sub_10000C824(v98, v94);
  v94[8] = &type metadata for SearchLinkLayout;
  v94[9] = sub_10007472C();
  v53 = swift_allocObject();
  v94[5] = v53;
  v54 = sub_1000747D0();
  v55 = swift_allocObject();
  sub_10000C824(v94, v55 + 16);
  sub_1000746BC(&v95, &v92);
  if (v93)
  {
    sub_100012160(&v92, v91);
    v56 = swift_allocObject();
    sub_100012160(v91, v56 + 16);
    v57 = v43;
    sub_10000C620(v94);
    sub_10000C8CC(&v95, &unk_100924A60, &unk_1007A7B00);
    v58 = &type metadata for AutoAdjustingPlaceable;
    v59 = v54;
  }

  else
  {
    v60 = v43;
    sub_10000C620(v94);
    sub_10000C8CC(&v95, &unk_100924A60, &unk_1007A7B00);
    v56 = 0;
    v58 = 0;
    v59 = 0;
  }

  v53[2] = v56;
  v53[3] = 0;
  v53[4] = 0;
  v53[5] = v58;
  v53[6] = v59;
  v53[7] = v55;
  v53[10] = &type metadata for AutoAdjustingPlaceable;
  v53[11] = v54;
  v53[12] = v43;
  v53[13] = 0x4014000000000000;
  v96 = sub_1007511A4();
  v97 = &protocol witness table for Margins;
  sub_10000D134(&v95);
  sub_100751194();
  swift_unknownObjectRelease();
  sub_100012160(&v95, v102);
  sub_10000C620(v98);
  sub_10000C8CC(&v99, &unk_100924A60, &unk_1007A7B00);
  if (v80)
  {
    swift_getKeyPath();
    v61 = v77;
    sub_100746914();

    sub_10074F674();
    (*(v78 + 8))(v61, v70);
  }

  swift_getKeyPath();
  sub_100746914();

  v62 = v99;
  sub_10000C888(v102, v103);
  sub_100751254();
  v64 = v63;

  sub_100220570(v39, v81, v68);

  v40 = ceil(v64);
  sub_100220598(v102);
  (*(v89 + 8))(v88, v41);
  (*(v83 + 8))(v87, v84);
  v67(v85, v90);
  return v40;
}

id sub_100220400@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 layoutSize];
  *a2 = result;
  return result;
}

id sub_100220448@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 heightDimension];
  *a2 = result;
  return result;
}

id sub_100220490@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 dimension];
  *a2 = v4;
  return result;
}

double sub_1002204D0(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = a1;
  }

  else
  {
  }

  return result;
}

uint64_t sub_1002204E4()
{
  if (*(v0 + 40))
  {
    sub_10000C620((v0 + 16));
  }

  sub_10000C620((v0 + 56));

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_100220534()
{
  sub_10000C620((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

double sub_100220570(void *result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_100220588(result, a2, a3 & 1);
  }

  return v3;
}

double sub_100220588(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

unint64_t sub_1002205EC()
{
  result = qword_100944930;
  if (!qword_100944930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944930);
  }

  return result;
}

uint64_t sub_100220640(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100220688(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100930570, &qword_1007B3600);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002206F8()
{
  result = qword_1009305A0;
  if (!qword_1009305A0)
  {
    sub_10000C724(&qword_100930570, &qword_1007B3600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009305A0);
  }

  return result;
}

void sub_10022078C(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_1007504F4();
  sub_100039C50(v4, a3);
  sub_10000D0FC(v4, a3);
  sub_100750504();
}

unint64_t sub_1002207E8(uint64_t a1, void *a2, void (*a3)(char *, char *, uint64_t), char *a4, double a5, double a6, double a7, double a8, double a9)
{
  v10 = v9;
  v251 = a4;
  v240 = a3;
  v239 = a2;
  v17 = sub_10000C518(&qword_100923450, &qword_1007A6568);
  __chkstk_darwin(v17 - 8);
  v210 = &v203 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v218 = &v203 - v20;
  v21 = sub_10000C518(&unk_1009281C0, qword_1007ABBB0);
  __chkstk_darwin(v21 - 8);
  v228 = &v203 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v229 = &v203 - v24;
  v25 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v25 - 8);
  v227 = &v203 - v26;
  v27 = sub_100744864();
  __chkstk_darwin(v27 - 8);
  v216 = &v203 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v215 = &v203 - v30;
  __chkstk_darwin(v31);
  v222 = &v203 - v32;
  __chkstk_darwin(v33);
  v221 = &v203 - v34;
  v226 = sub_100744894();
  v225 = *(v226 - 8);
  __chkstk_darwin(v226);
  v214 = &v203 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v220 = &v203 - v37;
  v231 = sub_100747D94();
  v230 = *(v231 - 8);
  __chkstk_darwin(v231);
  v217 = &v203 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v243 = &v203 - v40;
  v209 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  v208 = *(v209 - 8);
  __chkstk_darwin(v209);
  v238 = &v203 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10000C518(&unk_100934D80, &qword_1007BC850);
  __chkstk_darwin(v42 - 8);
  v211 = &v203 - v43;
  v224 = sub_1007504F4();
  v223 = *(v224 - 8);
  __chkstk_darwin(v224);
  v244 = &v203 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = sub_100746B04();
  v236 = *(v237 - 8);
  __chkstk_darwin(v237);
  v235 = &v203 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250 = sub_100746A94();
  v248 = *(v250 - 8);
  __chkstk_darwin(v250);
  v207 = &v203 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v212 = (&v203 - v48);
  __chkstk_darwin(v49);
  v247 = &v203 - v50;
  __chkstk_darwin(v51);
  v219 = &v203 - v52;
  __chkstk_darwin(v53);
  v249 = &v203 - v54;
  v55 = sub_10000C518(&unk_1009281D0, qword_1007A82B0);
  __chkstk_darwin(v55 - 8);
  v213 = &v203 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v245 = &v203 - v58;
  __chkstk_darwin(v59);
  v252 = &v203 - v60;
  v61 = sub_10074A7F4();
  v62 = *(v61 - 8);
  __chkstk_darwin(v61);
  v64 = &v203 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v65);
  v67 = &v203 - v66;
  v68 = sub_10000C518(&unk_100923200, &unk_1007A5C50);
  *&v69 = __chkstk_darwin(v68 - 8).n128_u64[0];
  v71 = &v203 - v70;
  v72 = [v9 contentView];
  [v72 setLayoutMargins:{a6, a7, a8, a9}];

  v73 = *&v10[OBJC_IVAR____TtC22SubscribePageExtension37ContentSearchResultCollectionViewCell_lockupView];
  *&v73[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_regularWidthColumnSpacing] = a5;
  [v73 setNeedsLayout];
  v74 = sub_1007469A4();
  (*(*(v74 - 8) + 56))(v71, 1, 1, v74);
  sub_100028DB0(a1, v71, v251);
  sub_10000C8CC(v71, &unk_100923200, &unk_1007A5C50);
  sub_100016C60(0, &qword_100923500, UIColor_ptr);
  v75 = sub_100753E04();
  [v10 setBackgroundColor:v75];

  sub_100745E24();
  (v62[6].attr)(v64, enum case for ScreenshotsDisplayStyle.noScreenshots(_:), v61);
  sub_100224CDC(&qword_10092E508, &type metadata accessor for ScreenshotsDisplayStyle, &protocol conformance descriptor for ScreenshotsDisplayStyle);
  v254 = v67;
  v76 = sub_100753014();
  p_attr = &v62->attr;
  attr = v62->attr;
  v253 = v61;
  (attr)(v64, v61);
  if (v76)
  {
    [*&v10[OBJC_IVAR____TtC22SubscribePageExtension37ContentSearchResultCollectionViewCell_screenshots] setHidden:1];
    v62 = &stru_1008F2000;
LABEL_148:
    [v10 v62[51].attr];
    return (attr)(v254, v253);
  }

  v79 = sub_100745DD4();
  if (v79 >> 62)
  {
    v76 = v79;
    v80 = sub_100754664();
    v79 = v76;
  }

  else
  {
    v80 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v234 = attr;
  if (v80)
  {
    if ((v79 & 0xC000000000000001) != 0)
    {
      v76 = v79;
      v242 = sub_100754574();
    }

    else
    {
      if (!*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_48;
      }

      v76 = v79;
      v242 = *(v79 + 32);
    }
  }

  else
  {

    v242 = 0;
  }

  v206 = v10;
  v67 = *&v10[OBJC_IVAR____TtC22SubscribePageExtension37ContentSearchResultCollectionViewCell_screenshots];
  v233 = sub_100745E04();
  v246 = sub_100745DE4();
  v81 = sub_100745E54();
  if (v81 >> 62)
  {
    v76 = v81;
    v82 = sub_100754664();
    v81 = v76;
  }

  else
  {
    v82 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = v242;
  if (v82)
  {
    if ((v81 & 0xC000000000000001) != 0)
    {
      v241 = sub_100754574();
    }

    else
    {
      if (!*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_50;
      }

      v241 = *(v81 + 32);
    }
  }

  else
  {

    v241 = 0;
  }

  v83 = [v239 traitCollection];
  sub_100222B00(v252);

  attr = sub_100745E04();
  v76 = sub_100745DE4();
  v84 = sub_100745DD4();
  if (v84 >> 62)
  {
    v88 = v84;
    v85 = sub_100754664();
    v84 = v88;
  }

  else
  {
    v85 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v232 = &v62->attr;
  if (v85)
  {
    if ((v84 & 0xC000000000000001) == 0)
    {
      if (!*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_52;
      }

      p_attr = *(v84 + 32);

      goto LABEL_25;
    }

LABEL_48:
    p_attr = sub_100754574();
LABEL_25:

    goto LABEL_27;
  }

  p_attr = 0;
LABEL_27:
  v86 = sub_100745E54();
  if (v86 >> 62)
  {
    v89 = v86;
    v90 = sub_100754664();
    v86 = v89;
    if (v90)
    {
LABEL_29:
      if ((v86 & 0xC000000000000001) == 0)
      {
        if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v87 = *(v86 + 32);

LABEL_32:

          goto LABEL_38;
        }

LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

LABEL_50:
      v87 = sub_100754574();
      goto LABEL_32;
    }
  }

  else if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_29;
  }

  v87 = 0;
LABEL_38:
  if ((sub_10074A7E4() & 1) == 0)
  {

    v95 = v248;
    v96 = v249;
    v97 = v250;
    (*(v248 + 104))(v249, enum case for LockupMediaLayout.DisplayType.none(_:), v250);
    goto LABEL_76;
  }

  if (v76 | attr)
  {
    v98 = v219;
    sub_100750504();

    v95 = v248;
    v97 = v250;
    (*(v248 + 104))(v98, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v250);
    v96 = v249;
    (*(v95 + 32))(v249, v98, v97);
    goto LABEL_76;
  }

  v92 = sub_100631A30(p_attr, v87, 0, 1, v91);
  attr = v92;
  v10 = (v92 >> 62);
  if (v92 >> 62)
  {
LABEL_53:
    v205 = sub_100754664();
    if (p_attr)
    {
      goto LABEL_42;
    }

    goto LABEL_54;
  }

  v205 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (p_attr)
  {
LABEL_42:
    v94 = sub_100743844();
    goto LABEL_55;
  }

LABEL_54:
  v94 = 0;
LABEL_55:
  v203 = sub_100631D8C(v94, v93);

  v240 = p_attr;
  if (p_attr)
  {
    v99 = sub_100743844();
  }

  else
  {
    v99 = 0;
  }

  v97 = v250;
  v100 = v211;
  v101 = v253;
  (v62[1].name)(v211, v254, v253);
  (v62[3].attr)(v100, 0, 1, v101);
  v204 = sub_1006322B4(v99, v100);

  sub_10000C8CC(v100, &unk_100934D80, &qword_1007BC850);
  if (v10)
  {
    v102 = sub_100754664();
  }

  else
  {
    v102 = *((attr & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v103 = v212;
  v104 = v240;
  if (!v102)
  {

LABEL_68:
    v107 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
    v108 = v248;
    v109 = *(v248 + 104);
    v239 = (v248 + 104);
    v212 = v109;
    (v109)(v103, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v97);
    v110 = sub_100746A84();
    v111 = *(v108 + 8);
    (v111)(v103, v97);
    v112 = v205;
    if (((v205 >= v110) & v204) != 0 || (v107 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), v211 = v111, v113 = v250, (v212)(v103, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v250), v114 = sub_100746A84(), (v211)(v103, v113), ((v112 >= v114) & v203) != 0) || (v107 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), v115 = v250, (v212)(v103, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v250), v116 = sub_100746A84(), v117 = v115, v118 = v211, (v211)(v103, v117), v112 >= v116))
    {

      v106 = v219;
      v122 = v219;
      v123 = v107;
    }

    else
    {
      v204 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
      v119 = v118;
      v120 = v250;
      v212(v103);
      v121 = sub_100746A84();

      (v119)(v103, v120);
      if (v112 == v121)
      {
        v106 = v219;
        v122 = v219;
        v123 = v204;
      }

      else
      {
        v123 = enum case for LockupMediaLayout.DisplayType.none(_:);
        v106 = v219;
        v122 = v219;
      }
    }

    v97 = v250;
    (v212)(v122, v123, v250);
    v95 = v248;
    goto LABEL_75;
  }

  if ((attr & 0xC000000000000001) != 0)
  {
    sub_100754574();
  }

  else
  {
    if (!*((attr & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_151;
    }
  }

  v105 = sub_10074F194();

  if ((v105 & 1) == 0)
  {
    goto LABEL_68;
  }

  v95 = v248;
  v106 = v219;
  (*(v248 + 104))(v219, enum case for LockupMediaLayout.DisplayType.landscape(_:), v97);
LABEL_75:
  v96 = v249;
  (*(v95 + 32))(v249, v106, v97);
  v10 = v242;
LABEL_76:
  v256[3] = &type metadata for CGFloat;
  v256[4] = &protocol witness table for CGFloat;
  v256[0] = 0x4021000000000000;
  sub_10000C824(v256, v255);
  v104 = *(v95 + 16);
  v104(v247, v96, v97);
  if (v246 | v233)
  {
    goto LABEL_87;
  }

  result = sub_100631A30(v10, v241, 0, 1, v124);
  if (result >> 62)
  {
    v126 = result;
    v127 = sub_100754664();
    result = v126;
    if (v127)
    {
      goto LABEL_79;
    }

    goto LABEL_86;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_86:

LABEL_87:
    sub_100750504();
    goto LABEL_88;
  }

LABEL_79:
  if ((result & 0xC000000000000001) != 0)
  {
    sub_100754574();
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_132;
    }
  }

  sub_10074F2A4();
  sub_100750504();

LABEL_88:
  sub_100016B4C(v252, v245, &unk_1009281D0, qword_1007A82B0);
  v128 = v235;
  sub_100746AD4();
  sub_10000C620(v256);
  v129 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_metrics;
  swift_beginAccess();
  v130 = v236;
  v131 = &v67[v129];
  v132 = v237;
  (*(v236 + 24))(v131, v128, v237);
  swift_endAccess();
  [v67 setNeedsLayout];
  (*(v130 + 8))(v128, v132);
  if (v10)
  {
    v133 = sub_100743844();
  }

  else
  {
    v133 = 0;
  }

  sub_100743864();
  v134 = v238;
  sub_1002898DC(v133, v238, v135);

  v136 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_screenshotsDisplayConfiguration;
  swift_beginAccess();
  sub_1000243DC(v134, &v67[v136]);
  swift_endAccess();
  sub_10062F1F4();
  sub_100024440(v134);
  if (v10)
  {
    v10 = sub_100743844();
  }

  *&v67[OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_platform] = v10;

  sub_10062F3F8();

  v137 = v253;
  (v62[1].name)(v64, v254, v253);
  v138 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_screenshotsDisplayStyle;
  swift_beginAccess();
  (v62[1].attr)(&v67[v138], v64, v137);
  swift_endAccess();
  v62 = &stru_1008F2000;
  [v67 setNeedsLayout];
  v234(v64, v137);
  if (v246)
  {
    (*(v225 + 104))(v220, enum case for VideoFillMode.scaleAspectFill(_:), v226);

    sub_10074EC14();
    sub_10074F2A4();
    v139 = v245;
    sub_100750504();

    (*(v223 + 56))(v139, 0, 1, v224);
    sub_10074EBB4();
    sub_10074EBF4();
    sub_10074EBC4();
    sub_10074EBA4();
    sub_10074EC04();
    sub_100747D74();
    sub_1007464C4();
    sub_1007526E4();
    sub_10074EB94();
    v140 = v227;
    sub_10074EC24();
    v141 = sub_100741264();
    (*(*(v141 - 8) + 56))(v140, 0, 1, v141);
    v142 = v229;
    sub_10074EBE4();
    v143 = v228;
    sub_10074EBD4();
    type metadata accessor for VideoView(0);
    sub_100224CDC(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
    v144 = sub_1007464A4();
    sub_10000C8CC(v143, &unk_1009281C0, qword_1007ABBB0);
    sub_10000C8CC(v142, &unk_1009281C0, qword_1007ABBB0);
    sub_10000C8CC(v140, &unk_100923970, &qword_1007A6B90);
    sub_10000C8CC(v256, &unk_1009276E0, &unk_1007A5C70);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v146 = Strong;
      v147 = [Strong superview];
      if (v147)
      {
        v148 = v147;
        sub_100016C60(0, &qword_100922300, UIView_ptr);
        v149 = v67;
        v150 = sub_100753FC4();

        if ((v150 & 1) == 0)
        {
          goto LABEL_108;
        }

        v151 = swift_unknownObjectWeakLoadStrong();
        if (!v151)
        {
          goto LABEL_108;
        }

        v146 = v151;
        [v151 removeFromSuperview];
      }
    }

LABEL_108:
    swift_unknownObjectWeakAssign();
    v160 = swift_unknownObjectWeakLoadStrong();
    v62 = &stru_1008F2000;
    if (v160)
    {
      v161 = v160;
      [v67 addSubview:v160];
    }

    sub_10062FDFC();
    [v67 setNeedsLayout];

    v162 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_creativeArtworkView;
    v163 = *&v67[OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_creativeArtworkView];
    v155 = v248;
    if (v163)
    {
      [v163 removeFromSuperview];
      v164 = *&v67[v162];
    }

    else
    {
      v164 = 0;
    }

    v165 = v249;
    *&v67[v162] = 0;

    [v67 setNeedsLayout];

    (*(v230 + 8))(v243, v231);
LABEL_147:
    [v67 v62[51].attr];

    (*(v155 + 8))(v165, v250);
    sub_10000C8CC(v252, &unk_1009281D0, qword_1007A82B0);
    [v67 setHidden:0];

    v10 = v206;
    attr = v234;
    goto LABEL_148;
  }

  if (!v241)
  {
LABEL_134:
    v191 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_creativeArtworkView;
    v192 = *&v67[OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_creativeArtworkView];
    if (v192)
    {
      [v192 removeFromSuperview];
      v193 = *&v67[v191];
    }

    else
    {
      v193 = 0;
    }

    v155 = v248;
    v165 = v249;
    *&v67[v191] = 0;

    [v67 v62[51].attr];
    v194 = swift_unknownObjectWeakLoadStrong();
    if (!v194)
    {
      goto LABEL_144;
    }

    v195 = v194;
    sub_100224CDC(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
    v196 = [v195 superview];
    if (v196)
    {
      v197 = v196;
      sub_100016C60(0, &qword_100922300, UIView_ptr);
      v198 = v67;
      v199 = sub_100753FC4();

      v165 = v249;
      if ((v199 & 1) == 0)
      {
        goto LABEL_144;
      }

      v200 = swift_unknownObjectWeakLoadStrong();
      if (!v200)
      {
        goto LABEL_144;
      }

      v195 = v200;
      [v200 removeFromSuperview];
    }

    else
    {
      v165 = v249;
    }

LABEL_144:
    swift_unknownObjectWeakAssign();
    v201 = swift_unknownObjectWeakLoadStrong();
    if (v201)
    {
      v202 = v201;
      [v67 addSubview:v201];
    }

    sub_10062FDFC();
    [v67 v62[51].attr];
    goto LABEL_147;
  }

  result = sub_10074F794();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_102;
    }

    goto LABEL_133;
  }

LABEL_132:
  v189 = result;
  v190 = sub_100754664();
  result = v189;
  if (!v190)
  {
LABEL_133:

    goto LABEL_134;
  }

LABEL_102:
  if ((result & 0xC000000000000001) != 0)
  {
LABEL_151:
    sub_100754574();
    v152 = v210;
LABEL_105:

    v153 = v207;
    v154 = v250;
    v104(v207, v249, v250);
    v155 = v248;
    v156 = (*(v248 + 88))(v153, v154);
    v157 = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
    (*(v155 + 8))(v153, v154);
    if (v156 == v157)
    {
      v158 = 1;
      v159 = v218;
    }

    else
    {
      v166 = sub_10074F784();
      v159 = v218;
      sub_1002898DC(v166, v218, v167);

      v158 = 0;
    }

    v168 = v208;
    v169 = v209;
    (*(v208 + 56))(v159, v158, 1, v209);
    (*(v225 + 104))(v214, enum case for VideoFillMode.scaleAspectFill(_:), v226);
    sub_10074EC14();
    sub_10074F2A4();
    v170 = v213;
    sub_100750504();

    (*(v223 + 56))(v170, 0, 1, v224);
    sub_10074EBB4();
    sub_10074EBF4();
    sub_10074EBC4();
    sub_10074EBA4();
    sub_10074EC04();
    sub_100016B4C(v159, v152, &qword_100923450, &qword_1007A6568);
    if ((*(v168 + 48))(v152, 1, v169) == 1)
    {
      sub_10000C8CC(v152, &qword_100923450, &qword_1007A6568);
    }

    else
    {
      sub_100024440(v152);
    }

    sub_100747D74();
    sub_1007464C4();
    sub_1007526E4();
    sub_10074EB94();
    v171 = v227;
    sub_10074EC24();
    v172 = sub_100741264();
    (*(*(v172 - 8) + 56))(v171, 0, 1, v172);
    v173 = v229;
    sub_10074EBE4();
    v174 = v228;
    sub_10074EBD4();
    type metadata accessor for VideoView(0);
    sub_100224CDC(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
    v175 = sub_1007464A4();
    sub_10000C8CC(v174, &unk_1009281C0, qword_1007ABBB0);
    sub_10000C8CC(v173, &unk_1009281C0, qword_1007ABBB0);
    sub_10000C8CC(v171, &unk_100923970, &qword_1007A6B90);
    sub_10000C8CC(v256, &unk_1009276E0, &unk_1007A5C70);
    v176 = swift_unknownObjectWeakLoadStrong();
    if (!v176)
    {
      goto LABEL_124;
    }

    v177 = v176;
    v178 = [v176 superview];
    if (v178)
    {
      v179 = v178;
      sub_100016C60(0, &qword_100922300, UIView_ptr);
      v180 = v67;
      v181 = sub_100753FC4();

      v155 = v248;
      if ((v181 & 1) == 0)
      {
        goto LABEL_124;
      }

      v182 = swift_unknownObjectWeakLoadStrong();
      if (!v182)
      {
        goto LABEL_124;
      }

      v177 = v182;
      [v182 removeFromSuperview];
    }

LABEL_124:
    swift_unknownObjectWeakAssign();
    v183 = swift_unknownObjectWeakLoadStrong();
    if (v183)
    {
      v184 = v183;
      [v67 addSubview:v183];
    }

    sub_10062FDFC();
    v62 = &stru_1008F2000;
    [v67 setNeedsLayout];

    v185 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_creativeArtworkView;
    v186 = *&v67[OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_creativeArtworkView];
    v187 = v218;
    if (v186)
    {
      [v186 removeFromSuperview];
      v188 = *&v67[v185];
    }

    else
    {
      v188 = 0;
    }

    *&v67[v185] = 0;

    [v67 setNeedsLayout];

    (*(v230 + 8))(v217, v231);
    sub_10000C8CC(v187, &qword_100923450, &qword_1007A6568);
    v165 = v249;
    goto LABEL_147;
  }

  v152 = v210;
  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_105;
  }

  __break(1u);
  return result;
}

uint64_t sub_100222B00@<X0>(uint64_t a2@<X8>)
{
  if (sub_1007537D4())
  {
    v3 = sub_1007504F4();
    v4 = *(*(v3 - 8) + 56);
    v5 = v3;
    v6 = a2;
    v7 = 1;
    goto LABEL_19;
  }

  v8 = sub_100753094();
  v10 = v9;
  if (v8 == sub_100753094() && v10 == v11)
  {

    goto LABEL_15;
  }

  v13 = sub_100754754();

  if (v13)
  {
LABEL_15:
    if (qword_100920638 != -1)
    {
      swift_once();
    }

    v21 = sub_1007504F4();
    v22 = v21;
    v23 = qword_10097E7A8;
    goto LABEL_18;
  }

  v14 = sub_100753094();
  v16 = v15;
  if (v14 == sub_100753094() && v16 == v17)
  {
  }

  else
  {
    v19 = sub_100754754();

    if ((v19 & 1) == 0)
    {
      sub_1007504D4();
      v20 = sub_1007504F4();
      v4 = *(*(v20 - 8) + 56);
      v5 = v20;
      v6 = a2;
      v7 = 0;
      goto LABEL_19;
    }
  }

  if (qword_100920640 != -1)
  {
    swift_once();
  }

  v21 = sub_1007504F4();
  v22 = v21;
  v23 = qword_10097E7C0;
LABEL_18:
  v24 = sub_10000D0FC(v21, v23);
  v26 = *(v22 - 8);
  (*(v26 + 16))(a2, v24, v22);
  v4 = *(v26 + 56);
  v6 = a2;
  v7 = 0;
  v5 = v22;
LABEL_19:

  return v4(v6, v7, 1, v5);
}

void sub_100222DA4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = sub_10074A7F4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = (&v74 - v14);
  v16 = sub_10074F314();
  __chkstk_darwin(v16 - 8);
  if ((*(a2 + 32) & 1) == 0)
  {
    v76 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    v77 = a4;
    v78 = v12;
    v82 = a1;
    v18 = *(a2 + 16);
    v19 = *(a2 + 24);
    v83 = v4;
    v20 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension37ContentSearchResultCollectionViewCell_screenshots);
    v21 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_imageViews;
    swift_beginAccess();
    v80 = v20;
    v22 = *(v20 + v21);
    if (v22 >> 62)
    {
      v23 = sub_100754664();
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v81 = v15;
    v24 = v83;
    if (v23)
    {
      if (v23 < 1)
      {
        __break(1u);
        goto LABEL_41;
      }

      v25 = a3;
      v79 = v10;
      v75 = v9;

      v26 = 0;
      do
      {
        if ((v22 & 0xC000000000000001) != 0)
        {
          v27 = sub_100754574();
        }

        else
        {
          v27 = *(v22 + v26 + 4);
        }

        v28 = v27;
        ++v26;
        v84 = v27;
        type metadata accessor for BorderedScreenshotView(0);
        sub_100224CDC(&qword_100923470, type metadata accessor for BorderedScreenshotView, &protocol conformance descriptor for NSObject);
        v29 = v28;
        sub_1007544E4();
        sub_100744264();
        sub_100016994(v85);
        v30 = *&v29[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView];
        v86.value.super.isa = 0;
        v86.is_nil = 0;
        sub_100743384(v86, v31);
      }

      while (v23 != v26);

      v9 = v75;
      v10 = v79;
      a3 = v25;
      v15 = v81;
      v24 = v83;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v33 = Strong;
      [*(Strong + qword_10093CB50) setImage:0];
      v84 = v33;
      type metadata accessor for VideoView(0);
      sub_100224CDC(&qword_10093DD00, type metadata accessor for VideoView, &protocol conformance descriptor for NSObject);
      v34 = v33;
      sub_1007544E4();
      sub_100744264();
      v24 = v83;

      sub_100016994(v85);
    }

    v24 = *(v24 + OBJC_IVAR____TtC22SubscribePageExtension37ContentSearchResultCollectionViewCell_lockupView);
    a2 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
    v35 = *(v24 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
    v87.value.super.isa = 0;
    v87.is_nil = 0;
    sub_100743384(v87, v36);

    v37 = *(v24 + a2);
    v38 = sub_1007433C4();
    sub_100224CDC(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v39 = v37;
    v83 = a3;
    sub_100744274();

    if (!sub_10074EF24())
    {
LABEL_19:
      sub_100745E24();
      v43 = v78;
      (*(v10 + 104))(v78, enum case for ScreenshotsDisplayStyle.noScreenshots(_:), v9);
      sub_100224CDC(&qword_10092E508, &type metadata accessor for ScreenshotsDisplayStyle, &protocol conformance descriptor for ScreenshotsDisplayStyle);
      v44 = sub_100753014();
      v47 = *(v10 + 8);
      v45 = v10 + 8;
      v46 = v47;
      v47(v43, v9);
      if (v44)
      {
LABEL_46:
        v46(v15, v9);
        return;
      }

      v79 = v45;
      v48 = sub_10074EF34();
      v50 = v49;
      v51 = sub_10074EFB4();
      v53 = v52;
      v54 = sub_10074EED4();
      if (v54)
      {
        v55 = sub_100748644();

        if (v55)
        {
          v56 = sub_10074F764();
          v54 = v57;
        }

        else
        {
          v56 = 0;
          v54 = 0;
        }
      }

      else
      {
        v56 = 0;
      }

      v58 = [v77 traitCollection];
      v59 = sub_1001D8750(v48, v50, v51, v53, v56, v54, v58, v18, v19);
      v61 = v60;

      v62 = sub_100745E04();
      v63 = sub_100745DE4();
      v64 = sub_100745DD4();
      if (v64 >> 62)
      {
        v70 = v64;
        v65 = sub_100754664();
        v64 = v70;
      }

      else
      {
        v65 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v66 = v83;
      v15 = v81;
      if (v65)
      {
        if ((v64 & 0xC000000000000001) != 0)
        {
          v67 = sub_100754574();
        }

        else
        {
          if (!*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_51;
          }

          v67 = *(v64 + 32);
        }
      }

      else
      {

        v67 = 0;
      }

      v68 = sub_100745E54();
      if (v68 >> 62)
      {
        v71 = v68;
        v72 = sub_100754664();
        v68 = v71;
        if (v72)
        {
          goto LABEL_35;
        }
      }

      else if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_35:
        if ((v68 & 0xC000000000000001) != 0)
        {
          v69 = sub_100754574();
          goto LABEL_38;
        }

        if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v69 = *(v68 + 32);

LABEL_38:

LABEL_45:
          v73 = [v77 traitCollection];
          sub_1006A541C(v62, v63, v67, v69, v73, v66, v15, v59, v61);

          goto LABEL_46;
        }

LABEL_51:
        __break(1u);
        return;
      }

      v69 = 0;
      goto LABEL_45;
    }

    v79 = v38;
    v40 = qword_100920548;
    v22 = *(v24 + a2);
    if (v40 == -1)
    {
LABEL_16:
      v41 = sub_100747064();
      sub_10000D0FC(v41, qword_10097E3A8);
      sub_100746F34();
      [v22 contentMode];
      sub_10074F374();
      sub_10074F324();
      sub_100743364();
      [v22 setContentMode:sub_10074F184()];
      sub_100747FB4();
      sub_1007433A4();
      if (!sub_10074F1E4())
      {
        sub_100016C60(0, &qword_100923500, UIColor_ptr);
        sub_100753E34();
      }

      sub_100743224();
      v42 = *(v24 + a2);
      sub_100744204();

      v15 = v81;
      goto LABEL_19;
    }

LABEL_41:
    swift_once();
    goto LABEL_16;
  }
}

uint64_t sub_100223690(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v144 = a5;
  v145 = a3;
  v177 = a2;
  v6 = sub_10000C518(&unk_100934D80, &qword_1007BC850);
  __chkstk_darwin(v6 - 8);
  v140 = &v139 - v7;
  v142 = sub_100746A94();
  v149 = *(v142 - 8);
  __chkstk_darwin(v142);
  v9 = &v139 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v139 - v11;
  __chkstk_darwin(v13);
  v143 = &v139 - v14;
  v15 = sub_10000C518(&unk_1009281D0, qword_1007A82B0);
  __chkstk_darwin(v15 - 8);
  v150 = &v139 - v16;
  v17 = sub_100754724();
  v147 = *(v17 - 8);
  v148 = v17;
  __chkstk_darwin(v17);
  v146 = &v139 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10074A7F4();
  v173 = *(v19 - 8);
  v174 = v19;
  __chkstk_darwin(v19);
  v21 = &v139 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10074A8C4();
  v171 = *(v22 - 8);
  v172 = v22;
  __chkstk_darwin(v22);
  v170 = &v139 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10074CD14();
  v167 = *(v24 - 8);
  v168 = v24;
  __chkstk_darwin(v24);
  v166 = &v139 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1007479B4();
  v182 = *(v26 - 8);
  __chkstk_darwin(v26);
  v28 = &v139 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v180 = &v139 - v30;
  v183 = sub_10074A8A4();
  v181 = *(v183 - 1);
  __chkstk_darwin(v183);
  v169 = &v139 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v139 - v33;
  sub_100753BA4();
  v36 = v35;
  v38 = v37;
  v39 = sub_10074EF34();
  v156 = v40;
  v157 = v39;
  v41 = sub_10074EFB4();
  v158 = v42;
  v159 = v41;
  if (sub_10074EED4() && (v43 = sub_100748644(), , v43))
  {
    v44 = sub_10074F764();
    v163 = v45;
    v164 = v44;
  }

  else
  {
    v163 = 0;
    v164 = 0;
  }

  sub_100745E34();
  v46 = [v177 traitCollection];
  if (qword_100920410 != -1)
  {
    swift_once();
  }

  v47 = v183;
  v48 = sub_10000D0FC(v183, qword_10097E010);
  v160 = *(v181 + 16);
  v161 = v181 + 16;
  v160(v34, v48, v47);
  v49 = sub_100753804();
  v175 = v21;
  v176 = a1;
  v141 = v12;
  v139 = v9;
  if (v49)
  {
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v50 = qword_10093FF40;
  }

  else
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v50 = qword_10093FF58;
  }

  v51 = sub_10000D0FC(v26, v50);
  v52 = v182;
  (*(v182 + 16))(v28, v51, v26);
  (*(v52 + 32))();
  v53 = [v46 preferredContentSizeCategory];
  sub_100753924();
  v165 = v46;

  sub_100747964();
  sub_100747994();
  v179 = v34;
  sub_10074A894();
  sub_10074A884();
  v54 = sub_100750F34();
  swift_allocObject();
  v155 = sub_100750F14();
  v55 = objc_opt_self();
  v153 = v55;
  v56 = [v55 preferredFontForTextStyle:UIFontTextStyleBody];
  v57 = sub_10074F3F4();
  v220[3] = v57;
  v178 = sub_100224CDC(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v220[4] = v178;
  v58 = sub_10000D134(v220);
  v59 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v60 = *(v57 - 8);
  v162 = v26;
  v154 = *(v60 + 104);
  v61 = v60 + 104;
  v151 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v154(v58, enum case for Feature.measurement_with_labelplaceholder(_:), v57);
  v152 = v61;
  sub_10074FC74();
  sub_10000C620(v220);
  v62 = v166;
  sub_10074CD04();
  sub_10074CCE4();
  v63 = v168;
  v167 = *(v167 + 8);
  (v167)(v62, v168);
  v64 = [v55 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v219[3] = v57;
  v219[4] = v178;
  v65 = sub_10000D134(v219);
  v66 = v59;
  v67 = v154;
  v154(v65, v66, v57);
  sub_10074FC74();
  sub_10000C620(v219);
  sub_10074CD04();
  sub_10074CCE4();
  v68 = v167;
  (v167)(v62, v63);
  v69 = [v153 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v218[3] = v57;
  v218[4] = v178;
  v70 = sub_10000D134(v218);
  v67(v70, v151, v57);
  sub_10074FC74();
  sub_10000C620(v218);
  sub_10074CD04();
  sub_10074CCE4();
  v68(v62, v63);
  sub_10001BB7C();
  swift_allocObject();
  v71 = sub_100750F14();

  sub_10001BB7C();
  swift_allocObject();
  v72 = sub_100750F14();
  v160(v169, v179, v183);
  v217 = &protocol witness table for LayoutViewPlaceholder;
  v216 = v54;
  v73 = v155;
  v215 = v155;
  v214 = 0;
  *&v212[40] = 0u;
  v213 = 0u;
  sub_10000C824(v220, v212);
  sub_10000C824(v219, &v211);
  v210 = 0;
  v208 = 0u;
  v209 = 0u;
  v207 = 0;
  v205 = 0u;
  v206 = 0u;

  v74 = sub_100750F24();
  v204 = &protocol witness table for LayoutViewPlaceholder;
  v203 = v54;
  v202 = v74;
  v201 = 0;
  v199 = 0u;
  v200 = 0u;
  v198 = 0;
  v196 = 0u;
  v197 = 0u;
  v195 = 0;
  v193 = 0u;
  v194 = 0u;
  v192 = 0;
  v191 = 0u;
  *&v190[40] = 0u;
  sub_10000C824(v218, v190);
  v188 = v54;
  v189 = &protocol witness table for LayoutViewPlaceholder;
  v186 = &protocol witness table for LayoutViewPlaceholder;
  v187 = v71;
  v185 = v54;
  v184 = v72;
  v75 = v170;
  sub_10074A8B4();
  sub_100751034();
  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_1007A5CF0;
  v77 = v165;
  *(v76 + 32) = v165;
  v78 = v77;
  v79 = sub_100751044();
  sub_100224CDC(&unk_10092AC80, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
  v80 = v172;
  sub_100750404();

  (*(v171 + 8))(v75, v80);
  sub_10000C620(v218);
  sub_10000C620(v219);
  sub_10000C620(v220);
  (*(v182 + 8))(v180, v162);
  (*(v181 + 8))(v179, v183);
  v82 = v175;
  v81 = v176;
  sub_100745E24();
  v83 = sub_10074A7E4();
  if ((v83 & 1) == 0 || (sub_100668E0C(v83) & 1) == 0)
  {
    return (*(v173 + 8))(v82, v174);
  }

  if (qword_100921708 != -1)
  {
    swift_once();
  }

  v84 = sub_100750B04();
  sub_10000D0FC(v84, qword_100982098);
  v85 = v146;
  sub_1007502D4();
  v86 = v177;
  sub_100750564();
  (*(v147 + 8))(v85, v148);
  v87 = sub_100745E04();
  v88 = sub_100745DE4();
  v89 = sub_100745DD4();
  if (v89 >> 62)
  {
    v91 = v89;
    v92 = sub_100754664();
    v89 = v91;
    if (v92)
    {
      goto LABEL_20;
    }

LABEL_26:

    v73 = 0;
    goto LABEL_27;
  }

  if (!*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_26;
  }

LABEL_20:
  if ((v89 & 0xC000000000000001) != 0)
  {
    v73 = sub_100754574();
  }

  else
  {
    if (!*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_61;
    }

    v73 = *(v89 + 32);
  }

LABEL_27:
  v93 = sub_100745E54();
  if (v93 >> 62)
  {
    v95 = v93;
    v96 = sub_100754664();
    v93 = v95;
    if (v96)
    {
      goto LABEL_29;
    }

LABEL_34:

    v183 = 0;
    goto LABEL_35;
  }

  if (!*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_34;
  }

LABEL_29:
  if ((v93 & 0xC000000000000001) != 0)
  {
    v94 = sub_100754574();
  }

  else
  {
    if (!*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_63;
    }
  }

  v183 = v94;

LABEL_35:
  v97 = [v86 traitCollection];
  sub_100222B00(v150);

  v71 = sub_100745E04();
  v72 = sub_100745DE4();
  v98 = sub_100745DD4();
  if (v98 >> 62)
  {
    v99 = v98;
    v100 = sub_100754664();
    v98 = v99;
    if (v100)
    {
LABEL_37:
      if ((v98 & 0xC000000000000001) == 0)
      {
        if (!*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_65;
        }

        v81 = *(v98 + 32);

        goto LABEL_40;
      }

LABEL_61:
      v81 = sub_100754574();
LABEL_40:

      goto LABEL_43;
    }
  }

  else if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_37;
  }

  v81 = 0;
LABEL_43:
  v101 = sub_100745E54();
  if (v101 >> 62)
  {
    v104 = v101;
    v105 = sub_100754664();
    v101 = v104;
    v182 = v73;
    if (v105)
    {
LABEL_45:
      if ((v101 & 0xC000000000000001) == 0)
      {
        if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v103 = *(v101 + 32);

LABEL_48:

          goto LABEL_51;
        }

LABEL_65:
        __break(1u);
LABEL_66:
        v179 = sub_100754664();
        if (v81)
        {
          goto LABEL_55;
        }

        goto LABEL_67;
      }

LABEL_63:
      v103 = sub_100754574();
      goto LABEL_48;
    }
  }

  else
  {
    v102 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v182 = v73;
    if (v102)
    {
      goto LABEL_45;
    }
  }

  v103 = 0;
LABEL_51:
  v106 = sub_10074A7E4();
  v181 = v88;
  if ((v106 & 1) == 0)
  {

    v111 = v149;
    v113 = v142;
    v112 = v143;
    (*(v149 + 104))(v143, enum case for LockupMediaLayout.DisplayType.none(_:), v142);
LABEL_88:
    v135 = v183;
    type metadata accessor for LockupMediaView(0);
    v136 = v150;
    v137 = v86;
    v138 = v175;
    sub_1006A6BAC(v87, v181, v182, v135, v150, v112, v137, v175, v36, v38);

    (*(v111 + 8))(v112, v113);
    sub_10000C8CC(v136, &unk_1009281D0, qword_1007A82B0);
    return (*(v173 + 8))(v138, v174);
  }

  if (v72 | v71)
  {
    v114 = v141;
    sub_100750504();

    v111 = v149;
    v113 = v142;
    (*(v149 + 104))(v114, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v142);
    v112 = v143;
    (*(v111 + 32))(v143, v114, v113);
    goto LABEL_88;
  }

  v108 = sub_100631A30(v81, v103, 0, 1, v107);
  v72 = v108;
  v88 = v108 >> 62;
  if (v108 >> 62)
  {
    goto LABEL_66;
  }

  v179 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v81)
  {
LABEL_55:
    v110 = sub_100743844();
    goto LABEL_68;
  }

LABEL_67:
  v110 = 0;
LABEL_68:
  LODWORD(v176) = sub_100631D8C(v110, v109);

  v180 = v87;
  if (v81)
  {
    v115 = sub_100743844();
  }

  else
  {
    v115 = 0;
  }

  v116 = v173;
  v117 = v140;
  v118 = v82;
  v119 = v174;
  (*(v173 + 16))(v140, v118, v174);
  (*(v116 + 56))(v117, 0, 1, v119);
  v120 = sub_1006322B4(v115, v117);

  sub_10000C8CC(v117, &unk_100934D80, &qword_1007BC850);
  if (!v88)
  {
    result = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v87 = v180;
    if (result)
    {
      goto LABEL_73;
    }

LABEL_79:

    goto LABEL_80;
  }

  result = sub_100754664();
  v87 = v180;
  if (!result)
  {
    goto LABEL_79;
  }

LABEL_73:
  if ((v72 & 0xC000000000000001) != 0)
  {
    sub_100754574();
LABEL_76:

    v121 = sub_10074F194();

    if (v121)
    {

      v111 = v149;
      v122 = v141;
      v113 = v142;
      (*(v149 + 104))(v141, enum case for LockupMediaLayout.DisplayType.landscape(_:), v142);
      v112 = v143;
LABEL_87:
      (*(v111 + 32))(v112, v122, v113);
      goto LABEL_88;
    }

LABEL_80:
    v123 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
    v124 = v149;
    v125 = v139;
    v126 = v142;
    v178 = *(v149 + 104);
    v178(v139, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v142);
    v127 = sub_100746A84();
    v172 = *(v124 + 8);
    v172(v125, v126);
    if (((v179 >= v127) & v120) != 0 || (v123 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), v178(v125, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v126), v128 = sub_100746A84(), v129 = v172, v172(v125, v126), ((v179 >= v128) & v176) != 0) || (v123 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), v178(v125, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v126), v130 = sub_100746A84(), v129(v125, v126), v179 >= v130))
    {

      v122 = v141;
      v178(v141, v123, v126);
      v86 = v177;
      v113 = v126;
    }

    else
    {
      v131 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
      v178(v125, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v126);
      v132 = sub_100746A84();

      v129(v125, v126);
      v113 = v126;
      if (v179 == v132)
      {
        v122 = v141;
        v133 = v141;
        v134 = v131;
      }

      else
      {
        v134 = enum case for LockupMediaLayout.DisplayType.none(_:);
        v122 = v141;
        v133 = v141;
      }

      v178(v133, v134, v126);
      v86 = v177;
    }

    v111 = v149;
    v112 = v143;
    v87 = v180;
    goto LABEL_87;
  }

  if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_76;
  }

  __break(1u);
  return result;
}

uint64_t sub_100224CDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t LinkPresentationProvider.presentation(for:)(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v2 - 8);
  v4 = aBlock - v3;
  v5 = sub_100741264();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C518(&qword_10092E510, &qword_1007B3618);
  v9 = sub_100752DE4();
  sub_100744414();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100144D70(v4);
    sub_100225094();
    swift_allocError();
    *v10 = 0;
    sub_100752DA4();
LABEL_6:

    return v9;
  }

  (*(v6 + 32))(v8, v4, v5);
  if ((sub_100744404() & 1) == 0)
  {
    sub_100225094();
    swift_allocError();
    *v19 = 1;
    sub_100752DA4();
    (*(v6 + 8))(v8, v5);
    goto LABEL_6;
  }

  v11 = objc_opt_self();
  sub_100741204(v12);
  v14 = v13;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v9;
  v16[3] = v15;
  v16[4] = a1;
  aBlock[4] = sub_1002254A4;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000E7BD4;
  aBlock[3] = &unk_10086D410;
  v17 = _Block_copy(aBlock);

  v18 = [v11 requestMetadataForURL:v14 completionHandler:v17];
  _Block_release(v17);

  (*(v6 + 8))(v8, v5);
  return v9;
}

unint64_t sub_100225094()
{
  result = qword_10092E518;
  if (!qword_10092E518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092E518);
  }

  return result;
}

uint64_t sub_1002250E8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100225120(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1007521E4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100752224();
  __chkstk_darwin(v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    sub_100752DA4();
  }

  else
  {
    v26 = v15;
    sub_1000A7FA0();
    v25 = v11;
    v24 = sub_100753774();
    v19 = swift_allocObject();
    v19[2] = a1;
    v19[3] = a4;
    v19[4] = a5;
    v19[5] = a3;
    aBlock[4] = sub_1002257FC;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000CF7B0;
    aBlock[3] = &unk_10086D580;
    v20 = _Block_copy(aBlock);
    v21 = a1;

    sub_100752204();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100225808(&qword_1009236B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000C518(&unk_10092F750, &qword_1007A6920);
    sub_1000A8054();
    sub_1007543A4();
    v22 = v24;
    sub_100753784();
    _Block_release(v20);

    (*(v25 + 8))(v13, v10);
    return (*(v26 + 8))(v17, v14);
  }
}

uint64_t sub_10022545C()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_1002254B0(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = a1;
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_6;
  }

  v5 = v4;
  v6 = sub_100225850(a3, v5);

  if ((v6 & 1) == 0)
  {

LABEL_6:
    v4 = 0;
    v7 = a3;
    goto LABEL_7;
  }

  v7 = a3 | 0x8000000000000000;
  v8 = v5;
LABEL_7:
  swift_retain_n();
  sub_100752DB4();
  sub_100079128(v7, v4);
  sub_100079128(v7, v4);
}

double sub_100225588(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100225640(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 16))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10022569C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0;
    }
  }

  return result;
}

unint64_t sub_100225758()
{
  result = qword_10092E5D8;
  if (!qword_10092E5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092E5D8);
  }

  return result;
}

uint64_t sub_1002257AC()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100225808(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100225850(uint64_t a1, void *a2)
{
  v3 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v3 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v30 - v7;
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  v12 = sub_100741264();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100744414();
  v16 = *(v13 + 48);
  if (v16(v11, 1, v12) == 1)
  {
    sub_100144D70(v11);
    return 0;
  }

  (*(v13 + 32))(v15, v11, v12);
  if ((sub_100744404() & 1) == 0)
  {
LABEL_8:
    (*(v13 + 8))(v15, v12);
    return 0;
  }

  v17 = [objc_allocWithZone(LPLinkMetadataPresentationTransformer) init];
  v31 = a2;
  [v17 setMetadata:a2];
  sub_100741204(v18);
  v20 = v19;
  [v17 setURL:v19];

  v21 = [v17 presentationProperties];
  if (([v21 respondsToSelector:"style"] & 1) == 0)
  {
    swift_unknownObjectRelease();

    goto LABEL_8;
  }

  v22 = [v21 style];
  swift_unknownObjectRelease();
  v23 = vdupq_n_s64(v22);
  if (vmaxvq_u8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_100862830, v23), vceqq_s64(unk_100862840, v23)), vuzp1q_s32(vceqq_s64(xmmword_100862850, v23), vceqq_s64(unk_100862860, v23))), vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_100862870, v23), vceqq_s64(unk_100862880, v23)), vuzp1q_s32(vceqq_s64(xmmword_100862890, v23), vceqq_s64(unk_1008628A0, v23))))))
  {
    (*(v13 + 8))(v15, v12);

    return 1;
  }

  v25 = [v31 video];
  if (v25)
  {
    v26 = v25;
    v27 = [v25 youTubeURL];

    if (v27)
    {
      sub_100741224();

      (*(v13 + 8))(v15, v12);
      v28 = 0;
    }

    else
    {
      (*(v13 + 8))(v15, v12);

      v28 = 1;
    }

    v29 = 1;
    (*(v13 + 56))(v5, v28, 1, v12);
    sub_1000498A8(v5, v8);
    if (v16(v8, 1, v12) != 1)
    {
      goto LABEL_17;
    }
  }

  else
  {

    (*(v13 + 8))(v15, v12);
    (*(v13 + 56))(v8, 1, 1, v12);
  }

  v29 = 0;
LABEL_17:
  sub_100144D70(v8);
  return v29;
}

id sub_100225DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension23CollectionTableViewCell_dataSource] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension23CollectionTableViewCell_collectionView] = 0;
  if (a3)
  {
    v6 = sub_100753064();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for CollectionTableViewCell();
  v7 = objc_msgSendSuper2(&v9, "initWithStyle:reuseIdentifier:", a1, v6);

  return v7;
}

id sub_100225EE8(void *a1)
{
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension23CollectionTableViewCell_dataSource] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension23CollectionTableViewCell_collectionView] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CollectionTableViewCell();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_100225FA4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CollectionTableViewCell();
  return objc_msgSendSuper2(&v4, "dealloc");
}

double sub_1002260A4(uint64_t a1)
{
  v193 = sub_10074BD24();
  v173 = *(v193 - 8);
  __chkstk_darwin(v193);
  v174 = &v154 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10074BD44();
  v178 = *(v4 - 8);
  __chkstk_darwin(v4);
  v177 = &v154 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_10074AB44();
  v169 = *(v170 - 8);
  __chkstk_darwin(v170);
  v171 = &v154 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v7 - 8);
  v168 = &v154 - v8;
  v176 = sub_100746584();
  v175 = *(v176 - 8);
  __chkstk_darwin(v176);
  v184 = &v154 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v172 = &v154 - v11;
  __chkstk_darwin(v12);
  v163 = &v154 - v13;
  v167 = sub_100754724();
  v166 = *(v167 - 8);
  __chkstk_darwin(v167);
  v165 = &v154 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_10074F704();
  v191 = *(v192 - 8);
  __chkstk_darwin(v192);
  v164 = &v154 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v190 = &v154 - v17;
  v198 = sub_100743F54();
  v200 = *(v198 - 8);
  __chkstk_darwin(v198);
  v187 = &v154 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v179 = (&v154 - v20);
  __chkstk_darwin(v21);
  v196 = &v154 - v22;
  v183 = sub_10074E984();
  v182 = *(v183 - 1);
  __chkstk_darwin(v183);
  v157 = &v154 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10000C518(&qword_10092C380, &unk_1007B0E90);
  __chkstk_darwin(v24);
  v194 = &v154 - v25;
  v26 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v180 = &v154 - v28;
  v29 = sub_10000C518(&qword_100923228, &unk_1007AB120);
  __chkstk_darwin(v29);
  v31 = &v154 - v30;
  v32 = sub_10000C518(&unk_10093D6E0, &unk_1007A6080);
  __chkstk_darwin(v32 - 8);
  v34 = &v154 - v33;
  v35 = sub_10000C518(&unk_100933370, &unk_1007A8CE0);
  __chkstk_darwin(v35 - 8);
  v161 = &v154 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v181 = &v154 - v38;
  __chkstk_darwin(v39);
  v189 = &v154 - v40;
  sub_100743FA4();
  sub_1002282E4(&qword_10092C388, &type metadata accessor for ProductMedia, &protocol conformance descriptor for ProductMedia);
  v41 = a1;
  sub_1007468B4();
  v42 = v205;
  if (!v205)
  {
    return 0.0;
  }

  v160 = v24;
  v156 = v4;
  v186 = sub_100743F94();
  v197 = sub_100743F34();
  v155 = sub_100743F44();
  v162 = v43;
  v185 = v42;
  v158 = sub_100743F74();
  v188 = v44;
  v199 = sub_10007DC04();
  swift_getKeyPath();
  v195 = v41;
  sub_100746914();

  sub_100028CD0(&v31[*(v29 + 48)], v34);
  v45 = v27;
  v46 = v26;
  if ((*(v27 + 48))(v34, 1, v26) == 1)
  {
    sub_10000C8CC(v31, &unk_10093D6E0, &unk_1007A6080);
    sub_10000C8CC(v34, &unk_10093D6E0, &unk_1007A6080);
    v47 = v182;
    v48 = v189;
    v49 = v183;
    v159 = *(v182 + 56);
    v159(v189, 1, 1, v183);
  }

  else
  {
    swift_getKeyPath();
    v48 = v189;
    sub_1007525B4();

    (*(v27 + 8))(v34, v26);
    v47 = v182;
    v49 = v183;
    v159 = *(v182 + 56);
    v159(v48, 0, 1, v183);
    sub_10000C8CC(v31, &unk_10093D6E0, &unk_1007A6080);
  }

  swift_getKeyPath();
  v50 = v180;
  sub_100746914();

  swift_getKeyPath();
  v51 = v181;
  sub_1007525B4();

  (*(v45 + 8))(v50, v46);
  v52 = v51;
  v159(v51, 0, 1, v49);
  v53 = *(v160 + 48);
  v54 = v194;
  sub_100028D40(v48, v194);
  sub_100028D40(v52, &v54[v53]);
  v55 = *(v47 + 48);
  v56 = v55(v54, 1, v49);
  v183 = (v197 >> 62);
  v57 = v48;
  v58 = v199;
  if (v56 != 1)
  {
    v64 = v161;
    sub_100028D40(v54, v161);
    v65 = v55(&v54[v53], 1, v49);
    v61 = v198;
    if (v65 != 1)
    {
      v74 = v157;
      (*(v47 + 32))(v157, &v54[v53], v49);
      sub_1002282E4(&qword_1009350D0, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
      LODWORD(v182) = sub_100753014();
      v75 = *(v47 + 8);
      v75(v74, v49);
      sub_10000C8CC(v52, &unk_100933370, &unk_1007A8CE0);
      sub_10000C8CC(v189, &unk_100933370, &unk_1007A8CE0);
      v61 = v198;
      v75(v64, v49);
      sub_10000C8CC(v54, &unk_100933370, &unk_1007A8CE0);
      v62 = v197;
      v63 = v183;
      if (v182)
      {
        goto LABEL_22;
      }

LABEL_11:
      v66 = v186;
      if (v63)
      {
        v67 = sub_100754664();
        if (v67)
        {
LABEL_13:
          v68 = v67 - 1;
          if (__OFSUB__(v67, 1))
          {
            __break(1u);
          }

          else if ((v62 & 0xC000000000000001) == 0)
          {
            if ((v68 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (v68 < *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v69 = *(v62 + 8 * v68 + 32);

              v205 = v66;
              if (v69)
              {
                goto LABEL_18;
              }

              goto LABEL_27;
            }

            __break(1u);
            goto LABEL_94;
          }

          v69 = sub_100754574();
          v205 = v66;
          if (v69)
          {
LABEL_18:
            v201 = v69;
            sub_100744514();
            sub_1002282E4(&qword_100929290, &type metadata accessor for MediaPlatform, &protocol conformance descriptor for MediaPlatform);
            v70 = sub_100753014();

            if (!v63)
            {
              v71 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
              v72 = v71 != 1;
              if (v70)
              {
LABEL_39:
                v76 = 0;
                goto LABEL_40;
              }

              goto LABEL_20;
            }

LABEL_38:
            v71 = sub_100754664();
            v72 = v71 != 1;
            if (v70)
            {
              goto LABEL_39;
            }

LABEL_20:
            v73 = v72;
            v66 = v186;
            goto LABEL_29;
          }

LABEL_27:

          if (!v63)
          {
            v71 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v73 = v71 != 1;
LABEL_29:
            if (v63)
            {
              v77 = sub_100754664();
            }

            else
            {
              v77 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v78 = v200;
            v79 = v179;
            if (v77)
            {
              v76 = v73;
              if ((v62 & 0xC000000000000001) != 0)
              {

                v80 = sub_100754574();
                v205 = v66;
                if (v80)
                {
LABEL_35:
                  v201 = v80;
                  sub_100744514();
                  sub_1002282E4(&qword_100929290, &type metadata accessor for MediaPlatform, &protocol conformance descriptor for MediaPlatform);
                  v81 = sub_100753014();

                  if (v81)
                  {
                    goto LABEL_41;
                  }

                  swift_unknownObjectRelease();

                  goto LABEL_85;
                }
              }

              else
              {
                if (!*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
                  goto LABEL_98;
                }

                v80 = *(v62 + 32);

                v205 = v66;
                if (v80)
                {
                  goto LABEL_35;
                }
              }
            }

            else
            {

              v205 = v66;
            }

            swift_unknownObjectRelease();

LABEL_85:

            return 0.0;
          }

          v70 = 0;
          goto LABEL_38;
        }
      }

      else
      {
        v67 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v67)
        {
          goto LABEL_13;
        }
      }

      v205 = v66;
      goto LABEL_27;
    }

    sub_10000C8CC(v52, &unk_100933370, &unk_1007A8CE0);
    v59 = v194;
    sub_10000C8CC(v189, &unk_100933370, &unk_1007A8CE0);
    (*(v47 + 8))(v64, v49);
    v62 = v197;
LABEL_10:
    sub_10000C8CC(v59, &qword_10092C380, &unk_1007B0E90);
    v63 = v183;
    goto LABEL_11;
  }

  sub_10000C8CC(v52, &unk_100933370, &unk_1007A8CE0);
  v59 = v194;
  sub_10000C8CC(v57, &unk_100933370, &unk_1007A8CE0);
  v60 = v55(&v59[v53], 1, v49);
  v61 = v198;
  v62 = v197;
  if (v60 != 1)
  {
    goto LABEL_10;
  }

  sub_10000C8CC(v59, &unk_100933370, &unk_1007A8CE0);
  v63 = v183;
LABEL_22:
  v70 = 1;
  if ((v62 & 0x8000000000000000) != 0 || (v62 & 0x4000000000000000) != 0)
  {
    goto LABEL_38;
  }

  v76 = 0;
  v71 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_40:
  v78 = v200;
  v79 = v179;
LABEL_41:
  sub_100743F64();
  v82 = *(v78 + 104);
  v189 = (v78 + 104);
  v183 = v82;
  (v82)(v79, enum case for ProductMedia.DescriptionPlacement.top(_:), v61);
  v83 = sub_1002282E4(&qword_10092E628, &type metadata accessor for ProductMedia.DescriptionPlacement, &protocol conformance descriptor for ProductMedia.DescriptionPlacement);
  sub_100753274();
  v182 = v83;
  sub_100753274();
  v181 = v71;
  if (v205 == v201 && v206 == v202)
  {
    v84 = 1;
  }

  else
  {
    v84 = sub_100754754();
  }

  v85 = *(v78 + 8);
  (v85)(v79, v61);

  v1 = 0.0;
  v79 = &qword_100920000;
  v200 = v78 + 8;
  v194 = v85;
  if ((v84 & 1) == 0)
  {
    goto LABEL_61;
  }

  v179 = type metadata accessor for PlatformSelectorView();
  swift_getKeyPath();
  v86 = v190;
  sub_100746914();

  sub_10074F674();
  (*(v191 + 8))(v86, v192);
  LODWORD(v180) = v76;
  if (v76)
  {
    if (qword_100920BA8 != -1)
    {
      swift_once();
    }

    [qword_100936900 size];
  }

  else if (v181 > 1)
  {
    sub_100744514();
    sub_10000C518(&unk_1009231A0, qword_1007A5810);
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_1007A5CF0;
    *(v87 + 32) = v186;

    v63 = sub_1007444D4();

    v161 = v155;
    goto LABEL_53;
  }

  sub_100744514();
  v63 = sub_1007444D4();
  v161 = v158;
LABEL_53:
  v197 = v62;

  if (qword_100920BB0 != -1)
  {
LABEL_94:
    swift_once();
  }

  v88 = sub_10000D0FC(v193, qword_100936908);
  sub_10074BD14();
  v89 = v207;
  sub_10000C888(&v205, v207);
  swift_getObjectType();
  v90 = v165;
  sub_100536120(v89);
  sub_100750564();
  v92 = v91;
  (*(v166 + 8))(v90, v167);
  sub_1003FD42C(v63, v92);
  sub_10000C620(&v205);
  if (v63 >> 62)
  {
    sub_100754664();
  }

  v93 = v199;
  sub_100746574();
  v94 = sub_1003FD11C(v63, v93);

  v179 = v94;
  v95 = sub_10074BCD4();
  if (qword_100921018 != -1)
  {
    swift_once();
  }

  v96 = sub_100750534();
  v97 = sub_10000D0FC(v96, qword_100980D80);
  v98 = *(v96 - 8);
  v99 = v168;
  (*(v98 + 16))(v168, v97, v96);
  (*(v98 + 56))(v99, 0, 1, v96);
  (*(v169 + 104))(v171, enum case for DirectionalTextAlignment.none(_:), v170);
  v100 = sub_100745C84();
  v101 = objc_allocWithZone(v100);
  v102 = sub_100745C74();
  [v102 setAttributedText:v95];
  v161 = v95;
  if (qword_100920BA8 != -1)
  {
    swift_once();
  }

  [qword_100936900 size];
  v103 = sub_100750F34();
  swift_allocObject();
  v104 = sub_100750F14();
  (*(v173 + 16))(v174, v88, v193);
  v105 = v175;
  v106 = v163;
  v107 = v176;
  (*(v175 + 16))(v172, v163, v176);
  v207 = v100;
  v208 = &protocol witness table for UILabel;
  v205 = v102;
  v203 = v103;
  v204 = &protocol witness table for LayoutViewPlaceholder;
  v201 = v104;
  v108 = v102;

  v109 = v177;
  sub_10074BD34();
  v58 = v199;
  [v199 pageMarginInsets];
  sub_100753BA4();
  sub_1002282E4(&qword_10092E630, &type metadata accessor for PlatformSelectorViewLayout, &protocol conformance descriptor for PlatformSelectorViewLayout);
  v110 = v156;
  sub_100750404();
  sub_100753BC4();
  v1 = v111;

  (*(v178 + 8))(v109, v110);
  (*(v105 + 8))(v106, v107);
  v61 = v198;
  v85 = v194;
  v76 = v180;
  v79 = &qword_100920000;
LABEL_61:
  (v183)(v187, enum case for ProductMedia.DescriptionPlacement.bottom(_:), v61);
  sub_100753274();
  sub_100753274();
  if (v205 == v201 && v206 == v202)
  {
    (v85)(v187, v61);

    goto LABEL_65;
  }

  v112 = sub_100754754();
  (v85)(v187, v61);

  if (v112)
  {
LABEL_65:
    type metadata accessor for PlatformSelectorView();
    swift_getKeyPath();
    v113 = v190;
    sub_100746914();

    sub_10074F674();
    (*(v191 + 8))(v113, v192);
    if (!v76)
    {
      if (v181 > 1)
      {

        sub_100744514();
        sub_10000C518(&unk_1009231A0, qword_1007A5810);
        v114 = swift_allocObject();
        *(v114 + 16) = xmmword_1007A5CF0;
        *(v114 + 32) = v186;

        v115 = sub_1007444D4();
        v158 = v155;
LABEL_71:

        if (v79[374] != -1)
        {
          swift_once();
        }

        v116 = sub_10000D0FC(v193, qword_100936908);
        sub_10074BD14();
        v117 = v207;
        sub_10000C888(&v205, v207);
        swift_getObjectType();
        v118 = v165;
        sub_100536120(v117);
        sub_100750564();
        v120 = v119;
        (*(v166 + 8))(v118, v167);
        sub_1003FD42C(v115, v120);
        sub_10000C620(&v205);
        if (v115 >> 62)
        {
          sub_100754664();
        }

        sub_100746574();
        v121 = sub_1003FD11C(v115, v58);

        v197 = v121;
        v122 = sub_10074BCD4();
        if (qword_100921018 != -1)
        {
          swift_once();
        }

        v123 = sub_100750534();
        v124 = sub_10000D0FC(v123, qword_100980D80);
        v125 = *(v123 - 8);
        v126 = v168;
        (*(v125 + 16))(v168, v124, v123);
        (*(v125 + 56))(v126, 0, 1, v123);
        (*(v169 + 104))(v171, enum case for DirectionalTextAlignment.none(_:), v170);
        v127 = sub_100745C84();
        v128 = objc_allocWithZone(v127);
        v129 = sub_100745C74();
        [v129 setAttributedText:v122];
        v189 = v122;
        if (qword_100920BA8 != -1)
        {
          swift_once();
        }

        [qword_100936900 size];
        v130 = sub_100750F34();
        swift_allocObject();
        v131 = sub_100750F14();
        (*(v173 + 16))(v174, v116, v193);
        v132 = v175;
        v133 = v184;
        v134 = v176;
        (*(v175 + 16))(v172, v184, v176);
        v207 = v127;
        v208 = &protocol witness table for UILabel;
        v205 = v129;
        v203 = v130;
        v204 = &protocol witness table for LayoutViewPlaceholder;
        v201 = v131;
        v135 = v129;

        v136 = v177;
        sub_10074BD34();
        [v199 pageMarginInsets];
        sub_100753BA4();
        sub_1002282E4(&qword_10092E630, &type metadata accessor for PlatformSelectorViewLayout, &protocol conformance descriptor for PlatformSelectorViewLayout);
        v137 = v156;
        sub_100750404();
        sub_100753BC4();
        v139 = v138;

        (*(v178 + 8))(v136, v137);
        (*(v132 + 8))(v133, v134);
        goto LABEL_81;
      }

LABEL_70:
      sub_100744514();
      v115 = sub_1007444D4();
      goto LABEL_71;
    }

    if (qword_100920BA8 == -1)
    {
LABEL_67:
      [qword_100936900 size];
      goto LABEL_70;
    }

LABEL_98:
    swift_once();
    goto LABEL_67;
  }

  v139 = 0.0;
  v188 = v162;
LABEL_81:

  LODWORD(v197) = v1 > 0.0;
  LODWORD(v193) = v139 > 0.0;
  v140 = sub_10007DC04();
  swift_getKeyPath();
  v141 = v190;
  sub_100746914();

  sub_10074F5C4();
  v143 = v142;
  v144 = *(v191 + 8);
  v145 = v192;
  v144(v141, v192);
  swift_getKeyPath();
  v146 = v164;
  sub_100746914();

  sub_10074F5E4();
  v148 = v147;
  v144(v146, v145);
  swift_getKeyPath();
  sub_100746914();

  sub_10074F674();
  v150 = v149;
  v144(v141, v145);
  sub_1001130AC(v185, v197, v193, v140, v1, v139, v143, v148, v150);
  v152 = v151;

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  (v194)(v196, v198);
  return v152;
}

uint64_t sub_1002282E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_10022832C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_100752AC4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_itemLayoutContext;
  v15 = sub_1007469A4();
  (*(*(v15 - 8) + 56))(&v4[v14], 1, 1, v15);
  v16 = OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_lockupView;
  *&v4[v16] = [objc_allocWithZone(type metadata accessor for SmallLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_separatorView] = 0;
  v17 = OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_separator;
  v18 = sub_100751374();
  (*(*(v18 - 8) + 56))(&v4[v17], 1, 1, v18);
  v4[OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_hideSeparatorIndependentlyOfLayout] = 0;
  v47.receiver = v4;
  v47.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  v20 = [v19 contentView];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v20 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  [v19 setClipsToBounds:0];
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v24 = OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_lockupView;
  v25 = *(*&v19[OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleLabel);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v26 = v25;
  sub_100752A74();
  sub_10000C8CC(&v43, &unk_100923520, &qword_1007A5A70);
  sub_10000C8CC(&v45, &unk_100923520, &qword_1007A5A70);
  sub_100753C74();

  v27 = *(v11 + 8);
  v27(v13, v10);
  v28 = *(*&v19[v24] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v29 = v28;
  sub_100752A74();
  sub_10000C8CC(&v43, &unk_100923520, &qword_1007A5A70);
  sub_10000C8CC(&v45, &unk_100923520, &qword_1007A5A70);
  sub_100753C74();

  v27(v13, v10);
  v30 = *(*&v19[v24] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v31 = v30;
  sub_100752A74();
  sub_10000C8CC(&v43, &unk_100923520, &qword_1007A5A70);
  sub_10000C8CC(&v45, &unk_100923520, &qword_1007A5A70);
  sub_100753C74();

  v27(v13, v10);
  v32 = *(*&v19[v24] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_ordinalLabel);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v33 = v32;
  sub_100752A74();
  sub_10000C8CC(&v43, &unk_100923520, &qword_1007A5A70);
  sub_10000C8CC(&v45, &unk_100923520, &qword_1007A5A70);
  sub_100753C74();

  v27(v13, v10);
  v34 = *&v19[v24];
  v35 = *(v34 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel);
  if (v35)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v36 = v35;
    sub_100752A74();
    sub_10000C8CC(&v43, &unk_100923520, &qword_1007A5A70);
    sub_10000C8CC(&v45, &unk_100923520, &qword_1007A5A70);
    sub_100753C74();

    v27(v13, v10);
    v34 = *&v19[v24];
  }

  v37 = *(v34 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel);
  if (v37)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v38 = v37;
    sub_100752A74();
    sub_10000C8CC(&v43, &unk_100923520, &qword_1007A5A70);
    sub_10000C8CC(&v45, &unk_100923520, &qword_1007A5A70);
    sub_100753C74();

    v27(v13, v10);
    v34 = *&v19[v24];
  }

  v39 = *(v34 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v40 = v39;
  sub_100752A74();
  sub_10000C8CC(&v43, &unk_100923520, &qword_1007A5A70);
  sub_10000C8CC(&v45, &unk_100923520, &qword_1007A5A70);
  sub_100753C74();

  v27(v13, v10);
  v41 = [v19 contentView];

  [v41 addSubview:*&v19[v24]];
  return v19;
}

id sub_100228B80()
{
  v1 = sub_10000C518(&qword_100933250, &unk_1007B3A50);
  __chkstk_darwin(v1 - 8);
  v3 = &v27 - v2;
  v4 = sub_100751374();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  v11 = OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_separator;
  swift_beginAccess();
  sub_100229A24(&v0[v11], v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10000C8CC(v3, &qword_100933250, &unk_1007B3A50);
    result = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_separatorView];
    if (result)
    {
      return [result setHidden:1];
    }
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    v13 = OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_separatorView;
    v14 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_separatorView];
    if (v14)
    {
      (*(v5 + 16))(v7, v10, v4);
      v15 = OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_separator;
      swift_beginAccess();
      v16 = *(v5 + 24);
      v17 = v14;
      v16(&v14[v15], v7, v4);
      swift_endAccess();
      v18 = v17;
      [v18 setNeedsLayout];
      v19 = *(v5 + 8);
      v19(v7, v4);
      [v18 setHidden:0];

      return (v19)(v10, v4);
    }

    else
    {
      (*(v5 + 16))(v7, v10, v4);
      v20 = [objc_allocWithZone(type metadata accessor for SeparatorView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v21 = OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_separator;
      swift_beginAccess();
      v28 = *(v5 + 40);
      v22 = v20;
      v28(&v20[v21], v7, v4);
      swift_endAccess();

      v23 = *&v0[v13];
      if (v23)
      {
        [v23 removeFromSuperview];
        v24 = *&v0[v13];
      }

      else
      {
        v24 = 0;
      }

      *&v0[v13] = v22;
      v25 = v22;

      v26 = [v0 contentView];
      [v26 addSubview:v25];

      [v0 setNeedsLayout];
      return (*(v5 + 8))(v10, v4);
    }
  }

  return result;
}

void sub_100228F64()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100751374();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33.receiver = v1;
  v33.super_class = ObjectType;
  objc_msgSendSuper2(&v33, "layoutSubviews", v5);
  v8 = [v1 contentView];
  sub_100009D34();
  sub_1007477B4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v29 = v10;
  v30 = v12;
  v31 = v14;
  v32 = v16;
  v17 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_separatorView];
  if (!v17)
  {
    goto LABEL_4;
  }

  v18 = v17;
  if ([v18 isHidden])
  {

LABEL_4:
    v19 = 0;
    v20 = 0;
LABEL_7:
    [*&v1[OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_lockupView] setFrame:{v10, v12, v14, v16}];
    sub_1000164A8(v19, v20);
    return;
  }

  v27 = objc_opt_self();
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = &v29;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_100229B74;
  *(v21 + 24) = v20;
  aBlock[4] = sub_100045E0C;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10011B528;
  aBlock[3] = &unk_10086D640;
  v22 = _Block_copy(aBlock);
  v23 = v18;

  [v27 performWithoutAnimation:v22];
  _Block_release(v22);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v25 = OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_separator;
    swift_beginAccess();
    (*(v4 + 16))(v7, &v23[v25], v3);
    sub_100753B44();

    (*(v4 + 8))(v7, v3);
    v10 = v29;
    v12 = v30;
    v14 = v31;
    v16 = v32;
    v19 = sub_100229B74;
    goto LABEL_7;
  }

  __break(1u);
}

id sub_1002292B8(char *a1, double *a2)
{
  v3 = sub_100751374();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_separator;
  swift_beginAccess();
  (*(v4 + 16))(v6, &a1[v7], v3);
  sub_100751324();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  (*(v4 + 8))(v6, v3);
  return [a1 setFrame:{v9, v11, v13, v15}];
}

uint64_t type metadata accessor for SmallLockupCollectionViewCell(uint64_t a1)
{
  result = qword_10092E660;
  if (!qword_10092E660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002295D8(uint64_t a1)
{
  sub_1002296F8(319, &qword_100928E60, &type metadata accessor for ItemLayoutContext);
  if (v1 <= 0x3F)
  {
    sub_1002296F8(319, &qword_10092F000, &type metadata accessor for Separator);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1002296F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100754284();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

double sub_10022976C()
{
  v1 = sub_100747064();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_lockupView);
  v6 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v2 + 16))(v4, v5 + v6, v1);
  sub_100746F34();
  v8 = v7;
  (*(v2 + 8))(v4, v1);
  return v8;
}

void sub_1002298A0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_lockupView);
  v4 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
  v5 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
  sub_100743204();

  v6 = *(v3 + v4);
  sub_1007433C4();
  sub_1002299DC(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v7 = v6;
  sub_100744274();
}

uint64_t sub_100229984(uint64_t a1)
{
  result = sub_1002299DC(&qword_10092E670, type metadata accessor for SmallLockupCollectionViewCell, &unk_1007B39F0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002299DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100229A24(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100933250, &unk_1007B3A50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_100229A94(void *a1)
{
  type metadata accessor for SmallLockupView(0);
  if (qword_100920548 != -1)
  {
    swift_once();
  }

  v2 = sub_100747064();
  v3 = sub_10000D0FC(v2, qword_10097E3A8);
  sub_1001CF184(v3, a1, 0.0, 0.0);
  return v4;
}

uint64_t sub_100229B3C()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_100229B8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100229BA4()
{
  sub_10000C518(&unk_100939A90, qword_1007B3AA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B3A60;
  *(inited + 32) = 0x6E6F697469736F70;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = [objc_allocWithZone(NSNull) init];
  *(inited + 56) = 0x6E6564646968;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = [objc_allocWithZone(NSNull) init];
  *(inited + 80) = 0x49726564724F6E6FLL;
  *(inited + 88) = 0xE90000000000006ELL;
  *(inited + 96) = [objc_allocWithZone(NSNull) init];
  *(inited + 104) = 0x4F726564724F6E6FLL;
  *(inited + 112) = 0xEA00000000007475;
  *(inited + 120) = [objc_allocWithZone(NSNull) init];
  *(inited + 128) = 0x726579616C627573;
  *(inited + 136) = 0xE900000000000073;
  *(inited + 144) = [objc_allocWithZone(NSNull) init];
  *(inited + 152) = 0x73746E65746E6F63;
  *(inited + 160) = 0xE800000000000000;
  *(inited + 168) = [objc_allocWithZone(NSNull) init];
  *(inited + 176) = 0x73646E756F62;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = [objc_allocWithZone(NSNull) init];
  strcpy((inited + 200), "contentsRect");
  *(inited + 213) = 0;
  *(inited + 214) = -5120;
  *(inited + 216) = [objc_allocWithZone(NSNull) init];
  v1 = sub_100413A3C(inited);
  swift_setDeallocating();
  sub_10000C518(&qword_10092E6D0, &unk_1007C3D30);
  result = swift_arrayDestroy();
  qword_10097E800 = v1;
  return result;
}

CGFloat sub_100229DAC()
{
  CGAffineTransformMakeScale(&v2, 1.0, -1.0);
  *&v1.a = *&v2.m11;
  *&v1.c = *&v2.m13;
  *&v1.tx = *&v2.m21;
  CATransform3DMakeAffineTransform(&v2, &v1);
  *byte_10097E808 = v2;
  return v2.m21;
}

id sub_100229ED0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_100753064();
    [v2 removeObserver:v0 forKeyPath:v3];
  }

  v5.receiver = v0;
  v5.super_class = type metadata accessor for MirrorView();
  return objc_msgSendSuper2(&v5, "dealloc");
}

id sub_10022A180(uint64_t a1, uint64_t a2)
{
  v13.receiver = v2;
  v13.super_class = type metadata accessor for MirrorView();
  objc_msgSendSuper2(&v13, "layoutSubviews");
  v3 = [v2 bounds];
  (*((swift_isaMask & *v2) + 0xD0))(v3, v4, v5);
  sub_100753B64();
  v7 = v6;
  v8 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_artworkLayer);
  [v8 setBounds:{0.0, 0.0, v9, v6}];
  [v2 bounds];
  MidY = CGRectGetMidY(v14);
  [v2 bounds];
  v11 = MidY + (v7 - CGRectGetHeight(v15)) * 0.5;
  [v2 bounds];
  return [v8 setPosition:{CGRectGetMidX(v16), v11 + *(v2 + OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_contentsVerticalOffset)}];
}

double sub_10022A314(double a1, double a2)
{
  v3 = sub_1007504F4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [Strong image];

    if (v9)
    {
      [v9 size];
      sub_100750504();
      sub_100750464();
      a1 = v10;

      (*(v4 + 8))(v6, v3);
    }
  }

  return a1;
}

void sub_10022A458()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_artworkLayer);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v3 = Strong, v4 = [Strong backgroundColor], v3, v4))
  {
    v5 = [v4 CGColor];
  }

  else
  {
    v5 = 0;
  }

  [v1 setBackgroundColor:v5];

  v6 = swift_unknownObjectWeakLoadStrong();
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v6;
  v8 = [v6 image];

  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = [v8 CGImage];

  if (v9)
  {
    type metadata accessor for CGImage(0);
    v8 = sub_100754734();
  }

  else
  {
LABEL_9:
    v8 = 0;
  }

LABEL_10:
  [v1 setContents:v8];
  swift_unknownObjectRelease();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    [v10 alpha];
    v13 = v12;

    *&v14 = v13;
  }

  else
  {
    v14 = 0.0;
  }

  [v1 setOpacity:v14];
  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    v17 = sub_100753064();
    v18 = OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_imageKVOContext;
    swift_beginAccess();
    [v16 addObserver:v0 forKeyPath:v17 options:1 context:v0 + v18];
    swift_endAccess();
  }
}

void sub_10022A668(uint64_t a1, NSString a2, uint64_t a3, Class a4, char *a5)
{
  v10 = &v5[OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_imageKVOContext];
  swift_beginAccess();
  if (!a5 || v10 != a5)
  {
    if (a2)
    {
      a2 = sub_100753064();
    }

    sub_100032C04(a3, v25);
    v15 = v26;
    if (v26)
    {
      v16 = sub_10000C888(v25, v26);
      v17 = *(v15 - 8);
      v18 = __chkstk_darwin(v16);
      v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v20, v18);
      v21 = sub_100754734();
      (*(v17 + 8))(v20, v15);
      sub_10000C620(v25);
      if (!a4)
      {
LABEL_11:
        v22 = type metadata accessor for MirrorView();
        v24.receiver = v5;
        v24.super_class = v22;
        objc_msgSendSuper2(&v24, "observeValueForKeyPath:ofObject:change:context:", a2, v21, a4, a5);

        swift_unknownObjectRelease();
        goto LABEL_12;
      }
    }

    else
    {
      v21 = 0;
      if (!a4)
      {
        goto LABEL_11;
      }
    }

    type metadata accessor for NSKeyValueChangeKey(0);
    sub_10022AA50();
    a4 = sub_100752F34().super.isa;
    goto LABEL_11;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    a4 = [Strong image];

    if (a4)
    {
      v13 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_artworkLayer];
      v14 = [(objc_class *)a4 CGImage];
      [v13 setContents:v14];

      [v5 setNeedsLayout];
LABEL_12:
    }
  }
}

unint64_t sub_10022AA50()
{
  result = qword_1009224E8;
  if (!qword_1009224E8)
  {
    type metadata accessor for NSKeyValueChangeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009224E8);
  }

  return result;
}

char *sub_10022AAA8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_10074AB44();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v13 - 8);
  v15 = &v33 - v14;
  v38 = v4;
  v16 = &v4[OBJC_IVAR____TtC22SubscribePageExtension40InteractiveProductReviewsShelfHeaderView_currentState];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 4) = 0;
  v16[40] = 1;
  if (qword_1009210F8 != -1)
  {
    swift_once();
  }

  v17 = sub_100750534();
  v18 = sub_10000D0FC(v17, qword_100981020);
  v19 = *(v17 - 8);
  v35 = *(v19 + 16);
  v36 = v18;
  v35(v15, v18, v17);
  v34 = *(v19 + 56);
  v34(v15, 0, 1, v17);
  v20 = enum case for DirectionalTextAlignment.none(_:);
  v33 = *(v10 + 104);
  v33(v12, enum case for DirectionalTextAlignment.none(_:), v9);
  v21 = sub_100745C84();
  v22 = objc_allocWithZone(v21);
  v23 = sub_100745C74();
  v24 = v9;
  v25 = v38;
  *&v38[OBJC_IVAR____TtC22SubscribePageExtension40InteractiveProductReviewsShelfHeaderView_firstColumnLabel] = v23;
  v35(v15, v36, v17);
  v34(v15, 0, 1, v17);
  v33(v12, v20, v24);
  v26 = objc_allocWithZone(v21);
  *&v25[OBJC_IVAR____TtC22SubscribePageExtension40InteractiveProductReviewsShelfHeaderView_pinnedLabel] = sub_100745C74();
  *&v25[OBJC_IVAR____TtC22SubscribePageExtension40InteractiveProductReviewsShelfHeaderView_columnWidth] = 0;
  *&v25[OBJC_IVAR____TtC22SubscribePageExtension40InteractiveProductReviewsShelfHeaderView_interColumnSpace] = 0;
  v39.receiver = v25;
  v39.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v39, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v31 = v27;
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v31 addSubview:*&v31[OBJC_IVAR____TtC22SubscribePageExtension40InteractiveProductReviewsShelfHeaderView_firstColumnLabel]];
  [v31 addSubview:*&v31[OBJC_IVAR____TtC22SubscribePageExtension40InteractiveProductReviewsShelfHeaderView_pinnedLabel]];

  return v31;
}

uint64_t sub_10022AFB4(uint64_t a1)
{
  v2 = sub_10074F704();
  v38 = *(v2 - 8);
  v39 = v2;
  __chkstk_darwin(v2);
  v36 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10074EA34();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v34 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  v14 = sub_100749FC4();
  v40 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v17 = *(v9 + 8);
  v17(v13, v8);
  if ((*(v5 + 88))(v7, v4) != enum case for Shelf.ContentsMetadata.productReviews(_:))
  {
    return (*(v5 + 8))(v7, v4);
  }

  (*(v5 + 96))(v7, v4);
  v18 = *(v40 + 32);
  v33 = v14;
  v18(v16, v7, v14);
  v19 = v37;
  v20 = *(v37 + OBJC_IVAR____TtC22SubscribePageExtension40InteractiveProductReviewsShelfHeaderView_firstColumnLabel);
  sub_100749FB4();
  v21 = sub_100753064();

  [v20 setText:v21];

  v22 = *(v19 + OBJC_IVAR____TtC22SubscribePageExtension40InteractiveProductReviewsShelfHeaderView_pinnedLabel);
  v23 = v34;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v17(v23, v8);
  if (v41)
  {
    v24 = sub_100753064();
  }

  else
  {
    v24 = 0;
  }

  [v22 setText:v24];

  v26 = v36;
  sub_100747B84();
  sub_10074F5A4();
  v28 = v27;
  v29 = v39;
  v30 = *(v38 + 8);
  v30(v26, v39);
  *(v19 + OBJC_IVAR____TtC22SubscribePageExtension40InteractiveProductReviewsShelfHeaderView_columnWidth) = v28;
  sub_100747B84();
  sub_10074F634();
  v32 = v31;
  v30(v26, v29);
  result = (*(v40 + 8))(v16, v33);
  *(v19 + OBJC_IVAR____TtC22SubscribePageExtension40InteractiveProductReviewsShelfHeaderView_interColumnSpace) = v32;
  return result;
}

id sub_10022B464()
{
  swift_getObjectType();
  if (v0[OBJC_IVAR____TtC22SubscribePageExtension40InteractiveProductReviewsShelfHeaderView_currentState + 40])
  {
    v1 = &v0[OBJC_IVAR____TtC22SubscribePageExtension40InteractiveProductReviewsShelfHeaderView_columnWidth];
  }

  else
  {
    v1 = &v0[OBJC_IVAR____TtC22SubscribePageExtension40InteractiveProductReviewsShelfHeaderView_currentState + 24];
  }

  v2 = *v1;
  v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension40InteractiveProductReviewsShelfHeaderView_firstColumnLabel];
  sub_1007477B4();
  [v3 measurementsWithFitting:v0 in:{v2, CGRectGetHeight(v26)}];
  v4 = [v0 traitCollection];
  sub_1007477B4();
  sub_100753AA4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v3 setFrame:{v6, v8, v10, v12}];
  v13 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension40InteractiveProductReviewsShelfHeaderView_pinnedLabel];
  sub_1007477B4();
  Width = CGRectGetWidth(v27);
  sub_1007477B4();
  [v13 measurementsWithFitting:v0 in:{Width, CGRectGetHeight(v28)}];
  v15 = [v0 traitCollection];
  sub_1007477B4();
  sub_100753AA4();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  return [v13 setFrame:{v17, v19, v21, v23}];
}

id sub_10022B754(void (*a1)(char *, char *, uint64_t))
{
  v57 = a1;
  v1 = sub_100754724();
  v68 = *(v1 - 8);
  v69 = v1;
  __chkstk_darwin(v1);
  v66 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1007457D4();
  v64 = *(v3 - 8);
  v65 = v3;
  __chkstk_darwin(v3);
  v63 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v59 = *(v5 - 8);
  v60 = v5;
  __chkstk_darwin(v5);
  v58 = &v51 - v6;
  v73 = sub_100750BD4();
  v70 = *(v73 - 8);
  __chkstk_darwin(v73);
  v67 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v71 = &v51 - v9;
  v10 = sub_10074F704();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100750E94();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v51 - v19;
  sub_100750E84();
  if (qword_1009210F8 != -1)
  {
    swift_once();
  }

  v21 = sub_100750534();
  sub_10000D0FC(v21, qword_100981020);
  v56 = v20;
  sub_100750E54();
  v22 = *(v15 + 8);
  v61 = v15 + 8;
  v62 = v22;
  v22(v17, v14);
  sub_100747B84();
  sub_10074F674();
  v72 = v14;
  v52 = *(v11 + 8);
  v51 = v10;
  v52(v13, v10);
  sub_100749FB4();
  v57 = *(v15 + 16);
  v57(v17, v20, v14);
  sub_100750BB4();
  sub_100750BF4();
  v23 = sub_100747B94();
  v54 = sub_100751034();
  v55 = sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v24 = swift_allocObject();
  v53 = xmmword_1007A5CF0;
  *(v24 + 16) = xmmword_1007A5CF0;
  *(v24 + 32) = v23;
  v25 = v23;
  v26 = sub_100751044();
  sub_100750404();
  v28 = v27;

  sub_100747B84();
  sub_10074FC24();
  sub_10074F674();
  v52(v13, v51);
  v29 = v58;
  sub_100747C04();
  swift_getKeyPath();
  v30 = v60;
  sub_1007525B4();

  (*(v59 + 8))(v29, v30);
  v31 = v56;
  v57(v17, v56, v72);
  sub_100750BB4();
  v32 = v67;
  sub_100750BF4();
  v33 = sub_100747B94();
  v34 = swift_allocObject();
  *(v34 + 16) = v53;
  *(v34 + 32) = v33;
  v35 = v33;
  v36 = sub_100751044();
  v37 = v73;
  sub_100750404();
  v39 = v38;

  if (v28 > v39)
  {
    v39 = v28;
  }

  v40 = v63;
  sub_1007457C4();
  sub_100747BA4();
  v41 = v66;
  sub_1007502D4();
  sub_10022BF6C();
  v42 = v65;
  sub_100750564();
  v44 = v43;
  swift_unknownObjectRelease();
  (*(v68 + 8))(v41, v69);
  (*(v64 + 8))(v40, v42);
  v45 = objc_opt_self();
  v46 = [v45 fractionalWidthDimension:1.0];
  v47 = [v45 absoluteDimension:v39 + v44];
  v48 = [objc_opt_self() sizeWithWidthDimension:v46 heightDimension:v47];

  v49 = *(v70 + 8);
  v49(v32, v37);
  v49(v71, v37);
  v62(v31, v72);
  return v48;
}

unint64_t sub_10022BF6C()
{
  result = qword_10092C838;
  if (!qword_10092C838)
  {
    sub_1007457D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092C838);
  }

  return result;
}

uint64_t TodayCardLockupLayout.Metrics.init(artworkSize:artworkMargin:ordinalSpaceProvider:headingSpace:titleSpace:subtitleSpace:tertiaryTitleSpace:offerTextSpace:offerButtonSize:offerButtonMargin:preferVerticallyStackedIcon:preferStackedLargeAXLayouts:singleLineTitleAndSubtitle:allowAccessibilityLayout:backgroundAssetHeight:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12, uint64_t a13, char a14, __int128 *a15, char a16, char a17, char a18, char a19, uint64_t a20, char a21)
{
  *a9 = a10;
  *(a9 + 8) = a11;
  sub_100012160(a1, a9 + 16);
  *(a9 + 56) = a2;
  *(a9 + 64) = a3;
  sub_100012160(a4, a9 + 72);
  sub_100012160(a5, a9 + 112);
  sub_100012160(a8, a9 + 232);
  sub_100012160(a6, a9 + 152);
  sub_100012160(a7, a9 + 192);
  *(a9 + 272) = a12;
  *(a9 + 280) = a13;
  *(a9 + 288) = a14 & 1;
  result = sub_100012160(a15, a9 + 296);
  *(a9 + 336) = a16;
  *(a9 + 337) = a17;
  *(a9 + 338) = a18;
  *(a9 + 339) = a19;
  *(a9 + 344) = a20;
  *(a9 + 352) = a21 & 1;
  return result;
}

uint64_t TodayCardLockupLayout.Metrics.ordinalSpaceProvider.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

void TodayCardLockupLayout.Metrics.ordinalSpaceProvider.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

uint64_t TodayCardLockupLayout.Metrics.titleSpace.setter(__int128 *a1)
{
  sub_10000C620((v1 + 112));

  return sub_100012160(a1, v1 + 112);
}

uint64_t TodayCardLockupLayout.Metrics.subtitleSpace.setter(__int128 *a1)
{
  sub_10000C620((v1 + 152));

  return sub_100012160(a1, v1 + 152);
}

uint64_t TodayCardLockupLayout.Metrics.tertiaryTitleSpace.setter(__int128 *a1)
{
  sub_10000C620((v1 + 192));

  return sub_100012160(a1, v1 + 192);
}

uint64_t TodayCardLockupLayout.Metrics.offerTextSpace.setter(__int128 *a1)
{
  sub_10000C620((v1 + 232));

  return sub_100012160(a1, v1 + 232);
}

uint64_t TodayCardLockupLayout.Metrics.offerButtonSize.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 272) = result;
  *(v3 + 280) = a2;
  *(v3 + 288) = a3 & 1;
  return result;
}

uint64_t TodayCardLockupLayout.Metrics.offerButtonMargin.setter(__int128 *a1)
{
  sub_10000C620((v1 + 296));

  return sub_100012160(a1, v1 + 296);
}

uint64_t TodayCardLockupLayout.Metrics.backgroundAssetHeight.setter(uint64_t result, char a2)
{
  *(v2 + 344) = result;
  *(v2 + 352) = a2 & 1;
  return result;
}

uint64_t TodayCardLockupLayout.init(metrics:artworkView:ordinalText:headingText:titleText:subtitleText:tertiaryTitleText:crossLinkTitleText:crossLinkSubtitleText:offerText:offerButton:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v78 = a7;
  v79 = a5;
  v83 = a6;
  v80 = a4;
  v81 = a3;
  v74 = a1;
  v75 = a9;
  sub_100055CF8(a1, v90);
  v82 = a8;
  v14 = *(a8 + 24);
  BYTE8(v90[47]) = v14 != 0;
  v15 = a2[3];
  v16 = a2[4];
  v76 = a2;
  sub_10000C888(a2, v15);
  v17 = sub_100754284();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v73 - v19;
  sub_100750374();
  v21 = *(v15 - 8);
  if ((*(v21 + 48))(v20, 1, v15) == 1)
  {
    (*(v18 + 8))(v20, v17);
    v89 = 0;
    v87 = 0u;
    v88 = 0u;
  }

  else
  {
    *(&v88 + 1) = v15;
    v89 = v16;
    v22 = sub_10000D134(&v87);
    (*(v21 + 32))(v22, v20, v15);
  }

  *(&v90[22] + 8) = v87;
  *(&v90[23] + 8) = v88;
  *(&v90[24] + 1) = v89;
  sub_100016B4C(v81, v84, &qword_10092BC30, &qword_1007AD5C0);
  v23 = v85;
  if (v85)
  {
    v24 = v86;
    sub_10000C888(v84, v85);
    v25 = sub_100754284();
    v26 = *(v25 - 8);
    __chkstk_darwin(v25);
    v28 = &v73 - v27;
    sub_100750814();
    v29 = *(v23 - 8);
    if ((*(v29 + 48))(v28, 1, v23) == 1)
    {
      (*(v26 + 8))(v28, v25);
      v89 = 0;
      v87 = 0u;
      v88 = 0u;
    }

    else
    {
      *(&v88 + 1) = v23;
      v89 = v24;
      v30 = sub_10000D134(&v87);
      (*(v29 + 32))(v30, v28, v23);
    }

    sub_10000C620(v84);
  }

  else
  {
    sub_10000C8CC(v84, &qword_10092BC30, &qword_1007AD5C0);
    v87 = 0u;
    v88 = 0u;
    v89 = 0;
  }

  v90[25] = v87;
  v90[26] = v88;
  *&v90[27] = v89;
  sub_100016B4C(v80, v84, &qword_10092BC30, &qword_1007AD5C0);
  v31 = v85;
  if (v85)
  {
    v32 = v86;
    sub_10000C888(v84, v85);
    v33 = sub_100754284();
    v34 = *(v33 - 8);
    __chkstk_darwin(v33);
    v36 = &v73 - v35;
    sub_100750814();
    v37 = *(v31 - 8);
    if ((*(v37 + 48))(v36, 1, v31) == 1)
    {
      (*(v34 + 8))(v36, v33);
      v89 = 0;
      v87 = 0u;
      v88 = 0u;
    }

    else
    {
      *(&v88 + 1) = v31;
      v89 = v32;
      v38 = sub_10000D134(&v87);
      (*(v37 + 32))(v38, v36, v31);
    }

    sub_10000C620(v84);
  }

  else
  {
    sub_10000C8CC(v84, &qword_10092BC30, &qword_1007AD5C0);
    v87 = 0u;
    v88 = 0u;
    v89 = 0;
  }

  v77 = a10;
  *(&v90[27] + 8) = v87;
  *(&v90[28] + 8) = v88;
  *(&v90[29] + 1) = v89;
  sub_10000C824(v79, &v90[30]);
  v39 = v83[3];
  v40 = v83[4];
  sub_10000C888(v83, v39);
  v41 = sub_100754284();
  v42 = *(v41 - 8);
  __chkstk_darwin(v41);
  v44 = &v73 - v43;
  if (v14)
  {
    sub_100750804();
  }

  else
  {
    sub_100750814();
  }

  v45 = *(v39 - 8);
  if ((*(v45 + 48))(v44, 1, v39) == 1)
  {
    (*(v42 + 8))(v44, v41);
    v89 = 0;
    v87 = 0u;
    v88 = 0u;
  }

  else
  {
    *(&v88 + 1) = v39;
    v89 = v40;
    v46 = sub_10000D134(&v87);
    (*(v45 + 32))(v46, v44, v39);
  }

  *(&v90[32] + 8) = v87;
  *(&v90[33] + 8) = v88;
  *(&v90[34] + 1) = v89;
  sub_100016B4C(v78, v84, &qword_10092BC30, &qword_1007AD5C0);
  v47 = v85;
  if (v85)
  {
    v48 = v86;
    sub_10000C888(v84, v85);
    v49 = sub_100754284();
    v50 = *(v49 - 8);
    __chkstk_darwin(v49);
    v52 = &v73 - v51;
    sub_100750814();
    v53 = *(v47 - 8);
    if ((*(v53 + 48))(v52, 1, v47) == 1)
    {
      (*(v50 + 8))(v52, v49);
      v89 = 0;
      v87 = 0u;
      v88 = 0u;
    }

    else
    {
      *(&v88 + 1) = v47;
      v89 = v48;
      v54 = sub_10000D134(&v87);
      (*(v53 + 32))(v54, v52, v47);
    }

    sub_10000C620(v84);
  }

  else
  {
    sub_10000C8CC(v84, &qword_10092BC30, &qword_1007AD5C0);
    v87 = 0u;
    v88 = 0u;
    v89 = 0;
  }

  v90[35] = v87;
  v90[36] = v88;
  *&v90[37] = v89;
  sub_100016B4C(v82, &v90[37] + 8, &qword_10092BC30, &qword_1007AD5C0);
  sub_100016B4C(v77, v84, &qword_10092BC30, &qword_1007AD5C0);
  v55 = v85;
  if (v85)
  {
    v56 = v86;
    sub_10000C888(v84, v85);
    v57 = sub_100754284();
    v58 = *(v57 - 8);
    __chkstk_darwin(v57);
    v60 = &v73 - v59;
    sub_100750804();
    v61 = *(v55 - 8);
    if ((*(v61 + 48))(v60, 1, v55) == 1)
    {
      (*(v58 + 8))(v60, v57);
      v89 = 0;
      v87 = 0u;
      v88 = 0u;
    }

    else
    {
      *(&v88 + 1) = v55;
      v89 = v56;
      v62 = sub_10000D134(&v87);
      (*(v61 + 32))(v62, v60, v55);
    }

    sub_10000C620(v84);
  }

  else
  {
    sub_10000C8CC(v84, &qword_10092BC30, &qword_1007AD5C0);
    v87 = 0u;
    v88 = 0u;
    v89 = 0;
  }

  v90[40] = v87;
  v90[41] = v88;
  *&v90[42] = v89;
  sub_100016B4C(a11, v84, &qword_10092BC30, &qword_1007AD5C0);
  v63 = v85;
  if (v85)
  {
    v64 = v86;
    sub_10000C888(v84, v85);
    v65 = sub_100754284();
    v66 = *(v65 - 8);
    __chkstk_darwin(v65);
    v68 = &v73 - v67;
    sub_100750814();
    v69 = *(v63 - 8);
    if ((*(v69 + 48))(v68, 1, v63) == 1)
    {
      sub_10000C8CC(a11, &qword_10092BC30, &qword_1007AD5C0);
      sub_10000C8CC(v77, &qword_10092BC30, &qword_1007AD5C0);
      sub_10000C8CC(v78, &qword_10092BC30, &qword_1007AD5C0);
      sub_10000C620(v79);
      sub_10000C8CC(v80, &qword_10092BC30, &qword_1007AD5C0);
      sub_10000C8CC(v81, &qword_10092BC30, &qword_1007AD5C0);
      sub_100055D54(v74);
      sub_10000C8CC(v82, &qword_10092BC30, &qword_1007AD5C0);
      (*(v66 + 8))(v68, v65);
      v89 = 0;
      v87 = 0u;
      v88 = 0u;
    }

    else
    {
      *(&v88 + 1) = v63;
      v89 = v64;
      v70 = sub_10000D134(&v87);
      (*(v69 + 32))(v70, v68, v63);
      sub_10000C8CC(a11, &qword_10092BC30, &qword_1007AD5C0);
      sub_10000C8CC(v77, &qword_10092BC30, &qword_1007AD5C0);
      sub_10000C8CC(v78, &qword_10092BC30, &qword_1007AD5C0);
      sub_10000C620(v79);
      sub_10000C8CC(v80, &qword_10092BC30, &qword_1007AD5C0);
      sub_10000C8CC(v81, &qword_10092BC30, &qword_1007AD5C0);
      sub_100055D54(v74);
      sub_10000C8CC(v82, &qword_10092BC30, &qword_1007AD5C0);
    }

    sub_10000C620(v84);
  }

  else
  {
    sub_10000C8CC(a11, &qword_10092BC30, &qword_1007AD5C0);
    sub_10000C8CC(v77, &qword_10092BC30, &qword_1007AD5C0);
    sub_10000C8CC(v78, &qword_10092BC30, &qword_1007AD5C0);
    sub_10000C620(v79);
    sub_10000C8CC(v80, &qword_10092BC30, &qword_1007AD5C0);
    sub_10000C8CC(v81, &qword_10092BC30, &qword_1007AD5C0);
    sub_100055D54(v74);
    sub_10000C8CC(v82, &qword_10092BC30, &qword_1007AD5C0);
    sub_10000C8CC(v84, &qword_10092BC30, &qword_1007AD5C0);
    v87 = 0u;
    v88 = 0u;
    v89 = 0;
  }

  *(&v90[42] + 8) = v87;
  *(&v90[43] + 8) = v88;
  *(&v90[44] + 1) = v89;
  v71 = *(a12 + 16);
  v90[45] = *a12;
  v90[46] = v71;
  *&v90[47] = *(a12 + 32);
  memcpy(v75, v90, 0x2F9uLL);
  sub_10000C620(v83);
  return sub_10000C620(v76);
}

double TodayCardLockupLayout.measure(toFit:with:)(void *a1, double a2, double a3)
{
  if ((sub_100753804() & 1) != 0 && *(v3 + 339) == 1)
  {
    sub_10022D718(0, a1, v10, a2, a3);
  }

  else
  {
    sub_10022E354(0, a1, v10, a2, a3);
  }

  sub_100012160(v10, v11);
  sub_10000C888(v11, v11[3]);
  sub_100751254();
  v8 = v7;
  sub_10000C620(v11);
  return v8;
}

uint64_t TodayCardLockupLayout.place(at:with:)(void *a1, double a2, double a3, double a4, double a5)
{
  if (*(v5 + 760) == 1)
  {
    if ((sub_100753804() & 1) != 0 && *(v5 + 339) == 1)
    {
      sub_10022D718(1u, a1, v10, a4, a5);
    }

    else
    {
      sub_10022E354(1, a1, v10, a4, a5);
    }

    sub_100012160(v10, v11);
    sub_10000C888(v11, v12);
    sub_100751244();
    sub_10000C620(v11);
  }

  if ((sub_100753804() & 1) != 0 && *(v5 + 339) == 1)
  {
    sub_10022D718(0, a1, v10, a4, a5);
  }

  else
  {
    sub_10022E354(0, a1, v10, a4, a5);
  }

  sub_100012160(v10, v11);
  sub_10000C888(v11, v12);
  sub_100751244();
  return sub_10000C620(v11);
}

uint64_t sub_10022D718@<X0>(unsigned int a1@<W0>, void *a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v6 = v5;
  v84 = a1;
  v87 = a3;
  v10 = sub_100750A34();
  v82 = *(v10 - 8);
  v83 = v10;
  __chkstk_darwin(v10);
  v12 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100751144();
  v14 = *(v13 - 8);
  v90 = v13;
  v91 = v14;
  __chkstk_darwin(v13);
  v95 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v92 = &v81 - v17;
  __chkstk_darwin(v18);
  v93 = &v81 - v19;
  __chkstk_darwin(v20);
  v22 = &v81 - v21;
  v23 = sub_1007507B4();
  v85 = *(v23 - 8);
  v86 = v23;
  __chkstk_darwin(v23);
  v94 = &v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100750794();
  sub_10000C888((v5 + 112), *(v5 + 136));
  sub_100750574();
  v26 = v25 + v25;
  sub_10000C888((v6 + 152), *(v6 + 176));
  sub_100750574();
  v28 = v26 + v27;
  sub_100016B4C(v5 + 360, v96, &unk_100928A00, &qword_1007A5AB0);
  v88 = a2;
  if (*(&v96[1] + 1))
  {
    sub_100012160(v96, v100);
    if (*(v5 + 336) & 1) != 0 || (v43 = [a2 preferredContentSizeCategory], v44 = sub_100753954(), v43, (v44) && *(v6 + 337) == 1)
    {
      sub_10000C888(v100, v101);
      sub_100750434();
      v29 = *v6;
      *(v22 + 3) = &type metadata for CGFloat;
      *(v22 + 4) = &protocol witness table for CGFloat;
      *v22 = v29;
      v30 = enum case for Resize.Rule.replaced(_:);
      v89 = enum case for Resize.Rule.replaced(_:);
      v31 = v90;
      v32 = *(v91 + 104);
      (v32)(v22, enum case for Resize.Rule.replaced(_:), v90);
      v33 = *(v6 + 8);
      v34 = v93;
      *(v93 + 3) = &type metadata for CGFloat;
      v34[4] = &protocol witness table for CGFloat;
      *v34 = v33;
      (v32)(v34, v30, v31);
      v35 = v22;
      v36 = enum case for Resize.Rule.unchanged(_:);
      (v32)(v92, enum case for Resize.Rule.unchanged(_:), v31);
      (v32)(v95, v36, v31);
      v83 = sub_100751154();
      v98 = v83;
      v99 = &protocol witness table for Resize;
      sub_10000D134(v97);
      sub_100751164();
      sub_100231198(v6, v96);
      v37 = swift_allocObject();
      memcpy((v37 + 16), v96, 0x2F9uLL);
      v38 = v88;
      *(v37 + 784) = v88;
      v39 = v38;
      sub_100750754();
      v40 = v92;

      sub_10000C620(v97);
      sub_10022EEA0(v84 & 1, v39, v96, a4, a5);
      sub_1007510E4();
      v98 = sub_100751104();
      v99 = &protocol witness table for Center;
      sub_10000D134(v97);
      sub_100751114();
      v35[3] = &type metadata for CGFloat;
      v35[4] = &protocol witness table for CGFloat;
      *v35 = v28;
      (v32)(v35, v89, v31);
      (v32)(v93, v36, v31);
      (v32)(v40, v36, v31);
      v84 = v36;
      v41 = v36;
      v22 = v35;
      (v32)(v95, v41, v31);
      *(&v96[1] + 1) = v83;
      *&v96[2] = &protocol witness table for Resize;
      sub_10000D134(v96);
      sub_100751164();
      sub_100750754();
      sub_10000C620(v96);
      v42 = v100;
      goto LABEL_12;
    }

    sub_10000C620(v100);
  }

  else
  {
    sub_10000C8CC(v96, &unk_100928A00, &qword_1007A5AB0);
  }

  sub_100750A04();
  sub_100016B4C(v6 + 360, v96, &unk_100928A00, &qword_1007A5AB0);
  if (*(&v96[1] + 1))
  {
    sub_100012160(v96, v100);
    v45 = v22;
    v46 = v90;
    v81 = v12;
    sub_10000C888(v100, v101);
    sub_100750434();
    v47 = *v6;
    *(v45 + 3) = &type metadata for CGFloat;
    *(v45 + 4) = &protocol witness table for CGFloat;
    *v45 = v47;
    v48 = enum case for Resize.Rule.replaced(_:);
    v49 = v93;
    v50 = *(v91 + 104);
    v89 = enum case for Resize.Rule.replaced(_:);
    v50(v45, enum case for Resize.Rule.replaced(_:), v46);
    v51 = *(v6 + 8);
    *(v49 + 3) = &type metadata for CGFloat;
    *(v49 + 4) = &protocol witness table for CGFloat;
    v52 = v95;
    v53 = v92;
    *v49 = v51;
    v50(v49, v48, v46);
    v54 = enum case for Resize.Rule.unchanged(_:);
    v50(v53, enum case for Resize.Rule.unchanged(_:), v46);
    v55 = v46;
    v22 = v45;
    v50(v52, v54, v55);
    a2 = v88;
    v98 = sub_100751154();
    v99 = &protocol witness table for Resize;
    sub_10000D134(v97);
    v12 = v81;
    v56 = v54;
    v57 = v89;
    sub_100751164();
    sub_100231198(v6, v96);
    v58 = swift_allocObject();
    memcpy((v58 + 16), v96, 0x2F9uLL);
    *(v58 + 784) = a2;
    v59 = a2;
    sub_1007509F4();

    sub_10000C620(v97);
    sub_10000C620(v100);
  }

  else
  {
    sub_10000C8CC(v96, &unk_100928A00, &qword_1007A5AB0);
    v57 = enum case for Resize.Rule.replaced(_:);
    v56 = enum case for Resize.Rule.unchanged(_:);
  }

  v60 = a4 - *v6;
  sub_10000C888((v6 + 16), *(v6 + 40));
  sub_100750574();
  sub_10022EEA0(v84 & 1, a2, v96, v60 - v61, a5);
  sub_1007510F4();
  v101 = sub_100751104();
  v102 = &protocol witness table for Center;
  sub_10000D134(v100);
  sub_100751114();
  *(v22 + 3) = &type metadata for CGFloat;
  *(v22 + 4) = &protocol witness table for CGFloat;
  *v22 = v28;
  v32 = *(v91 + 104);
  v89 = v57;
  v62 = v57;
  v63 = v90;
  (v32)(v22, v62, v90);
  (v32)(v93, v56, v63);
  (v32)(v92, v56, v63);
  v84 = v56;
  v32(v95);
  *(&v96[1] + 1) = sub_100751154();
  *&v96[2] = &protocol witness table for Resize;
  sub_10000D134(v96);
  sub_100751164();
  sub_1007509F4();
  sub_10000C620(v96);
  v64 = v83;
  *(&v96[1] + 1) = v83;
  *&v96[2] = &protocol witness table for HorizontalStack;
  v65 = sub_10000D134(v96);
  v66 = v12;
  v67 = v82;
  (*(v82 + 16))(v65, v66, v64);
  sub_100750754();
  (*(v67 + 8))(v66, v64);
  v42 = v96;
LABEL_12:
  sub_10000C620(v42);
  sub_100016B4C(v6 + 720, v96, &unk_100928A00, &qword_1007A5AB0);
  if (*(&v96[1] + 1))
  {
    sub_100012160(v96, v100);
    if ((*(v6 + 288) & 1) == 0)
    {
      v69 = *(v6 + 272);
      v68 = *(v6 + 280);
      v70 = v93;
      sub_10000C888(v100, v101);
      sub_100750434();
      *(v22 + 3) = &type metadata for CGFloat;
      *(v22 + 4) = &protocol witness table for CGFloat;
      *v22 = v69;
      v71 = v90;
      v72 = v89;
      (v32)(v22, v89, v90);
      v70[3] = &type metadata for CGFloat;
      v70[4] = &protocol witness table for CGFloat;
      *v70 = v68;
      (v32)(v70, v72, v71);
      v73 = v84;
      (v32)(v92, v84, v71);
      (v32)(v95, v73, v71);
      v98 = sub_100751154();
      v99 = &protocol witness table for Resize;
      sub_10000D134(v97);
      sub_100751164();
      sub_100231198(v6, v96);
      v74 = swift_allocObject();
      memcpy((v74 + 16), v96, 0x2F9uLL);
      v75 = v88;
      *(v74 + 784) = v88;
      v76 = v75;
      sub_100750754();

      sub_10000C620(v97);
    }

    sub_10000C620(v100);
  }

  else
  {
    sub_10000C8CC(v96, &unk_100928A00, &qword_1007A5AB0);
  }

  v78 = v86;
  v77 = v87;
  v87[3] = v86;
  v77[4] = &protocol witness table for VerticalStack;
  v79 = sub_10000D134(v77);
  return (*(v85 + 32))(v79, v94, v78);
}

uint64_t sub_10022E354@<X0>(int a1@<W0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v6 = v5;
  v87 = a2;
  LODWORD(v7) = a1;
  v80 = a3;
  v84 = sub_100751144();
  v10 = *(v84 - 8);
  __chkstk_darwin(v84);
  v86 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v85 = &v77 - v13;
  __chkstk_darwin(v14);
  v16 = &v77 - v15;
  __chkstk_darwin(v17);
  v19 = &v77 - v18;
  v20 = sub_100750A34();
  v81 = *(v20 - 8);
  v82 = v20;
  __chkstk_darwin(v20);
  v88 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100750A04();
  sub_100016B4C(v5 + 360, v90, &unk_100928A00, &qword_1007A5AB0);
  if (*(&v90[1] + 1))
  {
    sub_100012160(v90, v97);
    if ((*(v5 + 336) & 1) == 0)
    {
      sub_10000C888(v97, v98);
      sub_100750434();
      v22 = *v5;
      *(v19 + 3) = &type metadata for CGFloat;
      *(v19 + 4) = &protocol witness table for CGFloat;
      *v19 = v22;
      v23 = enum case for Resize.Rule.replaced(_:);
      v24 = *(v10 + 104);
      v79 = v7;
      v7 = v84;
      v24(v19, enum case for Resize.Rule.replaced(_:), v84);
      v25 = *(v6 + 8);
      *(v16 + 3) = &type metadata for CGFloat;
      *(v16 + 4) = &protocol witness table for CGFloat;
      *v16 = v25;
      v24(v16, v23, v7);
      v26 = enum case for Resize.Rule.unchanged(_:);
      v83 = v10;
      v24(v85, enum case for Resize.Rule.unchanged(_:), v7);
      v27 = v7;
      LOBYTE(v7) = v79;
      v24(v86, v26, v27);
      v95 = sub_100751154();
      v96 = &protocol witness table for Resize;
      sub_10000D134(v94);
      v10 = v83;
      sub_100751164();
      sub_100231198(v6, v90);
      v28 = swift_allocObject();
      memcpy((v28 + 16), v90, 0x2F9uLL);
      v29 = v87;
      *(v28 + 784) = v87;
      v30 = v29;
      sub_1007509F4();

      sub_10000C620(v94);
      sub_10000C888((v6 + 16), *(v6 + 40));
      sub_100750574();
      a4 = a4 - v22 - v31;
    }

    sub_10000C620(v97);
  }

  else
  {
    sub_10000C8CC(v90, &unk_100928A00, &qword_1007A5AB0);
  }

  sub_100016B4C(v6 + 720, v90, &unk_100928A00, &qword_1007A5AB0);
  v32 = *(&v90[1] + 1);
  sub_10000C8CC(v90, &unk_100928A00, &qword_1007A5AB0);
  if (v32 && (*(v6 + 288) & 1) == 0)
  {
    v33 = a4 - *(v6 + 272);
    sub_10000C888((v6 + 296), *(v6 + 320));
    sub_100750574();
    a4 = v33 - v34;
  }

  sub_10022EEA0(v7 & 1, v87, v97, a4, a5);
  sub_10000C888(v97, v98);
  sub_100751254();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  sub_10000C824(v97, v94);
  *(v19 + 3) = &type metadata for CGFloat;
  *(v19 + 4) = &protocol witness table for CGFloat;
  *v19 = a4;
  v43 = enum case for Resize.Rule.replaced(_:);
  v44 = *(v10 + 104);
  v45 = v84;
  v44(v19, enum case for Resize.Rule.replaced(_:), v84);
  *(v16 + 3) = &type metadata for CGFloat;
  *(v16 + 4) = &protocol witness table for CGFloat;
  *v16 = v38;
  v79 = v43;
  v44(v16, v43, v45);
  v46 = enum case for Resize.Rule.unchanged(_:);
  v44(v85, enum case for Resize.Rule.unchanged(_:), v45);
  v78 = v46;
  v83 = v10 + 104;
  v44(v86, v46, v45);
  v47 = sub_100751154();
  *(&v90[1] + 1) = v47;
  *&v90[2] = &protocol witness table for Resize;
  sub_10000D134(v90);
  sub_100751164();
  sub_1007509F4();
  sub_10000C620(v90);
  sub_100016B4C(v6 + 720, v90, &unk_100928A00, &qword_1007A5AB0);
  if (!*(&v90[1] + 1))
  {
    sub_10000C8CC(v90, &unk_100928A00, &qword_1007A5AB0);
    goto LABEL_13;
  }

  sub_100012160(v90, v94);
  if ((*(v6 + 288) & 1) == 0)
  {
    v52 = *(v6 + 272);
    v51 = *(v6 + 280);
    sub_10000C888(v94, v95);
    sub_100750434();
    *(v19 + 3) = &type metadata for CGFloat;
    *(v19 + 4) = &protocol witness table for CGFloat;
    *v19 = v52;
    v53 = v79;
    v77 = v47;
    v54 = v84;
    v44(v19, v79, v84);
    *(v16 + 3) = &type metadata for CGFloat;
    *(v16 + 4) = &protocol witness table for CGFloat;
    *v16 = v51;
    v44(v16, v53, v54);
    v55 = v78;
    v44(v85, v78, v54);
    v56 = v54;
    v57 = v77;
    v44(v86, v55, v56);
    *(&v90[1] + 1) = v57;
    *&v90[2] = &protocol witness table for Resize;
    sub_10000D134(v90);
    sub_100751164();
    sub_1007510F4();
    v92 = sub_100751104();
    v93 = &protocol witness table for Center;
    sub_10000D134(v91);
    sub_100751114();
    sub_100231198(v6, v90);
    v58 = swift_allocObject();
    memcpy((v58 + 16), v90, 0x2F9uLL);
    v59 = v87;
    *(v58 + 784) = v87;
    v60 = v59;
    sub_1007509F4();

    sub_10000C620(v91);
    sub_100016B4C(v6 + 360, v90, &unk_100928A00, &qword_1007A5AB0);
    if (*(&v90[1] + 1))
    {
      sub_100012160(v90, v91);
      v61 = v80;
      if (*(v6 + 336) == 1)
      {
        v61[3] = sub_1007507B4();
        v61[4] = &protocol witness table for VerticalStack;
        v87 = sub_10000D134(v61);
        sub_100750794();
        sub_10000C888(v91, v92);
        sub_100750434();
        v62 = *v6;
        *(v19 + 3) = &type metadata for CGFloat;
        *(v19 + 4) = &protocol witness table for CGFloat;
        *v19 = v62;
        v63 = v79;
        v64 = v84;
        v80 = v60;
        v44(v19, v79, v84);
        v65 = *(v6 + 8);
        *(v16 + 3) = &type metadata for CGFloat;
        *(v16 + 4) = &protocol witness table for CGFloat;
        *v16 = v65;
        v44(v16, v63, v64);
        v66 = v78;
        v44(v85, v78, v64);
        v44(v86, v66, v64);
        v89[3] = v77;
        v89[4] = &protocol witness table for Resize;
        sub_10000D134(v89);
        sub_100751164();
        sub_100231198(v6, v90);
        v67 = swift_allocObject();
        v67[2] = v52;
        v67[3] = v51;
        v67[4] = v36;
        v67[5] = v38;
        v67[6] = v40;
        v67[7] = v42;
        memcpy(v67 + 8, v90, 0x2F9uLL);
        v68 = v80;
        v67[104] = v80;
        v69 = v68;
        sub_100750754();

        sub_10000C620(v89);
        v70 = v82;
        *(&v90[1] + 1) = v82;
        *&v90[2] = &protocol witness table for HorizontalStack;
        v71 = sub_10000D134(v90);
        v72 = v81;
        v73 = v88;
        (*(v81 + 16))(v71, v88, v70);
        sub_100750754();
        (*(v72 + 8))(v73, v70);
        sub_10000C620(v90);
        sub_10000C620(v91);
LABEL_20:
        sub_10000C620(v94);
        return sub_10000C620(v97);
      }

      sub_10000C620(v91);
    }

    else
    {
      sub_10000C8CC(v90, &unk_100928A00, &qword_1007A5AB0);
      v61 = v80;
    }

    v74 = v82;
    v61[3] = v82;
    v61[4] = &protocol witness table for HorizontalStack;
    v75 = sub_10000D134(v61);
    (*(v81 + 32))(v75, v88, v74);
    goto LABEL_20;
  }

  sub_10000C620(v94);
LABEL_13:
  v48 = v82;
  v49 = v80;
  v80[3] = v82;
  v49[4] = &protocol witness table for HorizontalStack;
  v50 = sub_10000D134(v49);
  (*(v81 + 32))(v50, v88, v48);
  return sub_10000C620(v97);
}

uint64_t sub_10022EEA0@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v11 = sub_100751144();
  v40 = *(v11 - 8);
  v41 = v11;
  __chkstk_darwin(v11);
  v44 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v43 = &v39 - v14;
  __chkstk_darwin(v15);
  v42 = &v39 - v16;
  __chkstk_darwin(v17);
  v19 = &v39 - v18;
  v20 = sub_1007507B4();
  v45 = *(v20 - 8);
  v46 = v20;
  __chkstk_darwin(v20);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100231198(v5, v52);
  v23 = swift_allocObject();
  memcpy((v23 + 16), v52, 0x2F9uLL);
  sub_100750794();
  sub_100016B4C(v5 + 440, v52, &qword_10092BC30, &qword_1007AD5C0);
  if (*(&v52[1] + 1))
  {
    sub_100012160(v52, &v50);
    sub_10000C888(&v50, v51);
    sub_100750834();
    sub_10000C888(&v50, v51);
    sub_100750824();
    sub_10000C888(&v50, v51);
    sub_100750434();
    sub_100231198(v5, v52);
    v24 = swift_allocObject();
    memcpy((v24 + 16), v52, 0x2F9uLL);
    sub_100750754();

    sub_10000C620(v47);
    sub_10000C620(&v50);
  }

  else
  {
    sub_10000C8CC(v52, &qword_10092BC30, &qword_1007AD5C0);
  }

  sub_10022FA60(a1 & 1, a2, v52, a4, a5);
  sub_100750754();
  sub_10000C620(v52);
  sub_100016B4C(v5 + 560, v52, &qword_10092BC30, &qword_1007AD5C0);
  if (*(&v52[1] + 1))
  {
    sub_100012160(v52, &v50);
    sub_10000C888(&v50, v51);
    sub_100750834();
    sub_10000C888(&v50, v51);
    sub_100750824();
    sub_10000C888(&v50, v51);
    sub_100750434();
    sub_100231198(v5, v52);
    v25 = swift_allocObject();
    memcpy((v25 + 16), v52, 0x2F9uLL);
    sub_100750754();

    sub_10000C620(v47);
    sub_10000C620(&v50);
  }

  else
  {
    sub_10000C8CC(v52, &qword_10092BC30, &qword_1007AD5C0);
  }

  sub_100016B4C(v5 + 680, v52, &qword_10092BC30, &qword_1007AD5C0);
  if (*(&v52[1] + 1))
  {
    sub_100012160(v52, &v50);
    sub_10000C888(&v50, v51);
    sub_100750434();
    sub_100231198(v5, v52);
    v26 = swift_allocObject();
    memcpy((v26 + 16), v52, 0x2F9uLL);
    sub_100750754();

    sub_10000C620(v47);
    sub_10000C620(&v50);
  }

  else
  {
    sub_10000C8CC(v52, &qword_10092BC30, &qword_1007AD5C0);
  }

  sub_100016B4C(v5 + 400, &v50, &qword_10092BC30, &qword_1007AD5C0);
  if (v51)
  {
    sub_100012160(&v50, v52);
    v27 = *(v5 + 56);
    sub_10000C888(v52, *(&v52[1] + 1));
    v28 = sub_1007507F4();
    v27(&v50, v28);
    a3[3] = sub_100750A34();
    a3[4] = &protocol witness table for HorizontalStack;
    sub_10000D134(a3);
    sub_100750A04();
    sub_10000C888(v52, *(&v52[1] + 1));
    sub_100750434();
    sub_10000C824(&v50, v19);
    v29 = *(v40 + 13);
    v40 = v22;
    v30 = v41;
    v29(v19, enum case for Resize.Rule.replaced(_:), v41);
    v31 = enum case for Resize.Rule.unchanged(_:);
    v29(v42, enum case for Resize.Rule.unchanged(_:), v30);
    v29(v43, v31, v30);
    v29(v44, v31, v30);
    v48 = sub_100751154();
    v49 = &protocol witness table for Resize;
    sub_10000D134(v47);
    sub_100751164();
    sub_1007509F4();
    sub_10000C620(v47);
    v32 = v46;
    v48 = v46;
    v49 = &protocol witness table for VerticalStack;
    v33 = sub_10000D134(v47);
    v34 = v45;
    v35 = v40;
    (*(v45 + 16))(v33, v40, v32);
    sub_1007509F4();
    sub_10000C620(&v50);
    (*(v34 + 8))(v35, v32);
    sub_10000C620(v47);
    return sub_10000C620(v52);
  }

  else
  {
    sub_10000C8CC(&v50, &qword_10092BC30, &qword_1007AD5C0);
    v37 = v46;
    a3[3] = v46;
    a3[4] = &protocol witness table for VerticalStack;
    v38 = sub_10000D134(a3);
    return (*(v45 + 32))(v38, v22, v37);
  }
}

uint64_t sub_10022F6C4(uint64_t a1, void *a2, uint64_t a3)
{
  sub_10000C888(a2 + 37, a2[40]);
  sub_100750574();
  return sub_1007509C4();
}

uint64_t sub_10022F76C(double a1, double a2, double a3, double a4, double a5, double a6, uint64_t a7, void *a8, uint64_t a9)
{
  sub_10000C888(a8 + 2, a8[5]);
  sub_100750574();
  return sub_100750724();
}

uint64_t sub_10022F814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000C888((a2 + 16), *(a2 + 40));
  sub_100750574();
  result = sub_100750724();
  if (*(a2 + 336) == 1)
  {
    return sub_100750744();
  }

  return result;
}

uint64_t sub_10022F8B8(uint64_t a1, void *a2, uint64_t a3)
{
  sub_10000C888(a2 + 2, a2[5]);
  sub_100750574();
  return sub_1007509D4();
}

uint64_t sub_10022F938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000C888((a2 + 296), *(a2 + 320));
  sub_100750574();
  result = sub_100750714();
  if (*(a2 + 336) == 1)
  {
    sub_10000C888((a2 + 296), *(a2 + 320));
    sub_100750574();
    return sub_100750724();
  }

  return result;
}

uint64_t sub_10022FA18(uint64_t a1, uint64_t a2)
{
  sub_100750764();
  sub_100750734();
  sub_10000C824(a2 + 72, v4);
  return sub_100750714();
}

uint64_t sub_10022FA60@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v6 = v5;
  v32 = a2;
  v34 = a3;
  v35 = sub_1007507B4();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100750794();
  sub_100016B4C(v5 + 440, v36, &qword_10092BC30, &qword_1007AD5C0);
  v12 = *(&v36[1] + 1);
  sub_10000C8CC(v36, &qword_10092BC30, &qword_1007AD5C0);
  sub_100016B4C(v5 + 680, v36, &qword_10092BC30, &qword_1007AD5C0);
  v13 = *(&v36[1] + 1);
  sub_10000C8CC(v36, &qword_10092BC30, &qword_1007AD5C0);
  sub_100016B4C(v5 + 560, v36, &qword_10092BC30, &qword_1007AD5C0);
  v14 = *(&v36[1] + 1);
  sub_10000C8CC(v36, &qword_10092BC30, &qword_1007AD5C0);
  sub_10000C888((v6 + 480), *(v6 + 504));
  if (sub_1007507E4())
  {
    goto LABEL_4;
  }

  sub_100016B4C(v5 + 520, v36, &qword_10092BC30, &qword_1007AD5C0);
  if (*(&v36[1] + 1))
  {
    sub_10000C888(v36, *(&v36[1] + 1));
    v15 = sub_1007507E4();
    sub_10000C620(v36);
    if (v15)
    {
LABEL_4:
      v16 = 1;
      if (v12)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      v18 = v14 | v13;
      v19 = v11;
      if (!v18)
      {
        v16 = v17;
      }

      goto LABEL_18;
    }
  }

  else
  {
    sub_10000C8CC(v36, &qword_10092BC30, &qword_1007AD5C0);
  }

  if (v12)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  v20 = 2;
  if (!v12)
  {
    v20 = 3;
  }

  if (!(v14 | v13))
  {
    v16 = v20;
  }

  v19 = v11;
LABEL_18:
  sub_10023015C(v16, a1 & 1, v32, a4, a5);
  v22 = v21;
  v24 = v23;
  if (a1)
  {
    sub_100016B4C(v6 + 600, v42, &qword_10092BC30, &qword_1007AD5C0);
  }

  else
  {
    sub_10000C824(v6 + 480, v42);
  }

  sub_100016B4C(v42, &v40, &qword_10092BC30, &qword_1007AD5C0);
  if (v41)
  {
    sub_100012160(&v40, v36);
    if ((v22 & 1) == 0)
    {
      sub_10000C888(v36, *(&v36[1] + 1));
      sub_100750434();
      sub_100750754();
      sub_10000C620(&v40);
      sub_10000C888(v36, *(&v36[1] + 1));
      sub_100750834();
      sub_10000C888(v36, *(&v36[1] + 1));
      sub_100750824();
      goto LABEL_28;
    }

    sub_10000C620(v36);
  }

  else
  {
    sub_10000C8CC(&v40, &qword_10092BC30, &qword_1007AD5C0);
  }

  sub_100016B4C(v42, v36, &qword_10092BC30, &qword_1007AD5C0);
  if (*(&v36[1] + 1))
  {
    sub_10000C888(v36, *(&v36[1] + 1));
    sub_100750834();
LABEL_28:
    sub_10000C620(v36);
    goto LABEL_30;
  }

  sub_10000C8CC(v36, &qword_10092BC30, &qword_1007AD5C0);
LABEL_30:
  v25 = 520;
  if (a1)
  {
    v25 = 640;
  }

  sub_100016B4C(v6 + v25, &v40, &qword_10092BC30, &qword_1007AD5C0);
  sub_100016B4C(&v40, v36, &qword_10092BC30, &qword_1007AD5C0);
  if (*(&v36[1] + 1))
  {
    sub_100012160(v36, v38);
    if ((v24 & 1) == 0)
    {
      sub_10000C888(v38, v39);
      sub_100750434();
      sub_100231198(v6, v36);
      v26 = swift_allocObject();
      memcpy((v26 + 16), v36, 0x2F9uLL);
      sub_100750754();

      sub_10000C620(v37);
      sub_10000C888(v38, v39);
      sub_100750834();
      sub_10000C888(v38, v39);
      sub_100750824();
      sub_10000C620(v38);
      goto LABEL_40;
    }

    sub_10000C620(v38);
  }

  else
  {
    sub_10000C8CC(v36, &qword_10092BC30, &qword_1007AD5C0);
  }

  sub_100016B4C(&v40, v36, &qword_10092BC30, &qword_1007AD5C0);
  if (*(&v36[1] + 1))
  {
    sub_10000C888(v36, *(&v36[1] + 1));
    sub_100750834();
    sub_10000C620(v36);
  }

  else
  {
    sub_10000C8CC(v36, &qword_10092BC30, &qword_1007AD5C0);
  }

LABEL_40:
  v27 = v34;
  v28 = v35;
  v34[3] = v35;
  v27[4] = &protocol witness table for VerticalStack;
  v29 = sub_10000D134(v27);
  (*(v33 + 32))(v29, v19, v28);
  sub_10000C8CC(&v40, &qword_10092BC30, &qword_1007AD5C0);
  return sub_10000C8CC(v42, &qword_10092BC30, &qword_1007AD5C0);
}

uint64_t sub_1002300A4(uint64_t a1, uint64_t a2)
{
  sub_100750764();
  sub_100750734();
  sub_10000C824(a2 + 192, v4);
  return sub_100750714();
}

uint64_t sub_1002300EC(uint64_t a1, uint64_t a2)
{
  sub_100750764();
  sub_100750734();
  sub_10000C824(a2 + 232, v4);
  return sub_100750714();
}

uint64_t sub_10023015C(uint64_t a1, char a2, uint64_t a3, double a4, double a5)
{
  if (a2)
  {
    sub_100016B4C(v5 + 600, v27, &qword_10092BC30, &qword_1007AD5C0);
    v7 = 640;
  }

  else
  {
    sub_10000C824(v5 + 480, v27);
    v7 = 520;
  }

  sub_100016B4C(v5 + v7, v26, &qword_10092BC30, &qword_1007AD5C0);
  if (*(v5 + 338) == 1)
  {
    sub_100016B4C(v26, v24, &qword_10092BC30, &qword_1007AD5C0);
    if (v25)
    {
      sub_10000C888(v24, v25);
      sub_100750364();
      sub_10000C8CC(v26, &qword_10092BC30, &qword_1007AD5C0);
      sub_10000C8CC(v27, &qword_10092BC30, &qword_1007AD5C0);
      sub_10000C620(v24);
    }

    else
    {
      sub_10000C8CC(v26, &qword_10092BC30, &qword_1007AD5C0);
      sub_10000C8CC(v27, &qword_10092BC30, &qword_1007AD5C0);
      sub_10000C8CC(v24, &qword_10092BC30, &qword_1007AD5C0);
    }

    v8 = 0;
    result = 1;
    goto LABEL_33;
  }

  sub_100016B4C(v27, &v22, &qword_10092BC30, &qword_1007AD5C0);
  if (v23)
  {
    sub_100012160(&v22, v24);
    sub_10000C888(v24, v25);
    sub_100750834();
    sub_10000C888(v24, v25);
    sub_100750424();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    sub_10000C888(v24, v25);
    v28.var0 = v11;
    v28.var1 = v13;
    v28.var2 = v15;
    v28.var3 = v17;
    v18 = sub_100750874(v28) > 1;
    sub_10000C620(v24);
  }

  else
  {
    sub_10000C8CC(&v22, &qword_10092BC30, &qword_1007AD5C0);
    v18 = 0;
  }

  sub_100016B4C(v26, v24, &qword_10092BC30, &qword_1007AD5C0);
  if (v25)
  {
    sub_10000C888(v24, v25);
    v19 = sub_100750364();
    sub_10000C8CC(v26, &qword_10092BC30, &qword_1007AD5C0);
    sub_10000C8CC(v27, &qword_10092BC30, &qword_1007AD5C0);
    result = sub_10000C620(v24);
    if (v18)
    {
      v20 = a1;
      if (v19)
      {
        v20 = a1 - 1;
        if (__OFSUB__(a1, 1))
        {
          goto LABEL_35;
        }
      }

      if (v20 <= 1)
      {
        result = 1;
      }

      else
      {
        result = v20;
      }
    }

    else
    {
      result = 1;
    }

    if (!__OFSUB__(a1, result))
    {
      if (v19)
      {
        v8 = a1 - result < 1;
LABEL_33:
        v27[0] = 0;
        v26[0] = v8;
        return result;
      }

LABEL_32:
      v8 = 1;
      goto LABEL_33;
    }
  }

  else
  {
    sub_10000C8CC(v26, &qword_10092BC30, &qword_1007AD5C0);
    sub_10000C8CC(v27, &qword_10092BC30, &qword_1007AD5C0);
    sub_10000C8CC(v24, &qword_10092BC30, &qword_1007AD5C0);
    if (a1 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = a1;
    }

    if (v18)
    {
      result = v21;
    }

    else
    {
      result = 1;
    }

    if (!__OFSUB__(a1, result))
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_100230514(uint64_t a1, uint64_t a2)
{
  sub_100750764();
  sub_100750734();
  sub_10000C824(a2 + 152, v4);
  return sub_100750714();
}

double _s22SubscribePageExtension21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(uint64_t a1, id a2, double a3)
{
  v5 = [a2 preferredContentSizeCategory];
  v6 = sub_100753954();

  if ((v6 & 1) != 0 && *(a1 + 337) == 1)
  {
    sub_10000C888((a1 + 112), *(a1 + 136));
    sub_100750574();
    sub_10000C888((a1 + 152), *(a1 + 176));
    sub_100750574();
    sub_10000C888((a1 + 16), *(a1 + 40));
    sub_100750574();
    sub_10000C888((a1 + 296), *(a1 + 320));
    sub_100750574();
    return a3;
  }

  if ((sub_100753804() & 1) != 0 && *(a1 + 339) == 1)
  {
    sub_10000C888((a1 + 112), *(a1 + 136));
    sub_100750574();
    sub_10000C888((a1 + 152), *(a1 + 176));
    sub_100750574();
    if (*(a1 + 336) == 1)
    {
      sub_10000C888((a1 + 16), *(a1 + 40));
      sub_100750574();
    }

    v7 = *(a1 + 320);
    v8 = (a1 + 296);
    goto LABEL_12;
  }

  sub_10000C888((a1 + 112), *(a1 + 136));
  sub_100750574();
  sub_10000C888((a1 + 152), *(a1 + 176));
  sub_100750574();
  sub_10000C888((a1 + 192), *(a1 + 216));
  sub_100750574();
  if (*(a1 + 336) == 1 || (*(a1 + 352) & 1) == 0)
  {
    v7 = *(a1 + 40);
    v8 = (a1 + 16);
LABEL_12:
    sub_10000C888(v8, v7);
    sub_100750574();
  }

  return a3;
}

uint64_t sub_100230880(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1002308A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 761))
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

uint64_t sub_1002308E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 760) = 0;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 761) = 1;
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

    *(result + 761) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100230A08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 353))
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

uint64_t sub_100230A50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 344) = 0;
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
    *(result + 328) = 0u;
    *(result + 352) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 353) = 1;
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

    *(result + 353) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_100230B00(void *a1, uint64_t a2, char a3)
{
  if (*(a2 + 336) == 1)
  {
    result = 160.0;
    if (*(a2 + 339))
    {
      return 293.0;
    }

    return result;
  }

  v5 = [a1 preferredContentSizeCategory];
  v6 = sub_100753094();
  v8 = v7;
  if (v6 == sub_100753094() && v8 == v9)
  {
    goto LABEL_18;
  }

  v11 = sub_100754754();

  if (v11)
  {
LABEL_10:

    return 52.0;
  }

  v12 = sub_100753094();
  v14 = v13;
  if (v12 == sub_100753094() && v14 == v15)
  {
    goto LABEL_18;
  }

  v17 = sub_100754754();

  if (v17)
  {
    goto LABEL_10;
  }

  v18 = sub_100753094();
  v20 = v19;
  if (v18 == sub_100753094() && v20 == v21)
  {
LABEL_18:

    return 52.0;
  }

  v23 = sub_100754754();

  if (v23)
  {
    goto LABEL_10;
  }

  v24 = sub_100753094();
  v26 = v25;
  if (v24 == sub_100753094() && v26 == v27)
  {

    return 54.0;
  }

  v28 = sub_100754754();

  if (v28)
  {

    return 54.0;
  }

  v29 = sub_100753094();
  v31 = v30;
  if (v29 == sub_100753094() && v31 == v32)
  {

    return 62.0;
  }

  v33 = sub_100754754();

  if (v33)
  {

    return 62.0;
  }

  v34 = sub_100753094();
  v36 = v35;
  if (v34 == sub_100753094() && v36 == v37)
  {

    return 67.0;
  }

  v38 = sub_100754754();

  if (v38)
  {

    return 67.0;
  }

  v39 = sub_100753094();
  v41 = v40;
  if (v39 == sub_100753094() && v41 == v42)
  {

    return 76.0;
  }

  v43 = sub_100754754();

  if (v43)
  {

    return 76.0;
  }

  v44 = sub_100753094();
  v46 = v45;
  if (v44 == sub_100753094() && v46 == v47)
  {

    return 153.0;
  }

  v48 = sub_100754754();

  if (v48)
  {

    return 153.0;
  }

  v49 = sub_100753094();
  v51 = v50;
  if (v49 == sub_100753094() && v51 == v52)
  {

    return 170.0;
  }

  v53 = sub_100754754();

  if (v53)
  {

    return 170.0;
  }

  v54 = sub_100753094();
  v56 = v55;
  if (v54 == sub_100753094() && v56 == v57)
  {

    return 193.0;
  }

  v58 = sub_100754754();

  if (v58)
  {

    return 193.0;
  }

  v59 = sub_100753094();
  v61 = v60;
  if (v59 == sub_100753094() && v61 == v62)
  {
    goto LABEL_66;
  }

  v63 = sub_100754754();

  if (v63)
  {
  }

  else
  {
    v64 = sub_100753094();
    v66 = v65;
    if (v64 == sub_100753094() && v66 == v67)
    {
LABEL_66:

      goto LABEL_72;
    }

    v68 = sub_100754754();

    if ((v68 & 1) == 0)
    {
      return 52.0;
    }
  }

LABEL_72:
  result = 216.0;
  if (a3)
  {
    return 293.0;
  }

  return result;
}