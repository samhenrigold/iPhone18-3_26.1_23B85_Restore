void sub_1002DD964(uint64_t a1)
{
  sub_100110300(319, &unk_10092C900, &protocol descriptor for LayoutView);
  if (v1 <= 0x3F)
  {
    sub_100110300(319, &qword_10092D510, &protocol descriptor for LayoutTextView);
    if (v2 <= 0x3F)
    {
      sub_100110090(319, &unk_10092C910, &unk_10092D520, &unk_1007A5C80);
      if (v3 <= 0x3F)
      {
        sub_100110090(319, &qword_10092C920, &qword_100926520, &qword_1007A9F00);
        if (v4 <= 0x3F)
        {
          type metadata accessor for ProductLockupAccessibilityLayout.Metrics(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1002DDAB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1002DDB88(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
  }

  else
  {
    v7 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1002DDC38(uint64_t a1)
{
  type metadata accessor for UIEdgeInsets(319);
  if (v1 <= 0x3F)
  {
    sub_100110300(319, &qword_1009289A0, &protocol descriptor for AnyDimension);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v3 <= 0x3F)
      {
        sub_1001F0280(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

id sub_1002DDD18(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_itemLayoutContext;
  v10 = sub_1007469A4();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_resultContents];
  *v11 = 0;
  *(v11 + 1) = 0;
  swift_weakInit();
  v12 = &v4[OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_impressionsUpdateBlock];
  v13 = type metadata accessor for SearchResultCollectionViewCell(0);
  *v12 = 0;
  *(v12 + 1) = 0;
  v21.receiver = v4;
  v21.super_class = v13;
  v14 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v18 = v14;
  [v18 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v19 = [v18 contentView];
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  return v18;
}

void sub_1002DDF88(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_resultContents];
  if (v2)
  {
    if (a1)
    {
      if (v2 == a1)
      {
        return;
      }

      v5 = v2;
      [a1 removeFromSuperview];
    }

    else
    {
      v3 = v2;
    }

    v16 = v2;
    v6 = [v1 contentView];
    [v6 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    [v16 setFrame:{v8, v10, v12, v14}];
    v15 = [v1 contentView];
    [v15 addSubview:v16];

    [v1 setNeedsLayout];
  }
}

double (*sub_1002DE0D8(void *a1))(uint64_t *a1, char a2)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_resultContents;
  a1[2] = v1;
  a1[3] = v3;
  v4 = *(v1 + v3);
  if (!v4)
  {
    goto LABEL_5;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {
    v4 = 0;
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v5 = v4;
  v4 = sub_100747E14();
  v7 = v6;

LABEL_6:
  *a1 = v4;
  a1[1] = v7;
  return sub_1002DE198;
}

double sub_1002DE198(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1[2] + a1[3]);
  if (a2)
  {
    if (v4)
    {
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        sub_10001B5AC(v3, v2);
        v5 = v4;
        sub_100747E24();
      }
    }

    goto LABEL_10;
  }

  if (!v4 || (swift_getObjectType(), !swift_conformsToProtocol2()))
  {
LABEL_10:

    return sub_1000164A8(v3, v2);
  }

  v7 = v4;
  sub_100747E24();

  return result;
}

void sub_1002DE2D4(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_resultContents);
  if (v3 && (swift_getObjectType(), swift_conformsToProtocol2()))
  {
    if (a1)
    {
      sub_1002E1C14(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
    }

    swift_getObjectType();
    v6 = a1;
    v5 = v3;
    sub_100748FC4();

    v4 = v6;
  }

  else
  {
    v4 = a1;
  }
}

uint64_t sub_1002DE3D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_resultContents);
  if (v1)
  {
    swift_getObjectType();
    result = swift_conformsToProtocol2();
    if (!result)
    {
      return result;
    }

    v3 = v1;
    v4 = sub_100748FB4();

    if (v4)
    {
      type metadata accessor for VideoView(0);
      result = swift_dynamicCastClass();
      if (result)
      {
        return result;
      }
    }
  }

  return 0;
}

void (*sub_1002DE478(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_resultContents;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v1 + v3);
  if (!v4)
  {
    goto LABEL_6;
  }

  swift_getObjectType();
  v5 = swift_conformsToProtocol2();
  if (v5)
  {
    v6 = v4;
    v7 = sub_100748FB4();

    if (!v7)
    {
LABEL_6:
      v5 = 0;
      goto LABEL_7;
    }

    type metadata accessor for VideoView(0);
    v5 = swift_dynamicCastClass();
    if (!v5)
    {

      goto LABEL_6;
    }
  }

LABEL_7:
  *a1 = v5;
  return sub_1002DE54C;
}

void sub_1002DE54C(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *a1;
  v5 = *(v3 + v2);
  if (a2)
  {
    if (v5)
    {
      v11 = v4;
      swift_getObjectType();
      v6 = swift_conformsToProtocol2();
      v4 = v11;
      if (v6)
      {
        if (v11)
        {
          sub_1002E1C14(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
        }

        v7 = v11;
        v8 = v5;
        sub_100748FC4();

LABEL_11:
        v4 = v11;
      }
    }
  }

  else
  {
    if (!v5)
    {
      goto LABEL_13;
    }

    v11 = v4;
    swift_getObjectType();
    if (!swift_conformsToProtocol2())
    {
      goto LABEL_11;
    }

    if (v11)
    {
      sub_1002E1C14(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
    }

    v9 = v11;
    v10 = v5;
    sub_100748FC4();

    v4 = v9;
  }

LABEL_13:
}

id sub_1002DE70C()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_resultContents);
  if (v1 && (v2 = v1, sub_10000C518(&qword_100931598, qword_1007B8B68), sub_10000C518(&qword_100923C10, &qword_1007A7060), (swift_dynamicCast() & 1) != 0))
  {
    v3 = *(&v9 + 1);
    if (*(&v9 + 1))
    {
      v4 = v10;
      sub_10000C888(&v8, *(&v9 + 1));
      v5 = (*(v4 + 8))(v3, v4);
      sub_10000C620(&v8);
      return v5;
    }
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
  }

  sub_10000C8CC(&v8, &qword_100923C18, &qword_1007B8B60);

  return v7;
}

id sub_1002DE838()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_resultContents);
  if (v1 && (v2 = v1, sub_10000C518(&qword_100931598, qword_1007B8B68), sub_10000C518(&qword_100923C10, &qword_1007A7060), (swift_dynamicCast() & 1) != 0))
  {
    v3 = *(&v9 + 1);
    if (*(&v9 + 1))
    {
      v4 = v10;
      sub_10000C888(&v8, *(&v9 + 1));
      v5 = (*(v4 + 16))(v3, v4);
      sub_10000C620(&v8);
      return v5;
    }
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
  }

  sub_10000C8CC(&v8, &qword_100923C18, &qword_1007B8B60);

  return v7;
}

id sub_1002DE964()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_resultContents);
  if (v1 && (v2 = v1, sub_10000C518(&qword_100931598, qword_1007B8B68), sub_10000C518(&qword_100923C10, &qword_1007A7060), (swift_dynamicCast() & 1) != 0))
  {
    v3 = *(&v9 + 1);
    if (*(&v9 + 1))
    {
      v4 = v10;
      sub_10000C888(&v8, *(&v9 + 1));
      v5 = (*(v4 + 24))(v3, v4);
      sub_10000C620(&v8);
      return v5;
    }
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
  }

  sub_10000C8CC(&v8, &qword_100923C18, &qword_1007B8B60);

  return v7;
}

uint64_t sub_1002DEA90()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_resultContents);
  if (v1 && (v2 = v1, sub_10000C518(&qword_100931598, qword_1007B8B68), sub_10000C518(&qword_100923C10, &qword_1007A7060), (swift_dynamicCast() & 1) != 0))
  {
    v3 = *(&v7 + 1);
    if (*(&v7 + 1))
    {
      v4 = v8;
      sub_10000C888(&v6, *(&v7 + 1));
      (*(v4 + 32))(v3, v4);
      return sub_10000C620(&v6);
    }
  }

  else
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
  }

  return sub_10000C8CC(&v6, &qword_100923C18, &qword_1007B8B60);
}

uint64_t sub_1002DEBCC()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_resultContents);
  if (v1 && (v2 = v1, sub_10000C518(&qword_100931598, qword_1007B8B68), sub_10000C518(&qword_100923C10, &qword_1007A7060), (swift_dynamicCast() & 1) != 0))
  {
    v3 = *(&v7 + 1);
    if (*(&v7 + 1))
    {
      v4 = v8;
      sub_10000C888(&v6, *(&v7 + 1));
      (*(v4 + 40))(v3, v4);
      return sub_10000C620(&v6);
    }
  }

  else
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
  }

  return sub_10000C8CC(&v6, &qword_100923C18, &qword_1007B8B60);
}

void sub_1002DECE8()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for SearchResultCollectionViewCell(0);
  objc_msgSendSuper2(&v12, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_resultContents];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 contentView];
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [v2 setFrame:{v5, v7, v9, v11}];
  }
}

void sub_1002DEEA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100745644();
  v67 = *(v6 - 8);
  v68 = v6;
  __chkstk_darwin(v6);
  v65 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v63 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v58 - v9;
  v11 = sub_10074F6E4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v64 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v58 - v15;
  v17 = sub_10074F704();
  v69 = *(v17 - 8);
  v70 = v17;
  __chkstk_darwin(v17);
  v66 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v71 = &v58 - v20;
  sub_100744104();
  sub_1002E1C14(&unk_100928540, &type metadata accessor for SearchResult, &protocol conformance descriptor for SearchResult);
  sub_1007468B4();
  if (v72)
  {
    v60 = v16;
    v21 = sub_1000F0DA4();
    if (!v21)
    {
LABEL_20:

      return;
    }

    v23 = v22;
    v59 = a2;
    v61 = &v3[OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_resultContents];
    v62 = v3;
    if (!*&v3[OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_resultContents] || sub_10000C518(&qword_100931590, &qword_1007B8B58) != v21)
    {
      v24 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v25 = v61;
      v26 = *v61;
      *v61 = v24;
      *(v25 + 1) = v23;
      v27 = v11;
      v28 = a1;
      v29 = v24;
      sub_1002DDF88(v26);

      a1 = v28;
      v11 = v27;
    }

    swift_getKeyPath();
    sub_100746914();

    v30 = v72;
    v31 = sub_1007537D4();

    if ((v31 & 1) == 0)
    {
      v49 = *v61;
      if (*v61)
      {
        v50 = *(v61 + 1);
        goto LABEL_18;
      }

LABEL_19:
      [v62 setNeedsLayout];
      goto LABEL_20;
    }

    swift_getKeyPath();
    sub_100746914();

    swift_getKeyPath();
    sub_100746914();

    swift_getKeyPath();
    sub_1007525B4();

    (*(v63 + 8))(v10, v8);
    v32 = &enum case for PageGrid.Direction.horizontal(_:);
    if (!v72)
    {
      v32 = &enum case for PageGrid.Direction.vertical(_:);
    }

    v33 = v60;
    (*(v12 + 104))(v60, *v32, v11);
    sub_10074F5C4();
    v63 = v34;
    sub_10074F5E4();
    v58 = v35;
    sub_10074F5D4();
    swift_getKeyPath();
    sub_100746914();

    v36 = v65;
    sub_100745604();
    (*(v12 + 16))(v64, v33, v11);
    if (qword_100920C20 != -1)
    {
      swift_once();
    }

    v37 = v66;
    sub_10074F6B4();
    (*(v67 + 8))(v36, v68);
    v38 = v61;
    if (*v61)
    {
      [*v61 layoutMargins];
      v40 = v39;
      v42 = v41;
      sub_10074F664();
      v44 = v43;
      sub_10074F664();
      v45 = *v38;
      if (!*v38)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_10074F664();
      v40 = v55;
      v44 = v56;
      v42 = v57;
      v45 = *v38;
      if (!*v38)
      {
LABEL_14:
        v46 = *(v69 + 8);
        v47 = v37;
        v48 = v70;
        v46(v47, v70);
        (*(v12 + 8))(v33, v11);
        v46(v71, v48);
        v49 = *v38;
        if (*v38)
        {
          v50 = *(v38 + 1);
LABEL_18:
          ObjectType = swift_getObjectType();
          v52 = a1;
          v53 = *(v50 + 48);
          v54 = v49;
          v53(v52, v59, ObjectType, v50);

          goto LABEL_19;
        }

        goto LABEL_19;
      }
    }

    [v45 setLayoutMargins:{v40, v44, v42}];
    goto LABEL_14;
  }
}

void sub_1002DF5E0(uint64_t a1, uint64_t a2)
{
  v11 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_resultContents);
  if (v11)
  {
    type metadata accessor for AdvertsSearchResultContentView();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      if (a1)
      {
        v7 = objc_opt_self();
        v8 = v11;
        v9 = [v7 clearColor];
        [v6 setBackgroundColor:v9];
      }

      else
      {
        v10 = v11;
      }

      [v6 setNeedsLayout];
    }
  }
}

void sub_1002DF6F4(uint64_t a1, uint64_t (*a2)(char *, void, uint64_t, __n128), char *a3, void *a4, char *a5, int a6)
{
  v72 = a6;
  v78 = a5;
  v71 = a4;
  v69 = a3;
  v70 = a2;
  v8 = sub_1007521E4();
  v9 = *(v8 - 1);
  __chkstk_darwin(v8);
  v77 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100752224();
  v76 = *(v11 - 8);
  __chkstk_darwin(v11);
  v75 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1007521D4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = sub_100752244();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v64 - v20;
  sub_10000C824(a1, aBlock);
  sub_10000C518(&qword_1009253C0, &unk_1007A8D20);
  sub_100745E64();
  if (swift_dynamicCast())
  {
    v67 = v11;
    v22 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_resultContents];
    if (v22 && (v68 = v80[0], v64 = v9, v23 = type metadata accessor for AdvertsSearchResultContentView(), (v24 = swift_dynamicCastClass()) != 0))
    {
      v25 = v24;
      v26 = v22;
      [v6 setUserInteractionEnabled:0];
      v65 = v26;
      [v25 frame];
      v31 = [objc_allocWithZone(v23) initWithFrame:{v27, v28, v29, v30}];
      v32 = *(*&v25[OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_lockupView] + OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_regularWidthColumnSpacing);
      [v25 layoutMargins];
      v66 = v21;
      v33 = v68;
      v34 = v70;
      v35 = v69;
      v69 = v6;
      sub_10054F6E0(v68, v70, v35, v78, v32, v36, v37, v38, v39);
      [v31 layoutIfNeeded];
      [v25 frame];
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;

      v80[0] = v41;
      v80[1] = v43;
      v80[2] = v45;
      v80[3] = v47;
      v81 = 0;
      sub_100551AD0(v33, v80, v71, v34);
      v48 = &v25[OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_disableAdvertRotation];
      swift_beginAccess();
      v71 = v8;
      v49 = *v48;
      v50 = v48[1];
      sub_10001B5AC(*v48, v50);
      sub_10048862C(v49, v50);
      sub_1000164A8(v49, v50);
      sub_1000A7FA0();
      v70 = sub_100753774();
      sub_100752234();
      v51 = 333;
      if ((v72 & 1) == 0)
      {
        v51 = 0;
      }

      *v16 = v51;
      (*(v14 + 104))(v16, enum case for DispatchTimeInterval.milliseconds(_:), v13);
      sub_1007522A4();
      (*(v14 + 8))(v16, v13);
      v73 = *(v73 + 8);
      v52 = v74;
      (v73)(v18, v74);
      v53 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v54 = swift_allocObject();
      v54[2] = v53;
      v54[3] = v25;
      v55 = v78;
      v54[4] = v31;
      v54[5] = v55;
      aBlock[4] = sub_1002E1B94;
      aBlock[5] = v54;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000CF7B0;
      aBlock[3] = &unk_1008705A8;
      v56 = _Block_copy(aBlock);
      v57 = v65;
      v58 = v31;

      v59 = v75;
      sub_100752204();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1002E1C14(&qword_1009236B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10000C518(&unk_10092F750, &qword_1007A6920);
      sub_1000A8054();
      v60 = v77;
      v61 = v71;
      sub_1007543A4();
      v62 = v66;
      v63 = v70;
      sub_100753734();

      _Block_release(v56);

      (*(v64 + 8))(v60, v61);
      (*(v76 + 8))(v59, v67);
      (v73)(v62, v52);
    }

    else
    {
    }
  }
}

void sub_1002DFEAC(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = objc_opt_self();
    v10 = swift_allocObject();
    v10[2] = a4;
    v10[3] = a2;
    v10[4] = a3;
    v10[5] = v8;
    aBlock[4] = sub_1002E1C08;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100144DD8;
    aBlock[3] = &unk_1008705F8;
    v11 = _Block_copy(aBlock);

    v12 = a2;
    v13 = a3;
    v14 = v8;

    [v9 transitionFromView:v12 toView:v13 duration:5242880 options:v11 completion:0.666];
    _Block_release(v11);
  }
}

void sub_1002E000C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  sub_10074B184();
  sub_100752764();
  sub_100752D34();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_1002E1C14(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
  }

  sub_1002E1C14(&unk_100936AA0, type metadata accessor for AdvertsSearchResultContentView, &unk_1007C2CA0);
  sub_10074B124();

  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    sub_1002E1C14(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
  }

  sub_10074B164();

  v9 = sub_1002E1C14(&qword_100928220, type metadata accessor for AdvertsSearchResultContentView, &unk_1007C2E9C);
  v10 = &a5[OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_resultContents];
  v11 = *&a5[OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_resultContents];
  *v10 = a4;
  *(v10 + 1) = v9;
  v12 = a4;
  sub_1002DDF88(v11);

  [a5 setUserInteractionEnabled:1];
}

void sub_1002E0248(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  swift_weakAssign();
  v3 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = 0;
  v3[1] = 0;
  sub_1000164A8(v4, v5);
  v6 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_resultContents);
  if (v6)
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v7 = v6;
      sub_10074D394();
    }
  }
}

void sub_1002E0334(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100749574();
  }

  swift_weakAssign();
  v3 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = 0;
  v3[1] = 0;
  sub_1000164A8(v4, v5);
  v6 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_resultContents);
  if (v6)
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v7 = v6;
      sub_10074D384();
    }
  }
}

uint64_t sub_1002E0430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v43 = sub_100747524();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100747C14();
  __chkstk_darwin(v6 - 8);
  v37 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10074F704();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v39 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100744E64();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v36 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&qword_100931580, &qword_1007B8A90);
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  v15 = sub_10000C518(&unk_100925330, &unk_1007A67B0);
  __chkstk_darwin(v15 - 8);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v35 - v19;
  __chkstk_darwin(v21);
  v23 = &v35 - v22;
  sub_100747E74();
  sub_1002E1C14(&qword_100927520, &type metadata accessor for AdvertsSearchResult, &protocol conformance descriptor for SearchResult);
  v38 = a1;
  sub_1007468B4();
  if (!v46)
  {
    v27 = 1;
    v26 = v45;
    goto LABEL_14;
  }

  v35 = v5;
  v44 = v46;
  sub_100747E44();
  (*(v10 + 104))(v20, enum case for ItemBackground.clearAdWithSeparator(_:), v9);
  (*(v10 + 56))(v20, 0, 1, v9);
  v24 = *(v12 + 48);
  sub_100016B4C(v23, v14, &unk_100925330, &unk_1007A67B0);
  sub_100016B4C(v20, &v14[v24], &unk_100925330, &unk_1007A67B0);
  v25 = *(v10 + 48);
  if (v25(v14, 1, v9) != 1)
  {
    sub_100016B4C(v14, v17, &unk_100925330, &unk_1007A67B0);
    if (v25(&v14[v24], 1, v9) != 1)
    {
      v28 = v36;
      (*(v10 + 32))(v36, &v14[v24], v9);
      sub_1002E1C14(&qword_100931588, &type metadata accessor for ItemBackground, &protocol conformance descriptor for ItemBackground);
      v29 = sub_100753014();
      v30 = *(v10 + 8);
      v30(v28, v9);
      sub_10000C8CC(v20, &unk_100925330, &unk_1007A67B0);
      sub_10000C8CC(v23, &unk_100925330, &unk_1007A67B0);
      v30(v17, v9);
      sub_10000C8CC(v14, &unk_100925330, &unk_1007A67B0);
      v26 = v45;
      if (v29)
      {
        goto LABEL_11;
      }

LABEL_9:

      v27 = 1;
      goto LABEL_14;
    }

    sub_10000C8CC(v20, &unk_100925330, &unk_1007A67B0);
    sub_10000C8CC(v23, &unk_100925330, &unk_1007A67B0);
    (*(v10 + 8))(v17, v9);
LABEL_8:
    sub_10000C8CC(v14, &qword_100931580, &qword_1007B8A90);
    v26 = v45;
    goto LABEL_9;
  }

  sub_10000C8CC(v20, &unk_100925330, &unk_1007A67B0);
  sub_10000C8CC(v23, &unk_100925330, &unk_1007A67B0);
  if (v25(&v14[v24], 1, v9) != 1)
  {
    goto LABEL_8;
  }

  sub_10000C8CC(v14, &unk_100925330, &unk_1007A67B0);
  v26 = v45;
LABEL_11:
  sub_100746884();
  if (qword_100920C20 != -1)
  {
    swift_once();
  }

  v31 = v39;
  sub_10074F6A4();
  sub_10074F694();
  (*(v41 + 104))(v35, enum case for ComponentSeparator.Position.bottom(_:), v43);
  v32 = [objc_opt_self() systemGray3Color];
  sub_100747534();

  (*(v40 + 8))(v31, v42);
  v27 = 0;
LABEL_14:
  v33 = sub_100747564();
  return (*(*(v33 - 8) + 56))(v26, v27, 1, v33);
}

id sub_1002E0B80()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchResultCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SearchResultCollectionViewCell(uint64_t a1)
{
  result = qword_100931558;
  if (!qword_100931558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002E0C8C(uint64_t a1)
{
  sub_100016898(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1002E0D30@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100016B4C(v1 + v3, a1, &unk_100923200, &unk_1007A5C50);
}

uint64_t sub_1002E0D98(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000204A4(a1, v1 + v3);
  return swift_endAccess();
}

void sub_1002E0E5C(uint64_t a1, uint64_t a2)
{
  sub_100744104();
  sub_1002E1C14(&unk_100928540, &type metadata accessor for SearchResult, &protocol conformance descriptor for SearchResult);
  sub_1007468B4();
  if (v2)
  {
    if (sub_1000F0DA4())
    {
      sub_100748B84();
    }
  }
}

void sub_1002E0F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_resultContents);
  if (v4)
  {
    v8 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_resultContents + 8);
    ObjectType = swift_getObjectType();
    type metadata accessor for SearchResultCollectionViewCell(0);
    v10 = v4;
    sub_1007477B4();
    (*(v8 + 56))(a1, a2, a3, ObjectType, v8);
  }
}

void sub_1002E1020(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_resultContents);
  if (v4)
  {
    v8 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_resultContents + 8);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 64);
    v11 = v4;
    v10(a1, a2, a3 & 1, ObjectType, v8);
  }
}

double sub_1002E1100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100744104();
  sub_1002E1C14(&unk_100928540, &type metadata accessor for SearchResult, &protocol conformance descriptor for SearchResult);
  sub_1007468B4();
  if (v4)
  {
    if (sub_1000F0DA4())
    {
      sub_10074DBD4();
    }
  }

  return result;
}

uint64_t (*sub_1002E11D8(uint64_t **a1))()
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
  v2[4] = sub_1002DE478(v2);
  return sub_1000181A8;
}

uint64_t sub_1002E124C()
{
  if (!*(v0 + OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_resultContents))
  {
    return 0;
  }

  type metadata accessor for AdvertsSearchResultContentView();
  result = swift_dynamicCastClass();
  if (result)
  {
    return *(*(result + OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_isDisplayingSearchAd);
  }

  return result;
}

uint64_t sub_1002E12DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_resultContents);
  if (!v1)
  {
    return 0;
  }

  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v3 = v1;
    v4 = sub_100747E14();

    return v4;
  }

  return result;
}

double sub_1002E1370(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_resultContents);
  if (v3)
  {
    v4 = a1;
    v5 = a2;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v7 = v3;
      sub_100747E24();

      return result;
    }

    a1 = v4;
    a2 = v5;
  }

  return sub_1000164A8(a1, a2);
}

uint64_t (*sub_1002E1450(void *a1))()
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
  v2[4] = sub_1002DE0D8(v2);
  return sub_10001BB78;
}

double sub_1002E1508(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();

  return result;
}

void (*sub_1002E1568(uint64_t *a1))(void **a1, char a2, __n128 a3)
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
  v5 = OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_100091CAC;
}

uint64_t sub_1002E1600()
{
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001B5AC(*v1, v1[1]);
  return v2;
}

double sub_1002E165C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1000164A8(v6, v7);
}

uint64_t sub_1002E17F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_1002E1844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_1002E18B0(uint64_t *a1, uint64_t a2))()
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
  *(v4 + 32) = sub_100747DB4();
  return sub_10001BB78;
}

uint64_t sub_1002E194C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension30SearchResultCollectionViewCell_resultContents);
  if (!v3)
  {
    return 0;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {
    return 0;
  }

  v4 = v3;
  v5 = sub_100747DA4();

  return v5 & 1;
}

uint64_t sub_1002E1B0C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002E1B44()
{

  return _swift_deallocObject(v0, 48, 7);
}

double sub_1002E1BA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1002E1BB8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1002E1C14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002E1E24()
{
  v0 = sub_100749944();
  sub_100039C50(v0, qword_10097EEC8);
  sub_10000D0FC(v0, qword_10097EEC8);
  return sub_100749934();
}

id sub_1002E1FC8(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_10000C518(&qword_1009315F0, &qword_1007B8BA8);
  __chkstk_darwin(v4);
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension20AnnotationImagesView_imageViews] = _swiftEmptyArrayStorage;
  type metadata accessor for AnnotationImagesView.AnnotationImageView();
  sub_100750624();
  sub_1002E3480();
  sub_1007512E4();
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v12, "initWithCoder:", a1);
  v6 = v5;
  if (v5)
  {
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v10 = v5;
    [v10 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  }

  return v6;
}

id sub_1002E2144(unint64_t a1)
{
  v56 = sub_10074F284();
  v3 = *(v56 - 8);
  __chkstk_darwin(v56);
  v55 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_10074F164();
  v5 = *(v61 - 8);
  __chkstk_darwin(v61);
  v60 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v7 - 8);
  v9 = &v39 - v8;
  v10 = sub_100741264();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v64 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_47;
  }

  v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  sub_1002E2AB0(v14);
  v15 = OBJC_IVAR____TtC22SubscribePageExtension20AnnotationImagesView_imageViews;
  swift_beginAccess();
  v62 = *(v1 + v15);
  v40 = v1;
  if (v13)
  {
    v13 = sub_100754664();
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13)
  {
    v58 = a1 & 0xFFFFFFFFFFFFFF8;
    v59 = a1 & 0xC000000000000001;
    v1 = (v62 & 0xFFFFFFFFFFFFFF8);
    if (v62 < 0)
    {
      v16 = v62;
    }

    else
    {
      v16 = v62 & 0xFFFFFFFFFFFFFF8;
    }

    v39 = v16;
    v54 = v62 & 0xC000000000000001;
    v53 = (v5 + 8);
    v52 = (v11 + 48);
    v50 = (v11 + 32);
    v42 = "CB1F0F719AnnotationImageView";
    v51 = (v11 + 8);
    v45 = (v3 + 8);
    v17 = 4;
    v57 = v62 >> 62;
    v41 = xmmword_1007A6580;
    v46 = v62 & 0xFFFFFFFFFFFFFF8;
    v43 = a1;
    v49 = v10;
    v48 = v9;
    v47 = v13;
    do
    {
      v5 = v17 - 4;
      if (v59)
      {
        sub_100754574();
        v3 = (v17 - 3);
        if (__OFADD__(v5, 1))
        {
          goto LABEL_44;
        }
      }

      else
      {
        if (v5 >= *(v58 + 16))
        {
          goto LABEL_45;
        }

        v3 = (v17 - 3);
        if (__OFADD__(v5, 1))
        {
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          v14 = sub_100754664();
          goto LABEL_3;
        }
      }

      if (v57)
      {
        if (v5 == sub_100754664())
        {
LABEL_38:

          break;
        }
      }

      else if (v5 == v1[2])
      {
        goto LABEL_38;
      }

      v63 = v3;
      if (v54)
      {
        v18 = sub_100754574();
      }

      else
      {
        if (v5 >= v1[2])
        {
          goto LABEL_46;
        }

        v18 = *(v62 + 8 * v17);
      }

      v11 = v18;
      v19 = v60;
      sub_10074F3C4();
      sub_10074F154();
      (*v53)(v19, v61);
      sub_100741254();

      if ((*v52)(v9, 1, v10) == 1)
      {

        return sub_10000C8CC(v9, &unk_100923970, &qword_1007A6B90);
      }

      (*v50)(v64, v9, v10);
      v20 = sub_100741234();
      if (!v21)
      {

LABEL_43:

        return (*v51)(v64, v10);
      }

      v22 = v20;
      v23 = v21;
      if ((sub_10074F1C4() & 1) == 0)
      {

        goto LABEL_43;
      }

      v24.value.super.super.isa = 0;
      v25 = sub_10074F1B4(v24);
      if (qword_100921848 != -1)
      {
        swift_once();
      }

      v26 = qword_10093E490;
      v27 = v25;
      v28 = sub_100753064();
      v29 = [objc_opt_self() imageNamed:v28 inBundle:v26 withConfiguration:{v27, v39}];

      if (!v29)
      {
        if (qword_100921ED0 != -1)
        {
          swift_once();
        }

        v30 = sub_100752E44();
        v44 = sub_10000D0FC(v30, qword_1009832E8);
        sub_10000C518(&qword_100923930, &qword_1007A6B60);
        sub_100752454();
        *(swift_allocObject() + 16) = v41;
        sub_1007523A4();
        v65[3] = &type metadata for String;
        v65[0] = v22;
        v65[1] = v23;

        sub_100752444();
        sub_10000C8CC(v65, &unk_100923520, &qword_1007A5A70);
        sub_100752D04();

        v29 = [objc_allocWithZone(UIImage) init];
        a1 = v43;
      }

      v10 = v49;
      (*v51)(v64, v49);
      [v29 size];
      if (qword_1009207F8 != -1)
      {
        swift_once();
      }

      v31 = sub_100749944();
      sub_10000D0FC(v31, qword_10097EEC8);
      sub_100749924();
      v3 = v55;
      sub_10074F294();
      sub_10074F254();
      (*v45)(v3, v56);
      sub_100753B74();
      [v11 setFrame:{0.0, 0.0, v32, v33}];
      v34 = v29;
      v35 = [v11 layer];
      [v35 removeAllAnimations];

      v36 = v34;
      [v11 setImage:v36];

      ++v17;
      v13 = v47;
      v9 = v48;
      v1 = v46;
    }

    while (v63 != v47);
  }

  v37 = v40;
  [v40 invalidateIntrinsicContentSize];
  return [v37 setNeedsLayout];
}

