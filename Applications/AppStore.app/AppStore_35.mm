void sub_1003E5550(uint64_t a1, uint64_t a2)
{
  v2 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  __chkstk_darwin(v2 - 8);
  v4 = &v39 - v3;
  v5 = type metadata accessor for ImpressionMetrics();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = *(Strong + OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_guidedSearchResult);
    if (v11 && (swift_beginAccess(), (v12 = swift_weakLoadStrong()) != 0))
    {
      v13 = v12;
      v14 = OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_pills;
      swift_beginAccess();
      v15 = *&v10[v14];

      v51 = GuidedSearchResult.tokens.getter();
      v42 = v10;
      v40 = v11;
      if (v15 >> 62)
      {
        goto LABEL_36;
      }

      for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v49 = v15 & 0xFFFFFFFFFFFFFF8;
        v50 = v15 & 0xC000000000000001;
        v17 = v51 & 0xFFFFFFFFFFFFFF8;
        v52 = v51 & 0xFFFFFFFFFFFFFF8;
        if (v51 < 0)
        {
          v17 = v51;
        }

        v39 = v17;
        v47 = v51 & 0xC000000000000001;
        v45 = (v6 + 48);
        v44 = (v6 + 32);
        v43 = (v6 + 8);
        v18 = 4;
        v48 = v51 >> 62;
        v46 = i;
        v41 = v4;
        while (1)
        {
          v19 = v18 - 4;
          if (v50)
          {
            v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v19 >= *(v49 + 16))
            {
              goto LABEL_34;
            }

            v20 = *(v15 + 8 * v18);
          }

          v21 = v20;
          v22 = v18 - 3;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v48)
          {
            if (v19 == _CocoaArrayWrapper.endIndex.getter())
            {
LABEL_30:

              goto LABEL_31;
            }
          }

          else if (v19 == *(v52 + 16))
          {
            goto LABEL_30;
          }

          if (v47)
          {
            v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v19 >= *(v52 + 16))
            {
              goto LABEL_35;
            }

            v6 = *(v51 + 8 * v18);
          }

          GuidedSearchToken.impressionMetrics.getter();
          if ((*v45)(v4, 1, v5) == 1)
          {

            sub_10002B894(v4, &qword_100973D30, &unk_1007B1DC0);
          }

          else
          {
            (*v44)(v8, v4, v5);
            v23 = v21;
            if ([v23 isHidden])
            {
            }

            else
            {
              [v23 frame];
              v25 = v24;
              v27 = v26;
              v29 = v28;
              v31 = v30;

              v32 = v13;
              v33 = v15;
              v34 = v5;
              v35 = v8;
              v36 = v42;
              v37 = [v42 superview];
              v38 = v36;
              v8 = v35;
              v5 = v34;
              v15 = v33;
              v13 = v32;
              v4 = v41;
              [v38 convertRect:v37 toView:{v25, v27, v29, v31}];

              ImpressionsCalculator.addElement(_:at:)();
            }

            (*v43)(v8, v5);
          }

          ++v18;
          if (v22 == v46)
          {
            goto LABEL_31;
          }
        }

        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        ;
      }

LABEL_31:
    }

    else
    {
    }
  }
}

void sub_1003E5A4C(uint64_t a1)
{
  v2 = v1;
  v60.receiver = v1;
  v60.super_class = type metadata accessor for GuidedSearchResultContentView();
  objc_msgSendSuper2(&v60, "layoutSubviews");
  LayoutMarginsAware<>.layoutFrame.getter();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [v1 traitCollection];
  [v11 displayScale];
  if (v12 != 3.0)
  {

    goto LABEL_5;
  }

  v13 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (v13)
  {
LABEL_5:
    v14 = 1.0;
    goto LABEL_6;
  }

  v14 = 0.666666667;
LABEL_6:
  [v2 effectiveUserInterfaceLayoutDirection];
  v15 = *&v2[OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_topSeparator];
  v61.origin.x = v4;
  v61.origin.y = v6;
  v61.size.width = v8;
  v61.size.height = v10;
  MinX = CGRectGetMinX(v61);
  v62.origin.x = v4;
  v62.origin.y = v6;
  v62.size.width = v8;
  v62.size.height = v10;
  v59 = v14;
  [v15 setFrame:{MinX, 0.0, CGRectGetWidth(v62), v14}];
  v17 = *&v2[OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_title];
  v63.origin.x = v4;
  v63.origin.y = v6;
  v63.size.width = v8;
  v63.size.height = v10;
  CGRectGetMinX(v63);
  [v15 frame];
  CGRectGetMaxY(v64);
  [v17 sizeThatFits:{v8, v10}];
  [v2 bounds];
  CGRect.withLayoutDirection(_:relativeTo:)();
  [v17 setFrame:?];
  v65.origin.x = v4;
  v65.origin.y = v6;
  v65.size.width = v8;
  v65.size.height = v10;
  v18 = CGRectGetMinX(v65);
  [v17 frame];
  MaxY = CGRectGetMaxY(v66);
  [v2 bounds];
  v20 = CGRectGetMaxY(v67);
  v21 = [v2 traitCollection];
  v22 = [v21 preferredContentSizeCategory];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;
  if (v23 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v25 == v26)
  {

    goto LABEL_10;
  }

  v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v27)
  {
LABEL_10:
    v28 = static UIContentSizeCategory.<= infix(_:_:)();

    if (v28)
    {
      v29 = 3;
    }

    else
    {
      v29 = 2;
    }

    v30 = OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_pills;
    swift_beginAccess();
    v31 = *&v2[v30];
    if (v31 >> 62)
    {
LABEL_39:
      v32 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v33 = v32 != 0;
    v68.origin.x = v4;
    v68.origin.y = v6;
    v68.size.width = v8;
    v68.size.height = v10;
    Width = CGRectGetWidth(v68);
    v35 = *&v2[v30];
    v58 = v2;
    if (v35 >> 62)
    {
      v36 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v36)
    {
      goto LABEL_36;
    }

    v37 = 0;
    v52 = v20 - v59 + -12.0;
    v53 = MaxY + 16.0;
    v2 = (v35 & 0xC000000000000001);
    v20 = 1.79769313e308;
    while (2)
    {
      v30 = v33;
      while (2)
      {
        v38 = v37;
        while (1)
        {
          if (v2)
          {
            v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v38 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_38;
            }

            v39 = *(v35 + 8 * v38 + 32);
          }

          v40 = v39;
          v37 = v38 + 1;
          if (__OFADD__(v38, 1))
          {
            __break(1u);
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          if (v29 >= v30)
          {
            break;
          }

          [v39 setHidden:1];

          ++v38;
          if (v37 == v36)
          {
            goto LABEL_36;
          }
        }

        v54 = v20;
        v55 = Width;
        [v39 sizeThatFits:{Width, v20}];
        v42 = v41;
        MaxY = v43;
        v44 = v18;
        v45 = v18 + v41;
        v69.size.width = v8;
        v56 = v6;
        v57 = v4;
        v69.origin.x = v4;
        v69.size.height = v10;
        v69.origin.y = v6;
        if (CGRectGetMaxX(v69) >= v45)
        {
          v33 = v30;
          v46 = v44;
          v47 = v53;
          v48 = 8.0;
        }

        else
        {
          v33 = v30 + 1;
          if (v29 <= v30)
          {
            [v40 setHidden:1];

            ++v30;
            v18 = v44;
            Width = v55;
            v20 = v54;
            if (v37 != v36)
            {
              continue;
            }

LABEL_36:

            v49 = *&v58[OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_bottomSeparator];
            v72.origin.x = v4;
            v72.origin.y = v6;
            v72.size.width = v8;
            v72.size.height = v10;
            v50 = CGRectGetMinX(v72);
            [v58 bounds];
            v51 = CGRectGetMaxY(v73) - v59;
            v74.origin.x = v4;
            v74.origin.y = v6;
            v74.size.width = v8;
            v74.size.height = v10;
            [v49 setFrame:{v50, v51, CGRectGetWidth(v74), v59}];
            return;
          }

          v70.origin.y = v6;
          v70.origin.x = v4;
          v70.size.width = v8;
          v70.size.height = v10;
          v46 = CGRectGetMinX(v70);
          v48 = 8.0;
          v47 = v53 + MaxY + 8.0;
        }

        break;
      }

      [v58 bounds];
      v53 = v47;
      CGRect.withLayoutDirection(_:relativeTo:)();
      [v40 setFrame:?];
      v18 = v42 + v48 + v46;
      [v40 frame];
      [v40 setHidden:v52 < CGRectGetMaxY(v71)];

      Width = v55;
      v6 = v56;
      v4 = v57;
      v20 = v54;
      if (v37 != v36)
      {
        continue;
      }

      goto LABEL_36;
    }
  }

  __break(1u);
}

id sub_1003E60DC()
{
  v0 = [objc_allocWithZone(UILabel) init];
  result = [v0 setNumberOfLines:0];
  qword_100983F28 = v0;
  return result;
}

id sub_1003E612C()
{
  result = [objc_opt_self() buttonWithType:1];
  qword_100983F30 = result;
  return result;
}

uint64_t sub_1003E616C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_1003E61B0()
{
  *(v0 + OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_guidedSearchResult) = 0;

  [*(v0 + OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_title) setText:0];
  v1 = OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_pills;
  swift_beginAccess();
  sub_1003E7B28((v0 + v1), 0x4665726170657270, 0xEF6573756552726FLL);
  return swift_endAccess();
}

double sub_1003E6254()
{
  swift_beginAccess();

  return result;
}

double sub_1003E629C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_1003E6354()
{
  v1 = (v0 + OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10000827C(*v1, v1[1]);
  return v2;
}

uint64_t sub_1003E63B0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_10001F63C(v6, v7);
}

void (*sub_1003E6470(uint64_t a1, uint64_t a2))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  return sub_1003E807C;
}

uint64_t sub_1003E6564(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = sub_1003E8244(&qword_100983FA0, a2, type metadata accessor for GuidedSearchResultContentView, &unk_1007CB74C);
  result = sub_1003E8244(&qword_100983FA8, v3, type metadata accessor for GuidedSearchResultContentView, &unk_1007CB77C);
  *(a1 + 32) = result;
  return result;
}

id sub_1003E65E8(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_title];
  result = [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleSubheadline variant:1024];
  if (result)
  {
    v4 = result;
    [v2 setFont:result];

    return [a1 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1003E668C(uint64_t a1, char a2, unsigned int (**a3)(char *, uint64_t, uint64_t), double a4, double a5)
{
  LOBYTE(v6) = a2;
  v88 = type metadata accessor for FontSource();
  v10 = *(v88 - 8);
  __chkstk_darwin(v88);
  v87 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v12 - 8);
  v86 = (&v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_10002849C(&qword_100975048, "b,\b");
  __chkstk_darwin(v14 - 8);
  v85 = &v78 - v15;
  v16 = sub_10002849C(&qword_10097CC90, &unk_1007BB2A0);
  __chkstk_darwin(v16 - 8);
  v18 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = (&v78 - v20);
  if (qword_10096DBA8 != -1)
  {
LABEL_44:
    swift_once();
  }

  v22 = qword_100983F30;
  v89.super.isa = a3;
  sub_1003E3900(0, 0, a3, v6 & 1);
  v23 = type metadata accessor for UIButton.Configuration();
  a3 = *(v23 - 8);
  v24 = a3[7];
  v93 = v23;
  v24(v21, 0, 1);
  UIButton.configuration.setter();
  sub_10002849C(&qword_10096FD08, &unk_1007B1370);
  v25 = swift_allocObject();
  v80 = xmmword_1007B10D0;
  *(v25 + 16) = xmmword_1007B10D0;
  v94 = v25;
  *(v25 + 32) = _swiftEmptyArrayStorage;
  v26 = *(a1 + 16);
  if (v26)
  {
    v90 = v21;
    v27 = 0;
    v92 = a3 + 6;
    v84 = (v10 + 13);
    v83 = NSFontAttributeName;
    v82 = (v10 + 1);
    v81 = enum case for FontSource.useCase(_:);
    v28 = a1 + 40;
    v95 = v22;
    v91 = v26;
    v79 = a1 + 40;
    do
    {
      v29 = v94 + 3;
      v21 = v27;
      v30 = a4;
      v6 = (v28 + 16 * v27);
      while (1)
      {
        if (v21 >= v26)
        {
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        v27 = (v21 + 1);
        if (__OFADD__(v21, 1))
        {
          goto LABEL_40;
        }

        a3 = *(v6 - 1);
        a1 = *v6;

        UIButton.configuration.getter();
        if ((*v92)(v18, 1, v93))
        {
          a3 = v90;
          v10 = &qword_10097CC90;
          sub_100031660(v18, v90, &qword_10097CC90, &unk_1007BB2A0);
          UIButton.configuration.setter();
          sub_10002B894(v18, &qword_10097CC90, &unk_1007BB2A0);
        }

        else
        {
          v31 = v83;
          v98[0] = v83;
          v32 = qword_10096E1A0;

          v33 = v31;
          if (v32 != -1)
          {
            swift_once();
          }

          v34 = type metadata accessor for FontUseCase();
          v35 = sub_1000056A8(v34, qword_1009D1460);
          v36 = v87;
          (*(*(v34 - 8) + 16))(v87, v35, v34);
          v37 = v88;
          (*v84)(v36, v81, v88);
          isa = FontSource.font(compatibleWith:)(v89).super.isa;
          (*v82)(v36, v37);
          v98[4] = sub_100005744(0, &qword_1009730E0, UIFont_ptr);
          v98[1] = isa;
          sub_10002849C(&unk_100982750, &unk_1007B1F10);
          v39 = static _DictionaryStorage.allocate(capacity:)();

          sub_100031660(v98, &v96, &unk_100970EC0, &unk_1007B2BF0);
          v10 = v96;
          v40 = sub_1003D8ACC();
          if (v41)
          {
            goto LABEL_42;
          }

          v39[(v40 >> 6) + 8] |= 1 << v40;
          *(v39[6] + 8 * v40) = v10;
          sub_100056164(&v97, (v39[7] + 32 * v40));
          v42 = v39[2];
          v43 = __OFADD__(v42, 1);
          v44 = v42 + 1;
          if (v43)
          {
            goto LABEL_43;
          }

          v39[2] = v44;

          sub_10002B894(v98, &unk_100970EC0, &unk_1007B2BF0);
          v10 = v86;
          AttributeContainer.init(_:)();
          v45 = v85;
          AttributedString.init(_:attributes:)();
          v46 = type metadata accessor for AttributedString();
          (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
          UIButton.Configuration.attributedTitle.setter();
          v22 = v95;
          UIButton.configuration.setter();
        }

        [v22 sizeThatFits:{a5, 1.79769313e308}];
        v48 = v47;
        v50 = v49;
        if (v30 + v47 > a5)
        {
          break;
        }

        v10 = v94[2];
        if (!v10)
        {
          goto LABEL_41;
        }

        v51 = v29[v10];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29[v10] = v51;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v51 = sub_100033A90(0, *(v51 + 2) + 1, 1, v51);
          v29[v10] = v51;
        }

        v54 = *(v51 + 2);
        v53 = *(v51 + 3);
        a3 = (v54 + 1);
        if (v54 >= v53 >> 1)
        {
          v29[v10] = sub_100033A90((v53 > 1), v54 + 1, 1, v51);
        }

        v30 = v30 + v48 + 8.0;

        v55 = v29[v10];
        *(v55 + 16) = a3;
        v56 = v55 + 16 * v54;
        *(v56 + 32) = v48;
        *(v56 + 40) = v50;
        v21 = (v21 + 1);
        v6 += 2;
        v26 = v91;
        v22 = v95;
        if (v27 == v91)
        {
          goto LABEL_25;
        }
      }

      sub_10002849C(&qword_10096FD18, &qword_1007B1380);
      v57 = swift_allocObject();
      *(v57 + 16) = v80;
      *(v57 + 32) = v48;
      *(v57 + 40) = v50;
      v59 = v94[2];
      v58 = v94[3];
      a3 = (v59 + 1);
      if (v59 >= v58 >> 1)
      {
        v94 = sub_100033B94((v58 > 1), v59 + 1, 1, v94);
      }

      v60 = v94;
      v94[2] = a3;
      v60[v59 + 4] = v57;
      v26 = v91;
      v28 = v79;
    }

    while (v27 != v91);
  }

LABEL_25:
  v61 = [(objc_class *)v89.super.isa preferredContentSizeCategory];
  v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v64 = v63;
  v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v67 = v62;
  v68 = v65;
  if (v67 == v66 && v64 == v65)
  {
  }

  else
  {
    v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v69 & 1) == 0)
    {
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }
  }

  static UIContentSizeCategory.<= infix(_:_:)();

  v61 = sub_1000477CC();
  if ((v72 & 1) == 0)
  {
LABEL_30:
    sub_1005E7AA4(v61, v70, v71, v72);
    v74 = v73;
LABEL_37:
    swift_unknownObjectRelease();
    return v74;
  }

  v69 = v72;
  v64 = v71;
  v68 = v70;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v75 = swift_dynamicCastClass();
  if (!v75)
  {
    swift_unknownObjectRelease();
    v75 = _swiftEmptyArrayStorage;
  }

  v76 = v75[2];

  if (__OFSUB__(v69 >> 1, v64))
  {
    goto LABEL_46;
  }

  if (v76 != (v69 >> 1) - v64)
  {
LABEL_47:
    swift_unknownObjectRelease();
    v72 = v69;
    v71 = v64;
    v70 = v68;
    goto LABEL_30;
  }

  v74 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v74)
  {
    v74 = _swiftEmptyArrayStorage;
    goto LABEL_37;
  }

  return v74;
}

void sub_1003E7078(uint64_t a1, char a2, unsigned int (**a3)(char *, uint64_t, uint64_t), double a4)
{
  v4 = sub_1003E668C(a1, a2 & 1, a3, 0.0, a4);
  v5 = v4;
  v6 = v4[2];
  if (!v6)
  {
LABEL_20:

    return;
  }

  v7 = 0;
  v20 = v4 + 4;
  v8 = -8.0;
  while (v7 < v5[2])
  {
    v9 = v20[v7];
    v10 = *(v9 + 16);
    if (v10)
    {

      sub_100144108(0, v10, 0);
      v11 = _swiftEmptyArrayStorage;
      v12 = _swiftEmptyArrayStorage[2];
      v13 = (v9 + 40);
      do
      {
        v14 = *v13;
        v21 = v11;
        v15 = *(v11 + 3);
        v16 = v12 + 1;
        if (v12 >= v15 >> 1)
        {
          sub_100144108((v15 > 1), v12 + 1, 1);
          v11 = v21;
        }

        *(v11 + 2) = v16;
        v11[v12 + 4] = v14;
        v13 += 2;
        ++v12;
        --v10;
      }

      while (v10);
LABEL_13:
      v17 = v11[4];
      v18 = v16 - 1;
      if (v16 != 1)
      {
        v19 = 5;
        do
        {
          if (v17 < v11[v19])
          {
            v17 = v11[v19];
          }

          ++v19;
          --v18;
        }

        while (v18);
      }

      goto LABEL_4;
    }

    v16 = _swiftEmptyArrayStorage[2];

    v11 = _swiftEmptyArrayStorage;
    if (v16)
    {
      goto LABEL_13;
    }

    v17 = 0.0;
LABEL_4:
    ++v7;
    v8 = v8 + v17 + 8.0;
    if (v7 == v6)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
}

id sub_1003E7244()
{
  v0 = type metadata accessor for PageEnvironment();
  v65 = *(v0 - 8);
  v66 = v0;
  __chkstk_darwin(v0);
  v64 = (&v58 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v2 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v58 - v4;
  v63 = type metadata accessor for PageGrid.Direction();
  v6 = *(v63 - 8);
  __chkstk_darwin(v63);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v58 - v10;
  v12 = type metadata accessor for PageGrid();
  v59 = *(v12 - 8);
  v60 = v12;
  __chkstk_darwin(v12);
  v67 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v58 - v15;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v17 = v5;
  v18 = v63;
  (*(v3 + 8))(v17, v2);
  v19 = v16;
  v20 = v64;
  v21 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v70)
  {
    v21 = &enum case for PageGrid.Direction.vertical(_:);
  }

  (*(v6 + 104))(v11, *v21, v18);
  PageGrid.containerWidth.getter();
  v62 = v22;
  PageGrid.containerHeight.getter();
  v61 = v23;
  PageGrid.safeAreaInsets.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageEnvironment.init(traitCollection:hasHorizontalSafeArea:)();
  (*(v6 + 16))(v8, v11, v18);
  if (qword_10096EF00 != -1)
  {
    swift_once();
  }

  v24 = v67;
  PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
  (*(v65 + 8))(v20, v66);
  (*(v6 + 8))(v11, v18);
  type metadata accessor for GuidedSearchResult();
  sub_1003E8244(&qword_100983FB8, 255, &type metadata accessor for GuidedSearchResult, &protocol conformance descriptor for SearchResult);
  ItemLayoutContext.typedModel<A>(as:)();
  v25 = v70;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v26 = v69;
  [v69 displayScale];
  if (v27 == 3.0)
  {
    v28 = UITraitCollection.prefersAccessibilityLayouts.getter();

    if ((v28 & 1) == 0)
    {
      v29 = 0.666666667;
      goto LABEL_10;
    }
  }

  else
  {
  }

  v29 = 1.0;
LABEL_10:
  PageGrid.componentMeasuringSize(spanning:)();
  PageGrid.horizontalMargins.getter();
  CGSize.subtracting(insets:)();
  v31 = v30;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v32 = v69;
  if (v25)
  {
    LODWORD(v66) = byte_1009932C8;
    v33 = v29 + 20.0;

    v34 = GuidedSearchResult.title.getter();
    v58 = v19;
    if (!v35)
    {
      goto LABEL_20;
    }

    v36 = HIBYTE(v35) & 0xF;
    if ((v35 & 0x2000000000000000) == 0)
    {
      v36 = v34 & 0xFFFFFFFFFFFFLL;
    }

    if (!v36)
    {

      goto LABEL_20;
    }

    if (qword_10096DBA0 != -1)
    {
      goto LABEL_35;
    }

    while (1)
    {
      v37 = qword_100983F28;
      result = [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleSubheadline variant:1024];
      if (!result)
      {
        break;
      }

      v39 = result;
      [v37 setFont:result];

      v40 = String._bridgeToObjectiveC()();
      [v37 setText:v40];

      [v37 sizeThatFits:{v31, 1.79769313e308}];
      v42 = v41;

      v33 = v33 + v42 + 16.0;
LABEL_20:
      v45 = GuidedSearchResult.tokens.getter();
      v46 = v45;
      if (v45 >> 62)
      {
        v47 = _CocoaArrayWrapper.endIndex.getter();
        if (!v47)
        {
LABEL_32:

          v49 = _swiftEmptyArrayStorage;
LABEL_33:
          sub_1003E7078(v49, v66 & 1, v32, v31);

          v56 = v60;
          v57 = *(v59 + 8);
          v57(v67, v60);
          return (v57)(v58, v56);
        }
      }

      else
      {
        v47 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v47)
        {
          goto LABEL_32;
        }
      }

      v68 = _swiftEmptyArrayStorage;
      sub_100144128(0, v47 & ~(v47 >> 63), 0);
      if ((v47 & 0x8000000000000000) == 0)
      {
        v64 = v32;
        v65 = v25;
        v48 = 0;
        v49 = v68;
        do
        {
          if ((v46 & 0xC000000000000001) != 0)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
          }

          v50 = GuidedSearchToken.displayName.getter();
          v52 = v51;

          v68 = v49;
          v54 = v49[2];
          v53 = v49[3];
          if (v54 >= v53 >> 1)
          {
            sub_100144128((v53 > 1), v54 + 1, 1);
            v49 = v68;
          }

          ++v48;
          v49[2] = v54 + 1;
          v55 = &v49[2 * v54];
          v55[4] = v50;
          v55[5] = v52;
        }

        while (v47 != v48);

        v32 = v64;
        goto LABEL_33;
      }

      __break(1u);
LABEL_35:
      swift_once();
    }

    __break(1u);
  }

  else
  {

    v43 = v60;
    v44 = *(v59 + 8);
    v44(v24, v60);
    return (v44)(v19, v43);
  }

  return result;
}

void sub_1003E7B28(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v10 = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    v26 = a2;
    if (qword_10096DB98 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v11 = type metadata accessor for OSLogger();
  sub_1000056A8(v11, qword_100983F10);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B5360;
  v30 = sub_10002849C(&qword_100983FB0, &qword_1007CB838);
  v29[0] = &type metadata for GuidedSearchTokenPill;
  static LogMessage.safe(_:)();
  sub_10002B894(v29, &unk_1009711D0, &unk_1007B1A10);
  LogMessage.init(stringLiteral:)();
  v12 = *a1;
  v27 = *a1 >> 62;
  v25 = a1;
  if (v27)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v30 = &type metadata for Int;
  v29[0] = v13;
  static LogMessage.safe(_:)();
  sub_10002B894(v29, &unk_1009711D0, &unk_1007B1A10);
  LogMessage.init(stringLiteral:)();
  v30 = &type metadata for String;
  v29[0] = v26;
  v29[1] = a3;

  static LogMessage.safe(_:)();
  sub_10002B894(v29, &unk_1009711D0, &unk_1007B1A10);
  Logger.info(_:)();

  if (v27)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (!v14)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_17;
    }
  }

  if (v14 < 1)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    v23 = _CocoaArrayWrapper.endIndex.getter();
    if ((v23 & 0x8000000000000000) == 0)
    {
LABEL_35:
      v20 = v23;
      goto LABEL_21;
    }

    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v15 = 0;
  do
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v16 = *(v12 + 8 * v15 + 32);
    }

    v17 = v16;
    if (qword_10096DB90 != -1)
    {
      swift_once();
    }

    ++v15;
    v18 = sub_10002849C(&qword_100975C20, "Xd\b");
    sub_1000056A8(v18, qword_100983EF8);
    v28 = v17;
    swift_beginAccess();
    ReusePool.recycle(_:)();
    swift_endAccess();
  }

  while (v14 != v15);
LABEL_17:
  v19 = v25;
  if (!v27 && (swift_isUniquelyReferenced_nonNull_bridgeObject() & 1) != 0)
  {
    if (!(*v19 >> 62))
    {
      v20 = *((*v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_21:
      sub_1004A6AE8(0, v20);
      return;
    }

    goto LABEL_32;
  }

  if (*v19 >> 62)
  {
    v22 = _CocoaArrayWrapper.endIndex.getter();
    v23 = _CocoaArrayWrapper.endIndex.getter();
    if (v23 < 0)
    {
      goto LABEL_34;
    }

    v24 = _CocoaArrayWrapper.endIndex.getter();
    if (v22 < 0 || v24 < v22)
    {
      __break(1u);
      goto LABEL_31;
    }
  }

  v21 = sub_10003687C();

  *v19 = v21;
}

void sub_1003E8098()
{
  v1 = OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_topSeparator;
  v2 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = objc_opt_self();
  v4 = [v3 separatorColor];
  [v2 setBackgroundColor:v4];

  *(v0 + v1) = v2;
  v5 = OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_title;
  *(v0 + v5) = [objc_allocWithZone(UILabel) init];
  *(v0 + OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_pills) = _swiftEmptyArrayStorage;
  v6 = OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_bottomSeparator;
  v7 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v8 = [v3 separatorColor];
  [v7 setBackgroundColor:v8];

  *(v0 + v6) = v7;
  *(v0 + OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_guidedSearchResult) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_impressionsCalculator) = 0;
  v9 = (v0 + OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_impressionsUpdateBlock);
  *v9 = 0;
  v9[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1003E8244(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1003E82A4@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() currentTraitCollection];
  v3 = [v2 horizontalSizeClass];

  if (v3 == 1)
  {
    if (qword_10096EFD8 != -1)
    {
      swift_once();
    }

    v4 = &xmmword_1009D3D60;
  }

  else
  {
    if (qword_10096EFC8 != -1)
    {
      swift_once();
    }

    v4 = &xmmword_1009D3A80;
  }

  return sub_10003B8E8(v4, a1);
}

uint64_t sub_1003E8394@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() currentTraitCollection];
  v3 = [v2 horizontalSizeClass];

  if (v3 == 1)
  {
    if (qword_10096EFF0 != -1)
    {
      swift_once();
    }

    v4 = &xmmword_1009D41B0;
  }

  else
  {
    if (qword_10096EFD0 != -1)
    {
      swift_once();
    }

    v4 = &xmmword_1009D3BF0;
  }

  return sub_10003B8E8(v4, a1);
}

double sub_1003E8484()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 horizontalSizeClass];

  result = 16.0;
  if (v1 == 1)
  {
    return 10.0;
  }

  return result;
}

_UNKNOWN **sub_1003E84E8()
{
  v0 = objc_opt_self();
  v1 = [v0 currentTraitCollection];
  v2 = [v1 horizontalSizeClass];

  v3 = &off_1008AF3E0;
  if (v2 != 1)
  {
    v4 = [v0 currentTraitCollection];
    v5 = UITraitCollection.prefersAccessibilityLayouts.getter();

    if ((v5 & 1) == 0)
    {
      return &off_1008AF440;
    }
  }

  return v3;
}

double sub_1003E8598(void *a1)
{
  if ([a1 horizontalSizeClass] == 1)
  {
    return 12.0;
  }

  UITraitCollection.prefersAccessibilityLayouts.getter();
  return 112.0;
}

