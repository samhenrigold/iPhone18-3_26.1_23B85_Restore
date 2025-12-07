unint64_t sub_10007507C()
{
  result = qword_100924AC8;
  if (!qword_100924AC8)
  {
    sub_10000C724(&qword_100924AC0, &qword_1007A8528);
    sub_100075108();
    sub_100075160();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100924AC8);
  }

  return result;
}

unint64_t sub_100075108()
{
  result = qword_100924AD0;
  if (!qword_100924AD0)
  {
    sub_10074CE04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100924AD0);
  }

  return result;
}

unint64_t sub_100075160()
{
  result = qword_100924AD8;
  if (!qword_100924AD8)
  {
    sub_10000C724(&unk_100933360, &qword_1007A8530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100924AD8);
  }

  return result;
}

id sub_1000751CC(unint64_t a1, char a2, char *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = sub_10074BCC4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + OBJC_IVAR____TtC22SubscribePageExtension20SearchTagsRibbonView_shouldEvenlyDistribute) = a2;
  v12 = _swiftEmptyArrayStorage;
  *&v42 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_49;
  }

  v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v37)
  {
    while (1)
    {
      v29[1] = a3;
      v30 = v4;
      v13 = 0;
      v38 = a1;
      v40 = a1 & 0xFFFFFFFFFFFFFF8;
      v41 = a1 & 0xC000000000000001;
      v4 = (v9 + 88);
      a1 = enum case for MetadataRibbonItemViewType.borderedTextLabel(_:);
      v14 = enum case for MetadataRibbonItemViewType.editorsChoice(_:);
      v15 = enum case for MetadataRibbonItemViewType.imageWithLabel(_:);
      LODWORD(v39) = enum case for MetadataRibbonItemViewType.starRating(_:);
      v35 = enum case for MetadataRibbonItemViewType.divider(_:);
      v36 = enum case for MetadataRibbonItemViewType.textLabel(_:);
      v31 = (v9 + 8);
      v32 = v11;
      v34 = enum case for MetadataRibbonItemViewType.highlightedText(_:);
      while (v41)
      {
        v9 = sub_100754574();
        a3 = (v13 + 1);
        if (__OFADD__(v13, 1))
        {
LABEL_31:
          __break(1u);
LABEL_32:
          v4 = v30;
          *(v30 + OBJC_IVAR____TtC22SubscribePageExtension20SearchTagsRibbonView_metadataRibbonItemModels) = v42;

          v11 = 0;
          v8 = 0;
          v12 = _swiftEmptyArrayStorage;
          v23 = v38;
          while (1)
          {
            if (v41)
            {
              v24 = sub_100754574();
              a3 = (v11 + 1);
              if (__OFADD__(v11, 1))
              {
                goto LABEL_47;
              }
            }

            else
            {
              if (v11 >= *(v40 + 16))
              {
                goto LABEL_48;
              }

              v24 = *(v23 + 8 * v11 + 32);

              a3 = (v11 + 1);
              if (__OFADD__(v11, 1))
              {
                goto LABEL_47;
              }
            }

            v43 = v24;
            sub_1000764B0(&v43, v4, &v42);

            if (v42)
            {
              v39 = v42;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v12 = sub_100254D50(0, *(v12 + 2) + 1, 1, v12);
              }

              a1 = *(v12 + 2);
              v25 = *(v12 + 3);
              v26 = v39;
              if (a1 >= v25 >> 1)
              {
                v27 = sub_100254D50((v25 > 1), a1 + 1, 1, v12);
                v26 = v39;
                v12 = v27;
              }

              *(v12 + 2) = a1 + 1;
              *(v12 + a1 + 2) = v26;
            }

            ++v11;
            if (a3 == v9)
            {
              goto LABEL_51;
            }
          }
        }

LABEL_8:
        v12 = v9;
        sub_1007478B4();
        v16 = (*v4)(v11, v8);
        if (v16 == a1 || v16 == v14 || v16 == v15 || v16 == v39 || v16 == v36 || v16 == v35 || v16 == v34)
        {
          v12 = &v42;
          sub_1007545A4();
          sub_1007545D4();
          v11 = v32;
          sub_1007545E4();
          sub_1007545B4();
        }

        else
        {

          (*v31)(v11, v8);
        }

        ++v13;
        v9 = v37;
        if (a3 == v37)
        {
          goto LABEL_32;
        }
      }

      if (v13 < *(v40 + 16))
      {
        break;
      }

      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      v37 = sub_100754664();
      if (!v37)
      {
        goto LABEL_50;
      }
    }

    v9 = *(v38 + 8 * v13 + 32);

    a3 = (v13 + 1);
    if (__OFADD__(v13, 1))
    {
      goto LABEL_31;
    }

    goto LABEL_8;
  }

LABEL_50:
  *(v4 + OBJC_IVAR____TtC22SubscribePageExtension20SearchTagsRibbonView_metadataRibbonItemModels) = v12;

LABEL_51:
  sub_10007585C(v12);
  return [v4 setNeedsLayout];
}

id sub_100075628(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension20SearchTagsRibbonView_metadataRibbonItemViews] = _swiftEmptyArrayStorage;
  sub_10074BD94();
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension20SearchTagsRibbonView_metadataRibbonItemModels] = 0;
  v4[OBJC_IVAR____TtC22SubscribePageExtension20SearchTagsRibbonView_shouldEvenlyDistribute] = 2;
  v4[OBJC_IVAR____TtC22SubscribePageExtension20SearchTagsRibbonView_isInsideSearchAd] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension20SearchTagsRibbonView_impressionsCalculator] = 0;
  v10 = &v4[OBJC_IVAR____TtC22SubscribePageExtension20SearchTagsRibbonView_impressionsUpdateBlock];
  *v10 = 0;
  v10[1] = 0;
  v18.receiver = v4;
  v18.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v15 = v11;
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  if (qword_100920118 != -1)
  {
    swift_once();
  }

  [v15 setMaximumContentSizeCategory:qword_100924AE0];
  sub_10000C518(&unk_1009249D0, qword_1007A7B10);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1007A5A00;
  *(v16 + 32) = sub_100751554();
  *(v16 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_100753D44();

  swift_unknownObjectRelease();

  return v15;
}

id sub_10007585C(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC22SubscribePageExtension20SearchTagsRibbonView_metadataRibbonItemViews;
  v5 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension20SearchTagsRibbonView_metadataRibbonItemViews];
  v6 = *(v5 + 16);
  if (v6)
  {

    v7 = 32;
    do
    {
      [*(v5 + v7) removeFromSuperview];
      v7 += 16;
      --v6;
    }

    while (v6);
  }

  *&v2[v4] = a1;

  sub_10074BD84();
  result = sub_10018A9E8();
  v12 = (v11 >> 1) - v10;
  if (v11 >> 1 != v10)
  {
    if ((v11 >> 1) <= v10)
    {
      __break(1u);
      return result;
    }

    v13 = (v9 + 16 * v10);
    do
    {
      v14 = *v13;
      v13 += 2;
      [v2 addSubview:v14];
      --v12;
    }

    while (v12);
  }

  swift_unknownObjectRelease();

  return [v2 setNeedsLayout];
}

uint64_t sub_10007596C()
{
  ObjectType = swift_getObjectType();
  v2 = sub_100750354();
  v46 = *(v2 - 8);
  v47 = v2;
  __chkstk_darwin(v2);
  v44 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10074BDA4();
  v40 = *(v4 - 8);
  v41 = v4;
  __chkstk_darwin(v4);
  v39 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&qword_100924B38, qword_1007A86A0);
  __chkstk_darwin(v6 - 8);
  v51 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v38 - v9;
  v54 = sub_10000C518(&qword_100924B28, &unk_1007A8680);
  v11 = *(v54 - 8);
  __chkstk_darwin(v54);
  v53 = &v38 - v12;
  v13 = sub_10074BDB4();
  v42 = *(v13 - 8);
  v43 = v13;
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v38 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56.receiver = v0;
  v56.super_class = ObjectType;
  v45 = ObjectType;
  objc_msgSendSuper2(&v56, "layoutSubviews", v14);
  v48 = v0;
  v16 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension20SearchTagsRibbonView_metadataRibbonItemViews];
  v17 = *(v16 + 16);

  v52 = v17;
  if (v17)
  {
    v19 = 0;
    v49 = v11;
    v50 = (v11 + 48);
    v20 = v16 + 40;
    v55 = _swiftEmptyArrayStorage;
    v21 = qword_1007A86A0;
    while (v19 < *(v16 + 16))
    {
      v22 = *(v20 - 8);
      swift_getObjectType();
      v23 = v22;
      v24 = v21;
      v25 = v51;
      sub_100749D84();
      v26 = v25;
      v21 = v24;
      sub_100066578(v26, v10, &qword_100924B38, v24);

      if ((*v50)(v10, 1, v54) == 1)
      {
        result = sub_10000C8CC(v10, &qword_100924B38, v24);
      }

      else
      {
        sub_100066578(v10, v53, &qword_100924B28, &unk_1007A8680);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = sub_100254A34(0, v55[2] + 1, 1, v55);
        }

        v28 = v55[2];
        v27 = v55[3];
        if (v28 >= v27 >> 1)
        {
          v55 = sub_100254A34((v27 > 1), v28 + 1, 1, v55);
        }

        v29 = v55;
        v55[2] = v28 + 1;
        result = sub_100066578(v53, v29 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v28, &qword_100924B28, &unk_1007A8680);
      }

      ++v19;
      v20 += 16;
      if (v52 == v19)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v55 = _swiftEmptyArrayStorage;
LABEL_13:

    v30 = v48;
    (*(v40 + 16))(v39, &v48[OBJC_IVAR____TtC22SubscribePageExtension20SearchTagsRibbonView_metrics], v41);
    v31 = v38;
    sub_10074BD54();
    sub_1007477B4();
    v32 = v44;
    sub_10074BD74();
    (*(v46 + 8))(v32, v47);
    v33 = &v30[OBJC_IVAR____TtC22SubscribePageExtension20SearchTagsRibbonView_impressionsUpdateBlock];
    swift_beginAccess();
    v34 = *v33;
    if (*v33)
    {
      v35 = *(v33 + 1);
      swift_endAccess();

      v34(v36);
      v37 = sub_1000164A8(v34, v35);
      return (*(v42 + 8))(v31, v43, v37);
    }

    else
    {
      (*(v42 + 8))(v31, v43);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_100075F70(uint64_t a1, double a2, double a3)
{
  v32 = a1;
  v29 = sub_10074BDA4();
  v27 = *(v29 - 8);
  __chkstk_darwin(v29);
  v26 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10074BDB4();
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v25 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&qword_100924B38, qword_1007A86A0);
  __chkstk_darwin(v6 - 8);
  v35 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v25 - v9;
  v38 = sub_10000C518(&qword_100924B28, &unk_1007A8680);
  v11 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v25 - v12;
  v31 = v3;
  v13 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension20SearchTagsRibbonView_metadataRibbonItemViews);
  v14 = *(v13 + 16);

  v36 = v14;
  if (v14)
  {
    v16 = 0;
    v33 = v11;
    v34 = (v11 + 48);
    v17 = v13 + 40;
    v39 = _swiftEmptyArrayStorage;
    while (v16 < *(v13 + 16))
    {
      v18 = *(v17 - 8);
      swift_getObjectType();
      v19 = v18;
      v20 = v35;
      sub_100749D84();
      sub_100066578(v20, v10, &qword_100924B38, qword_1007A86A0);

      if ((*v34)(v10, 1, v38) == 1)
      {
        result = sub_10000C8CC(v10, &qword_100924B38, qword_1007A86A0);
      }

      else
      {
        sub_100066578(v10, v37, &qword_100924B28, &unk_1007A8680);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = sub_100254A34(0, v39[2] + 1, 1, v39);
        }

        v22 = v39[2];
        v21 = v39[3];
        if (v22 >= v21 >> 1)
        {
          v39 = sub_100254A34((v21 > 1), v22 + 1, 1, v39);
        }

        v23 = v39;
        v39[2] = v22 + 1;
        result = sub_100066578(v37, v23 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v22, &qword_100924B28, &unk_1007A8680);
      }

      ++v16;
      v17 += 16;
      if (v36 == v16)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v39 = _swiftEmptyArrayStorage;
LABEL_13:

    (*(v27 + 16))(v26, v31 + OBJC_IVAR____TtC22SubscribePageExtension20SearchTagsRibbonView_metrics, v29);
    v24 = v25;
    sub_10074BD54();
    sub_10074BD64();
    return (*(v28 + 8))(v24, v30);
  }

  return result;
}

uint64_t sub_1000764B0@<X0>(uint64_t *a1@<X0>, void *a3@<X2>, void *a4@<X8>)
{
  v7 = sub_100750BD4();
  v68 = *(v7 - 8);
  v69 = v7;
  __chkstk_darwin(v7);
  v67 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_100750E94();
  v64 = *(v66 - 8);
  __chkstk_darwin(v66);
  v62 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v63 = &v53 - v11;
  __chkstk_darwin(v12);
  v65 = &v53 - v13;
  v14 = sub_10000C518(&qword_100924B30, &unk_1007A8690);
  __chkstk_darwin(v14 - 8);
  v16 = &v53 - v15;
  v17 = *a1;
  result = sub_10050734C();
  if (result)
  {
    v20 = result;
    v21 = v19;
    v22 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    sub_100749DC4();
    sub_1007478D4();
    sub_100749DA4();
    sub_100747904();
    v23 = sub_100749D24();
    (*(*(v23 - 8) + 56))(v16, 0, 1, v23);
    sub_100749DD4();
    v57 = sub_1007478A4();
    v25 = v24;
    v26 = [a3 traitCollection];
    v60 = v21;
    v61 = a4;
    v58 = v22;
    v59 = v20;
    if (v25)
    {
    }

    else
    {
      v53 = v26;
      v54 = v25;
      v55 = a3;
      v56 = v17;
      v27 = v62;
      sub_100750E84();
      sub_1007509A4();
      if (qword_100920210 != -1)
      {
        swift_once();
      }

      v28 = sub_10074A584();
      v29 = sub_10000D0FC(v28, qword_10097D9F0);
      v71 = v28;
      v72 = sub_1000788AC(&qword_100934700, &type metadata accessor for MetadataRibbonTextStyle, &protocol conformance descriptor for MetadataRibbonTextStyle);
      v30 = sub_10000D134(v70);
      (*(*(v28 - 8) + 16))(v30, v29, v28);
      v31 = v63;
      sub_100750DE4();
      v32 = v64;
      v33 = *(v64 + 8);
      v34 = v66;
      v33(v27, v66);
      sub_10000C620(v70);
      v35 = v65;
      sub_100750E74();
      v33(v31, v34);
      v73._countAndFlagsBits = 77;
      v73._object = 0xE100000000000000;
      sub_100753224(v73, v57);
      (*(v32 + 16))(v31, v35, v34);
      sub_100750BB4();
      v36 = v67;
      sub_100750BF4();
      v37 = v53;
      sub_100750BC4();

      (*(v68 + 8))(v36, v69);
      v33(v35, v34);
      v21 = v60;
      a4 = v61;
      a3 = v55;
      v22 = v58;
    }

    sub_100749D44();
    v57 = sub_1007478E4();
    v39 = v38;
    v40 = [a3 traitCollection];
    if (v39)
    {
    }

    else
    {
      v55 = v40;
      LODWORD(v56) = v39;
      v41 = v62;
      sub_100750E84();
      sub_1007509A4();
      if (qword_100920210 != -1)
      {
        swift_once();
      }

      v42 = sub_10074A584();
      v43 = sub_10000D0FC(v42, qword_10097D9F0);
      v71 = v42;
      v72 = sub_1000788AC(&qword_100934700, &type metadata accessor for MetadataRibbonTextStyle, &protocol conformance descriptor for MetadataRibbonTextStyle);
      v44 = sub_10000D134(v70);
      (*(*(v42 - 8) + 16))(v44, v43, v42);
      v45 = v63;
      sub_100750DE4();
      v46 = v64;
      v47 = *(v64 + 8);
      v48 = v41;
      v49 = v66;
      v47(v48, v66);
      sub_10000C620(v70);
      v50 = v65;
      sub_100750E74();
      v47(v45, v49);
      v74._countAndFlagsBits = 77;
      v74._object = 0xE100000000000000;
      sub_100753224(v74, v57);
      (*(v46 + 16))(v45, v50, v49);
      sub_100750BB4();
      v51 = v67;
      sub_100750BF4();
      v52 = v55;
      sub_100750BC4();

      (*(v68 + 8))(v51, v69);
      v47(v50, v49);
      v21 = v60;
      a4 = v61;
      v22 = v58;
    }

    sub_100749D94();
    sub_100747884();
    result = sub_100749D64();
    *a4 = v22;
    a4[1] = v21;
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
  }

  return result;
}

uint64_t sub_100076CBC()
{
  swift_getObjectType();

  v1 = sub_1000F0AA8(v0, 0);

  return v1 & 1;
}

void sub_100076D28(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v2 - 8);
  v4 = v38 - v3;
  v5 = sub_100752914();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    swift_beginAccess();
    v11 = swift_weakLoadStrong();
    if (v11)
    {
      v12 = v11;
      v13 = *&v10[OBJC_IVAR____TtC22SubscribePageExtension20SearchTagsRibbonView_metadataRibbonItemModels];
      if (v13)
      {
        v44 = v8;
        v40 = v10;
        v14 = *&v10[OBJC_IVAR____TtC22SubscribePageExtension20SearchTagsRibbonView_metadataRibbonItemViews];
        v15 = *(v14 + 16);

        v49 = v15;
        if (v15)
        {
          v16 = 0;
          v17 = v13 & 0xFFFFFFFFFFFFFF8;
          if (v13 >= 0)
          {
            v18 = v13 & 0xFFFFFFFFFFFFFF8;
          }

          else
          {
            v18 = v13;
          }

          v38[1] = v18;
          v45 = (v6 + 48);
          v46 = v13 & 0xFFFFFFFFFFFFFF8;
          v41 = (v6 + 8);
          v42 = (v6 + 32);
          v19 = 32;
          v47 = v13 & 0xC000000000000001;
          v48 = v13 >> 62;
          v39 = v4;
          v43 = v13;
          while (v16 < *(v14 + 16))
          {
            v20 = *(v14 + v19);
            if (v48)
            {
              if (v16 == sub_100754664())
              {
                goto LABEL_24;
              }
            }

            else if (v16 == *(v17 + 16))
            {
              goto LABEL_24;
            }

            if (v47)
            {
              v37 = v20;
              sub_100754574();
            }

            else
            {
              if (v16 >= *(v17 + 16))
              {
                goto LABEL_29;
              }

              v21 = v20;
            }

            sub_100747894();
            if ((*v45)(v4, 1, v5) == 1)
            {

              sub_10000C8CC(v4, &unk_100925380, qword_1007A8E40);
            }

            else
            {
              v22 = v44;
              (*v42)(v44, v4, v5);
              if ([v20 isHidden])
              {
                (*v41)(v22, v5);
              }

              else
              {
                [v20 frame];
                v24 = v23;
                v26 = v25;
                v28 = v27;
                v30 = v29;
                v31 = v5;
                v32 = v14;
                v33 = v12;
                v34 = v40;
                v35 = [v40 superview];
                v36 = v34;
                v12 = v33;
                v14 = v32;
                v5 = v31;
                v4 = v39;
                [v36 convertRect:v35 toView:{v24, v26, v28, v30}];

                sub_100749544();

                (*v41)(v22, v5);
              }
            }

            ++v16;
            v19 += 16;
            v17 = v46;
            if (v49 == v16)
            {
              goto LABEL_24;
            }
          }

          __break(1u);
LABEL_29:
          __break(1u);
        }

        else
        {
LABEL_24:
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

uint64_t type metadata accessor for SearchTagsRibbonView(uint64_t a1)
{
  result = qword_100924B18;
  if (!qword_100924B18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100077290(uint64_t a1)
{
  result = sub_10074BDA4();
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

double sub_100077358()
{
  swift_beginAccess();

  return result;
}

double sub_1000773A0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension20SearchTagsRibbonView_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_100077458()
{
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension20SearchTagsRibbonView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001B5AC(*v1, v1[1]);
  return v2;
}

double sub_1000774B4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension20SearchTagsRibbonView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1000164A8(v6, v7);
}

void (*sub_100077574(uint64_t a1, uint64_t a2))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  return sub_1000789A4;
}

uint64_t sub_100077614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();

  return sub_10074D3C4();
}

uint64_t sub_10007766C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();

  return sub_10074D3B4();
}

uint64_t sub_1000776C8(void *a1)
{
  sub_10000C888(a1, a1[3]);
  v2 = sub_1007514C4();
  if (qword_100920118 != -1)
  {
    swift_once();
  }

  v3 = qword_100924AE0;
  if (sub_100753944())
  {
    v3;
  }

  sub_10007271C(a1, a1[3]);
  return sub_1007514D4();
}

uint64_t sub_100077794(unint64_t a1, int a2, double a3, double a4)
{
  v102 = a2;
  v5 = sub_10074BDA4();
  __chkstk_darwin(v5 - 8);
  v101 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10074BDB4();
  v104 = *(v7 - 8);
  __chkstk_darwin(v7);
  v103 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_100750BD4();
  v9 = *(v123 - 8);
  __chkstk_darwin(v123);
  v122 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_100750E94();
  v11 = *(v121 - 8);
  __chkstk_darwin(v121);
  v13 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v120 = &v95 - v15;
  __chkstk_darwin(v16);
  v119 = &v95 - v17;
  v133 = sub_10000C518(&qword_100924B28, &unk_1007A8680);
  v118 = *(v133 - 1);
  __chkstk_darwin(v133);
  v131 = (&v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v117 = &v95 - v20;
  __chkstk_darwin(v21);
  v134 = &v95 - v22;
  v125 = sub_10074BCC4();
  v23 = *(v125 - 8);
  __chkstk_darwin(v125);
  v124 = &v95 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100747924();
  v126 = a1;
  result = sub_1007532D4();
  if (result)
  {
    v116 = sub_100753824();
    if (v126 >> 62)
    {
      result = sub_100754664();
    }

    else
    {
      result = *((v126 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v100 = v7;
    if (result)
    {
      if (result >= 1)
      {
        v26 = 0;
        v114 = v126 & 0xC000000000000001;
        v113 = (v23 + 88);
        v96 = (v23 + 8);
        v111 = (v11 + 8);
        v110 = (v11 + 16);
        v109 = (v9 + 8);
        v27 = _swiftEmptyArrayStorage;
        v112 = enum case for MetadataRibbonItemViewType.borderedTextLabel(_:);
        v107 = enum case for MetadataRibbonItemViewType.editorsChoice(_:);
        v106 = enum case for MetadataRibbonItemViewType.imageWithLabel(_:);
        v105 = enum case for MetadataRibbonItemViewType.starRating(_:);
        v99 = enum case for MetadataRibbonItemViewType.textLabel(_:);
        v98 = enum case for MetadataRibbonItemViewType.divider(_:);
        v97 = enum case for MetadataRibbonItemViewType.highlightedText(_:);
        v108 = v13;
        v115 = result;
        while (1)
        {
          if (v114)
          {
            v28 = sub_100754574();
          }

          else
          {
            v28 = *(v126 + 8 * v26 + 32);
          }

          v29 = v124;
          sub_1007478B4();
          v30 = (*v113)(v29, v125);
          v129 = v27;
          v130 = v26;
          if (v30 == v112)
          {
            break;
          }

          if (v30 == v107)
          {
            v31 = type metadata accessor for MetadataRibbonEditorsChoiceView(0);
            v32 = type metadata accessor for MetadataRibbonEditorsChoiceView;
            v33 = &unk_1007B40C8;
            v34 = &unk_1009231E0;
            goto LABEL_24;
          }

          if (v30 == v106)
          {
            v31 = type metadata accessor for MetadataRibbonIconWithLabelView(0);
            v32 = type metadata accessor for MetadataRibbonIconWithLabelView;
            v33 = &unk_1007BAC78;
            v34 = &unk_1009231D8;
            goto LABEL_24;
          }

          if (v30 == v105)
          {
            v31 = type metadata accessor for MetadataRibbonStarRatingView(0);
            v32 = type metadata accessor for MetadataRibbonStarRatingView;
            v33 = &unk_1007D67F8;
            v34 = &unk_1009231F0;
            goto LABEL_24;
          }

          if (v30 == v99)
          {
            v31 = type metadata accessor for MetadataRibbonTagView(0);
            v32 = type metadata accessor for MetadataRibbonTagView;
            v33 = &unk_1007BBF00;
            v34 = &unk_1009231C8;
            goto LABEL_24;
          }

          if (v30 == v98)
          {
            v31 = type metadata accessor for MetadataRibbonBarView(0);
            v32 = type metadata accessor for MetadataRibbonBarView;
            v33 = &unk_1007C5B40;
            v34 = &unk_1009231D0;
            goto LABEL_24;
          }

          if (v30 == v97)
          {
            v31 = type metadata accessor for MetadataRibbonHighlightedTextView(0);
            v32 = type metadata accessor for MetadataRibbonHighlightedTextView;
            v33 = &unk_1007AAD40;
            v34 = &unk_1009231B8;
            goto LABEL_24;
          }

          (*v96)(v124, v125);
LABEL_37:
          if (v115 == ++v26)
          {
            goto LABEL_41;
          }
        }

        v31 = type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionView(0);
        v32 = type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionView;
        v33 = &unk_1007D71E8;
        v34 = &unk_1009231E8;
LABEL_24:
        v35 = sub_1000788AC(v34, v32, v33);
        v36 = swift_allocObject();
        v36[2] = v31;
        v36[3] = v35;
        v36[4] = v28;
        v37 = sub_100750F34();
        swift_allocObject();

        v38 = sub_100750EF4();
        v39 = v134;
        v40 = v133[20];
        sub_1007478D4();
        *(v39 + 64) = v37;
        *(v39 + 72) = &protocol witness table for LayoutViewPlaceholder;
        *(v39 + 40) = v38;
        *(v39 + 80) = sub_100749DB4() & 1;
        sub_100747904();
        v41 = sub_100749D24();
        (*(*(v41 - 8) + 56))(v39 + v40, 0, 1, v41);
        v42 = sub_1007478A4();
        v44 = v43;
        v45 = 0;
        v46 = 0;
        v132 = v28;
        if ((v43 & 1) == 0)
        {
          v47 = v42;
          sub_100750E84();
          sub_1007509A4();
          if (qword_100920210 != -1)
          {
            swift_once();
          }

          v48 = sub_10074A584();
          v49 = sub_10000D0FC(v48, qword_10097D9F0);
          v136 = v48;
          v137 = sub_1000788AC(&qword_100934700, &type metadata accessor for MetadataRibbonTextStyle, &protocol conformance descriptor for MetadataRibbonTextStyle);
          v50 = sub_10000D134(&v135);
          (*(*(v48 - 8) + 16))(v50, v49, v48);
          v51 = v120;
          sub_100750DE4();
          v52 = *v111;
          v53 = v121;
          (*v111)(v13, v121);
          sub_10000C620(&v135);
          v54 = v119;
          sub_100750E74();
          v52(v51, v53);
          v138._countAndFlagsBits = 77;
          v138._object = 0xE100000000000000;
          sub_100753224(v138, v47);
          (*v110)(v51, v54, v53);
          sub_100750BB4();
          v55 = v122;
          sub_100750BF4();
          sub_100750BC4();
          v46 = v56;
          (*v109)(v55, v123);
          v52(v54, v53);
        }

        v57 = v134 + v133[24];
        *v57 = v46;
        *(v57 + 8) = v44 & 1;
        v58 = sub_1007478E4();
        v60 = v59;
        if ((v59 & 1) == 0)
        {
          v61 = v58;
          sub_100750E84();
          sub_1007509A4();
          if (qword_100920210 != -1)
          {
            swift_once();
          }

          v62 = sub_10074A584();
          v63 = sub_10000D0FC(v62, qword_10097D9F0);
          v136 = v62;
          v137 = sub_1000788AC(&qword_100934700, &type metadata accessor for MetadataRibbonTextStyle, &protocol conformance descriptor for MetadataRibbonTextStyle);
          v64 = sub_10000D134(&v135);
          (*(*(v62 - 8) + 16))(v64, v63, v62);
          v65 = v120;
          sub_100750DE4();
          v66 = *v111;
          v67 = v121;
          (*v111)(v13, v121);
          sub_10000C620(&v135);
          v68 = v119;
          sub_100750E74();
          v66(v65, v67);
          v139._countAndFlagsBits = 77;
          v139._object = 0xE100000000000000;
          sub_100753224(v139, v61);
          (*v110)(v65, v68, v67);
          sub_100750BB4();
          v69 = v122;
          sub_100750BF4();
          sub_100750BC4();
          v45 = v70;
          (*v109)(v69, v123);
          v66(v68, v67);
        }

        v71 = v133;
        v72 = v134;
        v73 = v134 + v133[28];
        v74 = v133[32];
        *v73 = v45;
        *(v73 + 8) = v60 & 1;
        *(v72 + v74) = sub_100747884();
        v75 = v117;
        sub_10007883C(v72, v117);
        v76 = *(v75 + 80);
        v77 = v71[20];
        v78 = v71[24];
        v128 = *(v75 + v78);
        v127 = *(v75 + v78 + 8);
        v79 = v71[28];
        v80 = *(v75 + v79);
        v81 = *(v75 + v79 + 8);
        v82 = v71[32];
        v83 = *(v75 + v82);
        v84 = v131;
        v85 = v131 + v78;
        v86 = v131 + v79;
        v87 = *(v75 + 16);
        *v131 = *v75;
        v84[1] = v87;
        *(v84 + 4) = *(v75 + 32);
        sub_100012160((v75 + 40), v84 + 40);
        *(v84 + 80) = v76;
        sub_100066578(v75 + v77, v84 + v77, &qword_100924B30, &unk_1007A8690);
        *v85 = v128;
        v85[8] = v127;
        *v86 = v80;
        v86[8] = v81;
        *(v84 + v82) = v83;
        v27 = v129;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_100254A34(0, v27[2] + 1, 1, v27);
        }

        v26 = v130;
        v89 = v27[2];
        v88 = v27[3];
        v13 = v108;
        if (v89 >= v88 >> 1)
        {
          v27 = sub_100254A34((v88 > 1), v89 + 1, 1, v27);
        }

        v27[2] = v89 + 1;
        sub_100066578(v131, v27 + ((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v89, &qword_100924B28, &unk_1007A8680);
        sub_10000C8CC(v134, &qword_100924B28, &unk_1007A8680);
        goto LABEL_37;
      }

      __break(1u);
    }

    else
    {
LABEL_41:
      sub_10074BD94();
      v90 = v103;
      sub_10074BD54();
      sub_100751034();
      sub_10000C518(&unk_1009231A0, qword_1007A5810);
      v91 = swift_allocObject();
      *(v91 + 16) = xmmword_1007A5CF0;
      v92 = v116;
      *(v91 + 32) = v116;
      v93 = v92;
      v94 = sub_100751044();
      sub_10074BD64();

      return (*(v104 + 8))(v90, v100);
    }
  }

  return result;
}

uint64_t sub_1000787D4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10007883C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100924B28, &unk_1007A8680);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000788AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000788F4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007892C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100078964()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1000789AC()
{
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension20SearchTagsRibbonView_metadataRibbonItemViews) = _swiftEmptyArrayStorage;
  sub_10074BD94();
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension20SearchTagsRibbonView_metadataRibbonItemModels) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension20SearchTagsRibbonView_shouldEvenlyDistribute) = 2;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension20SearchTagsRibbonView_isInsideSearchAd) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension20SearchTagsRibbonView_impressionsCalculator) = 0;
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension20SearchTagsRibbonView_impressionsUpdateBlock);
  *v1 = 0;
  v1[1] = 0;
  sub_100754644();
  __break(1u);
}