uint64_t sub_1002E2AB0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension20AnnotationImagesView_imageViews;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4 >> 62)
  {
    result = sub_100754664();
    if (result == a1)
    {
      return result;
    }
  }

  else
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result == a1)
    {
      return result;
    }
  }

  v6 = *&v1[v3];
  if (v6 >> 62)
  {
    if (sub_100754664() > a1)
    {
      goto LABEL_5;
    }
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
LABEL_5:
    swift_beginAccess();
    v8 = sub_1002E31B0(v7);
    result = swift_endAccess();
    if (!v8)
    {
      __break(1u);
      return result;
    }

    [v8 removeFromSuperview];
    swift_beginAccess();
    sub_10000C518(&qword_100931628, qword_1007B8BD0);
    sub_1007512D4();
    swift_endAccess();
    goto LABEL_13;
  }

  swift_beginAccess();
  sub_10000C518(&qword_100931628, qword_1007B8BD0);
  sub_1007512B4();
  swift_endAccess();
  swift_beginAccess();
  v8 = v9;
  sub_100753284();
  if (*((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100753304();
  }

  sub_100753344();
  swift_endAccess();
  [v1 addSubview:v8];
LABEL_13:

  return sub_1002E2AB0(a1);
}

uint64_t sub_1002E2EAC()
{
  ObjectType = swift_getObjectType();
  v17 = sub_100750354();
  v2 = *(v17 - 8);
  __chkstk_darwin(v17);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100749944();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = sub_100749954();
  v9 = *(v16[0] - 8);
  *&v10 = __chkstk_darwin(v16[0]).n128_u64[0];
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.receiver = v0;
  v18.super_class = ObjectType;
  v16[1] = ObjectType;
  objc_msgSendSuper2(&v18, "layoutSubviews", v10);
  swift_beginAccess();

  sub_1001580F4(v13);

  if (qword_1009207F8 != -1)
  {
    swift_once();
  }

  v14 = sub_10000D0FC(v5, qword_10097EEC8);
  (*(v6 + 16))(v8, v14, v5);
  sub_100749914();
  sub_1007477B4();
  sub_100749904();
  (*(v2 + 8))(v4, v17);
  return (*(v9 + 8))(v12, v16[0]);
}

unint64_t sub_1002E31B0(__n128 a1)
{
  if (!(*v1 >> 62))
  {
    result = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    result = sub_1002E365C(a1);
    if (result)
    {
      return result;
    }

    if (*v1 >> 62)
    {
      v6 = sub_100754664();
      v5 = __OFSUB__(v6, 1);
      result = v6 - 1;
      if (!v5)
      {
        return sub_1002E35C4(result, sub_10025F2C0, v3);
      }
    }

    else
    {
      v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v5 = __OFSUB__(v4, 1);
      result = v4 - 1;
      if (!v5)
      {
        return sub_1002E35C4(result, sub_10025F2C0, v3);
      }
    }

    __break(1u);
    return result;
  }

  result = sub_100754664();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

id sub_1002E3254@<X0>(void *a1@<X8>)
{
  type metadata accessor for AnnotationImagesView.AnnotationImageView();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for AnnotationImagesView(uint64_t a1)
{
  result = qword_1009315D8;
  if (!qword_1009315D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002E3370(uint64_t a1)
{
  sub_1002E3410(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1002E3410(uint64_t a1)
{
  if (!qword_1009315E8)
  {
    sub_10000C724(&qword_1009315F0, &qword_1007B8BA8);
    sub_1002E3480();
    v1 = sub_1007512F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1009315E8);
    }
  }
}

unint64_t sub_1002E3480()
{
  result = qword_1009315F8;
  if (!qword_1009315F8)
  {
    sub_10000C724(&qword_1009315F0, &qword_1007B8BA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009315F8);
  }

  return result;
}

char *sub_1002E3508(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10025DA58(v3);
    v3 = result;
  }

  v5 = *(v3 + 2);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = &v3[24 * a1];
    v7 = *(v6 + 4);
    v8 = v5 - 1;
    memmove(v6 + 32, v6 + 56, 24 * (v5 - 1 - a1));
    *(v3 + 2) = v8;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_1002E35C4(unint64_t a1, uint64_t (*a2)(uint64_t), __n128 a3)
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v6 < 0 || (v6 & 0x4000000000000000) != 0)
  {
    result = a2(v6);
    v6 = result;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8 <= a1)
  {
    __break(1u);
  }

  else
  {
    v9 = v8 - 1;
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v6 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v6 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v8 - 1 - a1));
    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v9;
    *v3 = v6;
    return v10;
  }

  return result;
}

uint64_t sub_1002E365C(__n128 a1)
{
  v2 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v2 < 0 || (v2 & 0x4000000000000000) != 0)
  {
    result = sub_10025F2C0();
    v2 = result;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    v5 = v4 - 1;
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v5 + 0x20);
    *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
    *v1 = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1002E36C0(unint64_t a1, uint64_t a2, double a3, double a4)
{
  v47 = sub_10074F284();
  v6 = *(v47 - 8);
  __chkstk_darwin(v47);
  v46 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10074F164();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v12 - 8);
  v14 = v38 - v13;
  v55 = sub_100741264();
  v15 = *(v55 - 8);
  __chkstk_darwin(v55);
  v17 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v18 = sub_100754664();
  }

  else
  {
    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = _swiftEmptyArrayStorage;
  if (!v18)
  {
    goto LABEL_28;
  }

  v57 = _swiftEmptyArrayStorage;
  v54 = v18;
  sub_1007545C4();
  if (v54 < 0)
  {
    __break(1u);
    return;
  }

  v51 = v17;
  v38[1] = a2;
  v20 = 0;
  v52 = (v9 + 8);
  v53 = a1 & 0xC000000000000001;
  v21 = (v15 + 48);
  v48 = (v15 + 8);
  v49 = (v15 + 32);
  v40 = "CB1F0F719AnnotationImageView";
  v44 = (v6 + 8);
  v39 = xmmword_1007A6580;
  v45 = a1;
  v50 = v8;
  v43 = (v15 + 48);
  do
  {
    v22 = v55;
    if (v53)
    {
      sub_100754574();
    }

    else
    {
    }

    sub_10074F3C4();
    sub_10074F154();
    (*v52)(v11, v8);
    sub_100741254();

    if ((*v21)(v14, 1, v22) == 1)
    {
      sub_10000C8CC(v14, &unk_100923970, &qword_1007A6B90);
LABEL_7:
      sub_100750F34();
      swift_allocObject();
      sub_100750F14();
      goto LABEL_8;
    }

    v23 = v51;
    (*v49)(v51, v14, v22);
    v24 = sub_100741234();
    if (!v25)
    {
      (*v48)(v23, v22);
LABEL_26:
      v8 = v50;
      goto LABEL_7;
    }

    v26 = v24;
    v27 = v25;
    if ((sub_10074F1C4() & 1) == 0)
    {

      (*v48)(v51, v22);
      goto LABEL_26;
    }

    v28.value.super.super.isa = 0;
    v29 = sub_10074F1B4(v28);
    if (qword_100921848 != -1)
    {
      swift_once();
    }

    v30 = qword_10093E490;
    v31 = v29;
    v32 = sub_100753064();
    v33 = [objc_opt_self() imageNamed:v32 inBundle:v30 withConfiguration:v31];

    if (!v33)
    {
      v42 = v31;
      if (qword_100921ED0 != -1)
      {
        swift_once();
      }

      v34 = sub_100752E44();
      v41 = sub_10000D0FC(v34, qword_1009832E8);
      sub_10000C518(&qword_100923930, &qword_1007A6B60);
      sub_100752454();
      *(swift_allocObject() + 16) = v39;
      sub_1007523A4();
      v56[3] = &type metadata for String;
      v56[0] = v26;
      v56[1] = v27;

      sub_100752444();
      sub_10000C8CC(v56, &unk_100923520, &qword_1007A5A70);
      sub_100752D04();

      v33 = [objc_allocWithZone(UIImage) init];
      v31 = v42;
    }

    (*v48)(v51, v55);
    [v33 size];
    if (qword_1009207F8 != -1)
    {
      swift_once();
    }

    v35 = sub_100749944();
    sub_10000D0FC(v35, qword_10097EEC8);
    sub_100749924();
    v36 = v46;
    sub_10074F294();
    sub_10074F254();
    (*v44)(v36, v47);
    sub_100753B74();
    sub_100750F34();
    swift_allocObject();
    sub_100750F14();

    v8 = v50;
    v21 = v43;
LABEL_8:

    ++v20;
    sub_1007545A4();
    sub_1007545D4();
    sub_1007545E4();
    sub_1007545B4();
  }

  while (v54 != v20);
  v19 = v57;
LABEL_28:
  sub_10015813C(v19);

  if (qword_1009207F8 != -1)
  {
    swift_once();
  }

  v37 = sub_100749944();
  sub_10000D0FC(v37, qword_10097EEC8);
  sub_1007498F4();
}

uint64_t type metadata accessor for TodayPageLayoutSectionProvider(uint64_t a1)
{
  result = qword_100931660;
  if (!qword_100931660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1002E4354(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v56 = a8;
  v62 = a6;
  v63 = a7;
  v60 = a4;
  v61 = a5;
  v57 = a3;
  v58 = a2;
  v59 = a10;
  v11 = sub_10074E984();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v51 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v47 - v15;
  v17 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v47 - v22;
  v55 = a1;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v24 = *(v18 + 8);
  v24(v23, v17);
  v52 = v16;
  v53 = v12;
  v25 = *(v12 + 88);
  v54 = v11;
  v26 = v25(v16, v11);
  if (v26 == enum case for Shelf.ContentType.todayCard(_:))
  {
    v27 = v58();
    v28 = sub_1002E490C(v55, v27, v60, v61, v62, v63, v59);
  }

  else
  {
    v50 = &v47;
    __chkstk_darwin(v26);
    __chkstk_darwin(v29);
    v47 = v24;
    sub_10074CBA4();
    v30 = sub_10074CBB4();
    v48 = a9;
    v31 = v55;
    v49 = v30(v55, sub_1000FA880, &v47 - 4, v60, v61, v62, v63, v56, a9, v59);
    sub_100747C04();
    swift_getKeyPath();
    v32 = v51;
    sub_1007525B4();

    v47(v20, v17);
    v33 = v54;
    v34 = v25(v32, v54);
    if (v34 == enum case for Shelf.ContentType.ribbonBar(_:))
    {
      v35 = v58();
      v28 = sub_1003EFB6C(v31, v35, v60, v61, v62, v63, v56, v48, v59);

      v36 = v53;
    }

    else
    {
      v37 = v32;
      v38 = v48;
      v39 = v59;
      v40 = v60;
      v41 = v56;
      v43 = v61;
      v42 = v62;
      v44 = v63;
      v36 = v53;
      if (v34 == enum case for Shelf.ContentType.ribbonFlow(_:))
      {
        v45 = v58();
        v28 = sub_1003F0EB0(v31, v45, v40, v43, v42, v44, v41, v38, v39);

        v33 = v54;
      }

      else if (v34 == enum case for Shelf.ContentType.smallContactCard(_:))
      {
        v28 = v49;
        [v49 setOrthogonalScrollingBehavior:2];
        v33 = v54;
      }

      else
      {
        v33 = v54;
        (*(v53 + 8))(v37, v54);
        v28 = v49;
      }
    }

    (*(v36 + 8))(v52, v33);
  }

  return v28;
}

uint64_t sub_1002E48B0()
{
  sub_10074CBC4();

  return swift_deallocClassInstance();
}

id sub_1002E490C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v130[3] = a6;
  v13 = sub_1007469A4();
  v151 = *(v13 - 8);
  __chkstk_darwin(v13);
  v148 = v130 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10074F704();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v140 = v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v130 - v19;
  v152 = a2;
  v147 = v13;
  if ((sub_1007532D4() & 1) == 0)
  {
    sub_100016C60(0, &qword_100939B90, NSCollectionLayoutGroup_ptr);
    v109 = sub_100753984();
    v110 = [objc_opt_self() sectionWithGroup:v109];

    sub_10074CB84();
    return v110;
  }

  v130[1] = a3;
  v130[2] = a5;
  v146 = a7;
  v21 = sub_1001213B0(a1);
  v22 = *(v21 + 2);
  if (v22 <= 1)
  {
    v22 = 1;
  }

  v23 = (v22 - 1);
  sub_100747B84();
  sub_10074F5B4();
  v25 = v24;
  v26 = *(v16 + 8);
  v145 = v15;
  v144 = v16 + 8;
  v26(v20, v15);
  v27 = v25 * v23;
  v160 = _swiftEmptyArrayStorage;
  v28 = &stru_1008F2000;
  v29 = &stru_1008F2000;
  v30 = v20;
  v135 = *(v21 + 2);
  v143 = v26;
  if (!v135)
  {

    v111 = _swiftEmptyArrayStorage;
    goto LABEL_64;
  }

  v132 = objc_opt_self();
  v154 = objc_opt_self();
  v138 = objc_opt_self();
  v131 = objc_opt_self();
  v31 = 0;
  v32 = 0;
  v136 = v21;
  v134 = v21 + 32;
  v149 = v151 + 16;
  v150 = (v151 + 8);
  v142 = v20;
  v33 = v147;
  v34 = v148;
  v133 = a4;
  v141 = a1;
  do
  {
    if (v32 >= *(v136 + 2))
    {
      goto LABEL_71;
    }

    v139 = v32;
    v35 = *&v134[8 * v32];
    v36 = *(v35 + 16);
    if (v36)
    {
      v29 = *(v152 + 16);

      v37 = 0.0;
      v30 = 32;
      v155 = _swiftEmptyArrayStorage;
      v153 = v29;
      while (1)
      {
        if (v31 < v29)
        {
          if (v31 < 0)
          {
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            sub_100016C60(0, &qword_100923478, NSCollectionLayoutItem_ptr);

            sub_100754654();

            goto LABEL_66;
          }

          v38 = v35;
          v39 = *(v35 + v30);
          (*(v151 + 16))(v34, v152 + ((*(v151 + 80) + 32) & ~*(v151 + 80)) + *(v151 + 72) * v31++, v33);
          sub_10074FBB4();
          sub_100194E74();
          sub_1007468B4();
          v40 = aBlock[0];
          if (aBlock[0])
          {
            sub_10074CB74();
            sub_10000C888(aBlock, v157);
            if (sub_10074D754())
            {
              type metadata accessor for BaseTodayCardCollectionViewCell(0);
              v41 = swift_dynamicCastMetatype();
              if (v41)
              {
                v42 = v41;
                sub_10000C620(aBlock);
                swift_getKeyPath();
                v43 = v142;
                sub_100746914();

                swift_getKeyPath();
                sub_100746914();

                v44 = aBlock[0];
                v45 = (*(v42 + 528))(v40, v39, 0, v43, aBlock[0], 0);

                v46 = v143;
                v143(v43, v145);
                v47 = v140;
                sub_100747B84();
                sub_10074FC24();
                sub_10074F674();
                switch(v39)
                {
                  case 6:
                    v53 = floor(v48);
                    v54 = v145;
                    v33 = v147;
                    break;
                  case 5:
                    sub_10074F5A4();
                    v53 = v52;
                    v54 = v145;
                    v33 = v147;
                    break;
                  case 4:
                    v49 = v48;
                    v50 = sub_10074F6C4();
                    v33 = v147;
                    v35 = v38;
                    v29 = v153;
                    if (!v51)
                    {
                      goto LABEL_38;
                    }

                    if (v50 == 0x6972477961646F74 && v51 == 0xE900000000000064)
                    {

                      goto LABEL_37;
                    }

                    v71 = sub_100754754();

                    if (v71)
                    {
LABEL_37:
                      sub_10074F634();
                      v53 = floor((v49 - v72) * 0.5);
                    }

                    else
                    {
LABEL_38:
                      sub_10074F674();
                      v53 = v73;
                    }

                    v143(v47, v145);
LABEL_43:
                    if (v37 <= v45)
                    {
                      v37 = v45;
                    }

                    v82 = v155;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v82 = sub_100254EA4(0, *(v82 + 2) + 1, 1, v82);
                    }

                    v84 = *(v82 + 2);
                    v83 = *(v82 + 3);
                    v155 = v82;
                    if (v84 >= v83 >> 1)
                    {
                      v155 = sub_100254EA4((v83 > 1), v84 + 1, 1, v155);
                    }

                    v85 = v148;
                    (*v150)(v148, v33);
                    v86 = v155;
                    *(v155 + 2) = v84 + 1;
                    v87 = &v86[8 * v84];
                    v34 = v85;
                    *(v87 + 4) = v53;
                    v28 = &stru_1008F2000;
                    goto LABEL_11;
                  default:
                    sub_10074FC24();
                    sub_10074F674();
                    if (v39 > 1)
                    {
                      v33 = v147;
                      if (v39 == 2)
                      {
                        sub_10074F594();
                        v59 = v58 + -1.0;
                        sub_10074F5A4();
                        v61 = v60;
                        sub_10074F634();
                        v63 = v59 + -1.0;
                        if (v59 + -1.0 < 0.0)
                        {
                          v63 = 0.0;
                        }

                        v64 = v61 * v59 + v62 * v63;
                        sub_10074F5C4();
                        v66 = v65;
                        sub_10074F664();
                        v69 = v66 - (v67 + v68);
                        sub_10074F634();
                        v55 = v69 - v70 - v64;
                      }

                      else
                      {
                        sub_10074F5C4();
                        v75 = v74;
                        sub_10074F664();
                        v78 = v75 - (v76 + v77);
                        sub_10074F5A4();
                        v80 = v78 - v79;
                        sub_10074F634();
                        v55 = v80 - v81;
                      }
                    }

                    else
                    {
                      v33 = v147;
                      if (v39)
                      {
                        v56 = v55;
                        sub_10074F634();
                        v55 = (v56 - v57) * 0.5;
                      }
                    }

                    v53 = floor(v55);
                    v54 = v145;
                    break;
                }

                v35 = v38;
                v29 = v153;
                v46(v47, v54);
                goto LABEL_43;
              }

              v34 = v148;
              v33 = v147;
              (*v150)(v148, v147);

              sub_10000C620(aBlock);
            }

            else
            {
              v33 = v147;
              (*v150)(v34, v147);

              sub_10000C620(aBlock);
            }

            v28 = &stru_1008F2000;
          }

          else
          {
            (*v150)(v34, v33);
          }

          v35 = v38;
          v29 = v153;
        }

LABEL_11:
        ++v30;
        if (!--v36)
        {

          v30 = v142;
          v88 = v155;
          goto LABEL_52;
        }
      }
    }

    v37 = 0.0;
    v88 = _swiftEmptyArrayStorage;
LABEL_52:
    v89 = *(v88 + 2);
    v90 = v154;
    if (v89)
    {
      v137 = v31;
      v155 = v88;
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1007545C4();
      v153 = objc_opt_self();
      v91 = 32;
      v92 = v138;
      do
      {
        v93 = [v90 v28[62].name];
        v94 = [v90 v28[62].name];
        v95 = [v92 sizeWithWidthDimension:v93 heightDimension:v94];

        sub_100016C60(0, &unk_10092E470, NSCollectionLayoutSupplementaryItem_ptr);
        isa = sub_100753294().super.isa;
        v97 = [(__objc2_prop *)v153 itemWithLayoutSize:v95 supplementaryItems:isa];

        sub_1007545A4();
        sub_1007545D4();
        v90 = v154;
        sub_1007545E4();
        sub_1007545B4();
        v91 += 8;
        --v89;
      }

      while (v89);

      v30 = v142;
      v33 = v147;
      v31 = v137;
    }

    else
    {
    }

    v98 = [v90 fractionalWidthDimension:1.0];
    v99 = [v90 v28[62].name];
    v100 = [v138 sizeWithWidthDimension:v98 heightDimension:v99];

    sub_100016C60(0, &qword_100923478, NSCollectionLayoutItem_ptr);
    v101 = sub_100753294().super.isa;

    v102 = [v132 horizontalGroupWithLayoutSize:v100 subitems:v101];

    sub_100747B84();
    sub_10074F634();
    v104 = v103;
    v143(v30, v145);
    v105 = [v131 fixedSpacing:v104];
    [v102 setInterItemSpacing:v105];

    v106 = v102;
    sub_100753284();
    if (*((v160 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v160 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    v107 = v139 + 1;
    sub_100753344();

    v32 = v107;
    v27 = v27 + v37;
    v108 = v107 == v135;
    v34 = v148;
    v29 = &stru_1008F2000;
  }

  while (!v108);
  v111 = v160;

LABEL_64:
  v112 = objc_opt_self();
  v113 = [v112 fractionalWidthDimension:1.0];
  v114 = [v112 absoluteDimension:v27];
  v29 = [objc_opt_self() v29[62].attr];

  if (v111 >> 62)
  {
    goto LABEL_72;
  }

  sub_100754764();
  sub_100016C60(0, &qword_100923478, NSCollectionLayoutItem_ptr);
LABEL_66:

  v115 = objc_opt_self();
  sub_100016C60(0, &qword_100923478, NSCollectionLayoutItem_ptr);
  v116 = sub_100753294().super.isa;

  v117 = [v115 verticalGroupWithLayoutSize:v29 subitems:v116];

  v118 = objc_opt_self();
  sub_100747B84();
  sub_10074F634();
  v120 = v119;
  v121 = v145;
  v122 = v143;
  v143(v30, v145);
  v123 = [v118 fixedSpacing:v120];
  [v117 setInterItemSpacing:v123];

  v110 = [objc_opt_self() sectionWithGroup:v117];
  sub_100747B84();
  sub_10074F5B4();
  v125 = v124;
  v122(v30, v121);
  [v110 setInterGroupSpacing:v125];
  sub_10074CB94();
  v126 = sub_1007532C4();
  v128 = v127;

  if (v126)
  {
    v158 = v126;
    v159 = v128;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1005D5E28;
    v157 = &unk_100870620;
    v126 = _Block_copy(aBlock);
  }

  [v110 setVisibleItemsInvalidationHandler:v126];
  _Block_release(v126);
  sub_10074CB84();

  return v110;
}

double sub_1002E59B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1002E59D0()
{
  sub_1000164A8(*(v0 + 32), *(v0 + 40));
  sub_1000164A8(*(v0 + 48), *(v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_1002E5A18()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    v1 = sub_1002E5A78(1);
    *(v0 + 104) = v1;
  }

  return v1;
}

uint64_t sub_1002E5A78(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007A7210;
  sub_1002E6170(*(v1 + 32), v3);
  *(v4 + 32) = v5;
  *(v4 + 40) = sub_1002E6318(*(v1 + 40), v3);
  v36 = v4;
  v6 = *(v1 + 48);
  if (v6 && (*(v1 + 72) & 1) == 0)
  {
    v7 = v6;
    sub_1002E7560(v7, v3 & 1);
    sub_100753284();
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();

    v4 = v36;
  }

  v8 = *(v1 + 64);
  sub_100016C60(0, &qword_10093B420, UIButton_ptr);
  if (sub_1007532D4())
  {
    if (v8 >> 62)
    {
      sub_100016C60(0, &qword_100922300, UIView_ptr);

      v35 = sub_100754654();

      v8 = v35;
    }

    else
    {

      sub_100754764();
      sub_100016C60(0, &qword_100922300, UIView_ptr);
    }

    sub_1002E64D4(v8, v3 & 1);

    sub_100753284();
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();
    v4 = v36;
  }

  v9 = *(v2 + 56);
  if (v9)
  {
    v10 = *(v2 + 96);
    v11 = v9;
    sub_1002E6694(v11, v3 & 1, v10);
    sub_100753284();
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();

    v4 = v36;
  }

  v12 = *(v2 + 16);
  if (v12)
  {
    v13 = *(v2 + 24);
    if (v13)
    {
      v14 = v12;
      v15 = v13;
      sub_1002E773C(v14, v15, v3 & 1);
      sub_100753284();
      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100753304();
      }

      sub_100753344();

      v4 = v36;
    }

    else
    {
      v16 = v12;
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v17 = *(v2 + 88);
    v18 = swift_unknownObjectRetain();
    sub_1002E78E8(v18, v17, v3 & 1);
    swift_unknownObjectRelease();
    sub_100753284();
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();
    swift_unknownObjectRelease();
    v4 = v36;
  }

  if (v12)
  {
    ObjectType = swift_getObjectType();
    v20 = swift_conformsToProtocol2();
    if (v20 && *(*(*&v12[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC22SubscribePageExtensionP33_8767515069BB09BCE0E30A883EC3EF0710HeaderView_mediaView) + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_hasMedia) == 1 && !*(v2 + 24) && (*(v2 + 72) & 1) == 0)
    {
      v21 = v20;
      v22 = *(v20 + 8);
      v23 = *(v22 + 160);
      v24 = v12;
      v25 = v23(ObjectType, v22);
      if (v25 != 7)
      {
        if (v25 == 6)
        {
          sub_1002E7BF8(v24, v21, v3 & 1);
          goto LABEL_37;
        }

        if (v25 == 4)
        {
          sub_1002E7A58(v24, v21, v3 & 1);
LABEL_37:
          sub_100753284();
          if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_100753304();
          }

          sub_100753344();

          v4 = v36;
          goto LABEL_40;
        }
      }
    }

LABEL_40:
    v26 = swift_getObjectType();
    v27 = swift_conformsToProtocol2();
    if (v27 && (*(v27 + 160))(v26, v27) == 4 && (v29 = swift_getObjectType(), (v30 = swift_conformsToProtocol2()) != 0) && (*(v30 + 32))(v29, v30))
    {
      v32 = v31;
      v33 = swift_getObjectType();
      v34 = (*(v32 + 16))(v33, v32);
      swift_unknownObjectRelease();
      sub_1002E7E20(v34, v3 & 1);
      sub_100753284();
      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100753304();
      }

      sub_100753344();

      return v36;
    }

    else
    {
    }
  }

  return v4;
}

uint64_t sub_1002E6114()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    v1 = sub_1002E5A78(0);
    *(v0 + 112) = v1;
  }

  return v1;
}

double sub_1002E6170(void *a1, char a2)
{
  v5 = objc_allocWithZone(UIViewPropertyAnimator);
  if (a2)
  {
    v6 = 0;
    v7 = [v5 initWithDuration:0 controlPoint1:0.09 controlPoint2:0.5 animations:{0.0, 0.5, 1.0}];
    v8 = 0.0;
  }

  else
  {
    v7 = [v5 initWithDuration:0 controlPoint1:0.14 controlPoint2:0.0 animations:{0.0, 1.0, 1.0}];
    v8 = 0.3;
    v6 = 0x3FC5C28F5C28F5C3;
  }

  v9 = v7;
  [a1 setAlpha:v8];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2 & 1;
  *(v10 + 32) = v2;
  v15[4] = sub_1002E84A8;
  v15[5] = v10;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_1000CF7B0;
  v15[3] = &unk_100870B20;
  v11 = _Block_copy(v15);
  v12 = a1;

  [v9 addAnimations:v11];

  _Block_release(v11);
  type metadata accessor for TodayTransitionCompanionAnimations.CompanionAnimation();
  v13 = swift_allocObject();
  result = 0.0;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0u;
  *(v13 + 16) = v9;
  *(v13 + 24) = v6;
  return result;
}

void *sub_1002E6318(void *a1, char a2)
{
  v5 = objc_allocWithZone(UIViewPropertyAnimator);
  if (a2)
  {
    v6 = 0.15;
    v7 = 0.46;
    v8 = 0.8;
  }

  else
  {
    v6 = 0.36;
    v7 = 0.2;
    v8 = 0.21;
  }

  v9 = [v5 initWithDuration:0 controlPoint1:v6 controlPoint2:v7 animations:{0.0, v8, 1.0}];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = a2 & 1;
  *(v10 + 24) = a2 & 1;
  *(v10 + 32) = v2;
  v19[4] = sub_1002E8450;
  v19[5] = v10;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_1000CF7B0;
  v19[3] = &unk_100870AA8;
  v12 = _Block_copy(v19);
  v13 = v9;
  v14 = a1;

  [v13 addAnimations:v12];

  _Block_release(v12);
  type metadata accessor for TodayTransitionCompanionAnimations.CompanionAnimation();
  v15 = swift_allocObject();
  v15[6] = 0;
  v15[7] = 0;
  v15[2] = v13;
  v15[3] = 0;
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v11;
  *(v16 + 32) = v2;
  v15[4] = sub_1002E8498;
  v15[5] = v16;
  v17 = v14;
  return v15;
}

void *sub_1002E64D4(uint64_t a1, char a2)
{
  v5 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.1 controlPoint2:0.0 animations:{0.0, 1.0, 1.0}];
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = v2;
  v12[4] = sub_1002E854C;
  v12[5] = v6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1000CF7B0;
  v12[3] = &unk_1008706E8;
  v7 = _Block_copy(v12);

  [v5 addAnimations:v7];
  _Block_release(v7);
  type metadata accessor for TodayTransitionCompanionAnimations.CompanionAnimation();
  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = 0x3FB999999999999ALL;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a1;
  *(v9 + 32) = v2;
  v8[4] = sub_1002E8094;
  v8[5] = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = v2;
  v8[6] = sub_1002E80A0;
  v8[7] = v10;
  swift_bridgeObjectRetain_n();
  return v8;
}