id sub_1003E85FC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_lockupView];
  v3 = objc_opt_self();
  v4 = [v3 currentTraitCollection];
  v5 = [v4 horizontalSizeClass];

  if (v5 == 1)
  {
    if (qword_10096EFD8 != -1)
    {
      swift_once();
    }

    v6 = &xmmword_1009D3D60;
  }

  else
  {
    if (qword_10096EFC8 != -1)
    {
      swift_once();
    }

    v6 = &xmmword_1009D3A80;
  }

  sub_10003B8E8(v6, v24);
  v7 = OBJC_IVAR____TtC8AppStore19TodayCardLockupView_metrics;
  swift_beginAccess();
  sub_1001B6AE0(v24, v2 + v7);
  swift_endAccess();
  v8 = [v3 currentTraitCollection];
  v9 = [v8 horizontalSizeClass];

  if (v9 == 1)
  {
    if (qword_10096EFF0 != -1)
    {
      swift_once();
    }

    v10 = &xmmword_1009D41B0;
  }

  else
  {
    if (qword_10096EFD0 != -1)
    {
      swift_once();
    }

    v10 = &xmmword_1009D3BF0;
  }

  sub_10003B8E8(v10, v24);
  v11 = OBJC_IVAR____TtC8AppStore19TodayCardLockupView_axMetrics;
  swift_beginAccess();
  sub_1001B6AE0(v24, v2 + v11);
  swift_endAccess();
  v12 = *&v1[OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_riverView];
  if (v12)
  {
    v13 = v12;
    v14 = [v3 currentTraitCollection];
    [v14 horizontalSizeClass];

    v15 = [v3 currentTraitCollection];
    [v15 horizontalSizeClass];

    dispatch thunk of RiverView.setSpacing(interRowSpacing:interItemSpacing:)();
  }

  v16 = sub_1001B4140();
  v17 = [v3 currentTraitCollection];
  v18 = [v17 horizontalSizeClass];

  v19 = &off_1008AF3E0;
  if (v18 != 1)
  {
    v20 = [v3 currentTraitCollection];
    v21 = UITraitCollection.prefersAccessibilityLayouts.getter();

    if ((v21 & 1) == 0)
    {
      v19 = &off_1008AF440;
    }
  }

  sub_1001DD9F8(v19);

  v23.receiver = v1;
  v23.super_class = type metadata accessor for IPadMediumAdLockupWithScreenshotsBackgroundView();
  return objc_msgSendSuper2(&v23, "layoutSubviews");
}

uint64_t sub_1003E89B0(void *a1, double a2, double a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for OfferButtonMetrics();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v16 = v50 - v15;
  if ([a1 horizontalSizeClass] == 1)
  {
    return (*(ObjectType + 312))(a1);
  }

  v50[0] = v16;
  v18 = v4;
  if ([a1 horizontalSizeClass] == 1)
  {
    v19 = 24.0;
    v20 = 12.0;
  }

  else
  {
    if (UITraitCollection.prefersAccessibilityLayouts.getter())
    {
      v19 = 20.0;
    }

    else
    {
      v19 = 16.0;
    }

    v20 = 112.0;
  }

  v21 = objc_opt_self();
  v22 = [v21 currentTraitCollection];
  v23 = [v22 horizontalSizeClass];

  if (v23 == 1)
  {
    if (qword_10096EFD8 != -1)
    {
      swift_once();
    }

    v24 = &xmmword_1009D3D60;
  }

  else
  {
    if (qword_10096EFC8 != -1)
    {
      swift_once();
    }

    v24 = &xmmword_1009D3A80;
  }

  v25 = v18;
  sub_10003B8E8(v24, v60);
  v26 = [v21 currentTraitCollection];
  v27 = [v26 horizontalSizeClass];

  v28 = v50[0];
  if (v27 == 1)
  {
    if (qword_10096EFF0 != -1)
    {
      swift_once();
    }

    v29 = &xmmword_1009D41B0;
  }

  else
  {
    if (qword_10096EFD0 != -1)
    {
      swift_once();
    }

    v29 = &xmmword_1009D3BF0;
  }

  sub_10003B8E8(v29, v57);
  v30 = *(v25 + OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_lockupView);
  sub_100774EF8(&v51);
  v31 = v54;
  v32 = v55;
  v33 = v56;
  sub_10003B944(&v51);
  if (v33)
  {
    v34 = 0.0;
  }

  else
  {
    v34 = v31;
  }

  if (v33)
  {
    v35 = 0.0;
  }

  else
  {
    v35 = v32;
  }

  *&v61[32] = v34;
  *&v61[33] = v35;
  v62 = 0;
  *&v58[32] = v34;
  *&v58[33] = v35;
  v59 = 0;
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    v36 = v57;
  }

  else
  {
    v36 = v60;
  }

  sub_10003B8E8(v36, &v51);
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v37 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v37 = qword_100991028;
  }

  v38 = sub_1000056A8(v9, v37);
  (*(v10 + 16))(v12, v38, v9);
  (*(v10 + 32))(v28, v12, v9);
  if ((v56 & 1) == 0 && v54 == 0.0 && v55 == 0.0)
  {
    OfferButtonMetrics.minimumSize.getter();
    v40 = v39;
    OfferButtonMetrics.minimumSize.getter();
    v54 = v40;
    v55 = v41;
    v56 = 0;
  }

  v42 = _s8AppStore21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(&v51, a1, a2);
  v44 = v43;
  (*(v10 + 8))(v28, v9, v42);
  sub_10003B944(&v51);
  v45 = (a3 - (v19 + v20 + v44 - sub_1003E9330(v60, a1, v20 + v44, v35))) * 0.5;
  sub_10002A400(v61, v61[3]);
  dispatch thunk of AnyDimension.rawValue(in:)();
  v52 = &type metadata for CGFloat;
  v53 = &protocol witness table for CGFloat;
  *&v51 = v45 + v46;
  sub_100007000(v61);
  sub_100005A38(&v51, v61);
  sub_10002A400(v58, v58[3]);
  dispatch thunk of AnyDimension.rawValue(in:)();
  v52 = &type metadata for CGFloat;
  v53 = &protocol witness table for CGFloat;
  *&v51 = v45 + v47;
  sub_100007000(v58);
  sub_100005A38(&v51, v58);
  sub_10003B8E8(v60, &v51);
  v48 = OBJC_IVAR____TtC8AppStore19TodayCardLockupView_metrics;
  swift_beginAccess();
  sub_1001B6AE0(&v51, v30 + v48);
  swift_endAccess();
  sub_10003B8E8(v57, &v51);
  v49 = OBJC_IVAR____TtC8AppStore19TodayCardLockupView_axMetrics;
  swift_beginAccess();
  sub_1001B6AE0(&v51, v30 + v49);
  swift_endAccess();
  sub_10003B944(v57);
  return sub_10003B944(v60);
}

void sub_1003E8FD4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = type metadata accessor for AspectRatio();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return;
  }

  v10 = Screenshots.artwork.getter();
  if (v10 >> 62)
  {
    v24 = v10;
    v25 = _CocoaArrayWrapper.endIndex.getter();
    v10 = v24;
    if (v25)
    {
      goto LABEL_4;
    }

LABEL_15:

    return;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

LABEL_4:
  if ((v10 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }
  }

  v11 = [objc_opt_self() currentTraitCollection];
  v12 = [v11 horizontalSizeClass];

  if (v12 == 1 && (a4 & 1) == 0)
  {
    v13 = [objc_opt_self() mainScreen];
    [v13 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v27.origin.x = v15;
    v27.origin.y = v17;
    v27.size.width = v19;
    v27.size.height = v21;
    CGRectGetWidth(v27);
  }

  v22 = dispatch thunk of Artwork.isPortrait.getter();
  Artwork.size.getter();
  AspectRatio.init(_:_:)();
  v23 = (v7 + 8);
  if (v22)
  {
    AspectRatio.height(fromWidth:)();
  }

  else
  {
    AspectRatio.width(fromHeight:)();
  }

  (*v23)(v9, v6);
}

double sub_1003E9290(double a1, double a2)
{
  v5 = [objc_opt_self() currentTraitCollection];
  v6 = [v5 horizontalSizeClass];

  [v2 center];
  v8 = a2 * 0.5;
  if (v6 == 1)
  {
    v8 = a2;
  }

  return v7 - (a1 * 0.5 - v8);
}

double sub_1003E9330(void *a1, uint64_t a2, double a3, double a4)
{
  v7 = 0.0;
  if ((UITraitCollection.prefersAccessibilityLayouts.getter() & 1) == 0)
  {
    sub_10002A400(a1 + 14, a1[17]);
    AnyDimension.value(with:)();
    v9 = v8;
    sub_10002A400(a1 + 19, a1[22]);
    AnyDimension.value(with:)();
    v11 = v9 + v10;
    sub_10002A400(a1 + 24, a1[27]);
    v12 = [v4 traitCollection];
    AnyDimension.value(with:)();
    v14 = v13;

    if (v11 <= a4)
    {
      if (v11 + v14 <= a4)
      {
        return v14 * 0.5;
      }

      else
      {
        return (a4 - v11) * 0.5;
      }
    }
  }

  return v7;
}

id sub_1003E94CC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for IPadMediumAdLockupWithScreenshotsBackgroundView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1003E9524(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v9 initWithFrame:{a2, a3, a4, a5}];
}

void sub_1003E9588(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 32))();
  v10.value.super.isa = 0;
  v10.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v10, v5);

  v6 = *(a2 + 40);
  v7 = v6(a1, a2);
  [v7 setAttributedText:0];

  v8 = v6(a1, a2);
  [v8 setText:0];
}

void sub_1003E9668(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Artwork.Style();
  v9 = __chkstk_darwin(v8 - 8);
  v24 = 0;
  if (!a1)
  {
LABEL_4:
    v13 = (*(a4 + 32))(a3, a4, v9);
    v14 = v13;
    v22 = v13;
    v26.value.super.isa = 0;
    v26.is_nil = 0;
    ArtworkView.setImage(image:animated:)(v26, v14);

    return;
  }

  v10 = sub_1003EA7B4(&v24, v4, a3, a4);
  sub_1003EA894(a1, v10);
  v12 = v11;

  if (v12)
  {

    a1 = v24;
    goto LABEL_4;
  }

  v15 = *(a4 + 32);
  v16 = v15(a3, a4);
  [v16 contentMode];

  Artwork.config(_:mode:prefersLayeredImage:)();
  v17 = v15(a3, a4);
  Artwork.style.getter();
  ArtworkView.style.setter();
  [v17 setContentMode:Artwork.contentMode.getter()];
  ArtworkLoaderConfig.size.getter();
  ArtworkView.imageSize.setter();
  if (!Artwork.backgroundColor.getter())
  {
    sub_100005744(0, &qword_100970180, UIColor_ptr);
    static UIColor.placeholderBackground.getter();
  }

  ArtworkView.backgroundColor.setter();

  v18 = v15(a3, a4);
  type metadata accessor for ArtworkView();
  static ArtworkLoader.handlerKey<A>(for:)();

  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = v19;

  ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

  sub_10002B894(v23, &qword_10096FB90, &qword_1007B2A50);
  v21 = v24;
}

uint64_t sub_1003E99E0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v10);
  v12 = &v22[-v11 - 8];
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v13 = *(v7 + 8);
  v13(v12, v6);
  if (v23)
  {
    sub_10002849C(&qword_100973D50, &unk_1007B3840);
    type metadata accessor for SearchAction();
    if (swift_dynamicCast())
    {
      ShelfLayoutContext.shelf.getter();
      swift_getKeyPath();
      ReadOnlyLens.subscript.getter();

      v13(v9, v6);
      if (v22[0] == 1)
      {

        v14 = Action.artwork.getter();

        if (v14)
        {
          v15 = (*(a2 + 56))(a1, a2);
          sub_1003EA894(v14, v15);
          v17 = v16;

          if ((v17 & 1) == 0)
          {
            Artwork.contentMode.getter();
            ComponentPrefetchSizing.init(size:contentMode:)();

            v18 = 0;
            goto LABEL_10;
          }
        }
      }
    }
  }

  else
  {
    sub_10002B894(v22, &unk_10097DBE0, &unk_1007BCA00);
  }

  v18 = 1;
LABEL_10:
  v19 = type metadata accessor for ComponentPrefetchSizing();
  return (*(*(v19 - 8) + 56))(a3, v18, 1, v19);
}

uint64_t sub_1003E9CDC(uint64_t a1, void *a2)
{
  v73 = a2;
  v3 = sub_10002849C(&qword_100972620, &unk_1007C4AF0);
  __chkstk_darwin(v3 - 8);
  v75 = &v60 - v4;
  v5 = sub_10002849C(&unk_100984000, "Ȳ\a");
  __chkstk_darwin(v5 - 8);
  v76 = &v60 - v6;
  v77 = sub_10002849C(&qword_1009918C0, "̲\a");
  v74 = *(v77 - 8);
  __chkstk_darwin(v77);
  v72 = &v60 - v7;
  v8 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for SearchEntity();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&unk_100982AA0, qword_1007C0320);
  __chkstk_darwin(v13 - 8);
  v15 = &v60 - v14;
  v16 = sub_10002849C(&qword_100975048, "b,\b");
  __chkstk_darwin(v16 - 8);
  v18 = &v60 - v17;
  v19 = type metadata accessor for AttributedString();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v71 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v60 - v23;
  __chkstk_darwin(v25);
  v70 = &v60 - v26;
  v27 = SearchAction.term.getter();
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
  SearchAction.entity.getter();
  if ((*(v10 + 48))(v15, 1, v9) != 1)
  {
    if (qword_10096EC78 != -1)
    {
      swift_once();
    }

    v60 = qword_1009D3290;
    if (qword_10096EC80 != -1)
    {
      swift_once();
    }

    v64 = qword_1009D3298;
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
            result = _assertionFailure(_:_:file:line:flags:)();
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
    sub_10002849C(&unk_100984010, &qword_1007BCDD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007B10D0;
    *(inited + 32) = 0x745F686372616573;
    *(inited + 40) = 0xEB000000006D7265;
    v35 = v69;
    *(inited + 48) = v68;
    *(inited + 56) = v35;

    v36 = sub_1001962CC(inited);
    swift_setDeallocating();
    sub_10002B894(inited + 32, &unk_100989050, &qword_1007CB9D0);
    v37._object = (v63 | 0x8000000000000000);
    v37._countAndFlagsBits = v61;
    localizedString(_:with:)(v37, v36);

    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    v38 = v73;
    v79[0] = v73;
    sub_1001469E0();
    v39 = v38;
    AttributedString.subscript.setter();
    v40 = v64;
    v79[0] = v64;
    sub_1002F4F4C();
    v41 = v40;
    AttributedString.subscript.setter();
    v79[0] = v68;
    v79[1] = v35;
    v42 = type metadata accessor for Locale();
    v43 = v75;
    (*(*(v42 - 8) + 56))(v75, 1, 1, v42);
    sub_1003EBC44(&unk_100984030, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
    sub_10007FED4();
    v44 = v76;
    AttributedStringProtocol.range<A>(of:options:locale:)();
    sub_10002B894(v43, &qword_100972620, &unk_1007C4AF0);
    if ((*(v74 + 48))(v44, 1, v77) == 1)
    {
      v45 = &unk_100984000;
      v46 = "Ȳ\a";
      v47 = v44;
    }

    else
    {
      v48 = v72;
      sub_1003EBAA0(v44, v72);
      v49 = v60;
      v50 = v60;
      sub_1003EBB10();
      v51 = AttributedString.subscript.modify();
      v78 = v49;
      AttributedSubstring.subscript.setter();
      v51(v79, 0);
      v45 = &qword_1009918C0;
      v46 = "̲\a";
      v47 = v48;
    }

    sub_10002B894(v47, v45, v46);
    v52 = v62;
    v53 = v66;
    v54 = *(v66 + 32);
    v54(v18, v24, v19);
    (*(v53 + 56))(v18, 0, 1, v19);
    (*(v65 + 8))(v15, v52);
    if ((*(v53 + 48))(v18, 1, v19) != 1)
    {

      v58 = v70;
      v54(v70, v18, v19);
      sub_100005744(0, &unk_100984040, NSAttributedString_ptr);
      (*(v53 + 16))(v71, v58, v19);
      v59 = NSAttributedString.init(_:)();
      (*(v53 + 8))(v58, v19);
      return v59;
    }

    goto LABEL_27;
  }

  sub_10002B894(v15, &unk_100982AA0, qword_1007C0320);
  (*(v20 + 56))(v18, 1, 1, v19);
LABEL_27:
  sub_10002B894(v18, &qword_100975048, "b,\b");
  v55 = Action.title.getter();
  if (!v56)
  {
    return v68;
  }

  v57 = v55;

  return v57;
}

id sub_1003EA7B4(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *a1;
  }

  else
  {
    v9 = (*(a4 + 32))(a3, a4);
    v10 = ArtworkView.preferredSymbolConfiguration.getter();

    if (!v10)
    {
      v10 = (*(a4 + 56))(a3, a4);
    }

    swift_beginAccess();
    v11 = *a1;
    *a1 = v10;
    v5 = v10;

    v4 = 0;
  }

  v12 = v4;
  return v5;
}

uint64_t sub_1003EA894(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for FloatingPointRoundingRule();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = dispatch thunk of Artwork.isSystemImage.getter();
  result = 0;
  if (v6)
  {
    dispatch thunk of Artwork.symbolImageMeasurements(using:fallBackSize:)();
    (*(v3 + 104))(v5, enum case for FloatingPointRoundingRule.up(_:), v2);
    CGSize.rounded(_:)();
    v9 = v8;
    (*(v3 + 8))(v5, v2);
    return v9;
  }

  return result;
}

double sub_1003EA9E0(objc_class *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = (*(a7 + 32))(a6, a7);
    v13.value.super.isa = a1;
    v13.is_nil = 0;
    ArtworkView.show(image:isAnimationPermitted:)(v13, v12);

    (*(a7 + 80))(a6, a7);
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_1003EAAA4(uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v5 = (*(a3 + 56))(a2, a3);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v6 = [v5 configurationWithTraitCollection:v8];

  v7 = static SystemImage.load(artwork:with:includePrivateImages:)();
  *a4 = v7;
}

void *sub_1003EABB0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v54 = a4;
  v47 = a3;
  v46 = a2;
  v50 = type metadata accessor for PageGrid();
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v48 = &v43[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for LabelPlaceholder();
  v62 = *(v10 - 8);
  __chkstk_darwin(v10);
  v53 = &v43[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v61 = &v43[-v13];
  v14 = type metadata accessor for TextAppearance();
  v58 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v43[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v60 = type metadata accessor for DynamicTextAppearance();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v18 = &v43[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v21 = &v43[-v20];
  type metadata accessor for SearchAction();
  sub_1003EBC44(&unk_100983FF0, &type metadata accessor for SearchAction, &protocol conformance descriptor for Action);
  result = ItemLayoutContext.typedModel<A>(as:)();
  v23 = v68;
  if (v68)
  {
    v45 = v18;
    v51 = v14;
    v57 = v10;
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v24 = v68;
    (*(a6 + 64))(v68, a5, a6);

    swift_getKeyPath();
    v52 = a1;
    ItemLayoutContext.subscript.getter();

    v25 = v65;
    TextAppearance.init()();
    DynamicTextAppearance.customTextStyle.getter();
    sub_10002A400(&v68, v69);
    dispatch thunk of CustomTextStyle.font(compatibleWith:)();
    TextAppearance.font.setter();
    sub_100007000(&v68);
    DynamicTextAppearance.textAlignment.getter();
    TextAppearance.textAlignment.setter();
    DynamicTextAppearance.lineBreakMode.getter();
    TextAppearance.lineBreakMode.setter();
    DynamicTextAppearance.numberOfLines.getter();
    TextAppearance.numberOfLines.setter();
    DynamicTextAppearance.lineSpacing.getter();
    TextAppearance.lineSpacing.setter();

    v26 = TextAppearance.font.getter();
    v27 = a5;
    v56 = sub_1003E9CDC(v23, v26);
    v55 = v28;
    v30 = v29;
    v31 = ~v29;

    if (v31)
    {
      (*(v59 + 16))(v45, v21, v60);
      v44 = v30;
      if (v30)
      {
        sub_1003EBB74(v56, v55, 1);
        LabelPlaceholder.Options.init(rawValue:)();
        v32 = v53;
        LabelPlaceholder.init(_:with:where:)();
      }

      else
      {
        sub_1003EBB74(v56, v55, 0);
        LabelPlaceholder.Options.init(rawValue:)();
        v32 = v53;
        LabelPlaceholder.init(_:with:where:)();
      }

      v33 = v57;
      (*(v62 + 32))(v61, v32, v57);

      v34 = Action.artwork.getter();

      if (v34 && (*&v65 = v34, sub_1003EAAA4(v27, a6, &v68), , (v35 = v68) != 0))
      {
        [v68 size];
        v37 = v36;
        v39 = v38;

        *(&v66 + 1) = &type metadata for FixedSizedPlaceholder;
        v67 = sub_100168330();
        *&v65 = v37;
        *(&v65 + 1) = v39;
      }

      else
      {
        v67 = 0;
        v65 = 0u;
        v66 = 0u;
      }

      v64[3] = v33;
      v64[4] = &protocol witness table for LabelPlaceholder;
      v40 = sub_1000056E0(v64);
      (*(v62 + 16))(v40, v61, v33);
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      (*(a6 + 48))(&v68, &v65, v64, v63, v27, a6);
      swift_unknownObjectRelease();
      sub_100007000(v64);
      sub_10002B894(&v65, &unk_10097B860, &qword_1007B49E0);
      sub_10002A400(&v68, v69);
      if (v54)
      {
        swift_getKeyPath();
        v41 = v48;
        ItemLayoutContext.subscript.getter();

        PageGrid.componentMeasuringSize(spanning:)();
        (*(v49 + 8))(v41, v50);
      }

      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      v42 = v65;
      dispatch thunk of Placeable.measure(toFit:with:)();

      sub_1003EBA78(v56, v55, v44);

      (*(v62 + 8))(v61, v57);
      (*(v58 + 8))(v16, v51);
      (*(v59 + 8))(v21, v60);
      return sub_100007000(&v68);
    }

    else
    {

      (*(v58 + 8))(v16, v51);
      return (*(v59 + 8))(v21, v60);
    }
  }

  return result;
}

double sub_1003EB4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SearchAction();
  sub_1003EBC44(&unk_100983FF0, &type metadata accessor for SearchAction, &protocol conformance descriptor for Action);
  ItemLayoutContext.typedModel<A>(as:)();
  if (v13)
  {

    v7 = Action.artwork.getter();

    if (!v7)
    {
LABEL_5:

      return result;
    }

    v8 = (*(a4 + 56))(a3, a4);
    sub_1003EA894(v7, v8);
    v10 = v9;

    if (v10)
    {

      goto LABEL_5;
    }

    v11 = Artwork.config(using:)();
    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1007B0B70;
    *(v12 + 32) = v11;

    ArtworkLoader.prefetchArtwork(using:)(v12);
  }

  return result;
}

double sub_1003EB660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v36 = type metadata accessor for DynamicTextAppearance();
  v7 = *(v36 - 8);
  __chkstk_darwin(v36);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TextAppearance();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchAction();
  sub_1003EBC44(&unk_100983FF0, &type metadata accessor for SearchAction, &protocol conformance descriptor for Action);
  ItemLayoutContext.typedModel<A>(as:)();
  v15 = v38[0];
  if (v38[0])
  {
    v34 = v11;
    v35 = v10;
    v33 = *(a3 + 40);
    v16 = v33(a2, a3);
    dispatch thunk of DynamicLabel.dynamicTextAppearance.getter();

    v17 = [v4 traitCollection];
    TextAppearance.init()();
    DynamicTextAppearance.customTextStyle.getter();
    v37 = v15;
    v32[1] = v4;
    sub_10002A400(v38, v38[3]);
    v18 = a2;
    v19 = v37;
    dispatch thunk of CustomTextStyle.font(compatibleWith:)();
    TextAppearance.font.setter();
    sub_100007000(v38);
    DynamicTextAppearance.textAlignment.getter();
    TextAppearance.textAlignment.setter();
    DynamicTextAppearance.lineBreakMode.getter();
    TextAppearance.lineBreakMode.setter();
    DynamicTextAppearance.numberOfLines.getter();
    TextAppearance.numberOfLines.setter();
    DynamicTextAppearance.lineSpacing.getter();
    TextAppearance.lineSpacing.setter();

    (*(v7 + 8))(v9, v36);
    v20 = TextAppearance.font.getter();
    v21 = sub_1003E9CDC(v19, v20);
    v23 = v22;
    v25 = v24;
    LODWORD(v16) = ~v24;

    if (v16)
    {
      v26 = v33(v18, a3);
      v27 = v26;
      if (v25)
      {
        [v26 setAttributedText:v21];
      }

      else
      {
        v29 = String._bridgeToObjectiveC()();
        [v27 setText:v29];

        v27 = v29;
      }

      v30 = v35;

      v31 = sub_1003EBA78(v21, v23, v25);
      (*(v34 + 8))(v13, v30, v31);
      (*(a3 + 80))(v18, a3);
    }

    else
    {
      v28 = v33(v18, a3);
      [v28 setText:0];

      (*(v34 + 8))(v13, v35);
      (*(a3 + 80))(v18, a3);
    }
  }

  return result;
}

double sub_1003EBA78(void *result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1003EBA90(result, a2, a3 & 1);
  }

  return v3;
}

double sub_1003EBA90(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_1003EBAA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_1009918C0, "̲\a");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003EBB10()
{
  result = qword_1009918F0;
  if (!qword_1009918F0)
  {
    sub_10002D1A8(&qword_1009918C0, "̲\a");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009918F0);
  }

  return result;
}

double sub_1003EBB74(void *a1, uint64_t a2, char a3)
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