char *sub_100078A70(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC22SubscribePageExtension29PlaceholderCollectionViewCell_itemLayoutContext;
  v11 = sub_1007469A4();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC22SubscribePageExtension29PlaceholderCollectionViewCell_placeholderView;
  *&v4[v12] = [objc_allocWithZone(UIView) init];
  v17.receiver = v4;
  v17.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  v14 = [v13 contentView];
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v15 = [v13 contentView];
  [v15 addSubview:*&v13[OBJC_IVAR____TtC22SubscribePageExtension29PlaceholderCollectionViewCell_placeholderView]];

  return v13;
}

uint64_t type metadata accessor for PlaceholderCollectionViewCell(uint64_t a1)
{
  result = qword_100924B68;
  if (!qword_100924B68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_100078E9C(uint64_t a1, uint64_t a2)
{
  v2 = sub_10074F704();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100744424();
  sub_1000790DC(&qword_100924B80, &type metadata accessor for EditorialLink, &protocol conformance descriptor for EditorialLink);
  sub_1007468B4();
  v6 = v16;
  if (!v16)
  {
    return 0.0;
  }

  sub_10000C518(&qword_100924B88, &unk_1007BD1D0);
  sub_100752764();
  sub_100752D34();
  v15[1] = v6;
  sub_100742DE4();

  v7 = v16;
  if ((~v16 & 0xF000000000000007) != 0)
  {
    v8 = v17;
  }

  else
  {

    v8 = 0;
    v7 = v6;
  }

  swift_getKeyPath();
  sub_100746914();

  sub_10074F674();
  v11 = v10;
  (*(v3 + 8))(v5, v2);
  v12 = sub_10007DC04();
  sub_1001910D0(v7, v8, v12, v11);
  v9 = v13;
  swift_unknownObjectRelease();

  sub_100079128(v7, v8);
  return v9;
}

uint64_t sub_1000790DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100079128(uint64_t a1, void *a2)
{
  if (a1 < 0)
  {
  }

  else
  {
  }
}

uint64_t sub_100079198(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_100750304();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100750B04();
  sub_100039C50(v8, a3);
  sub_10000D0FC(v8, a3);
  if (qword_1009213B8 != -1)
  {
    swift_once();
  }

  v9 = sub_100750534();
  v10 = sub_10000D0FC(v9, qword_100981860);
  (*(*(v9 - 8) + 16))(v7, v10, v9);
  (*(v5 + 104))(v7, enum case for FontSource.useCase(_:), v4);
  v14[3] = v4;
  v14[4] = &protocol witness table for FontSource;
  v11 = sub_10000D134(v14);
  (*(v5 + 16))(v11, v7, v4);
  sub_100750B14();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100079374()
{
  v0 = sub_10000C518(&qword_10092AC90, &qword_1007A8830);
  sub_100039C50(v0, qword_100924BC0);
  sub_10000D0FC(v0, qword_100924BC0);
  sub_10000C518(&unk_100923AE0, &qword_1007A8370);
  type metadata accessor for NSTextAlignment(0);
  return sub_100743474();
}

void sub_100079410(void *a1)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension26TodayCardActionOverlayView_accessoryView;
  v6 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension26TodayCardActionOverlayView_accessoryView];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension26TodayCardActionOverlayView_accessoryView] = a1;
  v3 = a1;
  [v6 removeFromSuperview];
  v4 = *&v1[v2];
  if (v4)
  {
    v5 = v4;
    [v1 addSubview:v5];
    [v1 setNeedsLayout];
  }
}

char *sub_1000794B8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_100752AC4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10074AB44();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v18 - 8);
  v20 = &v33 - v19;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension26TodayCardActionOverlayView_accessoryView] = 0;
  v5[OBJC_IVAR____TtC22SubscribePageExtension26TodayCardActionOverlayView_isExpanded] = 0;
  v5[OBJC_IVAR____TtC22SubscribePageExtension26TodayCardActionOverlayView_sizeCategory] = 7;
  if (qword_1009213B8 != -1)
  {
    swift_once();
  }

  v21 = sub_100750534();
  v22 = sub_10000D0FC(v21, qword_100981860);
  v23 = *(v21 - 8);
  (*(v23 + 16))(v20, v22, v21);
  (*(v23 + 56))(v20, 0, 1, v21);
  (*(v15 + 104))(v17, enum case for DirectionalTextAlignment.none(_:), v14);
  v24 = objc_allocWithZone(sub_100745C84());
  v25 = sub_100745C74();
  v26 = OBJC_IVAR____TtC22SubscribePageExtension26TodayCardActionOverlayView_label;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension26TodayCardActionOverlayView_label] = v25;
  memset(v37, 0, sizeof(v37));
  memset(v36, 0, sizeof(v36));
  v27 = v25;
  sub_100752A74();
  sub_1000277BC(v36);
  sub_1000277BC(v37);
  sub_100753C74();

  (*(v11 + 8))(v13, v10);
  v28 = *&v5[v26];
  sub_10000D198();
  v29 = v28;
  v30 = sub_100753DF4();
  [v29 setTextColor:v30];

  type metadata accessor for Accessory(0);
  swift_storeEnumTagMultiPayload();
  v35.receiver = v5;
  v35.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v35, "initWithFrame:", a1, a2, a3, a4);
  [v31 addSubview:*&v31[OBJC_IVAR____TtC22SubscribePageExtension26TodayCardActionOverlayView_label]];
  return v31;
}

double sub_100079958(double a1)
{
  swift_getObjectType();
  v3 = sub_100754724();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007477B4();
  v11 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension26TodayCardActionOverlayView_accessoryView);
  if (v11)
  {
    v12 = v7;
    v13 = v8;
    v14 = v9;
    v15 = v10;
    [v11 sizeThatFits:{v9, v10}];
    v10 = v15;
    v9 = v14;
    v8 = v13;
    v17 = v16;
    v7 = v12;
  }

  else
  {
    v17 = 0.0;
  }

  Width = CGRectGetWidth(*&v7);
  v19 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension26TodayCardActionOverlayView_label);
  [v19 sizeThatFits:{Width + -16.0 - v17, 1.79769313e308}];
  if (qword_100920120 != -1)
  {
    swift_once();
  }

  v20 = sub_100750B04();
  sub_10000D0FC(v20, qword_100924B90);
  sub_1007502D4();
  sub_100750564();
  v21 = *(v4 + 8);
  v21(v6, v3);
  [v19 firstBaselineFromTop];
  if (qword_100920128 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v20, qword_100924BA8);
  sub_1007502D4();
  sub_100750564();
  v21(v6, v3);
  [v19 lastBaselineFromBottom];
  return a1;
}

id sub_100079C50()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100754724();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32.receiver = v1;
  v32.super_class = ObjectType;
  objc_msgSendSuper2(&v32, "layoutSubviews", v5);
  sub_1007477B4();
  v11 = v10;
  v13 = v12;
  v14 = v8;
  v15 = v9;
  v16 = OBJC_IVAR____TtC22SubscribePageExtension26TodayCardActionOverlayView_accessoryView;
  v17 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension26TodayCardActionOverlayView_accessoryView];
  if (v17)
  {
    [v17 sizeThatFits:{v8, v9}];
    v19 = v18;
    v21 = v20;
  }

  else
  {
    v19 = 0.0;
    v21 = 0.0;
  }

  v33.origin.x = v11;
  v33.origin.y = v13;
  v33.size.width = v14;
  v33.size.height = v15;
  v22 = CGRectGetMaxX(v33) - v19;
  v34.origin.x = v11;
  v34.origin.y = v13;
  v34.size.width = v14;
  v34.size.height = v15;
  v35.origin.y = CGRectGetMidY(v34) + v21 * -0.5;
  v35.origin.x = v22;
  v31 = v19;
  v35.size.width = v19;
  v35.size.height = v21;
  CGRectIntegral(v35);
  v23 = *&v1[v16];
  if (v23)
  {
    v24 = v23;
    sub_100753B24();
    [v24 setFrame:?];
  }

  v36.origin.x = v11;
  v36.origin.y = v13;
  v36.size.width = v14;
  v36.size.height = v15;
  v25 = CGRectGetWidth(v36) + -16.0 - v31;
  v37.origin.x = v11;
  v37.origin.y = v13;
  v37.size.width = v14;
  v37.size.height = v15;
  Height = CGRectGetHeight(v37);
  v27 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension26TodayCardActionOverlayView_label];
  [v27 sizeThatFits:{v25, Height}];
  if (qword_100920120 != -1)
  {
    swift_once();
  }

  v28 = sub_100750B04();
  sub_10000D0FC(v28, qword_100924B90);
  sub_1007502D4();
  sub_100750564();
  (*(v4 + 8))(v7, v3);
  [v27 firstBaselineFromTop];
  v38.origin.x = v11;
  v38.origin.y = v13;
  v38.size.width = v14;
  v38.size.height = v15;
  CGRectGetMinX(v38);
  v39.origin.x = v11;
  v39.origin.y = v13;
  v39.size.width = v14;
  v39.size.height = v15;
  CGRectGetMinY(v39);
  sub_100753B24();
  return [v27 setFrame:?];
}

id sub_100079FEC(void *a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_100920130 != -1)
    {
      swift_once();
    }

    v6 = sub_10000C518(&qword_10092AC90, &qword_1007A8830);
    sub_10000D0FC(v6, qword_100924BC0);
    v7 = v1;
    sub_100743464();

    return sub_100753F54();
  }

  return result;
}

uint64_t type metadata accessor for TodayCardActionOverlayView(uint64_t a1)
{
  result = qword_100924C18;
  if (!qword_100924C18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10007A23C(uint64_t a1)
{
  result = type metadata accessor for Accessory(319);
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

unint64_t sub_10007A320()
{
  result = qword_100924C28;
  if (!qword_100924C28)
  {
    sub_10074A124();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100924C28);
  }

  return result;
}

void sub_10007A378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v8 = a5;
  v5[OBJC_IVAR____TtC22SubscribePageExtension26TodayCardActionOverlayView_sizeCategory] = a5;
  [v5 setNeedsLayout];
  sub_10050A2DC(a2);
  sub_100079410(v9);
  v10 = sub_10074FB24();
  [v6 setBackgroundColor:v10];

  v11 = [v6 traitCollection];
  if (v8 != 4)
  {
    sub_10074F694();
    sub_10074F694();
  }

  [v11 layoutDirection];
  sub_1007539B4();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [v6 setLayoutMargins:{v13, v15, v17, 15.0}];
  v18 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension26TodayCardActionOverlayView_label];
  sub_10074A114();
  sub_10074ECB4();
  v20 = v19;

  if (v20)
  {
    v21 = sub_100753064();
  }

  else
  {
    v21 = 0;
  }

  [v18 setText:v21];
}

uint64_t sub_10007A554(uint64_t a1)
{
  v2 = type metadata accessor for Accessory(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_10007A5B0(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, id a6, double a7, double a8)
{
  v11 = [a6 traitCollection];
  if (sub_1007537E4())
  {
    sub_100753804();
  }

  v12 = sub_100320820(a6, a7, a8);

  return v12;
}

uint64_t sub_10007A6F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_10007A738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension34ProductTapToRateCollectionViewCell_separatorView];
  v8 = [v3 traitCollection];
  v9 = sub_1007537E4();

  if (v9)
  {
    v10 = [v4 traitCollection];
    v11 = sub_100753804();

    v12 = v11 ^ 1;
  }

  else
  {
    v12 = 0;
  }

  [v7 setHidden:v12 & 1];
  sub_10031FF0C(a1, 0, a3);

  return [v4 setNeedsLayout];
}

uint64_t sub_10007A834(void *a1)
{
  if (*v1 == *a1 && (sub_1007544C4() & 1) != 0 && (type metadata accessor for MenuItemDebugSetting(), (v2 = swift_dynamicCastClass()) != 0) && (*(v2 + 56) == *(v1 + 56) ? (v3 = *(v2 + 64) == *(v1 + 64)) : (v3 = 0), v3 || (v4 = v2, v5 = sub_100754754(), v2 = v4, (v5 & 1) != 0)))
  {
    v6 = *(v2 + 72) ^ *(v1 + 72) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void sub_10007A918(uint64_t a1)
{
  sub_1007544D4();
  sub_100753174();
  sub_100754854(*(v1 + 72));
}

double sub_10007A964()
{

  return result;
}

uint64_t sub_10007A994()
{
  sub_100016994(v0 + 16);

  return swift_deallocClassInstance();
}

void *sub_10007AA20(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_100754664();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_100632C90();
  sub_1004A13C8((v5 + 4), v4, a1, v6);
  v8 = v7;

  result = v5;
  if (v8 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

char *sub_10007AAB4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v41 = sub_100752AC4();
  v9 = *(v41 - 8);
  __chkstk_darwin(v41);
  v11 = &ObjectType - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100746264();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &ObjectType - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_riverContainerView;
  *&v4[v16] = [objc_allocWithZone(UIView) init];
  v4[OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_isDisappearing] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for RiverCardDataSource();
  v17 = swift_allocObject();
  *(v17 + 32) = _swiftEmptyArrayStorage;
  *(v17 + 16) = xmmword_1007A88D0;
  *(v17 + 40) = vdupq_n_s64(0x4058C00000000000uLL);
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_riverDataSource] = v17;
  sub_1007461D4();
  sub_100746244();
  v18 = OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_riverStyling;
  (*(v13 + 32))(&v4[OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_riverStyling], v15, v12);
  v19 = *(v13 + 16);
  v19(v15, &v4[v18], v12);
  v20 = objc_allocWithZone(sub_10000C518(&qword_100924E88, qword_1007A8980));

  *&v4[OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_riverView] = sub_10074F994();
  v19(v15, &v4[v18], v12);
  v21 = objc_allocWithZone(type metadata accessor for RiverTodayCardBackgroundView(0));
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_gradientView] = sub_100158CB4(v15);
  v47[0] = sub_100046F68;
  v47[1] = 0;
  v47[2] = sub_100668920;
  v47[3] = 0;
  v47[4] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v47[5] = 0;
  v47[6] = sub_100184128;
  v47[7] = 0;
  v47[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v47[9] = 0;
  v47[10] = sub_1000ED848;
  v47[11] = 0;
  v48 = 0x4000000000000000uLL;
  v49 = 0;
  v50 = 0x4018000000000000;
  v51 = 0;
  v52 = 1;
  v22 = objc_allocWithZone(type metadata accessor for TodayCardLabelsView(0));
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_labelsView] = sub_100678FB8(v47, &v48);
  v46.receiver = v4;
  v46.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v46, "initWithFrame:", a1, a2, a3, a4);
  v24 = OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_gradientView;
  v25 = *&v23[OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_gradientView];
  v26 = v23;
  [v25 _setContinuousCornerRadius:20.0];
  v27 = *&v23[v24];
  [v27 bounds];
  [v27 setBounds:?];

  [*&v23[v24] setClipsToBounds:1];
  v28 = OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_riverView;
  [*&v26[OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_riverView] setClipsToBounds:0];
  v29 = OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_riverContainerView;
  [*&v26[OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_riverContainerView] setClipsToBounds:1];
  v30 = [v26 contentView];
  [v30 addSubview:*&v23[v24]];

  [*&v26[v29] addSubview:*&v26[v28]];
  v31 = [v26 contentView];
  [v31 addSubview:*&v26[v29]];

  v32 = [v26 contentView];
  [v32 addSubview:*&v26[OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_labelsView]];

  v33 = *&v26[v28];
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v34 = v33;
  sub_100752A74();
  sub_1000277BC(&v42);
  sub_1000277BC(&v44);
  sub_100753C74();

  v35 = *(v9 + 8);
  v36 = v41;
  v35(v11, v41);
  v37 = *&v23[v24];
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v38 = v37;
  sub_100752A74();
  sub_1000277BC(&v42);
  sub_1000277BC(&v44);
  sub_100753C74();

  v35(v11, v36);
  return v26;
}

void sub_10007B110(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = a1 & 1;
  v5 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_riverView);
  sub_10074F9D4();

  v6 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_gradientView);
  v7 = v6[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_isAnimating];
  v6[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_isAnimating] = v3;
  if (v7 != v4)
  {
    v8 = v6;
    sub_10015A054();
  }
}

void sub_10007B1C8()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isMotionEnabled;
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_riverView);
  sub_10074F9D4();

  v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_gradientView);
  v4 = *(v0 + v1);
  v5 = v3[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_isAnimating];
  v3[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_isAnimating] = v4;
  if (v4 != v5)
  {
    v6 = v3;
    sub_10015A054();
  }
}

void sub_10007B2B8()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isTransitioning;
  *(*(v0 + OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_labelsView) + qword_100944200) = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isTransitioning);
  sub_100679F5C();
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_riverView);
  sub_10074FA04();

  if ((*(v0 + v1) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_isDisappearing) = 0;
  }
}

void sub_10007B360()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded;
  if (v0[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v2 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v2 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  if (v0[*v2] != 4)
  {
    v3 = [v0 traitCollection];
    v4 = v3;
    if (v0[v1])
    {
      v5 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v5 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    sub_10056B184(v3, v0[*v5], &v28);
    v6 = v31;

    v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_labelsView];
    v8 = v0[v1];
    v9 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
    if (!v8)
    {
      v9 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v10 = v0[v9];
    v11 = v0[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory];
    v12 = v0[OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_isDisappearing];
    v23 = v28;
    v24 = v29;
    v25 = v30;
    *&v26 = v6;
    *v27 = 0uLL;
    *(&v26 + 1) = v7;
    v27[16] = 1;
    v27[17] = v10;
    v27[18] = v11;
    v27[19] = v8;
    v27[20] = v12;
    v32 = v28;
    v33 = v29;
    *&v36[13] = *&v27[13];
    v35 = v26;
    *v36 = 0uLL;
    v34 = v30;
    v13 = v7;
    [v0 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = [v0 traitCollection];
    sub_1005F7C10(v22, v15, v17, v19, v21);

    sub_100037A00(&v23);
  }
}

id sub_10007B50C()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_1007537E4();

  if (v3)
  {
    v4 = 40.0;
  }

  else
  {
    v4 = 30.0;
  }

  v5 = OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_labelsView;
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_labelsView] frame];
  v7 = v6 - v4 + -24.0;
  v8 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded;
  if ((v1[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded] & 1) == 0)
  {
    v9 = [v1 traitCollection];
    v10 = sub_100753804();

    v11 = (v10 & 1) != 0 ? 0.5 : 0.52;
    [v1 bounds];
    v12 = v11 * CGRectGetHeight(v50);
    sub_1007461E4();
    v14 = v13;
    v15 = round((v12 - v13) * 0.5);
    v16 = OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_riverView;
    v17 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_riverView];
    sub_10074FA24();
    v19 = v18;
    v21 = v20;

    if (v19 != v15 || v21 != v15)
    {
      v23 = v14 + v15 + v15;
      v24 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_riverDataSource];
      swift_beginAccess();
      if (v15 < *(v24 + 48) && v23 <= v7)
      {
        v26 = *&v1[v16];
        sub_10074F9E4();
      }
    }
  }

  v27 = OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_riverView;
  v28 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_riverView];
  [v1 bounds];
  [v28 sizeThatFits:{v29, v30}];
  v32 = v31;
  v34 = v33;

  [*&v1[v5] frame];
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_riverContainerView] setFrame:{0.0, 0.0, v32, v35}];
  if (v1[v8])
  {
    [*&v1[v5] frame];
    MinY = CGRectGetMinY(v51);
    v37 = [v1 traitCollection];
    v38 = sub_1007537D4();

    if (v38)
    {
      v39 = 50.0;
    }

    else
    {
      v39 = 64.0;
    }

    v40 = floor((MinY - v39 - v34) * 0.5);
    v41 = [v1 traitCollection];
    v42 = sub_1007537D4();

    if (v42)
    {
      v43 = 50.0;
    }

    else
    {
      v43 = 64.0;
    }

    v44 = v40 + v43;
  }

  else
  {
    v45 = [v1 traitCollection];
    v46 = sub_1007537D4();

    if (v46 & 1) != 0 || (v47 = [v1 traitCollection], v48 = sub_100753804(), v47, (v48))
    {
      [*&v1[v5] frame];
      v44 = floor((CGRectGetMinY(v52) - v34) * 0.5);
    }

    else if (v7 < v34)
    {
      v44 = v4 + v7 - v34;
    }

    else
    {
      v44 = v4;
    }
  }

  return [*&v1[v27] setFrame:{0.0, v44, v32, v34}];
}

void sub_10007B918()
{
  sub_1005F6EC0();
  v1 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded;
  v2 = 20.0;
  if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded))
  {
    v2 = 0.0;
  }

  [*(v0 + OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_gradientView) _setContinuousCornerRadius:v2];
  v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_labelsView);
  v3[qword_1009441F8] = *(v0 + v1);
  v4 = v3;
  sub_100679B2C();
}

void sub_10007B9BC()
{
  [v0 setNeedsLayout];
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_labelsView];
  if (v0[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v2 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v2 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v1[qword_1009441B8] = v0[*v2];
  v3 = v1;
  sub_100679A78();
}

void sub_10007BA64(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_getObjectType();
  v8 = sub_10000C518(&unk_100926C40, qword_1007B9FE0);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  if (a3)
  {
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      v12 = v11;
      v20 = a1;
      sub_10007BC74(v12);
      v13 = v20;
    }
  }

  else
  {
    ObjectType = swift_getObjectType();
    (*(a2 + 112))(ObjectType, a2);
    v15 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_100037710(v10, v4 + v15);
    swift_endAccess();
    *(v4 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory) = (*(a2 + 160))(ObjectType, a2);
    sub_10007DAB0();
    v16 = (*(a2 + 136))(ObjectType, a2);
    sub_1005F3E54(v16);
    if (swift_dynamicCastClass())
    {
      v17 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_riverView);
      v18 = a1;
      v19 = v17;
      sub_10074F9D4();

      swift_unknownObjectWeakAssign();
    }
  }
}

id sub_10007BC74(char *a1)
{
  v3 = [v1 contentView];
  v4 = [a1 contentView];
  v5 = OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_gradientView;
  v6 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_gradientView];
  [v6 setHidden:0];
  [v6 removeFromSuperview];
  v7 = OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_gradientView;
  v8 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_gradientView];
  [v8 setHidden:1];
  [v8 removeFromSuperview];
  v9 = *&v1[v7];
  *&v1[v7] = v6;
  v10 = v6;

  [v3 addSubview:v10];
  v11 = *&a1[v5];
  *&a1[v5] = v8;
  v12 = v8;

  [v4 addSubview:v12];
  v50 = [v1 contentView];
  v51 = [a1 contentView];
  v13 = OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_riverContainerView;
  v14 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_riverContainerView];
  [v14 setHidden:0];
  [v14 removeFromSuperview];
  v15 = OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_riverContainerView;
  v16 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_riverContainerView];
  [v16 setHidden:1];
  [v16 removeFromSuperview];
  v17 = *&v1[v15];
  *&v1[v15] = v14;
  v18 = v1;
  v19 = v14;

  [v50 addSubview:v19];
  v20 = *&a1[v13];
  *&a1[v13] = v16;
  v21 = a1;
  v22 = v16;

  [v51 addSubview:v22];
  v23 = *&v1[v15];
  v24 = *&a1[v13];
  v25 = OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_riverView;
  v26 = *&v21[OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_riverView];
  v27 = v23;
  v28 = v24;
  [v26 setHidden:0];
  [v26 removeFromSuperview];
  v29 = OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_riverView;
  v30 = *&v18[OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_riverView];
  [v30 setHidden:1];
  [v30 removeFromSuperview];
  v31 = *&v18[v29];
  *&v18[v29] = v26;
  v32 = v18;
  v33 = v26;

  [v27 addSubview:v33];
  v34 = *&v21[v25];
  *&v21[v25] = v30;
  v35 = v21;
  v36 = v30;

  [v28 addSubview:v36];
  v37 = [v32 contentView];
  v38 = [v35 contentView];
  v39 = OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_labelsView;
  v40 = *&v35[OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_labelsView];
  [v40 setHidden:0];
  [v40 removeFromSuperview];
  v41 = OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_labelsView;
  v42 = *&v32[OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_labelsView];
  [v42 setHidden:1];
  [v42 removeFromSuperview];
  v43 = *&v32[v41];
  *&v32[v41] = v40;
  v44 = v32;
  v45 = v40;

  [v37 addSubview:v45];
  v46 = *&v35[v39];
  *&v35[v39] = v42;
  v47 = v35;
  v48 = v42;

  [v38 addSubview:v48];
  [v47 setNeedsLayout];

  return [v44 setNeedsLayout];
}