uint64_t sub_1002E6694(void *a1, char a2, void *a3)
{
  v7 = 0.0;
  v8 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.17 controlPoint2:0.5 animations:{0.0, 0.5, 1.0}];
  if ((a2 & 1) == 0)
  {
    v7 = 0.1;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 40) = v3;
  v22[4] = sub_1002E8104;
  v22[5] = v9;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 1107296256;
  v22[2] = sub_1000CF7B0;
  v22[3] = &unk_100870788;
  v10 = _Block_copy(v22);
  v11 = v8;
  v12 = a1;
  v13 = a3;

  [v11 addAnimations:v10];

  _Block_release(v10);
  type metadata accessor for TodayTransitionCompanionAnimations.CompanionAnimation();
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  *(v14 + 24) = v7;
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = v12;
  *(v15 + 32) = v13;
  *(v15 + 40) = v3;
  *(v14 + 32) = sub_1002E8154;
  *(v14 + 40) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = v13;
  *(v16 + 32) = v12;
  *(v14 + 48) = sub_1002E81A4;
  *(v14 + 56) = v16;
  v17 = v12;
  v18 = v13;
  v19 = v17;
  v20 = v18;
  return v14;
}

double sub_1002E68DC(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a2();
  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
  {
    v5 = 0;
    while ((v3 & 0xC000000000000001) != 0)
    {
      v6 = sub_100754574();
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_13;
      }

LABEL_9:
      v8 = *(v6 + 32);
      if (v8)
      {
        v9 = *(v6 + 40);

        v8(v10);

        sub_1000164A8(v8, v9);
      }

      else
      {
      }

      ++v5;
      if (v7 == i)
      {
        goto LABEL_16;
      }
    }

    if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

    v6 = *(v3 + 8 * v5 + 32);

    v7 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return result;
}

double sub_1002E6A20(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = v1;
  if (v1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
  {
    v4 = 0;
    while ((v2 & 0xC000000000000001) != 0)
    {
      v5 = sub_100754574();
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      [*(v5 + 16) startAnimationAfterDelay:*(v5 + 24)];

      ++v4;
      if (v6 == i)
      {
        goto LABEL_14;
      }
    }

    if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v5 = *(v2 + 8 * v4 + 32);

    v6 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  return result;
}

void sub_1002E6B20(void *a1, char a2)
{
  if (a2)
  {
    v3 = 50.0;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = [objc_opt_self() effectWithBlurRadius:v3];
  [a1 _setEffect:v4];
}

void sub_1002E6BB4(void *a1, char a2)
{
  if (a2)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 50.0;
  }

  v4 = [objc_opt_self() effectWithBlurRadius:v3];
  [a1 _setEffect:v4];
}

void sub_1002E6CA0(char a1, unint64_t a2)
{
  if (a1)
  {
    if (a2 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
    {
      for (j = 0; ; ++j)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v5 = sub_100754574();
        }

        else
        {
          if (j >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v5 = *(a2 + 8 * j + 32);
        }

        v6 = v5;
        v7 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        [v5 setAlpha:0.0];

        if (v7 == i)
        {
          return;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }
  }
}

void sub_1002E6D7C(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    do
    {
      v4 = 0;
      if (a2)
      {
        v5 = 1.0;
      }

      else
      {
        v5 = 0.0;
      }

      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v6 = sub_100754574();
        }

        else
        {
          if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_14;
          }

          v6 = *(a1 + 8 * v4 + 32);
        }

        v7 = v6;
        v8 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        [v6 setAlpha:v5];

        ++v4;
        if (v8 == v3)
        {
          return;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v9 = a2;
      v10 = sub_100754664();
      a2 = v9;
      v3 = v10;
    }

    while (v10);
  }
}

void sub_1002E6E74(id a1, char a2, id a3)
{
  if (a2)
  {
    if ([a3 userInterfaceIdiom] == 1)
    {
      v5 = 32.0;
    }

    else
    {
      [a3 displayCornerRadius];
    }

    [a1 _setContinuousCornerRadius:v5];
  }

  else
  {
    [a1 _setContinuousCornerRadius:20.0];
    if (sub_1007537E4())
    {
      v6 = [a1 layer];
      [v6 setMaskedCorners:15];
    }
  }
}

void sub_1002E6F70(char a1, id a2, void *a3)
{
  if (a1)
  {
    [a2 _setContinuousCornerRadius:20.0];
    [a2 setClipsToBounds:1];
    if ([a3 horizontalSizeClass] != 2)
    {
      return;
    }

    v5 = 3;
    goto LABEL_11;
  }

  [a2 _continuousCornerRadius];
  if (v6 == 0.0)
  {
    if ([a3 userInterfaceIdiom] == 1)
    {
      v7 = 32.0;
    }

    else
    {
      [a3 displayCornerRadius];
    }

    [a2 _setContinuousCornerRadius:v7];
    [a2 setClipsToBounds:1];
  }

  if (sub_1007537D4())
  {
    v5 = 15;
LABEL_11:
    v8 = [a2 layer];
    [v8 setMaskedCorners:v5];
  }
}

void sub_1002E70B4(char a1, uint64_t a2)
{
  if (a1)
  {
    if (!a2)
    {
      return;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v3 = Strong;
    v4 = 1;
  }

  else
  {
    if (!a2)
    {
      return;
    }

    v5 = swift_unknownObjectWeakLoadStrong();
    if (!v5)
    {
      return;
    }

    v3 = v5;
    v4 = 0;
  }

  v6 = v3;
  sub_1000BF66C(v4);
}

id sub_1002E7158(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_topLabelsView);
  if (v5)
  {
    v6 = 1.0;
    if (a3)
    {
      v6 = 0.0;
    }

    [v5 setAlpha:v6];
  }

  if (a3)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  [*(a1 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_labelsView) setAlpha:v7];
  v8 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_trailingLockupContainer);
  if (v8)
  {
    if (a3)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = 1.0;
    }

    [v8 setAlpha:v9];
  }

  v10 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_lockupContainer);

  return [v10 setAlpha:v7];
}

id sub_1002E7230(id result, uint64_t a2)
{
  if (!result)
  {
    v19 = v3;
    v20 = v2;
    v9 = *(a2 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_topLabelsView);
    if (v9)
    {
      v10 = v9;
      [v10 alpha];
      [v10 setHidden:v11 == 0.0];
    }

    v12 = *(a2 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_labelsView);
    [v12 alpha];
    [v12 setHidden:v13 == 0.0];
    v14 = *(a2 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_trailingLockupContainer);
    if (v14)
    {
      v15 = v14;
      [v15 alpha];
      [v15 setHidden:v16 == 0.0];
    }

    v17 = *(a2 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_lockupContainer);
    [v17 alpha];

    return [v17 setHidden:v18 == 0.0];
  }

  return result;
}

id sub_1002E7340(uint64_t a1, uint64_t a2, char a3)
{
  v5 = OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_topLabelsView;
  v6 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_topLabelsView);
  if (v6)
  {
    v7 = 0.0;
    if (a3)
    {
      v7 = 1.0;
    }

    [v6 setAlpha:v7];
    v8 = *(a1 + v5);
    if (v8)
    {
      [v8 setHidden:0];
    }
  }

  v9 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_labelsView);
  if (a3)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = 1.0;
  }

  [*(a1 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_labelsView) setAlpha:v10];
  [v9 setHidden:0];
  v11 = OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_trailingLockupContainer;
  v12 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_trailingLockupContainer);
  if (v12)
  {
    v13 = (a3 & 1) != 0 ? 1.0 : 0.0;
    [v12 setAlpha:v13];
    v14 = *(a1 + v11);
    if (v14)
    {
      [v14 setHidden:0];
    }
  }

  v15 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_lockupContainer);
  [v15 setAlpha:v10];

  return [v15 setHidden:0];
}

id *sub_1002E7474()
{

  sub_10000C4F0((v0 + 10));

  return v0;
}

uint64_t sub_1002E74E4()
{
  sub_1002E7474();

  return swift_deallocClassInstance();
}

void *sub_1002E7560(void *a1, char a2)
{
  v4 = objc_allocWithZone(UIViewPropertyAnimator);
  if (a2)
  {
    v5 = 1.0;
    v6 = [v4 initWithDuration:0 controlPoint1:0.15 controlPoint2:0.46 animations:{0.0, 0.8, 1.0}];
    v7 = 0.9;
  }

  else
  {
    v7 = 1.0;
    v6 = [v4 initWithDuration:0 controlPoint1:0.36 controlPoint2:0.2 animations:{0.0, 0.21, 1.0}];
    v5 = 0.9;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = v7;
  v16[4] = sub_1002E851C;
  v16[5] = v8;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_1000CF7B0;
  v16[3] = &unk_100870670;
  v9 = _Block_copy(v16);
  v10 = v6;
  v11 = a1;

  [v10 addAnimations:v9];

  _Block_release(v9);
  type metadata accessor for TodayTransitionCompanionAnimations.CompanionAnimation();
  v12 = swift_allocObject();
  v12[6] = 0;
  v12[7] = 0;
  v12[2] = v10;
  v12[3] = 0;
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v5;
  v12[4] = sub_1002E8004;
  v12[5] = v13;
  v14 = v11;
  return v12;
}

uint64_t sub_1002E773C(void *a1, void *a2, char a3)
{
  v6 = 0.0;
  v7 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.09 controlPoint2:0.5 animations:{0.0, 0.5, 1.0}];
  if ((a3 & 1) == 0)
  {
    v6 = 0.1;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a2;
  *(v8 + 32) = a1;
  v17[4] = sub_1002E8204;
  v17[5] = v8;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_1000CF7B0;
  v17[3] = &unk_100870828;
  v9 = _Block_copy(v17);
  v10 = v7;
  v11 = a2;
  v12 = a1;

  [v10 addAnimations:v9];

  _Block_release(v9);
  type metadata accessor for TodayTransitionCompanionAnimations.CompanionAnimation();
  v13 = swift_allocObject();
  *(v13 + 48) = 0;
  *(v13 + 56) = 0;
  *(v13 + 16) = v10;
  *(v13 + 24) = v6;
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = v11;
  *(v13 + 32) = sub_1002E82A4;
  *(v13 + 40) = v14;
  v15 = v11;
  return v13;
}

double sub_1002E78E8(uint64_t a1, uint64_t a2, char a3)
{
  if (sub_1007537D4())
  {
    v6 = 0.62;
  }

  else
  {
    v6 = 0.61;
  }

  if (sub_1007537D4())
  {
    v7 = 0.8;
  }

  else
  {
    v7 = 0.84;
  }

  v8 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 dampingRatio:v6 animations:v7];
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a1;
  *(v9 + 32) = a2;
  v13[4] = sub_1002E8300;
  v13[5] = v9;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1000CF7B0;
  v13[3] = &unk_1008708A0;
  v10 = _Block_copy(v13);
  swift_unknownObjectRetain();

  [v8 addAnimations:v10];
  _Block_release(v10);
  type metadata accessor for TodayTransitionCompanionAnimations.CompanionAnimation();
  v11 = swift_allocObject();
  result = 0.0;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0u;
  *(v11 + 16) = v8;
  *(v11 + 24) = 0;
  return result;
}

uint64_t sub_1002E7A58(void *a1, uint64_t a2, char a3)
{
  v6 = 0.0;
  v7 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.2 controlPoint2:0.5 animations:{0.0, 0.5, 1.0}];
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  v15[4] = sub_1002E8344;
  v15[5] = v8;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_1000CF7B0;
  v15[3] = &unk_1008708F0;
  v9 = _Block_copy(v15);
  v10 = a1;

  [v7 addAnimations:v9];
  _Block_release(v9);
  if (a3)
  {
    v6 = 0.3;
  }

  type metadata accessor for TodayTransitionCompanionAnimations.CompanionAnimation();
  v11 = swift_allocObject();
  *(v11 + 48) = 0;
  *(v11 + 56) = 0;
  *(v11 + 16) = v7;
  *(v11 + 24) = v6;
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = v10;
  *(v12 + 32) = a2;
  *(v11 + 32) = sub_1002E8378;
  *(v11 + 40) = v12;
  v13 = v10;
  return v11;
}

void *sub_1002E7BF8(void *a1, uint64_t a2, char a3)
{
  v6 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.09 controlPoint2:0.5 animations:{0.0, 0.5, 1.0}];
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  v21 = sub_1002E83D4;
  v22 = v7;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_1000CF7B0;
  v20 = &unk_100870968;
  v8 = _Block_copy(&v17);
  v9 = a1;

  [v6 addAnimations:v8];
  _Block_release(v8);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a2;
  v21 = sub_1002E83E0;
  v22 = v10;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_1001A5B50;
  v20 = &unk_1008709B8;
  v11 = _Block_copy(&v17);
  v12 = v9;

  [v6 addCompletion:v11];
  _Block_release(v11);
  type metadata accessor for TodayTransitionCompanionAnimations.CompanionAnimation();
  v13 = swift_allocObject();
  v13[6] = 0;
  v13[7] = 0;
  v13[2] = v6;
  v13[3] = 0;
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  v13[4] = sub_1002E83E8;
  v13[5] = v14;
  v15 = v12;
  return v13;
}

uint64_t sub_1002E7E20(void *a1, char a2)
{
  v4 = 0.1;
  v5 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.1 controlPoint2:0.5 animations:{0.0, 0.5, 1.0}];
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v13[4] = sub_1002E842C;
  v13[5] = v6;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1000CF7B0;
  v13[3] = &unk_100870A30;
  v7 = _Block_copy(v13);
  v8 = a1;

  [v5 addAnimations:v7];
  _Block_release(v7);
  if ((a2 & 1) == 0)
  {
    v4 = 0.0;
  }

  type metadata accessor for TodayTransitionCompanionAnimations.CompanionAnimation();
  v9 = swift_allocObject();
  *(v9 + 48) = 0;
  *(v9 + 56) = 0;
  *(v9 + 16) = v5;
  *(v9 + 24) = v4;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = a2;
  *(v9 + 32) = sub_10018F6DC;
  *(v9 + 40) = v10;
  v11 = v8;
  return v9;
}

uint64_t sub_1002E7FB4()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1002E7FEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1002E8024()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1002E805C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1002E80C4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1002E8114()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1002E8164()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_1002E81A4(uint64_t result)
{
  if (*(v1 + 16) == 1)
  {
    v2 = *(v1 + 32);
    if (sub_1007537D4())
    {

      [v2 _setContinuousCornerRadius:0.0];
    }
  }
}

id sub_1002E8204()
{
  v1 = *(v0 + 32);
  if (*(v0 + 16))
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 0.0;
  }

  if (*(v0 + 16))
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  [*(v0 + 24) setAlpha:v2];

  return [v1 setAlpha:v3];
}

uint64_t sub_1002E826C()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_1002E82A4()
{
  if (*(v0 + 16) == 1)
  {
    return [*(v0 + 24) setAlpha:0.0];
  }

  return result;
}

uint64_t sub_1002E82C8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1002E830C()
{

  return _swift_deallocObject(v0, 40, 7);
}

id sub_1002E8344()
{
  if (*(v0 + 16) == 1)
  {
    return [*(*(v0 + 24) + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_lockupContainer) setAlpha:1.0];
  }

  return result;
}

uint64_t sub_1002E839C()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1002E83F4()
{

  return _swift_deallocObject(v0, 25, 7);
}

id sub_1002E842C()
{
  v1 = 0.0;
  if (*(v0 + 24))
  {
    v1 = 1.0;
  }

  return [*(v0 + 16) setAlpha:v1];
}

uint64_t sub_1002E8460()
{

  return _swift_deallocObject(v0, 40, 7);
}

id sub_1002E84A8()
{
  v1 = 0.3;
  if (!*(v0 + 24))
  {
    v1 = 0.0;
  }

  return [*(v0 + 16) setAlpha:v1];
}

void sub_1002E8578(uint64_t a1, void **a2, void *a3)
{
  v4 = *a2;
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 configurationWithTextStyle:v6];

  *a3 = v7;
}

uint64_t sub_1002E85E4()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100749644();
  sub_100039C50(v4, qword_10097EEF0);
  v28 = sub_10000D0FC(v4, qword_10097EEF0);
  if (qword_100921278 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v31 = sub_10000D0FC(v5, qword_1009814A0);
  v6 = *(v5 - 8);
  v33 = *(v6 + 16);
  v34 = v6 + 16;
  v33(v3, v31, v5);
  v35 = enum case for FontSource.useCase(_:);
  v7 = v1 + 13;
  v36 = v1[13];
  v36(v3);
  v8 = sub_100750B04();
  v51[3] = v8;
  v51[4] = &protocol witness table for StaticDimension;
  v30 = v8;
  sub_10000D134(v51);
  v49 = v0;
  v50 = &protocol witness table for FontSource;
  v9 = sub_10000D134(v48);
  v10 = v1 + 2;
  v32 = v1[2];
  v32(v9, v3, v0);
  sub_100750B14();
  v29 = v1[1];
  v29(v3, v0);
  v11 = v33;
  v33(v3, v31, v5);
  (v36)(v3, v35, v0);
  v49 = v8;
  v50 = &protocol witness table for StaticDimension;
  sub_10000D134(v48);
  v46 = v0;
  v47 = &protocol witness table for FontSource;
  v12 = sub_10000D134(v45);
  v32(v12, v3, v0);
  v25 = v1 + 1;
  sub_100750B14();
  v13 = v29;
  v29(v3, v0);
  v27 = v5;
  v11(v3, v31, v5);
  v31 = v7;
  (v36)(v3, v35, v0);
  v46 = v30;
  v47 = &protocol witness table for StaticDimension;
  sub_10000D134(v45);
  v43 = v0;
  v44 = &protocol witness table for FontSource;
  v14 = sub_10000D134(v42);
  v26 = v10;
  v32(v14, v3, v0);
  sub_100750B14();
  v13(v3, v0);
  if (qword_100921288 != -1)
  {
    swift_once();
  }

  v15 = v27;
  v24 = sub_10000D0FC(v27, qword_1009814D0);
  v33(v3, v24, v15);
  v16 = v35;
  (v36)(v3, v35, v0);
  v17 = v30;
  v43 = v30;
  v44 = &protocol witness table for StaticDimension;
  sub_10000D134(v42);
  v40 = v0;
  v41 = &protocol witness table for FontSource;
  v18 = sub_10000D134(v39);
  v19 = v32;
  v32(v18, v3, v0);
  sub_100750B14();
  v20 = v29;
  v29(v3, v0);
  v40 = &type metadata for Double;
  v41 = &protocol witness table for Double;
  v39[0] = 0;
  v33(v3, v24, v15);
  (v36)(v3, v16, v0);
  v38[3] = v17;
  v38[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v38);
  v37[3] = v0;
  v37[4] = &protocol witness table for FontSource;
  v21 = sub_10000D134(v37);
  v19(v21, v3, v0);
  sub_100750B14();
  v20(v3, v0);
  return sub_100749614();
}

char *sub_1002E8B68(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10074AB44();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v15 - 8);
  v17 = &v35 - v16;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension19PrivacyCategoryView_dataTypesLabel] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension19PrivacyCategoryView_category] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension19PrivacyCategoryView_iconView] = [objc_allocWithZone(sub_1007433C4()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_100921278 != -1)
  {
    swift_once();
  }

  v18 = sub_100750534();
  v19 = sub_10000D0FC(v18, qword_1009814A0);
  v20 = *(v18 - 8);
  (*(v20 + 16))(v17, v19, v18);
  (*(v20 + 56))(v17, 0, 1, v18);
  (*(v12 + 104))(v14, enum case for DirectionalTextAlignment.leading(_:), v11);
  v21 = objc_allocWithZone(sub_100745C84());
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension19PrivacyCategoryView_titleLabel] = sub_100745C74();
  v35.receiver = v5;
  v35.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v35, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v26 = v22;
  [v26 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v26 setClipsToBounds:0];
  v27 = OBJC_IVAR____TtC22SubscribePageExtension19PrivacyCategoryView_iconView;
  [v26 addSubview:*&v26[OBJC_IVAR____TtC22SubscribePageExtension19PrivacyCategoryView_iconView]];
  v28 = *&v26[v27];
  sub_100016C60(0, &qword_100923500, UIColor_ptr);
  v29 = v28;
  v30 = sub_100753DD4();
  [v29 setTintColor:v30];

  v31 = OBJC_IVAR____TtC22SubscribePageExtension19PrivacyCategoryView_titleLabel;
  [v26 addSubview:*&v26[OBJC_IVAR____TtC22SubscribePageExtension19PrivacyCategoryView_titleLabel]];
  v32 = *&v26[v31];
  v33 = sub_100753DD4();
  [v32 setTextColor:v33];

  return v26;
}

id sub_1002E8FB4()
{
  v1 = v0;
  v57 = sub_100748CE4();
  v2 = *(v57 - 8);
  __chkstk_darwin(v57);
  v55 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v54 = &v51 - v5;
  __chkstk_darwin(v6);
  v56 = &v51 - v7;
  v8 = sub_10074AB44();
  v52 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  *&v12 = __chkstk_darwin(v11 - 8).n128_u64[0];
  v14 = &v51 - v13;
  v15 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension19PrivacyCategoryView_titleLabel];
  v16 = OBJC_IVAR____TtC22SubscribePageExtension19PrivacyCategoryView_category;
  v17 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension19PrivacyCategoryView_category];
  if (v17)
  {

    sub_100745734();

    v17 = sub_100753064();
  }

  [v15 setText:{v17, v12}];

  v18 = &stru_1008F2000;
  if (*&v1[v16])
  {
    v53 = v15;

    v19 = sub_100745754();

    if (*(v19 + 16))
    {
      v20 = OBJC_IVAR____TtC22SubscribePageExtension19PrivacyCategoryView_dataTypesLabel;
      v21 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension19PrivacyCategoryView_dataTypesLabel];
      if (v21)
      {
        goto LABEL_15;
      }

      if (qword_100921288 != -1)
      {
        swift_once();
      }

      v22 = sub_100750534();
      v23 = sub_10000D0FC(v22, qword_1009814D0);
      v24 = *(v22 - 8);
      (*(v24 + 16))(v14, v23, v22);
      (*(v24 + 56))(v14, 0, 1, v22);
      (*(v52 + 104))(v10, enum case for DirectionalTextAlignment.leading(_:), v8);
      v25 = objc_allocWithZone(sub_100745C84());
      v26 = sub_100745C74();
      v27 = *&v1[v20];
      if (v27)
      {
        [v27 removeFromSuperview];
        v28 = *&v1[v20];
      }

      else
      {
        v28 = 0;
      }

      *&v1[v20] = v26;
      v32 = v26;

      sub_100016C60(0, &qword_100923500, UIColor_ptr);
      v33 = v32;
      v34 = sub_100753DF4();
      [v33 setTextColor:v34];

      [v1 addSubview:v33];
      [v1 setNeedsLayout];

      v21 = *&v1[v20];
      if (v21)
      {
LABEL_15:
        v58 = v19;
        v35 = v21;
        sub_10000C518(&unk_100928A70, &unk_1007AC470);
        sub_10010ABC4();
        sub_100752FF4();

        v36 = sub_100753064();

        [v35 setText:v36];
      }

      else
      {
      }

      v31 = v56;
      v30 = v57;
      v37 = *&v1[v20];
      v18 = &stru_1008F2000;
      if (v37)
      {
        [v37 setHidden:0];
      }

      goto LABEL_18;
    }
  }

  v29 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension19PrivacyCategoryView_dataTypesLabel];
  v31 = v56;
  v30 = v57;
  if (v29)
  {
    [v29 setHidden:1];
  }

LABEL_18:
  if (*&v1[v16])
  {

    v38 = v54;
    sub_100745724();

    (*(v2 + 32))(v31, v38, v30);
    v39 = v55;
    (*(v2 + 16))(v55, v31, v30);
    v40 = (*(v2 + 88))(v39, v30);
    if (v40 == enum case for PrivacyCategoryStyle.productPage(_:))
    {
      if (qword_100921278 != -1)
      {
        swift_once();
      }

      v41 = sub_100750534();
      v42 = v41;
      v43 = qword_1009814A0;
LABEL_27:
      v44 = sub_10000D0FC(v41, v43);
      v45 = *(v42 - 8);
      (*(v45 + 16))(v14, v44, v42);
      (*(v45 + 56))(v14, 0, 1, v42);
      sub_100745BA4();
      (*(v2 + 8))(v31, v30);
      return [v1 v18[51].attr];
    }

    if (v40 == enum case for PrivacyCategoryStyle.detailPage(_:))
    {
      if (qword_100921280 != -1)
      {
        swift_once();
      }

      v41 = sub_100750534();
      v42 = v41;
      v43 = qword_1009814B8;
      goto LABEL_27;
    }

    if (qword_100921278 != -1)
    {
      swift_once();
    }

    v46 = sub_100750534();
    v47 = sub_10000D0FC(v46, qword_1009814A0);
    v48 = *(v46 - 8);
    (*(v48 + 16))(v14, v47, v46);
    (*(v48 + 56))(v14, 0, 1, v46);
    sub_100745BA4();
    v49 = *(v2 + 8);
    v49(v31, v30);
    v49(v55, v30);
  }

  return [v1 v18[51].attr];
}

uint64_t sub_1002E97AC()
{
  ObjectType = swift_getObjectType();
  v2 = sub_100750354();
  v30 = *(v2 - 8);
  v31 = v2;
  __chkstk_darwin(v2);
  v28 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100749664();
  v4 = *(v27 - 8);
  __chkstk_darwin(v27);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100749644();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = &v26 - v13;
  v43.receiver = v0;
  v43.super_class = ObjectType;
  v29 = ObjectType;
  objc_msgSendSuper2(&v43, "layoutSubviews", v12);

  sub_1002E9AEC(v15, v0, v14);

  (*(v8 + 16))(v10, v14, v7);
  v16 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension19PrivacyCategoryView_iconView];
  v41 = sub_1007433C4();
  v42 = &protocol witness table for UIView;
  v40 = v16;
  v17 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension19PrivacyCategoryView_titleLabel];
  v18 = sub_100745C84();
  v38 = v18;
  v39 = &protocol witness table for UILabel;
  v37 = v17;
  v19 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension19PrivacyCategoryView_dataTypesLabel];
  if (v19)
  {
    v20 = &protocol witness table for UILabel;
  }

  else
  {
    v18 = 0;
    v20 = 0;
    v33 = 0;
    v34 = 0;
  }

  v32 = v19;
  v35 = v18;
  v36 = v20;
  v21 = v16;
  v22 = v17;
  v23 = v19;
  sub_100749654();
  sub_1007477B4();
  v24 = v28;
  sub_1007495F4();
  (*(v30 + 8))(v24, v31);
  (*(v4 + 8))(v6, v27);
  return (*(v8 + 8))(v14, v7);
}