void sub_1003EBB84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 32))(a2, a3);
  type metadata accessor for ArtworkView();
  sub_1003EBC44(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

uint64_t sub_1003EBC44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003EBC98()
{
  if (qword_10096E6B0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for StaticDimension();
  v1 = sub_1000056A8(v0, qword_1009D2430);
  qword_1009D0110 = v0;
  unk_1009D0118 = &protocol witness table for StaticDimension;
  v2 = sub_1000056E0(qword_1009D00F8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

char *sub_1003EBD54(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_lockupView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_appEventView;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for AppEventView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_appEventTapGestureRecognizer;
  *&v4[v11] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v12 = &v4[OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_appEventViewTappedAction];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v4[OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_impressionsCalculator] = 0;
  v13 = &v4[OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_impressionsUpdateBlock];
  v14 = type metadata accessor for AppEventSearchResultContentView();
  *v13 = 0;
  *(v13 + 1) = 0;
  v23.receiver = v4;
  v23.super_class = v14;
  v15 = objc_msgSendSuper2(&v23, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v19 = v15;
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v19 addSubview:*&v19[OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_lockupView]];
  v20 = OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_appEventView;
  [v19 addSubview:*&v19[OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_appEventView]];
  v21 = OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_appEventTapGestureRecognizer;
  [*&v19[OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_appEventTapGestureRecognizer] addTarget:v19 action:"handleTapWithGestureRecognizer:"];
  [*&v19[v21] setDelegate:v19];
  [*&v19[v20] addGestureRecognizer:*&v19[v21]];

  return v19;
}

id sub_1003EBF80()
{
  [*&v0[OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_appEventTapGestureRecognizer] removeTarget:v0 action:0];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppEventSearchResultContentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1003EC0D0()
{
  v1 = v0;
  v2 = type metadata accessor for AppEventCardLayout(0);
  __chkstk_darwin(v2 - 8);
  v4 = (&v39.receiver - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10002849C(&unk_10096FC10, &unk_1007B10C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v39 - v7;
  v9 = type metadata accessor for AppEventSearchResultContentView();
  v39.receiver = v0;
  v39.super_class = v9;
  objc_msgSendSuper2(&v39, "layoutSubviews");
  LayoutMarginsAware<>.layoutFrame.getter();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = *&v0[OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_lockupView];
  sub_1000AB0CC(v14, v16);
  CGRect.withLayoutDirection(in:relativeTo:)();
  v19 = &selRef__setDefaultAttributes_;
  [v18 setFrame:?];
  v20 = MetadataRibbonView.hasContent.getter();
  if (v20 & 1) != 0 || (sub_100045A48(v20, v21))
  {
    static StandardSearchResultContentViewMetrics.bottomMargin.getter();
    v22 = [v0 traitCollection];
    type metadata accessor for TraitEnvironmentPlaceholder();
    v23 = v6;
    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1007B0B70;
    *(v24 + 32) = v22;
    v25 = v22;
    v19 = &selRef__setDefaultAttributes_;
    v26 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    sub_1000320F0();
    dispatch thunk of AnyDimension.rawValue(in:)();
    v28 = v27;

    (*(v23 + 8))(v8, v5);
  }

  else
  {
    if (qword_10096DBB0 != -1)
    {
      swift_once();
    }

    sub_10002A400(qword_1009D00F8, qword_1009D0110);
    v29 = [v0 traitCollection];
    AnyDimension.value(with:)();
    v28 = v30;
  }

  v40.origin.x = v11;
  v40.origin.y = v13;
  v40.size.width = v15;
  v40.size.height = v17;
  CGRectGetMinX(v40);
  [v18 frame];
  MaxY = CGRectGetMaxY(v41);
  v42.origin.x = v11;
  v42.origin.y = v13;
  v42.size.width = v15;
  v42.size.height = v17;
  Width = CGRectGetWidth(v42);
  v43.origin.x = v11;
  v43.origin.y = v13;
  v43.size.width = v15;
  v43.size.height = v17;
  v33 = CGRectGetMaxY(v43);
  v34 = *&v1[OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_appEventView];
  if (qword_10096D5D8 != -1)
  {
    v38 = v33;
    swift_once();
    v33 = v38;
  }

  v35 = v33 - (v28 + MaxY);
  sub_100772570();
  v36 = *&v34[OBJC_IVAR____TtC8AppStore12AppEventView_appEventCardView];
  sub_100629FBC(v4);
  sub_100770A88(v36, v4, Width, v35);
  sub_1001A9220(v4);
  [v1 bounds];
  CGRect.withLayoutDirection(in:relativeTo:)();
  return [v34 v19[490]];
}

void sub_1003EC65C(void *a1)
{
  v2 = *(*(v1 + OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_appEventView) + OBJC_IVAR____TtC8AppStore12AppEventView_appEventCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1003EF640(&qword_100973190, 255, type metadata accessor for VideoView, &unk_1007D1B30);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    v7 = *&v2[OBJC_IVAR____TtC8AppStore16AppEventCardView_mediaContentView];
    sub_100005744(0, &qword_100972EB0, UIView_ptr);
    v8 = v7;
    v9 = static NSObject.== infix(_:_:)();

    if (v9)
    {
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v4 = v10;
        [v10 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    [*&v2[OBJC_IVAR____TtC8AppStore16AppEventCardView_mediaContentView] insertSubview:v11 aboveSubview:*&v2[OBJC_IVAR____TtC8AppStore16AppEventCardView_artworkView]];
    [v2 setNeedsLayout];
  }
}

void (*sub_1003EC80C(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC8AppStore12AppEventView_appEventCardView;
  a1[1] = *(v1 + OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_appEventView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1001D3090;
}

id sub_1003EC880()
{
  sub_1000ACF48();
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_appEventView);
  sub_1002C1934();
  v2 = OBJC_IVAR____TtC8AppStore12AppEventView_appEventCardView;
  sub_1006269C4();
  v3 = &v1[OBJC_IVAR____TtC8AppStore12AppEventView_initialLongPressLocation];
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  [*&v1[OBJC_IVAR____TtC8AppStore12AppEventView_longPressGestureRecognizer] setEnabled:1];
  v4 = *&v1[v2];

  return [v1 addSubview:v4];
}

void *sub_1003EC98C(uint64_t a1, char *a2)
{
  v3 = v2;
  swift_getObjectType();
  v5 = sub_10002849C(&unk_1009731E0, &unk_1007B0B60);
  __chkstk_darwin(v5 - 8);
  v7 = &v25 - v6;
  v8 = type metadata accessor for PageGrid();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppEventSearchResult();
  sub_1003EF640(&qword_100973DC0, 255, &type metadata accessor for AppEventSearchResult, &protocol conformance descriptor for SearchResult);
  result = ItemLayoutContext.typedModel<A>(as:)();
  v13 = v26;
  if (v26)
  {
    static SearchPageGridBreakpointOverridable.pageGridWithSearchOverrides(for:)();
    PageGrid.columnWidth.getter();
    v14 = *&v2[OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_lockupView];
    *&v14[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_regularWidthColumnSpacing] = v15;
    [v14 setNeedsLayout];
    v16 = AppEventSearchResult.lockup.getter();
    v25 = v8;
    v17 = v16;
    v18 = type metadata accessor for ItemLayoutContext();
    (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
    sub_100279F24(v17, v7, a2);

    sub_10002B894(v7, &unk_1009731E0, &unk_1007B0B60);
    v19 = AppEventSearchResult.appEvent.getter();
    sub_100079F24();
    sub_100168944(v19, a2);

    swift_unknownObjectRelease();
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    *(v21 + 2) = v20;
    *(v21 + 3) = v13;
    *(v21 + 4) = a2;
    v22 = &v3[OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_appEventViewTappedAction];
    v23 = *&v3[OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_appEventViewTappedAction];
    v24 = *&v3[OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_appEventViewTappedAction + 8];
    *v22 = sub_1003EFA60;
    v22[1] = v21;

    sub_10001F63C(v23, v24);

    [v3 setNeedsLayout];

    return (*(v9 + 8))(v11, v25);
  }

  return result;
}

void sub_1003ECCE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v4 - 8);
  v6 = v13 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    AppEventSearchResult.appEvent.getter();
    v9 = AppPromotion.clickAction.getter();

    if (v9)
    {
      v13[4] = type metadata accessor for AppEventSearchResultContentView();
      v13[1] = v8;

      v10 = v8;
      dispatch thunk of Action.clickSender.setter();

      v11 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
      BaseObjectGraph.injectIfAvailable<A>(_:)();
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(v6, 1, v11) == 1)
      {

        sub_10002B894(v6, &unk_100972A00, &unk_1007B3130);
      }

      else
      {
        sub_1005F9AF4(v9, 1, a3, v6);

        (*(v12 + 8))(v6, v11);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1003ECED8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_impressionsCalculator;
  swift_beginAccess();
  if (*(v1 + v3))
  {

    ImpressionsCalculator.removeAllElements()();
  }

  *(v1 + v3) = 0;

  v4 = (v1 + OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = 0;
  v4[1] = 0;
  sub_10001F63C(v5, v6);
  return sub_1000AD1F8(a1);
}

uint64_t (*sub_1003ECFDC(uint64_t **a1))()
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
  v2[4] = sub_1003EC80C(v2);
  return sub_1000B4CAC;
}

double sub_1003ED070()
{
  [*(*(*v0 + OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_appEventView) + OBJC_IVAR____TtC8AppStore12AppEventView_formattedDateView) frame];
  CGRectGetMaxY(v2);
  type metadata accessor for AppEventView(0);
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRectGetHeight(v3);
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRectGetWidth(v4);
  return 0.0;
}

CGFloat sub_1003ED0FC()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_appEventView);
  [*&v1[OBJC_IVAR____TtC8AppStore12AppEventView_formattedDateView] frame];
  CGRectGetMaxY(v3);
  type metadata accessor for AppEventView(0);
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRectGetHeight(v4);
  [v1 bounds];
  return CGRectGetWidth(v5) * 0.5;
}

double sub_1003ED18C()
{
  swift_beginAccess();

  return result;
}

double sub_1003ED1D4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_1003ED28C()
{
  v1 = (v0 + OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10000827C(*v1, v1[1]);
  return v2;
}

uint64_t sub_1003ED2E8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_10001F63C(v6, v7);
}

uint64_t sub_1003ED3A8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SearchTagsRibbonView(0);
  sub_1003EF640(&qword_1009912D0, 255, type metadata accessor for SearchTagsRibbonView, &unk_1007B1D48);
  return NestedModelImpressionsRecording.startRecordingNestedImpressions(for:using:)();
}

uint64_t sub_1003ED454(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_1003ED4A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_1003ED514(uint64_t *a1, uint64_t a2))()
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
  *(v4 + 32) = VideoViewProviding.someVideoView.modify();
  return sub_1000C2700;
}

uint64_t sub_1003ED5B0(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(*(v1 + OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_appEventView) + OBJC_IVAR____TtC8AppStore12AppEventView_appEventCardView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC8AppStore16AppEventCardView_mediaContentView);
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  v6 = v5;
  v7 = static NSObject.== infix(_:_:)();

  return v7 & 1;
}

uint64_t sub_1003ED78C(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = sub_1003EF640(&qword_1009840C8, a2, type metadata accessor for AppEventSearchResultContentView, &unk_1007CBBFC);
  result = sub_1003EF640(&unk_1009840D0, v3, type metadata accessor for AppEventSearchResultContentView, &unk_1007CBC2C);
  *(a1 + 32) = result;
  return result;
}

void *sub_1003ED810(uint64_t a1, uint64_t a2)
{
  v137 = a2;
  v3 = sub_10002849C(&unk_10096FC10, &unk_1007B10C0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v106[-v5];
  v7 = type metadata accessor for SmallSearchLockupLayout();
  v135 = *(v7 - 8);
  __chkstk_darwin(v7);
  v134 = &v106[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v140 = type metadata accessor for MetadataRibbonViewLayout.Metrics();
  *&v139 = *(v140 - 8);
  __chkstk_darwin(v140);
  v129 = &v106[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for LabelPlaceholderCompatibility();
  v131 = *(v10 - 8);
  v132 = v10;
  __chkstk_darwin(v10);
  v130 = &v106[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for OfferButtonMetrics();
  v144 = *(v12 - 8);
  v145 = v12;
  __chkstk_darwin(v12);
  v14 = &v106[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v143 = &v106[-v16];
  v151 = type metadata accessor for SmallSearchLockupLayout.Metrics();
  v142 = *(v151 - 8);
  __chkstk_darwin(v151);
  v133 = &v106[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v152 = &v106[-v19];
  v20 = sub_10002849C(&unk_1009912C0, &unk_1007B4130);
  __chkstk_darwin(v20 - 8);
  v128 = &v106[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v150 = &v106[-v23];
  v24 = type metadata accessor for ShelfLayoutContext();
  __chkstk_darwin(v24 - 8);
  v25 = type metadata accessor for PageGrid();
  v136 = *(v25 - 8);
  __chkstk_darwin(v25);
  v147 = &v106[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for AppEventSearchResult();
  sub_1003EF640(&qword_100973DC0, 255, &type metadata accessor for AppEventSearchResult, &protocol conformance descriptor for SearchResult);
  result = ItemLayoutContext.typedModel<A>(as:)();
  v146 = v189[0];
  if (v189[0])
  {
    v125 = v7;
    ItemLayoutContext.parentShelfLayoutContext.getter();
    if (qword_10096EF00 != -1)
    {
      swift_once();
    }

    PageGrid.init(from:breakpointOverrides:)();
    PageGrid.componentMeasuringSize(spanning:)();
    v29 = v28;
    v31 = v30;
    v32 = AppEventSearchResult.lockup.getter();

    v33 = Lockup.title.getter();
    v116 = v34;
    v117 = v33;
    v35 = Lockup.subtitle.getter();
    v118 = v36;
    v119 = v35;
    v37 = Lockup.searchAdOpportunity.getter();
    v149 = v32;

    if (v37 && (v38 = SearchAdOpportunity.searchAd.getter(), , v38))
    {
      v39 = SearchAd.advertisingText.getter();
      v120 = v40;
      v121 = v39;
    }

    else
    {
      v120 = 0;
      v121 = 0;
    }

    v141 = MixedMediaLockup.metadataRibbonItems.getter();
    (*(v139 + 56))(v150, 1, 1, v140);
    v138 = MixedMediaLockup.searchTagRibbonItems.getter();
    v107 = MixedMediaLockup.shouldEvenlyDistributeRibbonItems.getter();
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v41 = v189[5];
    if (qword_10096CF70 != -1)
    {
      swift_once();
    }

    v42 = v151;
    v43 = sub_1000056A8(v151, qword_1009CDC00);
    v122 = *(v142 + 16);
    v123 = v142 + 16;
    v122(v152, v43, v42);
    v44 = UITraitCollection.prefersAccessibilityLayouts.getter();
    v148 = v41;
    v126 = v25;
    v127 = a1;
    v109 = v4;
    v110 = v3;
    v108 = v6;
    if (v44)
    {
      if (qword_10096ECB8 != -1)
      {
        swift_once();
      }

      v45 = qword_100991010;
    }

    else
    {
      if (qword_10096ECC0 != -1)
      {
        swift_once();
      }

      v45 = qword_100991028;
    }

    v46 = v145;
    v47 = sub_1000056A8(v145, v45);
    v48 = v144;
    (*(v144 + 16))(v14, v47, v46);
    (*(v48 + 32))(v143, v14, v46);
    v49 = [v148 preferredContentSizeCategory];
    UIContentSizeCategory.isAccessibilityCategory.getter();

    OfferButtonMetrics.minimumSize.getter();
    OfferButtonMetrics.estimatedHeight.getter();
    SmallSearchLockupLayout.Metrics.offerButtonSize.setter();
    SmallSearchLockupLayout.Metrics.artworkSize.getter();
    v115 = type metadata accessor for LayoutViewPlaceholder();
    swift_allocObject();
    v124 = LayoutViewPlaceholder.init(representing:)();
    v50 = objc_opt_self();
    v113 = v50;
    v51 = [v50 preferredFontForTextStyle:UIFontTextStyleBody];
    v52 = type metadata accessor for Feature();
    v189[3] = v52;
    v53 = sub_1003EF640(&qword_100972E50, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v189[4] = v53;
    v112 = v53;
    v54 = sub_1000056E0(v189);
    v55 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v114 = *(*(v52 - 8) + 104);
    v111 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v114(v54, enum case for Feature.measurement_with_labelplaceholder(_:), v52);
    isFeatureEnabled(_:)();
    sub_100007000(v189);
    v56 = v130;
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v57 = v132;
    v131 = *(v131 + 8);
    (v131)(v56, v132);
    v58 = [v50 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v188[3] = v52;
    v188[4] = v53;
    v59 = sub_1000056E0(v188);
    v60 = v55;
    v61 = v114;
    v114(v59, v60, v52);
    isFeatureEnabled(_:)();
    sub_100007000(v188);
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v62 = v131;
    (v131)(v56, v57);
    v63 = [v113 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v187[3] = v52;
    v187[4] = v112;
    v64 = sub_1000056E0(v187);
    v61(v64, v111, v52);
    isFeatureEnabled(_:)();
    sub_100007000(v187);
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v62(v56, v57);
    v65 = v141;
    LODWORD(v132) = sub_1000AE138() & (v65 != 0);
    if (v132 == 1)
    {
      v66 = v115;
      v67 = objc_allocWithZone(type metadata accessor for TraitEnvironmentPlaceholder());
      v68 = v148;
      v69 = TraitEnvironmentPlaceholder.init(traitCollection:)();
      v70 = v128;
      sub_1001EB5B0(v150, v128);
      v71 = v139;
      v72 = *(v139 + 48);
      v73 = v140;
      if (v72(v70, 1, v140) == 1)
      {
        v74 = v129;
        static MetadataRibbonViewLayout.Metrics.standard.getter();
        if (v72(v70, 1, v73) != 1)
        {
          sub_10002B894(v70, &unk_1009912C0, &unk_1007B4130);
        }
      }

      else
      {
        v74 = v129;
        (*(v71 + 32))(v129, v70, v73);
      }

      v76 = v69;
      sub_1000AD91C(v141, v74, v76, v29, v31);

      (*(v71 + 8))(v74, v73);
      swift_allocObject();
      v75 = LayoutViewPlaceholder.init(measurements:)();
    }

    else
    {
      v66 = v115;
      swift_allocObject();
      v75 = LayoutViewPlaceholder.init(representing:)();
    }

    v77 = v75;

    v78 = v138;
    if ((sub_1000AE138() & (v78 != 0)) == 1)
    {
      sub_100046528(v78, v107 & 1, v29, v31);
      swift_allocObject();
      v79 = LayoutViewPlaceholder.init(measurements:)();
    }

    else
    {
      swift_allocObject();
      v79 = LayoutViewPlaceholder.init(representing:)();
    }

    v80 = v79;
    v122(v133, v152, v151);
    v186 = &protocol witness table for LayoutViewPlaceholder;
    v185 = v66;
    v184 = v124;
    v183 = 0;
    *&v181[40] = 0u;
    v182 = 0u;
    sub_10002C0AC(v189, v181);
    sub_10002C0AC(v188, &v180);
    v179 = 0;
    v177 = 0u;
    v178 = 0u;
    v176 = 0;
    v174 = 0u;
    v175 = 0u;

    v140 = v80;
    v81 = static LayoutViewPlaceholder.withIdentityMeasurement.getter();
    v173 = &protocol witness table for LayoutViewPlaceholder;
    v172 = v66;
    v171 = v81;
    v170 = 0;
    v168 = 0u;
    v169 = 0u;
    v167 = 0;
    v165 = 0u;
    v166 = 0u;
    v164 = 0;
    v162 = 0u;
    v163 = 0u;
    v161 = 0;
    v160 = 0u;
    *&v159[40] = 0u;
    sub_10002C0AC(v187, v159);
    v157 = v66;
    v158 = &protocol witness table for LayoutViewPlaceholder;
    v155 = &protocol witness table for LayoutViewPlaceholder;
    v156 = v77;
    v154 = v66;
    v153 = v80;
    v82 = v134;
    SmallSearchLockupLayout.init(metrics:artworkView:headingText:titleText:subtitleText:tertiaryTitleText:offerText:offerButton:userRatingView:ratingCountLabel:editorsChoiceView:adButton:description:includesRatings:metadataRibbonView:searchTagsRibbonView:includesMetadataRibbon:includesSearchTagsRibbon:includesMetadataInformationInLockup:)();
    type metadata accessor for TraitEnvironmentPlaceholder();
    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v83 = swift_allocObject();
    v139 = xmmword_1007B0B70;
    *(v83 + 16) = xmmword_1007B0B70;
    v84 = v148;
    *(v83 + 32) = v148;
    v85 = v84;
    v86 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    sub_1003EF640(&unk_100972E60, 255, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
    v87 = v125;
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v89 = v88;

    (*(v135 + 8))(v82, v87);
    sub_100007000(v187);
    sub_100007000(v188);
    sub_100007000(v189);
    (*(v144 + 8))(v143, v145);
    (*(v142 + 8))(v152, v151);
    sub_10002B894(v150, &unk_1009912C0, &unk_1007B4130);

    MixedMediaLockup.searchTagRibbonItems.getter();
    MixedMediaLockup.metadataRibbonItems.getter();
    v90 = sub_1000AE138();

    if (v90)
    {
      v91 = v108;
      static StandardSearchResultContentViewMetrics.bottomMargin.getter();
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      v92 = v189[0];
      v93 = swift_allocObject();
      *(v93 + 16) = v139;
      *(v93 + 32) = v92;
      v94 = v92;
      v95 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
      sub_1000320F0();
      v96 = v110;
      dispatch thunk of AnyDimension.rawValue(in:)();
      v98 = v97;

      (*(v109 + 8))(v91, v96);
    }

    else
    {
      if (qword_10096DBB0 != -1)
      {
        swift_once();
      }

      sub_10002A400(qword_1009D00F8, qword_1009D0110);
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      v99 = v189[0];
      AnyDimension.value(with:)();
      v98 = v100;
    }

    v101 = v126;
    v102 = type metadata accessor for AppEventView(0);
    v103 = AppEventSearchResult.appEvent.getter();
    v104 = sub_100079F24();
    ObjectType = swift_getObjectType();
    sub_10016862C(v29, v31 - (v89 + v98), v103, v104, v137, v102, ObjectType);

    swift_unknownObjectRelease();

    return (*(v136 + 8))(v147, v101);
  }

  return result;
}

uint64_t sub_1003EEA28(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = type metadata accessor for SmallLockupLayout.Metrics();
  v38 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for Artwork.Crop();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42[3] = type metadata accessor for AppEvent();
  v42[4] = &protocol witness table for AppPromotion;
  v42[0] = a1;
  sub_10002C0AC(v42, v41);

  sub_10002849C(&unk_1009793D0, qword_1007B4FF0);
  if (!swift_dynamicCast())
  {
    return sub_100007000(v42);
  }

  v39 = v11;
  v15 = v40;
  if (qword_10096EB98 != -1)
  {
    swift_once();
  }

  v35 = v12;
  v16 = type metadata accessor for AppEventCardLayout.Metrics(0);
  sub_1000056A8(v16, qword_1009D3058);
  AspectRatio.height(fromWidth:)();
  v17 = AppEvent.moduleVideo.getter();
  v36 = v15;
  v37 = a2;
  if (v17)
  {
    Video.preview.getter();

LABEL_7:

    Artwork.crop.getter();
    Artwork.Crop.preferredContentMode.getter();
    (*(v35 + 1))(v14, v39);
    Artwork.config(_:mode:prefersLayeredImage:)();
    v18 = *(a3 + OBJC_IVAR____TtC8AppStore16AppEventCardView_artworkView);
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v18 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100005744(0, &qword_100970180, UIColor_ptr);
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v20 = Strong;
      type metadata accessor for VideoView(0);
      sub_1003EF640(&unk_1009840E0, 255, type metadata accessor for VideoView, &unk_1007DDE78);
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    }

    else
    {
      type metadata accessor for ArtworkView();
      sub_1003EF640(&qword_100970E80, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    }

    goto LABEL_13;
  }

  if (AppEvent.moduleArtwork.getter())
  {
    goto LABEL_7;
  }

LABEL_13:
  v21 = *(a3 + OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupView);
  if (v21)
  {
    v22 = v21;
    AppEvent.lockup.getter();
    v23 = dispatch thunk of Lockup.artwork.getter();

    if (v23)
    {
      v24 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
      swift_beginAccess();
      v25 = v38;
      (*(v38 + 16))(v9, &v22[v24], v7);
      SmallLockupLayout.Metrics.artworkSize.getter();
      (*(v25 + 8))(v9, v7);
      Artwork.crop.getter();
      Artwork.Crop.preferredContentMode.getter();
      v34 = *(v35 + 1);
      v34(v14, v39);
      v26 = Artwork.config(_:mode:prefersLayeredImage:)();
      v27 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
      v28 = *&v22[OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView];
      v35 = v22;
      v29 = v28;
      Artwork.style.getter();
      ArtworkView.style.setter();
      [v29 setContentMode:Artwork.contentMode.getter()];
      v38 = v26;
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100005744(0, &qword_100970180, UIColor_ptr);
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();

      v30 = *&v22[v27];
      Artwork.crop.getter();
      v31 = Artwork.Crop.preferredContentMode.getter();
      v34(v14, v39);
      [v30 setContentMode:v31];

      v22 = *&v22[v27];
      v32 = v35;

      type metadata accessor for ArtworkView();
      sub_1003EF640(&qword_100970E80, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    }
  }

  else
  {
  }

  return sub_100007000(v42);
}

double sub_1003EF128(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_lockupView);
  v4 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
  v5 = *(v3 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  v19.value.super.isa = 0;
  v19.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v19, v6);

  v7 = *(v3 + v4);
  type metadata accessor for ArtworkView();
  sub_1003EF640(&qword_100970E80, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v8 = v7;
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();

  v10 = *(v3 + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_metadataRibbonView);
  v11 = *&v10[OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metadataRibbonItemViews];
  v12 = *(v11 + 16);
  if (v12)
  {
    type metadata accessor for MetadataRibbonIconWithLabelView(0);
    v18 = v10;

    v13 = 32;
    do
    {
      v14 = *(v11 + v13);
      if (swift_dynamicCastClass())
      {
        v15 = v14;
        v20.value.super.isa = 0;
        v20.is_nil = 0;
        ArtworkView.setImage(image:animated:)(v20, v16);
        ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
      }

      v13 += 16;
      --v12;
    }

    while (v12);
  }

  sub_1004DC1C0(a1, 1, v9);
  return result;
}

void sub_1003EF308(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  v6 = v5;
  v10 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v10 - 8);
  sub_10002C0AC(a1, v22);
  sub_10002849C(&unk_1009793D0, qword_1007B4FF0);
  type metadata accessor for AppEventSearchResult();
  if (swift_dynamicCast())
  {
    sub_1003EF128(a2);
    AppEventSearchResult.lockup.getter();
    v11 = Lockup.icon.getter();

    if (v11)
    {
      v12 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
      v21 = *(v5 + OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_lockupView);
      v13 = qword_10096EE80;
      v14 = *(v21 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
      if (v13 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for SmallLockupLayout.Metrics();
      sub_1000056A8(v15, qword_1009D3798);
      SmallLockupLayout.Metrics.artworkSize.getter();
      [v14 contentMode];
      Artwork.config(_:mode:prefersLayeredImage:)();
      Artwork.style.getter();
      ArtworkView.style.setter();
      [v14 setContentMode:Artwork.contentMode.getter()];
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100005744(0, &qword_100970180, UIColor_ptr);
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();
      v16 = *(v21 + v12);
      type metadata accessor for ArtworkView();
      sub_1003EF640(&qword_100970E80, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      v17 = v16;
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    }

    v18 = *(*(v6 + OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_lockupView) + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_metadataRibbonView);
    sub_10032A784(a1, a2);

    v19 = *(v6 + OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_appEventView);
    v20 = AppEventSearchResult.appEvent.getter();
    sub_1003EEA28(v20, a2, *(v19 + OBJC_IVAR____TtC8AppStore12AppEventView_appEventCardView), a5);
  }
}

uint64_t sub_1003EF640(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void *sub_1003EF688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ShelfLayoutContext();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for PageGrid();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppEventSearchResult();
  sub_1003EF640(&qword_100973DC0, 255, &type metadata accessor for AppEventSearchResult, &protocol conformance descriptor for SearchResult);
  result = ItemLayoutContext.typedModel<A>(as:)();
  if (v30._rawValue)
  {
    v27 = a3;
    v28 = v6;
    v30._rawValue = _swiftEmptyArrayStorage;
    AppEventSearchResult.lockup.getter();
    v11 = Lockup.icon.getter();

    if (v11)
    {
      if (qword_10096EE80 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for SmallLockupLayout.Metrics();
      sub_1000056A8(v12, qword_1009D3798);
      SmallLockupLayout.Metrics.artworkSize.getter();
      Artwork.config(_:mode:prefersLayeredImage:)();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v30._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30._rawValue & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    AppEventSearchResult.lockup.getter();
    v13 = MixedMediaLockup.metadataRibbonItems.getter();

    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v14 = v29;
    v15 = sub_10032AAE8(v13, v29);

    sub_100394974(v15, v16);
    ItemLayoutContext.parentShelfLayoutContext.getter();
    if (qword_10096EF00 != -1)
    {
      swift_once();
    }

    PageGrid.init(from:breakpointOverrides:)();
    PageGrid.columnWidth.getter();
    v18 = v17;
    sub_1003ED810(a1, v27);
    v20 = v19;
    v21 = type metadata accessor for AppEventView(0);
    v22 = AppEventSearchResult.appEvent.getter();
    v23 = sub_100079F24();
    ObjectType = swift_getObjectType();
    v25 = sub_100168884(v22, v23, v18, v20, v21, ObjectType);

    swift_unknownObjectRelease();
    sub_100394974(v25, v26);
    ArtworkLoader.prefetchArtwork(using:)(v30);

    return (*(v7 + 8))(v9, v28);
  }

  return result;
}

void sub_1003EFA6C()
{
  v1 = OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_lockupView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_appEventView;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for AppEventView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_appEventTapGestureRecognizer;
  *(v0 + v3) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v4 = (v0 + OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_appEventViewTappedAction);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_impressionsCalculator) = 0;
  v5 = (v0 + OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_impressionsUpdateBlock);
  *v5 = 0;
  v5[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

BOOL sub_1003EFB84(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_appEventView];
  v3 = *(*&v2[OBJC_IVAR____TtC8AppStore12AppEventView_appEventCardView] + OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupView);
  if (!v3)
  {
    return 0;
  }

  v5 = v3;
  [a1 locationInView:v1];
  v7 = v6;
  v9 = v8;
  v10 = [v1 hitTest:0 withEvent:?];
  [a1 locationInView:v2];
  v12 = v11;
  v14 = v13;
  [a1 locationInView:v5];
  v16 = v15;
  v18 = v17;
  [v2 bounds];
  v21.x = v12;
  v21.y = v14;
  if (CGRectContainsPoint(v24, v21) && ([v5 bounds], v22.x = v16, v22.y = v18, !CGRectContainsPoint(v25, v22)) && *&v1[OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_appEventViewTappedAction])
  {
    [v1 bounds];
    v23.x = v7;
    v23.y = v9;
    v19 = CGRectContainsPoint(v26, v23);

    if (v19)
    {
      if (!v10)
      {
        return 1;
      }

      objc_opt_self();
      v19 = swift_dynamicCastObjCClass() == 0;
    }
  }

  else
  {

    v19 = 0;
  }

  return v19;
}

void sub_1003EFD2C(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v4 = type metadata accessor for Accessory(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v29 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10002849C(&qword_100984340, qword_1007C0830);
  __chkstk_darwin(v7 - 8);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v31 = &v28 - v10;
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  v14 = sub_10002849C(&qword_100984348, qword_1007DE850);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v28 - v16;
  v18 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessory;
  swift_beginAccess();
  v19 = *(v15 + 56);
  v33 = a1;
  sub_100031660(a1, v17, &qword_100984340, qword_1007C0830);
  sub_100031660(v2 + v18, &v17[v19], &qword_100984340, qword_1007C0830);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_10002B894(v17, &qword_100984340, qword_1007C0830);
      return;
    }
  }

  else
  {
    sub_100031660(v17, v13, &qword_100984340, qword_1007C0830);
    if (v20(&v17[v19], 1, v4) != 1)
    {
      v26 = v29;
      sub_1003FADB8(&v17[v19], v29, type metadata accessor for Accessory);
      v27 = sub_1000C6830(v13, v26);
      sub_1003FAD58(v26, type metadata accessor for Accessory);
      sub_1003FAD58(v13, type metadata accessor for Accessory);
      sub_10002B894(v17, &qword_100984340, qword_1007C0830);
      if (v27)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_1003FAD58(v13, type metadata accessor for Accessory);
  }

  sub_10002B894(v17, &qword_100984348, qword_1007DE850);
LABEL_7:
  v21 = v33;
  v22 = v31;
  sub_100031660(v33, v31, &qword_100984340, qword_1007C0830);
  swift_beginAccess();
  sub_1002BAFE4(v22, v2 + v18);
  swift_endAccess();
  v23 = v32;
  sub_100031660(v21, v32, &qword_100984340, qword_1007C0830);
  if (v20(v23, 1, v4) == 1)
  {
    sub_10002B894(v23, &qword_100984340, qword_1007C0830);
    sub_1003F02B0(0);
  }

  else
  {
    sub_1000C4450(v30);
    v25 = v24;
    sub_1003FAD58(v23, type metadata accessor for Accessory);
    sub_1003F02B0(v25);
  }
}

void sub_1003F0174(void *a1, uint64_t *a2)
{
  v4 = v2;
  v6 = type metadata accessor for DirectionalTextAlignment();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = *&v4[v11];
  if (v12)
  {
    [v12 removeFromSuperview];
    v13 = *&v4[v11];
  }

  else
  {
    v13 = 0;
  }

  *&v4[v11] = a1;
  v14 = a1;

  if (a1)
  {
    (*(v7 + 104))(v10, enum case for DirectionalTextAlignment.leading(_:), v6);
    dispatch thunk of DynamicTypeLabel.directionalTextAlignment.setter();
    [v4 addSubview:v14];
  }
}

void sub_1003F02B0(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessoryView;
  v4 = *&v1[OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessoryView];
  if (v4)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      [v5 removeTarget:v1 action:"didTapWithAccessoryView:" forControlEvents:64];
    }

    v6 = *&v1[v3];
    if (v6)
    {
      [v6 removeFromSuperview];
      v4 = *&v1[v3];
    }

    else
    {
      v4 = 0;
    }
  }

  *&v1[v3] = a1;
  v8 = a1;

  if (a1)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      [v7 addTarget:v1 action:"didTapWithAccessoryView:" forControlEvents:64];
    }

    [v1 addSubview:v8];
  }
}

unint64_t *sub_1003F03DC@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

char *sub_1003F03F8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v119 = type metadata accessor for DirectionalTextAlignment();
  v118 = *(v119 - 8);
  __chkstk_darwin(v119);
  v117 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v11 - 8);
  v116 = &v99 - v12;
  v115 = type metadata accessor for TitleHeaderLayout.ChildrenHorizontalAlignment();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v121 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&qword_1009794E0, &unk_1007C4840);
  __chkstk_darwin(v14 - 8);
  v120 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v99 - v17;
  v19 = sub_10002849C(&qword_1009794E8, &unk_1007C18C0);
  __chkstk_darwin(v19 - 8);
  v111 = &v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v107 = &v99 - v22;
  v122 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v102 = *(v122 - 8);
  __chkstk_darwin(v122);
  v110 = &v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v106 = &v99 - v25;
  __chkstk_darwin(v26);
  v105 = &v99 - v27;
  v28 = sub_10002849C(&unk_100984380, &qword_1007C4850);
  __chkstk_darwin(v28 - 8);
  v30 = &v99 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v99 - v32;
  v113 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v113);
  v108 = &v99 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v112 = &v99 - v36;
  v37 = type metadata accessor for AutomationSemantics();
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v40 = &v99 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = &v4[OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowText];
  *v41 = 0;
  v41[1] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowLabel] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowArtwork] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowArtworkView] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleArtwork] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleArtworkView] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore15TitleHeaderView_detailLabel] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore15TitleHeaderView_shortDetailLabel] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessoryView] = 0;
  v42 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessory;
  v43 = type metadata accessor for Accessory(0);
  (*(*(v43 - 8) + 56))(&v5[v42], 1, 1, v43);
  v44 = &v5[OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessoryAction];
  *v44 = 0;
  v44[1] = 0;
  v45 = &v5[OBJC_IVAR____TtC8AppStore15TitleHeaderView_separatorInset];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  *v45 = UIEdgeInsetsZero.top;
  v45[1] = left;
  v45[2] = bottom;
  v45[3] = right;
  v5[OBJC_IVAR____TtC8AppStore15TitleHeaderView_allowsAccessibilityLayouts] = 1;
  type metadata accessor for DynamicTypeLabel();
  v49 = DynamicTypeLabel.__allocating_init(frame:)();
  *&v5[OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabel] = v49;
  memset(v125, 0, sizeof(v125));
  memset(v124, 0, sizeof(v124));
  v50 = v49;
  static AutomationSemantics.shelf(_:id:parentId:)();
  sub_10002B894(v124, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(v125, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  (*(v38 + 8))(v40, v37);
  v51 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC8AppStore15TitleHeaderView_separatorLineView] = v51;
  v109 = v5;
  v52 = &v5[OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabelNumberOfLines];
  *v52 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v52[1] = 0;
  v53 = type metadata accessor for ShelfHeader.Configuration();
  v54 = *(v53 - 8);
  (*(v54 + 56))(v33, 1, 1, v53);
  v55 = type metadata accessor for TitleHeaderLayout.AccessoryVerticalAlignment();
  v100 = *(v55 - 8);
  v56 = *(v100 + 56);
  v103 = v18;
  v101 = v55;
  v56(v18, 1, 1);
  v104 = v33;
  sub_100031660(v33, v30, &unk_100984380, &qword_1007C4850);
  if ((*(v54 + 48))(v30, 1, v53) == 1)
  {
    sub_10002B894(v30, &unk_100984380, &qword_1007C4850);
    v57 = 0;
  }

  else
  {
    v57 = ShelfHeader.Configuration.eyebrowColor.getter();
    (*(v54 + 8))(v30, v53);
  }

  v58 = v105;
  sub_100512504(v57, v105);

  if (qword_10096E778 != -1)
  {
    swift_once();
  }

  v59 = v122;
  v60 = sub_1000056A8(v122, qword_1009D26D0);
  v61 = v107;
  (*(v102 + 56))(v107, 1, 1, v59);
  v62 = v106;
  sub_1003FAE20(v58, v106, type metadata accessor for TitleHeaderView.TextConfiguration);
  v63 = v110;
  sub_1003FAE20(v60, v110, type metadata accessor for TitleHeaderView.TextConfiguration);
  v64 = v111;
  sub_100031660(v61, v111, &qword_1009794E8, &unk_1007C18C0);
  v65 = v103;
  sub_100031660(v103, v120, &qword_1009794E0, &unk_1007C4840);
  v66 = v114;
  v67 = v115;
  (*(v114 + 104))(v121, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v115);
  v102 = sub_100005744(0, &qword_100970180, UIColor_ptr);
  v99 = static UIColor.defaultLine.getter();
  sub_10002B894(v65, &qword_1009794E0, &unk_1007C4840);
  sub_10002B894(v61, &qword_1009794E8, &unk_1007C18C0);
  sub_1003FAD58(v58, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10002B894(v104, &unk_100984380, &qword_1007C4850);
  v68 = v113;
  v69 = *(v113 + 32);
  v70 = v108;
  sub_1003FADB8(v62, v108, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_1003FADB8(v63, v70 + v68[5], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_1000476A0(v64, v70 + v68[6], &qword_1009794E8, &unk_1007C18C0);
  *(v70 + v68[7]) = 1;
  *(v70 + v69) = 0;
  *(v70 + v68[9]) = 0;
  *(v70 + v68[14]) = 0x4030000000000000;
  *(v70 + v68[12]) = 0;
  *(v70 + v68[13]) = v99;
  v71 = v120;
  (*(v66 + 32))(v70 + v68[11], v121, v67);
  v72 = v100;
  v73 = v101;
  if ((*(v100 + 48))(v71, 1, v101) == 1)
  {
    sub_10002B894(v71, &qword_1009794E0, &unk_1007C4840);
    (*(v72 + 104))(v70 + v68[10], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:), v73);
  }

  else
  {
    (*(v72 + 32))(v70 + v68[10], v71, v73);
  }

  v74 = v112;
  sub_1003FADB8(v70, v112, type metadata accessor for TitleHeaderView.Style);
  v75 = v109;
  sub_1003FADB8(v74, v109 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_style, type metadata accessor for TitleHeaderView.Style);
  v76 = type metadata accessor for TitleHeaderView(0);
  v123.receiver = v75;
  v123.super_class = v76;
  v77 = objc_msgSendSuper2(&v123, "initWithFrame:", a1, a2, a3, a4);
  v78 = [v77 layer];
  [v78 setAllowsGroupOpacity:0];

  [v77 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v77 setEdgesInsettingLayoutMarginsFromSafeArea:0];

  v79 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_separatorLineView;
  v80 = *&v77[OBJC_IVAR____TtC8AppStore15TitleHeaderView_separatorLineView];
  v81 = static UIColor.defaultLine.getter();
  [v80 setBackgroundColor:v81];

  [v77 addSubview:*&v77[v79]];
  v82 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabel;
  v83 = *&v77[OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabel];
  v84 = &v77[OBJC_IVAR____TtC8AppStore15TitleHeaderView_style];
  swift_beginAccess();
  [v83 setTextColor:*&v84[v68[5]]];
  v85 = *&v77[v82];
  v86 = v68[5] + *(v122 + 24);
  v87 = type metadata accessor for FontUseCase();
  v88 = v68;
  v89 = *(v87 - 8);
  v90 = &v84[v86];
  v91 = v116;
  (*(v89 + 16))(v116, v90, v87);
  (*(v89 + 56))(v91, 0, 1, v87);
  v92 = v85;
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  v93 = *&v77[v82];
  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

  v94 = [*&v77[v82] layer];
  if (*&v84[v88[5] + 16])
  {

    v95 = String._bridgeToObjectiveC()();
  }

  else
  {
    v95 = 0;
  }

  [v94 setCompositingFilter:v95];

  swift_unknownObjectRelease();
  v96 = *&v77[v82];
  (*(v118 + 104))(v117, enum case for DirectionalTextAlignment.leading(_:), v119);
  v97 = v96;
  dispatch thunk of DynamicTypeLabel.directionalTextAlignment.setter();

  [v77 addSubview:*&v77[v82]];
  return v77;
}

void sub_1003F1328(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowText + 8);
  if (a2)
  {
    if (v3)
    {
      v4 = *(v2 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowText) == a1 && v3 == a2;
      if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return;
      }
    }
  }

  else if (!v3)
  {
    return;
  }

  v5 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowLabel;
  v6 = *(v2 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowLabel);
  if (v6)
  {
    [v6 removeFromSuperview];
    v6 = *(v2 + v5);
  }

  *(v2 + v5) = 0;
}

void sub_1003F13BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DirectionalTextAlignment();
  v52 = *(v6 - 8);
  v53 = v6;
  __chkstk_darwin(v6);
  v51 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v8 - 8);
  v10 = v45 - v9;
  v50 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  __chkstk_darwin(v50);
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = (v45 - v14);
  v16 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v16);
  v18 = v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = v45 - v21;
  v23 = *(v3 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowText + 8);
  if (v23)
  {
    if (!a2 || (*(v3 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowText) == a1 ? (v24 = v23 == a2) : (v24 = 0), !v24 && (v25 = v20, v26 = _stringCompareWithSmolCheck(_:_:expecting:)(), v20 = v25, (v26 & 1) == 0)))
    {
      v49 = v20;
      type metadata accessor for DynamicTypeLabel();

      v27 = DynamicTypeLabel.__allocating_init(frame:)();
      [v27 setNumberOfLines:1];
      v28 = String._bridgeToObjectiveC()();

      [v27 setText:v28];

      v29 = dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();
      v30 = ((swift_isaMask & *v3) + 448);
      v31 = *((swift_isaMask & *v3) + 0x1C0);
      (v31)(v29);
      v47 = v18;
      v48 = v12;
      v45[1] = v30;
      v46 = type metadata accessor for TitleHeaderView.TextConfiguration;
      sub_1003FAE20(v22, v15, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_1003FAD58(v22, type metadata accessor for TitleHeaderView.Style);
      v32 = *v15;
      v45[0] = type metadata accessor for TitleHeaderView.TextConfiguration;
      sub_1003FAD58(v15, type metadata accessor for TitleHeaderView.TextConfiguration);
      [v27 setTextColor:v32];

      v31();
      sub_1003FAE20(v22, v15, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_1003FAD58(v22, type metadata accessor for TitleHeaderView.Style);
      v33 = *(v50 + 24);
      v34 = type metadata accessor for FontUseCase();
      v35 = *(v34 - 8);
      (*(v35 + 16))(v10, v15 + v33, v34);
      v36 = v45[0];
      sub_1003FAD58(v15, v45[0]);
      (*(v35 + 56))(v10, 0, 1, v34);
      dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
      v37 = [v27 layer];
      v38 = v47;
      v31();
      v39 = v38 + *(v49 + 20);
      v40 = v38;
      v41 = v48;
      sub_1003FAE20(v39, v48, v46);
      sub_1003FAD58(v40, type metadata accessor for TitleHeaderView.Style);
      v42 = *(v41 + 16);

      sub_1003FAD58(v41, v36);
      if (v42)
      {
        v43 = String._bridgeToObjectiveC()();
      }

      else
      {
        v43 = 0;
      }

      [v37 setCompositingFilter:v43];

      swift_unknownObjectRelease();
      (*(v52 + 104))(v51, enum case for DirectionalTextAlignment.leading(_:), v53);
      dispatch thunk of DynamicTypeLabel.directionalTextAlignment.setter();
      [v3 addSubview:v27];
      v44 = *(v3 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowLabel);
      *(v3 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowLabel) = v27;
    }
  }
}

void sub_1003F195C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v4 - 8);
  if (*&v2[OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowArtwork])
  {
    if (a1)
    {
      type metadata accessor for Artwork();
      sub_1003FAFE0(&unk_1009811F0, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
      swift_retain_n();
      v5 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v5)
      {

        return;
      }
    }

    else
    {
    }

    type metadata accessor for ArtworkView();
    v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v2 addSubview:v6];

    v7 = *&v2[OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowArtworkView];
    *&v2[OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowArtworkView] = v6;
  }
}

void sub_1003F1AFC(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = v3;
  v6 = *(v3 + *a2);
  if (a1)
  {
    if (v6)
    {
      type metadata accessor for Artwork();
      sub_1003FAFE0(&unk_1009811F0, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);

      v7 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v7)
      {
        return;
      }
    }
  }

  else if (!v6)
  {
    return;
  }

  v8 = *a3;
  v9 = *(v5 + *a3);
  if (v9)
  {
    [v9 removeFromSuperview];
    v10 = *(v5 + v8);
  }

  else
  {
    v10 = 0;
  }

  *(v5 + v8) = 0;
}

void sub_1003F1BFC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v4 - 8);
  if (*&v2[OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleArtwork])
  {
    if (a1)
    {
      type metadata accessor for Artwork();
      sub_1003FAFE0(&unk_1009811F0, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
      swift_retain_n();
      v5 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v5)
      {

        return;
      }
    }

    else
    {
    }

    type metadata accessor for ArtworkView();
    v6 = static ArtworkView.iconArtworkView.getter();
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v2 addSubview:v6];

    v7 = *&v2[OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleArtworkView];
    *&v2[OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleArtworkView] = v6;
  }
}