void sub_10007C114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v128 = a4;
  v6 = a2;
  v7 = sub_10074A2E4();
  v127 = *(v7 - 8);
  __chkstk_darwin(v7);
  v135 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_10074FB54();
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v10 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_1007497C4();
  v11 = *(v124 - 8);
  __chkstk_darwin(v124);
  v133 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&unk_100926C40, qword_1007B9FE0);
  __chkstk_darwin(v13 - 8);
  v15 = &v111 - v14;
  v16 = sub_10074F704();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v15, a3, v16);
  (*(v17 + 56))(v15, 0, 1, v16);
  v18 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_100037710(v15, &v4[v18]);
  swift_endAccess();
  v134 = v6;
  sub_1005F3E54(v6);
  v136 = v4;
  v19 = [v4 backgroundView];
  if (v19)
  {
    v20 = v19;
    v21 = sub_10074FA74();
    if (!v21)
    {
      sub_10000D198();
      v21 = sub_100753E64();
    }

    v22 = v21;
    [v20 setBackgroundColor:v21];
  }

  v23 = sub_10074FB64();
  sub_100748774();
  v24 = swift_dynamicCastClass();
  if (!v24)
  {
    goto LABEL_83;
  }

  v119 = v24;
  v120 = v11;
  v25 = *&v136[OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_labelsView];
  v26 = sub_10074FB94();
  v132 = v27;
  v123 = sub_10074FB84();
  v129 = v28;
  v115 = sub_10074FA54();
  v131 = v29;
  sub_10074FAC4();
  v30 = sub_10074FAA4();
  v122 = v31;
  v130 = v10;
  sub_10074FB74();
  sub_10074FAE4();
  v32 = v134;
  v117 = v23;
  v121 = v7;
  v116 = v30;
  if (v134 == 4)
  {
    v118 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v33 = sub_1000ED848;
  }

  else
  {
    v33 = sub_1000ED848;
    v118 = sub_100184128;
  }

  v25[qword_1009441E8] = 0;
  v34 = *&v25[qword_1009441D0];
  *(v34 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v35 = *&v25[qword_1009441C8];
  sub_10020D440(v26, v132);
  v36 = sub_10074A2D4();
  v37 = OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label;
  v38 = *&v35[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label];
  if (v32 == 4 && (v36 & 1) == 0)
  {
    if (([v38 isHidden] & 1) != 0 || (v35[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
    {
      [*&v35[v37] setHidden:1];
      goto LABEL_24;
    }

    [*&v35[v37] setHidden:1];
    v35[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    goto LABEL_22;
  }

  v39 = [v38 text];
  if (v39)
  {
    v40 = v39;
    sub_100753094();
  }

  v41 = sub_100753114();
  v42 = v41 & 1;

  if (v42 != [*&v35[v37] isHidden] && (v35[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_isTransitioning] & 1) != 0)
  {
    if ((v41 & 1) == 0)
    {
      [*&v35[v37] setAlpha:0.0];
      v113 = objc_opt_self();
      [v113 inheritedAnimationDuration];
      v44 = v43;
      v45 = swift_allocObject();
      *(v45 + 16) = v35;
      v141 = sub_100037A70;
      v142 = v45;
      v114 = sub_1000ED848;
      aBlock = _NSConcreteStackBlock;
      v138 = 1107296256;
      v139 = sub_1000CF7B0;
      v140 = &unk_1008658B8;
      v112 = _Block_copy(&aBlock);
      v46 = v35;
      v111 = v46;

      v47 = swift_allocObject();
      *(v47 + 16) = v46;
      v141 = sub_100037A7C;
      v142 = v47;
      v33 = v114;
      aBlock = _NSConcreteStackBlock;
      v138 = 1107296256;
      v139 = sub_100144DD8;
      v140 = &unk_100865908;
      v48 = _Block_copy(&aBlock);
      v49 = v111;

      v50 = v112;
      [v113 animateWithDuration:0 delay:v112 options:v48 animations:v44 completion:0.0];
      _Block_release(v48);
      _Block_release(v50);
    }

    [*&v35[v37] setHidden:v41 & 1];
    v35[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
LABEL_22:
    [v35 setNeedsLayout];
    goto LABEL_24;
  }

  [*&v35[v37] setHidden:v42];
LABEL_24:
  v51 = &v25[qword_1009441F0];
  *v51 = sub_100046F68;
  v51[1] = 0;
  v51[2] = sub_100668920;
  v51[3] = 0;
  v51[4] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v51[5] = 0;
  v51[6] = v118;
  v51[7] = 0;
  v51[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v51[9] = 0;
  v51[10] = v33;
  v51[11] = 0;

  sub_100679B2C();
  v52 = v130;
  if (v129)
  {
    if (v134 == 4)
    {
      sub_10067B3D8();
    }

    else
    {
      sub_10067B3FC();
    }

    v53 = OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label;
    v54 = *(v34 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label);
    v55 = objc_allocWithZone(NSAttributedString);
    v56 = v54;
    v57 = sub_100753064();
    type metadata accessor for Key(0);
    sub_10007DB98(&qword_1009276F0, type metadata accessor for Key, &unk_1007A543C);
    isa = sub_100752F34().super.isa;

    v59 = [v55 initWithString:v57 attributes:isa];

    [v56 setAttributedText:v59];
    [*(v34 + v53) setAdjustsFontSizeToFitWidth:0];
    [*(v34 + v53) setMinimumScaleFactor:0.0];
    [*(v34 + v53) setAttributedText:0];
    if (v131 && v25[qword_1009441C0] == 4)
    {
      v52 = v130;
      if (v134 == 4)
      {
        v60 = v123;
        v61 = v129;
        v62 = v115;
        v63 = v131;
      }

      else
      {
        v60 = v115;
        v61 = v131;
        v62 = v123;
        v63 = v129;
      }

      sub_10020D538(v60, v61, v62, v63);
    }

    else
    {
      sub_10020D440(v123, v129);
      v52 = v130;
    }
  }

  v64 = OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label;
  v65 = *(v34 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label);
  v66 = [v65 text];
  if (v66 || (v66 = [*(v34 + v64) attributedText]) != 0)
  {

    v67 = 0;
  }

  else
  {
    v67 = 1;
  }

  v68 = v134;
  [v65 setHidden:v67];

  [v25 setNeedsLayout];
  v69 = *&v25[qword_1009441D8];
  [v69 setImage:0];
  [v69 setHidden:1];
  v70 = v68 == 4;
  v71 = v122;
  if (v70 || (sub_10074A2B4() & 1) != 0 || !v71)
  {
    v74 = *&v25[qword_1009441E0];
    v75 = &v74[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label];
    v76 = *&v74[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label];
    if (!v71)
    {
      v77 = v76;
      v78 = 0;
      v73 = 1;
      goto LABEL_48;
    }

    v73 = 1;
  }

  else
  {
    v72 = HIBYTE(v71) & 0xF;
    if ((v71 & 0x2000000000000000) == 0)
    {
      v72 = v116 & 0xFFFFFFFFFFFFLL;
    }

    v73 = v72 == 0;
    v74 = *&v25[qword_1009441E0];
    v75 = &v74[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label];
    v76 = *&v74[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label];
  }

  v77 = v76;
  v78 = sub_100753064();
LABEL_48:
  [v77 setText:v78];

  if (v73 == [*v75 isHidden] || (v74[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
  {
    [*v75 setHidden:v73];
  }

  else
  {
    if (!v73)
    {
      [*v75 setAlpha:0.0];
      v79 = objc_opt_self();
      [v79 inheritedAnimationDuration];
      v81 = v80;
      v82 = swift_allocObject();
      *(v82 + 16) = v74;
      v141 = sub_1000377B8;
      v142 = v82;
      aBlock = _NSConcreteStackBlock;
      v138 = 1107296256;
      v139 = sub_1000CF7B0;
      v140 = &unk_100865818;
      v83 = _Block_copy(&aBlock);
      v84 = v74;

      v85 = swift_allocObject();
      *(v85 + 16) = v84;
      v141 = sub_1000377D8;
      v142 = v85;
      aBlock = _NSConcreteStackBlock;
      v138 = 1107296256;
      v139 = sub_100144DD8;
      v140 = &unk_100865868;
      v86 = _Block_copy(&aBlock);
      v87 = v84;
      v52 = v130;

      [v79 animateWithDuration:0 delay:v83 options:v86 animations:v81 completion:0.0];
      _Block_release(v86);
      _Block_release(v83);
    }

    [*v75 setHidden:v73];
    v74[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    [v74 setNeedsLayout];
  }

  sub_10067859C(v52, 1);
  [v25 setNeedsLayout];

  (*(v127 + 8))(v135, v121);
  (*(v125 + 8))(v52, v126);
  (*(v120 + 8))(v133, v124);
  v88 = sub_100748764();
  v89 = OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_riverView;
  v90 = v136;
  v91 = *&v136[OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_riverView];
  v92 = sub_10074F9A4();

  swift_beginAccess();
  *(v92 + 32) = v88;

  v93 = *&v90[v89];
  v94 = sub_10074F9A4();

  sub_1007442C4();
  sub_100752764();
  sub_100752D34();
  *(v94 + 16) = v143;

  v143 = _swiftEmptyArrayStorage;
  v95 = v88 & 0xFFFFFFFFFFFFFF8;
  if (v88 >> 62)
  {
LABEL_89:
    v96 = sub_100754664();
  }

  else
  {
    v96 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v97 = 0;
  v98 = _swiftEmptyArrayStorage;
  while (v96 != v97)
  {
    if ((v88 & 0xC000000000000001) != 0)
    {
      sub_100754574();
      v99 = v97 + 1;
      if (__OFADD__(v97, 1))
      {
        goto LABEL_85;
      }
    }

    else
    {
      if (v97 >= *(v95 + 16))
      {
        goto LABEL_86;
      }

      v99 = v97 + 1;
      if (__OFADD__(v97, 1))
      {
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }
    }

    v100 = sub_10074EF64();

    ++v97;
    if (v100)
    {
      sub_100753284();
      if (*((v143 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v143 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100753304();
      }

      sub_100753344();
      v98 = v143;
      v97 = v99;
    }
  }

  v101 = sub_10007AA20(v98);
  v88 = v101;
  v102 = *&v136[OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_gradientView];
  v143 = _swiftEmptyArrayStorage;
  v95 = v101 & 0xFFFFFFFFFFFFFF8;
  if (v101 >> 62)
  {
    v103 = sub_100754664();
  }

  else
  {
    v103 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v104 = v102;
  v105 = 0;
  v106 = _swiftEmptyArrayStorage;
  while (v103 != v105)
  {
    if ((v88 & 0xC000000000000001) != 0)
    {
      sub_100754574();
      v107 = v105 + 1;
      if (__OFADD__(v105, 1))
      {
        goto LABEL_87;
      }
    }

    else
    {
      if (v105 >= *(v95 + 16))
      {
        goto LABEL_88;
      }

      v107 = v105 + 1;
      if (__OFADD__(v105, 1))
      {
        goto LABEL_87;
      }
    }

    v108 = sub_10074F1E4();

    ++v105;
    if (v108)
    {
      sub_100753284();
      if (*((v143 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v143 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100753304();
      }

      sub_100753344();
      v106 = v143;
      v105 = v107;
    }
  }

  v109 = OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_colors;
  swift_beginAccess();
  v110 = *&v104[v109];
  *&v104[v109] = v106;
  sub_1001596B4(v110);

  [v136 setNeedsLayout];
LABEL_83:
}

double sub_10007D324()
{
  sub_10074FBB4();
  sub_10007DB98(&qword_100926C60, &type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
  sub_1007468B4();
  if (v9)
  {
    sub_10074FB64();

    sub_100748774();
    if (!swift_dynamicCastClass() || (sub_100748764(), sub_10074EFD4(), v1 = sub_1007532D4(), , (v1 & 1) == 0))
    {

      return result;
    }

    v2 = sub_100748764();
    v3 = v2;
    v4 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v2 >> 62)
    {
LABEL_24:
      v5 = sub_100754664();
      if (v5)
      {
LABEL_6:
        v6 = 0;
        do
        {
          v7 = v6;
          while (1)
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              sub_100754574();
              v6 = v7 + 1;
              if (__OFADD__(v7, 1))
              {
                goto LABEL_22;
              }
            }

            else
            {
              if (v7 >= *(v4 + 16))
              {
                goto LABEL_23;
              }

              v6 = v7 + 1;
              if (__OFADD__(v7, 1))
              {
LABEL_22:
                __break(1u);
LABEL_23:
                __break(1u);
                goto LABEL_24;
              }
            }

            if (sub_10074EF24())
            {
              break;
            }

            ++v7;
            if (v6 == v5)
            {
              goto LABEL_25;
            }
          }

          sub_10074F374();

          sub_100753284();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_100753304();
          }

          sub_100753344();
        }

        while (v6 != v5);
      }
    }

    else
    {
      v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
        goto LABEL_6;
      }
    }

LABEL_25:

    v8._rawValue = _swiftEmptyArrayStorage;
    sub_100744224(v8);
  }

  return result;
}

double sub_10007D5B8()
{
  v1 = v0;
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "prepareForReuse");
  v2 = OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_riverView;
  v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_riverView];
  v4 = sub_10074F9A4();

  swift_beginAccess();
  *(v4 + 32) = _swiftEmptyArrayStorage;

  v5 = *&v1[v2];
  sub_10074FA34();

  v6 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_gradientView];
  v7 = OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_colors;
  swift_beginAccess();
  v8 = *&v6[v7];
  *&v6[v7] = _swiftEmptyArrayStorage;
  v9 = v6;
  sub_1001596B4(v8);

  return result;
}

uint64_t sub_10007D7AC()
{

  v1 = OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_riverStyling;
  v2 = sub_100746264();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_unknownObjectWeakDestroy();
}

uint64_t type metadata accessor for RiverTodayCardCollectionViewCell(uint64_t a1)
{
  result = qword_100924E78;
  if (!qword_100924E78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10007D994(uint64_t a1)
{
  result = sub_100746264();
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

uint64_t sub_10007DA60()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_10007DA98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_10007DAB0()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  if (v0[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory] == 4)
  {
    v2 = [v0 contentView];
    [v2 setClipsToBounds:1];
  }

  result = [v0 setNeedsLayout];
  v4 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_labelsView];
  v5 = v0[v1];
  *(v4 + qword_1009441C0) = v5;
  if (v5 != 7)
  {
    *(*(v4 + qword_1009441C8) + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_originalSizeCategory) = v5;
    *(*(v4 + qword_1009441D0) + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_originalSizeCategory) = v5;
    *(*(v4 + qword_1009441E0) + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_originalSizeCategory) = v5;
  }

  return result;
}

uint64_t sub_10007DB98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_10007DC04()
{
  v0 = sub_10074F704();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100747C14();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100746884();
  sub_100747B84();
  v8 = *(v5 + 8);
  v8(v7, v4);
  sub_10074F5C4();
  v10 = v9;
  (*(v1 + 8))(v3, v0);
  sub_100746884();
  v11 = sub_100747B94();
  v8(v7, v4);
  v12 = type metadata accessor for SnapshotPageTraitEnvironment();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v14 = v10;
  *(v14 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v13[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_traitCollection] = v11;
  v16.receiver = v13;
  v16.super_class = v12;
  return objc_msgSendSuper2(&v16, "init");
}

id sub_10007DE10(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100750534();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension35DebugStorefrontPickerViewController_presenter] = a1;
  v8 = objc_allocWithZone(UIPickerView);

  v9 = [v8 init];
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension35DebugStorefrontPickerViewController_countryPicker] = v9;
  v10 = [objc_allocWithZone(UIPickerView) init];
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension35DebugStorefrontPickerViewController_languagePicker] = v10;
  sub_1007466C4();
  if (qword_100921400 != -1)
  {
    swift_once();
  }

  v11 = sub_10000D0FC(v4, qword_100981938);
  v12 = *(v5 + 16);
  v12(v7, v11, v4);
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension35DebugStorefrontPickerViewController_submitButton] = sub_1007466B4();
  v12(v7, v11, v4);
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension35DebugStorefrontPickerViewController_backToUSButton] = sub_1007466B4();
  v13 = type metadata accessor for DebugStorefrontPickerViewController();
  v17.receiver = v2;
  v17.super_class = v13;
  v14 = objc_msgSendSuper2(&v17, "initWithNibName:bundle:", 0, 0);
  sub_10007F01C(&qword_100924FB0, &unk_1007A8A34);
  v15 = v14;
  sub_10074CEF4();

  return v15;
}

id sub_10007E0A4()
{
  v1 = v0;
  v29.receiver = v0;
  v29.super_class = type metadata accessor for DebugStorefrontPickerViewController();
  objc_msgSendSuper2(&v29, "viewDidLoad");
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = result;
  [v1 pageMarginInsets];
  [v3 setLayoutMargins:?];

  result = [v1 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  v5 = objc_opt_self();
  v6 = [v5 systemBackgroundColor];
  [v4 setBackgroundColor:v6];

  result = [v1 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = result;
  v8 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension35DebugStorefrontPickerViewController_countryPicker];
  [result addSubview:v8];

  result = [v1 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = result;
  v10 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension35DebugStorefrontPickerViewController_languagePicker];
  [result addSubview:v10];

  result = [v1 view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v11 = result;
  v12 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension35DebugStorefrontPickerViewController_submitButton];
  [result addSubview:v12];

  result = [v1 view];
  if (!result)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v13 = result;
  v14 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension35DebugStorefrontPickerViewController_backToUSButton];
  [result addSubview:v14];

  [v8 setDelegate:v1];
  [v8 setDataSource:v1];
  [v10 setDelegate:v1];
  [v10 setDataSource:v1];
  [v8 selectRow:sub_10074CED4() inComponent:0 animated:0];
  [v10 selectRow:sub_10074CEE4() inComponent:0 animated:0];
  v15 = sub_100753064();
  [v12 setTitle:v15 forState:0];

  v16 = [v12 titleLabel];
  if (v16)
  {
    v17 = v16;
    [v16 setTextAlignment:1];
  }

  result = [v1 view];
  if (!result)
  {
    goto LABEL_20;
  }

  v18 = result;
  v19 = [result tintColor];

  [v12 setBackgroundColor:v19];
  v20 = [v5 whiteColor];
  [v12 setTitleColor:v20 forState:0];

  v21 = [v5 whiteColor];
  [v12 setTitleColor:v21 forState:2];

  [v12 setTitleEdgeInsets:{5.0, 10.0, 5.0, 10.0}];
  [v12 addTarget:v1 action:"setStorefront" forControlEvents:64];
  [v12 _setCornerRadius:10.0];
  sub_10007EAB0();
  v22 = sub_100753064();
  [v14 setTitle:v22 forState:0];

  v23 = [v14 titleLabel];
  if (v23)
  {
    v24 = v23;
    [v23 setTextAlignment:1];
  }

  result = [v1 view];
  if (result)
  {
    v25 = result;
    v26 = [result tintColor];

    [v14 setBackgroundColor:v26];
    v27 = [v5 whiteColor];
    [v14 setTitleColor:v27 forState:0];

    v28 = [v5 whiteColor];
    [v14 setTitleColor:v28 forState:2];

    [v14 setTitleEdgeInsets:{5.0, 10.0, 5.0, 10.0}];
    [v14 addTarget:v1 action:"setStorefrontToUS" forControlEvents:64];
    return [v14 _setCornerRadius:10.0];
  }

LABEL_21:
  __break(1u);
  return result;
}

void sub_10007E678()
{
  v1 = v0;
  v40.receiver = v0;
  v40.super_class = type metadata accessor for DebugStorefrontPickerViewController();
  objc_msgSendSuper2(&v40, "viewDidLayoutSubviews");
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension35DebugStorefrontPickerViewController_countryPicker];
    sub_100016C60(0, &qword_100922300, UIView_ptr);
    sub_1007477B4();
    [v4 sizeThatFits:{v5, v6}];
    v8 = v7;
    sub_1007477B4();
    MinX = CGRectGetMinX(v41);
    sub_1007477B4();
    v10 = CGRectGetMinY(v42) + 20.0;
    sub_1007477B4();
    [v4 setFrame:{MinX, v10, CGRectGetWidth(v43), v8}];
    v11 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension35DebugStorefrontPickerViewController_languagePicker];
    sub_1007477B4();
    [v11 sizeThatFits:{v12, v13}];
    v15 = v14;
    sub_1007477B4();
    v16 = CGRectGetMinX(v44);
    [v4 frame];
    MaxY = CGRectGetMaxY(v45);
    sub_1007477B4();
    [v11 setFrame:{v16, MaxY, CGRectGetWidth(v46), v15}];
    v18 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension35DebugStorefrontPickerViewController_submitButton];
    sub_1007477B4();
    [v18 measurementsWithFitting:v3 in:{v19, v20}];
    v22 = v21;
    sub_1007477B4();
    v23 = CGRectGetMinX(v47);
    [v11 frame];
    v24 = CGRectGetMaxY(v48) + 20.0;
    sub_1007477B4();
    Width = CGRectGetWidth(v49);
    [v18 titleEdgeInsets];
    v27 = v22 + v26;
    [v18 titleEdgeInsets];
    [v18 setFrame:{v23, v24, Width, v27 + v28}];
    v29 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension35DebugStorefrontPickerViewController_backToUSButton];
    sub_1007477B4();
    [v29 measurementsWithFitting:v3 in:{v30, v31}];
    v33 = v32;
    sub_1007477B4();
    v34 = CGRectGetMinX(v50);
    [v18 frame];
    v35 = CGRectGetMaxY(v51) + 10.0;
    sub_1007477B4();
    v36 = CGRectGetWidth(v52);
    [v29 titleEdgeInsets];
    v38 = v33 + v37;
    [v29 titleEdgeInsets];
    [v29 setFrame:{v34, v35, v36, v38 + v39}];
  }
}

void sub_10007EAB0()
{
  v1 = v0;
  v2 = sub_10074CE74();
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v5 = v2 & 1;
  *(v4 + 24) = v2 & 1;
  v15 = sub_10007F094;
  v16 = v4;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_1000CF7B0;
  v14 = &unk_100865958;
  v6 = _Block_copy(&v11);
  v7 = v1;

  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v5;
  v15 = sub_10007F0E0;
  v16 = v8;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_100144DD8;
  v14 = &unk_1008659A8;
  v9 = _Block_copy(&v11);
  v10 = v7;

  [v3 animateWithDuration:v6 animations:v9 completion:0.2];
  _Block_release(v9);
  _Block_release(v6);
}

id sub_10007EE94()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebugStorefrontPickerViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10007F01C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DebugStorefrontPickerViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10007F05C()
{

  return _swift_deallocObject(v0, 25, 7);
}

id sub_10007F094()
{
  v1 = 0.4;
  if (*(v0 + 24))
  {
    v1 = 1.0;
  }

  return [*(*(v0 + 16) + OBJC_IVAR____TtC22SubscribePageExtension35DebugStorefrontPickerViewController_submitButton) setAlpha:v1];
}

double sub_10007F0C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10007F100(uint64_t a1)
{
  sub_100016C60(0, &qword_1009327F0, NSObject_ptr);
  if (sub_100753FC4())
  {
    return sub_10074CEB4();
  }

  if (sub_100753FC4())
  {
    return sub_10074CEC4();
  }

  return 0;
}

uint64_t sub_10007F1A4(uint64_t a1, uint64_t a2)
{
  sub_100016C60(0, &qword_1009327F0, NSObject_ptr);
  if (sub_100753FC4())
  {
    return sub_10074CF04();
  }

  if (sub_100753FC4())
  {
    return sub_10074CF14();
  }

  return 0;
}

uint64_t sub_10007F260(uint64_t a1, uint64_t a2)
{
  sub_100016C60(0, &qword_1009327F0, NSObject_ptr);
  if (sub_100753FC4())
  {
    return sub_10074CE94();
  }

  result = sub_100753FC4();
  if (result)
  {
    return sub_10074CEA4();
  }

  return result;
}

id sub_10007F344(uint64_t a1, SEL *a2, uint64_t a3, void *a4)
{
  v7 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  result = [v7 *a2];
  *a4 = v7;
  return result;
}

double sub_10007F3A0()
{
  v1 = sub_100744194();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1007498B4())
  {
    v6 = sub_1007498A4();
    v7 = *(v6 + 16);
    if (v7)
    {
      v26 = v1;
      v27 = v0;
      v9 = *(v2 + 16);
      v8 = v2 + 16;
      v10 = *(v8 + 64);
      v22 = v6;
      v11 = v6 + ((v10 + 32) & ~v10);
      v23 = *(v8 + 56);
      v24 = v9;
      v25 = v8;
      v12 = (v8 - 8);
      v9(v4, v11, v1);
      while (1)
      {
        v18 = sub_100744164();
        sub_100744184();
        v19 = sub_100753064();

        sub_100744174();
        v20 = sub_100753064();

        sub_100744154();
        v21 = sub_100753064();

        if (v18)
        {
          v14 = [objc_opt_self() imageNamed:{v21, v22}];

          if (v14)
          {
            v13 = &selRef_addBulletedListItemWithTitle_description_image_;
            v21 = v14;
          }

          else
          {
            v21 = [objc_allocWithZone(UIImage) init];
            v13 = &selRef_addBulletedListItemWithTitle_description_image_;
            v14 = v21;
          }

          v15 = v19;
          v16 = v20;
        }

        else
        {
          v13 = &selRef_addBulletedListItemWithTitle_description_symbolName_;
          v14 = v19;
          v15 = v20;
          v16 = v21;
        }

        [v27 *v13];

        v17 = v26;
        (*v12)(v4, v26);
        v11 += v23;
        if (!--v7)
        {
          break;
        }

        v24(v4, v11, v17);
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_10007F63C()
{
  v1 = v0;
  v2 = sub_100752AC4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100741574();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_opt_self();
  sub_100749894();
  isa = sub_100753294().super.isa;

  v12 = [v10 linkWithBundleIdentifiers:isa];

  if (v12)
  {
    v13 = v12;
    sub_100741544();
    sub_1007414A4();
    (*(v7 + 8))(v9, v6);
    v14 = sub_100753064();

    [v13 setDisplayLanguage:v14];
  }

  v15 = [v1 buttonTray];
  [v15 setPrivacyLinkController:v12];

  v16 = [objc_opt_self() boldButton];
  v21._object = 0x8000000100768100;
  v21._countAndFlagsBits = 0xD00000000000001FLL;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  sub_1007458B4(v21, v22);
  v17 = sub_100753064();

  [v16 setTitle:v17 forState:0];

  [v16 addTarget:v1 action:"didTapContinue" forControlEvents:64];
  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  sub_100752A14();
  sub_1000277BC(v19);
  sub_1000277BC(v20);
  sub_100753C74();
  (*(v3 + 8))(v5, v2);
  v18 = [v1 buttonTray];
  [v18 addButton:v16];
}

uint64_t type metadata accessor for OnboardingWelcomeViewController(uint64_t a1)
{
  result = qword_100924FF0;
  if (!qword_100924FF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10007FBD0(uint64_t a1)
{
  result = sub_1007498E4();
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

id sub_10007FC70(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_1007422C4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC22SubscribePageExtension31OnboardingWelcomeViewController_onboardingStep;
  v15 = sub_1007498E4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 16);
  v32 = v15;
  v17(&v5[v14], a1);
  v18 = &v5[OBJC_IVAR____TtC22SubscribePageExtension31OnboardingWelcomeViewController_primaryButtonCallback];
  *v18 = a3;
  *(v18 + 1) = a4;

  v33 = a1;
  if (sub_1007498B4())
  {
    v19 = "Onboarding.Welcome.Description";
    if (a2)
    {
      v19 = "New.Title.NoArcade";
      v20._countAndFlagsBits = 0xD000000000000019;
    }

    else
    {
      v20._countAndFlagsBits = 0xD000000000000022;
    }

    v20._object = (v19 | 0x8000000000000000);
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    sub_1007458B4(v20, v38);
    v21 = sub_100753064();

    v34.receiver = v5;
    v34.super_class = ObjectType;
    v22 = objc_msgSendSuper2(&v34, "initWithTitle:detailText:icon:contentLayout:", v21, 0, 0, 2);

    v23 = v22;
    sub_10007F3A0();
  }

  else
  {
    v36._object = 0x8000000100768070;
    v36._countAndFlagsBits = 0xD000000000000018;
    v39._countAndFlagsBits = 0;
    v39._object = 0xE000000000000000;
    sub_1007458B4(v36, v39);
    v37._countAndFlagsBits = 0xD00000000000001ELL;
    v37._object = 0x8000000100768090;
    v40._countAndFlagsBits = 0;
    v40._object = 0xE000000000000000;
    sub_1007458B4(v37, v40);
    v24 = sub_100753064();

    v25 = sub_100753064();

    (*(v11 + 104))(v13, enum case for SystemAppIcon.AppStore(_:), v10);
    v26 = [objc_opt_self() mainScreen];
    [v26 scale];

    v27 = sub_1007422B4();
    (*(v11 + 8))(v13, v10);
    v35.receiver = v5;
    v35.super_class = ObjectType;
    v28 = objc_msgSendSuper2(&v35, "initWithTitle:detailText:icon:contentLayout:", v24, v25, v27, 2);

    v23 = v28;
  }

  sub_10007F63C();
  [v23 setModalInPresentation:1];

  (*(v16 + 8))(v33, v32);
  return v23;
}

void sub_100080000(double a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v12._object = 0x80000001007681D0;
  v13._countAndFlagsBits = 0xD000000000000050;
  v13._object = 0x80000001007681F0;
  v12._countAndFlagsBits = 0xD000000000000017;
  sub_1007458B4(v12, v13);
  v8 = sub_100753194();

  v9 = v8 < 19;
  v10 = sub_1006BA340(v8 < 19);
  v11 = sub_1006BA60C(v9);
  [v10 size];
  [v11 size];

  sub_1006BC684(1, v9, 0, 2, a3, a4, a1);
}

uint64_t sub_100080178()
{
  *(v0 + 16) = [objc_opt_self() standardUserDefaults];
  v1 = OBJC_IVAR____TtC22SubscribePageExtension29DebugSettingCellRegistrations_navigationActionRegistration;
  v2 = sub_10000C518(&unk_100925040, &qword_1007A8B10);
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC22SubscribePageExtension29DebugSettingCellRegistrations_actionRegistration, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC22SubscribePageExtension29DebugSettingCellRegistrations_stringUserDefaultRegistration, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC22SubscribePageExtension29DebugSettingCellRegistrations_BOOLUserDefaultRegistration, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC22SubscribePageExtension29DebugSettingCellRegistrations_stringPreferenceRegistration, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC22SubscribePageExtension29DebugSettingCellRegistrations_BOOLPreferenceRegistration, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC22SubscribePageExtension29DebugSettingCellRegistrations_promptActionRegistration, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC22SubscribePageExtension29DebugSettingCellRegistrations_infoSettingRegistration, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC22SubscribePageExtension29DebugSettingCellRegistrations_menuRegistration, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC22SubscribePageExtension29DebugSettingCellRegistrations_menuItemRegistration, 1, 1, v2);
  sub_100080F08();
  return v0;
}

uint64_t sub_10008036C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v76 = a1;
  v75 = a3;
  v4 = sub_10000C518(&qword_100925210, &qword_1007A8B18);
  __chkstk_darwin(v4 - 8);
  v74 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v72 - v7;
  __chkstk_darwin(v9);
  v11 = &v72 - v10;
  __chkstk_darwin(v12);
  v14 = &v72 - v13;
  __chkstk_darwin(v15);
  v17 = (&v72 - v16);
  __chkstk_darwin(v18);
  v20 = &v72 - v19;
  __chkstk_darwin(v21);
  v23 = &v72 - v22;
  __chkstk_darwin(v24);
  v26 = &v72 - v25;
  __chkstk_darwin(v27);
  v29 = &v72 - v28;
  __chkstk_darwin(v30);
  v32 = &v72 - v31;
  type metadata accessor for NavigationActionDebugSetting();
  if (swift_dynamicCastClass())
  {
    v33 = a2;
    v34 = OBJC_IVAR____TtC22SubscribePageExtension29DebugSettingCellRegistrations_navigationActionRegistration;
    v35 = v77;
    swift_beginAccess();
    sub_1000847BC(v35 + v34, v32);
    v36 = sub_10000C518(&unk_100925040, &qword_1007A8B10);
    v37 = *(v36 - 8);
    result = (*(v37 + 48))(v32, 1, v36);
    if (result != 1)
    {
      v78 = v33;
      sub_100016C60(0, &qword_100925218, UICollectionViewListCell_ptr);
      type metadata accessor for DebugSetting();

      v39 = sub_100753694();

      (*(v37 + 8))(v32, v36);
      return v39;
    }

    __break(1u);
    goto LABEL_37;
  }

  v73 = v29;
  v40 = v77;
  v41 = v74;
  type metadata accessor for ActionDebugSetting();
  if (swift_dynamicCastClass())
  {
    v42 = a2;
    v43 = OBJC_IVAR____TtC22SubscribePageExtension29DebugSettingCellRegistrations_actionRegistration;
    swift_beginAccess();
    v44 = v73;
    sub_1000847BC(v40 + v43, v73);
    v45 = sub_10000C518(&unk_100925040, &qword_1007A8B10);
    v46 = *(v45 - 8);
    result = (*(v46 + 48))(v44, 1, v45);
    if (result == 1)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v78 = v42;
    sub_100016C60(0, &qword_100925218, UICollectionViewListCell_ptr);
    type metadata accessor for DebugSetting();

    v39 = sub_100753694();

    (*(v46 + 8))(v44, v45);
    return v39;
  }

  type metadata accessor for StringUserDefaultsDebugSetting();
  if (swift_dynamicCastClass())
  {
    v47 = a2;
    v48 = OBJC_IVAR____TtC22SubscribePageExtension29DebugSettingCellRegistrations_stringPreferenceRegistration;
    swift_beginAccess();
    sub_1000847BC(v40 + v48, v26);
    v49 = sub_10000C518(&unk_100925040, &qword_1007A8B10);
    v50 = *(v49 - 8);
    result = (*(v50 + 48))(v26, 1, v49);
    if (result == 1)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v78 = v47;
    sub_100016C60(0, &qword_100925218, UICollectionViewListCell_ptr);
    type metadata accessor for DebugSetting();

    v39 = sub_100753694();

    v51 = *(v50 + 8);
    v52 = v26;
    goto LABEL_14;
  }

  type metadata accessor for BoolUserDefaultsDebugSetting();
  if (swift_dynamicCastClass())
  {
    v53 = a2;
    v54 = OBJC_IVAR____TtC22SubscribePageExtension29DebugSettingCellRegistrations_BOOLUserDefaultRegistration;
    swift_beginAccess();
    v55 = v23;
    sub_1000847BC(v40 + v54, v23);
    v49 = sub_10000C518(&unk_100925040, &qword_1007A8B10);
    v56 = *(v49 - 8);
    result = (*(v56 + 48))(v55, 1, v49);
    if (result == 1)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v78 = v53;
    sub_100016C60(0, &qword_100925218, UICollectionViewListCell_ptr);
    type metadata accessor for DebugSetting();

    v39 = sub_100753694();

    v51 = *(v56 + 8);
    v52 = v55;
LABEL_14:
    v51(v52, v49);
    return v39;
  }

  type metadata accessor for StringPreferencesDebugSetting(0);
  v57 = swift_dynamicCastClass();
  if (v57)
  {
    v41 = a2;
    v58 = OBJC_IVAR____TtC22SubscribePageExtension29DebugSettingCellRegistrations_stringPreferenceRegistration;
    swift_beginAccess();
    v59 = v20;
    sub_1000847BC(v40 + v58, v20);
    a2 = sub_10000C518(&unk_100925040, &qword_1007A8B10);
    v17 = *(a2 - 8);
    v57 = v17[6](v20, 1, a2);
    if (v57 != 1)
    {
      goto LABEL_21;
    }

    __break(1u);
  }

  type metadata accessor for BoolPreferencesDebugSetting(v57);
  if (swift_dynamicCastClass())
  {
    v41 = a2;
    v60 = OBJC_IVAR____TtC22SubscribePageExtension29DebugSettingCellRegistrations_BOOLPreferenceRegistration;
    swift_beginAccess();
    v59 = v17;
    sub_1000847BC(v40 + v60, v17);
    a2 = sub_10000C518(&unk_100925040, &qword_1007A8B10);
    v17 = *(a2 - 8);
    result = v17[6](v59, 1, a2);
    if (result == 1)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    goto LABEL_21;
  }

  type metadata accessor for PromptActionDebugSetting();
  if (swift_dynamicCastClass())
  {
    v61 = a2;
    v62 = OBJC_IVAR____TtC22SubscribePageExtension29DebugSettingCellRegistrations_promptActionRegistration;
    swift_beginAccess();
    sub_1000847BC(v40 + v62, v14);
    v63 = sub_10000C518(&unk_100925040, &qword_1007A8B10);
    v64 = *(v63 - 8);
    result = (*(v64 + 48))(v14, 1, v63);
    if (result == 1)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v78 = v61;
    sub_100016C60(0, &qword_100925218, UICollectionViewListCell_ptr);
    type metadata accessor for DebugSetting();

    v39 = sub_100753694();

    (*(v64 + 8))(v14, v63);
    return v39;
  }

  type metadata accessor for InfoDebugSetting();
  if (swift_dynamicCastClass())
  {
    v65 = a2;
    v66 = OBJC_IVAR____TtC22SubscribePageExtension29DebugSettingCellRegistrations_infoSettingRegistration;
    swift_beginAccess();
    sub_1000847BC(v40 + v66, v11);
    v67 = sub_10000C518(&unk_100925040, &qword_1007A8B10);
    v68 = *(v67 - 8);
    result = (*(v68 + 48))(v11, 1, v67);
    if (result == 1)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v78 = v65;
    sub_100016C60(0, &qword_100925218, UICollectionViewListCell_ptr);
    type metadata accessor for DebugSetting();

    v39 = sub_100753694();

    (*(v68 + 8))(v11, v67);
    return v39;
  }

  type metadata accessor for MenuDebugSetting();
  if (swift_dynamicCastClass())
  {
    v41 = a2;
    v69 = OBJC_IVAR____TtC22SubscribePageExtension29DebugSettingCellRegistrations_menuRegistration;
    swift_beginAccess();
    v59 = v8;
    sub_1000847BC(v40 + v69, v8);
    a2 = sub_10000C518(&unk_100925040, &qword_1007A8B10);
    v17 = *(a2 - 8);
    if (v17[6](v8, 1, a2) == 1)
    {
      __break(1u);
      goto LABEL_32;
    }

LABEL_21:
    v78 = v41;
LABEL_22:
    sub_100016C60(0, &qword_100925218, UICollectionViewListCell_ptr);
    type metadata accessor for DebugSetting();

    v39 = sub_100753694();

    (v17[1])(v59, a2);
    return v39;
  }

LABEL_32:
  type metadata accessor for MenuItemDebugSetting();
  v70 = a2;
  if (!swift_dynamicCastClass())
  {
    return 0;
  }

  v71 = OBJC_IVAR____TtC22SubscribePageExtension29DebugSettingCellRegistrations_menuItemRegistration;
  swift_beginAccess();
  v59 = v41;
  sub_1000847BC(v40 + v71, v41);
  a2 = sub_10000C518(&unk_100925040, &qword_1007A8B10);
  v17 = *(a2 - 8);
  result = v17[6](v41, 1, a2);
  if (result != 1)
  {
    v78 = v70;
    goto LABEL_22;
  }

LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_100080F08()
{
  v1 = sub_10000C518(&qword_100925210, &qword_1007A8B18);
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - v2;
  sub_100016C60(0, &qword_100925218, UICollectionViewListCell_ptr);
  type metadata accessor for DebugSetting();
  sub_100753674();
  v4 = sub_10000C518(&unk_100925040, &qword_1007A8B10);
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = OBJC_IVAR____TtC22SubscribePageExtension29DebugSettingCellRegistrations_navigationActionRegistration;
  swift_beginAccess();
  sub_100084610(v3, v0 + v6);
  swift_endAccess();
  sub_100753674();
  v5(v3, 0, 1, v4);
  v7 = OBJC_IVAR____TtC22SubscribePageExtension29DebugSettingCellRegistrations_actionRegistration;
  swift_beginAccess();
  sub_100084610(v3, v0 + v7);
  swift_endAccess();
  v8 = *(v0 + 16);
  *(swift_allocObject() + 16) = v8;
  v9 = v8;
  sub_100753674();
  v5(v3, 0, 1, v4);
  v10 = OBJC_IVAR____TtC22SubscribePageExtension29DebugSettingCellRegistrations_stringUserDefaultRegistration;
  swift_beginAccess();
  sub_100084610(v3, v0 + v10);
  swift_endAccess();
  *(swift_allocObject() + 16) = v9;
  sub_100753674();
  v5(v3, 0, 1, v4);
  v11 = OBJC_IVAR____TtC22SubscribePageExtension29DebugSettingCellRegistrations_BOOLUserDefaultRegistration;
  swift_beginAccess();
  sub_100084610(v3, v0 + v11);
  swift_endAccess();
  sub_100753674();
  v5(v3, 0, 1, v4);
  v12 = OBJC_IVAR____TtC22SubscribePageExtension29DebugSettingCellRegistrations_stringPreferenceRegistration;
  swift_beginAccess();
  sub_100084610(v3, v0 + v12);
  swift_endAccess();
  sub_100753674();
  v5(v3, 0, 1, v4);
  v13 = OBJC_IVAR____TtC22SubscribePageExtension29DebugSettingCellRegistrations_BOOLPreferenceRegistration;
  swift_beginAccess();
  sub_100084610(v3, v0 + v13);
  swift_endAccess();
  sub_100753674();
  v5(v3, 0, 1, v4);
  v14 = OBJC_IVAR____TtC22SubscribePageExtension29DebugSettingCellRegistrations_promptActionRegistration;
  swift_beginAccess();
  sub_100084610(v3, v0 + v14);
  swift_endAccess();
  sub_100753674();
  v5(v3, 0, 1, v4);
  v15 = OBJC_IVAR____TtC22SubscribePageExtension29DebugSettingCellRegistrations_infoSettingRegistration;
  swift_beginAccess();
  sub_100084610(v3, v0 + v15);
  swift_endAccess();
  sub_100753674();
  v5(v3, 0, 1, v4);
  v16 = OBJC_IVAR____TtC22SubscribePageExtension29DebugSettingCellRegistrations_menuRegistration;
  swift_beginAccess();
  sub_100084610(v3, v0 + v16);
  swift_endAccess();
  sub_100753674();
  v5(v3, 0, 1, v4);
  v17 = OBJC_IVAR____TtC22SubscribePageExtension29DebugSettingCellRegistrations_menuItemRegistration;
  swift_beginAccess();
  sub_100084610(v3, v0 + v17);
  return swift_endAccess();
}

uint64_t sub_1000814C0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10000C518(&qword_100925220, &unk_1007A8B20);
  __chkstk_darwin(v5 - 8);
  v31 = v27 - v6;
  v7 = sub_100751454();
  v32 = *(v7 - 8);
  __chkstk_darwin(v7);
  v30 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100751394();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1007516E4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a3;
  type metadata accessor for NavigationActionDebugSetting();
  result = swift_dynamicCastClass();
  if (result)
  {
    v19 = result;
    v28 = v7;
    v29 = a1;
    v27[1] = v17;

    sub_1007516D4();

    sub_1007516C4();
    v20 = *(v19 + 72);
    if (v20)
    {
      v21 = *(v19 + 80);

      v20(v22);
      sub_1000164A8(v20, v21);
    }

    sub_100751654();
    v33[3] = v13;
    v33[4] = &protocol witness table for UIListContentConfiguration;
    v27[0] = v13;
    v23 = sub_10000D134(v33);
    (*(v14 + 16))(v23, v16, v13);
    sub_1007538E4();
    sub_10000C518(&qword_100925228, &qword_1007BE6A0);
    sub_100751484();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    v24 = v12;
    (*(v10 + 104))(v12, enum case for UICellAccessory.DisplayedState.always(_:), v9);
    v25 = sub_1007513A4();
    (*(*(v25 - 8) + 56))(v31, 1, 1, v25);
    v26 = v30;
    sub_100751444();
    sub_1007513E4();
    (*(v32 + 8))(v26, v28);
    (*(v10 + 8))(v24, v9);
    sub_100753A14();

    return (*(v14 + 8))(v16, v27[0]);
  }

  return result;
}

uint64_t sub_10008192C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = sub_1007516E4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ActionDebugSetting();
  result = swift_dynamicCastClass();
  if (result)
  {
    v8 = result;

    sub_1007516D4();

    sub_1007516C4();
    if (!*(v8 + 80))
    {
      v9 = *(v8 + 88);
      if (v9)
      {
        v9();
      }
    }

    sub_100751654();
    v12[3] = v3;
    v12[4] = &protocol witness table for UIListContentConfiguration;
    v10 = sub_10000D134(v12);
    (*(v4 + 16))(v10, v6, v3);
    sub_1007538E4();

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_100081AE8(uint64_t a1, uint64_t a2, uint64_t *a3, char *a4)
{
  v26 = a4;
  v29 = a1;
  v5 = sub_10000C518(&qword_100925220, &unk_1007A8B20);
  __chkstk_darwin(v5 - 8);
  v27 = &v24 - v6;
  v7 = sub_100751454();
  v28 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100751394();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1007516E4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a3;
  type metadata accessor for StringUserDefaultsDebugSetting();
  result = swift_dynamicCastClass();
  if (result)
  {
    v24 = v18;
    v25 = v7;

    sub_1007516D4();

    sub_1007516C4();

    v20 = sub_100753064();

    v21 = [v26 valueForKey:v20];

    if (v21)
    {
      sub_100754314();
      swift_unknownObjectRelease();
    }

    else
    {
      v33 = 0u;
      v34 = 0u;
    }

    v30 = v33;
    v31 = v34;
    if (*(&v34 + 1))
    {
      swift_dynamicCast();
    }

    else
    {
      sub_10000C8CC(&v30, &unk_100923520, &qword_1007A5A70);
    }

    sub_100751654();
    *(&v31 + 1) = v14;
    v32 = &protocol witness table for UIListContentConfiguration;
    v22 = sub_10000D134(&v30);
    (*(v15 + 16))(v22, v17, v14);
    sub_1007538E4();
    sub_10000C518(&qword_100925228, &qword_1007BE6A0);
    v26 = v17;
    sub_100751484();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    (*(v11 + 104))(v13, enum case for UICellAccessory.DisplayedState.always(_:), v10);
    v23 = sub_1007513A4();
    (*(*(v23 - 8) + 56))(v27, 1, 1, v23);
    sub_100751444();
    sub_1007513E4();
    (*(v28 + 8))(v9, v25);
    (*(v11 + 8))(v13, v10);
    sub_100753A14();

    return (*(v15 + 8))(v26, v14);
  }

  return result;
}

uint64_t sub_100081FE0(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v7 = sub_10000C518(&qword_100925220, &unk_1007A8B20);
  __chkstk_darwin(v7 - 8);
  v9 = v37 - v8;
  v10 = sub_100751464();
  v43 = *(v10 - 8);
  v44 = v10;
  __chkstk_darwin(v10);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100751404();
  v46 = *(v13 - 8);
  __chkstk_darwin(v13);
  v45 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1007516E4();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a3;
  type metadata accessor for BoolUserDefaultsDebugSetting();
  result = swift_dynamicCastClass();
  if (result)
  {
    v21 = result;
    v40 = v13;
    v41 = v9;
    v37[1] = v19;

    sub_1007516B4();

    sub_1007516C4();
    *(&v51 + 1) = v15;
    v52 = &protocol witness table for UIListContentConfiguration;
    v22 = sub_10000D134(&v50);
    v38 = v16;
    (*(v16 + 16))(v22, v18, v15);
    v42 = a1;
    sub_1007538E4();
    v23 = [objc_allocWithZone(UISwitch) initWithFrame:{0.0, 0.0, 0.0, 0.0}];

    v24 = sub_100753064();

    v25 = [a4 objectForKey:v24];

    if (v25)
    {
      sub_100754314();
      swift_unknownObjectRelease();
    }

    else
    {
      v48 = 0u;
      v49 = 0u;
    }

    v50 = v48;
    v51 = v49;
    v39 = v15;
    if (*(&v49 + 1))
    {
      sub_100016C60(0, &qword_10092BE20, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        v26 = v47;
        [v23 setOn:{objc_msgSend(v47, "BOOLValue")}];

LABEL_10:
        sub_100016C60(0, &qword_100929CC0, UIAction_ptr);
        v27 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v28 = swift_allocObject();
        v28[2] = v27;
        v28[3] = a4;
        v28[4] = v21;

        v29 = a4;
        v30 = sub_100753FF4();
        [v23 addAction:v30 forControlEvents:0x2000];
        sub_10000C518(&qword_100925228, &qword_1007BE6A0);
        sub_100751484();
        *(swift_allocObject() + 16) = xmmword_1007A5A00;
        v31 = &v12[*(sub_10000C518(&qword_100925238, qword_1007A8B40) + 48)];
        v32 = enum case for UICellAccessory.DisplayedState.always(_:);
        v33 = sub_100751394();
        (*(*(v33 - 8) + 104))(v12, v32, v33);
        *v31 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
        v31[1] = 0;
        (*(v43 + 104))(v12, enum case for UICellAccessory.Placement.trailing(_:), v44);
        v34 = sub_1007513A4();
        (*(*(v34 - 8) + 56))(v41, 1, 1, v34);
        v35 = v23;
        v36 = v45;
        sub_1007513F4();
        sub_100751384();
        (*(v46 + 8))(v36, v40);
        sub_100753A14();

        return (*(v38 + 8))(v18, v39);
      }
    }

    else
    {
      sub_10000C8CC(&v50, &unk_100923520, &qword_1007A5A70);
    }

    [v23 setOn:0];
    goto LABEL_10;
  }

  return result;
}

void sub_10008267C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong isOn];
    v8 = sub_100753064();
    [a3 setBool:v7 forKey:v8];
  }
}

uint64_t sub_100082714(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10000C518(&qword_100925220, &unk_1007A8B20);
  __chkstk_darwin(v5 - 8);
  v24 = v22 - v6;
  v7 = sub_100751454();
  v25 = *(v7 - 8);
  v26 = v7;
  __chkstk_darwin(v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100751394();
  v10 = *(v23 - 8);
  __chkstk_darwin(v23);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1007516E4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a3;
  type metadata accessor for StringPreferencesDebugSetting(0);
  result = swift_dynamicCastClass();
  if (result)
  {

    sub_1007516D4();
    v22[1] = a1;
    v22[2] = v17;

    sub_1007516C4();
    swift_getObjectType();
    sub_100752534();
    sub_100751654();
    v27[3] = v13;
    v27[4] = &protocol witness table for UIListContentConfiguration;
    v19 = sub_10000D134(v27);
    (*(v14 + 16))(v19, v16, v13);
    sub_1007538E4();
    sub_10000C518(&qword_100925228, &qword_1007BE6A0);
    sub_100751484();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    v20 = v23;
    (*(v10 + 104))(v12, enum case for UICellAccessory.DisplayedState.always(_:), v23);
    v21 = sub_1007513A4();
    (*(*(v21 - 8) + 56))(v24, 1, 1, v21);
    sub_100751444();
    sub_1007513E4();
    (*(v25 + 8))(v9, v26);
    (*(v10 + 8))(v12, v20);
    sub_100753A14();

    return (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t sub_100082B6C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v37 = a1;
  v3 = sub_10000C518(&qword_100925220, &unk_1007A8B20);
  __chkstk_darwin(v3 - 8);
  v5 = &v29 - v4;
  v6 = sub_100751464();
  v34 = *(v6 - 8);
  v35 = v6;
  __chkstk_darwin(v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100751404();
  v36 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1007516E4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BoolPreferencesDebugSetting(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v17 = result;
    v33 = v5;

    sub_1007516B4();

    sub_1007516C4();

    sub_100751654();
    v38[3] = v12;
    v38[4] = &protocol witness table for UIListContentConfiguration;
    v18 = sub_10000D134(v38);
    v30 = v13;
    v31 = v12;
    (*(v13 + 16))(v18, v15, v12);
    sub_1007538E4();
    v19 = [objc_allocWithZone(UISwitch) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    swift_getObjectType();
    sub_100752534();
    v20 = v38[0];
    v32 = v9;
    if (LOBYTE(v38[0]) == 2)
    {
      v20 = *(v17 + 88);
    }

    [v19 setOn:v20 & 1];
    sub_100016C60(0, &qword_100929CC0, UIAction_ptr);
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 24) = v17;

    v23 = sub_100753FF4();
    [v19 addAction:v23 forControlEvents:0x2000];
    sub_10000C518(&qword_100925228, &qword_1007BE6A0);
    sub_100751484();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    v24 = &v8[*(sub_10000C518(&qword_100925238, qword_1007A8B40) + 48)];
    v25 = enum case for UICellAccessory.DisplayedState.always(_:);
    v26 = sub_100751394();
    (*(*(v26 - 8) + 104))(v8, v25, v26);
    *v24 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v24[1] = 0;
    (*(v34 + 104))(v8, enum case for UICellAccessory.Placement.trailing(_:), v35);
    v27 = sub_1007513A4();
    (*(*(v27 - 8) + 56))(v33, 1, 1, v27);
    v28 = v19;
    sub_1007513F4();
    sub_100751384();
    (*(v36 + 8))(v11, v32);
    sub_100753A14();

    return (*(v30 + 8))(v15, v31);
  }

  return result;
}

void sub_100083158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000C518(&unk_100947360, &qword_1007C3EF0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-v6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    swift_getObjectType();
    (*(v5 + 16))(v7, a3 + OBJC_IVAR____TtC22SubscribePageExtension27BoolPreferencesDebugSetting_key, v4);
    v10[7] = [v9 isOn];
    sub_100752544();
  }
}

uint64_t sub_1000832C0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10000C518(&qword_100925220, &unk_1007A8B20);
  __chkstk_darwin(v5 - 8);
  v32 = v28 - v6;
  v7 = sub_100751454();
  v33 = *(v7 - 8);
  __chkstk_darwin(v7);
  v31 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100751394();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1007516E4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a3;
  type metadata accessor for PromptActionDebugSetting();
  result = swift_dynamicCastClass();
  if (result)
  {
    v19 = result;
    v29 = v7;
    v30 = a1;
    v28[1] = v17;

    sub_1007516D4();

    sub_1007516C4();
    v20 = *(v19 + 72);
    if (v20)
    {
      v21 = *(v19 + 80);

      v20(v22);
      sub_1000164A8(v20, v21);
    }

    sub_100751654();
    sub_100016C60(0, &qword_100923500, UIColor_ptr);
    sub_100753EF4();
    v23 = sub_1007516A4();
    sub_100751674();
    v23(v34, 0);
    v34[3] = v13;
    v34[4] = &protocol witness table for UIListContentConfiguration;
    v28[0] = v13;
    v24 = sub_10000D134(v34);
    (*(v14 + 16))(v24, v16, v13);
    sub_1007538E4();
    sub_10000C518(&qword_100925228, &qword_1007BE6A0);
    sub_100751484();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    v25 = v12;
    (*(v10 + 104))(v12, enum case for UICellAccessory.DisplayedState.always(_:), v9);
    v26 = sub_1007513A4();
    (*(*(v26 - 8) + 56))(v32, 1, 1, v26);
    v27 = v31;
    sub_100751444();
    sub_1007513E4();
    (*(v33 + 8))(v27, v29);
    (*(v10 + 8))(v25, v9);
    sub_100753A14();

    return (*(v14 + 8))(v16, v28[0]);
  }

  return result;
}

uint64_t sub_100083784(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = sub_1007516E4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InfoDebugSetting();
  result = swift_dynamicCastClass();
  if (result)
  {

    sub_1007516D4();

    sub_1007516C4();

    sub_100751654();
    v10[3] = v3;
    v10[4] = &protocol witness table for UIListContentConfiguration;
    v8 = sub_10000D134(v10);
    (*(v4 + 16))(v8, v6, v3);
    sub_1007538E4();

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_100083904(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100751394();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v39 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&qword_100925220, &unk_1007A8B20);
  __chkstk_darwin(v8 - 8);
  v10 = v34 - v9;
  v11 = sub_10000C518(&qword_100925230, &unk_1007A8B30);
  __chkstk_darwin(v11 - 8);
  v13 = v34 - v12;
  v40 = sub_100751434();
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v37 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1007516E4();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a3;
  type metadata accessor for MenuDebugSetting();
  result = swift_dynamicCastClass();
  if (result)
  {
    v21 = result;
    v36 = v5;
    v34[1] = v19;

    sub_1007516D4();

    v22 = sub_1007516C4();
    v23 = (*(v21 + 80))(v41, v22);
    __chkstk_darwin(v23);
    v34[-2] = v41;
    v25 = sub_100150610(sub_1000846C8, &v34[-4], v24);
    v35 = v6;
    if (v25)
    {
    }

    sub_10000C8CC(v41, &unk_1009276E0, &unk_1007A5C70);
    sub_100751654();
    sub_100016C60(0, &qword_100923500, UIColor_ptr);
    sub_100753EF4();
    v26 = sub_1007516A4();
    sub_100751674();
    v26(v41, 0);
    v41[3] = v15;
    v41[4] = &protocol witness table for UIListContentConfiguration;
    v27 = sub_10000D134(v41);
    (*(v16 + 16))(v27, v18, v15);
    v34[0] = a1;
    sub_1007538E4();
    sub_10000C518(&qword_100925228, &qword_1007BE6A0);
    sub_100751484();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    v28 = sub_100751414();
    (*(*(v28 - 8) + 56))(v13, 1, 1, v28);
    v29 = sub_1007513A4();
    (*(*(v29 - 8) + 56))(v10, 1, 1, v29);
    sub_100753DE4();
    v30 = v37;
    sub_100751424();
    v32 = v35;
    v31 = v36;
    v33 = v39;
    (*(v35 + 104))(v39, enum case for UICellAccessory.DisplayedState.always(_:), v36);
    sub_1007513D4();
    (*(v32 + 8))(v33, v31);
    (*(v38 + 8))(v30, v40);
    sub_100753A14();

    return (*(v16 + 8))(v18, v15);
  }

  return result;
}

uint64_t sub_100083EE0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = sub_10000C518(&qword_100925220, &unk_1007A8B20);
  __chkstk_darwin(v3 - 8);
  v23 = v20 - v4;
  v5 = sub_1007513C4();
  v24 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100751394();
  v22 = *(v25 - 8);
  __chkstk_darwin(v25);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1007516E4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MenuItemDebugSetting();
  result = swift_dynamicCastClass();
  if (result)
  {
    v15 = result;
    v21 = v5;

    sub_1007516B4();

    sub_1007516C4();
    v26[3] = v10;
    v26[4] = &protocol witness table for UIListContentConfiguration;
    v16 = sub_10000D134(v26);
    (*(v11 + 16))(v16, v13, v10);
    sub_1007538E4();
    if (*(v15 + 72) == 1)
    {
      sub_10000C518(&qword_100925228, &qword_1007BE6A0);
      v17 = *(sub_100751484() - 8);
      v20[1] = (*(v17 + 80) + 32) & ~*(v17 + 80);
      *(swift_allocObject() + 16) = xmmword_1007A5A00;
      v18 = v22;
      (*(v22 + 104))(v9, enum case for UICellAccessory.DisplayedState.always(_:), v25);
      v19 = sub_1007513A4();
      (*(*(v19 - 8) + 56))(v23, 1, 1, v19);
      sub_1007513B4();
      sub_100751474();
      (*(v24 + 8))(v7, v21);
      (*(v18 + 8))(v9, v25);
    }

    sub_100753A14();

    return (*(v11 + 8))(v13, v10);
  }

  return result;
}

uint64_t sub_100084320()
{
  sub_10000C8CC(v0 + OBJC_IVAR____TtC22SubscribePageExtension29DebugSettingCellRegistrations_navigationActionRegistration, &qword_100925210, &qword_1007A8B18);
  sub_10000C8CC(v0 + OBJC_IVAR____TtC22SubscribePageExtension29DebugSettingCellRegistrations_actionRegistration, &qword_100925210, &qword_1007A8B18);
  sub_10000C8CC(v0 + OBJC_IVAR____TtC22SubscribePageExtension29DebugSettingCellRegistrations_stringUserDefaultRegistration, &qword_100925210, &qword_1007A8B18);
  sub_10000C8CC(v0 + OBJC_IVAR____TtC22SubscribePageExtension29DebugSettingCellRegistrations_BOOLUserDefaultRegistration, &qword_100925210, &qword_1007A8B18);
  sub_10000C8CC(v0 + OBJC_IVAR____TtC22SubscribePageExtension29DebugSettingCellRegistrations_stringPreferenceRegistration, &qword_100925210, &qword_1007A8B18);
  sub_10000C8CC(v0 + OBJC_IVAR____TtC22SubscribePageExtension29DebugSettingCellRegistrations_BOOLPreferenceRegistration, &qword_100925210, &qword_1007A8B18);
  sub_10000C8CC(v0 + OBJC_IVAR____TtC22SubscribePageExtension29DebugSettingCellRegistrations_promptActionRegistration, &qword_100925210, &qword_1007A8B18);
  sub_10000C8CC(v0 + OBJC_IVAR____TtC22SubscribePageExtension29DebugSettingCellRegistrations_infoSettingRegistration, &qword_100925210, &qword_1007A8B18);
  sub_10000C8CC(v0 + OBJC_IVAR____TtC22SubscribePageExtension29DebugSettingCellRegistrations_menuRegistration, &qword_100925210, &qword_1007A8B18);
  sub_10000C8CC(v0 + OBJC_IVAR____TtC22SubscribePageExtension29DebugSettingCellRegistrations_menuItemRegistration, &qword_100925210, &qword_1007A8B18);
  return v0;
}

uint64_t sub_100084450()
{
  sub_100084320();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DebugSettingCellRegistrations(uint64_t a1)
{
  result = qword_100925028;
  if (!qword_100925028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000844FC(uint64_t a1)
{
  sub_1000845AC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000845AC(uint64_t a1)
{
  if (!qword_100925038)
  {
    sub_10000C724(&unk_100925040, &qword_1007A8B10);
    v1 = sub_100754284();
    if (!v2)
    {
      atomic_store(v1, &qword_100925038);
    }
  }
}

uint64_t sub_100084610(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100925210, &qword_1007A8B18);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100084680()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000846E8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100084720()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100084768()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000847BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100925210, &qword_1007A8B18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100084840(uint64_t a1, void *a2, uint64_t a3)
{
  v56 = a2;
  v57 = a3;
  v4 = sub_100749B54();
  v58 = *(v4 - 8);
  __chkstk_darwin(v4);
  v60 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100741264();
  v59 = *(v6 - 8);
  v7 = *(v59 + 64);
  __chkstk_darwin(v6);
  v55 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v46 - v9;
  v11 = sub_10000C518(&unk_100925750, &unk_1007A7C60);
  __chkstk_darwin(v11 - 8);
  v13 = v46 - v12;
  v14 = type metadata accessor for FlowDestination(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v46 - v19;
  v61 = 0u;
  v62 = 0u;

  sub_1001362FC(v21, &v61, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_10000C8CC(v13, &unk_100925750, &unk_1007A7C60);
  }

  else
  {
    sub_100068B98(v13, v20);
    sub_100068C18(v20, v17);
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      v48 = *v17;
      v49 = a1;
      v22 = sub_10000C518(&qword_100938E90, &unk_1007A8BA0);
      v23 = *(v22 + 48);
      v24 = *(v22 + 64);
      v25 = v59;
      v26 = *(v59 + 32);
      v46[1] = v59 + 32;
      v47 = v26;
      v54 = v10;
      v26(v10, &v17[v24], v6);
      v27 = sub_100746554();
      (*(*(v27 - 8) + 8))(&v17[v23], v27);
      sub_10000C518(&qword_100930CA0, &unk_1007A58A0);
      v28 = sub_100752DE4();
      sub_100749B44();
      v51 = sub_100749B34();
      v29 = v55;
      (*(v25 + 16))(v55, v10, v6);
      v30 = (*(v25 + 80) + 24) & ~*(v25 + 80);
      v31 = (v7 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
      v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
      v52 = v4;
      v53 = v20;
      v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
      v50 = v6;
      v34 = swift_allocObject();
      v35 = v47;
      *(v34 + 16) = v48;
      v35(v34 + v30, v29, v6);
      v36 = v49;
      *(v34 + v31) = v49;
      v38 = v56;
      v37 = v57;
      *(v34 + v32) = v56;
      *(v34 + v33) = v37;
      *(v34 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8)) = v28;
      v39 = swift_allocObject();
      *(v39 + 16) = v36;
      *(v39 + 24) = v28;
      v40 = sub_100016C60(0, &qword_100926D00, OS_dispatch_queue_ptr);

      v41 = v38;

      swift_retain_n();
      swift_retain_n();
      v42 = sub_100753774();
      *(&v62 + 1) = v40;
      v63 = &protocol witness table for OS_dispatch_queue;
      *&v61 = v42;
      sub_100752D64();

      (*(v58 + 8))(v60, v52);
      (*(v59 + 8))(v54, v50);
      sub_100068C7C(v53, type metadata accessor for FlowDestination);
      sub_10000C620(&v61);
      return v28;
    }

    sub_100068C7C(v20, type metadata accessor for FlowDestination);
    sub_100068C7C(v17, type metadata accessor for FlowDestination);
  }

  if (qword_100921EE0 != -1)
  {
    swift_once();
  }

  v43 = sub_100752E44();
  sub_10000D0FC(v43, qword_100983318);
  sub_10000C518(&qword_100923930, &qword_1007A6B60);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A6580;
  sub_1007523A4();
  *(&v62 + 1) = sub_100742CD4();
  *&v61 = a1;

  sub_1007523B4();
  sub_10000C8CC(&v61, &unk_100923520, &qword_1007A5A70);
  sub_100752D04();

  sub_10000C518(&qword_100930CA0, &unk_1007A58A0);
  sub_100085624();
  swift_allocError();
  *v44 = 1;
  return sub_100752D74();
}

uint64_t sub_100084F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v47 = a6;
  v48 = a7;
  v45 = a4;
  v46 = a5;
  v42 = a3;
  v43 = a2;
  v8 = type metadata accessor for FlowDestination(0);
  v49 = *(v8 - 8);
  v50 = v8;
  __chkstk_darwin(v8);
  v44 = (&v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_10074ABC4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v41 - v15;
  __chkstk_darwin(v17);
  v19 = &v41 - v18;
  v20 = sub_10000C518(&unk_100925750, &unk_1007A7C60);
  __chkstk_darwin(v20 - 8);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v23);
  v26 = (&v41 - v25);
  v27 = *(v11 + 16);
  v27(v19, a1, v10, v24);
  v28 = (*(v11 + 88))(v19, v10);
  if (v28 == enum case for FamilyCircleLookupResult.notInFamily(_:))
  {
    (v27)(v13, v19, v10);
    (*(v11 + 96))(v13, v10);
    if (*v13 == 1)
    {
      v29 = sub_10000C518(&qword_100938E90, &unk_1007A8BA0);
      v30 = *(v29 + 48);
      v31 = *(v29 + 64);
      *v26 = v43;
      v32 = &enum case for ArcadeWelcomePage.ContentType.createNewFamily(_:);
LABEL_7:
      v34 = *v32;
      v35 = sub_100746554();
      (*(*(v35 - 8) + 104))(v26 + v30, v34, v35);
      v36 = sub_100741264();
      (*(*(v36 - 8) + 16))(v26 + v31, v42, v36);
      v37 = v50;
      swift_storeEnumTagMultiPayload();
      v38 = v49;
      (*(v49 + 56))(v26, 0, 1, v37);

      goto LABEL_9;
    }
  }

  else if (v28 == enum case for FamilyCircleLookupResult.inFamily(_:))
  {
    (v27)(v16, v19, v10);
    (*(v11 + 96))(v16, v10);
    if (*v16 == 1)
    {
      v33 = sub_10000C518(&qword_100938E90, &unk_1007A8BA0);
      v30 = *(v33 + 48);
      v31 = *(v33 + 64);
      *v26 = v43;
      v32 = &enum case for ArcadeWelcomePage.ContentType.familyOrganizer(_:);
      goto LABEL_7;
    }
  }

  v38 = v49;
  v37 = v50;
  (*(v49 + 56))(v26, 1, 1, v50);
LABEL_9:
  (*(v11 + 8))(v19, v10);
  sub_100016B4C(v26, v22, &unk_100925750, &unk_1007A7C60);
  if ((*(v38 + 48))(v22, 1, v37) == 1)
  {
    sub_10000C8CC(v26, &unk_100925750, &unk_1007A7C60);
  }

  else
  {
    v39 = v44;
    sub_100068B98(v22, v44);
    sub_100085D74(v39, v45, v46, v47, v48);
    sub_100068C7C(v39, type metadata accessor for FlowDestination);
    v22 = v26;
  }

  return sub_10000C8CC(v22, &unk_100925750, &unk_1007A7C60);
}

uint64_t sub_100085470(uint64_t a1, uint64_t a2)
{
  if (qword_100921EE0 != -1)
  {
    swift_once();
  }

  v3 = sub_100752E44();
  sub_10000D0FC(v3, qword_100983318);
  sub_10000C518(&qword_100923930, &qword_1007A6B60);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A6580;
  sub_1007523A4();
  v5[3] = sub_100742CD4();
  v5[0] = a2;

  sub_1007523B4();
  sub_10000C8CC(v5, &unk_100923520, &qword_1007A5A70);
  sub_100752D04();

  return sub_100752DA4();
}

unint64_t sub_100085624()
{
  result = qword_100925240;
  if (!qword_100925240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100925240);
  }

  return result;
}

uint64_t sub_100085678()
{
  v1 = sub_100741264();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_100085790(uint64_t a1)
{
  v3 = *(sub_100741264() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + 16);
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100084F84(a1, v10, v1 + v4, v8, v9, v11, v12);
}

uint64_t sub_100085854()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008589C()
{
  v0 = sub_10074F4D4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v10 - v5;
  sub_100742C94();
  (*(v1 + 104))(v3, enum case for FlowPage.arcadeWelcome(_:), v0);
  sub_100086E7C(&qword_100925790, &type metadata accessor for FlowPage, &protocol conformance descriptor for FlowPage);
  sub_100753274();
  sub_100753274();
  if (v10[2] == v10[0] && v10[3] == v10[1])
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_100754754();
  }

  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);

  return v7 & 1;
}

uint64_t sub_100085A78(uint64_t a1, void *a2)
{
  v4 = sub_1007493D4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10074A304();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a2 viewControllers];
  sub_100016C60(0, &qword_10092B0C0, UIViewController_ptr);
  v14 = sub_1007532A4();

  if (v14 >> 62)
  {
    v15 = sub_100754664();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v15)
  {
    (*(v9 + 104))(v12, enum case for FlowPresentationContext.replace(_:), v8);
    sub_100086E7C(&qword_100925258, &type metadata accessor for FlowPresentationContext, &protocol conformance descriptor for FlowPresentationContext);
    v16 = sub_100753014();
    (*(v9 + 8))(v12, v8);
    v17 = v16 ^ 1;
  }

  else
  {
    v17 = 0;
  }

  v18 = type metadata accessor for FlowPresentationHints(0);
  (*(v5 + 16))(v7, a1 + *(v18 + 20), v4);
  v19 = (*(v5 + 88))(v7, v4);
  if (v19 != enum case for FlowAnimationBehavior.infer(_:))
  {
    if (v19 == enum case for FlowAnimationBehavior.never(_:))
    {
      v17 = 0;
    }

    else if (v19 == enum case for FlowAnimationBehavior.always(_:))
    {
      v17 = 1;
    }

    else
    {
      (*(v5 + 8))(v7, v4);
    }
  }

  return v17 & 1;
}

uint64_t sub_100085D74(void (*a1)(char *, uint64_t), uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v100 = a5;
  v95 = a4;
  v92 = sub_100752624();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v90 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&qword_10092C1F0, &unk_1007A8F60);
  __chkstk_darwin(v8 - 8);
  v93 = &v89 - v9;
  v10 = sub_10074A304();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v89 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v97 = &v89 - v14;
  __chkstk_darwin(v15);
  v17 = &v89 - v16;
  v18 = type metadata accessor for FlowPresentationHints(0);
  __chkstk_darwin(v18);
  v20 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100742C54();
  sub_100742C44();
  v21 = [a3 traitCollection];
  v94 = a1;
  sub_1006C1C84(v17);

  v22 = sub_1003787A4(a3);
  if (!v22)
  {
    sub_100085624();
    swift_allocError();
    *v42 = 0;
    sub_100752DA4();
    (*(v11 + 8))(v17, v10);
    sub_100068C7C(v20, type metadata accessor for FlowPresentationHints);
  }

  v99 = v17;
  v96 = v20;
  v101 = v11;
  v98 = v10;
  v23 = v22;
  v24 = [v23 traitCollection];
  v25 = sub_100742C14();
  v27 = v26;
  v28 = v93;
  sub_100742C34();
  *&v102[0] = v23;
  sub_100016C60(0, &qword_100924658, UINavigationController_ptr);
  v29 = v23;
  sub_10000C518(&qword_100924660, &qword_1007A7C70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *&v105 = 0;
    v103 = 0u;
    v104 = 0u;
  }

  v30 = sub_100470520(v94, v24, v25, v27, v28, &v103, v95, 1);

  sub_10000C8CC(v28, &qword_10092C1F0, &unk_1007A8F60);
  sub_10000C8CC(&v103, &unk_100925760, &unk_1007A8F70);
  if (!v30)
  {

    v44 = v91;
    v45 = v90;
    v46 = v92;
    (*(v91 + 104))(v90, enum case for ActionOutcome.unsupported(_:), v92);
    sub_100752DB4();

    (*(v44 + 8))(v45, v46);
    (*(v101 + 8))(v99, v98);
    return sub_100068C7C(v96, type metadata accessor for FlowPresentationHints);
  }

  v31 = [v29 presentingViewController];

  v32 = v98;
  v33 = v101;
  v34 = v96;
  v35 = v99;
  if (!v31)
  {
LABEL_24:
    v54 = sub_100085A78(v34, v29);
    v55 = *(v33 + 104);
    v55(v97, enum case for FlowPresentationContext.push(_:), v32);
    sub_100086E7C(&qword_100925248, &type metadata accessor for FlowPresentationContext, &protocol conformance descriptor for FlowPresentationContext);
    sub_100753274();
    sub_100753274();
    LODWORD(v95) = v54;
    if (v103 == v102[0])
    {
      v56 = 1;
    }

    else
    {
      v56 = sub_100754754();
    }

    v57 = v33 + 8;
    v24 = *(v33 + 8);
    v33 = v98;
    v101 = v57;
    (v24)(v97, v98);

    if (v56)
    {
      [v30 setModalPresentationCapturesStatusBarAppearance:1];
      v103 = xmmword_100931310;
      v104 = xmmword_100931320;
      v105 = xmmword_100931330;
      v106 = xmmword_100931340;
      v107 = xmmword_100931350;
      v58 = qword_100931360;
      v108 = qword_100931360;
      v59 = BYTE8(xmmword_100931330);
      if (BYTE8(xmmword_100931330) != 255)
      {
        v60 = v103;
        v62 = v104;
        v61 = *&v105;
        v63 = v106;
        v64 = v107;
        v65 = v103;
        v66 = [v30 popoverPresentationController];
        if (v66)
        {
          v67 = v66;
          if (v59)
          {
            sub_100016B4C(&v103, v102, &unk_1009308C0, &unk_1007A8BB0);
            v68 = v67;
            [v68 setSourceView:v60];
            [v68 setSourceRect:{*(&v60 + 1), v62, v61}];
            v33 = v98;
            sub_10000C8CC(&v103, &unk_1009308C0, &unk_1007A8BB0);
          }

          else
          {
            [v66 setBarButtonItem:v60];
          }

          [v67 setPopoverLayoutMargins:{v63, v64}];
          [v67 setPermittedArrowDirections:v58];
        }

        else
        {
          if (qword_100921EE0 != -1)
          {
            swift_once();
          }

          v85 = sub_100752E44();
          sub_10000D0FC(v85, qword_100983318);
          sub_10000C518(&qword_100923930, &qword_1007A6B60);
          sub_100752454();
          *(swift_allocObject() + 16) = xmmword_1007A5A00;
          sub_1007523A4();
          sub_100752D14();
        }

        sub_10000C8CC(&v103, &unk_1009308C0, &unk_1007A8BB0);
      }

      [v29 pushViewController:v30 animated:v95 & 1];
      goto LABEL_58;
    }

    v69 = v89;
    v55(v89, enum case for FlowPresentationContext.replace(_:), v33);
    sub_100753274();
    sub_100753274();
    if (v103 == v102[0])
    {
      (v24)(v69, v33);
    }

    else
    {
      v70 = sub_100754754();
      (v24)(v69, v33);

      if ((v70 & 1) == 0)
      {
LABEL_58:
        v86 = v91;
        v87 = v90;
        v88 = v92;
        (*(v91 + 104))(v90, enum case for ActionOutcome.performed(_:), v92);
        sub_100752DB4();

        (*(v86 + 8))(v87, v88);
        (v24)(v99, v33);
        return sub_100068C7C(v96, type metadata accessor for FlowPresentationHints);
      }
    }

    objc_opt_self();
    v71 = swift_dynamicCastObjCClass();
    if (!v71)
    {
      v78 = [v29 viewControllers];
      sub_100016C60(0, &qword_10092B0C0, UIViewController_ptr);
      v35 = sub_1007532A4();

      v36 = (v35 >> 62);
      if (!(v35 >> 62))
      {
        if (!*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

LABEL_45:
        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (v36 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
        {
          v35 = sub_10025F2C0();
        }

        v80 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v80)
        {
          v81 = v80 - 1;
          v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 8 * v81 + 0x20);
          *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) = v81;
          *&v103 = v35;
          v82 = [v36 tabBarItem];
          [v30 setTabBarItem:v82];

          v83 = v30;
          sub_100753284();
          if (*((v103 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v103 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
LABEL_50:
            sub_100753344();
            isa = sub_100753294().super.isa;

            [v29 setViewControllers:isa animated:v95 & 1];

            goto LABEL_58;
          }

LABEL_68:
          sub_100753304();
          v33 = v98;
          goto LABEL_50;
        }

LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

LABEL_65:
      if (!sub_100754664())
      {
        goto LABEL_66;
      }

      goto LABEL_45;
    }

    v34 = v71;
    v35 = v30;
    v72 = [v29 viewControllers];
    v36 = sub_100016C60(0, &qword_10092B0C0, UIViewController_ptr);
    v33 = sub_1007532A4();

    v32 = v33 >> 62;
    if (!(v33 >> 62))
    {
      if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_38:
        v73 = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (v32 || (v73 & 1) == 0)
        {
          v33 = sub_10025F2C0();
        }

        v74 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v74)
        {
          v75 = v74 - 1;
          v76 = *((v33 & 0xFFFFFFFFFFFFFF8) + 8 * v75 + 0x20);
          *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) = v75;

          v77 = sub_100753294().super.isa;

          [v29 setViewControllers:v77];

          [v29 presentViewController:v34 animated:0 completion:0];
          v33 = v98;
          goto LABEL_58;
        }

        goto LABEL_64;
      }

LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

LABEL_62:
    if (sub_100754664())
    {
      goto LABEL_38;
    }

    goto LABEL_63;
  }

  v36 = [v29 viewControllers];
  sub_100016C60(0, &qword_10092B0C0, UIViewController_ptr);
  v37 = sub_1007532A4();

  if (!(v37 >> 62))
  {
    if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

  if (!sub_100754664())
  {
LABEL_23:

    goto LABEL_24;
  }

LABEL_8:
  if ((v37 & 0xC000000000000001) != 0)
  {
    v38 = sub_100754574();
  }

  else
  {
    if (!*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_62;
    }

    v38 = *(v37 + 32);
  }

  v39 = v38;

  if ((sub_1003CC490(v39) & 1) == 0)
  {
    goto LABEL_14;
  }

  v40 = swift_allocObject();
  *(v40 + 16) = v29;
  v41 = v29;
  if (sub_1003CC490(v30))
  {

LABEL_14:

    goto LABEL_24;
  }

  v47 = [v30 navigationItem];
  v48 = [v47 rightBarButtonItems];
  if (v48)
  {
    v49 = v48;
    sub_100016C60(0, &qword_100925250, UIBarButtonItem_ptr);
    v50 = sub_1007532A4();
  }

  else
  {
    v50 = _swiftEmptyArrayStorage;
  }

  *&v103 = v50;
  sub_100016C60(0, &qword_100925250, UIBarButtonItem_ptr);
  sub_100016C60(0, &qword_100929CC0, UIAction_ptr);
  v51 = swift_allocObject();
  *(v51 + 16) = sub_100086E24;
  *(v51 + 24) = v40;

  v109.value.super.super.isa = sub_100753FF4();
  v109.is_nil = 0;
  v52.super.super.isa = sub_100753634(UIBarButtonSystemItemClose, v109, v110).super.super.isa;
  if (!(v50 >> 62) || (result = sub_100754664(), (result & 0x8000000000000000) == 0))
  {
    sub_10015D700(0, 0, v52.super.super.isa);
    v53 = sub_100753294().super.isa;

    [v47 setRightBarButtonItems:v53];

    v32 = v98;
    v33 = v101;
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t sub_100086DEC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100086E3C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100086E7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100086ED8()
{
  result = qword_100925260;
  if (!qword_100925260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100925260);
  }

  return result;
}

id sub_100086FD4(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension31PurchasesCollectionViewDelegate_artworkLoader);
  v9 = OBJC_IVAR____TtC22SubscribePageExtension31PurchasesCollectionViewDelegate_pageTraits;
  v10 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension31PurchasesCollectionViewDelegate_pageTraits);
  v11 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension31PurchasesCollectionViewDelegate_objectGraph);
  swift_unknownObjectRetain();
  sub_10008A004(a2, a3, v8, v10, v11, a1);
  swift_unknownObjectRelease();
  v12 = [a2 contentView];
  [*(v4 + v9) pageMarginInsets];
  [v12 layoutMargins];
  [v12 setLayoutMargins:?];

  v13 = [a2 contentView];
  [*(v4 + v9) pageMarginInsets];
  [v13 layoutMargins];
  [v13 setLayoutMargins:?];

  type metadata accessor for SmallLockupCollectionViewTableCell();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setSelectionStyle:0];
  }

  return result;
}