void sub_1002E9AEC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a2;
  v5 = sub_100748CE4();
  v51 = *(v5 - 8);
  v52 = v5;
  __chkstk_darwin(v5);
  v49 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v46 - v8;
  __chkstk_darwin(v10);
  v50 = &v46 - v11;
  v12 = sub_100754724();
  v47 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100750304();
  v54 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_100750B04();
  v18 = *(v53 - 8);
  __chkstk_darwin(v53);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100920810 != -1)
  {
    swift_once();
  }

  v21 = sub_100749644();
  v22 = sub_10000D0FC(v21, qword_10097EEF0);
  (*(*(v21 - 8) + 16))(a3, v22, v21);
  v23 = sub_1002EB304(a1);
  if (v23)
  {
    v24 = v23;
    [v23 size];
    sub_100749634();

    if (!a1)
    {
      return;
    }
  }

  else
  {
    v46 = a3;
    if (qword_100921270 != -1)
    {
      swift_once();
    }

    v25 = sub_100750534();
    v26 = sub_10000D0FC(v25, qword_100981488);
    (*(*(v25 - 8) + 16))(v17, v26, v25);
    v27 = v54;
    (*(v54 + 104))(v17, enum case for FontSource.useCase(_:), v15);
    v59 = v15;
    v60 = &protocol witness table for FontSource;
    v28 = sub_10000D134(v58);
    (*(v27 + 16))(v28, v17, v15);
    sub_100750B14();
    (*(v27 + 8))(v17, v15);
    sub_1007502D4();
    v29 = v53;
    sub_100750564();
    (*(v47 + 8))(v14, v12);
    sub_100749634();
    (*(v18 + 8))(v20, v29);
    if (!a1)
    {
      return;
    }
  }

  sub_100745724();
  v31 = v50;
  v30 = v51;
  v32 = v52;
  (*(v51 + 32))(v50, v9, v52);
  v33 = v49;
  (*(v30 + 16))(v49, v31, v32);
  v34 = (*(v30 + 88))(v33, v32);
  if (v34 == enum case for PrivacyCategoryStyle.productPage(_:))
  {
    if (qword_100921278 != -1)
    {
      swift_once();
    }

    v35 = sub_100750534();
    v36 = v35;
    v37 = qword_1009814A0;
LABEL_17:
    v38 = sub_10000D0FC(v35, v37);
    (*(*(v36 - 8) + 16))(v17, v38, v36);
    v39 = v54;
    (*(v54 + 104))(v17, enum case for FontSource.useCase(_:), v15);
    v59 = v53;
    v60 = &protocol witness table for StaticDimension;
    sub_10000D134(v58);
    v56 = v15;
    v57 = &protocol witness table for FontSource;
    v40 = sub_10000D134(v55);
    (*(v39 + 16))(v40, v17, v15);
    sub_100750B14();
    (*(v39 + 8))(v17, v15);
    sub_100749604();
    (*(v30 + 8))(v31, v32);
    return;
  }

  if (v34 == enum case for PrivacyCategoryStyle.detailPage(_:))
  {
    if (qword_100921280 != -1)
    {
      swift_once();
    }

    v35 = sub_100750534();
    v36 = v35;
    v37 = qword_1009814B8;
    goto LABEL_17;
  }

  if (qword_100921278 != -1)
  {
    swift_once();
  }

  v41 = sub_100750534();
  v42 = sub_10000D0FC(v41, qword_1009814A0);
  (*(*(v41 - 8) + 16))(v17, v42, v41);
  v43 = v54;
  (*(v54 + 104))(v17, enum case for FontSource.useCase(_:), v15);
  v59 = v53;
  v60 = &protocol witness table for StaticDimension;
  sub_10000D134(v58);
  v56 = v15;
  v57 = &protocol witness table for FontSource;
  v44 = sub_10000D134(v55);
  (*(v43 + 16))(v44, v17, v15);
  sub_100750B14();
  (*(v43 + 8))(v17, v15);
  sub_100749604();
  v45 = *(v30 + 8);
  v45(v31, v32);
  v45(v33, v32);
}

double sub_1002EA37C(uint64_t a1, __n128 a2, double a3)
{
  v28 = sub_100749664();
  v5 = *(v28 - 8);
  __chkstk_darwin(v28);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100749644();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v27 - v13;

  sub_1002E9AEC(v15, a1, v14);

  (*(v9 + 16))(v11, v14, v8);
  v16 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension19PrivacyCategoryView_iconView);
  v38 = sub_1007433C4();
  v39 = &protocol witness table for UIView;
  v37 = v16;
  v17 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension19PrivacyCategoryView_titleLabel);
  v18 = sub_100745C84();
  v35 = v18;
  v36 = &protocol witness table for UILabel;
  v34 = v17;
  v19 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension19PrivacyCategoryView_dataTypesLabel);
  if (v19)
  {
    v20 = &protocol witness table for UILabel;
  }

  else
  {
    v18 = 0;
    v20 = 0;
    v30 = 0;
    v31 = 0;
  }

  v29 = v19;
  v32 = v18;
  v33 = v20;
  v21 = v16;
  v22 = v17;
  v23 = v19;
  sub_100749654();
  sub_1007495E4();
  v25 = v24;
  (*(v5 + 8))(v7, v28);
  (*(v9 + 8))(v14, v8);
  return v25;
}

void sub_1002EA6BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v5 = [a1 imageWithRenderingMode:{2, a4, a5}];
  }

  else
  {
    v5 = 0;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension19PrivacyCategoryView_iconView);

    v10.value.super.isa = v5;
    v10.is_nil = 0;
    sub_100743384(v10, v9);
  }
}

uint64_t sub_1002EA814(void *a1, void *a2, __n128 a3)
{
  v65 = sub_100749664();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v5;
  __chkstk_darwin(v6);
  v63 = &v49 - v7;
  v8 = sub_10074CD14();
  v54 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100748CE4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100750534();
  v69 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_100749644();
  v60 = *(v68 - 8);
  __chkstk_darwin(v68);
  v55 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v49 - v20;
  v66 = a2;
  sub_1002E9AEC(a1, a2, &v49 - v20);
  v59 = v21;
  sub_100749624();
  v56 = sub_100750F34();
  swift_allocObject();
  v57 = sub_100750F14();
  v67 = a1;
  sub_100745724();
  v22 = (*(v12 + 88))(v14, v11);
  v70 = v15;
  v58 = v8;
  if (v22 == enum case for PrivacyCategoryStyle.productPage(_:))
  {
    if (qword_100921278 != -1)
    {
      swift_once();
    }

    v23 = qword_1009814A0;
LABEL_9:
    v24 = sub_10000D0FC(v15, v23);
    (*(v69 + 16))(v17, v24, v15);
    goto LABEL_13;
  }

  if (v22 == enum case for PrivacyCategoryStyle.detailPage(_:))
  {
    if (qword_100921280 != -1)
    {
      swift_once();
    }

    v23 = qword_1009814B8;
    goto LABEL_9;
  }

  if (qword_100921278 != -1)
  {
    swift_once();
  }

  v25 = sub_10000D0FC(v15, qword_1009814A0);
  (*(v69 + 16))(v17, v25, v15);
  (*(v12 + 8))(v14, v11);
LABEL_13:
  v26 = v66;
  sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
  v27 = [v26 traitCollection];
  v28 = sub_100753C14();

  sub_100745734();
  v29 = sub_10074F3F4();
  v77[3] = v29;
  v30 = sub_1001FC0C4();
  v53 = v17;
  v51 = v30;
  v77[4] = v30;
  v31 = sub_10000D134(v77);
  v32 = *(*(v29 - 8) + 104);
  v50 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v49 = v32;
  v32(v31);
  v33 = v28;
  sub_10074FC74();
  sub_10000C620(v77);
  v52 = v33;
  sub_10074CD04();
  sub_10074CCE4();
  v34 = *(v54 + 8);
  v35 = v58;
  v34(v10, v58);
  if (qword_100921288 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v70, qword_1009814D0);
  v36 = [v66 traitCollection];
  v37 = sub_100753C14();

  v76[0] = sub_100745754();
  sub_10000C518(&unk_100928A70, &unk_1007AC470);
  sub_10010ABC4();
  sub_100752FF4();

  v76[3] = v29;
  v76[4] = v51;
  v38 = sub_10000D134(v76);
  v49(v38, v50, v29);
  v67 = v37;
  sub_10074FC74();
  sub_10000C620(v76);
  sub_10074CD04();
  sub_10074CCE4();
  v34(v10, v35);
  v39 = v60;
  v40 = v59;
  (*(v60 + 16))(v55, v59, v68);
  v74 = v56;
  v75 = &protocol witness table for LayoutViewPlaceholder;
  v73 = v57;
  sub_10000C824(v77, v72);
  sub_10000C824(v76, v71);

  v41 = v63;
  sub_100749654();
  v42 = v64;
  v43 = v62;
  v44 = v65;
  (*(v64 + 16))(v62, v41, v65);
  v45 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v46 = swift_allocObject();
  (*(v42 + 32))(v46 + v45, v43, v44);
  swift_allocObject();
  v47 = sub_100750EF4();

  (*(v42 + 8))(v41, v44);
  sub_10000C620(v76);
  sub_10000C620(v77);
  (*(v69 + 8))(v53, v70);
  (*(v39 + 8))(v40, v68);
  return v47;
}

uint64_t sub_1002EB200(__n128 a1)
{
  v2 = sub_100749664();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_1002EB304(uint64_t a1)
{
  if (a1 && (sub_100745714() & 1) != 0)
  {
    if (qword_100920808 != -1)
    {
      swift_once();
    }

    v2 = &qword_1009318C0;
  }

  else
  {
    if (qword_100920800 == -1)
    {
      if (!a1)
      {
        return 0;
      }
    }

    else
    {
      swift_once();
      if (!a1)
      {
        return 0;
      }
    }

    v2 = &qword_1009318B8;
  }

  v3 = *v2;
  v4 = sub_100745744();
  if ((sub_10074F1A4() & 1) == 0)
  {

LABEL_13:

    return 0;
  }

  v5 = v3;
  if (sub_10074F1D4())
  {
    v6 = sub_100743AC4();
    goto LABEL_18;
  }

  if ((sub_10074F1C4() & 1) == 0)
  {

    goto LABEL_13;
  }

  v6 = sub_10056028C(v8, v4, v3);
LABEL_18:
  v9 = v6;

  result = v9;
  if (!v9)
  {
    return 0;
  }

  return result;
}

double sub_1002EB448()
{
  v0 = sub_10000C518(&unk_10092BC10, qword_1007A7070);
  sub_100039C50(v0, qword_10097EF08);
  sub_10000D0FC(v0, qword_10097EF08);
  sub_10000C518(&unk_100923AE0, &qword_1007A8370);
  sub_100743484();
  return result;
}

uint64_t sub_1002EB4F8()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100749854();
  sub_100039C50(v4, qword_10097EF38);
  sub_10000D0FC(v4, qword_10097EF38);
  if (qword_100920FF0 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_100980D08);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v12[3] = sub_100750B04();
  v12[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v12);
  v10 = v0;
  v11 = &protocol witness table for FontSource;
  v7 = sub_10000D134(v9);
  (*(v1 + 16))(v7, v3, v0);
  sub_100750B14();
  (*(v1 + 8))(v3, v0);
  v10 = sub_1007507D4();
  v11 = &protocol witness table for ZeroDimension;
  sub_10000D134(v9);
  sub_1007507C4();
  return sub_100749844();
}

uint64_t sub_1002EB73C(double a1, double a2, uint64_t a3, uint64_t *a4)
{
  v5 = sub_100750304();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  v20 = *(v9 - 8);
  v21 = v9;
  __chkstk_darwin(v9);
  v11 = &v19 - v10;
  v12 = sub_100749854();
  sub_100039C50(v12, a4);
  v22 = sub_10000D0FC(v12, a4);
  if (qword_100920FF0 != -1)
  {
    swift_once();
  }

  v13 = sub_100750534();
  v19 = sub_10000D0FC(v13, qword_100980D08);
  v14 = *(*(v13 - 8) + 16);
  v14(v8, v19, v13);
  v15 = enum case for FontSource.useCase(_:);
  v16 = *(v6 + 104);
  v16(v8, enum case for FontSource.useCase(_:), v5);
  sub_100743504();
  sub_1007434C4();
  (*(v20 + 8))(v11, v21);
  v14(v8, v19, v13);
  v16(v8, v15, v5);
  v24[3] = sub_100750B04();
  v24[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v24);
  v23[3] = v5;
  v23[4] = &protocol witness table for FontSource;
  v17 = sub_10000D134(v23);
  (*(v6 + 16))(v17, v8, v5);
  sub_100750B14();
  (*(v6 + 8))(v8, v5);
  return sub_100749844();
}

char *sub_1002EBA4C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v82 = sub_10074AB44();
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v81 = &v74[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v11 - 8);
  v13 = &v74[-v12];
  v14 = sub_100751344();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v74[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_100751374();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v74[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = OBJC_IVAR____TtC22SubscribePageExtension33TitledParagraphCollectionViewCell_separatorView;
  (*(v15 + 104))(v17, enum case for Separator.Position.bottom(_:), v14, v20);
  v87[3] = sub_1007507D4();
  v87[4] = &protocol witness table for ZeroDimension;
  sub_10000D134(v87);
  sub_1007507C4();
  sub_100751354();
  v24 = [objc_allocWithZone(type metadata accessor for SeparatorView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v25 = OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_separator;
  swift_beginAccess();
  v26 = *(v19 + 40);
  v27 = v24;
  v26(&v24[v25], v22, v18);
  swift_endAccess();

  *&v5[v23] = v27;
  v28 = OBJC_IVAR____TtC22SubscribePageExtension33TitledParagraphCollectionViewCell_bodyTextView;
  v84 = sub_100016C60(0, &qword_100923500, UIColor_ptr);
  v29 = sub_100753E04();
  v30 = objc_allocWithZone(type metadata accessor for ExpandableTextView());
  v31 = sub_10025F574(v29, 0.0, 0.0, 0.0, 0.0);
  v83 = v5;
  *&v5[v28] = v31;
  v79 = OBJC_IVAR____TtC22SubscribePageExtension33TitledParagraphCollectionViewCell_primarySubtitleLabel;
  if (qword_100920FF0 != -1)
  {
    swift_once();
  }

  v32 = sub_100750534();
  v33 = sub_10000D0FC(v32, qword_100980D08);
  v34 = *(v32 - 8);
  v77 = *(v34 + 16);
  v78 = v33;
  v77(v13, v33, v32);
  v76 = *(v34 + 56);
  v76(v13, 0, 1, v32);
  v75 = enum case for DirectionalTextAlignment.none(_:);
  v35 = v81;
  v80 = *(v80 + 104);
  v36 = v82;
  (v80)(v81);
  v37 = sub_100745C84();
  v38 = objc_allocWithZone(v37);
  v39 = sub_100745C74();
  v40 = v83;
  v41 = v78;
  *&v83[v79] = v39;
  v79 = OBJC_IVAR____TtC22SubscribePageExtension33TitledParagraphCollectionViewCell_secondarySubtitleLabel;
  v77(v13, v41, v32);
  v76(v13, 0, 1, v32);
  (v80)(v35, v75, v36);
  v42 = objc_allocWithZone(v37);
  *&v40[v79] = sub_100745C74();
  v43 = OBJC_IVAR____TtC22SubscribePageExtension33TitledParagraphCollectionViewCell_itemLayoutContext;
  v44 = sub_1007469A4();
  (*(*(v44 - 8) + 56))(&v40[v43], 1, 1, v44);
  v40[OBJC_IVAR____TtC22SubscribePageExtension33TitledParagraphCollectionViewCell_useDetailPageStyling] = 0;
  *&v40[OBJC_IVAR____TtC22SubscribePageExtension33TitledParagraphCollectionViewCell_pageTraits] = 0;
  v45 = type metadata accessor for TitledParagraphCollectionViewCell(0);
  v86.receiver = v40;
  v86.super_class = v45;
  v46 = objc_msgSendSuper2(&v86, "initWithFrame:", a1, a2, a3, a4);
  v47 = [v46 contentView];
  [v47 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v48 = [v46 contentView];
  v49 = sub_100753E04();
  [v48 setBackgroundColor:v49];

  v50 = [v46 contentView];
  [v50 addSubview:*&v46[OBJC_IVAR____TtC22SubscribePageExtension33TitledParagraphCollectionViewCell_separatorView]];

  v51 = OBJC_IVAR____TtC22SubscribePageExtension33TitledParagraphCollectionViewCell_primarySubtitleLabel;
  v52 = *&v46[OBJC_IVAR____TtC22SubscribePageExtension33TitledParagraphCollectionViewCell_primarySubtitleLabel];
  v53 = sub_100753DF4();
  [v52 setTextColor:v53];

  v54 = *&v46[v51];
  v55 = sub_100753E04();
  [v54 setBackgroundColor:v55];

  [*&v46[v51] setNumberOfLines:1];
  v56 = [v46 contentView];
  [v56 addSubview:*&v46[v51]];

  v57 = OBJC_IVAR____TtC22SubscribePageExtension33TitledParagraphCollectionViewCell_secondarySubtitleLabel;
  v58 = *&v46[OBJC_IVAR____TtC22SubscribePageExtension33TitledParagraphCollectionViewCell_secondarySubtitleLabel];
  v59 = sub_100753DF4();
  [v58 setTextColor:v59];

  v60 = *&v46[v57];
  v61 = sub_100753E04();
  [v60 setBackgroundColor:v61];

  v62 = v46;
  v63 = [v62 contentView];
  [v63 addSubview:*&v46[v57]];

  v64 = OBJC_IVAR____TtC22SubscribePageExtension33TitledParagraphCollectionViewCell_bodyTextView;
  v65 = qword_100920818;
  v66 = *&v62[OBJC_IVAR____TtC22SubscribePageExtension33TitledParagraphCollectionViewCell_bodyTextView];
  if (v65 != -1)
  {
    swift_once();
  }

  v67 = sub_10000C518(&unk_10092BC10, qword_1007A7070);
  sub_10000D0FC(v67, qword_10097EF08);
  v85 = v62;
  sub_100743464();

  v68 = v87[0];
  v69 = OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_collapsedNumberOfLines;
  v70 = *&v66[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_collapsedNumberOfLines];
  *&v66[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_collapsedNumberOfLines] = v87[0];
  v71 = OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed;
  if (v66[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed] == 1)
  {
    [*&v66[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_textLabel] setNumberOfLines:?];
    v68 = *&v66[v69];
  }

  if (v68 != v70 && (v66[v71] & 1) != 0)
  {
    sub_100260550();
  }

  v72 = [v62 contentView];
  [v72 addSubview:*&v62[v64]];

  return v62;
}

id sub_1002EC380()
{
  v1 = v0;
  v2 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33TitledParagraphCollectionViewCell_primarySubtitleLabel];
  if (v1[OBJC_IVAR____TtC22SubscribePageExtension33TitledParagraphCollectionViewCell_useDetailPageStyling] == 1)
  {
    if (qword_100920FF8 != -1)
    {
      swift_once();
    }

    v6 = sub_100750534();
    v7 = sub_10000D0FC(v6, qword_100980D20);
    v8 = *(v6 - 8);
    (*(v8 + 16))(v4, v7, v6);
    (*(v8 + 56))(v4, 0, 1, v6);
    sub_100745BA4();
    sub_100016C60(0, &qword_100923500, UIColor_ptr);
    v9 = sub_100753DD4();
  }

  else
  {
    if (qword_100920FF0 != -1)
    {
      swift_once();
    }

    v10 = sub_100750534();
    v11 = sub_10000D0FC(v10, qword_100980D08);
    v12 = *(v10 - 8);
    (*(v12 + 16))(v4, v11, v10);
    (*(v12 + 56))(v4, 0, 1, v10);
    sub_100745BA4();
    sub_100016C60(0, &qword_100923500, UIColor_ptr);
    v9 = sub_100753DF4();
  }

  v13 = v9;
  [v5 setTextColor:v9];

  return [v1 setNeedsLayout];
}

void *sub_1002EC608()
{
  v1 = v0;
  v2 = sub_100750354();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v74 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_100749874();
  v73 = *(v75 - 8);
  __chkstk_darwin(v75);
  v72 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100749854();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v71 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v65 - v10;
  __chkstk_darwin(v12);
  v14 = &v65 - v13;
  v15 = sub_100751374();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TitledParagraphCollectionViewCell(0);
  v77.receiver = v1;
  v77.super_class = v19;
  objc_msgSendSuper2(&v77, "layoutSubviews");
  result = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33TitledParagraphCollectionViewCell_pageTraits];
  if (result)
  {
    v68 = v3;
    v69 = v2;
    v21 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33TitledParagraphCollectionViewCell_separatorView];
    v70 = result;
    swift_unknownObjectRetain();
    [v1 bounds];
    v22 = OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_separator;
    swift_beginAccess();
    (*(v16 + 16))(v18, &v21[v22], v15);
    sub_100751324();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    (*(v16 + 8))(v18, v15);
    [v21 setFrame:{v24, v26, v28, v30}];
    v31 = [v1 contentView];
    sub_100016C60(0, &qword_100922300, UIView_ptr);
    sub_1007477B4();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;

    v40 = [v1 traitCollection];
    v41 = OBJC_IVAR____TtC22SubscribePageExtension33TitledParagraphCollectionViewCell_useDetailPageStyling;
    v42 = v1[OBJC_IVAR____TtC22SubscribePageExtension33TitledParagraphCollectionViewCell_useDetailPageStyling];
    v67 = v40;
    if ((v42 & 1) != 0 || (sub_100749804() & 1) == 0)
    {
      v50 = sub_100753804();
      v66 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33TitledParagraphCollectionViewCell_primarySubtitleLabel];
      [v66 setTextAlignment:0];
      if (v50)
      {
        v51 = 0;
      }

      else
      {
        v51 = 2;
      }

      [*&v1[OBJC_IVAR____TtC22SubscribePageExtension33TitledParagraphCollectionViewCell_secondarySubtitleLabel] setTextAlignment:{v51, *&v1[OBJC_IVAR____TtC22SubscribePageExtension33TitledParagraphCollectionViewCell_secondarySubtitleLabel]}];
      if (v1[v41] == 1)
      {
        v49 = v68;
        v46 = v14;
        if (qword_100920830 != -1)
        {
          swift_once();
        }

        v52 = qword_10097EF50;
      }

      else
      {
        v49 = v68;
        v46 = v14;
        if (qword_100920820 != -1)
        {
          swift_once();
        }

        v52 = qword_10097EF20;
      }

      v47 = v7;
      v53 = sub_10000D0FC(v6, v52);
      v45 = *(v7 + 16);
      v45(v11, v53, v6);
      (*(v7 + 32))(v46, v11, v6);
    }

    else
    {
      v66 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33TitledParagraphCollectionViewCell_primarySubtitleLabel];
      [v66 setTextAlignment:2];
      v65 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33TitledParagraphCollectionViewCell_secondarySubtitleLabel];
      [v65 setTextAlignment:2];
      v78.origin.x = v33;
      v78.origin.y = v35;
      v78.size.width = v37;
      v78.size.height = v39;
      Width = CGRectGetWidth(v78);
      if (qword_100920828 != -1)
      {
        swift_once();
      }

      v44 = sub_10000D0FC(v6, qword_10097EF38);
      v45 = *(v7 + 16);
      v46 = v14;
      v47 = v7;
      v45(v46, v44, v6);
      v48 = v70;
      sub_1002ED600(v70, Width);
      sub_100749824();
      [v48 pageMarginInsets];
      sub_100749834();
      v49 = v68;
    }

    v45(v71, v46, v6);
    v54 = sub_100745C84();
    v68 = v6;
    v55 = v46;
    v76[13] = v54;
    v76[14] = &protocol witness table for UIView;
    v56 = v66;
    v76[9] = &protocol witness table for UIView;
    v76[10] = v66;
    v76[8] = v54;
    v57 = v65;
    v76[5] = v65;
    v58 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33TitledParagraphCollectionViewCell_bodyTextView];
    v59 = type metadata accessor for ExpandableTextView();
    v76[4] = &protocol witness table for UIView;
    v76[3] = v59;
    v76[0] = v58;
    v60 = v56;
    v61 = v57;
    v62 = v58;
    v63 = v72;
    sub_100749864();
    v64 = v74;
    sub_100749814();
    swift_unknownObjectRelease();

    (*(v49 + 8))(v64, v69);
    (*(v73 + 8))(v63, v75);
    return (*(v47 + 8))(v55, v68);
  }

  return result;
}

double sub_1002ECE28(void *a1, char a2, double a3, double a4, uint64_t a5, void *a6, void *a7, uint64_t a8)
{
  v15 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  *&v16 = __chkstk_darwin(v15 - 8).n128_u64[0];
  v18 = &v52 - v17;
  if (a2)
  {
    v19 = [a1 traitCollection];
    v20 = sub_100749804();

    if (v20)
    {
      v21 = sub_1002ED600(a6, a3);
      [a6 pageMarginInsets];
      a3 = a3 - (v21 + v22);
    }
  }

  if (a7)
  {
    v23 = a3 <= a4 ? a3 : a4;
    if (v23 != 0.0)
    {
      left = UIEdgeInsetsZero.left;
      bottom = UIEdgeInsetsZero.bottom;
      right = UIEdgeInsetsZero.right;
      v27 = a7;
      v28 = [a1 traitCollection];
      v29 = type metadata accessor for ExpandableTextView.MeasurementsCacheKey();
      v30 = objc_allocWithZone(v29);
      v31 = &v30[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_layoutMargins];
      *v31 = UIEdgeInsetsZero.top;
      v31[1] = left;
      v31[2] = bottom;
      v31[3] = right;
      *&v30[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_numberOfLines] = a8;
      v32 = &v30[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_fittingSize];
      *v32 = a3;
      v32[1] = a4;
      *&v30[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_traitCollection] = v28;
      *&v30[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_attributedText] = v27;
      v53.receiver = v30;
      v53.super_class = v29;
      v33 = objc_msgSendSuper2(&v53, "init");
      if (qword_1009206A8 != -1)
      {
        swift_once();
      }

      v34 = qword_10092F470;
      v35 = [qword_10092F470 objectForKey:v33];
      if (v35)
      {
        v36 = v35;

        a3 = *&v36[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2410CacheValue_measurements];
      }

      else
      {
        v37 = qword_1009206A0;
        v36 = v27;
        if (v37 != -1)
        {
          swift_once();
        }

        v38 = sub_100750534();
        v39 = sub_10000D0FC(v38, qword_10092F458);
        v40 = *(v38 - 8);
        (*(v40 + 16))(v18, v39, v38);
        (*(v40 + 56))(v18, 0, 1, v38);
        sub_100750964();
        sub_100750984();
        sub_100750974();
        v42 = v41;
        v44 = v43;
        v46 = v45;

        sub_10000C8CC(v18, &unk_100928A40, qword_1007A6630);
        v47 = type metadata accessor for ExpandableTextView.CacheValue();
        v48 = objc_allocWithZone(v47);
        v49 = &v48[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2410CacheValue_measurements];
        *v49 = a3;
        v49[1] = UIEdgeInsetsZero.top + bottom + v42;
        *(v49 + 2) = v44;
        *(v49 + 3) = v46;
        v52.receiver = v48;
        v52.super_class = v47;
        v50 = objc_msgSendSuper2(&v52, "init");
        [v34 setObject:v50 forKey:v33];
      }
    }
  }

  return a3;
}

void sub_1002ED230(uint64_t a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for TitledParagraphCollectionViewCell(0);
  objc_msgSendSuper2(&v12, "traitCollectionDidChange:", a1);
  v3 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33TitledParagraphCollectionViewCell_bodyTextView];
  if (qword_100920818 != -1)
  {
    swift_once();
  }

  v4 = sub_10000C518(&unk_10092BC10, qword_1007A7070);
  sub_10000D0FC(v4, qword_10097EF08);
  v10 = v1;
  v5 = v1;
  sub_100743464();

  v6 = v11;
  v7 = OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_collapsedNumberOfLines;
  v8 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_collapsedNumberOfLines);
  *(v3 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_collapsedNumberOfLines) = v11;
  v9 = OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed;
  if (*(v3 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed) == 1)
  {
    [*(v3 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_textLabel) setNumberOfLines:v10];
    v6 = *(v3 + v7);
  }

  if (v6 != v8 && (*(v3 + v9) & 1) != 0)
  {
    sub_100260550();
  }
}