id sub_1003F1D7C(uint64_t a1)
{
  v3 = type metadata accessor for AutomationSemantics();
  v88 = *(v3 - 8);
  __chkstk_darwin(v3);
  v87 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&qword_1009794E8, &unk_1007C18C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v77 - v6;
  v8 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v90 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v11 - 8);
  v13 = &v77 - v12;
  v14 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v14);
  v16 = (&v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = &v1[OBJC_IVAR____TtC8AppStore15TitleHeaderView_style];
  swift_beginAccess();
  sub_1003FAE20(v17, v16, type metadata accessor for TitleHeaderView.Style);
  LOBYTE(a1) = sub_1003FA80C(v16, a1);
  result = sub_1003FAD58(v16, type metadata accessor for TitleHeaderView.Style);
  if ((a1 & 1) == 0)
  {
    v77 = v3;
    v78 = v9;
    v19 = v8;
    v20 = *&v1[OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabel];
    [v20 setTextColor:*&v17[v14[5]]];
    v21 = v14[5] + *(v19 + 24);
    v22 = type metadata accessor for FontUseCase();
    v23 = *(v22 - 8);
    v79 = v7;
    v24 = v23;
    v81 = *(v23 + 16);
    v82 = v23 + 16;
    v81(v13, &v17[v21], v22);
    v25 = *(v24 + 56);
    v83 = v24 + 56;
    v84 = v22;
    v80 = v25;
    v25(v13, 0, 1, v22);
    v26 = v78;
    v27 = v79;
    v89 = v13;
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
    [v20 setMinimumScaleFactor:*&v17[v14[5] + *(v19 + 28)]];
    [v20 setAdjustsFontSizeToFitWidth:*&v17[v14[5] + *(v19 + 28)] > 0.0];
    [v1 setBackgroundColor:*&v17[v14[12]]];
    v85 = v19;
    v86 = v1;
    v28 = *&v1[OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowLabel];
    v29 = v19;
    v30 = v90;
    if (v28)
    {
      v31 = v27;
      v32 = *v17;
      v33 = v28;
      [v33 setTextColor:v32];
      v34 = v89;
      v35 = v84;
      v81(v89, &v17[*(v29 + 24)], v84);
      v80(v34, 0, 1, v35);
      dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
      v36 = [v33 layer];
      if (*&v17[v14[5] + 16])
      {

        v37 = String._bridgeToObjectiveC()();
      }

      else
      {
        v37 = 0;
      }

      [v36 setCompositingFilter:v37];

      swift_unknownObjectRelease();
      v30 = v90;
      v29 = v85;
      v27 = v31;
    }

    sub_100031660(&v17[v14[6]], v27, &qword_1009794E8, &unk_1007C18C0);
    if ((*(v26 + 48))(v27, 1, v29) == 1)
    {
      sub_10002B894(v27, &qword_1009794E8, &unk_1007C18C0);
      v38 = v86;
      v39 = *&v86[OBJC_IVAR____TtC8AppStore15TitleHeaderView_detailLabel];
      if (v39)
      {
        [v39 setHidden:1];
      }

      v40 = *&v38[OBJC_IVAR____TtC8AppStore15TitleHeaderView_shortDetailLabel];
      if (v40)
      {
        [v40 setHidden:1];
      }
    }

    else
    {
      sub_1003FADB8(v27, v30, type metadata accessor for TitleHeaderView.TextConfiguration);
      v41 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_detailLabel;
      v38 = v86;
      v42 = *&v86[OBJC_IVAR____TtC8AppStore15TitleHeaderView_detailLabel];
      v43 = v89;
      if (v42 || (type metadata accessor for DynamicTypeLabel(), v50 = DynamicTypeLabel.__allocating_init(frame:)(), sub_1003F015C(v50), (v51 = *&v38[v41]) != 0) && ([v51 setNumberOfLines:1], (v52 = *&v38[v41]) != 0) && (objc_msgSend(v52, "setLineBreakMode:", 4), (v53 = *&v38[v41]) != 0) && (v93 = 0u, v94 = 0u, v91 = 0u, v92 = 0u, v54 = v53, v55 = v87, static AutomationSemantics.shelf(_:id:parentId:)(), sub_10002B894(&v91, &unk_1009711D0, &unk_1007B1A10), sub_10002B894(&v93, &unk_1009711D0, &unk_1007B1A10), UIView.setAutomationSemantics(_:)(), v54, v38 = v86, (*(v88 + 8))(v55, v77), (v42 = *&v38[v41]) != 0))
      {
        [v42 setTextColor:*v30];
        v44 = *&v38[v41];
        if (v44)
        {
          v45 = v84;
          v81(v43, &v30[*(v85 + 24)], v84);
          v80(v43, 0, 1, v45);
          v46 = v44;
          dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

          v47 = *&v38[v41];
          if (v47)
          {
            v48 = [v47 layer];
            v49 = *(v30 + 2) ? String._bridgeToObjectiveC()() : 0;
            [v48 setCompositingFilter:v49];

            swift_unknownObjectRelease();
            v56 = *&v38[v41];
            if (v56)
            {
              v57 = v56;
              dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

              v58 = *&v38[v41];
              if (v58)
              {
                [v58 setHidden:0];
              }
            }
          }
        }
      }

      v59 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_shortDetailLabel;
      v60 = *&v38[OBJC_IVAR____TtC8AppStore15TitleHeaderView_shortDetailLabel];
      if (v60 || (type metadata accessor for DynamicTypeLabel(), v67 = DynamicTypeLabel.__allocating_init(frame:)(), sub_1003F0168(v67), (v68 = *&v38[v59]) != 0) && ([v68 setNumberOfLines:1], (v69 = *&v38[v59]) != 0) && (objc_msgSend(v69, "setLineBreakMode:", 4), (v70 = *&v38[v59]) != 0) && (v93 = 0u, v94 = 0u, v91 = 0u, v92 = 0u, v71 = v70, v72 = v87, static AutomationSemantics.shelf(_:id:parentId:)(), sub_10002B894(&v91, &unk_1009711D0, &unk_1007B1A10), sub_10002B894(&v93, &unk_1009711D0, &unk_1007B1A10), UIView.setAutomationSemantics(_:)(), v71, v38 = v86, (*(v88 + 8))(v72, v77), (v60 = *&v38[v59]) != 0))
      {
        [v60 setTextColor:*v30];
        v61 = *&v38[v59];
        if (v61)
        {
          v62 = v84;
          v81(v43, &v30[*(v85 + 24)], v84);
          v80(v43, 0, 1, v62);
          v63 = v61;
          dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

          v64 = *&v38[v59];
          if (v64)
          {
            v65 = [v64 layer];
            v66 = *(v30 + 2) ? String._bridgeToObjectiveC()() : 0;
            [v65 setCompositingFilter:v66];

            swift_unknownObjectRelease();
            v73 = *&v38[v59];
            if (v73)
            {
              v74 = v73;
              dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

              v75 = *&v38[v59];
              if (v75)
              {
                [v75 setHidden:0];
              }
            }
          }
        }
      }

      sub_1003FAD58(v30, type metadata accessor for TitleHeaderView.TextConfiguration);
    }

    v76 = *&v38[OBJC_IVAR____TtC8AppStore15TitleHeaderView_separatorLineView];
    [v76 setHidden:(v17[v14[7]] & 1) == 0];
    [v76 setBackgroundColor:*&v17[v14[13]]];
    return [v38 setNeedsLayout];
  }

  return result;
}

uint64_t sub_1003F280C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_style;
  swift_beginAccess();
  return sub_1003FAE20(v1 + v3, a1, type metadata accessor for TitleHeaderView.Style);
}

uint64_t sub_1003F2878(uint64_t a1)
{
  v3 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_style;
  swift_beginAccess();
  sub_1003FAE20(v1 + v6, v5, type metadata accessor for TitleHeaderView.Style);
  swift_beginAccess();
  sub_10022F078(a1, v1 + v6);
  swift_endAccess();
  sub_1003F1D7C(v5);
  sub_1003FAD58(a1, type metadata accessor for TitleHeaderView.Style);
  return sub_1003FAD58(v5, type metadata accessor for TitleHeaderView.Style);
}

double sub_1003F2A54(double a1, double a2)
{
  v3 = v2;
  v6 = type metadata accessor for TitleHeaderView.Style(0);
  *&v7 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessoryView);
  if (v10)
  {
    [v10 frame];
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v12 = 0.0;
    v14 = 0.0;
  }

  v15 = *(v2 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowLabel);
  if (v15 && (v16 = [v15 text]) != 0)
  {
    v17 = v16;
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v18;
  }

  else
  {
    v49 = 0;
    v50 = 0;
  }

  v19 = *(v3 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowArtwork);
  v20 = *(v3 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabel);

  v21 = [v20 text];
  if (v21)
  {
    v22 = v21;
    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;
  }

  else
  {
    v48 = 0;
    v24 = 0;
  }

  v25 = *(v3 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleArtwork);
  v26 = *(v3 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_detailLabel);
  if (!v26)
  {

    goto LABEL_15;
  }

  v27 = [v26 text];
  if (!v27)
  {
LABEL_15:
    v47 = 0;
    v30 = 0;
    goto LABEL_16;
  }

  v28 = v27;
  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

LABEL_16:
  v31 = *(v3 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_shortDetailLabel);
  if (v31 && (v32 = [v31 text]) != 0)
  {
    v33 = v32;
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;
  }

  else
  {
    v34 = 0;
    v36 = 0;
  }

  v37 = *(v3 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabelNumberOfLines);

  v38 = v37(v3);

  (*((swift_isaMask & *v3) + 0x1C0))(v39);
  [v3 layoutMargins];
  sub_10056A7EC(v49, v50, v19, v48, v24, v25, v47, v30, a1, a2, v12, v14, v40, v41, v42, v43, v34, v36, v38, v9, 1, v3);
  v45 = v44;

  sub_1003FAD58(v9, type metadata accessor for TitleHeaderView.Style);
  return v45;
}