void sub_100087524(void *a1, uint64_t a2)
{
  v5 = sub_1007417F4();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&qword_100930BC0, &qword_1007C6B40);
  __chkstk_darwin(v8 - 8);
  v9 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  v33 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v27 - v10;
  v12 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension31PurchasesCollectionViewDelegate_shelfDataSource);
  v32 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension31PurchasesCollectionViewDelegate_objectGraph);
  isa = sub_100741704().super.isa;
  v14 = [a1 cellForItemAtIndexPath:isa];

  if (v14)
  {
    v31 = v9;
    swift_getObjectType();
    v15 = swift_conformsToProtocol2();
    if (v15)
    {
      v16 = v15;
      v30 = a1;
      v17 = sub_10074B704();
      sub_10008F794(&qword_100925348, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter);
      v27[1] = v17;
      sub_100745144();
      v28 = *(v34 + 16);
      v29 = v34 + 16;
      v28(v7, a2, v35);
      sub_100752ED4();
      v36 = *(v12 + 24);

      sub_10000C518(&qword_100925350, &qword_1007AEDF0);
      sub_10002DDC8(&qword_100925358, &qword_100925350, &qword_1007AEDF0, &protocol conformance descriptor for TransientStateStore<A>);
      sub_100752944();
      ObjectType = swift_getObjectType();
      v19 = (*(v16 + 88))(v37, v11, v32, ObjectType, v16);
      v20 = v19;
      if (v19)
      {
        sub_1007450D4();
        v21 = v30;
        if ((v20 & 2) == 0)
        {
LABEL_5:
          if ((v20 & 4) == 0)
          {
LABEL_7:

            (*(v33 + 8))(v11, v31);
            sub_10000C620(v37);
            return;
          }

LABEL_6:
          sub_10000C518(&unk_1009405F0, &qword_1007A6410);
          v22 = (*(v34 + 80) + 32) & ~*(v34 + 80);
          v23 = swift_allocObject();
          *(v23 + 16) = xmmword_1007A5A00;
          v28((v23 + v22), a2, v35);
          v24 = sub_100753294().super.isa;

          [v21 reloadItemsAtIndexPaths:v24];

          v14 = v24;
          goto LABEL_7;
        }
      }

      else
      {
        v21 = v30;
        if ((v19 & 2) == 0)
        {
          goto LABEL_5;
        }
      }

      v26 = sub_100741704().super.isa;
      [v21 deselectItemAtIndexPath:v26 animated:1];

      if ((v20 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  sub_10074B704();
  sub_10008F794(&qword_100925348, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter);
  sub_1007450D4();
  v35 = sub_100741704().super.isa;
  [a1 deselectItemAtIndexPath:v35 animated:1];
  v25 = v35;
}

id sub_100087B60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PurchasesCollectionViewDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100087E2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_100087EAC(a6);
  }

  return a3(1);
}

uint64_t sub_100087EAC(uint64_t a1)
{
  v1 = sub_100748DA4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v12 - v6;
  sub_10074B694();
  (*(v2 + 104))(v4, enum case for PurchasesContentMode.hidden(_:), v1);
  sub_10008F794(&qword_100925328, &type metadata accessor for PurchasesContentMode, &protocol conformance descriptor for PurchasesContentMode);
  sub_100753274();
  sub_100753274();
  if (v12[2] == v12[0] && v12[3] == v12[1])
  {
    v8 = *(v2 + 8);
    v8(v4, v1);
    v8(v7, v1);

    return sub_10074B684();
  }

  v9 = sub_100754754();
  v10 = *(v2 + 8);
  v10(v4, v1);
  v10(v7, v1);

  if (v9)
  {
    return sub_10074B684();
  }

  return sub_10074B664();
}

uint64_t sub_10008821C(double a1, double a2, double a3, double a4)
{
  v5 = sub_1007528E4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = sub_100752914();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074EAC4();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10000C8CC(v11, &unk_100925380, qword_1007A8E40);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    if (*(v4 + 112))
    {

      sub_100749544();

      if (*(v4 + 112))
      {

        sub_1007528F4();
        v16 = sub_100749534();

        (*(v6 + 8))(v8, v5);
        (*(v13 + 8))(v15, v12);
        return v16;
      }
    }

    (*(v13 + 8))(v15, v12);
  }

  return 0;
}