id sub_1002ED410()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TitledParagraphCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for TitledParagraphCollectionViewCell(uint64_t a1)
{
  result = qword_100931958;
  if (!qword_100931958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002ED538(uint64_t a1)
{
  sub_100016898(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_1002ED600(void *a1, double a2)
{
  v4 = sub_100754724();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = &v20 - v10;
  [a1 pageMarginInsets];
  v13 = (a2 + v12 * -4.0) / 5.0;
  sub_1007502D4();
  v21 = v13;
  (*(v5 + 16))(v7, v11, v4);
  v14 = (*(v5 + 88))(v7, v4);
  if (v14 == enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:))
  {
    v15 = round(v13);
LABEL_11:
    (*(v5 + 8))(v11, v4);
    return v15;
  }

  if (v14 == enum case for FloatingPointRoundingRule.toNearestOrEven(_:))
  {
    v15 = rint(v13);
    goto LABEL_11;
  }

  if (v14 == enum case for FloatingPointRoundingRule.up(_:))
  {
    v15 = ceil(v13);
    goto LABEL_11;
  }

  if (v14 == enum case for FloatingPointRoundingRule.down(_:))
  {
    v15 = floor(v13);
    goto LABEL_11;
  }

  if (v14 == enum case for FloatingPointRoundingRule.towardZero(_:))
  {
    v15 = trunc(v13);
    goto LABEL_11;
  }

  if (v14 == enum case for FloatingPointRoundingRule.awayFromZero(_:))
  {
    (*(v5 + 8))(v11, v4);
    v17 = ceil(v13);
    v18 = floor(v13);
    if (v13 < 0.0)
    {
      return v18;
    }

    else
    {
      return v17;
    }
  }

  else
  {
    sub_100753444();
    v19 = *(v5 + 8);
    v19(v11, v4);
    v19(v7, v4);
    return v21;
  }
}

void sub_1002ED870()
{
  v1 = v0;
  v46 = sub_10074AB44();
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v37[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v3 - 8);
  v43 = &v37[-v4];
  v5 = sub_100751344();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v37[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_100751374();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v37[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = OBJC_IVAR____TtC22SubscribePageExtension33TitledParagraphCollectionViewCell_separatorView;
  (*(v6 + 104))(v8, enum case for Separator.Position.bottom(_:), v5, v11);
  v48[3] = sub_1007507D4();
  v48[4] = &protocol witness table for ZeroDimension;
  sub_10000D134(v48);
  sub_1007507C4();
  sub_100751354();
  v15 = [objc_allocWithZone(type metadata accessor for SeparatorView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16 = OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_separator;
  swift_beginAccess();
  v17 = *(v10 + 40);
  v18 = v15;
  v17(&v15[v16], v13, v9);
  swift_endAccess();

  *(v1 + v14) = v18;
  v19 = OBJC_IVAR____TtC22SubscribePageExtension33TitledParagraphCollectionViewCell_bodyTextView;
  sub_100016C60(0, &qword_100923500, UIColor_ptr);
  v20 = sub_100753E04();
  v21 = objc_allocWithZone(type metadata accessor for ExpandableTextView());
  v22 = sub_10025F574(v20, 0.0, 0.0, 0.0, 0.0);
  v47 = v1;
  *(v1 + v19) = v22;
  v42 = OBJC_IVAR____TtC22SubscribePageExtension33TitledParagraphCollectionViewCell_primarySubtitleLabel;
  if (qword_100920FF0 != -1)
  {
    swift_once();
  }

  v23 = sub_100750534();
  v24 = sub_10000D0FC(v23, qword_100980D08);
  v25 = *(v23 - 8);
  v40 = *(v25 + 16);
  v41 = v24;
  v26 = v43;
  v40(v43, v24, v23);
  v39 = *(v25 + 56);
  v39(v26, 0, 1, v23);
  v38 = enum case for DirectionalTextAlignment.none(_:);
  v27 = v45;
  v44 = *(v44 + 104);
  v28 = v46;
  (v44)(v45);
  v29 = sub_100745C84();
  v30 = objc_allocWithZone(v29);
  v31 = sub_100745C74();
  v32 = v47;
  v33 = v41;
  *(v47 + v42) = v31;
  v42 = OBJC_IVAR____TtC22SubscribePageExtension33TitledParagraphCollectionViewCell_secondarySubtitleLabel;
  v40(v26, v33, v23);
  v39(v26, 0, 1, v23);
  (v44)(v27, v38, v28);
  v34 = objc_allocWithZone(v29);
  *(v32 + v42) = sub_100745C74();
  v35 = OBJC_IVAR____TtC22SubscribePageExtension33TitledParagraphCollectionViewCell_itemLayoutContext;
  v36 = sub_1007469A4();
  (*(*(v36 - 8) + 56))(v32 + v35, 1, 1, v36);
  *(v32 + OBJC_IVAR____TtC22SubscribePageExtension33TitledParagraphCollectionViewCell_useDetailPageStyling) = 0;
  *(v32 + OBJC_IVAR____TtC22SubscribePageExtension33TitledParagraphCollectionViewCell_pageTraits) = 0;
  sub_100754644();
  __break(1u);
}

double sub_1002EDE24()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension27VideoCardCollectionViewCell_videoCardView);
  [v1 frame];
  MinX = CGRectGetMinX(v4);
  [v1 frame];
  CGRectGetMinY(v5);
  [v1 frame];
  CGRectGetWidth(v6);
  [v1 frame];
  CGRectGetHeight(v7);
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension13VideoCardView_overlayView] frame];
  CGRectGetHeight(v8);
  return MinX;
}

void *sub_1002EDEE0()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension27VideoCardCollectionViewCell_avatarShowcase);
  v2 = v1;
  return v1;
}

void (*sub_1002EDF18(void *a1))(void **a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension27VideoCardCollectionViewCell_avatarShowcase);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_1002EDF70;
}

void sub_1002EDF70(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_100651894(v2);
  }

  else
  {
    sub_100651894(*a1);
  }
}

uint64_t sub_1002EDFDC(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1002EE1B0(&qword_100931970, type metadata accessor for VideoCardCollectionViewCell, &unk_1007B8F28);

  return AvatarShowcaseDisplaying.applyAvatars(from:asPartOf:)(a1, a2, ObjectType, v5);
}

uint64_t sub_1002EE098(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v4 = sub_1002EE1B0(&qword_100931970, type metadata accessor for VideoCardCollectionViewCell, &unk_1007B8F28);

  return a3(ObjectType, v4);
}

uint64_t sub_1002EE1B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002EE1F8()
{

  return swift_deallocClassInstance();
}

double sub_1002EE264(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  type metadata accessor for RiverTodayCardCollectionViewCell(0);
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = *(v6 + OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_riverView);
    v8 = v6;
    v9 = a1;
    v10 = v7;
    sub_10074F9D4();

    v11 = *(v8 + OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_gradientView);
    v12 = v11[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_isAnimating];
    v11[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_isAnimating] = 1;
    if ((v12 & 1) == 0)
    {
      v13 = v11;
LABEL_4:
      sub_10015A054();
    }
  }

  else
  {
    type metadata accessor for ListTodayCardCollectionViewCell(0);
    v19 = swift_dynamicCastClass();
    if (!v19)
    {
      goto LABEL_6;
    }

    v20 = v19;
    v21 = *(v19 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_riverView);
    v22 = a1;
    if (v21)
    {
      v23 = v21;
      sub_10074F9D4();
    }

    v24 = *(v20 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_riverBackgroundView);
    v9 = a1;
    if (v24)
    {
      v25 = v24[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_isAnimating];
      v24[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_isAnimating] = 1;
      v9 = a1;
      if ((v25 & 1) == 0)
      {
        v13 = a1;
        v9 = v24;
        goto LABEL_4;
      }
    }
  }

LABEL_6:
  swift_getObjectType();
  v14 = swift_conformsToProtocol2();
  if (v14 && a1)
  {
    v16 = v14;
    sub_10074FBB4();
    sub_100194E74();
    v17 = a1;
    sub_1007468B4();
    if (v26)
    {
      ObjectType = swift_getObjectType();
      (*(v16 + 192))(*(v4 + 24), ObjectType, v16);
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        if (sub_10074FAB4())
        {
          sub_100748644();
        }

        swift_getObjectType();
        sub_100747AF4();
      }

      else
      {
      }
    }

    else
    {
    }
  }

  return result;
}

id sub_1002EE4F0(void *a1)
{
  type metadata accessor for RiverTodayCardCollectionViewCell(0);
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_riverView);
    v4 = v2;
    v5 = a1;
    v6 = v3;
    sub_10074F9D4();

    v7 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_gradientView);
    v8 = v7[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_isAnimating];
    v7[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_isAnimating] = 0;
    if (v8 == 1)
    {
      v9 = v7;
LABEL_4:
      sub_10015A054();
    }
  }

  else
  {
    type metadata accessor for ListTodayCardCollectionViewCell(0);
    v11 = swift_dynamicCastClass();
    if (!v11)
    {
      goto LABEL_6;
    }

    v12 = v11;
    v13 = *(v11 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_riverView);
    v14 = a1;
    if (v13)
    {
      v15 = v13;
      sub_10074F9D4();
    }

    v16 = *(v12 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_riverBackgroundView);
    v5 = a1;
    if (v16)
    {
      v17 = v16[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_isAnimating];
      v16[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_isAnimating] = 0;
      v5 = a1;
      if (v17 == 1)
      {
        v9 = a1;
        v5 = v16;
        goto LABEL_4;
      }
    }
  }

LABEL_6:
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result && a1)
  {

    return [a1 setHidden:0];
  }

  return result;
}

id sub_1002EE680(uint64_t a1)
{
  v57 = a1;
  v1 = sub_10000C518(&unk_1009281C0, qword_1007ABBB0);
  __chkstk_darwin(v1 - 8);
  v56 = v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v55 = v45 - v4;
  v5 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v5 - 8);
  v54 = v45 - v6;
  v7 = sub_100744864();
  __chkstk_darwin(v7 - 8);
  v50 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v49 = v45 - v10;
  v11 = sub_10000C518(&unk_1009281D0, qword_1007A82B0);
  __chkstk_darwin(v11 - 8);
  v48 = v45 - v12;
  v13 = sub_100744894();
  v46 = *(v13 - 8);
  __chkstk_darwin(v13);
  v47 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100747D94();
  v52 = *(v15 - 8);
  v53 = v15;
  __chkstk_darwin(v15);
  v51 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10074E5E4();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v45 - v22;
  v24 = sub_10074E644();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074E654();
  v28 = (*(v25 + 88))(v27, v24);
  if (v28 != enum case for Uber.AssetType.artwork(_:))
  {
    if (v28 == enum case for Uber.AssetType.video(_:))
    {
      if (sub_10074E624())
      {
        sub_1007464C4();
        sub_1007526E4();
        v45[1] = v60[0];
        (*(v46 + 104))(v47, enum case for VideoFillMode.scaleAspectFill(_:), v13);
        sub_10074EC14();
        sub_10074F2A4();
        v31 = v48;
        sub_100750504();

        v32 = sub_1007504F4();
        (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
        sub_10074EBB4();
        sub_10074EBF4();
        sub_10074EBC4();
        sub_10074EBA4();
        sub_10074EC04();
        v33 = v51;
        sub_100747D74();
        sub_10074EB94();
        v34 = v54;
        sub_10074EC24();
        v35 = sub_100741264();
        (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
        v36 = v55;
        sub_10074EBE4();
        v37 = v56;
        sub_10074EBD4();
        type metadata accessor for VideoView(0);
        sub_1002EEFD8(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
        v38 = sub_1007464A4();
        sub_10000C8CC(v37, &unk_1009281C0, qword_1007ABBB0);
        sub_10000C8CC(v36, &unk_1009281C0, qword_1007ABBB0);
        sub_10000C8CC(v34, &unk_100923970, &qword_1007A6B90);
        sub_10000C8CC(v60, &unk_1009276E0, &unk_1007A5C70);
        if (v38)
        {
          v39 = v38;
          sub_10074EC14();
          v40 = sub_10074F1E4();

          [v39 setBackgroundColor:v40];

          (*(v52 + 8))(v33, v53);
        }

        else
        {
          (*(v52 + 8))(v33, v53);
        }

        return v38;
      }
    }

    else if (v28 != enum case for Uber.AssetType.icon(_:))
    {
      (*(v25 + 8))(v27, v24);
    }

    return 0;
  }

  v29 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_10074E604();
  (*(v18 + 104))(v20, enum case for Uber.Style.inline(_:), v17);
  sub_1002EEFD8(&qword_10092EED0, &type metadata accessor for Uber.Style, &protocol conformance descriptor for Uber.Style);
  sub_100753274();
  sub_100753274();
  if (v60[0] == v58 && v60[1] == v59)
  {
    v30 = *(v18 + 8);
    v30(v20, v17);
    v30(v23, v17);
  }

  else
  {
    v41 = sub_100754754();
    v42 = *(v18 + 8);
    v42(v20, v17);
    v42(v23, v17);

    if ((v41 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  [v29 setContentMode:2];
LABEL_11:
  v38 = v29;
  if (!sub_10074E634() || (v43 = sub_10074F1E4(), , !v43))
  {
    if (sub_10074E5D4())
    {
      v43 = sub_10074F1E4();
    }

    else
    {
      v43 = 0;
    }
  }

  [v38 setBackgroundColor:v43];

  return v38;
}

uint64_t sub_1002EEFD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002EF020()
{
  v1 = v0;
  v2 = sub_1007457B4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_100748E34();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v29 - v12;
  (*(v3 + 16))(v5, v1, v2, v11);
  v14 = (*(v3 + 88))(v5, v2);
  if (v14 == enum case for ShelfBackground.artwork(_:))
  {
    (*(v3 + 96))(v5, v2);

    v15 = &qword_100940630;
    v16 = &qword_1007C18F0;
    goto LABEL_5;
  }

  if (v14 == enum case for ShelfBackground.color(_:))
  {
    (*(v3 + 96))(v5, v2);

    v15 = &unk_100930940;
    v16 = qword_1007A9000;
LABEL_5:
    v17 = sub_10000C518(v15, v16);
    v18 = *(v7 + 32);
    v18(v13, v5 + *(v17 + 48), v6);
    v18(v9, v13, v6);
    goto LABEL_7;
  }

  if (v14 == enum case for ShelfBackground.gradient(_:))
  {
    (*(v3 + 96))(v5, v2);

    v21 = sub_10000C518(&unk_100940620, &qword_1007C3900);
    v22 = v21[12];
    v29 = v21[16];
    v30 = v22;
    v23 = *(v7 + 32);
    v23(v13, v5 + v21[20], v6);
    v24 = sub_10074D3E4();
    v25 = *(*(v24 - 8) + 8);
    v25(v5 + v29, v24);
    v25(v5 + v30, v24);
    v23(v9, v13, v6);
  }

  else if (v14 == enum case for ShelfBackground.materialGradient(_:))
  {
    (*(v3 + 96))(v5, v2);
    v26 = sub_10000C518(&qword_1009245B8, &unk_1007A7AE0);
    v27 = *(v7 + 32);
    v27(v13, v5 + *(v26 + 48), v6);
    v28 = sub_10074DDF4();
    (*(*(v28 - 8) + 8))(v5, v28);
    v27(v9, v13, v6);
  }

  else
  {
    (*(v7 + 104))(v13, enum case for ShelfBackgroundStyle.automatic(_:), v6);
    (*(v3 + 8))(v5, v2);
    (*(v7 + 32))(v9, v13, v6);
  }

LABEL_7:
  v19 = (*(v7 + 88))(v9, v6);
  if (v19 == enum case for ShelfBackgroundStyle.dark(_:))
  {
    return 2;
  }

  if (v19 == enum case for ShelfBackgroundStyle.light(_:))
  {
    return 1;
  }

  if (v19 != enum case for ShelfBackgroundStyle.automatic(_:))
  {
    (*(v7 + 8))(v9, v6);
  }

  return 0;
}

void sub_1002EF4D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v2[OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_isDisplayingSearchAd] = 1;

    [v2 setNeedsLayout];
    v6 = [objc_allocWithZone(type metadata accessor for SearchAdTransparencyButton(0)) init];
    sub_10074F774();
    sub_10074ECB4();
    v8 = v7;

    if (v8)
    {
      v9 = sub_100753064();
    }

    else
    {
      v9 = 0;
    }

    [v6 setTitle:v9 forState:0];

    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = a1;
    v14 = &v6[qword_100934DD0];
    v15 = *&v6[qword_100934DD0];
    v16 = *&v6[qword_100934DD0 + 8];
    *v14 = sub_1002F45F4;
    v14[1] = v13;

    sub_1000164A8(v15, v16);
    v17 = objc_allocWithZone(type metadata accessor for SearchAdTransparencyLabel(0));
    v18 = v6;
    v19 = sub_100026898(v18);
    v20 = OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_enforceMaximumOfTwoLinesOverall;
    if (v3[OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_enforceMaximumOfTwoLinesOverall] == 1)
    {
      v21 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel];
      if ([v21 hasContent])
      {
        v22 = [v21 text];
        if (v22)
        {
LABEL_10:
          v23 = v22;
          v24 = sub_100753094();
          v26 = v25;

          v27 = v26;
          v22 = v24;
LABEL_15:
          v28 = &v19[qword_1009234A0];
          *v28 = v22;
          *(v28 + 1) = v27;

          sub_100026F24();
          v29 = OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_searchAdTertiaryLabel;
          v30 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_searchAdTertiaryLabel];
          v31 = v19;
          if (v30)
          {
            [v30 removeFromSuperview];
            v30 = *&v3[v29];
          }

          *&v3[v29] = v19;
          v32 = v19;

          sub_1002F3D3C();
          [v3 addSubview:v32];

          v33 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel;
          v34 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel];
          if (v34 && ([v34 isHidden] & 1) == 0 && (v35 = *&v3[v33]) != 0)
          {
            v36 = [v35 hasContent];
          }

          else
          {
            v36 = 0;
          }

          v37 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabelPresenter;
          swift_beginAccess();
          sub_100016B4C(&v3[v37], v40, &unk_100923520, &qword_1007A5A70);
          v38 = v41;
          sub_10000C8CC(v40, &unk_100923520, &qword_1007A5A70);
          if (v38 || v36)
          {
            [*&v3[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel] setHidden:1];
          }

          [v3 setNeedsLayout];

          return;
        }

LABEL_13:
        v27 = 0;
        goto LABEL_15;
      }

      if (v3[v20] == 1)
      {
        v22 = [*&v3[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel] text];
        if (v22)
        {
          goto LABEL_10;
        }

        goto LABEL_13;
      }
    }

    v22 = sub_10074F764();
    goto LABEL_15;
  }

  v2[OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_isDisplayingSearchAd] = 0;
  [v2 setNeedsLayout];
  v10 = OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_searchAdTertiaryLabel;
  v11 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_searchAdTertiaryLabel];
  if (v11)
  {
    [v11 removeFromSuperview];
    v12 = *&v3[v10];
  }

  else
  {
    v12 = 0;
  }

  *&v3[v10] = 0;

  v39 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel];
  if (v39)
  {

    [v39 setHidden:0];
  }
}

double sub_1002EF908()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = &type metadata for Double;
  v55 = &protocol witness table for Double;
  *&v53 = 0x4053400000000000;
  if (qword_100920ED0 != -1)
  {
    swift_once();
  }

  v4 = sub_100750534();
  v5 = sub_10000D0FC(v4, qword_1009809C0);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(v3, v5, v4);
  v10 = v1 + 13;
  v9 = v1[13];
  v36 = enum case for FontSource.useCase(_:);
  v9(v3);
  v35 = sub_100750B04();
  v51 = v35;
  v52 = &protocol witness table for StaticDimension;
  sub_10000D134(&v50);
  v48 = v0;
  v49 = &protocol witness table for FontSource;
  v11 = sub_10000D134(&v47);
  v33 = v1[2];
  v34 = v1 + 2;
  v33(v11, v3, v0);
  sub_100750B14();
  v13 = v1[1];
  v12 = v1 + 1;
  v32 = v13;
  v13(v3, v0);
  if (qword_100920EE0 != -1)
  {
    swift_once();
  }

  v14 = sub_10000D0FC(v4, qword_1009809F0);
  v7(v3, v14, v4);
  (v9)(v3, v36, v0);
  v48 = v35;
  v49 = &protocol witness table for StaticDimension;
  sub_10000D134(&v47);
  v45 = v0;
  v46 = &protocol witness table for FontSource;
  v15 = sub_10000D134(&v44);
  v33(v15, v3, v0);
  sub_100750B14();
  v32(v3, v0);
  if (qword_100920F10 != -1)
  {
    swift_once();
  }

  v16 = sub_10000D0FC(v4, qword_100980A80);
  v7(v3, v16, v4);
  (v9)(v3, v36, v0);
  v45 = v35;
  v46 = &protocol witness table for StaticDimension;
  sub_10000D134(&v44);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v17 = sub_10000D134(&v41);
  v33(v17, v3, v0);
  sub_100750B14();
  v32(v3, v0);
  v31 = v12;
  v18 = v10;
  if (qword_100920F20 != -1)
  {
    swift_once();
  }

  v30 = sub_10000D0FC(v4, qword_100980AB0);
  v7(v3, v30, v4);
  v19 = v36;
  (v9)(v3, v36, v0);
  v29 = v9;
  v20 = v35;
  v42 = v35;
  v43 = &protocol witness table for StaticDimension;
  sub_10000D134(&v41);
  v27 = v7;
  v28 = v8;
  v39 = v0;
  v40 = &protocol witness table for FontSource;
  v21 = sub_10000D134(&v38);
  v26[1] = v18;
  v22 = v33;
  v33(v21, v3, v0);
  sub_100750B14();
  v23 = v32;
  v32(v3, v0);
  v27(v3, v30, v4);
  v29(v3, v19, v0);
  v39 = v20;
  v40 = &protocol witness table for StaticDimension;
  sub_10000D134(&v38);
  v37[3] = v0;
  v37[4] = &protocol witness table for FontSource;
  v24 = sub_10000D134(v37);
  v22(v24, v3, v0);
  sub_100750B14();
  v23(v3, v0);
  qword_10097F0C0 = &type metadata for Double;
  qword_10097F0C8 = &protocol witness table for Double;
  qword_10097F0A8 = 0x4030000000000000;
  xmmword_10097EF80 = vdupq_n_s64(0x4064000000000000uLL);
  sub_100012160(&v53, &unk_10097EF90);
  qword_10097EFB8 = sub_1001CF76C;
  unk_10097EFC0 = 0;
  sub_100012160(&v50, &unk_10097EFC8);
  sub_100012160(&v47, &unk_10097EFF0);
  sub_100012160(&v38, &unk_10097F068);
  sub_100012160(&v44, &unk_10097F018);
  sub_100012160(&v41, &unk_10097F040);
  qword_10097F090 = 0;
  unk_10097F098 = 0;
  byte_10097F0A0 = 0;
  *&result = 0x1000100010001;
  dword_10097F0D0 = 65537;
  qword_10097F0D8 = 0;
  byte_10097F0E0 = 1;
  return result;
}

double sub_1002EFF3C()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = &type metadata for Double;
  v55 = &protocol witness table for Double;
  *&v53 = 0x4053400000000000;
  if (qword_100920ED0 != -1)
  {
    swift_once();
  }

  v4 = sub_100750534();
  v5 = sub_10000D0FC(v4, qword_1009809C0);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(v3, v5, v4);
  v10 = v1 + 13;
  v9 = v1[13];
  v36 = enum case for FontSource.useCase(_:);
  v9(v3);
  v35 = sub_100750B04();
  v51 = v35;
  v52 = &protocol witness table for StaticDimension;
  sub_10000D134(&v50);
  v48 = v0;
  v49 = &protocol witness table for FontSource;
  v11 = sub_10000D134(&v47);
  v33 = v1[2];
  v34 = v1 + 2;
  v33(v11, v3, v0);
  sub_100750B14();
  v13 = v1[1];
  v12 = v1 + 1;
  v32 = v13;
  v13(v3, v0);
  if (qword_100920EE0 != -1)
  {
    swift_once();
  }

  v14 = sub_10000D0FC(v4, qword_1009809F0);
  v7(v3, v14, v4);
  (v9)(v3, v36, v0);
  v48 = v35;
  v49 = &protocol witness table for StaticDimension;
  sub_10000D134(&v47);
  v45 = v0;
  v46 = &protocol witness table for FontSource;
  v15 = sub_10000D134(&v44);
  v33(v15, v3, v0);
  sub_100750B14();
  v32(v3, v0);
  if (qword_100920F10 != -1)
  {
    swift_once();
  }

  v16 = sub_10000D0FC(v4, qword_100980A80);
  v7(v3, v16, v4);
  (v9)(v3, v36, v0);
  v45 = v35;
  v46 = &protocol witness table for StaticDimension;
  sub_10000D134(&v44);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v17 = sub_10000D134(&v41);
  v33(v17, v3, v0);
  sub_100750B14();
  v32(v3, v0);
  v31 = v12;
  v18 = v10;
  if (qword_100920F20 != -1)
  {
    swift_once();
  }

  v30 = sub_10000D0FC(v4, qword_100980AB0);
  v7(v3, v30, v4);
  v19 = v36;
  (v9)(v3, v36, v0);
  v29 = v9;
  v20 = v35;
  v42 = v35;
  v43 = &protocol witness table for StaticDimension;
  sub_10000D134(&v41);
  v27 = v7;
  v28 = v8;
  v39 = v0;
  v40 = &protocol witness table for FontSource;
  v21 = sub_10000D134(&v38);
  v26[1] = v18;
  v22 = v33;
  v33(v21, v3, v0);
  sub_100750B14();
  v23 = v32;
  v32(v3, v0);
  v27(v3, v30, v4);
  v29(v3, v19, v0);
  v39 = v20;
  v40 = &protocol witness table for StaticDimension;
  sub_10000D134(&v38);
  v37[3] = v0;
  v37[4] = &protocol witness table for FontSource;
  v24 = sub_10000D134(v37);
  v22(v24, v3, v0);
  sub_100750B14();
  v23(v3, v0);
  qword_10097F230 = &type metadata for Double;
  qword_10097F238 = &protocol witness table for Double;
  qword_10097F218 = 0x4020000000000000;
  xmmword_10097F0F0 = vdupq_n_s64(0x4061000000000000uLL);
  sub_100012160(&v53, &unk_10097F100);
  qword_10097F128 = sub_1001CF76C;
  unk_10097F130 = 0;
  sub_100012160(&v50, &unk_10097F138);
  sub_100012160(&v47, &unk_10097F160);
  sub_100012160(&v38, &unk_10097F1D8);
  sub_100012160(&v44, &unk_10097F188);
  sub_100012160(&v41, &unk_10097F1B0);
  qword_10097F200 = 0;
  unk_10097F208 = 0;
  byte_10097F210 = 0;
  *&result = 16777217;
  dword_10097F240 = 16777217;
  qword_10097F248 = 0;
  byte_10097F250 = 1;
  return result;
}

double sub_1002F0574()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = &type metadata for Double;
  v55 = &protocol witness table for Double;
  *&v53 = 0x4028000000000000;
  if (qword_100920ED0 != -1)
  {
    swift_once();
  }

  v4 = sub_100750534();
  v5 = sub_10000D0FC(v4, qword_1009809C0);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(v3, v5, v4);
  v10 = v1 + 13;
  v9 = v1[13];
  v36 = enum case for FontSource.useCase(_:);
  v9(v3);
  v35 = sub_100750B04();
  v51 = v35;
  v52 = &protocol witness table for StaticDimension;
  sub_10000D134(&v50);
  v48 = v0;
  v49 = &protocol witness table for FontSource;
  v11 = sub_10000D134(&v47);
  v33 = v1[2];
  v34 = v1 + 2;
  v33(v11, v3, v0);
  sub_100750B14();
  v13 = v1[1];
  v12 = v1 + 1;
  v32 = v13;
  v13(v3, v0);
  if (qword_100920EE0 != -1)
  {
    swift_once();
  }

  v14 = sub_10000D0FC(v4, qword_1009809F0);
  v7(v3, v14, v4);
  (v9)(v3, v36, v0);
  v48 = v35;
  v49 = &protocol witness table for StaticDimension;
  sub_10000D134(&v47);
  v45 = v0;
  v46 = &protocol witness table for FontSource;
  v15 = sub_10000D134(&v44);
  v33(v15, v3, v0);
  sub_100750B14();
  v32(v3, v0);
  if (qword_100920F10 != -1)
  {
    swift_once();
  }

  v16 = sub_10000D0FC(v4, qword_100980A80);
  v7(v3, v16, v4);
  (v9)(v3, v36, v0);
  v45 = v35;
  v46 = &protocol witness table for StaticDimension;
  sub_10000D134(&v44);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v17 = sub_10000D134(&v41);
  v33(v17, v3, v0);
  sub_100750B14();
  v32(v3, v0);
  v31 = v12;
  v18 = v10;
  if (qword_100920F20 != -1)
  {
    swift_once();
  }

  v30 = sub_10000D0FC(v4, qword_100980AB0);
  v7(v3, v30, v4);
  v19 = v36;
  (v9)(v3, v36, v0);
  v29 = v9;
  v20 = v35;
  v42 = v35;
  v43 = &protocol witness table for StaticDimension;
  sub_10000D134(&v41);
  v27 = v7;
  v28 = v8;
  v39 = v0;
  v40 = &protocol witness table for FontSource;
  v21 = sub_10000D134(&v38);
  v26[1] = v18;
  v22 = v33;
  v33(v21, v3, v0);
  sub_100750B14();
  v23 = v32;
  v32(v3, v0);
  v27(v3, v30, v4);
  v29(v3, v19, v0);
  v39 = v20;
  v40 = &protocol witness table for StaticDimension;
  sub_10000D134(&v38);
  v37[3] = v0;
  v37[4] = &protocol witness table for FontSource;
  v24 = sub_10000D134(v37);
  v22(v24, v3, v0);
  sub_100750B14();
  v23(v3, v0);
  qword_10097F3A0 = &type metadata for Double;
  qword_10097F3A8 = &protocol witness table for Double;
  qword_10097F388 = 0x4030000000000000;
  xmmword_10097F260 = vdupq_n_s64(0x4054000000000000uLL);
  sub_100012160(&v53, &unk_10097F270);
  qword_10097F298 = sub_1001CF76C;
  unk_10097F2A0 = 0;
  sub_100012160(&v50, &unk_10097F2A8);
  sub_100012160(&v47, &unk_10097F2D0);
  sub_100012160(&v38, &unk_10097F348);
  sub_100012160(&v44, &unk_10097F2F8);
  sub_100012160(&v41, &unk_10097F320);
  qword_10097F370 = 0;
  unk_10097F378 = 0;
  byte_10097F380 = 0;
  *&result = 0x1000100010001;
  dword_10097F3B0 = 65537;
  qword_10097F3B8 = 0;
  byte_10097F3C0 = 1;
  return result;
}