void sub_1003F2EDC()
{
  v1 = type metadata accessor for LayoutRect();
  v425 = *(v1 - 8);
  v426 = v1;
  __chkstk_darwin(v1);
  v424 = &v400 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v423 = type metadata accessor for TitleHeaderLayout.AccessoryHorizontalAlignment();
  v421 = *(v423 - 8);
  __chkstk_darwin(v423);
  v420 = &v400 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TitleHeaderLayout.ChildrenHorizontalAlignment();
  v415 = *(v4 - 8);
  v416 = v4;
  __chkstk_darwin(v4);
  v417 = &v400 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v422 = type metadata accessor for TitleHeaderLayout();
  v419 = *(v422 - 8);
  __chkstk_darwin(v422);
  v418 = &v400 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v442 = type metadata accessor for TitleHeaderLayout.AccessoryVerticalAlignment();
  v436 = *(v442 - 8);
  __chkstk_darwin(v442);
  v414 = &v400 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v441 = &v400 - v9;
  v10 = type metadata accessor for TitleHeaderLayout.Child();
  v455 = *(v10 - 8);
  v456 = v10;
  __chkstk_darwin(v10);
  v408 = &v400 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v454 = &v400 - v13;
  __chkstk_darwin(v14);
  v453 = &v400 - v15;
  __chkstk_darwin(v16);
  v440 = &v400 - v17;
  v18 = sub_10002849C(&qword_1009794E8, &unk_1007C18C0);
  __chkstk_darwin(v18 - 8);
  v430 = &v400 - v19;
  v20 = type metadata accessor for CharacterSet();
  v434 = *(v20 - 1);
  v435 = v20;
  __chkstk_darwin(v20);
  v433 = &v400 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for FontUseCase();
  v403 = *(v22 - 8);
  v404 = v22;
  __chkstk_darwin(v22);
  v402 = &v400 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v458 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v429 = *(v458 - 1);
  __chkstk_darwin(v458);
  v457 = &v400 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v438 = &v400 - v26;
  __chkstk_darwin(v27);
  v409 = &v400 - v28;
  __chkstk_darwin(v29);
  v406 = &v400 - v30;
  v427 = sub_10002849C(&unk_100984360, &unk_1007D54C0);
  v412 = *(v427 - 8);
  __chkstk_darwin(v427);
  v405 = &v400 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v407 = &v400 - v33;
  __chkstk_darwin(v34);
  v448 = &v400 - v35;
  __chkstk_darwin(v36);
  v452 = &v400 - v37;
  __chkstk_darwin(v38);
  v447 = &v400 - v39;
  __chkstk_darwin(v40);
  v451 = &v400 - v41;
  __chkstk_darwin(v42);
  v439 = &v400 - v43;
  __chkstk_darwin(v44);
  v401 = &v400 - v45;
  __chkstk_darwin(v46);
  v443 = &v400 - v47;
  v48 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v48);
  v413 = &v400 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v411 = &v400 - v51;
  __chkstk_darwin(v52);
  v410 = &v400 - v53;
  __chkstk_darwin(v54);
  v428 = &v400 - v55;
  __chkstk_darwin(v56);
  v400 = &v400 - v57;
  __chkstk_darwin(v58);
  v445 = &v400 - v59;
  __chkstk_darwin(v60);
  v62 = &v400 - v61;
  v432 = type metadata accessor for Separator.Position();
  v63 = *(v432 - 1);
  __chkstk_darwin(v432);
  v65 = &v400 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v449 = type metadata accessor for Separator();
  v66 = *(v449 - 1);
  __chkstk_darwin(v449);
  v68 = &v400 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v437 = type metadata accessor for TitleHeaderView(0);
  v497.receiver = v0;
  v497.super_class = v437;
  v69 = objc_msgSendSuper2(&v497, "layoutSubviews");
  v70 = swift_isaMask & *v0;
  v431 = *(v0 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_separatorLineView);
  v71 = v70 + 448;
  v72 = *(v70 + 448);
  (v72)(v69);
  v450 = v48;
  LODWORD(v48) = v62[*(v48 + 32)];
  v446 = v62;
  sub_1003FAD58(v62, type metadata accessor for TitleHeaderView.Style);
  v73 = &enum case for Separator.Position.bottom(_:);
  if (!v48)
  {
    v73 = &enum case for Separator.Position.top(_:);
  }

  v74 = v0;
  (*(v63 + 104))(v65, *v73, v432);
  *(&v495 + 1) = type metadata accessor for ZeroDimension();
  v496 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v494);
  static ZeroDimension.zero.getter();
  Separator.init(position:leadingInset:trailingInset:verticalOutset:)();
  [v0 bounds];
  Separator.frame(forBoundingRect:in:)();
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v82 = v81;
  (*(v66 + 8))(v68, v449);
  [v431 setFrame:{v76, v78, v80, v82}];
  v83 = v71;
  v84 = v445;
  v85 = LayoutMarginsAware<>.layoutFrame.getter();
  v449 = v72;
  (v72)(v85);
  if (JUScreenClassGetMain() == 1)
  {
    v86 = v450[5];
    if (qword_10096E760 != -1)
    {
      swift_once();
    }

    v87 = sub_1000056A8(v458, qword_1009D2688);
    v88 = sub_1003FA6EC(&v84[v86], v87);
    v89 = v456;
    v90 = v457;
    v91 = v448;
    if (!v88)
    {
      if (qword_10096E768 != -1)
      {
        goto LABEL_172;
      }

      goto LABEL_22;
    }

    sub_1003FAD58(v84, type metadata accessor for TitleHeaderView.Style);
  }

  else
  {
    sub_1003FAD58(v84, type metadata accessor for TitleHeaderView.Style);
    v89 = v456;
    v90 = v457;
    v91 = v448;
  }

  while (1)
  {
    v92 = *&v74[OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowLabel];
    v84 = &protocol witness table for UILabel;
    v444 = v83;
    v445 = v74;
    if (!v92)
    {
      goto LABEL_20;
    }

    v432 = v92;
    v93 = [v432 text];
    if (!v93)
    {
      goto LABEL_19;
    }

    v94 = v93;
    v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v97 = v96;

    v99 = HIBYTE(v97) & 0xF;
    if ((v97 & 0x2000000000000000) == 0)
    {
      v99 = v95 & 0xFFFFFFFFFFFFLL;
    }

    if (!v99)
    {
LABEL_19:

      v89 = v456;
LABEL_20:
      v437 = *(v455 + 56);
      v113 = (v437)(v443, 1, 1, v89);
      goto LABEL_46;
    }

    v100 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowArtwork;
    if (*&v74[OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowArtwork])
    {

      if (dispatch thunk of Artwork.isSystemImage.getter())
      {
        sub_100005744(0, &qword_1009730E0, UIFont_ptr);
        v101 = v446;
        v449();
        v102 = v406;
        sub_1003FAE20(v101, v406, type metadata accessor for TitleHeaderView.TextConfiguration);
        sub_1003FAD58(v101, type metadata accessor for TitleHeaderView.Style);
        v104 = v402;
        v103 = v403;
        v105 = v404;
        (*(v403 + 16))(v402, v102 + *(v458 + 6), v404);
        sub_1003FAD58(v102, type metadata accessor for TitleHeaderView.TextConfiguration);
        v106 = v74;
        v107 = [v74 traitCollection];
        v108 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

        (*(v103 + 8))(v104, v105);
        v109 = *&v106[OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowArtworkView];
        if (v109)
        {
          v110 = objc_opt_self();
          v111 = v109;
          v112 = [v110 configurationWithFont:v108];
          ArtworkView.preferredSymbolConfiguration.setter();
        }

        v74 = v445;
      }

      else
      {
        v115 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowArtworkView;
        v116 = *&v74[OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowArtworkView];
        if (v116)
        {
          v117 = *&v74[v100];
          v118 = v446;
          v449();
          v119 = v406;
          sub_1003FAE20(v118, v406, type metadata accessor for TitleHeaderView.TextConfiguration);

          v120 = v116;
          sub_1003FAD58(v118, type metadata accessor for TitleHeaderView.Style);
          sub_1003FA3DC(v117, v119, v74);

          sub_1003FAD58(v119, type metadata accessor for TitleHeaderView.TextConfiguration);
          ArtworkView.frame.setter();

          v121 = *&v74[v115];
          if (v121)
          {
            v122 = v121;
            ArtworkView.preferredSymbolConfiguration.setter();
          }
        }
      }
    }

    v123 = v400;
    (v449)(v98);
    sub_1003FAE20(v123, v409, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_1003FAD58(v123, type metadata accessor for TitleHeaderView.Style);
    v124 = *&v74[OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowArtworkView];
    if (v124)
    {
      v125 = type metadata accessor for ArtworkView();
      v126 = &protocol witness table for UIView;
      v127 = v124;
    }

    else
    {
      v127 = 0;
      v125 = 0;
      v126 = 0;
      *(&v494 + 1) = 0;
      *&v495 = 0;
    }

    *&v494 = v127;
    *(&v495 + 1) = v125;
    v496 = v126;
    v128 = type metadata accessor for DynamicTypeLabel();
    v493 = &protocol witness table for UILabel;
    v492 = v128;
    v129 = v432;
    v491[0] = v432;
    v490 = 0;
    v488 = 0u;
    v489 = 0u;
    v487 = 0;
    v485 = 0u;
    v486 = 0u;
    sub_100031660(&v494, v484, &qword_100975610, &qword_1007B5690);
    v130 = v492;
    v131 = v493;
    v132 = sub_10002A400(v491, v492);
    v482 = v130;
    v483 = v131[1];
    v133 = sub_1000056E0(v481);
    (*(*(v130 - 1) + 16))(v133, v132, v130);
    v134 = v458;
    v135 = v409;
    v136 = *(v409 + *(v458 + 8));
    v479 = &type metadata for Float;
    v480 = &protocol witness table for Float;
    v478 = v136;
    v137 = *(v458 + 9);
    v138 = type metadata accessor for StaticDimension();
    v476 = v138;
    v477 = &protocol witness table for StaticDimension;
    v139 = sub_1000056E0(v475);
    v140 = *(*(v138 - 8) + 16);
    v140(v139, v135 + v137, v138);
    v141 = *(v134 + 10);
    v473 = v138;
    v474 = &protocol witness table for StaticDimension;
    v142 = sub_1000056E0(v472);
    v140(v142, v135 + v141, v138);
    sub_100031660(&v488, &v466, &unk_10097E890, qword_1007B4270);
    v143 = *(&v467 + 1);
    if (*(&v467 + 1))
    {
      v144 = v468;
      v145 = sub_10002A400(&v466, *(&v467 + 1));
      *(&v470 + 1) = v143;
      v471 = *(v144 + 8);
      v146 = sub_1000056E0(&v469);
      (*(*(v143 - 8) + 16))(v146, v145, v143);
      v147 = v124;
      v148 = v129;
      sub_100007000(&v466);
    }

    else
    {
      v149 = v124;
      v150 = v129;
      sub_10002B894(&v466, &unk_10097E890, qword_1007B4270);
      v469 = 0u;
      v470 = 0u;
      v471 = 0;
    }

    sub_100031660(&v485, v463, &unk_10097E890, qword_1007B4270);
    v151 = v464;
    v83 = v444;
    v74 = v445;
    v90 = v457;
    v91 = v448;
    if (v464)
    {
      v152 = v465;
      v153 = sub_10002A400(v463, v464);
      *(&v467 + 1) = v151;
      v468 = *(v152 + 8);
      v154 = sub_1000056E0(&v466);
      (*(*(v151 - 8) + 16))(v154, v153, v151);
      sub_100007000(v463);
    }

    else
    {
      sub_10002B894(v463, &unk_10097E890, qword_1007B4270);
      v466 = 0u;
      v467 = 0u;
      v468 = 0;
    }

    v155 = v458;
    v156 = v409;
    sub_10002C0AC(v409 + *(v458 + 12), v463);
    sub_10002C0AC(v156 + *(v155 + 13), v462);
    v461 = &protocol witness table for Double;
    v460 = &type metadata for Double;
    v459 = 0x4020000000000000;
    v157 = v401;
    TitleHeaderLayout.Child.init(decorationView:contentView:decorationViewMargin:firstLineSpace:bottomSpace:trailingView:shortTrailingView:trailingViewMargin:trailingFirstLineSpace:trailingBottomSpace:)();
    sub_10002B894(&v485, &unk_10097E890, qword_1007B4270);
    sub_10002B894(&v488, &unk_10097E890, qword_1007B4270);
    sub_1003FAD58(v156, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_100007000(v491);
    sub_10002B894(&v494, &qword_100975610, &qword_1007B5690);
    v89 = v456;
    v437 = *(v455 + 56);
    (v437)(v157, 0, 1, v456);
    sub_1000476A0(v157, v443, &unk_100984360, &unk_1007D54C0);
    v158 = v432;
    v159 = [v432 font];
    if (!v159)
    {
      goto LABEL_185;
    }

    v160 = v159;
    v161 = [v158 text];
    v84 = &protocol witness table for UILabel;
    if (v161)
    {
      v162 = v161;
      v163 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v165 = v164;

      *&v494 = v163;
      *(&v494 + 1) = v165;

      v166 = v433;
      static CharacterSet.excessiveLeading.getter();
      sub_10007FED4();
      StringProtocol.rangeOfCharacter(from:options:range:)();
      LOBYTE(v162) = v167;
      (v434)[1](v166, v435);

      if (v162)
      {

        v168 = 0;
        v74 = v445;
        v89 = v456;
      }

      else
      {
        [v160 lineHeight];
        v170 = v169;

        v171 = ceil(v170 * 1.3);
        v74 = v445;
        if ((*&v171 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
          return;
        }

        v89 = v456;
        if (v171 <= -9.22337204e18)
        {
          goto LABEL_174;
        }

        if (v171 >= 9.22337204e18)
        {
          goto LABEL_175;
        }

        v168 = v171;
      }
    }

    else
    {

      v168 = 0;
    }

    v172 = v432;
    sub_100480E28(v168);

LABEL_46:
    v173 = v428;
    (v449)(v113);
    v174 = v430;
    sub_100031660(v173 + v450[6], v430, &qword_1009794E8, &unk_1007C18C0);
    sub_1003FAD58(v173, type metadata accessor for TitleHeaderView.Style);
    if ((*(v429 + 48))(v174, 1, v458) == 1)
    {
      sub_10002B894(v174, &qword_1009794E8, &unk_1007C18C0);
      (v437)(v439, 1, 1, v89);
      goto LABEL_88;
    }

    sub_1003FADB8(v174, v438, type metadata accessor for TitleHeaderView.TextConfiguration);
    v175 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_detailLabel;
    v176 = *&v74[OBJC_IVAR____TtC8AppStore15TitleHeaderView_detailLabel];
    if (v176)
    {
      v177 = [v176 font];
      if (!v177)
      {
        goto LABEL_183;
      }

      v178 = v177;
      v179 = *&v74[v175];
      if (!v179 || (v180 = [v179 text]) == 0)
      {

        v187 = 0;
        v188 = *&v74[v175];
        if (!v188)
        {
          goto LABEL_57;
        }

LABEL_56:
        v189 = v188;
        sub_100480E28(v187);

        goto LABEL_57;
      }

      v181 = v180;
      v182 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v184 = v183;

      *&v494 = v182;
      *(&v494 + 1) = v184;

      v185 = v433;
      static CharacterSet.excessiveLeading.getter();
      sub_10007FED4();
      StringProtocol.rangeOfCharacter(from:options:range:)();
      LOBYTE(v181) = v186;
      (v434)[1](v185, v435);

      if (v181)
      {

        v187 = 0;
        v74 = v445;
        v188 = *&v445[v175];
        if (v188)
        {
          goto LABEL_56;
        }
      }

      else
      {
        [v178 lineHeight];
        v228 = v227;

        v229 = ceil(v228 * 1.3);
        v74 = v445;
        if ((*&v229 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_176;
        }

        if (v229 <= -9.22337204e18)
        {
          goto LABEL_178;
        }

        if (v229 >= 9.22337204e18)
        {
          goto LABEL_180;
        }

        v187 = v229;
        v188 = *&v445[v175];
        if (v188)
        {
          goto LABEL_56;
        }
      }
    }

LABEL_57:
    v190 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_shortDetailLabel;
    v191 = *&v74[OBJC_IVAR____TtC8AppStore15TitleHeaderView_shortDetailLabel];
    if (!v191)
    {
      goto LABEL_66;
    }

    v192 = [v191 font];
    if (!v192)
    {
      goto LABEL_184;
    }

    v193 = v192;
    v194 = *&v74[v190];
    if (!v194 || (v195 = [v194 text]) == 0)
    {

      v202 = 0;
      v203 = *&v74[v190];
      if (!v203)
      {
        goto LABEL_66;
      }

LABEL_65:
      v204 = v203;
      sub_100480E28(v202);

      goto LABEL_66;
    }

    v196 = v195;
    v197 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v199 = v198;

    *&v494 = v197;
    *(&v494 + 1) = v199;

    v200 = v433;
    static CharacterSet.excessiveLeading.getter();
    sub_10007FED4();
    StringProtocol.rangeOfCharacter(from:options:range:)();
    LOBYTE(v196) = v201;
    (v434)[1](v200, v435);

    if (v196)
    {

      v202 = 0;
      v74 = v445;
      v203 = *&v445[v190];
      if (v203)
      {
        goto LABEL_65;
      }
    }

    else
    {
      [v193 lineHeight];
      v231 = v230;

      v232 = ceil(v231 * 1.3);
      v74 = v445;
      if ((*&v232 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_177;
      }

      if (v232 <= -9.22337204e18)
      {
        goto LABEL_179;
      }

      if (v232 >= 9.22337204e18)
      {
        goto LABEL_181;
      }

      v202 = v232;
      v203 = *&v445[v190];
      if (v203)
      {
        goto LABEL_65;
      }
    }

LABEL_66:
    v205 = *&v74[v175];
    if (!v205)
    {
      sub_1003FAD58(v438, type metadata accessor for TitleHeaderView.TextConfiguration);
      v91 = v448;
      goto LABEL_70;
    }

    v206 = v446;
    v449();
    v207 = *(v206 + v450[9]);
    v208 = v205;
    sub_1003FAD58(v206, type metadata accessor for TitleHeaderView.Style);
    v91 = v448;
    if (v207 == 2)
    {
      sub_1003FAD58(v438, type metadata accessor for TitleHeaderView.TextConfiguration);

LABEL_70:
      (v437)(v439, 1, 1, v456);
      v83 = v444;
      goto LABEL_88;
    }

    v496 = 0;
    v494 = 0u;
    v495 = 0u;
    v209 = type metadata accessor for DynamicTypeLabel();
    v493 = &protocol witness table for UILabel;
    v492 = v209;
    v491[0] = v208;
    v490 = 0;
    v488 = 0u;
    v489 = 0u;
    v487 = 0;
    v485 = 0u;
    v486 = 0u;
    sub_100031660(&v494, v484, &qword_100975610, &qword_1007B5690);
    v210 = v492;
    v211 = v493;
    v212 = sub_10002A400(v491, v492);
    v482 = v210;
    v483 = v211[1];
    v213 = sub_1000056E0(v481);
    (*(*(v210 - 1) + 16))(v213, v212, v210);
    v214 = v458;
    v215 = v438;
    v216 = *&v438[*(v458 + 8)];
    v479 = &type metadata for Float;
    v480 = &protocol witness table for Float;
    v478 = v216;
    v217 = *(v458 + 9);
    v218 = type metadata accessor for StaticDimension();
    v476 = v218;
    v477 = &protocol witness table for StaticDimension;
    v219 = sub_1000056E0(v475);
    v220 = *(*(v218 - 8) + 16);
    v220(v219, &v215[v217], v218);
    v221 = *(v214 + 10);
    v473 = v218;
    v474 = &protocol witness table for StaticDimension;
    v222 = sub_1000056E0(v472);
    v220(v222, &v215[v221], v218);
    sub_100031660(&v488, &v466, &unk_10097E890, qword_1007B4270);
    v223 = *(&v467 + 1);
    if (*(&v467 + 1))
    {
      v224 = v468;
      v225 = sub_10002A400(&v466, *(&v467 + 1));
      *(&v470 + 1) = v223;
      v471 = *(v224 + 8);
      v226 = sub_1000056E0(&v469);
      (*(*(v223 - 8) + 16))(v226, v225, v223);
      sub_100007000(&v466);
    }

    else
    {
      sub_10002B894(&v466, &unk_10097E890, qword_1007B4270);
      v469 = 0u;
      v470 = 0u;
      v471 = 0;
    }

    sub_100031660(&v485, v463, &unk_10097E890, qword_1007B4270);
    v233 = v464;
    v74 = v445;
    v90 = v457;
    if (v464)
    {
      v234 = v465;
      v235 = sub_10002A400(v463, v464);
      *(&v467 + 1) = v233;
      v468 = *(v234 + 8);
      v236 = sub_1000056E0(&v466);
      (*(*(v233 - 8) + 16))(v236, v235, v233);
      sub_100007000(v463);
    }

    else
    {
      sub_10002B894(v463, &unk_10097E890, qword_1007B4270);
      v466 = 0u;
      v467 = 0u;
      v468 = 0;
    }

    v83 = v444;
    v237 = v458;
    v238 = v438;
    sub_10002C0AC(&v438[*(v458 + 12)], v463);
    sub_10002C0AC(v238 + *(v237 + 13), v462);
    v461 = &protocol witness table for Double;
    v460 = &type metadata for Double;
    v459 = 0x4020000000000000;
    v239 = v439;
    TitleHeaderLayout.Child.init(decorationView:contentView:decorationViewMargin:firstLineSpace:bottomSpace:trailingView:shortTrailingView:trailingViewMargin:trailingFirstLineSpace:trailingBottomSpace:)();
    sub_10002B894(&v485, &unk_10097E890, qword_1007B4270);
    sub_10002B894(&v488, &unk_10097E890, qword_1007B4270);
    sub_10002B894(&v494, &qword_100975610, &qword_1007B5690);
    sub_1003FAD58(v238, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_100007000(v491);
    v437 = *(v455 + 56);
    (v437)(v239, 0, 1, v456);
LABEL_88:
    v240 = *&v74[OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabel];
    v241 = [v240 font];
    if (!v241)
    {
      goto LABEL_182;
    }

    v89 = v241;
    v242 = [v240 text];
    v438 = v240;
    if (!v242)
    {

      v248 = 0;
      goto LABEL_98;
    }

    v243 = v242;
    v244 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v74 = v245;

    *&v494 = v244;
    *(&v494 + 1) = v74;

    v246 = v433;
    static CharacterSet.excessiveLeading.getter();
    sub_10007FED4();
    StringProtocol.rangeOfCharacter(from:options:range:)();
    v86 = v247;
    (v434)[1](v246, v435);

    if (v86)
    {

      v248 = 0;
      goto LABEL_97;
    }

    [v89 lineHeight];
    v250 = v249;

    v251 = ceil(v250 * 1.3);
    if ((*&v251 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
      goto LABEL_170;
    }

    if (v251 > -9.22337204e18)
    {
      break;
    }

LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    swift_once();
LABEL_22:
    v114 = sub_1000056A8(v458, qword_1009D26A0);
    sub_1003FA6EC(&v84[v86], v114);
    sub_1003FAD58(v84, type metadata accessor for TitleHeaderView.Style);
  }

  if (v251 >= 9.22337204e18)
  {
    goto LABEL_171;
  }

  v248 = v251;
LABEL_97:
  v74 = v445;
LABEL_98:
  sub_100480E28(v248);
  v252 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleArtwork;
  if (*&v74[OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleArtwork])
  {

    if (dispatch thunk of Artwork.isSystemImage.getter())
    {
      sub_100005744(0, &qword_1009730E0, UIFont_ptr);
      v253 = v446;
      v449();
      v254 = v406;
      sub_1003FAE20(v253 + v450[5], v406, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_1003FAD58(v253, type metadata accessor for TitleHeaderView.Style);
      v255 = v402;
      v256 = v403;
      v257 = v404;
      (*(v403 + 16))(v402, v254 + *(v458 + 6), v404);
      sub_1003FAD58(v254, type metadata accessor for TitleHeaderView.TextConfiguration);
      v258 = v74;
      v259 = [v74 traitCollection];
      v260 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

      (*(v256 + 8))(v255, v257);
      v261 = *&v258[OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleArtworkView];
      if (v261)
      {
        v262 = objc_opt_self();
        v263 = v261;
        v264 = [v262 configurationWithFont:v260];
        ArtworkView.preferredSymbolConfiguration.setter();
      }

      v74 = v445;
      v91 = v448;
      v90 = v457;
    }

    else
    {
      v265 = v90;
      v266 = v74;
      v267 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleArtworkView;
      v268 = *(v266 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleArtworkView);
      if (v268)
      {
        v269 = *(v266 + v252);
        v270 = v446;
        v449();
        v271 = v406;
        sub_1003FAE20(v270 + v450[5], v406, type metadata accessor for TitleHeaderView.TextConfiguration);

        v272 = v268;
        v265 = v457;
        sub_1003FAD58(v270, type metadata accessor for TitleHeaderView.Style);
        sub_1003FA3DC(v269, v271, v266);

        sub_1003FAD58(v271, type metadata accessor for TitleHeaderView.TextConfiguration);
        ArtworkView.frame.setter();

        v273 = *(v266 + v267);
        if (v273)
        {
          v274 = v273;
          ArtworkView.preferredSymbolConfiguration.setter();
        }
      }

      v74 = v266;
      v91 = v448;
      v90 = v265;
    }
  }

  v275 = v446;
  v449();
  v276 = *(v275 + v450[9]);
  v277 = sub_1003FAD58(v275, type metadata accessor for TitleHeaderView.Style);
  if (v276 == 2)
  {
    v278 = *&v74[OBJC_IVAR____TtC8AppStore15TitleHeaderView_detailLabel];
    v277 = v278;
  }

  else
  {
    v278 = 0;
  }

  v279 = v446;
  (v449)(v277);
  v280 = *(v279 + v450[9]);
  v281 = sub_1003FAD58(v279, type metadata accessor for TitleHeaderView.Style);
  if (v280 == 2)
  {
    v282 = *&v74[OBJC_IVAR____TtC8AppStore15TitleHeaderView_shortDetailLabel];
    v281 = v282;
  }

  else
  {
    v282 = 0;
  }

  v283 = v410;
  (v449)(v281);
  sub_1003FAE20(v283 + v450[5], v90, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_1003FAD58(v283, type metadata accessor for TitleHeaderView.Style);
  v284 = *&v74[OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleArtworkView];
  if (v284)
  {
    v285 = type metadata accessor for ArtworkView();
    v286 = &protocol witness table for UIView;
    v287 = v284;
  }

  else
  {
    v287 = 0;
    v285 = 0;
    v286 = 0;
    *(&v494 + 1) = 0;
    *&v495 = 0;
  }

  v288 = v438;
  *&v494 = v287;
  *(&v495 + 1) = v285;
  v496 = v286;
  v289 = type metadata accessor for DynamicTypeLabel();
  v493 = &protocol witness table for UILabel;
  v492 = v289;
  v491[0] = v288;
  if (v278)
  {
    v290 = &protocol witness table for UILabel;
    v291 = v278;
    v292 = v289;
  }

  else
  {
    v291 = 0;
    v292 = 0;
    v290 = 0;
    *&v489 = 0;
    *(&v488 + 1) = 0;
  }

  *&v488 = v291;
  *(&v489 + 1) = v292;
  v490 = v290;
  v434 = v282;
  v435 = v278;
  if (v282)
  {
    v293 = &protocol witness table for UILabel;
    v294 = v282;
  }

  else
  {
    v294 = 0;
    v289 = 0;
    v293 = 0;
    *&v486 = 0;
    *(&v485 + 1) = 0;
  }

  *&v485 = v294;
  *(&v486 + 1) = v289;
  v487 = v293;
  sub_100031660(&v494, v484, &qword_100975610, &qword_1007B5690);
  v295 = v492;
  v296 = v493;
  v297 = sub_10002A400(v491, v492);
  v482 = v295;
  v483 = v296[1];
  v298 = sub_1000056E0(v481);
  (*(*(v295 - 1) + 16))(v298, v297, v295);
  v300 = v457;
  v299 = v458;
  v301 = *(v457 + *(v458 + 8));
  v479 = &type metadata for Float;
  v480 = &protocol witness table for Float;
  v478 = v301;
  v302 = *(v458 + 9);
  v303 = type metadata accessor for StaticDimension();
  v476 = v303;
  v477 = &protocol witness table for StaticDimension;
  v304 = sub_1000056E0(v475);
  v305 = *(*(v303 - 8) + 16);
  v305(v304, v300 + v302, v303);
  v306 = *(v299 + 10);
  v473 = v303;
  v474 = &protocol witness table for StaticDimension;
  v307 = sub_1000056E0(v472);
  v305(v307, v300 + v306, v303);
  sub_100031660(&v488, &v466, &unk_10097E890, qword_1007B4270);
  v308 = *(&v467 + 1);
  if (*(&v467 + 1))
  {
    v309 = v468;
    v310 = sub_10002A400(&v466, *(&v467 + 1));
    *(&v470 + 1) = v308;
    v471 = *(v309 + 8);
    v311 = sub_1000056E0(&v469);
    (*(*(v308 - 8) + 16))(v311, v310, v308);
    v312 = v434;
    v313 = v284;
    v314 = v438;
    v315 = v435;
    sub_100007000(&v466);
  }

  else
  {
    v316 = v434;
    v317 = v284;
    v318 = v438;
    v319 = v435;
    sub_10002B894(&v466, &unk_10097E890, qword_1007B4270);
    v469 = 0u;
    v470 = 0u;
    v471 = 0;
  }

  v320 = v447;
  sub_100031660(&v485, v463, &unk_10097E890, qword_1007B4270);
  v321 = v464;
  if (v464)
  {
    v322 = v465;
    v323 = sub_10002A400(v463, v464);
    *(&v467 + 1) = v321;
    v468 = *(v322 + 8);
    v324 = sub_1000056E0(&v466);
    (*(*(v321 - 8) + 16))(v324, v323, v321);
    sub_100007000(v463);
  }

  else
  {
    sub_10002B894(v463, &unk_10097E890, qword_1007B4270);
    v466 = 0u;
    v467 = 0u;
    v468 = 0;
  }

  v326 = v457;
  v325 = v458;
  sub_10002C0AC(v457 + *(v458 + 12), v463);
  sub_10002C0AC(v326 + *(v325 + 13), v462);
  v461 = &protocol witness table for Double;
  v460 = &type metadata for Double;
  v459 = 0x4020000000000000;
  TitleHeaderLayout.Child.init(decorationView:contentView:decorationViewMargin:firstLineSpace:bottomSpace:trailingView:shortTrailingView:trailingViewMargin:trailingFirstLineSpace:trailingBottomSpace:)();
  sub_1003FAD58(v326, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10002B894(&v485, &unk_10097E890, qword_1007B4270);
  sub_10002B894(&v488, &unk_10097E890, qword_1007B4270);
  sub_100007000(v491);
  v327 = sub_10002B894(&v494, &qword_100975610, &qword_1007B5690);
  v328 = v411;
  (v449)(v327);
  v329 = *(v328 + v450[9]);
  sub_1003FAD58(v328, type metadata accessor for TitleHeaderView.Style);
  sub_10002849C(&qword_1009812E8, &qword_1007C9B00);
  v457 = *(v412 + 72);
  v330 = (*(v412 + 80) + 32) & ~*(v412 + 80);
  if (v329)
  {
    v331 = v456;
    if (v329 == 1)
    {
      v332 = v91;
      v333 = v457;
      v438 = swift_allocObject();
      v334 = &v438[v330];
      sub_100031660(v443, &v438[v330], &unk_100984360, &unk_1007D54C0);
      v335 = v455 + 16;
      (*(v455 + 16))(&v334[v333], v440, v331);
      (v437)(&v334[v333], 0, 1, v331);
      sub_100031660(v439, &v334[2 * v333], &unk_100984360, &unk_1007D54C0);
      v336 = (v335 + 32);
      v337 = (v335 + 16);
      v458 = _swiftEmptyArrayStorage;
      v338 = 3;
      v453 = v334;
      v339 = v334;
      do
      {
        v340 = v452;
        sub_100031660(v339, v452, &unk_100984360, &unk_1007D54C0);
        sub_1000476A0(v340, v332, &unk_100984360, &unk_1007D54C0);
        if ((*v336)(v332, 1, v331) == 1)
        {
          sub_10002B894(v332, &unk_100984360, &unk_1007D54C0);
        }

        else
        {
          v341 = *v337;
          (*v337)(v454, v332, v331);
          v342 = v458;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v342 = sub_100033A68(0, v342[2] + 1, 1, v342);
          }

          v344 = v342[2];
          v343 = v342[3];
          if (v344 >= v343 >> 1)
          {
            v342 = sub_100033A68((v343 > 1), v344 + 1, 1, v342);
          }

          v342[2] = v344 + 1;
          v345 = (*(v455 + 80) + 32) & ~*(v455 + 80);
          v458 = v342;
          v331 = v456;
          v341(v342 + v345 + *(v455 + 72) * v344, v454, v456);
          v332 = v448;
        }

        v339 += v457;
        --v338;
      }

      while (v338);
      goto LABEL_149;
    }

    v363 = v457;
    v438 = swift_allocObject();
    v364 = &v438[v330];
    sub_100031660(v443, &v438[v330], &unk_100984360, &unk_1007D54C0);
    v365 = v455;
    (*(v455 + 16))(v364 + v363, v440, v331);
    (v437)(v364 + v363, 0, 1, v331);
    v366 = v407;
    sub_100031660(v364, v407, &unk_100984360, &unk_1007D54C0);
    v367 = v405;
    sub_1000476A0(v366, v405, &unk_100984360, &unk_1007D54C0);
    v368 = *(v365 + 48);
    v369 = (v365 + 32);
    v370 = v368(v367, 1, v331);
    v371 = v331;
    v454 = (v365 + 32);
    if (v370 == 1)
    {
      sub_10002B894(v367, &unk_100984360, &unk_1007D54C0);
      v458 = _swiftEmptyArrayStorage;
    }

    else
    {
      v372 = *v369;
      (*v369)(v408, v367, v371);
      v373 = _swiftEmptyArrayStorage;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v373 = sub_100033A68(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
      }

      v375 = v373[2];
      v374 = v373[3];
      v458 = v373;
      if (v375 >= v374 >> 1)
      {
        v458 = sub_100033A68((v374 > 1), v375 + 1, 1, v458);
      }

      v376 = v458;
      v458[2] = v375 + 1;
      v377 = v376 + ((*(v455 + 80) + 32) & ~*(v455 + 80)) + *(v455 + 72) * v375;
      v371 = v456;
      v372(v377, v408, v456);
      v367 = v405;
    }

    v378 = v407;
    sub_100031660(v364 + v457, v407, &unk_100984360, &unk_1007D54C0);
    sub_1000476A0(v378, v367, &unk_100984360, &unk_1007D54C0);
    if (v368(v367, 1, v371) == 1)
    {
      sub_10002B894(v367, &unk_100984360, &unk_1007D54C0);
      v360 = v441;
      v361 = v442;
      v362 = v436;
    }

    else
    {
      v379 = *v454;
      (*v454)(v408, v367, v371);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v361 = v442;
      v362 = v436;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v458 = sub_100033A68(0, v458[2] + 1, 1, v458);
      }

      v360 = v441;
      v382 = v458[2];
      v381 = v458[3];
      if (v382 >= v381 >> 1)
      {
        v458 = sub_100033A68((v381 > 1), v382 + 1, 1, v458);
      }

      v383 = v458;
      v458[2] = v382 + 1;
      v379(&v383[((*(v455 + 80) + 32) & ~*(v455 + 80)) + *(v455 + 72) * v382], v408, v456);
    }

    swift_setDeallocating();
    swift_arrayDestroy();
  }

  else
  {
    v346 = v457;
    v347 = 2 * v457;
    v438 = swift_allocObject();
    v348 = &v438[v330];
    sub_100031660(v443, &v438[v330], &unk_100984360, &unk_1007D54C0);
    sub_100031660(v439, &v348[v346], &unk_100984360, &unk_1007D54C0);
    v349 = v456;
    v350 = v455 + 16;
    (*(v455 + 16))(&v348[v347], v440, v456);
    (v437)(&v348[v347], 0, 1, v349);
    v351 = (v350 + 32);
    v352 = (v350 + 16);
    v458 = _swiftEmptyArrayStorage;
    v353 = 3;
    v454 = v348;
    do
    {
      v354 = v451;
      sub_100031660(v348, v451, &unk_100984360, &unk_1007D54C0);
      sub_1000476A0(v354, v320, &unk_100984360, &unk_1007D54C0);
      if ((*v351)(v320, 1, v349) == 1)
      {
        sub_10002B894(v320, &unk_100984360, &unk_1007D54C0);
      }

      else
      {
        v355 = *v352;
        (*v352)(v453, v320, v349);
        v356 = v458;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v356 = sub_100033A68(0, v356[2] + 1, 1, v356);
        }

        v358 = v356[2];
        v357 = v356[3];
        if (v358 >= v357 >> 1)
        {
          v356 = sub_100033A68((v357 > 1), v358 + 1, 1, v356);
        }

        v356[2] = v358 + 1;
        v349 = v456;
        v359 = (*(v455 + 80) + 32) & ~*(v455 + 80);
        v458 = v356;
        v355(v356 + v359 + *(v455 + 72) * v358, v453, v456);
        v320 = v447;
      }

      v348 += v457;
      --v353;
    }

    while (v353);
LABEL_149:
    swift_setDeallocating();
    swift_arrayDestroy();
    v360 = v441;
    v361 = v442;
    v362 = v436;
  }

  v384 = swift_deallocClassInstance();
  v385 = v445;
  v386 = v446;
  (v449)(v384);
  v387 = *(v362 + 16);
  v387(v360, v386 + v450[10], v361);
  sub_1003FAD58(v386, type metadata accessor for TitleHeaderView.Style);
  v388 = *&v385[OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessoryView];
  if (v388)
  {
    v389 = sub_100005744(0, &qword_100972EB0, UIView_ptr);
    v390 = &protocol witness table for UIView;
  }

  else
  {
    v389 = 0;
    v390 = 0;
    *(&v494 + 1) = 0;
    *&v495 = 0;
  }

  *&v494 = v388;
  *(&v495 + 1) = v389;
  v496 = v390;
  v391 = v446;
  v392 = v449;
  v449();
  v393 = v450;
  v394 = *(v391 + v450[14]);
  v395 = v388;
  sub_1003FAD58(v391, type metadata accessor for TitleHeaderView.Style);
  v492 = &type metadata for CGFloat;
  v493 = &protocol witness table for CGFloat;
  v491[0] = v394;
  v396 = (v387)(v414, v441, v442);
  v397 = v413;
  (v392)(v396);
  (*(v415 + 16))(v417, v397 + v393[11], v416);
  sub_1003FAD58(v397, type metadata accessor for TitleHeaderView.Style);
  (*(v421 + 104))(v420, enum case for TitleHeaderLayout.AccessoryHorizontalAlignment.rightJustified(_:), v423);
  v398 = v418;
  TitleHeaderLayout.init(accessoryView:accessoryMargin:accessoryVerticalAlignment:accessoryHorizontalAlignment:children:childrenHorizontalAlignment:allowsAccessibilityLayouts:)();
  v399 = v424;
  TitleHeaderLayout.placeChildren(relativeTo:in:)();

  (*(v425 + 8))(v399, v426);
  (*(v419 + 8))(v398, v422);
  (*(v436 + 8))(v441, v442);
  (*(v455 + 8))(v440, v456);
  sub_10002B894(v439, &unk_100984360, &unk_1007D54C0);
  sub_10002B894(v443, &unk_100984360, &unk_1007D54C0);
}

id sub_1003F62B8()
{
  v1 = sub_10002849C(&qword_100984340, qword_1007C0830);
  __chkstk_darwin(v1 - 8);
  v3 = &v31 - v2;
  v4 = type metadata accessor for TitleHeaderView(0);
  v32.receiver = v0;
  v32.super_class = v4;
  objc_msgSendSuper2(&v32, "prepareForReuse");
  v5 = &v0[OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessoryAction];
  v6 = *&v0[OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessoryAction];
  v7 = *&v0[OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessoryAction + 8];
  *v5 = 0;
  *(v5 + 1) = 0;
  sub_10001F63C(v6, v7);
  v8 = type metadata accessor for Accessory(0);
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  v9 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessory;
  swift_beginAccess();
  sub_1002BAFE4(v3, &v0[v9]);
  swift_endAccess();
  v10 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessoryView;
  if (!*&v0[OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessoryView])
  {
    goto LABEL_6;
  }

  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    [v11 removeTarget:v0 action:"didTapWithAccessoryView:" forControlEvents:64];
  }

  v12 = *&v0[v10];
  if (v12)
  {
    [v12 removeFromSuperview];
    v13 = *&v0[v10];
  }

  else
  {
LABEL_6:
    v13 = 0;
  }

  *&v0[v10] = 0;

  v14 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleArtwork;
  v15 = *&v0[OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleArtwork];
  if (v15)
  {
    v16 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleArtworkView;
    v17 = *&v0[OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleArtworkView];

    if (v17)
    {
      [v17 removeFromSuperview];
      v18 = *&v0[v16];
    }

    else
    {
      v18 = 0;
    }

    *&v0[v16] = 0;
  }

  *&v0[v14] = 0;

  sub_1003F1BFC(v15);

  v19 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowArtwork;
  v20 = *&v0[OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowArtwork];
  if (v20)
  {
    v21 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowArtworkView;
    v22 = *&v0[OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowArtworkView];

    if (v22)
    {
      [v22 removeFromSuperview];
      v23 = *&v0[v21];
    }

    else
    {
      v23 = 0;
    }

    *&v0[v21] = 0;
  }

  *&v0[v19] = 0;

  sub_1003F195C(v20);

  v24 = &v0[OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowText];
  v26 = *&v0[OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowText];
  v25 = *&v0[OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowText + 8];
  if (v25)
  {
    v27 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowLabel;
    v28 = *&v0[OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowLabel];

    if (v28)
    {
      [v28 removeFromSuperview];
      v29 = *&v0[v27];
    }

    else
    {
      v29 = 0;
    }

    *&v0[v27] = 0;
  }

  *v24 = 0;
  *(v24 + 1) = 0;

  sub_1003F13BC(v26, v25);

  return [*&v0[OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabel] setText:0];
}

void sub_1003F6698()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowLabel);
  if (v1)
  {
    v2 = [v1 text];
    if (v2)
    {
      v3 = v2;
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v30 = v4;
    v31 = v6;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v7 = [*(v0 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabel) text];
  if (v7)
  {
    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v32 = v9;
  v33 = v11;
  v12 = *(v0 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_detailLabel);
  if (v12)
  {
    v13 = [v12 text];
    if (v13)
    {
      v14 = v13;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    v34 = v15;
    v35 = v17;
  }

  else
  {
    v34 = 0;
    v35 = 0;
  }

  v18 = 0;
  v19 = _swiftEmptyArrayStorage;
LABEL_17:
  if (v18 <= 3)
  {
    v20 = 3;
  }

  else
  {
    v20 = v18;
  }

  v21 = v20 + 1;
  v22 = 16 * v18 + 40;
  while (1)
  {
    if (v18 == 3)
    {
      sub_10002849C(&unk_100984350, &unk_1007B47A0);
      swift_arrayDestroy();
      sub_10002849C(&unk_100977380, &qword_1007BB880);
      sub_10015872C();
      BidirectionalCollection<>.joined(separator:)();

      return;
    }

    if (v21 == ++v18)
    {
      break;
    }

    v23 = v22 + 16;
    v24 = *&v29[v22];
    v22 += 16;
    if (v24)
    {
      v25 = *&v29[v23 - 24];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_100033E38(0, *(v19 + 2) + 1, 1, v19);
      }

      v27 = *(v19 + 2);
      v26 = *(v19 + 3);
      if (v27 >= v26 >> 1)
      {
        v19 = sub_100033E38((v26 > 1), v27 + 1, 1, v19);
      }

      *(v19 + 2) = v27 + 1;
      v28 = &v19[16 * v27];
      *(v28 + 4) = v25;
      *(v28 + 5) = v24;
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_1003F6B04()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for TitleHeaderView(0);
  v1 = objc_msgSendSuper2(&v7, "_accessibilitySupplementaryFooterViews");
  if (v1)
  {
    v2 = v1;
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = *&v0[OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessoryView];
  if (v4)
  {
    v5 = v4;

    sub_10002849C(&qword_1009701B0, qword_1007B1800);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1007B10D0;
    *(v3 + 56) = sub_100005744(0, &qword_100972EB0, UIView_ptr);
    *(v3 + 32) = v5;
  }

  return v3;
}

id sub_1003F6C60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TitleHeaderView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1003F6E0C(uint64_t a1)
{
  type metadata accessor for TitleHeaderView.Style(319);
  if (v1 <= 0x3F)
  {
    sub_1003F70E4(319, &qword_100984180, type metadata accessor for Accessory);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1003F6FB8(uint64_t a1)
{
  type metadata accessor for TitleHeaderView.TextConfiguration(319);
  if (v1 <= 0x3F)
  {
    sub_1003F70E4(319, &qword_1009841F8, type metadata accessor for TitleHeaderView.TextConfiguration);
    if (v2 <= 0x3F)
    {
      type metadata accessor for TitleHeaderLayout.AccessoryVerticalAlignment();
      if (v3 <= 0x3F)
      {
        type metadata accessor for TitleHeaderLayout.ChildrenHorizontalAlignment();
        if (v4 <= 0x3F)
        {
          sub_1003F7138(319);
          if (v5 <= 0x3F)
          {
            sub_100005744(319, &qword_100970180, UIColor_ptr);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1003F70E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1003F7138(uint64_t a1)
{
  if (!qword_100984200[0])
  {
    sub_100005744(255, &qword_100970180, UIColor_ptr);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, qword_100984200);
    }
  }
}

void sub_1003F71D8(uint64_t a1)
{
  sub_100005744(319, &qword_100970180, UIColor_ptr);
  if (v1 <= 0x3F)
  {
    sub_1000C6500();
    if (v2 <= 0x3F)
    {
      type metadata accessor for FontUseCase();
      if (v3 <= 0x3F)
      {
        type metadata accessor for StaticDimension();
        if (v4 <= 0x3F)
        {
          sub_1003F72D4();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1003F72D4()
{
  result = qword_1009842D0;
  if (!qword_1009842D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1009842D0);
  }

  return result;
}

unint64_t sub_1003F733C()
{
  result = qword_100984320;
  if (!qword_100984320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100984320);
  }

  return result;
}

id sub_1003F7390(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, void *a22)
{
  v330 = a6;
  v331 = a8;
  v290 = a7;
  v327 = a1;
  v328 = a5;
  v326 = a4;
  v299 = a3;
  v336 = a2;
  v323 = a9;
  v324 = a10;
  v342 = a20;
  v24 = type metadata accessor for AspectRatio();
  v297 = *(v24 - 8);
  v298 = v24;
  __chkstk_darwin(v24);
  v296 = v289 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v295 = type metadata accessor for FontSource();
  v293 = *(v295 - 8);
  __chkstk_darwin(v295);
  v292 = v289 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v337 = type metadata accessor for StaticDimension();
  v352 = *(v337 - 8);
  __chkstk_darwin(v337);
  v294 = v289 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v320 = type metadata accessor for TitleHeaderLayout.AccessoryHorizontalAlignment();
  v318 = *(v320 - 8);
  __chkstk_darwin(v320);
  v319 = v289 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for TitleHeaderLayout.ChildrenHorizontalAlignment();
  v315 = *(v29 - 8);
  v316 = v29;
  __chkstk_darwin(v29);
  v317 = v289 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for TitleHeaderLayout.AccessoryVerticalAlignment();
  v312 = *(v31 - 8);
  v313 = v31;
  __chkstk_darwin(v31);
  v314 = v289 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v322 = type metadata accessor for TitleHeaderLayout();
  v325 = *(v322 - 8);
  __chkstk_darwin(v322);
  v321 = v289 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for TitleHeaderLayout.Child();
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v304 = v289 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v349 = v289 - v38;
  __chkstk_darwin(v39);
  v348 = v289 - v40;
  __chkstk_darwin(v41);
  v340 = v289 - v42;
  v43 = sub_10002849C(&qword_1009794E8, &unk_1007C18C0);
  __chkstk_darwin(v43 - 8);
  v302 = v289 - v44;
  v45 = type metadata accessor for LabelPlaceholderCompatibility();
  v333 = *(v45 - 8);
  v334 = v45;
  __chkstk_darwin(v45);
  v332 = v289 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for CharacterSet();
  v48 = *(v47 - 8);
  __chkstk_darwin(v47);
  v50 = v289 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v301 = *(v51 - 1);
  __chkstk_darwin(v51);
  v341 = v289 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v305 = v289 - v54;
  __chkstk_darwin(v55);
  v57 = (v289 - v56);
  v58 = sub_10002849C(&unk_100984360, &unk_1007D54C0);
  v59 = *(v58 - 8);
  v310 = v58;
  v311 = v59;
  __chkstk_darwin(v58);
  v291 = v289 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v61);
  v345 = v289 - v62;
  __chkstk_darwin(v63);
  v344 = v289 - v64;
  __chkstk_darwin(v65);
  v303 = v289 - v66;
  __chkstk_darwin(v67);
  v347 = v289 - v68;
  __chkstk_darwin(v69);
  v346 = v289 - v70;
  __chkstk_darwin(v71);
  v339 = (v289 - v72);
  __chkstk_darwin(v73);
  v300 = v289 - v74;
  *&v76 = __chkstk_darwin(v75).n128_u64[0];
  v78 = (v289 - v77);
  v329 = a22;
  v79 = [a22 traitCollection];
  v350 = v34;
  v351 = v35;
  v338 = v78;
  v343 = v51;
  v335 = v79;
  v307 = v47;
  v308 = v50;
  v309 = v48;
  if (!v336)
  {
    v93 = *(v35 + 56);
    v93(v78, 1, 1, v34);
    goto LABEL_23;
  }

  v80 = v342;
  sub_1003FAE20(v342, v57, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  v81 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
  *&v388 = v327;
  *(&v388 + 1) = v336;

  static CharacterSet.excessiveLeading.getter();
  sub_10007FED4();
  StringProtocol.rangeOfCharacter(from:options:range:)();
  v83 = v82;
  (*(v48 + 8))(v50, v47);

  v84 = 0;
  if ((v83 & 1) == 0)
  {
    [v81 lineHeight];
    v86 = ceil(v85 * 1.3);
    if ((*&v86 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v86 > -9.22337204e18)
    {
      if (v86 >= 9.22337204e18)
      {
LABEL_116:
        __break(1u);
        goto LABEL_117;
      }

      v84 = v86;
      goto LABEL_7;
    }

    __break(1u);
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

LABEL_7:
  v306 = v57;
  if (!v299)
  {
    goto LABEL_15;
  }

  v289[1] = v84;

  dispatch thunk of Artwork.systemImageName.getter();
  v87 = v337;
  if (v88 && (v89 = [objc_opt_self() configurationWithFont:v81], v90 = String._bridgeToObjectiveC()(), , v91 = objc_msgSend(objc_opt_self(), "_systemImageNamed:withConfiguration:", v90, v89), v90, v89, v51 = v343, v91))
  {
    [v91 size];
    type metadata accessor for LayoutViewPlaceholder();
    swift_allocObject();
    v92 = LayoutViewPlaceholder.init(representing:)();
  }

  else
  {
    v94 = v51[6];
    v95 = type metadata accessor for FontUseCase();
    v96 = v292;
    (*(*(v95 - 8) + 16))(v292, v80 + v94, v95);
    v97 = v293;
    v98 = v295;
    (*(v293 + 104))(v96, enum case for FontSource.useCase(_:), v295);
    *(&v389 + 1) = v98;
    v390 = &protocol witness table for FontSource;
    v99 = sub_1000056E0(&v388);
    (*(v97 + 16))(v99, v96, v98);

    v100 = v294;
    StaticDimension.init(_:scaledLike:)();
    (*(v97 + 8))(v96, v98);
    StaticDimension.rawValue(in:)();
    Artwork.size.getter();
    v101 = v296;
    AspectRatio.init(_:_:)();
    AspectRatio.maxSize(fitting:)();

    (*(v297 + 8))(v101, v298);
    (*(v352 + 8))(v100, v87);
    type metadata accessor for LayoutViewPlaceholder();
    swift_allocObject();
    v92 = LayoutViewPlaceholder.init(representing:)();
  }

  if (v92)
  {
    *(&v389 + 1) = type metadata accessor for LayoutViewPlaceholder();
    v390 = &protocol witness table for LayoutViewPlaceholder;
    v299 = v92;
    *&v388 = v92;
  }

  else
  {
LABEL_15:
    v299 = 0;
    v390 = 0;
    v388 = 0u;
    v389 = 0u;
  }

  v387 = 0;
  v385 = 0u;
  v386 = 0u;
  v384 = 0;
  v382 = 0u;
  v383 = 0u;
  v102 = type metadata accessor for Feature();
  v380 = v102;
  v381 = sub_1003FAFE0(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v103 = sub_1000056E0(v379);
  (*(*(v102 - 8) + 104))(v103, enum case for Feature.measurement_with_labelplaceholder(_:), v102);
  v104 = v81;

  v57 = v104;
  isFeatureEnabled(_:)();
  sub_100007000(v379);
  v105 = v332;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  (*(v333 + 8))(v105, v334);
  sub_100031660(&v388, v378, &qword_100975610, &qword_1007B5690);
  v106 = v380;
  v107 = v381;
  v108 = sub_10002A400(v379, v380);
  v376 = v106;
  v377 = *(v107 + 8);
  v109 = sub_1000056E0(v375);
  (*(*(v106 - 8) + 16))(v109, v108, v106);
  v110 = v343;
  v111 = v306;
  v112 = *(v306 + v343[8]);
  v373 = &type metadata for Float;
  v374 = &protocol witness table for Float;
  v372 = v112;
  v113 = v343[9];
  v114 = v337;
  v370 = v337;
  v371 = &protocol witness table for StaticDimension;
  v115 = sub_1000056E0(v369);
  v116 = *(v352 + 16);
  v116(v115, v111 + v113, v114);
  v117 = v110[10];
  v367 = v114;
  v368 = &protocol witness table for StaticDimension;
  v118 = sub_1000056E0(v366);
  v116(v118, v111 + v117, v114);
  sub_100031660(&v385, &v360, &unk_10097E890, qword_1007B4270);
  v119 = *(&v361 + 1);
  if (*(&v361 + 1))
  {
    v120 = v362;
    v121 = sub_10002A400(&v360, *(&v361 + 1));
    *(&v364 + 1) = v119;
    v365 = *(v120 + 8);
    v122 = sub_1000056E0(&v363);
    (*(*(v119 - 8) + 16))(v122, v121, v119);
    sub_100007000(&v360);
  }

  else
  {
    sub_10002B894(&v360, &unk_10097E890, qword_1007B4270);
    v363 = 0u;
    v364 = 0u;
    v365 = 0;
  }

  v123 = v300;
  sub_100031660(&v382, v357, &unk_10097E890, qword_1007B4270);
  v124 = v358;
  v47 = v307;
  if (v358)
  {
    v125 = v359;
    v126 = sub_10002A400(v357, v358);
    *(&v361 + 1) = v124;
    v362 = *(v125 + 8);
    v127 = sub_1000056E0(&v360);
    (*(*(v124 - 8) + 16))(v127, v126, v124);
    sub_100007000(v357);
  }

  else
  {
    sub_10002B894(v357, &unk_10097E890, qword_1007B4270);
    v360 = 0u;
    v361 = 0u;
    v362 = 0;
  }

  v128 = v343;
  v129 = v306;
  sub_10002C0AC(v306 + v343[12], v357);
  sub_10002C0AC(v129 + v128[13], v356);
  v355 = &protocol witness table for Double;
  v354 = &type metadata for Double;
  v353 = 0x4020000000000000;
  TitleHeaderLayout.Child.init(decorationView:contentView:decorationViewMargin:firstLineSpace:bottomSpace:trailingView:shortTrailingView:trailingViewMargin:trailingFirstLineSpace:trailingBottomSpace:)();

  sub_10002B894(&v382, &unk_10097E890, qword_1007B4270);
  v51 = v128;
  sub_10002B894(&v385, &unk_10097E890, qword_1007B4270);
  sub_1003FAD58(v129, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_100007000(v379);

  sub_10002B894(&v388, &qword_100975610, &qword_1007B5690);
  v34 = v350;
  v93 = *(v351 + 56);
  v93(v123, 0, 1, v350);
  sub_1000476A0(v123, v338, &unk_100984360, &unk_1007D54C0);
LABEL_23:
  v130 = v337;
  v131 = v328;
  if (!v331)
  {
LABEL_26:
    v93(v339, 1, 1, v34);
    v390 = 0;
    v388 = 0u;
    v389 = 0u;
    v385 = 0u;
    v386 = 0u;
    v387 = 0;
    goto LABEL_41;
  }

  v132 = v47;
  v57 = type metadata accessor for TitleHeaderView.Style(0);
  v133 = v302;
  sub_100031660(v342 + v57[6], v302, &qword_1009794E8, &unk_1007C18C0);
  if ((*(v301 + 48))(v133, 1, v51) == 1)
  {
    sub_10002B894(v133, &qword_1009794E8, &unk_1007C18C0);
    v47 = v132;
    goto LABEL_26;
  }

  sub_1003FADB8(v133, v305, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  v336 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
  *&v388 = v290;
  *(&v388 + 1) = v331;

  v134 = v308;
  static CharacterSet.excessiveLeading.getter();
  sub_10007FED4();
  StringProtocol.rangeOfCharacter(from:options:range:)();
  v136 = v135;
  (*(v309 + 8))(v134, v132);

  if (v136)
  {
LABEL_31:
    if (*(v342 + v57[9]) == 2)
    {
      v306 = a18;
      v327 = a17;
      v140 = type metadata accessor for Feature();
      *(&v389 + 1) = v140;
      v302 = sub_1003FAFE0(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v390 = v302;
      v141 = sub_1000056E0(&v388);
      LODWORD(v301) = enum case for Feature.measurement_with_labelplaceholder(_:);
      v142 = *(*(v140 - 8) + 104);
      v142(v141);
      v143 = v336;

      v144 = v143;
      isFeatureEnabled(_:)();
      sub_100007000(&v388);
      v145 = v332;
      LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
      LabelPlaceholderCompatibility.layoutTextView.getter();
      v336 = v93;
      v146 = v334;
      v147 = *(v333 + 8);
      v147(v145, v334);
      *(&v386 + 1) = v140;
      v387 = v302;
      v148 = sub_1000056E0(&v385);
      (v142)(v148, v301, v140);
      v130 = v337;

      v149 = v144;
      v57 = isFeatureEnabled(_:)();
      sub_100007000(&v385);
      LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
      LabelPlaceholderCompatibility.layoutTextView.getter();

      v147(v145, v146);
      v131 = v328;
      sub_1003FAD58(v305, type metadata accessor for TitleHeaderView.TextConfiguration);

      (v336)(v339, 1, 1, v350);
      v51 = v343;
    }

    else
    {
      v390 = 0;
      v388 = 0u;
      v389 = 0u;
      v387 = 0;
      v385 = 0u;
      v386 = 0u;
      v384 = 0;
      v382 = 0u;
      v383 = 0u;
      v150 = type metadata accessor for Feature();
      v380 = v150;
      v381 = sub_1003FAFE0(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v151 = sub_1000056E0(v379);
      (*(*(v150 - 8) + 104))(v151, enum case for Feature.measurement_with_labelplaceholder(_:), v150);

      v152 = v336;
      isFeatureEnabled(_:)();
      sub_100007000(v379);
      v153 = v332;
      v336 = v152;
      LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
      LabelPlaceholderCompatibility.layoutTextView.getter();
      (*(v333 + 8))(v153, v334);
      sub_100031660(&v388, v378, &qword_100975610, &qword_1007B5690);
      v154 = v380;
      v155 = v381;
      v156 = sub_10002A400(v379, v380);
      v376 = v154;
      v377 = *(v155 + 8);
      v157 = sub_1000056E0(v375);
      (*(*(v154 - 8) + 16))(v157, v156, v154);
      v158 = v343;
      v159 = v305;
      v160 = *(v305 + v343[8]);
      v373 = &type metadata for Float;
      v374 = &protocol witness table for Float;
      v372 = v160;
      v161 = v343[9];
      v370 = v130;
      v371 = &protocol witness table for StaticDimension;
      v162 = sub_1000056E0(v369);
      v163 = v130;
      v164 = *(v352 + 16);
      v164(v162, v159 + v161, v163);
      v165 = v158[10];
      v367 = v163;
      v368 = &protocol witness table for StaticDimension;
      v166 = sub_1000056E0(v366);
      v164(v166, v159 + v165, v163);
      sub_100031660(&v385, &v360, &unk_10097E890, qword_1007B4270);
      v167 = *(&v361 + 1);
      if (*(&v361 + 1))
      {
        v168 = v362;
        v169 = sub_10002A400(&v360, *(&v361 + 1));
        *(&v364 + 1) = v167;
        v365 = *(v168 + 8);
        v170 = sub_1000056E0(&v363);
        (*(*(v167 - 8) + 16))(v170, v169, v167);
        sub_100007000(&v360);
      }

      else
      {
        sub_10002B894(&v360, &unk_10097E890, qword_1007B4270);
        v363 = 0u;
        v364 = 0u;
        v365 = 0;
      }

      v171 = v351;
      sub_100031660(&v382, v357, &unk_10097E890, qword_1007B4270);
      v172 = v358;
      if (v358)
      {
        v173 = v359;
        v174 = sub_10002A400(v357, v358);
        *(&v361 + 1) = v172;
        v362 = *(v173 + 8);
        v175 = sub_1000056E0(&v360);
        (*(*(v172 - 8) + 16))(v175, v174, v172);
        sub_100007000(v357);
      }

      else
      {
        sub_10002B894(v357, &unk_10097E890, qword_1007B4270);
        v360 = 0u;
        v361 = 0u;
        v362 = 0;
      }

      v51 = v343;
      v176 = v305;
      sub_10002C0AC(v305 + v343[12], v357);
      sub_10002C0AC(v176 + v51[13], v356);
      v355 = &protocol witness table for Double;
      v354 = &type metadata for Double;
      v353 = 0x4020000000000000;
      v177 = v339;
      TitleHeaderLayout.Child.init(decorationView:contentView:decorationViewMargin:firstLineSpace:bottomSpace:trailingView:shortTrailingView:trailingViewMargin:trailingFirstLineSpace:trailingBottomSpace:)();
      sub_10002B894(&v382, &unk_10097E890, qword_1007B4270);
      sub_10002B894(&v385, &unk_10097E890, qword_1007B4270);
      sub_10002B894(&v388, &qword_100975610, &qword_1007B5690);
      sub_1003FAD58(v176, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_100007000(v379);

      v178 = *(v171 + 56);
      v57 = (v171 + 56);
      v178(v177, 0, 1, v350);
      v390 = 0;
      v388 = 0u;
      v389 = 0u;
      v385 = 0u;
      v386 = 0u;
      v387 = 0;
      v130 = v337;
      v131 = v328;
    }

    v47 = v307;
LABEL_41:
    v336 = type metadata accessor for TitleHeaderView.Style(0);
    v328 = (v342 + v336[5]);
    sub_1003FAE20(v328, v341, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_100005744(0, &qword_1009730E0, UIFont_ptr);
    v331 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
    if (!v131)
    {
      goto LABEL_49;
    }

    v179 = v130;
    v48 = v326;
    *&v382 = v326;
    *(&v382 + 1) = v131;

    v50 = v308;
    static CharacterSet.excessiveLeading.getter();
    sub_10007FED4();
    StringProtocol.rangeOfCharacter(from:options:range:)();
    v181 = v180;
    (*(v309 + 8))(v50, v47);

    if (v181)
    {
LABEL_48:
      v130 = v179;
      if (!v330)
      {
        goto LABEL_56;
      }

LABEL_49:
      v327 = a19;

      dispatch thunk of Artwork.systemImageName.getter();
      if (v184 && (v185 = [objc_opt_self() configurationWithFont:v331], v186 = String._bridgeToObjectiveC()(), , v187 = objc_msgSend(objc_opt_self(), "_systemImageNamed:withConfiguration:", v186, v185), v186, v51 = v343, v185, v187))
      {
        [v187 size];
        type metadata accessor for LayoutViewPlaceholder();
        swift_allocObject();
        v188 = LayoutViewPlaceholder.init(representing:)();
      }

      else
      {
        v189 = v130;
        v190 = v328;
        v191 = v51[6];
        v192 = type metadata accessor for FontUseCase();
        v193 = v190 + v191;
        v130 = v189;
        v194 = v292;
        (*(*(v192 - 8) + 16))(v292, v193, v192);
        v195 = v293;
        v196 = v295;
        (*(v293 + 104))(v194, enum case for FontSource.useCase(_:), v295);
        *(&v383 + 1) = v196;
        v384 = &protocol witness table for FontSource;
        v197 = sub_1000056E0(&v382);
        (*(v195 + 16))(v197, v194, v196);

        v198 = v294;
        StaticDimension.init(_:scaledLike:)();
        (*(v195 + 8))(v194, v196);
        StaticDimension.rawValue(in:)();
        Artwork.size.getter();
        v199 = v296;
        AspectRatio.init(_:_:)();
        AspectRatio.maxSize(fitting:)();

        (*(v297 + 8))(v199, v298);
        (*(v352 + 8))(v198, v130);
        type metadata accessor for LayoutViewPlaceholder();
        swift_allocObject();
        v188 = LayoutViewPlaceholder.init(representing:)();
      }

      if (v188)
      {
        v200 = type metadata accessor for LayoutViewPlaceholder();
        v384 = &protocol witness table for LayoutViewPlaceholder;
        *(&v383 + 1) = v200;
        v330 = v188;
        *&v382 = v188;
      }

      else
      {
LABEL_56:
        v330 = 0;
        v384 = 0;
        v382 = 0u;
        v383 = 0u;
      }

      v201 = type metadata accessor for Feature();
      v380 = v201;
      v381 = sub_1003FAFE0(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v202 = sub_1000056E0(v379);
      (*(*(v201 - 8) + 104))(v202, enum case for Feature.measurement_with_labelplaceholder(_:), v201);

      v203 = v331;
      isFeatureEnabled(_:)();
      sub_100007000(v379);
      v204 = v332;
      v331 = v203;
      LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
      LabelPlaceholderCompatibility.layoutTextView.getter();
      (*(v333 + 8))(v204, v334);
      sub_100031660(&v382, v378, &qword_100975610, &qword_1007B5690);
      v205 = v380;
      v206 = v381;
      v207 = sub_10002A400(v379, v380);
      v376 = v205;
      v377 = *(v206 + 8);
      v208 = sub_1000056E0(v375);
      (*(*(v205 - 8) + 16))(v208, v207, v205);
      v209 = v343;
      v210 = v341;
      v211 = *(v341 + v343[8]);
      v373 = &type metadata for Float;
      v374 = &protocol witness table for Float;
      v372 = v211;
      v212 = v343[9];
      v370 = v130;
      v371 = &protocol witness table for StaticDimension;
      v213 = sub_1000056E0(v369);
      v214 = *(v352 + 16);
      v214(v213, v210 + v212, v130);
      v215 = v209[10];
      v367 = v130;
      v368 = &protocol witness table for StaticDimension;
      v216 = sub_1000056E0(v366);
      v214(v216, v210 + v215, v130);
      sub_100031660(&v388, &v360, &unk_10097E890, qword_1007B4270);
      v217 = *(&v361 + 1);
      if (*(&v361 + 1))
      {
        v218 = v362;
        v219 = sub_10002A400(&v360, *(&v361 + 1));
        *(&v364 + 1) = v217;
        v365 = *(v218 + 8);
        v220 = sub_1000056E0(&v363);
        (*(*(v217 - 8) + 16))(v220, v219, v217);
        sub_100007000(&v360);
      }

      else
      {
        sub_10002B894(&v360, &unk_10097E890, qword_1007B4270);
        v363 = 0u;
        v364 = 0u;
        v365 = 0;
      }

      v221 = v344;
      v222 = v342;
      sub_100031660(&v385, v357, &unk_10097E890, qword_1007B4270);
      v223 = v358;
      if (v358)
      {
        v224 = v359;
        v225 = sub_10002A400(v357, v358);
        *(&v361 + 1) = v223;
        v362 = *(v224 + 8);
        v226 = sub_1000056E0(&v360);
        (*(*(v223 - 8) + 16))(v226, v225, v223);
        sub_100007000(v357);
      }

      else
      {
        sub_10002B894(v357, &unk_10097E890, qword_1007B4270);
        v360 = 0u;
        v361 = 0u;
        v362 = 0;
      }

      v227 = v345;
      v228 = v343;
      v229 = v341;
      sub_10002C0AC(v341 + v343[12], v357);
      sub_10002C0AC(v229 + v228[13], v356);
      v355 = &protocol witness table for Double;
      v354 = &type metadata for Double;
      v353 = 0x4020000000000000;
      TitleHeaderLayout.Child.init(decorationView:contentView:decorationViewMargin:firstLineSpace:bottomSpace:trailingView:shortTrailingView:trailingViewMargin:trailingFirstLineSpace:trailingBottomSpace:)();
      sub_100007000(v379);
      sub_10002B894(&v382, &qword_100975610, &qword_1007B5690);
      v230 = *(v222 + v336[9]);
      sub_10002849C(&qword_1009812E8, &qword_1007C9B00);
      v352 = *(v311 + 72);
      v231 = (*(v311 + 80) + 32) & ~*(v311 + 80);
      if (v230)
      {
        if (v230 != 1)
        {
          v259 = v352;
          v337 = swift_allocObject();
          v260 = v337 + v231;
          sub_100031660(v338, v337 + v231, &unk_100984360, &unk_1007D54C0);
          v261 = v350;
          v262 = v351;
          (*(v351 + 16))(v260 + v259, v340, v350);
          (*(v262 + 56))(v260 + v259, 0, 1, v261);
          v263 = v303;
          sub_100031660(v260, v303, &unk_100984360, &unk_1007D54C0);
          v264 = v291;
          sub_1000476A0(v263, v291, &unk_100984360, &unk_1007D54C0);
          v265 = *(v262 + 48);
          v266 = (v262 + 32);
          v267 = v265(v264, 1, v261);
          v349 = (v262 + 32);
          if (v267 == 1)
          {
            sub_10002B894(v264, &unk_100984360, &unk_1007D54C0);
            v268 = _swiftEmptyArrayStorage;
          }

          else
          {
            v269 = *v266;
            (*v266)(v304, v264, v261);
            v268 = _swiftEmptyArrayStorage;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v268 = sub_100033A68(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
            }

            v271 = *(v268 + 2);
            v270 = *(v268 + 3);
            if (v271 >= v270 >> 1)
            {
              v268 = sub_100033A68((v270 > 1), v271 + 1, 1, v268);
            }

            *(v268 + 2) = v271 + 1;
            v272 = &v268[((*(v351 + 80) + 32) & ~*(v351 + 80)) + *(v351 + 72) * v271];
            v261 = v350;
            v269(v272, v304, v350);
            v264 = v291;
          }

          v273 = v303;
          sub_100031660(v260 + v352, v303, &unk_100984360, &unk_1007D54C0);
          sub_1000476A0(v273, v264, &unk_100984360, &unk_1007D54C0);
          if (v265(v264, 1, v261) == 1)
          {
            sub_10002B894(v264, &unk_100984360, &unk_1007D54C0);
            v258 = v342;
            v57 = v338;
          }

          else
          {
            v274 = v261;
            v275 = *v349;
            (*v349)(v304, v264, v274);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v258 = v342;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v268 = sub_100033A68(0, *(v268 + 2) + 1, 1, v268);
            }

            v57 = v338;
            v278 = *(v268 + 2);
            v277 = *(v268 + 3);
            if (v278 >= v277 >> 1)
            {
              v268 = sub_100033A68((v277 > 1), v278 + 1, 1, v268);
            }

            *(v268 + 2) = v278 + 1;
            v275(&v268[((*(v351 + 80) + 32) & ~*(v351 + 80)) + *(v351 + 72) * v278], v304, v350);
          }

          swift_setDeallocating();
          swift_arrayDestroy();
LABEL_100:
          swift_deallocClassInstance();
          v47 = v321;
          if (a11 == 0.0 && a12 == 0.0)
          {
            v279 = 0;
            v280 = 0;
            v281 = 0;
            *&v383 = 0;
            *(&v382 + 1) = 0;
          }

          else
          {
            v280 = type metadata accessor for LayoutViewPlaceholder();
            swift_allocObject();
            v279 = LayoutViewPlaceholder.init(representing:)();
            v281 = &protocol witness table for LayoutViewPlaceholder;
          }

          *&v382 = v279;
          *(&v383 + 1) = v280;
          v384 = v281;
          sub_100031660(&v382, v379, &qword_100975610, &qword_1007B5690);
          v282 = v336;
          v283 = *(v258 + v336[14]);
          v378[3] = &type metadata for CGFloat;
          v378[4] = &protocol witness table for CGFloat;
          v378[0] = v283;
          (*(v312 + 16))(v314, v258 + v336[10], v313);
          (*(v315 + 16))(v317, v258 + v282[11], v316);
          (*(v318 + 104))(v319, enum case for TitleHeaderLayout.AccessoryHorizontalAlignment.rightJustified(_:), v320);
          TitleHeaderLayout.init(accessoryView:accessoryMargin:accessoryVerticalAlignment:accessoryHorizontalAlignment:children:childrenHorizontalAlignment:allowsAccessibilityLayouts:)();
          CGSize.subtracting(insets:)();
          sub_1003FAFE0(&unk_1009812F0, &type metadata accessor for TitleHeaderLayout, &protocol conformance descriptor for TitleHeaderLayout);
          v48 = v322;
          dispatch thunk of Measurable.measurements(fitting:in:)();
          v379[0] = v284;
          v379[1] = v285;
          CGSize.add(outsets:)();
          if (JUScreenClassGetMain() != 1)
          {

            (*(v325 + 8))(v47, v48);
            (*(v351 + 8))(v340, v350);
            sub_1003FAD58(v341, type metadata accessor for TitleHeaderView.TextConfiguration);
            sub_10002B894(&v385, &unk_10097E890, qword_1007B4270);
            sub_10002B894(&v388, &unk_10097E890, qword_1007B4270);
            sub_10002B894(v339, &unk_100984360, &unk_1007D54C0);
            sub_10002B894(v57, &unk_100984360, &unk_1007D54C0);
            return sub_10002B894(&v382, &qword_100975610, &qword_1007B5690);
          }

          v286 = v350;
          v51 = v351;
          v50 = v335;
          if (qword_10096E760 != -1)
          {
            swift_once();
          }

          v287 = sub_1000056A8(v343, qword_1009D2688);
          if (sub_1003FA6EC(v328, v287))
          {

            (*(v325 + 8))(v47, v48);
            (*(v51 + 1))(v340, v286);
            sub_1003FAD58(v341, type metadata accessor for TitleHeaderView.TextConfiguration);
            sub_10002B894(&v385, &unk_10097E890, qword_1007B4270);
            sub_10002B894(&v388, &unk_10097E890, qword_1007B4270);
            sub_10002B894(v339, &unk_100984360, &unk_1007D54C0);
            sub_10002B894(v57, &unk_100984360, &unk_1007D54C0);
            return sub_10002B894(&v382, &qword_100975610, &qword_1007B5690);
          }

          if (qword_10096E768 == -1)
          {
LABEL_111:
            v288 = sub_1000056A8(v343, qword_1009D26A0);
            sub_1003FA6EC(v328, v288);

            (*(v325 + 8))(v47, v48);
            (*(v51 + 1))(v340, v350);
            sub_1003FAD58(v341, type metadata accessor for TitleHeaderView.TextConfiguration);
            sub_10002B894(&v385, &unk_10097E890, qword_1007B4270);
            sub_10002B894(&v388, &unk_10097E890, qword_1007B4270);
            sub_10002B894(v339, &unk_100984360, &unk_1007D54C0);
            sub_10002B894(v57, &unk_100984360, &unk_1007D54C0);
            return sub_10002B894(&v382, &qword_100975610, &qword_1007B5690);
          }

LABEL_119:
          swift_once();
          goto LABEL_111;
        }

        v232 = v352;
        v337 = swift_allocObject();
        v233 = v337 + v231;
        sub_100031660(v338, v337 + v231, &unk_100984360, &unk_1007D54C0);
        v235 = v350;
        v234 = v351;
        (*(v351 + 16))(v233 + v232, v340, v350);
        v236 = *(v234 + 56);
        v234 += 56;
        v236(v233 + v232, 0, 1, v235);
        sub_100031660(v339, v233 + 2 * v232, &unk_100984360, &unk_1007D54C0);
        v237 = (v234 - 8);
        v348 = (v234 - 24);
        v238 = v235;
        v239 = _swiftEmptyArrayStorage;
        v240 = 3;
        v346 = v233;
        do
        {
          v241 = v347;
          sub_100031660(v233, v347, &unk_100984360, &unk_1007D54C0);
          sub_1000476A0(v241, v227, &unk_100984360, &unk_1007D54C0);
          if ((*v237)(v227, 1, v238) == 1)
          {
            sub_10002B894(v227, &unk_100984360, &unk_1007D54C0);
          }

          else
          {
            v242 = *v348;
            (*v348)(v349, v227, v238);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v239 = sub_100033A68(0, *(v239 + 2) + 1, 1, v239);
            }

            v244 = *(v239 + 2);
            v243 = *(v239 + 3);
            if (v244 >= v243 >> 1)
            {
              v239 = sub_100033A68((v243 > 1), v244 + 1, 1, v239);
            }

            *(v239 + 2) = v244 + 1;
            v238 = v350;
            v242(&v239[((*(v351 + 80) + 32) & ~*(v351 + 80)) + *(v351 + 72) * v244], v349, v350);
            v227 = v345;
          }

          v233 += v352;
          --v240;
        }

        while (v240);
      }

      else
      {
        v245 = v352;
        v246 = 2 * v352;
        v337 = swift_allocObject();
        v247 = v351;
        v248 = v337 + v231;
        sub_100031660(v338, v337 + v231, &unk_100984360, &unk_1007D54C0);
        sub_100031660(v339, v248 + v245, &unk_100984360, &unk_1007D54C0);
        v249 = v350;
        (*(v247 + 16))(v248 + v246, v340, v350);
        (*(v247 + 56))(v248 + v246, 0, 1, v249);
        v250 = (v247 + 48);
        v349 = (v247 + 32);
        v251 = v249;
        v252 = _swiftEmptyArrayStorage;
        v253 = 3;
        v347 = v248;
        do
        {
          v254 = v346;
          sub_100031660(v248, v346, &unk_100984360, &unk_1007D54C0);
          sub_1000476A0(v254, v221, &unk_100984360, &unk_1007D54C0);
          if ((*v250)(v221, 1, v251) == 1)
          {
            sub_10002B894(v221, &unk_100984360, &unk_1007D54C0);
          }

          else
          {
            v255 = *v349;
            (*v349)(v348, v221, v251);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v252 = sub_100033A68(0, *(v252 + 2) + 1, 1, v252);
            }

            v257 = *(v252 + 2);
            v256 = *(v252 + 3);
            if (v257 >= v256 >> 1)
            {
              v252 = sub_100033A68((v256 > 1), v257 + 1, 1, v252);
            }

            *(v252 + 2) = v257 + 1;
            v251 = v350;
            v255(&v252[((*(v351 + 80) + 32) & ~*(v351 + 80)) + *(v351 + 72) * v257], v348, v350);
            v221 = v344;
          }

          v248 += v352;
          --v253;
        }

        while (v253);
      }

      swift_setDeallocating();
      swift_arrayDestroy();
      v258 = v342;
      v57 = v338;
      goto LABEL_100;
    }

    [v331 lineHeight];
    v183 = ceil(v182 * 1.3);
    if ((*&v183 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v183 > -9.22337204e18)
      {
        if (v183 < 9.22337204e18)
        {
          goto LABEL_48;
        }

LABEL_118:
        __break(1u);
        goto LABEL_119;
      }

LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    goto LABEL_115;
  }

  result = [v336 lineHeight];
  v139 = ceil(v138 * 1.3);
  if ((*&v139 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_121;
  }

  if (v139 <= -9.22337204e18)
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  if (v139 < 9.22337204e18)
  {
    goto LABEL_31;
  }

LABEL_122:
  __break(1u);
  return result;
}

double sub_1003FA3DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21[1] = a3;
  v22 = a1;
  v21[0] = type metadata accessor for AspectRatio();
  v4 = *(v21[0] - 8);
  __chkstk_darwin(v21[0]);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FontSource();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StaticDimension();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(type metadata accessor for TitleHeaderView.TextConfiguration(0) + 24);
  v16 = type metadata accessor for FontUseCase();
  (*(*(v16 - 8) + 16))(v10, a2 + v15, v16);
  (*(v8 + 104))(v10, enum case for FontSource.useCase(_:), v7);
  v23[3] = v7;
  v23[4] = &protocol witness table for FontSource;
  v17 = sub_1000056E0(v23);
  (*(v8 + 16))(v17, v10, v7);
  StaticDimension.init(_:scaledLike:)();
  (*(v8 + 8))(v10, v7);
  StaticDimension.rawValue(in:)();
  if (v22)
  {
    Artwork.size.getter();
    AspectRatio.init(_:_:)();
    AspectRatio.maxSize(fitting:)();
    v19 = v18;
    (*(v4 + 8))(v6, v21[0]);
  }

  else
  {
    v19 = 0.0;
  }

  (*(v12 + 8))(v14, v11);
  return v19;
}

BOOL sub_1003FA6EC(void *a1, void *a2)
{
  sub_100005744(0, &qword_100978360, NSObject_ptr);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = a1[2];
  v5 = a2[2];
  if (v4)
  {
    if (!v5 || (a1[1] != a2[1] || v4 != v5) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  if (static FontUseCase.== infix(_:_:)() & 1) != 0 && *(a1 + v6[7]) == *(a2 + v6[7]) && *(a1 + v6[8]) == *(a2 + v6[8]) && (static StaticDimension.== infix(_:_:)() & 1) != 0 && (static StaticDimension.== infix(_:_:)())
  {
    return *(a1 + v6[11]) == *(a2 + v6[11]);
  }

  return 0;
}

BOOL sub_1003FA80C(void *a1, void *a2)
{
  v4 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v5 = *(v4 - 1);
  __chkstk_darwin(v4);
  v7 = (&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10002849C(&qword_1009794E8, &unk_1007C18C0);
  __chkstk_darwin(v8 - 8);
  v10 = (&v30 - v9);
  v11 = sub_10002849C(&qword_100984330, qword_1007CBF18);
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  sub_100005744(0, &qword_100978360, NSObject_ptr);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v14 = a1[2];
  v15 = a2[2];
  if (v14)
  {
    if (!v15 || (a1[1] != a2[1] || v14 != v15) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  if ((static FontUseCase.== infix(_:_:)() & 1) == 0)
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

  if ((static StaticDimension.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if ((static StaticDimension.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v4[11]) != *(a2 + v4[11]))
  {
    return 0;
  }

  v16 = type metadata accessor for TitleHeaderView.Style(0);
  if (!sub_1003FA6EC((a1 + *(v16 + 20)), (a2 + *(v16 + 20))))
  {
    return 0;
  }

  v30 = v16;
  v17 = *(v16 + 24);
  v18 = *(v11 + 48);
  sub_100031660(a1 + v17, v13, &qword_1009794E8, &unk_1007C18C0);
  v31 = v18;
  sub_100031660(a2 + v17, &v13[v18], &qword_1009794E8, &unk_1007C18C0);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) != 1)
  {
    sub_100031660(v13, v10, &qword_1009794E8, &unk_1007C18C0);
    v20 = v31;
    if (v19(&v13[v31], 1, v4) != 1)
    {
      sub_1003FADB8(&v13[v20], v7, type metadata accessor for TitleHeaderView.TextConfiguration);
      v21 = sub_1003FA6EC(v10, v7);
      sub_1003FAD58(v7, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_1003FAD58(v10, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_10002B894(v13, &qword_1009794E8, &unk_1007C18C0);
      if (!v21)
      {
        return 0;
      }

      goto LABEL_23;
    }

    sub_1003FAD58(v10, type metadata accessor for TitleHeaderView.TextConfiguration);
LABEL_21:
    sub_10002B894(v13, &qword_100984330, qword_1007CBF18);
    return 0;
  }

  if (v19(&v13[v31], 1, v4) != 1)
  {
    goto LABEL_21;
  }

  sub_10002B894(v13, &qword_1009794E8, &unk_1007C18C0);
LABEL_23:
  v22 = v30;
  if (*(a1 + v30[7]) != *(a2 + v30[7]) || *(a1 + v30[8]) != *(a2 + v30[8]) || *(a1 + v30[9]) != *(a2 + v30[9]) || (static TitleHeaderLayout.AccessoryVerticalAlignment.== infix(_:_:)() & 1) == 0)
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

    sub_100005744(0, &qword_100970180, UIColor_ptr);
    v26 = v25;
    v27 = v24;
    v28 = static NSObject.== infix(_:_:)();

    if ((v28 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v25)
  {
    return 0;
  }

  if (static NSObject.== infix(_:_:)())
  {
    type metadata accessor for TitleHeaderLayout.ChildrenHorizontalAlignment();
    sub_1003FAFE0(&qword_100984338, &type metadata accessor for TitleHeaderLayout.ChildrenHorizontalAlignment, &protocol conformance descriptor for TitleHeaderLayout.ChildrenHorizontalAlignment);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    return v33 == v32;
  }

  return 0;
}

uint64_t sub_1003FAD58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003FADB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003FAE20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1003FAE88()
{
  v1 = (v0 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowText);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowArtwork) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowArtworkView) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleArtwork) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleArtworkView) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_detailLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_shortDetailLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessoryView) = 0;
  v2 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessory;
  v3 = type metadata accessor for Accessory(0);
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  v4 = (v0 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessoryAction);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_separatorInset);
  v6 = *&UIEdgeInsetsZero.bottom;
  *v5 = *&UIEdgeInsetsZero.top;
  v5[1] = v6;
  *(v0 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_allowsAccessibilityLayouts) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1003FAFE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1003FB054(char a1)
{
  v2 = qword_1009CF428;
  v3 = *(v1 + qword_1009CF428);
  if (v3 != (a1 & 1))
  {
    v4 = qword_10097F318;
    if ((v3 & 1) != 0 && !*(v1 + qword_10097F318))
    {
      type metadata accessor for BarButtonItemHidingScrollObserver();
      v6 = swift_allocObject();
      *(v6 + 16) = 0;
      *(v1 + v4) = v6;
      *(v6 + 24) = 0;
      sub_100403A28(&unk_10097F5D0, type metadata accessor for BarButtonItemHidingScrollObserver, &unk_1007C63F4);

      CompoundScrollObserver.addChild(_:)();

      v5 = *(v1 + qword_10097F318);
      if (!v5)
      {
        return;
      }
    }

    else
    {
      v5 = *(v1 + qword_10097F318);
      if (!v5)
      {
        return;
      }
    }

    *(v5 + 24) = *(v1 + v2);

    sub_1002D9730();
  }
}

void sub_1003FB194(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  type metadata accessor for PromotedContentAdvertLifecycleMetricsReporter();
  v6 = swift_allocObject();
  type metadata accessor for PromotedContentMetricCollector();
  *(v6 + 16) = static PromotedContentMetricCollector.shared.getter();
  v7 = sub_100401C38(v5, v6, a3);

  v8 = *(a2 + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_searchFocusViewController);
  *(a2 + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_searchFocusViewController) = v7;
}

void (*sub_1003FB238(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_100402BF4;
}

id sub_1003FB2D0()
{
  v1 = OBJC_IVAR____TtC8AppStore20SearchViewController____lazy_storage___resultsMessageView;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore20SearchViewController____lazy_storage___resultsMessageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8AppStore20SearchViewController____lazy_storage___resultsMessageView);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for SearchResultsMessageView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v4 setPreservesSuperviewLayoutMargins:1];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_1003FB368()
{
  v1 = OBJC_IVAR____TtC8AppStore20SearchViewController____lazy_storage___tokenPalette;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore20SearchViewController____lazy_storage___tokenPalette);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8AppStore20SearchViewController____lazy_storage___tokenPalette);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for GuidedSearchTokenPaletteView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = &v4[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_onSelect];
    v7 = *&v4[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_onSelect];
    v8 = *&v4[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_onSelect + 8];
    *v6 = sub_100403984;
    v6[1] = v5;

    sub_10001F63C(v7, v8);

    v9 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

double sub_1003FB460(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;

    swift_allocObject();
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    GuidedSearchPresenter.didToggleToken(at:actionHandler:)();
  }

  return result;
}

double sub_1003FB54C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (*(*(Strong + OBJC_IVAR____TtC8AppStore20SearchViewController_searchResultsContainerViewController) + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_activeSearchSectionViewController) && (type metadata accessor for StoreCollectionViewController(), (v6 = swift_dynamicCastClass()) != 0))
    {
      v7 = &OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph;
    }

    else
    {
      v7 = &OBJC_IVAR____TtC8AppStore20SearchViewController_objectGraph;
      v6 = v5;
    }

    v8 = *(v6 + *v7);
    type metadata accessor for GuidedSearchTokenToggleAction();
    v9 = swift_dynamicCastClass() == 0;

    sub_1005D0214(a1, v9, v8);
  }

  return result;
}

void sub_1003FB648(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {

    v3 = sub_1003FB2D0();

    sub_10041DA04(v4);

    v5 = *(v2 + OBJC_IVAR____TtC8AppStore20SearchViewController_palettePresenter);
    v6 = *(v2 + OBJC_IVAR____TtC8AppStore20SearchViewController____lazy_storage___resultsMessageView);
    v64[3] = type metadata accessor for SearchResultsMessageView();
    v64[4] = &protocol witness table for UIView;
    v64[0] = v6;
    sub_10002C0AC(v64, v63);
    sub_10002C0AC(v63, v62);
    v7 = swift_allocObject();
    sub_100005A38(v63, v7 + 16);
    v8 = swift_allocObject();
    v8[2] = sub_100403924;
    v8[3] = v7;
    v8[4] = 0x3FD999999999999ALL;
    v9 = v6;

    sub_100007000(v64);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {

      sub_100007000(v62);

LABEL_28:
      v55 = *(*(v2 + OBJC_IVAR____TtC8AppStore20SearchViewController_searchResultsContainerViewController) + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_activeSearchSectionViewController);
      if (v55)
      {
        v56 = [v55 collectionView];
        if (v56)
        {
          v57 = v56;
          sub_1006E3738(v56);
          v58 = UIAccessibilityScreenChangedNotification;
          v59 = v57;
          UIAccessibilityPostNotification(v58, v59);
        }
      }

      return;
    }

    v11 = Strong;
    v60 = v6;
    v12 = *(v5 + 24);
    if (v12)
    {
      [v12 setHidden:1];
    }

    v13 = v9;
    [v13 setHidden:0];
    v14 = [v13 superview];
    v15 = [v11 contentView];
    v16 = v15;
    if (v14)
    {
      if (v15)
      {
        sub_100005744(0, &qword_100972EB0, UIView_ptr);
        v17 = static NSObject.== infix(_:_:)();

        v18 = &selRef__setDefaultAttributes_;
        if (v17)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      v16 = v14;
      v18 = &selRef__setDefaultAttributes_;
    }

    else
    {
      v18 = &selRef__setDefaultAttributes_;
      if (!v15)
      {
        goto LABEL_25;
      }
    }

LABEL_24:
    v27 = [v11 v18[388]];
    [v27 bounds];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;

    [v13 setFrame:{v29, v31, v33, v35}];
    [v13 setAutoresizingMask:18];
    v36 = [v11 v18[388]];
    [v36 addSubview:v13];

LABEL_25:
    v37 = *(v5 + 24);
    *(v5 + 24) = v60;
    v38 = v13;

    if (*(v5 + 65))
    {
      v39 = [v11 v18[388]];
      sub_100005744(0, &qword_100972EB0, UIView_ptr);
      LayoutMarginsAware<>.layoutFrame.getter();
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;

      v66.origin.x = v41;
      v66.origin.y = v43;
      v66.size.width = v45;
      v66.size.height = v47;
      CGRectGetWidth(v66);
      v48 = [v11 v18[388]];
      sub_10002A400(v62, v62[3]);
      dispatch thunk of Measurable.measurements(fitting:in:)();
      v50 = v49;

      [v11 setPreferredHeight:v50];
      [v11 setMinimumHeight:0.0];
    }

    v51 = *(v5 + 32);
    v52 = *(v5 + 40);
    v53 = *(v5 + 48);
    v54 = *(v5 + 56);
    *(v5 + 32) = sub_100403924;
    *(v5 + 40) = v7;
    *(v5 + 48) = sub_100403978;
    *(v5 + 56) = v8;
    *(v5 + 64) = 1;
    sub_10040392C(v51, v52, v53, v54);
    sub_100007000(v62);

    goto LABEL_28;
  }

  v19 = *(v1 + OBJC_IVAR____TtC8AppStore20SearchViewController_palettePresenter);
  v20 = sub_1003FB2D0();
  if (*(v19 + 65) == 1 && (v21 = *(v19 + 24)) != 0)
  {
    v61 = v20;
    sub_100005744(0, &qword_100972EB0, UIView_ptr);
    v22 = v21;
    v23 = static NSObject.== infix(_:_:)();

    if (v23)
    {
      v24 = *(v19 + 24);
      if (v24)
      {
        if (*(v19 + 65) == 1)
        {
          v25 = swift_unknownObjectWeakLoadStrong();
          if (v25)
          {
            v26 = v25;
            [v24 setHidden:1];
            [v26 setMinimumHeight:0.0];
            [v26 setPreferredHeight:0.0];

            *(v19 + 65) = 0;
          }
        }
      }
    }
  }

  else
  {
  }
}

void sub_1003FBC24()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore20SearchViewController_palettePresenter);
  v3 = sub_1003FB368();
  if (*(v2 + 65) != 1 || (v4 = *(v2 + 24)) == 0)
  {

LABEL_6:
    v8 = *(v1 + OBJC_IVAR____TtC8AppStore20SearchViewController____lazy_storage___tokenPalette);
    v49[3] = type metadata accessor for GuidedSearchTokenPaletteView(0);
    v49[4] = &protocol witness table for UIView;
    v49[0] = v8;
    sub_10002C0AC(v49, v48);
    sub_10002C0AC(v48, v47);
    v9 = swift_allocObject();
    sub_100005A38(v48, v9 + 16);
    v10 = v8;
    sub_100007000(v49);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {

      sub_100007000(v47);
LABEL_22:

      sub_1006E3954();
      return;
    }

    v12 = Strong;
    v13 = *(v2 + 24);
    if (v13)
    {
      [v13 setHidden:1];
    }

    v14 = v10;
    [v14 setHidden:0];
    v15 = [v14 superview];
    v16 = [v12 contentView];
    v17 = v16;
    if (v15)
    {
      if (v16)
      {
        sub_100005744(0, &qword_100972EB0, UIView_ptr);
        v18 = static NSObject.== infix(_:_:)();

        if (v18)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      v17 = v15;
    }

    else if (!v16)
    {
      goto LABEL_19;
    }

LABEL_18:
    v19 = [v12 contentView];
    [v19 bounds];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    [v14 setFrame:{v21, v23, v25, v27}];
    [v14 setAutoresizingMask:18];
    v28 = [v12 contentView];
    [v28 addSubview:v14];

LABEL_19:
    v29 = *(v2 + 24);
    *(v2 + 24) = v8;
    v30 = v14;

    if (*(v2 + 65))
    {
      v31 = [v12 contentView];
      sub_100005744(0, &qword_100972EB0, UIView_ptr);
      LayoutMarginsAware<>.layoutFrame.getter();
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;

      v50.origin.x = v33;
      v50.origin.y = v35;
      v50.size.width = v37;
      v50.size.height = v39;
      CGRectGetWidth(v50);
      v40 = [v12 contentView];
      sub_10002A400(v47, v47[3]);
      dispatch thunk of Measurable.measurements(fitting:in:)();
      v42 = v41;

      [v12 setPreferredHeight:v42];
      [v12 preferredHeight];
      [v12 setMinimumHeight:?];
    }

    v43 = *(v2 + 32);
    v44 = *(v2 + 40);
    v45 = *(v2 + 48);
    v46 = *(v2 + 56);
    *(v2 + 32) = sub_100403924;
    *(v2 + 40) = v9;
    *(v2 + 48) = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
    sub_10040392C(v43, v44, v45, v46);
    sub_100007000(v47);

    goto LABEL_22;
  }

  v5 = v3;
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  v6 = v4;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }
}

void sub_1003FC014()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore20SearchViewController_palettePresenter);
  v3 = sub_1003FB368();
  if (*(v2 + 65) == 1 && (v4 = *(v2 + 24)) != 0)
  {
    v14 = v3;
    sub_100005744(0, &qword_100972EB0, UIView_ptr);
    v5 = v4;
    v6 = static NSObject.== infix(_:_:)();

    if (v6)
    {
      v7 = OBJC_IVAR____TtC8AppStore20SearchViewController____lazy_storage___tokenPalette;
      v8 = *(v1 + OBJC_IVAR____TtC8AppStore20SearchViewController____lazy_storage___tokenPalette);
      sub_100557B44(_swiftEmptyArrayStorage);

      v9 = *(v1 + v7);
      *&v9[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_impressionsCoordinator] = 0;
      v10 = v9;

      *&v10[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_impressionsScrollObserver] = 0;

      v11 = objc_opt_self();
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_10040391C;
      aBlock[5] = v12;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100007A08;
      aBlock[3] = &unk_1008C1B40;
      v13 = _Block_copy(aBlock);

      [v11 animateWithDuration:v13 animations:0.3];
      _Block_release(v13);
    }
  }

  else
  {
  }
}

double sub_1003FC1FC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC8AppStore20SearchViewController_palettePresenter);
    v4 = Strong;

    v5 = *(v3 + 24);
    if (v5 && *(v3 + 65) == 1)
    {
      v6 = swift_unknownObjectWeakLoadStrong();
      if (v6)
      {
        v7 = v6;
        [v5 setHidden:1];
        [v7 setMinimumHeight:0.0];
        [v7 setPreferredHeight:0.0];

        *(v3 + 65) = 0;
      }
    }
  }

  return result;
}

double sub_1003FC2D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + OBJC_IVAR____TtC8AppStore20SearchViewController_searchTextInput);
  if (v3 && v3[OBJC_IVAR____TtC8AppStore30SearchTextInputSourceTextField_isTextExpansionDisabled] != 1)
  {
    v6 = OBJC_IVAR____TtC8AppStore30SearchTextInputSourceTextField_textField;
    v7 = *&v3[OBJC_IVAR____TtC8AppStore30SearchTextInputSourceTextField_textField];
    swift_getObjectType();
    v8 = swift_conformsToProtocol2();
    if (v8 && v7 != 0)
    {
      v11 = v8;
      ObjectType = swift_getObjectType();
      v13 = *(v11 + 40);
      v21 = v3;
      v14 = v7;
      v15 = v13(a1, a2, ObjectType, v11);

      if ((v15 & 1) == 0 || ((v16 = *&v3[v6], swift_getObjectType(), (v17 = swift_conformsToProtocol2()) != 0) ? (v18 = v16 == 0) : (v18 = 1), v18))
      {
      }

      else
      {
        v19 = v17;
        v20 = v16;

        sub_10061B2E8(v21, v20, v19, a1, a2);
      }
    }
  }

  return result;
}

uint64_t (*sub_1003FC498(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100403A94;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_100403A9C;
}

id sub_1003FC528(id result)
{
  v2 = v1[OBJC_IVAR____TtC8AppStore20SearchViewController_showSearchLanding];
  v1[OBJC_IVAR____TtC8AppStore20SearchViewController_showSearchLanding] = result;
  if (v2 != (result & 1))
  {
    v3 = *&v1[OBJC_IVAR____TtC8AppStore20SearchViewController_searchLandingViewController];
    if (result)
    {
      [v1 addChildViewController:*&v1[OBJC_IVAR____TtC8AppStore20SearchViewController_searchLandingViewController]];
      result = [v1 view];
      if (result)
      {
        v4 = result;
        result = [v3 view];
        if (result)
        {
          v5 = result;
          [v4 addSubview:result];

          v6 = "didMoveToParentViewController:";
          v7 = v3;
          v8 = v1;

          return [v7 v6];
        }

        goto LABEL_15;
      }

      __break(1u);
    }

    else
    {
      [*&v1[OBJC_IVAR____TtC8AppStore20SearchViewController_searchLandingViewController] willMoveToParentViewController:0];
      result = [v3 view];
      if (result)
      {
        v9 = result;
        [result removeFromSuperview];

        v6 = "removeFromParentViewController";
        v7 = v3;

        return [v7 v6];
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  return result;
}

id sub_1003FC690()
{
  v1 = v0;
  v2 = type metadata accessor for AutomationSemantics();
  v37 = *(v2 - 8);
  v38 = v2;
  __chkstk_darwin(v2);
  v36 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&qword_1009845A0, &qword_1007CC068);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - v6;
  v8 = type metadata accessor for SearchViewController(0);
  v42.receiver = v0;
  v42.super_class = v8;
  objc_msgSendSuper2(&v42, "viewDidLoad");
  v9 = [v0 navigationItem];
  sub_1006E358C(v9, 2, 1);

  SearchTextPresenter.onApplyTermExpansion.getter();
  v10 = sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  v11 = static OS_dispatch_queue.main.getter();
  *(&v40 + 1) = v10;
  v41 = &protocol witness table for OS_dispatch_queue;
  *&v39 = v11;
  sub_10002849C(&qword_1009845A8, qword_1007CC070);
  sub_100097060(&unk_1009845B0, &qword_1009845A8, qword_1007CC070, &protocol conformance descriptor for AsyncEvent<A>);
  EventEmitter.addObserver<A>(on:target:method:)();

  (*(v5 + 8))(v7, v4);
  sub_100007000(&v39);
  sub_1003FD664();
  v12 = [v1 navigationItem];
  result = [v1 tabBarItem];
  if (!result)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = result;
  v15 = [result title];

  if (v15 || (v15 = [v1 title]) != 0)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = String._bridgeToObjectiveC()();
  }

  [v12 setTitle:v15];

  v16 = [v1 navigationItem];
  sub_10073D660();

  v17 = *&v1[OBJC_IVAR____TtC8AppStore20SearchViewController_searchController];
  [v17 setSearchResultsUpdater:v1];
  [v17 setDelegate:v1];
  [v17 setObscuresBackgroundDuringPresentation:0];
  v18 = swift_allocObject();
  *(v18 + 16) = v1;
  v19 = &v17[OBJC_IVAR____TtC8AppStore16SearchController_filterButtonHandler];
  v20 = *&v17[OBJC_IVAR____TtC8AppStore16SearchController_filterButtonHandler];
  v21 = *&v17[OBJC_IVAR____TtC8AppStore16SearchController_filterButtonHandler + 8];
  *v19 = sub_100403A70;
  v19[1] = v18;
  v22 = v1;
  sub_10001F63C(v20, v21);
  v23 = [v22 navigationItem];
  [v23 setLargeTitleDisplayMode:3];

  v24 = [v22 navigationItem];
  [v24 setSearchController:v17];

  v25 = [v22 navigationItem];
  [v25 setPreferredSearchBarPlacement:2];

  v26 = [v22 navigationItem];
  [v26 setHidesSearchBarWhenScrolling:0];

  [v22 setDefinesPresentationContext:1];
  sub_10038CCD4();
  result = [v22 view];
  if (!result)
  {
    goto LABEL_13;
  }

  v27 = result;
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v28 = static UIColor.defaultBackground.getter();
  [v27 setBackgroundColor:v28];

  result = [v22 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v29 = result;
  v39 = 0u;
  v40 = 0u;
  v30 = v36;
  static AutomationSemantics.page(name:id:)();
  sub_10002B894(&v39, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  result = (*(v37 + 8))(v30, v38);
  v31 = v22[OBJC_IVAR____TtC8AppStore20SearchViewController_showSearchLanding];
  v22[OBJC_IVAR____TtC8AppStore20SearchViewController_showSearchLanding] = 1;
  if (v31 == 1)
  {
    return result;
  }

  v32 = *&v22[OBJC_IVAR____TtC8AppStore20SearchViewController_searchLandingViewController];
  [v22 addChildViewController:v32];
  result = [v22 view];
  if (!result)
  {
    goto LABEL_15;
  }

  v33 = result;
  result = [v32 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v34 = result;
  [v33 addSubview:result];

  return [v32 didMoveToParentViewController:v22];
}

double sub_1003FCD3C(char a1, __n128 a2)
{
  v3 = v2;
  v16.receiver = v3;
  v16.super_class = type metadata accessor for SearchViewController(0);
  objc_msgSendSuper2(&v16, "viewDidAppear:", a1 & 1);
  v5 = *(*&v3[OBJC_IVAR____TtC8AppStore20SearchViewController_searchController] + OBJC_IVAR____TtC8AppStore16SearchController_searchTextInput);
  v6 = *&v3[OBJC_IVAR____TtC8AppStore20SearchViewController_searchTextInput];
  *&v3[OBJC_IVAR____TtC8AppStore20SearchViewController_searchTextInput] = v5;
  v7 = v5;

  if (v5)
  {
    v5 = type metadata accessor for SearchTextInputSourceTextField();
    v8 = sub_100403A28(&qword_100984598, type metadata accessor for SearchTextInputSourceTextField, "a3\r");
  }

  else
  {
    v7 = 0;
    v8 = 0;
    *(&v13 + 1) = 0;
    *&v14 = 0;
  }

  *&v13 = v7;
  *(&v14 + 1) = v5;
  v15 = v8;
  SearchTextPresenter.inputSource.setter();
  v10 = OBJC_IVAR____TtC8AppStore20SearchViewController_pendingSearchAction;
  if (*&v3[OBJC_IVAR____TtC8AppStore20SearchViewController_pendingSearchAction])
  {
    v13 = 0u;
    v14 = 0u;

    sub_1003FEEE4(v11, v12);

    sub_10002B894(&v13, &unk_1009711D0, &unk_1007B1A10);
    *&v3[v10] = 0;
  }

  return result;
}

id sub_1003FCF50(void *a1, uint64_t a2, __n128 a3)
{
  v8.receiver = v3;
  v8.super_class = type metadata accessor for SearchViewController(0);
  objc_msgSendSuper2(&v8, "willTransitionToTraitCollection:withTransitionCoordinator:", a1, a2);
  if ([a1 horizontalSizeClass] == 1)
  {
    v6 = *&v3[OBJC_IVAR____TtC8AppStore20SearchViewController_facetNavigationController];
    if (v6)
    {
      [v6 dismissViewControllerAnimated:0 completion:0];
    }
  }

  return [*&v3[OBJC_IVAR____TtC8AppStore20SearchViewController_searchResultsContainerViewController] willTransitionToTraitCollection:a1 withTransitionCoordinator:a2];
}

void sub_1003FD080(void *a1, __n128 a2)
{
  v3 = v2;
  v22.receiver = v2;
  v22.super_class = type metadata accessor for SearchViewController(0);
  objc_msgSendSuper2(&v22, "traitCollectionDidChange:", a1);
  [*&v2[OBJC_IVAR____TtC8AppStore20SearchViewController_searchResultsContainerViewController] traitCollectionDidChange:a1];
  v5 = *&v2[OBJC_IVAR____TtC8AppStore20SearchViewController_searchController];
  v6 = [v5 traitCollection];
  v7 = [v6 horizontalSizeClass];
  if (a1 && v7 == [a1 horizontalSizeClass])
  {

LABEL_7:
    v13 = [a1 preferredContentSizeCategory];
    goto LABEL_11;
  }

  v8 = UITraitCollection.isRegularPad.getter();
  v9 = sub_10038CC0C();
  [v9 _additionalPaddingForSearchFieldAtLeadingEdge];
  v11 = v10;

  v12 = 0.0;
  if ((v8 & 1) == 0)
  {
    if (v11 == 0.0)
    {
      goto LABEL_6;
    }

LABEL_9:
    [*&v5[OBJC_IVAR____TtC8AppStore16SearchController____lazy_storage____searchBar] _setAdditionalPaddingForSearchFieldAtLeadingEdge:v12];

    if (a1)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  [*&v5[OBJC_IVAR____TtC8AppStore16SearchController_filterButton] sizeThatFits:{1.79769313e308, 1.79769313e308}];
  v12 = v14 + 15.0;
  if (v12 != v11)
  {
    goto LABEL_9;
  }

LABEL_6:

  if (a1)
  {
    goto LABEL_7;
  }

LABEL_10:
  v13 = 0;
LABEL_11:
  v15 = [v3 traitCollection];
  v16 = [v15 preferredContentSizeCategory];

  if (!v13)
  {

LABEL_17:
    sub_1006E3B08();
    return;
  }

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  if (v17 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v19 == v20)
  {

    return;
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v21 & 1) == 0)
  {
    goto LABEL_17;
  }
}

void sub_1003FD498()
{
  v25.receiver = v0;
  v25.super_class = type metadata accessor for SearchViewController(0);
  objc_msgSendSuper2(&v25, "viewDidLayoutSubviews");
  v1 = [*&v0[OBJC_IVAR____TtC8AppStore20SearchViewController_searchLandingViewController] view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  v3 = [v0 view];
  if (!v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v4 = v3;
  [v3 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v2 setFrame:{v6, v8, v10, v12}];
  v13 = [*&v0[OBJC_IVAR____TtC8AppStore20SearchViewController_searchResultsContainerViewController] view];
  if (!v13)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v14 = v13;
  v15 = [v0 view];
  if (v15)
  {
    v16 = v15;
    [v15 bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    [v14 setFrame:{v18, v20, v22, v24}];
    sub_1006E3B08();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_1003FD664()
{
  v1 = sub_10002849C(&unk_100984570, &unk_1007C4640);
  v14 = *(v1 - 8);
  v15 = v1;
  __chkstk_darwin(v1);
  v13 = &v11 - v2;
  v12 = sub_10002849C(&qword_10097CCE0, &unk_1007B3DB0);
  v3 = *(v12 - 8);
  __chkstk_darwin(v12);
  v5 = &v11 - v4;
  v11 = v0;
  PageFacetsPresenter.onFacetStateDidChange.getter();
  v6 = sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  v7 = static OS_dispatch_queue.main.getter();
  v17 = v6;
  v18 = &protocol witness table for OS_dispatch_queue;
  v16[0] = v7;
  sub_10002849C(&unk_100984580, &unk_1007C4660);
  type metadata accessor for SearchViewController(0);
  sub_100097060(&unk_10097CD10, &unk_100984580, &unk_1007C4660, &protocol conformance descriptor for AsyncEvent<A>);
  EventEmitter.addObserver<A>(on:target:method:)();

  (*(v3 + 8))(v5, v12);
  sub_100007000(v16);
  PageFacetsPresenter.onPerformPageFacetsChangeAction.getter();
  v8 = static OS_dispatch_queue.main.getter();
  v17 = v6;
  v18 = &protocol witness table for OS_dispatch_queue;
  v16[0] = v8;
  sub_10002849C(&qword_100984590, &unk_1007B3DC0);
  sub_100097060(&unk_10097CD20, &qword_100984590, &unk_1007B3DC0, &protocol conformance descriptor for SyncEvent<A>);
  v9 = v13;
  EventEmitter.addObserver<A>(on:target:method:)();

  (*(v14 + 8))(v9, v15);
  return sub_100007000(v16);
}

id sub_1003FD980(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002849C(&qword_10097CD30, &qword_1007B3D60);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = *(a2 + OBJC_IVAR____TtC8AppStore20SearchViewController_searchController);
  PageFacetsPresenter.FacetsState.facets.getter();
  v7 = type metadata accessor for PageFacets();
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_10002B894(v5, &qword_10097CD30, &qword_1007B3D60);
  return [*(v6 + OBJC_IVAR____TtC8AppStore16SearchController_filterButton) setEnabled:v8];
}

id (*sub_1003FDA90(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_100403914;
}

uint64_t sub_1003FDAF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = *(a2 + OBJC_IVAR____TtC8AppStore20SearchViewController_objectGraph);
  v8 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    return sub_10002B894(v6, &unk_100972A00, &unk_1007B3130);
  }

  sub_1005F9AF4(a1, 1, v7, v6);

  return (*(v9 + 8))(v6, v8);
}

uint64_t (*sub_1003FDC44(void *a1))(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10040390C;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_100274018;
}

void sub_1003FDCD4(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FlowOrigin();
  v67 = *(v4 - 8);
  v68 = v4;
  __chkstk_darwin(v4);
  v69 = v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for FlowAnimationBehavior();
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v64 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for FlowPresentationContext();
  v61 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v8 - 8);
  v60[2] = v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&unk_1009767C0, &unk_1007B1880);
  __chkstk_darwin(v10 - 8);
  v71 = v60 - v11;
  v12 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v12 - 8);
  v70 = v60 - v13;
  v14 = type metadata accessor for FlowPage();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v18 - 8);
  v20 = v60 - v19;
  v21 = *(v1 + OBJC_IVAR____TtC8AppStore20SearchViewController_facetsPresenter);
  v22 = *(v1 + OBJC_IVAR____TtC8AppStore20SearchViewController_objectGraph);
  v23 = objc_allocWithZone(type metadata accessor for PageFacetsViewController(0));

  v24 = sub_1000A24A8(v21, 1, v22);

  v25 = v22;

  *&v24[OBJC_IVAR____TtC8AppStore24PageFacetsViewController_delegate + 8] = &off_1008C1800;
  swift_unknownObjectWeakAssign();
  v26 = objc_allocWithZone(UINavigationController);
  v72 = v24;
  v27 = [v26 initWithRootViewController:v24];
  v28 = [v27 navigationBar];
  [v28 setPrefersLargeTitles:0];

  v29 = v27;
  [v29 setModalPresentationStyle:7];
  v30 = [v29 presentationController];
  if (v30)
  {
    v31 = v30;
    [v30 setDelegate:v2];
  }

  v32 = [v29 popoverPresentationController];
  if (v32)
  {
    v33 = v32;
    [v32 setSourceView:a1];
  }

  v73 = v2;
  v34 = [v29 popoverPresentationController];
  if (v34)
  {
    v35 = v34;
    [v34 setPermittedArrowDirections:1];
  }

  v36 = [v29 popoverPresentationController];

  if (v36)
  {
    v37 = [a1 titleLabel];
    if (v37)
    {
      v38 = v37;
      [v37 frame];
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v46 = v45;

      v47 = v46;
      v48 = v44;
      v49 = v42;
      v50 = v40;
    }

    else
    {
      [a1 bounds];
    }

    MidX = CGRectGetMidX(*&v50);
    [a1 bounds];
    [v36 setSourceRect:{MidX, CGRectGetMaxY(v79), 10.0, 10.0}];
  }

  v52 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v53 = *(v52 - 8);
  if ((*(v53 + 48))(v20, 1, v52) == 1)
  {
    sub_10002B894(v20, &unk_100972A00, &unk_1007B3130);
  }

  else
  {
    v78 = 0;
    v76 = 0u;
    v77 = 0u;
    v54 = *(v15 + 104);
    v60[1] = v17;
    v54(v17, enum case for FlowPage.viewController(_:), v14);
    v55 = type metadata accessor for URL();
    (*(*(v55 - 8) + 56))(v70, 1, 1, v55);
    v56 = type metadata accessor for ReferrerData();
    (*(*(v56 - 8) + 56))(v71, 1, 1, v56);
    v75 = sub_100005744(0, &qword_100975960, UINavigationController_ptr);
    v74 = v29;
    v57 = v29;
    v60[0] = v25;
    static ActionMetrics.notInstrumented.getter();
    (*(v61 + 104))(v62, enum case for FlowPresentationContext.infer(_:), v63);
    (*(v65 + 104))(v64, enum case for FlowAnimationBehavior.infer(_:), v66);
    (*(v67 + 104))(v69, enum case for FlowOrigin.inapp(_:), v68);
    static FlowActionPresentation.stackPush.getter();
    type metadata accessor for FlowAction();
    swift_allocObject();
    v58 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
    sub_1005F9C8C(v58, 1, v60[0], v20);

    (*(v53 + 8))(v20, v52);
  }

  v59 = *(v73 + OBJC_IVAR____TtC8AppStore20SearchViewController_facetNavigationController);
  *(v73 + OBJC_IVAR____TtC8AppStore20SearchViewController_facetNavigationController) = v29;
}

void sub_1003FE610(void *a1)
{
  v2 = [a1 searchResultsController];
  if (!v2)
  {
    return;
  }

  v7 = v2;
  [v1 addChildViewController:?];
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3;
  v5 = [v7 view];
  if (!v5)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v6 = v5;
  [v4 addSubview:v5];

  [v7 didMoveToParentViewController:v1];
}

void sub_1003FE770(void *a1)
{
  sub_1006E3FE0();
  v2 = [a1 searchResultsController];
  if (v2)
  {
    v5 = v2;
    [v2 willMoveToParentViewController:0];
    v3 = [v5 view];
    if (v3)
    {
      v4 = v3;
      [v3 removeFromSuperview];

      [v5 removeFromParentViewController];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1003FE97C(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  if (*(v1 + OBJC_IVAR____TtC8AppStore20SearchViewController_activeSearchBarObservingViewController))
  {
    v6 = *(v1 + OBJC_IVAR____TtC8AppStore20SearchViewController_activeSearchBarObservingViewController + 8);
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v8 = a1(ObjectType, v6);
    swift_unknownObjectRelease();
    if (v8)
    {
      v9 = *(v1 + OBJC_IVAR____TtC8AppStore20SearchViewController_objectGraph);
      v10 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
      BaseObjectGraph.injectIfAvailable<A>(_:)();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v5, 1, v10) == 1)
      {

        sub_10002B894(v5, &unk_100972A00, &unk_1007B3130);
      }

      else
      {
        sub_1005F9AF4(v8, 1, v9, v5);

        (*(v11 + 8))(v5, v10);
      }
    }
  }
}

void sub_1003FEB30(void *a1)
{
  v2 = v1;
  v4 = [a1 searchBar];
  v5 = [v4 text];

  if (!v5)
  {
LABEL_8:
    if ([a1 isActive] && *(*(v2 + OBJC_IVAR____TtC8AppStore20SearchViewController_searchResultsContainerViewController) + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_searchFocusViewController))
    {
      v13 = 3;
    }

    else
    {
      v13 = 0;
    }

    sub_100160F74(v13, v12);
    PageFacetsPresenter.clear()();
    v14 = *(v2 + OBJC_IVAR____TtC8AppStore20SearchViewController_facetNavigationController);
    *(v2 + OBJC_IVAR____TtC8AppStore20SearchViewController_facetNavigationController) = 0;
    if (v14)
    {
      v15 = [v14 presentingViewController];
      if (v15)
      {
        v16 = v15;
        [v15 dismissViewControllerAnimated:1 completion:0];
      }
    }

    goto LABEL_17;
  }

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

    goto LABEL_8;
  }

  v10 = sub_1001606D8(v6, v8);

  if (v10)
  {
    return;
  }

  sub_100160F74(1, v11);
  PageFacetsPresenter.clear()();
LABEL_17:

  sub_1003FB648(0);
}

void sub_1003FED44()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore20SearchViewController_searchResultsContainerViewController);
  if (*(v1 + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_activeSearchSection) == 2)
  {
    if (*(v1 + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_searchResultsViewController))
    {
    }
  }
}

uint64_t sub_1003FEDA8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore20SearchViewController_searchResultsContainerViewController);
  if (*(v1 + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_activeSearchSection))
  {
    v2 = *(v1 + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_activeSearchSectionViewController);
    if (v2 && (sub_100005744(0, &qword_1009767B8, UICollectionViewController_ptr), v3 = v2, sub_10002849C(&unk_100984560, &qword_1007CC060), (swift_dynamicCast() & 1) != 0))
    {
      if (*(&v9 + 1))
      {
        sub_100005A38(&v8, v11);
        v4 = v12;
        v5 = v13;
        sub_10002A400(v11, v12);
        v6 = (*(v5 + 8))(v4, v5);
        sub_100007000(v11);
        return v6;
      }
    }

    else
    {
      v10 = 0;
      v8 = 0u;
      v9 = 0u;
    }

    sub_10002B894(&v8, &unk_100984550, &qword_1007CC058);
  }

  return 0;
}

void sub_1003FEEE4(uint64_t a1, __n128 a2)
{
  v4 = type metadata accessor for SearchOrigin();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = v20 - v10;
  if ([v2 isViewLoaded])
  {
    SearchAction.origin.getter();
    (*(v5 + 104))(v7, enum case for SearchOrigin.tabBar(_:), v4);
    sub_100403A28(&qword_100984548, &type metadata accessor for SearchOrigin, &protocol conformance descriptor for SearchOrigin);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v20[2] == v20[0] && v20[3] == v20[1])
    {
      v12 = *(v5 + 8);
      v12(v7, v4);
      v12(v11, v4);

LABEL_9:
      sub_10040362C();
      return;
    }

    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v14 = *(v5 + 8);
    v14(v7, v4);
    v14(v11, v4);

    if (v13)
    {
      goto LABEL_9;
    }

    v15 = SearchAction.term.getter();
    if (!v16)
    {
      goto LABEL_16;
    }

    v17 = v15;
    v18 = v16;

    v19 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v19 = v17 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      sub_1003FF5FC(a1);
    }

    else
    {
LABEL_16:
      sub_1003FF1C0(0);
    }
  }

  else
  {
    *&v2[OBJC_IVAR____TtC8AppStore20SearchViewController_pendingSearchAction] = a1;
  }
}

uint64_t sub_1003FF1C0(char a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v6 = *(v17 - 8);
  *&v7 = __chkstk_darwin(v17).n128_u64[0];
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + OBJC_IVAR____TtC8AppStore20SearchViewController_searchController);
  v11 = [v10 searchBar];
  [v11 becomeFirstResponder];

  sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = a1;
  aBlock[4] = sub_1004034BC;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008C1AA0;
  v14 = _Block_copy(aBlock);
  v15 = v10;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100403A28(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
  sub_100097060(&qword_100976F60, &unk_1009729F0, &unk_1007B3D80, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v18 + 8))(v5, v3);
  return (*(v6 + 8))(v9, v17);
}

void sub_1003FF4F0(void *a1, char a2)
{
  [a1 setActive:1];
  v4 = [a1 searchBar];
  v5 = v4;
  if (a2)
  {
    v7 = [v4 searchField];

    if (!v7)
    {
      __break(1u);
      return;
    }

    [v7 selectAll];
  }

  else
  {
    v6 = [v4 isFirstResponder];

    if (v6)
    {
      return;
    }

    v7 = [a1 searchBar];
    [v7 becomeFirstResponder];
  }
}

uint64_t sub_1003FF5FC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v7 = *(v16 - 8);
  __chkstk_darwin(v16);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003FB648(0);
  v10 = [*&v1[OBJC_IVAR____TtC8AppStore20SearchViewController_searchController] searchBar];
  [v10 resignFirstResponder];

  sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1004034B4;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008C1A50;
  v13 = _Block_copy(aBlock);
  v14 = v2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100403A28(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
  sub_100097060(&qword_100976F60, &unk_1009729F0, &unk_1007B3D80, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v17 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v16);
}