double sub_1000884E4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v53 = a4;
  v48 = a2;
  v55 = a1;
  v5 = sub_1007457B4();
  v50 = *(v5 - 8);
  v51 = v5;
  __chkstk_darwin(v5);
  v47 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v49 = &v46 - v8;
  v9 = sub_10000C518(&unk_100933370, &unk_1007A8CE0);
  __chkstk_darwin(v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_10074E984();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v46 - v17;
  sub_10074B704();
  sub_10008F794(&qword_100925348, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter);
  v19 = sub_100745154();
  v54 = v18;
  v55 = v19;
  sub_10074E994();
  if (a3)
  {
    v20 = v11;
    (*(v13 + 56))(v11, 1, 1, v12);
    v22 = v49;
    v21 = v50;
    v23 = v51;
    (*(v50 + 104))(v49, enum case for ShelfBackground.none(_:), v51);
  }

  else
  {
    sub_100745084();
    v20 = v11;
    (*(v13 + 56))(v11, 0, 1, v12);
    v24 = v49;
    sub_100745074();
    v21 = v50;
    v23 = v51;
    v22 = v24;
  }

  v25 = v13;
  v26 = *(v13 + 16);
  v27 = v54;
  v26(v15, v54, v12);
  v28 = (*(v25 + 88))(v15, v12);
  v29 = v53;
  v52 = v25;
  if (v28 == enum case for Shelf.ContentType.personalizationFeedbackContainer(_:))
  {
    type metadata accessor for PersonalizationFeedbackCollectionViewCell();
    v30 = &off_10086C040;
  }

  else
  {
    if (v28 != enum case for Shelf.ContentType.informationRibbon(_:))
    {
      (*(v25 + 8))(v15, v12);
      goto LABEL_11;
    }

    type metadata accessor for InformationRibbonCollectionViewCell(0);
    v30 = &off_10086E268;
  }

  v31 = (v30[2])();
  if ((v32 & 1) == 0)
  {
    v33 = *&v31;

    v34 = v33;
    (*(v21 + 8))(v22, v23);
    sub_10000C8CC(v20, &unk_100933370, &unk_1007A8CE0);
    (*(v52 + 8))(v27, v12);
    return v34;
  }

LABEL_11:
  v35 = sub_10034E47C();
  if (v35)
  {
    v37 = v35;
    v38 = v36;
    v39 = v23;
    v40 = v47;
    v51 = v12;
    sub_10074E944();
    *&v41 = COERCE_DOUBLE((*(v38 + 48))(v20, v22, v40, v29, v37, v38));
    v43 = v42;

    v44 = *(v21 + 8);
    v44(v40, v39);
    v44(v22, v39);
    sub_10000C8CC(v20, &unk_100933370, &unk_1007A8CE0);
    (*(v52 + 8))(v54, v51);
    v34 = 0.0;
    if ((v43 & 1) == 0)
    {
      return *&v41;
    }
  }

  else
  {

    (*(v21 + 8))(v22, v23);
    sub_10000C8CC(v20, &unk_100933370, &unk_1007A8CE0);
    (*(v52 + 8))(v27, v12);
    return 0.0;
  }

  return v34;
}