double sub_1002F0BA4()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = &type metadata for Double;
  v55 = &protocol witness table for Double;
  *&v53 = 0x4024000000000000;
  if (qword_100920ED0 != -1)
  {
    swift_once();
  }

  v4 = sub_100750534();
  v5 = sub_10000D0FC(v4, qword_1009809C0);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(v3, v5, v4);
  v10 = v1 + 13;
  v9 = v1[13];
  v36 = enum case for FontSource.useCase(_:);
  v9(v3);
  v35 = sub_100750B04();
  v51 = v35;
  v52 = &protocol witness table for StaticDimension;
  sub_10000D134(&v50);
  v48 = v0;
  v49 = &protocol witness table for FontSource;
  v11 = sub_10000D134(&v47);
  v33 = v1[2];
  v34 = v1 + 2;
  v33(v11, v3, v0);
  sub_100750B14();
  v13 = v1[1];
  v12 = v1 + 1;
  v32 = v13;
  v13(v3, v0);
  if (qword_100920EE0 != -1)
  {
    swift_once();
  }

  v14 = sub_10000D0FC(v4, qword_1009809F0);
  v7(v3, v14, v4);
  (v9)(v3, v36, v0);
  v48 = v35;
  v49 = &protocol witness table for StaticDimension;
  sub_10000D134(&v47);
  v45 = v0;
  v46 = &protocol witness table for FontSource;
  v15 = sub_10000D134(&v44);
  v33(v15, v3, v0);
  sub_100750B14();
  v32(v3, v0);
  if (qword_100920F10 != -1)
  {
    swift_once();
  }

  v16 = sub_10000D0FC(v4, qword_100980A80);
  v7(v3, v16, v4);
  (v9)(v3, v36, v0);
  v45 = v35;
  v46 = &protocol witness table for StaticDimension;
  sub_10000D134(&v44);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v17 = sub_10000D134(&v41);
  v33(v17, v3, v0);
  sub_100750B14();
  v32(v3, v0);
  v31 = v12;
  v18 = v10;
  if (qword_100920F20 != -1)
  {
    swift_once();
  }

  v30 = sub_10000D0FC(v4, qword_100980AB0);
  v7(v3, v30, v4);
  v19 = v36;
  (v9)(v3, v36, v0);
  v29 = v9;
  v20 = v35;
  v42 = v35;
  v43 = &protocol witness table for StaticDimension;
  sub_10000D134(&v41);
  v27 = v7;
  v28 = v8;
  v39 = v0;
  v40 = &protocol witness table for FontSource;
  v21 = sub_10000D134(&v38);
  v26[1] = v18;
  v22 = v33;
  v33(v21, v3, v0);
  sub_100750B14();
  v23 = v32;
  v32(v3, v0);
  v27(v3, v30, v4);
  v29(v3, v19, v0);
  v39 = v20;
  v40 = &protocol witness table for StaticDimension;
  sub_10000D134(&v38);
  v37[3] = v0;
  v37[4] = &protocol witness table for FontSource;
  v24 = sub_10000D134(v37);
  v22(v24, v3, v0);
  sub_100750B14();
  v23(v3, v0);
  qword_10097F510 = &type metadata for Double;
  qword_10097F518 = &protocol witness table for Double;
  qword_10097F4F8 = 0x4024000000000000;
  xmmword_10097F3D0 = vdupq_n_s64(0x4048000000000000uLL);
  sub_100012160(&v53, &unk_10097F3E0);
  qword_10097F408 = sub_1001CF76C;
  unk_10097F410 = 0;
  sub_100012160(&v50, &unk_10097F418);
  sub_100012160(&v47, &unk_10097F440);
  sub_100012160(&v38, &unk_10097F4B8);
  sub_100012160(&v44, &unk_10097F468);
  sub_100012160(&v41, &unk_10097F490);
  qword_10097F4E0 = 0;
  unk_10097F4E8 = 0;
  byte_10097F4F0 = 0;
  result = 7.29112205e-304;
  dword_10097F520 = 0x1000000;
  qword_10097F528 = 0;
  byte_10097F530 = 1;
  return result;
}

double sub_1002F11D4()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = &type metadata for Double;
  v55 = &protocol witness table for Double;
  *&v53 = 0x4032000000000000;
  if (qword_100920ED0 != -1)
  {
    swift_once();
  }

  v4 = sub_100750534();
  v5 = sub_10000D0FC(v4, qword_1009809C0);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(v3, v5, v4);
  v10 = v1 + 13;
  v9 = v1[13];
  v36 = enum case for FontSource.useCase(_:);
  v9(v3);
  v35 = sub_100750B04();
  v51 = v35;
  v52 = &protocol witness table for StaticDimension;
  sub_10000D134(&v50);
  v48 = v0;
  v49 = &protocol witness table for FontSource;
  v11 = sub_10000D134(&v47);
  v33 = v1[2];
  v34 = v1 + 2;
  v33(v11, v3, v0);
  sub_100750B14();
  v13 = v1[1];
  v12 = v1 + 1;
  v32 = v13;
  v13(v3, v0);
  if (qword_100920EE0 != -1)
  {
    swift_once();
  }

  v14 = sub_10000D0FC(v4, qword_1009809F0);
  v7(v3, v14, v4);
  (v9)(v3, v36, v0);
  v48 = v35;
  v49 = &protocol witness table for StaticDimension;
  sub_10000D134(&v47);
  v45 = v0;
  v46 = &protocol witness table for FontSource;
  v15 = sub_10000D134(&v44);
  v33(v15, v3, v0);
  sub_100750B14();
  v32(v3, v0);
  if (qword_100920F10 != -1)
  {
    swift_once();
  }

  v16 = sub_10000D0FC(v4, qword_100980A80);
  v7(v3, v16, v4);
  (v9)(v3, v36, v0);
  v45 = v35;
  v46 = &protocol witness table for StaticDimension;
  sub_10000D134(&v44);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v17 = sub_10000D134(&v41);
  v33(v17, v3, v0);
  sub_100750B14();
  v32(v3, v0);
  v31 = v12;
  v18 = v10;
  if (qword_100920F20 != -1)
  {
    swift_once();
  }

  v30 = sub_10000D0FC(v4, qword_100980AB0);
  v7(v3, v30, v4);
  v19 = v36;
  (v9)(v3, v36, v0);
  v29 = v9;
  v20 = v35;
  v42 = v35;
  v43 = &protocol witness table for StaticDimension;
  sub_10000D134(&v41);
  v27 = v7;
  v28 = v8;
  v39 = v0;
  v40 = &protocol witness table for FontSource;
  v21 = sub_10000D134(&v38);
  v26[1] = v18;
  v22 = v33;
  v33(v21, v3, v0);
  sub_100750B14();
  v23 = v32;
  v32(v3, v0);
  v27(v3, v30, v4);
  v29(v3, v19, v0);
  v39 = v20;
  v40 = &protocol witness table for StaticDimension;
  sub_10000D134(&v38);
  v37[3] = v0;
  v37[4] = &protocol witness table for FontSource;
  v24 = sub_10000D134(v37);
  v22(v24, v3, v0);
  sub_100750B14();
  v23(v3, v0);
  qword_10097F680 = &type metadata for Double;
  qword_10097F688 = &protocol witness table for Double;
  qword_10097F668 = 0x4018000000000000;
  xmmword_10097F540 = vdupq_n_s64(0x4051000000000000uLL);
  sub_100012160(&v53, &unk_10097F550);
  qword_10097F578 = sub_1001CF76C;
  unk_10097F580 = 0;
  sub_100012160(&v50, &unk_10097F588);
  sub_100012160(&v47, &unk_10097F5B0);
  sub_100012160(&v38, &unk_10097F628);
  sub_100012160(&v44, &unk_10097F5D8);
  sub_100012160(&v41, &unk_10097F600);
  qword_10097F650 = 0;
  unk_10097F658 = 0;
  byte_10097F660 = 0;
  result = 7.29112205e-304;
  dword_10097F690 = 0x1000000;
  qword_10097F698 = 0;
  byte_10097F6A0 = 1;
  return result;
}

double sub_1002F1804()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = &type metadata for Double;
  v55 = &protocol witness table for Double;
  *&v53 = 0x4032000000000000;
  if (qword_100920ED0 != -1)
  {
    swift_once();
  }

  v4 = sub_100750534();
  v5 = sub_10000D0FC(v4, qword_1009809C0);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(v3, v5, v4);
  v10 = v1 + 13;
  v9 = v1[13];
  v36 = enum case for FontSource.useCase(_:);
  v9(v3);
  v35 = sub_100750B04();
  v51 = v35;
  v52 = &protocol witness table for StaticDimension;
  sub_10000D134(&v50);
  v48 = v0;
  v49 = &protocol witness table for FontSource;
  v11 = sub_10000D134(&v47);
  v33 = v1[2];
  v34 = v1 + 2;
  v33(v11, v3, v0);
  sub_100750B14();
  v13 = v1[1];
  v12 = v1 + 1;
  v32 = v13;
  v13(v3, v0);
  if (qword_100920EE0 != -1)
  {
    swift_once();
  }

  v14 = sub_10000D0FC(v4, qword_1009809F0);
  v7(v3, v14, v4);
  (v9)(v3, v36, v0);
  v48 = v35;
  v49 = &protocol witness table for StaticDimension;
  sub_10000D134(&v47);
  v45 = v0;
  v46 = &protocol witness table for FontSource;
  v15 = sub_10000D134(&v44);
  v33(v15, v3, v0);
  sub_100750B14();
  v32(v3, v0);
  if (qword_100920F10 != -1)
  {
    swift_once();
  }

  v16 = sub_10000D0FC(v4, qword_100980A80);
  v7(v3, v16, v4);
  (v9)(v3, v36, v0);
  v45 = v35;
  v46 = &protocol witness table for StaticDimension;
  sub_10000D134(&v44);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v17 = sub_10000D134(&v41);
  v33(v17, v3, v0);
  sub_100750B14();
  v32(v3, v0);
  v31 = v12;
  v18 = v10;
  if (qword_100920F20 != -1)
  {
    swift_once();
  }

  v30 = sub_10000D0FC(v4, qword_100980AB0);
  v7(v3, v30, v4);
  v19 = v36;
  (v9)(v3, v36, v0);
  v29 = v9;
  v20 = v35;
  v42 = v35;
  v43 = &protocol witness table for StaticDimension;
  sub_10000D134(&v41);
  v27 = v7;
  v28 = v8;
  v39 = v0;
  v40 = &protocol witness table for FontSource;
  v21 = sub_10000D134(&v38);
  v26[1] = v18;
  v22 = v33;
  v33(v21, v3, v0);
  sub_100750B14();
  v23 = v32;
  v32(v3, v0);
  v27(v3, v30, v4);
  v29(v3, v19, v0);
  v39 = v20;
  v40 = &protocol witness table for StaticDimension;
  sub_10000D134(&v38);
  v37[3] = v0;
  v37[4] = &protocol witness table for FontSource;
  v24 = sub_10000D134(v37);
  v22(v24, v3, v0);
  sub_100750B14();
  v23(v3, v0);
  qword_10097F7F0 = &type metadata for Double;
  qword_10097F7F8 = &protocol witness table for Double;
  qword_10097F7D8 = 0x4020000000000000;
  xmmword_10097F6B0 = vdupq_n_s64(0x4051000000000000uLL);
  sub_100012160(&v53, &unk_10097F6C0);
  qword_10097F6E8 = sub_1001CF76C;
  unk_10097F6F0 = 0;
  sub_100012160(&v50, &unk_10097F6F8);
  sub_100012160(&v47, &unk_10097F720);
  sub_100012160(&v38, &unk_10097F798);
  sub_100012160(&v44, &unk_10097F748);
  sub_100012160(&v41, &unk_10097F770);
  qword_10097F7C0 = 0;
  unk_10097F7C8 = 0;
  byte_10097F7D0 = 0;
  *&result = 16777217;
  dword_10097F800 = 16777217;
  qword_10097F808 = 0;
  byte_10097F810 = 1;
  return result;
}

uint64_t sub_1002F1E5C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10000C518(&qword_100934110, qword_1007B70F0);
  __chkstk_darwin(v4 - 8);
  v54 = &v49 - v5;
  v6 = sub_10074C3E4();
  v51 = *(v6 - 8);
  __chkstk_darwin(v6);
  v50 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&unk_100925560, &unk_1007A8E30);
  v52 = *(v8 - 8);
  v53 = v8;
  __chkstk_darwin(v8);
  v49 = &v49 - v9;
  v10 = sub_1007479B4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v56 = &v49 - v16;
  v17 = &selRef_initWithTitle_style_target_action_;
  v18 = [v1 traitCollection];
  v19 = sub_100753804();

  if (v19)
  {
    v20 = OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_axMetrics;
  }

  else
  {
    v20 = OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_metrics;
  }

  v21 = &v2[v20];
  swift_beginAccess();
  sub_100055CF8(v21, a1);
  v22 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton];
  type metadata accessor for TodayCardLockupView();
  sub_1007477B4();
  v23 = (v22 + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_cachedIntrinsicContentSize);
  v24 = *(v22 + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_cachedIntrinsicContentSize + 16);
  v55 = a1;
  if (v24)
  {
    v25 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton__configuration;
    swift_beginAccess();
    sub_10000C824(v22 + v25, v57);
    sub_10000C888(v57, v57[3]);
    v17 = &selRef_initWithTitle_style_target_action_;
    sub_10074AE54();
    v27 = v26;
    v29 = v28;
    sub_10000C620(v57);
    *v23 = v27;
    v23[1] = v29;
    *(v23 + 16) = 0;
  }

  else
  {
    v27 = *v23;
  }

  v30 = [v2 v17[129]];
  if (sub_100753804())
  {
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v31 = qword_10093FF40;
  }

  else
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v31 = qword_10093FF58;
  }

  v32 = sub_10000D0FC(v10, v31);
  (*(v11 + 16))(v13, v32, v10);

  (*(v11 + 32))(v56, v13, v10);
  v33 = (v22 + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_presenter);
  swift_beginAccess();
  v34 = v33[3];
  if (v34)
  {
    v35 = sub_10000C888(v33, v33[3]);
    v36 = *(v34 - 8);
    v37 = __chkstk_darwin(v35);
    v39 = &v49 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v36 + 16))(v39, v37);
    sub_100748CB4();
    (*(v36 + 8))(v39, v34);
  }

  v40 = v51;
  v41 = *(v51 + 104);
  v41(v50, enum case for OfferButtonSubtitlePosition.below(_:), v6);
  v42 = v54;
  v41(v54, enum case for OfferButtonSubtitlePosition.right(_:), v6);
  (*(v40 + 56))(v42, 0, 1, v6);
  sub_1001F750C();
  v43 = v49;
  sub_10074A9C4();
  v44 = v56;
  sub_100747984();
  v46 = v45;

  (*(v52 + 8))(v43, v53);
  result = (*(v11 + 8))(v44, v10);
  v48 = v55;
  *(v55 + 272) = v27;
  *(v48 + 280) = v46;
  *(v48 + 288) = 0;
  return result;
}

double sub_1002F246C(void *a1, double a2)
{
  v5 = sub_1007479B4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v9);
  v11 = &v22[-v10 - 8];
  sub_1002F1E5C(v27);
  v12 = OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_axMetrics;
  swift_beginAccess();
  sub_100055CF8(v2 + v12, v26);
  [v2 layoutMargins];
  if (sub_100753804())
  {
    v13 = v26;
  }

  else
  {
    v13 = v27;
  }

  sub_100055CF8(v13, v22);
  if (sub_100753804())
  {
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v14 = qword_10093FF40;
  }

  else
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v14 = qword_10093FF58;
  }

  v15 = sub_10000D0FC(v5, v14);
  (*(v6 + 16))(v8, v15, v5);
  (*(v6 + 32))(v11, v8, v5);
  if ((v25 & 1) == 0 && v23 == 0.0 && v24 == 0.0)
  {
    sub_100747964();
    v17 = v16;
    sub_100747964();
    v23 = v17;
    v24 = v18;
    v25 = 0;
  }

  v19 = _s22SubscribePageExtension21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v22, a1, a2);
  (*(v6 + 8))(v11, v5);
  sub_100055D54(v22);
  sub_100055D54(v26);
  sub_100055D54(v27);
  return v19;
}

CGFloat sub_1002F27D4()
{
  v1 = sub_1007479B4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v17[-v6];
  sub_1002F1E5C(v22);
  v8 = OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_axMetrics;
  swift_beginAccess();
  sub_100055CF8(v0 + v8, v21);
  v9 = [v0 traitCollection];
  [v0 layoutMargins];
  if (sub_100753804())
  {
    v10 = v21;
  }

  else
  {
    v10 = v22;
  }

  sub_100055CF8(v10, v17);
  if (sub_100753804())
  {
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v11 = qword_10093FF40;
  }

  else
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v11 = qword_10093FF58;
  }

  v12 = sub_10000D0FC(v1, v11);
  (*(v2 + 16))(v4, v12, v1);
  (*(v2 + 32))(v7, v4, v1);
  if ((v20 & 1) == 0 && v18 == 0.0 && v19 == 0.0)
  {
    sub_100747964();
    v14 = v13;
    sub_100747964();
    v18 = v14;
    v19 = v15;
    v20 = 0;
  }

  _s22SubscribePageExtension21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v17, v9, 0.0);

  (*(v2 + 8))(v7, v1);
  sub_100055D54(v17);
  sub_100055D54(v21);
  sub_100055D54(v22);
  return UIViewNoIntrinsicMetric;
}

uint64_t sub_1002F2B98@<X0>(uint64_t *a1@<X8>)
{
  sub_1002F1E5C(v140);
  if (*(v1 + OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_enforceMaximumOfTwoLinesOverall) == 1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_searchAdTertiaryLabel);
    v4 = sub_100745C84();
    *(&v116[1] + 1) = v4;
    *&v116[2] = &protocol witness table for UILabel;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel);
    }

    *&v116[0] = v5;
    sub_100012160(v116, v139);
    v9 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel);
    if (v9)
    {
      v11 = v4;
    }

    else
    {
      v11 = 0;
    }

    if (v9)
    {
      v12 = &protocol witness table for UILabel;
    }

    else
    {
      v12 = 0;
    }

    v136 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel);
    *&v137 = 0;
    *(&v137 + 1) = v11;
    v138 = v12;
    v133 = 0u;
    v134 = 0u;
    v135 = 0;
  }

  else
  {
    v6 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel);
    v7 = sub_100745C84();
    v8 = v7;
    v139[4] = &protocol witness table for UILabel;
    v139[3] = v7;
    v139[0] = v6;
    v9 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_searchAdTertiaryLabel);
    if (v9)
    {
      v10 = type metadata accessor for SearchAdTransparencyLabel(0);
      v132 = &protocol witness table for UILabel;
      v131 = v10;
      *&v130 = v9;
      sub_100012160(&v130, v116);
    }

    else
    {
      v13 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel);
      if (v13)
      {
        v14 = &protocol witness table for UILabel;
        v15 = v7;
      }

      else
      {
        v15 = 0;
        v14 = 0;
        *(&v116[0] + 1) = 0;
        *&v116[1] = 0;
      }

      *&v116[0] = v13;
      *(&v116[1] + 1) = v15;
      *&v116[2] = v14;
      v16 = v6;
      v9 = 0;
      v6 = v13;
    }

    v17 = v6;
    v136 = v116[0];
    v137 = v116[1];
    v138 = *&v116[2];
    v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel);
    v135 = &protocol witness table for UILabel;
    *(&v134 + 1) = v8;
    *&v133 = v3;
  }

  v18 = v9;
  v19 = v3;
  if (*(v1 + OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_crossLinkPresenter))
  {
    v20 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_crossLinkTitleLabel);
    v21 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_crossLinkSubtitleLabel);
    v22 = v20;
    v23 = v21;
  }

  else
  {
    v21 = 0;
    v20 = 0;
  }

  sub_100055CF8(v140, &v130);
  v24 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
  v25 = sub_1007433C4();
  v129 = &protocol witness table for UIView;
  v128 = v25;
  v103 = v24;
  v127[0] = v24;
  v26 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_ordinalLabel);
  v27 = sub_100745C84();
  v28 = v27;
  v126[4] = &protocol witness table for UILabel;
  v126[3] = v27;
  v102 = v26;
  v126[0] = v26;
  v29 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel);
  v101 = v29;
  if (v29)
  {
    v30 = &protocol witness table for UILabel;
    v31 = v27;
  }

  else
  {
    v31 = 0;
    v30 = 0;
    v125[2] = 0;
    v125[1] = 0;
  }

  v125[0] = v29;
  v125[3] = v31;
  v125[4] = v30;
  v32 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleLabel);
  v124[4] = &protocol witness table for UILabel;
  v124[3] = v27;
  v100 = v32;
  v124[0] = v32;
  sub_10000C824(v139, v121);
  sub_100016B4C(&v136, v120, &qword_10092BC30, &qword_1007AD5C0);
  if (v20)
  {
    v33 = &protocol witness table for UILabel;
    v34 = v20;
    v35 = v28;
  }

  else
  {
    v34 = 0;
    v35 = 0;
    v33 = 0;
    v119[2] = 0;
    v119[1] = 0;
  }

  v119[0] = v34;
  v119[3] = v35;
  v119[4] = v33;
  if (v21)
  {
    v36 = &protocol witness table for UILabel;
  }

  else
  {
    v28 = 0;
    v36 = 0;
    v118[2] = 0;
    v118[1] = 0;
  }

  v118[0] = v21;
  v118[3] = v28;
  v118[4] = v36;
  sub_100016B4C(&v133, v117, &qword_10092BC30, &qword_1007AD5C0);
  v37 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton);
  v109 = type metadata accessor for OfferButton();
  a1[3] = &type metadata for TodayCardLockupLayout;
  a1[4] = sub_1002F45FC();
  v108 = swift_allocObject();
  *a1 = v108;
  sub_100055CF8(&v130, v116);
  v104 = v35;
  BYTE8(v116[47]) = v35 != 0;
  v38 = v128;
  v39 = v129;
  sub_10000C888(v127, v128);
  v40 = sub_100754284();
  v99 = &v99;
  v41 = *(v40 - 8);
  __chkstk_darwin(v40);
  v43 = &v99 - v42;
  v107 = v20;
  v106 = v21;
  v105 = v37;
  v44 = v103;
  v45 = v102;
  v46 = v101;
  v47 = v100;
  sub_100750374();
  v48 = *(v38 - 8);
  if ((*(v48 + 48))(v43, 1, v38) == 1)
  {
    (*(v41 + 8))(v43, v40);
    v115 = 0;
    v113 = 0u;
    v114 = 0u;
  }

  else
  {
    *(&v114 + 1) = v38;
    v115 = v39;
    v49 = sub_10000D134(&v113);
    (*(v48 + 32))(v49, v43, v38);
  }

  *(&v116[22] + 8) = v113;
  *(&v116[23] + 8) = v114;
  *(&v116[24] + 1) = v115;
  sub_100016B4C(v126, v110, &qword_10092BC30, &qword_1007AD5C0);
  v50 = v111;
  if (v111)
  {
    v51 = v112;
    sub_10000C888(v110, v111);
    v52 = sub_100754284();
    v53 = *(v52 - 8);
    __chkstk_darwin(v52);
    v55 = &v99 - v54;
    sub_100750814();
    v56 = *(v50 - 8);
    if ((*(v56 + 48))(v55, 1, v50) == 1)
    {
      (*(v53 + 8))(v55, v52);
      v115 = 0;
      v113 = 0u;
      v114 = 0u;
    }

    else
    {
      *(&v114 + 1) = v50;
      v115 = v51;
      v57 = sub_10000D134(&v113);
      (*(v56 + 32))(v57, v55, v50);
    }

    sub_10000C620(v110);
  }

  else
  {
    sub_10000C8CC(v110, &qword_10092BC30, &qword_1007AD5C0);
    v113 = 0u;
    v114 = 0u;
    v115 = 0;
  }

  v116[25] = v113;
  v116[26] = v114;
  *&v116[27] = v115;
  sub_100016B4C(v125, v110, &qword_10092BC30, &qword_1007AD5C0);
  v58 = v111;
  if (v111)
  {
    v59 = v112;
    sub_10000C888(v110, v111);
    v60 = sub_100754284();
    v61 = *(v60 - 8);
    __chkstk_darwin(v60);
    v63 = &v99 - v62;
    sub_100750814();
    v64 = *(v58 - 8);
    if ((*(v64 + 48))(v63, 1, v58) == 1)
    {
      (*(v61 + 8))(v63, v60);
      v115 = 0;
      v113 = 0u;
      v114 = 0u;
    }

    else
    {
      *(&v114 + 1) = v58;
      v115 = v59;
      v65 = sub_10000D134(&v113);
      (*(v64 + 32))(v65, v63, v58);
    }

    sub_10000C620(v110);
  }

  else
  {
    sub_10000C8CC(v110, &qword_10092BC30, &qword_1007AD5C0);
    v113 = 0u;
    v114 = 0u;
    v115 = 0;
  }

  *(&v116[27] + 8) = v113;
  *(&v116[28] + 8) = v114;
  *(&v116[29] + 1) = v115;
  sub_10000C824(v124, &v116[30]);
  v66 = v122;
  v67 = v123;
  sub_10000C888(v121, v122);
  v68 = sub_100754284();
  v69 = *(v68 - 8);
  __chkstk_darwin(v68);
  v71 = &v99 - v70;
  if (v104)
  {
    sub_100750804();
  }

  else
  {
    sub_100750814();
  }

  v72 = *(v66 - 8);
  if ((*(v72 + 48))(v71, 1, v66) == 1)
  {
    (*(v69 + 8))(v71, v68);
    v115 = 0;
    v113 = 0u;
    v114 = 0u;
  }

  else
  {
    *(&v114 + 1) = v66;
    v115 = v67;
    v73 = sub_10000D134(&v113);
    (*(v72 + 32))(v73, v71, v66);
  }

  *(&v116[32] + 8) = v113;
  *(&v116[33] + 8) = v114;
  *(&v116[34] + 1) = v115;
  sub_100016B4C(v120, v110, &qword_10092BC30, &qword_1007AD5C0);
  v74 = v111;
  if (v111)
  {
    v75 = v112;
    sub_10000C888(v110, v111);
    v76 = sub_100754284();
    v77 = *(v76 - 8);
    __chkstk_darwin(v76);
    v79 = &v99 - v78;
    sub_100750814();
    v80 = *(v74 - 8);
    if ((*(v80 + 48))(v79, 1, v74) == 1)
    {
      (*(v77 + 8))(v79, v76);
      v115 = 0;
      v113 = 0u;
      v114 = 0u;
    }

    else
    {
      *(&v114 + 1) = v74;
      v115 = v75;
      v81 = sub_10000D134(&v113);
      (*(v80 + 32))(v81, v79, v74);
    }

    sub_10000C620(v110);
  }

  else
  {
    sub_10000C8CC(v110, &qword_10092BC30, &qword_1007AD5C0);
    v113 = 0u;
    v114 = 0u;
    v115 = 0;
  }

  v116[35] = v113;
  v116[36] = v114;
  *&v116[37] = v115;
  sub_100016B4C(v119, &v116[37] + 8, &qword_10092BC30, &qword_1007AD5C0);
  sub_100016B4C(v118, v110, &qword_10092BC30, &qword_1007AD5C0);
  v82 = v111;
  if (v111)
  {
    v83 = v112;
    sub_10000C888(v110, v111);
    v84 = sub_100754284();
    v85 = *(v84 - 8);
    __chkstk_darwin(v84);
    v87 = &v99 - v86;
    sub_100750804();
    v88 = *(v82 - 8);
    if ((*(v88 + 48))(v87, 1, v82) == 1)
    {
      (*(v85 + 8))(v87, v84);
      v115 = 0;
      v113 = 0u;
      v114 = 0u;
    }

    else
    {
      *(&v114 + 1) = v82;
      v115 = v83;
      v89 = sub_10000D134(&v113);
      (*(v88 + 32))(v89, v87, v82);
    }

    sub_10000C620(v110);
  }

  else
  {
    sub_10000C8CC(v110, &qword_10092BC30, &qword_1007AD5C0);
    v113 = 0u;
    v114 = 0u;
    v115 = 0;
  }

  v116[40] = v113;
  v116[41] = v114;
  *&v116[42] = v115;
  sub_100016B4C(v117, v110, &qword_10092BC30, &qword_1007AD5C0);
  v90 = v111;
  if (v111)
  {
    v91 = v112;
    sub_10000C888(v110, v111);
    v92 = sub_100754284();
    v93 = *(v92 - 8);
    __chkstk_darwin(v92);
    v95 = &v99 - v94;
    sub_100750814();
    v96 = *(v90 - 8);
    if ((*(v96 + 48))(v95, 1, v90) == 1)
    {
      sub_10000C8CC(v117, &qword_10092BC30, &qword_1007AD5C0);
      sub_10000C8CC(v120, &qword_10092BC30, &qword_1007AD5C0);
      sub_100055D54(&v130);
      sub_10000C8CC(v118, &qword_10092BC30, &qword_1007AD5C0);
      sub_10000C620(v124);
      sub_10000C8CC(v125, &qword_10092BC30, &qword_1007AD5C0);
      sub_10000C8CC(v126, &qword_10092BC30, &qword_1007AD5C0);
      sub_10000C8CC(v119, &qword_10092BC30, &qword_1007AD5C0);
      (*(v93 + 8))(v95, v92);
      v115 = 0;
      v113 = 0u;
      v114 = 0u;
    }

    else
    {
      *(&v114 + 1) = v90;
      v115 = v91;
      v97 = sub_10000D134(&v113);
      (*(v96 + 32))(v97, v95, v90);
      sub_10000C8CC(v117, &qword_10092BC30, &qword_1007AD5C0);
      sub_10000C8CC(v120, &qword_10092BC30, &qword_1007AD5C0);
      sub_100055D54(&v130);
      sub_10000C8CC(v118, &qword_10092BC30, &qword_1007AD5C0);
      sub_10000C620(v124);
      sub_10000C8CC(v125, &qword_10092BC30, &qword_1007AD5C0);
      sub_10000C8CC(v126, &qword_10092BC30, &qword_1007AD5C0);
      sub_10000C8CC(v119, &qword_10092BC30, &qword_1007AD5C0);
    }

    sub_10000C620(v110);
  }

  else
  {
    sub_10000C8CC(v117, &qword_10092BC30, &qword_1007AD5C0);
    sub_10000C8CC(v120, &qword_10092BC30, &qword_1007AD5C0);
    sub_100055D54(&v130);
    sub_10000C8CC(v118, &qword_10092BC30, &qword_1007AD5C0);
    sub_10000C620(v124);
    sub_10000C8CC(v125, &qword_10092BC30, &qword_1007AD5C0);
    sub_10000C8CC(v126, &qword_10092BC30, &qword_1007AD5C0);
    sub_10000C8CC(v119, &qword_10092BC30, &qword_1007AD5C0);
    sub_10000C8CC(v110, &qword_10092BC30, &qword_1007AD5C0);
    v113 = 0u;
    v114 = 0u;
    v115 = 0;
  }

  *(&v116[42] + 8) = v113;
  *(&v116[43] + 8) = v114;
  *(&v116[44] + 1) = v115;
  *&v116[45] = v105;
  *(&v116[45] + 8) = v113;
  *(&v116[46] + 1) = v109;
  *&v116[47] = &protocol witness table for UIView;
  memcpy((v108 + 16), v116, 0x2F9uLL);

  sub_10000C8CC(&v136, &qword_10092BC30, &qword_1007AD5C0);
  sub_100055D54(v140);
  sub_10000C620(v121);
  sub_10000C620(v127);
  sub_10000C8CC(&v133, &qword_10092BC30, &qword_1007AD5C0);
  return sub_10000C620(v139);
}