double sub_100088A70(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074B704();
  sub_10008F794(&qword_100925348, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter);
  v11 = 0.0;
  if (sub_1007450A4() <= a1)
  {
    return 0.0;
  }

  [a3 bounds];
  v13 = v12;
  v15 = v14;
  v16 = sub_100745164();
  if (v17)
  {
    v59 = v16;
    v60 = v17;
    v18 = sub_1007450B4();
    if (v18)
    {
      v57 = v18;
      sub_10074ECB4();
      v20 = v19;
      ObjectType = [a2 traitCollection];
      if (qword_1009202A0 != -1)
      {
        swift_once();
      }

      v21 = qword_100928AB8;
      v55 = v4;
      v56 = v20;
      if (v20)
      {
        v20 = sub_100753064();
      }

      [v21 setTitle:v20 forState:0];

      [v21 setImage:0 forState:0];
      v22 = [v21 titleLabel];
      v23 = v22;
      if (v22)
      {
        v54 = v22;
        v24 = [v54 font];
        if (v24)
        {
          v25 = v24;
          v26 = [v24 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:ObjectType];
        }

        else
        {
          v26 = 0;
        }

        v30 = v54;
        [v54 setFont:v26];
      }

      v27 = a2;
      v28 = v10;
      [v21 sizeThatFits:{v13, v15}];
      v32 = v31;
      v11 = v33;

      v29 = v32 + 0.0;
      [v21 setTitle:0 forState:0];
      [v21 setImage:0 forState:0];
    }

    else
    {
      v27 = a2;
      v28 = v10;
      v29 = 0.0;
    }

    ObjectType = swift_getObjectType();
    [v27 pageMarginInsets];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    if (a1 >= 1)
    {
      v41 = a1 - 1;
    }

    else
    {
      v41 = 0;
    }

    v42 = v34 + sub_1000884E4(a1, v41, a1 < 1, v27);
    v43 = sub_1007450C4();
    v44 = sub_100745174();
    v56 = v45;
    v57 = v44;
    v46 = sub_100745104();
    v47 = [v27 traitCollection];
    v48 = sub_100753804();

    if (v43)
    {
      v49 = 1;
    }

    else
    {
      v49 = 2;
    }

    if (v48)
    {
      v50 = 0;
    }

    else
    {
      v50 = v49;
    }

    type metadata accessor for TitleHeaderView(0);
    sub_100730160(a1, v27, v28);
    sub_1001072B0(v57, v56, v46, v59, v60, v43, 0, 0, v13, v15, v29, v11, v42, v36, v38, v40, 0, 0, v50, v28, 1, v27);
    v13 = v51;

    sub_10008F7DC(v28);
  }

  return v13;
}

void sub_100088F30(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v133 = a3;
  v126 = a2;
  v116 = sub_10074EAB4();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v113 = v107 - v9;
  v10 = sub_10000C518(&unk_100925330, &unk_1007A67B0);
  __chkstk_darwin(v10 - 8);
  v123 = v107 - v11;
  v125 = sub_100749A94();
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v137 = v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v136 = v107 - v14;
  __chkstk_darwin(v15);
  v135 = v107 - v16;
  v121 = sub_1007417F4();
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v119 = v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000C518(&qword_100930BC0, &qword_1007C6B40);
  __chkstk_darwin(v18 - 8);
  v122 = v107 - v19;
  v118 = sub_10000C518(&qword_100925340, &unk_1007A8CD0);
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v134 = v107 - v20;
  v21 = sub_10074E984();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v108 = v107 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = v107 - v25;
  __chkstk_darwin(v27);
  v29 = v107 - v28;
  v128 = v4;
  sub_100741784();
  v30 = sub_10074B704();
  sub_10008F794(&qword_100925348, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter);
  sub_100745084();
  v31 = sub_10034E47C();
  if (!v31)
  {
    (*(v22 + 8))(v29, v21);
    return;
  }

  v111 = v32;
  v112 = v31;
  v131 = v29;
  sub_100741784();
  v33 = sub_100745064();
  v129 = v22;
  v138 = a1;
  if (v33)
  {
    v34 = sub_100741784();
    v35 = v30;
    if (v34 >= sub_1007450A4())
    {
      v110 = 0;
      v37 = v133;
    }

    else
    {
      v36 = sub_100745054();
      v37 = v133;
      if (v36)
      {
        v110 = 0;
      }

      else
      {
        v38 = sub_100745094();
        if (sub_1003C93CC(v34))
        {
          v39 = 1;
        }

        else
        {
          v39 = v38;
        }

        v110 = v39;
        v22 = v129;
        v37 = v133;
      }
    }
  }

  else
  {
    v110 = 0;
    v35 = v30;
    v37 = v133;
  }

  sub_100741784();
  v40 = sub_100745064();
  v132 = v21;
  v109 = v26;
  if (v40)
  {
    sub_100741784();
    v127 = sub_100745154();
  }

  else
  {
    v127 = 0;
  }

  [a4 bounds];
  [a4 safeAreaInsets];
  sub_100753BA4();
  v42 = v41;
  v44 = v43;
  v45 = v131;
  v46 = sub_10034E47C();
  v48 = v132;
  v130 = v35;
  if (!v46)
  {
    goto LABEL_30;
  }

  v49 = v46;
  v50 = v47;
  v107[1] = swift_getObjectType();
  [v37 pageMarginInsets];
  v52 = (*(v50 + 32))(0, v37, v49, v50, v51);
  v42 = v42 - (v52 + v53);
  v54 = [v37 traitCollection];
  v55 = *(v22 + 16);
  v56 = v109;
  v55(v109, v45, v48);
  v57 = *(v22 + 88);
  v58 = v57(v56, v48);
  if (v58 != enum case for Shelf.ContentType.artwork(_:) && v58 != enum case for Shelf.ContentType.ribbonBar(_:) && v58 != enum case for Shelf.ContentType.ribbonFlow(_:) && v58 != enum case for Shelf.ContentType.paragraph(_:) && v58 != enum case for Shelf.ContentType.footnote(_:) && v58 != enum case for Shelf.ContentType.titledParagraph(_:) && v58 != enum case for Shelf.ContentType.reviewsContainer(_:) && v58 != enum case for Shelf.ContentType.reviewSummary(_:) && v58 != enum case for Shelf.ContentType.editorialLink(_:) && v58 != enum case for Shelf.ContentType.quote(_:) && v58 != enum case for Shelf.ContentType.framedArtwork(_:) && v58 != enum case for Shelf.ContentType.screenshots(_:))
  {
    if (v58 == enum case for Shelf.ContentType.appShowcase(_:))
    {

      goto LABEL_78;
    }

    v107[0] = v54;
    if (v58 == enum case for Shelf.ContentType.inAppPurchaseShowcase(_:) || v58 == enum case for Shelf.ContentType.linkableText(_:) || v58 == enum case for Shelf.ContentType.framedVideo(_:) || v58 == enum case for Shelf.ContentType.productDescription(_:) || v58 == enum case for Shelf.ContentType.banner(_:) || v58 == enum case for Shelf.ContentType.roundedButton(_:) || v58 == enum case for Shelf.ContentType.titledButtonStack(_:) || v58 == enum case for Shelf.ContentType.smallStoryCard(_:) || v58 == enum case for Shelf.ContentType.personalizationFeedbackContainer(_:) || v58 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v58 == enum case for Shelf.ContentType.upsellBreakout(_:) || v58 == enum case for Shelf.ContentType.smallBreakout(_:) || v58 == enum case for Shelf.ContentType.arcadeFooter(_:) || v58 == enum case for Shelf.ContentType.editorialQuote(_:) || v58 == enum case for Shelf.ContentType.gameCenterReengagement(_:) || v58 == enum case for Shelf.ContentType.gameCenterPlayerGameAchievementSummary(_:) || v58 == enum case for Shelf.ContentType.preorderDisclaimer(_:) || v58 == enum case for Shelf.ContentType.privacyHeader(_:) || v58 == enum case for Shelf.ContentType.privacyFooter(_:) || v58 == enum case for Shelf.ContentType.privacyCategory(_:) || v58 == enum case for Shelf.ContentType.privacyDefinition(_:) || v58 == enum case for Shelf.ContentType.heroCarousel(_:) || v58 == enum case for Shelf.ContentType.unifiedMessage(_:) || (v96 = v55, v109 = *(v129 + 8), (v109)(v56, v132), (sub_1007537E4() & 1) == 0))
    {

      goto LABEL_78;
    }

    v97 = v107[0];
    v98 = sub_100753804();

    if (v98)
    {
LABEL_78:
      v37 = v133;
      v22 = v129;
      goto LABEL_30;
    }

    v99 = v131;
    v100 = sub_10008D24C(v131, v110, v133);
    v101 = v108;
    v102 = v99;
    v103 = v132;
    v96(v108, v102, v132);
    v104 = v57(v101, v103);
    if (v104 == enum case for Shelf.ContentType.annotation(_:) || v104 == enum case for Shelf.ContentType.productCapability(_:) || v104 == enum case for Shelf.ContentType.productPageLink(_:) || v104 == enum case for Shelf.ContentType.privacyType(_:))
    {
      if (!__OFSUB__(v100, 1))
      {
        v106 = v42 + (v100 - 1) * -30.0;
        goto LABEL_81;
      }
    }

    else
    {
      (v109)(v108, v132);
      PageTraitEnvironment.pageColumnMargin.getter();
      if (!__OFSUB__(v100, 1))
      {
        v106 = v42 - v105 * (v100 - 1);
LABEL_81:
        v42 = v106 / v100;
        goto LABEL_78;
      }

      __break(1u);
    }

    __break(1u);
    return;
  }

  v37 = v133;
  v22 = v129;
LABEL_30:
  if (v42 <= 0.0)
  {
    v42 = 0.0;
  }

  v59 = v138;
  sub_100745144();
  (*(v120 + 16))(v119, v59, v121);
  sub_100752ED4();
  v139 = *(v128 + 24);

  sub_10000C518(&qword_100925350, &qword_1007AEDF0);
  sub_10002DDC8(&qword_100925358, &qword_100925350, &qword_1007AEDF0, &protocol conformance descriptor for TransientStateStore<A>);
  sub_100752E74();
  v60 = v135;
  sub_100749A84();
  v61 = sub_10008D064(v59, v37);
  v62 = v125;
  v63 = v124;
  if (v61)
  {
    v64 = v136;
    v65 = v137;
    sub_100749A44();
    sub_100729558(v64, v65);
    v66 = *(v63 + 8);
    v22 = v129;
    v66(v65, v62);
    v66(v64, v62);
    v60 = v135;
  }

  v67 = v123;
  sub_100745114();
  v68 = sub_100744E64();
  v69 = (*(*(v68 - 8) + 48))(v67, 1, v68);
  sub_10000C8CC(v67, &unk_100925330, &unk_1007A67B0);
  if (v69 != 1)
  {
    v70 = v137;
    sub_100749A24();
    v71 = v136;
    sub_100729558(v136, v70);
    v72 = *(v63 + 8);
    v72(v70, v62);
    v72(v71, v62);
  }

  v73 = [v37 traitCollection];
  v74 = sub_1007537D4();

  v75 = v127;
  v76 = v37;
  if (v74)
  {
    v77 = v137;
    sub_100749A74();
    v78 = v136;
    sub_100729558(v136, v77);
    v79 = *(v63 + 8);
    v79(v77, v62);
    v80 = v78;
    v37 = v76;
    v79(v80, v62);
  }

  if (!sub_100741784())
  {
    v81 = v137;
    sub_100749A34();
    v82 = v136;
    sub_100729558(v136, v81);
    v83 = *(v63 + 8);
    v83(v81, v62);
    v84 = v82;
    v37 = v76;
    v83(v84, v62);
  }

  if (v75)
  {

    v85 = v113;
    sub_10074EAD4();

    v86 = v114;
    sub_10074EA74();
    sub_10008F794(&unk_100925360, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
    v87 = v116;
    v88 = sub_100754324();
    v89 = *(v115 + 8);
    v89(v86, v87);
    v90 = v85;
    v37 = v76;
    v22 = v129;
    v89(v90, v87);
    v60 = v135;
    if (v88)
    {
      v91 = v137;
      sub_100749A64();
      v92 = v136;
      sub_100729558(v136, v91);
      v93 = *(v63 + 8);
      v93(v91, v62);
      v94 = v92;
      v37 = v76;
      v93(v94, v62);
    }
  }

  v95 = v134;
  (*(v111 + 72))(&v140, v110, v134, v126, v60, v37, v42, v44);

  (*(v63 + 8))(v60, v62);
  (*(v117 + 8))(v95, v118);
  sub_10000C620(&v140);
  (*(v22 + 8))(v131, v132);
}

uint64_t sub_10008A004(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v261 = a6;
  v293 = a5;
  v292 = a4;
  v285 = a3;
  v295 = a2;
  v287 = sub_100752914();
  v286 = *(v287 - 1);
  __chkstk_darwin(v287);
  v254 = v246 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v246 - v10;
  __chkstk_darwin(v12);
  v259 = v246 - v13;
  __chkstk_darwin(v14);
  v249 = v246 - v15;
  __chkstk_darwin(v16);
  v252 = v246 - v17;
  v257 = sub_1007416B4();
  v256 = *(v257 - 8);
  __chkstk_darwin(v257);
  v255 = v246 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v272 = sub_1007457B4();
  v271 = *(v272 - 8);
  __chkstk_darwin(v272);
  v270 = v246 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v269 = sub_10074EAB4();
  v268 = *(v269 - 8);
  __chkstk_darwin(v269);
  v267 = v246 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10000C518(&unk_100925330, &unk_1007A67B0);
  __chkstk_darwin(v21 - 8);
  v23 = v246 - v22;
  v289 = sub_100749A94();
  v288 = *(v289 - 8);
  __chkstk_darwin(v289);
  v25 = v246 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = v246 - v27;
  __chkstk_darwin(v29);
  v284 = v246 - v30;
  v277 = sub_1007417F4();
  v276 = *(v277 - 8);
  __chkstk_darwin(v277);
  v260 = v31;
  v275 = v246 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10000C518(&qword_100930BC0, &qword_1007C6B40);
  __chkstk_darwin(v32 - 8);
  v274 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  v273 = *(v274 - 8);
  __chkstk_darwin(v274);
  v283 = v246 - v33;
  v291 = sub_10074E984();
  v290 = *(v291 - 8);
  __chkstk_darwin(v291);
  v266 = v246 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v278 = v246 - v36;
  __chkstk_darwin(v37);
  v282 = v246 - v38;
  v279 = sub_1007528E4();
  v280 = *(v279 - 8);
  __chkstk_darwin(v279);
  v262 = v246 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v281 = v246 - v41;
  v42 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v42 - 8);
  v258 = v246 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v265 = v246 - v45;
  __chkstk_darwin(v46);
  v264 = v246 - v47;
  __chkstk_darwin(v48);
  v250 = v246 - v49;
  __chkstk_darwin(v50);
  v251 = v246 - v51;
  __chkstk_darwin(v52);
  v54 = v246 - v53;
  v55 = sub_10000C518(&qword_10093FDE0, &unk_1007A8CF0);
  __chkstk_darwin(v55 - 8);
  v253 = v246 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v263 = v246 - v58;
  __chkstk_darwin(v59);
  v61 = v246 - v60;
  *&v63 = __chkstk_darwin(v62).n128_u64[0];
  v65 = v246 - v64;
  [a1 setBackgroundColor:{0, v63}];
  swift_getObjectType();
  v66 = swift_conformsToProtocol2();
  v294 = v6;
  v296 = *(v6 + 16);
  if (!v66 || *&a1 == 0.0)
  {
    v78 = sub_10074B704();
    v79 = sub_10008F794(&qword_100925348, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter);
    v80 = v295;
    v282 = v78;
    v281 = v79;
    result = sub_1007450F4();
    if ((result & 1) == 0)
    {
      return result;
    }

    v247 = v11;
    swift_getObjectType();
    result = swift_conformsToProtocol2();
    v248 = result;
    if (!result)
    {
      __break(1u);
      return result;
    }

    sub_100745144();
    v82 = *(v276 + 16);
    v246[1] = v276 + 16;
    v246[0] = v82;
    v82(v275, v80, v277);
    sub_100752ED4();
    v302 = *(v294 + 24);

    sub_10000C518(&qword_100925350, &qword_1007AEDF0);
    sub_10002DDC8(&qword_100925358, &qword_100925350, &qword_1007AEDF0, &protocol conformance descriptor for TransientStateStore<A>);
    v83 = v295;
    sub_100752944();
    sub_100749A84();
    if (sub_10008CB00(v83, v292))
    {
      sub_100749A44();
      sub_100729558(v28, v25);
      v84 = v288[1];
      v85 = v289;
      v84(v25, v289);
      v84(v28, v85);
    }

    sub_100745114();
    v86 = sub_100744E64();
    v87 = (*(*(v86 - 8) + 48))(v23, 1, v86);
    sub_10000C8CC(v23, &unk_100925330, &unk_1007A67B0);
    if (v87 != 1)
    {
      sub_100749A24();
      sub_100729558(v28, v25);
      v88 = v288[1];
      v89 = v289;
      v88(v25, v289);
      v88(v28, v89);
    }

    if (!sub_100741784())
    {
      sub_100749A34();
      sub_100729558(v28, v25);
      v90 = v288[1];
      v91 = v289;
      v90(v25, v289);
      v90(v28, v91);
    }

    sub_100741784();
    v92 = v278;
    sub_100745084();
    sub_100741784();
    v93 = sub_100745044();
    v94 = v290;
    v95 = v266;
    v96 = v291;
    (*(v290 + 16))(v266, v92, v291);
    v97 = (*(v94 + 88))(v95, v96);
    if (v97 == enum case for Shelf.ContentType.smallLockup(_:) || v97 == enum case for Shelf.ContentType.mediumLockup(_:))
    {
      goto LABEL_38;
    }

    if (v97 != enum case for Shelf.ContentType.largeLockup(_:))
    {
      if (v97 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v97 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:) || v97 == enum case for Shelf.ContentType.action(_:))
      {
        goto LABEL_38;
      }

      if (v97 != enum case for Shelf.ContentType.ribbonBar(_:))
      {
        if (v97 == enum case for Shelf.ContentType.editorialCard(_:) || v97 == enum case for Shelf.ContentType.videoCard(_:))
        {
          goto LABEL_38;
        }

        if (v97 == enum case for Shelf.ContentType.brick(_:) || v97 == enum case for Shelf.ContentType.categoryBrick(_:))
        {
          goto LABEL_39;
        }

        if (v97 == enum case for Shelf.ContentType.reviews(_:) || v97 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v97 == enum case for Shelf.ContentType.framedVideo(_:) || v97 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v97 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v97 == enum case for Shelf.ContentType.smallBreakout(_:))
        {
          goto LABEL_38;
        }

        if (v97 != enum case for Shelf.ContentType.editorialStoryCard(_:))
        {
          if (v97 == enum case for Shelf.ContentType.mixedMediaLockup(_:) || v97 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) || v97 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:) || v97 == enum case for Shelf.ContentType.posterLockup(_:) || v97 == enum case for Shelf.ContentType.smallContactCard(_:))
          {
            goto LABEL_38;
          }

          if (v97 != enum case for Shelf.ContentType.informationRibbon(_:))
          {
            if (v97 != enum case for Shelf.ContentType.appPromotion(_:))
            {
              (*(v290 + 8))(v95, v291);
              goto LABEL_50;
            }

LABEL_38:
            if (v93)
            {
              goto LABEL_39;
            }

LABEL_50:
            v122 = [v292 traitCollection];
            v123 = sub_1007537D4();

            if ((v123 & 1) == 0)
            {
              LODWORD(v266) = 0;
              v124 = v284;
LABEL_53:
              ObjectType = swift_getObjectType();
              sub_100741784();
              sub_100745154();
              v128 = v267;
              sub_10074EAD4();

              (*(v248 + 80))(&v304, v283, v293, v124, v128, v292, ObjectType);
              (*(v268 + 8))(v128, v269);
              v129 = a1;
              sub_100741784();
              v130 = v270;
              sub_100745074();
              v131 = sub_1002EF020();
              (*(v271 + 8))(v130, v272);
              if ([a1 overrideUserInterfaceStyle] != v131)
              {
                [a1 setOverrideUserInterfaceStyle:v131];
              }

              sub_10000C824(&v304, &v302);
              *(&v300 + 1) = sub_100016C60(0, &qword_100925390, UICollectionViewCell_ptr);
              *&v299 = a1;
              v132 = a1;
              sub_1007430A4();
              sub_10000C8CC(&v302, &unk_1009297F0, &unk_1007AD7A0);
              sub_10000C620(&v299);
              swift_getObjectType();
              v133 = swift_conformsToProtocol2();
              v134 = v294;
              if (v133 && *&a1 != 0.0)
              {
                v135 = v133;
                v136 = swift_getObjectType();
                v137 = *(v135 + 8);
                v138 = v132;
                v139 = v137(v136, v135);
                v83 = v295;
                v140 = v139;
                v141 = (v139 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreTapHandler);
                v142 = *(v139 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreTapHandler);
                v143 = v141[1];
                *v141 = 0;
                v141[1] = 0;
                [*&v140[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreButton] setUserInteractionEnabled:{0, sub_1000164A8(v142, v143)}];
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && *&a1 != 0.0)
              {
                v144 = swift_allocObject();
                swift_weakInit();
                v293 = a1;
                v145 = v134;
                v146 = v275;
                v147 = v277;
                (v246[0])(v275, v83, v277);
                v148 = v276;
                v149 = (*(v276 + 80) + 16) & ~*(v276 + 80);
                v150 = (v260 + v149 + 7) & 0xFFFFFFFFFFFFFFF8;
                v151 = swift_allocObject();
                v152 = v146;
                v134 = v145;
                v129 = v293;
                (*(v148 + 32))(v151 + v149, v152, v147);
                *(v151 + v150) = v144;
                v153 = &v132[OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_didSelectHandler];
                v154 = *&v132[OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_didSelectHandler];
                v155 = *&v132[OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_didSelectHandler + 8];
                *v153 = sub_10008F97C;
                v153[1] = v151;
                v156 = v132;

                sub_1000164A8(v154, v155);
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v129)
              {
                sub_10074B184();
                sub_100752764();
                v157 = v132;
                sub_100752D34();
                v158 = v302;
                swift_getObjectType();
                v159 = sub_100748FB4();
                v160 = v157;
                sub_10074B164();
              }

              *&v297[0] = v132;
              *(&v297[0] + 1) = v248;
              v161 = v132;
              sub_10000C518(&qword_1009253A0, &qword_1007A8D00);
              sub_10000C518(&qword_1009253A8, &qword_1007A8D08);
              if (swift_dynamicCast())
              {
                sub_100012160(&v299, &v302);
                sub_10074B184();
                sub_100752764();
                sub_100752D34();
                v162 = v299;
                sub_10000C888(&v302, v303);
                sub_10074B584();

                sub_10000C620(&v302);
              }

              else
              {
                v301 = 0;
                v300 = 0u;
                v299 = 0u;
                sub_10000C8CC(&v299, &unk_1009253B0, &unk_1007A8D10);
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v129)
              {
                sub_100748464();
                v163 = v161;
                sub_100752754();
                v164 = v302;
                if (v302)
                {
                  v165 = v163;
                  v166 = v164;
                  sub_100748454();

                  v163 = v166;
                }
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v129)
              {
                sub_10000C824(&v304, &v299);
                v167 = v161;
                sub_10000C518(&qword_1009242A0, &qword_1007A6400);
                sub_10000C518(&qword_1009253C0, &unk_1007A8D20);
                if (swift_dynamicCast())
                {
                  sub_100012160(v297, &v302);
                  sub_10000C888(&v302, v303);
                  if (sub_10074CA14())
                  {
                    sub_100748644();
                  }

                  swift_getObjectType();
                  sub_100747AF4();

                  sub_10000C620(&v302);
                }

                else
                {

                  v298 = 0;
                  memset(v297, 0, sizeof(v297));
                  sub_10000C8CC(v297, &qword_1009253C8, qword_1007B15B0);
                }
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v129)
              {
                swift_getObjectType();
                v168 = v161;
                sub_10074BFE4();
              }

              sub_100741784();
              sub_100745154();
              if (v266)
              {
                v169 = [v261 collectionViewLayout];
                type metadata accessor for BaseCollectionCompositionalLayout();
                v170 = swift_dynamicCastClass();
                if (v170)
                {
                  v171 = v170;
                  v172 = [v170 _orthogonalScrollingSections];
                  v173 = v255;
                  sub_100741684();

                  v174 = sub_100741784();
                  LOBYTE(v172) = sub_1007416A4(v174);
                  (*(v256 + 8))(v173, v257);
                  if (v172)
                  {
                    [v161 frame];
                    v176 = v175;
                    v178 = v177;
                    v180 = v179;
                    v182 = v181;
                    v183 = v251;
                    sub_10074EAC4();
                    v184 = v286;
                    v185 = *(v286 + 6);
                    v186 = v287;
                    if (v185(v183, 1, v287) == 1)
                    {

                      (*(v290 + 8))(v278, v291);
                      (v288[1])(v284, v289);
                      (*(v273 + 8))(v283, v274);
                      sub_10000C620(&v304);
                      return sub_10000C8CC(v183, &unk_100925380, qword_1007A8E40);
                    }

                    v296 = *(v184 + 4);
                    v296(v252, v183, v186);
                    sub_10000C824(&v304, &v302);
                    sub_10000C888(&v302, v303);
                    v218 = v250;
                    sub_100752F24();
                    if (v185(v218, 1, v186) == 1)
                    {

                      (*(v184 + 1))(v252, v186);
                      (*(v290 + 8))(v278, v291);
                      (v288[1])(v284, v289);
                      (*(v273 + 8))(v283, v274);
                      sub_10000C620(&v304);
                      v198 = v218;
                      goto LABEL_99;
                    }

                    v292 = v178;
                    v293 = v176;
                    v219 = v249;
                    v296(v249, v218, v186);
                    [v171 _layoutFrameForSection:sub_100741784()];
                    v221 = v220;
                    v223 = v222;
                    v225 = v224;
                    v227 = v226;
                    [v171 _offsetForOrthogonalScrollingSection:sub_100741784()];
                    v229 = v294;
                    v230 = *(v294 + 112);
                    v231 = v186;
                    v232 = v284;
                    if (v230)
                    {
                      v233 = v228;

                      v234 = v252;
                      v235 = v221;
                      sub_100749544();

                      v236 = v223;
                      if (*(v229 + 112))
                      {

                        v237 = v262;
                        sub_1007528F4();
                        v299 = v233;
                        *&v300 = v225;
                        *(&v300 + 1) = v227;
                        LOBYTE(v301) = 0;
                        v230 = sub_100749524();

                        (*(v280 + 8))(v237, v279);
                      }

                      else
                      {
                        v230 = 0;
                      }

                      v238 = *&v293;
                    }

                    else
                    {
                      v235 = v221;
                      v234 = v252;
                      v238 = *&v293;
                      v236 = v223;
                    }

                    v239 = *&v292;
                    v305.origin.x = v235;
                    v305.origin.y = v236;
                    v305.size.width = v225;
                    v305.size.height = v227;
                    v240 = -CGRectGetMinY(v305);
                    v306.origin.x = v238;
                    v306.origin.y = v239;
                    v306.size.width = v180;
                    v306.size.height = v182;
                    v307 = CGRectOffset(v306, 0.0, v240);
                    x = v307.origin.x;
                    y = v307.origin.y;
                    width = v307.size.width;
                    height = v307.size.height;
                    if (v230)
                    {

                      sub_100749544();
                    }

                    sub_10008D724(&v302, v230, x, y, width, height);

                    v245 = *(v184 + 1);
                    v245(v219, v231);
                    v245(v234, v231);
                    (*(v290 + 8))(v278, v291);
                    (v288[1])(v232, v289);
                    goto LABEL_109;
                  }
                }
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v129)
              {
                v187 = v161;
                [v187 frame];
                sub_10008821C(v188, v189, v190, v191);
                swift_getObjectType();
                sub_10074D3A4();
              }

              v192 = v264;
              sub_10074EAC4();
              v193 = v286;
              v194 = *(v286 + 6);
              v195 = v287;
              if (v194(v192, 1, v287) == 1)
              {
                sub_10000C8CC(v192, &unk_100925380, qword_1007A8E40);
                v196 = v265;
              }

              else
              {
                v197 = v259;
                (*(v193 + 4))(v259, v192, v195);
                v196 = v265;
                if (*(v134 + 112))
                {

                  [v161 frame];
                  sub_100749594();
                }

                (*(v193 + 1))(v197, v195);
              }

              sub_10000C824(&v304, &v302);
              sub_10000C888(&v302, v303);
              sub_100752F24();
              if (v194(v196, 1, v195) == 1)
              {

                (*(v290 + 8))(v278, v291);
                (v288[1])(v284, v289);
                (*(v273 + 8))(v283, v274);
                sub_10000C620(&v304);
                v198 = v196;
LABEL_99:
                sub_10000C8CC(v198, &unk_100925380, qword_1007A8E40);
                return sub_10000C620(&v302);
              }

              (*(v193 + 4))(v247, v196, v195);
              v199 = v258;
              sub_10074EAC4();
              if (v194(v199, 1, v195) == 1)
              {
                sub_10000C8CC(v199, &unk_100925380, qword_1007A8E40);
                v200 = 1;
                v201 = v280;
                v202 = v263;
              }

              else
              {
                v202 = v263;
                sub_1007528F4();
                (*(v193 + 1))(v199, v195);
                v200 = 0;
                v201 = v280;
              }

              v203 = v279;
              (*(v201 + 56))(v202, v200, 1, v279);
              if (*(v134 + 112))
              {
                v204 = v202;
                v205 = v253;
                sub_10008F838(v204, v253);
                v206 = v201;
                v207 = (*(v201 + 48))(v205, 1, v203);

                if (v207 == 1)
                {
                  sub_10000C8CC(v205, &qword_10093FDE0, &unk_1007A8CF0);
                }

                else
                {
                  sub_1007528D4();
                  (*(v206 + 8))(v205, v203);
                }

                v208 = v254;
                sub_1007528A4();

                [v161 frame];
                sub_100749544();

                (*(v193 + 1))(v208, v195);
                v202 = v263;
              }

              [v161 frame];
              v210 = v209;
              v212 = v211;
              v214 = v213;
              v216 = v215;
              v217 = *(v134 + 112);

              sub_10008D724(&v302, v217, v210, v212, v214, v216);

              sub_10000C8CC(v202, &qword_10093FDE0, &unk_1007A8CF0);
              (*(v193 + 1))(v247, v195);
              (*(v290 + 8))(v278, v291);
              (v288[1])(v284, v289);
LABEL_109:
              (*(v273 + 8))(v283, v274);
              sub_10000C620(&v304);
              return sub_10000C620(&v302);
            }

            sub_100749A74();
            LODWORD(v266) = 0;
LABEL_52:
            v124 = v284;
            sub_100729558(v28, v25);
            v125 = v288[1];
            v126 = v289;
            v125(v25, v289);
            v125(v28, v126);
            goto LABEL_53;
          }
        }
      }
    }

LABEL_39:
    sub_100749A54();
    LODWORD(v266) = 1;
    goto LABEL_52;
  }

  v289 = v66;
  v67 = a1;
  sub_100741784();
  sub_10074B704();
  sub_10008F794(&qword_100925348, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter);
  v68 = sub_100745154();
  v288 = v67;
  [v67 frame];
  v69 = v294;
  v284 = sub_10008821C(v70, v71, v72, v73);
  sub_10074B184();
  sub_100752764();
  sub_100752D34();
  v74 = v304;
  sub_100748464();
  sub_100752754();
  v278 = v304;
  v283 = v68;
  sub_10074EAC4();
  v75 = v286;
  v76 = v287;
  if ((*(v286 + 6))(v54, 1, v287) == 1)
  {
    sub_10000C8CC(v54, &unk_100925380, qword_1007A8E40);
    v77 = 1;
  }

  else
  {
    sub_1007528F4();
    (*(v75 + 1))(v54, v76);
    v77 = 0;
  }

  v98 = v280;
  v99 = v279;
  (*(v280 + 56))(v65, v77, 1, v279);
  v100 = objc_allocWithZone(sub_100749AF4());
  v101 = v74;
  v102 = sub_100749AE4();
  if (*(v69 + 112))
  {
    sub_10008F838(v65, v61);
    if ((*(v98 + 48))(v61, 1, v99) == 1)
    {
      sub_10000C8CC(v61, &qword_10093FDE0, &unk_1007A8CF0);
    }

    else
    {
      v103 = v281;
      (*(v98 + 32))(v281, v61, v99);
      (*(v98 + 16))(v262, v103, v99);
      sub_10074BC84();
      swift_allocObject();
      swift_retain_n();
      sub_10074BC94();
      sub_100749AD4();

      (*(v98 + 8))(v103, v99);
    }
  }

  sub_10074C4B4();
  swift_allocObject();
  v104 = v101;
  sub_10074C4C4();
  sub_100749AD4();

  v105 = v278;
  v287 = v104;
  if (v278)
  {
    sub_100749F64();
    swift_allocObject();
    v106 = v105;
    sub_100749F74();
    sub_100749AD4();

    v286 = v106;
  }

  else
  {

    v286 = 0;
  }

  v107 = v102;
  sub_10000C8CC(v65, &qword_10093FDE0, &unk_1007A8CF0);
  v108 = v296;

  v109 = sub_100741784();
  v110 = v282;
  v111 = v283;
  sub_10074E994();
  v112 = sub_10074E954();
  (*(v290 + 8))(v110, v291);
  v113 = *(v294 + 24);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_10000C518(&qword_1009253D0, &unk_1007A8D30);
  v115 = swift_allocObject();
  *(v115 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v115 + 16) = v108;
  *(v115 + 24) = v109;
  *(v115 + 32) = v112 & 1;
  *(v115 + 40) = v113;
  *(v115 + 64) = v107;
  *(v115 + 72) = &protocol witness table for CompoundScrollObserver;
  *(v115 + 80) = v284;
  swift_unknownObjectWeakAssign();

  v296 = v107;

  v116 = v288;
  v117 = swift_getObjectType();
  v118 = sub_100741784();
  v119 = sub_10002DDC8(&qword_1009253D8, &qword_1009253D0, &unk_1007A8D30, &unk_1007C6AC0);
  v120 = v289;
  v121 = *(v289 + 32);

  v121(v111, v118, v285, v293, v115, v119, v292, v117, v120);
}

uint64_t sub_10008C954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1007417F4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C518(&qword_1009253E0, &qword_1007A6970);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1007A6580;
  *(v8 + 32) = sub_100741784();
  *(v8 + 40) = a1;
  sub_1007416F4();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_10074B704();
    sub_10008F794(&qword_100925348, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter);
    sub_100745134();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10008CB00(uint64_t a1, void *a2)
{
  v28 = a2;
  v3 = sub_10074E984();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  v27 = v2;
  sub_100741784();
  sub_10074B704();
  sub_10008F794(&qword_100925348, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter);
  sub_100745084();
  sub_100741784();
  v13 = sub_100745044();
  (*(v4 + 32))(v9, v12, v3);
  v14 = (*(v4 + 88))(v9, v3);
  if (v14 == enum case for Shelf.ContentType.smallLockup(_:) || v14 == enum case for Shelf.ContentType.mediumLockup(_:))
  {
    goto LABEL_6;
  }

  if (v14 == enum case for Shelf.ContentType.largeLockup(_:))
  {
    goto LABEL_11;
  }

  v20 = v14 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v14 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:);
  if (v20 || v14 == enum case for Shelf.ContentType.action(_:))
  {
    goto LABEL_6;
  }

  if (v14 == enum case for Shelf.ContentType.ribbonBar(_:))
  {
    goto LABEL_11;
  }

  if (v14 == enum case for Shelf.ContentType.editorialCard(_:) || v14 == enum case for Shelf.ContentType.videoCard(_:))
  {
    goto LABEL_6;
  }

  if (v14 == enum case for Shelf.ContentType.brick(_:) || v14 == enum case for Shelf.ContentType.categoryBrick(_:))
  {
    goto LABEL_11;
  }

  if (v14 == enum case for Shelf.ContentType.reviews(_:) || v14 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v14 == enum case for Shelf.ContentType.framedVideo(_:) || v14 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v14 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v14 == enum case for Shelf.ContentType.smallBreakout(_:))
  {
    goto LABEL_6;
  }

  if (v14 == enum case for Shelf.ContentType.editorialStoryCard(_:))
  {
    goto LABEL_11;
  }

  if (v14 == enum case for Shelf.ContentType.mixedMediaLockup(_:) || v14 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) || v14 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:) || v14 == enum case for Shelf.ContentType.posterLockup(_:) || v14 == enum case for Shelf.ContentType.smallContactCard(_:))
  {
    goto LABEL_6;
  }

  if (v14 == enum case for Shelf.ContentType.informationRibbon(_:))
  {
    goto LABEL_11;
  }

  if (v14 == enum case for Shelf.ContentType.appPromotion(_:))
  {
LABEL_6:
    if (v13)
    {
LABEL_11:
      sub_100741784();
      v18 = sub_1007450E4();
      result = sub_100741774();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else if (v18)
      {
        if (result != 0x7FFFFFFFFFFFFFFFLL || v18 != -1)
        {
          return (result + 1) % v18 == 0;
        }

        goto LABEL_61;
      }

      __break(1u);
      goto LABEL_57;
    }
  }

  else
  {
    (*(v4 + 8))(v9, v3);
  }

  v16 = sub_100741784();
  if (v16 >= sub_1007450A4() || (sub_100745054() & 1) != 0)
  {
    v17 = 0;
  }

  else
  {
    v17 = sub_100745094();
    if (sub_1003C93CC(v16))
    {
      v17 = 1;
    }
  }

  sub_100741784();
  sub_100745084();
  sub_100741784();
  v23 = sub_100745094();
  v24 = sub_10008D24C(v6, v23, v28);
  result = (*(v4 + 8))(v6, v3);
  if (__OFSUB__(v17, 1))
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (!v24)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (v17 == 0x8000000000000001 && v24 == -1)
  {
    goto LABEL_62;
  }

  v25 = (v17 - 1) % v24;
  v26 = v25 + 1;
  if (__OFADD__(v25, 1))
  {
    goto LABEL_59;
  }

  result = sub_100741774();
  if (__OFSUB__(v17, v26))
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  return result >= v17 - v26;
}

uint64_t sub_10008D064(uint64_t a1, void *a2)
{
  v3 = sub_10074E984();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741784();
  sub_10074B704();
  sub_10008F794(&qword_100925348, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter);
  v7 = sub_100745094();
  sub_100741784();
  sub_100745084();
  sub_100741784();
  v8 = sub_100745094();
  v9 = sub_10008D24C(v6, v8, a2);
  result = (*(v4 + 8))(v6, v3);
  if (__OFSUB__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (!v9)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v7 == 0x8000000000000001 && v9 == -1)
  {
    goto LABEL_12;
  }

  v11 = (v7 - 1) % v9;
  v12 = v11 + 1;
  if (!__OFADD__(v11, 1))
  {
    result = sub_100741774();
    if (!__OFSUB__(v7, v12))
    {
      return result >= v7 - v12;
    }

    goto LABEL_11;
  }

LABEL_10:
  __break(1u);
LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_10008D24C(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = a2;
  v5 = sub_10074E984();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v21 - v11;
  v13 = v6[2];
  v13(&v21 - v11, a1, v5, v10);
  v14 = v6[11];
  v15 = v14(v12, v5);
  result = 0;
  if (v15 != enum case for Shelf.ContentType.personalizationFeedbackContainer(_:) && v15 != enum case for Shelf.ContentType.informationRibbon(_:))
  {
    v25 = enum case for Shelf.ContentType.personalizationFeedbackContainer(_:);
    v22 = v6[1];
    v22(v12, v5);
    ObjectType = swift_getObjectType();
    v24 = a3;
    v18 = [a3 traitCollection];
    (v13)(v8, a1, v5);
    v19 = v14(v8, v5);
    if (v19 == enum case for Shelf.ContentType.artwork(_:) || v19 == enum case for Shelf.ContentType.ribbonBar(_:) || v19 == enum case for Shelf.ContentType.ribbonFlow(_:) || v19 == enum case for Shelf.ContentType.paragraph(_:) || v19 == enum case for Shelf.ContentType.footnote(_:) || v19 == enum case for Shelf.ContentType.titledParagraph(_:) || v19 == enum case for Shelf.ContentType.reviewsContainer(_:) || v19 == enum case for Shelf.ContentType.reviewSummary(_:) || v19 == enum case for Shelf.ContentType.editorialLink(_:) || v19 == enum case for Shelf.ContentType.quote(_:) || v19 == enum case for Shelf.ContentType.framedArtwork(_:) || v19 == enum case for Shelf.ContentType.screenshots(_:) || v19 == enum case for Shelf.ContentType.appShowcase(_:) || v19 == enum case for Shelf.ContentType.inAppPurchaseShowcase(_:) || v19 == enum case for Shelf.ContentType.linkableText(_:) || v19 == enum case for Shelf.ContentType.framedVideo(_:) || v19 == enum case for Shelf.ContentType.productDescription(_:) || v19 == enum case for Shelf.ContentType.banner(_:) || v19 == enum case for Shelf.ContentType.roundedButton(_:) || v19 == enum case for Shelf.ContentType.titledButtonStack(_:) || v19 == enum case for Shelf.ContentType.smallStoryCard(_:) || v19 == v25 || v19 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v19 == enum case for Shelf.ContentType.upsellBreakout(_:) || v19 == enum case for Shelf.ContentType.smallBreakout(_:) || v19 == enum case for Shelf.ContentType.arcadeFooter(_:) || v19 == enum case for Shelf.ContentType.editorialQuote(_:) || v19 == enum case for Shelf.ContentType.gameCenterReengagement(_:) || v19 == enum case for Shelf.ContentType.gameCenterPlayerGameAchievementSummary(_:) || v19 == enum case for Shelf.ContentType.preorderDisclaimer(_:) || v19 == enum case for Shelf.ContentType.privacyHeader(_:) || v19 == enum case for Shelf.ContentType.privacyFooter(_:) || v19 == enum case for Shelf.ContentType.privacyCategory(_:) || v19 == enum case for Shelf.ContentType.privacyDefinition(_:) || v19 == enum case for Shelf.ContentType.heroCarousel(_:) || v19 == enum case for Shelf.ContentType.unifiedMessage(_:) || (v22(v8, v5), (sub_1007537E4() & 1) == 0))
    {
    }

    else
    {
      v20 = sub_100753804();

      if ((v20 & 1) == 0)
      {
        return sub_10034EF90(v26, v24, a1);
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_10008D724(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v51 = a2;
  v7 = sub_10000C518(&qword_10093FDE0, &unk_1007A8CF0);
  __chkstk_darwin(v7 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v43 - v11;
  v12 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v12 - 8);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v43 - v16;
  v18 = sub_100752914();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v45 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v53 = &v43 - v22;
  v48 = a1;
  sub_10000C824(a1, v57);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_10000C518(&qword_1009253E8, qword_1007A8D40);
  if (swift_dynamicCast())
  {
    v52 = v17;
    v44 = v9;
    sub_100012160(v55, v58);
    sub_10000C888(v58, v58[3]);
    v23 = sub_10074A234();
    if (v23)
    {
      v54 = v18;
      v43 = v23;
      v24 = *(v23 + 16);
      if (v24)
      {
        v25 = v43 + 32;
        v26 = (v19 + 48);
        v46 = (v19 + 32);
        v49 = (v19 + 8);
        v47 = v14;
        do
        {
          sub_10000C824(v25, v57);
          sub_10000C888(v57, v57[3]);
          v27 = v52;
          sub_100752F24();
          sub_10000C620(v57);
          v28 = *v26;
          v29 = v54;
          if ((*v26)(v27, 1, v54) == 1)
          {
            sub_10000C8CC(v27, &unk_100925380, qword_1007A8E40);
          }

          else
          {
            (*v46)(v53, v27, v29);
            sub_10000C888(v48, v48[3]);
            sub_100752F24();
            if (v28(v14, 1, v29) == 1)
            {
              sub_10000C8CC(v14, &unk_100925380, qword_1007A8E40);
              v30 = 1;
              v31 = v50;
            }

            else
            {
              v32 = v14;
              v31 = v50;
              sub_1007528F4();
              (*v49)(v32, v29);
              v30 = 0;
            }

            v33 = sub_1007528E4();
            v34 = *(v33 - 8);
            (*(v34 + 56))(v31, v30, 1, v33);
            if (v51)
            {
              v35 = v44;
              sub_10008F838(v31, v44);
              if ((*(v34 + 48))(v35, 1, v33) == 1)
              {
                v36 = v31;
                sub_10000C8CC(v35, &qword_10093FDE0, &unk_1007A8CF0);
              }

              else
              {
                sub_1007528D4();
                (*(v34 + 8))(v35, v33);
                v36 = v50;
              }

              v37 = v45;
              v38 = v53;
              sub_1007528A4();

              sub_100749544();
              v39 = *v49;
              v40 = v37;
              v41 = v54;
              (*v49)(v40, v54);
              sub_10000C8CC(v36, &qword_10093FDE0, &unk_1007A8CF0);
              v39(v38, v41);
            }

            else
            {
              sub_10000C8CC(v31, &qword_10093FDE0, &unk_1007A8CF0);
              (*v49)(v53, v54);
            }

            v14 = v47;
          }

          v25 += 40;
          --v24;
        }

        while (v24);
      }
    }

    return sub_10000C620(v58);
  }

  else
  {
    v56 = 0;
    memset(v55, 0, sizeof(v55));
    return sub_10000C8CC(v55, &unk_1009253F0, &unk_1007CCB70);
  }
}

uint64_t sub_10008DD74(void *a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10000C518(&qword_10093FDE0, &unk_1007A8CF0);
  __chkstk_darwin(v3 - 8);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v46 = &v39 - v7;
  v8 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v8 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v39 - v12;
  v14 = sub_100752914();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v41 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v49 = &v39 - v18;
  v44 = a1;
  sub_10000C824(a1, v53);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_10000C518(&qword_1009253E8, qword_1007A8D40);
  if (swift_dynamicCast())
  {
    v48 = v13;
    v40 = v5;
    sub_100012160(v51, v54);
    sub_10000C888(v54, v54[3]);
    v19 = sub_10074A234();
    if (v19)
    {
      v50 = v14;
      v39 = v19;
      v20 = *(v19 + 16);
      if (v20)
      {
        v21 = v39 + 32;
        v22 = (v15 + 48);
        v42 = (v15 + 32);
        v45 = (v15 + 8);
        v43 = v10;
        do
        {
          sub_10000C824(v21, v53);
          sub_10000C888(v53, v53[3]);
          v23 = v48;
          sub_100752F24();
          sub_10000C620(v53);
          v24 = *v22;
          v25 = v50;
          if ((*v22)(v23, 1, v50) == 1)
          {
            sub_10000C8CC(v23, &unk_100925380, qword_1007A8E40);
          }

          else
          {
            (*v42)(v49, v23, v25);
            sub_10000C888(v44, v44[3]);
            sub_100752F24();
            if (v24(v10, 1, v25) == 1)
            {
              sub_10000C8CC(v10, &unk_100925380, qword_1007A8E40);
              v26 = 1;
              v27 = v46;
            }

            else
            {
              v28 = v10;
              v27 = v46;
              sub_1007528F4();
              (*v45)(v28, v25);
              v26 = 0;
            }

            v29 = sub_1007528E4();
            v30 = *(v29 - 8);
            (*(v30 + 56))(v27, v26, 1, v29);
            if (v47)
            {
              v31 = v40;
              sub_10008F838(v27, v40);
              if ((*(v30 + 48))(v31, 1, v29) == 1)
              {
                v32 = v27;
                sub_10000C8CC(v31, &qword_10093FDE0, &unk_1007A8CF0);
              }

              else
              {
                sub_1007528D4();
                (*(v30 + 8))(v31, v29);
                v32 = v46;
              }

              v33 = v41;
              v34 = v49;
              sub_1007528A4();

              sub_100749564();
              v35 = *v45;
              v36 = v33;
              v37 = v50;
              (*v45)(v36, v50);
              sub_10000C8CC(v32, &qword_10093FDE0, &unk_1007A8CF0);
              v35(v34, v37);
            }

            else
            {
              sub_10000C8CC(v27, &qword_10093FDE0, &unk_1007A8CF0);
              (*v45)(v49, v50);
            }

            v10 = v43;
          }

          v21 += 40;
          --v20;
        }

        while (v20);
      }
    }

    return sub_10000C620(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    return sub_10000C8CC(v51, &unk_1009253F0, &unk_1007CCB70);
  }
}

void sub_10008E360(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = sub_10000C518(&qword_10093FDE0, &unk_1007A8CF0);
  __chkstk_darwin(v9 - 8);
  v11 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v96 = &v86 - v13;
  v14 = sub_10074E984();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v99 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v101 = &v86 - v18;
  v19 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v19 - 8);
  v93 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v94 = &v86 - v22;
  __chkstk_darwin(v23);
  v98 = &v86 - v24;
  v25 = sub_100752914();
  v102 = *(v25 - 8);
  v103 = v25;
  __chkstk_darwin(v25);
  v92 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v95 = &v86 - v28;
  __chkstk_darwin(v29);
  v97 = &v86 - v30;
  if (sub_100741794() >= 2)
  {
    v88 = v11;
    v89 = *(v4 + 16);
    v31 = sub_10074B704();
    v90 = sub_10008F794(&qword_100925348, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter);
    v100 = a2;
    v32 = sub_1007450F4();
    v110 = sub_100016C60(0, &qword_100925390, UICollectionViewCell_ptr);
    v109[0] = a1;
    v33 = a1;
    v91 = v32;
    sub_10074A994();
    sub_10000C620(v109);
    swift_getObjectType();
    v34 = swift_conformsToProtocol2();
    v104 = a4;
    v105 = v31;
    if (v34 && v33)
    {
      sub_10074B184();
      v87 = v15;
      sub_100752764();
      v35 = v33;
      sub_100752D34();
      v36 = v109[0];
      swift_getObjectType();
      v37 = sub_100748FB4();
      v38 = v14;
      v39 = v5;
      v40 = v35;
      sub_10074B124();

      v5 = v39;
      v14 = v38;

      v15 = v87;
    }

    v108 = v33;
    v41 = v33;
    sub_10000C518(&qword_1009253A8, &qword_1007A8D08);
    if (swift_dynamicCast())
    {
      sub_100012160(v106, v109);
      sub_10074B184();
      sub_100752764();
      sub_100752D34();
      v42 = *&v106[0];
      sub_10000C888(v109, v110);
      sub_10074B594();

      sub_10000C620(v109);
    }

    else
    {
      v107 = 0;
      memset(v106, 0, sizeof(v106));
      sub_10000C8CC(v106, &unk_1009253B0, &unk_1007A8D10);
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2() && v33)
    {
      sub_100748464();
      v43 = v41;
      sub_100752754();
      v44 = v109[0];
      if (v109[0])
      {
        v45 = v43;
        v46 = v44;
        sub_100748414();

        v43 = v46;
      }
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2() && v33)
    {
      swift_getObjectType();
      v47 = v41;
      sub_10074BFF4();
    }

    swift_getObjectType();
    v48 = swift_conformsToProtocol2();
    if (v48 && v33)
    {
      v49 = v48;
      ObjectType = swift_getObjectType();
      v51 = *(v49 + 8);
      v52 = v41;
      v51(ObjectType, v49);
    }

    if (v91)
    {
      swift_getObjectType();
      v53 = swift_conformsToProtocol2();
      if (v53 && v33)
      {
        v54 = v53;
        v55 = swift_getObjectType();
        v56 = *(v54 + 40);
        v57 = v41;
        v56(v55, v54);
      }

      v58 = sub_100741784();
      v59 = sub_1003C93CC(v58);
      sub_100741784();
      if (v59)
      {
        sub_100745154();
        v60 = v98;
        sub_10074EAC4();
        v62 = v102;
        v61 = v103;
        if ((*(v102 + 48))(v60, 1, v103) == 1)
        {

          sub_10000C8CC(v60, &unk_100925380, qword_1007A8E40);
        }

        else
        {
          v73 = v97;
          (*(v62 + 32))(v97, v60, v61);
          if (*(v5 + 112))
          {

            sub_100749564();
          }

          (*(v62 + 8))(v73, v61);
        }

        return;
      }

      v63 = v101;
      sub_100745084();
      sub_100741784();
      v64 = sub_100745044();
      v65 = v99;
      (*(v15 + 16))(v99, v63, v14);
      v66 = (*(v15 + 88))(v65, v14);
      if (v66 == enum case for Shelf.ContentType.smallLockup(_:) || v66 == enum case for Shelf.ContentType.mediumLockup(_:))
      {
        goto LABEL_51;
      }

      if (v66 == enum case for Shelf.ContentType.largeLockup(_:))
      {
        goto LABEL_56;
      }

      if (v66 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v66 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:) || v66 == enum case for Shelf.ContentType.action(_:))
      {
        goto LABEL_51;
      }

      if (v66 == enum case for Shelf.ContentType.ribbonBar(_:))
      {
        goto LABEL_56;
      }

      if (v66 == enum case for Shelf.ContentType.editorialCard(_:) || v66 == enum case for Shelf.ContentType.videoCard(_:))
      {
        goto LABEL_51;
      }

      if (v66 == enum case for Shelf.ContentType.brick(_:) || v66 == enum case for Shelf.ContentType.categoryBrick(_:))
      {
        goto LABEL_56;
      }

      if (v66 == enum case for Shelf.ContentType.reviews(_:) || v66 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v66 == enum case for Shelf.ContentType.framedVideo(_:) || v66 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v66 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v66 == enum case for Shelf.ContentType.smallBreakout(_:))
      {
        goto LABEL_51;
      }

      if (v66 == enum case for Shelf.ContentType.editorialStoryCard(_:))
      {
        goto LABEL_56;
      }

      if (v66 == enum case for Shelf.ContentType.mixedMediaLockup(_:) || v66 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) || v66 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:) || v66 == enum case for Shelf.ContentType.posterLockup(_:) || v66 == enum case for Shelf.ContentType.smallContactCard(_:))
      {
        goto LABEL_51;
      }

      if (v66 == enum case for Shelf.ContentType.informationRibbon(_:))
      {
        goto LABEL_56;
      }

      if (v66 == enum case for Shelf.ContentType.appPromotion(_:))
      {
LABEL_51:
        if (v64)
        {
          goto LABEL_56;
        }
      }

      else
      {
        (*(v15 + 8))(v65, v14);
      }

      v67 = sub_1007450A4();
      if (sub_100741784() < v67)
      {
        v68 = sub_100741774();
        sub_100741784();
        if (v68 < sub_100745094())
        {
          sub_100745144();
          sub_10000C888(v109, v110);
          v69 = v94;
          sub_100752F24();
          v70 = v102;
          v71 = *(v102 + 48);
          v72 = v103;
          if (v71(v69, 1, v103) == 1)
          {
            (*(v15 + 8))(v101, v14);
            sub_10000C8CC(v69, &unk_100925380, qword_1007A8E40);
          }

          else
          {
            (*(v70 + 32))(v95, v69, v72);
            sub_100741784();
            sub_100745154();
            v74 = v93;
            sub_10074EAC4();
            if (v71(v74, 1, v72) == 1)
            {
              sub_10000C8CC(v74, &unk_100925380, qword_1007A8E40);
              v75 = 1;
              v76 = v96;
            }

            else
            {
              v76 = v96;
              sub_1007528F4();
              (*(v70 + 8))(v74, v72);
              v75 = 0;
            }

            v77 = v88;
            v78 = sub_1007528E4();
            v79 = *(v78 - 8);
            (*(v79 + 56))(v76, v75, 1, v78);
            if (*(v5 + 112))
            {
              sub_10008F838(v76, v77);
              v80 = (*(v79 + 48))(v77, 1, v78);

              if (v80 == 1)
              {
                sub_10000C8CC(v77, &qword_10093FDE0, &unk_1007A8CF0);
              }

              else
              {
                sub_1007528D4();
                (*(v79 + 8))(v77, v78);
              }

              v84 = v95;
              v85 = v92;
              sub_1007528A4();

              sub_100749564();

              v83 = v102;
              v82 = v103;
              (*(v102 + 8))(v85, v103);
              v81 = *(v5 + 112);
            }

            else
            {
              v81 = 0;
              v83 = v102;
              v82 = v103;
              v84 = v95;
            }

            sub_10008DD74(v109, v81);

            sub_10000C8CC(v96, &qword_10093FDE0, &unk_1007A8CF0);
            (*(v83 + 8))(v84, v82);
            (*(v15 + 8))(v101, v14);
          }

          sub_10000C620(v109);
          return;
        }
      }

LABEL_56:
      (*(v15 + 8))(v63, v14);
    }
  }
}

id sub_10008F1F8(uint64_t a1)
{
  v2 = sub_1007417F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100748DA4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10074B634())
  {
    sub_10074B694();
    v10 = sub_100748D94();
    v24[0] = v11;
    v24[1] = v10;
    (*(v7 + 8))(v9, v6);
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v3 + 16))(v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
    v13 = (*(v3 + 80) + 24) & ~*(v3 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    (*(v3 + 32))(v14 + v13, v5, v2);

    v15 = sub_100753064();

    aBlock[4] = sub_10008F6E0;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1005AD46C;
    aBlock[3] = &unk_100865C50;
    v16 = _Block_copy(aBlock);
    v17 = [objc_opt_self() contextualActionWithStyle:1 title:v15 handler:v16];

    _Block_release(v16);

    sub_10000C518(&unk_1009231A0, qword_1007A5810);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1007A5CF0;
    *(v18 + 32) = v17;
    sub_100016C60(0, &unk_10093FE10, UIContextualAction_ptr);
    v19 = v17;
    isa = sub_100753294().super.isa;

    v21 = [objc_opt_self() configurationWithActions:isa];

    [v21 setPerformsFirstActionWithFullSwipe:0];
  }

  else
  {
    sub_100016C60(0, &unk_10093FE10, UIContextualAction_ptr);
    v22 = sub_100753294().super.isa;
    v21 = [objc_opt_self() configurationWithActions:v22];
  }

  return v21;
}

uint64_t sub_10008F5E4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008F61C()
{
  v1 = sub_1007417F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10008F6E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v9 = *(sub_1007417F4() - 8);
  v10 = *(v4 + 16);
  v11 = v4 + ((*(v9 + 80) + 24) & ~*(v9 + 80));

  return sub_100087E2C(a1, a2, a3, a4, v10, v11);
}

double sub_10008F77C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10008F794(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10008F7DC(uint64_t a1)
{
  v2 = type metadata accessor for TitleHeaderView.Style(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008F838(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_10093FDE0, &unk_1007A8CF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008F8A8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008F8E0()
{
  v1 = sub_1007417F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10008F97C(uint64_t a1)
{
  v3 = *(sub_1007417F4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10008C954(a1, v1 + v4, v5);
}

char *sub_10008FA18(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  swift_weakInit();
  v10 = &v4[OBJC_IVAR____TtC22SubscribePageExtension29TodayCardChinSingleLockupView_impressionsUpdateBlock];
  *v10 = 0;
  v10[1] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension29TodayCardChinSingleLockupView_tapGestureRecognizer] = 0;
  v11 = &v4[OBJC_IVAR____TtC22SubscribePageExtension29TodayCardChinSingleLockupView_clickActionHandler];
  *v11 = 0;
  v11[1] = 0;
  v4[OBJC_IVAR____TtC22SubscribePageExtension29TodayCardChinSingleLockupView_isExpanded] = 0;
  v4[OBJC_IVAR____TtC22SubscribePageExtension29TodayCardChinSingleLockupView_sizeCategory] = 7;
  v4[OBJC_IVAR____TtC22SubscribePageExtension29TodayCardChinSingleLockupView_wantsCardConsistentMargins] = 0;
  type metadata accessor for TodayCardLockupView();
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension29TodayCardChinSingleLockupView_lockupView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v24.receiver = v4;
  v24.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v24, "initWithFrame:", a1, a2, a3, a4);
  v13 = [v12 layer];
  [v13 setAllowsGroupBlending:0];

  v14 = OBJC_IVAR____TtC22SubscribePageExtension29TodayCardChinSingleLockupView_lockupView;
  v15 = *&v12[OBJC_IVAR____TtC22SubscribePageExtension29TodayCardChinSingleLockupView_lockupView];
  v16 = OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_allowsGroupBlending;
  v15[OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_allowsGroupBlending] = 0;
  v17 = v15;
  v18 = [v17 layer];
  [v18 setAllowsGroupBlending:v15[v16]];

  v19 = [*&v17[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton] layer];
  [v19 setAllowsGroupBlending:v15[v16]];

  [*(*&v12[v14] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*&v12[v14] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*&v12[v14] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_ordinalLabel) setAccessibilityIgnoresInvertColors:1];
  [v12 addSubview:*&v12[v14]];
  v20 = [objc_allocWithZone(UITapGestureRecognizer) init];
  [v20 setDelegate:v12];
  [v20 addTarget:v12 action:"handleTap"];

  [v12 addGestureRecognizer:v20];
  v21 = *&v12[OBJC_IVAR____TtC22SubscribePageExtension29TodayCardChinSingleLockupView_tapGestureRecognizer];
  *&v12[OBJC_IVAR____TtC22SubscribePageExtension29TodayCardChinSingleLockupView_tapGestureRecognizer] = v20;
  v22 = v20;

  [v12 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraExtraLarge];
  return v12;
}

void sub_10008FD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v7 = v6;
  v118 = a6;
  v132 = a2;
  v136 = a1;
  v10 = a5;
  v11 = sub_10074F314();
  __chkstk_darwin(v11 - 8);
  v117 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_10074F284();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000C518(&unk_100925990, qword_1007BB900);
  __chkstk_darwin(v14 - 8);
  v131 = &v113 - v15;
  v16 = sub_10000C518(&unk_100925520, &unk_1007A8120);
  __chkstk_darwin(v16 - 8);
  v130 = &v113 - v17;
  v18 = sub_10000C518(&unk_1009259A0, &unk_1007B0610);
  __chkstk_darwin(v18 - 8);
  v129 = &v113 - v19;
  v20 = sub_10000C518(&unk_100925530, &unk_1007A8130);
  __chkstk_darwin(v20 - 8);
  v128 = &v113 - v21;
  v22 = sub_10000C518(&unk_1009259B0, &unk_1007B0620);
  __chkstk_darwin(v22 - 8);
  v121 = &v113 - v23;
  v120 = sub_10074D734();
  v24 = *(v120 - 8);
  __chkstk_darwin(v120);
  v26 = &v113 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10000C518(&unk_100925540, &qword_1007A8140);
  __chkstk_darwin(v27 - 8);
  v122 = &v113 - v28;
  v137 = sub_10074FB54();
  v29 = *(v137 - 8);
  __chkstk_darwin(v137);
  v133 = &v113 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v32 = __chkstk_darwin(v31).n128_u64[0];
  v34 = &v113 - v33;
  v35 = v6[OBJC_IVAR____TtC22SubscribePageExtension29TodayCardChinSingleLockupView_sizeCategory];
  v6[OBJC_IVAR____TtC22SubscribePageExtension29TodayCardChinSingleLockupView_sizeCategory] = a5;
  v36 = v10;
  if (v10 == 7)
  {
    if (v35 == 7)
    {
      goto LABEL_6;
    }

LABEL_5:
    [v6 setNeedsLayout];
    goto LABEL_6;
  }

  if (v35 == 7)
  {
    goto LABEL_5;
  }

  switch(v10)
  {
    case 6:
      if (v35 != 6)
      {
        goto LABEL_5;
      }

      break;
    case 5:
      if (v35 != 5)
      {
        goto LABEL_5;
      }

      break;
    case 4:
      if (v35 != 4)
      {
        goto LABEL_5;
      }

      break;
    default:
      if ((v35 - 7) > 0xFFFFFFFC || v35 != v10)
      {
        goto LABEL_5;
      }

      break;
  }

LABEL_6:
  v37 = [v6 traitCollection];
  v38 = v36;
  if (v36 != 4)
  {
    sub_10074F694();
    sub_10074F694();
  }

  [v37 layoutDirection];
  sub_1007539B4();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;

  [v6 setLayoutMargins:{v40, v42, v44, v46}];
  v47 = sub_10056AD50(a4);
  [v7 setBackgroundColor:v47];

  v48 = *(v29 + 104);
  v126 = enum case for TodayCard.Style.white(_:);
  v127 = v29 + 104;
  v125 = v48;
  v48(v34);
  v49 = sub_100091F58(&qword_1009239F0, &type metadata accessor for TodayCard.Style, &protocol conformance descriptor for TodayCard.Style);
  sub_100753274();
  v124 = v49;
  sub_100753274();
  v135 = a4;
  if (v142 == v138 && v143 == v139)
  {
    v50 = 1;
  }

  else if (sub_100754754())
  {
    v50 = 1;
  }

  else
  {
    v50 = 2;
  }

  v51 = *(v29 + 8);
  v134 = v29 + 8;
  v123 = v51;
  v51(v34, v137);

  [v7 setOverrideUserInterfaceStyle:v50];
  v52 = [v7 layer];
  [v52 setCornerRadius:20.0];

  v53 = [v7 layer];
  v54 = v53;
  v55 = 12;
  if (v38 == 6)
  {
    v55 = 15;
  }

  if (v7[OBJC_IVAR____TtC22SubscribePageExtension29TodayCardChinSingleLockupView_isExpanded])
  {
    v56 = 0;
  }

  else
  {
    v56 = v55;
  }

  [v53 setMaskedCorners:v56];

  v57 = OBJC_IVAR____TtC22SubscribePageExtension29TodayCardChinSingleLockupView_lockupView;
  v58 = *&v7[OBJC_IVAR____TtC22SubscribePageExtension29TodayCardChinSingleLockupView_lockupView];
  v119 = sub_10074A194();
  v59 = *(v24 + 104);
  v60 = v120;
  v59(v26, enum case for OfferButtonPresenterViewAlignment.right(_:), v120);
  v61 = v121;
  v59(v121, enum case for OfferButtonPresenterViewAlignment.left(_:), v60);
  (*(v24 + 56))(v61, 0, 1, v60);
  sub_100091F58(&unk_100925550, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);
  v62 = v122;
  sub_10074A9C4();
  v63 = sub_10000C518(&unk_10092EEA0, qword_1007A8150);
  (*(*(v63 - 8) + 56))(v62, 0, 1, v63);
  v64 = sub_10074A184();
  v65 = sub_100742E24();
  v66 = v128;
  (*(*(v65 - 8) + 56))(v128, 1, 1, v65);
  v67 = sub_100745E94();
  v68 = v129;
  (*(*(v67 - 8) + 56))(v129, 1, 1, v67);
  v69 = sub_10074F8B4();
  v70 = v130;
  (*(*(v69 - 8) + 56))(v130, 1, 1, v69);
  v71 = sub_10000C518(&unk_100925560, &unk_1007A8E30);
  v72 = v131;
  (*(*(v71 - 8) + 56))(v131, 1, 1, v71);
  sub_100656038(v119, v58, v62, v132, (v64 & 1) == 0, 0, v66, v68, v70, v72);
  v58[OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_enforceMaximumOfTwoLinesOverall] = 0;
  sub_1002F3D3C();
  [v58 setNeedsLayout];
  sub_1002F3D3C();

  sub_10000C8CC(v72, &unk_100925990, qword_1007BB900);
  sub_10000C8CC(v70, &unk_100925520, &unk_1007A8120);
  sub_10000C8CC(v68, &unk_1009259A0, &unk_1007B0610);
  sub_10000C8CC(v66, &unk_100925530, &unk_1007A8130);
  sub_10000C8CC(v62, &unk_100925540, &qword_1007A8140);
  v73 = *&v7[v57];
  sub_100016C60(0, &qword_100923500, UIColor_ptr);
  v74 = v73;
  v75 = sub_100753DD4();
  v76 = v75;
  v77 = *&v74[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleTextColor];
  *&v74[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleTextColor] = v75;
  if (!v77)
  {
    v82 = v75;
    v79 = 0;
    v81 = v133;
    goto LABEL_23;
  }

  v78 = v75;
  v79 = v77;
  v80 = sub_100753FC4();

  v81 = v133;
  if ((v80 & 1) == 0)
  {
LABEL_23:
    sub_1005A3560();
    v78 = v76;
  }

  v83 = *(*&v7[v57] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_ordinalLabel);
  v84 = sub_100753DF4();
  [v83 setTextColor:v84];

  v85 = *(*&v7[v57] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel);
  v86 = sub_100753DF4();
  [v85 setTextColor:v86];

  v87 = *(*&v7[v57] + OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_crossLinkTitleLabel);
  v88 = sub_100753DF4();
  [v87 setTextColor:v88];

  v89 = *(*&v7[v57] + OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_crossLinkSubtitleLabel);
  v90 = sub_100753DF4();
  [v89 setTextColor:v90];

  v91 = *&v7[v57];
  v92 = v91[OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_preferStackedLargeAXLayouts];
  v91[OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_preferStackedLargeAXLayouts] = 1;
  if ((v92 & 1) == 0)
  {
    v93 = &v91[OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_axMetrics];
    swift_beginAccess();
    v93[337] = 1;
    [v91 setNeedsLayout];
  }

  v125(v81, v126, v137);
  sub_100753274();
  sub_100753274();
  if (v138 == v140 && v139 == v141)
  {
    v123(v81, v137);

LABEL_30:
    v95 = *(*&v7[v57] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton);
    v96 = sub_100753EF4();
    goto LABEL_32;
  }

  v94 = sub_100754754();
  v123(v81, v137);

  if (v94)
  {
    goto LABEL_30;
  }

  v97 = *(*&v7[v57] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton);
  v98 = objc_opt_self();
  v95 = v97;
  v96 = [v98 whiteColor];
LABEL_32:
  v99 = v96;
  [v95 setTintColor:v96];

  v100 = *&v7[v57];
  v101 = *(v100 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel);
  if (v101)
  {
    v102 = v101;
    v103 = sub_100753DF4();
    [v102 setTextColor:v103];

    v100 = *&v7[v57];
  }

  v104 = *(v100 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel);
  if (v104)
  {
    v105 = v104;
    v106 = sub_100753DF4();
    [v105 setTextColor:v106];

    v107 = *(*&v7[v57] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel);
    if (v107)
    {
      [v107 setAccessibilityIgnoresInvertColors:1];
    }
  }

  sub_100090E24();
  sub_10074A194();
  v108 = sub_10074EF24();

  if (v108)
  {
    v109 = v114;
    sub_10074F294();
    sub_10074F254();
    (*(v115 + 8))(v109, v116);
    swift_beginAccess();
    sub_10074F374();
    v110 = *(*&v7[v57] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
    sub_10074F324();
    sub_100743364();
    [v110 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_100753E34();
    }

    sub_100743224();

    v111 = *(*&v7[v57] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
    sub_1007433C4();
    sub_100091F58(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v112 = v111;
    sub_100744204();
  }

  else
  {
    v112 = *(*&v7[v57] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
    sub_100743344();
  }
}

void sub_100090E24()
{
  [v0 overrideUserInterfaceStyle];
  sub_100753094();
  v1 = sub_100753064();

  v2 = OBJC_IVAR____TtC22SubscribePageExtension29TodayCardChinSingleLockupView_lockupView;
  v3 = [*(*&v0[OBJC_IVAR____TtC22SubscribePageExtension29TodayCardChinSingleLockupView_lockupView] + OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_crossLinkTitleLabel) layer];
  [v3 setCompositingFilter:v1];

  v4 = [*(*&v0[v2] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel) layer];
  [v4 setCompositingFilter:v1];

  v5 = *&v0[v2];
  v6 = *(v5 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel);
  if (v6)
  {
    v7 = [v6 layer];
    [v7 setCompositingFilter:v1];

    v5 = *&v0[v2];
  }

  v8 = [*(*(v5 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton) + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_subtitleLabel) layer];
  [v8 setCompositingFilter:v1];

  v9 = [*(*&v0[v2] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel) layer];
  [v9 setCompositingFilter:v1];
}

void sub_100090FEC()
{
  v19.receiver = v0;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, "layoutSubviews");
  [v0 bounds];
  [v0 layoutMargins];
  sub_100753B14();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = OBJC_IVAR____TtC22SubscribePageExtension29TodayCardChinSingleLockupView_lockupView;
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension29TodayCardChinSingleLockupView_lockupView] sizeThatFits:{v5, v7}];
  v11 = v10;
  v12 = *&v0[v9];
  v20.origin.x = v2;
  v20.origin.y = v4;
  v20.size.width = v6;
  v20.size.height = v8;
  MinX = CGRectGetMinX(v20);
  v21.origin.x = v2;
  v21.origin.y = v4;
  v21.size.width = v6;
  v21.size.height = v8;
  v14 = CGRectGetMidY(v21) + v11 * -0.5;
  v22.origin.x = v2;
  v22.origin.y = v4;
  v22.size.width = v6;
  v22.size.height = v8;
  [v12 setFrame:{MinX, v14, CGRectGetWidth(v22), v11}];

  v15 = &v0[OBJC_IVAR____TtC22SubscribePageExtension29TodayCardChinSingleLockupView_impressionsUpdateBlock];
  swift_beginAccess();
  v16 = *v15;
  if (*v15)
  {
    v17 = *(v15 + 1);

    v16(v18);
    sub_1000164A8(v16, v17);
  }
}

double sub_1000911D8(double a1)
{
  v3 = [v1 traitCollection];
  if (qword_100920850 != -1)
  {
    swift_once();
  }

  sub_100230B00(v3, &xmmword_10097F3D0, 1);
  sub_100753804();
  sub_1007535D4();
  sub_100753804();
  sub_1007535D4();

  return a1;
}

void sub_10009157C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v4 - 8);
  v6 = &v24[-v5 - 8];
  v7 = sub_100752914();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_10000C824(a3, v24);
      sub_10000C518(&qword_1009242A0, &qword_1007A6400);
      sub_10074FBB4();
      if ((swift_dynamicCast() & 1) != 0 && (v13 = sub_10074FBA4(), , v13))
      {
        sub_10074A1A4();
        if (swift_dynamicCastClass())
        {
          sub_10074A194();
          sub_10074EE94();

          if ((*(v8 + 48))(v6, 1, v7) == 1)
          {

            sub_10000C8CC(v6, &unk_100925380, qword_1007A8E40);
          }

          else
          {
            (*(v8 + 32))(v10, v6, v7);
            [*&v12[OBJC_IVAR____TtC22SubscribePageExtension29TodayCardChinSingleLockupView_lockupView] frame];
            v15 = v14;
            v17 = v16;
            v19 = v18;
            v21 = v20;
            v22 = [v12 superview];
            [v12 convertRect:v22 toView:{v15, v17, v19, v21}];

            sub_100749544();

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

    else
    {
    }
  }
}

double sub_1000919B0(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension29TodayCardChinSingleLockupView_clickActionHandler);
  v4 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension29TodayCardChinSingleLockupView_clickActionHandler);
  v5 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension29TodayCardChinSingleLockupView_clickActionHandler + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1000164A8(v4, v5);
}

void sub_1000919D0()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC22SubscribePageExtension29TodayCardChinSingleLockupView_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
  sub_1007433C4();
  sub_100091F58(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v2 = v1;
  sub_100744274();
}

void sub_100091A90()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC22SubscribePageExtension29TodayCardChinSingleLockupView_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
  sub_100743344();
}

uint64_t sub_100091AFC()
{
  sub_10000C518(&unk_1009259C0, &unk_1007A9270);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1007A5A00;
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29TodayCardChinSingleLockupView_lockupView);
  *(v1 + 56) = type metadata accessor for TodayCardLockupView();
  *(v1 + 32) = v2;
  v3 = v2;
  return v1;
}

double sub_100091BB4(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();

  return result;
}

void (*sub_100091C14(uint64_t *a1))(void **a1, char a2, __n128 a3)
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
  v5 = OBJC_IVAR____TtC22SubscribePageExtension29TodayCardChinSingleLockupView_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_100091CAC;
}