void sub_1002F3D3C()
{
  v1 = v0;
  v2 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v45 = &v44 - v4;
  v5 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_crossLinkTitleLabel);
  v6 = OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_crossLinkPresenter;
  v7 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_crossLinkPresenter);
  v9 = !v7 || (v8 = OBJC_IVAR____TtC22SubscribePageExtension18CrossLinkPresenter_isVisible, swift_beginAccess(), *(v7 + v8) != 1) || [v5 numberOfLines] == 0;
  [v5 setHidden:{v9, v3}];
  v10 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_crossLinkSubtitleLabel);
  v11 = *(v1 + v6);
  if (v11 && (v12 = OBJC_IVAR____TtC22SubscribePageExtension18CrossLinkPresenter_isVisible, swift_beginAccess(), *(v11 + v12) == 1) && [v10 numberOfLines])
  {
    if (*(v1 + OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_isDisplayingSearchAd) == 1)
    {
      v13 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_enforceMaximumOfTwoLinesOverall);
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 1;
  }

  [v10 setHidden:v13];
  v14 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleLabel);
  v15 = *(v1 + v6);
  v17 = v15 && (v16 = OBJC_IVAR____TtC22SubscribePageExtension18CrossLinkPresenter_isVisible, swift_beginAccess(), (*(v15 + v16) & 1) != 0) || [v14 numberOfLines] == 0;
  [v14 setHidden:v17];
  v18 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel);
  v19 = *(v1 + v6);
  if (v19 && (v20 = OBJC_IVAR____TtC22SubscribePageExtension18CrossLinkPresenter_isVisible, swift_beginAccess(), (*(v19 + v20) & 1) != 0) || ![v18 numberOfLines])
  {
    v21 = 1;
  }

  else if (*(v1 + OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_isDisplayingSearchAd) == 1)
  {
    v21 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_enforceMaximumOfTwoLinesOverall);
  }

  else
  {
    v21 = 0;
  }

  [v18 setHidden:v21];
  v22 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel);
  if (v22)
  {
    v23 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_enforceMaximumOfTwoLinesOverall);
    v24 = v22;
    if (v23 == 1)
    {
      if ([v18 isHidden])
      {
        v25 = [v10 isHidden] ^ 1;
      }

      else
      {
        v25 = 1;
      }
    }

    else
    {
      v25 = 0;
    }

    [v24 setHidden:v25];
  }

  v26 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel);
  v27 = [v26 text];
  if (v27)
  {
    v28 = v27;
    sub_100753094();
  }

  v29 = sub_100753114();

  if (v29)
  {
    v30 = 1;
  }

  else if (*(v1 + OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_isDisplayingSearchAd) == 1)
  {
    v30 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_enforceMaximumOfTwoLinesOverall);
  }

  else
  {
    v30 = 0;
  }

  [v26 setHidden:v30];
  v31 = OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_searchAdTertiaryLabel;
  v32 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_searchAdTertiaryLabel);
  if (*(v1 + OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_enforceMaximumOfTwoLinesOverall) == 1)
  {
    if (v32)
    {
      v33 = v32;
      sub_100745B94();
      sub_100745BA4();

      v34 = *(v1 + v31);
      if (v34)
      {
        v35 = v34;
        v36 = [v18 textColor];
        [v35 setTextColor:v36];
LABEL_45:
      }
    }
  }

  else if (v32)
  {
    v37 = qword_100920F28;
    v38 = v32;
    if (v37 != -1)
    {
      swift_once();
    }

    v39 = sub_100750534();
    v40 = sub_10000D0FC(v39, qword_100980AC8);
    v41 = *(v39 - 8);
    v42 = v45;
    (*(v41 + 16))(v45, v40, v39);
    (*(v41 + 56))(v42, 0, 1, v39);
    sub_100745BA4();

    v43 = *(v1 + v31);
    if (v43)
    {
      sub_10000D198();
      v36 = v43;
      v35 = sub_100753DF4();
      [v36 setTextColor:v35];
      goto LABEL_45;
    }
  }
}

double sub_1002F4264()
{
  sub_100055D54(v0 + OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_metrics);
  sub_100055D54(v0 + OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_axMetrics);

  return result;
}

id sub_1002F4304(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TodayCardLockupView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1002F4440(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
  sub_1007526C4();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10000C8CC(v4, &unk_100923960, &qword_1007A6240);
  }

  v8 = sub_10074F774();
  sub_1003C0E00(v8, 1, a1, v4);

  return (*(v6 + 8))(v4, v5);
}

uint64_t sub_1002F45B4()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1002F45FC()
{
  result = qword_100931AE8;
  if (!qword_100931AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100931AE8);
  }

  return result;
}

uint64_t sub_1002F4650()
{
  sub_10000C620(v0 + 4);

  sub_10000C620(v0 + 11);
  sub_10000C620(v0 + 16);
  sub_10000C620(v0 + 21);
  sub_10000C620(v0 + 26);
  sub_10000C620(v0 + 31);
  sub_10000C620(v0 + 39);
  if (v0[50])
  {
    sub_10000C620(v0 + 47);
  }

  if (v0[55])
  {
    sub_10000C620(v0 + 52);
  }

  if (v0[60])
  {
    sub_10000C620(v0 + 57);
  }

  sub_10000C620(v0 + 62);
  if (v0[70])
  {
    sub_10000C620(v0 + 67);
  }

  if (v0[75])
  {
    sub_10000C620(v0 + 72);
  }

  if (v0[80])
  {
    sub_10000C620(v0 + 77);
  }

  if (v0[85])
  {
    sub_10000C620(v0 + 82);
  }

  if (v0[90])
  {
    sub_10000C620(v0 + 87);
  }

  if (v0[95])
  {
    sub_10000C620(v0 + 92);
  }

  return _swift_deallocObject(v0, 777, 7);
}

char *sub_1002F4758()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  *&v58 = sub_100751504();
  __chkstk_darwin(v58);
  v57 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100751A14();
  v51 = *(v3 - 8);
  v52 = v3;
  __chkstk_darwin(v3);
  v53 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10074AB44();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v9 - 8);
  v11 = &v46 - v10;
  v1[OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_allowsGroupBlending] = 1;
  v1[OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_preferStackedLargeAXLayouts] = 0;
  v56 = OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_crossLinkTitleLabel;
  if (qword_100920ED8 != -1)
  {
    swift_once();
  }

  v12 = sub_100750534();
  v13 = sub_10000D0FC(v12, qword_1009809D8);
  v14 = *(v12 - 8);
  v16 = v14 + 16;
  v15 = *(v14 + 16);
  v15(v11, v13, v12);
  v19 = *(v14 + 56);
  v18 = v14 + 56;
  v17 = v19;
  v19(v11, 0, 1, v12);
  v20 = *(v6 + 104);
  v48 = v6 + 104;
  v49 = v20;
  v50 = enum case for DirectionalTextAlignment.none(_:);
  v20(v8);
  v21 = sub_100745C84();
  v22 = objc_allocWithZone(v21);
  v46 = v5;
  *&v1[v56] = sub_100745C74();
  v47 = OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_crossLinkSubtitleLabel;
  if (qword_100920EF8 != -1)
  {
    swift_once();
  }

  v23 = sub_10000D0FC(v12, qword_100980A38);
  v54 = v15;
  v55 = v16;
  v15(v11, v23, v12);
  v56 = v18;
  v17(v11, 0, 1, v12);
  v49(v8, v50, v46);
  v24 = objc_allocWithZone(v21);
  *&v1[v47] = sub_100745C74();
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_crossLinkPresenter] = 0;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_searchAdTertiaryLabel] = 0;
  v1[OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_enforceMaximumOfTwoLinesOverall] = 0;
  v1[OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_isDisplayingSearchAd] = 0;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView____lazy_storage___lockupViews] = 0;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView____lazy_storage___crossLinkViews] = 0;
  if (qword_100920850 != -1)
  {
    swift_once();
  }

  sub_100055CF8(&xmmword_10097F3D0, &v1[OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_metrics]);
  if (qword_100920858 != -1)
  {
    swift_once();
  }

  sub_100055CF8(&xmmword_10097F540, &v1[OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_axMetrics]);
  v25 = type metadata accessor for TodayCardLockupView();
  v61.receiver = v1;
  v61.super_class = v25;
  v26 = objc_msgSendSuper2(&v61, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  (*(v51 + 104))(v53, enum case for UITypesettingLanguageAwareLineHeightRatio.disabled(_:), v52);
  v27 = v26;
  sub_100753CE4();
  sub_1007514E4();
  sub_100753CF4();
  v28 = qword_100920EE0;
  v29 = *&v27[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleLabel];
  v30 = v54;
  if (v28 != -1)
  {
    swift_once();
  }

  v31 = sub_10000D0FC(v12, qword_1009809F0);
  v30(v11, v31, v12);
  v17(v11, 0, 1, v12);
  sub_100745BA4();

  v32 = qword_100920F10;
  v33 = *&v27[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel];
  if (v32 != -1)
  {
    swift_once();
  }

  v34 = sub_10000D0FC(v12, qword_100980A80);
  v30(v11, v34, v12);
  v17(v11, 0, 1, v12);
  sub_100745BA4();

  v35 = OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_crossLinkTitleLabel;
  v36 = *&v27[OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_crossLinkTitleLabel];
  v37 = objc_opt_self();
  v38 = v36;
  v39 = [v37 secondaryLabelColor];
  [v38 setTextColor:v39];

  [*&v27[v35] setHidden:1];
  [*&v27[v35] setAlpha:0.0];
  [v27 addSubview:*&v27[v35]];
  v40 = OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_crossLinkSubtitleLabel;
  v41 = *&v27[OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_crossLinkSubtitleLabel];
  v42 = [v37 labelColor];
  [v41 setTextColor:v42];

  [*&v27[v40] setHidden:1];
  [*&v27[v40] setAlpha:0.0];
  [v27 addSubview:*&v27[v40]];
  sub_10000C518(&unk_1009249D0, qword_1007A7B10);
  v43 = swift_allocObject();
  v58 = xmmword_1007A5A00;
  *(v43 + 16) = xmmword_1007A5A00;
  *(v43 + 32) = sub_1007519E4();
  *(v43 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v60[3] = v25;
  v60[0] = v27;
  sub_100753D34();
  swift_unknownObjectRelease();

  sub_10000C620(v60);
  v44 = swift_allocObject();
  *(v44 + 16) = v58;
  *(v44 + 32) = sub_100751554();
  *(v44 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_100753D44();

  swift_unknownObjectRelease();

  return v27;
}

uint64_t sub_1002F5008()
{
  v0 = sub_10074B5F4();
  sub_100039C50(v0, qword_10097F818);
  sub_10000D0FC(v0, qword_10097F818);
  return sub_10074B5D4();
}

void sub_1002F5120()
{
  sub_10000D198();
  v0 = objc_opt_self();
  v1 = [v0 systemBackgroundColor];
  v2.super.isa = [v0 secondarySystemBackgroundColor];
  v3.super.isa = v1;
  qword_10097F830 = sub_100753EC4(v3, v2).super.isa;
}

uint64_t sub_1002F51BC()
{
  v0 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  sub_100039C50(v0, qword_10097F840);
  sub_10000D0FC(v0, qword_10097F840);
  sub_10000C518(&unk_100923AE0, &qword_1007A8370);
  return sub_100743494();
}

char *sub_1002F5254(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v313 = sub_100752AC4();
  v311 = *(v313 - 8);
  __chkstk_darwin(v313);
  v307 = &v284 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100743584();
  v295 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v284 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000C518(&qword_100932560, qword_1007A7BB0);
  __chkstk_darwin(v14 - 8);
  v293 = &v284 - v15;
  v16 = sub_100750534();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v304 = &v284 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10074AB44();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v284 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v23 - 8);
  v303 = &v284 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v284 - v26;
  v28 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_titleLabel;
  if (qword_100921108 != -1)
  {
    swift_once();
  }

  v294 = v13;
  v296 = v11;
  v29 = sub_10000D0FC(v16, qword_100981050);
  v30 = *(v17 + 16);
  v312 = (v17 + 16);
  v292 = v30;
  (v30)(v27, v29, v16);
  v306 = v17;
  v31 = *(v17 + 56);
  v291 = v16;
  v310 = (v17 + 56);
  v308 = v31;
  (v31)(v27, 0, 1, v16);
  v32 = *(v20 + 104);
  v300 = enum case for DirectionalTextAlignment.none(_:);
  v309 = v19;
  v302 = v20 + 104;
  v298 = v32;
  (v32)(v22);
  v33 = v22;
  v34 = sub_100745C84();
  v35 = objc_allocWithZone(v34);
  v299 = v33;
  *(v5 + v28) = sub_100745C74();
  v36 = type metadata accessor for RatingView();
  v37 = objc_allocWithZone(v36);
  *&v37[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_rating] = 0;
  *&v37[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_emptyStarColor] = 0;
  v38 = &v37[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_starPadding];
  *v38 = 0;
  v38[8] = 1;
  *&v37[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_maxNumberOfStars] = 5;
  if (qword_100921700 != -1)
  {
    swift_once();
  }

  v39 = qword_10093B668;
  *&v37[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_starColor] = qword_10093B668;
  v37[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_starSize] = 1;
  *v38 = 0x4008000000000000;
  v38[8] = 0;
  v37[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_useCase] = 1;
  v40 = type metadata accessor for StarRow();
  v41 = objc_allocWithZone(v40);
  v42 = v39;
  *&v37[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_filledStarRowView] = sub_1004FC838(5, 1, 1, 0x4008000000000000, 0, 0, 1);
  v37[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_fillEmptyStars] = 0;
  v43 = objc_allocWithZone(v40);
  *&v37[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_emptyStarRowView] = sub_1004FC838(5, 0, 1, 0x4008000000000000, 0, 0, 1);
  v319.receiver = v37;
  v319.super_class = v36;
  v44 = objc_msgSendSuper2(&v319, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1004FA474();
  v45 = OBJC_IVAR____TtC22SubscribePageExtension10RatingView_filledStarRowView;
  v46 = *&v44[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_filledStarRowView];
  v47 = *&v46[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_currentRating];
  *&v46[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_currentRating] = *&v44[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_rating];
  v48 = v46;
  sub_1004FAF60(v47);

  if (*&v44[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_emptyStarRowView])
  {
    [v44 addSubview:?];
  }

  v305 = v34;
  v49 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_ratingView;
  [v44 addSubview:*&v44[v45]];

  *(v5 + v49) = v44;
  v301 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_dateLabel;
  v50 = v309;
  v51 = v292;
  if (qword_100921120 != -1)
  {
    swift_once();
  }

  v52 = v291;
  v290 = sub_10000D0FC(v291, qword_100981098);
  v51(v27);
  (v308)(v27, 0, 1, v52);
  v53 = v299;
  v54 = v300;
  v55 = v50;
  v56 = v298;
  v298(v299, v300, v55);
  v57 = v305;
  v58 = objc_allocWithZone(v305);
  *&v301[v5] = sub_100745C74();
  v301 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_authorLabel;
  if (qword_100921128 != -1)
  {
    swift_once();
  }

  v59 = sub_10000D0FC(v52, qword_1009810B0);
  (v51)(v27, v59, v52);
  (v308)(v27, 0, 1, v52);
  v56(v53, v54, v309);
  v60 = objc_allocWithZone(v57);
  *&v301[v5] = sub_100745C74();
  v61 = v51;
  v62 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_dateAuthorLabel;
  if (qword_100921130 != -1)
  {
    swift_once();
  }

  v63 = sub_10000D0FC(v52, qword_1009810C8);
  v61(v27, v63, v52);
  (v308)(v27, 0, 1, v52);
  v56(v53, v54, v309);
  v64 = objc_allocWithZone(v57);
  v65 = v61;
  *(v5 + v62) = sub_100745C74();
  v285 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_bodyLabel;
  v286 = v5;
  if (qword_100921118 != -1)
  {
    swift_once();
  }

  v66 = sub_10000D0FC(v52, qword_100981080);
  v67 = v304;
  v289 = v66;
  (v61)(v304);
  v301 = objc_opt_self();
  v68 = [v301 clearColor];
  v288 = type metadata accessor for ExpandableTextView();
  v69 = objc_allocWithZone(v288);
  v70 = v68;
  v71 = sub_10025F574(v70, 0.0, 0.0, 0.0, 0.0);
  v65(v27, v67, v52);
  v72 = v308;
  v73 = v65;
  (v308)(v27, 0, 1, v52);
  sub_10006A0D4(v27, v303);
  v74 = v71;
  sub_100745BA4();

  sub_10000C8CC(v27, &unk_100928A40, qword_1007A6630);
  v75 = *(v306 + 8);
  v306 += 8;
  v287 = v75;
  v75(v67, v52);

  v76 = v286;
  *&v286[v285] = v74;
  v285 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_responseTitleLabel;
  v77 = v65;
  v78 = v52;
  v79 = v76;
  if (qword_100921110 != -1)
  {
    swift_once();
  }

  v80 = sub_10000D0FC(v78, qword_100981068);
  v73(v27, v80, v78);
  v72(v27, 0, 1, v78);
  v81 = v299;
  v82 = v300;
  v83 = v298;
  v298(v299, v300, v309);
  v84 = objc_allocWithZone(v305);
  *&v79[v285] = sub_100745C74();
  v285 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_responseDateLabel;
  v77(v27, v290, v78);
  v72(v27, 0, 1, v78);
  v83(v81, v82, v309);
  v85 = objc_allocWithZone(v305);
  *&v79[v285] = sub_100745C74();
  v86 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_responseBodyLabel;
  v87 = v304;
  v88 = v77;
  v77(v304, v289, v78);
  v89 = [v301 clearColor];
  v90 = objc_allocWithZone(v288);
  v91 = v89;
  v92 = sub_10025F574(v91, 0.0, 0.0, 0.0, 0.0);
  v88(v27, v87, v78);
  (v308)(v27, 0, 1, v78);
  sub_10006A0D4(v27, v303);
  v93 = v92;
  sub_100745BA4();

  sub_10000C8CC(v27, &unk_100928A40, qword_1007A6630);
  v287(v87, v78);

  *&v79[v86] = v93;
  v94 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_shadowView;
  sub_100743034();
  *&v79[v94] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v95 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_roundedCornerView;
  sub_100746ED4();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v79[v95] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v97 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_focusBackgroundView;
  *&v79[v97] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v98 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_cardContentView;
  *&v79[v98] = [objc_allocWithZone(UIView) init];
  v99 = &v79[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_moreReviewTapHandler];
  *v99 = 0;
  v99[1] = 0;
  v100 = &v79[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_moreResponseTapHandler];
  *v100 = 0;
  v100[1] = 0;
  v101 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_moreReviewTapGestureRecognizer;
  *&v79[v101] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v102 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_moreResponseTapGestureRecognizer;
  *&v79[v102] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v79[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_isFlowPreviewingDestination] = 0;
  v79[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_hasResponse] = 0;
  v79[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_isReviewExpanded] = 1;
  v79[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_isResponseExpanded] = 1;
  v79[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_shouldHandleTextSelection] = 1;
  v103 = &v79[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_actionHandler];
  v104 = type metadata accessor for ProductReviewView();
  *v103 = 0;
  v103[1] = 0;
  v318.receiver = v79;
  v318.super_class = v104;
  v105 = objc_msgSendSuper2(&v318, "initWithFrame:", a1, a2, a3, a4);
  v106 = [v105 layer];
  [v106 setCornerRadius:20.0];

  v107 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_shadowView;
  v108 = qword_1009204B0;
  v109 = *(v105 + OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_shadowView);
  if (v108 != -1)
  {
    swift_once();
  }

  v110 = sub_10074F0C4();
  v111 = sub_10000D0FC(v110, qword_10097E1D0);
  v112 = *(v110 - 8);
  v113 = v293;
  (*(v112 + 16))(v293, v111, v110);
  (*(v112 + 56))(v113, 0, 1, v110);
  sub_100743014();

  v114 = *(v105 + v107);
  v115 = v295;
  v116 = v294;
  v117 = enum case for CornerStyle.continuous(_:);
  v118 = v296;
  v312 = *(v295 + 104);
  v312(v294);
  v119 = v114;
  sub_100743024();

  v310 = *(v115 + 8);
  v310(v116, v118);
  [v105 addSubview:*(v105 + v107)];
  v120 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_roundedCornerView;
  v121 = qword_100920870;
  v122 = *(v105 + OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_roundedCornerView);
  if (v121 != -1)
  {
    swift_once();
  }

  v123 = qword_10097F830;
  [v122 setBackgroundColor:qword_10097F830];

  v124 = *(v105 + v120);
  (v312)(v116, v117, v118);
  v125 = v124;
  sub_100746E34();

  v310(v116, v118);
  [v105 addSubview:*(v105 + v120)];
  v126 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_cardContentView;
  [*(v105 + OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_cardContentView) setBackgroundColor:v123];
  [*(v105 + v126) _setContinuousCornerRadius:20.0];
  [v105 addSubview:*(v105 + v126)];
  v127 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_focusBackgroundView;
  v128 = *(v105 + OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_focusBackgroundView);
  v129 = [v301 systemBackgroundColor];
  [v128 setBackgroundColor:v129];

  [*(v105 + v127) setAlpha:0.0];
  v130 = *(v105 + v127);
  (v312)(v116, v117, v118);
  v131 = v130;
  sub_100746E34();

  v310(v116, v118);
  [*(v105 + v126) addSubview:*(v105 + v127)];
  v132 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_titleLabel;
  v133 = *(v105 + OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_titleLabel);
  v316 = 0u;
  v317 = 0u;
  v314 = 0u;
  v315 = 0u;
  v134 = v133;
  v135 = v307;
  sub_100752A74();
  sub_10000C8CC(&v314, &unk_100923520, &qword_1007A5A70);
  sub_10000C8CC(&v316, &unk_100923520, &qword_1007A5A70);
  sub_100753C74();

  v136 = v311 + 8;
  v137 = *(v311 + 8);
  v137(v135, v313);
  [*(v105 + v126) addSubview:*(v105 + v132)];
  v138 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_dateLabel;
  v139 = *(v105 + OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_dateLabel);
  v140 = sub_10000D198();
  v141 = v139;
  v142 = sub_100753DF4();
  [v141 setTextColor:v142];

  v143 = *(v105 + v138);
  v316 = 0u;
  v317 = 0u;
  v314 = 0u;
  v315 = 0u;
  v144 = v143;
  sub_100752A74();
  sub_10000C8CC(&v314, &unk_100923520, &qword_1007A5A70);
  sub_10000C8CC(&v316, &unk_100923520, &qword_1007A5A70);
  sub_100753C74();

  v310 = v137;
  v311 = v136;
  v137(v135, v313);
  v312 = v126;
  [*(v105 + v126) addSubview:*(v105 + v138)];
  v145 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_ratingView;
  v146 = *(v105 + OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_ratingView);
  v147 = sub_100753DD4();
  v148 = *&v146[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_starColor];
  *&v146[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_starColor] = v147;
  v149 = v147;
  if ((sub_100753FC4() & 1) == 0)
  {
    sub_1004FA474();
  }

  v150 = *(v105 + v145);
  v151 = sub_100753DE4();
  v152 = sub_100753DD4();
  v153 = sub_100753DE4();
  v154.super.isa = sub_100753DD4();
  v155.super.isa = v151;
  v156.super.isa = v152;
  v157.super.isa = v153;
  v158.super.isa = sub_100753F14(v155, v156, v157, v154).super.isa;
  isa = v158.super.isa;
  v160 = *&v150[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_emptyStarColor];
  *&v150[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_emptyStarColor] = v158;
  if (v160)
  {
    v161 = v158.super.isa;
    v162 = v160;
    v163 = sub_100753FC4();

    if (v163)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v164 = v158.super.isa;
    v162 = 0;
  }

  sub_1004FA474();
  v161 = isa;
LABEL_28:

  v165 = *(v105 + v145);
  v166 = [v105 traitCollection];

  v167 = [v166 accessibilityContrast];
  v168 = v167 == 0;
  v169 = v165[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_fillEmptyStars];
  v165[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_fillEmptyStars] = v168;
  if ((v168 ^ v169))
  {
    v170 = *&v165[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_emptyStarRowView];
    if (v170)
    {
      v171 = *(v170 + OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_filled);
      *(v170 + OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_filled) = v168;
      if (((v167 == 0) ^ v171))
      {
        sub_1004FBA08();
      }
    }
  }

  v309 = v140;

  v172 = qword_100920878;
  v173 = *(v105 + v145);
  if (v172 != -1)
  {
    swift_once();
  }

  [v173 setMaximumContentSizeCategory:qword_10097F838];

  v174 = *(v105 + v145);
  v316 = 0u;
  v317 = 0u;
  v314 = 0u;
  v315 = 0u;
  v175 = v174;
  v176 = v307;
  sub_100752A74();
  sub_10000C8CC(&v314, &unk_100923520, &qword_1007A5A70);
  sub_10000C8CC(&v316, &unk_100923520, &qword_1007A5A70);
  sub_100753C74();

  v177 = v313;
  v310(v176, v313);
  v178 = v312;
  [*(v312 + v105) addSubview:*(v105 + v145)];
  v179 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_dateAuthorLabel;
  v180 = *(v105 + OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_dateAuthorLabel);
  v181 = sub_100753DF4();
  [v180 setTextColor:v181];

  v182 = *(v105 + v179);
  v316 = 0u;
  v317 = 0u;
  v314 = 0u;
  v315 = 0u;
  v183 = v182;
  sub_100752A74();
  sub_10000C8CC(&v314, &unk_100923520, &qword_1007A5A70);
  sub_10000C8CC(&v316, &unk_100923520, &qword_1007A5A70);
  sub_100753C74();

  v184 = v310;
  v310(v176, v177);
  [*(v178 + v105) addSubview:*(v105 + v179)];
  v185 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_authorLabel;
  v186 = *(v105 + OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_authorLabel);
  v187 = sub_100753DF4();
  [v186 setTextColor:v187];

  v188 = *(v105 + v185);
  v316 = 0u;
  v317 = 0u;
  v314 = 0u;
  v315 = 0u;
  v189 = v188;
  sub_100752A74();
  sub_10000C8CC(&v314, &unk_100923520, &qword_1007A5A70);
  sub_10000C8CC(&v316, &unk_100923520, &qword_1007A5A70);
  sub_100753C74();

  v184(v176, v313);
  [*(v178 + v105) addSubview:*(v105 + v185)];
  v190 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_bodyLabel;
  v191 = *(v105 + OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_bodyLabel);
  v192 = sub_100753DF4();
  [*&v191[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_textLabel] setTextColor:v192];

  v193 = *(v105 + v190);
  if (*(v105 + OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_hasResponse))
  {
    v194 = 2;
  }

  else
  {
    v194 = 6;
  }

  v195 = OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_collapsedNumberOfLines;
  v196 = *&v193[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_collapsedNumberOfLines];
  *&v193[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_collapsedNumberOfLines] = v194;
  v197 = OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed;
  if (v193[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed])
  {
    v198 = *&v193[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_textLabel];
    v199 = v193;
    [v198 setNumberOfLines:v194];
    if (*&v193[v195] == v196)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v200 = v193;
    if (v194 == v196)
    {
      goto LABEL_43;
    }
  }

  if (v193[v197])
  {
    sub_100260550();
  }

LABEL_43:

  v201 = *(v105 + v190);
  v202 = *(v105 + OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_isReviewExpanded);
  v203 = OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed;
  v204 = v201[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed];
  v201[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed] = v202 ^ 1;
  if (v202)
  {
    v205 = 0;
  }

  else
  {
    v205 = *&v201[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_collapsedNumberOfLines];
  }

  v206 = *&v201[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_textLabel];
  v207 = v201;
  [v206 setNumberOfLines:v205];
  if (v204 != v201[v203])
  {
    sub_100260550();
  }

  [*(*(v105 + v190) + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_textLabel) setLineBreakMode:4];
  [*(*(v105 + v190) + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_textLabel) setTextAlignment:4];
  v208 = *(v105 + v190);
  v208[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_hasMoreButton] = 0;
  v209 = v208;
  sub_100260550();

  [*(v105 + v190) setUserInteractionEnabled:1];
  v210 = *(v105 + v190);
  v316 = 0u;
  v317 = 0u;
  v314 = 0u;
  v315 = 0u;
  v211 = v210;
  v212 = v307;
  sub_100752A74();
  sub_10000C8CC(&v314, &unk_100923520, &qword_1007A5A70);
  sub_10000C8CC(&v316, &unk_100923520, &qword_1007A5A70);
  sub_100753C74();

  v310(v212, v313);
  v213 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_moreReviewTapGestureRecognizer;
  v214 = *(v105 + OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_moreReviewTapGestureRecognizer);
  v215 = v105;
  [v214 addTarget:v215 action:"moreReviewFrom:"];
  [*(v105 + v213) setDelegate:v215];
  v216 = *(v105 + v190);
  v306 = v213;
  [v216 addGestureRecognizer:*(v105 + v213)];
  v217 = *(v105 + v190);
  v218 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v219 = &v217[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreTapHandler];
  v220 = v190;
  v221 = *&v217[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreTapHandler];
  v222 = *&v217[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreTapHandler + 8];
  *v219 = sub_1002F99F0;
  v219[1] = v218;
  swift_retain_n();
  v223 = v217;
  sub_1000164A8(v221, v222);
  v224 = *&v223[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreButton];

  [v224 setUserInteractionEnabled:1];

  v225 = *(v312 + v105);
  v308 = v220;
  [v225 addSubview:*&v220[v105]];
  v226 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_responseTitleLabel;
  v227 = *&v215[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_responseTitleLabel];
  v320._object = 0x80000001007766B0;
  v320._countAndFlagsBits = 0xD000000000000012;
  v321._countAndFlagsBits = 0;
  v321._object = 0xE000000000000000;
  sub_1007458B4(v320, v321);
  v228 = sub_100753064();

  [v227 setText:v228];

  [*&v215[v226] setHidden:1];
  v229 = *&v215[v226];
  v316 = 0u;
  v317 = 0u;
  v314 = 0u;
  v315 = 0u;
  v230 = v229;
  sub_100752A74();
  sub_10000C8CC(&v314, &unk_100923520, &qword_1007A5A70);
  sub_10000C8CC(&v316, &unk_100923520, &qword_1007A5A70);
  sub_100753C74();

  v231 = v313;
  v232 = v310;
  v310(v212, v313);
  [*(v312 + v105) addSubview:*&v215[v226]];
  v233 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_responseDateLabel;
  v234 = *&v215[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_responseDateLabel];
  v235 = sub_100753DF4();
  [v234 setTextColor:v235];

  [*&v215[v233] setHidden:1];
  v236 = *&v215[v233];
  v316 = 0u;
  v317 = 0u;
  v314 = 0u;
  v315 = 0u;
  v237 = v236;
  sub_100752A74();
  sub_10000C8CC(&v314, &unk_100923520, &qword_1007A5A70);
  sub_10000C8CC(&v316, &unk_100923520, &qword_1007A5A70);
  sub_100753C74();

  v232(v212, v231);
  [*(v312 + v105) addSubview:*&v215[v233]];
  v238 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_responseBodyLabel;
  v239 = *&v215[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_responseBodyLabel];
  v240 = OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_collapsedNumberOfLines;
  v241 = *&v239[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_collapsedNumberOfLines];
  *&v239[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_collapsedNumberOfLines] = 2;
  v242 = OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed;
  if (v239[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed] == 1)
  {
    v243 = *&v239[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_textLabel];
    v244 = v239;
    [v243 setNumberOfLines:2];
    if (*&v239[v240] == v241)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v245 = v239;
    if (v241 == 2)
    {
      goto LABEL_54;
    }
  }

  if (v239[v242])
  {
    sub_100260550();
  }

LABEL_54:

  v246 = *&v215[v238];
  v247 = v215[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_isResponseExpanded];
  v248 = OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed;
  v249 = v246[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed];
  v246[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed] = v247 ^ 1;
  if (v247)
  {
    v250 = 0;
  }

  else
  {
    v250 = *&v246[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_collapsedNumberOfLines];
  }

  v251 = *&v246[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_textLabel];
  v252 = v246;
  [v251 setNumberOfLines:v250];
  if (v249 != v246[v248])
  {
    sub_100260550();
  }

  [*(*&v215[v238] + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_textLabel) setLineBreakMode:4];
  v253 = *&v215[v238];
  v253[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_hasMoreButton] = 0;
  v254 = v253;
  sub_100260550();

  v255 = *&v215[v238];
  v256 = sub_100753DF4();
  [*&v255[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_textLabel] setTextColor:v256];

  [*&v215[v238] setUserInteractionEnabled:1];
  [*&v215[v238] setHidden:1];
  v257 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_moreResponseTapGestureRecognizer;
  v258 = *&v215[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_moreResponseTapGestureRecognizer];
  v259 = v215;
  [v258 addTarget:v259 action:"moreResponseFrom:"];
  v260 = *&v215[v257];
  [v260 setDelegate:v259];

  [*&v215[v238] addGestureRecognizer:*&v215[v257]];
  v261 = *&v215[v238];
  v316 = 0u;
  v317 = 0u;
  v314 = 0u;
  v315 = 0u;
  v262 = v261;
  v263 = v307;
  sub_100752A74();
  sub_10000C8CC(&v314, &unk_100923520, &qword_1007A5A70);
  sub_10000C8CC(&v316, &unk_100923520, &qword_1007A5A70);
  sub_100753C74();

  v310(v263, v313);
  v264 = *&v215[v238];
  v265 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v266 = &v264[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreTapHandler];
  v267 = *&v264[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreTapHandler];
  v268 = *&v264[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreTapHandler + 8];
  *v266 = sub_1002F9A14;
  v266[1] = v265;
  swift_retain_n();
  v269 = v264;
  sub_1000164A8(v267, v268);
  v270 = *&v269[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreButton];

  [v270 setUserInteractionEnabled:1];

  [*(v312 + v105) addSubview:*&v215[v238]];
  v271 = [objc_allocWithZone(UILongPressGestureRecognizer) initWithTarget:v259 action:"stateChangedFor:"];

  [v259 addGestureRecognizer:v271];
  [*&v215[v257] setCancelsTouchesInView:0];
  [*(v105 + v306) setCancelsTouchesInView:0];
  v272 = *&v215[v238];
  v273 = &v272[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreTapHandler];
  v274 = *&v272[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreTapHandler];
  v275 = *&v272[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreTapHandler + 8];
  *v273 = 0;
  *(v273 + 1) = 0;
  v276 = v272;
  [*&v276[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreButton] setUserInteractionEnabled:{0, sub_1000164A8(v274, v275)}];

  v277 = *&v308[v105];
  v278 = &v277[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreTapHandler];
  v279 = *&v277[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreTapHandler];
  v280 = *&v277[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreTapHandler + 8];
  *v278 = 0;
  *(v278 + 1) = 0;
  v281 = v277;
  [*&v281[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreButton] setUserInteractionEnabled:{0, sub_1000164A8(v279, v280)}];

  sub_1002F78F4();
  sub_10000C518(&unk_1009249D0, qword_1007A7B10);
  v282 = swift_allocObject();
  *(v282 + 16) = xmmword_1007A6580;
  *(v282 + 32) = sub_1007519E4();
  *(v282 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(v282 + 48) = sub_1007517B4();
  *(v282 + 56) = &protocol witness table for UITraitAccessibilityContrast;
  sub_100753D44();

  swift_unknownObjectRelease();

  return v259;
}

void sub_1002F76F0(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = Strong + *a2;
    v6 = *v5;
    if (*v5)
    {
      v7 = *(v5 + 8);

      v6(v8);
      sub_1000164A8(v6, v7);
    }
  }
}

void sub_1002F77C8()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_isFlowPreviewingDestination;
  if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_isFlowPreviewingDestination))
  {
    v2 = 0.0;
  }

  else
  {
    v2 = 1.0;
  }

  [*(v0 + OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_shadowView) setAlpha:v2];
  if (*(v0 + v1))
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  [*(v0 + OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_roundedCornerView) setAlpha:v3];
  v4 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_cardContentView);
  if (*(v0 + v1) == 1)
  {
    v5 = [objc_opt_self() clearColor];
  }

  else
  {
    if (qword_100920870 != -1)
    {
      swift_once();
    }

    v5 = qword_10097F830;
  }

  v6 = v5;
  [v4 setBackgroundColor:?];
}

void sub_1002F78F4()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_100753804();

  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_dateLabel] setHidden:(v3 & 1) == 0];
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_authorLabel] setHidden:(v3 & 1) == 0];
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_dateAuthorLabel] setHidden:v3 & 1];
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_ratingView];
  if (qword_100920880 != -1)
  {
    swift_once();
  }

  v5 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  sub_10000D0FC(v5, qword_10097F840);
  v15 = v1;
  v6 = v1;
  sub_100743464();

  v7 = v4 + OBJC_IVAR____TtC22SubscribePageExtension10RatingView_starPadding;
  *v7 = v16;
  *(v7 + 8) = 0;
  sub_1004FA614(v16, 0);
  v8 = OBJC_IVAR____TtC22SubscribePageExtension10RatingView_emptyStarRowView;
  if (*(v4 + OBJC_IVAR____TtC22SubscribePageExtension10RatingView_emptyStarRowView))
  {
    sub_1004FA614(*v7, *(v7 + 8));
  }

  v9 = [v6 traitCollection];
  v10 = [v9 accessibilityContrast];

  v11 = v10 == 0;
  v12 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension10RatingView_fillEmptyStars);
  *(v4 + OBJC_IVAR____TtC22SubscribePageExtension10RatingView_fillEmptyStars) = v11;
  if (v11 != v12)
  {
    v13 = *(v4 + v8);
    if (v13)
    {
      v14 = *(v13 + OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_filled);
      *(v13 + OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_filled) = v11;
      if (((v10 == 0) ^ v14))
      {
        sub_1004FBA08();
      }
    }
  }
}

id sub_1002F7AF4(uint64_t a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for ProductReviewView();
  objc_msgSendSuper2(&v7, "layoutSubviews");
  sub_1002F7C1C();
  v2 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_shadowView];
  [v1 bounds];
  [v2 setFrame:?];
  v3 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_roundedCornerView];
  [v1 bounds];
  [v3 setFrame:?];
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_focusBackgroundView];
  [v1 bounds];
  [v4 setFrame:?];
  v5 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_cardContentView];
  [v1 bounds];
  return [v5 setFrame:?];
}

uint64_t sub_1002F7C1C()
{
  v1 = v0;
  v2 = sub_10000C518(&unk_100938110, &unk_1007B9190);
  v39 = *(v2 - 8);
  v40 = v2;
  __chkstk_darwin(v2);
  v38 = v35 - v3;
  v4 = sub_10074B5F4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v35 - v9;
  v11 = sub_10074B614();
  v36 = *(v11 - 8);
  v37 = v11;
  __chkstk_darwin(v11);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v1[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_isFlowPreviewingDestination];
  if (qword_100920868 != -1)
  {
    swift_once();
  }

  v15 = sub_10000D0FC(v4, qword_10097F818);
  (*(v5 + 16))(v7, v15, v4);
  if (v14)
  {
    v60 = &type metadata for Double;
    v61 = &protocol witness table for Double;
    v59 = 0;
    sub_10074B5E4();
    v60 = &type metadata for Double;
    v61 = &protocol witness table for Double;
    v59 = 0x4018000000000000;
    sub_10074B5C4();
  }

  (*(v5 + 32))(v10, v7, v4);
  v16 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_titleLabel];
  v17 = sub_100745C84();
  v60 = v17;
  v61 = &protocol witness table for UILabel;
  v58 = &protocol witness table for UILabel;
  v59 = v16;
  v18 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_dateLabel];
  v57 = v17;
  v55 = &protocol witness table for UILabel;
  v56 = v18;
  v35[1] = v10;
  v19 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_authorLabel];
  v54 = v17;
  v53 = v19;
  v20 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_dateAuthorLabel];
  v51 = v17;
  v52 = &protocol witness table for UILabel;
  v49 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_bodyLabel];
  v50 = v20;
  type metadata accessor for ExpandableTextView();
  v21 = v16;
  v22 = v18;
  v23 = v19;
  v24 = v20;
  sub_100750434();
  v25 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_responseTitleLabel];
  v47 = v17;
  v48 = &protocol witness table for UILabel;
  v45 = &protocol witness table for UILabel;
  v46 = v25;
  v26 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_responseDateLabel];
  v44 = v17;
  v42 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_responseBodyLabel];
  v43 = v26;
  v27 = v25;
  v28 = v26;
  sub_100750434();
  v41 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_ratingView];
  type metadata accessor for RatingView();
  sub_100750434();
  sub_10074B604();
  [v1 bounds];
  v29 = [v1 traitCollection];
  sub_1002F8C3C(v30);
  v32 = v37;
  v31 = v38;
  sub_100750594();
  swift_getOpaqueTypeConformance2();
  v33 = v40;
  sub_100751244();

  (*(v39 + 8))(v31, v33);
  return (*(v36 + 8))(v13, v32);
}

id sub_1002F8110(id result)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_hasResponse;
  v3 = v1[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_hasResponse];
  if (v3 != (result & 1))
  {
    [*&v1[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_responseDateLabel] setHidden:v3 ^ 1u];
    [*&v1[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_responseTitleLabel] setHidden:(v1[v2] & 1) == 0];
    [*&v1[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_responseBodyLabel] setHidden:(v1[v2] & 1) == 0];
    v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_bodyLabel];
    if (v1[v2])
    {
      v5 = 2;
    }

    else
    {
      v5 = 6;
    }

    v6 = OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_collapsedNumberOfLines;
    v7 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_collapsedNumberOfLines);
    *(v4 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_collapsedNumberOfLines) = v5;
    v8 = OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed;
    if (*(v4 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed) == 1)
    {
      [*(v4 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_textLabel) setNumberOfLines:?];
      v5 = *(v4 + v6);
    }

    if (v5 != v7 && (*(v4 + v8) & 1) != 0)
    {
      sub_100260550();
    }

    return [v1 setNeedsLayout];
  }

  return result;
}

id sub_1002F8264()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_titleLabel);
  v3 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_isReviewExpanded;
  [v2 setNumberOfLines:(*(v1 + OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_isReviewExpanded) & 1) == 0];
  if (*(v1 + v3))
  {
    v4 = 0;
  }

  else
  {
    v4 = 4;
  }

  [v2 setLineBreakMode:v4];
  v5 = 0;
  v6 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_bodyLabel);
  v7 = *(v1 + v3);
  v8 = OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed;
  v9 = *(v6 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed);
  *(v6 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed) = v7 ^ 1;
  if ((v7 & 1) == 0)
  {
    v5 = *(v6 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_collapsedNumberOfLines);
  }

  result = [*(v6 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_textLabel) setNumberOfLines:v5];
  if (v9 != *(v6 + v8))
  {
    return sub_100260550();
  }

  return result;
}

id sub_1002F8340()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_responseTitleLabel);
  v3 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_isReviewExpanded;
  [v2 setNumberOfLines:(*(v1 + OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_isReviewExpanded) & 1) == 0];
  if (*(v1 + v3))
  {
    v4 = 0;
  }

  else
  {
    v4 = 4;
  }

  [v2 setLineBreakMode:v4];
  v5 = 0;
  v6 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_responseBodyLabel);
  v7 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_isResponseExpanded);
  v8 = OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed;
  v9 = *(v6 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed);
  *(v6 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed) = v7 ^ 1;
  if ((v7 & 1) == 0)
  {
    v5 = *(v6 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_collapsedNumberOfLines);
  }

  result = [*(v6 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_textLabel) setNumberOfLines:v5];
  if (v9 != *(v6 + v8))
  {
    return sub_100260550();
  }

  return result;
}

id sub_1002F8500(uint64_t a1)
{
  [*(a1 + OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_shadowView) setAlpha:0.0];
  v2 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_roundedCornerView);

  return [v2 setAlpha:0.0];
}

id sub_1002F857C(uint64_t a1)
{
  [*(a1 + OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_shadowView) setAlpha:1.0];
  [*(a1 + OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_roundedCornerView) setAlpha:1.0];
  v2 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_focusBackgroundView);

  return [v2 setAlpha:0.0];
}

uint64_t sub_1002F860C(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_100754314();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    v7 = a1;
  }

  v8 = &a1[*a4];
  v9 = *v8;
  if (*v8)
  {
    v10 = *(v8 + 1);

    v9(v11);
    sub_1000164A8(v9, v10);
  }

  return sub_10000C8CC(v13, &unk_100923520, &qword_1007A5A70);
}

id sub_1002F8740(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ProductReviewView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1002F88F0()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v5[4] = sub_1002F8BDC;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_1000CF7B0;
  v5[3] = &unk_100870CC8;
  v3 = _Block_copy(v5);
  v4 = v0;

  [v1 animateWithDuration:v3 animations:0.5];
  _Block_release(v3);
}

void sub_1002F8A28(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v6;
    v13[4] = a5;
    v13[5] = v10;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_1000CF7B0;
    v13[3] = a6;
    v11 = _Block_copy(v13);
    v12 = v6;

    [a1 addAnimations:v11];
    _Block_release(v11);
  }
}

uint64_t sub_1002F8AF4()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1002F8B2C()
{
  v1 = *(v0 + 16);
  [*(v1 + OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_shadowView) setAlpha:1.0];
  [*(v1 + OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_roundedCornerView) setAlpha:1.0];
  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_focusBackgroundView);

  return [v2 setAlpha:0.0];
}

double sub_1002F8BA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_1002F8BDC()
{
  v1 = *(v0 + 16);
  [*(v1 + OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_shadowView) setAlpha:0.0];
  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_roundedCornerView);

  return [v2 setAlpha:0.0];
}

unint64_t sub_1002F8C3C(__n128 a1)
{
  result = qword_100931BD0;
  if (!qword_100931BD0)
  {
    sub_10074B614();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100931BD0);
  }

  return result;
}

void sub_1002F8CB8()
{
  v0 = sub_100750534();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v91 = &v79 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10074AB44();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v7 - 8);
  v90 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v79 - v10;
  v12 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_titleLabel;
  if (qword_100921108 != -1)
  {
    swift_once();
  }

  v13 = sub_10000D0FC(v0, qword_100981050);
  v96 = *(v1 + 16);
  v97 = v1 + 16;
  v96(v11, v13, v0);
  v92 = v1;
  v14 = *(v1 + 56);
  v99 = v1 + 56;
  v14(v11, 0, 1, v0);
  v15 = *(v4 + 104);
  v95 = enum case for DirectionalTextAlignment.none(_:);
  v88 = v4 + 104;
  v89 = v3;
  v94 = v15;
  (v15)(v6);
  v93 = sub_100745C84();
  v16 = objc_allocWithZone(v93);
  *(v98 + v12) = sub_100745C74();
  v17 = type metadata accessor for RatingView();
  v18 = objc_allocWithZone(v17);
  *&v18[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_rating] = 0;
  *&v18[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_emptyStarColor] = 0;
  v19 = &v18[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_starPadding];
  *v19 = 0;
  v19[8] = 1;
  *&v18[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_maxNumberOfStars] = 5;
  if (qword_100921700 != -1)
  {
    swift_once();
  }

  v20 = qword_10093B668;
  *&v18[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_starColor] = qword_10093B668;
  v18[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_starSize] = 1;
  *v19 = 0x4008000000000000;
  v19[8] = 0;
  v18[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_useCase] = 1;
  v21 = type metadata accessor for StarRow();
  v22 = objc_allocWithZone(v21);
  v23 = v20;
  *&v18[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_filledStarRowView] = sub_1004FC838(5, 1, 1, 0x4008000000000000, 0, 0, 1);
  v18[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_fillEmptyStars] = 0;
  v24 = objc_allocWithZone(v21);
  *&v18[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_emptyStarRowView] = sub_1004FC838(5, 0, 1, 0x4008000000000000, 0, 0, 1);
  v100.receiver = v18;
  v100.super_class = v17;
  v25 = objc_msgSendSuper2(&v100, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1004FA474();
  v26 = OBJC_IVAR____TtC22SubscribePageExtension10RatingView_filledStarRowView;
  v27 = *&v25[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_filledStarRowView];
  v28 = *&v27[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_currentRating];
  *&v27[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_currentRating] = *&v25[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_rating];
  v29 = v27;
  sub_1004FAF60(v28);

  if (*&v25[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_emptyStarRowView])
  {
    [v25 addSubview:?];
  }

  v30 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_ratingView;
  [v25 addSubview:*&v25[v26]];

  *(v98 + v30) = v25;
  v31 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_dateLabel;
  v32 = v96;
  if (qword_100921120 != -1)
  {
    swift_once();
  }

  v84 = sub_10000D0FC(v0, qword_100981098);
  v32(v11);
  v14(v11, 0, 1, v0);
  v33 = v89;
  v94(v6, v95, v89);
  v34 = objc_allocWithZone(v93);
  *(v98 + v31) = sub_100745C74();
  v35 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_authorLabel;
  if (qword_100921128 != -1)
  {
    swift_once();
  }

  v36 = sub_10000D0FC(v0, qword_1009810B0);
  (v32)(v11, v36, v0);
  v14(v11, 0, 1, v0);
  v94(v6, v95, v33);
  v37 = objc_allocWithZone(v93);
  *(v98 + v35) = sub_100745C74();
  v38 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_dateAuthorLabel;
  if (qword_100921130 != -1)
  {
    swift_once();
  }

  v39 = sub_10000D0FC(v0, qword_1009810C8);
  (v32)(v11, v39, v0);
  v14(v11, 0, 1, v0);
  v94(v6, v95, v33);
  v40 = objc_allocWithZone(v93);
  *(v98 + v38) = sub_100745C74();
  v79 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_bodyLabel;
  if (qword_100921118 != -1)
  {
    swift_once();
  }

  v85 = v6;
  v41 = sub_10000D0FC(v0, qword_100981080);
  v42 = v91;
  v83 = v41;
  v32(v91);
  v82 = objc_opt_self();
  v43 = [v82 clearColor];
  v81 = type metadata accessor for ExpandableTextView();
  v44 = objc_allocWithZone(v81);
  v45 = v43;
  v46 = sub_10025F574(v45, 0.0, 0.0, 0.0, 0.0);
  (v32)(v11, v42, v0);
  v87 = v14;
  v14(v11, 0, 1, v0);
  sub_10006A0D4(v11, v90);
  v47 = v46;
  sub_100745BA4();

  sub_10000C8CC(v11, &unk_100928A40, qword_1007A6630);
  v48 = *(v92 + 8);
  v92 += 8;
  v80 = v48;
  v48(v42, v0);

  v49 = v98;
  *(v98 + v79) = v47;
  v79 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_responseTitleLabel;
  if (qword_100921110 != -1)
  {
    swift_once();
  }

  v50 = sub_10000D0FC(v0, qword_100981068);
  v96(v11, v50, v0);
  v51 = v87;
  v87(v11, 0, 1, v0);
  v52 = v85;
  v86 = v0;
  v53 = v95;
  v54 = v89;
  v55 = v94;
  v94(v85, v95, v89);
  v56 = v93;
  v57 = objc_allocWithZone(v93);
  *(v49 + v79) = sub_100745C74();
  v79 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_responseDateLabel;
  v58 = v86;
  v96(v11, v84, v86);
  v51(v11, 0, 1, v58);
  v55(v52, v53, v54);
  v59 = objc_allocWithZone(v56);
  *(v49 + v79) = sub_100745C74();
  v60 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_responseBodyLabel;
  v61 = v91;
  v62 = v86;
  v63 = v96;
  v96(v91, v83, v86);
  v64 = [v82 clearColor];
  v65 = objc_allocWithZone(v81);
  v66 = v64;
  v67 = sub_10025F574(v66, 0.0, 0.0, 0.0, 0.0);
  v63(v11, v61, v62);
  v87(v11, 0, 1, v62);
  sub_10006A0D4(v11, v90);
  v68 = v67;
  sub_100745BA4();

  sub_10000C8CC(v11, &unk_100928A40, qword_1007A6630);
  v80(v61, v62);

  *(v49 + v60) = v68;
  v69 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_shadowView;
  sub_100743034();
  *(v49 + v69) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v70 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_roundedCornerView;
  sub_100746ED4();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v49 + v70) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v72 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_focusBackgroundView;
  *(v49 + v72) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v73 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_cardContentView;
  *(v49 + v73) = [objc_allocWithZone(UIView) init];
  v74 = (v49 + OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_moreReviewTapHandler);
  *v74 = 0;
  v74[1] = 0;
  v75 = (v49 + OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_moreResponseTapHandler);
  *v75 = 0;
  v75[1] = 0;
  v76 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_moreReviewTapGestureRecognizer;
  *(v49 + v76) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v77 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_moreResponseTapGestureRecognizer;
  *(v49 + v77) = [objc_allocWithZone(UITapGestureRecognizer) init];
  *(v49 + OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_isFlowPreviewingDestination) = 0;
  *(v49 + OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_hasResponse) = 0;
  *(v49 + OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_isReviewExpanded) = 1;
  *(v49 + OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_isResponseExpanded) = 1;
  *(v49 + OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_shouldHandleTextSelection) = 1;
  v78 = (v49 + OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_actionHandler);
  *v78 = 0;
  v78[1] = 0;
  sub_100754644();
  __break(1u);
}