void sub_100091CAC(void **a1, char a2, __n128 a3)
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
  }

  free(v4);
}

uint64_t sub_100091D2C()
{
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension29TodayCardChinSingleLockupView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001B5AC(*v1, v1[1]);
  return v2;
}

double sub_100091D88(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension29TodayCardChinSingleLockupView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1000164A8(v6, v7);
}

void (*sub_100091E48(uint64_t a1, uint64_t a2))()
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  swift_weakInit();
  sub_10000C824(a1, v7);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  sub_100012160(v7, v5 + 32);
  return sub_100092058;
}

uint64_t sub_100091F58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100091FA0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100091FD8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100092010()
{

  sub_10000C620((v0 + 32));

  return _swift_deallocObject(v0, 72, 7);
}

void sub_100092064()
{
  swift_weakInit();
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension29TodayCardChinSingleLockupView_impressionsUpdateBlock);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29TodayCardChinSingleLockupView_tapGestureRecognizer) = 0;
  v2 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension29TodayCardChinSingleLockupView_clickActionHandler);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29TodayCardChinSingleLockupView_isExpanded) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29TodayCardChinSingleLockupView_sizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29TodayCardChinSingleLockupView_wantsCardConsistentMargins) = 0;
  sub_100754644();
  __break(1u);
}

BOOL sub_100092128(void *a1)
{
  v2 = v1;
  [a1 locationInView:v1];
  v4 = v3;
  v6 = v5;
  v7 = [v1 hitTest:0 withEvent:?];
  if (v2[OBJC_IVAR____TtC22SubscribePageExtension29TodayCardChinSingleLockupView_isExpanded] != 1 || ([v2 bounds], v13.x = v4, v13.y = v6, !CGRectContainsPoint(v14, v13)))
  {

    return 0;
  }

  if (v7)
  {
    sub_100016C60(0, &qword_100922300, UIView_ptr);
    v8 = v7;
    v9 = v2;
    v10 = sub_100753FC4();

    if (v10)
    {

      return 0;
    }

    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();

    if (v12)
    {
      return 0;
    }
  }

  return *&v2[OBJC_IVAR____TtC22SubscribePageExtension29TodayCardChinSingleLockupView_clickActionHandler] != 0;
}

uint64_t sub_1000922D0@<X0>(uint64_t a2@<X2>, char *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v9 = sub_1007417F4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v31 - v14;
  __chkstk_darwin(v16);
  v18 = v31 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v21 = [Strong collectionView];

    if (v21)
    {
      v22 = [v21 indexPathForItemAtPoint:{a4, a5}];
      if (v22)
      {
        v23 = v22;
        sub_100741744();

        v31[1] = a2;
        v32 = *(v10 + 32);
        v32(v18, v15, v9);
        isa = sub_100741704().super.isa;
        v25 = [v21 cellForItemAtIndexPath:isa];
        v31[0] = v25;

        (*(v10 + 16))(v12, v18, v9);
        swift_getObjectType();
        v26 = v25;
        v27 = sub_10074ACA4();

        (*(v10 + 8))(v18, v9);
        v32(a3, v12, v9);
        v28 = type metadata accessor for PreviewItem(0);
        *&a3[*(v28 + 20)] = v31[0];
        *&a3[*(v28 + 24)] = v27;
        return (*(*(v28 - 8) + 56))(a3, 0, 1, v28);
      }
    }
  }

  v30 = type metadata accessor for PreviewItem(0);
  return (*(*(v30 - 8) + 56))(a3, 1, 1, v30);
}

uint64_t sub_1000925D4@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v33 = a2;
  v6 = sub_10000C518(&unk_100925740, &qword_1007A8F58);
  __chkstk_darwin(v6 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v28 - v10;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    swift_getObjectType();
    sub_10074ACB4();
    ObjectType = sub_10074AC94();
    v15 = ObjectType;
    if (ObjectType)
    {
      ObjectType = swift_getObjectType();
    }

    else
    {
      v34[1] = 0;
      v34[2] = 0;
    }

    v34[0] = v15;
    v34[3] = ObjectType;
    v19 = sub_10074ACC4();
    sub_10000C8CC(v34, &unk_100923520, &qword_1007A5A70);
    if (v19)
    {
      v28 = v13;
      v29 = v8;

      v20 = sub_10074D314();
      v21 = v20;
      v34[0] = _swiftEmptyArrayStorage;
      v30 = v11;
      v31 = a3;
      v22 = v20 & 0xFFFFFFFFFFFFFF8;
      if (v20 >> 62)
      {
LABEL_27:
        v23 = sub_100754664();
      }

      else
      {
        v23 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v24 = 0;
      v32 = _swiftEmptyArrayStorage;
      while (v23 != v24)
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v25 = sub_100754574();
          v26 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (v24 >= *(v22 + 16))
          {
            goto LABEL_26;
          }

          v25 = *(v21 + 8 * v24 + 32);

          v26 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }
        }

        v27 = sub_100093854(v24, v25, v19, v4, v33);

        ++v24;
        if (v27)
        {
          sub_100753284();
          if (*((v34[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_100753304();
          }

          sub_100753344();
          v32 = v34[0];
          v24 = v26;
        }
      }

      v11 = v30;
      v8 = v29;
    }

    sub_100016B4C(v11, v8, &unk_100925740, &qword_1007A8F58);
    sub_1007435A4();

    swift_unknownObjectRelease();
    return sub_10000C8CC(v11, &unk_100925740, &qword_1007A8F58);
  }

  else
  {
    v16 = sub_1007435D4();
    v17 = *(*(v16 - 8) + 56);

    return v17(a3, 1, 1, v16);
  }
}

unint64_t sub_10009294C(uint64_t a1)
{
  v1 = sub_100749B94();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&unk_100925740, &qword_1007A8F58);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = sub_100749BC4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007435B4();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10000C8CC(v7, &unk_100925740, &qword_1007A8F58);
    return 0;
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    sub_100749BA4();
    v13 = (*(v2 + 88))(v4, v1);
    if (v13 == enum case for FlowPreviewDestination.ContentType.source(_:))
    {
      sub_100094E7C();
      (*(v9 + 8))(v11, v8);
      return 0;
    }

    else if (v13 == enum case for FlowPreviewDestination.ContentType.flowDestination(_:))
    {
      v14 = sub_100094344();
      (*(v9 + 8))(v11, v8);
      return v14;
    }

    else
    {
      (*(v9 + 8))(v11, v8);
      (*(v2 + 8))(v4, v1);
      return 0;
    }
  }
}

Class sub_100092C64()
{
  v0 = sub_1007435C4();
  if (v0 >> 62)
  {
    v6 = sub_100754664();

    if (v6)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v1)
  {
    return 0;
  }

LABEL_3:
  v2 = sub_1007435C4();
  if (v2 >> 62)
  {
    sub_100016C60(0, &qword_1009257B0, UIMenuElement_ptr);
    v3 = sub_100754654();
  }

  else
  {

    sub_100754764();
    sub_100016C60(0, &qword_1009257B0, UIMenuElement_ptr);
    v3 = v2;
  }

  sub_100016C60(0, &qword_1009257B8, UIMenu_ptr);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v10.value._countAndFlagsBits = 0;
  v10.value._object = 0;
  v8.value.super.isa = 0;
  v8.is_nil = 0;
  v4.value = 1;
  return sub_100753C34(v9, v10, v8, v4, 0xFFFFFFFFFFFFFFFFLL, v3, v7).super.super.isa;
}

id sub_100092DA4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_1000966EC(v4);

  return v6;
}

uint64_t sub_100092E04(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v2 - 8);
  v42[0] = v42 - v3;
  v4 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v4 - 8);
  v42[1] = v42 - v5;
  v6 = sub_100752614();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10000C518(&unk_100925740, &qword_1007A8F58);
  __chkstk_darwin(v7 - 8);
  v9 = v42 - v8;
  v10 = sub_100749BC4();
  v44 = *(v10 - 8);
  v45 = v10;
  __chkstk_darwin(v10);
  v43 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1007417F4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000C518(&unk_100925730, &unk_1007A8F48);
  __chkstk_darwin(v16 - 8);
  v18 = v42 - v17;
  v19 = sub_1007435D4();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, a1, v12, v21);
  v24 = *(a1 + *(type metadata accessor for PreviewItem(0) + 20));
  if (v24)
  {
    v25 = sub_100016C60(0, &qword_100922300, UIView_ptr);
  }

  else
  {
    v25 = 0;
    *(&v47 + 1) = 0;
    *&v48 = 0;
  }

  *&v47 = v24;
  *(&v48 + 1) = v25;
  v26 = v24;
  sub_1000925D4(&v47, v18);
  (*(v13 + 8))(v15, v12);
  sub_10000C8CC(&v47, &unk_100923520, &qword_1007A5A70);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    v27 = &unk_100925730;
    v28 = &unk_1007A8F48;
    v29 = v18;
    return sub_10000C8CC(v29, v27, v28);
  }

  (*(v20 + 32))(v23, v18, v19);
  sub_1007435B4();
  v31 = v44;
  v30 = v45;
  if ((*(v44 + 48))(v9, 1, v45) == 1)
  {
    (*(v20 + 8))(v23, v19);
    v27 = &unk_100925740;
    v28 = &qword_1007A8F58;
    v29 = v9;
    return sub_10000C8CC(v29, v27, v28);
  }

  v33 = v43;
  (*(v31 + 32))(v43, v9, v30);
  if (!sub_100749B84())
  {
    (*(v31 + 8))(v33, v30);
    return (*(v20 + 8))(v23, v19);
  }

  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  sub_10074ECB4();
  sub_10074EC64();
  sub_10074EC74();
  sub_1007433F4();
  swift_allocObject();
  v34 = sub_1007433E4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v36 = Strong;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v37 = v43;
      sub_100749BB4();
      sub_100747DF4();

      sub_10000C8CC(&v47, &unk_100923520, &qword_1007A5A70);
      (*(v44 + 8))(v37, v45);
      return (*(v20 + 8))(v23, v19);
    }
  }

  v38 = *(v46 + qword_100925598);
  v39 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
  v40 = v42[0];
  sub_1007526C4();
  v41 = *(v39 - 8);
  if ((*(v41 + 48))(v40, 1, v39) != 1)
  {
    sub_1003C13F0(v34, 1, v38, v40);

    (*(v44 + 8))(v43, v45);
    (*(v20 + 8))(v23, v19);
    return (*(v41 + 8))(v40, v39);
  }

  (*(v44 + 8))(v43, v45);
  (*(v20 + 8))(v23, v19);
  v27 = &unk_100923960;
  v28 = &qword_1007A6240;
  v29 = v40;
  return sub_10000C8CC(v29, v27, v28);
}

void sub_1000935B8(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, uint64_t))
{
  v10 = a3;
  v11 = a4;
  swift_unknownObjectRetain();
  v12 = a1;
  a6(v10, a5);

  swift_unknownObjectRelease();
}

void sub_100093658(void *a1, void (*a2)(void))
{
  if (a1 && a2)
  {
    v3 = a1;
    a2();
  }
}

void sub_1000936C0(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = a1;
  sub_100097410(v8, a5);

  swift_unknownObjectRelease();
}